unit uHttpClientProxyUtils;

interface

uses
  REST.Client;

const
  HTTPClientDirectProxyUrl = 'http://direct:80';

procedure BypassRESTClientProxy(ARESTClient: TRESTClient);

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

end.
