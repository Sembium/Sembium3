unit fProductPeriods;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, JvMemoryDataset, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, Mask, fBaseFrame,
  fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fProductFieldEditFrameBald, uClientTypes,
  fProductExFieldEditFrame, uProducts, Menus, dDocClient, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL,
  DBAxisGridsEh;

type
  TfmProductPeriods = class(TBottomButtonGridForm)
    cdsDataqryProductPeriods: TDataSetField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_PERIOD_CODE: TAbmesFloatField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataPRECISION_LEVEL_CODE: TAbmesFloatField;
    cdsGridDataBALANCE_QUANTITY: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsGridDataSALE_STORE_CODE: TAbmesFloatField;
    cdsGridDataSALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataSALE_ACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataSALE_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataSALE_LEASE_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataSALE_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataDELIVERY_STORE_CODE: TAbmesFloatField;
    cdsGridDataDELIVERY_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataDELIVERY_ACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataDELIVERY_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataDELIVERY_LEASE_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataDELIVERY_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataIS_PSD_PRICE_FROM_DELIVERY: TAbmesFloatField;
    cdsGridDataSALE_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDELIVERY_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsPrecisionLevels: TAbmesClientDataSet;
    cdsPrecisionLevelsPRECISION_LEVEL_CODE: TAbmesFloatField;
    cdsPrecisionLevelsPRECISION_LEVEL_NO: TAbmesFloatField;
    cdsPrecisionLevelsCOLOR: TAbmesFloatField;
    cdsPrecisionLevelsBACKGROUND_COLOR: TAbmesFloatField;
    cdsGridData_PRECISION_LEVEL_NO: TAbmesFloatField;
    cdsGridData_PRECISION_LEVEL_COLOR: TAbmesFloatField;
    cdsGridData_PRECISION_LEVEL_BACKGR_COLOR: TAbmesFloatField;
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_SALE_ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_SALE_LEASE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_DELIVERY_ACQUIRE_CURR_ABBREV: TAbmesWideStringField;
    cdsGridData_DELIVERY_LEASE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridData_SALE_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridData_DELIVERY_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    tlbDocs: TToolBar;
    sepDocs: TToolButton;
    pnlDocs: TPanel;
    btnDocs: TToolButton;
    cdsGridData_MAX_PRODUCT_PERIOD_CODE: TAggregateField;
    cdsGridData_FULL_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    actToggleFullInvestmentValue: TAction;
    tlbToggle: TToolBar;
    btnToggleFullInvestmentValue: TToolButton;
    cdsGridDataPREV_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridDataPREV_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridDataPREV_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridDataPREV_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridDataPREV_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridDataPREV_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    actToggleSaleAndDelivery: TAction;
    btnToggleSaleAndDelivery: TSpeedButton;
    actToggleInvestmentValuesDiff: TAction;
    btnToggleInvestmentValuesDiff: TSpeedButton;
    cdsGridData_INVESTMENT_LEVEL_1_DIFF: TAbmesFloatField;
    cdsGridData_INVESTMENT_LEVEL_2_DIFF: TAbmesFloatField;
    cdsGridData_INVESTMENT_LEVEL_3_DIFF: TAbmesFloatField;
    cdsGridData_INVESTMENT_LEVEL_4_DIFF: TAbmesFloatField;
    cdsGridData_INVESTMENT_LEVEL_5_DIFF: TAbmesFloatField;
    cdsGridData_INVESTMENT_LEVEL_6_DIFF: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_1_DIFF: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_2_DIFF: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_3_DIFF: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_4_DIFF: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_5_DIFF: TAbmesFloatField;
    cdsGridData_FULL_INVESTMENT_LEVEL_6_DIFF: TAbmesFloatField;
    cdsGridDataCMMN_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridDataCMMN_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridDataCMMN_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridDataCMMN_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridDataCMMN_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridDataCMMN_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsGridData_SALE_INVESTMENT_LEVEL_1_PART: TAbmesFloatField;
    cdsGridData_SALE_INVESTMENT_LEVEL_2_PART: TAbmesFloatField;
    cdsGridData_SALE_INVESTMENT_LEVEL_3_PART: TAbmesFloatField;
    cdsGridData_SALE_INVESTMENT_LEVEL_4_PART: TAbmesFloatField;
    cdsGridData_SALE_INVESTMENT_LEVEL_5_PART: TAbmesFloatField;
    cdsGridData_SALE_INVESTMENT_LEVEL_6_PART: TAbmesFloatField;
    cdsGridData_DLVR_INVESTMENT_LEVEL_1_PART: TAbmesFloatField;
    cdsGridData_DLVR_INVESTMENT_LEVEL_2_PART: TAbmesFloatField;
    cdsGridData_DLVR_INVESTMENT_LEVEL_3_PART: TAbmesFloatField;
    cdsGridData_DLVR_INVESTMENT_LEVEL_4_PART: TAbmesFloatField;
    cdsGridData_DLVR_INVESTMENT_LEVEL_5_PART: TAbmesFloatField;
    cdsGridData_DLVR_INVESTMENT_LEVEL_6_PART: TAbmesFloatField;
    cdsGridData_CMMN_INVESTMENT_LEVEL_1_DIFF: TAbmesFloatField;
    cdsGridData_CMMN_INVESTMENT_LEVEL_2_DIFF: TAbmesFloatField;
    cdsGridData_CMMN_INVESTMENT_LEVEL_3_DIFF: TAbmesFloatField;
    cdsGridData_CMMN_INVESTMENT_LEVEL_4_DIFF: TAbmesFloatField;
    cdsGridData_CMMN_INVESTMENT_LEVEL_5_DIFF: TAbmesFloatField;
    cdsGridData_CMMN_INVESTMENT_LEVEL_6_DIFF: TAbmesFloatField;
    cdsGridData_AGGR_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridData_AGGR_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridData_AGGR_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridData_AGGR_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridData_AGGR_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    sepToggleInvestmentValuesDiff: TToolButton;
    sepToggleFullInvestmentValue: TToolButton;
    cdsGridDataSALE_ACQUIRE_CURRENCY_FIXING: TAbmesFloatField;
    cdsGridDataDELIVERY_ACQUIRE_CURR_FIXING: TAbmesFloatField;
    cdsCommonProductPeriodsHeader: TAbmesClientDataSet;
    cdsCommonProductPeriodsHeaderPRODUCT_CODE: TAbmesFloatField;
    cdsCommonProductPeriodsHeaderqryProductPeriods: TDataSetField;
    cdsCommonProductPeriods: TAbmesClientDataSet;
    cdsCommonProductPeriodsPRODUCT_CODE: TAbmesFloatField;
    cdsCommonProductPeriodsPRODUCT_PERIOD_CODE: TAbmesFloatField;
    cdsCommonProductPeriodsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsCommonProductPeriodsEND_DATE: TAbmesSQLTimeStampField;
    cdsCommonProductPeriodsPRECISION_LEVEL_CODE: TAbmesFloatField;
    cdsCommonProductPeriodsBALANCE_QUANTITY: TAbmesFloatField;
    cdsCommonProductPeriodsINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsCommonProductPeriodsINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsCommonProductPeriodsINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsCommonProductPeriodsINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsCommonProductPeriodsINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsCommonProductPeriodsINVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsCommonProductPeriodsSALE_STORE_CODE: TAbmesFloatField;
    cdsCommonProductPeriodsSALE_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsCommonProductPeriodsSALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsCommonProductPeriodsSALE_ACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    cdsCommonProductPeriodsSALE_ACQUIRE_CURRENCY_FIXING: TAbmesFloatField;
    cdsCommonProductPeriodsSALE_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsCommonProductPeriodsSALE_LEASE_CURRENCY_CODE: TAbmesFloatField;
    cdsCommonProductPeriodsSALE_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsCommonProductPeriodsDELIVERY_STORE_CODE: TAbmesFloatField;
    cdsCommonProductPeriodsDELIVERY_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsCommonProductPeriodsDELIVERY_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsCommonProductPeriodsDELIVERY_ACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    cdsCommonProductPeriodsDELIVERY_ACQUIRE_CURR_FIXING: TAbmesFloatField;
    cdsCommonProductPeriodsDELIVERY_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsCommonProductPeriodsDELIVERY_LEASE_CURRENCY_CODE: TAbmesFloatField;
    cdsCommonProductPeriodsDELIVERY_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsCommonProductPeriodsIS_PSD_PRICE_FROM_DELIVERY: TAbmesFloatField;
    actCreateLike: TAction;
    btnCreateLike: TBitBtn;
    cdsGridDataACC_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridDataACC_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridDataACC_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridDataACC_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridDataACC_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridDataACC_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsGridDataACC_SALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataACC_SALE_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataACC_DLVRY_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataACC_DLVRY_LEASE_SINGLE_PRICE: TAbmesFloatField;
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
    sepToggleSaleAndDelivery: TToolButton;
    btnWorkInvestmentValues: TToolButton;
    btnAccountInvestmentValues: TToolButton;
    actWorkInvestmentValues: TAction;
    actAccountInvestmentValues: TAction;
    cdsGridDataACC_BALANCE_QUANTITY: TAbmesFloatField;
    cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField;
    frProduct: TfrProductExFieldEditFrame;
    pnlSeparator: TPanel;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataPARENT_CODE: TAbmesFloatField;
    cdsDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsDataIS_USED_BY_SALES: TAbmesFloatField;
    cdsDataUSED_BY_SALES_PR_NO: TAbmesFloatField;
    cdsDataIS_PROVIDED_BY_DELIVERIES: TAbmesFloatField;
    cdsDataPROV_BY_DELIVERIES_PR_NO: TAbmesFloatField;
    cdsDataCOMMON_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataSALE_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    cdsGridDataDELIVERY_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    cdsGridData_SALE_AGGR_INVESTMENT_LEVEL_6_PART: TAbmesFloatField;
    cdsGridData_DLVR_AGGR_INVESTMENT_LEVEL_6_PART: TAbmesFloatField;
    cdsGridData_CMMN_AGGR_INVESTMENT_LEVEL_6_DIFF: TAbmesFloatField;
    cdsGridData_SALE_FULL_INVESTMENT_LEVEL_6_PART: TAbmesFloatField;
    cdsGridData_DLVR_FULL_INVESTMENT_LEVEL_6_PART: TAbmesFloatField;
    cdsGridData_CMMN_FULL_INVESTMENT_LEVEL_6_DIFF: TAbmesFloatField;
    cdsDataTECH_MEASURE_COEF: TAbmesFloatField;
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
    cdsGridDataqryProdPerSpecModelVariants: TDataSetField;
    cdsGridDataqryNotProdPerSpecModelVariants: TDataSetField;
    cdsProdPerSpecModelVariants: TAbmesClientDataSet;
    cdsNotProdPerSpecModelVariants: TAbmesClientDataSet;
    cdsProdPerSpecModelVariantsPRODUCT_CODE: TAbmesFloatField;
    cdsProdPerSpecModelVariantsPRODUCT_PERIOD_CODE: TAbmesFloatField;
    cdsProdPerSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsProdPerSpecModelVariantsIS_EST_VARIANT: TAbmesFloatField;
    cdsProdPerSpecModelVariantsSPEC_MODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    cdsNotProdPerSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsNotProdPerSpecModelVariantsSPEC_MODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    cdsSpecModelVariants: TAbmesClientDataSet;
    cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsSpecModelVariantsSPEC_MODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    cdsNotProdPerSpecModelVariantsPRODUCT_CODE: TAbmesFloatField;
    cdsNotProdPerSpecModelVariantsPRODUCT_PERIOD_CODE: TAbmesFloatField;
    cdsProdPerSpecModelVariants_MAX_IS_EST_VARIANT: TAggregateField;
    cdsProdPerSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField;
    cdsProdPerSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField;
    cdsProdPerSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField;
    cdsSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField;
    cdsSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField;
    cdsSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField;
    cdsNotProdPerSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField;
    cdsNotProdPerSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField;
    cdsNotProdPerSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField;
    cdsProdPerSpecModelVariantsSMV_NO: TAbmesFloatField;
    cdsNotProdPerSpecModelVariantsSMV_NO: TAbmesFloatField;
    cdsGridDataOVERRIDE_PRECISION_LEVEL: TAbmesFloatField;
    cdsGridDataOVERRIDE_BALANCE_QUANTITY: TAbmesFloatField;
    cdsGridDataOVERRIDE_INV_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridDataOVERRIDE_INV_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridDataOVERRIDE_INV_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridDataOVERRIDE_INV_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridDataOVERRIDE_INV_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridDataOVERRIDE_INV_LEVEL_6_VALUE: TAbmesFloatField;
    cdsGridDataOVERRIDE_S_STORE: TAbmesFloatField;
    cdsGridDataOVERRIDE_S_ACQUIRE_PRICE: TAbmesFloatField;
    cdsGridDataOVERRIDE_S_LEASE_PRICE: TAbmesFloatField;
    cdsGridDataOVERRIDE_S_RESOLVE_DUR_DAYS: TAbmesFloatField;
    cdsGridDataOVERRIDE_D_STORE: TAbmesFloatField;
    cdsGridDataOVERRIDE_D_ACQUIRE_PRICE: TAbmesFloatField;
    cdsGridDataOVERRIDE_D_LEASE_PRICE: TAbmesFloatField;
    cdsGridDataOVERRIDE_D_RESOLVE_DUR_DAYS: TAbmesFloatField;
    cdsGridDataOVERRIDE_IS_PSD_PRICE_FROM_DLV: TAbmesFloatField;
    cdsGridDataINHRT_PRECISION_LEVEL_CODE: TAbmesFloatField;
    cdsGridDataINHRT_BALANCE_QUANTITY: TAbmesFloatField;
    cdsGridDataINHRT_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridDataINHRT_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridDataINHRT_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridDataINHRT_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridDataINHRT_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridDataINHRT_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsGridDataINHRT_S_STORE_CODE: TAbmesFloatField;
    cdsGridDataINHRT_S_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataINHRT_S_ACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataINHRT_S_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataINHRT_S_LEASE_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataINHRT_S_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataINHRT_S_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    cdsGridDataINHRT_D_STORE_CODE: TAbmesFloatField;
    cdsGridDataINHRT_D_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataINHRT_D_ACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataINHRT_D_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataINHRT_D_LEASE_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataINHRT_D_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataINHRT_D_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    cdsGridDataINHRT_IS_PSD_PRICE_FROM_DLVRY: TAbmesFloatField;
    cdsGridData_INHRT_PRECISION_LEVEL_NO: TAbmesFloatField;
    cdsGridData_INHRT_S_ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_INHRT_D_ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_INHRT_S_LEASE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_INHRT_S_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridData_INHRT_D_LEASE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_INHRT_D_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsCommonProductPeriodsSALE_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    cdsCommonProductPeriodsDELIVERY_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    cdsGridData_SHOW_PRECISION_LEVEL_NO: TAbmesFloatField;
    cdsGridData_SHOW_BALANCE_QUANTITY: TAbmesFloatField;
    cdsDataIS_CONCRETE_PRODUCT: TAbmesFloatField;
    cdsGridData_ACC_SHOW_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridData_ACC_SHOW_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridData_ACC_SHOW_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridData_ACC_SHOW_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridData_SHOW_ACC_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridData_ACC_SHOW_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsGridData_SHOW_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridData_SHOW_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridData_SHOW_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridData_SHOW_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridData_SHOW_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridData_SHOW_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    cdsGridData_SHOW_SALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_ACC_SHOW_SALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_SHOW_SALE_ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_SHOW_SALE_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_ACC_SHOW_SALE_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_SHOW_SALE_LEASE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_SHOW_SALE_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridData_SHOW_SALE_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridData_SHOW_SALE_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    cdsGridData_SHOW_DELIVERY_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_ACC_SHOW_DLVRY_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_SHOW_DELIVERY_ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_SHOW_DELIVERY_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_ACC_SHOW_DLVRY_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_SHOW_DELIVERY_LEASE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_SHOW_DELIVERY_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridData_SHOW_DELIVERY_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridData_SHOW_DELIVERY_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    cdsGridData_ACC_SHOW_BALANCE_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_INHRT_INV_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridDataACC_INHRT_INV_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridDataACC_INHRT_INV_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridDataACC_INHRT_INV_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridDataACC_INHRT_INV_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridDataACC_INHRT_INV_LEVEL_6_VALUE: TAbmesFloatField;
    cdsGridDataINHRT_S_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataINHRT_D_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataACC_INHRT_S_ACQ_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataACC_INHRT_S_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataACC_INHRT_D_ACQ_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataACC_INHRT_D_LEASE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataACC_INHRT_BALANCE_QUANTITY: TAbmesFloatField;
    cdsGridDataMIN_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridDataMAX_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridDataOVERRIDE_MIN_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridDataOVERRIDE_MAX_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridDataINHRT_MIN_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridDataINHRT_MAX_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_MIN_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_MAX_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_INHRT_MIN_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_INHRT_MAX_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridData_SHOW_MIN_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridData_SHOW_MAX_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridData_ACC_SHOW_MIN_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridData_ACC_SHOW_MAX_ORDER_QUANTITY: TAbmesFloatField;
    actToggleOrderQuantities: TAction;
    sepToggleOrderQuantities: TToolButton;
    btnToggleOrderQuantities: TToolButton;
    cdsCommonProductPeriodsMIN_ORDER_QUANTITY: TAbmesFloatField;
    cdsCommonProductPeriodsMAX_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridDataACQUIRE_BATCH_QUANTITY: TAbmesFloatField;
    cdsGridDataOVERRIDE_ACQUIRE_BATCH_QTY: TAbmesFloatField;
    cdsGridDataACC_ACQUIRE_BATCH_QUANTITY: TAbmesFloatField;
    cdsGridDataINHRT_ACQUIRE_BATCH_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_INHRT_ACQUIRE_BATCH_QTY: TAbmesFloatField;
    cdsGridData_SHOW_ACQUIRE_BATCH_QUANTITY: TAbmesFloatField;
    cdsGridData_ACC_SHOW_ACQUIRE_BATCH_QUANTITY: TAbmesFloatField;
    procedure cdsCommonProductPeriodsHeaderBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
    procedure cdsGridDataEND_DATEChange(Sender: TField);
    procedure cdsGridDataDELIVERY_ACQUIRE_CURRENCY_CODEChange(
      Sender: TField);
    procedure cdsGridDataSALE_ACQUIRE_CURRENCY_CODEChange(Sender: TField);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure PercentFieldsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataBEGIN_DATEChange(Sender: TField);
    procedure actToggleInvestmentValuesDiffExecute(Sender: TObject);
    procedure actToggleSaleAndDeliveryExecute(Sender: TObject);
    procedure actToggleFullInvestmentValueExecute(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure btnDocsClick(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataBEGIN_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDataBeforeClose(DataSet: TDataSet);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataDELIVERY_STORE_CODEChange(Sender: TField);
    procedure cdsGridDataSALE_STORE_CODEChange(Sender: TField);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actCreateLikeUpdate(Sender: TObject);
    procedure actCreateLikeExecute(Sender: TObject);
    procedure cdsGridDataBeforeEdit(DataSet: TDataSet);
    procedure navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure actWorkInvestmentValuesExecute(Sender: TObject);
    procedure actAccountInvestmentValuesExecute(Sender: TObject);
    procedure WorkOrAccountFieldChange(Sender: TField);
    procedure actWorkInvestmentValuesUpdate(Sender: TObject);
    procedure actAccountInvestmentValuesUpdate(Sender: TObject);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure actPastPresentFuturePeriodsExecute(Sender: TObject);
    procedure cdsGridDataBeforeInsert(DataSet: TDataSet);
    procedure cdsProdPerSpecModelVariantsNewRecord(DataSet: TDataSet);
    procedure cdsSpecModelVariantsBeforeOpen(DataSet: TDataSet);
    procedure actInsertRecordExecute(Sender: TObject);
    procedure cdsNotProdPerSpecModelVariantsNewRecord(DataSet: TDataSet);
    procedure cdsProdPerSpecModelVariantsBeforePost(DataSet: TDataSet);
    procedure cdsNotProdPerSpecModelVariantsBeforePost(DataSet: TDataSet);
    procedure PercentFieldsZeroGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actToggleOrderQuantitiesExecute(Sender: TObject);
  private
    FCreateLikeFieldValues: Variant;
    FBeforeEditBeginDate: TDateTime;
    FSettingWorkOrAccountValue: Boolean;
    MsgParams: TStrings;
    FOriginalFormCaption: string;
    FProductClass: TProductClass;
    FMaxProductPeriodCode: Integer;
    FIncdsGridDataNewRecord: Boolean;
    FInsertRecordPreset: Boolean;
    FFocusDate: TDateTime;
    procedure SetVisibleInvestmentValues;
    procedure UpdateCurrencyFixing(CurrencyField, FixingField: TField);
    procedure SetPrevPeriodInvestmentValues;
    procedure SetWorkOrAccountInvestmentValues;
    procedure RefilterPeriods;
  protected
    class function CanUseDocs: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    procedure ChangeEditMode(var AEditMode: TEditMode); override;
    function GetGridRecordReadOnly: Boolean; override;
    function GetOriginalFormCaption: string; override;
    function IsQuantityField(const AField: TAbmesFloatField): Boolean; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AFocusDate: TDateTime = 0): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AFocusDate: TDateTime = 0); reintroduce; virtual;
  end;

implementation

uses
  dMain, uTreeClientUtils, uProductClientUtils, uModelUtils, uColorConsts,
  uDocUtils, uUtils, fProductPeriod, uClientUtils, Math, VarUtils,
  uUserActivityConsts, StrUtils, uYearParts, uDataSetUtils, uClientDateTime,
  uToolbarUtils, uBorderRelTypes;

resourcestring
  SIncorrectDateIntervalAgainstCommonProduct = 'Некоректен времеви интервал спрямо УОб Обобщаващ';
  SNoUserActivityForPastOrCurrentProductPeriod =
    'Нямате Информационна Отговорност да задавате или изтривате Допълваща Информация за изминал или текущ Времеви Интервал! (%d)';
  SNonPositiveQuantity = '"%s" трябва да бъде по-голямо от нула!';
  SInvalidOrderQuantityInterval = 'Невалидни минимално и максимално количество за ОПВ/ОПД';

{$R *.dfm}

procedure TfmProductPeriods.actAccountInvestmentValuesExecute(
  Sender: TObject);
begin
  inherited;
  SetWorkOrAccountInvestmentValues;
end;

procedure TfmProductPeriods.actAccountInvestmentValuesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:=
    (FProductClass in [pcNormal, pcFinancial]);
end;

procedure TfmProductPeriods.actCreateLikeExecute(Sender: TObject);
var
  SavePoint: Integer;
begin
  inherited;

  FCreateLikeFieldValues:= GetRecordData(cdsGridData, True);
  try
    SavePoint:= cdsGridData.SavePoint;
    try
      if not DoShowEditForm(emInsert) then
        Abort;
    except
      cdsGridData.SavePoint:= SavePoint;
      raise;
    end;
  finally
    FCreateLikeFieldValues:= Unassigned;
  end;
end;

procedure TfmProductPeriods.actCreateLikeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmProductPeriods.actFormUpdate(Sender: TObject);
begin
  inherited;

  btnDocs.Enabled:=
    cdsGridData.Active and
    not cdsGridData.IsEmpty;

  btnDocs.ImageIndex:= cdsGridDataHAS_DOC_ITEMS.AsInteger;

  sepToggleSaleAndDelivery.Visible:=
    (FProductClass in [pcNormal, pcFinancial]);
  NormalizedToolbar(tlbToggle).Visible:=
    (FProductClass in [pcNormal, pcFinancial]);
end;

procedure TfmProductPeriods.actInsertRecordExecute(Sender: TObject);
var
  SavePoint: Integer;
begin
  SavePoint:= cdsGridData.SavePoint;
  try
    if not DoShowEditForm(emInsert) then
      Abort;

    RefilterPeriods;
  except
    cdsGridData.SavePoint:= SavePoint;
    RefilterPeriods;
    raise;
  end;
end;

procedure TfmProductPeriods.actPastPresentFuturePeriodsExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  RefilterPeriods;
end;

procedure TfmProductPeriods.actToggleInvestmentValuesDiffExecute(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleInvestmentValues;
end;

procedure TfmProductPeriods.actToggleOrderQuantitiesExecute(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      Checked:= not Checked;

      grdData.Columns[3].Visible:= not Checked;
      grdData.Columns[4].Visible:= Checked;
      grdData.Columns[5].Visible:= Checked;
      grdData.Columns[6].Visible:= Checked;
    end;  { with }
end;

procedure TfmProductPeriods.actToggleFullInvestmentValueExecute(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleInvestmentValues;
end;

procedure TfmProductPeriods.actToggleSaleAndDeliveryExecute(
  Sender: TObject);
var
  i: Integer;
begin
  inherited;

  with Sender as TAction do
    begin
      Checked:= not Checked;

      for i:= 31 to 37 do
        grdData.Columns[i].Visible:= not Checked;
      for i:= 38 to 44 do
        grdData.Columns[i].Visible:= Checked;
    end;  { with }
end;

procedure TfmProductPeriods.actWorkInvestmentValuesExecute(
  Sender: TObject);
begin
  inherited;
  SetWorkOrAccountInvestmentValues;
end;

procedure TfmProductPeriods.actWorkInvestmentValuesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:=
    (FProductClass in [pcNormal, pcFinancial]);
end;

procedure TfmProductPeriods.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnDocs, dotProductPeriod, cdsGridData);
end;

class function TfmProductPeriods.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

class function TfmProductPeriods.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmProductPeriods.cdsCommonProductPeriodsHeaderBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;

  if cdsDataIS_CONCRETE_PRODUCT.AsBoolean then
    cdsCommonProductPeriodsHeader.Params.ParamByName('PRODUCT_CODE').AsInteger:= cdsDataCOMMON_PRODUCT_CODE.AsInteger
  else
    cdsCommonProductPeriodsHeader.Params.ParamByName('PRODUCT_CODE').Clear;
end;

procedure TfmProductPeriods.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not cdsDataCOMMON_PRODUCT_CODE.IsNull then
    cdsCommonProductPeriodsHeader.Open;
end;

procedure TfmProductPeriods.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= VarArrayOf([cdsData.Params.ParamByName('PRODUCT_CODE').AsInteger, DocsDelta]);
end;

procedure TfmProductPeriods.cdsDataBeforeClose(DataSet: TDataSet);
begin
  inherited;
  cdsCommonProductPeriodsHeader.Close;
end;

procedure TfmProductPeriods.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  with DataSet do
    if FieldByName('COMMON_PRODUCTS_LEVEL_NO').IsNull or
       (FieldByName('COMMON_STATUS_CODE').AsInteger = cscSingle) then
      FieldByName('_COMMON_PRODUCTS_LEVELS_SHOW').Clear
    else
      FieldByName('_COMMON_PRODUCTS_LEVELS_SHOW').AsString:=
        Format('%d;%d', [
          FieldByName('COMMON_PRODUCTS_LEVEL_NO').AsInteger,
          FieldByName('COMMON_PRODUCTS_SUB_LEVELS').AsInteger
        ]);
end;

procedure TfmProductPeriods.cdsGridDataAfterDelete(DataSet: TDataSet);
begin
  inherited;
  SetPrevPeriodInvestmentValues;
end;

procedure TfmProductPeriods.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  if not FIncdsGridDataNewRecord then
    SetPrevPeriodInvestmentValues;
end;

procedure TfmProductPeriods.cdsGridDataBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FBeforeEditBeginDate:= cdsGridDataBEGIN_DATE.AsDateTime;
end;

procedure TfmProductPeriods.cdsGridDataBeforeInsert(DataSet: TDataSet);
var
  SaveFiltered: Boolean;
begin
  inherited;
  cdsGridData.DisableControls;
  try
    SaveFiltered:= cdsGridData.Filtered;
    cdsGridData.Filtered:= False;
    try
      FMaxProductPeriodCode:= 0;
      cdsGridData.First;
      while not cdsGridData.Eof do
        begin
          FMaxProductPeriodCode:=
            Max(FMaxProductPeriodCode, cdsGridDataPRODUCT_PERIOD_CODE.AsInteger);
          cdsGridData.Next;
        end;
    finally
      cdsGridData.Filtered:= SaveFiltered;
    end;
  finally
    cdsGridData.EnableControls;
  end;
end;

procedure TfmProductPeriods.cdsGridDataBeforePost(DataSet: TDataSet);

  procedure CheckFieldGroup(AFields: array of TField);
  var
    AField: TField;
  begin
    for AField in AFields do
      if not AField.IsNull then
        begin
          CheckRequiredFields(AFields);
          Exit;
        end;
  end;

  procedure CheckPositiveQuantityField(AQuantityField: TField);
  begin
    if (not AQuantityField.IsNull) and (AQuantityField.AsFloat <= 0) then
      begin
        AQuantityField.FocusControl;
        raise Exception.CreateFmt(SNonPositiveQuantity, [AQuantityField.DisplayLabel]);
      end;
  end;

var
  NowDate: TDateTime;  { CheckFieldGroup }

begin
  inherited;

  if FIncdsGridDataNewRecord or FInsertRecordPreset then
    Exit;

  CheckRequiredFields([
    cdsGridDataBEGIN_DATE,
    cdsGridDataEND_DATE
  ]);

  if cdsGridDataOVERRIDE_PRECISION_LEVEL.AsBoolean then
    CheckRequiredField(cdsGridData_PRECISION_LEVEL_NO)
  else
    CheckRequiredField(cdsGridData_INHRT_PRECISION_LEVEL_NO);

  if cdsGridDataOVERRIDE_BALANCE_QUANTITY.AsBoolean then
    CheckRequiredField(cdsGridDataBALANCE_QUANTITY)
  else
    CheckRequiredField(cdsGridDataINHRT_BALANCE_QUANTITY);

  if ( (DataSet.State = dsInsert) or
       (cdsGridDataBEGIN_DATE.AsDateTime < FBeforeEditBeginDate) ) and
     (cdsGridDataBEGIN_DATE.AsDateTime <= ContextDate) and
     (not LoginContext.HasUserActivity(uaPastOrCurrentProductPeriodEdit)) then
    begin
      cdsGridDataBEGIN_DATE.FocusControl;
      raise Exception.CreateFmt(SNoUserActivityForPastOrCurrentProductPeriod, [uaPastOrCurrentProductPeriodEdit]);
    end;

  if cdsGridDataOVERRIDE_BALANCE_QUANTITY.AsBoolean then
    CheckPositiveQuantityField(cdsGridDataBALANCE_QUANTITY);

  if cdsGridDataOVERRIDE_MIN_ORDER_QUANTITY.AsBoolean then
    CheckPositiveQuantityField(cdsGridDataMIN_ORDER_QUANTITY);

  if cdsGridDataOVERRIDE_MAX_ORDER_QUANTITY.AsBoolean then
    CheckPositiveQuantityField(cdsGridDataMAX_ORDER_QUANTITY);

  if cdsGridDataOVERRIDE_ACQUIRE_BATCH_QTY.AsBoolean then
    CheckPositiveQuantityField(cdsGridDataACQUIRE_BATCH_QUANTITY);

  if (not cdsGridData_SHOW_MIN_ORDER_QUANTITY.IsNull) and
     (not cdsGridData_SHOW_MAX_ORDER_QUANTITY.IsNull) and
     (cdsGridData_SHOW_MIN_ORDER_QUANTITY.AsFloat > cdsGridData_SHOW_MAX_ORDER_QUANTITY.AsFloat) then
    raise Exception.Create(SInvalidOrderQuantityInterval);

  CheckFieldGroup([
    cdsGridDataSALE_ACQUIRE_SINGLE_PRICE,
    cdsGridData_SALE_ACQUIRE_CURRENCY_ABBREV
  ]);

  CheckFieldGroup([
    cdsGridDataSALE_LEASE_SINGLE_PRICE,
    cdsGridData_SALE_LEASE_CURRENCY_ABBREV,
    cdsGridData_SALE_LEASE_DATE_UNIT_NAME
  ]);

  CheckFieldGroup([
    cdsGridDataDELIVERY_ACQUIRE_SINGLE_PRICE,
    cdsGridData_DELIVERY_ACQUIRE_CURR_ABBREV
  ]);

  CheckFieldGroup([
    cdsGridDataDELIVERY_LEASE_SINGLE_PRICE,
    cdsGridData_DELIVERY_LEASE_CURRENCY_ABBREV,
    cdsGridData_DELIVERY_LEASE_DATE_UNIT_NAME
  ]);

  if cdsGridDataOVERRIDE_IS_PSD_PRICE_FROM_DLV.AsBoolean then
    CheckRequiredField(cdsGridDataIS_PSD_PRICE_FROM_DELIVERY)
  else
    CheckRequiredField(cdsGridDataINHRT_IS_PSD_PRICE_FROM_DLVRY);

  CheckDatePeriodYearParts(
    cdsGridDataBEGIN_DATE.AsDateTime,
    cdsGridDataEND_DATE.AsDateTime,
    LoginContext.DatePeriodsYearPartCode);

  // check date interval against common product's date interval
  if cdsCommonProductPeriods.Active then
    begin
      cdsCommonProductPeriods.First;
      while not cdsCommonProductPeriods.Eof do
        begin
          if (InRange(cdsGridDataBEGIN_DATE.AsDateTime, cdsCommonProductPeriodsBEGIN_DATE.AsDateTime, cdsCommonProductPeriodsEND_DATE.AsDateTime) <>
              InRange(cdsGridDataEND_DATE.AsDateTime, cdsCommonProductPeriodsBEGIN_DATE.AsDateTime, cdsCommonProductPeriodsEND_DATE.AsDateTime)) or
             ( (cdsGridDataBEGIN_DATE.AsDateTime < cdsCommonProductPeriodsBEGIN_DATE.AsDateTime) and
               (cdsCommonProductPeriodsEND_DATE.AsDateTime < cdsGridDataEND_DATE.AsDateTime) ) then
            raise Exception.Create(SIncorrectDateIntervalAgainstCommonProduct);

          cdsCommonProductPeriods.Next;
        end;  { while }
    end;  { if }

  NowDate:= ContextDate;

  cdsGridDataIS_PAST.AsBoolean:=
    (cdsGridDataEND_DATE.AsDateTime < NowDate);
  cdsGridDataIS_FUTURE.AsBoolean:=
    (cdsGridDataBEGIN_DATE.AsDateTime > NowDate);
  cdsGridDataIS_PRESENT.AsBoolean:=
    not cdsGridDataIS_PAST.AsBoolean and
    not cdsGridDataIS_FUTURE.AsBoolean;
end;

procedure TfmProductPeriods.cdsGridDataBEGIN_DATEChange(Sender: TField);
var
  InvestmentLevel: Integer;
  i: Integer;
  FldName: string;
  Fld: TField;
begin
  inherited;

  if cdsCommonProductPeriods.Active then
    begin
      cdsCommonProductPeriods.First;
      while not cdsCommonProductPeriods.Eof do
        begin
          if InRange(Sender.AsDateTime, cdsCommonProductPeriodsBEGIN_DATE.AsDateTime, cdsCommonProductPeriodsEND_DATE.AsDateTime) then
            begin
              for InvestmentLevel:= 1 to MaxInvestmentLevel do
                cdsGridData.FieldByName(Format('CMMN_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel])).AsVariant:=
                  cdsCommonProductPeriods.FieldByName(Format('INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel])).AsVariant;

              for i:= 0 to cdsGridData.FieldCount - 1 do
                if StartsStr('INHRT_', cdsGridData.Fields[i].FieldName) then
                  begin
                    FldName:= cdsGridData.Fields[i].FieldName;
                    FldName:= StringReplace(FldName, '_S_', '_SALE_', []);
                    FldName:= StringReplace(FldName, '_D_', '_DELIVERY_', []);
                    FldName:= StringReplace(FldName, '_ACQ_', '_ACQUIRE_', []);
                    FldName:= StringReplace(FldName, 'INHRT_', '', []);

                    Fld:= cdsCommonProductPeriods.FindField(FldName);

                    if not Assigned(Fld) then
                      begin
                        FldName:= StringReplace(FldName, 'DLVRY', 'DELIVERY', []);
                        Fld:= cdsCommonProductPeriods.FindField(FldName);
                      end;

                    Assert(Assigned(Fld));

                    cdsGridData.Fields[i].AsVariant:= Fld.AsVariant;
                  end;

              Exit;
            end;

          cdsCommonProductPeriods.Next;
        end;  { while }
    end;

  for InvestmentLevel:= 1 to MaxInvestmentLevel do
    cdsGridData.FieldByName(Format('CMMN_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel])).Clear;

  for i:= 0 to cdsGridData.FieldCount - 1 do
    if StartsStr('INHRT_', cdsGridData.Fields[i].FieldName) then
      cdsGridData.Fields[i].Clear;
end;

procedure TfmProductPeriods.cdsGridDataBEGIN_DATEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= dmMain.GetDateIntervalAsShortString(
    cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime);
end;

procedure TfmProductPeriods.cdsGridDataCalcFields(DataSet: TDataSet);

  function InvestmentValueDiff(InvestmentValue,
    OtherInvestmentValue: Variant): Variant;
  begin
    if VarIsNull(InvestmentValue) or
       VarIsNull(OtherInvestmentValue) or
       ( (InvestmentValue = 0) and (OtherInvestmentValue = 0) ) then
      Result:= Null
    else
      begin
        if (OtherInvestmentValue = 0) then
          Result:= 1
        else
          Result:= InvestmentValue/OtherInvestmentValue - 1
      end;
  end;  { InvestmentValueDiff }

  function InvestmentValuePart(InvestmentValue, PartOfValue: Variant): Variant;
  begin
    if VarIsNull(InvestmentValue) or VarIsNull(PartOfValue) then
      Result:= Null
    else
      begin
        if (PartOfValue = 0) then
          Result:= 0
        else
          Result:= InvestmentValue/PartOfValue;
      end;
  end;  { InvestmentValuePart }

  procedure SetQuantityCalcFields(const AFieldName: string);

    function FieldByNameFmt(const AFieldNameFormat: string): TField;
    var
      fn: string;
    begin
      fn:= Format(AFieldNameFormat, [AFieldName]);

      Result:= cdsGridData.FindField(fn);

      if (Result = nil) then
        begin
          if fn.Contains('_QUANTITY') then
            fn:= StringReplace(fn, '_QUANTITY', '_QTY', []);

          Result:= cdsGridData.FieldByName(fn);
        end;
    end;

  begin
    if FieldByNameFmt('OVERRIDE_%s').AsBoolean then
      begin
        FieldByNameFmt('_SHOW_%s').Assign(FieldByNameFmt('%s'));
        FieldByNameFmt('_ACC_SHOW_%s').Assign(FieldByNameFmt('ACC_%s'))
      end
    else
      begin
        FieldByNameFmt('_SHOW_%s').Assign(FieldByNameFmt('INHRT_%s'));
        FieldByNameFmt('_ACC_SHOW_%s').Assign(FieldByNameFmt('ACC_INHRT_%s'));
      end;
  end;

var
  FullInvestmentValue: Variant;
  InvestmentLevel: Integer;
  InvestmentValueField: TField;
  FullInvestmentValueField: TField;
  PrevInvestmentValueField: TField;
  PrevFullInvestmentValue: Variant;
  InvestmentValueDffField: TField;
  FullInvestmentValueDffField: TField;
  SaleInvestmentValuePartField: TField;
  DeliveryInvestmentValuePartField: TField;
  CommonInvestmentValueDffField: TField;
  CommonInvestmentValueField: TField;
  AggrInvestmentValueField: TField;
  AggrInvestmentValue: Variant;
  AccFullInvestmentValueField: TField;
  AccAggrInvestmentValueField: TField;
  SaleAcquireSinglePriceInFixing: Variant;
  DeliveryAcquireSinglePriceInFixing: Variant;
  CommonAggrInvestmentValue6: Variant;
  CommonFullInvestmentValue6: Variant;
  OverrideInvestmentValueField: TField;
  AccInvestmentValueField: TField;
  ShowInvestmentValueField: TField;
  AccShowInvestmentValueField: TField;
begin
  inherited;

  SaleAcquireSinglePriceInFixing:=
    VarMult(cdsGridDataSALE_ACQUIRE_SINGLE_PRICE.AsVariant, cdsGridDataSALE_ACQUIRE_CURRENCY_FIXING.AsVariant);
  DeliveryAcquireSinglePriceInFixing:=
    VarMult(cdsGridDataDELIVERY_ACQUIRE_SINGLE_PRICE.AsVariant, cdsGridDataDELIVERY_ACQUIRE_CURR_FIXING.AsVariant);

  FullInvestmentValue:= Null;
  AggrInvestmentValue:= Null;
  PrevFullInvestmentValue:= Null;
  CommonFullInvestmentValue6:= Null;
  CommonAggrInvestmentValue6:= Null;
  for InvestmentLevel:= 1 to MaxInvestmentLevel do
    begin
      OverrideInvestmentValueField:= DataSet.FieldByName(Format('OVERRIDE_INV_LEVEL_%d_VALUE', [InvestmentLevel]));

      if OverrideInvestmentValueField.AsBoolean then
        InvestmentValueField:= DataSet.FieldByName(Format('INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]))
      else
        InvestmentValueField:= DataSet.FieldByName(Format('INHRT_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));

      if OverrideInvestmentValueField.AsBoolean then
        AccInvestmentValueField:= DataSet.FieldByName(Format('INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]))
      else
        AccInvestmentValueField:= DataSet.FieldByName(Format('INHRT_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));

      FullInvestmentValueField:= DataSet.FieldByName(Format('_FULL_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));
      PrevInvestmentValueField:= DataSet.FieldByName(Format('PREV_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));
      CommonInvestmentValueField:= DataSet.FieldByName(Format('CMMN_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));
      InvestmentValueDffField:= DataSet.FieldByName(Format('_INVESTMENT_LEVEL_%d_DIFF', [InvestmentLevel]));
      FullInvestmentValueDffField:= DataSet.FieldByName(Format('_FULL_INVESTMENT_LEVEL_%d_DIFF', [InvestmentLevel]));
      CommonInvestmentValueDffField:= DataSet.FieldByName(Format('_CMMN_INVESTMENT_LEVEL_%d_DIFF', [InvestmentLevel]));
      SaleInvestmentValuePartField:= DataSet.FieldByName(Format('_SALE_INVESTMENT_LEVEL_%d_PART', [InvestmentLevel]));
      DeliveryInvestmentValuePartField:= DataSet.FieldByName(Format('_DLVR_INVESTMENT_LEVEL_%d_PART', [InvestmentLevel]));
      AccFullInvestmentValueField:= DataSet.FieldByName(Format('_ACC_FULL_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));
      ShowInvestmentValueField:= DataSet.FieldByName(Format('_SHOW_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));
      AccShowInvestmentValueField:= DataSet.FieldByName(Format('_ACC_SHOW_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));

      if not InvestmentValueField.IsNull then
        FullInvestmentValue:= VarToFloat(FullInvestmentValue) + InvestmentValueField.AsFloat;

      FullInvestmentValueField.AsVariant:= FullInvestmentValue;

      if not PrevInvestmentValueField.IsNull then
        PrevFullInvestmentValue:= VarToFloat(PrevFullInvestmentValue) + PrevInvestmentValueField.AsFloat;

      InvestmentValueDffField.AsVariant:=
        InvestmentValueDiff(InvestmentValueField.AsVariant, PrevInvestmentValueField.AsVariant);
      FullInvestmentValueDffField.AsVariant:=
        InvestmentValueDiff(FullInvestmentValue, PrevFullInvestmentValue);
      CommonInvestmentValueDffField.AsVariant:=
        InvestmentValueDiff(InvestmentValueField.AsVariant, CommonInvestmentValueField.AsVariant);
      SaleInvestmentValuePartField.AsVariant:=
        InvestmentValuePart(InvestmentValueField.AsVariant, SaleAcquireSinglePriceInFixing);
      DeliveryInvestmentValuePartField.AsVariant:=
        InvestmentValuePart(InvestmentValueField.AsVariant, DeliveryAcquireSinglePriceInFixing);

      AccFullInvestmentValueField.AsVariant:=
        VarDivide(FullInvestmentValueField.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant);

      if not CommonInvestmentValueField.IsNull then
        CommonFullInvestmentValue6:= VarToFloat(CommonFullInvestmentValue6) + CommonInvestmentValueField.AsFloat;

      if (InvestmentLevel > 1) then
        begin
          AggrInvestmentValueField:= DataSet.FieldByName(Format('_AGGR_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));
          AccAggrInvestmentValueField:= DataSet.FieldByName(Format('_ACC_AGGR_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));

          if not InvestmentValueField.IsNull then
            AggrInvestmentValue:= VarToFloat(AggrInvestmentValue) + InvestmentValueField.AsFloat;

          AggrInvestmentValueField.AsVariant:= AggrInvestmentValue;

          AccAggrInvestmentValueField.AsVariant:=
            VarDivide(AggrInvestmentValueField.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant);

          if not CommonInvestmentValueField.IsNull then
            CommonAggrInvestmentValue6:= VarToFloat(CommonAggrInvestmentValue6) + CommonInvestmentValueField.AsFloat;
        end;

      ShowInvestmentValueField.Assign(InvestmentValueField);
      AccShowInvestmentValueField.Assign(AccInvestmentValueField);
    end;

  cdsGridData_CMMN_AGGR_INVESTMENT_LEVEL_6_DIFF.AsVariant:=
    InvestmentValueDiff(cdsGridData_AGGR_INVESTMENT_LEVEL_6_VALUE.AsVariant, CommonAggrInvestmentValue6);
  cdsGridData_SALE_AGGR_INVESTMENT_LEVEL_6_PART.AsVariant:=
    InvestmentValuePart(cdsGridData_AGGR_INVESTMENT_LEVEL_6_VALUE.AsVariant, SaleAcquireSinglePriceInFixing);
  cdsGridData_DLVR_AGGR_INVESTMENT_LEVEL_6_PART.AsVariant:=
    InvestmentValuePart(cdsGridData_AGGR_INVESTMENT_LEVEL_6_VALUE.AsVariant, DeliveryAcquireSinglePriceInFixing);

  cdsGridData_CMMN_FULL_INVESTMENT_LEVEL_6_DIFF.AsVariant:=
    InvestmentValueDiff(cdsGridData_FULL_INVESTMENT_LEVEL_6_VALUE.AsVariant, CommonFullInvestmentValue6);
  cdsGridData_SALE_FULL_INVESTMENT_LEVEL_6_PART.AsVariant:=
    InvestmentValuePart(cdsGridData_FULL_INVESTMENT_LEVEL_6_VALUE.AsVariant, SaleAcquireSinglePriceInFixing);
  cdsGridData_DLVR_FULL_INVESTMENT_LEVEL_6_PART.AsVariant:=
    InvestmentValuePart(cdsGridData_FULL_INVESTMENT_LEVEL_6_VALUE.AsVariant, DeliveryAcquireSinglePriceInFixing);

  if cdsGridDataOVERRIDE_PRECISION_LEVEL.AsBoolean then
    cdsGridData_SHOW_PRECISION_LEVEL_NO.Assign(cdsGridData_PRECISION_LEVEL_NO)
  else
    cdsGridData_SHOW_PRECISION_LEVEL_NO.Assign(cdsGridData_INHRT_PRECISION_LEVEL_NO);

  SetQuantityCalcFields(cdsGridDataBALANCE_QUANTITY.FieldName);
  SetQuantityCalcFields(cdsGridDataMIN_ORDER_QUANTITY.FieldName);
  SetQuantityCalcFields(cdsGridDataMAX_ORDER_QUANTITY.FieldName);
  SetQuantityCalcFields(cdsGridDataACQUIRE_BATCH_QUANTITY.FieldName);

  if cdsGridDataOVERRIDE_S_ACQUIRE_PRICE.AsBoolean then
    begin
      cdsGridData_SHOW_SALE_ACQUIRE_SINGLE_PRICE.Assign(cdsGridDataSALE_ACQUIRE_SINGLE_PRICE);
      cdsGridData_ACC_SHOW_SALE_ACQUIRE_SINGLE_PRICE.Assign(cdsGridDataACC_SALE_ACQUIRE_SINGLE_PRICE);
      cdsGridData_SHOW_SALE_ACQUIRE_CURRENCY_ABBREV.Assign(cdsGridData_SALE_ACQUIRE_CURRENCY_ABBREV);
    end
  else
    begin
      cdsGridData_SHOW_SALE_ACQUIRE_SINGLE_PRICE.Assign(cdsGridDataINHRT_S_ACQUIRE_SINGLE_PRICE);
      cdsGridData_ACC_SHOW_SALE_ACQUIRE_SINGLE_PRICE.Assign(cdsGridDataACC_INHRT_S_ACQ_SINGLE_PRICE);
      cdsGridData_SHOW_SALE_ACQUIRE_CURRENCY_ABBREV.Assign(cdsGridData_INHRT_S_ACQUIRE_CURRENCY_ABBREV);
    end;

  if cdsGridDataOVERRIDE_S_LEASE_PRICE.AsBoolean then
    begin
      cdsGridData_SHOW_SALE_LEASE_SINGLE_PRICE.Assign(cdsGridDataSALE_LEASE_SINGLE_PRICE);
      cdsGridData_ACC_SHOW_SALE_LEASE_SINGLE_PRICE.Assign(cdsGridDataACC_SALE_LEASE_SINGLE_PRICE);
      cdsGridData_SHOW_SALE_LEASE_CURRENCY_ABBREV.Assign(cdsGridData_SALE_LEASE_CURRENCY_ABBREV);
      cdsGridData_SHOW_SALE_LEASE_DATE_UNIT_NAME.Assign(cdsGridData_SALE_LEASE_DATE_UNIT_NAME);
    end
  else
    begin
      cdsGridData_SHOW_SALE_LEASE_SINGLE_PRICE.Assign(cdsGridDataINHRT_S_LEASE_SINGLE_PRICE);
      cdsGridData_ACC_SHOW_SALE_LEASE_SINGLE_PRICE.Assign(cdsGridDataACC_INHRT_S_LEASE_SINGLE_PRICE);
      cdsGridData_SHOW_SALE_LEASE_CURRENCY_ABBREV.Assign(cdsGridData_INHRT_S_LEASE_CURRENCY_ABBREV);
      cdsGridData_SHOW_SALE_LEASE_DATE_UNIT_NAME.Assign(cdsGridData_INHRT_S_LEASE_DATE_UNIT_NAME);
    end;

  if cdsGridDataOVERRIDE_S_STORE.AsBoolean then
    cdsGridData_SHOW_SALE_STORE_IDENTIFIER.Assign(cdsGridDataSALE_STORE_IDENTIFIER)
  else
    cdsGridData_SHOW_SALE_STORE_IDENTIFIER.Assign(cdsGridDataINHRT_S_STORE_IDENTIFIER);

  if cdsGridDataOVERRIDE_S_RESOLVE_DUR_DAYS.AsBoolean then
    cdsGridData_SHOW_SALE_RESOLVE_DURATION_DAYS.Assign(cdsGridDataSALE_RESOLVE_DURATION_DAYS)
  else
    cdsGridData_SHOW_SALE_RESOLVE_DURATION_DAYS.Assign(cdsGridDataINHRT_S_RESOLVE_DURATION_DAYS);

  if cdsGridDataOVERRIDE_D_ACQUIRE_PRICE.AsBoolean then
    begin
      cdsGridData_SHOW_DELIVERY_ACQUIRE_SINGLE_PRICE.Assign(cdsGridDataDELIVERY_ACQUIRE_SINGLE_PRICE);
      cdsGridData_ACC_SHOW_DLVRY_ACQUIRE_SINGLE_PRICE.Assign(cdsGridDataACC_DLVRY_ACQUIRE_SINGLE_PRICE);
      cdsGridData_SHOW_DELIVERY_ACQUIRE_CURRENCY_ABBREV.Assign(cdsGridData_DELIVERY_ACQUIRE_CURR_ABBREV);
    end
  else
    begin
      cdsGridData_SHOW_DELIVERY_ACQUIRE_SINGLE_PRICE.Assign(cdsGridDataINHRT_D_ACQUIRE_SINGLE_PRICE);
      cdsGridData_ACC_SHOW_DLVRY_ACQUIRE_SINGLE_PRICE.Assign(cdsGridDataACC_INHRT_D_ACQ_SINGLE_PRICE);
      cdsGridData_SHOW_DELIVERY_ACQUIRE_CURRENCY_ABBREV.Assign(cdsGridData_INHRT_D_ACQUIRE_CURRENCY_ABBREV);
    end;

  if cdsGridDataOVERRIDE_D_LEASE_PRICE.AsBoolean then
    begin
      cdsGridData_SHOW_DELIVERY_LEASE_SINGLE_PRICE.Assign(cdsGridDataDELIVERY_LEASE_SINGLE_PRICE);
      cdsGridData_ACC_SHOW_DLVRY_LEASE_SINGLE_PRICE.Assign(cdsGridDataACC_DLVRY_LEASE_SINGLE_PRICE);
      cdsGridData_SHOW_DELIVERY_LEASE_CURRENCY_ABBREV.Assign(cdsGridData_DELIVERY_LEASE_CURRENCY_ABBREV);
      cdsGridData_SHOW_DELIVERY_LEASE_DATE_UNIT_NAME.Assign(cdsGridData_DELIVERY_LEASE_DATE_UNIT_NAME);
    end
  else
    begin
      cdsGridData_SHOW_DELIVERY_LEASE_SINGLE_PRICE.Assign(cdsGridDataINHRT_D_LEASE_SINGLE_PRICE);
      cdsGridData_ACC_SHOW_DLVRY_LEASE_SINGLE_PRICE.Assign(cdsGridDataACC_INHRT_D_LEASE_SINGLE_PRICE);
      cdsGridData_SHOW_DELIVERY_LEASE_CURRENCY_ABBREV.Assign(cdsGridData_INHRT_D_LEASE_CURRENCY_ABBREV);
      cdsGridData_SHOW_DELIVERY_LEASE_DATE_UNIT_NAME.Assign(cdsGridData_INHRT_D_LEASE_DATE_UNIT_NAME);
    end;

  if cdsGridDataOVERRIDE_D_STORE.AsBoolean then
    cdsGridData_SHOW_DELIVERY_STORE_IDENTIFIER.Assign(cdsGridDataDELIVERY_STORE_IDENTIFIER)
  else
    cdsGridData_SHOW_DELIVERY_STORE_IDENTIFIER.Assign(cdsGridDataINHRT_D_STORE_IDENTIFIER);

  if cdsGridDataOVERRIDE_D_RESOLVE_DUR_DAYS.AsBoolean then
    cdsGridData_SHOW_DELIVERY_RESOLVE_DURATION_DAYS.Assign(cdsGridDataDELIVERY_RESOLVE_DURATION_DAYS)
  else
    cdsGridData_SHOW_DELIVERY_RESOLVE_DURATION_DAYS.Assign(cdsGridDataINHRT_D_RESOLVE_DURATION_DAYS);
end;

procedure TfmProductPeriods.cdsGridDataDELIVERY_ACQUIRE_CURRENCY_CODEChange(
  Sender: TField);
begin
  inherited;
  UpdateCurrencyFixing(cdsGridDataDELIVERY_ACQUIRE_CURRENCY_CODE,
    cdsGridDataDELIVERY_ACQUIRE_CURR_FIXING);
end;

procedure TfmProductPeriods.cdsGridDataDELIVERY_STORE_CODEChange(
  Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(Sender, nil, cdsGridDataDELIVERY_STORE_IDENTIFIER);
end;

procedure TfmProductPeriods.cdsGridDataEND_DATEChange(Sender: TField);
begin
  inherited;

  UpdateCurrencyFixing(cdsGridDataSALE_ACQUIRE_CURRENCY_CODE,
    cdsGridDataSALE_ACQUIRE_CURRENCY_FIXING);
  UpdateCurrencyFixing(cdsGridDataDELIVERY_ACQUIRE_CURRENCY_CODE,
    cdsGridDataDELIVERY_ACQUIRE_CURR_FIXING);
end;

procedure TfmProductPeriods.cdsGridDataFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    (cdsGridDataIS_PAST.AsBoolean and actPastPeriods.Checked) or
    (cdsGridDataIS_PRESENT.AsBoolean and actPresentPeriods.Checked) or
    (cdsGridDataIS_FUTURE.AsBoolean and actFuturePeriods.Checked) or
    ( FIncdsGridDataNewRecord and
      (cdsGridDataPRODUCT_PERIOD_CODE.AsInteger = FMaxProductPeriodCode + 1)
    );
end;

procedure TfmProductPeriods.cdsGridDataNewRecord(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;

  FIncdsGridDataNewRecord:= True;
  try
    cdsGridDataPRODUCT_CODE.AsInteger:= cdsDataPRODUCT_CODE.AsInteger;
    cdsGridDataPRODUCT_PERIOD_CODE.AsInteger:= FMaxProductPeriodCode + 1;

    if not VarIsEmpty(FCreateLikeFieldValues) then
      begin
        SetRecordData(cdsGridData, FCreateLikeFieldValues, False);

        dmDocClient.CreateDocLike(
          cdsGridDataDOC_BRANCH_CODE.AsInteger, cdsGridDataDOC_CODE.AsInteger, True,
          cdsGridDataDOC_BRANCH_CODE, cdsGridDataDOC_CODE);
      end
    else
      begin
        for i:= 0 to cdsGridData.FieldCount - 1 do
          if StartsStr('OVERRIDE_', cdsGridData.Fields[i].FieldName) then
            cdsGridData.Fields[i].AsBoolean:= False;

        cdsSpecModelVariants.First;
        while not cdsSpecModelVariants.Eof do
          begin
            cdsNotProdPerSpecModelVariants.Append;
            try
              cdsNotProdPerSpecModelVariantsSPEC_MODEL_VARIANT_NO.Assign(cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO);
              cdsNotProdPerSpecModelVariantsSMV_NO.Assign(cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO);
              cdsNotProdPerSpecModelVariantsSPEC_MODEL_VARIANT_IDENTIFIER.Assign(cdsSpecModelVariantsSPEC_MODEL_VARIANT_IDENTIFIER);
              cdsNotProdPerSpecModelVariantsMAIN_DEPT_CODE.Assign(cdsSpecModelVariantsMAIN_DEPT_CODE);
              cdsNotProdPerSpecModelVariantsMIN_TECH_QUANTITY.Assign(cdsSpecModelVariantsMIN_TECH_QUANTITY);
              cdsNotProdPerSpecModelVariantsMAX_TECH_QUANTITY.Assign(cdsSpecModelVariantsMAX_TECH_QUANTITY);

              cdsNotProdPerSpecModelVariants.Post;
            except
              cdsNotProdPerSpecModelVariants.Cancel;
            end;
            cdsSpecModelVariants.Next;
          end;
      end;

    if (FProductClass = pcBudget) then
      cdsGridDataIS_PSD_PRICE_FROM_DELIVERY.AsBoolean:= True;
  finally
    FIncdsGridDataNewRecord:= False;
  end;

  cdsProdPerSpecModelVariants.First;
  cdsNotProdPerSpecModelVariants.First;
end;

procedure TfmProductPeriods.cdsGridDataSALE_ACQUIRE_CURRENCY_CODEChange(
  Sender: TField);
begin
  inherited;
  UpdateCurrencyFixing(cdsGridDataSALE_ACQUIRE_CURRENCY_CODE,
    cdsGridDataSALE_ACQUIRE_CURRENCY_FIXING);
end;

procedure TfmProductPeriods.cdsGridDataSALE_STORE_CODEChange(
  Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(Sender, nil, cdsGridDataSALE_STORE_IDENTIFIER);
end;

procedure TfmProductPeriods.cdsNotProdPerSpecModelVariantsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  cdsNotProdPerSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger:= cdsNotProdPerSpecModelVariantsSMV_NO.AsInteger;
end;

procedure TfmProductPeriods.cdsNotProdPerSpecModelVariantsNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsNotProdPerSpecModelVariantsPRODUCT_CODE.AsInteger:= cdsGridDataPRODUCT_CODE.AsInteger;
  cdsNotProdPerSpecModelVariantsPRODUCT_PERIOD_CODE.AsInteger:= cdsGridDataPRODUCT_PERIOD_CODE.AsInteger;
end;

procedure TfmProductPeriods.cdsProdPerSpecModelVariantsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  cdsProdPerSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger:= cdsProdPerSpecModelVariantsSMV_NO.AsInteger;
end;

procedure TfmProductPeriods.cdsProdPerSpecModelVariantsNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsProdPerSpecModelVariantsPRODUCT_CODE.AsInteger:= cdsGridDataPRODUCT_CODE.AsInteger;
  cdsProdPerSpecModelVariantsPRODUCT_PERIOD_CODE.AsInteger:= cdsGridDataPRODUCT_PERIOD_CODE.AsInteger;
  cdsProdPerSpecModelVariantsIS_EST_VARIANT.AsBoolean:= False;
end;

procedure TfmProductPeriods.cdsSpecModelVariantsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsSpecModelVariants.Params.ParamByName('PRODUCT_CODE').AsInteger:=
    cdsDataPRODUCT_CODE.AsInteger;
end;

procedure TfmProductPeriods.OpenDataSets;
begin
  cdsPrecisionLevels.Open;
  cdsCurrencies.Open;
  cdsDateUnits.Open;
  inherited;
  cdsSpecModelVariants.Open;
end;

procedure TfmProductPeriods.PercentFieldsGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmProductPeriods.PercentFieldsZeroGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    PercentFieldGetText(Sender, Text, DisplayText, False);
end;

procedure TfmProductPeriods.RefilterPeriods;
var
  ProductPeriodCode: Integer;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        ProductPeriodCode:= cdsGridDataPRODUCT_PERIOD_CODE.AsInteger;

        Filtered:= False;
        Filtered:= True;

        Locate('PRODUCT_PERIOD_CODE', ProductPeriodCode, []);
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmProductPeriods.ChangeEditMode(var AEditMode: TEditMode);
begin
  inherited;

  if not LoginContext.HasUserActivity(uaProductPeriodsEdit) then
    AEditMode:= emReadOnly;
end;

procedure TfmProductPeriods.CloseDataSets;
begin
  cdsSpecModelVariants.Close;
  inherited;
  cdsDateUnits.Close;
  cdsCurrencies.Close;
  cdsPrecisionLevels.Close;
end;

procedure TfmProductPeriods.FormCreate(Sender: TObject);
var
  f: TField;
  i: Integer;
begin
  inherited;

  EditFormClass:= TfmProductPeriod;

  RegisterDateFields(cdsGridData);

  for f in cdsGridData.Fields do
    begin
      if (Pos('_LEVEL_1_', f.FieldName) > 0) then
        RegisterFieldTextVisibility(IsLevelOneInvestedValueVisible, f)
      else
        for i:= 2 to 6 do
          if (Pos(Format('_LEVEL_%d_', [i]), f.FieldName) > 0) then
            if (Pos('_FULL_', f.FieldName) > 0) then
              RegisterFieldTextVisibility(IsFullInvestedValueVisible, f)
            else
              RegisterFieldTextVisibility(IsHighLevelInvestedValueVisible, f);
    end;  { for }

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridData_SHOW_DELIVERY_ACQUIRE_SINGLE_PRICE,
      cdsGridData_SHOW_DELIVERY_ACQUIRE_CURRENCY_ABBREV,
      cdsGridData_SHOW_DELIVERY_LEASE_SINGLE_PRICE,
      cdsGridData_SHOW_DELIVERY_LEASE_CURRENCY_ABBREV,
      cdsGridData_SHOW_DELIVERY_LEASE_DATE_UNIT_NAME,
      cdsGridData_ACC_SHOW_DLVRY_ACQUIRE_SINGLE_PRICE,
      cdsGridData_ACC_SHOW_DLVRY_LEASE_SINGLE_PRICE,
      cdsGridDataDELIVERY_ACQUIRE_SINGLE_PRICE,
      cdsGridData_DELIVERY_ACQUIRE_CURR_ABBREV,
      cdsGridDataDELIVERY_LEASE_SINGLE_PRICE,
      cdsGridData_DELIVERY_LEASE_CURRENCY_ABBREV,
      cdsGridData_DELIVERY_LEASE_DATE_UNIT_NAME]);

  RegisterFieldsTextVisibility(
    IsSalePriceVisible,
    [ cdsGridData_SHOW_SALE_ACQUIRE_SINGLE_PRICE,
      cdsGridData_SHOW_SALE_ACQUIRE_CURRENCY_ABBREV,
      cdsGridData_SHOW_SALE_LEASE_SINGLE_PRICE,
      cdsGridData_SHOW_SALE_LEASE_CURRENCY_ABBREV,
      cdsGridData_SHOW_SALE_LEASE_DATE_UNIT_NAME,
      cdsGridData_ACC_SHOW_SALE_ACQUIRE_SINGLE_PRICE,
      cdsGridData_ACC_SHOW_SALE_LEASE_SINGLE_PRICE,
      cdsGridDataSALE_ACQUIRE_SINGLE_PRICE,
      cdsGridData_SALE_ACQUIRE_CURRENCY_ABBREV,
      cdsGridDataSALE_LEASE_SINGLE_PRICE,
      cdsGridData_SALE_LEASE_CURRENCY_ABBREV,
      cdsGridData_SALE_LEASE_DATE_UNIT_NAME]);
end;

function TfmProductPeriods.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

function TfmProductPeriods.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    inherited GetGridRecordReadOnly or
    ( (cdsGridDataBEGIN_DATE.AsDateTime <= ContextDate) and
      (not LoginContext.HasUserActivity(uaPastOrCurrentProductPeriodEdit)) );
end;

procedure TfmProductPeriods.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.FieldName = '_PRECISION_LEVEL_NO') then
    begin
      if not cdsGridData_PRECISION_LEVEL_COLOR.IsNull then
        AFont.Color:= cdsGridData_PRECISION_LEVEL_COLOR.AsInteger;

      if not cdsGridData_PRECISION_LEVEL_BACKGR_COLOR.IsNull then
        Background:= cdsGridData_PRECISION_LEVEL_BACKGR_COLOR.AsInteger;
    end;

  if EndsText('_DIFF', Column.FieldName) then
    case Sign(Column.Field.AsFloat) of
      -1: AFont.Color:= clWebDarkgreen;
       0: AFont.Color:= clWindowText;
       1: AFont.Color:= clRed;
    end;
end;

procedure TfmProductPeriods.Initialize;
var
  i: Integer;
  b: TBookmark;
  f: TField;
begin
  inherited;

  if (cdsDataPROV_BY_DELIVERIES_PR_NO.AsInteger > cdsDataUSED_BY_SALES_PR_NO.AsInteger) then
    actToggleSaleAndDelivery.Execute;

  SetWorkOrAccountInvestmentValues;

  // recalc fields depending on cdsDataACCOUNT_MEASURE_COEF
  cdsGridData.Last;
  cdsGridData.First;

  LocateDateInterval(ContextDate, cdsGridData);

  FProductClass:= IntToProductClass(cdsDataPRODUCT_CLASS_CODE.AsInteger);

  frProduct.ProductClass:= FProductClass;
  frProduct.DocButtonVisible:= True;
  frProduct.PartnerProductNamesVisible:= False;
  frProduct.ProductPeriodsButtonVisible:= False;
  frProduct.PriorityVisible:= (FProductClass in [pcNormal, pcFinancial]);
  frProduct.CommonStatusVisible:= (FProductClass in [pcNormal, pcFinancial]);
  frProduct.ProductOriginVisible:= (FProductClass in [pcNormal, pcFinancial]);
  frProduct.SpecStateVisible:= (FProductClass = pcNormal);
  frProduct.SpecificationButtonVisible:= (FProductClass = pcNormal);
  frProduct.SpecDocStatusButtonVisible:= (FProductClass = pcNormal);
  frProduct.CommonGroupsButtonVisible:= (FProductClass in [pcNormal, pcFinancial]);

  MsgParams:=
    CreateCommonMsgParams(
      LoginContext,
      FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;

  for i:= 7 to 18 do
    SetBaseCurrencyAbbrevColumnCaption(grdData.Columns[i]);

  SetVisibleInvestmentValues;

  if (FProductClass = pcBudget) then
    Width:= Width - 324;

  if (FFocusDate > 0) then
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

  if Assigned(OuterDataSet) then
    begin
      f:= OuterDataSet.FindField('BORDER_REL_TYPE_CODE');
      if Assigned(f) and
         (IntToBorderRelType(f.AsInteger) = brtVendor) then
        actToggleSaleAndDelivery.Execute;
    end;
end;

function TfmProductPeriods.IsQuantityField(
  const AField: TAbmesFloatField): Boolean;
begin
  Result:= False;
end;

procedure TfmProductPeriods.navDataBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;

  if (Button = nbDelete) and cdsGridData.Active and (cdsGridData.RecordCount > 0) then
    begin
      if (cdsGridDataBEGIN_DATE.AsDateTime <= ContextDate) and
         (not LoginContext.HasUserActivity(uaPastOrCurrentProductPeriodEdit)) then
        raise Exception.CreateFmt(SNoUserActivityForPastOrCurrentProductPeriod, [uaPastOrCurrentProductPeriodEdit]);
    end;
end;

procedure TfmProductPeriods.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AFocusDate: TDateTime);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FFocusDate:= AFocusDate;
end;

procedure TfmProductPeriods.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= True;
end;

procedure TfmProductPeriods.SetPrevPeriodInvestmentValues;
var
  PrevInvestmentValues: array[1..MaxInvestmentLevel] of Variant;
  InvestmentValueFields: array[1..MaxInvestmentLevel] of TField;
  PrevInvestmentValueFields: array[1..MaxInvestmentLevel] of TField;
  InvestmentLevel: Integer;
  SaveRecNo: Integer;
  Different: Boolean;
begin
  for InvestmentLevel:= 1 to MaxInvestmentLevel do
    PrevInvestmentValues[InvestmentLevel]:= Null;

  for InvestmentLevel:= 1 to MaxInvestmentLevel do
    InvestmentValueFields[InvestmentLevel]:=
      cdsGridData.FieldByName(Format('INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));

  for InvestmentLevel:= 1 to MaxInvestmentLevel do
    PrevInvestmentValueFields[InvestmentLevel]:=
      cdsGridData.FieldByName(Format('PREV_INVESTMENT_LEVEL_%d_VALUE', [InvestmentLevel]));

  with cdsGridData do
    begin
      DisableControls;
      try
        SaveRecNo:= RecNo;
        try
          First;
          while not Eof do
            begin
              Different:= False;
              for InvestmentLevel:= 1 to MaxInvestmentLevel do
                Different:= Different or
                  (PrevInvestmentValues[InvestmentLevel] <> PrevInvestmentValueFields[InvestmentLevel].AsVariant);

              if Different then
                begin
                  Edit;
                  try
                    for InvestmentLevel:= 1 to MaxInvestmentLevel do
                      PrevInvestmentValueFields[InvestmentLevel].AsVariant:= PrevInvestmentValues[InvestmentLevel];
                    Post;
                  except
                    Cancel;
                    raise;
                  end;
                end;  { if }

              for InvestmentLevel:= 1 to MaxInvestmentLevel do
                PrevInvestmentValues[InvestmentLevel]:= InvestmentValueFields[InvestmentLevel].AsVariant;

              Next;
            end;  { while }
        finally
          RecNo:= SaveRecNo;
        end;
      finally
        EnableControls;
      end;
    end;  { with }
end;

procedure TfmProductPeriods.SetVisibleInvestmentValues;
var
  i: Integer;
  VisibleInvestmentValues: Boolean;
begin
  VisibleInvestmentValues:=
    (FProductClass in [pcNormal, pcFinancial]);

  for i:= 7 to 12 do
    grdData.Columns[i].Visible:=
      VisibleInvestmentValues and
      (not actToggleFullInvestmentValue.Checked) and
      (not actToggleInvestmentValuesDiff.Checked);
  for i:= 13 to 18 do
    grdData.Columns[i].Visible:=
      VisibleInvestmentValues and
      actToggleFullInvestmentValue.Checked and
      (not actToggleInvestmentValuesDiff.Checked);
  for i:= 19 to 24 do
    grdData.Columns[i].Visible:=
      VisibleInvestmentValues and
      (not actToggleFullInvestmentValue.Checked) and
      actToggleInvestmentValuesDiff.Checked;
  for i:= 25 to 30 do
    grdData.Columns[i].Visible:=
      VisibleInvestmentValues and
      actToggleFullInvestmentValue.Checked and
      actToggleInvestmentValuesDiff.Checked;
end;

procedure TfmProductPeriods.SetWorkOrAccountInvestmentValues;
var
  i: Integer;
  FieldName: string;
begin
  grdData.Columns.BeginUpdate;
  try
    for i:= 0 to grdData.Columns.Count - 1 do
      if EndsText('_VALUE', grdData.Columns[i].FieldName) or
         EndsText('_PRICE', grdData.Columns[i].FieldName) or
         EndsText('_QUANTITY', grdData.Columns[i].FieldName) then
        begin
          FieldName:= grdData.Columns[i].FieldName;

          FieldName:= StringReplace(FieldName, '_ACC', '', []);
          FieldName:= StringReplace(FieldName, 'ACC_', '', []);
          FieldName:= StringReplace(FieldName, 'DLVRY_', 'DELIVERY_', []);

          Assert(FieldName <> '');

          if actAccountInvestmentValues.Checked then
            begin
              if (FieldName[1] = '_') then
                FieldName:= '_ACC' + FieldName
              else
                FieldName:= 'ACC_' + FieldName;

              FieldName:= StringReplace(FieldName, 'DELIVERY_', 'DLVRY_', []);
            end;

          grdData.Columns[i].FieldName:= FieldName;
        end;
  finally
    grdData.Columns.EndUpdate;
  end;               

  frProduct.MeasureVisible:= actWorkInvestmentValues.Checked;
  frProduct.AccountMeasureVisible:= actAccountInvestmentValues.Checked;
end;

function TfmProductPeriods.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:=
    TfmProductPeriod.ShowForm(dmDocClient, cdsGridData, AEditMode, doNone,
      cdsProdPerSpecModelVariants, cdsNotProdPerSpecModelVariants);
end;

class function TfmProductPeriods.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AFocusDate: TDateTime): Boolean;
var
  f: TfmProductPeriods;
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

procedure TfmProductPeriods.UpdateCurrencyFixing(CurrencyField,
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

procedure TfmProductPeriods.WorkOrAccountFieldChange(Sender: TField);
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
        CorrespondingFieldName:= StringReplace(CorrespondingFieldName, 'DLVRY_', 'DELIVERY_', []);

        if EndsText('_QUANTITY', Sender.FieldName) then
          Sender.DataSet.FieldByName(CorrespondingFieldName).AsVariant:=
            VarDivide(Sender.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant)
        else
          Sender.DataSet.FieldByName(CorrespondingFieldName).AsVariant:=
            VarMult(Sender.AsVariant, cdsDataACCOUNT_MEASURE_COEF.AsVariant);
      end
    else
      begin
        CorrespondingFieldName:= 'ACC_' + CorrespondingFieldName;
        CorrespondingFieldName:= StringReplace(CorrespondingFieldName, 'DELIVERY_', 'DLVRY_', []);

        if EndsText('_QUANTITY', Sender.FieldName) then
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

end.
