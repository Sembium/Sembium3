unit fBudgetOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, JvButtons, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, ComCtrls,
  ToolWin, Buttons, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls, ColorNavigator,
  StdCtrls, Mask, JvComponent, JvCaptionButton, uBudgetClientUtils, dDocClient, uClientTypes,
  JvComponentBase, Menus, uBudgetUtils, DBGridEhGrouping;

type
  TfmBudgetOrders = class(TMasterDetailForm)
    pnlMasterGridFooter: TPanel;
    btnInsertRecord: TBitBtn;
    btnEditRecord: TBitBtn;
    pdsGridDataParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_CODE: TAbmesFloatField;
    pdsGridDataParamsBO_REGULARITY_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsITEM_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsITEM_END_DATE: TAbmesSQLTimeStampField;
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
    cdsBOIDistricutionTypes: TAbmesClientDataSet;
    cdsBOIDistricutionTypesBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    cdsBOIDistricutionTypesBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_BO_REGULARITY_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_BOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParamsGENERATOR_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParams_BUDGET_ORDER_BRANCH: TAbmesWideStringField;
    actAnnulBudgetOrder: TAction;
    actCloseBudgetOrder: TAction;
    cdsGridDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsGridDataBUDGET_ORDER_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataGENERATOR_DEPT_CODE: TAbmesFloatField;
    cdsGridDataGENERATOR_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDEVELOPER_DEPT_CODE: TAbmesFloatField;
    cdsGridDataDEVELOPER_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataBUDGET_ORDER_STATUS_CODE: TAbmesFloatField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDESCRIPTION: TAbmesWideStringField;
    cdsGridDataPROJECT_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataPLAN_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCLOSE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCLOSE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsGridDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsGridDataqryBudgetOrdersDetail: TDataSetField;
    cdsDetailBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsDetailBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsDetailBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsDetailBUDGET_ITEM_STATUS_CODE: TAbmesFloatField;
    cdsDetailBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsDetailBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    cdsDetailBOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField;
    cdsDetailDEPT_CODE: TAbmesFloatField;
    cdsDetailDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDetailBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDetailEND_DATE: TAbmesSQLTimeStampField;
    cdsDetailDAYS_TO_START: TAbmesFloatField;
    cdsDetailDAYS_LEFT_PERCENT: TAbmesFloatField;
    cdsDetailTOTAL_PRICE: TAbmesFloatField;
    cdsDetailIS_CONFIRMED: TAbmesFloatField;
    cdsDetailBO_PRICE_PERCENT: TAbmesFloatField;
    cdsDetailREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    cdsDetailDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailDOC_CODE: TAbmesFloatField;
    cdsDetailHAS_DOCUMENTATION: TAbmesFloatField;
    cdsDetailBOI_ORDER_COUNT: TAbmesFloatField;
    cdsDetailCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDetailCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDetailCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDetailCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDetailCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDetailCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDetailCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDetailCLOSE_DATE: TAbmesSQLTimeStampField;
    cdsDetailCLOSE_TIME: TAbmesSQLTimeStampField;
    cdsDetailANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDetailANNUL_DATE: TAbmesSQLTimeStampField;
    cdsDetailANNUL_TIME: TAbmesSQLTimeStampField;
    pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsDEVELOPER_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_ITEM_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_ITEM_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsBOIOrderTypes: TAbmesClientDataSet;
    cdsBOIOrderTypesBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsBOIOrderTypesBOI_ORDER_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_BOI_ORDER_TYPE_NAME: TAbmesWideStringField;
    lblLimits: TLabel;
    cdsGridDataSUM_PROJECT_TOTAL_PRICE: TAggregateField;
    cdsGridDataSUM_PLAN_TOTAL_PRICE: TAggregateField;
    cdsGridDataSUM_ACCOUNT_TOTAL_PRICE: TAggregateField;
    pnlDetailGridBottom: TPanel;
    edtSumTotalPrice: TDBEdit;
    edtSumBOPricePercent: TDBEdit;
    edtDetailTotalPriceDeviationPercent: TDBEdit;
    tlbBudgetClassDoc: TToolBar;
    sepBeforeBudgetClassDoc: TToolButton;
    lblBudgetClassDoc: TLabel;
    btnBudgetClassDoc: TToolButton;
    tlbBudgetOrderItemDoc: TToolBar;
    sepBeforeBudgetOrderItemDoc: TToolButton;
    lblBudgetOrderItemDoc: TLabel;
    btnBudgetOrderItemDoc: TToolButton;
    cdsDetailBC_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailBC_DOC_CODE: TAbmesFloatField;
    cdsDetailBC_HAS_DOC: TAbmesFloatField;
    actBudgetOrderItemDoc: TAction;
    actBudgetClassDoc: TAction;
    cdsGridData_BUDGET_MODE: TAbmesFloatField;
    lblCurrency: TLabel;
    cdsDetail_BUDGET_MODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_CLASS_CODE: TAbmesFloatField;
    pdsGridDataParamsALL_FILTERED_PRODUCTS: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsDetailNULL_WHEN_ANNULED: TAbmesFloatField;
    cdsDetailNULL_WHEN_CLOSED: TAbmesFloatField;
    btnShowAnnuledLines: TSpeedButton;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    tlbBudgetOrderDoc: TToolBar;
    sepBeforeBudgetOrderDoc: TToolButton;
    lblBudgetOrderDoc: TLabel;
    btnBudgetOrderDoc: TToolButton;
    actBudgetOrderDoc: TAction;
    cdsDetailBUDGET_PRODUCT_CODE: TAbmesFloatField;
    cdsDetailBUDGET_PRODUCT_NO: TAbmesFloatField;
    cdsDetailBUDGET_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParamsBUDGET_PRODUCT_CODE: TAbmesFloatField;
    cdsDetailBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField;
    actIntroducingItems: TAction;
    actExpenseItems: TAction;
    cdsDetailTotals: TAbmesClientDataSet;
    cdsDetailTotalsSUM_TOTAL_PRICE: TAbmesFloatField;
    cdsDetailTotalsSUM_BO_PRICE_PERCENT: TAbmesFloatField;
    dsDetailTotals: TDataSource;
    cdsDetail_PRINT_SUM_TOTAL_PRICE: TAbmesFloatField;
    cdsDetail_PRINT_SUM_BO_PRICE_PERCENT: TAbmesFloatField;
    cdsDetail_DEVIATION_PERCENT: TAbmesFloatField;
    cdsGridDataDAYS_LEFT_PERCENT: TAbmesFloatField;
    cdsDetailACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    cdsDetailTotalsSUM_ACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    cdsDetailTotals_TOTAL_PRICE_DEV_PERCENT: TAbmesFloatField;
    cdsDetail_PRINT_TOTAL_PRICE_DEV_PERCENT: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField;
    cdsOrgTaskProposalStates: TAbmesClientDataSet;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NO: TAbmesFloatField;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_ORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField;
    actExploitationItems: TAction;
    cdsDetailBUDGET_ORDER_ITEM_TYPE_DISPLAY: TAbmesWideStringField;
    tlbBudgetOrderItemTypes: TToolBar;
    btnIntroducingItems: TSpeedButton;
    btnExpenseItems: TSpeedButton;
    btnExploitationItems: TSpeedButton;
    sepNavigator: TToolButton;
    cdsGridDataBOIO_PLAN_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataSUM_BOIO_PLAN_TOTAL_PRICE: TAggregateField;
    tlbToggleButtons: TToolBar;
    btnShowDeviationPercents: TSpeedButton;
    sepShowDeviationPercents: TToolButton;
    btnMasterBOIOPlanPrice: TSpeedButton;
    btnMasterBOIOPlanPriceDeviation: TSpeedButton;
    sepMasterRealPriceDeviation: TToolButton;
    btnMasterRealPrice: TSpeedButton;
    btnMasterRealToPlanDeviation: TSpeedButton;
    btnMasterRealToBOIOPlanDeviation: TSpeedButton;
    sepToggleProductDisplay: TToolButton;
    cdsGridData_ACCOUNT_TO_PLAN_DEV: TAbmesFloatField;
    cdsGridData_BOIO_PLAN_TO_PLAN_DEV: TAbmesFloatField;
    cdsGridData_ACCOUNT_TO_BOIO_PLAN_DEV: TAbmesFloatField;
    cdsGridData_ACCOUNT_TO_PLAN_DEV_P: TAbmesFloatField;
    cdsGridData_BOIO_PLAN_TO_PLAN_DEV_P: TAbmesFloatField;
    cdsGridData_ACCOUNT_TO_BOIO_PLAN_DEV_P: TAbmesFloatField;
    btnToggleProductDisplay: TSpeedButton;
    cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV: TAggregateField;
    cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV_P: TAggregateField;
    cdsGridData_TOTAL_ACCOUNT_TO_PLAN_DEV: TAggregateField;
    cdsGridData_TOTAL_ACCOUNT_TO_PLAN_DEV_P: TAggregateField;
    cdsGridData_TOTAL_ACCOUNT_TO_BOIO_PLAN_DEV: TAggregateField;
    cdsGridData_TOT_ACCOUNT_TO_BOIO_PLAN_DEV_P: TAggregateField;
    cdsGridData_BOIO_PLAN_COLUMN_TYPE_CODE: TAbmesFloatField;
    cdsGridData_ACCOUNT_COLUMN_TYPE_CODE: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsDetailCalcFields(DataSet: TDataSet);
    procedure cdsGridDataREMAINING_TOTAL_PRICE_PERCENTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsDetailREMAINING_TOTAL_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure grdDetailGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridData_AVG_REM_TOT_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataBEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailBEGIN_DATEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsDetailHAS_ORDER_STATE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataBUDGET_ORDER_STATUS_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailBUDGET_ITEM_STATUS_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailBO_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure cdsDetailBOI_ORDER_COUNTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailDAYS_LEFT_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataAVG_REMAINING_TOTAL_PR_PERCENTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridDataSUM_PROJECT_TOTAL_PRICEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataSUM_PLAN_TOTAL_PRICEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataSUM_ACCOUNT_TOTAL_PRICEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actBudgetOrderItemDocExecute(Sender: TObject);
    procedure actBudgetOrderItemDocUpdate(Sender: TObject);
    procedure actBudgetClassDocExecute(Sender: TObject);
    procedure actBudgetClassDocUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure btnShowAnnuledLinesClick(Sender: TObject);
    procedure actBudgetOrderDocUpdate(Sender: TObject);
    procedure actBudgetOrderDocExecute(Sender: TObject);
    procedure actExpenseItemsExecute(Sender: TObject);
    procedure actIntroducingItemsExecute(Sender: TObject);
    procedure cdsDetailFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure actExpenseItemsUpdate(Sender: TObject);
    procedure actIntroducingItemsUpdate(Sender: TObject);
    procedure cdsDetailTotalsSUM_TOTAL_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailTotalsSUM_BO_PRICE_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailTotalsSUM_REMAINING_TOTAL_PR_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataAfterScroll(DataSet: TDataSet);
    procedure cdsDetail_PRINT_SUM_TOTAL_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetail_PRINT_SUM_BO_PRICE_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetail_PRINT_SUM_REM_TOTAL_PR_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetail_DEVIATION_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataDAYS_LEFT_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_AVG_REMAINING_TOTAL_PR_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataTOTAL_PRICE_DEV_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailTotalsCalcFields(DataSet: TDataSet);
    procedure cdsDetailTotals_TOTAL_PRICE_DEV_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetail_PRINT_TOTAL_PRICE_DEV_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actExploitationItemsUpdate(Sender: TObject);
    procedure actExploitationItemsExecute(Sender: TObject);
    procedure cdsGridData_ACCOUNT_TO_BOIO_PLAN_DEV_PGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_BOIO_PLAN_TO_PLAN_DEV_PGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_ACCOUNT_TO_PLAN_DEV_PGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_ACCOUNT_TO_BOIO_PLAN_DEVGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_BOIO_PLAN_TO_PLAN_DEVGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_ACCOUNT_TO_PLAN_DEVGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSUM_BOIO_PLAN_TOTAL_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEVGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_ACCOUNT_TO_PLAN_DEVGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_ACCOUNT_TO_BOIO_PLAN_DEVGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV_PGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_ACCOUNT_TO_PLAN_DEV_PGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_TOT_ACCOUNT_TO_BOIO_PLAN_DEV_PGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actPrintDetailsExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure grdDetailSortMarkingChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsDetailBeforeOpen(DataSet: TDataSet);
  private
    FBudgetMode: TBudgetMode;
    FVisibleBudgetOrderItemsBaseType: TBudgetOrderItemBaseType;
    procedure RefilterDetailDataSet;
    procedure RecalculateDetailTotals;
  protected
    function GetInsertDetailRecordEnabled: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean; override;
    function ShowFilterForm: Boolean; override;
    class function CanUseDocs: Boolean; override;
    procedure DoBeforeShow; override;
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

implementation

uses
  dMain, fBudgetOrder, uClientPeriods, uClientUtils, Math,
  fBudgetOrdersFilter, fGridForm, uColorConsts, fBaseForm, uLoginContext,
  uUserActivityConsts, fDataForm, uUtils, rBudgetOrders,
  rBudgetOrdersDetail, uDocUtils, uToolbarUtils, uBudgetReportUtils;

{$R *.dfm}

procedure TfmBudgetOrders.FormCreate(Sender: TObject);
begin
  inherited;

  EditFormClass:= TfmBudgetOrder;
  FilterFormClass:= TfmBudgetOrdersFilter;
  ReportClass:= TrptBudgetOrders;
  DetailEditFormClass:= TfmBudgetOrder;
  DetailsReportClass:= TrptBudgetOrdersDetail;

  RegisterDateFields(cdsGridData);
  RegisterDateFields(cdsDetail);
end;

procedure TfmBudgetOrders.FormShow(Sender: TObject);
begin
  inherited;
  InitializeAbmesDBGrid(grdDetail);
end;

procedure TfmBudgetOrders.cdsDetailCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsDetail_BUDGET_MODE.AsInteger:= BudgetModeToInt(FBudgetMode);

  cdsDetail_DEVIATION_PERCENT.AsVariant:=
    FloatToVar(
      VarToFloat(cdsDetailREMAINING_TOTAL_PRICE_PERCENT.AsVariant) -
      VarToFloat(cdsDetailDAYS_LEFT_PERCENT.AsVariant));

  cdsDetail_PRINT_SUM_TOTAL_PRICE.Assign(cdsDetailTotalsSUM_TOTAL_PRICE);
  cdsDetail_PRINT_SUM_BO_PRICE_PERCENT.Assign(cdsDetailTotalsSUM_BO_PRICE_PERCENT);
  cdsDetail_PRINT_TOTAL_PRICE_DEV_PERCENT.Assign(cdsDetailTotals_TOTAL_PRICE_DEV_PERCENT);
end;

procedure TfmBudgetOrders.cdsGridDataREMAINING_TOTAL_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsDetailREMAINING_TOTAL_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsDetailFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    ( BudgetOrderItemTypeToBaseType(
        IntToBudgetOrderItemType(cdsDetailBUDGET_ORDER_ITEM_TYPE_CODE.AsInteger)
      ) = FVisibleBudgetOrderItemsBaseType
    ) and
    (btnShowAnnuledLines.Down or cdsDetailANNUL_EMPLOYEE_CODE.IsNull);
end;

procedure TfmBudgetOrders.grdDetailGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if not cdsDetailANNUL_EMPLOYEE_CODE.IsNull and not (gdSelected in State) then
    Background:= ccAnnuledObjectBackground;
end;

procedure TfmBudgetOrders.cdsDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with (DataSet as TClientDataSet) do
    if (IndexName = SortIndexName) then
      IndexName:= '';
end;

procedure TfmBudgetOrders.grdDetailSortMarkingChanged(Sender: TObject);
begin
  inherited;
  SortGrid(grdDetail, SortIndexName, True);
end;

procedure TfmBudgetOrders.CloseDataSets;
begin
  cdsOrgTaskProposalStates.Close;
  cdsBOIOrderTypes.Close;
  cdsBranches.Close;
  cdsRegularityTypes.Close;
  cdsBOIDistricutionTypes.Close;
  inherited;
  cdsDetailTotals.Close;
end;

procedure TfmBudgetOrders.DoBeforeShow;
begin
  RecursivelyFormatCaptions(Self, CreateCommonMsgParams(LoginContext, FBudgetMode));
  inherited;
end;

procedure TfmBudgetOrders.OpenDataSets;
begin
  cdsDetailTotals.CreateDataSet;
  inherited;
  cdsBOIDistricutionTypes.Open;
  cdsRegularityTypes.Open;
  cdsBranches.Open;
  cdsBOIOrderTypes.Open;
  cdsOrgTaskProposalStates.Open;
end;

procedure TfmBudgetOrders.cdsGridData_ACCOUNT_TO_BOIO_PLAN_DEVGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridData_ACCOUNT_TO_BOIO_PLAN_DEV_PGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridData_ACCOUNT_TO_PLAN_DEVGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridData_ACCOUNT_TO_PLAN_DEV_PGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridData_AVG_REMAINING_TOTAL_PR_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridData_AVG_REM_TOT_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridData_BOIO_PLAN_TO_PLAN_DEVGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridData_BOIO_PLAN_TO_PLAN_DEV_PGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridData_TOTAL_ACCOUNT_TO_BOIO_PLAN_DEVGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridData_TOTAL_ACCOUNT_TO_PLAN_DEVGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridData_TOTAL_ACCOUNT_TO_PLAN_DEV_PGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEVGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV_PGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridData_TOT_ACCOUNT_TO_BOIO_PLAN_DEV_PGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.Field = cdsGridDataBUDGET_ORDER_STATUS_CODE) and
     (cdsGridDataBUDGET_ORDER_STATUS_CODE.AsInteger = 5) then
    AFont.Color:= clRed;
end;

procedure TfmBudgetOrders.cdsGridDataBEGIN_DATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;

  if cdsGridDataBEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsShortString(cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime);
end;

procedure TfmBudgetOrders.cdsDetailBEGIN_DATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;

  if cdsDetailBEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsShortString(cdsDetailBEGIN_DATE.AsDateTime, cdsDetailEND_DATE.AsDateTime);
end;

procedure TfmBudgetOrders.cdsDetailHAS_ORDER_STATE_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= GetBudgetOrderItemHasOrderStateAbbrev(Sender.AsInteger);
end;

procedure TfmBudgetOrders.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
  ABudgetMode: TBudgetMode);
const
  VisibleBudgetOrderItemBaseTypes: array[TBudgetMode] of TBudgetOrderItemBaseType =
    (boibtExpense, boibtIntroducing);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FBudgetMode:= ABudgetMode;
  FVisibleBudgetOrderItemsBaseType:= VisibleBudgetOrderItemBaseTypes[FBudgetMode];
end;

class function TfmBudgetOrders.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; ABudgetMode: TBudgetMode): Boolean;
var
  f: TfmBudgetOrders;
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

procedure TfmBudgetOrders.cdsGridDataBUDGET_ORDER_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= GetBudgetOrderStatusText(Sender.AsInteger, sttAbbrevName);
end;

procedure TfmBudgetOrders.cdsDetailBUDGET_ITEM_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= GetBudgetOrderItemStatusText(Sender.AsInteger, sttAbbrevName);
end;

procedure TfmBudgetOrders.cdsDetailBO_PRICE_PERCENTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

function TfmBudgetOrders.ShowFilterForm: Boolean;
begin
  Result:= TfmBudgetOrdersFilter.ShowForm(dmDocClient, pdsGridDataParams, emEdit, doNone, FBudgetMode);
end;

procedure TfmBudgetOrders.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('BUDGET_ORDER_CLASS_CODE').AsInteger:= BudgetModeToInt(FBudgetMode);
end;

function TfmBudgetOrders.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmBudgetOrder.ShowForm(dmDocClient, cdsGridData, AEditMode, doNone, False, FBudgetMode);
end;

function TfmBudgetOrders.GetInsertDetailRecordEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmBudgetOrders.cdsDetailBOI_ORDER_COUNTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsDetailDAYS_LEFT_PERCENTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

function TfmBudgetOrders.ShowDetailEditForm(AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin): Boolean;
begin
  Result:= TfmBudgetOrder.ShowForm(dmDocClient, cdsDetail, AEditMode, doNone, False, FBudgetMode);
end;

procedure TfmBudgetOrders.cdsGridDataAfterScroll(DataSet: TDataSet);
begin
  inherited;
  RecalculateDetailTotals;
end;

procedure TfmBudgetOrders.cdsGridDataAVG_REMAINING_TOTAL_PR_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridDataSUM_PROJECT_TOTAL_PRICEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridDataTOTAL_PRICE_DEV_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridDataSUM_PLAN_TOTAL_PRICEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridDataSUM_ACCOUNT_TOTAL_PRICEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsGridDataSUM_BOIO_PLAN_TOTAL_PRICEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsDetailTotalsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (cdsDetailTotalsSUM_TOTAL_PRICE.AsFloat = 0) then
    cdsDetailTotals_TOTAL_PRICE_DEV_PERCENT.Clear
  else
    cdsDetailTotals_TOTAL_PRICE_DEV_PERCENT.AsFloat:=
      (cdsDetailTotalsSUM_TOTAL_PRICE.AsFloat - cdsDetailTotalsSUM_ACCOUNT_TOTAL_PRICE.AsFloat) /
      cdsDetailTotalsSUM_TOTAL_PRICE.AsFloat;
end;

procedure TfmBudgetOrders.cdsDetailTotalsSUM_BO_PRICE_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsDetailTotalsSUM_REMAINING_TOTAL_PR_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsDetailTotalsSUM_TOTAL_PRICEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsDetailTotals_TOTAL_PRICE_DEV_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsDetail_DEVIATION_PERCENTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsDetail_PRINT_SUM_BO_PRICE_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsDetail_PRINT_SUM_REM_TOTAL_PR_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsDetail_PRINT_SUM_TOTAL_PRICEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.cdsDetail_PRINT_TOTAL_PRICE_DEV_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrders.actBudgetOrderDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotBudgetOrder,
    cdsGridDataDOC_BRANCH_CODE.AsInteger, cdsGridDataDOC_CODE.AsInteger
  );
end;

procedure TfmBudgetOrders.actBudgetOrderDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmBudgetOrders.actBudgetOrderItemDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotBudgetOrderItem,
    cdsDetailDOC_BRANCH_CODE.AsInteger, cdsDetailDOC_CODE.AsInteger
  );
end;

procedure TfmBudgetOrders.actBudgetOrderItemDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmBudgetOrders.RecalculateDetailTotals;

  procedure IncFloatField(AField, ADeltaField: TAbmesFloatField);
  begin
    AField.AsFloat:= AField.AsFloat + ADeltaField.AsFloat;
  end;

var
  SavedAutoCalcFields: Boolean;
  b: TBookmark;
begin
  cdsDetail.DisableControls;
  try
    b:= cdsDetail.Bookmark;
    try
      SavedAutoCalcFields:= cdsDetail.AutoCalcFields;
      cdsDetail.AutoCalcFields:= False;
      try
        cdsDetailTotals.Edit;
        try
          cdsDetailTotalsSUM_TOTAL_PRICE.AsInteger:= 0;
          cdsDetailTotalsSUM_ACCOUNT_TOTAL_PRICE.AsInteger:= 0;
          cdsDetailTotalsSUM_BO_PRICE_PERCENT.AsInteger:= 0;

          cdsDetail.First;
          while not cdsDetail.Eof do
            begin
              IncFloatField(cdsDetailTotalsSUM_TOTAL_PRICE, cdsDetailTOTAL_PRICE);
              IncFloatField(cdsDetailTotalsSUM_ACCOUNT_TOTAL_PRICE, cdsDetailACCOUNT_TOTAL_PRICE);
              IncFloatField(cdsDetailTotalsSUM_BO_PRICE_PERCENT, cdsDetailBO_PRICE_PERCENT);
              cdsDetail.Next;
            end;  { while }

          cdsDetailTotals.Post;
        except
          cdsDetailTotals.Cancel;
          raise;
        end;  { try }
      finally
        cdsDetail.AutoCalcFields:= SavedAutoCalcFields;
      end;  { try }
    finally
      cdsDetail.Bookmark:= b;
    end;  { try }
  finally
    cdsDetail.EnableControls;
  end;  { try }
end;

procedure TfmBudgetOrders.RefilterDetailDataSet;
var
  b: TBookmark;
begin
  cdsDetail.DisableControls;
  try
    b:= cdsDetail.Bookmark;
    try
      cdsDetail.Filtered:= False;
      cdsDetail.Filtered:= True;
    finally
      try
        cdsDetail.Bookmark:= b;
      except
        cdsDetail.First;
      end;  { try }
    end;  { try }
  finally
    cdsDetail.EnableControls;
  end;  { try }

  RecalculateDetailTotals;
end;

procedure TfmBudgetOrders.actExpenseItemsExecute(Sender: TObject);
begin
  inherited;
  FVisibleBudgetOrderItemsBaseType:= boibtExpense;
  RefilterDetailDataSet;
end;

procedure TfmBudgetOrders.actExpenseItemsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (FBudgetMode = bmInvest);
end;

procedure TfmBudgetOrders.actExploitationItemsExecute(Sender: TObject);
begin
  inherited;
  FVisibleBudgetOrderItemsBaseType:= boibtExploitation;
  RefilterDetailDataSet;
end;

procedure TfmBudgetOrders.actExploitationItemsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (FBudgetMode = bmInvest);
end;

procedure TfmBudgetOrders.actBudgetClassDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotProduct,
    cdsDetailBC_DOC_BRANCH_CODE.AsInteger, cdsDetailBC_DOC_CODE.AsInteger
  );
end;

procedure TfmBudgetOrders.actBudgetClassDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmBudgetOrders.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnBudgetOrderDoc.ImageIndex:= cdsGridDataHAS_DOCUMENTATION.AsInteger;
  btnBudgetOrderItemDoc.ImageIndex:= cdsDetailHAS_DOCUMENTATION.AsInteger;
  btnBudgetClassDoc.ImageIndex:= cdsDetailBC_HAS_DOC.AsInteger;

  NormalizedToolbar(tlbBudgetOrderItemTypes).Visible:= (FBudgetMode = bmInvest);

  UpdateColumnsVisibility(grdData, NormalizedToolbarToolbarsAndFlowPanels(tlbToggleButtons));

  grdDetail.Columns[2].Visible:= (FBudgetMode = bmInvest);
  AutoSizeColumn(grdDetail, 5);
end;

procedure TfmBudgetOrders.actIntroducingItemsExecute(Sender: TObject);
begin
  inherited;
  FVisibleBudgetOrderItemsBaseType:= boibtIntroducing;
  RefilterDetailDataSet;
end;

procedure TfmBudgetOrders.actIntroducingItemsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (FBudgetMode = bmInvest);
end;

procedure TfmBudgetOrders.actPrintDetailsExecute(Sender: TObject);
begin
  cdsGridData.RecalcFields;
  inherited;
end;

procedure TfmBudgetOrders.actPrintExecute(Sender: TObject);
begin
  cdsGridData.RecalcFields;
  inherited;
end;

procedure TfmBudgetOrders.btnShowAnnuledLinesClick(Sender: TObject);
begin
  inherited;
  RefilterDetailDataSet;
end;

procedure TfmBudgetOrders.cdsGridDataDAYS_LEFT_PERCENTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

class function TfmBudgetOrders.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmBudgetOrders.cdsGridDataCalcFields(DataSet: TDataSet);

  procedure CalcDeviation(AResultField, AFromField, AToField: TAbmesFloatField; AInPercents: Boolean = False);
  begin
    if (AFromField.AsFloat = 0) then
      AResultField.Clear
    else
      AResultField.AsVariant:=
        FloatToVar((AToField.AsFloat - AFromField.AsFloat) / IfThen(AInPercents, AFromField.AsFloat, 1));
  end;

  procedure CalcDeviationPercent(AResultField, AFromField, AToField: TAbmesFloatField);
  begin
    CalcDeviation(AResultField, AFromField, AToField, True);
  end;

  function GetBOIOPlanColumnType: TBOIOPlanColumnType;
  begin
    Result:= boiopctBOIOPlanPrice;

    if btnMasterBOIOPlanPrice.Down then
      begin
        Result:= boiopctBOIOPlanPrice;
        Exit;
      end;  { if }

    if btnMasterBOIOPlanPriceDeviation.Down then
      begin
        if btnShowDeviationPercents.Down then
          Result:= boiopctBOIOPlanToPlanDevPercent
        else
          Result:= boiopctBOIOPlanToPlanDev;

        Exit;
      end;  { if }

    Assert(False, 'fmBudgetOrders.GetBOIOPlanColumnType: Result is not assigned');
  end;

  function GetRealColumnType: TRealColumnType;
  begin
    Result:= rctRealPrice;

    if btnMasterRealPrice.Down then
      begin
        Result:= rctRealPrice;
        Exit;
      end;  { if }

    if btnMasterRealToPlanDeviation.Down then
      begin
        if btnShowDeviationPercents.Down then
          Result:= rctRealToPlanDevPercent
        else
          Result:= rctRealToPlanDev;

        Exit;
      end;  { if }

    if btnMasterRealToBOIOPlanDeviation.Down then
      begin
        if btnShowDeviationPercents.Down then
          Result:= rctRealToBOIOPlanDevPercent
        else
          Result:= rctRealToBOIOPlanDev;

        Exit;
      end;  { if }

    Assert(False, 'fmBudgetOrders.GetRealColumnType: Result is not assigned');
  end;

begin
  inherited;
  cdsGridData_BUDGET_MODE.AsInteger:= BudgetModeToInt(FBudgetMode);

  CalcDeviation(cdsGridData_ACCOUNT_TO_PLAN_DEV, cdsGridDataPLAN_TOTAL_PRICE, cdsGridDataACCOUNT_TOTAL_PRICE);
  CalcDeviation(cdsGridData_BOIO_PLAN_TO_PLAN_DEV, cdsGridDataPLAN_TOTAL_PRICE, cdsGridDataBOIO_PLAN_TOTAL_PRICE);
  CalcDeviation(cdsGridData_ACCOUNT_TO_BOIO_PLAN_DEV, cdsGridDataBOIO_PLAN_TOTAL_PRICE, cdsGridDataACCOUNT_TOTAL_PRICE);

  CalcDeviationPercent(cdsGridData_ACCOUNT_TO_PLAN_DEV_P, cdsGridDataPLAN_TOTAL_PRICE, cdsGridDataACCOUNT_TOTAL_PRICE);
  CalcDeviationPercent(cdsGridData_BOIO_PLAN_TO_PLAN_DEV_P, cdsGridDataPLAN_TOTAL_PRICE, cdsGridDataBOIO_PLAN_TOTAL_PRICE);
  CalcDeviationPercent(cdsGridData_ACCOUNT_TO_BOIO_PLAN_DEV_P, cdsGridDataBOIO_PLAN_TOTAL_PRICE, cdsGridDataACCOUNT_TOTAL_PRICE);

  cdsGridData_BOIO_PLAN_COLUMN_TYPE_CODE.AsInteger:= BOIOPlanColumnTypeToInt(GetBOIOPlanColumnType);
  cdsGridData_ACCOUNT_COLUMN_TYPE_CODE.AsInteger:= RealColumnTypeToInt(GetRealColumnType);
end;

end.

