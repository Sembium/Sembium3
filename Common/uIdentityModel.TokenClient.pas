unit uIdentityModel.TokenClient;

interface

uses
  System.JSON;

{$SCOPEDENUMS ON}

type
  TAuthenticationStyle =
  (
    BasicAuthentication,
    PostValues,
    None
  );

type
  TTokenResponse = record
  private
    FRaw: string;
    FJson: TJsonObject;  // memory leak !!! nikoj ne go oswobojdava
    function GetString(const AName: string): string;
    function GetInt(const AName: string): Integer;
    function GetAccessToken: string;
    function GetIdentityToken: string;
    function GetError: string;
    function GetIsError: Boolean;
    function GetExpiresIn: Integer;
    function GetTokenType: string;
    function GetRefreshToken: string;
  public
    constructor Create(const ARaw: string);
    property Raw: string read FRaw;
    property AccessToken: string read GetAccessToken;
    property IdentityToken: string read GetIdentityToken;
    property Error: string read GetError;
    property IsError: Boolean read GetIsError;
    property ExpiresIn: Integer read GetExpiresIn;
    property TokenType: string read GetTokenType;
    property RefreshToken: string read GetRefreshToken;
  end;

type
  TTokenClient = class
  public
    class function RequestToken(
      AAddress: string;
      AClientId: string;
      AClientSecret: string;
      AUserName: string;
      APassword: string;
      AScope: string = '';
      AAuthenticationStyle: TAuthenticationStyle = TAuthenticationStyle.BasicAuthentication;
      AExtra: TObject = nil): TTokenResponse;
  end;

implementation

uses
  System.SysUtils, REST.Client, REST.Types, REST.Authenticator.Basic,
  uIdentityModel.Constants, JclStrings;

{ TTokenClient }

class function TTokenClient.RequestToken(
  AAddress: string;
  AClientId: string;
  AClientSecret: string;
  AUserName: string;
  APassword: string;
  AScope: string;
  AAuthenticationStyle: TAuthenticationStyle;
  AExtra: TObject): TTokenResponse;
var
  LClient: TRESTClient;
  LAuthenticator: THTTPBasicAuthenticator;
  LRequest: TRESTRequest;
begin
  Assert(AAddress <> '');
  Assert(AClientId <> '');

  LClient:= TRESTClient.Create(AAddress);
  try
    LRequest := TRESTRequest.Create(LClient);
    LRequest.Accept:= 'application/json';
    LRequest.Timeout:= 25000;

    LRequest.AddParameter(OidcConstants.TokenRequest.GrantType, OidcConstants.GrantTypes.Password);
    LRequest.AddParameter(OidcConstants.TokenRequest.UserName, AUserName);
    LRequest.AddParameter(OidcConstants.TokenRequest.Password, APassword);

    if not string.IsNullOrWhiteSpace(AScope) then
      LRequest.AddParameter(OidcConstants.TokenRequest.Scope, AScope);

    if (AAuthenticationStyle = TAuthenticationStyle.BasicAuthentication) then
      begin
        LAuthenticator:= THTTPBasicAuthenticator.Create(LClient);
        LAuthenticator.Username:= AClientId;
        LAuthenticator.Password:= AClientSecret;
        LClient.Authenticator:= LAuthenticator;
      end;

    if (AAuthenticationStyle = TAuthenticationStyle.PostValues) then
      begin
        LRequest.AddParameter(OidcConstants.TokenRequest.ClientId, AClientId);

        if not string.IsNullOrWhiteSpace(AClientSecret) then
            LRequest.AddParameter(OidcConstants.TokenRequest.ClientSecret, AClientSecret);
      end;

    if Assigned(AExtra) then
      LRequest.Params.AddObject(AExtra);

    LRequest.Method:= TRESTRequestMethod.rmPOST;

    LRequest.Execute;

    if (LRequest.Response.StatusCode >= 300) then
      raise Exception.Create(
        'Error: ' + LRequest.Response.StatusCode.ToString + ' ' + LRequest.Response.StatusText + SLineBreak +
        'Content: ' + LRequest.Response.Content);

    Result:= TTokenResponse.Create(LRequest.Response.Content);
  finally
    FreeAndNil(LClient);
  end;
end;

{ TTokenResponse }

constructor TTokenResponse.Create(const ARaw: string);
begin
  FRaw:= ARaw;
  FJson:= TJSONObject.ParseJSONValue(ARaw) as TJSONObject;
  Assert(Assigned(FJson));
end;

function TTokenResponse.GetString(const AName: string): string;
begin
  Assert(Assigned(FJson));
  Result:= (FJson.Values[AName] as TJSONString).Value;
end;

function TTokenResponse.GetInt(const AName: string): Integer;
begin
  Assert(Assigned(FJson));
  Result:= StrToInt(FJson.Values[AName].ToString);
end;

function TTokenResponse.GetAccessToken: string;
begin
  Result:= GetString(OidcConstants.TokenResponse.AccessToken);
end;

function TTokenResponse.GetIdentityToken: string;
begin
  Result:= GetString(OidcConstants.TokenResponse.IdentityToken);
end;

function TTokenResponse.GetError: string;
begin
  Result:= GetString(OidcConstants.TokenResponse.Error);
end;

function TTokenResponse.GetIsError: Boolean;
begin
  Result:= not string.IsNullOrEmpty(GetString(OidcConstants.TokenResponse.Error));
end;

function TTokenResponse.GetExpiresIn: Integer;
begin
  Result:= GetInt(OidcConstants.TokenResponse.ExpiresIn);
end;

function TTokenResponse.GetTokenType: string;
begin
  Result:= GetString(OidcConstants.TokenResponse.TokenType);
end;

function TTokenResponse.GetRefreshToken: string;
begin
  Result:= GetString(OidcConstants.TokenResponse.RefreshToken);
end;

end.
