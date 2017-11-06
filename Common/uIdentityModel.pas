unit uIdentityModel;

// Translated from github/IdentityModel

interface

uses
  SysUtils, System.Generics.Collections;

type
  Base64Url = class abstract
    public class function Encode(const arg: TBytes): string;
    public class function Decode(const arg: string): TBytes;
  end;

type
  IAuthorizeResponse = interface
    function GetAccessToken: string;
    function GetCode: string;
    function GetError: string;
    function GetExpiresIn: Int64;
    function GetIdentityToken: string;
    function GetIsError: Boolean;
    function GetRaw: string;
    function GetScope: string;
    function GetState: string;
    function GetTokenType: string;
    function GetValues: TDictionary<string, string>;

    property AccessToken: string read GetAccessToken;
    property Code: string read GetCode;
    property Error: string read GetError;
    property ExpiresIn: Int64 read GetExpiresIn;
    property IdentityToken: string read GetIdentityToken;
    property IsError: Boolean read GetIsError;
    property Raw: string read GetRaw;
    property Scope: string read GetScope;
    property State: string read GetState;
    property TokenType: string read GetTokenType;
    property Values: TDictionary<string, string> read GetValues;
  end;

function CreateAuthorizeResponse(const ARaw: string): IAuthorizeResponse;

(*
type
  TAuthorizeResponse = record
  private
  public

    constructor Create(const ARaw: string);
    destructor Destroy;

    public string AccessToken { get; }
    public string Code { get; }
    public string Error { get; }
    public long ExpiresIn { get; }
    public string IdentityToken { get; }
    public bool IsError { get; }
    public string Raw { get; protected set; }
    public string Scope { get; }
    public string State { get; }
    public string TokenType { get; }
    public Dictionary<string, string> Values { get; protected set; }
  end;

*)
function CreateAuthorizeUrl(
  const authorizeEndpoint: string;
  const clientId: string;
  const responseType: string;
  const scope: string = '';
  const redirectUri: string = '';
  const state: string = '';
  const nonce: string = '';
  const loginHint: string = '';
  const acrValues: string = '';
  const prompt: string = '';
  const responseMode: string = '';
  const codeChallenge: string = '';
  const codeChallengeMethod: string = '';
  const extra: TObject = nil
): string;

implementation

uses
  System.NetEncoding, uEnumeratorUtils, System.Net.URLClient,
  uIdentityModel.Constants;

function CreateAuthorizeUrl(
  const authorizeEndpoint: string;
  const clientId: string;
  const responseType: string;
  const scope: string = '';
  const redirectUri: string = '';
  const state: string = '';
  const nonce: string = '';
  const loginHint: string = '';
  const acrValues: string = '';
  const prompt: string = '';
  const responseMode: string = '';
  const codeChallenge: string = '';
  const codeChallengeMethod: string = '';
  const extra: TObject = nil
): string;
var
  uri: TURI;
begin
  uri:= TURI.Create(authorizeEndpoint);
  uri.AddParameter(OidcConstants.AuthorizeRequest.ClientId, clientId);
  uri.AddParameter(OidcConstants.AuthorizeRequest.ResponseType, responseType);

  if not string.IsNullOrWhiteSpace(scope) then
    uri.AddParameter(OidcConstants.AuthorizeRequest.Scope, scope);

  if not string.IsNullOrWhiteSpace(redirectUri) then
    uri.AddParameter(OidcConstants.AuthorizeRequest.RedirectUri, redirectUri);

  if not string.IsNullOrWhiteSpace(state) then
    uri.AddParameter(OidcConstants.AuthorizeRequest.State, state);

  if not string.IsNullOrWhiteSpace(nonce) then
    uri.AddParameter(OidcConstants.AuthorizeRequest.Nonce, nonce);

  if not string.IsNullOrWhiteSpace(loginHint) then
    uri.AddParameter(OidcConstants.AuthorizeRequest.LoginHint, loginHint);

  if not string.IsNullOrWhiteSpace(acrValues) then
    uri.AddParameter(OidcConstants.AuthorizeRequest.AcrValues, acrValues);

  if not string.IsNullOrWhiteSpace(prompt) then
    uri.AddParameter(OidcConstants.AuthorizeRequest.Prompt, prompt);

  if not string.IsNullOrWhiteSpace(responseMode) then
    uri.AddParameter(OidcConstants.AuthorizeRequest.ResponseMode, responseMode);

  if not string.IsNullOrWhiteSpace(codeChallenge) then
    uri.AddParameter(OidcConstants.AuthorizeRequest.CodeChallenge, codeChallenge);

  if not string.IsNullOrWhiteSpace(codeChallengeMethod) then
    uri.AddParameter(OidcConstants.AuthorizeRequest.CodeChallengeMethod, codeChallengeMethod);

  // todo: extra e not implemented

  Result:= uri.ToString;
end;






type
  TAuthorizeResponse = class(TInterfacedObject, IAuthorizeResponse)
  strict private
    FRaw: string;
    FIsError: Boolean;
    FValues: TDictionary<string, string>;
    procedure ParseRaw;
    function TryGet(const AType: string): string;
  protected
    function GetAccessToken: string;
    function GetCode: string;
    function GetError: string;
    function GetExpiresIn: Int64;
    function GetIdentityToken: string;
    function GetIsError: Boolean;
    function GetRaw: string;
    function GetScope: string;
    function GetState: string;
    function GetTokenType: string;
    function GetValues: TDictionary<string, string>;
  public
    constructor Create(const ARaw: string);
    destructor Destroy; override;
  end;

{ TAuthorizeResponse }

constructor TAuthorizeResponse.Create(const ARaw: string);
begin
  inherited Create;
  FRaw:= ARaw;
  FValues:= TDictionary<string, string>.Create;
  ParseRaw;
end;

destructor TAuthorizeResponse.Destroy;
begin
  FreeAndNil(FValues);
  inherited;
end;

function TAuthorizeResponse.GetAccessToken: string;
begin
  Result:= TryGet(OidcConstants.AuthorizeResponse.AccessToken);
end;

function TAuthorizeResponse.GetCode: string;
begin
  Result:= TryGet(OidcConstants.AuthorizeResponse.Code);
end;

function TAuthorizeResponse.GetError: string;
begin
  Result:= TryGet(OidcConstants.AuthorizeResponse.Error);
end;

function TAuthorizeResponse.GetExpiresIn: Int64;
begin
  Result:= StrToInt64Def(TryGet(OidcConstants.AuthorizeResponse.ExpiresIn), 0);
end;

function TAuthorizeResponse.GetIdentityToken: string;
begin
  Result:= TryGet(OidcConstants.AuthorizeResponse.IdentityToken);
end;

function TAuthorizeResponse.GetIsError: Boolean;
begin
  Result:= FIsError;
end;

function TAuthorizeResponse.GetRaw: string;
begin
  Result:= FRaw;
end;

function TAuthorizeResponse.GetScope: string;
begin
  Result:= TryGet(OidcConstants.AuthorizeResponse.Scope);
end;

function TAuthorizeResponse.GetState: string;
begin
  Result:= TryGet(OidcConstants.AuthorizeResponse.State);
end;

function TAuthorizeResponse.GetTokenType: string;
begin
  Result:= TryGet(OidcConstants.AuthorizeResponse.TokenType);
end;

function TAuthorizeResponse.GetValues: TDictionary<string, string>;
begin
  Result:= FValues;
end;

procedure TAuthorizeResponse.ParseRaw;
var
  fragments: TArray<string>;
  qparams: TArray<string>;
  parts: TArray<string>;
  param: string;
begin
  if FRaw.Contains('#') then  // fragment encoded
    fragments:= FRaw.Split(['#'])
  else
    begin
      if FRaw.Contains('?') then  // query string encoded
        fragments:= FRaw.Split(['?'])
      else  // form encoded
        fragments:= ['', FRaw];
    end;

  if FRaw.Contains(OidcConstants.AuthorizeResponse.Error) then
    FIsError:= True;

  qparams:= fragments[1].Split(['&']);

  for param in qparams do
    begin
      parts:= param.Split(['=']);

      if (Length(parts) = 2) then
        FValues.Add(parts[0], parts[1])
      else
        raise Exception.Create('Malformed callback URL');
    end;
end;

function TAuthorizeResponse.TryGet(const AType: string): string;
begin
  Result:= '';
  FValues.TryGetValue(AType, Result);
end;

function CreateAuthorizeResponse(const ARaw: string): IAuthorizeResponse;
begin
  Result:= TAuthorizeResponse.Create(ARaw);
end;






(*
function StringPairToString(const APair: TPair<string, string>): string;
begin
  Result:= String.Format('%s=%s', [TURI.UrlEncode(APair.Key), TURI.UrlEncode(APair.Value)]);
end;

function CreateAuthorizeUrl(
  const authorizeEndpoint: string;
  const values: TDictionary<string, string>
): string; overload;
var
  qs: string;
begin
  qs:= string.Join('&', ArrayUtils.Map(StringPairToString, values.ToArray));

  Result:= string.Format('%s?%s', authorizeEndpoint, qs);
end;
*)

(*

    public class AuthorizeRequest
    {
        private readonly Uri _authorizeEndpoint;

        public AuthorizeRequest(Uri authorizeEndpoint)
        {
            _authorizeEndpoint = authorizeEndpoint;
        }

        public AuthorizeRequest(string authorizeEndpoint)
        {
            _authorizeEndpoint = new Uri(authorizeEndpoint);
        }

        public string Create(IDictionary<string, string> values)
        {
            var qs = string.Join("&", values.Select(kvp => String.Format("{0}={1}", WebUtility.UrlEncode(kvp.Key), WebUtility.UrlEncode(kvp.Value))).ToArray());
            return string.Format("{0}?{1}", _authorizeEndpoint.AbsoluteUri, qs);
        }
    }





    public static class AuthorizeRequestExtensions
    {
        public static string Create(this AuthorizeRequest request, object values)
        {
            return request.Create(ObjectToDictionary(values));
        }

        function CreateAuthorizeUrl(
          AAuthorizeEndpoint: string,
          AClientId: string,
          AResponseType: string,
          AScope: string = nil,
          ARedirectUri: string = nil,
          AState: string = nil,
          ANonce: string = nil,
          ALoginHint: string = nil,
          AAcrValues: string = nil,
          APrompt: string = nil,
          AResponseMode: string = nil,
          ACodeChallenge: string = nil,
          ACodeChallengeMethod: string = nil,
          AExtra: TObject = nil): string;
        begin
            var values = new Dictionary<string, string>
            {
                { OidcConstants.AuthorizeRequest.ClientId, clientId },
                { OidcConstants.AuthorizeRequest.ResponseType, responseType }
            };

            if (!string.IsNullOrWhiteSpace(scope))
            {
                values.Add(OidcConstants.AuthorizeRequest.Scope, scope);
            }

            if (!string.IsNullOrWhiteSpace(redirectUri))
            {
                values.Add(OidcConstants.AuthorizeRequest.RedirectUri, redirectUri);
            }

            if (!string.IsNullOrWhiteSpace(state))
            {
                values.Add(OidcConstants.AuthorizeRequest.State, state);
            }

            if (!string.IsNullOrWhiteSpace(nonce))
            {
                values.Add(OidcConstants.AuthorizeRequest.Nonce, nonce);
            }

            if (!string.IsNullOrWhiteSpace(loginHint))
            {
                values.Add(OidcConstants.AuthorizeRequest.LoginHint, loginHint);
            }

            if (!string.IsNullOrWhiteSpace(acrValues))
            {
                values.Add(OidcConstants.AuthorizeRequest.AcrValues, acrValues);
            }

            if (!string.IsNullOrWhiteSpace(prompt))
            {
                values.Add(OidcConstants.AuthorizeRequest.Prompt, prompt);
            }

            if (!string.IsNullOrWhiteSpace(responseMode))
            {
                values.Add(OidcConstants.AuthorizeRequest.ResponseMode, responseMode);
            }

            if (!string.IsNullOrWhiteSpace(codeChallenge))
            {
                values.Add(OidcConstants.AuthorizeRequest.CodeChallenge, codeChallenge);
            }

            if (!string.IsNullOrWhiteSpace(codeChallengeMethod))
            {
                values.Add(OidcConstants.AuthorizeRequest.CodeChallengeMethod, codeChallengeMethod);
            }

            return request.Create(Merge(values, ObjectToDictionary(extra)));
        }

        private static Dictionary<string, string> ObjectToDictionary(object values)
        {
            if (values == null)
            {
                return null;
            }

            var dictionary = values as Dictionary<string, string>;
            if (dictionary != null) return dictionary;

            dictionary = new Dictionary<string, string>();

            foreach (var prop in values.GetType().GetRuntimeProperties())
            {
                var value = prop.GetValue(values) as string;
                if (!string.IsNullOrEmpty(value))
                {
                    dictionary.Add(prop.Name, value);
                }
            }

            return dictionary;
        }

        private static Dictionary<string, string> Merge(Dictionary<string, string> explicitValues, Dictionary<string, string> additionalValues = null)
        {
            var merged = explicitValues;

            if (additionalValues != null)
            {
                merged =
                    explicitValues.Concat(additionalValues.Where(add => !explicitValues.ContainsKey(add.Key)))
                                         .ToDictionary(final => final.Key, final => final.Value);
            }

            return merged;
        }
    }

*)





{ Base64Url }

class function Base64Url.Encode(const arg: TBytes): string;
begin
  Result:= TNetEncoding.Base64.EncodeBytesToString(arg); // Standard base64 encoder
  Result:= Result.Split(['='])[0]; // Remove any trailing '='s
  Result:= Result.Replace('+', '-'); // 62nd char of encoding
  Result:= Result.Replace('/', '_'); // 63rd char of encoding
end;

class function Base64Url.Decode(const arg: string): TBytes;
var
  s: string;
begin
  s:= arg;
  s:= s.Replace('-', '+'); // 62nd char of encoding
  s:= s.Replace('_', '/'); // 63rd char of encoding

  case (s.Length mod 4) of // Pad with trailing '='s
    0: begin end;    // No pad chars in this case
    2: s:= s + '=='; // Two pad chars
    3: s:= s+ '=';   // One pad char
  else
    raise Exception.Create('Illegal base64url string');
  end;

  Result:= TNetEncoding.Base64.DecodeStringToBytes(s); // Standard base64 decoder
end;

end.
