unit HttpUtils;

interface

function HttpGetString(const AUrl: string; AAccept: string = ''): string;

implementation

uses
  REST.HttpClient, System.Classes, uHttpClientProxyUtils, uCommonApp,
  System.SysUtils;

function HttpGetString(const AUrl: string; AAccept: string = ''): string;
var
  http: TRESTHTTP;
  ResponseStream: TStringStream;
begin
  try
    ResponseStream:= TStringStream.Create;
    try
      http:= TRESTHTTP.Create;
      try
        BypassRESTHTTPProxy(http);

        if (AAccept <> '') then
          http.Request.Accept:= AAccept;

        http.Request.AcceptCharSet:= 'UTF-8';
        http.Request.UserAgent:= SWebRequestUserAgentName;

        http.Get(AUrl, ResponseStream);

        Result:= ResponseStream.DataString;
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

end.
