unit uIdentityModel.IntrospectionClient;

interface

uses
  uIdentityServer.Constants, uHttpClientProxyUtils;

function GetIdentityServerTokenIntrospection(const AAccessToken: string; AIdentityServerEndpoints: TIdentityServerEndpoints; const AApiResourceName, AApiResourceSecret: string): string;

implementation

uses
  System.SysUtils,
  REST.Client,
  REST.Types,
  REST.Authenticator.Basic;

function GetIdentityServerTokenIntrospection(const AAccessToken: string; AIdentityServerEndpoints: TIdentityServerEndpoints; const AApiResourceName, AApiResourceSecret: string): string;
var
  LRequest: TRESTRequest;
  LClient: TRESTClient;
  LAuthenticator: THTTPBasicAuthenticator;
begin
  Assert(AAccessToken <> '');

  LClient := TRESTClient.Create(AIdentityServerEndpoints.IntrospectionEndpoint);
  try
    BypassRESTClientProxy(LClient);

    LRequest := TRESTRequest.Create(LClient);
    LRequest.SynchronizedEvents := False;
    LRequest.Method:= TRESTRequestMethod.rmPOST;
    LRequest.Timeout:= 25000;

    LRequest.AddParameter('token', AAccessToken);

    // use scope and scope secret to authenticate
    LAuthenticator:= THTTPBasicAuthenticator.Create(LClient);
    LAuthenticator.Username:= AApiResourceName;
    LAuthenticator.Password:= AApiResourceSecret;
    LClient.Authenticator:= LAuthenticator;

    LRequest.Execute;

    if (LRequest.Response.StatusCode >= 300) then
      raise Exception.Create('Error: ' + LRequest.Response.StatusCode.ToString + ' ' + LRequest.Response.StatusText + 'Content: ' + LRequest.Response.Content);

    Result:= LRequest.Response.Content;
  finally
    FreeAndNil(LClient);
  end;
end;

end.
