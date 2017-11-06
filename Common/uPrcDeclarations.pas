unit uPrcDeclarations;

interface

uses
  Classes, uDocUtils, uUtils;

const
  FakeRootLevelName = 'FakeRoot';

type
  TDocSource = (dsNone, dsSelf, dsProduct);

type
  TProcessOwner = class;
  TProcessLevel = class;

  TProcessLevelArray = array of TProcessLevel;

  TProcessLevel = class
  private
    FOwner: TProcessOwner;
    FName: string;
    FEntityPluralName: string;
    FDataTableOverride: string;
    FEntitySingularName: string;
    FKeyFieldOverride: string;
    FShortNameFieldNameOverride: string;
    FLogicalParent: TProcessLevel;
    FLogicalChildNo: Integer;
    FVisualParent: TProcessLevel;
    FIsDisconnected: Boolean;
    FVisible: Boolean;
    FCanHaveDateIntervalFields: Boolean;
    FCanHaveRegimeFields: Boolean;
    FHasLearningStatus: Boolean;
    FQuickAddEnabled: Boolean;
    FImageIndex: Integer;
    FDocOwnerType: TDocOwnerType;
    FSupportsRings: Boolean;
    FCanRollup: Boolean;
    FRelevantRollupLevel: TProcessLevel;

    function GetDataTableName: string;
    function GetKeyFieldName: string;
    procedure ReferenceOwnerLevels;
    function GetShortNameFieldName: string;
    function GetNameFieldName: string;
    function GetDocSource: TDocSource;
    function GetSkipDataTableJoin: Boolean;
    function GetName: string;
  protected
    property Owner: TProcessOwner read FOwner;
  public
    constructor Create; overload;
    constructor Create(AProcessLevel: TProcessLevel; AOwner: TProcessOwner); overload;

    property Name: string read GetName;

    property EntityPluralName: string read FEntityPluralName;
    property DataTableOverride: string read FDataTableOverride;
    property SkipDataTableJoin: Boolean read GetSkipDataTableJoin;
    property EntitySingularName: string read FEntitySingularName;
    property KeyFieldOverride: string read FKeyFieldOverride;
    property ShortNameFieldNameOverride: string read FShortNameFieldNameOverride;
    property LogicalParent: TProcessLevel read FLogicalParent;
    property LogicalChildNo: Integer read FLogicalChildNo;
    property VisualParent: TProcessLevel read FVisualParent;
    property IsDisconnected: Boolean read FIsDisconnected;
    property Visible: Boolean read FVisible;
    property CanHaveDateIntervalFields: Boolean read FCanHaveDateIntervalFields;
    property CanHaveRegimeFields: Boolean read FCanHaveRegimeFields;
    property HasLearningStatus: Boolean read FHasLearningStatus;
    property DocSource: TDocSource read GetDocSource;
    property QuickAddEnabled: Boolean read FQuickAddEnabled;
    property ImageIndex: Integer read FImageIndex;
    property DocOwnerType: TDocOwnerType read FDocOwnerType;
    property SupportsRings: Boolean read FSupportsRings;
    property CanRollup: Boolean read FCanRollup;
    property RelevantRollupLevel: TProcessLevel read FRelevantRollupLevel;

    property DataTableName: string read GetDataTableName;
    property KeyFieldName: string read GetKeyFieldName;
    property ShortNameFieldName: string read GetShortNameFieldName;
    property NameFieldName: string read GetNameFieldName;
  end;

  TProcessOwner = class
  private
    FName: string;
    FShowOwnerAsRoot: Boolean;
    FOwnerAsRootImageIndex: Integer;
    FLevelsSet: TProcessLevelArray;
    FTablePrefix: string;
    FKeyFieldName: string;
    FQuickAddOwner: TProcessOwner;
    FQuickAddKeyFieldName: string;
    FHasRegimeFields: Boolean;
    FHasDateIntervalFields: Boolean;
    FDateIntervalFieldsPrefix: string;
    FLearningDateIntervalFieldsPrefix: string;
    FHasDateIntervalValidator: Boolean;
    FHasDateIntervalIntersectionFilter: Boolean;
    FHasCurrentDateFilter: Boolean;
    FHasActionStatusChanges: Boolean;
    FRingFieldsOwner: TProcessOwner;
    FCanOverrideDateInterval: Boolean;
    FIsInstance: Boolean;
    FHasPrcOrgDistributionStatus: Boolean;
    FRollupLevel: TProcessLevel;
    FRelevantRollupLevel: TProcessLevel;
    FRootLevel: TProcessLevel;
    FRollupDisplayColumnFieldName: string;
    procedure AddLevel(AValue: TProcessLevel);
    function GetBeginDateFieldName: string;
    function GetEndDateFieldName: string;
    function GetLearningBeginDateFieldName: string;
    function GetLearningEndDateFieldName: string;
  protected
    function CreateProcessLevel(AProcessLevel: TProcessLevel): TProcessLevel; virtual;
    procedure FreeProcessLevel(AProcessLevel: TProcessLevel); virtual;
  public
    constructor Create; overload;
    constructor Create(AProcessOwner: TProcessOwner); overload;
    destructor Destroy; override;

    function FindLevel(const ALevelName: string): TProcessLevel;
    function LevelByName(const ALevelName: string): TProcessLevel;
    function LevelChildren(ALevel: TProcessLevel): TProcessLevelArray;
    function SecondaryChildLevel(ALevel: TProcessLevel): TProcessLevel;

    property Name: string read FName;

    property ShowOwnerAsRoot: Boolean read FShowOwnerAsRoot;
    property OwnerAsRootImageIndex: Integer read FOwnerAsRootImageIndex;
    property LevelsSet: TProcessLevelArray read FLevelsSet;
    property TablePrefix: string read FTablePrefix;
    property KeyFieldName: string read FKeyFieldName;
    property QuickAddOwner: TProcessOwner read FQuickAddOwner;
    property QuickAddKeyFieldName: string read FQuickAddKeyFieldName;
    property HasRegimeFields: Boolean read FHasRegimeFields;
    property HasDateIntervalFields: Boolean read FHasDateIntervalFields;
    property DateIntervalFieldsPrefix: string read FDateIntervalFieldsPrefix;
    property LearningDateIntervalFieldsPrefix: string read FLearningDateIntervalFieldsPrefix;
    property HasDateIntervalValidator: Boolean read FHasDateIntervalValidator;
    property HasDateIntervalIntersectionFilter: Boolean read FHasDateIntervalIntersectionFilter;
    property HasCurrentDateFilter: Boolean read FHasCurrentDateFilter;
    property HasActionStatusChanges: Boolean read FHasActionStatusChanges;
    property RingFieldsOwner: TProcessOwner read FRingFieldsOwner;
    property CanOverrideDateInterval: Boolean read FCanOverrideDateInterval;
    property IsInstance: Boolean read FIsInstance;
    property HasPrcOrgDistributionStatus: Boolean read FHasPrcOrgDistributionStatus;
    property RollupLevel: TProcessLevel read FRollupLevel;
    property RelevantRollupLevel: TProcessLevel read FRelevantRollupLevel;
    property RollupDisplayColumnFieldName: string read FRollupDisplayColumnFieldName;

    property RootLevel: TProcessLevel read FRootLevel;
    property BeginDateFieldName: string read GetBeginDateFieldName;
    property EndDateFieldName: string read GetEndDateFieldName;
    property LearningBeginDateFieldName: string read GetLearningBeginDateFieldName;
    property LearningEndDateFieldName: string read GetLearningEndDateFieldName;
  end;

type
  ProcessLevels = class abstract
  private
    class var
      FFunc: TProcessLevel;
      FKnowl: TProcessLevel;
      FBaseOp: TProcessLevel;
      FAllActions: TProcessLevel;
      FAllBaseActions: TProcessLevel;
      FAllConcreteActions: TProcessLevel;
      FAllProjectActions: TProcessLevel;
      FBaseAction: TProcessLevel;
      FBaseActionQuickAdd: TProcessLevel;
      FBaseActionStatusChange: TProcessLevel;
      FConcreteOp: TProcessLevel;
      FConcreteAction: TProcessLevel;
      FConcreteActionQuickAdd: TProcessLevel;
      FConcreteActionStatusChange: TProcessLevel;
  public
    class property Func: TProcessLevel read FFunc;
    class property Knowl: TProcessLevel read FKnowl;
    class property BaseOp: TProcessLevel read FBaseOp;
    class property AllActions: TProcessLevel read FAllActions;
    class property AllBaseActions: TProcessLevel read FAllBaseActions;
    class property AllConcreteActions: TProcessLevel read FAllConcreteActions;
    class property AllProjectActions: TProcessLevel read FAllProjectActions;
    class property BaseAction: TProcessLevel read FBaseAction;
    class property BaseActionQuickAdd: TProcessLevel read FBaseActionQuickAdd;
    class property BaseActionStatusChange: TProcessLevel read FBaseActionStatusChange;
    class property ConcreteOp: TProcessLevel read FConcreteOp;
    class property ConcreteAction: TProcessLevel read FConcreteAction;
    class property ConcreteActionQuickAdd: TProcessLevel read FConcreteActionQuickAdd;
    class property ConcreteActionStatusChange: TProcessLevel read FConcreteActionStatusChange;
  end;

type
  ProcessOwners = class abstract
  private
    class var
      FBaseOp: TProcessOwner;
      FBaseOpQuickAdd: TProcessOwner;
      FKnowl: TProcessOwner;
      FKnowlQuickAdd: TProcessOwner;
      FFunc: TProcessOwner;
      FFuncQuickAdd: TProcessOwner;
      FFuncForProjectQuickAdd: TProcessOwner;
      FProject: TProcessOwner;
      FDefiniteDept: TProcessOwner;
      FGroupDept: TProcessOwner;
      FRootDept: TProcessOwner;
      FDeptQuickAdd: TProcessOwner;
      FOccupation: TProcessOwner;
      FOccupationQuickAdd: TProcessOwner;
      FOccupationEmployee: TProcessOwner;
  public
    class function ProcessOwnerByName(const AValue: string): TProcessOwner;
    class property BaseOp: TProcessOwner read FBaseOp;
    class property Knowl: TProcessOwner read FKnowl;
    class property Func: TProcessOwner read FFunc;
    class property Project: TProcessOwner read FProject;
    class property DefiniteDept: TProcessOwner read FDefiniteDept;
    class property GroupDept: TProcessOwner read FGroupDept;
    class property RootDept: TProcessOwner read FRootDept;
    class property Occupation: TProcessOwner read FOccupation;
    class property OccupationEmployee: TProcessOwner read FOccupationEmployee;
  end;

implementation

uses
  SysUtils, StrUtils;

const
  CodeFieldSuffix = '_CODE';
  ShortNameFieldSuffix = '_SHORT_NAME';
  NameFieldSuffix = '_NAME';
  NotATable = 'NOT_A_TABLE';

function ProcessLevelArrayOf(Values: array of TProcessLevel): TProcessLevelArray;
var
  i: Integer;
begin
  SetLength(Result, High(Values) - Low(Values) + 1);
  for i:= Low(Values) to High(Values) do
    Result[i - Low(Values)]:= Values[i];
end;

{ TProcessLevel }

function TProcessLevel.GetDataTableName: string;
begin
  Result:= IfThen(DataTableOverride <> '', DataTableOverride, EntityPluralName);
end;

function TProcessLevel.GetDocSource: TDocSource;
begin
  case DocOwnerType of
    dotNone: Result:= dsNone;
    dotProduct: Result:= dsProduct;
  else
    Result:= dsSelf;
  end;  { case }
end;

function TProcessLevel.GetKeyFieldName: string;
begin
  Result:= IfThen(KeyFieldOverride <> '', KeyFieldOverride, EntitySingularName + CodeFieldSuffix);
end;

function TProcessLevel.GetShortNameFieldName: string;
begin
  Result:= IfThen(ShortNameFieldNameOverride <> '', ShortNameFieldNameOverride, EntitySingularName + ShortNameFieldSuffix);
end;

function TProcessLevel.GetSkipDataTableJoin: Boolean;
begin
  Result:= (DataTableName = NotATable);
end;

function TProcessLevel.GetName: string;
begin
  Result:= IfThen(FName = '', FEntityPluralName, FName);
end;

function TProcessLevel.GetNameFieldName: string;
begin
  Result:= EntitySingularName + NameFieldSuffix;
end;

constructor TProcessLevel.Create;
begin
  inherited Create;
end;

constructor TProcessLevel.Create(AProcessLevel: TProcessLevel; AOwner: TProcessOwner);
begin
  Create;

  FOwner:= AOwner;
  FName:= AProcessLevel.Name;
  FEntityPluralName:= AProcessLevel.EntityPluralName;
  FDataTableOverride:= AProcessLevel.DataTableOverride;
  FEntitySingularName:= AProcessLevel.EntitySingularName;
  FKeyFieldOverride:= AProcessLevel.KeyFieldOverride;
  FShortNameFieldNameOverride:= AProcessLevel.ShortNameFieldNameOverride;
  FLogicalParent:= AProcessLevel.LogicalParent;
  FVisualParent:= AProcessLevel.VisualParent;
  FLogicalChildNo:= AProcessLevel.LogicalChildNo;
  FIsDisconnected:= AProcessLevel.IsDisconnected;
  FVisible:= AProcessLevel.Visible;
  FCanHaveDateIntervalFields:= AProcessLevel.CanHaveDateIntervalFields;
  FCanHaveRegimeFields:= AProcessLevel.CanHaveRegimeFields;
  FHasLearningStatus:= AProcessLevel.HasLearningStatus;
  FQuickAddEnabled:= AProcessLevel.QuickAddEnabled;
  FImageIndex:= AProcessLevel.ImageIndex;
  FDocOwnerType:= AProcessLevel.DocOwnerType;
  FSupportsRings:= AProcessLevel.SupportsRings;
  FCanRollup:= AProcessLevel.CanRollup;
  FRelevantRollupLevel:= AProcessLevel.RelevantRollupLevel;
end;

procedure TProcessLevel.ReferenceOwnerLevels;
begin
  if Assigned(Owner) then
    begin
      if Assigned(FVisualParent) then
        FVisualParent:= Owner.FindLevel(FVisualParent.Name);

      if Assigned(FLogicalParent) then
        FLogicalParent:= Owner.FindLevel(FLogicalParent.Name);

      if Assigned(FRelevantRollupLevel) then
        FRelevantRollupLevel:= Owner.FindLevel(FRelevantRollupLevel.Name);
    end;  { if }
end;

{ TProcessOwner }

constructor TProcessOwner.Create;
begin
  inherited Create;
end;

constructor TProcessOwner.Create(AProcessOwner: TProcessOwner);
var
  Level: TProcessLevel;
begin
  Create;

  FName:= AProcessOwner.Name;
  FShowOwnerAsRoot:= AProcessOwner.ShowOwnerAsRoot;
  FOwnerAsRootImageIndex:= AProcessOwner.OwnerAsRootImageIndex;
  FTablePrefix:= AProcessOwner.TablePrefix;
  FKeyFieldName:= AProcessOwner.KeyFieldName;
  FQuickAddOwner:= AProcessOwner.QuickAddOwner;
  FQuickAddKeyFieldName:= AProcessOwner.QuickAddKeyFieldName;
  FHasRegimeFields:= AProcessOwner.HasRegimeFields;
  FHasDateIntervalFields:= AProcessOwner.HasDateIntervalFields;
  FDateIntervalFieldsPrefix:= AProcessOwner.DateIntervalFieldsPrefix;
  FLearningDateIntervalFieldsPrefix:= AprocessOwner.LearningDateIntervalFieldsPrefix;
  FHasDateIntervalValidator:= AProcessOwner.HasDateIntervalValidator;
  FHasDateIntervalIntersectionFilter:= AProcessOwner.HasDateIntervalIntersectionFilter;
  FHasCurrentDateFilter:= AProcessOwner.HasCurrentDateFilter;
  FHasActionStatusChanges:= AProcessOwner.HasActionStatusChanges;
  FCanOverrideDateInterval:= AProcessOwner.CanOverrideDateInterval;
  FIsInstance:= AProcessOwner.IsInstance;
  FHasPrcOrgDistributionStatus:= AProcessOwner.HasPrcOrgDistributionStatus;
  FRollupDisplayColumnFieldName:= AProcessOwner.RollupDisplayColumnFieldName;

  if (AProcessOwner = AProcessOwner.RingFieldsOwner) then
    FRingFieldsOwner:= Self
  else
    FRingFieldsOwner:= AProcessOwner.RingFieldsOwner;

  for Level in AProcessOwner.LevelsSet do
    AddLevel(CreateProcessLevel(Level));

  for Level in LevelsSet do
    Level.ReferenceOwnerLevels;

  if Assigned(AProcessOwner.RollupLevel) then
    FRollupLevel:= FindLevel(AProcessOwner.RollupLevel.Name);

  if Assigned(AProcessOwner.RelevantRollupLevel) then
    FRelevantRollupLevel:= FindLevel(AProcessOwner.RelevantRollupLevel.Name);

  if Assigned(AProcessOwner.RootLevel) then
    FRootLevel:= FindLevel(AProcessOwner.RootLevel.Name);
end;

function TProcessOwner.CreateProcessLevel(AProcessLevel: TProcessLevel): TProcessLevel;
begin
  Result:= AProcessLevel;
end;

destructor TProcessOwner.Destroy;
var
  Level: TProcessLevel;
begin
  for Level in FLevelsSet do
    FreeProcessLevel(Level);

  inherited;
end;

procedure TProcessOwner.FreeProcessLevel(AProcessLevel: TProcessLevel);
begin
  // do nothing
end;

procedure TProcessOwner.AddLevel(AValue: TProcessLevel);
begin
  SetLength(FLevelsSet, Length(FLevelsSet) + 1);
  FLevelsSet[Length(FLevelsSet) - 1]:= AValue;
end;

function TProcessOwner.GetBeginDateFieldName: string;
begin
  Result:= IfThen(DateIntervalFieldsPrefix <> '', DateIntervalFieldsPrefix + '_') + 'BEGIN_DATE';
end;

function TProcessOwner.GetEndDateFieldName: string;
begin
  Result:= IfThen(DateIntervalFieldsPrefix <> '', DateIntervalFieldsPrefix + '_') + 'END_DATE';
end;

function TProcessOwner.GetLearningBeginDateFieldName: string;
begin
  Result:= IfThen(FLearningDateIntervalFieldsPrefix <> '', FLearningDateIntervalFieldsPrefix + '_') + 'BEGIN_DATE';
end;

function TProcessOwner.GetLearningEndDateFieldName: string;
begin
  Result:= IfThen(FLearningDateIntervalFieldsPrefix <> '', FLearningDateIntervalFieldsPrefix + '_') + 'END_DATE';
end;

function TProcessOwner.FindLevel(const ALevelName: string): TProcessLevel;
var
  Level: TProcessLevel;
begin
  Result:= nil;

  for Level in FLevelsSet do
    if (Level.Name = ALevelName) then
      begin
        Result:= Level;
        Break;
      end;  { if, for }
end;

function TProcessOwner.LevelByName(const ALevelName: string): TProcessLevel;
begin
  Result:= FindLevel(ALevelName);
  if not Assigned(Result) then
    raise Exception.CreateFmt('Level %s not found', [ALevelName]);
end;

function TProcessOwner.LevelChildren(ALevel: TProcessLevel): TProcessLevelArray;
var
  Level: TProcessLevel;
begin
  SetLength(Result, 0);
  for Level in FLevelsSet do
    if (Level.LogicalParent = ALevel) then
      begin
        SetLength(Result, Length(Result) + 1);
        Result[Length(Result) - 1]:= Level;
      end;  { if, for }
end;

function TProcessOwner.SecondaryChildLevel(ALevel: TProcessLevel): TProcessLevel;
var
  Level: TProcessLevel;
  FoundLevelsCount: Integer;
begin
  FoundLevelsCount:= 0;
  Result:= nil;
  for Level in LevelChildren(ALevel) do
    if not Level.QuickAddEnabled then
      begin
        Result:= Level;
        Inc(FoundLevelsCount);
      end;  { if, for }

  Assert(FoundLevelsCount <= 1);
end;

{ ProcessOwners }

class function ProcessOwners.ProcessOwnerByName(const AValue: string): TProcessOwner;
begin
  Result:= nil;

  if (FBaseOp.Name = AValue) then
    Result:= FBaseOp;

  if (FBaseOpQuickAdd.Name = AValue) then
    Result:= FBaseOpQuickAdd;

  if (FKnowl.Name = AValue) then
    Result:= FKnowl;

  if (FKnowlQuickAdd.Name = AValue) then
    Result:= FKnowlQuickAdd;

  if (FFunc.Name = AValue) then
    Result:= FFunc;

  if (FFuncQuickAdd.Name = AValue) then
    Result:= FFuncQuickAdd;

  if (FFuncForProjectQuickAdd.Name = AValue) then
    Result:= FFuncForProjectQuickAdd;

  if (FProject.Name = AValue) then
    Result:= FProject;

  if (FDefiniteDept.Name = AValue) then
    Result:= FDefiniteDept;

  if (FDeptQuickAdd.Name = AValue) then
    Result:= FDeptQuickAdd;

  if (FGroupDept.Name = AValue) then
    Result:= FGroupDept;

  if (FRootDept.Name = AValue) then
    Result:= FRootDept;

  if (FOccupation.Name = AValue) then
    Result:= FOccupation;

  if (FOccupationQuickAdd.Name = AValue) then
    Result:= FOccupationQuickAdd;

  if (FOccupationEmployee.Name = AValue) then
    Result:= FOccupationEmployee;

  Assert(Assigned(Result));
end;

initialization
  with ProcessLevels do
    begin
      FFunc:= TProcessLevel.Create;
      FFunc.FEntityPluralName:= 'PRC_FUNCS';
      FFunc.FEntitySingularName:= 'PRC_FUNC';
      FFunc.FVisible:= True;
      FFunc.FQuickAddEnabled:= True;
      FFunc.FImageIndex:= 171;
      FFunc.FDocOwnerType:= dotProcessFunction;

      FKnowl:= TProcessLevel.Create;
      FKnowl.FEntityPluralName:= 'PRC_KNOWLS';
      FKnowl.FEntitySingularName:= 'PRC_KNOWL';
      FKnowl.FLogicalParent:= FFunc;
      FKnowl.FVisualParent:= FFunc;
      FKnowl.FVisible:= True;
      FKnowl.FQuickAddEnabled:= True;
      FKnowl.FImageIndex:= 167;
      FKnowl.FDocOwnerType:= dotProcessKnowl;
      FKnowl.FSupportsRings:= True;

      FAllActions:= TProcessLevel.Create;
      FAllActions.FName:= 'ALL_PRC_ACTIONS';
      FAllActions.FEntityPluralName:= 'PRC_ACTIONS';
      FAllActions.FEntitySingularName:= 'PRC_ACTION';
      FAllActions.FShortNameFieldNameOverride:= 'PRC_ACTION_ABBREV';
      FAllActions.FIsDisconnected:= True;
      FAllActions.FVisible:= False;

      FAllBaseActions:= TProcessLevel.Create;
      FAllBaseActions.FName:= 'ALL_PRC_BASE_ACTIONS';
      FAllBaseActions.FEntityPluralName:= 'PRC_BASE_ACTIONS';
      FAllBaseActions.FEntitySingularName:= 'PRC_ACTION';
      FAllBaseActions.FDataTableOverride:= 'PRC_ACTIONS';
      FAllBaseActions.FShortNameFieldNameOverride:= 'PRC_ACTION_ABBREV';
      FAllBaseActions.FIsDisconnected:= True;
      FAllBaseActions.FVisible:= False;

      FAllConcreteActions:= TProcessLevel.Create;
      FAllConcreteActions.FName:= 'ALL_PRC_CONCRETE_ACTIONS';
      FAllConcreteActions.FEntityPluralName:= 'PRC_CONCRETE_ACTIONS';
      FAllConcreteActions.FEntitySingularName:= 'PRC_ACTION';
      FAllConcreteActions.FDataTableOverride:= 'PRC_ACTIONS';
      FAllConcreteActions.FShortNameFieldNameOverride:= 'PRC_ACTION_ABBREV';
      FAllConcreteActions.FIsDisconnected:= True;
      FAllConcreteActions.FVisible:= False;

      FAllProjectActions:= TProcessLevel.Create;
      FAllProjectActions.FName:= 'ALL_PRC_PROJECT_ACTIONS';
      FAllProjectActions.FEntityPluralName:= 'PRC_PROJECT_ACTIONS';
      FAllProjectActions.FEntitySingularName:= 'PRC_ACTION';
      FAllProjectActions.FDataTableOverride:= 'PRC_ACTIONS';
      FAllProjectActions.FShortNameFieldNameOverride:= 'PRC_ACTION_ABBREV';
      FAllProjectActions.FIsDisconnected:= True;
      FAllProjectActions.FVisible:= False;

      FBaseOp:= TProcessLevel.Create;
      FBaseOp.FEntityPluralName:= 'PRC_BASE_OPS';
      FBaseOp.FEntitySingularName:= 'PRC_BASE_OP';
      FBaseOp.FLogicalParent:= FKnowl;
      FBaseOp.FVisualParent:= FKnowl;
      FBaseOp.FVisible:= True;
      FBaseOp.FCanHaveRegimeFields:= True;
      FBaseOp.FQuickAddEnabled:= True;
      FBaseOp.FImageIndex:= 175;
      FBaseOp.FDocOwnerType:= dotProduct;
      FBaseOp.FSupportsRings:= True;

      FBaseAction:= TProcessLevel.Create;
      FBaseAction.FEntityPluralName:= 'PRC_BASE_ACTIONS';
      FBaseAction.FDataTableOverride:= 'PRC_ACTIONS';
      FBaseAction.FEntitySingularName:= 'PRC_ACTION';
      FBaseAction.FShortNameFieldNameOverride:= 'PRC_ACTION_ABBREV';
      FBaseAction.FLogicalParent:= FBaseOp;
      FBaseAction.FVisualParent:= FBaseOp;
      FBaseAction.FVisible:= True;
      FBaseAction.FCanHaveDateIntervalFields:= True;
      FBaseAction.FQuickAddEnabled:= True;
      FBaseAction.FImageIndex:= 183;
      FBaseAction.FDocOwnerType:= dotProcessAction;
      FBaseAction.FCanRollup:= True;
      FBaseAction.FRelevantRollupLevel:= ProcessLevels.AllBaseActions;

      FBaseActionStatusChange:= TProcessLevel.Create;
      FBaseActionStatusChange.FDataTableOverride:= NotATable;
      FBaseActionStatusChange.FEntityPluralName:= 'PRC_BASE_ACT_STAT_CHGS';
      FBaseActionStatusChange.FEntitySingularName:= 'PRC_BASE_ACT_STAT_CHG';
      FBaseActionStatusChange.FKeyFieldOverride:= 'STATUS_DATE';
      FBaseActionStatusChange.FLogicalParent:= FBaseAction;
      FBaseActionStatusChange.FVisualParent:= FBaseAction;
      FBaseActionStatusChange.FHasLearningStatus:= True;
      FBaseActionStatusChange.FDocOwnerType:= dotNone;

      FBaseActionQuickAdd:= TProcessLevel.Create(FBaseAction, nil);
      FBaseActionQuickAdd.FLogicalParent:= nil;
      FBaseActionQuickAdd.FVisualParent:= nil;
      FBaseActionQuickAdd.FIsDisconnected:= True;

      FConcreteOp:= TProcessLevel.Create;
      FConcreteOp.FEntityPluralName:= 'PRC_CONCRETE_OPS';
      FConcreteOp.FEntitySingularName:= 'PRC_CONCRETE_OP';
      FConcreteOp.FLogicalParent:= FBaseOp;
      FConcreteOp.FVisualParent:= FKnowl;
      FConcreteOp.FLogicalChildNo:= 1;
      FConcreteOp.FVisible:= True;
      FConcreteOp.FCanHaveRegimeFields:= True;
      FConcreteOp.FImageIndex:= 179;
      FConcreteOp.FDocOwnerType:= dotProduct;

      FConcreteAction:= TProcessLevel.Create;
      FConcreteAction.FEntityPluralName:= 'PRC_CONCRETE_ACTIONS';
      FConcreteAction.FDataTableOverride:= 'PRC_ACTIONS';
      FConcreteAction.FEntitySingularName:= 'PRC_ACTION';
      FConcreteAction.FShortNameFieldNameOverride:= 'PRC_ACTION_ABBREV';
      FConcreteAction.FLogicalParent:= FConcreteOp;
      FConcreteAction.FVisualParent:= FConcreteOp;
      FConcreteAction.FVisible:= True;
      FConcreteAction.FCanHaveDateIntervalFields:= True;
      FConcreteAction.FQuickAddEnabled:= True;
      FConcreteAction.FImageIndex:= 183;
      FConcreteAction.FDocOwnerType:= dotProcessAction;
      FConcreteAction.FCanRollup:= True;
      FConcreteAction.FRelevantRollupLevel:= ProcessLevels.AllConcreteActions;

      FConcreteActionQuickAdd:= TProcessLevel.Create(FConcreteAction, nil);
      FConcreteActionQuickAdd.FLogicalParent:= nil;
      FConcreteActionQuickAdd.FVisualParent:= nil;
      FConcreteActionQuickAdd.FIsDisconnected:= True;

      FConcreteActionStatusChange:= TProcessLevel.Create;
      FConcreteActionStatusChange.FDataTableOverride:= NotATable;
      FConcreteActionStatusChange.FEntityPluralName:= 'PRC_CONCRETE_ACT_STAT_CHGS';
      FConcreteActionStatusChange.FEntitySingularName:= 'PRC_CONCRETE_ACT_STAT_CHG';
      FConcreteActionStatusChange.FKeyFieldOverride:= 'STATUS_DATE';
      FConcreteActionStatusChange.FLogicalParent:= FConcreteAction;
      FConcreteActionStatusChange.FVisualParent:= FConcreteAction;
      FConcreteActionStatusChange.FHasLearningStatus:= True;
      FConcreteActionStatusChange.FDocOwnerType:= dotNone;
    end;  { with }

  with ProcessOwners do
    begin
      FBaseOp:= TProcessOwner.Create;
      FBaseOp.FName:= 'BOP';
      FBaseOp.FTablePrefix:= 'BOP';
      FBaseOp.FKeyFieldName:= 'PRC_BASE_OP_CODE';
      FBaseOp.FIsInstance:= True;

      FBaseOpQuickAdd:= TProcessOwner.Create(FBaseOp);
      FBaseOpQuickAdd.FName:= 'BOP_QA';
      FBaseOpQuickAdd.AddLevel(ProcessLevels.FBaseOp);
      FBaseOpQuickAdd.FIsInstance:= False;

      FKnowl:= TProcessOwner.Create;
      FKnowl.FName:= 'KNW';
      FKnowl.FLevelsSet:= ProcessLevelArrayOf([
        ProcessLevels.BaseOp]);
      FKnowl.FRootLevel:= ProcessLevels.BaseOp;
      FKnowl.FTablePrefix:= 'KNW';
      FKnowl.FKeyFieldName:= 'PRC_KNOWL_CODE';
      FKnowl.FQuickAddOwner:= FBaseOpQuickAdd;
      FKnowl.FIsInstance:= True;

      FKnowlQuickAdd:= TProcessOwner.Create(FKnowl);
      FKnowlQuickAdd.FName:= 'KNW_QA';
      FKnowlQuickAdd.FShowOwnerAsRoot:= True;
      FKnowlQuickAdd.AddLevel(ProcessLevels.FKnowl);
      FKnowlQuickAdd.AddLevel(ProcessLevels.FBaseActionQuickAdd);
      FKnowlQuickAdd.FIsInstance:= False;

      FFunc:= TProcessOwner.Create;
      FFunc.FName:= 'FN';
      FFunc.FShowOwnerAsRoot:= True;
      FFunc.FOwnerAsRootImageIndex:= 171;
      FFunc.FLevelsSet:= ProcessLevelArrayOf([
        ProcessLevels.Knowl,
        ProcessLevels.BaseOp,
        ProcessLevels.BaseAction,
        ProcessLevels.AllActions,
        ProcessLevels.AllBaseActions]);
      FFunc.FRootLevel:= ProcessLevels.Knowl;
      FFunc.FTablePrefix:= 'FN';
      FFunc.FKeyFieldName:= 'PRC_FUNC_CODE';
      FFunc.FQuickAddOwner:= FKnowlQuickAdd;
      FFunc.FRingFieldsOwner:= FFunc;
      FFunc.FIsInstance:= True;
      FFunc.FRollupLevel:= ProcessLevels.AllActions;
      FFunc.FRollupDisplayColumnFieldName:= 'PRC_OBJECT_IMAGE_INDEX';

      FFuncQuickAdd:= TProcessOwner.Create(FFunc);
      FFuncQuickAdd.FName:= 'FN_QA';
      FFuncQuickAdd.FShowOwnerAsRoot:= False;
      FFuncQuickAdd.AddLevel(ProcessLevels.FFunc);
      FFuncQuickAdd.AddLevel(ProcessLevels.FConcreteActionQuickAdd);
      FFuncQuickAdd.FIsInstance:= False;

      FFuncForProjectQuickAdd:= TProcessOwner.Create(FFuncQuickAdd);
      FFuncForProjectQuickAdd.FName:= 'FN_OTP_QA';
      FFuncForProjectQuickAdd.AddLevel(ProcessLevels.AllProjectActions);
      FFuncForProjectQuickAdd.FRelevantRollupLevel:= ProcessLevels.AllProjectActions;

      FProject:= TProcessOwner.Create;
      FProject.FName:= 'OTP';
      FProject.FLevelsSet:= ProcessLevelArrayOf([
        ProcessLevels.Func,
        ProcessLevels.Knowl,
        ProcessLevels.BaseOp,
        ProcessLevels.BaseAction,
        ProcessLevels.ConcreteOp,
        ProcessLevels.ConcreteAction,
        ProcessLevels.AllActions,
        ProcessLevels.AllBaseActions,
        ProcessLevels.AllConcreteActions,
        ProcessLevels.AllProjectActions]);
      FProject.FRootLevel:= ProcessLevels.Func;
      FProject.FTablePrefix:= 'OTP';
      FProject.FKeyFieldName:= 'ORG_TASK_PROPOSAL_CODE';
      FProject.FQuickAddOwner:= FFuncForProjectQuickAdd;
      FProject.FRingFieldsOwner:= FFuncForProjectQuickAdd;
      FProject.FIsInstance:= True;
      FProject.FRollupLevel:= ProcessLevels.AllActions;
      FProject.FRelevantRollupLevel:= ProcessLevels.AllProjectActions;
      FProject.FRollupDisplayColumnFieldName:= 'PRC_OBJECT_IMAGE_INDEX';

      FGroupDept:= TProcessOwner.Create;
      FGroupDept.FName:= 'GROUP_DEPT';
      FGroupDept.FLevelsSet:= ProcessLevelArrayOf([
        ProcessLevels.Func,
        ProcessLevels.Knowl,
        ProcessLevels.BaseOp,
        ProcessLevels.BaseAction,
        ProcessLevels.AllActions,
        ProcessLevels.AllBaseActions,
        ProcessLevels.AllConcreteActions]);
      FGroupDept.FRootLevel:= ProcessLevels.Func;
      FGroupDept.FTablePrefix:= 'DEPT';
      FGroupDept.FKeyFieldName:= 'DEPT_CODE';
      FGroupDept.FRingFieldsOwner:= FFuncQuickAdd;
      FGroupDept.FHasDateIntervalFields:= True;
      FGroupDept.FHasDateIntervalValidator:= True;
      FGroupDept.FHasCurrentDateFilter:= True;
      FGroupDept.FCanOverrideDateInterval:= True;
      FGroupDept.FIsInstance:= True;
      FGroupDept.FHasPrcOrgDistributionStatus:= True;
      FGroupDept.FRollupLevel:= ProcessLevels.AllActions;
      FGroupDept.FRollupDisplayColumnFieldName:= 'PRC_ORG_DISTRIB_STATUS_CODE';

      FDeptQuickAdd:= TProcessOwner.Create(FGroupDept);
      FDeptQuickAdd.FName:= 'DEPT_QA';
      FDeptQuickAdd.FTablePrefix:= 'DPT';
      FDeptQuickAdd.FHasDateIntervalFields:= False;
      FDeptQuickAdd.FLevelsSet:= ProcessLevelArrayOf([
        ProcessLevels.Func,
        ProcessLevels.Knowl,
        ProcessLevels.BaseOp,
        ProcessLevels.BaseAction,
        Processlevels.ConcreteActionQuickAdd]);
      FDeptQuickAdd.FIsInstance:= True;

      FGroupDept.FQuickAddOwner:= FDeptQuickAdd;;
      FGroupDept.FQuickAddKeyFieldName:= 'PARENT_CODE';

      FDefiniteDept:= TProcessOwner.Create(FGroupDept);
      FDefiniteDept.FName:= 'DEFINITE_DEPT';
      FDefiniteDept.AddLevel(ProcessLevels.ConcreteOp);
      FDefiniteDept.AddLevel(ProcessLevels.ConcreteAction);

      FRootDept:= TProcessOwner.Create(FGroupDept);
      FRootDept.FName:= 'ROOT_DEPT';
      FRootDept.FHasDateIntervalFields:= False;
      FRootDept.FHasDateIntervalValidator:= False;
      FRootDept.FHasCurrentDateFilter:= False;
      FRootDept.FCanOverrideDateInterval:= False;
      FRootDept.FHasPrcOrgDistributionStatus:= False;
      FRootDept.FRollupDisplayColumnFieldName:= 'PRC_OBJECT_IMAGE_INDEX';

      FOccupationQuickAdd:= TProcessOwner.Create;
      FOccupationQuickAdd.FName:= 'OCC_QA';
      FOccupationQuickAdd.FLevelsSet:= ProcessLevelArrayOf([
        ProcessLevels.Func,
        ProcessLevels.Knowl,
        ProcessLevels.BaseOp,
        ProcessLevels.BaseAction,
        ProcessLevels.ConcreteOp,
        Processlevels.ConcreteAction]);
      FOccupationQuickAdd.FTablePrefix:= 'OWD_AGGR';
      FOccupationQuickAdd.FKeyFieldName:= 'OCCUPATION_CODE';
      FOccupationQuickAdd.FHasDateIntervalFields:= True;
      FOccupationQuickAdd.FRingFieldsOwner:= FFuncQuickAdd;
      FOccupationQuickAdd.FIsInstance:= True;

      FOccupation:= TProcessOwner.Create;
      FOccupation.FName:= 'OCC';
      FOccupation.FLevelsSet:= ProcessLevelArrayOf([
        ProcessLevels.Func,
        ProcessLevels.Knowl,
        ProcessLevels.BaseOp,
        ProcessLevels.BaseAction,
        ProcessLevels.ConcreteOp,
        Processlevels.ConcreteAction,
        ProcessLevels.AllActions,
        ProcessLevels.AllBaseActions,
        ProcessLevels.AllConcreteActions]);
      FOccupation.FRootLevel:= ProcessLevels.Func;
      FOccupation.FTablePrefix:= 'OCC';
      FOccupation.FKeyFieldName:= 'OCCUPATION_CODE';
      FOccupation.FQuickAddOwner:= FOccupationQuickAdd;
      FOccupation.FQuickAddKeyFieldName:= 'OCCUPATION_CODE';
      FOccupation.FRingFieldsOwner:= FFuncQuickAdd;
      FOccupation.FHasDateIntervalFields:= True;
      FOccupation.FDateIntervalFieldsPrefix:= 'OCCUPATION';
      FOccupation.FHasDateIntervalValidator:= True;
      FOccupation.FHasCurrentDateFilter:= True;
      FOccupation.FCanOverrideDateInterval:= True;
      FOccupation.FIsInstance:= True;
      FOccupation.FHasPrcOrgDistributionStatus:= True;
      FOccupation.FRollupLevel:= ProcessLevels.AllActions;
      FOccupation.FRollupDisplayColumnFieldName:= 'PRC_ORG_DISTRIB_STATUS_CODE';

      FOccupationEmployee:= TProcessOwner.Create;
      FOccupationEmployee.FName:= 'OE';
      FOccupationEmployee.FLevelsSet:= ProcessLevelArrayOf([
        ProcessLevels.Func,
        ProcessLevels.Knowl,
        ProcessLevels.BaseOp,
        ProcessLevels.BaseAction,
        ProcessLevels.BaseActionStatusChange,
        ProcessLevels.ConcreteOp,
        Processlevels.ConcreteAction,
        Processlevels.ConcreteActionStatusChange,
        ProcessLevels.AllActions,
        ProcessLevels.AllBaseActions,
        ProcessLevels.AllConcreteActions]);
      FOccupationEmployee.FRootLevel:= ProcessLevels.Func;
      FOccupationEmployee.FTablePrefix:= 'OE';
      FOccupationEmployee.FKeyFieldName:= 'OCCUPATION_EMPLOYEE_CODE';
      FOccupationEmployee.FQuickAddOwner:= FFuncQuickAdd;
      FOccupationEmployee.FRingFieldsOwner:= FFuncQuickAdd;
      FOccupationEmployee.FLearningDateIntervalFieldsPrefix:= 'ASSIGNMENT';
      FOccupationEmployee.FHasDateIntervalFields:= True;
      FOccupationEmployee.FHasDateIntervalIntersectionFilter:= True;
      FOccupationEmployee.FHasCurrentDateFilter:= True;
      FOccupationEmployee.FHasActionStatusChanges:= True;
      FOccupationEmployee.FIsInstance:= True;
      FOccupationEmployee.FHasPrcOrgDistributionStatus:= True;
      FOccupationEmployee.FRollupLevel:= ProcessLevels.AllActions;
      FOccupationEmployee.FRollupDisplayColumnFieldName:= 'PRC_ORG_DISTRIB_STATUS_CODE';
    end;  { with }

finalization
  with ProcessOwners do
    begin
      FreeAndNil(FOccupationEmployee);
      FreeAndNil(FOccupation);
      FreeAndNil(FOccupationQuickAdd);
      FreeAndNil(FRootDept);
      FreeAndNil(FDefiniteDept);
      FreeAndNil(FGroupDept);
      FreeAndNil(FDeptQuickAdd);
      FreeAndNil(FProject);
      FreeAndNil(FFuncForProjectQuickAdd);
      FreeAndNil(FFuncQuickAdd);
      FreeAndNil(FFunc);
      FreeAndNil(FKnowlQuickAdd);
      FreeAndNil(FKnowl);
      FreeAndNil(FBaseOpQuickAdd);
      FreeAndNil(FBaseOp);
    end;  { with }

  with ProcessLevels do
    begin
      FreeAndNil(FConcreteActionStatusChange);
      FreeAndNil(FConcreteActionQuickAdd);
      FreeAndNil(FConcreteAction);
      FreeAndNil(FConcreteOp);
      FreeAndNil(FBaseActionStatusChange);
      FreeAndNil(FBaseActionQuickAdd);
      FreeAndNil(FBaseAction);
      FreeAndNil(FAllProjectActions);
      FreeAndNil(FAllConcreteActions);
      FreeAndNil(FAllBaseActions);
      FreeAndNil(FAllActions);
      FreeAndNil(FBaseOp);
      FreeAndNil(FKnowl);
      FreeAndNil(FFunc);
    end;  { with }
end.
