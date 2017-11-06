unit fStoreRequest;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient,
  Buttons, StdCtrls, ExtCtrls, Mask, JvDBLookup, JvToolEdit,
  fInnerButtonGridForm, uClientTypes, AbmesReport, DBGridEh, AbmesDBGrid,
  JvDBControls, DBCtrls, AbmesClientDataSet, GridsEh, ColorNavigator, AbmesFields,
  Menus, JvButtons, fBaseFrame, fDBFrame, fFieldEditFrame,
  DBCtrlsEh, ComCtrls, ToolWin, dDocClient,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDateIntervalFrame,
  fDateFieldEditFrame, fPartnerFieldEditFrame, fPartnerFieldEditFrameBald,
  JvExMask, JvExControls, JvComponent, JvCaptionButton,
  fDeptFieldEditFrameBald, JvComponentBase, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, uProducts, DBGridEhGrouping,
  Generics.Collections, fBaseForm, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions,
  DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TCompletedStores = class
  private
    FCompletedStores: TList<Integer>;
    FIncompletedStores: TList<Integer>;
    function GetCompleted(StoreCode: Integer): Boolean;
    procedure SetCompleted(StoreCode: Integer; const Value: Boolean);
    function GetHasCompleted: Boolean;
    function GetHasIncompleted: Boolean;
  public
    constructor Create;
    destructor Destroy; override;

    property Completed[StoreCode: Integer]: Boolean read GetCompleted write SetCompleted;
      default;
    property HasCompleted: Boolean read GetHasCompleted;
    property HasIncompleted: Boolean read GetHasIncompleted;
  end;

type
  [CanUseDocs]
  TfmStoreRequest = class(TInnerButtonGridForm)
    edtRequestNo: TDBEdit;
    bvlMain: TBevel;
    lblBranch: TLabel;
    lblRequestNo: TLabel;
    lblEmployee: TLabel;
    cdsDataSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsDataSTORE_REQUEST_CODE: TAbmesFloatField;
    cdsDataREQUEST_DEPT_CODE: TAbmesFloatField;
    cdsDataREQUEST_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataREQUEST_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataREQUEST_END_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataFINISH_DATE: TAbmesSQLTimeStampField;
    cdsDataFINISH_TIME: TAbmesSQLTimeStampField;
    cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsDataqryStoreRequestItems: TDataSetField;
    cdsGridDataSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSTORE_REQUEST_CODE: TAbmesFloatField;
    cdsGridDataSTORE_REQUEST_ITEM_CODE: TAbmesFloatField;
    cdsGridDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    cdsGridDataREQUEST_QUANTITY: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    gbTotals: TGroupBox;
    mdTotals: TAbmesClientDataSet;
    dsTotals: TDataSource;
    btnMultiEdit: TBitBtn;
    cdsDataREQUEST_DEPT_NAME: TAbmesWideStringField;
    cdsDataREQUEST_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsData_REQUEST_DEPT: TAbmesWideStringField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsEmployees: TAbmesClientDataSet;
    cdsEmployeesEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeesEMPLOYEE_NAME: TAbmesWideStringField;
    cdsData_REQUEST_EMPLOYEE_NAME: TAbmesWideStringField;
    actMultiEdit: TAction;
    cdsDataIN_OUT: TAbmesFloatField;
    cdsGridDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataSTORE_CODE: TAbmesFloatField;
    mdTotalsSTORE_CODE: TAbmesFloatField;
    mdTotalsPRODUCT_CODE: TAbmesFloatField;
    mdTotalsPRODUCT_NAME: TAbmesWideStringField;
    mdTotalsMEASURE_ABBREV: TAbmesWideStringField;
    mdTotalsSTORE_IDENTIFIER: TAbmesWideStringField;
    mdTotalsREQUEST_QUANTITY: TAbmesFloatField;
    mdTotalsCOMPLETED_QUANTITY: TAbmesFloatField;
    mdTotalsREQUEST_ITEMS_COUNT: TAbmesFloatField;
    pnlFinishStoreRequest: TPanel;
    btnFinishStoreRequest: TBitBtn;
    pnlAnnulStoreRequest: TPanel;
    btnAnnulStoreRequest: TBitBtn;
    actEditTotal: TAction;
    actFinishStoreRequest: TAction;
    actAnnulStoreRequest: TAction;
    cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsGridData_SHOW_PROCESS: TAbmesWideStringField;
    cdsAggregates: TAbmesClientDataSet;
    cdsAggregates_STORE_PRODUCT_QUANTITY: TAggregateField;
    cdsAggregates_STORE_PRODUCT_COUNT: TAggregateField;
    cdsAggregates_STORE_PRODUCT_COMPLETED_QUANTITY: TAggregateField;
    cdsAggregatesSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsAggregatesSTORE_REQUEST_CODE: TAbmesFloatField;
    cdsAggregatesSTORE_REQUEST_ITEM_CODE: TAbmesFloatField;
    cdsAggregatesPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    cdsAggregatesPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    cdsAggregatesREQUEST_QUANTITY: TAbmesFloatField;
    cdsAggregatesSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsAggregatesSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    cdsAggregatesBND_PROCESS_ABBREV: TAbmesWideStringField;
    cdsAggregatesPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsAggregatesBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsAggregatesBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsAggregatesPRODUCT_CODE: TAbmesFloatField;
    cdsAggregatesPRODUCT_NAME: TAbmesWideStringField;
    cdsAggregatesMEASURE_ABBREV: TAbmesWideStringField;
    cdsAggregatesSTORE_CODE: TAbmesFloatField;
    cdsAggregatesSTORE_IDENTIFIER: TAbmesWideStringField;
    cdsAggregates_HAS_STORE_DEAL: TAbmesFloatField;
    cdsAggregates_SHOW_PROCESS: TAbmesWideStringField;
    cdsGridData_MAX_STORE_REQUEST_ITEM_CODE: TAggregateField;
    cdsDataBND_PROCESS_OBJECT_CLASS_ABB: TAbmesWideStringField;
    cdsDataBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    edtBoundObject: TDBEdit;
    lblBoundObject: TLabel;
    cdsData_BND_OBJECT: TAbmesWideStringField;
    cdsGridDataOTHER_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataBND_PROCESS_CODE: TAbmesFloatField;
    cdsGridDataACCOUNT_COEF: TAbmesFloatField;
    cdsGridDataSINGLE_PRICE: TAbmesFloatField;
    pnlTotalsNavigator: TPanel;
    navTotals: TDBColorNavigator;
    pnlOtherEmployee: TPanel;
    lblOtherEmployee: TLabel;
    actPrintTotals: TAction;
    smrStoreDeals: TAbmesMatrixReport;
    smrStoreDealsRecordHeader: TAbmesMatrixReport;
    smrStoreDealsGroupHeader: TAbmesMatrixReport;
    smrStoreDealsGroupFooter: TAbmesMatrixReport;
    smrTotalsOut: TAbmesMatrixReport;
    smrTotalsRecordHeaderOut: TAbmesMatrixReport;
    smrTotalsGroupHeaderOut: TAbmesMatrixReport;
    smrTotalsGroupFooter: TAbmesMatrixReport;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    mdTotalsPRODUCT_NO: TAbmesFloatField;
    cdsGridDataCOMPLETED_QUANTITY: TAbmesFloatField;
    cdsAggregatesCOMPLETED_QUANTITY: TAbmesFloatField;
    cdsGridDataHAS_OLD_COMPLETED_QUANTITY: TAbmesFloatField;
    cdsGridData_HAS_COMPLETED_QUANTITY: TBooleanField;
    cdsGridDataANNULED_PSD: TAbmesFloatField;
    cdsGridData_INVALID_PSD: TBooleanField;
    cdsGridDataCLOSED_PSD: TAbmesFloatField;
    cdsGridData_PSD_STATUS: TAbmesWideStringField;
    cdsGridDataCURRENCY_CODE: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSTORE_DEAL_NO: TAbmesFloatField;
    cdsGridData_PRINT_BINDING: TAbmesWideStringField;
    cdsGridDataSTORE_DEAL_TOTAL_PRICE: TAbmesFloatField;
    cdsGridData_OTHER_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataSTORE_DEAL_STORE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridData_STORE_DEAL_STORE_EMPLOYEE_NAME: TAbmesWideStringField;
    smrStoreDealsGroupHeaderOutHeader: TAbmesMatrixReport;
    smrStoreDealsGroupHeaderInHeader: TAbmesMatrixReport;
    cdsGridDataSTORE_DEAL_IDENTIFIER: TAbmesWideStringField;
    cdsGridData_SHOW_STORE_DEAL_IDENTIFIER: TAbmesWideStringField;
    txtStoreDealIdentifier: TDBText;
    cdsTodaySecondaryCurrencyRates: TAbmesClientDataSet;
    cdsTodaySecondaryCurrencyRatesCURRENCY_CODE: TAbmesFloatField;
    cdsTodaySecondaryCurrencyRatesFIXING: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_STORNED: TAbmesFloatField;
    cdsGridData_SD_STATUS: TAbmesWideStringField;
    cdsData_STORE_REQUEST_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsData_STORE_REQUEST_BRANCH_NO: TAbmesFloatField;
    cbBranch: TJvDBLookupCombo;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsGridDataPSD_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPSD_END_DATE: TAbmesSQLTimeStampField;
    mdTotalsMAX_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsAggregatesPSD_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsAggregatesPSD_END_DATE: TAbmesSQLTimeStampField;
    cdsAggregates_MAX_BEGIN_DATE: TAggregateField;
    cdsData_REQUEST_BEGIN_DATE: TAbmesWideStringField;
    cdsData_REQUEST_END_DATE: TAbmesWideStringField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataSTORE_DEAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataSD_ML_MAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    mdTotalsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsAggregatesSTORE_DEAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsAggregatesACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    cdsGridDataCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsAggregatesCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsAggregates_STORE_PRODUCT_COMPLETED_ACCOUNT_QUANTITY: TAggregateField;
    mdTotalsCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataTOTAL_PRICE: TAbmesFloatField;
    cdsAggregates_TOTAL_PRICE: TAggregateField;
    mdTotalsTOTAL_PRICE: TAbmesFloatField;
    cdsAggregatesTOTAL_PRICE: TAbmesFloatField;
    pnlTotalsGrid: TPanel;
    grdTotals: TAbmesDBGrid;
    pnlInvoiceData: TPanel;
    cbCurrency: TJvDBLookupCombo;
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    dsCurrencies: TDataSource;
    lblCurrency: TLabel;
    cdsGridDataSTORE_DEAL_VENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_INVOICE_NO: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_INVOICE_ABBREV: TAbmesWideStringField;
    cdsGridDataSTORE_DEAL_INVOICE_DATE: TAbmesSQLTimeStampField;
    cdsAggregates_CURRENCY_CODE: TAggregateField;
    cdsAggregatesCURRENCY_CODE: TAbmesFloatField;
    mdTotalsCURRENCY_CODE: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_CURRENCY_ABBREV: TAbmesWideStringField;
    smrTotalsIn: TAbmesMatrixReport;
    smrTotalsRecordHeaderIn: TAbmesMatrixReport;
    smrTotalsGroupHeaderIn: TAbmesMatrixReport;
    smrTotalsGroupFooterIn: TAbmesMatrixReport;
    cdsGridDataSTORE_DEAL_BASE_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    mdTotalsACCOUNT_MEASURE_COEF: TAbmesFloatField;
    mdTotals_COMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataIS_BOUND_TO_DELIVERY: TAbmesFloatField;
    cdsGridDataSTORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataPSD_DEPT_CODE: TAbmesFloatField;
    cdsFillStoreRequestItemsOnNewRecord: TAbmesClientDataSet;
    cdsFillStoreRequestItemsOnNewRecordPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    cdsFillStoreRequestItemsOnNewRecordPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    cdsFillStoreRequestItemsOnNewRecordPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsFillStoreRequestItemsOnNewRecordBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsFillStoreRequestItemsOnNewRecordBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsFillStoreRequestItemsOnNewRecordSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsFillStoreRequestItemsOnNewRecordSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField;
    cdsFillStoreRequestItemsOnNewRecordPRODUCT_CODE: TAbmesFloatField;
    cdsFillStoreRequestItemsOnNewRecordPRODUCT_NAME: TAbmesWideStringField;
    cdsFillStoreRequestItemsOnNewRecordPRODUCT_NO: TAbmesFloatField;
    cdsFillStoreRequestItemsOnNewRecordMEASURE_ABBREV: TAbmesWideStringField;
    cdsFillStoreRequestItemsOnNewRecordACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsFillStoreRequestItemsOnNewRecordSTORE_CODE: TAbmesFloatField;
    cdsFillStoreRequestItemsOnNewRecordSTORE_IDENTIFIER: TAbmesWideStringField;
    cdsFillStoreRequestItemsOnNewRecordPSD_DEPT_CODE: TAbmesFloatField;
    cdsFillStoreRequestItemsOnNewRecordPLAN_QUANTITY: TAbmesFloatField;
    cdsFillStoreRequestItemsOnNewRecordOTHER_REQUESTED_QUANTITY: TAbmesFloatField;
    cdsFillStoreRequestItemsOnNewRecordREMAINING_QUANTITY: TAbmesFloatField;
    cdsFillStoreRequestItemsOnNewRecordREQUEST_QUANTITY: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_VENDOR_COMPANY_NAME: TAbmesWideStringField;
    frRequestDept: TfrDeptFieldEditFrameBald;
    lblRequestDept: TLabel;
    frRequestDateInterval: TfrDateIntervalFrame;
    lblRequestDateInterval: TLabel;
    mdTotals_REQUESTED_ACCOUNT_QUANTITY: TAbmesFloatField;
    tbSpeed: TToolBar;
    sbtnWorkMeasure: TSpeedButton;
    sbtnAccountMeasure: TSpeedButton;
    cdsGridDataPRIORITY_CODE: TAbmesFloatField;
    cdsGridDataPRIORITY_NO: TAbmesFloatField;
    cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridData_PRIORITY_COLOR: TAbmesFloatField;
    cdsGridData_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridDataBND_PROCESS_ABBREV: TAbmesWideStringField;
    cdsFillStoreRequestItemsOnNewRecordBND_PROCESS_ABBREV: TAbmesWideStringField;
    cdsFillStoreRequestItemsOnNewRecordPRIORITY_CODE: TAbmesFloatField;
    cdsFillStoreRequestItemsOnNewRecordPRIORITY_NO: TAbmesFloatField;
    cdsFillStoreRequestItemsOnNewRecordPRIORITY_FULL_NAME: TAbmesWideStringField;
    frRequestEmployee: TfrEmployeeFieldEditFrameBald;
    cdsData_REQUEST_EMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataOTHER_EMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_STORE_EMPLOYEE_NO: TAbmesFloatField;
    smrReportFooter: TAbmesMatrixReport;
    pnlInvoiceControls: TPanel;
    lblVendorName: TLabel;
    edtVendorName: TEdit;
    lblInvoiceNo: TLabel;
    edtInvoiceNo: TEdit;
    lblInvoiceDate: TLabel;
    edtInvoiceDate: TEdit;
    edtInvoiceAbbrev: TEdit;
    actPlannedStoreDeal: TAction;
    btnPlannedStoreDeal: TBitBtn;
    cdsGridDataIN_OUT: TAbmesFloatField;
    cdsAggregatesIN_OUT: TAbmesFloatField;
    cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField;
    mdTotalsIN_OUT: TAbmesFloatField;
    smrTotalsFin: TAbmesMatrixReport;
    smrTotalsRecordHeaderFin: TAbmesMatrixReport;
    smrTotalsGroupHeaderFin: TAbmesMatrixReport;
    cdsDataPARTNER_CODE: TAbmesFloatField;
    cdsDataPARTNER_ACCOUNT_CODE: TAbmesFloatField;
    pnlFinancial: TPanel;
    frPartner: TfrPartnerFieldEditFrame;
    gbPartnerAccount: TGroupBox;
    cdsPartnerAccounts: TAbmesClientDataSet;
    cdsPartnerAccountsACCOUNT_CODE: TAbmesFloatField;
    cdsPartnerAccountsACCOUNT_FULL_NAME: TAbmesWideStringField;
    cdsPartnerAccountsCURRENCY_PRODUCT_CODE: TAbmesFloatField;
    cbPartnerAccount: TJvDBLookupCombo;
    dsPartnerAccounts: TDataSource;
    cdsDataUNFINISHED_OTHER_SRI_COUNT: TAbmesFloatField;
    pnlBottomButtonsClient: TPanel;
    pnlFinishStoreRequestInfo: TPanel;
    chbFinished: TCheckBox;
    pnlAnnulStoreRequestInfo: TPanel;
    chbAnnuled: TCheckBox;
    pnlReloadCheckBox: TPanel;
    chkReload: TCheckBox;
    mdTotals_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridDataBND_PO_PROD_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataBND_BOIO_BO_PROD_CUSTOM_CODE: TAbmesFloatField;
    cdsGridDataBND_BOIO_BO_PRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataROOT_SALE_PRODUCT_IF_FOR_PROJ: TAbmesWideStringField;
    cdsGridDataBND_BOIO_CONSUMER_DEPT_ID: TAbmesWideStringField;
    frOtherEmployee: TfrEmployeeFieldEditFrameBald;
    cdsStoreDealData: TAbmesClientDataSet;
    cdsStoreDealDataOTHER_EMPLOYEE_CODE: TAbmesFloatField;
    pnlTop: TPanel;
    pnlClient: TPanel;
    gbMain: TGroupBox;
    sptClient: TSplitter;
    pnlTotals: TPanel;
    cdsAggregatesSINGLE_PRICE: TAbmesFloatField;
    cdsAggregates_MAX_SINGLE_PRICE: TAggregateField;
    mdTotalsSINGLE_PRICE: TAbmesFloatField;
    cdsAggregatesBND_PROCESS_CODE: TAbmesFloatField;
    cdsAggregates_MIN_BND_PROCESS_CODE: TAggregateField;
    cdsAggregates_MAX_BND_PROCESS_CODE: TAggregateField;
    mdTotalsBND_PROCESS_CODE: TAbmesFloatField;
    cdsTodayCurrencyRates: TAbmesClientDataSet;
    cdsGridDataIS_PSD_BOUND_TO_MODEL: TAbmesFloatField;
    cdsAggregatesIS_PSD_BOUND_TO_MODEL: TAbmesFloatField;
    cdsAggregates_MIN_IS_PSD_BOUND_TO_MODEL: TAggregateField;
    cdsAggregates_MAX_IS_PSD_BOUND_TO_MODEL: TAggregateField;
    mdTotalsIS_PSD_BOUND_TO_MODEL: TAbmesFloatField;
    pnlSetAllCompletedQuantityButton: TPanel;
    actSetAllCompletedQuantity: TAction;
    btnSetAllCompletedQuantity: TSpeedButton;
    cdsDataBND_PROCESS_OBJECT_CLASS_CODE: TAbmesFloatField;
    pnlStoreDealDate: TPanel;
    frStoreDealDate: TfrDateFieldEditFrame;
    lblStoreDealDate: TLabel;
    cdsStoreDealDataSTORE_DEAL_DATE: TAbmesDateTimeField;
    cdsGridDataPSD_QUANTITY: TAbmesFloatField;
    cdsGridDataPSD_REMAINING_QUANTITY: TAbmesFloatField;
    mdTotals_MIN_ACCOUNT_MEASURE_COEF: TAggregateField;
    mdTotals_MAX_ACCOUNT_MEASURE_COEF: TAggregateField;
    mdTotals_MIN_BND_PROCESS_CODE: TAggregateField;
    mdTotals_MAX_BND_PROCESS_CODE: TAggregateField;
    mdTotals_MAX_TOTAL_PRICE: TAggregateField;
    cdsAggregates_MIN_SINGLE_PRICE: TAggregateField;
    tlbDeliveryDoc: TToolBar;
    sepDeliveryDoc: TToolButton;
    lblDeliveryDoc: TLabel;
    btnDeliveryDoc: TToolButton;
    actDeliveryDoc: TAction;
    cdsGridDataDELIVERY_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDELIVERY_DOC_CODE: TAbmesFloatField;
    cdsGridDataDELIVERY_HAS_DOC_ITEMS: TAbmesFloatField;
    actExcelExportTotals: TAction;
    tlbTotals: TToolBar;
    sepExcelExportTotals: TToolButton;
    btnExcelExportTotals: TToolButton;
    btnPrintTotals: TToolButton;
    mdTotals_IDENTIFIER: TAbmesWideStringField;
    procedure cdsDataREQUEST_DEPT_CODEChange(Sender: TField);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsDataREQUEST_BEGIN_DATEChange(Sender: TField);
    procedure cdsDataREQUEST_END_DATEChange(Sender: TField);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure actMultiEditUpdate(Sender: TObject);
    procedure actMultiEditExecute(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure navTotalsBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure grdTotalsDblClick(Sender: TObject);
    procedure actEditTotalUpdate(Sender: TObject);
    procedure actEditTotalExecute(Sender: TObject);
    procedure actFinishStoreRequestExecute(Sender: TObject);
    procedure actAnnulStoreRequestExecute(Sender: TObject);
    procedure actAnnulStoreRequestUpdate(Sender: TObject);
    procedure mdTotalsBeforePost(DataSet: TDataSet);
    procedure mdTotalsAfterPost(DataSet: TDataSet);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure actFinishStoreRequestUpdate(Sender: TObject);
    procedure actPrintTotalsUpdate(Sender: TObject);
    procedure actPrintTotalsExecute(Sender: TObject);
    procedure smrTotalsGroupHeaderOutAfterPrint(Sender: TObject);
    procedure smrTotalsRecordHeaderOutBeforePrint(Sender: TObject;
      var ToPrint: Boolean);
    procedure smrTotalsOutAfterPrintRecord(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure smrStoreDealsGroupHeaderGetFieldValues(Sender: TObject;
      FieldValues: TReportFieldValues);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure smrStoreDealsGroupHeaderAfterPrint(Sender: TObject);
    procedure smrStoreDealsAfterPrintRecord(Sender: TObject);
    procedure smrStoreDealsRecordHeaderBeforePrint(Sender: TObject;
      var ToPrint: Boolean);
    procedure smrStoreDealsGroupFooterGetFieldValues(Sender: TObject;
      FieldValues: TReportFieldValues);
    procedure FormShow(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdTotalsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsDataBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDataREQUEST_EMPLOYEE_CODEChange(Sender: TField);
    procedure cdsDataSTORE_REQUEST_BRANCH_CODEChange(Sender: TField);
    procedure cdsGridDataCOMPLETED_QUANTITYChange(Sender: TField);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure mdTotalsCalcFields(DataSet: TDataSet);
    procedure cdsGridDataSTORE_CODEChange(Sender: TField);
    procedure cdsGridDataSTORE_DEAL_VENDOR_COMPANY_CODEChange(
      Sender: TField);
    procedure actPrintExecute(Sender: TObject);
    procedure actPrintUpdate(Sender: TObject);
    procedure SetupVisibleTotalsColumns(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure actPlannedStoreDealUpdate(Sender: TObject);
    procedure actPlannedStoreDealExecute(Sender: TObject);
    procedure cdsGridDataIN_OUTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure mdTotalsIN_OUTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure grdTotalsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure smrTotalsGroupHeaderGetFieldValues(Sender: TObject;
      FieldValues: TReportFieldValues);
    procedure cdsPartnerAccountsBeforeOpen(DataSet: TDataSet);
    procedure cdsDataPARTNER_CODEChange(Sender: TField);
    procedure mdTotals_CURRENCY_ABBREVGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cbCurrencyChange(Sender: TObject);
    procedure cdsTodayCurrencyRatesBeforeOpen(DataSet: TDataSet);
    procedure mdTotalsCOMPLETED_ACCOUNT_QUANTITYChange(Sender: TField);
    procedure actSetAllCompletedQuantityUpdate(Sender: TObject);
    procedure actSetAllCompletedQuantityExecute(Sender: TObject);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
    procedure actDeliveryDocExecute(Sender: TObject);
    procedure actDeliveryDocUpdate(Sender: TObject);
    procedure actExcelExportTotalsUpdate(Sender: TObject);
    procedure actExcelExportTotalsExecute(Sender: TObject);
    procedure smrTotalsGroupFooterGetFieldValues(Sender: TObject; FieldValues: TReportFieldValues);
  private
    FProductClass: TProductClass;
    FInOut: Integer;
    FStoreCode: Integer;
    FSynchronizingDates: Boolean;
    FCalculating: Boolean;
    FCompletedStores: TCompletedStores;
    FBranchesCDS: TCustomClientDataSet;
    FEmployeesCDS: TCustomClientDataSet;
    FStoreRequestNewValuesCDS: TCustomClientDataSet;
    FStoreRequestItemsFilterCDS: TCustomClientDataSet;
    FGroupRecords: Integer;
    FHasInvalidPSDs: Boolean;
    FCanAnnul: Boolean;
    FBaseTotalPrice: Real;
    FStartStoreRequestItemCount: Integer;
    FHasBoundToDelivery: Boolean;
    FOriginalFormCaption: string;
    procedure CalcTotals;
    function CurrentGridDataKey: Variant;
    procedure CalcCompletedStoresAndCanAnnul;
    function FinishedOrAnnuled: Boolean;
    procedure CheckAllTotals;
    procedure MarkItems;
    procedure PrintTotals;
    procedure CalcInvalidPSDs;
    procedure UpdateTotalsDefaultTotalPrices;
    function TodayCurrencyRate(ACurrencyCode: Integer): Real;
    procedure SetDefaultTotalPrice;
    procedure SetAllCompletedQuantityButton;
    procedure CheckRequiredCurrency;
    function CompleteAllEnabled: Boolean;
    procedure SetTotalTotalPrice(CurrencyCode: Variant);
  protected
    function GetInsertRecordEnabled: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoApplyUpdates; override;
    function GetFormCaption: string; override;
    function GetOriginalFormCaption: string; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function GetRecordReadOnly: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetGridRecordReadOnly: Boolean; override;
    function GetPrintButtonOnToolbarEnabled: Boolean; override;
    procedure FinishStoreRequest;

    property CompletedStores: TCompletedStores read FCompletedStores;
    property HasInvalidPSDs: Boolean read FHasInvalidPSDs;
    property HasBoundToDelivery: Boolean read FHasBoundToDelivery;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AInOut: Integer = 0;
      AStoreCode: Integer = 0;
      ABranchesCDS: TCustomClientDataSet = nil;
      AEmployeesCDS: TCustomClientDataSet = nil;
      AStoreRequestNewValuesCDS: TCustomClientDataSet = nil;
      AStoreRequestItemsFilterCDS: TCustomClientDataSet = nil;
      AProductClass: TProductClass = pcNormal); reintroduce; virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AInOut: Integer = 0;
      AStoreCode: Integer = 0;
      ABranchesCDS: TCustomClientDataSet = nil;
      AEmployeesCDS: TCustomClientDataSet = nil;
      AStoreRequestNewValuesCDS: TCustomClientDataSet = nil;
      AStoreRequestItemsFilterCDS: TCustomClientDataSet = nil;
      AProductClass: TProductClass = pcNormal): Boolean;
    class procedure Print(ADataSet: TDataSet);
    procedure Initialize; override;

    property InOut: Integer read FInOut;
    property StoreCode: Integer read FStoreCode;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

type
  TfmStoreRequestClass = class of TfmStoreRequest;

resourcestring
  SIns = 'Постъпления';
  SOuts = 'Тегления';
  SMovement = 'Движение';
  SAnd = 'и';
  SMovements = 'Движения';

implementation

uses
  Variants, dMain, uClientUtils, uUtils, uTreeClientUtils, AbmesDialogs,
  fStoreRequestMultiEdit, fStoreRequestItemEdit, fStoreRequestTotal,
  uDealTypes, uProcesses, uUserActivityConsts, fDataForm, uCompanyKinds,
  uCompanyClientUtils, fEditForm, fPlannedStoreDealIn, fPlannedStoreDealOut,
  fStoreDealOutProcessObject, fStoreDealInProcessObject, uProductClientUtils,
  Math, uColorConsts, uClientDateTime, StrUtils, uDocUtils, uToolbarUtils,
  uExcelExport, uClientAppResources;

{$R *.DFM}

resourcestring
  SNoItemsEntered = 'Не сте въвели редове на Зявката';
  SInvalidStoreRequestPeriod = 'Некоректна стойност на ВрмИнт на валидност';
  SRealizeCaption = 'Отчитане';
  SNewNo = 'Груповата Заявка е записана под номер %d';
  SNKProcessAbbrev = 'НКЗ';
  SRequestedQuantityExceedsCompleted = 'Заявеното количество надвишава отчетеното';
  SCompletedQuantityExceedsRequested = 'Отчетеното количество надвишава заявеното';
  STotalNotCompleted = 'Не сте въвели отчетно количество';
  SNotEntered = 'Не сте въвели %s';
  STOL = 'ТОЛ';
  SPOL = 'ПОЛ';
  SAnnuledAbbrev = 'Ан    - Анулирано';
  SClosedAbbrev = 'Пк    - Приключено';
  SStornedAbbrev = 'Ан';
  SStoreDealID = 'Движение: %s';
  SCantEditTotalWhenPeriodIsInvalid =
    'Не можете да отчитате, тъй като ВрмИнт на валидност не включва днешната дата';
  SNotFutureStoreRequestPeriod = 'ВрмИнт на валидност не трябва да е преди днес';
  SInvalidRequestEmployeeCode = 'Некоректен код на Служител, поискал заявката';
  SCantCompleteToday = 'По този ред не можете да отчитате днес,' + SLineBreak +
                       'тъй като не е настъпила позволената дата на отчитане (%s)';
  SCaptionPlanPrefix = 'Пл.';
  SFinishNeeded =
    'Отчетени са всички движения по Груповата Заявка и тя трябва да бъде приключена!' + SLineBreak +
    'Потвърждавате ли приключване?';
  SCurrencyRequired = 'Не сте посочили валута';
  SFutureDateNotAllowed = 'Не можете да отчитате за бъдеща дата';

const
  StoreProductIndexName = 'idxStoreProduct';
  TotalsKey = 'STORE_CODE; PRODUCT_CODE';

  FloatCorrectEpsilon = 0.0001;

  InOutCaptions: array[-1..1] of string = (SStoreDealOut, SMovement, SStoreDealIn);

{ TCompletedStores }

constructor TCompletedStores.Create;
begin
  inherited Create;

  FCompletedStores:= TList<Integer>.Create;
  FIncompletedStores:= TList<Integer>.Create;
end;

destructor TCompletedStores.Destroy;
begin
  FreeAndNil(FIncompletedStores);
  FreeAndNil(FCompletedStores);

  inherited Destroy;
end;

function TCompletedStores.GetCompleted(StoreCode: Integer): Boolean;
begin
  Result:=
    (FCompletedStores.IndexOf(StoreCode) >= 0);
end;

function TCompletedStores.GetHasCompleted: Boolean;
begin
  Result:= (FCompletedStores.Count > 0);
end;

function TCompletedStores.GetHasIncompleted: Boolean;
begin
  Result:= (FIncompletedStores.Count > 0);
end;

procedure TCompletedStores.SetCompleted(StoreCode: Integer;
  const Value: Boolean);
var
  CompletedIndex: Integer;
  IncompletedIndex: Integer;
begin
  CompletedIndex:= FCompletedStores.IndexOf(StoreCode);
  IncompletedIndex:= FIncompletedStores.IndexOf(StoreCode);

  if Value then
    begin
      if (CompletedIndex < 0) then
        FCompletedStores.Add(StoreCode);
      if (IncompletedIndex >= 0) then
        FIncompletedStores.Delete(IncompletedIndex);
    end
  else   { if }
    begin
      if (IncompletedIndex < 0) then
        FIncompletedStores.Add(StoreCode);
      if (CompletedIndex >= 0) then
        FCompletedStores.Delete(CompletedIndex);
    end;   { if }
end;

{ TfmStoreRequest }

class function TfmStoreRequest.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

function TfmStoreRequest.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

function TfmStoreRequest.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmStoreRequest.cdsDataREQUEST_DEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsDataREQUEST_DEPT_CODE,
    cdsDataREQUEST_DEPT_NAME, cdsDataREQUEST_DEPT_IDENTIFIER);
end;

procedure TfmStoreRequest.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsDataREQUEST_DEPT_CODE.IsNull then
    cdsData_REQUEST_DEPT.Clear
  else
    cdsData_REQUEST_DEPT.AsString:= Format('%s - %s', [
      cdsDataREQUEST_DEPT_IDENTIFIER.AsString,
      cdsDataREQUEST_DEPT_NAME.AsString]);

  if cdsDataBND_PROCESS_OBJECT_IDENTIFIER.IsNull then
    cdsData_BND_OBJECT.Clear
  else
    cdsData_BND_OBJECT.AsString:= Format('%s: %s', [
      cdsDataBND_PROCESS_OBJECT_CLASS_ABB.AsString,
      cdsDataBND_PROCESS_OBJECT_IDENTIFIER.AsString]);

  cdsData_REQUEST_BEGIN_DATE.AsString:=
    LoginContext.DateToStr(cdsDataREQUEST_BEGIN_DATE.AsDateTime);
  cdsData_REQUEST_END_DATE.AsString:=
    LoginContext.DateToStr(cdsDataREQUEST_END_DATE.AsDateTime);
end;

procedure TfmStoreRequest.OpenDataSets;
begin
  cdsStoreDealData.CreateDataSet;

  cdsPriorities.Open;
  CloneOrOpen(cdsBranches, FBranchesCDS);
  CloneOrOpen(cdsEmployees, FEmployeesCDS);
  cdsTodaySecondaryCurrencyRates.Open;
  cdsCurrencies.Open;
  cdsTodayCurrencyRates.Open;

  inherited;

  cdsPartnerAccounts.Open;

  CalcCompletedStoresAndCanAnnul;
end;

procedure TfmStoreRequest.CloseDataSets;
begin
  inherited;

  cdsTodayCurrencyRates.Close;
  cdsCurrencies.Close;
  cdsTodaySecondaryCurrencyRates.Close;
  cdsEmployees.Close;
  cdsBranches.Close;
  cdsPriorities.Close;
  cdsPartnerAccounts.Close;

  cdsStoreDealData.Close;
end;

procedure TfmStoreRequest.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AInOut: Integer;
  AStoreCode: Integer; ABranchesCDS, AEmployeesCDS: TCustomClientDataSet;
  AStoreRequestNewValuesCDS: TCustomClientDataSet;
  AStoreRequestItemsFilterCDS: TCustomClientDataSet;
  AProductClass: TProductClass);
begin
  Assert(
    ( (AProductClass <> pcFinancial) and
      ( (AEditMode <> emInsert) or (AInOut <> 0) )
    ) or
    ( (AProductClass = pcFinancial) and
      (AInOut = 0)
    )
  );

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);

  FInOut:= AInOut;
  FStoreCode:= AStoreCode;
  FBranchesCDS:= ABranchesCDS;
  FEmployeesCDS:= AEmployeesCDS;
  FStoreRequestNewValuesCDS:= AStoreRequestNewValuesCDS;
  FStoreRequestItemsFilterCDS:= AStoreRequestItemsFilterCDS;
  FProductClass:= AProductClass;
end;

class function TfmStoreRequest.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AInOut: Integer;
  AStoreCode: Integer; ABranchesCDS, AEmployeesCDS: TCustomClientDataSet;
  AStoreRequestNewValuesCDS: TCustomClientDataSet;
  AStoreRequestItemsFilterCDS: TCustomClientDataSet;
  AProductClass: TProductClass): Boolean;
var
  f: TfmStoreRequest;
  ShowAgain: Boolean;
  ResultSet: Boolean;
begin
  Result:= False;
  ShowAgain:= True;
  ResultSet:= False;
  while ShowAgain do
    begin
      f:= CreateEx;
      try
        f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AInOut, AStoreCode,
          ABranchesCDS, AEmployeesCDS, AStoreRequestNewValuesCDS, AStoreRequestItemsFilterCDS,
          AProductClass);
        f.InternalShowForm;

        if not ResultSet then
          begin
            Result:= f.IsDataModified;
            ResultSet:= True;
          end;

        ShowAgain:=
          f.IsDataModified and
          f.chkReload.Checked and
          (f.StoreCode > 0) and
          (not f.CompletedStores.Completed[f.StoreCode]);
      finally
        f.ReleaseForm;
      end;
    end;
end;

procedure TfmStoreRequest.cdsDataNewRecord(DataSet: TDataSet);

  procedure FillStoreRequestItems;
  begin
    while not cdsFillStoreRequestItemsOnNewRecord.Eof do
      begin
        if (cdsFillStoreRequestItemsOnNewRecordREMAINING_QUANTITY.AsFloat > 0) then
          begin
            cdsGridData.Append;
            try
              AssignFields(cdsFillStoreRequestItemsOnNewRecord, cdsGridData);
              cdsGridDataPSD_BEGIN_DATE.Assign(
                cdsFillStoreRequestItemsOnNewRecordSTORE_DEAL_BEGIN_DATE);
              cdsGridDataPSD_END_DATE.Assign(
                cdsFillStoreRequestItemsOnNewRecordSTORE_DEAL_END_DATE);
              cdsGridDataREQUEST_QUANTITY.Assign(
                cdsFillStoreRequestItemsOnNewRecordREMAINING_QUANTITY);
              cdsGridData.Post;
            except
              cdsGridData.Cancel;
              raise;
            end;  { try }
          end;

        cdsFillStoreRequestItemsOnNewRecord.Next;
      end;
  end;

var
  SaveCursor: TCursor;

begin
  inherited;

  cdsDataIN_OUT.Value:= InOut;
  cdsDataPRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);

  if (FStoreRequestNewValuesCDS <> nil) then
    AssignFields(FStoreRequestNewValuesCDS, cdsData);

  if (FStoreRequestItemsFilterCDS <> nil) then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        SetParams(cdsFillStoreRequestItemsOnNewRecord.Params, FStoreRequestItemsFilterCDS);
        cdsFillStoreRequestItemsOnNewRecord.Open;
      finally
        Screen.Cursor:= SaveCursor;
      end;  { try }

      try
        FillStoreRequestItems;
      finally
        cdsFillStoreRequestItemsOnNewRecord.Close;
      end;  { try }
    end;
end;

procedure TfmStoreRequest.cdsDataPARTNER_CODEChange(Sender: TField);
var
  SaveCursor: TCursor;
begin
  inherited;
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    cdsDataPARTNER_ACCOUNT_CODE.Clear;
    
    cdsPartnerAccounts.Close;
    cdsPartnerAccounts.Open;
  finally
    Screen.Cursor:= SaveCursor;
  end;  { try }
end;

procedure TfmStoreRequest.cbCurrencyChange(Sender: TObject);
begin
  inherited;
  if (EditMode <> emReadOnly) then
    UpdateTotalsDefaultTotalPrices;
end;

procedure TfmStoreRequest.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if (EditMode <> emInsert) then
    FInOut:= cdsDataIN_OUT.AsInteger;
end;

procedure TfmStoreRequest.DoApplyUpdates;
var
  OldNo: Integer;
  b: TBookmark;
  SavePoint: Integer;
  StoreDealDate: Variant;
begin
  with cdsGridData do
    if (BOF and EOF) and
       ((EditMode = emInsert) or (FStartStoreRequestItemCount > 0)) then
      begin
        ActiveControl:= btnMultiEdit;
        raise Exception.Create(SNoItemsEntered);
      end;

  SavePoint:= cdsData.SavePoint;
  try
    if (StoreCode > 0) and
       cdsDataFINISH_EMPLOYEE_CODE.IsNull and
       (cdsDataUNFINISHED_OTHER_SRI_COUNT.AsInteger = 0) then
      begin
        if (MessageDlgEx(SFinishNeeded, mtConfirmation, mbOkCancel, 0) <> mrOk) then
          Abort;

        FinishStoreRequest;
      end;

    OldNo:= cdsDataSTORE_REQUEST_CODE.AsInteger;

    FCalculating:= True;
    try
      with cdsGridData do
        begin
          DisableControls;
          try
            b:= Bookmark;
            try
              if (StoreCode > 0) then
                begin
                  StoreDealDate:= cdsStoreDealDataSTORE_DEAL_DATE.AsVariant;
                  if VarIsNullOrEmpty(StoreDealDate) then
                    StoreDealDate:= ContextDate;

                  cdsData.SetOptionalParam('OTHER_EMPLOYEE_CODE', cdsStoreDealDataOTHER_EMPLOYEE_CODE.AsVariant, True);
                  cdsData.SetOptionalParam('STORE_DEAL_DATE', StoreDealDate, True);
                end;

              inherited;
            finally
              Bookmark:= b;
            end;   { try }
          finally
            EnableControls;
          end;   { try }
        end;   { with }
    finally
      FCalculating:= False;
    end;   { try }
  except
    cdsData.SavePoint:= SavePoint;
    raise;
  end;

  if (cdsDataSTORE_REQUEST_CODE.AsInteger <> OldNo) then
    ShowMessageFmtEx(SNewNo, [cdsDataSTORE_REQUEST_CODE.AsInteger]);
end;

procedure TfmStoreRequest.cdsDataREQUEST_BEGIN_DATEChange(Sender: TField);
begin
  inherited;

  if FSynchronizingDates then Exit;

  FSynchronizingDates:= True;
  try
    SyncFields(Sender, cdsDataREQUEST_END_DATE);
  finally
    FSynchronizingDates:= False;
  end;   { try }
end;

procedure TfmStoreRequest.cdsDataREQUEST_END_DATEChange(Sender: TField);
begin
  inherited;

  if FSynchronizingDates then Exit;

  FSynchronizingDates:= True;
  try
    SyncFields(Sender, cdsDataREQUEST_BEGIN_DATE);
  finally
    FSynchronizingDates:= False;
  end;   { try }
end;

procedure TfmStoreRequest.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  CheckRequiredFields(cdsData,
    '_STORE_REQUEST_BRANCH_IDENTIFIER; REQUEST_DEPT_NAME; ' +
    '_REQUEST_EMPLOYEE_NAME; REQUEST_BEGIN_DATE; REQUEST_END_DATE');

  if (cdsDataREQUEST_BEGIN_DATE.IsNull <> cdsDataREQUEST_END_DATE.IsNull) or
     (cdsDataREQUEST_BEGIN_DATE.AsDateTime > cdsDataREQUEST_END_DATE.AsDateTime) then
    begin
      cdsDataREQUEST_BEGIN_DATE.FocusControl;
      raise Exception.Create(SInvalidStoreRequestPeriod);
    end;

  if (EditMode = emInsert) and
     (cdsDataREQUEST_END_DATE.AsDateTime < ContextDate) then
    begin
      cdsDataREQUEST_END_DATE.FocusControl;
      raise Exception.Create(SNotFutureStoreRequestPeriod);
    end;   { if }

  if (FProductClass = pcFinancial) then
    CheckRequiredFields(cdsData, 'PARTNER_CODE; PARTNER_ACCOUNT_CODE');

  cdsDataCHANGE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataCHANGE_TIME.AsDateTime:= ContextNow;
end;

procedure TfmStoreRequest.navDataBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbInsert) then
    begin
      actMultiEdit.Execute;
      Abort;
    end;   { if }

  inherited;
end;

procedure TfmStoreRequest.actMultiEditUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (StoreCode = 0) and
    not FinishedOrAnnuled;
end;

procedure TfmStoreRequest.actMultiEditExecute(Sender: TObject);
var
  StoreRequestBranchCode: Integer;
  StoreRequestCode: Integer;
begin
  inherited;

  with cdsData do
    if (State in dsEditModes) then Post;

  if (EditMode = emInsert) then
    begin
      StoreRequestBranchCode:= 0;
      StoreRequestCode:= 0;
    end
  else   { if }
    begin
      StoreRequestBranchCode:= cdsDataSTORE_REQUEST_BRANCH_CODE.AsInteger;
      StoreRequestCode:= cdsDataSTORE_REQUEST_CODE.AsInteger;
    end;   { if }

  if TfmStoreRequestMultiEdit.ShowForm(dmDocClient, cdsGridData, emEdit,
       InOut, StoreRequestBranchCode, StoreRequestCode,
       cdsBranches, CompletedStores, cdsDataREQUEST_DEPT_CODE.AsInteger, FProductClass,
       cdsDataPARTNER_CODE.AsVariant, cdsDataPARTNER_ACCOUNT_CODE.AsVariant) then
    CalcTotals;
end;

function TfmStoreRequest.GetFormCaption: string;
var
  s1, s2: string;
begin
  if (FProductClass = pcFinancial) then
    s1:= SMovement
  else
    begin
      if (InOut > 0) then
        s1:= SIns
      else
        s1:= SOuts;
    end;

  case EditMode of
    emEdit:
      if (StoreCode = 0) then
        s2:= SEditCaption
      else
        s2:= SRealizeCaption;

    emInsert:
      s2:= SInsertCaption;

    emReadOnly:
      s2:= SReadOnlyCaption;

  else
    s2:= '';
  end;

  Result:= Format(OriginalFormCaption, [s1, s2]);
end;

procedure TfmStoreRequest.cdsGridDataCalcFields(DataSet: TDataSet);
var
  s: string;
begin
  inherited;

  cdsGridData_HAS_COMPLETED_QUANTITY.Value:=
    (cdsGridDataHAS_OLD_COMPLETED_QUANTITY.AsInteger = 1);

  if (cdsGridDataBND_PROCESS_CODE.Value = pNK) then
    cdsGridData_SHOW_PROCESS.AsString:= SNKProcessAbbrev
  else
    cdsGridData_SHOW_PROCESS.Assign(cdsGridDataBND_PROCESS_ABBREV);

  cdsGridData_INVALID_PSD.Value:=
    (cdsGridDataANNULED_PSD.Value = 1) or
    (cdsGridDataCLOSED_PSD.Value = 1);

  s:= '';
  if (cdsGridDataANNULED_PSD.Value = 1) then
    s:= s + SAnnuledAbbrev;
  if (cdsGridDataCLOSED_PSD.Value = 1) then
    s:= s + SClosedAbbrev;
  cdsGridData_PSD_STATUS.AsString:= s;

  if cdsGridDataSTORE_DEAL_STORNED.AsBoolean then
    s:= SStornedAbbrev
  else
    begin
      if cdsGridDataSTORE_DEAL_NO.IsNull then
        s:= ''
      else
        s:= '√';
    end;       
  cdsGridData_SD_STATUS.AsString:= s;

  s:= cdsGridData_SHOW_PROCESS.AsString;
  if not cdsGridDataPROCESS_OBJECT_IDENTIFIER.IsNull then
    s:=
      s +
      ': ' +
      IfThen(
        cdsGridDataBND_PROCESS_CODE.AsInteger in [pOPWithMLL, pOPWithSale, pOPWithMLMSO, pOPWithoutMLL, pWaste],
        cdsGridDataBND_PO_PROD_ORDER_TYPE_ABBREV.AsString + '/'
      ) +
      cdsGridDataPROCESS_OBJECT_IDENTIFIER.AsString +
      IfThen(
        (cdsGridDataBND_PROCESS_CODE.AsInteger = pOPWithMLL),
        Format(' (%s)', [cdsGridDataSD_ML_MAIN_DEPT_IDENTIFIER.AsString])
      ) +
      IfThen(
        cdsGridDataBND_PROCESS_CODE.AsInteger in [pOPWithMLL, pOPWithSale, pOPWithMLMSO, pOPWithoutMLL, pWaste],
        cdsGridDataROOT_SALE_PRODUCT_IF_FOR_PROJ.AsString
      ) +
      IfThen(
        (cdsGridDataBND_PROCESS_CODE.AsInteger = pBPOItem),
        Format(' (%s)', [cdsGridDataBND_BOIO_CONSUMER_DEPT_ID.AsString]) +
        IfThen(
          not cdsGridDataBND_BOIO_BO_PROD_CUSTOM_CODE.IsNull,
          Format(' (%s %s)', [cdsGridDataBND_BOIO_BO_PROD_CUSTOM_CODE.AsString, cdsGridDataBND_BOIO_BO_PRODUCT_NAME.AsString])
        )
      );

  cdsGridData_PRINT_BINDING.AsString:= s;

  if cdsGridDataSTORE_DEAL_IDENTIFIER.IsNull then
    cdsGridData_SHOW_STORE_DEAL_IDENTIFIER.Clear
  else
    cdsGridData_SHOW_STORE_DEAL_IDENTIFIER.AsString:=
      Format(SStoreDealID, [cdsGridDataSTORE_DEAL_IDENTIFIER.AsString]);
end;

procedure TfmStoreRequest.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsGridData.AggregatesActive:= True;
  try
    cdsGridData.ClearFields;
    cdsGridDataSTORE_REQUEST_ITEM_CODE.Value:=
      VarToInt(cdsGridData_MAX_STORE_REQUEST_ITEM_CODE.Value) + 1;
    cdsGridDataIN_OUT.Assign(cdsDataIN_OUT);
  finally
    cdsGridData.AggregatesActive:= False;
  end;   { try }
end;

procedure TfmStoreRequest.CalcTotals;

  procedure CopyItemsToAggregates;
  begin
    with cdsGridData do
      begin
        First;
        while not EOF do
          begin
            cdsAggregates.Append;
            try
              cdsAggregates.AssignFields(cdsGridData);
              cdsAggregates.Post;
            except
              cdsAggregates.Cancel;
              raise;
            end;   { try }
            Next;
          end;   { while }
      end;   { with }
  end;

  function VarAbs(AValue: Variant): Variant;
  begin
    if VarIsNull(AValue) then
      Result:= Null
    else
      Result:= Abs(VarToFloat(AValue));
  end;

var
  b: TBookmark;
  Located: Boolean;
  OldIndexName: string;
  StoreProductQuantity: Variant;
  StoreProductCompletedQuantity: Variant;
  StoreProductCompletedAccountQuantity: Variant;
  TotalPrice: Variant;
begin
  FCalculating:= True;
  try
    mdTotals.DisableControls;
    try
      mdTotals.Close;
      mdTotals.CreateDataSet;

      with cdsGridData do
        begin
          DisableControls;
          try
            b:= Bookmark;
            try
              OldIndexName:= cdsGridData.IndexName;
              cdsGridData.IndexName:= StoreProductIndexName;
              try
                cdsAggregates.CreateDataSet;
                CopyItemsToAggregates;
                try
                  FHasBoundToDelivery:= False;
                  First;
                  while not EOF do
                    begin
                      FHasBoundToDelivery:=
                        FHasBoundToDelivery or cdsGridDataIS_BOUND_TO_DELIVERY.AsBoolean;

                      Located:= mdTotals.Locate(TotalsKey, CurrentGridDataKey, []);

                      cdsAggregates.Locate(TotalsKey, CurrentGridDataKey, []);

                      if not Located then
                        begin
                          StoreProductQuantity:= cdsAggregates_STORE_PRODUCT_QUANTITY.AsVariant;
                          StoreProductCompletedQuantity:= cdsAggregates_STORE_PRODUCT_COMPLETED_QUANTITY.AsVariant;
                          StoreProductCompletedAccountQuantity:= cdsAggregates_STORE_PRODUCT_COMPLETED_ACCOUNT_QUANTITY.AsVariant;
                          TotalPrice:= cdsAggregates_TOTAL_PRICE.AsVariant;

                          StoreProductQuantity:= VarAbs(StoreProductQuantity);
                          StoreProductCompletedQuantity:= VarAbs(StoreProductCompletedQuantity);
                          StoreProductCompletedAccountQuantity:= VarAbs(StoreProductCompletedAccountQuantity);
                          TotalPrice:= VarAbs(TotalPrice);

                          mdTotals.Append;
                          try
                            mdTotals.AssignFields(cdsGridData);

                            mdTotalsREQUEST_QUANTITY.AsVariant:=
                              StoreProductQuantity;

                            if CompletedStores[cdsGridDataSTORE_CODE.AsInteger] then
                              mdTotalsCOMPLETED_QUANTITY.AsVariant:= StoreProductCompletedQuantity
                            else
                              mdTotalsCOMPLETED_QUANTITY.Clear;

                            mdTotalsREQUEST_ITEMS_COUNT.Value:=
                              cdsAggregates_STORE_PRODUCT_COUNT.AsVariant;

                            mdTotalsMAX_BEGIN_DATE.AsDateTime:=
                              cdsAggregates_MAX_BEGIN_DATE.AsVariant;

                            mdTotalsCOMPLETED_ACCOUNT_QUANTITY.AsVariant:=
                              StoreProductCompletedAccountQuantity;

                            mdTotalsTOTAL_PRICE.AsVariant:=
                              TotalPrice;

                            if (cdsAggregates_MIN_SINGLE_PRICE.AsVarFloat = cdsAggregates_MAX_SINGLE_PRICE.AsVarFloat) then
                              mdTotalsSINGLE_PRICE.AsVariant:=
                                cdsAggregates_MIN_SINGLE_PRICE.AsVariant;

                            mdTotalsCURRENCY_CODE.AsVariant:=
                              cdsAggregates_CURRENCY_CODE.AsVariant;

                            mdTotalsIN_OUT.AsInteger:=
                              Sign(VarToFloat(cdsAggregates_STORE_PRODUCT_QUANTITY.AsVariant));

                            if (cdsAggregates_MIN_BND_PROCESS_CODE.AsVariant = cdsAggregates_MAX_BND_PROCESS_CODE.AsVariant) then
                              mdTotalsBND_PROCESS_CODE.AsVariant:= cdsAggregates_MIN_BND_PROCESS_CODE.AsVariant;

                            if (cdsAggregates_MIN_IS_PSD_BOUND_TO_MODEL.AsVariant = cdsAggregates_MAX_IS_PSD_BOUND_TO_MODEL.AsVariant) then
                              mdTotalsIS_PSD_BOUND_TO_MODEL.AsVariant:= cdsAggregates_MIN_IS_PSD_BOUND_TO_MODEL.AsVariant;

                            mdTotals.Post;
                          except
                            mdTotals.Cancel;
                            raise;
                          end;   { try }
                        end;   { if }

                      Next;
                    end;   { while }
                finally
                  cdsAggregates.Close;
                end;
              finally
                cdsGridData.IndexName:= OldIndexName;
              end;   { try }
            finally
              Bookmark:= b;
            end;   { try }
          finally
            EnableControls;
          end;   { try }
        end;   { with }
    finally
      mdTotals.EnableControls;
    end;   { try }
  finally
    FCalculating:= False;
  end;   { try }

  if (StoreCode = 0) then
    cdsGridDataAfterScroll(cdsGridData)
  else
    mdTotals.First;
end;

procedure TfmStoreRequest.Initialize;
var
  b: TBookmark;
  MsgParams: TStrings;
  OtherEmployeeLabelText: string;
begin
  inherited;

  if (EditMode <> emInsert) then
    FProductClass:= IntToProductClass(cdsDataPRODUCT_CLASS_CODE.AsInteger);

  CalcTotals;
  CalcInvalidPSDs;

  if (FProductClass = pcFinancial) then
    OtherEmployeeLabelText:= Format('%s / %s', [SPOL, STOL])
  else
    begin
      if (InOut > 0) then
        OtherEmployeeLabelText:= SPOL
      else
        OtherEmployeeLabelText:= STOL;
    end;

  lblOtherEmployee.Caption:= OtherEmployeeLabelText;
  cdsStoreDealDataOTHER_EMPLOYEE_CODE.DisplayLabel:= OtherEmployeeLabelText;
  cdsStoreDealDataSTORE_DEAL_DATE.DisplayLabel:= lblStoreDealDate.Caption;

  if (StoreCode > 0) and (not cdsGridDataSTORE_DEAL_OBJECT_CODE.IsNull) then
    begin
      with cdsGridData do
        begin
          DisableControls;
          try
            b:= Bookmark;
            try
              First;
              while (not Eof) and
                    (not ((cdsGridDataBND_PROCESS_CODE.AsInteger = pPD) and (not cdsGridDataOTHER_EMPLOYEE_CODE.IsNull))) do
                 Next;

              edtVendorName.Text:= cdsGridDataSTORE_DEAL_VENDOR_COMPANY_NAME.DisplayText;
              edtInvoiceNo.Text:= cdsGridDataSTORE_DEAL_INVOICE_NO.DisplayText;
              edtInvoiceAbbrev.Text:= cdsGridDataSTORE_DEAL_INVOICE_ABBREV.DisplayText;
              edtInvoiceDate.Text:= cdsGridDataSTORE_DEAL_INVOICE_DATE.DisplayText;
              cbCurrency.KeyValue:= cdsGridDataSTORE_DEAL_CURRENCY_CODE.AsFloat;

              cdsStoreDealData.Append;
              try
                cdsStoreDealDataOTHER_EMPLOYEE_CODE.Assign(cdsGridDataOTHER_EMPLOYEE_CODE);
                cdsStoreDealDataSTORE_DEAL_DATE.Assign(cdsGridDataSTORE_DEAL_DATE);
                cdsStoreDealData.Post;
              except
                cdsStoreDealData.Cancel;
                raise;
              end;  { try }
            finally
              Bookmark:= b;
            end;  { try }
          finally
            EnableControls;
          end;  { try }
        end;  { with }
    end;

  if (InOut = ioOut) or (FProductClass = pcFinancial) then
    begin
      grdTotals.Columns[12].Visible:= False;
      grdTotals.Columns[3].Width:= grdTotals.Columns[3].Width + grdTotals.Columns[12].Width + 1;
      pnlSetAllCompletedQuantityButton.Width:= pnlSetAllCompletedQuantityButton.Width - grdTotals.Columns[12].Width - 1;
    end;   { if }

  if (StoreCode > 0) then
    ActiveControl:= grdTotals;

  FStartStoreRequestItemCount:= cdsGridData.RecordCount;

  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }
  FOriginalFormCaption:= actForm.Caption;

  cdsStoreDealData.Edit;
end;

procedure TfmStoreRequest.SetTotalTotalPrice(CurrencyCode: Variant);
begin
  mdTotalsTOTAL_PRICE.AsFloat:=
    mdTotalsCOMPLETED_ACCOUNT_QUANTITY.AsFloat *
    mdTotalsSINGLE_PRICE.AsFloat *
    TodayCurrencyRate(mdTotalsCURRENCY_CODE.AsInteger) /
    TodayCurrencyRate(CurrencyCode);
end;

procedure TfmStoreRequest.cdsGridDataAfterScroll(DataSet: TDataSet);
begin
  inherited;

  with mdTotals do
    if Active and
       (not FCalculating) and
//       (StoreCode = 0) and
       (not cdsGridData.ControlsDisabled) then
      Locate(TotalsKey, CurrentGridDataKey, []);
end;

function TfmStoreRequest.CurrentGridDataKey: Variant;
begin
  Result:= VarArrayOf([
    cdsGridDataSTORE_CODE.Value,
    cdsGridDataPRODUCT_CODE.Value]);
end;

procedure TfmStoreRequest.FormCreate(Sender: TObject);
begin
  inherited;
  pnlMain.Parent:= gbMain;
  pnlMain.Align:= alClient;
  EditFormClass:= TfmStoreRequestItemEdit;

  FCompletedStores:= TCompletedStores.Create;

  frRequestDept.FieldNames:= 'REQUEST_DEPT_CODE';
  frRequestEmployee.FieldNames:= 'REQUEST_EMPLOYEE_CODE';
  frRequestEmployee.DocButtonVisible:= False;
  frRequestDateInterval.FieldNames:= 'REQUEST_BEGIN_DATE;REQUEST_END_DATE';
  frPartner.FieldNames:= 'PARTNER_CODE';
  frOtherEmployee.FieldNames:= 'OTHER_EMPLOYEE_CODE';
  frOtherEmployee.SetDataSet(cdsStoreDealData);
  frStoreDealDate.FieldNames:= 'STORE_DEAL_DATE';
  frStoreDealDate.SetDataSet(cdsStoreDealData);

  RegisterDateFields([
    cdsGridDataPSD_BEGIN_DATE,
    cdsGridDataPSD_END_DATE,
    mdTotalsMAX_BEGIN_DATE
  ]);

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridDataSINGLE_PRICE,
      cdsGridDataTOTAL_PRICE,
      mdTotalsTOTAL_PRICE]);
end;

type
  TTextWinControl = class(TWinControl)
  public
    property Text;
  end;

procedure TfmStoreRequest.FormClose(Sender: TObject;
  var Action: TCloseAction);

  procedure CheckControlValue(AWinControl: TWinControl; const LabelCaption: string);
  begin
    if (Trim(TTextWinControl(AWinControl).Text) = '') then
      begin
        AWinControl.SetFocus;
        raise Exception.CreateFmt(SNotEntered, [LabelCaption]);
      end;
  end;   { CheckComboBoxValue }

var
  OriginalMR: Integer;
  OriginalEditMode: TEditMode;
begin
  OriginalMR:= ModalResult;
  OriginalEditMode:= EditMode;

  if (ModalResult = mrOK) and (StoreCode > 0) then
    begin
      if (FProductClass = pcFinancial) then
        begin
          CheckRequiredField(cdsStoreDealDataSTORE_DEAL_DATE);

          if (cdsStoreDealDataSTORE_DEAL_DATE.AsDateTime > ContextDate) then
            raise Exception.Create(SFutureDateNotAllowed);
        end;

      CheckRequiredField(cdsStoreDealDataOTHER_EMPLOYEE_CODE);

      if (FProductClass <> pcFinancial) and (InOut = ioIn) then
        begin
          CheckControlValue(cbCurrency, lblCurrency.Caption);
        end;   { if }

      CheckAllTotals;
      MarkItems;
    end;

  inherited;

  if (ProductClass = pcNormal) and
     (OriginalEditMode = emInsert) and
     (StoreCode = 0) and
     (OriginalMR = mrOK) and
     cdsDataFINISH_EMPLOYEE_CODE.IsNull and
     cdsDataANNUL_EMPLOYEE_CODE.IsNull then
    PrintTotals;
end;

procedure TfmStoreRequest.CalcCompletedStoresAndCanAnnul;
var
  b: TBookmark;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          FCanAnnul:= True;
          First;
          while not EOF do
            begin
              CompletedStores[cdsGridDataSTORE_CODE.AsInteger]:=
                CompletedStores[cdsGridDataSTORE_CODE.AsInteger] or
                cdsGridDataSTORE_DEAL_STORNED.AsBoolean or
                (not cdsGridDataSTORE_DEAL_NO.IsNull);

              if cdsGridData_HAS_COMPLETED_QUANTITY.AsBoolean and
                 not cdsGridDataSTORE_DEAL_STORNED.AsBoolean then
                FCanAnnul:= False; 

              Next;
            end;   { while }
        finally
          Bookmark:= b;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TfmStoreRequest.cdsGridDataAfterDelete(DataSet: TDataSet);
begin
  inherited;

  if not cdsGridData.ControlsDisabled then
    begin
      CalcTotals;
      CalcInvalidPSDs;
    end;   { if }
end;

procedure TfmStoreRequest.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  CompletedStores[cdsGridDataSTORE_CODE.AsInteger]:=
    cdsGridData_HAS_COMPLETED_QUANTITY.Value;
end;

function TfmStoreRequest.FinishedOrAnnuled: Boolean;
begin
  Result:=
    cdsData.Active and
    not (cdsDataANNUL_EMPLOYEE_CODE.IsNull and
         cdsDataFINISH_EMPLOYEE_CODE.IsNull)
end;

procedure TfmStoreRequest.FinishStoreRequest;
const
  FinishStoreRequestActivities: array[TProductClass] of Integer =
    (0, uaFinishStoreRequest, uaFinishFinStoreRequest, 0);
begin
  LoginContext.CheckUserActivity(FinishStoreRequestActivities[FProductClass]);

  CheckEditMode(cdsData);
  cdsDataFINISH_EMPLOYEE_CODE.Value:=
    LoginContext.UserCode;
end;

function TfmStoreRequest.GetDelRecordEnabled: Boolean;
begin
  Result:=
    inherited GetDelRecordEnabled and
    not FinishedOrAnnuled and
    (StoreCode = 0) and
    not CompletedStores[cdsGridDataSTORE_CODE.AsInteger];
end;

procedure TfmStoreRequest.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
  c: TColor;
begin
  inherited;

  with cbBranch do
    begin
      ReadOnly:= (EditMode <> emInsert);
      Color:= ReadOnlyColors[ReadOnly];
    end;   { with }

  with cbPartnerAccount do
    begin
      ReadOnly:=
        (EditMode <> emInsert) or
        (not cdsGridData.IsEmpty);
      Color:= ReadOnlyColors[ReadOnly];
    end;   { with }

  pnlFinishStoreRequest.Visible:=
    cdsData.Active and
    cdsDataFINISH_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    (StoreCode = 0);
  pnlAnnulStoreRequest.Visible:=
    cdsData.Active and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    (StoreCode = 0) and
    (EditMode = emEdit);
  pnlFinishStoreRequestInfo.Visible:=
    cdsData.Active and
    not cdsDataFINISH_EMPLOYEE_CODE.IsNull;
  pnlAnnulStoreRequestInfo.Visible:=
    cdsData.Active and
    not cdsDataANNUL_EMPLOYEE_CODE.IsNull;

  pnlOtherEmployee.Visible:=
    (StoreCode > 0) and
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);

  ro:=
    cdsData.Active and
    ( (EditMode = emReadOnly) or
      not CompletedStores.HasIncompleted or
      FinishedOrAnnuled or
      (cdsDataREQUEST_BEGIN_DATE.AsDateTime > ContextDate) or
      (cdsDataREQUEST_END_DATE.AsDateTime < ContextDate) );

  edtInvoiceNo.ReadOnly:= ro;
  edtInvoiceAbbrev.ReadOnly:= ro;
  edtInvoiceDate.ReadOnly:= ro;

  c:= ReadOnlyColors[ro];

  edtInvoiceNo.Color:= c;
  edtInvoiceAbbrev.Color:= c;
  edtInvoiceDate.Color:= c;

  SetControlReadOnly(ro or not VarIsNullOrEmpty(mdTotals_MAX_TOTAL_PRICE.AsVariant), cbCurrency);

  pnlInvoiceData.Visible:=
    (FProductClass <> pcFinancial) and
    cdsGridData.Active and
    (InOut = ioIn) and
    (StoreCode > 0);

  pnlInvoiceControls.Visible:= (edtVendorName.Text <> '');

  tbSpeed.Visible:= (FProductClass <> pcFinancial);
  pnlFinancial.Visible:= (FProductClass = pcFinancial);

  pnlReloadCheckBox.Visible:=
    (StoreCode > 0) and
    not CompletedStores.Completed[StoreCode] and
    (EditMode = emEdit);

  pnlStoreDealDate.Visible:=
    (FProductClass = pcFinancial) and (StoreCode > 0);

  NormalizedToolbar(tlbDeliveryDoc).Visible:= (FInOut = ioIn);
end;

procedure TfmStoreRequest.navTotalsBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbEdit) then
    begin
      actEditTotal.Execute;
      Abort;
    end;   { if }

  inherited;
end;

procedure TfmStoreRequest.grdTotalsDblClick(Sender: TObject);
begin
  inherited;
  actEditTotal.Execute;
end;

procedure TfmStoreRequest.grdTotalsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmStoreRequest.actEditTotalUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    mdTotals.Active and
    not FinishedOrAnnuled and
    (StoreCode > 0) and
    not CompletedStores[mdTotalsSTORE_CODE.AsInteger] and
    (EditMode <> emReadOnly) and
    not HasInvalidPSDs;
end;

procedure TfmStoreRequest.actExcelExportTotalsExecute(Sender: TObject);
begin
  inherited;
  GridExcelExport(grdTotals);
end;

procedure TfmStoreRequest.actExcelExportTotalsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    mdTotals.Active and
    (not mdTotals.IsEmpty);
end;

procedure TfmStoreRequest.actEditTotalExecute(Sender: TObject);
var
  CompleteAllowDate: TDateTime;
begin
  inherited;

  if (cdsDataREQUEST_BEGIN_DATE.AsDateTime > ContextDate) or
     (cdsDataREQUEST_END_DATE.AsDateTime < ContextDate) then
    raise Exception.Create(SCantEditTotalWhenPeriodIsInvalid);

  CompleteAllowDate:=
    dmMain.IncDateByWorkdays(
      mdTotalsMAX_BEGIN_DATE.AsDateTime, -LoginContext.PSDCompleteInAdvanceWorkdays);

  if (ContextDate < CompleteAllowDate) then
    raise Exception.CreateFmt(SCantCompleteToday, [LoginContext.DateToStr(CompleteAllowDate)]);

  if (InOut = 1) then
    CheckRequiredCurrency;

  TfmStoreRequestTotal.ShowForm(dmDocClient, mdTotals, emEdit, doNone, (InOut = ioIn), FProductClass);
end;

procedure TfmStoreRequest.actFinishStoreRequestExecute(Sender: TObject);
begin
  inherited;
  FinishStoreRequest;
end;

procedure TfmStoreRequest.actAnnulStoreRequestExecute(Sender: TObject);
const
  AnnulStoreRequestActivities: array[TProductClass] of Integer =
    (0, uaAnnulStoreReqest, uaAnnulFinStoreRequest, 0);
begin
  inherited;

  LoginContext.CheckUserActivity(AnnulStoreRequestActivities[FProductClass]);

  CheckEditMode(cdsData);
  cdsDataANNUL_EMPLOYEE_CODE.Value:=
    LoginContext.UserCode;
end;

procedure TfmStoreRequest.actAnnulStoreRequestUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    FCanAnnul;
end;

procedure TfmStoreRequest.actDeliveryDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotDelivery,
    cdsGridDataDELIVERY_DOC_BRANCH_CODE,
    cdsGridDataDELIVERY_DOC_CODE);
end;

procedure TfmStoreRequest.actDeliveryDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataDELIVERY_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

function TfmStoreRequest.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= inherited ShowEditForm(AEditMode);

  if Result then CalcTotals;
end;

procedure TfmStoreRequest.mdTotalsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if FCalculating then
    Exit;

  if (mdTotalsREQUEST_ITEMS_COUNT.Value > 1) and
     (not mdTotalsCOMPLETED_QUANTITY.IsNull) and
     (mdTotalsCOMPLETED_QUANTITY.Value > 0) and
     (mdTotalsREQUEST_QUANTITY.Value - mdTotalsCOMPLETED_QUANTITY.Value > FloatCorrectEpsilon) then
    raise Exception.Create(SRequestedQuantityExceedsCompleted);

  if ( (InOut = ioIn) or (FProductClass = pcFinancial) ) and
     (mdTotalsREQUEST_ITEMS_COUNT.Value > 1) and
     (not mdTotalsCOMPLETED_QUANTITY.IsNull) and
     (mdTotalsCOMPLETED_QUANTITY.Value - mdTotalsREQUEST_QUANTITY.Value > FloatCorrectEpsilon) then
    raise Exception.Create(SCompletedQuantityExceedsRequested);
end;

procedure TfmStoreRequest.mdTotalsAfterPost(DataSet: TDataSet);

  function SameKey: Boolean;
  begin
    Result:=
      (cdsGridDataSTORE_CODE.AsInteger = mdTotalsSTORE_CODE.AsInteger) and
      (cdsGridDataPRODUCT_CODE.AsInteger = mdTotalsPRODUCT_CODE.AsInteger);
  end;

  procedure SetCompletedQuantity(ToNull: Boolean);
  begin
    with cdsGridData do
      begin
        First;
        while not EOF do
          begin
            if SameKey and (cdsGridDataBND_PROCESS_CODE.Value <> pNK) then
              begin
                Edit;
                try
                  if ToNull then
                    cdsGridDataCOMPLETED_QUANTITY.Clear
                  else
                    begin
                      if ( (mdTotalsCOMPLETED_QUANTITY.AsFloat = 0) and
                           (mdTotalsREQUEST_QUANTITY.AsFloat <> 0)
                         ) or
                         ( (mdTotalsREQUEST_ITEMS_COUNT.AsInteger = 1) and
                           ( (FProductClass = pcFinancial) or (InOut = ioIn) ) ) then
                        cdsGridDataCOMPLETED_QUANTITY.Assign(mdTotalsCOMPLETED_QUANTITY)
                      else
                        cdsGridDataCOMPLETED_QUANTITY.Assign(cdsGridDataREQUEST_QUANTITY);
                    end;

                  Post;
                except
                  Cancel;
                  raise;
                end;   { try }
              end;

            Next;
          end;   { while }
      end;   { with }
  end;

  procedure CalcAverageProductData(out SinglePrice, AccountCoef: Real);
  var
    b: TBookmark;
    TotalQuantity: Real;
    TotalAccountQuantity: Real;
    TotalSecondaryPrice: Real;
    SecondarySinglePrice: Real;
    AccountQuantity: Real;
  begin
    with cdsGridData do
      begin
        DisableControls;
        try
          b:= Bookmark;
          try
            First;

            TotalQuantity:= 0;
            TotalAccountQuantity:= 0;
            TotalSecondaryPrice:= 0;

            while not EOF do
              begin
                if SameKey then
                  begin
                    SecondarySinglePrice:=
                      cdsGridDataSINGLE_PRICE.AsFloat *
                      cdsTodaySecondaryCurrencyRates.Lookup('CURRENCY_CODE',
                        cdsGridDataCURRENCY_CODE.AsInteger, 'FIXING');

                    AccountQuantity:=
                      cdsGridDataREQUEST_QUANTITY.AsFloat *
                      cdsGridDataACCOUNT_COEF.AsFloat;

                    TotalQuantity:=
                      TotalQuantity + cdsGridDataREQUEST_QUANTITY.AsFloat;
                    TotalAccountQuantity:=
                      TotalAccountQuantity + AccountQuantity;
                    TotalSecondaryPrice:=
                      TotalSecondaryPrice + (AccountQuantity * SecondarySinglePrice);
                  end;   { if }

                Next;
              end;   { while }

            SinglePrice:= TotalSecondaryPrice / TotalAccountQuantity;
            AccountCoef:= TotalAccountQuantity / TotalQuantity;
          finally
            Bookmark:= b;
          end;   { try }
        finally
          EnableControls;
        end;   { try }
      end;   { with }
  end;

var
  b: TBookmark;
  Located: Boolean;
  BndProcessObjectBranchCode: Integer;
  BndProcessObjectCode: Integer;
  BndProcessObjectIdentifier: string;
  SinglePrice: Real;
  AccountCoef: Real;
  PsdDeptCode: Integer;
begin
  inherited;

  if FCalculating then Exit;

  FCalculating:= True;
  try
    with cdsGridData do
      begin
        DisableControls;
        try
          b:= Bookmark;
          try
            if (FProductClass = pcFinancial) then
              SetCompletedQuantity(mdTotalsCOMPLETED_QUANTITY.IsNull)
            else
              begin
                Located:= Locate(TotalsKey + '; BND_PROCESS_CODE', VarArrayOf([
                  mdTotalsSTORE_CODE.Value,
                  mdTotalsPRODUCT_CODE.Value,
                  pNK]), []);

                if mdTotalsCOMPLETED_QUANTITY.IsNull or
                   (mdTotalsCOMPLETED_QUANTITY.Value - mdTotalsREQUEST_QUANTITY.Value < FloatCorrectEpsilon) then
                  begin
                    if Located then
                      begin
                        Delete;

                        if Locate(TotalsKey, VarArrayOf([
                             mdTotalsSTORE_CODE.Value,
                             mdTotalsPRODUCT_CODE.Value]), []) then
                          b:= Bookmark;
                      end;

                    if not mdTotalsCOMPLETED_QUANTITY.IsNull and
                       (mdTotalsCOMPLETED_QUANTITY.Value - mdTotalsREQUEST_QUANTITY.Value < FloatCorrectEpsilon) then
                      begin
                        if (mdTotalsREQUEST_ITEMS_COUNT.Value = 1) then
                          begin
                            Locate(TotalsKey, VarArrayOf([
                              mdTotalsSTORE_CODE.Value,
                              mdTotalsPRODUCT_CODE.Value]), []);

                            Edit;
                            try
                              cdsGridDataCOMPLETED_QUANTITY.Assign(mdTotalsCOMPLETED_QUANTITY);
                              Post;
                            except
                              Cancel;
                              raise;
                            end;   { try }
                          end
                        else
                          SetCompletedQuantity(False);
                      end
                    else
                      SetCompletedQuantity(True);
                  end
                else   { if }
                  begin
                    if Located then
                      begin
                        Edit;
                        try
                          cdsGridDataCOMPLETED_QUANTITY.Value:=
                            mdTotalsCOMPLETED_QUANTITY.Value - mdTotalsREQUEST_QUANTITY.Value;
                          Post;
                        except
                          Cancel;
                          raise;
                        end;   { try }
                      end
                    else   { if }
                      begin   // insert the new request item here and set it's planned store deal
                        if (InOut = ioOut) then
                          begin
                            BndProcessObjectBranchCode:= 0;    // \
                            BndProcessObjectCode:= 0;          //  >  compilatora se osira i dava warning
                            BndProcessObjectIdentifier:= '';   // /
                            PsdDeptCode:= 0;                   //

                            if (mdTotalsREQUEST_ITEMS_COUNT.AsInteger = 1) then
                              begin
                                First;
                                Assert(
                                  Locate(TotalsKey,
                                         VarArrayOf([
                                           mdTotalsSTORE_CODE.Value,
                                           mdTotalsPRODUCT_CODE.Value]),
                                         []));

                                BndProcessObjectBranchCode:=
                                  cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger;
                                BndProcessObjectCode:=
                                  cdsGridDataBND_PROCESS_OBJECT_CODE.AsInteger;
                                BndProcessObjectIdentifier:=
                                  cdsGridDataPROCESS_OBJECT_IDENTIFIER.AsString;
                                PsdDeptCode:=
                                  cdsGridDataPSD_DEPT_CODE.AsInteger;
                              end;   { if }

                            CalcAverageProductData(SinglePrice, AccountCoef);

                            Append;
                            try
                              cdsGridData.AssignFields(mdTotals);

                              cdsGridDataBND_PROCESS_CODE.Value:= pNK;
                              cdsGridDataPSD_BEGIN_DATE.AsDateTime:= ContextDate;
                              cdsGridDataPSD_END_DATE.AsDateTime:= ContextDate;

                              cdsGridDataREQUEST_QUANTITY.Value:= 0;
                              cdsGridDataCOMPLETED_QUANTITY.Value:=
                                mdTotalsCOMPLETED_QUANTITY.Value - mdTotalsREQUEST_QUANTITY.Value;

                              if (mdTotalsREQUEST_ITEMS_COUNT.AsInteger = 1) then
                                begin
                                  cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger:=
                                    BndProcessObjectBranchCode;
                                  cdsGridDataBND_PROCESS_OBJECT_CODE.AsInteger:=
                                    BndProcessObjectCode;
                                  cdsGridDataPROCESS_OBJECT_IDENTIFIER.AsString:=
                                    BndProcessObjectIdentifier;
                                  cdsGridDataPSD_DEPT_CODE.AsInteger:=
                                    PsdDeptCode;
                                end   { if }
                              else
                                cdsGridDataPSD_DEPT_CODE.AsInteger:= cdsDataREQUEST_DEPT_CODE.AsInteger;

                              cdsGridDataSINGLE_PRICE.AsFloat:= SinglePrice;
                              cdsGridDataACCOUNT_COEF.AsFloat:= AccountCoef;
                              cdsGridDataCURRENCY_CODE.AsFloat:= LoginContext.SecondaryCurrencyCode;

                              Post;
                            except
                              Cancel;
                              raise;
                            end;   { try }
                          end;   { if }
                      end;   { if }

                    SetCompletedQuantity(False);

                    b:= Bookmark;
                  end;   { if }
              end;
          finally
            try
              Bookmark:= b;
            except
              First;
            end;   { try }
          end;   { try }
        finally
          EnableControls;
        end;   { try }
      end;   { with }
  finally
    FCalculating:= False;
  end;   { try }
end;

procedure TfmStoreRequest.CheckAllTotals;
var
  b: TBookmark;
begin
  with mdTotals do
    begin
      DisableControls;
      try
        b:= Bookmark;

        First;
        while not EOF do
          begin
            if mdTotalsCOMPLETED_QUANTITY.IsNull then
              begin
                grdTotals.SetFocus;
                raise Exception.Create(STotalNotCompleted);
              end;

            Next;
          end;   { while }

        Bookmark:= b;
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TfmStoreRequest.CheckRequiredCurrency;
begin
  if (InOut = 1) and VarIsNullOrEmpty(cbCurrency.KeyValue) then
    begin
      ActiveControl:= cbCurrency;
      raise Exception.Create(SCurrencyRequired);
    end;
end;

procedure TfmStoreRequest.MarkItems;
var
  b: TBookmark;
begin
  FCalculating:= True;
  try
    with cdsGridData do
      begin
        DisableControls;
        try
          b:= Bookmark;
          try
            First;
            while not EOF do
              begin
                Edit;
                try
                  if cdsGridDataCOMPLETED_QUANTITY.IsNull then
                    cdsGridDataCOMPLETED_QUANTITY.Assign(cdsGridDataREQUEST_QUANTITY);

                  Post;
                except
                  Cancel;
                  raise;
                end;   { try }

                Next;
              end;   { while }
          finally
            Bookmark:= b;
          end;   { try }
        finally
          EnableControls;
        end;   { try }
      end;   { with }
  finally
    FCalculating:= False;
  end;   { try }
end;

procedure TfmStoreRequest.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsDataCHANGE_EMPLOYEE_CODE.Value:=
    LoginContext.UserCode;
  cdsGridDataIS_BOUND_TO_DELIVERY.AsBoolean:=
    (cdsGridDataBND_PROCESS_CODE.AsInteger = pPD);
end;

procedure TfmStoreRequest.actFinishStoreRequestUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit);
end;

procedure TfmStoreRequest.actPrintTotalsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    mdTotals.Active and
    (cdsGridData.ChangeCount = 0) and
    (mdTotals.RecordCount > 0) and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

procedure TfmStoreRequest.actPrintTotalsExecute(Sender: TObject);
begin
  inherited;
  PrintTotals;
end;

procedure TfmStoreRequest.smrTotalsGroupFooterGetFieldValues(Sender: TObject; FieldValues: TReportFieldValues);
begin
  inherited;
  FieldValues.Values['COMPANY_SHORT_NAME']:= LoginContext.CompanyShortName;
  FieldValues.Values['AppName']:= SAppName;
end;

procedure TfmStoreRequest.smrTotalsGroupHeaderGetFieldValues(Sender: TObject;
  FieldValues: TReportFieldValues);
var
  s: string;
begin
  inherited;
  FieldValues.Values['STORE_IDENTIFIER']:=
    mdTotalsSTORE_IDENTIFIER.AsString;

  if (cdsData_BND_OBJECT.AsString = '') then
    s:= ''
  else
    s:= 'Обвързаност: ' + cdsData_BND_OBJECT.AsString;
  FieldValues.Values['_SHOW_BND_OBJECT']:= s;

  FieldValues.Values['_PRODUCT_CLASS_NAME']:= ProductClassNames[FPRoductClass];
end;

procedure TfmStoreRequest.smrTotalsGroupHeaderOutAfterPrint(Sender: TObject);
begin
  inherited;
  FGroupRecords:= 0;
end;

procedure TfmStoreRequest.smrTotalsRecordHeaderOutBeforePrint(Sender: TObject;
  var ToPrint: Boolean);
begin
  inherited;
  ToPrint:= (FGroupRecords > 0);
end;

function TfmStoreRequest.TodayCurrencyRate(ACurrencyCode: Integer): Real;
begin
  Result:=
    cdsTodayCurrencyRates.Lookup('CURRENCY_CODE', ACurrencyCode, 'FIXING');
end;

procedure TfmStoreRequest.SetDefaultTotalPrice;
var
  CurrencyCode: Variant;
begin
  if (mdTotalsBND_PROCESS_CODE.AsInteger = pOPWithSale) then
    begin
      CurrencyCode:= cbCurrency.KeyValue;

      if VarIsNull(CurrencyCode) or mdTotalsCOMPLETED_ACCOUNT_QUANTITY.IsNull then
        mdTotalsTOTAL_PRICE.Clear
      else
        SetTotalTotalPrice(CurrencyCode);
    end;
end;

procedure TfmStoreRequest.UpdateTotalsDefaultTotalPrices;
begin
  if (InOut = ioIn) then
    Screen.TempCursor(crHourGlass)/
      mdTotals.TempDisableControls/
        mdTotals.PreserveBookmark/
          mdTotals.ForEach/
            mdTotals.SafeEdit/
              procedure begin
                SetDefaultTotalPrice;
              end;
end;

procedure TfmStoreRequest.smrTotalsOutAfterPrintRecord(Sender: TObject);
begin
  inherited;
  Inc(FGroupRecords);
end;

class procedure TfmStoreRequest.Print(ADataSet: TDataSet);
var
  f: TfmStoreRequest;
begin
  f:= CreateEx;
  try
    f.SetDataParams(nil, ADataSet, emEdit);
    f.Initialize;

    f.PrintTotals;

    f.Finalize;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmStoreRequest.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FCompletedStores);
end;

procedure TfmStoreRequest.PrintTotals;
begin
  if (FProductClass = pcFinancial) then
    smrTotalsFin.Print(True)
  else
    begin
      if (InOut = ioIn) then
        begin
          mdTotals.TempDisableControls/
            cdsGridData.TempDisableControls/
              mdTotals.PreserveRecNo/
                cdsGridData.PreserveRecNo/
                  procedure begin
                    cdsGridData.First;
                    while not cdsGridData.Eof and cdsGridDataSTORE_DEAL_VENDOR_COMPANY_CODE.IsNull do
                      cdsGridData.Next;

                    smrTotalsIn.Print(True);
                  end;
        end
      else
        smrTotalsOut.Print(True);
    end;
end;

procedure TfmStoreRequest.CalcInvalidPSDs;
var
  b: TBookmark;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          FHasInvalidPSDs:= False;

          First;
          while not EOF do
            begin
              if cdsGridData_INVALID_PSD.Value then
                begin
                  FHasInvalidPSDs:= True;
                  Break;
                end;   { if }

              Next;
            end;   { while }
        finally
          Bookmark:= b;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TfmStoreRequest.smrStoreDealsGroupHeaderGetFieldValues(
  Sender: TObject; FieldValues: TReportFieldValues);
begin
  inherited;

  FieldValues.Values['_STORE_REQUEST_BRANCH_NO']:=
    cdsData_STORE_REQUEST_BRANCH_NO.DisplayText;
  FieldValues.Values['_BASE_CURRENCY_ABBREV']:=
    LoginContext.BaseCurrencyAbbrev;
end;

procedure TfmStoreRequest.cdsGridDataFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:= not cdsGridDataSTORE_DEAL_NO.IsNull;
end;

procedure TfmStoreRequest.cdsGridDataIN_OUTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
const
  Abbrevs: array[-1..1] of string = (SOutDealAbbrev, '', SInDealAbbrev);
begin
  inherited;
  if InRange(Sender.AsInteger, Low(Abbrevs), High(Abbrevs)) then
    Text:= Abbrevs[Sender.AsInteger]
  else
    Text:= '';
end;

procedure TfmStoreRequest.smrStoreDealsGroupHeaderAfterPrint(
  Sender: TObject);
begin
  inherited;
  FGroupRecords:= 0;
  FBaseTotalPrice:= 0;
end;

procedure TfmStoreRequest.smrStoreDealsAfterPrintRecord(Sender: TObject);
begin
  inherited;

  Inc(FGroupRecords);

  FBaseTotalPrice:=
    FBaseTotalPrice +
    cdsGridDataSTORE_DEAL_BASE_TOTAL_PRICE.AsFloat;
end;

procedure TfmStoreRequest.smrStoreDealsRecordHeaderBeforePrint(
  Sender: TObject; var ToPrint: Boolean);
begin
  inherited;
  ToPrint:= (FGroupRecords > 0);
end;

procedure TfmStoreRequest.smrStoreDealsGroupFooterGetFieldValues(
  Sender: TObject; FieldValues: TReportFieldValues);
begin
  inherited;

  with FieldValues do
    begin
      Values['_BASE_TOTAL_PRICE']:=
        FormatFloat(',0.00', FBaseTotalPrice);

      Values['REQUEST_EMPLOYEE_NO']:=
        cdsData_REQUEST_EMPLOYEE_NO.DisplayText;
      Values['_REQUEST_EMPLOYEE_NAME']:=
        cdsData_REQUEST_EMPLOYEE_NAME.DisplayText;

      Values['OTHER_EMPLOYEE_LABEL']:= lblOtherEmployee.Caption;

      Values['COMPANY_SHORT_NAME']:= LoginContext.CompanyShortName;
      Values['AppName']:= SAppName;
    end;   { with }
end;

procedure TfmStoreRequest.FormShow(Sender: TObject);
var
  FinancialExtendedPanelHeight: Integer;
begin
  inherited;

  if (FProductClass <> pcFinancial) then
    begin
      FinancialExtendedPanelHeight:= (pnlFinancial.Height + 8);
      OriginalFormHeight:= OriginalFormHeight - FinancialExtendedPanelHeight;
      Height:= OriginalFormHeight;
      pnlTop.Height:= pnlTop.Height - FinancialExtendedPanelHeight;
    end;

  cdsBranches.Filtered:= (EditMode = emInsert);
{
  if (StoreCode > 0) and
     ( (cdsDataREQUEST_BEGIN_DATE.AsDateTime > ContextDate) or
       (cdsDataREQUEST_END_DATE.AsDateTime < ContextDate) ) then
    begin
      edtRequestBeginDate.Font.Color:= clRed;
      edtRequestBeginDateGSD.Font.Color:= clRed;
      edtRequestEndDate.Font.Color:= clRed;
      edtRequestEndDateGSD.Font.Color:= clRed;
    end;}
end;

procedure TfmStoreRequest.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if cdsGridData_INVALID_PSD.Value and
     (cdsGridDataHAS_OLD_COMPLETED_QUANTITY.Value <> 1) and
     not FinishedOrAnnuled then
    AFont.Color:= clRed;

  if (Column.Field = cdsGridDataPRIORITY_FULL_NAME) and not Column.Field.IsNull then
    begin
      if not cdsGridData_PRIORITY_COLOR.IsNull then
        AFont.Color:= cdsGridData_PRIORITY_COLOR.AsInteger;

      if not cdsGridData_PRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsGridData_PRIORITY_BACKGROUND_COLOR.AsInteger;
    end;  { if }

  if (Column.Field = cdsGridDataIN_OUT) then
    begin
      if (cdsGridDataIN_OUT.AsInteger < 0) then
        Background:= ccStoreDealOut;
      if (cdsGridDataIN_OUT.AsInteger > 0) then
        Background:= ccStoreDealIn;
    end;                          

  if (Column.Field = cdsGridDataREQUEST_QUANTITY) and
     (cdsGridDataREQUEST_QUANTITY.AsFloat > cdsGridDataPSD_REMAINING_QUANTITY.AsFloat) and
     cdsGridDataCOMPLETED_QUANTITY.IsNull then
    AFont.Color:= clRed;
end;

procedure TfmStoreRequest.grdTotalsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (gdSelected in State) and (ActiveControl <> grdTotals) then
    begin
      if mdTotals.BOF and mdTotals.EOF then
        Background:= clWindow
      else   { if }
        Background:= cl3DLight;

      AFont.Color:= clBlack;
    end;

  if (Column.Field = mdTotalsIN_OUT) then
    begin
      if (mdTotalsIN_OUT.AsInteger < 0) then
        Background:= ccStoreDealOut;
      if (mdTotalsIN_OUT.AsInteger > 0) then
        Background:= ccStoreDealIn;
    end;
end;

procedure TfmStoreRequest.cdsDataBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= StoreCode;
end;

function TfmStoreRequest.GetRecordReadOnly: Boolean;
begin
  Result:=
    (StoreCode > 0) and
    ( (not CompletedStores.HasIncompleted) or
      (cdsGridData.RecordCount = 0) );
end;

procedure TfmStoreRequest.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frRequestDept) or
     (AFrame = frRequestEmployee) or
     (AFrame = frRequestDateInterval) then
    begin
      AFrame.ReadOnly:=
        FinishedOrAnnuled or
        (StoreCode > 0) or
        (EditMode = emReadOnly);

      Exit;
    end;  { if }

  if (AFrame = frPartner) then
    begin
      AFrame.ReadOnly:=
        FinishedOrAnnuled or
        (StoreCode > 0) or
        (EditMode = emReadOnly) or
        (not cdsGridData.IsEmpty);

      Exit;
    end;  { if }

  if (AFrame = frOtherEmployee) or (AFrame = frStoreDealDate) then
    begin
      AFrame.ReadOnly:=
        (EditMode = emReadOnly) or
        not CompletedStores.HasIncompleted or
        FinishedOrAnnuled or
        (cdsDataREQUEST_BEGIN_DATE.AsDateTime > ContextDate) or
        (cdsDataREQUEST_END_DATE.AsDateTime < ContextDate);

      Exit;
    end;  { if }

  inherited;
end;

procedure TfmStoreRequest.cdsDataREQUEST_EMPLOYEE_CODEChange(
  Sender: TField);
begin
  inherited;

  if not Sender.IsNull and cdsData_REQUEST_EMPLOYEE_NAME.IsNull then
    raise Exception.Create(SInvalidRequestEmployeeCode);
end;

procedure TfmStoreRequest.cdsDataSTORE_REQUEST_BRANCH_CODEChange(
  Sender: TField);
begin
  inherited;

  cdsDataSTORE_REQUEST_CODE.Value:=
    dmMain.SvrStoreRequests.GetNewStoreRequestCode(Sender.AsInteger);
end;

function TfmStoreRequest.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    inherited GetGridRecordReadOnly or
    (EditMode = emReadOnly) or
    CompletedStores[cdsGridDataSTORE_CODE.AsInteger] or
    FinishedOrAnnuled or
    (StoreCode > 0);
end;

procedure TfmStoreRequest.cdsGridDataCOMPLETED_QUANTITYChange(
  Sender: TField);
begin
  inherited;

  if (mdTotalsCOMPLETED_QUANTITY.AsFloat > 0) then
    begin
      if mdTotalsCOMPLETED_ACCOUNT_QUANTITY.IsNull then
        cdsGridDataCOMPLETED_ACCOUNT_QUANTITY.Clear
      else
        cdsGridDataCOMPLETED_ACCOUNT_QUANTITY.AsFloat:=
          mdTotalsCOMPLETED_ACCOUNT_QUANTITY.AsFloat *
          cdsGridDataCOMPLETED_QUANTITY.AsFloat /
          mdTotalsCOMPLETED_QUANTITY.AsFloat;

      if mdTotalsTOTAL_PRICE.IsNull then
        cdsGridDataTOTAL_PRICE.Clear
      else
        cdsGridDataTOTAL_PRICE.AsFloat:=
          mdTotalsTOTAL_PRICE.AsFloat *
          cdsGridDataCOMPLETED_QUANTITY.AsFloat /
          mdTotalsCOMPLETED_QUANTITY.AsFloat;
    end;   { if }
end;

procedure TfmStoreRequest.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  if (FProductClass <> pcFinancial) and (InOut = ioIn) and (StoreCode > 0) and HasBoundToDelivery then
    OwnerData:= VarArrayOf([
      cbCurrency.KeyValue,
      Null,
      Null,
      Null,
      Null
    ]);
end;

procedure TfmStoreRequest.mdTotalsCalcFields(DataSet: TDataSet);
begin
  inherited;

  if mdTotalsCOMPLETED_QUANTITY.IsNull or
     mdTotalsACCOUNT_MEASURE_COEF.IsNull or
     (InOut = ioOut) or
     (FProductClass = pcFinancial) then
    mdTotals_COMPLETED_ACCOUNT_QUANTITY.Clear
  else
    mdTotals_COMPLETED_ACCOUNT_QUANTITY.AsFloat:=
      mdTotalsCOMPLETED_QUANTITY.AsFloat * mdTotalsACCOUNT_MEASURE_COEF.AsFloat;

  if mdTotalsREQUEST_QUANTITY.IsNull or
     mdTotalsACCOUNT_MEASURE_COEF.IsNull or
     (FProductClass = pcFinancial) then
    mdTotals_REQUESTED_ACCOUNT_QUANTITY.Clear
  else
    mdTotals_REQUESTED_ACCOUNT_QUANTITY.AsFloat:=
      mdTotalsREQUEST_QUANTITY.AsFloat * mdTotalsACCOUNT_MEASURE_COEF.AsFloat;

  mdTotals_CURRENCY_ABBREV.AsString:= 'abc';

  mdTotals_IDENTIFIER.AsString:=
    Format('%s / %d / %s / %d', [
      cdsData_STORE_REQUEST_BRANCH_NO.AsString,
      cdsDataSTORE_REQUEST_CODE.AsInteger,
      mdTotalsSTORE_IDENTIFIER.AsString,
      mdTotals.RecNo
    ]);
end;

procedure TfmStoreRequest.mdTotalsIN_OUTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
const
  Abbrevs: array[-1..1] of string = (SOutDealAbbrev, '', SInDealAbbrev);
begin
  inherited;
  if InRange(Sender.AsInteger, Low(Abbrevs), High(Abbrevs)) then
    Text:= Abbrevs[Sender.AsInteger]
  else
    Text:= '';
end;

procedure TfmStoreRequest.mdTotals_CURRENCY_ABBREVGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= cbCurrency.Text;
end;

procedure TfmStoreRequest.cdsGridDataSTORE_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsGridDataSTORE_CODE, nil, cdsGridDataSTORE_IDENTIFIER);
end;

procedure TfmStoreRequest.cdsGridDataSTORE_DEAL_VENDOR_COMPANY_CODEChange(
  Sender: TField);
begin
  inherited;
  GetCompanyInfo(cdsGridDataSTORE_DEAL_VENDOR_COMPANY_CODE, cdsGridDataSTORE_DEAL_VENDOR_COMPANY_NAME);
end;

procedure TfmStoreRequest.cdsPartnerAccountsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsPartnerAccounts.Params.ParamByName('COMPANY_CODE').Value:= cdsDataPARTNER_CODE.AsVariant;
end;

procedure TfmStoreRequest.cdsTodayCurrencyRatesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsTodayCurrencyRates.Params.ParamByName('RATE_DATE').AsDateTime:= ContextDate;
end;

procedure TfmStoreRequest.actPlannedStoreDealExecute(Sender: TObject);
begin
  inherited;

  case cdsGridDataIN_OUT.AsInteger of
    1:
      TfmPlannedStoreDealIn.ShowForm(dmDocClient, cdsGridData, emReadOnly, doNone, FProductClass);

    -1:
      TfmPlannedStoreDealOut.ShowForm(dmDocClient, cdsGridData, emReadOnly, doNone, FProductClass);

    else
      raise Exception.Create('TfmStoreRequest: unknown InOut');
  end;
end;

procedure TfmStoreRequest.actPlannedStoreDealUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsGridDataPLANNED_STORE_DEAL_CODE.IsNull;

  (Sender as TAction).Caption:= SCaptionPlanPrefix + ' ' + InOutCaptions[InOut] + cDialogSuffix;
end;

procedure TfmStoreRequest.actPrintExecute(Sender: TObject);
var
  b: TBookmark;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          Filtered:= True;
          try
            if (InOut < 0) and (FProductClass <> pcFinancial) then
              smrStoreDealsGroupHeader.ReportHeader:= smrStoreDealsGroupHeaderOutHeader
            else
              smrStoreDealsGroupHeader.ReportHeader:= smrStoreDealsGroupHeaderInHeader;

            smrStoreDeals.Print(True);
          finally
            Filtered:= False;
          end;   { try }
        finally
          Bookmark:= b;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TfmStoreRequest.actPrintUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:=
    cdsData.Active and
    CompletedStores.HasCompleted and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

procedure TfmStoreRequest.actSetAllCompletedQuantityExecute(Sender: TObject);
begin
  inherited;

  CheckRequiredCurrency;

  Screen.TempCursor(crHourGlass) /
    mdTotals.TempDisableControls /
      mdTotals.PreserveBookmark /
        mdTotals.ForEach /
          mdTotals.SafeEdit /
            procedure begin
              if mdTotalsCOMPLETED_QUANTITY.IsNull then
                begin
                  mdTotalsCOMPLETED_QUANTITY.Assign(mdTotalsREQUEST_QUANTITY);

                  if (mdTotalsACCOUNT_MEASURE_COEF.AsFloat = 1) then
                    mdTotalsCOMPLETED_ACCOUNT_QUANTITY.Assign(mdTotalsCOMPLETED_QUANTITY);

                  if (mdTotalsBND_PROCESS_CODE.AsInteger = pocDeliveryContract) then
                    SetTotalTotalPrice(cbCurrency.KeyValue);
                end;
            end;
end;

function TfmStoreRequest.CompleteAllEnabled: Boolean;
begin
  Result:=
    (StoreCode > 0) and
    ( (cdsDataBND_PROCESS_OBJECT_CLASS_CODE.AsInteger = pocSaleGroup) or
      ( LoginContext.IsAutoCompleteStoreRequestVisible and
        (mdTotals_MIN_BND_PROCESS_CODE.AsVarInteger = mdTotals_MAX_BND_PROCESS_CODE.AsVarInteger) and
        (mdTotals_MIN_BND_PROCESS_CODE.AsVarInteger = pocDeliveryContract) and
        (mdTotals_MIN_ACCOUNT_MEASURE_COEF.AsVarFloat = mdTotals_MAX_ACCOUNT_MEASURE_COEF.AsVarFloat) and
        (mdTotals_MIN_ACCOUNT_MEASURE_COEF.AsVarFloat = 1)
      )
    );
end;

procedure TfmStoreRequest.SetAllCompletedQuantityButton;
begin
  pnlSetAllCompletedQuantityButton.Visible:= CompleteAllEnabled
end;

procedure TfmStoreRequest.actSetAllCompletedQuantityUpdate(Sender: TObject);
begin
  inherited;

  SetAllCompletedQuantityButton;

  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    (mdTotals.RecordCount > 0) and
    pnlSetAllCompletedQuantityButton.Visible and
    not CompletedStores.Completed[StoreCode];
end;

function TfmStoreRequest.GetPrintButtonOnToolbarEnabled: Boolean;
begin
  Result:= True;
end;

procedure TfmStoreRequest.SetupVisibleTotalsColumns(Sender: TObject);
begin
  inherited;
  grdTotals.Columns[6].Visible:= sbtnWorkMeasure.Down;
  grdTotals.Columns[7].Visible:= sbtnWorkMeasure.Down;
  grdTotals.Columns[8].Visible:= sbtnWorkMeasure.Down;

  grdTotals.Columns[9].Visible:= sbtnAccountMeasure.Down;
  grdTotals.Columns[10].Visible:= sbtnAccountMeasure.Down;
  grdTotals.Columns[11].Visible:= sbtnAccountMeasure.Down;
end;

procedure TfmStoreRequest.grdDataDblClick(Sender: TObject);
begin
//  inherited;
  if not actEditRecord.Execute then
    actMultiEdit.Execute;
end;

procedure TfmStoreRequest.mdTotalsCOMPLETED_ACCOUNT_QUANTITYChange(
  Sender: TField);
begin
  inherited;
  if (InOut = ioIn) then
    SetDefaultTotalPrice;
end;

end.
