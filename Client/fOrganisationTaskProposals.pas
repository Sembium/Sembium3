unit fOrganisationTaskProposals;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, fGridForm, Menus, Mask, uOrganisationTaskUtils,
  DBGridEhGrouping, fBaseForm, fDataForm, rOrganisationTaskProposals,
  fOrganisationTaskProposal, fOrganisationTaskProposalsFilter;

type
  [CanUseDocs]
  [ReportClass(TrptOrganisationTaskProposals)]
  [EditFormClass(TfmOrganisationTaskProposal)]
  [FilterFormClass(TfmOrganisationTaskProposalsFilter)]
  TfmOrganisationTaskProposals = class(TGridForm)
    semBeforeOrgTaskProposalDoc: TToolButton;
    tlbDocs: TToolBar;
    lblOrgTaskProposalDoc: TLabel;
    btnOrgTaskProposalDoc: TToolButton;
    sepBeforeProductDoc: TToolButton;
    actOrgTaskProposalDoc: TAction;
    lblProductDoc: TLabel;
    brnProductDoc: TToolButton;
    actProductDoc: TAction;
    sepBeforeProdOrderDoc: TToolButton;
    lblProdOrderDoc: TLabel;
    btnProdOrderDoc: TToolButton;
    actProdOrderDoc: TAction;
    pdsGridDataParamsMIN_PROPOSAL_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_PROPOSAL_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsORG_TASK_PROPOSAL_NO: TAbmesFloatField;
    pdsGridDataParamsCREATE_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsCREATE_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsPLAN_PROPOSAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsPLAN_PROPOSAL_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsPLAN_PROPOSAL_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsRESULT_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsRESULT_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsRESULT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_CYCLES: TAbmesFloatField;
    pdsGridDataParamsMAX_CYCLES: TAbmesFloatField;
    pdsGridDataParamsALL_FILTERED_PRODUCTS: TAbmesFloatField;
    pdsGridDataParamsDEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_PO_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_PO_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_EO_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_EO_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsHAS_ENGINEERING_ORDER: TAbmesFloatField;
    pdsGridDataParamsHAS_PRODUCTION_ORDER: TAbmesFloatField;
    pmAddOrgTaskProposal: TPopupMenu;
    miAddOrgTaskProposal: TMenuItem;
    AddOrgTaskProposalCycle: TMenuItem;
    actAddOrgTaskProposalCycle: TAction;
    btnInsertRecord: TBitBtn;
    btnEditRecord: TBitBtn;
    btnEngineeringOrder: TBitBtn;
    actEngineeringOrder: TAction;
    btnProductionOrder: TBitBtn;
    actProductionOrder: TAction;
    cdsGridDataORG_TASK_PROPOSAL_CODE: TAbmesFloatField;
    cdsGridDataORG_TASK_PROPOSAL_NO: TAbmesFloatField;
    cdsGridDataORG_TASK_PROPOSAL_CYCLE_NO: TAbmesFloatField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataP_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField;
    cdsGridDataP_DOC_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataP_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataP_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataP_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataDESCRIPTION: TAbmesWideStringField;
    cdsGridDataPLAN_PROPOSAL_DATE: TAbmesSQLTimeStampField;
    cdsGridDataRESULT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataORG_TASK_PROP_RESULT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataEO_STATE_CODE: TAbmesFloatField;
    cdsGridDataENGINEERING_REAL_WORKDAYS: TAbmesFloatField;
    cdsGridDataENGINEERING_ORDER_CODE: TAbmesFloatField;
    cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataML_STATE_CODE: TAbmesFloatField;
    cdsGridDataSALE_PRODUCTION_WORKDAYS: TAbmesFloatField;
    cdsGridDataPROD_ORDER_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPROD_ORDER_DOC_CODE: TAbmesFloatField;
    cdsGridDataOTP_STATE_CODE: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    actInserProposalOrProposalCycle: TAction;
    cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataPROPOSAL_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataPROD_ORDER_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataPLAN_PROPOSAL_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataEO_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataEO_DOC_CODE: TAbmesFloatField;
    cdsGridDataEO_HAS_DOC_ITEMS: TAbmesFloatField;
    sepBeforeEngineeringOrderDoc: TToolButton;
    lblEngineeringOrderDoc: TLabel;
    btnEngineeringOrderDoc: TToolButton;
    actEngineeringOrderDoc: TAction;
    pcGrids: TPageControl;
    tsProjects: TTabSheet;
    tsInvestmentPrices: TTabSheet;
    grdProjects: TAbmesDBGrid;
    grdInvestmentPrices: TAbmesDBGrid;
    cdsGridDataPRJ_BOIO_PLAN_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_PROJECT_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_ENG_PROJECT_PRICE_P: TAbmesFloatField;
    cdsGridDataPRJ_PROD_PROJECT_PRICE_P: TAbmesFloatField;
    cdsGridDataAPPLY_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_BOI_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_DELIVERY_BOI_PRICE_P: TAbmesFloatField;
    cdsGridDataPRJ_EXPENSE_BOI_PRICE_P: TAbmesFloatField;
    cdsGridDataPRJ_ENG_BOI_PRICE_P: TAbmesFloatField;
    cdsGridDataPRJ_PROD_BOI_PRICE_P: TAbmesFloatField;
    cdsGridDataPRJ_APPLY_BOI_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_DELIVERY_BOIO_PLAN_PRICE_P: TAbmesFloatField;
    cdsGridDataPRJ_EXPENSE_BOIO_PLAN_PRICE_P: TAbmesFloatField;
    cdsGridDataPRJ_ENG_BOIO_PLAN_PRICE_P: TAbmesFloatField;
    cdsGridDataPRJ_PROD_BOIO_PLAN_PRICE_P: TAbmesFloatField;
    cdsGridDataPRJ_APPLY_BOIO_PL_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_BOIO_ACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_DELIVERY_BOIO_ACC_PRICE_P: TAbmesFloatField;
    cdsGridDataPRJ_EXPENSE_BOIO_ACC_PRICE_P: TAbmesFloatField;
    cdsGridDataPRJ_ENG_BOIO_ACC_PRICE_P: TAbmesFloatField;
    cdsGridDataPRJ_PROD_BOIO_ACC_PRICE_P: TAbmesFloatField;
    cdsGridDataPRJ_APPLY_BOIO_ACC_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_PRICE_DEV_PROJECT: TAbmesFloatField;
    cdsGridDataPRJ_PRICE_DEV_BOI: TAbmesFloatField;
    cdsGridDataPRJ_PRICE_DEV_BOIO_PLAN: TAbmesFloatField;
    cdsGridDataPRJ_PRICE_DEV_BOIO_ACCOUNT: TAbmesFloatField;
    cdsGridDataSUM_PROJECT_TOTAL_PRICE: TAggregateField;
    cdsGridDataSUM_BOI_TOTAL_PRICE: TAggregateField;
    cdsGridDataSUM_BOIO_PLAN_TOTAL_PRICE: TAggregateField;
    cdsGridDataSUM_BOIO_ACCOUNT_TOTAL_PRICE: TAggregateField;
    cdsGridDataSUM_APPLY_PRICE: TAggregateField;
    cdsGridDataSUM_APPLY_BOI_TOTAL_PRICE: TAggregateField;
    cdsGridDataSUM_APPLY_BOIO_PL_TOTAL_PRICE: TAggregateField;
    cdsGridDataSUM_APPLY_BOIO_ACC_TOTAL_PRICE: TAggregateField;
    cdsGridDataSUM_PRICE_DEV_PROJECT: TAggregateField;
    cdsGridDataSUM_PRICE_DEV_BOI: TAggregateField;
    cdsGridDataSUM_PRICE_DEV_BOIO_PLAN: TAggregateField;
    cdsGridDataSUM_PRICE_DEV_BOIO_ACCOUNT: TAggregateField;
    cdsGridDataENGINEERING_ORDER_IDENTIFIER: TAbmesWideStringField;
    tlbToggleColumnsForInvestmentsTab: TToolBar;
    btnPercentsMode: TSpeedButton;
    sepToggleApplyAndPriceDeviations: TToolButton;
    btnToggleApplyAndPriceDeviations: TSpeedButton;
    tlbToggleColumnsForProjectsTab: TToolBar;
    btnProposalColumns: TSpeedButton;
    btnEngineeringColumns: TSpeedButton;
    btnProductionColumns: TSpeedButton;
    cdsGridDataSALE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataENGINEERING_BEGIN_DAYS_LEFT: TAbmesFloatField;
    cdsGridDataENGINEERING_END_DAYS_LEFT: TAbmesFloatField;
    cdsGridDataENGINEERING_REAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataENGINEERING_REAL_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPRODUCTION_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPRODUCTION_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPRODUCTION_BEGIN_DAYS_LEFT: TAbmesFloatField;
    cdsGridDataPRODUCTION_END_DAYS_LEFT: TAbmesFloatField;
    cdsGridDataPRODUCTION_REAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPRODUCTION_REAL_END_DATE: TAbmesSQLTimeStampField;
    cdsGridData_PROJECT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridData_PROJECT_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPRJ_ENG_PROJECT_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_PROD_PROJECT_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_DELIVERY_BOI_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_EXPENSE_BOI_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_ENG_BOI_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_PROD_BOI_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_DELIVERY_BOIO_PLAN_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_EXPENSE_BOIO_PLAN_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_ENG_BOIO_PLAN_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_PROD_BOIO_PLAN_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_DELIVERY_BOIO_ACC_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_EXPENSE_BOIO_ACC_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_ENG_BOIO_ACC_PRICE: TAbmesFloatField;
    cdsGridDataPRJ_PROD_BOIO_ACC_PRICE: TAbmesFloatField;
    cdsGridDataAVG_ENG_PROJECT_PRICE_P: TAggregateField;
    cdsGridDataAVG_PROD_PROJECT_PRICE_P: TAggregateField;
    cdsGridDataAVG_DELIVERY_BOI_PRICE_P: TAggregateField;
    cdsGridDataAVG_EXPENSE_BOI_PRICE_P: TAggregateField;
    cdsGridDataAVG_ENG_BOI_PRICE_P: TAggregateField;
    cdsGridDataAVG_PROD_BOI_PRICE_P: TAggregateField;
    cdsGridDataAVG_DELIVERY_BOIO_PLAN_PRICE_P: TAggregateField;
    cdsGridDataAVG_EXPENSE_BOIO_PLAN_PRICE_P: TAggregateField;
    cdsGridDataAVG_ENG_BOIO_PLAN_PRICE_P: TAggregateField;
    cdsGridDataAVG_PROD_BOIO_PLAN_PRICE_P: TAggregateField;
    cdsGridDataAVG_DELIVERY_BOIO_ACC_PRICE_P: TAggregateField;
    cdsGridDataAVG_EXPENSE_BOIO_ACC_PRICE_P: TAggregateField;
    cdsGridDataAVG_ENG_BOIO_ACC_PRICE_P: TAggregateField;
    cdsGridDataAVG_PROD_BOIO_ACC_PRICE_P: TAggregateField;
    pdsGridDataParamsENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsPRODUCTION_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsPRODUCTION_PLAN_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsPRC_FUNC_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_KNOWL_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_BASE_OP_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_BASE_ACTION_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_CONCRETE_ACTION_CODE: TAbmesFloatField;
    cdsGridDataMANAGER_EMPLOYEE_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsMANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataP_DOC_EMPTINESS_REQ_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataP_UNAUTHORIZED_ACTIVE_DI_COUNTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataORG_TASK_PROP_RESULT_TYPE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actOrgTaskProposalDocUpdate(Sender: TObject);
    procedure actOrgTaskProposalDocExecute(Sender: TObject);
    procedure actProductDocExecute(Sender: TObject);
    procedure actProductDocUpdate(Sender: TObject);
    procedure cdsGridDataEO_STATE_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataML_STATE_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actProdOrderDocExecute(Sender: TObject);
    procedure actProdOrderDocUpdate(Sender: TObject);
    procedure cdsGridDataOTP_STATE_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actAddOrgTaskProposalCycleExecute(Sender: TObject);
    procedure actAddOrgTaskProposalCycleUpdate(Sender: TObject);
    procedure actEngineeringOrderUpdate(Sender: TObject);
    procedure actEngineeringOrderExecute(Sender: TObject);
    procedure actProductionOrderUpdate(Sender: TObject);
    procedure actProductionOrderExecute(Sender: TObject);
    procedure actInserProposalOrProposalCycleExecute(Sender: TObject);
    procedure actEngineeringOrderDocExecute(Sender: TObject);
    procedure actEngineeringOrderDocUpdate(Sender: TObject);
    procedure grdProjectsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure PricePercentFieldsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataPRODUCTION_PLAN_BEGIN_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataENGINEERING_PLAN_BEGIN_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridData_PROJECT_PLAN_BEGIN_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actExcelExportExecute(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
  private
    function OTPResultType: TOrgTaskProposalResultType;
  public
    { Public declarations }
  end;

implementation

uses
  uDocClientUtils, uDocUtils, uClientTypes,
  uClientUtils, fEngineeringOrder,
  fProductionOrder, Math, uModelUtils, uOrganisationTaskClientUtils,
  uToolbarUtils, dMain, StrUtils, uExcelExport,
  uUtils, uDependantField;

{$R *.dfm}

{ TfmOrganisationTaskProposals }

function TfmOrganisationTaskProposals.OTPResultType: TOrgTaskProposalResultType;
begin
  Result:= IntToOTPResultType(cdsGridDataORG_TASK_PROP_RESULT_TYPE_CODE.AsInteger);
end;

procedure TfmOrganisationTaskProposals.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not pdsGridDataParamsENGINEERING_PLAN_BEGIN_DATE.IsNull then
    CheckRequiredField(pdsGridDataParamsENGINEERING_PLAN_END_DATE);

  if not pdsGridDataParamsENGINEERING_PLAN_END_DATE.IsNull then
    CheckRequiredField(pdsGridDataParamsENGINEERING_PLAN_BEGIN_DATE);

  if not pdsGridDataParamsPRODUCTION_PLAN_BEGIN_DATE.IsNull then
    CheckRequiredField(pdsGridDataParamsPRODUCTION_PLAN_END_DATE);

  if not pdsGridDataParamsPRODUCTION_PLAN_END_DATE.IsNull then
    CheckRequiredField(pdsGridDataParamsPRODUCTION_PLAN_BEGIN_DATE);
end;

procedure TfmOrganisationTaskProposals.actAddOrgTaskProposalCycleExecute(
  Sender: TObject);
begin
  inherited;
  Assert(Assigned(EditFormClass));
  if TfmOrganisationTaskProposal.ShowForm(
       dmDocClient,
       cdsGridData,
       emInsert,
       doNone,
       cdsGridDataORG_TASK_PROPOSAL_CODE.AsInteger) then
    begin
      RefreshDataSet(cdsGridData);
    end;  { if }
end;

procedure TfmOrganisationTaskProposals.actAddOrgTaskProposalCycleUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridData.IsEmpty and
    (cdsGridDataOTP_STATE_CODE.AsInteger = OTPStateProposalReturned);
end;

procedure TfmOrganisationTaskProposals.actEngineeringOrderDocExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotEngineeringOrder,
    cdsGridDataEO_DOC_BRANCH_CODE,
    cdsGridDataEO_DOC_CODE);
end;

procedure TfmOrganisationTaskProposals.actEngineeringOrderDocUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataEO_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmOrganisationTaskProposals.actEngineeringOrderExecute(
  Sender: TObject);
begin
  inherited;
  TfmEngineeringOrder.ShowForm(dmDocClient, cdsGridData, emReadOnly);
end;

procedure TfmOrganisationTaskProposals.actEngineeringOrderUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridDataENGINEERING_ORDER_CODE.IsNull;
end;

procedure TfmOrganisationTaskProposals.actExcelExportExecute(Sender: TObject);
begin
  // do not call inherited

  MultiGridExcelExport(
    [ grdProjects,
      grdInvestmentPrices
    ]);
end;

procedure TfmOrganisationTaskProposals.actFormUpdate(Sender: TObject);
const
  VTitleMargins: array[Boolean] of Integer = (14, 14);
begin
  inherited;
  NormalizedToolbar(tlbToggleColumnsForProjectsTab).Visible:= (pcGrids.ActivePage = tsProjects);
  NormalizedToolbar(tlbToggleColumnsForInvestmentsTab).Visible:= (pcGrids.ActivePage = tsInvestmentPrices);

  UpdateColumnsVisibility(grdProjects, NormalizedToolbarToolbarsAndFlowPanels(tlbToggleColumnsForProjectsTab));
  UpdateColumnsVisibility(grdInvestmentPrices, NormalizedToolbarToolbarsAndFlowPanels(tlbToggleColumnsForInvestmentsTab));

  if (grdProjects.VTitleMargin <> VTitleMargins[btnProposalColumns.Down]) then
    grdProjects.VTitleMargin:= VTitleMargins[btnProposalColumns.Down];
end;

procedure TfmOrganisationTaskProposals.actInserProposalOrProposalCycleExecute(
  Sender: TObject);
begin
  inherited;
  PopupMenuFromButton((Sender as TAction).ActionComponent as TControl, pmAddOrgTaskProposal);
end;

procedure TfmOrganisationTaskProposals.actOrgTaskProposalDocExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotOrgTaskProposal,
    cdsGridData);
end;

procedure TfmOrganisationTaskProposals.actOrgTaskProposalDocUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataPROPOSAL_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmOrganisationTaskProposals.actProdOrderDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotSale,
    cdsGridDataPROD_ORDER_DOC_BRANCH_CODE,
    cdsGridDataPROD_ORDER_DOC_CODE);
end;

procedure TfmOrganisationTaskProposals.actProdOrderDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataPROD_ORDER_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmOrganisationTaskProposals.actProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsGridDataPRODUCT_DOC_BRANCH_CODE,
    cdsGridDataPRODUCT_DOC_CODE);
end;

procedure TfmOrganisationTaskProposals.actProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataPRODUCT_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmOrganisationTaskProposals.actProductionOrderExecute(
  Sender: TObject);
begin
  inherited;
  TfmProductionOrder.ShowForm(dmDocClient, cdsGridData, emReadOnly);
end;

procedure TfmOrganisationTaskProposals.actProductionOrderUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridDataSALE_OBJECT_BRANCH_CODE.IsNull;
end;

procedure TfmOrganisationTaskProposals.PricePercentFieldsGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOrganisationTaskProposals.cdsGridDataPRODUCTION_PLAN_BEGIN_DATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if cdsGridDataPRODUCTION_PLAN_BEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:=
      dmMain.GetDateIntervalAsShortString(
        cdsGridDataPRODUCTION_PLAN_BEGIN_DATE.AsDateTime,
        cdsGridDataPRODUCTION_PLAN_END_DATE.AsDateTime);
end;

procedure TfmOrganisationTaskProposals.cdsGridDataP_DOC_EMPTINESS_REQ_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  DocEmptinessRequirementFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOrganisationTaskProposals.cdsGridDataP_UNAUTHORIZED_ACTIVE_DI_COUNTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  UnauthorizedActiveDocItemCountFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOrganisationTaskProposals.cdsGridData_PROJECT_PLAN_BEGIN_DATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if cdsGridData_PROJECT_PLAN_BEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:=
      dmMain.GetDateIntervalAsShortString(
        cdsGridData_PROJECT_PLAN_BEGIN_DATE.AsDateTime,
        cdsGridData_PROJECT_PLAN_END_DATE.AsDateTime);
end;

procedure TfmOrganisationTaskProposals.FormCreate(Sender: TObject);
begin
  inherited;
  RegisterDateFields(cdsGridData);

  pdsGridDataParamsPRC_KNOWL_CODE.DependsOn:= pdsGridDataParamsPRC_FUNC_CODE.FieldName;
  pdsGridDataParamsPRC_BASE_OP_CODE.DependsOn:= pdsGridDataParamsPRC_FUNC_CODE.FieldName;
  pdsGridDataParamsPRC_BASE_ACTION_CODE.DependsOn:= pdsGridDataParamsPRC_FUNC_CODE.FieldName;
  pdsGridDataParamsPRC_CONCRETE_OP_CODE.DependsOn:= pdsGridDataParamsPRC_FUNC_CODE.FieldName;
  pdsGridDataParamsPRC_CONCRETE_ACTION_CODE.DependsOn:= pdsGridDataParamsPRC_FUNC_CODE.FieldName;
end;

procedure TfmOrganisationTaskProposals.grdProjectsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
const
  DaysLeftColors: array[TValueSign] of TColor = (clRed, clWindowText, clGreen);
begin
  inherited;

  DocFieldsGetCellParams(Sender, Column, AFont, Background, State, 'P_%s');

  if EndsStr('_DAYS_LEFT', Column.FieldName) then
    AFont.Color:= DaysLeftColors[Sign(Column.Field.AsInteger)]
end;

procedure TfmOrganisationTaskProposals.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridData_PROJECT_PLAN_BEGIN_DATE.Assign(cdsGridDataENGINEERING_PLAN_BEGIN_DATE);
  cdsGridData_PROJECT_PLAN_END_DATE.Assign(cdsGridDataPRODUCTION_PLAN_END_DATE);
end;

procedure TfmOrganisationTaskProposals.cdsGridDataENGINEERING_PLAN_BEGIN_DATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if cdsGridDataENGINEERING_PLAN_BEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:=
      dmMain.GetDateIntervalAsShortString(
        cdsGridDataENGINEERING_PLAN_BEGIN_DATE.AsDateTime,
        cdsGridDataENGINEERING_PLAN_END_DATE.AsDateTime);
end;

procedure TfmOrganisationTaskProposals.cdsGridDataEO_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(Sender.AsInteger, Low(TEOStates), High(TEOStates)) then
    Text:= EOStateNames[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmOrganisationTaskProposals.cdsGridDataML_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(Sender.AsInteger, Low(MLStateNames), High(MLStateNames)) then
    Text:= MLStateNames[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmOrganisationTaskProposals.cdsGridDataORG_TASK_PROP_RESULT_TYPE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
const
  OrganisationTaskProposalTypeSymbols: array[TOrgTaskProposalResultType] of string = ('', '®', '­', '¬', 'C');  
begin
  inherited;
  Text:= OrganisationTaskProposalTypeSymbols[OTPResultType];
end;

procedure TfmOrganisationTaskProposals.cdsGridDataOTP_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(Sender.AsInteger, Low(OTPStateNames), High(OTPStateNames)) then
    Text:= OTPStateNames[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

end.
