unit fDelivery;

// в design-time ако се добави 1000 към ClientHeight-a, щв се видят всички панели

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, Db, ExtCtrls, StdCtrls, DBCtrls, GridsEh, DBGridEh,
  AbmesDBGrid, JvToolEdit, Mask, ComCtrls, DBClient,
  AbmesClientDataSet, ImgList, ActnList, Buttons, AbmesFields,
  AbmesDBCheckBox, Menus, JvButtons, ToolWin, fEditForm, dDocClient,
  fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDeptFieldEditFrameBald, fProductFieldEditFrame,
  fProductFieldEditFrameBald, fDateFieldEditFrame, fPartnerFieldEditFrame,
  fProductFieldEditFrameLabeled, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameLabeled, fPartnerFieldEditFrameLabeled,
  fPartnerFieldEditFrameBald, JvExControls, JvComponent, JvDBLookup,
  JvCaptionButton, JvComponentBase, JvExStdCtrls, JvDBCombobox,
  fProductExFieldEditFrame, fPartnerExFieldEditFrame, fDateIntervalFrame,
  ParamDataSet, fStatusAbstract, fParRelProductStatus, uProducts,
  uProductionOrderTypes, uParRelProducts, JvCombobox, fDataForm, fBaseForm,
  rProductDelivery, uSection, System.Actions;

type
  [CanEditOuterDataSet(False)]
  [ReportClass(TrptProductDelivery)]
  [CanUseDocs]
  TfmDelivery = class(TEditForm)
    cdsCurrencies: TAbmesClientDataSet;
    dsCurrencies: TDataSource;
    cdsVendorOffices: TAbmesClientDataSet;
    dsVendorOffices: TDataSource;
    cdsBranches: TAbmesClientDataSet;
    dsBranches: TDataSource;
    cdsVendorOfficesCOMPANY_CODE: TAbmesFloatField;
    cdsVendorOfficesOFFICE_CODE: TAbmesFloatField;
    cdsVendorOfficesOFFICE_NAME: TAbmesWideStringField;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataDCD_OBJECT_CODE: TAbmesFloatField;
    cdsDataDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsDataVENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsDataWORK_QUANTITY: TAbmesFloatField;
    cdsDataACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDataCURRENCY_CODE: TAbmesFloatField;
    cdsDataTOTAL_PRICE: TAbmesFloatField;
    cdsDataSINGLE_PRICE: TAbmesFloatField;
    cdsDataDELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsDataDELIVERY_VENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsDataDELIVERY_VENDOR_OFFICE_CODE: TAbmesFloatField;
    cdsDataIS_TRANSPORT_FROM_VENDOR: TAbmesFloatField;
    cdsDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    pnlPrintButton: TPanel;
    btnPrint: TBitBtn;
    pnlFinishButton: TPanel;
    btnDone: TBitBtn;
    pnlAnnulButton: TPanel;
    btnAnnul: TBitBtn;
    actFinish: TAction;
    actAnnul: TAction;
    actVIM: TAction;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    gbDeliveryID: TGroupBox;
    tlbDocs: TToolBar;
    gbDates: TGroupBox;
    lblPlanPositionDate: TLabel;
    lblPlanVendorPositionDate: TLabel;
    lblPlanDecisionDate: TLabel;
    lblRealPositionDate: TLabel;
    lblRealVendorPositionDate: TLabel;
    lblRealDecisionDate: TLabel;
    lblPositionDatesAxis1: TLabel;
    lblVendorPositionDatesAxis1: TLabel;
    lblDecisionDatesAxis1: TLabel;
    imgArrow3: TImage;
    imgArrow4: TImage;
    dbtPlanVendorPositionDateDiff: TDBText;
    dbtPlanDecisionDateDiff: TDBText;
    imgArrow5: TImage;
    dbtRealVendorPositionDateDiff: TDBText;
    imgArrow6: TImage;
    dbtRealDecisionDateDiff: TDBText;
    lblPositionDatesAxis2: TLabel;
    lblVendorPositionDatesAxis2: TLabel;
    dbtDatesDeviation: TDBText;
    dbtVendorDatesDeviation: TDBText;
    dbtDecisionDatesDeviation: TDBText;
    lblDecisionDatesAxis2: TLabel;
    frPlanPositionDate: TfrDateFieldEditFrame;
    frRealPositionDate: TfrDateFieldEditFrame;
    frPlanVendorPositionDate: TfrDateFieldEditFrame;
    frRealVendorPositionDate: TfrDateFieldEditFrame;
    frPlanDecisionDate: TfrDateFieldEditFrame;
    frRealDecisionDate: TfrDateFieldEditFrame;
    lblCode: TLabel;
    lblDCDBranch: TLabel;
    edtDCDType: TDBEdit;
    edtDCDBranch: TDBEdit;
    edtDCDCode: TDBEdit;
    lblDCDCode: TLabel;
    edtDeliveryProjectCode: TDBEdit;
    lblDeliveryProjectCode: TLabel;
    lblStreamType: TLabel;
    lblAspect: TLabel;
    edtAspect: TDBEdit;
    lblIsActivatedByVendor: TLabel;
    cbIsActivatedByVendor: TJvDBComboBox;
    gbTotalQuantity: TGroupBox;
    lblTotalWorkQuantity: TLabel;
    lblTotalWorkQuantityMeasure: TDBText;
    edtTotalWorkQuantity: TDBEdit;
    imgArrow1: TImage;
    dbtRegisterDateDiff: TDBText;
    lblStartDate: TLabel;
    lblRegisterDate: TLabel;
    frStartDate: TfrDateFieldEditFrame;
    frRegisterDate: TfrDateFieldEditFrame;
    pnlPrices: TPanel;
    gbPricesSell: TGroupBox;
    lblMarketPrice: TLabel;
    lblMaxPrice: TLabel;
    lblBaseCurrency: TLabel;
    lblCaption3: TLabel;
    lblMeasureAbbrev2: TLabel;
    dbtMarketPriceCurrencyAbbrev2: TDBText;
    edtMarketPrice: TDBEdit;
    edtMaxPrice: TDBEdit;
    edtMeasureAbbrev2: TDBEdit;
    gbPricesLease: TGroupBox;
    lblLeaseSecondaryPrice: TLabel;
    lblMaxPrice2: TLabel;
    lblMeasureAbbrev: TLabel;
    lblLeaseDateUnitCode: TLabel;
    lblCaption2: TLabel;
    lblSlash2: TLabel;
    dbtMarketPriceCurrencyAbbrev: TDBText;
    lblBaseCurrencyAbbrev: TLabel;
    edtLeaseSecondaryPrice: TDBEdit;
    edtMaxPrice2: TDBEdit;
    edtMeasureAbbrev: TDBEdit;
    edtLeaseDateUnitCode: TDBEdit;
    dbtPlanPositionDateDiff: TDBText;
    imgArrow2: TImage;
    imgArrow7: TImage;
    dbtRealPositionDateDiff: TDBText;
    gbDecision: TGroupBox;
    lblPlanPeriodDays: TLabel;
    lblRealPeriodDays: TLabel;
    cbDecisionType: TJvDBLookupCombo;
    edtPlanPeriodDays: TDBEdit;
    edtRealPeriodDays: TDBEdit;
    frDecisionEmployee: TfrEmployeeFieldEditFrameLabeled;
    frDialogEmployee: TfrEmployeeFieldEditFrameLabeled;
    cdsDecisionTypes: TAbmesClientDataSet;
    dsDecisionTypes: TDataSource;
    gbTransport: TGroupBox;
    cdsCountries: TAbmesClientDataSet;
    cdsCountriesCOUNTRY_CODE: TAbmesFloatField;
    cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField;
    cdsCountriesCOUNTRY_NAME: TAbmesWideStringField;
    dsCustomhouses: TDataSource;
    cdsCustomhouses: TAbmesClientDataSet;
    cdsCustomhousesCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsCustomhousesCUSTOMHOUSE_NAME: TAbmesWideStringField;
    dsShipmentTypes: TDataSource;
    cdsShipmentTypes: TAbmesClientDataSet;
    cdsShipmentTypesSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsShipmentTypesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsShipmentTypesSHIPMENT_TYPE_NAME: TAbmesWideStringField;
    cdsShipmentTypesNOTES: TAbmesWideStringField;
    cdsDeficitCoverDecision: TAbmesClientDataSet;
    dsDeficitCoverDecision: TDataSource;
    cdsDeficitCoverDecisionDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionDCD_OBJECT_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionIS_DONE: TAbmesFloatField;
    cdsDeficitCoverDecisionIS_CANCELED: TAbmesFloatField;
    cdsDeficitCoverDecisionVPD_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionDEPT_NO: TAbmesFloatField;
    cdsDeficitCoverDecisionDEPT_NAME: TAbmesWideStringField;
    cdsDeficitCoverDecisionPRODUCT_NAME: TAbmesWideStringField;
    cdsDeficitCoverDecisionPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsDeficitCoverDecisionWORK_MEASURE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionPRODUCT_CUSTOM_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionDCD_BRANCH_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionDCD_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionDOC_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionASPECT_TYPE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionDELIVERY_COUNT: TAbmesFloatField;
    cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionHAS_DOC: TAbmesFloatField;
    cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeficitCoverDecisionDCD_BRANCH_ID: TAbmesWideStringField;
    cdsDeficitCoverDecisionASPECT_TYPE_ABBREV: TAbmesWideStringField;
    cdsDataMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsDataSTART_DATE: TAbmesSQLTimeStampField;
    cdsDataREGISTER_DATE: TAbmesSQLTimeStampField;
    cdsDataPLAN_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDataREAL_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDataPLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDataREAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDataREAL_DECISION_DATE: TAbmesSQLTimeStampField;
    cdsDataMAX_BASE_SINGLE_PRICE: TAbmesFloatField;
    cdsDataDELIVERY_DECISION_CODE: TAbmesFloatField;
    cdsDataDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataDIALOG_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataSHIPMENT_DAYS: TAbmesFloatField;
    cdsDataCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsDataSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsDataPRIORITY_CODE: TAbmesFloatField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataDELIVERY_OBJECT_CODE: TAbmesFloatField;
    cdsDeliveryTypes: TAbmesClientDataSet;
    cdsDeliveryTypesDELIVERY_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryTypesDELIVERY_TYPE_ABBREV: TAbmesWideStringField;
    dsDeliveryTypes: TDataSource;
    cdsDataDELIVERY_TYPE_CODE: TAbmesFloatField;
    cdsData_DELIVERY_TYPE_ABBREV: TAbmesWideStringField;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NO: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    dsPriorities: TDataSource;
    cdsDataHAS_DOC: TAbmesFloatField;
    cdsData_REGISTER_DATE_DIFF: TAbmesFloatField;
    cdsData_PLAN_POSITION_DATE_DIFF: TAbmesFloatField;
    cdsData_REAL_POSITION_DATE_DIFF: TAbmesFloatField;
    cdsData_PLAN_VENDOR_POSITION_DATE_DIFF: TAbmesFloatField;
    cdsData_REAL_VENDOR_POSITION_DATE_DIFF: TAbmesFloatField;
    cdsData_PLAN_DECISION_DATE_DIFF: TAbmesFloatField;
    cdsData_REAL_DECISION_DATE_DIFF: TAbmesFloatField;
    cdsData_DATES_DEVIATION: TAbmesFloatField;
    cdsData_VENDOR_DATES_DEVIATION: TAbmesFloatField;
    cdsData_DECISION_DATES_DEVIATION: TAbmesFloatField;
    cdsDataIS_ACTIVATED_BY_VENDOR: TAbmesFloatField;
    cdsDeficitCoverDecisionTOTAL_WORK_QUANTITY: TAbmesFloatField;
    cdsDeficitCoverDecisionTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDataFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataFINISH_DATE: TAbmesSQLTimeStampField;
    cdsDataFINISH_TIME: TAbmesSQLTimeStampField;
    cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsDataANNUL_TIME: TAbmesSQLTimeStampField;
    pnlAnnuled: TPanel;
    chkAnnuled: TCheckBox;
    pnlFinished: TPanel;
    chkFinished: TCheckBox;
    actCreateDeliveryContract: TAction;
    cdsDecisionTypesDELIVERY_DECISION_CODE: TAbmesFloatField;
    cdsDecisionTypesDELIVERY_DECISION_ABBREV: TAbmesWideStringField;
    cdsDecisionTypesDELIVERY_DECISION_NAME: TAbmesWideStringField;
    cdsData_PLAN_PERIOD_DAYS: TAbmesFloatField;
    cdsData_REAL_PERIOD_DAYS: TAbmesFloatField;
    cdsData_DCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsData_DELIVERY_VENDOR_OFFICE_NAME: TAbmesWideStringField;
    cdsData_CUSTOMHOUSE_NAME: TAbmesWideStringField;
    cdsData_SHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsDataDCD_BRANCH_CODE: TAbmesFloatField;
    cdsDataDCD_CODE: TAbmesFloatField;
    actDeliveryStoreDeals: TAction;
    cdsDeliveryProductInfo: TAbmesClientDataSet;
    dsDeliveryProductInfo: TDataSource;
    cdsData_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsData_COUNTRY_ABBREV: TAbmesWideStringField;
    cdsData_DC_DDTA: TAbmesWideStringField;
    cdsData_DC_DCD_BRANCH_ID: TAbmesWideStringField;
    cdsData_DC_DCD_CODE: TAbmesFloatField;
    cdsData_DC_DELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsData_DC_DELIVERY_TYPE_ABBREV: TAbmesWideStringField;
    btnDocs: TToolButton;
    cdsData_DC_STATUS_CODE: TAbmesFloatField;
    cdsData_STATUS_CODE: TAbmesFloatField;
    cdsDataSD_QUANTITY: TAbmesFloatField;
    pnlDialog: TPanel;
    gbDeliveryRealization: TGroupBox;
    gbDeliveryDate: TGroupBox;
    frDeliveryDate: TfrDateFieldEditFrame;
    gbQuantityContracted: TGroupBox;
    lblWorkQuantity: TLabel;
    lblWorkMeasure: TDBText;
    lblAccountQuantity: TLabel;
    lblAccountQuantityMeasure: TDBText;
    edtWorkQuantity: TDBEdit;
    edtAccountQuantity: TDBEdit;
    gbDeliveryContract: TGroupBox;
    lblPriority: TLabel;
    lblDCDType2: TLabel;
    lblDCDBranch2: TLabel;
    lblDCDCode2: TLabel;
    lblDeliveryProjectCode2: TLabel;
    lblType: TLabel;
    lblDCStatus: TLabel;
    btnCreateDeliveryContract: TButton;
    btnDeliveryStoreDeals: TButton;
    edtDCDType2: TDBEdit;
    edtDCDBranch2: TDBEdit;
    edtDCDCode2: TDBEdit;
    edtDeliveryProjectCode2: TDBEdit;
    cbPriority: TJvDBLookupCombo;
    edtDCStatus: TDBEdit;
    gbLeaseRealization: TGroupBox;
    gbLeaseDatesInterval: TGroupBox;
    frLeaseDates: TfrDateIntervalFrame;
    gbLeaseQuantities: TGroupBox;
    lblFor: TLabel;
    lblLeaseDateUnitQty: TLabel;
    lblDateUnit: TLabel;
    lblTotalLeaseQuantity: TLabel;
    edtLeaseDateUnitQty: TDBEdit;
    cbDateUnit: TJvDBLookupCombo;
    edtTotalLeaseQuantity: TDBEdit;
    gbContractedPrices: TGroupBox;
    lblSinglePrice2: TLabel;
    lblCurrency2: TLabel;
    edtSinglePrice2: TDBEdit;
    cbCurrency2: TJvDBLookupCombo;
    gbDeliveryContract2: TGroupBox;
    lblPriority2: TLabel;
    lblDCDType3: TLabel;
    lblDCDBranch3: TLabel;
    lblDCDCode3: TLabel;
    lblDeliveryProjectCode3: TLabel;
    lblType2: TLabel;
    lblDCStatus2: TLabel;
    btnCreateDeliveryContract2: TButton;
    btnDeliveryStoreDeals2: TButton;
    edtDCDType3: TDBEdit;
    edtDCDBranch3: TDBEdit;
    edtDCDCode3: TDBEdit;
    edtDeliveryProjectCode3: TDBEdit;
    cbPriority2: TJvDBLookupCombo;
    edtDCStatus2: TDBEdit;
    gbDeliveryPrognosis: TGroupBox;
    lblPrognosisInterval: TLabel;
    frPrognosis: TfrDateIntervalFrame;
    gbQuantitiesAndPrices: TGroupBox;
    lblOfferQuantity: TLabel;
    lblOfferAccountQuantity: TLabel;
    lblOfferSinglePrice: TLabel;
    lblOfferCurrency: TLabel;
    dbtMeasure3: TDBText;
    dbtMeasure4: TDBText;
    dbtMeasure5: TDBText;
    dbtAccountMeasure2: TDBText;
    dbtAccountMeasure3: TDBText;
    dbtAccountMeasure4: TDBText;
    lblOurOffer: TLabel;
    lblVendorOffer: TLabel;
    lblCoherence: TLabel;
    edtOurOfferQuantity: TDBEdit;
    edtVendorOfferQuantity: TDBEdit;
    edtQuantity3: TDBEdit;
    edtOurOfferAccountQuantity: TDBEdit;
    edtVendorOfferAccountQuantity: TDBEdit;
    edtAccountQuantity3: TDBEdit;
    edtOurOfferSinglePrice: TDBEdit;
    edtVendorOfferSinglePrice: TDBEdit;
    edtSinglePrice3: TDBEdit;
    cbOurOfferCurrency: TJvDBLookupCombo;
    cbClientOfferCurrency: TJvDBLookupCombo;
    cbCurrency3: TJvDBLookupCombo;
    gbTotalPrices: TGroupBox;
    dbtCurrency3: TDBText;
    lblSecondaryCurrencyAbbrev6: TLabel;
    edtTotalPrice3: TDBEdit;
    edtTotalPriceSC3: TDBEdit;
    gbLeasePrognosis: TGroupBox;
    lblPrognosisInterval2: TLabel;
    frPrognosis2: TfrDateIntervalFrame;
    gbQuantitiesAndPrices2: TGroupBox;
    lblOfferLeaseDateUnitQty: TLabel;
    lblOfferSinglePrice2: TLabel;
    lblOfferCurrency2: TLabel;
    lblOurOffer2: TLabel;
    lblVendorOffer2: TLabel;
    lblCoherence2: TLabel;
    lblOfferLeaseDateUnit: TLabel;
    lblOfferTotalLeaseQuantity: TLabel;
    edtOurOfferLeaseDateUnitQty: TDBEdit;
    edtVendorOfferLeaseDateUnitQty: TDBEdit;
    edtLeaseDateUnitQty2: TDBEdit;
    edtOurOfferSinglePrice2: TDBEdit;
    edtVendorOfferSinglePrice2: TDBEdit;
    edtSinglePrice4: TDBEdit;
    cbOurOfferCurrency2: TJvDBLookupCombo;
    cbClientOfferCurrency2: TJvDBLookupCombo;
    cbCurrency4: TJvDBLookupCombo;
    cbLeaseDateUnit: TJvDBLookupCombo;
    edtTotalLeaseQuantity2: TDBEdit;
    cbVendorOfferLeaseDateUnit: TJvDBLookupCombo;
    edtVendorOfferTotalLeaseQuantity: TDBEdit;
    cbOurOfferLeaseDateUnit: TJvDBLookupCombo;
    edtOurOfferTotalLeaseQuantity: TDBEdit;
    gbTotalPrices2: TGroupBox;
    dbtCurrency4: TDBText;
    lblSecondaryCurrencyAbbrev7: TLabel;
    edtTotalPrice4: TDBEdit;
    edtTotalPriceSC4: TDBEdit;
    cdsDataOUR_OFFER_QUANTITY: TAbmesFloatField;
    cdsDataOUR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDataOUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDataOUR_OFFER_CURRENCY_CODE: TAbmesFloatField;
    cdsDataVENDOR_OFFER_QUANTITY: TAbmesFloatField;
    cdsDataVENDOR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDataVENDOR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDataVENDOR_OFFER_CURRENCY_CODE: TAbmesFloatField;
    cdsDataPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataPROGNOSIS_END_DATE: TAbmesSQLTimeStampField;
    cdsDataOUR_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDataV_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDataLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDataOUR_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDataV_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDataLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDataRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDataRETURN_DATE: TAbmesSQLTimeStampField;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    dsDateUnits: TDataSource;
    cdsData_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    cdsData_DELIVERY_TOTAL_PRICE: TAbmesFloatField;
    cdsData_DELIVERY_TOTAL_PRICE_SC: TAbmesFloatField;
    cdsData_OUR_OFFER_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    cdsData_V_OFFER_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    cdsSecondaryCurrencyRates: TAbmesClientDataSet;
    cdsSecondaryCurrencyRatesCURRENCY_CODE: TAbmesFloatField;
    cdsSecondaryCurrencyRatesRATE_DATE: TAbmesSQLTimeStampField;
    cdsSecondaryCurrencyRatesFIXING: TAbmesFloatField;
    pnlDialogRealizationPrices: TPanel;
    gbPrice: TGroupBox;
    lblSinglePrice: TLabel;
    lblCurrency: TLabel;
    cbCurrency: TJvDBLookupCombo;
    edtSinglePrice: TDBEdit;
    edtTotalPrice: TDBEdit;
    gbPriceImport: TGroupBox;
    lblPriceImportTotalValue: TLabel;
    lblPriceImportSinglePrice: TLabel;
    lblPriceImportCurrency: TLabel;
    edtPriceImportSinglePrice: TEdit;
    edtPriceImportCurrency: TEdit;
    edtPriceImportTotalValue: TEdit;
    actSale: TAction;
    cdsDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsSaleID: TAbmesClientDataSet;
    cdsSaleIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsSaleIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    pdsSaleID: TParamDataSet;
    pdsSaleIDSALE_BRANCH_CODE: TAbmesFloatField;
    pdsSaleIDSALE_NO: TAbmesFloatField;
    dsSaleID: TDataSource;
    cdsDataSALE_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_NO: TAbmesFloatField;
    pnlDCDDeliveryOrLease: TPanel;
    pnlDCDDelivery: TPanel;
    gbDCDDatesDelivery: TGroupBox;
    lblDeficitCoverDate: TLabel;
    frDeficitCoverDate: TfrDateFieldEditFrame;
    gbDCDQuantityDelivery: TGroupBox;
    lblDCDWorkQuantity: TLabel;
    lblDCDWorkQuantityMeasure: TDBText;
    lblDCDAccountQuantity: TLabel;
    lblDCDAccountQuantityMeasure: TDBText;
    edtDCDWorkQuantity: TDBEdit;
    edtDCDAccountQuantity: TDBEdit;
    pnlDCDLease: TPanel;
    gbDCDDatesLease: TGroupBox;
    lblDCDLeaseDates: TLabel;
    gbDCDQuantityLease: TGroupBox;
    lblDCDWorkQuantity2: TLabel;
    dbtWorkMeasure: TDBText;
    edtDCDWorkQuantity2: TDBEdit;
    frDCDLeaseDates: TfrDateIntervalFrame;
    lblDCDLeaseDateUnitQty: TLabel;
    edtDCDLeaseDateUnitQty: TDBEdit;
    edtLeaseDateUnitName: TDBEdit;
    lblLeaseDateUnitName: TLabel;
    lblDCDTotalLeaseQuantity: TLabel;
    edtDCDTotalLeaseQuantity: TDBEdit;
    cdsDeficitCoverDecision_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    lblSlash: TLabel;
    dbtDisplayMeasure: TDBText;
    lblSlash3: TLabel;
    dbtDisplayMeasure2: TDBText;
    lblSlash4: TLabel;
    dbtDisplayMeasure3: TDBText;
    lblSlash5: TLabel;
    dbtDisplayMeasure4: TDBText;
    lblSlash6: TLabel;
    dbtDisplayMeasure5: TDBText;
    lblSlash7: TLabel;
    dbtDisplayMeasure6: TDBText;
    lblSlash8: TLabel;
    dbtDisplayMeasure7: TDBText;
    lblSlash9: TLabel;
    dbtDisplayMeasure8: TDBText;
    lblSlash10: TLabel;
    dbtDisplayMeasure9: TDBText;
    lblTotalPrice: TLabel;
    lblSecondaryCurrencyAbbrev2: TLabel;
    edtDeliveryTotalPrice: TDBEdit;
    dbtCurrency5: TDBText;
    cdsDataASPECT_TYPE_CODE: TAbmesFloatField;
    edtStatus: TDBEdit;
    lblStatus: TLabel;
    cdsDeficitCoverDecisionSTREAM_TYPE_ABBREV: TAbmesWideStringField;
    edtStreamType: TDBEdit;
    tlbDCDDocs: TToolBar;
    btnDCDDocs: TToolButton;
    cbType: TJvDBLookupCombo;
    cbType2: TJvDBLookupCombo;
    cdsDataACCOUNT_MAX_BASE_SINGLE_PRICE: TAbmesFloatField;
    cdsDataACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsDataACC_OUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDataACC_VENDOR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    pnlLeasePrognosisQuantities: TPanel;
    pnlLeasePrognosisQuantitiesWork: TPanel;
    lblOfferQuantity2: TLabel;
    dbtMeasure6: TDBText;
    dbtMeasure7: TDBText;
    dbtMeasure8: TDBText;
    edtOurOfferQuantity2: TDBEdit;
    edtVendorOfferQuantity2: TDBEdit;
    edtQuantity4: TDBEdit;
    pnlLeasePrognosisQuantitiesAccount: TPanel;
    lblAccountQuantity3: TLabel;
    dbtAccountMeasure5: TDBText;
    dbtAccountMeasure6: TDBText;
    dbtAccountMeasure7: TDBText;
    edtOurOfferAccountQuantity2: TDBEdit;
    edtVendorOfferAccountQuantity2: TDBEdit;
    edtAccountQuantity4: TDBEdit;
    pnlLeaseRealization: TPanel;
    pnlLeaseRealizationWork: TPanel;
    lblWorkQuantity2: TLabel;
    edtWorkQuantity2: TDBEdit;
    lblWorkMeasure2: TDBText;
    pnlLeaseRealizationAccount: TPanel;
    lblAccountQuantity2: TLabel;
    lblAccountMeasure2: TDBText;
    edtAccountQuantity2: TDBEdit;
    cdsDataPARTNER_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsDataBORDER_REL_TYPE_CODE: TAbmesFloatField;
    actParRelProduct: TAction;
    actParRelProductDoc: TAction;
    cdsDeliveryDefaults: TAbmesClientDataSet;
    cdsDeliveryDefaultsPARTNER_CODE: TAbmesFloatField;
    cdsDeliveryDefaultsPARTNER_OFFICE_CODE: TAbmesFloatField;
    cdsDeliveryDefaultsTRANSPORT_DURATION_DAYS: TAbmesFloatField;
    cdsDeliveryDefaultsSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDefaultsIS_PARTNER_TRANSPORT: TAbmesFloatField;
    cdsDeliveryDefaultsCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsDeliveryDefaultsSTORE_CODE: TAbmesFloatField;
    cdsDeliveryDefaultsPRICE: TAbmesFloatField;
    cdsDeliveryDefaultsCURRENCY_CODE: TAbmesFloatField;
    cdsDeliveryDefaultsLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDefaultsMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsDeliveryDefaultsRESOLVE_DURATION_DAYS: TAbmesFloatField;
    frMediator: TfrPartnerFieldEditFrameLabeled;
    cdsDataINVOICE_NO: TAbmesFloatField;
    cdsDataINVOICE_ABBREV: TAbmesWideStringField;
    cdsDataIS_PROFORM_INVOICE: TAbmesFloatField;
    cdsDataINVOICE_DATE: TAbmesSQLTimeStampField;
    lblInvoiceNo: TLabel;
    frInvoiceDate: TfrDateFieldEditFrame;
    lblIsProformInvoice: TLabel;
    lblInvoiceDate: TLabel;
    lblInvoice2: TLabel;
    edtInvoiceNo: TDBEdit;
    edtInvoiceAbbrev: TDBEdit;
    cbIsProformInvoice: TJvDBComboBox;
    pnlSale: TPanel;
    cdsDecisionTypesDELIVERY_DECISION_NO: TAbmesFloatField;
    cdsDecisionTypesIS_ESTIMATION_BOUND: TAbmesFloatField;
    cdsDecisionTypesIS_REALIZATION_BOUND: TAbmesFloatField;
    cdsDecisionTypesALLOWS_DELIVERY_CONTRACT: TAbmesFloatField;
    cdsData_ALLOWS_DC: TAbmesFloatField;
    cdsDataFIN_ORDER_CODE: TAbmesFloatField;
    cdsDataFO_EXEC_DEPT_CODE: TAbmesFloatField;
    cdsDataFO_PRIORITY_CODE: TAbmesFloatField;
    cdsDataFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsDataSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    actFinOrder: TAction;
    btnFinOrder2: TButton;
    btnFinOrder: TButton;
    cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsData_AGREE_CURRENCY_CODE: TAbmesFloatField;
    cdsData_AGREE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsDataUNFINISHED_DCD_DP_COUNT: TAbmesFloatField;
    cdsDecisionTypesREQUIRES_FINISHING: TAbmesFloatField;
    cdsData_DELIVERY_DECISION_REQUIRES_FINISHING: TAbmesFloatField;
    cdsDeficitCoverDecisionPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    pnlAccountQuantity: TPanel;
    lblTotalAccountQuantity: TLabel;
    edtTotalAccountQuantity: TDBEdit;
    lblTotalAccountQuantityMeasure: TDBText;
    pnlTotalPrice: TPanel;
    lblTotalPrice2: TLabel;
    dbtCurrency2: TDBText;
    lblSecondaryCurrencyAbbrev5: TLabel;
    edtTotalPrice2: TDBEdit;
    edtTotalPriceSC2: TDBEdit;
    pnlInvoice: TPanel;
    lbltInvoiceNo2: TLabel;
    lblIsProformInvoice2: TLabel;
    lblInvoiceDate2: TLabel;
    lblInvoice: TLabel;
    edtInvoiceNo2: TDBEdit;
    edtInvoiceAbbrev2: TDBEdit;
    cbIsProformInvoice2: TJvDBComboBox;
    frInvoiceDate2: TfrDateFieldEditFrame;
    pnlTransport1: TPanel;
    pnlTransport2: TPanel;
    lblTreeNodeName: TLabel;
    frPSDStore: TfrDeptFieldEditFrameBald;
    pnlTransport3: TPanel;
    lblCustomhouse: TLabel;
    lblShipmentType: TLabel;
    lblTransportBy: TLabel;
    cbTransportBy: TJvDBComboBox;
    cbShipmentType: TJvDBLookupCombo;
    cbCustomhouse: TJvDBLookupCombo;
    pnlVendor: TPanel;
    frVendor: TfrPartnerExFieldEditFrame;
    gbParRelProduct: TGroupBox;
    frParRelProductStatus: TfrParRelProductStatus;
    btnParRelProduct: TButton;
    tlbParRelProductDocs: TToolBar;
    btnParRelProductDocs: TToolButton;
    pnlVendorSep: TPanel;
    pnlProduct: TPanel;
    pnlAccountPricesButton: TPanel;
    btnSinglePrice: TSpeedButton;
    btnAccountSinglePrice: TSpeedButton;
    frProduct: TfrProductExFieldEditFrame;
    pnlExceptEvents: TPanel;
    btnExceptEvents: TButton;
    actExceptEvents: TAction;
    cdsDeficitCoverDecisionSTREAM_TYPE_CODE: TAbmesFloatField;
    cdsDataPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryProductInfoMARKET_PRICE: TAbmesFloatField;
    cdsDeliveryProductInfoACC_MARKET_PRICE: TAbmesFloatField;
    cdsDeliveryProductInfoMARKET_PRICE_CURRENCY_CODE: TAbmesFloatField;
    cdsDeliveryProductInfoDELIVERY_LEASE_PRICE: TAbmesFloatField;
    cdsDeliveryProductInfoACC_DELIVERY_LEASE_PRICE: TAbmesFloatField;
    cdsDeliveryProductInfoDELIVERY_LEASE_CURRENCY_CODE: TAbmesFloatField;
    cdsDeliveryProductInfoDELIVERY_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDeliveryProductInfoSPEC_STATE_CODE: TAbmesFloatField;
    cdsDeliveryProductInfoPRODUCT_PRIORITY_NO: TAbmesFloatField;
    cdsDeliveryProductInfoPRODUCT_PRIORITY_COLOR: TAbmesFloatField;
    cdsDeliveryProductInfoPRODUCT_PRIORITY_BK_COLOR: TAbmesFloatField;
    cdsDeliveryProductInfoPRP_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveryProductInfoPRP_DOC_CODE: TAbmesFloatField;
    cdsDeliveryProductInfoPRP_HAS_DOC: TAbmesFloatField;
    cdsDeliveryProductInfo_DELIVERY_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDeliveryProductInfo_MARKET_PRICE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsDeliveryProductInfo_DELIVERY_LEASE_CURRENCY_ABBREV: TAbmesWideStringField;
    lblResolveDurationDays: TLabel;
    edtResolveDurationDays: TDBEdit;
    lblCalendarDays: TLabel;
    cdsDataRESOLVE_DURATION_DAYS: TAbmesFloatField;
    actAcuirePrice: TAction;
    actLeasePrice: TAction;
    pnlLeasePriceButton: TPanel;
    btnLeasePrice: TSpeedButton;
    pnlAcquirePriceButton: TPanel;
    btnAcquirePrice: TSpeedButton;
    pnlTransport11: TPanel;
    lblVendorOffice: TLabel;
    lblCountry: TLabel;
    cbVendorOffice: TJvDBLookupCombo;
    edtCountry: TDBEdit;
    pnlTransport12: TPanel;
    lblShipmentDays: TLabel;
    edtShipmentDays: TDBEdit;
    cdsDataFO_BRANCH_CODE: TAbmesFloatField;
    cdsDataFO_CLOSE_REQUESTED: TAbmesFloatField;
    cdsDataFO_STATUS_CODE: TAbmesFloatField;
    cdsDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsSaleIDSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsDataREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsDataREQUEST_NO: TAbmesFloatField;
    cdsSaleIDREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsSaleIDREQUEST_NO: TAbmesFloatField;
    gbSale: TGroupBox;
    btnSale: TButton;
    edtSaleNo: TDBEdit;
    cbSaleBranch: TJvDBLookupCombo;
    lblSaleNo: TLabel;
    lblSaleBranch: TLabel;
    actIsSaleRequired: TAction;
    pnlIsSaleRequired: TPanel;
    chkIsSaleRequired: TCheckBox;
    cdsDeficitCoverDecisionP_PRODUCT_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionP_DEFICIT_COVER_DATE : TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionP_WORK_QUANTITY: TAbmesFloatField;
    cdsDeficitCoverDecisionP_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDeficitCoverDecisionPLAN_DECISION_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionDCD_MODE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionP_PSD_STORE_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionP_LEASE_DATE_UNIT_QUANTITY: TAbmesFloatField;
    cdsDeficitCoverDecisionP_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionP_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionP_RETURN_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecision_P_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataPSD_STORE_CODE: TAbmesFloatField;
    cdsDataDEFICIT_COVER_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionV_VENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsDataFO_PARTNER_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionV_MEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsDeficitCoverDecisionV_START_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionV_REGISTER_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionV_PLAN_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionV_REAL_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionV_PLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDeficitCoverDecisionV_REAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsDataMEASURE_CODE: TAbmesFloatField;
    cdsDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsData_MEASURE_ABBREV: TAbmesWideStringField;
    cdsData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDeficitCoverDecisionMEASURE_ABBREV: TAbmesWideStringField;
    cdsDeficitCoverDecisionACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    actBOIOrder: TAction;
    pnlBOIOrder2: TPanel;
    lblBOIOrder2: TLabel;
    edtBOIOrder2: TDBEdit;
    btnBOIOrder2: TButton;
    pnlBOIOrder: TPanel;
    lblBOIOrder: TLabel;
    edtBOIOrder: TDBEdit;
    btnBOIOrder: TButton;
    cdsDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsDataBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsDataBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsDataBOI_ORDER_CODE: TAbmesFloatField;
    cdsDataBOI_ORDER_IDENTIFIER: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsDataWORK_QUANTITYChange(Sender: TField);
    procedure cdsDataACCOUNT_QUANTITYChange(Sender: TField);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataVENDOR_COMPANY_CODEChange(Sender: TField);
    procedure actFormUpdate(Sender: TObject);
    procedure actFinishExecute(Sender: TObject);
    procedure actAnnulExecute(Sender: TObject);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure actVIMExecute(Sender: TObject);
    procedure grdDeliveryStoreDealsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure cdsDataTOTAL_PRICEChange(Sender: TField);
    procedure cdsDataSINGLE_PRICEChange(Sender: TField);
    procedure btnDocsClick(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actCreateDeliveryContractUpdate(Sender: TObject);
    procedure actCreateDeliveryContractExecute(Sender: TObject);
    procedure DatesValidate(Sender: TField);
    procedure actDeliveryStoreDealsExecute(Sender: TObject);
    procedure cdsDataCURRENCY_CODEChange(Sender: TField);
    procedure cdsDataBeforeOpen(DataSet: TDataSet);
    procedure cdsDataAfterClose(DataSet: TDataSet);
    procedure actDeliveryStoreDealsUpdate(Sender: TObject);
    procedure cdsData_DC_STATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsData_STATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsDataREAL_DECISION_DATEChange(Sender: TField);
    procedure cdsDataOUR_OFFER_QUANTITYChange(Sender: TField);
    procedure cdsDataOUR_OFFER_ACCOUNT_QUANTITYChange(Sender: TField);
    procedure cdsDataVENDOR_OFFER_QUANTITYChange(Sender: TField);
    procedure cdsDataVENDOR_OFFER_ACCOUNT_QUANTITYChange(Sender: TField);
    procedure cbSaleBranchExit(Sender: TObject);
    procedure edtSaleNoExit(Sender: TObject);
    procedure actSaleUpdate(Sender: TObject);
    procedure actSaleExecute(Sender: TObject);
    procedure cdsDeficitCoverDecisionCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnDCDDocsClick(Sender: TObject);
    procedure cdsDeficitCoverDecisionAfterOpen(DataSet: TDataSet);
    procedure cdsDataACCOUNT_SINGLE_PRICEChange(Sender: TField);
    procedure cdsDataOUR_OFFER_SINGLE_PRICEChange(Sender: TField);
    procedure cdsDataACC_OUR_OFFER_SINGLE_PRICEChange(Sender: TField);
    procedure cdsDataVENDOR_OFFER_SINGLE_PRICEChange(Sender: TField);
    procedure cdsDataACC_VENDOR_OFFER_SINGLE_PRICEChange(Sender: TField);
    procedure cdsDataMAX_BASE_SINGLE_PRICEChange(Sender: TField);
    procedure cdsDataACCOUNT_MAX_BASE_SINGLE_PRICEChange(Sender: TField);
    procedure actParRelProductExecute(Sender: TObject);
    procedure actParRelProductUpdate(Sender: TObject);
    procedure actParRelProductDocExecute(Sender: TObject);
    procedure cdsDataRECEIVE_DATEChange(Sender: TField);
    procedure cdsDataDELIVERY_DATEChange(Sender: TField);
    procedure actFinOrderUpdate(Sender: TObject);
    procedure actFinOrderExecute(Sender: TObject);
    procedure cdsDataDELIVERY_OBJECT_BRANCH_CODEChange(Sender: TField);
    procedure actExceptEventsUpdate(Sender: TObject);
    procedure actExceptEventsExecute(Sender: TObject);
    procedure actAcuirePriceExecute(Sender: TObject);
    procedure actLeasePriceExecute(Sender: TObject);
    procedure actAcuirePriceUpdate(Sender: TObject);
    procedure actLeasePriceUpdate(Sender: TObject);
    procedure actIsSaleRequiredExecute(Sender: TObject);
    procedure cdsDataDELIVERY_DECISION_CODEChange(Sender: TField);
    procedure cdsDataPRODUCT_CODEChange(Sender: TField);
    procedure cdsDataACCOUNT_MEASURE_COEFChange(Sender: TField);
    procedure actBOIOrderUpdate(Sender: TObject);
    procedure actBOIOrderExecute(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FWorkAccountQuantityChanging: TTrySinglePassSection;
    FPricesChanging: TTrySinglePassSection;
    FAssigningDefaults: TSinglePassSection;
    FDCDDataSet: TAbmesClientDataSet;
    FHasDC: Boolean;
    FOldCurrencyCode: Variant;
    FOldAgreeCurrencyCode: Variant;
    FOldDeliveryTotalPrice: Variant;
    FOldDeliveryTotalPriceSC: Variant;
    FParRelProductExists: Boolean;
    FFinOrderPartnerCode: Integer;
    FFinOrderBaseDate: TDateTime;
    FProdOrderBaseType: TProdOrderBaseType;
    FMultiDecisionDataSet: TAbmesClientDataSet;
    FNewDeliveryProjectDataSet: TAbmesClientDataSet;
    FInitialFinOrderCode: Integer;
    FFinalFinOrderCode: Integer;

    procedure ValidateDates;
    procedure SetupReadOnly;
    procedure OpenProductInfo;
    procedure OpenSecondaryCurrencyRates;
    procedure LoadSaleID;
    procedure CalcParRelProductExists;
    procedure LoadDefaults;
    function GetPartnerCodeForFinOrder: Integer;
    function GetBaseDateForFinOrder: TDateTime;
    procedure ClearNewFinOrderData;
    function LeaseDateUnitQuantity: Extended;
    procedure ShowProductPartnerPrice(AObtainmentType: TObtainmentType);
    procedure PriceActionUpate(ASender: TObject);
    function IsInvisibleInsertingDeliveryProject: Boolean;
  protected
    function GetOriginalFormCaption: string; override;
    function GetPrintEnabled: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function IsQuantityField(const AField: TAbmesFloatField): Boolean; override;
    procedure DoApplyUpdates; override;
  public
    procedure Initialize; override;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      ADCDDataSet: TAbmesClientDataSet = nil;
      AProductClass: TProductClass = pcNone;
      AMultiDecisionDataSet: TAbmesClientDataSet = nil;
      ANewDeliveryProjectDataSet: TAbmesClientDataSet = nil); reintroduce; virtual;

    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      ADCDDataSet: TAbmesClientDataSet = nil;
      AProductClass: TProductClass = pcNone;
      AMultiDecisionDataSet: TAbmesClientDataSet = nil;
      ANewDeliveryProjectDataSet: TAbmesClientDataSet = nil): Boolean;

    procedure ReleaseForm; override;
  end;

  TfmDeliveryClass = class of TfmDelivery;

implementation

uses
  dMain, fVIMQuantity, uClientUtils, uUtils, AbmesDialogs,
  uOpenVIMConsts, fStoreDealIn, Math,
  uTreeClientUtils, uDocUtils, uCompanyKinds, uCompanyClientUtils,
  uDeliveryUtils, uUserActivityConsts, fTreeSelectForm, fDeliveryStoreDeals,
  uColorConsts, uDeliveryDealTypes, uAspectTypes, fSale, Variants,
  fParRelProduct, uProductClientUtils, fNewFinOrder, fFinOrder, uBorderRelTypes,
  uFinOrderRequirementClientUtils, uStreamTypes, fMain,
  uExceptEventClientUtils, fExceptEvents, uClientDateTime,
  fProductPartnerPrice, uFinanceClientUtils, uCompanyStatuses, uComboBoxUtils,
  uSaleOrderTypes, fGroupSale, uDCDModes, fBOIMarkingOrder, uBudgetClientUtils;

{$R *.DFM}

resourcestring
  SDeliveryNotAttached = 'ОПД не е свързан с група!';
  SVendor = 'Доставчик';

  SZeroAccountQuantityError = 'Счетоводното количество трябва да е по-голямо от 0!';
  SZeroWorkQuantityError = 'Работното количество трябва да е по-голямо от 0!';
  SDeliverySaved = 'Доставката е записана под номер %d';

  SCannotAnnul =
    'Не можете да анулирате настоящия ОПД,' + SLineBreak +
    'защото по него има реални постъпления!';

  SContractAnnulConfirm_PSD =
    'Анулирането на настоящия ОПД' + SLineBreak +
    'автоматично ще анулира и планираното по него' + SLineBreak +
    'постъпление!' + SLineBreak +
    SLineBreak +
    'Желаете ли анулиране?';

  SContractCloseConfirm_PSD =
    'Приключването на настоящия ОПД автоматично ще маркира като приключено и планираното по него постъпление!' + SLineBreak +
    SLineBreak +
    'Желаете ли приключване?';

  SConfirmLastDeliveryProjectFinish =
    'Приключвате последен Обособен Диалог в рамките на Пакет Диалози с Доставчик, който също ще бъде приключен!';

  SDeliveryDateDeviationWarning =
    'Дата на Получаване е по-късна от Дата на Отрицателна Наличност' + SLineBreak +
    'Желаете ли запис?';

  SNoCurrencyRateForDeliveryDate =
    'Няма въведени валутни курсове за Дата на Получаване и не може' + SLineBreak +
    'да бъде сравнена договорената единична цена със записаната цена' + SLineBreak +
    'на придобиване на Управляемия Обект' + SLineBreak +
    'Желаете ли продължение?';

  SSaleNotFound = 'Не съществува ОПП с такава идентификация';

  SFinishingRequired = 'Решението изисква да приключите ОДД!';

{ TfmDelivery }

procedure TfmDelivery.FormCreate(Sender: TObject);
begin
  inherited;
  frDeficitCoverDate.FieldNames:= 'DEFICIT_COVER_DATE';
  frDCDLeaseDates.FieldNames:= 'P_RECEIVE_DATE;P_RETURN_DATE';
  frPSDStore.FieldNames:= 'PSD_STORE_CODE';
  frVendor.FieldNames:= 'VENDOR_COMPANY_CODE';
  frVendor.CountryVisible:= True;
  frVendor.ParRelButtonVisible:= True;
  frVendor.ShownCompanyStatuses:= ActiveCompanyStatuses;
  frProduct.FieldNames:= 'PRODUCT_CODE;VENDOR_COMPANY_CODE';
  frProduct.TreeDetailSelection:= tdsInstance;
  frProduct.SpecStateVisible:= False;
  frProduct.PriorityVisible:= False;
  frProduct.MeasureVisible:= False;
  frProduct.AccountMeasureVisible:= False;
  frProduct.TechMeasureVisible:= False;
  frProduct.CommonStatusVisible:= False;
  frProduct.ProductOriginVisible:= False;
  frProduct.NotesVisible:= False;
  frProduct.ProductPeriodsButtonVisible:= True;
  frProduct.UseShortParnterProductNamesCaption:= True;
  frDeliveryDate.FieldNames:= 'DELIVERY_DATE';
  frMediator.FieldNames:= 'MEDIATOR_COMPANY_CODE';
  frMediator.FilterCompanyKind:= ckMediator;
  frDecisionEmployee.FieldNames:= 'DECISION_EMPLOYEE_CODE';
  frDialogEmployee.FieldNames:= 'DIALOG_EMPLOYEE_CODE';
  frLeaseDates.FieldNames:= 'RECEIVE_DATE;RETURN_DATE';
  frPrognosis.FieldNames:= 'PROGNOSIS_BEGIN_DATE;PROGNOSIS_END_DATE';
  frPrognosis2.FieldNames:= 'PROGNOSIS_BEGIN_DATE;PROGNOSIS_END_DATE';

  frStartDate.FieldNames:= 'START_DATE';
  frRegisterDate.FieldNames:= 'REGISTER_DATE';
  frPlanPositionDate.FieldNames:= 'PLAN_POSITION_DATE';
  frRealPositionDate.FieldNames:= 'REAL_POSITION_DATE';
  frPlanVendorPositionDate.FieldNames:= 'PLAN_VENDOR_POSITION_DATE';
  frRealVendorPositionDate.FieldNames:= 'REAL_VENDOR_POSITION_DATE';
  frPlanDecisionDate.SetDataSet(cdsDeficitCoverDecision);
  frPlanDecisionDate.FieldNames:= 'PLAN_DECISION_DATE';
  frRealDecisionDate.FieldNames:= 'REAL_DECISION_DATE';
  frInvoiceDate.FieldNames:= 'INVOICE_DATE';
  frInvoiceDate2.FieldNames:= 'INVOICE_DATE';

  lblBaseCurrency.Caption:= LoginContext.BaseCurrencyAbbrev;
  lblBaseCurrencyAbbrev.Caption:= LoginContext.BaseCurrencyAbbrev;

  lblSecondaryCurrencyAbbrev2.Caption:= LoginContext.SecondaryCurrencyAbbrev;
  lblSecondaryCurrencyAbbrev5.Caption:= LoginContext.SecondaryCurrencyAbbrev;
  lblSecondaryCurrencyAbbrev6.Caption:= LoginContext.SecondaryCurrencyAbbrev;
  lblSecondaryCurrencyAbbrev7.Caption:= LoginContext.SecondaryCurrencyAbbrev;

  FOldCurrencyCode:= -1;
  FOldAgreeCurrencyCode:= -1;
  FOldDeliveryTotalPrice:= -1;

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsDataTOTAL_PRICE,
      cdsDataSINGLE_PRICE,
      cdsDataMAX_BASE_SINGLE_PRICE,
      cdsDataOUR_OFFER_SINGLE_PRICE,
      cdsDataVENDOR_OFFER_SINGLE_PRICE,
      cdsDataACCOUNT_MAX_BASE_SINGLE_PRICE,
      cdsDataACCOUNT_SINGLE_PRICE,
      cdsDataACC_OUR_OFFER_SINGLE_PRICE,
      cdsDataACC_VENDOR_OFFER_SINGLE_PRICE,
      cdsData_AGREE_CURRENCY_ABBREV,
      cdsData_DELIVERY_TOTAL_PRICE,
      cdsData_DELIVERY_TOTAL_PRICE_SC,
      cdsDeliveryProductInfoMARKET_PRICE,
      cdsDeliveryProductInfoACC_MARKET_PRICE,
      cdsDeliveryProductInfoDELIVERY_LEASE_PRICE,
      cdsDeliveryProductInfoACC_DELIVERY_LEASE_PRICE,
      cdsDeliveryProductInfo_MARKET_PRICE_CURRENCY_ABBREV,
      cdsDeliveryProductInfo_DELIVERY_LEASE_CURRENCY_ABBREV]);

  HasDocItemsField:= cdsDataHAS_DOC;

  FWorkAccountQuantityChanging.AddCascadedSection(FPricesChanging);
  FAssigningDefaults.AddCascadedSection(FWorkAccountQuantityChanging);
end;

procedure TfmDelivery.FormShow(Sender: TObject);
begin
  inherited;
  actForm.Update;

  if not IsInvisibleInsertingDeliveryProject then
    CalcParRelProductExists;

  if Assigned(FMultiDecisionDataSet) then
    InvisibleOperation/
      cdsData.SafeEdit/
        procedure begin
          cdsData.AssignFields(FMultiDecisionDataSet);
          if not cdsDataDELIVERY_OBJECT_BRANCH_CODE.IsNull then
            begin
              cdsDataDELIVERY_OBJECT_BRANCH_CODE.Clear;
              actCreateDeliveryContract.Execute;
            end;
        end;

  if Assigned(FNewDeliveryProjectDataSet) then
    InvisibleOperation/
      procedure begin
        cdsData.SafeEdit/
          cdsData.AssignFieldsProc(FNewDeliveryProjectDataSet);

        DoApplyUpdates;
      end;
end;

function TfmDelivery.GetBaseDateForFinOrder: TDateTime;
begin
  Result:= cdsDataDELIVERY_DATE.AsDateTime;
end;

function TfmDelivery.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

function TfmDelivery.GetPartnerCodeForFinOrder: Integer;
begin
  Result:= cdsDataVENDOR_COMPANY_CODE.AsInteger;
end;

function TfmDelivery.GetPrintEnabled: Boolean;
begin
  Result:= inherited GetPrintEnabled and (dsData.DataSet.State = dsBrowse);
end;

procedure TfmDelivery.CalcParRelProductExists;
begin
  FParRelProductExists:=
    dmMain.SvrParRelProducts.ParRelProductExists(
       cdsDataPARTNER_CODE.AsInteger,
       cdsDataBORDER_REL_TYPE_CODE.AsInteger,
       cdsDataPRODUCT_CODE.AsInteger);
end;

function TfmDelivery.LeaseDateUnitQuantity: Extended;
begin
  if (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease) then
    Result:= cdsDataLEASE_DATE_UNIT_QTY.AsFloat
  else
    Result:= 1;
end;

procedure TfmDelivery.cdsData_DC_STATUS_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= DeliveryStatuses[Sender.AsInteger];
end;

procedure TfmDelivery.cdsData_STATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= DeliveryDialogStatuses[Sender.AsInteger];
end;

procedure TfmDelivery.cdsDeficitCoverDecisionAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not IsInvisibleInsertingDeliveryProject then
    if (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger = ddtImport) then
      begin
        frVendor.FilterCompanyKind:= ckClient;
        frVendor.PriorityCompanyKind:= ckClient;
      end
    else
      begin
        frVendor.FilterCompanyKind:= ckVendor;
        frVendor.PriorityCompanyKind:= ckVendor;
      end;
end;

procedure TfmDelivery.cdsDeficitCoverDecisionCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsDeficitCoverDecision_TOTAL_LEASE_QUANTITY.AsVariant:=
    cdsDeficitCoverDecisionP_WORK_QUANTITY.AsVariant * cdsDeficitCoverDecisionP_LEASE_DATE_UNIT_QUANTITY.AsVariant;
end;

procedure TfmDelivery.cbSaleBranchExit(Sender: TObject);
begin
  inherited;
  LoadSaleID;
end;

procedure TfmDelivery.cdsDataACCOUNT_MEASURE_COEFChange(Sender: TField);
begin
  inherited;
  FWorkAccountQuantityChanging.TempEnter/
    procedure begin
      cdsDataACCOUNT_QUANTITY.AsVarFloat:= cdsDataWORK_QUANTITY.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;
      cdsDataOUR_OFFER_ACCOUNT_QUANTITY.AsVarFloat:= cdsDataOUR_OFFER_QUANTITY.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;
      cdsDataACC_OUR_OFFER_SINGLE_PRICE.AsVarFloat:= VarToFloat(SafeDiv(cdsDataOUR_OFFER_SINGLE_PRICE, cdsDataACCOUNT_MEASURE_COEF));
      cdsDataACCOUNT_MAX_BASE_SINGLE_PRICE.AsVarFloat:= VarToFloat(SafeDiv(cdsDataMAX_BASE_SINGLE_PRICE, cdsDataACCOUNT_MEASURE_COEF));
      cdsDataVENDOR_OFFER_ACCOUNT_QUANTITY.AsVarFloat:= cdsDataVENDOR_OFFER_QUANTITY.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;
      cdsDataACC_VENDOR_OFFER_SINGLE_PRICE.AsVarFloat:= VarToFloat(SafeDiv(cdsDataVENDOR_OFFER_SINGLE_PRICE, cdsDataACCOUNT_MEASURE_COEF));
      cdsDataACCOUNT_SINGLE_PRICE.AsVarFloat:= VarToFloat(SafeDiv(cdsDataSINGLE_PRICE, cdsDataACCOUNT_MEASURE_COEF));
    end;
end;

procedure TfmDelivery.cdsDataWORK_QUANTITYChange(Sender: TField);
begin
  inherited;
  FWorkAccountQuantityChanging.TempEnter/
    procedure begin
      cdsDataACCOUNT_QUANTITY.AsVarFloat:= cdsDataWORK_QUANTITY.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;
      cdsDataTOTAL_PRICE.AsVarFloat:= cdsDataSINGLE_PRICE.AsFloat * cdsDataWORK_QUANTITY.AsFloat * LeaseDateUnitQuantity;
    end;
end;

procedure TfmDelivery.cdsDataACCOUNT_QUANTITYChange(Sender: TField);
begin
  inherited;
  FWorkAccountQuantityChanging.TempEnter/
    procedure begin
      cdsDataWORK_QUANTITY.AsVarFloat:= VarToFloat(SafeDiv(cdsDataACCOUNT_QUANTITY, cdsDataACCOUNT_MEASURE_COEF));
      cdsDataTOTAL_PRICE.AsVarFloat:= cdsDataSINGLE_PRICE.AsFloat * cdsDataWORK_QUANTITY.AsFloat * LeaseDateUnitQuantity;
    end;
end;

procedure TfmDelivery.cdsDataACCOUNT_MAX_BASE_SINGLE_PRICEChange(Sender: TField);
begin
  inherited;
  FPricesChanging.TempEnter/
    procedure begin
      cdsDataMAX_BASE_SINGLE_PRICE.AsVarFloat:= cdsDataACCOUNT_MAX_BASE_SINGLE_PRICE.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;
    end;
end;

procedure TfmDelivery.cdsDataACCOUNT_SINGLE_PRICEChange(Sender: TField);
begin
  inherited;
  FPricesChanging.TempEnter/
    procedure begin
      cdsDataTOTAL_PRICE.AsVarFloat:= cdsDataACCOUNT_SINGLE_PRICE.AsFloat * cdsDataACCOUNT_QUANTITY.AsFloat * LeaseDateUnitQuantity;
      cdsDataSINGLE_PRICE.AsVarFloat:= cdsDataACCOUNT_SINGLE_PRICE.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;
    end;
end;

procedure TfmDelivery.cdsDataACC_OUR_OFFER_SINGLE_PRICEChange(Sender: TField);
begin
  inherited;
  FPricesChanging.TempEnter/
    procedure begin
      cdsDataOUR_OFFER_SINGLE_PRICE.AsVarFloat:= cdsDataACC_OUR_OFFER_SINGLE_PRICE.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;
    end;
end;

procedure TfmDelivery.cdsDataACC_VENDOR_OFFER_SINGLE_PRICEChange(Sender: TField);
begin
  inherited;
  FPricesChanging.TempEnter/
    procedure begin
      cdsDataVENDOR_OFFER_SINGLE_PRICE.AsVarFloat:= cdsDataACC_VENDOR_OFFER_SINGLE_PRICE.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;
    end;
end;

procedure TfmDelivery.cdsDataAfterClose(DataSet: TDataSet);
begin
  inherited;
  cdsDeficitCoverDecision.Close;
end;

procedure TfmDelivery.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FHasDC:= not cdsDataDELIVERY_OBJECT_BRANCH_CODE.IsNull;
end;

procedure TfmDelivery.ClearNewFinOrderData;
begin
  if cdsDataFIN_ORDER_CODE.IsNull and
     ( cdsDataDELIVERY_OBJECT_BRANCH_CODE.IsNull or
       (FFinOrderPartnerCode <> GetPartnerCodeForFinOrder) or
       (FFinOrderBaseDate <> GetBaseDateForFinOrder) ) then
    begin
      CheckEditMode(cdsData);
      cdsDataFO_BRANCH_CODE.Clear;
      cdsDataFO_EXEC_DEPT_CODE.Clear;
      cdsDataFO_PRIORITY_CODE.Clear;
      cdsDataFO_WORK_FINANCIAL_PRODUCT_CODE.Clear;
      cdsDataSPEC_FIN_MODEL_CODE.Clear;
    end;
end;

procedure TfmDelivery.CloseDataSets;
begin
  inherited;
  cdsVendorOffices.Close;
  cdsBranches.Close;
  cdsDeliveryTypes.Close;
  cdsCountries.Close;
  cdsCurrencies.Close;
  cdsShipmentTypes.Close;
  cdsCustomhouses.Close;
  cdsPriorities.Close;
  cdsDecisionTypes.Close;
  cdsDateUnits.Close;
  cdsDeliveryProductInfo.Close;
  cdsSecondaryCurrencyRates.Close;
  pdsSaleID.Close;
end;

procedure TfmDelivery.DatesValidate(Sender: TField);
begin
  inherited;
  ValidateDates;
end;

procedure TfmDelivery.DoApplyUpdates;
begin
  inherited;
  FFinalFinOrderCode:= cdsDataFIN_ORDER_CODE.AsInteger;
end;

procedure TfmDelivery.edtSaleNoExit(Sender: TObject);
begin
  inherited;
  LoadSaleID;
end;

procedure TfmDelivery.OpenDataSets;
begin
  inherited;
  Screen.TempCursor(crSQLWait)/
    procedure begin
      OpenSecondaryCurrencyRates;
      cdsCurrencies.Open;
      cdsBranches.Open;
      cdsDeliveryTypes.Open;
      cdsCountries.Open;
      cdsShipmentTypes.Open;
      cdsCustomhouses.Open;
      cdsPriorities.Open;

      cdsDecisionTypes.Open;
      Assert(IntToAspectType(cdsDeficitCoverDecisionASPECT_TYPE_CODE.AsInteger) in [atRealization, atEstimation]);
      if (cdsDeficitCoverDecisionASPECT_TYPE_CODE.AsInteger = AspectTypeToInt(atRealization)) then
        cdsDecisionTypes.Filter:= '(IS_REALIZATION_BOUND = 1)'
      else
        cdsDecisionTypes.Filter:= '(IS_ESTIMATION_BOUND = 1)';
      cdsDecisionTypes.Filtered:= True;

      cdsDateUnits.Open;
      OpenProductInfo;
      pdsSaleID.Open;
      CheckEditMode(pdsSaleID);
      AssignFields(cdsData, pdsSaleID);

      if not cdsDataVENDOR_COMPANY_CODE.IsNull then
        begin
          cdsVendorOffices.Close;
          cdsVendorOffices.Params.ParamByName('COMPANY_CODE').AsInteger:= cdsDataVENDOR_COMPANY_CODE.AsInteger;
          cdsVendorOffices.Open;
        end;

      // force calc fields
      cdsData.First;
    end;
end;

procedure TfmDelivery.OpenProductInfo;
begin
  if cdsDeliveryProductInfo.Active then
    cdsDeliveryProductInfo.Close;

  SetParams(cdsDeliveryProductInfo.Params, cdsDeficitCoverDecision);
  SetParams(cdsDeliveryProductInfo.Params, cdsData);
  cdsDeliveryProductInfo.Params.ParamByName('TO_DATE').Value:= cdsDataDELIVERY_DATE.AsVariant;

  cdsDeliveryProductInfo.Open;
end;

procedure TfmDelivery.OpenSecondaryCurrencyRates;
begin
  with cdsSecondaryCurrencyRates do
    begin
      Close;
      if cdsDataREAL_DECISION_DATE.IsNull then
        Params.ParamByName('RATE_DATE').AsDateTime:= ContextDate
      else
        Params.ParamByName('RATE_DATE').AsDateTime:= cdsDataREAL_DECISION_DATE.AsDateTime;
      Open;
    end;
end;

procedure TfmDelivery.PriceActionUpate(ASender: TObject);
begin
  (ASender as TAction).Enabled:=
    (not cdsDataPRODUCT_CODE.IsNull) and
    (not cdsDataVENDOR_COMPANY_CODE.IsNull) and
    (not cdsDataDELIVERY_DATE.IsNull);
end;

procedure TfmDelivery.ReleaseForm;
var
  FinOrderCode: Integer;
begin
  if IsDataModified and
     (FFinalFinOrderCode <> FInitialFinOrderCode) then
    FinOrderCode:= FFinalFinOrderCode
  else
    FinOrderCode:= 0;

  inherited;

  if (FinOrderCode > 0) and
     dmMain.LoginContext.OpenNewFinOrder and
     dmMain.LoginContext.HasUserActivity(uaRealFinancialModelEdit) then
    TfmFinOrder.ShowModel(FinOrderCode, emEdit);
end;

procedure TfmDelivery.cdsDataREAL_DECISION_DATEChange(Sender: TField);
begin
  inherited;
  OpenSecondaryCurrencyRates;
end;

procedure TfmDelivery.cdsDataRECEIVE_DATEChange(Sender: TField);
begin
  inherited;
  LoadDefaults;
end;

procedure TfmDelivery.cdsDataOUR_OFFER_ACCOUNT_QUANTITYChange(Sender: TField);
begin
  inherited;
  FWorkAccountQuantityChanging.TempEnter/
    procedure begin
      cdsDataOUR_OFFER_QUANTITY.AsVarFloat:= VarToFloat(SafeDiv(Sender, cdsDataACCOUNT_MEASURE_COEF));
    end;
end;

procedure TfmDelivery.cdsDataOUR_OFFER_QUANTITYChange(Sender: TField);
begin
  inherited;
  FWorkAccountQuantityChanging.TempEnter/
    procedure begin
      cdsDataOUR_OFFER_ACCOUNT_QUANTITY.AsVarFloat:= Sender.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;
    end;
end;

procedure TfmDelivery.cdsDataOUR_OFFER_SINGLE_PRICEChange(Sender: TField);
begin
  inherited;
  FPricesChanging.TempEnter/
    procedure begin
      cdsDataACC_OUR_OFFER_SINGLE_PRICE.AsVarFloat:= VarToFloat(SafeDiv(cdsDataOUR_OFFER_SINGLE_PRICE, cdsDataACCOUNT_MEASURE_COEF));
    end;
end;

procedure TfmDelivery.cdsDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  DoProductFieldChanged(Sender, nil, nil, cdsDataMEASURE_CODE, cdsDataACCOUNT_MEASURE_CODE, cdsDataACCOUNT_MEASURE_COEF);
  cdsDataSINGLE_PRICE.Clear;
  LoadDefaults;
end;

procedure TfmDelivery.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if not cdsDataDELIVERY_DECISION_CODE.IsNull or
     not cdsDataDECISION_EMPLOYEE_CODE.IsNull or
     not cdsDataREAL_DECISION_DATE.IsNull then
    CheckRequiredFields([cdsDataREAL_DECISION_DATE, cdsDataDELIVERY_DECISION_CODE, cdsDataDECISION_EMPLOYEE_CODE]);

  if (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger = ddtImport) and
     (cdsDeficitCoverDecisionASPECT_TYPE_CODE.AsInteger = AspectTypeToInt(atRealization)) and
     (not cdsDataDELIVERY_DECISION_CODE.IsNull) and
     (cdsData_ALLOWS_DC.AsBoolean) and
     (actIsSaleRequired.Checked) then
    CheckRequiredFields([cdsDataSALE_OBJECT_BRANCH_CODE, cdsDataSALE_OBJECT_CODE]);

  if not cdsDataDELIVERY_DATE.IsNull and
     (cdsDataDELIVERY_DATE.AsDateTime > cdsDataDEFICIT_COVER_DATE.AsDateTime) and
     not Assigned(FMultiDecisionDataSet) then
    begin
      ConfirmAction(SDeliveryDateDeviationWarning);
    end;

  if not cdsDataINVOICE_NO.IsNull or
     not cdsDataINVOICE_ABBREV.IsNull or
     not cdsDataIS_PROFORM_INVOICE.IsNull or
     not cdsDataINVOICE_DATE.IsNull then
    CheckRequiredFields([cdsDataINVOICE_NO, cdsDataIS_PROFORM_INVOICE, cdsDataINVOICE_DATE]);

  if not cdsDataDELIVERY_OBJECT_BRANCH_CODE.IsNull then
    CheckRequiredField(cdsDataIS_TRANSPORT_FROM_VENDOR);

  if cdsData_DELIVERY_DECISION_REQUIRES_FINISHING.AsBoolean and
     cdsDataFINISH_EMPLOYEE_CODE.IsNull then
    raise Exception.Create(SFinishingRequired);

  CheckRequiredFields(DataSet);

  if actFinOrder.Enabled then
    begin
      if (not cdsDataDELIVERY_OBJECT_BRANCH_CODE.IsNull) and
         cdsDataANNUL_EMPLOYEE_CODE.IsNull and
         cdsDataFO_EXEC_DEPT_CODE.IsNull and
         // reda na dolnite dwe e wajen
         not Assigned(FMultiDecisionDataSet) and
         FinOrderNeeded then
        begin
          actFinOrder.Execute;
        end;

      CheckFinOrderField(cdsDataFO_EXEC_DEPT_CODE);
    end;

  if IsInvisibleInsertingDeliveryProject then
    CheckRequiredField(cdsDataWORK_QUANTITY);
end;

procedure TfmDelivery.cdsDataCalcFields(DataSet: TDataSet);

  procedure CalcDateDiff(ABeginDate, AEndDate: TAbmesSQLTimeStampField; ADiff: TAbmesFloatField);
  begin
    if ABeginDate.IsNull or AEndDate.IsNull then
      ADiff.Clear
    else
      ADiff.AsInteger:= Trunc(
        AEndDate.AsDateTime - ABeginDate.AsDateTime);
  end;

  procedure CalcDateDeviation(APlanDate, ARealDate: TAbmesSQLTimeStampField; ADeviation: TAbmesFloatField);
  begin
    if APlanDate.IsNull then
      ADeviation.Clear
    else
      begin
        if ARealDate.IsNull then
          ADeviation.AsInteger:=
            Trunc(APlanDate.AsDateTime - ContextDate)
        else
          ADeviation.AsInteger:=
            Trunc(APlanDate.AsDateTime - ARealDate.AsDateTime);
      end;
  end;

var
  v, v1, v2: Variant;

begin
  inherited;

  // statuses
  cdsData_STATUS_CODE.AsInteger:=
    CalcDeliveryDialogStatusCode(
      cdsDataANNUL_EMPLOYEE_CODE,
      cdsDataFINISH_EMPLOYEE_CODE,
      cdsDataDELIVERY_OBJECT_BRANCH_CODE,
      cdsDataREAL_DECISION_DATE,
      cdsDeficitCoverDecisionPLAN_DECISION_DATE,
      cdsDataREAL_VENDOR_POSITION_DATE,
      cdsDataPLAN_VENDOR_POSITION_DATE,
      cdsDataREAL_POSITION_DATE,
      cdsDataPLAN_POSITION_DATE);

  if cdsDataDELIVERY_OBJECT_BRANCH_CODE.IsNull then
    cdsData_DC_STATUS_CODE.Clear
  else
    cdsData_DC_STATUS_CODE.AsInteger:=
      CalcDeliveryStatusCode(
        cdsDataDELIVERY_DATE,
        cdsDataSD_QUANTITY,
        cdsDataWORK_QUANTITY,
        cdsDataFINISH_EMPLOYEE_CODE,
        cdsDataANNUL_EMPLOYEE_CODE);

  // dates
  CalcDateDiff(cdsDataSTART_DATE, cdsDataREGISTER_DATE, cdsData_REGISTER_DATE_DIFF);
  CalcDateDiff(cdsDataREGISTER_DATE, cdsDataPLAN_POSITION_DATE, cdsData_PLAN_POSITION_DATE_DIFF);
  CalcDateDiff(cdsDataREGISTER_DATE, cdsDataREAL_POSITION_DATE, cdsData_REAL_POSITION_DATE_DIFF);
  CalcDateDiff(cdsDataPLAN_POSITION_DATE, cdsDataPLAN_VENDOR_POSITION_DATE, cdsData_PLAN_VENDOR_POSITION_DATE_DIFF);
  CalcDateDiff(cdsDataREAL_POSITION_DATE, cdsDataREAL_VENDOR_POSITION_DATE, cdsData_REAL_VENDOR_POSITION_DATE_DIFF);
  CalcDateDiff(cdsDataPLAN_VENDOR_POSITION_DATE, cdsDeficitCoverDecisionPLAN_DECISION_DATE, cdsData_PLAN_DECISION_DATE_DIFF);
  CalcDateDiff(cdsDataREAL_VENDOR_POSITION_DATE, cdsDataREAL_DECISION_DATE, cdsData_REAL_DECISION_DATE_DIFF);
  CalcDateDeviation(cdsDataPLAN_POSITION_DATE, cdsDataREAL_POSITION_DATE, cdsData_DATES_DEVIATION);
  CalcDateDeviation(cdsDataPLAN_VENDOR_POSITION_DATE, cdsDataREAL_VENDOR_POSITION_DATE, cdsData_VENDOR_DATES_DEVIATION);
  CalcDateDeviation(cdsDeficitCoverDecisionPLAN_DECISION_DATE, cdsDataREAL_DECISION_DATE, cdsData_DECISION_DATES_DEVIATION);

  if cdsDeficitCoverDecisionPLAN_DECISION_DATE.isNull or cdsDataREGISTER_DATE.IsNull then
    cdsData_PLAN_PERIOD_DAYS.Clear
  else
    cdsData_PLAN_PERIOD_DAYS.AsInteger:= RealRound(cdsDeficitCoverDecisionPLAN_DECISION_DATE.AsDateTime - cdsDataREGISTER_DATE.AsDateTime);

  if cdsDataREAL_DECISION_DATE.isNull or cdsDataREGISTER_DATE.IsNull then
    cdsData_REAL_PERIOD_DAYS.Clear
  else
    cdsData_REAL_PERIOD_DAYS.AsInteger:= RealRound(cdsDataREAL_DECISION_DATE.AsDateTime - cdsDataREGISTER_DATE.AsDateTime);

  // delivery contract id
  if cdsDataDELIVERY_OBJECT_BRANCH_CODE.IsNull then
    begin
      cdsData_DC_DDTA.Clear;
      cdsData_DC_DCD_BRANCH_ID.Clear;
      cdsData_DC_DCD_CODE.Clear;
      cdsData_DC_DELIVERY_PROJECT_CODE.Clear;
      cdsData_DC_DELIVERY_TYPE_ABBREV.Clear;
    end
  else
    begin
      cdsData_DC_DDTA.Assign(cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_ABBREV);
      cdsData_DC_DCD_BRANCH_ID.Assign(cdsDeficitCoverDecisionDCD_BRANCH_ID);
      cdsData_DC_DCD_CODE.Assign(cdsDeficitCoverDecisionDCD_CODE);
      cdsData_DC_DELIVERY_PROJECT_CODE.Assign(cdsDataDELIVERY_PROJECT_CODE);
      cdsData_DC_DELIVERY_TYPE_ABBREV.Assign(cdsData_DELIVERY_TYPE_ABBREV);
    end;

  // stuff
  cdsData_DCD_OBJECT_BRANCH_CODE.Assign(cdsDeficitCoverDecisionDCD_OBJECT_BRANCH_CODE);

  if cdsDataDELIVERY_VENDOR_OFFICE_CODE.IsNull or IsInvisibleInsertingDeliveryProject then
    cdsData_COUNTRY_ABBREV.Clear
  else
    cdsData_COUNTRY_ABBREV.Assign(frVendor.cdsPartner_COUNTRY_ABBREV);

  // total lease quantities
  cdsData_TOTAL_LEASE_QUANTITY.AsVariant:=
    cdsDataWORK_QUANTITY.AsVariant * cdsDataLEASE_DATE_UNIT_QTY.AsVariant;

  cdsData_OUR_OFFER_TOTAL_LEASE_QUANTITY.AsVariant:=
    cdsDataOUR_OFFER_QUANTITY.AsVariant * cdsDataOUR_OFFER_LEASE_DATE_UNIT_QTY.AsVariant;

  cdsData_V_OFFER_TOTAL_LEASE_QUANTITY.AsVariant:=
    cdsDataVENDOR_OFFER_QUANTITY.AsVariant * cdsDataV_OFFER_LEASE_DATE_UNIT_QTY.AsVariant;

  // total prices
  v1:= cdsDataWORK_QUANTITY.AsVariant;
  if VarIsNull(v1) then
    v1:= cdsDataVENDOR_OFFER_QUANTITY.AsVariant;
  if VarIsNull(v1) then
    v1:= cdsDataOUR_OFFER_QUANTITY.AsVariant;

  if (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease) then
    begin
      if not cdsDataLEASE_DATE_UNIT_QTY.IsNull then
        v1:= v1 * cdsDataLEASE_DATE_UNIT_QTY.AsInteger
      else
        begin
          if not cdsDataV_OFFER_LEASE_DATE_UNIT_QTY.IsNull then
            v1:= v1 * cdsDataV_OFFER_LEASE_DATE_UNIT_QTY.AsInteger
          else
            v1:= v1 * cdsDataOUR_OFFER_LEASE_DATE_UNIT_QTY.AsVariant;
        end;
    end;

  v2:= cdsDataSINGLE_PRICE.AsVariant;
  if VarIsNull(v2) then
    v2:= cdsDataOUR_OFFER_SINGLE_PRICE.AsVariant;
  if VarIsNull(v2) then
    v2:= cdsDataVENDOR_OFFER_SINGLE_PRICE.AsVariant;

  if VarIsNull(v1) or VarIsNull(v2) then
    cdsData_DELIVERY_TOTAL_PRICE.Clear
  else
    cdsData_DELIVERY_TOTAL_PRICE.AsFloat:= v1 * v2;

  cdsData_AGREE_CURRENCY_CODE.AsVariant:= cdsDataCURRENCY_CODE.AsVariant;
  if VarIsNull(cdsData_AGREE_CURRENCY_CODE.AsVariant) then
    cdsData_AGREE_CURRENCY_CODE.AsVariant:= cdsDataOUR_OFFER_CURRENCY_CODE.AsVariant;
  if VarIsNull(cdsData_AGREE_CURRENCY_CODE.AsVariant) then
    cdsData_AGREE_CURRENCY_CODE.AsVariant:= cdsDataVENDOR_OFFER_CURRENCY_CODE.AsVariant;

  if (FOldAgreeCurrencyCode <> cdsData_AGREE_CURRENCY_CODE.AsInteger) then
    begin
      FOldAgreeCurrencyCode:= cdsData_AGREE_CURRENCY_CODE.AsInteger;
      cdsData_AGREE_CURRENCY_ABBREV.AsVariant:=
        cdsCurrencies.Lookup('CURRENCY_CODE', FOldAgreeCurrencyCode, 'CURRENCY_ABBREV');
    end;

  if ( (FOldCurrencyCode <> cdsDataCURRENCY_CODE.AsVariant) or
       (FOldDeliveryTotalPrice <> cdsData_DELIVERY_TOTAL_PRICE.AsVariant) ) and
      cdsSecondaryCurrencyRates.Active then
    with cdsSecondaryCurrencyRates do
      begin
        FOldCurrencyCode:= cdsDataCURRENCY_CODE.AsVariant;
        FOldDeliveryTotalPrice:= cdsData_DELIVERY_TOTAL_PRICE.AsVariant;

        v:= Lookup('CURRENCY_CODE', cdsDataCURRENCY_CODE.AsInteger, 'FIXING');
        if VarIsNull(v) or cdsData_DELIVERY_TOTAL_PRICE.IsNull then
          cdsData_DELIVERY_TOTAL_PRICE_SC.Clear
        else
          cdsData_DELIVERY_TOTAL_PRICE_SC.AsFloat:= cdsData_DELIVERY_TOTAL_PRICE.AsFloat * v;

        FOldDeliveryTotalPriceSC:= cdsData_DELIVERY_TOTAL_PRICE_SC.AsVariant;
      end
  else
    cdsData_DELIVERY_TOTAL_PRICE_SC.AsVariant:= FOldDeliveryTotalPriceSC;
end;

procedure TfmDelivery.cdsDataCURRENCY_CODEChange(Sender: TField);
begin
  inherited;
  OpenProductInfo;
end;

procedure TfmDelivery.cdsDataDELIVERY_DATEChange(Sender: TField);
begin
  inherited;
  LoadDefaults;
  ClearNewFinOrderData;
  OpenProductInfo;
end;

procedure TfmDelivery.cdsDataDELIVERY_DECISION_CODEChange(Sender: TField);
begin
  inherited;
  if (cdsData_ALLOWS_DC.AsBoolean <> actIsSaleRequired.Checked) then
    actIsSaleRequired.Execute;
end;

procedure TfmDelivery.cdsDataDELIVERY_OBJECT_BRANCH_CODEChange(Sender: TField);
begin
  inherited;
  ClearNewFinOrderData;
end;

procedure TfmDelivery.cdsDataMAX_BASE_SINGLE_PRICEChange(Sender: TField);
begin
  inherited;
  FPricesChanging.TempEnter/
    procedure begin
      cdsDataACCOUNT_MAX_BASE_SINGLE_PRICE.AsVarFloat:= VarToFloat(SafeDiv(cdsDataMAX_BASE_SINGLE_PRICE, cdsDataACCOUNT_MEASURE_COEF));
    end;
end;

procedure TfmDelivery.cdsDataNewRecord(DataSet: TDataSet);
begin
  if (DefaultsOrigin = doDataset) then
    FAssigningDefaults.TempEnter/
      procedure begin
        AssignFields(FDCDDataSet, cdsData);
        inherited;
      end;

  Assert(Assigned(FDCDDataSet));

  case DefaultsOrigin of
    doNone:
      begin
        AssignFields(FDCDDataSet, cdsData);
        cdsDataDOC_BRANCH_CODE.Clear;
        cdsDataDOC_CODE.Clear;
        cdsDataWORK_QUANTITY.Clear;
        cdsDataACCOUNT_QUANTITY.Clear;
      end;

    doDataset:
      dmDocClient.CreateDocLike(
        OuterDataSet.FieldByName('DOC_BRANCH_CODE').AsInteger,
        OuterDataSet.FieldByName('DOC_CODE').AsInteger,
        False,
        cdsDataDOC_BRANCH_CODE,
        cdsDataDOC_CODE
      );

    doServer: ;
      // do nothing
  else
    raise Exception.Create('Unknown DefaultsOrigin');
  end;  { case }

  if not IsInvisibleInsertingDeliveryProject then
    cdsDataDELIVERY_PROJECT_CODE.AsInteger:= dmMain.SvrDeliveries.GetNewDeliveryProjectCode(
      cdsDataDCD_OBJECT_BRANCH_CODE.AsInteger,
      cdsDataDCD_OBJECT_CODE.AsInteger
    );

  DoProductFieldChanged(cdsDataPRODUCT_CODE, nil, nil, nil, nil, cdsDataACCOUNT_MEASURE_COEF);

  cdsDataBORDER_REL_TYPE_CODE.Assign(cdsDeficitCoverDecisionBORDER_REL_TYPE_CODE);
  cdsDataPRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
  cdsDataDELIVERY_DEAL_TYPE_CODE.Assign(cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE);

  if (FProductClass = pcFinancial) then
    cdsDataIS_TRANSPORT_FROM_VENDOR.AsBoolean:= False;

  if (cdsDeficitCoverDecisionDCD_MODE_CODE.AsDCDMode = dcdmObjective) then
    begin
      cdsDataPRODUCT_CODE.Assign(cdsDeficitCoverDecisionP_PRODUCT_CODE);
      cdsDataPSD_STORE_CODE.Assign(cdsDeficitCoverDecisionP_PSD_STORE_CODE);
      cdsDataDEFICIT_COVER_DATE.Assign(cdsDeficitCoverDecisionP_DEFICIT_COVER_DATE);
    end;

  if (cdsDeficitCoverDecisionDCD_MODE_CODE.AsDCDMode = dcdmSubjective) then
    begin
      cdsDataVENDOR_COMPANY_CODE.Assign(cdsDeficitCoverDecisionV_VENDOR_COMPANY_CODE);
      cdsDataMEDIATOR_COMPANY_CODE.Assign(cdsDeficitCoverDecisionV_MEDIATOR_COMPANY_CODE);
      cdsDataSTART_DATE.Assign(cdsDeficitCoverDecisionV_START_DATE);
      cdsDataREGISTER_DATE.Assign(cdsDeficitCoverDecisionV_REGISTER_DATE);
      cdsDataPLAN_POSITION_DATE.Assign(cdsDeficitCoverDecisionV_PLAN_POSITION_DATE);
      cdsDataREAL_POSITION_DATE.Assign(cdsDeficitCoverDecisionV_REAL_POSITION_DATE);
      cdsDataPLAN_VENDOR_POSITION_DATE.Assign(cdsDeficitCoverDecisionV_PLAN_VENDOR_POSITION_DATE);
      cdsDataREAL_VENDOR_POSITION_DATE.Assign(cdsDeficitCoverDecisionV_REAL_VENDOR_POSITION_DATE);
    end;
end;

function TfmDelivery.IsInvisibleInsertingDeliveryProject: Boolean;
begin
  Result:= Assigned(FNewDeliveryProjectDataSet);
end;

procedure TfmDelivery.cdsDataVENDOR_COMPANY_CODEChange(Sender: TField);
begin
  inherited;

  cdsVendorOffices.Close;
  if Sender.IsNull then Exit;

  cdsVendorOffices.Params.ParamByName('COMPANY_CODE').AsInteger:=
    Sender.AsInteger;
  cdsVendorOffices.Open;

  cdsDataPARTNER_CODE.Assign(cdsDataVENDOR_COMPANY_CODE);

  LoadDefaults;

  if not IsInvisibleInsertingDeliveryProject then
    CalcParRelProductExists;

  ClearNewFinOrderData;
  OpenProductInfo;

  if not IsInvisibleInsertingDeliveryProject then
    frProduct.PartnerCode:= cdsDataVENDOR_COMPANY_CODE.AsInteger;
end;

procedure TfmDelivery.cdsDataVENDOR_OFFER_ACCOUNT_QUANTITYChange(Sender: TField);
begin
  inherited;
  FWorkAccountQuantityChanging.TempEnter/
    procedure begin
      cdsDataVENDOR_OFFER_QUANTITY.AsVarFloat:= VarToFloat(SafeDiv(Sender, cdsDataACCOUNT_MEASURE_COEF));
    end;
end;

procedure TfmDelivery.cdsDataVENDOR_OFFER_QUANTITYChange(Sender: TField);
begin
  inherited;
  FWorkAccountQuantityChanging.TempEnter/
    procedure begin
      cdsDataVENDOR_OFFER_ACCOUNT_QUANTITY.AsVarFloat:= cdsDataVENDOR_OFFER_QUANTITY.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;
    end;
end;

procedure TfmDelivery.cdsDataVENDOR_OFFER_SINGLE_PRICEChange(Sender: TField);
begin
  inherited;
  FPricesChanging.TempEnter/
    procedure begin
      cdsDataACC_VENDOR_OFFER_SINGLE_PRICE.AsVarFloat:= VarToFloat(SafeDiv(cdsDataVENDOR_OFFER_SINGLE_PRICE, cdsDataACCOUNT_MEASURE_COEF));
    end;
end;

procedure TfmDelivery.ValidateDates;
begin
  CheckDatesAreInOrder(cdsDataSTART_DATE, cdsDataREGISTER_DATE);
  CheckDatesAreInOrder(cdsDataREGISTER_DATE, cdsDataPLAN_POSITION_DATE);
  CheckDatesAreInOrder(cdsDataPLAN_POSITION_DATE, cdsDataPLAN_VENDOR_POSITION_DATE);
  CheckDatesAreInOrder(cdsDataREAL_POSITION_DATE, cdsDataREAL_VENDOR_POSITION_DATE);
  CheckDatesAreInOrder(cdsDataREAL_VENDOR_POSITION_DATE, cdsDataREAL_DECISION_DATE);
  CheckDatesAreInOrder(cdsDataPLAN_POSITION_DATE, cdsDeficitCoverDecisionPLAN_DECISION_DATE);
  CheckDatesAreInOrder(cdsDataPLAN_VENDOR_POSITION_DATE, cdsDeficitCoverDecisionPLAN_DECISION_DATE);
end;

procedure TfmDelivery.actFormUpdate(Sender: TObject);
  
  procedure PositionDialogDates(
    ADeviationField: TAbmesFloatField;
    ALeftAxis, ARightAxis: TLabel;
    ADeviationText: TDBText;
    APlanDateFrame, ARealDateFrame: TfrDateFieldEditFrame;
    ARealDateLabel: TLabel);
  const
    DeviationWidth = 3;
    DeviationColors: array [-1..1] of TColor = (clRed, clBlue, clGreen);
  begin
    with ADeviationField do
      if IsNull then
        begin
          ALeftAxis.Visible:= False;
          ARightAxis.Visible:= False;
          ADeviationText.Visible:= False;

          ARealDateFrame.Left:= APlanDateFrame.Left;
        end
      else
        begin
          ALeftAxis.Visible:= True;
          ALeftAxis.Left:= Max(APlanDateFrame.Left, ARealDateFrame.Left);

          ARightAxis.Visible:= True;
          ARightAxis.Left:= Min(APlanDateFrame.Left, ARealDateFrame.Left) + APlanDateFrame.Width - 2;

          ADeviationText.Visible:= True;
          ADeviationText.Left:= ALeftAxis.Left + 2;
          ADeviationText.Font.Color:= DeviationColors[Sign(AsInteger)];

          ARealDateFrame.Left:= APlanDateFrame.Left - Sign(AsInteger)*DeviationWidth;
        end;

    ARealDateLabel.Left:= ARealDateFrame.Left;
  end;
var
  IsLease: Boolean;

begin
  inherited;

  gbDeliveryPrognosis.Visible:=
    (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtDelivery + [ddtImport]) and (IntToAspectType(cdsDeficitCoverDecisionASPECT_TYPE_CODE.AsInteger) = atEstimation);

  gbDeliveryRealization.Visible:=
    (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtDelivery + [ddtImport]) and (IntToAspectType(cdsDeficitCoverDecisionASPECT_TYPE_CODE.AsInteger) = atRealization);

  gbDeliveryContract.Visible:=
    not cdsDataDELIVERY_DECISION_CODE.IsNull and cdsData_ALLOWS_DC.AsBoolean;
  gbDeliveryContract2.Visible:= gbDeliveryContract.Visible;

  gbPrice.Visible:= (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtDelivery);
  gbPriceImport.Visible:= (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger = ddtImport);
  pnlSale.Visible:= (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger = ddtImport);
  pnlIsSaleRequired.Visible:= (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger = ddtImport);

  pnlBOIOrder.Visible:=
    (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger <> ddtImport) and
    not cdsDataBOI_ORDER_CODE.IsNull;

  gbLeasePrognosis.Visible:=
    (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease) and (IntToAspectType(cdsDeficitCoverDecisionASPECT_TYPE_CODE.AsInteger) = atEstimation);

  gbLeaseRealization.Visible:=
    (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease) and (IntToAspectType(cdsDeficitCoverDecisionASPECT_TYPE_CODE.AsInteger) = atRealization);

  IsLease:= (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease);

  pnlDCDLease.Visible:= IsLease;
  pnlDCDDelivery.Visible:= not IsLease;

  gbPricesLease.Visible:= IsLease;
  gbPricesSell.Visible:= not IsLease;

  if cdsData_STATUS_CODE.IsNull then
    edtStatus.Color:= clBtnFace
  else
    edtStatus.Color:= DeliveryDialogStatusColors[cdsData_STATUS_CODE.AsInteger];

  if cdsData_DC_STATUS_CODE.IsNull then
    edtDCStatus.Color:= clBtnFace
  else
    edtDCStatus.Color:= DeliveryStatusColors[cdsData_DC_STATUS_CODE.AsInteger];

  pnlFinishButton.Visible:=
    (EditMode <> emReadOnly) and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    cdsDataFINISH_EMPLOYEE_CODE.IsNull;
  pnlFinished.Visible:= not cdsDataFINISH_EMPLOYEE_CODE.IsNull;

  pnlAnnulButton.Visible:=
    (EditMode <> emReadOnly) and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
  pnlAnnuled.Visible:= not cdsDataANNUL_EMPLOYEE_CODE.IsNull;

  SetupReadOnly;

  PositionDialogDates(
    cdsData_DATES_DEVIATION,
    lblPositionDatesAxis1,
    lblPositionDatesAxis2,
    dbtDatesDeviation,
    frPlanPositionDate,
    frRealPositionDate,
    lblRealPositionDate
  );
  PositionDialogDates(
    cdsData_VENDOR_DATES_DEVIATION,
    lblVendorPositionDatesAxis1,
    lblVendorPositionDatesAxis2,
    dbtVendorDatesDeviation,
    frPlanVendorPositionDate,
    frRealVendorPositionDate,
    lblRealVendorPositionDate
  );
  PositionDialogDates(
    cdsData_DECISION_DATES_DEVIATION,
    lblDecisionDatesAxis1,
    lblDecisionDatesAxis2,
    dbtDecisionDatesDeviation,
    frPlanDecisionDate,
    frRealDecisionDate,
    lblRealDecisionDate
  );

  if not cdsDataDELIVERY_DATE.IsNull and
     (cdsDataDELIVERY_DATE.AsDateTime > cdsDataDEFICIT_COVER_DATE.AsDateTime) then
    frDeliveryDate.FontColor:= clRed
  else
    frDeliveryDate.FontColor:= clWindowText;

  btnDocs.ImageIndex:= cdsDataHAS_DOC.AsInteger;
  btnDCDDocs.ImageIndex:= cdsDeficitCoverDecisionHAS_DOC.AsInteger;
  btnParRelProductDocs.ImageIndex:= cdsDeliveryProductInfoPRP_HAS_DOC.AsInteger;

  if btnSinglePrice.Down then
    begin
      edtLeaseSecondaryPrice.DataField:= 'DELIVERY_LEASE_PRICE';
      edtMeasureAbbrev.DataField:= 'MEASURE_ABBREV';
      edtMeasureAbbrev2.DataField:= 'MEASURE_ABBREV';
      edtMarketPrice.DataField:= 'MARKET_PRICE';
      edtMaxPrice.DataField:= 'MAX_BASE_SINGLE_PRICE';
      edtMaxPrice2.DataField:= 'MAX_BASE_SINGLE_PRICE';
      edtSinglePrice.DataField:= 'SINGLE_PRICE';
      edtSinglePrice2.DataField:= 'SINGLE_PRICE';
      edtSinglePrice3.DataField:= 'SINGLE_PRICE';
      edtSinglePrice4.DataField:= 'SINGLE_PRICE';
      edtOurOfferSinglePrice.DataField:= 'OUR_OFFER_SINGLE_PRICE';
      edtOurOfferSinglePrice2.DataField:= 'OUR_OFFER_SINGLE_PRICE';
      edtVendorOfferSinglePrice.DataField:= 'VENDOR_OFFER_SINGLE_PRICE';
      edtVendorOfferSinglePrice2.DataField:= 'VENDOR_OFFER_SINGLE_PRICE';
      dbtDisplayMeasure.DataField:= '_MEASURE_ABBREV';
      dbtDisplayMeasure2.DataField:= '_MEASURE_ABBREV';
      dbtDisplayMeasure3.DataField:= '_MEASURE_ABBREV';
      dbtDisplayMeasure4.DataField:= '_MEASURE_ABBREV';
      dbtDisplayMeasure5.DataField:= '_MEASURE_ABBREV';
      dbtDisplayMeasure6.DataField:= '_MEASURE_ABBREV';
      dbtDisplayMeasure7.DataField:= '_MEASURE_ABBREV';
      dbtDisplayMeasure8.DataField:= '_MEASURE_ABBREV';
      dbtDisplayMeasure9.DataField:= '_MEASURE_ABBREV';
    end
  else
    begin
      edtLeaseSecondaryPrice.DataField:= 'ACC_DELIVERY_LEASE_PRICE';
      edtMeasureAbbrev.DataField:= 'ACCOUNT_MEASURE_ABBREV';
      edtMeasureAbbrev2.DataField:= 'ACCOUNT_MEASURE_ABBREV';
      edtMarketPrice.DataField:= 'ACC_MARKET_PRICE';
      edtMaxPrice.DataField:= 'ACCOUNT_MAX_BASE_SINGLE_PRICE';
      edtMaxPrice2.DataField:= 'ACCOUNT_MAX_BASE_SINGLE_PRICE';
      edtSinglePrice.DataField:= 'ACCOUNT_SINGLE_PRICE';
      edtSinglePrice2.DataField:= 'ACCOUNT_SINGLE_PRICE';
      edtSinglePrice3.DataField:= 'ACCOUNT_SINGLE_PRICE';
      edtSinglePrice4.DataField:= 'ACCOUNT_SINGLE_PRICE';
      edtOurOfferSinglePrice.DataField:= 'ACC_OUR_OFFER_SINGLE_PRICE';
      edtOurOfferSinglePrice2.DataField:= 'ACC_OUR_OFFER_SINGLE_PRICE';
      edtVendorOfferSinglePrice.DataField:= 'ACC_VENDOR_OFFER_SINGLE_PRICE';
      edtVendorOfferSinglePrice2.DataField:= 'ACC_VENDOR_OFFER_SINGLE_PRICE';
      dbtDisplayMeasure.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      dbtDisplayMeasure2.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      dbtDisplayMeasure3.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      dbtDisplayMeasure4.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      dbtDisplayMeasure5.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      dbtDisplayMeasure6.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      dbtDisplayMeasure7.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      dbtDisplayMeasure8.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      dbtDisplayMeasure9.DataField:= '_ACCOUNT_MEASURE_ABBREV';
    end;

  pnlLeasePrognosisQuantitiesWork.Visible:= btnSinglePrice.Down;
  pnlLeasePrognosisQuantitiesAccount.Visible:= not btnSinglePrice.Down;
  pnlLeaseRealizationWork.Visible:= btnSinglePrice.Down;
  pnlLeaseRealizationAccount.Visible:= not btnSinglePrice.Down;

  pnlAccountPricesButton.Visible:= (FProdOrderBaseType <> pobtOccCover);
  pnlVendorSep.Visible:= (FProdOrderBaseType <> pobtOccCover);
  gbParRelProduct.Visible:= (FProdOrderBaseType <> pobtOccCover);
  pnlAccountQuantity.Visible:= (FProdOrderBaseType <> pobtOccCover);
  pnlTotalPrice.Visible:= (FProdOrderBaseType <> pobtOccCover);
  pnlInvoice.Visible:= (FProdOrderBaseType <> pobtOccCover);

  pnlTransport1.Visible:= (FProdOrderBaseType <> pobtOccCover);
  pnlTransport11.Visible:= (FProdOrderBaseType <> pobtOccCover) and (FProductClass = pcNormal);
  pnlTransport12.Visible:= (FProdOrderBaseType <> pobtOccCover);
  pnlTransport3.Visible:= (FProdOrderBaseType <> pobtOccCover) and (FProductClass = pcNormal);

  gbDCDQuantityDelivery.Visible:= (cdsDeficitCoverDecisionDCD_MODE_CODE.AsDCDMode = dcdmObjective);
  gbDCDQuantityLease.Visible:= (cdsDeficitCoverDecisionDCD_MODE_CODE.AsDCDMode = dcdmObjective);
  gbTotalQuantity.Visible:= (cdsDeficitCoverDecisionDCD_MODE_CODE.AsDCDMode = dcdmObjective);
end;

procedure TfmDelivery.actIsSaleRequiredExecute(Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    Checked:= not Checked;

  CheckEditMode(cdsData);
  cdsDataSALE_OBJECT_BRANCH_CODE.Clear;
  cdsDataSALE_OBJECT_CODE.Clear;

  CheckEditMode(pdsSaleID);
  pdsSaleIDSALE_BRANCH_CODE.Clear;
  pdsSaleIDSALE_NO.Clear;

  LoadSaleID;
end;

procedure TfmDelivery.actLeasePriceExecute(Sender: TObject);
begin
  inherited;
  ShowProductPartnerPrice(otLease);
end;

procedure TfmDelivery.actLeasePriceUpdate(Sender: TObject);
begin
  inherited;
  PriceActionUpate(Sender);
end;

procedure TfmDelivery.actParRelProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotProduct,
    cdsDeliveryProductInfoPRP_DOC_BRANCH_CODE,
    cdsDeliveryProductInfoPRP_DOC_CODE
  );
end;

procedure TfmDelivery.actParRelProductExecute(Sender: TObject);
begin
  inherited;
  TfmParRelProduct.ShowForm(nil, cdsData, emReadOnly);
end;

procedure TfmDelivery.actParRelProductUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= FParRelProductExists;
end;

procedure TfmDelivery.actSaleExecute(Sender: TObject);
begin
  inherited;
  Assert(cdsDataSALE_ORDER_TYPE_CODE.AsInteger in [sotNormalSaleOrder, sotCurrentQuantity, sotFutureQuantity]);

  if (cdsDataSALE_ORDER_TYPE_CODE.AsInteger = sotNormalSaleOrder) then
    TfmSale.ShowForm(nil, cdsData, emReadOnly, 0)
  else
    TfmGroupSale.ShowForm(nil, cdsData, emReadOnly);
end;

procedure TfmDelivery.actSaleUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDataSALE_OBJECT_BRANCH_CODE.IsNull;
end;

procedure TfmDelivery.actFinishExecute(Sender: TObject);
var
  ConfirmMsg: string;
begin
  inherited;

  CheckRequiredFields(cdsData);

  ConfirmMsg:= SContractCloseConfirm_PSD;
  if (cdsDataUNFINISHED_DCD_DP_COUNT.AsInteger = 1) then
    ConfirmMsg:= SConfirmLastDeliveryProjectFinish + SLineBreak + ConfirmMsg;

  ConfirmAction(ConfirmMsg);

  if (cdsDataFO_STATUS_CODE.AsInteger = fosCompleted) then
    begin
      ConfirmAction(SConfirmFinOrderClose);

      CheckEditMode(cdsData);
      cdsDataFO_CLOSE_REQUESTED.AsBoolean:= True;
    end
  else
    CheckClosingWithFinOrder(cdsDataFO_STATUS_CODE.AsInteger);

  CheckEditMode(cdsData);
  cdsDataFINISH_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataFINISH_DATE.AsDateTime:= ContextDate;
  cdsDataFINISH_TIME.AsDateTime:= ContextTime;
end;

procedure TfmDelivery.actFinOrderExecute(Sender: TObject);
var
  PartnerCode: Integer;
  BaseDate: TDateTime;
begin
  inherited;
  if cdsDataFIN_ORDER_CODE.IsNull then
    begin
      LoginContext.CheckUserActivity(uaNewFinancialOrder);
      PartnerCode:= GetPartnerCodeForFinOrder;
      BaseDate:= GetBaseDateForFinOrder;

      if TfmNewFinOrder.ShowForm(nil, cdsData, emEdit, doNone, PartnerCode, brtVendor, BaseDate, BaseDate, cdsDataDCD_BRANCH_CODE.AsInteger) then
        begin
          FFinOrderPartnerCode:= PartnerCode;
          FFinOrderBaseDate:= BaseDate;
        end
      else
        Abort;
    end
  else
    begin
      if GetApplyUpdatesEnabled then
        FinOrderGeneratorModifiedError;

      TfmFinOrder.ShowForm(nil, dsData.DataSet, emEdit, doNone, False, True);
    end;
end;

procedure TfmDelivery.actFinOrderUpdate(Sender: TObject);

  function CanModifyData: Boolean;
  begin
    Result:=
      (EditMode <> emReadOnly) and
      cdsDataANNUL_EMPLOYEE_CODE.IsNull;
  end;

begin
  inherited;

  (Sender as TAction).Enabled:=
    ( CanModifyData or
      (cdsData.Active and not cdsDataFIN_ORDER_CODE.IsNull) ) and
    (not cdsDataDELIVERY_OBJECT_BRANCH_CODE.IsNull) and
    (not cdsDataVENDOR_COMPANY_CODE.IsNull) and
    (not cdsDataDELIVERY_DATE.IsNull);

  (Sender as TAction).Visible:= (FProdOrderBaseType <> pobtOccCover);
end;

procedure TfmDelivery.actAcuirePriceExecute(Sender: TObject);
begin
  inherited;
  ShowProductPartnerPrice(otAcquire);
end;

procedure TfmDelivery.actAcuirePriceUpdate(Sender: TObject);
begin
  inherited;
  PriceActionUpate(Sender);
end;

procedure TfmDelivery.actAnnulExecute(Sender: TObject);
begin
  inherited;

  if not dmMain.SvrDeliveries.DeliveryCanAnnul(cdsDataDELIVERY_OBJECT_BRANCH_CODE.AsInteger, cdsDataDELIVERY_OBJECT_CODE.AsInteger) then
    raise Exception.Create(SCannotAnnul);

  ConfirmAction(SContractAnnulConfirm_PSD);

  CheckEditMode(cdsData);
  cdsDataANNUL_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataANNUL_DATE.AsDateTime:= ContextDate;
  cdsDataANNUL_TIME.AsDateTime:= ContextTime;
end;

procedure TfmDelivery.actApplyUpdatesExecute(Sender: TObject);
var
  DeliveryProjectCode: Integer;
begin
  DeliveryProjectCode:= cdsDataDELIVERY_PROJECT_CODE.AsInteger;

  inherited;

  if (DeliveryProjectCode <> cdsDataDELIVERY_PROJECT_CODE.AsInteger) then
    ShowMessageFmtEx(SDeliverySaved, [cdsDataDELIVERY_PROJECT_CODE.AsInteger]);
end;

procedure TfmDelivery.actBOIOrderExecute(Sender: TObject);
begin
  inherited;
  TfmBOIMarkingOrder.ShowForm(dmDocClient, cdsData, emReadOnly, doNone, bmInvest);
end;

procedure TfmDelivery.actBOIOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDataBOI_ORDER_CODE.IsNull;
end;

procedure TfmDelivery.actCreateDeliveryContractExecute(Sender: TObject);
begin
  inherited;

  if (FProdOrderBaseType = pobtOccCover) then
    begin
      CheckEditMode(cdsData);
      cdsDataIS_TRANSPORT_FROM_VENDOR.AsBoolean:= False;
    end;

  if (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger = ddtImport) then
    FPricesChanging.TempEnter/
      procedure begin
        cdsDataSINGLE_PRICE.AsFloat:= 0;
        cdsDataTOTAL_PRICE.AsFloat:= 0;
        cdsDataCURRENCY_CODE.AsInteger:= LoginContext.BaseCurrencyCode;
      end;

  if (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease) then
    CheckRequiredFields([
      cdsDataPRODUCT_CODE,
      cdsDataDELIVERY_TYPE_CODE,
      cdsDataIS_ACTIVATED_BY_VENDOR,
      cdsDataVENDOR_COMPANY_CODE,
      cdsDataSTART_DATE,
      cdsDataREGISTER_DATE,
      cdsDataPLAN_POSITION_DATE,
      cdsDataREAL_POSITION_DATE,
      cdsDataPLAN_VENDOR_POSITION_DATE,
      cdsDataREAL_VENDOR_POSITION_DATE,
      cdsDataREAL_DECISION_DATE,
      cdsDataDELIVERY_DECISION_CODE,
      cdsDataRECEIVE_DATE,
      cdsDataRETURN_DATE,
      cdsDataWORK_QUANTITY,
      cdsDataACCOUNT_QUANTITY,
      cdsDataDECISION_EMPLOYEE_CODE,
      cdsDataDIALOG_EMPLOYEE_CODE,
      cdsDataPRIORITY_CODE,
      cdsDataIS_TRANSPORT_FROM_VENDOR
    ])
  else
    CheckRequiredFields([
      cdsDataPRODUCT_CODE,
      cdsDataDELIVERY_TYPE_CODE,
      cdsDataIS_ACTIVATED_BY_VENDOR,
      cdsDataVENDOR_COMPANY_CODE,
      cdsDataSTART_DATE,
      cdsDataREGISTER_DATE,
      cdsDataPLAN_POSITION_DATE,
      cdsDataREAL_POSITION_DATE,
      cdsDataPLAN_VENDOR_POSITION_DATE,
      cdsDataREAL_VENDOR_POSITION_DATE,
      cdsDataREAL_DECISION_DATE,
      cdsDataDELIVERY_DECISION_CODE,
      cdsDataDELIVERY_DATE,
      cdsDataWORK_QUANTITY,
      cdsDataACCOUNT_QUANTITY,
      cdsDataSINGLE_PRICE,
      cdsDataCURRENCY_CODE,
      cdsDataTOTAL_PRICE,
      cdsDataDECISION_EMPLOYEE_CODE,
      cdsDataDIALOG_EMPLOYEE_CODE,
      cdsDataPRIORITY_CODE,
      cdsDataIS_TRANSPORT_FROM_VENDOR
    ]);

  CheckEditMode(cdsData);
  cdsDataDELIVERY_OBJECT_BRANCH_CODE.AsInteger:= 1;
end;

procedure TfmDelivery.actCreateDeliveryContractUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsDataDELIVERY_OBJECT_BRANCH_CODE.IsNull;
end;

procedure TfmDelivery.actDeliveryStoreDealsExecute(Sender: TObject);
begin
  TfmDeliveryStoreDeals.ShowForm(nil, cdsData, emReadOnly, doNone, True, FProductClass);
end;

procedure TfmDelivery.actDeliveryStoreDealsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= FHasDC;
end;

procedure TfmDelivery.actExceptEventsExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaExceptEvents);
  TfmExceptEvents.ShowExceptEventsForGenerator(emReadOnly, eegtDeliveries, cdsData);
end;

procedure TfmDelivery.actExceptEventsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emInsert) and
    (not (cdsData.State in dsEditModes)) and
    (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtDelivery) and
    (cdsDeficitCoverDecisionSTREAM_TYPE_CODE.AsInteger = stReverse) and
    (IntToProductClass(cdsDataPRODUCT_CLASS_CODE.AsInteger) = pcNormal) and
    (IntToProdOrderBaseType(cdsDataPROD_ORDER_BASE_TYPE_CODE.AsInteger) in
      [pobtSaleCover, pobtEnvCover]
    );
end;

procedure TfmDelivery.SetupReadOnly;
var
  IsReadOnly: Boolean;
  IsAnnuled: Boolean;
  IsFinished: Boolean;
  HasDelivery: Boolean;
begin
  IsReadOnly:= (EditMode = emReadOnly);
  IsAnnuled:= not cdsDataANNUL_EMPLOYEE_CODE.IsNull;
  IsFinished:= not cdsDataFINISH_EMPLOYEE_CODE.IsNull;
  HasDelivery:= not cdsDataDELIVERY_OBJECT_BRANCH_CODE.IsNull;

  SetControlsReadOnly(
    IsReadOnly or IsAnnuled or IsFinished,
    [ edtMaxPrice, edtWorkQuantity, edtWorkQuantity2, edtAccountQuantity,
      edtAccountQuantity2, edtAccountQuantity3, edtAccountQuantity4,
      edtLeaseDateUnitQty, edtLeaseDateUnitQty2, cbDateUnit, edtSinglePrice,
      edtSinglePrice2, edtSinglePrice3, edtSinglePrice4, cbCurrency, cbCurrency2,
      cbCurrency3, cbCurrency4, cbType, cbType2, cbPriority, cbPriority2,
      edtOurOfferQuantity, edtOurOfferQuantity2, edtVendorOfferQuantity,
      edtVendorOfferQuantity2, edtQuantity3, edtQuantity4, edtOurOfferAccountQuantity,
      edtOurOfferAccountQuantity2, edtVendorOfferAccountQuantity,
      edtVendorOfferAccountQuantity2, edtOurOfferSinglePrice, edtOurOfferSinglePrice2,
      edtVendorOfferSinglePrice, edtVendorOfferSinglePrice2, cbOurOfferCurrency,
      cbOurOfferCurrency2, cbClientOfferCurrency, cbClientOfferCurrency2,
      edtOurOfferLeaseDateUnitQty, edtVendorOfferLeaseDateUnitQty,
      cbOurOfferLeaseDateUnit, cbVendorOfferLeaseDateUnit, cbLeaseDateUnit,

      edtTotalPrice, edtShipmentDays, ReplacedDBComboBox(cbIsActivatedByVendor),
      cbVendorOffice, cbCustomhouse, cbShipmentType, ReplacedDBComboBox(cbTransportBy)
    ]
  );

  SetControlsReadOnly(
    IsReadOnly or IsAnnuled or IsFinished or not actIsSaleRequired.Checked,
    [cbSaleBranch, edtSaleNo]);

  SetControlReadOnly(IsReadOnly or IsAnnuled or IsFinished or HasDelivery, cbDecisionType);

  SetControlsReadOnly(
    IsReadOnly or IsAnnuled or IsFinished or not HasDelivery,
    [ edtInvoiceNo, edtInvoiceNo2, edtInvoiceAbbrev, edtInvoiceAbbrev2,
      ReplacedDBComboBox(cbIsProformInvoice), ReplacedDBComboBox(cbIsProformInvoice2)
    ]
  );
end;

class function TfmDelivery.ShowForm(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  ADCDDataSet: TAbmesClientDataSet;
  AProductClass: TProductClass;
  AMultiDecisionDataSet: TAbmesClientDataSet;
  ANewDeliveryProjectDataSet: TAbmesClientDataSet): Boolean;
var
  f: TfmDelivery;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, ADCDDataSet, AProductClass, AMultiDecisionDataSet, ANewDeliveryProjectDataSet);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmDelivery.ShowProductPartnerPrice(AObtainmentType: TObtainmentType);
begin
  TfmProductPartnerPrice.ShowForm(dmDocClient, nil, emReadOnly, doNone,
    cdsDataPRODUCT_CODE.AsInteger,
    cdsDataVENDOR_COMPANY_CODE.AsInteger,
    brtVendor,
    AObtainmentType,
    cdsDataDELIVERY_DATE.AsDateTime);
end;

procedure TfmDelivery.actVIMExecute(Sender: TObject);
var
  StartPeriodDate: TDateTime;
begin
  inherited;

  if cdsDataDELIVERY_DATE.IsNull then
    StartPeriodDate:= cdsDataDEFICIT_COVER_DATE.AsDateTime
  else
    StartPeriodDate:= cdsDataDELIVERY_DATE.AsDateTime;

  LoginContext.CheckUserActivity(uaVIMQuantity);
  ShowProductVIM(nil, cdsDataPRODUCT_CODE.AsInteger, StartPeriodDate, False, vofVIMOpenedFromSale, FProductClass); // znam che sedi opened from sale, ne e copy/paste error
end;

procedure TfmDelivery.grdDeliveryStoreDealsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmDelivery.Initialize;
begin
  if IsInvisibleInsertingDeliveryProject then
    begin
      Frames.Remove(frProduct);
      FreeAndNil(frProduct);

      Frames.Remove(frVendor);
      FreeAndNil(frVendor);

      Frames.Remove(frParRelProductStatus);
      FreeAndNil(frParRelProductStatus);

      Frames.Remove(frPSDStore);
      FreeAndNil(frPSDStore);
    end;

  inherited Initialize;

  FProdOrderBaseType:= IntToProdOrderBaseType(cdsDeficitCoverDecisionPROD_ORDER_BASE_TYPE_CODE.AsInteger);

  Utils.Using(uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass))/
    procedure (mp: TStrings) begin
      if (FProdOrderBaseType = pobtOccCover) then
        OccupationProductFixCommonMsgParams(mp);

      RecursivelyFormatCaptions(Self, mp);
    end;

  Utils.Using(
    uParRelProducts.CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      brtVendor,
      pobtSaleCover,
      prpoProduct,
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False))/
    procedure (mp: TStrings) begin
      RecursivelyFormatCaptions(Self, mp);
    end;

  FOriginalFormCaption:= actForm.Caption;

  if not IsInvisibleInsertingDeliveryProject then
    begin
      frProduct.ProductClass:= FProductClass;
      if (FProductClass = pcFinancial) then
        frProduct.PartnerProductNamesVisible:= False;
      if (FProdOrderBaseType = pobtOccCover) then
        frProduct.ProductPeriodsButtonVisible:= False;
    end;

  if (EditMode <> emInsert) then
    cdsData.TempDisableControls/
      procedure begin
        cdsData.Last;
        cdsData.First;
      end;

  if (EditMode = emInsert) then
    OpenProductInfo;

  if not IsInvisibleInsertingDeliveryProject then
    frProduct.PartnerCode:= cdsDataVENDOR_COMPANY_CODE.AsInteger;

  actIsSaleRequired.Checked:= (EditMode = emInsert) or not cdsDataSALE_OBJECT_BRANCH_CODE.IsNull;

  FInitialFinOrderCode:= cdsDataFIN_ORDER_CODE.AsInteger;

  if (EditMode = emInsert) and (DefaultsOrigin <> doDataset) then
    dmDocClient.DSInitDoc(dotDelivery, cdsData);
end;

function TfmDelivery.IsQuantityField(const AField: TAbmesFloatField): Boolean;
begin
  Result:= False;
end;

procedure TfmDelivery.LoadDefaults;
begin
  if FAssigningDefaults.IsEntered or (cdsDataASPECT_TYPE_CODE.AsInteger <> AspectTypeToInt(atRealization)) then
    Exit;

  SetParams(cdsDeliveryDefaults.Params, cdsData);

  cdsDeliveryDefaults.Params.ParamByName('OBTAINMENT_TYPE_CODE').Value:=
    cdsDeficitCoverDecisionOBTAINMENT_TYPE_CODE.AsVariant;

  if (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease) then
    cdsDeliveryDefaults.Params.ParamByName('THE_DATE').Value:= cdsDataRECEIVE_DATE.AsVariant
  else
    cdsDeliveryDefaults.Params.ParamByName('THE_DATE').Value:= cdsDataDELIVERY_DATE.AsVariant;

  cdsDeliveryDefaults.TempOpen/
    procedure begin
      if not cdsDeliveryDefaults.IsEmpty then
        begin
          if (cdsDeficitCoverDecisionDCD_MODE_CODE.AsDCDMode = dcdmSubjective) then
            cdsDataPSD_STORE_CODE.IfIsNullAssign(cdsDeliveryDefaultsSTORE_CODE);

          cdsDataSHIPMENT_DAYS.Assign(cdsDeliveryDefaultsTRANSPORT_DURATION_DAYS);

          if cdsDataSINGLE_PRICE.IsNull then
            cdsDataSINGLE_PRICE.AsVarFloat:= RealRoundTo(cdsDeliveryDefaultsPRICE.AsFloat, -2);

          cdsDataCURRENCY_CODE.IfIsNullAssign(cdsDeliveryDefaultsCURRENCY_CODE);

          if (cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE.AsInteger in [ddtLeaseForSales, ddtLeaseForEnvironment]) then
            cdsDataLEASE_DATE_UNIT_CODE.IfIsNullAssign(cdsDeliveryDefaultsLEASE_DATE_UNIT_CODE);

          cdsDataDELIVERY_VENDOR_OFFICE_CODE.Assign(cdsDeliveryDefaultsPARTNER_OFFICE_CODE);
          cdsDataSHIPMENT_DAYS.Assign(cdsDeliveryDefaultsTRANSPORT_DURATION_DAYS);
          cdsDataMEDIATOR_COMPANY_CODE.Assign(cdsDeliveryDefaultsMEDIATOR_COMPANY_CODE);
          cdsDataSHIPMENT_TYPE_CODE.Assign(cdsDeliveryDefaultsSHIPMENT_TYPE_CODE);
          cdsDataIS_TRANSPORT_FROM_VENDOR.AsBoolean:= not cdsDeliveryDefaultsIS_PARTNER_TRANSPORT.AsBoolean;
          cdsDataCUSTOMHOUSE_CODE.Assign(cdsDeliveryDefaultsCUSTOMHOUSE_CODE);
          cdsDataRESOLVE_DURATION_DAYS.Assign(cdsDeliveryDefaultsRESOLVE_DURATION_DAYS);
        end;
    end;
end;

procedure TfmDelivery.LoadSaleID;
begin
  if cdsData.ReadOnly or not cdsDataANNUL_EMPLOYEE_CODE.IsNull or not cdsDataFINISH_EMPLOYEE_CODE.IsNull then
    Exit;

  if not pdsSaleIDSALE_BRANCH_CODE.IsNull and not pdsSaleIDSALE_NO.IsNull then
    begin
      pdsSaleID.Post;
      cdsSaleID.Open;
      try
        if cdsSaleID.BOF and cdsSaleID.EOF then
          begin
            CheckEditMode(cdsData);
            cdsDataSALE_OBJECT_BRANCH_CODE.Clear;
            cdsDataSALE_OBJECT_CODE.Clear;
            cdsDataSALE_ORDER_TYPE_CODE.Clear;
            cdsDataREQUEST_BRANCH_CODE.Clear;
            cdsDataREQUEST_NO.Clear;
            CheckEditMode(pdsSaleID);
            pdsSaleIDSALE_BRANCH_CODE.Clear;
            pdsSaleIDSALE_NO.Clear;
            raise Exception.Create(SSaleNotFound);
          end;

        if (cdsSaleID.RecordCount > 1) then
          raise Exception.Create('internal error in TfmDelivery.LoadSaleID');

        CheckEditMode(cdsData);
        cdsDataSALE_OBJECT_BRANCH_CODE.Assign(cdsSaleIDPROCESS_OBJECT_BRANCH_CODE);
        cdsDataSALE_OBJECT_CODE.Assign(cdsSaleIDPROCESS_OBJECT_CODE);
        cdsDataSALE_ORDER_TYPE_CODE.Assign(cdsSaleIDSALE_ORDER_TYPE_CODE);
        cdsDataREQUEST_BRANCH_CODE.Assign(cdsSaleIDREQUEST_BRANCH_CODE);
        cdsDataREQUEST_NO.Assign(cdsSaleIDREQUEST_NO);
      finally
        cdsSaleID.Close;
        CheckEditMode(pdsSaleID);
      end;

    end
  else
    begin
      CheckEditMode(cdsData);
      cdsDataSALE_OBJECT_BRANCH_CODE.Clear;
      cdsDataSALE_OBJECT_CODE.Clear;
      cdsDataSALE_ORDER_TYPE_CODE.Clear;
      cdsDataREQUEST_BRANCH_CODE.Clear;
      cdsDataREQUEST_NO.Clear;
    end;
end;

procedure TfmDelivery.cdsDataTOTAL_PRICEChange(Sender: TField);
begin
  inherited;
  FPricesChanging.TempEnter/
    procedure begin
      cdsDataSINGLE_PRICE.AsVarFloat:= VarToFloat(SafeDiv(cdsDataTOTAL_PRICE, cdsDataWORK_QUANTITY.AsFloat * LeaseDateUnitQuantity));
      cdsDataACCOUNT_SINGLE_PRICE.AsVarFloat:= VarToFloat(SafeDiv(cdsDataSINGLE_PRICE, cdsDataACCOUNT_MEASURE_COEF));
    end;
end;

procedure TfmDelivery.cdsDataSINGLE_PRICEChange(Sender: TField);
begin
  inherited;
  FPricesChanging.TempEnter/
    procedure begin
      cdsDataTOTAL_PRICE.AsVarFloat:= cdsDataSINGLE_PRICE.AsFloat * cdsDataWORK_QUANTITY.AsFloat * LeaseDateUnitQuantity;
      cdsDataACCOUNT_SINGLE_PRICE.AsVarFloat:= VarToFloat(SafeDiv(cdsDataSINGLE_PRICE, cdsDataACCOUNT_MEASURE_COEF));
    end;
end;

procedure TfmDelivery.btnDCDDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnDCDDocs, dotDeficitCoverDecision, cdsDeficitCoverDecision);
end;

procedure TfmDelivery.btnDocsClick(Sender: TObject);
var
  AEditMode: TEditMode;
begin
  inherited;

  if cdsData.CanModify and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    cdsDataFINISH_EMPLOYEE_CODE.IsNull then
    AEditMode:= EditMode
  else
    AEditMode:= emReadOnly;

  if (AEditMode = emEdit) then
    CheckEditMode(cdsData);

  dmDocClient.DSOpenDoc(AEditMode, btnDocs, dotDelivery, cdsData);
end;

procedure TfmDelivery.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmDelivery.cdsDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if Assigned(FDCDDataSet) then
    SetParams(cdsDeficitCoverDecision.Params, FDCDDataSet)
  else
    cdsDeficitCoverDecision.Params.Assign(cdsData.Params);
  cdsDeficitCoverDecision.Open;

  if not IsInvisibleInsertingDeliveryProject then
    frVendor.ShowPersonsOnly:=
      (IntToProdOrderBaseType(cdsDeficitCoverDecisionPROD_ORDER_BASE_TYPE_CODE.AsInteger) = pobtOccCover);
end;

procedure TfmDelivery.SetDataParams(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  ADCDDataSet: TAbmesClientDataSet;
  AProductClass: TProductClass;
  AMultiDecisionDataSet: TAbmesClientDataSet;
  ANewDeliveryProjectDataSet: TAbmesClientDataSet);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FDCDDataSet:= ADCDDataSet;
  FProductClass:= AProductClass;
  FMultiDecisionDataSet:= AMultiDecisionDataSet;
  FNewDeliveryProjectDataSet:= ANewDeliveryProjectDataSet;
end;

procedure TfmDelivery.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (cdsDeficitCoverDecisionDCD_MODE_CODE.AsDCDMode = dcdmObjective) then
    if (AFrame = frPSDStore) or
       (AFrame = frProduct) or
       (AFrame = frDeficitCoverDate) then
      begin
        AFrame.ReadOnly:= True;
        Exit;
      end;

  if (cdsDeficitCoverDecisionDCD_MODE_CODE.AsDCDMode = dcdmSubjective) then
    if (AFrame = frVendor) or
       (AFrame = frMediator) or
       (AFrame = frStartDate) or
       (AFrame = frRegisterDate) or
       (AFrame = frPlanPositionDate) or
       (AFrame = frRealPositionDate) or
       (AFrame = frPlanVendorPositionDate) or
       (AFrame = frRealVendorPositionDate) then
      begin
        AFrame.ReadOnly:= True;
        Exit;
      end;

  if (AFrame = frDCDLeaseDates) or
     (AFrame = frPlanDecisionDate) or
     (AFrame = frParRelProductStatus) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  if (AFrame = frInvoiceDate) or
     (AFrame = frInvoiceDate2) then
    begin
      AFrame.ReadOnly:=
        not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
        not cdsDataFINISH_EMPLOYEE_CODE.IsNull or
        cdsDataDELIVERY_OBJECT_BRANCH_CODE.IsNull;

      Exit;
    end;

  if not cdsDataANNUL_EMPLOYEE_CODE.IsNull or not cdsDataFINISH_EMPLOYEE_CODE.IsNull then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  inherited SetDBFrameReadOnly(AFrame);
end;

end.
