unit uDocUtils;

interface

uses
  DB;

type
  TDocOwnerType = (
    dotNone,
    dotDocItemTemplate,
    dotProduct,
    dotDept,
    dotEmployee,
    dotProfession,
    dotOccupation,
    dotTeam,
    dotCompany,
    dotSpecStage,
    dotSpecOperation,
    dotRealStage,
    dotRealOperation,
    dotBaseGroup,
    dotDelivery,
    dotSaleRequestGroup,
    dotSale,
    dotSaleShipment,
    dotBudgetOrder,
    dotBudgetOrderItem,
    dotMenuDocItem,
    dotDeficitCoverDecision,
    dotOperationMovement,
    dotStoreDeal,
    dotProductStore,
    dotEngineeringOrder,
    dotEmpAvailModifier,
    dotEmployeeDisciplineEvent,
    dotParRelPeriod,
    dotOccupationEmployee,
    dotProductPeriod,
    dotParRelProduct,
    dotParRelProductPeriod,
    dotOrgTaskProposal,
    dotDiscEventType,
    dotExceptEventTask,
    dotExceptEvent,
    dotDeptPeriod,
    dotFinanceClass,
    dotFinOrder,
    dotProcessFunction,
    dotProcessKnowl,
    dotProcessBaseOperation,
    dotProcessConcreteOperation,
    dotProcessAction,
    dotOccWorkDeptPriority,
    dotNom,
    dotNomItem,
    dotProductParam,
    dotInvoice,
    dotDocProfile,
    dotExceptEventType,
    dotBOIOrder);

type
  TDocItemTemplateType = (
    dittNone,
    dittProduct,
    dittDept,
    dittEmployee,
    dittProfession,
    dittOccupation,
    dittTeam,
    dittCompany,
    dittStage,
    dittOperation,
    dittBaseGroup,
    dittDelivery,
    dittSaleRequestGroup,
    dittSale,
    dittSaleShipment,
    dittBudgetOrder,
    dittBudgetOrderItem,
    dittDeficitCoverDecision,
    dittOperationMovement,
    dittStoreDeal,
    dittProductStore,
    dittEngineeringOrder,
    dittEmpAvailModifier,
    dittEmployeeDisciplineEvent,
    dittParRelPeriod,
    dittOccupationEmployee,
    dittProductPeriod,
    dittParRelProduct,
    dittParRelProductPeriod,
    dittOrgTaskProposal,
    dittDiscEventType,
    dittExceptEventTask,
    dittExceptEvent,
    dittDeptPeriod,
    dittFinanceClass,
    dittFinOrder,
    dittMenuDocItem,
    dittProcessFunction,
    dittProcessKnowl,
    dittProcessBaseOperation,
    dittProcessConcreteOperation,
    dittProcessAction,
    dittOccWorkDeptPriority,
    dittNom,
    dittNomItem,
    dittProductParam,
    dittInvoice,
    dittDocProfile,
    dittExceptEventType,
    dittBOIOrder);

type
  TDocEmptinessRequirement = (derNone, derUnknown, derEmpty, derNotEmpty);

type
  TDocLoadMethod = (dlmSingle, dlmSpec, dlmDocs);

type
  TDocItemAccessLevel = (dialNone, dialList, dialView, dialEdit);

type
  TDocItemState = (disNone, disInitial, disDeveloped, disAuthorized, disApproved);
  TDocItemStates = set of TDocItemState;

function DocEmptinessRequirementToInt(AValue: TDocEmptinessRequirement): Integer;
function IntToDocEmptinessRequirement(AValue: Integer): TDocEmptinessRequirement;

function DocOwnerTypeToInt(AValue: TDocOwnerType): Integer;
function IntToDocOwnerType(AValue: Integer): TDocOwnerType;

function DocItemTemplateTypeToInt(AValue: TDocItemTemplateType): Integer;
function IntToDocItemTemplateType(AValue: Integer): TDocItemTemplateType;

function GetDocOwnerTypeTemplateType(AValue: TDocOwnerType): TDocItemTemplateType;
function GetDocItemTemplateTypeDocOwnerType(AValue: TDocItemTemplateType): TDocOwnerType;

function GetDocOwnerCanMirrorStoredFiles(AValue: TDocOwnerType): Boolean;

function DocLoadMethodToInt(AValue: TDocLoadMethod): Integer;
function IntToDocLoadMethod(AValue: Integer): TDocLoadMethod;

function DocItemAccessLevelToInt(ADocItemAccessLevel: TDocItemAccessLevel): Integer;
function IntToDocItemAccessLevel(AValue: Integer): TDocItemAccessLevel;

function DocItemStateToInt(ADocItemState: TDocItemState): Integer;
function IntToDocItemState(AValue: Integer): TDocItemState;

function DocItemState(ADataSet: TDataSet): TDocItemState;

implementation

uses
  SysUtils;

const
  DocOwnerTypeTemplateTypes: array [TDocOwnerType] of TDocItemTemplateType = (
    dittNone,                      // dotNone
    dittNone,                      // dotDocItemTemplate
    dittProduct,                   // dotProduct
    dittDept,                      // dotDept
    dittEmployee,                  // dotEmployee
    dittProfession,                // dotProfession
    dittOccupation,                // dotOccupation
    dittTeam,                      // dotTeam
    dittCompany,                   // dotCompany
    dittStage,                     // dotSpecStage
    dittOperation,                 // dotSpecOperation
    dittStage,                     // dotRealStage
    dittOperation,                 // dotRealOperation
    dittBaseGroup,                 // dotBaseGroup
    dittDelivery,                  // dotDelivery
    dittSaleRequestGroup,          // dotSaleRequestGroup
    dittSale,                      // dotSale
    dittSaleShipment,              // dotSaleShipment
    dittBudgetOrder,               // dotBudgetOrder
    dittBudgetOrderItem,           // dotBudgetOrderItem
    dittMenuDocItem,               // dotMenuDocItem
    dittDeficitCoverDecision,      // dotDeficitCoverDecision,
    dittOperationMovement,         // dotOperationMovement
    dittStoreDeal,                 // dotStoreDeal
    dittProductStore,              // dotProductStore
    dittEngineeringOrder,          // dotEngineeringOrder
    dittEmpAvailModifier,          // dotEmpAvailModifier
    dittEmployeeDisciplineEvent,   // dotEmployeeDisciplineEvent
    dittParRelPeriod,              // dotParRelPeriod
    dittOccupationEmployee,        // dotOccupationEmployee
    dittProductPeriod,             // dotProductPeriod
    dittParRelProduct,             // dotParRelProduct
    dittParRelProductPeriod,       // dotParRelProductPeriod
    dittOrgTaskProposal,           // dotOrgTaskProposal
    dittDiscEventType,             // dotDiscEventType
    dittExceptEventTask,           // dotExceptEventTask
    dittExceptEvent,               // dotExceptEvent
    dittDeptPeriod,                // dotDeptPeriod
    dittFinanceClass,              // dotFinanceClass
    dittFinOrder,                  // dotFinOrder
    dittProcessFunction,           // dotProcessFunction
    dittProcessKnowl,              // dotProcessKnowl
    dittProcessBaseOperation,      // dotProcessBaseOperation
    dittProcessConcreteOperation,  // dotProcessConcreteOperation
    dittProcessAction,             // dotProcessAction
    dittOccWorkDeptPriority,       // dotOccWorkDeptPriority
    dittNom,                       // dotNom
    dittNomItem,                   // dotNomItem
    dittProductParam,              // dotProductParam
    dittInvoice,                   // dotInvoice
    dittDocProfile,                // dotDocProfile
    dittExceptEventType,           // dotExceptEventType
    dittBOIOrder                   // dotBOIOrder
  );

const
  DocItemTemplateTypeCodes: array [TDocItemTemplateType] of Integer = (
    0,    // dittNone
    1050, // dittProduct
    1150, // dittDept
    1250, // dittEmployee
    1350, // dittProfession
    1450, // dittOccupation
    1550, // dittTeam
    1650, // dittCompany
    1750, // dittStage
    1850, // dittOperation
    1950, // dittBaseGroup
    2150, // dittDelivery
    2250, // dittSaleRequestGroup
    2450, // dittSale
    2550, // dittSaleShipment
    2750, // dittBudgetOrder
    2850, // dittBudgetOrderItem
    2950, // dittDeficitCoverDecision,
    3050, // dittOperationMovement
    3150, // dittStoreDeal
    3250, // dittProductStore
    3350, // dittEngineeringOrder,
    3450, // dittEmpAvailModifier
    3550, // dittEmployeeDisciplineEvent,
    3650, // dittParRelPeriod
    3750, // dittOccupationEmployee
    3850, // dittProductPeriod
    3950, // dittParRelProduct
    4050, // dittParRelProductPeriod
    4150, // dittOrgTaskProposal
    4350, // dittDiscEventType
    4550, // dittExceptEventTask
    4650, // dittExceptEvent
    4850, // dittDeptPeriod
    4950, // dittFinanceClass
    5050, // dittFinOrder
    5150, // dittMenuDocItem
    5250, // dittProcessFunction
    5350, // dittProcessKnowl
    5450, // dittProcessBaseOperation
    5550, // dittProcessConcreteOperation
    5650, // dittProcessAction
    5750, // dittOccWorkDeptPriority            ,
    5850, // dittNom
    5950, // dittNomItem
    6050, // dittProductParam
    6150, // dittInvoice
    6250, // dittDocProfile
    6350, // dittExceptEventType
    6450  // dittBOIOrder
  );

const
  DocOwnerCanMirrorStoredFiles: array [TDocOwnerType] of Boolean = (
    False, // dotNone
    False, // dotDocItemTemplate
    True,  // dotProduct
    True,  // dotDept
    True,  // dotEmployee
    True,  // dotProfession
    True,  // dotOccupation
    True,  // dotTeam
    True,  // dotCompany
    False, // dotSpecStage
    False, // dotSpecOperation
    False, // dotRealStage
    False, // dotRealOperation
    True,  // dotBaseGroup
    False, // dotDelivery
    False, // dotSaleRequestGroup
    False, // dotSale
    False, // dotSaleShipment
    False, // dotBudgetOrder
    False, // dotBudgetOrderItem
    True,  // dotMenuDocItem
    False, // dotDeficitCoverDecision,
    False, // dotOperationMovement
    False, // dotStoreDeal
    True,  // dotProductStore
    False, // dotEngineeringOrder
    False, // dotEmpAvailModifier
    False, // dotEmployeeDisciplineEvent
    True,  // dotParRelPeriod
    True,  // dotOccupationEmployee
    True,  // dotProductPeriod
    True,  // dotParRelProduct
    True,  // dotParRelProductPeriod
    True,  // dotOrgTaskProposal
    True,  // dotDiscEventType
    True,  // dotExceptEventTask
    True,  // dotExceptEvent
    True,  // dotDeptPeriod
    True,  // dotFinanceClass
    True,  // dotFinOrder
    True,  // dotProcessFunction
    True,  // dotProcessKnowl
    True,  // dotProcessBaseOperation
    True,  // dotProcessConcreteOperation
    True,  // dotProcessAction
    True,  // dotOccWorkDeptPriority
    True,  // dotNom
    True,  // dotNomItem
    True,  // dotProductParam
    True,  // dotInvoice,
    True,  // dotDocProfile
    True,  // dotExceptEventType
    True   // dotBOIOrder
  );

function DocOwnerTypeToInt(AValue: TDocOwnerType): Integer;
begin
  Result:= Integer(AValue);
end;

function IntToDocOwnerType(AValue: Integer): TDocOwnerType;
begin
  Result:= TDocOwnerType(AValue);
end;

function DocItemTemplateTypeToInt(AValue: TDocItemTemplateType): Integer;
begin
  Result:= DocItemTemplateTypeCodes[AValue];
end;

function IntToDocItemTemplateType(AValue: Integer): TDocItemTemplateType;
var
  i: TDocItemTemplateType;
begin
  for i:= Low(DocItemTemplateTypeCodes) to High(DocItemTemplateTypeCodes) do
    if (DocItemTemplateTypeCodes[i] = AValue) then
      begin
        Result:= i;
        Exit;
      end;  { if }

  raise Exception.CreateFmt('IntToDocItemTemplateType: %d is not a valid argument value', [AValue]);
end;

function GetDocOwnerTypeTemplateType(AValue: TDocOwnerType): TDocItemTemplateType;
begin
  Result:= DocOwnerTypeTemplateTypes[AValue];
end;

function GetDocItemTemplateTypeDocOwnerType(AValue: TDocItemTemplateType): TDocOwnerType;
var
  dot: TDocOwnerType;
begin
  for dot:= Low(TDocOwnerType) to High(TDocOwnerType) do
    if (DocOwnerTypeTemplateTypes[dot] = AValue) then
      Exit(dot);

  Result:= dotNone;
end;

function GetDocOwnerCanMirrorStoredFiles(AValue: TDocOwnerType): Boolean;
begin
  Result:= DocOwnerCanMirrorStoredFiles[AValue];
end;

function DocEmptinessRequirementToInt(AValue: TDocEmptinessRequirement): Integer;
const
  DocEmptinessRequirementCodes: array[TDocEmptinessRequirement] of Integer = (0, 1, 2, 3);
begin
  Result:= DocEmptinessRequirementCodes[AValue];
end;

function IntToDocEmptinessRequirement(AValue: Integer): TDocEmptinessRequirement;
const
  DocEmptinessRequirements: array[0..3] of TDocEmptinessRequirement = (
    derNone, derUnknown, derEmpty, derNotEmpty);
begin
  Assert(AValue in [Low(DocEmptinessRequirements).. High(DocEmptinessRequirements)]);
  Result:= DocEmptinessRequirements[AValue];
end;

function DocLoadMethodToInt(AValue: TDocLoadMethod): Integer;
const
  DocLoadMethodCodes: array[TDocLoadMethod] of Integer = (0, 1, 2);
begin
  Result:= DocLoadMethodCodes[AValue];
end;

function IntToDocLoadMethod(AValue: Integer): TDocLoadMethod;
const
  DocLoadMethods: array[0..2] of TDocLoadMethod = (dlmSingle, dlmSpec, dlmDocs);
begin
  Assert(AValue in [Low(DocLoadMethods)..High(DocLoadMethods)]);
  Result:= DocLoadMethods[AValue];
end;

function DocItemAccessLevelToInt(ADocItemAccessLevel: TDocItemAccessLevel): Integer;
begin
  Result:= Ord(ADocItemAccessLevel);
end;

function IntToDocItemAccessLevel(AValue: Integer): TDocItemAccessLevel;
begin
  case AValue of
    0: Result:= dialNone;
    1: Result:= dialList;
    2: Result:= dialView;
    3: Result:= dialEdit;
  else
    raise Exception.Create('Unknown DocItemAccessLevel');
  end;  { case }
end;

function DocItemStateToInt(ADocItemState: TDocItemState): Integer;
begin
  Result:= Ord(ADocItemState);
end;

function IntToDocItemState(AValue: Integer): TDocItemState;
begin
  case AValue of
    0: Result:= disNone;
    1: Result:= disInitial;
    2: Result:= disDeveloped;
    3: Result:= disAuthorized;
    4: Result:= disApproved;
  else
    raise Exception.Create('Unknown DocItemState');
  end;  { case }
end;

function DocItemState(ADataSet: TDataSet): TDocItemState;
begin
  if not ADataSet.FieldByName('APPROVE_EMPLOYEE_CODE').IsNull then
    Exit(disApproved);

  if not ADataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull then
    Exit(disAuthorized);

  if not ADataSet.FieldByName('DEVELOP_EMPLOYEE_CODE').IsNull then
    Exit(disDeveloped);

  if not ADataSet.FieldByName('DOC_ITEM_CODE').IsNull then
    Exit(disInitial);

  Result:= disNone;
end;

end.
