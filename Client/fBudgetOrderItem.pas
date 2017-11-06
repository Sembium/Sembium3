unit fBudgetOrderItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBevelEditForm, ToolWin, ComCtrls,
  JvDBLookup, Mask, DBCtrls, fDateIntervalFrame, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDeptFieldEditFrameBald, fBaseFrame, fDBFrame,
  fFieldEditFrame, fEmployeeFieldEditFrame, JvLabel, JvDBCombobox,
  dDocClient, uClientTypes, AbmesFields, fEmployeeFieldEditFrameBald,
  JvExStdCtrls, JvExControls, JvComponent, JvCaptionButton,
  uBudgetClientUtils, uDeliveryUtils, fDateFieldEditFrame, JvComponentBase,
  fTreeOnlyNodeFieldEditFrame, fProductFieldEditFrame, fProductFieldEditFrameLabeled;

type
  TfmBudgetOrderItem = class(TEditForm)
    pnlMain: TPanel;
    dsBudgetOrder: TDataSource;
    actConfirm: TAction;
    actUnconfirm: TAction;
    actDocumentation: TAction;
    pnlBudgetOrderItemIsAnnuled: TPanel;
    chkBudgetOrderItemIsAnnuled: TCheckBox;
    pnlBudgetOrderItemIsClosed: TPanel;
    chkBudgetOrderItemIsClosed: TCheckBox;
    pnlCloseAndAnnulButtons: TPanel;
    actCloseBudgetOrderItem: TAction;
    actAnnulBudgetOrderItem: TAction;
    btnCloseBudgetOrderItem: TBitBtn;
    btnAnnulBudgetOrderItem: TBitBtn;
    actReconsider: TAction;
    gbLimitBelonging: TGroupBox;
    gbBudgetOrder: TGroupBox;
    lblBOStatus: TLabel;
    lblBudgetOrderBranch: TLabel;
    lblBudgetOrderCode: TLabel;
    lblRegularityType: TLabel;
    edtBOStatus: TDBEdit;
    cbBudgetOrderBranch: TJvDBLookupCombo;
    edtBudgetOrderCode: TDBEdit;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    cbRegularityType: TJvDBLookupCombo;
    gbGenerator: TGroupBox;
    frGeneratorDept: TfrDeptFieldEditFrameBald;
    gbDeveloperDept: TGroupBox;
    frDeveloperDept: TfrDeptFieldEditFrameBald;
    gbBudgetOrderDescription: TGroupBox;
    edtDescription: TDBEdit;
    gbDates: TGroupBox;
    lblDeviation: TLabel;
    frDates: TfrDateIntervalFrame;
    edtDeviation: TDBEdit;
    gbBudgetOrderPrices: TGroupBox;
    lblTotalPrice: TLabel;
    lblPlanTotalPrice: TLabel;
    lblRealTotalPrice: TLabel;
    edTotalPrice: TDBEdit;
    edtPlanTotalPrice: TDBEdit;
    edtRealTotalPrice: TDBEdit;
    cdsBOIOrdersParams: TAbmesClientDataSet;
    cdsBOIOrdersParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsBOIOrdersParamsBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsBOIOrdersParamsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    actBOIOrders: TAction;
    lblFormCaption: TLabel;
    gbBudgetOrderItemStuff: TGroupBox;
    gbIdentification: TGroupBox;
    lblStatus: TLabel;
    lblNo: TLabel;
    edtStatus: TDBEdit;
    edtNo: TDBEdit;
    gbConsumer: TGroupBox;
    lblTreeNodeName: TLabel;
    lblDistributionType: TLabel;
    frConsumerDept: TfrDeptFieldEditFrameBald;
    cbDistributionType: TJvDBLookupCombo;
    gbItemDates: TGroupBox;
    frItemDates: TfrDateIntervalFrame;
    gbPrices: TGroupBox;
    lblDistributedSinglePrice: TLabel;
    lblDistributionDateUnit: TLabel;
    lblTotalPrice2: TLabel;
    lblBaseCurrency: TLabel;
    lblTo: TLabel;
    lblEqualTo2: TLabel;
    lblBOPricePercent: TLabel;
    edtDistributedSinglePrice: TDBEdit;
    cbDistributionDateUnit: TJvDBLookupCombo;
    edtTotalPrice: TDBEdit;
    edtBOPricePercent: TDBEdit;
    gbDeviation: TGroupBox;
    lblRemainingTotalPrice: TLabel;
    lblBaseCurrency2: TLabel;
    lblEqualTo: TLabel;
    lblPercents4: TLabel;
    lblPercents5: TLabel;
    lblDeviationPercent: TLabel;
    edtRemainingTotalPrice: TDBEdit;
    edtRemainingTotalPricePercent: TDBEdit;
    edtDeviationPercent: TDBEdit;
    gbBudgetOrderItemOrders: TGroupBox;
    btnOrders: TBitBtn;
    edtOrderCount: TDBEdit;
    grTrackingSummary: TGroupBox;
    lblAccountTotalPrice: TLabel;
    lblBaseCurrency3: TLabel;
    edtAccountTotalPrice: TDBEdit;
    gbConfirm: TGroupBox;
    lblDecisionEnterEmployee: TLabel;
    lblDecisionEnterDate: TLabel;
    lblDecisionEmployee: TLabel;
    lblDecisionDate: TLabel;
    btnConfirm: TBitBtn;
    btnUnconfirm: TBitBtn;
    btnReconsider: TBitBtn;
    frDecisionEnterEmployee: TfrEmployeeFieldEditFrameBald;
    frDecisionEnterDate: TfrDateFieldEditFrame;
    frDecisionEmployee: TfrEmployeeFieldEditFrameBald;
    frDecisionDate: TfrDateFieldEditFrame;
    lblPercents3: TLabel;
    lblBaseCurrency4: TLabel;
    tlbItemDocs: TToolBar;
    btnItemDocs: TToolButton;
    actBODoc: TAction;
    frBudgetClass: TfrProductFieldEditFrameLabeled;
    cdsBOIOrdersParamsBUDGET_ORDER_CLASS_CODE: TAbmesFloatField;
    lblBudgetOrderItemType: TLabel;
    cdsBOIOrdersParamsMIN_STATUS_CODE: TAbmesFloatField;
    cdsBOIOrdersParamsMAX_STATUS_CODE: TAbmesFloatField;
    cdsBOIOrdersParamsMIN_ITEM_STATUS_CODE: TAbmesFloatField;
    cdsBOIOrdersParamsMAX_ITEM_STATUS_CODE: TAbmesFloatField;
    cdsBOIOrdersParamsMIN_BOIO_STATUS_CODE: TAbmesFloatField;
    cdsBOIOrdersParamsMAX_BOIO_STATUS_CODE: TAbmesFloatField;
    gbTotalPriceDeviation: TGroupBox;
    lblPercents2: TLabel;
    edtExpenseSpeedPercent: TDBEdit;
    lblExpenseSpeedPercent: TLabel;
    lblPercents1: TLabel;
    edtPlanToAccountPricePercent: TDBEdit;
    lblPrimaryCurrency: TLabel;
    edtTotalPriceDeviation: TDBEdit;
    lblEqualTo3: TLabel;
    edtRemainingWorkdaysPercent: TDBEdit;
    lblRemainingWorkdaysPercent: TLabel;
    lblTotalPriceDeviation: TLabel;
    cbBudgetOrderItemType: TJvDBLookupCombo;
    btnDeliveries: TBitBtn;
    actDeliveries: TAction;
    cdsDeliveriesParams: TAbmesClientDataSet;
    cdsDeliveriesParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveriesParamsBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsDeliveriesParamsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsDeliveriesParamsMAX_STATUS_CODE: TAbmesFloatField;
    edtBOIOPlanTotalPrice: TDBEdit;
    lblBOIOPlanTotalPrice: TLabel;
    cdsBOIOrdersParamsBUDGET_ORDER_ITEM_TYPE: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actConfirmUpdate(Sender: TObject);
    procedure actConfirmExecute(Sender: TObject);
    procedure actUnconfirmUpdate(Sender: TObject);
    procedure actUnconfirmExecute(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actDocumentationExecute(Sender: TObject);
    procedure actCloseBudgetOrderItemExecute(Sender: TObject);
    procedure actCloseBudgetOrderItemUpdate(Sender: TObject);
    procedure actAnnulBudgetOrderItemExecute(Sender: TObject);
    procedure actAnnulBudgetOrderItemUpdate(Sender: TObject);
    procedure actBOIOrdersUpdate(Sender: TObject);
    procedure actBOIOrdersExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actReconsiderExecute(Sender: TObject);
    procedure actReconsiderUpdate(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure actBODocExecute(Sender: TObject);
    procedure actDeliveriesExecute(Sender: TObject);
    procedure actDeliveriesUpdate(Sender: TObject);
  private
    FApplyUpdatesAction: TAction;
    FTouchingIsForReconsideration: Boolean;
    FReinitializeInEditModeAction: TAction;
    FBudgetMode: TBudgetMode;
    FDecisionTaken: Boolean;
  protected
    procedure ChangeEditMode(var AEditMode: TEditMode); override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    class function CanUseDocs: Boolean; override;
    function GetOriginalFormCaption: string; override;
  public
    procedure Initialize; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AApplyUpdatesAction: TAction = nil;
      AReinitializeInEditModeAction: TAction = nil;
      ABudgetMode: TBudgetMode = bmExpense); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AApplyUpdatesAction: TAction = nil;
      AReinitializeInEditModeAction: TAction = nil;
      ABudgetMode: TBudgetMode = bmExpense): Boolean;
  end;

implementation

uses
  uLoginContext, Math, uColorConsts, uClientUtils, uUtils, 
  uDocUtils, AbmesDialogs, fDataForm,
  uUserActivityConsts, fBaseForm, fTreeSelectForm,
  fBOIProductOrders, fBOICompanyOrders,
  fBOIWasteOrders, uClientConsts, uBOIOrderTypes, uProducts, dMain, uClientDateTime,
  fBOIMarkingOrders, fDeliveries, uBudgetUtils, uProductionOrderTypes,
  fBOIOrders;

resourcestring
  SCannotAnnulBudgetOrderItem = 'Не може да анулирате Лимита, тъй като по него има отчетени Ордери';
  SConfirmBudgetOrderSave = 'За да създадете Ордер трябва първо да запишете Бордерото. Желаете ли да продължите?';
  SConfirmAnnulBudgetOrderItem = 'След Анулиране Лимитът не може да се поднови. Неанулираните Ордери по Лимит също ще бъдат анулирани. Желаете ли продължение?';
  SConfirmCloseBudgetOrderItem = 'След Приключване Лимитът не може да се поднови. Неанулираните/Неприключени Ордери по Лимит също ще бъдат приключени. Желаете ли продължение?';

{$R *.dfm}

{ TfmBudgetOrderItem }

procedure TfmBudgetOrderItem.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frGeneratorDept) or
     (AFrame = frDeveloperDept) or
     (AFrame = frDates) or
     (AFrame = frDecisionEnterEmployee) or
     (AFrame = frDecisionEnterDate) then
    AFrame.ReadOnly:= True
  else
    begin
      if (AFrame = frBudgetClass) then
        AFrame.ReadOnly:= //(EditMode <> emInsert)
          (EditMode = emReadOnly) or
          dsData.DataSet.FieldByName('IS_CONFIRMED').AsBoolean or
          dsData.DataSet.FieldByName('IS_CANCELED').AsBoolean or
          not dsData.DataSet.FieldByName('CLOSE_EMPLOYEE_CODE').IsNull or
          not dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull or
          (dsData.DataSet.FieldByName('BOI_ORDER_COUNT').AsFloat > 0)
      else
        begin
          if (AFrame = frConsumerDept) or
             (AFrame = frItemDates) then
            AFrame.ReadOnly:=
              (EditMode = emReadOnly) or
              dsData.DataSet.FieldByName('IS_CONFIRMED').AsBoolean or
              dsData.DataSet.FieldByName('IS_CANCELED').AsBoolean or
              not dsData.DataSet.FieldByName('CLOSE_EMPLOYEE_CODE').IsNull or
              not dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull
          else
            begin
              if (AFrame = frDecisionEmployee) or (AFrame = frDecisionDate) then
                AFrame.ReadOnly:= (EditMode <> emReadOnly) and not FDecisionTaken
              else
                inherited SetDBFrameReadOnly(AFrame);
            end;
        end;
    end;
end;

procedure TfmBudgetOrderItem.Initialize;
begin
  dsBudgetOrder.DataSet:= OuterDataSet.DataSetField.DataSet;
  
  frGeneratorDept.dsData.DataSet:= OuterDataSet.DataSetField.DataSet;
  frDeveloperDept.dsData.DataSet:= OuterDataSet.DataSetField.DataSet;
  frDates.dsData.DataSet:= OuterDataSet.DataSetField.DataSet;

  inherited;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotBudgetOrderItem, dsData.DataSet);
end;

procedure TfmBudgetOrderItem.FormCreate(Sender: TObject);
begin
  inherited;
  frGeneratorDept.FieldNames:= 'GENERATOR_DEPT_CODE';
  frDeveloperDept.FieldNames:= 'DEVELOPER_DEPT_CODE';
  frBudgetClass.FieldNames:= 'BUDGET_PRODUCT_CODE';
  frBudgetClass.ProductClass:= pcBudget;
  frBudgetClass.TreeDetailSelection:= tdsInstance;
  frDecisionEnterEmployee.FieldNames:= 'DECISION_ENTER_EMPLOYEE_CODE';
  frDecisionEnterDate.FieldNames:= 'DECISION_ENTER_DATE';
  frDecisionEmployee.FieldNames:= 'DECISION_APPROVE_EMPLOYEE_CODE';
  frDecisionDate.FieldNames:= 'DECISION_APPROVE_DATE';
  lblBaseCurrency.Caption:= LoginContext.BaseCurrencyAbbrev;
  lblBaseCurrency2.Caption:= LoginContext.BaseCurrencyAbbrev;
  lblBaseCurrency3.Caption:= LoginContext.BaseCurrencyAbbrev;
end;

procedure TfmBudgetOrderItem.actFormUpdate(Sender: TObject);
var
  IsReadOnly: Boolean;
begin
  inherited;

  if (dsData.DataSet.DataSetField.DataSet.FieldByName('_BUDGET_ORDER_STATUS_CODE').AsInteger = 7) then
    edtBOStatus.Font.Color:= clRed
  else
    edtBOStatus.Font.Color:= clWindowText;

  pnlBudgetOrderItemIsAnnuled.Visible:= not dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull;
  pnlBudgetOrderItemIsClosed.Visible:= not dsData.DataSet.FieldByName('CLOSE_EMPLOYEE_CODE').IsNull;
  pnlCloseAndAnnulButtons.Visible:=
    dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('CLOSE_EMPLOYEE_CODE').IsNull;

  IsReadOnly:=
    (EditMode = emReadOnly) or
    dsData.DataSet.FieldByName('IS_CONFIRMED').AsBoolean or
    dsData.DataSet.FieldByName('IS_CANCELED').AsBoolean or
    not dsData.DataSet.FieldByName('CLOSE_EMPLOYEE_CODE').IsNull or
    not dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull;

  cbDistributionType.ReadOnly:= IsReadOnly;
  cbDistributionType.Color:= ReadOnlyColors[cbDistributionType.ReadOnly];
  edtDistributedSinglePrice.ReadOnly:= IsReadOnly;
  edtDistributedSinglePrice.Color:= ReadOnlyColors[edtDistributedSinglePrice.ReadOnly];
  cbDistributionDateUnit.ReadOnly:= IsReadOnly;
  cbDistributionDateUnit.Color:= ReadOnlyColors[cbDistributionDateUnit.ReadOnly];
  edtTotalPrice.ReadOnly:= IsReadOnly;
  edtTotalPrice.Color:= ReadOnlyColors[edtTotalPrice.ReadOnly];

  btnDocs.ImageIndex:= dsBudgetOrder.DataSet.FieldByName('HAS_DOCUMENTATION').AsInteger;
  btnItemDocs.ImageIndex:= dsData.DataSet.FieldByName('HAS_DOCUMENTATION').AsInteger;

  SetControlReadOnly(
    (EditMode <> emInsert) or not dsData.DataSet.FieldByName('BUDGET_ORDER_ITEM_TYPE_CODE').IsNull,
    cbBudgetOrderItemType);
end;

procedure TfmBudgetOrderItem.actConfirmUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    dsData.DataSet.FieldByName('CLOSE_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull and
    not (EditMode = emReadOnly) and
    not dsData.DataSet.FieldByName('IS_CONFIRMED').AsBoolean and
    not dsData.DataSet.FieldByName('IS_CANCELED').AsBoolean and
    not dsData.DataSet.FieldByName('IS_FOR_RECONSIDERATION').AsBoolean and
    not dsData.DataSet.FieldByName('BOI_DISTRIBUTION_TYPE_CODE').IsNull and
    not dsData.DataSet.FieldByName('BUDGET_PRODUCT_CODE').IsNull and
    not dsData.DataSet.FieldByName('DEPT_CODE').IsNull and
    not dsData.DataSet.FieldByName('BEGIN_DATE').IsNull and
    not dsData.DataSet.FieldByName('END_DATE').IsNull and
    not dsData.DataSet.FieldByName('DISTRIBUTION_DATE_UNIT_CODE').IsNull and
    not dsData.DataSet.FieldByName('TOTAL_PRICE').IsNull;
end;

procedure TfmBudgetOrderItem.actConfirmExecute(Sender: TObject);
begin
  inherited;

  case FBudgetMode of
    bmExpense: LoginContext.CheckUserActivity(uaBudgetOrderExpenseDecision);
    bmInvest: LoginContext.CheckUserActivity(uaBudgetOrderInvestDecision);
  else
    raise Exception.Create('unknown BudgetMode');
  end;
  
  CheckEditMode(dsData.DataSet);
  with dsData.DataSet do
    begin
      FieldByName('IS_CONFIRMED').AsBoolean:= True;
      FieldByName('IS_FOR_RECONSIDERATION').AsBoolean:= False;
      FieldByName('DECISION_ENTER_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
      FieldByName('DECISION_ENTER_DATE').AsDateTime:= ContextDate;
      FieldByName('DECISION_APPROVE_EMPLOYEE_CODE').Clear;
      FieldByName('DECISION_APPROVE_DATE').Clear;
    end;

  FDecisionTaken:= True;
end;

procedure TfmBudgetOrderItem.actUnconfirmUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    dsData.DataSet.FieldByName('CLOSE_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull and
    not (EditMode = emReadOnly) and
    not dsData.DataSet.FieldByName('IS_CONFIRMED').AsBoolean and
    not dsData.DataSet.FieldByName('IS_CANCELED').AsBoolean and
    not dsData.DataSet.FieldByName('BOI_DISTRIBUTION_TYPE_CODE').IsNull and
    not dsData.DataSet.FieldByName('BUDGET_PRODUCT_CODE').IsNull and
    not dsData.DataSet.FieldByName('DEPT_CODE').IsNull and
    not dsData.DataSet.FieldByName('BEGIN_DATE').IsNull and
    not dsData.DataSet.FieldByName('END_DATE').IsNull and
    not dsData.DataSet.FieldByName('DISTRIBUTION_DATE_UNIT_CODE').IsNull and
    not dsData.DataSet.FieldByName('TOTAL_PRICE').IsNull;
end;

procedure TfmBudgetOrderItem.actUnconfirmExecute(Sender: TObject);
begin
  inherited;

  case FBudgetMode of
    bmExpense: LoginContext.CheckUserActivity(uaBudgetOrderExpenseDecision);
    bmInvest: LoginContext.CheckUserActivity(uaBudgetOrderInvestDecision);
  else
    raise Exception.Create('unknown BudgetMode');
  end;

  CheckEditMode(dsData.DataSet);
  with dsData.DataSet do
    begin
      FieldByName('IS_CANCELED').AsBoolean:= True;
      FieldByName('IS_FOR_RECONSIDERATION').AsBoolean:= False;
      FieldByName('DECISION_ENTER_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
      FieldByName('DECISION_ENTER_DATE').AsDateTime:= ContextDate;
      FieldByName('DECISION_APPROVE_EMPLOYEE_CODE').Clear;
      FieldByName('DECISION_APPROVE_DATE').Clear;
    end;

  FDecisionTaken:= True;
end;

procedure TfmBudgetOrderItem.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmBudgetOrderItem.actDeliveriesExecute(Sender: TObject);
begin
  inherited;
  cdsDeliveriesParams.TempCreateDataSet/
    procedure begin
      cdsDeliveriesParams.SafeAppend/
        procedure begin
          cdsDeliveriesParams.AssignFields(dsData.DataSet);
          cdsDeliveriesParamsMAX_STATUS_CODE.AsInteger:= DeliveryStatusCodeAnnuled;
        end;

      TfmDeliveries.ShowForm(dmDocClient, cdsDeliveriesParams, emReadOnly, doNone, pobtEnvCover, False, False, pcNormal);
    end;
end;

procedure TfmBudgetOrderItem.actDeliveriesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('BUDGET_ORDER_ITEM_TYPE_CODE').IsNull and
    ( IntToBudgetOrderItemType(
        dsData.DataSet.FieldByName('BUDGET_ORDER_ITEM_TYPE_CODE').AsInteger
      ) = boitDeliveriesIntroducing
    );

  (Sender as TAction).Visible:= (FBudgetMode = bmInvest);
end;

procedure TfmBudgetOrderItem.actDocumentationExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, (Sender as TAction).ActionComponent as TControl, dotBudgetOrderItem, dsData.DataSet);
end;

procedure TfmBudgetOrderItem.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AApplyUpdatesAction: TAction;
  AReinitializeInEditModeAction: TAction;
  ABudgetMode: TBudgetMode);
begin
  Assert(Assigned(AApplyUpdatesAction));

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  
  FApplyUpdatesAction:= AApplyUpdatesAction;
  FReinitializeInEditModeAction:= AReinitializeInEditModeAction;
  FBudgetMode:= ABudgetMode;
end;

class function TfmBudgetOrderItem.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AApplyUpdatesAction: TAction;
  AReinitializeInEditModeAction: TAction;
  ABudgetMode: TBudgetMode): Boolean;
var
  f: TfmBudgetOrderItem;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AApplyUpdatesAction, AReinitializeInEditModeAction, ABudgetMode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmBudgetOrderItem.actCloseBudgetOrderItemExecute(
  Sender: TObject);
begin
  inherited;
  if (MessageDlgEx(SConfirmCloseBudgetOrderItem, mtConfirmation, [mbYes,mbNo], 0) = mrYes) then
    begin
      CheckEditMode(dsData.DataSet);
      dsData.DataSet.FieldByName('NULL_WHEN_CLOSED').Clear;
      dsData.DataSet.FieldByName('CLOSE_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
      dsData.DataSet.FieldByName('CLOSE_DATE').AsDateTime:= ContextDate;
      dsData.DataSet.FieldByName('CLOSE_TIME').AsDateTime:= ContextTime;
    end;
end;

procedure TfmBudgetOrderItem.actCloseBudgetOrderItemUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    dsData.DataSet.FieldByName('CLOSE_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull and
    (EditMode = emEdit);
end;

procedure TfmBudgetOrderItem.actAnnulBudgetOrderItemExecute(
  Sender: TObject);
begin
  inherited;

  if not dsData.DataSet.FieldByName('CAN_ANNUL').AsBoolean then
    raise Exception.Create(SCannotAnnulBudgetOrderItem);

  if (MessageDlgEx(SConfirmAnnulBudgetOrderItem, mtConfirmation, [mbYes,mbNo], 0) = mrYes) then
    begin
      CheckEditMode(dsData.DataSet);
      dsData.DataSet.FieldByName('NULL_WHEN_ANNULED').Clear;
      dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
      dsData.DataSet.FieldByName('ANNUL_DATE').AsDateTime:= ContextDate;
      dsData.DataSet.FieldByName('ANNUL_TIME').AsDateTime:= ContextTime;
    end;
end;

procedure TfmBudgetOrderItem.actAnnulBudgetOrderItemUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    dsData.DataSet.FieldByName('CLOSE_EMPLOYEE_CODE').IsNull and
    dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull and
    (EditMode = emEdit);
end;

procedure TfmBudgetOrderItem.ChangeEditMode(var AEditMode: TEditMode);
begin
  if ( not dsData.DataSet.FieldByName('CLOSE_EMPLOYEE_CODE').IsNull or
       not dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull ) and
     (AEditMode = emEdit) then
    AEditMode:= emReadOnly
  else
    inherited ChangeEditMode(AEditMode);
end;

class function TfmBudgetOrderItem.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmBudgetOrderItem.actBOIOrdersUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (dsData.DataSet.FieldByName('BOI_ORDER_COUNT').AsInteger > 0);
end;

procedure TfmBudgetOrderItem.actBOIOrdersExecute(Sender: TObject);

  function BOIOrdersFormClass: TfmBOIOrdersClass;
  begin
    case dsData.DataSet.FieldByName('BOI_ORDER_TYPE_CODE').AsInteger of
      boiotProduct:
        Result:= TfmBOIProductOrders;
      boiotCompany:
        Result:= TfmBOICompanyOrders;
      boiotWaste:
        Result:= TfmBOIWasteOrders;
      boiotMarking:
        Result:= TfmBOIMarkingOrders;
    else
      raise Exception.Create('fBudgetOrderItem: Unknown BOI_ORDER_TYPE_CODE');
    end;
  end;

begin
  inherited;
  cdsBOIOrdersParams.CreateDataSet;
  try
    cdsBOIOrdersParams.Append;
    try
      AssignFields(dsData.DataSet, cdsBOIOrdersParams);
      cdsBOIOrdersParamsBUDGET_ORDER_CLASS_CODE.Assign(dsData.DataSet.DataSetField.DataSet.FieldByName('BUDGET_ORDER_CLASS_CODE'));
      cdsBOIOrdersParamsMIN_STATUS_CODE.AsInteger:= MinBudgetOrderStatusCode;
      cdsBOIOrdersParamsMAX_STATUS_CODE.AsInteger:= MaxBudgetOrderStatusCode;
      cdsBOIOrdersParamsMIN_ITEM_STATUS_CODE.AsInteger:= MinBudgetOrderItemStatusCode;
      cdsBOIOrdersParamsMAX_ITEM_STATUS_CODE.AsInteger:= MaxBudgetOrderItemStatusCode;
      cdsBOIOrdersParamsMIN_BOIO_STATUS_CODE.AsInteger:= MinBOIOrderStatusCode;
      cdsBOIOrdersParamsMAX_BOIO_STATUS_CODE.AsInteger:= MaxBOIOrderStatusCode;

      cdsBOIOrdersParamsBUDGET_ORDER_ITEM_TYPE.AsInteger:=
        BudgetOrderItemTypeToFilterBOITypeInt(dsData.DataSet.FieldByName('BUDGET_ORDER_ITEM_TYPE_CODE').AsBudgetOrderItemType);

      cdsBOIOrdersParams.Post;
    except
      cdsBOIOrdersParams.Cancel;
      raise;
    end;  { try }

    BOIOrdersFormClass.ShowForm(nil, cdsBOIOrdersParams, emReadOnly, doNone, False, FBudgetMode);
  finally
    cdsBOIOrdersParams.Close;
  end;
end;

procedure TfmBudgetOrderItem.FormShow(Sender: TObject);
begin
  inherited;
  RecursivelyFormatCaptions(Self, uBudgetClientUtils.CreateCommonMsgParams(LoginContext, FBudgetMode));
end;

function TfmBudgetOrderItem.GetOriginalFormCaption: string;
begin
  Result:= lblFormCaption.Caption;
end;

procedure TfmBudgetOrderItem.actReconsiderExecute(Sender: TObject);
begin
  inherited;

  if FTouchingIsForReconsideration then
    Exit;

  CheckRequiredFields(dsData.DataSet);

  case FBudgetMode of
    bmExpense: LoginContext.CheckUserActivity(uaBudgetOrderExpenseDecision);
    bmInvest: LoginContext.CheckUserActivity(uaBudgetOrderInvestDecision);
  else
    raise Exception.Create('unknown BudgetMode');
  end;
    
  FTouchingIsForReconsideration:= True;
  try
    CheckEditMode(dsData.DataSet);
    with dsData.DataSet do
      begin
        FieldByName('IS_FOR_RECONSIDERATION').AsBoolean:= True;
        FieldByName('DECISION_ENTER_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
        FieldByName('DECISION_ENTER_DATE').AsDateTime:= ContextDate;
        FieldByName('DECISION_APPROVE_EMPLOYEE_CODE').Clear;
        FieldByName('DECISION_APPROVE_DATE').Clear;
      end;

  finally
    FTouchingIsForReconsideration:= False;
  end;
end;

procedure TfmBudgetOrderItem.actReconsiderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not (EditMode = emReadOnly) and
    not dsData.DataSet.FieldByName('IS_CONFIRMED').AsBoolean and
    not dsData.DataSet.FieldByName('IS_CANCELED').AsBoolean and
    not dsData.DataSet.FieldByName('IS_FOR_RECONSIDERATION').AsBoolean and
    not dsData.DataSet.FieldByName('BOI_DISTRIBUTION_TYPE_CODE').IsNull and
    not dsData.DataSet.FieldByName('BUDGET_PRODUCT_CODE').IsNull and
    not dsData.DataSet.FieldByName('DEPT_CODE').IsNull and
    not dsData.DataSet.FieldByName('BEGIN_DATE').IsNull and
    not dsData.DataSet.FieldByName('END_DATE').IsNull and
    not dsData.DataSet.FieldByName('DISTRIBUTION_DATE_UNIT_CODE').IsNull and
    not dsData.DataSet.FieldByName('TOTAL_PRICE').IsNull;
end;

procedure TfmBudgetOrderItem.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if not FTouchingIsForReconsideration and
     (Assigned(Field) and
     (Field.FieldName <> 'IS_FOR_RECONSIDERATION') and
     (Field.FieldName <> 'IS_CONFIRMED') and
     (Field.FieldName <> 'IS_CANCELED') and
     (Field.FieldName <> 'DECISION_ENTER_EMPLOYEE_CODE') and
     (Field.FieldName <> 'DECISION_ENTER_DATE') and
     (Field.FieldName <> 'DECISION_APPROVE_EMPLOYEE_CODE') and
     (Field.FieldName <> 'DECISION_APPROVE_DATE') ) and
     dsData.DataSet.FieldByName('IS_FOR_RECONSIDERATION').AsBoolean then
    begin
      FTouchingIsForReconsideration:= True;
      try
        CheckEditMode(dsData.DataSet);
        with dsData.DataSet do
          begin
            FieldByName('IS_FOR_RECONSIDERATION').AsBoolean:= False;
            FieldByName('DECISION_ENTER_EMPLOYEE_CODE').Clear;
            FieldByName('DECISION_ENTER_DATE').Clear;
            FieldByName('DECISION_APPROVE_EMPLOYEE_CODE').Clear;
            FieldByName('DECISION_APPROVE_DATE').Clear;
          end;

      finally
        FTouchingIsForReconsideration:= False;
      end;
    end;
end;

procedure TfmBudgetOrderItem.actBODocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TAction).ActionComponent as TControl, dotBudgetOrder, dsBudgetOrder.DataSet);
end;

end.

