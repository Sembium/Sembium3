unit fBOIOrder;

interface

uses                                                                              
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, ToolWin,
  ComCtrls, fDateIntervalFrame, JvExControls, JvDBLookup,
  fDeptFieldEditFrame, fDeptFieldEditFrameBald, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, Mask, DBCtrls, AbmesFields,
  fDeptFieldEditFrameLabeled, fProductFieldEditFrame,
  fProductFieldEditFrameLabeled, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, fDateFieldEditFrame, uBudgetClientUtils,
  dDocClient, uClientTypes, fTreeOnlyNodeFieldEditFrame, JvComponentBase, rDBDataReport, fBaseForm;

type
  TfmBOIOrderClass = class of TfmBOIOrder;
  [CanUseDocs]
  TfmBOIOrder = class(TEditForm)
    gbBudgetOrderStuff: TGroupBox;
    gbBudgetOrder: TGroupBox;
    lblBOStatus: TLabel;
    lblBudgetOrderBranch: TLabel;
    lblBudgetOrderCode: TLabel;
    lblBORegularityType: TLabel;
    edtBOStatus: TDBEdit;
    edtBudgetOrderCode: TDBEdit;
    gbGenerator: TGroupBox;
    frGeneratorDept: TfrDeptFieldEditFrameBald;
    gbDeveloperDept: TGroupBox;
    frDeveloperDept: TfrDeptFieldEditFrameBald;
    cdsDataBOI_ORDER_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataBOI_ORDER_OBJECT_CODE: TAbmesFloatField;
    cdsDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsDataBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsDataBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsDataBOI_ORDER_CODE: TAbmesFloatField;
    cdsDataBUDGET_ORDER_STATUS_CODE: TAbmesFloatField;
    cdsDataBUDGET_ORDER_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsDataBO_REGULARITY_TYPE_NAME: TAbmesWideStringField;
    cdsDataGENERATOR_DEPT_CODE: TAbmesFloatField;
    cdsDataDEVELOPER_DEPT_CODE: TAbmesFloatField;
    cdsDataBUDGET_ORDER_ITEM_STATUS_CODE: TAbmesFloatField;
    cdsDataBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsDataBOI_DEPT_CODE: TAbmesFloatField;
    cdsDataBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    cdsDataBOI_DAYS_TO_START: TAbmesFloatField;
    cdsDataBOI_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataBOI_END_DATE: TAbmesSQLTimeStampField;
    cdsDataBOI_DAYS_LEFT_PERCENT: TAbmesFloatField;
    cdsDataDISTRIBUTION_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDataBOI_DISTRIBUTED_SINGLE_PRICE: TAbmesFloatField;
    cdsDataBOI_TOTAL_PRICE: TAbmesFloatField;
    cdsDataBO_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    cdsDataBOI_REAL_PRICE: TAbmesFloatField;
    cdsDataBOI_REMAINING_PRICE: TAbmesFloatField;
    cdsDataBOI_REMAINING_PRICE_PERCENT: TAbmesFloatField;
    cdsDataBOI_DEVIATION_PERCENT: TAbmesFloatField;
    cdsDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsDataACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDataPRODUCT_REAL_QUANTITY: TAbmesFloatField;
    cdsDataPRODUCT_REAL_TOTAL_PRICE: TAbmesFloatField;
    cdsDataPRODUCT_LAST_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsDataCONSUMER_DEPT_CODE: TAbmesFloatField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataSTORE_CODE: TAbmesFloatField;
    cdsDataQUANTITY: TAbmesFloatField;
    cdsDataCOMPANY_CODE: TAbmesFloatField;
    cdsDataDESCRIPTION: TAbmesWideStringField;
    cdsDataCURRENCY_CODE: TAbmesFloatField;
    cdsDataDOCUMENT_TYPE_TEXT: TAbmesWideStringField;
    cdsDataDOCUMENT_ID_TEXT: TAbmesWideStringField;
    cdsDataPLAN_TOTAL_PRICE: TAbmesFloatField;
    cdsDataPLAN_DATE: TAbmesSQLTimeStampField;
    cdsDataACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    cdsDataACCOUNT_DATE: TAbmesSQLTimeStampField;
    cdsDataIS_CONFIRMED: TAbmesFloatField;
    cdsDataIS_CANCELED: TAbmesFloatField;
    cdsDataDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataDECISION_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCLOSE_DATE: TAbmesSQLTimeStampField;
    cdsDataCLOSE_TIME: TAbmesSQLTimeStampField;
    cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsData_BOI_ORDER_STATUS_CODE: TAbmesFloatField;
    edtBudgetOrderBranch: TDBEdit;
    edtBORegularityType: TDBEdit;
    actConfirm: TAction;
    actUnconfirm: TAction;
    cdsDataMEASURE_CODE: TAbmesFloatField;
    cdsDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsDataPRODUCT_REAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDataPRODUCT_SINGLE_PRICE: TAbmesFloatField;
    cdsBOIOrderInfo: TAbmesClientDataSet;
    dsBOIOrderInfo: TDataSource;
    cdsBOIOrderInfoBUDGET_ORDER_STATUS_CODE: TAbmesFloatField;
    cdsBOIOrderInfoBUDGET_ORDER_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBOIOrderInfoBO_REGULARITY_TYPE_NAME: TAbmesWideStringField;
    cdsBOIOrderInfoGENERATOR_DEPT_CODE: TAbmesFloatField;
    cdsBOIOrderInfoDEVELOPER_DEPT_CODE: TAbmesFloatField;
    cdsBOIOrderInfoBUDGET_ORDER_ITEM_STATUS_CODE: TAbmesFloatField;
    cdsBOIOrderInfoBOI_DEPT_CODE: TAbmesFloatField;
    cdsBOIOrderInfoBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    cdsBOIOrderInfoBOI_DAYS_TO_START: TAbmesFloatField;
    cdsBOIOrderInfoBOI_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsBOIOrderInfoBOI_END_DATE: TAbmesSQLTimeStampField;
    cdsBOIOrderInfoBOI_DAYS_LEFT_PERCENT: TAbmesFloatField;
    cdsBOIOrderInfoDISTRIBUTION_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsBOIOrderInfoBOI_DISTRIBUTED_SINGLE_PRICE: TAbmesFloatField;
    cdsBOIOrderInfoBOI_TOTAL_PRICE: TAbmesFloatField;
    cdsBOIOrderInfoBO_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    cdsBOIOrderInfoBOI_REAL_PRICE: TAbmesFloatField;
    cdsBOIOrderInfoBOI_REMAINING_PRICE: TAbmesFloatField;
    cdsBOIOrderInfoBOI_REMAINING_PRICE_PERCENT: TAbmesFloatField;
    cdsBOIOrderInfoBOI_DEVIATION_PERCENT: TAbmesFloatField;
    cdsBOIOrderInfoBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsBOIOrderInfoBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsBOIOrderInfoBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    pnlCloseButton: TPanel;
    btnCloseOrderItem: TBitBtn;
    pnlOrderIsClosed: TPanel;
    chkOrderItemIsClosed: TCheckBox;
    pnlOrderIsAnnuled: TPanel;
    chkOrderItemIsAnnuled: TCheckBox;
    actClose: TAction;
    actAnnul: TAction;
    lblFormCaption: TLabel;
    cdsDataBOI_IS_CONFIRMED: TAbmesFloatField;
    gbBOIOrderStuff: TGroupBox;
    frConsumerDept: TfrDeptFieldEditFrameLabeled;
    gbBOIOrder: TGroupBox;
    lblBOIOrderStatus: TLabel;
    lblBOIOrderCode: TLabel;
    edtBOIOrderStatus: TDBEdit;
    edtBOIOrderCode: TDBEdit;
    gbDecision: TGroupBox;
    lblDecisionEmployee: TLabel;
    lblDecisionDate: TLabel;
    btnConfirm: TBitBtn;
    btnUnconfirm: TBitBtn;
    frDecisionEmployee: TfrEmployeeFieldEditFrameBald;
    frDecisionDate: TfrDateFieldEditFrame;
    cdsBOIOrderInfoBC_PRODUCT_CODE: TAbmesFloatField;
    gbBudgetOrderItem: TGroupBox;
    gbIdentification: TGroupBox;
    lblStatus: TLabel;
    lblNo: TLabel;
    edtStatus: TDBEdit;
    edtNo: TDBEdit;
    gbConsumer: TGroupBox;
    lblTreeNodeName: TLabel;
    lblBOIDistributionType: TLabel;
    frBOIDept: TfrDeptFieldEditFrameBald;
    edtBOIDistributionType: TDBEdit;
    gbItemDates: TGroupBox;
    lblBOIDaysToStart: TLabel;
    lblBOIDaysLeftPercent: TLabel;
    frItemDates: TfrDateIntervalFrame;
    edtBOIDaysToStart: TDBEdit;
    edtBOIDaysLeftPercent: TDBEdit;
    gbPrices: TGroupBox;
    lblDistributedSinglePrice: TLabel;
    lblDistributionDateUnit: TLabel;
    lblTotalPrice: TLabel;
    lblBaseCurrency: TLabel;
    lblTo: TLabel;
    lblEqualTo2: TLabel;
    lblBOTotalPricePercent: TLabel;
    edtDistributedSinglePrice: TDBEdit;
    edtTotalPrice: TDBEdit;
    edtBOTotalPricePercent: TDBEdit;
    edtDistributionDateUnit: TDBEdit;
    gbDeviation: TGroupBox;
    lblRemainingTotalPrice: TLabel;
    lblBaseCurrency2: TLabel;
    lblEqualTo: TLabel;
    lblPercents2: TLabel;
    lblPercents3: TLabel;
    lblDeviationPercent: TLabel;
    edtRemainingTotalPrice: TDBEdit;
    edtRemainingTotalPricePercent: TDBEdit;
    edtDeviationPercent: TDBEdit;
    grTrackingSummary: TGroupBox;
    lblAccountTotalPrice: TLabel;
    lblBaseCurrency3: TLabel;
    edtAccountTotalPrice: TDBEdit;
    cdsData_BOI_PRICE_PERCENT: TAbmesFloatField;
    cdsData_PRICE_DEVIATION: TAbmesFloatField;
    cdsData_DAYS_DEVIATION: TAbmesFloatField;
    actToggleDeviationDiffPercent: TAction;
    cdsData_PRICE_DEVIATION_PERCENT: TAbmesFloatField;
    lblPercents: TLabel;
    cdsDataPLAN_TOTAL_PRICE_BC: TAbmesFloatField;
    cdsDataACCOUNT_TOTAL_PRICE_BC: TAbmesFloatField;
    cdsData_BOI_PRICE_PERCENT_BC: TAbmesFloatField;
    cdsBOIOrderInfoBOI_IS_CONFIRMED: TAbmesFloatField;
    cdsData_PRICE_DEVIATION_BC: TAbmesFloatField;
    cdsBOIOrderInfoBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    cdsDataBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    frBudgetClass: TfrProductFieldEditFrameLabeled;
    cdsDataBUDGET_PRODUCT_CODE: TAbmesFloatField;
    cdsBOIOrderInfoBUDGET_PRODUCT_CODE: TAbmesFloatField;
    cdsBOIOrderInfoBO_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsBOIOrderInfoBO_DOC_CODE: TAbmesFloatField;
    cdsBOIOrderInfoBO_HAS_DOC: TAbmesFloatField;
    actBODoc: TAction;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    cdsDataFIN_ORDER_CODE: TAbmesFloatField;
    cdsDataFO_EXEC_DEPT_CODE: TAbmesFloatField;
    cdsDataFO_PRIORITY_CODE: TAbmesFloatField;
    cdsDataFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsDataSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    lblBudgetOrderItemType: TLabel;
    edtBudgetOrderItemType: TDBEdit;
    cdsBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField;
    cdsPrintData: TAbmesClientDataSet;
    pnlAnnulButton: TPanel;
    btnAnnulOrderItem: TBitBtn;
    cdsBOIOrderInfo_BOI_DEVIATION_PERCENT: TAbmesFloatField;
    cdsPrintDataBUDGET_ORDER_ITEM_STATUS_CODE: TAbmesFloatField;
    cdsPrintDataBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsPrintDataBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField;
    cdsPrintDataBUDGET_ORDER_STATUS_CODE: TAbmesFloatField;
    cdsPrintDataBUDGET_ORDER_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsPrintDataBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsPrintDataBO_REGULARITY_TYPE_NAME: TAbmesWideStringField;
    cdsPrintDataGENERATOR_DEPT_NAME: TAbmesWideStringField;
    cdsPrintDataGENERATOR_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsPrintDataDEVELOPER_DEPT_NAME: TAbmesWideStringField;
    cdsPrintDataDEVELOPER_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsPrintDataBOI_DEPT_NAME: TAbmesWideStringField;
    cdsPrintDataBOI_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsPrintDataBUDGET_CLASS_DEPT_NAME: TAbmesWideStringField;
    cdsPrintDataBUDGET_CLASS_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsPrintDataBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    cdsPrintDataCONSUMER_DEPT_NAME: TAbmesWideStringField;
    cdsPrintDataCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsPrintDataDECISION_EMPLOYEE_NO: TAbmesFloatField;
    cdsPrintDataDECISION_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsPrintDataDECISION_DATE: TAbmesSQLTimeStampField;
    cdsPrintDataDECISION_NAME: TAbmesWideStringField;
    cdsPrintDataBUDGET_MODE: TAbmesFloatField;
    cdsPrintDataBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsPrintDataBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField;
    pnlPrint: TPanel;
    cdsPrintDataBOI_ORDER_CODE: TAbmesFloatField;
    cdsPrintData_BOI_ORDER_STATUS_CODE: TAbmesFloatField;
    cdsPrintData_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsBOIOrderInfoBO_PRODUCT_NO: TAbmesFloatField;
    cdsBOIOrderInfoBO_PRODUCT_NAME: TAbmesWideStringField;
    cdsPrintDataBO_PRODUCT_NO: TAbmesFloatField;
    cdsPrintDataBO_PRODUCT_NAME: TAbmesWideStringField;
    pnlInnerPrint: TPanel;
    btnPrint: TBitBtn;
    cdsDataDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataDELIVERY_OBJECT_CODE: TAbmesFloatField;
    cdsDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsDataBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsDataFO_BRANCH_CODE: TAbmesFloatField;
    cdsDataFO_STATUS_CODE: TAbmesFloatField;
    cdsDataFO_PARTNER_CODE: TAbmesFloatField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    actDoc: TAction;
    tbDocButton: TToolBar;
    btnDoc: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsDataPRODUCT_CODEChange(Sender: TField);
    procedure actConfirmUpdate(Sender: TObject);
    procedure actUnconfirmUpdate(Sender: TObject);
    procedure actConfirmExecute(Sender: TObject);
    procedure actUnconfirmExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actCloseUpdate(Sender: TObject);
    procedure actAnnulUpdate(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actAnnulExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsBOIOrderInfoBO_TOTAL_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsBOIOrderInfoBOI_DAYS_LEFT_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsBOIOrderInfoBOI_REMAINING_PRICE_PERCENTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsBOIOrderInfoBOI_DEVIATION_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsBOIOrderInfoBUDGET_ORDER_STATUS_CODEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsBOIOrderInfoBUDGET_ORDER_ITEM_STATUS_CODEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsData_BOI_ORDER_STATUS_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsData_BOI_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actToggleDeviationDiffPercentExecute(Sender: TObject);
    procedure cdsDataQUANTITYChange(Sender: TField);
    procedure cdsDataACCOUNT_QUANTITYChange(Sender: TField);
    procedure cdsData_PRICE_DEVIATION_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsData_BOI_PRICE_PERCENT_BCGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsData_DAYS_DEVIATIONGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure actBODocExecute(Sender: TObject);
    procedure cdsBOIOrderInfoCalcFields(DataSet: TDataSet);
    procedure cdsBOIOrderInfo_BOI_DEVIATION_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsPrintData_BOI_ORDER_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDataPLAN_TOTAL_PRICEValidate(Sender: TField);
    procedure cdsDataACCOUNT_TOTAL_PRICEValidate(Sender: TField);
    procedure cdsDataQUANTITYValidate(Sender: TField);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure actDocExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
  private
    FBudgetMode: TBudgetMode;
    FQuantityChanging: Boolean;
  protected
    function IsReadOnly: Boolean;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetOriginalFormCaption: string; override;
    function RequiredFieldsNotNull: Boolean; virtual; abstract;
    procedure DoApplyUpdates; override;
    procedure AssignPrintFields; virtual;
    function GetPrintEnabled: Boolean; override;
    function PlanDateField: TAbmesSQLTimeStampField; virtual;
    function PlanTotalPriceField: TAbmesFloatField; virtual;
    function AccountDateField: TAbmesSQLTimeStampField; virtual;
    function AccountTotalPriceField: TAbmesFloatField; virtual;
    procedure BeforeCloseOrder; virtual;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ABudgetMode: TBudgetMode = bmExpense); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ABudgetMode: TBudgetMode = bmExpense): Boolean;
  end;

implementation

uses dMain, uClientUtils, uUtils, uTreeClientUtils, AbmesDialogs,
  uUserActivityConsts, uBOIDistributionTypes, uProducts, uDocUtils, uClientDateTime,
  Math, uFinanceClientUtils;

resourcestring
  SConfirm = 'Потвърдете ';
  SPriceMissing = 'Не са въведени мерни единици и/или цена на този Управляем Обект';
  SInvalidDeptRelation = 'ТП Пряк Консуматор трябва да съвпада с или да е наследник на ТП Консуматор';
  SPlanDateOutsideBOIInterval = '%s не влиза във времевия интервал на Лимита';
  SNewOrderNo = 'Ордерът е записан под номер %d';
  SNoDecision = '';
  SDecisionConfirmed = 'Утвърден';
  SDecisionCanceled = 'Отказан';

type
  TIsConfirmed = Boolean;
  TIsCanceled = Boolean;

const
  DecisionNames: array[TIsConfirmed, TIsCanceled] of string =
    ((SNoDecision, SDecisionCanceled), (SDecisionConfirmed, ''));


{$R *.dfm}

class function TfmBOIOrder.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmBOIOrder.FormCreate(Sender: TObject);
begin
  inherited;
  frGeneratorDept.FieldNames:= 'GENERATOR_DEPT_CODE';
  frDeveloperDept.FieldNames:= 'DEVELOPER_DEPT_CODE';
  frBOIDept.FieldNames:= 'BOI_DEPT_CODE';
  frItemDates.FieldNames:= 'BOI_BEGIN_DATE;BOI_END_DATE';
  frConsumerDept.FieldNames:= 'CONSUMER_DEPT_CODE';
  frDecisionEmployee.FieldNames:= 'DECISION_EMPLOYEE_CODE';
  frDecisionDate.FieldNames:= 'DECISION_DATE';
  frBudgetClass.FieldNames:= 'BUDGET_PRODUCT_CODE';
  frBudgetClass.ProductClass:= pcBudget;
  RegisterDateFields(cdsPrintData);
  HasDocItemsField:= cdsDataHAS_DOC_ITEMS;
end;

procedure TfmBOIOrder.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ABudgetMode: TBudgetMode);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FBudgetMode:= ABudgetMode;
end;

procedure TfmBOIOrder.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frConsumerDept) and
     (cdsBOIOrderInfoBOI_DISTRIBUTION_TYPE_CODE.AsInteger in [boidtLocal, boidtCentralized]) then
    AFrame.ReadOnly:= True
  else
    begin
      if not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
         not cdsDataCLOSE_EMPLOYEE_CODE.IsNull or
         (AFrame = frGeneratorDept) or
         (AFrame = frDeveloperDept) or
         (AFrame = frBudgetClass) or
         (AFrame = frBOIDept) or
         (AFrame = frItemDates) or
         (AFrame = frDecisionEmployee) or
         (AFrame = frDecisionDate) then
        AFrame.ReadOnly:= True
      else
        AFrame.ReadOnly:= IsReadOnly;
        // do not call inherited
    end;
end;

class function TfmBOIOrder.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ABudgetMode: TBudgetMode): Boolean;
var
  f: TfmBOIOrder;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, ABudgetMode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmBOIOrder.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsDataIS_CONFIRMED.AsBoolean:= False;
  cdsDataIS_CANCELED.AsBoolean:= False;

  if (cdsBOIOrderInfoBOI_DISTRIBUTION_TYPE_CODE.AsInteger in [boidtLocal, boidtCentralized]) then
    cdsDataCONSUMER_DEPT_CODE.Assign(cdsBOIOrderInfoBOI_DEPT_CODE);

  cdsDataBUDGET_ORDER_ITEM_TYPE_CODE.Assign(cdsBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_CODE);
end;

procedure TfmBOIOrder.cdsDataPLAN_TOTAL_PRICEValidate(Sender: TField);
begin
  inherited;
  (Sender as TAbmesFloatField).CheckIsGreaterThan(0);
end;

procedure TfmBOIOrder.cdsDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  DoProductFieldChanged(
    cdsDataPRODUCT_CODE,
    nil, nil,
    cdsDataMEASURE_CODE,
    cdsDataACCOUNT_MEASURE_CODE,
    cdsDataACCOUNT_MEASURE_COEF,
    nil, nil,
    cdsDataPRODUCT_SINGLE_PRICE);

  if cdsDataMEASURE_CODE.IsNull or
     cdsDataACCOUNT_MEASURE_COEF.IsNull or
     cdsDataPRODUCT_SINGLE_PRICE.IsNull then
    raise Exception.Create(SPriceMissing);

  cdsDataPRODUCT_SINGLE_PRICE.AsVariant:=
    cdsDataPRODUCT_SINGLE_PRICE.AsVariant /
    dmMain.SvrCommon.GetSecondaryCurrencyFixing(LoginContext.BaseCurrencyCode, ContextDate);
end;

procedure TfmBOIOrder.CloseDataSets;
begin
  inherited;
  cdsBOIOrderInfo.Close;
end;

procedure TfmBOIOrder.DoApplyUpdates;
var
  BOIOrderCode: Integer;
begin
  BOIOrderCode:= cdsDataBOI_ORDER_CODE.AsInteger;

  inherited;

  if (BOIOrderCode <> cdsDataBOI_ORDER_CODE.AsInteger) then
    ShowMessageFmtEx(SNewOrderNo, [cdsDataBOI_ORDER_CODE.AsInteger]);
end;

procedure TfmBOIOrder.OpenDataSets;
begin
  SetParams(cdsBOIOrderInfo.Params, OuterDataSet);
  cdsBOIOrderInfo.Open;
  inherited;
end;

function TfmBOIOrder.PlanDateField: TAbmesSQLTimeStampField;
begin
  Result:= cdsDataPLAN_DATE;
end;

function TfmBOIOrder.PlanTotalPriceField: TAbmesFloatField;
begin
  Result:= cdsDataPLAN_TOTAL_PRICE;
end;

function TfmBOIOrder.AccountDateField: TAbmesSQLTimeStampField;
begin
  Result:= cdsDataACCOUNT_DATE;
end;

function TfmBOIOrder.AccountTotalPriceField: TAbmesFloatField;
begin
  Result:= cdsDataACCOUNT_TOTAL_PRICE;
end;

procedure TfmBOIOrder.actConfirmUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsData.ReadOnly and
    not cdsDataIS_CONFIRMED.AsBoolean and
    not cdsDataIS_CANCELED.AsBoolean and
    cdsBOIOrderInfoBOI_IS_CONFIRMED.AsBoolean and
    RequiredFieldsNotNull;
end;

procedure TfmBOIOrder.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    EditMode,
    (Sender as TAction).ActionComponent as TControl,
    dotBOIOrder,
    cdsData);
end;

procedure TfmBOIOrder.actDocUpdate(Sender: TObject);
begin
  inherited;
  actDoc.ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmBOIOrder.actUnconfirmUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsData.ReadOnly and
    not cdsDataIS_CONFIRMED.AsBoolean and
    not cdsDataIS_CANCELED.AsBoolean and
    cdsBOIOrderInfoBOI_IS_CONFIRMED.AsBoolean and
    RequiredFieldsNotNull;
end;

procedure TfmBOIOrder.AssignPrintFields;
begin
  AssignFields(cdsData, cdsPrintData);
  AssignFields(cdsBOIOrderInfo, cdsPrintData);
  cdsPrintDataBUDGET_MODE.AsInteger:= BudgetModeToInt(FBudgetMode);
  cdsPrintDataGENERATOR_DEPT_NAME.Assign(frGeneratorDept.cdsTreeNodeNODE_NAME);
  cdsPrintDataGENERATOR_DEPT_IDENTIFIER.Assign(frGeneratorDept.cdsTreeNodeNODE_NO);
  cdsPrintDataDEVELOPER_DEPT_NAME.Assign(frDeveloperDept.cdsTreeNodeNODE_NAME);
  cdsPrintDataDEVELOPER_DEPT_IDENTIFIER.Assign(frDeveloperDept.cdsTreeNodeNODE_NO);
  cdsPrintDataBUDGET_CLASS_DEPT_NAME.Assign(frBudgetClass.cdsTreeNodeNODE_NAME);
  cdsPrintDataBUDGET_CLASS_DEPT_IDENTIFIER.Assign(frBudgetClass.cdsTreeNodeNODE_NO);
  cdsPrintDataBOI_DEPT_NAME.Assign(frBOIDept.cdsTreeNodeNODE_NAME);
  cdsPrintDataBOI_DEPT_IDENTIFIER.Assign(frBOIDept.cdsTreeNodeNODE_NO);
  cdsPrintDataCONSUMER_DEPT_NAME.Assign(frConsumerDept.cdsTreeNodeNODE_NAME);
  cdsPrintDataCONSUMER_DEPT_IDENTIFIER.Assign(frConsumerDept.cdsTreeNodeNODE_NO);
  cdsPrintDataDECISION_EMPLOYEE_NO.Assign(frDecisionEmployee.cdsEmployeeEMPLOYEE_NO);
  cdsPrintDataDECISION_EMPLOYEE_NAME.Assign(frDecisionEmployee.cdsEmployee_EMPLOYEE_NAME);
  cdsPrintDataDECISION_NAME.AsString:= DecisionNames[cdsDataIS_CONFIRMED.AsBoolean, cdsDataIS_CANCELED.AsBoolean];
end;

procedure TfmBOIOrder.BeforeCloseOrder;
begin
  // do nothing
end;

procedure TfmBOIOrder.actConfirmExecute(Sender: TObject);
begin
  inherited;

  case FBudgetMode of
    bmExpense: LoginContext.CheckUserActivity(uaBOIOrderExpenseDecision);
    bmInvest: LoginContext.CheckUserActivity(uaBOIOrderInvestDecision);
  else
    raise Exception.Create('unknown BudgetMode');
  end;

  ConfirmAction(SConfirm + (Sender as TAction).Hint + '?');

  CheckEditMode(cdsData);
  cdsDataIS_CONFIRMED.AsBoolean:= True;
  cdsDataDECISION_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataDECISION_DATE.AsDateTime:= ContextDate;
end;

procedure TfmBOIOrder.actUnconfirmExecute(Sender: TObject);
begin
  inherited;

  case FBudgetMode of
    bmExpense: LoginContext.CheckUserActivity(uaBOIOrderExpenseDecision);
    bmInvest: LoginContext.CheckUserActivity(uaBOIOrderInvestDecision);
  else
    raise Exception.Create('unknown BudgetMode');
  end;

  if (MessageDlgEx(SConfirm + (Sender as TAction).Hint + '?', mtConfirmation, [mbOk,mbCancel], 0) = mrOk) then
    begin
      CheckEditMode(cdsData);
      cdsDataIS_CANCELED.AsBoolean:= True;
      cdsDataDECISION_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
      cdsDataDECISION_DATE.AsDateTime:= ContextDate;
    end;
end;

procedure TfmBOIOrder.actFormUpdate(Sender: TObject);
begin
  inherited;

  btnDocs.ImageIndex:= cdsBOIOrderInfoBO_HAS_DOC.AsInteger;

  pnlOrderIsClosed.Visible:= not cdsDataCLOSE_EMPLOYEE_CODE.IsNull;
  pnlOrderIsAnnuled.Visible:= not cdsDataANNUL_EMPLOYEE_CODE.IsNull;
  pnlCloseButton.Visible:= cdsDataCLOSE_EMPLOYEE_CODE.IsNull and cdsDataANNUL_EMPLOYEE_CODE.IsNull;
  pnlAnnulButton.Visible:= cdsDataANNUL_EMPLOYEE_CODE.IsNull;
  pnlPrint.Visible:= Assigned(ReportClass);
end;

procedure TfmBOIOrder.actPrintExecute(Sender: TObject);
begin
// do not call inherited;
  cdsPrintData.CreateDataSet;
  try
    cdsPrintData.Edit;
    try
      AssignPrintFields;
      cdsPrintData.Post;
    except
      cdsPrintData.Cancel;
      raise;
    end;
    TDBDataReportClass(ReportClass).PrintReport(cdsPrintData);
  finally
    cdsPrintData.Close;
  end;  { try }
end;

procedure TfmBOIOrder.actCloseUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    (EditMode = emEdit);
end;

procedure TfmBOIOrder.actAnnulUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    (EditMode = emEdit);
end;

procedure TfmBOIOrder.actBODocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TAction).ActionComponent as TControl, dotBudgetOrder,
    cdsBOIOrderInfoBO_DOC_BRANCH_CODE, cdsBOIOrderInfoBO_DOC_CODE);
end;

procedure TfmBOIOrder.actCloseExecute(Sender: TObject);
begin
  inherited;
  if (MessageDlgEx((Sender as TAction).Hint + '?', mtConfirmation, [mbYes,mbNo], 0) = mrYes) then
    begin
      BeforeCloseOrder;

      CheckEditMode(dsData.DataSet);
      cdsDataCLOSE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
      cdsDataCLOSE_DATE.AsDateTime:= ContextDate;
      cdsDataCLOSE_TIME.AsDateTime:= ContextTime;
    end;
end;

procedure TfmBOIOrder.actAnnulExecute(Sender: TObject);
begin
  inherited;
  if (MessageDlgEx((Sender as TAction).Hint + '?', mtConfirmation, [mbYes,mbNo], 0) = mrYes) then
    begin
      CheckEditMode(dsData.DataSet);
      cdsDataANNUL_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
      cdsDataANNUL_DATE.AsDateTime:= ContextDate;
      cdsDataANNUL_TIME.AsDateTime:= ContextTime;
    end;
end;

procedure TfmBOIOrder.FormShow(Sender: TObject);
begin
  RecursivelyFormatCaptions(Self, CreateCommonMsgParams(LoginContext, FBudgetMode));
  inherited;
end;

function TfmBOIOrder.GetOriginalFormCaption: string;
begin
  Result:= lblFormCaption.Caption;
end;

function TfmBOIOrder.GetPrintEnabled: Boolean;
begin
  Result:=
    inherited GetPrintEnabled and
    not (cdsData.State in dsEditModes);
end;

function TfmBOIOrder.IsReadOnly: Boolean;
begin
  Result:= 
    (EditMode = emReadOnly) or
    dsData.DataSet.FieldByName('IS_CONFIRMED').AsBoolean or
    dsData.DataSet.FieldByName('IS_CANCELED').AsBoolean or
    not dsData.DataSet.FieldByName('CLOSE_EMPLOYEE_CODE').IsNull or
    not dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').IsNull;
end;

procedure TfmBOIOrder.cdsBOIOrderInfoBO_TOTAL_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrder.cdsBOIOrderInfoBOI_DAYS_LEFT_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrder.cdsBOIOrderInfoBOI_REMAINING_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrder.cdsBOIOrderInfoBOI_DEVIATION_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrder.cdsBOIOrderInfoBUDGET_ORDER_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if cdsBOIOrderInfoBUDGET_ORDER_STATUS_CODE.IsNull then
    Text:= ''
  else
    Text:= GetBudgetOrderStatusText(cdsBOIOrderInfoBUDGET_ORDER_STATUS_CODE.AsInteger, sttAbbrev);
end;

procedure TfmBOIOrder.cdsBOIOrderInfoCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsBOIOrderInfo_BOI_DEVIATION_PERCENT.AsVariant:=
    FloatToVar(
      VarToFloat(cdsBOIOrderInfoBOI_REMAINING_PRICE_PERCENT.AsVariant) -
      VarToFloat(cdsBOIOrderInfoBOI_DAYS_LEFT_PERCENT.AsVariant));
end;

procedure TfmBOIOrder.cdsBOIOrderInfo_BOI_DEVIATION_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrder.cdsBOIOrderInfoBUDGET_ORDER_ITEM_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if cdsBOIOrderInfoBUDGET_ORDER_ITEM_STATUS_CODE.IsNull then
    Text:= ''
  else
    Text:= GetBudgetOrderItemStatusText(cdsBOIOrderInfoBUDGET_ORDER_ITEM_STATUS_CODE.AsInteger, sttAbbrev);
end;

procedure TfmBOIOrder.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsData_BOI_ORDER_STATUS_CODE.AsInteger:=
    CalcBOIOrderStatus(
      not cdsDataANNUL_EMPLOYEE_CODE.IsNull,
      not cdsDataCLOSE_EMPLOYEE_CODE.IsNull,
      cdsDataIS_CONFIRMED.AsBoolean,
      cdsDataIS_CANCELED.AsBoolean,
      PlanDateField.AsDateTime
    );

  if PlanTotalPriceField.IsNull or
     (cdsBOIOrderInfoBOI_TOTAL_PRICE.AsFloat = 0) then
    cdsData_BOI_PRICE_PERCENT.Clear
  else
    cdsData_BOI_PRICE_PERCENT.AsFloat:=
      PlanTotalPriceField.AsFloat / cdsBOIOrderInfoBOI_TOTAL_PRICE.AsFloat;

  if cdsDataPLAN_TOTAL_PRICE_BC.IsNull or
     (cdsBOIOrderInfoBOI_TOTAL_PRICE.AsFloat = 0) then
    cdsData_BOI_PRICE_PERCENT_BC.Clear
  else
    cdsData_BOI_PRICE_PERCENT_BC.AsFloat:=
      cdsDataPLAN_TOTAL_PRICE_BC.AsFloat / cdsBOIOrderInfoBOI_TOTAL_PRICE.AsFloat;

  cdsData_PRICE_DEVIATION.AsVariant:= PlanTotalPriceField.AsVariant - AccountTotalPriceField.AsVariant;
  cdsData_PRICE_DEVIATION_BC.AsVariant:= cdsDataPLAN_TOTAL_PRICE_BC.AsVariant - cdsDataACCOUNT_TOTAL_PRICE_BC.AsVariant;

  if PlanDateField.IsNull then
    cdsData_DAYS_DEVIATION.Clear
  else
    cdsData_DAYS_DEVIATION.AsVariant:=
      dmMain.CountWorkdays(
        IfThen(AccountDateField.IsNull, ContextDate, AccountDateField.AsDateTime),
        PlanDateField.AsDateTime);

  if (cdsData_PRICE_DEVIATION.AsFloat <> 0) and (PlanTotalPriceField.AsFloat <> 0) then
    cdsData_PRICE_DEVIATION_PERCENT.AsFloat:= cdsData_PRICE_DEVIATION.AsFloat / PlanTotalPriceField.AsFloat
  else
    cdsData_PRICE_DEVIATION_PERCENT.Clear;
end;

procedure TfmBOIOrder.cdsData_BOI_ORDER_STATUS_CODEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;

  if cdsData_BOI_ORDER_STATUS_CODE.IsNull then
    Text:= ''
  else
    Text:= GetBOIOrderStatusText(cdsData_BOI_ORDER_STATUS_CODE.AsInteger, sttAbbrev);
end;

procedure TfmBOIOrder.cdsData_BOI_PRICE_PERCENTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrder.actToggleDeviationDiffPercentExecute(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    Checked:= not Checked;
end;

procedure TfmBOIOrder.cdsDataQUANTITYChange(Sender: TField);
begin
  inherited;

  if FQuantityChanging then
    Exit;

  FQuantityChanging:= True;
  try
    if (cdsDataACCOUNT_MEASURE_COEF.AsFloat > 0) and not cdsDataQUANTITY.IsNull then
      cdsDataACCOUNT_QUANTITY.AsFloat:= cdsDataQUANTITY.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat
    else
      cdsDataACCOUNT_QUANTITY.Clear

  finally
    FQuantityChanging:= False;
  end;
end;

procedure TfmBOIOrder.cdsDataQUANTITYValidate(Sender: TField);
begin
  inherited;
  (Sender as TAbmesFloatField).CheckIsGreaterThan(0);
end;

procedure TfmBOIOrder.cdsDataACCOUNT_QUANTITYChange(Sender: TField);
begin
  inherited;

  if FQuantityChanging then
    Exit;

  FQuantityChanging:= True;
  try
    if (cdsDataACCOUNT_MEASURE_COEF.AsFloat > 0) and not cdsDataACCOUNT_QUANTITY.IsNull then
      cdsDataQUANTITY.AsFloat:= cdsDataACCOUNT_QUANTITY.AsFloat / cdsDataACCOUNT_MEASURE_COEF.AsFloat
    else
      cdsDataQUANTITY.Clear

  finally
    FQuantityChanging:= False;
  end;
end;

procedure TfmBOIOrder.cdsDataACCOUNT_TOTAL_PRICEValidate(Sender: TField);
begin
  inherited;
  (Sender as TAbmesFloatField).CheckIsGreaterThan(0);
end;

procedure TfmBOIOrder.cdsDataBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmBOIOrder.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (dmMain.SvrDeptsTree.CheckDeptRelation(
        cdsDataCONSUMER_DEPT_CODE.AsInteger,
        cdsBOIOrderInfoBOI_DEPT_CODE.AsInteger) <> 1) then
    raise Exception.Create(SInvalidDeptRelation);

  if (PlanDateField.AsDateTime < cdsBOIOrderInfoBOI_BEGIN_DATE.AsDateTime) or
     (PlanDateField.AsDateTime > cdsBOIOrderInfoBOI_END_DATE.AsDateTime) then
    raise Exception.Create(Format(SPlanDateOutsideBOIInterval, [PlanDateField.DisplayLabel]));
end;

procedure TfmBOIOrder.cdsData_PRICE_DEVIATION_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrder.cdsPrintData_BOI_ORDER_STATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  
  if cdsPrintData_BOI_ORDER_STATUS_CODE.IsNull then
    Text:= ''
  else
    Text:= GetBOIOrderStatusText(cdsPrintData_BOI_ORDER_STATUS_CODE.AsInteger, sttAbbrev);
end;

procedure TfmBOIOrder.cdsData_BOI_PRICE_PERCENT_BCGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrder.cdsData_DAYS_DEVIATIONGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

end.


