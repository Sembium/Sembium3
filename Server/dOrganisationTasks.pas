unit dOrganisationTasks;

interface

uses
  Windows, Messages, SysUtils, Classes,
  DBClient, dPooledDataModule, dDBPooledDataModule,
  DB, AbmesSQLQuery, Provider, AbmesFields, JvStringHolder,
  WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmOrganisationTasks = class(TDBPooledDataModule)
    qryOrgTaskProposalResultTypes: TAbmesSQLQuery;
    qryOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_CODE: TAbmesFloatField;
    qryOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_NAME: TAbmesWideStringField;
    prvOrgTaskProposalResultTypes: TDataSetProvider;
    qryOrganisationTaskProposals: TAbmesSQLQuery;
    qryOrganisationTaskProposalsORG_TASK_PROPOSAL_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsORG_TASK_PROPOSAL_NO: TAbmesFloatField;
    qryOrganisationTaskProposalsORG_TASK_PROPOSAL_CYCLE_NO: TAbmesFloatField;
    qryOrganisationTaskProposalsCREATE_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalsP_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsP_DOC_IS_COMPLETE: TAbmesFloatField;
    qryOrganisationTaskProposalsP_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOrganisationTaskProposalsP_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOrganisationTaskProposalsP_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryOrganisationTaskProposalsDESCRIPTION: TAbmesWideStringField;
    qryOrganisationTaskProposalsPLAN_PROPOSAL_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalsRESULT_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalsORG_TASK_PROP_RESULT_TYPE_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRODUCT_NO: TAbmesFloatField;
    qryOrganisationTaskProposalsPRODUCT_NAME: TAbmesWideStringField;
    qryOrganisationTaskProposalsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRODUCT_DOC_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryOrganisationTaskProposalsEO_STATE_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsENGINEERING_REAL_WORKDAYS: TAbmesFloatField;
    qryOrganisationTaskProposalsENGINEERING_ORDER_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsSALE_OBJECT_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsML_STATE_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsSALE_PRODUCTION_WORKDAYS: TAbmesFloatField;
    qryOrganisationTaskProposalsPROD_ORDER_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsPROD_ORDER_DOC_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsOTP_STATE_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsDOC_BRANCH_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsDOC_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    prvOrganisationTaskProposals: TDataSetProvider;
    qryProductEngineeringOrder: TAbmesSQLQuery;
    qryProductEngineeringOrderENGINEERING_ORDER_CODE: TAbmesFloatField;
    qryProductEngineeringOrderEO_STATE_CODE: TAbmesFloatField;
    qryProductEngineeringOrderDOC_BRANCH_CODE: TAbmesFloatField;
    qryProductEngineeringOrderDOC_CODE: TAbmesFloatField;
    qryProductEngineeringOrderENGINEERING_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryProductEngineeringOrderENGINEERING_ORDER_NO: TAbmesFloatField;
    qryProductEngineeringOrderENGINEERING_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryProductEngineeringOrderENGINEERING_REAL_WORKDAYS: TAbmesFloatField;
    prvProductEngineeringOrder: TDataSetProvider;
    qryProductProductionOrder: TAbmesSQLQuery;
    qryProductProductionOrderSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryProductProductionOrderSALE_OBJECT_CODE: TAbmesFloatField;
    qryProductProductionOrderML_STATE_CODE: TAbmesFloatField;
    qryProductProductionOrderPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryProductProductionOrderSALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    qryProductProductionOrderSALE_NO: TAbmesFloatField;
    qryProductProductionOrderSALE_TYPE_ABBREV: TAbmesWideStringField;
    qryProductProductionOrderDOC_BRANCH_CODE: TAbmesFloatField;
    qryProductProductionOrderDOC_CODE: TAbmesFloatField;
    qryProductProductionOrderPRODUCTION_WORKDAYS: TAbmesFloatField;
    qryProductProductionOrderCOMPLETED_QUANTITY: TAbmesFloatField;
    qryProductProductionOrderMANUFACTURE_QUANTITY: TAbmesFloatField;
    prvProductProductionOrder: TDataSetProvider;
    qryOrganisationTaskProposal: TAbmesSQLQuery;
    qryOrganisationTaskProposalORG_TASK_PROPOSAL_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalOTP_STATE_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalORG_TASK_PROPOSAL_NO: TAbmesFloatField;
    qryOrganisationTaskProposalORG_TASK_PROPOSAL_CYCLE_NO: TAbmesFloatField;
    qryOrganisationTaskProposalREPLACED_ORG_TASK_PROP_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalCREATE_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalCREATE_TIME: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalCHANGE_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalCHANGE_TIME: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalCLOSE_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalCLOSE_TIME: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalANNUL_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalANNUL_TIME: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalDOC_BRANCH_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalDOC_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalDESCRIPTION: TAbmesWideStringField;
    qryOrganisationTaskProposalPLAN_PROPOSAL_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalPLAN_PROPOSAL_EMPLOYEE_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalRESULT_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalORG_TASK_PROP_RESULT_TYPE_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalPRODUCT_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalDEPT_CODE: TAbmesFloatField;
    prvOrganisationTaskProposal: TDataSetProvider;
    qryNewOrgTaskProposalCode: TAbmesSQLQuery;
    qryNewOrgTaskProposalCodeNEW_ORG_TASK_PROPOSAL_CODE: TAbmesFloatField;
    qryNewOrgTaskProposalNo: TAbmesSQLQuery;
    qryGetOrgTaskProposalCycleNo: TAbmesSQLQuery;
    qryGetOrgTaskProposalCycleNoORG_TASK_PROPOSAL_CYCLE_NO: TAbmesFloatField;
    qryGetHasOrganisationTaskProposal: TAbmesSQLQuery;
    qryNewOrgTaskProposalNoNEW_ORG_TASK_PROPOSAL_NO: TAbmesFloatField;
    qryOrganisationTaskProposalsPROPOSAL_HAS_DOC_ITEMS: TAbmesFloatField;
    qryOrganisationTaskProposalsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryOrganisationTaskProposalsPROD_ORDER_HAS_DOC_ITEMS: TAbmesFloatField;
    qryOrganisationTaskProposalPROPOSAL_HAS_DOC_ITEMS: TAbmesFloatField;
    qryProductEngineeringOrderEO_HAS_DOC_ITEMS: TAbmesFloatField;
    qryProductProductionOrderPO_HAS_DOC_ITEMS: TAbmesFloatField;
    qryProductProductionOrder_REMAINING_QUANTITY_PERCENT: TAbmesFloatField;
    qryOrganisationTaskProposalsPLAN_PROPOSAL_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryGetHasOrganisationTaskProposalHAS_ORG_TASK_PROPOSAL: TAbmesFloatField;
    qryOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_ABBR: TAbmesWideStringField;
    qryOrganisationTaskProposalsEO_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsEO_DOC_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsEO_HAS_DOC_ITEMS: TAbmesFloatField;
    mshLocalMacroLibrary: TJvMultiStringHolder;
    qryOrganisationTaskProposalREPLACEMENT_ORG_TASK_PROP_CODE: TAbmesFloatField;
    qryCloseOrgTaskProposal: TAbmesSQLQuery;
    qryGetOrgTaskProposalCodeByNo: TAbmesSQLQuery;
    qryGetOrgTaskProposalCodeByNoORG_TASK_PROPOSAL_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalSALE_OBJECT_CODE: TAbmesFloatField;
    qryAvailableProductionOrders: TAbmesSQLQuery;
    prvAvailableProductionOrders: TDataSetProvider;
    qryAvailableProductionOrdersPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryOrganisationTaskProposalSALE_OBJECT_PK: TAbmesWideStringField;
    qryAvailableProductionOrdersSALE_OBJECT_PK: TAbmesWideStringField;
    qryAvailableProductionOrdersSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryAvailableProductionOrdersSALE_OBJECT_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalIS_PREMATURELY_CLOSED: TAbmesFloatField;
    qryOrganisationTaskProposalPRC_DATA: TBlobField;
    qryOrganisationTaskProposalENGINEERING_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalPRODUCTION_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalAPPLY_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_PROJECT_TOTAL_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_ENG_PROJECT_PRICE_P: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_PROD_PROJECT_PRICE_P: TAbmesFloatField;
    qryOrganisationTaskProposalsAPPLY_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_BOI_TOTAL_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_DELIVERY_BOI_PRICE_P: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_EXPENSE_BOI_PRICE_P: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_ENG_BOI_PRICE_P: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_PROD_BOI_PRICE_P: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_APPLY_BOI_TOTAL_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_DELIVERY_BOIO_PLAN_PRICE_P: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_EXPENSE_BOIO_PLAN_PRICE_P: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_ENG_BOIO_PLAN_PRICE_P: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_PROD_BOIO_PLAN_PRICE_P: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_APPLY_BOIO_PL_TOTAL_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_BOIO_ACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_DELIVERY_BOIO_ACC_PRICE_P: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_EXPENSE_BOIO_ACC_PRICE_P: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_ENG_BOIO_ACC_PRICE_P: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_PROD_BOIO_ACC_PRICE_P: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_APPLY_BOIO_ACC_TOTAL_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_BOIO_PLAN_TOTAL_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_PRICE_DEV_PROJECT: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_PRICE_DEV_BOI: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_PRICE_DEV_BOIO_PLAN: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_PRICE_DEV_BOIO_ACCOUNT: TAbmesFloatField;
    qryOrganisationTaskProposalsENGINEERING_ORDER_IDENTIFIER: TAbmesWideStringField;
    qryOrganisationTaskProposalsSALE_IDENTIFIER: TAbmesWideStringField;
    qryOrganisationTaskProposalENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalPRODUCTION_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalPRODUCTION_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalsENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalsENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalsENGINEERING_BEGIN_DAYS_LEFT: TAbmesFloatField;
    qryOrganisationTaskProposalsENGINEERING_END_DAYS_LEFT: TAbmesFloatField;
    qryOrganisationTaskProposalsENGINEERING_REAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalsENGINEERING_REAL_END_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalsPRODUCTION_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalsPRODUCTION_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalsPRODUCTION_BEGIN_DAYS_LEFT: TAbmesFloatField;
    qryOrganisationTaskProposalsPRODUCTION_END_DAYS_LEFT: TAbmesFloatField;
    qryOrganisationTaskProposalsPRODUCTION_REAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalsPRODUCTION_REAL_END_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalsPRJ_ENG_PROJECT_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_PROD_PROJECT_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_DELIVERY_BOI_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_EXPENSE_BOI_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_ENG_BOI_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_PROD_BOI_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_DELIVERY_BOIO_PLAN_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_EXPENSE_BOIO_PLAN_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_ENG_BOIO_PLAN_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_PROD_BOIO_PLAN_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_DELIVERY_BOIO_ACC_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_EXPENSE_BOIO_ACC_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_ENG_BOIO_ACC_PRICE: TAbmesFloatField;
    qryOrganisationTaskProposalsPRJ_PROD_BOIO_ACC_PRICE: TAbmesFloatField;
    qryOTPInvestPrices: TAbmesSQLQuery;
    prvOTPInvestPrices: TDataSetProvider;
    qryOTPInvestPricesPRJ_ENG_BOI_TOTAL_PRICE: TAbmesFloatField;
    qryOTPInvestPricesPRJ_ENG_BOI_TOTAL_PRICE_DEL_P: TAbmesFloatField;
    qryOTPInvestPricesPRJ_ENG_BOI_TOTAL_PRICE_EXP_P: TAbmesFloatField;
    qryOTPInvestPricesPRJ_ENG_BOIO_PLAN_TOTAL_PRICE: TAbmesFloatField;
    qryOTPInvestPricesPRJ_ENG_BOIO_PL_TOTAL_PR_DEL_P: TAbmesFloatField;
    qryOTPInvestPricesPRJ_ENG_BOIO_PL_TOTAL_PR_EXP_P: TAbmesFloatField;
    qryOTPInvestPricesPRJ_ENG_BOIO_ACC_TOTAL_PRICE: TAbmesFloatField;
    qryOTPInvestPricesPRJ_ENG_BOIO_ACC_TOT_PR_DEL_P: TAbmesFloatField;
    qryOTPInvestPricesPRJ_ENG_BOIO_ACC_TOT_PR_EXP_P: TAbmesFloatField;
    qryOTPInvestPricesPRJ_PROD_BOI_TOTAL_PRICE: TAbmesFloatField;
    qryOTPInvestPricesPRJ_PROD_BOI_TOTAL_PRICE_DEL_P: TAbmesFloatField;
    qryOTPInvestPricesPRJ_PROD_BOI_TOTAL_PRICE_EXP_P: TAbmesFloatField;
    qryOTPInvestPricesPRJ_PROD_BOIO_PLAN_TOTAL_PRICE: TAbmesFloatField;
    qryOTPInvestPricesPRJ_PROD_BOIO_PL_TOT_PR_DEL_P: TAbmesFloatField;
    qryOTPInvestPricesPRJ_PROD_BOIO_PL_TOT_PR_EXP_P: TAbmesFloatField;
    qryOTPInvestPricesPRJ_PROD_BOIO_ACC_TOTAL_PRICE: TAbmesFloatField;
    qryOTPInvestPricesPRJ_PROD_BOIO_ACC_TOT_PR_DEL_P: TAbmesFloatField;
    qryOTPInvestPricesPRJ_PROD_BOIO_ACC_TOT_PR_EXP_P: TAbmesFloatField;
    qryOTPInvestPricesENGINEERING_REAL_END_DATE: TAbmesSQLTimeStampField;
    qryOTPInvestPricesPRODUCTION_REAL_END_DATE: TAbmesSQLTimeStampField;
    qryOrganisationTaskProposalMANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    qryOrganisationTaskProposalsMANAGER_EMPLOYEE_ABBREV: TAbmesWideStringField;
    procedure qryOrganisationTaskProposalsBeforeOpen(DataSet: TDataSet);
    procedure qryOrganisationTaskProposalsAfterClose(DataSet: TDataSet);
    procedure prvOrganisationTaskProposalAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvOrganisationTaskProposalBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvOrganisationTaskProposalBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryOrganisationTaskProposalAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure qryProductProductionOrderCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure prvOrganisationTaskProposalAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvOrganisationTaskProposalGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
  private
    FDocsDelta: Variant;
  protected
    function NewOrgTaskProposalCode: Integer;
    function NewOrgTaskProposalNo: Integer;
    function GetOrgTaskProposalCycleNo(AOrgTaskProposalCode: Integer): Integer;
    function GetHasOrganisationTaskProposal(AProductCode, AExceptOrgTaskProposalCode: Integer): Boolean;
    function GetOrgTaskProposalCodeByNo(AOrgTaskProposalNo: Integer): Integer;
  end;

type
  IdmOrganisationTasksProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmOrganisationTasksProxy = class(TDBPooledDataModuleProxy, IdmOrganisationTasksProxy)
  private
    class var FSingleton: TdmOrganisationTasksProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmOrganisationTasks>;
  strict protected
    property LockedInstance: ISmartLock<TdmOrganisationTasks> read GetLockedInstance;
  public
    class property Singleton: TdmOrganisationTasksProxy read FSingleton;

    function NewOrgTaskProposalCode: Integer;
    function NewOrgTaskProposalNo: Integer;
    function GetOrgTaskProposalCycleNo(AOrgTaskProposalCode: Integer): Integer;
    function GetHasOrganisationTaskProposal(AProductCode, AExceptOrgTaskProposalCode: Integer): Boolean;
    function GetOrgTaskProposalCodeByNo(AOrgTaskProposalNo: Integer): Integer;
  end;

implementation

uses
  DateUtils, Variants, uDBPooledDataModuleHelper,
  uOrganisationTaskUtils, uPrcDeclarations;

{$R *.dfm}

{ TdmOrganisationTasksProxy }

function TdmOrganisationTasksProxy.GetLockedInstance: ISmartLock<TdmOrganisationTasks>;
begin
  Result:= ISmartLock<TdmOrganisationTasks>(inherited LockedInstance);
end;

function TdmOrganisationTasksProxy.GetHasOrganisationTaskProposal(
  AProductCode, AExceptOrgTaskProposalCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.GetHasOrganisationTaskProposal(AProductCode, AExceptOrgTaskProposalCode);
end;

function TdmOrganisationTasksProxy.GetOrgTaskProposalCycleNo(
  AOrgTaskProposalCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetOrgTaskProposalCycleNo(AOrgTaskProposalCode);
end;

function TdmOrganisationTasksProxy.NewOrgTaskProposalCode: Integer;
begin
  Result:= LockedInstance.Value.NewOrgTaskProposalCode;
end;

function TdmOrganisationTasksProxy.NewOrgTaskProposalNo: Integer;
begin
  Result:= LockedInstance.Value.NewOrgTaskProposalNo;
end;

function TdmOrganisationTasksProxy.GetOrgTaskProposalCodeByNo(AOrgTaskProposalNo: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetOrgTaskProposalCodeByNo(AOrgTaskProposalNo);
end;

{ TdmOrganisationTasks }

procedure TdmOrganisationTasks.qryOrganisationTaskProposalsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmOrganisationTasks.qryProductProductionOrderCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if (qryProductProductionOrderMANUFACTURE_QUANTITY.AsFloat = 0) then
    qryProductProductionOrder_REMAINING_QUANTITY_PERCENT.AsFloat:= 0
  else
    qryProductProductionOrder_REMAINING_QUANTITY_PERCENT.AsFloat:=
      (qryProductProductionOrderCOMPLETED_QUANTITY.AsFloat - qryProductProductionOrderMANUFACTURE_QUANTITY.AsFloat) /
      qryProductProductionOrderMANUFACTURE_QUANTITY.AsFloat * 100;
end;

procedure TdmOrganisationTasks.qryOrganisationTaskProposalsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmOrganisationTasks.prvOrganisationTaskProposalBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmOrganisationTasks.prvOrganisationTaskProposalAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmOrganisationTasks.qryOrganisationTaskProposalAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmOrganisationTasks.prvOrganisationTaskProposalBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
  CurrentDateTime: TDateTime;
begin
  inherited;

  if (UpdateKind <> ukDelete) then
    begin
      CurrentDateTime:= ContextNow;

      DeltaDS.FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
      DeltaDS.FieldByName('CHANGE_DATE').NewValue:= DateOf(CurrentDateTime);
      DeltaDS.FieldByName('CHANGE_TIME').NewValue:= TimeOf(CurrentDateTime);

      if (IntToOTPResultType(DeltaDS.FieldByName('ORG_TASK_PROP_RESULT_TYPE_CODE').AsInteger)
         in [otprtAttached, otprtDenied]) then
        begin
          DeltaDS.FieldByName('CLOSE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
          DeltaDS.FieldByName('CLOSE_DATE').NewValue:= DateOf(CurrentDateTime);
          DeltaDS.FieldByName('CLOSE_TIME').NewValue:= TimeOf(CurrentDateTime);
          DeltaDS.FieldByName('IS_PREMATURELY_CLOSED').NewValue:= 0;
        end;  { if }
    end;  { if }
end;

procedure TdmOrganisationTasks.prvOrganisationTaskProposalGetData(
  Sender: TObject; DataSet: TCustomClientDataSet);
begin
  inherited;
  SvrProcesses.AssignPrcData(ProcessOwners.Project, DataSet);
end;

procedure TdmOrganisationTasks.prvOrganisationTaskProposalAfterUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
var
  CurrentDateTime: TDateTime;
begin
  inherited;
  if not VarIsNull(DeltaDS.FieldByName('REPLACED_ORG_TASK_PROP_CODE').NewValue) and
     ( (UpdateKind = ukInsert) or
       ( (UpdateKind = ukModify) and
         VarIsNull(DeltaDS.FieldByName('REPLACED_ORG_TASK_PROP_CODE').OldValue)
       )
     ) then
    begin
      CurrentDateTime:= ContextNow;
      qryCloseOrgTaskProposal.ParamByName('CLOSE_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
      qryCloseOrgTaskProposal.ParamByName('CLOSE_DATE').AsDateTime:= DateOf(CurrentDateTime);
      qryCloseOrgTaskProposal.ParamByName('CLOSE_TIME').AsDateTime:= TimeOf(CurrentDateTime);
      qryCloseOrgTaskProposal.ParamByName('IS_PREMATURELY_CLOSED').AsInteger:= 0;
      qryCloseOrgTaskProposal.ParamByName('ORG_TASK_PROPOSAL_CODE').AsInteger:=
        DeltaDS.FieldByName('REPLACED_ORG_TASK_PROP_CODE').NewValue;

      qryCloseOrgTaskProposal.ExecSQL;
    end;  { if }

  SvrProcesses.ApplyPrcData(ProcessOwners.Project, DeltaDS);
end;

function TdmOrganisationTasks.GetOrgTaskProposalCycleNo(AOrgTaskProposalCode: Integer): Integer;
begin
  qryGetOrgTaskProposalCycleNo.ParamByName('ORG_TASK_PROPOSAL_CODE').AsInteger:= AOrgTaskProposalCode;
  qryGetOrgTaskProposalCycleNo.Open;
  try
    Result:= qryGetOrgTaskProposalCycleNoORG_TASK_PROPOSAL_CYCLE_NO.AsInteger;
  finally
    qryGetOrgTaskProposalCycleNo.Close;
  end;  { try }
end;

function TdmOrganisationTasks.NewOrgTaskProposalCode: Integer;
begin
  qryNewOrgTaskProposalCode.Open;
  try
    Result:= qryNewOrgTaskProposalCodeNEW_ORG_TASK_PROPOSAL_CODE.AsInteger;
  finally
    qryNewOrgTaskProposalCode.Close;
  end;  { try }
end;

function TdmOrganisationTasks.NewOrgTaskProposalNo: Integer;
begin
  qryNewOrgTaskProposalNo.Open;
  try
    Result:= qryNewOrgTaskProposalNoNEW_ORG_TASK_PROPOSAL_NO.AsInteger;
  finally
    qryNewOrgTaskProposalNo.Close;
  end;  { try }
end;

procedure TdmOrganisationTasks.DataModuleCreate(Sender: TObject);
begin
  RegisterMacroLibrary(mshLocalMacroLibrary);
  inherited;
end;

procedure TdmOrganisationTasks.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  UnregisterMacroLibrary(mshLocalMacroLibrary);
end;

function TdmOrganisationTasks.GetHasOrganisationTaskProposal(AProductCode,
  AExceptOrgTaskProposalCode: Integer): Boolean;
begin
  qryGetHasOrganisationTaskProposal.ParamByName('PRODUCT_CODE').AsInteger:= AProductCode;
  qryGetHasOrganisationTaskProposal.ParamByName('EXCEPT_ORG_TASK_PROPOSAL_CODE').AsInteger:= AExceptOrgTaskProposalCode;
  qryGetHasOrganisationTaskProposal.Open;
  try
    Result:= qryGetHasOrganisationTaskProposalHAS_ORG_TASK_PROPOSAL.AsBoolean;
  finally
    qryGetHasOrganisationTaskProposal.Close;
  end;  { try }
end;

function TdmOrganisationTasks.GetOrgTaskProposalCodeByNo(AOrgTaskProposalNo: Integer): Integer;
begin
  qryGetOrgTaskProposalCodeByNo.ParamByName('ORG_TASK_PROPOSAL_NO').AsInteger:= AOrgTaskProposalNo;
  qryGetOrgTaskProposalCodeByNo.Open;
  try
    Result:= qryGetOrgTaskProposalCodeByNoORG_TASK_PROPOSAL_CODE.AsInteger;
  finally
    qryGetOrgTaskProposalCodeByNo.Close;
  end;  { try }
end;

initialization
  TdmOrganisationTasksProxy.FSingleton:= TdmOrganisationTasksProxy.Create(TdmOrganisationTasks);

finalization
  FreeAndNil(TdmOrganisationTasksProxy.FSingleton);
end.
