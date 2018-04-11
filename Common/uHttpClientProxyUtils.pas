unit uHttpClientProxyUtils;

interface

uses
  REST.Client, REST.HttpClient;

const
  HTTPClientDirectProxyUrl = 'http://direct:80';

procedure BypassRESTClientProxy(ARESTClient: TRESTClient);
procedure BypassRESTHTTPProxy(ARESTHTTP: TRESTHTTP);

implementation

uses
  System.Net.URLClient;

procedure BypassRESTClientProxy(ARESTClient: TRESTClient);
var
  uri: TURI;
begin
  uri:= TURI.Create(HTTPClientDirectProxyUrl);

  ARESTClient.ProxyServer:= uri.Scheme + '://' + uri.Host;
  ARESTClient.ProxyPort:= uri.Port;
end;

procedure BypassRESTHTTPProxy(ARESTHTTP: TRESTHTTP);
var
  uri: TURI;
begin
  uri:= TURI.Create(HTTPClientDirectProxyUrl);

  ARESTHTTP.ProxyParams.ProxyServer:= uri.Scheme + '://' + uri.Host;
  ARESTHTTP.ProxyParams.ProxyPort:= uri.Port;
end;

end.
