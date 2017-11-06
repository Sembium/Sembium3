unit fFinOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, JvExControls, JvDBLookup, Mask, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDeptFieldEditFrameBald, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameBald, fPartnerFieldEditFrame, fPartnerExFieldEditFrame,
  fTreeOnlyNodeFieldEditFrame, fFinClassFieldEditFrame, fBaseSaleForm,
  fFinClassFieldEditFrameBald, AbmesArrow, uClientTypes, dDocClient,
  fInnerButtonGridForm, Menus, uUtils, uSection, Generics.Collections,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions,
  EhLibVCL, DBAxisGridsEh;

type
  TModelActivationResult = (marAborted, marActivated, marModified);
  TOrderClosingResult = (ocrAborted, ocrClosed, ocrModified);

type
  TfmFinOrder = class(TInnerButtonGridForm)
    pnlTop: TPanel;
    cdsDataFIN_ORDER_CODE: TAbmesFloatField;
    cdsDataFIN_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsDataFIN_ORDER_NO: TAbmesFloatField;
    cdsDataEXEC_DEPT_CODE: TAbmesFloatField;
    cdsDataEXEC_DEPT_NAME: TAbmesWideStringField;
    cdsDataEXEC_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDataPRIORITY_CODE: TAbmesFloatField;
    cdsDataFIN_PROCESS_CODE: TAbmesFloatField;
    cdsDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsDataPARTNER_CODE: TAbmesFloatField;
    cdsDataIN_OUT: TAbmesFloatField;
    cdsDataBASE_DATE: TAbmesSQLTimeStampField;
    cdsDataBASE_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsDataBASE_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField;
    cdsDataBASE_FINANCIAL_PRODUCT_NO: TAbmesFloatField;
    cdsDataBASE_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataBASE_QUANTITY: TAbmesFloatField;
    cdsDataWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsDataWORK_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField;
    cdsDataWORK_FINANCIAL_PRODUCT_NO: TAbmesFloatField;
    cdsDataWORK_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataFIN_CLASS_CODE: TAbmesFloatField;
    cdsDataDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    cdsDataDOCUMENT_DATE: TAbmesSQLTimeStampField;
    cdsDataNOTES: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
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
    cdsDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataBEGIN_DATE_DIFF: TAbmesFloatField;
    cdsDataSPEC_MODEL_DURATION_DAYS: TAbmesFloatField;
    cdsDataREAL_MODEL_DURATION_DAYS: TAbmesFloatField;
    cdsDataMAX_POSITIVE_DIFF: TAbmesFloatField;
    cdsDataMAX_NEGATIVE_DIFF: TAbmesFloatField;
    cdsDataPLAN_IN_WORK_QUANTITY: TAbmesFloatField;
    cdsDataIN_WORK_QUANTITY_DIFF: TAbmesFloatField;
    cdsDataPLAN_OUT_WORK_QUANTITY: TAbmesFloatField;
    cdsDataOUT_WORK_QUANTITY_DIFF: TAbmesFloatField;
    cdsDataPLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsDataIN_END_DATE_DIFF: TAbmesFloatField;
    cdsDataOUT_END_DATE_DIFF: TAbmesFloatField;
    cdsDataBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsDataBND_PO_PRODUCT_CODE: TAbmesFloatField;
    cdsDataBND_PO_WORK_QUANTITY: TAbmesFloatField;
    cdsDataBND_PO_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDataBND_PO_WORK_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataBND_PO_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataSS_STATE_CODE: TAbmesFloatField;
    cdsDataDC_STATUS_CODE: TAbmesFloatField;
    cdsDataSG_STATUS_CODE: TAbmesFloatField;
    cdsDataqryRealFinModelLines: TDataSetField;
    cdsGridDataRFML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataRFML_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataFIN_ORDER_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_CODE: TAbmesFloatField;
    cdsGridDataFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataFIN_MODEL_LINE_NO: TAbmesFloatField;
    cdsGridDataLINE_QUANTITY_PERCENT: TAbmesFloatField;
    cdsGridDataMOVEMENT_OFFSET_DAYS: TAbmesFloatField;
    cdsGridDataABS_MOVEMENT_OFFSET_DAYS: TAbmesFloatField;
    cdsGridDataMOVEMENT_OFFSET_DAYS_SIGN: TAbmesFloatField;
    cdsGridDataMOVEMENT_DURATION_DAYS: TAbmesFloatField;
    cdsGridDataIN_OUT: TAbmesFloatField;
    cdsGridDataFIN_STORE_CODE: TAbmesFloatField;
    cdsGridDataFIN_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataPARTNER_ACCOUNT_CODE: TAbmesFloatField;
    cdsGridDataFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField;
    cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsGridDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsGridDataPRIMARY_LINE_QTY_PERCENT: TAbmesFloatField;
    cdsGridData_MAX_RFML_OBJECT_CODE: TAggregateField;
    cdsFinModelLineTypes: TAbmesClientDataSet;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NO: TAbmesFloatField;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NAME: TAbmesWideStringField;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField;
    cdsFinModelLineReasons: TAbmesClientDataSet;
    cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField;
    cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_NO: TAbmesFloatField;
    cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_NAME: TAbmesWideStringField;
    cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField;
    cdsDateOffsetSigns: TAbmesClientDataSet;
    cdsDateOffsetSignsMOVEMENT_OFFSET_DAYS_SIGN: TAbmesFloatField;
    cdsDateOffsetSignsMOVEMENT_OFFSET_DAYS_SIGN_NAME: TAbmesWideStringField;
    cdsGridData_FIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridData_FIN_MODEL_LINE_TYPE_NAME: TAbmesWideStringField;
    cdsGridData_FIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField;
    cdsGridData_MOVEMENT_OFFSET_DAYS_SIGN_NAME: TAbmesWideStringField;
    cdsGridData_SHOW_NO: TAbmesWideStringField;
    cdsGridData_FIN_MODEL_LINE_REASON_NAME: TAbmesWideStringField;
    cdsGridData_ARROW: TAbmesFloatField;
    cdsFinProcesses: TAbmesClientDataSet;
    cdsFinProcessesPROCESS_CODE: TAbmesFloatField;
    cdsFinProcessesPROCESS_ABBREV: TAbmesWideStringField;
    cdsFinProcessesPROCESS_NAME: TAbmesWideStringField;
    cdsFinProcessesPROCESS_NO: TAbmesFloatField;
    cdsFinProcessesIS_MANUALLY_USABLE: TAbmesFloatField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    dsBranches: TDataSource;
    gbFinOrder: TGroupBox;
    lblStatus: TLabel;
    lblFinProcess: TLabel;
    lblBranch: TLabel;
    lblFinOrderNo: TLabel;
    edtStatus: TDBEdit;
    cbFinProcess: TJvDBLookupCombo;
    cbBranch: TJvDBLookupCombo;
    edtFinOrderNo: TDBEdit;
    dsFinProcesses: TDataSource;
    actDocs: TAction;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    gbBeginDate: TGroupBox;
    lblBeginDateDiff: TLabel;
    lblPlanBeginDate: TLabel;
    frPlanBeginDate: TfrDateFieldEditFrame;
    edtPlanBeginDateColor: TEdit;
    edtBeginDateDiff: TDBEdit;
    gbProduction: TGroupBox;
    lblProductionDept: TLabel;
    lblModelLegth: TLabel;
    lblPlanModelLength: TLabel;
    lblRealModelLength: TLabel;
    edtProductionDateDiff: TLabel;
    lblProductionDateDiffMax: TLabel;
    lblProductionDateDiffMin: TLabel;
    edtPlanModelLength: TDBEdit;
    edtRealModelLength: TDBEdit;
    edtProductionDateDiffMax: TDBEdit;
    edtProductionDateDiffMin: TDBEdit;
    frExecDept: TfrDeptFieldEditFrameBald;
    gbFinal: TGroupBox;
    frWorkProduct: TfrProductFieldEditFrameBald;
    lblWorkProduct: TLabel;
    lblPlanInWorkQuantity: TLabel;
    lblPlanInWorkQuantityDiff: TLabel;
    btnTogglePlanInWorkQuantityDiffMeasure: TSpeedButton;
    edtPlanInWorkQuantity: TDBEdit;
    edtPlanInWorkQuantityDiff: TDBEdit;
    lblPlanOutWorkQuantity: TLabel;
    lblPlanOutWorkQuantityDiff: TLabel;
    btnTogglePlanOutWorkQuantityDiffMeasure: TSpeedButton;
    edtPlanOutWorkQuantity: TDBEdit;
    edtPlanOutWorkQuantityDiff: TDBEdit;
    lblInEndDateDiff: TLabel;
    lblPlanEndDate: TLabel;
    frPlanEndDate: TfrDateFieldEditFrame;
    edtPlanEndDateColor: TEdit;
    edtInEndDateDiff: TDBEdit;
    edtOutEndDateDiff: TDBEdit;
    lblOutEndDateDiff: TLabel;
    lblPriority: TLabel;
    cbPriority: TJvDBLookupCombo;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NO: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    dsPriorities: TDataSource;
    gbBndProcess: TGroupBox;
    pnlBorderProcess: TPanel;
    pnlAdministrativeProcess: TPanel;
    lblBorderProcessStatus: TLabel;
    edtBorderProcessStatus: TDBEdit;
    lblBorderProcessObjectIdentifier: TLabel;
    edtBorderProcessObjectIdentifier: TDBEdit;
    btnBorderProcessObject: TBitBtn;
    frBorderProcessObjectBaseDate: TfrDateFieldEditFrame;
    edtBorderProcessObjectBaseDateColor: TEdit;
    lblBorderProcessObjectBaseDate: TLabel;
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsCurrenciesPRODUCT_CODE: TAbmesFloatField;
    cdsData_BASE_CURRENCY_ABBREV: TAbmesWideStringField;
    txtBorderProcessObjectBaseCurrency: TDBText;
    lblBorderProcessObjectBaseQuantity: TLabel;
    edtBorderProcessObjectBaseQuantity: TDBEdit;
    lblBorderProcessObjectFinStatus: TLabel;
    edtBorderProcessObjectFinStatus: TDBEdit;
    lblBorderProcessObjectDocumentIdentifier: TLabel;
    edtBorderProcessObjectDocumentIdentifier: TDBEdit;
    lblAdministrativeProcessObjectBaseDate: TLabel;
    txtAdministrativeProcessObjectBaseCurrency: TDBText;
    lblAdministrativeProcessObjectBaseQuantity: TLabel;
    lblAdministrativeProcessObjectFinStatus: TLabel;
    lblAdministrativeProcessObjectDocumentIdentifier: TLabel;
    frAdministrativeProcessObjectBaseDate: TfrDateFieldEditFrame;
    edtAdministrativeProcessObjectBaseDateColor: TEdit;
    edtAdministrativeProcessObjectBaseQuantity: TDBEdit;
    edtAdministrativeProcessObjectFinStatus: TDBEdit;
    edtAdministrativeProcessObjectDocumentIdentifier: TDBEdit;
    cdsDate: TAbmesClientDataSet;
    dsDate: TDataSource;
    frAdministrativeProcessDocumentDate: TfrDateFieldEditFrame;
    lblAdministrativeProcessDocumentDate: TLabel;
    frBorderProcessDocumentDate: TfrDateFieldEditFrame;
    lblBorderProcessDocumentDate: TLabel;
    gbBorderProcessObjectProduct: TGroupBox;
    lblBorderProcessObjectProductAccountQuantity: TLabel;
    txtBorderProcessObjectProductAccountMeasure: TDBText;
    lblBorderProcessObjectProducWorkQuantity: TLabel;
    txtBorderProcessObjectProductWorkMeasure: TDBText;
    edtBorderProcessObjectProductAccountQuantity: TDBEdit;
    edtBorderProcessObjectProducWorkQuantity: TDBEdit;
    cdsData_HAS_DOCUMENT_IDENTIFIER: TAbmesFloatField;
    cdsData_BND_PO_STATUS: TAbmesWideStringField;
    cdsData_FIN_PROCESS_IS_MANUALLY_USABLE: TAbmesFloatField;
    actBndProcessObject: TAction;
    pnlFinOrderBottom: TPanel;
    pnlTimeLine: TPanel;
    saTimeLine: TAbmesArrow;
    shpTimeStart: TShape;
    saToday: TAbmesArrow;
    saPlanBeginDate: TAbmesArrow;
    saPlanEndDate: TAbmesArrow;
    tPlanEndDate: TDBText;
    tPlanBeginDate: TDBText;
    shpPlanBeginDateDiff: TShape;
    shpPlanEndDateDiff: TShape;
    tChangeDate: TDBText;
    saChangeDate: TAbmesArrow;
    saCreateDate: TAbmesArrow;
    tCreateDate: TDBText;
    lToday: TDBText;
    saBaseDate: TAbmesArrow;
    tBaseDate: TDBText;
    gbCreateAndChangeInfo: TGroupBox;
    frCreateDate: TfrDateFieldEditFrame;
    edtCreateDateColor: TEdit;
    lblCreateDate: TLabel;
    frChangeDate: TfrDateFieldEditFrame;
    edtChangeDateColor: TEdit;
    lblChangeDate: TLabel;
    gbModelButton: TGroupBox;
    cdsData_TODAY: TAbmesSQLTimeStampField;
    actModel: TAction;
    btnModel: TBitBtn;
    actNotes: TAction;
    pnlNotes: TPanel;
    btnNotes: TBitBtn;
    actCloseOrder: TAction;
    actAnnulOrder: TAction;
    actActivateModel: TAction;
    cdsDataACTIVATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataACTIVATE_DATE: TAbmesSQLTimeStampField;
    cdsDataACTIVATE_TIME: TAbmesSQLTimeStampField;
    pnlCloseOrder: TPanel;
    btnCloseOrder: TBitBtn;
    pnlAnnulOrder: TPanel;
    btnAnnulOrder: TBitBtn;
    pnlBottomButtonsClient: TPanel;
    pnlOrderClosed: TPanel;
    chbOrderClosed: TCheckBox;
    pnlOrderAnnuled: TPanel;
    chbOrderAnnuled: TCheckBox;
    pnlActivateModel: TPanel;
    btnActivateModel: TBitBtn;
    cdsPartnerAccounts: TAbmesClientDataSet;
    cdsPartnerAccountsACCOUNT_CODE: TAbmesFloatField;
    cdsPartnerAccountsACCOUNT_FULL_NAME: TAbmesWideStringField;
    cdsPartnerAccountsCURRENCY_PRODUCT_CODE: TAbmesFloatField;
    cdsGridData_PARTNER_ACCOUNT_FULL_NAME: TAbmesWideStringField;
    cdsGridData_PLAN_QUANTITY: TAbmesFloatField;
    cdsDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsDataSALE_SHIPMENT_NO: TAbmesFloatField;
    cdsDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataDCD_OBJECT_CODE: TAbmesFloatField;
    cdsDataDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsDataREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsDataREQUEST_NO: TAbmesFloatField;
    cdsGridData_MAX_FIN_MODEL_LINE_NO: TAggregateField;
    cdsGridData_SUM_PRIMARY_LINE_QTY_PERCENT: TAggregateField;
    cdsGridDataREAL_QUANTITY: TAbmesFloatField;
    cdsGridDataLATE_REAL_QUANTITY: TAbmesFloatField;
    cdsGridDataLATE_REAL_DAYS: TAbmesFloatField;
    cdsGridData_LATE_REAL_QUANTITY: TAbmesFloatField;
    cdsGridData_LATE_REAL_QUANTITY_PERCENT: TAbmesFloatField;
    cdsGridData_REMAINING_QUANTITY: TAbmesFloatField;
    cdsGridData_LATE_PLAN_QUANTITY: TAbmesFloatField;
    cdsGridData_LATE_PLAN_QUANTITY_PERCENT: TAbmesFloatField;
    cdsGridData_LATE_PLAN_DAYS: TAbmesFloatField;
    cdsGridData_LATE_REAL_DAYS: TAbmesFloatField;
    actRealLate: TAction;
    actPercent: TAction;
    tlbMasterToggles: TToolBar;
    btnRealLate: TToolButton;
    btnPercent: TToolButton;
    cdsGridDataFIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField;
    cdsDataFIN_ORDER_BRANCH_NO: TAbmesFloatField;
    cdsGridDataBASE_FINANCIAL_PRODUCT_FIXING: TAbmesFloatField;
    cdsGridDataWORK_FINANCIAL_PRODUCT_FIXING: TAbmesFloatField;
    cdsCurrencyRatesCache: TAbmesClientDataSet;
    cdsCurrencyRatesCacheCURRENCY_CODE: TAbmesFloatField;
    cdsCurrencyRatesCacheRATE_DATE: TAbmesSQLTimeStampField;
    cdsCurrencyRatesCacheFIXING: TAbmesFloatField;
    cdsData_BASE_CURRENCY_CODE: TAbmesFloatField;
    cdsData_WORK_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataREAL_QUANTITY_BASE_CRNCY: TAbmesFloatField;
    cdsGridDataLATE_REAL_QUANTITY_BASE_CRNCY: TAbmesFloatField;
    actBaseCurrency: TAction;
    btnBaseCurrency: TToolButton;
    cdsGridData_MIN_FIN_MODEL_LINE_NO: TAggregateField;
    actMoveUpLine: TAction;
    actMoveDownLine: TAction;
    btnMoveUpLine: TSpeedButton;
    btnMoveDownLine: TSpeedButton;
    cdsDataSTATUS_CODE: TAbmesFloatField;
    cdsGridDataIS_ANNULED: TAbmesFloatField;
    actShowAnnuled: TAction;
    btnShowAnnuled: TSpeedButton;
    sepShowAnnuled: TToolButton;
    cdsDataBOIO_STATUS_CODE: TAbmesFloatField;
    cdsDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    cdsDataBUDGET_ORDER_CODE: TAbmesFloatField;
    cdsDataBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    cdsDataBOI_ORDER_CODE: TAbmesFloatField;
    frBorderProcessObjectProduct: TfrProductFieldEditFrameBald;
    actLoadSpecFinModel: TAction;
    btnLoadSpecFinModel: TBitBtn;
    cdsSpecFinModelLines: TAbmesClientDataSet;
    cdsSpecFinModelLinesSPEC_FIN_MODEL_LINE_CODE: TAbmesFloatField;
    cdsSpecFinModelLinesSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    cdsSpecFinModelLinesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsSpecFinModelLinesFIN_MODEL_LINE_NO: TAbmesFloatField;
    cdsSpecFinModelLinesLINE_QUANTITY_PERCENT: TAbmesFloatField;
    cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS: TAbmesFloatField;
    cdsSpecFinModelLinesMOVEMENT_DURATION_DAYS: TAbmesFloatField;
    cdsSpecFinModelLinesFIN_STORE_CODE: TAbmesFloatField;
    cdsSpecFinModelLinesPARTNER_ACCOUNT_CODE: TAbmesFloatField;
    cdsSpecFinModelLinesFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField;
    cdsGridData_MAX_ANNUL_EMPLOYEE_CODE: TAggregateField;
    edtBorderProcessTitle: TEdit;
    actTogglePlanInWorkQuantityDiffMeasure: TAction;
    actTogglePlanOutWorkQuantityDiffMeasure: TAction;
    cdsData_IN_WORK_QUANTITY_DIFF_PERCENT: TAbmesFloatField;
    cdsData_OUT_WORK_QUANTITY_DIFF_PERCENT: TAbmesFloatField;
    cdsData_ARROW: TAbmesFloatField;
    actArrow: TAction;
    pnlArrow: TPanel;
    btnArrow: TSpeedButton;
    cdsGridDataREAL_LINE_QUANTITY_PERCENT: TAbmesFloatField;
    frPartner: TfrPartnerExFieldEditFrame;
    gbFinClass: TGroupBox;
    frFinClass: TfrFinClassFieldEditFrameBald;
    cdsData_FIN_PROCESS_NAME: TAbmesWideStringField;
    cdsGridData_MIN_PRIMARY_LINE_QTY_PERCENT: TAggregateField;
    cdsGridData_MAX_PRIMARY_LINE_QTY_PERCENT: TAggregateField;
    cdsGridData_MIN_IN_OUT: TAggregateField;
    cdsGridData_MAX_IN_OUT: TAggregateField;
    pnlBaseDataChanged: TPanel;
    btnConfirmBaseDataChange: TBitBtn;
    actConfirmBaseDataChange: TAction;
    cdsDataBASE_DATA_CHANGED: TAbmesFloatField;
    cdsDataBDC_CONFIRM_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataBDC_CONFIRM_DATE: TAbmesSQLTimeStampField;
    cdsDataBDC_CONFIRM_TIME: TAbmesSQLTimeStampField;
    cdsDataBND_OBJECT_IS_ANNULED: TAbmesFloatField;
    cdsDataBUDGET_PRODUCT_CODE: TAbmesFloatField;
    cdsDataBOIO_DESCRIPTION: TAbmesWideStringField;
    pnlBOIOrderInfo: TPanel;
    gbBudgetClass: TGroupBox;
    frBudgetClass: TfrProductFieldEditFrameBald;
    gbBOIOrderDescription: TGroupBox;
    edtBOIOrderDescription: TDBEdit;
    cdsDataFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField;
    cdsFMMovementOffsetTypes: TAbmesClientDataSet;
    cdsFMMovementOffsetTypesFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField;
    cdsFMMovementOffsetTypesFM_MOVEMENT_OFFSET_TYPE_NAME: TAbmesWideStringField;
    cdsData_FM_MOVEMENT_OFFSET_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataMOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataMOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataORIGINAL_MOVEMENT_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsGridData_MOVEMENT_PLAN_DATE: TAbmesDateTimeField;
    cdsGridDataREAL_BASE_QUANTITY: TAbmesFloatField;
    lblFMMovementOffsetType: TLabel;
    cbFMMovementOffsetType: TJvDBLookupCombo;
    cdsGridDataOVERRIDE_DOCUMENT: TAbmesFloatField;
    cdsGridDataDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDOCUMENT_DATE: TAbmesSQLTimeStampField;
    cdsSpecFinModels: TAbmesClientDataSet;
    cdsSpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    cdsSpecFinModelsFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField;
    actCreateLike: TAction;
    btnCreateLike: TBitBtn;
    cdsGridData_MAX_DOCUMENT_IDENTIFIER: TAggregateField;
    cdsGridData_MAX_NOT_ANNULED_REAL_QTY: TAggregateField;
    actCompleteModel: TAction;
    cdsGridData_MIN_MOVEMENT_PLAN_BEGIN_DATE: TAggregateField;
    pnlBottomButtonsLeft: TPanel;
    pnlCompleteModel: TPanel;
    btnCompleteModel: TBitBtn;
    pnlBottomButtonsClientLeft: TPanel;
    pnlBottomButtonsClientClient: TPanel;
    pnlOrderCompleted: TPanel;
    chbOrderCompleted: TCheckBox;
    pnlOrderActivated: TPanel;
    chbOrderActivated: TCheckBox;
    cdsDataCOMPLETE_MODEL_DATE: TAbmesSQLTimeStampField;
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataMOVEMENT_OFFSET_DAYSChange(Sender: TField);
    procedure cdsGridDataABS_MOVEMENT_OFFSET_DAYSChange(Sender: TField);
    procedure cdsGridDataMOVEMENT_OFFSET_DAYS_SIGNChange(Sender: TField);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataLINE_QUANTITY_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataLINE_QUANTITY_PERCENTSetText(Sender: TField;
      const Text: string);
    procedure cdsGridDataFIN_STORE_CODEChange(Sender: TField);
    procedure actDocsUpdate(Sender: TObject);
    procedure actDocsExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsDataSS_STATE_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDataDC_STATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDataSG_STATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataBASE_FINANCIAL_PRODUCT_CODEChange(Sender: TField);
    procedure cdsDataWORK_FINANCIAL_PRODUCT_CODEChange(Sender: TField);
    procedure cdsDataAfterEdit(DataSet: TDataSet);
    procedure actBndProcessObjectUpdate(Sender: TObject);
    procedure actBndProcessObjectExecute(Sender: TObject);
    procedure cdsDataFIN_ORDER_BRANCH_CODEChange(Sender: TField);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure actModelUpdate(Sender: TObject);
    procedure actModelExecute(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
    procedure actCloseOrderUpdate(Sender: TObject);
    procedure actAnnulOrderUpdate(Sender: TObject);
    procedure actCloseOrderExecute(Sender: TObject);
    procedure actAnnulOrderExecute(Sender: TObject);
    procedure cdsDataACTIVATE_EMPLOYEE_CODEChange(Sender: TField);
    procedure actActivateModelExecute(Sender: TObject);
    procedure actActivateModelUpdate(Sender: TObject);
    procedure cdsPartnerAccountsBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure cdsGridDataFIN_MODEL_LINE_TYPE_CODEChange(Sender: TField);
    procedure cdsGridDataBeforeInsert(DataSet: TDataSet);
    procedure PercentFieldsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actRealLateExecute(Sender: TObject);
    procedure actPercentExecute(Sender: TObject);
    procedure actBaseCurrencyUpdate(Sender: TObject);
    procedure actBaseCurrencyExecute(Sender: TObject);
    procedure actMoveUpLineExecute(Sender: TObject);
    procedure actMoveUpLineUpdate(Sender: TObject);
    procedure actMoveDownLineUpdate(Sender: TObject);
    procedure actMoveDownLineExecute(Sender: TObject);
    procedure cdsDataSTATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataANNUL_EMPLOYEE_CODEChange(Sender: TField);
    procedure actShowAnnuledExecute(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsDataBOIO_STATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actLoadSpecFinModelUpdate(Sender: TObject);
    procedure actLoadSpecFinModelExecute(Sender: TObject);
    procedure actTogglePlanInWorkQuantityDiffMeasureExecute(Sender: TObject);
    procedure actTogglePlanOutWorkQuantityDiffMeasureExecute(Sender: TObject);
    procedure actTogglePlanInWorkQuantityDiffMeasureUpdate(Sender: TObject);
    procedure actTogglePlanOutWorkQuantityDiffMeasureUpdate(Sender: TObject);
    procedure cdsDataFIN_PROCESS_CODEChange(Sender: TField);
    procedure actArrowUpdate(Sender: TObject);
    procedure actArrowExecute(Sender: TObject);
    procedure cdsGridDataREAL_LINE_QUANTITY_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataMOVEMENT_DATEValidate(Sender: TField);
    procedure actConfirmBaseDataChangeUpdate(Sender: TObject);
    procedure actConfirmBaseDataChangeExecute(Sender: TObject);
    procedure cdsGridDataMOVEMENT_PLAN_BEGIN_DATEChange(Sender: TField);
    procedure cdsGridDataMOVEMENT_PLAN_END_DATEChange(Sender: TField);
    procedure cdsGridDataMOVEMENT_DURATION_DAYSChange(Sender: TField);
    procedure cdsDataFM_MOVEMENT_OFFSET_TYPE_CODEChange(Sender: TField);
    procedure cdsGridDataFIN_STORE_IDENTIFIERGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actCreateLikeUpdate(Sender: TObject);
    procedure actCreateLikeExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsDataDOCUMENT_DATEChange(Sender: TField);
    procedure cdsDataCLOSE_EMPLOYEE_CODEChange(Sender: TField);
    procedure actCompleteModelUpdate(Sender: TObject);
    procedure actCompleteModelExecute(Sender: TObject);
    procedure actNotesUpdate(Sender: TObject);
  private
    FSettingMovementDateOffset: TTrySinglePassSection;
    FModelMode: Boolean;
    FMaxFinModelLineNos: TStringList;
    FRfmlObjectBranchCode: Integer;
    FRfmlObjectCode: Integer;
    FInitialized: Boolean;
    FSettingDateOffsetOrMovementDate: TTrySinglePassSection;
    FCreateLikeFieldValues: Variant;
    FActivateModelMode: Boolean;
    FCloseOrderMode: Boolean;
    FLoadingSpecFinModel: TSinglePassSection;
    FMaxRfmlObjectCode: Integer;
    FInitialStatusCode: Integer;
    function CanModifyData: Boolean;
    procedure SetChangeData(ADateTime: TDateTime);
    function BndProcessObjectName: string;
    function BndProcessObjectAbbrev: string;
    procedure GetArrowsInfo(Infos: TObjectList<TArrowInfo>);
    procedure GetDateFields(Fields: TList<TField>);
    procedure UpdateTimeGraphic;
    function ActivateModelEnabled: Boolean;
    function CloseOrderEnabled: Boolean;
    function AnnulOrderEnabled: Boolean;
    procedure CalcMaxFinModelLineNos;
    procedure ClearMaxFinModelLineNos;
    function GetMaxFinModelLineNo(AModelLineTypeCode: Integer): Integer;
    procedure CheckOrderRequiredFields;
    procedure SetColumns;
    function GetBaseCurrencyFixing(CurrencyCode: Integer; RateDate: TDateTime): Real;
    procedure LoadCurrencyFixings;
    procedure RecalcGridDataFields;
    procedure MoveLine(MoveUp: Boolean);
    function MoveUpLineEnabled: Boolean;
    function MoveDownLineEnabled: Boolean;
    function CanModifyArrow: Boolean;
    function BorderProcessTitle: string;
    procedure CheckActiveModel;
    procedure CalcMovementOffsetDays;
    procedure CalcMovementPlanDates;
    procedure InternalActivateModel;
    procedure InternalCloseOrder;
    procedure CheckBOIOrderConfirmedOnActivate;
    function CompleteModelEnabled: Boolean;
  protected
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure DoApplyUpdates; override;
    function GetGridRecordReadOnly: Boolean; override;
    function GetOriginalFormCaption: string; override;
    function GetInsertRecordEnabled: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    function GetRecordReadOnly: Boolean; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AModelMode: Boolean = False;
      ARfmlObjectBranchCode: Integer = 0; ARfmlObjectCode: Integer = 0): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AModelMode: Boolean = False;
      ARfmlObjectBranchCode: Integer = 0; ARfmlObjectCode: Integer = 0); reintroduce; virtual;
    class function ShowModel(const AFinOrderCode: Integer; AEditMode: TEditMode = emEdit): Boolean;
    class function ActivateModel(const AFinOrderCode: Integer): TModelActivationResult;
    class function CloseOrder(const AFinOrderCode: Integer): TOrderClosingResult;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uFinanceClientUtils, uClientUtils, uTreeClientUtils, Math,
  uDocUtils, uProducts, uSalesClientUtils, uDeliveryUtils,
  DateUtils, AbmesDialogs, fNotes, uFinModelLineTypes, fEditForm,
  fSale, fDelivery, fGroupSale, fRealFinModelLine, fBOICompanyOrder,
  uBudgetClientUtils, uProcesses, fSelectSpecFinModel, uBorderRelTypes,
  StrUtils, fTreeSelectForm, uClientDateTime, uUserActivityConsts,
  uFinOrderRequirementClientUtils, uCompanyStatuses, uFMMovementOffsetTypes,
  uDataSetUtils, uDealTypes, fStoreDeal, fCompleteFinOrder, uScalingUtils;

resourcestring
  SSaleObjectName = 'Ордер за Процес Продажби';
  SDeliveryObjectName = 'Ордер за Процес Доставки';
  SSaleGroupObjectName = 'Група Ордери за Процес Продажби';
  SBOIOrderObjectName = 'Ордер - Процесен по Лимит от Бордеро за Среда';
  SSaleObjectAbbrev = 'ОПП';
  SDeliveryObjectAbbrev = 'ОПД';
  SSaleGroupObjectAbbrev = 'ГрОПП';
  SBOIOrderObjectAbbrev = 'ОЛБС';
  SNewFinOrderNo = 'Ордерът за Процес Финансов е записан под номер %d';
  SConfirmActivation = 'Потвърдете активирането!';
  SConfirmClosing = 'Потвърдете приключването!';
  SConfirmAnnul = 'Потвърдете анулирането!';
  SAnnulLinesExist = 'МОДЕл-ът не е празен. Има анулирани редове.';
  SAdministrativeFinOrder = 'Административен Ордер за Процес Финансов';
  SIncorrectLineQuantityPercent = 'Не можете да задавате Структурна пропорция по-малка от вече отчетената (%s)';
  SModelCaption = 'Р-МОДЕл-Ф - %s';
  SOrderFor = 'Ордер за %s';
  SIncorrectVtrModel = 'Трябва да зададете точно два реда със 100% в права и обратна посока';
  SCantAnnulRequiredFinOrder = 'Не можете да анулирате изискван ОПФ';
  SBOIOrderNotConfirmed = 'Можете да активирате Р-МОДЕл-Ф само по утвърден %s!';

{$R *.dfm}

const
  Eps = 0.00000001;

{ TfmFinOrder }

procedure TfmFinOrder.actActivateModelExecute(Sender: TObject);
begin
  inherited;

  if (MessageDlgEx(SConfirmActivation, mtConfirmation, [mbOK, mbCancel], 0) <> mrOK) then
    Abort;

  InternalActivateModel;
end;

procedure TfmFinOrder.actActivateModelUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= ActivateModelEnabled;
end;

procedure TfmFinOrder.actAnnulOrderExecute(Sender: TObject);
var
  NowDateTime: TDateTime;
begin
  inherited;

  if (MessageDlgEx(SConfirmAnnul, mtConfirmation, [mbOK, mbCancel], 0) <> mrOK) then
    Abort;

  if (not cdsDataBND_PROCESS_OBJECT_CODE.IsNull) and
     (not cdsDataBND_OBJECT_IS_ANNULED.AsBoolean) and
     (LoginContext.FinOrderRequirementCode = forcRequired) then
    raise Exception.Create(SCantAnnulRequiredFinOrder);

  CheckEditMode(cdsData);

  NowDateTime:= ContextNow;

  cdsDataANNUL_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataANNUL_DATE.AsDateTime:= DateOf(NowDateTime);
  cdsDataANNUL_TIME.AsDateTime:= TimeOf(NowDateTime);
  cdsDataSTATUS_CODE.AsInteger:= fosAnnuled;
end;

procedure TfmFinOrder.actAnnulOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= AnnulOrderEnabled;
end;

procedure TfmFinOrder.actArrowExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  with cdsDataIN_OUT do
    AsInteger:= -AsInteger;
end;

procedure TfmFinOrder.actArrowUpdate(Sender: TObject);
begin
  inherited;
  pnlArrow.Enabled:= CanModifyArrow;
end;

procedure TfmFinOrder.actBaseCurrencyExecute(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    Checked:= not Checked;

  RecalcGridDataFields;
end;

procedure TfmFinOrder.actBaseCurrencyUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    (not cdsData_WORK_CURRENCY_CODE.IsNull) and
    (cdsData_WORK_CURRENCY_CODE.AsInteger <> LoginContext.BaseCurrencyCode);
end;

procedure TfmFinOrder.actBndProcessObjectExecute(Sender: TObject);
var
  BndProcessObjectFormClass: TEditFormClass;
begin
  inherited;

  BndProcessObjectFormClass:= nil;

  if not cdsDataSALE_SHIPMENT_NO.IsNull then
    BndProcessObjectFormClass:= TfmSale;

  if not cdsDataDELIVERY_PROJECT_CODE.IsNull then
    BndProcessObjectFormClass:= TfmDelivery;

  if not cdsDataREQUEST_NO.IsNull then
    BndProcessObjectFormClass:= TfmGroupSale;

  if not cdsDataBOI_ORDER_CODE.IsNull then
    BndProcessObjectFormClass:= TfmBOICompanyOrder;

  Assert(Assigned(BndProcessObjectFormClass));

  BndProcessObjectFormClass.ShowForm(nil, cdsData, emReadOnly);
end;

procedure TfmFinOrder.actBndProcessObjectUpdate(Sender: TObject);
begin
  inherited;
  
  with Sender as TAction do
    begin
      Enabled:=
        (EditMode <> emInsert) and
        not cdsData_FIN_PROCESS_IS_MANUALLY_USABLE.AsBoolean;

      Caption:= BndProcessObjectAbbrev + cDialogSuffix;
    end;  { with }
end;

procedure TfmFinOrder.actCloseOrderExecute(Sender: TObject);
begin
  inherited;

  if (MessageDlgEx(SConfirmClosing, mtConfirmation, [mbOK, mbCancel], 0) <> mrOK) then
    Abort;

  CheckEditMode(cdsData);
  cdsDataCLOSE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataSTATUS_CODE.AsInteger:= fosClosed;
end;

procedure TfmFinOrder.actCloseOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= CloseOrderEnabled;
end;

procedure TfmFinOrder.actCompleteModelExecute(Sender: TObject);
begin
  inherited;

  if not TfmCompleteFinOrder.ShowForm(cdsData) then
    Abort;

  cdsGridData.TempDisableControls/
    cdsGridData.PreserveRecNo/
      cdsGridData.ForEach/
        procedure begin
          CheckNewStoreDealUserActivities(cdsGridDataIN_OUT.AsInteger, cdsGridDataFIN_STORE_CODE.AsInteger, pcFinancial);
        end;

  cdsDataSTATUS_CODE.AsInteger:= fosCompleted;
end;

procedure TfmFinOrder.actCompleteModelUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= CompleteModelEnabled;
end;

procedure TfmFinOrder.actConfirmBaseDataChangeExecute(Sender: TObject);
var
  NowDateTime: TDateTime;

begin
  inherited;

  NowDateTime:= ContextNow;

  CheckEditMode(cdsData);
  cdsDataBDC_CONFIRM_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataBDC_CONFIRM_DATE.AsDateTime:= DateOf(NowDateTime);
  cdsDataBDC_CONFIRM_TIME.AsDateTime:= TimeOf(NowDateTime);
  cdsDataBASE_DATA_CHANGED.AsBoolean:= False;
end;

procedure TfmFinOrder.actConfirmBaseDataChangeUpdate(Sender: TObject);
begin
  inherited;

  pnlBaseDataChanged.Visible:=
    cdsData.Active and
    cdsDataBASE_DATA_CHANGED.AsBoolean;

  (Sender as TAction).Enabled:=
    pnlBaseDataChanged.Visible and
    (EditMode = emEdit);
end;

procedure TfmFinOrder.actCreateLikeExecute(Sender: TObject);
var
  SavePoint: Integer;
begin
  inherited;

  FCreateLikeFieldValues:= GetRecordData(dsGridData.DataSet, True);
  try
    SavePoint:= (dsGridData.DataSet as TClientDataSet).SavePoint;
    try
      if not DoShowEditForm(emInsert) then
        Abort;
    except
      (dsGridData.DataSet as TClientDataSet).SavePoint:= SavePoint;
      raise;
    end;
  finally
    FCreateLikeFieldValues:= Unassigned;
  end;
end;

procedure TfmFinOrder.actCreateLikeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    GetInsertRecordEnabled and
    dsGridData.DataSet.Active and
    (dsGridData.DataSet.RecordCount > 0);
end;

procedure TfmFinOrder.actDocsExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if (not CanModifyData) or FModelMode then
    em:= emReadOnly
  else
    em:= EditMode;

  dmDocClient.DSOpenDoc(em,
    ((Sender as TAction).ActionComponent as TControl), dotFinOrder, cdsData);
end;

procedure TfmFinOrder.actDocsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= cdsDataHAS_DOC_ITEMS.AsInteger;
end;

procedure TfmFinOrder.actFormUpdate(Sender: TObject);
const
  FinStatusColors: array[Boolean] of TColor = (clRed, clGreen);
var
  ro: Boolean;
begin
  inherited;

  if not FInitialized then
    begin
      FInitialized:= True;
      if (FRfmlObjectBranchCode > 0) and (FRfmlObjectCode > 0)then
        cdsGridData.Locate('RFML_OBJECT_BRANCH_CODE; RFML_OBJECT_CODE',
          VarArrayOf([FRfmlObjectBranchCode, FRfmlObjectCode]), []);
    end;

  pnlAdministrativeProcess.Visible:=
    (not cdsDataFIN_PROCESS_CODE.IsNull) and
    cdsData_FIN_PROCESS_IS_MANUALLY_USABLE.AsBoolean;

  pnlBorderProcess.Visible:=
    (not cdsDataFIN_PROCESS_CODE.IsNull) and
    (not cdsData_FIN_PROCESS_IS_MANUALLY_USABLE.AsBoolean);

  edtBorderProcessTitle.Text:= BorderProcessTitle;

  edtAdministrativeProcessObjectFinStatus.Font.Color:=
    FinStatusColors[cdsData_HAS_DOCUMENT_IDENTIFIER.AsBoolean];
  edtBorderProcessObjectFinStatus.Font.Color:=
    FinStatusColors[cdsData_HAS_DOCUMENT_IDENTIFIER.AsBoolean];

  pnlGrid.Visible:= FModelMode;
  pnlFinOrderBottom.Visible:= not FModelMode;

  pnlActivateModel.Visible:= ActivateModelEnabled;
  pnlCompleteModel.Visible:= CompleteModelEnabled;
  pnlCloseOrder.Visible:= CloseOrderEnabled;
  pnlAnnulOrder.Visible:= AnnulOrderEnabled;

  pnlOrderActivated.Visible:=
    cdsData.Active and
    (not cdsDataACTIVATE_EMPLOYEE_CODE.IsNull) and
    not (FInitialStatusCode in [fosActivated, fosActivatedLate]);

  pnlOrderCompleted.Visible:=
    cdsData.Active and
    not cdsDataCOMPLETE_MODEL_DATE.IsNull;

  pnlOrderClosed.Visible:=
    cdsData.Active and
    (not cdsDataCLOSE_EMPLOYEE_CODE.IsNull);

  pnlOrderAnnuled.Visible:=
    cdsData.Active and
    (not cdsDataANNUL_EMPLOYEE_CODE.IsNull);

  ro:=
    (EditMode <> emInsert) or
    FModelMode or
    not CanModifyData;

  cbFinProcess.ReadOnly:= ro;
  cbBranch.ReadOnly:= ro;
  cbBranch.Color:= ReadOnlyColors[ro];

  ro:=
    (EditMode = emReadOnly) or
    FModelMode or
    not CanModifyData;

  cbPriority.ReadOnly:= ro;
  edtAdministrativeProcessObjectBaseQuantity.ReadOnly:= ro;
  edtAdministrativeProcessObjectDocumentIdentifier.ReadOnly:= ro;

  cbPriority.Color:= ReadOnlyColors[ro];
  edtAdministrativeProcessObjectBaseQuantity.Color:= ReadOnlyColors[ro];
  edtAdministrativeProcessObjectDocumentIdentifier.Color:= ReadOnlyColors[ro];

  SetControlReadOnly(
    (not CanModifyData) or
    (VarToFloat(cdsGridData_MAX_NOT_ANNULED_REAL_QTY.AsVariant) > 0) or
    not (
      LoginContext.HasAnyUserActivity([uaRealFinancialModelEdit, uaRFMLEditBeforeAndAfterActivation]) or
      (cdsDataACTIVATE_EMPLOYEE_CODE.IsNull and LoginContext.HasUserActivity(uaRFMLEditBeforeActivation))
    ),
    cbFMMovementOffsetType);

  gbBorderProcessObjectProduct.Visible:=
    (not cdsDataFIN_PROCESS_CODE.IsNull) and
    not (cdsDataFIN_PROCESS_CODE.AsInteger in [pFinDstPrc, pFinPrdUobNl]);

  pnlBOIOrderInfo.Visible:=
    (cdsDataFIN_PROCESS_CODE.AsInteger = pFinDstPrc);

  frPartner.Visible:=
    (not cdsDataFIN_PROCESS_CODE.IsNull) and
    not (cdsDataFIN_PROCESS_CODE.AsInteger in [pFinVtrRF, pFinVtrOF]);

  pnlArrow.Visible:=
    (not cdsDataFIN_PROCESS_CODE.IsNull) and
    not (cdsDataFIN_PROCESS_CODE.AsInteger in [pFinVtrRF, pFinVtrOF]);

  btnArrow.Caption:= cdsData_ARROW.DisplayText;
end;

class function TfmFinOrder.ActivateModel(const AFinOrderCode: Integer): TModelActivationResult;
var
  f: TfmFinOrder;
begin
  f:= CreateEx;
  try
    f.SetDataParams(nil, nil, emEdit, doNone, False, True);
    f.cdsData.Params.ParamByName('FIN_ORDER_CODE').AsInteger:= AFinOrderCode;
    f.FActivateModelMode:= True;
    f.InternalShowForm;

    if f.FActivateModelMode then
      Result:= marActivated
    else
      begin
        if f.IsDataModified then
          Result:= marModified
        else
          Result:= marAborted;
      end;
  finally
    f.ReleaseForm;
  end;  { try }
end;

function TfmFinOrder.ActivateModelEnabled: Boolean;
begin
  Result:=
    (EditMode = emEdit) and
    FModelMode and
    cdsData.Active and
    cdsDataACTIVATE_EMPLOYEE_CODE.IsNull and
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    LoginContext.HasUserActivity(uaActivateFinancialModel);
end;

procedure TfmFinOrder.actLoadSpecFinModelExecute(Sender: TObject);
const
  brt: array[-1..1] of TBorderRelType = (brtVendor, brtNone, brtClient);
var
  SpecFinModelCode: Integer;
  SaveCursor: TCursor;
  SaveFiltered: Boolean;
begin
  inherited;

  cdsGridData.DisableControls;
  try
    SaveFiltered:= cdsGridData.Filtered;
    cdsGridData.Filtered:= False;
    try
      if (VarToInt(cdsGridData_MAX_ANNUL_EMPLOYEE_CODE.AsVariant) > 0) then
        raise Exception.Create(SAnnulLinesExist);
    finally
      cdsGridData.Filtered:= SaveFiltered;
    end;
  finally
    cdsGridData.EnableControls;
  end;

  SpecFinModelCode:= TfmSelectSpecFinModel.ShowForm(nil, nil, emEdit, doNone,
    cdsDataPARTNER_CODE.AsInteger, brt[cdsDataIN_OUT.AsInteger], cdsDataBASE_DATE.AsDateTime);

  if (SpecFinModelCode > 0) then
    begin
      FLoadingSpecFinModel.Enter;
      try
        SaveCursor:= Screen.Cursor;
        Screen.Cursor:= crHourGlass;
        try
          cdsSpecFinModels.Params.ParamByName('PARTNER_CODE').AsInteger:= cdsDataPARTNER_CODE.AsInteger;
          cdsSpecFinModels.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:= BorderRelTypeToInt(brt[cdsDataIN_OUT.AsInteger]);
          cdsSpecFinModels.Params.ParamByName('BEGIN_DATE').AsDateTime:= cdsDataBASE_DATE.AsDateTime;
          cdsSpecFinModels.Params.ParamByName('END_DATE').AsDateTime:= cdsDataBASE_DATE.AsDateTime;

          cdsSpecFinModels.TempOpen/
            procedure begin
              CheckEditMode(cdsData);
              cdsDataFM_MOVEMENT_OFFSET_TYPE_CODE.AsVariant:=
                cdsSpecFinModels.Lookup('SPEC_FIN_MODEL_CODE', SpecFinModelCode, 'FM_MOVEMENT_OFFSET_TYPE_CODE');
            end;

          cdsSpecFinModelLines.Params.ParamByName('SPEC_FIN_MODEL_CODE').AsInteger:= SpecFinModelCode;
          cdsSpecFinModelLines.Open;
          try
            cdsGridData.DisableControls;
            try
              while not cdsSpecFinModelLines.Eof do
                begin
                  cdsGridData.Append;
                  try
                    cdsGridDataRFML_OBJECT_CODE.AsInteger:= cdsSpecFinModelLines.RecNo;
                    cdsGridData.AssignFields(cdsSpecFinModelLines);
                    cdsGridData.Post;
                  except
                    cdsGridData.Cancel;
                    raise;
                  end;

                  cdsSpecFinModelLines.Next;
                end;

              cdsGridData.First;
            finally
              cdsGridData.EnableControls;
            end;
          finally
            cdsSpecFinModelLines.Close;
          end;
        finally
          Screen.Cursor:= SaveCursor;
        end;
      finally
        FLoadingSpecFinModel.Leave;
      end;
    end;
end;

procedure TfmFinOrder.actLoadSpecFinModelUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    FModelMode and
    cdsGridData.IsEmpty and
    CanModifyData;
end;

procedure TfmFinOrder.actModelExecute(Sender: TObject);
begin
  inherited;
  TfmFinOrder.ShowForm(nil, cdsData, emEdit, doNone, False, True);
end;

procedure TfmFinOrder.actModelUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emInsert) and
    not FModelMode;
end;

procedure TfmFinOrder.actMoveDownLineExecute(Sender: TObject);
begin
  inherited;
  MoveLine(False);
end;

procedure TfmFinOrder.actMoveDownLineUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= MoveDownLineEnabled;
end;

procedure TfmFinOrder.actMoveUpLineExecute(Sender: TObject);
begin
  inherited;
  MoveLine(True);
end;

procedure TfmFinOrder.actMoveUpLineUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= MoveUpLineEnabled;
end;

procedure TfmFinOrder.actNotesExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if FModelMode or (not CanModifyData) then
    em:= emReadOnly
  else
    em:= EditMode;

  TfmNotes.EditNotesField(cdsDataNOTES, em);
end;

procedure TfmFinOrder.actNotesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= IfThen(cdsDataNOTES.AsString = '', 207, 57);
end;

procedure TfmFinOrder.actPercentExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
end;

procedure TfmFinOrder.actRealLateExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
end;

procedure TfmFinOrder.actShowAnnuledExecute(Sender: TObject);
var
  RfmlObjectBranchCode: Integer;
  RfmlObjectCode: Integer;
begin
  inherited;
  with Sender as TAction do
    begin
      Checked:= not Checked;

      cdsGridData.DisableControls;
      try
        RfmlObjectBranchCode:= cdsGridDataRFML_OBJECT_BRANCH_CODE.AsInteger;
        RfmlObjectCode:= cdsGridDataRFML_OBJECT_CODE.AsInteger;

        cdsGridData.Filtered:= not Checked;

        if not cdsGridData.Locate('RFML_OBJECT_BRANCH_CODE; RFML_OBJECT_CODE', VarArrayOf([RfmlObjectBranchCode, RfmlObjectCode]), []) then
          cdsGridData.First;
      finally
        cdsGridData.EnableControls;
      end;
    end;
end;

procedure TfmFinOrder.actTogglePlanInWorkQuantityDiffMeasureExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
end;

procedure TfmFinOrder.actTogglePlanInWorkQuantityDiffMeasureUpdate(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    edtPlanInWorkQuantityDiff.DataField:=
      IfThen(Checked, cdsData_IN_WORK_QUANTITY_DIFF_PERCENT.FieldName, cdsDataIN_WORK_QUANTITY_DIFF.FieldName);
end;

procedure TfmFinOrder.actTogglePlanOutWorkQuantityDiffMeasureExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
end;

procedure TfmFinOrder.actTogglePlanOutWorkQuantityDiffMeasureUpdate(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    edtPlanOutWorkQuantityDiff.DataField:=
      IfThen(Checked, cdsData_OUT_WORK_QUANTITY_DIFF_PERCENT.FieldName, cdsDataOUT_WORK_QUANTITY_DIFF.FieldName);
end;

function TfmFinOrder.AnnulOrderEnabled: Boolean;
begin
  Result:=
    (EditMode = emEdit) and
    cdsData.Active and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

function TfmFinOrder.BndProcessObjectName: string;
begin
  Result:= '';

  if not cdsDataSALE_OBJECT_CODE.IsNull then
    Result:= SSaleObjectName;

  if not cdsDataDELIVERY_PROJECT_CODE.IsNull then
    Result:= SDeliveryObjectName;

  if not cdsDataREQUEST_NO.IsNull then
    Result:= SSaleGroupObjectName;

  if not cdsDataBOI_ORDER_CODE.IsNull then
    Result:= SBOIOrderObjectName;
end;

function TfmFinOrder.BorderProcessTitle: string;
begin
  if cdsData_FIN_PROCESS_IS_MANUALLY_USABLE.AsBoolean then
    begin
      if (cdsDataFIN_PROCESS_CODE.AsInteger = pFinAdm) then
        Result:= SAdministrativeFinOrder
      else
        Result:= Format(SOrderFor, [cdsData_FIN_PROCESS_NAME.DisplayText]);
    end
  else
    begin
      if (BndProcessObjectName = '') then
        Result:= ''
      else
        Result:=
          Format('%s (%s)', [BndProcessObjectName, BndProcessObjectAbbrev]);
    end;
end;

function TfmFinOrder.BndProcessObjectAbbrev: string;
begin
  Result:= '';

  if not cdsDataSALE_OBJECT_CODE.IsNull then
    Result:= SSaleObjectAbbrev;

  if not cdsDataDELIVERY_PROJECT_CODE.IsNull then
    Result:= SDeliveryObjectAbbrev;

  if not cdsDataREQUEST_NO.IsNull then
    Result:= SSaleGroupObjectAbbrev;

  if not cdsDataBOI_ORDER_CODE.IsNull then
    Result:= SBOIOrderObjectAbbrev;
end;

class function TfmFinOrder.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmFinOrder.CheckOrderRequiredFields;
begin
  CheckRequiredFields(cdsData,
    'FIN_PROCESS_CODE; FIN_ORDER_BRANCH_CODE; PRIORITY_CODE; EXEC_DEPT_CODE; ' +
    'WORK_FINANCIAL_PRODUCT_CODE; BASE_DATE; BASE_QUANTITY');

  if not cdsDataDOCUMENT_IDENTIFIER.IsNull then
    CheckRequiredField(cdsDataDOCUMENT_DATE);
  if not cdsDataDOCUMENT_DATE.IsNull then
    CheckRequiredField(cdsDataDOCUMENT_IDENTIFIER);

  if cdsData_FIN_PROCESS_IS_MANUALLY_USABLE.AsBoolean then
    CheckRequiredField(cdsDataFIN_CLASS_CODE);

  if (cdsDataFIN_PROCESS_CODE.AsInteger = pFinAdm) then
    CheckRequiredField(cdsDataPARTNER_CODE);
end;

function TfmFinOrder.CanModifyArrow: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    (cdsDataFIN_PROCESS_CODE.AsInteger = pFinAdm) and
    cdsGridData.IsEmpty and
    CanModifyData and
    (not FModelMode);
end;

function TfmFinOrder.CanModifyData: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    cdsData.Active and
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

class function TfmFinOrder.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmFinOrder.cdsDataACTIVATE_EMPLOYEE_CODEChange(Sender: TField);
var
  NowDateTime: TDateTime;
begin
  inherited;

  if Sender.IsNull then
    begin
      cdsDataACTIVATE_DATE.Clear;
      cdsDataACTIVATE_TIME.Clear;
    end
  else
    begin
      NowDateTime:= ContextNow;
      cdsDataACTIVATE_DATE.AsDateTime:= DateOf(NowDateTime);
      cdsDataACTIVATE_TIME.AsDateTime:= TimeOf(NowDateTime);
    end;
end;

procedure TfmFinOrder.cdsDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  SetChangeData(ContextNow);
  cdsDataSTATUS_CODE.Clear;
end;

procedure TfmFinOrder.cdsDataBASE_FINANCIAL_PRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  DoProductFieldChanged(cdsDataBASE_FINANCIAL_PRODUCT_CODE,
    cdsDataBASE_FINANCIAL_PRODUCT_NAME, cdsDataBASE_FINANCIAL_PRODUCT_NO);
end;

procedure TfmFinOrder.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= VarArrayOf([DocsDelta, cdsDataFM_MOVEMENT_OFFSET_TYPE_CODE.AsVariant]);
end;

procedure TfmFinOrder.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  CheckOrderRequiredFields;

  if cdsData_FIN_PROCESS_IS_MANUALLY_USABLE.AsBoolean then
    cdsDataBASE_FINANCIAL_PRODUCT_CODE.Assign(cdsDataWORK_FINANCIAL_PRODUCT_CODE);
end;

procedure TfmFinOrder.cdsDataBOIO_STATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= GetBOIOrderStatusText(Sender.AsInteger, sttAbbrev);
end;

procedure TfmFinOrder.cdsDataDC_STATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= DeliveryStatuses[Sender.AsInteger];
end;

procedure TfmFinOrder.cdsDataDOCUMENT_DATEChange(Sender: TField);
begin
  inherited;
  if (cdsDataFIN_PROCESS_CODE.AsInteger in [pFinAdm, pFinVtrRF, pFinVtrOF]) and
     (not Sender.IsNull) then
    cdsDataBASE_DATE.Assign(Sender);
end;

procedure TfmFinOrder.cdsDataSG_STATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= SaleOrderStatuses[Sender.AsInteger];
end;

procedure TfmFinOrder.cdsDataSS_STATE_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= SaleStateDisplayText(Sender.AsInteger, 50, Canvas);
end;

procedure TfmFinOrder.cdsDataSTATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= FinOrderStateDisplayText(Sender.AsInteger, 50, Canvas);
end;

procedure TfmFinOrder.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsData_HAS_DOCUMENT_IDENTIFIER.AsBoolean:=
    (cdsDataDOCUMENT_IDENTIFIER.AsString <> '') or
    not VarIsNullOrEmpty(cdsGridData_MAX_DOCUMENT_IDENTIFIER.AsVariant);

  if not cdsDataSALE_SHIPMENT_NO.IsNull then
    cdsData_BND_PO_STATUS.AsString:= cdsDataSS_STATE_CODE.DisplayText;

  if not cdsDataDELIVERY_PROJECT_CODE.IsNull then
    cdsData_BND_PO_STATUS.AsString:= cdsDataDC_STATUS_CODE.DisplayText;

  if not cdsDataREQUEST_NO.IsNull then
    cdsData_BND_PO_STATUS.AsString:= cdsDataSG_STATUS_CODE.DisplayText;

  if not cdsDataBOI_ORDER_CODE.IsNull then
    cdsData_BND_PO_STATUS.AsString:= cdsDataBOIO_STATUS_CODE.DisplayText;

  cdsData_TODAY.AsDateTime:= ContextDate;

  if (cdsDataPLAN_IN_WORK_QUANTITY.AsFloat = 0) then
    cdsData_IN_WORK_QUANTITY_DIFF_PERCENT.AsFloat:= 0
  else
    cdsData_IN_WORK_QUANTITY_DIFF_PERCENT.AsFloat:=
      cdsDataIN_WORK_QUANTITY_DIFF.AsFloat / cdsDataPLAN_IN_WORK_QUANTITY.AsFloat;

  if (cdsDataPLAN_OUT_WORK_QUANTITY.AsFloat = 0) then
    cdsData_OUT_WORK_QUANTITY_DIFF_PERCENT.AsFloat:= 0
  else
    cdsData_OUT_WORK_QUANTITY_DIFF_PERCENT.AsFloat:=
      cdsDataOUT_WORK_QUANTITY_DIFF.AsFloat / cdsDataPLAN_OUT_WORK_QUANTITY.AsFloat;

  cdsData_ARROW.AsBoolean:= (cdsDataIN_OUT.AsInteger = -1);
end;

procedure TfmFinOrder.cdsDataCLOSE_EMPLOYEE_CODEChange(Sender: TField);
var
  NowDateTime: TDateTime;
begin
  inherited;

  if Sender.IsNull then
    begin
      cdsDataCLOSE_DATE.Clear;
      cdsDataCLOSE_TIME.Clear;
    end
  else
    begin
      NowDateTime:= ContextNow;
      cdsDataCLOSE_DATE.AsDateTime:= DateOf(NowDateTime);
      cdsDataCLOSE_TIME.AsDateTime:= TimeOf(NowDateTime);
    end;
end;

procedure TfmFinOrder.cdsDataFIN_ORDER_BRANCH_CODEChange(Sender: TField);
begin
  inherited;
  cdsDataFIN_ORDER_NO.AsInteger:=
    dmMain.SvrFinance.GetNewFinOrderNo(Sender.AsInteger);
  cdsDataFIN_ORDER_BRANCH_NO.AsVariant:=
    cdsBranches.Lookup('BRANCH_CODE', Sender.AsInteger, 'BRANCH_NO');
end;

procedure TfmFinOrder.cdsDataFIN_PROCESS_CODEChange(Sender: TField);
begin
  inherited;
  if (Sender.AsInteger in [pFinVtrRF, pFinVtrOF]) then
    begin
      cdsDataPARTNER_CODE.AsInteger:= 0;
      cdsDataIN_OUT.Clear;
    end
  else
    begin
      cdsDataPARTNER_CODE.Clear;
      cdsDataIN_OUT.AsInteger:= -1;
    end;

  if (cdsDataFIN_PROCESS_CODE.AsInteger in [pFinAdm, pFinVtrRF, pFinVtrOF]) and
     (not cdsDataDOCUMENT_DATE.IsNull) then
    cdsDataBASE_DATE.Assign(cdsDataDOCUMENT_DATE);
end;

procedure TfmFinOrder.cdsDataFM_MOVEMENT_OFFSET_TYPE_CODEChange(Sender: TField);
begin
  inherited;

  Screen.TempCursor(crHourGlass) /
    cdsGridData.TempDisableControls /
      cdsGridData.PreserveRecNo /
        cdsGridData.TempUnfilter /
          cdsGridData.ForEach /
            cdsGridData.SafeEdit /
              procedure begin
                CalcMovementPlanDates;
              end;
end;

procedure TfmFinOrder.cdsDataNewRecord(DataSet: TDataSet);
var
  NowDateTime: TDateTime;
begin
  inherited;

  cdsDataFIN_ORDER_CODE.AsInteger:= 1;
  cdsDataBASE_DATA_CHANGED.AsBoolean:= False;

  if (LoginContext.DefaultFinOrderBranchCode > 0) then
    cdsDataFIN_ORDER_BRANCH_CODE.AsInteger:= LoginContext.DefaultFinOrderBranchCode;

  if (LoginContext.DefaultFinOrderExecDeptCode > 0) then
    cdsDataEXEC_DEPT_CODE.AsInteger:= LoginContext.DefaultFinOrderExecDeptCode;

  NowDateTime:= ContextNow;

  cdsDataCREATE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataCREATE_DATE.AsDateTime:= DateOf(NowDateTime);
  cdsDataCREATE_TIME.AsDateTime:= TimeOf(NowDateTime);

  SetChangeData(NowDateTime);
end;

procedure TfmFinOrder.cdsDataWORK_FINANCIAL_PRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  DoProductFieldChanged(cdsDataWORK_FINANCIAL_PRODUCT_CODE,
    cdsDataWORK_FINANCIAL_PRODUCT_NAME, cdsDataWORK_FINANCIAL_PRODUCT_NO);
end;

procedure TfmFinOrder.cdsGridDataABS_MOVEMENT_OFFSET_DAYSChange(Sender: TField);
begin
  inherited;

  FSettingMovementDateOffset.TempEnter /
    procedure begin
      if (cdsGridDataABS_MOVEMENT_OFFSET_DAYS.AsInteger = 0) then
        begin
          cdsGridDataMOVEMENT_OFFSET_DAYS.AsInteger:= 0;
          cdsGridDataMOVEMENT_OFFSET_DAYS_SIGN.AsInteger:= 0;
        end
      else
        cdsGridDataMOVEMENT_OFFSET_DAYS.AsInteger:=
          cdsGridDataMOVEMENT_OFFSET_DAYS_SIGN.AsInteger *
          cdsGridDataABS_MOVEMENT_OFFSET_DAYS.AsInteger;

      LoadCurrencyFixings;
    end;
end;

procedure TfmFinOrder.cdsGridDataANNUL_EMPLOYEE_CODEChange(Sender: TField);
begin
  inherited;
  cdsGridDataIS_ANNULED.AsBoolean:= not Sender.IsNull;
end;

procedure TfmFinOrder.cdsGridDataBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CheckRequiredField(cdsData_FM_MOVEMENT_OFFSET_TYPE_NAME);
  if not cdsGridData.ControlsDisabled then
    CalcMaxFinModelLineNos;
end;

procedure TfmFinOrder.cdsGridDataBeforePost(DataSet: TDataSet);
var
  FinModelLineType: TFinModelLineType;
begin
  inherited;

  CheckRequiredFields(DataSet,
    '_FIN_MODEL_LINE_TYPE_NAME; LINE_QUANTITY_PERCENT; ABS_MOVEMENT_OFFSET_DAYS');

  if (cdsGridDataABS_MOVEMENT_OFFSET_DAYS.AsInteger > 0) and
     (cdsGridDataMOVEMENT_OFFSET_DAYS_SIGN.AsInteger = 0) then
    begin
      cdsGridData_MOVEMENT_OFFSET_DAYS_SIGN_NAME.FocusControl;
      raise Exception.Create(SMovementDateOffsetSignRequired);
    end;

  CheckRequiredFields(DataSet,
    'FIN_STORE_CODE; MOVEMENT_DURATION_DAYS; MOVEMENT_PLAN_BEGIN_DATE; MOVEMENT_PLAN_END_DATE; _PARTNER_ACCOUNT_FULL_NAME');

  if (cdsGridDataDOCUMENT_IDENTIFIER.IsNull <> cdsGridDataDOCUMENT_DATE.IsNull) then
    CheckRequiredFields(DataSet, 'DOCUMENT_IDENTIFIER; DOCUMENT_DATE');

  if (cdsGridDataLINE_QUANTITY_PERCENT.AsFloat < cdsGridDataREAL_LINE_QUANTITY_PERCENT.AsFloat) then
    raise Exception.CreateFmt(SIncorrectLineQuantityPercent, [cdsGridDataREAL_LINE_QUANTITY_PERCENT.DisplayText]);

  CheckDatePeriod(cdsGridDataMOVEMENT_PLAN_BEGIN_DATE, cdsGridDataMOVEMENT_PLAN_END_DATE);

  FinModelLineType:= IntToFinModelLineType(cdsGridDataFIN_MODEL_LINE_TYPE_CODE.AsInteger);

  if (FinModelLineType = fmltSecondary) then
    CheckRequiredField(cdsGridData_FIN_MODEL_LINE_REASON_NAME)
  else
    cdsGridDataFIN_MODEL_LINE_REASON_CODE.Clear;

  if (FinModelLineType = fmltPrimary) then
    cdsGridDataPRIMARY_LINE_QTY_PERCENT.Assign(cdsGridDataLINE_QUANTITY_PERCENT)
  else
    cdsGridDataPRIMARY_LINE_QTY_PERCENT.Clear;
end;

procedure TfmFinOrder.cdsGridDataCalcFields(DataSet: TDataSet);
var
  NowDate: TDateTime;
  Fixing: Real;
  InBaseCurrency: Boolean;
  RemainingBaseQuantity: Real;
begin
  inherited;

  if cdsGridData_FIN_MODEL_LINE_TYPE_ABBREV.IsNull or
     cdsGridDataFIN_MODEL_LINE_NO.IsNull then
    cdsGridData_SHOW_NO.Clear
  else
    cdsGridData_SHOW_NO.AsString:=
      Format('%s.%d', [
        cdsGridData_FIN_MODEL_LINE_TYPE_ABBREV.AsString,
        cdsGridDataFIN_MODEL_LINE_NO.AsInteger
      ]);

  cdsGridData_ARROW.AsBoolean:= (cdsGridDataIN_OUT.AsInteger = -1);

  InBaseCurrency:= actBaseCurrency.Checked;

  if (cdsDataBASE_FINANCIAL_PRODUCT_CODE.AsInteger = cdsDataWORK_FINANCIAL_PRODUCT_CODE.AsInteger) then
    begin
      if InBaseCurrency then
        Fixing:= cdsGridDataWORK_FINANCIAL_PRODUCT_FIXING.AsFloat
      else
        Fixing:= 1;
    end
  else
    begin
      Fixing:= cdsGridDataBASE_FINANCIAL_PRODUCT_FIXING.AsFloat;
      if not InBaseCurrency then
        begin
          if (cdsGridDataWORK_FINANCIAL_PRODUCT_FIXING.AsFloat = 0) then
            Fixing:= 0
          else
            Fixing:= Fixing / cdsGridDataWORK_FINANCIAL_PRODUCT_FIXING.AsFloat;
        end;
    end;

  RemainingBaseQuantity:=
    (cdsDataBASE_QUANTITY.AsFloat * cdsGridDataLINE_QUANTITY_PERCENT.AsFloat) - cdsGridDataREAL_BASE_QUANTITY.AsFloat;

  cdsGridData_REMAINING_QUANTITY.AsVariant:=
    FloatToVar(RemainingBaseQuantity * Fixing);
  cdsGridData_PLAN_QUANTITY.AsFloat:=
    IfThen(InBaseCurrency, cdsGridDataREAL_QUANTITY_BASE_CRNCY.AsFloat, cdsGridDataREAL_QUANTITY.AsFloat) +
    cdsGridData_REMAINING_QUANTITY.AsFloat;

  case cdsGridDataIN_OUT.AsInteger of
    -1:
      cdsGridData_MOVEMENT_PLAN_DATE.AsDateTime:=
        cdsGridDataMOVEMENT_PLAN_BEGIN_DATE.AsDateTime;
    1:
      cdsGridData_MOVEMENT_PLAN_DATE.AsDateTime:=
        cdsGridDataMOVEMENT_PLAN_END_DATE.AsDateTime;
  end;

  NowDate:= ContextDate;

  if (cdsGridData_MOVEMENT_PLAN_DATE.AsDateTime < NowDate) and
     (cdsGridData_REMAINING_QUANTITY.AsFloat > 0) then
    begin
      cdsGridData_LATE_PLAN_QUANTITY.AsVariant:=
        cdsGridData_REMAINING_QUANTITY.AsVariant;

      if (cdsGridData_PLAN_QUANTITY.AsFloat = 0) then
        cdsGridData_LATE_PLAN_QUANTITY_PERCENT.Clear
      else
        cdsGridData_LATE_PLAN_QUANTITY_PERCENT.AsVariant:=
          FloatToVar(cdsGridData_LATE_PLAN_QUANTITY.AsFloat / cdsGridData_PLAN_QUANTITY.AsFloat);

      cdsGridData_LATE_PLAN_DAYS.AsInteger:=
        Trunc(NowDate - cdsGridData_MOVEMENT_PLAN_DATE.AsDateTime);
    end
  else
    begin
      cdsGridData_LATE_PLAN_QUANTITY.Clear;
      cdsGridData_LATE_PLAN_QUANTITY_PERCENT.Clear;
      cdsGridData_LATE_PLAN_DAYS.Clear;
    end;

  if (cdsGridData_MOVEMENT_PLAN_DATE.AsDateTime = cdsGridDataORIGINAL_MOVEMENT_PLAN_DATE.AsDateTime) then
    begin
      if InBaseCurrency then
        cdsGridData_LATE_REAL_QUANTITY.AsVariant:= cdsGridDataLATE_REAL_QUANTITY_BASE_CRNCY.AsVariant
      else
        cdsGridData_LATE_REAL_QUANTITY.AsVariant:= cdsGridDataLATE_REAL_QUANTITY.AsVariant;

      if (cdsGridData_PLAN_QUANTITY.AsFloat = 0) then
        cdsGridData_LATE_REAL_QUANTITY_PERCENT.Clear
      else
        cdsGridData_LATE_REAL_QUANTITY_PERCENT.AsVariant:=
          FloatToVar(cdsGridData_LATE_REAL_QUANTITY.AsFloat / cdsGridData_PLAN_QUANTITY.AsFloat);

      cdsGridData_LATE_REAL_DAYS.AsVariant:= cdsGridDataLATE_REAL_DAYS.AsVariant;
    end
  else
    begin
      cdsGridData_LATE_REAL_QUANTITY.Clear;
      cdsGridData_LATE_REAL_QUANTITY_PERCENT.Clear;
      cdsGridData_LATE_REAL_DAYS.Clear;
    end;
end;

procedure TfmFinOrder.cdsGridDataFIN_MODEL_LINE_TYPE_CODEChange(Sender: TField);
begin
  inherited;

  if (cdsGridData.State = dsInsert) and
     not FLoadingSpecFinModel.IsEntered then
    cdsGridDataFIN_MODEL_LINE_NO.AsInteger:=
      GetMaxFinModelLineNo(Sender.AsInteger) + 1;

  cdsGridDataFIN_MODEL_LINE_TYPE_ABBREV.AsVariant:=
    cdsFinModelLineTypes.Lookup('FIN_MODEL_LINE_TYPE_CODE', Sender.AsInteger, 'FIN_MODEL_LINE_TYPE_ABBREV');
end;

procedure TfmFinOrder.cdsGridDataFIN_STORE_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(Sender, nil, cdsGridDataFIN_STORE_IDENTIFIER);
end;

procedure TfmFinOrder.cdsGridDataFIN_STORE_IDENTIFIERGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  FinStoreFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmFinOrder.cdsGridDataLINE_QUANTITY_PERCENTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmFinOrder.cdsGridDataLINE_QUANTITY_PERCENTSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  PercentFieldSetText(Sender, Text);
end;

procedure TfmFinOrder.cdsGridDataMOVEMENT_DATEValidate(Sender: TField);
begin
  inherited;
  if Sender.IsNull then
    DoFieldRequiredError(Sender);
end;

procedure TfmFinOrder.cdsGridDataMOVEMENT_DURATION_DAYSChange(Sender: TField);
begin
  inherited;
  CalcMovementPlanDates;
end;

procedure TfmFinOrder.cdsGridDataMOVEMENT_OFFSET_DAYSChange(Sender: TField);
begin
  inherited;

  CalcMovementPlanDates;

  FSettingMovementDateOffset.TempEnter /
    procedure begin
      cdsGridDataABS_MOVEMENT_OFFSET_DAYS.AsInteger:=
        Abs(cdsGridDataMOVEMENT_OFFSET_DAYS.AsInteger);
      cdsGridDataMOVEMENT_OFFSET_DAYS_SIGN.AsInteger:=
        Sign(cdsGridDataMOVEMENT_OFFSET_DAYS.AsInteger);

      LoadCurrencyFixings;
    end;
end;

procedure TfmFinOrder.cdsGridDataMOVEMENT_OFFSET_DAYS_SIGNChange(
  Sender: TField);
begin
  inherited;

  FSettingMovementDateOffset.TempEnter /
    procedure begin
      if (cdsGridDataMOVEMENT_OFFSET_DAYS_SIGN.AsInteger = 0) then
        begin
          cdsGridDataMOVEMENT_OFFSET_DAYS.AsInteger:= 0;
          cdsGridDataABS_MOVEMENT_OFFSET_DAYS.AsInteger:= 0;
        end
      else
        cdsGridDataMOVEMENT_OFFSET_DAYS.AsInteger:=
          cdsGridDataMOVEMENT_OFFSET_DAYS_SIGN.AsInteger *
          cdsGridDataABS_MOVEMENT_OFFSET_DAYS.AsInteger;

      LoadCurrencyFixings;
    end;
end;

procedure TfmFinOrder.cdsGridDataMOVEMENT_PLAN_BEGIN_DATEChange(Sender: TField);
begin
  inherited;

  FSettingDateOffsetOrMovementDate.TempEnter /
    procedure begin
      if not cdsGridDataMOVEMENT_PLAN_BEGIN_DATE.IsNull then
        cdsGridDataMOVEMENT_PLAN_END_DATE.AsDateTime:=
          cdsGridDataMOVEMENT_PLAN_BEGIN_DATE.AsDateTime +
          cdsGridDataMOVEMENT_DURATION_DAYS.AsInteger;
    end;

  CalcMovementOffsetDays;
end;

procedure TfmFinOrder.cdsGridDataMOVEMENT_PLAN_END_DATEChange(Sender: TField);
begin
  inherited;

  FSettingDateOffsetOrMovementDate.TempEnter /
    procedure begin
      if not cdsGridDataMOVEMENT_PLAN_END_DATE.IsNull then
        cdsGridDataMOVEMENT_PLAN_BEGIN_DATE.AsDateTime:=
          cdsGridDataMOVEMENT_PLAN_END_DATE.AsDateTime -
          cdsGridDataMOVEMENT_DURATION_DAYS.AsInteger;
    end;

  CalcMovementOffsetDays;
end;

procedure TfmFinOrder.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataRFML_OBJECT_BRANCH_CODE.AsInteger:= LoginContext.LocalBranchCode;
  cdsGridDataRFML_OBJECT_CODE.AsInteger:= FMaxRfmlObjectCode + 1;
//    VarToInt(cdsGridData_MAX_RFML_OBJECT_CODE.AsVariant) + 1;
  cdsGridDataFIN_ORDER_CODE.AsInteger:= cdsDataFIN_ORDER_CODE.AsInteger;
  cdsGridDataPARTNER_CODE.Assign(cdsDataPARTNER_CODE);

  if (cdsDataFIN_PROCESS_CODE.AsInteger in [pFinVtrRF, pFinVtrOF]) then
    cdsGridDataIN_OUT.AsInteger:= -1
  else
    cdsGridDataIN_OUT.AsInteger:= cdsDataIN_OUT.AsInteger;

  cdsGridDataOVERRIDE_DOCUMENT.AsBoolean:= False;

  FSettingMovementDateOffset.TempEnter /
    procedure begin
      cdsGridDataMOVEMENT_OFFSET_DAYS_SIGN.AsInteger:= 0;

      if not VarIsEmpty(FCreateLikeFieldValues) then
        SetRecordData(DataSet, FCreateLikeFieldValues, False);
    end;

  cdsGridDataIS_ANNULED.AsBoolean:= False;
end;

procedure TfmFinOrder.cdsGridDataREAL_LINE_QUANTITY_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmFinOrder.cdsPartnerAccountsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsPartnerAccounts.Params.ParamByName('COMPANY_CODE').AsInteger:=
    cdsDataPARTNER_CODE.AsInteger;
end;

procedure TfmFinOrder.ClearMaxFinModelLineNos;
begin
  FMaxFinModelLineNos.Clear;
  FMaxRfmlObjectCode:= 0;
end;

procedure TfmFinOrder.CloseDataSets;
begin
  inherited;

  cdsFMMovementOffsetTypes.Close;
  cdsCurrencyRatesCache.Close;
  cdsPartnerAccounts.Close;
  cdsFinProcesses.Close;
  cdsBranches.Close;
  cdsPriorities.Close;
  cdsPriorities.Close;
  cdsFinModelLineReasons.Close;
  cdsFinModelLineTypes.Close;
  cdsDateOffsetSigns.Close;
end;

class function TfmFinOrder.CloseOrder(
  const AFinOrderCode: Integer): TOrderClosingResult;
var
  f: TfmFinOrder;
begin
  f:= CreateEx;
  try
    f.SetDataParams(nil, nil, emEdit, doNone, False, True);
    f.cdsData.Params.ParamByName('FIN_ORDER_CODE').AsInteger:= AFinOrderCode;
    f.FCloseOrderMode:= True;
    f.InternalShowForm;

    if f.FCloseOrderMode then
      Result:= ocrClosed
    else
      begin
        if f.IsDataModified then
          Result:= ocrModified
        else
          Result:= ocrAborted;
      end;
  finally
    f.ReleaseForm;
  end;  { try }
end;

function TfmFinOrder.CloseOrderEnabled: Boolean;
begin
  Result:=
    (EditMode = emEdit) and
    cdsData.Active and
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

procedure TfmFinOrder.DoApplyUpdates;
var
  OldFinOrderNo: Integer;
begin
  if not cdsDataACTIVATE_EMPLOYEE_CODE.IsNull then
    CheckActiveModel;

  OldFinOrderNo:= cdsDataFIN_ORDER_NO.AsInteger;

  inherited;

  if (cdsDataFIN_ORDER_NO.AsInteger <> OldFinOrderNo) then
    ShowMessageFmtEx(SNewFinOrderNo, [cdsDataFIN_ORDER_NO.AsInteger]);
end;

procedure TfmFinOrder.dsDataDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if (Field = cdsDataBASE_DATE) or
     (Field = cdsDataPLAN_BEGIN_DATE) or
     (Field = cdsDataPLAN_END_DATE) or
     (Field = cdsDataCREATE_DATE) or
     (Field = cdsDataCHANGE_DATE) then
    UpdateTimeGraphic;
end;

procedure TfmFinOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FActivateModelMode or FCloseOrderMode then
    ModalResult:= mrOK;

  inherited;
end;

procedure TfmFinOrder.FormCreate(Sender: TObject);
begin
  inherited;

  FMaxFinModelLineNos:= TStringList.Create;

  EditFormClass:= TfmRealFinModelLine;

  RegisterDateFields(cdsData);
  RegisterDateFields(cdsGridData);

  frPlanBeginDate.FieldNames:= 'PLAN_BEGIN_DATE';
  frExecDept.FieldNames:= 'EXEC_DEPT_CODE';
  frWorkProduct.FieldNames:= 'WORK_FINANCIAL_PRODUCT_CODE';
  frWorkProduct.ProductClass:= pcFinancial;
  frWorkProduct.TreeDetailSelection:= tdsInstance;
  frPlanEndDate.FieldNames:= 'PLAN_END_DATE';
  frAdministrativeProcessObjectBaseDate.FieldNames:= 'BASE_DATE';
  frAdministrativeProcessDocumentDate.FieldNames:= 'DOCUMENT_DATE';
  frBorderProcessObjectBaseDate.FieldNames:= 'BASE_DATE';
  frBorderProcessDocumentDate.FieldNames:= 'DOCUMENT_DATE';
  frPartner.FieldNames:= 'PARTNER_CODE';
  frPartner.PartnerStatusVisible:= True;
  frPartner.ShownCompanyStatuses:= AllCompanyStatuses - [csExReal, csExNotReal];
  frBorderProcessObjectProduct.FieldNames:= 'BND_PO_PRODUCT_CODE';
  frCreateDate.FieldNames:= 'CREATE_DATE';
  frChangeDate.FieldNames:= 'CHANGE_DATE';
  frBudgetClass.FieldNames:= 'BUDGET_PRODUCT_CODE';
  frBudgetClass.ProductClass:= pcBudget;
  frFinClass.TreeDetailSelection:= tdsInstance;

  btnBaseCurrency.Hint:= btnBaseCurrency.Hint + FormatBaseCurrencyAbbrevString(' /%s/');

  cdsGridData.Filtered:= not actShowAnnuled.Checked;
end;

procedure TfmFinOrder.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FMaxFinModelLineNos);
end;

procedure TfmFinOrder.FormShow(Sender: TObject);
begin
  inherited;

  actForm.Update;

  if FActivateModelMode or FCloseOrderMode then
    begin
      try
        Left:= -(Width + 100);

        if FActivateModelMode then
          InternalActivateModel;

        if FCloseOrderMode then
          InternalCloseOrder;

        PostMessage(Handle, WM_CLOSE, 0, 0);
      except
        FActivateModelMode:= False;
        FCloseOrderMode:= False;
        Screen.Cursor:= crDefault;
        Application.HandleException(Self);
      end;
    end;

  UpdateTimeGraphic;
end;

procedure TfmFinOrder.GetArrowsInfo(Infos: TObjectList<TArrowInfo>);

  function FixDate(ADateField: TAbmesSQLTimeStampField): TDateTime;
  begin
    Assert(Assigned(ADateField));

    if ADateField.IsNull then
      Result:= ContextDate
    else
      Result:= ADateField.AsDateTime;
  end;

begin
  Infos.Add(TArrowInfo.Create(
    saBaseDate,
    tBaseDate,
    not cdsDataBASE_DATE.IsNull,
    cdsDataBASE_DATE.AsDateTime
  ));

  Infos.Add(TArrowInfo.Create(
    saPlanBeginDate,
    tPlanBeginDate,
    not cdsDataPLAN_BEGIN_DATE.IsNull,
    cdsDataPLAN_BEGIN_DATE.AsDateTime,
    -cdsDataBEGIN_DATE_DIFF.AsFloat,
    shpPlanBeginDateDiff
  ));

  Infos.Add(TArrowInfo.Create(
    saPlanEndDate,
    tPlanEndDate,
    not cdsDataPLAN_END_DATE.IsNull,
    cdsDataPLAN_END_DATE.AsDateTime,
    Max(-cdsDataIN_END_DATE_DIFF.AsFloat, -cdsDataOUT_END_DATE_DIFF.AsFloat),
    shpPlanEndDateDiff
  ));

  Infos.Add(TArrowInfo.Create(
    saCreateDate,
    tCreateDate,
    not cdsDataCREATE_DATE.IsNull,
    cdsDataCREATE_DATE.AsDateTime
  ));

  Infos.Add(TArrowInfo.Create(
    saChangeDate,
    tChangeDate,
    not cdsDataCHANGE_DATE.IsNull,
    cdsDataCHANGE_DATE.AsDateTime
  ));
end;

procedure TfmFinOrder.GetDateFields(Fields: TList<TField>);
begin
  Fields.Add(cdsDataBASE_DATE);
  Fields.Add(cdsDataPLAN_BEGIN_DATE);
  Fields.Add(cdsDataPLAN_END_DATE);
  Fields.Add(cdsDataCREATE_DATE);
  Fields.Add(cdsDataCHANGE_DATE);
end;

function TfmFinOrder.GetDelRecordEnabled: Boolean;
begin
  Result:=
    inherited GetDelRecordEnabled and
    CanModifyData and
    (
      LoginContext.HasAnyUserActivity([uaRealFinancialModelEdit, uaRFMLEditBeforeAndAfterActivation]) or
      (cdsDataACTIVATE_EMPLOYEE_CODE.IsNull and LoginContext.HasUserActivity(uaRFMLEditBeforeActivation))
    );
end;

function TfmFinOrder.GetOriginalFormCaption: string;
begin
  if FModelMode then
    Result:= SModelCaption
  else
    Result:= inherited GetOriginalFormCaption;
end;

function TfmFinOrder.GetRecordReadOnly: Boolean;
begin
  Result:=
    FModelMode and
    not (
      LoginContext.HasUserActivity(uaRealFinancialModelEdit) or
      LoginContext.HasUserActivity(uaRFMLEditBeforeAndAfterActivation) or
      ( cdsDataACTIVATE_EMPLOYEE_CODE.IsNull and
        LoginContext.HasUserActivity(uaRFMLEditBeforeActivation) )
    )
end;

function TfmFinOrder.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    inherited GetGridRecordReadOnly or
    (not CanModifyData) or
    cdsGridDataIS_ANNULED.AsBoolean or
    (cdsGridDataREAL_QUANTITY.AsFloat > 0) or
    not (
      LoginContext.HasAnyUserActivity([uaRealFinancialModelEdit, uaRFMLEditBeforeAndAfterActivation]) or
      (cdsDataACTIVATE_EMPLOYEE_CODE.IsNull and LoginContext.HasUserActivity(uaRFMLEditBeforeActivation))
    );
end;

function TfmFinOrder.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertRecordEnabled and
    LoginContext.HasUserActivity(uaRealFinancialModelEdit) and
    CanModifyData;
end;

function TfmFinOrder.GetMaxFinModelLineNo(AModelLineTypeCode: Integer): Integer;
begin
  Result:= StrToIntDef(FMaxFinModelLineNos.Values[IntToStr(AModelLineTypeCode)], 0);
end;

procedure TfmFinOrder.grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  inherited;
  if cdsGridDataIS_ANNULED.AsBoolean then
    Background:= $00E1E1E1;
end;

procedure TfmFinOrder.Initialize;
begin
  inherited;

  cdsFinProcesses.Filtered:= (EditMode = emInsert);

  UpdateTimeGraphic;
  SetColumns;

  cdsBranches.Filtered:= True;

  if not FModelMode then
    BorderIcons:= BorderIcons - [biMaximize];

  FInitialStatusCode:= cdsDataSTATUS_CODE.AsInteger;
end;

procedure TfmFinOrder.InternalActivateModel;
begin
  CheckOrderRequiredFields;
  CheckBOIOrderConfirmedOnActivate;
  CheckActiveModel;
  CheckEditMode(cdsData);
  cdsDataACTIVATE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;

  if (VarToDateTime(cdsGridData_MIN_MOVEMENT_PLAN_BEGIN_DATE.AsVariant) < ContextDate) then
    cdsDataSTATUS_CODE.AsInteger:= fosActivatedLate
  else
    cdsDataSTATUS_CODE.AsInteger:= fosActivated;
end;

procedure TfmFinOrder.InternalCloseOrder;
begin
  CheckOrderRequiredFields;
  CheckEditMode(cdsData);
  cdsDataCLOSE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
end;

procedure TfmFinOrder.CheckActiveModel;
begin
  cdsGridData.TempFilter / procedure
    begin
      if (cdsDataFIN_PROCESS_CODE.AsInteger in [pFinVtrRF, pFinVtrOF]) then
        begin
          if (cdsGridData.RecordCount <> 2) or
             (LargeZero(VarToFloat(cdsGridData_MIN_PRIMARY_LINE_QTY_PERCENT.AsVariant), Eps) <> 1) or
             (LargeZero(VarToFloat(cdsGridData_MAX_PRIMARY_LINE_QTY_PERCENT.AsVariant), Eps) <> 1) or
             (LargeZero(VarToFloat(cdsGridData_MIN_IN_OUT.AsVariant), Eps) <> -1) or
             (LargeZero(VarToFloat(cdsGridData_MAX_IN_OUT.AsVariant), Eps) <> 1) then
            raise Exception.Create(SIncorrectVtrModel);
        end
      else
        begin
          if (LargeZero(VarToFloat(cdsGridData_SUM_PRIMARY_LINE_QTY_PERCENT.AsVariant) - 1, Eps) <> 0) then
            raise Exception.Create(SIncorrectPrimaryLineQtyPercentSum);
        end;
    end;
end;

procedure TfmFinOrder.CheckBOIOrderConfirmedOnActivate;
begin
  if (not cdsDataBOI_ORDER_CODE.IsNull) and
     not InRange(cdsDataBOIO_STATUS_CODE.AsInteger, PlannedBOIOrderStatusCode, ClosedBOIOrderStatusCode) then
    raise Exception.CreateFmt(SBOIOrderNotConfirmed, [SBOIOrderObjectAbbrev]);
end;

procedure TfmFinOrder.LoadCurrencyFixings;
var
  NowDate: TDateTime;
begin
  NowDate:= ContextDate;

  cdsGridDataBASE_FINANCIAL_PRODUCT_FIXING.AsFloat:=
    GetBaseCurrencyFixing(cdsData_BASE_CURRENCY_CODE.AsInteger, NowDate);
  cdsGridDataWORK_FINANCIAL_PRODUCT_FIXING.AsFloat:=
    GetBaseCurrencyFixing(cdsData_WORK_CURRENCY_CODE.AsInteger, NowDate);
end;

function TfmFinOrder.GetBaseCurrencyFixing(CurrencyCode: Integer; RateDate: TDateTime): Real;
begin
  cdsCurrencyRatesCache.First;
  if not cdsCurrencyRatesCache.Locate('CURRENCY_CODE;RATE_DATE', VarArrayOf([CurrencyCode, RateDate]), []) then
    begin
      cdsCurrencyRatesCache.Append;
      try
        cdsCurrencyRatesCacheCURRENCY_CODE.AsInteger:= CurrencyCode;
        cdsCurrencyRatesCacheRATE_DATE.AsDateTime:= RateDate;
        cdsCurrencyRatesCacheFIXING.AsFloat:= dmMain.SvrCommon.GetBaseCurrencyFixing(CurrencyCode, RateDate);

        cdsCurrencyRatesCache.Post;
      except
        cdsCurrencyRatesCache.Cancel;
        raise;
      end;
    end;

  Result:= cdsCurrencyRatesCacheFIXING.AsFloat;
end;

function TfmFinOrder.CompleteModelEnabled: Boolean;
begin
  Result:=
    FModelMode and
    LoginContext.IsAutoCompleteFinOrderVisible and
    (cdsDataSTATUS_CODE.AsInteger in [fosActivated, fosActivatedLate, fosStarted]);
end;

procedure TfmFinOrder.OpenDataSets;
begin
  cdsDateOffsetSigns.CreateDataSet;
  cdsDateOffsetSigns.AppendRecord([-1, SBefore]);
  cdsDateOffsetSigns.AppendRecord([0]);
  cdsDateOffsetSigns.AppendRecord([1, SAfter]);

  cdsFinProcesses.Open;
  cdsBranches.Open;
  cdsPriorities.Open;
  cdsPriorities.Open;
  cdsFinModelLineTypes.Open;
  cdsFinModelLineReasons.Open;
  cdsCurrencyRatesCache.CreateDataSet;
  cdsFMMovementOffsetTypes.Open;

  inherited;

  cdsPartnerAccounts.Close;
  cdsPartnerAccounts.Open;
end;

procedure TfmFinOrder.PercentFieldsGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmFinOrder.RecalcGridDataFields;
var
  b: TBookmark;
begin
  cdsGridData.DisableControls;
  try
    b:= cdsGridData.Bookmark;
    try
      cdsGridData.First;
      cdsGridData.Last;
    finally
      cdsGridData.Bookmark:= b;
    end;  { try }
  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

procedure TfmFinOrder.SetChangeData(ADateTime: TDateTime);
begin
  cdsDataCHANGE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataCHANGE_DATE.AsDateTime:= DateOf(ADateTime);
  cdsDataCHANGE_TIME.AsDateTime:= TimeOf(ADateTime);
end;

procedure TfmFinOrder.SetColumns;
begin
  grdData.Columns.BeginUpdate;
  try
    // _LATE_PLAN_QUANTITY
    grdData.Columns[4].Visible:= (not actRealLate.Checked) and (not actPercent.Checked);
    // _LATE_PLAN_QUANTITY_PERCENT
    grdData.Columns[5].Visible:= (not actRealLate.Checked) and actPercent.Checked;
    // _LATE_PLAN_DAYS
    grdData.Columns[6].Visible:= (not actRealLate.Checked);
    // _LATE_REAL_QUANTITY
    grdData.Columns[7].Visible:= actRealLate.Checked and (not actPercent.Checked);
    // _LATE_REAL_QUANTITY_PERCENT
    grdData.Columns[8].Visible:= actRealLate.Checked and actPercent.Checked;
    // _LATE_REAL_DAYS
    grdData.Columns[9].Visible:= actRealLate.Checked;
  finally
    grdData.Columns.EndUpdate;
  end;
end;

procedure TfmFinOrder.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled, AModelMode: Boolean;
  ARfmlObjectBranchCode, ARfmlObjectCode: Integer);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode,
    ADefaultsOrigin, AFilterFormEnabled);
  FModelMode:= AModelMode;
  FRfmlObjectBranchCode:= ARfmlObjectBranchCode;
  FRfmlObjectCode:= ARfmlObjectCode;
end;

procedure TfmFinOrder.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if FModelMode or
     (AFrame = frPlanBeginDate) or
     (AFrame = frPlanEndDate) or
     (AFrame = frBorderProcessObjectBaseDate) or
     (AFrame = frBorderProcessDocumentDate) or
     (AFrame = frCreateDate) or
     (AFrame = frChangeDate) or
     (AFrame = frBorderProcessObjectProduct) or
     (AFrame = frBudgetClass) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  if (AFrame = frPartner) then
    begin
      AFrame.ReadOnly:=
        (EditMode = emReadOnly) or
        (not cdsData_FIN_PROCESS_IS_MANUALLY_USABLE.AsBoolean) or
        (not CanModifyData) or
        (not cdsGridData.IsEmpty);
      Exit;
    end;  { if }

  if (AFrame = frAdministrativeProcessObjectBaseDate) then
    begin
      AFrame.ReadOnly:=
        (EditMode = emReadOnly) or
        (not CanModifyData) or
        ( (cdsDataFIN_PROCESS_CODE.AsInteger in [pFinAdm, pFinVtrRF, pFinVtrOF]) and
          (not cdsDataDOCUMENT_DATE.IsNull) );
      Exit;
    end;  { if }

  AFrame.ReadOnly:=
    (EditMode = emReadOnly) or
    not CanModifyData;
end;

class function TfmFinOrder.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled, AModelMode: Boolean;
  ARfmlObjectBranchCode, ARfmlObjectCode: Integer): Boolean;
var
  f: TfmFinOrder;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled,
      AModelMode, ARfmlObjectBranchCode, ARfmlObjectCode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

class function TfmFinOrder.ShowModel(const AFinOrderCode: Integer;
  AEditMode: TEditMode): Boolean;
var
  f: TfmFinOrder;
begin
  f:= CreateEx;
  try
    f.SetDataParams(nil, nil, AEditMode, doNone, False, True);
    f.cdsData.Params.ParamByName('FIN_ORDER_CODE').AsInteger:= AFinOrderCode;
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmFinOrder.UpdateTimeGraphic;
var
  StartDatePoint: Integer;
  EndDatePoint: Integer;
  DateCoef: Real;
  MinDate: TDateTime;
  MaxDate: TDateTime;
  ArrowsInfo: TObjectList<TArrowInfo>;

  procedure GetMinMaxDate(out MinDate, MaxDate: TDateTime);
  var
    Dates: array[1..7] of TDateTime;
    DateCount: Integer;
    i: Integer;
    Fields: TList<TField>;
    f: TField;
  begin
    DateCount:= 1;
    Dates[DateCount]:= ContextDate;

    Fields:= TList<TField>.Create;
    try
      GetDateFields(Fields);

      for f in Fields do
        if not f.IsNull then
          begin
            Inc(DateCount);
            Dates[DateCount]:= f.AsDateTime;
          end;   { if }
    finally
      FreeAndNil(Fields);
    end;

    MinDate:= Dates[1];
    MaxDate:= Dates[1];

    for i:= 2 to DateCount do
      begin
        if (Dates[i] < MinDate) then
          MinDate:= Dates[i];

        if (Dates[i] > MaxDate) then
          MaxDate:= Dates[i];
      end;   { for }
  end;

  procedure SetArrow(AArrow: TAbmesArrow; ALabel: TControl;
    AVisible: Boolean;
    ADate: TDateTime;
    ALateness: Real = 0;
    ALatenessShape: TShape = nil);   { Lateness in days}
  const
    MaxOverDate = 10;
  var
    DateDiff: Real;
    NewPoint: Real;
    DatePoint: Integer;
    NewWidthReal: Real;
    NewWidthInt: Integer;
  begin
    SetVisible([AArrow, ALabel], AVisible);
    if Assigned(ALatenessShape) then
      ALatenessShape.Visible:= AVisible;

    if not AVisible then Exit;  // niama nujda ot smetka shtom ne se vijda

    DateDiff:= ADate - MinDate;
    NewPoint:= StartDatePoint + DateDiff * DateCoef;

    DatePoint:= Trunc(NewPoint);
    if (Frac(NewPoint) >= 0.5) then Inc(DatePoint);

    if (DatePoint > EndDatePoint) then
      DatePoint:= EndDatePoint;

    with AArrow do
      Left:= DatePoint - Points[1].X;

    with ALabel do
      Left:= DatePoint - (Width div 2);

    if Assigned(ALatenessShape) then
      with ALatenessShape do
        begin
          Left:= AArrow.Left + AArrow.Points[1].X + 1;

          if (ALateness < 0) then
            Width:= 0
          else
            begin
              NewWidthReal:= ALateness * DateCoef;
               if (0 < NewWidthReal) and (NewWidthReal < 1) then
                 NewWidthInt:= 1
               else
                 begin
                   NewWidthInt:= Trunc(NewWidthReal);
                   if (Frac(NewWidthReal) >= 0.5) then
                     NewWidthInt:= NewWidthInt + 1;
                 end;

               if (Left + NewWidthInt > EndDatePoint + MaxOverDate) then
                 Width:= EndDatePoint + MaxOverDate - Left
               else
                 Width:= NewWidthInt;
            end;   { if }
        end;   { if, with }
  end;

var
  ai: TArrowInfo;

begin
  // цялата работа не я скалираме

  shpTimeStart.BoundsRect:= Rect(13, 15, 19, 59);

  saTimeLine.BoundsRect:=
    Rect(
      shpTimeStart.BoundsRect.Right-1,
      shpTimeStart.Top,
      pnlTimeLine.Width - 8,
      shpTimeStart.BoundsRect.Bottom
    );
  saTimeLine.Points[1].X:= saTimeLine.Width;

  StartDatePoint:= saTimeLine.Left + 13;  // =31
  EndDatePoint:= saTimeLine.Left + saTimeLine.Width - 46;  // =675;

  shpPlanEndDateDiff.Height:= 4;
  shpPlanEndDateDiff.Top:= 35;
  shpPlanBeginDateDiff.Height:= 4;
  shpPlanBeginDateDiff.Top:= 38;

  GetMinMaxDate(MinDate, MaxDate);

  if (MaxDate = MinDate) then
    DateCoef:= 0
  else
    DateCoef:=
      (EndDatePoint - StartDatePoint + 1) /
      (MaxDate - MinDate);

  ArrowsInfo:= TObjectList<TArrowInfo>.Create;
  try
    GetArrowsInfo(ArrowsInfo);

    for ai in ArrowsInfo do
      begin
        SetArrow(
          ai.TheArrow, ai.TheLabel, ai.TheVisible, ai.TheDate, ai.TheLateness, ai.TheLatenessShape);
        ai.TheArrow.Top:= 41;
        ai.TheLabel.Top:= ai.TheArrow.Top + ai.TheArrow.Points[1].Y;
        ai.TheLabel.Left:= ai.TheLabel.Left - 20 + ScalePixels(20);
      end;
  finally
    FreeAndNil(ArrowsInfo);
  end;

  SetArrow(saToday, lToday, True, ContextDate);
  saToday.Top:= 6;

  with saToday do
    if (Left < 100) then
      begin
        Points[0].X:= Width;
        lToday.Left:= Left + Width + 3;
      end
    else
      begin
        Points[0].X:= 0;
        lToday.Left:= Left - lToday.Width - 3;
      end;
end;

procedure TfmFinOrder.CalcMaxFinModelLineNos;
var
  b: TBookmark;
  FinModelLineTypeCode: Integer;
  SaveFiltered: Boolean;
begin
  ClearMaxFinModelLineNos;

  cdsGridData.DisableControls;
  try
    b:= cdsGridData.Bookmark;
    try
      SaveFiltered:= cdsGridData.Filtered;
      cdsGridData.Filtered:= False;
      try
        FMaxRfmlObjectCode:= VarToInt(cdsGridData_MAX_RFML_OBJECT_CODE.AsVariant);

        FinModelLineTypeCode:= 0;
        cdsGridData.First;
        while not cdsGridData.Eof do
          begin
            if (FinModelLineTypeCode <> cdsGridDataFIN_MODEL_LINE_TYPE_CODE.AsInteger) then
              begin
                FinModelLineTypeCode:= cdsGridDataFIN_MODEL_LINE_TYPE_CODE.AsInteger;
                FMaxFinModelLineNos.Values[IntToStr(FinModelLineTypeCode)]:=
                  IntToStr(VarToInt(cdsGridData_MAX_FIN_MODEL_LINE_NO.AsVariant));
              end;

            cdsGridData.Next;
          end;  { while }
      finally
        cdsGridData.Filtered:= SaveFiltered;
      end;
    finally
      cdsGridData.Bookmark:= b;
    end;  { try }
  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

procedure TfmFinOrder.CalcMovementOffsetDays;
begin
  FSettingDateOffsetOrMovementDate.TempEnter /
    procedure begin
      case IntToFMMovementOffsetType(cdsDataFM_MOVEMENT_OFFSET_TYPE_CODE.AsInteger) of
        fmmotBeginning:
          if not cdsGridDataMOVEMENT_PLAN_BEGIN_DATE.IsNull then
            cdsGridDataMOVEMENT_OFFSET_DAYS.AsInteger:=
              Trunc(cdsGridDataMOVEMENT_PLAN_BEGIN_DATE.AsDateTime - cdsDataBASE_DATE.AsDateTime);

        fmmotEnd:
          if not cdsGridDataMOVEMENT_PLAN_END_DATE.IsNull then
            cdsGridDataMOVEMENT_OFFSET_DAYS.AsInteger:=
              Trunc(cdsGridDataMOVEMENT_PLAN_END_DATE.AsDateTime - cdsDataBASE_DATE.AsDateTime);
      end;
    end;
end;

procedure TfmFinOrder.CalcMovementPlanDates;
begin
  FSettingDateOffsetOrMovementDate.TempEnter /
    procedure begin
      cdsGridDataMOVEMENT_PLAN_BEGIN_DATE.AsDateTime:=
        cdsDataBASE_DATE.AsDateTime +
        cdsGridDataMOVEMENT_OFFSET_DAYS.AsInteger -
        IfThen(
          (IntToFMMovementOffsetType(cdsDataFM_MOVEMENT_OFFSET_TYPE_CODE.AsInteger) = fmmotEnd),
          cdsGridDataMOVEMENT_DURATION_DAYS.AsInteger);

      cdsGridDataMOVEMENT_PLAN_END_DATE.AsDateTime:=
        cdsDataBASE_DATE.AsDateTime +
        cdsGridDataMOVEMENT_OFFSET_DAYS.AsInteger +
        IfThen(
          (IntToFMMovementOffsetType(cdsDataFM_MOVEMENT_OFFSET_TYPE_CODE.AsInteger) = fmmotBeginning),
          cdsGridDataMOVEMENT_DURATION_DAYS.AsInteger);
    end;
end;

function TfmFinOrder.MoveDownLineEnabled: Boolean;
begin
  Result:=
    ActivateModelEnabled and
    (not cdsGridData.IsEmpty) and
    (cdsGridDataFIN_MODEL_LINE_NO.AsInteger <
     VarToInt(cdsGridData_MAX_FIN_MODEL_LINE_NO.AsVariant));
end;

procedure TfmFinOrder.MoveLine(MoveUp: Boolean);

  procedure SetFinModelLineNo(ARfmlObjectBranchCode, ARfmlObjectCode,
    ANewFinModelLineNo: Integer);
  begin
    Assert(cdsGridData.Locate('RFML_OBJECT_BRANCH_CODE; RFML_OBJECT_CODE', VarArrayOf([ARfmlObjectBranchCode, ARfmlObjectCode]), []));
    cdsGridData.Edit;
    try
      cdsGridDataFIN_MODEL_LINE_NO.AsInteger:= ANewFinModelLineNo;
      cdsGridData.Post;
    except
      cdsGridData.Cancel;
      raise;
    end;
  end;  { SetLineNo }

var
  SaveCursor: TCursor;
  CurrentRfmlObjectBranchCode, CurrentRfmlObjectCode: Integer;
  CurrentFinModelLineNo: Integer;
  OtherRfmlObjectBranchCode, OtherRfmlObjectCode: Integer;
  OtherFinModelLineNo: Integer;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsGridData.DisableControls;
    try
      CurrentRfmlObjectBranchCode:= cdsGridDataRFML_OBJECT_BRANCH_CODE.AsInteger;
      CurrentRfmlObjectCode:= cdsGridDataRFML_OBJECT_CODE.AsInteger;
      CurrentFinModelLineNo:= cdsGridDataFIN_MODEL_LINE_NO.AsInteger;

      if MoveUp then
        begin
          Assert(MoveUpLineEnabled);
          cdsGridData.Prior;
        end
      else
        begin
          Assert(MoveDownLineEnabled);
          cdsGridData.Next;
        end;

      OtherRfmlObjectBranchCode:= cdsGridDataRFML_OBJECT_BRANCH_CODE.AsInteger;
      OtherRfmlObjectCode:= cdsGridDataRFML_OBJECT_CODE.AsInteger;
      OtherFinModelLineNo:= cdsGridDataFIN_MODEL_LINE_NO.AsInteger;

      SetFinModelLineNo(CurrentRfmlObjectBranchCode, CurrentRfmlObjectCode, -1);
      SetFinModelLineNo(OtherRfmlObjectBranchCode, OtherRfmlObjectCode, CurrentFinModelLineNo);
      SetFinModelLineNo(CurrentRfmlObjectBranchCode, CurrentRfmlObjectCode, OtherFinModelLineNo);
    finally
      cdsGridData.EnableControls;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

function TfmFinOrder.MoveUpLineEnabled: Boolean;
begin
  Result:=
    ActivateModelEnabled and
    (not cdsGridData.IsEmpty) and
    (cdsGridDataFIN_MODEL_LINE_NO.AsInteger >
     VarToInt(cdsGridData_MIN_FIN_MODEL_LINE_NO.AsVariant));
end;

end.
