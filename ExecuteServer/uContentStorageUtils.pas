unit uContentStorageUtils;

interface

uses
  uContentStorageLocatorsCache;

type
  TContentStorageConfig = record
  strict private
    FContainerName: string;
    FAuthenticationToken: string;
    FContentStorageLocatorURL: string;
  public
    property ContainerName: string read FContainerName;
    property AuthenticationToken: string read FAuthenticationToken;
    property ContentStorageLocatorURL: string read FContentStorageLocatorURL;
    constructor Create(const AContainerName, AAuthenticationToken, AContentStorageLocatorURL: string);
  end;

function UploadFileToContentStorage(const AFileName: string;
  const AContentStorageConfig: TContentStorageConfig;
  const AContentStorageLocatorsCache: TContentStorageLocatorsCache): string;

implementation

uses
  uSvrDocUtils, System.Variants, System.SysUtils,
  uUtils, System.Classes, System.Net.HttpClient, System.Net.URLClient, AbmesCrypt,
  uContentStorage.Contents, uContentStorage.Results, uContentStorage.Utils;

function GetDocumentUploadInfo(
  const AContentStorageConfig: TContentStorageConfig;
  const AContentStorageLocatorsCache: TContentStorageLocatorsCache;
  const AExtention: string; const AHash: string; const ASize: Int64): TDocumentMultiPartUploadInfo;
begin
  Result:=
    uContentStorage.Contents.GetDocumentMultiPartUploadInfo(
      GetContentStorageAddress(AContentStorageConfig.ContentStorageLocatorURL, AContentStorageConfig.ContainerName, AContentStorageLocatorsCache),
      AContentStorageConfig.AuthenticationToken,
      AContentStorageConfig.ContainerName,
      AExtention,
      AHash,
      ASize);
end;

function CommitUpload(
  const AContentStorageConfig: TContentStorageConfig;
  const AContentStorageLocatorsCache: TContentStorageLocatorsCache;
  const AUploadID, AMultiPartUploadResultHeaderValues: string): string;
var
  SL: TStringList;
  PartUploadResults: TKeyValuePairArray;
  i: Integer;
begin
  SL:= TStringList.Create;
  try
    SL.Delimiter:= ';';
    SL.DelimitedText:= AMultiPartUploadResultHeaderValues;

    SetLength(PartUploadResults, SL.Count);
    for i:= 0 to SL.Count - 1 do
      PartUploadResults[i]:= TKeyValuePair.Create(SL.Names[i], SL.ValueFromIndex[i]);
  finally
    SL.Free;
  end;

  Result:=
    uContentStorage.Contents.CommitMultiPartUpload(
      GetContentStorageAddress(AContentStorageConfig.ContentStorageLocatorURL, AContentStorageConfig.ContainerName, AContentStorageLocatorsCache),
      AContentStorageConfig.AuthenticationToken,
      AContentStorageConfig.ContainerName,
      AUploadID,
      PartUploadResults);
end;

function GetDocumentDownloadURL(
  const AContentStorageConfig: TContentStorageConfig;
  const AContentStorageLocatorsCache: TContentStorageLocatorsCache;
  const ADocumentID: string): string;
begin
  Result:=
    uContentStorage.Contents.GetDocumentDownloadURL(
      GetContentStorageAddress(AContentStorageConfig.ContentStorageLocatorURL, AContentStorageConfig.ContainerName, AContentStorageLocatorsCache),
      AContentStorageConfig.AuthenticationToken,
      AContentStorageConfig.ContainerName,
      ADocumentID);
end;

function GetFileExtension(AFileName: string): string;
begin
  Result:= ExtractFileExt(AFileName);
  if (Result <> '') and (Result[1] = '.') then
    Delete(Result, 1, 1);
end;

function UploadContentStorageStream(
  AContentStorageConfig: TContentStorageConfig;
  const AContentStorageLocatorsCache: TContentStorageLocatorsCache;
  const AStream: TStream; const AExtension: string): string;
var
  sha1: string;
  DocumentMultiPartUploadInfo: TDocumentMultiPartUploadInfo;
  http: THTTPClient;
begin
  sha1:= GetSha1HashValue(AStream);

  DocumentMultiPartUploadInfo:=
    GetDocumentUploadInfo(
      AContentStorageConfig,
      AContentStorageLocatorsCache,
      AExtension,
      sha1,
      AStream.Size
    );

  http:= THTTPClient.Create;
  try
    Result:=
      uContentStorage.Utils.UploadDocument(
        AStream,
        DocumentMultiPartUploadInfo,
        GetContentStorageAddress(AContentStorageConfig.ContentStorageLocatorURL, AContentStorageConfig.ContainerName, AContentStorageLocatorsCache),

        nil,

        function(const AHttpMethod, AURL: string; APartStream: TStream; AHeaders: TNetHeaders; const APartNo: Integer; const AResultHeaderName: string): string
        var
          Response: IHTTPResponse;
        begin
          if SameText(AHttpMethod, 'PUT') then
            Response:= http.Put(AURL, APartStream, nil, AHeaders)
          else if SameText(AHttpMethod, 'POST') then
            Response:= http.Post(AURL, APartStream, nil, AHeaders)
          else
            raise Exception.Create('Uploading supports only PUT and POST methods');

          if (AResultHeaderName <> '') and ((Response.StatusCode div 100) = 2) then
            Result:= Response.HeaderValue[AResultHeaderName]
          else
            Result:= '';
        end,

        function(const AContentStorageLocatorURL, AUploadID, AMultiPartUploadResultHeaderValues: string): string
        begin
          Result:=
            CommitUpload(AContentStorageConfig, AContentStorageLocatorsCache, AUploadID, AMultiPartUploadResultHeaderValues)
        end
      );
  finally
    http.Free;
  end;
end;

function UploadFileToContentStorage(const AFileName: string;
  const AContentStorageConfig: TContentStorageConfig;
  const AContentStorageLocatorsCache: TContentStorageLocatorsCache): string;
var
  FS: TFileStream;
  DocumentID: string;
begin
  FS:= TFileStream.Create(AFileName, fmOpenRead);
  try
    DocumentID:=
      UploadContentStorageStream(
        AContentStorageConfig, AContentStorageLocatorsCache,
        FS, GetFileExtension(AFileName));
  finally
    FreeAndNil(FS);
  end;

  Result:= GetDocumentDownloadURL(AContentStorageConfig, AContentStorageLocatorsCache, DocumentID);
end;

{ TContentStorageConfig }

constructor TContentStorageConfig.Create(const AContainerName,
  AAuthenticationToken, AContentStorageLocatorURL: string);
begin
  FContainerName:= AContainerName;
  FAuthenticationToken:= AAuthenticationToken;
  FContentStorageLocatorURL:= AContentStorageLocatorURL;
end;

end.