unit fGroupSale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, ParamDataSet, ActnList, Db, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, Mask, JvToolEdit, fGridForm, JvDBLookup, uClientTypes,
  Menus, DBGridEh, AbmesDBGrid, JvDBControls, DBCtrls, DBClient, JvButtons,
  AbmesClientDataSet, GridsEh, AbmesFields, AbmesDBCheckBox, ComCtrls,
  ToolWin, dDocClient, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateFieldEditFrame, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameLabeled, fPartnerFieldEditFrameBald, JvExControls,
  JvComponent, JvCaptionButton, JvExExtCtrls, JvDBRadioPanel,
  fPartnerExFieldEditFrame, JvComponentBase, fDateIntervalFrame, JvExtComponent,
  JvExMask, JvDBLookupComboEdit, JvExStdCtrls, JvDBCombobox, JvCombobox, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, System.Actions, EhLibVCL, DBAxisGridsEh;


type
  TfmGroupSale = class(TGridForm)
    pnlGroupData: TPanel;
    cdsDataREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsDataREQUEST_NO: TAbmesFloatField;
    cdsDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsDataSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
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
    cdsDataSG_PRIORITY_CODE: TAbmesFloatField;
    cdsDataSG_SALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsDataSG_CLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsDataSG_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDataSG_SALE_GROUP_NO: TAbmesFloatField;
    cdsDataS_CLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsDataS_REQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    cdsDataS_REQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    cdsDataS_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDataS_RECEIVE_DATE_CHG: TAbmesSQLTimeStampField;
    cdsDataS_CL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDataS_CL_OFFER_RECEIVE_DATEC: TAbmesSQLTimeStampField;
    cdsDataS_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsDataSSH_SHIPMENT_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsDataSSH_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsDataSSH_INVOICE_NO: TAbmesFloatField;
    cdsDataSSH_INVOICE_DATE: TAbmesSQLTimeStampField;
    cdsDataSSH_INVOICE_CURRENCY_CODE: TAbmesFloatField;
    cdsDataqrySaleRequestGroupLines: TDataSetField;
    cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsGridDataREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataREQUEST_NO: TAbmesFloatField;
    cdsGridDataREQUEST_LINE_NO: TAbmesFloatField;
    cdsGridDataCLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataQUANTITY: TAbmesFloatField;
    cdsGridDataQUANTITY_CHG: TAbmesSQLTimeStampField;
    cdsGridDataCL_OFFER_QUANTITY: TAbmesFloatField;
    cdsGridDataCL_OFFER_QUANTITY_CHG: TAbmesSQLTimeStampField;
    cdsGridDataCURRENCY_CODE: TAbmesFloatField;
    cdsGridDataSINGLE_PRICE: TAbmesFloatField;
    cdsGridDataMARKET_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataDISCOUNT_PERCENT: TAbmesFloatField;
    cdsGridDataRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataRECEIVE_DATE_CHG: TAbmesSQLTimeStampField;
    cdsGridDataCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCL_OFFER_RECEIVE_DATE_CH: TAbmesSQLTimeStampField;
    cdsGridDataSALE_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSALE_NO: TAbmesFloatField;
    cdsGridDataSALE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataSHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSHIPMENT_STORE_CODE: TAbmesFloatField;
    cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsGridDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsGridDataFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataFINISH_DATE: TAbmesSQLTimeStampField;
    cdsGridDataFINISH_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataSSH_SHIPMENT_OBJ_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSSH_SHIPMENT_OBJ_CODE: TAbmesFloatField;
    cdsGridDataSSH_SALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSSH_SALE_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataSSH_PLAN_QUANTITY: TAbmesFloatField;
    cdsGridDataSSH_QUANTITY: TAbmesFloatField;
    cdsGridDataSSH_SHIPMENT_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSSH_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSSH_INVOICE_NO: TAbmesFloatField;
    cdsGridDataSSH_INVOICE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSSH_INVOICE_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataSSH_INVOICE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataRECORD_CHANGED: TAbmesFloatField;
    cdsDataS_CURRENCY_CODE: TAbmesFloatField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsData_REQUEST_BRANCH_NO: TAbmesFloatField;
    grpRequestIdentification: TGroupBox;
    lblRequestBranch: TLabel;
    lblRequestNo: TLabel;
    edtRequestNo: TDBEdit;
    grpSaleGroup: TGroupBox;
    cdsData_SALE_GROUP_OBJECT_BRANCH_NO: TAbmesFloatField;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    dsPriorities: TDataSource;
    cdsCurrencies: TAbmesClientDataSet;
    cdsData_S_CURRENCY_ABBREV: TAbmesWideStringField;
    gbInvoice: TGroupBox;
    lblInvoiceNo: TLabel;
    edtInvoiceNo: TDBEdit;
    lblInvoiceDate: TLabel;
    grpCurrency: TGroupBox;
    cbCurrency: TJvDBLookupCombo;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsMeasuresMEASURE_NAME: TAbmesWideStringField;
    pnlEditBtn: TPanel;
    btnEditRecord: TBitBtn;
    pnlInsertBtn: TPanel;
    btnInsertRecord: TBitBtn;
    pnlAnnulBtn: TPanel;
    btnAnnul: TBitBtn;
    pnlFinishBtn: TPanel;
    btnFinish: TBitBtn;
    actAnnul: TAction;
    actFinish: TAction;
    cdsGridDataPRODUCT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsDataS_SALE_TYPE_CODE: TAbmesFloatField;
    lblSaleType: TLabel;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    dsSaleTypes: TDataSource;
    pnlSaleGroupIdentification: TPanel;
    lblSaleGroupObjectCode: TLabel;
    edtSaleGroupObjectIdentifier: TDBEdit;
    lblSaleGroupPriority: TLabel;
    cbSaleGroupPriority: TJvDBLookupCombo;
    pnlCreateSaleGroup: TPanel;
    cbSaleType: TJvDBLookupCombo;
    cdsGridData_SALE_BRANCH_NO: TAbmesFloatField;
    cdsGridData_REQUEST_BRANCH_NO: TAbmesFloatField;
    cdsGridData_PRODUCT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_MAX_REQUEST_LINE_NO: TAggregateField;
    cdsGridDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsCurrenciesCURRENCY_NAME: TAbmesWideStringField;
    cdsCurrenciesSCALE: TAbmesFloatField;
    cdsCurrenciesROUNDER: TAbmesFloatField;
    cdsCurrenciesORDER_NO: TAbmesFloatField;
    cdsData_S_CURRENCY_TODAY_SECONDARY_FIXING: TAbmesFloatField;
    cdsGridData_MAX_SALE_OBJECT_CODE: TAggregateField;
    cdsCurrenciesTODAY_FIXING: TAbmesFloatField;
    cdsCurrenciesTODAY_SECONDARY_FIXING: TAbmesFloatField;
    cdsGridData_IS_ANNULED: TAbmesFloatField;
    cdsDataCREATE_SALE_GROUP: TAbmesFloatField;
    cdsGridData_SUM_TOTAL_PRICE: TAggregateField;
    cdsGridDataTOTAL_PRICE: TAbmesFloatField;
    actShowAnnuledLines: TAction;
    pnlShowAnnuledLines: TPanel;
    btnShowAnnuledLines: TSpeedButton;
    pnlAnnulIndicator: TPanel;
    chkIsAnnuled: TAbmesDBCheckBox;
    cdsData_IS_ANNULED: TBooleanField;
    cdsData_IS_FINISHED: TBooleanField;
    pnlFinishIndicator: TPanel;
    chkIsFinished: TAbmesDBCheckBox;
    cdsGridDataCREATE_SALE: TAbmesFloatField;
    cdsDataSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsDataSTORE_REQUEST_CODE: TAbmesFloatField;
    cdsGridDataQUANTITY_CHG_X: TAbmesSQLTimeStampField;
    cdsGridDataCL_OFFER_QUANTITY_CHG_X: TAbmesSQLTimeStampField;
    cdsGridData_SUM_TOTAL_PRICE_X: TAggregateField;
    actPrintStoreRequest: TAction;
    cdsGridDataQUANTITY_TAKEN_FROM_STORE: TAbmesFloatField;
    pnlPrintBtn: TPanel;
    btnPrintEx: TBitBtn;
    pmPrint: TPopupMenu;
    miPrint: TMenuItem;
    miPrintStoreRequest: TMenuItem;
    cdsData_S_SALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsDataSALE_GROUP_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsData_REQUEST_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataCL_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataSTORE_REQ_COMPLETED_QUANTITY: TAbmesFloatField;
    cdsGridDataANNUL_MULTIPLIER: TAbmesFloatField;
    cdsGridDataCL_OFFER__SUM_QUANTITY: TAggregateField;
    cdsGridDataCL_OFFER__SUM_QUANTITY_X: TAggregateField;
    cdsGridData_SUM_QUANTITY: TAggregateField;
    cdsGridData_SUM_QUANTITY_X: TAggregateField;
    cdsGridData_SUM_SSH_QUANTITY: TAggregateField;
    cdsGridData_SUM_SSH_QUANTITY_X: TAggregateField;
    cdsGridData_MIN_PRODUCT_MEASURE_CODE: TAggregateField;
    cdsGridData_MAX_PRODUCT_MEASURE_CODE: TAggregateField;
    cdsGridData_MIN_PRODUCT_MEASURE_CODE_X: TAggregateField;
    cdsGridData_MAX_PRODUCT_MEASURE_CODE_X: TAggregateField;
    actCopyQuantityTakenToQuantityShipped: TAction;
    cdsDataINV_INVOICE_NO: TAbmesFloatField;
    cdsDataINV_INVOICE_DATE: TAbmesSQLTimeStampField;
    btnInvoice: TBitBtn;
    actInvoice: TAction;
    cdsNewInvoice: TAbmesClientDataSet;
    cdsNewInvoiceItems: TAbmesClientDataSet;
    cdsNewInvoiceSELLER_COMPANY_CODE: TAbmesFloatField;
    cdsNewInvoiceBUYER_COMPANY_CODE: TAbmesFloatField;
    cdsNewInvoiceCURRENCY_CODE: TAbmesFloatField;
    cdsNewInvoiceItemsPRODUCT_CODE: TAbmesFloatField;
    cdsNewInvoiceItemsACCOUNT_QUANTITY: TAbmesFloatField;
    cdsNewInvoiceItemsSINGLE_PRICE: TAbmesFloatField;
    grpStoreRequest: TGroupBox;
    edtStoreRequestIdentification: TDBEdit;
    cdsData_STORE_REQUEST_BRANCH_NO: TAbmesFloatField;
    cdsData_STORE_REQUEST_IDENTIFIER: TAbmesWideStringField;
    cdsDataINVOICE_BRANCH_CODE: TAbmesFloatField;
    cdsDataINVOICE_CODE: TAbmesFloatField;
    cdsNewInvoiceItemsMARKET_SINGLE_PRICE: TAbmesFloatField;
    cdsNewInvoiceItemsDISCOUNT_PERCENT: TAbmesFloatField;
    dsCurrencies: TDataSource;
    cdsGridData_MAX_QUANTITY_TAKEN_FROM_STORE: TAggregateField;
    cbRequestBranch: TJvDBLookupCombo;
    dsBranches: TDataSource;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsData_S_REQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    cdsData_S_REQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    cdsData_S_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsData_SSH_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    actPrintEx: TAction;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    tlbTopButtons: TToolBar;
    sepBeforeDocumentation: TToolButton;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    frInvoiceDate: TfrDateFieldEditFrame;
    cdsDataS_CLIENT_COMPANY_NAME: TAbmesWideStringField;
    cdsPrioritiesPRIORITY_NO: TAbmesFloatField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsData_SG_PRIORITY_NO: TAbmesFloatField;
    frRequestSendDate: TfrDateFieldEditFrame;
    lblRequestSendDate: TLabel;
    frRequestRegisterDate: TfrDateFieldEditFrame;
    lblRequestRegisterDate: TLabel;
    rgSaleOrderType: TJvDBRadioPanel;
    lblActivatedBy: TLabel;
    frClient: TfrPartnerExFieldEditFrame;
    chkCreateSaleGroup: TAbmesDBCheckBox;
    cdsDataS_SALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDataS_CL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField;
    cdsDataS_RETURN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsGridDataCL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataRETURN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCL_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGridDataCL_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGridDataLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsSaleOrderTypes: TAbmesClientDataSet;
    cdsSaleOrderTypesSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsSaleOrderTypesSALE_ORDER_TYPE_NAME: TAbmesWideStringField;
    cdsSaleDealTypes: TAbmesClientDataSet;
    cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    lblSaleDealType: TLabel;
    cbSaleDealType: TJvDBLookupCombo;
    dsSaleDealTypes: TDataSource;
    pnlDates: TPanel;
    gbSaleDates: TGroupBox;
    lblReceiveDateClientOffered: TLabel;
    lblReceiveDateClientOfferedChg: TLabel;
    lblReceiveDate: TLabel;
    lblReceiveDateChg: TLabel;
    lblRealReceiveDate: TLabel;
    lblReceiveDateDiff: TLabel;
    frReceiveDateClientOffered: TfrDateFieldEditFrame;
    frReceiveDate: TfrDateFieldEditFrame;
    frRealReceiveDate: TfrDateFieldEditFrame;
    edtReceiveDateDiff: TDBEdit;
    edtReceiveDateChg: TDBEdit;
    edtReceiveDateClientOfferedChg: TDBEdit;
    gbLeaseDates: TGroupBox;
    lblClientOfferLeaseDateInterval: TLabel;
    lblClientOfferLeaseDateIntervalChg: TLabel;
    lblPlanLeaseDateInterval: TLabel;
    lblPlanLeaseDateIntervalChg: TLabel;
    lblRealLeaseDateInterval: TLabel;
    edtPlanLeaseDateIntervalChg: TDBEdit;
    edtClientOfferLeaseDateIntervalChg: TDBEdit;
    frClientOfferLeaseDateInterval: TfrDateIntervalFrame;
    frPlanLeaseDateInterval: TfrDateIntervalFrame;
    cdsGridDataSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridData_CL_OFFER_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridData_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridDataSSH_LEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGridDataSSH_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    btnCopyQuantityTakenToQuantityShipped: TSpeedButton;
    edtActivatedBy: TEdit;
    cdsData_S_SALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataCLIENT_REQUEST_NO: TAbmesWideStringField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    cdsGridData_SSH_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    cdsGridData_CL_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_SSH_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_PRODUCT_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataQUANTITY_RETURNED_TO_STORE: TAbmesFloatField;
    lblDocumentation: TLabel;
    cdsGridData_SUM_QTY_RETURNED_TO_STORE: TAggregateField;
    cdsGridData_SUM_QTY_RETURNED_TO_STORE_X: TAggregateField;
    cdsDataS_IMPORT_DATE: TAbmesSQLTimeStampField;
    cdsDataSSH_IMPORT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSSH_IMPORT_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSSH_IMPORT_DATE: TAbmesSQLTimeStampField;
    cdsDataSSH_IMPORT_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataIMPORT_DATE: TAbmesSQLTimeStampField;
    cdsGridData_STATUS_CODE: TAbmesFloatField;
    cdsGridData_IS_FINISHED: TAbmesFloatField;
    cdsGridData_COUNT_NOT_ANNULED: TAggregateField;
    cdsGridData_COUNT_FINISHED: TAggregateField;
    cdsGridData_MIN_STATUS_CODE: TAggregateField;
    cdsGridData_STATUS_CODE_2: TAbmesFloatField;
    cdsGridData_MIN_STATUS_CODE_2: TAggregateField;
    cdsData_STATUS_CODE: TAbmesFloatField;
    lblStatus: TLabel;
    edtStatus: TDBEdit;
    cdsDataCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField;
    lblClientRequestGroupNo: TLabel;
    edtClientRequestGroupNo: TDBEdit;
    actShowClientNos: TAction;
    tlbToggles: TToolBar;
    btnShowClientNos: TToolButton;
    cdsGridDataPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    btnDocumentation: TToolButton;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    cdsData_S_CL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsData_S_CL_OFFER_RECEIVE_DATEC: TAbmesSQLTimeStampField;
    cdsData_S_RECEIVE_DATE_CHG: TAbmesSQLTimeStampField;
    cdsDataIS_ACTIVATED_BY_CLIENT: TAbmesFloatField;
    cdsGridDataIS_VENDOR_TRANSPORT: TAbmesFloatField;
    cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsDataFIN_ORDER_CODE: TAbmesFloatField;
    cdsDataFO_EXEC_DEPT_CODE: TAbmesFloatField;
    cdsDataFO_PRIORITY_CODE: TAbmesFloatField;
    cdsDataFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsDataSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    actFinOrder: TAction;
    gbFinOrder: TGroupBox;
    btnFinOrder: TButton;
    cdsDataS_SHIPMENT_DAYS: TAbmesFloatField;
    pnlClientReceiveData: TPanel;
    gbClientReceiveData: TGroupBox;
    lblShipmentDays: TLabel;
    edtShipmentDays: TDBEdit;
    cdsGridDataSHIPMENT_DAYS: TAbmesFloatField;
    cdsDataS_RECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    cdsGridDataRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    lblReceivePlaceOfficeName: TLabel;
    cbReceivePlaceOfficeName: TJvDBLookupCombo;
    cdsCompanyOffices: TAbmesClientDataSet;
    cdsCompanyOfficesCOMPANY_CODE: TAbmesFloatField;
    cdsCompanyOfficesOFFICE_CODE: TAbmesFloatField;
    cdsCompanyOfficesOFFICE_NAME: TAbmesWideStringField;
    cdsCompanyOfficesCOUNTRY_CODE: TAbmesFloatField;
    dsCompanyOffices: TDataSource;
    lblReceivePlaceCountry: TLabel;
    cdsCompanyOfficesCOUNTRY_NAME: TAbmesWideStringField;
    cbReceivePlaceCountry: TJvDBLookupCombo;
    dsCustomhouses: TDataSource;
    cdsCustomhouses: TAbmesClientDataSet;
    cdsCustomhousesCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsCustomhousesCUSTOMHOUSE_NAME: TAbmesWideStringField;
    cdsDataS_CUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsDataS_SHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsGridDataSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsShipmentTypes: TAbmesClientDataSet;
    cdsShipmentTypesSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsShipmentTypesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsShipmentTypesSHIPMENT_TYPE_NAME: TAbmesWideStringField;
    cdsShipmentTypesNOTES: TAbmesWideStringField;
    dsShipmentTypes: TDataSource;
    cbCustomhouse: TJvDBLookupCombo;
    lblCustomhouse: TLabel;
    cbShipmentType: TJvDBLookupCombo;
    lblShipmentType: TLabel;
    cbTransportBy: TJvDBComboBox;
    lblTransportBy: TLabel;
    cdsDataS_IS_VENDOR_TRANSPORT: TAbmesFloatField;
    pnlShipmentDates: TPanel;
    gbSaleShipmentDates: TGroupBox;
    frShipmentDate: TfrDateFieldEditFrame;
    lblShipmentDate: TLabel;
    edtShipmentDateDiff: TDBEdit;
    lblShipmentDateDiff: TLabel;
    frRealShipmentDate: TfrDateFieldEditFrame;
    lblRealShipmentDate: TLabel;
    gbLeaseShipmentDates: TGroupBox;
    lblLeaseShipmentDate: TLabel;
    lblLeaseRealShipmentDate: TLabel;
    frLeaseShipmentDate: TfrDateFieldEditFrame;
    frLeaseRealShipmentDate: TfrDateFieldEditFrame;
    frLeaseImportDate: TfrDateFieldEditFrame;
    lblLeaseImportDate: TLabel;
    cdsDataSSH_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSSH_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsData_S_RECEIVE_DATE_DIFF: TAbmesFloatField;
    cdsData_S_SHIPMENT_DATE_DIFF: TAbmesFloatField;
    frLeaseRealImportDate: TfrDateFieldEditFrame;
    lblLeaseRealImportDate: TLabel;
    frLeaseRealReceiveDate: TfrDateFieldEditFrame;
    cdsDataS_MANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataMANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    frManagerEmployee: TfrEmployeeFieldEditFrameBald;
    lblManagerEmployee: TLabel;
    cdsGroupSaleDefaults: TAbmesClientDataSet;
    cdsGroupSaleDefaultsCURRENCY_CODE: TAbmesFloatField;
    cdsGroupSaleDefaultsSTORE_CODE: TAbmesFloatField;
    cdsGroupSaleDefaultsTRANSPORT_DURATION_DAYS: TAbmesFloatField;
    cdsGroupSaleDefaultsMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsGroupSaleDefaultsSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsGroupSaleDefaultsIS_PARTNER_TRANSPORT: TAbmesFloatField;
    cdsGroupSaleDefaultsCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsGroupSaleDefaultsPARTNER_OFFICE_CODE: TAbmesFloatField;
    cdsGroupSaleLineDefaults: TAbmesClientDataSet;
    cdsGroupSaleLineDefaultsPRICE: TAbmesFloatField;
    cdsGroupSaleLineDefaultsPRICE_MODIFIER: TAbmesFloatField;
    cdsDataFO_BRANCH_CODE: TAbmesFloatField;
    cdsDataFO_CLOSE_REQUESTED: TAbmesFloatField;
    cdsGroupSaleLineDefaultsCURRENCY_CODE: TAbmesFloatField;
    cdsNewInvoiceItemsCURRENCY_CODE: TAbmesFloatField;
    cdsNewInvoiceINVOICE_DATE: TAbmesSQLTimeStampField;
    cdsNewInvoiceItemsBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsNewInvoiceItemsBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsNewInvoiceItemsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_CODE: TAbmesFloatField;
    cdsDataFO_STATUS_CODE: TAbmesFloatField;
    cdsDataS_CLIENT_COMPANY_NO: TAbmesFloatField;
    cdsData_SSH_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsData_S_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsDataFO_PARTNER_CODE: TAbmesFloatField;
    cdsNewInvoiceRECEIVER_COMPANY_CODE: TAbmesFloatField;
    cdsNewInvoiceSENDER_COMPANY_CODE: TAbmesFloatField;
    cdsNewInvoiceItemsCLIENT_REQUEST_NO: TAbmesWideStringField;
    cdsGridData_MARKET_SINGLE_PRICE_WITH_VAT: TAbmesFloatField;
    cdsGridData_SINGLE_PRICE_WITH_VAT: TAbmesFloatField;
    cdsGridData_TOTAL_PRICE_WITH_VAT: TAbmesFloatField;
    actExcludeVAT: TAction;
    actIncludeVAT: TAction;
    cdsGridData_SUM_TOTAL_PRICE_WITH_VAT: TAbmesFloatField;
    tlbTogglePrices: TToolBar;
    btnExcludeVAT: TToolButton;
    btnIncludeVAT: TToolButton;
    sepVAT: TToolButton;
    cdsGridData_SUM_TOTAL_PRICE_WITH_VAT_X: TAbmesFloatField;
    actFinOrderPSDs: TAction;
    cdsFinOrderPSDsParams: TAbmesClientDataSet;
    cdsBinding: TAbmesClientDataSet;
    cdsBindingBND_PROCESS_CODE: TAbmesFloatField;
    cdsBindingSALE_GROUP_BRANCH_CODE: TAbmesFloatField;
    cdsBindingSALE_GROUP_CODE: TAbmesFloatField;
    btnFinOrderPSDs: TButton;
    cdsFinOrderPSDsParamsBND_PROCESS: TAbmesWideStringField;
    cdsFinOrderPSDsParamsCHOSEN_DEPTS: TAbmesWideStringField;
    cdsDataSALE_GROUP_BRANCH_CODE: TAbmesFloatField;
    cdsDataSALE_GROUP_CODE: TAbmesFloatField;
    cdsGridDataSSH_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSSH_DOC_CODE: TAbmesFloatField;
    cdsNewInvoiceEVENT_DATE: TAbmesSQLTimeStampField;
    cdsDataINVOICE_STATE_CODE: TAbmesFloatField;
    edtInvoiceState: TDBEdit;
    lblInvoiceState: TLabel;
    cdsDataMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    frMediator: TfrPartnerFieldEditFrameLabeled;
    pnlReloadGroupSale: TPanel;
    chkReloadGroupSale: TCheckBox;
    cdsDataSSH_IS_PROFORM_INVOICE: TAbmesFloatField;
    cdsDataINV_IS_PROFORM_INVOICE: TAbmesFloatField;
    cdsGridDataSSH_IS_PROFORM_INVOICE: TAbmesFloatField;
    lblIsProformInvoice: TLabel;
    cbIsProformInvoice: TJvDBComboBox;
    gbNotes: TGroupBox;
    btnNotes: TBitBtn;
    actNotes: TAction;
    cdsDataNOTES: TAbmesWideStringField;
    procedure cdsDataSSH_IMPORT_DATEChange(Sender: TField);
    procedure cdsGridDataPROCESS_OBJECT_IDENTIFIERGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure SumFieldGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDataS_SALE_DEAL_TYPE_CODEChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure cdsGridDataSHIPMENT_STORE_CODEChange(Sender: TField);
    procedure cdsSaleOrderTypesAfterOpen(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataS_RECEIVE_DATEChange(Sender: TField);
    procedure cdsDataS_CL_OFFER_RECEIVE_DATEChange(Sender: TField);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actInsertRecordExecute(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataPRODUCT_CODEChange(Sender: TField);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsDataS_CURRENCY_CODEChange(Sender: TField);
    procedure cdsGridDataMARKET_SINGLE_PRICEChange(Sender: TField);
    procedure cdsGridDataSINGLE_PRICEChange(Sender: TField);
    procedure cdsGridDataDISCOUNT_PERCENTChange(Sender: TField);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataQUANTITYChange(Sender: TField);
    procedure cdsGridDataCL_OFFER_QUANTITYChange(Sender: TField);
    procedure actAnnulExecute(Sender: TObject);
    procedure actAnnulUpdate(Sender: TObject);
    procedure cdsGridDataDISCOUNT_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataDISCOUNT_PERCENTSetText(Sender: TField;
      const Text: String);
    procedure cdsGridDataSSH_QUANTITYChange(Sender: TField);
    procedure actShowAnnuledLinesUpdate(Sender: TObject);
    procedure actShowAnnuledLinesExecute(Sender: TObject);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsDataANNUL_EMPLOYEE_CODEChange(Sender: TField);
    procedure cdsDataFINISH_EMPLOYEE_CODEChange(Sender: TField);
    procedure cdsDataS_SALE_TYPE_CODEChange(Sender: TField);
    procedure cdsDataS_CLIENT_COMPANY_CODEChange(Sender: TField);
    procedure cdsDataS_REQUEST_SEND_DATEChange(Sender: TField);
    procedure cdsDataS_REQUEST_REGISTER_DATEChange(Sender: TField);
    procedure cdsDataS_RECEIVE_DATE_CHGChange(Sender: TField);
    procedure cdsDataS_CL_OFFER_RECEIVE_DATECChange(Sender: TField);
    procedure cdsDataSSH_INVOICE_NOChange(Sender: TField);
    procedure cdsDataSSH_INVOICE_DATEChange(Sender: TField);
    procedure cdsDataCREATE_SALE_GROUPChange(Sender: TField);
    procedure actEditRecordExecute(Sender: TObject);
    procedure actFinishExecute(Sender: TObject);
    procedure actFinishUpdate(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsDataFINISH_DATEChange(Sender: TField);
    procedure cdsDataFINISH_TIMEChange(Sender: TField);
    procedure cdsDataANNUL_DATEChange(Sender: TField);
    procedure cdsDataANNUL_TIMEChange(Sender: TField);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataQUANTITY_CHGChange(Sender: TField);
    procedure cdsGridDataCL_OFFER_QUANTITY_CHGChange(Sender: TField);
    procedure cdsGridDataANNUL_EMPLOYEE_CODEChange(Sender: TField);
    procedure actPrintStoreRequestUpdate(Sender: TObject);
    procedure actPrintStoreRequestExecute(Sender: TObject);
    procedure cdsGridDataDISCOUNT_PERCENTValidate(Sender: TField);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataSHIPMENT_STORE_CODEValidate(Sender: TField);
    procedure actCopyQuantityTakenToQuantityShippedExecute(
      Sender: TObject);
    procedure actCopyQuantityTakenToQuantityShippedUpdate(Sender: TObject);
    procedure actInvoiceUpdate(Sender: TObject);
    procedure actInvoiceExecute(Sender: TObject);
    procedure cdsDataS_REQUEST_SEND_DATEValidate(Sender: TField);
    procedure cdsDataREQUEST_BRANCH_CODEChange(Sender: TField);
    procedure cdsBranchesAfterOpen(DataSet: TDataSet);
    procedure actPrintExExecute(Sender: TObject);
    procedure actPrintExUpdate(Sender: TObject);
    procedure cdsDataAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure btnDocumentationClick(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure btnDocsClick(Sender: TObject);
    procedure cdsData_STATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actShowClientNosExecute(Sender: TObject);
    procedure cdsSaleDealTypesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actFinOrderUpdate(Sender: TObject);
    procedure actFinOrderExecute(Sender: TObject);
    procedure cdsDataS_SHIPMENT_DATEChange(Sender: TField);
    procedure cdsCompanyOfficesBeforeOpen(DataSet: TDataSet);
    procedure cdsDataSSH_RECEIVE_DATEChange(Sender: TField);
    procedure cdsDataS_RETURN_DATEChange(Sender: TField);
    procedure cdsDataSALE_ORDER_TYPE_CODEChange(Sender: TField);
    procedure rgSaleOrderTypeChange(Sender: TObject);
    procedure rgSaleOrderTypeClick(Sender: TObject);
    procedure cdsGridDataCL_OFFER_LEASE_DATE_UNIT_QTYChange(Sender: TField);
    procedure cdsGridDataSSH_LEASE_DATE_UNIT_QTYChange(Sender: TField);
    procedure cdsGridDataLEASE_DATE_UNIT_QTYChange(Sender: TField);
    procedure cdsGridDataBeforeInsert(DataSet: TDataSet);
    procedure actExcludeVATExecute(Sender: TObject);
    procedure actIncludeVATExecute(Sender: TObject);
    procedure actFinOrderPSDsExecute(Sender: TObject);
    procedure actFinOrderPSDsUpdate(Sender: TObject);
    procedure cdsDataINVOICE_STATE_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDataSSH_IS_PROFORM_INVOICEChange(Sender: TField);
    procedure actNotesExecute(Sender: TObject);
    procedure actNotesUpdate(Sender: TObject);
  private
    FRequestLineNoToFocus: Integer;
    FShowAnnuledLines: Boolean;
    FChangingPrice: Boolean;
    FChangingCommonField: Boolean;
    FInitialProductNameColumnWidth: Integer;
    FInitialQuantityColumnWidth: Integer;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FFinOrderPartnerCode: Integer;
    FFinOrderBaseDate: TDateTime;
    FHadSale: Boolean;
    FIsUserChangingSaleOrderType: Boolean;
    FWasFinished: Boolean;
    FMaxRequestLineNo: Integer;
    FVatPercent: Real;
    FInitialFinOrderCode: Integer;
    FFinalFinOrderCode: Integer;
    FIsInvoiceModified: Boolean;
    FInsertedRequestBranchCode: Integer;
    FInsertedRequestNo: Integer;
    procedure SetShowAnnulLines(const Value: Boolean);
    procedure DoCommonFieldChanged;
    procedure SetColumns;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure ClearNewFinOrderData;
    function GetPartnerCodeForFinOrder: Integer;
    function GetBaseDateForFinOrder: TDateTime;
    procedure RefreshParRelPeriodData;
    function FinishedEditMode: TEditMode;
    procedure CalcSinglePrice;
    procedure LoadVatPercent;
  protected
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetApplyUpdatesEnabled: Boolean; override;
    procedure DoApplyUpdates; override;
    function GetRecordReadOnly: Boolean; override;
    function GetPrintEnabled: Boolean; override;
    function GetOriginalFormCaption: string; override;
    function GetInsertRecordEnabled: Boolean; override;
    function GetPrintStoreRequestEnabled: Boolean; virtual;
    property ShowAnnuledLines: Boolean read FShowAnnuledLines write SetShowAnnulLines;
    function GetPrintButtonOnToolbarEnabled: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetGridRecordReadOnly: Boolean; override;
    function GetIsDataModified: Boolean; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True); override;
    procedure Initialize; override;
    procedure Finalize; override;
    procedure ReleaseForm; override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True): Boolean;
    property InsertedRequestBranchCode: Integer read FInsertedRequestBranchCode;
    property InsertedRequestNo: Integer read FInsertedRequestNo;
  end;

implementation

uses
  Variants, uUtils, uClientUtils, dMain,  uSaleOrderTypes, fGroupSaleLine,
  uGroupSales, fStoreRequest, rGroupSale, uUserActivityConsts, fInvoice,
  uInvoiceTypes, AbmesDialogs, fDataForm, uTreeClientUtils, uDocUtils,
  uCompanyKinds, uCompanyClientUtils, StrUtils, uColorConsts, uSaleDealTypes,
  Math, DateUtils, uSalesClientUtils, uProducts, fNewFinOrder, fFinOrder, uBorderRelTypes,
  uFinOrderRequirementClientUtils, uClientDateTime, uParRelProducts,
  uFinanceClientUtils, uCompanyStatuses, uComboBoxUtils, fPlannedStoreDeals,
  uProcesses, Types, fNotes;

type
  TJvDBRadioPanelHack = class(TJvDBRadioPanel);

{$R *.DFM}

resourcestring
  SSale = 'ОПП';
  SSaleColumnCaption = 'ОПП №';
  SSaleOrderColumnCaption = 'ОДК №';
  SGroupPPShortProcCaption = 'Пакет Диалози с Клиент за Продажба на УОб по Наличност - %s';
  SGroupAskShortProcCaption = 'Пакет Диалози с Клиент за Продажба на УОб по Наличност - %s';
  SCopyQuantities = 'Копиране на "Изтеглено к-во" в "Продадено к-во" за редовете, където "Продадено к-во" е празно';
  SFieldValueBetween = 'Стойността на полето "%s" трябва да е между 0%% и 100%%';
  SRequestNoInfo = 'ПДК е записан под номер %g / %d';
  SSaleGroupNoInfo = 'Създадената Група ОПП е записана под номер %s';
  SConfirmAllLinesAnnul = 'Потвърдете анулиране на всички редове';
  SConfirmAllLinesFinish = 'Потвърдете приключване на всички редове';
  SProductWorkMeasureRequired = 'Няма въведена работна мерна единица за избрания Управляем Обект';
  SProductAccountMeasureRequired = 'Няма въведена счетоводна мерна единица за избрания Управляем Обект';
  SProductWorkMeasureCoefRequired = 'Няма въведен коефициент счетоводна/работна мерна единица за избрания Управляем Обект';
  SInvoiceExists = 'Тази Групова ОПП не може да бъде анулирана, защото по нея има неанулирана фактура';
  SCantSaveEmptyGroupSale = 'Не можете да запишете празно запитване';
  SCannotChangeStore = 'Не можете да смените ТП Задържащо защото в него има отчетен ред от Групова Заявка за Постъпления и Тегления за тази ОПП';
  SCannotCreateInvoice = 'Има ред с празно продадено количество. Не може да бъде създадена фактура';
  SInvalidRequestSendDate = 'Датата на изпращане на запитването не може да е по-късна от датата на регистриране';
  SReceiveDateFieldLabel = 'Дата на Получаване - %s';
  SBeginDateOf = 'Начална дата на %s';
  SEndDateOf = 'Крайна дата на %s';
  SDifferentMeasures = 'разл. м.ед.';
  SSaleCannotBeLeaseForCurrentQuantity = 'Тип на ПДК не може да бъде Наемодаваща Продажба по Текуща Наличност';
  SChangesWillBeAppliedAfterInvoiceApply = 'За да продължите, промените ще бъдат записани.';
  SFinishWithoutInvoice = 'Не е въведена Фактура. Желаете ли да продължите?';

{ TfmGroupSale }

class function TfmGroupSale.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmGroupSale.SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
  AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean);
var
  RequestLineNoField: TField;
begin
  inherited SetDataparams(dmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);

  FRequestLineNoToFocus:= 0;
  if Assigned(ADataSet) then
    begin
      RequestLineNoField:= ADataSet.FindField('REQUEST_LINE_NO');
      if Assigned(RequestLineNoField) then
        FRequestLineNoToFocus:= RequestLineNoField.AsInteger;
    end;  { if }
end;

procedure TfmGroupSale.ClearNewFinOrderData;
begin
  if cdsDataFIN_ORDER_CODE.IsNull and
     ( (not (cdsDataCREATE_SALE_GROUP.AsBoolean or FHadSale)) or
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

procedure TfmGroupSale.CloseDataSets;
begin
  cdsCompanyOffices.Close;
  inherited CloseDataSets;
  cdsShipmentTypes.Close;
  cdsCustomhouses.Close;
  cdsBranches.Close;
  cdsCurrencies.Close;
  cdsMeasures.Close;
  cdsPriorities.Close;
  cdsSaleTypes.Close;
  cdsSaleOrderTypes.Close;
  cdsSaleDealTypes.Close;
end;

procedure TfmGroupSale.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(cdsDataHAS_DOC_ITEMS);
end;

procedure TfmGroupSale.OpenDataSets;
var
  LineFound: Boolean;
begin
  cdsBranches.Open;
  cdsCurrencies.Open;
  cdsMeasures.Open;
  cdsPriorities.Open;
  cdsSaleTypes.Open;
  cdsSaleOrderTypes.Open;
  cdsSaleDealTypes.Open;
  cdsCustomhouses.Open;
  cdsShipmentTypes.Open;
  inherited OpenDataSets;
  cdsCompanyOffices.Open;

  ShowAnnuledLines:= True;
  LineFound:= cdsGridData.Locate('REQUEST_LINE_NO', FRequestLineNoToFocus, []);
  ShowAnnuledLines:=
    (not cdsDataANNUL_EMPLOYEE_CODE.IsNull) or
    (LineFound and not cdsGridDataANNUL_EMPLOYEE_CODE.IsNull);
end;

procedure TfmGroupSale.actFormUpdate(Sender: TObject);
var
  IsSale, CanStoreDataInShipment, CanChangeBranch: Boolean;
begin
  inherited;

  if cdsData_STATUS_CODE.IsNull or (cdsData_STATUS_CODE.AsInteger = 0) then
    edtStatus.Color:= clBtnFace
  else
    edtStatus.Color:= SaleOrderStatusColors[cdsData_STATUS_CODE.AsInteger];

  IsSale:= not cdsDataSALE_GROUP_OBJECT_CODE.IsNull;

  chkCreateSaleGroup.Enabled:= LoginContext.HasUserActivity(uaCreateGroupSale);

  btnDocumentation.Enabled:=
    not (cdsGridData.Bof and cdsGridData.Eof);

  pnlSaleGroupIdentification.Visible:= IsSale;
  pnlCreateSaleGroup.Visible:= not IsSale;

  if IsSale then
    grdData.Columns[1].Title.Caption:= SSaleColumnCaption
  else
    grdData.Columns[1].Title.Caption:= SSaleOrderColumnCaption;

  pnlPrintBtn.Visible:= True;

  pnlAnnulBtn.Visible:=
    (FinishedEditMode in [emEdit, emReadOnly]) and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;

  pnlFinishBtn.Visible:=
    IsSale and
    (FinishedEditMode = emEdit) and
    cdsDataFINISH_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;

  pnlAnnulIndicator.Visible:=
    not cdsDataANNUL_EMPLOYEE_CODE.IsNull;

  pnlFinishIndicator.Visible:=
    not cdsDataFINISH_EMPLOYEE_CODE.IsNull;

  CanStoreDataInShipment:=
    IsSale or cdsDataCREATE_SALE_GROUP.AsBoolean;

  lblRealReceiveDate.Enabled:= CanStoreDataInShipment;
  lblRealShipmentDate.Enabled:= CanStoreDataInShipment;

  edtInvoiceNo.Enabled:= CanStoreDataInShipment;
  lblInvoiceNo.Enabled:= CanStoreDataInShipment;
  lblInvoiceDate.Enabled:= CanStoreDataInShipment;
  ReplacedDBComboBox(cbIsProformInvoice).Enabled:= CanStoreDataInShipment;

  SetControlsReadOnly((FinishedEditMode = emReadOnly) or not cdsDataINVOICE_CODE.IsNull, [edtInvoiceNo, ReplacedDBComboBox(cbIsProformInvoice)]);

  CanChangeBranch:= (FinishedEditMode = emInsert) and (cdsGridData.ChangeCount = 0);

  SetControlReadOnly(not CanChangeBranch, cbRequestBranch);
  cbRequestBranch.TabStop:= CanChangeBranch;

  edtReceiveDateClientOfferedChg.Color:= ccReadOnlyDate;
  edtReceiveDateChg.Color:= ccReadOnlyDate;

  gbSaleDates.Visible:=
    cdsData.Active and
    (cdsDataS_SALE_DEAL_TYPE_CODE.AsInteger = sdtSale);

  gbSaleShipmentDates.Visible:=
    cdsData.Active and
    (cdsDataS_SALE_DEAL_TYPE_CODE.AsInteger = sdtSale);

  gbLeaseDates.Visible:=
    cdsData.Active and
    (cdsDataS_SALE_DEAL_TYPE_CODE.AsInteger = sdtLease);

  gbLeaseShipmentDates.Visible:=
    cdsData.Active and
    (cdsDataS_SALE_DEAL_TYPE_CODE.AsInteger = sdtLease);

  cbSaleDealType.ReadOnly:=
//    True or // zasega vinagi e izbrano Pridobivashta
    (not cdsData.Active) or
    (cdsGridData.RecordCount > 0) or
    (FinishedEditMode <> emInsert);
  cbSaleDealType.Color:= ReadOnlyColors[cbSaleDealType.ReadOnly];

  btnDocs.ImageIndex:= cdsDataHAS_DOC_ITEMS.AsInteger;
  btnDocumentation.ImageIndex:= cdsGridDataPRODUCT_HAS_DOC_ITEMS.AsInteger;

  rgSaleOrderType.ReadOnly:= (FinishedEditMode <> emInsert);

  SetControlsReadOnly((FinishedEditMode = emReadOnly), [
    edtClientRequestGroupNo,
    cbSaleType,
    edtShipmentDays,
    cbReceivePlaceOfficeName,
    cbCustomhouse,
    cbShipmentType,
    ReplacedDBComboBox(cbTransportBy)
  ]);

  pnlReloadGroupSale.Visible:= (EditMode in [emInsert, emEdit]);
end;

procedure TfmGroupSale.cdsDataS_RECEIVE_DATEChange(Sender: TField);
begin
  inherited;
  cdsDataS_RECEIVE_DATE_CHG.AsDateTime:= ContextDate();
  cdsDataS_SHIPMENT_DATE.Assign(cdsDataS_RECEIVE_DATE);
  RefreshParRelPeriodData;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataS_CL_OFFER_RECEIVE_DATEChange(
  Sender: TField);
begin
  inherited;
  cdsDataS_CL_OFFER_RECEIVE_DATEC.AsDateTime:= ContextDate();
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (cdsDataS_SALE_DEAL_TYPE_CODE.AsInteger = sdtLease) and
     (cdsDataSALE_ORDER_TYPE_CODE.AsInteger = sotCurrentQuantity) then
    raise Exception.Create(SSaleCannotBeLeaseForCurrentQuantity);

  CheckRequiredFields([
    cdsDataS_SALE_DEAL_TYPE_CODE,
    cdsDataREQUEST_BRANCH_CODE,
    cdsDataSALE_ORDER_TYPE_CODE,
    cdsDataS_REQUEST_SEND_DATE,
    cdsDataS_MANAGER_EMPLOYEE_CODE,
    cdsDataS_CLIENT_COMPANY_CODE,
    cdsDataS_CURRENCY_CODE
  ]);

  if (cdsDataS_SALE_DEAL_TYPE_CODE.AsInteger = sdtSale) then
    begin
      cdsDataS_CL_OFFER_RECEIVE_DATE.DisplayLabel:=
        Format(SReceiveDateFieldLabel, [lblReceiveDateClientOffered.Caption]);
      cdsDataS_RECEIVE_DATE.DisplayLabel:=
        Format(SReceiveDateFieldLabel, [lblReceiveDate.Caption]);

      CheckRequiredFields([
        cdsDataS_CL_OFFER_RECEIVE_DATE,
        cdsDataS_RECEIVE_DATE,
        cdsDataS_SHIPMENT_DAYS
      ]);

      cdsDataS_CL_OFFER_RETURN_DATE.Clear;
      cdsDataS_RETURN_DATE.Clear;
    end
  else
    begin
      cdsDataS_CL_OFFER_RECEIVE_DATE.DisplayLabel:=
        Format(SBeginDateOf, [lblClientOfferLeaseDateInterval.Caption + gbLeaseDates.Caption]);
      cdsDataS_CL_OFFER_RETURN_DATE.DisplayLabel:=
        Format(SEndDateOf, [lblClientOfferLeaseDateInterval.Caption + gbLeaseDates.Caption]);
      cdsDataS_RECEIVE_DATE.DisplayLabel:=
        Format(SBeginDateOf, [lblPlanLeaseDateInterval.Caption + gbLeaseDates.Caption]);
      cdsDataS_RETURN_DATE.DisplayLabel:=
        Format(SEndDateOf, [lblPlanLeaseDateInterval.Caption + gbLeaseDates.Caption]);

      CheckRequiredFields([
        cdsDataS_CL_OFFER_RECEIVE_DATE,
        cdsDataS_CL_OFFER_RETURN_DATE,
        cdsDataS_RECEIVE_DATE,
        cdsDataS_RETURN_DATE,
        cdsDataS_SHIPMENT_DAYS
      ]);

      cdsDataS_IMPORT_DATE.Assign(cdsDataS_RETURN_DATE);
    end;

  cdsDataS_SHIPMENT_DATE.Assign(cdsDataS_RECEIVE_DATE);

  if not cdsDataS_CL_OFFER_RECEIVE_DATE.IsNull then
    CheckRequiredField(cdsDataS_CL_OFFER_RECEIVE_DATEC);

  if not cdsDataS_CL_OFFER_RECEIVE_DATEC.IsNull then
    CheckRequiredField(cdsDataS_CL_OFFER_RECEIVE_DATE);

  if not cdsDataS_RECEIVE_DATE.IsNull then
    CheckRequiredField(cdsDataS_RECEIVE_DATE_CHG);

  if not cdsDataS_RECEIVE_DATE_CHG.IsNull then
    CheckRequiredField(cdsDataS_RECEIVE_DATE);

  if cdsDataCREATE_SALE_GROUP.AsBoolean or
     not cdsDataSALE_GROUP_OBJECT_CODE.IsNull then
    CheckRequiredFields([
      cdsDataS_SHIPMENT_DATE,
      cdsDataS_SALE_TYPE_CODE,
      cdsDataS_IS_VENDOR_TRANSPORT]);

  if not cdsDataFINISH_EMPLOYEE_CODE.IsNull then
    begin
      CheckRequiredField(cdsDataSSH_SHIPMENT_DATE);
      if (cdsDataS_SALE_DEAL_TYPE_CODE.AsInteger = sdtLease) then
        CheckRequiredField(cdsDataSSH_IMPORT_DATE);
    end;

  cdsDataSSH_INVOICE_CURRENCY_CODE.AsVariant:=
    cdsDataS_CURRENCY_CODE.AsVariant;

  cdsDataSSH_SHIPMENT_PLAN_DATE.AsVariant:=
    cdsDataS_SHIPMENT_DATE.AsVariant;

  cdsDataSSH_IMPORT_PLAN_DATE.AsVariant:=
    cdsDataS_IMPORT_DATE.AsVariant;

  if (cdsDataSSH_INVOICE_DATE.IsNull <> cdsDataSSH_INVOICE_NO.IsNull) or
     (cdsDataSSH_INVOICE_NO.IsNull <> cdsDataSSH_IS_PROFORM_INVOICE.IsNull) then
    CheckRequiredFields([cdsDataSSH_INVOICE_NO, cdsDataSSH_INVOICE_DATE, cdsDataSSH_IS_PROFORM_INVOICE]);

  cdsDataCHANGE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataCHANGE_DATE.AsDateTime:= ContextDate();
  cdsDataCHANGE_TIME.AsDateTime:= ContextTime();
end;

procedure TfmGroupSale.cdsDataNewRecord(DataSet: TDataSet);
var
  NowDateTime: TDateTime;
begin
  inherited;

  NowDateTime:= ContextNow;

  if (cdsBranches.RecordCount = 1) then
    cdsDataREQUEST_BRANCH_CODE.AsVariant:= cdsBranchesBRANCH_CODE.AsVariant;

  // reda na dolnite dwe e wajen, zashtoto na change na SaleOrderType pri tekushta nalichnost
  // se setwat razni dati i za tqh ima prowerki sprqmo REGISTER_DATE
  cdsDataS_REQUEST_REGISTER_DATE.AsDateTime:= DateOf(NowDateTime);
  cdsDataSALE_ORDER_TYPE_CODE.AsInteger:= sotCurrentQuantity;

  cdsDataCREATE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataCREATE_DATE.AsDateTime:= DateOf(NowDateTime);
  cdsDataCREATE_TIME.AsDateTime:= TimeOf(NowDateTime);

  cdsDataCHANGE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataCHANGE_DATE.AsDateTime:= DateOf(NowDateTime);
  cdsDataCHANGE_TIME.AsDateTime:= TimeOf(NowDateTime);

  cdsDataCREATE_SALE_GROUP.AsBoolean:= False;

  cdsDataIS_ACTIVATED_BY_CLIENT.AsBoolean:= False;

  cdsDataS_SALE_DEAL_TYPE_CODE.AsInteger:= sdtSale;
  
  cdsDataPRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(pcNormal);
end;

procedure TfmGroupSale.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataSALE_OBJECT_BRANCH_CODE.AsVariant:=
    cdsDataREQUEST_BRANCH_CODE.AsVariant;

  cdsGridDataSALE_OBJECT_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_SALE_OBJECT_CODE.Value) + 1;

  cdsGridDataREQUEST_LINE_NO.AsInteger:=
    FMaxRequestLineNo + 1;

  cdsGridDataDISCOUNT_PERCENT.AsFloat:= 0;

  cdsGridDataANNUL_MULTIPLIER.AsInteger:= 1;

  cdsGridDataCLIENT_COMPANY_CODE.AsVariant:= cdsDataS_CLIENT_COMPANY_CODE.AsVariant;

  cdsGridDataBORDER_REL_TYPE_CODE.AsInteger:= BorderRelTypeToInt(brtClient);
  cdsGridDataPARTNER_CODE.Assign(cdsDataS_CLIENT_COMPANY_CODE);
  cdsGridDataSALE_DEAL_TYPE_CODE.Assign(cdsDataS_SALE_DEAL_TYPE_CODE);
end;

procedure TfmGroupSale.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmGroupSaleLine;
  ReportClass:= TrptGroupSale;

  { Slednite 2 reda inicializirat pokazvaneto na anulirani redove
    vupreki che purvia e izlishen, e po-iasno ako go ima }
  FShowAnnuledLines:= False;
  cdsGridData.Filtered:= True;

  frRequestSendDate.FieldNames:= 'S_REQUEST_SEND_DATE';
  frRequestRegisterDate.FieldNames:= 'S_REQUEST_REGISTER_DATE';
  frReceiveDateClientOffered.FieldNames:= 'S_CL_OFFER_RECEIVE_DATE';
  frReceiveDate.FieldNames:= 'S_RECEIVE_DATE';
  frRealReceiveDate.FieldNames:= 'SSH_RECEIVE_DATE';
  frInvoiceDate.FieldNames:= 'SSH_INVOICE_DATE';
  frClient.FieldNames:= 'S_CLIENT_COMPANY_CODE';
  frClient.FilterCompanyKind:= ckClient;
  frClient.PriorityCompanyKind:= ckClient;
  frClient.PartnerStatusVisible:= True;
  frClient.ShownCompanyStatuses:= ActiveCompanyStatuses;

  frClientOfferLeaseDateInterval.FieldNames:= 'S_CL_OFFER_RECEIVE_DATE; S_CL_OFFER_RETURN_DATE';
  frPlanLeaseDateInterval.FieldNames:= 'S_RECEIVE_DATE; S_RETURN_DATE';

  frShipmentDate.FieldNames:= 'S_SHIPMENT_DATE';
  frRealShipmentDate.FieldNames:= 'SSH_SHIPMENT_DATE';

  frLeaseShipmentDate.FieldNames:= 'S_SHIPMENT_DATE';
  frLeaseImportDate.FieldNames:= 'S_IMPORT_DATE';
  frLeaseRealShipmentDate.FieldNames:= 'SSH_SHIPMENT_DATE';
  frLeaseRealImportDate.FieldNames:= 'SSH_IMPORT_DATE';
  frLeaseRealReceiveDate.FieldNames:= 'SSH_RECEIVE_DATE';
  frManagerEmployee.FieldNames:= 'S_MANAGER_EMPLOYEE_CODE';
  frManagerEmployee.DocButtonVisible:= False;

  frMediator.FieldNames:= 'MEDIATOR_COMPANY_CODE';
  frMediator.FilterCompanyKind:= ckMediator;
  frMediator.DocButtonVisible:= False;

  RegisterDateFields([cdsDataS_CL_OFFER_RECEIVE_DATEC, cdsDataS_RECEIVE_DATE_CHG]);

  FInitialProductNameColumnWidth:= grdData.Columns[3].Width;
  FInitialQuantityColumnWidth:= grdData.Columns[6].Width;

  RegisterFieldsTextVisibility(
    IsSalePriceVisible,
    [ cdsGridDataSINGLE_PRICE,
      cdsGridData_SINGLE_PRICE_WITH_VAT,
      cdsGridDataTOTAL_PRICE,
      cdsGridData_TOTAL_PRICE_WITH_VAT,
      cdsGridData_SUM_TOTAL_PRICE,
      cdsGridData_SUM_TOTAL_PRICE_WITH_VAT,
      cdsGridDataDISCOUNT_PERCENT,
      cdsGridDataMARKET_SINGLE_PRICE,
      cdsGridData_MARKET_SINGLE_PRICE_WITH_VAT]);
end;

procedure TfmGroupSale.FormShow(Sender: TObject);
begin
  inherited;
  SetColumns;

  cdsGridData.PreserveBookmark/
    procedure begin
      actForm.Update;
    end;
end;

procedure TfmGroupSale.actIncludeVATExecute(Sender: TObject);
begin
  inherited;
  SetColumns;
end;

procedure TfmGroupSale.actInsertRecordExecute(Sender: TObject);
begin
  PostDataSet(cdsData);

  cdsGridData.TempDisableControls/
    cdsGridData.TempUnfilter/
      procedure begin
        FMaxRequestLineNo:= VarToInt(cdsGridData_MAX_REQUEST_LINE_NO.AsVariant);
      end;

  try
    inherited;
  finally
    FMaxRequestLineNo:= 0;
  end;
end;

procedure TfmGroupSale.actEditRecordExecute(Sender: TObject);
begin
  cdsGridData.PreserveRecNo/
    procedure begin
      PostDataSet(cdsData);
    end;

  inherited;
end;

procedure TfmGroupSale.actExcludeVATExecute(Sender: TObject);
begin
  inherited;
  SetColumns;
end;

procedure TfmGroupSale.cdsGridDataCalcFields(DataSet: TDataSet);

  procedure CalcAccountQuantityField(ADestField, ASourceField: TField);
  begin
    if ASourceField.IsNull or cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF.IsNull then
      ADestField.Clear
    else
      ADestField.AsFloat:=
        ASourceField.AsFloat * cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF.AsFloat;
  end;  { CalcAccountQuantityField }

  procedure CalcPrictWithVatField(ADestField, ASourceField: TField);
  begin
    if VarIsNull(ASourceField.AsVariant) then  // aggregate field friendly
      ADestField.Clear
    else
      ADestField.AsFloat:=
        ASourceField.AsVarFloat * (1 + FVatPercent);
  end;  { CalcAccountQuantityField }

begin
  inherited;

  cdsGridData_IS_ANNULED.AsBoolean:=
    not cdsGridDataANNUL_EMPLOYEE_CODE.IsNull;

  cdsGridData_IS_FINISHED.AsBoolean:=
    not cdsGridDataFINISH_EMPLOYEE_CODE.IsNull;

  if not cdsGridDataANNUL_EMPLOYEE_CODE.IsNull then
    cdsGridData_STATUS_CODE.AsInteger:= 11
  else
    if not cdsGridDataFINISH_EMPLOYEE_CODE.IsNull then
      cdsGridData_STATUS_CODE.AsInteger:= 10
    else
      if not cdsGridDataSALE_BRANCH_CODE.IsNull then
        cdsGridData_STATUS_CODE.AsInteger:= 9
      else
        cdsGridData_STATUS_CODE.AsInteger:= 1;

  if not cdsGridDataSALE_BRANCH_CODE.IsNull then
    cdsGridData_STATUS_CODE_2.AsInteger:= 9
  else
    cdsGridData_STATUS_CODE_2.AsInteger:= 1;

  if cdsGridDataSSH_LEASE_DATE_UNIT_QTY.IsNull or
     cdsGridDataSSH_QUANTITY.IsNull then
    cdsGridData_SSH_TOTAL_LEASE_QUANTITY.Clear
  else
    cdsGridData_SSH_TOTAL_LEASE_QUANTITY.AsFloat:=
      cdsGridDataSSH_LEASE_DATE_UNIT_QTY.AsFloat *
      cdsGridDataSSH_QUANTITY.AsFloat;

  CalcAccountQuantityField(
    cdsGridData_CL_OFFER_ACCOUNT_QUANTITY, cdsGridDataCL_OFFER_QUANTITY);
  CalcAccountQuantityField(
    cdsGridData_ACCOUNT_QUANTITY, cdsGridDataQUANTITY);
  CalcAccountQuantityField(
    cdsGridData_SSH_ACCOUNT_QUANTITY, cdsGridDataSSH_QUANTITY);

  CalcPrictWithVatField(cdsGridData_MARKET_SINGLE_PRICE_WITH_VAT, cdsGridDataMARKET_SINGLE_PRICE);
  CalcPrictWithVatField(cdsGridData_SINGLE_PRICE_WITH_VAT, cdsGridDataSINGLE_PRICE);
  CalcPrictWithVatField(cdsGridData_TOTAL_PRICE_WITH_VAT, cdsGridDataTOTAL_PRICE);
  CalcPrictWithVatField(cdsGridData_SUM_TOTAL_PRICE_WITH_VAT, cdsGridData_SUM_TOTAL_PRICE);
  CalcPrictWithVatField(cdsGridData_SUM_TOTAL_PRICE_WITH_VAT_X, cdsGridData_SUM_TOTAL_PRICE_X);
end;

procedure TfmGroupSale.cdsDataS_CURRENCY_CODEChange(Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsGridDataPROCESS_OBJECT_IDENTIFIERGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= StringReplace(Sender.AsString, ' / ', '/', [rfReplaceAll]);
end;

procedure TfmGroupSale.cdsGridDataPRODUCT_CODEChange(Sender: TField);
var
  DefaultStoreCode: Integer;
begin
  inherited;
  DoProductFieldChanged(
    cdsGridDataPRODUCT_CODE,
    cdsGridDataPRODUCT_NAME,
    cdsGridDataPRODUCT_NO,
    cdsGridDataPRODUCT_MEASURE_CODE,
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_CODE,
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF,
    nil, nil, nil, nil, nil, cdsGridDataPRODUCT_HAS_DOC_ITEMS
  );

  cdsGroupSaleLineDefaults.Params.ParamByName('PRODUCT_CODE').AsInteger:= cdsGridDataPRODUCT_CODE.AsInteger;
  cdsGroupSaleLineDefaults.Params.ParamByName('PARTNER_CODE').AsInteger:= cdsDataS_CLIENT_COMPANY_CODE.AsInteger;
  cdsGroupSaleLineDefaults.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:= BorderRelTypeToInt(brtClient);
  cdsGroupSaleLineDefaults.Params.ParamByName('THE_DATE').AsDateTime:= cdsDataS_RECEIVE_DATE.AsDateTime;
  cdsGroupSaleLineDefaults.Params.ParamByName('OBTAINMENT_TYPE_CODE').AsInteger:= ObtainmentTypeToInt(otAcquire);
  cdsGroupSaleLineDefaults.TempOpen/
    procedure begin
      if cdsGroupSaleLineDefaultsPRICE.IsNull then
        cdsGridDataMARKET_SINGLE_PRICE.Clear
      else
        cdsGridDataMARKET_SINGLE_PRICE.AsFloat:=
          RealRoundTo(
            cdsGroupSaleLineDefaultsPRICE.AsFloat *
            cdsCurrencies.Lookup('CURRENCY_CODE', cdsGroupSaleLineDefaultsCURRENCY_CODE.AsVariant, 'TODAY_FIXING') /
            cdsCurrencies.Lookup('CURRENCY_CODE', cdsDataS_CURRENCY_CODE.AsVariant, 'TODAY_FIXING'),
            -2
          );

      if cdsGroupSaleLineDefaultsPRICE_MODIFIER.IsNull then
        cdsGridDataDISCOUNT_PERCENT.AsFloat:= 0
      else
        cdsGridDataDISCOUNT_PERCENT.AsFloat:= 1 - cdsGroupSaleLineDefaultsPRICE_MODIFIER.AsFloat;
    end;  { lambda }

  if not cdsGridDataPRODUCT_CODE.IsNull then
    try
      if cdsGridDataPRODUCT_MEASURE_CODE.IsNull then
        raise Exception.Create(SProductWorkMeasureRequired);

      if cdsGridDataPRODUCT_ACCOUNT_MEASURE_CODE.IsNull then
        raise Exception.Create(SProductAccountMeasureRequired);

      if (cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF.AsFloat = 0) then
        raise Exception.Create(SProductWorkMeasureCoefRequired);
    except
      cdsGridDataPRODUCT_CODE.Clear;
      raise;
    end;  { try }

  if not cdsGridDataPRODUCT_CODE.IsNull and cdsGridDataSHIPMENT_STORE_CODE.IsNull then
    begin
      DefaultStoreCode:= dmMain.SvrProductsTree.GetProductDefaultStore(cdsGridDataPRODUCT_CODE.AsInteger, LoginContext.CurrentDeptCode);

      if (DefaultStoreCode <> 0) then
        cdsGridDataSHIPMENT_STORE_CODE.AsInteger:= DefaultStoreCode
      else
        if dmMain.SvrDeptsTree.IsDeptStore(LoginContext.CurrentDeptCode) then
          cdsGridDataSHIPMENT_STORE_CODE.AsInteger:= LoginContext.CurrentDeptCode;
    end;  { if }
end;

procedure TfmGroupSale.CalcSinglePrice;
begin
  if FChangingPrice then
    Exit;

  FChangingPrice:= True;
  try
    if cdsGridDataMARKET_SINGLE_PRICE.IsNull then
      cdsGridDataSINGLE_PRICE.Clear
    else
      cdsGridDataSINGLE_PRICE.AsFloat:=
        cdsGridDataMARKET_SINGLE_PRICE.AsFloat *
        (1 - cdsGridDataDISCOUNT_PERCENT.AsFloat);
  finally
    FChangingPrice:= False;
  end;  { try }
end;

procedure TfmGroupSale.cdsGridDataMARKET_SINGLE_PRICEChange(
  Sender: TField);
begin
  inherited;
  CalcSinglePrice;
end;

procedure TfmGroupSale.cdsGridDataDISCOUNT_PERCENTChange(Sender: TField);
begin
  inherited;
  CalcSinglePrice;
end;

procedure TfmGroupSale.cdsGridDataSINGLE_PRICEChange(Sender: TField);
begin
  inherited;
  if not FChangingPrice then
    begin
      FChangingPrice:= True;
      try
        if cdsGridDataSINGLE_PRICE.IsNull or
           (cdsGridDataMARKET_SINGLE_PRICE.AsFloat = 0) then
          cdsGridDataDISCOUNT_PERCENT.AsFloat:= 0
        else
          cdsGridDataDISCOUNT_PERCENT.AsFloat:=
            1 - (cdsGridDataSINGLE_PRICE.AsFloat / cdsGridDataMARKET_SINGLE_PRICE.AsFloat);
      finally
        FChangingPrice:= False;
      end;  { try }
    end;  { if }

  SetTotalPriceField(cdsGridData);
end;

procedure TfmGroupSale.cdsGridDataBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if cdsGridData.IsEmpty then
    LoadVatPercent;
end;

procedure TfmGroupSale.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not FChangingCommonField then
    begin  // Check conditionally required fields
      if not cdsGridDataCL_OFFER_QUANTITY.IsNull then
        CheckRequiredField(cdsGridDataCL_OFFER_QUANTITY_CHG);

      if not cdsGridDataCL_OFFER_QUANTITY_CHG.IsNull then
        CheckRequiredField(cdsGridDataCL_OFFER_QUANTITY);

      if not cdsGridDataQUANTITY.IsNull then
        CheckRequiredField(cdsGridDataQUANTITY_CHG);

      if not cdsGridDataQUANTITY_CHG.IsNull then
        CheckRequiredField(cdsGridDataQUANTITY);

      if not cdsGridDataMARKET_SINGLE_PRICE.IsNull then
        CheckRequiredField(cdsGridDataSINGLE_PRICE);

      if not cdsGridDataSINGLE_PRICE.IsNull then
        CheckRequiredField(cdsGridDataMARKET_SINGLE_PRICE);

      if not cdsGridDataSSH_QUANTITY.IsNull then
        CheckRequiredFields([
          cdsGridDataQUANTITY,
          cdsGridDataMARKET_SINGLE_PRICE,
          cdsGridDataSINGLE_PRICE]);

      if cdsGridDataANNUL_EMPLOYEE_CODE.IsNull and
         ( cdsDataCREATE_SALE_GROUP.AsBoolean or
           not cdsDataSALE_GROUP_OBJECT_CODE.IsNull ) then
        CheckRequiredFields([
          cdsGridDataQUANTITY,
          cdsGridDataQUANTITY_CHG,
          cdsGridDataMARKET_SINGLE_PRICE,
          cdsGridDataDISCOUNT_PERCENT,
          cdsGridDataSINGLE_PRICE]);
    end;  { if }

  cdsGridDataRECORD_CHANGED.AsInteger:= 1;

  if cdsGridDataANNUL_EMPLOYEE_CODE.IsNull and
     ( cdsDataCREATE_SALE_GROUP.AsBoolean or
       ( not cdsDataSALE_GROUP_OBJECT_CODE.IsNull and
         cdsGridDataSALE_NO.IsNull ) ) then
    cdsGridDataCREATE_SALE.AsInteger:= 1
  else
    cdsGridDataCREATE_SALE.AsInteger:= 0;

  if cdsGridDataANNUL_EMPLOYEE_CODE.IsNull then
    begin
      cdsGridDataSALE_GROUP_OBJECT_BRANCH_CODE.AsVariant:=
        cdsDataSALE_GROUP_OBJECT_BRANCH_CODE.AsVariant;

      cdsGridDataSALE_GROUP_OBJECT_CODE.AsVariant:=
        cdsDataSALE_GROUP_OBJECT_CODE.AsVariant;
    end;  { if }

  cdsGridDataCL_OFFER_SINGLE_PRICE.AsVariant:=
    cdsGridDataSINGLE_PRICE.AsVariant;

  cdsGridDataSSH_INVOICE_SINGLE_PRICE.AsVariant:=
    cdsGridDataSINGLE_PRICE.AsVariant;

  cdsGridDataSSH_PLAN_QUANTITY.AsVariant:=
    cdsGridDataQUANTITY.AsVariant;

  cdsGridDataSALE_ORDER_TYPE_CODE.AsVariant:=
    cdsDataSALE_ORDER_TYPE_CODE.AsVariant;

  cdsGridDataREQUEST_BRANCH_CODE.AsVariant:=
    cdsDataREQUEST_BRANCH_CODE.AsVariant;

  cdsGridDataREQUEST_NO.AsVariant:=
    cdsDataREQUEST_NO.AsVariant;

  cdsGridDataSALE_TYPE_CODE.AsVariant:=
    cdsDataS_SALE_TYPE_CODE.AsVariant;

  cdsGridDataCLIENT_COMPANY_CODE.AsVariant:=
    cdsDataS_CLIENT_COMPANY_CODE.AsVariant;

  cdsGridDataPARTNER_CODE.AsVariant:=
    cdsDataS_CLIENT_COMPANY_CODE.AsVariant;

  cdsGridDataREQUEST_SEND_DATE.AsVariant:=
    cdsDataS_REQUEST_SEND_DATE.AsVariant;

  cdsGridDataREQUEST_REGISTER_DATE.AsVariant:=
    cdsDataS_REQUEST_REGISTER_DATE.AsVariant;

  cdsGridDataRECEIVE_DATE_CHG.AsVariant:=
    cdsDataS_RECEIVE_DATE_CHG.AsVariant;

  cdsGridDataCL_OFFER_RECEIVE_DATE_CH.AsVariant:=
    cdsDataS_CL_OFFER_RECEIVE_DATEC.AsVariant;

  cdsGridDataCURRENCY_CODE.AsVariant:=
    cdsDataS_CURRENCY_CODE.AsVariant;

  cdsGridDataSHIPMENT_DAYS.AsVariant:=
    cdsDataS_SHIPMENT_DAYS.AsVariant;

  cdsGridDataRECEIVE_PLACE_OFFICE_CODE.AsVariant:=
    cdsDataS_RECEIVE_PLACE_OFFICE_CODE.AsVariant;

  cdsGridDataCUSTOMHOUSE_CODE.AsVariant:=
    cdsDataS_CUSTOMHOUSE_CODE.AsVariant;

  cdsGridDataSHIPMENT_TYPE_CODE.AsVariant:=
    cdsDataS_SHIPMENT_TYPE_CODE.AsVariant;

  cdsGridDataIS_VENDOR_TRANSPORT.AsVariant:=
    cdsDataS_IS_VENDOR_TRANSPORT.AsVariant;

  cdsGridDataSSH_INVOICE_NO.AsVariant:=
    cdsDataSSH_INVOICE_NO.AsVariant;

  cdsGridDataSSH_INVOICE_DATE.AsVariant:=
    cdsDataSSH_INVOICE_DATE.AsVariant;

  cdsGridDataSSH_INVOICE_CURRENCY_CODE.AsVariant:=
    cdsDataSSH_INVOICE_CURRENCY_CODE.AsVariant;

  cdsGridDataSSH_IS_PROFORM_INVOICE.AsVariant:=
    cdsDataSSH_IS_PROFORM_INVOICE.AsVariant;


  cdsGridDataSALE_DEAL_TYPE_CODE.AsVariant:=
    cdsDataS_SALE_DEAL_TYPE_CODE.AsVariant;

  cdsGridDataSSH_LEASE_PLAN_DATE_UNIT_QTY.AsVariant:=
     cdsGridDataLEASE_DATE_UNIT_QTY.AsVariant;

  cdsGridDataMANAGER_EMPLOYEE_CODE.AsVariant:=
    cdsDataS_MANAGER_EMPLOYEE_CODE.AsVariant;

     
// dati
  cdsGridDataCL_OFFER_RECEIVE_DATE.AsVariant:=
    cdsDataS_CL_OFFER_RECEIVE_DATE.AsVariant;

  cdsGridDataCL_OFFER_RETURN_DATE.AsVariant:=
    cdsDataS_CL_OFFER_RETURN_DATE.AsVariant;

  cdsGridDataSHIPMENT_DATE.AsVariant:=
    cdsDataS_SHIPMENT_DATE.AsVariant;

  cdsGridDataRECEIVE_DATE.AsVariant:=
    cdsDataS_RECEIVE_DATE.AsVariant;

  cdsGridDataRETURN_DATE.AsVariant:=
    cdsDataS_RETURN_DATE.AsVariant;

  cdsGridDataIMPORT_DATE.AsVariant:=
    cdsDataS_IMPORT_DATE.AsVariant;

  cdsGridDataSSH_SHIPMENT_PLAN_DATE.AsVariant:=
    cdsGridDataSHIPMENT_DATE.AsVariant;

  cdsGridDataSSH_SHIPMENT_DATE.AsVariant:=
    cdsDataSSH_SHIPMENT_DATE.AsVariant;

  cdsGridDataSSH_RECEIVE_DATE.AsVariant:=
    cdsDataSSH_RECEIVE_DATE.AsVariant;

  cdsGridDataSSH_IMPORT_PLAN_DATE.AsVariant:=
    cdsGridDataIMPORT_DATE.AsVariant;

  cdsGridDataSSH_IMPORT_DATE.AsVariant:=
    cdsDataSSH_IMPORT_DATE.AsVariant;
//


  if not cdsDataANNUL_EMPLOYEE_CODE.IsNull and
     ( cdsGridDataANNUL_EMPLOYEE_CODE.IsNull or
       cdsGridDataANNUL_DATE.IsNull or
       cdsGridDataANNUL_TIME.IsNull ) then
    begin
      cdsGridDataANNUL_EMPLOYEE_CODE.AsVariant:= cdsDataANNUL_EMPLOYEE_CODE.AsVariant;
      cdsGridDataANNUL_DATE.AsVariant:= cdsDataANNUL_DATE.AsVariant;
      cdsGridDataANNUL_TIME.AsVariant:= cdsDataANNUL_TIME.AsVariant;
    end;  { if }

  if cdsGridDataANNUL_EMPLOYEE_CODE.IsNull then
    begin
      cdsGridDataFINISH_EMPLOYEE_CODE.AsVariant:= cdsDataFINISH_EMPLOYEE_CODE.AsVariant;
      cdsGridDataFINISH_DATE.AsVariant:= cdsDataFINISH_DATE.AsVariant;
      cdsGridDataFINISH_TIME.AsVariant:= cdsDataFINISH_TIME.AsVariant;
    end;  { if }
end;

procedure TfmGroupSale.cdsGridDataQUANTITYChange(Sender: TField);
begin
  inherited;
  cdsGridDataQUANTITY_CHG.AsDateTime:= ContextDate();

  SetTotalPriceField(cdsGridData);
end;

procedure TfmGroupSale.cdsGridDataCL_OFFER_LEASE_DATE_UNIT_QTYChange(Sender: TField);
begin
  inherited;
  SetTotalPriceField(cdsGridData);
end;

procedure TfmGroupSale.cdsGridDataCL_OFFER_QUANTITYChange(
  Sender: TField);
begin
  inherited;
  cdsGridDataCL_OFFER_QUANTITY_CHG.AsDateTime:= ContextDate();

  SetTotalPriceField(cdsGridData);
end;

procedure TfmGroupSale.actAnnulExecute(Sender: TObject);
var
  IsSale, IsFinished, WasReadOnly: Boolean;
begin
  inherited;

  if not cdsDataINVOICE_CODE.IsNull then
    raise Exception.Create(SInvoiceExists);

  IsSale:= not cdsDataSALE_GROUP_OBJECT_CODE.IsNull;

  if IsSale then
    LoginContext.CheckUserActivity(uaAnnulGroupSale)
  else
    LoginContext.CheckUserActivity(uaAnnulGroupSaleRequest);

  IsFinished:= not cdsDataFINISH_EMPLOYEE_CODE.IsNull;

  if IsFinished then
    LoginContext.CheckUserActivity(uaAnnulFinishedGroupSale);

  if (MessageDlgEx(SConfirmAllLinesAnnul, mtConfirmation, mbOKCancel, 0) <> mrOk) then
    Exit;

  ShowAnnuledLines:= True;

  WasReadOnly:= cdsData.ReadOnly;
  cdsData.ReadOnly:= False;
  try
    CheckEditMode(cdsData);
    cdsDataANNUL_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
    cdsDataANNUL_DATE.AsDateTime:= ContextDate();
    cdsDataANNUL_TIME.AsDateTime:= ContextTime();
    try
      actApplyUpdates.Execute;
    except
      CheckEditMode(cdsData);
      cdsDataANNUL_EMPLOYEE_CODE.Clear;
      cdsDataANNUL_DATE.Clear;
      cdsDataANNUL_TIME.Clear;
      raise;
    end;  { try }
  finally
    cdsData.ReadOnly:= WasReadOnly;
  end;  { try }

  ModalResult:= mrOk;
end;

procedure TfmGroupSale.actAnnulUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

procedure TfmGroupSale.actFinishExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaFinishGroupSale);

  CheckRequiredField(cdsDataSSH_SHIPMENT_DATE);
  if (cdsDataS_SALE_DEAL_TYPE_CODE.AsInteger = sdtLease) then
    CheckRequiredField(cdsDataSSH_IMPORT_DATE);

  if cdsDataSSH_INVOICE_DATE.IsNull then
    ConfirmAction(SFinishWithoutInvoice);

  if (MessageDlgEx(SConfirmAllLinesFinish, mtConfirmation, mbOKCancel, 0) <> mrOk) then
    Exit;

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
  cdsDataFINISH_DATE.AsDateTime:= ContextDate();
  cdsDataFINISH_TIME.AsDateTime:= ContextTime();
  try
    actApplyUpdates.Execute;
  except
    CheckEditMode(cdsData);
    cdsDataFINISH_EMPLOYEE_CODE.Clear;
    cdsDataFINISH_DATE.Clear;
    cdsDataFINISH_TIME.Clear;
    raise;
  end;

  ModalResult:= mrOk;
end;

procedure TfmGroupSale.actFinishUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    cdsDataFINISH_EMPLOYEE_CODE.IsNull;
end;

procedure TfmGroupSale.actFinOrderExecute(Sender: TObject);
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

      if TfmNewFinOrder.ShowForm(nil, cdsData, emEdit, doNone, PartnerCode, brtClient, BaseDate, BaseDate, cdsDataREQUEST_BRANCH_CODE.AsInteger) then
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

procedure TfmGroupSale.actFinOrderPSDsExecute(Sender: TObject);
var
  em: TEditMode;
  BndProcess: string;
begin
  inherited;

  if (EditMode = emInsert) then
    em:= emEdit
  else
    em:= EditMode;

  cdsBinding.TempCreateDataSet/
    procedure begin
      cdsBinding.SafeAppend/
        procedure begin
          AssignFields(cdsData, cdsBinding);
          cdsBindingBND_PROCESS_CODE.AsInteger:= pFinPrdUobNl;
        end;

      BndProcess:= cdsBinding.XMLData;
    end;

  cdsFinOrderPSDsParams.TempCreateDataSet/
    procedure begin
      cdsFinOrderPSDsParams.SafeAppend/
        procedure begin
          cdsFinOrderPSDsParamsCHOSEN_DEPTS.Clear;
          cdsFinOrderPSDsParamsBND_PROCESS.AsString:= BndProcess;
        end;

      TfmPlannedStoreDeals.ShowForm(dmDocClient, cdsFinOrderPSDsParams, em, doNone, False, pcFinancial);
    end;
end;

procedure TfmGroupSale.actFinOrderPSDsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDataFIN_ORDER_CODE.IsNull;
end;

procedure TfmGroupSale.actFinOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    ( (EditMode <> emReadOnly) or
      (cdsData.Active and not cdsDataFIN_ORDER_CODE.IsNull) ) and
    (not cdsDataS_CLIENT_COMPANY_CODE.IsNull) and
    (not cdsDataS_RECEIVE_DATE.IsNull) and
    ( (not cdsDataFIN_ORDER_CODE.IsNull) or
      (cdsDataCREATE_SALE_GROUP.AsBoolean or FHadSale) );
end;

procedure TfmGroupSale.cdsGridDataDISCOUNT_PERCENTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  FormatString: string;
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    begin
      if DisplayText then
        FormatString:= (Sender as TAbmesFloatField).DisplayFormat
      else
        FormatString:= (Sender as TAbmesFloatField).EditFormat;

      Text:= FormatFloat(FormatString, Sender.AsFloat * 100);
    end;
end;

procedure TfmGroupSale.cdsGridDataDISCOUNT_PERCENTSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Text <> '') then
    Sender.AsFloat:= StrToFloat(Text) / 100
  else
    Sender.Clear;
end;

procedure TfmGroupSale.cdsGridDataSSH_LEASE_DATE_UNIT_QTYChange(Sender: TField);
begin
  inherited;
  SetTotalPriceField(cdsGridData);
end;

procedure TfmGroupSale.cdsGridDataSSH_QUANTITYChange(Sender: TField);
begin
  inherited;

  SetTotalPriceField(cdsGridData);
end;

procedure TfmGroupSale.cdsSaleDealTypesFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    (cdsSaleDealTypesSALE_DEAL_TYPE_CODE.AsInteger in [sdtSale, sdtLease]);
end;

procedure TfmGroupSale.cdsSaleOrderTypesAfterOpen(DataSet: TDataSet);

  function TrimOPP(const s: string): string;
  begin
    Result:= s;
    if (Pos(SSale, Result) = 1) then
      Result:= Trim(RightStr(Result, Length(Result) - Length(SSale)));
  end;

begin
  inherited;

  rgSaleOrderType.Values[0]:= IntToStr(sotCurrentQuantity);
  rgSaleOrderType.Values[1]:= IntToStr(sotFutureQuantity);

  rgSaleOrderType.Items[0]:=
    TrimOPP(VarToStr(cdsSaleOrderTypes.Lookup('SALE_ORDER_TYPE_CODE', sotCurrentQuantity, 'SALE_ORDER_TYPE_NAME')));
  rgSaleOrderType.Items[1]:=
    TrimOPP(VarToStr(cdsSaleOrderTypes.Lookup('SALE_ORDER_TYPE_CODE', sotFutureQuantity, 'SALE_ORDER_TYPE_NAME')));
end;

procedure TfmGroupSale.actShowAnnuledLinesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= ShowAnnuledLines;
  btnShowAnnuledLines.Down:= ShowAnnuledLines;
end;

procedure TfmGroupSale.actShowClientNosExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
end;

procedure TfmGroupSale.actShowAnnuledLinesExecute(Sender: TObject);
begin
  inherited;
  ShowAnnuledLines:= not ShowAnnuledLines;
end;

procedure TfmGroupSale.cdsGridDataFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:= cdsGridDataANNUL_EMPLOYEE_CODE.IsNull;
end;

procedure TfmGroupSale.cdsGridDataLEASE_DATE_UNIT_QTYChange(Sender: TField);
begin
  inherited;
  SetTotalPriceField(cdsGridData);
end;

procedure TfmGroupSale.SetShowAnnulLines(const Value: Boolean);
var
  b: TBookmark;
begin
  FShowAnnuledLines:= Value;

  b:= cdsGridData.Bookmark;

  cdsGridData.Filtered:= not FShowAnnuledLines;

  try
    cdsGridData.Bookmark:= b;
  except
    // do nothing
  end;  { try }
end;

class function TfmGroupSale.ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean): Boolean;
var
  f: TfmGroupSale;
  MustShowForm: Boolean;
  FormModalResult: Integer;
  InsertedRequestBranchCode: Integer;
  InsertedRequestNo: Integer;
  ds: TDataSet;
  em: TEditMode;
begin
  Result:= False;
  InsertedRequestBranchCode:= 0;
  InsertedRequestNo:= 0;
  MustShowForm:= True;

  while MustShowForm do
    begin
      f:= CreateEx;
      try
        if (InsertedRequestBranchCode = 0) and (InsertedRequestNo = 0) then
          begin
            em:= AEditMode;
            ds:= ADataSet;
          end
        else
          begin
            em:= emEdit;
            ds:= TAbmesClientDataSet.Create(f);
            ds.FieldDefs.Add('REQUEST_BRANCH_CODE', ftFloat);
            ds.FieldDefs.Add('REQUEST_NO', ftFloat);
            (ds as TAbmesClientDataSet).CreateDataSet;
            ds.AppendRecord([InsertedRequestBranchCode, InsertedRequestNo]);
          end;

        f.SetDataParams(AdmDocClient, ds, em, ADefaultsOrigin, AFilterFormEnabled);

        FormModalResult:= f.InternalShowForm;

        MustShowForm:=
          (em in [emInsert, emEdit]) and
          (FormModalResult = mrOk) and
          f.chkReloadGroupSale.Checked;

        if (em = emInsert) and MustShowForm then
          begin
            InsertedRequestBranchCode:= f.InsertedRequestBranchCode;
            InsertedRequestNo:= f.InsertedRequestNo;
          end;

        Result:= Result or f.IsDataModified;
      finally
        f.ReleaseForm;
      end;
    end;
end;

procedure TfmGroupSale.DoCommonFieldChanged;
begin
  FChangingCommonField:= True;
  try
    cdsGridData.TempDisableControls/
      cdsGridData.PreserveRecNo/
        cdsGridData.TempUnfilter/
          cdsGridData.ForEach/
            cdsGridData.SafeEdit/
              procedure begin
                cdsGridDataRECORD_CHANGED.AsInteger:= 1;  // opit za sliap fix na problem s razsinhronizirane na dannite
                // do nothing - cdsGridData.BeforePost sets RECORD_CHANGED = 1 and the common field values
              end;
  finally
    FChangingCommonField:= False;
  end;  { try }
end;

procedure TfmGroupSale.cdsDataANNUL_EMPLOYEE_CODEChange(Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataFINISH_EMPLOYEE_CODEChange(Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataS_SALE_DEAL_TYPE_CODEChange(Sender: TField);
begin
  inherited;
  SetColumns;
end;

procedure TfmGroupSale.cdsDataS_SALE_TYPE_CODEChange(Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataS_SHIPMENT_DATEChange(Sender: TField);
begin
  inherited;

  cdsDataSSH_SHIPMENT_PLAN_DATE.AsVariant:=
    cdsDataS_SHIPMENT_DATE.AsVariant;

  ClearNewFinOrderData;
end;

procedure TfmGroupSale.cdsData_STATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull or (Sender.AsInteger = 0) then
    Text:= ''
  else
    Text:= SaleOrderStatuses[Sender.AsInteger];
end;

procedure TfmGroupSale.RefreshParRelPeriodData;
begin
  RefreshDataSet(cdsCompanyOffices);
  cdsGroupSaleDefaults.Params.ParamByName('PARTNER_CODE').AsInteger:= cdsDataS_CLIENT_COMPANY_CODE.AsInteger;
  cdsGroupSaleDefaults.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:= BorderRelTypeToInt(brtClient);
  cdsGroupSaleDefaults.Params.ParamByName('THE_DATE').AsDateTime:= cdsDataS_RECEIVE_DATE.AsDateTime;
  cdsGroupSaleDefaults.TempOpen/
    procedure begin
      cdsDataS_CURRENCY_CODE.Assign(cdsGroupSaleDefaultsCURRENCY_CODE);
      cdsDataS_SHIPMENT_DAYS.Assign(cdsGroupSaleDefaultsTRANSPORT_DURATION_DAYS);
      cdsDataS_RECEIVE_PLACE_OFFICE_CODE.Assign(cdsGroupSaleDefaultsPARTNER_OFFICE_CODE);
      cdsDataS_CUSTOMHOUSE_CODE.Assign(cdsGroupSaleDefaultsCUSTOMHOUSE_CODE);
      cdsDataS_SHIPMENT_TYPE_CODE.Assign(cdsGroupSaleDefaultsSHIPMENT_TYPE_CODE);
      cdsDataS_IS_VENDOR_TRANSPORT.Assign(cdsGroupSaleDefaultsIS_PARTNER_TRANSPORT);
    end;
end;

procedure TfmGroupSale.ReleaseForm;
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

procedure TfmGroupSale.rgSaleOrderTypeChange(Sender: TObject);
begin
  inherited;
  if FIsUserChangingSaleOrderType then
    with TJvDBRadioPanelHack(rgSaleOrderType).DataLink do
      begin
        Modified;
        UpdateRecord;
        FIsUserChangingSaleOrderType:= False;
      end;
end;

procedure TfmGroupSale.rgSaleOrderTypeClick(Sender: TObject);
begin
  inherited;
  FIsUserChangingSaleOrderType:= True;
end;

procedure TfmGroupSale.cdsDataS_CLIENT_COMPANY_CODEChange(Sender: TField);
begin
  inherited;

  GetCompanyInfo(
    cdsDataS_CLIENT_COMPANY_CODE,
    cdsDataS_CLIENT_COMPANY_NAME,
    nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
    cdsDataS_CLIENT_COMPANY_NO);

  RefreshParRelPeriodData;

  DoCommonFieldChanged;

  ClearNewFinOrderData;
end;

procedure TfmGroupSale.cdsDataS_REQUEST_SEND_DATEChange(Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataS_REQUEST_REGISTER_DATEChange(
  Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataS_RECEIVE_DATE_CHGChange(Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataS_CL_OFFER_RECEIVE_DATECChange(
  Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataSSH_INVOICE_NOChange(Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataSSH_IS_PROFORM_INVOICEChange(Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataSSH_RECEIVE_DATEChange(Sender: TField);
begin
  inherited;
  cdsDataSSH_SHIPMENT_DATE.Assign(cdsDataSSH_RECEIVE_DATE);
  DoCommonFieldChanged;
  ClearNewFinOrderData;
end;

procedure TfmGroupSale.cdsDataSALE_ORDER_TYPE_CODEChange(Sender: TField);
var
  NowDate: TDateTime;
begin
  inherited;
  if (cdsDataSALE_ORDER_TYPE_CODE.AsInteger = sotCurrentQuantity) then
    begin
      NowDate:= ContextDate;

      cdsDataS_MANAGER_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
      cdsDataS_REQUEST_SEND_DATE.AsDateTime:= NowDate;
      cdsDataS_CL_OFFER_RECEIVE_DATE.AsDateTime:= NowDate;
      cdsDataS_RECEIVE_DATE.AsDateTime:= NowDate;
      cdsDataREQUEST_BRANCH_CODE.AsVarInteger:= dmMain.SvrDeptsTree.GetDeptBranchCode(LoginContext.CurrentDeptCode);
    end;  { if }
end;

procedure TfmGroupSale.cdsDataSSH_IMPORT_DATEChange(Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataSSH_INVOICE_DATEChange(Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataCREATE_SALE_GROUPChange(Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
  if not Sender.AsBoolean then
    begin
      ClearNewFinOrderData;

      cdsDataS_SALE_TYPE_CODE.Clear;
      cdsDataSSH_RECEIVE_DATE.Clear;
    end;  { if }

  if cdsDataCREATE_SALE_GROUP.AsBoolean and
     (cdsSaleTypes.RecordCount = 1) then
    begin
      cdsDataS_SALE_TYPE_CODE.AsInteger:= cdsSaleTypesSALE_TYPE_CODE.AsInteger;
    end;  { if }

  if (cdsDataSALE_ORDER_TYPE_CODE.AsInteger = sotCurrentQuantity) and
     (cdsDataCREATE_SALE_GROUP.AsBoolean) then
    begin
      cdsDataSSH_RECEIVE_DATE.AsDateTime:= ContextDate;
    end;  { if }
end;

function TfmGroupSale.GetRecordReadOnly: Boolean;
var
  IsSale: Boolean;
begin
  IsSale:= not cdsDataSALE_GROUP_OBJECT_CODE.IsNull;

  Result:=
    inherited GetRecordReadOnly or
    not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
//    not cdsDataFINISH_EMPLOYEE_CODE.IsNull or
    (not cdsDataFINISH_EMPLOYEE_CODE.IsNull and not cdsDataFIN_ORDER_CODE.IsNull) or
    (not IsSale and not LoginContext.HasUserActivity(uaEditGroupSaleRequest)) or
    (IsSale and not LoginContext.HasUserActivity(uaEditGroupSale)) ;
end;

procedure TfmGroupSale.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if not cdsDataANNUL_EMPLOYEE_CODE.IsNull then
    cdsData_STATUS_CODE.Value:= 11
  else
    begin
      if not cdsDataFINISH_EMPLOYEE_CODE.IsNull then
        cdsData_STATUS_CODE.Value:= 10
      else
        begin
          if (cdsGridData_COUNT_NOT_ANNULED.Value = cdsGridData_COUNT_FINISHED.Value) then
            cdsData_STATUS_CODE.Value:= VarToInt(cdsGridData_MIN_STATUS_CODE_2.Value)
          else
            cdsData_STATUS_CODE.Value:= VarToInt(cdsGridData_MIN_STATUS_CODE.Value);
        end;
    end;

  cdsData_IS_ANNULED.Value:= not cdsDataANNUL_EMPLOYEE_CODE.IsNull;
  cdsData_IS_FINISHED.Value:= not cdsDataFINISH_EMPLOYEE_CODE.IsNull;
  cdsData_REQUEST_IDENTIFIER.AsString:=
    cdsData_REQUEST_BRANCH_NO.AsString + '/' + cdsDataREQUEST_NO.AsString;

  if cdsDataSTORE_REQUEST_CODE.IsNull then
    cdsData_STORE_REQUEST_IDENTIFIER.AsString:= ''
  else
    cdsData_STORE_REQUEST_IDENTIFIER.AsString:=
      cdsData_STORE_REQUEST_BRANCH_NO.AsString + ' / ' + cdsDataSTORE_REQUEST_CODE.AsString;

  cdsData_S_REQUEST_SEND_DATE.AsVariant:= cdsDataS_REQUEST_SEND_DATE.AsVariant;
  cdsData_S_REQUEST_REGISTER_DATE.AsVariant:= cdsDataS_REQUEST_REGISTER_DATE.AsVariant;
  cdsData_S_RECEIVE_DATE.AsVariant:= cdsDataS_RECEIVE_DATE.AsVariant;
  cdsData_SSH_RECEIVE_DATE.AsVariant:= cdsDataSSH_RECEIVE_DATE.AsVariant;
  cdsData_S_SHIPMENT_DATE.AsVariant:= cdsDataS_SHIPMENT_DATE.AsVariant;
  cdsData_SSH_SHIPMENT_DATE.AsVariant:= cdsDataSSH_SHIPMENT_DATE.AsVariant;
  cdsData_S_CL_OFFER_RECEIVE_DATE.AsVariant:= cdsDataS_CL_OFFER_RECEIVE_DATE.AsVariant;
  cdsData_S_CL_OFFER_RECEIVE_DATEC.AsVariant:= cdsDataS_CL_OFFER_RECEIVE_DATEC.AsVariant;
  cdsData_S_RECEIVE_DATE_CHG.AsVariant:= cdsDataS_RECEIVE_DATE_CHG.AsVariant;

  CalcWorkdaysDiff(cdsDataS_RECEIVE_DATE, cdsDataSSH_RECEIVE_DATE, cdsData_S_RECEIVE_DATE_DIFF);
  CalcWorkdaysDiff(cdsDataS_SHIPMENT_DATE, cdsDataSSH_SHIPMENT_DATE, cdsData_S_SHIPMENT_DATE_DIFF);
end;

procedure TfmGroupSale.DoApplyUpdates;
var
  b: TBookmark;
  WasFiltered: Boolean;
begin
  PostDataSet(cdsData);

  if actFinOrder.Enabled then
    begin
      if cdsDataFO_EXEC_DEPT_CODE.IsNull and
         cdsDataANNUL_EMPLOYEE_CODE.IsNull and
         FinOrderNeeded then
        actFinOrder.Execute;

      CheckFinOrderField(cdsDataFO_EXEC_DEPT_CODE);
    end;

  with cdsGridData do
    begin
      WasFiltered:= Filtered;
      Filtered:= False;
      try
        if (cdsGridData.RecordCount = 0) then
          raise Exception.Create(SCantSaveEmptyGroupSale);

        DisableControls;
        try
          b:= Bookmark;
          try
            // Check conditionally required detail fields
            First;
            while not Eof do
              begin
                if cdsDataANNUL_EMPLOYEE_CODE.IsNull and
                   cdsGridDataANNUL_EMPLOYEE_CODE.IsNull then
                  try
                    if cdsDataCREATE_SALE_GROUP.AsBoolean or
                       not cdsDataSALE_GROUP_OBJECT_CODE.IsNull then
                      CheckRequiredFields([
                        cdsGridDataSHIPMENT_STORE_CODE,
                        cdsGridDataQUANTITY,
                        cdsGridDataQUANTITY_CHG,
                        cdsGridDataMARKET_SINGLE_PRICE,
                        cdsGridDataDISCOUNT_PERCENT,
                        cdsGridDataSINGLE_PRICE]);

                    if not cdsDataFINISH_EMPLOYEE_CODE.IsNull then
                      CheckRequiredField(cdsGridDataSSH_QUANTITY);
                  except
                    b:= Bookmark;
                    ActiveControl:= grdData;
                    raise;
                  end;  { try }

                Next;
              end;  { while }

            // set common detail fields
            cdsData.SafeEdit/
              cdsGridData.ForEach/
                cdsGridData.SafeEdit/
                  procedure begin
                    // do nothing - cdsGridData.BeforePost slaga stoinosti na dosta poleta
                  end;
          finally
            try
              Bookmark:= b;
            except
              // do nothing
            end;  { try }
          end;  { try }
        finally
          EnableControls;
        end;  { try }
      finally
        Filtered:= WasFiltered;
      end;  { try }
    end;  { with }

  inherited DoApplyUpdates;

  if (EditMode = emInsert) then
    begin
      FInsertedRequestBranchCode:= cdsDataREQUEST_BRANCH_CODE.AsInteger;
      FInsertedRequestNo:= cdsDataREQUEST_NO.AsInteger;
    end;
end;

procedure TfmGroupSale.cdsDataFINISH_DATEChange(Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataFINISH_TIMEChange(Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataINVOICE_STATE_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(Sender.AsInteger, Low(SaleOrderInvoiceStateNames), High(SaleOrderInvoiceStateNames)) then
    Text:= '    ' + SaleOrderInvoiceStateNames[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmGroupSale.cdsDataANNUL_DATEChange(Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataANNUL_TIMEChange(Sender: TField);
begin
  inherited;
  DoCommonFieldChanged;
end;

function TfmGroupSale.GetApplyUpdatesEnabled: Boolean;
begin
  // tova tuk e napisano shtoto stava niakakva strannost pri prikluchvane
  // vednaga sled cdsData.ApplyUpdates(), cdsData.ChangeCount = 1
  // i saotvetno, FormClose pak puska ApplyUpdates (2ri put) - losho.
  // nemojah da razbera zashto stava taka
  // oshte po-stranno e che pri vtoria (nenujen) apply, v servera
  // Detail.FINISH_TIME e prazno a
  // Detail.(FINISH_DATE, CHANGE_DATE i CHANGE_TIME) si imat stoinost
  // tova puk savsem ne moga da razbera shto stava
  Result:=
    inherited GetApplyUpdatesEnabled and
    ( (ModalResult <> mrOk) or
      FWasFinished or
      ( cdsDataANNUL_EMPLOYEE_CODE.IsNull and
        cdsDataFINISH_EMPLOYEE_CODE.IsNull ) );
end;

function TfmGroupSale.GetBaseDateForFinOrder: TDateTime;
begin
  if cdsDataSSH_SHIPMENT_DATE.IsNull then
    Result:= cdsDataS_RECEIVE_DATE.AsDateTime  // sets cdsDataSSH_SHIPMENT_PLAN_DATE.AsDateTime on post
  else
    Result:= cdsDataSSH_SHIPMENT_DATE.AsDateTime;
end;

function TfmGroupSale.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    inherited GetGridRecordReadOnly or
    (FinishedEditMode = emReadOnly);
end;

function TfmGroupSale.GetPartnerCodeForFinOrder: Integer;
begin
  Result:= cdsDataS_CLIENT_COMPANY_CODE.AsInteger;
end;

procedure TfmGroupSale.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  Assert(cdsData.RecordCount <= 1,
    'fmGroupSale.cdsData.RecordCount should not be greater than 1. Actual: ' +
    IntToStr(cdsData.RecordCount));
end;

procedure TfmGroupSale.cdsGridDataQUANTITY_CHGChange(Sender: TField);
begin
  inherited;
  SetQuantityChgXField(cdsGridData);
end;

procedure TfmGroupSale.cdsGridDataCL_OFFER_QUANTITY_CHGChange(
  Sender: TField);
begin
  inherited;
  SetQuantityClientOfferedChgXField(cdsGridData);
end;

procedure TfmGroupSale.cdsGridDataANNUL_EMPLOYEE_CODEChange(
  Sender: TField);
begin
  inherited;

  if cdsGridDataANNUL_EMPLOYEE_CODE.IsNull then
    cdsGridDataANNUL_MULTIPLIER.AsInteger:= 1
  else
    cdsGridDataANNUL_MULTIPLIER.Clear;

  SetXFields(cdsGridData);
end;

procedure TfmGroupSale.actPrintStoreRequestUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetPrintStoreRequestEnabled;
end;

procedure TfmGroupSale.actPrintStoreRequestExecute(Sender: TObject);
begin
  inherited;
  TfmStoreRequest.Print(cdsData);
end;

function TfmGroupSale.GetPrintEnabled: Boolean;
begin
  Result:=
    inherited GetPrintEnabled and
    (cdsData.ChangeCount = 0);
end;

function TfmGroupSale.GetOriginalFormCaption: string;
var
  IsSale: Boolean;
begin
  IsSale:= not cdsDataSALE_GROUP_OBJECT_CODE.IsNull;

  if IsSale then
    Result:= SGroupPPShortProcCaption
  else
    Result:= SGroupAskShortProcCaption;
end;

procedure TfmGroupSale.cdsGridDataDISCOUNT_PERCENTValidate(Sender: TField);
begin
  inherited;
  if (Sender.AsFloat < 0) or (Sender.AsFloat > 1) then
    raise Exception.CreateFmt(SFieldValueBetween, [Sender.DisplayLabel])
end;

procedure TfmGroupSale.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
const
  LessQuantityColor: array[Boolean] of TColor = (clRed, clRed);
  EqualQuantityColor: array[Boolean] of TColor = (clGreen, clLime);
  MoreQuantityColor: array[Boolean] of TColor = (clBlue, clAqua);
var
  Highlight: Boolean;
begin
  inherited;
  if (Column.Field = cdsGridDataSSH_QUANTITY) then
    begin
      Highlight:= (gdSelected in State);

      if (cdsGridDataSSH_QUANTITY.AsFloat < cdsGridDataQUANTITY.AsFloat) then
        begin
          AFont.Color:= LessQuantityColor[Highlight];
        end;  { if }

      if (cdsGridDataSSH_QUANTITY.AsFloat = cdsGridDataQUANTITY.AsFloat) then
        begin
          AFont.Color:= EqualQuantityColor[Highlight];
        end;  { if }

      if (cdsGridDataSSH_QUANTITY.AsFloat > cdsGridDataQUANTITY.AsFloat) then
        begin
          AFont.Color:= MoreQuantityColor[Highlight];
        end;  { if }
    end;  { if }

  if (Column.Field = cdsGridDataQUANTITY_RETURNED_TO_STORE) and
     ( LargeZero(
         cdsGridDataSSH_QUANTITY.AsFloat -
         cdsGridDataQUANTITY_RETURNED_TO_STORE.AsFloat,
         0.0001
       ) > 0
     ) then
    AFont.Color:= clRed;
end;

procedure TfmGroupSale.Initialize;
begin
  inherited;
  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  FHadSale:= not cdsGridDataSALE_NO.IsNull;
  FWasFinished:= not cdsDataFINISH_EMPLOYEE_CODE.IsNull;

  if (EditMode <> emInsert) then
    begin
      LoadVatPercent;
      cdsGridData.RecalcFields;
    end;

  if LoginContext.DefaultIncludeVAT then
    actIncludeVAT.Execute;

  FInitialFinOrderCode:= cdsDataFIN_ORDER_CODE.AsInteger;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotSaleRequestGroup, cdsData);

  chkReloadGroupSale.Checked:=
    ((EditMode = emInsert) and LoginContext.DefaultReloadGroupSaleOnInsert) or
    ((EditMode = emEdit) and LoginContext.DefaultReloadGroupSaleOnEdit);
end;

procedure TfmGroupSale.LoadVatPercent;
begin
  FVatPercent:= dmMain.SvrFinance.GetVatPercent(GetBaseDateForFinOrder);
end;

procedure TfmGroupSale.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

function TfmGroupSale.FinishedEditMode: TEditMode;
begin
  if not cdsDataFINISH_EMPLOYEE_CODE.IsNull then
    Result:= emReadOnly
  else
    Result:= EditMode;
end;

procedure TfmGroupSale.cdsGridDataSHIPMENT_STORE_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsGridDataSHIPMENT_STORE_CODE, nil,
    cdsGridDataSHIPMENT_STORE_IDENTIFIER);
end;

procedure TfmGroupSale.cdsGridDataSHIPMENT_STORE_CODEValidate(
  Sender: TField);
begin
  inherited;
  if (cdsGridDataSTORE_REQ_COMPLETED_QUANTITY.AsFloat <> 0) then
    raise Exception.Create(SCannotChangeStore);
end;

procedure TfmGroupSale.actCopyQuantityTakenToQuantityShippedExecute(
  Sender: TObject);
var
  b: TBookmark;
begin
  inherited;

  if (MessageDlgEx(
       SCopyQuantities,
       mtConfirmation, mbOKCancel, 0) <> mrOk) then
    Exit;

  CheckEditMode(cdsData);

  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;

        First;
        while not Eof do
          begin
          if cdsGridDataANNUL_EMPLOYEE_CODE.IsNull and
             cdsGridDataSSH_QUANTITY.IsNull and
             not cdsGridDataQUANTITY_TAKEN_FROM_STORE.IsNull then
            begin
                Edit;
                try
                  cdsGridDataSSH_QUANTITY.AsVariant:=
                    cdsGridDataQUANTITY_TAKEN_FROM_STORE.AsVariant;

                  Post;
                except
                  Cancel;
                  raise;
                end;  { try }
            end;  { if }

            Next;
          end;  { while }

        Bookmark:= b;
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmGroupSale.actCopyQuantityTakenToQuantityShippedUpdate(
  Sender: TObject);
var
  IsSale, CanStoreDataInShipment: Boolean;
begin
  inherited;
  IsSale:=
    not cdsDataSALE_GROUP_OBJECT_CODE.IsNull;
  CanStoreDataInShipment:=
    IsSale or (cdsDataCREATE_SALE_GROUP.AsInteger <> 0);

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    CanStoreDataInShipment and
    (VarToFloat(cdsGridData_MAX_QUANTITY_TAKEN_FROM_STORE.AsVariant) > 0) and
    cdsData.Active and
    (cdsDataS_SALE_DEAL_TYPE_CODE.AsInteger = sdtSale);

  if cdsData.Active and
    (cdsDataS_SALE_DEAL_TYPE_CODE.AsInteger = sdtSale) then
    btnCopyQuantityTakenToQuantityShipped.Top:=
      pnlNavigator.Height - btnCopyQuantityTakenToQuantityShipped.Height 
  else
    btnCopyQuantityTakenToQuantityShipped.Top:= -100;
end;

procedure TfmGroupSale.actInvoiceUpdate(Sender: TObject);
var
  IsSale: Boolean;
begin
  inherited;
  IsSale:= not cdsDataSALE_GROUP_OBJECT_CODE.IsNull;

  (Sender as TAction).Visible:= LoginContext.IsInvoiceSystemVisible;
  (Sender as TAction).Enabled:=
    IsSale and
    (not cdsDataINVOICE_CODE.IsNull or (FinishedEditMode <> emReadOnly));
end;

procedure TfmGroupSale.actNotesExecute(Sender: TObject);
begin
  inherited;
  if not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
     not cdsDataFINISH_EMPLOYEE_CODE.IsNull then
    TfmNotes.EditNotesField(cdsDataNOTES, emReadOnly)
  else
    TfmNotes.EditNotesField(cdsDataNOTES, EditMode);
end;

procedure TfmGroupSale.actNotesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= IfThen(cdsDataNOTES.AsString = '', 207, 57);
end;

procedure TfmGroupSale.actInvoiceExecute(Sender: TObject);
var
  InvoiceEditMode: TEditMode;
  InvoiceDate: TDateTime;
  ReceiverFinPartnerCode: Variant;
begin
  inherited;

  if GetApplyUpdatesEnabled then
    begin
      ConfirmAction(SChangesWillBeAppliedAfterInvoiceApply);
      DoApplyUpdates;
    end;  { if }

  if cdsDataINVOICE_CODE.IsNull then
    begin
      LoginContext.CheckUserActivity(uaOutFaktura);

      cdsNewInvoice.TempCreateDataSet/
        procedure begin
          cdsNewInvoice.SafeAppend/
            procedure begin
              InvoiceDate:= IfThen(not cdsDataSSH_INVOICE_DATE.IsNull, cdsDataSSH_INVOICE_DATE.AsDateTime, ContextDate);

              ReceiverFinPartnerCode:=
                dmMain.SvrCompanies.GetFinPartner(
                  cdsDataS_CLIENT_COMPANY_CODE.AsInteger,
                  BorderRelTypeToInt(brtClient),
                  InvoiceDate, InvoiceDate);

              cdsNewInvoiceBUYER_COMPANY_CODE.AsInteger:=
                IfThen(VarIsNullOrEmpty(ReceiverFinPartnerCode), cdsDataS_CLIENT_COMPANY_CODE.AsInteger, ReceiverFinPartnerCode);

              cdsNewInvoiceRECEIVER_COMPANY_CODE.AsInteger:= cdsDataS_CLIENT_COMPANY_CODE.AsInteger;
              cdsNewInvoiceSELLER_COMPANY_CODE.AsInteger:= 0;
              cdsNewInvoiceSENDER_COMPANY_CODE.AsInteger:= 0;
              cdsNewInvoiceCURRENCY_CODE.AsInteger:= LoginContext.BaseCurrencyCode;
              cdsNewInvoiceINVOICE_DATE.AsDateTime:= InvoiceDate;
              cdsNewInvoiceEVENT_DATE.AsDateTime:= InvoiceDate;
            end;  { lambda }

          cdsNewInvoiceItems.TempCreateDataSet/
            procedure begin
              cdsGridData.PreserveBookmark/
                cdsGridData.TempDisableControls/
                  cdsGridData.ForEach/
                    procedure begin
                      if cdsGridDataANNUL_EMPLOYEE_CODE.IsNull then
                        begin
                          if cdsGridDataSSH_QUANTITY.IsNull then
                            raise Exception.Create(SCannotCreateInvoice);

                          if (cdsGridDataSSH_QUANTITY.AsFloat <> 0) then
                            cdsNewInvoiceItems.SafeAppend/
                              procedure begin
                                if (cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF.AsFloat = 0) then
                                  raise Exception.Create(SProductWorkMeasureCoefRequired);

                                cdsNewInvoiceItemsPRODUCT_CODE.AsInteger:= cdsGridDataPRODUCT_CODE.AsInteger;
                                cdsNewInvoiceItemsACCOUNT_QUANTITY.AsFloat:= cdsGridDataSSH_QUANTITY.AsFloat * cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF.AsFloat;
                                cdsNewInvoiceItemsSINGLE_PRICE.AsFloat:= cdsGridDataSINGLE_PRICE.AsFloat / cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF.AsFloat;
                                cdsNewInvoiceItemsMARKET_SINGLE_PRICE.AsFloat:= cdsGridDataMARKET_SINGLE_PRICE.AsFloat / cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF.AsFloat;
                                cdsNewInvoiceItemsDISCOUNT_PERCENT.AsFloat:= cdsGridDataDISCOUNT_PERCENT.AsFloat;
                                cdsNewInvoiceItemsCURRENCY_CODE.AsInteger:= cdsDataS_CURRENCY_CODE.AsInteger;
                                cdsNewInvoiceItemsBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger:= cdsGridDataSSH_SHIPMENT_OBJ_BRANCH_CODE.AsInteger;
                                cdsNewInvoiceItemsBND_PROCESS_OBJECT_CODE.AsInteger:= cdsGridDataSSH_SHIPMENT_OBJ_CODE.AsInteger;
                                cdsNewInvoiceItemsBND_PROCESS_OBJECT_IDENTIFIER.AsString:= cdsGridDataPROCESS_OBJECT_IDENTIFIER.AsString;
                                cdsNewInvoiceItemsCLIENT_REQUEST_NO.AsString:= cdsGridDataCLIENT_REQUEST_NO.AsString;
                              end;  { lambda }
                        end;  { if }
                    end;  { lambda }

              if TfmInvoice.ShowForm(dmDocClient, nil, emInsert, iiotOut, itFaktura, cdsNewInvoice, cdsNewInvoiceItems) then
                begin
                  FIsInvoiceModified:= True;
                  ModalResult:= mrOk;
                end;
            end;  { lambda }
        end;  { lambda }
    end
  else
    begin
      if (EditMode = emReadOnly) then
        InvoiceEditMode:= emReadOnly
      else
        InvoiceEditMode:= emEdit;

      if TfmInvoice.ShowForm(dmDocClient, cdsData, InvoiceEditMode, iiotOut) then
        begin
          FIsInvoiceModified:= True;
          ModalResult:= mrOk;
        end;
    end;
end;

function TfmGroupSale.GetIsDataModified: Boolean;
begin
  Result:=
    inherited GetIsDataModified or
    FIsInvoiceModified;
end;

procedure TfmGroupSale.SumFieldGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var
  SameMeasure: Boolean;
  Field: TField;
begin
  inherited;


  if (Pos('QUANTITY', Sender.FieldName) <= 0) then
    SameMeasure:= True
  else
    begin
      if ShowAnnuledLines then
        SameMeasure:=
          (VarToInt(cdsGridData_MIN_PRODUCT_MEASURE_CODE.AsVariant) = VarToInt(cdsGridData_MAX_PRODUCT_MEASURE_CODE.AsVariant))
      else
        SameMeasure:=
          (VarToInt(cdsGridData_MIN_PRODUCT_MEASURE_CODE_X.AsVariant) = VarToInt(cdsGridData_MAX_PRODUCT_MEASURE_CODE_X.AsVariant));
    end;

  if not SameMeasure then
    Text:= SDifferentMeasures
  else
    begin
      if ShowAnnuledLines then
        Field:= Sender
      else
        Field:= cdsGridData.FieldByName(Sender.FieldName + '_X');

      NumericFieldGetText(Field, Text, DisplayText);
    end;
end;

function TfmGroupSale.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertRecordEnabled and
    (FinishedEditMode <> emReadOnly);
end;

procedure TfmGroupSale.cdsDataS_REQUEST_SEND_DATEValidate(Sender: TField);
begin
  inherited;
  if (cdsDataS_REQUEST_SEND_DATE.AsDateTime > cdsDataS_REQUEST_REGISTER_DATE.AsDateTime) then
    raise Exception.Create(SInvalidRequestSendDate);
end;

procedure TfmGroupSale.cdsDataS_RETURN_DATEChange(Sender: TField);
begin
  inherited;
  cdsDataS_IMPORT_DATE.Assign(cdsDataS_RETURN_DATE);
  DoCommonFieldChanged;
end;

procedure TfmGroupSale.cdsDataREQUEST_BRANCH_CODEChange(Sender: TField);
begin
  inherited;
  cdsDataREQUEST_NO.AsInteger:=
    dmMain.SvrGroupSales.GetNewSaleRequestNo(cdsDataREQUEST_BRANCH_CODE.AsInteger);
end;

procedure TfmGroupSale.cdsBranchesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsBranches.Filtered:= (EditMode = emInsert);
end;

procedure TfmGroupSale.cdsCompanyOfficesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsCompanyOffices.Params.ParamByName('COMPANY_CODE').Value:=
    cdsDataS_CLIENT_COMPANY_CODE.AsVariant;
end;

procedure TfmGroupSale.actPrintExExecute(Sender: TObject);
var
  p: TPoint;
begin
  inherited;
  with btnPrintEx do
    p:= Parent.ClientToScreen(Point(Left, Top + Height));

  pmPrint.Popup(p.x, p.y);
end;

procedure TfmGroupSale.actPrintExUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetPrintEnabled or GetPrintStoreRequestEnabled;
end;

function TfmGroupSale.GetPrintStoreRequestEnabled: Boolean;
begin
  Result:= (cdsData.ChangeCount = 0) and not cdsDataSTORE_REQUEST_CODE.IsNull;
end;

procedure TfmGroupSale.cdsDataAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
var
  NewRequestBranchCode: Integer;
  NewRequestNo: Integer;
  NewSaleGroupObjectIdentifier: string;
  DummyString: string;
  NewRequestBranchNo: Double;
begin
  inherited;

  Assert(VarIsArray(OwnerData));
  Assert(VarArrayLowBound(OwnerData, 1) = 0);
  Assert(VarArrayHighBound(OwnerData, 1) = 3);

  Assert(VarIsType(OwnerData[0], varInteger));
  Assert(VarIsType(OwnerData[1], varInteger));
  Assert(VarIsType(OwnerData[2], varOleStr));
  Assert(VarIsType(OwnerData[3], varInteger));

  NewRequestBranchCode:= OwnerData[0];
  NewRequestNo:= OwnerData[1];
  NewSaleGroupObjectIdentifier:= OwnerData[2];
  FFinalFinOrderCode:= OwnerData[3];

  if (NewRequestBranchCode <> 0) and
     (NewRequestNo <> 0) and
     ( (NewRequestBranchCode <> cdsDataREQUEST_BRANCH_CODE.AsInteger) or
       (NewRequestNo <> cdsDataREQUEST_NO.AsInteger) ) then
    begin
      dmMain.SvrDeptsTree.GetNodeData(NewRequestBranchCode, DummyString, NewRequestBranchNo);
      ShowMessageFmtEx(SRequestNoInfo, [NewRequestBranchNo, NewRequestNo]);
    end;  { if }

  if (NewSaleGroupObjectIdentifier <> '') then
    ShowMessageFmtEx(SSaleGroupNoInfo, [NewSaleGroupObjectIdentifier]);
end;

procedure TfmGroupSale.btnDocumentationClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, btnDocumentation,
    cdsGridDataPRODUCT_CODE.AsInteger);
end;

class function TfmGroupSale.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmGroupSale.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= VarArrayOf([DocsDelta, cdsGridData_SUM_TOTAL_PRICE_X.AsVariant]);
end;

procedure TfmGroupSale.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, btnDocs, dotSaleRequestGroup, cdsData);
end;

function TfmGroupSale.GetPrintButtonOnToolbarEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmGroupSale.SetDBFrameReadOnly(AFrame: TDBFrame);
var
  IsSale, CanStoreDataInShipment: Boolean;
begin
  if (AFrame = frRequestRegisterDate) or
     (AFrame = frShipmentDate) or
     (AFrame = frRealShipmentDate) or
     (AFrame = frLeaseShipmentDate) or
     (AFrame = frLeaseImportDate) or
     (AFrame = frLeaseRealShipmentDate) then
    AFrame.ReadOnly:= True
  else
    begin
      IsSale:= not cdsDataSALE_GROUP_OBJECT_CODE.IsNull;
      CanStoreDataInShipment:=
        IsSale or cdsDataCREATE_SALE_GROUP.AsBoolean;

      if (AFrame = frRealReceiveDate) then
        AFrame.ReadOnly:=
          (FinishedEditMode = emReadOnly) or
          not CanStoreDataInShipment or
         (cdsDataSALE_ORDER_TYPE_CODE.AsInteger = sotCurrentQuantity)
      else
        if (AFrame = frLeaseRealReceiveDate) or
           (AFrame = frLeaseRealImportDate) then
          AFrame.ReadOnly:=
            (FinishedEditMode = emReadOnly) or
            not CanStoreDataInShipment
        else
          begin
            if (AFrame = frInvoiceDate) then
              AFrame.ReadOnly:=
                (FinishedEditMode = emReadOnly) or
                not CanStoreDataInShipment or
                not cdsDataINVOICE_CODE.IsNull
            else
              begin
                if (AFrame = frClient) then
                  AFrame.ReadOnly:=
                    (FinishedEditMode = emReadOnly)
                else
                  begin
                    if (AFrame = frManagerEmployee) or
                       (AFrame = frRequestSendDate) or
                       (AFrame = frReceiveDateClientOffered) or
                       (AFrame = frReceiveDate) then
                      AFrame.ReadOnly:=
                        (FinishedEditMode = emReadOnly) or
                        (cdsDataSALE_ORDER_TYPE_CODE.AsInteger = sotCurrentQuantity)
                    else
                      inherited;
                  end;
              end;
          end;
    end;
end;

procedure TfmGroupSale.SetColumns;
const
  FirstQuantityColumnIndex = 7;
  LeaseColumnIndexes = [FirstQuantityColumnIndex, 8, 10, 11, 13, 14, 15];
  QuantityColumnIndexes = [6, 9, 12];
  QuantityColumnsAdditionalWidth = 10;
var
  IsLease: Boolean;
  i: Integer;
  LeaseColumnWidths: Integer;
begin
  IsLease:=
    cdsData.Active and
    (cdsDataS_SALE_DEAL_TYPE_CODE.AsInteger = sdtLease);

  grdData.Columns.BeginUpdate;
  try
    LeaseColumnWidths:= 0;
    for i:= 0 to grdData.Columns.Count - 1 do
      begin
        if (i in LeaseColumnIndexes) then
          begin
            grdData.Columns[i].Visible:= IsLease;
            Inc(LeaseColumnWidths, grdData.Columns[i].Width + 1);
          end;

        if (i in QuantityColumnIndexes) then
          begin
            grdData.Columns[i].Width:=
              FInitialQuantityColumnWidth + IfThen(IsLease, 0, QuantityColumnsAdditionalWidth);

            Dec(LeaseColumnWidths, QuantityColumnsAdditionalWidth);
          end;
      end;

    grdData.Columns[3].Width:=
      FInitialProductNameColumnWidth + IfThen(IsLease, 0, LeaseColumnWidths);
    grdData.Columns[4].Width:= grdData.Columns[3].Width;

    // PROCESS_OBJECT_IDENTIFIER
    grdData.Columns[1].Visible:= not actShowClientNos.Checked;
    // CLIENT_REQUEST_NO
    grdData.Columns[2].Visible:= actShowClientNos.Checked;
    // PRODUCT_NAME
    grdData.Columns[3].Visible:= not actShowClientNos.Checked;
    // CLIENT_PRODUCT_NAME
    grdData.Columns[4].Visible:= actShowClientNos.Checked;
    // SINGLE_PRICE
    grdData.Columns[17].Visible:= actExcludeVAT.Checked;
    // _SINGLE_PRICE_WITH_VAT
    grdData.Columns[18].Visible:= actIncludeVAT.Checked;
    // TOTAL_PRICE
    grdData.Columns[19].Visible:= actExcludeVAT.Checked;
    // _TOTAL_PRICE_WITH_VAT
    grdData.Columns[20].Visible:= actIncludeVAT.Checked;
  finally
    grdData.Columns.EndUpdate;
  end;
end;

end.



