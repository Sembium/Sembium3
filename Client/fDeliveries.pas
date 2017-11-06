unit fDeliveries;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, AbmesClientDataSet, ImgList, ActnList, StdCtrls,
  Buttons, ExtCtrls, ComCtrls, DBCtrls, ColorNavigator, GridsEh, DBGridEh,
  AbmesDBGrid, AbmesFields, fFilterForm, ParamDataSet, Menus,
  JvButtons, ToolWin, Mask, JvComponent, JvCaptionButton, JvComponentBase,
  uClientTypes, dDocClient, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateIntervalFrame, uProductionOrderTypes, uProducts, DBGridEhGrouping;

type
  TfmDeliveries = class(TEditForm)
    pcMain: TPageControl;
    tsGroupDeliveries: TTabSheet;
    tsDeliveries: TTabSheet;
    pnlDeliveryGroupsMaster: TPanel;
    sptMain: TSplitter;
    pnlDeliveryGroupsDetail: TPanel;
    pnlGroupDeliveriesNavigator: TPanel;
    pnlGroupDeliveriesFilterButton: TPanel;
    btnFilter: TSpeedButton;
    navGroupDeliveries: TDBColorNavigator;
    pnlDetailNavigator: TPanel;
    navGroupDeliveriesDetail: TDBColorNavigator;
    grdDeliveryGroupsMaster: TAbmesDBGrid;
    grdDeliveryGroupsDetail: TAbmesDBGrid;
    pnlNavigator: TPanel;
    pnlFilterButton: TPanel;
    btnDeliveriesFilter: TSpeedButton;
    navData: TDBColorNavigator;
    grdData: TAbmesDBGrid;
    cdsDeliveries: TAbmesClientDataSet;
    dsDeliveries: TDataSource;
    cdsGroupDeliveriesMaster: TAbmesClientDataSet;
    dsGroupDeliveriesMaster: TDataSource;
    cdsGroupDeliveriesDetail: TAbmesClientDataSet;
    dsGroupDeliveriesDetail: TDataSource;
    tmrMaster: TTimer;
    actGroupDeliveriesFilter: TAction;
    pdsGroupDeliveries: TParamDataSet;
    pdsDeliveries: TParamDataSet;
    actDeliveriesFilter: TAction;
    actEditDeliveryFromGroup: TAction;
    actEditDelivery: TAction;
    pnlGroupDeliveriesButtons: TPanel;
    actPrintDeliveryGroups: TAction;
    actPrintDeliveries: TAction;
    btnEditDeliveryFromGroup: TBitBtn;
    Panel1: TPanel;
    btnEditDelivery: TBitBtn;
    actToggleProductDisplay: TAction;
    actDeleteGroup: TAction;
    tlbTopButtons: TToolBar;
    sepBeforeExcelExportDeliveries: TToolButton;
    actExcelExportGroupDeliveriesMaster: TAction;
    tlbTopDeliveryGroupsButtons: TToolBar;
    btnExcelExportGroupDeliveriesMaster: TToolButton;
    actExcelExportDeliveries: TAction;
    btnExcelExportDeliveries: TToolButton;
    pdsGroupDeliveriesCURRENT_FILTER_VARIANT_CODE: TAbmesFloatField;
    pdsDeliveriesCURRENT_FILTER_VARIANT_CODE: TAbmesFloatField;
    sepBeforePrintButton: TToolButton;
    btnPrintDeliveryGroups: TToolButton;
    btnPrintDeliveries: TToolButton;
    tlbGroupDeliveriesDetail: TToolBar;
    btnProductDocumentation: TToolButton;
    btnShowAnnuledLines: TSpeedButton;
    sepBeforeDeliveryDocumentation: TToolButton;
    tlbDocumentation: TToolBar;
    btnProductDocumentation2: TToolButton;
    cdsDeliveries_SUM_TOTAL_PRICE_BC: TAggregateField;
    lblSumTotalPrice: TLabel;
    btnDeliveryDocumentation2: TToolButton;
    sepBeforeDeliveryDocumentation2: TToolButton;
    sepBeforeProductDocumentation2: TToolButton;
    lblDeliveryDocumentation2: TLabel;
    sepBeforeProductDocumentation: TToolButton;
    btnDeliveryDocumentation: TToolButton;
    lblDeliveryDocumentation: TLabel;
    lblProductDocumentation: TLabel;
    tlbVendorDoc: TToolBar;
    sepBeforeVendorDoc: TToolButton;
    btnVendorDoc: TToolButton;
    lblVendorDoc: TLabel;
    cdsGroupDeliveriesMasterSTATUS_CODE: TAbmesFloatField;
    cdsGroupDeliveriesMasterDELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsGroupDeliveriesMasterVENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsGroupDeliveriesMasterVENDOR_STATUS_NAME: TAbmesWideStringField;
    cdsGroupDeliveriesMasterVENDOR_COMPANY_NAME: TAbmesWideStringField;
    cdsGroupDeliveriesMasterDELIVERY_VENDOR_OFFICE_CODE: TAbmesFloatField;
    cdsGroupDeliveriesMasterVENDOR_OFFICE_NAME: TAbmesWideStringField;
    cdsGroupDeliveriesMasterIS_TRANSPORT_FROM_VENDOR: TAbmesFloatField;
    cdsGroupDeliveriesMasterCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsGroupDeliveriesMasterSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsGroupDeliveriesMasterTOTAL_PRICE: TAbmesFloatField;
    cdsGroupDeliveriesMasterSD_TOTAL_PRICE: TAbmesFloatField;
    pdsGroupDeliveriesBEGIN_DELIVERY_DATE: TAbmesSQLTimeStampField;
    pdsGroupDeliveriesEND_DELIVERY_DATE: TAbmesSQLTimeStampField;
    pdsGroupDeliveriesBEGIN_DAYS_LEFT: TAbmesFloatField;
    pdsGroupDeliveriesEND_DAYS_LEFT: TAbmesFloatField;
    pdsGroupDeliveriesDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    pdsGroupDeliveriesCOUNTRY_CODE: TAbmesFloatField;
    pdsGroupDeliveriesDELIVERY_VENDOR_OFFICE_CODE: TAbmesFloatField;
    pdsGroupDeliveriesCUSTOMHOUSE_CODE: TAbmesFloatField;
    pdsGroupDeliveriesSHIPMENT_TYPE_CODE: TAbmesFloatField;
    pdsGroupDeliveriesMIN_STATUS_CODE: TAbmesFloatField;
    pdsGroupDeliveriesMAX_STATUS_CODE: TAbmesFloatField;
    cdsGroupDeliveriesDetailSTATUS_CODE: TAbmesFloatField;
    cdsGroupDeliveriesDetailDELIVERY_ID: TAbmesWideStringField;
    cdsGroupDeliveriesDetailPRIORITY_NO: TAbmesFloatField;
    cdsGroupDeliveriesDetailDAYS_LEFT: TAbmesFloatField;
    cdsGroupDeliveriesDetailDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsGroupDeliveriesDetailDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsGroupDeliveriesDetailDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGroupDeliveriesDetailDOC_CODE: TAbmesFloatField;
    cdsGroupDeliveriesDetailHAS_DOC: TAbmesFloatField;
    cdsGroupDeliveriesDetailPRODUCT_NAME: TAbmesWideStringField;
    cdsGroupDeliveriesDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGroupDeliveriesDetailPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsGroupDeliveriesDetailPRODUCT_HAS_DOC: TAbmesFloatField;
    cdsGroupDeliveriesDetailPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField;
    cdsGroupDeliveriesDetailWORK_QUANTITY: TAbmesFloatField;
    cdsGroupDeliveriesDetailMEASURE_CODE: TAbmesFloatField;
    cdsGroupDeliveriesDetailMEASURE_ABBREV: TAbmesWideStringField;
    cdsGroupDeliveriesDetailACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGroupDeliveriesDetailACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGroupDeliveriesDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGroupDeliveriesDetailTOTAL_PRICE: TAbmesFloatField;
    cdsGroupDeliveriesDetailCURRENCY_ABBREV: TAbmesWideStringField;
    pdsGroupDeliveriesCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsGroupDeliveriesDetailPRODUCT_CODE: TAbmesFloatField;
    cdsDeliveriesDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveriesDCD_OBJECT_CODE: TAbmesFloatField;
    cdsDeliveriesDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsDeliveriesDELIVERY_IDENTIFICATION: TAbmesWideStringField;
    cdsDeliveriesSTATUS_CODE: TAbmesFloatField;
    cdsDeliveriesVENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsDeliveriesVENDOR_SHORT_NAME: TAbmesWideStringField;
    cdsDeliveriesDELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsDeliveriesDAYS_LEFT: TAbmesFloatField;
    cdsDeliveriesWORK_QUANTITY: TAbmesFloatField;
    cdsDeliveriesACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDeliveriesPRODUCT_CODE: TAbmesFloatField;
    cdsDeliveriesPRIORITY_NO: TAbmesFloatField;
    cdsDeliveriesPRIORITY_COLOR: TAbmesFloatField;
    cdsDeliveriesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsDeliveriesPRODUCT_NAME: TAbmesWideStringField;
    cdsDeliveriesPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveriesPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsDeliveriesPRODUCT_HAS_DOC: TAbmesFloatField;
    cdsDeliveriesPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField;
    cdsDeliveriesWORK_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDeliveriesACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDeliveriesDCD_PSD_STORE_CODE: TAbmesFloatField;
    cdsDeliveriesTOTAL_PRICE: TAbmesFloatField;
    cdsDeliveriesSINGLE_PRICE: TAbmesFloatField;
    cdsDeliveriesACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveriesCURRENCY_CODE: TAbmesFloatField;
    cdsDeliveriesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsDeliveriesMAX_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsDeliveriesSD_QUANTITY: TAbmesFloatField;
    cdsDeliveriesSD_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDeliveriesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveriesDOC_CODE: TAbmesFloatField;
    cdsDeliveriesHAS_DOC: TAbmesFloatField;
    cdsGroupDeliveriesDetailDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGroupDeliveriesDetailDCD_OBJECT_CODE: TAbmesFloatField;
    cdsGroupDeliveriesDetailDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsGroupDeliveriesDetailPRIORITY_COLOR: TAbmesFloatField;
    cdsGroupDeliveriesDetailPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsDeliveriesSINGLE_PRICE_DEV_PERCENT: TAbmesFloatField;
    cdsDeliveriesACC_SINGLE_PRICE_DEV_PERCENT: TAbmesFloatField;
    pdsDeliveriesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    pdsDeliveriesDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    pdsDeliveriesMIN_STATUS_CODE: TAbmesFloatField;
    pdsDeliveriesMAX_STATUS_CODE: TAbmesFloatField;
    pdsDeliveriesDCD_BRANCH_CODE: TAbmesFloatField;
    pdsDeliveriesDCD_CODE: TAbmesFloatField;
    pdsDeliveriesDELIVERY_PROJECT_CODE: TAbmesFloatField;
    pdsDeliveriesCOUNTRY_CODE: TAbmesFloatField;
    pdsDeliveriesSHIPMENT_TYPE_CODE: TAbmesFloatField;
    pdsDeliveriesDELIVERY_VENDOR_OFFICE_CODE: TAbmesFloatField;
    pdsDeliveriesIS_TRANSPORT_FROM_VENDOR_CODE: TAbmesFloatField;
    pdsDeliveriesBEGIN_DELIVERY_DATE: TAbmesSQLTimeStampField;
    pdsDeliveriesEND_DELIVERY_DATE: TAbmesSQLTimeStampField;
    pdsDeliveriesBEGIN_DELIVERY_DAYS_RSV: TAbmesFloatField;
    pdsDeliveriesEND_DELIVERY_DAYS_RSV: TAbmesFloatField;
    pdsDeliveriesCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsDeliveriesDELIVERY_TYPE_CODE: TAbmesFloatField;
    cdsDeliveriesVENDOR_PRODUCT_NAME: TAbmesWideStringField;
    cdsGroupDeliveriesDetailVENDOR_PRODUCT_NAME: TAbmesWideStringField;
    cdsGroupDeliveriesMasterVENDOR_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGroupDeliveriesMasterVENDOR_DOC_CODE: TAbmesFloatField;
    cdsGroupDeliveriesMasterVENDOR_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsGroupDeliveriesDetailREAL_WORK_QUANTITY: TAbmesFloatField;
    cdsGroupDeliveriesDetailREAL_TOTAL_PRICE: TAbmesFloatField;
    cdsGroupDeliveriesDetailREAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGroupDeliveriesDetailPLAN_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGroupDeliveriesDetailREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGroupDeliveriesMasterGROUP_BY_RECEIVE_DATE: TAbmesFloatField;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    dsDateUnits: TDataSource;
    pdsGroupDeliveriesGROUP_BY_RECEIVE_DATE: TAbmesFloatField;
    pdsGroupDeliveriesLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    pdsGroupDeliveries_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    frDeliveryDateInterval: TfrDateIntervalFrame;
    edtDeliveryDealType: TDBEdit;
    edtGroupByReceiveDate: TDBEdit;
    pnlDeliveryGroupTopGrid: TPanel;
    lblDeliveryDateInterval: TLabel;
    lblDeliveryDealType: TLabel;
    lblGroupByReceiveDate: TLabel;
    Panel2: TPanel;
    lblDeliveryDateInterval2: TLabel;
    lblDeliveryDealType2: TLabel;
    lblDateUnit: TLabel;
    edtDateUnit: TDBEdit;
    dsGroupDeliveriesParams: TDataSource;
    dsDeliveriesParams: TDataSource;
    cdsDeliveryDealTypes: TAbmesClientDataSet;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    dsDeliveryDealTypes: TDataSource;
    pdsGroupDeliveries_DELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    frDeliveryDateInterval2: TfrDateIntervalFrame;
    edtDeliveryDealType2: TDBEdit;
    pdsDeliveries_DELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeliveriesREAL_WORK_QUANTITY: TAbmesFloatField;
    cdsDeliveriesREAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDeliveriesPLAN_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDeliveriesREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    lblDateUnit2: TLabel;
    edtDateUnit2: TDBEdit;
    pdsDeliveriesLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    pdsDeliveriesHAS_SALE: TAbmesFloatField;
    pdsDeliveriesSALE_BRANCH_CODE: TAbmesFloatField;
    pdsDeliveriesSALE_NO: TAbmesFloatField;
    pdsDeliveries_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    pdsDeliveriesREPORT_TAG: TAbmesFloatField;
    pdsDeliveriesREPORT_TITLE: TAbmesWideStringField;
    pdsGroupDeliveriesREPORT_TITLE: TAbmesWideStringField;
    cdsGroupDeliveriesDetailDELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsGroupDeliveriesMasterREPORT_TAG: TAbmesFloatField;
    cdsGroupDeliveriesMaster_SUM_TOTAL_PRICE: TAggregateField;
    cdsGroupDeliveriesMaster_SUM_SD_TOTAL_PRICE: TAggregateField;
    pdsDeliveriesDAMAGES_STATE_CODE: TAbmesFloatField;
    pdsGroupDeliveriesDAMAGES_STATE_CODE: TAbmesFloatField;
    cdsGroupDeliveriesMasterDAMAGES_STATE_CODE: TAbmesFloatField;
    cdsDeliveriesDAMAGES_STATE_CODE: TAbmesFloatField;
    cdsDeliveriesDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveriesDELIVERY_OBJECT_CODE: TAbmesFloatField;
    cdsGroupDeliveriesDetailDAMAGES_STATE_CODE: TAbmesFloatField;
    cdsGroupDeliveriesDetailDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGroupDeliveriesDetailDELIVERY_OBJECT_CODE: TAbmesFloatField;
    cdsExceptEventsParams: TAbmesClientDataSet;
    cdsExceptEventsParamsMAX_STATE_CODE: TAbmesFloatField;
    cdsExceptEventsParamsIS_FILTERED_BY_DAMAGES: TAbmesFloatField;
    cdsExceptEventsParamsEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField;
    actGroupDeliveriesExceptEvents: TAction;
    actDeliveriesExceptEvents: TAction;
    cdsExceptEventsParamsDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsExceptEventsParamsDELIVERY_OBJECT_CODE: TAbmesFloatField;
    btnGroupDeliveriesExceptEvents: TBitBtn;
    btnDeliveriesExceptEvents: TBitBtn;
    pdsGroupDeliveriesPRODUCT_CLASS_CODE: TAbmesFloatField;
    pdsDeliveriesPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsGroupDeliveriesMasterPRODUCT_CLASS_CODE: TAbmesFloatField;
    pnlToggles: TPanel;
    tlbToggles: TToolBar;
    btnToggleProductDisplay: TSpeedButton;
    pnlProductDocumentation2: TPanel;
    cdsDeliveriesTOTAL_PRICE_BC: TAbmesFloatField;
    lblBaseCurrency: TLabel;
    pdsDeliveriesBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    pdsDeliveriesBUDGET_ORDER_CODE: TAbmesFloatField;
    pdsDeliveriesBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    pdsGroupDeliveriesBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    pdsGroupDeliveriesBUDGET_ORDER_CODE: TAbmesFloatField;
    pdsGroupDeliveriesBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsDeliveries_BUDGET_ORDER_BRANCH: TAbmesWideStringField;
    pdsGroupDeliveries_BUDGET_ORDER_BRANCH: TAbmesWideStringField;
    pdsGroupDeliveriesBOI_ORDER_CODE: TAbmesFloatField;
    pdsDeliveriesBOI_ORDER_CODE: TAbmesFloatField;
    pdsGroupDeliveriesCHOSEN_COMPANIES: TAbmesWideStringField;
    pdsDeliveriesCHOSEN_COMPANIES: TAbmesWideStringField;
    cdsDeliveriesHAS_FIN_ORDER: TAbmesFloatField;
    pdsGroupDeliveriesPSD_STORE_CODE: TAbmesFloatField;
    pnlMain: TPanel;
    pnlDetailToggles: TPanel;
    btnShowReal: TSpeedButton;
    btnShowPlan: TSpeedButton;
    tlbDetailToggles: TToolBar;
    sbtnWorkMeasure: TSpeedButton;
    sbtnAccountMeasure: TSpeedButton;
    sepBeforeAccountMeasure: TToolButton;
    cdsGroupDeliveriesMasterMIN_TRANSPORT_MEASURE_CODE: TAbmesFloatField;
    cdsGroupDeliveriesMasterMAX_TRANSPORT_MEASURE_CODE: TAbmesFloatField;
    cdsGroupDeliveriesMasterTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGroupDeliveriesMaster_PLAN_TRANSPORT_QUANTITY: TAbmesWideStringField;
    cdsGroupDeliveriesMaster_OTCH_TRANSPORT_QUANTITY: TAbmesWideStringField;
    cdsGroupDeliveriesMaster_DEV_TRANSPORT_QUANTITY: TAbmesWideStringField;
    cdsGroupDeliveriesMaster_TRANSPORT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGroupDeliveriesMasterPLAN_TRANSPORT_QUANTITY: TAbmesFloatField;
    cdsGroupDeliveriesMasterOTCH_TRANSPORT_QUANTITY: TAbmesFloatField;
    cdsGroupDeliveriesMaster_DEV_TOTAL_PRICE: TAbmesFloatField;
    cdsGroupDeliveriesMaster_SUM_DEV_TOTAL_PRICE: TAggregateField;
    cdsGroupDeliveriesMasterMIN_DAYS_LEFT: TAbmesFloatField;
    cdsGroupDeliveriesDetailTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGroupDeliveriesDetailTRANSPORT_MEASURE_COEF: TAbmesFloatField;
    cdsGroupDeliveriesDetail_PLAN_TRANSPORT_QUANTITY: TAbmesFloatField;
    cdsGroupDeliveriesDetail_REAL_TRANSPORT_QUANTITY: TAbmesFloatField;
    cdsGroupDeliveriesDetail_DEV_WORK_QUANTITY: TAbmesFloatField;
    cdsGroupDeliveriesDetail_DEV_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGroupDeliveriesDetail_DEV_TOTAL_PRICE: TAbmesFloatField;
    btnExpGroupsDetailShowDates: TSpeedButton;
    btnExpGroupsDetailShowQty: TSpeedButton;
    cdsGroupDeliveriesDetailRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsGroupDeliveriesDetailRECEIVE_DATE_RSV: TAbmesFloatField;
    cdsGroupDeliveriesDetailRETURN_DATE: TAbmesSQLTimeStampField;
    cdsGroupDeliveriesDetailRETURN_DATE_RSV: TAbmesFloatField;
    cdsGroupDeliveriesDetailIS_PROFORM_INVOICE: TAbmesFloatField;
    tlbDeliveriesToggleButtons: TToolBar;
    btnDeliveriesWorkMeasure: TSpeedButton;
    btnDeliveriesAccountMeasure: TSpeedButton;
    sepBeforeDeliveriesMeasureButtons: TToolButton;
    btnDeliveriesShowInvoice: TSpeedButton;
    sepBeforeDeliveriesShowInvoice: TToolButton;
    btnDeliveriesShowReal: TSpeedButton;
    btnDeliveriesShowPlan: TSpeedButton;
    sepBeforeDeliveriesShowPlanOrReal: TToolButton;
    btnDeliveriesShowReturnDate: TSpeedButton;
    btnDeliveriesShowReceiveDate: TSpeedButton;
    cdsDeliveriesRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDeliveriesRETURN_DATE: TAbmesSQLTimeStampField;
    cdsDeliveriesRECEIVE_DATE_RSV: TAbmesFloatField;
    cdsDeliveriesRETURN_DATE_RSV: TAbmesFloatField;
    btnIsLease: TSpeedButton;
    cdsDeliveriesPLAN_LEASE_DATEY_UNIT_QTY: TAbmesFloatField;
    cdsDeliveriesREAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGroupDeliveriesDetailPLAN_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGroupDeliveriesDetailREAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDeliveriesREAL_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveriesREAL_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveriesREAL_TOTAL_PRICE: TAbmesFloatField;
    cdsGroupDeliveriesDetail_DEV_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGroupDeliveriesDetail_DEV_ACC_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDeliveries_DEV_QUANTITY: TAbmesFloatField;
    cdsDeliveries_DEV_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDeliveries_DEV_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveries_DEV_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveries_DEV_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDeliveries_DEV_TOTAL_PRICE: TAbmesFloatField;
    cdsDeliveriesINVOICE_NO: TAbmesFloatField;
    cdsDeliveriesINVOICE_DATE: TAbmesSQLTimeStampField;
    tlbSeparatorBeforePlanReal: TToolBar;
    sepGroupDeliveriesDetailBeforePlanReal: TToolButton;
    cdsDeliveriesREAL_TOTAL_PRICE_BC: TAbmesFloatField;
    cdsDeliveries_SUM_REAL_TOTAL_PRICE_BC: TAggregateField;
    pnlSumTotalPriceBC: TPanel;
    edtSumTotalPrice: TDBEdit;
    pnlSumRealTotalPriceBC: TPanel;
    edtSumRealTotalPriceBC: TDBEdit;
    pdsGroupDeliveriesDCD_BRANCH_CODE: TAbmesFloatField;
    pdsGroupDeliveries_DCD_BRANCH: TAbmesWideStringField;
    procedure cdsGroupDeliveriesMasterAfterScroll(DataSet: TDataSet);
    procedure tmrMasterTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actGroupDeliveriesFilterExecute(Sender: TObject);
    procedure actDeliveriesFilterExecute(Sender: TObject);
    procedure pcMainChanging(Sender: TObject; var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure actEditDeliveryFromGroupExecute(Sender: TObject);
    procedure grdDeliveryGroupsDetailDblClick(Sender: TObject);
    procedure actEditDeliveryExecute(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure GridsSortMarkingChanged(Sender: TObject);
    procedure actEditDeliveryFromGroupUpdate(Sender: TObject);
    procedure actEditDeliveryUpdate(Sender: TObject);
    procedure actPrintDeliveryGroupsUpdate(Sender: TObject);
    procedure actPrintDeliveriesUpdate(Sender: TObject);
    procedure actPrintDeliveryGroupsExecute(Sender: TObject);
    procedure actPrintDeliveriesExecute(Sender: TObject);
    procedure GridsBeforeOpen(DataSet: TDataSet);
    procedure GridsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGroupDeliveriesMasterAfterOpen(DataSet: TDataSet);
    procedure cdsGroupDeliveriesDetailAfterOpen(DataSet: TDataSet);
    procedure cdsDeliveriesAfterOpen(DataSet: TDataSet);
    procedure navGroupDeliveriesBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure pcMainChange(Sender: TObject);
    procedure cdsGroupDeliveriesMasterBeforeClose(DataSet: TDataSet);
    procedure btnShowAnnuledLinesClick(Sender: TObject);
    procedure actDeleteGroupExecute(Sender: TObject);
    procedure cdsGroupDeliveriesMasterAfterDelete(DataSet: TDataSet);
    procedure cdsGroupDeliveriesMasterCOMPLETED_PRICE_PERCENTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure btnProductDocumentationClick(Sender: TObject);
    procedure btnProductDocumentation2Click(Sender: TObject);
    procedure actExcelExportGroupDeliveriesMasterUpdate(Sender: TObject);
    procedure actExcelExportGroupDeliveriesMasterExecute(Sender: TObject);
    procedure actExcelExportDeliveriesUpdate(Sender: TObject);
    procedure actExcelExportDeliveriesExecute(Sender: TObject);
    procedure actGroupDeliveriesFilterUpdate(Sender: TObject);
    procedure actDeliveriesFilterUpdate(Sender: TObject);
    procedure cdsGroupDeliveriesDetailDELIVERY_STATE_CODEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure btnDeliveryDocumentation2Click(Sender: TObject);
    procedure btnDeliveryDocumentationClick(Sender: TObject);
    procedure cdsGroupDeliveriesMasterBeforeOpen(DataSet: TDataSet);
    procedure cdsDeliveriesBeforeOpen(DataSet: TDataSet);
    procedure cdsGroupDeliveriesMasterSTATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGroupDeliveriesMasterPRICE_DEVIATION_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGroupDeliveriesDetailSTATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDeliveriesSTATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDeliveriesQUANTITY_DEV_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDeliveriesACC_QUANTITY_DEV_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDeliveriesSINGLE_PRICE_DEV_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDeliveriesACC_SINGLE_PRICE_DEV_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure GridsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnVendorDocClick(Sender: TObject);
    procedure LeaseFieldsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure pdsDeliveriesCalcFields(DataSet: TDataSet);
    procedure pdsGroupDeliveriesCalcFields(DataSet: TDataSet);
    procedure cdsGroupDeliveriesDetailCalcFields(DataSet: TDataSet);
    procedure cdsGroupDeliveriesMasterCalcFields(DataSet: TDataSet);
    procedure cdsGroupDeliveriesMaster_AVG_PRICE_DEVIATION_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGroupDeliveriesDetailDAMAGES_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDeliveriesDAMAGES_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGroupDeliveriesMasterDAMAGES_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actDeliveriesExceptEventsUpdate(Sender: TObject);
    procedure actGroupDeliveriesExceptEventsUpdate(Sender: TObject);
    procedure actGroupDeliveriesExceptEventsExecute(Sender: TObject);
    procedure actDeliveriesExceptEventsExecute(Sender: TObject);
    procedure cdsGroupDeliveriesDetailBeforeOpen(DataSet: TDataSet);
    procedure cdsGroupDeliveriesDetailIS_PROFORM_INVOICEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDeliveriesCalcFields(DataSet: TDataSet);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FPreviousActivePage: TTabSheet;
    FRecordChangePending: Boolean;
    FRecordChangeCount: Integer;
    FDelayDetailFetch: Boolean;
    FProdOrderBaseType: TProdOrderBaseType;
    FFilterFormEnabled: Boolean;
    FDeliveriesOnly: Boolean;
    procedure ExecuteFilter(AFilterFormClass: TFilterFormClass; pdsFilter: TParamDataSet;
      AcdsData: TCustomClientDataSet);
    procedure FetchDetails;
    procedure ShowExceptEvents(ADeliveryObjectBranchCode,
      ADeliveryObjectCode: Integer);
  protected
    class function CanUseDocs: Boolean; override;
    function GetOriginalFormCaption: string; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoBeforeShow; override;
    procedure DoAfterHide; override;
    procedure DoApplyUpdates; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetActiveGridReportTitle(AGrid: TAbmesDBGrid): string; override;
  public
    procedure Initialize; override;

    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProdOrderBaseType: TProdOrderBaseType = pobtEmpty;
      AFilterFormEnabled: Boolean = True;
      ADeliveriesOnly: Boolean = False;
      AProductClass: TProductClass = pcNone): Boolean;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProdOrderBaseType: TProdOrderBaseType = pobtEmpty;
      AFilterFormEnabled: Boolean = True;
      ADeliveriesOnly: Boolean = False;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;
    function SupportsFilterForm: Boolean; override;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  uUtils, uClientUtils, fDeliveriesFilter, fGroupDeliveriesFilter,
  fDelivery, rGroupDeliveries, uTreeClientUtils,
  rDeliveries, uExcelExport, AbmesDialogs, uClientConsts,
  dMain, uDeliveryUtils, uDocUtils, uColorConsts, uDeliveryDealTypes,
  uExceptEventClientUtils, fExceptEvents, uProductClientUtils, uToolbarUtils,
  uEnumeratorUtils;

{$R *.DFM}

resourcestring
  SConfirmDeleteGroup = 'Потвърдете изтриване на група';
  SRows = ' реда ';
  SConfirmDetailExcelExportMessage = 'Желаете ли експорт на доставките на всяка група?';
  SDiffCurrencies = 'разл. валути';
  SIsInvoice = 'Ф';
  SIsProform = 'П';

const
  SortIndexName = 'idxGRID_SORT';

const
  IsProformInvoiceTexts: array[Boolean] of string = (SIsInvoice, SIsProform);

{ TfmDeliveries }

procedure TfmDeliveries.cdsGroupDeliveriesMasterAfterScroll(
  DataSet: TDataSet);
begin
  inherited;

  if FDelayDetailFetch then
    begin
      FRecordChangePending:= True;
      Inc(FRecordChangeCount);
    end
  else
    FetchDetails;
end;

procedure TfmDeliveries.tmrMasterTimer(Sender: TObject);
begin
  inherited;

  if FRecordChangePending and
     (FRecordChangeCount = 0) and
     (cdsGroupDeliveriesMaster.Active) then
    begin
      FRecordChangePending:= False;
      FRecordChangeCount:= 0;

      FetchDetails;
    end;

  FRecordChangeCount:= 0;
end;

procedure TfmDeliveries.CloseDataSets;
begin
  cdsBranches.Close;
  inherited;
  cdsDeliveryDealTypes.Close;
  cdsDateUnits.Close;
  cdsGroupDeliveriesMaster.Close;
  cdsGroupDeliveriesDetail.Close;
  cdsDeliveries.Close;
end;

procedure TfmDeliveries.ExecuteFilter(AFilterFormClass: TFilterFormClass;
  pdsFilter: TParamDataSet; AcdsData: TCustomClientDataSet);
var
  SaveCursor: TCursor;
  b: Boolean;
begin
  b:= False;
  if (AFilterFormClass = TfmDeliveriesFilter) then
    b:= TfmDeliveriesFilter.ShowForm(dmDocClient, pdsDeliveries, emEdit, doNone, FProdOrderBaseType, FProductClass)
  else
  if (AFilterFormClass = TfmGroupDeliveriesFilter) then
    b:= TfmGroupDeliveriesFilter.ShowForm(dmDocClient, pdsGroupDeliveries, emEdit, doNone, FProdOrderBaseType, FProductClass)
  else
    Assert(False);

  if b then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        RefreshDataSet(AcdsData);
        if (AcdsData.Name = 'cdsGroupDeliveriesMaster') then
          begin
            SetParams(cdsGroupDeliveriesDetail.Params, cdsGroupDeliveriesMaster);
            RefreshDataSet(cdsGroupDeliveriesDetail);
          end;
      finally
        Screen.Cursor:= SaveCursor;
      end;
    end;
end;

procedure TfmDeliveries.DoBeforeShow;
var
  SaveCursor: TCursor;
  b: Boolean;
  cds: TAbmesClientDataSet;
  DefaultActivePage: Integer;
  MsgParams: TStrings;
begin
  if cdsDeliveries.Params.ParamByName('DELIVERY_DEAL_TYPE_CODE').IsNull then
    begin
      if (FProdOrderBaseType = pobtSaleCover) then
        cdsDeliveries.Params.ParamByName('DELIVERY_DEAL_TYPE_CODE').AsInteger:= ddtDeliveryForSales
      else
        begin
          if (FProdOrderBaseType = pobtOccCover) then
            cdsDeliveries.Params.ParamByName('DELIVERY_DEAL_TYPE_CODE').AsInteger:= ddtDeliveryForOccupations
          else
            begin
              Assert(FProdOrderBaseType = pobtEnvCover);
              cdsDeliveries.Params.ParamByName('DELIVERY_DEAL_TYPE_CODE').AsInteger:= ddtDeliveryForEnvironment;
            end;
        end;
    end;

  MsgParams:= uDeliveryUtils.CreateCommonMsgParams(FProdOrderBaseType, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    if (FProdOrderBaseType = pobtOccCover) then
      OccupationProductFixCommonMsgParams(MsgParams);

    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    pdsGroupDeliveries.Open;
    pdsDeliveries.Open;
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try }

  inherited;

  if FDeliveriesOnly then
    DefaultActivePage:= 2
  else
    DefaultActivePage:= LoginContext.DefaultDeliveriesActivePage;

  case DefaultActivePage of
    1:
      begin
        b:= not FFilterFormEnabled or TfmGroupDeliveriesFilter.ShowForm(dmDocClient, pdsGroupDeliveries, emEdit, doNone, FProdOrderBaseType, FProductClass);
        cds:= cdsGroupDeliveriesMaster;
        FPreviousActivePage:= tsGroupDeliveries;
      end;
    2:
     begin
       b:= not FFilterFormEnabled or TfmDeliveriesFilter.ShowForm(dmDocClient, pdsDeliveries, emEdit, doNone, FProdOrderBaseType, FProductClass);
       cds:= cdsDeliveries;
       FPreviousActivePage:= tsDeliveries;
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

procedure TfmDeliveries.FormShow(Sender: TObject);
begin
  inherited;

  pcMain.ActivePage:= FPreviousActivePage;
  cdsGroupDeliveriesDetail.Filtered:= not btnShowAnnuledLines.Down;

  tsGroupDeliveries.TabVisible:= not FDeliveriesOnly;
end;

function TfmDeliveries.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmDeliveries.ShowExceptEvents(ADeliveryObjectBranchCode, ADeliveryObjectCode: Integer);
begin
  cdsExceptEventsParams.CreateDataSet;
  try
    cdsExceptEventsParams.Append;
    try
      cdsExceptEventsParamsMAX_STATE_CODE.AsInteger:= High(TExceptEventStateNames);
      cdsExceptEventsParamsIS_FILTERED_BY_DAMAGES.AsBoolean:= True;
      cdsExceptEventsParamsEE_DAMAGE_PROCESS_TYPE_CODE.AsInteger:= ExceptEventDamageProcessTypeToInt(eedptDelivery);
      cdsExceptEventsParamsDELIVERY_OBJECT_BRANCH_CODE.AsInteger:= ADeliveryObjectBranchCode;
      cdsExceptEventsParamsDELIVERY_OBJECT_CODE.AsInteger:= ADeliveryObjectCode;

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

procedure TfmDeliveries.actGroupDeliveriesExceptEventsExecute(Sender: TObject);
begin
  inherited;
  ShowExceptEvents(
    cdsGroupDeliveriesDetailDELIVERY_OBJECT_BRANCH_CODE.AsInteger,
    cdsGroupDeliveriesDetailDELIVERY_OBJECT_CODE.AsInteger);
end;

procedure TfmDeliveries.actGroupDeliveriesExceptEventsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGroupDeliveriesDetail.IsEmpty and
    not cdsGroupDeliveriesDetailDAMAGES_STATE_CODE.IsNull;
end;

procedure TfmDeliveries.actGroupDeliveriesFilterExecute(Sender: TObject);
begin
  inherited;
  ExecuteFilter(TfmGroupDeliveriesFilter, pdsGroupDeliveries, cdsGroupDeliveriesMaster);
end;

procedure TfmDeliveries.actDeliveriesExceptEventsExecute(Sender: TObject);
begin
  inherited;
  ShowExceptEvents(
    cdsDeliveriesDELIVERY_OBJECT_BRANCH_CODE.AsInteger,
    cdsDeliveriesDELIVERY_OBJECT_CODE.AsInteger);
end;

procedure TfmDeliveries.actDeliveriesExceptEventsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsDeliveries.IsEmpty and
    not cdsDeliveriesDAMAGES_STATE_CODE.IsNull;
end;

procedure TfmDeliveries.actDeliveriesFilterExecute(Sender: TObject);
begin
  inherited;
  ExecuteFilter(TfmDeliveriesFilter, pdsDeliveries, cdsDeliveries);
end;

procedure TfmDeliveries.pcMainChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  FPreviousActivePage:= (Sender as TPageControl).ActivePage;
end;

procedure TfmDeliveries.pdsDeliveriesCalcFields(DataSet: TDataSet);
begin
  inherited;

  pdsDeliveriesREPORT_TITLE.AsString:=
    Caption + ' - ' + tsDeliveries.Caption;

  pdsDeliveriesPRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);

  pdsDeliveriesREPORT_TAG.AsInteger:=
    8 * Ord(btnToggleProductDisplay.Down) +
    4 * Ord(sbtnAccountMeasure.Down) +
    2 * Ord(btnShowReal.Down) +
    1 * (1 - Ord(pdsDeliveries.Active and not (pdsDeliveriesDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease))) +
    1;
end;

procedure TfmDeliveries.pdsGroupDeliveriesCalcFields(DataSet: TDataSet);
begin
  inherited;

  pdsGroupDeliveriesREPORT_TITLE.AsString:=
     Caption + ' - ' + tsGroupDeliveries.Caption;

  pdsGroupDeliveriesPRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmDeliveries.FormCreate(Sender: TObject);
begin
  inherited;
  FDelayDetailFetch:= True;

  RegisterDateFields(cdsGroupDeliveriesMaster);
  RegisterDateFields(cdsGroupDeliveriesDetail);
  RegisterDateFields(cdsDeliveries);

  frDeliveryDateInterval.FieldNames:= 'BEGIN_DELIVERY_DATE;END_DELIVERY_DATE';
  frDeliveryDateInterval2.FieldNames:= 'BEGIN_DELIVERY_DATE;END_DELIVERY_DATE';

  MaximizeStyle:= msVertical;

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGroupDeliveriesMasterTOTAL_PRICE,
      cdsGroupDeliveriesMaster_SUM_TOTAL_PRICE,
      cdsGroupDeliveriesMasterSD_TOTAL_PRICE,
      cdsGroupDeliveriesMaster_SUM_SD_TOTAL_PRICE,
      cdsGroupDeliveriesDetailCURRENCY_ABBREV,
      cdsGroupDeliveriesDetailTOTAL_PRICE,
      cdsDeliveriesSINGLE_PRICE,
      cdsDeliveriesACCOUNT_SINGLE_PRICE,
      cdsDeliveriesTOTAL_PRICE,
      cdsDeliveriesCURRENCY_ABBREV,
      cdsDeliveriesTOTAL_PRICE_BC,
      cdsDeliveries_SUM_TOTAL_PRICE_BC]);
end;

procedure TfmDeliveries.actEditDeliveryFromGroupExecute(Sender: TObject);
begin
  inherited;

  if TfmDelivery.ShowForm(dmDocClient, cdsGroupDeliveriesDetail, EditMode, doNone, nil, FProductClass) then
    RefreshDataSet(cdsGroupDeliveriesMaster);
end;

procedure TfmDeliveries.grdDeliveryGroupsDetailDblClick(Sender: TObject);
begin
  inherited;

  if not (cdsGroupDeliveriesDetail.Bof and cdsGroupDeliveriesDetail.Eof) then
    actEditDeliveryFromGroup.Execute; 
end;

procedure TfmDeliveries.actEditDeliveryExecute(Sender: TObject);
begin
  inherited;

  if TfmDelivery.ShowForm(dmDocClient, cdsDeliveries, EditMode, doNone, nil, FProductClass) then
    begin
      RefreshDataSet(cdsDeliveries);

      if cdsGroupDeliveriesMaster.Active then
        RefreshDataSet(cdsGroupDeliveriesMaster);
    end;
end;

procedure TfmDeliveries.grdDataDblClick(Sender: TObject);
begin
  inherited;

  if not (cdsDeliveries.Bof and cdsDeliveries.Eof) then
    actEditDelivery.Execute;
end;

procedure TfmDeliveries.GridsSortMarkingChanged(
  Sender: TObject);
begin
  inherited;
  SortGrid(Sender as TAbmesDBGrid, SortIndexName);
end;

procedure TfmDeliveries.Initialize;
begin
  inherited Initialize;

  FOriginalFormCaption:= actForm.Caption;

  if (FProdOrderBaseType = pobtOccCover) then
    begin
      HideGridColumns(grdDeliveryGroupsMaster, [4, 5, 6, 7, 8], 3);
      HideGridColumns(grdDeliveryGroupsDetail, [7, 32], 5);
    end;
end;

procedure TfmDeliveries.LeaseFieldsGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if (cdsGroupDeliveriesDetailDELIVERY_DEAL_TYPE_CODE.AsInteger in [ddtLeaseForSales, ddtLeaseForEnvironment]) then
    Text:= Sender.AsString
  else
    Text:= '---';
end;

procedure TfmDeliveries.actEditDeliveryFromGroupUpdate(Sender: TObject);
begin
  inherited;
  actEditDeliveryFromGroup.Enabled:=
    not (cdsGroupDeliveriesDetail.Bof and cdsGroupDeliveriesDetail.Eof);

  if (EditMode = emReadOnly) then
    (Sender as TAction).Caption:= SReadOnlyCaption + cDialogSuffix
  else
    (Sender as TAction).Caption:= SEditCaption + cDialogSuffix;
end;

procedure TfmDeliveries.actEditDeliveryUpdate(Sender: TObject);
begin
  inherited;
  actEditDelivery.Enabled:=
    not (cdsDeliveries.Bof and cdsDeliveries.Eof);

  if (EditMode = emReadOnly) then
    (Sender as TAction).Caption:= SReadOnlyCaption + cDialogSuffix
  else
    (Sender as TAction).Caption:= SEditCaption + cDialogSuffix;
end;

procedure TfmDeliveries.actPrintDeliveryGroupsUpdate(Sender: TObject);
begin
  inherited;
  actPrintDeliveryGroups.Enabled:= not cdsGroupDeliveriesMaster.IsEmpty;
end;

procedure TfmDeliveries.actPrintDeliveriesUpdate(Sender: TObject);
begin
  inherited;
  actPrintDeliveries.Enabled:= not cdsDeliveries.IsEmpty;
end;

procedure TfmDeliveries.actPrintDeliveryGroupsExecute(Sender: TObject);
//var
//  OldAfterScroll: TDataSetNotifyEvent;
begin
  inherited;

//  old print
//  // force calc fields
//  pdsGroupDeliveries.Last;
//  pdsGroupDeliveries.First;
//
//  OldAfterScroll:= cdsGroupDeliveriesMaster.AfterScroll;
//  cdsGroupDeliveriesMaster.AfterScroll:= nil;
//  try
//    TrptGroupDeliveries.PrintReport(cdsGroupDeliveriesMaster, pdsGroupDeliveries);
//  finally
//    cdsGroupDeliveriesMaster.AfterScroll:= OldAfterScroll;
//  end;   { try }

  ActiveControl:= grdDeliveryGroupsMaster;
  actPrintActiveGrid.Execute;
end;

function TfmDeliveries.GetActiveGridReportTitle(AGrid: TAbmesDBGrid): string;
begin
  if (AGrid = grdData) or (AGrid = grdDeliveryGroupsMaster) then
    Result:= CleanFormCaption(Caption) + ' - ' + pcMain.ActivePage.Caption
  else
    Result:= inherited GetActiveGridReportTitle(AGrid);
end;

procedure TfmDeliveries.FetchDetails;
var
  SaveCursor: TCursor;
begin
  with cdsGroupDeliveriesDetail do
    if not ( Assigned(DataSetField) or
             Assigned(MasterSource) ) then
      begin
        DisableControls;
        try
          Close;

          if cdsGroupDeliveriesMaster.IsEmpty then
            ClearParams(Params)
          else
            SetParams(Params, cdsGroupDeliveriesMaster);
            {begin
              Params.ParamByName('DELIVERY_DATE').Value:= cdsGroupDeliveriesMasterDELIVERY_DATE.AsDateTime;
              Params.ParamByName('VENDOR_COMPANY_CODE').Value:= cdsGroupDeliveriesMasterVENDOR_COMPANY_CODE.Value;
              Params.ParamByName('DELIVERY_VENDOR_OFFICE_CODE').Value:= cdsGroupDeliveriesMasterDELIVERY_VENDOR_OFFICE_CODE.Value;
              Params.ParamByName('IS_TRANSPORT_FROM_VENDOR').Value:= cdsGroupDeliveriesMasterIS_TRANSPORT_FROM_VENDOR.Value;
              Params.ParamByName('CUSTOMHOUSE_CODE').Value:= cdsGroupDeliveriesMasterCUSTOMHOUSE_CODE.Value;
              Params.ParamByName('SHIPMENT_TYPE_CODE').Value:= cdsGroupDeliveriesMasterSHIPMENT_TYPE_CODE.Value;
            end;}

          SaveCursor:= Screen.Cursor;
          Screen.Cursor:= crSQLWait;
          try
            Open;

          finally
            Screen.Cursor:= SaveCursor;
          end;   { try }
        finally
          EnableControls;
        end;
      end;
end;

procedure TfmDeliveries.actPrintDeliveriesExecute(Sender: TObject);
//var
//  b: TBookmark;
begin
  inherited;
//  old print
//  // force calc fields
//  b:= pdsDeliveries.Bookmark;
//  pdsDeliveries.First;
//  pdsDeliveries.Last;
//  pdsDeliveries.Bookmark:= b;
//  TrptDeliveries.PrintReport(cdsDeliveries, pdsDeliveries);

  ActiveControl:= grdData;
  actPrintActiveGrid.Execute;
end;

procedure TfmDeliveries.GridsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  with DataSet as TAbmesClientDataSet do
    if (IndexName = SortIndexName) then
      IndexName:= '';
end;

procedure TfmDeliveries.GridsDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmDeliveries.GridsGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
var
  Highlight: Boolean;
  Field: TField;
begin
  inherited;

  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if (Highlight and (ActiveControl = Sender)) or not Assigned(Field) or (Field.DataSet.Bof and Field.DataSet.Eof) then
    Exit;

  if (Field = cdsGroupDeliveriesDetailPRIORITY_NO) then
    begin
      with cdsGroupDeliveriesDetailPRIORITY_BACKGROUND_COLOR do
        if not IsNull then
          Background:= AsInteger;

      with cdsGroupDeliveriesDetailPRIORITY_COLOR do
        if not IsNull then
          AFont.Color:= AsInteger;
    end;

  if (Field = cdsDeliveriesPRIORITY_NO) then
    begin
      with cdsDeliveriesPRIORITY_BACKGROUND_COLOR do
        if not IsNull then
          Background:= AsInteger;

      with cdsDeliveriesPRIORITY_COLOR do
        if not IsNull then
          AFont.Color:= AsInteger;
    end;

  if (Field = cdsGroupDeliveriesMasterSTATUS_CODE) then
    Background:= DeliveryStatusColors[cdsGroupDeliveriesMasterSTATUS_CODE.AsInteger];

  if (Field = cdsGroupDeliveriesDetailSTATUS_CODE) then
    Background:= DeliveryStatusColors[cdsGroupDeliveriesDetailSTATUS_CODE.AsInteger];

  if (Field = cdsDeliveriesSTATUS_CODE) then
    Background:= DeliveryStatusColors[cdsDeliveriesSTATUS_CODE.AsInteger];

  if (Field = cdsGroupDeliveriesMasterDAMAGES_STATE_CODE) or
     (Field = cdsGroupDeliveriesDetailDAMAGES_STATE_CODE) or
     (Field = cdsDeliveriesDAMAGES_STATE_CODE) then
    begin
      DamagesStateColumnBackground(Field, Background);
    end;  { if }

  if (Field = cdsGroupDeliveriesMasterMIN_DAYS_LEFT) and
     (Field.AsFloat < 0) then
    begin
      if Highlight then
        Background:= ccNegativeDevSelected
      else
        Background:= ccNegativeDevNotSelected;
    end;
end;

procedure TfmDeliveries.actFormUpdate(Sender: TObject);
var
  FilteredForDeliveries: Boolean;
begin
  inherited;

  FilteredForDeliveries:=
    not cdsGroupDeliveriesMaster.Params.ParamByName('DELIVERY_DEAL_TYPE_CODE').IsNull and
    not (cdsGroupDeliveriesMaster.Params.ParamByName('DELIVERY_DEAL_TYPE_CODE').AsInteger in ddtLease);
  edtGroupByReceiveDate.Visible:= (FProductClass = pcNormal) and not FilteredForDeliveries;
  lblGroupByReceiveDate.Visible:= (FProductClass = pcNormal) and not FilteredForDeliveries;
  edtDateUnit.Visible:= (FProductClass = pcNormal) and not FilteredForDeliveries;
  lblDateUnit.Visible:= (FProductClass = pcNormal) and not FilteredForDeliveries;

  FilteredForDeliveries:=
    not cdsDeliveries.Params.ParamByName('DELIVERY_DEAL_TYPE_CODE').IsNull and
    not (cdsDeliveries.Params.ParamByName('DELIVERY_DEAL_TYPE_CODE').AsInteger in ddtLease);
  edtDateUnit2.Visible:= not FilteredForDeliveries;
  lblDateUnit2.Visible:= not FilteredForDeliveries;

  btnVendorDoc.Enabled:=
    cdsGroupDeliveriesMaster.Active and
    (cdsGroupDeliveriesMaster.RecordCount > 0);

  btnVendorDoc.ImageIndex:=
    cdsGroupDeliveriesMasterVENDOR_HAS_DOCUMENTATION.AsInteger;

  btnDeliveryDocumentation.Enabled:=
    cdsGroupDeliveriesDetail.Active and
    (cdsGroupDeliveriesDetail.RecordCount > 0);

  btnDeliveryDocumentation.ImageIndex:=
    cdsGroupDeliveriesDetailHAS_DOC.AsInteger;

  btnProductDocumentation.Enabled:=
    cdsGroupDeliveriesDetail.Active and
    (cdsGroupDeliveriesDetail.RecordCount > 0);

  btnProductDocumentation.ImageIndex:=
    cdsGroupDeliveriesDetailPRODUCT_HAS_DOC.AsInteger;

  btnDeliveryDocumentation2.Enabled:=
    cdsDeliveries.Active and
    (cdsDeliveries.RecordCount > 0);

  btnDeliveryDocumentation2.ImageIndex:=
    cdsDeliveriesHAS_DOC.AsInteger;

  btnProductDocumentation2.Enabled:=
    cdsDeliveries.Active and
    (cdsDeliveries.RecordCount > 0);

  btnProductDocumentation2.ImageIndex:=
    cdsDeliveriesPRODUCT_HAS_DOC.AsInteger;

  btnToggleProductDisplay.Visible:= (FProductClass = pcNormal);

  NormalizedToolbar(tlbToggles).Visible:= (FProdOrderBaseType <> pobtOccCover);

  btnDeliveriesShowReceiveDate.Visible:= (pdsDeliveriesDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease);
  btnDeliveriesShowReturnDate.Visible:= (pdsDeliveriesDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease);
  sepBeforeDeliveriesShowPlanOrReal.Visible:= (pdsDeliveriesDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease);

  btnIsLease.Down:= (pdsDeliveriesDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease);

  UpdateColumnsVisibility(
    grdDeliveryGroupsDetail,
    ArrayUtils.Concat<TWinControl>(
      ArrayUtils.Concat<TWinControl>(
        ArrayUtils.ArrayOf<TWinControl>(NormalizedToolbarToolbarsAndFlowPanels(tlbToggles)),
        ArrayUtils.ArrayOf<TWinControl>(NormalizedToolbarToolbarsAndFlowPanels(tlbDetailToggles))),
      pnlDetailToggles));

  UpdateColumnsVisibility(
    grdData,
    ArrayUtils.Concat<TWinControl>(
      ArrayUtils.ArrayOf<TWinControl>(NormalizedToolbarToolbarsAndFlowPanels(tlbToggles)),
      ArrayUtils.ArrayOf<TWinControl>(NormalizedToolbarToolbarsAndFlowPanels(tlbDeliveriesToggleButtons))));

  pnlSumTotalPriceBC.Visible:= btnDeliveriesShowPlan.Down;
  pnlSumRealTotalPriceBC.Visible:= btnDeliveriesShowReal.Down;
end;

procedure TfmDeliveries.cdsGroupDeliveriesMasterAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  SortGrid(grdDeliveryGroupsMaster, SortIndexName);
  SetParams(cdsGroupDeliveriesDetail.Params, cdsGroupDeliveriesMaster);
  cdsGroupDeliveriesDetail.Open;
end;

procedure TfmDeliveries.cdsGroupDeliveriesDetailAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  SortGrid(grdDeliveryGroupsDetail, SortIndexName);
end;

procedure TfmDeliveries.cdsGroupDeliveriesDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with DataSet as TAbmesClientDataSet do
    if (IndexName = SortIndexName) then
      IndexName:= '';
  cdsGroupDeliveriesDetail.Params.AssignValues(cdsGroupDeliveriesMaster.Params);
  SetParams(cdsGroupDeliveriesDetail.Params, cdsGroupDeliveriesMaster);
  cdsGroupDeliveriesDetail.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmDeliveries.cdsGroupDeliveriesDetailCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGroupDeliveriesDetailDELIVERY_DATE.Assign(cdsGroupDeliveriesMasterDELIVERY_DATE);

  cdsGroupDeliveriesDetail_PLAN_TRANSPORT_QUANTITY.AsFloat:=
    cdsGroupDeliveriesDetailWORK_QUANTITY.AsFloat * cdsGroupDeliveriesDetailTRANSPORT_MEASURE_COEF.AsFloat;

  cdsGroupDeliveriesDetail_REAL_TRANSPORT_QUANTITY.AsFloat:=
    cdsGroupDeliveriesDetailREAL_WORK_QUANTITY.AsFloat * cdsGroupDeliveriesDetailTRANSPORT_MEASURE_COEF.AsFloat;

  cdsGroupDeliveriesDetail_DEV_WORK_QUANTITY.AsVarFloat:=
    cdsGroupDeliveriesDetailREAL_WORK_QUANTITY.AsFloat - cdsGroupDeliveriesDetailWORK_QUANTITY.AsFloat;

  cdsGroupDeliveriesDetail_DEV_ACCOUNT_QUANTITY.AsVarFloat:=
    cdsGroupDeliveriesDetailREAL_ACCOUNT_QUANTITY.AsFloat - cdsGroupDeliveriesDetailACCOUNT_QUANTITY.AsFloat;

  cdsGroupDeliveriesDetail_DEV_LEASE_DATE_UNIT_QTY.AsVarFloat:=
    cdsGroupDeliveriesDetailREAL_LEASE_DATE_UNIT_QTY.AsFloat - cdsGroupDeliveriesDetailPLAN_LEASE_DATE_UNIT_QTY.AsFloat;

  cdsGroupDeliveriesDetail_DEV_TOTAL_PRICE.AsVarFloat:=
    cdsGroupDeliveriesDetailREAL_TOTAL_PRICE.AsFloat - cdsGroupDeliveriesDetailTOTAL_PRICE.AsFloat;
end;

procedure TfmDeliveries.cdsDeliveriesACC_QUANTITY_DEV_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDeliveries.cdsDeliveriesACC_SINGLE_PRICE_DEV_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDeliveries.cdsDeliveriesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SortGrid(grdData, SortIndexName);
end;

procedure TfmDeliveries.cdsDeliveriesBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  with DataSet as TAbmesClientDataSet do
    begin
      if (IndexName = SortIndexName) then
        IndexName:= '';

      Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:= ProductClassToInt(FProductClass);
      Params.ParamByName('PROD_ORDER_BASE_TYPE_CODE').AsInteger:= ProdOrderBaseTypeToInt(FProdOrderBaseType);
    end;
end;

procedure TfmDeliveries.cdsDeliveriesCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsDeliveries_DEV_QUANTITY.AsVarFloat:= cdsDeliveriesREAL_WORK_QUANTITY.AsFloat - cdsDeliveriesWORK_QUANTITY.AsFloat;
  cdsDeliveries_DEV_ACCOUNT_QUANTITY.AsVarFloat:= cdsDeliveriesREAL_ACCOUNT_QUANTITY.AsFloat - cdsDeliveriesACCOUNT_QUANTITY.AsFloat;
  cdsDeliveries_DEV_SINGLE_PRICE.AsVarFloat:= cdsDeliveriesREAL_SINGLE_PRICE.AsFloat - cdsDeliveriesSINGLE_PRICE.AsFloat;
  cdsDeliveries_DEV_ACCOUNT_SINGLE_PRICE.AsVarFloat:= cdsDeliveriesREAL_ACCOUNT_SINGLE_PRICE.AsFloat - cdsDeliveriesACCOUNT_SINGLE_PRICE.AsFloat;
  cdsDeliveries_DEV_LEASE_DATE_UNIT_QTY.AsVarFloat:= cdsDeliveriesREAL_LEASE_DATE_UNIT_QTY.AsFloat - cdsDeliveriesPLAN_LEASE_DATEY_UNIT_QTY.AsFloat;
  cdsDeliveries_DEV_TOTAL_PRICE.AsVarFloat:= cdsDeliveriesREAL_TOTAL_PRICE.AsFloat - cdsDeliveriesTOTAL_PRICE.AsFloat;
end;

procedure TfmDeliveries.navGroupDeliveriesBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  case Button of
    nbRefresh:
      RefreshDataSet(cdsGroupDeliveriesMaster);

    nbDelete:
      if not actDeleteGroup.Enabled then
        Abort;
  end
end;

procedure TfmDeliveries.OpenDataSets;
begin
  inherited;
  cdsDateUnits.Open;
  cdsDeliveryDealTypes.Open;
  cdsBranches.Open;
end;

procedure TfmDeliveries.navDataBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  if (Button = nbRefresh) then
    RefreshDataSet(cdsDeliveries);
end;

procedure TfmDeliveries.pcMainChange(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  inherited;
  if (Sender as TPageControl).ActivePage = tsGroupDeliveries then
    begin
      if not cdsGroupDeliveriesMaster.Active then
        begin
          if not FFilterFormEnabled or
             TfmGroupDeliveriesFilter.ShowForm(dmDocClient, pdsGroupDeliveries, emEdit, doNone, FProdOrderBaseType, FProductClass) then
            begin
              SaveCursor:= Screen.Cursor;
              Screen.Cursor:= crSQLWait;
              try
                cdsGroupDeliveriesMaster.Open
              finally
                Screen.Cursor:= SaveCursor;
              end;
            end
          else
            pcMain.ActivePage:= FPreviousActivePage;
        end;
    end
  else
  if (Sender as TPageControl).ActivePage = tsDeliveries then
    begin
      if not cdsDeliveries.Active then
        begin
          if not FFilterFormEnabled or
             TfmDeliveriesFilter.ShowForm(dmDocClient, pdsDeliveries, emEdit, doNone, FProdOrderBaseType, FProductClass) then
            begin
              SaveCursor:= Screen.Cursor;
              Screen.Cursor:= crSQLWait;
              try
                cdsDeliveries.Open;
              finally
                Screen.Cursor:= SaveCursor;
              end;
            end
          else
            pcMain.ActivePage:= FPreviousActivePage;
        end;
    end
end;

procedure TfmDeliveries.cdsGroupDeliveriesMasterBeforeClose(
  DataSet: TDataSet);
begin
  inherited;
  cdsGroupDeliveriesDetail.Close;
end;

procedure TfmDeliveries.cdsGroupDeliveriesMasterBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  with DataSet as TAbmesClientDataSet do
    begin
      if (IndexName = SortIndexName) then
        IndexName:= '';

      Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:= ProductClassToInt(FProductClass);
      Params.ParamByName('PROD_ORDER_BASE_TYPE_CODE').AsInteger:= ProdOrderBaseTypeToInt(FProdOrderBaseType);
    end;
end;

procedure TfmDeliveries.btnShowAnnuledLinesClick(Sender: TObject);
begin
  inherited;
  cdsGroupDeliveriesDetail.Filtered:= not btnShowAnnuledLines.Down;
end;

procedure TfmDeliveries.btnVendorDocClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TControl),
    dotCompany,
    cdsGroupDeliveriesMasterVENDOR_DOC_BRANCH_CODE.AsInteger,
    cdsGroupDeliveriesMasterVENDOR_DOC_CODE.AsInteger);
end;

procedure TfmDeliveries.actDeleteGroupExecute(Sender: TObject);
begin
  inherited;
  navGroupDeliveries.BtnClick(nbDelete);
end;

procedure TfmDeliveries.cdsGroupDeliveriesMasterAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  DoApplyUpdates;
end;

procedure TfmDeliveries.DoApplyUpdates;
var
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    cdsGroupDeliveriesMaster.ApplyUpdates(0);
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try }
end;

procedure TfmDeliveries.cdsGroupDeliveriesMasterCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGroupDeliveriesMasterREPORT_TAG.AsInteger:=
    8 * Ord(btnToggleProductDisplay.Down) +
    4 * Ord(sbtnAccountMeasure.Down) +
    2 * Ord(btnShowReal.Down) +
    1 * (1 - Ord(pdsDeliveries.Active and not (pdsDeliveriesDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease))) +
    1;

  cdsGroupDeliveriesMaster_DEV_TOTAL_PRICE.AsVarFloat:=
    cdsGroupDeliveriesMasterSD_TOTAL_PRICE.AsFloat -
    cdsGroupDeliveriesMasterTOTAL_PRICE.AsFloat;

  if (not cdsGroupDeliveriesMasterMIN_TRANSPORT_MEASURE_CODE.IsNull) and
     (not cdsGroupDeliveriesMasterMAX_TRANSPORT_MEASURE_CODE.IsNull) and
     (cdsGroupDeliveriesMasterMIN_TRANSPORT_MEASURE_CODE.AsInteger = cdsGroupDeliveriesMasterMAX_TRANSPORT_MEASURE_CODE.AsInteger) then
    begin
      cdsGroupDeliveriesMaster_PLAN_TRANSPORT_QUANTITY.AsString:= FormatFloat(',#', cdsGroupDeliveriesMasterPLAN_TRANSPORT_QUANTITY.AsFloat);
      cdsGroupDeliveriesMaster_OTCH_TRANSPORT_QUANTITY.AsString:= FormatFloat(',#', cdsGroupDeliveriesMasterOTCH_TRANSPORT_QUANTITY.AsFloat);
      cdsGroupDeliveriesMaster_DEV_TRANSPORT_QUANTITY.AsString:=
        FormatFloat(',#', cdsGroupDeliveriesMasterOTCH_TRANSPORT_QUANTITY.AsFloat - cdsGroupDeliveriesMasterPLAN_TRANSPORT_QUANTITY.AsFloat);

      cdsGroupDeliveriesMaster_TRANSPORT_MEASURE_ABBREV.AsString:= cdsGroupDeliveriesMasterTRANSPORT_MEASURE_ABBREV.AsString;
    end
  else
    begin
      cdsGroupDeliveriesMaster_PLAN_TRANSPORT_QUANTITY.AsString:= SDiferentMeasurements;
      cdsGroupDeliveriesMaster_OTCH_TRANSPORT_QUANTITY.AsString:= SDiferentMeasurements;
      cdsGroupDeliveriesMaster_DEV_TRANSPORT_QUANTITY.AsString:= SDiferentMeasurements;
      cdsGroupDeliveriesMaster_TRANSPORT_MEASURE_ABBREV.Clear;
    end;
end;

procedure TfmDeliveries.cdsGroupDeliveriesMasterCOMPLETED_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= FormatFloat('#.#', Sender.AsFloat * 100);
end;

procedure TfmDeliveries.cdsGroupDeliveriesMasterDAMAGES_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ProcessDamgedStateFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDeliveries.cdsGroupDeliveriesMasterPRICE_DEVIATION_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDeliveries.cdsGroupDeliveriesMasterSTATUS_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= DeliveryStatuses[Sender.AsInteger];
end;

procedure TfmDeliveries.cdsGroupDeliveriesMaster_AVG_PRICE_DEVIATION_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDeliveries.DoAfterHide;
begin
  inherited;
  pdsGroupDeliveries.Close;
  pdsDeliveries.Close;
end;

procedure TfmDeliveries.btnDeliveryDocumentationClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TControl),
    dotDelivery,
    cdsGroupDeliveriesDetailDOC_BRANCH_CODE.AsInteger,
    cdsGroupDeliveriesDetailDOC_CODE.AsInteger);
end;

procedure TfmDeliveries.btnProductDocumentationClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TControl),
    cdsGroupDeliveriesDetailPRODUCT_CODE.AsInteger);
end;

procedure TfmDeliveries.btnDeliveryDocumentation2Click(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TControl),
    dotDelivery,
    cdsDeliveriesDOC_BRANCH_CODE.AsInteger,
    cdsDeliveriesDOC_CODE.AsInteger);
end;

procedure TfmDeliveries.btnProductDocumentation2Click(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TControl),
    cdsDeliveriesPRODUCT_CODE.AsInteger);
end;

procedure TfmDeliveries.SetDataParams(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TProdOrderBaseType;
  AFilterFormEnabled, ADeliveriesOnly: Boolean;
  AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProdOrderBaseType:= AProdOrderBaseType;
  FFilterFormEnabled:= AFilterFormEnabled;
  if Assigned(ADataSet) and
     (AEditMode in [emEdit, emReadOnly]) then
    begin
      SetParams(cdsGroupDeliveriesMaster.Params, ADataSet);
      SetParams(cdsDeliveries.Params, ADataSet);
    end;
  FDeliveriesOnly:= ADeliveriesOnly;
  FProductClass:= AProductClass;
end;

procedure TfmDeliveries.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDeliveryDateInterval) or (AFrame = frDeliveryDateInterval2) then
    AFrame.ReadOnly:= True
  else
    inherited;
end;

class function TfmDeliveries.ShowForm(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TProdOrderBaseType;
  AFilterFormEnabled, ADeliveriesOnly: Boolean;
  AProductClass: TProductClass): Boolean;
var
  f: TfmDeliveries;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProdOrderBaseType,
      AFilterFormEnabled, ADeliveriesOnly, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

function TfmDeliveries.SupportsFilterForm: Boolean;
begin
  Result:= True;
end;

procedure TfmDeliveries.cdsDeliveriesDAMAGES_STATE_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  ProcessDamgedStateFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDeliveries.cdsDeliveriesQUANTITY_DEV_PERCENTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDeliveries.cdsDeliveriesSINGLE_PRICE_DEV_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDeliveries.cdsDeliveriesSTATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= DeliveryStatuses[Sender.AsInteger];
end;

procedure TfmDeliveries.actExcelExportGroupDeliveriesMasterUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGroupDeliveriesMaster.Active and
    (cdsGroupDeliveriesMaster.RecordCount > 0);
end;

procedure TfmDeliveries.actExcelExportGroupDeliveriesMasterExecute(
  Sender: TObject);
begin
  // do not call inherited
  case MessageDlgEx(SConfirmDetailExcelExportMessage, mtConfirmation, mbYesNoCancel, 0) of
    mrYes:
      MasterDetailGridExcelExport(grdDeliveryGroupsMaster, grdDeliveryGroupsDetail);
    mrNo:
      GridExcelExport(grdDeliveryGroupsMaster);
  end;
end;

procedure TfmDeliveries.actExcelExportDeliveriesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDeliveries.Active and
    (cdsDeliveries.RecordCount > 0);
end;

procedure TfmDeliveries.actExcelExportDeliveriesExecute(Sender: TObject);
begin
  inherited;
  GridExcelExport(grdData);
end;

class function TfmDeliveries.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmDeliveries.actGroupDeliveriesFilterUpdate(Sender: TObject);
var
  s: string;
begin
  inherited;

  (Sender as TAction).Enabled:= FFilterFormEnabled;

  s:= SFilter;

  if cdsGroupDeliveriesMaster.Active then
    s:= s + ': ' + FormatFloat(',0', cdsGroupDeliveriesMaster.RecordCount) + SRows;

  (Sender as TAction).Hint:= s;
end;

procedure TfmDeliveries.actDeliveriesFilterUpdate(Sender: TObject);
var
  s: string;
begin
  inherited;

  (Sender as TAction).Enabled:= FFilterFormEnabled;

  s:= SFilter;

  if cdsDeliveries.Active then
    s:= s + ': ' + FormatFloat(',0', cdsDeliveries.RecordCount) + SRows;

  (Sender as TAction).Hint:= s;
end;

procedure TfmDeliveries.cdsGroupDeliveriesDetailDAMAGES_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ProcessDamgedStateFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDeliveries.cdsGroupDeliveriesDetailDELIVERY_STATE_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= DeliveryDialogStatuses[Sender.AsInteger]
  else
    Text:= '';
end;

procedure TfmDeliveries.cdsGroupDeliveriesDetailIS_PROFORM_INVOICEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= IsProformInvoiceTexts[Sender.AsBoolean];
end;

procedure TfmDeliveries.cdsGroupDeliveriesDetailSTATUS_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= DeliveryStatuses[Sender.AsInteger];
end;

end.
