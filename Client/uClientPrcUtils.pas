unit uClientPrcUtils;

interface

uses
  uClientPrcData, Generics.Collections, SysUtils, uPrcUtils, Graphics;

const
  PrcGreaterThanOneDistrubutionCountBackgroundColor = $00B4B4FF;
  PrcIrrelevantColumnColor = $00F0F0F0;

type
  TFullStrKeyValue = string;

type
  TPrcNode = class;

  TPrcNodesList = TList<TPrcNode>;
  TPrcNodesDict = TObjectDictionary<TFullStrKeyValue, TPrcNode>;

  TPrcLevelsDict = TObjectDictionary<TClientProcessLevelData, TPrcNodesList>;

  TPrcNode = class
  strict private
    FFullStrKeyValue: TFullStrKeyValue;
    FParent: TPrcNode;
    FChildren: TPrcNodesList;
    FLevel: TClientProcessLevelData;
    FRecNo: Integer;
    FIsQuickAdd: Boolean;
  private
    function GetImageIndex: Integer;
  public
    constructor Create(const AFullStrKeyValue: TFullStrKeyValue; AParent: TPrcNode; ALevel: TClientProcessLevelData; ARecNo: Integer; AIsQuickAdd: Boolean);
    destructor Destroy; override;
    procedure LocateRecord;
    property FullStrKeyValue: TFullStrKeyValue read FFullStrKeyValue;
    property Parent: TPrcNode read FParent;
    property Children: TPrcNodesList read FChildren;
    property Level: TClientProcessLevelData read FLevel;
    property IsQuickAdd: Boolean read FIsQuickAdd;
    property ImageIndex: Integer read GetImageIndex;
  end;

type
  TPrcOwner = class
  strict private
    FPrcData: TClientProcessOwnerData;
    FQuickAddPrcData: TClientProcessOwnerData;
    FPrcNodesDict: TPrcNodesDict;
    FPrcLevelsDict: TPrcLevelsDict;
    procedure AddLevelNodes(ALevel: TClientProcessLevelData; AIsQuickAdd: Boolean);
    procedure InitializeLevel(ALevel: TClientProcessLevelData);
    procedure AddCurrentRecord(ALevel: TClientProcessLevelData; AIsQuickAdd: Boolean);
    procedure AddRootPrcNode;
    function GetRootPrcNode: TPrcNode;
  public
    constructor Create(APrcData: TClientProcessOwnerData; AQuickAddPrcData: TClientProcessOwnerData);
    destructor Destroy; override;
    property RootPrcNode: TPrcNode read GetRootPrcNode;
  end;

resourcestring
  SPrcOrgDistributionStatusNameGroupDept = 'Неразпределена';
  SPrcOrgDistributionStatusNameDescendantGroupDept = 'Разпределена до поне едно ОрГТП, но не и до ОпТП';
  SPrcOrgDistributionStatusNameDefiniteDept = 'Разпределена до поне едно ОпТП, но не и до Длъжност';
  SPrcOrgDistributionStatusNameOccupation = 'Разпределена до Длъжност, но без Длъжностно Назначение';
  SPrcOrgDistributionStatusNameOccupationEmployee = 'Разпределена до Длъжностно Назначение, но не е усвоена';
  SPrcOrgDistributionStatusNameMasteredOccupationEmployee = 'Разпределена до Длъжностно Назначение и е усвоена';

const
  PrcOrgDistributionStatusNames: array[TPrcOrgDistributionStatus] of string = (
    SPrcOrgDistributionStatusNameGroupDept,
    SPrcOrgDistributionStatusNameDescendantGroupDept,
    SPrcOrgDistributionStatusNameDefiniteDept,
    SPrcOrgDistributionStatusNameOccupation,
    SPrcOrgDistributionStatusNameOccupationEmployee,
    SPrcOrgDistributionStatusNameMasteredOccupationEmployee);

type
  TIsNegative = Boolean;

type
  TCountColumnColors = array[TIsNegative] of TColor;

const
  CountColumnColors: TCountColumnColors = ($00BCE3D6, $00DBDBF2);
  NotDistributedColor = $00BEBFE8;

resourcestring
  SGreaterThanOneOrgDistrubutionCount = 'Разпределена на ОрГТП в различни клонове на структурата';

implementation

uses
  uUtils, Math;

{ TPrcOwner }

procedure TPrcOwner.AddCurrentRecord(ALevel: TClientProcessLevelData; AIsQuickAdd: Boolean);

  procedure AddToParent(AParentPrcNode: TPrcNode);
  var
    PrcNode: TPrcNode;
    FullStrKeyValue: string;
  begin
    if ALevel.IsDisconnected then
      FullStrKeyValue:= MakeFullStrKeyValue(AParentPrcNode.FullStrKeyValue, ALevel.StrKeyValue)
    else
      FullStrKeyValue:= ALevel.FullStrKeyValue;

    if not FPrcNodesDict.ContainsKey(FullStrKeyValue) then
      begin
        PrcNode:= TPrcNode.Create(FullStrKeyValue, AParentPrcNode, ALevel, ALevel.cdsLevelData.RecNo, AIsQuickAdd);
        FPrcNodesDict.Add(FullStrKeyValue, PrcNode);
        PrcNode.Parent.Children.Add(PrcNode);
        FPrcLevelsDict[ALevel].Add(PrcNode);
      end;
  end;

var
  ParentPrcNode: TPrcNode;
begin
  if not ALevel.IsDisconnected then
    begin
      if FPrcNodesDict.ContainsKey(ALevel.LogicalParentFullStrKeyValue) then
        begin
          ParentPrcNode:= FPrcNodesDict[ALevel.LogicalParentFullStrKeyValue];
          if not ParentPrcNode.IsQuickAdd then
            AddToParent(ParentPrcNode);
        end;
    end
  else
    begin
      for ParentPrcNode in FPrcLevelsDict[FPrcData.LevelByName(ALevel.Name).LogicalParent] do
        if not ParentPrcNode.IsQuickAdd then
          AddToParent(ParentPrcNode);
    end;
end;

procedure TPrcOwner.AddRootPrcNode;
var
  PrcNode: TPrcNode;
begin
  FPrcLevelsDict.Add(nil, TPrcNodesList.Create);
  PrcNode:= TPrcNode.Create(FPrcData.RootParentStrKeyValue, nil, nil, 0, False);
  FPrcNodesDict.Add(FPrcData.RootParentStrKeyValue, PrcNode);
  FPrcLevelsDict[nil].Add(PrcNode);
end;

procedure TPrcOwner.AddLevelNodes(ALevel: TClientProcessLevelData; AIsQuickAdd: Boolean);
begin
  FPrcLevelsDict.Add(ALevel, TPrcNodesList.Create);

  ALevel.cdsLevelData.ForEach/
    procedure begin
      AddCurrentRecord(ALevel, AIsQuickAdd);
    end;
end;

procedure TPrcOwner.InitializeLevel(ALevel: TClientProcessLevelData);
var
  Level: TClientProcessLevelData;
  QuickAddLevel: TClientProcessLevelData;
begin
  if Assigned(ALevel) then
    begin
      AddLevelNodes(ALevel, False);

      if Assigned(FQuickAddPrcData) then
        begin
          QuickAddLevel:= FQuickAddPrcData.FindLevel(ALevel.Name);
          if Assigned(QuickAddLevel) then
            AddLevelNodes(QuickAddLevel, True);
        end;
    end
  else
    AddRootPrcNode;

  for Level in FPrcData.LevelChildren(ALevel) do
    if Level.Visible then
      InitializeLevel(Level);
end;

constructor TPrcOwner.Create(APrcData: TClientProcessOwnerData; AQuickAddPrcData: TClientProcessOwnerData);
begin
  inherited Create;

  FPrcData:= APrcData;
  FQuickAddPrcData:= AQuickAddPrcData;

  FPrcNodesDict:= TPrcNodesDict.Create([doOwnsValues]);
  FPrcLevelsDict:= TPrcLevelsDict.Create([doOwnsValues]);

  InitializeLevel(nil);
end;

destructor TPrcOwner.Destroy;
begin
  FreeAndNil(FPrcLevelsDict);
  FreeAndNil(FPrcNodesDict);
  inherited;
end;

function TPrcOwner.GetRootPrcNode: TPrcNode;
begin
  Assert(FPrcLevelsDict[nil].Count = 1);
  Result:= FPrcLevelsDict[nil].First;
end;

{ TPrcNode }

constructor TPrcNode.Create(const AFullStrKeyValue: TFullStrKeyValue; AParent: TPrcNode; ALevel: TClientProcessLevelData; ARecNo: Integer; AIsQuickAdd: Boolean);
begin
  inherited Create;

  FChildren:= TPrcNodesList.Create;

  FFullStrKeyValue:= AFullStrKeyValue;
  FParent:= AParent;
  FLevel:= ALevel;
  FRecNo:= ARecNo;
  FIsQuickAdd:= AIsQuickAdd;
end;

destructor TPrcNode.Destroy;
begin
  FreeAndnil(FChildren);
  inherited;
end;

function TPrcNode.GetImageIndex: Integer;
begin
  Result:= Level.ImageIndex + IfThen(IsQuickAdd, 2);
end;

procedure TPrcNode.LocateRecord;
begin
  Level.cdsLevelData.RecNo:= FRecNo;
end;

end.
