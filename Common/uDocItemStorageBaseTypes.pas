unit uDocItemStorageBaseTypes;

interface

uses
  uUtils, Db;

type
  TDocItemStorageBaseType = (disbtNone, disbtInternal, disbtExternal, disbtCommandStorage, disbtContentStorage);

function IntToDocItemStorageBaseType(AValue: Integer): TDocItemStorageBaseType;
function DocItemStorageBaseTypeToInt(AValue: TDocItemStorageBaseType): Integer;

type
  TDocItemStorageBaseTypeFieldHelper = class helper (TFieldHelper) for TField
  private
    function GetAsDocItemStorageBaseType: TDocItemStorageBaseType;
    procedure SetAsDocItemStorageBaseType(const Value: TDocItemStorageBaseType);
  public
    property AsDocItemStorageBaseType: TDocItemStorageBaseType read GetAsDocItemStorageBaseType write SetAsDocItemStorageBaseType;
  end;

implementation

uses
  SysUtils, Math;

function IntToDocItemStorageBaseType(AValue: Integer): TDocItemStorageBaseType;
begin
  if not InRange(AValue, Ord(Low(TDocItemStorageBaseType)), Ord(High(TDocItemStorageBaseType))) then
    raise Exception.CreateFmt('Could not convert Integer (%d) to TDocItemStorageBaseType', [AValue]);

  Result:= TDocItemStorageBaseType(AValue);
end;

function DocItemStorageBaseTypeToInt(AValue: TDocItemStorageBaseType): Integer;
begin
  Result:= Ord(AValue);
end;

{ TOWDPriorityTypeFieldHelper }

function TDocItemStorageBaseTypeFieldHelper.GetAsDocItemStorageBaseType: TDocItemStorageBaseType;
begin
  Result:= IntToDocItemStorageBaseType(AsInteger);
end;

procedure TDocItemStorageBaseTypeFieldHelper.SetAsDocItemStorageBaseType(const Value: TDocItemStorageBaseType);
begin
  AsInteger:= DocItemStorageBaseTypeToInt(Value);
end;

end.
