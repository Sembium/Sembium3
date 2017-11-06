unit uPrcData;

interface

uses
  uPrcDeclarations, Db, Variants, AbmesClientDataSet, DBClient;

type
  TProcessLevelData = class;
  TProcessLevelDataArray = array of TProcessLevelData;

  TProcessOwnerData = class(TProcessOwner)
  private
    function GetAsVariant: Variant;
    procedure SetAsVariant(const AValue: Variant);
    function GetLevelsAsVariant: Variant;
    procedure SetLevelsAsVariant(const AValue: Variant);
    function GetLevelsSet: TProcessLevelDataArray;
    function GetRelevantRollupLevel: TProcessLevelData;
  protected
    function CreateProcessLevel(AProcessLevel: TProcessLevel): TProcessLevel; override;
    procedure FreeProcessLevel(AProcessLevel: TProcessLevel); override;
  public
    function IsDataEqual(AValue: TProcessOwnerData): Boolean;
    function LevelByName(const ALevelName: string): TProcessLevelData;
    property LevelsSet: TProcessLevelDataArray read GetLevelsSet;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
    property RelevantRollupLevel: TProcessLevelData read GetRelevantRollupLevel;
  end;

  TProcessLevelData = class(TProcessLevel)
  private
    FcdsLevelData: TAbmesClientDataSet;
    function GetAsVariant: Variant;
    procedure SetAsVariant(const AValue: Variant);
    function GetOwner: TProcessOwnerData;
  protected
    procedure DoAfterSetAsVariant; virtual;
  public
    constructor Create(AProcessLevel: TProcessLevel; AOwner: TProcessOwner);
    destructor Destroy; override;
    function IsDataEqual(AValue: TProcessLevelData): Boolean;

    property cdsLevelData: TAbmesClientDataSet read FcdsLevelData;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
    property Owner: TProcessOwnerData read GetOwner;
  end;

implementation

uses
  uUtils, SysUtils;

{ TProcessOwnerData }

function TProcessOwnerData.GetLevelsSet: TProcessLevelDataArray;
begin
  Result:= TProcessLevelDataArray(inherited LevelsSet);
end;

function TProcessOwnerData.GetRelevantRollupLevel: TProcessLevelData;
begin
  Result:= inherited RelevantRollupLevel as TProcessLevelData;
end;

function TProcessOwnerData.LevelByName(const ALevelName: string): TProcessLevelData;
begin
  Result:= inherited LevelByName(ALevelName) as TProcessLevelData;
end;

function TProcessOwnerData.CreateProcessLevel(AProcessLevel: TProcessLevel): TProcessLevel;
begin
  Result:= TProcessLevelData.Create(AProcessLevel, Self);
end;

function TProcessOwnerData.IsDataEqual(AValue: TProcessOwnerData): Boolean;
var
  Level: TProcessLevelData;
begin
  for Level in LevelsSet do
    if not Level.IsDataEqual(AValue.LevelByName(Level.Name)) then
      Exit(False);

  Result:= True;
end;

procedure TProcessOwnerData.FreeProcessLevel(AProcessLevel: TProcessLevel);
begin
  AProcessLevel.Free;
end;

procedure TProcessOwnerData.SetAsVariant(const AValue: Variant);
begin
  Assert(VarIsArray(AValue));
  Assert(VarArrayLength(AValue) = 2);
  Assert(AValue[0] = Name);

  SetLevelsAsVariant(AValue[1]);
end;

function TProcessOwnerData.GetAsVariant: Variant;
begin
  Result:= VarArrayCreate([0, 1], varVariant);
  Result[0]:= Name;
  Result[1]:= GetLevelsAsVariant;
end;

function TProcessOwnerData.GetLevelsAsVariant: Variant;
var
  i: Integer;
  Level: TProcessLevelData;
begin
  Result:= VarArrayCreate([0, Length(LevelsSet) - 1], varVariant);

  i:= 0;
  for Level in LevelsSet do
    begin
      Result[i]:= Level.AsVariant;
      Inc(i);
    end;  { for }
end;

procedure TProcessOwnerData.SetLevelsAsVariant(const AValue: Variant);
var
  Level: TProcessLevelData;
  i: Integer;
begin
  Assert(VarIsArray(AValue));
  Assert(VarArrayLength(AValue) = Length(LevelsSet));

  i:= 0;
  for Level in LevelsSet do
    begin
      Level.AsVariant:= AValue[i];
      Inc(i);
    end;  { for }
end;

{ TProcessLevelData }

function TProcessLevelData.GetOwner: TProcessOwnerData;
begin
  Result:= inherited Owner as TProcessOwnerData;
end;

function TProcessLevelData.IsDataEqual(AValue: TProcessLevelData): Boolean;
begin
  Result:= (Self.cdsLevelData.XMLData = AValue.cdsLevelData.XMLData);
end;

constructor TProcessLevelData.Create(AProcessLevel: TProcessLevel; AOwner: TProcessOwner);
begin
  inherited Create(AProcessLevel, AOwner);
  FcdsLevelData:= TAbmesClientDataSet.Create(nil);
end;

destructor TProcessLevelData.Destroy;
begin
  FreeAndNil(FcdsLevelData);
  inherited;
end;

function TProcessLevelData.GetAsVariant: Variant;
begin
  Result:= VarArrayCreate([0, 1], varVariant);
  Result[0]:= Name;
  Result[1]:= cdsLevelData.Data;
end;

procedure TProcessLevelData.SetAsVariant(const AValue: Variant);
begin
  Assert(VarIsArray(AValue));
  Assert(VarArrayLength(AValue) = 2);
  Assert(AValue[0] = Name);

  cdsLevelData.Data:= AValue[1];

  DoAfterSetAsVariant;
end;

procedure TProcessLevelData.DoAfterSetAsVariant;
begin
  // do nothing
end;

end.
