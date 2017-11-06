unit uContentStorage.Results;

interface

type
  TKeyValuePair = record
    Key: string;
    Value: string;
    constructor Create(const AKey, AValue: string);
  end;

  TKeyValuePairArray = array of TKeyValuePair;

  THttpPartUploadInfo = record
    Identifier: string;
    URL: string;
    RequestHttpHeaders: TKeyValuePairArray;
  end;

  THttpPartUploadInfoArray = array of THttpPartUploadInfo;

  TMultiPartUploadInfo = record
    HttpMethod: string;
    PartSize: Int64;
    PartUploadInfos: THttpPartUploadInfoArray;
    MultiPartUploadResultHeaderName: string;
    UploadID: string;
  end;

  TDocumentMultiPartUploadInfo = record
    MultiPartUploadInfo: TMultiPartUploadInfo;
    DocumentID: string;
  end;

function DocumentMultiPartUploadInfoToString(const AValue: TDocumentMultiPartUploadInfo): string;
function StringToDocumentMultiPartUploadInfo(const AValue: string): TDocumentMultiPartUploadInfo;

{$M+}

type
  TDocumentMultiPartUploadInfoWrapper = class
  private
    FValue: TDocumentMultiPartUploadInfo;
  published
    property Value: TDocumentMultiPartUploadInfo read FValue write FValue;
  end;

implementation

uses
  REST.Json, System.Generics.Collections;

{ TKeyValuePair }

constructor TKeyValuePair.Create(const AKey, AValue: string);
begin
  Key:= AKey;
  Value:= AValue;
end;

{ routines }

function DocumentMultiPartUploadInfoToString(const AValue: TDocumentMultiPartUploadInfo): string;
var
  Wrapper: TDocumentMultiPartUploadInfoWrapper;
begin
  Wrapper:= TDocumentMultiPartUploadInfoWrapper.Create;
  try
    Wrapper.Value:= AValue;
    Result:= TJson.ObjectToJsonString(Wrapper);
  finally
    Wrapper.Free;
  end;
end;

function StringToDocumentMultiPartUploadInfo(const AValue: string): TDocumentMultiPartUploadInfo;
var
  Wrapper: TDocumentMultiPartUploadInfoWrapper;
begin
  Wrapper:= TJson.JsonToObject<TDocumentMultiPartUploadInfoWrapper>(AValue);
  try
    Result:= Wrapper.Value;
  finally
    Wrapper.Free;
  end;
end;

end.
