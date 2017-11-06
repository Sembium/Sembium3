unit fParRelProduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  Grids, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, fBottomButtonGridForm, fBaseFrame, fDBFrame,
  fFieldEditFrame, fStatusAbstract, fParRelProductStatus, JvExStdCtrls,
  JvDBCombobox, fPartnerFieldEditFrame, fPartnerExFieldEditFrame, Mask,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, AbmesTimeLine, GridsEh,
  fProductFieldEditFrameBald, fProductExFieldEditFrame, uProducts,
  uBorderRelTypes, uClientTypes, JvExControls, JvComponent, JvTimeLine, Menus,
  dDocClient, JvCombobox, DBGridEhGrouping;

type
  TfmParRelProduct = class(TBottomButtonGridForm)
    pnlTop: TPanel;
    cdsDataPARTNER_CODE: TAbmesFloatField;
    cdsDataBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDataIS_REGULAR: TAbmesFloatField;
    cdsDataqryParRelProductPeriods: TDataSetField;
    cdsGridDataPARTNER_CODE: TAbmesFloatField;
    cdsGridDataBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPAR_REL_PRODUCT_PERIOD_CODE: TAbmesFloatField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataIS_APPROVED_BY_PARTNER: TAbmesFloatField;
    cdsGridDataEST_SALE_COVER_ACQUIRE_QTY: TAbmesFloatField;
    cdsGridDataEST_SALE_COVER_LEASE_QTY: TAbmesFloatField;
    cdsGridDataEST_SALE_COVER_LEASE_DURATION: TAbmesFloatField;
    cdsGridDataEST_SALE_COVER_CONSIGN_QTY: TAbmesFloatField;
    cdsGridDataEST_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField;
    cdsGridDataEST_ENV_COVER_LEASE_QTY: TAbmesFloatField;
    cdsGridDataEST_ENV_COVER_LEASE_DURATION: TAbmesFloatField;
    cdsGridDataACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataOVERRIDE_ACQUIRE_PRICE: TAbmesFloatField;
    cdsGridDataLEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataLEASE_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataOVERRIDE_LEASE_PRICE: TAbmesFloatField;
    cdsGridDataSTORE_CODE: TAbmesFloatField;
    cdsGridDataOVERRIDE_STORE: TAbmesFloatField;
    cdsGridDataPARTNER_OFFICE_CODE: TAbmesFloatField;
    cdsGridDataOVERRIDE_PARTNER_OFFICE: TAbmesFloatField;
    cdsGridDataTRANSPORT_DURATION_DAYS: TAbmesFloatField;
    cdsGridDataOVERRIDE_TRANSPORT_DURATION: TAbmesFloatField;
    cdsGridDataMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataOVERRIDE_MEDIATOR_COMPANY: TAbmesFloatField;
    cdsGridDataSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataOVERRIDE_SHIPMENT_TYPE: TAbmesFloatField;
    cdsGridDataIS_PARTNER_TRANSPORT: TAbmesFloatField;
    cdsGridDataOVERRIDE_IS_PARTNER_TRANSPORT: TAbmesFloatField;
    cdsGridDataCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsGridDataOVERRIDE_CUSTOMHOUSE: TAbmesFloatField;
    cdsGridData_MAX_PAR_REL_PRODUCT_PERIOD_CODE: TAggregateField;
    gbParRelProduct: TGroupBox;
    frStatus: TfrParRelProductStatus;
    lblIsRegular: TLabel;
    frPartner: TfrPartnerExFieldEditFrame;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    frProduct: TfrProductExFieldEditFrame;
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsPartnerOffices: TAbmesClientDataSet;
    cdsPartnerOfficesOFFICE_CODE: TAbmesFloatField;
    cdsPartnerOfficesOFFICE_NAME: TAbmesWideStringField;
    cdsShipmentTypes: TAbmesClientDataSet;
    cdsShipmentTypesSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsShipmentTypesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsShipmentTypesSHIPMENT_TYPE_NAME: TAbmesWideStringField;
    cdsShipmentTypes_SHOW_NAME: TAbmesWideStringField;
    cdsCustomhouses: TAbmesClientDataSet;
    cdsCustomhousesCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsCustomhousesCUSTOMHOUSE_NAME: TAbmesWideStringField;
    cdsGridDataMEDIATOR_COMP_SHORT_NAME: TAbmesWideStringField;
    cdsGridData_PARTNER_OFFICE_NAME: TAbmesWideStringField;
    cdsGridData_SHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridData_CUSTOMHOUSE_NAME: TAbmesWideStringField;
    cdsGridData_HAS_CUSTOMHOUSE: TAbmesFloatField;
    cdsGridData_RIGHT_ARROW: TAbmesWideStringField;
    cdsGridData_SHIPMENT_TYPE_SHOW_NAME: TAbmesWideStringField;
    cdsGridData_ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_LEASE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsPrecisionLevels: TAbmesClientDataSet;
    cdsPrecisionLevelsPRECISION_LEVEL_CODE: TAbmesFloatField;
    cdsPrecisionLevelsPRECISION_LEVEL_NO: TAbmesFloatField;
    cdsPrecisionLevelsCOLOR: TAbmesFloatField;
    cdsPrecisionLevelsBACKGROUND_COLOR: TAbmesFloatField;
    cdsPrecisionLevelsPRECISION_LEVEL_NAME: TAbmesWideStringField;
    cdsGridDataSTORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataINHRT_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataINHRT_ACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataINHRT_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataINHRT_LEASE_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataINHRT_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataINHRT_STORE_CODE: TAbmesFloatField;
    cdsGridDataINHRT_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataINHRT_PARTNER_OFFICE_CODE: TAbmesFloatField;
    cdsGridDataINHRT_TRANSPORT_DURATION_DAYS: TAbmesFloatField;
    cdsGridDataINHRT_MEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataINHRT_MEDIATOR_COMP_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataINHRT_SHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataINHRT_IS_PARTNER_TRANSPORT: TAbmesFloatField;
    cdsGridDataINHRT_CUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsGridDataCMMN_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridDataCMMN_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridDataCMMN_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridDataCMMN_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridDataCMMN_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridDataCMMN_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsGridDataPRECISION_LEVEL_CODE: TAbmesFloatField;
    cdsGridDataBALANCE_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataACC_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_ACC_INHRT_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_ACC_INHRT_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_ACC_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridData_ACC_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridData_ACC_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridData_ACC_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridData_ACC_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridData_ACC_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsGridData_ACC_BALANCE_QUANTITY: TAbmesFloatField;
    cdsGridData_INHRT_ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_INHRT_LEASE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_INHRT_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridData_INHRT_PARTNER_OFFICE_NAME: TAbmesWideStringField;
    cdsGridData_INHRT_SHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridData_INHRT_SHIPMENT_TYPE_SHOW_NAME: TAbmesWideStringField;
    cdsGridData_INHRT_CUSTOMHOUSE_NAME: TAbmesWideStringField;
    cdsGridData_INHRT_HAS_CUSTOMHOUSE: TAbmesFloatField;
    cdsGridDataACC_EST_SALE_COVER_ACQUIRE_QTY: TAbmesFloatField;
    cdsGridDataACC_EST_SALE_COVER_LEASE_QTY: TAbmesFloatField;
    cdsGridDataACC_EST_SALE_COVER_CONSIGN_QTY: TAbmesFloatField;
    cdsGridDataACC_EST_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField;
    cdsGridDataACC_EST_ENV_COVER_LEASE_QTY: TAbmesFloatField;
    cdsGridData_AGGR_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridData_AGGR_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridData_AGGR_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridData_AGGR_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridData_AGGR_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsGridData_SINGLE_PRICE_INVESTMENT_LEVEL_1_PART: TAbmesFloatField;
    cdsGridData_SINGLE_PRICE_INVESTMENT_LEVEL_2_PART: TAbmesFloatField;
    cdsGridData_SINGLE_PRICE_INVESTMENT_LEVEL_3_PART: TAbmesFloatField;
    cdsGridData_SINGLE_PRICE_INVESTMENT_LEVEL_4_PART: TAbmesFloatField;
    cdsGridData_SINGLE_PRICE_INVESTMENT_LEVEL_5_PART: TAbmesFloatField;
    cdsGridData_SINGLE_PRICE_INVESTMENT_LEVEL_6_PART: TAbmesFloatField;
    cdsGridData_CMMN_INVESTMENT_LEVEL_1_DIFF: TAbmesFloatField;
    cdsGridData_CMMN_INVESTMENT_LEVEL_2_DIFF: TAbmesFloatField;
    cdsGridData_CMMN_INVESTMENT_LEVEL_3_DIFF: TAbmesFloatField;
    cdsGridData_CMMN_INVESTMENT_LEVEL_4_DIFF: TAbmesFloatField;
    cdsGridData_CMMN_INVESTMENT_LEVEL_5_DIFF: TAbmesFloatField;
    cdsGridData_CMMN_INVESTMENT_LEVEL_6_DIFF: TAbmesFloatField;
    cdsGridData_ACC_AGGR_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridData_ACC_AGGR_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridData_ACC_AGGR_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridData_ACC_AGGR_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridData_ACC_AGGR_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsGridData_ACC_FULL_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridData_ACC_FULL_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridData_ACC_FULL_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridData_ACC_FULL_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridData_ACC_FULL_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridData_ACC_FULL_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsDataMEASURE_CODE: TAbmesFloatField;
    cdsDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsGridDataACQUIRE_CURRENCY_FIXING: TAbmesFloatField;
    cdsGridData_TOTAL_FULL_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridData_TOTAL_FULL_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridData_TOTAL_FULL_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridData_TOTAL_FULL_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridData_TOTAL_FULL_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridData_TOTAL_FULL_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsGridData_TOTAL_BASE_VALUE_GAINED_LEVEL_1: TAbmesFloatField;
    cdsGridData_TOTAL_BASE_VALUE_GAINED_LEVEL_2: TAbmesFloatField;
    cdsGridData_TOTAL_BASE_VALUE_GAINED_LEVEL_3: TAbmesFloatField;
    cdsGridData_TOTAL_BASE_VALUE_GAINED_LEVEL_4: TAbmesFloatField;
    cdsGridData_TOTAL_BASE_VALUE_GAINED_LEVEL_5: TAbmesFloatField;
    cdsGridData_TOTAL_BASE_VALUE_GAINED_LEVEL_6: TAbmesFloatField;
    cdsGridData_TOTAL_VALUE_GAINED_LEVEL_1_PART: TAbmesFloatField;
    cdsGridData_TOTAL_VALUE_GAINED_LEVEL_2_PART: TAbmesFloatField;
    cdsGridData_TOTAL_VALUE_GAINED_LEVEL_3_PART: TAbmesFloatField;
    cdsGridData_TOTAL_VALUE_GAINED_LEVEL_4_PART: TAbmesFloatField;
    cdsGridData_TOTAL_VALUE_GAINED_LEVEL_5_PART: TAbmesFloatField;
    cdsGridData_TOTAL_VALUE_GAINED_LEVEL_6_PART: TAbmesFloatField;
    cdsGridData_REAL_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_REAL__ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_REAL_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_REAL__LEASE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_REAL__LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridData_REAL_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridData_REAL__PARTNER_OFFICE_NAME: TAbmesWideStringField;
    cdsGridData_REAL_MEDIATOR_COMP_SHORT_NAME: TAbmesWideStringField;
    cdsGridData_REAL__SHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridData_REAL_IS_PARTNER_TRANSPORT: TAbmesFloatField;
    cdsGridData_REAL__HAS_CUSTOMHOUSE: TAbmesFloatField;
    cdsGridData_REAL_TRANSPORT_DURATION_DAYS: TAbmesFloatField;
    cdsGridData_REAL_ACC_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_REAL_ACC_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_EST_SALE_COVER_LEASE_TOTAL_QTY: TAbmesFloatField;
    cdsGridData_EST_ENV_COVER_LEASE_TOTAL_QTY: TAbmesFloatField;
    cdsGridData_REAL_EST_SALE_COVER_ACQUIRE_TOTAL_PRICE: TAbmesFloatField;
    cdsGridData_REAL_EST_SALE_COVER_LEASE_TOTAL_PRICE: TAbmesFloatField;
    cdsGridData_REAL_EST_ENV_COVER_ACQUIRE_TOTAL_PRICE: TAbmesFloatField;
    cdsGridData_REAL_EST_ENV_COVER_LEASE_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataPREV_TOTAL_VG_LEVEL_1_PART: TAbmesFloatField;
    cdsGridDataPREV_TOTAL_VG_LEVEL_2_PART: TAbmesFloatField;
    cdsGridDataPREV_TOTAL_VG_LEVEL_3_PART: TAbmesFloatField;
    cdsGridDataPREV_TOTAL_VG_LEVEL_4_PART: TAbmesFloatField;
    cdsGridDataPREV_TOTAL_VG_LEVEL_5_PART: TAbmesFloatField;
    cdsGridDataPREV_TOTAL_VG_LEVEL_6_PART: TAbmesFloatField;
    cdsGridData_PREV_TOTAL_VG_LEVEL_1_PART_DIFF: TAbmesFloatField;
    cdsGridData_PREV_TOTAL_VG_LEVEL_2_PART_DIFF: TAbmesFloatField;
    cdsGridData_PREV_TOTAL_VG_LEVEL_3_PART_DIFF: TAbmesFloatField;
    cdsGridData_PREV_TOTAL_VG_LEVEL_4_PART_DIFF: TAbmesFloatField;
    cdsGridData_PREV_TOTAL_VG_LEVEL_5_PART_DIFF: TAbmesFloatField;
    cdsGridData_PREV_TOTAL_VG_LEVEL_6_PART_DIFF: TAbmesFloatField;
    cdsGridData_BASE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_REAL_EST_SALE_COVER_ACQUIRE_BASE_TOTAL_PRICE: TAbmesFloatField;
    cdsGridData_REAL_EST_SALE_COVER_LEASE_BASE_TOTAL_PRICE: TAbmesFloatField;
    cdsGridData_REAL_EST_ENV_COVER_ACQUIRE_BASE_TOTAL_PRICE: TAbmesFloatField;
    cdsGridData_REAL_EST_ENV_COVER_LEASE_BASE_TOTAL_PRICE: TAbmesFloatField;
    cdsGridData_REAL_ACQUIRE_BASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_REAL_LEASE_BASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataLEASE_CURRENCY_FIXING: TAbmesFloatField;
    tlbToggleBaseCurrency: TToolBar;
    btnToggleBaseCurrency: TToolButton;
    actToggleBaseCurrency: TAction;
    actToggleValueGainedDiff: TAction;
    tlbToggleValueGainedDiff: TToolBar;
    sepToggleValueGainedDiff: TToolButton;
    actToggleAcquire: TAction;
    actToggleLease: TAction;
    actToggleConsign: TAction;
    actToggleSale: TAction;
    actToggleEnv: TAction;
    btnToggleValueGainedDiff: TSpeedButton;
    tlbToggleAcquireLeaseConsign: TToolBar;
    sepDeliveryToggleAcquireLeaseConsign: TToolButton;
    btnToggleConsign: TSpeedButton;
    btnToggleLease: TSpeedButton;
    btnToggleAcquire: TSpeedButton;
    pnlNavigatorClient: TPanel;
    tlbToggleSaleEnv: TToolBar;
    btnToggleSale: TSpeedButton;
    btnToggleEnv: TSpeedButton;
    sepToggleSaleEnv: TToolButton;
    cdsGridData_PRECISION_LEVEL_NO: TAbmesFloatField;
    cdsGridData_REAL_ACC_ACQUIRE_BASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_REAL_ACC_LEASE_BASE_SINGLE_PRICE: TAbmesFloatField;
    actWorkMeasure: TAction;
    actAccountMeasure: TAction;
    tlbToggleMeasures: TToolBar;
    sepToggleMeasures: TToolButton;
    btnWorkMeasure: TToolButton;
    btnAccountMeasure: TToolButton;
    cdsGridData_ACC_EST_SALE_COVER_LEASE_TOTAL_QTY: TAbmesFloatField;
    cdsGridData_ACC_EST_ENV_COVER_LEASE_TOTAL_QTY: TAbmesFloatField;
    tlbPeriodDocs: TToolBar;
    sepDocs: TToolButton;
    pnlDocs: TPanel;
    btnPeriodDocs: TToolButton;
    cbIsRegular: TJvDBComboBox;
    cdsPrecisionLevels_PRECISION_LEVEL_SHOW_NAME: TAbmesWideStringField;
    cdsGridData_PRECISION_LEVEL_SHOW_NAME: TAbmesWideStringField;
    cdsGridData_PRECISION_LEVEL_COLOR: TAbmesFloatField;
    cdsGridData_PRECISION_LEVEL_BACKGROUND_COLOR: TAbmesFloatField;
    cdsDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_IS_APPROVED_BY_PARTNER_SHOW: TAbmesFloatField;
    cdsGridData_VALUE_GAINED_LEVEL_6: TAbmesFloatField;
    cdsPRPPInheritedData: TAbmesClientDataSet;
    cdsPRPPInheritedDataINHRT_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsPRPPInheritedDataINHRT_ACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    cdsPRPPInheritedDataINHRT_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsPRPPInheritedDataINHRT_LEASE_CURRENCY_CODE: TAbmesFloatField;
    cdsPRPPInheritedDataINHRT_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsPRPPInheritedDataINHRT_STORE_CODE: TAbmesFloatField;
    cdsPRPPInheritedDataINHRT_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsPRPPInheritedDataINHRT_PARTNER_OFFICE_CODE: TAbmesFloatField;
    cdsPRPPInheritedDataINHRT_TRANSPORT_DURATION_DAYS: TAbmesFloatField;
    cdsPRPPInheritedDataINHRT_MEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsPRPPInheritedDataINHRT_MEDIATOR_COMP_SHORT_NAME: TAbmesWideStringField;
    cdsPRPPInheritedDataINHRT_SHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsPRPPInheritedDataINHRT_IS_PARTNER_TRANSPORT: TAbmesFloatField;
    cdsPRPPInheritedDataINHRT_CUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsPRPPInheritedDataINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsPRPPInheritedDataINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsPRPPInheritedDataINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsPRPPInheritedDataINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsPRPPInheritedDataINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsPRPPInheritedDataINVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsPRPPInheritedDataCMMN_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsPRPPInheritedDataCMMN_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsPRPPInheritedDataCMMN_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsPRPPInheritedDataCMMN_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsPRPPInheritedDataCMMN_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsPRPPInheritedDataCMMN_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsPRPPInheritedDataPRECISION_LEVEL_CODE: TAbmesFloatField;
    cdsPRPPInheritedDataBALANCE_QUANTITY: TAbmesFloatField;
    pdsGridDataParamsPARTNER_CODE: TAbmesFloatField;
    pdsGridDataParamsPRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsDataSTATUS_CHANGED: TAbmesFloatField;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    actCreateLike: TAction;
    btnCreateLike: TBitBtn;
    cdsData_COMMON_STATUS_CODE: TAbmesFloatField;
    cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField;
    pnlTimeLine: TPanel;
    tlMain: TAbmesTimeLine;
    cdsParRel: TAbmesClientDataSet;
    cdsParRelPARTNER_CODE: TAbmesFloatField;
    cdsParRelBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsParRelPRIORITY_CODE: TAbmesFloatField;
    cdsParRelqryParRelPeriods: TDataSetField;
    cdsParRelPeriods: TAbmesClientDataSet;
    cdsProductPeriodsHeader: TAbmesClientDataSet;
    cdsParRelPeriodsPARTNER_CODE: TAbmesFloatField;
    cdsParRelPeriodsBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsParRelPeriodsPAR_REL_PERIOD_CODE: TAbmesFloatField;
    cdsParRelPeriodsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsParRelPeriodsEND_DATE: TAbmesSQLTimeStampField;
    cdsProductPeriodsHeaderPRODUCT_CODE: TAbmesFloatField;
    cdsProductPeriodsHeaderqryProductPeriods: TDataSetField;
    cdsProductPeriods: TAbmesClientDataSet;
    cdsProductPeriodsPRODUCT_CODE: TAbmesFloatField;
    cdsProductPeriodsPRODUCT_PERIOD_CODE: TAbmesFloatField;
    cdsProductPeriodsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsProductPeriodsEND_DATE: TAbmesSQLTimeStampField;
    pnlTimeLineLegend: TPanel;
    shpParRelProductPeriods: TShape;
    lblParRelProductPeriodsTimeLine: TLabel;
    shpParRelPeriodsTimeLine: TShape;
    lblParRelPeriodsTimeLine: TLabel;
    shpProductPeriodsTimeLine: TShape;
    lblProductPeriodsTimeLine: TLabel;
    cdsGridData_MONTHS_IN_PERIOD: TAbmesFloatField;
    cdsGridData_AVG_MONTH_EST_SALE_COVER_ACQUIRE_QTY: TAbmesFloatField;
    cdsGridData_ACC_AVG_MONTH_EST_SALE_COVER_ACQUIRE_QTY: TAbmesFloatField;
    cdsGridData_AVG_MONTH_EST_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField;
    cdsGridData_ACC_AVG_MONTH_EST_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField;
    cdsGridData_AVG_MONTH_EST_SALE_COVER_CONSIGN_QTY: TAbmesFloatField;
    cdsGridData_ACC_AVG_MONTH_EST_SALE_COVER_CONSIGN_QTY: TAbmesFloatField;
    shpCurrentParRelProductPeriod: TShape;
    lblCurrentParRelProductPeriodsTimeLine: TLabel;
    cdsGridDataRESOLVE_DURATION_DAYS: TAbmesFloatField;
    cdsGridDataOVERRIDE_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    cdsGridDataINHRT_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    cdsGridData_REAL_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    pdsGridDataParamsPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsGridDataIS_PAST: TAbmesFloatField;
    cdsGridDataIS_PRESENT: TAbmesFloatField;
    cdsGridDataIS_FUTURE: TAbmesFloatField;
    actPastPeriods: TAction;
    actPresentPeriods: TAction;
    actFuturePeriods: TAction;
    tlbPastPresentFuturePeriods: TToolBar;
    sepPastPresentFuturePeriods: TToolButton;
    btnPastPeriods: TSpeedButton;
    btnPresentPeriods: TSpeedButton;
    btnFuturePeriods: TSpeedButton;
    cdsGridDataEST_SPEC_FIN_MODEL_CODE: TAbmesFloatField;
    cdsGridDataOVERRIDE_EST_SPEC_FIN_MODEL: TAbmesFloatField;
    cdsGridDataINHRT_EST_SPEC_FIN_MODEL_CODE: TAbmesFloatField;
    cdsPRPPInheritedDataINHRT_EST_SPEC_FIN_MODEL_CODE: TAbmesFloatField;
    cdsGridDataEST_SPEC_FIN_MODEL_NAME: TAbmesWideStringField;
    cdsGridDataINHRT_EST_SPEC_FIN_MODEL_NAME: TAbmesWideStringField;
    cdsPRPPInheritedDataINHRT_EST_SPEC_FIN_MODEL_NAME: TAbmesWideStringField;
    cdsGridData_REAL_EST_SPEC_FIN_MODEL_NAME: TAbmesWideStringField;
    cdsGridData_SINGLE_PRICE_AGGR_INVESTMENT_LEVEL_6_PART: TAbmesFloatField;
    cdsGridData_SINGLE_PRICE_FULL_INVESTMENT_LEVEL_6_PART: TAbmesFloatField;
    cdsGridData_CMMN_AGGR_INVESTMENT_LEVEL_6_DIFF: TAbmesFloatField;
    cdsGridData_CMMN_FULL_INVESTMENT_LEVEL_6_DIFF: TAbmesFloatField;
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure cdsGridDataBEGIN_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataMEDIATOR_COMPANY_CODEChange(Sender: TField);
    procedure cdsShipmentTypesCalcFields(DataSet: TDataSet);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataSTORE_CODEChange(Sender: TField);
    procedure cdsGridDataINHRT_STORE_CODEChange(Sender: TField);
    procedure cdsGridDataINHRT_MEDIATOR_COMPANY_CODEChange(Sender: TField);
    procedure PercentFieldsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataEND_DATEChange(Sender: TField);
    procedure cdsGridDataACQUIRE_CURRENCY_CODEChange(Sender: TField);
    procedure WorkOrAccountFieldChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
    procedure cdsGridDataLEASE_CURRENCY_CODEChange(Sender: TField);
    procedure actFormUpdate(Sender: TObject);
    procedure actToggleValueGainedDiffExecute(Sender: TObject);
    procedure actToggleAcquireExecute(Sender: TObject);
    procedure actToggleLeaseExecute(Sender: TObject);
    procedure actToggleConsignExecute(Sender: TObject);
    procedure actToggleSaleExecute(Sender: TObject);
    procedure actToggleEnvExecute(Sender: TObject);
    procedure actToggleBaseCurrencyExecute(Sender: TObject);
    procedure actToggleConsignUpdate(Sender: TObject);
    procedure actWorkMeasureExecute(Sender: TObject);
    procedure actAccountMeasureExecute(Sender: TObject);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnPeriodDocsClick(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actToggleAcquireUpdate(Sender: TObject);
    procedure actToggleLeaseUpdate(Sender: TObject);
    procedure actToggleSaleUpdate(Sender: TObject);
    procedure actToggleEnvUpdate(Sender: TObject);
    procedure cdsPrecisionLevelsCalcFields(DataSet: TDataSet);
    procedure cdsGridDataBEGIN_DATEChange(Sender: TField);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actInsertRecordExecute(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsAfterPost(DataSet: TDataSet);
    procedure cdsDataPRODUCT_CODEChange(Sender: TField);
    procedure actCreateLikeUpdate(Sender: TObject);
    procedure actCreateLikeExecute(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsPartnerOfficesBeforeOpen(DataSet: TDataSet);
    procedure tlMainBeforePaint(Sender: TObject);
    procedure tlMainAfterPaint(Sender: TObject);
    procedure tlMainDrawItem(Sender: TObject; Canvas: TCanvas;
      Item: TJvTimeItem; var R: TRect);
    procedure tlMainItemDblClick(Sender: TObject; Item: TJvTimeItem);
    procedure tlMainMeasureItem(Sender: TObject; Item: TJvTimeItem;
      var ItemHeight: Integer);
    procedure cdsGridDataAfterScroll(DataSet: TDataSet);
    procedure cdsGridDataBeforeEdit(DataSet: TDataSet);
    procedure navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cdsMeasuresBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure actPastPresentFuturePeriodsExecute(Sender: TObject);
    procedure tlMainItemClick(Sender: TObject; Item: TJvTimeItem);
    procedure cdsGridDataBeforeInsert(DataSet: TDataSet);
    procedure PercentFieldsZeroGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    FProductClass: TProductClass;
    FBorderRelType: TBorderRelType;
    FOriginalFormCaption: string;
    FSettingWorkOrAccountValue: Boolean;
    FSettingPrevPeriodValueGainedParts: Boolean;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FInPDSAfterOpen: Boolean;
    FCreateLikeFieldValues: Variant;
    FSaveShortMonthNames: array of string;
    FCurrentTimeLineItem: TJvTimeItem;
    FBeforeEditBeginDate: TDateTime;
    FMaxParRelProductPeriodCode: Integer;
    FFocusDate: TDateTime;
    procedure UpdateCurrencyFixing(CurrencyField, FixingField: TField);
    procedure SetPrevPeriodValueGainedPartsAndTotals;
    procedure SetColumns;
    procedure SetMeasure;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure SetTimeLineLevel(ADataSet: TDataSet; ALevel: Integer;
      AColor: TColor; ACaptionField: TField = nil);
    procedure SetParRelProductTimeLineLevel;
    procedure SetAllTimeLineLevels;
    procedure SetCurrentTimeLineItem;
    procedure RefilterPeriods;
    procedure SetTimeLineCurrentVisibleDate(ADate: TDateTime);
    function BorderRelTypePriceVisible: Boolean;
  protected
    function GetOriginalFormCaption: string; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetApplyUpdatesEnabled: Boolean; override;
    procedure DoBeforeShow; override;
    procedure ChangeEditMode(var AEditMode: TEditMode); override;
    procedure DoApplyUpdates; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function GetGridRecordReadOnly: Boolean; override;
    function IsQuantityField(const AField: TAbmesFloatField): Boolean; override;

    property BorderRelType: TBorderRelType read FBorderRelType;
  public
    class function CanEditOuterDataSet: Boolean; override;
    class function CanUseDocs: Boolean; override;

    procedure Initialize; override;
    procedure Finalize; override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AFocusDate: TDateTime = 0): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AFocusDate: TDateTime = 0); reintroduce; virtual;
  end;

implementation

uses
  dMain, uUtils, uDocUtils, uClientUtils, uProductionOrderTypes, uYearParts,
  JclStrings, uTreeClientUtils, Math, StrUtils, uParRelProducts,
  fParRelProductPeriod, fNewParRelProductFilter, DateUtils, uUserActivityConsts,
  uClientDateTime, uToolbarUtils, uCompanyClasses, uComboBoxUtils, UITypes;

{$R *.dfm}

resourcestring
  SDifferentCurrencies = 'разл. вал.';
  SStatusRequired = 'Не сте задали статус!';
  SPeriodsRequired = 'Не сте задали Времеви Интервали!';
  SEstimationRequired = 'Не сте въвели прогноза!';
  SNoUserActivityForPastOrCurrentParRelProductPeriod =
    'Нямате Информационна Отговорност да задавате или изтривате изминал или текущ Времеви Интервал! (%d)';

{ TfmParRelProduct }

procedure TfmParRelProduct.actAccountMeasureExecute(Sender: TObject);
begin
  inherited;
  SetColumns;
  SetMeasure;
end;

procedure TfmParRelProduct.actCreateLikeExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;

  FCreateLikeFieldValues:= VarArrayCreate([0, cdsGridData.FieldCount-1], varVariant);
  for i:= 0 to cdsGridData.FieldCount - 1 do
    if (cdsGridData.Fields[i].FieldKind = fkData) then
      FCreateLikeFieldValues[i]:= cdsGridData.Fields[i].Value
    else
      FCreateLikeFieldValues[i]:= Unassigned;
  try
    DoShowEditForm(emInsert);
  finally
    FCreateLikeFieldValues:= Unassigned;
  end;
end;

procedure TfmParRelProduct.actCreateLikeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmParRelProduct.actFormUpdate(Sender: TObject);
begin
  inherited;

  NormalizedToolbar(tlbToggleSaleEnv).Visible:=
    (BorderRelType = brtVendor) and (FProductClass = pcNormal);

  NormalizedToolbar(tlbToggleAcquireLeaseConsign).Visible:=
    (FProductClass = pcNormal);

  NormalizedToolbar(tlbToggleValueGainedDiff).Visible:=
    (BorderRelType = brtClient);

  btnDocs.ImageIndex:= cdsDataHAS_DOC_ITEMS.AsInteger;
  btnPeriodDocs.ImageIndex:= cdsGridDataHAS_DOC_ITEMS.AsInteger;

  SetControlReadOnly(EditMode = emReadOnly, ReplacedDBComboBox(cbIsRegular));
end;

procedure TfmParRelProduct.actInsertRecordExecute(Sender: TObject);
begin
  PostDataSet(cdsData);
  inherited;
end;

procedure TfmParRelProduct.actPastPresentFuturePeriodsExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  RefilterPeriods;
end;

procedure TfmParRelProduct.actToggleAcquireExecute(Sender: TObject);
begin
  inherited;
  SetColumns;
  SetParRelProductTimeLineLevel;
end;

procedure TfmParRelProduct.actToggleAcquireUpdate(Sender: TObject);
begin
  inherited;
  btnToggleAcquire.Down:= (Sender as TAction).Checked;
end;

procedure TfmParRelProduct.actToggleConsignExecute(Sender: TObject);
begin
  inherited;
  SetColumns;
  SetParRelProductTimeLineLevel;
end;

procedure TfmParRelProduct.actToggleConsignUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= actToggleSale.Checked;
  btnToggleConsign.Down:= (Sender as TAction).Checked;
end;

procedure TfmParRelProduct.actToggleBaseCurrencyExecute(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
end;

procedure TfmParRelProduct.actToggleEnvExecute(Sender: TObject);
begin
  inherited;

  if actToggleConsign.Checked then
    actToggleAcquire.Checked:= True;

  SetColumns;
  SetParRelProductTimeLineLevel;
end;

procedure TfmParRelProduct.actToggleEnvUpdate(Sender: TObject);
begin
  inherited;
  btnToggleEnv.Down:= (Sender as TAction).Checked;
end;

procedure TfmParRelProduct.actToggleLeaseExecute(Sender: TObject);
begin
  inherited;
  SetColumns;
  SetParRelProductTimeLineLevel;
end;

procedure TfmParRelProduct.actToggleLeaseUpdate(Sender: TObject);
begin
  inherited;
  btnToggleLease.Down:= (Sender as TAction).Checked;
end;

procedure TfmParRelProduct.actToggleSaleExecute(Sender: TObject);
begin
  inherited;
  SetColumns;
  SetParRelProductTimeLineLevel;
end;

procedure TfmParRelProduct.actToggleSaleUpdate(Sender: TObject);
begin
  inherited;
  btnToggleSale.Down:= (Sender as TAction).Checked;
end;

procedure TfmParRelProduct.actToggleValueGainedDiffExecute(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
end;

procedure TfmParRelProduct.actWorkMeasureExecute(Sender: TObject);
begin
  inherited;
  SetColumns;
  SetMeasure;
end;

function TfmParRelProduct.BorderRelTypePriceVisible: Boolean;
begin
  Result:= 
    ((FBorderRelType = brtClient) and IsSalePriceVisible) or
    ((FBorderRelType = brtVendor) and IsLevelOneInvestedValueVisible);
end;

procedure TfmParRelProduct.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, btnDocs, dotParRelProduct, cdsData);
end;

procedure TfmParRelProduct.btnPeriodDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnPeriodDocs, dotParRelProductPeriod, cdsGridData);
end;

class function TfmParRelProduct.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

class function TfmParRelProduct.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmParRelProduct.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= VarArrayOf([DocsDelta, frStatus.Delta]);
end;

procedure TfmParRelProduct.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  CheckRequiredFields(cdsData, 'PARTNER_CODE; PRODUCT_CODE; IS_REGULAR');
  CheckRequiredField(cdsDataBORDER_REL_TYPE_CODE);
end;

procedure TfmParRelProduct.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsData_COMMON_STATUS_CODE.AsVariant:=
    frProduct.cdsExtendedInfoCOMMON_STATUS_CODE.AsVariant
end;

procedure TfmParRelProduct.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataIS_REGULAR.AsBoolean:= True;
end;

procedure TfmParRelProduct.cdsDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  DoProductFieldChanged(cdsDataPRODUCT_CODE,
    nil, nil, cdsDataMEASURE_CODE, cdsDataACCOUNT_MEASURE_CODE, cdsDataACCOUNT_MEASURE_COEF);
end;

procedure TfmParRelProduct.cdsGridDataACQUIRE_CURRENCY_CODEChange(
  Sender: TField);
begin
  inherited;
  UpdateCurrencyFixing(cdsGridDataACQUIRE_CURRENCY_CODE,
    cdsGridDataACQUIRE_CURRENCY_FIXING);
end;

procedure TfmParRelProduct.cdsGridDataAfterDelete(DataSet: TDataSet);
begin
  inherited;
  SetPrevPeriodValueGainedPartsAndTotals;
  SetParRelProductTimeLineLevel;
end;

procedure TfmParRelProduct.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  
  if not FSettingPrevPeriodValueGainedParts then
    begin
      SetPrevPeriodValueGainedPartsAndTotals;
      SetParRelProductTimeLineLevel;
    end;
end;

procedure TfmParRelProduct.cdsGridDataAfterScroll(DataSet: TDataSet);
begin
  inherited;

  if (not cdsGridData.ControlsDisabled) and not (DataSet.State in dsEditModes) then
    SetCurrentTimeLineItem;
end;

procedure TfmParRelProduct.cdsGridDataBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FBeforeEditBeginDate:= cdsGridDataBEGIN_DATE.AsDateTime;
end;

procedure TfmParRelProduct.cdsGridDataBeforeInsert(DataSet: TDataSet);
var
  SaveFiltered: Boolean;
begin
  inherited;
  cdsGridData.DisableControls;
  try
    SaveFiltered:= cdsGridData.Filtered;
    cdsGridData.Filtered:= False;
    try
      FMaxParRelProductPeriodCode:= 0;
      cdsGridData.First;
      while not cdsGridData.Eof do
        begin
          FMaxParRelProductPeriodCode:=
            Max(FMaxParRelProductPeriodCode, cdsGridDataPAR_REL_PRODUCT_PERIOD_CODE.AsInteger);
          cdsGridData.Next;
        end;
    finally
      cdsGridData.Filtered:= SaveFiltered;
    end;
  finally
    cdsGridData.EnableControls;
  end;
end;

procedure TfmParRelProduct.cdsGridDataBeforePost(DataSet: TDataSet);
var
  NowDate: TDateTime;
begin
  inherited;

  CheckRequiredFields(cdsGridData, 'PARTNER_CODE; BORDER_REL_TYPE_CODE; PRODUCT_CODE; PAR_REL_PRODUCT_PERIOD_CODE');
  CheckRequiredFields(cdsGridData, 'BEGIN_DATE; END_DATE; IS_APPROVED_BY_PARTNER');

  CheckFieldGroup(cdsGridData, 'EST_SALE_COVER_LEASE_QTY; EST_SALE_COVER_LEASE_DURATION');
  CheckFieldGroup(cdsGridData, 'EST_ENV_COVER_LEASE_QTY; EST_ENV_COVER_LEASE_DURATION');

  if ( (not cdsGridDataEST_SALE_COVER_ACQUIRE_QTY.IsNull) or
       (not cdsGridDataEST_ENV_COVER_ACQUIRE_QTY.IsNull) ) and
     cdsGridDataINHRT_ACQUIRE_SINGLE_PRICE.IsNull then
    CheckRequiredField(cdsGridDataACQUIRE_SINGLE_PRICE);

  if ( (not cdsGridDataEST_SALE_COVER_LEASE_QTY.IsNull) or
       (not cdsGridDataEST_ENV_COVER_LEASE_QTY.IsNull) ) and
     cdsGridDataINHRT_LEASE_SINGLE_PRICE.IsNull then
    CheckRequiredField(cdsGridDataLEASE_SINGLE_PRICE);

  CheckFieldGroup(cdsGridData, 'ACQUIRE_SINGLE_PRICE; _ACQUIRE_CURRENCY_ABBREV');
  CheckFieldGroup(cdsGridData, 'LEASE_SINGLE_PRICE; _LEASE_CURRENCY_ABBREV; _LEASE_DATE_UNIT_NAME');

  if not FSettingPrevPeriodValueGainedParts then
    CheckDatePeriodYearParts(
      cdsGridDataBEGIN_DATE.AsDateTime,
      cdsGridDataEND_DATE.AsDateTime,
      LoginContext.DatePeriodsYearPartCode);

  if ( (DataSet.State = dsInsert) or
       (cdsGridDataBEGIN_DATE.AsDateTime < FBeforeEditBeginDate) ) and
     (cdsGridDataBEGIN_DATE.AsDateTime <= ContextDate) and
     (not LoginContext.HasUserActivity(uaPastOrCurrentParRelProductPeriodEdit)) then
    begin
      cdsGridDataBEGIN_DATE.FocusControl;
      raise Exception.CreateFmt(SNoUserActivityForPastOrCurrentParRelProductPeriod, [uaPastOrCurrentParRelProductPeriodEdit]);
    end;

  if cdsGridDataEST_SALE_COVER_ACQUIRE_QTY.IsNull and
     cdsGridDataEST_SALE_COVER_LEASE_QTY.IsNull and
     cdsGridDataEST_SALE_COVER_CONSIGN_QTY.IsNull and
     ( (BorderRelType <> brtVendor) or
       (cdsGridDataEST_ENV_COVER_ACQUIRE_QTY.IsNull and
        cdsGridDataEST_ENV_COVER_LEASE_QTY.IsNull) ) then
    raise Exception.Create(SEstimationRequired);

  NowDate:= ContextDate;

  cdsGridDataIS_PAST.AsBoolean:=
    (cdsGridDataEND_DATE.AsDateTime < NowDate);
  cdsGridDataIS_FUTURE.AsBoolean:=
    (cdsGridDataBEGIN_DATE.AsDateTime > NowDate);
  cdsGridDataIS_PRESENT.AsBoolean:=
    not cdsGridDataIS_PAST.AsBoolean and
    not cdsGridDataIS_FUTURE.AsBoolean;
end;

procedure TfmParRelProduct.cdsGridDataBEGIN_DATEChange(Sender: TField);
begin
  inherited;
  SetParams(cdsPRPPInheritedData.Params, cdsGridData);
  cdsPRPPInheritedData.Open;
  try
    cdsGridData.AssignFields(cdsPRPPInheritedData);
  finally
    cdsPRPPInheritedData.Close;
  end;
end;

procedure TfmParRelProduct.cdsGridDataBEGIN_DATEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= dmMain.GetDateIntervalAsShortString(
           cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime);
end;

procedure TfmParRelProduct.cdsGridDataCalcFields(DataSet: TDataSet);

  function ValueDiff(Value, OtherValue: Variant): Variant;
  begin
    if VarIsNull(Value) or
       VarIsNull(OtherValue) or
       ( (Value = 0) and (OtherValue = 0) ) then
      Result:= Null
    else
      begin
        if (OtherValue = 0) then
          Result:= 1
        else
          Result:= Value/OtherValue - 1
      end;
  end;  { ValueDiff }

  function ValuePart(Value, PartOfValue: Variant): Variant;
  begin
    if VarIsNull(Value) or VarIsNull(PartOfValue) then
      Result:= Null
    else
      begin
        if (PartOfValue = 0) then
          Result:= 0
        else
          Result:= Value/PartOfValue;
      end;
  end;  { InvestmentValuePart }

  procedure CalcRealField(AField, AOverrideField: TField);
  var
    FieldName: string;
  begin
    FieldName:=
      RightStr(AField.FieldName, Length(AField.FieldName) - Length('_REAL_'));

    if not AOverrideField.AsBoolean then
      begin
        if StartsText('ACC_', FieldName) then
          begin
            Insert('INHRT_', FieldName, Length('ACC_') + 1);
            FieldName:= '_' + FieldName;
          end
        else
          begin
            if (FieldName <> '') and (FieldName[1] = '_') then
              FieldName:= '_INHRT' + FieldName
            else
              FieldName:= 'INHRT_' + FieldName;
          end;
      end;

    AField.Assign(cdsGridData.FieldByName(FieldName));
  end;  { CalcRealField }

var
  FullInvestmentValue: Variant;
  InvestmentLevel: Integer;
  InvestmentValueField: TField;
  FullInvestmentValueField: TField;
  TotalFullInvestmentValueField: TField;
  CommonInvestmentValueDffField: TField;
  CommonInvestmentValueField: TField;
  SinglePriceInvestmentValuePartField: TField;
  AggrInvestmentValueField: TField;
  AggrInvestmentValue: Variant;
  AccInvestmentValueField: TField;
  AccFullInvestmentValueField: TField;
  AccAggrInvestmentValueField: TField;
  TotalBaseValueGainedField: TField;
  TotalValueGainedPartField: TField;
  PrevTotalValueGainedPartField: TField;
  PrevTotalValueGainedPartDiffField: TField;
  CommonAggrInvestmentValue6: Variant;
  CommonFullInvestmentValue6: Variant;
begin
  inherited;

  cdsGridData_HAS_CUSTOMHOUSE.AsBoolean:= not cdsGridDataCUSTOMHOUSE_CODE.IsNull;
  cdsGridData_INHRT_HAS_CUSTOMHOUSE.AsBoolean:= not cdsGridDataINHRT_CUSTOMHOUSE_CODE.IsNull;

  cdsGridData_ACC_INHRT_ACQUIRE_SINGLE_PRICE.AsVariant:=
    VarDivide(cdsGridDataINHRT_ACQUIRE_SINGLE_PRICE.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant);
  cdsGridData_ACC_INHRT_LEASE_SINGLE_PRICE.AsVariant:=
    VarDivide(cdsGridDataINHRT_LEASE_SINGLE_PRICE.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant);
  cdsGridData_ACC_BALANCE_QUANTITY.AsVariant:=
    VarMult(cdsGridDataBALANCE_QUANTITY.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant);

  CalcRealField(cdsGridData_REAL_ACQUIRE_SINGLE_PRICE, cdsGridDataOVERRIDE_ACQUIRE_PRICE);
  CalcRealField(cdsGridData_REAL__ACQUIRE_CURRENCY_ABBREV, cdsGridDataOVERRIDE_ACQUIRE_PRICE);
  CalcRealField(cdsGridData_REAL_LEASE_SINGLE_PRICE, cdsGridDataOVERRIDE_LEASE_PRICE);
  CalcRealField(cdsGridData_REAL__LEASE_CURRENCY_ABBREV, cdsGridDataOVERRIDE_LEASE_PRICE);
  CalcRealField(cdsGridData_REAL__LEASE_DATE_UNIT_NAME, cdsGridDataOVERRIDE_LEASE_PRICE);
  CalcRealField(cdsGridData_REAL_STORE_IDENTIFIER, cdsGridDataOVERRIDE_STORE);
  CalcRealField(cdsGridData_REAL__PARTNER_OFFICE_NAME, cdsGridDataOVERRIDE_PARTNER_OFFICE);
  CalcRealField(cdsGridData_REAL_TRANSPORT_DURATION_DAYS, cdsGridDataOVERRIDE_TRANSPORT_DURATION);
  CalcRealField(cdsGridData_REAL_MEDIATOR_COMP_SHORT_NAME, cdsGridDataOVERRIDE_MEDIATOR_COMPANY);
  CalcRealField(cdsGridData_REAL__SHIPMENT_TYPE_ABBREV, cdsGridDataOVERRIDE_SHIPMENT_TYPE);
  CalcRealField(cdsGridData_REAL_IS_PARTNER_TRANSPORT, cdsGridDataOVERRIDE_IS_PARTNER_TRANSPORT);
  CalcRealField(cdsGridData_REAL__HAS_CUSTOMHOUSE, cdsGridDataOVERRIDE_CUSTOMHOUSE);
  CalcRealField(cdsGridData_REAL_RESOLVE_DURATION_DAYS, cdsGridDataOVERRIDE_RESOLVE_DURATION_DAYS);
  CalcRealField(cdsGridData_REAL_EST_SPEC_FIN_MODEL_NAME, cdsGridDataOVERRIDE_EST_SPEC_FIN_MODEL);

  CalcRealField(cdsGridData_REAL_ACC_ACQUIRE_SINGLE_PRICE, cdsGridDataOVERRIDE_ACQUIRE_PRICE);
  CalcRealField(cdsGridData_REAL_ACC_LEASE_SINGLE_PRICE, cdsGridDataOVERRIDE_LEASE_PRICE);

  cdsGridData_EST_SALE_COVER_LEASE_TOTAL_QTY.AsVariant:=
    VarMult(cdsGridDataEST_SALE_COVER_LEASE_QTY.AsVariant, cdsGridDataEST_SALE_COVER_LEASE_DURATION.AsVariant);
  cdsGridData_EST_ENV_COVER_LEASE_TOTAL_QTY.AsVariant:=
    VarMult(cdsGridDataEST_ENV_COVER_LEASE_QTY.AsVariant, cdsGridDataEST_ENV_COVER_LEASE_DURATION.AsVariant);

  cdsGridData_ACC_EST_SALE_COVER_LEASE_TOTAL_QTY.AsVariant:=
    VarMult(cdsGridData_EST_SALE_COVER_LEASE_TOTAL_QTY.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant);
  cdsGridData_ACC_EST_ENV_COVER_LEASE_TOTAL_QTY.AsVariant:=
    VarMult(cdsGridData_EST_ENV_COVER_LEASE_TOTAL_QTY.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant);

  cdsGridData_REAL_EST_SALE_COVER_ACQUIRE_TOTAL_PRICE.AsVariant:=
    VarMult(cdsGridDataEST_SALE_COVER_ACQUIRE_QTY.AsVariant, cdsGridData_REAL_ACQUIRE_SINGLE_PRICE.AsVariant);
  cdsGridData_REAL_EST_SALE_COVER_LEASE_TOTAL_PRICE.AsVariant:=
    VarMult(cdsGridData_EST_SALE_COVER_LEASE_TOTAL_QTY.AsVariant, cdsGridData_REAL_LEASE_SINGLE_PRICE.AsVariant);
  cdsGridData_REAL_EST_ENV_COVER_ACQUIRE_TOTAL_PRICE.AsVariant:=
    VarMult(cdsGridDataEST_ENV_COVER_ACQUIRE_QTY.AsVariant, cdsGridData_REAL_ACQUIRE_SINGLE_PRICE.AsVariant);
  cdsGridData_REAL_EST_ENV_COVER_LEASE_TOTAL_PRICE.AsVariant:=
    VarMult(cdsGridData_EST_ENV_COVER_LEASE_TOTAL_QTY.AsVariant, cdsGridData_REAL_LEASE_SINGLE_PRICE.AsVariant);

  cdsGridData_REAL_ACQUIRE_BASE_SINGLE_PRICE.AsVariant:=
    VarMult(cdsGridData_REAL_ACQUIRE_SINGLE_PRICE.AsVariant, cdsGridDataACQUIRE_CURRENCY_FIXING.AsVariant);
  cdsGridData_REAL_LEASE_BASE_SINGLE_PRICE.AsVariant:=
    VarMult(cdsGridData_REAL_LEASE_SINGLE_PRICE.AsVariant, cdsGridDataLEASE_CURRENCY_FIXING.AsVariant);
  cdsGridData_REAL_ACC_ACQUIRE_BASE_SINGLE_PRICE.AsVariant:=
    VarMult(cdsGridData_REAL_ACC_ACQUIRE_SINGLE_PRICE.AsVariant, cdsGridDataACQUIRE_CURRENCY_FIXING.AsVariant);
  cdsGridData_REAL_ACC_LEASE_BASE_SINGLE_PRICE.AsVariant:=
    VarMult(cdsGridData_REAL_ACC_LEASE_SINGLE_PRICE.AsVariant, cdsGridDataLEASE_CURRENCY_FIXING.AsVariant);

  cdsGridData_REAL_EST_SALE_COVER_ACQUIRE_BASE_TOTAL_PRICE.AsVariant:=
    VarMult(cdsGridData_REAL_EST_SALE_COVER_ACQUIRE_TOTAL_PRICE.AsVariant, cdsGridDataACQUIRE_CURRENCY_FIXING.AsVariant);
  cdsGridData_REAL_EST_SALE_COVER_LEASE_BASE_TOTAL_PRICE.AsVariant:=
    VarMult(cdsGridData_REAL_EST_SALE_COVER_LEASE_TOTAL_PRICE.AsVariant, cdsGridDataACQUIRE_CURRENCY_FIXING.AsVariant);
  cdsGridData_REAL_EST_ENV_COVER_ACQUIRE_BASE_TOTAL_PRICE.AsVariant:=
    VarMult(cdsGridData_REAL_EST_ENV_COVER_ACQUIRE_TOTAL_PRICE.AsVariant, cdsGridDataACQUIRE_CURRENCY_FIXING.AsVariant);
  cdsGridData_REAL_EST_ENV_COVER_LEASE_BASE_TOTAL_PRICE.AsVariant:=
    VarMult(cdsGridData_REAL_EST_ENV_COVER_LEASE_TOTAL_PRICE.AsVariant, cdsGridDataACQUIRE_CURRENCY_FIXING.AsVariant);

  FullInvestmentValue:= Null;
  AggrInvestmentValue:= Null;
  CommonFullInvestmentValue6:= Null;
  CommonAggrInvestmentValue6:= Null;
  for InvestmentLevel:= 1 to MaxInvestmentLevel do
    begin
      InvestmentValueField:= DataSet.FieldByName(Format('INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));
      FullInvestmentValueField:= DataSet.FieldByName(Format('_FULL_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));
      TotalFullInvestmentValueField:= DataSet.FieldByName(Format('_TOTAL_FULL_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));
      CommonInvestmentValueField:= DataSet.FieldByName(Format('CMMN_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));
      CommonInvestmentValueDffField:= DataSet.FieldByName(Format('_CMMN_INVESTMENT_LEVEL_%d_DIFF', [InvestmentLevel]));
      SinglePriceInvestmentValuePartField:= DataSet.FieldByName(Format('_SINGLE_PRICE_INVESTMENT_LEVEL_%d_PART', [InvestmentLevel]));
      AccInvestmentValueField:= DataSet.FieldByName(Format('_ACC_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));
      AccFullInvestmentValueField:= DataSet.FieldByName(Format('_ACC_FULL_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));
      TotalBaseValueGainedField:= DataSet.FieldByName(Format('_TOTAL_BASE_VALUE_GAINED_LEVEL_%d', [InvestmentLevel]));
      TotalValueGainedPartField:= DataSet.FieldByName(Format('_TOTAL_VALUE_GAINED_LEVEL_%d_PART', [InvestmentLevel]));
      PrevTotalValueGainedPartField:= DataSet.FieldByName(Format('PREV_TOTAL_VG_LEVEL_%d_PART', [InvestmentLevel]));
      PrevTotalValueGainedPartDiffField:= DataSet.FieldByName(Format('_PREV_TOTAL_VG_LEVEL_%d_PART_DIFF', [InvestmentLevel]));

      if (not VarIsNull(FullInvestmentValue)) or (not InvestmentValueField.IsNull) then
        FullInvestmentValue:= VarToFloat(FullInvestmentValue) + InvestmentValueField.AsFloat;

      FullInvestmentValueField.AsVariant:= FullInvestmentValue;
      TotalFullInvestmentValueField.AsVariant:=
        VarMult(cdsGridDataEST_SALE_COVER_ACQUIRE_QTY.AsVariant, FullInvestmentValue);
      TotalBaseValueGainedField.AsVariant:=
        VarSub(cdsGridData_REAL_EST_SALE_COVER_ACQUIRE_BASE_TOTAL_PRICE.AsVariant, TotalFullInvestmentValueField.AsVariant);
      TotalValueGainedPartField.AsVariant:=
        ValuePart(TotalBaseValueGainedField.AsVariant, cdsGridData_REAL_EST_SALE_COVER_ACQUIRE_BASE_TOTAL_PRICE.AsVariant);
      PrevTotalValueGainedPartDiffField.AsVariant:=
        VarSub(TotalValueGainedPartField.AsVariant, PrevTotalValueGainedPartField.AsVariant);

      CommonInvestmentValueDffField.AsVariant:=
        ValueDiff(InvestmentValueField.AsVariant, CommonInvestmentValueField.AsVariant);
      SinglePriceInvestmentValuePartField.AsVariant:=
        ValuePart(InvestmentValueField.AsVariant, cdsGridData_REAL_ACQUIRE_BASE_SINGLE_PRICE.AsVariant);

      AccInvestmentValueField.AsVariant:=
        VarDivide(InvestmentValueField.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant);
      AccFullInvestmentValueField.AsVariant:=
        VarDivide(FullInvestmentValueField.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant);

      if not CommonInvestmentValueField.IsNull then
        CommonFullInvestmentValue6:= VarToFloat(CommonFullInvestmentValue6) + CommonInvestmentValueField.AsFloat;

      if (InvestmentLevel > 1) then
        begin
          AggrInvestmentValueField:= DataSet.FieldByName(Format('_AGGR_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));
          AccAggrInvestmentValueField:= DataSet.FieldByName(Format('_ACC_AGGR_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));

          if (not VarIsNull(AggrInvestmentValue)) or (not InvestmentValueField.IsNull) then
            AggrInvestmentValue:= VarToFloat(AggrInvestmentValue) + InvestmentValueField.AsFloat;

          AggrInvestmentValueField.AsVariant:= AggrInvestmentValue;

          AccAggrInvestmentValueField.AsVariant:=
            VarDivide(AggrInvestmentValueField.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant);

          if not CommonInvestmentValueField.IsNull then
            CommonAggrInvestmentValue6:= VarToFloat(CommonAggrInvestmentValue6) + CommonInvestmentValueField.AsFloat;
        end;
    end;

  cdsGridData_VALUE_GAINED_LEVEL_6.AsVariant:=
    VarMult(
      cdsGridData_REAL_ACQUIRE_SINGLE_PRICE.AsVariant,
      cdsGridData_TOTAL_VALUE_GAINED_LEVEL_6_PART.AsVariant
    );

  cdsGridData_RIGHT_ARROW.AsString:= '®';
  cdsGridData_BASE_CURRENCY_ABBREV.AsString:= LoginContext.BaseCurrencyAbbrev;
  cdsGridData_IS_APPROVED_BY_PARTNER_SHOW.Assign(cdsGridDataIS_APPROVED_BY_PARTNER);

  cdsGridData_MONTHS_IN_PERIOD.AsVariant:=
    FloatToVar(MonthsInPeriod(cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime));

  cdsGridData_AVG_MONTH_EST_SALE_COVER_ACQUIRE_QTY.AsVariant:=
    VarDivide(cdsGridDataEST_SALE_COVER_ACQUIRE_QTY.AsVariant, cdsGridData_MONTHS_IN_PERIOD.AsVariant);
  cdsGridData_ACC_AVG_MONTH_EST_SALE_COVER_ACQUIRE_QTY.AsVariant:=
    VarMult(cdsGridData_AVG_MONTH_EST_SALE_COVER_ACQUIRE_QTY.AsVariant,  cdsDataACCOUNT_MEASURE_COEF.AsVariant);
  cdsGridData_AVG_MONTH_EST_ENV_COVER_ACQUIRE_QTY.AsVariant:=
    VarDivide(cdsGridDataEST_ENV_COVER_ACQUIRE_QTY.AsVariant, cdsGridData_MONTHS_IN_PERIOD.AsVariant);
  cdsGridData_ACC_AVG_MONTH_EST_ENV_COVER_ACQUIRE_QTY.AsVariant:=
    VarMult(cdsGridData_AVG_MONTH_EST_ENV_COVER_ACQUIRE_QTY.AsVariant,  cdsDataACCOUNT_MEASURE_COEF.AsVariant);
  cdsGridData_AVG_MONTH_EST_SALE_COVER_CONSIGN_QTY.AsVariant:=
    VarDivide(cdsGridDataEST_SALE_COVER_CONSIGN_QTY.AsVariant, cdsGridData_MONTHS_IN_PERIOD.AsVariant);
  cdsGridData_ACC_AVG_MONTH_EST_SALE_COVER_CONSIGN_QTY.AsVariant:=
    VarMult(cdsGridData_AVG_MONTH_EST_SALE_COVER_CONSIGN_QTY.AsVariant,  cdsDataACCOUNT_MEASURE_COEF.AsVariant);

  cdsGridData_CMMN_AGGR_INVESTMENT_LEVEL_6_DIFF.AsVariant:=
    ValueDiff(cdsGridData_AGGR_INVESTMENT_LEVEL_6_VALUE.AsVariant, CommonAggrInvestmentValue6);
  cdsGridData_SINGLE_PRICE_AGGR_INVESTMENT_LEVEL_6_PART.AsVariant:=
    ValuePart(cdsGridData_AGGR_INVESTMENT_LEVEL_6_VALUE.AsVariant, cdsGridData_REAL_ACQUIRE_BASE_SINGLE_PRICE.AsVariant);

  cdsGridData_CMMN_FULL_INVESTMENT_LEVEL_6_DIFF.AsVariant:=
    ValueDiff(cdsGridData_FULL_INVESTMENT_LEVEL_6_VALUE.AsVariant, CommonFullInvestmentValue6);
  cdsGridData_SINGLE_PRICE_FULL_INVESTMENT_LEVEL_6_PART.AsVariant:=
    ValuePart(cdsGridData_FULL_INVESTMENT_LEVEL_6_VALUE.AsVariant, cdsGridData_REAL_ACQUIRE_BASE_SINGLE_PRICE.AsVariant);
end;

procedure TfmParRelProduct.cdsGridDataEND_DATEChange(Sender: TField);
begin
  inherited;
  UpdateCurrencyFixing(cdsGridDataACQUIRE_CURRENCY_CODE,
    cdsGridDataACQUIRE_CURRENCY_FIXING);
  UpdateCurrencyFixing(cdsGridDataLEASE_CURRENCY_CODE,
    cdsGridDataLEASE_CURRENCY_FIXING);
end;

procedure TfmParRelProduct.cdsGridDataFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    (cdsGridDataIS_PAST.AsBoolean and actPastPeriods.Checked) or
    (cdsGridDataIS_PRESENT.AsBoolean and actPresentPeriods.Checked) or
    (cdsGridDataIS_FUTURE.AsBoolean and actFuturePeriods.Checked);
end;

procedure TfmParRelProduct.cdsGridDataINHRT_MEDIATOR_COMPANY_CODEChange(
  Sender: TField);
var
  ShortName: string;
  Dummy: string;
  DummyBool: Boolean;
  DummyInt: Integer;
begin
  inherited;

  if Sender.IsNull then
    cdsGridDataINHRT_MEDIATOR_COMP_SHORT_NAME.Clear
  else
    begin
      dmMain.SvrCompanies.GetCompanyInfo(Sender.AsInteger,
        Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, ShortName, Dummy, Dummy, DummyBool, Dummy, Dummy, Dummy, Dummy, DummyInt, DummyBool, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy);
      cdsGridDataINHRT_MEDIATOR_COMP_SHORT_NAME.AsString:= ShortName;
    end;
end;

procedure TfmParRelProduct.cdsGridDataINHRT_STORE_CODEChange(
  Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(Sender, nil, cdsGridDataINHRT_STORE_IDENTIFIER);
end;

procedure TfmParRelProduct.cdsGridDataLEASE_CURRENCY_CODEChange(
  Sender: TField);
begin
  inherited;
  UpdateCurrencyFixing(cdsGridDataLEASE_CURRENCY_CODE,
    cdsGridDataLEASE_CURRENCY_FIXING);
end;

procedure TfmParRelProduct.cdsGridDataMEDIATOR_COMPANY_CODEChange(
  Sender: TField);
var
  ShortName: string;
  Dummy: string;
  DummyBool: Boolean;
  DummyInt: Integer;
begin
  inherited;

  if Sender.IsNull then
    cdsGridDataMEDIATOR_COMP_SHORT_NAME.Clear
  else
    begin
      dmMain.SvrCompanies.GetCompanyInfo(Sender.AsInteger,
        Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, ShortName, Dummy, Dummy, DummyBool, Dummy, Dummy, Dummy, Dummy, DummyInt, DummyBool, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy);
      cdsGridDataMEDIATOR_COMP_SHORT_NAME.AsString:= ShortName;
    end;
end;

procedure TfmParRelProduct.cdsGridDataNewRecord(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;

  if VarIsArray(FCreateLikeFieldValues) then
    begin
      for i:= 0 to cdsGridData.FieldCount - 1 do
        if (cdsGridData.Fields[i].FieldKind = fkData) then
          cdsGridData.Fields[i].Value:= FCreateLikeFieldValues[i];

      if not cdsGridDataDOC_CODE.IsNull then
        begin
          cdsGridDataDOC_CODE.AsInteger:=
            dmDocClient.CreateDocLike(cdsGridDataDOC_BRANCH_CODE.AsInteger, cdsGridDataDOC_CODE.AsInteger, True);
          cdsGridDataDOC_BRANCH_CODE.AsInteger:= LoginContext.LocalBranchCode;
        end;
    end;

  cdsGridDataPAR_REL_PRODUCT_PERIOD_CODE.AsInteger:= FMaxParRelProductPeriodCode + 1;

  if not VarIsArray(FCreateLikeFieldValues) then
    begin
      cdsGridDataOVERRIDE_ACQUIRE_PRICE.AsBoolean:= False;
      cdsGridDataOVERRIDE_LEASE_PRICE.AsBoolean:= False;
      cdsGridDataOVERRIDE_STORE.AsBoolean:= False;
      cdsGridDataOVERRIDE_PARTNER_OFFICE.AsBoolean:= False;
      cdsGridDataOVERRIDE_TRANSPORT_DURATION.AsBoolean:= False;
      cdsGridDataOVERRIDE_MEDIATOR_COMPANY.AsBoolean:= False;
      cdsGridDataOVERRIDE_SHIPMENT_TYPE.AsBoolean:= False;
      cdsGridDataOVERRIDE_IS_PARTNER_TRANSPORT.AsBoolean:= False;
      cdsGridDataOVERRIDE_CUSTOMHOUSE.AsBoolean:= False;
    end;
end;

procedure TfmParRelProduct.cdsGridDataSTORE_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(Sender, nil, cdsGridDataSTORE_IDENTIFIER);
end;

procedure TfmParRelProduct.cdsMeasuresBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsMeasures.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
end;

procedure TfmParRelProduct.cdsPartnerOfficesBeforeOpen(DataSet: TDataSet);
var
  PartnerCode: Integer;
begin
  inherited;

  if (EditMode = emInsert) then
    PartnerCode:= pdsGridDataParamsPARTNER_CODE.AsInteger
  else
    PartnerCode:= OuterDataSet.FieldByName('PARTNER_CODE').AsInteger;

  cdsPartnerOffices.Params.ParamByName('COMPANY_CODE').AsInteger:= PartnerCode;
end;

procedure TfmParRelProduct.cdsPrecisionLevelsCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsPrecisionLevels_PRECISION_LEVEL_SHOW_NAME.AsString:=
    cdsPrecisionLevelsPRECISION_LEVEL_NO.AsString + ' - ' +
    cdsPrecisionLevelsPRECISION_LEVEL_NAME.AsString;
end;

procedure TfmParRelProduct.cdsShipmentTypesCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsShipmentTypes_SHOW_NAME.AsString:=
    StrPadRight(cdsShipmentTypesSHIPMENT_TYPE_ABBREV.AsString, 20) +
    cdsShipmentTypesSHIPMENT_TYPE_NAME.AsString;
end;

procedure TfmParRelProduct.OpenDataSets;
begin
  cdsCurrencies.Open;
  cdsDateUnits.Open;
  cdsPartnerOffices.Open;
  cdsShipmentTypes.Open;
  cdsCustomhouses.Open;
  cdsPrecisionLevels.Open;
  cdsMeasures.Open;
  inherited;
end;

procedure TfmParRelProduct.CloseDataSets;
begin
  inherited;
  cdsMeasures.Close;
  cdsPrecisionLevels.Close;
  cdsCustomhouses.Close;
  cdsShipmentTypes.Close;
  cdsPartnerOffices.Close;
  cdsDateUnits.Close;
  cdsCurrencies.Close;
end;

procedure TfmParRelProduct.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;

  FInPDSAfterOpen:= True;
  try
    if (EditMode = emInsert) then
      begin
        pdsGridDataParams.Edit;
        try
          // ako se prilaga standartniq mehanizym za Now Kato, tuk ewentualno shte se precaka
          if (DefaultsOrigin = doDataset) then
            pdsGridDataParams.AssignFields(OuterDataSet)
          else
            pdsGridDataParamsPRODUCT_CLASS_CODE.AsVariant:=
              OuterDataSet.FieldByName('PRODUCT_CLASS_CODE').AsVariant;

          pdsGridDataParamsBORDER_REL_TYPE_CODE.AsVariant:=
            OuterDataSet.FieldByName('BORDER_REL_TYPE_CODE').AsVariant;

          pdsGridDataParams.Post;
        except
          pdsGridDataParams.Cancel;
          raise;
        end;
      end;
  finally
    FInPDSAfterOpen:= False;
  end;
end;

procedure TfmParRelProduct.pdsGridDataParamsAfterPost(DataSet: TDataSet);
begin
  inherited;

  if (not FInPDSAfterOpen) and
     (not pdsGridDataParamsPARTNER_CODE.IsNull) and
     (not pdsGridDataParamsBORDER_REL_TYPE_CODE.IsNull) and
     (not pdsGridDataParamsPRODUCT_CODE.IsNull) and
     dmMain.SvrParRelProducts.ParRelProductExists(
       pdsGridDataParamsPARTNER_CODE.AsInteger,
       pdsGridDataParamsBORDER_REL_TYPE_CODE.AsInteger,
       pdsGridDataParamsPRODUCT_CODE.AsInteger) then
    SetParams(cdsData.Params, pdsGridDataParams);
end;

procedure TfmParRelProduct.PercentFieldsGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProduct.PercentFieldsZeroGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    PercentFieldGetText(Sender, Text, DisplayText, False);
end;

procedure TfmParRelProduct.RefilterPeriods;
var
  ParRelProductPeriodCode: Integer;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        ParRelProductPeriodCode:= cdsGridDataPAR_REL_PRODUCT_PERIOD_CODE.AsInteger;

        Filtered:= False;
        Filtered:= True;

        Locate('PAR_REL_PRODUCT_PERIOD_CODE', ParRelProductPeriodCode, []);

        SetParRelProductTimeLineLevel;
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmParRelProduct.SetAllTimeLineLevels;
var
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    tlMain.Items.BeginUpdate;
    try
      SetParams(cdsParRel.Params, cdsData);
      cdsParRel.Open;
      try
        cdsParRelPeriods.First;
        while not cdsParRelPeriods.Eof do
          begin
            SetTimeLineLevel(cdsParRelPeriods, 3, shpParRelPeriodsTimeLine.Brush.Color);
            cdsParRelPeriods.Next;
          end;  { while }
      finally
        cdsParRel.Close;
      end;

      SetParams(cdsProductPeriodsHeader.Params, cdsData);
      cdsProductPeriodsHeader.Open;
      try
        cdsProductPeriods.First;
        while not cdsProductPeriods.Eof do
          begin
            SetTimeLineLevel(cdsProductPeriods, 5, shpProductPeriodsTimeLine.Brush.Color);
            cdsProductPeriods.Next;
          end;  { while }
      finally
        cdsProductPeriodsHeader.Close;
      end;

      SetParRelProductTimeLineLevel;
    finally
      tlMain.Items.EndUpdate;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmParRelProduct.SetColumns;
var
  InvestmentLevel: Integer;
begin
  grdData.Columns.BeginUpdate;
  try
    // _BASE_CURRENCY_ABBREV
    grdData.Columns[4].Visible:= (not actToggleConsign.Checked) and actToggleBaseCurrency.Checked;
    // _REAL__ACQUIRE_CURRENCY_ABBREV
    grdData.Columns[5].Visible:= actToggleAcquire.Checked and (not actToggleBaseCurrency.Checked);
    // _REAL__LEASE_CURRENCY_ABBREV
    grdData.Columns[6].Visible:= actToggleLease.Checked and (not actToggleBaseCurrency.Checked);
    // _REAL_ACQUIRE_SINGLE_PRICE
    grdData.Columns[7].Visible:= actToggleAcquire.Checked and (not actToggleBaseCurrency.Checked) and actWorkMeasure.Checked;
    // _REAL_ACQUIRE_BASE_SINGLE_PRICE
    grdData.Columns[8].Visible:= actToggleAcquire.Checked and actToggleBaseCurrency.Checked and actWorkMeasure.Checked;
    // _REAL_LEASE_SINGLE_PRICE
    grdData.Columns[9].Visible:= actToggleLease.Checked and (not actToggleBaseCurrency.Checked) and actWorkMeasure.Checked;
    // _REAL_LEASE_BASE_SINGLE_PRICE
    grdData.Columns[10].Visible:= actToggleLease.Checked and actToggleBaseCurrency.Checked and actWorkMeasure.Checked;
    // _REAL_ACC_ACQUIRE_SINGLE_PRICE
    grdData.Columns[11].Visible:= actToggleAcquire.Checked and (not actToggleBaseCurrency.Checked) and actAccountMeasure.Checked;
    // _REAL_ACC_ACQUIRE_BASE_SINGLE_PRICE
    grdData.Columns[12].Visible:= actToggleAcquire.Checked and actToggleBaseCurrency.Checked and actAccountMeasure.Checked;
    // _REAL_ACC_LEASE_SINGLE_PRICE
    grdData.Columns[13].Visible:= actToggleLease.Checked and (not actToggleBaseCurrency.Checked) and actAccountMeasure.Checked;
    // _REAL_ACC_LEASE_BASE_SINGLE_PRICE
    grdData.Columns[14].Visible:= actToggleLease.Checked and actToggleBaseCurrency.Checked and actAccountMeasure.Checked;
    // EST_SALE_COVER_ACQUIRE_QTY
    grdData.Columns[15].Visible:= (BorderRelType = brtClient) and actToggleAcquire.Checked and actWorkMeasure.Checked;
    // ACC_EST_SALE_COVER_ACQUIRE_QTY
    grdData.Columns[16].Visible:= (BorderRelType = brtClient) and actToggleAcquire.Checked and actAccountMeasure.Checked;
    // _REAL_EST_SALE_COVER_ACQUIRE_TOTAL_PRICE
    grdData.Columns[17].Visible:= (BorderRelType = brtClient) and actToggleAcquire.Checked and (not actToggleBaseCurrency.Checked);
    // _REAL_EST_SALE_COVER_ACQUIRE_BASE_TOTAL_PRICE
    grdData.Columns[18].Visible:= (BorderRelType = brtClient) and actToggleAcquire.Checked and actToggleBaseCurrency.Checked;
    // _TOTAL_VALUE_GAINED_LEVEL_x_PART
    for InvestmentLevel:= 1 to MaxInvestmentLevel do
      grdData.Columns[18 + InvestmentLevel].Visible:=
        (BorderRelType = brtClient) and actToggleAcquire.Checked and (not actToggleValueGainedDiff.Checked);
    // _PREV_TOTAL_VG_LEVEL_x_PART_DIFF
    for InvestmentLevel:= 1 to MaxInvestmentLevel do
      grdData.Columns[24 + InvestmentLevel].Visible:=
        (BorderRelType = brtClient) and actToggleAcquire.Checked and actToggleValueGainedDiff.Checked;
    // EST_SALE_COVER_LEASE_QTY
    grdData.Columns[31].Visible:= actToggleSale.Checked and actToggleLease.Checked and actWorkMeasure.Checked;
    // ACC_EST_SALE_COVER_LEASE_QTY
    grdData.Columns[32].Visible:= actToggleSale.Checked and actToggleLease.Checked and actAccountMeasure.Checked;
    // _LEASE_DATE_UNIT_NAME
    grdData.Columns[33].Visible:= actToggleSale.Checked and actToggleLease.Checked;
    // _EST_SALE_COVER_LEASE_TOTAL_QTY
    grdData.Columns[34].Visible:= actToggleSale.Checked and actToggleLease.Checked and actWorkMeasure.Checked;
    // _ACC_EST_SALE_COVER_LEASE_TOTAL_QTY
    grdData.Columns[35].Visible:= actToggleSale.Checked and actToggleLease.Checked and actAccountMeasure.Checked;
    // _REAL_EST_SALE_COVER_LEASE_TOTAL_PRICE
    grdData.Columns[36].Visible:= actToggleSale.Checked and actToggleLease.Checked and (not actToggleBaseCurrency.Checked);
    // _REAL_EST_SALE_COVER_LEASE_BASE_TOTAL_PRICE
    grdData.Columns[37].Visible:= actToggleSale.Checked and actToggleLease.Checked and actToggleBaseCurrency.Checked;
    // EST_SALE_COVER_ACQUIRE_QTY
    grdData.Columns[38].Visible:= (BorderRelType = brtVendor) and actToggleAcquire.Checked and actToggleSale.Checked and actWorkMeasure.Checked;
    // ACC_EST_SALE_COVER_ACQUIRE_QTY
    grdData.Columns[39].Visible:= (BorderRelType = brtVendor) and actToggleAcquire.Checked and actToggleSale.Checked and actAccountMeasure.Checked;
    // _REAL_EST_SALE_COVER_ACQUIRE_TOTAL_PRICE
    grdData.Columns[40].Visible:= (BorderRelType = brtVendor) and actToggleAcquire.Checked and actToggleSale.Checked and (not actToggleBaseCurrency.Checked);
    // _REAL_EST_SALE_COVER_ACQUIRE_BASE_TOTAL_PRICE
    grdData.Columns[41].Visible:= (BorderRelType = brtVendor) and actToggleAcquire.Checked and actToggleSale.Checked and actToggleBaseCurrency.Checked;
    // EST_ENV_COVER_ACQUIRE_QTY
    grdData.Columns[42].Visible:= (BorderRelType = brtVendor) and actToggleAcquire.Checked and actToggleEnv.Checked and actWorkMeasure.Checked;
    // ACC_EST_ENV_COVER_ACQUIRE_QTY
    grdData.Columns[43].Visible:= (BorderRelType = brtVendor) and actToggleAcquire.Checked and actToggleEnv.Checked and actAccountMeasure.Checked;
    // _REAL_EST_ENV_COVER_ACQUIRE_TOTAL_PRICE
    grdData.Columns[44].Visible:= (BorderRelType = brtVendor) and actToggleAcquire.Checked and actToggleEnv.Checked and (not actToggleBaseCurrency.Checked);
    // _REAL_EST_ENV_COVER_ACQUIRE_BASE_TOTAL_PRICE
    grdData.Columns[45].Visible:= (BorderRelType = brtVendor) and actToggleAcquire.Checked and actToggleEnv.Checked and actToggleBaseCurrency.Checked;
    // EST_SALE_COVER_CONSIGN_QTY
    grdData.Columns[46].Visible:= actToggleConsign.Checked and actWorkMeasure.Checked;
    // ACC_EST_SALE_COVER_CONSIGN_QTY
    grdData.Columns[47].Visible:= actToggleConsign.Checked and actAccountMeasure.Checked;
    // EST_ENV_COVER_LEASE_QTY
    grdData.Columns[48].Visible:= (BorderRelType = brtVendor) and actToggleLease.Checked and actToggleEnv.Checked and actWorkMeasure.Checked;
    // ACC_EST_ENV_COVER_LEASE_QTY
    grdData.Columns[49].Visible:= (BorderRelType = brtVendor) and actToggleLease.Checked and actToggleEnv.Checked and actAccountMeasure.Checked;
    // _LEASE_DATE_UNIT_NAME
    grdData.Columns[50].Visible:= (BorderRelType = brtVendor) and actToggleLease.Checked and actToggleEnv.Checked;
    // _EST_ENV_COVER_LEASE_TOTAL_QTY
    grdData.Columns[51].Visible:= (BorderRelType = brtVendor) and actToggleLease.Checked and actToggleEnv.Checked and actWorkMeasure.Checked;
    // _ACC_EST_ENV_COVER_LEASE_TOTAL_QTY
    grdData.Columns[52].Visible:= (BorderRelType = brtVendor) and actToggleLease.Checked and actToggleEnv.Checked and actAccountMeasure.Checked;
    // _REAL_EST_ENV_COVER_LEASE_TOTAL_PRICE
    grdData.Columns[53].Visible:= (BorderRelType = brtVendor) and actToggleLease.Checked and actToggleEnv.Checked and (not actToggleBaseCurrency.Checked);
    // _REAL_EST_ENV_COVER_LEASE_BASE_TOTAL_PRICE
    grdData.Columns[54].Visible:= (BorderRelType = brtVendor) and actToggleLease.Checked and actToggleEnv.Checked and actToggleBaseCurrency.Checked;
  finally
    grdData.Columns.EndUpdate;
  end;
end;

procedure TfmParRelProduct.SetCurrentTimeLineItem;
var
  base: Integer;
  idx: Integer;
begin
  if (cdsGridData.RecordCount > 0) then
    begin
      tlMain.Items.BeginUpdate;
      try
        if Assigned(FCurrentTimeLineItem) then
          FCurrentTimeLineItem.Color:= shpParRelProductPeriods.Brush.Color;

        base:= tlMain.Items.Count - cdsGridData.RecordCount - 1;
        idx:= base + cdsGridData.RecNo;

        if InRange(idx, 0, tlMain.Items.Count-1) then
          begin
            FCurrentTimeLineItem:= tlMain.Items[idx];
            FCurrentTimeLineItem.Color:= shpCurrentParRelProductPeriod.Brush.Color;

            if (cdsGridDataBEGIN_DATE.AsDateTime < IncMonth(tlMain.FirstVisibleDate, 1)) or
               (cdsGridDataEND_DATE.AsDateTime > IncMonth(tlMain.FirstVisibleDate, 1 + 3*12)) then
              SetTimeLineCurrentVisibleDate(cdsGridDataBEGIN_DATE.AsDateTime);
          end;  { if }
      finally
        tlMain.Items.EndUpdate;
      end;
    end;  { if }
end;

procedure TfmParRelProduct.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AFocusDate: TDateTime);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FFocusDate:= AFocusDate;
end;

procedure TfmParRelProduct.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frPartner) or (AFrame = frProduct) then
    begin
      AFrame.Readonly:= True;
      Exit;
    end;  { if }

  inherited;
end;

procedure TfmParRelProduct.SetMeasure;
begin
  frProduct.MeasureVisible:= actWorkMeasure.Checked;
  frProduct.AccountMeasureVisible:= actAccountMeasure.Checked;
  SetParRelProductTimeLineLevel;
end;

procedure TfmParRelProduct.UpdateCurrencyFixing(CurrencyField,
  FixingField: TField);
begin
  if cdsGridDataEND_DATE.IsNull or CurrencyField.IsNull then
    FixingField.Clear
  else
    FixingField.AsVariant:=
      FloatToVar(
        dmMain.SvrCommon.GetBaseCurrencyFixing(CurrencyField.AsInteger,
          dmMain.IncDateByWorkdays(Min(cdsGridDataEND_DATE.AsDateTime, ContextDate)+1, -1)));
end;

procedure TfmParRelProduct.WorkOrAccountFieldChange(Sender: TField);
var
  CorrespondingFieldName: string;
begin
  inherited;

  if FSettingWorkOrAccountValue then
    Exit;

  FSettingWorkOrAccountValue:= True;
  try
    CorrespondingFieldName:= Sender.FieldName;

    if StartsText('ACC_', Sender.FieldName) then
      begin
        CorrespondingFieldName:= StringReplace(CorrespondingFieldName, 'ACC_', '', []);

        if EndsText('_QTY', Sender.FieldName) then
          Sender.DataSet.FieldByName(CorrespondingFieldName).AsVariant:=
            VarDivide(Sender.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant)
        else
           Sender.DataSet.FieldByName(CorrespondingFieldName).AsVariant:=
            VarMult(Sender.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant);
     end
    else
      begin
        CorrespondingFieldName:= 'ACC_' + CorrespondingFieldName;

        if EndsText('_QTY', Sender.FieldName) then
          Sender.DataSet.FieldByName(CorrespondingFieldName).AsVariant:=
            VarMult(Sender.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant)
        else
          Sender.DataSet.FieldByName(CorrespondingFieldName).AsVariant:=
            VarDivide(Sender.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant);
      end;
  finally
    FSettingWorkOrAccountValue:= False;
  end;
end;

procedure TfmParRelProduct.ChangeEditMode(var AEditMode: TEditMode);
begin
  if (AEditMode = emInsert) and
     (not cdsData.Params.ParamByName('PARTNER_CODE').IsNull) and
     (not cdsData.Params.ParamByName('BORDER_REL_TYPE_CODE').IsNull) and
     (not cdsData.Params.ParamByName('PRODUCT_CODE').IsNull) then
    AEditMode:= emEdit;
end;

procedure TfmParRelProduct.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(cdsDataHAS_DOC_ITEMS);
end;

procedure TfmParRelProduct.DoApplyUpdates;
var
  b: TBookmark;
  SaveFiltered: Boolean;
begin
  if frStatus.cdsStatusPAR_REL_PRODUCT_STATUS_NAME.IsNull then
    begin
      frStatus.SetFocus;
      raise Exception.Create(SStatusRequired);
    end;

  cdsGridData.DisableControls;
  try
    b:= cdsGridData.Bookmark;
    try
      SaveFiltered:= cdsGridData.Filtered;
      cdsGridData.Filtered:= False;
      try
        if cdsGridData.IsEmpty then
          raise Exception.Create(SPeriodsRequired);
      finally
        cdsGridData.Filtered:= SaveFiltered;
      end;
    finally
      cdsGridData.Bookmark:= b;
    end;
  finally
    cdsGridData.EnableControls;
  end;

  if not VarIsEmpty(frStatus.Delta) then
    begin
      CheckEditMode(cdsData);
      cdsDataSTATUS_CHANGED.AsBoolean:= True;
    end;

  inherited;
end;

procedure TfmParRelProduct.DoBeforeShow;
begin
  if (EditMode = emInsert) then
    FilterFormClass:= TfmNewParRelProductFilter;

  inherited;
end;

procedure TfmParRelProduct.FormCreate(Sender: TObject);
begin
  inherited;

  EditFormClass:= TfmParRelProductPeriod;

  frPartner.FieldNames:= 'PARTNER_CODE';
  frPartner.ShownCompanyClasses:= [ccFirm, ccPerson, ccCumulative, ccCommon];
  frPartner.PartnerStatusVisible:= True;
  frPartner.ParRelButtonVisible:= True;
  frProduct.FieldNames:= 'PRODUCT_CODE; PARTNER_CODE';

  RegisterDateFields(cdsGridData);
end;

procedure TfmParRelProduct.FormShow(Sender: TObject);
begin
  inherited;
  InitializeAbmesDBGrid(grdData, False);
  actForm.Update;
end;

function TfmParRelProduct.GetApplyUpdatesEnabled: Boolean;
begin
  Result:=
    (inherited GetApplyUpdatesEnabled) or
    not VarIsEmpty(frStatus.Delta);
end;

function TfmParRelProduct.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    inherited GetGridRecordReadOnly or
    ( (cdsGridDataBEGIN_DATE.AsDateTime <= ContextDate) and
      (not LoginContext.HasUserActivity(uaPastOrCurrentParRelProductPeriodEdit)) );
end;

function TfmParRelProduct.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmParRelProduct.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  IsInvestedAndSalePriceVisible: Boolean;
begin
  inherited;

  if ContainsStr(Column.FieldName, '_VG_') or ContainsStr(Column.FieldName, '_VALUE_GAINED_') then
    begin
      if (Pos('_LEVEL_1_', Column.FieldName) > 0) then
        IsInvestedAndSalePriceVisible:= IsLevelOneInvestedAndSalePriceVisible
      else
        IsInvestedAndSalePriceVisible:= IsFullInvestedAndSalePriceVisible;

      if EndsText('_PART_DIFF', Column.FieldName) and IsInvestedAndSalePriceVisible then
        case Sign(Column.Field.AsFloat) of
          -1: AFont.Color:= clRed;
           0: AFont.Color:= clWindowText;
           1: AFont.Color:= clWebDarkgreen;
        end;

      if StartsText('_TOTAL_VALUE_GAINED_LEVEL_', Column.FieldName) and
         EndsText('_PART', Column.FieldName) and
         (Column.Field.AsFloat <= 0) and
         IsInvestedAndSalePriceVisible then
        AFont.Color:= clRed;
  end;  { if }

  if (Column.Field = cdsGridData_PRECISION_LEVEL_NO) then
    begin
      if not cdsGridData_PRECISION_LEVEL_COLOR.IsNull then
        AFont.Color:= cdsGridData_PRECISION_LEVEL_COLOR.AsInteger;

      if not cdsGridData_PRECISION_LEVEL_BACKGROUND_COLOR.IsNull then
        Background:= cdsGridData_PRECISION_LEVEL_BACKGROUND_COLOR.AsInteger;
    end;
end;

procedure TfmParRelProduct.Initialize;
var
  MsgParams: TStrings;
  b: TBookmark;
  f: TField;
  i: Integer;
begin
  if Assigned(OuterDataSet) and
     Assigned(OuterDataSet.FindField('PRODUCT_CLASS_CODE')) then
    FProductClass:= IntToProductClass(OuterDataSet.FindField('PRODUCT_CLASS_CODE').AsInteger);

  inherited;

  if (FProductClass = pcNone) then
    begin
      FProductClass:= IntToProductClass(cdsDataPRODUCT_CLASS_CODE.AsInteger);

      cdsMeasures.Close;
      cdsMeasures.Open;
    end;

  if (EditMode = emInsert) then
    FBorderRelType:= IntToBorderRelType(OuterDataSet.FieldByName('BORDER_REL_TYPE_CODE').AsInteger)
  else
    FBorderRelType:= IntToBorderRelType(cdsDataBORDER_REL_TYPE_CODE.AsInteger);

  cdsData.ReadOnly:= False;

  if (EditMode = emInsert) then
    cdsData.AssignFields(pdsGridDataParams)
  else
    begin
      SetPrevPeriodValueGainedPartsAndTotals;
      PostDataSet(cdsData);
      cdsData.MergeChangeLog;
    end;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  frProduct.ProductClass:= FProductClass;

  frPartner.PriorityCompanyKind:= BorderRelTypeToCompanyKind(BorderRelType);
  frProduct.BorderRelType:= BorderRelType;

  MsgParams:=
    CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      BorderRelType,
      pobtSaleCover,
      prpoPartner,
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;

  if (BorderRelType = brtVendor) then
    begin
      grdData.Columns[55].Index:= 58;
      grdData.Columns[57].Index:= 55;
    end;

  if Assigned(OuterDataSet) and
     OuterDataSet.Active and
     Assigned(OuterDataSet.FindField('OBTAINMENT_TYPE_CODE')) then
    case IntToObtainmentType(OuterDataSet.FindField('OBTAINMENT_TYPE_CODE').AsInteger) of
      otAcquire:
        actToggleAcquire.Checked:= True;
      otLease:
        actToggleLease.Checked:= True;
      otConsign:
        actToggleConsign.Checked:= True;
    else
      actToggleAcquire.Checked:= True;
    end;

  if Assigned(OuterDataSet) and
     OuterDataSet.Active and
     Assigned(OuterDataSet.FindField('PROD_ORDER_BASE_TYPE_CODE')) then
    case IntToProdOrderBaseType(OuterDataSet.FindField('PROD_ORDER_BASE_TYPE_CODE').AsInteger) of
      pobtSaleCover:
        actToggleSale.Checked:= True;
      pobtEnvCover:
        actToggleEnv.Checked:= True;
    else
      actToggleSale.Checked:= True;
    end;

  if (FFocusDate > 0) then
    begin
      cdsGridData.TempDisableControls /
        procedure begin
          b:= cdsGridData.Bookmark;
          try
            cdsGridData.TempUnfilter /
              cdsGridData.ForEach /
                procedure begin
                  if InRange(FFocusDate, cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime) then
                    begin
                      b:= cdsGridData.Bookmark;

                      if cdsGridDataIS_PAST.AsBoolean then
                        actPastPeriods.Checked:= True;
                    end;
                end;
          finally
            cdsGridData.Bookmark:= b;
          end;
        end;
    end
  else
    begin
      if (EditMode in [emEdit, emReadOnly]) and
         Assigned(OuterDataSet) and
         Assigned(OuterDataSet.FindField('BEGIN_DATE')) then
        begin
          if not cdsGridData.Locate('BEGIN_DATE', OuterDataSet.FieldByName('BEGIN_DATE').AsVariant, []) then
            cdsGridData.First;
        end
      else
        LocateDateInterval(ContextDate, cdsGridData);
    end;

  SetColumns;
  SetAllTimeLineLevels;
  SetTimeLineCurrentVisibleDate(ContextDate);

  for f in cdsGridData.Fields do
    begin
      if (Pos('VALUE_GAINED', f.FieldName) > 0) or (Pos('_VG_', f.FieldName) > 0) then
        begin
          if (Pos('LEVEL_1', f.FieldName) > 0) then
            RegisterFieldTextVisibility(IsLevelOneInvestedAndSalePriceVisible, f)
          else
            RegisterFieldTextVisibility(IsFullInvestedAndSalePriceVisible, f);
        end
      else
        begin
          if (Pos('LEVEL_1', f.FieldName) > 0) then
            RegisterFieldTextVisibility(IsLevelOneInvestedValueVisible, f)
          else
            for i:= 2 to 6 do
              if (Pos(Format('LEVEL_%d', [i]), f.FieldName) > 0) then
                begin
                  if (Pos('FULL', f.FieldName) > 0) then
                    RegisterFieldTextVisibility(IsFullInvestedValueVisible, f)
                  else
                    RegisterFieldTextVisibility(IsHighLevelInvestedValueVisible, f);
                end;  { if }
        end;
    end;  { for }

  RegisterFieldsTextVisibility(
    BorderRelTypePriceVisible,
    [ cdsGridDataACQUIRE_SINGLE_PRICE,
      cdsGridDataOVERRIDE_ACQUIRE_PRICE,
      cdsGridDataLEASE_SINGLE_PRICE,
      cdsGridDataOVERRIDE_LEASE_PRICE,
      cdsGridDataINHRT_ACQUIRE_SINGLE_PRICE,
      cdsGridDataINHRT_LEASE_SINGLE_PRICE,
      cdsGridDataACC_ACQUIRE_SINGLE_PRICE,
      cdsGridDataACC_LEASE_SINGLE_PRICE,
      cdsGridData_ACC_INHRT_ACQUIRE_SINGLE_PRICE,
      cdsGridData_ACC_INHRT_LEASE_SINGLE_PRICE,
      cdsGridData_ACQUIRE_CURRENCY_ABBREV,
      cdsGridData_LEASE_CURRENCY_ABBREV,
      cdsGridData_INHRT_ACQUIRE_CURRENCY_ABBREV,
      cdsGridData_INHRT_LEASE_CURRENCY_ABBREV,
      cdsGridData_REAL_ACQUIRE_SINGLE_PRICE,
      cdsGridData_REAL__ACQUIRE_CURRENCY_ABBREV,
      cdsGridData_REAL_LEASE_SINGLE_PRICE,
      cdsGridData_REAL__LEASE_CURRENCY_ABBREV,
      cdsGridData_REAL_ACC_ACQUIRE_SINGLE_PRICE,
      cdsGridData_REAL_ACC_ACQUIRE_BASE_SINGLE_PRICE,
      cdsGridData_REAL_ACC_LEASE_SINGLE_PRICE,
      cdsGridData_REAL_ACC_LEASE_BASE_SINGLE_PRICE,
      cdsGridData_REAL_EST_SALE_COVER_ACQUIRE_TOTAL_PRICE,
      cdsGridData_REAL_EST_SALE_COVER_LEASE_TOTAL_PRICE,
      cdsGridData_REAL_EST_ENV_COVER_ACQUIRE_TOTAL_PRICE,
      cdsGridData_REAL_EST_ENV_COVER_LEASE_TOTAL_PRICE,
      cdsGridData_BASE_CURRENCY_ABBREV,
      cdsGridData_REAL_EST_SALE_COVER_ACQUIRE_BASE_TOTAL_PRICE,
      cdsGridData_REAL_EST_SALE_COVER_LEASE_BASE_TOTAL_PRICE,
      cdsGridData_REAL_EST_ENV_COVER_ACQUIRE_BASE_TOTAL_PRICE,
      cdsGridData_REAL_EST_ENV_COVER_LEASE_BASE_TOTAL_PRICE,
      cdsGridData_REAL_ACQUIRE_BASE_SINGLE_PRICE,
      cdsGridData_REAL_LEASE_BASE_SINGLE_PRICE,
      cdsGridData_LEASE_DATE_UNIT_NAME,
      cdsGridData_INHRT_LEASE_DATE_UNIT_NAME,
      cdsGridData_REAL__LEASE_DATE_UNIT_NAME]);
end;

function TfmParRelProduct.IsQuantityField(
  const AField: TAbmesFloatField): Boolean;
begin
  Result:= False;
end;

procedure TfmParRelProduct.navDataBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;

  if (Button = nbDelete) and cdsGridData.Active and (cdsGridData.RecordCount > 0) then
    begin
      if (cdsGridDataBEGIN_DATE.AsDateTime <= ContextDate) and
         (not LoginContext.HasUserActivity(uaPastOrCurrentParRelProductPeriodEdit)) then
        raise Exception.CreateFmt(SNoUserActivityForPastOrCurrentParRelProductPeriod, [uaPastOrCurrentParRelProductPeriodEdit]);
    end;
end;

procedure TfmParRelProduct.SetTimeLineCurrentVisibleDate(ADate: TDateTime);
begin
  tlMain.FirstVisibleDate:= EncodeDate(YearOf(ADate)-2, 12, 1);
end;

procedure TfmParRelProduct.SetTimeLineLevel(ADataSet: TDataSet;
  ALevel: Integer; AColor: TColor; ACaptionField: TField);
var
  i: Integer;
  b: TBookmark;
  item: TJvTimeItem;
  BeginDateField: TField;
  EndDateField: TField;
  SaveAutoCalcFields: Boolean;
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    tlMain.BeginUpdate;
    try
      i:= 0;
      while (i < tlMain.Items.Count) do
        if (tlMain.Items[i].Level = ALevel) then
          begin
            if (FCurrentTimeLineItem = tlMain.Items[i]) then
              FCurrentTimeLineItem:= nil;
            tlMain.Items[i].Free;
          end
        else
          Inc(i);

      BeginDateField:= ADataSet.FieldByName('BEGIN_DATE');
      EndDateField:= ADataSet.FieldByName('END_DATE');

      ADataSet.DisableControls;
      try
        b:= ADataSet.Bookmark;
        try
          SaveAutoCalcFields:= ADataSet.AutoCalcFields;
          ADataSet.AutoCalcFields:= False;
          try
            ADataSet.First;
            while not ADataSet.Eof do
              begin
                item:= tlMain.Items.Add;
                try
                  item.Date:= BeginDateField.AsDateTime;
                  item.WidthAs:= asDays;
                  item.Width:= Trunc(EndDateField.AsDateTime - BeginDateField.AsDateTime + 1);
                  item.Level:= ALevel;
                  item.Color:= AColor;

                  if Assigned(ACaptionField) then
                    begin
                      item.Caption:= ACaptionField.DisplayText;
                      item.Hint:= Format('%s: %s', [ACaptionField.DisplayLabel, ACaptionField.DisplayText]);
                    end;
                except
                  FreeAndNil(item);
                  raise;
                end;

                ADataSet.Next;
              end;  { while }
          finally
            ADataSet.AutoCalcFields:= SaveAutoCalcFields;
          end;
        finally
          ADataSet.Bookmark:= b;
        end;
      finally
        ADataSet.EnableControls;
      end;
    finally
      tlMain.EndUpdate;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmParRelProduct.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmParRelProduct.SetParRelProductTimeLineLevel;
var
  FieldName: string;
begin
  FieldName:= '';

  if actToggleAcquire.Checked then
    FieldName:= '_AVG_MONTH_EST_SALE_COVER_ACQUIRE_QTY';

  if actToggleLease.Checked then
    FieldName:= '';

  if actToggleConsign.Checked then
    FieldName:= '_AVG_MONTH_EST_SALE_COVER_CONSIGN_QTY';

  if actAccountMeasure.Checked then
    FieldName:= '_ACC' + FieldName;

  if actToggleEnv.Checked then
    FieldName:= StringReplace(FieldName, '_SALE_', '_ENV_', []);

  tlMain.Items.BeginUpdate;
  try
    SetTimeLineLevel(cdsGridData, 1, shpParRelProductPeriods.Brush.Color,
      cdsGridData.FindField(FieldName));
    SetCurrentTimeLineItem;
  finally
    tlMain.Items.EndUpdate;
  end;
end;

procedure TfmParRelProduct.SetPrevPeriodValueGainedPartsAndTotals;
const
  SMinStr = '';
  SMaxStr = 'ZZZZZZZZZZ';
var
  PrevValueGainedParts: array[1..MaxInvestmentLevel] of Variant;
  ValueGainedPartFields: array[1..MaxInvestmentLevel] of TField;
  PrevValueGainedPartFields: array[1..MaxInvestmentLevel] of TField;
  InvestmentLevel: Integer;
  SaveRecNo: Integer;
  Different: Boolean;
  TotalOfFields: array of TField;
  Totals: array of Real;
  fld: TField;
  i, c: Integer;
  col: TColumnEh;
  Found: Boolean;
  MinAcquireCurrencyAbbrev: string;
  MaxAcquireCurrencyAbbrev: string;
  MinLeaseCurrencyAbbrev: string;
  MaxLeaseCurrencyAbbrev: string;
  SaveCursor: TCursor;
  SaveFiltered: Boolean;
begin
  if FSettingPrevPeriodValueGainedParts then
    Exit;

  FSettingPrevPeriodValueGainedParts:= True;
  try
    SaveCursor:= Screen.Cursor;
    Screen.Cursor:= crHourGlass;
    try
      for InvestmentLevel:= 1 to MaxInvestmentLevel do
        PrevValueGainedParts[InvestmentLevel]:= Null;

      for InvestmentLevel:= 1 to MaxInvestmentLevel do
        ValueGainedPartFields[InvestmentLevel]:=
          cdsGridData.FieldByName(Format('_TOTAL_VALUE_GAINED_LEVEL_%d_PART', [InvestmentLevel]));

      for InvestmentLevel:= 1 to MaxInvestmentLevel do
        PrevValueGainedPartFields[InvestmentLevel]:=
          cdsGridData.FieldByName(Format('PREV_TOTAL_VG_LEVEL_%d_PART', [InvestmentLevel]));

      SetLength(TotalOfFields, 0);
      for fld in cdsGridData.Fields do
        if EndsText('_QTY', fld.FieldName) or EndsText('_TOTAL_PRICE', fld.FieldName) then
          begin
            SetLength(TotalOfFields, Length(TotalOfFields) + 1);
            TotalOfFields[Length(TotalOfFields)-1]:= fld;
          end;

      SetLength(Totals, Length(TotalOfFields));
      for i:= Low(Totals) to High(Totals) do
        Totals[i]:= 0;

      MinAcquireCurrencyAbbrev:= SMaxStr;
      MaxAcquireCurrencyAbbrev:= SMinStr;
      MinLeaseCurrencyAbbrev:= SMaxStr;
      MaxLeaseCurrencyAbbrev:= SMinStr;

      with cdsGridData do
        begin
          DisableControls;
          try
            SaveRecNo:= RecNo;
            try
              SaveFiltered:= Filtered;
              Filtered:= False;
              try
                First;
                while not Eof do
                  begin
                    Different:= False;
                    for InvestmentLevel:= 1 to MaxInvestmentLevel do
                      Different:= Different or
                        (PrevValueGainedParts[InvestmentLevel] <> PrevValueGainedPartFields[InvestmentLevel].AsVariant);

                    if Different then
                      begin
                        Edit;
                        try
                          for InvestmentLevel:= 1 to MaxInvestmentLevel do
                            PrevValueGainedPartFields[InvestmentLevel].AsVariant:= PrevValueGainedParts[InvestmentLevel];
                          Post;
                        except
                          Cancel;
                          raise;
                        end;
                      end;  { if }

                    for InvestmentLevel:= 1 to MaxInvestmentLevel do
                      PrevValueGainedParts[InvestmentLevel]:= ValueGainedPartFields[InvestmentLevel].AsVariant;

                    for i:= Low(TotalOfFields) to High(TotalOfFields) do
                      Totals[i]:= Totals[i] + TotalOfFields[i].AsFloat;

                    if not cdsGridData_REAL__ACQUIRE_CURRENCY_ABBREV.IsNull then
                      begin
                        MinAcquireCurrencyAbbrev:=
                          MinStr(MinAcquireCurrencyAbbrev, cdsGridData_REAL__ACQUIRE_CURRENCY_ABBREV.AsString);
                        MaxAcquireCurrencyAbbrev:=
                          MaxStr(MaxAcquireCurrencyAbbrev, cdsGridData_REAL__ACQUIRE_CURRENCY_ABBREV.AsString);
                      end;

                    if not cdsGridData_REAL__LEASE_CURRENCY_ABBREV.IsNull then
                      begin
                        MinLeaseCurrencyAbbrev:=
                          MinStr(MinLeaseCurrencyAbbrev, cdsGridData_REAL__LEASE_CURRENCY_ABBREV.AsString);
                        MaxLeaseCurrencyAbbrev:=
                          MaxStr(MaxLeaseCurrencyAbbrev, cdsGridData_REAL__LEASE_CURRENCY_ABBREV.AsString);
                      end;

                    Next;
                  end;  { while }
              finally
                Filtered:= SaveFiltered;
              end;
            finally
              if (SaveRecNo > 0) then
                RecNo:= SaveRecNo;
            end;
          finally
            EnableControls;
          end;
        end;  { with }

      if (MinAcquireCurrencyAbbrev = SMaxStr) then
        MinAcquireCurrencyAbbrev:= '';
      if (MaxAcquireCurrencyAbbrev = SMinStr) then
        MaxAcquireCurrencyAbbrev:= '';
      if (MinLeaseCurrencyAbbrev = SMaxStr) then
        MinLeaseCurrencyAbbrev:= '';
      if (MaxLeaseCurrencyAbbrev = SMinStr) then
        MaxLeaseCurrencyAbbrev:= '';

      grdData.Columns.BeginUpdate;
      try
        for c:= 0 to grdData.Columns.Count - 1 do
          begin
            col:= grdData.Columns[c];

            Found:= False;
            for i:= Low(TotalOfFields) to High(TotalOfFields) do
              if (col.FieldName = TotalOfFields[i].FieldName) then
                begin
                  if EndsStr('PRICE', TotalOfFields[i].FieldName) and not BorderRelTypePriceVisible then
                    begin
                      col.Footer.ValueType:= fvtStaticText;
                      col.Footer.Value:= SNotAvailable;
                    end
                  else
                    if ( EndsStr('ACQUIRE_TOTAL_PRICE', TotalOfFields[i].FieldName) and
                         (MinAcquireCurrencyAbbrev <> MaxAcquireCurrencyAbbrev) ) or
                       ( EndsStr('LEASE_TOTAL_PRICE', TotalOfFields[i].FieldName) and
                         (MinLeaseCurrencyAbbrev <> MaxLeaseCurrencyAbbrev) ) then
                      begin
                        col.Footer.ValueType:= fvtStaticText;
                        col.Footer.Value:= SDifferentCurrencies;
                      end
                    else
                      begin
                        col.Footer.ValueType:= fvtStaticText;
                        col.Footer.Value:= FormatFloat(',#', Totals[i]);
                      end;

                  Found:= True;
                  Break;
                end;

            if not Found then
              begin
                col.Footer.ValueType:= fvtNon;

                if (col.Field = cdsGridData_BASE_CURRENCY_ABBREV) then
                  begin
                    col.Footer.ValueType:= fvtStaticText;
                    col.Footer.Alignment:= taCenter;
                    col.Footer.Value:= IfThen(BorderRelTypePriceVisible, LoginContext.BaseCurrencyAbbrev, SNotAvailable);
                  end;

                if (col.Field = cdsGridData_REAL__ACQUIRE_CURRENCY_ABBREV) and
                   (MinAcquireCurrencyAbbrev = MaxAcquireCurrencyAbbrev) then
                  begin
                    col.Footer.ValueType:= fvtStaticText;
                    col.Footer.Alignment:= taCenter;
                    col.Footer.Value:= IfThen(BorderRelTypePriceVisible, MinAcquireCurrencyAbbrev, SNotAvailable);
                  end;

                if (col.Field = cdsGridData_REAL__LEASE_CURRENCY_ABBREV) and
                   (MinLeaseCurrencyAbbrev = MaxLeaseCurrencyAbbrev) then
                  begin
                    col.Footer.ValueType:= fvtStaticText;
                    col.Footer.Alignment:= taCenter;
                    col.Footer.Value:= IfThen(BorderRelTypePriceVisible, MinLeaseCurrencyAbbrev, SNotAvailable);
                  end;
              end;
          end;
      finally
        grdData.Columns.EndUpdate;
      end;
    finally
      Screen.Cursor:= SaveCursor;
    end;
  finally
    FSettingPrevPeriodValueGainedParts:= False;
  end;
end;

function TfmParRelProduct.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:=
    TfmParRelProductPeriod.ShowForm(dmDocClient, dsGridData.DataSet,
      AEditMode, doNone, FProductClass, frStatus.Data);
end;

class function TfmParRelProduct.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AFocusDate: TDateTime): Boolean;
var
  f: TfmParRelProduct;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled,
      AFocusDate);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmParRelProduct.tlMainAfterPaint(Sender: TObject);
var
  i: Integer;
begin
  inherited;

  for i:= Low(FormatSettings.ShortMonthNames) to High(FormatSettings.ShortMonthNames) do
    FormatSettings.ShortMonthNames[i]:= FSaveShortMonthNames[i + (Low(FSaveShortMonthNames) - Low(FormatSettings.ShortMonthNames))];
end;

procedure TfmParRelProduct.tlMainBeforePaint(Sender: TObject);
var
  i: Integer;
begin
  inherited;

  SetLength(FSaveShortMonthNames, Length(FormatSettings.ShortMonthNames));

  for i:= Low(FSaveShortMonthNames) to High(FSaveShortMonthNames) do
    FSaveShortMonthNames[i]:= FormatSettings.ShortMonthNames[i + (Low(FormatSettings.ShortMonthNames) - Low(FSaveShortMonthNames))];

  for i:= Low(FormatSettings.ShortMonthNames) to High(FormatSettings.ShortMonthNames) do
    if (not Odd(i)) and (i < 12) then
      FormatSettings.ShortMonthNames[i]:= StringOfChar(' ', 9) + IntToStr(i+1)
    else
      FormatSettings.ShortMonthNames[i]:= '';
end;

procedure TfmParRelProduct.tlMainDrawItem(Sender: TObject; Canvas: TCanvas;
  Item: TJvTimeItem; var R: TRect);
var
  TimeLine: TAbmesTimeLine;
  SaveRect: TRect;
  tw: Integer;
  s: string;
begin
  inherited;

  TimeLine:= (Sender as TAbmesTimeLine);

  R.Top:= 12 + (Item.Level * TimeLine.ItemHeight);
  R.Bottom:= R.Top + TimeLine.ItemHeight;

  SaveRect:= R;

  Canvas.Brush.Color := Item.Color;
  Canvas.Font.Color := Item.TextColor;

  if Item.Selected and Item.Enabled and TimeLine.ShowSelection then
    begin
      Canvas.Brush.Color := clHighLight;
      Canvas.Font.Color := clHighLightText;
    end
  else
  if not Item.Enabled then
    begin
      Canvas.Brush.Color := Color;
      Canvas.Font.Color := Color xor clWhite;
    end
  else
    begin
      Canvas.Brush.Color := Item.Color;
      Canvas.Font.Color := Item.TextColor;
    end;

  Canvas.Rectangle(R);

  Canvas.MoveTo(R.Left, R.Top);
  Canvas.LineTo(R.Left, R.Top - 5);

  if Item.Selected and Item.Enabled then
    Canvas.DrawFocusRect(R);

  if (Item.Caption <> '') then
    begin
      s:= Item.Caption;
      tw:= Canvas.TextWidth(s);

      R.Bottom:= R.Top;
      R.Left:= R.Left + 3;
      R.Top:= R.Bottom - Canvas.TextHeight(s);
      R.Right:= Min(R.Right, R.Left + tw);

      if (tw > R.Right - R.Left + 1) then
        s:= '...';

      SetBkMode(Canvas.Handle, TRANSPARENT);
      DrawTextEx(Canvas.Handle, PChar(s), Length(s), R,
        DT_LEFT or DT_NOPREFIX or DT_SINGLELINE or DT_END_ELLIPSIS, nil);
    end;

  R:= SaveRect;
end;

procedure TfmParRelProduct.tlMainItemClick(Sender: TObject; Item: TJvTimeItem);
begin
  inherited;
  if (Item.Level = 1) then
    cdsGridData.Locate('BEGIN_DATE', Item.Date, []);
end;

procedure TfmParRelProduct.tlMainItemDblClick(Sender: TObject;
  Item: TJvTimeItem);
begin
  inherited;
  actEditRecord.Execute;
end;

procedure TfmParRelProduct.tlMainMeasureItem(Sender: TObject;
  Item: TJvTimeItem; var ItemHeight: Integer);
begin
  inherited;
  ItemHeight:= 1;  // za da go vkarame pod TimeLine-a i vutre v Control-a, na DrawItem zadavame istinskia Rect
end;

end.
