unit fBOIOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponent, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, fMasterDetailForm, uBudgetClientUtils, dDocClient, uClientTypes,
  Mask, JvComponentBase, Menus, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmBOIOrders = class(TMasterDetailForm)
    pnlUpperGridBottom: TPanel;
    btnBudgetOrderItem: TBitBtn;
    cdsGridDataBUDGET_ORDER_STATUS_CODE: TAbmesFloatField;
    cdsGridDataBUDGET_ORDER_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDESCRIPTION: TAbmesWideStringField;
    cdsGridDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsGridDataBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsGridDataBUDGET_ITEM_STATUS_CODE: TAbmesFloatField;
    cdsGridDataBOI_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataBOI_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataTOTAL_PRICE: TAbmesFloatField;
    cdsGridDataBO_PRICE_PERCENT: TAbmesFloatField;
    cdsGridDataREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    cdsGridDataBO_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataBO_DOC_CODE: TAbmesFloatField;
    cdsGridDataBO_HAS_DOC: TAbmesFloatField;
    cdsGridDataBOI_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataBOI_DOC_CODE: TAbmesFloatField;
    cdsGridDataBOI_HAS_DOC: TAbmesFloatField;
    cdsGridDataBC_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataBC_DOC_CODE: TAbmesFloatField;
    cdsGridDataBC_HAS_DOC: TAbmesFloatField;
    lblValuesInBaseCurrency: TLabel;
    edtSumTotalPrice: TDBEdit;
    pnlBottomGridBottom: TPanel;
    btnAddOrder: TBitBtn;
    btnEditOrder: TBitBtn;
    cdsDetailBOI_ORDER_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDetailBOI_ORDER_OBJECT_CODE: TAbmesFloatField;
    cdsDetailBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsDetailBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsDetailBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsDetailBOI_ORDER_STATUS_CODE: TAbmesFloatField;
    cdsDetailCONSUMER_DEPT_CODE: TAbmesFloatField;
    cdsDetailCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDetailCONSUMER_DEPT_HAS_DOC: TAbmesFloatField;
    cdsDetailCONSUMER_DEPT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailCONSUMER_DEPT_DOC_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_NAME: TAbmesWideStringField;
    cdsDetailPRODUCT_HAS_DOC: TAbmesFloatField;
    cdsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsDetailMEASURE_CODE: TAbmesFloatField;
    cdsDetailACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsDetailMEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailQUANTITY: TAbmesFloatField;
    cdsDetailPRODUCT_SINGLE_PRICE: TAbmesFloatField;
    cdsDetailPRODUCT_TOTAL_PRICE: TAbmesFloatField;
    cdsDetailPRODUCT_BOI_PRICE_PERCENT: TAbmesFloatField;
    cdsDetailSTORE_CODE: TAbmesFloatField;
    cdsDetailSTORE_IDENTIFIER: TAbmesWideStringField;
    cdsDetailPRODUCT_REAL_QUANTITY: TAbmesFloatField;
    cdsDetailPRODUCT_REAL_TOTAL_PRICE: TAbmesFloatField;
    cdsDetailPRODUCT_LAST_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsDetailCOMPANY_CODE: TAbmesFloatField;
    cdsDetailDESCRIPTION: TAbmesWideStringField;
    cdsDetailCURRENCY_CODE: TAbmesFloatField;
    cdsDetailPLAN_TOTAL_PRICE: TAbmesFloatField;
    cdsDetailPLAN_DATE: TAbmesSQLTimeStampField;
    cdsDetailCOMPANY_BOI_PRICE_PERCENT: TAbmesFloatField;
    cdsDetailDOCUMENT_TYPE_TEXT: TAbmesWideStringField;
    cdsDetailDOCUMENT_ID_TEXT: TAbmesWideStringField;
    cdsDetailACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    cdsDetailACCOUNT_DATE: TAbmesSQLTimeStampField;
    cdsDetailPRICE_DEVIATION: TAbmesFloatField;
    cdsDetailDATES_DEVIATION: TAbmesFloatField;
    cdsBOIDistributionTypes: TAbmesClientDataSet;
    cdsBOIDistributionTypesBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    cdsBOIDistributionTypesBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    cdsRegularityTypes: TAbmesClientDataSet;
    cdsRegularityTypesBO_REGULARITY_TYPE_CODE: TAbmesFloatField;
    cdsRegularityTypesBO_REGULARITY_TYPE_NAME: TAbmesWideStringField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_CLASS_CODE: TAbmesFloatField;
    pdsGridDataParamsBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_CODE: TAbmesFloatField;
    pdsGridDataParamsBO_REGULARITY_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsGENERATOR_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsDEVELOPER_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsMIN_ITEM_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_ITEM_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsDEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsITEM_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsITEM_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParams_BUDGET_ORDER_BRANCH: TAbmesWideStringField;
    pdsGridDataParams_BO_REGULARITY_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_BOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    cdsGridData_BOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    cdsGridData_DISTRIBUTION_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridData_DISTRIB_DATE_UNIT_AVG_WORKDAYS: TAbmesFloatField;
    cdsTimeUnits: TAbmesClientDataSet;
    cdsTimeUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsTimeUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsTimeUnitsTABLE_NAME: TAbmesWideStringField;
    cdsTimeUnitsKEY_FIELD_NAME: TAbmesWideStringField;
    cdsTimeUnitsYEAR_UNIT_NO_NAME: TAbmesWideStringField;
    cdsTimeUnitsDEFAULT_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsMIN_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsMAX_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsTHE_DATE_UNIT_NAME_PLURAL: TAbmesWideStringField;
    cdsTimeUnitsAVERAGE_WORKDAYS: TAbmesFloatField;
    cdsTimeUnitsTHE_DATE_UNIT_ABBREV: TAbmesWideStringField;
    cdsGridDataDISTRIBUTION_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    cdsGridData_REMAINING_TOTAL_PRICE: TAbmesFloatField;
    cdsDetailBOI_ORDER_CODE: TAbmesFloatField;
    cdsDetailMAX_BOI_ORDER_CODE: TAggregateField;
    cdsGridDataBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    tlbBudgetOrderDoc: TToolBar;
    sepBeforeBudgetOrderDoc: TToolButton;
    lblBudgetOrderDoc: TLabel;
    btnBudgetOrderDoc: TToolButton;
    tlbBudgetOrderItemDoc: TToolBar;
    sepBeforeBudgetOrderItemDoc: TToolButton;
    lblBudgetOrderItemDoc: TLabel;
    btnBudgetOrderItemDoc: TToolButton;
    tlbBudgetClassDoc: TToolBar;
    sepBeforeBudgetClassDoc: TToolButton;
    lblBudgetClassDoc: TLabel;
    btnBudgetClassDoc: TToolButton;
    tlbDocs: TToolBar;
    sepBeforeConsumerDeptDoc: TToolButton;
    lblConsumerDeptDoc: TLabel;
    btnConsumerDeptDoc: TToolButton;
    actBudgetOrderDoc: TAction;
    actBudgetOrderItemDoc: TAction;
    actBudgetClassDoc: TAction;
    actConsumerDeptDoc: TAction;
    cdsGridDataSUM_TOTAL_PRICE: TAggregateField;
    cdsDetailCURRENCY_NAME: TAbmesWideStringField;
    cdsGridData_DEVIATION_PERCENT: TAbmesFloatField;
    cdsGridDataBOI_ORDER_COUNT: TAbmesFloatField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataBOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataDISTRIBUTED_SINGLE_PRICE: TAbmesFloatField;
    cdsDetailCOMPANY_NAME: TAbmesWideStringField;
    lblDetailGridTitle: TLabel;
    pdsGridDataParamsMIN_BOIO_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_BOIO_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsCONSUMER_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsBOIO_BEGIN_PLAN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBOIO_END_PLAN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsCOMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsSTORE_CODE: TAbmesFloatField;
    cdsDetailACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDetailPRODUCT_REAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDetailPRODUCT_REAL_QUANTITY_DEV_P: TAbmesFloatField;
    cdsDetailPRODUCT_REAL_ACC_QTY_DEV_P: TAbmesFloatField;
    cdsDetailPRODUCT_AVG_S_PRICE_DEV_P: TAbmesFloatField;
    cdsDetailPRODUCT_REAL_PRICE_DEV_P: TAbmesFloatField;
    cdsDetailPRODUCT_LAST_SD_DAYS_DEV: TAbmesFloatField;
    cdsDetail_SUM_PRODUCT_BOI_PRICE_PERCENT: TAggregateField;
    edtSumBOPricePercent: TDBEdit;
    cdsDetail_SUM_COMPANY_BOI_PRICE_PERCENT: TAggregateField;
    cdsGridData_BUDGET_MODE: TAbmesFloatField;
    cdsGridData_REPORT_TITLE: TAbmesWideStringField;
    cdsGridData_DETAIL_REPORT_TITLE: TAbmesWideStringField;
    cdsDetailWASTE_BOI_PRICE_PERCENT: TAbmesFloatField;
    cdsDetail_SUM_WASTE_BOI_PRICE_PERCENT: TAggregateField;
    cdsDetailPRODUCT_ACC_SINGLE_PRICE: TAbmesFloatField;
    cdsDetailPRODUCT_AVG_ACC_S_PRICE_DEV_P: TAbmesFloatField;
    cdsDetailPRICE_DEVIATION_PERCENT: TAbmesFloatField;
    pdsGridDataParamsALL_FILTERED_PRODUCTS_2: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS_2: TAbmesWideStringField;
    cdsGridDataBUDGET_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataBUDGET_PRODUCT_NO: TAbmesFloatField;
    cdsGridDataBUDGET_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParamsBUDGET_PRODUCT_CODE: TAbmesFloatField;
    btnShowAnnuledLines: TSpeedButton;
    cdsDetailANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDetailNULL_WHEN_ANNULED: TAbmesFloatField;
    cdsDetail_SUM_PLAN_TOTAL_PRICE: TAggregateField;
    cdsDetail_SUM_PRODUCT_TOTAL_PRICE: TAggregateField;
    edtDetailSumTotalPrice: TDBEdit;
    pdsGridDataParamsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_FILTERED_BY_BOI_ORDERS: TAbmesFloatField;
    cdsGridDataBUDGET_ORDER_ITEM_TYPE: TAbmesWideStringField;
    pdsGridDataParamsBOI_ORDER_CODE: TAbmesFloatField;
    cdsNewDetailRecordDefaults: TAbmesClientDataSet;
    cdsNewDetailRecordDefaultsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsNewDetailRecordDefaultsBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsNewDetailRecordDefaultsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsNewDetailRecordDefaultsBOI_ORDER_CODE: TAbmesFloatField;
    cdsNewDetailRecordDefaultsBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsBOIO_BEGIN_ACCOUNT_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBOIO_END_ACCOUNT_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDOCUMENT_ID_TEXT: TAbmesWideStringField;
    cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField;
    edtSumTotalAccountPrice: TDBEdit;
    cdsDetail_SUM_PRODUCT_REAL_TOTAL_PRICE: TAggregateField;
    cdsDetail_SUM_ACCOUNT_TOTAL_PRICE: TAggregateField;
    cdsGridDataBUDGET_ORDER_PRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField;
    cdsOrgTaskProposalStates: TAbmesClientDataSet;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NO: TAbmesFloatField;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_ORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField;
    tlbToggleButtons: TToolBar;
    btnToggleProductDisplay: TSpeedButton;
    cdsGridDataBOI_IS_CONFIRMED: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_ITEM_TYPE: TAbmesFloatField;
    pdsGridDataParamsDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsDCD_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsDCD_CODE: TAbmesFloatField;
    pdsGridDataParamsDELIVERY_PROJECT_CODE: TAbmesFloatField;
    pdsGridDataParams_DELIVERY_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsDetailDELIVERY_IDENTIFIER: TAbmesWideStringField;
    cdsDetailHAS_FIN_ORDER: TAbmesFloatField;
    lblBOIOrderDoc: TLabel;
    btnBOIOrderDoc: TToolButton;
    actBOIOrderDoc: TAction;
    cdsDetailDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailDOC_CODE: TAbmesFloatField;
    cdsDetailHAS_DOC_ITEMS: TAbmesFloatField;
    sepAfterBOIOrderDoc: TToolButton;
    procedure actEditRecordUpdate(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actBudgetOrderDocExecute(Sender: TObject);
    procedure actBudgetOrderDocUpdate(Sender: TObject);
    procedure actBudgetOrderItemDocExecute(Sender: TObject);
    procedure actBudgetOrderItemDocUpdate(Sender: TObject);
    procedure actBudgetClassDocExecute(Sender: TObject);
    procedure actBudgetClassDocUpdate(Sender: TObject);
    procedure actConsumerDeptDocExecute(Sender: TObject);
    procedure actConsumerDeptDocUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataBOI_BEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataBEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataBUDGET_ORDER_STATUS_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataBUDGET_ITEM_STATUS_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataBO_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailPRODUCT_BOI_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailCOMPANY_BOI_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailBOI_ORDER_STATUS_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataREMAINING_TOTAL_PRICE_PERCENTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridData_DEVIATION_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailPRODUCT_REAL_QUANTITY_DEV_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailPRODUCT_REAL_ACC_QTY_DEV_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailPRODUCT_AVG_S_PRICE_DEV_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailPRODUCT_REAL_PRICE_DEV_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetail_SUM_PRODUCT_BOI_PRICE_PERCENTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsDetail_SUM_COMPANY_BOI_PRICE_PERCENTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsDetail_SUM_WASTE_BOI_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailWASTE_BOI_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailPRODUCT_AVG_ACC_S_PRICE_DEV_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailPRICE_DEVIATION_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataBOI_ORDER_COUNTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure btnShowAnnuledLinesClick(Sender: TObject);
    procedure grdDetailGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsDetailBeforeOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure actBOIOrderDocUpdate(Sender: TObject);
    procedure actBOIOrderDocExecute(Sender: TObject);
    procedure grdDetailSortMarkingChanged(Sender: TObject);
  private
    FBudgetMode: TBudgetMode;
    FSavedInsertedBOIOrderCode: Integer;
    function GetNextBOIOrderCode: Integer;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoBeforeShow; override;
    function GetGridRecordReadOnly: Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
    function ShowFilterForm: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean; override;
    procedure RefreshGridData; override;
    class function CanUseDocs: Boolean; override;
    class function GetFilterBudgetOrderItemTypeInt: Integer; virtual;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      ABudgetMode: TBudgetMode = bmExpense); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      ABudgetMode: TBudgetMode = bmExpense): Boolean;
  end;

type
  TfmBOIOrdersClass = class of TfmBOIOrders;

implementation

uses dMain, uClientUtils, fBudgetOrder, fBOIOrder, uDocClientUtils,
  uDocUtils, fBOIOrdersFilter, rBOIOrders, fDataForm, uColorConsts, uUtils,
  Math, uToolbarUtils, uBudgetUtils;

{$R *.dfm}

{ TfmBOIOrders }

procedure TfmBOIOrders.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; ABudgetMode: TBudgetMode);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FBudgetMode:= ABudgetMode;
end;

class function TfmBOIOrders.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; ABudgetMode: TBudgetMode): Boolean;
var
  f: TfmBOIOrders;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled, ABudgetMode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

function TfmBOIOrders.GetGridRecordReadOnly: Boolean;
begin
  Result:= True;
end;

procedure TfmBOIOrders.actEditRecordUpdate(Sender: TObject);
begin
  // do not call inherited
  (Sender as TAction).Enabled:= GetEditRecordEnabled;
end;

procedure TfmBOIOrders.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('BUDGET_ORDER_CLASS_CODE').AsInteger:= BudgetModeToInt(FBudgetMode);
end;

procedure TfmBOIOrders.CloseDataSets;
begin
  cdsOrgTaskProposalStates.Close;
  cdsTimeUnits.Close;
  cdsBranches.Close;
  cdsRegularityTypes.Close;
  cdsBOIDistributionTypes.Close;
  inherited;
end;

procedure TfmBOIOrders.DoBeforeShow;
begin
  RecursivelyFormatCaptions(Self, CreateCommonMsgParams(LoginContext, FBudgetMode));
  inherited;
end;

procedure TfmBOIOrders.OpenDataSets;
begin
  inherited;
  cdsBOIDistributionTypes.Open;
  cdsRegularityTypes.Open;
  cdsBranches.Open;
  cdsTimeUnits.Open;
  cdsOrgTaskProposalStates.Open;
end;

class function TfmBOIOrders.GetFilterBudgetOrderItemTypeInt: Integer;
begin
  Result:= BudgetOrderItemTypeToFilterBOITypeInt(boitExpense);
end;

procedure TfmBOIOrders.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if pdsGridDataParamsBUDGET_ORDER_ITEM_TYPE.IsNull then
    pdsGridDataParams.SafeEdit/
      procedure begin
        pdsGridDataParamsBUDGET_ORDER_ITEM_TYPE.AsInteger:= GetFilterBudgetOrderItemTypeInt;
      end;
end;

procedure TfmBOIOrders.RefreshGridData;
begin
  try
    inherited RefreshGridData;

    if (FSavedInsertedBOIOrderCode <> 0) then
      begin
        ForceFetchDetails;
        cdsDetail.Locate('BOI_ORDER_CODE', FSavedInsertedBOIOrderCode, []);
      end;
  finally
    FSavedInsertedBOIOrderCode:= 0;
  end;
end;

function TfmBOIOrders.GetNextBOIOrderCode: Integer;
begin
  Result:=
    cdsDetail.TempDisableControls/
      cdsDetail.PreserveBookmark/
        cdsDetail.TempUnfilter/
          function: Integer begin
            Result:= cdsDetailMAX_BOI_ORDER_CODE.AsVarInteger + 1;
          end;
end;

function TfmBOIOrders.ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean;
begin
  Assert(Assigned(DetailEditFormClass));

  if (AEditMode = emInsert) then
    begin
      Result:=
        cdsNewDetailRecordDefaults.TempCreateDataSet/
          function: Boolean begin
            cdsNewDetailRecordDefaults.SafeAppend/
              procedure begin
                AssignFields(cdsGridData, cdsNewDetailRecordDefaults);
                cdsNewDetailRecordDefaultsBOI_ORDER_CODE.AsInteger:= GetNextBOIOrderCode;
              end;

            Result:= TfmBOIOrderClass(DetailEditFormClass).ShowForm(dmDocClient, cdsNewDetailRecordDefaults, AEditMode, doDataSet, FBudgetMode);

            if Result then
              FSavedInsertedBOIOrderCode:= cdsNewDetailRecordDefaultsBOI_ORDER_CODE.AsInteger;
          end;
    end
  else
    begin
      Result:= TfmBOIOrderClass(DetailEditFormClass).ShowForm(dmDocClient, cdsDetail, AEditMode, doNone, FBudgetMode);
      if Result then
        FSavedInsertedBOIOrderCode:= cdsDetailBOI_ORDER_CODE.AsInteger;
    end;
end;

procedure TfmBOIOrders.actBudgetOrderDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotBudgetOrder,
    cdsGridDataBO_DOC_BRANCH_CODE.AsInteger, cdsGridDataBO_DOC_CODE.AsInteger
  );
end;

procedure TfmBOIOrders.actBudgetOrderDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmBOIOrders.actBudgetOrderItemDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotBudgetOrderItem,
    cdsGridDataBOI_DOC_BRANCH_CODE.AsInteger, cdsGridDataBOI_DOC_CODE.AsInteger
  );
end;

procedure TfmBOIOrders.actBudgetOrderItemDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmBOIOrders.actBOIOrderDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotBOIOrder,
    cdsDetailDOC_BRANCH_CODE.AsInteger,
    cdsDetailDOC_CODE.AsInteger);
end;

procedure TfmBOIOrders.actBOIOrderDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsDetailHAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmBOIOrders.actBudgetClassDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotProduct,
    cdsGridDataBC_DOC_BRANCH_CODE.AsInteger, cdsGridDataBC_DOC_CODE.AsInteger
  );
end;

procedure TfmBOIOrders.actBudgetClassDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmBOIOrders.actConsumerDeptDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotDept,
    cdsDetailCONSUMER_DEPT_DOC_BRANCH_CODE.AsInteger, cdsDetailCONSUMER_DEPT_DOC_CODE.AsInteger
  );
end;

procedure TfmBOIOrders.actConsumerDeptDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmBOIOrders.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnBudgetOrderDoc.ImageIndex:= cdsGridDataBO_HAS_DOC.AsInteger;
  btnBudgetOrderItemDoc.ImageIndex:= cdsGridDataBOI_HAS_DOC.AsInteger;
  btnBudgetClassDoc.ImageIndex:= cdsGridDataBC_HAS_DOC.AsInteger;
  btnConsumerDeptDoc.ImageIndex:= cdsDetailCONSUMER_DEPT_HAS_DOC.AsInteger;

  UpdateColumnsVisibility(grdData, NormalizedToolbarToolbarsAndFlowPanels(tlbToggleButtons));
end;

procedure TfmBOIOrders.btnShowAnnuledLinesClick(Sender: TObject);
begin
  inherited;
  cdsDetail.Filtered:= not btnShowAnnuledLines.Down;
end;

class function TfmBOIOrders.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmBOIOrders.FormShow(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmBudgetOrder;
  cdsDetail.Filtered:= not btnShowAnnuledLines.Down;
end;

function TfmBOIOrders.ShowFilterForm: Boolean;
begin
  Result:= TfmBOIOrdersFilterClass(FilterFormClass).ShowForm(dmDocClient, pdsGridDataParams, emEdit, doNone, FBudgetMode);
end;

procedure TfmBOIOrders.FormCreate(Sender: TObject);
begin
  inherited;
  ReportClass:= TrptBOIOrders;
  RegisterDateFields(cdsGridData);
  RegisterDateFields(cdsDetail);
end;

procedure TfmBOIOrders.cdsGridDataBOI_BEGIN_DATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;

  if cdsGridDataBOI_BEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsShortString(cdsGridDataBOI_BEGIN_DATE.AsDateTime, cdsGridDataBOI_END_DATE.AsDateTime);
end;

procedure TfmBOIOrders.cdsGridDataBOI_ORDER_COUNTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrders.cdsGridDataBEGIN_DATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;

  if cdsGridDataBEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsShortString(cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime);
end;

procedure TfmBOIOrders.cdsGridDataBUDGET_ORDER_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if cdsGridDataBUDGET_ORDER_STATUS_CODE.IsNull then
    Text:= ''
  else
    Text:= GetBudgetOrderStatusText(cdsGridDataBUDGET_ORDER_STATUS_CODE.AsInteger, sttAbbrevName);
end;

procedure TfmBOIOrders.cdsGridDataBUDGET_ITEM_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if cdsGridDataBUDGET_ITEM_STATUS_CODE.IsNull then
    Text:= ''
  else
    Text:= GetBudgetOrderItemStatusText(cdsGridDataBUDGET_ITEM_STATUS_CODE.AsInteger, sttAbbrevName);
end;

procedure TfmBOIOrders.cdsGridDataBO_PRICE_PERCENTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrders.cdsDetailPRODUCT_BOI_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrders.cdsDetailCOMPANY_BOI_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrders.cdsDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsDetail.Params, pdsGridDataParams);
  SetParams(cdsDetail.Params, cdsGridData);

  with (DataSet as TClientDataSet) do
    if (IndexName = SortIndexName) then
      IndexName:= '';
end;

procedure TfmBOIOrders.cdsDetailBOI_ORDER_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if cdsDetailBOI_ORDER_STATUS_CODE.IsNull then
    Text:= ''
  else
    Text:= GetBOIOrderStatusText(cdsDetailBOI_ORDER_STATUS_CODE.AsInteger, sttAbbrevName);
end;

procedure TfmBOIOrders.cdsGridDataREMAINING_TOTAL_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrders.cdsGridData_DEVIATION_PERCENTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

function TfmBOIOrders.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmBudgetOrder.ShowForm(dmDocClient, cdsGridData, emReadOnly, doNone, False, FBudgetMode);
end;

procedure TfmBOIOrders.cdsDetailPRODUCT_REAL_QUANTITY_DEV_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrders.cdsDetailPRODUCT_REAL_ACC_QTY_DEV_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrders.cdsDetailPRODUCT_AVG_S_PRICE_DEV_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrders.cdsDetailPRODUCT_REAL_PRICE_DEV_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrders.cdsDetail_SUM_PRODUCT_BOI_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrders.cdsDetail_SUM_COMPANY_BOI_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrders.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridData_BUDGET_MODE.AsInteger:= BudgetModeToInt(FBudgetMode);
  cdsGridData_REPORT_TITLE.AsString:= Caption;
  cdsGridData_DETAIL_REPORT_TITLE.AsString:= lblDetailGridTitle.Caption;
end;

procedure TfmBOIOrders.cdsDetail_SUM_WASTE_BOI_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrders.cdsDetailWASTE_BOI_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

function TfmBOIOrders.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmBOIOrders.grdDetailGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if not cdsDetailANNUL_EMPLOYEE_CODE.IsNull and not (gdSelected in State) then
    Background:= ccAnnuledObjectBackground;
end;

procedure TfmBOIOrders.grdDetailSortMarkingChanged(Sender: TObject);
begin
  inherited;
  SortGrid((Sender as TAbmesDBGrid), SortIndexName, SortFilteredDetails);
end;

procedure TfmBOIOrders.cdsDetailPRODUCT_AVG_ACC_S_PRICE_DEV_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBOIOrders.cdsDetailPRICE_DEVIATION_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

end.
