unit HttpUtils;

interface

function HttpGetString(const AUrl: string; AAccept: string = ''): string;

implementation

uses
  REST.HttpClient, System.Classes, uHttpClientProxyUtils, uCommonApp,
  System.SysUtils, System.StrUtils, System.Types;

function HttpGetString(const AUrl: string; AAccept: string = ''): string;
var
  http: TRESTHTTP;
  ResponseStream: TStringStream;
  HeadersString: string;
  PureUrl: string;
  UrlParts: TStringDynArray;
  HeaderString: string;
  p: Integer;
  HeaderName: string;
  HeaderValue: string;
begin
  UrlParts:= SplitString(AUrl, '[');

  if (Length(UrlParts) = 1) then
    begin
      PureUrl:= AUrl;
      HeadersString:= '';
    end
  else
    begin
      PureUrl:= UrlParts[0];
      HeadersString:= UrlParts[1].Trim([']']);
    end;

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

        if (HeadersString <> '') then
           for HeaderString in SplitString(HeadersString, ';') do
             begin
               p:= Pos('=', HeaderString);
               if (p <= 1) then
                 raise Exception.Create('Invalid header format: ' + HeaderString);

               HeaderName:= LeftStr(HeaderString, p-1);
               HeaderValue:= MidStr(HeaderString, p+1, Length(HeaderString)).Trim(['"']);

               http.Request.CustomHeaders.Values[HeaderName]:= HeaderValue;
             end;

        http.Get(PureUrl, ResponseStream);

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
