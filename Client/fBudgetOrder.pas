unit fBudgetOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fBottomButtonGridForm, Mask, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, fEmployeeFieldEditFrame, fDateIntervalFrame,
  uClientTypes, fEmployeeFieldEditFrameBald, JvLabel, uBudgetClientUtils,
  JvExControls, JvComponent, JvDBLookup, JvCaptionButton,
  dDocClient, fProductFieldEditFrame, JvComponentBase, Menus, uBudgetUtils,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions,
  EhLibVCL, DBAxisGridsEh;

type
  TfmBudgetOrder = class(TGridForm)
    pnlBudgetOrder: TPanel;
    cdsDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsDataBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsDataGENERATOR_DEPT_CODE: TAbmesFloatField;
    cdsDataGENERATOR_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataEND_DATE: TAbmesSQLTimeStampField;
    cdsDataDESCRIPTION: TAbmesWideStringField;
    cdsDataBO_REGULARITY_TYPE_CODE: TAbmesFloatField;
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
    cdsDataqryBudgetOrderItems: TDataSetField;
    cdsGridDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsGridDataBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsGridDataBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    cdsGridDataBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDISTRIBUTION_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataTOTAL_PRICE: TAbmesFloatField;
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
    gbGenerator: TGroupBox;
    frGeneratorDept: TfrDeptFieldEditFrameBald;
    gbDates: TGroupBox;
    lblDeviation: TLabel;
    frDates: TfrDateIntervalFrame;
    edtDeviation: TDBEdit;
    gbBudgetOrder: TGroupBox;
    lblStatus: TLabel;
    lblBudgetOrderBranch: TLabel;
    lblBudgetOrderCode: TLabel;
    edtStatus: TDBEdit;
    cbBudgetOrderBranch: TJvDBLookupCombo;
    edtBudgetOrderCode: TDBEdit;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    gbBudgetOrderDescription: TGroupBox;
    edtDescription: TDBEdit;
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
    cdsData_BUDGET_ORDER_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsData_BO_REGULARITY_TYPE_NAME: TAbmesWideStringField;
    cdsBOIDistricutionTypes: TAbmesClientDataSet;
    cdsBOIDistricutionTypesBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    cdsBOIDistricutionTypesBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    cdsGridData_BOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
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
    cdsGridData_DISTRIBUTION_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataDISTRIBUTED_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_DISTRIB_DATE_UNIT_AVG_WORKDAYS: TAbmesFloatField;
    cdsTimeUnitsAVERAGE_WORKDAYS: TAbmesFloatField;
    cdsTimeUnitsTHE_DATE_UNIT_ABBREV: TAbmesWideStringField;
    actDocumentation: TAction;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsGridData_REMAINING_TOTAL_PRICE: TAbmesFloatField;
    cdsGridData_DEVIATION_PERCENT: TAbmesFloatField;
    cdsGridDataIS_CONFIRMED: TAbmesFloatField;
    cdsGridData_BUDGET_ORDER_ITEM_STATUS_CODE: TAbmesFloatField;
    cdsData_BUDGET_ORDER_STATUS_CODE: TAbmesFloatField;
    cdsGridDataNULL_WHEN_ANNULED: TAbmesFloatField;
    cdsGridDataNULL_WHEN_CLOSED: TAbmesFloatField;
    actReinitializeInEditMode: TAction;
    pnlBottomGridButtons: TPanel;
    btnAddBudgetOrderItem: TBitBtn;
    btnEditBudgetOrderItem: TBitBtn;
    btnCloseBudgetOrder: TBitBtn;
    btnAnnulBudgetOrder: TBitBtn;
    bvlButtonSeparator: TBevel;
    actCloseBudgetOrder: TAction;
    actAnnulBudgetOrder: TAction;
    cdsGridData_MAX_BUDGET_ORDER_ITEM_CODE: TAggregateField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    lblRegularityType: TLabel;
    cdsBOIDistricutionTypesBOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridData_BOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField;
    cdsDataTOTAL_PRICE: TAbmesFloatField;
    cdsDataREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    cdsGridData_REMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    gbDeveloperDept: TGroupBox;
    frDeveloperDept: TfrDeptFieldEditFrameBald;
    cbRegularityType: TJvDBLookupCombo;
    gbBudgetOrderPrices: TGroupBox;
    lblTotalPrice: TLabel;
    lblPlanTotalPrice: TLabel;
    lblRealTotalPrice: TLabel;
    edtTotalPrice: TDBEdit;
    edtPlanTotalPrice: TDBEdit;
    edtRealTotalPrice: TDBEdit;
    cdsDataPLAN_TOTAL_PRICE: TAbmesFloatField;
    cdsDataDEVELOPER_DEPT_CODE: TAbmesFloatField;
    cdsData_PLAN_TO_ACCOUNT_PRICE_PERCENT: TAbmesFloatField;
    cdsData_EXPENSE_SPEED_PERCENT: TAbmesFloatField;
    cdsDataACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    cdsGridDataBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsGridDataBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataBO_PRICE_PERCENT: TAbmesFloatField;
    cdsGridDataBOI_ORDER_COUNT: TAbmesFloatField;
    cdsDataBUDGET_ORDER_CLASS_CODE: TAbmesFloatField;
    lblFormCaption: TLabel;
    cdsGridDataIS_CANCELED: TAbmesFloatField;
    cdsGridDataIS_FOR_RECONSIDERATION: TAbmesFloatField;
    cdsGridDataDECISION_ENTER_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataDECISION_ENTER_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDECISION_APPROVE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataDECISION_APPROVE_DATE: TAbmesSQLTimeStampField;
    cdsGridData_BO_PRICE_PERCENT: TAbmesFloatField;
    cdsDataCAN_ANNUL: TAbmesFloatField;
    cdsGridDataCAN_ANNUL: TAbmesFloatField;
    lblBudgerOrderLimits: TLabel;
    cdsData_REMAINING_TIME_PERCENT: TAbmesFloatField;
    cdsData_DEVIATION_PRICE: TAbmesFloatField;
    cdsData_REMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    cdsGridData_DAYS_TO_START: TAbmesFloatField;
    cdsGridData_REMAINING_TIME_PERCENT: TAbmesFloatField;
    cdsBOIOrderTypes: TAbmesClientDataSet;
    cdsBOIOrderTypesBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsBOIOrderTypesBOI_ORDER_TYPE_NAME: TAbmesWideStringField;
    cdsGridData_BOI_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataBOIO_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataBC_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataBC_DOC_CODE: TAbmesFloatField;
    cdsGridDataBC_HAS_DOC: TAbmesFloatField;
    tlbBudgetClassDoc: TToolBar;
    sepBeforeBudgetClassDoc: TToolButton;
    lblBudgetClassDoc: TLabel;
    btnBudgetClassDoc: TToolButton;
    tlbBudgetOrderItemDoc: TToolBar;
    sepBeforeBudgetOrderItemDoc: TToolButton;
    lblBudgetOrderItemDoc: TLabel;
    btnBudgetOrderItemDoc: TToolButton;
    actBudgetOrderItemDoc: TAction;
    actBudgetClassDoc: TAction;
    edtSumTotalPrice: TDBEdit;
    edtSumBOPricePercent: TDBEdit;
    edtTotalPriceDeviationPercent: TDBEdit;
    cdsGridDataSUM_TOTAL_PRICE: TAggregateField;
    cdsGridDataSUM_BO_PRICE_PERCENT: TAggregateField;
    cdsGridDataSUM_REMAINING_TOTAL_PR_PERCENT: TAggregateField;
    cdsDataGENERATOR_DEPT_NAME: TAbmesWideStringField;
    cdsDataGENERATOR_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDataDEVELOPER_DEPT_NAME: TAbmesWideStringField;
    cdsDataDEVELOPER_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridData_BUDGET_MODE: TAbmesFloatField;
    cdsBOIOrderTypesBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    frProduct: TfrProductFieldEditFrame;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsDataPRODUCT_NAME: TAbmesWideStringField;
    cdsDataPRODUCT_NO: TAbmesFloatField;
    btnShowAnnuledLines: TSpeedButton;
    cdsGridDataBUDGET_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataBUDGET_PRODUCT_NO: TAbmesFloatField;
    cdsGridDataBUDGET_PRODUCT_NAME: TAbmesWideStringField;
    tlbBudgetOrderItemTypes: TToolBar;
    btnIntroducingItems: TSpeedButton;
    btnExpenseItems: TSpeedButton;
    sepNavigator: TToolButton;
    actIntroducingItems: TAction;
    actExpenseItems: TAction;
    cdsGridDataBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsBudgetOrderItemTypes: TAbmesClientDataSet;
    cdsBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_NO: TAbmesFloatField;
    cdsBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_NAME: TAbmesWideStringField;
    cdsBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridData_BUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField;
    cdsTotals: TAbmesClientDataSet;
    cdsTotalsSUM_TOTAL_PRICE: TAbmesFloatField;
    cdsTotalsSUM_BO_PRICE_PERCENT: TAbmesFloatField;
    dsTotals: TDataSource;
    cdsGridData_PRINT_SUM_TOTAL_PRICE: TAbmesFloatField;
    cdsGridData_PRINT_SUM_BO_PRICE_PERCENT: TAbmesFloatField;
    gbTotalPriceDeviation: TGroupBox;
    lblExpenseSpeedPercentSymbol: TLabel;
    edtExpenseSpeedPercent: TDBEdit;
    lblExpenseSpeedPercent: TLabel;
    lblPercents: TLabel;
    edtPlanToAccountPricePercent: TDBEdit;
    lblEqualTo: TLabel;
    lblPrimaryCurrency: TLabel;
    edtTotalPriceDeviation: TDBEdit;
    lblTotalPriceDeviation: TLabel;
    cdsTotals_TOTAL_PRICE_DEV_PERCENT: TAbmesFloatField;
    cdsTotalsSUM_BOIO_TOTAL_PRICE: TAbmesFloatField;
    cdsGridData_PRINT_TOTAL_PRICE_DEV_PERCENT: TAbmesFloatField;
    cdsDataORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField;
    cdsOrgTaskProposalStates: TAbmesClientDataSet;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NO: TAbmesFloatField;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField;
    cdsData_ORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField;
    gbOrgTaskProposalState: TGroupBox;
    cbOrgTaskProposalState: TJvDBLookupCombo;
    actExploitationItems: TAction;
    btnExploitationItems: TSpeedButton;
    cdsDataBOIO_PLAN_TOTAL_PRICE: TAbmesFloatField;
    edtBOIOPlanTotalPrice: TDBEdit;
    lblBOIOPlanTotalPrice: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cdsDataBUDGET_ORDER_BRANCH_CODEChange(Sender: TField);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataTOTAL_PRICEChange(Sender: TField);
    procedure cdsGridDataDISTRIBUTED_SINGLE_PRICEChange(Sender: TField);
    procedure cdsGridDataBEGIN_DATEChange(Sender: TField);
    procedure cdsGridDataEND_DATEChange(Sender: TField);
    procedure cdsGridDataDISTRIBUTION_DATE_UNIT_CODEChange(Sender: TField);
    procedure actDocumentationExecute(Sender: TObject);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridData_DEVIATION_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsGridData_BUDGET_ORDER_ITEM_STATUS_CODEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsData_BUDGET_ORDER_STATUS_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actReinitializeInEditModeExecute(Sender: TObject);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actCloseBudgetOrderExecute(Sender: TObject);
    procedure actCloseBudgetOrderUpdate(Sender: TObject);
    procedure actAnnulBudgetOrderUpdate(Sender: TObject);
    procedure actAnnulBudgetOrderExecute(Sender: TObject);
    procedure actEditRecordUpdate(Sender: TObject);
    procedure cdsDataGENERATOR_DEPT_CODEChange(Sender: TField);
    procedure cdsGridDataBEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDataREMAINING_TOTAL_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_REMAINING_TOTAL_PRICE_PERCENTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridDataHAS_ORDER_STATE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_BO_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsData_EXPENSE_SPEED_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataREMAINING_TOTAL_PRICE_PERCENTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridDataBO_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataDEPT_CODEChange(Sender: TField);
    procedure cdsGridDataBOI_ORDER_COUNTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsData_PLAN_TO_ACCOUNT_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsData_REMAINING_TIME_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsData_REMAINING_TOTAL_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_REMAINING_TIME_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormHide(Sender: TObject);
    procedure actBudgetOrderItemDocExecute(Sender: TObject);
    procedure actBudgetOrderItemDocUpdate(Sender: TObject);
    procedure actBudgetClassDocExecute(Sender: TObject);
    procedure actBudgetClassDocUpdate(Sender: TObject);
    procedure cdsGridDataSUM_TOTAL_PRICEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataSUM_BO_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataSUM_REMAINING_TOTAL_PR_PERCENTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsDataDEVELOPER_DEPT_CODEChange(Sender: TField);
    procedure cdsDataBEGIN_DATEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsDataPRODUCT_CODEChange(Sender: TField);
    procedure btnShowAnnuledLinesClick(Sender: TObject);
    procedure cdsGridDataBUDGET_PRODUCT_CODEChange(Sender: TField);
    procedure actExpenseItemsUpdate(Sender: TObject);
    procedure actIntroducingItemsUpdate(Sender: TObject);
    procedure actIntroducingItemsExecute(Sender: TObject);
    procedure actExpenseItemsExecute(Sender: TObject);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsTotalsSUM_TOTAL_PRICEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsTotalsSUM_BO_PRICE_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsTotalsSUM_REMAINING_TOTAL_PR_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_PRINT_SUM_TOTALGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_PRINT_SUM_TOTAL_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_PRINT_SUM_BO_PRICE_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_PRINT_SUM_REM_TOTAL_PR_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataIS_CONFIRMEDValidate(Sender: TField);
    procedure cdsGridDataIS_CANCELEDValidate(Sender: TField);
    procedure cdsGridDataREMAINING_WORKDAYS_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsTotalsCalcFields(DataSet: TDataSet);
    procedure cdsTotals_TOTAL_PRICE_DEV_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_PRINT_TOTAL_PRICE_DEV_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actExploitationItemsUpdate(Sender: TObject);
    procedure actExploitationItemsExecute(Sender: TObject);
    procedure cdsBudgetOrderItemTypesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsGridDataTOTAL_PRICEValidate(Sender: TField);
    procedure cdsDataTOTAL_PRICEValidate(Sender: TField);
  private
    FPriceChanging: Boolean;
    FBudgetClassChanging: Boolean;
    FCancelInsertMode: Boolean;
    FBudgetMode: TBudgetMode;
    FMsgParams: TStrings;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FVisibleBudgetOrderItemBaseType: TBudgetOrderItemBaseType;
    FNextBudgetOrderItemCode: Integer;
    procedure CalcDistributedSinglePrice;
    procedure CalcTotalPrice;
    procedure CalcPrices;
    procedure ForceCalcFieldsOncdsData;
    procedure CheckBudgetOrderItems(
      PerformIntervalInRangeCheck: Boolean = False;
      PerformItemDeptsAreDescendantsOfGeneratorDeptCheck: Boolean = False);
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure RefilterDetailDataSet;
    procedure RecalculateTotals;
    procedure CheckBOIDateInterval;
    procedure SaveNextBudgetOrderItemCode;
    function BudgetOrderItemTypeCodeValue(
      ABudgetOrderItemBaseType: TBudgetOrderItemBaseType): Variant;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoApplyUpdates; override;
    function GetOriginalFormCaption: string; override;
    function GetInsertRecordEnabled: Boolean; override;
    function GetGridRecordReadOnly: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    procedure ChangeEditMode(var AEditMode: TEditMode); override;
    class function CanUseDocs: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure Initialize; override;
    procedure Finalize; override;
    class function CanEditOuterDataSet: Boolean; override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True; ABudgetMode: TBudgetMode = bmExpense): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True; ABudgetMode: TBudgetMode = bmExpense); reintroduce; virtual;
  end;

implementation

uses
  dMain, fBaseForm, fBudgetOrderItem, uClientUtils, Math,
  uDocUtils, uUtils, AbmesDialogs, uColorConsts, uClientPeriods,
  uUserActivityConsts, fEditForm, uTreeClientUtils, uMessageDecodingUtils,
  rBudgetOrder, fTreeSelectForm, uBOIOrderTypes, uBOIDistributionTypes,
  uPeriods, uClientDateTime, uToolbarUtils;

{$R *.dfm}

resourcestring
  SBudgetProductMustBeMarking = 'В Привличащ и Въвеждащ Лимит Статията трябва да бъде Маркираща';
  SCannotChooseMarkingBudgetProductInExpenseBOI = 'Не може да избирате Маркираща Статия в Разходващ Лимит';
  SCannotAnnulBudgetOrder = 'Не можете да анулирате Бордерото, тъй като има Отчет по Ордери по Лимити';
  SItemDeptNotDescendantOfGeneratorDept = 'Съществува Лимит, чийто ТП Консуматор не съвпада с или не е наследник на ТП Управляващо';
  SConfirmBudgetOrderAnnul = 'След Анулиране Бордерото не може да се поднови. Това също ще анулира всички неанулирани Лимити.' + SLineBreak + 'Желаете ли продължение?';
  SConfirmBudgetOrderClose = 'След Приключване Бордерото не може да се поднови? Това също ще приключи всички неанулирани/неприключени Лимити.' + SLineBreak + 'Желаете ли продължение?';
  SBudgetBorderItemIntervalNotCorrect = 'Интервала на действие на Лимит трябва да попада в интервала на действие на Бордерото и да е цяло число Периоди!';
  SBudgetOrderSaved = 'Бордерото е записано под номер %d';
  SOverlappingItems = 'Съществуват различни Лимити по една и съща ' + SLineBreak +
                      'Статия с припокриващи се интервали на ' + SLineBreak +
                      'действие. Желаете ли запис?';
  SReadOnlyCaption = 'Преглед на %BudgetOrderItemAbbrev%';
  SEditCaption = 'Редактиране на %BudgetOrderItemAbbrev%';

{ TfmBudgetOrder }

class function TfmBudgetOrder.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmBudgetOrder.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmBudgetOrderItem;
  ReportClass:= TrptBudgetOrder;
  frGeneratorDept.FieldNames:= 'GENERATOR_DEPT_CODE';
  frDeveloperDept.FieldNames:= 'DEVELOPER_DEPT_CODE';
  frProduct.TreeDetailSelection:= tdsInstance;

  RegisterDateFields(cdsGridData);
end;

procedure TfmBudgetOrder.cdsDataBUDGET_ORDER_BRANCH_CODEChange(
  Sender: TField);
begin
  inherited;
  if cdsDataBUDGET_ORDER_BRANCH_CODE.IsNull then
    cdsDataBUDGET_ORDER_CODE.Clear
  else
    cdsDataBUDGET_ORDER_CODE.AsInteger:=
      dmMain.SvrBudget.GetNewBudgetOrderCode(cdsDataBUDGET_ORDER_BRANCH_CODE.AsInteger);
end;

procedure TfmBudgetOrder.actFormUpdate(Sender: TObject);
const
  ExpenseSpeedPercentColors: array [-1..1] of TColor = (clRed, clBlack, clGreen);
var
  AReadOnly: Boolean;
begin
  inherited;

  btnDocs.ImageIndex:= cdsDataHAS_DOCUMENTATION.AsInteger;
  btnBudgetOrderItemDoc.ImageIndex:= cdsGridDataHAS_DOCUMENTATION.AsInteger;
  btnBudgetClassDoc.ImageIndex:= cdsGridDataBC_HAS_DOC.AsInteger;

  AReadOnly:= not cdsDataANNUL_EMPLOYEE_CODE.IsNull or not cdsDataCLOSE_EMPLOYEE_CODE.IsNull;

  cbBudgetOrderBranch.ReadOnly:= (EditMode <> emInsert);
  cbBudgetOrderBranch.Color:= ReadOnlyColors[cbBudgetOrderBranch.ReadOnly];

  cbRegularityType.ReadOnly:= AReadOnly;
  cbRegularityType.Color:= ReadOnlyColors[cbRegularityType.ReadOnly];

  edtTotalPrice.ReadOnly:= AReadOnly;
  edtTotalPrice.Color:= ReadOnlyColors[edtTotalPrice.ReadOnly];

  edtDescription.ReadOnly:= AReadOnly;
  edtDescription.Color:= ReadOnlyColors[edtDescription.ReadOnly];

  gbOrgTaskProposalState.Visible:= (FBudgetMode = bmInvest);

  if (cdsData_BUDGET_ORDER_STATUS_CODE.AsInteger = 3) then
    edtStatus.Font.Color:= clRed
  else
    edtStatus.Font.Color:= clWindowText;

  edtExpenseSpeedPercent.Font.Color:= ExpenseSpeedPercentColors[Sign(cdsData_EXPENSE_SPEED_PERCENT.AsFloat)];

  NormalizedToolbar(tlbBudgetOrderItemTypes).Visible:= (FBudgetMode = bmInvest);

  grdData.Columns[2].Visible:= (FBudgetMode = bmInvest);
  AutoSizeColumn(grdData, 4);
end;

procedure TfmBudgetOrder.RecalculateTotals;

  procedure IncFloatField(AField, ADeltaField: TAbmesFloatField);
  begin
    AField.AsFloat:= AField.AsFloat + ADeltaField.AsFloat;
  end;

var
  b: TBookmark;
  SavedAutoCalcFields: Boolean;
begin
  cdsGridData.DisableControls;
  try
    b:= cdsGridData.Bookmark;
    try
      SavedAutoCalcFields:= cdsGridData.AutoCalcFields;
      cdsGridData.AutoCalcFields:= False;
      try
        cdsTotals.Edit;
        try
          cdsTotalsSUM_TOTAL_PRICE.AsInteger:= 0;
          cdsTotalsSUM_BOIO_TOTAL_PRICE.AsInteger:= 0;
          cdsTotalsSUM_BO_PRICE_PERCENT.AsInteger:= 0;

          cdsGridData.First;
          while not cdsGridData.Eof do
            begin
              IncFloatField(cdsTotalsSUM_TOTAL_PRICE, cdsGridDataTOTAL_PRICE);
              IncFloatField(cdsTotalsSUM_BOIO_TOTAL_PRICE, cdsGridDataBOIO_TOTAL_PRICE);
              IncFloatField(cdsTotalsSUM_BO_PRICE_PERCENT, cdsGridDataBO_PRICE_PERCENT);
              cdsGridData.Next;
            end;  { while }

          cdsTotals.Post;
        except
          cdsTotals.Cancel;
          raise;
        end;  { try }
      finally
        cdsGridData.AutoCalcFields:= SavedAutoCalcFields;
      end;  { try }
    finally
      cdsGridData.Bookmark:= b;
    end;  { try }
  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

procedure TfmBudgetOrder.RefilterDetailDataSet;
var
  b: TBookmark;
begin
  cdsGridData.DisableControls;
  try
    b:= cdsGridData.Bookmark;
    try
      cdsGridData.Filtered:= False;
      cdsGridData.Filtered:= True;
    finally
      try
        cdsGridData.Bookmark:= b;
      except
        cdsGridData.First;
      end;  { try }
    end;  { try }
  finally
    cdsGridData.EnableControls;
  end;  { try }

  RecalculateTotals;
end;

procedure TfmBudgetOrder.actIntroducingItemsExecute(Sender: TObject);
begin
  inherited;
  FVisibleBudgetOrderItemBaseType:= boibtIntroducing;
  RefilterDataSet(cdsBudgetOrderItemTypes);
  RefilterDetailDataSet;
end;

procedure TfmBudgetOrder.actIntroducingItemsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (FBudgetMode = bmInvest);
end;

procedure TfmBudgetOrder.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataGENERATOR_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataBUDGET_ORDER_CLASS_CODE.AsInteger:= BudgetModeToInt(FBudgetMode);
end;

procedure TfmBudgetOrder.cdsDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  DoProductFieldChanged(cdsDataPRODUCT_CODE, cdsDataPRODUCT_NAME, cdsDataPRODUCT_NO);
end;

procedure TfmBudgetOrder.CloseDataSets;
begin
  cdsOrgTaskProposalStates.Close;
  cdsTimeUnits.Close;
  cdsBranches.Close;
  cdsRegularityTypes.Close;
  cdsBOIDistricutionTypes.Close;
  cdsBudgetOrderItemTypes.Close;
  inherited;
  cdsTotals.Close;
end;

procedure TfmBudgetOrder.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(cdsDataHAS_DOCUMENTATION);
end;

procedure TfmBudgetOrder.OpenDataSets;
begin
  cdsTotals.CreateDataSet;
  inherited;
  cdsBudgetOrderItemTypes.Open;
  cdsBOIDistricutionTypes.Open;
  cdsRegularityTypes.Open;
  cdsBranches.Open;
  cdsTimeUnits.Open;
  cdsOrgTaskProposalStates.Open;
end;

procedure TfmBudgetOrder.SaveNextBudgetOrderItemCode;
var
  SavedFiltered: Boolean;
  b: TBookmark;
begin
  cdsGridData.DisableControls;
  try
    b:= cdsGridData.Bookmark;
    try
      SavedFiltered:= cdsGridData.Filtered;
      cdsGridData.Filtered:= False;
      try
        FNextBudgetOrderItemCode:= VarToInt(cdsGridData_MAX_BUDGET_ORDER_ITEM_CODE.AsVariant) + 1;
      finally
        cdsGridData.Filtered:= SavedFiltered;
      end;  { try }
    finally
      cdsGridData.Bookmark:= b;
    end;  { try }
  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

function TfmBudgetOrder.BudgetOrderItemTypeCodeValue(ABudgetOrderItemBaseType: TBudgetOrderItemBaseType): Variant;
begin
  case ABudgetOrderItemBaseType of
    boibtIntroducing: Result:= Null;
    boibtExpense: Result:= BudgetOrderItemTypeToInt(boitExpense);
    boibtExploitation: Result:= BudgetOrderItemTypeToInt(boitExploitation);
  else
    raise Exception.Create('Unkonwn BudgetOrderItemBaseType');
  end;  { case }
end;

procedure TfmBudgetOrder.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsGridDataIS_CONFIRMED.AsBoolean:= False;
  cdsGridDataCAN_ANNUL.AsBoolean:= True;
  cdsGridDataDEPT_CODE.Assign(cdsDataGENERATOR_DEPT_CODE);

  cdsGridDataNULL_WHEN_ANNULED.AsInteger:= 1;
  cdsGridDataNULL_WHEN_CLOSED.AsInteger:= 1;

  cdsGridDataBUDGET_ORDER_ITEM_CODE.AsInteger:= FNextBudgetOrderItemCode;

  cdsGridDataBUDGET_ORDER_ITEM_TYPE_CODE.AsVariant:=
    BudgetOrderItemTypeCodeValue(FVisibleBudgetOrderItemBaseType);
end;

procedure TfmBudgetOrder.CalcDistributedSinglePrice;
var
  Period: TPeriod;
  TimeUnitCount: Real;
begin
  Period:= GetPeriodValue(cdsGridDataDISTRIBUTION_DATE_UNIT_CODE.AsInteger);
  TimeUnitCount:= GetExactTimeUnitCount(cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime, Period);

  if (LargeZero(TimeUnitCount) = 0) then
    cdsGridDataDISTRIBUTED_SINGLE_PRICE.Clear
  else
    cdsGridDataDISTRIBUTED_SINGLE_PRICE.AsFloat:= cdsGridDataTOTAL_PRICE.AsFloat / TimeUnitCount;
end;

procedure TfmBudgetOrder.CalcTotalPrice;
var
  Period: TPeriod;
  TimeUnitCount: Real;
begin
  Period:= GetPeriodValue(cdsGridDataDISTRIBUTION_DATE_UNIT_CODE.AsInteger);
  TimeUnitCount:= GetExactTimeUnitCount(cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime, Period);

  if (LargeZero(TimeUnitCount) = 0) then
    cdsGridDataTOTAL_PRICE.Clear
  else
    cdsGridDataTOTAL_PRICE.AsFloat:= cdsGridDataDISTRIBUTED_SINGLE_PRICE.AsFloat * TimeUnitCount;
end;

procedure TfmBudgetOrder.CalcPrices;
begin
  if cdsGridDataBEGIN_DATE.IsNull or
     cdsGridDataEND_DATE.IsNull or
     cdsGridDataDISTRIBUTION_DATE_UNIT_CODE.IsNull or
     ( cdsGridDataDISTRIBUTED_SINGLE_PRICE.IsNull and
       cdsGridDataTOTAL_PRICE.IsNull
     ) then
    Exit;

  if cdsGridDataDISTRIBUTED_SINGLE_PRICE.IsNull then
    CalcDistributedSinglePrice
  else
    CalcTotalPrice;
end;

procedure TfmBudgetOrder.cdsGridDataTOTAL_PRICEChange(Sender: TField);
begin
  inherited;

  if FPriceChanging or
     cdsGridDataBEGIN_DATE.IsNull or
     cdsGridDataEND_DATE.IsNull or
     cdsGridDataDISTRIBUTION_DATE_UNIT_CODE.IsNull or
     cdsGridDataTOTAL_PRICE.IsNull then
    Exit;

  FPriceChanging:= True;
  try
    CalcDistributedSinglePrice;
  finally
    FPriceChanging:= False;
  end;  { try }
end;

procedure TfmBudgetOrder.cdsGridDataTOTAL_PRICEValidate(Sender: TField);
begin
  inherited;
  (Sender as TAbmesFloatField).CheckIsGreaterThan(0);
end;

procedure TfmBudgetOrder.cdsGridDataDISTRIBUTED_SINGLE_PRICEChange(
  Sender: TField);
begin
  inherited;

  if FPriceChanging or
     cdsGridDataBEGIN_DATE.IsNull or
     cdsGridDataEND_DATE.IsNull or
     cdsGridDataDISTRIBUTION_DATE_UNIT_CODE.IsNull or
     cdsGridDataDISTRIBUTED_SINGLE_PRICE.IsNull then
    Exit;

  FPriceChanging:= True;
  try
    CalcTotalPrice;
  finally
    FPriceChanging:= False;
  end;  { try }
end;

procedure TfmBudgetOrder.cdsGridDataBEGIN_DATEChange(Sender: TField);
begin
  inherited;
  CalcPrices;
end;

procedure TfmBudgetOrder.cdsGridDataEND_DATEChange(Sender: TField);
begin
  inherited;
  CalcPrices;
end;

procedure TfmBudgetOrder.cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    ( BudgetOrderItemTypeToBaseType(
        IntToBudgetOrderItemType(cdsGridDataBUDGET_ORDER_ITEM_TYPE_CODE.AsInteger)
      ) = FVisibleBudgetOrderItemBaseType
    ) and
    (btnShowAnnuledLines.Down or cdsGridDataANNUL_EMPLOYEE_CODE.IsNull);
end;

procedure TfmBudgetOrder.cdsGridDataDISTRIBUTION_DATE_UNIT_CODEChange(
  Sender: TField);
begin
  inherited;
  CalcPrices;
end;

procedure TfmBudgetOrder.actDocumentationExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, (Sender as TAction).ActionComponent as TControl, dotBudgetOrder, cdsData);
end;

class function TfmBudgetOrder.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmBudgetOrder.CheckBOIDateInterval;
var
  Period: TPeriod;
begin
  Period:= GetPeriodValue(cdsGridDataDISTRIBUTION_DATE_UNIT_CODE.AsInteger);

  if (cdsGridDataBEGIN_DATE.AsDateTime < cdsDataBEGIN_DATE.AsDateTime) or
     (cdsGridDataEND_DATE.AsDateTime > cdsDataEND_DATE.AsDateTime) then
    raise Exception.Create(SBudgetBorderItemIntervalNotCorrect);

  if ( (cdsGridDataBEGIN_DATE.AsDateTime <> GetPeriodFirstDate(cdsGridDataBEGIN_DATE.AsDateTime, Period)) or
       (cdsGridDataEND_DATE.AsDateTime <> GetPeriodLastDate(cdsGridDataEND_DATE.AsDateTime, Period)) ) and
     (cdsGridDataANNUL_EMPLOYEE_CODE.IsNull and cdsGridDataCLOSE_EMPLOYEE_CODE.IsNull) then
    raise Exception.Create(SBudgetBorderItemIntervalNotCorrect);
end;

procedure TfmBudgetOrder.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  CheckRequiredFields([
    cdsGridDataBUDGET_ORDER_ITEM_TYPE_CODE,
    cdsGridDataDISTRIBUTION_DATE_UNIT_CODE]);

  CheckBOIDateInterval;

  if cdsGridDataIS_CONFIRMED.AsBoolean or cdsGridDataIS_CANCELED.AsBoolean then
    CheckRequiredFields([cdsGridDataDECISION_APPROVE_EMPLOYEE_CODE, cdsGridDataDECISION_APPROVE_DATE]);

  if ( BudgetOrderItemTypeToBaseType(
         IntToBudgetOrderItemType(
           cdsGridDataBUDGET_ORDER_ITEM_TYPE_CODE.AsInteger)
       ) in [boibtIntroducing, boibtExploitation]
     ) and
     (cdsGridDataBOI_ORDER_TYPE_CODE.AsInteger <> boiotMarking) then
    begin
      raise Exception.Create(SBudgetProductMustBeMarking);
    end;  { if }

  if ( BudgetOrderItemTypeToBaseType(
         IntToBudgetOrderItemType(
           cdsGridDataBUDGET_ORDER_ITEM_TYPE_CODE.AsInteger)
       ) = boibtExpense
     ) and
     (cdsGridDataBOI_ORDER_TYPE_CODE.AsInteger = boiotMarking) then
    begin
      raise Exception.Create(SCannotChooseMarkingBudgetProductInExpenseBOI);
    end;  { if }
end;

procedure TfmBudgetOrder.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  CheckBudgetOrderItems(True, False);

  if (FBudgetMode = bmInvest) then
    begin
      if not cdsDataPRODUCT_CODE.IsNull then
        CheckRequiredField(cdsDataORG_TASK_PROPOSAL_STATE_CODE);

      if not cdsDataORG_TASK_PROPOSAL_STATE_CODE.IsNull then
        CheckRequiredField(cdsDataPRODUCT_CODE);
    end;
end;

procedure TfmBudgetOrder.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsGridData_BUDGET_MODE.AsInteger:= BudgetModeToInt(FBudgetMode);

  if cdsGridDataBEGIN_DATE.IsNull then
    cdsGridData_BUDGET_ORDER_ITEM_STATUS_CODE.Clear
  else
    cdsGridData_BUDGET_ORDER_ITEM_STATUS_CODE.AsInteger:=
      CalcBudgetOrderItemStatus(
        not cdsGridDataANNUL_EMPLOYEE_CODE.IsNull,
        not cdsGridDataCLOSE_EMPLOYEE_CODE.IsNull,
        cdsGridDataIS_CONFIRMED.AsBoolean,
        cdsGridDataIS_CANCELED.AsBoolean,
        cdsGridDataIS_FOR_RECONSIDERATION.AsBoolean,
        cdsGridDataBEGIN_DATE.AsDateTime,
        cdsGridDataEND_DATE.AsDateTime
      );

  if (cdsDataTOTAL_PRICE.AsFloat = 0) or
     (cdsGridDataTOTAL_PRICE.AsFloat = 0) then
    cdsGridData_BO_PRICE_PERCENT.Clear
  else
    cdsGridData_BO_PRICE_PERCENT.AsFloat:= cdsGridDataTOTAL_PRICE.AsFloat / cdsDataTOTAL_PRICE.AsFloat;

  if (ContextDate < cdsGridDataBEGIN_DATE.AsDateTime) then
    cdsGridData_DAYS_TO_START.AsFloat:= cdsGridDataBEGIN_DATE.AsDateTime - ContextDate
  else
    cdsGridData_DAYS_TO_START.Clear;

  cdsGridData_REMAINING_TOTAL_PRICE.AsVariant:=
    FloatToVar(
      VarToFloat(cdsGridDataTOTAL_PRICE.AsVariant) -
      VarToFloat(cdsGridDataBOIO_TOTAL_PRICE.AsVariant));

  if not cdsGridDataBEGIN_DATE.IsNull and
     not cdsGridDataEND_DATE.IsNull and
     (ContextDate <= cdsGridDataEND_DATE.AsDateTime) and
     (dmMain.CountWorkdays(cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime) > 0) then
    cdsGridData_REMAINING_TIME_PERCENT.AsFloat:=
      dmMain.CountWorkdays(Max(ContextDate, cdsGridDataBEGIN_DATE.AsDateTime), cdsGridDataEND_DATE.AsDateTime) /
      dmMain.CountWorkdays(cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime)
  else
    cdsGridData_REMAINING_TIME_PERCENT.Clear;

  cdsGridData_DEVIATION_PERCENT.AsVariant:=
    FloatToVar(
      VarToFloat(cdsGridDataREMAINING_TOTAL_PRICE_PERCENT.AsVariant) -
      VarToFloat(cdsGridData_REMAINING_TIME_PERCENT.AsVariant));

  cdsGridData_PRINT_SUM_TOTAL_PRICE.Assign(cdsTotalsSUM_TOTAL_PRICE);
  cdsGridData_PRINT_SUM_BO_PRICE_PERCENT.Assign(cdsTotalsSUM_BO_PRICE_PERCENT);
  cdsGridData_PRINT_TOTAL_PRICE_DEV_PERCENT.Assign(cdsTotals_TOTAL_PRICE_DEV_PERCENT);
end;

procedure TfmBudgetOrder.cdsGridData_DEVIATION_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsGridData_PRINT_SUM_BO_PRICE_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsGridData_PRINT_SUM_REM_TOTAL_PR_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsGridData_PRINT_SUM_TOTALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsGridData_PRINT_SUM_TOTAL_PRICEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsGridData_PRINT_TOTAL_PRICE_DEV_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if not cdsDataBEGIN_DATE.IsNull and
     not cdsDataEND_DATE.IsNull and
     (ContextDate <= cdsDataEND_DATE.AsDateTime) and
     (dmMain.CountWorkdays(cdsDataBEGIN_DATE.AsDateTime, cdsDataEND_DATE.AsDateTime) > 0) then
    cdsData_REMAINING_TIME_PERCENT.AsFloat:=
      dmMain.CountWorkdays(Max(ContextDate, cdsDataBEGIN_DATE.AsDateTime), cdsDataEND_DATE.AsDateTime) /
      dmMain.CountWorkdays(cdsDataBEGIN_DATE.AsDateTime, cdsDataEND_DATE.AsDateTime)
  else
    cdsData_REMAINING_TIME_PERCENT.Clear;

  cdsData_DEVIATION_PRICE.AsVariant:=
    FloatToVar(
      VarToFloat(cdsGridDataSUM_TOTAL_PRICE.AsVariant) -
      VarToFloat(cdsDataACCOUNT_TOTAL_PRICE.AsVariant));

  if VarIsNullOrEmpty(cdsGridDataSUM_TOTAL_PRICE.AsVariant) or
    (cdsGridDataSUM_TOTAL_PRICE.AsVariant = 0) then
    cdsData_REMAINING_TOTAL_PRICE_PERCENT.Clear
  else
    cdsData_REMAINING_TOTAL_PRICE_PERCENT.AsFloat:=
      (cdsGridDataSUM_TOTAL_PRICE.AsVariant - cdsDataACCOUNT_TOTAL_PRICE.AsFloat) / cdsGridDataSUM_TOTAL_PRICE.AsVariant;

  cdsData_EXPENSE_SPEED_PERCENT.AsVariant:=
    FloatToVar(
      VarToFloat(cdsData_REMAINING_TOTAL_PRICE_PERCENT.AsVariant) -
      VarToFloat(cdsData_REMAINING_TIME_PERCENT.AsVariant));

  if cdsDataBEGIN_DATE.IsNull then
    cdsData_BUDGET_ORDER_STATUS_CODE.Clear
  else
    cdsData_BUDGET_ORDER_STATUS_CODE.AsInteger:=
      CalcBudgetOrderStatus(
        not cdsDataANNUL_EMPLOYEE_CODE.IsNull,
        not cdsDataCLOSE_EMPLOYEE_CODE.IsNull,
        cdsDataBEGIN_DATE.AsDateTime,
        cdsDataEND_DATE.AsDateTime
      );
end;

procedure TfmBudgetOrder.DoApplyUpdates;
begin
  CheckRequiredFields([
    cdsDataBUDGET_ORDER_BRANCH_CODE,
    cdsDataGENERATOR_DEPT_CODE,
    cdsDataGENERATOR_EMPLOYEE_CODE,
    cdsDataDEVELOPER_DEPT_CODE,
    cdsDataBO_REGULARITY_TYPE_CODE,
    cdsDataDESCRIPTION,
    cdsDataBEGIN_DATE,
    cdsDataEND_DATE
  ]);

  inherited;
end;

function TfmBudgetOrder.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertRecordEnabled and
    not cdsDataBUDGET_ORDER_BRANCH_CODE.IsNull and
    not cdsDataGENERATOR_DEPT_CODE.IsNull and
    not cdsDataGENERATOR_EMPLOYEE_CODE.IsNull and
    not cdsDataDEVELOPER_DEPT_CODE.IsNull and
    not cdsDataBO_REGULARITY_TYPE_CODE.IsNull and
    (cdsDataDESCRIPTION.AsString <> '') and
    not cdsDataBEGIN_DATE.IsNull and
    not cdsDataEND_DATE.IsNull and
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

procedure TfmBudgetOrder.cdsGridData_BUDGET_ORDER_ITEM_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if cdsGridData_BUDGET_ORDER_ITEM_STATUS_CODE.IsNull then
    Text:= ''
  else
    Text:= GetBudgetOrderItemStatusText(cdsGridData_BUDGET_ORDER_ITEM_STATUS_CODE.AsInteger, sttAbbrevName);
end;

procedure TfmBudgetOrder.cdsData_BUDGET_ORDER_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if cdsData_BUDGET_ORDER_STATUS_CODE.IsNull then
    Text:= ''
  else
    Text:= GetBudgetOrderStatusText(cdsData_BUDGET_ORDER_STATUS_CODE.AsInteger, sttAbbrev);
end;

procedure TfmBudgetOrder.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmBudgetOrder.ForceCalcFieldsOncdsData;
var
  s: string;
  b: TBookmark;
begin
  if (cdsData.State in dsEditModes) then
    begin
      s:= cdsDataDESCRIPTION.AsString;
      try
        cdsDataDESCRIPTION.AsString:= 'blahblah'
      finally
        cdsDataDESCRIPTION.AsString:= s;
      end;  { try }
    end
  else
    begin
      b:= cdsData.Bookmark;
      try
        cdsData.First;
        cdsData.Last;
      finally
        cdsData.Bookmark:= b;
      end;  { try }
    end;
end;

function TfmBudgetOrder.GetGridRecordReadOnly: Boolean;
begin
  Result:= inherited GetGridRecordReadOnly or
    not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
    not cdsDataCLOSE_EMPLOYEE_CODE.IsNull;
end;

procedure TfmBudgetOrder.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if not cdsGridDataANNUL_EMPLOYEE_CODE.IsNull and not (gdSelected in State) then
    Background:= ccAnnuledObjectBackground;
end;

procedure TfmBudgetOrder.Initialize;
var
  BOICodeField: TField;
  BOIAnnulEmployeeCodeField: TField;
  BOITypeCodeField: TField;
  BudgetOrderItemBaseType: TBudgetOrderItemBaseType;
  IsAnnuled: Boolean;
begin
  inherited;
  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  BOICodeField:= OuterDataSet.FindField('BUDGET_ORDER_ITEM_CODE');
  BOIAnnulEmployeeCodeField:= OuterDataSet.FindField('ANNUL_EMPLOYEE_CODE');
  BOITypeCodeField:= OuterDataSet.FindField('BUDGET_ORDER_ITEM_TYPE_CODE');

  if AllAssigned([BOICodeField, BOIAnnulEmployeeCodeField, BOITypeCodeField]) and
     (OuterDataSet.RecordCount > 0) then
    begin
      BudgetOrderItemBaseType:=
        BudgetOrderItemTypeToBaseType(
          IntToBudgetOrderItemType(BOITypeCodeField.AsInteger));

      IsAnnuled:= not BOIAnnulEmployeeCodeField.IsNull;

      if IsAnnuled then
        begin
          btnShowAnnuledLines.Down:= True;
          cdsGridData.TempUnfilter/
            Utils.DoNothing;
        end;


      case BudgetOrderItemBaseType of
        boibtIntroducing:
          begin
            btnIntroducingItems.Down:= True;
            actIntroducingItems.Execute;  // prefiltrira
          end;

        boibtExpense:
          begin
            btnExpenseItems.Down:= True;
            actExpenseItems.Execute;  // prefiltrira
          end;

        boibtExploitation:
          begin
            btnExploitationItems.Down:= True;
            actExploitationitems.Execute;  // prefiltrira
          end;

      else
        raise Exception.Create('Unknown BudgetOrderItemBaseType');
      end;  { case }

      cdsGridData.Locate('BUDGET_ORDER_ITEM_CODE', BOICodeField.AsInteger, []);
    end;  { if }

  RecalculateTotals;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotBudgetOrder, dsData.DataSet);
end;

procedure TfmBudgetOrder.cdsBudgetOrderItemTypesFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    ( BudgetOrderItemTypeToBaseType(
       IntToBudgetOrderItemType(
         cdsBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_CODE.AsInteger)
      ) = FVisibleBudgetOrderItemBaseType
    );
end;

procedure TfmBudgetOrder.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ForceCalcFieldsOncdsData;
end;

procedure TfmBudgetOrder.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

function TfmBudgetOrder.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  if (AEditMode = emInsert) then
    SaveNextBudgetOrderItemCode;
  
  Result:= TfmBudgetOrderItem.ShowForm(dmDocClient, cdsGridData, AEditMode, doNone, actApplyUpdates, actReinitializeInEditMode, FBudgetMode);

  if Result then
    RefilterDetailDataSet;
end;

procedure TfmBudgetOrder.actReinitializeInEditModeExecute(Sender: TObject);
var
  b: TBookmark;
begin
  inherited;
  FCancelInsertMode:= True;
  b:= cdsGridData.Bookmark;
  Finalize;
  Initialize;
  cdsGridData.Bookmark:= b;
end;

procedure TfmBudgetOrder.btnShowAnnuledLinesClick(Sender: TObject);
begin
  inherited;
  RefilterDetailDataSet;
end;

procedure TfmBudgetOrder.ChangeEditMode(var AEditMode: TEditMode);
begin
  inherited;
  if (EditMode = emInsert) and FCancelInsertMode then
    AEditMode:= emEdit;
end;

procedure TfmBudgetOrder.actApplyUpdatesExecute(Sender: TObject);
var
  SaveFiltered: Boolean;
begin
  SaveFiltered:= cdsGridData.Filtered;
  cdsGridData.Filtered:= False;
  try
    inherited;
    SetParams(cdsData.Params, cdsData);

  finally
    cdsGridData.Filtered:= SaveFiltered;
  end;
end;

procedure TfmBudgetOrder.FormShow(Sender: TObject);
begin
  FMsgParams:= CreateCommonMsgParams(LoginContext, FBudgetMode);
  RecursivelyFormatCaptions(Self, FMsgParams);
  inherited;
end;

procedure TfmBudgetOrder.actCloseBudgetOrderExecute(Sender: TObject);
begin
  inherited;
  if (MessageDlgEx(SConfirmBudgetOrderClose, mtConfirmation, [mbYes,mbNo], 0) = mrYes) then
    begin
      CheckEditMode(cdsData);
      cdsDataCLOSE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
      cdsDataCLOSE_DATE.AsDateTime:= ContextDate;
      cdsDataCLOSE_TIME.AsDateTime:= ContextTime;
    end;
end;

procedure TfmBudgetOrder.actCloseBudgetOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and cdsDataCLOSE_EMPLOYEE_CODE.IsNull and cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

procedure TfmBudgetOrder.actAnnulBudgetOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

procedure TfmBudgetOrder.actAnnulBudgetOrderExecute(Sender: TObject);
begin
  inherited;
  
  if not cdsDataCAN_ANNUL.AsBoolean then
    raise Exception.Create(SCannotAnnulBudgetOrder);
    
  if (MessageDlgEx(SConfirmBudgetOrderAnnul, mtConfirmation, [mbYes,mbNo], 0) = mrYes) then
    begin
      CheckEditMode(cdsData);
      cdsDataANNUL_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
      cdsDataANNUL_DATE.AsDateTime:= ContextDate;
      cdsDataANNUL_TIME.AsDateTime:= ContextTime;
    end;
end;

procedure TfmBudgetOrder.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
     not cdsDataCLOSE_EMPLOYEE_CODE.IsNull then
    AFrame.ReadOnly:= True
  else
    inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmBudgetOrder.actEditRecordUpdate(Sender: TObject);
begin
  // do not call inherited
  (Sender as TAction).Enabled:= GetEditRecordEnabled;

  if GetGridRecordReadOnly then
    (Sender as TAction).Caption:= FormatMessage(SReadOnlyCaption, FMsgParams) + cDialogSuffix
  else
    (Sender as TAction).Caption:= FormatMessage(SEditCaption, FMsgParams) + cDialogSuffix;
end;

procedure TfmBudgetOrder.actExpenseItemsExecute(Sender: TObject);
begin
  inherited;
  FVisibleBudgetOrderItemBaseType:= boibtExpense;
  RefilterDataSet(cdsBudgetOrderItemTypes);
  RefilterDetailDataSet;
end;

procedure TfmBudgetOrder.actExpenseItemsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (FBudgetMode = bmInvest);
end;

procedure TfmBudgetOrder.actExploitationItemsExecute(Sender: TObject);
begin
  inherited;
  FVisibleBudgetOrderItemBaseType:= boibtExploitation;
  RefilterDataSet(cdsBudgetOrderItemTypes);
  RefilterDetailDataSet;
end;

procedure TfmBudgetOrder.actExploitationItemsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (FBudgetMode = bmInvest);
end;

procedure TfmBudgetOrder.cdsDataGENERATOR_DEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsDataGENERATOR_DEPT_CODE, cdsDataGENERATOR_DEPT_NAME, cdsDataGENERATOR_DEPT_IDENTIFIER);
end;

procedure TfmBudgetOrder.CheckBudgetOrderItems(
  PerformIntervalInRangeCheck,
  PerformItemDeptsAreDescendantsOfGeneratorDeptCheck: Boolean);

  procedure DoPerformIntervalInRangeCheck;
  begin
    if (cdsGridDataBEGIN_DATE.AsDateTime < cdsDataBEGIN_DATE.AsDateTime) or
       (cdsGridDataEND_DATE.AsDateTime > cdsDataEND_DATE.AsDateTime) then
      raise Exception.Create(SBudgetBorderItemIntervalNotCorrect);
  end;

  procedure DoPerformItemDeptsAreDescendantsOfGeneratorDeptCheck;
  var
    DeptRelation: Integer;
  begin
    DeptRelation:=
      dmMain.SvrDeptsTree.CheckDeptRelation(cdsGridDataDEPT_CODE.AsInteger, cdsDataGENERATOR_DEPT_CODE.AsInteger);

    if not cdsDataGENERATOR_DEPT_CODE.IsNull and
       not cdsGridDataDEPT_CODE.IsNull and
       (cdsDataGENERATOR_DEPT_CODE.AsInteger <> cdsGridDataDEPT_CODE.AsInteger) and

       ( ( (cdsGridDataBOI_DISTRIBUTION_TYPE_CODE.AsInteger in [boidtLocal, boidtDistributed]) and
           (DeptRelation <> 1) ) or
         ( (cdsGridDataBOI_DISTRIBUTION_TYPE_CODE.AsInteger = boidtCentralized) and
           ( (DeptRelation <> 1) or
             (cdsGridDataDEPT_CODE.AsInteger = cdsDataGENERATOR_DEPT_CODE.AsInteger) )
         )
       ) then
      raise Exception.Create(SItemDeptNotDescendantOfGeneratorDept);
  end;

begin
  inherited;

  Assert(
    PerformIntervalInRangeCheck or
    PerformItemDeptsAreDescendantsOfGeneratorDeptCheck);

  cdsGridData.First;
  cdsGridData.DisableControls;

  try
    while not cdsGridData.Eof do
      begin
        if PerformIntervalInRangeCheck then
          DoPerformIntervalInRangeCheck;

        if PerformItemDeptsAreDescendantsOfGeneratorDeptCheck then
          DoPerformItemDeptsAreDescendantsOfGeneratorDeptCheck;

        cdsGridData.Next;
      end;

  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

procedure TfmBudgetOrder.cdsGridDataBEGIN_DATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if cdsGridDataBEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsShortString(cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime);
end;

procedure TfmBudgetOrder.cdsDataREMAINING_TOTAL_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsDataTOTAL_PRICEValidate(Sender: TField);
begin
  inherited;
  (Sender as TAbmesFloatField).CheckIsGreaterThan(0);
end;

procedure TfmBudgetOrder.cdsGridData_REMAINING_TOTAL_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsTotalsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (cdsTotalsSUM_TOTAL_PRICE.AsFloat = 0) then
    cdsTotals_TOTAL_PRICE_DEV_PERCENT.Clear
  else
    cdsTotals_TOTAL_PRICE_DEV_PERCENT.AsFloat:=
      (cdsTotalsSUM_TOTAL_PRICE.AsFloat - cdsTotalsSUM_BOIO_TOTAL_PRICE.AsFloat) /
      cdsTotalsSUM_TOTAL_PRICE.AsFloat;
end;

procedure TfmBudgetOrder.cdsTotalsSUM_BO_PRICE_PERCENTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsTotalsSUM_REMAINING_TOTAL_PR_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsTotalsSUM_TOTAL_PRICEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsTotals_TOTAL_PRICE_DEV_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsGridDataHAS_ORDER_STATE_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= GetBudgetOrderItemHasOrderStateAbbrev(Sender.AsInteger);
end;

procedure TfmBudgetOrder.cdsGridDataIS_CANCELEDValidate(Sender: TField);
begin
  inherited;
  if cdsGridDataIS_CANCELED.AsBoolean then
    CheckBOIDateInterval;
end;

procedure TfmBudgetOrder.cdsGridDataIS_CONFIRMEDValidate(Sender: TField);
begin
  inherited;
  if cdsGridDataIS_CONFIRMED.AsBoolean then
    CheckBOIDateInterval;
end;

procedure TfmBudgetOrder.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; ABudgetMode: TBudgetMode);
const
  VisibleBudgetOrderItemBaseTypes: array[TBudgetMode] of TBudgetOrderItemBaseType =
    (boibtExpense, boibtIntroducing);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FBudgetMode:= ABudgetMode;
  FVisibleBudgetOrderItemBaseType:= VisibleBudgetOrderItemBaseTypes[FBudgetMode];
end;

class function TfmBudgetOrder.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; ABudgetMode: TBudgetMode): Boolean;
var
  f: TfmBudgetOrder;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled, ABudgetMode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

function TfmBudgetOrder.GetOriginalFormCaption: string;
begin
  Result:= lblFormCaption.Caption;
end;

procedure TfmBudgetOrder.cdsGridData_BO_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsData_EXPENSE_SPEED_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsGridDataREMAINING_TOTAL_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsGridDataREMAINING_WORKDAYS_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsGridDataBO_PRICE_PERCENTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsGridDataBUDGET_PRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  if FBudgetClassChanging then
    Exit;

  FBudgetClassChanging:= True;
  try
    DoProductFieldChanged(
      cdsGridDataBUDGET_PRODUCT_CODE, cdsGridDataBUDGET_PRODUCT_NAME, cdsGridDataBUDGET_PRODUCT_NO,
      nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
      cdsGridDataBOI_ORDER_TYPE_CODE);
  finally
    FBudgetClassChanging:= False;
  end;
end;

procedure TfmBudgetOrder.cdsGridDataDEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsGridDataDEPT_CODE, nil, cdsGridDataDEPT_IDENTIFIER);
end;

procedure TfmBudgetOrder.cdsGridDataBOI_ORDER_COUNTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsData_PLAN_TO_ACCOUNT_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsData_REMAINING_TIME_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsData_REMAINING_TOTAL_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsGridData_REMAINING_TIME_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.FormHide(Sender: TObject);
begin
  inherited;
  FreeAndNil(FMsgParams);
end;

procedure TfmBudgetOrder.actBudgetOrderItemDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotBudgetOrderItem,
    cdsGridDataDOC_BRANCH_CODE.AsInteger, cdsGridDataDOC_CODE.AsInteger
  );
end;

procedure TfmBudgetOrder.actBudgetOrderItemDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmBudgetOrder.actBudgetClassDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotProduct,
    cdsGridDataBC_DOC_BRANCH_CODE.AsInteger, cdsGridDataBC_DOC_CODE.AsInteger
  );
end;

procedure TfmBudgetOrder.actBudgetClassDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmBudgetOrder.cdsGridDataSUM_TOTAL_PRICEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsGridDataSUM_BO_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsGridDataSUM_REMAINING_TOTAL_PR_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudgetOrder.cdsDataDEVELOPER_DEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsDataDEVELOPER_DEPT_CODE, cdsDataDEVELOPER_DEPT_NAME, cdsDataDEVELOPER_DEPT_IDENTIFIER);
end;

procedure TfmBudgetOrder.cdsDataBEGIN_DATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if cdsDataBEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsShortString(cdsDataBEGIN_DATE.AsDateTime, cdsDataEND_DATE.AsDateTime);
end;

end.





