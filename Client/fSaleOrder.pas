unit fSaleOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields,
  JvExControls, JvComponent, JvDBLookup, Mask, DBCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateFieldEditFrame, fPartnerFieldEditFrame,
  fPartnerExFieldEditFrame, ToolWin, ComCtrls, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fProductFieldEditFrameBald, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameLabeled, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  JvExMask, JvToolEdit, fDateIntervalFrame, uClientUtils, JvExStdCtrls,
  JvDBCombobox, ParamDataSet, fProductExFieldEditFrame,
  fStatusAbstract, fParRelProductStatus, uProducts, uClientTypes, dDocClient,
  JvCombobox, uParRelProducts;

type
  TfmSaleOrder= class(TEditForm)
    cdsSaleDealTypes: TAbmesClientDataSet;
    cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    dsSaleDealTypes: TDataSource;
    gbRequestSendAndRegisterDates: TGroupBox;
    imgArrow1: TImage;
    dbtRequestRegisterDateDiff: TDBText;
    frRequestSendDate: TfrDateFieldEditFrame;
    frRequestRegisterDate: TfrDateFieldEditFrame;
    lblRequestSendDate: TLabel;
    lblRequestRegisterDate: TLabel;
    frClient: TfrPartnerExFieldEditFrame;
    gbID: TGroupBox;
    lblRequestBranch: TLabel;
    lblRequestNo: TLabel;
    lblRequestLineNo: TLabel;
    lblClientRequestNo: TLabel;
    lblAspectType: TLabel;
    edtRequestBranch: TDBEdit;
    edtRequestNo: TDBEdit;
    edtRequestLineNo: TDBEdit;
    cbAspectType: TJvDBLookupCombo;
    edtClientRequestNo: TDBEdit;
    gbDates: TGroupBox;
    lblOfferSendPlanDate: TLabel;
    lblOfferAnswerPlanDate: TLabel;
    lblDecisionPlanDate: TLabel;
    lblOfferSendDate: TLabel;
    lblOfferAnswerDate: TLabel;
    lblDecisionDate: TLabel;
    lblOfferSendDateAxis1: TLabel;
    lblOfferAnswerDateAxis1: TLabel;
    lblDecisionDateAxis1: TLabel;
    imgArrow2: TImage;
    imgArrow4: TImage;
    dbtOfferAnswerPlanDateDiff: TDBText;
    dbtDecisionPlanDateDiff: TDBText;
    imgArrow3: TImage;
    dbtOfferAnswerDateDiff: TDBText;
    imgArrow5: TImage;
    dbtDecisionDateDiff: TDBText;
    lblOfferSendDateAxis2: TLabel;
    lblOfferAnswerDateAxis2: TLabel;
    dbtOfferSendDateDeviation: TDBText;
    dbtOfferAnswerDateDeviation: TDBText;
    dbtDecisionDateDeviation: TDBText;
    frOfferSendPlanDate: TfrDateFieldEditFrame;
    frOfferSendDate: TfrDateFieldEditFrame;
    frOfferAnswerPlanDate: TfrDateFieldEditFrame;
    frOfferAnswerDate: TfrDateFieldEditFrame;
    frDecisionPlanDate: TfrDateFieldEditFrame;
    frDecisionDate: TfrDateFieldEditFrame;
    lblDecisionDateAxis2: TLabel;
    gbParRelProduct: TGroupBox;
    btnParRelProduct: TButton;
    frMediator: TfrPartnerFieldEditFrame;
    gbDecision: TGroupBox;
    cbDecisionType: TJvDBLookupCombo;
    lblPlanPeriodDays: TLabel;
    edtPlanPeriodDays: TDBEdit;
    lblRealPeriodDays: TLabel;
    edtRealPeriodDays: TDBEdit;
    frDecisionEmployee: TfrEmployeeFieldEditFrameLabeled;
    frManagerEmployee: TfrEmployeeFieldEditFrameLabeled;
    pnlPrices: TPanel;
    gbPricesSell: TGroupBox;
    lblMarketPrice: TLabel;
    edtMarketPrice: TDBEdit;
    gbPricesLease: TGroupBox;
    lblSaleLeaseSecondaryPrice: TLabel;
    lblMinPrice2: TLabel;
    lblMeasureAbbrev: TLabel;
    lblSaleLeaseDateUnitCode: TLabel;
    lblFor: TLabel;
    edtSaleLeaseSecondaryPrice: TDBEdit;
    edtMinPrice2: TDBEdit;
    edtMeasureAbbrev: TDBEdit;
    edtSaleLeaseDateUnitCode: TDBEdit;
    lblMinPrice: TLabel;
    edtMinPrice: TDBEdit;
    gbReceiveConditions: TGroupBox;
    frShipmentStore: TfrDeptFieldEditFrameBald;
    lblShipmentStore: TLabel;
    lblShipmentDays: TLabel;
    edtShipmentDays: TDBEdit;
    cdsCustomhouses: TAbmesClientDataSet;
    cdsCustomhousesCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsCustomhousesCUSTOMHOUSE_NAME: TAbmesWideStringField;
    dsCustomhouses: TDataSource;
    cdsShipmentTypes: TAbmesClientDataSet;
    cdsShipmentTypesSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsShipmentTypesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsShipmentTypesSHIPMENT_TYPE_NAME: TAbmesWideStringField;
    cdsShipmentTypesNOTES: TAbmesWideStringField;
    dsShipmentTypes: TDataSource;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    dsBranches: TDataSource;
    cdsData_REQUEST_BRANCH_IDENTIFIER: TAbmesWideStringField;
    lblBaseCurrencyAbbrev: TLabel;
    cdsDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsDataSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    cdsDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsDataREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsDataREQUEST_NO: TAbmesFloatField;
    cdsDataREQUEST_LINE_NO: TAbmesFloatField;
    cdsDataCLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsDataCLIENT_REQUEST_NO: TAbmesWideStringField;
    cdsDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    cdsDataOFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    cdsDataOFFER_SEND_DATE: TAbmesSQLTimeStampField;
    cdsDataOFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsDataOFFER_ANSWER_DATE: TAbmesSQLTimeStampField;
    cdsDataDECISION_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsDataDECISION_DATE: TAbmesSQLTimeStampField;
    cdsDataDECISION_TYPE_CODE: TAbmesFloatField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataPRODUCT_NAME: TAbmesWideStringField;
    cdsDataPRODUCT_NO: TAbmesFloatField;
    cdsDataPRODUCT_MEASURE_CODE: TAbmesFloatField;
    cdsDataQUANTITY: TAbmesFloatField;
    cdsDataOUR_OFFER_QUANTITY: TAbmesFloatField;
    cdsDataCL_OFFER_QUANTITY: TAbmesFloatField;
    cdsDataMANUFACTURE_QUANTITY: TAbmesFloatField;
    cdsDataMANUFACTURE_DECISION_EXPECTED: TAbmesFloatField;
    cdsDataSINGLE_WEIGHT: TAbmesFloatField;
    cdsDataCURRENCY_CODE: TAbmesFloatField;
    cdsDataSINGLE_PRICE: TAbmesFloatField;
    cdsDataOUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDataCL_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDataRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDataCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDataOUR_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDataRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    cdsDataIS_VENDOR_TRANSPORT: TAbmesFloatField;
    cdsDataSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsDataCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsDataNOTES: TAbmesWideStringField;
    cdsDataSALE_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_NO: TAbmesFloatField;
    cdsDataSALE_TYPE_CODE: TAbmesFloatField;
    cdsDataOKIDU_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataSOS_OKIDU: TAbmesFloatField;
    cdsDataSHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsDataSHIPMENT_STORE_CODE: TAbmesFloatField;
    cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsDataIS_ML_ENTRUSTED: TAbmesFloatField;
    cdsDataIS_ML_NOT_NEEDED: TAbmesFloatField;
    cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsDataFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataFINISH_DATE: TAbmesSQLTimeStampField;
    cdsDataFINISH_TIME: TAbmesSQLTimeStampField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataMANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataTRANSIENT_STATUS_CODE: TAbmesFloatField;
    cdsDataCLIENT_COUNTRY_ABBREV: TAbmesWideStringField;
    cdsDataMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    cdsDataSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsAspectTypes: TAbmesClientDataSet;
    dsAspectTypes: TDataSource;
    cdsAspectTypesASPECT_TYPE_CODE: TAbmesFloatField;
    cdsAspectTypesASPECT_TYPE_ABBREV: TAbmesWideStringField;
    cdsAspectTypesASPECT_TYPE_NAME: TAbmesWideStringField;
    cdsData_REQUEST_REGISTER_DATE_DIFF: TAbmesFloatField;
    cdsData_OFFER_SEND_PLAN_DATE_DIFF: TAbmesFloatField;
    cdsData_OFFER_ANSWER_PLAN_DATE_DIFF: TAbmesFloatField;
    cdsData_DECISION_PLAN_DATE_DIFF: TAbmesFloatField;
    cdsData_OFFER_ANSWER_DATE_DIFF: TAbmesFloatField;
    cdsData_DECISION_DATE_DIFF: TAbmesFloatField;
    cdsData_DECISION_DATE_DEVIATION: TAbmesFloatField;
    cdsData_OFFER_SEND_DATE_DEVIATION: TAbmesFloatField;
    cdsData_OFFER_ANSWER_DATE_DEVIATION: TAbmesFloatField;
    cdsDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsDataACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDataACCOUNT_OUR_OFFER_QUANTITY: TAbmesFloatField;
    cdsDataACCOUNT_CL_OFFER_QUANTITY: TAbmesFloatField;
    cdsDataPROGNOSIS_SALE_COUNT: TAbmesFloatField;
    cdsDataREALIZATION_SALE_COUNT: TAbmesFloatField;
    cdsDataASPECT_TYPE_CODE: TAbmesFloatField;
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsCurrenciesROUNDER: TAbmesFloatField;
    cdsCurrenciesORDER_NO: TAbmesFloatField;
    cdsSecondaryCurrencyRates: TAbmesClientDataSet;
    cdsSecondaryCurrencyRatesCURRENCY_CODE: TAbmesFloatField;
    cdsSecondaryCurrencyRatesRATE_DATE: TAbmesSQLTimeStampField;
    cdsSecondaryCurrencyRatesFIXING: TAbmesFloatField;
    cdsDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsMeasuresMEASURE_NAME: TAbmesWideStringField;
    cdsData_MEASURE_ABBREV: TAbmesWideStringField;
    cdsData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsData_SALE_TOTAL_PRICE: TAbmesFloatField;
    cdsData_SALE_TOTAL_PRICE_SC: TAbmesFloatField;
    cdsDataPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataPROGNOSIS_END_DATE: TAbmesSQLTimeStampField;
    cdsDecisionTypes: TAbmesClientDataSet;
    cdsDecisionTypesDECISION_TYPE_CODE: TAbmesFloatField;
    cdsDecisionTypesDECISION_TYPE_ABBREV: TAbmesWideStringField;
    cdsDecisionTypesDECISION_TYPE_NAME: TAbmesWideStringField;
    dsDecisionTypes: TDataSource;
    cdsCompanyOffices: TAbmesClientDataSet;
    cdsCompanyOfficesCOMPANY_CODE: TAbmesFloatField;
    cdsCompanyOfficesOFFICE_CODE: TAbmesFloatField;
    cdsCompanyOfficesOFFICE_NAME: TAbmesWideStringField;
    dsCompanyOffices: TDataSource;
    cdsData_RECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField;
    cdsDataCOMMON_STATUS_CODE: TAbmesFloatField;
    cdsDataCL_OFFER_CURRENCY_CODE: TAbmesFloatField;
    cdsDataOUR_OFFER_CURRENCY_CODE: TAbmesFloatField;
    cdsDataOUR_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDataOUR_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDataCL_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDataCL_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDataLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDataLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    dsDateUnits: TDataSource;
    cdsData_OUR_OFFER_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsData_CL_OFFER_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsData_OUR_OFFER_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    cdsData_CL_OFFER_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    cdsData_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    cdsPriorities: TAbmesClientDataSet;
    dsPriorities: TDataSource;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NO: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    dsSaleTypes: TDataSource;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    cdsDataRETURN_DATE: TAbmesSQLTimeStampField;
    cdsDataCL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField;
    actFinish: TAction;
    actAnnul: TAction;
    pnlFinishButton: TPanel;
    pnlAnnulButton: TPanel;
    btnFinish: TBitBtn;
    btnAnnul: TBitBtn;
    pnlAnnuled: TPanel;
    chkAnnuled: TCheckBox;
    pnlFinished: TPanel;
    chkFinished: TCheckBox;
    pnlDialog: TPanel;
    gbPlanDialogSale: TGroupBox;
    gbPlanDialogLease: TGroupBox;
    gbRealDialogSale: TGroupBox;
    gbRealDialogLease: TGroupBox;
    gbReceiveDate: TGroupBox;
    gbQuantity: TGroupBox;
    lblReceiveDate: TLabel;
    lblReceiveDateClientOffered: TLabel;
    frReceiveDate: TfrDateFieldEditFrame;
    frReceiveDateClientOffered: TfrDateFieldEditFrame;
    lblQuantity: TLabel;
    lblAccountQuantity: TLabel;
    edtQuantity: TDBEdit;
    edtAccountQuantity: TDBEdit;
    gbPlanShipmentDate: TGroupBox;
    frShipmentDate: TfrDateFieldEditFrame;
    gbPrices: TGroupBox;
    gbSale: TGroupBox;
    dbtMeasure: TDBText;
    dbtAccountMeasure: TDBText;
    edtSinglePrice: TDBEdit;
    lblSinglePrice: TLabel;
    cbCurrency: TJvDBLookupCombo;
    lblCurrency: TLabel;
    lblTotalPrice2: TLabel;
    edtTotalPrice: TDBEdit;
    dbtCurrency: TDBText;
    edtTotalPriceSC: TDBEdit;
    lblSecondaryCurrencyAbbrev4: TLabel;
    lblSaleDealType2: TLabel;
    cbSaleDealType2: TJvDBLookupCombo;
    lblSaleBranch: TLabel;
    cbSaleBranch: TJvDBLookupCombo;
    lblSaleNo: TLabel;
    edtSaleNo: TDBEdit;
    cbSaleTypeCode: TJvDBLookupCombo;
    lblSaleTypeCode: TLabel;
    lblPriority: TLabel;
    cbPriority: TJvDBLookupCombo;
    gbLeaseDates: TGroupBox;
    lblLeaseDatesInterval: TLabel;
    lblLeaseDatesIntervalClientOffered: TLabel;
    frLeaseDatesInterval: TfrDateIntervalFrame;
    frLeaseDatesIntervalClientOffered: TfrDateIntervalFrame;
    gbContractedLeaseConditions: TGroupBox;
    lblLeaseDateUnitQty: TLabel;
    edtLeaseDateUnitQty: TDBEdit;
    lblFor2: TLabel;
    lblDateUnit: TLabel;
    cbDateUnit: TJvDBLookupCombo;
    lblTotalLeaseQuantity: TLabel;
    edtTotalLeaseQuantity: TDBEdit;
    gbContractedPrices: TGroupBox;
    lblSinglePrice2: TLabel;
    lblCurrency2: TLabel;
    lblTotalPrice: TLabel;
    dbtCurrency2: TDBText;
    lblSecondaryCurrencyAbbrev5: TLabel;
    edtSinglePrice2: TDBEdit;
    cbCurrency2: TJvDBLookupCombo;
    edtTotalPrice2: TDBEdit;
    edtTotalPriceSC2: TDBEdit;
    gbSaleShipmentDate: TGroupBox;
    frShipmentDate2: TfrDateFieldEditFrame;
    gbImportDate: TGroupBox;
    frImportDate: TfrDateFieldEditFrame;
    gbSale2: TGroupBox;
    lblSaleDealType3: TLabel;
    lblSaleBranch2: TLabel;
    lblSaleNo2: TLabel;
    lblSaleTypeCode2: TLabel;
    lblPriority2: TLabel;
    cbSaleDealType3: TJvDBLookupCombo;
    cbSaleBranch2: TJvDBLookupCombo;
    edtSaleNo2: TDBEdit;
    cbSaleTypeCode2: TJvDBLookupCombo;
    cbPriority2: TJvDBLookupCombo;
    lblPrognosisInterval: TLabel;
    frPrognosis: TfrDateIntervalFrame;
    frPrognosis2: TfrDateIntervalFrame;
    lblPrognosisInterval2: TLabel;
    gbQuantitiesAndPrices: TGroupBox;
    lblOfferQuantity: TLabel;
    lblOfferAccountQuantity: TLabel;
    edtOurOfferQuantity: TDBEdit;
    edtClientOfferQuantity: TDBEdit;
    edtQuantity3: TDBEdit;
    edtOurOfferAccountQuantity: TDBEdit;
    edtClientOfferAccountQuantity: TDBEdit;
    edtAccountQuantity3: TDBEdit;
    lblOfferSinglePrice: TLabel;
    edtOurOfferSinglePrice: TDBEdit;
    edtClientOfferSinglePrice: TDBEdit;
    edtSinglePrice3: TDBEdit;
    lblOfferCurrency: TLabel;
    cbOurOfferCurrency: TJvDBLookupCombo;
    cbClientOfferCurrency: TJvDBLookupCombo;
    cbCurrency3: TJvDBLookupCombo;
    gbTotalPrices: TGroupBox;
    edtTotalPrice3: TDBEdit;
    dbtCurrency3: TDBText;
    edtTotalPriceSC3: TDBEdit;
    lblSecondaryCurrencyAbbrev6: TLabel;
    dbtMeasure3: TDBText;
    dbtMeasure4: TDBText;
    dbtMeasure5: TDBText;
    dbtAccountMeasure2: TDBText;
    dbtAccountMeasure3: TDBText;
    dbtAccountMeasure4: TDBText;
    lblOurOffer: TLabel;
    lblClientOffer: TLabel;
    lblCoherence: TLabel;
    gbQuantitiesAndPrices2: TGroupBox;
    lblOfferLeaseDateUnitQty: TLabel;
    lblOfferSinglePrice2: TLabel;
    lblOfferCurrency2: TLabel;
    lblOurOffer2: TLabel;
    lblClientOffer2: TLabel;
    lblCoherence2: TLabel;
    edtOurOfferLeaseDateUnitQty: TDBEdit;
    edtClientOfferLeaseDateUnitQty: TDBEdit;
    edtLeaseDateUnitQty2: TDBEdit;
    edtOurOfferSinglePrice2: TDBEdit;
    edtClientOfferSinglePrice2: TDBEdit;
    edtSinglePrice4: TDBEdit;
    cbOurOfferCurrency2: TJvDBLookupCombo;
    cbClientOfferCurrency2: TJvDBLookupCombo;
    cbCurrency4: TJvDBLookupCombo;
    gbTotalPrices2: TGroupBox;
    dbtCurrency4: TDBText;
    lblSecondaryCurrencyAbbrev7: TLabel;
    edtTotalPrice4: TDBEdit;
    edtTotalPriceSC4: TDBEdit;
    lblOfferLeaseDateUnit: TLabel;
    lblOfferTotalLeaseQuantity: TLabel;
    cbLeaseDateUnit: TJvDBLookupCombo;
    edtTotalLeaseQuantity2: TDBEdit;
    cbClientOfferLeaseDateUnit: TJvDBLookupCombo;
    edtClientOfferTotalLeaseQuantity: TDBEdit;
    cbOurOfferLeaseDateUnit: TJvDBLookupCombo;
    edtOurOfferTotalLeaseQuantity: TDBEdit;
    cdsDataIMPORT_DATE: TAbmesSQLTimeStampField;
    cdsCompanyOfficesCOUNTRY_CODE: TAbmesFloatField;
    cdsCountries: TAbmesClientDataSet;
    cdsCountriesCOUNTRY_CODE: TAbmesFloatField;
    cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField;
    cdsCountriesCOUNTRY_NAME: TAbmesWideStringField;
    cdsCompanyOffices_COUNTRY_NAME: TAbmesWideStringField;
    cdsData_PLAN_PERIOD_DAYS: TAbmesFloatField;
    cdsData_REAL_PERIOD_DAYS: TAbmesFloatField;
    cdsDataSHIPMENT_DAYS: TAbmesFloatField;
    pnlAccountPricesButton: TPanel;
    btnSinglePrice: TSpeedButton;
    btnAccountSinglePrice: TSpeedButton;
    lblSlash7: TLabel;
    lblCaption: TLabel;
    lblMeasureAbbrev2: TLabel;
    edtMeasureAbbrev2: TDBEdit;
    cdsDataCLIENT_COMPANY_NAME: TAbmesWideStringField;
    cdsData_CURRENCY_ABBREV: TAbmesWideStringField;
    dsCurrencies: TDataSource;
    actDocumentation: TAction;
    tbDocButton: TToolBar;
    btnDocs: TToolButton;
    cdsData_COUNTRY_NAME: TAbmesWideStringField;
    cdsDataSS_COUNT: TAbmesFloatField;
    cdsData_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsData_STATUS_CODE: TAbmesFloatField;
    lblStatus: TLabel;
    edtStatus: TDBEdit;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDataSRG_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataSRG_DOC_CODE: TAbmesFloatField;
    cdsDataSRG_HAS_DOC_ITEMS: TAbmesFloatField;
    actSRGDoc: TAction;
    cdsData_SALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleOrderProductInfo: TAbmesClientDataSet;
    cdsSaleOrderProductInfoSPEC_STATE_CODE: TAbmesFloatField;
    dbtMarketPriceCurrencyAbbrev: TDBText;
    dsSaleOrderProductInfo: TDataSource;
    lblBaseCurrencyAbbrev2: TLabel;
    dbtMarketPriceCurrencyAbbrev2: TDBText;
    cdsSaleOrderProductInfo_SALE_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsSaleOrderProductInfo_MARKET_PRICE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsSaleOrderProductInfoMARKET_PRICE: TAbmesFloatField;
    cdsSaleOrderProductInfoMARKET_PRICE_CURRENCY_CODE: TAbmesFloatField;
    cdsSaleOrderProductInfoSALE_LEASE_PRICE: TAbmesFloatField;
    cdsSaleOrderProductInfoSALE_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsSaleOrderProductInfoACC_MARKET_PRICE: TAbmesFloatField;
    cdsSaleOrderProductInfoACC_SALE_LEASE_PRICE: TAbmesFloatField;
    cdsSaleOrderProductInfoPRODUCT_PRIORITY_NO: TAbmesFloatField;
    cdsSaleOrderProductInfoPRODUCT_PRIORITY_COLOR: TAbmesFloatField;
    cdsSaleOrderProductInfoPRODUCT_PRIORITY_BK_COLOR: TAbmesFloatField;
    cdsDataSALE_PRIORITY_CODE: TAbmesFloatField;
    cdsDataCLIENT_PRIORITY_CODE: TAbmesFloatField;
    cdsDataDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    lblSaleDealTypeAbbrev: TLabel;
    edtSaleDealTypeAbbrev: TDBEdit;
    lblRequestInitiator: TLabel;
    edtRequestInitiator: TDBEdit;
    lblSaleCount: TLabel;
    lblRealizationSaleCount: TLabel;
    lblPrognosisSaleCount: TLabel;
    edtRealizationSaleCount: TDBEdit;
    edtPrognosisSaleCount: TDBEdit;
    actExceptEvents: TAction;
    cdsSaleRequestGroup: TAbmesClientDataSet;
    cdsSaleRequestGroupREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsSaleRequestGroupREQUEST_NO: TAbmesFloatField;
    cdsSaleRequestGroupSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsSaleRequestGroupSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsSaleRequestGroupDOC_BRANCH_CODE: TAbmesFloatField;
    cdsSaleRequestGroupDOC_CODE: TAbmesFloatField;
    cdsSaleRequestGroupHAS_DOC_ITEMS: TAbmesFloatField;
    cdsSaleRequestGroupSTREAM_TYPE_CODE: TAbmesFloatField;
    dsSaleRequestGroup: TDataSource;
    btnSale: TButton;
    gbDelivery: TGroupBox;
    lblDCDBranch: TLabel;
    cbDCDBranch: TJvDBLookupCombo;
    lblDCDCode: TLabel;
    edtDCDCode: TDBEdit;
    btnDelivery: TButton;
    lblDeliveryProjectCode: TLabel;
    edtDeliveryProjectCode: TDBEdit;
    cdsDataDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataDELIVERY_OBJECT_CODE: TAbmesFloatField;
    cdsDataDCD_BRANCH_CODE: TAbmesFloatField;
    cdsDataDCD_CODE: TAbmesFloatField;
    cdsDataDELIVERY_PROJECT_CODE: TAbmesFloatField;
    actSale: TAction;
    actDelivery: TAction;
    cdsDeliveryID: TAbmesClientDataSet;
    btnSale2: TButton;
    pdsDeliveryID: TParamDataSet;
    pdsDeliveryIDDCD_BRANCH_CODE: TAbmesFloatField;
    pdsDeliveryIDDCD_CODE: TAbmesFloatField;
    pdsDeliveryIDDELIVERY_PROJECT_CODE: TAbmesFloatField;
    dsDeliveryID: TDataSource;
    cdsDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataDCD_OBJECT_CODE: TAbmesFloatField;
    cdsDeliveryIDDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveryIDDELIVERY_OBJECT_CODE: TAbmesFloatField;
    cdsDeliveryIDDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveryIDDCD_OBJECT_CODE: TAbmesFloatField;
    cdsDeliveryIDDELIVERY_PROJECT_CODE: TAbmesFloatField;
    pnlExceptEvents: TPanel;
    btnExceptEvents: TButton;
    frProduct: TfrProductExFieldEditFrame;
    cdsDataACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsDataACCOUNT_OUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDataACCOUNT_CL_OFFER_SINGLE_PRICE: TAbmesFloatField;
    lblSlash: TLabel;
    dbtDisplayMeasure: TDBText;
    lblSlash2: TLabel;
    dbtDisplayMeasure2: TDBText;
    lblSlash3: TLabel;
    dbtDisplayMeasure3: TDBText;
    lblSlash4: TLabel;
    dbtDisplayMeasure4: TDBText;
    lblSlash5: TLabel;
    dbtDisplayMeasure5: TDBText;
    lblSlash6: TLabel;
    dbtDisplayMeasure6: TDBText;
    lblSlash8: TLabel;
    dbtDisplayMeasure7: TDBText;
    lblSlash9: TLabel;
    dbtDisplayMeasure8: TDBText;
    pnlLeaseRealization: TPanel;
    pnlLeaseRealizationWork: TPanel;
    lblQuantity2: TLabel;
    edtQuantity2: TDBEdit;
    dbtMeasure2: TDBText;
    pnlLeaseRealizationAccount: TPanel;
    lblAccountQuantity2: TLabel;
    dbtAccountMeasure5: TDBText;
    edtAccountQuantity2: TDBEdit;
    pnlLeaseEstimation: TPanel;
    pnlLeaseEstimationWork: TPanel;
    lblOfferQuantity2: TLabel;
    dbtMeasure6: TDBText;
    dbtMeasure7: TDBText;
    dbtMeasure8: TDBText;
    edtOurOfferQuantity2: TDBEdit;
    edtClientOfferQuantity2: TDBEdit;
    edtQuantity4: TDBEdit;
    pnlLeaseEstimationAccount: TPanel;
    lblAccountQuantity3: TLabel;
    dbtAccountMeasure6: TDBText;
    dbtAccountMeasure7: TDBText;
    dbtAccountMeasure8: TDBText;
    edtAccountOurOfferQuantity: TDBEdit;
    edtAccountClientOfferQuantity: TDBEdit;
    edtAccountQuantity4: TDBEdit;
    cdsSaleOrderDefaults: TAbmesClientDataSet;
    cdsSaleOrderDefaultsPARTNER_CODE: TAbmesFloatField;
    cdsSaleOrderDefaultsPARTNER_OFFICE_CODE: TAbmesFloatField;
    cdsSaleOrderDefaultsTRANSPORT_DURATION_DAYS: TAbmesFloatField;
    cdsSaleOrderDefaultsSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsSaleOrderDefaultsIS_PARTNER_TRANSPORT: TAbmesFloatField;
    cdsSaleOrderDefaultsCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsSaleOrderDefaultsSTORE_CODE: TAbmesFloatField;
    cdsSaleOrderDefaultsPRICE: TAbmesFloatField;
    cdsSaleOrderDefaultsCURRENCY_CODE: TAbmesFloatField;
    cdsSaleOrderDefaultsLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsSaleDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsDataOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    frParRelProductStatus: TfrParRelProductStatus;
    cdsDataBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsDataPARTNER_CODE: TAbmesFloatField;
    actParRelProduct: TAction;
    tlbParRelProductDocs: TToolBar;
    btnParRelProductDocs: TToolButton;
    actParRelProductDoc: TAction;
    cdsSaleOrderProductInfoPRP_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsSaleOrderProductInfoPRP_DOC_CODE: TAbmesFloatField;
    cdsSaleOrderProductInfoPRP_HAS_DOC: TAbmesFloatField;
    lblStreamTypeAbbrev: TLabel;
    edtStreamTypeAbbrev: TDBEdit;
    cdsSaleRequestGroupSTREAM_TYPE_ABBREV: TAbmesWideStringField;
    actNotes: TAction;
    pnlNotes: TPanel;
    btnNotes: TBitBtn;
    cdsSaleRequestGroupMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsSaleRequestGroupIS_ACTIVATED_BY_CLIENT: TAbmesFloatField;
    cdsDecisionTypesDECISION_TYPE_NO: TAbmesFloatField;
    cdsDecisionTypesALLOWS_SALE: TAbmesFloatField;
    cdsDecisionTypesIS_ESTIMATION_BOUND: TAbmesFloatField;
    cdsDecisionTypesIS_REALIZATION_BOUND: TAbmesFloatField;
    cdsData_ALLOWS_SALE: TAbmesFloatField;
    cdsDataFO_EXEC_DEPT_CODE: TAbmesFloatField;
    cdsDataFO_PRIORITY_CODE: TAbmesFloatField;
    cdsDataFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsDataSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    cdsDecisionTypesREQUIRES_FINISHING: TAbmesFloatField;
    cdsData_DECISION_TYPE_REQUIRES: TAbmesFloatField;
    cdsDataUNFINISHED_SRG_SALE_COUNT: TAbmesFloatField;
    cdsSaleRequestGroupPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsDataMIN_BASE_PRICE: TAbmesFloatField;
    cdsDataACCOUNT_MIN_BASE_PRICE: TAbmesFloatField;
    cdsSaleOrderProductInfoSALE_LEASE_CURRENCY_CODE: TAbmesFloatField;
    cdsSaleOrderProductInfo_SALE_LEASE_CURRENCY_ABBREV: TAbmesWideStringField;
    tlbRequestDoc: TToolBar;
    btnRequestDoc: TToolButton;
    actRequestDoc: TAction;
    actAcuirePrice: TAction;
    pnlAcquirePriceButton: TPanel;
    btnAcquirePrice: TSpeedButton;
    actLeasePrice: TAction;
    pnlLeasePriceButton: TPanel;
    btnLeasePrice: TSpeedButton;
    pnlReceiveConditionsNormal: TPanel;
    lblReceivePlaceOfficeName: TLabel;
    lblCountry: TLabel;
    lblCustomhouse: TLabel;
    lblShipmentType: TLabel;
    lblTransportBy: TLabel;
    cbReceivePlaceOfficeName: TJvDBLookupCombo;
    edtCountry: TDBEdit;
    cbCustomhouse: TJvDBLookupCombo;
    cbShipmentType: TJvDBLookupCombo;
    cbTransportBy: TJvDBComboBox;
    cdsDataFO_BRANCH_CODE: TAbmesFloatField;
    cdsDataFO_IS_COMPLETED: TAbmesFloatField;
    cdsDataFO_CLOSE_REQUESTED: TAbmesFloatField;
    cdsDataFIN_ORDER_CODE: TAbmesFloatField;
    cdsDataFO_STATUS_CODE: TAbmesFloatField;
    pnlIsDeliveryRequired: TPanel;
    chkIsDeliveryRequired: TCheckBox;
    actIsDeliveryRequired: TAction;
    cdsDataFO_PARTNER_CODE: TAbmesFloatField;
    cdsDataSSH_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataSSH_DOC_CODE: TAbmesFloatField;
    procedure cdsDataDECISION_DATEChange(Sender: TField);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataCLIENT_COMPANY_CODEChange(Sender: TField);
    procedure cdsDataPRODUCT_CODEChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsDataCOMMON_STATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure DatesOnValidate(Sender: TField);
    procedure cdsDataSALE_BRANCH_CODEChange(Sender: TField);
    procedure actFinishExecute(Sender: TObject);
    procedure actFinishUpdate(Sender: TObject);
    procedure actAnnulExecute(Sender: TObject);
    procedure actAnnulUpdate(Sender: TObject);
    procedure cdsDataCURRENCY_CODEChange(Sender: TField);
    procedure actDocumentationExecute(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsDataAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure cdsData_STATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsSaleOrderProductInfoSPEC_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDataQUANTITYChange(Sender: TField);
    procedure cdsDataACCOUNT_QUANTITYChange(Sender: TField);
    procedure cdsDataOUR_OFFER_QUANTITYChange(Sender: TField);
    procedure cdsDataACCOUNT_OUR_OFFER_QUANTITYChange(Sender: TField);
    procedure cdsDataACCOUNT_CL_OFFER_QUANTITYChange(Sender: TField);
    procedure cdsDataCL_OFFER_QUANTITYChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure actExceptEventsUpdate(Sender: TObject);
    procedure actExceptEventsExecute(Sender: TObject);
    procedure cdsDataBeforeOpen(DataSet: TDataSet);
    procedure cdsDataAfterClose(DataSet: TDataSet);
    procedure cbDCDBranchExit(Sender: TObject);
    procedure edtDCDCodeExit(Sender: TObject);
    procedure edtDeliveryProjectCodeExit(Sender: TObject);
    procedure actDeliveryUpdate(Sender: TObject);
    procedure actDeliveryExecute(Sender: TObject);
    procedure actSaleExecute(Sender: TObject);
    procedure actSaleUpdate(Sender: TObject);
    procedure cdsDataSINGLE_PRICEChange(Sender: TField);
    procedure cdsDataOUR_OFFER_SINGLE_PRICEChange(Sender: TField);
    procedure cdsDataCL_OFFER_SINGLE_PRICEChange(Sender: TField);
    procedure cdsDataACCOUNT_SINGLE_PRICEChange(Sender: TField);
    procedure cdsDataACCOUNT_OUR_OFFER_SINGLE_PRICEChange(Sender: TField);
    procedure cdsDataACCOUNT_CL_OFFER_SINGLE_PRICEChange(Sender: TField);
    procedure cdsDataRECEIVE_DATEChange(Sender: TField);
    procedure cdsDataASPECT_TYPE_CODEChange(Sender: TField);
    procedure actParRelProductExecute(Sender: TObject);
    procedure actParRelProductUpdate(Sender: TObject);
    procedure actParRelProductDocExecute(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
    procedure cdsDataACCOUNT_MIN_BASE_PRICEChange(Sender: TField);
    procedure cdsDataMIN_BASE_PRICEChange(Sender: TField);
    procedure actRequestDocUpdate(Sender: TObject);
    procedure actRequestDocExecute(Sender: TObject);
    procedure actAcuirePriceExecute(Sender: TObject);
    procedure actLeasePriceExecute(Sender: TObject);
    procedure actAcuirePriceUpdate(Sender: TObject);
    procedure actLeasePriceUpdate(Sender: TObject);
    procedure actIsDeliveryRequiredExecute(Sender: TObject);
    procedure actNotesUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FOldCurrencyCode: Variant;
    FOldSaleTotalPrice: Variant;
    FOldSaleTotalPriceSC: Variant;
    FQuantity: Double;
    FShipmentDate: TDateTime;
    FImportDate: TDateTime;
    FReceiveDate: TDateTime;
    FReturnDate: TDateTime;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FCalculatingQuantity: Boolean;
    FPricesChanging: Boolean;
    FHasSaleOnOpen: Boolean;
    FParRelProductExists: Boolean;
    FHadSaleNo: Boolean;
    FInitialFinOrderCode: Integer;
    FFinalFinOrderCode: Integer;

    procedure OpenSecondaryCurrencyRates;
    procedure OpenCompanyOffices;
    procedure ValidateDates;
    procedure SetupReadOnly;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure CheckSomeRequiredFields;
    procedure CheckAllRequiredFields;
    procedure OpenSaleOrderProductInfo;
    procedure LoadDeliveryID;
    procedure LoadDefaults;
    procedure CalcParRelProductExists;
    procedure SetupDecisionTypesFilter;
    procedure ShowProductPartnerPrice(AObtainmentType: TObtainmentType);
    procedure PriceActionUpate(ASender: TObject);
  protected
    function GetOriginalFormCaption: string; override;
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure DoApplyUpdates; override;
    function IsQuantityField(const AField: TAbmesFloatField): Boolean; override;
  public
    procedure Initialize; override;
    procedure Finalize; override;
    class function CanEditOuterDataSet: Boolean; override;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone): Boolean;
    procedure ReleaseForm; override;
  end;


implementation

uses
  uCompanyKinds, fTreeSelectForm, dMain, uUtils, uTreeClientUtils,
  uCompanyClientUtils, Math, uSaleOrderTypes, uProductClientUtils, AbmesDialogs, 
  fBaseForm, uBorderRelTypes, fProductPeriods, uUserActivityConsts,
  uSaleDealTypes, uDocClientUtils, dBaseDataModule, uDocUtils, uSalesClientUtils,
  uColorConsts, uModelUtils, uAspectTypes, uStreamTypes, fDelivery, fSale,
  fParRelProduct, fNotes, uProductionOrderTypes, fNewFinOrder,
  uFinOrderRequirementClientUtils, fMain, uExceptEventClientUtils,
  fExceptEvents, uClientDateTime, uComboBoxUtils, fProductPartnerPrice,
  uFinanceClientUtils, fFinOrder;

{$R *.dfm}
resourcestring
  SWrongDatesErrorMessage = ' трябва да е по-късна или равна на ';
  SPriceMustBePositive = 'Договорената единична цена трябва да бъде положителна';
  SConfirmFinish = 'Потвърдете Приключване на ОДК';
  SConfirmAnnul = 'Потвърдете Анулиране на ОДК';
  SCheckSaleShipments =
    'По ОПП %s/%d съществува повече от едно разклонение.' +
    'Количеството на първото разклонение е изравнено с текущото количество по ОДК. Моля, поправете разклоненията по този ОПП.';
  SCheckLeaseShipments =
    'По ОПП %s/%d съществува повече от едно разклонение.' +
    'Датите на първото разклонение са изравнени с текущите по ОДК. Моля, поправете разклоненията по този ОПП.';
  SSaleOrderSaved = 'ОДК е записан под номер %s/%d/%d';
  SDeliveryNotFound = 'Не е намерен ОПД с тази идентификация';
  SImportDateMustNotBeLessThanEndOfLeaseInterval = 'План. дата за Врщ. не трябва да е по-ранна от края на Договорен ВрмИнт на Наем';
  SFinOrderRequired = 'За да създадете ОПП, трябва да създадете и ОПФ!';
  SFinishingRequired = 'Решението изисква да приключите ОДК!';
  SConfirmLastSaleRequestFinish =
    'Приключвате последен Обособен Диалог в рамките на Пакет Диалози с Клиент, който също ще бъде приключен!';

procedure TfmSaleOrder.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmSaleOrder.FormCreate(Sender: TObject);
begin
  inherited;

  frRequestSendDate.FieldNames:= 'REQUEST_SEND_DATE';
  frRequestRegisterDate.FieldNames:= 'REQUEST_REGISTER_DATE';
  frOfferSendPlanDate.FieldNames:= 'OFFER_SEND_PLAN_DATE';
  frOfferSendDate.FieldNames:= 'OFFER_SEND_DATE';
  frOfferAnswerPlanDate.FieldNames:= 'OFFER_ANSWER_PLAN_DATE';
  frOfferAnswerDate.FieldNames:= 'OFFER_ANSWER_DATE';
  frDecisionPlanDate.FieldNames:= 'DECISION_PLAN_DATE';
  frDecisionDate.FieldNames:= 'DECISION_DATE';
  frReceiveDateClientOffered.FieldNames:= 'CL_OFFER_RECEIVE_DATE';
  frReceiveDate.FieldNames:= 'RECEIVE_DATE';
  frPrognosis.FieldNames:= 'PROGNOSIS_BEGIN_DATE;PROGNOSIS_END_DATE';
  frPrognosis2.FieldNames:= 'PROGNOSIS_BEGIN_DATE;PROGNOSIS_END_DATE';
  frClient.FieldNames:= 'CLIENT_COMPANY_CODE';
  frClient.CountryVisible:= True;
  frClient.ParRelButtonVisible:= True;
  frMediator.FieldNames:= 'MEDIATOR_COMPANY_CODE';
  frShipmentStore.FieldNames:= 'SHIPMENT_STORE_CODE';
  frDecisionEmployee.FieldNames:= 'DECISION_EMPLOYEE_CODE';
  frManagerEmployee.FieldNames:= 'MANAGER_EMPLOYEE_CODE';
  frLeaseDatesInterval.FieldNames:= 'RECEIVE_DATE;RETURN_DATE';
  frLeaseDatesIntervalClientOffered.FieldNames:= 'CL_OFFER_RECEIVE_DATE;CL_OFFER_RETURN_DATE';
  frShipmentDate.FieldNames:= 'SHIPMENT_DATE';
  frShipmentDate2.FieldNames:= 'SHIPMENT_DATE';
  frImportDate.FieldNames:= 'IMPORT_DATE';

  frProduct.FieldNames:= 'PRODUCT_CODE;CLIENT_COMPANY_CODE';
  frProduct.TreeDetailSelection:= tdsInstance;
  frProduct.SpecStateVisible:= False;
  frProduct.PriorityVisible:= False;
  frProduct.MeasureVisible:= False;
  frProduct.AccountMeasureVisible:= False;
  frProduct.CommonStatusVisible:= False;
  frProduct.ProductOriginVisible:= False;
  frProduct.NotesVisible:= False;
  frProduct.ProductPeriodsButtonVisible:= True;

  lblBaseCurrencyAbbrev.Caption:= LoginContext.BaseCurrencyAbbrev;
  lblBaseCurrencyAbbrev2.Caption:= LoginContext.BaseCurrencyAbbrev;

  lblSecondaryCurrencyAbbrev4.Caption:= LoginContext.SecondaryCurrencyAbbrev;
  lblSecondaryCurrencyAbbrev5.Caption:= LoginContext.SecondaryCurrencyAbbrev;
  lblSecondaryCurrencyAbbrev6.Caption:= LoginContext.SecondaryCurrencyAbbrev;
  lblSecondaryCurrencyAbbrev7.Caption:= LoginContext.SecondaryCurrencyAbbrev;

  RegisterFieldsTextVisibility(
    IsSalePriceVisible,
    [ cdsData_OUR_OFFER_CURRENCY_ABBREV,
      cdsData_CL_OFFER_CURRENCY_ABBREV,
      cdsData_SALE_TOTAL_PRICE,
      cdsData_SALE_TOTAL_PRICE_SC,
      cdsDataSINGLE_PRICE,
      cdsDataOUR_OFFER_SINGLE_PRICE,
      cdsDataCL_OFFER_SINGLE_PRICE,
      cdsData_CURRENCY_ABBREV,
      cdsDataACCOUNT_SINGLE_PRICE,
      cdsDataACCOUNT_OUR_OFFER_SINGLE_PRICE,
      cdsDataACCOUNT_CL_OFFER_SINGLE_PRICE,
      cdsDataMIN_BASE_PRICE,
      cdsDataACCOUNT_MIN_BASE_PRICE,
      cdsSaleOrderProductInfoMARKET_PRICE,
      cdsSaleOrderProductInfoACC_MARKET_PRICE,
      cdsSaleOrderProductInfoSALE_LEASE_PRICE,
      cdsSaleOrderProductInfoACC_SALE_LEASE_PRICE,
      cdsSaleOrderProductInfo_MARKET_PRICE_CURRENCY_ABBREV,
      cdsSaleOrderProductInfo_SALE_LEASE_CURRENCY_ABBREV]);
end;

procedure TfmSaleOrder.FormShow(Sender: TObject);
begin
  inherited;
  actForm.Update;
  CalcParRelProductExists;
end;

function TfmSaleOrder.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmSaleOrder.Initialize;
var
  MsgParams: TStrings;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  frProduct.ProductClass:= FProductClass;
  frProduct.PartnerProductNamesVisible:= (FProductClass = pcNormal);

  frShipmentStore.SelectStore:= (FProductClass = pcNormal);
  frShipmentStore.SelectFinancialStore:= (FProductClass = pcFinancial);

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  MsgParams:=
    uParRelProducts.CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      brtClient,
      pobtSaleCover,
      prpoProduct,
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  FOriginalFormCaption:= actForm.Caption;

  FHadSaleNo:= not cdsDataSALE_NO.IsNull;

  frProduct.PartnerCode:= cdsDataCLIENT_COMPANY_CODE.AsInteger;

  actIsDeliveryRequired.Checked:= (EditMode = emInsert) or not cdsDataDCD_OBJECT_BRANCH_CODE.IsNull;

  FInitialFinOrderCode:= cdsDataFIN_ORDER_CODE.AsInteger;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotSale, cdsData);
end;

function TfmSaleOrder.IsQuantityField(const AField: TAbmesFloatField): Boolean;
begin
  Result:= False;
end;

procedure TfmSaleOrder.LoadDefaults;
begin
  if (cdsDataASPECT_TYPE_CODE.AsInteger <> AspectTypeToInt(atRealization)) then
    Exit;

  SetParams(cdsSaleOrderDefaults.Params, cdsData);
  cdsSaleOrderDefaults.TempOpen/
    procedure begin
      if cdsSaleOrderDefaults.IsEmpty then
        Exit;

      if not cdsSaleOrderDefaultsPRICE.IsNull then
        cdsDataSINGLE_PRICE.AsFloat:= RealRoundTo(cdsSaleOrderDefaultsPRICE.AsFloat, -2)
      else
        cdsDataSINGLE_PRICE.IfIsNullAssign(cdsSaleOrderDefaultsPRICE);

      cdsDataCURRENCY_CODE.IfIsNullAssign(cdsSaleOrderDefaultsCURRENCY_CODE);

      if (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtLease) then
        cdsDataLEASE_DATE_UNIT_CODE.IfIsNullAssign(cdsSaleOrderDefaultsLEASE_DATE_UNIT_CODE);

      cdsDataRECEIVE_PLACE_OFFICE_CODE.Assign(cdsSaleOrderDefaultsPARTNER_OFFICE_CODE);
      cdsDataSHIPMENT_STORE_CODE.Assign(cdsSaleOrderDefaultsSTORE_CODE);
      cdsDataSHIPMENT_DAYS.Assign(cdsSaleOrderDefaultsTRANSPORT_DURATION_DAYS);
      cdsDataSHIPMENT_TYPE_CODE.Assign(cdsSaleOrderDefaultsSHIPMENT_TYPE_CODE);
      cdsDataIS_VENDOR_TRANSPORT.AsBoolean:= not cdsSaleOrderDefaultsIS_PARTNER_TRANSPORT.AsBoolean;
      cdsDataCUSTOMHOUSE_CODE.Assign(cdsSaleOrderDefaultsCUSTOMHOUSE_CODE);
    end;
end;

procedure TfmSaleOrder.LoadDeliveryID;
begin
  if cdsData.ReadOnly or not cdsDataANNUL_EMPLOYEE_CODE.IsNull or not cdsDataFINISH_EMPLOYEE_CODE.IsNull then
    Exit;

  if not pdsDeliveryIDDCD_BRANCH_CODE.IsNull and
     not pdsDeliveryIDDCD_CODE.IsNull and
     not pdsDeliveryIDDELIVERY_PROJECT_CODE.IsNull then
    begin
      pdsDeliveryID.Post;
      cdsDeliveryID.Open;
      try
        if cdsDeliveryID.BOF and cdsDeliveryID.EOF then
          begin
            CheckEditMode(cdsData);
            cdsDataDELIVERY_OBJECT_BRANCH_CODE.Clear;
            cdsDataDELIVERY_OBJECT_CODE.Clear;
            CheckEditMode(pdsDeliveryID);
            pdsDeliveryIDDCD_BRANCH_CODE.Clear;
            pdsDeliveryIDDCD_CODE.Clear;
            pdsDeliveryIDDELIVERY_PROJECT_CODE.Clear;
            raise Exception.Create(SDeliveryNotFound);
          end;

        if (cdsDeliveryID.RecordCount > 1) then
          raise Exception.Create('internal error in TfmSaleOrder.LoadDeliveryID');

        CheckEditMode(cdsData);
        AssignFields(cdsDeliveryId, cdsData);

      finally
        cdsDeliveryID.Close;
        CheckEditMode(pdsDeliveryID);
      end;

    end;
end;

procedure TfmSaleOrder.OpenCompanyOffices;
begin
  with cdsCompanyOffices do
    begin
      Close;
      Params.ParamByName('COMPANY_CODE').Value:=
        cdsDataCLIENT_COMPANY_CODE.AsVariant;
      Open;
    end;
end;

procedure TfmSaleOrder.OpenDataSets;
begin
  cdsSaleDealTypes.Open;
  cdsBranches.Open;
  cdsAspectTypes.Open;
  cdsCurrencies.Open;

  cdsDateUnits.Open;
  cdsCustomhouses.Open;
  cdsShipmentTypes.Open;
  cdsSaleTypes.Open;
  cdsPriorities.Open;
  cdsCountries.Open;
  inherited;

  cdsDecisionTypes.Open;
  SetupDecisionTypesFilter;

  OpenCompanyOffices;
  OpenSecondaryCurrencyRates;
  OpenSaleOrderProductInfo;
  pdsDeliveryID.Open;
  CheckEditMode(pdsDeliveryID);
  AssignFields(cdsData, pdsDeliveryID);

  // force calc fields
  cdsData.First;
  
  if (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtExport) then
    frClient.PriorityCompanyKind:= ckVendor
  else
    frClient.PriorityCompanyKind:= ckClient;
end;

procedure TfmSaleOrder.OpenSaleOrderProductInfo;
begin
  with cdsSaleOrderProductInfo do
    begin
      if Active then
        Close;
      SetParams(Params, cdsData);
      // workaround. ne bitriabvalo da stava 0, ama pri produkt 311110002 stava. de da znam zashto
      if (Params.ParamByName('CURRENCY_CODE').AsInteger = 0) then
        Params.ParamByName('CURRENCY_CODE').Clear;
      Params.ParamByName('TO_DATE').Value:= cdsDataRECEIVE_DATE.AsVariant;
      Open;
    end;
end;

procedure TfmSaleOrder.OpenSecondaryCurrencyRates;
begin
  with cdsSecondaryCurrencyRates do
    begin
      Close;
      if cdsDataDECISION_DATE.IsNull then
        Params.ParamByName('RATE_DATE').AsDateTime:= ContextDate
      else
        Params.ParamByName('RATE_DATE').AsDateTime:= cdsDataDECISION_DATE.AsDateTime;
      Open;
    end;
end;

procedure TfmSaleOrder.PriceActionUpate(ASender: TObject);
begin
  (ASender as TAction).Enabled:=
    (not cdsDataPRODUCT_CODE.IsNull) and
    (not cdsDataCLIENT_COMPANY_CODE.IsNull) and
    (not cdsDataRECEIVE_DATE.IsNull);
end;

procedure TfmSaleOrder.ReleaseForm;
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

procedure TfmSaleOrder.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProductClass:= AProductClass;
end;

procedure TfmSaleOrder.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frRequestSendDate) or
     (AFrame = frRequestRegisterDate) or
     (AFrame = frClient) or
     (AFrame = frMediator) or
     (AFrame = frParRelProductStatus) then
     AFrame.ReadOnly:= True
  else
    begin
      if not cdsDataANNUL_EMPLOYEE_CODE.IsNull or not cdsDataFINISH_EMPLOYEE_CODE.IsNull then
        AFrame.ReadOnly:= True
      else
        inherited;
    end;
end;

procedure TfmSaleOrder.SetupReadOnly;
var
  AReadOnly: Boolean;
begin
  AReadOnly:= not cdsDataANNUL_EMPLOYEE_CODE.IsNull or not cdsDataFINISH_EMPLOYEE_CODE.IsNull;

  SetControlReadOnly(
    AReadOnly or not cdsDataSALE_BRANCH_CODE.IsNull or (cdsSaleRequestGroupSTREAM_TYPE_CODE.AsInteger = stReverse),
    cbAspectType);

  SetControlsReadOnly(
    AReadOnly or not actIsDeliveryRequired.Checked,
    [cbDCDBranch, edtDCDCode, edtDeliveryProjectCode]);

  SetControlsReadOnly(AReadOnly or FHasSaleOnOpen, [cbSaleBranch, cbSaleBranch2]);
  SetControlsReadOnly(AReadOnly or cdsDataSALE_BRANCH_CODE.IsNull, [cbPriority, cbPriority2]);

  SetControlsReadOnly(AReadOnly, [
    edtClientRequestNo,
    edtMinPrice,
    edtMinPrice2,
    edtAccountQuantity,
    edtAccountQuantity3,
    edtOurOfferAccountQuantity,
    edtClientOfferAccountQuantity,
    edtQuantity,
    edtQuantity2,
    edtQuantity3,
    edtQuantity4,
    edtLeaseDateUnitQty,
    cbDateUnit,
    cbSaleTypeCode,
    cbSaleTypeCode2,
    edtOurOfferQuantity,
    edtOurOfferQuantity2,
    edtClientOfferQuantity,
    edtClientOfferQuantity2,
    edtOurOfferLeaseDateUnitQty,
    edtClientOfferLeaseDateUnitQty,
    edtLeaseDateUnitQty,
    edtLeaseDateUnitQty2,
    edtOurOfferSinglePrice,
    edtOurOfferSinglePrice2,
    edtClientOfferSinglePrice,
    edtClientOfferSinglePrice2,
    cbOurOfferCurrency,
    cbOurOfferCurrency2,
    cbClientOfferCurrency,
    cbClientOfferCurrency2,
    cbDecisionType,
    edtShipmentDays,
    cbReceivePlaceOfficeName,
    cbCustomhouse,
    cbShipmentType,
    ReplacedDBComboBox(cbTransportBy)]
  );

  SetControlsReadOnly(
    AReadOnly or not LoginContext.HasUserActivity(uaEditSalePrice), [
    edtSinglePrice,
    edtSinglePrice2,
    edtSinglePrice3,
    edtSinglePrice4,
    cbCurrency,
    cbCurrency2,
    cbCurrency3,
    cbCurrency4]
  );
end;

class function TfmSaleOrder.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass): Boolean;
var
  f: TfmSaleOrder;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmSaleOrder.ShowProductPartnerPrice(
  AObtainmentType: TObtainmentType);
begin
  TfmProductPartnerPrice.ShowForm(dmDocClient, nil, emReadOnly, doNone,
    cdsDataPRODUCT_CODE.AsInteger,
    cdsDataCLIENT_COMPANY_CODE.AsInteger,
    brtClient,
    AObtainmentType,
    cdsDataRECEIVE_DATE.AsDateTime);
end;

procedure TfmSaleOrder.ValidateDates;
begin
  if (not cdsDataOFFER_SEND_PLAN_DATE.IsNull) and
     (cdsDataREQUEST_REGISTER_DATE.AsDateTime > cdsDataOFFER_SEND_PLAN_DATE.AsDateTime) then
    raise Exception.Create(cdsDataOFFER_SEND_PLAN_DATE.DisplayLabel +
      SWrongDatesErrorMessage + cdsDataREQUEST_REGISTER_DATE.DisplayLabel);

  if (not cdsDataOFFER_ANSWER_PLAN_DATE.IsNull) and
     (cdsDataOFFER_SEND_PLAN_DATE.AsDateTime > cdsDataOFFER_ANSWER_PLAN_DATE.AsDateTime) then
    raise Exception.Create(cdsDataOFFER_ANSWER_PLAN_DATE.DisplayLabel +
      SWrongDatesErrorMessage + cdsDataOFFER_SEND_PLAN_DATE.DisplayLabel);

  if (not cdsDataDECISION_PLAN_DATE.IsNull) and
     (cdsDataOFFER_ANSWER_PLAN_DATE.AsDateTime > cdsDataDECISION_PLAN_DATE.AsDateTime) then
    raise Exception.Create(cdsDataDECISION_PLAN_DATE.DisplayLabel +
      SWrongDatesErrorMessage + cdsDataOFFER_ANSWER_PLAN_DATE.DisplayLabel);

  if (not cdsDataOFFER_ANSWER_DATE.IsNull) and
     (cdsDataOFFER_SEND_DATE.AsDateTime > cdsDataOFFER_ANSWER_DATE.AsDateTime) then
    raise Exception.Create(cdsDataOFFER_ANSWER_DATE.DisplayLabel +
      SWrongDatesErrorMessage + cdsDataOFFER_SEND_DATE.DisplayLabel);

  if (not cdsDataDECISION_DATE.IsNull) and
     (cdsDataOFFER_ANSWER_DATE.AsDateTime > cdsDataDECISION_DATE.AsDateTime) then
    raise Exception.Create(cdsDataDECISION_DATE.DisplayLabel +
      SWrongDatesErrorMessage + cdsDataOFFER_ANSWER_DATE.DisplayLabel);
end;

procedure TfmSaleOrder.actAcuirePriceUpdate(Sender: TObject);
begin
  inherited;
  PriceActionUpate(Sender);
end;

procedure TfmSaleOrder.actAnnulExecute(Sender: TObject);
begin
  inherited;
  CheckAllRequiredFields;
  CheckSomeRequiredFields;
  if (MessageDlgEx(SConfirmAnnul, mtConfirmation, [mbOK, mbCancel], 0) = mrOk) then
    begin
      CheckEditMode(cdsData);
      cdsDataANNUL_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
    end;
end;

procedure TfmSaleOrder.actAnnulUpdate(Sender: TObject);
begin
  inherited;
  pnlAnnulButton.Visible:=
    (EditMode <> emReadOnly) and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

procedure TfmSaleOrder.actApplyUpdatesExecute(Sender: TObject);
var
  RequestLineNo: Integer;
begin
  RequestLineNo:= cdsDataREQUEST_LINE_NO.AsInteger;
  inherited;
  if (RequestLineNo <> cdsDataREQUEST_LINE_NO.AsInteger) then
    MessageDlgEx(
      Format(SSaleOrderSaved, [cdsData_REQUEST_BRANCH_IDENTIFIER.AsString, cdsDataREQUEST_NO.AsInteger, cdsDataREQUEST_LINE_NO.AsInteger]),
      mtInformation,
      [mbOk],
      0
    );    
end;

procedure TfmSaleOrder.actExceptEventsExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;
  LoginContext.CheckUserActivity(uaExceptEvents);
  if LoginContext.HasUserActivity(uaExceptEventsEdit) and (EditMode = emEdit) then
    em:= emEdit
  else
    em:= emReadOnly;

  TfmExceptEvents.ShowExceptEventsForGenerator(em, eegtSales, cdsData);
end;

procedure TfmSaleOrder.actExceptEventsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emInsert) and
    (not (cdsData.State in dsEditModes)) and
    (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtSale) and
    (cdsSaleRequestGroupSTREAM_TYPE_CODE.AsInteger = stReverse) and
    (IntToProductClass(cdsSaleRequestGroupPRODUCT_CLASS_CODE.AsInteger) = pcNormal);
end;

procedure TfmSaleOrder.actDeliveryExecute(Sender: TObject);
begin
  inherited;
  TfmDelivery.ShowForm(nil, cdsData, emReadOnly);
end;

procedure TfmSaleOrder.actDeliveryUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDataDELIVERY_OBJECT_BRANCH_CODE.IsNull;
end;

procedure TfmSaleOrder.actDocumentationExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  em:= EditMode;

  if not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
     not cdsDataFINISH_EMPLOYEE_CODE.IsNull then
    em:= emReadOnly;

  dmDocClient.DSOpenDoc(em, (Sender as TAction).ActionComponent as TControl, dotSale, cdsData);
end;

procedure TfmSaleOrder.actFinishExecute(Sender: TObject);
var
  ConfirmMsg: string;
begin
  inherited;

  CheckAllRequiredFields;
  CheckSomeRequiredFields;

  ConfirmMsg:= SConfirmFinish;
  if (cdsDataUNFINISHED_SRG_SALE_COUNT.AsInteger = 1) then
    ConfirmMsg:= SConfirmLastSaleRequestFinish + SLineBreak + ConfirmMsg;

  if (MessageDlgEx(ConfirmMsg, mtConfirmation, mbOkCancel, 0) <> mrOk) then
    Abort;

  if cdsDataFO_IS_COMPLETED.AsBoolean then
    begin
      ConfirmAction(SConfirmFinOrderClose);

      CheckEditMode(cdsData);
      cdsDataFO_CLOSE_REQUESTED.AsBoolean:= True;
    end
  else
    CheckClosingWithFinOrder(cdsDataFO_STATUS_CODE.AsInteger);

  CheckEditMode(cdsData);
  cdsDataFINISH_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
end;

procedure TfmSaleOrder.actFinishUpdate(Sender: TObject);
begin
  inherited;
  pnlFinishButton.Visible:=
    (EditMode <> emReadOnly) and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    cdsDataFINISH_EMPLOYEE_CODE.IsNull;
end;

procedure TfmSaleOrder.actFormUpdate(Sender: TObject);
const
  DeviationWidth = 3;
  DeviationColors: array [-1..1] of TColor = (clRed, clBlue, clGreen);
begin
  inherited;

  if cdsData_STATUS_CODE.IsNull then
    edtStatus.Color:= clBtnFace
  else
    edtStatus.Color:= SaleOrderStatusColors[cdsData_STATUS_CODE.AsInteger];

  gbPlanDialogSale.Visible:=
    (cdsDataSALE_DEAL_TYPE_CODE.AsInteger in [sdtSale, sdtExport]) and (cdsDataASPECT_TYPE_CODE.AsInteger = AspectTypeToInt(atEstimation));

  gbPlanDialogLease.Visible:=
    (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtLease) and (cdsDataASPECT_TYPE_CODE.AsInteger = AspectTypeToInt(atEstimation));

  gbRealDialogSale.Visible:=
    (cdsDataSALE_DEAL_TYPE_CODE.AsInteger in [sdtSale, sdtExport]) and (cdsDataASPECT_TYPE_CODE.AsInteger = AspectTypeToInt(atRealization));

  gbRealDialogLease.Visible:=
    (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtLease) and (cdsDataASPECT_TYPE_CODE.AsInteger = AspectTypeToInt(atRealization));

  gbPricesSell.Visible:= (cdsDataSALE_DEAL_TYPE_CODE.AsInteger in [sdtSale, sdtExport]);
  gbPricesLease.Visible:= (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtLease);

  gbSale.Visible:= not cdsDataDECISION_TYPE_CODE.IsNull and cdsData_ALLOWS_SALE.AsBoolean;
  gbSale2.Visible:= gbSale.Visible;

  gbDelivery.Visible:= (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtExport);
  pnlIsDeliveryRequired.Visible:= (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtExport);

  with cdsData_OFFER_SEND_DATE_DEVIATION do
    if IsNull then
      begin
        lblOfferSendDateAxis1.Visible:= False;
        lblOfferSendDateAxis2.Visible:= False;
        dbtOfferSendDateDeviation.Visible:= False;

        frOfferSendDate.Left:= frOfferSendPlanDate.Left;
      end
    else
      begin
        lblOfferSendDateAxis1.Visible:= True;
        lblOfferSendDateAxis1.Left:= Max(frOfferSendPlanDate.Left, frOfferSendDate.Left);

        lblOfferSendDateAxis2.Visible:= True;
        lblOfferSendDateAxis2.Left:= Min(frOfferSendPlanDate.Left, frOfferSendDate.Left) + frOfferSendPlanDate.Width - 2;

        dbtOfferSendDateDeviation.Visible:= True;
        dbtOfferSendDateDeviation.Left:= lblOfferSendDateAxis1.Left + 2;
        dbtOfferSendDateDeviation.Font.Color:= DeviationColors[Sign(AsInteger)];

        frOfferSendDate.Left:= frOfferSendPlanDate.Left - Sign(AsInteger)*DeviationWidth;
      end;

  lblOfferSendDate.Left:= frOfferSendDate.Left;


  with cdsData_OFFER_ANSWER_DATE_DEVIATION do
    if IsNull then
      begin
        lblOfferAnswerDateAxis1.Visible:= False;
        lblOfferAnswerDateAxis2.Visible:= False;
        dbtOfferAnswerDateDeviation.Visible:= False;

        frOfferAnswerDate.Left:= frOfferAnswerPlanDate.Left;
      end
    else
      begin
        lblOfferAnswerDateAxis1.Visible:= True;
        lblOfferAnswerDateAxis1.Left:= Max(frOfferAnswerPlanDate.Left, frOfferAnswerDate.Left);

        lblOfferAnswerDateAxis2.Visible:= True;
        lblOfferAnswerDateAxis2.Left:= Min(frOfferAnswerPlanDate.Left, frOfferAnswerDate.Left) + frOfferAnswerPlanDate.Width - 2;

        dbtOfferAnswerDateDeviation.Visible:= True;
        dbtOfferAnswerDateDeviation.Left:= lblOfferAnswerDateAxis1.Left + 2;
        dbtOfferAnswerDateDeviation.Font.Color:= DeviationColors[Sign(AsInteger)];

        frOfferAnswerDate.Left:= frOfferAnswerPlanDate.Left - Sign(AsInteger)*DeviationWidth;
      end;

  lblOfferAnswerDate.Left:= frOfferAnswerDate.Left;


  with cdsData_DECISION_DATE_DEVIATION do
    if IsNull then
      begin
        lblDecisionDateAxis1.Visible:= False;
        lblDecisionDateAxis2.Visible:= False;
        dbtDecisionDateDeviation.Visible:= False;

        frDecisionDate.Left:= frDecisionPlanDate.Left;
      end
    else
      begin
        lblDecisionDateAxis1.Visible:= True;
        lblDecisionDateAxis1.Left:= Max(frDecisionPlanDate.Left, frDecisionDate.Left);

        lblDecisionDateAxis2.Visible:= True;
        lblDecisionDateAxis2.Left:= Min(frDecisionPlanDate.Left, frDecisionDate.Left) + frDecisionPlanDate.Width - 2;

        dbtDecisionDateDeviation.Visible:= True;
        dbtDecisionDateDeviation.Left:= lblDecisionDateAxis1.Left + 2;
        dbtDecisionDateDeviation.Font.Color:= DeviationColors[Sign(AsInteger)];

        frDecisionDate.Left:= frDecisionPlanDate.Left - Sign(AsInteger)*DeviationWidth;
      end;

  lblDecisionDate.Left:= frDecisionDate.Left;

  pnlFinished.Visible:= not cdsDataFINISH_EMPLOYEE_CODE.IsNull;
  pnlAnnuled.Visible:= not cdsDataANNUL_EMPLOYEE_CODE.IsNull;

  if btnSinglePrice.Down then
    begin
      edtSaleLeaseSecondaryPrice.DataField:= 'SALE_LEASE_PRICE';
      edtMeasureAbbrev.DataField:= '_MEASURE_ABBREV';
      edtMeasureAbbrev2.DataField:= '_MEASURE_ABBREV';
      edtMarketPrice.DataField:= 'MARKET_PRICE';
      edtSinglePrice.DataField:= 'SINGLE_PRICE';
      edtSinglePrice2.DataField:= 'SINGLE_PRICE';
      edtSinglePrice3.DataField:= 'SINGLE_PRICE';
      edtSinglePrice4.DataField:= 'SINGLE_PRICE';
      dbtDisplayMeasure.DataField:= '_MEASURE_ABBREV';
      dbtDisplayMeasure2.DataField:= '_MEASURE_ABBREV';
      dbtDisplayMeasure3.DataField:= '_MEASURE_ABBREV';
      dbtDisplayMeasure4.DataField:= '_MEASURE_ABBREV';
      dbtDisplayMeasure5.DataField:= '_MEASURE_ABBREV';
      dbtDisplayMeasure6.DataField:= '_MEASURE_ABBREV';
      dbtDisplayMeasure7.DataField:= '_MEASURE_ABBREV';
      dbtDisplayMeasure8.DataField:= '_MEASURE_ABBREV';
      edtOurOfferSinglePrice.DataField:= 'OUR_OFFER_SINGLE_PRICE';
      edtOurOfferSinglePrice2.DataField:= 'OUR_OFFER_SINGLE_PRICE';
      edtClientOfferSinglePrice.DataField:= 'CL_OFFER_SINGLE_PRICE';
      edtClientOfferSinglePrice2.DataField:= 'CL_OFFER_SINGLE_PRICE';
      edtMinPrice.DataField:= 'MIN_BASE_PRICE';
      edtMinPrice2.DataField:= 'MIN_BASE_PRICE';
    end
  else
    begin
      edtSaleLeaseSecondaryPrice.DataField:= 'ACC_SALE_LEASE_PRICE';
      edtMeasureAbbrev.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      edtMeasureAbbrev2.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      edtMarketPrice.DataField:= 'ACC_MARKET_PRICE';
      edtSinglePrice.DataField:= 'ACCOUNT_SINGLE_PRICE';
      edtSinglePrice2.DataField:= 'ACCOUNT_SINGLE_PRICE';
      edtSinglePrice3.DataField:= 'ACCOUNT_SINGLE_PRICE';
      edtSinglePrice4.DataField:= 'ACCOUNT_SINGLE_PRICE';
      dbtDisplayMeasure.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      dbtDisplayMeasure2.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      dbtDisplayMeasure3.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      dbtDisplayMeasure4.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      dbtDisplayMeasure5.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      dbtDisplayMeasure6.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      dbtDisplayMeasure7.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      dbtDisplayMeasure8.DataField:= '_ACCOUNT_MEASURE_ABBREV';
      edtOurOfferSinglePrice.DataField:= 'ACCOUNT_OUR_OFFER_SINGLE_PRICE';
      edtOurOfferSinglePrice2.DataField:= 'ACCOUNT_OUR_OFFER_SINGLE_PRICE';
      edtClientOfferSinglePrice.DataField:= 'ACCOUNT_CL_OFFER_SINGLE_PRICE';
      edtClientOfferSinglePrice2.DataField:= 'ACCOUNT_CL_OFFER_SINGLE_PRICE';
      edtMinPrice.DataField:= 'ACCOUNT_MIN_BASE_PRICE';
      edtMinPrice2.DataField:= 'ACCOUNT_MIN_BASE_PRICE';
    end;

  pnlLeaseRealizationWork.Visible:= btnSinglePrice.Down;
  pnlLeaseRealizationAccount.Visible:= not btnSinglePrice.Down;
  pnlLeaseEstimationWork.Visible:= btnSinglePrice.Down;
  pnlLeaseEstimationAccount.Visible:= not btnSinglePrice.Down;

  btnDocs.ImageIndex:= cdsDataHAS_DOC_ITEMS.AsInteger;
  btnParRelProductDocs.ImageIndex:= cdsSaleOrderProductInfoPRP_HAS_DOC.AsInteger;

  SetupReadOnly;

  pnlReceiveConditionsNormal.Visible:= (FProductClass = pcNormal);
end;

procedure TfmSaleOrder.actIsDeliveryRequiredExecute(Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    Checked:= not Checked;

  CheckEditMode(cdsData);
  cdsDataDELIVERY_OBJECT_BRANCH_CODE.Clear;
  cdsDataDELIVERY_OBJECT_CODE.Clear;

  CheckEditMode(pdsDeliveryID);
  pdsDeliveryIDDCD_BRANCH_CODE.Clear;
  pdsDeliveryIDDCD_CODE.Clear;
  pdsDeliveryIDDELIVERY_PROJECT_CODE.Clear;

  LoadDeliveryID;
end;

procedure TfmSaleOrder.actLeasePriceExecute(Sender: TObject);
begin
  inherited;
  ShowProductPartnerPrice(otLease);
end;

procedure TfmSaleOrder.actLeasePriceUpdate(Sender: TObject);
begin
  inherited;
  PriceActionUpate(Sender);
end;

procedure TfmSaleOrder.actNotesExecute(Sender: TObject);
begin
  inherited;
  if not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
     not cdsDataFINISH_EMPLOYEE_CODE.IsNull then
    TfmNotes.EditNotesField(cdsDataNOTES, emReadOnly)
  else
    TfmNotes.EditNotesField(cdsDataNOTES, EditMode);
end;

procedure TfmSaleOrder.actNotesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= IfThen(cdsDataNOTES.AsString = '', 207, 57);
end;

procedure TfmSaleOrder.actParRelProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotParRelProduct,
    cdsSaleOrderProductInfoPRP_DOC_BRANCH_CODE,
    cdsSaleOrderProductInfoPRP_DOC_CODE
  );
end;

procedure TfmSaleOrder.actParRelProductExecute(Sender: TObject);
begin
  inherited;
  TfmParRelProduct.ShowForm(nil, cdsData, emReadOnly);
end;

procedure TfmSaleOrder.actParRelProductUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= FParRelProductExists;
end;

procedure TfmSaleOrder.actAcuirePriceExecute(Sender: TObject);
begin
  inherited;
  ShowProductPartnerPrice(otAcquire);
end;

procedure TfmSaleOrder.actRequestDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotSaleRequestGroup,
    cdsData,
    'SRG_DOC_BRANCH_CODE',
    'SRG_DOC_CODE');
end;

procedure TfmSaleOrder.actRequestDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as Taction).ImageIndex:= Ord(cdsDataSRG_HAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmSaleOrder.actSaleExecute(Sender: TObject);
begin
  inherited;
  TfmSale.ShowForm(nil, cdsData, emReadOnly, 0);
end;

procedure TfmSaleOrder.actSaleUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= FHasSaleOnOpen;
end;

procedure TfmSaleOrder.CalcParRelProductExists;
begin
  FParRelProductExists:=
    dmMain.SvrParRelProducts.ParRelProductExists(
       cdsDataPARTNER_CODE.AsInteger,
       cdsDataBORDER_REL_TYPE_CODE.AsInteger,
       cdsDataPRODUCT_CODE.AsInteger);
end;

class function TfmSaleOrder.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmSaleOrder.SetupDecisionTypesFilter;
begin
  Assert(cdsDataASPECT_TYPE_CODE.IsNull or (IntToAspectType(cdsDataASPECT_TYPE_CODE.AsInteger) in [atRealization, atEstimation]));
  if cdsDataASPECT_TYPE_CODE.IsNull then
    cdsDecisionTypes.Filter := '(1 = 0)'
  else
    begin
      if (cdsDataASPECT_TYPE_CODE.AsInteger = AspectTypeToInt(atRealization)) then
        cdsDecisionTypes.Filter := '(IS_REALIZATION_BOUND = 1)'
      else
        cdsDecisionTypes.Filter := '(IS_ESTIMATION_BOUND = 1)';
    end;
  cdsDecisionTypes.Filtered := True;
end;

class function TfmSaleOrder.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmSaleOrder.cbDCDBranchExit(Sender: TObject);
begin
  inherited;
  LoadDeliveryID;
end;

procedure TfmSaleOrder.cdsDataACCOUNT_CL_OFFER_QUANTITYChange(Sender: TField);
begin
  inherited;

  if FCalculatingQuantity or cdsDataACCOUNT_MEASURE_COEF.IsNull then
    Exit;

  FCalculatingQuantity:= True;
  try
    if Sender.IsNull then
      cdsDataCL_OFFER_QUANTITY.Clear
    else
      cdsDataCL_OFFER_QUANTITY.AsFloat:= Sender.AsFloat / cdsDataACCOUNT_MEASURE_COEF.AsFloat;

  finally
    FCalculatingQuantity:= False;
  end;
end;

procedure TfmSaleOrder.cdsDataACCOUNT_CL_OFFER_SINGLE_PRICEChange(
  Sender: TField);
begin
  inherited;

  if not FPricesChanging then
    begin
      FPricesChanging:= True;

      try
        if cdsDataACCOUNT_CL_OFFER_SINGLE_PRICE.IsNull or (cdsDataACCOUNT_MEASURE_COEF.AsFloat = 0) then
          cdsDataCL_OFFER_SINGLE_PRICE.Clear
        else
          cdsDataCL_OFFER_SINGLE_PRICE.AsFloat:=
            cdsDataACCOUNT_CL_OFFER_SINGLE_PRICE.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;

      finally
        FPricesChanging:= False;
      end;   { try }
    end;
end;

procedure TfmSaleOrder.cdsDataACCOUNT_MIN_BASE_PRICEChange(Sender: TField);
begin
  inherited;

  if not FPricesChanging then
    begin
      FPricesChanging:= True;

      try
        if cdsDataACCOUNT_MIN_BASE_PRICE.IsNull or (cdsDataACCOUNT_MEASURE_COEF.AsFloat = 0) then
          cdsDataMIN_BASE_PRICE.Clear
        else
          cdsDataMIN_BASE_PRICE.AsFloat:=
            cdsDataACCOUNT_MIN_BASE_PRICE.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;

      finally
        FPricesChanging:= False;
      end;   { try }
    end;
end;

procedure TfmSaleOrder.cdsDataACCOUNT_OUR_OFFER_QUANTITYChange(Sender: TField);
begin
  inherited;

  if FCalculatingQuantity or cdsDataACCOUNT_MEASURE_COEF.IsNull then
    Exit;

  FCalculatingQuantity:= True;
  try
    if Sender.IsNull then
      cdsDataOUR_OFFER_QUANTITY.Clear
    else
      cdsDataOUR_OFFER_QUANTITY.AsFloat:= Sender.AsFloat / cdsDataACCOUNT_MEASURE_COEF.AsFloat;

  finally
    FCalculatingQuantity:= False;
  end;
end;

procedure TfmSaleOrder.cdsDataACCOUNT_OUR_OFFER_SINGLE_PRICEChange(
  Sender: TField);
begin
  inherited;

  if not FPricesChanging then
    begin
      FPricesChanging:= True;

      try
        if cdsDataACCOUNT_OUR_OFFER_SINGLE_PRICE.IsNull or (cdsDataACCOUNT_MEASURE_COEF.AsFloat = 0) then
          cdsDataOUR_OFFER_SINGLE_PRICE.Clear
        else
          cdsDataOUR_OFFER_SINGLE_PRICE.AsFloat:=
            cdsDataACCOUNT_OUR_OFFER_SINGLE_PRICE.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;

      finally
        FPricesChanging:= False;
      end;   { try }
    end;
end;

procedure TfmSaleOrder.cdsDataACCOUNT_QUANTITYChange(Sender: TField);
begin
  inherited;

  if FCalculatingQuantity or cdsDataACCOUNT_MEASURE_COEF.IsNull then
    Exit;

  FCalculatingQuantity:= True;
  try
    if Sender.IsNull then
      cdsDataQUANTITY.Clear
    else
      cdsDataQUANTITY.AsFloat:= Sender.AsFloat / cdsDataACCOUNT_MEASURE_COEF.AsFloat;

  finally
    FCalculatingQuantity:= False;
  end;
end;

procedure TfmSaleOrder.cdsDataACCOUNT_SINGLE_PRICEChange(Sender: TField);
begin
  inherited;

  if not FPricesChanging then
    begin
      FPricesChanging:= True;

      try
        if cdsDataACCOUNT_SINGLE_PRICE.IsNull or (cdsDataACCOUNT_MEASURE_COEF.AsFloat = 0) then
          cdsDataSINGLE_PRICE.Clear
        else
          cdsDataSINGLE_PRICE.AsFloat:=
            cdsDataACCOUNT_SINGLE_PRICE.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;

      finally
        FPricesChanging:= False;
      end;   { try }
    end;
end;

procedure TfmSaleOrder.cdsDataAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  if (EditMode = emEdit) and
     not cdsDataSALE_BRANCH_CODE.IsNull and
     (cdsDataSS_COUNT.AsInteger > 1) then
    begin
      if (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtSale) and
         (FQuantity <> cdsDataQUANTITY.AsFloat) then
        MessageDlgEx(
          Format(SCheckSaleShipments, [cdsData_SALE_BRANCH_IDENTIFIER.AsString, cdsDataSALE_NO.AsInteger]),
          mtWarning,
          [mbOK],
          0
        );

      if (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtLease) and
         ( (FShipmentDate <> cdsDataSHIPMENT_DATE.AsDateTime) or
           (FImportDate <> cdsDataIMPORT_DATE.AsDateTime) or
           (FReceiveDate <> cdsDataRECEIVE_DATE.AsDateTime) or
           (FReturnDate <> cdsDataRETURN_DATE.AsDateTime)
         ) then
        MessageDlgEx(
          Format(SCheckLeaseShipments, [cdsData_SALE_BRANCH_IDENTIFIER.AsString, cdsDataSALE_NO.AsInteger]),
          mtWarning,
          [mbOK],
          0
        );
    end;
end;

procedure TfmSaleOrder.cdsDataAfterClose(DataSet: TDataSet);
begin
  inherited;
  cdsSaleRequestGroup.Close;
end;

procedure TfmSaleOrder.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FQuantity:= cdsDataQUANTITY.AsFloat;
  FShipmentDate:= cdsDataSHIPMENT_DATE.AsDateTime;
  FImportDate:= cdsDataIMPORT_DATE.AsDateTime;
  FReceiveDate:= cdsDataRECEIVE_DATE.AsDateTime;
  FReturnDate:= cdsDataRETURN_DATE.AsDateTime;
  FHasSaleOnOpen:= not cdsDataSALE_BRANCH_CODE.IsNull;
end;

procedure TfmSaleOrder.cdsDataASPECT_TYPE_CODEChange(Sender: TField);
begin
  inherited;
  LoadDefaults;
  SetupDecisionTypesFilter;

  if ((IntToAspectType(cdsDataASPECT_TYPE_CODE.AsInteger) = atRealization) <> actIsDeliveryRequired.Checked) then
    actIsDeliveryRequired.Execute;
end;

procedure TfmSaleOrder.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= VarArrayOf([DocsDelta, ProductClassToInt(FProductClass)]);
end;

procedure TfmSaleOrder.cdsDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  
  if Assigned(OuterDataSet) then
    SetParams(cdsSaleRequestGroup.Params, OuterDataSet);

  cdsSaleRequestGroup.Open;
end;

procedure TfmSaleOrder.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  CheckSomeRequiredFields;

  if cdsData_DECISION_TYPE_REQUIRES.AsBoolean and
     cdsDataFINISH_EMPLOYEE_CODE.IsNull then
    raise Exception.Create(SFinishingRequired);
end;

procedure TfmSaleOrder.cdsDataCalcFields(DataSet: TDataSet);
var
  v, v1, v2: Variant;
begin
  inherited;

  // status
  if not cdsDataANNUL_EMPLOYEE_CODE.IsNull then
    cdsData_STATUS_CODE.AsInteger:= 11
  else
    begin
      if not cdsDataFINISH_EMPLOYEE_CODE.IsNull then
        cdsData_STATUS_CODE.AsInteger:= 10
      else
        begin
          if not cdsDataSALE_BRANCH_CODE.IsNull then
            cdsData_STATUS_CODE.AsInteger:= 9
          else
            begin
              if not cdsDataDECISION_DATE.IsNull then
                cdsData_STATUS_CODE.AsInteger:= 8
              else
                begin
                  if not cdsDataOFFER_ANSWER_DATE.IsNull then
                    begin
                      if cdsDataDECISION_PLAN_DATE.IsNull then
                        cdsData_STATUS_CODE.AsInteger:= 6
                      else
                        begin
                          if (ContextDate > cdsDataDECISION_PLAN_DATE.AsDateTime) then
                            cdsData_STATUS_CODE.AsInteger:= 7
                          else
                            cdsData_STATUS_CODE.AsInteger:= 6
                        end;
                    end
                  else
                    begin
                      if not cdsDataOFFER_SEND_DATE.IsNull then
                        begin
                          if cdsDataOFFER_ANSWER_PLAN_DATE.IsNull then
                            cdsData_STATUS_CODE.AsInteger:= 4
                          else
                            begin
                              if (ContextDate > cdsDataOFFER_ANSWER_PLAN_DATE.AsDateTime) then
                                cdsData_STATUS_CODE.AsInteger:= 5
                              else
                                cdsData_STATUS_CODE.AsInteger:= 4
                            end;
                        end
                      else
                        begin
                          if not cdsDataOFFER_SEND_PLAN_DATE.IsNull then
                            begin
                              if (ContextDate > cdsDataOFFER_SEND_PLAN_DATE.AsDateTime) then
                                cdsData_STATUS_CODE.AsInteger:= 3
                              else
                                cdsData_STATUS_CODE.AsInteger:= 2
                            end
                          else
                            cdsData_STATUS_CODE.AsInteger:= 1;
                        end;
                    end;
                end;
            end;
        end;
    end;

  // prices
  v1:= cdsDataQUANTITY.AsVariant;
  if VarIsNull(v1) then
    v1:= cdsDataCL_OFFER_QUANTITY.AsVariant;
  if VarIsNull(v1) then
    v1:= cdsDataOUR_OFFER_QUANTITY.AsVariant;

  if (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtLease) then
    begin
      if not cdsDataLEASE_DATE_UNIT_QTY.IsNull then
        v1:= v1 * cdsDataLEASE_DATE_UNIT_QTY.AsInteger
      else
        begin
          if not cdsDataCL_OFFER_LEASE_DATE_UNIT_QTY.IsNull then
            v1:= v1 * cdsDataCL_OFFER_LEASE_DATE_UNIT_QTY.AsInteger
          else
            v1:= v1 * cdsDataOUR_OFFER_LEASE_DATE_UNIT_QTY.AsVariant;
        end;
    end;

  v2:= cdsDataSINGLE_PRICE.AsVariant;
  if VarIsNull(v2) then
    v2:= cdsDataOUR_OFFER_SINGLE_PRICE.AsVariant;
  if VarIsNull(v2) then
    v2:= cdsDataCL_OFFER_SINGLE_PRICE.AsVariant;

  if VarIsNull(v1) or VarIsNull(v2) then
    cdsData_SALE_TOTAL_PRICE.Clear
  else
    cdsData_SALE_TOTAL_PRICE.AsFloat:= v1 * v2;

  if ( (FOldCurrencyCode <> cdsDataCURRENCY_CODE.AsVariant) or
       (FOldSaleTotalPrice <> cdsData_SALE_TOTAL_PRICE.AsVariant) ) and
      cdsSecondaryCurrencyRates.Active then
    with cdsSecondaryCurrencyRates do
      begin
        FOldCurrencyCode:= cdsDataCURRENCY_CODE.AsVariant;
        FOldSaleTotalPrice:= cdsData_SALE_TOTAL_PRICE.AsVariant;

        v:= Lookup('CURRENCY_CODE', cdsDataCURRENCY_CODE.AsInteger, 'FIXING');
        if VarIsNull(v) or cdsData_SALE_TOTAL_PRICE.IsNull then
          cdsData_SALE_TOTAL_PRICE_SC.Clear
        else
          cdsData_SALE_TOTAL_PRICE_SC.AsFloat:= cdsData_SALE_TOTAL_PRICE.AsFloat * v;

        FOldSaleTotalPriceSC:= cdsData_SALE_TOTAL_PRICE_SC.AsVariant;
      end
  else
    cdsData_SALE_TOTAL_PRICE_SC.AsVariant:= FOldSaleTotalPriceSC;

  // quantities
  cdsData_OUR_OFFER_TOTAL_LEASE_QUANTITY.AsVariant:=
    cdsDataOUR_OFFER_QUANTITY.AsVariant * cdsDataOUR_OFFER_LEASE_DATE_UNIT_QTY.AsVariant;

  cdsData_CL_OFFER_TOTAL_LEASE_QUANTITY.AsVariant:=
    cdsDataCL_OFFER_QUANTITY.AsVariant * cdsDataCL_OFFER_LEASE_DATE_UNIT_QTY.AsVariant;

  cdsData_TOTAL_LEASE_QUANTITY.AsVariant:=
    cdsDataQUANTITY.AsVariant * cdsDataLEASE_DATE_UNIT_QTY.AsVariant;

  // dates
  if cdsDataREQUEST_SEND_DATE.IsNull or cdsDataREQUEST_REGISTER_DATE.IsNull then
    cdsData_REQUEST_REGISTER_DATE_DIFF.Clear
  else
    cdsData_REQUEST_REGISTER_DATE_DIFF.AsInteger:= Trunc(
      cdsDataREQUEST_REGISTER_DATE.AsDateTime - cdsDataREQUEST_SEND_DATE.AsDateTime);

  if cdsDataREQUEST_REGISTER_DATE.IsNull or cdsDataOFFER_SEND_PLAN_DATE.IsNull then
    cdsData_OFFER_SEND_PLAN_DATE_DIFF.Clear
  else
    cdsData_OFFER_SEND_PLAN_DATE_DIFF.AsInteger:= Trunc(
      cdsDataOFFER_SEND_PLAN_DATE.AsDateTime - cdsDataREQUEST_REGISTER_DATE.AsDateTime);

  if cdsDataOFFER_SEND_PLAN_DATE.IsNull or cdsDataOFFER_ANSWER_PLAN_DATE.IsNull then
    cdsData_OFFER_ANSWER_PLAN_DATE_DIFF.Clear
  else
    cdsData_OFFER_ANSWER_PLAN_DATE_DIFF.AsInteger:= Trunc(
      cdsDataOFFER_ANSWER_PLAN_DATE.AsDateTime - cdsDataOFFER_SEND_PLAN_DATE.AsDateTime);

  if cdsDataOFFER_ANSWER_PLAN_DATE.IsNull or cdsDataDECISION_PLAN_DATE.IsNull then
    cdsData_DECISION_PLAN_DATE_DIFF.Clear
  else
    cdsData_DECISION_PLAN_DATE_DIFF.AsInteger:= Trunc(
      cdsDataDECISION_PLAN_DATE.AsDateTime - cdsDataOFFER_ANSWER_PLAN_DATE.AsDateTime);

  if cdsDataOFFER_SEND_DATE.IsNull or cdsDataOFFER_ANSWER_DATE.IsNull then
    cdsData_OFFER_ANSWER_DATE_DIFF.Clear
  else
    cdsData_OFFER_ANSWER_DATE_DIFF.AsInteger:= Trunc(
      cdsDataOFFER_ANSWER_DATE.AsDateTime - cdsDataOFFER_SEND_DATE.AsDateTime);

  if cdsDataOFFER_ANSWER_DATE.IsNull or cdsDataDECISION_DATE.IsNull then
    cdsData_DECISION_DATE_DIFF.Clear
  else
    cdsData_DECISION_DATE_DIFF.AsInteger:= Trunc(
      cdsDataDECISION_DATE.AsDateTime - cdsDataOFFER_ANSWER_DATE.AsDateTime);

  if cdsDataOFFER_SEND_PLAN_DATE.IsNull then
    cdsData_OFFER_SEND_DATE_DEVIATION.Clear
  else
    begin
      if cdsDataOFFER_SEND_DATE.IsNull then
        cdsData_OFFER_SEND_DATE_DEVIATION.AsInteger:=
          Trunc(cdsDataOFFER_SEND_PLAN_DATE.AsDateTime - ContextDate)
      else
        cdsData_OFFER_SEND_DATE_DEVIATION.AsInteger:=
          Trunc(cdsDataOFFER_SEND_PLAN_DATE.AsDateTime - cdsDataOFFER_SEND_DATE.AsDateTime);
    end;

  if cdsDataOFFER_ANSWER_PLAN_DATE.IsNull then
    cdsData_OFFER_ANSWER_DATE_DEVIATION.Clear
  else
    begin
      if cdsDataOFFER_ANSWER_DATE.IsNull then
        cdsData_OFFER_ANSWER_DATE_DEVIATION.AsInteger:=
          Trunc(cdsDataOFFER_ANSWER_PLAN_DATE.AsDateTime - ContextDate)
      else
        cdsData_OFFER_ANSWER_DATE_DEVIATION.AsInteger:=
          Trunc(cdsDataOFFER_ANSWER_PLAN_DATE.AsDateTime - cdsDataOFFER_ANSWER_DATE.AsDateTime);
    end;

  if cdsDataDECISION_PLAN_DATE.IsNull then
    cdsData_DECISION_DATE_DEVIATION.Clear
  else
    begin
      if cdsDataDECISION_DATE.IsNull then
        cdsData_DECISION_DATE_DEVIATION.AsInteger:=
          Trunc(cdsDataDECISION_PLAN_DATE.AsDateTime - ContextDate)
      else
        cdsData_DECISION_DATE_DEVIATION.AsInteger:=
          Trunc(cdsDataDECISION_PLAN_DATE.AsDateTime - cdsDataDECISION_DATE.AsDateTime);
    end;

  // days
  if cdsDataDECISION_PLAN_DATE.isNull or cdsDataREQUEST_REGISTER_DATE.IsNull then
    cdsData_PLAN_PERIOD_DAYS.Clear
  else
    cdsData_PLAN_PERIOD_DAYS.AsInteger:= RealRound(cdsDataDECISION_PLAN_DATE.AsDateTime - cdsDataREQUEST_REGISTER_DATE.AsDateTime);

  if cdsDataDECISION_DATE.isNull or cdsDataREQUEST_REGISTER_DATE.IsNull then
    cdsData_REAL_PERIOD_DAYS.Clear
  else
    cdsData_REAL_PERIOD_DAYS.AsInteger:= RealRound(cdsDataDECISION_DATE.AsDateTime - cdsDataREQUEST_REGISTER_DATE.AsDateTime);

  // other
  if cdsDataRECEIVE_PLACE_OFFICE_CODE.IsNull then
    cdsData_COUNTRY_NAME.Clear
  else
    cdsData_COUNTRY_NAME.AsVariant:=
      cdsCompanyOffices.Lookup(
        'COMPANY_CODE; OFFICE_CODE',
        VarArrayOf([cdsDataCLIENT_COMPANY_CODE.AsInteger, cdsDataRECEIVE_PLACE_OFFICE_CODE.AsInteger]),
        '_COUNTRY_NAME'
      );

  cdsDataPARTNER_CODE.Assign(cdsDataCLIENT_COMPANY_CODE);
end;

procedure TfmSaleOrder.cdsDataCLIENT_COMPANY_CODEChange(Sender: TField);
begin
  inherited;

  GetCompanyInfo(cdsDataCLIENT_COMPANY_CODE,
    cdsDataCLIENT_COMPANY_NAME,
    nil, nil, nil, nil, nil);

  cdsDataRECEIVE_PLACE_OFFICE_CODE.Clear;

  OpenCompanyOffices;
end;

procedure TfmSaleOrder.cdsDataCL_OFFER_QUANTITYChange(Sender: TField);
begin

  if FCalculatingQuantity or cdsDataACCOUNT_MEASURE_COEF.IsNull then
    Exit;

  FCalculatingQuantity:= True;
  try
    if Sender.IsNull then
      cdsDataACCOUNT_CL_OFFER_QUANTITY.Clear
    else
      cdsDataACCOUNT_CL_OFFER_QUANTITY.AsFloat:= Sender.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;

  finally
    FCalculatingQuantity:= False;
  end;
end;

procedure TfmSaleOrder.cdsDataCL_OFFER_SINGLE_PRICEChange(Sender: TField);
begin
  inherited;

  if not FPricesChanging then
    begin
      FPricesChanging:= True;

      try
        if cdsDataCL_OFFER_SINGLE_PRICE.IsNull or (cdsDataACCOUNT_MEASURE_COEF.AsFloat = 0) then
          cdsDataACCOUNT_CL_OFFER_SINGLE_PRICE.Clear
        else
          cdsDataACCOUNT_CL_OFFER_SINGLE_PRICE.AsFloat:=
            cdsDataCL_OFFER_SINGLE_PRICE.AsFloat / cdsDataACCOUNT_MEASURE_COEF.AsFloat;

      finally
        FPricesChanging:= False;
      end;   { try }
    end;
end;

procedure TfmSaleOrder.cdsDataCOMMON_STATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= ProductCommonStatusAbbrevs[Sender.AsInteger];
end;

procedure TfmSaleOrder.cdsDataCURRENCY_CODEChange(Sender: TField);
begin
  inherited;
  // typ workaround, shtoto ne ebava kato se izchisti lookup poleto
  dbtCurrency.DataSource:= nil;
  dbtCurrency.DataSource:= dsData;
  dbtCurrency2.DataSource:= nil;
  dbtCurrency2.DataSource:= dsData;
  dbtCurrency3.DataSource:= nil;
  dbtCurrency3.DataSource:= dsData;
  dbtCurrency4.DataSource:= nil;
  dbtCurrency4.DataSource:= dsData;

  OpenSaleOrderProductInfo;
end;

procedure TfmSaleOrder.cdsDataDECISION_DATEChange(Sender: TField);
begin
  inherited;
  OpenSecondaryCurrencyRates;
  cdsDataDECISION_TYPE_CODE.Required:= not cdsDataDECISION_DATE.IsNull;
end;

procedure TfmSaleOrder.cdsDataMIN_BASE_PRICEChange(Sender: TField);
begin
  inherited;

  if not FPricesChanging then
    begin
      FPricesChanging:= True;

      try
        if cdsDataMIN_BASE_PRICE.IsNull or (cdsDataACCOUNT_MEASURE_COEF.AsFloat = 0) then
          cdsDataACCOUNT_MIN_BASE_PRICE.Clear
        else
          cdsDataACCOUNT_MIN_BASE_PRICE.AsFloat:=
            cdsDataMIN_BASE_PRICE.AsFloat / cdsDataACCOUNT_MEASURE_COEF.AsFloat;

      finally
        FPricesChanging:= False;
      end;   { try }
    end;
end;

procedure TfmSaleOrder.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsDataSALE_ORDER_TYPE_CODE.AsInteger:= sotNormalSaleOrder;

  cdsDataREQUEST_LINE_NO.AsInteger:=
    dmMain.SvrSaleOrders.GetNewRequestLineNo(cdsDataREQUEST_BRANCH_CODE.AsInteger, cdsDataREQUEST_NO.AsInteger);

  cdsDataSOS_OKIDU.AsBoolean:= False;
  cdsDataIS_ML_ENTRUSTED.AsBoolean:= False;
  cdsDataIS_ML_NOT_NEEDED.AsBoolean:= False;
  cdsDataHAS_DOC_ITEMS.AsBoolean:= False;

  if Assigned(OuterDataSet) then
    begin
      cdsDataSRG_DOC_BRANCH_CODE.Assign(OuterDataSet.FieldByName('DOC_BRANCH_CODE'));
      cdsDataSRG_DOC_CODE.Assign(OuterDataSet.FieldByName('DOC_CODE'));
      cdsDataSRG_HAS_DOC_ITEMS.Assign(OuterDataSet.FieldByName('HAS_DOCUMENTATION'));
    end;

  if (cdsSaleRequestGroupSTREAM_TYPE_CODE.AsInteger = stReverse) then
    cdsDataASPECT_TYPE_CODE.AsInteger:= AspectTypeToInt(atRealization);

  cdsDataDOC_BRANCH_CODE.Clear;
  cdsDataDOC_CODE.Clear;

  if (FProductClass = pcFinancial) then
    cdsDataIS_VENDOR_TRANSPORT.AsBoolean:= False;
end;

procedure TfmSaleOrder.cdsDataOUR_OFFER_QUANTITYChange(Sender: TField);
begin
  inherited;

  if FCalculatingQuantity or cdsDataACCOUNT_MEASURE_COEF.IsNull then
    Exit;

  FCalculatingQuantity:= True;
  try
    if Sender.IsNull then
      cdsDataACCOUNT_OUR_OFFER_QUANTITY.Clear
    else
      cdsDataACCOUNT_OUR_OFFER_QUANTITY.AsFloat:= Sender.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;

  finally
    FCalculatingQuantity:= False;
  end;
end;

procedure TfmSaleOrder.cdsDataOUR_OFFER_SINGLE_PRICEChange(Sender: TField);
begin
  inherited;

  if not FPricesChanging then
    begin
      FPricesChanging:= True;

      try
        if cdsDataOUR_OFFER_SINGLE_PRICE.IsNull or (cdsDataACCOUNT_MEASURE_COEF.AsFloat = 0) then
          cdsDataACCOUNT_OUR_OFFER_SINGLE_PRICE.Clear
        else
          cdsDataACCOUNT_OUR_OFFER_SINGLE_PRICE.AsFloat:=
            cdsDataOUR_OFFER_SINGLE_PRICE.AsFloat / cdsDataACCOUNT_MEASURE_COEF.AsFloat;

      finally
        FPricesChanging:= False;
      end;   { try }
    end;
end;

procedure TfmSaleOrder.cdsDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  DoProductFieldChanged(
    Sender, cdsDataPRODUCT_NAME, cdsDataPRODUCT_NO,
    cdsDataPRODUCT_MEASURE_CODE, cdsDataACCOUNT_MEASURE_CODE, cdsDataACCOUNT_MEASURE_COEF);

  cdsDataQUANTITYChange(cdsDataQUANTITY);
  cdsDataOUR_OFFER_QUANTITYChange(cdsDataOUR_OFFER_QUANTITY);
  cdsDataCL_OFFER_QUANTITYChange(cdsDataCL_OFFER_QUANTITY);

  OpenSaleOrderProductInfo;
  LoadDefaults;
  CalcParRelProductExists;
end;

procedure TfmSaleOrder.cdsDataQUANTITYChange(Sender: TField);
begin
  inherited;

  if FCalculatingQuantity or cdsDataACCOUNT_MEASURE_COEF.IsNull then
    Exit;

  FCalculatingQuantity:= True;
  try
    if Sender.IsNull then
      cdsDataACCOUNT_QUANTITY.Clear
    else
      cdsDataACCOUNT_QUANTITY.AsFloat:= Sender.AsFloat * cdsDataACCOUNT_MEASURE_COEF.AsFloat;

  finally
    FCalculatingQuantity:= False;
  end;
end;

procedure TfmSaleOrder.cdsDataRECEIVE_DATEChange(Sender: TField);
begin
  inherited;
  LoadDefaults;
  OpenSaleOrderProductInfo;
end;

procedure TfmSaleOrder.cdsDataSALE_BRANCH_CODEChange(Sender: TField);
begin
  inherited;

  if Sender.IsNull then
    begin
      cdsDataSALE_NO.Clear;
      cdsDataSALE_PRIORITY_CODE.Clear;
    end
  else
    begin
      cdsDataSALE_NO.AsInteger:=
        dmMain.SvrSaleOrders.GetNewSaleNo(cdsDataSALE_BRANCH_CODE.AsInteger);
      cdsDataSALE_PRIORITY_CODE.Assign(cdsDataCLIENT_PRIORITY_CODE);
    end;
end;

procedure TfmSaleOrder.cdsDataSINGLE_PRICEChange(Sender: TField);
begin
  inherited;

  if not FPricesChanging then
    begin
      FPricesChanging:= True;

      try
        if cdsDataSINGLE_PRICE.IsNull or (cdsDataACCOUNT_MEASURE_COEF.AsFloat = 0) then
          cdsDataACCOUNT_SINGLE_PRICE.Clear
        else
          cdsDataACCOUNT_SINGLE_PRICE.AsFloat:=
            cdsDataSINGLE_PRICE.AsFloat / cdsDataACCOUNT_MEASURE_COEF.AsFloat;

      finally
        FPricesChanging:= False;
      end;   { try }
    end;
end;

procedure TfmSaleOrder.cdsData_STATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= SaleOrderStatuses[Sender.AsInteger];
end;

procedure TfmSaleOrder.cdsSaleOrderProductInfoSPEC_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if (not Sender.IsNull) and
     (Low(SpecNoQuantityStateAbbrevs) <= Sender.AsInteger) and
     (Sender.AsInteger <= High(SpecNoQuantityStateAbbrevs)) then
    Text:= SpecNoQuantityStateAbbrevs[Sender.AsInteger];
end;

procedure TfmSaleOrder.CheckAllRequiredFields;
var
  i: Integer;
begin
  for i:= 0 to cdsData.Fields.Count - 1 do
    if cdsData.Fields[i].Required then
      CheckRequiredField(cdsData.Fields[i]);
end;

procedure TfmSaleOrder.CheckSomeRequiredFields;
begin
  ValidateDates;

  if not cdsDataSINGLE_PRICE.IsNull and
     (cdsDataSINGLE_PRICE.AsFloat <= 0) then
    raise Exception.Create(SPriceMustBePositive);

  if not cdsDataSALE_BRANCH_CODE.IsNull then
    CheckRequiredFields([
      cdsDataOFFER_SEND_PLAN_DATE,
      cdsDataOFFER_SEND_DATE,
      cdsDataOFFER_ANSWER_PLAN_DATE,
      cdsDataOFFER_ANSWER_DATE,
      cdsDataDECISION_PLAN_DATE,
      cdsDataDECISION_DATE,
      cdsDataQUANTITY,
      cdsDataCURRENCY_CODE,
      cdsDataSINGLE_PRICE,
      cdsDataRECEIVE_DATE,
      cdsDataSALE_BRANCH_CODE,
      cdsDataSALE_NO,
      cdsDataSALE_TYPE_CODE,
      cdsDataDECISION_EMPLOYEE_CODE,
      cdsDataSHIPMENT_DATE,
      cdsDataSHIPMENT_STORE_CODE,
      cdsDataSALE_PRIORITY_CODE,
      cdsDataIS_VENDOR_TRANSPORT
    ]);

  if cdsDataSALE_BRANCH_CODE.IsNull and
     (cdsDataASPECT_TYPE_CODE.AsInteger = AspectTypeToInt(atRealization)) then
    begin
      CheckRequiredFields([
        cdsDataQUANTITY,
        cdsDataCL_OFFER_RECEIVE_DATE,
        cdsDataSHIPMENT_STORE_CODE,
        cdsDataSHIPMENT_DAYS
      ]);

     if (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtLease) then
       CheckRequiredFields([
         cdsDataLEASE_DATE_UNIT_QTY,
         cdsDataCL_OFFER_RETURN_DATE
       ]);
    end;  { if }

  if not cdsDataSALE_BRANCH_CODE.IsNull and
     (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtLease) then
    begin
      CheckRequiredFields([
        cdsDataRECEIVE_DATE,
        cdsDataRETURN_DATE,
        cdsDataCL_OFFER_RECEIVE_DATE,
        cdsDataCL_OFFER_RETURN_DATE,
        cdsDataIMPORT_DATE
      ]);
    end;  { if }

  if (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtLease) and
     not cdsDataIMPORT_DATE.IsNull and
     not cdsDataRETURN_DATE.IsNull and
     (cdsDataIMPORT_DATE.AsDateTime < cdsDataRETURN_DATE.AsDateTime) then
    begin
      raise Exception.Create(SImportDateMustNotBeLessThanEndOfLeaseInterval);
    end;  { if }

  if not cdsDataDECISION_TYPE_CODE.IsNull or not cdsDataDECISION_EMPLOYEE_CODE.IsNull then
    CheckRequiredFields([cdsDataDECISION_TYPE_CODE, cdsDataDECISION_EMPLOYEE_CODE]);

  if not cdsDataLEASE_DATE_UNIT_QTY.IsNull or not cdsDataLEASE_DATE_UNIT_CODE.IsNull then
    CheckRequiredFields([cdsDataLEASE_DATE_UNIT_QTY, cdsDataLEASE_DATE_UNIT_CODE]);

  if not cdsDataCL_OFFER_LEASE_DATE_UNIT_QTY.IsNull or not cdsDataCL_OFFER_LEASE_DATE_UNIT_CODE.IsNull then
    CheckRequiredFields([cdsDataCL_OFFER_LEASE_DATE_UNIT_QTY, cdsDataCL_OFFER_LEASE_DATE_UNIT_CODE]);

  if not cdsDataOUR_OFFER_LEASE_DATE_UNIT_QTY.IsNull or not cdsDataOUR_OFFER_LEASE_DATE_UNIT_CODE.IsNull then
    CheckRequiredFields([cdsDataOUR_OFFER_LEASE_DATE_UNIT_QTY, cdsDataOUR_OFFER_LEASE_DATE_UNIT_CODE]);

  if (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtExport) and
     (cdsDataASPECT_TYPE_CODE.AsInteger = AspectTypeToInt(atRealization)) then
    CheckRequiredFields([
      cdsDataQUANTITY,
      cdsDataCURRENCY_CODE,
      cdsDataSINGLE_PRICE
    ]);

  if (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtExport) and
     (cdsDataASPECT_TYPE_CODE.AsInteger = AspectTypeToInt(atRealization)) and
     (actIsDeliveryRequired.Checked) then
    CheckRequiredFields([
      cdsDataDELIVERY_OBJECT_BRANCH_CODE,
      cdsDataDELIVERY_OBJECT_CODE
    ]);
end;

procedure TfmSaleOrder.CloseDataSets;
begin
  pdsDeliveryID.Close;
  cdsSaleOrderProductInfo.Close;
  cdsSecondaryCurrencyRates.Close;
  cdsCompanyOffices.Close;
  inherited;
  cdsCountries.Close;
  cdsPriorities.Close;
  cdsSaleTypes.Close;
  cdsShipmentTypes.Close;
  cdsCustomhouses.Close;
  cdsDateUnits.Close;
  cdsDecisionTypes.Close;
  cdsCurrencies.Close;
  cdsAspectTypes.Close;
  cdsBranches.Close;
  cdsSaleDealTypes.Close;
end;

procedure TfmSaleOrder.DatesOnValidate(Sender: TField);
begin
  inherited;
  ValidateDates;
end;

procedure TfmSaleOrder.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(cdsDataHAS_DOC_ITEMS);
end;

procedure TfmSaleOrder.DoApplyUpdates;
var
  PartnerCode: Integer;
  BaseDate: TDateTime;
begin
  if (not FHadSaleNo) and
     (not cdsDataSALE_NO.IsNull) and
     cdsDataANNUL_EMPLOYEE_CODE.IsNull and
     FinOrderNeeded then
    begin
      LoginContext.CheckUserActivity(uaNewFinancialOrder);

      PartnerCode:= cdsDataCLIENT_COMPANY_CODE.AsInteger;
      BaseDate:= cdsDataSHIPMENT_DATE.AsDateTime;

      if not TfmNewFinOrder.ShowForm(nil, cdsData, emEdit, doNone, PartnerCode, brtClient, BaseDate, BaseDate, cdsDataSALE_BRANCH_CODE.AsInteger) and
         (LoginContext.FinOrderRequirementCode = forcPrompt) then
        Abort;
    end;

  CheckFinOrderField(cdsDataFO_EXEC_DEPT_CODE);

  if (not FHadSaleNo) and
     (not cdsDataSALE_NO.IsNull) and
     cdsDataANNUL_EMPLOYEE_CODE.IsNull then
    dmDocClient.DSInitDoc(dotSaleShipment, cdsDataSSH_DOC_BRANCH_CODE, cdsDataSSH_DOC_CODE);

  inherited;

  FFinalFinOrderCode:= cdsDataFIN_ORDER_CODE.AsInteger;
end;

procedure TfmSaleOrder.edtDCDCodeExit(Sender: TObject);
begin
  inherited;
  LoadDeliveryID;
end;

procedure TfmSaleOrder.edtDeliveryProjectCodeExit(Sender: TObject);
begin
  inherited;
  LoadDeliveryID;
end;

end.
