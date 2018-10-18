unit fProductionOrder;

interface         

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBaseSaleForm, ExtCtrls, Db, DBClient, ImgList, ActnList, AbmesArrow,
  ComCtrls, DBCtrls, StdCtrls, Mask, Buttons, JvToolEdit, 
  AbmesClientDataSet, fBaseFrame, fDBFrame, fFieldEditFrame, dDocClient,
  fDeptFieldEditFrameBald, AbmesDBCheckBox, fProductFieldEditFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, AbmesFields, JvButtons,
  fDateFieldEditFrame, uClientTypes, JvComponent, JvCaptionButton,
  JvExControls, JvDBLookup, ToolWin, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, JvExMask, JvDBControls,
  fProductFieldEditFrameBald, fDateIntervalFrame, fProcessObjectFrame,
  fPPProcessObject, JvExStdCtrls, JvDBCombobox, JvComponentBase, JvCombobox,
  Generics.Collections, System.Actions;

type
  TfmProductionOrder = class(TBaseSaleForm)
    gbProductionOrderData: TGroupBox;
    lblCreateDate: TLabel;
    edtCreateDateColor: TEdit;
    lblSaleLineChangeDate: TLabel;
    edtSaleLastChangeDateColor: TEdit;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsData_SALE_TYPE_ABBREV: TAbmesWideStringField;
    saCreateDate: TAbmesArrow;
    tCreateDate: TDBText;
    saSaleLastChangeDate: TAbmesArrow;
    tSaleLastChangeDate: TDBText;
    cdsDataSALE_GROUP_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_GROUP_CODE: TAbmesFloatField;
    cdsData_CREATE_DATE_SHOW: TAbmesSQLTimeStampField;
    cdsData_SALE_LAST_CHANGE_DATE_SHOW: TAbmesSQLTimeStampField;
    cdsDataPRIORITY_CODE: TAbmesFloatField;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    cdsDataPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    actForwardAutoComplete: TAction;
    actBackwardAutoComplete: TAction;
    cdsDataIS_AUTO_COMPLETIVE: TAbmesFloatField;
    cdsDataIS_FORWARD_AUTO_COMPLETED: TAbmesFloatField;
    cdsDataIS_BACKWARD_AUTO_COMPLETED: TAbmesFloatField;
    frCreateDate: TfrDateFieldEditFrame;
    frSaleLineChangeDate: TfrDateFieldEditFrame;
    saReceiveDate: TAbmesArrow;
    tReceiveDate: TDBText;
    cdsTransientStatuses: TAbmesClientDataSet;
    cdsTransientStatusesTRANSIENT_STATUS_CODE: TAbmesFloatField;
    cdsTransientStatusesTRANSIENT_STATUS_NAME: TAbmesWideStringField;
    cdsProductionOrderTypes: TAbmesClientDataSet;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_NAME: TAbmesWideStringField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_TEXT: TAbmesWideStringField;
    cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_NO: TAbmesFloatField;
    cdsProductionOrderTypesIS_REVERSIBLE: TAbmesFloatField;
    dsProductionOrderTypes: TDataSource;
    cdsDataRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsData_RECEIVE_DATE_SHOW: TAbmesSQLTimeStampField;
    cdsDataTRANSIENT_STATUS_CODE: TAbmesFloatField;
    cdsDataWORKDAYS_TO_EXIST: TAbmesFloatField;
    cdsData_TRANSIENT_STATUS_NAME: TAbmesWideStringField;
    cdsData_PRODUCTION_ORDER_TYPE_TEXT: TAbmesWideStringField;
    cdsData_PROD_ORDER_TYPE_IS_REVERSIBLE: TAbmesFloatField;
    gbProductionOrder: TGroupBox;
    lblStatus: TLabel;
    edtStatus: TDBEdit;
    lblProductionOrderType: TLabel;
    cbProductionOrderType: TJvDBLookupCombo;
    lblSaleBranch: TLabel;
    cbSaleBranch: TJvDBLookupCombo;
    lblSaleNo: TLabel;
    edtSaleNo: TDBEdit;
    lblSaleType: TLabel;
    gbManager: TGroupBox;
    gbProductionStart: TGroupBox;
    frProductionStartPlanDate: TfrDateFieldEditFrame;
    edtProductionStartPlanDateColor: TEdit;
    lblProductionStartDateDiff: TLabel;
    edtProductionStartDateDiff: TDBEdit;
    lblProductionStartDate: TLabel;
    lblProductionStartCoef: TLabel;
    edtProductionStartCoef: TDBEdit;
    gbProduction: TGroupBox;
    pnlDocs: TToolBar;
    btnDocs: TSpeedButton;
    frManagerEmployee: TfrEmployeeFieldEditFrameBald;
    frProductionDept: TfrDeptFieldEditFrameBald;
    edtPlanModelLength: TDBEdit;
    edtRealModelLength: TDBEdit;
    edtProductionDateDiffMax: TDBEdit;
    edtProductionDateDiffMin: TDBEdit;
    lblProductionDept: TLabel;
    lblModelLegth: TLabel;
    lblPlanModelLength: TLabel;
    lblRealModelLength: TLabel;
    edtProductionDateDiff: TLabel;
    lblProductionDateDiffMax: TLabel;
    lblProductionDateDiffMin: TLabel;
    gbProductionFinal: TGroupBox;
    frProduct: TfrProductFieldEditFrameBald;
    lblTreeNodeName: TLabel;
    lblQuantity: TLabel;
    edtQuantity: TDBEdit;
    txtMeasure: TDBText;
    txtQuantityDiffMeasure: TDBText;
    lblQuantityDiff: TLabel;
    frShipmentStore: TfrDeptFieldEditFrameBald;
    lblShipmentStore: TLabel;
    frEnterShStorePlanDate: TfrDateIntervalFrame;
    lblEnterShStorePlanDate: TLabel;
    edtShipmentStorePlanEnterDateColor: TMemo;
    lblEnterShipmentStoreDateDiff: TLabel;
    edtEnterShipmentStoreDateDiff: TDBEdit;
    edtQuantityDiff: TDBEdit;
    btnToggleQuantityDiffMeasure: TSpeedButton;
    gbEngineering: TGroupBox;
    lblSpecVersionNo: TLabel;
    edtSpecVersionNo: TDBEdit;
    lblModelSpecModelVariant: TLabel;
    cbModelSpecModelVariant: TJvDBLookupCombo;
    lblSpecVersionNo2: TLabel;
    lblStructureCoef: TLabel;
    edtStructureCoef: TDBEdit;
    lblIsOperationsModel: TLabel;
    edtIsOperationsModel: TDBEdit;
    lblModelDevelopmentType: TLabel;
    cbModelDevelopmentType: TJvDBLookupCombo;
    frOkidu: TfrEmployeeFieldEditFrameBald;
    gbUsage: TGroupBox;
    lblOkidu: TLabel;
    frConsumerDept: TfrDeptFieldEditFrameBald;
    frConsumeDateInterval: TfrDateIntervalFrame;
    edtExpectedSaleDateColor: TEdit;
    lblConsumerDept: TLabel;
    lblConsumeDateInterval: TLabel;
    gbPriority: TGroupBox;
    cbPriority: TJvDBLookupCombo;
    gbInvestedValue: TGroupBox;
    lblSecondaryCurrencyAbbrev: TLabel;
    lblPlanInvestedValue: TLabel;
    edtPlanInvestedValue: TDBEdit;
    edtRealInvestedValue: TDBEdit;
    lblRealInvestedValue: TLabel;
    lblInvestedValueDiff: TLabel;
    btnInvestedValueDiffMeasure: TSpeedButton;
    edtInvestedValueDiff: TDBEdit;
    lblInvestedValueDiffMeasure: TLabel;
    gbWastingSale: TGroupBox;
    Bevel1: TBevel;
    gbModelStatus: TGroupBox;
    btnModelStatus: TBitBtn;
    btnModelCapacityStatus: TBitBtn;
    gbTransientStatus: TGroupBox;
    lblWorkdaysToExist: TLabel;
    cbTransientStatus: TJvDBLookupCombo;
    edtWorkdaysToExist: TDBEdit;
    pnlAutoComplete: TPanel;
    lblForwardAutoComplete: TLabel;
    lblBackwardAutoComplete: TLabel;
    btnForwardAutoComplete: TBitBtn;
    btnBackwardAutoComplete: TBitBtn;
    pnlAutoCompleteCheck: TPanel;
    chkAutoComplete: TAbmesDBCheckBox;
    cdsData_MODEL_SPEC_MODEL_VARIANT: TAbmesWideStringField;
    cbIsWasteCompensatingOrder: TJvDBComboBox;
    cdsDataCONSUMER_DEPT_CODE: TAbmesFloatField;
    cdsDataCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataCONSUME_END_DATE: TAbmesSQLTimeStampField;
    gbWastingSaleDetails: TPanel;
    pnlWastingSale: TPanel;
    cbWastingSaleBranch: TJvDBLookupCombo;
    edtWastingSaleNo: TDBEdit;
    btnWastingSaleModelStatus: TBitBtn;
    lblWastingSale: TLabel;
    pnlWasteCompensatorProductionOrders: TPanel;
    btnWasteCompensatorProductionOrders: TBitBtn;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsData_PRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsData_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsData_MANAGER_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsData_ENTER_SH_STORE_PERIOD: TAbmesWideStringField;
    cdsData_CONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsData_CONSUME_PERIOD: TAbmesWideStringField;
    cdsData_WASTING_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsData_SECONDARY_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsData_INVESTED_VALUE_DIFF_MEASURE: TAbmesWideStringField;
    cbSaleType: TJvDBLookupCombo;
    gbNotes: TGroupBox;
    moNotes: TDBMemo;
    dsSaleTypes: TDataSource;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    edtHasWaste: TDBEdit;
    lblHasWaste: TLabel;
    lblStartAfterLimitingDays: TLabel;
    edtStartAfterLimitingDays: TDBEdit;
    cdsData_QUANTITY_DIFF_MEASURE: TAbmesWideStringField;
    cdsData_QUANTITY_DIFF: TAbmesWideStringField;
    cdsData_INVESTED_VALUE_DIFF_REPORT: TAbmesWideStringField;
    dsPriorities: TDataSource;
    cdsPrioritiesPRIORITY_NO: TAbmesFloatField;
    lblPriority: TLabel;
    gbWorkPriority: TGroupBox;
    lblWorkPriority: TLabel;
    cbWorkPriority: TJvDBLookupCombo;
    cdsData_PRIORITY_NO: TAbmesFloatField;
    cdsData_WORK_PRIORITY_NO: TAbmesFloatField;
    cdsData_MANAGER_EMPLOYEE_NO: TAbmesFloatField;
    cdsData_OKIDU_EMPLOYEE_NO: TAbmesFloatField;
    cdsData_OKIDU_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsDataHAS_FORWARD_START_STORE_DEALS: TAbmesFloatField;
    cdsDataHAS_BACKWARD_START_STORE_DEALS: TAbmesFloatField;
    cdsProductOrderQuantities: TAbmesClientDataSet;
    cdsProductOrderQuantitiesMIN_ORDER_QUANTITY: TAbmesFloatField;
    cdsProductOrderQuantitiesMAX_ORDER_QUANTITY: TAbmesFloatField;
    cdsProductOrderQuantitiesBALANCE_QUANTITY: TAbmesFloatField;
    cdsProductOrderQuantitiesACQUIRE_BATCH_QUANTITY: TAbmesFloatField;
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsDataPRODUCT_CODEChange(Sender: TField);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataSALE_BRANCH_CODEChange(Sender: TField);
    procedure cdsDataQUANTITYChange(Sender: TField);
    procedure actForwardAutoCompleteUpdate(Sender: TObject);
    procedure actForwardAutoCompleteExecute(Sender: TObject);
    procedure actBackwardAutoCompleteUpdate(Sender: TObject);
    procedure actBackwardAutoCompleteExecute(Sender: TObject);
    procedure cdsDataMODEL_SPEC_MODEL_VARIANT_NOChange(Sender: TField);
    procedure cdsDataAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDataReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure frProductactShowProductVIMExecute(Sender: TObject);
    procedure actConcludeSaleExecute(Sender: TObject);
    procedure actAnnulSaleExecute(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure cdsDataTRANSIENT_STATUS_CODEChange(Sender: TField);
    procedure cdsDataPRODUCTION_ORDER_TYPE_CODEChange(Sender: TField);
    procedure cdsProductionOrderTypesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actToggleQuantityDiffMeasureUpdate(Sender: TObject);
    procedure actInvestedValueDiffMeasureUpdate(Sender: TObject);
    procedure cdsDataPRODUCTION_WORKDAYSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnDocsClick(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDataENTER_SH_STORE_PLAN_BEGIN_DATEChange(Sender: TField);
    procedure cdsDataENTER_SH_STORE_PLAN_END_DATEChange(Sender: TField);
  private
    FWasFinished: Boolean;
    FWasAnnuled: Boolean;
    FErrorMsg: Variant;
    FProductionOrderBaseTypeCode: Integer;
    FInitialIsForwardAutoCompleted: Boolean;
    procedure RefreshProductOrderQuantities;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure GetArrowsInfo(Infos: TObjectList<TArrowInfo>); override;
    procedure GetDateFields(Fields: TList<TField>); override;
    procedure ProductFieldChanged; virtual;
    class function CanUseDocs: Boolean; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductionOrderBaseTypeCode: Integer = 0); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductionOrderBaseTypeCode: Integer = 0): Boolean;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uClientUtils, uTreeClientUtils, fTreeSelectForm, AbmesDialogs,
  uUserActivityConsts, uUtils, uTreeNodes, Variants, uSaleOrderTypes,
  uProducts, Math, rProductionOrder, StrUtils, uDocClientUtils,
  fModelStatus, uColorConsts, fProductionOrders, uDocUtils, uModelUtils,
  uProductionOrderTypes, uClientDateTime, uComboBoxUtils,
  uProductClientUtils, uClientConsts;

{$R *.DFM}

resourcestring
  SInvalidManagerCode = 'Некоректен код на Поръчител';
  SNonPositiveQuantity = 'Количеството трябва да е по-голямо от нула!';
  SProductionOrderNewNo = 'Ордерът е записан под номер %d';
  SOrderQuantity = 'УМ УОб Количество за ОПВ';
  SNotAquireBatchQuantity = 'Количеството не е кратно на зададеното Кратно количество в УМ УОб!' + SLineBreak + 'Изберете ново количество?';
  SEntered = 'въведено';

{ TfmProductionOrder }

procedure TfmProductionOrder.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductionOrderBaseTypeCode: Integer);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProductionOrderBaseTypeCode:= AProductionOrderBaseTypeCode;
end;

class function TfmProductionOrder.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductionOrderBaseTypeCode: Integer): Boolean;
var
  f: TfmProductionOrder;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProductionOrderBaseTypeCode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

class function TfmProductionOrder.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmProductionOrder.cdsDataCalcFields(DataSet: TDataSet);
begin
  cdsData_REMAINING_QUANTITY.AsFloat:=
    cdsDataSHIPMENT_STORE_CURR_QUANTITY.AsFloat -
    cdsDataQUANTITY.AsFloat;

  inherited;

  cdsData_CREATE_DATE_SHOW.Assign(cdsDataCREATE_DATE);
  cdsData_SALE_LAST_CHANGE_DATE_SHOW.Assign(cdsDataSALE_LAST_CHANGE_DATE);

  cdsData_RECEIVE_DATE_SHOW.Assign(cdsDataRECEIVE_DATE);

  cdsData_INVESTED_PRICE_DIFF_PERCENT.AsFloat:= -cdsData_INVESTED_PRICE_DIFF_PERCENT.AsFloat;

  cdsData_ENTER_SH_STORE_PERIOD.AsString:=
    dmMain.GetDateIntervalAsString(cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE.AsDateTime, cdsDataENTER_SH_STORE_PLAN_END_DATE.AsDateTime);
  cdsData_CONSUME_PERIOD.AsString:=
    dmMain.GetDateIntervalAsString(cdsDataCONSUME_BEGIN_DATE.AsDateTime, cdsDataCONSUME_END_DATE.AsDateTime);
  cdsData_CONSUMER_DEPT_IDENTIFIER.AsString:=
    frConsumerDept.cdsTreeNodeNODE_NO.AsString;
  cdsData_SECONDARY_CURRENCY_ABBREV.AsString:= lblSecondaryCurrencyAbbrev.Caption;
  cdsData_INVESTED_VALUE_DIFF_MEASURE.AsString:= lblInvestedValueDiffMeasure.Caption;

  cdsData_QUANTITY_DIFF.AsString:=
    IfThen(actToggleQuantityDiffMeasure.Checked, cdsData_REMAINING_QUANTITY_PERCENT.DisplayText, cdsData_REMAINING_QUANTITY.DisplayText);
  cdsData_QUANTITY_DIFF_MEASURE.AsString:=
    IfThen(actToggleQuantityDiffMeasure.Checked, cdsData_PERCENT_TEXT.DisplayText, cdsData_MEASURE_ABBREV.DisplayText);
  cdsData_INVESTED_VALUE_DIFF_REPORT.AsString:=
    IfThen(actInvestedValueDiffMeasure.Checked, cdsData_INVESTED_PRICE_DIFF_PERCENT.DisplayText, cdsData_INVESTED_VALUE_DIFF.DisplayText);
end;

procedure TfmProductionOrder.OpenDataSets;
begin
  cdsTransientStatuses.Open;
  cdsProductionOrderTypes.Open;
  cdsSaleTypes.Open;
  cdsMeasures.Open;
  cdsPriorities.Open;
  inherited;
end;

procedure TfmProductionOrder.CloseDataSets;
begin
  inherited;
  cdsPriorities.Close;
  cdsMeasures.Close;
  cdsSaleTypes.Close;
  cdsProductionOrderTypes.Close;
  cdsTransientStatuses.Close;
end;

procedure TfmProductionOrder.cdsDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;

  cdsDataMODEL_SPEC_MODEL_VARIANT_NO.Clear;

  ProductFieldChanged;

  cdsDataSHIPMENT_STORE_CODE.AsVariant:=
    IntToVar(
      dmMain.SvrProductsTree.GetProductDefaultStore(
        cdsDataPRODUCT_CODE.AsInteger,
        LoginContext.LocalBranchCode)
    );

  CheckProductData;
  RefreshSpecModelVariants;
  RefreshProductOrderQuantities;
end;

procedure TfmProductionOrder.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  if (DefaultsOrigin = doServer) then
    begin
      cdsDataSALE_BRANCH_CODE.Assign(cdsDataSALE_BRANCH_CODE);
    end
  else
    begin
      if (cdsBranches.RecordCount = 1) then
        cdsDataSALE_BRANCH_CODE.Assign(cdsBranchesBRANCH_CODE);

      cdsDataSOS_OKIDU.AsBoolean:= False;
      cdsDataCLIENT_COMPANY_CODE.Value:= 0;
      cdsDataPLANNED_STORE_DEAL_BRANCH_CODE.Value:=
        LoginContext.LocalBranchCode;
      cdsDataPRIORITY_CODE.AsInteger:= 0;

      if (cdsSaleTypes.RecordCount = 1) then
        cdsDataSALE_TYPE_CODE.Assign(cdsSaleTypesSALE_TYPE_CODE);

      cdsDataIS_AUTO_COMPLETIVE.AsBoolean:= False;

      cdsDataSALE_ORDER_TYPE_CODE.Value:= sotProductionOrder;
      cdsDataPRIORITY_CODE.AsInteger:= LoginContext.DefaultProductionOrderPriorityCode;
      cdsDataIS_WASTE_COMPENSATING_ORDER.AsBoolean:= False;
      cdsDataMODEL_DEVELOPMENT_TYPE_CODE.AsInteger:= 2;

      if (cdsWorkPriorities.RecordCount = 1) then
        cdsDataWORK_PRIORITY_CODE.Assign(cdsWorkPrioritiesWORK_PRIORITY_CODE);
    end;

  cdsDataMODEL_SPEC_MODEL_VARIANT_NO.Clear;

  cdsDataCREATE_DATE.AsDateTime:= ContextDate;
  cdsDataSALE_LAST_CHANGE_DATE.Clear;

  cdsDataFINISH_EMPLOYEE_CODE.Clear;
  cdsDataFINISH_DATE.Clear;
  cdsDataFINISH_TIME.Clear;

  cdsDataANNUL_EMPLOYEE_CODE.Clear;
  cdsDataANNUL_DATE.Clear;
  cdsDataANNUL_TIME.Clear;

  RefreshSpecModelVariants;
end;

procedure TfmProductionOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  SaleNo: Integer;
begin
  SaleNo:= cdsDataSALE_NO.AsInteger;

  inherited;

  if (ModalResult = mrOK) and (SaleNo <> cdsDataSALE_NO.AsInteger) then
    ShowMessageFmtEx(SProductionOrderNewNo, [cdsDataSALE_NO.AsInteger]);
end;

procedure TfmProductionOrder.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
  v: Boolean;

begin
  inherited;

  if cdsData.Active then
    begin
      ro:= ((not cdsDataFINISH_EMPLOYEE_CODE.IsNull or
             not cdsDataANNUL_EMPLOYEE_CODE.IsNull) and
            not CanCorrect and
            (EditMode = emEdit)) or
           (EditMode = emReadOnly);

      cbSaleType.ReadOnly:= ro;
      edtQuantity.ReadOnly:= ro;
      cbModelDevelopmentType.ReadOnly:= ro;
      cbPriority.ReadOnly:= ro;
      cbWorkPriority.ReadOnly:= ro;
      moNotes.ReadOnly:= ro;
      cbTransientStatus.ReadOnly:= ro;

      cbSaleType.Color:= ReadOnlyColors[ro];

      if cdsProductOrderQuantities.Active and
         not cdsDataQUANTITY.IsNull and
         ( ( (not cdsProductOrderQuantitiesMIN_ORDER_QUANTITY.IsNull) and
             (cdsDataQUANTITY.AsFloat < cdsProductOrderQuantitiesMIN_ORDER_QUANTITY.AsFloat) ) or
           ( (not cdsProductOrderQuantitiesMAX_ORDER_QUANTITY.IsNull) and
             (cdsDataQUANTITY.AsFloat > cdsProductOrderQuantitiesMAX_ORDER_QUANTITY.AsFloat) ) or
           ( (cdsProductOrderQuantitiesBALANCE_QUANTITY.AsFloat > 0) and
             (Frac(cdsDataQUANTITY.AsFloat / cdsProductOrderQuantitiesBALANCE_QUANTITY.AsFloat) > 0) ) ) then
        edtQuantity.Color:= clYellow
      else
        edtQuantity.Color:= ReadOnlyColors[ro];

      cbModelDevelopmentType.Color:= ReadOnlyColors[ro];
      cbPriority.Color:= ReadOnlyColors[ro];
      moNotes.Color:= ReadOnlyColors[ro];
      cbTransientStatus.Color:= ReadOnlyColors[ro];

      with cbSaleBranch do
        begin
          ReadOnly:= (EditMode <> emInsert);
          Color:= ReadOnlyColors[ReadOnly];
        end;   { with }

      with cbModelSpecModelVariant do
        begin
          ReadOnly:=
            HadModel or
            cdsDataMANUFACTURE_QUANTITY.IsNull or
            (not CanCorrect) or
            (not LoginContext.HasUserActivity(uaSelectDefaultSpecModelVariant));
          Color:= ReadOnlyColors[ReadOnly];
        end;   { with }
    end;   { if }

  edtWorkdaysToExist.ReadOnly:=
    (EditMode = emReadOnly) or
    (not CanCorrect) or
    (not cdsData.Active) or
    (cdsDataTRANSIENT_STATUS_CODE.AsInteger <> tsTransient);

  edtWorkdaysToExist.Color:= IfThen(edtWorkdaysToExist.ReadOnly, clBtnFace, clWindow);

  cbProductionOrderType.ReadOnly:=
    (EditMode <> emInsert) or (not cdsData.Active);

  cbProductionOrderType.Color:= IfThen(cbProductionOrderType.ReadOnly, clBtnFace, clWindow);

  edtStatus.Hint:= cdsData_ML_STATE_FULL_NAME.AsString;
  edtStatus.Color:= cdsData_ML_STATE_COLOR.AsInteger;

  v:= cdsData.Active and
      (cdsDataTRANSIENT_STATUS_CODE.AsInteger = tsTransient) and
      cdsData_PROD_ORDER_TYPE_IS_REVERSIBLE.AsBoolean;

  pnlAutoCompleteCheck.Visible:= v;
  pnlAutoComplete.Visible:= v;

  pnlAutoCompleteCheck.Enabled:=
    v and (EditMode <> emReadOnly);

  ro:= (not cdsData.Active) or
       ((not cdsDataFINISH_EMPLOYEE_CODE.IsNull or
         not cdsDataANNUL_EMPLOYEE_CODE.IsNull) and
        not CanCorrect and
        (EditMode = emEdit)
       ) or
       (EditMode = emReadOnly);

  ReplacedDBComboBox(cbIsWasteCompensatingOrder).XReadOnly:= ro;
  ReplacedDBComboBox(cbIsWasteCompensatingOrder).Enabled:= not ro;
  ReplacedDBComboBox(cbIsWasteCompensatingOrder).XColor:= ReadOnlyColors[ro];

  ro:= ro or (ReplacedDBComboBox(cbIsWasteCompensatingOrder).XItemIndex <> 1);

  cbWastingSaleBranch.ReadOnly:= ro;
  edtWastingSaleNo.ReadOnly:= ro;
  cbWastingSaleBranch.Color:= ReadOnlyColors[ro];
  edtWastingSaleNo.Color:= ReadOnlyColors[ro];

  pnlWastingSale.Visible:= (ReplacedDBComboBox(cbIsWasteCompensatingOrder).XItemIndex = 1);

  with edtStructureCoef.Field.DataSet do
    if Active and
       (not FieldByName('LEVEL_NO').IsNull) and
       (FieldByName('LEVEL_NO').AsInteger = FieldByName('MAX_LEVEL_NO').AsInteger) then
      edtStructureCoef.Color:= $00C5EFC2
    else
      edtStructureCoef.Color:= ccTotalLateNotSelected;

  SetDiffEditFontColor(edtProductionStartDateDiff);
  SetDiffEditFontColor(edtEnterShipmentStoreDateDiff);
  SetDiffEditFontColor(edtProductionDateDiffMax);
  SetDiffEditFontColor(edtProductionDateDiffMin);

  ro:= (EditMode = emReadOnly) or not CanCorrect;
  cbModelDevelopmentType.ReadOnly:= ro;
  cbModelDevelopmentType.Color:= ReadOnlyColors[ro];

  frEnterShStorePlanDate.BeginDateReadOnly:=
    HadModel or (not cdsDataMODEL_SPEC_MODEL_VARIANT_NO.IsNull);
  frEnterShStorePlanDate.PeriodDaysReadOnly:=
    frEnterShStorePlanDate.BeginDateReadOnly;
end;

procedure TfmProductionOrder.cdsDataBeforePost(DataSet: TDataSet);
var
  AcquireBatchCount: Real;
  PrevQuantity: Real;
  NextQuantity: Real;
  QuantityBtnCaption: string;
  PrevQuantityBtnCaption: string;
  NextQuantityBtnCaption: string;
begin
  if (cdsDataTRANSIENT_STATUS_CODE.AsInteger = tsTransient) then
    CheckRequiredField(cdsDataWORKDAYS_TO_EXIST);

  if cdsDataIS_WASTE_COMPENSATING_ORDER.AsBoolean then
    CheckRequiredFields([cdsDataWASTING_SALE_BRANCH_CODE, cdsDataWASTING_SALE_NO])
  else
    begin
      cdsDataWASTING_SALE_BRANCH_CODE.Clear;
      cdsDataWASTING_SALE_NO.Clear;
    end;

  inherited;

  CheckRequiredField(cdsDataSHIPMENT_STORE_CODE);

  if (cdsDataQUANTITY.AsFloat <= 0) then
    begin
      cdsDataQUANTITY.FocusControl;
      raise Exception.Create(SNonPositiveQuantity);
    end;   { if }

  if cdsProductOrderQuantities.Active and
     (cdsProductOrderQuantitiesACQUIRE_BATCH_QUANTITY.AsFloat > 0) then
    begin
      AcquireBatchCount:= cdsDataQUANTITY.AsFloat / cdsProductOrderQuantitiesACQUIRE_BATCH_QUANTITY.AsFloat;
      if (Frac(AcquireBatchCount) > 0) then
        begin
          PrevQuantity:= Trunc(AcquireBatchCount) * cdsProductOrderQuantitiesACQUIRE_BATCH_QUANTITY.AsFloat;
          NextQuantity:= PrevQuantity + cdsProductOrderQuantitiesACQUIRE_BATCH_QUANTITY.AsFloat;

          QuantityBtnCaption:= cdsDataQUANTITY.DisplayText + ' ' + cdsData_MEASURE_ABBREV.DisplayText + ' (' + SEntered + ')' ;
          PrevQuantityBtnCaption:= FormatFloat(cdsDataQUANTITY.DisplayFormat, PrevQuantity) + ' ' + cdsData_MEASURE_ABBREV.DisplayText;
          NextQuantityBtnCaption:= FormatFloat(cdsDataQUANTITY.DisplayFormat, NextQuantity) + ' ' + cdsData_MEASURE_ABBREV.DisplayText;

          case MessageDlgBtn(SNotAquireBatchQuantity, mtWarning, [PrevQuantityBtnCaption, QuantityBtnCaption, NextQuantityBtnCaption, bcCancel], 0) of
            -1: Abort;
            0: cdsDataQUANTITY.AsFloat:= PrevQuantity;
            2: cdsDataQUANTITY.AsFloat:= NextQuantity;
          end;
        end;
    end;
end;

procedure TfmProductionOrder.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frConsumeDateInterval) then
    begin
      AFrame.ReadOnly:= cbSaleType.ReadOnly;
      Exit;
    end;  { if }

  if (AFrame = frProduct) or (AFrame = frProductionDept) then
    begin
      AFrame.ReadOnly:=
        ( (not cdsDataFINISH_EMPLOYEE_CODE.IsNull or
           not cdsDataANNUL_EMPLOYEE_CODE.IsNull) and
          not CanCorrect and
          (EditMode = emEdit) ) or
        HadModel;

      Exit;
    end;   { if }

  if (AFrame = frShipmentStore) or
     (AFrame = frEnterShStorePlanDate) or
     (AFrame = frManagerEmployee) or
     (AFrame = frConsumerDept) then
    begin
      AFrame.ReadOnly:=
        ( ( not cdsDataFINISH_EMPLOYEE_CODE.IsNull or
            not cdsDataANNUL_EMPLOYEE_CODE.IsNull ) and
          not CanCorrect and
         (EditMode = emEdit)
        ) or
        (EditMode = emReadOnly);

      Exit;
    end;

  if (AFrame = frOkidu) then
    begin
      AFrame.ReadOnly:=
        ( ( not cdsDataFINISH_EMPLOYEE_CODE.IsNull or
            not cdsDataANNUL_EMPLOYEE_CODE.IsNull ) and
          not CanCorrect and
         (EditMode = emEdit)
        ) or
        (EditMode = emReadOnly) or
        (not LoginContext.HasUserActivity(uaSelectOKIDU));

      Exit;
    end;

  if (AFrame = frCreateDate) or
     (AFrame = frSaleLineChangeDate) or
     (AFrame = frProductionStartPlanDate)then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  inherited;
end;

procedure TfmProductionOrder.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  FWasFinished:=
    not cdsDataFINISH_EMPLOYEE_CODE.IsNull;
  FWasAnnuled:=
    not cdsDataANNUL_EMPLOYEE_CODE.IsNull;

  RefreshProductOrderQuantities;
end;

procedure TfmProductionOrder.FormCreate(Sender: TObject);
begin
  inherited;

  frProduct.TreeDetailSelection:= tdsInstance;

  with lblSecondaryCurrencyAbbrev do
    Caption:= Format(Caption, [LoginContext.SecondaryCurrencyAbbrev]);

  RegisterDateFields([
    cdsData_CREATE_DATE_SHOW,
    cdsData_SALE_LAST_CHANGE_DATE_SHOW,
    cdsData_RECEIVE_DATE_SHOW,
    cdsDataCONSUME_BEGIN_DATE]);

  frManagerEmployee.FieldNames:= 'MANAGER_EMPLOYEE_CODE';
  frManagerEmployee.SpecialProffesionEmployee:= speManager;
  frManagerEmployee.DocButtonVisible:= False;

  frProductionStartPlanDate.FieldNames:= 'PRODUCTION_START_PLAN_DATE';
  frProductionDept.FieldNames:= 'PRODUCTION_DEPT_CODE';
  frProductionDept.TreeNodeNameVisible:= False;

  frShipmentStore.FieldNames:= 'SHIPMENT_STORE_CODE';
  frShipmentStore.SelectStore:= True;
  frShipmentStore.TreeNodeNameVisible:= False;

  frEnterShStorePlanDate.FieldNames:= 'ENTER_SH_STORE_PLAN_BEGIN_DATE; ENTER_SH_STORE_PLAN_END_DATE';
  frEnterShStorePlanDate.EndDateChanged:= frEnterShStorePlanDateEndDateChanged;

  frOkidu.FieldNames:= 'OKIDU_EMPLOYEE_CODE';
  frOkidu.SpecialProffesionEmployee:= speOkidu;
  frOkidu.DocButtonVisible:= False;

  frConsumerDept.FieldNames:= 'CONSUMER_DEPT_CODE';
  frConsumeDateInterval.FieldNames:= 'CONSUME_BEGIN_DATE; CONSUME_END_DATE';

  frCreateDate.FieldNames:= 'CREATE_DATE';
  frSaleLineChangeDate.FieldNames:= 'SALE_LAST_CHANGE_DATE';

  ReportClass:= TrptProductionOrder;

  cdsDataSHIPMENT_STORE_CODE.Index:= cdsData.FieldCount - 1;
end;

procedure TfmProductionOrder.GetArrowsInfo(Infos: TObjectList<TArrowInfo>);
begin
  inherited GetArrowsInfo(Infos);

  Infos.Add(TArrowInfo.Create(
    saCreateDate,
    tCreateDate,
    not cdsDataCREATE_DATE.IsNull,
    cdsDataCREATE_DATE.AsDateTime
  ));

  Infos.Add(TArrowInfo.Create(
    saSaleLastChangeDate,
    tSaleLastChangeDate,
    not cdsDataSALE_LAST_CHANGE_DATE.IsNull,
    cdsDataSALE_LAST_CHANGE_DATE.AsDateTime
  ));

  Infos.Add(TArrowInfo.Create(
    saReceiveDate, tReceiveDate,
    not cdsDataCONSUME_BEGIN_DATE.IsNull,
    cdsDataCONSUME_BEGIN_DATE.AsDateTime
  ));
end;

procedure TfmProductionOrder.cdsDataSALE_BRANCH_CODEChange(
  Sender: TField);
begin
  inherited;

  cdsDataSALE_NO.Value:=
    dmMain.SvrSales.GetNewSaleNo(cdsDataSALE_BRANCH_CODE.AsInteger);
end;

procedure TfmProductionOrder.cdsDataQUANTITYChange(Sender: TField);
begin
  inherited;
  cdsDataMANUFACTURE_QUANTITY.Assign(cdsDataQUANTITY);
end;

procedure TfmProductionOrder.GetDateFields(Fields: TList<TField>);
begin
  inherited;
  Fields.Add(cdsDataCREATE_DATE);
  Fields.Add(cdsDataSALE_LAST_CHANGE_DATE);
  Fields.Add(cdsDataCONSUME_BEGIN_DATE);
end;

procedure TfmProductionOrder.Initialize;
begin
  inherited;

  if (IntToProdOrderBaseType(FProductionOrderBaseTypeCode) = pobtOccCover) and
     (LoginContext.OccupationRootProductCode > 0) then
    frProduct.RootCode:= LoginContext.OccupationRootProductCode;

  FInitialIsForwardAutoCompleted:= cdsDataIS_FORWARD_AUTO_COMPLETED.AsBoolean;
end;

procedure TfmProductionOrder.ProductFieldChanged;
begin
  DoProductFieldChanged(cdsDataPRODUCT_CODE, cdsDataPRODUCT_NAME,
    cdsDataPRODUCT_NO, cdsDataMEASURE_CODE, nil, cdsDataACCOUNT_MEASURE_COEF,
    nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
    cdsDataTRANSIENT_STATUS_CODE, cdsDataWORKDAYS_TO_EXIST);
end;

procedure TfmProductionOrder.actForwardAutoCompleteUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    cdsDataIS_AUTO_COMPLETIVE.AsBoolean and
    (HadModel or (not cdsDataMODEL_SPEC_MODEL_VARIANT_NO.IsNull)) and
    (not cdsDataIS_FORWARD_AUTO_COMPLETED.AsBoolean) and
    (not cdsDataHAS_FORWARD_START_STORE_DEALS.AsBoolean);
end;

procedure TfmProductionOrder.actForwardAutoCompleteExecute(
  Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  cdsDataIS_FORWARD_AUTO_COMPLETED.AsBoolean:= True;
end;

procedure TfmProductionOrder.actBackwardAutoCompleteUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    cdsDataIS_AUTO_COMPLETIVE.AsBoolean and
    (HadModel or (not cdsDataMODEL_SPEC_MODEL_VARIANT_NO.IsNull)) and
    (not cdsDataIS_BACKWARD_AUTO_COMPLETED.AsBoolean) and
    FInitialIsForwardAutoCompleted and
    (not cdsDataHAS_BACKWARD_START_STORE_DEALS.AsBoolean);
end;

procedure TfmProductionOrder.actBackwardAutoCompleteExecute(
  Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  cdsDataIS_BACKWARD_AUTO_COMPLETED.AsBoolean:= True;
end;

procedure TfmProductionOrder.cdsDataMODEL_SPEC_MODEL_VARIANT_NOChange(
  Sender: TField);
begin
  inherited;

  if Sender.IsNull then
    begin
      cdsDataIS_FORWARD_AUTO_COMPLETED.AsBoolean:= False;
      cdsDataIS_BACKWARD_AUTO_COMPLETED.AsBoolean:= False;
    end;
end;

procedure TfmProductionOrder.cdsDataAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FErrorMsg:= OwnerData;
end;

procedure TfmProductionOrder.cdsDataReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if (FErrorMsg <> '') then
    E.Message:= FErrorMsg + SMonospaced;

  inherited;
end;

procedure TfmProductionOrder.frProductactShowProductVIMExecute(
  Sender: TObject);
begin
  if cdsDataSHIPMENT_DATE.IsNull then
    frProduct.VIMDate:= ContextDate
  else
    frProduct.VIMDate:= cdsDataSHIPMENT_DATE.AsDateTime;

  inherited;
  frProduct.actShowProductVIMExecute(Sender);
end;

procedure TfmProductionOrder.actConcludeSaleExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaProductionOrderConclude);
  inherited;
end;

procedure TfmProductionOrder.actAnnulSaleExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaProductionOrderAnnul);
  inherited;
end;

procedure TfmProductionOrder.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (Field = cdsDataCONSUME_BEGIN_DATE) then
    UpdateTimeGraphic;
end;

procedure TfmProductionOrder.cdsDataTRANSIENT_STATUS_CODEChange(
  Sender: TField);
begin
  inherited;

  if (Sender.AsInteger <> tsTransient) then
    begin
      cdsDataWORKDAYS_TO_EXIST.Clear;

      if (EditMode = emInsert) then
        cdsDataIS_AUTO_COMPLETIVE.AsBoolean:= False;
    end;
end;

procedure TfmProductionOrder.cdsDataPRODUCTION_ORDER_TYPE_CODEChange(
  Sender: TField);
begin
  inherited;
  if not cdsData_PROD_ORDER_TYPE_IS_REVERSIBLE.AsBoolean then
    cdsDataIS_AUTO_COMPLETIVE.AsBoolean:= False;
end;

procedure TfmProductionOrder.cdsProductionOrderTypesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (EditMode <> emInsert) or
    (cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE.AsInteger = FProductionOrderBaseTypeCode) or
    ( (FProductionOrderBaseTypeCode = 0) and
      LoginContext.HasUserActivity(uaNewProductionOrderBase + cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE.AsInteger)
    );
end;

procedure TfmProductionOrder.actToggleQuantityDiffMeasureUpdate(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      edtQuantityDiff.DataField:=
        IfThen(Checked, cdsData_REMAINING_QUANTITY_PERCENT.FieldName, cdsData_REMAINING_QUANTITY.FieldName);
      txtQuantityDiffMeasure.DataField:=
        IfThen(Checked, cdsData_PERCENT_TEXT.FieldName, cdsData_MEASURE_ABBREV.FieldName);
    end;  { with }
end;

procedure TfmProductionOrder.actInvestedValueDiffMeasureUpdate(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      edtInvestedValueDiff.DataField:=
        IfThen(Checked, cdsData_INVESTED_PRICE_DIFF_PERCENT.FieldName, cdsData_INVESTED_VALUE_DIFF.FieldName);
      lblInvestedValueDiffMeasure.Caption:=
        IfThen(Checked, '%', LoginContext.SecondaryCurrencyAbbrev);
    end;  { with }
end;

procedure TfmProductionOrder.cdsDataPRODUCTION_WORKDAYSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if HadModel then
    Text:= Sender.AsString
  else
    Text:= '';
end;

class function TfmProductionOrder.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmProductionOrder.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, btnDocs, dotSale, cdsData);
end;

procedure TfmProductionOrder.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmProductionOrder.cdsDataENTER_SH_STORE_PLAN_BEGIN_DATEChange(
  Sender: TField);
begin
//  inherited;  do nothing
end;

procedure TfmProductionOrder.cdsDataENTER_SH_STORE_PLAN_END_DATEChange(
  Sender: TField);
begin
//  inherited; do nothing
  CalcProductionStartPlanDate;
  RefreshSpecModelVariants;
  RefreshProductOrderQuantities;
end;

procedure TfmProductionOrder.RefreshProductOrderQuantities;
begin
  cdsProductOrderQuantities.Close;
  cdsProductOrderQuantities.ParamByName('PRODUCT_CODE').Value:= cdsDataPRODUCT_CODE.AsVariant;
  cdsProductOrderQuantities.ParamByName('THE_DATE').Value:=
    IfThen(cdsDataENTER_SH_STORE_PLAN_END_DATE.IsNull, ContextDate, cdsDataENTER_SH_STORE_PLAN_END_DATE.AsVariant);
  cdsProductOrderQuantities.Open;

  if cdsDataPRODUCT_CODE.IsNull then
    edtQuantity.Hint:= ''
  else
    edtQuantity.Hint:=
      Format('%s: %s', [
        SOrderQuantity,
        GetOrderQuantitiesText(
          cdsProductOrderQuantitiesMIN_ORDER_QUANTITY.AsVariant,
          cdsProductOrderQuantitiesMAX_ORDER_QUANTITY.AsVariant,
          cdsProductOrderQuantitiesACQUIRE_BATCH_QUANTITY.AsVariant,
          cdsData_MEASURE_ABBREV.AsString)
      ]);
end;

end.

