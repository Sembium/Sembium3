unit fSaleExpGroups;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fDataForm, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls, ComCtrls,
  GridsEh, DBGridEh, AbmesDBGrid, DBCtrls, ColorNavigator, Db,
  ParamDataSet, DBClient, AbmesClientDataSet, AbmesFields, uClientTypes,
  fFilterForm, AbmesDBCheckBox, Mask, Menus, JvButtons, ToolWin, fEditForm,
  dDocClient, fBaseFrame, fDBFrame, fFieldEditFrame, fDateIntervalFrame,
  JvComponent, JvCaptionButton, JvComponentBase, uProducts, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh,
  System.Actions;

type
  TfmSaleExpGroups = class(TEditForm)
    pcSales: TPageControl;
    tsExpGroups: TTabSheet;
    tsSingleExps: TTabSheet;
    pnlMainExpGroups: TPanel;
    pnlExpGroupsMaster: TPanel;
    pnlExpGroupsDetail: TPanel;
    Splitter1: TSplitter;
    pnlExpGroupsMasterNavigator: TPanel;
    pnlExpGroupsDetailNavigator: TPanel;
    navExpGroupsMaster: TDBColorNavigator;
    pnlFilterGroups: TPanel;
    btnFilterGroups: TSpeedButton;
    grdExpGroupsMaster: TAbmesDBGrid;
    navExpGroupsDetail: TDBColorNavigator;
    pnlButtons: TPanel;
    grdExpGroupsDetail: TAbmesDBGrid;
    cdsExpGroupsDetail: TAbmesClientDataSet;
    pdsExpGroupsMaster: TParamDataSet;
    dsExpGroupsParams: TDataSource;
    dsExpGroupsDetail: TDataSource;
    cdsExpGroupsDetailSALE_ID: TAbmesWideStringField;
    cdsExpGroupsDetailPRODUCT_NAME: TAbmesWideStringField;
    cdsExpGroupsDetailMEASURE_ABBREV: TAbmesWideStringField;
    cdsExpGroupsDetailPLAN_QUANTITY: TAbmesFloatField;
    cdsExpGroupsDetailPLAN_VALUE_GAINED: TAbmesFloatField;
    cdsExpGroupsDetailPLAN_VALUE_INVESTED: TAbmesFloatField;
    cdsExpGroupsDetailOTCH_QUANTITY: TAbmesFloatField;
    cdsExpGroupsDetailOTCH_VALUE_GAINED: TAbmesFloatField;
    cdsExpGroupsDetailOTCH_VALUE_INVESTED: TAbmesFloatField;
    cdsDataSHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsDataIS_OTCH: TAbmesFloatField;
    cdsDataCLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsDataCLENT_COMPANY_NAME: TAbmesWideStringField;
    cdsDataRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    cdsDataOFFICE_NAME: TAbmesWideStringField;
    cdsDataPLAN_VALUE_GAINED: TAbmesFloatField;
    cdsDataPLAN_VALUE_INVESTED: TAbmesFloatField;
    cdsDataOTCH_VALUE_GAINED: TAbmesFloatField;
    cdsDataOTCH_VALUE_INVESTED: TAbmesFloatField;
    actFilterExpGroups: TAction;
    cdsExpGroupsDetailIS_ANNULED: TAbmesFloatField;
    cdsData_PLAN_VALUE_ADDED: TAbmesFloatField;
    cdsData_PLAN_PERCENT: TAbmesFloatField;
    cdsData_OTCH_VALUE_ADDED: TAbmesFloatField;
    cdsData_OTCH_PERCENT: TAbmesFloatField;
    cdsData_DEV_TIME: TAbmesFloatField;
    cdsData_DEV_VALUE_GAINED: TAbmesFloatField;
    cdsData_DEV_VALUE_ADDED: TAbmesFloatField;
    cdsDataAVG_TIME_DEV: TAbmesFloatField;
    cdsDataMIN_TIME_DEV: TAbmesFloatField;
    cdsExpGroupsDetail_PLAN_VALUE_ADDED: TAbmesFloatField;
    cdsExpGroupsDetail_PLAN_PERCENT: TAbmesFloatField;
    cdsExpGroupsDetail_OTCH_VALUE_ADDED: TAbmesFloatField;
    cdsExpGroupsDetail_OTCH_PERCENT: TAbmesFloatField;
    cdsExpGroupsDetail_DEV_QUANTITY: TAbmesFloatField;
    cdsExpGroupsDetail_DEV_VALUE_GAINED: TAbmesFloatField;
    cdsExpGroupsDetail_DEV_VALUE_ADDED: TAbmesFloatField;
    lblComment: TLabel;
    btnShowAnnuledLines: TSpeedButton;
    cdsExpGroupsDetailIS_OTCH: TAbmesFloatField;
    pnlSingleExpsMain: TPanel;
    pnlSingleExpsNavigator: TPanel;
    navSingleExps: TDBColorNavigator;
    pnlSingleExpsTotals: TPanel;
    grdSingleExps: TAbmesDBGrid;
    pnlSingleExpsTopPadding: TPanel;
    lblSingleNowDate: TLabel;
    cdsSingleExps: TAbmesClientDataSet;
    dsSingleExps: TDataSource;
    cdsSingleExpsSALE_ID: TAbmesWideStringField;
    cdsSingleExpsSHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsSingleExpsCLIENT_NAME: TAbmesWideStringField;
    cdsSingleExpsPRODUCT_NAME: TAbmesWideStringField;
    cdsSingleExpsMEASURE_ABBREV: TAbmesWideStringField;
    cdsSingleExpsPLAN_QUANTITY: TAbmesFloatField;
    cdsSingleExpsPLAN_VALUE_GAINED: TAbmesFloatField;
    cdsSingleExpsPLAN_VALUE_INVESTED: TAbmesFloatField;
    cdsSingleExpsOTCH_QUANTITY: TAbmesFloatField;
    cdsSingleExpsOTCH_VALUE_GAINED: TAbmesFloatField;
    cdsSingleExpsOTCH_VALUE_INVESTED: TAbmesFloatField;
    cdsSingleExpsIS_ANNULED: TAbmesFloatField;
    cdsSingleExpsIS_OTCH: TAbmesFloatField;
    pdsSingleExps: TParamDataSet;
    dsSingleExpsParams: TDataSource;
    pnlFilterSingleExps: TPanel;
    btnFilterSingleExps: TSpeedButton;
    cdsSingleExps_DEV_TIME: TAbmesFloatField;
    cdsSingleExps_DEV_QUANTITY: TAbmesFloatField;
    cdsSingleExps_DEV_VALUE_GAINED: TAbmesFloatField;
    pdsSingleExpsPRODUCT_CODE: TAbmesFloatField;
    pdsSingleExpsPRODUCT_NAME: TAbmesWideStringField;
    pdsSingleExpsPRODUCT_NO: TAbmesFloatField;
    actFilterSingleExps: TAction;
    cdsSingleExpsDEV_TIME: TAbmesFloatField;
    pdsSingleExpsBRANCH_CODE: TAbmesFloatField;
    pdsSingleExpsSALE_NO: TAbmesFloatField;
    pdsSingleExpsSALE_TYPE_CODE: TAbmesFloatField;
    cdsBranches: TAbmesClientDataSet;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    pdsSingleExps_SALE_TYPE_ABBREV: TAbmesWideStringField;
    pdsSingleExps_SALE_BRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsData_SUM_OTCH_VALUE_GAINED: TAggregateField;
    cdsData_SUM_PLAN_VALUE_GAINED: TAggregateField;
    cdsData_SUM_PLAN_VALUE_ADDED: TAggregateField;
    cdsData_SUM_OTCH_VALUE_ADDED: TAggregateField;
    cdsData_SUM_DEV_VALUE_GAINED: TAggregateField;
    cdsData_SUM_DEV_VALUE_ADDED: TAggregateField;
    cdsSingleExps_SUM_PLAN_VALUE_GAINED: TAggregateField;
    cdsSingleExps_SUM_OTCH_VALUE_GAINED: TAggregateField;
    cdsSingleExpsSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsSingleExpsSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsSingleExpsSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    cdsSingleExpsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsSingleExpsSALE_OBJECT_CODE: TAbmesFloatField;
    cdsExpGroupsDetailSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsExpGroupsDetailSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsExpGroupsDetailSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    cdsExpGroupsDetailSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsExpGroupsDetailSALE_OBJECT_CODE: TAbmesFloatField;
    actEditSaleFromGroups: TAction;
    actEditSale: TAction;
    btnEditSaleFromGroups: TBitBtn;
    btnEditSale: TBitBtn;
    cdsExpGroupsDetailREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsExpGroupsDetailREQUEST_NO: TAbmesFloatField;
    cdsExpGroupsDetailREQUEST_LINE_NO: TAbmesFloatField;
    cdsExpGroupsDetailSALE_SHIPMENT_NO: TAbmesFloatField;
    cdsSingleExpsSALE_SHIPMENT_NO: TAbmesFloatField;
    cdsSingleExpsREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsSingleExpsREQUEST_NO: TAbmesFloatField;
    cdsSingleExpsREQUEST_LINE_NO: TAbmesFloatField;
    pdsExpGroupsMasterPRODUCT_CODE: TAbmesFloatField;
    pdsExpGroupsMasterPRODUCT_NAME: TAbmesWideStringField;
    pdsExpGroupsMasterPRODUCT_NO: TAbmesFloatField;
    cdsSingleExpsSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsExpGroupsDetailSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    pdsSingleExpsSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsSaleOrderTypes: TAbmesClientDataSet;
    cdsSaleOrderTypesSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsSaleOrderTypesSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    pdsSingleExps_SALE_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsExpGroupsDetailSHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsExpGroupsDetailCLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsExpGroupsDetailRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    cdsExpGroupsDetailUNCOVERED_LINES: TAbmesFloatField;
    cdsDataUNCOVERED_LINES: TAbmesFloatField;
    cdsSingleExpsUNCOVERED_LINES: TAbmesFloatField;
    actPrint2ndPage: TAction;
    actPrint1stPage: TAction;
    pnlTopRightButtons: TPanel;
    cdsExpGroupsDetailCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    cdsExpGroupsDetailCLIENT_REQUEST_NO: TAbmesWideStringField;
    cdsSingleExpsCLIENT_REQUEST_NO: TAbmesWideStringField;
    cdsSingleExpsCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    cdsSingleExpsPRODUCTION_DEPT_IDENTIFIER: TAbmesWideStringField;
    btnToggleProductDisplay: TSpeedButton;
    cdsData_AVG_PLAN_PERCENT: TAbmesFloatField;
    cdsData_AVG_OTCH_PERCENT: TAbmesFloatField;
    pdsExpGroupsMasterCOUNTRY_CODE: TAbmesFloatField;
    pdsSingleExpsMARKET: TAbmesFloatField;
    pdsSingleExpsCOUNTRY_CODE: TAbmesFloatField;
    pdsSingleExpsPRODUCTION_DEPT_CODE: TAbmesFloatField;
    pdsSingleExpsFROM_INVOICE_NO: TAbmesFloatField;
    pdsSingleExpsTO_INVOICE_NO: TAbmesFloatField;
    pdsSingleExpsSTART_INVOICE_PERIOD_DATE: TAbmesSQLTimeStampField;
    pdsSingleExpsEND_INVOICE_PERIOD_DATE: TAbmesSQLTimeStampField;
    pdsSingleExpsPRODUCTION_DEPT_NAME: TAbmesWideStringField;
    pdsSingleExpsPRODUCTION_DEPT_NO: TAbmesWideStringField;
    cdsSingleExpsINVOICE_NO: TAbmesFloatField;
    cdsSingleExpsINVOICE_DATE: TAbmesSQLTimeStampField;
    cdsCountries: TAbmesClientDataSet;
    cdsCountriesCOUNTRY_CODE: TAbmesFloatField;
    cdsCountriesCOUNTRY_NAME: TAbmesWideStringField;
    pdsExpGroupsMaster_COUNTRY_NAME: TAbmesWideStringField;
    pdsSingleExpsSALE_SHIPMENT_NO: TAbmesFloatField;
    cdsDataMIN_TRANSPORT_MEASURE_CODE: TAbmesFloatField;
    cdsDataMAX_TRANSPORT_MEASURE_CODE: TAbmesFloatField;
    cdsDataTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataPLAN_TRANSPORT_QUANTITY: TAbmesFloatField;
    cdsDataOTCH_TRANSPORT_QUANTITY: TAbmesFloatField;
    cdsData_PLAN_TRANSPORT_QUANTITY: TAbmesWideStringField;
    cdsData_OTCH_TRANSPORT_QUANTITY: TAbmesWideStringField;
    cdsData_TRANSPORT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsExpGroupsDetailTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsExpGroupsDetailPLAN_TRANSPORT_QUANTITY: TAbmesFloatField;
    cdsExpGroupsDetailOTCH_TRANSPORT_QUANTITY: TAbmesFloatField;
    cdsSingleExpsTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsSingleExpsPLAN_TRANSPORT_QUANTITY: TAbmesFloatField;
    cdsSingleExpsOTCH_TRANSPORT_QUANTITY: TAbmesFloatField;
    btnDocumentation: TSpeedButton;
    cdsExpGroupsDetailPRODUCT_CODE: TAbmesFloatField;
    cdsSingleExpsPRODUCT_CODE: TAbmesFloatField;
    tlbTopSingleExpButtons: TToolBar;
    btnDocumentation2: TSpeedButton;
    cdsSingleExps_PLAN_VALUE_ADDED: TAbmesFloatField;
    cdsSingleExps_PLAN_PERCENT: TAbmesFloatField;
    cdsSingleExps_OTCH_VALUE_ADDED: TAbmesFloatField;
    cdsSingleExps_OTCH_PERCENT: TAbmesFloatField;
    cdsSingleExps_SUM_PLAN_VALUE_ADDED: TAggregateField;
    cdsSingleExps_SUM_OTCH_VALUE_ADDED: TAggregateField;
    tlbTopExpGroupsButtons: TToolBar;
    btnExcelExport: TToolButton;
    actExcelExportExpGroups: TAction;
    actExcelExportSingleExps: TAction;
    btnExcelExportSingleExps: TToolButton;
    actShipmentNeededMaterials: TAction;
    btnShipmentNeededMaterials: TBitBtn;
    cdsSingleExps_AVG_PLAN_PERCENT: TAbmesFloatField;
    cdsSingleExps_AVG_OTCH_PERCENT: TAbmesFloatField;
    pdsExpGroupsMasterIS_ANNULED: TAbmesFloatField;
    pdsExpGroupsMasterIS_FINISHED: TAbmesFloatField;
    pdsExpGroupsMasterIS_PAYMENT_EXPECTED: TAbmesFloatField;
    pdsExpGroupsMasterIS_INVOICE_EXPECTED: TAbmesFloatField;
    pdsExpGroupsMasterIS_LATE: TAbmesFloatField;
    pdsExpGroupsMasterIS_ACTUAL_LATE: TAbmesFloatField;
    pdsExpGroupsMasterIS_ACTUAL_FUTURE: TAbmesFloatField;
    pdsExpGroupsMasterIS_FUTURE: TAbmesFloatField;
    cdsDataGROUP_DATE_STATUS_CODE: TAbmesFloatField;
    cdsSingleExps__SUM_OTCH_VALUE_ADDED: TAbmesFloatField;
    pdsExpGroupsMasterCURRENT_FILTER_VARIANT_CODE: TAbmesFloatField;
    pdsSingleExpsCURRENT_FILTER_VARIANT_CODE: TAbmesFloatField;
    btnPrint2ndPage: TToolButton;
    btnPrint1stPage: TToolButton;
    sepBeforeExcelExport: TToolButton;
    sepBeforeExcelExportSingle: TToolButton;
    sepAfterPrintSingle: TToolButton;
    actShowProductVIMForExpFromGroup: TAction;
    actShowVIMForSingleExp: TAction;
    btnShowProductVIMForExpFromGroup: TSpeedButton;
    btnShowVIMForSingleExp: TToolButton;
    cdsSingleExpsPRODUCT_NO: TAbmesFloatField;
    cdsExpGroupsDetailPRODUCT_NO: TAbmesFloatField;
    cdsDataIS_INVOICE_DATE_NULL: TAbmesFloatField;
    cdsExpGroupsDetailIS_INVOICE_DATE_NULL: TAbmesFloatField;
    pdsExpGroupsMasterCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsSingleExpsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pnlFlags: TPanel;
    lblSaleExpsDateInterval: TLabel;
    frSaleExpsDateInterval: TfrDateIntervalFrame;
    pnlSaleExpsTopPadding: TPanel;
    pnlInterval: TPanel;
    lblSingleExpsDateInterval: TLabel;
    frSingleExpsDateInterval: TfrDateIntervalFrame;
    cdsExpGroupsDetailPRIORITY_CODE: TAbmesFloatField;
    cdsExpGroupsDetailPRIORITY_NO: TAbmesFloatField;
    cdsExpGroupsDetailPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsSingleExpsPRIORITY_CODE: TAbmesFloatField;
    cdsSingleExpsPRIORITY_NO: TAbmesFloatField;
    cdsSingleExpsPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsSingleExps_PRIORITY_COLOR: TAbmesFloatField;
    cdsSingleExps_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsExpGroupsDetail_PRIORITY_COLOR: TAbmesFloatField;
    cdsExpGroupsDetail_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    pdsExpGroupsMasterLEASE_GROUP_TYPE: TAbmesFloatField;
    pdsExpGroupsMasterSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    pdsExpGroupsMasterLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    pdsExpGroupsMasterRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    cdsSaleDealTypes: TAbmesClientDataSet;
    cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsSaleDealTypes_SALE_DEAL_TYPE_SHOW_NAME: TAbmesWideStringField;
    pdsExpGroupsMaster_SALE_DEAL_TYPE_SHOW_NAME: TAbmesWideStringField;
    pdsExpGroupsMaster_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsExpGroupsDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsExpGroupsDetailLEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField;
    cdsExpGroupsDetailLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsExpGroupsDetail_DEV_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    tlbExpGroupsDetailToggles: TToolBar;
    btnToggleExpGroupsPlanAndOtch: TSpeedButton;
    sepShowWorkQuantities: TToolButton;
    btnExpGroupsDetailShowWorkQuantities: TToolButton;
    btnExpGroupsDetailShowAccountQuantities: TToolButton;
    actExpGroupsDetailShowWorkQuantities: TAction;
    actExpGroupsDetailShowAccountQuantities: TAction;
    cdsExpGroupsDetailPLAN_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsExpGroupsDetailOTCH_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsExpGroupsDetail_DEV_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsExpGroupsDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsSingleExpsLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsSingleExpsLEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField;
    cdsSingleExpsLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsSingleExpsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsSingleExpsPLAN_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsSingleExpsOTCH_ACCOUNT_QUANTITY: TAbmesFloatField;
    pdsSingleExpsSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    pdsSingleExpsLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    pdsSingleExpsRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    pdsSingleExps_COUNTRY_NAME: TAbmesWideStringField;
    pdsSingleExps_SALE_DEAL_TYPE_SHOW_NAME: TAbmesWideStringField;
    pdsSingleExps_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    tlbToggleSingleExpsPlanAndOtch: TToolBar;
    btnToggleSingleExpsPlanAndOtch2: TSpeedButton;
    sepBeforeSingleExpsShowWorkQuantities: TToolButton;
    cdsSingleExps_DEV_VALUE_ADDED: TAbmesFloatField;
    cdsSingleExps_DEV_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsSingleExps_DEV_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsSaleExpGroupsCompanyOffices: TAbmesClientDataSet;
    cdsSaleExpGroupsCompanyOfficesOFFICE_NAME: TAbmesWideStringField;
    pdsExpGroupsMaster_RECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField;
    cdsSingleExpsCompanyOffices: TAbmesClientDataSet;
    StringField1: TAbmesWideStringField;
    pdsSingleExps_RECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField;
    cdsSaleExpGroupsCompanyOfficesOFFICE_CODE: TAbmesFloatField;
    cdsSingleExpsCompanyOfficesOFFICE_CODE: TAbmesFloatField;
    pdsExpGroupsMasterMIN_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField;
    pdsExpGroupsMasterMAX_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField;
    cdsDataEXP_GROUP_STATE_CODE: TAbmesFloatField;
    cdsExpGroupsDetailSALE_SHIPMENT_STATE_CODE: TAbmesFloatField;
    cdsSingleExpsSALE_SHIPMENT_STATE_CODE: TAbmesFloatField;
    pdsSingleExpsMIN_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField;
    pdsSingleExpsMAX_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField;
    sepShowInvoice: TToolButton;
    cdsSingleExpsINVOICE_STATE_CODE: TAbmesFloatField;
    cdsExpGroupsDetailINVOICE_STATE_CODE: TAbmesFloatField;
    cdsSingleExpsRECEIVE_DATE_RSV: TAbmesFloatField;
    cdsSingleExpsIMPORT_DATE_RSV: TAbmesFloatField;
    cdsExpGroupsDetailRECEIVE_DATE_RSV: TAbmesFloatField;
    cdsExpGroupsDetailIMPORT_DATE_RSV: TAbmesFloatField;
    setBeforeTogglePlanOtch: TToolButton;
    btnExpGroupsDetailShowDates: TSpeedButton;
    btnExpGroupsDetailShowQty: TSpeedButton;
    actExpGroupsDetailShowQty: TAction;
    actExpGroupsDetailShowDates: TAction;
    pdsExpGroupsMasterBEGIN_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    pdsExpGroupsMasterEND_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    pdsExpGroupsMasterBEGIN_RECEIVE_DATE: TAbmesSQLTimeStampField;
    pdsExpGroupsMasterEND_RECEIVE_DATE: TAbmesSQLTimeStampField;
    pdsExpGroupsMasterBEGIN_IMPORT_DATE: TAbmesSQLTimeStampField;
    pdsExpGroupsMasterEND_IMPORT_DATE: TAbmesSQLTimeStampField;
    pdsExpGroupsMasterRECEIVE_DATE_BEGIN_RSV: TAbmesFloatField;
    pdsExpGroupsMasterRECEIVE_DATE_END_RSV: TAbmesFloatField;
    pdsExpGroupsMasterIMPORT_DATE_BEGIN_RSV: TAbmesFloatField;
    pdsExpGroupsMasterIMPORT_DATE_END_RSV: TAbmesFloatField;
    pdsSingleExpsBEGIN_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    pdsSingleExpsEND_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    pdsSingleExpsBEGIN_RECEIVE_DATE: TAbmesSQLTimeStampField;
    pdsSingleExpsEND_RECEIVE_DATE: TAbmesSQLTimeStampField;
    pdsSingleExpsBEGIN_IMPORT_DATE: TAbmesSQLTimeStampField;
    pdsSingleExpsEND_IMPORT_DATE: TAbmesSQLTimeStampField;
    pdsSingleExpsRECEIVE_DATE_BEGIN_RSV: TAbmesFloatField;
    pdsSingleExpsRECEIVE_DATE_END_RSV: TAbmesFloatField;
    pdsSingleExpsIMPORT_DATE_BEGIN_RSV: TAbmesFloatField;
    pdsSingleExpsIMPORT_DATE_END_RSV: TAbmesFloatField;
    sepSingleExps: TToolButton;
    lblSaleDealType: TLabel;
    lblLeaseGroupType: TLabel;
    edtSaleDealType: TDBEdit;
    edtLeaseGroupType: TDBEdit;
    lblSaleDealType2: TLabel;
    edtSaleDealType2: TDBEdit;
    lblLeaseDateUnit: TLabel;
    edtLeaseDateUnit: TDBEdit;
    cdsSingleExpsRECEIVE_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsSingleExpsIMPORT_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsExpGroupsDetailRECEIVE_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsExpGroupsDetailIMPORT_PLAN_DATE: TAbmesSQLTimeStampField;
    btnSingleExpsShipmentDate: TSpeedButton;
    btnSingleExpsReceiveDate: TSpeedButton;
    btnSingleExpsImportDate: TSpeedButton;
    btnToggleExpGroupsPlanAndOtch2: TSpeedButton;
    btnToggleSingleExpsPlanAndOtch: TSpeedButton;
    cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField;
    cdsExpGroupsDetailRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsExpGroupsDetailIMPORT_DATE: TAbmesSQLTimeStampField;
    cdsSingleExpsRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsSingleExpsIMPORT_DATE: TAbmesSQLTimeStampField;
    pdsSingleExpsHAS_DELIVERY: TAbmesFloatField;
    pdsSingleExpsDCD_BRANCH_CODE: TAbmesFloatField;
    pdsSingleExpsDCD_CODE: TAbmesFloatField;
    pdsSingleExpsDELIVERY_PROJECT_CODE: TAbmesFloatField;
    pdsSingleExps_DCD_BRANCH: TAbmesWideStringField;
    pdsSingleExpsDAMAGES_STATE_CODE: TAbmesFloatField;
    cdsExpGroupsDetailDAMAGES_STATE_CODE: TAbmesFloatField;
    cdsSingleExpsDAMAGES_STATE_CODE: TAbmesFloatField;
    pdsExpGroupsMasterDAMAGES_STATE_CODE: TAbmesFloatField;
    btnExceptEvents: TBitBtn;
    actGroupExpsExceptEvents: TAction;
    cdsExceptEventsParams: TAbmesClientDataSet;
    cdsExceptEventsParamsMAX_STATE_CODE: TAbmesFloatField;
    cdsExceptEventsParamsIS_FILTERED_BY_DAMAGES: TAbmesFloatField;
    cdsExceptEventsParamsEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField;
    cdsExceptEventsParamsSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsExceptEventsParamsSHIPMENT_OBJECT_CODE: TAbmesFloatField;
    cdsExpGroupsDetailSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsExpGroupsDetailSHIPMENT_OBJECT_CODE: TAbmesFloatField;
    cdsSingleExpsSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsSingleExpsSHIPMENT_OBJECT_CODE: TAbmesFloatField;
    btnSingleExpsExceptEvents: TBitBtn;
    actSingleExpsExceptEvents: TAction;
    cdsDataEXP_GROUP_DAMAGES_STATE_CODE: TAbmesFloatField;
    pdsExpGroupsMaster_PRODUCT_CLASS_CODE: TAbmesFloatField;
    pdsSingleExps_PRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsSingleExps_SUM_PLAN_QUANTITY: TAggregateField;
    cdsSingleExps_SUM_PLAN_ACCOUNT_QUANTITY: TAggregateField;
    cdsSingleExps_SUM_OTCH_QUANTITY: TAggregateField;
    cdsSingleExps_SUM_OTCH_ACCOUNT_QUANTITY: TAggregateField;
    cdsSingleExpsMEASURE_CODE: TAbmesFloatField;
    cdsSingleExpsACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsSingleExps_MIN_MEASURE_CODE: TAggregateField;
    cdsSingleExps_MAX_MEASURE_CODE: TAggregateField;
    cdsSingleExps_MIN_ACCOUNT_MEASURE_CODE: TAggregateField;
    cdsSingleExps_MAX_ACCOUNT_MEASURE_CODE: TAggregateField;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    pnlShowInvoice: TPanel;
    btnShowInvoice: TSpeedButton;
    pdsExpGroupsMasterCHOSEN_COMPANIES: TAbmesWideStringField;
    pdsSingleExpsCHOSEN_COMPANIES: TAbmesWideStringField;
    cdsSingleExpsHAS_FIN_ORDER: TAbmesFloatField;
    cdsSingleExpsINVOICE_DATA_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsSingleExpsINVOICE_DATA_SINGLE_PRICE: TAbmesFloatField;
    cdsSingleExpsINVOICE_DATA_MARKET_SNGL_PRICE: TAbmesFloatField;
    cdsSingleExpsINVOICE_DATA_DISCOUNT_PERCENT: TAbmesFloatField;
    cdsSingleExpsINVOICE_DATA_CURRENCY_CODE: TAbmesFloatField;
    cdsSingleExpsINVOICE_DATA_SSH_IDENTIFIER: TAbmesWideStringField;
    cdsSingleExps_SUM_DEV_QUANTITY: TAggregateField;
    cdsSingleExps_SUM_DEV_ACCOUNT_QUANTITY: TAggregateField;
    cdsSingleExps_SUM_DEV_VALUE_ADDED: TAggregateField;
    cdsCountriesI_COUNTRY_ABBREV: TAbmesWideStringField;
    cdsCountriesI_COUNTRY_NAME: TAbmesWideStringField;
    cdsDataCLIENT_STATUS_NAME: TAbmesWideStringField;
    cdsDataIS_VENDOR_TRANSPORT: TAbmesFloatField;
    cdsData_DEV_TRANSPORT_QUANTITY: TAbmesWideStringField;
    btnIsLease: TSpeedButton;
    btnSingleExpsShowWorkQuantities: TSpeedButton;
    btnSingleExpsShowAccountQuantities: TSpeedButton;
    cdsDataCLIENT_COMPANY_NO: TAbmesFloatField;
    cdsSingleExpsCLIENT_COMPANY_NO: TAbmesFloatField;
    cdsData_SUM_PLAN_TRANSPORT_QUANTITY: TAggregateField;
    cdsData_SUM_OTCH_TRANSPORT_QUANTITY: TAggregateField;
    cdsData_SUM_DEV_TRANSPORT_QUANTITY: TAggregateField;
    cdsData_MAX_TRANSPORT_MEASURE_CODE: TAggregateField;
    cdsData_MIN_TRANSPORT_MEASURE_CODE: TAggregateField;
    cdsData_MIN_TRANSPORT_MEASURE_ABBREV: TAggregateField;
    pdsExpGroupsMasterBRANCH_CODE: TAbmesFloatField;
    pdsExpGroupsMaster_SALE_BRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsExpGroupsDetailIS_VENDOR_TRANSPORT: TAbmesFloatField;
    pdsSingleExpsMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsExpGroupsDetail_SUM_PLAN_QUANTITY: TAggregateField;
    cdsExpGroupsDetail_SUM_PLAN_ACCOUNT_QUANTITY: TAggregateField;
    cdsExpGroupsDetail_SUM_PLAN_TRANSPORT_QUANTITY: TAggregateField;
    cdsExpGroupsDetail_SUM_OTCH_QUANTITY: TAggregateField;
    cdsExpGroupsDetail_SUM_OTCH_ACCOUNT_QUANTITY: TAggregateField;
    cdsExpGroupsDetail_SUM_OTCH_TRANSPORT_QUANTITY: TAggregateField;
    cdsExpGroupsDetail_SUM_DEV_QUANTITY: TAggregateField;
    cdsExpGroupsDetail_SUM_DEV_ACCOUNT_QUANTITY: TAggregateField;
    cdsExpGroupsDetailMEASURE_CODE: TAbmesFloatField;
    cdsExpGroupsDetailACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsExpGroupsDetailTRANSPORT_MEASURE_CODE: TAbmesFloatField;
    cdsExpGroupsDetail_MIN_MEASURE_CODE: TAggregateField;
    cdsExpGroupsDetail_MAX_MEASURE_CODE: TAggregateField;
    cdsExpGroupsDetail_MIN_ACCOUNT_MEASURE_CODE: TAggregateField;
    cdsExpGroupsDetail_MAX_ACCOUNT_MEASURE_CODE: TAggregateField;
    cdsExpGroupsDetail_MIN_TRANSPORT_MEASURE_CODE: TAggregateField;
    cdsExpGroupsDetail_MAX_TRANSPORT_MEASURE_CODE: TAggregateField;
    cdsExpGroupsDetailSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsExpGroupsDetail_SALE_DEAL_TYPE_SHOW_NAME: TAbmesWideStringField;
    cdsSingleExpsSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsSingleExps_SALE_DEAL_TYPE_SHOW_NAME: TAbmesWideStringField;
    cdsSaleDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsSingleExpsRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField;
    cdsExpGroupsDetailCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsSingleExpsCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    procedure actFilterExpGroupsExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pcSalesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure grdExpGroupsMasterGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure cdsExpGroupsDetailCalcFields(DataSet: TDataSet);
    procedure grdExpGroupsDetailGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure btnShowAnnuledLinesClick(Sender: TObject);
    procedure pdsExpGroupsMaster_COMPANY_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pcSalesChanging(Sender: TObject; var AllowChange: Boolean);
    procedure pdsSingleExpsPRODUCT_CODEChange(Sender: TField);
    procedure actFilterSingleExpsExecute(Sender: TObject);
    procedure grdSingleExpsGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure cdsSingleExpsCalcFields(DataSet: TDataSet);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure actEditSaleExecute(Sender: TObject);
    procedure actEditSaleFromGroupsExecute(Sender: TObject);
    procedure pdsExpGroupsMasterPRODUCT_CODEChange(Sender: TField);
    procedure pdsExpGroupsMaster_BRANCH_CODE_AND_NAMEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure pdsSingleExps_SALE_BRANCH_CODE_AND_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actFilterSingleExpsUpdate(Sender: TObject);
    procedure actFilterExpGroupsUpdate(Sender: TObject);
    procedure grdExpGroupsMasterDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure grdExpGroupsDetailDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure grdSingleExpsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure grdSingleExpsSortMarkingChanged(Sender: TObject);
    procedure cdsExpGroupsDetailBeforeOpen(DataSet: TDataSet);
    procedure cdsSingleExpsBeforeOpen(DataSet: TDataSet);
    procedure pdsSingleExps_SALE_ORDER_TYPE_ABBREVGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actEditSaleFromGroupsUpdate(Sender: TObject);
    procedure actEditSaleUpdate(Sender: TObject);
    procedure pdsSingleExpsPRODUCT_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsExpGroupsMasterPRODUCT_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsSingleExps_COMPANY_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDataUNCOVERED_LINESGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsExpGroupsDetailUNCOVERED_LINESGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsSingleExpsUNCOVERED_LINESGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actPrint1stPageUpdate(Sender: TObject);
    procedure actPrint2ndPageUpdate(Sender: TObject);
    procedure actPrint1stPageExecute(Sender: TObject);
    procedure actPrint2ndPageExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsExpGroupsDetailAfterOpen(DataSet: TDataSet);
    procedure pdsSingleExpsPRODUCTION_DEPT_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsSingleExpsPRODUCTION_DEPT_CODEChange(Sender: TField);
    procedure pdsExpGroupsMaster_COUNTRY_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsSingleExps_SALE_TYPE_ABBREVGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsSingleExpsCOUNTRY_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDataBeforeClose(DataSet: TDataSet);
    procedure navSingleExpsBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure navExpGroupsMasterBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure btnDocumentationClick(Sender: TObject);
    procedure btnDocumentation2Click(Sender: TObject);
    procedure actExcelExportExpGroupsUpdate(Sender: TObject);
    procedure actExcelExportExpGroupsExecute(Sender: TObject);
    procedure actExcelExportSingleExpsUpdate(Sender: TObject);
    procedure actExcelExportSingleExpsExecute(Sender: TObject);
    procedure actShipmentNeededMaterialsExecute(Sender: TObject);
    procedure cdsExpGroupsDetailPLAN_VALUE_GAINEDGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsSingleExpsAfterOpen(DataSet: TDataSet);
    procedure actShowProductVIMForExpFromGroupUpdate(Sender: TObject);
    procedure actShowProductVIMForExpFromGroupExecute(Sender: TObject);
    procedure actShowVIMForSingleExpExecute(Sender: TObject);
    procedure actShowVIMForSingleExpUpdate(Sender: TObject);
    procedure pdsExpGroupsMasterBeforePost(DataSet: TDataSet);
    procedure cdsSaleDealTypesCalcFields(DataSet: TDataSet);
    procedure pdsExpGroupsMaster_LEASE_DATE_UNIT_NAMEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure pdsExpGroupsMaster_SALE_DEAL_TYPE_SHOW_NAMEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure pdsExpGroupsMasterSALE_DEAL_TYPE_CODEChange(Sender: TField);
    procedure actExpGroupsDetailShowWorkQuantitiesExecute(Sender: TObject);
    procedure actExpGroupsDetailShowAccountQuantitiesExecute(
      Sender: TObject);
    procedure pdsSingleExps_COUNTRY_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure pdsSingleExps_SALE_DEAL_TYPE_SHOW_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure pdsSingleExps_LEASE_DATE_UNIT_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsSaleExpGroupsCompanyOfficesBeforeOpen(DataSet: TDataSet);
    procedure cdsSingleExpsCompanyOfficesBeforeOpen(DataSet: TDataSet);
    procedure cdsDataEXP_GROUP_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsSingleExpsSALE_SHIPMENT_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsExpGroupsDetailSALE_SHIPMENT_STATE_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsExpGroupsDetailINVOICE_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsSingleExpsINVOICE_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actExpGroupsDetailShowQtyExecute(Sender: TObject);
    procedure actExpGroupsDetailShowDatesExecute(Sender: TObject);
    procedure pdsExpGroupsMasterLEASE_GROUP_TYPEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure btnToggleExpGroupsPlanAndOtch2Click(Sender: TObject);
    procedure btnToggleExpGroupsPlanAndOtchClick(Sender: TObject);
    procedure cdsCountriesAfterOpen(DataSet: TDataSet);
    procedure cdsSingleExpsDAMAGES_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actGroupExpsExceptEventsUpdate(Sender: TObject);
    procedure actGroupExpsExceptEventsExecute(Sender: TObject);
    procedure cdsExpGroupsDetailDAMAGES_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actSingleExpsExceptEventsUpdate(Sender: TObject);
    procedure actSingleExpsExceptEventsExecute(Sender: TObject);
    procedure cdsDataEXP_GROUP_DAMAGES_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actShipmentNeededMaterialsUpdate(Sender: TObject);
    procedure cdsDataBeforeOpen(DataSet: TDataSet);
    procedure pdsExpGroupsMasterCalcFields(DataSet: TDataSet);
    procedure pdsSingleExpsCalcFields(DataSet: TDataSet);
    procedure cdsSingleExps_SUM_PLAN_QUANTITYGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsSingleExps_SUM_PLAN_ACCOUNT_QUANTITYGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsSingleExps_SUM_OTCH_QUANTITYGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsSingleExps_SUM_OTCH_ACCOUNT_QUANTITYGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsSingleExps_MIN_MEASURE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsSingleExps_MIN_ACCOUNT_MEASURE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure pdsExpGroupsMasterCHOSEN_COMPANIESChange(Sender: TField);
    procedure pdsSingleExpsCHOSEN_COMPANIESChange(Sender: TField);
    procedure cdsSingleExps_SUM_DEV_QUANTITYGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsSingleExps_SUM_DEV_ACCOUNT_QUANTITYGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsData_SUM_PLAN_TRANSPORT_QUANTITYGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsData_SUM_OTCH_TRANSPORT_QUANTITYGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsData_SUM_DEV_TRANSPORT_QUANTITYGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsData_MIN_TRANSPORT_MEASURE_ABBREVGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsExpGroupsDetail_SUM_PLAN_QUANTITYGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsExpGroupsDetail_SUM_OTCH_QUANTITYGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsExpGroupsDetail_SUM_DEV_QUANTITYGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsExpGroupsDetail_SUM_PLAN_ACCOUNT_QUANTITYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsExpGroupsDetail_SUM_OTCH_ACCOUNT_QUANTITYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsExpGroupsDetail_SUM_DEV_ACCOUNT_QUANTITYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsExpGroupsDetail_SUM_PLAN_TRANSPORT_QUANTITYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsExpGroupsDetail_SUM_OTCH_TRANSPORT_QUANTITYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsSaleDealTypesAfterOpen(DataSet: TDataSet);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FSaveCursor: TCursor;
    FPreviousActivePage: TTabSheet;
    FFilterFormEnabled: Boolean;
    FInvoiceItemsDataSet: TDataSet;
    function EditSale(ADataSet: TDataSet; ASaleOrderTypeCode: Integer = -1): Boolean;
    procedure SetExpGroupsDetailColumns;
    procedure RefreshSaleExpGroupsCompanyOffices;
    procedure RefreshSingleExpsCompanyOffices;
    procedure ShowExceptEvents(AShipmentObjectBranchCode,
      AShipmentObjectCode: Integer);
    procedure AddInvoiceItems;
    procedure TotalQuantityFieldGetText(AMinMeasureCodeField, AMaxMeasureCodeField, Sender: TField; var Text: string; DisplayText: Boolean);
  protected
    class function CanUseDocs: Boolean; override;
    function GetOriginalFormCaption: string; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoBeforeShow; override;
    procedure DoAfterHide; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetApplyUpdatesEnabled: Boolean; override;
    procedure DoApplyUpdates; override;
  public
    procedure Initialize; override;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNone;
      AInvoiceItemsDataSet: TDataSet = nil): Boolean;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNone;
      AInvoiceItemsDataSet: TDataSet = nil); reintroduce; virtual;
    class function CanEditOuterDataSet: Boolean; override;
    function SupportsFilterForm: Boolean; override;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  Variants, dMain, fSaleExpGroupsFilter, uClientUtils, uUtils, uColorConsts,
  fSingleExpsFilter, uSaleOrderTypes, fSale, fQuickSale, fGroupSale,
  rSaleExpGroups, rSingleExps, uSalesClientUtils, uSalesCommon, uExcelExport,
  fShipmentNeededMaterials, uTreeClientUtils, AbmesDialogs,
  uUserActivityConsts, uClientConsts, fVIMQuantity, uOpenVIMConsts,
  uTreeNodes, uSaleDealTypes, uExceptEventClientUtils, Math, fExceptEvents,
  uProductClientUtils, uClientDateTime, uCompanyClientUtils, uToolbarUtils,
  uEnumeratorUtils, StrUtils, uParRelProducts;

{$R *.DFM}

const
  SortIndexName = 'idxGRID_SORT';

resourcestring
  SRows = ' реда ';
  SConfirmDetailExcelExportMessage = 'Желате ли експорт на експедициите на всяка група?';
  SNo = 'Не';
  SProformState = 'П';
  SInvoiceState = 'Ф';
  SLeaseGroupType1= 'Експедиция на УОб Продавани';
  SLeaseGroupType2= 'Връщане на Наети от Клиент УОб';
  SAllExternalCountries = '< всички външни >';

const
  InvoiceStates: array[0..2] of string = ('', SProformState, SInvoiceState);

{ TfmSaleExpGroups }

procedure TfmSaleExpGroups.CloseDataSets;
begin
  inherited;
  cdsData.Close;
  cdsPriorities.Close;
  cdsSingleExps.Close;
  cdsBranches.Close;
  cdsSaleTypes.Close;
  cdsCountries.Close;
  cdsSaleOrderTypes.Close;
  cdsMeasures.Close;
end;

procedure TfmSaleExpGroups.DoAfterHide;
begin
  inherited;
  pdsExpGroupsMaster.Close;
  pdsSingleExps.Close;
end;

procedure TfmSaleExpGroups.DoApplyUpdates;
begin
  inherited;
  AddInvoiceItems;
end;

procedure TfmSaleExpGroups.DoBeforeShow;
var
  SaveCursor: TCursor;
  b: Boolean;
  cds: TAbmesClientDataSet;
  ActivePage: Integer;
  MsgParams: TStrings;
begin
  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  pdsExpGroupsMaster.Open;
  pdsSingleExps.Open;

  inherited;

  pcSales.ActivePage:= tsExpGroups;

  if Assigned(FInvoiceItemsDataSet) then
    begin
      ActivePage:= 2;
      tsExpGroups.TabVisible:= False;
      grdSingleExps.Options:= grdSingleExps.Options + [dgRowSelect, dgMultiSelect];
    end
  else
    begin
      ActivePage:= LoginContext.DefaultSalesExpActivePage;
      tsExpGroups.TabVisible:= True;
      // do not change grid options
    end;

  case ActivePage of
    1:
      begin
        b:= not FFilterFormEnabled or TfmSaleExpGroupsFilter.ShowForm(dmDocClient, pdsExpGroupsMaster, emEdit, doNone, FProductClass);
        cds:= cdsData;
        FPreviousActivePage:= tsExpGroups;
      end;
    2:
      begin
        b:= not FFilterFormEnabled or TfmSingleExpsFilter.ShowForm(dmDocClient, pdsSingleExps, emEdit, doNone, FProductClass, Assigned(FInvoiceItemsDataSet));
        cds:= cdsSingleExps;
        FPreviousActivePage:= tsSingleExps;
      end;
  else   { case }
    raise Exception.Create('Internal error: Unknown default page index');
  end;   { case }
  if not b then
    Abort;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    cds.Open;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmSaleExpGroups.OpenDataSets;
var
  SaveCursor: TCursor;
begin
  Application.ProcessMessages;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    cdsBranches.Open;
    cdsSaleTypes.Open;
    cdsCountries.Open;
    cdsSaleOrderTypes.Open;
    cdsPriorities.Open;
    cdsMeasures.Open;
  finally
    Screen.Cursor:= SaveCursor;
  end;

  // workaround: tyi kato inherited otvaria cdsData, a nie ne shtem da go otvorim dokato user-a ne
  // ne smeni syotvetnata stranica ot pagecontrola - lyjem inherited
  dsData.DataSet:= nil;
  try
    inherited OpenDataSets;
  finally
    dsData.DataSet:= cdsData;
  end;
end;

procedure TfmSaleExpGroups.actFilterExpGroupsExecute(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  inherited;
  if TfmSaleExpGroupsFilter.ShowForm(dmDocClient, pdsExpGroupsMaster, emEdit, doNone, FProductClass) then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        RefreshDataSet(cdsData);
      finally
        Screen.Cursor:= SaveCursor;
      end;
    end;
end;

procedure TfmSaleExpGroups.FormShow(Sender: TObject);
begin
  inherited;
  pcSales.ActivePage:= FPreviousActivePage;
  lblComment.Caption:= FormatSecondaryCurrencyAbbrevString(lblComment.Caption);
  SetExpGroupsDetailColumns;
end;

function TfmSaleExpGroups.GetApplyUpdatesEnabled: Boolean;
begin
  Result:=
    inherited GetApplyUpdatesEnabled or
    (Assigned(FInvoiceItemsDataSet) and (grdSingleExps.SelectedRows.Count > 0));
end;

function TfmSaleExpGroups.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmSaleExpGroups.pcSalesChange(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  inherited;

  if (Sender as TPageControl).ActivePage = tsSingleExps then
    begin
      if not cdsSingleExps.Active then
        begin
          if not FFilterFormEnabled or
             TfmSingleExpsFilter.ShowForm(dmDocClient, pdsSingleExps, emEdit, doNone, FProductClass, Assigned(FInvoiceItemsDataSet)) then
            begin
              SaveCursor:= Screen.Cursor;
              Screen.Cursor:= crSQLWait;
              try
                cdsSingleExps.Open
              finally
                Screen.Cursor:= SaveCursor;
              end;
            end
          else
            pcSales.ActivePage:= FPreviousActivePage;
        end;
    end
  else
  if (Sender as TPageControl).ActivePage = tsExpGroups then
    begin
      if not cdsData.Active then
        begin
          if not FFilterFormEnabled or
             TfmSaleExpGroupsFilter.ShowForm(dmDocClient, pdsExpGroupsMaster, emEdit, doNone, FProductClass) then
            begin
              SaveCursor:= Screen.Cursor;
              Screen.Cursor:= crSQLWait;
              try
                cdsData.Open
              finally
                Screen.Cursor:= SaveCursor;
              end;
            end
          else
            pcSales.ActivePage:= FPreviousActivePage;
        end;
    end
end;

procedure TfmSaleExpGroups.FormCreate(Sender: TObject);
begin
  inherited;
  FPreviousActivePage:= tsExpGroups;
  InitializeAbmesDBGrid(grdExpGroupsMaster, False);
  InitializeAbmesDBGrid(grdExpGroupsDetail);
  InitializeAbmesDBGrid(grdSingleExps);

  RegisterDateFields(cdsData);
  RegisterDateFields(cdsExpGroupsDetail);
  RegisterDateFields(cdsSingleExps);

  frSaleExpsDateInterval.FieldNames:= 'BEGIN_SHIPMENT_DATE;END_SHIPMENT_DATE';
  frSingleExpsDateInterval.FieldNames:= 'BEGIN_SHIPMENT_DATE;END_SHIPMENT_DATE';

  MaximizeStyle:= msVertical;

  RegisterFieldsTextVisibility(
    IsSalePriceVisible,
    [ cdsDataPLAN_VALUE_GAINED,
      cdsData_SUM_PLAN_VALUE_GAINED,
      cdsDataOTCH_VALUE_GAINED,
      cdsData_SUM_OTCH_VALUE_GAINED,
      cdsData_DEV_VALUE_GAINED,
      cdsData_SUM_DEV_VALUE_GAINED,
      cdsExpGroupsDetailPLAN_VALUE_GAINED,
      cdsExpGroupsDetail_DEV_VALUE_GAINED,
      cdsExpGroupsDetailOTCH_VALUE_GAINED,
      cdsSingleExpsPLAN_VALUE_GAINED,
      cdsSingleExps_SUM_PLAN_VALUE_GAINED,
      cdsSingleExpsOTCH_VALUE_GAINED,
      cdsSingleExps_SUM_OTCH_VALUE_GAINED]);

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,  
    [ cdsDataPLAN_VALUE_INVESTED,
      cdsDataOTCH_VALUE_INVESTED,
      cdsExpGroupsDetailPLAN_VALUE_INVESTED,
      cdsExpGroupsDetailOTCH_VALUE_INVESTED,
      cdsSingleExpsPLAN_VALUE_INVESTED,
      cdsSingleExpsOTCH_VALUE_INVESTED]);

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedAndSalePriceVisible,
    [ cdsData_OTCH_PERCENT,
      cdsData_PLAN_VALUE_ADDED,
      cdsData_SUM_PLAN_VALUE_ADDED,
      cdsData_PLAN_PERCENT,
      cdsData_AVG_PLAN_PERCENT,
      cdsData_OTCH_VALUE_ADDED,
      cdsData_SUM_OTCH_VALUE_ADDED,
      cdsData_DEV_VALUE_ADDED,
      cdsData_SUM_DEV_VALUE_ADDED,
      cdsData_AVG_OTCH_PERCENT,

      cdsExpGroupsDetail_PLAN_VALUE_ADDED,
      cdsExpGroupsDetail_PLAN_PERCENT,
      cdsExpGroupsDetail_DEV_VALUE_ADDED,
      cdsExpGroupsDetail_OTCH_PERCENT,
      cdsExpGroupsDetail_OTCH_VALUE_ADDED,

      cdsSingleExps_PLAN_VALUE_ADDED,
      cdsSingleExps_SUM_PLAN_VALUE_ADDED,
      cdsSingleExps_PLAN_PERCENT,
      cdsSingleExps_AVG_PLAN_PERCENT,
      cdsSingleExps_DEV_VALUE_ADDED,
      cdsSingleExps_SUM_DEV_VALUE_ADDED,
      cdsSingleExps_OTCH_VALUE_ADDED,
      cdsSingleExps_OTCH_PERCENT,
      cdsSingleExps_SUM_OTCH_VALUE_ADDED,
      cdsSingleExps_AVG_OTCH_PERCENT]);
end;

procedure TfmSaleExpGroups.cdsDataCalcFields(DataSet: TDataSet);
const
  eps = 0.00001;
begin
  inherited;

  cdsData_PLAN_VALUE_ADDED.AsVarFloat:=
    cdsDataPLAN_VALUE_GAINED.AsFloat -
    cdsDataPLAN_VALUE_INVESTED.AsFloat;

  if (cdsDataPLAN_VALUE_GAINED.AsFloat = 0) then
    cdsData_PLAN_PERCENT.Clear
  else
    cdsData_PLAN_PERCENT.AsFloat:=
      100 *
      cdsData_PLAN_VALUE_ADDED.AsFloat/
      cdsDataPLAN_VALUE_GAINED.AsFloat;

  cdsData_OTCH_VALUE_ADDED.AsFloat:=
    cdsDataOTCH_VALUE_GAINED.AsFloat -
    cdsDataOTCH_VALUE_INVESTED.AsFloat;

  if Abs(cdsData_OTCH_VALUE_ADDED.AsFloat) < eps then
    cdsData_OTCH_VALUE_ADDED.Clear;

  if (cdsDataOTCH_VALUE_GAINED.AsFloat = 0) or
     cdsDataOTCH_VALUE_INVESTED.IsNull then
    cdsData_OTCH_PERCENT.Clear
  else
    cdsData_OTCH_PERCENT.AsFloat:=
      100 *
      cdsData_OTCH_VALUE_ADDED.AsFloat/
      cdsDataOTCH_VALUE_GAINED.AsFloat;

  if cdsDataIS_OTCH.AsFloat = 1 then
    cdsData_DEV_TIME.AsFloat:=
      cdsDataAVG_TIME_DEV.AsFloat
  else
    cdsData_DEV_TIME.AsFloat:=
      cdsDataSHIPMENT_DATE.AsDateTime -
      ContextDate();

  cdsData_DEV_VALUE_ADDED.AsFloat:=
    cdsData_OTCH_VALUE_ADDED.AsFloat -
    cdsData_PLAN_VALUE_ADDED.AsFloat;

  cdsData_DEV_VALUE_GAINED.AsFloat:=
    cdsDataOTCH_VALUE_GAINED.AsFloat -
    cdsDataPLAN_VALUE_GAINED.AsFloat;

  if VarToFloat(cdsData_SUM_PLAN_VALUE_GAINED.Value) = 0 then
    cdsData_AVG_PLAN_PERCENT.AsFloat:= 0
  else
    cdsData_AVG_PLAN_PERCENT.AsFloat:=
      VarToFloat(cdsData_SUM_PLAN_VALUE_ADDED.Value) /
      VarToFloat(cdsData_SUM_PLAN_VALUE_GAINED.Value) * 100;

  if VarToFloat(cdsData_SUM_OTCH_VALUE_GAINED.Value) = 0 then
    cdsData_AVG_OTCH_PERCENT.AsFloat:= 0
  else
    cdsData_AVG_OTCH_PERCENT.AsFloat:=
      VarToFloat(cdsData_SUM_OTCH_VALUE_ADDED.Value) /
      VarToFloat(cdsData_SUM_OTCH_VALUE_GAINED.Value) * 100;

  if (cdsDataMIN_TRANSPORT_MEASURE_CODE.AsFloat = cdsDataMAX_TRANSPORT_MEASURE_CODE.AsFloat) and
     (not cdsDataMIN_TRANSPORT_MEASURE_CODE.IsNull) and (not cdsDataMAX_TRANSPORT_MEASURE_CODE.IsNull) then
    begin
      cdsData_PLAN_TRANSPORT_QUANTITY.AsString:= FormatFloat(',#', cdsDataPLAN_TRANSPORT_QUANTITY.AsFloat);
      cdsData_OTCH_TRANSPORT_QUANTITY.AsString:= FormatFloat(',#', cdsDataOTCH_TRANSPORT_QUANTITY.AsFloat);
      cdsData_DEV_TRANSPORT_QUANTITY.AsString:= FormatFloat(',#', cdsDataOTCH_TRANSPORT_QUANTITY.AsFloat - cdsDataPLAN_TRANSPORT_QUANTITY.AsFloat);
      cdsData_TRANSPORT_MEASURE_ABBREV.AsString:= cdsDataTRANSPORT_MEASURE_ABBREV.AsString;
    end
  else
    begin
      cdsData_PLAN_TRANSPORT_QUANTITY.AsString:= SDiferentMeasurements;
      cdsData_OTCH_TRANSPORT_QUANTITY.AsString:= SDiferentMeasurements;
      cdsData_DEV_TRANSPORT_QUANTITY.AsString:= SDiferentMeasurements;
      cdsData_TRANSPORT_MEASURE_ABBREV.Clear;
    end;
end;

procedure TfmSaleExpGroups.cdsDataEXP_GROUP_DAMAGES_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ProcessDamgedStateFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsDataEXP_GROUP_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= SaleStateDisplayText(Sender.AsInteger, 50, Canvas);
end;

procedure TfmSaleExpGroups.grdExpGroupsMasterGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
const
  eps = -0.5;
var
  Highlight: Boolean;
  Field: TField;

begin
  inherited;

  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if Field.DataSet.Bof and Field.DataSet.Eof then
    Exit;

  if (Field = cdsDataEXP_GROUP_STATE_CODE) then
    begin
      if ValidSaleState(cdsDataEXP_GROUP_STATE_CODE.AsInteger) and not Highlight then
        Background:= SaleStateBackgroundColors[cdsDataEXP_GROUP_STATE_CODE.AsInteger];
    end
  else
    begin
      if (Field.FieldName = 'MIN_TIME_DEV') and
         (Field.AsFloat < eps) then
        begin
          if Highlight then
            Background:= ccNegativeDevSelected
          else
            Background:= ccNegativeDevNotSelected;
        end
      else
        begin
          if (Field.FieldName = 'SHIPMENT_DATE') and (not Highlight) then
            Background:= SaleExpGroupDateStateColors[Field.DataSet.FieldByName('GROUP_DATE_STATUS_CODE').AsInteger]
          else
            begin
              if (Field.FieldName = 'UNCOVERED_LINES') and (Field.DataSet.FieldByName('UNCOVERED_LINES').AsFloat > 0) then
                begin
                  if Highlight then
                    Background:= ccNegativeDevSelected
                  else
                    Background:= ccNegativeDevNotSelected;
                end
              else
                begin
                  if (Pos('_RSV', Field.FieldName) = Length(Field.FieldName) - 3) and
                     (Field is TAbmesFloatField) and
                     ((Field as TAbmesFloatField).AsFloat < 0) then
                    AFont.Color:= clRed;
                end;
            end;
        end;
    end;

  if (Field = cdsDataEXP_GROUP_DAMAGES_STATE_CODE) then
    DamagesStateColumnBackground(Field, Background);
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetailCalcFields(DataSet: TDataSet);
const
  eps = 0.00001;
begin
  inherited;

  cdsExpGroupsDetail_PLAN_VALUE_ADDED.Value:=
    cdsExpGroupsDetailPLAN_VALUE_GAINED.Value -
    cdsExpGroupsDetailPLAN_VALUE_INVESTED.Value;

  if cdsExpGroupsDetailPLAN_VALUE_GAINED.AsFloat = 0 then
    cdsExpGroupsDetail_PLAN_PERCENT.Clear
  else
    cdsExpGroupsDetail_PLAN_PERCENT.Value:=
      100 *
      cdsExpGroupsDetail_PLAN_VALUE_ADDED.Value/
      cdsExpGroupsDetailPLAN_VALUE_GAINED.AsFloat;

  cdsExpGroupsDetail_OTCH_VALUE_ADDED.AsFloat:=
    cdsExpGroupsDetailOTCH_VALUE_GAINED.AsFloat -
    cdsExpGroupsDetailOTCH_VALUE_INVESTED.AsFloat;

  if Abs(cdsExpGroupsDetail_OTCH_VALUE_ADDED.AsFloat) < eps then
    cdsExpGroupsDetail_OTCH_VALUE_ADDED.Clear;

  if cdsExpGroupsDetailOTCH_VALUE_GAINED.AsFloat = 0 then
    cdsExpGroupsDetail_OTCH_PERCENT.Clear
  else
    cdsExpGroupsDetail_OTCH_PERCENT.Value:=
      100 *
      cdsExpGroupsDetail_OTCH_VALUE_ADDED.Value/
      cdsExpGroupsDetailOTCH_VALUE_GAINED.AsFloat;

  cdsExpGroupsDetail_DEV_QUANTITY.AsFloat:=
    cdsExpGroupsDetailOTCH_QUANTITY.AsFloat -
    cdsExpGroupsDetailPLAN_QUANTITY.AsFloat;

  cdsExpGroupsDetail_DEV_ACCOUNT_QUANTITY.AsFloat:=
    cdsExpGroupsDetailOTCH_ACCOUNT_QUANTITY.AsFloat -
    cdsExpGroupsDetailPLAN_ACCOUNT_QUANTITY.AsFloat;

  cdsExpGroupsDetail_DEV_VALUE_ADDED.AsFloat:=
    cdsExpGroupsDetail_OTCH_VALUE_ADDED.AsFloat -
    cdsExpGroupsDetail_PLAN_VALUE_ADDED.AsFloat;

  cdsExpGroupsDetail_DEV_VALUE_GAINED.AsFloat:=
    cdsExpGroupsDetailOTCH_VALUE_GAINED.AsFloat -
    cdsExpGroupsDetailPLAN_VALUE_GAINED.AsFloat;

  if cdsExpGroupsDetailLEASE_PLAN_DATE_UNIT_QTY.IsNull then
    cdsExpGroupsDetail_DEV_LEASE_DATE_UNIT_QTY.Clear
  else
    cdsExpGroupsDetail_DEV_LEASE_DATE_UNIT_QTY.AsFloat:=
      cdsExpGroupsDetailLEASE_DATE_UNIT_QTY.AsFloat -
      cdsExpGroupsDetailLEASE_PLAN_DATE_UNIT_QTY.AsFloat;
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetailDAMAGES_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ProcessDamgedStateFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetailINVOICE_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= InvoiceStates[Sender.AsInteger];
end;

procedure TfmSaleExpGroups.grdExpGroupsDetailGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
const
  eps = -0.5;
var
  Highlight: Boolean;
  Field: TField;

begin
  inherited;

  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if not Assigned(Field) or (Field.DataSet.Bof and Field.DataSet.Eof) then
    Exit;

  if (Field = cdsExpGroupsDetailSALE_SHIPMENT_STATE_CODE) then
    begin
      if ValidSaleState(cdsExpGroupsDetailSALE_SHIPMENT_STATE_CODE.AsInteger) and not Highlight then
        Background:= SaleStateBackgroundColors[cdsExpGroupsDetailSALE_SHIPMENT_STATE_CODE.AsInteger];
    end;

  if Field.DataSet.FieldByName('IS_ANNULED').AsFloat = 1 then
    if not Highlight then
      BackGround:= ccAnnuledObjectBackground
    else
  else
    begin
      if cdsExpGroupsDetailIS_OTCH.AsBoolean and
         ( (Field.FieldName = '_DEV_VALUE_GAINED') or
           (Field.FieldName = '_DEV_QUANTITY') or
           (Field.FieldName = '_DEV_ACCOUNT_QUANTITY') or
           (Field.FieldName = '_DEV_VALUE_ADDED') ) and
         (Field.AsFloat < eps) then
        begin
          if Highlight then
            Background:= ccNegativeDevSelected
          else
            Background:= ccNegativeDevNotSelected;
        end;

      if (Field.FieldName = 'SALE_ORDER_TYPE_ABBREV') and (not Highlight) then
        BackGround:= SaleOrderTypeColors[Field.DataSet.FieldByName('SALE_ORDER_TYPE_CODE').AsInteger];

      if (Field.FieldName = 'UNCOVERED_LINES') and (Field.DataSet.FieldByName('UNCOVERED_LINES').AsFloat > 0) then
        begin
          if Highlight then
            Background:= ccNegativeDevSelected
          else
            Background:= ccNegativeDevNotSelected;
        end;
    end;

  if (Column.Field = cdsExpGroupsDetailPRIORITY_FULL_NAME) and not Column.Field.IsNull then
    begin
      if not cdsExpGroupsDetail_PRIORITY_COLOR.IsNull then
        AFont.Color:= cdsExpGroupsDetail_PRIORITY_COLOR.AsInteger;

      if not cdsExpGroupsDetail_PRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsExpGroupsDetail_PRIORITY_BACKGROUND_COLOR.AsInteger;
    end;  { if }

  if (Pos('_RSV', Field.FieldName) = Length(Field.FieldName) - 3) and
     (Field is TAbmesFloatField) and
     ((Field as TAbmesFloatField).AsFloat < 0) then
    AFont.Color:= clRed;

  if (Field = cdsExpGroupsDetailDAMAGES_STATE_CODE) then
    DamagesStateColumnBackground(Field, Background);
end;

procedure TfmSaleExpGroups.btnShowAnnuledLinesClick(Sender: TObject);
begin
  inherited;
  cdsExpGroupsDetail.Filtered:= not btnShowAnnuledLines.Down;
end;

procedure TfmSaleExpGroups.btnToggleExpGroupsPlanAndOtch2Click(Sender: TObject);
begin
  inherited;
  SetExpGroupsDetailColumns;
end;

procedure TfmSaleExpGroups.btnToggleExpGroupsPlanAndOtchClick(Sender: TObject);
begin
  inherited;
  SetExpGroupsDetailColumns;
end;

procedure TfmSaleExpGroups.pdsExpGroupsMaster_COMPANY_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull and DisplayText then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

procedure TfmSaleExpGroups.pdsExpGroupsMaster_LEASE_DATE_UNIT_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.pdsExpGroupsMaster_SALE_DEAL_TYPE_SHOW_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText, True);
end;

procedure TfmSaleExpGroups.pcSalesChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  FPreviousActivePage:= (Sender as TPageControl).ActivePage;
end;

procedure TfmSaleExpGroups.pdsSingleExpsPRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  DoProductFieldChanged(pdsSingleExpsPRODUCT_CODE,
    pdsSingleExpsPRODUCT_NAME, pdsSingleExpsPRODUCT_NO);
end;

procedure TfmSaleExpGroups.actFilterSingleExpsExecute(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  inherited;
  if TfmSingleExpsFilter.ShowForm(dmDocClient, pdsSingleExps, emEdit, doNone, FProductClass, Assigned(FInvoiceItemsDataSet)) then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        RefreshDataSet(cdsSingleExps);
      finally
        Screen.Cursor:= SaveCursor;
      end;
    end;
end;

procedure TfmSaleExpGroups.grdSingleExpsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
const
  eps = -0.5;
var
  Highlight: Boolean;
  Field: TField;

begin
  inherited;

  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if Field.DataSet.Bof and Field.DataSet.Eof then
    Exit;

  if (Field.DataSet.FieldByName('IS_ANNULED').AsFloat = 1) then
    begin
      if not Highlight then
        BackGround:= ccAnnuledObjectBackground;
    end
  else
    begin
      if ( (Field.FieldName = '_DEV_VALUE_GAINED') or
           (Field.FieldName = '_DEV_QUANTITY') or
           (Field.FieldName = '_DEV_ACCOUNT_QUANTITY') or
           (Field.FieldName = '_DEV_TIME')
         ) then
        begin
          if (cdsSingleExpsSALE_SHIPMENT_STATE_CODE.AsInteger > 1) and  // ne e planowo
             (Field.AsFloat < eps) then
            begin
              if Highlight then
                Background:= ccNegativeDevSelected
              else
                Background:= ccNegativeDevNotSelected;
            end;
        end
      else
        begin
          if (Field = cdsSingleExpsSALE_SHIPMENT_STATE_CODE) then
            begin
              if ValidSaleState(cdsSingleExpsSALE_SHIPMENT_STATE_CODE.AsInteger) and not Highlight then
                Background:= SaleStateBackgroundColors[cdsSingleExpsSALE_SHIPMENT_STATE_CODE.AsInteger];
            end
          else
            begin
              if (Field.FieldName = 'SHIPMENT_DATE') and (not Highlight) then
                begin
                  if cdsSingleExpsIS_OTCH.AsBoolean then
                    Background:= SaleExpGroupDateStateColors[1]
                  else
                    BackGround:= SaleExpGroupDateStateColors[2];
                end
              else
                begin
                  if (Field.FieldName = 'SALE_ORDER_TYPE_ABBREV') and (not Highlight) then
                    BackGround:= SaleOrderTypeColors[Field.DataSet.FieldByName('SALE_ORDER_TYPE_CODE').AsInteger]
                  else
                    begin
                      if (Field.FieldName = 'UNCOVERED_LINES') and (Field.DataSet.FieldByName('UNCOVERED_LINES').AsFloat > 0) then
                        begin
                          if Highlight then
                            Background:= ccNegativeDevSelected
                          else
                            Background:= ccNegativeDevNotSelected;
                        end;
                    end;
                end;
            end;
        end;
    end;

  if (Column.Field = cdsSingleExpsPRIORITY_FULL_NAME) and not Column.Field.IsNull then
    begin
      if not cdsSingleExps_PRIORITY_COLOR.IsNull then
        AFont.Color:= cdsSingleExps_PRIORITY_COLOR.AsInteger;

      if not cdsSingleExps_PRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsSingleExps_PRIORITY_BACKGROUND_COLOR.AsInteger;
    end;  { if }

  if (Pos('_RSV', Field.FieldName) = Length(Field.FieldName) - 3) and
     (Field is TAbmesFloatField) and
     ((Field as TAbmesFloatField).AsFloat < 0) then
    AFont.Color:= clRed;

  if (Field = cdsSingleExpsDAMAGES_STATE_CODE) then
    DamagesStateColumnBackground(Field, Background);
end;

procedure TfmSaleExpGroups.cdsSingleExpsCalcFields(DataSet: TDataSet);
const
  eps = 0.00001;
begin
  inherited;

  cdsSingleExps_PLAN_VALUE_ADDED.AsVarFloat:=
    cdsSingleExpsPLAN_VALUE_GAINED.AsFloat -
    cdsSingleExpsPLAN_VALUE_INVESTED.AsFloat;

  if cdsSingleExpsPLAN_VALUE_GAINED.AsFloat = 0 then
    cdsSingleExps_PLAN_PERCENT.Clear
  else
    cdsSingleExps_PLAN_PERCENT.AsFloat:=
      100 *
      cdsSingleExps_PLAN_VALUE_ADDED.AsFloat/
      cdsSingleExpsPLAN_VALUE_GAINED.AsFloat;

  cdsSingleExps_OTCH_VALUE_ADDED.AsFloat:=
    cdsSingleExpsOTCH_VALUE_GAINED.AsFloat -
    cdsSingleExpsOTCH_VALUE_INVESTED.AsFloat;

  if Abs(cdsSingleExps_OTCH_VALUE_ADDED.AsFloat) < eps then
     cdsSingleExps_OTCH_VALUE_ADDED.Clear;

  if cdsSingleExpsOTCH_VALUE_GAINED.AsFloat = 0 then
    cdsSingleExps_OTCH_PERCENT.Clear
  else
    cdsSingleExps_OTCH_PERCENT.AsFloat:=
      100 *
      cdsSingleExps_OTCH_VALUE_ADDED.AsFloat/
      cdsSingleExpsOTCH_VALUE_GAINED.AsFloat;

  cdsSingleExps_DEV_TIME.AsFloat:=
    cdsSingleExpsDEV_TIME.AsFloat;

  cdsSingleExps_DEV_QUANTITY.AsVarFloat:=
    cdsSingleExpsOTCH_QUANTITY.AsFloat -
    cdsSingleExpsPLAN_QUANTITY.AsFloat;

  cdsSingleExps_DEV_ACCOUNT_QUANTITY.AsVarFloat:=
    cdsSingleExpsOTCH_ACCOUNT_QUANTITY.AsFloat -
    cdsSingleExpsPLAN_ACCOUNT_QUANTITY.AsFloat;

  if cdsSingleExpsOTCH_VALUE_GAINED.IsNull then
    cdsSingleExps_DEV_VALUE_GAINED.Clear
  else
    cdsSingleExps_DEV_VALUE_GAINED.AsFloat:=
      cdsSingleExpsOTCH_VALUE_GAINED.AsFloat -
      cdsSingleExpsPLAN_VALUE_GAINED.AsFloat;

  cdsSingleExps_DEV_VALUE_ADDED.AsVarFloat:=
    (cdsSingleExpsOTCH_VALUE_GAINED.AsFloat - cdsSingleExpsOTCH_VALUE_INVESTED.AsFloat) -
    (cdsSingleExpsPLAN_VALUE_GAINED.AsFloat - cdsSingleExpsPLAN_VALUE_INVESTED.AsFloat);

  if VarToFloat(cdsSingleExps_SUM_PLAN_VALUE_GAINED.Value) = 0 then
    cdsSingleExps_AVG_PLAN_PERCENT.AsFloat:= 0
  else
    cdsSingleExps_AVG_PLAN_PERCENT.AsFloat:=
      VarToFloat(cdsSingleExps_SUM_PLAN_VALUE_ADDED.Value) /
      VarToFloat(cdsSingleExps_SUM_PLAN_VALUE_GAINED.Value) * 100;

  if VarToFloat(cdsSingleExps_SUM_OTCH_VALUE_GAINED.Value) = 0 then
    cdsSingleExps_AVG_OTCH_PERCENT.AsFloat:= 0
  else
    cdsSingleExps_AVG_OTCH_PERCENT.AsFloat:=
      VarToFloat(cdsSingleExps_SUM_OTCH_VALUE_ADDED.Value) /
      VarToFloat(cdsSingleExps_SUM_OTCH_VALUE_GAINED.Value) * 100;

  if cdsSingleExpsLEASE_PLAN_DATE_UNIT_QTY.IsNull then
    cdsSingleExps_DEV_LEASE_DATE_UNIT_QTY.Clear
  else
    cdsSingleExps_DEV_LEASE_DATE_UNIT_QTY.AsFloat:=
      cdsSingleExpsLEASE_DATE_UNIT_QTY.AsFloat -
      cdsSingleExpsLEASE_PLAN_DATE_UNIT_QTY.AsFloat;
end;

procedure TfmSaleExpGroups.cdsSingleExpsCompanyOfficesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if IsSingleChosenCompany(pdsSingleExpsCHOSEN_COMPANIES.AsString) then
    cdsSingleExpsCompanyOffices.Params.ParamByName('COMPANY_CODE').AsInteger:=
      SingleChosenCompanyCode(pdsSingleExpsCHOSEN_COMPANIES.AsString)
  else
    cdsSingleExpsCompanyOffices.Params.ParamByName('COMPANY_CODE').Clear;
end;

procedure TfmSaleExpGroups.cdsSingleExpsDAMAGES_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ProcessDamgedStateFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsSingleExpsINVOICE_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= InvoiceStates[Sender.AsInteger];
end;

procedure TfmSaleExpGroups.cdsCountriesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CheckEditMode(cdsCountries);
  cdsCountries.Append;
  cdsCountriesCOUNTRY_CODE.AsInteger:= -1;
  cdsCountriesCOUNTRY_ABBREV.AsString:= SAllExternalCountries;
  cdsCountriesI_COUNTRY_ABBREV.AsString:= SAllExternalCountries;
  cdsCountriesCOUNTRY_NAME.AsString:= SAllExternalCountries;
  cdsCountriesI_COUNTRY_NAME.AsString:= SAlLExternalCountries;
  cdsCountries.Post;
end;

procedure TfmSaleExpGroups.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsExpGroupsDetail.Open;
end;

function TfmSaleExpGroups.EditSale(ADataSet: TDataSet;
  ASaleOrderTypeCode: Integer = -1): Boolean;
begin
  if (ASaleOrderTypeCode = -1) then
    ASaleOrderTypeCode:= ADataSet.FieldByName('SALE_ORDER_TYPE_CODE').AsInteger;

  case ASaleOrderTypeCode of
    sotNormalSaleOrder:
      Result:= TfmSale.ShowForm(dmDocClient, ADataSet, EditMode);

    sotQuickSaleOrder:
      Result:= TfmQuickSale.ShowForm(dmDocClient, ADataSet, EditMode);

    sotCurrentQuantity, sotFutureQuantity:
      Result:= TfmGroupSale.ShowForm(dmDocClient, ADataSet, EditMode);

    else
      raise Exception.CreateFmt('Unknown sale order type code %d',
        [ADataSet.FieldByName('SALE_ORDER_TYPE_CODE').AsInteger]);
  end;

end;

procedure TfmSaleExpGroups.actEditSaleExecute(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  inherited;
  if not (cdsSingleExps.Bof and cdsSingleExps.Eof) then
    if EditSale(cdsSingleExps) then
      begin
        SaveCursor:= Screen.Cursor;
        Screen.Cursor:= crSQLWait;
        try
          RefreshDataSet(cdsSingleExps);
        finally
          Screen.Cursor:= SaveCursor;
        end;
      end;
end;

procedure TfmSaleExpGroups.actEditSaleFromGroupsExecute(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  inherited;
  if not (cdsExpGroupsDetail.Bof and cdsExpGroupsDetail.Eof) then
    if EditSale(cdsExpGroupsDetail) then
      begin
        SaveCursor:= Screen.Cursor;
        Screen.Cursor:= crSQLWait;
        try
          RefreshDataSet(cdsData);
          RefreshDataSet(cdsExpGroupsDetail);
        finally
          Screen.Cursor:= SaveCursor;
        end;
      end;
end;

procedure TfmSaleExpGroups.pdsExpGroupsMasterPRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(pdsExpGroupsMasterPRODUCT_CODE,
    pdsExpGroupsMasterPRODUCT_NAME, pdsExpGroupsMasterPRODUCT_NO);
end;

procedure TfmSaleExpGroups.pdsExpGroupsMaster_BRANCH_CODE_AND_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull and DisplayText then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

procedure TfmSaleExpGroups.pdsSingleExps_SALE_BRANCH_CODE_AND_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.pdsSingleExps_SALE_DEAL_TYPE_SHOW_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText, True);
end;

procedure TfmSaleExpGroups.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AFilterFormEnabled: Boolean; AProductClass: TProductClass;
  AInvoiceItemsDataSet: TDataSet);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);

  FProductClass:= AProductClass;
  FFilterFormEnabled:= AFilterFormEnabled;

  if Assigned(ADataSet) and
     (AEditMode in [emEdit, emReadOnly]) then
    begin
      SetParams(cdsData.Params, ADataSet);
      SetParams(cdsSingleExps.Params, ADataSet);
    end;  { if }

  FInvoiceItemsDataSet:= AInvoiceItemsDataSet;
end;

class function TfmSaleExpGroups.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AFilterFormEnabled: Boolean; AProductClass: TProductClass;
  AInvoiceItemsDataSet: TDataSet): Boolean;
var
  f: TfmSaleExpGroups;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AFilterFormEnabled, AProductClass, AInvoiceItemsDataSet);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

function TfmSaleExpGroups.SupportsFilterForm: Boolean;
begin
  Result:= True;
end;

procedure TfmSaleExpGroups.actFilterSingleExpsUpdate(Sender: TObject);
var
  s: string;
begin
  inherited;

  (Sender as TAction).Enabled:= FFilterFormEnabled;

  s:= SFilter;

  if cdsSingleExps.Active then
    s:= s + ': ' + FormatFloat(',0', cdsSingleExps.RecordCount) + SRows;

  (Sender as TAction).Hint:= s;
end;

procedure TfmSaleExpGroups.actFilterExpGroupsUpdate(Sender: TObject);
var
  s: string;
begin
  inherited;

  (Sender as TAction).Enabled:= FFilterFormEnabled;

  s:= SFilter;

  if cdsData.Active then
    s:= s + ': ' + FormatFloat(',0', cdsData.RecordCount) + SRows;

  (Sender as TAction).Hint:= s;
end;

class function TfmSaleExpGroups.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmSaleExpGroups.grdExpGroupsMasterDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmSaleExpGroups.grdExpGroupsDetailDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmSaleExpGroups.grdSingleExpsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmSaleExpGroups.grdSingleExpsSortMarkingChanged(
  Sender: TObject);
begin
  inherited;
  SortGrid(grdSingleExps, SortIndexName);
end;

procedure TfmSaleExpGroups.Initialize;
begin
  inherited;

  FOriginalFormCaption:= actForm.Caption;

  pnlClose.Visible:= not Assigned(FInvoiceItemsDataSet);
  pnlOKCancel.Visible:= Assigned(FInvoiceItemsDataSet);
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  FSaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourglass;
  cdsExpGroupsDetail.Params.AssignValues(cdsData.Params);
  cdsExpGroupsDetail.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmSaleExpGroups.cdsSingleExpsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsSingleExps.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:= ProductClassToInt(FProductClass);
  if (cdsSingleExps.IndexName = SortIndexName) then
    cdsSingleExps.IndexName:= '';
end;

procedure TfmSaleExpGroups.pdsSingleExps_SALE_ORDER_TYPE_ABBREVGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.actEditSaleFromGroupsUpdate(Sender: TObject);
var
  s: string;
begin
  inherited;
  with (Sender as TAction) do
    begin
      Enabled:=
        cdsExpGroupsDetail.Active and
        not cdsExpGroupsDetail.IsEmpty;

      if Enabled and (EditMode = emReadOnly) then
        s:= SReadOnlyCaption
      else
        s:= SEditCaption;

      actEditSaleFromGroups.Caption:= s + cDialogSuffix;
      actEditSaleFromGroups.Hint:= s;
    end;   { with }

end;

procedure TfmSaleExpGroups.actEditSaleUpdate(Sender: TObject);
var
  s: string;
begin
  inherited;
  with (Sender as TAction) do
    begin
      Enabled:=
        cdsSingleExps.Active and
        not cdsSingleExps.IsEmpty;

      if Enabled and (EditMode = emReadOnly) then
        s:= SReadOnlyCaption
      else
        s:= SEditCaption;

      actEditSale.Caption:= s + cDialogSuffix;
      actEditSale.Hint:= s;
    end;   { with }
end;

procedure TfmSaleExpGroups.pdsSingleExpsPRODUCT_NAMEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.pdsExpGroupsMasterPRODUCT_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.pdsExpGroupsMasterSALE_DEAL_TYPE_CODEChange(
  Sender: TField);
begin
  inherited;
  if (Sender.AsInteger <> sdtLease) then
    begin
      pdsExpGroupsMasterLEASE_DATE_UNIT_CODE.Clear;
      pdsExpGroupsMasterLEASE_GROUP_TYPE.AsInteger:= 1;
    end;
end;

procedure TfmSaleExpGroups.pdsSingleExps_COMPANY_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.pdsSingleExps_COUNTRY_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.pdsSingleExps_LEASE_DATE_UNIT_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsDataUNCOVERED_LINESGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsFloat = 0 then
    Text:= ''
  else
    Text:= Sender.AsString;
end;

procedure TfmSaleExpGroups.cdsData_MIN_TRANSPORT_MEASURE_ABBREVGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if (not cdsData_MIN_TRANSPORT_MEASURE_CODE.IsNull and not cdsData_MAX_TRANSPORT_MEASURE_CODE.IsNull) and
     (VarToInt(cdsData_MIN_TRANSPORT_MEASURE_CODE.AsVariant) = VarToInt(cdsData_MAX_TRANSPORT_MEASURE_CODE.AsVariant)) then
    Text:= cdsDataTRANSPORT_MEASURE_ABBREV.AsString
  else
    Text:= '';
end;

procedure TfmSaleExpGroups.cdsData_SUM_DEV_TRANSPORT_QUANTITYGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  TotalQuantityFieldGetText(cdsData_MIN_TRANSPORT_MEASURE_CODE, cdsData_MAX_TRANSPORT_MEASURE_CODE, Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsData_SUM_OTCH_TRANSPORT_QUANTITYGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  TotalQuantityFieldGetText(cdsData_MIN_TRANSPORT_MEASURE_CODE, cdsData_MAX_TRANSPORT_MEASURE_CODE, Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsData_SUM_PLAN_TRANSPORT_QUANTITYGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  TotalQuantityFieldGetText(cdsData_MIN_TRANSPORT_MEASURE_CODE, cdsData_MAX_TRANSPORT_MEASURE_CODE, Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetailUNCOVERED_LINESGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsFloat = 0 then
    Text:= ''
  else
    Text:= SNo;
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetail_SUM_DEV_ACCOUNT_QUANTITYGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  TotalQuantityFieldGetText(cdsExpGroupsDetail_MIN_ACCOUNT_MEASURE_CODE, cdsExpGroupsDetail_MAX_ACCOUNT_MEASURE_CODE, Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetail_SUM_DEV_QUANTITYGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  TotalQuantityFieldGetText(cdsExpGroupsDetail_MIN_MEASURE_CODE, cdsExpGroupsDetail_MAX_MEASURE_CODE, Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetail_SUM_OTCH_ACCOUNT_QUANTITYGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  TotalQuantityFieldGetText(cdsExpGroupsDetail_MIN_ACCOUNT_MEASURE_CODE, cdsExpGroupsDetail_MAX_ACCOUNT_MEASURE_CODE, Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetail_SUM_OTCH_QUANTITYGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  TotalQuantityFieldGetText(cdsExpGroupsDetail_MIN_MEASURE_CODE, cdsExpGroupsDetail_MAX_MEASURE_CODE, Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetail_SUM_OTCH_TRANSPORT_QUANTITYGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  TotalQuantityFieldGetText(cdsExpGroupsDetail_MIN_TRANSPORT_MEASURE_CODE, cdsExpGroupsDetail_MAX_TRANSPORT_MEASURE_CODE, Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetail_SUM_PLAN_ACCOUNT_QUANTITYGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  TotalQuantityFieldGetText(cdsExpGroupsDetail_MIN_ACCOUNT_MEASURE_CODE, cdsExpGroupsDetail_MAX_ACCOUNT_MEASURE_CODE, Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetail_SUM_PLAN_QUANTITYGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  TotalQuantityFieldGetText(cdsExpGroupsDetail_MIN_MEASURE_CODE, cdsExpGroupsDetail_MAX_MEASURE_CODE, Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetail_SUM_PLAN_TRANSPORT_QUANTITYGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  TotalQuantityFieldGetText(cdsExpGroupsDetail_MIN_TRANSPORT_MEASURE_CODE, cdsExpGroupsDetail_MAX_TRANSPORT_MEASURE_CODE, Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsSingleExpsUNCOVERED_LINESGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsFloat = 0 then
    Text:= ''
  else
    Text:= SNo;
end;

procedure TfmSaleExpGroups.actPrint1stPageUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not (cdsData.Bof and cdsData.Eof);
end;

procedure TfmSaleExpGroups.actPrint2ndPageUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not (cdsSingleExps.Bof and cdsSingleExps.Eof);
end;

procedure TfmSaleExpGroups.actPrint1stPageExecute(Sender: TObject);
begin
  inherited;
  TrptSaleExpGroups.PrintReport(cdsData, pdsExpGroupsMaster, cdsExpGroupsDetail);
end;

procedure TfmSaleExpGroups.actPrint2ndPageExecute(Sender: TObject);
begin
  inherited;
  cdsSingleExps.DisableControls;
  try
    TrptSingleExps.PrintReport(cdsSingleExps, pdsSingleExps);
  finally
    cdsSingleExps.EnableControls;
  end;
end;

procedure TfmSaleExpGroups.actFormUpdate(Sender: TObject);
begin
  inherited;

  btnDocumentation.Enabled:=
    cdsExpGroupsDetail.Active and
    (cdsExpGroupsDetail.RecordCount > 0);

  btnDocumentation2.Enabled:=
    cdsSingleExps.Active and
    (cdsSingleExps.RecordCount > 0);

  lblLeaseDateUnit.Visible:= (cdsSingleExps.Params.ParamByName('SALE_DEAL_TYPE_CODE').AsInteger = sdtLease);
  edtLeaseDateUnit.Visible:= (cdsSingleExps.Params.ParamByName('SALE_DEAL_TYPE_CODE').AsInteger = sdtLease);
  btnSingleExpsImportDate.Visible:= (cdsSingleExps.Params.ParamByName('SALE_DEAL_TYPE_CODE').AsInteger = sdtLease);

  if not btnSingleExpsImportDate.Visible then
    begin
      btnSingleExpsReceiveDate.Left:= btnSingleExpsImportDate.Left;
      btnSingleExpsShipmentDate.Left:= btnSingleExpsImportDate.Left - btnSingleExpsReceiveDate.Width;
    end
  else
    begin
      btnSingleExpsReceiveDate.Left:= btnSingleExpsImportDate.Left - btnSingleExpsReceiveDate.Width;
      btnSingleExpsShipmentDate.Left:= btnSingleExpsImportDate.Left -
        (btnSingleExpsImportDate.Width + btnSingleExpsReceiveDate.Width);
    end;

  lblLeaseGroupType.Visible:= (FProductClass = pcNormal);
  edtLeaseGroupType.Visible:= lblLeaseGroupType.Visible;

  btnIsLease.Down:= (pdsSingleExpsSALE_DEAL_TYPE_CODE.AsInteger = sdtLease);

  UpdateColumnsVisibility(grdExpGroupsDetail, pnlTopRightButtons);

  UpdateColumnsVisibility(
    grdSingleExps,
    ArrayUtils.Concat<TWinControl>(
      ArrayUtils.ArrayOf<TWinControl>(NormalizedToolbarToolbarsAndFlowPanels(tlbToggleSingleExpsPlanAndOtch)),
      [pnlTopRightButtons, pnlSingleExpsNavigator, pnlShowInvoice]));
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetailAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Screen.Cursor:= FSaveCursor;
end;

procedure TfmSaleExpGroups.pdsSingleExpsPRODUCTION_DEPT_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.pdsSingleExpsPRODUCTION_DEPT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(pdsSingleExpsPRODUCTION_DEPT_CODE, pdsSingleExpsPRODUCTION_DEPT_NAME,
                     pdsSingleExpsPRODUCTION_DEPT_NO); 
end;

procedure TfmSaleExpGroups.pdsExpGroupsMaster_COUNTRY_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.pdsSingleExps_SALE_TYPE_ABBREVGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.RefreshSaleExpGroupsCompanyOffices;
begin
  cdsSaleExpGroupsCompanyOffices.Close;
  cdsSaleExpGroupsCompanyOffices.Open;
end;

procedure TfmSaleExpGroups.RefreshSingleExpsCompanyOffices;
begin
  cdsSingleExpsCompanyOffices.Close;
  cdsSingleExpsCompanyOffices.Open;
end;

procedure TfmSaleExpGroups.pdsSingleExpsCalcFields(DataSet: TDataSet);
begin
  inherited;
  pdsSingleExps_PRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmSaleExpGroups.pdsSingleExpsCHOSEN_COMPANIESChange(Sender: TField);
begin
  inherited;
  pdsSingleExpsRECEIVE_PLACE_OFFICE_CODE.Clear;
  RefreshSingleExpsCompanyOffices;
end;

procedure TfmSaleExpGroups.pdsSingleExpsCOUNTRY_NAMEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsDataBeforeClose(DataSet: TDataSet);
begin
  inherited;
  cdsExpGroupsDetail.Close;
end;

procedure TfmSaleExpGroups.cdsDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsData.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmSaleExpGroups.navSingleExpsBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  if (Button = nbRefresh) then
    begin
      ConfirmRefresh;
      RefreshDataSet(cdsSingleExps);
      Abort;
    end;
end;

procedure TfmSaleExpGroups.navExpGroupsMasterBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  if (Button = nbRefresh) then
    begin
      ConfirmRefresh;
      RefreshDataSet(cdsData);
      Abort;
    end;
end;

procedure TfmSaleExpGroups.btnDocumentationClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, btnDocumentation,
    cdsExpGroupsDetailPRODUCT_CODE.AsInteger);
end;

procedure TfmSaleExpGroups.btnDocumentation2Click(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, btnDocumentation2,
    cdsSingleExpsPRODUCT_CODE.AsInteger);
end;

procedure TfmSaleExpGroups.actExcelExportExpGroupsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    (cdsData.RecordCount > 0);
end;

procedure TfmSaleExpGroups.actExcelExportExpGroupsExecute(Sender: TObject);
begin
  // do not call inherited
  case MessageDlgEx(SConfirmDetailExcelExportMessage, mtConfirmation, mbYesNoCancel, 0) of
    mrYes:
      MasterDetailGridExcelExport(grdExpGroupsMaster, grdExpGroupsDetail);
    mrNo:
      GridExcelExport(grdExpGroupsMaster);
  end;
end;

procedure TfmSaleExpGroups.actExcelExportSingleExpsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsSingleExps.Active and
    (cdsSingleExps.RecordCount > 0);
end;

procedure TfmSaleExpGroups.ShowExceptEvents(AShipmentObjectBranchCode, AShipmentObjectCode: Integer);
begin
  cdsExceptEventsParams.CreateDataSet;
  try
    cdsExceptEventsParams.Append;
    try
      cdsExceptEventsParamsMAX_STATE_CODE.AsInteger:= High(TExceptEventStateNames);
      cdsExceptEventsParamsIS_FILTERED_BY_DAMAGES.AsBoolean:= True;
      cdsExceptEventsParamsEE_DAMAGE_PROCESS_TYPE_CODE.AsInteger:= ExceptEventDamageProcessTypeToInt(eedptSaleShipment);
      cdsExceptEventsParamsSHIPMENT_OBJECT_BRANCH_CODE.AsInteger:= AShipmentObjectBranchCode;
      cdsExceptEventsParamsSHIPMENT_OBJECT_CODE.AsInteger:= AShipmentObjectCode;

      cdsExceptEventsParams.Post;
    except
      cdsExceptEventsParams.Cancel;
      raise;
    end;  { try }

    TfmExceptEvents.ShowForm(dmDocClient, cdsExceptEventsParams, emReadOnly, doNone, False);
  finally
    cdsExceptEventsParams.Close;
  end;  { try }
end;

procedure TfmSaleExpGroups.AddInvoiceItems;
begin
  Screen.TempCursor(crSQLWait)/
    cdsSingleExps.PreserveBookmark/
      cdsSingleExps.TempDisableControls/
        cdsSingleExps.ForEachSelected(grdSingleExps)/
          FInvoiceItemsDataSet.SafeAppend/
            procedure begin
              FInvoiceItemsDataSet.FieldByName('PRODUCT_CODE').Assign(cdsSingleExpsPRODUCT_CODE);
              FInvoiceItemsDataSet.FieldByName('ACCOUNT_QUANTITY').Assign(cdsSingleExpsINVOICE_DATA_ACCOUNT_QUANTITY);
              FInvoiceItemsDataSet.FieldByName('SINGLE_PRICE').Assign(cdsSingleExpsINVOICE_DATA_SINGLE_PRICE);
              FInvoiceItemsDataSet.FieldByName('MARKET_SINGLE_PRICE').Assign(cdsSingleExpsINVOICE_DATA_MARKET_SNGL_PRICE);
              FInvoiceItemsDataSet.FieldByName('DISCOUNT_PERCENT').Assign(cdsSingleExpsINVOICE_DATA_DISCOUNT_PERCENT);
              FInvoiceItemsDataSet.FieldByName('CURRENCY_CODE').Assign(cdsSingleExpsINVOICE_DATA_CURRENCY_CODE);
              FInvoiceItemsDataSet.FieldByName('BND_PROCESS_OBJECT_BRANCH_CODE').Assign(cdsSingleExpsSHIPMENT_OBJECT_BRANCH_CODE);
              FInvoiceItemsDataSet.FieldByName('BND_PROCESS_OBJECT_CODE').Assign(cdsSingleExpsSHIPMENT_OBJECT_CODE);
              FInvoiceItemsDataSet.FieldByName('BND_PROCESS_OBJECT_IDENTIFIER').Assign(cdsSingleExpsINVOICE_DATA_SSH_IDENTIFIER);
              FInvoiceItemsDataSet.FieldByName('CLIENT_REQUEST_NO').Assign(cdsSingleExpsCLIENT_REQUEST_NO);
            end;  { lambda }
end;

procedure TfmSaleExpGroups.actGroupExpsExceptEventsExecute(Sender: TObject);
begin
  inherited;
  ShowExceptEvents(
    cdsExpGroupsDetailSHIPMENT_OBJECT_BRANCH_CODE.AsInteger,
    cdsExpGroupsDetailSHIPMENT_OBJECT_CODE.AsInteger);
end;

procedure TfmSaleExpGroups.actGroupExpsExceptEventsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsExpGroupsDetail.IsEmpty and
    not cdsExpGroupsDetailDAMAGES_STATE_CODE.IsNull;
end;

procedure TfmSaleExpGroups.actExpGroupsDetailShowAccountQuantitiesExecute(
  Sender: TObject);
begin
  inherited;
  SetExpGroupsDetailColumns;
end;

procedure TfmSaleExpGroups.actExpGroupsDetailShowQtyExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetExpGroupsDetailColumns;
end;

procedure TfmSaleExpGroups.actExpGroupsDetailShowDatesExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetExpGroupsDetailColumns;
end;

procedure TfmSaleExpGroups.actExpGroupsDetailShowWorkQuantitiesExecute(
  Sender: TObject);
begin
  inherited;
  SetExpGroupsDetailColumns;
end;

procedure TfmSaleExpGroups.actExcelExportSingleExpsExecute(
  Sender: TObject);
begin
  inherited;
  GridExcelExport(grdSingleExps);
end;

class function TfmSaleExpGroups.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmSaleExpGroups.actShipmentNeededMaterialsExecute(
  Sender: TObject);
begin
  inherited;
  TfmShipmentNeededMaterials.ShowForm(dmDocClient, cdsExpGroupsDetail, emReadOnly,
    doNone, False, btnShowAnnuledLines.Down, grdExpGroupsDetail);
  cdsExpGroupsDetail.Filtered:= not btnShowAnnuledLines.Down;
end;

procedure TfmSaleExpGroups.actShipmentNeededMaterialsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= (FProductClass = pcNormal);
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetailSALE_SHIPMENT_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= SaleStateDisplayText(Sender.AsInteger, 50, Canvas);
end;

procedure TfmSaleExpGroups.cdsSingleExpsSALE_SHIPMENT_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= SaleStateDisplayText(Sender.AsInteger, 50, Canvas);
end;

procedure TfmSaleExpGroups.cdsSingleExps_SUM_PLAN_ACCOUNT_QUANTITYGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull or
     (VarToInt(cdsSingleExps_MIN_ACCOUNT_MEASURE_CODE.AsVariant) =
      VarToInt(cdsSingleExps_MAX_ACCOUNT_MEASURE_CODE.AsVariant)) then
    NumericFieldGetText(Sender, Text, DisplayText)
  else
    Text:= SDiferentMeasurements;
end;

procedure TfmSaleExpGroups.cdsSingleExps_SUM_PLAN_QUANTITYGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull or
     (VarToInt(cdsSingleExps_MIN_MEASURE_CODE.AsVariant) =
      VarToInt(cdsSingleExps_MAX_MEASURE_CODE.AsVariant)) then
    NumericFieldGetText(Sender, Text, DisplayText)
  else
    Text:= SDiferentMeasurements;
end;

procedure TfmSaleExpGroups.TotalQuantityFieldGetText(AMinMeasureCodeField, AMaxMeasureCodeField, Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.IsNull or
     (VarToInt(AMinMeasureCodeField.AsVariant) =
      VarToInt(AMaxMeasureCodeField.AsVariant)) then
    NumericFieldGetText(Sender, Text, DisplayText)
  else
    Text:= SDiferentMeasurements;
end;

procedure TfmSaleExpGroups.cdsSingleExps_SUM_DEV_ACCOUNT_QUANTITYGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  TotalQuantityFieldGetText(cdsSingleExps_MIN_ACCOUNT_MEASURE_CODE, cdsSingleExps_MAX_ACCOUNT_MEASURE_CODE, Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsSingleExps_SUM_DEV_QUANTITYGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  TotalQuantityFieldGetText(cdsSingleExps_MIN_MEASURE_CODE, cdsSingleExps_MAX_MEASURE_CODE, Sender, Text, DisplayText);
end;

procedure TfmSaleExpGroups.cdsSingleExps_SUM_OTCH_ACCOUNT_QUANTITYGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull or
     (VarToInt(cdsSingleExps_MIN_ACCOUNT_MEASURE_CODE.AsVariant) =
      VarToInt(cdsSingleExps_MAX_ACCOUNT_MEASURE_CODE.AsVariant)) then
    NumericFieldGetText(Sender, Text, DisplayText)
  else
    Text:= SDiferentMeasurements;
end;

procedure TfmSaleExpGroups.cdsSingleExps_SUM_OTCH_QUANTITYGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull or
     (VarToInt(cdsSingleExps_MIN_MEASURE_CODE.AsVariant) =
      VarToInt(cdsSingleExps_MAX_MEASURE_CODE.AsVariant)) then
    NumericFieldGetText(Sender, Text, DisplayText)
  else
    Text:= SDiferentMeasurements;
end;

procedure TfmSaleExpGroups.cdsExpGroupsDetailPLAN_VALUE_GAINEDGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (Sender.AsFloat = 0) then
    Text:= ''
  else
    Text:= FormatFloat((Sender as TAbmesFloatField).DisplayFormat, Sender.AsFloat);
end;

procedure TfmSaleExpGroups.cdsSaleDealTypesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsSaleDealTypes.TempReadOnly(False)/
    cdsSaleDealTypes.SafeAppend/
      procedure begin
        cdsSaleDealTypesSALE_DEAL_TYPE_CODE.AsInteger:= sdtFilterSaleAndExport;
        cdsSaleDealTypesSALE_DEAL_TYPE_NAME.AsString:= SSaleDealTypeNameSaleAndExport;
        cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV.AsString:= SSaleDealTypeAbbrevSaleAndExport;
        cdsSaleDealTypesOBTAINMENT_TYPE_CODE.AsInteger:= ObtainmentTypeToInt(otNone);
      end;
end;

procedure TfmSaleExpGroups.cdsSaleDealTypesCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsSaleDealTypes_SALE_DEAL_TYPE_SHOW_NAME.AsString:=
    cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV.AsString +
    DupeString(' ', 20 - Length(cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV.AsString) * 3) +
    cdsSaleDealTypesSALE_DEAL_TYPE_NAME.AsString;
end;

procedure TfmSaleExpGroups.cdsSaleExpGroupsCompanyOfficesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  if IsSingleChosenCompany(pdsExpGroupsMasterCHOSEN_COMPANIES.AsString) then
    cdsSaleExpGroupsCompanyOffices.Params.ParamByName('COMPANY_CODE').AsInteger:=
      SingleChosenCompanyCode(pdsExpGroupsMasterCHOSEN_COMPANIES.AsString)
  else
    cdsSaleExpGroupsCompanyOffices.Params.ParamByName('COMPANY_CODE').Clear;
end;

procedure TfmSaleExpGroups.cdsSingleExpsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SortGrid(grdSingleExps, SortIndexName);
end;

procedure TfmSaleExpGroups.cdsSingleExps_MIN_ACCOUNT_MEASURE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  if (VarToInt(cdsSingleExps_MIN_ACCOUNT_MEASURE_CODE.AsVariant) =
      VarToInt(cdsSingleExps_MAX_ACCOUNT_MEASURE_CODE.AsVariant)) then
    Text:= VarToStr(cdsMeasures.Lookup('MEASURE_CODE', Sender.AsVariant, 'MEASURE_ABBREV'))
  else
    Text:= '';
end;

procedure TfmSaleExpGroups.cdsSingleExps_MIN_MEASURE_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;

  if (VarToInt(cdsSingleExps_MIN_MEASURE_CODE.AsVariant) =
      VarToInt(cdsSingleExps_MAX_MEASURE_CODE.AsVariant)) then
    Text:= VarToStr(cdsMeasures.Lookup('MEASURE_CODE', Sender.AsVariant, 'MEASURE_ABBREV'))
  else
    Text:= '';
end;

procedure TfmSaleExpGroups.actShowProductVIMForExpFromGroupUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TACtion).Enabled:= cdsExpGroupsDetail.Active and (cdsExpGroupsDetail.RecordCount > 0);
end;

procedure TfmSaleExpGroups.actShowProductVIMForExpFromGroupExecute(
  Sender: TObject);
begin
  inherited;
  ShowProductVIM(dmDocClient, cdsExpGroupsDetailPRODUCT_CODE.AsInteger, ContextDate, False, vofVIMOpenedFromSale, FProductClass);
end;

procedure TfmSaleExpGroups.actShowVIMForSingleExpExecute(Sender: TObject);
begin
  inherited;
  ShowProductVIM(dmDocClient, cdsSingleExpsPRODUCT_CODE.AsInteger, ContextDate, False, vofVIMOpenedFromSale, FProductClass);
end;

procedure TfmSaleExpGroups.actShowVIMForSingleExpUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TACtion).Enabled:= cdsSingleExps.Active and (cdsSingleExps.RecordCount > 0);
end;

procedure TfmSaleExpGroups.actSingleExpsExceptEventsExecute(Sender: TObject);
begin
  inherited;
  ShowExceptEvents(
    cdsSingleExpsSHIPMENT_OBJECT_BRANCH_CODE.AsInteger,
    cdsSingleExpsSHIPMENT_OBJECT_CODE.AsInteger);
end;

procedure TfmSaleExpGroups.actSingleExpsExceptEventsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsSingleExps.IsEmpty and
    not cdsSingleExpsDAMAGES_STATE_CODE.IsNull;
end;

procedure TfmSaleExpGroups.pdsExpGroupsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;

  with pdsExpGroupsMasterPRODUCT_CODE do
    if IsNull then
      AsInteger:= tnRootProductCode;
end;

procedure TfmSaleExpGroups.pdsExpGroupsMasterCalcFields(DataSet: TDataSet);
begin
  inherited;
  pdsExpGroupsMaster_PRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmSaleExpGroups.pdsExpGroupsMasterCHOSEN_COMPANIESChange(
  Sender: TField);
begin
  inherited;
  pdsExpGroupsMasterRECEIVE_PLACE_OFFICE_CODE.Clear;
  RefreshSaleExpGroupsCompanyOffices;
end;

procedure TfmSaleExpGroups.pdsExpGroupsMasterLEASE_GROUP_TYPEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
const
  LeaseGroupTypes: array [1..2] of string = (SLeaseGroupType1, SLeaseGroupType2);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= LeaseGroupTypes[Sender.AsInteger];
end;

procedure TfmSaleExpGroups.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frSaleExpsDateInterval) or
     (AFrame = frSingleExpsDateInterval) then
    AFrame.ReadOnly:= True
  else
    inherited;
end;

procedure TfmSaleExpGroups.SetExpGroupsDetailColumns;
begin
  grdExpGroupsDetail.Columns.BeginUpdate;
  try
    // MEASURE_ABBREV
    grdExpGroupsDetail.Columns[9].Visible:= actExpGroupsDetailShowWorkQuantities.Checked;
    // ACCOUNT_MEASURE_ABBREV
    grdExpGroupsDetail.Columns[10].Visible:= actExpGroupsDetailShowAccountQuantities.Checked;

    // PLAN_QUANTITY
    grdExpGroupsDetail.Columns[11].Visible:= btnToggleExpGroupsPlanAndOtch.Down and actExpGroupsDetailShowWorkQuantities.Checked;
    // PLAN_ACCOUNT_QUANTITY
    grdExpGroupsDetail.Columns[12].Visible:= btnToggleExpGroupsPlanAndOtch.Down and actExpGroupsDetailShowAccountQuantities.Checked;
    // LEASE_PLAN_DATE_UNIT_QTY
    grdExpGroupsDetail.Columns[13].Visible:= btnToggleExpGroupsPlanAndOtch.Down;
    // LEASE_DATE_UNIT_NAME
    grdExpGroupsDetail.Columns[14].Visible:= btnToggleExpGroupsPlanAndOtch.Down;
    // PLAN_VALUE_GAINED
    grdExpGroupsDetail.Columns[15].Visible:= btnToggleExpGroupsPlanAndOtch.Down;
    // _PLAN_VALUE_ADDED
    grdExpGroupsDetail.Columns[16].Visible:= btnToggleExpGroupsPlanAndOtch.Down;
    // _PLAN_PERCENT
    grdExpGroupsDetail.Columns[17].Visible:= btnToggleExpGroupsPlanAndOtch.Down;
    // PLAN_TRANSPORT_QUANTITY
    grdExpGroupsDetail.Columns[18].Visible:= btnToggleExpGroupsPlanAndOtch.Down;
    // TRANSPORT_MEASURE_ABBREV
    grdExpGroupsDetail.Columns[19].Visible:= btnToggleExpGroupsPlanAndOtch.Down;

    // OTCH_QUANTITY
    grdExpGroupsDetail.Columns[20].Visible:= (not btnToggleExpGroupsPlanAndOtch.Down) and actExpGroupsDetailShowWorkQuantities.Checked;
    // OTCH_ACCOUNT_QUANTITY
    grdExpGroupsDetail.Columns[21].Visible:= (not btnToggleExpGroupsPlanAndOtch.Down) and actExpGroupsDetailShowAccountQuantities.Checked;
    // LEASE_DATE_UNIT_QTY
    grdExpGroupsDetail.Columns[22].Visible:= not btnToggleExpGroupsPlanAndOtch.Down;
    // LEASE_DATE_UNIT_NAME
    grdExpGroupsDetail.Columns[23].Visible:= not btnToggleExpGroupsPlanAndOtch.Down;
    // OTCH_VALUE_GAINED
    grdExpGroupsDetail.Columns[24].Visible:= not btnToggleExpGroupsPlanAndOtch.Down;
    // _OTCH_VALUE_ADDED
    grdExpGroupsDetail.Columns[25].Visible:= not btnToggleExpGroupsPlanAndOtch.Down;
    // _OTCH_PERCENT
    grdExpGroupsDetail.Columns[26].Visible:= not btnToggleExpGroupsPlanAndOtch.Down;
    // OTCH_TRANSPORT_QUANTITY
    grdExpGroupsDetail.Columns[27].Visible:= not btnToggleExpGroupsPlanAndOtch.Down;
    // TRANSPORT_MEASURE_ABBREV
    grdExpGroupsDetail.Columns[28].Visible:= not btnToggleExpGroupsPlanAndOtch.Down;

    // _DEV_QUANTITY
    grdExpGroupsDetail.Columns[29].Visible:= btnExpGroupsDetailShowQty.Down and actExpGroupsDetailShowWorkQuantities.Checked;
    // _DEV_ACCOUNT_QUANTITY
    grdExpGroupsDetail.Columns[30].Visible:= btnExpGroupsDetailShowQty.Down and actExpGroupsDetailShowAccountQuantities.Checked;
    // _DEV_*
    grdExpGroupsDetail.Columns[31].Visible:= btnExpGroupsDetailShowQty.Down;
    grdExpGroupsDetail.Columns[32].Visible:= btnExpGroupsDetailShowQty.Down;
    grdExpGroupsDetail.Columns[33].Visible:= btnExpGroupsDetailShowQty.Down;

    // DATES
    grdExpGroupsDetail.Columns[34].Visible:= btnExpGroupsDetailShowDates.Down;
    grdExpGroupsDetail.Columns[35].Visible:= btnExpGroupsDetailShowDates.Down and btnToggleExpGroupsPlanAndOtch.Down;
    grdExpGroupsDetail.Columns[36].Visible:= btnExpGroupsDetailShowDates.Down and not btnToggleExpGroupsPlanAndOtch.Down;
    grdExpGroupsDetail.Columns[37].Visible:= btnExpGroupsDetailShowDates.Down;
    grdExpGroupsDetail.Columns[38].Visible:= btnExpGroupsDetailShowDates.Down and btnToggleExpGroupsPlanAndOtch.Down;
    grdExpGroupsDetail.Columns[39].Visible:= btnExpGroupsDetailShowDates.Down and not btnToggleExpGroupsPlanAndOtch.Down;
    grdExpGroupsDetail.Columns[40].Visible:= btnExpGroupsDetailShowDates.Down;

  finally
    grdExpGroupsDetail.Columns.EndUpdate;
  end;
end;

end.

