unit uServerLoginContext;

interface

uses
  SysUtils, uLoginContext, uBaseSessionContext, uNestProc;

type
  TServerLoginContext = class abstract(TLoginContext)
  strict private
    FOwner: TBaseSessionContext;
    FStartupContextDateOverride: TDateTime;
    FStartupDate: TDateTime;
    class function GetNewClientConnectionId: Integer;
  strict protected
    procedure DoSetDefaults; override;

    function GetOwner: TBaseSessionContext;
    function GetContextNow: TDateTime; override;
    function GetIsContextDateOverrideEnabled: Boolean;
    function GetStartupContextDateOverride: TDateTime;
  protected
    procedure SetStartupContextDateOverride(const Value: TDateTime);
  public
    constructor Create(const AOwner: TBaseSessionContext); virtual;
    property Owner: TBaseSessionContext read GetOwner;
    property IsContextDateOverrideEnabled: Boolean read GetIsContextDateOverrideEnabled;
    property StartupContextDateOverride: TDateTime read GetStartupContextDateOverride;
  end;

implementation

uses
  Windows, DateUtils, uTimeZoneUtils, uUtils;

{ TServerLoginContext }

constructor TServerLoginContext.Create(const AOwner: TBaseSessionContext);
begin
  inherited Create;
  FOwner:= AOwner;
  SetConnectionId(GetNewClientConnectionId);
end;

procedure TServerLoginContext.DoSetDefaults;
begin
  inherited DoSetDefaults;
  FStartupContextDateOverride:= 0;
  FStartupDate:= 0;
end;

function TServerLoginContext.GetIsContextDateOverrideEnabled: Boolean;
begin
  Result:= (FStartupContextDateOverride <> 0);
end;

function TServerLoginContext.GetOwner: TBaseSessionContext;
begin
  Result:= FOwner;
end;

function TServerLoginContext.GetContextNow: TDateTime;
begin
  Result:= NowInTimeZone(GetTimeZoneId);
  if IsContextDateOverrideEnabled then
    Result:= FStartupContextDateOverride + DaysBetween(DateOf(Result), FStartupDate) + TimeOf(Result);
end;

function TServerLoginContext.GetStartupContextDateOverride: TDateTime;
begin
  Result:= FStartupContextDateOverride;
end;

procedure TServerLoginContext.SetStartupContextDateOverride(const Value: TDateTime);
begin
  FStartupContextDateOverride:= DateOf(Value);

  if (Value = 0) then
    FStartupDate:= 0
  else
    FStartupDate:= DateOf(NowInTimeZone(GetTimeZoneId));
end;

var
  LastClientConnectionId: Integer;

class function TServerLoginContext.GetNewClientConnectionId: Integer;
begin
  Result:= InterlockedIncrement(LastClientConnectionId);
end;

end.
