unit fDeficitCoverDecisions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fMasterDetailForm, ImgList, ParamDataSet, ActnList, Db,
  DBClient, Buttons, GridsEh, DBCtrls, ColorNavigator, ExtCtrls, StdCtrls,
  uClientTypes, AbmesClientDataSet, DBGridEh, AbmesDBGrid, AbmesFields,
  JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton, JvComponentBase,
  dDocClient, Mask, uProductionOrderTypes, uProducts, Menus, DBGridEhGrouping,
  fGridForm, fDeficitCoverDecision, fDeficitCoverDecisionsFilter, fDataForm,
  rDeficitCoverDecisions, fDelivery, fEditForm, fBaseForm, uNestProc;

type
  [CanUseDocs]
  [FilterFormClass(TfmDeficitCoverDecisionsFilter)]
  [EditFormClass(TfmDeficitCoverDecision)]
  [ReportClass(TrptDeficitCoverDecisions)]
  [DetailEditFormClass(TfmDelivery)]
  TfmDeficitCoverDecisions = class(TMasterDetailForm)
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataVPD_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataVPD_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsGridDataWORK_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    btnAddDelivery: TBitBtn;
    cdsGridDataIS_DONE: TAbmesFloatField;
    cdsGridDataIS_CANCELED: TAbmesFloatField;
    cdsGridDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDCD_OBJECT_CODE: TAbmesFloatField;
    pdsGridDataParamsVPD_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataSTORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDCD_IDENTIFICATION: TAbmesWideStringField;
    cdsGridDataDCD_CODE: TAbmesFloatField;
    cdsGridDataDCD_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataTOTAL_WORK_QUANTITY: TAbmesFloatField;
    cdsGridDataIS_DCD_OVERHEADED: TAbmesFloatField;
    cdsGridDataREMAINING_WORK_QUANTITY: TAbmesFloatField;
    cdsGridDataREMAINING_REQUESTED_WORK_QTY: TAbmesFloatField;
    cdsGridDataREMAINING_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataREMAINING_REQUESTED_ACC_QTY: TAbmesFloatField;
    pnlMasterButtons: TPanel;
    btnNewDCD: TBitBtn;
    btnEditDCD: TBitBtn;
    btnEditDelivery: TBitBtn;
    actVIMObjective: TAction;
    tlbTopButtons: TToolBar;
    pdsGridDataParamsDCD_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsDCD_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataDCD_HAS_DOCUMENTATION: TAbmesFloatField;
    sepBeforeDCDDocumentation: TToolButton;
    btnDCDDocumentation: TToolButton;
    lblDCDDocumentation: TLabel;
    pnlShowAnnuledLines: TPanel;
    btnShowAnnuledLines: TSpeedButton;
    cdsGridDataASPECT_TYPE_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsASPECT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParams_RPT_TITLE: TAbmesWideStringField;
    pdsGridDataParams_RPT_QTY_TITLE: TAbmesWideStringField;
    cdsGridData_RPT_QUANTITY: TAbmesFloatField;
    cdsGridData_RPT_REMAINING_REQUESTED_QTY: TAbmesFloatField;
    cdsGridData_RPT_REMAINING_QUANTITY: TAbmesFloatField;
    cdsGridData_RPT_MEASURE_ABBREV: TAbmesWideStringField;
    pcDetail: TPageControl;
    tsDetailCommon: TTabSheet;
    grdDeliveryDialogs: TAbmesDBGrid;
    tsPrognosis: TTabSheet;
    grdPrognosis: TAbmesDBGrid;
    tsRealization: TTabSheet;
    grdRealization: TAbmesDBGrid;
    cdsDetailDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDetailDCD_OBJECT_CODE: TAbmesFloatField;
    cdsDetailDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsDetailSTATUS_CODE: TAbmesFloatField;
    cdsDetailASPECT_TYPE_ABBREV: TAbmesWideStringField;
    cdsDetailDELIVERY_ID: TAbmesWideStringField;
    cdsDetailDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailDOC_CODE: TAbmesFloatField;
    cdsDetailHAS_DOCUMENTATION: TAbmesFloatField;
    cdsDetailIS_ACTIVATED_BY_VENDOR: TAbmesFloatField;
    cdsDetailDIALOG_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsDetailCOMPANY_STATUS_CODE: TAbmesFloatField;
    cdsDetailCOMPANY_STATUS_NAME: TAbmesWideStringField;
    cdsDetailVENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsDetailVENDOR_COMPANY_NAME: TAbmesWideStringField;
    cdsDetailVENDOR_PRIORITY_NO: TAbmesFloatField;
    cdsDetailVENDOR_PRIORITY_COLOR: TAbmesFloatField;
    cdsDetailVENDOR_PRIORITY_BK_COLOR: TAbmesFloatField;
    cdsDetailVENDOR_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailVENDOR_DOC_CODE: TAbmesFloatField;
    cdsDetailVENDOR_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsDetailPRIORITY_NO: TAbmesFloatField;
    cdsDetailPRIORITY_COLOR: TAbmesFloatField;
    cdsDetailPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsDetailHAS_MEDIATOR: TAbmesFloatField;
    cdsDetailPRODUCT_NAME: TAbmesWideStringField;
    cdsDetailVENDOR_PRODUCT_NAME: TAbmesWideStringField;
    cdsDetailMEASURE_CODE: TAbmesFloatField;
    cdsDetailMEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsDetailREGISTER_DATE: TAbmesSQLTimeStampField;
    cdsDetailPLAN_PERIOD_DAYS: TAbmesFloatField;
    cdsDetailREAL_PERIOD_DAYS: TAbmesFloatField;
    cdsDetailREAL_PERIOD_DEVIATION_PERCENT: TAbmesFloatField;
    cdsDetailPOSITION_DAYS_RSV: TAbmesFloatField;
    cdsDetailVENDOR_POSITION_DAYS_RSV: TAbmesFloatField;
    cdsDetailDECISION_DAYS_RSV: TAbmesFloatField;
    cdsDetailDELIVERY_DECISION_CODE: TAbmesFloatField;
    cdsDetailDELIVERY_DECISION_ABBREV: TAbmesWideStringField;
    cdsDetailPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDetailPROGNOSIS_END_DATE: TAbmesSQLTimeStampField;
    cdsDetailPROGNOSIS_QUANTITY: TAbmesFloatField;
    cdsDetailPROGNOSIS_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDetailIS_QUANTITY_AGREED: TAbmesFloatField;
    cdsDetailPROGNOSIS_SINGLE_PRICE: TAbmesFloatField;
    cdsDetailPROGNOSIS_CURRENCY_CODE: TAbmesFloatField;
    cdsDetailPROGNOSIS_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsDetailIS_PRICE_AGREED: TAbmesFloatField;
    cdsDetailPROGNOSIS_TOTAL_PRICE: TAbmesFloatField;
    cdsDetailDELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsDetailWORK_QUANTITY: TAbmesFloatField;
    cdsDetailACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDetailSINGLE_PRICE: TAbmesFloatField;
    cdsDetailTOTAL_PRICE: TAbmesFloatField;
    cdsDetailCURRENCY_CODE: TAbmesFloatField;
    cdsDetailCURRENCY_ABBREV: TAbmesWideStringField;
    lblSpecialDialogs: TLabel;
    cdsDetail_MIN_MEASURE_CODE: TAggregateField;
    cdsDetail_MAX_MEASURE_CODE: TAggregateField;
    cdsDetail_MIN_ACCOUNT_MEASURE_CODE: TAggregateField;
    cdsDetail_MAX_ACCOUNT_MEASURE_CODE: TAggregateField;
    cdsDetail_SUM_QUANTITY: TAggregateField;
    cdsDetail_SUM_ACCOUNT_QUANTITY: TAggregateField;
    cdsDetail_SUM_TOTAL_PRICE: TAggregateField;
    cdsDetail_DISPLAY_SUM_QUANTITY: TAbmesFloatField;
    cdsDetail_DISPLAY_SUM_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDetail_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetail_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    tlbVendorDocObjective: TToolBar;
    sepBeforeVendorDocObjective: TToolButton;
    lblVendorDocObjective: TLabel;
    btnVendorDocObjective: TToolButton;
    tlbDeliveryDoc: TToolBar;
    sepBeforeDeliveryDoc: TToolButton;
    lblDeliveryDoc: TLabel;
    btnDeliveryDoc: TToolButton;
    actDeliveryDoc: TAction;
    actVendorDocObjective: TAction;
    cdsGridDataPRODUCT_COMPANY_NAMES: TAbmesWideStringField;
    cdsGridDataSTATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField;
    cdsDeliveryDealTypes: TAbmesClientDataSet;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParams_DELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDetailPROGNOSIS_MEASURE_CODE: TAbmesFloatField;
    cdsDetailPROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailPROGNOSIS_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDetailPROGNOSIS_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDetailPROGNOSIS_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDetailPROGNOSIS_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    cdsDetailPROGNOSIS_ACC_TOTAL_LEASE_QTY: TAbmesFloatField;
    cdsDetailIS_LEASE_QUANTITY_AGREED: TAbmesFloatField;
    cdsDetailPROGNOSIS_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsDetailPROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailPROGNOSIS_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsDetailACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsDetail_SUM_PROGNOSIS_TOTAL_PRICE: TAggregateField;
    cdsDetail_SUM_PROGNOSIS_QUANTITY: TAggregateField;
    cdsDetail_MIN_PROGNOSIS_MEASURE_CODE: TAggregateField;
    cdsDetail_MAX_PROGNOSIS_MEASURE_CODE: TAggregateField;
    cdsDetail_MIN_PROGNOSIS_ACC_MEASURE_CODE: TAggregateField;
    cdsDetail_MAX_PROGNOSIS_ACC_MEASURE_CODE: TAggregateField;
    cdsDetail_SUM_PROGNOSIS_ACCOUNT_QUANTITY: TAggregateField;
    cdsDetail_DISPLAY_SUM_PROGNOSIS_QUANTITY: TAbmesFloatField;
    cdsDetail_PROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetail_PROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetail_DISPLAY_SUM_ACC_QTY: TAbmesFloatField;
    cdsDetail_DISPLAY_SUM_PROGNOSIS_ACC_QTY: TAbmesFloatField;
    cdsDetail_LEASE_DATE_INTERVAL: TAbmesSQLTimeStampField;
    cdsDetailLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDetailLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDetailRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDetailRETURN_DATE: TAbmesSQLTimeStampField;
    cdsDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDetailTOTAL_LEASE_QUANTITY: TAbmesFloatField;
    cdsDetailTOTAL_ACCOUNT_LEASE_QUANTITY: TAbmesFloatField;
    cdsDetail_PROGNOSIS_PERIOD_MONTHS: TAbmesWideStringField;
    pdsGridDataParamsSTREAM_TYPE_CODE: TAbmesFloatField;
    cdsDetailASPECT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataASPECT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField;
    cdsDetailPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField;
    actInsertDetailRecordLike: TAction;
    btnInsertDetailRecordLike: TBitBtn;
    cdsDelivery: TAbmesClientDataSet;
    cdsDeliveryVENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsDeliveryMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsDeliverySTART_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryREGISTER_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryPLAN_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryREAL_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryPLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryREAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryREAL_DECISION_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMAX_BASE_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveryDELIVERY_DECISION_CODE: TAbmesFloatField;
    cdsDeliveryDELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryWORK_QUANTITY: TAbmesFloatField;
    cdsDeliveryACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDeliveryCURRENCY_CODE: TAbmesFloatField;
    cdsDeliveryTOTAL_PRICE: TAbmesFloatField;
    cdsDeliverySINGLE_PRICE: TAbmesFloatField;
    cdsDeliveryDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDeliveryDIALOG_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDeliveryDELIVERY_VENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsDeliveryDELIVERY_VENDOR_OFFICE_CODE: TAbmesFloatField;
    cdsDeliverySHIPMENT_DAYS: TAbmesFloatField;
    cdsDeliveryCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsDeliverySHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryIS_TRANSPORT_FROM_VENDOR: TAbmesFloatField;
    cdsDeliveryDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveryDCD_OBJECT_CODE: TAbmesFloatField;
    cdsDeliveryDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveryDOC_CODE: TAbmesFloatField;
    cdsDeliveryHAS_DOC: TAbmesFloatField;
    cdsDeliveryIS_ACTIVATED_BY_VENDOR: TAbmesFloatField;
    cdsDeliveryPRODUCT_CODE: TAbmesFloatField;
    cdsDeliveryDCD_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveryDCD_CODE: TAbmesFloatField;
    cdsDeliverySD_QUANTITY: TAbmesFloatField;
    cdsDeliveryDEFICIT_COVER_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryOUR_OFFER_QUANTITY: TAbmesFloatField;
    cdsDeliveryOUR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDeliveryOUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveryOUR_OFFER_CURRENCY_CODE: TAbmesFloatField;
    cdsDeliveryVENDOR_OFFER_QUANTITY: TAbmesFloatField;
    cdsDeliveryVENDOR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDeliveryVENDOR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveryVENDOR_OFFER_CURRENCY_CODE: TAbmesFloatField;
    cdsDeliveryPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryPROGNOSIS_END_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryOUR_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDeliveryV_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDeliveryLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDeliveryOUR_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDeliveryV_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDeliveryLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDeliveryRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryRETURN_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryASPECT_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryACCOUNT_MAX_BASE_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveryACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveryACC_OUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveryACC_VENDOR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDetailBASE_ROLE_CODE: TAbmesFloatField;
    cdsDetailPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField;
    pdsGridDataParams_PROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_PLAN_DECISION_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_PLAN_DECISION_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_DEFICIT_COVER_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DEFICIT_COVER_DATE: TAbmesSQLTimeStampField;
    cdsGridDataP_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataP_DEFICIT_COVER_DATE: TAbmesSQLTimeStampField;
    cdsGridDataP_WORK_QUANTITY: TAbmesFloatField;
    cdsGridDataP_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataPLAN_DECISION_DATE: TAbmesSQLTimeStampField;
    cdsGridDataP_PSD_STORE_CODE: TAbmesFloatField;
    pdsGridDataParamsDCD_MODE_CODE: TAbmesFloatField;
    cdsDCDModes: TAbmesClientDataSet;
    cdsDCDModesDCD_MODE_CODE: TAbmesFloatField;
    cdsDCDModesDCD_MODE_NO: TAbmesFloatField;
    cdsDCDModesDCD_MODE_NAME: TAbmesWideStringField;
    cdsDCDModesDCD_MODE_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_DCD_MODE_NAME: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    pnlDCDModeInfo: TPanel;
    lblDCDMode: TLabel;
    edtDCDMode: TDBEdit;
    cdsGridDataCOMPANY_STATUS_NAME: TAbmesWideStringField;
    cdsGridDataCOMPANY_NO: TAbmesFloatField;
    cdsGridDataCOMPANY_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataDELIVERY_PROJECTS_COUNT: TAbmesFloatField;
    cdsGridDataV_START_DATE: TAbmesSQLTimeStampField;
    cdsGridDataTOTAL_DELIVERY_PROJECTS_PRICE: TAbmesFloatField;
    cdsGridDataTOTAL_DELIVERY_CONTRACTS_PRICE: TAbmesFloatField;
    cdsGridDataCOMPANY_BASE_ROLE_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_STATUS_CODE: TAbmesFloatField;
    pnlSpeed: TPanel;
    tlbToggles: TToolBar;
    btnToggleVendorStuff: TSpeedButton;
    sepAfterToggleProductDisplay: TToolButton;
    sbtnWorkMeasure: TSpeedButton;
    sbtnAccountMeasure: TSpeedButton;
    btnIsDCDModeSubjective: TSpeedButton;
    cdsDetailPRODUCT_CODE: TAbmesFloatField;
    tlbVendorDocSubjective: TToolBar;
    sepBeforeVendorDocSubjective: TToolButton;
    lblVendorDocSubjective: TLabel;
    btnVendorDocSubjective: TToolButton;
    actVendorDocSubjective: TAction;
    cdsGridDataCOMPANY_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_DOC_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_HAS_DOC_ITEMS: TAbmesFloatField;
    actProductDocObjective: TAction;
    actProductDocSubjective: TAction;
    actVIMSubjective: TAction;
    lblDeliveryType: TLabel;
    edtDeliveryType: TDBEdit;
    pnlProductButtonsSubjective: TPanel;
    tlbVIMSubjective: TToolBar;
    sepVIMSubjective: TToolButton;
    btnVIMSubjective: TToolButton;
    tlbProductDocSubjective: TToolBar;
    sepProductDocSubjective: TToolButton;
    lblProductDocSubjective: TLabel;
    btnProductDocSubjective: TToolButton;
    pnlProductButtonsObjective: TPanel;
    tlbVIMObjective: TToolBar;
    sepVIMObjective: TToolButton;
    btnVIMObjective: TToolButton;
    tlbProductDocObjective: TToolBar;
    sepProductDocObjective: TToolButton;
    lblProductDocObjective: TLabel;
    btnProductDocObjective: TToolButton;
    actDeficitCoverDecisionDoc: TAction;
    btnDetailExcelExport: TToolButton;
    actDetailExcelExport: TAction;
    cdsDeliveryMEASURE_CODE: TAbmesFloatField;
    cdsDeliveryACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsDeliveryPSD_STORE_CODE: TAbmesFloatField;
    actCloseDeliveries: TAction;
    cdsDetailFO_STATUS_CODE: TAbmesFloatField;
    cdsDetailFO_CLOSE_REQUESTED: TAbmesFloatField;
    cdsDetailFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDetailFINISH_DATE: TAbmesSQLTimeStampField;
    cdsDetailFINISH_TIME: TAbmesSQLTimeStampField;
    cdsDetailFIN_ORDER_CODE: TAbmesFloatField;
    cdsDetailINVOICE_NO: TAbmesFloatField;
    cdsDetailINVOICE_ABBREV: TAbmesWideStringField;
    cdsDetailIS_PROFORM_INVOICE: TAbmesFloatField;
    cdsDetailINVOICE_DATE: TAbmesSQLTimeStampField;
    actMultiEditInvoiceData: TAction;
    cdsInvoiceData: TAbmesClientDataSet;
    cdsInvoiceDataINVOICE_NO: TAbmesFloatField;
    cdsInvoiceDataINVOICE_ABBREV: TAbmesWideStringField;
    cdsInvoiceDataIS_PROFORM_INVOICE: TAbmesFloatField;
    cdsInvoiceDataINVOICE_DATE: TAbmesSQLTimeStampField;
    actMultiEditDecision: TAction;
    cdsMultiDecisionData: TAbmesClientDataSet;
    cdsMultiDecisionDataREAL_DECISION_DATE: TAbmesSQLTimeStampField;
    cdsMultiDecisionDataDELIVERY_DECISION_CODE: TAbmesFloatField;
    cdsMultiDecisionDataDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDCDActiveDeliveryProjects: TAbmesClientDataSet;
    cdsDCDActiveDeliveryProjectsDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDCDActiveDeliveryProjectsDCD_OBJECT_CODE: TAbmesFloatField;
    cdsDCDActiveDeliveryProjectsDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsMultiDecisionDataDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsMultiDecisionDataDELIVERY_OBJECT_CODE: TAbmesFloatField;
    cdsMultiDecisionDataDELIVERY_TYPE_CODE: TAbmesFloatField;
    cdsMultiDecisionDataPRIORITY_CODE: TAbmesFloatField;
    cdsMultiDecisionDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsMultiDecisionDataDCD_OBJECT_CODE: TAbmesFloatField;
    cdsMultiDecisionDataFO_BRANCH_CODE: TAbmesFloatField;
    cdsMultiDecisionDataFO_EXEC_DEPT_CODE: TAbmesFloatField;
    cdsMultiDecisionDataFO_PRIORITY_CODE: TAbmesFloatField;
    cdsMultiDecisionDataFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsMultiDecisionDataFO_PARTNER_CODE: TAbmesFloatField;
    cdsMultiDecisionDataSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    cdsGridDataV_VENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsDCDActiveDeliveryProjectsDELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsDCDActiveDeliveryProjectsREAL_DECISION_DATE: TAbmesSQLTimeStampField;
    cdsDCDActiveDeliveryProjectsDELIVERY_DECISION_CODE: TAbmesFloatField;
    cdsDCDActiveDeliveryProjectsDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    pnlSubjectDCDModeButtons: TPanel;
    btnCloseDeliveries: TBitBtn;
    btnMultiEditInvoiceData: TBitBtn;
    btnMultiEditDecision: TBitBtn;
    cdsDCDActiveDeliveryProjectsDELIVERY_ID: TAbmesWideStringField;
    cdsMultiDecisionDataFO_DCD_BRANCH_CODE: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsPRODUCT_CODEChange(Sender: TField);
    procedure pdsGridDataParamsDEPT_CODEChange(Sender: TField);
    procedure actEditRecordExecute(Sender: TObject);
    procedure tmrMasterTimer(Sender: TObject);
    procedure actEditDetailRecordExecute(Sender: TObject);
    procedure actInsertDetailRecordUpdate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure ToggleButtonsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure QuantityFieldsGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure pdsGridDataParamsPRODUCT_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnShowAnnuledLinesClick(Sender: TObject);
    procedure actVIMObjectiveExecute(Sender: TObject);
    procedure grdDetailGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actFormUpdate(Sender: TObject);
    procedure actVIMObjectiveUpdate(Sender: TObject);
    procedure cdsDetailDELIVERY_STATE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsDetailCalcFields(DataSet: TDataSet);
    procedure actDeliveryDocExecute(Sender: TObject);
    procedure actDeliveryDocUpdate(Sender: TObject);
    procedure actVendorDocObjectiveExecute(Sender: TObject);
    procedure actVendorDocObjectiveUpdate(Sender: TObject);
    procedure cdsDetailSTATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataSTATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDetail_LEASE_DATE_INTERVALGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure actInsertDetailRecordLikeUpdate(Sender: TObject);
    procedure actInsertDetailRecordLikeExecute(Sender: TObject);
    procedure cdsDetailCOMPANY_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsDCD_MODE_CODEChange(Sender: TField);
    procedure cdsGridDataCOMPANY_STATUS_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actVendorDocSubjectiveUpdate(Sender: TObject);
    procedure actVendorDocSubjectiveExecute(Sender: TObject);
    procedure actProductDocObjectiveUpdate(Sender: TObject);
    procedure actProductDocSubjectiveUpdate(Sender: TObject);
    procedure actProductDocObjectiveExecute(Sender: TObject);
    procedure actProductDocSubjectiveExecute(Sender: TObject);
    procedure actVIMSubjectiveUpdate(Sender: TObject);
    procedure actVIMSubjectiveExecute(Sender: TObject);
    procedure actDeficitCoverDecisionDocExecute(Sender: TObject);
    procedure actDeficitCoverDecisionDocUpdate(Sender: TObject);
    procedure actDetailExcelExportUpdate(Sender: TObject);
    procedure actDetailExcelExportExecute(Sender: TObject);
    procedure actCloseDeliveriesUpdate(Sender: TObject);
    procedure actCloseDeliveriesExecute(Sender: TObject);
    procedure actMultiEditInvoiceDataUpdate(Sender: TObject);
    procedure actMultiEditInvoiceDataExecute(Sender: TObject);
    procedure actMultiEditDecisionUpdate(Sender: TObject);
    procedure actMultiEditDecisionExecute(Sender: TObject);
    procedure cdsInvoiceDataBeforePost(DataSet: TDataSet);
    procedure cdsMultiDecisionDataBeforePost(DataSet: TDataSet);
    procedure cdsMultiDecisionDataReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FEditMasterPending: Boolean;
    FProdOrderBaseType: TProdOrderBaseType;
    FSelectedDCDBranchCode: Integer;
    FSelectedDCDCode: Integer;
    FSelectingDeficitCoverDecision: Boolean;
    procedure SetVisibleColumns;
    procedure ShowProductVIM(AProductCode: Integer);
    procedure RequestDeliveryFinOrderClosing;
    procedure CloseDeliveryProject;
    function DeliveryDialogIsActive: Boolean;
    procedure CheckMultiEditDecisionPrerequisites;
    procedure MultiDecisionOnException(const AExceptionMessage, AExceptionClassName: string);
    function ShowDeliveriesMultiDecisionDataForm: Boolean;
    function GetDeliveryDatesForMultiDecision: Variant;
    procedure CheckDecisionFieldIsNull(AField: TField);
    procedure LocateCurrentDCDActiveDeliveryProject;
    function FormatDeliveryErrorMessage(const AMessage: string): string;
    procedure OnIncorrectDelivery(AException: Exception);
    function IsDeliveryDialogInvoiceDataEmpty: Boolean;
  protected
    function GetOriginalFormCaption: string; override;
    procedure DoBeforeShow; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean; override;
    function ShowFilterForm: Boolean; override;
    function GetApplyKind: TApplyKind; override;
  public
    procedure Initialize; override;

    class function SelectDCD(
      AdmDocClient: TdmDocClient;
      AParamsDataSet: TDataSet;
      AProductClass: TProductClass;
      var ADCDBranchCode: Integer;
      var ADCDCode: Integer): Boolean;

    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProdOrderBaseType: TProdOrderBaseType = pobtEmpty;
      AProductClass: TProductClass = pcNone): Boolean;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProdOrderBaseType: TProdOrderBaseType = pobtEmpty;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;

    property SelectingDeficitCoverDecision: Boolean read FSelectingDeficitCoverDecision write FSelectingDeficitCoverDecision;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  dMain, uClientUtils, uColorConsts, uOpenVIMConsts, uTreeClientUtils, fVIMQuantity, uDeliveryUtils,
  uDocUtils, DateUtils, uDeliveryDealTypes, uPeriods, uUtils, uCompanyKindClientUtils, uCompanyKinds,
  uProductClientUtils, uStreamTypes, uAspectTypes, uClientDateTime, StrUtils, uDCDModes,
  uToolbarUtils, uCompanyClientUtils, uExcelExport, uFinanceClientUtils,
  fDeliveriesInvoiceData, fDeliveriesMultiDecisionData, fMain, Variants,
  uFinOrderRequirementClientUtils, fNewFinOrder, uUserActivityConsts,
  uBorderRelTypes, Math;

{$R *.DFM}
resourcestring
  SWorkQuantity = 'Работно количество';
  SAccountQuantity = 'Счетоводно количество';
  SFormatTotalPriceColumn = 'Договорени Условия по Реализация на ОДД|Обща стойност (%s)';
  STotalPricePrognosisGrid = 'Перспективни Параметри на ОДД|Обща Стойност (%s)';
  SDeficitCoverDecisionMustBeInStatusReceivedDelivery = 'Множествено приключване на ОДД е възможно само за ПДД в статус Отчетена Доставка';
  SConfirmCloseDeliveries = 'Ще бъдат приключени всички ОДД, както и отчетените ОПФ по тях';
  SMultiDecisionNoActiveDeliveryProjects = 'Няма активни ОДД, върху които да се приложи множествено задаване на Решение';
  SDeliveryProjectHasDecision = 'ОДД вече е с взето Решение';
  SDeliveryProjectError = 'ОДД %s: %s';

{ TfmDeficitCoverDecisions }

procedure TfmDeficitCoverDecisions.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (ModalResult = mrOk) then
    begin
      FSelectedDCDBranchCode:= cdsGridDataDCD_BRANCH_CODE.AsInteger;
      FSelectedDCDCode:= cdsGridDataDCD_CODE.AsInteger;
    end
  else
    begin
      FSelectedDCDBranchCode:= 0;
      FSelectedDCDCode:= 0;
    end;

  inherited;
end;

procedure TfmDeficitCoverDecisions.FormCreate(Sender: TObject);
begin
  inherited;
  RegisterDateFields(cdsGridData);
  RegisterDateFields(cdsDetail);

  grdPrognosis.Columns[26].Title.Caption:= Format(STotalPricePrognosisGrid, [LoginContext.BaseCurrencyAbbrev]);
  grdRealization.Columns[24].Title.Caption:= Format(SFormatTotalPriceColumn, [LoginContext.BaseCurrencyAbbrev]);

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsDetailPROGNOSIS_SINGLE_PRICE,
      cdsDetailPROGNOSIS_CURRENCY_ABBREV,
      cdsDetailPROGNOSIS_TOTAL_PRICE,
      cdsDetail_SUM_PROGNOSIS_TOTAL_PRICE,
      cdsDetailSINGLE_PRICE,
      cdsDetailCURRENCY_ABBREV,
      cdsDetailTOTAL_PRICE,
      cdsDetail_SUM_TOTAL_PRICE]);
end;

procedure TfmDeficitCoverDecisions.pdsGridDataParamsPRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(Sender,
    Sender.DataSet.FieldByName('PRODUCT_NAME'),
    Sender.DataSet.FieldByName('_PRODUCT_NO'));
end;

procedure TfmDeficitCoverDecisions.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if (FProdOrderBaseType = pobtOccCover) then
    pdsGridDataParams.SafeEdit/
      procedure begin
        pdsGridDataParamsSTREAM_TYPE_CODE.AsInteger:= stStraight;
        pdsGridDataParamsASPECT_TYPE_CODE.AsInteger:= AspectTypeToInt(atRealization);
      end;
end;

procedure TfmDeficitCoverDecisions.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams_RPT_TITLE.AsString:= Caption;
  pdsGridDataParams_RPT_QTY_TITLE.AsString:= IfThen(sbtnWorkMeasure.Down, SWorkQuantity, SAccountQuantity);
  pdsGridDataParams_PRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
  pdsGridDataParams_PROD_ORDER_BASE_TYPE_CODE.AsInteger:= ProdOrderBaseTypeToInt(FProdOrderBaseType);
end;

procedure TfmDeficitCoverDecisions.pdsGridDataParamsDEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(Sender, Sender.DataSet.FieldByName('DEPT_NAME'));
end;

procedure TfmDeficitCoverDecisions.actEditRecordExecute(Sender: TObject);
begin
  if RecordChangePending then
    FEditMasterPending:= True
  else
    inherited;
end;

procedure TfmDeficitCoverDecisions.tmrMasterTimer(Sender: TObject);
begin
  inherited;

  if FEditMasterPending then
    begin
      FEditMasterPending:= False;
      actEditRecord.Execute;
    end;
end;

function TfmDeficitCoverDecisions.ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean;
begin
  Result:= TfmDelivery.ShowForm(dmDocClient, cdsDetail, AEditMode, ADefaultsOrigin, cdsGridData, FProductClass)
end;

function TfmDeficitCoverDecisions.ShowEditForm(AEditMode: TEditMode): Boolean;
var
  HasDetails: Boolean;
begin
  Assert(Assigned(EditFormClass));

  case AEditMode of
    emEdit, emReadOnly:
      begin
        HasDetails:= cdsDetail.RecordCount > 0;
        Result:= TfmDeficitCoverDecisionClass(EditFormClass).ShowForm(dmDocClient, cdsGridData, AEditMode, HasDetails, doNone, FProdOrderBaseType, FProductClass);
      end;
  else
    Result:= TfmDeficitCoverDecisionClass(EditFormClass).ShowForm(dmDocClient, cdsGridData, AEditMode, False, doNone, FProdOrderBaseType, FProductClass);
  end;
end;

function TfmDeficitCoverDecisions.ShowFilterForm: Boolean;
begin
  Result:= TfmDeficitCoverDecisionsFilter.ShowForm(nil, pdsGridDataParams, emEdit, doNone, FProdOrderBaseType, FProductClass);
end;

class function TfmDeficitCoverDecisions.ShowForm(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TProdOrderBaseType;
  AProductClass: TProductClass): Boolean;
var
  f: TfmDeficitCoverDecisions;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProdOrderBaseType, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

class function TfmDeficitCoverDecisions.SelectDCD(AdmDocClient: TdmDocClient; AParamsDataSet: TDataSet;
  AProductClass: TProductClass; var ADCDBranchCode, ADCDCode: Integer): Boolean;
var
  f: TfmDeficitCoverDecisions;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, AParamsDataSet, emReadOnly, doNone, pobtSaleCover, AProductClass);

    f.SelectingDeficitCoverDecision:= True;
    try
      f.InternalShowForm;
    finally
      f.SelectingDeficitCoverDecision:= False;
    end;

    Result:= (f.FSelectedDCDBranchCode <> 0) and (f.FSelectedDCDCode <> 0);

    if Result then
      begin
        ADCDBranchCode:= f.FSelectedDCDBranchCode;
        ADCDCode:= f.FSelectedDCDCode;
      end;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmDeficitCoverDecisions.RequestDeliveryFinOrderClosing;
begin
  if (cdsDetailFO_STATUS_CODE.AsInteger = fosCompleted) then
    begin
      cdsDetail.SafeEdit/
        procedure begin
          cdsDetailFO_CLOSE_REQUESTED.AsBoolean:= True;
        end;
    end
  else
    CheckClosingWithFinOrder(cdsDetailFO_STATUS_CODE.AsInteger);
end;

procedure TfmDeficitCoverDecisions.CloseDeliveryProject;
var
  CurrentDateTime: TDateTime;
begin
  CurrentDateTime:= ContextNow;
  cdsDetail.SafeEdit/
    procedure begin
      cdsDetailFINISH_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
      cdsDetailFINISH_DATE.AsDateTime:= DateOf(CurrentDateTime);
      cdsDetailFINISH_TIME.AsDateTime:= TimeOf(CurrentDateTime);
    end;
end;

function TfmDeficitCoverDecisions.DeliveryDialogIsActive: Boolean;
begin
  Result:= (cdsDetailSTATUS_CODE.AsInteger < DeliveryDialogStatusCodeClosed);
end;

function TfmDeficitCoverDecisions.IsDeliveryDialogInvoiceDataEmpty: Boolean;
var
  f: TField;
begin
  Result:= True;
  for f in cdsInvoiceData.Fields do
    Result:= Result and cdsDetail.FieldByName(f.FieldName).IsNull;
end;

procedure TfmDeficitCoverDecisions.actCloseDeliveriesExecute(Sender: TObject);
begin
  inherited;
  if (cdsGridDataSTATUS_CODE.AsInteger <> DCDStatusCodeReceivedDelivery) then
    raise Exception.Create(SDeficitCoverDecisionMustBeInStatusReceivedDelivery);

  ConfirmAction(SConfirmCloseDeliveries);

  Screen.TempCursor(crSQLWait)/
    cdsDetail.TempDisableControls/
      cdsDetail.PreserveRecNo/
        procedure begin
          cdsDetail.SafeApplyUpdates/
            cdsDetail.ForEach/
              Utils.If(DeliveryDialogIsActive)/
                procedure begin
                  RequestDeliveryFinOrderClosing;
                  CloseDeliveryProject;
                end;

          cdsDetail.TempDisableCache/
            procedure begin
              RefreshDataSet(cdsDetail);
            end;
        end;


  cdsGridData.SafeEdit/
    procedure begin
      cdsGridDataSTATUS_CODE.AsInteger:= DCDStatusCodeFinished;
    end;

  cdsGridData.MergeChangeLog;
end;

procedure TfmDeficitCoverDecisions.actCloseDeliveriesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty and (EditMode = emEdit);
end;

procedure TfmDeficitCoverDecisions.actDeficitCoverDecisionDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotDeficitCoverDecision,
    cdsGridDataDOC_BRANCH_CODE.AsInteger,
    cdsGridDataDOC_CODE.AsInteger);
end;

procedure TfmDeficitCoverDecisions.actDeficitCoverDecisionDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataDCD_HAS_DOCUMENTATION.AsBoolean);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmDeficitCoverDecisions.actDeliveryDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotDelivery,
    cdsDetailDOC_BRANCH_CODE.AsInteger,
    cdsDetailDOC_CODE.AsInteger);
end;

procedure TfmDeficitCoverDecisions.actDeliveryDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
  (Sender as TAction).ImageIndex:= Ord(cdsDetailHAS_DOCUMENTATION.AsBoolean);
end;

procedure TfmDeficitCoverDecisions.actDetailExcelExportExecute(Sender: TObject);
begin
  inherited;
  GridExcelExport(pcDetail.ActivePage.AllControls.OfType<TAbmesDBGrid>.Single);
end;

procedure TfmDeficitCoverDecisions.actDetailExcelExportUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmDeficitCoverDecisions.actEditDetailRecordExecute(Sender: TObject);
var
  BanEdit: Boolean;
begin
  BanEdit:=
    cdsGridDataIS_CANCELED.AsBoolean or
    (cdsDetailSTATUS_CODE.AsInteger > 10);

  if (EditMode = emReadOnly) or BanEdit then
    DoShowDetailEditForm(emReadOnly)
  else
    DoShowDetailEditForm(emEdit);
end;

procedure TfmDeficitCoverDecisions.actInsertDetailRecordLikeExecute(Sender: TObject);
begin
  inherited;
  SetParams(cdsDelivery.Params, cdsDetail);

  cdsDelivery.TempOpen/
    procedure begin
      if TfmDelivery.ShowForm(dmDocClient, cdsDelivery, emInsert, doDataset, cdsGridData, FProductClass) then
        RefreshDataSet(cdsGridData);
    end;
end;

procedure TfmDeficitCoverDecisions.actInsertDetailRecordLikeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridDataIS_DONE.AsBoolean and
    not cdsGridDataIS_CANCELED.AsBoolean and
    (EditMode <> emReadOnly) and
    not cdsDetail.IsEmpty;
end;

procedure TfmDeficitCoverDecisions.actInsertDetailRecordUpdate(Sender: TObject);
begin
  with cdsGridData do
    (Sender as TAction).Enabled:=
      not cdsGridData.IsEmpty and
      not cdsGridDataIS_DONE.AsBoolean and
      not cdsGridDataIS_CANCELED.AsBoolean and
      (EditMode <> emReadOnly);
end;

procedure TfmDeficitCoverDecisions.LocateCurrentDCDActiveDeliveryProject;
begin
  cdsDetail.Locate(
    'DCD_OBJECT_BRANCH_CODE;DCD_OBJECT_CODE;DELIVERY_PROJECT_CODE',
    VarArrayOf([
      cdsDCDActiveDeliveryProjectsDCD_OBJECT_BRANCH_CODE.AsInteger,
      cdsDCDActiveDeliveryProjectsDCD_OBJECT_CODE.AsInteger,
      cdsDCDActiveDeliveryProjectsDELIVERY_PROJECT_CODE.AsInteger
    ]),
    []);
end;

function TfmDeficitCoverDecisions.FormatDeliveryErrorMessage(const AMessage: string): string;
begin
  Result:= Format(SDeliveryProjectError, [cdsDCDActiveDeliveryProjectsDELIVERY_ID.AsString, AMessage]);
end;

procedure TfmDeficitCoverDecisions.MultiDecisionOnException(const AExceptionMessage, AExceptionClassName: string);
begin
  LocateCurrentDCDActiveDeliveryProject;
  ShowExceptionMessage(FormatDeliveryErrorMessage(AExceptionMessage), AExceptionClassName);
  Abort;
end;

procedure TfmDeficitCoverDecisions.cdsMultiDecisionDataBeforePost(DataSet: TDataSet);
var
  DeliveryDates: Variant;
begin
  inherited;

  CheckRequiredFields([
    cdsMultiDecisionDataREAL_DECISION_DATE,
    cdsMultiDecisionDataDELIVERY_DECISION_CODE,
    cdsMultiDecisionDataDECISION_EMPLOYEE_CODE]);

  if not cdsMultiDecisionDataDELIVERY_OBJECT_BRANCH_CODE.IsNull then
    CheckRequiredFields([cdsMultiDecisionDataDELIVERY_TYPE_CODE, cdsMultiDecisionDataPRIORITY_CODE]);

  if not cdsMultiDecisionDataDELIVERY_OBJECT_BRANCH_CODE.IsNull then
    begin
      if cdsMultiDecisionDataFO_EXEC_DEPT_CODE.IsNull and FinOrderNeeded then
        begin
          LoginContext.CheckUserActivity(uaNewFinancialOrder);
          DeliveryDates:= GetDeliveryDatesForMultiDecision;
          if not TfmNewFinOrder.ShowForm(nil, cdsMultiDecisionData, emEdit, doNone, cdsGridDataV_VENDOR_COMPANY_CODE.AsInteger, brtVendor,
                 DeliveryDates[0], DeliveryDates[1], cdsMultiDecisionDataFO_DCD_BRANCH_CODE.AsInteger) then
            Abort;
        end;

      CheckFinOrderField(cdsMultiDecisionDataFO_EXEC_DEPT_CODE);
    end;

  SetParams(cdsDCDActiveDeliveryProjects.Params, cdsGridData);
  Screen.TempCursor(crSQLWait)/
    cdsDCDActiveDeliveryProjects.TempOpen/
      cdsDCDActiveDeliveryProjects.ForEach/
        fmMain.GetInnerFormExceptions(MultiDecisionOnException)/
          procedure begin
            TfmDelivery.ShowForm(dmDocClient, cdsDCDActiveDeliveryProjects, emEdit, doNone, cdsGridData, FProductClass, cdsMultiDecisionData);
          end;
end;

procedure TfmDeficitCoverDecisions.CheckDecisionFieldIsNull(AField: TField);
begin
  if not AField.IsNull then
    raise Exception.Create(SDeliveryProjectHasDecision);
end;

procedure TfmDeficitCoverDecisions.OnIncorrectDelivery(AException: Exception);
begin
  LocateCurrentDCDActiveDeliveryProject;
  raise Exception.Create(FormatDeliveryErrorMessage(AException.Message));
end;

procedure TfmDeficitCoverDecisions.CheckMultiEditDecisionPrerequisites;
begin
  SetParams(cdsDCDActiveDeliveryProjects.Params, cdsGridData);
  cdsDCDActiveDeliveryProjects.TempOpen/
    procedure begin
      if cdsDCDActiveDeliveryProjects.IsEmpty then
        raise Exception.Create(SMultiDecisionNoActiveDeliveryProjects);

      Utils.CatchException(OnIncorrectDelivery)/
        cdsDCDActiveDeliveryProjects.ForEach/
          procedure begin
            CheckDecisionFieldIsNull(cdsDCDActiveDeliveryProjectsREAL_DECISION_DATE);
            CheckDecisionFieldIsNull(cdsDCDActiveDeliveryProjectsDELIVERY_DECISION_CODE);
            CheckDecisionFieldIsNull(cdsDCDActiveDeliveryProjectsDECISION_EMPLOYEE_CODE);
          end;
    end;
end;

function TfmDeficitCoverDecisions.GetDeliveryDatesForMultiDecision: Variant;
var
  BeginDate: TDateTime;
  EndDate: TDateTime;
begin
  BeginDate:= 0;
  EndDate:= 0;
  SetParams(cdsDCDActiveDeliveryProjects.Params, cdsGridData);
  cdsDCDActiveDeliveryProjects.TempOpen/
    Utils.CatchException(OnIncorrectDelivery)/
      cdsDCDActiveDeliveryProjects.ForEach/
        procedure begin
          CheckRequiredField(cdsDCDActiveDeliveryProjectsDELIVERY_DATE);

          if (BeginDate = 0) then
            BeginDate:= cdsDCDActiveDeliveryProjectsDELIVERY_DATE.AsDateTime;

          if (EndDate = 0) then
            EndDate:= cdsDCDActiveDeliveryProjectsDELIVERY_DATE.AsDateTime;

          BeginDate:= Min(BeginDate, cdsDCDActiveDeliveryProjectsDELIVERY_DATE.AsDateTime);
          EndDate:= Max(EndDate, cdsDCDActiveDeliveryProjectsDELIVERY_DATE.AsDateTime);
        end;

  Assert(BeginDate <> 0);
  Assert(EndDate <> 0);

  Result:= VarArrayOf([BeginDate, EndDate]);
end;

function TfmDeficitCoverDecisions.ShowDeliveriesMultiDecisionDataForm: Boolean;
var
  DeliveryDates: Variant;
begin
  DeliveryDates:= GetDeliveryDatesForMultiDecision;

  Result:=
    TfmDeliveriesMultiDecisionData.ShowForm(
      dmDocClient,
      cdsMultiDecisionData,
      emEdit,
      doNone,
      cdsGridDataV_VENDOR_COMPANY_CODE.AsInteger,
      DeliveryDates[0], DeliveryDates[1]);
end;

procedure TfmDeficitCoverDecisions.actMultiEditDecisionExecute(Sender: TObject);
begin
  inherited;
  CheckMultiEditDecisionPrerequisites;

  SetParams(cdsMultiDecisionData.Params, cdsGridData);

  cdsMultiDecisionData.TempOpen/
    cdsMultiDecisionData.SafeApplyUpdates/
      procedure begin
        if not ShowDeliveriesMultiDecisionDataForm then
          Abort;
      end;

  cdsGridData.TempDisableCache/
    procedure begin
      RefreshDataSet(cdsGridData);
    end;
end;

procedure TfmDeficitCoverDecisions.actMultiEditDecisionUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty and (EditMode = emEdit);
end;

procedure TfmDeficitCoverDecisions.actMultiEditInvoiceDataExecute(Sender: TObject);
begin
  inherited;
  cdsInvoiceData.TempCreateDataSet/
    procedure begin
      if TfmDeliveriesInvoiceData.ShowForm(nil, cdsInvoiceData, emInsert) then
        Screen.TempCursor(crSQLWait)/
          cdsDetail.TempDisableControls/
            cdsDetail.PreserveRecNo/
              cdsDetail.SafeApplyUpdates/
                cdsDetail.ForEach/
                  Utils.If(DeliveryDialogIsActive)/
                    Utils.If(IsDeliveryDialogInvoiceDataEmpty)/
                      cdsDetail.SafeEdit/
                        cdsDetail.AssignFieldsProc(cdsInvoiceData);
    end;
end;

procedure TfmDeficitCoverDecisions.actMultiEditInvoiceDataUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty and (EditMode = emEdit);
end;

procedure TfmDeficitCoverDecisions.actPrintExecute(Sender: TObject);
begin
  // do not call inherited
  // force calc fields
  pdsGridDataParams.Last;
  pdsGridDataParams.First;
  TrptDeficitCoverDecisions.PrintReport(cdsGridData, pdsGridDataParams);
end;

procedure TfmDeficitCoverDecisions.actProductDocObjectiveExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    cdsGridDataP_PRODUCT_CODE.AsInteger);
end;

procedure TfmDeficitCoverDecisions.actProductDocObjectiveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataPRODUCT_HAS_DOCUMENTATION.AsBoolean);
end;

procedure TfmDeficitCoverDecisions.actProductDocSubjectiveExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotProduct,
    cdsDetailPRODUCT_DOC_BRANCH_CODE,
    cdsDetailPRODUCT_DOC_CODE);
end;

procedure TfmDeficitCoverDecisions.actProductDocSubjectiveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsdetail.IsEmpty;
  (Sender as TAction).ImageIndex:= Ord(cdsDetailPRODUCT_HAS_DOCUMENTATION.AsBoolean);
end;

procedure TfmDeficitCoverDecisions.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmDeficitCoverDecisions.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:= ProductClassToInt(FProductClass);
  cdsGridData.Params.ParamByName('PROD_ORDER_BASE_TYPE_CODE').AsInteger:= ProdOrderBaseTypeToInt(FProdOrderBaseType);
end;

procedure TfmDeficitCoverDecisions.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if sbtnWorkMeasure.Down then
    begin
      cdsGridData_RPT_QUANTITY.Assign(cdsGridDataP_WORK_QUANTITY);
      cdsGridData_RPT_REMAINING_REQUESTED_QTY.Assign(cdsGridDataREMAINING_REQUESTED_WORK_QTY);
      cdsGridData_RPT_REMAINING_QUANTITY.Assign(cdsGridDataREMAINING_WORK_QUANTITY);
      cdsGridData_RPT_MEASURE_ABBREV.Assign(cdsGridDataWORK_MEASURE_ABBREV);
    end
  else
    begin
      cdsGridData_RPT_QUANTITY.Assign(cdsGridDataP_ACCOUNT_QUANTITY);
      cdsGridData_RPT_REMAINING_REQUESTED_QTY.Assign(cdsGridDataREMAINING_REQUESTED_ACC_QTY);
      cdsGridData_RPT_REMAINING_QUANTITY.Assign(cdsGridDataREMAINING_ACCOUNT_QUANTITY);
      cdsGridData_RPT_MEASURE_ABBREV.Assign(cdsGridDataACCOUNT_MEASURE_ABBREV);
    end;
end;

procedure TfmDeficitCoverDecisions.cdsGridDataCOMPANY_STATUS_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  CompanyStatusFieldGetText(Sender, cdsGridDataCOMPANY_STATUS_NAME, cdsGridDataCOMPANY_BASE_ROLE_CODE, Text, DisplayText);
end;

procedure TfmDeficitCoverDecisions.cdsGridDataSTATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= DCDStatuses[Sender.AsInteger];
end;

procedure TfmDeficitCoverDecisions.cdsInvoiceDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not cdsInvoiceDataINVOICE_NO.IsNull or
     not cdsInvoiceDataINVOICE_ABBREV.IsNull or
     not cdsInvoiceDataIS_PROFORM_INVOICE.IsNull or
     not cdsInvoiceDataINVOICE_DATE.IsNull then
    CheckRequiredFields([cdsInvoiceDataINVOICE_NO, cdsInvoiceDataIS_PROFORM_INVOICE, cdsInvoiceDataINVOICE_DATE]);
end;

procedure TfmDeficitCoverDecisions.cdsMultiDecisionDataReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  ReconcileError(E);
end;

procedure TfmDeficitCoverDecisions.ToggleButtonsClick(Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmDeficitCoverDecisions.SetDataParams(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TProdOrderBaseType;
  AProductClass: TProductClass);
begin
  cdsGridData.Params.ParamByName('DCD_MODE_CODE').AsInteger:= LoginContext.DefaultDCDModeCode;
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProdOrderBaseType:= AProdOrderBaseType;
  FProductClass:= AProductClass;
end;

procedure TfmDeficitCoverDecisions.SetVisibleColumns;
var
  ShowDeliveries: Boolean;
  ShowVendorStuff: Boolean;
  IsAccountMeasure: Boolean;
begin
  ShowVendorStuff:= btnToggleVendorStuff.Down;
  IsAccountMeasure:= sbtnAccountMeasure.Down;
  ShowDeliveries:= cdsGridData.IsEmpty or (pdsGridDataParamsDELIVERY_DEAL_TYPE_CODE.AsInteger in [ddtDeliveryForSales, ddtDeliveryForEnvironment, ddtImport]);

  with grdDeliveryDialogs do
    begin
      Columns[9].Visible:=                                                  not ShowVendorStuff;
      Columns[10].Visible:=                                                     ShowVendorStuff;
    end;

  with grdPrognosis do
    begin
      Columns[3].Visible:=                                             not ShowVendorStuff;
      Columns[4].Visible:=                                                 ShowVendorStuff;

      Columns[8].Visible:=      ShowDeliveries and not IsAccountMeasure;
      Columns[9].Visible:=      ShowDeliveries and not IsAccountMeasure;
      Columns[10].Visible:=     ShowDeliveries and     IsAccountMeasure;
      Columns[11].Visible:=     ShowDeliveries and     IsAccountMeasure;
      Columns[12].Visible:=     ShowDeliveries;

      Columns[13].Visible:= not ShowDeliveries and not IsAccountMeasure;
      Columns[14].Visible:= not ShowDeliveries and not IsAccountMeasure;
      Columns[15].Visible:= not ShowDeliveries and     IsAccountMeasure;
      Columns[16].Visible:= not ShowDeliveries and     IsAccountMeasure;
      Columns[17].Visible:= not ShowDeliveries;
      Columns[18].Visible:= not ShowDeliveries;
      Columns[19].Visible:= not ShowDeliveries and not IsAccountMeasure;
      Columns[20].Visible:= not ShowDeliveries and     IsAccountMeasure;
      Columns[21].Visible:= not ShowDeliveries;

      Columns[22].Visible:=                        not IsAccountMeasure;
      Columns[23].Visible:=                            IsAccountMeasure;
    end;

  with grdRealization do
    begin
      Columns[3].Visible:=                                                  not ShowVendorStuff;
      Columns[4].Visible:=                                                      ShowVendorStuff;

      Columns[7].Visible:=      ShowDeliveries;
      Columns[8].Visible:=      ShowDeliveries and not IsAccountMeasure;
      Columns[9].Visible:=      ShowDeliveries and not IsAccountMeasure;
      Columns[10].Visible:=     ShowDeliveries and     IsAccountMeasure;
      Columns[11].Visible:=     ShowDeliveries and     IsAccountMeasure;

      Columns[12].Visible:= not ShowDeliveries;
      Columns[13].Visible:= not ShowDeliveries and not IsAccountMeasure;
      Columns[14].Visible:= not ShowDeliveries and not IsAccountMeasure;
      Columns[15].Visible:= not ShowDeliveries and     IsAccountMeasure;
      Columns[16].Visible:= not ShowDeliveries and     IsAccountMeasure;
      Columns[17].Visible:= not ShowDeliveries;
      Columns[18].Visible:= not ShowDeliveries;
      Columns[19].Visible:= not ShowDeliveries and not IsAccountMeasure;
      Columns[20].Visible:= not ShowDeliveries and     IsAccountMeasure;
      
      Columns[21].Visible:=                        not IsAccountMeasure;
      Columns[22].Visible:=                            IsAccountMeasure;
    end;
end;

procedure TfmDeficitCoverDecisions.FormShow(Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
  cdsDetail.Filtered:= not btnShowAnnuledLines.Down;
  pcDetail.ActivePage:= tsDetailCommon;
end;

function TfmDeficitCoverDecisions.GetApplyKind: TApplyKind;
begin
  Result:= akNone;
end;

function TfmDeficitCoverDecisions.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmDeficitCoverDecisions.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  Highlight: Boolean;
  Field: TField;
begin
  inherited;

  if not Assigned(Column) or
     not Assigned(Column.Field) then
    Exit;
    
  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if (Highlight and (ActiveControl = Sender)) or (Field.DataSet.Bof and Field.DataSet.Eof) then
    Exit;

  if (Field.FieldName = 'REMAINING_REQUESTED_WORK_QTY') or
     (Field.FieldName = 'REMAINING_REQUESTED_ACC_QTY') then
    begin
      if (Field.AsFloat > 0) then
        Background:= ccRemainingPositivePlannedDeficitQuantity;
    end;

  if (Field.FieldName = 'REMAINING_WORK_QUANTITY') or
     (Field.FieldName = 'REMAINING_ACCOUNT_QUANTITY') then
    begin
      if Field.DataSet.FieldByName('IS_DCD_OVERHEADED').AsBoolean then
        Background:= ccOverheadedQuantity
      else
      if (Field.AsFloat > 0) then
        Background:= ccRemainingPositiveContractedQuantity;
    end;

  if (Field.FieldName = 'STATUS_CODE') then
    Background:= DCDStatusColors[Field.AsInteger];

  if (Field = cdsGridDataCOMPANY_STATUS_CODE) then
    AFont.Color:= CompanyStatusColors[cdsGridDataCOMPANY_STATUS_CODE.AsInteger];
end;

procedure TfmDeficitCoverDecisions.QuantityFieldsGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  // ne moje da se izpolzva with, shtoto TAbmesFloatField-a ima property text :(
  if (IntToAspectType(cdsGridDataASPECT_TYPE_CODE.AsInteger) = atEstimation) and
    (Sender.FieldName = 'REMAINING_WORK_QUANTITY')  then
    Text:= ''
  else
    begin
      if ((Sender as TAbmesFloatField).AsFloat = 0) then
        Text:= ''
      else
        Text:= FormatFloat((Sender as TAbmesFloatField).DisplayFormat,
          (Sender as TAbmesFloatField).AsFloat);
    end;
end;

procedure TfmDeficitCoverDecisions.pdsGridDataParamsPRODUCT_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

procedure TfmDeficitCoverDecisions.btnShowAnnuledLinesClick(
  Sender: TObject);
begin
  inherited;
  cdsDetail.Filtered:= not btnShowAnnuledLines.Down;
end;

procedure TfmDeficitCoverDecisions.actVendorDocObjectiveExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotCompany,
    cdsDetailVENDOR_DOC_BRANCH_CODE.AsInteger,
    cdsDetailVENDOR_DOC_CODE.AsInteger);
end;

procedure TfmDeficitCoverDecisions.actVendorDocSubjectiveExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotCompany,
    cdsGridDataCOMPANY_DOC_BRANCH_CODE.AsInteger,
    cdsGridDataCOMPANY_DOC_CODE.AsInteger);
end;

procedure TfmDeficitCoverDecisions.actVendorDocSubjectiveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataCOMPANY_HAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmDeficitCoverDecisions.actVendorDocObjectiveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
  (Sender as TAction).ImageIndex:= Ord(cdsDetailVENDOR_HAS_DOCUMENTATION.AsBoolean);
end;

procedure TfmDeficitCoverDecisions.actVIMObjectiveExecute(Sender: TObject);
begin
  inherited;
  ShowProductVIM(cdsGridDataP_PRODUCT_CODE.AsInteger);
end;

procedure TfmDeficitCoverDecisions.grdDetailGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  Highlight: Boolean;
  Field: TField;
begin
  inherited;

  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if (Highlight and (ActiveControl = Sender)) or not Assigned(Field) or (Field.DataSet.Bof and Field.DataSet.Eof) then
    Exit;

  if (Field = cdsDetailPRIORITY_NO) then
    begin
      with cdsDetailPRIORITY_BACKGROUND_COLOR do
        if not IsNull then
          Background:= AsInteger;

      with cdsDetailPRIORITY_COLOR do
        if not IsNull then
          AFont.Color:= AsInteger;
    end;

  if (Field = cdsDetailVENDOR_PRIORITY_NO) then
    begin
      with cdsDetailVENDOR_PRIORITY_BK_COLOR do
        if not IsNull then
          Background:= AsInteger;

      with cdsDetailVENDOR_PRIORITY_COLOR do
        if not IsNull then
          AFont.Color:= AsInteger;
    end;

  if (Field = cdsDetailCOMPANY_STATUS_CODE) then
    AFont.Color:= CompanyStatusColors[cdsDetailCOMPANY_STATUS_CODE.AsInteger];

  if (Field = cdsDetailSTATUS_CODE) then
    Background:= DeliveryDialogStatusColors[cdsDetailSTATUS_CODE.AsInteger];
end;

procedure TfmDeficitCoverDecisions.Initialize;
begin
  inherited Initialize;

  FOriginalFormCaption:= actForm.Caption;

  if (FProdOrderBaseType = pobtOccCover) then
    begin
      HideGridColumns(grdData, [6], 3);
      grdData.Columns[4].Width:= grdData.Columns[3].Width;

      pcDetail.Pages[1].TabVisible:= False;

      HideGridColumns(grdDeliveryDialogs, [11, 12], 9);
      grdDeliveryDialogs.Columns[10].Width:= grdDeliveryDialogs.Columns[9].Width;
      HideGridColumns(grdRealization, [5, 6, 24], 3);
      grdRealization.Columns[4].Width:= grdRealization.Columns[3].Width;
    end;

  pnlOKCancel.Visible:= SelectingDeficitCoverDecision;
  pnlClose.Visible:= not SelectingDeficitCoverDecision;
end;

procedure TfmDeficitCoverDecisions.DoBeforeShow;
const
  ProdOrderBaseTypeDeliveryDealTypes: array[pobtSaleCover..pobtOccCover] of Integer =
    (ddtDeliveryForSales, ddtDeliveryForEnvironment, ddtDeliveryForOccupations);
begin
  Assert((pobtSaleCover <= FProdOrderBaseType) and (FProdOrderBaseType <= pobtOccCover));

  cdsGridData.Params.ParamByName('DELIVERY_DEAL_TYPE_CODE').AsInteger:=
    ProdOrderBaseTypeDeliveryDealTypes[FProdOrderBaseType];

  Utils.Using(uDeliveryUtils.CreateCommonMsgParams(FProdOrderBaseType, FProductClass))/
    procedure (mp: TStrings) begin
      RecursivelyFormatCaptions(Self, mp);
    end;

  Utils.Using(uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass))/
    procedure (mp: TStrings) begin
      if (FProdOrderBaseType = pobtOccCover) then
        OccupationProductFixCommonMsgParams(mp);

      RecursivelyFormatCaptions(Self, mp);
    end;

  inherited;
end;

procedure TfmDeficitCoverDecisions.actFormUpdate(Sender: TObject);
begin
  inherited;

  btnToggleVendorStuff.Visible:= (FProductClass = pcNormal);
  sepAfterToggleProductDisplay.Visible:= (FProductClass = pcNormal);

  tlbToggles.Visible:= (FProdOrderBaseType <> pobtOccCover);

  SetControlsVisible((pdsGridDataParamsDCD_MODE_CODE.AsDCDMode = dcdmObjective), [
    NormalizedToolbar(tlbVendorDocObjective),
    pnlProductButtonsObjective]);

  SetControlsVisible((pdsGridDataParamsDCD_MODE_CODE.AsDCDMode = dcdmSubjective), [
    NormalizedToolbar(tlbVendorDocSubjective),
    pnlProductButtonsSubjective]);

  UpdateColumnsVisibility(grdData, NormalizedToolbarToolbarsAndFlowPanels(tlbToggles));

  pnlSubjectDCDModeButtons.Visible:= (pdsGridDataParamsDCD_MODE_CODE.AsDCDMode = dcdmSubjective);
end;

procedure TfmDeficitCoverDecisions.actVIMObjectiveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmDeficitCoverDecisions.ShowProductVIM(AProductCode: Integer);
begin
   // znam che sedi opened from sale, ne e copy/paste error
  fVIMQuantity.ShowProductVIM(
    dmDocClient,
    AProductCode,
    ContextDate,
    False,
    vofVIMOpenedFromSale,
    FProductClass);
end;

procedure TfmDeficitCoverDecisions.actVIMSubjectiveExecute(Sender: TObject);
begin
  inherited;
  ShowProductVIM(cdsDetailPRODUCT_CODE.AsInteger);
end;

procedure TfmDeficitCoverDecisions.actVIMSubjectiveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmDeficitCoverDecisions.cdsDetailCalcFields(DataSet: TDataSet);
begin
  inherited;
  DeliveryDialogsCalcFields(DataSet);
end;

procedure TfmDeficitCoverDecisions.cdsDetailCOMPANY_STATUS_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  CompanyStatusFieldGetText(Sender, cdsDetailCOMPANY_STATUS_NAME, cdsDetailBASE_ROLE_CODE, Text, DisplayText);
end;

procedure TfmDeficitCoverDecisions.cdsDetailDELIVERY_STATE_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= DeliveryDialogStatuses[Sender.AsInteger]
  else
    Text:= '';
end;

procedure TfmDeficitCoverDecisions.cdsDetailSTATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull then
    Text:= ''
  else
    Text:= DeliveryDialogStatuses[Sender.AsInteger];
end;

procedure TfmDeficitCoverDecisions.cdsDetail_LEASE_DATE_INTERVALGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    try
      Text:= dmMain.GetDateIntervalAsString(
        Sender.AsDateTime,
        IncDate(Sender.AsDateTime, GetPeriodValue(cdsDetailLEASE_DATE_UNIT_CODE.AsInteger), cdsDetailLEASE_DATE_UNIT_QTY.AsInteger)
      );
    except
      Text:= '';
    end;
end;

procedure TfmDeficitCoverDecisions.pdsGridDataParamsDCD_MODE_CODEChange(Sender: TField);
begin
  inherited;
  btnIsDCDModeSubjective.Down:= (pdsGridDataParamsDCD_MODE_CODE.AsDCDMode = dcdmSubjective);
end;

end.
