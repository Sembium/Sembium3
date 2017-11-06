unit fParRelProducts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,AbmesDBGrid, ComCtrls, ToolWin,
  AbmesClientDataSet, Buttons, GridsEh, DBGridEh, DBCtrls, ColorNavigator,
  StdCtrls, Mask, uClientTypes, dDocClient, uBorderRelTypes, uProducts,
  uParRelProducts, fBaseFrame, fDBFrame, fFieldEditFrame, fGridForm,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, fProductExFieldEditFrame,
  fDateIntervalFrame, fDeptFieldEditFrame, uProductionOrderTypes, PrnDbgeh,
  Menus, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions,
  DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TMeasureDisplayType = (mdtWork, mdtAccount);
  TValuePartDisplayType = (vpdtBusinessResult, vpdtInvestment);
  TRealsDisplayType = (rdtNone, rdtQuantity, rdtDiff);
  TDiffDisplayType = (ddtQuantity, ddtPercent);

type
  TfmParRelProducts = class(TMasterDetailForm)
    cdsDetailPARTNER_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_CODE: TAbmesFloatField;
    cdsDetailDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailDOC_CODE: TAbmesFloatField;
    cdsDetailIS_REGULAR: TAbmesFloatField;
    cdsDetailPARTNER_NO: TAbmesFloatField;
    cdsDetailPARTNER_NAME: TAbmesWideStringField;
    cdsDetailPARTNER_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailPARTNER_DOC_CODE: TAbmesFloatField;
    cdsDetailPARTNER_HAS_DOC: TAbmesFloatField;
    cdsDetailPARTNER_PRIORITY_CODE: TAbmesFloatField;
    cdsDetailPARTNER_PRIORITY_NO: TAbmesFloatField;
    cdsDetailPAR_PRIORITY_COLOR: TAbmesFloatField;
    cdsDetailPAR_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsDetailPARTNER_COMPANY_CLASS_CODE: TAbmesFloatField;
    cdsDetailPARTNER_COMPANY_CLASS_ABBREV: TAbmesWideStringField;
    cdsDetailPARTNER_STATUS_CODE: TAbmesFloatField;
    cdsDetailPARTNER_STATUS_NAME: TAbmesWideStringField;
    cdsDetailPARTNER_EXISTENCE_MONTHS: TAbmesFloatField;
    cdsDetailPRODUCT_NO: TAbmesFloatField;
    cdsDetailPRODUCT_NAME: TAbmesWideStringField;
    cdsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_HAS_DOC: TAbmesFloatField;
    cdsDetailPRODUCT_PRIORITY_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_PRIORITY_NO: TAbmesFloatField;
    cdsDetailPROD_PRIORITY_COLOR: TAbmesFloatField;
    cdsDetailPROD_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsDetailPRODUCT_MEASURE_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailEST_QUANTITY: TAbmesFloatField;
    cdsDetailEST_TOTAL_PRICE: TAbmesFloatField;
    cdsDetailEST_TOTAL_INVESTMENT_VALUE: TAbmesFloatField;
    cdsDetailREAL_QUANTITY: TAbmesFloatField;
    cdsDetailREAL_TOTAL_PRICE: TAbmesFloatField;
    cdsDetailREAL_TOTAL_INVESTMENT_VALUE: TAbmesFloatField;
    cdsDetailPROD_MIN_PREC_LEVEL_NO: TAbmesFloatField;
    cdsDetailPROD_MIN_PREC_LEVEL_COLOR: TAbmesFloatField;
    cdsDetailPROD_MIN_PREC_LEVEL_BACK_COLOR: TAbmesFloatField;
    cdsDetailPROD_MAX_PREC_LEVEL_NO: TAbmesFloatField;
    cdsDetailPROD_MAX_PREC_LEVEL_COLOR: TAbmesFloatField;
    cdsDetailPROD_MAX_PREC_LEVEL_BACK_COLOR: TAbmesFloatField;
    cdsDetailENGINEERING_ORDER_CODE: TAbmesFloatField;
    cdsDetailEO_ENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsDetailEO_ENGINEERING_PLAN_WORKDAYS: TAbmesFloatField;
    cdsDetailEO_ENGINEERING_REAL_WORKDAYS: TAbmesFloatField;
    cdsDetailEO_ENGINEERING_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDetailPRODUCT_SPEC_STATE_CODE: TAbmesFloatField;
    cdsDetailJOINED_PRODUCT_COUNT: TAbmesFloatField;
    cdsDetailJOINED_SPEC_STATE_1_COUNT: TAbmesFloatField;
    cdsDetailJOINED_SPEC_STATE_2_COUNT: TAbmesFloatField;
    cdsDetailJOINED_SPEC_STATE_3_COUNT: TAbmesFloatField;
    cdsDetailJOINED_SPEC_STATE_4_COUNT: TAbmesFloatField;
    cdsDetailJOINED_SPEC_STATE_5_COUNT: TAbmesFloatField;
    cdsDetailJOINED_SPEC_STATE_6_COUNT: TAbmesFloatField;
    cdsDetailEST_SINGLE_PRICE: TAbmesFloatField;
    cdsDetailEST_BUSINESS_RESULT_VALUE: TAbmesFloatField;
    cdsDetailEST_BUSINESS_RESULT_PERCENT: TAbmesFloatField;
    cdsDetailREAL_SINGLE_PRICE: TAbmesFloatField;
    cdsDetailREAL_BUSINESS_RESULT_VALUE: TAbmesFloatField;
    cdsDetailREAL_BUSINESS_RESULT_PERCENT: TAbmesFloatField;
    cdsDetail_SUM_EST_QUANTITY: TAggregateField;
    cdsDetail_SUM_EST_TOTAL_PRICE: TAggregateField;
    cdsDetail_SUM_EST_TOTAL_INVESTMENT_VALUE: TAggregateField;
    cdsDetail_SUM_REAL_QUANTITY: TAggregateField;
    cdsDetail_SUM_REAL_TOTAL_PRICE: TAggregateField;
    cdsDetail_SUM_REAL_TOTAL_INVESTMENT_VALUE: TAggregateField;
    cdsGridDataPARTNER_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_NO: TAbmesFloatField;
    cdsGridDataPARTNER_NAME: TAbmesWideStringField;
    cdsGridDataPARTNER_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_DOC_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_HAS_DOC: TAbmesFloatField;
    cdsGridDataPARTNER_PRIORITY_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataPAR_PRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataPAR_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridDataPARTNER_COMPANY_CLASS_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_COMPANY_CLASS_ABBREV: TAbmesWideStringField;
    cdsGridDataPARTNER_STATUS_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_STATUS_NAME: TAbmesWideStringField;
    cdsGridDataPARTNER_EXISTENCE_MONTHS: TAbmesFloatField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_HAS_DOC: TAbmesFloatField;
    cdsGridDataPRODUCT_PRIORITY_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataPROD_PRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataPROD_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridDataPRODUCT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataEST_QUANTITY: TAbmesFloatField;
    cdsGridDataEST_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataEST_TOTAL_INVESTMENT_VALUE: TAbmesFloatField;
    cdsGridDataREAL_QUANTITY: TAbmesFloatField;
    cdsGridDataREAL_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataREAL_TOTAL_INVESTMENT_VALUE: TAbmesFloatField;
    cdsGridDataPROD_MIN_PREC_LEVEL_NO: TAbmesFloatField;
    cdsGridDataPROD_MIN_PREC_LEVEL_COLOR: TAbmesFloatField;
    cdsGridDataPROD_MIN_PREC_LEVEL_BACK_COLOR: TAbmesFloatField;
    cdsGridDataPROD_MAX_PREC_LEVEL_NO: TAbmesFloatField;
    cdsGridDataPROD_MAX_PREC_LEVEL_COLOR: TAbmesFloatField;
    cdsGridDataPROD_MAX_PREC_LEVEL_BACK_COLOR: TAbmesFloatField;
    cdsGridDataENGINEERING_ORDER_CODE: TAbmesFloatField;
    cdsGridDataEO_ENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEO_ENGINEERING_PLAN_WORKDAYS: TAbmesFloatField;
    cdsGridDataEO_ENGINEERING_REAL_WORKDAYS: TAbmesFloatField;
    cdsGridDataEO_ENGINEERING_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataPRODUCT_SPEC_STATE_CODE: TAbmesFloatField;
    cdsGridDataJOINED_PRODUCT_COUNT: TAbmesFloatField;
    cdsGridDataJOINED_SPEC_STATE_1_COUNT: TAbmesFloatField;
    cdsGridDataJOINED_SPEC_STATE_2_COUNT: TAbmesFloatField;
    cdsGridDataJOINED_SPEC_STATE_3_COUNT: TAbmesFloatField;
    cdsGridDataJOINED_SPEC_STATE_4_COUNT: TAbmesFloatField;
    cdsGridDataJOINED_SPEC_STATE_5_COUNT: TAbmesFloatField;
    cdsGridDataJOINED_SPEC_STATE_6_COUNT: TAbmesFloatField;
    cdsGridDataEST_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataEST_BUSINESS_RESULT_VALUE: TAbmesFloatField;
    cdsGridDataEST_BUSINESS_RESULT_PERCENT: TAbmesFloatField;
    cdsGridDataREAL_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataREAL_BUSINESS_RESULT_VALUE: TAbmesFloatField;
    cdsGridDataREAL_BUSINESS_RESULT_PERCENT: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsINVESTMENT_LEVEL_CODE: TAbmesFloatField;
    pdsGridDataParamsCALC_REALS: TAbmesFloatField;
    pdsGridDataParamsBORDER_REL_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseType: TAbmesClientDataSet;
    cdsInvestmentLevels: TAbmesClientDataSet;
    pdsGridDataParams_OBTAINMENT_TYPE_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_INVESTMENT_LEVEL_DESCRIPTION: TAbmesWideStringField;
    cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeOBTAINMENT_TYPE_NAME: TAbmesWideStringField;
    cdsInvestmentLevelsINVESTMENT_LEVEL_CODE: TAbmesFloatField;
    cdsInvestmentLevelsINVESTMENT_LEVEL_NAME: TAbmesWideStringField;
    cdsInvestmentLevels_INVESTMENT_LEVEL_DESCRIPTION: TAbmesWideStringField;
    cdsDetailHAS_DOC: TAbmesFloatField;
    cdsDetailPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsDetailPRODUCT_COMMON_STATUS_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_COMMON_STATUS_CODE: TAbmesFloatField;
    cdsDetailEST_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDetailEST_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsDetailREAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDetailREAL_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataEST_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataEST_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataREAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataREAL_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsDetail_SUM_EST_ACCOUNT_QUANTITY: TAggregateField;
    cdsDetail_SUM_REAL_ACCOUNT_QUANTITY: TAggregateField;
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsDetailEO_ENGINEERING_WORKDAYS_DIFF: TAbmesFloatField;
    cdsDetailEO_ENGINEERING_WORKDAYS_DIFF_PERCENT: TAbmesFloatField;
    cdsGridDataEO_ENGINEERING_WORKDAYS_DIFF: TAbmesFloatField;
    cdsGridDataEO_ENGINEERING_WORKDAYS_DIFF_PERCENT: TAbmesFloatField;
    cdsDetailREAL_QUANTITY_DIFF: TAbmesFloatField;
    cdsDetailREAL_ACCOUNT_QUANTITY_DIFF: TAbmesFloatField;
    cdsDetailREAL_SINGLE_PRICE_DIFF: TAbmesFloatField;
    cdsDetailREAL_ACCOUNT_SINGLE_PRICE_DIFF: TAbmesFloatField;
    cdsDetailREAL_TOTAL_PRICE_DIFF: TAbmesFloatField;
    cdsDetailREAL_BUSINESS_RESULT_VALUE_DIFF: TAbmesFloatField;
    cdsDetailREAL_BUSINESS_RESULT_PERCENT_DIFF: TAbmesFloatField;
    cdsDetailREAL_QUANTITY_DIFF_PERCENT: TAbmesFloatField;
    cdsDetailREAL_ACCOUNT_QUANTITY_DIFF_PERCENT: TAbmesFloatField;
    cdsDetailREAL_SINGLE_PRICE_DIFF_PERCENT: TAbmesFloatField;
    cdsDetailREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT: TAbmesFloatField;
    cdsDetailREAL_TOTAL_PRICE_DIFF_PERCENT: TAbmesFloatField;
    cdsDetailREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT: TAbmesFloatField;
    cdsDetailREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT: TAbmesFloatField;
    cdsGridDataREAL_QUANTITY_DIFF: TAbmesFloatField;
    cdsGridDataREAL_ACCOUNT_QUANTITY_DIFF: TAbmesFloatField;
    cdsGridDataREAL_SINGLE_PRICE_DIFF: TAbmesFloatField;
    cdsGridDataREAL_ACCOUNT_SINGLE_PRICE_DIFF: TAbmesFloatField;
    cdsGridDataREAL_TOTAL_PRICE_DIFF: TAbmesFloatField;
    cdsGridDataREAL_BUSINESS_RESULT_VALUE_DIFF: TAbmesFloatField;
    cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFF: TAbmesFloatField;
    cdsGridDataREAL_QUANTITY_DIFF_PERCENT: TAbmesFloatField;
    cdsGridDataREAL_ACCOUNT_QUANTITY_DIFF_PERCENT: TAbmesFloatField;
    cdsGridDataREAL_SINGLE_PRICE_DIFF_PERCENT: TAbmesFloatField;
    cdsGridDataREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT: TAbmesFloatField;
    cdsGridDataREAL_TOTAL_PRICE_DIFF_PERCENT: TAbmesFloatField;
    cdsGridDataREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT: TAbmesFloatField;
    cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT: TAbmesFloatField;
    pdsGridDataParamsCALC_ESTS: TAbmesFloatField;
    pdsGridDataParamsCALC_ENGINEERING: TAbmesFloatField;
    pdsGridDataParamsCOMMON_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_COUNT: TAbmesFloatField;
    cdsGridDataSPEC_STATE_1_COUNT: TAbmesFloatField;
    cdsGridDataSPEC_STATE_2_COUNT: TAbmesFloatField;
    cdsGridDataSPEC_STATE_3_COUNT: TAbmesFloatField;
    cdsGridDataSPEC_STATE_4_COUNT: TAbmesFloatField;
    cdsGridDataSPEC_STATE_5_COUNT: TAbmesFloatField;
    cdsGridDataSPEC_STATE_6_COUNT: TAbmesFloatField;
    cdsDetailIS_PRODUCT_SPEC_STATE_1: TAbmesFloatField;
    cdsDetailIS_PRODUCT_SPEC_STATE_2: TAbmesFloatField;
    cdsDetailIS_PRODUCT_SPEC_STATE_3: TAbmesFloatField;
    cdsDetailIS_PRODUCT_SPEC_STATE_4: TAbmesFloatField;
    cdsDetailIS_PRODUCT_SPEC_STATE_5: TAbmesFloatField;
    cdsDetailIS_PRODUCT_SPEC_STATE_6: TAbmesFloatField;
    cdsDetail_PRODUCT_SPEC_STATE_1_COUNT: TAggregateField;
    cdsDetail_PRODUCT_SPEC_STATE_2_COUNT: TAggregateField;
    cdsDetail_PRODUCT_SPEC_STATE_3_COUNT: TAggregateField;
    cdsDetail_PRODUCT_SPEC_STATE_4_COUNT: TAggregateField;
    cdsDetail_PRODUCT_SPEC_STATE_5_COUNT: TAggregateField;
    cdsDetail_PRODUCT_SPEC_STATE_6_COUNT: TAggregateField;
    cdsDetail_COUNT: TAggregateField;
    actSetWorkMeasureDisplay: TAction;
    actSetAccountMeasureDisplay: TAction;
    actSetDiffQuantityDisplay: TAction;
    actSetRealsQuantityDisplay: TAction;
    actSetRealsDiffDisplay: TAction;
    actSetDiffPercentDisplay: TAction;
    tlbRightButtons: TToolBar;
    btnSetWorkMeasureDisplay: TToolButton;
    btnSetAccountMeasureDisplay: TToolButton;
    sepBeforeMeasureDisplayButtons: TToolButton;
    btnSetRealsQuantityDisplay: TToolButton;
    btnSetRealsDiffDisplay: TToolButton;
    sepBeforeDiffDisplayButtons: TToolButton;
    btnSetDiffQuantityDisplay: TToolButton;
    btnSetDiffPercentDisplay: TToolButton;
    pdsGridDataParams_BUSINESS_RESULT_NOTE: TAbmesWideStringField;
    cdsDetailEST_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField;
    cdsDetailREAL_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField;
    cdsDetailREAL_TOTAL_INVESTMENT_VALUE_DIFF: TAbmesFloatField;
    cdsDetailREAL_TOTAL_INVESTMENT_PERCENT_DIFF: TAbmesFloatField;
    cdsDetailREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT: TAbmesFloatField;
    cdsDetailREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT: TAbmesFloatField;
    cdsGridDataEST_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField;
    cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField;
    cdsGridDataREAL_TOTAL_INVESTMENT_VALUE_DIFF: TAbmesFloatField;
    cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFF: TAbmesFloatField;
    cdsGridDataREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT: TAbmesFloatField;
    cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT: TAbmesFloatField;
    actSetBusinessResultPartDisplay: TAction;
    actSetInvestmentPartDisplay: TAction;
    sepBeforeRealsDisplayButtons: TToolButton;
    btnSetBusinessResultPartDisplay: TToolButton;
    btnSetInvestmentPartDisplay: TToolButton;
    cdsDetailJOINED_SPEC_STATE_1_PERCENT: TAbmesFloatField;
    cdsDetailJOINED_SPEC_STATE_2_PERCENT: TAbmesFloatField;
    cdsDetailJOINED_SPEC_STATE_3_PERCENT: TAbmesFloatField;
    cdsDetailJOINED_SPEC_STATE_4_PERCENT: TAbmesFloatField;
    cdsDetailJOINED_SPEC_STATE_5_PERCENT: TAbmesFloatField;
    cdsDetailJOINED_SPEC_STATE_6_PERCENT: TAbmesFloatField;
    cdsGridDataJOINED_SPEC_STATE_1_PERCENT: TAbmesFloatField;
    cdsGridDataJOINED_SPEC_STATE_2_PERCENT: TAbmesFloatField;
    cdsGridDataJOINED_SPEC_STATE_3_PERCENT: TAbmesFloatField;
    cdsGridDataJOINED_SPEC_STATE_4_PERCENT: TAbmesFloatField;
    cdsGridDataJOINED_SPEC_STATE_5_PERCENT: TAbmesFloatField;
    cdsGridDataJOINED_SPEC_STATE_6_PERCENT: TAbmesFloatField;
    cdsGridDataSPEC_STATE_1_PERCENT: TAbmesFloatField;
    cdsGridDataSPEC_STATE_2_PERCENT: TAbmesFloatField;
    cdsGridDataSPEC_STATE_3_PERCENT: TAbmesFloatField;
    cdsGridDataSPEC_STATE_4_PERCENT: TAbmesFloatField;
    cdsGridDataSPEC_STATE_5_PERCENT: TAbmesFloatField;
    cdsGridDataSPEC_STATE_6_PERCENT: TAbmesFloatField;
    actMasterPartnerDoc: TAction;
    actMasterProductDoc: TAction;
    actDetailPartnerDoc: TAction;
    actDetailProductDoc: TAction;
    actParRelProductDoc: TAction;
    tlbMasterPartnerDoc: TToolBar;
    sepBeforeMasterPartnerDoc: TToolButton;
    lblMasterPartnerDoc: TLabel;
    btnMasterPartnerDoc: TToolButton;
    tlbMasterProductDoc: TToolBar;
    sepBeforeMasterProductDoc: TToolButton;
    lblMasterProductDoc: TLabel;
    btnMasterProductDoc: TToolButton;
    tlbDetailPartnerDoc: TToolBar;
    sepDetailPartnerDoc: TToolButton;
    lblDetailPartnerDoc: TLabel;
    btnDetailPartnerDoc: TToolButton;
    tlbDetailProductDoc: TToolBar;
    sepDetailProductDoc: TToolButton;
    lblDetailProductDoc: TLabel;
    btnDetailProductDoc: TToolButton;
    tlbParRelProductDoc: TToolBar;
    sepParRelProductDoc: TToolButton;
    lblParRelProductDoc: TLabel;
    btnParRelProductDoc: TToolButton;
    pnlNotes: TPanel;
    dbtBusinessResultNote: TDBText;
    lblCurrencyNote: TLabel;
    pnlParRelProductsEngineeringButton: TPanel;
    btnParRelProductsEngineering: TBitBtn;
    actParRelProductsEngineering: TAction;
    pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pnlParRelProductsForCommonProductButton: TPanel;
    btnParRelProductsForCommonProduct: TBitBtn;
    actParRelProductsForCommonProduct: TAction;
    cdsDetailBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsGridDataBORDER_REL_TYPE_CODE: TAbmesFloatField;
    pnlEngineeringButtons: TPanel;
    btnEngineeringOrder: TBitBtn;
    actEngineeringOrder: TAction;
    btnCommonGroups: TBitBtn;
    actCommonGroups: TAction;
    cdsDetailPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    cdsDetailPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    cdsDetailPAR_REL_PRODUCT_EXIST_MONTHS: TAbmesFloatField;
    pnlCommonProduct: TPanel;
    frCommonProduct: TfrProductExFieldEditFrame;
    cdsDetailEST_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDetailREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridDataEST_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridDataREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDetailOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsDetailPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDetail_MIN_EST_LEASE_DATE_UNIT_NAME: TAggregateField;
    cdsDetail_MAX_EST_LEASE_DATE_UNIT_NAME: TAggregateField;
    cdsDetail_COUNT_EST_LEASE_DATE_UNIT_NAME: TAggregateField;
    cdsDetail_MIN_REAL_LEASE_DATE_UNIT_NAME: TAggregateField;
    cdsDetail_MAX_REAL_LEASE_DATE_UNIT_NAME: TAggregateField;
    cdsDetail_COUNT_REAL_LEASE_DATE_UNIT_NAME: TAggregateField;
    cdsGridDataLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsParRelProductParams: TAbmesClientDataSet;
    cdsParRelProductParamsPARTNER_CODE: TAbmesFloatField;
    cdsParRelProductParamsBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsParRelProductParamsPRODUCT_CODE: TAbmesFloatField;
    cdsParRelProductParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsParRelProductParamsPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_REGULAR: TAbmesFloatField;
    pdsGridDataParamsCOMPANY_CLASS_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField;
    cdsDetailPRP_STATUS_REACH_MONTHS: TAbmesFloatField;
    cdsDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    pdsGridDataParamsMIN_COMPANY_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_COMPANY_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_PRP_EXIST_MONTHS: TAbmesFloatField;
    pdsGridDataParamsMAX_PRP_EXIST_MONTHS: TAbmesFloatField;
    pdsGridDataParamsMIN_PRP_STATUS_REACH_MONTHS: TAbmesFloatField;
    pdsGridDataParamsMAX_PRP_STATUS_REACH_MONTHS: TAbmesFloatField;
    cdsDetail_COUNT_EST_TOTAL_INVESTMENT_VALUE: TAggregateField;
    cdsGridData_SUM_EST_TOTAL_PRICE: TAggregateField;
    cdsGridData_SUM_REAL_TOTAL_PRICE: TAggregateField;
    cdsGridData__SUM_EST_TOTAL_INVESTMENT_VALUE: TAggregateField;
    cdsGridData__SUM_REAL_TOTAL_INVESTMENT_VALUE: TAggregateField;
    cdsGridData_SUM_EST_TOTAL_INVESTMENT_VALUE: TAbmesFloatField;
    cdsGridData_SUM_EST_BUSINESS_RESULT_VALUE: TAbmesFloatField;
    cdsGridData_AVG_EST_BUSINESS_RESULT_PERCENT: TAbmesFloatField;
    cdsGridData_AVG_EST_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField;
    cdsGridData_SUM_REAL_TOTAL_INVESTMENT_VALUE: TAbmesFloatField;
    cdsGridData_SUM_REAL_BUSINESS_RESULT_VALUE: TAbmesFloatField;
    cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT: TAbmesFloatField;
    cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField;
    cdsGridData_SUM_REAL_TOTAL_INVESTMENT_VALUE_DIFF: TAbmesFloatField;
    cdsGridData_SUM_REAL_BUSINESS_RESULT_VALUE_DIFF: TAbmesFloatField;
    cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF: TAbmesFloatField;
    cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF: TAbmesFloatField;
    cdsGridData_AVG_REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT: TAbmesFloatField;
    cdsGridData_AVG_REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT: TAbmesFloatField;
    cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT: TAbmesFloatField;
    cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT: TAbmesFloatField;
    cdsGridData_COUNT_EST_TOTAL_INVESTMENT_VALUE: TAggregateField;
    cdsGridData_COUNT_REAL_TOTAL_INVESTMENT_VALUE: TAggregateField;
    sepBeforeValuePartDisplayButtons: TToolButton;
    pnlParams: TPanel;
    frDateInterval: TfrDateIntervalFrame;
    edtObtainmentType: TDBEdit;
    pdsGridDataParams_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParams_END_DATE: TAbmesSQLTimeStampField;
    cdsDetail_COUNT_REAL_TOTAL_INVESTMENT_VALUE: TAggregateField;
    cdsDetail_COUNT_REAL_TOTAL_PRICE: TAggregateField;
    cdsGridData_COUNT_REAL_TOTAL_PRICE: TAggregateField;
    cdsGridData_SUM_REAL_TOTAL_PRICE_DIFF: TAbmesFloatField;
    cdsGridData_AVG_REAL_TOTAL_PRICE_DIFF_PERCENT: TAbmesFloatField;
    cdsSaleExpGroupsParams: TAbmesClientDataSet;
    cdsSaleExpGroupsParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsSaleExpGroupsParamsMIN_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField;
    cdsSaleExpGroupsParamsMAX_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField;
    cdsSaleExpGroupsParamsBEGIN_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsSaleExpGroupsParamsEND_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    pnlRealBorderDealsButton: TPanel;
    btnRealBorderDeals: TBitBtn;
    actRealBorderDeals: TAction;
    pnlPriceListButton: TPanel;
    btnPriceList: TBitBtn;
    actPriceList: TAction;
    cdsDetailDETAIL_QUANTITY: TAbmesFloatField;
    cdsDetailMATERIAL_QUANTITY: TAbmesFloatField;
    cdsDetailCAPACITY_BUSY_HOURS: TAbmesFloatField;
    cdsDetailDETAIL_MEASURE_ABBR: TAbmesWideStringField;
    cdsDetailDETAIL_ACCOUNT_MEASURE_ABBR: TAbmesWideStringField;
    cdsDetailDETAIL_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsDetailMATERIAL_MEASURE_ABBR: TAbmesWideStringField;
    cdsDetailMATERIAL_ACCOUNT_MEASURE_ABBR: TAbmesWideStringField;
    cdsDetailMATERIAL_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsGridDataDETAIL_QUANTITY: TAbmesFloatField;
    cdsGridDataDETAIL_MEASURE_ABBR: TAbmesWideStringField;
    cdsGridDataDETAIL_ACCOUNT_MEASURE_ABBR: TAbmesWideStringField;
    cdsGridDataDETAIL_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsGridDataMATERIAL_QUANTITY: TAbmesFloatField;
    cdsGridDataMATERIAL_MEASURE_ABBR: TAbmesWideStringField;
    cdsGridDataMATERIAL_ACCOUNT_MEASURE_ABBR: TAbmesWideStringField;
    cdsGridDataMATERIAL_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsGridDataCAPACITY_BUSY_HOURS: TAbmesFloatField;
    cdsDetailDETAIL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDetailMATERIAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataDETAIL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataMATERIAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDetail_SUM_DETAIL_QUANTITY: TAggregateField;
    cdsDetail_SUM_DETAIL_ACCOUNT_QUANTITY: TAggregateField;
    cdsDetail_SUM_MATERIAL_QUANTITY: TAggregateField;
    cdsDetail_SUM_MATERIAL_ACCOUNT_QUANTITY: TAggregateField;
    cdsDetail_SUM_CAPACITY_BUSY_HOURS: TAggregateField;
    cdsGridData_SUM_DETAIL_QUANTITY: TAggregateField;
    cdsGridData_MIN_DETAIL_MEASURE_ABBR: TAggregateField;
    cdsGridData_SUM_DETAIL_ACCOUNT_QUANTITY: TAggregateField;
    cdsGridData_MIN_DETAIL_ACCOUNT_MEASURE_ABBR: TAggregateField;
    cdsGridData_SUM_MATERIAL_QUANTITY: TAggregateField;
    cdsGridData_MIN_MATERIAL_MEASURE_ABBR: TAggregateField;
    cdsGridData_SUM_MATERIAL_ACCOUNT_QUANTITY: TAggregateField;
    cdsGridData_MIN_MATERIAL_ACCOUNT_MEASURE_ABBR: TAggregateField;
    cdsGridData_SUM_CAPACITY_BUSY_HOURS: TAggregateField;
    pnlIncludeStuff: TPanel;
    pnlIncludeStructPart: TPanel;
    frIncludeStructPart: TfrProductFieldEditFrame;
    pnlIncludeDept: TPanel;
    frIncludeDept: TfrDeptFieldEditFrame;
    pdsGridDataParamsDETAIL_CODE: TAbmesFloatField;
    pdsGridDataParamsSTAGE_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsOP_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsMATERIAL_CODE: TAbmesFloatField;
    cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleExpGroupsParamsSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParams_BORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveriesParams: TAbmesClientDataSet;
    cdsDeliveriesParamsDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveriesParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsDeliveriesParamsBEGIN_DELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsDeliveriesParamsEND_DELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsDeliveriesParamsMIN_STATUS_CODE: TAbmesFloatField;
    cdsDeliveriesParamsMAX_STATUS_CODE: TAbmesFloatField;
    cdsDetailPARTNER_PRODUCT_NAME: TAbmesWideStringField;
    cdsDetailPARTNER_PRODUCT_NAMES: TAbmesWideStringField;
    cdsGridDataPARTNER_PRODUCT_NAMES: TAbmesWideStringField;
    sepToggleShowPartnerProductNames: TToolButton;
    btnToggleShowPartnerProductNames: TToolButton;
    actToggleShowPartnerProductNames: TAction;
    cdsParRelProductParamsPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsDetailPARTNER_BASE_ROLE_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_BASE_ROLE_CODE: TAbmesFloatField;
    cdsSaleExpGroupsParamsCOMMON_PRODUCT_CODE: TAbmesFloatField;
    cdsDeliveriesParamsCOMMON_PRODUCT_CODE: TAbmesFloatField;
    pgdData: TPrintDBGridEh;
    pgdDetail: TPrintDBGridEh;
    pdsGridDataParamsIS_APPROVED_BY_PARTNER: TAbmesFloatField;
    cdsSaleExpGroupsParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    cdsDeliveriesParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataPRODUCT_COMMON_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailPRODUCT_COMMON_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeBeforeOpen(DataSet: TDataSet);
    procedure cdsInvestmentLevelsCalcFields(DataSet: TDataSet);
    procedure cdsDetailBeforeOpen(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure cdsDetailAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actSetWorkMeasureDisplayExecute(Sender: TObject);
    procedure actSetAccountMeasureDisplayExecute(Sender: TObject);
    procedure actSetDiffQuantityDisplayExecute(Sender: TObject);
    procedure actSetRealsQuantityDisplayExecute(Sender: TObject);
    procedure actSetRealsDiffDisplayExecute(Sender: TObject);
    procedure actSetDiffPercentDisplayExecute(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure cdsDetailEST_BUSINESS_RESULT_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailREAL_BUSINESS_RESULT_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailEO_ENGINEERING_WORKDAYS_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDetailREAL_BUSINESS_RESULT_PERCENT_DIFFGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailREAL_QUANTITY_DIFF_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailREAL_ACCOUNT_QUANTITY_DIFF_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailREAL_SINGLE_PRICE_DIFF_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDetailREAL_TOTAL_PRICE_DIFF_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDetailREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataEST_BUSINESS_RESULT_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataREAL_BUSINESS_RESULT_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataEO_ENGINEERING_WORKDAYS_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataREAL_QUANTITY_DIFF_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataREAL_ACCOUNT_QUANTITY_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataREAL_SINGLE_PRICE_DIFF_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataREAL_TOTAL_PRICE_DIFF_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFFGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDetailEST_TOTAL_INVESTMENT_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailREAL_TOTAL_INVESTMENT_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailREAL_TOTAL_INVESTMENT_PERCENT_DIFFGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDetailREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actSetInvestmentPartDisplayExecute(Sender: TObject);
    procedure actSetBusinessResultPartDisplayExecute(Sender: TObject);
    procedure cdsGridDataEST_TOTAL_INVESTMENT_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataREAL_TOTAL_INVESTMENT_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFFGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataPRODUCT_SPEC_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailPRODUCT_SPEC_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdDetailGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataJOINED_SPEC_STATE_1_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataJOINED_SPEC_STATE_2_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataJOINED_SPEC_STATE_3_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataJOINED_SPEC_STATE_4_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataJOINED_SPEC_STATE_5_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataJOINED_SPEC_STATE_6_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSPEC_STATE_1_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSPEC_STATE_2_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSPEC_STATE_3_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSPEC_STATE_4_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSPEC_STATE_5_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSPEC_STATE_6_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailJOINED_SPEC_STATE_1_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailJOINED_SPEC_STATE_2_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailJOINED_SPEC_STATE_3_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailJOINED_SPEC_STATE_4_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailJOINED_SPEC_STATE_5_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailJOINED_SPEC_STATE_6_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actMasterPartnerDocExecute(Sender: TObject);
    procedure actMasterPartnerDocUpdate(Sender: TObject);
    procedure actMasterProductDocExecute(Sender: TObject);
    procedure actMasterProductDocUpdate(Sender: TObject);
    procedure actDetailPartnerDocExecute(Sender: TObject);
    procedure actDetailPartnerDocUpdate(Sender: TObject);
    procedure actDetailProductDocExecute(Sender: TObject);
    procedure actDetailProductDocUpdate(Sender: TObject);
    procedure actParRelProductDocExecute(Sender: TObject);
    procedure actParRelProductDocUpdate(Sender: TObject);
    procedure actParRelProductsEngineeringExecute(Sender: TObject);
    procedure actParRelProductsForCommonProductExecute(Sender: TObject);
    procedure actParRelProductsForCommonProductUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actEngineeringOrderExecute(Sender: TObject);
    procedure actEngineeringOrderUpdate(Sender: TObject);
    procedure actCommonGroupsExecute(Sender: TObject);
    procedure actCommonGroupsUpdate(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridData_AVG_EST_BUSINESS_RESULT_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_AVG_EST_TOTAL_INVESTMENT_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFFGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFFGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridData_AVG_REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridData_AVG_REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridData_AVG_REAL_TOTAL_PRICE_DIFF_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actRealBorderDealsExecute(Sender: TObject);
    procedure actPriceListExecute(Sender: TObject);
    procedure actPriceListUpdate(Sender: TObject);
    procedure cdsDetailAfterDelete(DataSet: TDataSet);
    procedure actToggleShowPartnerProductNamesExecute(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataPARTNER_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDetailPARTNER_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actPrintExecute(Sender: TObject);
    procedure pdsGridDataParamsCALC_REALSChange(Sender: TField);
    procedure pdsGridDataParamsINVESTMENT_LEVEL_CODEChange(Sender: TField);
    procedure actPrintDetailsExecute(Sender: TObject);
  private
    FProductClass: TProductClass;
    FBorderRelType: TBorderRelType;
    FBorderProdOrderBaseType: TBorderProdOrderBaseType;
    FParRelProductsOrientation: TParRelProductsOrientation;
    FParRelProductsKind: TParRelProductsKind;
    FParRelProductsStructurePartIncludeKind: TParRelProductsStructurePartIncludeKind;
    FParRelProductsDeptIncludeKind: TParRelProductsDeptIncludeKind;
    FIsForCommonProduct: Boolean;
    FMeasureDisplayType: TMeasureDisplayType;
    FValuePartDisplayType: TValuePartDisplayType;
    FRealsDisplayType: TRealsDisplayType;
    FDiffDisplayType: TDiffDisplayType;
    FShowPartnerProductNames: Boolean;
    FOriginalFormCaption: string;
    FModified: Boolean;
    procedure GridGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FixAggregates;
    function IsInvestedValueVisible: Boolean;
    function IsInvestedValueAndSalePriceVisible: Boolean;
    function BorderRelTypePriceVisible: Boolean;
  protected
    class function CanUseDocs: Boolean; override;
    class function ManualDetailFetch: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetOriginalFormCaption: string; override;
    function ShowFilterForm: Boolean; override;
    function ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean; override;
    function GetDetailDefaultsOrigin: TDefaultsOrigin; override;
    function GetDelRecordEnabled: Boolean; override;
    function GetEditRecordEnabled: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function GetApplyKind: TApplyKind; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function IsQuantityField(const AField: TAbmesFloatField): Boolean; override;
    procedure DoBeforeShow; override;
  public
    class function ShowForm(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AFilterFormEnabled: Boolean;
      AProductClass: TProductClass;
      ABorderRelType: TBorderRelType;
      ABorderProdOrderBaseType: TBorderProdOrderBaseType;
      AParRelProductsOrientation: TParRelProductsOrientation;
      AParRelProductsKind: TParRelProductsKind;
      AParRelProductsStructurePartIncludeKind: TParRelProductsStructurePartIncludeKind;
      AParRelProductsDeptIncludeKind: TParRelProductsDeptIncludeKind;
      AIsForCommonProduct: Boolean): Boolean;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AFilterFormEnabled: Boolean;
      AProductClass: TProductClass;
      ABorderRelType: TBorderRelType;
      ABorderProdOrderBaseType: TBorderProdOrderBaseType;
      AParRelProductsOrientation: TParRelProductsOrientation;
      AParRelProductsKind: TParRelProductsKind;
      AParRelProductsStructurePartIncludeKind: TParRelProductsStructurePartIncludeKind;
      AParRelProductsDeptIncludeKind: TParRelProductsDeptIncludeKind;
      AIsForCommonProduct: Boolean); reintroduce; virtual;

    procedure Initialize; override;

    property Modifed: Boolean read FModified;
  end;

implementation

uses
  dMain, fParRelProductsFilter, uUtils, uClientUtils, uProductClientUtils,
  uDocUtils, uModelUtils, fEngineeringOrder, fCommonGroups, fParRelProduct,
  fSaleExpGroups, uXMLUtils, fPriceList, fDeliveries, uColorConsts,
  uCompanyClientUtils, rBaseReport, PrViewEh, Printers, uToolbarUtils,
  uCompanyClasses, PrvFrmEh;

{$R *.dfm}

resourcestring
  SBusinessResultNote = 'ИР* = ИР%d;  ВС* = ВС П%d';
  SDateInterval = 'ВрмИнт';
  SPartner = 'Партньор';
  SProduct = 'УОб';

const
  IndexNames: array[TParRelProductsOrientation] of string = ('idxPartner', 'idxProduct');
  MasterFieldNames: array[TParRelProductsOrientation] of string = ('PARTNER_CODE', 'PRODUCT_CODE');

{ TfmParRelProducts }

procedure TfmParRelProducts.Initialize;
const
  MasterVTitleMargins: array[TParRelProductsOrientation, TParRelProductsKind] of Integer = ((11, 11), (9, 7));
  DetailVTitleMargins: array[TParRelProductsOrientation, TParRelProductsKind] of Integer = ((9, 7), (11, 11));
var
  MinPriorityNoCode: Integer;
  MaxPriorityNoCode: Integer;
begin
  inherited Initialize;

  FOriginalFormCaption:= actForm.Caption;

  dmMain.SvrCommon.GetMinAndMaxPriorityNoCodes(MinPriorityNoCode, MaxPriorityNoCode);
  cdsDetail.Params.ParamByName('BEGIN_PRIORITY_CODE').AsInteger:= MinPriorityNoCode;
  cdsDetail.Params.ParamByName('END_PRIORITY_CODE').AsInteger:= MaxPriorityNoCode;

  grdData.VTitleMargin:= MasterVTitleMargins[FParRelProductsOrientation, FParRelProductsKind];
  grdDetail.VTitleMargin:= DetailVTitleMargins[FParRelProductsOrientation, FParRelProductsKind];

  RegisterFieldsTextVisibility(
    IsInvestedValueVisible,
    [ cdsGridDataEST_TOTAL_INVESTMENT_PERCENT,
      cdsGridData_AVG_EST_TOTAL_INVESTMENT_PERCENT,
      cdsGridDataEST_TOTAL_INVESTMENT_VALUE,
      cdsGridData_SUM_EST_TOTAL_INVESTMENT_VALUE,
      cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT,
      cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT,
      cdsGridDataREAL_TOTAL_INVESTMENT_VALUE,
      cdsGridData_SUM_REAL_TOTAL_INVESTMENT_VALUE,
      cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFF,
      cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF,
      cdsGridDataREAL_TOTAL_INVESTMENT_VALUE_DIFF,
      cdsGridData_SUM_REAL_TOTAL_INVESTMENT_VALUE_DIFF,
      cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT,
      cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT,
      cdsGridDataREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT,
      cdsGridData_AVG_REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT,

      cdsDetailEST_TOTAL_INVESTMENT_PERCENT,
      cdsDetailEST_TOTAL_INVESTMENT_VALUE,
      cdsDetail_SUM_EST_TOTAL_INVESTMENT_VALUE,
      cdsDetailREAL_TOTAL_INVESTMENT_PERCENT,
      cdsDetailREAL_TOTAL_INVESTMENT_VALUE,
      cdsDetail_SUM_REAL_TOTAL_INVESTMENT_VALUE,
      cdsDetailREAL_TOTAL_INVESTMENT_PERCENT_DIFF,
      cdsDetailREAL_TOTAL_INVESTMENT_VALUE_DIFF,
      cdsDetailREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT,
      cdsDetailREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT]);

  RegisterFieldsTextVisibility(
    BorderRelTypePriceVisible,
    [ cdsGridDataEST_SINGLE_PRICE,
      cdsGridDataEST_ACCOUNT_SINGLE_PRICE,
      cdsGridDataEST_TOTAL_PRICE,
      cdsGridData_SUM_EST_TOTAL_PRICE,
      cdsGridDataREAL_SINGLE_PRICE,
      cdsGridDataREAL_ACCOUNT_SINGLE_PRICE,
      cdsGridDataREAL_TOTAL_PRICE,
      cdsGridData_SUM_REAL_TOTAL_PRICE,
      cdsGridDataREAL_SINGLE_PRICE_DIFF,
      cdsGridDataREAL_ACCOUNT_SINGLE_PRICE_DIFF,
      cdsGridDataREAL_TOTAL_PRICE_DIFF,
      cdsGridData_SUM_REAL_TOTAL_PRICE_DIFF,
      cdsGridDataREAL_SINGLE_PRICE_DIFF_PERCENT,
      cdsGridDataREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT,
      cdsGridDataREAL_TOTAL_PRICE_DIFF_PERCENT,
      cdsGridData_AVG_REAL_TOTAL_PRICE_DIFF_PERCENT,

      cdsDetailEST_SINGLE_PRICE,
      cdsDetailEST_ACCOUNT_SINGLE_PRICE,
      cdsDetailEST_TOTAL_PRICE,
      cdsDetail_SUM_EST_TOTAL_PRICE,
      cdsDetailREAL_SINGLE_PRICE,
      cdsDetailREAL_ACCOUNT_SINGLE_PRICE,
      cdsDetailREAL_TOTAL_PRICE,
      cdsDetail_SUM_REAL_TOTAL_PRICE,
      cdsDetailREAL_SINGLE_PRICE_DIFF,
      cdsDetailREAL_ACCOUNT_SINGLE_PRICE_DIFF,
      cdsDetailREAL_TOTAL_PRICE_DIFF,
      cdsDetailREAL_SINGLE_PRICE_DIFF_PERCENT,
      cdsDetailREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT,
      cdsDetailREAL_TOTAL_PRICE_DIFF_PERCENT]);

  RegisterFieldsTextVisibility(
    IsInvestedValueAndSalePriceVisible,
    [ cdsGridDataEST_BUSINESS_RESULT_PERCENT,
      cdsGridData_AVG_EST_BUSINESS_RESULT_PERCENT,
      cdsGridDataEST_BUSINESS_RESULT_VALUE,
      cdsGridData_SUM_EST_BUSINESS_RESULT_VALUE,
      cdsGridDataREAL_BUSINESS_RESULT_PERCENT,
      cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT,
      cdsGridDataREAL_BUSINESS_RESULT_VALUE,
      cdsGridData_SUM_REAL_BUSINESS_RESULT_VALUE,
      cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFF,
      cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF,
      cdsGridDataREAL_BUSINESS_RESULT_VALUE_DIFF,
      cdsGridData_SUM_REAL_BUSINESS_RESULT_VALUE_DIFF,
      cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT,
      cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT,
      cdsGridDataREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT,
      cdsGridData_AVG_REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT,

      cdsDetailEST_BUSINESS_RESULT_PERCENT,
      cdsDetailEST_BUSINESS_RESULT_VALUE,
      cdsDetailREAL_BUSINESS_RESULT_PERCENT,
      cdsDetailREAL_BUSINESS_RESULT_VALUE,
      cdsDetailREAL_BUSINESS_RESULT_PERCENT_DIFF,
      cdsDetailREAL_BUSINESS_RESULT_VALUE_DIFF,
      cdsDetailREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT,
      cdsDetailREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT]);
end;

function TfmParRelProducts.IsInvestedValueAndSalePriceVisible: Boolean;
begin
  if (pdsGridDataParamsINVESTMENT_LEVEL_CODE.AsInteger = 1) then
    Result:= IsLevelOneInvestedAndSalePriceVisible
  else
    Result:= IsFullInvestedAndSalePriceVisible;
end;

function TfmParRelProducts.IsInvestedValueVisible: Boolean;
begin
  if (pdsGridDataParamsINVESTMENT_LEVEL_CODE.AsInteger = 1) then
    Result:= IsLevelOneInvestedValueVisible
  else
    Result:= IsFullInvestedValueVisible;
end;

function TfmParRelProducts.IsQuantityField(
  const AField: TAbmesFloatField): Boolean;
begin
  Result:= False;
end;

class function TfmParRelProducts.ManualDetailFetch: Boolean;
begin
  Result:= True;
end;

procedure TfmParRelProducts.SetDataParams(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean;
  AProductClass: TProductClass;
  ABorderRelType: TBorderRelType;
  ABorderProdOrderBaseType: TBorderProdOrderBaseType;
  AParRelProductsOrientation: TParRelProductsOrientation;
  AParRelProductsKind: TParRelProductsKind;
  AParRelProductsStructurePartIncludeKind: TParRelProductsStructurePartIncludeKind;
  AParRelProductsDeptIncludeKind: TParRelProductsDeptIncludeKind;
  AIsForCommonProduct: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FProductClass:= AProductClass;
  FBorderRelType:= ABorderRelType;
  FBorderProdOrderBaseType:= ABorderProdOrderBaseType;
  FParRelProductsOrientation:= AParRelProductsOrientation;
  FParRelProductsKind:= AParRelProductsKind;
  FParRelProductsStructurePartIncludeKind:= AParRelProductsStructurePartIncludeKind;
  FParRelProductsDeptIncludeKind:= AParRelProductsDeptIncludeKind;
  FIsForCommonProduct:= AIsForCommonProduct;

  frCommonProduct.ProductClass:= FProductClass;

  case FParRelProductsStructurePartIncludeKind of
    prpspikNone:
      frIncludeStructPart.FieldNames:= '';
    prpspikDetail:
      frIncludeStructPart.FieldNames:= 'DETAIL_CODE';
    prpspikMaterial:
      frIncludeStructPart.FieldNames:= 'MATERIAL_CODE';
  else
    Assert(False);
  end;  { case }

  case FParRelProductsDeptIncludeKind of
    prpdikNone:
      frIncludeDept.FieldNames:= '';
    prpdikStageDept:
      frIncludeDept.FieldNames:= 'STAGE_DEPT_CODE';
    prpdikOpDept:
      frIncludeDept.FieldNames:= 'OP_DEPT_CODE';
  else
    Assert(False);
  end;  { case }
end;

function TfmParRelProducts.ShowDetailEditForm(AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin): Boolean;
begin
  Result:= False;  // zaradi warning na compilatora

  cdsParRelProductParams.CreateDataSet;
  try
    cdsParRelProductParams.Append;
    try
      cdsParRelProductParamsPRODUCT_CLASS_CODE.AsInteger:=
        ProductClassToInt(FProductClass);

      if (AEditMode = emInsert) then
        begin
          cdsParRelProductParamsBORDER_REL_TYPE_CODE.AsInteger:=
            BorderRelTypeToInt(FBorderRelType);
          cdsParRelProductParamsOBTAINMENT_TYPE_CODE.AsInteger:=
            pdsGridDataParamsOBTAINMENT_TYPE_CODE.AsInteger;
          cdsParRelProductParamsPROD_ORDER_BASE_TYPE_CODE.AsInteger:=
            ProdOrderBaseTypeToInt(FBorderProdOrderBaseType);
          cdsParRelProductParamsPARTNER_CODE.AsVariant:=
            cdsGridDataPARTNER_CODE.AsVariant;
          cdsParRelProductParamsPRODUCT_CODE.AsVariant:=
            cdsGridDataPRODUCT_CODE.AsVariant;
        end
      else
        cdsParRelProductParams.AssignFields(cdsDetail);

      cdsParRelProductParams.Post;
    except
      cdsParRelProductParams.Cancel;
      raise;
    end;

    Assert(Assigned(DetailEditFormClass));
    if DetailEditFormClass.InheritsFrom(TGridForm) then
      Result:= TGridFormClass(DetailEditFormClass).ShowForm(dmDocClient, cdsParRelProductParams, AEditMode, ADefaultsOrigin)
    else
      Result:= DetailEditFormClass.ShowForm(dmDocClient, cdsParRelProductParams, AEditMode, ADefaultsOrigin);
  finally
    cdsParRelProductParams.Close;
  end;

  FModified:= FModified or Result;
end;

function TfmParRelProducts.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  if (AEditMode = emInsert) then
    Result:= ShowDetailEditForm(AEditMode, doNone)
  else
    Result:= False;
  FModified:= FModified or Result;
end;

function TfmParRelProducts.ShowFilterForm: Boolean;
begin
  if FilterFormClass.InheritsFrom(TfmParRelProductsFilter) then
    Result:=
      TfmParRelProductsFilterClass(FilterFormClass).ShowForm(
        dmDocClient,
        pdsGridDataParams,
        emEdit,
        doNone,
        FProductClass,
        FBorderRelType,
        FBorderProdOrderBaseType,
        FParRelProductsOrientation,
        FParRelProductsKind,
        FParRelProductsStructurePartIncludeKind,
        FParRelProductsDeptIncludeKind,
        FIsForCommonProduct)
  else
    Result:= inherited ShowFilterForm;
end;

class function TfmParRelProducts.ShowForm(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean;
  AProductClass: TProductClass;
  ABorderRelType: TBorderRelType;
  ABorderProdOrderBaseType: TBorderProdOrderBaseType;
  AParRelProductsOrientation: TParRelProductsOrientation;
  AParRelProductsKind: TParRelProductsKind;
  AParRelProductsStructurePartIncludeKind: TParRelProductsStructurePartIncludeKind;
  AParRelProductsDeptIncludeKind: TParRelProductsDeptIncludeKind;
  AIsForCommonProduct: Boolean): Boolean;
var
  f: TfmParRelProducts;
begin
  f:= CreateEx;
  try
    f.SetDataParams(
      AdmDocClient,
      ADataSet,
      AEditMode,
      ADefaultsOrigin,
      AFilterFormEnabled,
      AProductClass,
      ABorderRelType,
      ABorderProdOrderBaseType,
      AParRelProductsOrientation,
      AParRelProductsKind,
      AParRelProductsStructurePartIncludeKind,
      AParRelProductsDeptIncludeKind,
      AIsForCommonProduct);

    f.InternalShowForm;
    Result:= f.Modifed;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmParRelProducts.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmParRelProductsFilter;
  EditFormClass:= TfmParRelProduct;
  DetailEditFormClass:= TfmParRelProduct;
  ReportClass:= TBaseReport;  // za da e visible butona za pechat
  DetailsReportClass:= TBaseReport; // za da e visible butona za pechat na detail
  DelayDetailFetch:= False;
  frCommonProduct.SetDataSet(pdsGridDataParams);
  frCommonProduct.FieldNames:= 'COMMON_PRODUCT_CODE';
  frCommonProduct.BorderRelType:= FBorderRelType;
  frDateInterval.SetDataSet(pdsGridDataParams);
  frDateInterval.FieldNames:= '_BEGIN_DATE;_END_DATE';
  frIncludeDept.SetDataSet(pdsGridDataParams);
  frIncludeDept.FieldNames:= '';
  frIncludeStructPart.SetDataSet(pdsGridDataParams);
  frIncludeStructPart.FieldNames:= '';
  RegisterDateFields(cdsGridData);
  RegisterDateFields(cdsDetail);
end;

procedure TfmParRelProducts.FormShow(Sender: TObject);
begin
  inherited;
  actForm.Update;
end;

function TfmParRelProducts.GetApplyKind: TApplyKind;
begin
  Result:= akNone;
end;

function TfmParRelProducts.GetDelRecordEnabled: Boolean;
begin
  Result:= False;
end;

function TfmParRelProducts.GetDetailDefaultsOrigin: TDefaultsOrigin;
begin
  Result:= doDataset;
end;

function TfmParRelProducts.GetEditRecordEnabled: Boolean;
begin
  Result:= False;
end;

function TfmParRelProducts.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmParRelProducts.grdDataDblClick(Sender: TObject);
begin
//  inherited;  do nothing
end;

procedure TfmParRelProducts.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  GridGetCellParams(Sender, Column, AFont, Background, State);
end;

procedure TfmParRelProducts.grdDetailGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  GridGetCellParams(Sender, Column, AFont, Background, State);
end;

procedure TfmParRelProducts.GridGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if not Assigned(Column) then
    Exit;

  if (Column.Field = cdsGridDataPRODUCT_SPEC_STATE_CODE) or
     (Column.Field = cdsDetailPRODUCT_SPEC_STATE_CODE) then
    begin
      if not Column.Field.IsNull then
        begin
          Background:= SpecStateColors[Column.Field.AsInteger];
        end;  { if }
    end;  { if }

  if (Column.Field = cdsGridDataPARTNER_PRIORITY_NO) then
    begin
      if not cdsGridDataPAR_PRIORITY_COLOR.IsNull then
        AFont.Color:= cdsGridDataPAR_PRIORITY_COLOR.AsInteger;

      if not cdsGridDataPAR_PRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsGridDataPAR_PRIORITY_BACKGROUND_COLOR.AsInteger;
    end;  { if }

  if (Column.Field = cdsGridDataPRODUCT_PRIORITY_NO) then
    begin
      if not cdsGridDataPROD_PRIORITY_COLOR.IsNull then
        AFont.Color:= cdsGridDataPROD_PRIORITY_COLOR.AsInteger;

      if not cdsGridDataPROD_PRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsGridDataPROD_PRIORITY_BACKGROUND_COLOR.AsInteger;
    end;  { if }

  if (Column.Field = cdsDetailPARTNER_PRIORITY_NO) then
    begin
      if not cdsDetailPAR_PRIORITY_COLOR.IsNull then
        AFont.Color:= cdsDetailPAR_PRIORITY_COLOR.AsInteger;

      if not cdsDetailPAR_PRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsDetailPAR_PRIORITY_BACKGROUND_COLOR.AsInteger;
    end;  { if }

  if (Column.Field = cdsDetailPRODUCT_PRIORITY_NO) then
    begin
      if not cdsDetailPROD_PRIORITY_COLOR.IsNull then
        AFont.Color:= cdsDetailPROD_PRIORITY_COLOR.AsInteger;

      if not cdsDetailPROD_PRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsDetailPROD_PRIORITY_BACKGROUND_COLOR.AsInteger;
    end;  { if }

  if (Column.Field = cdsGridDataPROD_MIN_PREC_LEVEL_NO) then
    begin
      if not cdsGridDataPROD_MIN_PREC_LEVEL_COLOR.IsNull then
        AFont.Color:= cdsGridDataPROD_MIN_PREC_LEVEL_COLOR.AsInteger;

      if not cdsGridDataPROD_MIN_PREC_LEVEL_BACK_COLOR.IsNull then
        Background:= cdsGridDataPROD_MIN_PREC_LEVEL_BACK_COLOR.AsInteger;
    end;  { if }

  if (Column.Field = cdsGridDataPROD_MAX_PREC_LEVEL_NO) then
    begin
      if not cdsGridDataPROD_MAX_PREC_LEVEL_COLOR.IsNull then
        AFont.Color:= cdsGridDataPROD_MAX_PREC_LEVEL_COLOR.AsInteger;

      if not cdsGridDataPROD_MAX_PREC_LEVEL_BACK_COLOR.IsNull then
        Background:= cdsGridDataPROD_MAX_PREC_LEVEL_BACK_COLOR.AsInteger;
    end;  { if }

  if (Column.Field = cdsDetailPROD_MIN_PREC_LEVEL_NO) then
    begin
      if not cdsDetailPROD_MIN_PREC_LEVEL_COLOR.IsNull then
        AFont.Color:= cdsDetailPROD_MIN_PREC_LEVEL_COLOR.AsInteger;

      if not cdsDetailPROD_MIN_PREC_LEVEL_BACK_COLOR.IsNull then
        Background:= cdsDetailPROD_MIN_PREC_LEVEL_BACK_COLOR.AsInteger;
    end;  { if }

  if (Column.Field = cdsDetailPROD_MAX_PREC_LEVEL_NO) then
    begin
      if not cdsDetailPROD_MAX_PREC_LEVEL_COLOR.IsNull then
        AFont.Color:= cdsDetailPROD_MAX_PREC_LEVEL_COLOR.AsInteger;

      if not cdsDetailPROD_MAX_PREC_LEVEL_BACK_COLOR.IsNull then
        Background:= cdsDetailPROD_MAX_PREC_LEVEL_BACK_COLOR.AsInteger;
    end;  { if }

  if (Column.Field = cdsGridDataJOINED_PRODUCT_COUNT) or
     (Column.Field = cdsGridDataJOINED_SPEC_STATE_1_COUNT) or
     (Column.Field = cdsGridDataJOINED_SPEC_STATE_2_COUNT) or
     (Column.Field = cdsGridDataJOINED_SPEC_STATE_3_COUNT) or
     (Column.Field = cdsGridDataJOINED_SPEC_STATE_4_COUNT) or
     (Column.Field = cdsGridDataJOINED_SPEC_STATE_5_COUNT) or
     (Column.Field = cdsGridDataJOINED_SPEC_STATE_6_COUNT) or
     (Column.Field = cdsGridDataJOINED_SPEC_STATE_1_PERCENT) or
     (Column.Field = cdsGridDataJOINED_SPEC_STATE_2_PERCENT) or
     (Column.Field = cdsGridDataJOINED_SPEC_STATE_3_PERCENT) or
     (Column.Field = cdsGridDataJOINED_SPEC_STATE_4_PERCENT) or
     (Column.Field = cdsGridDataJOINED_SPEC_STATE_5_PERCENT) or
     (Column.Field = cdsGridDataJOINED_SPEC_STATE_6_PERCENT) then
    begin
      if (cdsGridDataPRODUCT_COMMON_STATUS_CODE.AsInteger <> cscCommon) then
        Background:= $00DBDBDB;
    end;  { if }

  if (Column.Field = cdsDetailJOINED_PRODUCT_COUNT) or
     (Column.Field = cdsDetailJOINED_SPEC_STATE_1_COUNT) or
     (Column.Field = cdsDetailJOINED_SPEC_STATE_2_COUNT) or
     (Column.Field = cdsDetailJOINED_SPEC_STATE_3_COUNT) or
     (Column.Field = cdsDetailJOINED_SPEC_STATE_4_COUNT) or
     (Column.Field = cdsDetailJOINED_SPEC_STATE_5_COUNT) or
     (Column.Field = cdsDetailJOINED_SPEC_STATE_6_COUNT) or
     (Column.Field = cdsDetailJOINED_SPEC_STATE_1_PERCENT) or
     (Column.Field = cdsDetailJOINED_SPEC_STATE_2_PERCENT) or
     (Column.Field = cdsDetailJOINED_SPEC_STATE_3_PERCENT) or
     (Column.Field = cdsDetailJOINED_SPEC_STATE_4_PERCENT) or
     (Column.Field = cdsDetailJOINED_SPEC_STATE_5_PERCENT) or
     (Column.Field = cdsDetailJOINED_SPEC_STATE_6_PERCENT) then
    begin
      if (cdsDetailPRODUCT_COMMON_STATUS_CODE.AsInteger <> cscCommon) then
        Background:= $00DBDBDB;
    end;  { if }

  if (Column.Field = cdsGridDataEO_ENGINEERING_WORKDAYS_DIFF) or
     (Column.Field = cdsGridDataEO_ENGINEERING_WORKDAYS_DIFF_PERCENT) or
     (Column.Field = cdsDetailEO_ENGINEERING_WORKDAYS_DIFF) or
     (Column.Field = cdsDetailEO_ENGINEERING_WORKDAYS_DIFF_PERCENT) then
    begin
      if (Column.Field.AsFloat < 0) then
        AFont.Color:= clRed;
    end;  { if }

  if (Column.Field = cdsGridDataREAL_QUANTITY_DIFF) or
     (Column.Field = cdsGridDataREAL_ACCOUNT_QUANTITY_DIFF) or
     (Column.Field = cdsGridDataREAL_SINGLE_PRICE_DIFF) or
     (Column.Field = cdsGridDataREAL_ACCOUNT_SINGLE_PRICE_DIFF) or
     (Column.Field = cdsGridDataREAL_TOTAL_PRICE_DIFF) or
     (Column.Field = cdsGridDataREAL_BUSINESS_RESULT_VALUE_DIFF) or
     (Column.Field = cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFF) or
     (Column.Field = cdsGridDataREAL_TOTAL_INVESTMENT_VALUE_DIFF) or
     (Column.Field = cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFF) or
     (Column.Field = cdsGridDataREAL_QUANTITY_DIFF_PERCENT) or
     (Column.Field = cdsGridDataREAL_ACCOUNT_QUANTITY_DIFF_PERCENT) or
     (Column.Field = cdsGridDataREAL_SINGLE_PRICE_DIFF_PERCENT) or
     (Column.Field = cdsGridDataREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT) or
     (Column.Field = cdsGridDataREAL_TOTAL_PRICE_DIFF_PERCENT) or
     (Column.Field = cdsGridDataREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT) or
     (Column.Field = cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT) or
     (Column.Field = cdsGridDataREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT) or
     (Column.Field = cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT) or
     (Column.Field = cdsDetailREAL_QUANTITY_DIFF) or
     (Column.Field = cdsDetailREAL_ACCOUNT_QUANTITY_DIFF) or
     (Column.Field = cdsDetailREAL_SINGLE_PRICE_DIFF) or
     (Column.Field = cdsDetailREAL_ACCOUNT_SINGLE_PRICE_DIFF) or
     (Column.Field = cdsDetailREAL_TOTAL_PRICE_DIFF) or
     (Column.Field = cdsDetailREAL_BUSINESS_RESULT_VALUE_DIFF) or
     (Column.Field = cdsDetailREAL_BUSINESS_RESULT_PERCENT_DIFF) or
     (Column.Field = cdsDetailREAL_TOTAL_INVESTMENT_VALUE_DIFF) or
     (Column.Field = cdsDetailREAL_TOTAL_INVESTMENT_PERCENT_DIFF) or
     (Column.Field = cdsDetailREAL_QUANTITY_DIFF_PERCENT) or
     (Column.Field = cdsDetailREAL_ACCOUNT_QUANTITY_DIFF_PERCENT) or
     (Column.Field = cdsDetailREAL_SINGLE_PRICE_DIFF_PERCENT) or
     (Column.Field = cdsDetailREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT) or
     (Column.Field = cdsDetailREAL_TOTAL_PRICE_DIFF_PERCENT) or
     (Column.Field = cdsDetailREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT) or
     (Column.Field = cdsDetailREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT) or
     (Column.Field = cdsDetailREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT) or
     (Column.Field = cdsDetailREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT) then
    begin
      if (Column.Field.AsFloat < 0) then
        AFont.Color:= clRed;

      if (Column.Field.AsFloat > 0) then
        AFont.Color:= clGreen;
    end;  { if }
end;

procedure TfmParRelProducts.OpenDataSets;
begin
  cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseType.Open;
  cdsInvestmentLevels.Open;
  inherited;
end;

procedure TfmParRelProducts.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams_BUSINESS_RESULT_NOTE.AsString:=
    Format(
      SBusinessResultNote,
      [ pdsGridDataParamsINVESTMENT_LEVEL_CODE.AsInteger,
        pdsGridDataParamsINVESTMENT_LEVEL_CODE.AsInteger]);

  pdsGridDataParams_BEGIN_DATE.Assign(
    pdsGridDataParamsBEGIN_DATE
  );

  pdsGridDataParams_END_DATE.Assign(
    pdsGridDataParamsEND_DATE
  );
end;

procedure TfmParRelProducts.pdsGridDataParamsCALC_REALSChange(Sender: TField);
begin
  inherited;
  if pdsGridDataParamsCALC_REALS.AsBoolean then
    pdsGridDataParamsINVESTMENT_LEVEL_CODE.AsInteger:= 1;
end;

procedure TfmParRelProducts.pdsGridDataParamsINVESTMENT_LEVEL_CODEChange(
  Sender: TField);
begin
  inherited;
  if (pdsGridDataParamsINVESTMENT_LEVEL_CODE.AsInteger > 1) then
    pdsGridDataParamsCALC_REALS.AsBoolean:= False;
end;

procedure TfmParRelProducts.CloseDataSets;
begin
  inherited;
  cdsInvestmentLevels.Close;
  cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseType.Close;
end;

procedure TfmParRelProducts.DoBeforeShow;
var
  MsgParams: TStrings;
begin
  MsgParams:=
    uParRelProducts.CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      FBorderRelType,
      FBorderProdOrderBaseType,
      FParRelProductsOrientation,
      FParRelProductsKind,
      FParRelProductsStructurePartIncludeKind,
      FParRelProductsDeptIncludeKind,
      FIsForCommonProduct);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  inherited;
end;

procedure TfmParRelProducts.actCommonGroupsExecute(Sender: TObject);
begin
  inherited;
  TfmCommonGroups.ShowForm(dmDocClient, 0, cdsDetailPRODUCT_CODE.AsInteger);
end;

procedure TfmParRelProducts.actCommonGroupsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmParRelProducts.actDetailPartnerDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotCompany,
    cdsDetailPARTNER_DOC_BRANCH_CODE.AsInteger,
    cdsDetailPARTNER_DOC_CODE.AsInteger);
end;

procedure TfmParRelProducts.actDetailPartnerDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= cdsDetailPARTNER_HAS_DOC.AsInteger;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmParRelProducts.actDetailProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsDetailPRODUCT_DOC_BRANCH_CODE.AsInteger,
    cdsDetailPRODUCT_DOC_CODE.AsInteger);
end;

procedure TfmParRelProducts.actDetailProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= cdsDetailPRODUCT_HAS_DOC.AsInteger;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmParRelProducts.actEngineeringOrderExecute(Sender: TObject);
begin
  inherited;
  TfmEngineeringOrder.ShowForm(dmDocClient, cdsDetail, emReadOnly, doNone);
end;

procedure TfmParRelProducts.actEngineeringOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsDetailENGINEERING_ORDER_CODE.IsNull;
end;

procedure TfmParRelProducts.actFilterExecute(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  if ShowFilterForm then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        cdsGridData.Close;
        cdsGridData.CreateDataSet;

        RefreshDataSet(cdsDetail);
      finally
        Screen.Cursor:= SaveCursor;
      end;  { try }
    end;  { if }
end;

procedure TfmParRelProducts.cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseType.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:=
    BorderRelTypeToInt(FBorderRelType);
  cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseType.Params.ParamByName('PROD_ORDER_BASE_TYPE_CODE').AsInteger:=
    ProdOrderBaseTypeToInt(FBorderProdOrderBaseType);
end;

procedure TfmParRelProducts.cdsDetailBeforeOpen(DataSet: TDataSet);
var
  f: TField;
begin
  inherited;

  if FIsForCommonProduct then
    Assert(cdsDetail.Params.ParamByName('COMMON_PRODUCT_CODE').AsInteger <> 0);

  if pdsGridDataParamsCALC_REALS.AsBoolean then
    FRealsDisplayType:= rdtQuantity
  else
    FRealsDisplayType:= rdtNone;

  cdsDetail.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);

  cdsDetail.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:=
    BorderRelTypeToInt(FBorderRelType);

  cdsDetail.Params.ParamByName('PROD_ORDER_BASE_TYPE_CODE').AsInteger:=
    ProdOrderBaseTypeToInt(FBorderProdOrderBaseType);

  cdsDetail.Params.ParamByName('CALC_ESTS').AsInteger:=
    Ord(FParRelProductsKind = prpkQuantity);

  cdsDetail.Params.ParamByName('CALC_ENGINEERING').AsInteger:=
    Ord(FParRelProductsKind = prpkEngineering);

  if (FParRelProductsKind = prpkEngineering) then
    cdsDetail.Params.ParamByName('CALC_REALS').AsInteger:= 0;

  cdsDetail.IndexName:= IndexNames[FParRelProductsOrientation];

  for f in cdsDetail.AggFields do
    (f as TAggregateField).IndexName:= IndexNames[FParRelProductsOrientation];
end;

procedure TfmParRelProducts.cdsDetailAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cdsDetail.ApplyUpdates(0);
  FModified:= True;
end;

procedure TfmParRelProducts.cdsDetailAfterOpen(DataSet: TDataSet);
var
  ObtainmentType: TObtainmentType;
begin
  inherited;
  ObtainmentType:=
    IntToObtainmentType(cdsDetail.Params.ParamByName('OBTAINMENT_TYPE_CODE').AsInteger);

  cdsDetail.DisableControls;
  try
    cdsGridData.DisableControls;
    try
      cdsDetail.MasterSource:= nil;
      cdsDetail.MasterFields:= '';

      cdsDetail.First;
      while not cdsDetail.Eof do
        begin
          if (gbFirst in cdsDetail.GetGroupState(1)) then
            begin
              cdsGridData.Append;
              try
                cdsGridDataBORDER_REL_TYPE_CODE.Assign(
                  cdsDetailBORDER_REL_TYPE_CODE);

                cdsGridDataOBTAINMENT_TYPE_CODE.Assign(
                  cdsDetailOBTAINMENT_TYPE_CODE);

                cdsGridDataPROD_ORDER_BASE_TYPE_CODE.Assign(
                  cdsDetailPROD_ORDER_BASE_TYPE_CODE);

                case FParRelProductsOrientation of
                  prpoPartner:
                    begin
                      cdsGridDataPARTNER_CODE.Assign(
                        cdsDetailPARTNER_CODE);

                      cdsGridDataPARTNER_NO.Assign(
                        cdsDetailPARTNER_NO);

                      cdsGridDataPARTNER_NAME.Assign(
                        cdsDetailPARTNER_NAME);

                      cdsGridDataPARTNER_DOC_BRANCH_CODE.Assign(
                        cdsDetailPARTNER_DOC_BRANCH_CODE);

                      cdsGridDataPARTNER_DOC_CODE.Assign(
                        cdsDetailPARTNER_DOC_CODE);

                      cdsGridDataPARTNER_HAS_DOC.Assign(
                        cdsDetailPARTNER_HAS_DOC);

                      cdsGridDataPARTNER_PRIORITY_CODE.Assign(
                        cdsDetailPARTNER_PRIORITY_CODE);

                      cdsGridDataPARTNER_PRIORITY_NO.Assign(
                        cdsDetailPARTNER_PRIORITY_NO);

                      cdsGridDataPAR_PRIORITY_COLOR.Assign(
                        cdsDetailPAR_PRIORITY_COLOR);

                      cdsGridDataPAR_PRIORITY_BACKGROUND_COLOR.Assign(
                        cdsDetailPAR_PRIORITY_BACKGROUND_COLOR);

                      cdsGridDataPARTNER_COMPANY_CLASS_CODE.Assign(
                        cdsDetailPARTNER_COMPANY_CLASS_CODE);

                      cdsGridDataPARTNER_COMPANY_CLASS_ABBREV.Assign(
                        cdsDetailPARTNER_COMPANY_CLASS_ABBREV);

                      cdsGridDataPARTNER_STATUS_CODE.Assign(
                        cdsDetailPARTNER_STATUS_CODE);

                      cdsGridDataPARTNER_STATUS_NAME.Assign(
                        cdsDetailPARTNER_STATUS_NAME);

                      cdsGridDataPARTNER_BASE_ROLE_CODE.Assign(
                        cdsDetailPARTNER_BASE_ROLE_CODE);

                      cdsGridDataPARTNER_EXISTENCE_MONTHS.Assign(
                        cdsDetailPARTNER_EXISTENCE_MONTHS);

                      // aggregate field assignment follows

                      cdsGridDataPRODUCT_COUNT.Assign(
                        cdsDetail_COUNT);

                      cdsGridDataSPEC_STATE_1_COUNT.AsVariant:=
                        NullIf0(cdsDetail_PRODUCT_SPEC_STATE_1_COUNT.AsVariant);

                      cdsGridDataSPEC_STATE_2_COUNT.AsVariant:=
                        NullIf0(cdsDetail_PRODUCT_SPEC_STATE_2_COUNT.AsVariant);

                      cdsGridDataSPEC_STATE_3_COUNT.AsVariant:=
                        NullIf0(cdsDetail_PRODUCT_SPEC_STATE_3_COUNT.AsVariant);

                      cdsGridDataSPEC_STATE_4_COUNT.AsVariant:=
                        NullIf0(cdsDetail_PRODUCT_SPEC_STATE_4_COUNT.AsVariant);

                      cdsGridDataSPEC_STATE_5_COUNT.AsVariant:=
                        NullIf0(cdsDetail_PRODUCT_SPEC_STATE_5_COUNT.AsVariant);

                      cdsGridDataSPEC_STATE_6_COUNT.AsVariant:=
                        NullIf0(cdsDetail_PRODUCT_SPEC_STATE_6_COUNT.AsVariant);

                      // calculated field assignment follows

                      cdsGridDataSPEC_STATE_1_PERCENT.AsVariant:=
                        SafeDiv(
                          cdsGridDataSPEC_STATE_1_COUNT,
                          cdsGridDataPRODUCT_COUNT
                        );

                      cdsGridDataSPEC_STATE_2_PERCENT.AsVariant:=
                        SafeDiv(
                          cdsGridDataSPEC_STATE_2_COUNT,
                          cdsGridDataPRODUCT_COUNT
                        );

                      cdsGridDataSPEC_STATE_3_PERCENT.AsVariant:=
                        SafeDiv(
                          cdsGridDataSPEC_STATE_3_COUNT,
                          cdsGridDataPRODUCT_COUNT
                        );

                      cdsGridDataSPEC_STATE_4_PERCENT.AsVariant:=
                        SafeDiv(
                          cdsGridDataSPEC_STATE_4_COUNT,
                          cdsGridDataPRODUCT_COUNT
                        );

                      cdsGridDataSPEC_STATE_5_PERCENT.AsVariant:=
                        SafeDiv(
                          cdsGridDataSPEC_STATE_5_COUNT,
                          cdsGridDataPRODUCT_COUNT
                        );

                      cdsGridDataSPEC_STATE_6_PERCENT.AsVariant:=
                        SafeDiv(
                          cdsGridDataSPEC_STATE_6_COUNT,
                          cdsGridDataPRODUCT_COUNT
                        );

                      cdsGridDataJOINED_SPEC_STATE_1_PERCENT.AsVariant:=
                        SafeDiv(
                          cdsGridDataJOINED_SPEC_STATE_1_COUNT,
                          cdsGridDataJOINED_PRODUCT_COUNT
                        );

                      cdsGridDataJOINED_SPEC_STATE_2_PERCENT.AsVariant:=
                        SafeDiv(
                          cdsGridDataJOINED_SPEC_STATE_2_COUNT,
                          cdsGridDataJOINED_PRODUCT_COUNT
                        );

                      cdsGridDataJOINED_SPEC_STATE_3_PERCENT.AsVariant:=
                        SafeDiv(
                          cdsGridDataJOINED_SPEC_STATE_3_COUNT,
                          cdsGridDataJOINED_PRODUCT_COUNT
                        );

                      cdsGridDataJOINED_SPEC_STATE_4_PERCENT.AsVariant:=
                        SafeDiv(
                          cdsGridDataJOINED_SPEC_STATE_4_COUNT,
                          cdsGridDataJOINED_PRODUCT_COUNT
                        );

                      cdsGridDataJOINED_SPEC_STATE_5_PERCENT.AsVariant:=
                        SafeDiv(
                          cdsGridDataJOINED_SPEC_STATE_5_COUNT,
                          cdsGridDataJOINED_PRODUCT_COUNT
                        );

                      cdsGridDataJOINED_SPEC_STATE_6_PERCENT.AsVariant:=
                        SafeDiv(
                          cdsGridDataJOINED_SPEC_STATE_6_COUNT,
                          cdsGridDataJOINED_PRODUCT_COUNT
                        );
                    end;

                  prpoProduct:
                    begin
                      cdsGridDataPRODUCT_CODE.Assign(
                        cdsDetailPRODUCT_CODE);

                      cdsGridDataPRODUCT_NO.Assign(
                        cdsDetailPRODUCT_NO);

                      cdsGridDataPRODUCT_NAME.Assign(
                        cdsDetailPRODUCT_NAME);

                      cdsGridDataPRODUCT_DOC_BRANCH_CODE.Assign(
                        cdsDetailPRODUCT_DOC_BRANCH_CODE);

                      cdsGridDataPRODUCT_DOC_CODE.Assign(
                        cdsDetailPRODUCT_DOC_CODE);

                      cdsGridDataPRODUCT_HAS_DOC.Assign(
                        cdsDetailPRODUCT_HAS_DOC);

                      cdsGridDataPRODUCT_PRIORITY_CODE.Assign(
                        cdsDetailPRODUCT_PRIORITY_CODE);

                      cdsGridDataPRODUCT_PRIORITY_NO.Assign(
                        cdsDetailPRODUCT_PRIORITY_NO);

                      cdsGridDataPROD_PRIORITY_COLOR.Assign(
                        cdsDetailPROD_PRIORITY_COLOR);

                      cdsGridDataPROD_PRIORITY_BACKGROUND_COLOR.Assign(
                        cdsDetailPROD_PRIORITY_BACKGROUND_COLOR);

                      cdsGridDataPRODUCT_MEASURE_CODE.Assign(
                        cdsDetailPRODUCT_MEASURE_CODE);

                      cdsGridDataPRODUCT_MEASURE_ABBREV.Assign(
                        cdsDetailPRODUCT_MEASURE_ABBREV);

                      cdsGridDataPRODUCT_ACCOUNT_MEASURE_CODE.Assign(
                        cdsDetailPRODUCT_ACCOUNT_MEASURE_CODE);

                      cdsGridDataPRODUCT_ACCOUNT_MEASURE_ABBREV.Assign(
                        cdsDetailPRODUCT_ACCOUNT_MEASURE_ABBREV);

                      cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF.Assign(
                        cdsDetailPRODUCT_ACCOUNT_MEASURE_COEF);

                      cdsGridDataPRODUCT_COMMON_STATUS_CODE.Assign(
                        cdsDetailPRODUCT_COMMON_STATUS_CODE);

                      cdsGridDataPARTNER_PRODUCT_NAMES.Assign(
                        cdsDetailPARTNER_PRODUCT_NAMES);

                      cdsGridDataPROD_MIN_PREC_LEVEL_NO.Assign(
                        cdsDetailPROD_MIN_PREC_LEVEL_NO);

                      cdsGridDataPROD_MIN_PREC_LEVEL_COLOR.Assign(
                        cdsDetailPROD_MIN_PREC_LEVEL_COLOR);

                      cdsGridDataPROD_MIN_PREC_LEVEL_BACK_COLOR.Assign(
                        cdsDetailPROD_MIN_PREC_LEVEL_BACK_COLOR);

                      cdsGridDataPROD_MAX_PREC_LEVEL_NO.Assign(
                        cdsDetailPROD_MAX_PREC_LEVEL_NO);

                      cdsGridDataPROD_MAX_PREC_LEVEL_COLOR.Assign(
                        cdsDetailPROD_MAX_PREC_LEVEL_COLOR);

                      cdsGridDataPROD_MAX_PREC_LEVEL_BACK_COLOR.Assign(
                        cdsDetailPROD_MAX_PREC_LEVEL_BACK_COLOR);

                      cdsGridDataENGINEERING_ORDER_CODE.Assign(
                        cdsDetailENGINEERING_ORDER_CODE);

                      cdsGridDataEO_ENGINEERING_PLAN_END_DATE.Assign(
                        cdsDetailEO_ENGINEERING_PLAN_END_DATE);

                      cdsGridDataEO_ENGINEERING_PLAN_WORKDAYS.Assign(
                        cdsDetailEO_ENGINEERING_PLAN_WORKDAYS);

                      cdsGridDataEO_ENGINEERING_REAL_WORKDAYS.Assign(
                        cdsDetailEO_ENGINEERING_REAL_WORKDAYS);

                      cdsGridDataEO_ENGINEERING_WORKDAYS_DIFF.Assign(
                        cdsDetailEO_ENGINEERING_WORKDAYS_DIFF);

                      cdsGridDataEO_ENGINEERING_WORKDAYS_DIFF_PERCENT.Assign(
                        cdsDetailEO_ENGINEERING_WORKDAYS_DIFF_PERCENT);

                      cdsGridDataEO_ENGINEERING_DEPT_IDENTIFIER.Assign(
                        cdsDetailEO_ENGINEERING_DEPT_IDENTIFIER);

                      cdsGridDataPRODUCT_SPEC_STATE_CODE.Assign(
                        cdsDetailPRODUCT_SPEC_STATE_CODE);

                      cdsGridDataJOINED_PRODUCT_COUNT.Assign(
                        cdsDetailJOINED_PRODUCT_COUNT);

                      cdsGridDataJOINED_SPEC_STATE_1_COUNT.Assign(
                        cdsDetailJOINED_SPEC_STATE_1_COUNT);

                      cdsGridDataJOINED_SPEC_STATE_2_COUNT.Assign(
                        cdsDetailJOINED_SPEC_STATE_2_COUNT);

                      cdsGridDataJOINED_SPEC_STATE_3_COUNT.Assign(
                        cdsDetailJOINED_SPEC_STATE_3_COUNT);

                      cdsGridDataJOINED_SPEC_STATE_4_COUNT.Assign(
                        cdsDetailJOINED_SPEC_STATE_4_COUNT);

                      cdsGridDataJOINED_SPEC_STATE_5_COUNT.Assign(
                        cdsDetailJOINED_SPEC_STATE_5_COUNT);

                      cdsGridDataJOINED_SPEC_STATE_6_COUNT.Assign(
                        cdsDetailJOINED_SPEC_STATE_6_COUNT);

                      cdsGridDataEST_LEASE_DATE_UNIT_NAME.Assign(
                        cdsDetailEST_LEASE_DATE_UNIT_NAME);

                      cdsGridDataREAL_LEASE_DATE_UNIT_NAME.Assign(
                        cdsDetailREAL_LEASE_DATE_UNIT_NAME);
                    end;

                  else
                    Assert(False);
                end;  { case }

                // aggregate field assignment follows

                cdsGridDataEST_TOTAL_PRICE.Assign(
                  cdsDetail_SUM_EST_TOTAL_PRICE);

                if (VarToInt(cdsDetail_COUNT_EST_TOTAL_INVESTMENT_VALUE.AsVariant) =
                    VarToInt(cdsDetail_COUNT.AsVariant)) then
                  begin
                    cdsGridDataEST_TOTAL_INVESTMENT_VALUE.Assign(
                      cdsDetail_SUM_EST_TOTAL_INVESTMENT_VALUE);
                  end;  { if }

                cdsGridDataREAL_TOTAL_PRICE.Assign(
                  cdsDetail_SUM_REAL_TOTAL_PRICE);

                if (VarToInt(cdsDetail_COUNT_REAL_TOTAL_INVESTMENT_VALUE.AsVariant) =
                    VarToInt(cdsDetail_COUNT_REAL_TOTAL_PRICE.AsVariant)) then
                  begin
                    cdsGridDataREAL_TOTAL_INVESTMENT_VALUE.Assign(
                      cdsDetail_SUM_REAL_TOTAL_INVESTMENT_VALUE);
                  end;  { if }

                if (FParRelProductsOrientation = prpoProduct) then
                  begin
                    if (ObtainmentType = otLease) then
                      begin
                        if (VarToInt(cdsDetail_COUNT_EST_LEASE_DATE_UNIT_NAME.AsVariant) =
                            VarToInt(cdsDetail_COUNT.AsVariant)) and
                           (VarToStr(cdsDetail_MIN_EST_LEASE_DATE_UNIT_NAME.AsVariant) =
                            VarToStr(cdsDetail_MAX_EST_LEASE_DATE_UNIT_NAME.AsVariant)) then
                          begin
                            cdsGridDataEST_LEASE_DATE_UNIT_NAME.Assign(
                              cdsDetail_MIN_EST_LEASE_DATE_UNIT_NAME);

                            cdsGridDataEST_QUANTITY.Assign(
                              cdsDetail_SUM_EST_QUANTITY);

                            cdsGridDataEST_ACCOUNT_QUANTITY.Assign(
                              cdsDetail_SUM_EST_ACCOUNT_QUANTITY);
                          end;  { if }

                        if (VarToInt(cdsDetail_COUNT_REAL_LEASE_DATE_UNIT_NAME.AsVariant) =
                            VarToInt(cdsDetail_COUNT.AsVariant)) and
                           (VarToStr(cdsDetail_MIN_REAL_LEASE_DATE_UNIT_NAME.AsVariant) =
                            VarToStr(cdsDetail_MAX_REAL_LEASE_DATE_UNIT_NAME.AsVariant)) then
                          begin
                            cdsGridDataREAL_LEASE_DATE_UNIT_NAME.Assign(
                              cdsDetail_MIN_REAL_LEASE_DATE_UNIT_NAME);

                            cdsGridDataREAL_QUANTITY.Assign(
                              cdsDetail_SUM_REAL_QUANTITY);

                            cdsGridDataREAL_ACCOUNT_QUANTITY.Assign(
                              cdsDetail_SUM_REAL_ACCOUNT_QUANTITY);
                          end;  { if }
                      end
                    else
                      begin
                        cdsGridDataEST_QUANTITY.Assign(
                          cdsDetail_SUM_EST_QUANTITY);

                        cdsGridDataEST_ACCOUNT_QUANTITY.Assign(
                          cdsDetail_SUM_EST_ACCOUNT_QUANTITY);

                        cdsGridDataREAL_QUANTITY.Assign(
                          cdsDetail_SUM_REAL_QUANTITY);

                        cdsGridDataREAL_ACCOUNT_QUANTITY.Assign(
                          cdsDetail_SUM_REAL_ACCOUNT_QUANTITY);
                      end;
                  end;  { if }

                cdsGridDataDETAIL_QUANTITY.Assign(
                  cdsDetail_SUM_DETAIL_QUANTITY);

                cdsGridDataDETAIL_MEASURE_ABBR.Assign(
                  cdsDetailDETAIL_MEASURE_ABBR);

                cdsGridDataDETAIL_ACCOUNT_QUANTITY.Assign(
                  cdsDetail_SUM_DETAIL_ACCOUNT_QUANTITY);

                cdsGridDataDETAIL_ACCOUNT_MEASURE_ABBR.Assign(
                  cdsDetailDETAIL_ACCOUNT_MEASURE_ABBR);

                cdsGridDataMATERIAL_QUANTITY.Assign(
                  cdsDetail_SUM_MATERIAL_QUANTITY);

                cdsGridDataMATERIAL_MEASURE_ABBR.Assign(
                  cdsDetailMATERIAL_MEASURE_ABBR);

                cdsGridDataMATERIAL_ACCOUNT_QUANTITY.Assign(
                  cdsDetail_SUM_MATERIAL_ACCOUNT_QUANTITY);

                cdsGridDataMATERIAL_ACCOUNT_MEASURE_ABBR.Assign(
                  cdsDetailMATERIAL_ACCOUNT_MEASURE_ABBR);

                cdsGridDataCAPACITY_BUSY_HOURS.Assign(
                  cdsDetail_SUM_CAPACITY_BUSY_HOURS);

                // calculated field assignment follows

                if (cdsGridDataEST_LEASE_DATE_UNIT_NAME.AsString = cdsGridDataREAL_LEASE_DATE_UNIT_NAME.AsString) then
                  begin
                    cdsGridDataLEASE_DATE_UNIT_NAME.Assign(
                      cdsGridDataEST_LEASE_DATE_UNIT_NAME);
                  end;  { if }

                cdsGridDataEST_ACCOUNT_SINGLE_PRICE.AsVariant:=
                  SafeDiv(
                    cdsGridDataEST_TOTAL_PRICE,
                    cdsGridDataEST_ACCOUNT_QUANTITY
                  );

                cdsGridDataEST_SINGLE_PRICE.AsVariant:=
                  SafeDiv(
                    cdsGridDataEST_TOTAL_PRICE,
                    cdsGridDataEST_QUANTITY
                  );

                cdsGridDataEST_BUSINESS_RESULT_VALUE.AsVariant:=
                  cdsGridDataEST_TOTAL_PRICE.AsVariant -
                  cdsGridDataEST_TOTAL_INVESTMENT_VALUE.AsVariant;

                cdsGridDataEST_BUSINESS_RESULT_PERCENT.AsVariant:=
                  SafeDiv(
                    cdsGridDataEST_BUSINESS_RESULT_VALUE,
                    cdsGridDataEST_TOTAL_PRICE
                  );

                cdsGridDataEST_TOTAL_INVESTMENT_PERCENT.AsVariant:=
                  SafeDiv(
                    cdsGridDataEST_TOTAL_INVESTMENT_VALUE,
                    cdsGridDataEST_TOTAL_PRICE
                  );

                cdsGridDataREAL_ACCOUNT_SINGLE_PRICE.AsVariant:=
                  SafeDiv(
                    cdsGridDataREAL_TOTAL_PRICE,
                    cdsGridDataREAL_ACCOUNT_QUANTITY
                  );

                cdsGridDataREAL_SINGLE_PRICE.AsVariant:=
                  SafeDiv(
                    cdsGridDataREAL_TOTAL_PRICE,
                    cdsGridDataREAL_QUANTITY
                  );

                cdsGridDataREAL_BUSINESS_RESULT_VALUE.AsVariant:=
                  cdsGridDataREAL_TOTAL_PRICE.AsVariant -
                  cdsGridDataREAL_TOTAL_INVESTMENT_VALUE.AsVariant;

                cdsGridDataREAL_BUSINESS_RESULT_PERCENT.AsVariant:=
                  SafeDiv(
                    cdsGridDataREAL_BUSINESS_RESULT_VALUE,
                    cdsGridDataREAL_TOTAL_PRICE
                  );

                cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT.AsVariant:=
                  SafeDiv(
                    cdsGridDataREAL_TOTAL_INVESTMENT_VALUE,
                    cdsGridDataREAL_TOTAL_PRICE
                  );

                cdsGridDataREAL_QUANTITY_DIFF.AsVariant:=
                  FloatToVar(
                    LargeZero(
                      cdsGridDataREAL_QUANTITY.AsFloat -
                      cdsGridDataEST_QUANTITY.AsFloat
                    )
                  );

                cdsGridDataREAL_ACCOUNT_QUANTITY_DIFF.AsVariant:=
                  FloatToVar(
                    LargeZero(
                      cdsGridDataREAL_ACCOUNT_QUANTITY.AsFloat -
                      cdsGridDataEST_ACCOUNT_QUANTITY.AsFloat
                    )
                  );

                cdsGridDataREAL_SINGLE_PRICE_DIFF.AsVariant:=
                  FloatToVar(
                    LargeZero(
                      cdsGridDataREAL_SINGLE_PRICE.AsFloat -
                      cdsGridDataEST_SINGLE_PRICE.AsFloat
                    )
                  );

                cdsGridDataREAL_ACCOUNT_SINGLE_PRICE_DIFF.AsVariant:=
                  FloatToVar(
                    LargeZero(
                      cdsGridDataREAL_ACCOUNT_SINGLE_PRICE.AsFloat -
                      cdsGridDataEST_ACCOUNT_SINGLE_PRICE.AsFloat
                    )
                  );

                cdsGridDataREAL_TOTAL_PRICE_DIFF.AsVariant:=
                  FloatToVar(
                    LargeZero(
                      cdsGridDataREAL_TOTAL_PRICE.AsFloat -
                      cdsGridDataEST_TOTAL_PRICE.AsFloat
                    )
                  );

                cdsGridDataREAL_BUSINESS_RESULT_VALUE_DIFF.AsVariant:=
                  FloatToVar(
                    LargeZero(
                      cdsGridDataREAL_BUSINESS_RESULT_VALUE.AsFloat -
                      cdsGridDataEST_BUSINESS_RESULT_VALUE.AsFloat
                    )
                  );

                cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFF.AsVariant:=
                  FloatToVar(
                    LargeZero(
                      cdsGridDataREAL_BUSINESS_RESULT_PERCENT.AsFloat -
                      cdsGridDataEST_BUSINESS_RESULT_PERCENT.AsFloat
                    )
                  );

                cdsGridDataREAL_TOTAL_INVESTMENT_VALUE_DIFF.AsVariant:=
                  FloatToVar(
                    LargeZero(
                      cdsGridDataREAL_TOTAL_INVESTMENT_VALUE.AsFloat -
                      cdsGridDataEST_TOTAL_INVESTMENT_VALUE.AsFloat
                    )
                  );

                cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFF.AsVariant:=
                  FloatToVar(
                    LargeZero(
                      cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT.AsFloat -
                      cdsGridDataEST_TOTAL_INVESTMENT_PERCENT.AsFloat
                    )
                  );

                cdsGridDataREAL_QUANTITY_DIFF_PERCENT.AsVariant:=
                  SafeDiv(
                    cdsGridDataREAL_QUANTITY_DIFF,
                    cdsGridDataEST_QUANTITY
                  );

                cdsGridDataREAL_ACCOUNT_QUANTITY_DIFF_PERCENT.AsVariant:=
                  SafeDiv(
                    cdsGridDataREAL_ACCOUNT_QUANTITY_DIFF,
                    cdsGridDataEST_ACCOUNT_QUANTITY
                  );

                cdsGridDataREAL_SINGLE_PRICE_DIFF_PERCENT.AsVariant:=
                  SafeDiv(
                    cdsGridDataREAL_SINGLE_PRICE_DIFF,
                    cdsGridDataEST_SINGLE_PRICE
                  );

                cdsGridDataREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT.AsVariant:=
                  SafeDiv(
                    cdsGridDataREAL_ACCOUNT_SINGLE_PRICE_DIFF,
                    cdsGridDataEST_ACCOUNT_SINGLE_PRICE
                  );

                cdsGridDataREAL_TOTAL_PRICE_DIFF_PERCENT.AsVariant:=
                  SafeDiv(
                    cdsGridDataREAL_TOTAL_PRICE_DIFF,
                    cdsGridDataEST_TOTAL_PRICE
                  );

                cdsGridDataREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT.AsVariant:=
                  SafeDiv(
                    cdsGridDataREAL_BUSINESS_RESULT_VALUE_DIFF,
                    cdsGridDataEST_BUSINESS_RESULT_VALUE
                  );

                cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT.AsVariant:=
                  SafeDiv(
                    cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFF,
                    cdsGridDataEST_BUSINESS_RESULT_PERCENT
                  );

                cdsGridDataREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT.AsVariant:=
                  SafeDiv(
                    cdsGridDataREAL_TOTAL_INVESTMENT_VALUE_DIFF,
                    cdsGridDataEST_TOTAL_INVESTMENT_VALUE
                  );

                cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT.AsVariant:=
                  SafeDiv(
                    cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFF,
                    cdsGridDataEST_TOTAL_INVESTMENT_PERCENT
                  );

                cdsGridData.Post;
              except
                cdsGridData.Cancel;
                raise;
              end;  { try }
            end;  { if }

          cdsDetail.Next;
        end;  { while }

      cdsGridData.First;
      cdsDetail.MasterSource:= dsGridData;
      cdsDetail.MasterFields:= MasterFieldNames[FParRelProductsOrientation];
      cdsDetail.First;
    finally
      cdsGridData.EnableControls;
    end;  { try }
  finally
    cdsDetail.EnableControls;
  end;  { try }

  FixAggregates;
end;

procedure TfmParRelProducts.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDateInterval) or
     (AFrame = frCommonProduct) or
     (AFrame = frIncludeStructPart) or
     (AFrame = frIncludeDept) then
    AFrame.ReadOnly:= True
  else
    inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmParRelProducts.actFormUpdate(Sender: TObject);
type
  TColumnMasterIndex = 0..110;
  TColumnMasterIndexes = set of TColumnMasterIndex;
var
  VisibleMasterColumnMasterIndexes: TColumnMasterIndexes;
  VisibleDetailColumnMasterIndexes: TColumnMasterIndexes;

  function GetAllMasterIndexes: TColumnMasterIndexes;
  var
    i: Integer;
  begin
    Result:= [];
    for i:= Low(TColumnMasterIndex) to High(TColumnMasterIndex) do
      Include(Result, i);
  end;
  
  procedure InitVisibleColumnMasterIndexes;
  var
    AllMasterIndexes: TColumnMasterIndexes;
  begin
    AllMasterIndexes:= GetAllMasterIndexes;
    VisibleMasterColumnMasterIndexes:= AllMasterIndexes;
    VisibleDetailColumnMasterIndexes:= AllMasterIndexes;
  end;

  procedure ApplyVisibleMasterColumnsCondition(ACondition: Boolean; AColumnMasterIndexes: TColumnMasterIndexes);
  begin
    if not ACondition then
      VisibleMasterColumnMasterIndexes:=
        VisibleMasterColumnMasterIndexes - AColumnMasterIndexes;
  end;

  procedure ApplyVisibleMasterAndDetailColumnsCondition(ACondition: Boolean; AColumnMasterIndexes: TColumnMasterIndexes);
  begin
    if not ACondition then
      begin
        VisibleMasterColumnMasterIndexes:=
          VisibleMasterColumnMasterIndexes - AColumnMasterIndexes;

        VisibleDetailColumnMasterIndexes:=
          VisibleDetailColumnMasterIndexes - AColumnMasterIndexes;
      end;  { if }
  end;

  procedure ApplyVisibleMasterAndNotDetailColumnsCondition(ACondition: Boolean; AColumnMasterIndexes: TColumnMasterIndexes);
  begin
    if not ACondition then
      VisibleMasterColumnMasterIndexes:=
        VisibleMasterColumnMasterIndexes - AColumnMasterIndexes
    else
      VisibleDetailColumnMasterIndexes:=
        VisibleDetailColumnMasterIndexes - AColumnMasterIndexes;
  end;

  procedure SetVisibleGridColumns;
  var
    i: Integer;
  begin
    for i:= 0 to grdData.Columns.Count - 1 do
      grdData.Columns[i].Visible:= (i in VisibleMasterColumnMasterIndexes);
        
    for i:= 4 to grdDetail.Columns.Count - 1 do
      grdDetail.Columns[i].Visible:= ((i-4) in VisibleDetailColumnMasterIndexes);
  end;

var
  ObtainmentType: TObtainmentType;
  MeasureDisplayButtonsVisible: Boolean;
  ValuePartButtonsVisible: Boolean;
  RealsDisplayButtonsVisible: Boolean;
  DiffDisplayButtonsVisible: Boolean;
  ToggleShowPartnerProductNamesButtonVisible: Boolean;
begin
  inherited;

  ObtainmentType:=
    IntToObtainmentType(cdsDetail.Params.ParamByName('OBTAINMENT_TYPE_CODE').AsInteger);

  InitVisibleColumnMasterIndexes;

  ApplyVisibleMasterAndNotDetailColumnsCondition(
    (FParRelProductsOrientation = prpoPartner),
    [0..5]);

  ApplyVisibleMasterColumnsCondition(
    (FParRelProductsOrientation = prpoPartner),
    [98..110]);

  ApplyVisibleMasterAndNotDetailColumnsCondition(
    (FParRelProductsOrientation = prpoProduct),
    [6..12, 78..97]);

  ApplyVisibleMasterColumnsCondition(
    (FParRelProductsOrientation = prpoProduct),
    [13..22, 37..46, 52..61, 67..72]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (FProductClass in [pcNormal, pcFinancial]),
    [6, 7]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    not FShowPartnerProductNames,
    [8]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    FShowPartnerProductNames,
    [9]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (FParRelProductsKind = prpkQuantity),
    [13..77]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (FParRelProductsKind = prpkEngineering),
    [78..97]);

  ApplyVisibleMasterColumnsCondition(
    (FParRelProductsKind = prpkEngineering),
    [98..110]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (FParRelProductsStructurePartIncludeKind = prpspikDetail),
    [28..31]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (FParRelProductsStructurePartIncludeKind = prpspikMaterial),
    [32..35]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (FParRelProductsDeptIncludeKind = prpdikOpDept),
    [36]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (FBorderRelType = brtClient),
    [24..27, 48..51, 63..66, 74..77]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (ObtainmentType = otAcquire),
    [24..27, 48..51, 63..66, 74..77]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (ObtainmentType <> otLease),
    [13, 18, 37, 42, 52, 57, 67, 70]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (ObtainmentType = otLease),
    [14, 16, 19, 21, 38, 40, 43, 45, 53, 55, 58, 60, 68, 71]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (FMeasureDisplayType = mdtWork),
    [13..17, 28..29, 32..33, 37..41, 52..56, 67..69]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (FMeasureDisplayType = mdtAccount),
    [18..22, 30..31, 34..35, 42..46, 57..61, 70..72]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (FValuePartDisplayType = vpdtBusinessResult),
    [24..25, 48..49, 63..64, 74..75]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (FValuePartDisplayType = vpdtInvestment),
    [26..27, 50..51, 65..66, 76..77]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (FRealsDisplayType = rdtQuantity),
    [37..51]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (FRealsDisplayType = rdtDiff),
    [52..77]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (FDiffDisplayType = ddtQuantity),
    [52..66, 81, 86..91]);

  ApplyVisibleMasterColumnsCondition(
    (FDiffDisplayType = ddtQuantity),
    [99..104]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (FDiffDisplayType = ddtPercent),
    [67..77, 82, 92..97]);

  ApplyVisibleMasterColumnsCondition(
    (FDiffDisplayType = ddtPercent),
    [105..110]);

  ApplyVisibleMasterAndDetailColumnsCondition(
    (not FIsForCommonProduct),
    [85..97]);

  SetVisibleGridColumns;

  NormalizedToolbar(tlbMasterPartnerDoc).Visible:= (FParRelProductsOrientation = prpoPartner);
  NormalizedToolbar(tlbDetailPartnerDoc).Visible:= (FParRelProductsOrientation <> prpoPartner);

  NormalizedToolbar(tlbMasterProductDoc).Visible:= (FParRelProductsOrientation = prpoProduct);
  NormalizedToolbar(tlbDetailProductDoc).Visible:= (FParRelProductsOrientation <> prpoProduct);

  edtObtainmentType.Visible:=
    (FProductClass = pcNormal);

  MeasureDisplayButtonsVisible:=
    (FParRelProductsKind = prpkQuantity);

  sepBeforeMeasureDisplayButtons.Visible:=
    MeasureDisplayButtonsVisible;
  btnSetWorkMeasureDisplay.Visible:=
    MeasureDisplayButtonsVisible;
  btnSetAccountMeasureDisplay.Visible:=
    MeasureDisplayButtonsVisible;

  btnSetWorkMeasureDisplay.Down:=
    (FMeasureDisplayType = mdtWork);
  btnSetAccountMeasureDisplay.Down:=
    (FMeasureDisplayType = mdtAccount);

  ValuePartButtonsVisible:=
    (FParRelProductsKind = prpkQuantity) and
    (FBorderRelType = brtClient) and
    (ObtainmentType = otAcquire);

  sepBeforeValuePartDisplayButtons.Visible:=
    ValuePartButtonsVisible;
  btnSetBusinessResultPartDisplay.Visible:=
    ValuePartButtonsVisible;
  btnSetInvestmentPartDisplay.Visible:=
    ValuePartButtonsVisible;
    
  btnSetBusinessResultPartDisplay.Down:=
    (FValuePartDisplayType = vpdtBusinessResult);
  btnSetInvestmentPartDisplay.Down:=
    (FValuePartDisplayType = vpdtInvestment);

  RealsDisplayButtonsVisible:=
    (FParRelProductsKind = prpkQuantity) and
    (FRealsDisplayType <> rdtNone);

  sepBeforeRealsDisplayButtons.Visible:=
    RealsDisplayButtonsVisible;
  btnSetRealsQuantityDisplay.Visible:=
    RealsDisplayButtonsVisible;
  btnSetRealsDiffDisplay.Visible:=
    RealsDisplayButtonsVisible;

  btnSetRealsQuantityDisplay.Down:=
    (FRealsDisplayType = rdtQuantity);
  btnSetRealsDiffDisplay.Down:=
    (FRealsDisplayType = rdtDiff);

  DiffDisplayButtonsVisible:=
    (FParRelProductsKind = prpkEngineering) or
    ( (FParRelProductsKind = prpkQuantity) and
      (FRealsDisplayType <> rdtNone)
    );

  sepBeforeDiffDisplayButtons.Visible:=
    DiffDisplayButtonsVisible;
  btnSetDiffQuantityDisplay.Visible:=
    DiffDisplayButtonsVisible;
  btnSetDiffPercentDisplay.Visible:=
    DiffDisplayButtonsVisible;

  btnSetDiffQuantityDisplay.Down:=
    (FDiffDisplayType = ddtQuantity);
  btnSetDiffPercentDisplay.Down:=
    (FDiffDisplayType = ddtPercent);

  ToggleShowPartnerProductNamesButtonVisible:=
    (FProductClass = pcNormal);

  btnToggleShowPartnerProductNames.Visible:=
    ToggleShowPartnerProductNamesButtonVisible;

  sepToggleShowPartnerProductNames.Visible:=
    ToggleShowPartnerProductNamesButtonVisible;

  btnToggleShowPartnerProductNames.Down:=
    FShowPartnerProductNames;

  pnlCommonProduct.Visible:=
    FIsForCommonProduct;

  pnlIncludeStuff.Visible:=
    (FParRelProductsStructurePartIncludeKind <> prpspikNone) or
    (FParRelProductsDeptIncludeKind <> prpdikNone);

  pnlIncludeStructPart.Visible:=
    (FParRelProductsStructurePartIncludeKind <> prpspikNone);

  pnlIncludeDept.Visible:=
    (FParRelProductsDeptIncludeKind <> prpdikNone);

  pnlParRelProductsEngineeringButton.Visible:=
    (FParRelProductsKind <> prpkEngineering) and
    (FProductClass = pcNormal);

  pnlEngineeringButtons.Visible:=
    (FParRelProductsKind = prpkEngineering);

  pnlParRelProductsForCommonProductButton.Visible:=
    (not FIsForCommonProduct) and
    (FParRelProductsStructurePartIncludeKind = prpspikNone) and
    (FParRelProductsDeptIncludeKind = prpdikNone) and
    (FProductClass in [pcNormal, pcFinancial]);

  pnlRealBorderDealsButton.Visible:=
    (FRealsDisplayType <> rdtNone) and
    (FProductClass <> pcBudget) and
    (FParRelProductsStructurePartIncludeKind = prpspikNone) and
    (FParRelProductsDeptIncludeKind = prpdikNone);

  pnlPriceListButton.Visible:=
    (FParRelProductsKind = prpkQuantity) and
    (ObtainmentType in [otAcquire, otLease]) and
    (FParRelProductsStructurePartIncludeKind = prpspikNone) and
    (FParRelProductsDeptIncludeKind = prpdikNone);

  lblCurrencyNote.Visible:=
    (FParRelProductsKind = prpkQuantity);

  dbtBusinessResultNote.Visible:=
    (FParRelProductsKind = prpkQuantity) and
    (FBorderRelType = brtClient) and
    (ObtainmentType = otAcquire);
end;

procedure TfmParRelProducts.actMasterPartnerDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotCompany,
    cdsGridDataPARTNER_DOC_BRANCH_CODE.AsInteger,
    cdsGridDataPARTNER_DOC_CODE.AsInteger);
end;

procedure TfmParRelProducts.actMasterPartnerDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= cdsGridDataPARTNER_HAS_DOC.AsInteger;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmParRelProducts.actMasterProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsGridDataPRODUCT_DOC_BRANCH_CODE.AsInteger,
    cdsGridDataPRODUCT_DOC_CODE.AsInteger);
end;

procedure TfmParRelProducts.actMasterProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= cdsGridDataPRODUCT_HAS_DOC.AsInteger;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmParRelProducts.actParRelProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotParRelProduct,
    cdsDetailDOC_BRANCH_CODE.AsInteger,
    cdsDetailDOC_CODE.AsInteger);
end;

procedure TfmParRelProducts.actParRelProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= cdsDetailHAS_DOC.AsInteger;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmParRelProducts.actParRelProductsEngineeringExecute(
  Sender: TObject);
begin
  inherited;
  ShowForm(
    dmDocClient,
    pdsGridDataParams,
    emReadOnly,
    doNone,
    False,
    FProductClass,
    FBorderRelType,
    FBorderProdOrderBaseType,
    FParRelProductsOrientation,
    prpkEngineering,
    FParRelProductsStructurePartIncludeKind,
    FParRelProductsDeptIncludeKind,
    FIsForCommonProduct);
end;

procedure TfmParRelProducts.actParRelProductsForCommonProductExecute(
  Sender: TObject);
var
  cdsParams: TAbmesClientDataSet;
begin
  inherited;
  cdsParams:= TAbmesClientDataSet.Create(Self);
  try
    cdsParams.FieldDefs.Assign(pdsGridDataParams.FieldDefs);
    cdsParams.CreateDataSet;
    try
      cdsParams.Append;
      try
        cdsParams.AssignFields(pdsGridDataParams);

        cdsParams.FieldByName('CHOSEN_PRODUCTS').Clear;
        
        cdsParams.FieldByName('COMMON_PRODUCT_CODE').AsVariant:=
          cdsDetailPRODUCT_CODE.AsVariant;

        cdsParams.Post;
      except
        cdsParams.Cancel;
        raise;
      end;  { try }

      ShowForm(
        dmDocClient,
        cdsParams,
        emReadOnly,
        doNone,
        False,
        FProductClass,
        FBorderRelType,
        FBorderProdOrderBaseType,
        FParRelProductsOrientation,
        FParRelProductsKind,
        FParRelProductsStructurePartIncludeKind,
        FParRelProductsDeptIncludeKind,
        True);
    finally
      cdsParams.Close;
    end;  { try }
  finally
    FreeAndNil(cdsParams);
  end;  { try }
end;

procedure TfmParRelProducts.actParRelProductsForCommonProductUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not FIsForCommonProduct and
    (cdsDetailPRODUCT_COMMON_STATUS_CODE.AsInteger = cscCommon);
end;

procedure TfmParRelProducts.actPriceListExecute(Sender: TObject);
begin
  inherited;
  TfmPriceList.ShowForm(
    dmDocClient,
    cdsGridData,
    emReadOnly,
    doNone,
    True,
    FProductClass,
    FBorderRelType,
    FParRelProductsOrientation,
    pdsGridDataParams);
end;

procedure TfmParRelProducts.actPriceListUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmParRelProducts.actPrintDetailsExecute(Sender: TObject);
var
  SavedCursor: TCursor;
  DateInfo: string;
  SubjectInfo: string;
  SavePage: TPrinterPage;
begin
  // do not call inherited;

  SavedCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsDetail.DisableControls;
    try
      DateInfo:=
        Format('%s: %s %s', [
          SDateInterval,
          frDateInterval.edtInterval.Text,
          pdsGridDataParams_OBTAINMENT_TYPE_ABBREV.AsString]);

      if (FParRelProductsOrientation = prpoPartner) then
        SubjectInfo:=
          Format('%s: %s %s', [
            SPartner,
            cdsGridDataPARTNER_NO.AsString,
            cdsGridDataPARTNER_NAME.AsString])
      else
        SubjectInfo:=
          Format('%s: %s %s', [
            SProduct,
            cdsGridDataPRODUCT_NO.AsString,
            cdsGridDataPRODUCT_NAME.AsString]);

      pgdDetail.SetSubstitutes([
        'DATE_INFO', DateInfo,
        'SUBJECT_INFO', SubjectInfo
      ]);

      SavePage:= SetUpPrinter(DMPAPER_A4, poLandscape, PrinterPreview.Printer);
      try
        pgdDetail.PreviewModal;
      finally
          SetUpPrinter(SavePage.PaperSize, SavePage.Orientation, PrinterPreview.Printer);
      end;   { try }
    finally
      cdsDetail.EnableControls;
    end;  { try }
  finally
    Screen.Cursor:= SavedCursor;
  end;  { try }
end;

procedure TfmParRelProducts.actPrintExecute(Sender: TObject);
var
  SavedCursor: TCursor;
  DateInfo: string;
  SavePage: TPrinterPage;
begin
  // do not call inherited;

  SavedCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsGridData.DisableControls;
    try
      DateInfo:=
        Format('%s: %s %s', [
          SDateInterval,
          frDateInterval.edtInterval.Text,
          pdsGridDataParams_OBTAINMENT_TYPE_ABBREV.AsString]);

      pgdData.SetSubstitutes(['DATE_INFO', DateInfo]);

      SavePage:= SetUpPrinter(DMPAPER_A4, poLandscape, PrinterPreview.Printer);
      try
        pgdData.PreviewModal;
      finally
          SetUpPrinter(SavePage.PaperSize, SavePage.Orientation, PrinterPreview.Printer);
      end;   { try }
    finally
      cdsGridData.EnableControls;
    end;  { try }
  finally
    Screen.Cursor:= SavedCursor;
  end;  { try }
end;

procedure TfmParRelProducts.actRealBorderDealsExecute(Sender: TObject);
begin
  inherited;
  case FBorderRelType of
    brtClient:
      begin
        cdsSaleExpGroupsParams.CreateDataSet;
        try
          cdsSaleExpGroupsParams.Append;
          try
            cdsSaleExpGroupsParamsSALE_DEAL_TYPE_CODE.Assign(
              pdsGridDataParams_BORDER_DEAL_TYPE_CODE);

            cdsSaleExpGroupsParamsBEGIN_SHIPMENT_DATE.Assign(
              pdsGridDataParamsBEGIN_DATE);

            cdsSaleExpGroupsParamsEND_SHIPMENT_DATE.Assign(
              pdsGridDataParamsEND_DATE);

            if (cdsDetailPRODUCT_COMMON_STATUS_CODE.AsInteger = cscCommon) then
              cdsSaleExpGroupsParamsCHOSEN_COMPANIES.AsString:=
                ChosenNodeCodeToXML(cdsDetailPARTNER_CODE.AsInteger, 0, 0, 0, 0, cscFilterThruCommon)
            else
              cdsSaleExpGroupsParamsCHOSEN_PRODUCTS.AsString:=
                ChosenNodeCodeToXML(cdsDetailPRODUCT_CODE.AsInteger);

            if (cdsDetailPARTNER_COMPANY_CLASS_CODE.AsInteger = CompanyClassToInt(ccCommon)) then
              cdsSaleExpGroupsParamsCHOSEN_COMPANIES.AsString:=
                ChosenNodeCodeToXML(cdsDetailPARTNER_CODE.AsInteger, 0, 0, 0, 0, cscFilterThruCommon)
            else
              cdsSaleExpGroupsParamsCHOSEN_COMPANIES.AsString:=
                ChosenNodeCodeToXML(cdsDetailPARTNER_CODE.AsInteger);

            cdsSaleExpGroupsParamsMIN_SALE_SHIPMENT_STATE_CODE.AsFloat:= 1;
            cdsSaleExpGroupsParamsMAX_SALE_SHIPMENT_STATE_CODE.AsFloat:= 9;

            cdsSaleExpGroupsParams.Post;
          except
            cdsSaleExpGroupsParams.Cancel;
            raise;
          end;  { try }

          TfmSaleExpGroups.ShowForm(dmDocClient, cdsSaleExpGroupsParams, emReadOnly, False, FProductClass);
        finally
          cdsSaleExpGroupsParams.Close;
        end;  { try }
      end;
    brtVendor:
      begin
        cdsDeliveriesParams.CreateDataSet;
        try
          cdsDeliveriesParams.Append;
          try
            cdsDeliveriesParamsDELIVERY_DEAL_TYPE_CODE.Assign(
              pdsGridDataParams_BORDER_DEAL_TYPE_CODE);

            cdsDeliveriesParamsBEGIN_DELIVERY_DATE.Assign(
              pdsGridDataParamsBEGIN_DATE);

            cdsDeliveriesParamsEND_DELIVERY_DATE.Assign(
              pdsGridDataParamsEND_DATE);

            if (cdsDetailPRODUCT_COMMON_STATUS_CODE.AsInteger = 2) then
              cdsDeliveriesParamsCOMMON_PRODUCT_CODE.Assign(
                cdsDetailPRODUCT_CODE)
            else
              cdsDeliveriesParamsCHOSEN_PRODUCTS.AsString:=
                ChosenNodeCodeToXML(cdsDetailPRODUCT_CODE.AsInteger);

            cdsDeliveriesParamsCHOSEN_COMPANIES.AsString:=
              ChosenCompanyCodeToXML(cdsDetailPARTNER_CODE.AsInteger);

            cdsDeliveriesParamsMIN_STATUS_CODE.AsFloat:= 1;
            cdsDeliveriesParamsMAX_STATUS_CODE.AsFloat:= 6;

            cdsDeliveriesParams.Post;
          except
            cdsDeliveriesParams.Cancel;
            raise;
          end;  { try }

          TfmDeliveries.ShowForm(dmDocClient, cdsDeliveriesParams, emReadOnly, doNone, FBorderProdOrderBaseType, False, False, FProductClass);
        finally
          cdsDeliveriesParams.Close;
        end;  { try }
      end;
    else
      Assert(False);
  end;  { case }
end;

procedure TfmParRelProducts.actSetWorkMeasureDisplayExecute(Sender: TObject);
begin
  inherited;
  FMeasureDisplayType:= mdtWork;
end;

procedure TfmParRelProducts.actToggleShowPartnerProductNamesExecute(
  Sender: TObject);
begin
  inherited;
  FShowPartnerProductNames:= not FShowPartnerProductNames;
end;

function TfmParRelProducts.BorderRelTypePriceVisible: Boolean;
begin
  Result:= 
    ((FBorderRelType = brtClient) and IsSalePriceVisible) or
    ((FBorderRelType = brtVendor) and IsLevelOneInvestedValueVisible);
end;

procedure TfmParRelProducts.FixAggregates;
var
  i: Integer;
  AggrField: TField;
begin
  cdsGridData.DisableControls;
  try
    grdData.DataSource:= nil;
    try
      grdData.Columns.BeginUpdate;
      try
        for i:= 0 to grdData.Columns.Count - 1 do
          if (grdData.Columns[i].Footer.FieldName <> '') then
            begin
              grdData.Columns[i].Footer.ValueType:= fvtStaticText;

              if (cdsGridData.RecordCount = 0) then
                grdData.Columns[i].Footer.Value:= ''
              else
                begin
                  AggrField:= cdsGridData.FieldByName(grdData.Columns[i].Footer.FieldName);

                  Assert(Assigned(AggrField));
                  grdData.Columns[i].Footer.Value:= AggrField.DisplayText;
                end;
            end;
      finally
        grdData.Columns.EndUpdate;
      end;  { try }
    finally
      grdData.DataSource:= dsGridData;
    end;  { try }
  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

class function TfmParRelProducts.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmParRelProducts.actSetAccountMeasureDisplayExecute(Sender: TObject);
begin
  inherited;
  FMeasureDisplayType:= mdtAccount;
end;

procedure TfmParRelProducts.actSetBusinessResultPartDisplayExecute(
  Sender: TObject);
begin
  inherited;
  FValuePartDisplayType:= vpdtBusinessResult;
end;

procedure TfmParRelProducts.actSetInvestmentPartDisplayExecute(Sender: TObject);
begin
  inherited;
  FValuePartDisplayType:= vpdtInvestment;
end;

procedure TfmParRelProducts.actSetRealsQuantityDisplayExecute(Sender: TObject);
begin
  inherited;
  FRealsDisplayType:= rdtQuantity;
end;

procedure TfmParRelProducts.actSetRealsDiffDisplayExecute(Sender: TObject);
begin
  inherited;
  FRealsDisplayType:= rdtDiff;
end;

procedure TfmParRelProducts.actSetDiffQuantityDisplayExecute(Sender: TObject);
begin
  inherited;
  FDiffDisplayType:= ddtQuantity;
end;

procedure TfmParRelProducts.actSetDiffPercentDisplayExecute(Sender: TObject);
begin
  inherited;
  FDiffDisplayType:= ddtPercent;
end;

procedure TfmParRelProducts.cdsInvestmentLevelsCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsInvestmentLevels_INVESTMENT_LEVEL_DESCRIPTION.AsString:=
    cdsInvestmentLevelsINVESTMENT_LEVEL_CODE.AsString +
    ' - ' +
    cdsInvestmentLevelsINVESTMENT_LEVEL_NAME.AsString;
end;

procedure TfmParRelProducts.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (VarToInt(cdsGridData_COUNT_EST_TOTAL_INVESTMENT_VALUE.AsVariant) = cdsGridData.RecordCount) then
    begin
      cdsGridData_SUM_EST_TOTAL_INVESTMENT_VALUE.Assign(
        cdsGridData__SUM_EST_TOTAL_INVESTMENT_VALUE);
    end
  else
    begin
      cdsGridData_SUM_EST_TOTAL_INVESTMENT_VALUE.Clear;
    end;

  cdsGridData_SUM_EST_BUSINESS_RESULT_VALUE.AsVariant:=
    cdsGridData_SUM_EST_TOTAL_PRICE.AsVariant -
    cdsGridData_SUM_EST_TOTAL_INVESTMENT_VALUE.AsVariant;

  cdsGridData_AVG_EST_BUSINESS_RESULT_PERCENT.AsVariant:=
    SafeDiv(
      cdsGridData_SUM_EST_BUSINESS_RESULT_VALUE,
      cdsGridData_SUM_EST_TOTAL_PRICE
    );

  cdsGridData_AVG_EST_TOTAL_INVESTMENT_PERCENT.AsVariant:=
    SafeDiv(
      cdsGridData_SUM_EST_TOTAL_INVESTMENT_VALUE,
      cdsGridData_SUM_EST_TOTAL_PRICE
    );

  if (VarToInt(cdsGridData_COUNT_REAL_TOTAL_INVESTMENT_VALUE.AsVariant) =
      VarToInt(cdsGridData_COUNT_REAL_TOTAL_PRICE.AsVariant)) then
    begin
      cdsGridData_SUM_REAL_TOTAL_INVESTMENT_VALUE.Assign(
        cdsGridData__SUM_REAL_TOTAL_INVESTMENT_VALUE);
    end
  else
    begin
      cdsGridData_SUM_REAL_TOTAL_INVESTMENT_VALUE.Clear;
    end;

  cdsGridData_SUM_REAL_BUSINESS_RESULT_VALUE.AsVariant:=
    cdsGridData_SUM_REAL_TOTAL_PRICE.AsVariant -
    cdsGridData_SUM_REAL_TOTAL_INVESTMENT_VALUE.AsVariant;

  cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT.AsVariant:=
    SafeDiv(
      cdsGridData_SUM_REAL_BUSINESS_RESULT_VALUE,
      cdsGridData_SUM_REAL_TOTAL_PRICE
    );

  cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT.AsVariant:=
    SafeDiv(
      cdsGridData_SUM_REAL_TOTAL_INVESTMENT_VALUE,
      cdsGridData_SUM_REAL_TOTAL_PRICE
    );


  cdsGridData_SUM_REAL_TOTAL_PRICE_DIFF.AsVariant:=
    FloatToVar(
      LargeZero(
        VarToFloat(cdsGridData_SUM_REAL_TOTAL_PRICE.AsVariant) -
        VarToFloat(cdsGridData_SUM_EST_TOTAL_PRICE.AsVariant)
      )
    );

  cdsGridData_SUM_REAL_BUSINESS_RESULT_VALUE_DIFF.AsVariant:=
    FloatToVar(
      LargeZero(
        cdsGridData_SUM_REAL_BUSINESS_RESULT_VALUE.AsFloat -
        cdsGridData_SUM_EST_BUSINESS_RESULT_VALUE.AsFloat
      )
    );

  cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF.AsVariant:=
    FloatToVar(
      LargeZero(
        cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT.AsFloat -
        cdsGridData_AVG_EST_BUSINESS_RESULT_PERCENT.AsFloat
      )
    );

  cdsGridData_SUM_REAL_TOTAL_INVESTMENT_VALUE_DIFF.AsVariant:=
    FloatToVar(
      LargeZero(
        cdsGridData_SUM_REAL_TOTAL_INVESTMENT_VALUE.AsFloat -
        cdsGridData_SUM_EST_TOTAL_INVESTMENT_VALUE.AsFloat
      )
    );

  cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF.AsVariant:=
    FloatToVar(
      LargeZero(
        cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT.AsFloat -
        cdsGridData_AVG_EST_TOTAL_INVESTMENT_PERCENT.AsFloat
      )
    );

  cdsGridData_AVG_REAL_TOTAL_PRICE_DIFF_PERCENT.AsVariant:=
    SafeDiv(
      cdsGridData_SUM_REAL_TOTAL_PRICE_DIFF,
      cdsGridData_SUM_EST_TOTAL_PRICE
    );

  cdsGridData_AVG_REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT.AsVariant:=
    SafeDiv(
      cdsGridData_SUM_REAL_BUSINESS_RESULT_VALUE_DIFF,
      cdsGridData_SUM_EST_BUSINESS_RESULT_VALUE
    );

  cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT.AsVariant:=
    SafeDiv(
      cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF,
      cdsGridData_AVG_EST_BUSINESS_RESULT_PERCENT
    );

  cdsGridData_AVG_REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT.AsVariant:=
    SafeDiv(
      cdsGridData_SUM_REAL_TOTAL_INVESTMENT_VALUE_DIFF,
      cdsGridData_SUM_EST_TOTAL_INVESTMENT_VALUE
    );

  cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT.AsVariant:=
    SafeDiv(
      cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF,
      cdsGridData_AVG_EST_TOTAL_INVESTMENT_PERCENT
    );
end;

procedure TfmParRelProducts.cdsDetailPARTNER_STATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  CompanyStatusFieldGetText(
    Sender,
    cdsDetailPARTNER_STATUS_NAME,
    cdsDetailPARTNER_BASE_ROLE_CODE,
    Text,
    DisplayText);
end;

procedure TfmParRelProducts.cdsDetailPRODUCT_COMMON_STATUS_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= ProductCommonStatusAbbrevs[Sender.AsInteger];
end;

procedure TfmParRelProducts.cdsDetailPRODUCT_SPEC_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= SpecNoQuantityStates[Sender.AsInteger];
end;

procedure TfmParRelProducts.cdsGridDataPARTNER_STATUS_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  CompanyStatusFieldGetText(
    Sender,
    cdsGridDataPARTNER_STATUS_NAME,
    cdsGridDataPARTNER_BASE_ROLE_CODE,
    Text,
    DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataPRODUCT_COMMON_STATUS_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= ProductCommonStatusAbbrevs[Sender.AsInteger];
end;

procedure TfmParRelProducts.cdsGridDataPRODUCT_SPEC_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= SpecNoQuantityStates[Sender.AsInteger];
end;

procedure TfmParRelProducts.cdsDetailEO_ENGINEERING_WORKDAYS_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailEST_BUSINESS_RESULT_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailEST_TOTAL_INVESTMENT_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailJOINED_SPEC_STATE_1_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailJOINED_SPEC_STATE_2_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailJOINED_SPEC_STATE_3_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailJOINED_SPEC_STATE_4_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailJOINED_SPEC_STATE_5_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailJOINED_SPEC_STATE_6_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataEO_ENGINEERING_WORKDAYS_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataEST_BUSINESS_RESULT_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataEST_TOTAL_INVESTMENT_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataJOINED_SPEC_STATE_1_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataJOINED_SPEC_STATE_2_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataJOINED_SPEC_STATE_3_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataJOINED_SPEC_STATE_4_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataJOINED_SPEC_STATE_5_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataJOINED_SPEC_STATE_6_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailREAL_ACCOUNT_QUANTITY_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailREAL_BUSINESS_RESULT_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailREAL_BUSINESS_RESULT_PERCENT_DIFFGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailREAL_QUANTITY_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailREAL_SINGLE_PRICE_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailREAL_TOTAL_INVESTMENT_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailREAL_TOTAL_INVESTMENT_PERCENT_DIFFGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsDetailREAL_TOTAL_PRICE_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataREAL_ACCOUNT_QUANTITY_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataREAL_BUSINESS_RESULT_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFFGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataREAL_QUANTITY_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataREAL_SINGLE_PRICE_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataREAL_TOTAL_INVESTMENT_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFFGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataREAL_TOTAL_PRICE_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataSPEC_STATE_1_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataSPEC_STATE_2_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataSPEC_STATE_3_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataSPEC_STATE_4_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataSPEC_STATE_5_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridDataSPEC_STATE_6_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridData_AVG_EST_BUSINESS_RESULT_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridData_AVG_EST_TOTAL_INVESTMENT_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFFGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridData_AVG_REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFFGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridData_AVG_REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.cdsGridData_AVG_REAL_TOTAL_PRICE_DIFF_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRelProducts.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  InitializePriorityInterval(pdsGridDataParamsBEGIN_PRIORITY_CODE, pdsGridDataParamsEND_PRIORITY_CODE);
end;

end.
