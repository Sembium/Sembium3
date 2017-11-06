unit uIdentity.Connector;

interface

uses
  System.JSON;

type
  IdentityConnector = class abstract
  public
    type TSearchStatus = (ssNotSearched, ssNotFound, ssAmbiguous, ssSingleFound);
  strict private
    class function GetString(AJson: TJsonObject; const AName: string): string;
    class function SearchStatusToStr(ASearchStatus: TSearchStatus): string;
    class function StrToSearchStatus(const AValue: string): TSearchStatus;
  public
    type
      TSingleSearchResult<T> = record
      strict private
        FSearchStatus: TSearchStatus;
        FValue: T;
        function GetValue: T;
      private
        constructor Create(const AValue: T); overload;
        constructor Create(ASearchStatus: TSearchStatus); overload;
      public
        function HasSearched: Boolean;
        function HasValue: Boolean;
        property SearchStatus: TSearchStatus read FSearchStatus;
        property Value: T read GetValue;
      end;

    type
      TExternalUserData = record
      strict private
        FIdentifier: string;
        FFirstName: string;
        FMiddleName: string;
        FLastName: string;
        FEmailAddress: string;
        FPhoneNumber: string;
        function GetDisplayText: string;
      private
        constructor Create(const AIdentifier, AFirstName, AMiddleName, ALastName, AEmailAddress, APhoneNumber: string);
      public
        function IsEmpty: Boolean;
        property Identifier: string read FIdentifier;
        property FirstName: string read FFirstName;
        property MiddleName: string read FMiddleName;
        property LastName: string read FLastName;
        property EmailAddress: string read FEmailAddress;
        property PhoneNumber: string read FPhoneNumber;
        property DisplayText: string read GetDisplayText;
      end;

    class function FindExternalUserIdentifier(
      const ASearchText: string): TSingleSearchResult<string>;
    class function GetExternalUserData(
      const AExternalUserIdentifier: string): TExternalUserData;
  end;

implementation

uses
  System.SysUtils, JclStrings, uIdentity.Connector.Internal;

const
  SNotSearched = 'notSearched';
  SNotFound = 'notFound';
  SAmbiguous = 'ambiguous';
  SSingleFound = 'singleFound';

{ IdentityConnector }

class function IdentityConnector.GetString(AJson: TJsonObject; const AName: string): string;
var
  JsonValue: TJsonValue;
begin
  Assert(Assigned(AJson));
  JsonValue:= AJson.Values[AName];

  if not Assigned(JsonValue) then
    raise Exception.CreateFmt('JSON parse error. Value "%s" not found', [AName]);

  Result:= (JsonValue as TJSONString).Value;
end;

class function IdentityConnector.SearchStatusToStr(
  ASearchStatus: TSearchStatus): string;
begin
  case ASearchStatus of
    ssNotSearched:
      Result:= SNotSearched;
    ssNotFound:
      Result:= SNotFound;
    ssAmbiguous:
      Result:= SAmbiguous;
    ssSingleFound:
      Result:= SSingleFound;
  else
    raise Exception.Create('Unknown SearchStatus');
  end;
end;

class function IdentityConnector.StrToSearchStatus(
  const AValue: string): TSearchStatus;
begin
  if (AValue = SNotSearched) then
    Result:= ssNotSearched
  else if (AValue = SNotFound) then
    Result:= ssNotFound
  else if (AValue = SAmbiguous) then
    Result:= ssAmbiguous
  else if (AValue = SSingleFound) then
    Result:= ssSingleFound
  else
    raise Exception.Create('Unknown SearchStatusText');
end;

class function IdentityConnector.FindExternalUserIdentifier(
  const ASearchText: string): TSingleSearchResult<string>;

  function JsonToSingleSearchResult(const AJsonString: string): TSingleSearchResult<string>;
  var
    Json: TJsonObject;
    SearchStatus: TSearchStatus;
  begin
    Json:= TJSONObject.ParseJSONValue(AJsonString) as TJSONObject;
    try
      SearchStatus:= StrToSearchStatus(GetString(Json, 'searchStatus'));
      if (SearchStatus = ssSingleFound) then
        Result:= TSingleSearchResult<string>.Create(GetString(Json, 'value'))
      else
        Result:= TSingleSearchResult<string>.Create(SearchStatus);
    finally
      FreeAndNil(Json);
    end;
  end;

  function SingleSearchResultToJson(const ASingleSearchResult: TSingleSearchResult<string>): string;
  var
    StatusText: string;
    ValueText: string;
  begin
    StatusText:= SearchStatusToStr(ASingleSearchResult.SearchStatus);

    if ASingleSearchResult.HasValue then
      ValueText:= ASingleSearchResult.Value;

    Result:=
      Format(
        '{' +
        '    "searchStatus": "%s"' +
        '    "value": "%s"' +
        '}',
        [
          StatusText,
          ValueText
        ]
      );
  end;

  function GetJsonString: string;
  begin
    Result:= InternalIdentityConnector.FindUserIdentifier(ASearchText);
  end;

begin
  Result:= JsonToSingleSearchResult(GetJsonString());
end;

class function IdentityConnector.GetExternalUserData(
  const AExternalUserIdentifier: string): TExternalUserData;

  function JsonToExternalUserData(const AJsonString: string): TExternalUserData;
  var
    Json: TJsonObject;
  begin
    Json:= TJSONObject.ParseJSONValue(AJsonString) as TJSONObject;
    try
      if not Assigned(Json.Values['identifier']) then
        Result:= Default(TExternalUserData)
      else
        Result:=
          TExternalUserData.Create(
            GetString(Json, 'identifier'),
            GetString(Json, 'firstName'),
            GetString(Json, 'middleName'),
            GetString(Json, 'lastName'),
            GetString(Json, 'emailAddress'),
            GetString(Json, 'phoneNumber')
          );
    finally
      FreeAndNil(Json);
    end;
  end;

  function ExternalUserDataToJson(const AUserData: TExternalUserData): string;
  begin
    Result:=
      Format(
        '{' +
        '    "identifier": "%s"' +
        '    "firstName": "%s"' +
        '    "middleName": "%s"' +
        '    "lastName": "%s"' +
        '    "emailAddress": "%s"' +
        '    "phoneNumber": "%s"' +
        '}',
        [
          AUserData.Identifier,
          AUserData.FirstName,
          AUserData.MiddleName,
          AUserData.LastName,
          AUserData.EmailAddress,
          AUserData.PhoneNumber
        ]
      );
  end;

  function GetJsonString(): string;
  begin
    Result:= InternalIdentityConnector.GetUserData(AExternalUserIdentifier);
  end;

begin
  Result:= JsonToExternalUserData(GetJsonString());
end;

{ IdentityConnector.TSingleSearchResult<T> }

constructor IdentityConnector.TSingleSearchResult<T>.Create(const AValue: T);
begin
  FSearchStatus:= ssSingleFound;
  FValue:= AValue;
end;

constructor IdentityConnector.TSingleSearchResult<T>.Create(ASearchStatus: TSearchStatus);
begin
  Assert(ASearchStatus <> ssSingleFound);
  FSearchStatus:= ASearchStatus;
end;

function IdentityConnector.TSingleSearchResult<T>.GetValue: T;
begin
  case SearchStatus of
    ssNotSearched:
      raise Exception.Create('Cannot access Value. Not searched.');
    ssNotFound:
      raise Exception.Create('Cannot access Value. Search result is empty.');
    ssAmbiguous:
      raise Exception.Create('Cannot access Value. Ambiguous search.');
  end;

  Result:= FValue;
end;

function IdentityConnector.TSingleSearchResult<T>.HasSearched: Boolean;
begin
  Result:= (FSearchStatus <> ssNotSearched);
end;

function IdentityConnector.TSingleSearchResult<T>.HasValue: Boolean;
begin
  Result:= (FSearchStatus = ssSingleFound);
end;

{ IdentityConnector.TExternalUserData }

constructor IdentityConnector.TExternalUserData.Create(
  const AIdentifier, AFirstName, AMiddleName, ALastName, AEmailAddress, APhoneNumber: string);
begin
  FIdentifier:= AIdentifier;
  FFirstName:= AFirstName;
  FMiddleName:= AMiddleName;
  FLastName:= ALastName;
  FEmailAddress:= AEmailAddress;
  FPhoneNumber:= APhoneNumber;
end;

function IdentityConnector.TExternalUserData.GetDisplayText: string;
begin
  if IsEmpty then
    Result:= ''
  else
    Result:=
      Format(
        '%s %s %s (%s / %s) { %s }',
        [ FirstName,
          MiddleName,
          LastName,
          PhoneNumber,
          EmailAddress,
          Identifier
        ]);
end;

function IdentityConnector.TExternalUserData.IsEmpty: Boolean;
begin
  Result:= (FIdentifier = '');
end;

end.
