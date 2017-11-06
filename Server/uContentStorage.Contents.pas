unit uContentStorage.Contents;

interface

uses
  uContentStorage.Results;

type
  TUploadInfo = record
    URL: string;
    HttpMethod: string;
    HttpHeaders: TKeyValuePairArray;
    UploadID: string;
  end;

  TDocumentUploadInfo = record
    UploadInfo: TUploadInfo;
    DocumentID: string;
  end;

  TDownloadInfo = record
    URL: string;
    Size: Int64;
  end;

function GetDocumentUploadInfo(
  const ServiceAddress: string;
  const AuthenticationToken: string;
  const ContainerName: string;
  const Extention: string;
  const Hash: string): TDocumentUploadInfo;

function GetDocumentDownloadURL(
  const ServiceAddress: string;
  const AuthenticationToken: string;
  const ContainerName: string;
  const DocumentID: string): string;

function CommitUpload(
  const ServiceAddress: string;
  const AuthenticationToken: string;
  const ContainerName: string;
  const UploadID: string): string;

function GetDocumentMultiPartUploadInfo(
  const ServiceAddress: string;
  const AuthenticationToken: string;
  const ContainerName: string;
  const Extention: string;
  const Hash: string;
  const Size: Int64): TDocumentMultiPartUploadInfo;

function GetDocumentDownloadInfo(
  const ServiceAddress: string;
  const AuthenticationToken: string;
  const ContainerName: string;
  const DocumentID: string): TDownloadInfo;

function CommitMultiPartUpload(
  const ServiceAddress: string;
  const AuthenticationToken: string;
  const ContainerName: string;
  const UploadID: string;
  const PartUploadResults: TKeyValuePairArray): string;

function KeyValuePairArrayToVarArray(const AKeyValuePairArray: TKeyValuePairArray): Variant;

implementation

uses
  System.JSON, uJsonUtils, System.SysUtils, System.Variants,
  System.Classes, REST.Json, System.Generics.Collections, System.Net.URLClient;

function KeyValuePairArrayToJson(const AKeyValuePairArray: TKeyValuePairArray): string;
var
  KeyValuePair: TKeyValuePair;
begin
  Result:= '';

  for KeyValuePair in AKeyValuePairArray do
    Result:= Result + Format('{Key: "%s", Value: "%s"}, ', [KeyValuePair.Key, KeyValuePair.Value]);

  if (Result <> '') then
    SetLength(Result, Length(Result)-2);

  Result:= '[' + Result + ']';
end;

function KeyValuePairArrayToVarArray(const AKeyValuePairArray: TKeyValuePairArray): Variant;
var
  i: Integer;
begin
  if (Length(AKeyValuePairArray) = 0) then
    Exit(Null);

  Result:= VarArrayCreate([0, Length(AKeyValuePairArray)-1], varVariant);
  for i:= 0 to Length(AKeyValuePairArray) - 1 do
    Result[i]:= VarArrayOf([AKeyValuePairArray[i].Key, AKeyValuePairArray[i].Value]);
end;

{ functions }

function GetDocumentUploadInfo(
  const ServiceAddress: string;
  const AuthenticationToken: string;
  const ContainerName: string;
  const Extention: string;
  const Hash: string): TDocumentUploadInfo;
var
  j: TJSONObject;
  url: string;
  i: Integer;
  IDUploadInfo: TJSONObject;
  HttpHeaders: TJSONArray;
  HttpHeader: TJSONObject;
begin
  url:=
    ServiceAddress +
    Format('/contents/GetUploadInfoOrDocumentID/%s?hash=%s&ext=%s&auth=%s',
      [ContainerName, Hash, Extention, AuthenticationToken]);

  j:= JSONObjectFromWebJSON(url);

  Result.DocumentID:= NormalizeJSONString(j.Values['DocumentID'].Value);

  if (Result.DocumentID = '') then
    begin
      IDUploadInfo:= j.Values['IDUploadInfo'] as TJSONObject;

      Result.UploadInfo.URL:= NormalizeJSONString(IDUploadInfo.Values['URL'].Value);
      Result.UploadInfo.HttpMethod:= NormalizeJSONString(IDUploadInfo.Values['HttpMethod'].Value);
      Result.UploadInfo.UploadID:= NormalizeJSONString(IDUploadInfo.Values['UploadID'].Value);

      if (IDUploadInfo.Values['HttpHeaders'] is TJSONArray) then
        begin
          HttpHeaders:= IDUploadInfo.Values['HttpHeaders'] as TJSONArray;

          SetLength(Result.UploadInfo.HttpHeaders, HttpHeaders.Count);

          for i:= 0 to Integer(HttpHeaders.Count) - 1 do
            begin
              HttpHeader:= HttpHeaders.Items[i] as TJSONObject;

              Result.UploadInfo.HttpHeaders[i].Key:= NormalizeJSONString(HttpHeader.Values['Key'].Value);
              Result.UploadInfo.HttpHeaders[i].Value:= NormalizeJSONString(HttpHeader.Values['Value'].Value);
            end;
        end;
    end;
end;

function GetDocumentDownloadURL(
  const ServiceAddress: string;
  const AuthenticationToken: string;
  const ContainerName: string;
  const DocumentID: string): string;
var
  url: string;
begin
  url:=
    ServiceAddress +
    Format('/contents/GetDocumentDownloadURL/%s?documentID=%s&auth=%s',
      [ContainerName, TURI.URLEncode(DocumentID), AuthenticationToken]);

  Result:= NormalizeJSONString(GetJSONStringResult(url));
end;

function CommitUpload(
  const ServiceAddress: string;
  const AuthenticationToken: string;
  const ContainerName: string;
  const UploadID: string): string;
var
  url: string;
begin
  url:=
    ServiceAddress +
    Format('/contents/CommitUpload/%s?uploadID=%s&auth=%s',
      [ContainerName, TURI.URLEncode(UploadID), AuthenticationToken]);

  Result:= NormalizeJSONString(GetJSONStringResult(url));

  if (Result <> '') then
    Result:= DecodeJSONString(Result);
end;

function GetDocumentMultiPartUploadInfo(
  const ServiceAddress: string;
  const AuthenticationToken: string;
  const ContainerName: string;
  const Extention: string;
  const Hash: string;
  const Size: Int64): TDocumentMultiPartUploadInfo;
var
  url: string;
  j: TJSONObject;
  i, k: Integer;
  MultiPartIDUploadInfo: TJSONObject;
  PartUploadInfos: TJSONArray;
  PartUploadInfo: TJSONObject;
  RequestHttpHeaders: TJSONArray;
  RequestHttpHeader: TJSONObject;
begin
  url:=
    ServiceAddress +
    Format('/contents/GetMultiPartUploadInfoOrDocumentID/%s?hash=%s&ext=%s&size=%d&auth=%s',
      [ContainerName, Hash, Extention, Size, AuthenticationToken]);

  j:= JSONObjectFromWebJSON(url);

  Result.DocumentID:= NormalizeJSONString(j.Values['DocumentID'].Value);

  if (Result.DocumentID = '') then
    begin
      MultiPartIDUploadInfo:= j.Values['MultiPartIDUploadInfo'] as TJSONObject;

      Result.MultiPartUploadInfo.HttpMethod:= NormalizeJSONString(MultiPartIDUploadInfo.Values['HttpMethod'].Value);
      Result.MultiPartUploadInfo.PartSize:= StrToIntDef(NormalizeJSONString(MultiPartIDUploadInfo.Values['PartSize'].Value), -1);
      Result.MultiPartUploadInfo.MultiPartUploadResultHeaderName:= NormalizeJSONString(MultiPartIDUploadInfo.Values['MultiPartUploadResultHeaderName'].Value);
      Result.MultiPartUploadInfo.UploadID:= NormalizeJSONString(MultiPartIDUploadInfo.Values['UploadID'].Value);

      if (MultiPartIDUploadInfo.Values['PartUploadInfos'] is TJSONArray) then
        begin
          PartUploadInfos:= MultiPartIDUploadInfo.Values['PartUploadInfos'] as TJSONArray;

          SetLength(Result.MultiPartUploadInfo.PartUploadInfos, PartUploadInfos.Count);

          for i:= 0 to Integer(PartUploadInfos.Count) - 1 do
            begin
              PartUploadInfo:= PartUploadInfos.Items[i] as TJSONObject;

              Result.MultiPartUploadInfo.PartUploadInfos[i].Identifier:= NormalizeJSONString(PartUploadInfo.Values['Identifier'].Value);
              Result.MultiPartUploadInfo.PartUploadInfos[i].URL:= NormalizeJSONString(PartUploadInfo.Values['URL'].Value);

              if (PartUploadInfo.Values['RequestHttpHeaders'] is TJSONArray) then
                begin
                  RequestHttpHeaders:= PartUploadInfo.Values['RequestHttpHeaders'] as TJSONArray;

                  SetLength(Result.MultiPartUploadInfo.PartUploadInfos[i].RequestHttpHeaders, RequestHttpHeaders.Count);

                  for k:= 0 to Integer(RequestHttpHeaders.Count) - 1 do
                    begin
                      RequestHttpHeader:= RequestHttpHeaders.Items[k] as TJSONObject;

                      Result.MultiPartUploadInfo.PartUploadInfos[i].RequestHttpHeaders[k].Key:= NormalizeJSONString(RequestHttpHeader.Values['Key'].Value);
                      Result.MultiPartUploadInfo.PartUploadInfos[i].RequestHttpHeaders[k].Value:= NormalizeJSONString(RequestHttpHeader.Values['Value'].Value);
                    end;
                end;
            end;
        end;
    end;
end;

function GetDocumentDownloadInfo(
  const ServiceAddress: string;
  const AuthenticationToken: string;
  const ContainerName: string;
  const DocumentID: string): TDownloadInfo;
var
  url: string;
  j: TJSONObject;
begin
  url:=
    ServiceAddress +
    Format('/contents/GetDocumentDownloadInfo/%s?documentID=%s&auth=%s',
      [ContainerName, TURI.URLEncode(DocumentID), AuthenticationToken]);

  j:= JSONObjectFromWebJSON(url);

  Result.URL:= NormalizeJSONString(j.Values['Url'].Value);
  Result.Size:= StrToIntDef(NormalizeJSONString(j.Values['Size'].Value), -1);
end;

type
  TKeyValuePairObj = class
    Key: string;
    Value: string;
    constructor Create(const AKey, AValue: string);
  end;

type
  TCommitMultiPartUploadParams = class
  public
    UploadID: string;
    PartUploadResults: array of TKeyValuePairObj;
  end;

function CommitMultiPartUpload(
  const ServiceAddress: string;
  const AuthenticationToken: string;
  const ContainerName: string;
  const UploadID: string;
  const PartUploadResults: TKeyValuePairArray): string;
var
  url: string;
  params: TCommitMultiPartUploadParams;
  json: string;
  i: Integer;
begin
  url:=
    ServiceAddress +
    Format('/contents/CommitMultiPartUpload/%s?uploadID=%s&auth=%s',
      [ContainerName, TURI.URLEncode(UploadID), AuthenticationToken]);

  params:= TCommitMultiPartUploadParams.Create;
  try
    params.UploadID:= UploadID;

    SetLength(params.PartUploadResults, Length(PartUploadResults));
    for i:= 0 to Length(PartUploadResults)-1  do
      params.PartUploadResults[i]:= TKeyValuePairObj.Create(PartUploadResults[i].Key, PartUploadResults[i].Value);
    try
      json:= TJSON.ObjectToJsonString(params);
    finally
      for i:= 0 to Length(params.PartUploadResults)-1  do
        params.PartUploadResults[i].Free;
    end;
  finally
    params.Free;
  end;

  Result:= NormalizeJSONString(GetJSONStringResult(url, 'POST', json, 'application/json'));

  if (Result <> '') then
    Result:= DecodeJSONString(Result);
end;

{ TKeyValuePairObj }

constructor TKeyValuePairObj.Create(const AKey, AValue: string);
begin
  Key:= AKey;
  Value:= AValue;
end;

end.
