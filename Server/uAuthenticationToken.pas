unit uAuthenticationToken;

interface

uses
  uConnectionUtils;

type
  TAuthenticationToken = record
  strict private
    FAuthenticationTokenIssuer: TAuthenticationTokenIssuer;
    FUserId: string;
    FAllowedDBNames: string;
    FPowerUserDBNames: string;
    FExpireDateTimeUTC: TDateTime;
    FFirstName: string;
    FMiddleName: string;
    FLastName: string;
    FErrorMessage: string;
  public
    constructor Create(
      AAuthenticationTokenIssuer: TAuthenticationTokenIssuer;
      const AUserId, AAllowedDBNames, APowerUserDBNames: string;
      AExpireDateTimeUTC: TDateTime = 0;
      const AFirstName: string = '';
      const AMiddleName: string = '';
      const ALastName: string = ''); overload;
    constructor Create(AAuthenticationTokenIssuer: TAuthenticationTokenIssuer; const AErrorMessage: string); overload;
    function IsEmpty: Boolean;
    function IsExpired: Boolean;
    { Claims }
    property AuthenticationTokenIssuer: TAuthenticationTokenIssuer read FAuthenticationTokenIssuer;
    property UserId: string read FUserId;
    property AllowedDBNames: string read FAllowedDBNames;
    property PowerUserDBNames: string read FPowerUserDBNames;
    property FirstName: string read FFirstName;
    property MiddleName: string read FMiddleName;
    property LastName: string read FLastName;
    property ErrorMessage: string read FErrorMessage;
  end;

function IsTempAuthenticationTokenString(const AAuthenticationTokenString: string): Boolean;

function StringToAuthenticationToken(const Value: string): TAuthenticationToken;

implementation

uses
  System.SysUtils, System.Classes, AbmesCrypt, uUtils, JclStrings, System.JSON,
  uIdentityServer.Constants, System.DateUtils, uSvrApp,
  uIdentityModel.IntrospectionClient;

{ TAuthenticationToken }

constructor TAuthenticationToken.Create(
  AAuthenticationTokenIssuer: TAuthenticationTokenIssuer;
  const AUserId, AAllowedDBNames, APowerUserDBNames: string;
  AExpireDateTimeUTC: TDateTime;
  const AFirstName, AMiddleName, ALastName: string);
begin
  FAuthenticationTokenIssuer:= AAuthenticationTokenIssuer;
  FUserId:= AUserId;
  FAllowedDBNames:= AAllowedDBNames;
  FPowerUserDBNames:= APowerUserDBNames;
  FExpireDateTimeUTC:= AExpireDateTimeUTC;
  FFirstName:= AFirstName;
  FMiddleName:= AMiddleName;
  FLastName:= ALastName;
end;

constructor TAuthenticationToken.Create(
  AAuthenticationTokenIssuer: TAuthenticationTokenIssuer;
  const AErrorMessage: string);
begin
  FAuthenticationTokenIssuer:= AAuthenticationTokenIssuer;
  FErrorMessage:= AErrorMessage;
end;

function TAuthenticationToken.IsEmpty: Boolean;
begin
  Result:= (UserId = '');
end;

function TAuthenticationToken.IsExpired: Boolean;
begin
  Result:= (FExpireDateTimeUTC <> 0) and (FExpireDateTimeUTC <= TTimeZone.Local.ToUniversalTime(Now));
end;

{ Routines }

function IdentityTokenStringToAuthenticationToken(const Value: string; AAuthenticationTokenIssuer: TAuthenticationTokenIssuer): TAuthenticationToken;

  function ContainsString(AJsonArray: TJsonArray; const AValue: string): Boolean;
  var
    x: TJSONValue;
  begin
    Result:= False;
    for x in AJsonArray do
      if (StrTrimQuotes(x.ToString) = AValue) then
        Exit(True);
  end;
var
  JsonString: string;
  Json: TJsonObject;
  LUserId: string;
  LExpireDateTimeUTC: TDateTime;
  LAllowedDBNames: string;
  LPowerUserDBNames: string;
  LFirstName: string;
  LMiddleName: string;
  LLastName: string;
begin
  Assert(Value <> '');
  Assert(AAuthenticationTokenIssuer in atiIdentityServers);

  JsonString:= GetIdentityServerTokenIntrospection(Value, GetIdentityServerEndpoints(AAuthenticationTokenIssuer), SServerApiResourceName, SServerApiResourceSecret);
  Json:= TJSONObject.ParseJSONValue(StrTrimQuotes(JsonString)) as TJSONObject;
  try
    Assert(Assigned(Json.Values['sub']));
    LUserId:= (Json.Values['sub'] as TJSONString).Value;

    Assert(Assigned(Json.Values['exp']));
    LExpireDateTimeUTC:= UnixToDateTime(StrTrimQuotes(Json.Values['exp'].ToString).ToInt64);

    if Assigned(Json.Values['given_name']) then
      LFirstName:= (Json.Values['given_name'] as TJSONString).Value
    else
      LFirstName:= '';

    if Assigned(Json.Values['middle_name']) then
      LMiddleName:= (Json.Values['middle_name'] as TJSONString).Value
    else
      LMiddleName:= '';

    if Assigned(Json.Values['family_name']) then
      LLastName:= (Json.Values['family_name'] as TJSONString).Value
    else
      LLastName:= '';

    LAllowedDBNames:= '*';

    if Assigned(Json.Values['role']) and
       ( ( (Json.Values['role'] is TJSONArray) and
           ContainsString(Json.Values['role'] as TJSONArray, 'admin') ) or
         ( (Json.Values['role'] is TJSONString) and
           ((Json.Values['role'] as TJSONString).Value = 'admin') )
       ) then
      begin
        LPowerUserDBNames:= '*';
      end
    else if Assigned(Json.Values[SPowerUserDbNamesClaimName]) then
      LPowerUserDBNames:= (Json.Values[SPowerUserDbNamesClaimName] as TJSONString).Value
    else
      LPowerUserDBNames:= '';

    Result:=
      TAuthenticationToken.Create(
        AAuthenticationTokenIssuer,
        LUserId,
        LAllowedDBNames,
        LPowerUserDBNames,
        LExpireDateTimeUTC,
        LFirstName,
        LMiddleName,
        LLastName);
  finally
    FreeAndNil(Json);
  end;
end;

function IsTempAuthenticationTokenString(
  const AAuthenticationTokenString: string): Boolean;
begin
  Result:= AAuthenticationTokenString.StartsWith(TempAuthenticationTokenPrefix);
end;

function StringToAuthenticationToken(const Value: string): TAuthenticationToken;
begin
  if IsTempAuthenticationTokenString(Value) then
    Exit(Default(TAuthenticationToken));

  if Value.StartsWith(ProductionIdentityServer4aAuthenticationTokenPrefix) then
    try
      Exit(IdentityTokenStringToAuthenticationToken(Copy(Value, Length(ProductionIdentityServer4aAuthenticationTokenPrefix)+1, Length(Value)), atiProductionIdentityServer4a));
    except
      on E: Exception do
        Exit(TAuthenticationToken.Create(atiProductionIdentityServer4a, E.Message));
    end;

  if Value.StartsWith(DevIdentityServer4aAuthenticationTokenPrefix) then
    try
      Exit(IdentityTokenStringToAuthenticationToken(Copy(Value, Length(DevIdentityServer4aAuthenticationTokenPrefix)+1, Length(Value)), atiDevIdentityServer4a));
    except
      on E: Exception do
        Exit(TAuthenticationToken.Create(atiDevIdentityServer4a, E.Message));
    end;

  if Value.StartsWith(ProductionIdentityServer4bAuthenticationTokenPrefix) then
    try
      Exit(IdentityTokenStringToAuthenticationToken(Copy(Value, Length(ProductionIdentityServer4bAuthenticationTokenPrefix)+1, Length(Value)), atiProductionIdentityServer4b));
    except
      on E: Exception do
        Exit(TAuthenticationToken.Create(atiProductionIdentityServer4b, E.Message));
    end;

  if Value.StartsWith(DevIdentityServer4bAuthenticationTokenPrefix) then
    try
      Exit(IdentityTokenStringToAuthenticationToken(Copy(Value, Length(DevIdentityServer4bAuthenticationTokenPrefix)+1, Length(Value)), atiDevIdentityServer4b));
    except
      on E: Exception do
        Exit(TAuthenticationToken.Create(atiDevIdentityServer4b, E.Message));
    end;

  raise Exception.Create('Unsupported authentication token type');
end;

end.
