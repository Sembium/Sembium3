unit uContentStorage.Utils;

interface

uses
  uContentStorage.Results, System.Classes, System.Net.URLClient;

type
  TInitPartsProc = reference to procedure(const APartSizes: TArray<Int64>);
  TUploadPartStreamFunc = reference to function(const AHttpMethod, AURL: string; APartStream: TStream; AHeaders: TNetHeaders; const APartNo: Integer; const AResultHeaderName: string): string;
  TCommitUploadFunc = reference to function(const AContentStorageLocatorURL, AUploadID, AMultiPartUploadResultHeaderValues: string): string;

function UploadDocument(
  const AStream: TStream;
  const DocumentMultiPartUploadInfo: TDocumentMultiPartUploadInfo;
  const ContentStorageLocatorURL: string;
  AInitPartsProc: TInitPartsProc;
  AUploadPartStreamFunc: TUploadPartStreamFunc;
  ACommitUploadFunc: TCommitUploadFunc): string;

implementation

uses
  System.Math, System.SysUtils;

function UploadDocument(
  const AStream: TStream;
  const DocumentMultiPartUploadInfo: TDocumentMultiPartUploadInfo;
  const ContentStorageLocatorURL: string;
  AInitPartsProc: TInitPartsProc;
  AUploadPartStreamFunc: TUploadPartStreamFunc;
  ACommitUploadFunc: TCommitUploadFunc): string;

  function UploadPart(const AHttpMethod: string; const ASize: Int64; const APartUploadInfo: THttpPartUploadInfo; const AResultHeaderName: string; const APartNo: Integer = 1): string;
  var
    RequestHttpHeader: TKeyValuePair;
    Headers: TNetHeaders;
    PartStream: TMemoryStream;
    UploadStream: TStream;
  begin
    SetLength(Headers, 0);
    for RequestHttpHeader in APartUploadInfo.RequestHttpHeaders do
      begin
        SetLength(Headers, Length(Headers) + 1);
        Headers[Length(Headers)-1]:= TNetHeader.Create(RequestHttpHeader.Key, RequestHttpHeader.Value);
      end;

    PartStream:= TMemoryStream.Create;
    try
      if (ASize = AStream.Size) then
        UploadStream:= AStream
      else
        begin
          PartStream.CopyFrom(AStream, Min(ASize, AStream.Size - AStream.Position));
          PartStream.Position:= 0;
          UploadStream:= PartStream;
        end;

      Result:=
        AUploadPartStreamFunc(AHttpMethod, APartUploadInfo.URL, UploadStream, Headers, APartNo, AResultHeaderName);
    finally
      PartStream.Free;
    end;
  end;

var
  MultiPartUploadInfo: TMultiPartUploadInfo;
  MultiPartUploadResultHeaderValues: string;
  PartSizes: TArray<Int64>;
  RemainingSize: Int64;
  i: Integer;
  PartUploadInfo: THttpPartUploadInfo;
  UploadResult: string;
begin
  if (DocumentMultiPartUploadInfo.DocumentID <> '') then
    Result:= DocumentMultiPartUploadInfo.DocumentID
  else
    begin
      MultiPartUploadInfo:= DocumentMultiPartUploadInfo.MultiPartUploadInfo;

      Assert(Length(MultiPartUploadInfo.PartUploadInfos) > 0);

      AStream.Position:= 0;

      if (MultiPartUploadInfo.PartSize <= 0) then
        begin
          UploadPart(MultiPartUploadInfo.HttpMethod, AStream.Size, MultiPartUploadInfo.PartUploadInfos[0], '');
          MultiPartUploadResultHeaderValues:= '';
        end
      else
        begin
          MultiPartUploadResultHeaderValues:= '';

          SetLength(PartSizes, Length(MultiPartUploadInfo.PartUploadInfos));
          RemainingSize:= AStream.Size;
          for i:= 0 to Length(MultiPartUploadInfo.PartUploadInfos) - 1 do
            begin
              PartSizes[i]:= Min(RemainingSize, MultiPartUploadInfo.PartSize);
              Dec(RemainingSize, MultiPartUploadInfo.PartSize);
            end;

          if Assigned(AInitPartsProc)then
            AInitPartsProc(PartSizes);

          for i:= 0 to Length(MultiPartUploadInfo.PartUploadInfos) - 1 do
            begin
              PartUploadInfo:= MultiPartUploadInfo.PartUploadInfos[i];
              UploadResult:= UploadPart(MultiPartUploadInfo.HttpMethod, MultiPartUploadInfo.PartSize, PartUploadInfo, MultiPartUploadInfo.MultiPartUploadResultHeaderName, i + 1);

              MultiPartUploadResultHeaderValues:=
                MultiPartUploadResultHeaderValues +
                Format('%s=%s;', [MultiPartUploadInfo.PartUploadInfos[i].Identifier, UploadResult]);
            end;

          if (MultiPartUploadResultHeaderValues <> '') then
            SetLength(MultiPartUploadResultHeaderValues, Length(MultiPartUploadResultHeaderValues)-1);
        end;

      Result:= ACommitUploadFunc(ContentStorageLocatorURL, MultiPartUploadInfo.UploadID, MultiPartUploadResultHeaderValues);
    end;
end;

end.
