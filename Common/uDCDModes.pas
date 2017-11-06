unit uDCDModes;

interface

uses
  uUtils, DB;

type
  TDCDMode = (dcdmObjective, dcdmSubjective);

function DCDModeToInt(AValue: TDCDMode): Integer;
function IntToDCDMode(AValue: Integer): TDCDMode;

type
  TDCDModeFieldHelper = class helper (TFieldHelper) for TField
  private
    function GetAsDCDMode: TDCDMode;
    procedure SetAsDCDMode(const Value: TDCDMode);
  public
    property AsDCDMode: TDCDMode read GetAsDCDMode write SetAsDCDMode;
  end;

implementation

uses
  SysUtils;

function DCDModeToInt(AValue: TDCDMode): Integer;
begin
  case AValue of
    dcdmObjective: Result:= 1;
    dcdmSubjective: Result:= 2;
  else
    raise Exception.Create('Unknown DCDMode');
  end;
end;

function IntToDCDMode(AValue: Integer): TDCDMode;
begin
  case AValue of
    1: Result:= dcdmObjective;
    2: Result:= dcdmSubjective;
  else
    raise Exception.Create('Unknown DCDMode code');
  end;
end;

{ TDCDModeFieldHelper }

function TDCDModeFieldHelper.GetAsDCDMode: TDCDMode;
begin
  Result:= IntToDCDMode(AsInteger);
end;

procedure TDCDModeFieldHelper.SetAsDCDMode(const Value: TDCDMode);
begin
  AsInteger:= DCDModeToInt(Value);
end;

end.
