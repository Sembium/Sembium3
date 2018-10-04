//
// Created by the DataSnap proxy generator.
// 4.10.2018 13:33:37
//

unit uClientProxies;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect, StrUtils, AbmesDatasnapClientProxy;

type
  TdmCommonProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetSecondaryCurrencyFixingCommand: TDBXCommand;
    FGetBaseCurrencyFixingCommand: TDBXCommand;
    FAreAllTodayCurrencyRatesEnteredCommand: TDBXCommand;
    FGetNomItemDataCommand: TDBXCommand;
    FGetMinAndMaxPriorityNoCodesCommand: TDBXCommand;
    FMoneyToTextCommand: TDBXCommand;
    FMoneyToLocalTextCommand: TDBXCommand;
    FGetActivityNoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetSecondaryCurrencyFixing(ACurrencyCode: Integer; ADate: TDateTime): Double;
    function GetBaseCurrencyFixing(ACurrencyCode: Integer; ADate: TDateTime): Double;
    function AreAllTodayCurrencyRatesEntered: Boolean;
    procedure GetNomItemData(ANomCode: Integer; ANomItemCode: Integer; out NomItemName: string; out NomItemDescription: string; out DocBranchCode: Integer; out DocCode: Integer; out HasDocItems: Boolean);
    procedure GetMinAndMaxPriorityNoCodes(out MinPriorityNoCode: Integer; out MaxPriorityNoCode: Integer);
    function MoneyToText(AAmount: Double; ACurrencyCode: Integer; ASystemLocaleCode: Integer): string;
    function MoneyToLocalText(AAmount: Double; ACurrencyCode: Integer): string;
    function GetActivityNo(AActivityCode: Integer): Integer;
  end;

  TdmCompaniesProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetCompanyInfoCommand: TDBXCommand;
    FGetCompanyRolesInfoCommand: TDBXCommand;
    FParRelExistsCommand: TDBXCommand;
    FGetNewCompanyTypeCodeCommand: TDBXCommand;
    FGetNewPRPerPriceModifierCodeCommand: TDBXCommand;
    FGetFinPartnerCommand: TDBXCommand;
    FGetParRelPartnerOfficeAddressCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure GetCompanyInfo(CompanyCode: Integer; out CompanyFullName: string; out City: string; out Address: string; out TaxNo: string; out BulstatNo: string; out CountryAbbrev: string; out MediatorCompanyCode: string; out CompanyShortName: string; out Bulstat: string; out BulstatEx: string; out IsPerson: Boolean; out FirstName: string; out MiddleName: string; out LastName: string; out EGN: string; out CompanyNo: Integer; out VatRegistered: Boolean; out VatNo: string; out ICompanyFullName: string; out ICompanyShortName: string; out IFirstName: string; out IMiddleName: string; out ILastName: string; out ICity: string; out IAddress: string);
    procedure GetCompanyRolesInfo(CompanyCode: Integer; out IsClient: Boolean; out ClientPriorityCode: Integer; out IsMediator: Boolean; out MediatorPriorityCode: Integer; out IsVendor: Boolean; out VendorPriorityCode: Integer; out IsGovernmentOrganization: Boolean; out GovOrgPriorityCode: Integer; out IsBank: Boolean; out BankPriorityCode: Integer; out IsWorker: Boolean; out WorkerPriorityCode: Integer);
    function ParRelExists(PartnerCode: Integer; BorderRelTypeCode: Integer): Boolean;
    function GetNewCompanyTypeCode: Integer;
    function GetNewPRPerPriceModifierCode: Integer;
    function GetFinPartner(PartnerCode: Integer; BorderRelTypeCode: Integer; BeginDate: TDateTime; EndDate: TDateTime): OleVariant;
    procedure GetParRelPartnerOfficeAddress(PartnerCode: Integer; BorderRelTypeCode: Integer; ToDate: TDateTime; out Address: string; out IAddress: string);
  end;

  TdmCompanyProxyClient = class(TAbmesDatasnapClientProxy)
  private
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
  end;

  TdmDeficitProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetLastPSDDateCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetLastPSDDate: TDateTime;
  end;

  TdmDeliveriesProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FRPDCanAnnulCommand: TDBXCommand;
    FRPDCanCloseCommand: TDBXCommand;
    FDeliveryCanAnnulCommand: TDBXCommand;
    FGetNewDeliveryProjectCodeCommand: TDBXCommand;
    FGetNewDeficitCoverDecisionCodeCommand: TDBXCommand;
    FGetNewDeliveryDecisionCodeCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function RPDCanAnnul(DCDObjectBranchCode: Integer; DCDObjectCode: Integer): Boolean;
    function RPDCanClose(DCDObjectBranchCode: Integer; DCDObjectCode: Integer): Boolean;
    function DeliveryCanAnnul(DeliveryObjectBranchCode: Integer; DeliveryObjectCode: Integer): Boolean;
    function GetNewDeliveryProjectCode(DCDObjectBranchCode: Integer; DCDObjectCode: Integer): Integer;
    function GetNewDeficitCoverDecisionCode(BranchCode: Integer): Integer;
    function GetNewDeliveryDecisionCode: Integer;
  end;

  TdmDeptsTreeProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetDeptDataCommand: TDBXCommand;
    FGetDeptIDCommand: TDBXCommand;
    FIsDeptStoreCommand: TDBXCommand;
    FGetDeptDocCommand: TDBXCommand;
    FCheckDeptRelationCommand: TDBXCommand;
    FGetStoreFullNameCommand: TDBXCommand;
    FGetDeptNameAndDocCommand: TDBXCommand;
    FGetDeptPricesCommand: TDBXCommand;
    FGetDeptPeriodDataCommand: TDBXCommand;
    FGetDeptBranchCodeCommand: TDBXCommand;
    FGetNodeDataCommand: TDBXCommand;
    FIsInstanceCommand: TDBXCommand;
    FIsDescendantOfCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure GetDeptData(ANodeID: Integer; out NodeName: string; out DeptIdentifier: string; out DeptIsStore: Boolean; out ProductCode: Integer; out ParentNodeID: Integer; out IsRecurrent: Boolean; out BeginDate: TDateTime; out EndDate: TDateTime; out IsExternal: Boolean; out DeptIsFinStore: Boolean; out HasDocumentation: Boolean);
    function GetDeptID(DeptIdentifier: string): Integer;
    function IsDeptStore(ADeptCode: Integer): Boolean;
    procedure GetDeptDoc(DeptCode: Integer; out DocBranchCode: Integer; out DocCode: Integer);
    function CheckDeptRelation(NewDeptCode: Integer; OldDeptCode: Integer): Integer;
    function GetStoreFullName(StoreCode: Integer): string;
    procedure GetDeptNameAndDoc(DeptCode: Integer; out DeptName: string; out DeptNo: string; out DocBranchCode: Integer; out DocCode: Integer; out HasDocumentation: Boolean);
    procedure GetDeptPrices(DeptCode: Integer; PricesDate: TDateTime; out HourPrice: Double; out MaintainanceHourPrice: Double; out ParallelProcessCount: Double; out ParallelOperatorCount: Double);
    procedure GetDeptPeriodData(DeptCode: Integer; ADate: TDateTime; out ParallelProcessCount: Integer);
    function GetDeptBranchCode(ADeptCode: Integer): Integer;
    procedure GetNodeData(ANodeID: Integer; out NodeName: string; out NodeNo: Double);
    function IsInstance(NodeID: Integer): Boolean;
    function IsDescendantOf(NodeID: Integer; RootID: Integer): Boolean;
  end;

  TdmDeptsTreeEditorProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetDeptDataCommand: TDBXCommand;
    FGetDeptIDCommand: TDBXCommand;
    FIsDeptStoreCommand: TDBXCommand;
    FGetDeptDocCommand: TDBXCommand;
    FCheckDeptRelationCommand: TDBXCommand;
    FGetStoreFullNameCommand: TDBXCommand;
    FGetDeptNameAndDocCommand: TDBXCommand;
    FGetDeptPricesCommand: TDBXCommand;
    FGetDeptPeriodDataCommand: TDBXCommand;
    FGetDeptBranchCodeCommand: TDBXCommand;
    FGetNodeDataCommand: TDBXCommand;
    FIsInstanceCommand: TDBXCommand;
    FIsDescendantOfCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure GetDeptData(ANodeID: Integer; out NodeName: string; out DeptIdentifier: string; out DeptIsStore: Boolean; out ProductCode: Integer; out ParentNodeID: Integer; out IsRecurrent: Boolean; out BeginDate: TDateTime; out EndDate: TDateTime; out IsExternal: Boolean; out DeptIsFinStore: Boolean; out HasDocumentation: Boolean);
    function GetDeptID(DeptIdentifier: string): Integer;
    function IsDeptStore(ADeptCode: Integer): Boolean;
    procedure GetDeptDoc(DeptCode: Integer; out DocBranchCode: Integer; out DocCode: Integer);
    function CheckDeptRelation(NewDeptCode: Integer; OldDeptCode: Integer): Integer;
    function GetStoreFullName(StoreCode: Integer): string;
    procedure GetDeptNameAndDoc(DeptCode: Integer; out DeptName: string; out DeptNo: string; out DocBranchCode: Integer; out DocCode: Integer; out HasDocumentation: Boolean);
    procedure GetDeptPrices(DeptCode: Integer; PricesDate: TDateTime; out HourPrice: Double; out MaintainanceHourPrice: Double; out ParallelProcessCount: Double; out ParallelOperatorCount: Double);
    procedure GetDeptPeriodData(DeptCode: Integer; ADate: TDateTime; out ParallelProcessCount: Integer);
    function GetDeptBranchCode(ADeptCode: Integer): Integer;
    procedure GetNodeData(ANodeID: Integer; out NodeName: string; out NodeNo: Double);
    function IsInstance(NodeID: Integer): Boolean;
    function IsDescendantOf(NodeID: Integer; RootID: Integer): Boolean;
  end;

  TdmGroupSalesProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetNewSaleRequestNoCommand: TDBXCommand;
    FGetNewSaleNoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetNewSaleRequestNo(RequestBranchCode: Integer): Integer;
    function GetNewSaleNo(SaleBranchCode: Integer): Integer;
  end;

  TdmInvoicesProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FTotalInvoicePriceCommand: TDBXCommand;
    FGetNewInvoiceNoCommand: TDBXCommand;
    FGenerateInvoiceNoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function TotalInvoicePrice(IsProformInvoice: Boolean; InvoiceNo: Integer; SellerCompanyCode: Integer): OleVariant;
    function GetNewInvoiceNo(IsProformInvoice: Boolean; InvoiceTypeCode: Integer): Integer;
    function GenerateInvoiceNo(InvoiceDate: TDateTime; DeptCode: Integer; InvoiceTypeCode: Integer; IsProformInvoice: Boolean; CurrencyCode: Integer; IsApproved: Boolean; OldInvoiceNoGeneratorCode: Integer; OldInvoiceNo: Double): Double;
  end;

  TdmLoginProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FResetUserToolbarsCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure ResetUserToolbars(EmployeeCode: Integer; CrossStateCode: Integer);
  end;

  TdmProductsTreeProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetProductDefaultStoreCommand: TDBXCommand;
    FGetCompanyProductNameCommand: TDBXCommand;
    FGetProductDataCommand: TDBXCommand;
    FGetProductDocCommand: TDBXCommand;
    FCheckProductRelationCommand: TDBXCommand;
    FGetProductParamCommand: TDBXCommand;
    FGetProductNameAndDocCommand: TDBXCommand;
    FGetProductSaleAcquireSinglePriceCommand: TDBXCommand;
    FProductBorderRelExistsCommand: TDBXCommand;
    FGetProductPricesCommand: TDBXCommand;
    FGetProductCodeCommand: TDBXCommand;
    FGetCommonProductCodeCommand: TDBXCommand;
    FGetThoroughlyEngineeredProductCodeCommand: TDBXCommand;
    FGetProductDeptOptionsTopDeptCodeCommand: TDBXCommand;
    FGetNodeDataCommand: TDBXCommand;
    FIsInstanceCommand: TDBXCommand;
    FIsDescendantOfCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetProductDefaultStore(ProductCode: Integer; DeptCode: Integer): Integer;
    function GetCompanyProductName(CompanyCode: Integer; ProductCode: Integer): string;
    procedure GetProductData(ANodeID: Integer; out NodeName: string; out NodeNo: Double; out WorkMeasureCode: Integer; out AccountMeasureCode: Integer; out AccountMeasureCoef: Double; out TechMeasureCode: Integer; out TechMeasureCoef: Double; out EstimatedSecondaryPrice: Double; out MarketSecondaryPrice: Double; out IsVatFree: Boolean; out HasDocumentation: Boolean; out TransportMeasureCode: Integer; out TransportMeasureCoef: Double; out SelfExistentStatusCode: Integer; out IsGroup: Boolean; out TransientStatusCode: Integer; out WorkdaysToExist: Integer; out ParentNodeID: Integer; out IsInactive: Boolean; out IsSelfApproved: Boolean; out SaleLeaseSecondaryPrice: Double; out SaleLeaseDateUnitCode: Integer; out ProductSpecRequirementCode: Integer; out BOIOrderTypeCode: Integer; out CommonStatusCode: Integer; out HasSpec: Boolean);
    procedure GetProductDoc(ProductCode: Integer; out DocBranchCode: Integer; out DocCode: Integer);
    function CheckProductRelation(NewProductCode: Integer; OldProductCode: Integer): Integer;
    procedure GetProductParam(AProductCode: Integer; AParamCode: Integer; out ParamName: string; out ParamAbbrev: string; out ParamOrderNo: Integer; out ValueType: Integer; out NomCode: Integer; out DocBranchCode: Integer; out DocCode: Integer; out HasDocItems: Boolean; out NomDocBranchCode: Integer; out NomDocCode: Integer; out NomHasDocItems: Boolean);
    procedure GetProductNameAndDoc(ProductCode: Integer; out ProductName: string; out ProductNo: Double; out DocBranchCode: Integer; out DocCode: Integer; out HasDocumentation: Boolean);
    function GetProductSaleAcquireSinglePrice(ProductCode: Integer; InCurrencyCode: Integer; ToDate: TDateTime; ClientCode: Integer): OleVariant;
    function ProductBorderRelExists(ProductCode: Integer; BorderRelTypeCode: Integer): Boolean;
    procedure GetProductPrices(ProductCode: Integer; PricesDate: TDateTime; out EstimatedSecondaryPrice: Double; out MarketSecondaryPrice: Double; out InvestmentValue2: Double; out InvestmentValue3: Double; out InvestmentValue4: Double; out InvestmentValue5: Double; out PrecisionLevelCode: Double);
    function GetProductCode(AProductNo: Double; AProductClass: Integer): Integer;
    function GetCommonProductCode(ProductCode: Integer): Integer;
    function GetThoroughlyEngineeredProductCode(ProductCode: Integer): Integer;
    function GetProductDeptOptionsTopDeptCode(AProductCode: Integer): Integer;
    procedure GetNodeData(ANodeID: Integer; out NodeName: string; out NodeNo: Double);
    function IsInstance(NodeID: Integer): Boolean;
    function IsDescendantOf(NodeID: Integer; RootID: Integer): Boolean;
  end;

  TdmProductQuantitiesTreeProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetProductDefaultStoreCommand: TDBXCommand;
    FGetCompanyProductNameCommand: TDBXCommand;
    FGetProductDataCommand: TDBXCommand;
    FGetProductDocCommand: TDBXCommand;
    FCheckProductRelationCommand: TDBXCommand;
    FGetProductParamCommand: TDBXCommand;
    FGetProductNameAndDocCommand: TDBXCommand;
    FGetProductSaleAcquireSinglePriceCommand: TDBXCommand;
    FProductBorderRelExistsCommand: TDBXCommand;
    FGetProductPricesCommand: TDBXCommand;
    FGetProductCodeCommand: TDBXCommand;
    FGetCommonProductCodeCommand: TDBXCommand;
    FGetThoroughlyEngineeredProductCodeCommand: TDBXCommand;
    FGetProductDeptOptionsTopDeptCodeCommand: TDBXCommand;
    FGetNodeDataCommand: TDBXCommand;
    FIsInstanceCommand: TDBXCommand;
    FIsDescendantOfCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetProductDefaultStore(ProductCode: Integer; DeptCode: Integer): Integer;
    function GetCompanyProductName(CompanyCode: Integer; ProductCode: Integer): string;
    procedure GetProductData(ANodeID: Integer; out NodeName: string; out NodeNo: Double; out WorkMeasureCode: Integer; out AccountMeasureCode: Integer; out AccountMeasureCoef: Double; out TechMeasureCode: Integer; out TechMeasureCoef: Double; out EstimatedSecondaryPrice: Double; out MarketSecondaryPrice: Double; out IsVatFree: Boolean; out HasDocumentation: Boolean; out TransportMeasureCode: Integer; out TransportMeasureCoef: Double; out SelfExistentStatusCode: Integer; out IsGroup: Boolean; out TransientStatusCode: Integer; out WorkdaysToExist: Integer; out ParentNodeID: Integer; out IsInactive: Boolean; out IsSelfApproved: Boolean; out SaleLeaseSecondaryPrice: Double; out SaleLeaseDateUnitCode: Integer; out ProductSpecRequirementCode: Integer; out BOIOrderTypeCode: Integer; out CommonStatusCode: Integer; out HasSpec: Boolean);
    procedure GetProductDoc(ProductCode: Integer; out DocBranchCode: Integer; out DocCode: Integer);
    function CheckProductRelation(NewProductCode: Integer; OldProductCode: Integer): Integer;
    procedure GetProductParam(AProductCode: Integer; AParamCode: Integer; out ParamName: string; out ParamAbbrev: string; out ParamOrderNo: Integer; out ValueType: Integer; out NomCode: Integer; out DocBranchCode: Integer; out DocCode: Integer; out HasDocItems: Boolean; out NomDocBranchCode: Integer; out NomDocCode: Integer; out NomHasDocItems: Boolean);
    procedure GetProductNameAndDoc(ProductCode: Integer; out ProductName: string; out ProductNo: Double; out DocBranchCode: Integer; out DocCode: Integer; out HasDocumentation: Boolean);
    function GetProductSaleAcquireSinglePrice(ProductCode: Integer; InCurrencyCode: Integer; ToDate: TDateTime; ClientCode: Integer): OleVariant;
    function ProductBorderRelExists(ProductCode: Integer; BorderRelTypeCode: Integer): Boolean;
    procedure GetProductPrices(ProductCode: Integer; PricesDate: TDateTime; out EstimatedSecondaryPrice: Double; out MarketSecondaryPrice: Double; out InvestmentValue2: Double; out InvestmentValue3: Double; out InvestmentValue4: Double; out InvestmentValue5: Double; out PrecisionLevelCode: Double);
    function GetProductCode(AProductNo: Double; AProductClass: Integer): Integer;
    function GetCommonProductCode(ProductCode: Integer): Integer;
    function GetThoroughlyEngineeredProductCode(ProductCode: Integer): Integer;
    function GetProductDeptOptionsTopDeptCode(AProductCode: Integer): Integer;
    procedure GetNodeData(ANodeID: Integer; out NodeName: string; out NodeNo: Double);
    function IsInstance(NodeID: Integer): Boolean;
    function IsDescendantOf(NodeID: Integer; RootID: Integer): Boolean;
  end;

  TdmProductsTreeEditorProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetNewProductSetCodeCommand: TDBXCommand;
    FGetNewProductNoCommand: TDBXCommand;
    FGetNodeDataCommand: TDBXCommand;
    FIsInstanceCommand: TDBXCommand;
    FIsDescendantOfCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetNewProductSetCode: Integer;
    function GetNewProductNo(AParentCode: Integer): Double;
    procedure GetNodeData(ANodeID: Integer; out NodeName: string; out NodeNo: Double);
    function IsInstance(NodeID: Integer): Boolean;
    function IsDescendantOf(NodeID: Integer; RootID: Integer): Boolean;
  end;

  TdmSaleOrdersProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetNewRequestNoCommand: TDBXCommand;
    FGetNewRequestLineNoCommand: TDBXCommand;
    FGetNewSaleNoCommand: TDBXCommand;
    FCanAnnulSRGCommand: TDBXCommand;
    FCanFinishSRGCommand: TDBXCommand;
    FGetNewSaleDecisionTypeCodeCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetNewRequestNo(RequestBranchCode: Integer): Integer;
    function GetNewRequestLineNo(RequestBranchCode: Integer; RequestNo: Integer): Integer;
    function GetNewSaleNo(SaleBranchCode: Integer): Integer;
    function CanAnnulSRG(RequestBranchCode: Integer; RequestNo: Integer): Boolean;
    function CanFinishSRG(RequestBranchCode: Integer; RequestNo: Integer): Boolean;
    function GetNewSaleDecisionTypeCode: Integer;
  end;

  TdmParRelProductsProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FParRelProductExistsCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function ParRelProductExists(PartnerCode: Integer; BorderRelTypeCode: Integer; ProductCode: Integer): Boolean;
  end;

  TdmSalesProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetNewSaleNoCommand: TDBXCommand;
    FQuickSaleCanAnnulCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetNewSaleNo(SaleBranchCode: Integer): Integer;
    function QuickSaleCanAnnul(SaleObjectBranchCode: Integer; SaleObjectCode: Integer): Boolean;
  end;

  TdmSalesCommonProxyClient = class(TAbmesDatasnapClientProxy)
  private
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
  end;

  TdmSpecificationsProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FSpecificationExistsCommand: TDBXCommand;
    FSpecificationVersionCommand: TDBXCommand;
    FUpdateSpecificationsImportedCommand: TDBXCommand;
    FReplaceProductCommand: TDBXCommand;
    FSpecInsertionsCountCommand: TDBXCommand;
    FGetSpecTypeCommand: TDBXCommand;
    FDeleteSpecificationCommand: TDBXCommand;
    FGetSpecDepthCommand: TDBXCommand;
    FGetProductInlineModelCountCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function SpecificationExists(SpecProductCode: Integer; out Authorized: Boolean; out AuthorEmployeeCode: Integer): Boolean;
    function SpecificationVersion(SpecProductCode: Integer): Integer;
    procedure UpdateSpecificationsImported(SpecProductCode: Integer; HostSpecProductCode: Integer);
    function ReplaceProduct(Params: OleVariant): Integer;
    function SpecInsertionsCount(SpecProductCode: Integer): Integer;
    function GetSpecType(SpecProductCode: Integer): Integer;
    procedure DeleteSpecification(SpecProductCode: Integer);
    function GetSpecDepth(SpecProductCode: Integer): Integer;
    function GetProductInlineModelCount(AProductCode: Integer): Integer;
  end;

  TdmStoreProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FIsStoreComputerizedCommand: TDBXCommand;
    FGetNewStoreDealNoCommand: TDBXCommand;
    FVIMProductNodePropCommand: TDBXCommand;
    FCanAnnulPlannedStoreDealCommand: TDBXCommand;
    FGetBoundProcessIdentificationCommand: TDBXCommand;
    FGetModelProductAndSinglePriceCommand: TDBXCommand;
    FGetStoreDealOutDataCommand: TDBXCommand;
    FGetModelLineProductCommand: TDBXCommand;
    FGetModelLinePSDDeptCommand: TDBXCommand;
    FGetSaleShipmentProductCommand: TDBXCommand;
    FGetSaleManufactureQuantityCommand: TDBXCommand;
    FGetRFMLStoreDealDataCommand: TDBXCommand;
    FGetBOIOrderDataCommand: TDBXCommand;
    FGetDeliveryDataCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function IsStoreComputerized(AStoreCode: Integer): Boolean;
    function GetNewStoreDealNo(StoreCode: Integer; StoreDealDate: TDateTime; StoreDealTypeCode: Integer): Integer;
    function VIMProductNodeProp(ProductNodeCode: Integer; out AccountMeasureCoef: Double; out MeasureAbbrev: string; out AccountMeasureAbbrev: string): Boolean;
    function CanAnnulPlannedStoreDeal(PlannedStoreDealBranchCode: Integer; PlannedStoreDealCode: Integer): Boolean;
    function GetBoundProcessIdentification(StoreDealObjectBranchCode: Integer; StoreDealObjectCode: Integer; AProformAbbrev: string): string;
    procedure GetModelProductAndSinglePrice(SaleObjectBranchCode: Integer; SaleObjectCode: Integer; out ProductCode: Integer; out AccountSinglePrice: Double; out LastDeptCode: Integer);
    procedure GetStoreDealOutData(StoreDealObjectBranchCode: Integer; StoreDealObjectCode: Integer; out ProductCode: Integer; out SinglePrice: Double; out CurrencyCode: Integer);
    function GetModelLineProduct(MllObjectBranchCode: Integer; MllObjectCode: Integer): Integer;
    function GetModelLinePSDDept(AMllObjectBranchCode: Integer; AMllObjectCode: Integer): Integer;
    function GetSaleShipmentProduct(ShipmentObjectBranchCode: Integer; ShipmentObjectCode: Integer): Integer;
    function GetSaleManufactureQuantity(SaleObjectBranchCode: Integer; SaleObjectCode: Integer): Double;
    procedure GetRFMLStoreDealData(ABndProcessObjectBranchCode: Integer; ABndProcessObjectCode: Integer; out AProductCode: Integer);
    procedure GetBOIOrderData(BOIOrderObjectBranchCode: Integer; BOIOrderObjectCode: Integer; out ProductCode: Integer);
    procedure GetDeliveryData(DeliveryObjectBranchCode: Integer; DeliveryObjectCode: Integer; out ProductCode: Integer; out SinglePrice: Double; out CurrencyCode: Integer);
  end;

  TdmStoreRequestsProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetNewStoreRequestCodeCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetNewStoreRequestCode(StoreRequestBranchCode: Integer): Integer;
  end;

  TdmVIMProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetRounderCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure GetRounder(Value: Double; out Rounder: Double; out RounderName: string; out RounderAbbrev: string);
  end;

  TdmAdminProxyClient = class(TAbmesDatasnapClientProxy)
  private
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
  end;

  TdmSaleReportsProxyClient = class(TAbmesDatasnapClientProxy)
  private
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
  end;

  TdmModelMovementsProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetBoundMLObjectCommand: TDBXCommand;
    FGetMMCodeCommand: TDBXCommand;
    FGetBoundMLLObjectCommand: TDBXCommand;
    FGetMMDataByCodeCommand: TDBXCommand;
    FGetStageNoCommand: TDBXCommand;
    FGetDataByMLMSCodeCommand: TDBXCommand;
    FGetOMCodeCommand: TDBXCommand;
    FGetOmDataCommand: TDBXCommand;
    FGetMaxOperationWorkdayNoCommand: TDBXCommand;
    FGetOMNoCommand: TDBXCommand;
    FGetSpecialControlNeededCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure GetBoundMLObject(BoundType: Integer; BndObjectBranchCode: Integer; BndObjectNumber: Integer; out BndMLObjectBranchCode: Integer; out BndMLObjectCode: Integer; out IsNonActive: Integer; out IsOperationsModel: Boolean);
    function GetMMCode(MMBranchCode: Integer): Integer;
    procedure GetBoundMLLObject(BoundMLObjectBranchCode: Integer; BoundMLObjectCode: Integer; NoAsText: string; ForkNo: Integer; out BoundMLLObjectBranchCode: Integer; out BoundMLLObjectCode: Integer);
    procedure GetMMDataByCode(MMBranchCode: Integer; MMCode: Integer; out BoundType: Integer; out BoundBranch: Integer; out BoundNumber: Integer; out NoAsText: string; out ForkNo: Integer; out FromStageNo: Integer);
    procedure GetStageNo(MLMSObjectBranchCode: Integer; MLMSObjectCode: Integer; out MLLObjectBranchCode: Integer; out MLLObjectCode: Integer; out StageNo: Integer);
    procedure GetDataByMLMSCode(MLMSObjectBranchCode: Integer; MLMSObjectCode: Integer; out SaleBranchCode: Integer; out SaleNo: Integer; out MLLObjectBranchCode: Integer; out MLLObjectCode: Integer; out FromStageNo: Integer);
    function GetOMCode(OMBranchCode: Integer): Integer;
    procedure GetOmData(OmBranchCode: Integer; OmCode: Integer; out FromMlmsoObjectBranchCode: Integer; out FromMlmsoObjectCode: Integer; out OperationMovementTypeCode: Integer);
    function GetMaxOperationWorkdayNo(AMlmsObjectBranchCode: Integer; AMlmsObjectCode: Integer; AMlmsOperationNo: Integer): Integer;
    function GetOMNo: Integer;
    function GetSpecialControlNeeded(MlmsoObjectBranchCode: Integer; MlmsoObjectCode: Integer): Boolean;
  end;

  TdmModelChangesProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FRequestMultipleChangesCommand: TDBXCommand;
    FDoStoreMultipleChangeCommand: TDBXCommand;
    FGetLatestMllcTimestampCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure RequestMultipleChanges(MaterialListLines: OleVariant; OldProductCode: Integer; NewProductCode: Integer; OldStoreCode: Integer; NewStoreCode: Integer);
    procedure DoStoreMultipleChange(MaterialListLines: OleVariant; OldStoreCode: Integer; NewStoreCode: Integer);
    function GetLatestMllcTimestamp: TDateTime;
  end;

  TdmModelReportsProxyClient = class(TAbmesDatasnapClientProxy)
  private
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
  end;

  TdmNonDbUtilsProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FPingCommand: TDBXCommand;
    FResetPoolManagerCommand: TDBXCommand;
    FCloseConnectionsCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure Ping(IsActivePing: Boolean; PrevPingMilliseconds: Integer; out ServerDateTime: TDateTime; out CloseConnectionRequested: Boolean; out CloseConnectionMessage: string; out ServerDateTimeFormat: string; out IsMainConnectionConnected: Boolean; out IsServerLoginContextValid: Boolean);
    procedure ResetPoolManager(AObjClassName: string; AObjName: string);
    procedure CloseConnections(AConnectionIds: OleVariant; AMessage: string);
  end;

  TdmDocProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetNewDocCodeCommand: TDBXCommand;
    FGetStoredFileDataCommand: TDBXCommand;
    FGetDocItemTemplateStoredFileCommand: TDBXCommand;
    FGetStoredFileExtensionCommand: TDBXCommand;
    FGetDocItemCommand: TDBXCommand;
    FGetStoredFileExtensionCodeCommand: TDBXCommand;
    FGetFileExtensionFileDialogFilterCommand: TDBXCommand;
    FGetDocItemTypeFileDialogFilterCommand: TDBXCommand;
    FIsFileExtensionAllowedCommand: TDBXCommand;
    FGetDocItemStoredFileCommand: TDBXCommand;
    FGetStoredFileSizeCommand: TDBXCommand;
    FGetNewDocItemTypeCodeCommand: TDBXCommand;
    FGetDocumentDownloadURLCommand: TDBXCommand;
    FGetDocumentUploadInfoCommand: TDBXCommand;
    FGetDocItemTemplateContentStorageCommand: TDBXCommand;
    FCommitUploadCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetNewDocCode: Integer;
    function GetStoredFileData(AStoredFileBranchCode: Integer; AStoredFileCode: Integer): OleVariant;
    procedure GetDocItemTemplateStoredFile(ADocItemTemplateCode: Integer; out ResultStoredFileBranchCode: Integer; out ResultStoredFileCode: Integer);
    function GetStoredFileExtension(AStoredFileBranchCode: Integer; AStoredFileCode: Integer): string;
    procedure GetDocItem(DocBranchCode: Integer; DocCode: Integer; DocItemCode: Integer; out FileName: string; out RelativePath: string);
    function GetStoredFileExtensionCode(AStoredFileBranchCode: Integer; AStoredFileCode: Integer): Integer;
    function GetFileExtensionFileDialogFilter(AFileExtensionCode: Integer): string;
    function GetDocItemTypeFileDialogFilter(ADocItemTypeCode: Integer): string;
    function IsFileExtensionAllowed(AFileExtensionCode: Integer; ADocItemTypeCode: Integer): Boolean;
    procedure GetDocItemStoredFile(ADocBranchCode: Integer; ADocCode: Integer; ADocItemCode: Integer; out StoredFileBranchCode: Integer; out StoredFileCode: Integer);
    function GetStoredFileSize(AStoredFileBranchCode: Integer; AStoredFileCode: Integer): Integer;
    function GetNewDocItemTypeCode: Integer;
    function GetDocumentDownloadURL(AContentStorageLocatorURL: string; ADocumentID: string): string;
    function GetDocumentUploadInfo(AContentStorageLocatorURL: string; AExtention: string; AHash: string; ASize: Int64): string;
    procedure GetDocItemTemplateContentStorage(ADocItemTemplateCode: Integer; out DocumentID: string; out ContentStorageAddress: string);
    function CommitUpload(AContentStorageLocatorURL: string; AUploadID: string; MultiPartUploadResultHeaderValues: string): string;
  end;

  TdmFilterProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetFilterCodeByFormClassNameCommand: TDBXCommand;
    FGetModifyFilterVariantActivityCodeCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetFilterCodeByFormClassName(FilterFormClassName: string; FilterFormVariantCode: Integer): Integer;
    function GetModifyFilterVariantActivityCode(FilterFormClassName: string; FilterFormVariantCode: Integer): Integer;
  end;

  TdmProductionProductsTreeProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetProductDefaultStoreCommand: TDBXCommand;
    FGetCompanyProductNameCommand: TDBXCommand;
    FGetProductDataCommand: TDBXCommand;
    FGetProductDocCommand: TDBXCommand;
    FCheckProductRelationCommand: TDBXCommand;
    FGetProductParamCommand: TDBXCommand;
    FGetProductNameAndDocCommand: TDBXCommand;
    FGetProductSaleAcquireSinglePriceCommand: TDBXCommand;
    FProductBorderRelExistsCommand: TDBXCommand;
    FGetProductPricesCommand: TDBXCommand;
    FGetProductCodeCommand: TDBXCommand;
    FGetCommonProductCodeCommand: TDBXCommand;
    FGetThoroughlyEngineeredProductCodeCommand: TDBXCommand;
    FGetProductDeptOptionsTopDeptCodeCommand: TDBXCommand;
    FGetNodeDataCommand: TDBXCommand;
    FIsInstanceCommand: TDBXCommand;
    FIsDescendantOfCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetProductDefaultStore(ProductCode: Integer; DeptCode: Integer): Integer;
    function GetCompanyProductName(CompanyCode: Integer; ProductCode: Integer): string;
    procedure GetProductData(ANodeID: Integer; out NodeName: string; out NodeNo: Double; out WorkMeasureCode: Integer; out AccountMeasureCode: Integer; out AccountMeasureCoef: Double; out TechMeasureCode: Integer; out TechMeasureCoef: Double; out EstimatedSecondaryPrice: Double; out MarketSecondaryPrice: Double; out IsVatFree: Boolean; out HasDocumentation: Boolean; out TransportMeasureCode: Integer; out TransportMeasureCoef: Double; out SelfExistentStatusCode: Integer; out IsGroup: Boolean; out TransientStatusCode: Integer; out WorkdaysToExist: Integer; out ParentNodeID: Integer; out IsInactive: Boolean; out IsSelfApproved: Boolean; out SaleLeaseSecondaryPrice: Double; out SaleLeaseDateUnitCode: Integer; out ProductSpecRequirementCode: Integer; out BOIOrderTypeCode: Integer; out CommonStatusCode: Integer; out HasSpec: Boolean);
    procedure GetProductDoc(ProductCode: Integer; out DocBranchCode: Integer; out DocCode: Integer);
    function CheckProductRelation(NewProductCode: Integer; OldProductCode: Integer): Integer;
    procedure GetProductParam(AProductCode: Integer; AParamCode: Integer; out ParamName: string; out ParamAbbrev: string; out ParamOrderNo: Integer; out ValueType: Integer; out NomCode: Integer; out DocBranchCode: Integer; out DocCode: Integer; out HasDocItems: Boolean; out NomDocBranchCode: Integer; out NomDocCode: Integer; out NomHasDocItems: Boolean);
    procedure GetProductNameAndDoc(ProductCode: Integer; out ProductName: string; out ProductNo: Double; out DocBranchCode: Integer; out DocCode: Integer; out HasDocumentation: Boolean);
    function GetProductSaleAcquireSinglePrice(ProductCode: Integer; InCurrencyCode: Integer; ToDate: TDateTime; ClientCode: Integer): OleVariant;
    function ProductBorderRelExists(ProductCode: Integer; BorderRelTypeCode: Integer): Boolean;
    procedure GetProductPrices(ProductCode: Integer; PricesDate: TDateTime; out EstimatedSecondaryPrice: Double; out MarketSecondaryPrice: Double; out InvestmentValue2: Double; out InvestmentValue3: Double; out InvestmentValue4: Double; out InvestmentValue5: Double; out PrecisionLevelCode: Double);
    function GetProductCode(AProductNo: Double; AProductClass: Integer): Integer;
    function GetCommonProductCode(ProductCode: Integer): Integer;
    function GetThoroughlyEngineeredProductCode(ProductCode: Integer): Integer;
    function GetProductDeptOptionsTopDeptCode(AProductCode: Integer): Integer;
    procedure GetNodeData(ANodeID: Integer; out NodeName: string; out NodeNo: Double);
    function IsInstance(NodeID: Integer): Boolean;
    function IsDescendantOf(NodeID: Integer; RootID: Integer): Boolean;
  end;

  TdmNeedsProxyClient = class(TAbmesDatasnapClientProxy)
  private
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
  end;

  TdmExtensionsProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FAddEmployeeMovementCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure AddEmployeeMovement(EmployeeNo: Integer; InOut: Integer; MovementDateTime: TDateTime);
  end;

  TdmProductTreeNodeFilterProxyClient = class(TAbmesDatasnapClientProxy)
  private
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
  end;

  TdmParamProductTreeNodeFilterProxyClient = class(TAbmesDatasnapClientProxy)
  private
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
  end;

  TdmDeptTreeNodeFilterProxyClient = class(TAbmesDatasnapClientProxy)
  private
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
  end;

  TdmBaseGroupsProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FNewBaseGroupCodeCommand: TDBXCommand;
    FHasSMVSOperationsForDeptCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function NewBaseGroupCode: Integer;
    function HasSMVSOperationsForDept(ADeptCode: Integer): Boolean;
  end;

  TdmHumanResourceProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FTeamEarningsCommand: TDBXCommand;
    FGetOccupationDeptCodeCommand: TDBXCommand;
    FDeptDayWorkHoursCommand: TDBXCommand;
    FGetEmployeeDataCommand: TDBXCommand;
    FGetEmployeeNameCommand: TDBXCommand;
    FGetNewProfessionLocalNoCommand: TDBXCommand;
    FGetProfessionCodeByFullNoCommand: TDBXCommand;
    FGetProfessionIsInstanceCommand: TDBXCommand;
    FGetNewEmployeeCodeCommand: TDBXCommand;
    FGetEmployeeShiftCodeCommand: TDBXCommand;
    FGetNewDiscEventTypeCodeCommand: TDBXCommand;
    FGetNewDiscEventTypeLocalNoCommand: TDBXCommand;
    FGetNewDiscEventTypePeriodCodeCommand: TDBXCommand;
    FGetDiscEventTypeCodeByFullNoCommand: TDBXCommand;
    FGetDiscEventTypeIsInstanceCommand: TDBXCommand;
    FGetDiscEventTypeIsInactiveCommand: TDBXCommand;
    FGetDiscEventTypeDataCommand: TDBXCommand;
    FGetMinAndMaxOccWorkDeptPriorityNoCodesCommand: TDBXCommand;
    FDeleteOccupationCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function TeamEarnings(TeamCode: Integer; BeginDate: TDateTime; EndDate: TDateTime): Double;
    function GetOccupationDeptCode(OccupationCode: Integer): Integer;
    function DeptDayWorkHours(DeptCode: Integer): Double;
    procedure GetEmployeeData(AEmployeeCode: Integer; out AEmployeeName: string; out AHasDocumentation: Boolean; out ADocBranchCode: Integer; out ADocCode: Integer; out AEmployeeNo: Integer);
    procedure GetEmployeeName(AEmployeeCode: Integer; out AFirstName: string; out AMiddleName: string; out ALastName: string);
    function GetNewProfessionLocalNo(AParentProfessionCode: Integer): Integer;
    function GetProfessionCodeByFullNo(AProfessionFullNo: string): Integer;
    function GetProfessionIsInstance(AProfessionCode: Integer): Boolean;
    function GetNewEmployeeCode: Integer;
    function GetEmployeeShiftCode(AEmployeeCode: Integer; ADate: TDateTime): Integer;
    function GetNewDiscEventTypeCode: Integer;
    function GetNewDiscEventTypeLocalNo(AParentDiscEventTypeCode: Integer): Integer;
    function GetNewDiscEventTypePeriodCode: Integer;
    function GetDiscEventTypeCodeByFullNo(ADiscEventTypeFullNo: string): Integer;
    function GetDiscEventTypeIsInstance(ADiscEventTypeCode: Integer): Boolean;
    function GetDiscEventTypeIsInactive(ADiscEventTypeCode: Integer): Boolean;
    procedure GetDiscEventTypeData(DiscEventTypeCode: Integer; ToDate: TDateTime; out ParentDiscEventTypeCode: Integer; out LocalNo: Integer; out FullNo: string; out FormatedFullNo: string; out FullName: string; out ShortName: string; out IsGroup: Boolean; out DocBranchCode: Integer; out DocCode: Integer; out HasDocItems: Boolean; out Rating: Integer; out ActiveDateUnitCount: Integer; out ActiveDateUnitCode: Integer; out Color: Integer; out BackgroundColor: Integer);
    procedure GetMinAndMaxOccWorkDeptPriorityNoCodes(out MinOccWorkDeptPriorityNoCode: Integer; out MaxOccWorkDeptPriorityNoCode: Integer);
    procedure DeleteOccupation(AOccupationCode: Integer);
  end;

  TdmCapacityProxyClient = class(TAbmesDatasnapClientProxy)
  private
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
  end;

  TdmBudgetProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetNewBudgetOrderCodeCommand: TDBXCommand;
    FGetNewBudgetOrderItemCodeCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetNewBudgetOrderCode(BranchCode: Integer): Integer;
    function GetNewBudgetOrderItemCode(BudgetOrderBranchCode: Integer; BudgetOrderCode: Integer): Integer;
  end;

  TdmDocItemViewGeneratorsProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetExternalDocItemViewableFileCommand: TDBXCommand;
    FGetInternalDocItemViewableFileCommand: TDBXCommand;
    FGetContentStorageDocItemViewableFileCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetExternalDocItemViewableFile(ADocItemFileName: string; ADocItemViewGeneratorCode: Integer; out AResultExt: string): OleVariant;
    function GetInternalDocItemViewableFile(ADocOwnerType: Integer; ADocBranchCode: Integer; ADocCode: Integer; ADocItemCode: Integer; AAdditionalInfo: Integer; out ResultExt: string): OleVariant;
    function GetContentStorageDocItemViewableFile(ADocOwnerTypeCode: Integer; ADocBranchCode: Integer; ADocCode: Integer; ADocItemCode: Integer; AAdditionalInfo: Integer; out ResultExt: string): OleVariant;
  end;

  TdmShiftsProxyClient = class(TAbmesDatasnapClientProxy)
  private
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
  end;

  TdmDocXMLProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetDocItemXMLCommand: TDBXCommand;
    FGetDocItemTemplateTypeXMLCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetDocItemXML(ADocOwnerTypeCode: Integer; ADocBranchCode: Integer; ADocCode: Integer; ADocItemCode: Integer; AAdditionalInfo: Integer): string;
    function GetDocItemTemplateTypeXML(ADocItemTemplateTypeCode: Integer): string;
  end;

  TdmEngineeringProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FNewEngineeringOrderCodeCommand: TDBXCommand;
    FNewEngineeringOrderNoCommand: TDBXCommand;
    FGetProductThoroughlyEngineeredProductCommand: TDBXCommand;
    FGetEngineeringOrderCodeCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function NewEngineeringOrderCode: Integer;
    function NewEngineeringOrderNo: Integer;
    function GetProductThoroughlyEngineeredProduct(ProductCode: Integer): Integer;
    function GetEngineeringOrderCode(EngineeringOrderBranchCode: Integer; EngineeringOrderNo: Integer): Integer;
  end;

  TdmEmployeeAvailabilityProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FRetryAddEmployeeMovementCommand: TDBXCommand;
    FRetryAddAllEmployeeMovementsCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure RetryAddEmployeeMovement(AFailedEmployeeMovementCode: Integer);
    procedure RetryAddAllEmployeeMovements;
  end;

  TdmOrganisationTasksProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FNewOrgTaskProposalCodeCommand: TDBXCommand;
    FNewOrgTaskProposalNoCommand: TDBXCommand;
    FGetOrgTaskProposalCycleNoCommand: TDBXCommand;
    FGetHasOrganisationTaskProposalCommand: TDBXCommand;
    FGetOrgTaskProposalCodeByNoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function NewOrgTaskProposalCode: Integer;
    function NewOrgTaskProposalNo: Integer;
    function GetOrgTaskProposalCycleNo(AOrgTaskProposalCode: Integer): Integer;
    function GetHasOrganisationTaskProposal(AProductCode: Integer; AExceptOrgTaskProposalCode: Integer): Boolean;
    function GetOrgTaskProposalCodeByNo(AOrgTaskProposalNo: Integer): Integer;
  end;

  TdmExceptEventsProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetNewExceptEventTypeCodeCommand: TDBXCommand;
    FGetNextExceptEventTypeNoCommand: TDBXCommand;
    FGetExceptEventTypeCodeByFullNoCommand: TDBXCommand;
    FGetExceptEventTypeIsInstanceCommand: TDBXCommand;
    FGetNewExceptEventTaskCodeCommand: TDBXCommand;
    FGetNextExceptEventTaskNoCommand: TDBXCommand;
    FGetNewExceptEventDamageAttackCodeCommand: TDBXCommand;
    FGetNewExceptEventDamageCodeCommand: TDBXCommand;
    FGetNextExceptEventDamageLocalNoCommand: TDBXCommand;
    FGetNewExceptEventCodeCommand: TDBXCommand;
    FGetNewExceptEventNoCommand: TDBXCommand;
    FGetOMGeneratorDataCommand: TDBXCommand;
    FGetSaleGeneratorDataCommand: TDBXCommand;
    FGetDeliveryGeneratorDataCommand: TDBXCommand;
    FIsDamageDescendantOfCommand: TDBXCommand;
    FMoveDamageCommand: TDBXCommand;
    FGetExceptEventDamageFullNoCommand: TDBXCommand;
    FGetExceptEventCodeByNoCommand: TDBXCommand;
    FAttachExceptEventCausesCommand: TDBXCommand;
    FAttachExceptEventConsequencesCommand: TDBXCommand;
    FDetachExceptEventCausesCommand: TDBXCommand;
    FDetachExceptEventConsequencesCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetNewExceptEventTypeCode: Integer;
    function GetNextExceptEventTypeNo(AParentExceptEventTypeCode: Integer): Integer;
    function GetExceptEventTypeCodeByFullNo(AExceptEventTypeFullNo: string): Integer;
    function GetExceptEventTypeIsInstance(AExceptEventTypeCode: Integer): Boolean;
    function GetNewExceptEventTaskCode: Integer;
    function GetNextExceptEventTaskNo(AExceptEventCode: Integer): Integer;
    function GetNewExceptEventDamageAttackCode: Integer;
    function GetNewExceptEventDamageCode: Integer;
    function GetNextExceptEventDamageLocalNo(AExceptEventCode: Integer; AParentCode: Integer): Integer;
    function GetNewExceptEventCode: Integer;
    function GetNewExceptEventNo: Integer;
    procedure GetOMGeneratorData(AOMBranchCode: Integer; AOMCode: Integer; out ProductCode: Integer; out ProductQuantity: Double; out DeptCode: Integer);
    procedure GetSaleGeneratorData(ASaleObjectBranchCode: Integer; ASaleObjectCode: Integer; out ProductCode: Integer; out ProductQuantity: Double);
    procedure GetDeliveryGeneratorData(ADCDObjectBranchCode: Integer; ADCDObjectCode: Integer; ADeliveryProjectCode: Integer; out ProductCode: Integer; out ProductQuantity: Double);
    function IsDamageDescendantOf(AExceptEventDamageCode: Integer; AParentCode: Integer): Boolean;
    procedure MoveDamage(AExceptEventDamageCode: Integer; AParentDamageCode: Integer; AExceptEventCode: Integer; ALocalNo: Integer);
    function GetExceptEventDamageFullNo(AExceptEventDamageCode: Integer): string;
    function GetExceptEventCodeByNo(AExceptEventNo: Integer): Integer;
    procedure AttachExceptEventCauses(AExceptEventCode: Integer; ACauseExceptEvents: OleVariant);
    procedure AttachExceptEventConsequences(AExceptEventCode: Integer; AConsequenceExceptEvent: OleVariant);
    procedure DetachExceptEventCauses(AExceptEventCode: Integer; ACauseExceptEvents: OleVariant);
    procedure DetachExceptEventConsequences(AExceptEventCode: Integer; AConsequenceExceptEvents: OleVariant);
  end;

  TdmFinanceProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetNewFinClassLocalNoCommand: TDBXCommand;
    FGetNewFinClassCodeCommand: TDBXCommand;
    FGetFinClassCodeByFullNoCommand: TDBXCommand;
    FGetFinClassIsInstanceCommand: TDBXCommand;
    FGetNewFinOrderNoCommand: TDBXCommand;
    FGetVatPercentCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetNewFinClassLocalNo(AParentFinClassCode: Integer): Integer;
    function GetNewFinClassCode: Integer;
    function GetFinClassCodeByFullNo(AFinClassFullNo: string): Integer;
    function GetFinClassIsInstance(AFinClassCode: Integer): Boolean;
    function GetNewFinOrderNo(FinOrderBranchCode: Integer): Integer;
    function GetVatPercent(ADate: TDateTime): Double;
  end;

  TdmProcessesProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FLoadPrcDataCommand: TDBXCommand;
    FGetNewProcessKnowlCodeCommand: TDBXCommand;
    FGetNewProcessKnowlLocalNoCommand: TDBXCommand;
    FGetNewProcessFunctionCodeCommand: TDBXCommand;
    FGetNewProcessFunctionLocalNoCommand: TDBXCommand;
    FGetNewProcessBaseOperationCodeCommand: TDBXCommand;
    FGetNewProcessBaseOperationLocalNoCommand: TDBXCommand;
    FGetNewProcessConcreteOperationCodeCommand: TDBXCommand;
    FGetNewProcessConcreteOperationLocalNoCommand: TDBXCommand;
    FGetProcessConcreteOperationCodeByFullNoCommand: TDBXCommand;
    FGetProcessConcreteOperationIsInstanceCommand: TDBXCommand;
    FGetProcessConcreteOperationIsInactiveCommand: TDBXCommand;
    FGetProcessBaseOperationCodeByFullNoCommand: TDBXCommand;
    FGetProcessBaseOperationIsInstanceCommand: TDBXCommand;
    FGetProcessFunctionCodeByFullNoCommand: TDBXCommand;
    FGetProcessFunctionIsInstanceCommand: TDBXCommand;
    FGetProcessKnowlCodeByFullNoCommand: TDBXCommand;
    FGetProcessKnowlIsInstanceCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function LoadPrcData(AProcessOwnerName: string; AOwnerPrimaryKeyValue: OleVariant): OleVariant;
    function GetNewProcessKnowlCode: Integer;
    function GetNewProcessKnowlLocalNo(AParentProcessKnowlCode: Integer): Integer;
    function GetNewProcessFunctionCode: Integer;
    function GetNewProcessFunctionLocalNo(AParentProcessFunctionCode: Integer): Integer;
    function GetNewProcessBaseOperationCode: Integer;
    function GetNewProcessBaseOperationLocalNo(AParentProcessBaseOperationCode: Integer): Integer;
    function GetNewProcessConcreteOperationCode: Integer;
    function GetNewProcessConcreteOperationLocalNo(AParentProcessConcreteOperationCode: Integer): Integer;
    function GetProcessConcreteOperationCodeByFullNo(AProcessConcreteOperationFullNo: string): Integer;
    function GetProcessConcreteOperationIsInstance(AProcessConcreteOperationCode: Integer): Boolean;
    function GetProcessConcreteOperationIsInactive(AProcessConcreteOperationCode: Integer): Boolean;
    function GetProcessBaseOperationCodeByFullNo(AProcessBaseOperationFullNo: string): Integer;
    function GetProcessBaseOperationIsInstance(AProcessBaseOperationCode: Integer): Boolean;
    function GetProcessFunctionCodeByFullNo(AProcessFunctionFullNo: string): Integer;
    function GetProcessFunctionIsInstance(AProcessFunctionCode: Integer): Boolean;
    function GetProcessKnowlCodeByFullNo(AProcessKnowlFullNo: string): Integer;
    function GetProcessKnowlIsInstance(AProcessKnowlCode: Integer): Boolean;
  end;

  TdmXModelsProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FGetBndProcessObjectIDCommand: TDBXCommand;
    FXModelExistsCommand: TDBXCommand;
    FGetNeededSpecModelVariantNoCommand: TDBXCommand;
    FGetModelInfoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure GetBndProcessObjectID(IsSale: Boolean; BndObjectBranchCode: Integer; BndObjectNo: Integer; out BndProcessObjectBranchCode: Integer; out BndProcessObjectCode: Integer; out HasManufactureTechQuantity: Boolean);
    function XModelExists(BndProcessObjectBranchCode: Integer; BndProcessObjectCode: Integer): Boolean;
    function GetNeededSpecModelVariantNo(SpecProductCode: Integer; MainDeptCode: Integer; Quantity: Double; ToDate: TDateTime; AIsOperationsModel: Boolean): Integer;
    procedure GetModelInfo(MLObjectBranchCode: Integer; MLObjectCode: Integer; out ForkCount: Integer; out OutStoreDealCount: Integer; out WaitingChangeRequestCount: Integer);
  end;

  TdmMfgReportsProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FArchiveModelCommand: TDBXCommand;
    FUnArchiveModelCommand: TDBXCommand;
    FCloseModelCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure ArchiveModel(MLObjectBranchCode: Integer; MLObjectCode: Integer);
    procedure UnArchiveModel(MLObjectBranchCode: Integer; MLObjectCode: Integer);
    procedure CloseModel(MLObjectBranchCode: Integer; MLObjectCode: Integer);
  end;

  TdmSessionProxyClient = class(TAbmesDatasnapClientProxy)
  private
    FLoginCommand: TDBXCommand;
    FRefreshLoginContextCommand: TDBXCommand;
    FGetLoginContextAsVariantCommand: TDBXCommand;
    FGetExeDateTimeCommand: TDBXCommand;
    FGetExeVersionCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure Login;
    procedure RefreshLoginContext;
    function GetLoginContextAsVariant: OleVariant;
    function GetExeDateTime: TDateTime;
    function GetExeVersion: string;
  end;

  TdmCompanyFilterProxyClient = class(TAbmesDatasnapClientProxy)
  private
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
  end;

implementation

function TdmCommonProxyClient.GetSecondaryCurrencyFixing(ACurrencyCode: Integer; ADate: TDateTime): Double;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetSecondaryCurrencyFixingCommand = nil) or CommandRecreateNeeded(FGetSecondaryCurrencyFixingCommand) then
          begin
            FreeAndNil(FGetSecondaryCurrencyFixingCommand);
            FGetSecondaryCurrencyFixingCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetSecondaryCurrencyFixingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetSecondaryCurrencyFixingCommand.Text := 'TdmCommonProxy.GetSecondaryCurrencyFixing';
            FGetSecondaryCurrencyFixingCommand.Prepare;
            CommandRecreated(FGetSecondaryCurrencyFixingCommand);
          end;
          FGetSecondaryCurrencyFixingCommand.Parameters[0].Value.SetInt32(ACurrencyCode);
          FGetSecondaryCurrencyFixingCommand.Parameters[1].Value.AsDateTime := ADate;
          FGetSecondaryCurrencyFixingCommand.ExecuteUpdate;
          Result := FGetSecondaryCurrencyFixingCommand.Parameters[2].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmCommonProxyClient.GetBaseCurrencyFixing(ACurrencyCode: Integer; ADate: TDateTime): Double;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetBaseCurrencyFixingCommand = nil) or CommandRecreateNeeded(FGetBaseCurrencyFixingCommand) then
          begin
            FreeAndNil(FGetBaseCurrencyFixingCommand);
            FGetBaseCurrencyFixingCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetBaseCurrencyFixingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetBaseCurrencyFixingCommand.Text := 'TdmCommonProxy.GetBaseCurrencyFixing';
            FGetBaseCurrencyFixingCommand.Prepare;
            CommandRecreated(FGetBaseCurrencyFixingCommand);
          end;
          FGetBaseCurrencyFixingCommand.Parameters[0].Value.SetInt32(ACurrencyCode);
          FGetBaseCurrencyFixingCommand.Parameters[1].Value.AsDateTime := ADate;
          FGetBaseCurrencyFixingCommand.ExecuteUpdate;
          Result := FGetBaseCurrencyFixingCommand.Parameters[2].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmCommonProxyClient.AreAllTodayCurrencyRatesEntered: Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FAreAllTodayCurrencyRatesEnteredCommand = nil) or CommandRecreateNeeded(FAreAllTodayCurrencyRatesEnteredCommand) then
          begin
            FreeAndNil(FAreAllTodayCurrencyRatesEnteredCommand);
            FAreAllTodayCurrencyRatesEnteredCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FAreAllTodayCurrencyRatesEnteredCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FAreAllTodayCurrencyRatesEnteredCommand.Text := 'TdmCommonProxy.AreAllTodayCurrencyRatesEntered';
            FAreAllTodayCurrencyRatesEnteredCommand.Prepare;
            CommandRecreated(FAreAllTodayCurrencyRatesEnteredCommand);
          end;
          FAreAllTodayCurrencyRatesEnteredCommand.ExecuteUpdate;
          Result := FAreAllTodayCurrencyRatesEnteredCommand.Parameters[0].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmCommonProxyClient.GetNomItemData(ANomCode: Integer; ANomItemCode: Integer; out NomItemName: string; out NomItemDescription: string; out DocBranchCode: Integer; out DocCode: Integer; out HasDocItems: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNomItemDataCommand = nil) or CommandRecreateNeeded(FGetNomItemDataCommand) then
          begin
            FreeAndNil(FGetNomItemDataCommand);
            FGetNomItemDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNomItemDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNomItemDataCommand.Text := 'TdmCommonProxy.GetNomItemData';
            FGetNomItemDataCommand.Prepare;
            CommandRecreated(FGetNomItemDataCommand);
          end;
          FGetNomItemDataCommand.Parameters[0].Value.SetInt32(ANomCode);
          FGetNomItemDataCommand.Parameters[1].Value.SetInt32(ANomItemCode);
          FGetNomItemDataCommand.ExecuteUpdate;
          NomItemName := FGetNomItemDataCommand.Parameters[2].Value.GetWideString;
          NomItemDescription := FGetNomItemDataCommand.Parameters[3].Value.GetWideString;
          DocBranchCode := FGetNomItemDataCommand.Parameters[4].Value.GetInt32;
          DocCode := FGetNomItemDataCommand.Parameters[5].Value.GetInt32;
          HasDocItems := FGetNomItemDataCommand.Parameters[6].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmCommonProxyClient.GetMinAndMaxPriorityNoCodes(out MinPriorityNoCode: Integer; out MaxPriorityNoCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetMinAndMaxPriorityNoCodesCommand = nil) or CommandRecreateNeeded(FGetMinAndMaxPriorityNoCodesCommand) then
          begin
            FreeAndNil(FGetMinAndMaxPriorityNoCodesCommand);
            FGetMinAndMaxPriorityNoCodesCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetMinAndMaxPriorityNoCodesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetMinAndMaxPriorityNoCodesCommand.Text := 'TdmCommonProxy.GetMinAndMaxPriorityNoCodes';
            FGetMinAndMaxPriorityNoCodesCommand.Prepare;
            CommandRecreated(FGetMinAndMaxPriorityNoCodesCommand);
          end;
          FGetMinAndMaxPriorityNoCodesCommand.ExecuteUpdate;
          MinPriorityNoCode := FGetMinAndMaxPriorityNoCodesCommand.Parameters[0].Value.GetInt32;
          MaxPriorityNoCode := FGetMinAndMaxPriorityNoCodesCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmCommonProxyClient.MoneyToText(AAmount: Double; ACurrencyCode: Integer; ASystemLocaleCode: Integer): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FMoneyToTextCommand = nil) or CommandRecreateNeeded(FMoneyToTextCommand) then
          begin
            FreeAndNil(FMoneyToTextCommand);
            FMoneyToTextCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FMoneyToTextCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FMoneyToTextCommand.Text := 'TdmCommonProxy.MoneyToText';
            FMoneyToTextCommand.Prepare;
            CommandRecreated(FMoneyToTextCommand);
          end;
          FMoneyToTextCommand.Parameters[0].Value.SetDouble(AAmount);
          FMoneyToTextCommand.Parameters[1].Value.SetInt32(ACurrencyCode);
          FMoneyToTextCommand.Parameters[2].Value.SetInt32(ASystemLocaleCode);
          FMoneyToTextCommand.ExecuteUpdate;
          Result := FMoneyToTextCommand.Parameters[3].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmCommonProxyClient.MoneyToLocalText(AAmount: Double; ACurrencyCode: Integer): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FMoneyToLocalTextCommand = nil) or CommandRecreateNeeded(FMoneyToLocalTextCommand) then
          begin
            FreeAndNil(FMoneyToLocalTextCommand);
            FMoneyToLocalTextCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FMoneyToLocalTextCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FMoneyToLocalTextCommand.Text := 'TdmCommonProxy.MoneyToLocalText';
            FMoneyToLocalTextCommand.Prepare;
            CommandRecreated(FMoneyToLocalTextCommand);
          end;
          FMoneyToLocalTextCommand.Parameters[0].Value.SetDouble(AAmount);
          FMoneyToLocalTextCommand.Parameters[1].Value.SetInt32(ACurrencyCode);
          FMoneyToLocalTextCommand.ExecuteUpdate;
          Result := FMoneyToLocalTextCommand.Parameters[2].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmCommonProxyClient.GetActivityNo(AActivityCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetActivityNoCommand = nil) or CommandRecreateNeeded(FGetActivityNoCommand) then
          begin
            FreeAndNil(FGetActivityNoCommand);
            FGetActivityNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetActivityNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetActivityNoCommand.Text := 'TdmCommonProxy.GetActivityNo';
            FGetActivityNoCommand.Prepare;
            CommandRecreated(FGetActivityNoCommand);
          end;
          FGetActivityNoCommand.Parameters[0].Value.SetInt32(AActivityCode);
          FGetActivityNoCommand.ExecuteUpdate;
          Result := FGetActivityNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmCommonProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmCommonProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmCommonProxyClient.Destroy;
begin
  FGetSecondaryCurrencyFixingCommand.DisposeOf;
  FGetBaseCurrencyFixingCommand.DisposeOf;
  FAreAllTodayCurrencyRatesEnteredCommand.DisposeOf;
  FGetNomItemDataCommand.DisposeOf;
  FGetMinAndMaxPriorityNoCodesCommand.DisposeOf;
  FMoneyToTextCommand.DisposeOf;
  FMoneyToLocalTextCommand.DisposeOf;
  FGetActivityNoCommand.DisposeOf;
  inherited;
end;

procedure TdmCompaniesProxyClient.GetCompanyInfo(CompanyCode: Integer; out CompanyFullName: string; out City: string; out Address: string; out TaxNo: string; out BulstatNo: string; out CountryAbbrev: string; out MediatorCompanyCode: string; out CompanyShortName: string; out Bulstat: string; out BulstatEx: string; out IsPerson: Boolean; out FirstName: string; out MiddleName: string; out LastName: string; out EGN: string; out CompanyNo: Integer; out VatRegistered: Boolean; out VatNo: string; out ICompanyFullName: string; out ICompanyShortName: string; out IFirstName: string; out IMiddleName: string; out ILastName: string; out ICity: string; out IAddress: string);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetCompanyInfoCommand = nil) or CommandRecreateNeeded(FGetCompanyInfoCommand) then
          begin
            FreeAndNil(FGetCompanyInfoCommand);
            FGetCompanyInfoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetCompanyInfoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetCompanyInfoCommand.Text := 'TdmCompaniesProxy.GetCompanyInfo';
            FGetCompanyInfoCommand.Prepare;
            CommandRecreated(FGetCompanyInfoCommand);
          end;
          FGetCompanyInfoCommand.Parameters[0].Value.SetInt32(CompanyCode);
          FGetCompanyInfoCommand.ExecuteUpdate;
          CompanyFullName := FGetCompanyInfoCommand.Parameters[1].Value.GetWideString;
          City := FGetCompanyInfoCommand.Parameters[2].Value.GetWideString;
          Address := FGetCompanyInfoCommand.Parameters[3].Value.GetWideString;
          TaxNo := FGetCompanyInfoCommand.Parameters[4].Value.GetWideString;
          BulstatNo := FGetCompanyInfoCommand.Parameters[5].Value.GetWideString;
          CountryAbbrev := FGetCompanyInfoCommand.Parameters[6].Value.GetWideString;
          MediatorCompanyCode := FGetCompanyInfoCommand.Parameters[7].Value.GetWideString;
          CompanyShortName := FGetCompanyInfoCommand.Parameters[8].Value.GetWideString;
          Bulstat := FGetCompanyInfoCommand.Parameters[9].Value.GetWideString;
          BulstatEx := FGetCompanyInfoCommand.Parameters[10].Value.GetWideString;
          IsPerson := FGetCompanyInfoCommand.Parameters[11].Value.GetBoolean;
          FirstName := FGetCompanyInfoCommand.Parameters[12].Value.GetWideString;
          MiddleName := FGetCompanyInfoCommand.Parameters[13].Value.GetWideString;
          LastName := FGetCompanyInfoCommand.Parameters[14].Value.GetWideString;
          EGN := FGetCompanyInfoCommand.Parameters[15].Value.GetWideString;
          CompanyNo := FGetCompanyInfoCommand.Parameters[16].Value.GetInt32;
          VatRegistered := FGetCompanyInfoCommand.Parameters[17].Value.GetBoolean;
          VatNo := FGetCompanyInfoCommand.Parameters[18].Value.GetWideString;
          ICompanyFullName := FGetCompanyInfoCommand.Parameters[19].Value.GetWideString;
          ICompanyShortName := FGetCompanyInfoCommand.Parameters[20].Value.GetWideString;
          IFirstName := FGetCompanyInfoCommand.Parameters[21].Value.GetWideString;
          IMiddleName := FGetCompanyInfoCommand.Parameters[22].Value.GetWideString;
          ILastName := FGetCompanyInfoCommand.Parameters[23].Value.GetWideString;
          ICity := FGetCompanyInfoCommand.Parameters[24].Value.GetWideString;
          IAddress := FGetCompanyInfoCommand.Parameters[25].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmCompaniesProxyClient.GetCompanyRolesInfo(CompanyCode: Integer; out IsClient: Boolean; out ClientPriorityCode: Integer; out IsMediator: Boolean; out MediatorPriorityCode: Integer; out IsVendor: Boolean; out VendorPriorityCode: Integer; out IsGovernmentOrganization: Boolean; out GovOrgPriorityCode: Integer; out IsBank: Boolean; out BankPriorityCode: Integer; out IsWorker: Boolean; out WorkerPriorityCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetCompanyRolesInfoCommand = nil) or CommandRecreateNeeded(FGetCompanyRolesInfoCommand) then
          begin
            FreeAndNil(FGetCompanyRolesInfoCommand);
            FGetCompanyRolesInfoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetCompanyRolesInfoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetCompanyRolesInfoCommand.Text := 'TdmCompaniesProxy.GetCompanyRolesInfo';
            FGetCompanyRolesInfoCommand.Prepare;
            CommandRecreated(FGetCompanyRolesInfoCommand);
          end;
          FGetCompanyRolesInfoCommand.Parameters[0].Value.SetInt32(CompanyCode);
          FGetCompanyRolesInfoCommand.ExecuteUpdate;
          IsClient := FGetCompanyRolesInfoCommand.Parameters[1].Value.GetBoolean;
          ClientPriorityCode := FGetCompanyRolesInfoCommand.Parameters[2].Value.GetInt32;
          IsMediator := FGetCompanyRolesInfoCommand.Parameters[3].Value.GetBoolean;
          MediatorPriorityCode := FGetCompanyRolesInfoCommand.Parameters[4].Value.GetInt32;
          IsVendor := FGetCompanyRolesInfoCommand.Parameters[5].Value.GetBoolean;
          VendorPriorityCode := FGetCompanyRolesInfoCommand.Parameters[6].Value.GetInt32;
          IsGovernmentOrganization := FGetCompanyRolesInfoCommand.Parameters[7].Value.GetBoolean;
          GovOrgPriorityCode := FGetCompanyRolesInfoCommand.Parameters[8].Value.GetInt32;
          IsBank := FGetCompanyRolesInfoCommand.Parameters[9].Value.GetBoolean;
          BankPriorityCode := FGetCompanyRolesInfoCommand.Parameters[10].Value.GetInt32;
          IsWorker := FGetCompanyRolesInfoCommand.Parameters[11].Value.GetBoolean;
          WorkerPriorityCode := FGetCompanyRolesInfoCommand.Parameters[12].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmCompaniesProxyClient.ParRelExists(PartnerCode: Integer; BorderRelTypeCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FParRelExistsCommand = nil) or CommandRecreateNeeded(FParRelExistsCommand) then
          begin
            FreeAndNil(FParRelExistsCommand);
            FParRelExistsCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FParRelExistsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FParRelExistsCommand.Text := 'TdmCompaniesProxy.ParRelExists';
            FParRelExistsCommand.Prepare;
            CommandRecreated(FParRelExistsCommand);
          end;
          FParRelExistsCommand.Parameters[0].Value.SetInt32(PartnerCode);
          FParRelExistsCommand.Parameters[1].Value.SetInt32(BorderRelTypeCode);
          FParRelExistsCommand.ExecuteUpdate;
          Result := FParRelExistsCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmCompaniesProxyClient.GetNewCompanyTypeCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewCompanyTypeCodeCommand = nil) or CommandRecreateNeeded(FGetNewCompanyTypeCodeCommand) then
          begin
            FreeAndNil(FGetNewCompanyTypeCodeCommand);
            FGetNewCompanyTypeCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewCompanyTypeCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewCompanyTypeCodeCommand.Text := 'TdmCompaniesProxy.GetNewCompanyTypeCode';
            FGetNewCompanyTypeCodeCommand.Prepare;
            CommandRecreated(FGetNewCompanyTypeCodeCommand);
          end;
          FGetNewCompanyTypeCodeCommand.ExecuteUpdate;
          Result := FGetNewCompanyTypeCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmCompaniesProxyClient.GetNewPRPerPriceModifierCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewPRPerPriceModifierCodeCommand = nil) or CommandRecreateNeeded(FGetNewPRPerPriceModifierCodeCommand) then
          begin
            FreeAndNil(FGetNewPRPerPriceModifierCodeCommand);
            FGetNewPRPerPriceModifierCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewPRPerPriceModifierCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewPRPerPriceModifierCodeCommand.Text := 'TdmCompaniesProxy.GetNewPRPerPriceModifierCode';
            FGetNewPRPerPriceModifierCodeCommand.Prepare;
            CommandRecreated(FGetNewPRPerPriceModifierCodeCommand);
          end;
          FGetNewPRPerPriceModifierCodeCommand.ExecuteUpdate;
          Result := FGetNewPRPerPriceModifierCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmCompaniesProxyClient.GetFinPartner(PartnerCode: Integer; BorderRelTypeCode: Integer; BeginDate: TDateTime; EndDate: TDateTime): OleVariant;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetFinPartnerCommand = nil) or CommandRecreateNeeded(FGetFinPartnerCommand) then
          begin
            FreeAndNil(FGetFinPartnerCommand);
            FGetFinPartnerCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetFinPartnerCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetFinPartnerCommand.Text := 'TdmCompaniesProxy.GetFinPartner';
            FGetFinPartnerCommand.Prepare;
            CommandRecreated(FGetFinPartnerCommand);
          end;
          FGetFinPartnerCommand.Parameters[0].Value.SetInt32(PartnerCode);
          FGetFinPartnerCommand.Parameters[1].Value.SetInt32(BorderRelTypeCode);
          FGetFinPartnerCommand.Parameters[2].Value.AsDateTime := BeginDate;
          FGetFinPartnerCommand.Parameters[3].Value.AsDateTime := EndDate;
          FGetFinPartnerCommand.ExecuteUpdate;
          Result := FGetFinPartnerCommand.Parameters[4].Value.AsVariant;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmCompaniesProxyClient.GetParRelPartnerOfficeAddress(PartnerCode: Integer; BorderRelTypeCode: Integer; ToDate: TDateTime; out Address: string; out IAddress: string);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetParRelPartnerOfficeAddressCommand = nil) or CommandRecreateNeeded(FGetParRelPartnerOfficeAddressCommand) then
          begin
            FreeAndNil(FGetParRelPartnerOfficeAddressCommand);
            FGetParRelPartnerOfficeAddressCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetParRelPartnerOfficeAddressCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetParRelPartnerOfficeAddressCommand.Text := 'TdmCompaniesProxy.GetParRelPartnerOfficeAddress';
            FGetParRelPartnerOfficeAddressCommand.Prepare;
            CommandRecreated(FGetParRelPartnerOfficeAddressCommand);
          end;
          FGetParRelPartnerOfficeAddressCommand.Parameters[0].Value.SetInt32(PartnerCode);
          FGetParRelPartnerOfficeAddressCommand.Parameters[1].Value.SetInt32(BorderRelTypeCode);
          FGetParRelPartnerOfficeAddressCommand.Parameters[2].Value.AsDateTime := ToDate;
          FGetParRelPartnerOfficeAddressCommand.ExecuteUpdate;
          Address := FGetParRelPartnerOfficeAddressCommand.Parameters[3].Value.GetWideString;
          IAddress := FGetParRelPartnerOfficeAddressCommand.Parameters[4].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmCompaniesProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmCompaniesProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmCompaniesProxyClient.Destroy;
begin
  FGetCompanyInfoCommand.DisposeOf;
  FGetCompanyRolesInfoCommand.DisposeOf;
  FParRelExistsCommand.DisposeOf;
  FGetNewCompanyTypeCodeCommand.DisposeOf;
  FGetNewPRPerPriceModifierCodeCommand.DisposeOf;
  FGetFinPartnerCommand.DisposeOf;
  FGetParRelPartnerOfficeAddressCommand.DisposeOf;
  inherited;
end;


constructor TdmCompanyProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmCompanyProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmCompanyProxyClient.Destroy;
begin
  inherited;
end;

function TdmDeficitProxyClient.GetLastPSDDate: TDateTime;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetLastPSDDateCommand = nil) or CommandRecreateNeeded(FGetLastPSDDateCommand) then
          begin
            FreeAndNil(FGetLastPSDDateCommand);
            FGetLastPSDDateCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetLastPSDDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetLastPSDDateCommand.Text := 'TdmDeficitProxy.GetLastPSDDate';
            FGetLastPSDDateCommand.Prepare;
            CommandRecreated(FGetLastPSDDateCommand);
          end;
          FGetLastPSDDateCommand.ExecuteUpdate;
          Result := FGetLastPSDDateCommand.Parameters[0].Value.AsDateTime;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmDeficitProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmDeficitProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmDeficitProxyClient.Destroy;
begin
  FGetLastPSDDateCommand.DisposeOf;
  inherited;
end;

function TdmDeliveriesProxyClient.RPDCanAnnul(DCDObjectBranchCode: Integer; DCDObjectCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FRPDCanAnnulCommand = nil) or CommandRecreateNeeded(FRPDCanAnnulCommand) then
          begin
            FreeAndNil(FRPDCanAnnulCommand);
            FRPDCanAnnulCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FRPDCanAnnulCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FRPDCanAnnulCommand.Text := 'TdmDeliveriesProxy.RPDCanAnnul';
            FRPDCanAnnulCommand.Prepare;
            CommandRecreated(FRPDCanAnnulCommand);
          end;
          FRPDCanAnnulCommand.Parameters[0].Value.SetInt32(DCDObjectBranchCode);
          FRPDCanAnnulCommand.Parameters[1].Value.SetInt32(DCDObjectCode);
          FRPDCanAnnulCommand.ExecuteUpdate;
          Result := FRPDCanAnnulCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeliveriesProxyClient.RPDCanClose(DCDObjectBranchCode: Integer; DCDObjectCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FRPDCanCloseCommand = nil) or CommandRecreateNeeded(FRPDCanCloseCommand) then
          begin
            FreeAndNil(FRPDCanCloseCommand);
            FRPDCanCloseCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FRPDCanCloseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FRPDCanCloseCommand.Text := 'TdmDeliveriesProxy.RPDCanClose';
            FRPDCanCloseCommand.Prepare;
            CommandRecreated(FRPDCanCloseCommand);
          end;
          FRPDCanCloseCommand.Parameters[0].Value.SetInt32(DCDObjectBranchCode);
          FRPDCanCloseCommand.Parameters[1].Value.SetInt32(DCDObjectCode);
          FRPDCanCloseCommand.ExecuteUpdate;
          Result := FRPDCanCloseCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeliveriesProxyClient.DeliveryCanAnnul(DeliveryObjectBranchCode: Integer; DeliveryObjectCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FDeliveryCanAnnulCommand = nil) or CommandRecreateNeeded(FDeliveryCanAnnulCommand) then
          begin
            FreeAndNil(FDeliveryCanAnnulCommand);
            FDeliveryCanAnnulCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FDeliveryCanAnnulCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FDeliveryCanAnnulCommand.Text := 'TdmDeliveriesProxy.DeliveryCanAnnul';
            FDeliveryCanAnnulCommand.Prepare;
            CommandRecreated(FDeliveryCanAnnulCommand);
          end;
          FDeliveryCanAnnulCommand.Parameters[0].Value.SetInt32(DeliveryObjectBranchCode);
          FDeliveryCanAnnulCommand.Parameters[1].Value.SetInt32(DeliveryObjectCode);
          FDeliveryCanAnnulCommand.ExecuteUpdate;
          Result := FDeliveryCanAnnulCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeliveriesProxyClient.GetNewDeliveryProjectCode(DCDObjectBranchCode: Integer; DCDObjectCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewDeliveryProjectCodeCommand = nil) or CommandRecreateNeeded(FGetNewDeliveryProjectCodeCommand) then
          begin
            FreeAndNil(FGetNewDeliveryProjectCodeCommand);
            FGetNewDeliveryProjectCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewDeliveryProjectCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewDeliveryProjectCodeCommand.Text := 'TdmDeliveriesProxy.GetNewDeliveryProjectCode';
            FGetNewDeliveryProjectCodeCommand.Prepare;
            CommandRecreated(FGetNewDeliveryProjectCodeCommand);
          end;
          FGetNewDeliveryProjectCodeCommand.Parameters[0].Value.SetInt32(DCDObjectBranchCode);
          FGetNewDeliveryProjectCodeCommand.Parameters[1].Value.SetInt32(DCDObjectCode);
          FGetNewDeliveryProjectCodeCommand.ExecuteUpdate;
          Result := FGetNewDeliveryProjectCodeCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeliveriesProxyClient.GetNewDeficitCoverDecisionCode(BranchCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewDeficitCoverDecisionCodeCommand = nil) or CommandRecreateNeeded(FGetNewDeficitCoverDecisionCodeCommand) then
          begin
            FreeAndNil(FGetNewDeficitCoverDecisionCodeCommand);
            FGetNewDeficitCoverDecisionCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewDeficitCoverDecisionCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewDeficitCoverDecisionCodeCommand.Text := 'TdmDeliveriesProxy.GetNewDeficitCoverDecisionCode';
            FGetNewDeficitCoverDecisionCodeCommand.Prepare;
            CommandRecreated(FGetNewDeficitCoverDecisionCodeCommand);
          end;
          FGetNewDeficitCoverDecisionCodeCommand.Parameters[0].Value.SetInt32(BranchCode);
          FGetNewDeficitCoverDecisionCodeCommand.ExecuteUpdate;
          Result := FGetNewDeficitCoverDecisionCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeliveriesProxyClient.GetNewDeliveryDecisionCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewDeliveryDecisionCodeCommand = nil) or CommandRecreateNeeded(FGetNewDeliveryDecisionCodeCommand) then
          begin
            FreeAndNil(FGetNewDeliveryDecisionCodeCommand);
            FGetNewDeliveryDecisionCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewDeliveryDecisionCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewDeliveryDecisionCodeCommand.Text := 'TdmDeliveriesProxy.GetNewDeliveryDecisionCode';
            FGetNewDeliveryDecisionCodeCommand.Prepare;
            CommandRecreated(FGetNewDeliveryDecisionCodeCommand);
          end;
          FGetNewDeliveryDecisionCodeCommand.ExecuteUpdate;
          Result := FGetNewDeliveryDecisionCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmDeliveriesProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmDeliveriesProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmDeliveriesProxyClient.Destroy;
begin
  FRPDCanAnnulCommand.DisposeOf;
  FRPDCanCloseCommand.DisposeOf;
  FDeliveryCanAnnulCommand.DisposeOf;
  FGetNewDeliveryProjectCodeCommand.DisposeOf;
  FGetNewDeficitCoverDecisionCodeCommand.DisposeOf;
  FGetNewDeliveryDecisionCodeCommand.DisposeOf;
  inherited;
end;

procedure TdmDeptsTreeProxyClient.GetDeptData(ANodeID: Integer; out NodeName: string; out DeptIdentifier: string; out DeptIsStore: Boolean; out ProductCode: Integer; out ParentNodeID: Integer; out IsRecurrent: Boolean; out BeginDate: TDateTime; out EndDate: TDateTime; out IsExternal: Boolean; out DeptIsFinStore: Boolean; out HasDocumentation: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeptDataCommand = nil) or CommandRecreateNeeded(FGetDeptDataCommand) then
          begin
            FreeAndNil(FGetDeptDataCommand);
            FGetDeptDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeptDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeptDataCommand.Text := 'TdmDeptsTreeProxy.GetDeptData';
            FGetDeptDataCommand.Prepare;
            CommandRecreated(FGetDeptDataCommand);
          end;
          FGetDeptDataCommand.Parameters[0].Value.SetInt32(ANodeID);
          FGetDeptDataCommand.ExecuteUpdate;
          NodeName := FGetDeptDataCommand.Parameters[1].Value.GetWideString;
          DeptIdentifier := FGetDeptDataCommand.Parameters[2].Value.GetWideString;
          DeptIsStore := FGetDeptDataCommand.Parameters[3].Value.GetBoolean;
          ProductCode := FGetDeptDataCommand.Parameters[4].Value.GetInt32;
          ParentNodeID := FGetDeptDataCommand.Parameters[5].Value.GetInt32;
          IsRecurrent := FGetDeptDataCommand.Parameters[6].Value.GetBoolean;
          BeginDate := FGetDeptDataCommand.Parameters[7].Value.AsDateTime;
          EndDate := FGetDeptDataCommand.Parameters[8].Value.AsDateTime;
          IsExternal := FGetDeptDataCommand.Parameters[9].Value.GetBoolean;
          DeptIsFinStore := FGetDeptDataCommand.Parameters[10].Value.GetBoolean;
          HasDocumentation := FGetDeptDataCommand.Parameters[11].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeptsTreeProxyClient.GetDeptID(DeptIdentifier: string): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeptIDCommand = nil) or CommandRecreateNeeded(FGetDeptIDCommand) then
          begin
            FreeAndNil(FGetDeptIDCommand);
            FGetDeptIDCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeptIDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeptIDCommand.Text := 'TdmDeptsTreeProxy.GetDeptID';
            FGetDeptIDCommand.Prepare;
            CommandRecreated(FGetDeptIDCommand);
          end;
          FGetDeptIDCommand.Parameters[0].Value.SetWideString(DeptIdentifier);
          FGetDeptIDCommand.ExecuteUpdate;
          Result := FGetDeptIDCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeptsTreeProxyClient.IsDeptStore(ADeptCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsDeptStoreCommand = nil) or CommandRecreateNeeded(FIsDeptStoreCommand) then
          begin
            FreeAndNil(FIsDeptStoreCommand);
            FIsDeptStoreCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsDeptStoreCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsDeptStoreCommand.Text := 'TdmDeptsTreeProxy.IsDeptStore';
            FIsDeptStoreCommand.Prepare;
            CommandRecreated(FIsDeptStoreCommand);
          end;
          FIsDeptStoreCommand.Parameters[0].Value.SetInt32(ADeptCode);
          FIsDeptStoreCommand.ExecuteUpdate;
          Result := FIsDeptStoreCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmDeptsTreeProxyClient.GetDeptDoc(DeptCode: Integer; out DocBranchCode: Integer; out DocCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeptDocCommand = nil) or CommandRecreateNeeded(FGetDeptDocCommand) then
          begin
            FreeAndNil(FGetDeptDocCommand);
            FGetDeptDocCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeptDocCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeptDocCommand.Text := 'TdmDeptsTreeProxy.GetDeptDoc';
            FGetDeptDocCommand.Prepare;
            CommandRecreated(FGetDeptDocCommand);
          end;
          FGetDeptDocCommand.Parameters[0].Value.SetInt32(DeptCode);
          FGetDeptDocCommand.ExecuteUpdate;
          DocBranchCode := FGetDeptDocCommand.Parameters[1].Value.GetInt32;
          DocCode := FGetDeptDocCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeptsTreeProxyClient.CheckDeptRelation(NewDeptCode: Integer; OldDeptCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FCheckDeptRelationCommand = nil) or CommandRecreateNeeded(FCheckDeptRelationCommand) then
          begin
            FreeAndNil(FCheckDeptRelationCommand);
            FCheckDeptRelationCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FCheckDeptRelationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FCheckDeptRelationCommand.Text := 'TdmDeptsTreeProxy.CheckDeptRelation';
            FCheckDeptRelationCommand.Prepare;
            CommandRecreated(FCheckDeptRelationCommand);
          end;
          FCheckDeptRelationCommand.Parameters[0].Value.SetInt32(NewDeptCode);
          FCheckDeptRelationCommand.Parameters[1].Value.SetInt32(OldDeptCode);
          FCheckDeptRelationCommand.ExecuteUpdate;
          Result := FCheckDeptRelationCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeptsTreeProxyClient.GetStoreFullName(StoreCode: Integer): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetStoreFullNameCommand = nil) or CommandRecreateNeeded(FGetStoreFullNameCommand) then
          begin
            FreeAndNil(FGetStoreFullNameCommand);
            FGetStoreFullNameCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetStoreFullNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetStoreFullNameCommand.Text := 'TdmDeptsTreeProxy.GetStoreFullName';
            FGetStoreFullNameCommand.Prepare;
            CommandRecreated(FGetStoreFullNameCommand);
          end;
          FGetStoreFullNameCommand.Parameters[0].Value.SetInt32(StoreCode);
          FGetStoreFullNameCommand.ExecuteUpdate;
          Result := FGetStoreFullNameCommand.Parameters[1].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmDeptsTreeProxyClient.GetDeptNameAndDoc(DeptCode: Integer; out DeptName: string; out DeptNo: string; out DocBranchCode: Integer; out DocCode: Integer; out HasDocumentation: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeptNameAndDocCommand = nil) or CommandRecreateNeeded(FGetDeptNameAndDocCommand) then
          begin
            FreeAndNil(FGetDeptNameAndDocCommand);
            FGetDeptNameAndDocCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeptNameAndDocCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeptNameAndDocCommand.Text := 'TdmDeptsTreeProxy.GetDeptNameAndDoc';
            FGetDeptNameAndDocCommand.Prepare;
            CommandRecreated(FGetDeptNameAndDocCommand);
          end;
          FGetDeptNameAndDocCommand.Parameters[0].Value.SetInt32(DeptCode);
          FGetDeptNameAndDocCommand.ExecuteUpdate;
          DeptName := FGetDeptNameAndDocCommand.Parameters[1].Value.GetWideString;
          DeptNo := FGetDeptNameAndDocCommand.Parameters[2].Value.GetWideString;
          DocBranchCode := FGetDeptNameAndDocCommand.Parameters[3].Value.GetInt32;
          DocCode := FGetDeptNameAndDocCommand.Parameters[4].Value.GetInt32;
          HasDocumentation := FGetDeptNameAndDocCommand.Parameters[5].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmDeptsTreeProxyClient.GetDeptPrices(DeptCode: Integer; PricesDate: TDateTime; out HourPrice: Double; out MaintainanceHourPrice: Double; out ParallelProcessCount: Double; out ParallelOperatorCount: Double);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeptPricesCommand = nil) or CommandRecreateNeeded(FGetDeptPricesCommand) then
          begin
            FreeAndNil(FGetDeptPricesCommand);
            FGetDeptPricesCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeptPricesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeptPricesCommand.Text := 'TdmDeptsTreeProxy.GetDeptPrices';
            FGetDeptPricesCommand.Prepare;
            CommandRecreated(FGetDeptPricesCommand);
          end;
          FGetDeptPricesCommand.Parameters[0].Value.SetInt32(DeptCode);
          FGetDeptPricesCommand.Parameters[1].Value.AsDateTime := PricesDate;
          FGetDeptPricesCommand.ExecuteUpdate;
          HourPrice := FGetDeptPricesCommand.Parameters[2].Value.GetDouble;
          MaintainanceHourPrice := FGetDeptPricesCommand.Parameters[3].Value.GetDouble;
          ParallelProcessCount := FGetDeptPricesCommand.Parameters[4].Value.GetDouble;
          ParallelOperatorCount := FGetDeptPricesCommand.Parameters[5].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmDeptsTreeProxyClient.GetDeptPeriodData(DeptCode: Integer; ADate: TDateTime; out ParallelProcessCount: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeptPeriodDataCommand = nil) or CommandRecreateNeeded(FGetDeptPeriodDataCommand) then
          begin
            FreeAndNil(FGetDeptPeriodDataCommand);
            FGetDeptPeriodDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeptPeriodDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeptPeriodDataCommand.Text := 'TdmDeptsTreeProxy.GetDeptPeriodData';
            FGetDeptPeriodDataCommand.Prepare;
            CommandRecreated(FGetDeptPeriodDataCommand);
          end;
          FGetDeptPeriodDataCommand.Parameters[0].Value.SetInt32(DeptCode);
          FGetDeptPeriodDataCommand.Parameters[1].Value.AsDateTime := ADate;
          FGetDeptPeriodDataCommand.ExecuteUpdate;
          ParallelProcessCount := FGetDeptPeriodDataCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeptsTreeProxyClient.GetDeptBranchCode(ADeptCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeptBranchCodeCommand = nil) or CommandRecreateNeeded(FGetDeptBranchCodeCommand) then
          begin
            FreeAndNil(FGetDeptBranchCodeCommand);
            FGetDeptBranchCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeptBranchCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeptBranchCodeCommand.Text := 'TdmDeptsTreeProxy.GetDeptBranchCode';
            FGetDeptBranchCodeCommand.Prepare;
            CommandRecreated(FGetDeptBranchCodeCommand);
          end;
          FGetDeptBranchCodeCommand.Parameters[0].Value.SetInt32(ADeptCode);
          FGetDeptBranchCodeCommand.ExecuteUpdate;
          Result := FGetDeptBranchCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmDeptsTreeProxyClient.GetNodeData(ANodeID: Integer; out NodeName: string; out NodeNo: Double);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNodeDataCommand = nil) or CommandRecreateNeeded(FGetNodeDataCommand) then
          begin
            FreeAndNil(FGetNodeDataCommand);
            FGetNodeDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNodeDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNodeDataCommand.Text := 'TdmDeptsTreeProxy.GetNodeData';
            FGetNodeDataCommand.Prepare;
            CommandRecreated(FGetNodeDataCommand);
          end;
          FGetNodeDataCommand.Parameters[0].Value.SetInt32(ANodeID);
          FGetNodeDataCommand.ExecuteUpdate;
          NodeName := FGetNodeDataCommand.Parameters[1].Value.GetWideString;
          NodeNo := FGetNodeDataCommand.Parameters[2].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeptsTreeProxyClient.IsInstance(NodeID: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsInstanceCommand = nil) or CommandRecreateNeeded(FIsInstanceCommand) then
          begin
            FreeAndNil(FIsInstanceCommand);
            FIsInstanceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsInstanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsInstanceCommand.Text := 'TdmDeptsTreeProxy.IsInstance';
            FIsInstanceCommand.Prepare;
            CommandRecreated(FIsInstanceCommand);
          end;
          FIsInstanceCommand.Parameters[0].Value.SetInt32(NodeID);
          FIsInstanceCommand.ExecuteUpdate;
          Result := FIsInstanceCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeptsTreeProxyClient.IsDescendantOf(NodeID: Integer; RootID: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsDescendantOfCommand = nil) or CommandRecreateNeeded(FIsDescendantOfCommand) then
          begin
            FreeAndNil(FIsDescendantOfCommand);
            FIsDescendantOfCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsDescendantOfCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsDescendantOfCommand.Text := 'TdmDeptsTreeProxy.IsDescendantOf';
            FIsDescendantOfCommand.Prepare;
            CommandRecreated(FIsDescendantOfCommand);
          end;
          FIsDescendantOfCommand.Parameters[0].Value.SetInt32(NodeID);
          FIsDescendantOfCommand.Parameters[1].Value.SetInt32(RootID);
          FIsDescendantOfCommand.ExecuteUpdate;
          Result := FIsDescendantOfCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmDeptsTreeProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmDeptsTreeProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmDeptsTreeProxyClient.Destroy;
begin
  FGetDeptDataCommand.DisposeOf;
  FGetDeptIDCommand.DisposeOf;
  FIsDeptStoreCommand.DisposeOf;
  FGetDeptDocCommand.DisposeOf;
  FCheckDeptRelationCommand.DisposeOf;
  FGetStoreFullNameCommand.DisposeOf;
  FGetDeptNameAndDocCommand.DisposeOf;
  FGetDeptPricesCommand.DisposeOf;
  FGetDeptPeriodDataCommand.DisposeOf;
  FGetDeptBranchCodeCommand.DisposeOf;
  FGetNodeDataCommand.DisposeOf;
  FIsInstanceCommand.DisposeOf;
  FIsDescendantOfCommand.DisposeOf;
  inherited;
end;

procedure TdmDeptsTreeEditorProxyClient.GetDeptData(ANodeID: Integer; out NodeName: string; out DeptIdentifier: string; out DeptIsStore: Boolean; out ProductCode: Integer; out ParentNodeID: Integer; out IsRecurrent: Boolean; out BeginDate: TDateTime; out EndDate: TDateTime; out IsExternal: Boolean; out DeptIsFinStore: Boolean; out HasDocumentation: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeptDataCommand = nil) or CommandRecreateNeeded(FGetDeptDataCommand) then
          begin
            FreeAndNil(FGetDeptDataCommand);
            FGetDeptDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeptDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeptDataCommand.Text := 'TdmDeptsTreeEditorProxy.GetDeptData';
            FGetDeptDataCommand.Prepare;
            CommandRecreated(FGetDeptDataCommand);
          end;
          FGetDeptDataCommand.Parameters[0].Value.SetInt32(ANodeID);
          FGetDeptDataCommand.ExecuteUpdate;
          NodeName := FGetDeptDataCommand.Parameters[1].Value.GetWideString;
          DeptIdentifier := FGetDeptDataCommand.Parameters[2].Value.GetWideString;
          DeptIsStore := FGetDeptDataCommand.Parameters[3].Value.GetBoolean;
          ProductCode := FGetDeptDataCommand.Parameters[4].Value.GetInt32;
          ParentNodeID := FGetDeptDataCommand.Parameters[5].Value.GetInt32;
          IsRecurrent := FGetDeptDataCommand.Parameters[6].Value.GetBoolean;
          BeginDate := FGetDeptDataCommand.Parameters[7].Value.AsDateTime;
          EndDate := FGetDeptDataCommand.Parameters[8].Value.AsDateTime;
          IsExternal := FGetDeptDataCommand.Parameters[9].Value.GetBoolean;
          DeptIsFinStore := FGetDeptDataCommand.Parameters[10].Value.GetBoolean;
          HasDocumentation := FGetDeptDataCommand.Parameters[11].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeptsTreeEditorProxyClient.GetDeptID(DeptIdentifier: string): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeptIDCommand = nil) or CommandRecreateNeeded(FGetDeptIDCommand) then
          begin
            FreeAndNil(FGetDeptIDCommand);
            FGetDeptIDCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeptIDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeptIDCommand.Text := 'TdmDeptsTreeEditorProxy.GetDeptID';
            FGetDeptIDCommand.Prepare;
            CommandRecreated(FGetDeptIDCommand);
          end;
          FGetDeptIDCommand.Parameters[0].Value.SetWideString(DeptIdentifier);
          FGetDeptIDCommand.ExecuteUpdate;
          Result := FGetDeptIDCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeptsTreeEditorProxyClient.IsDeptStore(ADeptCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsDeptStoreCommand = nil) or CommandRecreateNeeded(FIsDeptStoreCommand) then
          begin
            FreeAndNil(FIsDeptStoreCommand);
            FIsDeptStoreCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsDeptStoreCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsDeptStoreCommand.Text := 'TdmDeptsTreeEditorProxy.IsDeptStore';
            FIsDeptStoreCommand.Prepare;
            CommandRecreated(FIsDeptStoreCommand);
          end;
          FIsDeptStoreCommand.Parameters[0].Value.SetInt32(ADeptCode);
          FIsDeptStoreCommand.ExecuteUpdate;
          Result := FIsDeptStoreCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmDeptsTreeEditorProxyClient.GetDeptDoc(DeptCode: Integer; out DocBranchCode: Integer; out DocCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeptDocCommand = nil) or CommandRecreateNeeded(FGetDeptDocCommand) then
          begin
            FreeAndNil(FGetDeptDocCommand);
            FGetDeptDocCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeptDocCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeptDocCommand.Text := 'TdmDeptsTreeEditorProxy.GetDeptDoc';
            FGetDeptDocCommand.Prepare;
            CommandRecreated(FGetDeptDocCommand);
          end;
          FGetDeptDocCommand.Parameters[0].Value.SetInt32(DeptCode);
          FGetDeptDocCommand.ExecuteUpdate;
          DocBranchCode := FGetDeptDocCommand.Parameters[1].Value.GetInt32;
          DocCode := FGetDeptDocCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeptsTreeEditorProxyClient.CheckDeptRelation(NewDeptCode: Integer; OldDeptCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FCheckDeptRelationCommand = nil) or CommandRecreateNeeded(FCheckDeptRelationCommand) then
          begin
            FreeAndNil(FCheckDeptRelationCommand);
            FCheckDeptRelationCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FCheckDeptRelationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FCheckDeptRelationCommand.Text := 'TdmDeptsTreeEditorProxy.CheckDeptRelation';
            FCheckDeptRelationCommand.Prepare;
            CommandRecreated(FCheckDeptRelationCommand);
          end;
          FCheckDeptRelationCommand.Parameters[0].Value.SetInt32(NewDeptCode);
          FCheckDeptRelationCommand.Parameters[1].Value.SetInt32(OldDeptCode);
          FCheckDeptRelationCommand.ExecuteUpdate;
          Result := FCheckDeptRelationCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeptsTreeEditorProxyClient.GetStoreFullName(StoreCode: Integer): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetStoreFullNameCommand = nil) or CommandRecreateNeeded(FGetStoreFullNameCommand) then
          begin
            FreeAndNil(FGetStoreFullNameCommand);
            FGetStoreFullNameCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetStoreFullNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetStoreFullNameCommand.Text := 'TdmDeptsTreeEditorProxy.GetStoreFullName';
            FGetStoreFullNameCommand.Prepare;
            CommandRecreated(FGetStoreFullNameCommand);
          end;
          FGetStoreFullNameCommand.Parameters[0].Value.SetInt32(StoreCode);
          FGetStoreFullNameCommand.ExecuteUpdate;
          Result := FGetStoreFullNameCommand.Parameters[1].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmDeptsTreeEditorProxyClient.GetDeptNameAndDoc(DeptCode: Integer; out DeptName: string; out DeptNo: string; out DocBranchCode: Integer; out DocCode: Integer; out HasDocumentation: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeptNameAndDocCommand = nil) or CommandRecreateNeeded(FGetDeptNameAndDocCommand) then
          begin
            FreeAndNil(FGetDeptNameAndDocCommand);
            FGetDeptNameAndDocCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeptNameAndDocCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeptNameAndDocCommand.Text := 'TdmDeptsTreeEditorProxy.GetDeptNameAndDoc';
            FGetDeptNameAndDocCommand.Prepare;
            CommandRecreated(FGetDeptNameAndDocCommand);
          end;
          FGetDeptNameAndDocCommand.Parameters[0].Value.SetInt32(DeptCode);
          FGetDeptNameAndDocCommand.ExecuteUpdate;
          DeptName := FGetDeptNameAndDocCommand.Parameters[1].Value.GetWideString;
          DeptNo := FGetDeptNameAndDocCommand.Parameters[2].Value.GetWideString;
          DocBranchCode := FGetDeptNameAndDocCommand.Parameters[3].Value.GetInt32;
          DocCode := FGetDeptNameAndDocCommand.Parameters[4].Value.GetInt32;
          HasDocumentation := FGetDeptNameAndDocCommand.Parameters[5].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmDeptsTreeEditorProxyClient.GetDeptPrices(DeptCode: Integer; PricesDate: TDateTime; out HourPrice: Double; out MaintainanceHourPrice: Double; out ParallelProcessCount: Double; out ParallelOperatorCount: Double);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeptPricesCommand = nil) or CommandRecreateNeeded(FGetDeptPricesCommand) then
          begin
            FreeAndNil(FGetDeptPricesCommand);
            FGetDeptPricesCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeptPricesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeptPricesCommand.Text := 'TdmDeptsTreeEditorProxy.GetDeptPrices';
            FGetDeptPricesCommand.Prepare;
            CommandRecreated(FGetDeptPricesCommand);
          end;
          FGetDeptPricesCommand.Parameters[0].Value.SetInt32(DeptCode);
          FGetDeptPricesCommand.Parameters[1].Value.AsDateTime := PricesDate;
          FGetDeptPricesCommand.ExecuteUpdate;
          HourPrice := FGetDeptPricesCommand.Parameters[2].Value.GetDouble;
          MaintainanceHourPrice := FGetDeptPricesCommand.Parameters[3].Value.GetDouble;
          ParallelProcessCount := FGetDeptPricesCommand.Parameters[4].Value.GetDouble;
          ParallelOperatorCount := FGetDeptPricesCommand.Parameters[5].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmDeptsTreeEditorProxyClient.GetDeptPeriodData(DeptCode: Integer; ADate: TDateTime; out ParallelProcessCount: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeptPeriodDataCommand = nil) or CommandRecreateNeeded(FGetDeptPeriodDataCommand) then
          begin
            FreeAndNil(FGetDeptPeriodDataCommand);
            FGetDeptPeriodDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeptPeriodDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeptPeriodDataCommand.Text := 'TdmDeptsTreeEditorProxy.GetDeptPeriodData';
            FGetDeptPeriodDataCommand.Prepare;
            CommandRecreated(FGetDeptPeriodDataCommand);
          end;
          FGetDeptPeriodDataCommand.Parameters[0].Value.SetInt32(DeptCode);
          FGetDeptPeriodDataCommand.Parameters[1].Value.AsDateTime := ADate;
          FGetDeptPeriodDataCommand.ExecuteUpdate;
          ParallelProcessCount := FGetDeptPeriodDataCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeptsTreeEditorProxyClient.GetDeptBranchCode(ADeptCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeptBranchCodeCommand = nil) or CommandRecreateNeeded(FGetDeptBranchCodeCommand) then
          begin
            FreeAndNil(FGetDeptBranchCodeCommand);
            FGetDeptBranchCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeptBranchCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeptBranchCodeCommand.Text := 'TdmDeptsTreeEditorProxy.GetDeptBranchCode';
            FGetDeptBranchCodeCommand.Prepare;
            CommandRecreated(FGetDeptBranchCodeCommand);
          end;
          FGetDeptBranchCodeCommand.Parameters[0].Value.SetInt32(ADeptCode);
          FGetDeptBranchCodeCommand.ExecuteUpdate;
          Result := FGetDeptBranchCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmDeptsTreeEditorProxyClient.GetNodeData(ANodeID: Integer; out NodeName: string; out NodeNo: Double);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNodeDataCommand = nil) or CommandRecreateNeeded(FGetNodeDataCommand) then
          begin
            FreeAndNil(FGetNodeDataCommand);
            FGetNodeDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNodeDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNodeDataCommand.Text := 'TdmDeptsTreeEditorProxy.GetNodeData';
            FGetNodeDataCommand.Prepare;
            CommandRecreated(FGetNodeDataCommand);
          end;
          FGetNodeDataCommand.Parameters[0].Value.SetInt32(ANodeID);
          FGetNodeDataCommand.ExecuteUpdate;
          NodeName := FGetNodeDataCommand.Parameters[1].Value.GetWideString;
          NodeNo := FGetNodeDataCommand.Parameters[2].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeptsTreeEditorProxyClient.IsInstance(NodeID: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsInstanceCommand = nil) or CommandRecreateNeeded(FIsInstanceCommand) then
          begin
            FreeAndNil(FIsInstanceCommand);
            FIsInstanceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsInstanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsInstanceCommand.Text := 'TdmDeptsTreeEditorProxy.IsInstance';
            FIsInstanceCommand.Prepare;
            CommandRecreated(FIsInstanceCommand);
          end;
          FIsInstanceCommand.Parameters[0].Value.SetInt32(NodeID);
          FIsInstanceCommand.ExecuteUpdate;
          Result := FIsInstanceCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDeptsTreeEditorProxyClient.IsDescendantOf(NodeID: Integer; RootID: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsDescendantOfCommand = nil) or CommandRecreateNeeded(FIsDescendantOfCommand) then
          begin
            FreeAndNil(FIsDescendantOfCommand);
            FIsDescendantOfCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsDescendantOfCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsDescendantOfCommand.Text := 'TdmDeptsTreeEditorProxy.IsDescendantOf';
            FIsDescendantOfCommand.Prepare;
            CommandRecreated(FIsDescendantOfCommand);
          end;
          FIsDescendantOfCommand.Parameters[0].Value.SetInt32(NodeID);
          FIsDescendantOfCommand.Parameters[1].Value.SetInt32(RootID);
          FIsDescendantOfCommand.ExecuteUpdate;
          Result := FIsDescendantOfCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmDeptsTreeEditorProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmDeptsTreeEditorProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmDeptsTreeEditorProxyClient.Destroy;
begin
  FGetDeptDataCommand.DisposeOf;
  FGetDeptIDCommand.DisposeOf;
  FIsDeptStoreCommand.DisposeOf;
  FGetDeptDocCommand.DisposeOf;
  FCheckDeptRelationCommand.DisposeOf;
  FGetStoreFullNameCommand.DisposeOf;
  FGetDeptNameAndDocCommand.DisposeOf;
  FGetDeptPricesCommand.DisposeOf;
  FGetDeptPeriodDataCommand.DisposeOf;
  FGetDeptBranchCodeCommand.DisposeOf;
  FGetNodeDataCommand.DisposeOf;
  FIsInstanceCommand.DisposeOf;
  FIsDescendantOfCommand.DisposeOf;
  inherited;
end;

function TdmGroupSalesProxyClient.GetNewSaleRequestNo(RequestBranchCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewSaleRequestNoCommand = nil) or CommandRecreateNeeded(FGetNewSaleRequestNoCommand) then
          begin
            FreeAndNil(FGetNewSaleRequestNoCommand);
            FGetNewSaleRequestNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewSaleRequestNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewSaleRequestNoCommand.Text := 'TdmGroupSalesProxy.GetNewSaleRequestNo';
            FGetNewSaleRequestNoCommand.Prepare;
            CommandRecreated(FGetNewSaleRequestNoCommand);
          end;
          FGetNewSaleRequestNoCommand.Parameters[0].Value.SetInt32(RequestBranchCode);
          FGetNewSaleRequestNoCommand.ExecuteUpdate;
          Result := FGetNewSaleRequestNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmGroupSalesProxyClient.GetNewSaleNo(SaleBranchCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewSaleNoCommand = nil) or CommandRecreateNeeded(FGetNewSaleNoCommand) then
          begin
            FreeAndNil(FGetNewSaleNoCommand);
            FGetNewSaleNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewSaleNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewSaleNoCommand.Text := 'TdmGroupSalesProxy.GetNewSaleNo';
            FGetNewSaleNoCommand.Prepare;
            CommandRecreated(FGetNewSaleNoCommand);
          end;
          FGetNewSaleNoCommand.Parameters[0].Value.SetInt32(SaleBranchCode);
          FGetNewSaleNoCommand.ExecuteUpdate;
          Result := FGetNewSaleNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmGroupSalesProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmGroupSalesProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmGroupSalesProxyClient.Destroy;
begin
  FGetNewSaleRequestNoCommand.DisposeOf;
  FGetNewSaleNoCommand.DisposeOf;
  inherited;
end;

function TdmInvoicesProxyClient.TotalInvoicePrice(IsProformInvoice: Boolean; InvoiceNo: Integer; SellerCompanyCode: Integer): OleVariant;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FTotalInvoicePriceCommand = nil) or CommandRecreateNeeded(FTotalInvoicePriceCommand) then
          begin
            FreeAndNil(FTotalInvoicePriceCommand);
            FTotalInvoicePriceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FTotalInvoicePriceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FTotalInvoicePriceCommand.Text := 'TdmInvoicesProxy.TotalInvoicePrice';
            FTotalInvoicePriceCommand.Prepare;
            CommandRecreated(FTotalInvoicePriceCommand);
          end;
          FTotalInvoicePriceCommand.Parameters[0].Value.SetBoolean(IsProformInvoice);
          FTotalInvoicePriceCommand.Parameters[1].Value.SetInt32(InvoiceNo);
          FTotalInvoicePriceCommand.Parameters[2].Value.SetInt32(SellerCompanyCode);
          FTotalInvoicePriceCommand.ExecuteUpdate;
          Result := FTotalInvoicePriceCommand.Parameters[3].Value.AsVariant;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmInvoicesProxyClient.GetNewInvoiceNo(IsProformInvoice: Boolean; InvoiceTypeCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewInvoiceNoCommand = nil) or CommandRecreateNeeded(FGetNewInvoiceNoCommand) then
          begin
            FreeAndNil(FGetNewInvoiceNoCommand);
            FGetNewInvoiceNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewInvoiceNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewInvoiceNoCommand.Text := 'TdmInvoicesProxy.GetNewInvoiceNo';
            FGetNewInvoiceNoCommand.Prepare;
            CommandRecreated(FGetNewInvoiceNoCommand);
          end;
          FGetNewInvoiceNoCommand.Parameters[0].Value.SetBoolean(IsProformInvoice);
          FGetNewInvoiceNoCommand.Parameters[1].Value.SetInt32(InvoiceTypeCode);
          FGetNewInvoiceNoCommand.ExecuteUpdate;
          Result := FGetNewInvoiceNoCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmInvoicesProxyClient.GenerateInvoiceNo(InvoiceDate: TDateTime; DeptCode: Integer; InvoiceTypeCode: Integer; IsProformInvoice: Boolean; CurrencyCode: Integer; IsApproved: Boolean; OldInvoiceNoGeneratorCode: Integer; OldInvoiceNo: Double): Double;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGenerateInvoiceNoCommand = nil) or CommandRecreateNeeded(FGenerateInvoiceNoCommand) then
          begin
            FreeAndNil(FGenerateInvoiceNoCommand);
            FGenerateInvoiceNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGenerateInvoiceNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGenerateInvoiceNoCommand.Text := 'TdmInvoicesProxy.GenerateInvoiceNo';
            FGenerateInvoiceNoCommand.Prepare;
            CommandRecreated(FGenerateInvoiceNoCommand);
          end;
          FGenerateInvoiceNoCommand.Parameters[0].Value.AsDateTime := InvoiceDate;
          FGenerateInvoiceNoCommand.Parameters[1].Value.SetInt32(DeptCode);
          FGenerateInvoiceNoCommand.Parameters[2].Value.SetInt32(InvoiceTypeCode);
          FGenerateInvoiceNoCommand.Parameters[3].Value.SetBoolean(IsProformInvoice);
          FGenerateInvoiceNoCommand.Parameters[4].Value.SetInt32(CurrencyCode);
          FGenerateInvoiceNoCommand.Parameters[5].Value.SetBoolean(IsApproved);
          FGenerateInvoiceNoCommand.Parameters[6].Value.SetInt32(OldInvoiceNoGeneratorCode);
          FGenerateInvoiceNoCommand.Parameters[7].Value.SetDouble(OldInvoiceNo);
          FGenerateInvoiceNoCommand.ExecuteUpdate;
          Result := FGenerateInvoiceNoCommand.Parameters[8].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmInvoicesProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmInvoicesProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmInvoicesProxyClient.Destroy;
begin
  FTotalInvoicePriceCommand.DisposeOf;
  FGetNewInvoiceNoCommand.DisposeOf;
  FGenerateInvoiceNoCommand.DisposeOf;
  inherited;
end;

procedure TdmLoginProxyClient.ResetUserToolbars(EmployeeCode: Integer; CrossStateCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FResetUserToolbarsCommand = nil) or CommandRecreateNeeded(FResetUserToolbarsCommand) then
          begin
            FreeAndNil(FResetUserToolbarsCommand);
            FResetUserToolbarsCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FResetUserToolbarsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FResetUserToolbarsCommand.Text := 'TdmLoginProxy.ResetUserToolbars';
            FResetUserToolbarsCommand.Prepare;
            CommandRecreated(FResetUserToolbarsCommand);
          end;
          FResetUserToolbarsCommand.Parameters[0].Value.SetInt32(EmployeeCode);
          FResetUserToolbarsCommand.Parameters[1].Value.SetInt32(CrossStateCode);
          FResetUserToolbarsCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmLoginProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmLoginProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmLoginProxyClient.Destroy;
begin
  FResetUserToolbarsCommand.DisposeOf;
  inherited;
end;

function TdmProductsTreeProxyClient.GetProductDefaultStore(ProductCode: Integer; DeptCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductDefaultStoreCommand = nil) or CommandRecreateNeeded(FGetProductDefaultStoreCommand) then
          begin
            FreeAndNil(FGetProductDefaultStoreCommand);
            FGetProductDefaultStoreCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductDefaultStoreCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductDefaultStoreCommand.Text := 'TdmProductsTreeProxy.GetProductDefaultStore';
            FGetProductDefaultStoreCommand.Prepare;
            CommandRecreated(FGetProductDefaultStoreCommand);
          end;
          FGetProductDefaultStoreCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductDefaultStoreCommand.Parameters[1].Value.SetInt32(DeptCode);
          FGetProductDefaultStoreCommand.ExecuteUpdate;
          Result := FGetProductDefaultStoreCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductsTreeProxyClient.GetCompanyProductName(CompanyCode: Integer; ProductCode: Integer): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetCompanyProductNameCommand = nil) or CommandRecreateNeeded(FGetCompanyProductNameCommand) then
          begin
            FreeAndNil(FGetCompanyProductNameCommand);
            FGetCompanyProductNameCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetCompanyProductNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetCompanyProductNameCommand.Text := 'TdmProductsTreeProxy.GetCompanyProductName';
            FGetCompanyProductNameCommand.Prepare;
            CommandRecreated(FGetCompanyProductNameCommand);
          end;
          FGetCompanyProductNameCommand.Parameters[0].Value.SetInt32(CompanyCode);
          FGetCompanyProductNameCommand.Parameters[1].Value.SetInt32(ProductCode);
          FGetCompanyProductNameCommand.ExecuteUpdate;
          Result := FGetCompanyProductNameCommand.Parameters[2].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductsTreeProxyClient.GetProductData(ANodeID: Integer; out NodeName: string; out NodeNo: Double; out WorkMeasureCode: Integer; out AccountMeasureCode: Integer; out AccountMeasureCoef: Double; out TechMeasureCode: Integer; out TechMeasureCoef: Double; out EstimatedSecondaryPrice: Double; out MarketSecondaryPrice: Double; out IsVatFree: Boolean; out HasDocumentation: Boolean; out TransportMeasureCode: Integer; out TransportMeasureCoef: Double; out SelfExistentStatusCode: Integer; out IsGroup: Boolean; out TransientStatusCode: Integer; out WorkdaysToExist: Integer; out ParentNodeID: Integer; out IsInactive: Boolean; out IsSelfApproved: Boolean; out SaleLeaseSecondaryPrice: Double; out SaleLeaseDateUnitCode: Integer; out ProductSpecRequirementCode: Integer; out BOIOrderTypeCode: Integer; out CommonStatusCode: Integer; out HasSpec: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductDataCommand = nil) or CommandRecreateNeeded(FGetProductDataCommand) then
          begin
            FreeAndNil(FGetProductDataCommand);
            FGetProductDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductDataCommand.Text := 'TdmProductsTreeProxy.GetProductData';
            FGetProductDataCommand.Prepare;
            CommandRecreated(FGetProductDataCommand);
          end;
          FGetProductDataCommand.Parameters[0].Value.SetInt32(ANodeID);
          FGetProductDataCommand.ExecuteUpdate;
          NodeName := FGetProductDataCommand.Parameters[1].Value.GetWideString;
          NodeNo := FGetProductDataCommand.Parameters[2].Value.GetDouble;
          WorkMeasureCode := FGetProductDataCommand.Parameters[3].Value.GetInt32;
          AccountMeasureCode := FGetProductDataCommand.Parameters[4].Value.GetInt32;
          AccountMeasureCoef := FGetProductDataCommand.Parameters[5].Value.GetDouble;
          TechMeasureCode := FGetProductDataCommand.Parameters[6].Value.GetInt32;
          TechMeasureCoef := FGetProductDataCommand.Parameters[7].Value.GetDouble;
          EstimatedSecondaryPrice := FGetProductDataCommand.Parameters[8].Value.GetDouble;
          MarketSecondaryPrice := FGetProductDataCommand.Parameters[9].Value.GetDouble;
          IsVatFree := FGetProductDataCommand.Parameters[10].Value.GetBoolean;
          HasDocumentation := FGetProductDataCommand.Parameters[11].Value.GetBoolean;
          TransportMeasureCode := FGetProductDataCommand.Parameters[12].Value.GetInt32;
          TransportMeasureCoef := FGetProductDataCommand.Parameters[13].Value.GetDouble;
          SelfExistentStatusCode := FGetProductDataCommand.Parameters[14].Value.GetInt32;
          IsGroup := FGetProductDataCommand.Parameters[15].Value.GetBoolean;
          TransientStatusCode := FGetProductDataCommand.Parameters[16].Value.GetInt32;
          WorkdaysToExist := FGetProductDataCommand.Parameters[17].Value.GetInt32;
          ParentNodeID := FGetProductDataCommand.Parameters[18].Value.GetInt32;
          IsInactive := FGetProductDataCommand.Parameters[19].Value.GetBoolean;
          IsSelfApproved := FGetProductDataCommand.Parameters[20].Value.GetBoolean;
          SaleLeaseSecondaryPrice := FGetProductDataCommand.Parameters[21].Value.GetDouble;
          SaleLeaseDateUnitCode := FGetProductDataCommand.Parameters[22].Value.GetInt32;
          ProductSpecRequirementCode := FGetProductDataCommand.Parameters[23].Value.GetInt32;
          BOIOrderTypeCode := FGetProductDataCommand.Parameters[24].Value.GetInt32;
          CommonStatusCode := FGetProductDataCommand.Parameters[25].Value.GetInt32;
          HasSpec := FGetProductDataCommand.Parameters[26].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductsTreeProxyClient.GetProductDoc(ProductCode: Integer; out DocBranchCode: Integer; out DocCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductDocCommand = nil) or CommandRecreateNeeded(FGetProductDocCommand) then
          begin
            FreeAndNil(FGetProductDocCommand);
            FGetProductDocCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductDocCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductDocCommand.Text := 'TdmProductsTreeProxy.GetProductDoc';
            FGetProductDocCommand.Prepare;
            CommandRecreated(FGetProductDocCommand);
          end;
          FGetProductDocCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductDocCommand.ExecuteUpdate;
          DocBranchCode := FGetProductDocCommand.Parameters[1].Value.GetInt32;
          DocCode := FGetProductDocCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductsTreeProxyClient.CheckProductRelation(NewProductCode: Integer; OldProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FCheckProductRelationCommand = nil) or CommandRecreateNeeded(FCheckProductRelationCommand) then
          begin
            FreeAndNil(FCheckProductRelationCommand);
            FCheckProductRelationCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FCheckProductRelationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FCheckProductRelationCommand.Text := 'TdmProductsTreeProxy.CheckProductRelation';
            FCheckProductRelationCommand.Prepare;
            CommandRecreated(FCheckProductRelationCommand);
          end;
          FCheckProductRelationCommand.Parameters[0].Value.SetInt32(NewProductCode);
          FCheckProductRelationCommand.Parameters[1].Value.SetInt32(OldProductCode);
          FCheckProductRelationCommand.ExecuteUpdate;
          Result := FCheckProductRelationCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductsTreeProxyClient.GetProductParam(AProductCode: Integer; AParamCode: Integer; out ParamName: string; out ParamAbbrev: string; out ParamOrderNo: Integer; out ValueType: Integer; out NomCode: Integer; out DocBranchCode: Integer; out DocCode: Integer; out HasDocItems: Boolean; out NomDocBranchCode: Integer; out NomDocCode: Integer; out NomHasDocItems: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductParamCommand = nil) or CommandRecreateNeeded(FGetProductParamCommand) then
          begin
            FreeAndNil(FGetProductParamCommand);
            FGetProductParamCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductParamCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductParamCommand.Text := 'TdmProductsTreeProxy.GetProductParam';
            FGetProductParamCommand.Prepare;
            CommandRecreated(FGetProductParamCommand);
          end;
          FGetProductParamCommand.Parameters[0].Value.SetInt32(AProductCode);
          FGetProductParamCommand.Parameters[1].Value.SetInt32(AParamCode);
          FGetProductParamCommand.ExecuteUpdate;
          ParamName := FGetProductParamCommand.Parameters[2].Value.GetWideString;
          ParamAbbrev := FGetProductParamCommand.Parameters[3].Value.GetWideString;
          ParamOrderNo := FGetProductParamCommand.Parameters[4].Value.GetInt32;
          ValueType := FGetProductParamCommand.Parameters[5].Value.GetInt32;
          NomCode := FGetProductParamCommand.Parameters[6].Value.GetInt32;
          DocBranchCode := FGetProductParamCommand.Parameters[7].Value.GetInt32;
          DocCode := FGetProductParamCommand.Parameters[8].Value.GetInt32;
          HasDocItems := FGetProductParamCommand.Parameters[9].Value.GetBoolean;
          NomDocBranchCode := FGetProductParamCommand.Parameters[10].Value.GetInt32;
          NomDocCode := FGetProductParamCommand.Parameters[11].Value.GetInt32;
          NomHasDocItems := FGetProductParamCommand.Parameters[12].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductsTreeProxyClient.GetProductNameAndDoc(ProductCode: Integer; out ProductName: string; out ProductNo: Double; out DocBranchCode: Integer; out DocCode: Integer; out HasDocumentation: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductNameAndDocCommand = nil) or CommandRecreateNeeded(FGetProductNameAndDocCommand) then
          begin
            FreeAndNil(FGetProductNameAndDocCommand);
            FGetProductNameAndDocCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductNameAndDocCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductNameAndDocCommand.Text := 'TdmProductsTreeProxy.GetProductNameAndDoc';
            FGetProductNameAndDocCommand.Prepare;
            CommandRecreated(FGetProductNameAndDocCommand);
          end;
          FGetProductNameAndDocCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductNameAndDocCommand.ExecuteUpdate;
          ProductName := FGetProductNameAndDocCommand.Parameters[1].Value.GetWideString;
          ProductNo := FGetProductNameAndDocCommand.Parameters[2].Value.GetDouble;
          DocBranchCode := FGetProductNameAndDocCommand.Parameters[3].Value.GetInt32;
          DocCode := FGetProductNameAndDocCommand.Parameters[4].Value.GetInt32;
          HasDocumentation := FGetProductNameAndDocCommand.Parameters[5].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductsTreeProxyClient.GetProductSaleAcquireSinglePrice(ProductCode: Integer; InCurrencyCode: Integer; ToDate: TDateTime; ClientCode: Integer): OleVariant;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductSaleAcquireSinglePriceCommand = nil) or CommandRecreateNeeded(FGetProductSaleAcquireSinglePriceCommand) then
          begin
            FreeAndNil(FGetProductSaleAcquireSinglePriceCommand);
            FGetProductSaleAcquireSinglePriceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductSaleAcquireSinglePriceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductSaleAcquireSinglePriceCommand.Text := 'TdmProductsTreeProxy.GetProductSaleAcquireSinglePrice';
            FGetProductSaleAcquireSinglePriceCommand.Prepare;
            CommandRecreated(FGetProductSaleAcquireSinglePriceCommand);
          end;
          FGetProductSaleAcquireSinglePriceCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductSaleAcquireSinglePriceCommand.Parameters[1].Value.SetInt32(InCurrencyCode);
          FGetProductSaleAcquireSinglePriceCommand.Parameters[2].Value.AsDateTime := ToDate;
          FGetProductSaleAcquireSinglePriceCommand.Parameters[3].Value.SetInt32(ClientCode);
          FGetProductSaleAcquireSinglePriceCommand.ExecuteUpdate;
          Result := FGetProductSaleAcquireSinglePriceCommand.Parameters[4].Value.AsVariant;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductsTreeProxyClient.ProductBorderRelExists(ProductCode: Integer; BorderRelTypeCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FProductBorderRelExistsCommand = nil) or CommandRecreateNeeded(FProductBorderRelExistsCommand) then
          begin
            FreeAndNil(FProductBorderRelExistsCommand);
            FProductBorderRelExistsCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FProductBorderRelExistsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FProductBorderRelExistsCommand.Text := 'TdmProductsTreeProxy.ProductBorderRelExists';
            FProductBorderRelExistsCommand.Prepare;
            CommandRecreated(FProductBorderRelExistsCommand);
          end;
          FProductBorderRelExistsCommand.Parameters[0].Value.SetInt32(ProductCode);
          FProductBorderRelExistsCommand.Parameters[1].Value.SetInt32(BorderRelTypeCode);
          FProductBorderRelExistsCommand.ExecuteUpdate;
          Result := FProductBorderRelExistsCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductsTreeProxyClient.GetProductPrices(ProductCode: Integer; PricesDate: TDateTime; out EstimatedSecondaryPrice: Double; out MarketSecondaryPrice: Double; out InvestmentValue2: Double; out InvestmentValue3: Double; out InvestmentValue4: Double; out InvestmentValue5: Double; out PrecisionLevelCode: Double);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductPricesCommand = nil) or CommandRecreateNeeded(FGetProductPricesCommand) then
          begin
            FreeAndNil(FGetProductPricesCommand);
            FGetProductPricesCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductPricesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductPricesCommand.Text := 'TdmProductsTreeProxy.GetProductPrices';
            FGetProductPricesCommand.Prepare;
            CommandRecreated(FGetProductPricesCommand);
          end;
          FGetProductPricesCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductPricesCommand.Parameters[1].Value.AsDateTime := PricesDate;
          FGetProductPricesCommand.ExecuteUpdate;
          EstimatedSecondaryPrice := FGetProductPricesCommand.Parameters[2].Value.GetDouble;
          MarketSecondaryPrice := FGetProductPricesCommand.Parameters[3].Value.GetDouble;
          InvestmentValue2 := FGetProductPricesCommand.Parameters[4].Value.GetDouble;
          InvestmentValue3 := FGetProductPricesCommand.Parameters[5].Value.GetDouble;
          InvestmentValue4 := FGetProductPricesCommand.Parameters[6].Value.GetDouble;
          InvestmentValue5 := FGetProductPricesCommand.Parameters[7].Value.GetDouble;
          PrecisionLevelCode := FGetProductPricesCommand.Parameters[8].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductsTreeProxyClient.GetProductCode(AProductNo: Double; AProductClass: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductCodeCommand = nil) or CommandRecreateNeeded(FGetProductCodeCommand) then
          begin
            FreeAndNil(FGetProductCodeCommand);
            FGetProductCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductCodeCommand.Text := 'TdmProductsTreeProxy.GetProductCode';
            FGetProductCodeCommand.Prepare;
            CommandRecreated(FGetProductCodeCommand);
          end;
          FGetProductCodeCommand.Parameters[0].Value.SetDouble(AProductNo);
          FGetProductCodeCommand.Parameters[1].Value.SetInt32(AProductClass);
          FGetProductCodeCommand.ExecuteUpdate;
          Result := FGetProductCodeCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductsTreeProxyClient.GetCommonProductCode(ProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetCommonProductCodeCommand = nil) or CommandRecreateNeeded(FGetCommonProductCodeCommand) then
          begin
            FreeAndNil(FGetCommonProductCodeCommand);
            FGetCommonProductCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetCommonProductCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetCommonProductCodeCommand.Text := 'TdmProductsTreeProxy.GetCommonProductCode';
            FGetCommonProductCodeCommand.Prepare;
            CommandRecreated(FGetCommonProductCodeCommand);
          end;
          FGetCommonProductCodeCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetCommonProductCodeCommand.ExecuteUpdate;
          Result := FGetCommonProductCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductsTreeProxyClient.GetThoroughlyEngineeredProductCode(ProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetThoroughlyEngineeredProductCodeCommand = nil) or CommandRecreateNeeded(FGetThoroughlyEngineeredProductCodeCommand) then
          begin
            FreeAndNil(FGetThoroughlyEngineeredProductCodeCommand);
            FGetThoroughlyEngineeredProductCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetThoroughlyEngineeredProductCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetThoroughlyEngineeredProductCodeCommand.Text := 'TdmProductsTreeProxy.GetThoroughlyEngineeredProductCode';
            FGetThoroughlyEngineeredProductCodeCommand.Prepare;
            CommandRecreated(FGetThoroughlyEngineeredProductCodeCommand);
          end;
          FGetThoroughlyEngineeredProductCodeCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetThoroughlyEngineeredProductCodeCommand.ExecuteUpdate;
          Result := FGetThoroughlyEngineeredProductCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductsTreeProxyClient.GetProductDeptOptionsTopDeptCode(AProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductDeptOptionsTopDeptCodeCommand = nil) or CommandRecreateNeeded(FGetProductDeptOptionsTopDeptCodeCommand) then
          begin
            FreeAndNil(FGetProductDeptOptionsTopDeptCodeCommand);
            FGetProductDeptOptionsTopDeptCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductDeptOptionsTopDeptCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductDeptOptionsTopDeptCodeCommand.Text := 'TdmProductsTreeProxy.GetProductDeptOptionsTopDeptCode';
            FGetProductDeptOptionsTopDeptCodeCommand.Prepare;
            CommandRecreated(FGetProductDeptOptionsTopDeptCodeCommand);
          end;
          FGetProductDeptOptionsTopDeptCodeCommand.Parameters[0].Value.SetInt32(AProductCode);
          FGetProductDeptOptionsTopDeptCodeCommand.ExecuteUpdate;
          Result := FGetProductDeptOptionsTopDeptCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductsTreeProxyClient.GetNodeData(ANodeID: Integer; out NodeName: string; out NodeNo: Double);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNodeDataCommand = nil) or CommandRecreateNeeded(FGetNodeDataCommand) then
          begin
            FreeAndNil(FGetNodeDataCommand);
            FGetNodeDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNodeDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNodeDataCommand.Text := 'TdmProductsTreeProxy.GetNodeData';
            FGetNodeDataCommand.Prepare;
            CommandRecreated(FGetNodeDataCommand);
          end;
          FGetNodeDataCommand.Parameters[0].Value.SetInt32(ANodeID);
          FGetNodeDataCommand.ExecuteUpdate;
          NodeName := FGetNodeDataCommand.Parameters[1].Value.GetWideString;
          NodeNo := FGetNodeDataCommand.Parameters[2].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductsTreeProxyClient.IsInstance(NodeID: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsInstanceCommand = nil) or CommandRecreateNeeded(FIsInstanceCommand) then
          begin
            FreeAndNil(FIsInstanceCommand);
            FIsInstanceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsInstanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsInstanceCommand.Text := 'TdmProductsTreeProxy.IsInstance';
            FIsInstanceCommand.Prepare;
            CommandRecreated(FIsInstanceCommand);
          end;
          FIsInstanceCommand.Parameters[0].Value.SetInt32(NodeID);
          FIsInstanceCommand.ExecuteUpdate;
          Result := FIsInstanceCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductsTreeProxyClient.IsDescendantOf(NodeID: Integer; RootID: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsDescendantOfCommand = nil) or CommandRecreateNeeded(FIsDescendantOfCommand) then
          begin
            FreeAndNil(FIsDescendantOfCommand);
            FIsDescendantOfCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsDescendantOfCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsDescendantOfCommand.Text := 'TdmProductsTreeProxy.IsDescendantOf';
            FIsDescendantOfCommand.Prepare;
            CommandRecreated(FIsDescendantOfCommand);
          end;
          FIsDescendantOfCommand.Parameters[0].Value.SetInt32(NodeID);
          FIsDescendantOfCommand.Parameters[1].Value.SetInt32(RootID);
          FIsDescendantOfCommand.ExecuteUpdate;
          Result := FIsDescendantOfCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmProductsTreeProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmProductsTreeProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmProductsTreeProxyClient.Destroy;
begin
  FGetProductDefaultStoreCommand.DisposeOf;
  FGetCompanyProductNameCommand.DisposeOf;
  FGetProductDataCommand.DisposeOf;
  FGetProductDocCommand.DisposeOf;
  FCheckProductRelationCommand.DisposeOf;
  FGetProductParamCommand.DisposeOf;
  FGetProductNameAndDocCommand.DisposeOf;
  FGetProductSaleAcquireSinglePriceCommand.DisposeOf;
  FProductBorderRelExistsCommand.DisposeOf;
  FGetProductPricesCommand.DisposeOf;
  FGetProductCodeCommand.DisposeOf;
  FGetCommonProductCodeCommand.DisposeOf;
  FGetThoroughlyEngineeredProductCodeCommand.DisposeOf;
  FGetProductDeptOptionsTopDeptCodeCommand.DisposeOf;
  FGetNodeDataCommand.DisposeOf;
  FIsInstanceCommand.DisposeOf;
  FIsDescendantOfCommand.DisposeOf;
  inherited;
end;

function TdmProductQuantitiesTreeProxyClient.GetProductDefaultStore(ProductCode: Integer; DeptCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductDefaultStoreCommand = nil) or CommandRecreateNeeded(FGetProductDefaultStoreCommand) then
          begin
            FreeAndNil(FGetProductDefaultStoreCommand);
            FGetProductDefaultStoreCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductDefaultStoreCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductDefaultStoreCommand.Text := 'TdmProductQuantitiesTreeProxy.GetProductDefaultStore';
            FGetProductDefaultStoreCommand.Prepare;
            CommandRecreated(FGetProductDefaultStoreCommand);
          end;
          FGetProductDefaultStoreCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductDefaultStoreCommand.Parameters[1].Value.SetInt32(DeptCode);
          FGetProductDefaultStoreCommand.ExecuteUpdate;
          Result := FGetProductDefaultStoreCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductQuantitiesTreeProxyClient.GetCompanyProductName(CompanyCode: Integer; ProductCode: Integer): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetCompanyProductNameCommand = nil) or CommandRecreateNeeded(FGetCompanyProductNameCommand) then
          begin
            FreeAndNil(FGetCompanyProductNameCommand);
            FGetCompanyProductNameCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetCompanyProductNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetCompanyProductNameCommand.Text := 'TdmProductQuantitiesTreeProxy.GetCompanyProductName';
            FGetCompanyProductNameCommand.Prepare;
            CommandRecreated(FGetCompanyProductNameCommand);
          end;
          FGetCompanyProductNameCommand.Parameters[0].Value.SetInt32(CompanyCode);
          FGetCompanyProductNameCommand.Parameters[1].Value.SetInt32(ProductCode);
          FGetCompanyProductNameCommand.ExecuteUpdate;
          Result := FGetCompanyProductNameCommand.Parameters[2].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductQuantitiesTreeProxyClient.GetProductData(ANodeID: Integer; out NodeName: string; out NodeNo: Double; out WorkMeasureCode: Integer; out AccountMeasureCode: Integer; out AccountMeasureCoef: Double; out TechMeasureCode: Integer; out TechMeasureCoef: Double; out EstimatedSecondaryPrice: Double; out MarketSecondaryPrice: Double; out IsVatFree: Boolean; out HasDocumentation: Boolean; out TransportMeasureCode: Integer; out TransportMeasureCoef: Double; out SelfExistentStatusCode: Integer; out IsGroup: Boolean; out TransientStatusCode: Integer; out WorkdaysToExist: Integer; out ParentNodeID: Integer; out IsInactive: Boolean; out IsSelfApproved: Boolean; out SaleLeaseSecondaryPrice: Double; out SaleLeaseDateUnitCode: Integer; out ProductSpecRequirementCode: Integer; out BOIOrderTypeCode: Integer; out CommonStatusCode: Integer; out HasSpec: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductDataCommand = nil) or CommandRecreateNeeded(FGetProductDataCommand) then
          begin
            FreeAndNil(FGetProductDataCommand);
            FGetProductDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductDataCommand.Text := 'TdmProductQuantitiesTreeProxy.GetProductData';
            FGetProductDataCommand.Prepare;
            CommandRecreated(FGetProductDataCommand);
          end;
          FGetProductDataCommand.Parameters[0].Value.SetInt32(ANodeID);
          FGetProductDataCommand.ExecuteUpdate;
          NodeName := FGetProductDataCommand.Parameters[1].Value.GetWideString;
          NodeNo := FGetProductDataCommand.Parameters[2].Value.GetDouble;
          WorkMeasureCode := FGetProductDataCommand.Parameters[3].Value.GetInt32;
          AccountMeasureCode := FGetProductDataCommand.Parameters[4].Value.GetInt32;
          AccountMeasureCoef := FGetProductDataCommand.Parameters[5].Value.GetDouble;
          TechMeasureCode := FGetProductDataCommand.Parameters[6].Value.GetInt32;
          TechMeasureCoef := FGetProductDataCommand.Parameters[7].Value.GetDouble;
          EstimatedSecondaryPrice := FGetProductDataCommand.Parameters[8].Value.GetDouble;
          MarketSecondaryPrice := FGetProductDataCommand.Parameters[9].Value.GetDouble;
          IsVatFree := FGetProductDataCommand.Parameters[10].Value.GetBoolean;
          HasDocumentation := FGetProductDataCommand.Parameters[11].Value.GetBoolean;
          TransportMeasureCode := FGetProductDataCommand.Parameters[12].Value.GetInt32;
          TransportMeasureCoef := FGetProductDataCommand.Parameters[13].Value.GetDouble;
          SelfExistentStatusCode := FGetProductDataCommand.Parameters[14].Value.GetInt32;
          IsGroup := FGetProductDataCommand.Parameters[15].Value.GetBoolean;
          TransientStatusCode := FGetProductDataCommand.Parameters[16].Value.GetInt32;
          WorkdaysToExist := FGetProductDataCommand.Parameters[17].Value.GetInt32;
          ParentNodeID := FGetProductDataCommand.Parameters[18].Value.GetInt32;
          IsInactive := FGetProductDataCommand.Parameters[19].Value.GetBoolean;
          IsSelfApproved := FGetProductDataCommand.Parameters[20].Value.GetBoolean;
          SaleLeaseSecondaryPrice := FGetProductDataCommand.Parameters[21].Value.GetDouble;
          SaleLeaseDateUnitCode := FGetProductDataCommand.Parameters[22].Value.GetInt32;
          ProductSpecRequirementCode := FGetProductDataCommand.Parameters[23].Value.GetInt32;
          BOIOrderTypeCode := FGetProductDataCommand.Parameters[24].Value.GetInt32;
          CommonStatusCode := FGetProductDataCommand.Parameters[25].Value.GetInt32;
          HasSpec := FGetProductDataCommand.Parameters[26].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductQuantitiesTreeProxyClient.GetProductDoc(ProductCode: Integer; out DocBranchCode: Integer; out DocCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductDocCommand = nil) or CommandRecreateNeeded(FGetProductDocCommand) then
          begin
            FreeAndNil(FGetProductDocCommand);
            FGetProductDocCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductDocCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductDocCommand.Text := 'TdmProductQuantitiesTreeProxy.GetProductDoc';
            FGetProductDocCommand.Prepare;
            CommandRecreated(FGetProductDocCommand);
          end;
          FGetProductDocCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductDocCommand.ExecuteUpdate;
          DocBranchCode := FGetProductDocCommand.Parameters[1].Value.GetInt32;
          DocCode := FGetProductDocCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductQuantitiesTreeProxyClient.CheckProductRelation(NewProductCode: Integer; OldProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FCheckProductRelationCommand = nil) or CommandRecreateNeeded(FCheckProductRelationCommand) then
          begin
            FreeAndNil(FCheckProductRelationCommand);
            FCheckProductRelationCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FCheckProductRelationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FCheckProductRelationCommand.Text := 'TdmProductQuantitiesTreeProxy.CheckProductRelation';
            FCheckProductRelationCommand.Prepare;
            CommandRecreated(FCheckProductRelationCommand);
          end;
          FCheckProductRelationCommand.Parameters[0].Value.SetInt32(NewProductCode);
          FCheckProductRelationCommand.Parameters[1].Value.SetInt32(OldProductCode);
          FCheckProductRelationCommand.ExecuteUpdate;
          Result := FCheckProductRelationCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductQuantitiesTreeProxyClient.GetProductParam(AProductCode: Integer; AParamCode: Integer; out ParamName: string; out ParamAbbrev: string; out ParamOrderNo: Integer; out ValueType: Integer; out NomCode: Integer; out DocBranchCode: Integer; out DocCode: Integer; out HasDocItems: Boolean; out NomDocBranchCode: Integer; out NomDocCode: Integer; out NomHasDocItems: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductParamCommand = nil) or CommandRecreateNeeded(FGetProductParamCommand) then
          begin
            FreeAndNil(FGetProductParamCommand);
            FGetProductParamCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductParamCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductParamCommand.Text := 'TdmProductQuantitiesTreeProxy.GetProductParam';
            FGetProductParamCommand.Prepare;
            CommandRecreated(FGetProductParamCommand);
          end;
          FGetProductParamCommand.Parameters[0].Value.SetInt32(AProductCode);
          FGetProductParamCommand.Parameters[1].Value.SetInt32(AParamCode);
          FGetProductParamCommand.ExecuteUpdate;
          ParamName := FGetProductParamCommand.Parameters[2].Value.GetWideString;
          ParamAbbrev := FGetProductParamCommand.Parameters[3].Value.GetWideString;
          ParamOrderNo := FGetProductParamCommand.Parameters[4].Value.GetInt32;
          ValueType := FGetProductParamCommand.Parameters[5].Value.GetInt32;
          NomCode := FGetProductParamCommand.Parameters[6].Value.GetInt32;
          DocBranchCode := FGetProductParamCommand.Parameters[7].Value.GetInt32;
          DocCode := FGetProductParamCommand.Parameters[8].Value.GetInt32;
          HasDocItems := FGetProductParamCommand.Parameters[9].Value.GetBoolean;
          NomDocBranchCode := FGetProductParamCommand.Parameters[10].Value.GetInt32;
          NomDocCode := FGetProductParamCommand.Parameters[11].Value.GetInt32;
          NomHasDocItems := FGetProductParamCommand.Parameters[12].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductQuantitiesTreeProxyClient.GetProductNameAndDoc(ProductCode: Integer; out ProductName: string; out ProductNo: Double; out DocBranchCode: Integer; out DocCode: Integer; out HasDocumentation: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductNameAndDocCommand = nil) or CommandRecreateNeeded(FGetProductNameAndDocCommand) then
          begin
            FreeAndNil(FGetProductNameAndDocCommand);
            FGetProductNameAndDocCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductNameAndDocCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductNameAndDocCommand.Text := 'TdmProductQuantitiesTreeProxy.GetProductNameAndDoc';
            FGetProductNameAndDocCommand.Prepare;
            CommandRecreated(FGetProductNameAndDocCommand);
          end;
          FGetProductNameAndDocCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductNameAndDocCommand.ExecuteUpdate;
          ProductName := FGetProductNameAndDocCommand.Parameters[1].Value.GetWideString;
          ProductNo := FGetProductNameAndDocCommand.Parameters[2].Value.GetDouble;
          DocBranchCode := FGetProductNameAndDocCommand.Parameters[3].Value.GetInt32;
          DocCode := FGetProductNameAndDocCommand.Parameters[4].Value.GetInt32;
          HasDocumentation := FGetProductNameAndDocCommand.Parameters[5].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductQuantitiesTreeProxyClient.GetProductSaleAcquireSinglePrice(ProductCode: Integer; InCurrencyCode: Integer; ToDate: TDateTime; ClientCode: Integer): OleVariant;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductSaleAcquireSinglePriceCommand = nil) or CommandRecreateNeeded(FGetProductSaleAcquireSinglePriceCommand) then
          begin
            FreeAndNil(FGetProductSaleAcquireSinglePriceCommand);
            FGetProductSaleAcquireSinglePriceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductSaleAcquireSinglePriceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductSaleAcquireSinglePriceCommand.Text := 'TdmProductQuantitiesTreeProxy.GetProductSaleAcquireSinglePrice';
            FGetProductSaleAcquireSinglePriceCommand.Prepare;
            CommandRecreated(FGetProductSaleAcquireSinglePriceCommand);
          end;
          FGetProductSaleAcquireSinglePriceCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductSaleAcquireSinglePriceCommand.Parameters[1].Value.SetInt32(InCurrencyCode);
          FGetProductSaleAcquireSinglePriceCommand.Parameters[2].Value.AsDateTime := ToDate;
          FGetProductSaleAcquireSinglePriceCommand.Parameters[3].Value.SetInt32(ClientCode);
          FGetProductSaleAcquireSinglePriceCommand.ExecuteUpdate;
          Result := FGetProductSaleAcquireSinglePriceCommand.Parameters[4].Value.AsVariant;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductQuantitiesTreeProxyClient.ProductBorderRelExists(ProductCode: Integer; BorderRelTypeCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FProductBorderRelExistsCommand = nil) or CommandRecreateNeeded(FProductBorderRelExistsCommand) then
          begin
            FreeAndNil(FProductBorderRelExistsCommand);
            FProductBorderRelExistsCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FProductBorderRelExistsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FProductBorderRelExistsCommand.Text := 'TdmProductQuantitiesTreeProxy.ProductBorderRelExists';
            FProductBorderRelExistsCommand.Prepare;
            CommandRecreated(FProductBorderRelExistsCommand);
          end;
          FProductBorderRelExistsCommand.Parameters[0].Value.SetInt32(ProductCode);
          FProductBorderRelExistsCommand.Parameters[1].Value.SetInt32(BorderRelTypeCode);
          FProductBorderRelExistsCommand.ExecuteUpdate;
          Result := FProductBorderRelExistsCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductQuantitiesTreeProxyClient.GetProductPrices(ProductCode: Integer; PricesDate: TDateTime; out EstimatedSecondaryPrice: Double; out MarketSecondaryPrice: Double; out InvestmentValue2: Double; out InvestmentValue3: Double; out InvestmentValue4: Double; out InvestmentValue5: Double; out PrecisionLevelCode: Double);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductPricesCommand = nil) or CommandRecreateNeeded(FGetProductPricesCommand) then
          begin
            FreeAndNil(FGetProductPricesCommand);
            FGetProductPricesCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductPricesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductPricesCommand.Text := 'TdmProductQuantitiesTreeProxy.GetProductPrices';
            FGetProductPricesCommand.Prepare;
            CommandRecreated(FGetProductPricesCommand);
          end;
          FGetProductPricesCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductPricesCommand.Parameters[1].Value.AsDateTime := PricesDate;
          FGetProductPricesCommand.ExecuteUpdate;
          EstimatedSecondaryPrice := FGetProductPricesCommand.Parameters[2].Value.GetDouble;
          MarketSecondaryPrice := FGetProductPricesCommand.Parameters[3].Value.GetDouble;
          InvestmentValue2 := FGetProductPricesCommand.Parameters[4].Value.GetDouble;
          InvestmentValue3 := FGetProductPricesCommand.Parameters[5].Value.GetDouble;
          InvestmentValue4 := FGetProductPricesCommand.Parameters[6].Value.GetDouble;
          InvestmentValue5 := FGetProductPricesCommand.Parameters[7].Value.GetDouble;
          PrecisionLevelCode := FGetProductPricesCommand.Parameters[8].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductQuantitiesTreeProxyClient.GetProductCode(AProductNo: Double; AProductClass: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductCodeCommand = nil) or CommandRecreateNeeded(FGetProductCodeCommand) then
          begin
            FreeAndNil(FGetProductCodeCommand);
            FGetProductCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductCodeCommand.Text := 'TdmProductQuantitiesTreeProxy.GetProductCode';
            FGetProductCodeCommand.Prepare;
            CommandRecreated(FGetProductCodeCommand);
          end;
          FGetProductCodeCommand.Parameters[0].Value.SetDouble(AProductNo);
          FGetProductCodeCommand.Parameters[1].Value.SetInt32(AProductClass);
          FGetProductCodeCommand.ExecuteUpdate;
          Result := FGetProductCodeCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductQuantitiesTreeProxyClient.GetCommonProductCode(ProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetCommonProductCodeCommand = nil) or CommandRecreateNeeded(FGetCommonProductCodeCommand) then
          begin
            FreeAndNil(FGetCommonProductCodeCommand);
            FGetCommonProductCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetCommonProductCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetCommonProductCodeCommand.Text := 'TdmProductQuantitiesTreeProxy.GetCommonProductCode';
            FGetCommonProductCodeCommand.Prepare;
            CommandRecreated(FGetCommonProductCodeCommand);
          end;
          FGetCommonProductCodeCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetCommonProductCodeCommand.ExecuteUpdate;
          Result := FGetCommonProductCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductQuantitiesTreeProxyClient.GetThoroughlyEngineeredProductCode(ProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetThoroughlyEngineeredProductCodeCommand = nil) or CommandRecreateNeeded(FGetThoroughlyEngineeredProductCodeCommand) then
          begin
            FreeAndNil(FGetThoroughlyEngineeredProductCodeCommand);
            FGetThoroughlyEngineeredProductCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetThoroughlyEngineeredProductCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetThoroughlyEngineeredProductCodeCommand.Text := 'TdmProductQuantitiesTreeProxy.GetThoroughlyEngineeredProductCode';
            FGetThoroughlyEngineeredProductCodeCommand.Prepare;
            CommandRecreated(FGetThoroughlyEngineeredProductCodeCommand);
          end;
          FGetThoroughlyEngineeredProductCodeCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetThoroughlyEngineeredProductCodeCommand.ExecuteUpdate;
          Result := FGetThoroughlyEngineeredProductCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductQuantitiesTreeProxyClient.GetProductDeptOptionsTopDeptCode(AProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductDeptOptionsTopDeptCodeCommand = nil) or CommandRecreateNeeded(FGetProductDeptOptionsTopDeptCodeCommand) then
          begin
            FreeAndNil(FGetProductDeptOptionsTopDeptCodeCommand);
            FGetProductDeptOptionsTopDeptCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductDeptOptionsTopDeptCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductDeptOptionsTopDeptCodeCommand.Text := 'TdmProductQuantitiesTreeProxy.GetProductDeptOptionsTopDeptCode';
            FGetProductDeptOptionsTopDeptCodeCommand.Prepare;
            CommandRecreated(FGetProductDeptOptionsTopDeptCodeCommand);
          end;
          FGetProductDeptOptionsTopDeptCodeCommand.Parameters[0].Value.SetInt32(AProductCode);
          FGetProductDeptOptionsTopDeptCodeCommand.ExecuteUpdate;
          Result := FGetProductDeptOptionsTopDeptCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductQuantitiesTreeProxyClient.GetNodeData(ANodeID: Integer; out NodeName: string; out NodeNo: Double);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNodeDataCommand = nil) or CommandRecreateNeeded(FGetNodeDataCommand) then
          begin
            FreeAndNil(FGetNodeDataCommand);
            FGetNodeDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNodeDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNodeDataCommand.Text := 'TdmProductQuantitiesTreeProxy.GetNodeData';
            FGetNodeDataCommand.Prepare;
            CommandRecreated(FGetNodeDataCommand);
          end;
          FGetNodeDataCommand.Parameters[0].Value.SetInt32(ANodeID);
          FGetNodeDataCommand.ExecuteUpdate;
          NodeName := FGetNodeDataCommand.Parameters[1].Value.GetWideString;
          NodeNo := FGetNodeDataCommand.Parameters[2].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductQuantitiesTreeProxyClient.IsInstance(NodeID: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsInstanceCommand = nil) or CommandRecreateNeeded(FIsInstanceCommand) then
          begin
            FreeAndNil(FIsInstanceCommand);
            FIsInstanceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsInstanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsInstanceCommand.Text := 'TdmProductQuantitiesTreeProxy.IsInstance';
            FIsInstanceCommand.Prepare;
            CommandRecreated(FIsInstanceCommand);
          end;
          FIsInstanceCommand.Parameters[0].Value.SetInt32(NodeID);
          FIsInstanceCommand.ExecuteUpdate;
          Result := FIsInstanceCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductQuantitiesTreeProxyClient.IsDescendantOf(NodeID: Integer; RootID: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsDescendantOfCommand = nil) or CommandRecreateNeeded(FIsDescendantOfCommand) then
          begin
            FreeAndNil(FIsDescendantOfCommand);
            FIsDescendantOfCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsDescendantOfCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsDescendantOfCommand.Text := 'TdmProductQuantitiesTreeProxy.IsDescendantOf';
            FIsDescendantOfCommand.Prepare;
            CommandRecreated(FIsDescendantOfCommand);
          end;
          FIsDescendantOfCommand.Parameters[0].Value.SetInt32(NodeID);
          FIsDescendantOfCommand.Parameters[1].Value.SetInt32(RootID);
          FIsDescendantOfCommand.ExecuteUpdate;
          Result := FIsDescendantOfCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmProductQuantitiesTreeProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmProductQuantitiesTreeProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmProductQuantitiesTreeProxyClient.Destroy;
begin
  FGetProductDefaultStoreCommand.DisposeOf;
  FGetCompanyProductNameCommand.DisposeOf;
  FGetProductDataCommand.DisposeOf;
  FGetProductDocCommand.DisposeOf;
  FCheckProductRelationCommand.DisposeOf;
  FGetProductParamCommand.DisposeOf;
  FGetProductNameAndDocCommand.DisposeOf;
  FGetProductSaleAcquireSinglePriceCommand.DisposeOf;
  FProductBorderRelExistsCommand.DisposeOf;
  FGetProductPricesCommand.DisposeOf;
  FGetProductCodeCommand.DisposeOf;
  FGetCommonProductCodeCommand.DisposeOf;
  FGetThoroughlyEngineeredProductCodeCommand.DisposeOf;
  FGetProductDeptOptionsTopDeptCodeCommand.DisposeOf;
  FGetNodeDataCommand.DisposeOf;
  FIsInstanceCommand.DisposeOf;
  FIsDescendantOfCommand.DisposeOf;
  inherited;
end;

function TdmProductsTreeEditorProxyClient.GetNewProductSetCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewProductSetCodeCommand = nil) or CommandRecreateNeeded(FGetNewProductSetCodeCommand) then
          begin
            FreeAndNil(FGetNewProductSetCodeCommand);
            FGetNewProductSetCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewProductSetCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewProductSetCodeCommand.Text := 'TdmProductsTreeEditorProxy.GetNewProductSetCode';
            FGetNewProductSetCodeCommand.Prepare;
            CommandRecreated(FGetNewProductSetCodeCommand);
          end;
          FGetNewProductSetCodeCommand.ExecuteUpdate;
          Result := FGetNewProductSetCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductsTreeEditorProxyClient.GetNewProductNo(AParentCode: Integer): Double;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewProductNoCommand = nil) or CommandRecreateNeeded(FGetNewProductNoCommand) then
          begin
            FreeAndNil(FGetNewProductNoCommand);
            FGetNewProductNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewProductNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewProductNoCommand.Text := 'TdmProductsTreeEditorProxy.GetNewProductNo';
            FGetNewProductNoCommand.Prepare;
            CommandRecreated(FGetNewProductNoCommand);
          end;
          FGetNewProductNoCommand.Parameters[0].Value.SetInt32(AParentCode);
          FGetNewProductNoCommand.ExecuteUpdate;
          Result := FGetNewProductNoCommand.Parameters[1].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductsTreeEditorProxyClient.GetNodeData(ANodeID: Integer; out NodeName: string; out NodeNo: Double);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNodeDataCommand = nil) or CommandRecreateNeeded(FGetNodeDataCommand) then
          begin
            FreeAndNil(FGetNodeDataCommand);
            FGetNodeDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNodeDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNodeDataCommand.Text := 'TdmProductsTreeEditorProxy.GetNodeData';
            FGetNodeDataCommand.Prepare;
            CommandRecreated(FGetNodeDataCommand);
          end;
          FGetNodeDataCommand.Parameters[0].Value.SetInt32(ANodeID);
          FGetNodeDataCommand.ExecuteUpdate;
          NodeName := FGetNodeDataCommand.Parameters[1].Value.GetWideString;
          NodeNo := FGetNodeDataCommand.Parameters[2].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductsTreeEditorProxyClient.IsInstance(NodeID: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsInstanceCommand = nil) or CommandRecreateNeeded(FIsInstanceCommand) then
          begin
            FreeAndNil(FIsInstanceCommand);
            FIsInstanceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsInstanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsInstanceCommand.Text := 'TdmProductsTreeEditorProxy.IsInstance';
            FIsInstanceCommand.Prepare;
            CommandRecreated(FIsInstanceCommand);
          end;
          FIsInstanceCommand.Parameters[0].Value.SetInt32(NodeID);
          FIsInstanceCommand.ExecuteUpdate;
          Result := FIsInstanceCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductsTreeEditorProxyClient.IsDescendantOf(NodeID: Integer; RootID: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsDescendantOfCommand = nil) or CommandRecreateNeeded(FIsDescendantOfCommand) then
          begin
            FreeAndNil(FIsDescendantOfCommand);
            FIsDescendantOfCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsDescendantOfCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsDescendantOfCommand.Text := 'TdmProductsTreeEditorProxy.IsDescendantOf';
            FIsDescendantOfCommand.Prepare;
            CommandRecreated(FIsDescendantOfCommand);
          end;
          FIsDescendantOfCommand.Parameters[0].Value.SetInt32(NodeID);
          FIsDescendantOfCommand.Parameters[1].Value.SetInt32(RootID);
          FIsDescendantOfCommand.ExecuteUpdate;
          Result := FIsDescendantOfCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmProductsTreeEditorProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmProductsTreeEditorProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmProductsTreeEditorProxyClient.Destroy;
begin
  FGetNewProductSetCodeCommand.DisposeOf;
  FGetNewProductNoCommand.DisposeOf;
  FGetNodeDataCommand.DisposeOf;
  FIsInstanceCommand.DisposeOf;
  FIsDescendantOfCommand.DisposeOf;
  inherited;
end;

function TdmSaleOrdersProxyClient.GetNewRequestNo(RequestBranchCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewRequestNoCommand = nil) or CommandRecreateNeeded(FGetNewRequestNoCommand) then
          begin
            FreeAndNil(FGetNewRequestNoCommand);
            FGetNewRequestNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewRequestNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewRequestNoCommand.Text := 'TdmSaleOrdersProxy.GetNewRequestNo';
            FGetNewRequestNoCommand.Prepare;
            CommandRecreated(FGetNewRequestNoCommand);
          end;
          FGetNewRequestNoCommand.Parameters[0].Value.SetInt32(RequestBranchCode);
          FGetNewRequestNoCommand.ExecuteUpdate;
          Result := FGetNewRequestNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmSaleOrdersProxyClient.GetNewRequestLineNo(RequestBranchCode: Integer; RequestNo: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewRequestLineNoCommand = nil) or CommandRecreateNeeded(FGetNewRequestLineNoCommand) then
          begin
            FreeAndNil(FGetNewRequestLineNoCommand);
            FGetNewRequestLineNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewRequestLineNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewRequestLineNoCommand.Text := 'TdmSaleOrdersProxy.GetNewRequestLineNo';
            FGetNewRequestLineNoCommand.Prepare;
            CommandRecreated(FGetNewRequestLineNoCommand);
          end;
          FGetNewRequestLineNoCommand.Parameters[0].Value.SetInt32(RequestBranchCode);
          FGetNewRequestLineNoCommand.Parameters[1].Value.SetInt32(RequestNo);
          FGetNewRequestLineNoCommand.ExecuteUpdate;
          Result := FGetNewRequestLineNoCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmSaleOrdersProxyClient.GetNewSaleNo(SaleBranchCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewSaleNoCommand = nil) or CommandRecreateNeeded(FGetNewSaleNoCommand) then
          begin
            FreeAndNil(FGetNewSaleNoCommand);
            FGetNewSaleNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewSaleNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewSaleNoCommand.Text := 'TdmSaleOrdersProxy.GetNewSaleNo';
            FGetNewSaleNoCommand.Prepare;
            CommandRecreated(FGetNewSaleNoCommand);
          end;
          FGetNewSaleNoCommand.Parameters[0].Value.SetInt32(SaleBranchCode);
          FGetNewSaleNoCommand.ExecuteUpdate;
          Result := FGetNewSaleNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmSaleOrdersProxyClient.CanAnnulSRG(RequestBranchCode: Integer; RequestNo: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FCanAnnulSRGCommand = nil) or CommandRecreateNeeded(FCanAnnulSRGCommand) then
          begin
            FreeAndNil(FCanAnnulSRGCommand);
            FCanAnnulSRGCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FCanAnnulSRGCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FCanAnnulSRGCommand.Text := 'TdmSaleOrdersProxy.CanAnnulSRG';
            FCanAnnulSRGCommand.Prepare;
            CommandRecreated(FCanAnnulSRGCommand);
          end;
          FCanAnnulSRGCommand.Parameters[0].Value.SetInt32(RequestBranchCode);
          FCanAnnulSRGCommand.Parameters[1].Value.SetInt32(RequestNo);
          FCanAnnulSRGCommand.ExecuteUpdate;
          Result := FCanAnnulSRGCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmSaleOrdersProxyClient.CanFinishSRG(RequestBranchCode: Integer; RequestNo: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FCanFinishSRGCommand = nil) or CommandRecreateNeeded(FCanFinishSRGCommand) then
          begin
            FreeAndNil(FCanFinishSRGCommand);
            FCanFinishSRGCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FCanFinishSRGCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FCanFinishSRGCommand.Text := 'TdmSaleOrdersProxy.CanFinishSRG';
            FCanFinishSRGCommand.Prepare;
            CommandRecreated(FCanFinishSRGCommand);
          end;
          FCanFinishSRGCommand.Parameters[0].Value.SetInt32(RequestBranchCode);
          FCanFinishSRGCommand.Parameters[1].Value.SetInt32(RequestNo);
          FCanFinishSRGCommand.ExecuteUpdate;
          Result := FCanFinishSRGCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmSaleOrdersProxyClient.GetNewSaleDecisionTypeCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewSaleDecisionTypeCodeCommand = nil) or CommandRecreateNeeded(FGetNewSaleDecisionTypeCodeCommand) then
          begin
            FreeAndNil(FGetNewSaleDecisionTypeCodeCommand);
            FGetNewSaleDecisionTypeCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewSaleDecisionTypeCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewSaleDecisionTypeCodeCommand.Text := 'TdmSaleOrdersProxy.GetNewSaleDecisionTypeCode';
            FGetNewSaleDecisionTypeCodeCommand.Prepare;
            CommandRecreated(FGetNewSaleDecisionTypeCodeCommand);
          end;
          FGetNewSaleDecisionTypeCodeCommand.ExecuteUpdate;
          Result := FGetNewSaleDecisionTypeCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmSaleOrdersProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmSaleOrdersProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmSaleOrdersProxyClient.Destroy;
begin
  FGetNewRequestNoCommand.DisposeOf;
  FGetNewRequestLineNoCommand.DisposeOf;
  FGetNewSaleNoCommand.DisposeOf;
  FCanAnnulSRGCommand.DisposeOf;
  FCanFinishSRGCommand.DisposeOf;
  FGetNewSaleDecisionTypeCodeCommand.DisposeOf;
  inherited;
end;

function TdmParRelProductsProxyClient.ParRelProductExists(PartnerCode: Integer; BorderRelTypeCode: Integer; ProductCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FParRelProductExistsCommand = nil) or CommandRecreateNeeded(FParRelProductExistsCommand) then
          begin
            FreeAndNil(FParRelProductExistsCommand);
            FParRelProductExistsCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FParRelProductExistsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FParRelProductExistsCommand.Text := 'TdmParRelProductsProxy.ParRelProductExists';
            FParRelProductExistsCommand.Prepare;
            CommandRecreated(FParRelProductExistsCommand);
          end;
          FParRelProductExistsCommand.Parameters[0].Value.SetInt32(PartnerCode);
          FParRelProductExistsCommand.Parameters[1].Value.SetInt32(BorderRelTypeCode);
          FParRelProductExistsCommand.Parameters[2].Value.SetInt32(ProductCode);
          FParRelProductExistsCommand.ExecuteUpdate;
          Result := FParRelProductExistsCommand.Parameters[3].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmParRelProductsProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmParRelProductsProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmParRelProductsProxyClient.Destroy;
begin
  FParRelProductExistsCommand.DisposeOf;
  inherited;
end;

function TdmSalesProxyClient.GetNewSaleNo(SaleBranchCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewSaleNoCommand = nil) or CommandRecreateNeeded(FGetNewSaleNoCommand) then
          begin
            FreeAndNil(FGetNewSaleNoCommand);
            FGetNewSaleNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewSaleNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewSaleNoCommand.Text := 'TdmSalesProxy.GetNewSaleNo';
            FGetNewSaleNoCommand.Prepare;
            CommandRecreated(FGetNewSaleNoCommand);
          end;
          FGetNewSaleNoCommand.Parameters[0].Value.SetInt32(SaleBranchCode);
          FGetNewSaleNoCommand.ExecuteUpdate;
          Result := FGetNewSaleNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmSalesProxyClient.QuickSaleCanAnnul(SaleObjectBranchCode: Integer; SaleObjectCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FQuickSaleCanAnnulCommand = nil) or CommandRecreateNeeded(FQuickSaleCanAnnulCommand) then
          begin
            FreeAndNil(FQuickSaleCanAnnulCommand);
            FQuickSaleCanAnnulCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FQuickSaleCanAnnulCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FQuickSaleCanAnnulCommand.Text := 'TdmSalesProxy.QuickSaleCanAnnul';
            FQuickSaleCanAnnulCommand.Prepare;
            CommandRecreated(FQuickSaleCanAnnulCommand);
          end;
          FQuickSaleCanAnnulCommand.Parameters[0].Value.SetInt32(SaleObjectBranchCode);
          FQuickSaleCanAnnulCommand.Parameters[1].Value.SetInt32(SaleObjectCode);
          FQuickSaleCanAnnulCommand.ExecuteUpdate;
          Result := FQuickSaleCanAnnulCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmSalesProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmSalesProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmSalesProxyClient.Destroy;
begin
  FGetNewSaleNoCommand.DisposeOf;
  FQuickSaleCanAnnulCommand.DisposeOf;
  inherited;
end;


constructor TdmSalesCommonProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmSalesCommonProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmSalesCommonProxyClient.Destroy;
begin
  inherited;
end;

function TdmSpecificationsProxyClient.SpecificationExists(SpecProductCode: Integer; out Authorized: Boolean; out AuthorEmployeeCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FSpecificationExistsCommand = nil) or CommandRecreateNeeded(FSpecificationExistsCommand) then
          begin
            FreeAndNil(FSpecificationExistsCommand);
            FSpecificationExistsCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FSpecificationExistsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FSpecificationExistsCommand.Text := 'TdmSpecificationsProxy.SpecificationExists';
            FSpecificationExistsCommand.Prepare;
            CommandRecreated(FSpecificationExistsCommand);
          end;
          FSpecificationExistsCommand.Parameters[0].Value.SetInt32(SpecProductCode);
          FSpecificationExistsCommand.ExecuteUpdate;
          Authorized := FSpecificationExistsCommand.Parameters[1].Value.GetBoolean;
          AuthorEmployeeCode := FSpecificationExistsCommand.Parameters[2].Value.GetInt32;
          Result := FSpecificationExistsCommand.Parameters[3].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmSpecificationsProxyClient.SpecificationVersion(SpecProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FSpecificationVersionCommand = nil) or CommandRecreateNeeded(FSpecificationVersionCommand) then
          begin
            FreeAndNil(FSpecificationVersionCommand);
            FSpecificationVersionCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FSpecificationVersionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FSpecificationVersionCommand.Text := 'TdmSpecificationsProxy.SpecificationVersion';
            FSpecificationVersionCommand.Prepare;
            CommandRecreated(FSpecificationVersionCommand);
          end;
          FSpecificationVersionCommand.Parameters[0].Value.SetInt32(SpecProductCode);
          FSpecificationVersionCommand.ExecuteUpdate;
          Result := FSpecificationVersionCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmSpecificationsProxyClient.UpdateSpecificationsImported(SpecProductCode: Integer; HostSpecProductCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FUpdateSpecificationsImportedCommand = nil) or CommandRecreateNeeded(FUpdateSpecificationsImportedCommand) then
          begin
            FreeAndNil(FUpdateSpecificationsImportedCommand);
            FUpdateSpecificationsImportedCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FUpdateSpecificationsImportedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FUpdateSpecificationsImportedCommand.Text := 'TdmSpecificationsProxy.UpdateSpecificationsImported';
            FUpdateSpecificationsImportedCommand.Prepare;
            CommandRecreated(FUpdateSpecificationsImportedCommand);
          end;
          FUpdateSpecificationsImportedCommand.Parameters[0].Value.SetInt32(SpecProductCode);
          FUpdateSpecificationsImportedCommand.Parameters[1].Value.SetInt32(HostSpecProductCode);
          FUpdateSpecificationsImportedCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmSpecificationsProxyClient.ReplaceProduct(Params: OleVariant): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FReplaceProductCommand = nil) or CommandRecreateNeeded(FReplaceProductCommand) then
          begin
            FreeAndNil(FReplaceProductCommand);
            FReplaceProductCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FReplaceProductCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FReplaceProductCommand.Text := 'TdmSpecificationsProxy.ReplaceProduct';
            FReplaceProductCommand.Prepare;
            CommandRecreated(FReplaceProductCommand);
          end;
          FReplaceProductCommand.Parameters[0].Value.AsVariant := Params;
          FReplaceProductCommand.ExecuteUpdate;
          Result := FReplaceProductCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmSpecificationsProxyClient.SpecInsertionsCount(SpecProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FSpecInsertionsCountCommand = nil) or CommandRecreateNeeded(FSpecInsertionsCountCommand) then
          begin
            FreeAndNil(FSpecInsertionsCountCommand);
            FSpecInsertionsCountCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FSpecInsertionsCountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FSpecInsertionsCountCommand.Text := 'TdmSpecificationsProxy.SpecInsertionsCount';
            FSpecInsertionsCountCommand.Prepare;
            CommandRecreated(FSpecInsertionsCountCommand);
          end;
          FSpecInsertionsCountCommand.Parameters[0].Value.SetInt32(SpecProductCode);
          FSpecInsertionsCountCommand.ExecuteUpdate;
          Result := FSpecInsertionsCountCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmSpecificationsProxyClient.GetSpecType(SpecProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetSpecTypeCommand = nil) or CommandRecreateNeeded(FGetSpecTypeCommand) then
          begin
            FreeAndNil(FGetSpecTypeCommand);
            FGetSpecTypeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetSpecTypeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetSpecTypeCommand.Text := 'TdmSpecificationsProxy.GetSpecType';
            FGetSpecTypeCommand.Prepare;
            CommandRecreated(FGetSpecTypeCommand);
          end;
          FGetSpecTypeCommand.Parameters[0].Value.SetInt32(SpecProductCode);
          FGetSpecTypeCommand.ExecuteUpdate;
          Result := FGetSpecTypeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmSpecificationsProxyClient.DeleteSpecification(SpecProductCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FDeleteSpecificationCommand = nil) or CommandRecreateNeeded(FDeleteSpecificationCommand) then
          begin
            FreeAndNil(FDeleteSpecificationCommand);
            FDeleteSpecificationCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FDeleteSpecificationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FDeleteSpecificationCommand.Text := 'TdmSpecificationsProxy.DeleteSpecification';
            FDeleteSpecificationCommand.Prepare;
            CommandRecreated(FDeleteSpecificationCommand);
          end;
          FDeleteSpecificationCommand.Parameters[0].Value.SetInt32(SpecProductCode);
          FDeleteSpecificationCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmSpecificationsProxyClient.GetSpecDepth(SpecProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetSpecDepthCommand = nil) or CommandRecreateNeeded(FGetSpecDepthCommand) then
          begin
            FreeAndNil(FGetSpecDepthCommand);
            FGetSpecDepthCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetSpecDepthCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetSpecDepthCommand.Text := 'TdmSpecificationsProxy.GetSpecDepth';
            FGetSpecDepthCommand.Prepare;
            CommandRecreated(FGetSpecDepthCommand);
          end;
          FGetSpecDepthCommand.Parameters[0].Value.SetInt32(SpecProductCode);
          FGetSpecDepthCommand.ExecuteUpdate;
          Result := FGetSpecDepthCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmSpecificationsProxyClient.GetProductInlineModelCount(AProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductInlineModelCountCommand = nil) or CommandRecreateNeeded(FGetProductInlineModelCountCommand) then
          begin
            FreeAndNil(FGetProductInlineModelCountCommand);
            FGetProductInlineModelCountCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductInlineModelCountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductInlineModelCountCommand.Text := 'TdmSpecificationsProxy.GetProductInlineModelCount';
            FGetProductInlineModelCountCommand.Prepare;
            CommandRecreated(FGetProductInlineModelCountCommand);
          end;
          FGetProductInlineModelCountCommand.Parameters[0].Value.SetInt32(AProductCode);
          FGetProductInlineModelCountCommand.ExecuteUpdate;
          Result := FGetProductInlineModelCountCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmSpecificationsProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmSpecificationsProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmSpecificationsProxyClient.Destroy;
begin
  FSpecificationExistsCommand.DisposeOf;
  FSpecificationVersionCommand.DisposeOf;
  FUpdateSpecificationsImportedCommand.DisposeOf;
  FReplaceProductCommand.DisposeOf;
  FSpecInsertionsCountCommand.DisposeOf;
  FGetSpecTypeCommand.DisposeOf;
  FDeleteSpecificationCommand.DisposeOf;
  FGetSpecDepthCommand.DisposeOf;
  FGetProductInlineModelCountCommand.DisposeOf;
  inherited;
end;

function TdmStoreProxyClient.IsStoreComputerized(AStoreCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsStoreComputerizedCommand = nil) or CommandRecreateNeeded(FIsStoreComputerizedCommand) then
          begin
            FreeAndNil(FIsStoreComputerizedCommand);
            FIsStoreComputerizedCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsStoreComputerizedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsStoreComputerizedCommand.Text := 'TdmStoreProxy.IsStoreComputerized';
            FIsStoreComputerizedCommand.Prepare;
            CommandRecreated(FIsStoreComputerizedCommand);
          end;
          FIsStoreComputerizedCommand.Parameters[0].Value.SetInt32(AStoreCode);
          FIsStoreComputerizedCommand.ExecuteUpdate;
          Result := FIsStoreComputerizedCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmStoreProxyClient.GetNewStoreDealNo(StoreCode: Integer; StoreDealDate: TDateTime; StoreDealTypeCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewStoreDealNoCommand = nil) or CommandRecreateNeeded(FGetNewStoreDealNoCommand) then
          begin
            FreeAndNil(FGetNewStoreDealNoCommand);
            FGetNewStoreDealNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewStoreDealNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewStoreDealNoCommand.Text := 'TdmStoreProxy.GetNewStoreDealNo';
            FGetNewStoreDealNoCommand.Prepare;
            CommandRecreated(FGetNewStoreDealNoCommand);
          end;
          FGetNewStoreDealNoCommand.Parameters[0].Value.SetInt32(StoreCode);
          FGetNewStoreDealNoCommand.Parameters[1].Value.AsDateTime := StoreDealDate;
          FGetNewStoreDealNoCommand.Parameters[2].Value.SetInt32(StoreDealTypeCode);
          FGetNewStoreDealNoCommand.ExecuteUpdate;
          Result := FGetNewStoreDealNoCommand.Parameters[3].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmStoreProxyClient.VIMProductNodeProp(ProductNodeCode: Integer; out AccountMeasureCoef: Double; out MeasureAbbrev: string; out AccountMeasureAbbrev: string): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FVIMProductNodePropCommand = nil) or CommandRecreateNeeded(FVIMProductNodePropCommand) then
          begin
            FreeAndNil(FVIMProductNodePropCommand);
            FVIMProductNodePropCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FVIMProductNodePropCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FVIMProductNodePropCommand.Text := 'TdmStoreProxy.VIMProductNodeProp';
            FVIMProductNodePropCommand.Prepare;
            CommandRecreated(FVIMProductNodePropCommand);
          end;
          FVIMProductNodePropCommand.Parameters[0].Value.SetInt32(ProductNodeCode);
          FVIMProductNodePropCommand.ExecuteUpdate;
          AccountMeasureCoef := FVIMProductNodePropCommand.Parameters[1].Value.GetDouble;
          MeasureAbbrev := FVIMProductNodePropCommand.Parameters[2].Value.GetWideString;
          AccountMeasureAbbrev := FVIMProductNodePropCommand.Parameters[3].Value.GetWideString;
          Result := FVIMProductNodePropCommand.Parameters[4].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmStoreProxyClient.CanAnnulPlannedStoreDeal(PlannedStoreDealBranchCode: Integer; PlannedStoreDealCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FCanAnnulPlannedStoreDealCommand = nil) or CommandRecreateNeeded(FCanAnnulPlannedStoreDealCommand) then
          begin
            FreeAndNil(FCanAnnulPlannedStoreDealCommand);
            FCanAnnulPlannedStoreDealCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FCanAnnulPlannedStoreDealCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FCanAnnulPlannedStoreDealCommand.Text := 'TdmStoreProxy.CanAnnulPlannedStoreDeal';
            FCanAnnulPlannedStoreDealCommand.Prepare;
            CommandRecreated(FCanAnnulPlannedStoreDealCommand);
          end;
          FCanAnnulPlannedStoreDealCommand.Parameters[0].Value.SetInt32(PlannedStoreDealBranchCode);
          FCanAnnulPlannedStoreDealCommand.Parameters[1].Value.SetInt32(PlannedStoreDealCode);
          FCanAnnulPlannedStoreDealCommand.ExecuteUpdate;
          Result := FCanAnnulPlannedStoreDealCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmStoreProxyClient.GetBoundProcessIdentification(StoreDealObjectBranchCode: Integer; StoreDealObjectCode: Integer; AProformAbbrev: string): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetBoundProcessIdentificationCommand = nil) or CommandRecreateNeeded(FGetBoundProcessIdentificationCommand) then
          begin
            FreeAndNil(FGetBoundProcessIdentificationCommand);
            FGetBoundProcessIdentificationCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetBoundProcessIdentificationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetBoundProcessIdentificationCommand.Text := 'TdmStoreProxy.GetBoundProcessIdentification';
            FGetBoundProcessIdentificationCommand.Prepare;
            CommandRecreated(FGetBoundProcessIdentificationCommand);
          end;
          FGetBoundProcessIdentificationCommand.Parameters[0].Value.SetInt32(StoreDealObjectBranchCode);
          FGetBoundProcessIdentificationCommand.Parameters[1].Value.SetInt32(StoreDealObjectCode);
          FGetBoundProcessIdentificationCommand.Parameters[2].Value.SetWideString(AProformAbbrev);
          FGetBoundProcessIdentificationCommand.ExecuteUpdate;
          Result := FGetBoundProcessIdentificationCommand.Parameters[3].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmStoreProxyClient.GetModelProductAndSinglePrice(SaleObjectBranchCode: Integer; SaleObjectCode: Integer; out ProductCode: Integer; out AccountSinglePrice: Double; out LastDeptCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetModelProductAndSinglePriceCommand = nil) or CommandRecreateNeeded(FGetModelProductAndSinglePriceCommand) then
          begin
            FreeAndNil(FGetModelProductAndSinglePriceCommand);
            FGetModelProductAndSinglePriceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetModelProductAndSinglePriceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetModelProductAndSinglePriceCommand.Text := 'TdmStoreProxy.GetModelProductAndSinglePrice';
            FGetModelProductAndSinglePriceCommand.Prepare;
            CommandRecreated(FGetModelProductAndSinglePriceCommand);
          end;
          FGetModelProductAndSinglePriceCommand.Parameters[0].Value.SetInt32(SaleObjectBranchCode);
          FGetModelProductAndSinglePriceCommand.Parameters[1].Value.SetInt32(SaleObjectCode);
          FGetModelProductAndSinglePriceCommand.ExecuteUpdate;
          ProductCode := FGetModelProductAndSinglePriceCommand.Parameters[2].Value.GetInt32;
          AccountSinglePrice := FGetModelProductAndSinglePriceCommand.Parameters[3].Value.GetDouble;
          LastDeptCode := FGetModelProductAndSinglePriceCommand.Parameters[4].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmStoreProxyClient.GetStoreDealOutData(StoreDealObjectBranchCode: Integer; StoreDealObjectCode: Integer; out ProductCode: Integer; out SinglePrice: Double; out CurrencyCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetStoreDealOutDataCommand = nil) or CommandRecreateNeeded(FGetStoreDealOutDataCommand) then
          begin
            FreeAndNil(FGetStoreDealOutDataCommand);
            FGetStoreDealOutDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetStoreDealOutDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetStoreDealOutDataCommand.Text := 'TdmStoreProxy.GetStoreDealOutData';
            FGetStoreDealOutDataCommand.Prepare;
            CommandRecreated(FGetStoreDealOutDataCommand);
          end;
          FGetStoreDealOutDataCommand.Parameters[0].Value.SetInt32(StoreDealObjectBranchCode);
          FGetStoreDealOutDataCommand.Parameters[1].Value.SetInt32(StoreDealObjectCode);
          FGetStoreDealOutDataCommand.ExecuteUpdate;
          ProductCode := FGetStoreDealOutDataCommand.Parameters[2].Value.GetInt32;
          SinglePrice := FGetStoreDealOutDataCommand.Parameters[3].Value.GetDouble;
          CurrencyCode := FGetStoreDealOutDataCommand.Parameters[4].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmStoreProxyClient.GetModelLineProduct(MllObjectBranchCode: Integer; MllObjectCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetModelLineProductCommand = nil) or CommandRecreateNeeded(FGetModelLineProductCommand) then
          begin
            FreeAndNil(FGetModelLineProductCommand);
            FGetModelLineProductCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetModelLineProductCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetModelLineProductCommand.Text := 'TdmStoreProxy.GetModelLineProduct';
            FGetModelLineProductCommand.Prepare;
            CommandRecreated(FGetModelLineProductCommand);
          end;
          FGetModelLineProductCommand.Parameters[0].Value.SetInt32(MllObjectBranchCode);
          FGetModelLineProductCommand.Parameters[1].Value.SetInt32(MllObjectCode);
          FGetModelLineProductCommand.ExecuteUpdate;
          Result := FGetModelLineProductCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmStoreProxyClient.GetModelLinePSDDept(AMllObjectBranchCode: Integer; AMllObjectCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetModelLinePSDDeptCommand = nil) or CommandRecreateNeeded(FGetModelLinePSDDeptCommand) then
          begin
            FreeAndNil(FGetModelLinePSDDeptCommand);
            FGetModelLinePSDDeptCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetModelLinePSDDeptCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetModelLinePSDDeptCommand.Text := 'TdmStoreProxy.GetModelLinePSDDept';
            FGetModelLinePSDDeptCommand.Prepare;
            CommandRecreated(FGetModelLinePSDDeptCommand);
          end;
          FGetModelLinePSDDeptCommand.Parameters[0].Value.SetInt32(AMllObjectBranchCode);
          FGetModelLinePSDDeptCommand.Parameters[1].Value.SetInt32(AMllObjectCode);
          FGetModelLinePSDDeptCommand.ExecuteUpdate;
          Result := FGetModelLinePSDDeptCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmStoreProxyClient.GetSaleShipmentProduct(ShipmentObjectBranchCode: Integer; ShipmentObjectCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetSaleShipmentProductCommand = nil) or CommandRecreateNeeded(FGetSaleShipmentProductCommand) then
          begin
            FreeAndNil(FGetSaleShipmentProductCommand);
            FGetSaleShipmentProductCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetSaleShipmentProductCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetSaleShipmentProductCommand.Text := 'TdmStoreProxy.GetSaleShipmentProduct';
            FGetSaleShipmentProductCommand.Prepare;
            CommandRecreated(FGetSaleShipmentProductCommand);
          end;
          FGetSaleShipmentProductCommand.Parameters[0].Value.SetInt32(ShipmentObjectBranchCode);
          FGetSaleShipmentProductCommand.Parameters[1].Value.SetInt32(ShipmentObjectCode);
          FGetSaleShipmentProductCommand.ExecuteUpdate;
          Result := FGetSaleShipmentProductCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmStoreProxyClient.GetSaleManufactureQuantity(SaleObjectBranchCode: Integer; SaleObjectCode: Integer): Double;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetSaleManufactureQuantityCommand = nil) or CommandRecreateNeeded(FGetSaleManufactureQuantityCommand) then
          begin
            FreeAndNil(FGetSaleManufactureQuantityCommand);
            FGetSaleManufactureQuantityCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetSaleManufactureQuantityCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetSaleManufactureQuantityCommand.Text := 'TdmStoreProxy.GetSaleManufactureQuantity';
            FGetSaleManufactureQuantityCommand.Prepare;
            CommandRecreated(FGetSaleManufactureQuantityCommand);
          end;
          FGetSaleManufactureQuantityCommand.Parameters[0].Value.SetInt32(SaleObjectBranchCode);
          FGetSaleManufactureQuantityCommand.Parameters[1].Value.SetInt32(SaleObjectCode);
          FGetSaleManufactureQuantityCommand.ExecuteUpdate;
          Result := FGetSaleManufactureQuantityCommand.Parameters[2].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmStoreProxyClient.GetRFMLStoreDealData(ABndProcessObjectBranchCode: Integer; ABndProcessObjectCode: Integer; out AProductCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetRFMLStoreDealDataCommand = nil) or CommandRecreateNeeded(FGetRFMLStoreDealDataCommand) then
          begin
            FreeAndNil(FGetRFMLStoreDealDataCommand);
            FGetRFMLStoreDealDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetRFMLStoreDealDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetRFMLStoreDealDataCommand.Text := 'TdmStoreProxy.GetRFMLStoreDealData';
            FGetRFMLStoreDealDataCommand.Prepare;
            CommandRecreated(FGetRFMLStoreDealDataCommand);
          end;
          FGetRFMLStoreDealDataCommand.Parameters[0].Value.SetInt32(ABndProcessObjectBranchCode);
          FGetRFMLStoreDealDataCommand.Parameters[1].Value.SetInt32(ABndProcessObjectCode);
          FGetRFMLStoreDealDataCommand.ExecuteUpdate;
          AProductCode := FGetRFMLStoreDealDataCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmStoreProxyClient.GetBOIOrderData(BOIOrderObjectBranchCode: Integer; BOIOrderObjectCode: Integer; out ProductCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetBOIOrderDataCommand = nil) or CommandRecreateNeeded(FGetBOIOrderDataCommand) then
          begin
            FreeAndNil(FGetBOIOrderDataCommand);
            FGetBOIOrderDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetBOIOrderDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetBOIOrderDataCommand.Text := 'TdmStoreProxy.GetBOIOrderData';
            FGetBOIOrderDataCommand.Prepare;
            CommandRecreated(FGetBOIOrderDataCommand);
          end;
          FGetBOIOrderDataCommand.Parameters[0].Value.SetInt32(BOIOrderObjectBranchCode);
          FGetBOIOrderDataCommand.Parameters[1].Value.SetInt32(BOIOrderObjectCode);
          FGetBOIOrderDataCommand.ExecuteUpdate;
          ProductCode := FGetBOIOrderDataCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmStoreProxyClient.GetDeliveryData(DeliveryObjectBranchCode: Integer; DeliveryObjectCode: Integer; out ProductCode: Integer; out SinglePrice: Double; out CurrencyCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeliveryDataCommand = nil) or CommandRecreateNeeded(FGetDeliveryDataCommand) then
          begin
            FreeAndNil(FGetDeliveryDataCommand);
            FGetDeliveryDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeliveryDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeliveryDataCommand.Text := 'TdmStoreProxy.GetDeliveryData';
            FGetDeliveryDataCommand.Prepare;
            CommandRecreated(FGetDeliveryDataCommand);
          end;
          FGetDeliveryDataCommand.Parameters[0].Value.SetInt32(DeliveryObjectBranchCode);
          FGetDeliveryDataCommand.Parameters[1].Value.SetInt32(DeliveryObjectCode);
          FGetDeliveryDataCommand.ExecuteUpdate;
          ProductCode := FGetDeliveryDataCommand.Parameters[2].Value.GetInt32;
          SinglePrice := FGetDeliveryDataCommand.Parameters[3].Value.GetDouble;
          CurrencyCode := FGetDeliveryDataCommand.Parameters[4].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmStoreProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmStoreProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmStoreProxyClient.Destroy;
begin
  FIsStoreComputerizedCommand.DisposeOf;
  FGetNewStoreDealNoCommand.DisposeOf;
  FVIMProductNodePropCommand.DisposeOf;
  FCanAnnulPlannedStoreDealCommand.DisposeOf;
  FGetBoundProcessIdentificationCommand.DisposeOf;
  FGetModelProductAndSinglePriceCommand.DisposeOf;
  FGetStoreDealOutDataCommand.DisposeOf;
  FGetModelLineProductCommand.DisposeOf;
  FGetModelLinePSDDeptCommand.DisposeOf;
  FGetSaleShipmentProductCommand.DisposeOf;
  FGetSaleManufactureQuantityCommand.DisposeOf;
  FGetRFMLStoreDealDataCommand.DisposeOf;
  FGetBOIOrderDataCommand.DisposeOf;
  FGetDeliveryDataCommand.DisposeOf;
  inherited;
end;

function TdmStoreRequestsProxyClient.GetNewStoreRequestCode(StoreRequestBranchCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewStoreRequestCodeCommand = nil) or CommandRecreateNeeded(FGetNewStoreRequestCodeCommand) then
          begin
            FreeAndNil(FGetNewStoreRequestCodeCommand);
            FGetNewStoreRequestCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewStoreRequestCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewStoreRequestCodeCommand.Text := 'TdmStoreRequestsProxy.GetNewStoreRequestCode';
            FGetNewStoreRequestCodeCommand.Prepare;
            CommandRecreated(FGetNewStoreRequestCodeCommand);
          end;
          FGetNewStoreRequestCodeCommand.Parameters[0].Value.SetInt32(StoreRequestBranchCode);
          FGetNewStoreRequestCodeCommand.ExecuteUpdate;
          Result := FGetNewStoreRequestCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmStoreRequestsProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmStoreRequestsProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmStoreRequestsProxyClient.Destroy;
begin
  FGetNewStoreRequestCodeCommand.DisposeOf;
  inherited;
end;

procedure TdmVIMProxyClient.GetRounder(Value: Double; out Rounder: Double; out RounderName: string; out RounderAbbrev: string);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetRounderCommand = nil) or CommandRecreateNeeded(FGetRounderCommand) then
          begin
            FreeAndNil(FGetRounderCommand);
            FGetRounderCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetRounderCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetRounderCommand.Text := 'TdmVIMProxy.GetRounder';
            FGetRounderCommand.Prepare;
            CommandRecreated(FGetRounderCommand);
          end;
          FGetRounderCommand.Parameters[0].Value.SetDouble(Value);
          FGetRounderCommand.ExecuteUpdate;
          Rounder := FGetRounderCommand.Parameters[1].Value.GetDouble;
          RounderName := FGetRounderCommand.Parameters[2].Value.GetWideString;
          RounderAbbrev := FGetRounderCommand.Parameters[3].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmVIMProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmVIMProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmVIMProxyClient.Destroy;
begin
  FGetRounderCommand.DisposeOf;
  inherited;
end;


constructor TdmAdminProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmAdminProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmAdminProxyClient.Destroy;
begin
  inherited;
end;


constructor TdmSaleReportsProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmSaleReportsProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmSaleReportsProxyClient.Destroy;
begin
  inherited;
end;

procedure TdmModelMovementsProxyClient.GetBoundMLObject(BoundType: Integer; BndObjectBranchCode: Integer; BndObjectNumber: Integer; out BndMLObjectBranchCode: Integer; out BndMLObjectCode: Integer; out IsNonActive: Integer; out IsOperationsModel: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetBoundMLObjectCommand = nil) or CommandRecreateNeeded(FGetBoundMLObjectCommand) then
          begin
            FreeAndNil(FGetBoundMLObjectCommand);
            FGetBoundMLObjectCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetBoundMLObjectCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetBoundMLObjectCommand.Text := 'TdmModelMovementsProxy.GetBoundMLObject';
            FGetBoundMLObjectCommand.Prepare;
            CommandRecreated(FGetBoundMLObjectCommand);
          end;
          FGetBoundMLObjectCommand.Parameters[0].Value.SetInt32(BoundType);
          FGetBoundMLObjectCommand.Parameters[1].Value.SetInt32(BndObjectBranchCode);
          FGetBoundMLObjectCommand.Parameters[2].Value.SetInt32(BndObjectNumber);
          FGetBoundMLObjectCommand.ExecuteUpdate;
          BndMLObjectBranchCode := FGetBoundMLObjectCommand.Parameters[3].Value.GetInt32;
          BndMLObjectCode := FGetBoundMLObjectCommand.Parameters[4].Value.GetInt32;
          IsNonActive := FGetBoundMLObjectCommand.Parameters[5].Value.GetInt32;
          IsOperationsModel := FGetBoundMLObjectCommand.Parameters[6].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmModelMovementsProxyClient.GetMMCode(MMBranchCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetMMCodeCommand = nil) or CommandRecreateNeeded(FGetMMCodeCommand) then
          begin
            FreeAndNil(FGetMMCodeCommand);
            FGetMMCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetMMCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetMMCodeCommand.Text := 'TdmModelMovementsProxy.GetMMCode';
            FGetMMCodeCommand.Prepare;
            CommandRecreated(FGetMMCodeCommand);
          end;
          FGetMMCodeCommand.Parameters[0].Value.SetInt32(MMBranchCode);
          FGetMMCodeCommand.ExecuteUpdate;
          Result := FGetMMCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmModelMovementsProxyClient.GetBoundMLLObject(BoundMLObjectBranchCode: Integer; BoundMLObjectCode: Integer; NoAsText: string; ForkNo: Integer; out BoundMLLObjectBranchCode: Integer; out BoundMLLObjectCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetBoundMLLObjectCommand = nil) or CommandRecreateNeeded(FGetBoundMLLObjectCommand) then
          begin
            FreeAndNil(FGetBoundMLLObjectCommand);
            FGetBoundMLLObjectCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetBoundMLLObjectCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetBoundMLLObjectCommand.Text := 'TdmModelMovementsProxy.GetBoundMLLObject';
            FGetBoundMLLObjectCommand.Prepare;
            CommandRecreated(FGetBoundMLLObjectCommand);
          end;
          FGetBoundMLLObjectCommand.Parameters[0].Value.SetInt32(BoundMLObjectBranchCode);
          FGetBoundMLLObjectCommand.Parameters[1].Value.SetInt32(BoundMLObjectCode);
          FGetBoundMLLObjectCommand.Parameters[2].Value.SetWideString(NoAsText);
          FGetBoundMLLObjectCommand.Parameters[3].Value.SetInt32(ForkNo);
          FGetBoundMLLObjectCommand.ExecuteUpdate;
          BoundMLLObjectBranchCode := FGetBoundMLLObjectCommand.Parameters[4].Value.GetInt32;
          BoundMLLObjectCode := FGetBoundMLLObjectCommand.Parameters[5].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmModelMovementsProxyClient.GetMMDataByCode(MMBranchCode: Integer; MMCode: Integer; out BoundType: Integer; out BoundBranch: Integer; out BoundNumber: Integer; out NoAsText: string; out ForkNo: Integer; out FromStageNo: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetMMDataByCodeCommand = nil) or CommandRecreateNeeded(FGetMMDataByCodeCommand) then
          begin
            FreeAndNil(FGetMMDataByCodeCommand);
            FGetMMDataByCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetMMDataByCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetMMDataByCodeCommand.Text := 'TdmModelMovementsProxy.GetMMDataByCode';
            FGetMMDataByCodeCommand.Prepare;
            CommandRecreated(FGetMMDataByCodeCommand);
          end;
          FGetMMDataByCodeCommand.Parameters[0].Value.SetInt32(MMBranchCode);
          FGetMMDataByCodeCommand.Parameters[1].Value.SetInt32(MMCode);
          FGetMMDataByCodeCommand.ExecuteUpdate;
          BoundType := FGetMMDataByCodeCommand.Parameters[2].Value.GetInt32;
          BoundBranch := FGetMMDataByCodeCommand.Parameters[3].Value.GetInt32;
          BoundNumber := FGetMMDataByCodeCommand.Parameters[4].Value.GetInt32;
          NoAsText := FGetMMDataByCodeCommand.Parameters[5].Value.GetWideString;
          ForkNo := FGetMMDataByCodeCommand.Parameters[6].Value.GetInt32;
          FromStageNo := FGetMMDataByCodeCommand.Parameters[7].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmModelMovementsProxyClient.GetStageNo(MLMSObjectBranchCode: Integer; MLMSObjectCode: Integer; out MLLObjectBranchCode: Integer; out MLLObjectCode: Integer; out StageNo: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetStageNoCommand = nil) or CommandRecreateNeeded(FGetStageNoCommand) then
          begin
            FreeAndNil(FGetStageNoCommand);
            FGetStageNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetStageNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetStageNoCommand.Text := 'TdmModelMovementsProxy.GetStageNo';
            FGetStageNoCommand.Prepare;
            CommandRecreated(FGetStageNoCommand);
          end;
          FGetStageNoCommand.Parameters[0].Value.SetInt32(MLMSObjectBranchCode);
          FGetStageNoCommand.Parameters[1].Value.SetInt32(MLMSObjectCode);
          FGetStageNoCommand.ExecuteUpdate;
          MLLObjectBranchCode := FGetStageNoCommand.Parameters[2].Value.GetInt32;
          MLLObjectCode := FGetStageNoCommand.Parameters[3].Value.GetInt32;
          StageNo := FGetStageNoCommand.Parameters[4].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmModelMovementsProxyClient.GetDataByMLMSCode(MLMSObjectBranchCode: Integer; MLMSObjectCode: Integer; out SaleBranchCode: Integer; out SaleNo: Integer; out MLLObjectBranchCode: Integer; out MLLObjectCode: Integer; out FromStageNo: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDataByMLMSCodeCommand = nil) or CommandRecreateNeeded(FGetDataByMLMSCodeCommand) then
          begin
            FreeAndNil(FGetDataByMLMSCodeCommand);
            FGetDataByMLMSCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDataByMLMSCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDataByMLMSCodeCommand.Text := 'TdmModelMovementsProxy.GetDataByMLMSCode';
            FGetDataByMLMSCodeCommand.Prepare;
            CommandRecreated(FGetDataByMLMSCodeCommand);
          end;
          FGetDataByMLMSCodeCommand.Parameters[0].Value.SetInt32(MLMSObjectBranchCode);
          FGetDataByMLMSCodeCommand.Parameters[1].Value.SetInt32(MLMSObjectCode);
          FGetDataByMLMSCodeCommand.ExecuteUpdate;
          SaleBranchCode := FGetDataByMLMSCodeCommand.Parameters[2].Value.GetInt32;
          SaleNo := FGetDataByMLMSCodeCommand.Parameters[3].Value.GetInt32;
          MLLObjectBranchCode := FGetDataByMLMSCodeCommand.Parameters[4].Value.GetInt32;
          MLLObjectCode := FGetDataByMLMSCodeCommand.Parameters[5].Value.GetInt32;
          FromStageNo := FGetDataByMLMSCodeCommand.Parameters[6].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmModelMovementsProxyClient.GetOMCode(OMBranchCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetOMCodeCommand = nil) or CommandRecreateNeeded(FGetOMCodeCommand) then
          begin
            FreeAndNil(FGetOMCodeCommand);
            FGetOMCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetOMCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetOMCodeCommand.Text := 'TdmModelMovementsProxy.GetOMCode';
            FGetOMCodeCommand.Prepare;
            CommandRecreated(FGetOMCodeCommand);
          end;
          FGetOMCodeCommand.Parameters[0].Value.SetInt32(OMBranchCode);
          FGetOMCodeCommand.ExecuteUpdate;
          Result := FGetOMCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmModelMovementsProxyClient.GetOmData(OmBranchCode: Integer; OmCode: Integer; out FromMlmsoObjectBranchCode: Integer; out FromMlmsoObjectCode: Integer; out OperationMovementTypeCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetOmDataCommand = nil) or CommandRecreateNeeded(FGetOmDataCommand) then
          begin
            FreeAndNil(FGetOmDataCommand);
            FGetOmDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetOmDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetOmDataCommand.Text := 'TdmModelMovementsProxy.GetOmData';
            FGetOmDataCommand.Prepare;
            CommandRecreated(FGetOmDataCommand);
          end;
          FGetOmDataCommand.Parameters[0].Value.SetInt32(OmBranchCode);
          FGetOmDataCommand.Parameters[1].Value.SetInt32(OmCode);
          FGetOmDataCommand.ExecuteUpdate;
          FromMlmsoObjectBranchCode := FGetOmDataCommand.Parameters[2].Value.GetInt32;
          FromMlmsoObjectCode := FGetOmDataCommand.Parameters[3].Value.GetInt32;
          OperationMovementTypeCode := FGetOmDataCommand.Parameters[4].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmModelMovementsProxyClient.GetMaxOperationWorkdayNo(AMlmsObjectBranchCode: Integer; AMlmsObjectCode: Integer; AMlmsOperationNo: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetMaxOperationWorkdayNoCommand = nil) or CommandRecreateNeeded(FGetMaxOperationWorkdayNoCommand) then
          begin
            FreeAndNil(FGetMaxOperationWorkdayNoCommand);
            FGetMaxOperationWorkdayNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetMaxOperationWorkdayNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetMaxOperationWorkdayNoCommand.Text := 'TdmModelMovementsProxy.GetMaxOperationWorkdayNo';
            FGetMaxOperationWorkdayNoCommand.Prepare;
            CommandRecreated(FGetMaxOperationWorkdayNoCommand);
          end;
          FGetMaxOperationWorkdayNoCommand.Parameters[0].Value.SetInt32(AMlmsObjectBranchCode);
          FGetMaxOperationWorkdayNoCommand.Parameters[1].Value.SetInt32(AMlmsObjectCode);
          FGetMaxOperationWorkdayNoCommand.Parameters[2].Value.SetInt32(AMlmsOperationNo);
          FGetMaxOperationWorkdayNoCommand.ExecuteUpdate;
          Result := FGetMaxOperationWorkdayNoCommand.Parameters[3].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmModelMovementsProxyClient.GetOMNo: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetOMNoCommand = nil) or CommandRecreateNeeded(FGetOMNoCommand) then
          begin
            FreeAndNil(FGetOMNoCommand);
            FGetOMNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetOMNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetOMNoCommand.Text := 'TdmModelMovementsProxy.GetOMNo';
            FGetOMNoCommand.Prepare;
            CommandRecreated(FGetOMNoCommand);
          end;
          FGetOMNoCommand.ExecuteUpdate;
          Result := FGetOMNoCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmModelMovementsProxyClient.GetSpecialControlNeeded(MlmsoObjectBranchCode: Integer; MlmsoObjectCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetSpecialControlNeededCommand = nil) or CommandRecreateNeeded(FGetSpecialControlNeededCommand) then
          begin
            FreeAndNil(FGetSpecialControlNeededCommand);
            FGetSpecialControlNeededCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetSpecialControlNeededCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetSpecialControlNeededCommand.Text := 'TdmModelMovementsProxy.GetSpecialControlNeeded';
            FGetSpecialControlNeededCommand.Prepare;
            CommandRecreated(FGetSpecialControlNeededCommand);
          end;
          FGetSpecialControlNeededCommand.Parameters[0].Value.SetInt32(MlmsoObjectBranchCode);
          FGetSpecialControlNeededCommand.Parameters[1].Value.SetInt32(MlmsoObjectCode);
          FGetSpecialControlNeededCommand.ExecuteUpdate;
          Result := FGetSpecialControlNeededCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmModelMovementsProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmModelMovementsProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmModelMovementsProxyClient.Destroy;
begin
  FGetBoundMLObjectCommand.DisposeOf;
  FGetMMCodeCommand.DisposeOf;
  FGetBoundMLLObjectCommand.DisposeOf;
  FGetMMDataByCodeCommand.DisposeOf;
  FGetStageNoCommand.DisposeOf;
  FGetDataByMLMSCodeCommand.DisposeOf;
  FGetOMCodeCommand.DisposeOf;
  FGetOmDataCommand.DisposeOf;
  FGetMaxOperationWorkdayNoCommand.DisposeOf;
  FGetOMNoCommand.DisposeOf;
  FGetSpecialControlNeededCommand.DisposeOf;
  inherited;
end;

procedure TdmModelChangesProxyClient.RequestMultipleChanges(MaterialListLines: OleVariant; OldProductCode: Integer; NewProductCode: Integer; OldStoreCode: Integer; NewStoreCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FRequestMultipleChangesCommand = nil) or CommandRecreateNeeded(FRequestMultipleChangesCommand) then
          begin
            FreeAndNil(FRequestMultipleChangesCommand);
            FRequestMultipleChangesCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FRequestMultipleChangesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FRequestMultipleChangesCommand.Text := 'TdmModelChangesProxy.RequestMultipleChanges';
            FRequestMultipleChangesCommand.Prepare;
            CommandRecreated(FRequestMultipleChangesCommand);
          end;
          FRequestMultipleChangesCommand.Parameters[0].Value.AsVariant := MaterialListLines;
          FRequestMultipleChangesCommand.Parameters[1].Value.SetInt32(OldProductCode);
          FRequestMultipleChangesCommand.Parameters[2].Value.SetInt32(NewProductCode);
          FRequestMultipleChangesCommand.Parameters[3].Value.SetInt32(OldStoreCode);
          FRequestMultipleChangesCommand.Parameters[4].Value.SetInt32(NewStoreCode);
          FRequestMultipleChangesCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmModelChangesProxyClient.DoStoreMultipleChange(MaterialListLines: OleVariant; OldStoreCode: Integer; NewStoreCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FDoStoreMultipleChangeCommand = nil) or CommandRecreateNeeded(FDoStoreMultipleChangeCommand) then
          begin
            FreeAndNil(FDoStoreMultipleChangeCommand);
            FDoStoreMultipleChangeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FDoStoreMultipleChangeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FDoStoreMultipleChangeCommand.Text := 'TdmModelChangesProxy.DoStoreMultipleChange';
            FDoStoreMultipleChangeCommand.Prepare;
            CommandRecreated(FDoStoreMultipleChangeCommand);
          end;
          FDoStoreMultipleChangeCommand.Parameters[0].Value.AsVariant := MaterialListLines;
          FDoStoreMultipleChangeCommand.Parameters[1].Value.SetInt32(OldStoreCode);
          FDoStoreMultipleChangeCommand.Parameters[2].Value.SetInt32(NewStoreCode);
          FDoStoreMultipleChangeCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmModelChangesProxyClient.GetLatestMllcTimestamp: TDateTime;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetLatestMllcTimestampCommand = nil) or CommandRecreateNeeded(FGetLatestMllcTimestampCommand) then
          begin
            FreeAndNil(FGetLatestMllcTimestampCommand);
            FGetLatestMllcTimestampCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetLatestMllcTimestampCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetLatestMllcTimestampCommand.Text := 'TdmModelChangesProxy.GetLatestMllcTimestamp';
            FGetLatestMllcTimestampCommand.Prepare;
            CommandRecreated(FGetLatestMllcTimestampCommand);
          end;
          FGetLatestMllcTimestampCommand.ExecuteUpdate;
          Result := FGetLatestMllcTimestampCommand.Parameters[0].Value.AsDateTime;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmModelChangesProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmModelChangesProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmModelChangesProxyClient.Destroy;
begin
  FRequestMultipleChangesCommand.DisposeOf;
  FDoStoreMultipleChangeCommand.DisposeOf;
  FGetLatestMllcTimestampCommand.DisposeOf;
  inherited;
end;


constructor TdmModelReportsProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmModelReportsProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmModelReportsProxyClient.Destroy;
begin
  inherited;
end;

procedure TdmNonDbUtilsProxyClient.Ping(IsActivePing: Boolean; PrevPingMilliseconds: Integer; out ServerDateTime: TDateTime; out CloseConnectionRequested: Boolean; out CloseConnectionMessage: string; out ServerDateTimeFormat: string; out IsMainConnectionConnected: Boolean; out IsServerLoginContextValid: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FPingCommand = nil) or CommandRecreateNeeded(FPingCommand) then
          begin
            FreeAndNil(FPingCommand);
            FPingCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FPingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FPingCommand.Text := 'TdmNonDbUtilsProxy.Ping';
            FPingCommand.Prepare;
            CommandRecreated(FPingCommand);
          end;
          FPingCommand.Parameters[0].Value.SetBoolean(IsActivePing);
          FPingCommand.Parameters[1].Value.SetInt32(PrevPingMilliseconds);
          FPingCommand.ExecuteUpdate;
          ServerDateTime := FPingCommand.Parameters[2].Value.AsDateTime;
          CloseConnectionRequested := FPingCommand.Parameters[3].Value.GetBoolean;
          CloseConnectionMessage := FPingCommand.Parameters[4].Value.GetWideString;
          ServerDateTimeFormat := FPingCommand.Parameters[5].Value.GetWideString;
          IsMainConnectionConnected := FPingCommand.Parameters[6].Value.GetBoolean;
          IsServerLoginContextValid := FPingCommand.Parameters[7].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmNonDbUtilsProxyClient.ResetPoolManager(AObjClassName: string; AObjName: string);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FResetPoolManagerCommand = nil) or CommandRecreateNeeded(FResetPoolManagerCommand) then
          begin
            FreeAndNil(FResetPoolManagerCommand);
            FResetPoolManagerCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FResetPoolManagerCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FResetPoolManagerCommand.Text := 'TdmNonDbUtilsProxy.ResetPoolManager';
            FResetPoolManagerCommand.Prepare;
            CommandRecreated(FResetPoolManagerCommand);
          end;
          FResetPoolManagerCommand.Parameters[0].Value.SetWideString(AObjClassName);
          FResetPoolManagerCommand.Parameters[1].Value.SetWideString(AObjName);
          FResetPoolManagerCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmNonDbUtilsProxyClient.CloseConnections(AConnectionIds: OleVariant; AMessage: string);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FCloseConnectionsCommand = nil) or CommandRecreateNeeded(FCloseConnectionsCommand) then
          begin
            FreeAndNil(FCloseConnectionsCommand);
            FCloseConnectionsCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FCloseConnectionsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FCloseConnectionsCommand.Text := 'TdmNonDbUtilsProxy.CloseConnections';
            FCloseConnectionsCommand.Prepare;
            CommandRecreated(FCloseConnectionsCommand);
          end;
          FCloseConnectionsCommand.Parameters[0].Value.AsVariant := AConnectionIds;
          FCloseConnectionsCommand.Parameters[1].Value.SetWideString(AMessage);
          FCloseConnectionsCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmNonDbUtilsProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmNonDbUtilsProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmNonDbUtilsProxyClient.Destroy;
begin
  FPingCommand.DisposeOf;
  FResetPoolManagerCommand.DisposeOf;
  FCloseConnectionsCommand.DisposeOf;
  inherited;
end;

function TdmDocProxyClient.GetNewDocCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewDocCodeCommand = nil) or CommandRecreateNeeded(FGetNewDocCodeCommand) then
          begin
            FreeAndNil(FGetNewDocCodeCommand);
            FGetNewDocCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewDocCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewDocCodeCommand.Text := 'TdmDocProxy.GetNewDocCode';
            FGetNewDocCodeCommand.Prepare;
            CommandRecreated(FGetNewDocCodeCommand);
          end;
          FGetNewDocCodeCommand.ExecuteUpdate;
          Result := FGetNewDocCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDocProxyClient.GetStoredFileData(AStoredFileBranchCode: Integer; AStoredFileCode: Integer): OleVariant;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetStoredFileDataCommand = nil) or CommandRecreateNeeded(FGetStoredFileDataCommand) then
          begin
            FreeAndNil(FGetStoredFileDataCommand);
            FGetStoredFileDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetStoredFileDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetStoredFileDataCommand.Text := 'TdmDocProxy.GetStoredFileData';
            FGetStoredFileDataCommand.Prepare;
            CommandRecreated(FGetStoredFileDataCommand);
          end;
          FGetStoredFileDataCommand.Parameters[0].Value.SetInt32(AStoredFileBranchCode);
          FGetStoredFileDataCommand.Parameters[1].Value.SetInt32(AStoredFileCode);
          FGetStoredFileDataCommand.ExecuteUpdate;
          Result := FGetStoredFileDataCommand.Parameters[2].Value.AsVariant;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmDocProxyClient.GetDocItemTemplateStoredFile(ADocItemTemplateCode: Integer; out ResultStoredFileBranchCode: Integer; out ResultStoredFileCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDocItemTemplateStoredFileCommand = nil) or CommandRecreateNeeded(FGetDocItemTemplateStoredFileCommand) then
          begin
            FreeAndNil(FGetDocItemTemplateStoredFileCommand);
            FGetDocItemTemplateStoredFileCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDocItemTemplateStoredFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDocItemTemplateStoredFileCommand.Text := 'TdmDocProxy.GetDocItemTemplateStoredFile';
            FGetDocItemTemplateStoredFileCommand.Prepare;
            CommandRecreated(FGetDocItemTemplateStoredFileCommand);
          end;
          FGetDocItemTemplateStoredFileCommand.Parameters[0].Value.SetInt32(ADocItemTemplateCode);
          FGetDocItemTemplateStoredFileCommand.ExecuteUpdate;
          ResultStoredFileBranchCode := FGetDocItemTemplateStoredFileCommand.Parameters[1].Value.GetInt32;
          ResultStoredFileCode := FGetDocItemTemplateStoredFileCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDocProxyClient.GetStoredFileExtension(AStoredFileBranchCode: Integer; AStoredFileCode: Integer): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetStoredFileExtensionCommand = nil) or CommandRecreateNeeded(FGetStoredFileExtensionCommand) then
          begin
            FreeAndNil(FGetStoredFileExtensionCommand);
            FGetStoredFileExtensionCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetStoredFileExtensionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetStoredFileExtensionCommand.Text := 'TdmDocProxy.GetStoredFileExtension';
            FGetStoredFileExtensionCommand.Prepare;
            CommandRecreated(FGetStoredFileExtensionCommand);
          end;
          FGetStoredFileExtensionCommand.Parameters[0].Value.SetInt32(AStoredFileBranchCode);
          FGetStoredFileExtensionCommand.Parameters[1].Value.SetInt32(AStoredFileCode);
          FGetStoredFileExtensionCommand.ExecuteUpdate;
          Result := FGetStoredFileExtensionCommand.Parameters[2].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmDocProxyClient.GetDocItem(DocBranchCode: Integer; DocCode: Integer; DocItemCode: Integer; out FileName: string; out RelativePath: string);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDocItemCommand = nil) or CommandRecreateNeeded(FGetDocItemCommand) then
          begin
            FreeAndNil(FGetDocItemCommand);
            FGetDocItemCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDocItemCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDocItemCommand.Text := 'TdmDocProxy.GetDocItem';
            FGetDocItemCommand.Prepare;
            CommandRecreated(FGetDocItemCommand);
          end;
          FGetDocItemCommand.Parameters[0].Value.SetInt32(DocBranchCode);
          FGetDocItemCommand.Parameters[1].Value.SetInt32(DocCode);
          FGetDocItemCommand.Parameters[2].Value.SetInt32(DocItemCode);
          FGetDocItemCommand.ExecuteUpdate;
          FileName := FGetDocItemCommand.Parameters[3].Value.GetWideString;
          RelativePath := FGetDocItemCommand.Parameters[4].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDocProxyClient.GetStoredFileExtensionCode(AStoredFileBranchCode: Integer; AStoredFileCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetStoredFileExtensionCodeCommand = nil) or CommandRecreateNeeded(FGetStoredFileExtensionCodeCommand) then
          begin
            FreeAndNil(FGetStoredFileExtensionCodeCommand);
            FGetStoredFileExtensionCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetStoredFileExtensionCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetStoredFileExtensionCodeCommand.Text := 'TdmDocProxy.GetStoredFileExtensionCode';
            FGetStoredFileExtensionCodeCommand.Prepare;
            CommandRecreated(FGetStoredFileExtensionCodeCommand);
          end;
          FGetStoredFileExtensionCodeCommand.Parameters[0].Value.SetInt32(AStoredFileBranchCode);
          FGetStoredFileExtensionCodeCommand.Parameters[1].Value.SetInt32(AStoredFileCode);
          FGetStoredFileExtensionCodeCommand.ExecuteUpdate;
          Result := FGetStoredFileExtensionCodeCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDocProxyClient.GetFileExtensionFileDialogFilter(AFileExtensionCode: Integer): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetFileExtensionFileDialogFilterCommand = nil) or CommandRecreateNeeded(FGetFileExtensionFileDialogFilterCommand) then
          begin
            FreeAndNil(FGetFileExtensionFileDialogFilterCommand);
            FGetFileExtensionFileDialogFilterCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetFileExtensionFileDialogFilterCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetFileExtensionFileDialogFilterCommand.Text := 'TdmDocProxy.GetFileExtensionFileDialogFilter';
            FGetFileExtensionFileDialogFilterCommand.Prepare;
            CommandRecreated(FGetFileExtensionFileDialogFilterCommand);
          end;
          FGetFileExtensionFileDialogFilterCommand.Parameters[0].Value.SetInt32(AFileExtensionCode);
          FGetFileExtensionFileDialogFilterCommand.ExecuteUpdate;
          Result := FGetFileExtensionFileDialogFilterCommand.Parameters[1].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDocProxyClient.GetDocItemTypeFileDialogFilter(ADocItemTypeCode: Integer): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDocItemTypeFileDialogFilterCommand = nil) or CommandRecreateNeeded(FGetDocItemTypeFileDialogFilterCommand) then
          begin
            FreeAndNil(FGetDocItemTypeFileDialogFilterCommand);
            FGetDocItemTypeFileDialogFilterCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDocItemTypeFileDialogFilterCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDocItemTypeFileDialogFilterCommand.Text := 'TdmDocProxy.GetDocItemTypeFileDialogFilter';
            FGetDocItemTypeFileDialogFilterCommand.Prepare;
            CommandRecreated(FGetDocItemTypeFileDialogFilterCommand);
          end;
          FGetDocItemTypeFileDialogFilterCommand.Parameters[0].Value.SetInt32(ADocItemTypeCode);
          FGetDocItemTypeFileDialogFilterCommand.ExecuteUpdate;
          Result := FGetDocItemTypeFileDialogFilterCommand.Parameters[1].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDocProxyClient.IsFileExtensionAllowed(AFileExtensionCode: Integer; ADocItemTypeCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsFileExtensionAllowedCommand = nil) or CommandRecreateNeeded(FIsFileExtensionAllowedCommand) then
          begin
            FreeAndNil(FIsFileExtensionAllowedCommand);
            FIsFileExtensionAllowedCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsFileExtensionAllowedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsFileExtensionAllowedCommand.Text := 'TdmDocProxy.IsFileExtensionAllowed';
            FIsFileExtensionAllowedCommand.Prepare;
            CommandRecreated(FIsFileExtensionAllowedCommand);
          end;
          FIsFileExtensionAllowedCommand.Parameters[0].Value.SetInt32(AFileExtensionCode);
          FIsFileExtensionAllowedCommand.Parameters[1].Value.SetInt32(ADocItemTypeCode);
          FIsFileExtensionAllowedCommand.ExecuteUpdate;
          Result := FIsFileExtensionAllowedCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmDocProxyClient.GetDocItemStoredFile(ADocBranchCode: Integer; ADocCode: Integer; ADocItemCode: Integer; out StoredFileBranchCode: Integer; out StoredFileCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDocItemStoredFileCommand = nil) or CommandRecreateNeeded(FGetDocItemStoredFileCommand) then
          begin
            FreeAndNil(FGetDocItemStoredFileCommand);
            FGetDocItemStoredFileCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDocItemStoredFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDocItemStoredFileCommand.Text := 'TdmDocProxy.GetDocItemStoredFile';
            FGetDocItemStoredFileCommand.Prepare;
            CommandRecreated(FGetDocItemStoredFileCommand);
          end;
          FGetDocItemStoredFileCommand.Parameters[0].Value.SetInt32(ADocBranchCode);
          FGetDocItemStoredFileCommand.Parameters[1].Value.SetInt32(ADocCode);
          FGetDocItemStoredFileCommand.Parameters[2].Value.SetInt32(ADocItemCode);
          FGetDocItemStoredFileCommand.ExecuteUpdate;
          StoredFileBranchCode := FGetDocItemStoredFileCommand.Parameters[3].Value.GetInt32;
          StoredFileCode := FGetDocItemStoredFileCommand.Parameters[4].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDocProxyClient.GetStoredFileSize(AStoredFileBranchCode: Integer; AStoredFileCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetStoredFileSizeCommand = nil) or CommandRecreateNeeded(FGetStoredFileSizeCommand) then
          begin
            FreeAndNil(FGetStoredFileSizeCommand);
            FGetStoredFileSizeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetStoredFileSizeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetStoredFileSizeCommand.Text := 'TdmDocProxy.GetStoredFileSize';
            FGetStoredFileSizeCommand.Prepare;
            CommandRecreated(FGetStoredFileSizeCommand);
          end;
          FGetStoredFileSizeCommand.Parameters[0].Value.SetInt32(AStoredFileBranchCode);
          FGetStoredFileSizeCommand.Parameters[1].Value.SetInt32(AStoredFileCode);
          FGetStoredFileSizeCommand.ExecuteUpdate;
          Result := FGetStoredFileSizeCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDocProxyClient.GetNewDocItemTypeCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewDocItemTypeCodeCommand = nil) or CommandRecreateNeeded(FGetNewDocItemTypeCodeCommand) then
          begin
            FreeAndNil(FGetNewDocItemTypeCodeCommand);
            FGetNewDocItemTypeCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewDocItemTypeCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewDocItemTypeCodeCommand.Text := 'TdmDocProxy.GetNewDocItemTypeCode';
            FGetNewDocItemTypeCodeCommand.Prepare;
            CommandRecreated(FGetNewDocItemTypeCodeCommand);
          end;
          FGetNewDocItemTypeCodeCommand.ExecuteUpdate;
          Result := FGetNewDocItemTypeCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDocProxyClient.GetDocumentDownloadURL(AContentStorageLocatorURL: string; ADocumentID: string): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDocumentDownloadURLCommand = nil) or CommandRecreateNeeded(FGetDocumentDownloadURLCommand) then
          begin
            FreeAndNil(FGetDocumentDownloadURLCommand);
            FGetDocumentDownloadURLCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDocumentDownloadURLCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDocumentDownloadURLCommand.Text := 'TdmDocProxy.GetDocumentDownloadURL';
            FGetDocumentDownloadURLCommand.Prepare;
            CommandRecreated(FGetDocumentDownloadURLCommand);
          end;
          FGetDocumentDownloadURLCommand.Parameters[0].Value.SetWideString(AContentStorageLocatorURL);
          FGetDocumentDownloadURLCommand.Parameters[1].Value.SetWideString(ADocumentID);
          FGetDocumentDownloadURLCommand.ExecuteUpdate;
          Result := FGetDocumentDownloadURLCommand.Parameters[2].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDocProxyClient.GetDocumentUploadInfo(AContentStorageLocatorURL: string; AExtention: string; AHash: string; ASize: Int64): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDocumentUploadInfoCommand = nil) or CommandRecreateNeeded(FGetDocumentUploadInfoCommand) then
          begin
            FreeAndNil(FGetDocumentUploadInfoCommand);
            FGetDocumentUploadInfoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDocumentUploadInfoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDocumentUploadInfoCommand.Text := 'TdmDocProxy.GetDocumentUploadInfo';
            FGetDocumentUploadInfoCommand.Prepare;
            CommandRecreated(FGetDocumentUploadInfoCommand);
          end;
          FGetDocumentUploadInfoCommand.Parameters[0].Value.SetWideString(AContentStorageLocatorURL);
          FGetDocumentUploadInfoCommand.Parameters[1].Value.SetWideString(AExtention);
          FGetDocumentUploadInfoCommand.Parameters[2].Value.SetWideString(AHash);
          FGetDocumentUploadInfoCommand.Parameters[3].Value.SetInt64(ASize);
          FGetDocumentUploadInfoCommand.ExecuteUpdate;
          Result := FGetDocumentUploadInfoCommand.Parameters[4].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmDocProxyClient.GetDocItemTemplateContentStorage(ADocItemTemplateCode: Integer; out DocumentID: string; out ContentStorageAddress: string);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDocItemTemplateContentStorageCommand = nil) or CommandRecreateNeeded(FGetDocItemTemplateContentStorageCommand) then
          begin
            FreeAndNil(FGetDocItemTemplateContentStorageCommand);
            FGetDocItemTemplateContentStorageCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDocItemTemplateContentStorageCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDocItemTemplateContentStorageCommand.Text := 'TdmDocProxy.GetDocItemTemplateContentStorage';
            FGetDocItemTemplateContentStorageCommand.Prepare;
            CommandRecreated(FGetDocItemTemplateContentStorageCommand);
          end;
          FGetDocItemTemplateContentStorageCommand.Parameters[0].Value.SetInt32(ADocItemTemplateCode);
          FGetDocItemTemplateContentStorageCommand.ExecuteUpdate;
          DocumentID := FGetDocItemTemplateContentStorageCommand.Parameters[1].Value.GetWideString;
          ContentStorageAddress := FGetDocItemTemplateContentStorageCommand.Parameters[2].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDocProxyClient.CommitUpload(AContentStorageLocatorURL: string; AUploadID: string; MultiPartUploadResultHeaderValues: string): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FCommitUploadCommand = nil) or CommandRecreateNeeded(FCommitUploadCommand) then
          begin
            FreeAndNil(FCommitUploadCommand);
            FCommitUploadCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FCommitUploadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FCommitUploadCommand.Text := 'TdmDocProxy.CommitUpload';
            FCommitUploadCommand.Prepare;
            CommandRecreated(FCommitUploadCommand);
          end;
          FCommitUploadCommand.Parameters[0].Value.SetWideString(AContentStorageLocatorURL);
          FCommitUploadCommand.Parameters[1].Value.SetWideString(AUploadID);
          FCommitUploadCommand.Parameters[2].Value.SetWideString(MultiPartUploadResultHeaderValues);
          FCommitUploadCommand.ExecuteUpdate;
          Result := FCommitUploadCommand.Parameters[3].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmDocProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmDocProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmDocProxyClient.Destroy;
begin
  FGetNewDocCodeCommand.DisposeOf;
  FGetStoredFileDataCommand.DisposeOf;
  FGetDocItemTemplateStoredFileCommand.DisposeOf;
  FGetStoredFileExtensionCommand.DisposeOf;
  FGetDocItemCommand.DisposeOf;
  FGetStoredFileExtensionCodeCommand.DisposeOf;
  FGetFileExtensionFileDialogFilterCommand.DisposeOf;
  FGetDocItemTypeFileDialogFilterCommand.DisposeOf;
  FIsFileExtensionAllowedCommand.DisposeOf;
  FGetDocItemStoredFileCommand.DisposeOf;
  FGetStoredFileSizeCommand.DisposeOf;
  FGetNewDocItemTypeCodeCommand.DisposeOf;
  FGetDocumentDownloadURLCommand.DisposeOf;
  FGetDocumentUploadInfoCommand.DisposeOf;
  FGetDocItemTemplateContentStorageCommand.DisposeOf;
  FCommitUploadCommand.DisposeOf;
  inherited;
end;

function TdmFilterProxyClient.GetFilterCodeByFormClassName(FilterFormClassName: string; FilterFormVariantCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetFilterCodeByFormClassNameCommand = nil) or CommandRecreateNeeded(FGetFilterCodeByFormClassNameCommand) then
          begin
            FreeAndNil(FGetFilterCodeByFormClassNameCommand);
            FGetFilterCodeByFormClassNameCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetFilterCodeByFormClassNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetFilterCodeByFormClassNameCommand.Text := 'TdmFilterProxy.GetFilterCodeByFormClassName';
            FGetFilterCodeByFormClassNameCommand.Prepare;
            CommandRecreated(FGetFilterCodeByFormClassNameCommand);
          end;
          FGetFilterCodeByFormClassNameCommand.Parameters[0].Value.SetWideString(FilterFormClassName);
          FGetFilterCodeByFormClassNameCommand.Parameters[1].Value.SetInt32(FilterFormVariantCode);
          FGetFilterCodeByFormClassNameCommand.ExecuteUpdate;
          Result := FGetFilterCodeByFormClassNameCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmFilterProxyClient.GetModifyFilterVariantActivityCode(FilterFormClassName: string; FilterFormVariantCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetModifyFilterVariantActivityCodeCommand = nil) or CommandRecreateNeeded(FGetModifyFilterVariantActivityCodeCommand) then
          begin
            FreeAndNil(FGetModifyFilterVariantActivityCodeCommand);
            FGetModifyFilterVariantActivityCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetModifyFilterVariantActivityCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetModifyFilterVariantActivityCodeCommand.Text := 'TdmFilterProxy.GetModifyFilterVariantActivityCode';
            FGetModifyFilterVariantActivityCodeCommand.Prepare;
            CommandRecreated(FGetModifyFilterVariantActivityCodeCommand);
          end;
          FGetModifyFilterVariantActivityCodeCommand.Parameters[0].Value.SetWideString(FilterFormClassName);
          FGetModifyFilterVariantActivityCodeCommand.Parameters[1].Value.SetInt32(FilterFormVariantCode);
          FGetModifyFilterVariantActivityCodeCommand.ExecuteUpdate;
          Result := FGetModifyFilterVariantActivityCodeCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmFilterProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmFilterProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmFilterProxyClient.Destroy;
begin
  FGetFilterCodeByFormClassNameCommand.DisposeOf;
  FGetModifyFilterVariantActivityCodeCommand.DisposeOf;
  inherited;
end;

function TdmProductionProductsTreeProxyClient.GetProductDefaultStore(ProductCode: Integer; DeptCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductDefaultStoreCommand = nil) or CommandRecreateNeeded(FGetProductDefaultStoreCommand) then
          begin
            FreeAndNil(FGetProductDefaultStoreCommand);
            FGetProductDefaultStoreCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductDefaultStoreCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductDefaultStoreCommand.Text := 'TdmProductionProductsTreeProxy.GetProductDefaultStore';
            FGetProductDefaultStoreCommand.Prepare;
            CommandRecreated(FGetProductDefaultStoreCommand);
          end;
          FGetProductDefaultStoreCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductDefaultStoreCommand.Parameters[1].Value.SetInt32(DeptCode);
          FGetProductDefaultStoreCommand.ExecuteUpdate;
          Result := FGetProductDefaultStoreCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductionProductsTreeProxyClient.GetCompanyProductName(CompanyCode: Integer; ProductCode: Integer): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetCompanyProductNameCommand = nil) or CommandRecreateNeeded(FGetCompanyProductNameCommand) then
          begin
            FreeAndNil(FGetCompanyProductNameCommand);
            FGetCompanyProductNameCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetCompanyProductNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetCompanyProductNameCommand.Text := 'TdmProductionProductsTreeProxy.GetCompanyProductName';
            FGetCompanyProductNameCommand.Prepare;
            CommandRecreated(FGetCompanyProductNameCommand);
          end;
          FGetCompanyProductNameCommand.Parameters[0].Value.SetInt32(CompanyCode);
          FGetCompanyProductNameCommand.Parameters[1].Value.SetInt32(ProductCode);
          FGetCompanyProductNameCommand.ExecuteUpdate;
          Result := FGetCompanyProductNameCommand.Parameters[2].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductionProductsTreeProxyClient.GetProductData(ANodeID: Integer; out NodeName: string; out NodeNo: Double; out WorkMeasureCode: Integer; out AccountMeasureCode: Integer; out AccountMeasureCoef: Double; out TechMeasureCode: Integer; out TechMeasureCoef: Double; out EstimatedSecondaryPrice: Double; out MarketSecondaryPrice: Double; out IsVatFree: Boolean; out HasDocumentation: Boolean; out TransportMeasureCode: Integer; out TransportMeasureCoef: Double; out SelfExistentStatusCode: Integer; out IsGroup: Boolean; out TransientStatusCode: Integer; out WorkdaysToExist: Integer; out ParentNodeID: Integer; out IsInactive: Boolean; out IsSelfApproved: Boolean; out SaleLeaseSecondaryPrice: Double; out SaleLeaseDateUnitCode: Integer; out ProductSpecRequirementCode: Integer; out BOIOrderTypeCode: Integer; out CommonStatusCode: Integer; out HasSpec: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductDataCommand = nil) or CommandRecreateNeeded(FGetProductDataCommand) then
          begin
            FreeAndNil(FGetProductDataCommand);
            FGetProductDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductDataCommand.Text := 'TdmProductionProductsTreeProxy.GetProductData';
            FGetProductDataCommand.Prepare;
            CommandRecreated(FGetProductDataCommand);
          end;
          FGetProductDataCommand.Parameters[0].Value.SetInt32(ANodeID);
          FGetProductDataCommand.ExecuteUpdate;
          NodeName := FGetProductDataCommand.Parameters[1].Value.GetWideString;
          NodeNo := FGetProductDataCommand.Parameters[2].Value.GetDouble;
          WorkMeasureCode := FGetProductDataCommand.Parameters[3].Value.GetInt32;
          AccountMeasureCode := FGetProductDataCommand.Parameters[4].Value.GetInt32;
          AccountMeasureCoef := FGetProductDataCommand.Parameters[5].Value.GetDouble;
          TechMeasureCode := FGetProductDataCommand.Parameters[6].Value.GetInt32;
          TechMeasureCoef := FGetProductDataCommand.Parameters[7].Value.GetDouble;
          EstimatedSecondaryPrice := FGetProductDataCommand.Parameters[8].Value.GetDouble;
          MarketSecondaryPrice := FGetProductDataCommand.Parameters[9].Value.GetDouble;
          IsVatFree := FGetProductDataCommand.Parameters[10].Value.GetBoolean;
          HasDocumentation := FGetProductDataCommand.Parameters[11].Value.GetBoolean;
          TransportMeasureCode := FGetProductDataCommand.Parameters[12].Value.GetInt32;
          TransportMeasureCoef := FGetProductDataCommand.Parameters[13].Value.GetDouble;
          SelfExistentStatusCode := FGetProductDataCommand.Parameters[14].Value.GetInt32;
          IsGroup := FGetProductDataCommand.Parameters[15].Value.GetBoolean;
          TransientStatusCode := FGetProductDataCommand.Parameters[16].Value.GetInt32;
          WorkdaysToExist := FGetProductDataCommand.Parameters[17].Value.GetInt32;
          ParentNodeID := FGetProductDataCommand.Parameters[18].Value.GetInt32;
          IsInactive := FGetProductDataCommand.Parameters[19].Value.GetBoolean;
          IsSelfApproved := FGetProductDataCommand.Parameters[20].Value.GetBoolean;
          SaleLeaseSecondaryPrice := FGetProductDataCommand.Parameters[21].Value.GetDouble;
          SaleLeaseDateUnitCode := FGetProductDataCommand.Parameters[22].Value.GetInt32;
          ProductSpecRequirementCode := FGetProductDataCommand.Parameters[23].Value.GetInt32;
          BOIOrderTypeCode := FGetProductDataCommand.Parameters[24].Value.GetInt32;
          CommonStatusCode := FGetProductDataCommand.Parameters[25].Value.GetInt32;
          HasSpec := FGetProductDataCommand.Parameters[26].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductionProductsTreeProxyClient.GetProductDoc(ProductCode: Integer; out DocBranchCode: Integer; out DocCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductDocCommand = nil) or CommandRecreateNeeded(FGetProductDocCommand) then
          begin
            FreeAndNil(FGetProductDocCommand);
            FGetProductDocCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductDocCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductDocCommand.Text := 'TdmProductionProductsTreeProxy.GetProductDoc';
            FGetProductDocCommand.Prepare;
            CommandRecreated(FGetProductDocCommand);
          end;
          FGetProductDocCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductDocCommand.ExecuteUpdate;
          DocBranchCode := FGetProductDocCommand.Parameters[1].Value.GetInt32;
          DocCode := FGetProductDocCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductionProductsTreeProxyClient.CheckProductRelation(NewProductCode: Integer; OldProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FCheckProductRelationCommand = nil) or CommandRecreateNeeded(FCheckProductRelationCommand) then
          begin
            FreeAndNil(FCheckProductRelationCommand);
            FCheckProductRelationCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FCheckProductRelationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FCheckProductRelationCommand.Text := 'TdmProductionProductsTreeProxy.CheckProductRelation';
            FCheckProductRelationCommand.Prepare;
            CommandRecreated(FCheckProductRelationCommand);
          end;
          FCheckProductRelationCommand.Parameters[0].Value.SetInt32(NewProductCode);
          FCheckProductRelationCommand.Parameters[1].Value.SetInt32(OldProductCode);
          FCheckProductRelationCommand.ExecuteUpdate;
          Result := FCheckProductRelationCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductionProductsTreeProxyClient.GetProductParam(AProductCode: Integer; AParamCode: Integer; out ParamName: string; out ParamAbbrev: string; out ParamOrderNo: Integer; out ValueType: Integer; out NomCode: Integer; out DocBranchCode: Integer; out DocCode: Integer; out HasDocItems: Boolean; out NomDocBranchCode: Integer; out NomDocCode: Integer; out NomHasDocItems: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductParamCommand = nil) or CommandRecreateNeeded(FGetProductParamCommand) then
          begin
            FreeAndNil(FGetProductParamCommand);
            FGetProductParamCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductParamCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductParamCommand.Text := 'TdmProductionProductsTreeProxy.GetProductParam';
            FGetProductParamCommand.Prepare;
            CommandRecreated(FGetProductParamCommand);
          end;
          FGetProductParamCommand.Parameters[0].Value.SetInt32(AProductCode);
          FGetProductParamCommand.Parameters[1].Value.SetInt32(AParamCode);
          FGetProductParamCommand.ExecuteUpdate;
          ParamName := FGetProductParamCommand.Parameters[2].Value.GetWideString;
          ParamAbbrev := FGetProductParamCommand.Parameters[3].Value.GetWideString;
          ParamOrderNo := FGetProductParamCommand.Parameters[4].Value.GetInt32;
          ValueType := FGetProductParamCommand.Parameters[5].Value.GetInt32;
          NomCode := FGetProductParamCommand.Parameters[6].Value.GetInt32;
          DocBranchCode := FGetProductParamCommand.Parameters[7].Value.GetInt32;
          DocCode := FGetProductParamCommand.Parameters[8].Value.GetInt32;
          HasDocItems := FGetProductParamCommand.Parameters[9].Value.GetBoolean;
          NomDocBranchCode := FGetProductParamCommand.Parameters[10].Value.GetInt32;
          NomDocCode := FGetProductParamCommand.Parameters[11].Value.GetInt32;
          NomHasDocItems := FGetProductParamCommand.Parameters[12].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductionProductsTreeProxyClient.GetProductNameAndDoc(ProductCode: Integer; out ProductName: string; out ProductNo: Double; out DocBranchCode: Integer; out DocCode: Integer; out HasDocumentation: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductNameAndDocCommand = nil) or CommandRecreateNeeded(FGetProductNameAndDocCommand) then
          begin
            FreeAndNil(FGetProductNameAndDocCommand);
            FGetProductNameAndDocCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductNameAndDocCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductNameAndDocCommand.Text := 'TdmProductionProductsTreeProxy.GetProductNameAndDoc';
            FGetProductNameAndDocCommand.Prepare;
            CommandRecreated(FGetProductNameAndDocCommand);
          end;
          FGetProductNameAndDocCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductNameAndDocCommand.ExecuteUpdate;
          ProductName := FGetProductNameAndDocCommand.Parameters[1].Value.GetWideString;
          ProductNo := FGetProductNameAndDocCommand.Parameters[2].Value.GetDouble;
          DocBranchCode := FGetProductNameAndDocCommand.Parameters[3].Value.GetInt32;
          DocCode := FGetProductNameAndDocCommand.Parameters[4].Value.GetInt32;
          HasDocumentation := FGetProductNameAndDocCommand.Parameters[5].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductionProductsTreeProxyClient.GetProductSaleAcquireSinglePrice(ProductCode: Integer; InCurrencyCode: Integer; ToDate: TDateTime; ClientCode: Integer): OleVariant;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductSaleAcquireSinglePriceCommand = nil) or CommandRecreateNeeded(FGetProductSaleAcquireSinglePriceCommand) then
          begin
            FreeAndNil(FGetProductSaleAcquireSinglePriceCommand);
            FGetProductSaleAcquireSinglePriceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductSaleAcquireSinglePriceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductSaleAcquireSinglePriceCommand.Text := 'TdmProductionProductsTreeProxy.GetProductSaleAcquireSinglePrice';
            FGetProductSaleAcquireSinglePriceCommand.Prepare;
            CommandRecreated(FGetProductSaleAcquireSinglePriceCommand);
          end;
          FGetProductSaleAcquireSinglePriceCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductSaleAcquireSinglePriceCommand.Parameters[1].Value.SetInt32(InCurrencyCode);
          FGetProductSaleAcquireSinglePriceCommand.Parameters[2].Value.AsDateTime := ToDate;
          FGetProductSaleAcquireSinglePriceCommand.Parameters[3].Value.SetInt32(ClientCode);
          FGetProductSaleAcquireSinglePriceCommand.ExecuteUpdate;
          Result := FGetProductSaleAcquireSinglePriceCommand.Parameters[4].Value.AsVariant;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductionProductsTreeProxyClient.ProductBorderRelExists(ProductCode: Integer; BorderRelTypeCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FProductBorderRelExistsCommand = nil) or CommandRecreateNeeded(FProductBorderRelExistsCommand) then
          begin
            FreeAndNil(FProductBorderRelExistsCommand);
            FProductBorderRelExistsCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FProductBorderRelExistsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FProductBorderRelExistsCommand.Text := 'TdmProductionProductsTreeProxy.ProductBorderRelExists';
            FProductBorderRelExistsCommand.Prepare;
            CommandRecreated(FProductBorderRelExistsCommand);
          end;
          FProductBorderRelExistsCommand.Parameters[0].Value.SetInt32(ProductCode);
          FProductBorderRelExistsCommand.Parameters[1].Value.SetInt32(BorderRelTypeCode);
          FProductBorderRelExistsCommand.ExecuteUpdate;
          Result := FProductBorderRelExistsCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductionProductsTreeProxyClient.GetProductPrices(ProductCode: Integer; PricesDate: TDateTime; out EstimatedSecondaryPrice: Double; out MarketSecondaryPrice: Double; out InvestmentValue2: Double; out InvestmentValue3: Double; out InvestmentValue4: Double; out InvestmentValue5: Double; out PrecisionLevelCode: Double);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductPricesCommand = nil) or CommandRecreateNeeded(FGetProductPricesCommand) then
          begin
            FreeAndNil(FGetProductPricesCommand);
            FGetProductPricesCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductPricesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductPricesCommand.Text := 'TdmProductionProductsTreeProxy.GetProductPrices';
            FGetProductPricesCommand.Prepare;
            CommandRecreated(FGetProductPricesCommand);
          end;
          FGetProductPricesCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductPricesCommand.Parameters[1].Value.AsDateTime := PricesDate;
          FGetProductPricesCommand.ExecuteUpdate;
          EstimatedSecondaryPrice := FGetProductPricesCommand.Parameters[2].Value.GetDouble;
          MarketSecondaryPrice := FGetProductPricesCommand.Parameters[3].Value.GetDouble;
          InvestmentValue2 := FGetProductPricesCommand.Parameters[4].Value.GetDouble;
          InvestmentValue3 := FGetProductPricesCommand.Parameters[5].Value.GetDouble;
          InvestmentValue4 := FGetProductPricesCommand.Parameters[6].Value.GetDouble;
          InvestmentValue5 := FGetProductPricesCommand.Parameters[7].Value.GetDouble;
          PrecisionLevelCode := FGetProductPricesCommand.Parameters[8].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductionProductsTreeProxyClient.GetProductCode(AProductNo: Double; AProductClass: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductCodeCommand = nil) or CommandRecreateNeeded(FGetProductCodeCommand) then
          begin
            FreeAndNil(FGetProductCodeCommand);
            FGetProductCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductCodeCommand.Text := 'TdmProductionProductsTreeProxy.GetProductCode';
            FGetProductCodeCommand.Prepare;
            CommandRecreated(FGetProductCodeCommand);
          end;
          FGetProductCodeCommand.Parameters[0].Value.SetDouble(AProductNo);
          FGetProductCodeCommand.Parameters[1].Value.SetInt32(AProductClass);
          FGetProductCodeCommand.ExecuteUpdate;
          Result := FGetProductCodeCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductionProductsTreeProxyClient.GetCommonProductCode(ProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetCommonProductCodeCommand = nil) or CommandRecreateNeeded(FGetCommonProductCodeCommand) then
          begin
            FreeAndNil(FGetCommonProductCodeCommand);
            FGetCommonProductCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetCommonProductCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetCommonProductCodeCommand.Text := 'TdmProductionProductsTreeProxy.GetCommonProductCode';
            FGetCommonProductCodeCommand.Prepare;
            CommandRecreated(FGetCommonProductCodeCommand);
          end;
          FGetCommonProductCodeCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetCommonProductCodeCommand.ExecuteUpdate;
          Result := FGetCommonProductCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductionProductsTreeProxyClient.GetThoroughlyEngineeredProductCode(ProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetThoroughlyEngineeredProductCodeCommand = nil) or CommandRecreateNeeded(FGetThoroughlyEngineeredProductCodeCommand) then
          begin
            FreeAndNil(FGetThoroughlyEngineeredProductCodeCommand);
            FGetThoroughlyEngineeredProductCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetThoroughlyEngineeredProductCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetThoroughlyEngineeredProductCodeCommand.Text := 'TdmProductionProductsTreeProxy.GetThoroughlyEngineeredProductCode';
            FGetThoroughlyEngineeredProductCodeCommand.Prepare;
            CommandRecreated(FGetThoroughlyEngineeredProductCodeCommand);
          end;
          FGetThoroughlyEngineeredProductCodeCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetThoroughlyEngineeredProductCodeCommand.ExecuteUpdate;
          Result := FGetThoroughlyEngineeredProductCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductionProductsTreeProxyClient.GetProductDeptOptionsTopDeptCode(AProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductDeptOptionsTopDeptCodeCommand = nil) or CommandRecreateNeeded(FGetProductDeptOptionsTopDeptCodeCommand) then
          begin
            FreeAndNil(FGetProductDeptOptionsTopDeptCodeCommand);
            FGetProductDeptOptionsTopDeptCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductDeptOptionsTopDeptCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductDeptOptionsTopDeptCodeCommand.Text := 'TdmProductionProductsTreeProxy.GetProductDeptOptionsTopDeptCode';
            FGetProductDeptOptionsTopDeptCodeCommand.Prepare;
            CommandRecreated(FGetProductDeptOptionsTopDeptCodeCommand);
          end;
          FGetProductDeptOptionsTopDeptCodeCommand.Parameters[0].Value.SetInt32(AProductCode);
          FGetProductDeptOptionsTopDeptCodeCommand.ExecuteUpdate;
          Result := FGetProductDeptOptionsTopDeptCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmProductionProductsTreeProxyClient.GetNodeData(ANodeID: Integer; out NodeName: string; out NodeNo: Double);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNodeDataCommand = nil) or CommandRecreateNeeded(FGetNodeDataCommand) then
          begin
            FreeAndNil(FGetNodeDataCommand);
            FGetNodeDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNodeDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNodeDataCommand.Text := 'TdmProductionProductsTreeProxy.GetNodeData';
            FGetNodeDataCommand.Prepare;
            CommandRecreated(FGetNodeDataCommand);
          end;
          FGetNodeDataCommand.Parameters[0].Value.SetInt32(ANodeID);
          FGetNodeDataCommand.ExecuteUpdate;
          NodeName := FGetNodeDataCommand.Parameters[1].Value.GetWideString;
          NodeNo := FGetNodeDataCommand.Parameters[2].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductionProductsTreeProxyClient.IsInstance(NodeID: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsInstanceCommand = nil) or CommandRecreateNeeded(FIsInstanceCommand) then
          begin
            FreeAndNil(FIsInstanceCommand);
            FIsInstanceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsInstanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsInstanceCommand.Text := 'TdmProductionProductsTreeProxy.IsInstance';
            FIsInstanceCommand.Prepare;
            CommandRecreated(FIsInstanceCommand);
          end;
          FIsInstanceCommand.Parameters[0].Value.SetInt32(NodeID);
          FIsInstanceCommand.ExecuteUpdate;
          Result := FIsInstanceCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProductionProductsTreeProxyClient.IsDescendantOf(NodeID: Integer; RootID: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsDescendantOfCommand = nil) or CommandRecreateNeeded(FIsDescendantOfCommand) then
          begin
            FreeAndNil(FIsDescendantOfCommand);
            FIsDescendantOfCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsDescendantOfCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsDescendantOfCommand.Text := 'TdmProductionProductsTreeProxy.IsDescendantOf';
            FIsDescendantOfCommand.Prepare;
            CommandRecreated(FIsDescendantOfCommand);
          end;
          FIsDescendantOfCommand.Parameters[0].Value.SetInt32(NodeID);
          FIsDescendantOfCommand.Parameters[1].Value.SetInt32(RootID);
          FIsDescendantOfCommand.ExecuteUpdate;
          Result := FIsDescendantOfCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmProductionProductsTreeProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmProductionProductsTreeProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmProductionProductsTreeProxyClient.Destroy;
begin
  FGetProductDefaultStoreCommand.DisposeOf;
  FGetCompanyProductNameCommand.DisposeOf;
  FGetProductDataCommand.DisposeOf;
  FGetProductDocCommand.DisposeOf;
  FCheckProductRelationCommand.DisposeOf;
  FGetProductParamCommand.DisposeOf;
  FGetProductNameAndDocCommand.DisposeOf;
  FGetProductSaleAcquireSinglePriceCommand.DisposeOf;
  FProductBorderRelExistsCommand.DisposeOf;
  FGetProductPricesCommand.DisposeOf;
  FGetProductCodeCommand.DisposeOf;
  FGetCommonProductCodeCommand.DisposeOf;
  FGetThoroughlyEngineeredProductCodeCommand.DisposeOf;
  FGetProductDeptOptionsTopDeptCodeCommand.DisposeOf;
  FGetNodeDataCommand.DisposeOf;
  FIsInstanceCommand.DisposeOf;
  FIsDescendantOfCommand.DisposeOf;
  inherited;
end;


constructor TdmNeedsProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmNeedsProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmNeedsProxyClient.Destroy;
begin
  inherited;
end;

procedure TdmExtensionsProxyClient.AddEmployeeMovement(EmployeeNo: Integer; InOut: Integer; MovementDateTime: TDateTime);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FAddEmployeeMovementCommand = nil) or CommandRecreateNeeded(FAddEmployeeMovementCommand) then
          begin
            FreeAndNil(FAddEmployeeMovementCommand);
            FAddEmployeeMovementCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FAddEmployeeMovementCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FAddEmployeeMovementCommand.Text := 'TdmExtensionsProxy.AddEmployeeMovement';
            FAddEmployeeMovementCommand.Prepare;
            CommandRecreated(FAddEmployeeMovementCommand);
          end;
          FAddEmployeeMovementCommand.Parameters[0].Value.SetInt32(EmployeeNo);
          FAddEmployeeMovementCommand.Parameters[1].Value.SetInt32(InOut);
          FAddEmployeeMovementCommand.Parameters[2].Value.AsDateTime := MovementDateTime;
          FAddEmployeeMovementCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmExtensionsProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmExtensionsProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmExtensionsProxyClient.Destroy;
begin
  FAddEmployeeMovementCommand.DisposeOf;
  inherited;
end;


constructor TdmProductTreeNodeFilterProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmProductTreeNodeFilterProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmProductTreeNodeFilterProxyClient.Destroy;
begin
  inherited;
end;


constructor TdmParamProductTreeNodeFilterProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmParamProductTreeNodeFilterProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmParamProductTreeNodeFilterProxyClient.Destroy;
begin
  inherited;
end;


constructor TdmDeptTreeNodeFilterProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmDeptTreeNodeFilterProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmDeptTreeNodeFilterProxyClient.Destroy;
begin
  inherited;
end;

function TdmBaseGroupsProxyClient.NewBaseGroupCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FNewBaseGroupCodeCommand = nil) or CommandRecreateNeeded(FNewBaseGroupCodeCommand) then
          begin
            FreeAndNil(FNewBaseGroupCodeCommand);
            FNewBaseGroupCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FNewBaseGroupCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FNewBaseGroupCodeCommand.Text := 'TdmBaseGroupsProxy.NewBaseGroupCode';
            FNewBaseGroupCodeCommand.Prepare;
            CommandRecreated(FNewBaseGroupCodeCommand);
          end;
          FNewBaseGroupCodeCommand.ExecuteUpdate;
          Result := FNewBaseGroupCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmBaseGroupsProxyClient.HasSMVSOperationsForDept(ADeptCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FHasSMVSOperationsForDeptCommand = nil) or CommandRecreateNeeded(FHasSMVSOperationsForDeptCommand) then
          begin
            FreeAndNil(FHasSMVSOperationsForDeptCommand);
            FHasSMVSOperationsForDeptCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FHasSMVSOperationsForDeptCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FHasSMVSOperationsForDeptCommand.Text := 'TdmBaseGroupsProxy.HasSMVSOperationsForDept';
            FHasSMVSOperationsForDeptCommand.Prepare;
            CommandRecreated(FHasSMVSOperationsForDeptCommand);
          end;
          FHasSMVSOperationsForDeptCommand.Parameters[0].Value.SetInt32(ADeptCode);
          FHasSMVSOperationsForDeptCommand.ExecuteUpdate;
          Result := FHasSMVSOperationsForDeptCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmBaseGroupsProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmBaseGroupsProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmBaseGroupsProxyClient.Destroy;
begin
  FNewBaseGroupCodeCommand.DisposeOf;
  FHasSMVSOperationsForDeptCommand.DisposeOf;
  inherited;
end;

function TdmHumanResourceProxyClient.TeamEarnings(TeamCode: Integer; BeginDate: TDateTime; EndDate: TDateTime): Double;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FTeamEarningsCommand = nil) or CommandRecreateNeeded(FTeamEarningsCommand) then
          begin
            FreeAndNil(FTeamEarningsCommand);
            FTeamEarningsCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FTeamEarningsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FTeamEarningsCommand.Text := 'TdmHumanResourceProxy.TeamEarnings';
            FTeamEarningsCommand.Prepare;
            CommandRecreated(FTeamEarningsCommand);
          end;
          FTeamEarningsCommand.Parameters[0].Value.SetInt32(TeamCode);
          FTeamEarningsCommand.Parameters[1].Value.AsDateTime := BeginDate;
          FTeamEarningsCommand.Parameters[2].Value.AsDateTime := EndDate;
          FTeamEarningsCommand.ExecuteUpdate;
          Result := FTeamEarningsCommand.Parameters[3].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmHumanResourceProxyClient.GetOccupationDeptCode(OccupationCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetOccupationDeptCodeCommand = nil) or CommandRecreateNeeded(FGetOccupationDeptCodeCommand) then
          begin
            FreeAndNil(FGetOccupationDeptCodeCommand);
            FGetOccupationDeptCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetOccupationDeptCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetOccupationDeptCodeCommand.Text := 'TdmHumanResourceProxy.GetOccupationDeptCode';
            FGetOccupationDeptCodeCommand.Prepare;
            CommandRecreated(FGetOccupationDeptCodeCommand);
          end;
          FGetOccupationDeptCodeCommand.Parameters[0].Value.SetInt32(OccupationCode);
          FGetOccupationDeptCodeCommand.ExecuteUpdate;
          Result := FGetOccupationDeptCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmHumanResourceProxyClient.DeptDayWorkHours(DeptCode: Integer): Double;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FDeptDayWorkHoursCommand = nil) or CommandRecreateNeeded(FDeptDayWorkHoursCommand) then
          begin
            FreeAndNil(FDeptDayWorkHoursCommand);
            FDeptDayWorkHoursCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FDeptDayWorkHoursCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FDeptDayWorkHoursCommand.Text := 'TdmHumanResourceProxy.DeptDayWorkHours';
            FDeptDayWorkHoursCommand.Prepare;
            CommandRecreated(FDeptDayWorkHoursCommand);
          end;
          FDeptDayWorkHoursCommand.Parameters[0].Value.SetInt32(DeptCode);
          FDeptDayWorkHoursCommand.ExecuteUpdate;
          Result := FDeptDayWorkHoursCommand.Parameters[1].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmHumanResourceProxyClient.GetEmployeeData(AEmployeeCode: Integer; out AEmployeeName: string; out AHasDocumentation: Boolean; out ADocBranchCode: Integer; out ADocCode: Integer; out AEmployeeNo: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetEmployeeDataCommand = nil) or CommandRecreateNeeded(FGetEmployeeDataCommand) then
          begin
            FreeAndNil(FGetEmployeeDataCommand);
            FGetEmployeeDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetEmployeeDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetEmployeeDataCommand.Text := 'TdmHumanResourceProxy.GetEmployeeData';
            FGetEmployeeDataCommand.Prepare;
            CommandRecreated(FGetEmployeeDataCommand);
          end;
          FGetEmployeeDataCommand.Parameters[0].Value.SetInt32(AEmployeeCode);
          FGetEmployeeDataCommand.ExecuteUpdate;
          AEmployeeName := FGetEmployeeDataCommand.Parameters[1].Value.GetWideString;
          AHasDocumentation := FGetEmployeeDataCommand.Parameters[2].Value.GetBoolean;
          ADocBranchCode := FGetEmployeeDataCommand.Parameters[3].Value.GetInt32;
          ADocCode := FGetEmployeeDataCommand.Parameters[4].Value.GetInt32;
          AEmployeeNo := FGetEmployeeDataCommand.Parameters[5].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmHumanResourceProxyClient.GetEmployeeName(AEmployeeCode: Integer; out AFirstName: string; out AMiddleName: string; out ALastName: string);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetEmployeeNameCommand = nil) or CommandRecreateNeeded(FGetEmployeeNameCommand) then
          begin
            FreeAndNil(FGetEmployeeNameCommand);
            FGetEmployeeNameCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetEmployeeNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetEmployeeNameCommand.Text := 'TdmHumanResourceProxy.GetEmployeeName';
            FGetEmployeeNameCommand.Prepare;
            CommandRecreated(FGetEmployeeNameCommand);
          end;
          FGetEmployeeNameCommand.Parameters[0].Value.SetInt32(AEmployeeCode);
          FGetEmployeeNameCommand.ExecuteUpdate;
          AFirstName := FGetEmployeeNameCommand.Parameters[1].Value.GetWideString;
          AMiddleName := FGetEmployeeNameCommand.Parameters[2].Value.GetWideString;
          ALastName := FGetEmployeeNameCommand.Parameters[3].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmHumanResourceProxyClient.GetNewProfessionLocalNo(AParentProfessionCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewProfessionLocalNoCommand = nil) or CommandRecreateNeeded(FGetNewProfessionLocalNoCommand) then
          begin
            FreeAndNil(FGetNewProfessionLocalNoCommand);
            FGetNewProfessionLocalNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewProfessionLocalNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewProfessionLocalNoCommand.Text := 'TdmHumanResourceProxy.GetNewProfessionLocalNo';
            FGetNewProfessionLocalNoCommand.Prepare;
            CommandRecreated(FGetNewProfessionLocalNoCommand);
          end;
          FGetNewProfessionLocalNoCommand.Parameters[0].Value.SetInt32(AParentProfessionCode);
          FGetNewProfessionLocalNoCommand.ExecuteUpdate;
          Result := FGetNewProfessionLocalNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmHumanResourceProxyClient.GetProfessionCodeByFullNo(AProfessionFullNo: string): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProfessionCodeByFullNoCommand = nil) or CommandRecreateNeeded(FGetProfessionCodeByFullNoCommand) then
          begin
            FreeAndNil(FGetProfessionCodeByFullNoCommand);
            FGetProfessionCodeByFullNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProfessionCodeByFullNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProfessionCodeByFullNoCommand.Text := 'TdmHumanResourceProxy.GetProfessionCodeByFullNo';
            FGetProfessionCodeByFullNoCommand.Prepare;
            CommandRecreated(FGetProfessionCodeByFullNoCommand);
          end;
          FGetProfessionCodeByFullNoCommand.Parameters[0].Value.SetWideString(AProfessionFullNo);
          FGetProfessionCodeByFullNoCommand.ExecuteUpdate;
          Result := FGetProfessionCodeByFullNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmHumanResourceProxyClient.GetProfessionIsInstance(AProfessionCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProfessionIsInstanceCommand = nil) or CommandRecreateNeeded(FGetProfessionIsInstanceCommand) then
          begin
            FreeAndNil(FGetProfessionIsInstanceCommand);
            FGetProfessionIsInstanceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProfessionIsInstanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProfessionIsInstanceCommand.Text := 'TdmHumanResourceProxy.GetProfessionIsInstance';
            FGetProfessionIsInstanceCommand.Prepare;
            CommandRecreated(FGetProfessionIsInstanceCommand);
          end;
          FGetProfessionIsInstanceCommand.Parameters[0].Value.SetInt32(AProfessionCode);
          FGetProfessionIsInstanceCommand.ExecuteUpdate;
          Result := FGetProfessionIsInstanceCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmHumanResourceProxyClient.GetNewEmployeeCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewEmployeeCodeCommand = nil) or CommandRecreateNeeded(FGetNewEmployeeCodeCommand) then
          begin
            FreeAndNil(FGetNewEmployeeCodeCommand);
            FGetNewEmployeeCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewEmployeeCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewEmployeeCodeCommand.Text := 'TdmHumanResourceProxy.GetNewEmployeeCode';
            FGetNewEmployeeCodeCommand.Prepare;
            CommandRecreated(FGetNewEmployeeCodeCommand);
          end;
          FGetNewEmployeeCodeCommand.ExecuteUpdate;
          Result := FGetNewEmployeeCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmHumanResourceProxyClient.GetEmployeeShiftCode(AEmployeeCode: Integer; ADate: TDateTime): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetEmployeeShiftCodeCommand = nil) or CommandRecreateNeeded(FGetEmployeeShiftCodeCommand) then
          begin
            FreeAndNil(FGetEmployeeShiftCodeCommand);
            FGetEmployeeShiftCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetEmployeeShiftCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetEmployeeShiftCodeCommand.Text := 'TdmHumanResourceProxy.GetEmployeeShiftCode';
            FGetEmployeeShiftCodeCommand.Prepare;
            CommandRecreated(FGetEmployeeShiftCodeCommand);
          end;
          FGetEmployeeShiftCodeCommand.Parameters[0].Value.SetInt32(AEmployeeCode);
          FGetEmployeeShiftCodeCommand.Parameters[1].Value.AsDateTime := ADate;
          FGetEmployeeShiftCodeCommand.ExecuteUpdate;
          Result := FGetEmployeeShiftCodeCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmHumanResourceProxyClient.GetNewDiscEventTypeCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewDiscEventTypeCodeCommand = nil) or CommandRecreateNeeded(FGetNewDiscEventTypeCodeCommand) then
          begin
            FreeAndNil(FGetNewDiscEventTypeCodeCommand);
            FGetNewDiscEventTypeCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewDiscEventTypeCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewDiscEventTypeCodeCommand.Text := 'TdmHumanResourceProxy.GetNewDiscEventTypeCode';
            FGetNewDiscEventTypeCodeCommand.Prepare;
            CommandRecreated(FGetNewDiscEventTypeCodeCommand);
          end;
          FGetNewDiscEventTypeCodeCommand.ExecuteUpdate;
          Result := FGetNewDiscEventTypeCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmHumanResourceProxyClient.GetNewDiscEventTypeLocalNo(AParentDiscEventTypeCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewDiscEventTypeLocalNoCommand = nil) or CommandRecreateNeeded(FGetNewDiscEventTypeLocalNoCommand) then
          begin
            FreeAndNil(FGetNewDiscEventTypeLocalNoCommand);
            FGetNewDiscEventTypeLocalNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewDiscEventTypeLocalNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewDiscEventTypeLocalNoCommand.Text := 'TdmHumanResourceProxy.GetNewDiscEventTypeLocalNo';
            FGetNewDiscEventTypeLocalNoCommand.Prepare;
            CommandRecreated(FGetNewDiscEventTypeLocalNoCommand);
          end;
          FGetNewDiscEventTypeLocalNoCommand.Parameters[0].Value.SetInt32(AParentDiscEventTypeCode);
          FGetNewDiscEventTypeLocalNoCommand.ExecuteUpdate;
          Result := FGetNewDiscEventTypeLocalNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmHumanResourceProxyClient.GetNewDiscEventTypePeriodCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewDiscEventTypePeriodCodeCommand = nil) or CommandRecreateNeeded(FGetNewDiscEventTypePeriodCodeCommand) then
          begin
            FreeAndNil(FGetNewDiscEventTypePeriodCodeCommand);
            FGetNewDiscEventTypePeriodCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewDiscEventTypePeriodCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewDiscEventTypePeriodCodeCommand.Text := 'TdmHumanResourceProxy.GetNewDiscEventTypePeriodCode';
            FGetNewDiscEventTypePeriodCodeCommand.Prepare;
            CommandRecreated(FGetNewDiscEventTypePeriodCodeCommand);
          end;
          FGetNewDiscEventTypePeriodCodeCommand.ExecuteUpdate;
          Result := FGetNewDiscEventTypePeriodCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmHumanResourceProxyClient.GetDiscEventTypeCodeByFullNo(ADiscEventTypeFullNo: string): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDiscEventTypeCodeByFullNoCommand = nil) or CommandRecreateNeeded(FGetDiscEventTypeCodeByFullNoCommand) then
          begin
            FreeAndNil(FGetDiscEventTypeCodeByFullNoCommand);
            FGetDiscEventTypeCodeByFullNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDiscEventTypeCodeByFullNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDiscEventTypeCodeByFullNoCommand.Text := 'TdmHumanResourceProxy.GetDiscEventTypeCodeByFullNo';
            FGetDiscEventTypeCodeByFullNoCommand.Prepare;
            CommandRecreated(FGetDiscEventTypeCodeByFullNoCommand);
          end;
          FGetDiscEventTypeCodeByFullNoCommand.Parameters[0].Value.SetWideString(ADiscEventTypeFullNo);
          FGetDiscEventTypeCodeByFullNoCommand.ExecuteUpdate;
          Result := FGetDiscEventTypeCodeByFullNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmHumanResourceProxyClient.GetDiscEventTypeIsInstance(ADiscEventTypeCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDiscEventTypeIsInstanceCommand = nil) or CommandRecreateNeeded(FGetDiscEventTypeIsInstanceCommand) then
          begin
            FreeAndNil(FGetDiscEventTypeIsInstanceCommand);
            FGetDiscEventTypeIsInstanceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDiscEventTypeIsInstanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDiscEventTypeIsInstanceCommand.Text := 'TdmHumanResourceProxy.GetDiscEventTypeIsInstance';
            FGetDiscEventTypeIsInstanceCommand.Prepare;
            CommandRecreated(FGetDiscEventTypeIsInstanceCommand);
          end;
          FGetDiscEventTypeIsInstanceCommand.Parameters[0].Value.SetInt32(ADiscEventTypeCode);
          FGetDiscEventTypeIsInstanceCommand.ExecuteUpdate;
          Result := FGetDiscEventTypeIsInstanceCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmHumanResourceProxyClient.GetDiscEventTypeIsInactive(ADiscEventTypeCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDiscEventTypeIsInactiveCommand = nil) or CommandRecreateNeeded(FGetDiscEventTypeIsInactiveCommand) then
          begin
            FreeAndNil(FGetDiscEventTypeIsInactiveCommand);
            FGetDiscEventTypeIsInactiveCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDiscEventTypeIsInactiveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDiscEventTypeIsInactiveCommand.Text := 'TdmHumanResourceProxy.GetDiscEventTypeIsInactive';
            FGetDiscEventTypeIsInactiveCommand.Prepare;
            CommandRecreated(FGetDiscEventTypeIsInactiveCommand);
          end;
          FGetDiscEventTypeIsInactiveCommand.Parameters[0].Value.SetInt32(ADiscEventTypeCode);
          FGetDiscEventTypeIsInactiveCommand.ExecuteUpdate;
          Result := FGetDiscEventTypeIsInactiveCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmHumanResourceProxyClient.GetDiscEventTypeData(DiscEventTypeCode: Integer; ToDate: TDateTime; out ParentDiscEventTypeCode: Integer; out LocalNo: Integer; out FullNo: string; out FormatedFullNo: string; out FullName: string; out ShortName: string; out IsGroup: Boolean; out DocBranchCode: Integer; out DocCode: Integer; out HasDocItems: Boolean; out Rating: Integer; out ActiveDateUnitCount: Integer; out ActiveDateUnitCode: Integer; out Color: Integer; out BackgroundColor: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDiscEventTypeDataCommand = nil) or CommandRecreateNeeded(FGetDiscEventTypeDataCommand) then
          begin
            FreeAndNil(FGetDiscEventTypeDataCommand);
            FGetDiscEventTypeDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDiscEventTypeDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDiscEventTypeDataCommand.Text := 'TdmHumanResourceProxy.GetDiscEventTypeData';
            FGetDiscEventTypeDataCommand.Prepare;
            CommandRecreated(FGetDiscEventTypeDataCommand);
          end;
          FGetDiscEventTypeDataCommand.Parameters[0].Value.SetInt32(DiscEventTypeCode);
          FGetDiscEventTypeDataCommand.Parameters[1].Value.AsDateTime := ToDate;
          FGetDiscEventTypeDataCommand.ExecuteUpdate;
          ParentDiscEventTypeCode := FGetDiscEventTypeDataCommand.Parameters[2].Value.GetInt32;
          LocalNo := FGetDiscEventTypeDataCommand.Parameters[3].Value.GetInt32;
          FullNo := FGetDiscEventTypeDataCommand.Parameters[4].Value.GetWideString;
          FormatedFullNo := FGetDiscEventTypeDataCommand.Parameters[5].Value.GetWideString;
          FullName := FGetDiscEventTypeDataCommand.Parameters[6].Value.GetWideString;
          ShortName := FGetDiscEventTypeDataCommand.Parameters[7].Value.GetWideString;
          IsGroup := FGetDiscEventTypeDataCommand.Parameters[8].Value.GetBoolean;
          DocBranchCode := FGetDiscEventTypeDataCommand.Parameters[9].Value.GetInt32;
          DocCode := FGetDiscEventTypeDataCommand.Parameters[10].Value.GetInt32;
          HasDocItems := FGetDiscEventTypeDataCommand.Parameters[11].Value.GetBoolean;
          Rating := FGetDiscEventTypeDataCommand.Parameters[12].Value.GetInt32;
          ActiveDateUnitCount := FGetDiscEventTypeDataCommand.Parameters[13].Value.GetInt32;
          ActiveDateUnitCode := FGetDiscEventTypeDataCommand.Parameters[14].Value.GetInt32;
          Color := FGetDiscEventTypeDataCommand.Parameters[15].Value.GetInt32;
          BackgroundColor := FGetDiscEventTypeDataCommand.Parameters[16].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmHumanResourceProxyClient.GetMinAndMaxOccWorkDeptPriorityNoCodes(out MinOccWorkDeptPriorityNoCode: Integer; out MaxOccWorkDeptPriorityNoCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetMinAndMaxOccWorkDeptPriorityNoCodesCommand = nil) or CommandRecreateNeeded(FGetMinAndMaxOccWorkDeptPriorityNoCodesCommand) then
          begin
            FreeAndNil(FGetMinAndMaxOccWorkDeptPriorityNoCodesCommand);
            FGetMinAndMaxOccWorkDeptPriorityNoCodesCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetMinAndMaxOccWorkDeptPriorityNoCodesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetMinAndMaxOccWorkDeptPriorityNoCodesCommand.Text := 'TdmHumanResourceProxy.GetMinAndMaxOccWorkDeptPriorityNoCodes';
            FGetMinAndMaxOccWorkDeptPriorityNoCodesCommand.Prepare;
            CommandRecreated(FGetMinAndMaxOccWorkDeptPriorityNoCodesCommand);
          end;
          FGetMinAndMaxOccWorkDeptPriorityNoCodesCommand.ExecuteUpdate;
          MinOccWorkDeptPriorityNoCode := FGetMinAndMaxOccWorkDeptPriorityNoCodesCommand.Parameters[0].Value.GetInt32;
          MaxOccWorkDeptPriorityNoCode := FGetMinAndMaxOccWorkDeptPriorityNoCodesCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmHumanResourceProxyClient.DeleteOccupation(AOccupationCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FDeleteOccupationCommand = nil) or CommandRecreateNeeded(FDeleteOccupationCommand) then
          begin
            FreeAndNil(FDeleteOccupationCommand);
            FDeleteOccupationCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FDeleteOccupationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FDeleteOccupationCommand.Text := 'TdmHumanResourceProxy.DeleteOccupation';
            FDeleteOccupationCommand.Prepare;
            CommandRecreated(FDeleteOccupationCommand);
          end;
          FDeleteOccupationCommand.Parameters[0].Value.SetInt32(AOccupationCode);
          FDeleteOccupationCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmHumanResourceProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmHumanResourceProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmHumanResourceProxyClient.Destroy;
begin
  FTeamEarningsCommand.DisposeOf;
  FGetOccupationDeptCodeCommand.DisposeOf;
  FDeptDayWorkHoursCommand.DisposeOf;
  FGetEmployeeDataCommand.DisposeOf;
  FGetEmployeeNameCommand.DisposeOf;
  FGetNewProfessionLocalNoCommand.DisposeOf;
  FGetProfessionCodeByFullNoCommand.DisposeOf;
  FGetProfessionIsInstanceCommand.DisposeOf;
  FGetNewEmployeeCodeCommand.DisposeOf;
  FGetEmployeeShiftCodeCommand.DisposeOf;
  FGetNewDiscEventTypeCodeCommand.DisposeOf;
  FGetNewDiscEventTypeLocalNoCommand.DisposeOf;
  FGetNewDiscEventTypePeriodCodeCommand.DisposeOf;
  FGetDiscEventTypeCodeByFullNoCommand.DisposeOf;
  FGetDiscEventTypeIsInstanceCommand.DisposeOf;
  FGetDiscEventTypeIsInactiveCommand.DisposeOf;
  FGetDiscEventTypeDataCommand.DisposeOf;
  FGetMinAndMaxOccWorkDeptPriorityNoCodesCommand.DisposeOf;
  FDeleteOccupationCommand.DisposeOf;
  inherited;
end;


constructor TdmCapacityProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmCapacityProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmCapacityProxyClient.Destroy;
begin
  inherited;
end;

function TdmBudgetProxyClient.GetNewBudgetOrderCode(BranchCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewBudgetOrderCodeCommand = nil) or CommandRecreateNeeded(FGetNewBudgetOrderCodeCommand) then
          begin
            FreeAndNil(FGetNewBudgetOrderCodeCommand);
            FGetNewBudgetOrderCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewBudgetOrderCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewBudgetOrderCodeCommand.Text := 'TdmBudgetProxy.GetNewBudgetOrderCode';
            FGetNewBudgetOrderCodeCommand.Prepare;
            CommandRecreated(FGetNewBudgetOrderCodeCommand);
          end;
          FGetNewBudgetOrderCodeCommand.Parameters[0].Value.SetInt32(BranchCode);
          FGetNewBudgetOrderCodeCommand.ExecuteUpdate;
          Result := FGetNewBudgetOrderCodeCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmBudgetProxyClient.GetNewBudgetOrderItemCode(BudgetOrderBranchCode: Integer; BudgetOrderCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewBudgetOrderItemCodeCommand = nil) or CommandRecreateNeeded(FGetNewBudgetOrderItemCodeCommand) then
          begin
            FreeAndNil(FGetNewBudgetOrderItemCodeCommand);
            FGetNewBudgetOrderItemCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewBudgetOrderItemCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewBudgetOrderItemCodeCommand.Text := 'TdmBudgetProxy.GetNewBudgetOrderItemCode';
            FGetNewBudgetOrderItemCodeCommand.Prepare;
            CommandRecreated(FGetNewBudgetOrderItemCodeCommand);
          end;
          FGetNewBudgetOrderItemCodeCommand.Parameters[0].Value.SetInt32(BudgetOrderBranchCode);
          FGetNewBudgetOrderItemCodeCommand.Parameters[1].Value.SetInt32(BudgetOrderCode);
          FGetNewBudgetOrderItemCodeCommand.ExecuteUpdate;
          Result := FGetNewBudgetOrderItemCodeCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmBudgetProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmBudgetProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmBudgetProxyClient.Destroy;
begin
  FGetNewBudgetOrderCodeCommand.DisposeOf;
  FGetNewBudgetOrderItemCodeCommand.DisposeOf;
  inherited;
end;

function TdmDocItemViewGeneratorsProxyClient.GetExternalDocItemViewableFile(ADocItemFileName: string; ADocItemViewGeneratorCode: Integer; out AResultExt: string): OleVariant;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetExternalDocItemViewableFileCommand = nil) or CommandRecreateNeeded(FGetExternalDocItemViewableFileCommand) then
          begin
            FreeAndNil(FGetExternalDocItemViewableFileCommand);
            FGetExternalDocItemViewableFileCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetExternalDocItemViewableFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetExternalDocItemViewableFileCommand.Text := 'TdmDocItemViewGeneratorsProxy.GetExternalDocItemViewableFile';
            FGetExternalDocItemViewableFileCommand.Prepare;
            CommandRecreated(FGetExternalDocItemViewableFileCommand);
          end;
          FGetExternalDocItemViewableFileCommand.Parameters[0].Value.SetWideString(ADocItemFileName);
          FGetExternalDocItemViewableFileCommand.Parameters[1].Value.SetInt32(ADocItemViewGeneratorCode);
          FGetExternalDocItemViewableFileCommand.ExecuteUpdate;
          AResultExt := FGetExternalDocItemViewableFileCommand.Parameters[2].Value.GetWideString;
          Result := FGetExternalDocItemViewableFileCommand.Parameters[3].Value.AsVariant;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDocItemViewGeneratorsProxyClient.GetInternalDocItemViewableFile(ADocOwnerType: Integer; ADocBranchCode: Integer; ADocCode: Integer; ADocItemCode: Integer; AAdditionalInfo: Integer; out ResultExt: string): OleVariant;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetInternalDocItemViewableFileCommand = nil) or CommandRecreateNeeded(FGetInternalDocItemViewableFileCommand) then
          begin
            FreeAndNil(FGetInternalDocItemViewableFileCommand);
            FGetInternalDocItemViewableFileCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetInternalDocItemViewableFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetInternalDocItemViewableFileCommand.Text := 'TdmDocItemViewGeneratorsProxy.GetInternalDocItemViewableFile';
            FGetInternalDocItemViewableFileCommand.Prepare;
            CommandRecreated(FGetInternalDocItemViewableFileCommand);
          end;
          FGetInternalDocItemViewableFileCommand.Parameters[0].Value.SetInt32(ADocOwnerType);
          FGetInternalDocItemViewableFileCommand.Parameters[1].Value.SetInt32(ADocBranchCode);
          FGetInternalDocItemViewableFileCommand.Parameters[2].Value.SetInt32(ADocCode);
          FGetInternalDocItemViewableFileCommand.Parameters[3].Value.SetInt32(ADocItemCode);
          FGetInternalDocItemViewableFileCommand.Parameters[4].Value.SetInt32(AAdditionalInfo);
          FGetInternalDocItemViewableFileCommand.ExecuteUpdate;
          ResultExt := FGetInternalDocItemViewableFileCommand.Parameters[5].Value.GetWideString;
          Result := FGetInternalDocItemViewableFileCommand.Parameters[6].Value.AsVariant;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDocItemViewGeneratorsProxyClient.GetContentStorageDocItemViewableFile(ADocOwnerTypeCode: Integer; ADocBranchCode: Integer; ADocCode: Integer; ADocItemCode: Integer; AAdditionalInfo: Integer; out ResultExt: string): OleVariant;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetContentStorageDocItemViewableFileCommand = nil) or CommandRecreateNeeded(FGetContentStorageDocItemViewableFileCommand) then
          begin
            FreeAndNil(FGetContentStorageDocItemViewableFileCommand);
            FGetContentStorageDocItemViewableFileCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetContentStorageDocItemViewableFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetContentStorageDocItemViewableFileCommand.Text := 'TdmDocItemViewGeneratorsProxy.GetContentStorageDocItemViewableFile';
            FGetContentStorageDocItemViewableFileCommand.Prepare;
            CommandRecreated(FGetContentStorageDocItemViewableFileCommand);
          end;
          FGetContentStorageDocItemViewableFileCommand.Parameters[0].Value.SetInt32(ADocOwnerTypeCode);
          FGetContentStorageDocItemViewableFileCommand.Parameters[1].Value.SetInt32(ADocBranchCode);
          FGetContentStorageDocItemViewableFileCommand.Parameters[2].Value.SetInt32(ADocCode);
          FGetContentStorageDocItemViewableFileCommand.Parameters[3].Value.SetInt32(ADocItemCode);
          FGetContentStorageDocItemViewableFileCommand.Parameters[4].Value.SetInt32(AAdditionalInfo);
          FGetContentStorageDocItemViewableFileCommand.ExecuteUpdate;
          ResultExt := FGetContentStorageDocItemViewableFileCommand.Parameters[5].Value.GetWideString;
          Result := FGetContentStorageDocItemViewableFileCommand.Parameters[6].Value.AsVariant;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmDocItemViewGeneratorsProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmDocItemViewGeneratorsProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmDocItemViewGeneratorsProxyClient.Destroy;
begin
  FGetExternalDocItemViewableFileCommand.DisposeOf;
  FGetInternalDocItemViewableFileCommand.DisposeOf;
  FGetContentStorageDocItemViewableFileCommand.DisposeOf;
  inherited;
end;


constructor TdmShiftsProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmShiftsProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmShiftsProxyClient.Destroy;
begin
  inherited;
end;

function TdmDocXMLProxyClient.GetDocItemXML(ADocOwnerTypeCode: Integer; ADocBranchCode: Integer; ADocCode: Integer; ADocItemCode: Integer; AAdditionalInfo: Integer): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDocItemXMLCommand = nil) or CommandRecreateNeeded(FGetDocItemXMLCommand) then
          begin
            FreeAndNil(FGetDocItemXMLCommand);
            FGetDocItemXMLCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDocItemXMLCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDocItemXMLCommand.Text := 'TdmDocXMLProxy.GetDocItemXML';
            FGetDocItemXMLCommand.Prepare;
            CommandRecreated(FGetDocItemXMLCommand);
          end;
          FGetDocItemXMLCommand.Parameters[0].Value.SetInt32(ADocOwnerTypeCode);
          FGetDocItemXMLCommand.Parameters[1].Value.SetInt32(ADocBranchCode);
          FGetDocItemXMLCommand.Parameters[2].Value.SetInt32(ADocCode);
          FGetDocItemXMLCommand.Parameters[3].Value.SetInt32(ADocItemCode);
          FGetDocItemXMLCommand.Parameters[4].Value.SetInt32(AAdditionalInfo);
          FGetDocItemXMLCommand.ExecuteUpdate;
          Result := FGetDocItemXMLCommand.Parameters[5].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmDocXMLProxyClient.GetDocItemTemplateTypeXML(ADocItemTemplateTypeCode: Integer): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDocItemTemplateTypeXMLCommand = nil) or CommandRecreateNeeded(FGetDocItemTemplateTypeXMLCommand) then
          begin
            FreeAndNil(FGetDocItemTemplateTypeXMLCommand);
            FGetDocItemTemplateTypeXMLCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDocItemTemplateTypeXMLCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDocItemTemplateTypeXMLCommand.Text := 'TdmDocXMLProxy.GetDocItemTemplateTypeXML';
            FGetDocItemTemplateTypeXMLCommand.Prepare;
            CommandRecreated(FGetDocItemTemplateTypeXMLCommand);
          end;
          FGetDocItemTemplateTypeXMLCommand.Parameters[0].Value.SetInt32(ADocItemTemplateTypeCode);
          FGetDocItemTemplateTypeXMLCommand.ExecuteUpdate;
          Result := FGetDocItemTemplateTypeXMLCommand.Parameters[1].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmDocXMLProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmDocXMLProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmDocXMLProxyClient.Destroy;
begin
  FGetDocItemXMLCommand.DisposeOf;
  FGetDocItemTemplateTypeXMLCommand.DisposeOf;
  inherited;
end;

function TdmEngineeringProxyClient.NewEngineeringOrderCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FNewEngineeringOrderCodeCommand = nil) or CommandRecreateNeeded(FNewEngineeringOrderCodeCommand) then
          begin
            FreeAndNil(FNewEngineeringOrderCodeCommand);
            FNewEngineeringOrderCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FNewEngineeringOrderCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FNewEngineeringOrderCodeCommand.Text := 'TdmEngineeringProxy.NewEngineeringOrderCode';
            FNewEngineeringOrderCodeCommand.Prepare;
            CommandRecreated(FNewEngineeringOrderCodeCommand);
          end;
          FNewEngineeringOrderCodeCommand.ExecuteUpdate;
          Result := FNewEngineeringOrderCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmEngineeringProxyClient.NewEngineeringOrderNo: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FNewEngineeringOrderNoCommand = nil) or CommandRecreateNeeded(FNewEngineeringOrderNoCommand) then
          begin
            FreeAndNil(FNewEngineeringOrderNoCommand);
            FNewEngineeringOrderNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FNewEngineeringOrderNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FNewEngineeringOrderNoCommand.Text := 'TdmEngineeringProxy.NewEngineeringOrderNo';
            FNewEngineeringOrderNoCommand.Prepare;
            CommandRecreated(FNewEngineeringOrderNoCommand);
          end;
          FNewEngineeringOrderNoCommand.ExecuteUpdate;
          Result := FNewEngineeringOrderNoCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmEngineeringProxyClient.GetProductThoroughlyEngineeredProduct(ProductCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProductThoroughlyEngineeredProductCommand = nil) or CommandRecreateNeeded(FGetProductThoroughlyEngineeredProductCommand) then
          begin
            FreeAndNil(FGetProductThoroughlyEngineeredProductCommand);
            FGetProductThoroughlyEngineeredProductCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProductThoroughlyEngineeredProductCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProductThoroughlyEngineeredProductCommand.Text := 'TdmEngineeringProxy.GetProductThoroughlyEngineeredProduct';
            FGetProductThoroughlyEngineeredProductCommand.Prepare;
            CommandRecreated(FGetProductThoroughlyEngineeredProductCommand);
          end;
          FGetProductThoroughlyEngineeredProductCommand.Parameters[0].Value.SetInt32(ProductCode);
          FGetProductThoroughlyEngineeredProductCommand.ExecuteUpdate;
          Result := FGetProductThoroughlyEngineeredProductCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmEngineeringProxyClient.GetEngineeringOrderCode(EngineeringOrderBranchCode: Integer; EngineeringOrderNo: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetEngineeringOrderCodeCommand = nil) or CommandRecreateNeeded(FGetEngineeringOrderCodeCommand) then
          begin
            FreeAndNil(FGetEngineeringOrderCodeCommand);
            FGetEngineeringOrderCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetEngineeringOrderCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetEngineeringOrderCodeCommand.Text := 'TdmEngineeringProxy.GetEngineeringOrderCode';
            FGetEngineeringOrderCodeCommand.Prepare;
            CommandRecreated(FGetEngineeringOrderCodeCommand);
          end;
          FGetEngineeringOrderCodeCommand.Parameters[0].Value.SetInt32(EngineeringOrderBranchCode);
          FGetEngineeringOrderCodeCommand.Parameters[1].Value.SetInt32(EngineeringOrderNo);
          FGetEngineeringOrderCodeCommand.ExecuteUpdate;
          Result := FGetEngineeringOrderCodeCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmEngineeringProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmEngineeringProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmEngineeringProxyClient.Destroy;
begin
  FNewEngineeringOrderCodeCommand.DisposeOf;
  FNewEngineeringOrderNoCommand.DisposeOf;
  FGetProductThoroughlyEngineeredProductCommand.DisposeOf;
  FGetEngineeringOrderCodeCommand.DisposeOf;
  inherited;
end;

procedure TdmEmployeeAvailabilityProxyClient.RetryAddEmployeeMovement(AFailedEmployeeMovementCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FRetryAddEmployeeMovementCommand = nil) or CommandRecreateNeeded(FRetryAddEmployeeMovementCommand) then
          begin
            FreeAndNil(FRetryAddEmployeeMovementCommand);
            FRetryAddEmployeeMovementCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FRetryAddEmployeeMovementCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FRetryAddEmployeeMovementCommand.Text := 'TdmEmployeeAvailabilityProxy.RetryAddEmployeeMovement';
            FRetryAddEmployeeMovementCommand.Prepare;
            CommandRecreated(FRetryAddEmployeeMovementCommand);
          end;
          FRetryAddEmployeeMovementCommand.Parameters[0].Value.SetInt32(AFailedEmployeeMovementCode);
          FRetryAddEmployeeMovementCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmEmployeeAvailabilityProxyClient.RetryAddAllEmployeeMovements;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FRetryAddAllEmployeeMovementsCommand = nil) or CommandRecreateNeeded(FRetryAddAllEmployeeMovementsCommand) then
          begin
            FreeAndNil(FRetryAddAllEmployeeMovementsCommand);
            FRetryAddAllEmployeeMovementsCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FRetryAddAllEmployeeMovementsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FRetryAddAllEmployeeMovementsCommand.Text := 'TdmEmployeeAvailabilityProxy.RetryAddAllEmployeeMovements';
            FRetryAddAllEmployeeMovementsCommand.Prepare;
            CommandRecreated(FRetryAddAllEmployeeMovementsCommand);
          end;
          FRetryAddAllEmployeeMovementsCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmEmployeeAvailabilityProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmEmployeeAvailabilityProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmEmployeeAvailabilityProxyClient.Destroy;
begin
  FRetryAddEmployeeMovementCommand.DisposeOf;
  FRetryAddAllEmployeeMovementsCommand.DisposeOf;
  inherited;
end;

function TdmOrganisationTasksProxyClient.NewOrgTaskProposalCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FNewOrgTaskProposalCodeCommand = nil) or CommandRecreateNeeded(FNewOrgTaskProposalCodeCommand) then
          begin
            FreeAndNil(FNewOrgTaskProposalCodeCommand);
            FNewOrgTaskProposalCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FNewOrgTaskProposalCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FNewOrgTaskProposalCodeCommand.Text := 'TdmOrganisationTasksProxy.NewOrgTaskProposalCode';
            FNewOrgTaskProposalCodeCommand.Prepare;
            CommandRecreated(FNewOrgTaskProposalCodeCommand);
          end;
          FNewOrgTaskProposalCodeCommand.ExecuteUpdate;
          Result := FNewOrgTaskProposalCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmOrganisationTasksProxyClient.NewOrgTaskProposalNo: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FNewOrgTaskProposalNoCommand = nil) or CommandRecreateNeeded(FNewOrgTaskProposalNoCommand) then
          begin
            FreeAndNil(FNewOrgTaskProposalNoCommand);
            FNewOrgTaskProposalNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FNewOrgTaskProposalNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FNewOrgTaskProposalNoCommand.Text := 'TdmOrganisationTasksProxy.NewOrgTaskProposalNo';
            FNewOrgTaskProposalNoCommand.Prepare;
            CommandRecreated(FNewOrgTaskProposalNoCommand);
          end;
          FNewOrgTaskProposalNoCommand.ExecuteUpdate;
          Result := FNewOrgTaskProposalNoCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmOrganisationTasksProxyClient.GetOrgTaskProposalCycleNo(AOrgTaskProposalCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetOrgTaskProposalCycleNoCommand = nil) or CommandRecreateNeeded(FGetOrgTaskProposalCycleNoCommand) then
          begin
            FreeAndNil(FGetOrgTaskProposalCycleNoCommand);
            FGetOrgTaskProposalCycleNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetOrgTaskProposalCycleNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetOrgTaskProposalCycleNoCommand.Text := 'TdmOrganisationTasksProxy.GetOrgTaskProposalCycleNo';
            FGetOrgTaskProposalCycleNoCommand.Prepare;
            CommandRecreated(FGetOrgTaskProposalCycleNoCommand);
          end;
          FGetOrgTaskProposalCycleNoCommand.Parameters[0].Value.SetInt32(AOrgTaskProposalCode);
          FGetOrgTaskProposalCycleNoCommand.ExecuteUpdate;
          Result := FGetOrgTaskProposalCycleNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmOrganisationTasksProxyClient.GetHasOrganisationTaskProposal(AProductCode: Integer; AExceptOrgTaskProposalCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetHasOrganisationTaskProposalCommand = nil) or CommandRecreateNeeded(FGetHasOrganisationTaskProposalCommand) then
          begin
            FreeAndNil(FGetHasOrganisationTaskProposalCommand);
            FGetHasOrganisationTaskProposalCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetHasOrganisationTaskProposalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetHasOrganisationTaskProposalCommand.Text := 'TdmOrganisationTasksProxy.GetHasOrganisationTaskProposal';
            FGetHasOrganisationTaskProposalCommand.Prepare;
            CommandRecreated(FGetHasOrganisationTaskProposalCommand);
          end;
          FGetHasOrganisationTaskProposalCommand.Parameters[0].Value.SetInt32(AProductCode);
          FGetHasOrganisationTaskProposalCommand.Parameters[1].Value.SetInt32(AExceptOrgTaskProposalCode);
          FGetHasOrganisationTaskProposalCommand.ExecuteUpdate;
          Result := FGetHasOrganisationTaskProposalCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmOrganisationTasksProxyClient.GetOrgTaskProposalCodeByNo(AOrgTaskProposalNo: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetOrgTaskProposalCodeByNoCommand = nil) or CommandRecreateNeeded(FGetOrgTaskProposalCodeByNoCommand) then
          begin
            FreeAndNil(FGetOrgTaskProposalCodeByNoCommand);
            FGetOrgTaskProposalCodeByNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetOrgTaskProposalCodeByNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetOrgTaskProposalCodeByNoCommand.Text := 'TdmOrganisationTasksProxy.GetOrgTaskProposalCodeByNo';
            FGetOrgTaskProposalCodeByNoCommand.Prepare;
            CommandRecreated(FGetOrgTaskProposalCodeByNoCommand);
          end;
          FGetOrgTaskProposalCodeByNoCommand.Parameters[0].Value.SetInt32(AOrgTaskProposalNo);
          FGetOrgTaskProposalCodeByNoCommand.ExecuteUpdate;
          Result := FGetOrgTaskProposalCodeByNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmOrganisationTasksProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmOrganisationTasksProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmOrganisationTasksProxyClient.Destroy;
begin
  FNewOrgTaskProposalCodeCommand.DisposeOf;
  FNewOrgTaskProposalNoCommand.DisposeOf;
  FGetOrgTaskProposalCycleNoCommand.DisposeOf;
  FGetHasOrganisationTaskProposalCommand.DisposeOf;
  FGetOrgTaskProposalCodeByNoCommand.DisposeOf;
  inherited;
end;

function TdmExceptEventsProxyClient.GetNewExceptEventTypeCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewExceptEventTypeCodeCommand = nil) or CommandRecreateNeeded(FGetNewExceptEventTypeCodeCommand) then
          begin
            FreeAndNil(FGetNewExceptEventTypeCodeCommand);
            FGetNewExceptEventTypeCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewExceptEventTypeCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewExceptEventTypeCodeCommand.Text := 'TdmExceptEventsProxy.GetNewExceptEventTypeCode';
            FGetNewExceptEventTypeCodeCommand.Prepare;
            CommandRecreated(FGetNewExceptEventTypeCodeCommand);
          end;
          FGetNewExceptEventTypeCodeCommand.ExecuteUpdate;
          Result := FGetNewExceptEventTypeCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmExceptEventsProxyClient.GetNextExceptEventTypeNo(AParentExceptEventTypeCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNextExceptEventTypeNoCommand = nil) or CommandRecreateNeeded(FGetNextExceptEventTypeNoCommand) then
          begin
            FreeAndNil(FGetNextExceptEventTypeNoCommand);
            FGetNextExceptEventTypeNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNextExceptEventTypeNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNextExceptEventTypeNoCommand.Text := 'TdmExceptEventsProxy.GetNextExceptEventTypeNo';
            FGetNextExceptEventTypeNoCommand.Prepare;
            CommandRecreated(FGetNextExceptEventTypeNoCommand);
          end;
          FGetNextExceptEventTypeNoCommand.Parameters[0].Value.SetInt32(AParentExceptEventTypeCode);
          FGetNextExceptEventTypeNoCommand.ExecuteUpdate;
          Result := FGetNextExceptEventTypeNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmExceptEventsProxyClient.GetExceptEventTypeCodeByFullNo(AExceptEventTypeFullNo: string): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetExceptEventTypeCodeByFullNoCommand = nil) or CommandRecreateNeeded(FGetExceptEventTypeCodeByFullNoCommand) then
          begin
            FreeAndNil(FGetExceptEventTypeCodeByFullNoCommand);
            FGetExceptEventTypeCodeByFullNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetExceptEventTypeCodeByFullNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetExceptEventTypeCodeByFullNoCommand.Text := 'TdmExceptEventsProxy.GetExceptEventTypeCodeByFullNo';
            FGetExceptEventTypeCodeByFullNoCommand.Prepare;
            CommandRecreated(FGetExceptEventTypeCodeByFullNoCommand);
          end;
          FGetExceptEventTypeCodeByFullNoCommand.Parameters[0].Value.SetWideString(AExceptEventTypeFullNo);
          FGetExceptEventTypeCodeByFullNoCommand.ExecuteUpdate;
          Result := FGetExceptEventTypeCodeByFullNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmExceptEventsProxyClient.GetExceptEventTypeIsInstance(AExceptEventTypeCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetExceptEventTypeIsInstanceCommand = nil) or CommandRecreateNeeded(FGetExceptEventTypeIsInstanceCommand) then
          begin
            FreeAndNil(FGetExceptEventTypeIsInstanceCommand);
            FGetExceptEventTypeIsInstanceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetExceptEventTypeIsInstanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetExceptEventTypeIsInstanceCommand.Text := 'TdmExceptEventsProxy.GetExceptEventTypeIsInstance';
            FGetExceptEventTypeIsInstanceCommand.Prepare;
            CommandRecreated(FGetExceptEventTypeIsInstanceCommand);
          end;
          FGetExceptEventTypeIsInstanceCommand.Parameters[0].Value.SetInt32(AExceptEventTypeCode);
          FGetExceptEventTypeIsInstanceCommand.ExecuteUpdate;
          Result := FGetExceptEventTypeIsInstanceCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmExceptEventsProxyClient.GetNewExceptEventTaskCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewExceptEventTaskCodeCommand = nil) or CommandRecreateNeeded(FGetNewExceptEventTaskCodeCommand) then
          begin
            FreeAndNil(FGetNewExceptEventTaskCodeCommand);
            FGetNewExceptEventTaskCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewExceptEventTaskCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewExceptEventTaskCodeCommand.Text := 'TdmExceptEventsProxy.GetNewExceptEventTaskCode';
            FGetNewExceptEventTaskCodeCommand.Prepare;
            CommandRecreated(FGetNewExceptEventTaskCodeCommand);
          end;
          FGetNewExceptEventTaskCodeCommand.ExecuteUpdate;
          Result := FGetNewExceptEventTaskCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmExceptEventsProxyClient.GetNextExceptEventTaskNo(AExceptEventCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNextExceptEventTaskNoCommand = nil) or CommandRecreateNeeded(FGetNextExceptEventTaskNoCommand) then
          begin
            FreeAndNil(FGetNextExceptEventTaskNoCommand);
            FGetNextExceptEventTaskNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNextExceptEventTaskNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNextExceptEventTaskNoCommand.Text := 'TdmExceptEventsProxy.GetNextExceptEventTaskNo';
            FGetNextExceptEventTaskNoCommand.Prepare;
            CommandRecreated(FGetNextExceptEventTaskNoCommand);
          end;
          FGetNextExceptEventTaskNoCommand.Parameters[0].Value.SetInt32(AExceptEventCode);
          FGetNextExceptEventTaskNoCommand.ExecuteUpdate;
          Result := FGetNextExceptEventTaskNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmExceptEventsProxyClient.GetNewExceptEventDamageAttackCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewExceptEventDamageAttackCodeCommand = nil) or CommandRecreateNeeded(FGetNewExceptEventDamageAttackCodeCommand) then
          begin
            FreeAndNil(FGetNewExceptEventDamageAttackCodeCommand);
            FGetNewExceptEventDamageAttackCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewExceptEventDamageAttackCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewExceptEventDamageAttackCodeCommand.Text := 'TdmExceptEventsProxy.GetNewExceptEventDamageAttackCode';
            FGetNewExceptEventDamageAttackCodeCommand.Prepare;
            CommandRecreated(FGetNewExceptEventDamageAttackCodeCommand);
          end;
          FGetNewExceptEventDamageAttackCodeCommand.ExecuteUpdate;
          Result := FGetNewExceptEventDamageAttackCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmExceptEventsProxyClient.GetNewExceptEventDamageCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewExceptEventDamageCodeCommand = nil) or CommandRecreateNeeded(FGetNewExceptEventDamageCodeCommand) then
          begin
            FreeAndNil(FGetNewExceptEventDamageCodeCommand);
            FGetNewExceptEventDamageCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewExceptEventDamageCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewExceptEventDamageCodeCommand.Text := 'TdmExceptEventsProxy.GetNewExceptEventDamageCode';
            FGetNewExceptEventDamageCodeCommand.Prepare;
            CommandRecreated(FGetNewExceptEventDamageCodeCommand);
          end;
          FGetNewExceptEventDamageCodeCommand.ExecuteUpdate;
          Result := FGetNewExceptEventDamageCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmExceptEventsProxyClient.GetNextExceptEventDamageLocalNo(AExceptEventCode: Integer; AParentCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNextExceptEventDamageLocalNoCommand = nil) or CommandRecreateNeeded(FGetNextExceptEventDamageLocalNoCommand) then
          begin
            FreeAndNil(FGetNextExceptEventDamageLocalNoCommand);
            FGetNextExceptEventDamageLocalNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNextExceptEventDamageLocalNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNextExceptEventDamageLocalNoCommand.Text := 'TdmExceptEventsProxy.GetNextExceptEventDamageLocalNo';
            FGetNextExceptEventDamageLocalNoCommand.Prepare;
            CommandRecreated(FGetNextExceptEventDamageLocalNoCommand);
          end;
          FGetNextExceptEventDamageLocalNoCommand.Parameters[0].Value.SetInt32(AExceptEventCode);
          FGetNextExceptEventDamageLocalNoCommand.Parameters[1].Value.SetInt32(AParentCode);
          FGetNextExceptEventDamageLocalNoCommand.ExecuteUpdate;
          Result := FGetNextExceptEventDamageLocalNoCommand.Parameters[2].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmExceptEventsProxyClient.GetNewExceptEventCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewExceptEventCodeCommand = nil) or CommandRecreateNeeded(FGetNewExceptEventCodeCommand) then
          begin
            FreeAndNil(FGetNewExceptEventCodeCommand);
            FGetNewExceptEventCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewExceptEventCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewExceptEventCodeCommand.Text := 'TdmExceptEventsProxy.GetNewExceptEventCode';
            FGetNewExceptEventCodeCommand.Prepare;
            CommandRecreated(FGetNewExceptEventCodeCommand);
          end;
          FGetNewExceptEventCodeCommand.ExecuteUpdate;
          Result := FGetNewExceptEventCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmExceptEventsProxyClient.GetNewExceptEventNo: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewExceptEventNoCommand = nil) or CommandRecreateNeeded(FGetNewExceptEventNoCommand) then
          begin
            FreeAndNil(FGetNewExceptEventNoCommand);
            FGetNewExceptEventNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewExceptEventNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewExceptEventNoCommand.Text := 'TdmExceptEventsProxy.GetNewExceptEventNo';
            FGetNewExceptEventNoCommand.Prepare;
            CommandRecreated(FGetNewExceptEventNoCommand);
          end;
          FGetNewExceptEventNoCommand.ExecuteUpdate;
          Result := FGetNewExceptEventNoCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmExceptEventsProxyClient.GetOMGeneratorData(AOMBranchCode: Integer; AOMCode: Integer; out ProductCode: Integer; out ProductQuantity: Double; out DeptCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetOMGeneratorDataCommand = nil) or CommandRecreateNeeded(FGetOMGeneratorDataCommand) then
          begin
            FreeAndNil(FGetOMGeneratorDataCommand);
            FGetOMGeneratorDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetOMGeneratorDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetOMGeneratorDataCommand.Text := 'TdmExceptEventsProxy.GetOMGeneratorData';
            FGetOMGeneratorDataCommand.Prepare;
            CommandRecreated(FGetOMGeneratorDataCommand);
          end;
          FGetOMGeneratorDataCommand.Parameters[0].Value.SetInt32(AOMBranchCode);
          FGetOMGeneratorDataCommand.Parameters[1].Value.SetInt32(AOMCode);
          FGetOMGeneratorDataCommand.ExecuteUpdate;
          ProductCode := FGetOMGeneratorDataCommand.Parameters[2].Value.GetInt32;
          ProductQuantity := FGetOMGeneratorDataCommand.Parameters[3].Value.GetDouble;
          DeptCode := FGetOMGeneratorDataCommand.Parameters[4].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmExceptEventsProxyClient.GetSaleGeneratorData(ASaleObjectBranchCode: Integer; ASaleObjectCode: Integer; out ProductCode: Integer; out ProductQuantity: Double);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetSaleGeneratorDataCommand = nil) or CommandRecreateNeeded(FGetSaleGeneratorDataCommand) then
          begin
            FreeAndNil(FGetSaleGeneratorDataCommand);
            FGetSaleGeneratorDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetSaleGeneratorDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetSaleGeneratorDataCommand.Text := 'TdmExceptEventsProxy.GetSaleGeneratorData';
            FGetSaleGeneratorDataCommand.Prepare;
            CommandRecreated(FGetSaleGeneratorDataCommand);
          end;
          FGetSaleGeneratorDataCommand.Parameters[0].Value.SetInt32(ASaleObjectBranchCode);
          FGetSaleGeneratorDataCommand.Parameters[1].Value.SetInt32(ASaleObjectCode);
          FGetSaleGeneratorDataCommand.ExecuteUpdate;
          ProductCode := FGetSaleGeneratorDataCommand.Parameters[2].Value.GetInt32;
          ProductQuantity := FGetSaleGeneratorDataCommand.Parameters[3].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmExceptEventsProxyClient.GetDeliveryGeneratorData(ADCDObjectBranchCode: Integer; ADCDObjectCode: Integer; ADeliveryProjectCode: Integer; out ProductCode: Integer; out ProductQuantity: Double);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetDeliveryGeneratorDataCommand = nil) or CommandRecreateNeeded(FGetDeliveryGeneratorDataCommand) then
          begin
            FreeAndNil(FGetDeliveryGeneratorDataCommand);
            FGetDeliveryGeneratorDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetDeliveryGeneratorDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetDeliveryGeneratorDataCommand.Text := 'TdmExceptEventsProxy.GetDeliveryGeneratorData';
            FGetDeliveryGeneratorDataCommand.Prepare;
            CommandRecreated(FGetDeliveryGeneratorDataCommand);
          end;
          FGetDeliveryGeneratorDataCommand.Parameters[0].Value.SetInt32(ADCDObjectBranchCode);
          FGetDeliveryGeneratorDataCommand.Parameters[1].Value.SetInt32(ADCDObjectCode);
          FGetDeliveryGeneratorDataCommand.Parameters[2].Value.SetInt32(ADeliveryProjectCode);
          FGetDeliveryGeneratorDataCommand.ExecuteUpdate;
          ProductCode := FGetDeliveryGeneratorDataCommand.Parameters[3].Value.GetInt32;
          ProductQuantity := FGetDeliveryGeneratorDataCommand.Parameters[4].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmExceptEventsProxyClient.IsDamageDescendantOf(AExceptEventDamageCode: Integer; AParentCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FIsDamageDescendantOfCommand = nil) or CommandRecreateNeeded(FIsDamageDescendantOfCommand) then
          begin
            FreeAndNil(FIsDamageDescendantOfCommand);
            FIsDamageDescendantOfCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FIsDamageDescendantOfCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FIsDamageDescendantOfCommand.Text := 'TdmExceptEventsProxy.IsDamageDescendantOf';
            FIsDamageDescendantOfCommand.Prepare;
            CommandRecreated(FIsDamageDescendantOfCommand);
          end;
          FIsDamageDescendantOfCommand.Parameters[0].Value.SetInt32(AExceptEventDamageCode);
          FIsDamageDescendantOfCommand.Parameters[1].Value.SetInt32(AParentCode);
          FIsDamageDescendantOfCommand.ExecuteUpdate;
          Result := FIsDamageDescendantOfCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmExceptEventsProxyClient.MoveDamage(AExceptEventDamageCode: Integer; AParentDamageCode: Integer; AExceptEventCode: Integer; ALocalNo: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FMoveDamageCommand = nil) or CommandRecreateNeeded(FMoveDamageCommand) then
          begin
            FreeAndNil(FMoveDamageCommand);
            FMoveDamageCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FMoveDamageCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FMoveDamageCommand.Text := 'TdmExceptEventsProxy.MoveDamage';
            FMoveDamageCommand.Prepare;
            CommandRecreated(FMoveDamageCommand);
          end;
          FMoveDamageCommand.Parameters[0].Value.SetInt32(AExceptEventDamageCode);
          FMoveDamageCommand.Parameters[1].Value.SetInt32(AParentDamageCode);
          FMoveDamageCommand.Parameters[2].Value.SetInt32(AExceptEventCode);
          FMoveDamageCommand.Parameters[3].Value.SetInt32(ALocalNo);
          FMoveDamageCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmExceptEventsProxyClient.GetExceptEventDamageFullNo(AExceptEventDamageCode: Integer): string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetExceptEventDamageFullNoCommand = nil) or CommandRecreateNeeded(FGetExceptEventDamageFullNoCommand) then
          begin
            FreeAndNil(FGetExceptEventDamageFullNoCommand);
            FGetExceptEventDamageFullNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetExceptEventDamageFullNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetExceptEventDamageFullNoCommand.Text := 'TdmExceptEventsProxy.GetExceptEventDamageFullNo';
            FGetExceptEventDamageFullNoCommand.Prepare;
            CommandRecreated(FGetExceptEventDamageFullNoCommand);
          end;
          FGetExceptEventDamageFullNoCommand.Parameters[0].Value.SetInt32(AExceptEventDamageCode);
          FGetExceptEventDamageFullNoCommand.ExecuteUpdate;
          Result := FGetExceptEventDamageFullNoCommand.Parameters[1].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmExceptEventsProxyClient.GetExceptEventCodeByNo(AExceptEventNo: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetExceptEventCodeByNoCommand = nil) or CommandRecreateNeeded(FGetExceptEventCodeByNoCommand) then
          begin
            FreeAndNil(FGetExceptEventCodeByNoCommand);
            FGetExceptEventCodeByNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetExceptEventCodeByNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetExceptEventCodeByNoCommand.Text := 'TdmExceptEventsProxy.GetExceptEventCodeByNo';
            FGetExceptEventCodeByNoCommand.Prepare;
            CommandRecreated(FGetExceptEventCodeByNoCommand);
          end;
          FGetExceptEventCodeByNoCommand.Parameters[0].Value.SetInt32(AExceptEventNo);
          FGetExceptEventCodeByNoCommand.ExecuteUpdate;
          Result := FGetExceptEventCodeByNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmExceptEventsProxyClient.AttachExceptEventCauses(AExceptEventCode: Integer; ACauseExceptEvents: OleVariant);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FAttachExceptEventCausesCommand = nil) or CommandRecreateNeeded(FAttachExceptEventCausesCommand) then
          begin
            FreeAndNil(FAttachExceptEventCausesCommand);
            FAttachExceptEventCausesCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FAttachExceptEventCausesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FAttachExceptEventCausesCommand.Text := 'TdmExceptEventsProxy.AttachExceptEventCauses';
            FAttachExceptEventCausesCommand.Prepare;
            CommandRecreated(FAttachExceptEventCausesCommand);
          end;
          FAttachExceptEventCausesCommand.Parameters[0].Value.SetInt32(AExceptEventCode);
          FAttachExceptEventCausesCommand.Parameters[1].Value.AsVariant := ACauseExceptEvents;
          FAttachExceptEventCausesCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmExceptEventsProxyClient.AttachExceptEventConsequences(AExceptEventCode: Integer; AConsequenceExceptEvent: OleVariant);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FAttachExceptEventConsequencesCommand = nil) or CommandRecreateNeeded(FAttachExceptEventConsequencesCommand) then
          begin
            FreeAndNil(FAttachExceptEventConsequencesCommand);
            FAttachExceptEventConsequencesCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FAttachExceptEventConsequencesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FAttachExceptEventConsequencesCommand.Text := 'TdmExceptEventsProxy.AttachExceptEventConsequences';
            FAttachExceptEventConsequencesCommand.Prepare;
            CommandRecreated(FAttachExceptEventConsequencesCommand);
          end;
          FAttachExceptEventConsequencesCommand.Parameters[0].Value.SetInt32(AExceptEventCode);
          FAttachExceptEventConsequencesCommand.Parameters[1].Value.AsVariant := AConsequenceExceptEvent;
          FAttachExceptEventConsequencesCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmExceptEventsProxyClient.DetachExceptEventCauses(AExceptEventCode: Integer; ACauseExceptEvents: OleVariant);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FDetachExceptEventCausesCommand = nil) or CommandRecreateNeeded(FDetachExceptEventCausesCommand) then
          begin
            FreeAndNil(FDetachExceptEventCausesCommand);
            FDetachExceptEventCausesCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FDetachExceptEventCausesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FDetachExceptEventCausesCommand.Text := 'TdmExceptEventsProxy.DetachExceptEventCauses';
            FDetachExceptEventCausesCommand.Prepare;
            CommandRecreated(FDetachExceptEventCausesCommand);
          end;
          FDetachExceptEventCausesCommand.Parameters[0].Value.SetInt32(AExceptEventCode);
          FDetachExceptEventCausesCommand.Parameters[1].Value.AsVariant := ACauseExceptEvents;
          FDetachExceptEventCausesCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmExceptEventsProxyClient.DetachExceptEventConsequences(AExceptEventCode: Integer; AConsequenceExceptEvents: OleVariant);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FDetachExceptEventConsequencesCommand = nil) or CommandRecreateNeeded(FDetachExceptEventConsequencesCommand) then
          begin
            FreeAndNil(FDetachExceptEventConsequencesCommand);
            FDetachExceptEventConsequencesCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FDetachExceptEventConsequencesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FDetachExceptEventConsequencesCommand.Text := 'TdmExceptEventsProxy.DetachExceptEventConsequences';
            FDetachExceptEventConsequencesCommand.Prepare;
            CommandRecreated(FDetachExceptEventConsequencesCommand);
          end;
          FDetachExceptEventConsequencesCommand.Parameters[0].Value.SetInt32(AExceptEventCode);
          FDetachExceptEventConsequencesCommand.Parameters[1].Value.AsVariant := AConsequenceExceptEvents;
          FDetachExceptEventConsequencesCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmExceptEventsProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmExceptEventsProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmExceptEventsProxyClient.Destroy;
begin
  FGetNewExceptEventTypeCodeCommand.DisposeOf;
  FGetNextExceptEventTypeNoCommand.DisposeOf;
  FGetExceptEventTypeCodeByFullNoCommand.DisposeOf;
  FGetExceptEventTypeIsInstanceCommand.DisposeOf;
  FGetNewExceptEventTaskCodeCommand.DisposeOf;
  FGetNextExceptEventTaskNoCommand.DisposeOf;
  FGetNewExceptEventDamageAttackCodeCommand.DisposeOf;
  FGetNewExceptEventDamageCodeCommand.DisposeOf;
  FGetNextExceptEventDamageLocalNoCommand.DisposeOf;
  FGetNewExceptEventCodeCommand.DisposeOf;
  FGetNewExceptEventNoCommand.DisposeOf;
  FGetOMGeneratorDataCommand.DisposeOf;
  FGetSaleGeneratorDataCommand.DisposeOf;
  FGetDeliveryGeneratorDataCommand.DisposeOf;
  FIsDamageDescendantOfCommand.DisposeOf;
  FMoveDamageCommand.DisposeOf;
  FGetExceptEventDamageFullNoCommand.DisposeOf;
  FGetExceptEventCodeByNoCommand.DisposeOf;
  FAttachExceptEventCausesCommand.DisposeOf;
  FAttachExceptEventConsequencesCommand.DisposeOf;
  FDetachExceptEventCausesCommand.DisposeOf;
  FDetachExceptEventConsequencesCommand.DisposeOf;
  inherited;
end;

function TdmFinanceProxyClient.GetNewFinClassLocalNo(AParentFinClassCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewFinClassLocalNoCommand = nil) or CommandRecreateNeeded(FGetNewFinClassLocalNoCommand) then
          begin
            FreeAndNil(FGetNewFinClassLocalNoCommand);
            FGetNewFinClassLocalNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewFinClassLocalNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewFinClassLocalNoCommand.Text := 'TdmFinanceProxy.GetNewFinClassLocalNo';
            FGetNewFinClassLocalNoCommand.Prepare;
            CommandRecreated(FGetNewFinClassLocalNoCommand);
          end;
          FGetNewFinClassLocalNoCommand.Parameters[0].Value.SetInt32(AParentFinClassCode);
          FGetNewFinClassLocalNoCommand.ExecuteUpdate;
          Result := FGetNewFinClassLocalNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmFinanceProxyClient.GetNewFinClassCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewFinClassCodeCommand = nil) or CommandRecreateNeeded(FGetNewFinClassCodeCommand) then
          begin
            FreeAndNil(FGetNewFinClassCodeCommand);
            FGetNewFinClassCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewFinClassCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewFinClassCodeCommand.Text := 'TdmFinanceProxy.GetNewFinClassCode';
            FGetNewFinClassCodeCommand.Prepare;
            CommandRecreated(FGetNewFinClassCodeCommand);
          end;
          FGetNewFinClassCodeCommand.ExecuteUpdate;
          Result := FGetNewFinClassCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmFinanceProxyClient.GetFinClassCodeByFullNo(AFinClassFullNo: string): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetFinClassCodeByFullNoCommand = nil) or CommandRecreateNeeded(FGetFinClassCodeByFullNoCommand) then
          begin
            FreeAndNil(FGetFinClassCodeByFullNoCommand);
            FGetFinClassCodeByFullNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetFinClassCodeByFullNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetFinClassCodeByFullNoCommand.Text := 'TdmFinanceProxy.GetFinClassCodeByFullNo';
            FGetFinClassCodeByFullNoCommand.Prepare;
            CommandRecreated(FGetFinClassCodeByFullNoCommand);
          end;
          FGetFinClassCodeByFullNoCommand.Parameters[0].Value.SetWideString(AFinClassFullNo);
          FGetFinClassCodeByFullNoCommand.ExecuteUpdate;
          Result := FGetFinClassCodeByFullNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmFinanceProxyClient.GetFinClassIsInstance(AFinClassCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetFinClassIsInstanceCommand = nil) or CommandRecreateNeeded(FGetFinClassIsInstanceCommand) then
          begin
            FreeAndNil(FGetFinClassIsInstanceCommand);
            FGetFinClassIsInstanceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetFinClassIsInstanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetFinClassIsInstanceCommand.Text := 'TdmFinanceProxy.GetFinClassIsInstance';
            FGetFinClassIsInstanceCommand.Prepare;
            CommandRecreated(FGetFinClassIsInstanceCommand);
          end;
          FGetFinClassIsInstanceCommand.Parameters[0].Value.SetInt32(AFinClassCode);
          FGetFinClassIsInstanceCommand.ExecuteUpdate;
          Result := FGetFinClassIsInstanceCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmFinanceProxyClient.GetNewFinOrderNo(FinOrderBranchCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewFinOrderNoCommand = nil) or CommandRecreateNeeded(FGetNewFinOrderNoCommand) then
          begin
            FreeAndNil(FGetNewFinOrderNoCommand);
            FGetNewFinOrderNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewFinOrderNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewFinOrderNoCommand.Text := 'TdmFinanceProxy.GetNewFinOrderNo';
            FGetNewFinOrderNoCommand.Prepare;
            CommandRecreated(FGetNewFinOrderNoCommand);
          end;
          FGetNewFinOrderNoCommand.Parameters[0].Value.SetInt32(FinOrderBranchCode);
          FGetNewFinOrderNoCommand.ExecuteUpdate;
          Result := FGetNewFinOrderNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmFinanceProxyClient.GetVatPercent(ADate: TDateTime): Double;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetVatPercentCommand = nil) or CommandRecreateNeeded(FGetVatPercentCommand) then
          begin
            FreeAndNil(FGetVatPercentCommand);
            FGetVatPercentCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetVatPercentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetVatPercentCommand.Text := 'TdmFinanceProxy.GetVatPercent';
            FGetVatPercentCommand.Prepare;
            CommandRecreated(FGetVatPercentCommand);
          end;
          FGetVatPercentCommand.Parameters[0].Value.AsDateTime := ADate;
          FGetVatPercentCommand.ExecuteUpdate;
          Result := FGetVatPercentCommand.Parameters[1].Value.GetDouble;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmFinanceProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmFinanceProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmFinanceProxyClient.Destroy;
begin
  FGetNewFinClassLocalNoCommand.DisposeOf;
  FGetNewFinClassCodeCommand.DisposeOf;
  FGetFinClassCodeByFullNoCommand.DisposeOf;
  FGetFinClassIsInstanceCommand.DisposeOf;
  FGetNewFinOrderNoCommand.DisposeOf;
  FGetVatPercentCommand.DisposeOf;
  inherited;
end;

function TdmProcessesProxyClient.LoadPrcData(AProcessOwnerName: string; AOwnerPrimaryKeyValue: OleVariant): OleVariant;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FLoadPrcDataCommand = nil) or CommandRecreateNeeded(FLoadPrcDataCommand) then
          begin
            FreeAndNil(FLoadPrcDataCommand);
            FLoadPrcDataCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FLoadPrcDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FLoadPrcDataCommand.Text := 'TdmProcessesProxy.LoadPrcData';
            FLoadPrcDataCommand.Prepare;
            CommandRecreated(FLoadPrcDataCommand);
          end;
          FLoadPrcDataCommand.Parameters[0].Value.SetWideString(AProcessOwnerName);
          FLoadPrcDataCommand.Parameters[1].Value.AsVariant := AOwnerPrimaryKeyValue;
          FLoadPrcDataCommand.ExecuteUpdate;
          Result := FLoadPrcDataCommand.Parameters[2].Value.AsVariant;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetNewProcessKnowlCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewProcessKnowlCodeCommand = nil) or CommandRecreateNeeded(FGetNewProcessKnowlCodeCommand) then
          begin
            FreeAndNil(FGetNewProcessKnowlCodeCommand);
            FGetNewProcessKnowlCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewProcessKnowlCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewProcessKnowlCodeCommand.Text := 'TdmProcessesProxy.GetNewProcessKnowlCode';
            FGetNewProcessKnowlCodeCommand.Prepare;
            CommandRecreated(FGetNewProcessKnowlCodeCommand);
          end;
          FGetNewProcessKnowlCodeCommand.ExecuteUpdate;
          Result := FGetNewProcessKnowlCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetNewProcessKnowlLocalNo(AParentProcessKnowlCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewProcessKnowlLocalNoCommand = nil) or CommandRecreateNeeded(FGetNewProcessKnowlLocalNoCommand) then
          begin
            FreeAndNil(FGetNewProcessKnowlLocalNoCommand);
            FGetNewProcessKnowlLocalNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewProcessKnowlLocalNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewProcessKnowlLocalNoCommand.Text := 'TdmProcessesProxy.GetNewProcessKnowlLocalNo';
            FGetNewProcessKnowlLocalNoCommand.Prepare;
            CommandRecreated(FGetNewProcessKnowlLocalNoCommand);
          end;
          FGetNewProcessKnowlLocalNoCommand.Parameters[0].Value.SetInt32(AParentProcessKnowlCode);
          FGetNewProcessKnowlLocalNoCommand.ExecuteUpdate;
          Result := FGetNewProcessKnowlLocalNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetNewProcessFunctionCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewProcessFunctionCodeCommand = nil) or CommandRecreateNeeded(FGetNewProcessFunctionCodeCommand) then
          begin
            FreeAndNil(FGetNewProcessFunctionCodeCommand);
            FGetNewProcessFunctionCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewProcessFunctionCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewProcessFunctionCodeCommand.Text := 'TdmProcessesProxy.GetNewProcessFunctionCode';
            FGetNewProcessFunctionCodeCommand.Prepare;
            CommandRecreated(FGetNewProcessFunctionCodeCommand);
          end;
          FGetNewProcessFunctionCodeCommand.ExecuteUpdate;
          Result := FGetNewProcessFunctionCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetNewProcessFunctionLocalNo(AParentProcessFunctionCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewProcessFunctionLocalNoCommand = nil) or CommandRecreateNeeded(FGetNewProcessFunctionLocalNoCommand) then
          begin
            FreeAndNil(FGetNewProcessFunctionLocalNoCommand);
            FGetNewProcessFunctionLocalNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewProcessFunctionLocalNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewProcessFunctionLocalNoCommand.Text := 'TdmProcessesProxy.GetNewProcessFunctionLocalNo';
            FGetNewProcessFunctionLocalNoCommand.Prepare;
            CommandRecreated(FGetNewProcessFunctionLocalNoCommand);
          end;
          FGetNewProcessFunctionLocalNoCommand.Parameters[0].Value.SetInt32(AParentProcessFunctionCode);
          FGetNewProcessFunctionLocalNoCommand.ExecuteUpdate;
          Result := FGetNewProcessFunctionLocalNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetNewProcessBaseOperationCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewProcessBaseOperationCodeCommand = nil) or CommandRecreateNeeded(FGetNewProcessBaseOperationCodeCommand) then
          begin
            FreeAndNil(FGetNewProcessBaseOperationCodeCommand);
            FGetNewProcessBaseOperationCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewProcessBaseOperationCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewProcessBaseOperationCodeCommand.Text := 'TdmProcessesProxy.GetNewProcessBaseOperationCode';
            FGetNewProcessBaseOperationCodeCommand.Prepare;
            CommandRecreated(FGetNewProcessBaseOperationCodeCommand);
          end;
          FGetNewProcessBaseOperationCodeCommand.ExecuteUpdate;
          Result := FGetNewProcessBaseOperationCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetNewProcessBaseOperationLocalNo(AParentProcessBaseOperationCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewProcessBaseOperationLocalNoCommand = nil) or CommandRecreateNeeded(FGetNewProcessBaseOperationLocalNoCommand) then
          begin
            FreeAndNil(FGetNewProcessBaseOperationLocalNoCommand);
            FGetNewProcessBaseOperationLocalNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewProcessBaseOperationLocalNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewProcessBaseOperationLocalNoCommand.Text := 'TdmProcessesProxy.GetNewProcessBaseOperationLocalNo';
            FGetNewProcessBaseOperationLocalNoCommand.Prepare;
            CommandRecreated(FGetNewProcessBaseOperationLocalNoCommand);
          end;
          FGetNewProcessBaseOperationLocalNoCommand.Parameters[0].Value.SetInt32(AParentProcessBaseOperationCode);
          FGetNewProcessBaseOperationLocalNoCommand.ExecuteUpdate;
          Result := FGetNewProcessBaseOperationLocalNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetNewProcessConcreteOperationCode: Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewProcessConcreteOperationCodeCommand = nil) or CommandRecreateNeeded(FGetNewProcessConcreteOperationCodeCommand) then
          begin
            FreeAndNil(FGetNewProcessConcreteOperationCodeCommand);
            FGetNewProcessConcreteOperationCodeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewProcessConcreteOperationCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewProcessConcreteOperationCodeCommand.Text := 'TdmProcessesProxy.GetNewProcessConcreteOperationCode';
            FGetNewProcessConcreteOperationCodeCommand.Prepare;
            CommandRecreated(FGetNewProcessConcreteOperationCodeCommand);
          end;
          FGetNewProcessConcreteOperationCodeCommand.ExecuteUpdate;
          Result := FGetNewProcessConcreteOperationCodeCommand.Parameters[0].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetNewProcessConcreteOperationLocalNo(AParentProcessConcreteOperationCode: Integer): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNewProcessConcreteOperationLocalNoCommand = nil) or CommandRecreateNeeded(FGetNewProcessConcreteOperationLocalNoCommand) then
          begin
            FreeAndNil(FGetNewProcessConcreteOperationLocalNoCommand);
            FGetNewProcessConcreteOperationLocalNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNewProcessConcreteOperationLocalNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNewProcessConcreteOperationLocalNoCommand.Text := 'TdmProcessesProxy.GetNewProcessConcreteOperationLocalNo';
            FGetNewProcessConcreteOperationLocalNoCommand.Prepare;
            CommandRecreated(FGetNewProcessConcreteOperationLocalNoCommand);
          end;
          FGetNewProcessConcreteOperationLocalNoCommand.Parameters[0].Value.SetInt32(AParentProcessConcreteOperationCode);
          FGetNewProcessConcreteOperationLocalNoCommand.ExecuteUpdate;
          Result := FGetNewProcessConcreteOperationLocalNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetProcessConcreteOperationCodeByFullNo(AProcessConcreteOperationFullNo: string): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProcessConcreteOperationCodeByFullNoCommand = nil) or CommandRecreateNeeded(FGetProcessConcreteOperationCodeByFullNoCommand) then
          begin
            FreeAndNil(FGetProcessConcreteOperationCodeByFullNoCommand);
            FGetProcessConcreteOperationCodeByFullNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProcessConcreteOperationCodeByFullNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProcessConcreteOperationCodeByFullNoCommand.Text := 'TdmProcessesProxy.GetProcessConcreteOperationCodeByFullNo';
            FGetProcessConcreteOperationCodeByFullNoCommand.Prepare;
            CommandRecreated(FGetProcessConcreteOperationCodeByFullNoCommand);
          end;
          FGetProcessConcreteOperationCodeByFullNoCommand.Parameters[0].Value.SetWideString(AProcessConcreteOperationFullNo);
          FGetProcessConcreteOperationCodeByFullNoCommand.ExecuteUpdate;
          Result := FGetProcessConcreteOperationCodeByFullNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetProcessConcreteOperationIsInstance(AProcessConcreteOperationCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProcessConcreteOperationIsInstanceCommand = nil) or CommandRecreateNeeded(FGetProcessConcreteOperationIsInstanceCommand) then
          begin
            FreeAndNil(FGetProcessConcreteOperationIsInstanceCommand);
            FGetProcessConcreteOperationIsInstanceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProcessConcreteOperationIsInstanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProcessConcreteOperationIsInstanceCommand.Text := 'TdmProcessesProxy.GetProcessConcreteOperationIsInstance';
            FGetProcessConcreteOperationIsInstanceCommand.Prepare;
            CommandRecreated(FGetProcessConcreteOperationIsInstanceCommand);
          end;
          FGetProcessConcreteOperationIsInstanceCommand.Parameters[0].Value.SetInt32(AProcessConcreteOperationCode);
          FGetProcessConcreteOperationIsInstanceCommand.ExecuteUpdate;
          Result := FGetProcessConcreteOperationIsInstanceCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetProcessConcreteOperationIsInactive(AProcessConcreteOperationCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProcessConcreteOperationIsInactiveCommand = nil) or CommandRecreateNeeded(FGetProcessConcreteOperationIsInactiveCommand) then
          begin
            FreeAndNil(FGetProcessConcreteOperationIsInactiveCommand);
            FGetProcessConcreteOperationIsInactiveCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProcessConcreteOperationIsInactiveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProcessConcreteOperationIsInactiveCommand.Text := 'TdmProcessesProxy.GetProcessConcreteOperationIsInactive';
            FGetProcessConcreteOperationIsInactiveCommand.Prepare;
            CommandRecreated(FGetProcessConcreteOperationIsInactiveCommand);
          end;
          FGetProcessConcreteOperationIsInactiveCommand.Parameters[0].Value.SetInt32(AProcessConcreteOperationCode);
          FGetProcessConcreteOperationIsInactiveCommand.ExecuteUpdate;
          Result := FGetProcessConcreteOperationIsInactiveCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetProcessBaseOperationCodeByFullNo(AProcessBaseOperationFullNo: string): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProcessBaseOperationCodeByFullNoCommand = nil) or CommandRecreateNeeded(FGetProcessBaseOperationCodeByFullNoCommand) then
          begin
            FreeAndNil(FGetProcessBaseOperationCodeByFullNoCommand);
            FGetProcessBaseOperationCodeByFullNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProcessBaseOperationCodeByFullNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProcessBaseOperationCodeByFullNoCommand.Text := 'TdmProcessesProxy.GetProcessBaseOperationCodeByFullNo';
            FGetProcessBaseOperationCodeByFullNoCommand.Prepare;
            CommandRecreated(FGetProcessBaseOperationCodeByFullNoCommand);
          end;
          FGetProcessBaseOperationCodeByFullNoCommand.Parameters[0].Value.SetWideString(AProcessBaseOperationFullNo);
          FGetProcessBaseOperationCodeByFullNoCommand.ExecuteUpdate;
          Result := FGetProcessBaseOperationCodeByFullNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetProcessBaseOperationIsInstance(AProcessBaseOperationCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProcessBaseOperationIsInstanceCommand = nil) or CommandRecreateNeeded(FGetProcessBaseOperationIsInstanceCommand) then
          begin
            FreeAndNil(FGetProcessBaseOperationIsInstanceCommand);
            FGetProcessBaseOperationIsInstanceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProcessBaseOperationIsInstanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProcessBaseOperationIsInstanceCommand.Text := 'TdmProcessesProxy.GetProcessBaseOperationIsInstance';
            FGetProcessBaseOperationIsInstanceCommand.Prepare;
            CommandRecreated(FGetProcessBaseOperationIsInstanceCommand);
          end;
          FGetProcessBaseOperationIsInstanceCommand.Parameters[0].Value.SetInt32(AProcessBaseOperationCode);
          FGetProcessBaseOperationIsInstanceCommand.ExecuteUpdate;
          Result := FGetProcessBaseOperationIsInstanceCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetProcessFunctionCodeByFullNo(AProcessFunctionFullNo: string): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProcessFunctionCodeByFullNoCommand = nil) or CommandRecreateNeeded(FGetProcessFunctionCodeByFullNoCommand) then
          begin
            FreeAndNil(FGetProcessFunctionCodeByFullNoCommand);
            FGetProcessFunctionCodeByFullNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProcessFunctionCodeByFullNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProcessFunctionCodeByFullNoCommand.Text := 'TdmProcessesProxy.GetProcessFunctionCodeByFullNo';
            FGetProcessFunctionCodeByFullNoCommand.Prepare;
            CommandRecreated(FGetProcessFunctionCodeByFullNoCommand);
          end;
          FGetProcessFunctionCodeByFullNoCommand.Parameters[0].Value.SetWideString(AProcessFunctionFullNo);
          FGetProcessFunctionCodeByFullNoCommand.ExecuteUpdate;
          Result := FGetProcessFunctionCodeByFullNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetProcessFunctionIsInstance(AProcessFunctionCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProcessFunctionIsInstanceCommand = nil) or CommandRecreateNeeded(FGetProcessFunctionIsInstanceCommand) then
          begin
            FreeAndNil(FGetProcessFunctionIsInstanceCommand);
            FGetProcessFunctionIsInstanceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProcessFunctionIsInstanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProcessFunctionIsInstanceCommand.Text := 'TdmProcessesProxy.GetProcessFunctionIsInstance';
            FGetProcessFunctionIsInstanceCommand.Prepare;
            CommandRecreated(FGetProcessFunctionIsInstanceCommand);
          end;
          FGetProcessFunctionIsInstanceCommand.Parameters[0].Value.SetInt32(AProcessFunctionCode);
          FGetProcessFunctionIsInstanceCommand.ExecuteUpdate;
          Result := FGetProcessFunctionIsInstanceCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetProcessKnowlCodeByFullNo(AProcessKnowlFullNo: string): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProcessKnowlCodeByFullNoCommand = nil) or CommandRecreateNeeded(FGetProcessKnowlCodeByFullNoCommand) then
          begin
            FreeAndNil(FGetProcessKnowlCodeByFullNoCommand);
            FGetProcessKnowlCodeByFullNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProcessKnowlCodeByFullNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProcessKnowlCodeByFullNoCommand.Text := 'TdmProcessesProxy.GetProcessKnowlCodeByFullNo';
            FGetProcessKnowlCodeByFullNoCommand.Prepare;
            CommandRecreated(FGetProcessKnowlCodeByFullNoCommand);
          end;
          FGetProcessKnowlCodeByFullNoCommand.Parameters[0].Value.SetWideString(AProcessKnowlFullNo);
          FGetProcessKnowlCodeByFullNoCommand.ExecuteUpdate;
          Result := FGetProcessKnowlCodeByFullNoCommand.Parameters[1].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmProcessesProxyClient.GetProcessKnowlIsInstance(AProcessKnowlCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetProcessKnowlIsInstanceCommand = nil) or CommandRecreateNeeded(FGetProcessKnowlIsInstanceCommand) then
          begin
            FreeAndNil(FGetProcessKnowlIsInstanceCommand);
            FGetProcessKnowlIsInstanceCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetProcessKnowlIsInstanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetProcessKnowlIsInstanceCommand.Text := 'TdmProcessesProxy.GetProcessKnowlIsInstance';
            FGetProcessKnowlIsInstanceCommand.Prepare;
            CommandRecreated(FGetProcessKnowlIsInstanceCommand);
          end;
          FGetProcessKnowlIsInstanceCommand.Parameters[0].Value.SetInt32(AProcessKnowlCode);
          FGetProcessKnowlIsInstanceCommand.ExecuteUpdate;
          Result := FGetProcessKnowlIsInstanceCommand.Parameters[1].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmProcessesProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmProcessesProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmProcessesProxyClient.Destroy;
begin
  FLoadPrcDataCommand.DisposeOf;
  FGetNewProcessKnowlCodeCommand.DisposeOf;
  FGetNewProcessKnowlLocalNoCommand.DisposeOf;
  FGetNewProcessFunctionCodeCommand.DisposeOf;
  FGetNewProcessFunctionLocalNoCommand.DisposeOf;
  FGetNewProcessBaseOperationCodeCommand.DisposeOf;
  FGetNewProcessBaseOperationLocalNoCommand.DisposeOf;
  FGetNewProcessConcreteOperationCodeCommand.DisposeOf;
  FGetNewProcessConcreteOperationLocalNoCommand.DisposeOf;
  FGetProcessConcreteOperationCodeByFullNoCommand.DisposeOf;
  FGetProcessConcreteOperationIsInstanceCommand.DisposeOf;
  FGetProcessConcreteOperationIsInactiveCommand.DisposeOf;
  FGetProcessBaseOperationCodeByFullNoCommand.DisposeOf;
  FGetProcessBaseOperationIsInstanceCommand.DisposeOf;
  FGetProcessFunctionCodeByFullNoCommand.DisposeOf;
  FGetProcessFunctionIsInstanceCommand.DisposeOf;
  FGetProcessKnowlCodeByFullNoCommand.DisposeOf;
  FGetProcessKnowlIsInstanceCommand.DisposeOf;
  inherited;
end;

procedure TdmXModelsProxyClient.GetBndProcessObjectID(IsSale: Boolean; BndObjectBranchCode: Integer; BndObjectNo: Integer; out BndProcessObjectBranchCode: Integer; out BndProcessObjectCode: Integer; out HasManufactureTechQuantity: Boolean);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetBndProcessObjectIDCommand = nil) or CommandRecreateNeeded(FGetBndProcessObjectIDCommand) then
          begin
            FreeAndNil(FGetBndProcessObjectIDCommand);
            FGetBndProcessObjectIDCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetBndProcessObjectIDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetBndProcessObjectIDCommand.Text := 'TdmXModelsProxy.GetBndProcessObjectID';
            FGetBndProcessObjectIDCommand.Prepare;
            CommandRecreated(FGetBndProcessObjectIDCommand);
          end;
          FGetBndProcessObjectIDCommand.Parameters[0].Value.SetBoolean(IsSale);
          FGetBndProcessObjectIDCommand.Parameters[1].Value.SetInt32(BndObjectBranchCode);
          FGetBndProcessObjectIDCommand.Parameters[2].Value.SetInt32(BndObjectNo);
          FGetBndProcessObjectIDCommand.ExecuteUpdate;
          BndProcessObjectBranchCode := FGetBndProcessObjectIDCommand.Parameters[3].Value.GetInt32;
          BndProcessObjectCode := FGetBndProcessObjectIDCommand.Parameters[4].Value.GetInt32;
          HasManufactureTechQuantity := FGetBndProcessObjectIDCommand.Parameters[5].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmXModelsProxyClient.XModelExists(BndProcessObjectBranchCode: Integer; BndProcessObjectCode: Integer): Boolean;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FXModelExistsCommand = nil) or CommandRecreateNeeded(FXModelExistsCommand) then
          begin
            FreeAndNil(FXModelExistsCommand);
            FXModelExistsCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FXModelExistsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FXModelExistsCommand.Text := 'TdmXModelsProxy.XModelExists';
            FXModelExistsCommand.Prepare;
            CommandRecreated(FXModelExistsCommand);
          end;
          FXModelExistsCommand.Parameters[0].Value.SetInt32(BndProcessObjectBranchCode);
          FXModelExistsCommand.Parameters[1].Value.SetInt32(BndProcessObjectCode);
          FXModelExistsCommand.ExecuteUpdate;
          Result := FXModelExistsCommand.Parameters[2].Value.GetBoolean;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmXModelsProxyClient.GetNeededSpecModelVariantNo(SpecProductCode: Integer; MainDeptCode: Integer; Quantity: Double; ToDate: TDateTime; AIsOperationsModel: Boolean): Integer;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetNeededSpecModelVariantNoCommand = nil) or CommandRecreateNeeded(FGetNeededSpecModelVariantNoCommand) then
          begin
            FreeAndNil(FGetNeededSpecModelVariantNoCommand);
            FGetNeededSpecModelVariantNoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetNeededSpecModelVariantNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetNeededSpecModelVariantNoCommand.Text := 'TdmXModelsProxy.GetNeededSpecModelVariantNo';
            FGetNeededSpecModelVariantNoCommand.Prepare;
            CommandRecreated(FGetNeededSpecModelVariantNoCommand);
          end;
          FGetNeededSpecModelVariantNoCommand.Parameters[0].Value.SetInt32(SpecProductCode);
          FGetNeededSpecModelVariantNoCommand.Parameters[1].Value.SetInt32(MainDeptCode);
          FGetNeededSpecModelVariantNoCommand.Parameters[2].Value.SetDouble(Quantity);
          FGetNeededSpecModelVariantNoCommand.Parameters[3].Value.AsDateTime := ToDate;
          FGetNeededSpecModelVariantNoCommand.Parameters[4].Value.SetBoolean(AIsOperationsModel);
          FGetNeededSpecModelVariantNoCommand.ExecuteUpdate;
          Result := FGetNeededSpecModelVariantNoCommand.Parameters[5].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmXModelsProxyClient.GetModelInfo(MLObjectBranchCode: Integer; MLObjectCode: Integer; out ForkCount: Integer; out OutStoreDealCount: Integer; out WaitingChangeRequestCount: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetModelInfoCommand = nil) or CommandRecreateNeeded(FGetModelInfoCommand) then
          begin
            FreeAndNil(FGetModelInfoCommand);
            FGetModelInfoCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetModelInfoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetModelInfoCommand.Text := 'TdmXModelsProxy.GetModelInfo';
            FGetModelInfoCommand.Prepare;
            CommandRecreated(FGetModelInfoCommand);
          end;
          FGetModelInfoCommand.Parameters[0].Value.SetInt32(MLObjectBranchCode);
          FGetModelInfoCommand.Parameters[1].Value.SetInt32(MLObjectCode);
          FGetModelInfoCommand.ExecuteUpdate;
          ForkCount := FGetModelInfoCommand.Parameters[2].Value.GetInt32;
          OutStoreDealCount := FGetModelInfoCommand.Parameters[3].Value.GetInt32;
          WaitingChangeRequestCount := FGetModelInfoCommand.Parameters[4].Value.GetInt32;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmXModelsProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmXModelsProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmXModelsProxyClient.Destroy;
begin
  FGetBndProcessObjectIDCommand.DisposeOf;
  FXModelExistsCommand.DisposeOf;
  FGetNeededSpecModelVariantNoCommand.DisposeOf;
  FGetModelInfoCommand.DisposeOf;
  inherited;
end;

procedure TdmMfgReportsProxyClient.ArchiveModel(MLObjectBranchCode: Integer; MLObjectCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FArchiveModelCommand = nil) or CommandRecreateNeeded(FArchiveModelCommand) then
          begin
            FreeAndNil(FArchiveModelCommand);
            FArchiveModelCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FArchiveModelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FArchiveModelCommand.Text := 'TdmMfgReportsProxy.ArchiveModel';
            FArchiveModelCommand.Prepare;
            CommandRecreated(FArchiveModelCommand);
          end;
          FArchiveModelCommand.Parameters[0].Value.SetInt32(MLObjectBranchCode);
          FArchiveModelCommand.Parameters[1].Value.SetInt32(MLObjectCode);
          FArchiveModelCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmMfgReportsProxyClient.UnArchiveModel(MLObjectBranchCode: Integer; MLObjectCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FUnArchiveModelCommand = nil) or CommandRecreateNeeded(FUnArchiveModelCommand) then
          begin
            FreeAndNil(FUnArchiveModelCommand);
            FUnArchiveModelCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FUnArchiveModelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FUnArchiveModelCommand.Text := 'TdmMfgReportsProxy.UnArchiveModel';
            FUnArchiveModelCommand.Prepare;
            CommandRecreated(FUnArchiveModelCommand);
          end;
          FUnArchiveModelCommand.Parameters[0].Value.SetInt32(MLObjectBranchCode);
          FUnArchiveModelCommand.Parameters[1].Value.SetInt32(MLObjectCode);
          FUnArchiveModelCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmMfgReportsProxyClient.CloseModel(MLObjectBranchCode: Integer; MLObjectCode: Integer);
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FCloseModelCommand = nil) or CommandRecreateNeeded(FCloseModelCommand) then
          begin
            FreeAndNil(FCloseModelCommand);
            FCloseModelCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FCloseModelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FCloseModelCommand.Text := 'TdmMfgReportsProxy.CloseModel';
            FCloseModelCommand.Prepare;
            CommandRecreated(FCloseModelCommand);
          end;
          FCloseModelCommand.Parameters[0].Value.SetInt32(MLObjectBranchCode);
          FCloseModelCommand.Parameters[1].Value.SetInt32(MLObjectCode);
          FCloseModelCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmMfgReportsProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmMfgReportsProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmMfgReportsProxyClient.Destroy;
begin
  FArchiveModelCommand.DisposeOf;
  FUnArchiveModelCommand.DisposeOf;
  FCloseModelCommand.DisposeOf;
  inherited;
end;

procedure TdmSessionProxyClient.Login;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FLoginCommand = nil) or CommandRecreateNeeded(FLoginCommand) then
          begin
            FreeAndNil(FLoginCommand);
            FLoginCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FLoginCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FLoginCommand.Text := 'TdmSessionProxy.Login';
            FLoginCommand.Prepare;
            CommandRecreated(FLoginCommand);
          end;
          FLoginCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

procedure TdmSessionProxyClient.RefreshLoginContext;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FRefreshLoginContextCommand = nil) or CommandRecreateNeeded(FRefreshLoginContextCommand) then
          begin
            FreeAndNil(FRefreshLoginContextCommand);
            FRefreshLoginContextCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FRefreshLoginContextCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FRefreshLoginContextCommand.Text := 'TdmSessionProxy.RefreshLoginContext';
            FRefreshLoginContextCommand.Prepare;
            CommandRecreated(FRefreshLoginContextCommand);
          end;
          FRefreshLoginContextCommand.ExecuteUpdate;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmSessionProxyClient.GetLoginContextAsVariant: OleVariant;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetLoginContextAsVariantCommand = nil) or CommandRecreateNeeded(FGetLoginContextAsVariantCommand) then
          begin
            FreeAndNil(FGetLoginContextAsVariantCommand);
            FGetLoginContextAsVariantCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetLoginContextAsVariantCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetLoginContextAsVariantCommand.Text := 'TdmSessionProxy.GetLoginContextAsVariant';
            FGetLoginContextAsVariantCommand.Prepare;
            CommandRecreated(FGetLoginContextAsVariantCommand);
          end;
          FGetLoginContextAsVariantCommand.ExecuteUpdate;
          Result := FGetLoginContextAsVariantCommand.Parameters[0].Value.AsVariant;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmSessionProxyClient.GetExeDateTime: TDateTime;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetExeDateTimeCommand = nil) or CommandRecreateNeeded(FGetExeDateTimeCommand) then
          begin
            FreeAndNil(FGetExeDateTimeCommand);
            FGetExeDateTimeCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetExeDateTimeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetExeDateTimeCommand.Text := 'TdmSessionProxy.GetExeDateTime';
            FGetExeDateTimeCommand.Prepare;
            CommandRecreated(FGetExeDateTimeCommand);
          end;
          FGetExeDateTimeCommand.ExecuteUpdate;
          Result := FGetExeDateTimeCommand.Parameters[0].Value.AsDateTime;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;

function TdmSessionProxyClient.GetExeVersion: string;
var
  OpenHere: Boolean;
begin
  Assert(Assigned(DSProviderConnection));

  OpenHere:= not DSProviderConnection.SQLConnection.Connected;
  while True do
    begin
      try

        if OpenHere and not DSProviderConnection.SQLConnection.Connected then
          DSProviderConnection.SQLConnection.Open;
        try
          if (FGetExeVersionCommand = nil) or CommandRecreateNeeded(FGetExeVersionCommand) then
          begin
            FreeAndNil(FGetExeVersionCommand);
            FGetExeVersionCommand := DSProviderConnection.SQLConnection.DBXConnection.CreateCommand;
            FGetExeVersionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
            FGetExeVersionCommand.Text := 'TdmSessionProxy.GetExeVersion';
            FGetExeVersionCommand.Prepare;
            CommandRecreated(FGetExeVersionCommand);
          end;
          FGetExeVersionCommand.ExecuteUpdate;
          Result := FGetExeVersionCommand.Parameters[0].Value.GetWideString;
        finally
          if OpenHere then
            DSProviderConnection.SQLConnection.Close;
        end;

        Exit;
      except
        on E: Exception do
          begin
            if not DSProviderConnection.RetryOnException(E) then
              raise;
          end;
      end;
    end;  { while }
end;


constructor TdmSessionProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmSessionProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmSessionProxyClient.Destroy;
begin
  FLoginCommand.DisposeOf;
  FRefreshLoginContextCommand.DisposeOf;
  FGetLoginContextAsVariantCommand.DisposeOf;
  FGetExeDateTimeCommand.DisposeOf;
  FGetExeVersionCommand.DisposeOf;
  inherited;
end;


constructor TdmCompanyFilterProxyClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(nil);
end;


constructor TdmCompanyFilterProxyClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(nil);
end;


destructor TdmCompanyFilterProxyClient.Destroy;
begin
  inherited;
end;

end.

