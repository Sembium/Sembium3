unit fInvoice;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, Db, DBClient, AbmesClientDataSet, ImgList, ActnList, StdCtrls,
  Buttons, ExtCtrls, JvDBLookup, Mask, DBCtrls,
  AbmesFields, GridsEh, DBGridEh, AbmesDBGrid, JvToolEdit, JvDBControls, ComCtrls,
  AbmesReport, Menus, JvButtons, fRightButtonGridForm,
  ParamDataSet, ColorNavigator, JvDBCombobox, ToolWin, dDocClient,
  AbmesDBCheckBox, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateFieldEditFrame, fPartnerFieldEditFrame, fPartnerFieldEditFrameBald,
  JvExControls, JvComponent, JvExStdCtrls, JvCaptionButton, JvComponentBase,
  JvCombobox, uSection, DBGridEhGrouping, uBorderRelTypes, JvExMask, fBaseForm,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL,
  DBAxisGridsEh, System.Generics.Collections;

type
  TInvoiceIOType = (iiotIn, iiotOut);

type
  [CanUseDocs]
  TfmInvoice = class(TRightButtonGridForm)
    actAddItem: TAction;
    actRemoveItem: TAction;
    cdsInvoiceTypes: TAbmesClientDataSet;
    cdsCurrencies: TAbmesClientDataSet;
    dsCurrencies: TDataSource;
    cdsCompanyBankAccounts: TAbmesClientDataSet;
    dsCompanyBankAccounts: TDataSource;
    cdsInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField;
    cdsInvoiceTypesINVOICE_TYPE_NAME: TAbmesWideStringField;
    cdsInvoiceTypesADD_VAT: TAbmesFloatField;
    cdsInvoiceTypesADD_VAT_TO_ITEMS: TAbmesFloatField;                               
    cdsInvoiceTypesDIARY_NO_WHEN_ANNULED: TAbmesFloatField;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsCurrenciesCURRENCY_NAME: TAbmesWideStringField;
    cdsCurrenciesSCALE: TAbmesFloatField;
    cdsCurrenciesROUNDER: TAbmesFloatField;
    cdsCurrenciesORDER_NO: TAbmesFloatField;
    actEditItem: TAction;
    cdsSellerCompanyRepresentatives: TAbmesClientDataSet;
    cdsBuyerCompanyRepresentatives: TAbmesClientDataSet;
    dsSellerCompanyRepresentatives: TDataSource;
    dsBuyerCompanyRepresentatives: TDataSource;
    cdsSellerCompanyRepresentativesCOMPANY_CODE: TAbmesFloatField;
    cdsSellerCompanyRepresentativesREPRESENTATIVE_CODE: TAbmesFloatField;
    cdsSellerCompanyRepresentativesOFFICE_COMPANY_CODE: TAbmesFloatField;
    cdsSellerCompanyRepresentativesOFFICE_CODE: TAbmesFloatField;
    cdsSellerCompanyRepresentativesFIRST_NAME: TAbmesWideStringField;
    cdsSellerCompanyRepresentativesMIDDLE_NAME: TAbmesWideStringField;
    cdsSellerCompanyRepresentativesLAST_NAME: TAbmesWideStringField;
    cdsSellerCompanyRepresentativesOCCUPATION: TAbmesWideStringField;
    cdsSellerCompanyRepresentativesEGN: TAbmesWideStringField;
    cdsSellerCompanyRepresentativesMALE: TAbmesFloatField;
    cdsSellerCompanyRepresentativesLANGUAGE_CODE: TAbmesFloatField;
    cdsSellerCompanyRepresentativesNAME: TAbmesWideStringField;
    cdsBuyerCompanyRepresentativesCOMPANY_CODE: TAbmesFloatField;
    cdsBuyerCompanyRepresentativesREPRESENTATIVE_CODE: TAbmesFloatField;
    cdsBuyerCompanyRepresentativesOFFICE_COMPANY_CODE: TAbmesFloatField;
    cdsBuyerCompanyRepresentativesOFFICE_CODE: TAbmesFloatField;
    cdsBuyerCompanyRepresentativesFIRST_NAME: TAbmesWideStringField;
    cdsBuyerCompanyRepresentativesMIDDLE_NAME: TAbmesWideStringField;
    cdsBuyerCompanyRepresentativesLAST_NAME: TAbmesWideStringField;
    cdsBuyerCompanyRepresentativesOCCUPATION: TAbmesWideStringField;
    cdsBuyerCompanyRepresentativesEGN: TAbmesWideStringField;
    cdsBuyerCompanyRepresentativesMALE: TAbmesFloatField;
    cdsBuyerCompanyRepresentativesLANGUAGE_CODE: TAbmesFloatField;
    cdsBuyerCompanyRepresentativesNAME: TAbmesWideStringField;
    cdsData_INVOICE_TYPE_NAME: TAbmesWideStringField;
    cdsData_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsMeasuresMEASURE_NAME: TAbmesWideStringField;
    actStorno: TAction;
    smrInvoiceWide: TAbmesMatrixReport;
    smrInvoiceGroupHeaderWide: TAbmesMatrixReport;
    actPrintMatrixWide: TAction;
    mnuPrint: TPopupMenu;
    miPrint: TMenuItem;
    miPrintMatrixWide: TMenuItem;
    smrInvoiceRecordHeaderAndFooterWide: TAbmesMatrixReport;
    smrInvoiceReportHeaderWide: TAbmesMatrixReport;
    smrInvoiceGroupFooterWide: TAbmesMatrixReport;
    cdsData_TO_PAY_TEXT: TAbmesWideStringField;
    cdsData_OVERALL_TOTAL_PRICE: TAbmesFloatField;
    cdsData_TOTAL_PRICE_FOR_VAT: TAbmesFloatField;
    cdsData_TOTAL_VAT: TAbmesFloatField;
    cdsData_TOTAL_PRICE_FOR_PAYMENT: TAbmesFloatField;
    cdsData_PAYMENT_TYPE_TEXT: TAbmesWideStringField;
    cdsData_NOTES: TAbmesWideStringField;
    smrInvoice: TAbmesMatrixReport;
    smrInvoiceReportHeader: TAbmesMatrixReport;
    smrInvoiceGroupHeader: TAbmesMatrixReport;
    smrInvoiceRecordHeaderAndFooter: TAbmesMatrixReport;
    smrInvoiceGroupFooter: TAbmesMatrixReport;
    actPrintMatrix: TAction;
    miPrintMatrix: TMenuItem;
    cdsData_SELLER_PERSON_NAME: TAbmesWideStringField;
    cdsData_BUYER_PERSON_NAME: TAbmesWideStringField;
    pnlTop: TPanel;
    gbSeller: TGroupBox;
    lblPartnerCo: TLabel;
    gbInvoice: TGroupBox;
    lblInvoiceNo: TLabel;
    lblInvoiceDate: TLabel;
    chkIsProform: TAbmesDBCheckBox;
    pnlInvoiceNo: TPanel;
    pnlManualInvoiceNoEdit: TPanel;
    edtInvoiceNo: TDBEdit;
    pnlManualInvoiceNoButton: TPanel;
    btnManualInvoiceNo: TSpeedButton;
    gbBuyer: TGroupBox;
    lblPartnerCode: TLabel;
    pnlBottom: TPanel;
    pnlTotals: TPanel;
    lblOverallPrice: TLabel;
    lblTotalPriceForPayment: TLabel;
    lblPriceForVAT: TLabel;
    edtOverallPrice: TDBEdit;
    edtPriceForVAT: TDBEdit;
    edtTotalPriceForPayment: TDBEdit;
    gbNotes: TGroupBox;
    moNotes: TDBMemo;
    gbEmployees: TGroupBox;
    lblBuyerPersonName: TLabel;
    lblSellerPersonName: TLabel;
    lblSellerName: TLabel;
    edtSellerName: TDBEdit;
    edtSellerCity: TDBEdit;
    lblSellerCity: TLabel;
    lblSellerAddress: TLabel;
    edtSellerAddress: TDBEdit;
    lblBuyerName: TLabel;
    edtBuyerName: TDBEdit;
    edtBuyerCity: TDBEdit;
    lblBuyerCity: TLabel;
    lblBuyerAddress: TLabel;
    edtBuyerAddress: TDBEdit;
    cdsDataINVOICE_BRANCH_CODE: TAbmesFloatField;
    cdsDataINVOICE_CODE: TAbmesFloatField;
    cdsDataIS_PROFORM_INVOICE: TAbmesFloatField;
    cdsDataINVOICE_NO: TAbmesFloatField;
    cdsDataINVOICE_TYPE_CODE: TAbmesFloatField;
    cdsDataINVOICE_DATE: TAbmesSQLTimeStampField;
    cdsDataSELLER_COMPANY_CODE: TAbmesFloatField;
    cdsDataSELLER_NAME: TAbmesWideStringField;
    cdsDataSELLER_CITY: TAbmesWideStringField;
    cdsDataSELLER_ADDRESS: TAbmesWideStringField;
    cdsDataBUYER_COMPANY_CODE: TAbmesFloatField;
    cdsDataBUYER_NAME: TAbmesWideStringField;
    cdsDataBUYER_CITY: TAbmesWideStringField;
    cdsDataBUYER_ADDRESS: TAbmesWideStringField;
    cdsDataSELLER_PERSON_NAME: TAbmesWideStringField;
    cdsDataBUYER_PERSON_NAME: TAbmesWideStringField;
    cdsDataCURRENCY_CODE: TAbmesFloatField;
    cdsDataPAYMENT_TYPE_CODE: TAbmesFloatField;
    cdsDataBANK_COMPANY_CODE: TAbmesFloatField;
    cdsDataACCOUNT: TAbmesFloatField;
    cdsDataVAT_PERCENT: TAbmesFloatField;
    cdsDataNOTES: TAbmesWideStringField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataSTORNO_DATE: TAbmesSQLTimeStampField;
    cdsDataSTORNO_TIME: TAbmesSQLTimeStampField;
    cdsDataqryInvoiceItems: TDataSetField;
    cdsGridDataBRANCH_CODE: TAbmesFloatField;
    cdsGridDataINVOICE_CODE: TAbmesFloatField;
    cdsGridDataINVOICE_ITEM_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataITEM_NAME: TAbmesWideStringField;
    cdsGridDataACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataSINGLE_PRICE: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataMARKET_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataDISCOUNT_PERCENT: TAbmesFloatField;
    cdsGridDataFALSH_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridData_OVERALL_TOTAL_PRICE: TAggregateField;
    cdsGridData_MAX_INVOICE_ITEM_CODE: TAggregateField;
    cdsGridData_FALSH_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_PAY_TYPE_TEXT: TAbmesWideStringField;
    cdsGridData_TOTAL_PRICE: TAbmesFloatField;
    cdsGridData_TOTAL_VAT: TAbmesFloatField;
    cdsGridData_TOTAL_PRICE_FOR_PAYMENT: TAbmesFloatField;
    cdsGridData_TOTAL_PRICE_FOR_VAT: TAbmesFloatField;
    cdsData_VAT_PERCENT_LABEL: TAbmesWideStringField;
    pnlAnulledAndPrintButtons: TPanel;
    pnlPrint: TPanel;
    chkPrint: TCheckBox;
    chkMatrixPrinter: TCheckBox;
    chkWideFormat: TCheckBox;
    cdsGridDataSINGLE_PRICE_WITHOUT_VAT: TAbmesFloatField;
    cdsGridDataSINGLE_PRICE_WITH_VAT: TAbmesFloatField;
    cdsData_BUYER_NAME_1: TAbmesWideStringField;
    cdsData_BUYER_NAME_2: TAbmesWideStringField;
    cdsData_SELLER_NAME_1: TAbmesWideStringField;
    cdsData_SELLER_NAME_2: TAbmesWideStringField;
    cdsGridDataTOTAL_PRICE_WITHOUT_VAT: TAbmesFloatField;
    cdsGridDataTOTAL_PRICE_WITH_VAT: TAbmesFloatField;
    cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsDataINVOICE_PLACE: TAbmesWideStringField;
    cdsDataSELLER_PERSON_NAME_SO: TAbmesWideStringField;
    cdsDataBUYER_PERSON_NAME_SO: TAbmesWideStringField;
    lblInvoicePlace: TLabel;
    cdsData_IS_ORIGINAL_TEXT: TAbmesWideStringField;
    pnlShowIfAnnuled: TPanel;
    chkIsAnnuled: TCheckBox;
    pnlAnnulButton: TPanel;
    btnStorno: TBitBtn;
    pnlPrintButton: TPanel;
    btnPrint: TBitBtn;
    cdsDataVAT_BANK_COMPANY_CODE: TAbmesFloatField;
    cdsDataVAT_ACCOUNT: TAbmesFloatField;
    gbPayment: TGroupBox;
    rbCashPayment: TRadioButton;
    rbBankAccountPayment: TRadioButton;
    cdsDataIS_PAID: TAbmesFloatField;
    chkIsPaid: TAbmesDBCheckBox;
    cdsData_VAT_PAYMENT_TYPE_TEXT: TAbmesWideStringField;
    cdsData_VAT_PAYMENT_TYPE_TEXT_2: TAbmesWideStringField;
    dbtInvoiceTypeName: TDBText;
    smrInvoiceWide2: TAbmesMatrixReport;
    smrInvoiceReportHeaderWide2: TAbmesMatrixReport;
    smrInvoiceGroupHeaderWide2: TAbmesMatrixReport;
    smrInvoiceRecordHeaderAndFooterWide2: TAbmesMatrixReport;
    smrInvoiceGroupFooterWide2: TAbmesMatrixReport;
    smrInvoice2: TAbmesMatrixReport;
    smrInvoiceReportHeader2: TAbmesMatrixReport;
    smrInvoiceGroupHeader2: TAbmesMatrixReport;
    smrInvoiceRecordHeaderAndFooter2: TAbmesMatrixReport;
    smrInvoiceGroupFooter2: TAbmesMatrixReport;
    cdsDataIS_VAT_PAID: TAbmesFloatField;
    cdsCurrenciesCURRENCY_NAME_SINGULAR: TAbmesWideStringField;
    cdsCurrenciesCURRENCY_NAME_PLURAL: TAbmesWideStringField;
    cdsCurrenciesCURRENCY_NAME_GENDER_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_CENT_NAME_SINGULAR: TAbmesWideStringField;
    cdsCurrenciesCURRENCY_CENT_NAME_PLURAL: TAbmesWideStringField;
    cdsCurrenciesCURRENCY_CENT_NAME_GENDER_CODE: TAbmesFloatField;
    frInvoiceDate: TfrDateFieldEditFrame;
    btnRefreshBuyerInfo: TSpeedButton;
    frBuyer: TfrPartnerFieldEditFrameBald;
    btnRefreshSellerInfo: TSpeedButton;
    frSeller: TfrPartnerFieldEditFrameBald;
    cdsDataBUYER_TAX_NO: TAbmesFloatField;
    cdsDataSELLER_TAX_NO: TAbmesFloatField;
    cdsDataSELLER_BULSTAT: TAbmesWideStringField;
    cdsDataBUYER_BULSTAT: TAbmesWideStringField;
    cdsDataSELLER_BULSTAT_EX: TAbmesWideStringField;
    cdsDataBUYER_BULSTAT_EX: TAbmesWideStringField;
    cdsData_SELLER_BULSTAT: TAbmesWideStringField;
    cdsData_BUYER_BULSTAT: TAbmesWideStringField;
    cdsDataSELLER_BULSTAT_NO: TAbmesFloatField;
    cdsDataBUYER_BULSTAT_NO: TAbmesFloatField;
    cdsDataSELLER_FIRST_NAME: TAbmesWideStringField;
    cdsDataSELLER_MIDDLE_NAME: TAbmesWideStringField;
    cdsDataSELLER_LAST_NAME: TAbmesWideStringField;
    cdsDataSELLER_EGN: TAbmesWideStringField;
    cdsDataSELLER_IS_PERSON: TAbmesFloatField;
    cdsDataBUYER_FIRST_NAME: TAbmesWideStringField;
    cdsDataBUYER_MIDDLE_NAME: TAbmesWideStringField;
    cdsDataBUYER_LAST_NAME: TAbmesWideStringField;
    cdsDataBUYER_EGN: TAbmesWideStringField;
    cdsDataBUYER_IS_PERSON: TAbmesFloatField;
    pnlBuyerBulstatOrEGN: TPanel;
    pnlBuyerBulstat: TPanel;
    lblBuyerBulstat: TLabel;
    edtBuyerBulstat: TDBEdit;
    pnlBuyerEGN: TPanel;
    lblBuyerEGN: TLabel;
    edtBuyerEGN: TDBEdit;
    pnlSellerBulstatOrEGN: TPanel;
    pnlSellerBulstat: TPanel;
    lblSellerBulstat: TLabel;
    edtSellerBulstat: TDBEdit;
    pnlSellerEGN: TPanel;
    lblSellerEGN: TLabel;
    edtSellerEGN: TDBEdit;
    cdsData_BUYER_BULSTAT_OR_EGN_LABEL: TAbmesWideStringField;
    cdsData_BUYER_BULSTAT_OR_EGN_VALUE: TAbmesWideStringField;
    cdsData_SELLER_BULSTAT_OR_EGN_LABEL: TAbmesWideStringField;
    cdsData_SELLER_BULSTAT_OR_EGN_VALUE: TAbmesWideStringField;
    cdsDataACCOUNT_CODE: TAbmesFloatField;
    cdsDataIBAN: TAbmesWideStringField;
    cdsDataVAT_ACCOUNT_CODE: TAbmesFloatField;
    cdsDataVAT_IBAN: TAbmesWideStringField;
    cdsDataACCOUNT_FULL_NAME: TAbmesWideStringField;
    cdsDataVAT_ACCOUNT_FULL_NAME: TAbmesWideStringField;
    cdsCompanyBankAccountsACCOUNT_CODE: TAbmesFloatField;
    cdsCompanyBankAccountsBANK_COMPANY_CODE: TAbmesFloatField;
    cdsCompanyBankAccountsACCOUNT: TAbmesFloatField;
    cdsCompanyBankAccountsCOMPANY_CODE: TAbmesFloatField;
    cdsCompanyBankAccountsCURRENCY_CODE: TAbmesFloatField;
    cdsCompanyBankAccountsDESCRIPTION: TAbmesWideStringField;
    cdsCompanyBankAccountsBANK_NAME: TAbmesWideStringField;
    cdsCompanyBankAccountsCURRENCY_ABBREV: TAbmesWideStringField;
    cdsCompanyBankAccountsACCOUNT_FULL_NAME: TAbmesWideStringField;
    cdsCompanyBankAccountsIBAN: TAbmesWideStringField;
    cdsDataTO_PAY_TEXT: TAbmesWideStringField;
    lblBuyerIDNo: TLabel;
    edtBuyerIDNo: TDBEdit;
    lblSellerIDNo: TLabel;
    edtSellerIDNo: TDBEdit;
    lblCurrency: TLabel;
    cbCurrency: TJvDBLookupCombo;
    frEventDate: TfrDateFieldEditFrame;
    lblEventDate: TLabel;
    cdsDataEVENT_DATE: TAbmesSQLTimeStampField;
    cdsDataSELLER_VAT_REGISTERED: TAbmesFloatField;
    cdsDataBUYER_VAT_REGISTERED: TAbmesFloatField;
    lblInvoiceVatType: TLabel;
    edtVatValueBC: TDBEdit;
    lblVatValueBC: TLabel;
    cdsDataINVOICE_VAT_TYPE_CODE: TAbmesFloatField;
    cdsInvoiceVatTypes: TAbmesClientDataSet;
    dsInvoiceVatTypes: TDataSource;
    cdsInvoiceVatTypesINVOICE_VAT_TYPE_CODE: TAbmesFloatField;
    cdsInvoiceVatTypesINVOICE_VAT_TYPE_NAME: TAbmesWideStringField;
    cbInvoiceVatType: TJvDBLookupCombo;
    cdsData_INVOICE_VAT_TYPE_NAME: TAbmesWideStringField;
    cdsDataBASE_CURRENCY_FIXING: TAbmesFloatField;
    cdsGridData_TOTAL_PRICE_FOR_VAT_BC: TAbmesFloatField;
    cdsGridData_TOTAL_VAT_BC: TAbmesFloatField;
    edtVatValue: TDBEdit;
    lblVatValue: TLabel;
    DBText1: TDBText;
    dbtCurrency: TDBText;
    dbtCurrency2: TDBText;
    dbtCurrency3: TDBText;
    dbtBaseCurrencyAbbrev: TDBText;
    cdsData_BASE_CURRENCY_ABBREV: TAbmesWideStringField;
    dbtBaseCurrencyAbbrev2: TDBText;
    cdsData_TOTAL_PRICE_FOR_VAT_BC: TAbmesFloatField;
    cdsData_TOTAL_VAT_BC: TAbmesFloatField;
    cdsDataBUYER_VAT_NO: TAbmesWideStringField;
    cdsDataSELLER_VAT_NO: TAbmesWideStringField;
    chkIsVatPaid: TAbmesDBCheckBox;
    cdsCompanyBankAccountsNAME: TAbmesWideStringField;
    cdsCompanyBankAccountsSHORT_NAME: TAbmesWideStringField;
    cbBankAccount: TJvDBLookupCombo;
    cdsCompanyBankAccountsBANK_ACCOUNT_TYPE_CODE: TAbmesFloatField;
    cdsDataAPPROVE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataAPPROVE_DATE: TAbmesSQLTimeStampField;
    cdsDataAPPROVE_TIME: TAbmesSQLTimeStampField;
    pnlApproveButton: TPanel;
    btnApprove: TBitBtn;
    actApprove: TAction;
    pnlShowIfApproved: TPanel;
    chkIsApproved: TCheckBox;
    btnInsertSaleShipments: TBitBtn;
    actInsertSaleShipments: TAction;
    cdsNewInvoiceItems: TAbmesClientDataSet;
    cdsNewInvoiceItemsPRODUCT_CODE: TAbmesFloatField;
    cdsNewInvoiceItemsACCOUNT_QUANTITY: TAbmesFloatField;
    cdsNewInvoiceItemsSINGLE_PRICE: TAbmesFloatField;
    cdsNewInvoiceItemsMARKET_SINGLE_PRICE: TAbmesFloatField;
    cdsNewInvoiceItemsDISCOUNT_PERCENT: TAbmesFloatField;
    cdsCurrencyRates: TAbmesClientDataSet;
    cdsCurrencyRatesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrencyRatesFIXING: TAbmesFloatField;
    cdsNewInvoiceItemsCURRENCY_CODE: TAbmesFloatField;
    cdsSaleExpGroupsParams: TAbmesClientDataSet;
    cdsSaleExpGroupsParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    cdsGridDataBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsNewInvoiceItemsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsNewInvoiceItemsBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsNewInvoiceItemsBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    pnlUnapproveButton: TPanel;
    btnUnapprove: TBitBtn;
    actUnapprove: TAction;
    cdsData_PRINT_INVOICE_STATUS_TEXT: TAbmesWideStringField;
    cdsDataSELLER_I_NAME: TAbmesWideStringField;
    cdsDataSELLER_I_CITY: TAbmesWideStringField;
    cdsDataSELLER_I_ADDRESS: TAbmesWideStringField;
    cdsDataSELLER_I_FIRST_NAME: TAbmesWideStringField;
    cdsDataSELLER_I_MIDDLE_NAME: TAbmesWideStringField;
    cdsDataSELLER_I_LAST_NAME: TAbmesWideStringField;
    cdsDataBUYER_I_NAME: TAbmesWideStringField;
    cdsDataBUYER_I_CITY: TAbmesWideStringField;
    cdsDataBUYER_I_ADDRESS: TAbmesWideStringField;
    cdsDataBUYER_I_FIRST_NAME: TAbmesWideStringField;
    cdsDataBUYER_I_MIDDLE_NAME: TAbmesWideStringField;
    cdsDataBUYER_I_LAST_NAME: TAbmesWideStringField;
    cbVatReasons: TJvDBLookupCombo;
    lblVatReason: TLabel;
    cdsVatReasons: TAbmesClientDataSet;
    dsVatReasons: TDataSource;
    cdsVatReasonsVAT_REASON_CODE: TAbmesFloatField;
    cdsVatReasonsVAT_REASON_NO: TAbmesFloatField;
    cdsVatReasonsVAT_REASON_NAME: TAbmesWideStringField;
    cdsVatReasonsVAT_REASON_ABBREV: TAbmesWideStringField;
    cdsDataVAT_REASON_CODE: TAbmesFloatField;
    gbReceiver: TGroupBox;
    lblReceiverCode: TLabel;
    lblReceiverName: TLabel;
    lblReceiverAddress: TLabel;
    btnRefreshReceiverInfo: TSpeedButton;
    edtReceiverName: TDBEdit;
    edtReceiverAddress: TDBEdit;
    frReceiver: TfrPartnerFieldEditFrameBald;
    gbSender: TGroupBox;
    lblSenderCode: TLabel;
    lblSenderName: TLabel;
    lblSenderAddress: TLabel;
    btnRefreshSenderInfo: TSpeedButton;
    edtSenderName: TDBEdit;
    edtSenderAddress: TDBEdit;
    frSender: TfrPartnerFieldEditFrameBald;
    cdsDataRECEIVER_COMPANY_CODE: TAbmesFloatField;
    cdsDataRECEIVER_NAME: TAbmesWideStringField;
    cdsDataRECEIVER_I_NAME: TAbmesWideStringField;
    cdsDataRECEIVER_ADDRESS: TAbmesWideStringField;
    cdsDataRECEIVER_I_ADDRESS: TAbmesWideStringField;
    cdsDataSENDER_COMPANY_CODE: TAbmesFloatField;
    cdsDataSENDER_NAME: TAbmesWideStringField;
    cdsDataSENDER_I_NAME: TAbmesWideStringField;
    cdsDataSENDER_ADDRESS: TAbmesWideStringField;
    cdsDataSENDER_I_ADDRESS: TAbmesWideStringField;
    cdsGridDataCLIENT_REQUEST_NO: TAbmesWideStringField;
    cdsGridData_INVOICE_ITEM_IDENTIFIER: TAbmesWideStringField;
    smrIInvoiceWide2: TAbmesMatrixReport;
    smrIInvoiceReportHeaderWide2: TAbmesMatrixReport;
    smrIInvoiceGroupHeaderWide2: TAbmesMatrixReport;
    smrIInvoiceRecordHeaderAndFooterWide2: TAbmesMatrixReport;
    smrIInvoiceGroupFooterWide2: TAbmesMatrixReport;
    smrIInvoiceWide: TAbmesMatrixReport;
    smrIInvoiceReportHeaderWide: TAbmesMatrixReport;
    smrIInvoiceGroupHeaderWide: TAbmesMatrixReport;
    smrIInvoiceRecordHeaderAndFooterWide: TAbmesMatrixReport;
    smrIInvoiceGroupFooterWide: TAbmesMatrixReport;
    smrIInvoice2: TAbmesMatrixReport;
    smrIInvoiceReportHeader2: TAbmesMatrixReport;
    smrIInvoiceGroupHeader2: TAbmesMatrixReport;
    smrIInvoiceRecordHeaderAndFooter2: TAbmesMatrixReport;
    smrIInvoiceGroupFooter2: TAbmesMatrixReport;
    smrIInvoice: TAbmesMatrixReport;
    smrIInvoiceReportHeader: TAbmesMatrixReport;
    smrIInvoiceGroupHeader: TAbmesMatrixReport;
    smrIInvoiceRecordHeaderAndFooter: TAbmesMatrixReport;
    smrIInvoiceGroupFooter: TAbmesMatrixReport;
    cdsData_IS_ORIGINAL_I_TEXT: TAbmesWideStringField;
    cdsData_TO_PAY_I_TEXT: TAbmesWideStringField;
    cdsData_PAYMENT_TYPE_I_TEXT: TAbmesWideStringField;
    cdsInvoiceTypesINVOICE_TYPE_I_NAME: TAbmesWideStringField;
    cdsData_INVOICE_TYPE_I_NAME: TAbmesWideStringField;
    cdsDataTO_PAY_I_TEXT: TAbmesWideStringField;
    cdsData_PRINT_INVOICE_STATUS_I_TEXT: TAbmesWideStringField;
    actIPrint: TAction;
    actIPrintMatrix: TAction;
    actIPrintMatrixWide: TAction;
    cdsData_VAT_REASON_I_NAME: TAbmesWideStringField;
    cdsData_VAT_REASON_NAME: TAbmesWideStringField;
    cdsVatReasonsVAT_REASON_I_NAME: TAbmesWideStringField;
    cdsGridDataACCOUNT_MEASURE_I_ABBREV: TAbmesWideStringField;
    cdsMeasuresI_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_FALSH_ACCOUNT_MEASURE_I_ABBREV: TAbmesWideStringField;
    cdsDataINVOICE_I_PLACE: TAbmesWideStringField;
    cdsDataBUYER_PERSON_I_NAME: TAbmesWideStringField;
    cdsDataSELLER_PERSON_I_NAME: TAbmesWideStringField;
    lblBuyerPersonIName: TLabel;
    lblSellerPersonIName: TLabel;
    cdsSellerCompanyRepresentativesI_NAME: TAbmesWideStringField;
    cdsBuyerCompanyRepresentativesI_NAME: TAbmesWideStringField;
    cdsData_BUYER_I_NAME_1: TAbmesWideStringField;
    cdsData_BUYER_I_NAME_2: TAbmesWideStringField;
    cdsData_SELLER_I_NAME_1: TAbmesWideStringField;
    cdsData_SELLER_I_NAME_2: TAbmesWideStringField;
    cdsData_RECEIVER_NAME_1: TAbmesWideStringField;
    cdsData_RECEIVER_NAME_2: TAbmesWideStringField;
    cdsData_RECEIVER_I_NAME_1: TAbmesWideStringField;
    cdsData_RECEIVER_I_NAME_2: TAbmesWideStringField;
    cdsData_SENDER_NAME_1: TAbmesWideStringField;
    cdsData_SENDER_NAME_2: TAbmesWideStringField;
    cdsData_SENDER_I_NAME_1: TAbmesWideStringField;
    cdsData_SENDER_I_NAME_2: TAbmesWideStringField;
    cdsData_BUYER_PERSON_I_NAME: TAbmesWideStringField;
    cdsData_SELLER_PERSON_I_NAME: TAbmesWideStringField;
    chkIWideFormat: TCheckBox;
    chkIMatrixPrinter: TCheckBox;
    chkIPrint: TCheckBox;
    mlIPrint: TMenuItem;
    miIPrint: TMenuItem;
    miIPrintMatrix: TMenuItem;
    miiPrintMatrixWide: TMenuItem;
    edtInvoiceIPlace: TDBEdit;
    lblInvoiceIPlace: TLabel;
    edtInvoicePlace: TDBEdit;
    cbBuyerPersonName: TJvDBComboBox;
    cbBuyerPersonIName: TJvDBComboBox;
    cbSellerPersonName: TJvDBComboBox;
    cbSellerPersonIName: TJvDBComboBox;
    cdsNewInvoiceItemsCLIENT_REQUEST_NO: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    actDocs: TAction;
    cdsDataINVOICE_NO_GENERATOR_CODE: TAbmesFloatField;
    cdsGridData_CURRENCY_ABBREV: TAbmesWideStringField;
    procedure cdsDataBUYER_NAMEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDataSELLER_NAMEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDataSELLER_COMPANY_CODEChange(Sender: TField);
    procedure cdsDataBUYER_COMPANY_CODEChange(Sender: TField);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rbCashPaymentClick(Sender: TObject);
    procedure rbBankAccountPaymentClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataITEM_NAMEChange(Sender: TField);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actStornoExecute(Sender: TObject);
    procedure actStornoUpdate(Sender: TObject);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure actPrintMatrixWideExecute(Sender: TObject);
    procedure smrInvoiceRecordHeaderAndFooterWideBeforePrint(Sender: TObject;
      var ToPrint: Boolean);
    procedure smrInvoiceGroupHeaderWideAfterPrint(Sender: TObject);
    procedure smrInvoiceWideAfterPrint(Sender: TObject);
    procedure actPrintMatrixExecute(Sender: TObject);
    procedure cdsDataIS_PROFORM_INVOICEChange(Sender: TField);
    procedure PricesValidate(
      Sender: TField);
    procedure btnManualInvoiceNoClick(Sender: TObject);
    procedure actInsertRecordExecute(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure CalcSinglePrice(Sender: TField);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataDISCOUNT_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataDISCOUNT_PERCENTSetText(Sender: TField;
      const Text: String);
    procedure cdsGridDataDISCOUNT_PERCENTValidate(Sender: TField);
    procedure cdsGridDataPRODUCT_CODEChange(Sender: TField);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataSINGLE_PRICEChange(Sender: TField);
    procedure cdsGridDataSINGLE_PRICE_WITHOUT_VATChange(Sender: TField);
    procedure cdsGridDataSINGLE_PRICE_WITH_VATChange(Sender: TField);
    procedure btnRefreshSellerInfoClick(Sender: TObject);
    procedure btnRefreshBuyerInfoClick(Sender: TObject);
    procedure cdsGridDataACCOUNT_QUANTITYChange(Sender: TField);
    procedure cdsGridDataTOTAL_PRICE_WITHOUT_VATChange(Sender: TField);
    procedure cdsGridDataTOTAL_PRICE_WITH_VATChange(Sender: TField);
    procedure cdsDataSELLER_ADDRESSChange(Sender: TField);
    procedure cdsData_INVOICE_TYPE_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDataSELLER_PERSON_NAMESetText(Sender: TField;
      const Text: String);
    procedure cdsDataBUYER_PERSON_NAMESetText(Sender: TField;
      const Text: String);
    procedure cdsDataSELLER_PERSON_NAME_SOSetText(Sender: TField;
      const Text: String);
    procedure cdsDataBUYER_PERSON_NAME_SOSetText(Sender: TField;
      const Text: String);
    procedure cdsDataVAT_ACCOUNT_FULL_NAMEChange(Sender: TField);
    procedure cdsDataACCOUNT_FULL_NAMEChange(Sender: TField);
    procedure cdsDataINVOICE_VAT_TYPE_CODEChange(Sender: TField);
    procedure cdsDataINVOICE_DATEChange(Sender: TField);
    procedure cdsDataCURRENCY_CODEChange(Sender: TField);
    procedure cdsDataBUYER_VAT_NOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDataSELLER_VAT_NOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsInvoiceVatTypesINVOICE_VAT_TYPE_NAMEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actApproveExecute(Sender: TObject);
    procedure actApproveUpdate(Sender: TObject);
    procedure actInsertSaleShipmentsUpdate(Sender: TObject);
    procedure actInsertSaleShipmentsExecute(Sender: TObject);
    procedure actUnapproveExecute(Sender: TObject);
    procedure actUnapproveUpdate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsDataRECEIVER_COMPANY_CODEChange(Sender: TField);
    procedure cdsDataSENDER_COMPANY_CODEChange(Sender: TField);
    procedure btnRefreshSenderInfoClick(Sender: TObject);
    procedure btnRefreshReceiverInfoClick(Sender: TObject);
    procedure actIPrintExecute(Sender: TObject);
    procedure actIPrintMatrixExecute(Sender: TObject);
    procedure actIPrintMatrixWideExecute(Sender: TObject);
    procedure cbBuyerPersonNameChange(Sender: TObject);
    procedure cbBuyerPersonINameChange(Sender: TObject);
    procedure cbSellerPersonNameChange(Sender: TObject);
    procedure cbSellerPersonINameChange(Sender: TObject);
    procedure cdsData_INVOICE_VAT_TYPE_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsData_INVOICE_TYPE_I_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actDocsUpdate(Sender: TObject);
    procedure actDocsExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure smrIInvoiceGroupFooterWide2AfterPrint(Sender: TObject);
    procedure smrIInvoiceGroupFooterWide2BeforePrint(Sender: TObject;
      var ToPrint: Boolean);
    procedure smrIInvoiceGroupFooter2BeforePrint(Sender: TObject;
      var ToPrint: Boolean);
    procedure smrIInvoiceGroupFooterWideBeforePrint(Sender: TObject;
      var ToPrint: Boolean);
    procedure smrIInvoiceGroupFooterBeforePrint(Sender: TObject;
      var ToPrint: Boolean);
    procedure smrIInvoiceGroupFooter2AfterPrint(Sender: TObject);
    procedure smrIInvoiceGroupFooterWideAfterPrint(Sender: TObject);
    procedure smrIInvoiceGroupFooterAfterPrint(Sender: TObject);
    procedure smrInvoiceGroupFooterWide2BeforePrint(Sender: TObject;
      var ToPrint: Boolean);
    procedure smrInvoiceGroupFooterWide2AfterPrint(Sender: TObject);
    procedure smrInvoiceGroupFooterWideAfterPrint(Sender: TObject);
    procedure smrInvoiceGroupFooterWideBeforePrint(Sender: TObject;
      var ToPrint: Boolean);
    procedure smrInvoiceGroupFooterBeforePrint(Sender: TObject;
      var ToPrint: Boolean);
    procedure smrInvoiceGroupFooter2BeforePrint(Sender: TObject;
      var ToPrint: Boolean);
    procedure smrInvoiceGroupFooter2AfterPrint(Sender: TObject);
    procedure smrInvoiceGroupFooterAfterPrint(Sender: TObject);
  private
    FInvoiceType: Integer;
    FInvoiceTypeName: string;
    FAddVat: Integer;
    FAddVatToItems: Boolean;
    FInvoiceDataSet: TDataSet;
    FInvoiceItemsDataSet: TDataSet;
    FGroupRecords: Integer;
    FInvoiceIOType: TInvoiceIOType;
    FIsProformInvoiceState: Boolean;
    FManualInvoiceNoInvoked: Boolean;
    FItemProductChanging: Boolean;
    FPriceChanging: Boolean;
    FOriginalIsApproved: Boolean;
    FIsOriginalTextInReport: TSinglePassSection;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FIinitialInvoiceNo: Real;
    FMatrixReportPatterns: TDictionary<TAbmesMatrixReport, string>;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure OpenCompanyBankAccounts;
    procedure GetSellerCompanyRepresentatives;
    procedure GetBuyerCompanyRepresentatives;
    function GetVat: Real;
    function GetNewInvoiceItemCode: Integer;

    procedure CalcPrices;
    procedure PeopleSetText(Sender: TField; const Text: String);
    procedure SetParRelPartnerOfficeAddress(APartnerCodeField, APartnerAddressField, APartnerIAddressField: TField; ABorderRelType: TBorderRelType);
    procedure GetReceiverInfo;
    procedure GetSenderInfo;
    procedure GetSellerInfo;
    procedure GetBuyerInfo;   // workaround zaradi Win98, kydeto gyrmi grub exception pri opit da zaredish prazen string ot DBComboBox v pole
    procedure RecalcBaseCurrencyFixing;
    procedure LoadVatPercent;
    procedure RefreshComboBox(AComboBox: TJvDBLookupCombo);
    function IsAnnuledOrApproved: Boolean;
    function IsApproved: Boolean;
    function IsAnnuled: Boolean;
    procedure AddInvoiceItems(ADataSet: TDataSet);
    function ConvertPrice(APrice: Real; AFromCurrencyCode, AToCurrencyCode: Integer): Real;
    procedure CheckInvoiceBaseRequiredFields;
    procedure ExecutePrintingProc(APrintingProc: TProc);
    procedure PersonNameChange(APersonNameComboBox, APersonNameOtherComboBox: TJvDBComboBox; APersonNameOtherField: TField);
    procedure CutCompanyNameField(AFullNameField, AName1Field, AName2Field: TAbmesWideStringField);
    procedure VatTypeNameFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    function GetFormattedPersonNamePrintText(APersonNameField: TAbmesWideStringField): string;
    procedure InvoiceGroupFooterAfterPrint(AReport: TAbmesMatrixReport);
    procedure InvoiceGroupFooterBeforePrint(AReport: TAbmesMatrixReport);
  protected
    procedure DoApplyUpdates; override;
    function GetPrintEnabled: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    procedure DoBeforeShow; override;
    function GetPrintButtonOnToolbarEnabled: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetOriginalFormCaption: string; override;
    procedure GenerateInvoiceNo;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    class function CanEditOuterDataSet: Boolean; override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AInvoiceIOType: TInvoiceIOType = iiotIn;
      AInvoiceType: Integer = 0;
      AInvoiceDataSet: TDataSet = nil;
      AInvoiceItemsDataSet: TDataSet = nil): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AInvoiceIOType: TInvoiceIOType = iiotIn;
      AInvoiceType: Integer = 0;
      AInvoiceDataSet: TDataSet = nil;
      AInvoiceItemsDataSet: TDataSet = nil); reintroduce; virtual;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  Variants, dMain, fInvoiceItem, uPaymentTypes, uUtils, rInvoice, Math,
  uInvoiceTypes, uUserActivityConsts, fGridForm, AbmesDialogs, fDataForm,
  uCompanyClientUtils, uTreeClientUtils, uClientUtils, uCompanyKinds, fEditForm,
  uInvoiceVatTypes, uComboBoxUtils, StrUtils, uClientDateTime,
  fSaleExpGroups, uProducts, rIInvoice, uSystemLocaleUtils,
  uDocUtils;

{$R *.DFM}

resourcestring
  SCantSaveEmptyInvoice = 'Не можете да запишете празна фактура';
  SConfirmInvoiceStorno = 'Потвърдете анулиране на фактура';
  SConfirmApprove = 'Полетата за Фактура в обвързаните Разклонения по ОПП ще бъдат обновени!' + SLineBreak +
                    'Потвърдете утвърждаване на фактура';
  SInvoiceSaved = 'Фактурата е записана под номер %d';
  SVATDisplay = 'ДДС %d%%';
  SCashPayment = 'В брой';
  SICashPayment = 'Cash payment';
  SBankAccountPayment = 'По банкова сметка ';
  SIBankAccountPayment = 'Bank account ';
  SNotes = 'Бележки: ';
  SIsProform = 'Проформа';
  SIIsProform = 'Proform';
  SZeroPriceNotAllowed = 'Не можете да въведете нулева цена';
  SNoRateFor = 'Няма курс за %s';
  SInvalidDiscountPercent = 'Стойността на полето "%s" трябва да е между 0%% и 100%%';
  SSellerNotEnoughData = 'Не е въведена достатъчно информация за партньора-издател';
  SBuyerNotEnoughData = 'Не е въведена достатъчно информация за партньора-получател';
  SSumMustBeNegative = 'Общата сума при кредитните известия трябва да бъде отрицателна';
  SUserCompanyNotEnoughData = 'Не са въведени достатъчно данни за партньора-потребител';
  SOriginal = 'Оригинал';
  SIOriginal = 'Original';
  SVATAccount = 'ДДС Сметка:';
  SVATFreeMustBeOneForAllRows = 'Не можете да запишете фактура, която има едновременно освободени и неосвободени от ДДС редове';
  SBulstatLabel = 'ЕИК:';
  SEGNLabel = 'ЕГН/ЛНЧ:';
  SNotVatRegistered = 'нерег. по ДДС';
  SAnnulled = 'Анулирана';
  SIAnnulled = 'Annulled';
  SSaleShipmentsMustBeUnique = 'Съществуват редове, които са обвързани с едно и също Разклонение по ОПП';
  SUnapproved = 'Неутвърдена';
  SIUnapproved = 'Unapproved';
  SNewEmptyInvoiceNoGenerated = 'Не е намерен съотвестващ генератор на номера на фактури!';
  SNewInvoiceNoGenerated = 'Генериран е нов номер!';

{ TfmInvoice }

class function TfmInvoice.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmInvoice.CloseDataSets;
begin
  cdsInvoiceVatTypes.Close;
  cdsInvoiceTypes.Close;

  inherited;

  cdsCurrencies.Close;
  cdsCompanyBankAccounts.Close;
  cdsMeasures.Close;
  cdsVatReasons.Close;
end;

procedure TfmInvoice.OpenDataSets;
var
  SaveCursor: TCursor;
begin
  cdsInvoiceTypes.Open; // cdsData triabva da lookupne ottuk tui-onui na afteropen
  cdsInvoiceVatTypes.Open;

  inherited;

  SaveCursor:= Screen.Cursor;

  Screen.Cursor:= crHourGlass;
  try
    cdsVatReasons.Open;
    cdsCurrencies.Open;
    cdsMeasures.Open;
    OpenCompanyBankAccounts;
    GetSellerCompanyRepresentatives;
    GetBuyerCompanyRepresentatives;
  finally
    Screen.Cursor:= SaveCursor;
  end;  { try }
end;

procedure TfmInvoice.cdsDataSELLER_COMPANY_CODEChange(Sender: TField);
begin
  inherited;
  if not cdsDataSELLER_COMPANY_CODE.IsNull then
    begin
      GetSellerInfo;

      if (cdsDataSELLER_IS_PERSON.AsBoolean and
           ( (cdsDataSELLER_FIRST_NAME.AsString = '') or
             (cdsDataSELLER_MIDDLE_NAME.AsString = '') or
             (cdsDataSELLER_LAST_NAME.AsString = '') or
             (cdsDataSELLER_EGN.AsString = '') or
             (cdsDataSELLER_CITY.AsString = '') or
             (cdsDataSELLER_ADDRESS.AsString = '')
           )
         ) or
         (not cdsDataSELLER_IS_PERSON.AsBoolean and
           ( (cdsDataSELLER_NAME.AsString = '') or
             (cdsDataSELLER_CITY.AsString = '') or
             (cdsDataSELLER_ADDRESS.AsString = '') or
             (cdsDataSELLER_BULSTAT.AsString = '')
           )
         ) then
        raise Exception.Create(SSellerNotEnoughData);
    end
  else
    begin
      cdsDataSELLER_NAME.Clear;
      cdsDataSELLER_I_NAME.Clear;
      cdsDataSELLER_CITY.Clear;
      cdsDataSELLER_I_CITY.Clear;
      cdsDataSELLER_ADDRESS.Clear;
      cdsDataSELLER_I_ADDRESS.Clear;
      cdsDataSELLER_TAX_NO.Clear;
      cdsDataSELLER_BULSTAT.Clear;
      cdsDataSELLER_BULSTAT_EX.Clear;
      cdsDataSELLER_IS_PERSON.Clear;
      cdsDataSELLER_FIRST_NAME.Clear;
      cdsDataSELLER_I_FIRST_NAME.Clear;
      cdsDataSELLER_MIDDLE_NAME.Clear;
      cdsDataSELLER_I_MIDDLE_NAME.Clear;
      cdsDataSELLER_LAST_NAME.Clear;
      cdsDataSELLER_I_LAST_NAME.Clear;
      cdsDataSELLER_EGN.Clear;
    end;

  GetSellerCompanyRepresentatives;
  OpenCompanyBankAccounts;

  if (cdsDataSELLER_COMPANY_CODE.AsInteger = 0) and
     not cdsDataSELLER_COMPANY_CODE.IsNull and
     (EditMode = emInsert) and
     not ( (FInvoiceType in [itProtokol, itKorigirashtProtokol]) and
           (cdsDataSELLER_COMPANY_CODE.AsInteger = 0) ) then
    cdsDataINVOICE_NO.Clear;

  if cdsDataSELLER_VAT_REGISTERED.AsBoolean then
    begin
      cdsInvoiceVatTypes.Filtered:= True;
      cdsDataINVOICE_VAT_TYPE_CODE.AsInteger:= ivtVatPercent;
    end
  else
    begin
      cdsInvoiceVatTypes.Filtered:= False;
      cdsDataINVOICE_VAT_TYPE_CODE.AsInteger:= ivtNotRegistered;
    end;
end;

procedure TfmInvoice.cdsDataBUYER_COMPANY_CODEChange(Sender: TField);
begin
  inherited;
  if not cdsDataBUYER_COMPANY_CODE.IsNull then
    begin
      GetBuyerInfo;

      if (cdsDataBUYER_IS_PERSON.AsBoolean and
           ( (cdsDataBUYER_FIRST_NAME.AsString = '') or
             (cdsDataBUYER_MIDDLE_NAME.AsString = '') or
             (cdsDataBUYER_LAST_NAME.AsString = '') or
             (cdsDataBUYER_EGN.AsString = '') or
             (cdsDataBUYER_CITY.AsString = '') or
             (cdsDataBUYER_ADDRESS.AsString = '')
           )
         ) or
         (not cdsDataBUYER_IS_PERSON.AsBoolean and
           ( (cdsDataBUYER_NAME.AsString = '') or
             (cdsDataBUYER_CITY.AsString = '') or
             (cdsDataBUYER_ADDRESS.AsString = '') or
             (cdsDataBUYER_BULSTAT.AsString = '')
           )
         ) then
        raise Exception.Create(SBuyerNotEnoughData);

      GetBuyerCompanyRepresentatives;
    end
  else
    begin
      cdsDataBUYER_NAME.Clear;
      cdsDataBUYER_I_NAME.Clear;
      cdsDataBUYER_CITY.Clear;
      cdsDataBUYER_I_CITY.Clear;
      cdsDataBUYER_ADDRESS.Clear;
      cdsDataBUYER_I_ADDRESS.Clear;
      cdsDataBUYER_TAX_NO.Clear;
      cdsDataBUYER_BULSTAT.Clear;
      cdsDataBUYER_BULSTAT_EX.Clear;
      cdsDataBUYER_IS_PERSON.Clear;
      cdsDataBUYER_FIRST_NAME.Clear;
      cdsDataBUYER_I_FIRST_NAME.Clear;
      cdsDataBUYER_MIDDLE_NAME.Clear;
      cdsDataBUYER_I_MIDDLE_NAME.Clear;
      cdsDataBUYER_LAST_NAME.Clear;
      cdsDataBUYER_I_LAST_NAME.Clear;
      cdsDataBUYER_EGN.Clear;
    end;
end;

procedure TfmInvoice.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsDataINVOICE_BRANCH_CODE.AsInteger:= -1;
  cdsDataINVOICE_CODE.AsInteger:= -1;

  cdsDataIS_PROFORM_INVOICE.AsBoolean:= False;
  cdsDataIS_PAID.AsBoolean:= False;
  cdsDataIS_VAT_PAID.AsBoolean:= False;
  cdsDataPAYMENT_TYPE_CODE.AsInteger:= ptBankAccount;
  LoadVatPercent;
  cdsDataINVOICE_TYPE_CODE.AsInteger:= FInvoiceType;
  cdsDataBUYER_IS_PERSON.AsBoolean:= False;
  cdsDataSELLER_IS_PERSON.AsBoolean:= False;
  cdsDataBUYER_VAT_REGISTERED.AsBoolean:= False;
  cdsDataSELLER_VAT_REGISTERED.AsBoolean:= False;

  if (FInvoiceDataSet <> nil) then
    with FInvoiceDataSet do
      begin
        if (FindField('INVOICE_DATE') <> nil) then
          cdsDataINVOICE_DATE.Assign(FieldByName('INVOICE_DATE'));
        if (FindField('EVENT_DATE') <> nil) then
          cdsDataEVENT_DATE.Assign(FieldByName('EVENT_DATE'));
        if (FindField('SELLER_COMPANY_CODE') <> nil) then
          cdsDataSELLER_COMPANY_CODE.Assign(FieldByName('SELLER_COMPANY_CODE'));
        if (FindField('SENDER_COMPANY_CODE') <> nil) then
          cdsDataSENDER_COMPANY_CODE.Assign(FieldByName('SENDER_COMPANY_CODE'));
        if (FindField('BUYER_COMPANY_CODE') <> nil) then
          cdsDataBUYER_COMPANY_CODE.Assign(FieldByName('BUYER_COMPANY_CODE'));
        if (FindField('RECEIVER_COMPANY_CODE') <> nil) then
          cdsDataRECEIVER_COMPANY_CODE.Assign(FieldByName('RECEIVER_COMPANY_CODE'));
        if (FindField('CURRENCY_CODE') <> nil) then
          cdsDataCURRENCY_CODE.Assign(FieldByName('CURRENCY_CODE'));
        if (FindField('PAYMENT_TYPE_CODE') <> nil) then
          cdsDataPAYMENT_TYPE_CODE.Assign(FieldByName('PAYMENT_TYPE_CODE'));
        if (FindField('BANK_COMPANY_CODE') <> nil) then
          cdsDataBANK_COMPANY_CODE.Assign(FieldByName('BANK_COMPANY_CODE'));
        if (FindField('ACCOUNT') <> nil) then
          cdsDataACCOUNT.Assign(FieldByName('ACCOUNT'));
      end;

  if (FInvoiceItemsDataSet <> nil) then
    AddInvoiceItems(FInvoiceItemsDataSet);

  case FInvoiceIOType of
    iiotIn:
      begin
        try
          cdsDataBUYER_COMPANY_CODE.AsInteger:= 0;
          cdsDataRECEIVER_COMPANY_CODE.AsInteger:= 0;
        except
          MessageDlgEx(SUserCompanyNotEnoughData, mtError, [mbOK], 0);
        end;   { try }
        frSeller.ShowOurCompany:= False;
        frSender.ShowOurCompany:= False;
        frBuyer.ShowOurCompany:= True;
        frReceiver.ShowOurCompany:= True;
      end;
    iiotOut:
      begin
        try
          cdsDataSELLER_COMPANY_CODE.AsInteger:= 0;
          cdsDataSENDER_COMPANY_CODE.AsInteger:= 0;
        except
          MessageDlgEx(SUserCompanyNotEnoughData, mtError, [mbOK], 0);
        end;   { try }
        frSeller.ShowOurCompany:= True;
        frSender.ShowOurCompany:= True;
        frBuyer.ShowOurCompany:= False;
        frReceiver.ShowOurCompany:= False;
      end;
  else   { case }
    raise Exception.Create('fmInvoice: Unknown InvoiceIOType');
  end;   { case }

  if ( not cdsDataSELLER_COMPANY_CODE.IsNull and
       (cdsDataSELLER_COMPANY_CODE.AsInteger = 0) ) or
     (FInvoiceType in [itProtokol, itKorigirashtProtokol]) then
    GenerateInvoiceNo;
end;

procedure TfmInvoice.cdsDataRECEIVER_COMPANY_CODEChange(Sender: TField);
begin
  inherited;

  if not cdsDataRECEIVER_COMPANY_CODE.IsNull then
    GetReceiverInfo
  else
    begin
      cdsDataRECEIVER_NAME.Clear;
      cdsDataRECEIVER_I_NAME.Clear;
      cdsDataRECEIVER_ADDRESS.Clear;
      cdsDataRECEIVER_I_ADDRESS.Clear;
    end;
end;

procedure TfmInvoice.AddInvoiceItems(ADataSet: TDataSet);
var
  FieldsRequired: array of Boolean;

  procedure SaveRequiredFields;
  var
    i: Integer;
  begin
    SetLength(FieldsRequired, cdsData.FieldCount);
    for i:= 0 to cdsData.FieldCount - 1 do
      begin
        FieldsRequired[i]:= cdsData.Fields[i].Required;
        cdsData.Fields[i].Required:= False;
      end;  { for }
  end;

  procedure RestoreRequiredFields;
  var
    i: Integer;
  begin
    for i:= 0 to cdsData.FieldCount - 1 do
      cdsData.Fields[i].Required:= FieldsRequired[i];
  end;

begin
  SaveRequiredFields;
  try
    cdsCurrencyRates.Params.ParamByName('RATE_DATE').AsDateTime:= cdsDataINVOICE_DATE.AsDateTime;
    cdsCurrencyRates.TempOpen/
      cdsGridData.TempDisableControls/
        ADataSet.PreserveBookmark/
          ADataSet.ForEach/
            cdsGridData.SafeAppend/
              procedure begin
                cdsGridDataPRODUCT_CODE.Assign(ADataSet.FieldByName('PRODUCT_CODE'));
                cdsGridDataACCOUNT_QUANTITY.Assign(ADataSet.FieldByName('ACCOUNT_QUANTITY'));

                cdsGridDataSINGLE_PRICE.AsFloat:=
                  ConvertPrice(
                    ADataSet.FieldByName('SINGLE_PRICE').AsFloat,
                    ADataSet.FieldByName('CURRENCY_CODE').AsInteger,
                    cdsDataCURRENCY_CODE.AsInteger);

                cdsGridDataMARKET_SINGLE_PRICE.AsFloat:=
                  ConvertPrice(
                    ADataSet.FieldByName('MARKET_SINGLE_PRICE').AsFloat,
                    ADataSet.FieldByName('CURRENCY_CODE').AsInteger,
                    cdsDataCURRENCY_CODE.AsInteger);

                cdsGridDataDISCOUNT_PERCENT.Assign(ADataSet.FieldByName('DISCOUNT_PERCENT'));
                cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE.Assign(ADataSet.FieldByName('BND_PROCESS_OBJECT_BRANCH_CODE'));
                cdsGridDataBND_PROCESS_OBJECT_CODE.Assign(ADataSet.FieldByName('BND_PROCESS_OBJECT_CODE'));
                cdsGridDataBND_PROCESS_OBJECT_IDENTIFIER.Assign(ADataSet.FieldByName('BND_PROCESS_OBJECT_IDENTIFIER'));
                cdsGridDataCLIENT_REQUEST_NO.Assign(ADataSet.FieldByName('CLIENT_REQUEST_NO'));
              end;  { lambda }
  finally
    RestoreRequiredFields;
  end;  { try }
end;

function TfmInvoice.ConvertPrice(APrice: Real; AFromCurrencyCode, AToCurrencyCode: Integer): Real;
var
  FromCurrencyRate: Extended;
  ToCurrencyRate: Extended;
begin
  if (AFromCurrencyCode = AToCurrencyCode) then
    Exit(APrice);

  Assert(cdsCurrencyRates.Active);
  FromCurrencyRate:= cdsCurrencyRates.Lookup('CURRENCY_CODE', AFromCurrencyCode, 'FIXING');
  ToCurrencyRate:= cdsCurrencyRates.Lookup('CURRENCY_CODE', AToCurrencyCode, 'FIXING');
  Result:= APrice * FromCurrencyRate / ToCurrencyRate;
end;

procedure TfmInvoice.CutCompanyNameField(AFullNameField, AName1Field,
  AName2Field: TAbmesWideStringField);
begin
  if (Length(AFullNameField.AsString) > AName1Field.DisplayWidth) then
    begin
      AName1Field.AsString:=
        LeftStr(AFullNameField.AsString, AName1Field.DisplayWidth);
      AName2Field.AsString:=
        MidStr(AFullNameField.AsString, AName1Field.DisplayWidth + 1, AName2Field.DisplayWidth);
    end
  else
    begin
      AName1Field.AsString:= AFullNameField.AsString;
      AName2Field.Clear;
    end;
end;

procedure TfmInvoice.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(cdsDataHAS_DOC_ITEMS);
end;

procedure TfmInvoice.actApproveExecute(Sender: TObject);
var
  PrevBndProcessObjectBranchCode: Integer;
  PrevBndProcessObjectCode: Integer;
begin
  inherited;

  PrevBndProcessObjectBranchCode:= 0;
  PrevBndProcessObjectCode:= 0;
  cdsGridData.TempDisableControls/
    cdsGridData.PreserveBookmark/
      cdsGridData.TempIndex('idxSaleShipments')/
        cdsGridData.ForEach/
          procedure begin
            if (not cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE.IsNull) and
               (not cdsGridDataBND_PROCESS_OBJECT_CODE.IsNull) and
               (cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger = PrevBndProcessObjectBranchCode) and
               (cdsGridDataBND_PROCESS_OBJECT_CODE.AsInteger = PrevBndProcessObjectCode) then
              raise Exception.Create(SSaleShipmentsMustBeUnique);

            PrevBndProcessObjectBranchCode:= cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger;
            PrevBndProcessObjectCode:= cdsGridDataBND_PROCESS_OBJECT_CODE.AsInteger;
          end;

  DoEmployeeDateTimeAction(cdsDataAPPROVE_EMPLOYEE_CODE, cdsDataAPPROVE_DATE, cdsDataAPPROVE_TIME, SConfirmApprove);
  GenerateInvoiceNo;
end;

procedure TfmInvoice.actApproveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (not cdsDataIS_PROFORM_INVOICE.AsBoolean) and
    (not IsAnnuledOrApproved) and
    (not cdsGridData.IsEmpty);
end;

procedure TfmInvoice.actDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, (Sender as TAction).ActionComponent as TControl,
    dotInvoice, cdsData);
end;

procedure TfmInvoice.actDocsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= cdsDataHAS_DOC_ITEMS.AsInteger;
end;

function TfmInvoice.IsApproved: Boolean;
begin
  Result:= not cdsDataAPPROVE_EMPLOYEE_CODE.IsNull;
end;

procedure TfmInvoice.Initialize;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;
  FIinitialInvoiceNo:= cdsDataINVOICE_NO.AsFloat;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotInvoice, dsData.DataSet);
end;

function TfmInvoice.IsAnnuled: Boolean;
begin
  Result:= not cdsDataSTORNO_EMPLOYEE_CODE.IsNull;
end;

function TfmInvoice.IsAnnuledOrApproved: Boolean;
begin
  Result:= IsAnnuled or IsApproved;
end;

procedure TfmInvoice.actFormUpdate(Sender: TObject);
var
  HasPO: Boolean;
  IsBuyerDisabled: Boolean;
begin
  inherited;

  HasPO:= Assigned(FInvoiceDataSet);
  IsBuyerDisabled:=
    (FInvoiceType in [itProtokol, itKorigirashtProtokol]) and (cdsDataSELLER_COMPANY_CODE.AsInteger = 0);

  cdsGridData.ReadOnly:= IsAnnuledOrApproved;
  cdsData.ReadOnly:= cdsData.ReadOnly or IsAnnuled;

  pnlSellerBulstat.Visible:= cdsDataSELLER_IS_PERSON.IsNull or not cdsDataSELLER_IS_PERSON.AsBoolean;
  pnlSellerEGN.Visible:= not pnlSellerBulstat.Visible;
  pnlBuyerBulstat.Visible:= cdsDataBUYER_IS_PERSON.IsNull or not cdsDataBUYER_IS_PERSON.AsBoolean;
  pnlBuyerEGN.Visible:= not pnlBuyerBulstat.Visible;

  pnlManualInvoiceNoButton.Visible:=
    LoginContext.HasUserActivity(uaInvoiceManualInvoiceNo) and
    (EditMode = emInsert) and
    ( (FInvoiceIOType = iiotOut) or
      (FInvoiceType in [itProtokol, itKorigirashtProtokol]) );

  chkIsProform.Enabled:=
    ( (EditMode = emInsert) or
      FIsProformInvoiceState ) and
    not (FInvoiceType in [itDebitnoIzvestie, itKreditnoIzvestie]) and
    not IsAnnuledOrApproved;

  rbCashPayment.Enabled:= not IsAnnuledOrApproved;
  rbBankAccountPayment.Enabled:= not IsAnnuledOrApproved;
  SetControlReadOnly(IsAnnuledOrApproved, cbBankAccount);
  SetControlsReadOnly(IsAnnuled, [chkIsPaid, chkIsVatPaid]);

  cbVatReasons.Enabled:= not (IsAnnuledOrApproved or (EditMode = emReadOnly));

  cbSellerPersonName.Enabled:= not (IsAnnuledOrApproved or (EditMode = emReadOnly));
  cbSellerPersonIName.Enabled:= not (IsAnnuledOrApproved or (EditMode = emReadOnly));
  cbBuyerPersonName.Enabled:= not (IsAnnuledOrApproved or (EditMode = emReadOnly));
  cbBuyerPersonIName.Enabled:= not (IsAnnuledOrApproved or (EditMode = emReadOnly));
  SetControlReadOnly(IsAnnuledOrApproved or (EditMode = emReadOnly), edtInvoicePlace);
  edtInvoiceIPlace.ReadOnly:= IsAnnuledOrApproved or (EditMode = emReadOnly);
  edtInvoiceIPlace.Color:= ReadOnlyIColors[IsAnnuledOrApproved or (EditMode = emReadOnly)];

  moNotes.ReadOnly:= IsAnnuledOrApproved or (EditMode = emReadOnly);
  edtInvoiceNo.ReadOnly:=
    (
      (HasPO or
        not (cdsDataSELLER_COMPANY_CODE.IsNull or (cdsDataSELLER_COMPANY_CODE.AsInteger <> 0)) or
        (FInvoiceType in [itProtokol, itKorigirashtProtokol]) 
      ) and
      not FManualInvoiceNoInvoked
    ) or
    IsAnnuledOrApproved;

  cdsDataINVOICE_NO.Required:= not edtInvoiceNo.ReadOnly;

  edtInvoiceNo.Color:= IfThen(edtInvoiceNo.ReadOnly or cdsData.ReadOnly, clBtnFace, clWindow);
  edtInvoiceNo.Color:= IfThen(edtInvoiceNo.ReadOnly or cdsData.ReadOnly, clBtnFace, clWindow);
  moNotes.Color:= IfThen(moNotes.ReadOnly, clBtnFace, clWindow);

  pnlShowIfAnnuled.Visible:= IsAnnuled;
  pnlAnnulButton.Visible:= not IsAnnuled and (EditMode = emEdit);

  btnRefreshBuyerInfo.Visible:= not IsAnnuledOrApproved and (EditMode <> emReadOnly) and not cdsDataBUYER_COMPANY_CODE.IsNull;
  btnRefreshSellerInfo.Visible:= not IsAnnuledOrApproved and (EditMode <> emReadOnly) and not cdsDataSELLER_COMPANY_CODE.IsNull;
  btnRefreshSenderInfo.Visible:= not IsAnnuledOrApproved and (EditMode <> emReadOnly) and not cdsDataSENDER_COMPANY_CODE.IsNull;
  btnRefreshReceiverInfo.Visible:= not IsAnnuledOrApproved and (EditMode <> emReadOnly) and not cdsDataRECEIVER_COMPANY_CODE.IsNull;

  pnlPrint.Visible:= GetApplyUpdatesEnabled and not IsAnnuled;
  pnlPrintButton.Visible:= not GetApplyUpdatesEnabled and not IsAnnuled;
  chkMatrixPrinter.Enabled:= chkPrint.Checked;
  chkIMatrixPrinter.Enabled:= chkIPrint.Checked;
  chkWideFormat.Enabled:= chkPrint.Checked;
  chkIWideFormat.Enabled:= chkIPrint.Checked;

  cdsDataBANK_COMPANY_CODE.Required:= (cdsDataPAYMENT_TYPE_CODE.AsInteger = ptBankAccount);
  cdsDataACCOUNT_FULL_NAME.Required:= (cdsDataPAYMENT_TYPE_CODE.AsInteger = ptBankAccount);

  ReportClass:= TrptInvoice;

  cbCurrency.Enabled:= cdsGridData.Bof and cdsGridData.Eof;
  cbInvoiceVatType.ReadOnly:=
    IsAnnuledOrApproved or
    (EditMode = emReadOnly);

  btnRefreshBuyerInfo.Enabled:= not IsBuyerDisabled;

  pnlApproveButton.Visible:= not IsApproved;
  pnlUnapproveButton.Visible:= IsApproved;
  pnlShowIfApproved.Visible:= IsApproved;

  grdData.Columns[5].Visible:= LoginContext.IsDiscountPercentShown;
  grdData.Columns[6].Visible:= LoginContext.IsDiscountPercentShown;
end;

procedure TfmInvoice.OpenCompanyBankAccounts;
begin
  with cdsCompanyBankAccounts do
    begin
      Close;
      Params.ParamByName('COMPANY_CODE').Value:= cdsDataSELLER_COMPANY_CODE.AsVariant;
      Open;
    end;  { with }
end;

procedure TfmInvoice.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmInvoiceItem;
  ReportClass:= TrptInvoice;
  FManualInvoiceNoInvoked:= False;
  FItemProductChanging:= False;
  FPriceChanging:= False;
  frInvoiceDate.FieldNames:= 'INVOICE_DATE';
  frEventDate.FieldNames:= 'EVENT_DATE';
  frBuyer.FieldNames:= 'BUYER_COMPANY_CODE';
  frBuyer.FilterCompanyKind:= ckClient;
  frBuyer.ShowOurCompany:= True;
  frSeller.FieldNames:= 'SELLER_COMPANY_CODE';
  frSeller.ShowOurCompany:= True;
  frSeller.FilterCompanyKind:= ckVendor;
  frReceiver.FieldNames:= 'RECEIVER_COMPANY_CODE';
  frReceiver.ShowOurCompany:= True;
  frReceiver.FilterCompanyKind:= ckClient;
  frSender.FieldNames:= 'SENDER_COMPANY_CODE';
  frSender.ShowOurCompany:= True;
  frSender.FilterCompanyKind:= ckVendor;

  FMatrixReportPatterns:= TDictionary<TAbmesMatrixReport, string>.Create();
end;

procedure TfmInvoice.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FMatrixReportPatterns);
end;

function TfmInvoice.GetVat: Real;
begin
  Result:= cdsDataVAT_PERCENT.AsFloat;
end;

procedure TfmInvoice.rbCashPaymentClick(Sender: TObject);
begin
  inherited;
  if (EditMode <> emReadOnly) and
     (cdsDataPAYMENT_TYPE_CODE.AsInteger <> ptCash) then
    begin
      CheckEditMode(cdsData);
      cdsDataPAYMENT_TYPE_CODE.AsInteger:= ptCash;
      cdsDataACCOUNT_FULL_NAME.Clear;
      cdsDataACCOUNT_CODE.Clear;
      cdsDataBANK_COMPANY_CODE.Clear;
      cdsDataACCOUNT.Clear;
      cdsDataIBAN.Clear;
    end;
end;

procedure TfmInvoice.RecalcBaseCurrencyFixing;
var
  b: TBookmark;
begin
  cdsDataBASE_CURRENCY_FIXING.AsFloat:=
    dmMain.SvrCommon.GetBaseCurrencyFixing(cdsDataCURRENCY_CODE.AsInteger, cdsDataINVOICE_DATE.AsDateTime);
  // force calc fields
  b:= cdsGridData.Bookmark;
  cdsGridData.First;
  cdsGridData.Last;
  cdsGridData.Bookmark:= b;
end;

procedure TfmInvoice.rbBankAccountPaymentClick(Sender: TObject);
begin
  inherited;
  if (EditMode <> emReadOnly) and
     (cdsDataPAYMENT_TYPE_CODE.AsInteger <> ptBankAccount) then
    begin
      CheckEditMode(cdsData);
      cdsDataPAYMENT_TYPE_CODE.AsInteger:= ptBankAccount;
    end;
end;

procedure TfmInvoice.FormShow(Sender: TObject);
begin
  inherited;

  rbCashPayment.Checked:= (cdsDataPAYMENT_TYPE_CODE.AsInteger = ptCash);
  rbBankAccountPayment.Checked:= (cdsDataPAYMENT_TYPE_CODE.AsInteger = ptBankAccount);

  // otnovo hypergrozen workaround, InitializeDBComboBox ne pomaga i vyobshte ebati misteriata
  moNotes.SetFocus;
  moNotes.SetFocus;
  grdData.SetFocus;

  frBuyer.edtPartnerCode.SetFocus;

  cbBankAccount.SetDropDownWidth(450);
end;

procedure TfmInvoice.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  // tia izmisleni poleta slujat zatui, che v matrichnia report ne mojesh
  // da imash label na 2 reda (i dyljinite im zatui sa takiva stranni)

  CutCompanyNameField(cdsDataBUYER_NAME, cdsData_BUYER_NAME_1, cdsData_BUYER_NAME_2);
  CutCompanyNameField(cdsDataBUYER_I_NAME, cdsData_BUYER_I_NAME_1, cdsData_BUYER_I_NAME_2);
  CutCompanyNameField(cdsDataSELLER_NAME, cdsData_SELLER_NAME_1, cdsData_SELLER_NAME_2);
  CutCompanyNameField(cdsDataSELLER_I_NAME, cdsData_SELLER_I_NAME_1, cdsData_SELLER_I_NAME_2);
  CutCompanyNameField(cdsDataRECEIVER_NAME, cdsData_RECEIVER_NAME_1, cdsData_RECEIVER_NAME_2);
  CutCompanyNameField(cdsDataRECEIVER_I_NAME, cdsData_RECEIVER_I_NAME_1, cdsData_RECEIVER_I_NAME_2);
  CutCompanyNameField(cdsDataSENDER_NAME, cdsData_SENDER_NAME_1, cdsData_SENDER_NAME_2);
  CutCompanyNameField(cdsDataSENDER_I_NAME, cdsData_SENDER_I_NAME_1, cdsData_SENDER_I_NAME_2);

  // do tuk

  if (cdsDataNOTES.AsString <> '') then
    cdsData_NOTES.AsString:= SNotes + cdsDataNOTES.AsString
  else
    cdsData_NOTES.AsString:= '';

  if cdsDataIS_PROFORM_INVOICE.AsBoolean then
    begin
      cdsData_PRINT_INVOICE_STATUS_TEXT.AsString:= SIsProform;
      cdsData_PRINT_INVOICE_STATUS_I_TEXT.AsString:= SIIsProform;
    end
  else
    if not IsApproved then
      begin
        cdsData_PRINT_INVOICE_STATUS_TEXT.AsString:= SUnapproved;
        cdsData_PRINT_INVOICE_STATUS_I_TEXT.AsString:= SIUnapproved;
      end
    else
      begin
        cdsData_PRINT_INVOICE_STATUS_TEXT.AsString:= '';
        cdsData_PRINT_INVOICE_STATUS_I_TEXT.AsString:= '';
      end;


  cdsData_TOTAL_PRICE_FOR_PAYMENT.AsVariant:= cdsGridData_TOTAL_PRICE_FOR_PAYMENT.AsVariant;

  cdsData_TO_PAY_TEXT.AsString:= cdsDataTO_PAY_TEXT.AsString;
  cdsData_TO_PAY_I_TEXT.AsString:= cdsDataTO_PAY_I_TEXT.AsString;

  cdsData_OVERALL_TOTAL_PRICE.AsVariant:= cdsGridData_OVERALL_TOTAL_PRICE.AsVariant;
  cdsData_TOTAL_PRICE_FOR_VAT.AsVariant:= cdsGridData_TOTAL_PRICE_FOR_VAT.AsVariant;
  cdsData_TOTAL_VAT.AsVariant:= cdsGridData_TOTAL_VAT.AsVariant;
  cdsData_TOTAL_PRICE_FOR_VAT_BC.AsVariant:= cdsGridData_TOTAL_PRICE_FOR_VAT_BC.AsVariant;
  cdsData_TOTAL_VAT_BC.AsVariant:= cdsGridData_TOTAL_VAT_BC.AsVariant;

  case cdsDataPAYMENT_TYPE_CODE.AsInteger of
    ptCash:
      begin
        cdsData_PAYMENT_TYPE_TEXT.AsString:= SCashPayment;
        cdsData_PAYMENT_TYPE_I_TEXT.AsString:= SICashPayment;
      end;
    ptBankAccount:
      begin
        cdsData_PAYMENT_TYPE_TEXT.AsString:= SBankAccountPayment + cdsDataACCOUNT_FULL_NAME.AsString;
        cdsData_PAYMENT_TYPE_I_TEXT.AsString:= SIBankAccountPayment + cdsDataACCOUNT_FULL_NAME.AsString;
      end
    else
      begin
        cdsData_PAYMENT_TYPE_TEXT.AsString:= '';
        cdsData_PAYMENT_TYPE_I_TEXT.AsString:= '';
      end;
  end;

  if not cdsDataVAT_BANK_COMPANY_CODE.IsNull then
    cdsData_VAT_PAYMENT_TYPE_TEXT.AsString:= cdsDataVAT_ACCOUNT_FULL_NAME.AsString
  else
    cdsData_VAT_PAYMENT_TYPE_TEXT.Clear;

  if not cdsData_VAT_PAYMENT_TYPE_TEXT.IsNull then
    cdsData_VAT_PAYMENT_TYPE_TEXT_2.AsString:= SVatAccount + cdsData_VAT_PAYMENT_TYPE_TEXT.AsString
  else
    cdsData_VAT_PAYMENT_TYPE_TEXT_2.Clear;

  cdsData_SELLER_PERSON_NAME.AsString:= GetFormattedPersonNamePrintText(cdsDataSELLER_PERSON_NAME);
  cdsData_SELLER_PERSON_I_NAME.AsString:= GetFormattedPersonNamePrintText(cdsDataSELLER_PERSON_I_NAME);
  cdsData_BUYER_PERSON_NAME.AsString:= GetFormattedPersonNamePrintText(cdsDataBUYER_PERSON_NAME);
  cdsData_BUYER_PERSON_I_NAME.AsString:= GetFormattedPersonNamePrintText(cdsDataBUYER_PERSON_I_NAME);

  cdsData_SELLER_BULSTAT.AsString:= cdsDataSELLER_BULSTAT.AsString + cdsDataSELLER_BULSTAT_EX.AsString;
  cdsData_BUYER_BULSTAT.AsString:= cdsDataBUYER_BULSTAT.AsString + cdsDataBUYER_BULSTAT_EX.AsString;

  if cdsDataSELLER_IS_PERSON.AsBoolean then
    begin
      cdsData_SELLER_BULSTAT_OR_EGN_LABEL.AsString:= SEGNLabel;
      cdsData_SELLER_BULSTAT_OR_EGN_VALUE.AsString:= cdsDataSELLER_EGN.AsString;
    end
  else
    begin
      cdsData_SELLER_BULSTAT_OR_EGN_LABEL.AsString:= SBULSTATLabel;
      cdsData_SELLER_BULSTAT_OR_EGN_VALUE.AsString:= cdsData_SELLER_BULSTAT.AsString;
    end;

  if cdsDataBUYER_IS_PERSON.AsBoolean then
    begin
      cdsData_BUYER_BULSTAT_OR_EGN_LABEL.AsString:= SEGNLabel;
      cdsData_BUYER_BULSTAT_OR_EGN_VALUE.AsString:= cdsDataBUYER_EGN.AsString;
    end
  else
    begin
      cdsData_BUYER_BULSTAT_OR_EGN_LABEL.AsString:= SBULSTATLabel;
      cdsData_BUYER_BULSTAT_OR_EGN_VALUE.AsString:= cdsData_BUYER_BULSTAT.AsString;
    end;

  cdsData_VAT_PERCENT_LABEL.AsString:= Format(SVATDisplay, [RealRound(GetVat * 100)]);

  if FIsOriginalTextInReport.IsEntered then
    begin
      cdsData_IS_ORIGINAL_TEXT.AsString:= SOriginal;
      cdsData_IS_ORIGINAL_I_TEXT.AsString:= SIOriginal;
    end
  else
    begin
      cdsData_IS_ORIGINAL_TEXT.AsString:= '';
      cdsData_IS_ORIGINAL_I_TEXT.AsString:= '';
    end;

  cdsData_BASE_CURRENCY_ABBREV.AsString:= LoginContext.BaseCurrencyAbbrev;
end;

procedure TfmInvoice.cdsDataCURRENCY_CODEChange(Sender: TField);
begin
  inherited;
  RecalcBaseCurrencyFixing;
  GenerateInvoiceNo;
end;

procedure TfmInvoice.GenerateInvoiceNo;
var
  OldInvoiceNo: Variant;
  InvoiceNo: Real;
begin
  if not FManualInvoiceNoInvoked then
    begin
      InvoiceNo:=
        dmMain.SvrInvoices.GenerateInvoiceNo(
          cdsDataINVOICE_DATE.AsDateTime,
          LoginContext.CurrentDeptCode,
          cdsDataINVOICE_TYPE_CODE.AsInteger,
          cdsDataIS_PROFORM_INVOICE.AsBoolean,
          cdsDataCURRENCY_CODE.AsInteger,
          not cdsDataAPPROVE_EMPLOYEE_CODE.IsNull,
          cdsDataINVOICE_NO_GENERATOR_CODE.AsInteger,
          FIinitialInvoiceNo);

      if (cdsDataINVOICE_NO.AsVariant <> FloatToVar(InvoiceNo)) then
        begin
          OldInvoiceNo:= cdsDataINVOICE_NO.AsVariant;
          cdsDataINVOICE_NO.AsVariant:= FloatToVar(InvoiceNo);
          if Visible and not VarIsNullOrEmpty(OldInvoiceNo) then
            begin
              if (InvoiceNo = 0) then
                ShowMessage(SNewEmptyInvoiceNoGenerated)
              else
                ShowMessage(SNewInvoiceNoGenerated);
            end;
        end;
    end;
end;

procedure TfmInvoice.GetBuyerCompanyRepresentatives;
begin
  cbBuyerPersonName.Items.Clear;
  cbBuyerPersonIName.Items.Clear;
  cbBuyerPersonName.Items.Add(' ');
  cbBUyerPersonIName.Items.Add(' ');

  if not cdsDataBUYER_COMPANY_CODE.IsNull then
    with cdsBuyerCompanyRepresentatives do
      begin
        Params.ParamByName('COMPANY_CODE').Value:= cdsDataBUYER_COMPANY_CODE.AsVariant;
        Open;

        try
          while not Eof do
            begin
              cbBuyerPersonName.Items.Add(FieldByName('NAME').AsString);
              cbBuyerPersonIName.Items.Add(FieldByName('I_NAME').AsString);

              Next;
            end;   { while }

        finally
          Close;
        end;   { try }
      end;
end;

procedure TfmInvoice.GetSellerCompanyRepresentatives;
begin
  cbSellerPersonName.Items.Clear;
  cbSellerPersonIName.Items.Clear;
  cbSellerPersonName.Items.Add(' ');
  cbSellerPersonIName.Items.Add(' ');

  if not cdsDataSELLER_COMPANY_CODE.IsNull then
    with cdsSellerCompanyRepresentatives do
      begin
        Params.ParamByName('COMPANY_CODE').Value:= cdsDataSELLER_COMPANY_CODE.AsVariant;
        Open;

        try
          while not Eof do
            begin
              cbSellerPersonName.Items.Add(FieldByName('NAME').AsString);
              cbSellerPersonIName.Items.Add(FieldByName('I_NAME').AsString);

              Next;
            end;   { while }

        finally
          Close;
        end;   { try }
      end;
end;

procedure TfmInvoice.cdsGridDataITEM_NAMEChange(Sender: TField);
begin
  inherited;

  if FItemProductChanging then
    Exit;

  FItemProductChanging:= True;
  try
    if cdsGridDataBND_PROCESS_OBJECT_CODE.IsNull and
       not cdsGridDataPRODUCT_CODE.IsNull then
      begin
        cdsGridDataMARKET_SINGLE_PRICE.Clear;
        cdsGridDataDISCOUNT_PERCENT.AsFloat:= 0;
      end;

    cdsGridDataPRODUCT_CODE.Clear;
    cdsGridDataPRODUCT_NO.Clear;

  finally
    FItemProductChanging:= False;
  end;   { try }
end;

procedure TfmInvoice.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  AInvoiceIOType: TInvoiceIOType;
  AInvoiceType: Integer;
  AInvoiceDataSet: TDataSet;
  AInvoiceItemsDataSet: TDataSet);

  function HasInvoiceEditActivity: Boolean;
  begin
    case AInvoiceIOType of
      iiotIn: raise Exception.Create('iiotIn Invoices are not supported');
      iiotOut: Result:= LoginContext.HasUserActivity(uaInvoiceOutEdit);
    else
      raise Exception.Create('Unknown Invoice IO Type');
    end;  { case }
  end;

begin
  if (AInvoiceIOType = iiotIn) then
    raise Exception.Create('iiotIn Invoices are not supported');

  if (AEditMode = emEdit) and not HasInvoiceEditActivity then
    AEditMode:= emReadOnly;

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);
  FInvoiceIOType:= AInvoiceIOType;
  FInvoiceType:= AInvoiceType;
  FInvoiceDataSet:= AInvoiceDataSet;
  FInvoiceItemsDataSet:= AInvoiceItemsDataSet;
end;

procedure TfmInvoice.GetBuyerInfo;
begin
  GetCompanyInfo(
    cdsDataBUYER_COMPANY_CODE,
    cdsDataBUYER_NAME,
    cdsDataBUYER_CITY,
    cdsDataBUYER_ADDRESS,
    cdsDataBUYER_TAX_NO,
    nil, nil, nil, nil,
    cdsDataBUYER_BULSTAT,
    cdsDataBUYER_BULSTAT_EX,
    cdsDataBUYER_IS_PERSON,
    cdsDataBUYER_FIRST_NAME,
    cdsDataBUYER_MIDDLE_NAME,
    cdsDataBUYER_LAST_NAME,
    cdsDataBUYER_EGN,
    nil,
    cdsDataBUYER_VAT_REGISTERED,
    cdsDataBUYER_VAT_NO,
    cdsDataBUYER_I_NAME,
    nil,
    cdsDataBUYER_I_FIRST_NAME,
    cdsDataBUYER_I_MIDDLE_NAME,
    cdsDataBUYER_I_LAST_NAME,
    cdsDataBUYER_I_CITY,
    cdsDataBUYER_I_ADDRESS);
    
  if cdsDataBUYER_IS_PERSON.AsBoolean then
    begin
      cdsDataBUYER_FIRST_NAME.Required:= True;
      cdsDataBUYER_I_FIRST_NAME.Required:= True;
      cdsDataBUYER_MIDDLE_NAME.Required:= True;
      cdsDataBUYER_I_MIDDLE_NAME.Required:= True;
      cdsDataBUYER_LAST_NAME.Required:= True;
      cdsDataBUYER_I_LAST_NAME.Required:= True;
      cdsDataBUYER_EGN.Required:= True;
      cdsDataBUYER_NAME.Required:= False;
      cdsDataBUYER_BULSTAT.Required:= False;
      cdsDataBUYER_NAME.Clear;
      cdsDataBUYER_I_NAME.Clear;
      cdsDataBUYER_BULSTAT.Clear;
      cdsDataBUYER_BULSTAT_EX.Clear;
    end
  else
    begin
      cdsDataBUYER_FIRST_NAME.Required:= False;
      cdsDataBUYER_I_FIRST_NAME.Required:= False;
      cdsDataBUYER_MIDDLE_NAME.Required:= False;
      cdsDataBUYER_I_MIDDLE_NAME.Required:= False;
      cdsDataBUYER_LAST_NAME.Required:= False;
      cdsDataBUYER_I_LAST_NAME.Required:= False;
      cdsDataBUYER_EGN.Required:= False;
      cdsDataBUYER_NAME.Required:= True;
      cdsDataBUYER_I_NAME.Required:= True;
      cdsDataBUYER_BULSTAT.Required:= True;
    end;
end;

procedure TfmInvoice.GetSellerInfo;
begin
  GetCompanyInfo(
    cdsDataSELLER_COMPANY_CODE,
    cdsDataSELLER_NAME,
    cdsDataSELLER_CITY,
    cdsDataSELLER_ADDRESS,
    cdsDataSELLER_TAX_NO,
    nil, nil, nil, nil,
    cdsDataSELLER_BULSTAT,
    cdsDataSELLER_BULSTAT_EX,
    cdsDataSELLER_IS_PERSON,
    cdsDataSELLER_FIRST_NAME,
    cdsDataSELLER_MIDDLE_NAME,
    cdsDataSELLER_LAST_NAME,
    cdsDataSELLER_EGN,
    nil,
    cdsDataSELLER_VAT_REGISTERED,
    cdsDataSELLER_VAT_NO,
    cdsDataSELLER_I_NAME,
    nil,
    cdsDataSELLER_I_FIRST_NAME,
    cdsDataSELLER_I_MIDDLE_NAME,
    cdsDataSELLER_I_LAST_NAME,
    cdsDataSELLER_I_CITY,
    cdsDataSELLER_I_ADDRESS);

  if cdsDataSELLER_IS_PERSON.AsBoolean then
    begin
      cdsDataSELLER_FIRST_NAME.Required:= True;
      cdsDataSELLER_I_FIRST_NAME.Required:= True;
      cdsDataSELLER_MIDDLE_NAME.Required:= True;
      cdsDataSELLER_I_MIDDLE_NAME.Required:= True;
      cdsDataSELLER_LAST_NAME.Required:= True;
      cdsDataSELLER_I_LAST_NAME.Required:= True;
      cdsDataSELLER_EGN.Required:= True;
      cdsDataSELLER_NAME.Required:= False;
      cdsDataSELLER_I_NAME.Required:= False;
      cdsDataSELLER_BULSTAT.Required:= False;
      cdsDataSELLER_NAME.Clear;
      cdsDataSELLER_I_NAME.Clear;
      cdsDataSELLER_BULSTAT.Clear;
      cdsDataSELLER_BULSTAT_EX.Clear;
    end
  else
    begin
      cdsDataSELLER_FIRST_NAME.Required:= False;
      cdsDataSELLER_I_FIRST_NAME.Required:= False;
      cdsDataSELLER_MIDDLE_NAME.Required:= False;
      cdsDataSELLER_I_MIDDLE_NAME.Required:= False;
      cdsDataSELLER_LAST_NAME.Required:= False;
      cdsDataSELLER_I_LAST_NAME.Required:= False;
      cdsDataSELLER_EGN.Required:= False;
      cdsDataSELLER_NAME.Required:= True;
      cdsDataSELLER_I_NAME.Required:= True;
      cdsDataSELLER_BULSTAT.Required:= True;
    end;

  if not cdsDataACCOUNT_CODE.IsNull then
    begin
      cdsCompanyBankAccounts.Locate('ACCOUNT_CODE', cdsDataACCOUNT_CODE.AsInteger, []);
      cdsDataACCOUNT_FULL_NAME.Assign(cdsCompanyBankAccountsACCOUNT_FULL_NAME);
      cdsDataBANK_COMPANY_CODE.Assign(cdsCompanyBankAccountsBANK_COMPANY_CODE);
      cdsDataACCOUNT.Assign(cdsCompanyBankAccountsACCOUNT);
      cdsDataIBAN.Assign(cdsCompanyBankAccountsIBAN);
      if not cdsDataIBAN.IsNull then
        cdsDataACCOUNT.Clear;
    end;

  if not cdsDataVAT_ACCOUNT_CODE.IsNull then
    begin
      cdsCompanyBankAccounts.Locate('ACCOUNT_CODE', cdsDataVAT_ACCOUNT_CODE.AsInteger, []);
      cdsDataVAT_ACCOUNT_FULL_NAME.Assign(cdsCompanyBankAccountsACCOUNT_FULL_NAME);
      cdsDataVAT_BANK_COMPANY_CODE.Assign(cdsCompanyBankAccountsBANK_COMPANY_CODE);
      cdsDataVAT_ACCOUNT.Assign(cdsCompanyBankAccountsACCOUNT);
      cdsDataVAT_IBAN.Assign(cdsCompanyBankAccountsIBAN);
      if not cdsDataVAT_IBAN.IsNull then
        cdsDataVAT_ACCOUNT.Clear;
    end;

  OpenCompanyBankAccounts;
end;

procedure TfmInvoice.GetSenderInfo;
begin
  if not cdsDataSENDER_COMPANY_CODE.IsNull then
    GetCompanyInfo(
      cdsDataSENDER_COMPANY_CODE,
      cdsDataSENDER_NAME,
      nil,
      cdsDataSENDER_ADDRESS,
      nil,
      nil, nil, nil, nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      cdsDataSENDER_I_NAME,
      nil,
      nil,
      nil,
      nil,
      nil,
      cdsDataSENDER_I_ADDRESS);

  SetParRelPartnerOfficeAddress(cdsDataSENDER_COMPANY_CODE, cdsDataSENDER_ADDRESS, cdsDataSENDER_I_ADDRESS, brtVendor);
end;

class function TfmInvoice.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  AInvoiceIOType: TInvoiceIOType;
  AInvoiceType: Integer;
  AInvoiceDataSet: TDataSet;
  AInvoiceItemsDataSet: TDataSet): Boolean;
var
  f: TfmInvoice;
begin
  dmMain.LoginContext.CheckUserActivity(uaShowSalePrices);

  f:= TfmInvoice.Create(Application);
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AInvoiceIOType, AInvoiceType, AInvoiceDataSet, AInvoiceItemsDataSet);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmInvoice.cdsDataAfterOpen(DataSet: TDataSet);
var
  v: Variant;
begin
  inherited;

  FOriginalIsApproved:= IsApproved;

  if (FInvoiceType = 0) then
    FInvoiceType:= cdsDataINVOICE_TYPE_CODE.AsInteger;

  v:= cdsInvoiceTypes.Lookup('INVOICE_TYPE_CODE', FInvoiceType, 'ADD_VAT;ADD_VAT_TO_ITEMS;INVOICE_TYPE_NAME');

  if VarIsNull(v) or VarIsEmpty(v) then
    raise Exception.Create('Internal error: InvoiceTypes lookup failed');

  FAddVat:= v[0];
  //FAddVatToItems:= v[1]; !!!!!!
  FAddVatToItems:= False;
  FInvoiceTypeName:= v[2];

  FIsProformInvoiceState:= cdsDataIS_PROFORM_INVOICE.AsBoolean;

  if cdsGridData.Active then
    cdsGridData.First;

  cdsData.Last;
  cdsData.First;  // da si calcne fields, koito zavisiat ot cdsGridData pyrvonachalno, shtoto e huiova zavisimostta i ne se useshta

  if not cdsData.IsEmpty and
     not cdsDataCURRENCY_CODE.IsNull and
     not cdsGridData_TOTAL_PRICE_FOR_PAYMENT.IsNull then
    begin
      cdsData.Edit;
      try
        // do nothing ( BeforePost shte popylni poleto TO_PAY_TEXT )
        cdsData.Post;
      except
        cdsData.Cancel;
        raise;
      end;  { try }

      cdsData.MergeChangeLog;
    end;  { if }
end;

procedure TfmInvoice.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  if cdsGridData.Bof and cdsGridData.Eof then
    raise Exception.Create(SCantSaveEmptyInvoice);

  OwnerData:= VarArrayOf([FManualInvoiceNoInvoked, DocsDelta]);
end;

procedure TfmInvoice.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  FOlddmDocClientOnDataChanged:= nil;
end;

procedure TfmInvoice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  if (ModalResult = mrOk) and (pnlPrint.Visible) then
    begin

      if chkPrint.Checked then
        if chkMatrixPrinter.Checked then
          begin
            if chkWideFormat.Checked then
              actPrintMatrixWide.Execute
            else
              actPrintMatrix.Execute;
          end
        else
          actPrint.Execute;

      if chkIPrint.Checked then
        if chkIMatrixPrinter.Checked then
          begin
            if chkIWideFormat.Checked then
              actIPrintMatrixWide.Execute
            else
              actIPrintMatrix.Execute;
          end
        else
          actIPrint.Execute;

    end;
end;

procedure TfmInvoice.actStornoExecute(Sender: TObject);
var
  b: Boolean;
begin
  inherited;

  if (MessageDlgEx(SConfirmInvoiceStorno, mtConfirmation, mbOkCancel, 0) = mrOk) then
    begin
      b:= cdsData.ReadOnly;
      cdsData.ReadOnly:= False;
      try
        CheckEditMode(cdsData);
        cdsDataSTORNO_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
      finally
        cdsData.ReadOnly:= b;
      end;
    end;
end;

procedure TfmInvoice.actStornoUpdate(Sender: TObject);
begin
  inherited;
  actStorno.Enabled:= cdsDataSTORNO_EMPLOYEE_CODE.IsNull;
end;

procedure TfmInvoice.actUnapproveExecute(Sender: TObject);
begin
  inherited;

  if FOriginalIsApproved then
    LoginContext.CheckUserActivity(uaUnapproveInvoice);

  CheckEditMode(cdsData);
  ClearFieldsIfAssigned([
    cdsDataAPPROVE_EMPLOYEE_CODE,
    cdsDataAPPROVE_DATE,
    cdsDataAPPROVE_TIME
  ]);
end;

procedure TfmInvoice.actUnapproveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= IsApproved;
end;

procedure TfmInvoice.actApplyUpdatesExecute(Sender: TObject);
var
  InvoiceNo: Integer;
begin
  InvoiceNo:= cdsDataINVOICE_NO.AsInteger;

  cdsData.ReadOnly:= False;  // ako e shtraktnato anulirane stava readonly i niama da se zapishe. formupdate shte opravi readonly state 

  inherited;

  if (cdsDataINVOICE_NO.AsInteger <> InvoiceNo) then
    ShowMessageFmtEx(SInvoiceSaved, [cdsDataINVOICE_NO.AsInteger]);
end;

function TfmInvoice.GetNewInvoiceItemCode: Integer;
begin
  if VarIsNull(cdsGridData_MAX_INVOICE_ITEM_CODE.Value) then
    Result:= 1
  else
    Result:= cdsGridData_MAX_INVOICE_ITEM_CODE.Value + 1;
end;

function TfmInvoice.GetOriginalFormCaption: string;
begin
  if cdsData.Active then
    Result:= Format('%s - %%s', [cdsData_INVOICE_TYPE_NAME.AsString])
  else
    Result:= inherited GetOriginalFormCaption;
end;

procedure TfmInvoice.btnPrintClick(Sender: TObject);
begin
  PopupMenuFromButton((Sender as TBitBtn), mnuPrint);
end;

procedure TfmInvoice.actPrintMatrixWideExecute(Sender: TObject);
begin
  inherited;
  ExecutePrintingProc(
    procedure begin
      if LoginContext.IsDiscountPercentShownOnPrint then
        smrInvoiceWide.Print(True)
      else
        smrInvoiceWide2.Print(True);
    end);
end;

procedure TfmInvoice.smrInvoiceRecordHeaderAndFooterWideBeforePrint(Sender: TObject;
  var ToPrint: Boolean);
begin
  inherited;
  ToPrint:= (FGroupRecords <> 0);
end;

procedure TfmInvoice.InvoiceGroupFooterAfterPrint(AReport: TAbmesMatrixReport);
begin
  AReport.Pattern.Text:= FMatrixReportPatterns[AReport];
end;

procedure TfmInvoice.InvoiceGroupFooterBeforePrint(AReport: TAbmesMatrixReport);
var
  i: Integer;
begin
  inherited;
  FMatrixReportPatterns.AddOrSetValue(AReport, AReport.Pattern.Text);

  if (cdsDataCURRENCY_CODE.AsInteger = LoginContext.BaseCurrencyCode) then
    begin
      i:= 0;
      while (i < AReport.Pattern.Count) do
        if AReport.Pattern[i].Contains('_TOTAL_VAT_BC') then
          AReport.Pattern.Delete(i)
        else
          Inc(i);
    end;
end;

procedure TfmInvoice.smrIInvoiceGroupFooter2AfterPrint(Sender: TObject);
begin
  inherited;
  InvoiceGroupFooterAfterPrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrIInvoiceGroupFooter2BeforePrint(Sender: TObject;
  var ToPrint: Boolean);
begin
  inherited;
  InvoiceGroupFooterBeforePrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrIInvoiceGroupFooterAfterPrint(Sender: TObject);
begin
  inherited;
  InvoiceGroupFooterAfterPrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrIInvoiceGroupFooterBeforePrint(Sender: TObject;
  var ToPrint: Boolean);
begin
  inherited;
  InvoiceGroupFooterBeforePrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrIInvoiceGroupFooterWide2AfterPrint(Sender: TObject);
begin
  inherited;
  InvoiceGroupFooterAfterPrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrIInvoiceGroupFooterWide2BeforePrint(Sender: TObject;
  var ToPrint: Boolean);
begin
  inherited;
  InvoiceGroupFooterBeforePrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrIInvoiceGroupFooterWideAfterPrint(Sender: TObject);
begin
  inherited;
  InvoiceGroupFooterAfterPrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrIInvoiceGroupFooterWideBeforePrint(Sender: TObject;
  var ToPrint: Boolean);
begin
  inherited;
  InvoiceGroupFooterBeforePrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrInvoiceGroupFooter2AfterPrint(Sender: TObject);
begin
  inherited;
  InvoiceGroupFooterAfterPrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrInvoiceGroupFooter2BeforePrint(Sender: TObject;
  var ToPrint: Boolean);
begin
  inherited;
  InvoiceGroupFooterBeforePrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrInvoiceGroupFooterAfterPrint(Sender: TObject);
begin
  inherited;
  InvoiceGroupFooterAfterPrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrInvoiceGroupFooterBeforePrint(Sender: TObject;
  var ToPrint: Boolean);
begin
  inherited;
  InvoiceGroupFooterBeforePrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrInvoiceGroupFooterWide2AfterPrint(Sender: TObject);
begin
  inherited;
  InvoiceGroupFooterAfterPrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrInvoiceGroupFooterWide2BeforePrint(Sender: TObject;
  var ToPrint: Boolean);
begin
  inherited;
  InvoiceGroupFooterBeforePrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrInvoiceGroupFooterWideAfterPrint(Sender: TObject);
begin
  inherited;
  InvoiceGroupFooterAfterPrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrInvoiceGroupFooterWideBeforePrint(Sender: TObject;
  var ToPrint: Boolean);
begin
  inherited;
  InvoiceGroupFooterBeforePrint(Sender as TAbmesMatrixReport);
end;

procedure TfmInvoice.smrInvoiceGroupHeaderWideAfterPrint(Sender: TObject);
begin
  inherited;
  FGroupRecords:= 0;
end;

procedure TfmInvoice.smrInvoiceWideAfterPrint(Sender: TObject);
begin
  inherited;
  Inc(FGroupRecords);
end;

procedure TfmInvoice.VatTypeNameFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if (cdsInvoiceVatTypesINVOICE_VAT_TYPE_CODE.AsInteger = ivtVatPercent) then
    Text:= Format('%.f%%', [cdsDataVAT_PERCENT.AsFloat * 100])
  else
    Text:= Sender.AsString;
end;

procedure TfmInvoice.ExecutePrintingProc(APrintingProc: TProc);
begin
  if IsApproved then
    FIsOriginalTextInReport.TempEnter/
      procedure begin
        cdsData.RecalcFields;
        APrintingProc;
      end;

  cdsData.RecalcFields;
  APrintingProc;
end;

procedure TfmInvoice.actPrintExecute(Sender: TObject);
begin
  ExecutePrintingProc(
    procedure begin
      TrptInvoice.PrintReport(cdsGridData, cdsData, LoginContext.IsDiscountPercentShownOnPrint);
    end);
end;

procedure TfmInvoice.actPrintMatrixExecute(Sender: TObject);
begin
  inherited;
  ExecutePrintingProc(
    procedure begin
      if LoginContext.IsDiscountPercentShownOnPrint then
        smrInvoice.Print(True)
      else
        smrInvoice2.Print(True);
    end);
end;

procedure TfmInvoice.cdsDataIS_PROFORM_INVOICEChange(Sender: TField);
begin
  inherited;

  if ( not cdsDataSELLER_COMPANY_CODE.IsNull and
       (cdsDataSELLER_COMPANY_CODE.AsInteger = 0) ) or
     (FInvoiceType in [itProtokol, itKorigirashtProtokol]) then
    GenerateInvoiceNo;
end;

procedure TfmInvoice.PricesValidate(
  Sender: TField);
begin
  inherited;
  if not Sender.IsNull and (Sender.AsFloat = 0) then
    raise Exception.Create(SZeroPriceNotAllowed); 
end;

procedure TfmInvoice.RefreshComboBox(AComboBox: TJvDBLookupCombo);
var
  SavedDataSource: TDataSource;
begin
  SavedDataSource:= AComboBox.DataSource;
  AComboBox.DataSource:= nil;
  try
    // do nothing;
  finally
    AComboBox.DataSource:= SavedDataSource;
  end;  { try }
end;

procedure TfmInvoice.cdsDataINVOICE_DATEChange(Sender: TField);
begin
  inherited;
  LoadVatPercent;
  RefreshComboBox(cbInvoiceVatType);
  RecalcBaseCurrencyFixing;

  GetSenderInfo;
  GetReceiverInfo;

  GenerateInvoiceNo;
end;

procedure TfmInvoice.LoadVatPercent;
begin
  cdsDataVAT_PERCENT.AsFloat:=
    dmMain.SvrFinance.GetVatPercent(IfThen(cdsDataINVOICE_DATE.IsNull, ContextDate, cdsDataINVOICE_DATE.AsDateTime));
end;

procedure TfmInvoice.cdsDataINVOICE_VAT_TYPE_CODEChange(Sender: TField);
var
  b: TBookmark;
begin
  inherited;
  // force calc fields
  b:= cdsGridData.Bookmark;
  try
    cdsGridData.First;
    cdsGridData.Last;
  finally
    cdsGridData.Bookmark:= b;
  end;
end;

procedure TfmInvoice.btnManualInvoiceNoClick(Sender: TObject);
begin
  inherited;
  FManualInvoiceNoInvoked:= btnManualInvoiceNo.Down;
  if FManualInvoiceNoInvoked then
    cdsDataINVOICE_NO.Clear
  else
    GenerateInvoiceNo;
end;

procedure TfmInvoice.CheckInvoiceBaseRequiredFields;
begin
  if not (FInvoiceType in [itProtokol, itKorigirashtProtokol]) then
    CheckRequiredField(cdsDataBUYER_COMPANY_CODE);

  CheckRequiredFields([cdsDataSELLER_COMPANY_CODE, cdsDataCURRENCY_CODE, cdsDataINVOICE_DATE]);
end;

procedure TfmInvoice.actInsertRecordExecute(Sender: TObject);
begin
//  inherited;
  CheckInvoiceBaseRequiredFields;
  TfmInvoiceItem.ShowForm(dmDocClient, cdsGridData, emInsert, FInvoiceType);
end;

procedure TfmInvoice.actInsertSaleShipmentsExecute(Sender: TObject);
begin
  inherited;
  CheckInvoiceBaseRequiredFields;
  cdsSaleExpGroupsParams.TempCreateDataSet/
    procedure begin
      cdsSaleExpGroupsParams.SafeAppend/
        procedure begin
          cdsSaleExpGroupsParamsCHOSEN_COMPANIES.AsString:=
            ChosenCompanyCodeToXML(cdsDataBUYER_COMPANY_CODE.AsInteger);
        end;  { lambda }

      cdsNewInvoiceItems.TempCreateDataSet/
        procedure begin
          if TfmSaleExpGroups.ShowForm(nil, cdsSaleExpGroupsParams, emReadOnly, True, pcNormal, cdsNewInvoiceItems) then
            AddInvoiceItems(cdsNewInvoiceItems);
        end;  { lambda }
    end;  { lambda }
end;

procedure TfmInvoice.actInsertSaleShipmentsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetInsertRecordEnabled;
end;

procedure TfmInvoice.actIPrintExecute(Sender: TObject);
begin
  ExecutePrintingProc(
    procedure begin
      TrptIInvoice.PrintReport(cdsGridData, cdsData, LoginContext.IsDiscountPercentShownOnPrint);
    end);
end;

procedure TfmInvoice.actIPrintMatrixExecute(Sender: TObject);
begin
  inherited;
  ExecutePrintingProc(
    procedure begin
      if LoginContext.IsDiscountPercentShownOnPrint then
        smrIInvoice.Print(True)
      else
        smrIInvoice2.Print(True);
    end);
end;

procedure TfmInvoice.actIPrintMatrixWideExecute(Sender: TObject);
begin
  inherited;;
  ExecutePrintingProc(
    procedure begin
      if LoginContext.IsDiscountPercentShownOnPrint then
        smrIInvoiceWide.Print(True)
      else
        smrIInvoiceWide2.Print(True);
    end);
end;

procedure TfmInvoice.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsGridDataSINGLE_PRICE.IsNull or cdsGridDataACCOUNT_QUANTITY.IsNull then
    cdsGridData_TOTAL_PRICE.Clear
  else
    cdsGridData_TOTAL_PRICE.AsFloat:=
      cdsGridDataSINGLE_PRICE.AsFloat * cdsGridDataACCOUNT_QUANTITY.AsFloat;

  cdsGridData_TOTAL_PRICE_FOR_VAT.Assign(cdsGridData_OVERALL_TOTAL_PRICE);

  if cdsGridData_TOTAL_PRICE_FOR_VAT.IsNull or (cdsDataINVOICE_VAT_TYPE_CODE.AsInteger in [ivtNotTaxable, ivtNotRegistered]) then
    cdsGridData_TOTAL_VAT.Clear
  else
    begin
      if (cdsDataINVOICE_VAT_TYPE_CODE.AsInteger = ivtZeroPercent) then
        cdsGridData_TOTAL_VAT.AsFloat:= 0
      else
        cdsGridData_TOTAL_VAT.AsFloat:=
          cdsGridData_TOTAL_PRICE_FOR_VAT.AsFloat * GetVat;
    end;

  if VarIsNullOrEmpty(cdsGridData_OVERALL_TOTAL_PRICE.Value) then
    cdsGridData_TOTAL_PRICE_FOR_PAYMENT.Clear
  else
    cdsGridData_TOTAL_PRICE_FOR_PAYMENT.AsFloat:=
      VarToFloat(cdsGridData_OVERALL_TOTAL_PRICE.Value) + cdsGridData_TOTAL_VAT.AsFloat;

  cdsGridData_TOTAL_PRICE_FOR_VAT_BC.AsVariant:=
    cdsGridData_TOTAL_PRICE_FOR_VAT.AsVariant * cdsDataBASE_CURRENCY_FIXING.AsVariant;

  cdsGridData_TOTAL_VAT_BC.AsVariant:=
    cdsGridData_TOTAL_VAT.AsVariant * cdsDataBASE_CURRENCY_FIXING.AsVariant;

  if cdsGridDataCLIENT_REQUEST_NO.IsNull then
    cdsGridData_INVOICE_ITEM_IDENTIFIER.Assign(cdsGridDataBND_PROCESS_OBJECT_IDENTIFIER)
  else
    cdsGridData_INVOICE_ITEM_IDENTIFIER.Assign(cdsGridDataCLIENT_REQUEST_NO);

  cdsGridData_CURRENCY_ABBREV.AsString:= cdsData_CURRENCY_ABBREV.AsString;
end;

procedure TfmInvoice.CalcSinglePrice(Sender: TField);
begin
  inherited;

  CheckEditMode(cdsGridData);

  if cdsGridDataMARKET_SINGLE_PRICE.IsNull or cdsGridDataDISCOUNT_PERCENT.IsNull then
    cdsGridDataSINGLE_PRICE.Clear
  else
    cdsGridDataSINGLE_PRICE.AsFloat:=
      cdsGridDataMARKET_SINGLE_PRICE.AsFloat * (1 - cdsGridDataDISCOUNT_PERCENT.AsFloat);
end;

procedure TfmInvoice.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataINVOICE_ITEM_CODE.AsInteger:= GetNewInvoiceItemCode;
  cdsGridDataDISCOUNT_PERCENT.AsFloat:= 0;
end;

procedure TfmInvoice.cdsGridDataDISCOUNT_PERCENTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
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

procedure TfmInvoice.cdsGridDataDISCOUNT_PERCENTSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Text <> '') then
    Sender.AsFloat:= StrToFloat(Text) / 100
  else
    Sender.Clear;
end;

procedure TfmInvoice.cdsGridDataDISCOUNT_PERCENTValidate(Sender: TField);
begin
  inherited;
  if (Sender.AsFloat < 0) or (Sender.AsFloat > 1) then
    raise Exception.CreateFmt(SInvalidDiscountPercent, [Sender.DisplayLabel])
end;

procedure TfmInvoice.cdsGridDataPRODUCT_CODEChange(Sender: TField);
var
  f: TField;
  CompanyProductName: WideString;
  ReceiverCompanyCode: Integer;
begin
  inherited;

  if FItemProductChanging then
    Exit;

  FItemProductChanging:= True;
  try
    if (cdsDataSELLER_COMPANY_CODE.AsInteger = 0) then
      f:= cdsGridDataMARKET_SINGLE_PRICE
    else
      f:= nil;

    DoProductFieldChanged(
      cdsGridDataPRODUCT_CODE,
      cdsGridDataITEM_NAME,
      cdsGridDataPRODUCT_NO,
      nil,
      cdsGridDataFALSH_ACCOUNT_MEASURE_CODE,
      nil,
      nil,
      nil,
      nil,
      f,
      nil, //cdsGridDataIS_VAT_FREE,
      nil,
      nil);

    if cdsDataRECEIVER_COMPANY_CODE.IsNull then
      ReceiverCompanyCode:= cdsDataBUYER_COMPANY_CODE.AsInteger
    else
      ReceiverCompanyCode:= cdsDataRECEIVER_COMPANY_CODE.AsInteger;

    CompanyProductName:= dmMain.SvrProductsTree.GetCompanyProductName(ReceiverCompanyCode, cdsGridDataPRODUCT_CODE.AsInteger);
    if (CompanyProductName <> '') then
      cdsGridDataITEM_NAME.AsString:= CompanyProductName;

    cdsGridDataACCOUNT_MEASURE_ABBREV.AsVariant:=
      cdsGridData_FALSH_ACCOUNT_MEASURE_ABBREV.AsVariant;

    cdsGridDataACCOUNT_MEASURE_I_ABBREV.AsVariant:=
      cdsGridData_FALSH_ACCOUNT_MEASURE_I_ABBREV.AsVariant;

    cdsGridDataDISCOUNT_PERCENT.AsFloat:= 0;

  finally
    FItemProductChanging:= False;
  end;   { try }
end;

function TfmInvoice.GetPrintEnabled: Boolean;
begin
  Result:= True;
end;

procedure TfmInvoice.GetReceiverInfo;
begin
  if not cdsDataRECEIVER_COMPANY_CODE.IsNull then
    GetCompanyInfo(
      cdsDataRECEIVER_COMPANY_CODE,
      cdsDataRECEIVER_NAME,
      nil,
      cdsDataRECEIVER_ADDRESS,
      nil,
      nil, nil, nil, nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      cdsDataRECEIVER_I_NAME,
      nil,
      nil,
      nil,
      nil,
      nil,
      cdsDataRECEIVER_I_ADDRESS);

  SetParRelPartnerOfficeAddress(cdsDataRECEIVER_COMPANY_CODE, cdsDataRECEIVER_ADDRESS, cdsDataRECEIVER_I_ADDRESS, brtClient);
end;

procedure TfmInvoice.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if cdsDataCURRENCY_CODE.IsNull or
     cdsGridData_TOTAL_PRICE_FOR_PAYMENT.IsNull then
     begin
      cdsDataTO_PAY_TEXT.Clear;
      cdsDataTO_PAY_I_TEXT.Clear;
     end
  else
    begin
      cdsDataTO_PAY_TEXT.AsString:=
        dmMain.SvrCommon.MoneyToLocalText(cdsGridData_TOTAL_PRICE_FOR_PAYMENT.AsFloat, cdsDataCURRENCY_CODE.AsInteger);
      cdsDataTO_PAY_I_TEXT.AsString:=
        dmMain.SvrCommon.MoneyToText(cdsGridData_TOTAL_PRICE_FOR_PAYMENT.AsFloat, cdsDataCURRENCY_CODE.AsInteger, SystemLocaleToInt(slUSEnglish));
    end;

  if (FInvoiceType = itKreditnoIzvestie) and
     ( not VarIsNullOrEmpty(cdsGridData_OVERALL_TOTAL_PRICE.Value) and
       (cdsGridData_OVERALL_TOTAL_PRICE.Value >= 0) ) then
    raise Exception.Create(SSumMustBeNegative);

  if not
     ( (FInvoiceType in [itProtokol, itKorigirashtProtokol]) and
       (cdsDataSELLER_COMPANY_CODE.AsInteger = 0) ) then
    CheckRequiredFields([
      cdsDataBUYER_COMPANY_CODE,
      cdsDataBUYER_CITY,
      cdsDataBUYER_ADDRESS
    ]);
  {
  if (VarToInt(cdsGridData_IS_VAT_FREE_EQUAL.Value) <> 0) then
    raise Exception.Create(SVATFreeMustBeOneForAllRows);
  }
end;

function TfmInvoice.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmInvoiceItem.ShowForm(dmDocClient, cdsGridData, AEditMode, FInvoiceType);
end;

procedure TfmInvoice.cdsGridDataSINGLE_PRICEChange(Sender: TField);
begin
  inherited;
  CalcPrices;
end;

procedure TfmInvoice.cdsGridDataSINGLE_PRICE_WITHOUT_VATChange(
  Sender: TField);
begin
  inherited;

  if FPriceChanging then
    Exit;

  FPriceChanging:= True;
  try
    cdsGridDataMARKET_SINGLE_PRICE.AsVariant:=
      cdsGridDataSINGLE_PRICE_WITHOUT_VAT.AsVariant;
    cdsGridDataDISCOUNT_PERCENT.AsFloat:= 0;
  finally
    FPriceChanging:= False;
  end;   { try }
  CalcPrices;
end;

procedure TfmInvoice.cdsGridDataSINGLE_PRICE_WITH_VATChange(
  Sender: TField);
begin
  inherited;

  if FPriceChanging then
    Exit;

  FPriceChanging:= True;
  try
    if cdsGridDataSINGLE_PRICE_WITH_VAT.IsNull then
      cdsGridDataMARKET_SINGLE_PRICE.Clear
    else
      cdsGridDataMARKET_SINGLE_PRICE.AsFloat:=
        cdsGridDataSINGLE_PRICE_WITH_VAT.AsFloat / (1 + GetVat);
    cdsGridDataDISCOUNT_PERCENT.AsFloat:= 0;
  finally
    FPriceChanging:= False;
  end;   { try }
  CalcPrices;
end;

procedure TfmInvoice.btnRefreshSellerInfoClick(Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  GetSellerInfo;
end;

procedure TfmInvoice.btnRefreshSenderInfoClick(Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  GetSenderInfo;
end;

procedure TfmInvoice.btnRefreshBuyerInfoClick(Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  GetBuyerInfo;
end;

procedure TfmInvoice.btnRefreshReceiverInfoClick(Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  GetReceiverInfo;
end;

procedure TfmInvoice.CalcPrices;
begin
  if FPriceChanging then
    Exit;

  FPriceChanging:= True;
  try
    if FAddVatToItems then
      begin
        if cdsGridDataSINGLE_PRICE.IsNull then
          begin
            cdsGridDataSINGLE_PRICE_WITH_VAT.Clear;
            cdsGridDataSINGLE_PRICE_WITHOUT_VAT.Clear;
          end
        else
          begin
            cdsGridDataSINGLE_PRICE_WITHOUT_VAT.AsFloat:=
              cdsGridDataSINGLE_PRICE.AsFloat / (1 + GetVat);
            cdsGridDataSINGLE_PRICE_WITH_VAT.AsFloat:=
              cdsGridDataSINGLE_PRICE.AsFloat;
          end;
      end
    else
      begin
        if cdsGridDataSINGLE_PRICE.IsNull then
          begin
            cdsGridDataSINGLE_PRICE_WITH_VAT.Clear;
            cdsGridDataSINGLE_PRICE_WITHOUT_VAT.Clear;
          end
        else
          begin
            cdsGridDataSINGLE_PRICE_WITHOUT_VAT.AsFloat:=
              cdsGridDataSINGLE_PRICE.AsFloat;
            cdsGridDataSINGLE_PRICE_WITH_VAT.AsFloat:=
              cdsGridDataSINGLE_PRICE.AsFloat * (1 + GetVat);
          end;
      end;

    if cdsGridDataSINGLE_PRICE_WITHOUT_VAT.IsNull or
       cdsGridDataACCOUNT_QUANTITY.IsNull then
      cdsGridDataTOTAL_PRICE_WITHOUT_VAT.Clear
    else
      cdsGridDataTOTAL_PRICE_WITHOUT_VAT.AsFloat:=
        cdsGridDataSINGLE_PRICE_WITHOUT_VAT.AsFloat * cdsGridDataACCOUNT_QUANTITY.AsFloat;

    if cdsGridDataSINGLE_PRICE_WITH_VAT.IsNull or
       cdsGridDataACCOUNT_QUANTITY.IsNull then
      cdsGridDataTOTAL_PRICE_WITH_VAT.Clear
    else
      cdsGridDataTOTAL_PRICE_WITH_VAT.AsFloat:=
        cdsGridDataSINGLE_PRICE_WITH_VAT.AsFloat * cdsGridDataACCOUNT_QUANTITY.AsFloat;
  finally
    FPriceChanging:= False;
  end;   { try }
end;

procedure TfmInvoice.cdsGridDataACCOUNT_QUANTITYChange(Sender: TField);
begin
  inherited;
  CalcPrices;
end;

procedure TfmInvoice.cdsGridDataTOTAL_PRICE_WITHOUT_VATChange(
  Sender: TField);
begin
  inherited;

  if FPriceChanging then
    Exit;

  FPriceChanging:= True;
  try
    if (cdsGridDataACCOUNT_QUANTITY.AsFloat = 0) then
      begin
        if (cdsGridDataSINGLE_PRICE_WITHOUT_VAT.AsFloat = 0) then
          cdsGridDataTOTAL_PRICE_WITHOUT_VAT.Clear
        else
          begin
            if cdsGridDataTOTAL_PRICE_WITHOUT_VAT.IsNull then
              cdsGridDataACCOUNT_QUANTITY.Clear
            else
              cdsGridDataACCOUNT_QUANTITY.AsFloat:=
                cdsGridDataTOTAL_PRICE_WITHOUT_VAT.AsFloat / cdsGridDataSINGLE_PRICE_WITHOUT_VAT.AsFloat;
          end;
      end
    else
      begin
        cdsGridDataMARKET_SINGLE_PRICE.AsFloat:=
          cdsGridDataTOTAL_PRICE_WITHOUT_VAT.AsFloat / cdsGridDataACCOUNT_QUANTITY.AsFloat;
        cdsGridDataDISCOUNT_PERCENT.AsFloat:= 0;
      end;
  finally
    FPriceChanging:= False;
  end;   { try }
  CalcPrices;
end;

procedure TfmInvoice.cdsGridDataTOTAL_PRICE_WITH_VATChange(Sender: TField);
begin
  inherited;

  if FPriceChanging then
    Exit;

  FPriceChanging:= True;
  try
    if cdsGridDataACCOUNT_QUANTITY.IsNull then
      begin
        if (cdsGridDataSINGLE_PRICE_WITH_VAT.AsFloat = 0) then
          cdsGridDataTOTAL_PRICE_WITH_VAT.Clear
        else
          begin
            if cdsGridDataTOTAL_PRICE_WITH_VAT.IsNull then
              cdsGridDataACCOUNT_QUANTITY.Clear
            else
              cdsGridDataACCOUNT_QUANTITY.AsFloat:=
                cdsGridDataTOTAL_PRICE_WITH_VAT.AsFloat / cdsGridDataSINGLE_PRICE_WITH_VAT.AsFloat;
          end;
      end
    else
      begin
        cdsGridDataMARKET_SINGLE_PRICE.AsFloat:=
          cdsGridDataTOTAL_PRICE_WITH_VAT.AsFloat / (cdsGridDataACCOUNT_QUANTITY.AsFloat * (1 + GetVat));
        cdsGridDataDISCOUNT_PERCENT.AsFloat:= 0;
      end;
  finally
    FPriceChanging:= False;
  end;   { try }
  CalcPrices;
end;

procedure TfmInvoice.cdsInvoiceVatTypesINVOICE_VAT_TYPE_NAMEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  VatTypeNameFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmInvoice.DoBeforeShow;
var
  CompanyFullName: string;
  City: string;
  Address: string;
  TaxNo: string;
  BulstatNo: string;
  DummyString: string;
  DummyBool: Boolean;
  DummyInt: Integer;
begin
  inherited;

  if (FInvoiceDataSet <> nil) then
    with FInvoiceDataSet do
      begin
        if not FieldByName('SELLER_COMPANY_CODE').IsNull then
          begin
            dmMain.SvrCompanies.GetCompanyInfo(FieldByName('SELLER_COMPANY_CODE').AsInteger,
              CompanyFullName,
              City,
              Address,
              TaxNo,
              DummyString,
              DummyString,
              DummyString,
              DummyString,
              BulstatNo,
              DummyString,
              DummyBool,
              DummyString,
              DummyString,
              DummyString,
              DummyString,
              DummyInt,
              DummyBool,
              DummyString,
              DummyString,
              DummyString,
              DummyString,
              DummyString,
              DummyString,
              DummyString,
              DummyString);

            if (CompanyFullName = '') or
               (City = '') or
               (Address = '') or
               (BulstatNo = '') then
              raise Exception.Create(SSellerNotEnoughData);
          end;

        if not FieldByName('BUYER_COMPANY_CODE').IsNull then
          begin
            dmMain.SvrCompanies.GetCompanyInfo(FieldByName('BUYER_COMPANY_CODE').AsInteger,
              CompanyFullName,
              City,
              Address,
              TaxNo,
              DummyString,
              DummyString,
              DummyString,
              DummyString,
              BulstatNo,
              DummyString,
              DummyBool,
              DummyString,
              DummyString,
              DummyString,
              DummyString,
              DummyInt,
              DummyBool,
              DummyString,
              DummyString,
              DummyString,
              DummyString,
              DummyString,
              DummyString,
              DummyString,
              DummyString);

            if (CompanyFullName = '') or
               (City = '') or
               (Address = '') or
               (BulstatNo = '') then
              raise Exception.Create(SBuyerNotEnoughData);
          end;
      end;
end;

procedure TfmInvoice.cdsDataSELLER_ADDRESSChange(Sender: TField);
begin
  inherited;
  CheckEditMode(cdsData);
  cdsDataINVOICE_PLACE.AsVariant:= cdsDataSELLER_CITY.AsVariant;
end;

procedure TfmInvoice.cdsData_INVOICE_TYPE_I_NAMEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:=
    AnsiUpperCase(
      cdsData_INVOICE_TYPE_I_NAME.AsString +
      IfThen(not cdsDataSTORNO_EMPLOYEE_CODE.IsNull, Format(' (%s)', [SIAnnulled])));
end;

procedure TfmInvoice.cdsData_INVOICE_TYPE_NAMEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:=
    AnsiUpperCase(
      cdsData_INVOICE_TYPE_NAME.AsString +
      IfThen(not cdsDataSTORNO_EMPLOYEE_CODE.IsNull, Format(' (%s)', [SAnnulled])));
end;

procedure TfmInvoice.cdsData_INVOICE_VAT_TYPE_NAMEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  VatTypeNameFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmInvoice.SetParRelPartnerOfficeAddress(APartnerCodeField,
  APartnerAddressField, APartnerIAddressField: TField;
  ABorderRelType: TBorderRelType);
var
  Address, IAddress: string;
begin
  if (not APartnerCodeField.IsNull) and (not cdsDataINVOICE_DATE.IsNull) then
    begin
      dmMain.SvrCompanies.GetParRelPartnerOfficeAddress(
        APartnerCodeField.AsInteger,
        BorderRelTypeToInt(ABorderRelType),
        cdsDataINVOICE_DATE.AsDateTime,
        Address,
        IAddress);

      if (Address <> '') then
        APartnerAddressField.AsString:= Address;

      if (IAddress <> '') then
        APartnerIAddressField.AsString:= IAddress;
    end;
end;

function TfmInvoice.GetFormattedPersonNamePrintText(APersonNameField: TAbmesWideStringField): string;
const
  EmptyPersonNamePrintText: string = '/                            /';
begin
  Result:= IfThen(APersonNameField.IsNull, EmptyPersonNamePrintText, Format('/ %s /', [APersonNameField.AsString]));
end;

function TfmInvoice.GetPrintButtonOnToolbarEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmInvoice.DoApplyUpdates;
begin
  if not (
       (cdsDataINVOICE_TYPE_CODE.AsInteger = itFaktura) and
       (cdsDataSELLER_COMPANY_CODE.AsInteger = 0)
     ) then
    begin
      if not (FInvoiceType in [itProtokol, itKorigirashtProtokol]) then
        CheckRequiredField(cdsDataBUYER_PERSON_NAME);

      CheckRequiredField(cdsDataSELLER_PERSON_NAME);
    end;

  inherited;
end;

procedure TfmInvoice.PeopleSetText(Sender: TField; const Text: String);
begin
  if (Trim(Text) = '') then
    Sender.Clear
  else
    Sender.AsString:= Text;
end;

procedure TfmInvoice.PersonNameChange(APersonNameComboBox,
  APersonNameOtherComboBox: TJvDBComboBox; APersonNameOtherField: TField);
begin
  if (APersonNameComboBox.ItemIndex > 0) then
    APersonNameOtherField.AsString:= APersonNameOtherComboBox.Items[APersonNameComboBox.ItemIndex];
end;

procedure TfmInvoice.cdsDataBUYER_NAMEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if cdsDataBUYER_IS_PERSON.IsNull or not cdsDataBUYER_IS_PERSON.AsBoolean then
    Text:= Sender.AsString
  else
    Text:= 
      cdsDataBUYER_FIRST_NAME.AsString + ' ' + cdsDataBUYER_MIDDLE_NAME.AsString + ' ' + cdsDataBUYER_LAST_NAME.AsString;
end;

procedure TfmInvoice.cdsDataSELLER_PERSON_NAMESetText(Sender: TField;
  const Text: String);
begin
  inherited;
  PeopleSetText(Sender, Text);
end;

procedure TfmInvoice.cdsDataBUYER_PERSON_NAMESetText(Sender: TField;
  const Text: String);
begin
  inherited;
  PeopleSetText(Sender, Text);
end;

procedure TfmInvoice.cdsDataSELLER_NAMEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin         
  inherited;
  if cdsDataSELLER_IS_PERSON.IsNull or not cdsDataSELLER_IS_PERSON.AsBoolean then
    Text:= Sender.AsString
  else
    Text:= 
      cdsDataSELLER_FIRST_NAME.AsString + ' ' + cdsDataSELLER_MIDDLE_NAME.AsString + ' ' + cdsDataSELLER_LAST_NAME.AsString;
end;

procedure TfmInvoice.cdsDataSELLER_PERSON_NAME_SOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  PeopleSetText(Sender, Text);
end;

procedure TfmInvoice.cdsDataSELLER_VAT_NOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if cdsDataSELLER_VAT_REGISTERED.AsBoolean then
    Text:= Sender.AsString
  else
    begin
      if cdsDataSELLER_COMPANY_CODE.IsNull then
        Text:= ''
      else
        Text:= SNotVatRegistered;
    end;
end;

procedure TfmInvoice.cdsDataSENDER_COMPANY_CODEChange(Sender: TField);
begin
  inherited;

  if not cdsDataSENDER_COMPANY_CODE.IsNull then
    GetSenderInfo
  else
    begin
      cdsDataSENDER_NAME.Clear;
      cdsDataSENDER_I_NAME.Clear;
      cdsDataSENDER_ADDRESS.Clear;
      cdsDataSENDER_I_ADDRESS.Clear;
    end;
end;

procedure TfmInvoice.cbBuyerPersonINameChange(Sender: TObject);
begin
  inherited;
  PersonNameChange(cbBuyerPersonIName, cbBuyerPersonName, cdsDataBUYER_PERSON_NAME);
end;

procedure TfmInvoice.cbBuyerPersonNameChange(Sender: TObject);
begin
  inherited;
  PersonNameChange(cbBuyerPersonName, cbBuyerPersonIName, cdsDataBUYER_PERSON_I_NAME);
end;

procedure TfmInvoice.cbSellerPersonINameChange(Sender: TObject);
begin
  inherited;
  PersonNameChange(cbSellerPersonIName, cbSellerPersonName, cdsDataSELLER_PERSON_NAME);
end;

procedure TfmInvoice.cbSellerPersonNameChange(Sender: TObject);
begin
  inherited;
  PersonNameChange(cbSellerPersonName, cbSellerPersonIName, cdsDataSELLER_PERSON_I_NAME);
end;

procedure TfmInvoice.cdsDataACCOUNT_FULL_NAMEChange(Sender: TField);
begin
  inherited;
  cdsCompanyBankAccounts.Locate('ACCOUNT_FULL_NAME', cdsDataACCOUNT_FULL_NAME.AsString, []);
  cdsDataACCOUNT_CODE.Assign(cdsCompanyBankAccountsACCOUNT_CODE);
  cdsDataBANK_COMPANY_CODE.Assign(cdsCompanyBankAccountsBANK_COMPANY_CODE);
  cdsDataACCOUNT.Assign(cdsCompanyBankAccountsACCOUNT);
  cdsDataIBAN.Assign(cdsCompanyBankAccountsIBAN);
  if not cdsDataIBAN.IsNull then
    cdsDataACCOUNT.Clear;    
end;

procedure TfmInvoice.cdsDataVAT_ACCOUNT_FULL_NAMEChange(Sender: TField);
begin
  inherited;
  cdsCompanyBankAccounts.Locate('ACCOUNT_FULL_NAME', cdsDataVAT_ACCOUNT_FULL_NAME.AsString, []);
  cdsDataVAT_ACCOUNT_CODE.Assign(cdsCompanyBankAccountsACCOUNT_CODE);
  cdsDataVAT_BANK_COMPANY_CODE.Assign(cdsCompanyBankAccountsBANK_COMPANY_CODE);
  cdsDataVAT_ACCOUNT.Assign(cdsCompanyBankAccountsACCOUNT);
  cdsDataVAT_IBAN.Assign(cdsCompanyBankAccountsIBAN);
  if not cdsDataVAT_IBAN.IsNull then
    cdsDataVAT_ACCOUNT.Clear;
end;

procedure TfmInvoice.cdsDataBUYER_PERSON_NAME_SOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  PeopleSetText(Sender, Text);
end;

procedure TfmInvoice.cdsDataBUYER_VAT_NOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if cdsDataBUYER_VAT_REGISTERED.AsBoolean then
    Text:= Sender.AsString
  else
    begin
      if cdsDataBUYER_COMPANY_CODE.IsNull then
        Text:= ''
      else
        Text:= SNotVatRegistered;
    end;
end;

procedure TfmInvoice.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frInvoiceDate) or
     (AFrame = frEventDate) then
    AFrame.ReadOnly:= IsAnnuledOrApproved
  else
    if (AFrame = frSeller) or (AFrame = frSender) then
      AFrame.ReadOnly:=
        Assigned(FInvoiceDataSet) or
        IsAnnuledOrApproved or
        (EditMode = emEdit) or
        (FInvoiceIOType = iiotOut)
    else
      begin
        if (AFrame = frBuyer) then
          AFrame.ReadOnly:=
            Assigned(FInvoiceDataSet) or
            IsAnnuledOrApproved or
            (EditMode = emEdit) or
            (FInvoiceIOType = iiotIn) or
            ( (FInvoiceType in [itProtokol, itKorigirashtProtokol]) and
              (cdsDataBUYER_COMPANY_CODE.AsInteger = 0) )
        else
          if (AFrame = frReceiver) then
            AFrame.ReadOnly:=
              Assigned(FInvoiceDataSet) or
              IsAnnuledOrApproved or
              (EditMode = emEdit) or
              (FInvoiceIOType = iiotIn) or
              ( (FInvoiceType in [itProtokol, itKorigirashtProtokol]) and
                (cdsDataRECEIVER_COMPANY_CODE.AsInteger = 0) )
          else
            inherited;
      end
end;

end.

