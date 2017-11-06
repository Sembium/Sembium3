unit uIdentityServer.Constants;

interface

type
  TIdentityServerEndpoints = record
  strict private
    FBaseAddress: string;
    FScope: string; // vremenno dokato poddurjame i 3 i 4
    property BaseAddress: string read FBaseAddress;
  private
    constructor Create(const ABaseAddress, AScope: string);
  public
    function AuthorizeEndpoint: string;
    function LogoutEndpoint: string;
    function TokenEndpoint: string;
    function UserInfoEndpoint: string;
    function IdentityTokenValidationEndpoint: string;
    function IntrospectionEndpoint: string;
    function TokenRevocationEndpoint: string;
    property Scope: string read FScope;
  end;

function DevIdentityServer4aEndpoints: TIdentityServerEndpoints;
function ProductionIdentityServer4aEndpoints: TIdentityServerEndpoints;
function DevIdentityServer4bEndpoints: TIdentityServerEndpoints;
function ProductionIdentityServer4bEndpoints: TIdentityServerEndpoints;

implementation

uses
  uCommonApp;

{ TIdentityServerEndpoints }

constructor TIdentityServerEndpoints.Create(const ABaseAddress, AScope: string);
begin
  FBaseAddress:= ABaseAddress;
  FScope:= AScope;
end;

function TIdentityServerEndpoints.AuthorizeEndpoint: string;
begin
  Result:= BaseAddress + '/connect/authorize';
end;

function TIdentityServerEndpoints.LogoutEndpoint: string;
begin
  Result:= BaseAddress + '/connect/endsession';
end;

function TIdentityServerEndpoints.TokenEndpoint: string;
begin
  Result:= BaseAddress + '/connect/token';
end;

function TIdentityServerEndpoints.UserInfoEndpoint: string;
begin
  Result:= BaseAddress + '/connect/userinfo';
end;

function TIdentityServerEndpoints.IdentityTokenValidationEndpoint: string;
begin
  Result:= BaseAddress + '/connect/identitytokenvalidation';
end;

function TIdentityServerEndpoints.IntrospectionEndpoint: string;
begin
  Result:= BaseAddress + '/connect/introspect';
end;

function TIdentityServerEndpoints.TokenRevocationEndpoint: string;
begin
  Result:= BaseAddress + '/connect/revocation';
end;

{ Routines }

function DevIdentityServer4aEndpoints: TIdentityServerEndpoints;
begin
  Result:= TIdentityServerEndpoints.Create(SDevIdentityServer4aURL, '');
end;

function ProductionIdentityServer4aEndpoints: TIdentityServerEndpoints;
begin
  Result:= TIdentityServerEndpoints.Create(SProductionIdentityServer4aURL, '');
end;

function DevIdentityServer4bEndpoints: TIdentityServerEndpoints;
begin
  Result:= TIdentityServerEndpoints.Create(SDevIdentityServer4bURL, '');
end;

function ProductionIdentityServer4bEndpoints: TIdentityServerEndpoints;
begin
  Result:= TIdentityServerEndpoints.Create(SProductionIdentityServer4bURL, '');
end;

end.
