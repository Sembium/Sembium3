unit uJsonUtils;

interface

uses
  System.JSON, SysUtils;

function JSONObjectFromWebJSON(const AJSONUrl: string;
  const AHttpMethod: string = 'GET'; const ABody: string = ''; const AContentType: string = ''): TJsonObject;
function GetJSONStringResult(const AJSONUrl: string;
  const AHttpMethod: string = 'GET'; const ABody: string = ''; const AContentType: string = ''): string;

function NormalizeJSONString(const Value: Variant): string;
function DecodeJSONString(const Value: string): string;

implementation

uses
  System.Variants, System.Classes, System.Net.URLClient, REST.Client,
  REST.HttpClient, uCommonApp, uHttpClientProxyUtils;

function DecodeJSONString(const Value: string): string;
begin
  Result:= StringReplace(Value,'\"','"',[rfReplaceAll]);
  Result:= StringReplace(Result,'\\\/','/',[rfReplaceAll]);
  Result:= StringReplace(Result,'\/','/',[rfReplaceAll]);
  Result:= StringReplace(Result,'\b',#8,[rfReplaceAll]);
  Result:= StringReplace(Result,'\t',#9,[rfReplaceAll]);
  Result:= StringReplace(Result,'\r',#10,[rfReplaceAll]);
  Result:= StringReplace(Result,'\f',#12,[rfReplaceAll]);
  Result:= StringReplace(Result,'\n',#13,[rfReplaceAll]);
  Result:= StringReplace(Result,'\\','\',[rfReplaceAll]);
end;

function GetJSON(const AJSONUrl, AHttpMethod, ABody, AContentType: string): string;
var
  http: TRESTHTTP;
  RequestStream: TStringStream;
  ResponseStream: TStringStream;
begin
  try
    ResponseStream:= TStringStream.Create;
    try
      http:= TRESTHTTP.Create;
      try
        BypassRESTHTTPProxy(http);

        http.Request.Accept:= 'application/json';
        http.Request.AcceptCharSet:= 'UTF-8';
        http.Request.UserAgent:= SWebRequestUserAgentName;

        if (AHttpMethod = '') or SameText(AHttpMethod, 'GET') then
          begin
            http.Get(AJSONUrl, ResponseStream);
            Result:= ResponseStream.DataString;
          end
        else
          if SameText(AHttpMethod, 'POST') then
            begin
              RequestStream:= TStringStream.Create(ABody);
              try
                if (AContentType <> '') then
                  http.Request.ContentType:= AContentType;

                http.Post(AJSONUrl, RequestStream, ResponseStream);
                Result:= ResponseStream.DataString;
              finally
                RequestStream.Free;
              end;
            end
          else
            raise Exception.Create('Unsupported http method: ' + AHttpMethod);
      finally
        FreeAndNil(http);
      end;
    finally
      ResponseStream.Free;
    end;
  except
    on E: EHTTPProtocolException do
      raise Exception.Create(E.Message + SLineBreak + E.ErrorMessage);
  end;
end;

function JSONObjectFromWebJSON(const AJSONUrl, AHttpMethod, ABody, AContentType: string): TJSONObject;
begin
  Result:= TJSONObject.ParseJSONValue(GetJSON(AJSONUrl, AHttpMethod, ABody, AContentType)) as TJSONObject;
end;

function GetJSONStringResult(const AJSONUrl, AHttpMethod, ABody, AContentType: string): string;
begin
  Result:= GetJSON(AJSONUrl, AHttpMethod, ABody, AContentType);

  if (Result <> '') then
    Result:= Copy(Result, 2, Length(Result)-2);  // trim outer quotes
end;

function NormalizeJSONString(const Value: Variant): string;
begin
  if VarIsEmpty(Value) or VarIsNull(Value) or (VarIsStr(Value) and (Value = 'null')) then
    Result:= ''
  else
    Result:= Value;
end;

end.
