unit uIdentity.Connector.Internal;

interface

type
  InternalIdentityConnector = class abstract
  public
    class function FindUserIdentifier(const ASearchText: string): string;
    class function GetUserData(const AUserId: string): string;
  end;

implementation

uses
  System.SysUtils,
  REST.Client,
  REST.Types,
  uClientConnectionInfo,
  uCommonApp, uHttpClientProxyUtils;

{ InternalIdentityConnector }

class function InternalIdentityConnector.FindUserIdentifier(const ASearchText: string): string;
var
  LRequest: TRESTRequest;
  LClient: TRESTClient;
begin
  LClient := TRESTClient.Create(SIdentityConnectorURL + '/search');
  try
    BypassRESTClientProxy(LClient);

    LRequest := TRESTRequest.Create(LClient);
    LRequest.SynchronizedEvents := False;
    LRequest.AddParameter('searchText', ASearchText);
    LRequest.AddAuthParameter('Authorization', 'Bearer ' + ClientConnectionInfo.AuthenticationTokenValue, TRESTRequestParameterKind.pkHTTPHEADER,[TRESTRequestParameterOption.poDoNotEncode]);

    LRequest.Execute;

    if (LRequest.Response.StatusCode >= 300) then
      raise Exception.Create('Error: ' + LRequest.Response.StatusCode.ToString + ' ' + LRequest.Response.StatusText + 'Content: ' + LRequest.Response.Content);

    Result:= LRequest.Response.Content;
  finally
    FreeAndNil(LClient);
  end;
end;

class function InternalIdentityConnector.GetUserData(
  const AUserId: string): string;
var
  LRequest: TRESTRequest;
  LClient: TRESTClient;
begin
  LClient := TRESTClient.Create(SIdentityConnectorURL + '/getuserdata');
  try
    BypassRESTClientProxy(LClient);

    LRequest := TRESTRequest.Create(LClient);
    LRequest.SynchronizedEvents := False;
    LRequest.AddParameter('userId', AUserId);
    LRequest.AddAuthParameter('Authorization', 'Bearer ' + ClientConnectionInfo.AuthenticationTokenValue, TRESTRequestParameterKind.pkHTTPHEADER,[TRESTRequestParameterOption.poDoNotEncode]);

    LRequest.Execute;

    if (LRequest.Response.StatusCode >= 300) then
      raise Exception.Create('Error: ' + LRequest.Response.StatusCode.ToString + ' ' + LRequest.Response.StatusText + 'Content: ' + LRequest.Response.Content);

    Result:= LRequest.Response.Content;
  finally
    FreeAndNil(LClient);
  end;
end;

end.
