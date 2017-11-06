unit fOrganisationTaskProposal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields, Mask,
  DBCtrls, fBaseFrame, fDBFrame, fFieldEditFrame, fDateFieldEditFrame,
  fTreeNodeFieldEditFrame, fTreeOnlyNodeFieldEditFrame,
  ComCtrls, ToolWin, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, JvExControls, JvComponent, JvDBLookup,
  fProductFieldEditFrame, fProductFieldEditFrameBald, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, dDocClient, uClientTypes, uOrganisationTaskUtils,
  uUtils, fDateIntervalFrame, fPrcDataFieldEditFrame;

type
  TReplacedOrgTaskProposal = record
    CycleNo: Integer;
    Description: string;
    HasDoc: Boolean;
    DocBranchCode: Integer;
    DocCode: Integer;
    HasDocItems: Boolean;
    PrcData: Variant;
  end;

  TfmOrganisationTaskProposal = class(TEditForm)
    actProposalDoc: TAction;
    cdsOrgTaskProposalResultTypes: TAbmesClientDataSet;
    dsOrgTaskProposalResultTypes: TDataSource;
    cdsOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_CODE: TAbmesFloatField;
    cdsOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_NAME: TAbmesWideStringField;
    actEngineeringOrderDoc: TAction;
    actEngineeringOrder: TAction;
    actProductionOrderDoc: TAction;
    actProductionOrder: TAction;
    cdsEngineeringOrder: TAbmesClientDataSet;
    cdsEngineeringOrderENGINEERING_ORDER_CODE: TAbmesFloatField;
    cdsEngineeringOrderEO_STATE_CODE: TAbmesFloatField;
    cdsEngineeringOrderDOC_BRANCH_CODE: TAbmesFloatField;
    cdsEngineeringOrderDOC_CODE: TAbmesFloatField;
    cdsEngineeringOrderENGINEERING_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsEngineeringOrderENGINEERING_ORDER_NO: TAbmesFloatField;
    cdsEngineeringOrderENGINEERING_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsEngineeringOrderENGINEERING_REAL_WORKDAYS: TAbmesFloatField;
    dsEngineeringOrder: TDataSource;
    cdsProductionOrder: TAbmesClientDataSet;
    cdsProductionOrderSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsProductionOrderSALE_OBJECT_CODE: TAbmesFloatField;
    cdsProductionOrderML_STATE_CODE: TAbmesFloatField;
    cdsProductionOrderPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsProductionOrderSALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsProductionOrderSALE_NO: TAbmesFloatField;
    cdsProductionOrderSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsProductionOrderDOC_BRANCH_CODE: TAbmesFloatField;
    cdsProductionOrderDOC_CODE: TAbmesFloatField;
    cdsProductionOrderPRODUCTION_WORKDAYS: TAbmesFloatField;
    dsProductionOrder: TDataSource;
    cdsDataORG_TASK_PROPOSAL_CODE: TAbmesFloatField;
    cdsDataOTP_STATE_CODE: TAbmesFloatField;
    cdsDataORG_TASK_PROPOSAL_NO: TAbmesFloatField;
    cdsDataORG_TASK_PROPOSAL_CYCLE_NO: TAbmesFloatField;
    cdsDataREPLACED_ORG_TASK_PROP_CODE: TAbmesFloatField;
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
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataDESCRIPTION: TAbmesWideStringField;
    cdsDataPLAN_PROPOSAL_DATE: TAbmesSQLTimeStampField;
    cdsDataPLAN_PROPOSAL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataRESULT_DATE: TAbmesSQLTimeStampField;
    cdsDataORG_TASK_PROP_RESULT_TYPE_CODE: TAbmesFloatField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataDEPT_CODE: TAbmesFloatField;
    actReplacedOrgTaskProposal: TAction;
    actCloseOrgTaskProposal: TAction;
    actAnnulOrgTaskProposal: TAction;
    pnlAnnulOrgTaskProposal: TPanel;
    pnlReplacedOrgTaskProposal: TPanel;
    btnReplacedOrgTaskProposal: TBitBtn;
    pnlCloseOrgTaskProposal: TPanel;
    btnCloseOrgTaskProposal: TBitBtn;
    btnAnnulOrgTaskProposal: TBitBtn;
    cdsDataPROPOSAL_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsEngineeringOrderEO_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsProductionOrderPO_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsProductionOrder_REMAINING_QUANTITY_PERCENT: TAbmesFloatField;
    cdsOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_ABBR: TAbmesWideStringField;
    pnlReplacementOrgTaskProposal: TPanel;
    btnReplacementOrgTaskProposal: TBitBtn;
    actReplacementOrgTaskProposal: TAction;
    cdsDataREPLACEMENT_ORG_TASK_PROP_CODE: TAbmesFloatField;
    actProductionBudgetInvest: TAction;
    cdsBudgetParams: TAbmesClientDataSet;
    cdsBudgetParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    actEngineeringOrders: TAction;
    cdsEngineeringOrdersParams: TAbmesClientDataSet;
    cdsEngineeringOrdersParamsMAX_EO_STATE_CODE: TAbmesFloatField;
    cdsEngineeringOrdersParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsAvailableProductionOrders: TAbmesClientDataSet;
    cdsAvailableProductionOrdersPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    dsAvailableProductionOrders: TDataSource;
    cdsDataSALE_OBJECT_PK: TAbmesWideStringField;
    cdsAvailableProductionOrdersSALE_OBJECT_PK: TAbmesWideStringField;
    cdsData_SALE_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsAvailableProductionOrdersSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsAvailableProductionOrdersSALE_OBJECT_CODE: TAbmesFloatField;
    cdsDataIS_PREMATURELY_CLOSED: TAbmesFloatField;
    btnPrematurelyClose: TBitBtn;
    actPrematurelyClose: TAction;
    actProductionOrders: TAction;
    cdsProductionOrdersParams: TAbmesClientDataSet;
    cdsProductionOrdersParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsProductionOrdersParamsMIN_ML_STATE_CODE: TAbmesFloatField;
    cdsProductionOrdersParamsMAX_ML_STATE_CODE: TAbmesFloatField;
    pcPrcData: TPageControl;
    tsPrcData: TTabSheet;
    cdsDataPRC_DATA: TBlobField;
    cdsDataVALIDATE_PRC_DATA_COMPLETENESS: TAbmesFloatField;
    pcProject: TPageControl;
    tsProposalPresentation: TTabSheet;
    gbProposalPresentation: TGroupBox;
    gbProposalPlan: TGroupBox;
    lblPlanProposalDate: TLabel;
    lblPlanProposalEmployee: TLabel;
    frPlanProposalDate: TfrDateFieldEditFrame;
    frPlanProposalEmployee: TfrEmployeeFieldEditFrameBald;
    gbProposalResult: TGroupBox;
    lblResultDate: TLabel;
    lblResultType: TLabel;
    lblProduct: TLabel;
    lblDept: TLabel;
    imgAutoCloseHint: TImage;
    frResultDate: TfrDateFieldEditFrame;
    cbResultType: TJvDBLookupCombo;
    frProduct: TfrProductFieldEditFrameBald;
    frDept: TfrDeptFieldEditFrameBald;
    gbOrgTaskProposalIdentification: TGroupBox;
    lblOrgTaskProposalState: TLabel;
    lblOrgTaskProposalNo: TLabel;
    lblOrgTaskProposalCycleNo: TLabel;
    lblCreateDate: TLabel;
    lblProposalDescription: TLabel;
    edtOrgTaskProposalState: TDBEdit;
    edtOrgTaskProposalNo: TDBEdit;
    edtOrgTaskProposalCycleNo: TDBEdit;
    frCreateDate: TfrDateFieldEditFrame;
    pnlDoc: TPanel;
    tlbDoc: TToolBar;
    btnDoc: TToolButton;
    edtProposalDescription: TDBEdit;
    tsEngineeringOrderStage: TTabSheet;
    tsProductionOrderStage: TTabSheet;
    gbEngineeringOrder: TGroupBox;
    lblEngineeringOrderState: TLabel;
    lblEngineeringOrderBranch: TLabel;
    lblEngineeringOrderNo: TLabel;
    lblEngineeringOrderType: TLabel;
    lblEngineeringOrderRealWorkdays: TLabel;
    edtEngineeringOrderState: TDBEdit;
    edtEngineeringOrderBranch: TDBEdit;
    edtEngineeringOrderNo: TDBEdit;
    edtEngineeringOrderType: TDBEdit;
    edtEngineeringOrderRealWorkdays: TDBEdit;
    pnlEngineeringOrderDoc: TPanel;
    tlbEngineeringOrderDoc: TToolBar;
    btnEngineeringOrderDoc: TToolButton;
    btnEngineeringOrder: TBitBtn;
    btnEngineeringOrders: TBitBtn;
    bvlEngineeringOrderButtonsSeparator: TBevel;
    gbProductionOrderStage: TGroupBox;
    lblProductionOrderState: TLabel;
    lblPOProductionProcess: TLabel;
    lblProductionOrderBranch: TLabel;
    lblProductionOrderNo: TLabel;
    lblSaleType: TLabel;
    lblProductionOrderWorkdays: TLabel;
    lblQuantityDiffPercent: TLabel;
    lblPercent: TLabel;
    edtProductionOrderState: TDBEdit;
    edtProductionOrderProcess: TDBEdit;
    edtProductionOrderBranch: TDBEdit;
    edtProductionOrderNo: TDBEdit;
    edtSaleType: TDBEdit;
    edtProductionOrderWorkdays: TDBEdit;
    pnlProductionOrderDoc: TPanel;
    tlbProductionOrderDoc: TToolBar;
    btnProductionOrderDoc: TToolButton;
    edtQuantityDiffPercent: TDBEdit;
    btnProductionOrder: TBitBtn;
    cbAvailableProductionOrders: TJvDBLookupCombo;
    btnProductionOrders: TBitBtn;
    Bevel1: TBevel;
    cdsDataENGINEERING_PRICE: TAbmesFloatField;
    cdsDataPRODUCTION_PRICE: TAbmesFloatField;
    cdsDataAPPLY_PRICE: TAbmesFloatField;
    pcPrices: TPageControl;
    tsInvestmentIncrease: TTabSheet;
    gbInvestmentIncrease: TGroupBox;
    tsApplyPrices: TTabSheet;
    tsInvestmentStreamChanges: TTabSheet;
    gbEngineeringPrices: TGroupBox;
    edtEngineeringPrice: TDBEdit;
    lblEngineeringPrice: TLabel;
    gbProductionPrices: TGroupBox;
    lblProductionPrice: TLabel;
    edtProductionPrice: TDBEdit;
    gbApplyPrices: TGroupBox;
    edtApplyPrice: TDBEdit;
    lblApplyPrice: TLabel;
    gbInvestmentStreamChanges: TGroupBox;
    edtInvestmentIncreasePrice: TDBEdit;
    lblInvestmentIncreasePrice: TLabel;
    cdsData_INVESTMENT_INCREASE_PRICE: TAbmesFloatField;
    gbEngineeringDates: TGroupBox;
    frEngineeringPlanDateInterval: TfrDateIntervalFrame;
    gbProductionDates: TGroupBox;
    frProductionPlanDateInterval: TfrDateIntervalFrame;
    lblEngineeringPlanDateInterval: TLabel;
    lblProductionPlanDateInterval: TLabel;
    cdsDataENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsDataPRODUCTION_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataPRODUCTION_PLAN_END_DATE: TAbmesSQLTimeStampField;
    edtPriceDeviationProject: TDBEdit;
    edtPriceDeviationBOI: TDBEdit;
    edtPriceDeviationBOIOAccount: TDBEdit;
    edtPriceDeviationBOIOPlan: TDBEdit;
    lblPriceDeviationProject: TLabel;
    lblPriceDeviationBOI: TLabel;
    lblPriceDeviationBOIOPlan: TLabel;
    lblPriceDeviationBOIOAccount: TLabel;
    edtApplyBOITotalPrice: TDBEdit;
    lblApplyBOITotalPrice: TLabel;
    edtApplyBOIOPlanTotalPrice: TDBEdit;
    lblApplyBOIOPlanTotalPrice: TLabel;
    edtApplyBOIOAccountTotalPrice: TDBEdit;
    lblApplyBOIOAccountTotalPrice: TLabel;
    edtBOITotalPrice: TDBEdit;
    lblBOITotalPrice: TLabel;
    edtBOIOPlanTotalPrice: TDBEdit;
    lblBOIOPlanTotalPrice: TLabel;
    edtBOIOAccountTotalPrice: TDBEdit;
    lblBOIOAccountTotalPrice: TLabel;
    cdsOTPInvestPrices: TAbmesClientDataSet;
    dsOTPInvestPrices: TDataSource;
    cdsOTPInvestPricesPRJ_PRICE_DEV_BOI: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_PRICE_DEV_BOIO_PLAN: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_PRICE_DEV_BOIO_ACCOUNT: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_APPLY_BOI_TOTAL_PRICE: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_APPLY_BOIO_PL_TOTAL_PRICE: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_APPLY_BOIO_ACC_TOTAL_PRICE: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_BOI_TOTAL_PRICE: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_BOIO_PLAN_TOTAL_PRICE: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_BOIO_ACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    cdsData_PRJ_PRICE_DEV_PROJECT: TAbmesFloatField;
    cdsData_PRJ_ENG_PROJECT_PRICE_P: TAbmesFloatField;
    cdsData_PRJ_PROD_PROJECT_PRICE_P: TAbmesFloatField;
    edtEngProjectPricePercent: TDBEdit;
    lblEngProjectPricePercent: TLabel;
    edtProdProjectPricePercent: TDBEdit;
    lblProdProjectPricePercent: TLabel;
    cdsOTPInvestPricesPRJ_DELIVERY_BOI_PRICE_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_EXPENSE_BOI_PRICE_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_ENG_BOI_PRICE_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_PROD_BOI_PRICE_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_DELIVERY_BOIO_PLAN_PRICE_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_EXPENSE_BOIO_PLAN_PRICE_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_ENG_BOIO_PLAN_PRICE_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_PROD_BOIO_PLAN_PRICE_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_DELIVERY_BOIO_ACC_PRICE_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_EXPENSE_BOIO_ACC_PRICE_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_ENG_BOIO_ACC_PRICE_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_PROD_BOIO_ACC_PRICE_P: TAbmesFloatField;
    btnPercents: TSpeedButton;
    cdsOTPInvestPricesPRJ_ENG_BOI_TOTAL_PRICE: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_ENG_BOI_TOTAL_PRICE_DEL_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_ENG_BOI_TOTAL_PRICE_EXP_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_ENG_BOIO_PLAN_TOTAL_PRICE: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_ENG_BOIO_PL_TOTAL_PR_DEL_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_ENG_BOIO_PL_TOTAL_PR_EXP_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_ENG_BOIO_ACC_TOTAL_PRICE: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_ENG_BOIO_ACC_TOT_PR_DEL_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_ENG_BOIO_ACC_TOT_PR_EXP_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_PROD_BOI_TOTAL_PRICE: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_PROD_BOI_TOTAL_PRICE_DEL_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_PROD_BOI_TOTAL_PRICE_EXP_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_PROD_BOIO_PLAN_TOTAL_PRICE: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_PROD_BOIO_PL_TOT_PR_DEL_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_PROD_BOIO_PL_TOT_PR_EXP_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_PROD_BOIO_ACC_TOTAL_PRICE: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_PROD_BOIO_ACC_TOT_PR_DEL_P: TAbmesFloatField;
    cdsOTPInvestPricesPRJ_PROD_BOIO_ACC_TOT_PR_EXP_P: TAbmesFloatField;
    edtEngBOITotalPrice: TDBEdit;
    lblEngBOITotalPrice: TLabel;
    edtEngBOIDeliveryPercent: TDBEdit;
    lblEngBOIDeliveryPercent: TLabel;
    edtEngBOIExpensePercent: TDBEdit;
    lblEngBOIExpensePercent: TLabel;
    edtEngBOIOPlanTotalPrice: TDBEdit;
    lblEngBOIOPlanTotalPrice: TLabel;
    edtEngBOIOPlanDeliveryPercent: TDBEdit;
    lblEngBOIOPlanDeliveryPercent: TLabel;
    edtEngBOIOPlanExpensePercent: TDBEdit;
    lblEngBOIOPlanExpensePercent: TLabel;
    edtEngBOIOAccountTotalPrice: TDBEdit;
    lblEngBOIOAccountTotalPrice: TLabel;
    edtEngBOIOAccountDeliveryPercent: TDBEdit;
    lblEngBOIOAccountDeliveryPercent: TLabel;
    edtEngBOIOAccountExpensePercent: TDBEdit;
    lblEngBOIOAccountExpensePercent: TLabel;
    edtProdBOITotalPrice: TDBEdit;
    lblProdBOITotalPrice: TLabel;
    edtProdBOIDeliveryPercent: TDBEdit;
    lblProdBOIDeliveryPercent: TLabel;
    edtProdBOIExpensePercent: TDBEdit;
    lblProdBOIExpensePercent: TLabel;
    edtProdBOIOPlanTotalPrice: TDBEdit;
    lblProdBOIOPlanTotalPrice: TLabel;
    edtProdBOIOPlanDeliveryPercent: TDBEdit;
    lblProdBOIOPlanDeliveryPercent: TLabel;
    edtProdBOIOPlanExpensePercent: TDBEdit;
    lblProdBOIOPlanExpensePercent: TLabel;
    edtProdBOIOAccountTotalPrice: TDBEdit;
    lblProdBOIOAccountTotalPrice: TLabel;
    edtProdBOIOAccountDeliveryPercent: TDBEdit;
    lblProdBOIOAccountDeliveryPercent: TLabel;
    edtProdBOIOAccountExpensePercent: TDBEdit;
    lblProdBOIOAccountExpensePercent: TLabel;
    cdsOTPInvestPricesENGINEERING_REAL_END_DATE: TAbmesSQLTimeStampField;
    cdsOTPInvestPricesPRODUCTION_REAL_END_DATE: TAbmesSQLTimeStampField;
    frEngineeringRealEndDate: TfrDateFieldEditFrame;
    lblEngineeringRealEndDate: TLabel;
    frProductionRealEndDate: TfrDateFieldEditFrame;
    lblProductionRealEndDate: TLabel;
    pnlBOIDelExpPricePercents: TPanel;
    edtDeliveryBOIPricePercent: TDBEdit;
    lblDeliveryBOIPricePercent: TLabel;
    edtExpenseBOIPricePercent: TDBEdit;
    lblExpenseBOIPricePercent: TLabel;
    pnlBOIEngProdPricePercents: TPanel;
    edtProdBOIPricePercent: TDBEdit;
    lblProdBOIPricePercent: TLabel;
    lblEngBOIPricePercent: TLabel;
    edtEngBOIPricePercent: TDBEdit;
    pnlBOIOPlanEngProdPricePercents: TPanel;
    lblEngBOIOPlanPricePercent: TLabel;
    lblProdBOIOPlanPricePercent: TLabel;
    edtProdBOIOPlanPricePercent: TDBEdit;
    edtEngBOIOPlanPricePercent: TDBEdit;
    pnlBOIOPlanDelExpPricePercents: TPanel;
    edtExpenseBOIOPlanPricePercent: TDBEdit;
    lblExpenseBOIOPlanPricePercent: TLabel;
    lblDeliveryBOIOPlanPricePercent: TLabel;
    edtDeliveryBOIOPlanPricePercent: TDBEdit;
    pnlBOIOAccountEngProdPricePercents: TPanel;
    lblEngBOIOAccPricePercent: TLabel;
    lblProdBOIOAccPricePercent: TLabel;
    edtProdBOIOAccPricePercent: TDBEdit;
    edtEngBOIOAccPricePercent: TDBEdit;
    pnlBOIOAccountDelExpPricePercents: TPanel;
    lblDeliveryBOIOAccPricePercent: TLabel;
    edtDeliveryBOIOAccPricePercent: TDBEdit;
    edtExpenseBOIOAccPricePercent: TDBEdit;
    lblExpenseBOIOAccPricePercent: TLabel;
    actEngineeringBudgetInvest: TAction;
    cdsBudgetParamsORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField;
    btnEngineeringBudgetInvest: TBitBtn;
    btnEngineeringBudgetOrders: TBitBtn;
    btnProductionBudgetOrders: TBitBtn;
    btnApplyBudget: TBitBtn;
    btnApplyBudgetOrders: TBitBtn;
    btnInvestmentBudget: TBitBtn;
    btnInvestmentBudgetOrders: TBitBtn;
    actProductionBudgetOrders: TAction;
    actEngineeringBudgetOrders: TAction;
    cdsBudgetParamsMAX_STATUS_CODE: TAbmesFloatField;
    actInvestmentAndApplyBudgetOrders: TAction;
    actInvestmentBudget: TAction;
    cdsBudgetParamsBUDGET_ORDER_ITEM_TYPE: TAbmesFloatField;
    actApplyBudget: TAction;
    btnProductionBudgetInvest: TBitBtn;
    frManagerEmployee: TfrEmployeeFieldEditFrameBald;
    lblManagerEmployee: TLabel;
    cdsDataMANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsDataOTP_STATE_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actProposalDocExecute(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actEngineeringOrderDocExecute(Sender: TObject);
    procedure actEngineeringOrderDocUpdate(Sender: TObject);
    procedure actEngineeringOrderUpdate(Sender: TObject);
    procedure actEngineeringOrderExecute(Sender: TObject);
    procedure actProductionOrderDocUpdate(Sender: TObject);
    procedure actProductionOrderDocExecute(Sender: TObject);
    procedure actProductionOrderUpdate(Sender: TObject);
    procedure actProductionOrderExecute(Sender: TObject);
    procedure cdsEngineeringOrderEO_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsProductionOrderML_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDataPRODUCT_CODEChange(Sender: TField);
    procedure actProposalDocUpdate(Sender: TObject);
    procedure actReplacedOrgTaskProposalUpdate(Sender: TObject);
    procedure actReplacedOrgTaskProposalExecute(Sender: TObject);
    procedure cdsDataBeforeOpen(DataSet: TDataSet);
    procedure actCloseOrgTaskProposalExecute(Sender: TObject);
    procedure actAnnulOrgTaskProposalExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsEngineeringOrderBeforeOpen(DataSet: TDataSet);
    procedure cdsProductionOrderBeforeOpen(DataSet: TDataSet);
    procedure cdsDataBeforeInsert(DataSet: TDataSet);
    procedure actReplacementOrgTaskProposalUpdate(Sender: TObject);
    procedure actReplacementOrgTaskProposalExecute(Sender: TObject);
    procedure actProductionBudgetInvestExecute(Sender: TObject);
    procedure actEngineeringOrdersExecute(Sender: TObject);
    procedure cdsDataSALE_OBJECT_CODEChange(Sender: TField);
    procedure cdsDataSALE_OBJECT_BRANCH_CODEChange(Sender: TField);
    procedure cdsDataSALE_OBJECT_PKChange(Sender: TField);
    procedure cdsAvailableProductionOrdersBeforeOpen(DataSet: TDataSet);
    procedure actCloseOrgTaskProposalUpdate(Sender: TObject);
    procedure actPrematurelyCloseUpdate(Sender: TObject);
    procedure actPrematurelyCloseExecute(Sender: TObject);
    procedure actProductionOrdersExecute(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsOTPInvestPricesBeforeOpen(DataSet: TDataSet);
    procedure PricePercentFieldsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actEngineeringBudgetInvestExecute(Sender: TObject);
    procedure actEngineeringBudgetOrdersExecute(Sender: TObject);
    procedure actProductionBudgetOrdersExecute(Sender: TObject);
    procedure BudgetAndBudgetOrdersButttonsUpdate(Sender: TObject);
    procedure actInvestmentAndApplyBudgetOrdersExecute(Sender: TObject);
    procedure actInvestmentBudgetExecute(Sender: TObject);
    procedure actApplyBudgetExecute(Sender: TObject);
  private
    FReplacedOrgTaskProposalCode: Integer;
    FReplacedOrgTaskProposal: TReplacedOrgTaskProposal;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FfrPrcData: TfrPrcDataFieldEditFrame;
    function CanModifyData: Boolean;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    function OTPResultType: TOrgTaskProposalResultType;
    procedure RefreshPeripheralDataSet(ADataSet: TDataSet);
    procedure CloseActionUpdate(Sender: TObject);
    procedure CloseProposal(APrematurelyClose: Boolean);
    procedure SetBudgetOrdersParams(AOrgTaskProposalStateCode: Integer);
    procedure SetBudgetParams(AOrgTaskProposalStateCode, ABudgetOrderItemType: Integer);
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure CloseDataSets; override;
    procedure OpenDataSets; override;
    function GetOriginalFormCaption: string; override;
    procedure ChangeEditMode(var AEditMode: TEditMode); override;
  public
    procedure Initialize; override;
    procedure Finalize; override;
    class function CanEditOuterDataSet: Boolean; override;
    class function CanUseDocs: Boolean; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AReplacedOrgTaskProposalCode: Integer = 0); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AReplacedOrgTaskProposalCode: Integer = 0): Boolean;
  end;

implementation

uses
  uDocUtils, fTreeSelectForm, dMain, fEngineeringOrder,
  fProductionOrder, AbmesDialogs, uClientUtils, Math, DateUtils,
  fBaseForm, uUserActivityConsts, uModelUtils, uOrganisationTaskClientUtils,
  uClientConsts, fBudget, uBudgetClientUtils, uClientDateTime,
  uXMLUtils, fEngineeringOrders, StrUtils, fProductionOrders,
  uProductionOrderTypes, uPrcDeclarations, uPrcUtils, uClientPrcData,
  rOrgTaskProposalPrcDataReport, fBudgetOrders;

resourcestring
  STheOrgTaskProposal = 'Проекта';
  SOrgTaskProposal = 'Проект';
  SNewProposalCycleCaption = 'Цикъл на Зараждане на Проект - %s';
  SCannotAnnulProposalWithResult = 'Не може да се анулира Проект с вече взето решение.';
  SCannotAttachToProductWithoutProposals = 'Не може се приобщи Проекта към УОб - Проект, за който няма Проект със Статус до Приключен.';

{$R *.dfm}

{ TfmOrganisationTaskProposal }

function TfmOrganisationTaskProposal.OTPResultType: TOrgTaskProposalResultType;
begin
  Result:= IntToOTPResultType(cdsDataORG_TASK_PROP_RESULT_TYPE_CODE.AsInteger);
end;

procedure TfmOrganisationTaskProposal.PricePercentFieldsGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOrganisationTaskProposal.OpenDataSets;
begin
  cdsOrgTaskProposalResultTypes.Open;
  inherited OpenDataSets;
  cdsOTPInvestPrices.Open;
end;

procedure TfmOrganisationTaskProposal.ChangeEditMode(var AEditMode: TEditMode);
begin
  if (AEditMode = emEdit) and
     (OTPResultType in [otprtAttached, otprtDenied, otprtReturned]) then
    AEditMode:= emReadOnly
  else
    inherited ChangeEditMode(AEditMode);
end;

procedure TfmOrganisationTaskProposal.CloseDataSets;
begin
  cdsOTPInvestPrices.Close;
  inherited CloseDataSets;
  cdsOrgTaskProposalResultTypes.Close;
end;

procedure TfmOrganisationTaskProposal.actAnnulOrgTaskProposalExecute(
  Sender: TObject);
var
  CurrentDateTime: TDateTime;
begin
  inherited;

  LoginContext.CheckUserActivity(uaOrganisationTaskProposalsResultEdit);

  if not cdsDataORG_TASK_PROP_RESULT_TYPE_CODE.IsNull then
    raise Exception.Create(SCannotAnnulProposalWithResult);

  if (MessageDlgEx(SConfirmAnnul, mtConfirmation, mbOkCancel, 0) <> mrOK) then
    Abort;

  CheckEditMode(cdsData);

  CurrentDateTime:= ContextNow;
  cdsDataANNUL_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataANNUL_DATE.AsDateTime:= DateOf(CurrentDateTime);
  cdsDataANNUL_TIME.AsDateTime:= TimeOf(CurrentDateTime);
end;

procedure TfmOrganisationTaskProposal.actProductionBudgetInvestExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaBudgetInvest);

  cdsBudgetParams.CreateDataSet;
  try
    SetBudgetParams(OTPProductionStateCode, 0);
    TfmBudget.ShowForm(nil, cdsBudgetParams, emReadOnly, doDataset, True, bmInvest);
  finally
    cdsBudgetParams.Close;
  end;  { try }
end;

procedure TfmOrganisationTaskProposal.actProductionBudgetOrdersExecute(
  Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaBudgetOrdersInvest);

  cdsBudgetParams.CreateDataSet;
  try
    SetBudgetOrdersParams(OTPProductionStateCode);
    TfmBudgetOrders.ShowForm(nil, cdsBudgetParams, emReadOnly, doNone, False, bmInvest);
  finally
    cdsBudgetParams.Close;
  end;  { try }
end;

procedure TfmOrganisationTaskProposal.CloseProposal(APrematurelyClose: Boolean);
var
  CurrentDateTime: TDateTime;
  OTPCloseButtonBehaviour: TOTPCloseButtonBehaviour;
begin
  LoginContext.CheckUserActivity(uaOrganisationTaskProposalsResultEdit);

  if APrematurelyClose then
    OTPCloseButtonBehaviour:= OTPPematurelyCloseButtonBehaviours[cdsDataOTP_STATE_CODE.AsInteger]
  else
    OTPCloseButtonBehaviour:= OTPNormallyCloseButtonBehaviours[cdsDataOTP_STATE_CODE.AsInteger];

  OTPCloseButtonBehaviour.CheckCanBeUsed;  

  if (MessageDlgEx(Format(SConfirmClosing, [STheOrgTaskProposal]), mtConfirmation, mbOkCancel, 0) <> mrOK) then
    Abort;

  CheckEditMode(cdsData);

  CurrentDateTime:= ContextNow;
  cdsDataCLOSE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataCLOSE_DATE.AsDateTime:= DateOf(CurrentDateTime);
  cdsDataCLOSE_TIME.AsDateTime:= TimeOf(CurrentDateTime);
  cdsDataIS_PREMATURELY_CLOSED.AsBoolean:= APrematurelyClose;
end;

procedure TfmOrganisationTaskProposal.actApplyBudgetExecute(Sender: TObject);
begin
  inherited;
   LoginContext.CheckUserActivity(uaBudgetInvest);

  cdsBudgetParams.CreateDataSet;
  try
    SetBudgetParams(0, ApplyBudgetOrderItemType);
    TfmBudget.ShowForm(nil, cdsBudgetParams, emReadOnly, doDataset, True, bmInvest);
  finally
    cdsBudgetParams.Close;
  end;  { try }
end;

procedure TfmOrganisationTaskProposal.actCloseOrgTaskProposalExecute(Sender: TObject);
begin
  inherited;
  CloseProposal(False);
end;

procedure TfmOrganisationTaskProposal.CloseActionUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:= not (cdsData.State in dsEditModes);
end;

procedure TfmOrganisationTaskProposal.actCloseOrgTaskProposalUpdate(Sender: TObject);
begin
  inherited;
  CloseActionUpdate(Sender);
end;

procedure TfmOrganisationTaskProposal.actEngineeringBudgetInvestExecute(
  Sender: TObject);
begin
  inherited;
   LoginContext.CheckUserActivity(uaBudgetInvest);

  cdsBudgetParams.CreateDataSet;
  try
    SetBudgetParams(OTPEngineeringStateCode, 0);
    TfmBudget.ShowForm(nil, cdsBudgetParams, emReadOnly, doDataSet, True, bmInvest);
  finally
    cdsBudgetParams.Close;
  end;  { try }
end;

procedure TfmOrganisationTaskProposal.actEngineeringBudgetOrdersExecute(
  Sender: TObject);
begin
  inherited;
   LoginContext.CheckUserActivity(uaBudgetOrdersInvest);

  cdsBudgetParams.CreateDataSet;
  try
    SetBudgetOrdersParams(OTPEngineeringStateCode);
    TfmBudgetOrders.ShowForm(nil, cdsBudgetParams, emReadOnly, doNone, False, bmInvest);
  finally
    cdsBudgetParams.Close;
  end;  { try }
end;

procedure TfmOrganisationTaskProposal.actEngineeringOrderDocExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotEngineeringOrder,
    cdsEngineeringOrder);
end;

procedure TfmOrganisationTaskProposal.actEngineeringOrderDocUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsEngineeringOrderEO_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsEngineeringOrder.IsEmpty;
end;

procedure TfmOrganisationTaskProposal.actEngineeringOrderExecute(
  Sender: TObject);
begin
  inherited;
  TfmEngineeringOrder.ShowForm(dmDocClient, cdsEngineeringOrder, emReadOnly);
end;

procedure TfmOrganisationTaskProposal.actEngineeringOrdersExecute(Sender: TObject);
begin
  inherited;
  cdsEngineeringOrdersParams.CreateDataSet;
  try
    cdsEngineeringOrdersParams.Edit;
    try
      cdsEngineeringOrdersParamsMAX_EO_STATE_CODE.AsInteger:= ClosedEOStateCode;
      cdsEngineeringOrdersParamsCHOSEN_PRODUCTS.AsString:= ChosenNodeCodeToXML(cdsDataPRODUCT_CODE.AsInteger);
      cdsEngineeringOrdersParams.Post;
    except
      cdsEngineeringOrdersParams.Cancel;
      raise;
    end;  { try }

    TfmEngineeringOrders.ShowForm(nil, cdsEngineeringOrdersParams, emReadOnly, doNone, False);
  finally
    cdsEngineeringOrdersParams.Close;
  end;  { try }
end;

procedure TfmOrganisationTaskProposal.actEngineeringOrderUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsEngineeringOrder.IsEmpty;
end;

procedure TfmOrganisationTaskProposal.actFormUpdate(Sender: TObject);
var
  ResultReadOnly: Boolean;
begin
  inherited;

  pnlCloseOrgTaskProposal.Visible:=
    cdsData.Active and
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    (EditMode = emEdit);

  pnlAnnulOrgTaskProposal.Visible:=
    cdsData.Active and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    (EditMode = emEdit);

  SetControlsReadOnly(not CanModifyData, [
    edtProposalDescription,
    cbAvailableProductionOrders,
    edtEngineeringPrice,
    edtProductionPrice,
    edtApplyPrice]);

  ResultReadOnly:= not (CanModifyData and LoginContext.HasUserActivity(uaOrganisationTaskProposalsResultEdit));
  SetControlReadOnly(ResultReadOnly, cbResultType);

  imgAutoCloseHint.Visible:=
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    (OTPResultType in [otprtAttached, otprtDenied]);

  pnlBOIEngProdPricePercents.Visible:= btnPercents.Down;
  pnlBOIOPlanEngProdPricePercents.Visible:= btnPercents.Down;
  pnlBOIOAccountEngProdPricePercents.Visible:= btnPercents.Down;

  pnlBOIDelExpPricePercents.Visible:= not btnPercents.Down;
  pnlBOIOPlanDelExpPricePercents.Visible:= not btnPercents.Down;
  pnlBOIOAccountDelExpPricePercents.Visible:= not btnPercents.Down;
end;

procedure TfmOrganisationTaskProposal.actInvestmentAndApplyBudgetOrdersExecute(
  Sender: TObject);
begin
  inherited;
   LoginContext.CheckUserActivity(uaBudgetOrdersInvest);

  cdsBudgetParams.CreateDataSet;
  try
    SetBudgetOrdersParams(0);
    TfmBudgetOrders.ShowForm(nil, cdsBudgetParams, emReadOnly, doNone, False, bmInvest);
  finally
    cdsBudgetParams.Close;
  end;  { try }
end;

procedure TfmOrganisationTaskProposal.actInvestmentBudgetExecute(
  Sender: TObject);
begin
  inherited;
   LoginContext.CheckUserActivity(uaBudgetInvest);

  cdsBudgetParams.CreateDataSet;
  try
    SetBudgetParams(0, InvestmentBudgetOrderItemType);
    TfmBudget.ShowForm(nil, cdsBudgetParams, emReadOnly, doDataset, True, bmInvest);
  finally
    cdsBudgetParams.Close;
  end;  { try }
end;

procedure TfmOrganisationTaskProposal.actPrematurelyCloseExecute(Sender: TObject);
begin
  inherited;
  CloseProposal(True);
end;

procedure TfmOrganisationTaskProposal.actPrematurelyCloseUpdate(Sender: TObject);
begin
  inherited;
  CloseActionUpdate(Sender);
end;

procedure TfmOrganisationTaskProposal.actProductionOrderDocExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotSale,
    cdsProductionOrder);
end;

procedure TfmOrganisationTaskProposal.actProductionOrderDocUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsProductionOrderPO_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsProductionOrder.IsEmpty;
end;

procedure TfmOrganisationTaskProposal.actProductionOrderExecute(
  Sender: TObject);
begin
  inherited;
  TfmProductionOrder.ShowForm(dmDocCLient, cdsProductionOrder, emReadOnly);
end;

procedure TfmOrganisationTaskProposal.actProductionOrdersExecute(Sender: TObject);
begin
  inherited;
  cdsProductionOrdersParams.CreateDataSet;
  try
    cdsProductionOrdersParams.Edit;
    try
      cdsProductionOrdersParamsMIN_ML_STATE_CODE.AsInteger:= OKIDUMissingMLState;
      cdsProductionOrdersParamsMAX_ML_STATE_CODE.AsInteger:= FinishedWithoutMLState;
      cdsProductionOrdersParamsCHOSEN_PRODUCTS.AsString:= ChosenNodeCodeToXML(cdsDataPRODUCT_CODE.AsInteger);
      cdsProductionOrdersParams.Post;
    except
      cdsProductionOrdersParams.Cancel;
      raise;
    end;  { try }

    TfmProductionOrders.ShowForm(nil, cdsProductionOrdersParams, emReadOnly, False, ProdOrderBaseTypeToInt(pobtProjectCover));
  finally
    cdsProductionOrdersParams.Close;
  end;  { try }
end;

procedure TfmOrganisationTaskProposal.actProductionOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsProductionOrder.IsEmpty;
end;

procedure TfmOrganisationTaskProposal.actProposalDocExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if CanModifyData then
    em:= EditMode
  else
    em:= emReadOnly;

  dmDocClient.DSOpenDoc(
    em,
    ((Sender as TAction).ActionComponent as TControl),
    dotOrgTaskProposal,
    cdsData);
end;

procedure TfmOrganisationTaskProposal.actProposalDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsDataPROPOSAL_HAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmOrganisationTaskProposal.actReplacedOrgTaskProposalExecute(
  Sender: TObject);
begin
  inherited;
  TfmOrganisationTaskProposal.ShowForm(nil, nil, emReadOnly, doNone, cdsDataREPLACED_ORG_TASK_PROP_CODE.AsInteger);
end;

procedure TfmOrganisationTaskProposal.actReplacedOrgTaskProposalUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDataREPLACED_ORG_TASK_PROP_CODE.IsNull;
end;

procedure TfmOrganisationTaskProposal.actReplacementOrgTaskProposalExecute(
  Sender: TObject);
begin
  inherited;
  TfmOrganisationTaskProposal.ShowForm(nil, nil, emReadOnly, doNone, cdsDataREPLACEMENT_ORG_TASK_PROP_CODE.AsInteger);
end;

procedure TfmOrganisationTaskProposal.actReplacementOrgTaskProposalUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDataREPLACEMENT_ORG_TASK_PROP_CODE.IsNull;
end;

procedure TfmOrganisationTaskProposal.BudgetAndBudgetOrdersButttonsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDataPRODUCT_CODE.IsNull;
end;

class function TfmOrganisationTaskProposal.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

function TfmOrganisationTaskProposal.CanModifyData: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    cdsData.Active and
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

class function TfmOrganisationTaskProposal.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmOrganisationTaskProposal.cdsAvailableProductionOrdersBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsAvailableProductionOrders.Params.ParamByName('PRODUCT_CODE').Value:= cdsDataPRODUCT_CODE.AsVariant;
end;

procedure TfmOrganisationTaskProposal.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmOrganisationTaskProposal.cdsDataBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if (FReplacedOrgTaskProposalCode > 0) then
    begin
      with FReplacedOrgTaskProposal do
        begin
          CycleNo:= cdsDataORG_TASK_PROPOSAL_CYCLE_NO.AsInteger;
          Description:= cdsDataDESCRIPTION.AsString;
          HasDocItems:= cdsDataPROPOSAL_HAS_DOC_ITEMS.AsBoolean;
          HasDoc:= not cdsDataDOC_BRANCH_CODE.IsNull;
          DocBranchCode:= cdsDataDOC_BRANCH_CODE.AsInteger;
          DocCode:= cdsDataDOC_CODE.AsInteger;
          PrcData:= ReadVariantFromBlobField(cdsDataPRC_DATA);
        end;  { with }
    end;  { if }
end;

procedure TfmOrganisationTaskProposal.cdsDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if (FReplacedOrgTaskProposalCode <> 0) then
    cdsData.Params.ParamByName('ORG_TASK_PROPOSAL_CODE').AsInteger:= FReplacedOrgTaskProposalCode;
end;

procedure TfmOrganisationTaskProposal.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (OTPResultType = otprtAttached) and
     not cdsDataPRODUCT_CODE.IsNull and
     not dmMain.SvrOrganisationTasks.GetHasOrganisationTaskProposal(
           cdsDataPRODUCT_CODE.AsInteger,
           cdsDataORG_TASK_PROPOSAL_CODE.AsInteger) then
    begin
      raise Exception.Create(SCannotAttachToProductWithoutProposals);
    end;  { if }

  if not cdsDataRESULT_DATE.IsNull then
    CheckRequiredField(cdsDataORG_TASK_PROP_RESULT_TYPE_CODE);

  if not cdsDataORG_TASK_PROP_RESULT_TYPE_CODE.IsNull then
    CheckRequiredField(cdsDataRESULT_DATE);

  if cdsDataORG_TASK_PROP_RESULT_TYPE_CODE.IsNull or
     (OTPResultType in [otprtDenied, otprtReturned]) then
    begin
      cdsDataDEPT_CODE.Clear;
      cdsDataMANAGER_EMPLOYEE_CODE.Clear;
    end;  { if }

  if (OTPResultType in [otprtAccepted, otprtAttached]) then
    CheckRequiredField(cdsDataPRODUCT_CODE);

  if not cdsDataENGINEERING_PLAN_BEGIN_DATE.IsNull then
    CheckRequiredField(cdsDataENGINEERING_PLAN_END_DATE);

  if not cdsDataENGINEERING_PLAN_END_DATE.IsNull then
    CheckRequiredField(cdsDataENGINEERING_PLAN_BEGIN_DATE);

  if not cdsDataPRODUCTION_PLAN_BEGIN_DATE.IsNull then
    CheckRequiredField(cdsDataPRODUCTION_PLAN_END_DATE);

  if not cdsDataPRODUCTION_PLAN_END_DATE.IsNull then
    CheckRequiredField(cdsDataPRODUCTION_PLAN_BEGIN_DATE);
end;

procedure TfmOrganisationTaskProposal.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsDataVALIDATE_PRC_DATA_COMPLETENESS.AsBoolean:= (OTPResultType = otprtAccepted);

  cdsData_INVESTMENT_INCREASE_PRICE.AsVariant:=
    FloatToVar(
      cdsDataENGINEERING_PRICE.AsFloat +
      cdsDataPRODUCTION_PRICE.AsFloat);

  cdsData_PRJ_PRICE_DEV_PROJECT.AsVariant:=
    FloatToVar(
      cdsData_INVESTMENT_INCREASE_PRICE.AsFloat -
      cdsDataAPPLY_PRICE.AsFloat);

  if cdsData_INVESTMENT_INCREASE_PRICE.IsNull then
    begin
      cdsData_PRJ_ENG_PROJECT_PRICE_P.Clear;
      cdsData_PRJ_PROD_PROJECT_PRICE_P.Clear;
    end
  else
    begin
      cdsData_PRJ_ENG_PROJECT_PRICE_P.AsVariant:=
        FloatToVar(
          cdsDataENGINEERING_PRICE.AsFloat /
          cdsData_INVESTMENT_INCREASE_PRICE.AsFloat);
      cdsData_PRJ_PROD_PROJECT_PRICE_P.AsVariant:=
        FloatToVar(
          cdsDataPRODUCTION_PRICE.AsFloat /
          cdsData_INVESTMENT_INCREASE_PRICE.AsFloat);
    end;
end;

procedure TfmOrganisationTaskProposal.cdsDataNewRecord(DataSet: TDataSet);
var
  CurrentDateTime: TDateTime;
begin
  inherited;

  cdsDataORG_TASK_PROPOSAL_CODE.AsInteger:= dmMain.SvrOrganisationTasks.NewOrgTaskProposalCode;
  cdsDataORG_TASK_PROPOSAL_NO.AsInteger:= dmMain.SvrOrganisationTasks.NewOrgTaskProposalNo;

  CurrentDateTime:= ContextNow;
  cdsDataCREATE_DATE.AsDateTime:= DateOf(CurrentDateTime);
  cdsDataCREATE_TIME.AsDateTime:= TimeOf(CurrentDateTime);
  cdsDataCREATE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;

  if (FReplacedOrgTaskProposalCode = 0) then
    cdsDataORG_TASK_PROPOSAL_CYCLE_NO.AsInteger:= 1
  else
    begin
      cdsDataORG_TASK_PROPOSAL_CYCLE_NO.AsInteger:= FReplacedOrgTaskProposal.CycleNo + 1;
      cdsDataREPLACED_ORG_TASK_PROP_CODE.AsInteger:= FReplacedOrgTaskProposalCode;
      cdsDataDESCRIPTION.AsString:= FReplacedOrgTaskProposal.Description;

      WriteVariantToBlobField(FReplacedOrgTaskProposal.PrcData, cdsDataPRC_DATA);
      PrcDataCreateLike(cdsDataPRC_DATA, ProcessOwners.Project);

      if FReplacedOrgTaskProposal.HasDoc then
        begin
          cdsDataPROPOSAL_HAS_DOC_ITEMS.AsBoolean:= FReplacedOrgTaskProposal.HasDocItems;
          cdsDataDOC_BRANCH_CODE.AsInteger:= LoginContext.LocalBranchCode;
          cdsDataDOC_CODE.AsInteger:=
            dmDocClient.CreateDocLike(
              FReplacedOrgTaskProposal.DocBranchCode,
              FReplacedOrgTaskProposal.DocCode,
              True);
        end;  { if }
    end;  { if }
end;

procedure TfmOrganisationTaskProposal.cdsDataOTP_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(Sender.AsInteger, Low(OTPStateAbbrevs), High(OTPStateAbbrevs)) then
    Text:= OTPStateAbbrevs[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmOrganisationTaskProposal.RefreshPeripheralDataSet(ADataSet: TDataSet);
begin
  with ADataSet do
    begin
      DisableControls;
      try
        Close;
        Open;
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmOrganisationTaskProposal.cdsDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  cdsDataSALE_OBJECT_BRANCH_CODE.Clear;
  cdsDataSALE_OBJECT_CODE.Clear;

  RefreshPeripheralDataSet(cdsEngineeringOrder);
  RefreshPeripheralDataSet(cdsAvailableProductionOrders);
  RefreshPeripheralDataSet(cdsOTPInvestPrices);
end;

procedure TfmOrganisationTaskProposal.cdsDataSALE_OBJECT_BRANCH_CODEChange(Sender: TField);
begin
  inherited;
  // tuk ne se refresh-wa zashtoto ochakwame da redaktirnat poleto SALE_OBJECT_CODE sled towa
end;

procedure TfmOrganisationTaskProposal.cdsDataSALE_OBJECT_CODEChange(Sender: TField);
begin
  inherited;
  RefreshPeripheralDataSet(cdsProductionOrder);
  RefreshPeripheralDataSet(cdsOTPInvestPrices);
end;

procedure TfmOrganisationTaskProposal.cdsDataSALE_OBJECT_PKChange(Sender: TField);
begin
  inherited;
  if Sender.IsNull then
    begin
      cdsDataSALE_OBJECT_BRANCH_CODE.Clear;
      cdsDataSALE_OBJECT_CODE.Clear;
    end
  else
    begin
      cdsDataSALE_OBJECT_BRANCH_CODE.AsInteger:=
        cdsAvailableProductionOrders.Lookup('SALE_OBJECT_PK', Sender.Value, 'SALE_OBJECT_BRANCH_CODE');

      cdsDataSALE_OBJECT_CODE.AsInteger:=
        cdsAvailableProductionOrders.Lookup('SALE_OBJECT_PK', Sender.Value, 'SALE_OBJECT_CODE');
    end;
end;

procedure TfmOrganisationTaskProposal.cdsEngineeringOrderBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsEngineeringOrder.Params.ParamByName('PRODUCT_CODE').AsInteger:= cdsDataPRODUCT_CODE.AsInteger;
end;

procedure TfmOrganisationTaskProposal.cdsEngineeringOrderEO_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and (Sender.AsInteger in [Low(TEOStates)..High(TEOStates)]) then
    Text:= EOStateAbbrevs[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmOrganisationTaskProposal.cdsOTPInvestPricesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsOTPInvestPrices.Params.ParamByName('PRODUCT_CODE').AsInteger:= cdsDataPRODUCT_CODE.AsInteger;
  cdsOTPInvestPrices.Params.ParamByName('SALE_OBJECT_BRANCH_CODE').AsInteger:= cdsDataSALE_OBJECT_BRANCH_CODE.AsInteger;
  cdsOTPInvestPrices.Params.ParamByName('SALE_OBJECT_CODE').AsInteger:= cdsDataSALE_OBJECT_CODE.AsInteger;
end;

procedure TfmOrganisationTaskProposal.cdsProductionOrderBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsProductionOrder.Params.ParamByName('SALE_OBJECT_BRANCH_CODE').AsInteger:= cdsDataSALE_OBJECT_BRANCH_CODE.AsInteger;
  cdsProductionOrder.Params.ParamByName('SALE_OBJECT_CODE').AsInteger:= cdsDataSALE_OBJECT_CODE.AsInteger;
end;

procedure TfmOrganisationTaskProposal.cdsProductionOrderML_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and (Sender.AsInteger in [Low(MLStateAbbrevs)..High(MLStateAbbrevs)]) then
    Text:= MLStateAbbrevs[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmOrganisationTaskProposal.FormCreate(Sender: TObject);
begin
  inherited;
  frCreateDate.FieldNames:= 'CREATE_DATE';
  frPlanProposalDate.FieldNames:= 'PLAN_PROPOSAL_DATE';
  frPlanProposalEmployee.FieldNames:= 'PLAN_PROPOSAL_EMPLOYEE_CODE';
  frResultDate.FieldNames:= 'RESULT_DATE';
  frProduct.FieldNames:= 'PRODUCT_CODE';
  frProduct.VIMButtonVisible:= False;
  frProduct.TreeDetailSelection:= tdsInstance;
  frDept.FieldNames:= 'DEPT_CODE';
  frManagerEmployee.FieldNames:= 'MANAGER_EMPLOYEE_CODE';
  frManagerEmployee.DocButtonVisible:= True;

  frEngineeringPlanDateInterval.FieldNames:= 'ENGINEERING_PLAN_BEGIN_DATE;ENGINEERING_PLAN_END_DATE';
  frProductionPlanDateInterval.FieldNames:= 'PRODUCTION_PLAN_BEGIN_DATE;PRODUCTION_PLAN_END_DATE';

  frEngineeringRealEndDate.SetDataSet(cdsOTPInvestPrices);
  frEngineeringRealEndDate.FieldNames:= 'ENGINEERING_REAL_END_DATE';
  frProductionRealEndDate.SetDataSet(cdsOTPInvestPrices);
  frProductionRealEndDate.FieldNames:= 'PRODUCTION_REAL_END_DATE';

  FfrPrcData:= TfrPrcDataFieldEditFrame.Create(Self);
  FfrPrcData.ProcessOwner:= ProcessOwners.Project;
  FfrPrcData.OwnerDisplayName:= SOrgTaskProposal;
  FfrPrcData.PrcDataReportClass:= TrptOrgTaskProposalPrcDataReport;
  tsPrcData.InsertControl(FfrPrcData);

  MaximizeStyle:= msVertical;
end;

function TfmOrganisationTaskProposal.GetOriginalFormCaption: string;
begin
  if (EditMode = emInsert) and (FReplacedOrgTaskProposalCode > 0)then
    Result:= SNewProposalCycleCaption
  else
    Result:= inherited GetOriginalFormCaption;
end;

procedure TfmOrganisationTaskProposal.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(dsData.DataSet.FieldByName('PROPOSAL_HAS_DOC_ITEMS'));
end;

procedure TfmOrganisationTaskProposal.Initialize;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  if (EditMode <> emInsert) then
    begin
      RefreshPeripheralDataSet(cdsEngineeringOrder);
      RefreshPeripheralDataSet(cdsProductionOrder);
      RefreshPeripheralDataSet(cdsAvailableProductionOrders);
    end;  { if }

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotOrgTaskProposal, dsData.DataSet);
end;

procedure TfmOrganisationTaskProposal.Finalize;
begin
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  inherited;
end;

procedure TfmOrganisationTaskProposal.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frCreateDate) or
     (AFrame = frEngineeringRealEndDate) or
     (AFrame = frProductionRealEndDate) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  if (AFrame = frPlanProposalDate) or
     (AFrame = frPlanProposalEmployee) or
     (AFrame = frEngineeringPlanDateInterval) or
     (AFrame = frProductionPlanDateInterval) or
     (AFrame = FfrPrcData) then
    begin
      AFrame.ReadOnly:= not CanModifyData;
      Exit;
    end;  { if }

  if (AFrame = frResultDate) or
     (AFrame = frProduct) or
     (AFrame = frDept) or
     (AFrame = frManagerEmployee) then
   begin
     AFrame.ReadOnly:=
       not (CanModifyData and LoginContext.HasUserActivity(uaOrganisationTaskProposalsResultEdit));
        
     Exit;
   end;  { if }

  inherited;
end;

procedure TfmOrganisationTaskProposal.SetBudgetOrdersParams(
  AOrgTaskProposalStateCode: Integer);
begin
  cdsBudgetParams.Append;
  try
    cdsBudgetParamsCHOSEN_PRODUCTS.AsString:= ChosenNodeCodeToXML(cdsDataPRODUCT_CODE.AsInteger);
    cdsBudgetParamsMAX_STATUS_CODE.AsInteger:= MaxBudgetOrderStatusCode;
    if (AOrgTaskProposalStateCode <> 0) then
      cdsBudgetParamsORG_TASK_PROPOSAL_STATE_CODE.AsInteger:= AOrgTaskProposalStateCode;

    cdsBudgetParams.Post;
  except
    cdsBudgetParams.Cancel;
    raise;
  end;  { try }
end;

procedure TfmOrganisationTaskProposal.SetBudgetParams(AOrgTaskProposalStateCode,
  ABudgetOrderItemType: Integer);
begin
  cdsBudgetParams.Append;
  try
    cdsBudgetParamsCHOSEN_PRODUCTS.AsString:= ChosenNodeCodeToXML(cdsDataPRODUCT_CODE.AsInteger);
    if (AOrgTaskProposalStateCode <> 0) then
      cdsBudgetParamsORG_TASK_PROPOSAL_STATE_CODE.AsInteger:= AOrgTaskProposalStateCode;
    if (ABudgetOrderItemType <> 0) then
      cdsBudgetParamsBUDGET_ORDER_ITEM_TYPE.AsInteger:= ABudgetOrderItemType;

    cdsBudgetParams.Post;
  except
    cdsBudgetParams.Cancel;
    raise;
  end;  { try }
end;

procedure TfmOrganisationTaskProposal.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AReplacedOrgTaskProposalCode: Integer);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FReplacedOrgTaskProposalCode:= AReplacedOrgTaskProposalCode;
end;

class function TfmOrganisationTaskProposal.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AReplacedOrgTaskProposalCode: Integer): Boolean;
var
  f: TfmOrganisationTaskProposal;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AReplacedOrgTaskProposalCode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

end.
