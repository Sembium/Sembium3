unit dInvoices;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule, dDBPooledDataModule,
  WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmInvoices = class(TDBPooledDataModule)
    qryInvoices: TAbmesSQLQuery;
    prvInvoices: TDataSetProvider;
    qryInvoice: TAbmesSQLQuery;
    prvInvoice: TDataSetProvider;
    qryInvoicesINVOICE_BRANCH_CODE: TAbmesFloatField;
    qryInvoicesINVOICE_CODE: TAbmesFloatField;
    qryInvoicesINVOICE_NO: TAbmesFloatField;
    qryInvoicesINVOICE_TYPE_NAME: TAbmesWideStringField;
    qryInvoicesIS_PROFORM_INVOICE: TAbmesFloatField;
    qryInvoicesINVOICE_DATE: TAbmesSQLTimeStampField;
    qryInvoicesSELLER_NAME: TAbmesWideStringField;
    qryInvoicesBUYER_NAME: TAbmesWideStringField;
    qryInvoiceTypes: TAbmesSQLQuery;
    qryInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField;
    qryInvoiceTypesINVOICE_TYPE_NAME: TAbmesWideStringField;
    qryInvoiceTypesADD_VAT: TAbmesFloatField;
    qryInvoiceTypesADD_VAT_TO_ITEMS: TAbmesFloatField;
    qryInvoiceTypesDIARY_NO_WHEN_ANNULED: TAbmesFloatField;
    prvInvoiceTypes: TDataSetProvider;
    qryInvoiceItems: TAbmesSQLQuery;
    qryInvoiceItemsBRANCH_CODE: TAbmesFloatField;
    qryInvoiceItemsINVOICE_CODE: TAbmesFloatField;
    qryInvoiceItemsINVOICE_ITEM_CODE: TAbmesFloatField;
    qryInvoiceItemsPRODUCT_CODE: TAbmesFloatField;
    qryInvoiceItemsITEM_NAME: TAbmesWideStringField;
    qryInvoiceItemsACCOUNT_QUANTITY: TAbmesFloatField;
    qryInvoiceItemsSINGLE_PRICE: TAbmesFloatField;
    qryInvoiceItemsIS_VAT_FREE: TAbmesFloatField;
    qryGetNewInvoiceCode: TAbmesSQLQuery;
    dsInvoice: TDataSource;
    qryInvoiceINVOICE_BRANCH_CODE: TAbmesFloatField;
    qryInvoiceINVOICE_CODE: TAbmesFloatField;
    qryInvoiceIS_PROFORM_INVOICE: TAbmesFloatField;
    qryInvoiceINVOICE_NO: TAbmesFloatField;
    qryInvoiceINVOICE_TYPE_CODE: TAbmesFloatField;
    qryInvoiceINVOICE_DATE: TAbmesSQLTimeStampField;
    qryInvoiceSELLER_COMPANY_CODE: TAbmesFloatField;
    qryInvoiceSELLER_NAME: TAbmesWideStringField;
    qryInvoiceSELLER_CITY: TAbmesWideStringField;
    qryInvoiceSELLER_ADDRESS: TAbmesWideStringField;
    qryInvoiceSELLER_MOL_NAME: TAbmesWideStringField;
    qryInvoiceBUYER_COMPANY_CODE: TAbmesFloatField;
    qryInvoiceBUYER_NAME: TAbmesWideStringField;
    qryInvoiceBUYER_CITY: TAbmesWideStringField;
    qryInvoiceBUYER_ADDRESS: TAbmesWideStringField;
    qryInvoiceBUYER_MOL_NAME: TAbmesWideStringField;
    qryInvoiceBUYER_TAX_NO: TAbmesFloatField;
    qryInvoiceSELLER_PERSON_NAME: TAbmesWideStringField;
    qryInvoiceBUYER_PERSON_NAME: TAbmesWideStringField;
    qryInvoiceCURRENCY_CODE: TAbmesFloatField;
    qryInvoicePAYMENT_TYPE_CODE: TAbmesFloatField;
    qryInvoiceBANK_COMPANY_CODE: TAbmesFloatField;
    qryInvoiceACCOUNT: TAbmesFloatField;
    qryInvoiceVAT_PERCENT: TAbmesFloatField;
    qryInvoiceNOTES: TAbmesWideStringField;
    qryInvoiceCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryInvoiceCREATE_DATE: TAbmesSQLTimeStampField;
    qryInvoiceCREATE_TIME: TAbmesSQLTimeStampField;
    qryInvoiceCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryInvoiceCHANGE_DATE: TAbmesSQLTimeStampField;
    qryInvoiceCHANGE_TIME: TAbmesSQLTimeStampField;
    qryInvoiceSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryInvoiceSTORNO_DATE: TAbmesSQLTimeStampField;
    qryInvoiceSTORNO_TIME: TAbmesSQLTimeStampField;
    qryInvoiceItemsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryTotalInvoicePrice: TAbmesSQLQuery;
    qryTotalInvoicePriceSUM_TOTAL_PRICE: TAbmesFloatField;
    qryInvoicesIS_STORNO_INVOICE: TAbmesFloatField;
    qryInvoiceItemsFALSH_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryGetNewInvoiceCodeNEW_INVOICE_CODE: TAbmesFloatField;
    qryGetMaxInvoiceNo: TAbmesSQLQuery;
    qryGetMaxInvoiceNoMAX_INVOICE_NO: TAbmesFloatField;
    qryInvoiceItemsPRODUCT_NO: TAbmesFloatField;
    qryInvoiceItemsMARKET_SINGLE_PRICE: TAbmesFloatField;
    qryInvoiceItemsDISCOUNT_PERCENT: TAbmesFloatField;
    qryInvoicesTOTAL_PRICE_WITHOUT_VAT: TAbmesFloatField;
    qryInvoicesTOTAL_VAT: TAbmesFloatField;
    qryInvoicesTOTAL_PRICE: TAbmesFloatField;
    qryInvoicesTOTAL_MARKET_PRICE_WITHOUT_VAT: TAbmesFloatField;
    qryInvoicesTOTAL_PRICE_DISCOUNT: TAbmesFloatField;
    qryInvoiceItemsSINGLE_PRICE_WITHOUT_VAT: TAbmesFloatField;
    qryInvoiceItemsSINGLE_PRICE_WITH_VAT: TAbmesFloatField;
    qryInvoiceItemsTOTAL_PRICE_WITHOUT_VAT: TAbmesFloatField;
    qryInvoiceItemsTOTAL_PRICE_WITH_VAT: TAbmesFloatField;
    qryInvoiceItemsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryInvoiceItemsBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryInvoiceINVOICE_PLACE: TAbmesWideStringField;
    qryInvoiceSELLER_PERSON_NAME_SO: TAbmesWideStringField;
    qryInvoiceBUYER_PERSON_NAME_SO: TAbmesWideStringField;
    qryInvoicesNOTES: TAbmesWideStringField;
    qryGetLastInvoiceDate: TAbmesSQLQuery;
    qryGetLastInvoiceDateINVOICE_DATE: TAbmesSQLTimeStampField;
    qryInvoiceVAT_BANK_COMPANY_CODE: TAbmesFloatField;
    qryInvoiceVAT_ACCOUNT: TAbmesFloatField;
    qryInvoiceIS_PAID: TAbmesFloatField;
    qryInvoicesIS_PAID: TAbmesFloatField;
    qryInvoicesINVOICE_ITEMS_NAMES: TAbmesWideStringField;
    qryInvoiceIS_VAT_PAID: TAbmesFloatField;
    qryInvoicesIS_VAT_PAID: TAbmesFloatField;
    qryGetInvoiceNoInterval: TAbmesSQLQuery;
    qryGetInvoiceNoIntervalMIN_RANGE_INVOICE_NO: TAbmesFloatField;
    qryGetInvoiceNoIntervalMAX_RANGE_INVOICE_NO: TAbmesFloatField;
    qryInvoiceSELLER_TAX_NO: TAbmesFloatField;
    qryInvoiceSELLER_BULSTAT: TAbmesWideStringField;
    qryInvoiceBUYER_BULSTAT: TAbmesWideStringField;
    qryInvoiceSELLER_BULSTAT_EX: TAbmesWideStringField;
    qryInvoiceBUYER_BULSTAT_EX: TAbmesWideStringField;
    qryInvoiceSELLER_BULSTAT_NO: TAbmesFloatField;
    qryInvoiceBUYER_BULSTAT_NO: TAbmesFloatField;
    qryInvoiceSELLER_FIRST_NAME: TAbmesWideStringField;
    qryInvoiceSELLER_MIDDLE_NAME: TAbmesWideStringField;
    qryInvoiceSELLER_LAST_NAME: TAbmesWideStringField;
    qryInvoiceSELLER_EGN: TAbmesWideStringField;
    qryInvoiceSELLER_IS_PERSON: TAbmesFloatField;
    qryInvoiceBUYER_FIRST_NAME: TAbmesWideStringField;
    qryInvoiceBUYER_MIDDLE_NAME: TAbmesWideStringField;
    qryInvoiceBUYER_LAST_NAME: TAbmesWideStringField;
    qryInvoiceBUYER_EGN: TAbmesWideStringField;
    qryInvoiceBUYER_IS_PERSON: TAbmesFloatField;
    qryInvoiceACCOUNT_CODE: TAbmesFloatField;
    qryInvoiceIBAN: TAbmesWideStringField;
    qryInvoiceVAT_ACCOUNT_CODE: TAbmesFloatField;
    qryInvoiceVAT_IBAN: TAbmesWideStringField;
    qryInvoiceACCOUNT_FULL_NAME: TAbmesWideStringField;
    qryInvoiceVAT_ACCOUNT_FULL_NAME: TAbmesWideStringField;
    qryInvoiceTO_PAY_TEXT: TAbmesWideStringField;
    qryInvoiceEVENT_DATE: TAbmesSQLTimeStampField;
    qryInvoiceSELLER_VAT_REGISTERED: TAbmesFloatField;
    qryInvoiceBUYER_VAT_REGISTERED: TAbmesFloatField;
    prvInvoiceVatTypes: TDataSetProvider;
    qryInvoiceVatTypes: TAbmesSQLQuery;
    qryInvoiceINVOICE_VAT_TYPE_CODE: TAbmesFloatField;
    qryInvoiceVatTypesINVOICE_VAT_TYPE_CODE: TAbmesFloatField;
    qryInvoiceVatTypesINVOICE_VAT_TYPE_NAME: TAbmesWideStringField;
    qryInvoiceINVOICE_RANGE_VERSION_NO: TAbmesFloatField;
    qryGetMaxInvoiceNoOld: TAbmesSQLQuery;
    qryGetMaxInvoiceNoOldMAX_INVOICE_NO: TAbmesFloatField;
    qryInvoiceINVOICE_RANGE_TYPE_VERSION_NO: TAbmesFloatField;
    qryInvoiceBASE_CURRENCY_FIXING: TAbmesFloatField;
    qryInvoiceBUYER_VAT_NO: TAbmesWideStringField;
    qryInvoiceSELLER_VAT_NO: TAbmesWideStringField;
    qryInvoiceSELLER_OR_BUYER_CODE: TAbmesFloatField;
    qryInvoiceAPPROVE_EMPLOYEE_CODE: TAbmesFloatField;
    qryInvoiceAPPROVE_DATE: TAbmesSQLTimeStampField;
    qryInvoiceAPPROVE_TIME: TAbmesSQLTimeStampField;
    qryInvoicesIS_APPROVED: TAbmesFloatField;
    qryUpdateInvoiceSaleShipments: TAbmesSQLQuery;
    qrySaleShipmentInvoice: TAbmesSQLQuery;
    prvSaleShipmentInvoice: TDataSetProvider;
    qrySaleShipmentInvoiceINVOICE_BRANCH_CODE: TAbmesFloatField;
    qrySaleShipmentInvoiceINVOICE_CODE: TAbmesFloatField;
    qrySaleShipmentInvoiceIS_APPROVED: TAbmesFloatField;
    qrySaleShipmentInvoiceINVOICE_NO: TAbmesFloatField;
    qrySaleShipmentInvoiceINVOICE_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentInvoiceIS_PROFORM_INVOICE: TAbmesFloatField;
    qryInvoiceItemsBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryInconsistentSaleShipments: TAbmesSQLQuery;
    qryInconsistentSaleShipmentsPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryInvoiceSELLER_I_NAME: TAbmesWideStringField;
    qryInvoiceSELLER_I_CITY: TAbmesWideStringField;
    qryInvoiceSELLER_I_ADDRESS: TAbmesWideStringField;
    qryInvoiceSELLER_I_FIRST_NAME: TAbmesWideStringField;
    qryInvoiceSELLER_I_MIDDLE_NAME: TAbmesWideStringField;
    qryInvoiceSELLER_I_LAST_NAME: TAbmesWideStringField;
    qryInvoiceBUYER_I_NAME: TAbmesWideStringField;
    qryInvoiceBUYER_I_CITY: TAbmesWideStringField;
    qryInvoiceBUYER_I_ADDRESS: TAbmesWideStringField;
    qryInvoiceBUYER_I_FIRST_NAME: TAbmesWideStringField;
    qryInvoiceBUYER_I_MIDDLE_NAME: TAbmesWideStringField;
    qryInvoiceBUYER_I_LAST_NAME: TAbmesWideStringField;
    qryInvoiceVAT_REASON_CODE: TAbmesFloatField;
    qryInvoiceRECEIVER_COMPANY_CODE: TAbmesFloatField;
    qryInvoiceRECEIVER_NAME: TAbmesWideStringField;
    qryInvoiceRECEIVER_I_NAME: TAbmesWideStringField;
    qryInvoiceRECEIVER_ADDRESS: TAbmesWideStringField;
    qryInvoiceRECEIVER_I_ADDRESS: TAbmesWideStringField;
    qryInvoiceSENDER_COMPANY_CODE: TAbmesFloatField;
    qryInvoiceSENDER_NAME: TAbmesWideStringField;
    qryInvoiceSENDER_I_NAME: TAbmesWideStringField;
    qryInvoiceSENDER_ADDRESS: TAbmesWideStringField;
    qryInvoiceSENDER_I_ADDRESS: TAbmesWideStringField;
    qryInvoiceItemsCLIENT_REQUEST_NO: TAbmesWideStringField;
    qryInvoiceTypesINVOICE_TYPE_I_NAME: TAbmesWideStringField;
    qryInvoiceTO_PAY_I_TEXT: TAbmesWideStringField;
    qryInvoiceItemsITEM_I_NAME: TAbmesWideStringField;
    qryInvoiceItemsACCOUNT_MEASURE_I_ABBREV: TAbmesWideStringField;
    qryInvoiceINVOICE_I_PLACE: TAbmesWideStringField;
    qryInvoiceBUYER_PERSON_I_NAME: TAbmesWideStringField;
    qryInvoiceSELLER_PERSON_I_NAME: TAbmesWideStringField;
    qryInvoiceDOC_BRANCH_CODE: TAbmesFloatField;
    qryInvoiceDOC_CODE: TAbmesFloatField;
    qryInvoiceHAS_DOC_ITEMS: TAbmesFloatField;
    prvInvoiceNoGenerators: TDataSetProvider;
    qryInvoiceNoGenerators: TAbmesSQLQuery;
    qryInvoiceNoGeneratorsINVOICE_NO_GENERATOR_CODE: TAbmesFloatField;
    qryInvoiceNoGeneratorsINVOICE_NO_GENERATOR_NO: TAbmesFloatField;
    qryInvoiceNoGeneratorsBEGIN_DATE: TAbmesSQLTimeStampField;
    qryInvoiceNoGeneratorsEND_DATE: TAbmesSQLTimeStampField;
    qryInvoiceNoGeneratorsDEPT_CODE: TAbmesFloatField;
    qryInvoiceNoGeneratorsDEPT_NAME: TAbmesWideStringField;
    qryInvoiceNoGeneratorsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryInvoiceNoGeneratorsIS_PROFORM_INVOICE: TAbmesFloatField;
    qryInvoiceNoGeneratorsIS_APPROVED: TAbmesFloatField;
    qryInvoiceNoGeneratorsMIN_INVOICE_NO: TAbmesFloatField;
    qryInvoiceNoGeneratorsMAX_INVOICE_NO: TAbmesFloatField;
    qryInvoiceNoGeneratorsCURRENT_INVOICE_NO: TAbmesFloatField;
    qryInvoiceNoGeneratorsINVOICE_TYPE_NAMES: TAbmesWideStringField;
    qryInvoiceNoGeneratorsCURRENCY_ABBREVS: TAbmesWideStringField;
    prvInvoiceNoGenerator: TDataSetProvider;
    qryInvoiceNoGenerator: TAbmesSQLQuery;
    qryInvoiceNoGeneratorINVOICE_NO_GENERATOR_CODE: TAbmesFloatField;
    qryInvoiceNoGeneratorINVOICE_NO_GENERATOR_NO: TAbmesFloatField;
    qryInvoiceNoGeneratorBEGIN_DATE: TAbmesSQLTimeStampField;
    qryInvoiceNoGeneratorEND_DATE: TAbmesSQLTimeStampField;
    qryInvoiceNoGeneratorDEPT_CODE: TAbmesFloatField;
    qryInvoiceNoGeneratorIS_PROFORM_INVOICE: TAbmesFloatField;
    qryInvoiceNoGeneratorIS_APPROVED: TAbmesFloatField;
    qryInvoiceNoGeneratorMIN_INVOICE_NO: TAbmesFloatField;
    qryInvoiceNoGeneratorMAX_INVOICE_NO: TAbmesFloatField;
    qryInvoiceNoGeneratorCURRENT_INVOICE_NO: TAbmesFloatField;
    dsInvoiceNoGenerator: TDataSource;
    qryINGInvoiceTypes: TAbmesSQLQuery;
    qryINGInvoiceTypesINVOICE_NO_GENERATOR_CODE: TAbmesFloatField;
    qryINGInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField;
    qryINGNotInvoiceTypes: TAbmesSQLQuery;
    qryINGNotInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField;
    qryINGCurrencies: TAbmesSQLQuery;
    qryINGCurrenciesINVOICE_NO_GENERATOR_CODE: TAbmesFloatField;
    qryINGCurrenciesCURRENCY_CODE: TAbmesFloatField;
    qryINGNotCurrencies: TAbmesSQLQuery;
    qryINGNotCurrenciesCURRENCY_CODE: TAbmesFloatField;
    qryNewInvoiceNoGeneratorCode: TAbmesSQLQuery;
    qryNewInvoiceNoGeneratorCodeNEW_INVOICE_NO_GENERATOR_CODE: TAbmesFloatField;
    qryCheckInvoiceNoGenerator: TAbmesSQLQuery;
    qryGenerateInvoiceNo: TAbmesSQLQuery;
    qryInvoiceINVOICE_NO_GENERATOR_CODE: TAbmesFloatField;
    procedure prvInvoiceBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvInvoiceUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure prvInvoiceBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvInvoiceAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure qryInvoiceBeforeProviderEndTransaction(DataSet: TDataSet; Commit: Boolean);
    procedure prvInvoiceAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryInvoiceAfterProviderStartTransaction(DataSet: TDataSet);
    procedure prvInvoiceNoGeneratorBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryInvoiceNoGeneratorBeforeProviderEndTransaction(
      DataSet: TDataSet; Commit: Boolean);
    procedure qryInvoiceBeforeOpen(DataSet: TDataSet);
  private
    FManualInvoiceNoInvoked: Boolean;
    FInvoiceBranchCode: Integer;
    FInvoiceCode: Integer;
    FDocsDelta: Variant;
    FInvoiceNoGeneratorCode: Integer;
    function GetNewInvoiceCode: Integer;
    procedure CheckInvoiceSaleShipments(AInvoiceBranchCode, AInvoiceCode: Integer);
    procedure UpdateInvoiceSaleShipments(AInvoiceBranchCode, AInvoiceCode: Integer);
    function NewInvoiceNoGeneratorCode: Integer;
    function InternalGenerateInvoiceNo(AInvoiceDate: TDateTime; ADeptCode, AInvoiceTypeCode: Integer;
      AIsProformInvoice: Boolean; ACurrencyCode: Integer; AIsApproved: Boolean;
      OldInvoiceNoGeneratorCode: Integer; OldInvoiceNo: Double; AReadOnly: Boolean): Real;
  protected
    function TotalInvoicePrice(IsProformInvoice: Boolean; InvoiceNo,
      SellerCompanyCode: Integer): OleVariant;
    function GetNewInvoiceNo(IsProformInvoice: Boolean; InvoiceTypeCode: Integer): Integer;
    function GenerateInvoiceNo(InvoiceDate: TDateTime; DeptCode: Integer; InvoiceTypeCode: Integer;
                               IsProformInvoice: Boolean; CurrencyCode: Integer; IsApproved: Boolean;
                               OldInvoiceNoGeneratorCode: Integer; OldInvoiceNo: Double): Double;
  end;

type
  IdmInvoicesProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmInvoicesProxy = class(TDBPooledDataModuleProxy, IdmInvoicesProxy)
  private
    class var FSingleton: TdmInvoicesProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmInvoices>;
  strict protected
    property LockedInstance: ISmartLock<TdmInvoices> read GetLockedInstance;
  public
    class property Singleton: TdmInvoicesProxy read FSingleton;

    function TotalInvoicePrice(IsProformInvoice: Boolean; InvoiceNo,
      SellerCompanyCode: Integer): OleVariant;
    function GetNewInvoiceNo(IsProformInvoice: Boolean; InvoiceTypeCode: Integer): Integer;
    function GenerateInvoiceNo(InvoiceDate: TDateTime; DeptCode: Integer; InvoiceTypeCode: Integer;
                               IsProformInvoice: Boolean; CurrencyCode: Integer; IsApproved: Boolean;
                               OldInvoiceNoGeneratorCode: Integer; OldInvoiceNo: Double): Double;
  end;

implementation

uses
  Variants, uUtils, Math, uServerMessageIds, uInvoiceTypes,
  uDBPooledDataModuleHelper;

{$R *.DFM}

{ TdmInvoicesProxy }

function TdmInvoicesProxy.GenerateInvoiceNo(InvoiceDate: TDateTime; DeptCode,
  InvoiceTypeCode: Integer; IsProformInvoice: Boolean; CurrencyCode: Integer;
  IsApproved: Boolean; OldInvoiceNoGeneratorCode: Integer; OldInvoiceNo: Double): Double;
begin
  Result:=
    LockedInstance.Value.GenerateInvoiceNo(InvoiceDate, DeptCode, InvoiceTypeCode,
      IsProformInvoice, CurrencyCode, IsApproved, OldInvoiceNoGeneratorCode, OldInvoiceNo);
end;

function TdmInvoicesProxy.GetLockedInstance: ISmartLock<TdmInvoices>;
begin
  Result:= ISmartLock<TdmInvoices>(inherited LockedInstance);
end;

function TdmInvoicesProxy.GetNewInvoiceNo(IsProformInvoice: Boolean; InvoiceTypeCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewInvoiceNo(IsProformInvoice, InvoiceTypeCode);
end;

function TdmInvoicesProxy.TotalInvoicePrice(IsProformInvoice: Boolean;
  InvoiceNo, SellerCompanyCode: Integer): OleVariant;
begin
  Result:= LockedInstance.Value.TotalInvoicePrice(IsProformInvoice, InvoiceNo, SellerCompanyCode);
end;

{ TdmInvoices }

function TdmInvoices.GenerateInvoiceNo(InvoiceDate: TDateTime; DeptCode,
  InvoiceTypeCode: Integer; IsProformInvoice: Boolean; CurrencyCode: Integer;
  IsApproved: Boolean; OldInvoiceNoGeneratorCode: Integer; OldInvoiceNo: Double): Double;
begin
  Result:=
    InternalGenerateInvoiceNo(InvoiceDate, DeptCode, InvoiceTypeCode, IsProformInvoice,
      CurrencyCode, IsApproved, OldInvoiceNoGeneratorCode, OldInvoiceNo, True);
end;

function TdmInvoices.InternalGenerateInvoiceNo(AInvoiceDate: TDateTime; ADeptCode,
  AInvoiceTypeCode: Integer; AIsProformInvoice: Boolean; ACurrencyCode: Integer;
  AIsApproved: Boolean; OldInvoiceNoGeneratorCode: Integer; OldInvoiceNo: Double;
  AReadOnly: Boolean): Real;
begin
  qryGenerateInvoiceNo.ParamByName('INVOICE_DATE').AsDateTime:= AInvoiceDate;
  qryGenerateInvoiceNo.ParamByName('DEPT_CODE').AsInteger:= ADeptCode;
  qryGenerateInvoiceNo.ParamByName('INVOICE_TYPE_CODE').AsInteger:= AInvoiceTypeCode;
  qryGenerateInvoiceNo.ParamByName('IS_PROFORM_INVOICE').AsInteger:= Ord(AIsProformInvoice);
  qryGenerateInvoiceNo.ParamByName('CURRENCY_CODE').Value:= IntToVar(ACurrencyCode);
  qryGenerateInvoiceNo.ParamByName('IS_APPROVED').AsInteger:= Ord(AIsApproved);
  qryGenerateInvoiceNo.ParamByName('READ_ONLY').AsInteger:= Ord(AReadOnly);
  qryGenerateInvoiceNo.ParamByName('OLD_INVOICE_NO_GENERATOR_CODE').AsInteger:= OldInvoiceNoGeneratorCode;

  qryGenerateInvoiceNo.ExecSQL;

  if (qryGenerateInvoiceNo.ParamByName('INVOICE_NO_GENERATOR_CODE').AsFloat <> OldInvoiceNoGeneratorCode) then
    Result:= qryGenerateInvoiceNo.ParamByName('INVOICE_NO').AsFloat
  else
    Result:= OldInvoiceNo;
end;

function TdmInvoices.GetNewInvoiceCode: Integer;
begin
  with qryGetNewInvoiceCode do
    begin
      Open;
      try
        Result:= FieldByName('NEW_INVOICE_CODE').AsInteger;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

procedure TdmInvoices.prvInvoiceBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);

  procedure SetInvoiceNo;
  begin
    with DeltaDS do
      FieldByName('INVOICE_NO').NewValue:=
        InternalGenerateInvoiceNo(
          GetFieldValue(FieldByName('INVOICE_DATE')),
          LoginContext.CurrentDeptCode,
          GetFieldValue(FieldByName('INVOICE_TYPE_CODE')),
          VarAsType(GetFieldValue(FieldByName('IS_PROFORM_INVOICE')), varBoolean),
          GetFieldValue(FieldByName('CURRENCY_CODE')),
          not VarIsNullOrEmpty(GetFieldValue(FieldByName('APPROVE_EMPLOYEE_CODE'))),
          VarToInt(FieldByName('INVOICE_NO_GENERATOR_CODE').OldValue),
          VarToInt(FieldByName('INVOICE_NO').OldValue),
          False
        );
  end;

var
  cDate, cTime: TDateTime;
  i: Integer;
begin
  inherited;

  with DeltaDS do
    if (SourceDS = qryInvoice) then
      begin
        cDate:= ContextDate;
        cTime:= ContextTime;

        FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
        FieldByName('CHANGE_DATE').NewValue:= cDate;
        FieldByName('CHANGE_TIME').NewValue:= cTime;

        if not VarIsNullOrEmpty(FieldByName('STORNO_EMPLOYEE_CODE').OldValue) and
           not VarIsNullOrEmpty(FieldByName('STORNO_EMPLOYEE_CODE').Value) and
           (FieldByName('STORNO_EMPLOYEE_CODE').OldValue <>
            FieldByName('STORNO_EMPLOYEE_CODE').Value) then
          begin
            FieldByName('STORNO_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
            FieldByName('STORNO_DATE').NewValue:= cDate;
            FieldByName('STORNO_TIME').NewValue:= cTime;
          end;

        if (UpdateKind = ukInsert) then
          begin
            if (FieldByName('INVOICE_TYPE_CODE').AsInteger in [itProtokol, itKorigirashtProtokol]) then
              FieldByName('SELLER_OR_BUYER_CODE').NewValue:= 0
            else
              FieldByName('SELLER_OR_BUYER_CODE').NewValue:= FieldByName('SELLER_COMPANY_CODE').AsInteger;

            FieldByName('INVOICE_BRANCH_CODE').NewValue:= LoginContext.LocalBranchCode;
            FieldByName('INVOICE_CODE').NewValue:= GetNewInvoiceCode;

            FieldByName('INVOICE_RANGE_VERSION_NO').NewValue:= 2;
            case GetFieldValue(FieldByName('INVOICE_TYPE_CODE')) of
              itFaktura, itDebitnoIzvestie, itKreditnoIzvestie:
                FieldByName('INVOICE_RANGE_TYPE_VERSION_NO').NewValue:= 1;
              itProtokol, itKorigirashtProtokol:
                FieldByName('INVOICE_RANGE_TYPE_VERSION_NO').NewValue:= 2;
              itOtchetZaProdajbite:
                FieldByName('INVOICE_RANGE_TYPE_VERSION_NO').NewValue:= 3;
            end;

            if ( (FieldByName('SELLER_COMPANY_CODE').AsInteger = 0) or
                 (FieldByName('INVOICE_TYPE_CODE').AsInteger in [itProtokol, itKorigirashtProtokol]) ) and
               not FManualInvoiceNoInvoked then
              SetInvoiceNo;

            try
              qryGetInvoiceNoInterval.Open;

              if (FieldByName('SELLER_COMPANY_CODE').AsInteger = 0) and
                 (FieldByName('INVOICE_NO').AsInteger >= qryGetInvoiceNoIntervalMIN_RANGE_INVOICE_NO.AsInteger) and
                 (FieldByName('INVOICE_NO').AsInteger <= qryGetInvoiceNoIntervalMAX_RANGE_INVOICE_NO.AsInteger) then
                with qryGetLastInvoiceDate do
                  begin
                    SetParams(Params, DeltaDS);
                    Open;
                    try
                      if (qryGetLastInvoiceDateINVOICE_DATE.AsDateTime > GetFieldValue(DeltaDS.FieldByName('INVOICE_DATE'))) then
                        raise Exception.Create(SInvalidInvoiceNoId);
                    finally
                      Close;
                    end;
                  end;

            finally
              qryGetInvoiceNoInterval.Close;
            end;  { try }

            FieldByName('CREATE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
            FieldByName('CREATE_DATE').NewValue:= cDate;
            FieldByName('CREATE_TIME').NewValue:= cTime;
          end;

        if (UpdateKind = ukModify) and
           (GetFieldValue(DeltaDS.FieldByName('INVOICE_NO')) <> FieldByName('INVOICE_NO').OldValue) then
          SetInvoiceNo;
      end
    else
      if (SourceDS = qryInvoiceItems) then
        begin
          // ako sa barani samo poleta, deto ne sa za update, generira greshen update sql 
          Applied:= True;
          for i:= 0 to FieldCount-1 do
            if (pfInUpdate in Fields[i].ProviderFlags) and
                not VarIsEmpty(Fields[i].NewValue) then
              begin
                Applied:= False;
                Break;
              end;

          if (UpdateKind = ukInsert) then
            begin
              FieldByName('BRANCH_CODE').NewValue:=
                DataSetField.DataSet.FieldByName('INVOICE_BRANCH_CODE').Value;
              FieldByName('INVOICE_CODE').NewValue:=
                DataSetField.DataSet.FieldByName('INVOICE_CODE').Value;
            end;
        end;
end;

procedure TdmInvoices.prvInvoiceNoGeneratorBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin

  Applied:=
    (SourceDS = qryINGNotInvoiceTypes) or
    (SourceDS = qryINGNotCurrencies);

  if (UpdateKind = ukInsert) and (SourceDS = qryInvoiceNoGenerator) then
    DeltaDS.FieldByName('INVOICE_NO_GENERATOR_CODE').NewValue:= NewInvoiceNoGeneratorCode;

  if (UpdateKind = ukInsert) and
     ( (SourceDS = qryINGInvoiceTypes) or
       (SourceDS = qryINGCurrencies) ) then
    DeltaDS.FieldByName('INVOICE_NO_GENERATOR_CODE').NewValue:=
      GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('INVOICE_NO_GENERATOR_CODE'));

  if not Applied then
   FInvoiceNoGeneratorCode:= GetFieldValue(DeltaDS.FieldByName('INVOICE_NO_GENERATOR_CODE'));
end;

function TdmInvoices.TotalInvoicePrice(IsProformInvoice: Boolean;
  InvoiceNo, SellerCompanyCode: Integer): OleVariant;
begin
  with qryTotalInvoicePrice do
    begin
      Params.ParamByName('IS_PROFORM_INVOICE').Value:= IsProformInvoice;
      Params.ParamByName('INVOICE_NO').Value:= InvoiceNo;
      Params.ParamByName('SELLER_COMPANY_CODE').Value:= SellerCompanyCode;
      Open;
      try
        Result:= FieldByName('SUM_TOTAL_PRICE').AsVariant;
      finally
        Close;
      end;  { try }
    end;
end;

function TdmInvoices.GetNewInvoiceNo(IsProformInvoice: Boolean; InvoiceTypeCode: Integer): Integer;
begin
  with qryGetMaxInvoiceNo do
    begin
      Params.ParamByName('IS_PROFORM_INVOICE').Value:= IfThen(IsProformInvoice, Integer(1), Integer(0));
      Params.ParamByName('INVOICE_BRANCH_CODE').Value:= LoginContext.LocalBranchCode;
      Params.ParamByName('INVOICE_TYPE_CODE').Value:= InvoiceTypeCode;
      Open;
      try
        {
        if FieldByName('MAX_INVOICE_NO').IsNull then
          begin
            Result:= -1;  // tova e samo da ne dava warning kompilatora
            raise Exception.Create(SInvoiceRangeExhaustedId);
          end;
        }
        Result:= FieldByName('MAX_INVOICE_NO').AsInteger + 1;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmInvoices.NewInvoiceNoGeneratorCode: Integer;
begin
  qryNewInvoiceNoGeneratorCode.Open;
  try
    Result:= qryNewInvoiceNoGeneratorCodeNEW_INVOICE_NO_GENERATOR_CODE.AsInteger;
  finally
    qryNewInvoiceNoGeneratorCode.Close;
  end;
end;

procedure TdmInvoices.prvInvoiceUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;

  if (Response <> rrAbort) and not FManualInvoiceNoInvoked and
     (DataSet.FindField('IS_PROFORM_INVOICE') <> nil) then
    begin
      ApplyRetry(E, Response);

      with DataSet do
        FieldByName('INVOICE_NO').NewValue:=
          InternalGenerateInvoiceNo(
            GetFieldValue(FieldByName('INVOICE_DATE')),
            LoginContext.CurrentDeptCode,
            GetFieldValue(FieldByName('INVOICE_TYPE_CODE')),
            VarAsType(GetFieldValue(FieldByName('IS_PROFORM_INVOICE')), varBoolean),
            GetFieldValue(FieldByName('CURRENCY_CODE')),
            not VarIsNullOrEmpty(GetFieldValue(FieldByName('APPROVE_EMPLOYEE_CODE'))),
            VarToInt(FieldByName('INVOICE_NO_GENERATOR_CODE').OldValue),
            VarToInt(FieldByName('INVOICE_NO').OldValue),
            False
          );

      Response:= rrApply;
    end
  else
    Response:= rrAbort;
end;

procedure TdmInvoices.CheckInvoiceSaleShipments(AInvoiceBranchCode, AInvoiceCode: Integer);
begin
  qryInconsistentSaleShipments.Params.ParamByName('INVOICE_BRANCH_CODE').AsInteger:= AInvoiceBranchCode;
  qryInconsistentSaleShipments.Params.ParamByName('INVOICE_CODE').AsInteger:= AInvoiceCode;
  qryInconsistentSaleShipments.TempOpen/
    procedure begin
      if not qryInconsistentSaleShipments.IsEmpty then
        raise Exception.CreateFmt(
          SInvoiceInconsistentSSHId + '(ShipmentIdentifier:s=%s)',
          [qryInconsistentSaleShipmentsPROCESS_OBJECT_IDENTIFIER.AsString]);
    end;  { lambda }
end;

procedure TdmInvoices.UpdateInvoiceSaleShipments(AInvoiceBranchCode, AInvoiceCode: Integer);
begin
  qryUpdateInvoiceSaleShipments.Params.ParamByName('INVOICE_BRANCH_CODE').AsInteger:= AInvoiceBranchCode;
  qryUpdateInvoiceSaleShipments.Params.ParamByName('INVOICE_CODE').AsInteger:= AInvoiceCode;
  qryUpdateInvoiceSaleShipments.ExecSQL;
end;

procedure TdmInvoices.qryInvoiceAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmInvoices.qryInvoiceBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryInvoice.ParamByName('CURRENT_DEPT_CODE').AsInteger:= LoginContext.CurrentDeptCode;
end;

procedure TdmInvoices.qryInvoiceBeforeProviderEndTransaction(DataSet: TDataSet; Commit: Boolean);
begin
  inherited;
  try
    if Commit and (FInvoiceBranchCode <> 0) and (FInvoiceCode <> 0) then
      begin
        CheckInvoiceSaleShipments(FInvoiceBranchCode, FInvoiceCode);
        UpdateInvoiceSaleShipments(FInvoiceBranchCode, FInvoiceCode);
      end;  { if }
  finally
    FInvoiceBranchCode:= 0;
    FInvoiceCode:= 0;
  end;  { try }
end;

procedure TdmInvoices.qryInvoiceNoGeneratorBeforeProviderEndTransaction(
  DataSet: TDataSet; Commit: Boolean);
begin
  inherited;

  if Commit then
    begin
      qryCheckInvoiceNoGenerator.ParamByName('INVOICE_NO_GENERATOR_CODE').AsInteger:= FInvoiceNoGeneratorCode;
      qryCheckInvoiceNoGenerator.ExecSQL;
    end;
end;

procedure TdmInvoices.prvInvoiceAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmInvoices.prvInvoiceAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
begin
  inherited;
  if (SourceDS = qryInvoice) and
     (not VarIsNullOrEmpty(DeltaDS.FieldByName('APPROVE_EMPLOYEE_CODE').NewValue)) and
     ((UpdateKind = ukInsert) or VarIsNullOrEmpty(DeltaDS.FieldByName('APPROVE_EMPLOYEE_CODE').OldValue)) then
    begin
      FInvoiceBranchCode:= GetFieldValue(DeltaDS.FieldByName('INVOICE_BRANCH_CODE'));
      FInvoiceCode:= GetFieldValue(DeltaDS.FieldByName('INVOICE_CODE'));
    end;  { if }
end;

procedure TdmInvoices.prvInvoiceBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FManualInvoiceNoInvoked:= OwnerData[0];
  FInvoiceBranchCode:= 0;
  FInvoiceCode:= 0;
  FDocsDelta:= OwnerData[1];
end;

initialization
  TdmInvoicesProxy.FSingleton:= TdmInvoicesProxy.Create(TdmInvoices);

finalization
  FreeAndNil(TdmInvoicesProxy.FSingleton);
end.
