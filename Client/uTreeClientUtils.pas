unit uTreeClientUtils;

interface

uses
  Db, fTreeSelectForm, uProducts;

function EditDeptCode(DeptCode: Integer; ARootNodeID: Integer;
  ATreeDetailSelection: TTreeDetailSelection;
  ASelectStore, ASelectFinancialStore, ADenyFinancialStore: Boolean): Integer;

function EditProductCode(AProductCode: Integer; ARootNodeID: Integer;
  ATreeDetailSelection: TTreeDetailSelection;
  AProductClass: TProductClass = pcNormal;
  ABOIOrderType: Integer = 0;
  APartnerCode: Integer = -1;
  ACommonStatuses: TCommonStatuses = AllCommonStatuses): Integer;

{ EditDeptField i EditProductField pokazvat saotvetnata
  darvena forma fokusirana varhu F.AsInteger i ako picha izbere drug node
  go slaga v F.AsInteger i go vrushtat kato resultat. Ako DataSeta ne e
  v  EditMode go slaga v edit mode i go ostavia v edit mode - tova neznam
  dali e dobre ama e taka. Moje bi po-dobre bi bilo ako proveriava niakakuv
  TDataSource.AutoEdit, ama tova e samo idea, koiato niama da se realizira }

function EditDeptField(DeptCodeField: TField; ARootNodeID: Integer;
  ATreeDetailSelection: TTreeDetailSelection;
  ASelectStore, ASelectFinancialStore, ADenyFinancialStore: Boolean): Integer;

function EditProductField(ProductCodeField: TField; ARootNodeID: Integer;
  ATreeDetailSelection: TTreeDetailSelection;
  AProductClass: TProductClass = pcNormal): Integer;


{ DoDeptFieldChanged slaga v XNameField i XNoField
  stoinostite saotvetstvashti na stoinostta na XCodeField }

procedure DoDeptFieldChanged(
  DeptCodeField: TField;
  DeptNameField: TField = nil;
  DeptIdentifierField: TField = nil;
  DeptIsStoreField: TField = nil;
  ProductCodeField: TField = nil;
  DeptParentCodeField: TField = nil;
  IsRecurrentField: TField = nil;
  BeginDateField: TField = nil;
  EndDateField: TField = nil;
  IsExternalField: TField = nil;
  HasDocumentationField: TField = nil);

{ SetDeptPriceFields zadava stoinostite za razni ceni i koeficienti kum dadena data }

procedure SetDeptPriceFields(
  DeptCodeField: TField;
  PricesDate: TDateTime;
  HourPriceField: TField = nil;
  MaintainanceHourPriceField: TField = nil;
  ParallelProcessCountField: TField = nil;
  ParallelOperatorCountField: TField = nil);

{ DoProductFieldChanged slagat v XNameField, XNoField, XYZField
  stoinostite saotvetstvashti na stoinostta na XCodeField }

procedure DoProductFieldChanged(
  ProductCodeField: TField;
  ProductNameField: TField = nil;
  ProductNoField: TField = nil;
  WorkMeasureCodeField: TField = nil;
  AccountMeasureCodeField: TField = nil;
  AccountMeasureCoefField: TField = nil;
  TechMeasureCodeField: TField = nil;
  TechMeasureCoefField: TField = nil;
  EstimatedSecondaryPriceField: TField = nil;
  MarketSecondaryPriceField: TField = nil;
  IsVatFreeField: TField = nil;
  HasDocumentationField: TField = nil;
  TransportMeasureCodeField: TField = nil;
  TransportMeasureCoefField: TField = nil;
  SelfExistentStatusCodeField: TField = nil;
  IsGroupField: TField = nil;
  TransientStatusCodeField: TField = nil;
  WorkdaysToExistField: TField = nil;
  ProductParentCodeField: TField = nil;
  IsInactiveField: TField = nil;
  IsSelfApprovedField: TField = nil;
  SaleLeaseSecondaryPriceField: TField = nil;
  SaleLeaseDateUnitCodeField: TField = nil;
  ProductSpecRequirementCodeField: TField = nil;
  BOIOrderTypeCodeField: TField = nil;
  CommonStatusCodeField: TField = nil;
  HasSpecField: TField = nil);

procedure SetProductPriceFields(
  ProductCodeField: TField;
  PricesDate: TDateTime;
  EstimatedSecondaryPriceField: TField = nil;
  MarketSecondaryPriceField: TField = nil;
  InvestementValue2Field: TField = nil;
  InvestementValue3Field: TField = nil;
  InvestementValue4Field: TField = nil;
  InvestementValue5Field: TField = nil;
  PrecisionLevelCodeField: TField = nil);

function GetProductIsGroup(AProductCode: Integer): Boolean;

function GetProductParent(AProductCode: Integer): Integer;

function GetProductHasWorkMeasure(AProductCode: Integer): Boolean;

function GetDeptFullName(ADeptCode: Integer): string;

procedure DoDiscEventTypeFieldChanged(
  DiscEventTypeCodeField: TField;
  ToDateField: TField;
  ParentDiscEventTypeCodeField: TField = nil;
  LocalNoField: TField = nil;
  FullNoField: TField = nil;
  FormatedFullNoField: TField = nil;
  FullNameField: TField = nil;
  ShortNameField: TField = nil;
  IsGroupField: TField = nil;
  DocBranchCodeField: TField = nil;
  DocCodeField: TField = nil;
  HasDocItemsField: TField = nil;
  RatingField: TField = nil;
  ActiveDateUnitCountField: TField = nil;
  ActiveDateUnitCodeField: TField = nil;
  ColorField: TField = nil;
  BackgroundColorField: TField = nil);

resourcestring
  SCurrentDeptName = '< текущо ТП > %s';
  SCurrentDeptNo = '-1 (%s)' ;
  SEmptyCurrentDeptName = '< текущо ТП >  < всички >';
  SEmptyCurrentDeptNo = '-1' ;

  SProductsSetNormal = '< Множество от Управляеми Обекти >';
  SProductsSetFinancial = '< Множество от Финансови Обекти >';
  SProductsSetBudget = '< Множество от Разходни и Инвестиционни Статии за Среда >';

  SProductsRequiredNormal = 'Не са избрани Управляеми Обекти';
  SProductsRequiredFinancial = 'Не са избрани Финансови Обекти';
  SProductsRequiredBudget = 'Не са избрани Разходни и Инвестиционни Статии за Среда';

  SDeptsSet = '< Множество от ТП >';
  SDeptsRequired = 'Не е избрано ТП';

  SStoreNotSelected = 'Не сте избрали ТП Задържащо!';
  SFinancialStoreNotSelected = 'Не сте избрали Финансово ТП Задържащо!';
  SCurrentDeptIsNotStore = 'Текущото ТП не е ТП Задържащо';
  SMissingCurrentDept = 'Не е избрано текущо ТП';
  SChosenDeptIsNotStore = 'Избраното ТП не е ТП Задържащо';
  SFinancialStoreDenied = 'Не можете да избирате Финансово ТП Задържащо!';

const
  SProductsSet: array[TProductClass] of string =
    ('', SProductsSetNormal, SProductsSetFinancial, SProductsSetBudget);

  SProductsRequired: array[TProductClass] of string =
    ('', SProductsRequiredNormal, SProductsRequiredFinancial, SProductsRequiredBudget);

implementation

uses
  SysUtils, uUtils, uClientUtils, dMain, fProductQuantitiesTree,
  fProductsTreeEditor, uClientTypes, fDeptsTree, Forms,
  Variants, DateUtils, fDeptsTreeEditor, uClientDateTime;

{ Routines }

function EditDeptCode(DeptCode: Integer; ARootNodeID: Integer;
  ATreeDetailSelection: TTreeDetailSelection;
  ASelectStore, ASelectFinancialStore, ADenyFinancialStore: Boolean): Integer;
begin
  if (DeptCode = -1) then
    DeptCode:= dmMain.LoginContext.CurrentDeptCode;

  Result:= TfmDeptsTreeEditor.ShowForm(nil, DeptCode,
    ARootNodeID, emReadOnly, ATreeDetailSelection, ASelectStore, ASelectFinancialStore, ADenyFinancialStore);
end;

function EditProductCode(AProductCode: Integer; ARootNodeID: Integer;
  ATreeDetailSelection: TTreeDetailSelection;
  AProductClass: TProductClass; ABOIOrderType, APartnerCode: Integer;
  ACommonStatuses: TCommonStatuses): Integer;
var
  EditMode: TEditMode;
begin
  if (ATreeDetailSelection = tdsNone) then
    EditMode:= emReadOnly
  else
    EditMode:= emEdit;

  if (dmMain.LoginContext.ShowProductQuantitiesTreeByDefault <> ShiftIsPressed) and (AProductClass <> pcBudget) then
    Result:=
      TfmProductQuantitiesTree.ShowForm(
        nil,
        AProductCode,
        ARootNodeID,
        ATreeDetailSelection,
        AProductClass,
        APartnerCode)
  else
    Result:=
      TfmProductsTreeEditor.ShowForm(
        nil,
        AProductCode,
        ARootNodeID,
        EditMode,
        ATreeDetailSelection,
        AProductClass,
        ABOIOrderType,
        ACommonStatuses);
end;


function EditDeptField(DeptCodeField: TField; ARootNodeID: Integer;
  ATreeDetailSelection: TTreeDetailSelection;
  ASelectStore, ASelectFinancialStore, ADenyFinancialStore: Boolean): Integer;
var
  RealTreeDetailSelection: TTreeDetailSelection;
begin
  Assert(Assigned(DeptCodeField));

  if DeptCodeField.CanModify then
    RealTreeDetailSelection:= ATreeDetailSelection
  else
    RealTreeDetailSelection:= tdsNone;

  Result:=
    EditDeptCode(
      DeptCodeField.AsInteger, ARootNodeID, RealTreeDetailSelection, ASelectStore, ASelectFinancialStore, ADenyFinancialStore);

  if (RealTreeDetailSelection = tdsNone) or (Result = 0) then
    Exit;

  CheckEditMode(DeptCodeField.DataSet);

  DeptCodeField.AsInteger:= Result;
end;

function EditProductField(ProductCodeField: TField; ARootNodeID: Integer;
  ATreeDetailSelection: TTreeDetailSelection;
  AProductClass: TProductClass): Integer;
var
  RealTreeDetailSelection: TTreeDetailSelection;
begin
  Assert(Assigned(ProductCodeField));

  if ProductCodeField.CanModify then
    RealTreeDetailSelection:= ATreeDetailSelection
  else
    RealTreeDetailSelection:= tdsNone;

  Result:=
    EditProductCode(
      ProductCodeField.AsInteger, ARootNodeID, RealTreeDetailSelection, AProductClass);

  if (Result = 0) then
    Exit;

  CheckEditMode(ProductCodeField.DataSet);

  ProductCodeField.AsInteger:= Result;
end;

procedure DoDeptFieldChanged(
  DeptCodeField,
  DeptNameField,
  DeptIdentifierField,
  DeptIsStoreField,
  ProductCodeField,
  DeptParentCodeField,
  IsRecurrentField,
  BeginDateField,
  EndDateField,
  IsExternalField,
  HasDocumentationField: TField);

  procedure DoClear;
  begin
    ClearFieldsIfAssigned([
      DeptNameField,
      DeptIdentifierField,
      DeptIsStoreField,
      ProductCodeField,
      DeptParentCodeField,
      IsRecurrentField,
      BeginDateField,
      EndDateField,
      IsExternalField]);
  end;

var
  DeptName, DeptIdentifier: string;
  DeptIsStore: Boolean;
  ProductCode: Integer;
  DeptParentCode: Integer;
  IsRecurrent: Boolean;
  BeginDate: TDateTime;
  EndDate: TDateTime;
  IsExternal: Boolean;
  DummyDeptIsFinStore: Boolean;
  HasDocumentation: Boolean;

begin
  Assert(Assigned(DeptCodeField));

  if AllUnassigned([
       DeptNameField,
       DeptIdentifierField,
       DeptIsStoreField,
       ProductCodeField,
       DeptParentCodeField,
       IsRecurrentField,
       BeginDateField,
       EndDateField,
       IsExternalField,
       HasDocumentationField]) then
    Exit;

  try
    if DeptCodeField.IsNull then
      begin
        DoClear;
        Exit;
      end;

    if (DeptCodeField.AsInteger = -1) then
      begin
        if (dmMain.LoginContext.CurrentDeptCode = 0) then
          begin
            DeptName:= SEmptyCurrentDeptName;
            DeptIdentifier:= SEmptyCurrentDeptNo;
            DeptIsStore:= False;
            ProductCode:= 0;
            DeptParentCode:= 0;
            IsRecurrent:= False;
            BeginDate:= MinDateTime;
            EndDate:= Null;
            IsExternal:= False;
            HasDocumentation:= False;
          end
        else
          begin
            dmMain.SvrDeptsTree.GetDeptData(
              dmMain.LoginContext.CurrentDeptCode,
              DeptName,
              DeptIdentifier,
              DeptIsStore,
              ProductCode,
              DeptParentCode,
              IsRecurrent,
              BeginDate,
              EndDate,
              IsExternal,
              DummyDeptIsFinStore,
              HasDocumentation);

            DeptName:= Format(SCurrentDeptName, [DeptName]);
            DeptIdentifier:= Format(SCurrentDeptNo, [DeptIdentifier]);
          end;
      end
    else
      dmMain.SvrDeptsTree.GetDeptData(
        DeptCodeField.AsInteger,
        DeptName,
        DeptIdentifier,
        DeptIsStore,
        ProductCode,
        DeptParentCode,
        IsRecurrent,
        BeginDate,
        EndDate,
        IsExternal,
        DummyDeptIsFinStore,
        HasDocumentation);

    if Assigned(DeptNameField) then
      DeptNameField.AsString:= DeptName;

    if Assigned(DeptIdentifierField) then
      DeptIdentifierField.AsString:= DeptIdentifier;

    if Assigned(DeptIsStoreField) then
      DeptIsStoreField.AsBoolean:= DeptIsStore;

    if Assigned(ProductCodeField) then
      ProductCodeField.AsVariant:= IntToVar(ProductCode);

    if Assigned(DeptParentCodeField) then
      DeptParentCodeField.AsVariant:= IntToVar(DeptParentCode);

    if Assigned(IsRecurrentField) then
      IsRecurrentField.AsBoolean:= IsRecurrent;

    if Assigned(BeginDateField) then
      BeginDateField.AsDateTime:= BeginDate;

    if Assigned(EndDateField) then
      EndDateField.AsDateTime:= EndDate;

    if Assigned(IsExternalField) then
      IsExternalField.AsBoolean:= IsExternal;

    if Assigned(HasDocumentationField) then
      HasDocumentationField.AsBoolean:= HasDocumentation;
  except
    DoClear;
    raise;
  end;
end;

procedure SetDeptPriceFields(
  DeptCodeField: TField;
  PricesDate: TDateTime;
  HourPriceField,
  MaintainanceHourPriceField,
  ParallelProcessCountField,
  ParallelOperatorCountField: TField);

  procedure DoClear;
  begin
    ClearFieldsIfAssigned([
      HourPriceField,
      MaintainanceHourPriceField]);
  end;

var
  HourPrice: Double;
  MaintainanceHourPrice: Double;
  ParallelProcessCount: Double;
  ParallelOperatorCount: Double;
begin
  Assert(Assigned(DeptCodeField));

  if AllUnassigned([
       HourPriceField,
       MaintainanceHourPriceField,
       ParallelProcessCountField,
       ParallelOperatorCountField]) then
    Exit;

  try
    if DeptCodeField.IsNull then
      begin
        DoClear;
        Exit;
      end;

    dmMain.SvrDeptsTree.GetDeptPrices(
      DeptCodeField.AsInteger,
      PricesDate,
      HourPrice,
      MaintainanceHourPrice,
      ParallelProcessCount,
      ParallelOperatorCount);

    if Assigned(HourPriceField) then
      HourPriceField.AsVariant:= FloatToVarNaN(HourPrice);

    if Assigned(MaintainanceHourPriceField) then
      MaintainanceHourPriceField.AsVariant:= FloatToVarNaN(MaintainanceHourPrice);

    if Assigned(ParallelProcessCountField) then
      ParallelProcessCountField.AsVariant:= FloatToVarNaN(ParallelProcessCount);

    if Assigned(ParallelOperatorCountField) then
      ParallelOperatorCountField.AsVariant:= FloatToVarNaN(ParallelOperatorCount);
  except
    DoClear;
    raise;
  end;
end;  { SetDeptPriceFields }

procedure DoProductFieldChanged(
  ProductCodeField,
  ProductNameField,
  ProductNoField,
  WorkMeasureCodeField,
  AccountMeasureCodeField,
  AccountMeasureCoefField,
  TechMeasureCodeField,
  TechMeasureCoefField,
  EstimatedSecondaryPriceField,
  MarketSecondaryPriceField,
  IsVatFreeField,
  HasDocumentationField,
  TransportMeasureCodeField,
  TransportMeasureCoefField,
  SelfExistentStatusCodeField,
  IsGroupField,
  TransientStatusCodeField,
  WorkdaysToExistField,
  ProductParentCodeField,
  IsInactiveField,
  IsSelfApprovedField: TField;
  SaleLeaseSecondaryPriceField: TField;
  SaleLeaseDateUnitCodeField: TField;
  ProductSpecRequirementCodeField: TField;
  BOIOrderTypeCodeField: TField;
  CommonStatusCodeField: TField;
  HasSpecField: TField);

  procedure DoClear;
  begin
    ClearFieldsIfAssigned([
      ProductNameField,
      ProductNoField,
      WorkMeasureCodeField,
      AccountMeasureCodeField,
      AccountMeasureCoefField,
      TechMeasureCodeField,
      TechMeasureCoefField,
      EstimatedSecondaryPriceField,
      MarketSecondaryPriceField,
      IsVatFreeField,
      HasDocumentationField,
      TransportMeasureCodeField,
      TransportMeasureCoefField,
      SelfExistentStatusCodeField,
      IsGroupField,
      TransientStatusCodeField,
      WorkdaysToExistField,
      ProductParentCodeField,
      IsInactiveField,
      IsSelfApprovedField,
      SaleLeaseSecondaryPriceField,
      SaleLeaseDateUnitCodeField,
      ProductSpecRequirementCodeField,
      BOIOrderTypeCodeField,
      CommonStatusCodeField
    ]);
  end;

var
  ProductName: string;
  ProductNo: Double;
  WorkMeasureCode, AccountMeasureCode, TechMeasureCode, TransportMeasureCode: Integer;
  AccountMeasureCoef, TechMeasureCoef, TransportMeasureCoef: Double;
  EstimatedSecondaryPrice, MarketSecondaryPrice: Double;
  IsVatFree: Boolean;
  HasDocumentation: Boolean;
  SelfExistentStatusCode: Integer;
  IsGroup: Boolean;
  TransientStatusCode: Integer;
  WorkdaysToExist: Integer;
  ProductParentCode: Integer;
  IsInactive: Boolean;
  IsSelfApproved: Boolean;
  SaleLeaseSecondaryPrice: Double;
  SaleLeaseDateUnitCode: Integer;
  ProductSpecRequirementCode: Integer;
  BOIOrderTypeCode: Integer;
  CommonStatusCode: Integer;
  HasSpec: Boolean;

begin
  Assert(Assigned(ProductCodeField));

  if AllUnassigned([
       ProductNameField,
       ProductNoField,
       WorkMeasureCodeField,
       AccountMeasureCodeField,
       AccountMeasureCoefField,
       TechMeasureCodeField,
       TechMeasureCoefField,
       EstimatedSecondaryPriceField,
       MarketSecondaryPriceField,
       IsVatFreeField,
       HasDocumentationField,
       TransportMeasureCodeField,
       TransportMeasureCoefField,
       SelfExistentStatusCodeField,
       IsGroupField,
       TransientStatusCodeField,
       WorkdaysToExistField,
       ProductParentCodeField,
       IsInactiveField,
       IsSelfApprovedField,
       SaleLeaseSecondaryPriceField,
       SaleLeaseDateUnitCodeField,
       ProductSpecRequirementCodeField,
       BOIOrderTypeCodeField,
       CommonStatusCodeField]) then
    Exit;

  try
    if ProductCodeField.IsNull then
      begin
        DoClear;
        Exit;
      end;

    dmMain.SvrProductsTree.GetProductData(
      ProductCodeField.AsInteger,
      ProductName,
      ProductNo,
      WorkMeasureCode,
      AccountMeasureCode,
      AccountMeasureCoef,
      TechMeasureCode,
      TechMeasureCoef,
      EstimatedSecondaryPrice,
      MarketSecondaryPrice,
      IsVatFree,
      HasDocumentation,
      TransportMeasureCode,
      TransportMeasureCoef,
      SelfExistentStatusCode,
      IsGroup,
      TransientStatusCode,
      WorkdaysToExist,
      ProductParentCode,
      IsInactive,
      IsSelfApproved,
      SaleLeaseSecondaryPrice,
      SaleLeaseDateUnitCode,
      ProductSpecRequirementCode,
      BOIOrderTypeCode,
      CommonStatusCode,
      HasSpec);

    if Assigned(ProductNameField) then
      ProductNameField.AsString:= ProductName;

    if Assigned(ProductNoField) then
      ProductNoField.AsVariant:= FloatToVar(ProductNo);

    if Assigned(WorkMeasureCodeField) then
      WorkMeasureCodeField.AsVariant:= IntToVar(WorkMeasureCode);

    if Assigned(AccountMeasureCodeField) then
      AccountMeasureCodeField.AsVariant:= IntToVar(AccountMeasureCode);

    if Assigned(AccountMeasureCoefField) then
      AccountMeasureCoefField.AsVariant:= FloatToVar(AccountMeasureCoef);

    if Assigned(TechMeasureCodeField) then
      TechMeasureCodeField.AsVariant:= IntToVar(TechMeasureCode);

    if Assigned(TechMeasureCoefField) then
      TechMeasureCoefField.AsVariant:= FloatToVar(TechMeasureCoef);

    if Assigned(EstimatedSecondaryPriceField) then
      EstimatedSecondaryPriceField.AsVariant:= FloatToVar(EstimatedSecondaryPrice);

    if Assigned(MarketSecondaryPriceField) then
      MarketSecondaryPriceField.AsVariant:= FloatToVar(MarketSecondaryPrice);

    if Assigned(IsVatFreeField) then
      IsVatFreeField.AsBoolean:= IsVatFree;

    if Assigned(HasDocumentationField) then
      HasDocumentationField.AsBoolean:= HasDocumentation;

    if Assigned(TransportMeasureCodeField) then
      TransportMeasureCodeField.AsVariant:= IntToVar(TransportMeasureCode);

    if Assigned(TransportMeasureCoefField) then
      TransportMeasureCoefField.AsVariant:= FloatToVar(TransportMeasureCoef);

    if Assigned(SelfExistentStatusCodeField) then
      SelfExistentStatusCodeField.AsVariant:= FloatToVar(SelfExistentStatusCode);

    if Assigned(IsGroupField) then
      IsGroupField.AsBoolean:= IsGroup;

    if Assigned(TransientStatusCodeField) then
      TransientStatusCodeField.AsVariant:= FloatToVar(TransientStatusCode);

    if Assigned(WorkdaysToExistField) then
      WorkdaysToExistField.AsVariant:= FloatToVar(WorkdaysToExist);

    if Assigned(ProductParentCodeField) then
      ProductParentCodeField.AsVariant:= FloatToVar(ProductParentCode);

    if Assigned(IsInactiveField) then
      IsInactiveField.AsBoolean:= IsInactive;

    if Assigned(IsSelfApprovedField) then
      IsSelfApprovedField.AsBoolean:= IsSelfApproved;

    if Assigned(SaleLeaseSecondaryPriceField) then
      SaleLeaseSecondaryPriceField.AsFloat:= SaleLeaseSecondaryPrice;

    if Assigned(SaleLeaseDateUnitCodeField) then
      SaleLeaseDateUnitCodeField.AsFloat:= SaleLeaseDateUnitCode;

    if Assigned(ProductSpecRequirementCodeField) then
      ProductSpecRequirementCodeField.AsVariant:= FloatToVar(ProductSpecRequirementCode);

    if Assigned(BOIOrderTypeCodeField) then
      BOIOrderTypeCodeField.AsVariant:= FloatToVar(BOIOrderTypeCode);

    if Assigned(CommonStatusCodeField) then
      CommonStatusCodeField.AsVariant:= FloatToVar(CommonStatusCode);

    if Assigned(HasSpecField) then
      HasSpecField.AsBoolean:= HasSpec;
  except
    DoClear;
    raise;
  end;
end;  { DoProductFieldChanged }

procedure SetProductPriceFields(
  ProductCodeField: TField;
  PricesDate: TDateTime;
  EstimatedSecondaryPriceField,
  MarketSecondaryPriceField,
  InvestementValue2Field,
  InvestementValue3Field,
  InvestementValue4Field,
  InvestementValue5Field,
  PrecisionLevelCodeField: TField);

  procedure DoClear;
  begin
    ClearFieldsIfAssigned([
      EstimatedSecondaryPriceField,
      MarketSecondaryPriceField,
      InvestementValue2Field,
      InvestementValue3Field,
      InvestementValue4Field,
      InvestementValue5Field,
      PrecisionLevelCodeField]);
  end;

var
  EstimatedSecondaryPrice: Double;
  MarketSecondaryPrice: Double;
  InvestementValue2: Double;
  InvestementValue3: Double;
  InvestementValue4: Double;
  InvestementValue5: Double;
  PrecisionLevelCode: Double;
begin
  Assert(Assigned(ProductCodeField));

  if AllUnassigned([
       EstimatedSecondaryPriceField,
       MarketSecondaryPriceField,
       InvestementValue2Field,
       InvestementValue3Field,
       InvestementValue4Field,
       InvestementValue5Field,
       PrecisionLevelCodeField]) then
    Exit;

  try
    if ProductCodeField.IsNull then
      begin
        DoClear;
        Exit;
      end;

    dmMain.SvrProductsTree.GetProductPrices(
      ProductCodeField.AsInteger,
      PricesDate,
      EstimatedSecondaryPrice,
      MarketSecondaryPrice,
      InvestementValue2,
      InvestementValue3,
      InvestementValue4,
      InvestementValue5,
      PrecisionLevelCode);

    if Assigned(EstimatedSecondaryPriceField) then
      EstimatedSecondaryPriceField.AsVariant:= FloatToVarNaN(EstimatedSecondaryPrice);

    if Assigned(MarketSecondaryPriceField) then
      MarketSecondaryPriceField.AsVariant:= FloatToVarNaN(MarketSecondaryPrice);

    if Assigned(InvestementValue2Field) then
      InvestementValue2Field.AsVariant:= FloatToVarNaN(InvestementValue2);

    if Assigned(InvestementValue3Field) then
      InvestementValue3Field.AsVariant:= FloatToVarNaN(InvestementValue3);

    if Assigned(InvestementValue4Field) then
      InvestementValue4Field.AsVariant:= FloatToVarNaN(InvestementValue4);

    if Assigned(InvestementValue5Field) then
      InvestementValue5Field.AsVariant:= FloatToVarNaN(InvestementValue5);

    if Assigned(PrecisionLevelCodeField) then
      PrecisionLevelCodeField.AsVariant:= FloatToVarNaN(PrecisionLevelCode);
  except
    DoClear;
    raise;
  end;
end;  { SetProductPriceFields }

function GetProductIsGroup(AProductCode: Integer): Boolean;
var
  IsGroup: Boolean;
  DummyString: string;
  DummyInteger: Integer;
  DummyDouble: Double;
  DummyBoolean: Boolean;
begin
  dmMain.SvrProductsTree.GetProductData(
    AProductCode,
    DummyString,
    DummyDouble,
    DummyInteger,
    DummyInteger,
    DummyDouble,
    DummyInteger,
    DummyDouble,
    DummyDouble,
    DummyDouble,
    DummyBoolean,
    DummyBoolean,
    DummyInteger,
    DummyDouble,
    DummyInteger,
    IsGroup,
    DummyInteger,
    DummyInteger,
    DummyInteger,
    DummyBoolean,
    DummyBoolean,
    DummyDouble,
    DummyInteger,
    DummyInteger,
    DummyInteger,
    DummyInteger,
    DummyBoolean);
  Result:= IsGroup;
end;

function GetProductParent(AProductCode: Integer): Integer;
var
  ParentCode: Integer;
  DummyString: string;
  DummyInteger: Integer;
  DummyDouble: Double;
  DummyBoolean: Boolean;
begin
  dmMain.SvrProductsTree.GetProductData(
    AProductCode,
    DummyString,
    DummyDouble,
    DummyInteger,
    DummyInteger,
    DummyDouble,
    DummyInteger,
    DummyDouble,
    DummyDouble,
    DummyDouble,
    DummyBoolean,
    DummyBoolean,
    DummyInteger,
    DummyDouble,
    DummyInteger,
    DummyBoolean,
    DummyInteger,
    DummyInteger,
    ParentCode,
    DummyBoolean,
    DummyBoolean,
    DummyDouble,
    DummyInteger,
    DummyInteger,
    DummyInteger,
    DummyInteger,
    DummyBoolean);
  Result:= ParentCode;
end;

function GetProductHasWorkMeasure(AProductCode: Integer): Boolean;
var
  WorkMeasureCode: Integer;
  DummyString: string;
  DummyInteger: Integer;
  DummyDouble: Double;
  DummyBoolean: Boolean;
begin
  dmMain.SvrProductsTree.GetProductData(
    AProductCode,
    DummyString,
    DummyDouble,
    WorkMeasureCode,
    DummyInteger,
    DummyDouble,
    DummyInteger,
    DummyDouble,
    DummyDouble,
    DummyDouble,
    DummyBoolean,
    DummyBoolean,
    DummyInteger,
    DummyDouble,
    DummyInteger,
    DummyBoolean,
    DummyInteger,
    DummyInteger,
    DummyInteger,
    DummyBoolean,
    DummyBoolean,
    DummyDouble,
    DummyInteger,
    DummyInteger,
    DummyInteger,
    DummyInteger,
    DummyBoolean);

  GetProductHasWorkMeasure:= (WorkMeasureCode <> 0);
end;

function GetDeptFullName(ADeptCode: Integer): string;
var
  NodeName: string;
  DeptIdentifier: string;
  DummyBoolean: Boolean;
  DummyInteger: Integer;
  DummyDateTime: TDateTime;
begin
  dmMain.SvrDeptsTree.GetDeptData(
    ADeptCode,
    NodeName,
    DeptIdentifier,
    DummyBoolean,
    DummyInteger,
    DummyInteger,
    DummyBoolean,
    DummyDateTime,
    DummyDateTime,
    DummyBoolean,
    DummyBoolean,
    DummyBoolean);

  Result:= DeptIdentifier + ' - ' + NodeName;
end;

procedure DoDiscEventTypeFieldChanged(
  DiscEventTypeCodeField,
  ToDateField,
  ParentDiscEventTypeCodeField,
  LocalNoField,
  FullNoField,
  FormatedFullNoField,
  FullNameField,
  ShortNameField,
  IsGroupField,
  DocBranchCodeField,
  DocCodeField,
  HasDocItemsField,
  RatingField,
  ActiveDateUnitCountField,
  ActiveDateUnitCodeField,
  ColorField,
  BackgroundColorField: TField);

  procedure DoClear;
  begin
    ClearFieldsIfAssigned([
      ParentDiscEventTypeCodeField,
      LocalNoField,
      FullNoField,
      FormatedFullNoField,
      FullNameField,
      ShortNameField,
      IsGroupField,
      DocBranchCodeField,
      DocCodeField,
      HasDocItemsField,
      RatingField,
      ActiveDateUnitCountField,
      ActiveDateUnitCodeField,
      ColorField,
      BackgroundColorField
    ]);
  end;

var
  ParentDiscEventTypeCode: Integer;
  LocalNo: Integer;
  FullNo: string;
  FormatedFullNo: string;
  FullName: string;
  ShortName: string;
  IsGroup: Boolean;
  DocBranchCode: Integer;
  DocCode: Integer;
  HasDocItems: Boolean;
  Rating: Integer;
  ActiveDateUnitCount: Integer;
  ActiveDateUnitCode: Integer;
  Color: Integer;
  BackgroundColor: Integer;

  DiscEventTypeToDate: TDateTime;
begin
  Assert(Assigned(DiscEventTypeCodeField));

  if AllUnassigned([
       ParentDiscEventTypeCodeField,
       LocalNoField,
       FullNoField,
       FormatedFullNoField,
       FullNameField,
       ShortNameField,
       IsGroupField,
       DocBranchCodeField,
       DocCodeField,
       HasDocItemsField,
       RatingField,
       ActiveDateUnitCountField,
       ActiveDateUnitCodeField,
       ColorField,
       BackgroundColorField]) then
    Exit;

  try
    if DiscEventTypeCodeField.IsNull then
      begin
        DoClear;
        Exit;
      end;

    if Assigned(ToDateField) then
      DiscEventTypeToDate:= ToDateField.AsDateTime
    else
      DiscEventTypeToDate:= ContextDate;

    dmMain.SvrHumanResource.GetDiscEventTypeData(
      DiscEventTypeCodeField.AsInteger,
      DiscEventTypeToDate,
      ParentDiscEventTypeCode,
      LocalNo,
      FullNo,
      FormatedFullNo,
      FullName,
      ShortName,
      IsGroup,
      DocBranchCode,
      DocCode,
      HasDocItems,
      Rating,
      ActiveDateUnitCount,
      ActiveDateUnitCode,
      Color,
      BackgroundColor);

    if Assigned(ParentDiscEventTypeCodeField) then
      ParentDiscEventTypeCodeField.AsVariant:= IntToVar(ParentDiscEventTypeCode);

    if Assigned(LocalNoField) then
      LocalNoField.AsVariant:= LocalNo;

    if Assigned(FullNoField) then
      FullNoField.AsString:= FullNo;

    if Assigned(FormatedFullNoField) then
      FormatedFullNoField.AsString:= FormatedFullNo;

    if Assigned(FullNameField) then
      FullNameField.AsString:= FullName;

    if Assigned(ShortNameField) then
      ShortNameField.AsString:= ShortName;

    if Assigned(IsGroupField) then
      IsGroupField.AsBoolean:= IsGroup;

    if Assigned(DocBranchCodeField) then
      DocBranchCodeField.AsVariant:= VarToInt(DocBranchCode);

    if Assigned(DocCodeField) then
      DocCodeField.AsVariant:= VarToInt(DocCode);

    if Assigned(HasDocItemsField) then
      HasDocItemsField.AsBoolean:= HasDocItems;

    if Assigned(RatingField) then
      RatingField.AsVariant:= IntToVar(Rating);

    if Assigned(ActiveDateUnitCountField) then
      ActiveDateUnitCountField.AsVariant:= IntToVar(ActiveDateUnitCount);

    if Assigned(ActiveDateUnitCodeField) then
      ActiveDateUnitCodeField.AsVariant:= IntToVar(ActiveDateUnitCode);

    if Assigned(ColorField) then
      ColorField.AsVariant:= IntToVar(Color);

    if Assigned(BackgroundColorField) then
      BackgroundColorField.AsVariant:= IntToVar(BackgroundColor);
  except
    DoClear;
    raise;
  end;
end;

end.
