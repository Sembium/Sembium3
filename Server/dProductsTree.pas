unit dProductsTree;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dNomTree, AbmesClientDataSet, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  JvStringHolder, DBXDevartOracle, uSmartLock;

type
  TdmProductsTree = class(TdmNomTree)                   
    qryGetCompanyProductName: TAbmesSQLQuery;
    qryGetCompanyProductNameNAME: TAbmesWideStringField;
    qryNodeDataWORK_MEASURE_CODE: TAbmesFloatField;
    qryNodeDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryNodeDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryNodeDataTECH_MEASURE_CODE: TAbmesFloatField;
    qryNodeDataTECH_MEASURE_COEF: TAbmesFloatField;
    qryNodeDataESTIMATED_SECONDARY_PRICE: TAbmesFloatField;
    qryNodeDataMARKET_SECONDARY_PRICE: TAbmesFloatField;
    qryNodeDataIS_VAT_FREE: TAbmesFloatField;
    qryNodeDataHAS_DOCUMENTATION: TAbmesFloatField;
    qryNodeChildrenSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryNodeDataTRANSPORT_MEASURE_CODE: TAbmesFloatField;
    qryNodeDataTRANSPORT_MEASURE_COEF: TAbmesFloatField;
    qryProductParams: TAbmesSQLQuery;
    prvProductParams: TDataSetProvider;
    qryProductParamsPRODUCT_PARAM_CODE: TAbmesFloatField;
    qryProductParamsPRODUCT_PARAM_NAME: TAbmesWideStringField;
    qryProductParamsABBREV: TAbmesWideStringField;
    qryProductParamsPRODUCT_PARAM_ORDER_NO: TAbmesFloatField;
    qryProductParamsVALUE_TYPE: TAbmesFloatField;
    qryProductParamsNOM_CODE: TAbmesFloatField;
    qryGetProductDefaultStore: TAbmesSQLQuery;
    qryGetProductDefaultStoreDEFAULT_STORE_CODE: TAbmesFloatField;
    qryNodeDataSELF_EXISTENT_STATUS_CODE: TAbmesFloatField;
    qryProductDoc: TAbmesSQLQuery;
    qryProductDocDOC_BRANCH_CODE: TAbmesFloatField;
    qryProductDocDOC_CODE: TAbmesFloatField;
    qryNodeDataIS_GROUP: TAbmesFloatField;
    qryNodeDataTRANSIENT_STATUS_CODE: TAbmesFloatField;
    qryNodeDataWORKDAYS_TO_EXIST: TAbmesFloatField;
    qryCheckProductRelation: TAbmesSQLQuery;
    qryCheckProductRelationANCESTOR_PRODUCT_CODE: TAbmesFloatField;
    qryCheckProductRelationDESCENDANT_PRODUCT_CODE: TAbmesFloatField;
    qryNodeDataPARENT_CODE: TAbmesFloatField;
    qryGetProductParam: TAbmesSQLQuery;
    qryGetProductParamPRODUCT_PARAM_NAME: TAbmesWideStringField;
    qryGetProductParamPRODUCT_PARAM_ORDER_NO: TAbmesFloatField;
    qryGetProductParamVALUE_TYPE: TAbmesFloatField;
    qryGetProductParamABBREV: TAbmesWideStringField;
    qryGetProductParamNOM_CODE: TAbmesFloatField;
    qryNodeChildrenHAS_DOCUMENTATION: TAbmesFloatField;
    qryNodeDataIS_INACTIVE: TAbmesFloatField;
    qryNodeDataDOC_BRANCH_CODE: TAbmesFloatField;
    qryNodeDataDOC_CODE: TAbmesFloatField;
    qryNodeDataIS_SELF_APPROVED: TAbmesFloatField;
    qrySaleAcquireSinglePrice: TAbmesSQLQuery;
    qrySaleAcquireSinglePriceSALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    qryNodeDataSALE_LEASE_SECONDARY_PRICE: TAbmesFloatField;
    qryNodeDataSALE_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryProductExFrame: TAbmesSQLQuery;
    prvProductExFrame: TDataSetProvider;
    qryProductExFrameCOMMON_STATUS_CODE: TAbmesFloatField;
    qryProductExFrameCOMMON_PRODUCTS_LEVEL_NO: TAbmesFloatField;
    qryProductExFrameCOMMON_PRODUCTS_SUB_LEVELS: TAbmesFloatField;
    qryProductExFrameSPEC_STATE_CODE: TAbmesFloatField;
    qryProductExFramePARTNER_PRODUCT_NAMES: TAbmesWideStringField;
    qryProductExFramePRIORITY_NO: TAbmesFloatField;
    qryProductExFramePRIORITY_COLOR: TAbmesFloatField;
    qryProductExFramePRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryProductExFrameMEASURE_ABBREV: TAbmesWideStringField;
    qryProductExFrameNOTES: TAbmesWideStringField;
    qryProductExFramePRODUCT_ORIGIN_ABBREV: TAbmesWideStringField;
    qryProductExFrameACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryProductBorderRelExists: TAbmesSQLQuery;
    qryProductBorderRelExistsPRODUCT_BORDER_REL_EXISTS: TAbmesFloatField;
    qryDateProductPrices: TAbmesSQLQuery;
    qryDateProductPricesESTIMATED_SECONDARY_PRICE: TAbmesFloatField;
    qryDateProductPricesMARKET_SECONDARY_PRICE: TAbmesFloatField;
    qryDateProductPricesINVESTMENT_VALUE_2: TAbmesFloatField;
    qryDateProductPricesINVESTMENT_VALUE_3: TAbmesFloatField;
    qryDateProductPricesINVESTMENT_VALUE_4: TAbmesFloatField;
    qryDateProductPricesINVESTMENT_VALUE_5: TAbmesFloatField;
    qryDateProductPricesPRECISION_LEVEL_CODE: TAbmesFloatField;
    qryNodeDataPRODUCT_SPEC_REQUIREMENT_CODE: TAbmesFloatField;
    prvProductSpecRequirements: TDataSetProvider;
    qryProductSpecRequirements: TAbmesSQLQuery;
    qryProductSpecRequirementsPRODUCT_SPEC_REQUIREMENT_CODE: TAbmesFloatField;
    qryProductSpecRequirementsPRODUCT_SPEC_REQUIREMENT_NAME: TAbmesWideStringField;
    qryNodeDataBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    qryCommonProduct: TAbmesSQLQuery;
    qryCommonProductCOMMON_PRODUCT_CODE: TAbmesFloatField;
    qryShowNodeParamsIS_DEFINED: TAbmesFloatField;
    qryProductParamsPRODUCT_CODE: TAbmesFloatField;
    qryNodeChildrenIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    qryNodeChildrenCOMMON_STATUS_CODE: TAbmesFloatField;
    qryProductExFrameTECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryProductExFrameSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryGetProductParamNOM_DOC_BRANCH_CODE: TAbmesFloatField;
    qryGetProductParamNOM_DOC_CODE: TAbmesFloatField;
    qryGetProductParamNOM_HAS_DOC_ITEMS: TAbmesFloatField;
    qryShowNodeParamsNOM_DOC_BRANCH_CODE: TAbmesFloatField;
    qryShowNodeParamsNOM_DOC_CODE: TAbmesFloatField;
    qryShowNodeParamsNOM_HAS_DOC_ITEMS: TAbmesFloatField;
    qryShowNodeParamsVALUE_NOM_ITEM_DOC_BRANCH_CODE: TAbmesFloatField;
    qryShowNodeParamsVALUE_NOM_ITEM_DOC_CODE: TAbmesFloatField;
    qryShowNodeParamsVALUE_NOM_ITEM_HAS_DOC_ITEMS: TAbmesFloatField;
    qryShowNodeParamsDOC_BRANCH_CODE: TAbmesFloatField;
    qryShowNodeParamsDOC_CODE: TAbmesFloatField;
    qryShowNodeParamsHAS_DOC_ITEMS: TAbmesFloatField;
    qryGetProductParamDOC_BRANCH_CODE: TAbmesFloatField;
    qryGetProductParamDOC_CODE: TAbmesFloatField;
    qryGetProductParamHAS_DOC_ITEMS: TAbmesFloatField;
    qryShowNodeParamsIS_INHERITED: TAbmesFloatField;
    qryNodeDataCOMMON_STATUS_CODE: TAbmesFloatField;
    prvNodeData: TDataSetProvider;
    qryPrintTreeIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    qryPrintTreeCOMMON_STATUS_CODE: TAbmesFloatField;
    qryPrintTreeChildrenIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    qryPrintTreeChildrenCOMMON_STATUS_CODE: TAbmesFloatField;
    cdsPrintTreeChildrenIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    cdsPrintTreeChildrenCOMMON_STATUS_CODE: TAbmesFloatField;
    qryProductDeptOptionsTopDept: TAbmesSQLQuery;
    qryProductDeptOptionsTopDeptPDO_TOP_DEPT_CODE: TAbmesFloatField;
    qryNodeDataHAS_SPEC: TAbmesFloatField;
    prvProductOrderQuantities: TDataSetProvider;
    qryProductOrderQuantities: TAbmesSQLQuery;
    qryProductOrderQuantitiesMIN_ORDER_QUANTITY: TAbmesFloatField;
    qryProductOrderQuantitiesMAX_ORDER_QUANTITY: TAbmesFloatField;
    qryProductOrderQuantitiesBALANCE_QUANTITY: TAbmesFloatField;
  private
    { Private declarations }
  protected
    function GetCompanyProductName(CompanyCode,
      ProductCode: Integer): string;
    procedure GetProductData(ANodeID: Integer; out NodeName: string;
      out NodeNo: Double; out WorkMeasureCode, AccountMeasureCode: Integer;
      out AccountMeasureCoef: Double; out TechMeasureCode: Integer;
      out TechMeasureCoef: Double; out EstimatedSecondaryPrice,
      MarketSecondaryPrice: Double; out IsVatFree, HasDocumentation: Boolean;
      out TransportMeasureCode: Integer;
      out TransportMeasureCoef: Double; out SelfExistentStatusCode: Integer;
      out IsGroup: Boolean; out TransientStatusCode: Integer;
      out WorkdaysToExist: Integer; out ParentNodeID: Integer;
      out IsInactive: Boolean; out IsSelfApproved: Boolean;
      out SaleLeaseSecondaryPrice: Double; out SaleLeaseDateUnitCode: Integer;
      out ProductSpecRequirementCode: Integer; out BOIOrderTypeCode: Integer;
      out CommonStatusCode: Integer; out HasSpec: Boolean);
    function GetNodeSqlTableAlias: string; override;
    function GetProductDefaultStore(ProductCode: Integer; DeptCode: Integer): Integer;
    procedure GetProductDoc(ProductCode: Integer; out DocBranchCode: Integer; out DocCode: Integer);
    function CheckProductRelation(NewProductCode, OldProductCode: Integer): Integer;
    procedure GetProductParam(
      AProductCode: Integer;
      AParamCode: Integer;
      out ParamName: string;
      out ParamAbbrev: string;
      out ParamOrderNo: Integer;
      out ValueType: Integer;
      out NomCode: Integer;
      out DocBranchCode: Integer;
      out DocCode: Integer;
      out HasDocItems: Boolean;
      out NomDocBranchCode: Integer;
      out NomDocCode: Integer;
      out NomHasDocItems: Boolean);
    procedure GetProductNameAndDoc(
      ProductCode: Integer; out ProductName: string;
      out ProductNo: Double; out DocBranchCode: Integer;
      out DocCode: Integer; out HasDocumentation: Boolean);
    function GetProductSaleAcquireSinglePrice(ProductCode: Integer;
      InCurrencyCode: Integer; ToDate: TDateTime; ClientCode: Integer): OleVariant;
    function ProductBorderRelExists(ProductCode: Integer; BorderRelTypeCode: Integer): Boolean;
    procedure GetProductPrices(
      ProductCode: Integer;
      PricesDate: TDateTime;
      out EstimatedSecondaryPrice: Double;
      out MarketSecondaryPrice: Double;
      out InvestmentValue2: Double;
      out InvestmentValue3: Double;
      out InvestmentValue4: Double;
      out InvestmentValue5: Double;
      out PrecisionLevelCode: Double);
    function GetNodeID(ANodeNo: Double): Integer; override;
    function GetProductCode(AProductNo: Double; AProductClass: Integer): Integer;
    function GetCommonProductCode(ProductCode: Integer): Integer;
    function GetProductDeptOptionsTopDeptCode(const AProductCode: Integer): Integer;
  end;

type
  IdmProductsTreeProxy = interface(IdmNomTreeProxy)
    function GetProductDefaultStore(ProductCode: Integer; DeptCode: Integer): Integer;
  end;

type
  TdmProductsTreeProxy = class(TdmNomTreeProxy, IdmProductsTreeProxy)
  private
    class var FSingleton: TdmProductsTreeProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmProductsTree>;
  strict protected
    property LockedInstance: ISmartLock<TdmProductsTree> read GetLockedInstance;
  public
    class property Singleton: TdmProductsTreeProxy read FSingleton;

    function GetProductDefaultStore(ProductCode: Integer; DeptCode: Integer): Integer;

    function GetCompanyProductName(CompanyCode, ProductCode: Integer): string;
    procedure GetProductData(
      ANodeID: Integer; out NodeName: string;
      out NodeNo: Double; out WorkMeasureCode, AccountMeasureCode: Integer;
      out AccountMeasureCoef: Double; out TechMeasureCode: Integer;
      out TechMeasureCoef: Double;out EstimatedSecondaryPrice,
      MarketSecondaryPrice: Double; out IsVatFree, HasDocumentation: Boolean;
      out TransportMeasureCode: Integer;
      out TransportMeasureCoef: Double; out SelfExistentStatusCode: Integer;
      out IsGroup: Boolean; out TransientStatusCode: Integer;
      out WorkdaysToExist: Integer; out ParentNodeID: Integer;
      out IsInactive: Boolean; out IsSelfApproved: Boolean;
      out SaleLeaseSecondaryPrice: Double; out SaleLeaseDateUnitCode: Integer;
      out ProductSpecRequirementCode: Integer; out BOIOrderTypeCode: Integer;
      out CommonStatusCode: Integer; out HasSpec: Boolean);

    procedure GetProductDoc(ProductCode: Integer; out DocBranchCode: Integer; out DocCode: Integer);
    function CheckProductRelation(NewProductCode, OldProductCode: Integer): Integer;
    procedure GetProductParam(
      AProductCode: Integer;
      AParamCode: Integer;
      out ParamName: string;
      out ParamAbbrev: string;
      out ParamOrderNo: Integer;
      out ValueType: Integer;
      out NomCode: Integer;
      out DocBranchCode: Integer;
      out DocCode: Integer;
      out HasDocItems: Boolean;
      out NomDocBranchCode: Integer;
      out NomDocCode: Integer;
      out NomHasDocItems: Boolean);

    procedure GetProductNameAndDoc(
      ProductCode: Integer; out ProductName: string;
      out ProductNo: Double; out DocBranchCode: Integer;
      out DocCode: Integer; out HasDocumentation: Boolean);

    function GetProductSaleAcquireSinglePrice(
      ProductCode: Integer; InCurrencyCode: Integer; ToDate: TDateTime; ClientCode: Integer): OleVariant;
    function ProductBorderRelExists(ProductCode: Integer; BorderRelTypeCode: Integer): Boolean;
    procedure GetProductPrices(
      ProductCode: Integer;
      PricesDate: TDateTime;
      out EstimatedSecondaryPrice: Double;
      out MarketSecondaryPrice: Double;
      out InvestmentValue2: Double;
      out InvestmentValue3: Double;
      out InvestmentValue4: Double;
      out InvestmentValue5: Double;
      out PrecisionLevelCode: Double);

    function GetProductCode(AProductNo: Double; AProductClass: Integer): Integer;
    function GetCommonProductCode(ProductCode: Integer): Integer;
    function GetProductDeptOptionsTopDeptCode(const AProductCode: Integer): Integer;
  end;

implementation

uses
  uUtils;

{$R *.DFM}

{ TdmProductsTreeProxy }

function TdmProductsTreeProxy.GetLockedInstance: ISmartLock<TdmProductsTree>;
begin
  Result:= ISmartLock<TdmProductsTree>(inherited LockedInstance);
end;

function TdmProductsTreeProxy.CheckProductRelation(NewProductCode,
  OldProductCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.CheckProductRelation(NewProductCode, OldProductCode);
end;

function TdmProductsTreeProxy.GetCommonProductCode(
  ProductCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetCommonProductCode(ProductCode);
end;

function TdmProductsTreeProxy.GetCompanyProductName(CompanyCode,
  ProductCode: Integer): string;
begin
  Result:= LockedInstance.Value.GetCompanyProductName(CompanyCode, ProductCode);
end;

function TdmProductsTreeProxy.GetProductCode(AProductNo: Double;
  AProductClass: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetProductCode(AProductNo, AProductClass);
end;

procedure TdmProductsTreeProxy.GetProductData(ANodeID: Integer;
  out NodeName: string; out NodeNo: Double;
  out WorkMeasureCode, AccountMeasureCode: Integer; out AccountMeasureCoef: Double;
  out TechMeasureCode: Integer; out TechMeasureCoef: Double;
  out EstimatedSecondaryPrice, MarketSecondaryPrice: Double;
  out IsVatFree, HasDocumentation: Boolean;
  out TransportMeasureCode: Integer;
  out TransportMeasureCoef: Double; out SelfExistentStatusCode: Integer;
  out IsGroup: Boolean; out TransientStatusCode: Integer;
  out WorkdaysToExist: Integer; out ParentNodeID: Integer;
  out IsInactive: Boolean; out IsSelfApproved: Boolean;
  out SaleLeaseSecondaryPrice: Double; out SaleLeaseDateUnitCode: Integer;
  out ProductSpecRequirementCode: Integer; out BOIOrderTypeCode: Integer;
  out CommonStatusCode: Integer; out HasSpec: Boolean);
begin
  LockedInstance.Value.GetProductData(
    ANodeID,
    NodeName,
    NodeNo,
    WorkMeasureCode,
    AccountMeasureCode,
    AccountMeasureCoef,
    TechMeasureCode,
    TechMeasureCoef,
    EstimatedSecondaryPrice,
    MarketSecondaryPrice,
    IsVatFree,
    HasDocumentation,
    TransportMeasureCode,
    TransportMeasureCoef,
    SelfExistentStatusCode,
    IsGroup,
    TransientStatusCode,
    WorkdaysToExist,
    ParentNodeID,
    IsInactive,
    IsSelfApproved,
    SaleLeaseSecondaryPrice,
    SaleLeaseDateUnitCode,
    ProductSpecRequirementCode,
    BOIOrderTypeCode,
    CommonStatusCode,
    HasSpec
  );
end;

function TdmProductsTreeProxy.GetProductDefaultStore(ProductCode,
  DeptCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetProductDefaultStore(ProductCode, DeptCode);
end;

function TdmProductsTreeProxy.GetProductDeptOptionsTopDeptCode(
  const AProductCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetProductDeptOptionsTopDeptCode(AProductCode);
end;

procedure TdmProductsTreeProxy.GetProductDoc(ProductCode: Integer;
  out DocBranchCode, DocCode: Integer);
begin
  LockedInstance.Value.GetProductDoc(ProductCode, DocBranchCode, DocCode);
end;

procedure TdmProductsTreeProxy.GetProductNameAndDoc(ProductCode: Integer;
  out ProductName: string; out ProductNo: Double; out DocBranchCode,
  DocCode: Integer; out HasDocumentation: Boolean);
begin
  LockedInstance.Value.GetProductNameAndDoc(ProductCode, ProductName, ProductNo, DocBranchCode, DocCode, HasDocumentation);
end;

procedure TdmProductsTreeProxy.GetProductParam(
  AProductCode, AParamCode: Integer;
  out ParamName: string;
  out ParamAbbrev: string;
  out ParamOrderNo: Integer;
  out ValueType: Integer;
  out NomCode: Integer;
  out DocBranchCode: Integer;
  out DocCode: Integer;
  out HasDocItems: Boolean;
  out NomDocBranchCode: Integer;
  out NomDocCode: Integer;
  out NomHasDocItems: Boolean);
begin
  LockedInstance.Value.GetProductParam(
    AProductCode,
    AParamCode,
    ParamName,
    ParamAbbrev,
    ParamOrderNo,
    ValueType,
    NomCode,
    DocBranchCode,
    DocCode,
    HasDocItems,
    NomDocBranchCode,
    NomDocCode,
    NomHasDocItems);
end;

procedure TdmProductsTreeProxy.GetProductPrices(
  ProductCode: Integer;
  PricesDate: TDateTime;
  out EstimatedSecondaryPrice: Double;
  out MarketSecondaryPrice: Double;
  out InvestmentValue2: Double;
  out InvestmentValue3: Double;
  out InvestmentValue4: Double;
  out InvestmentValue5: Double;
  out PrecisionLevelCode: Double);
begin
  LockedInstance.Value.GetProductPrices(
    ProductCode, PricesDate,
    EstimatedSecondaryPrice, MarketSecondaryPrice,
    InvestmentValue2, InvestmentValue3,
    InvestmentValue4, InvestmentValue5, PrecisionLevelCode);
end;

function TdmProductsTreeProxy.GetProductSaleAcquireSinglePrice(ProductCode,
  InCurrencyCode: Integer; ToDate: TDateTime; ClientCode: Integer): OleVariant;
begin
  Result:= LockedInstance.Value.GetProductSaleAcquireSinglePrice(ProductCode, InCurrencyCode, ToDate, ClientCode);
end;

function TdmProductsTreeProxy.ProductBorderRelExists(ProductCode,
  BorderRelTypeCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.ProductBorderRelExists(ProductCode, BorderRelTypeCode);
end;

{ TdmProductsTree }

function TdmProductsTree.GetCommonProductCode(ProductCode: Integer): Integer;
begin
  qryCommonProduct.ParamByName('PRODUCT_CODE').AsInteger:= ProductCode;
  Result:= qryCommonProduct.TempOpen/
    function: Integer begin
      Result:= qryCommonProductCOMMON_PRODUCT_CODE.AsInteger;
    end;
end;

function TdmProductsTree.GetCompanyProductName(CompanyCode,
  ProductCode: Integer): string;
begin
  with qryGetCompanyProductName do
    begin
      ParamByName('COMPANY_CODE').AsInteger:= CompanyCode;
      ParamByName('PRODUCT_CODE').AsInteger:= ProductCode;
      Open;
      try
        Result:= qryGetCompanyProductNameNAME.AsString;
      finally
        Close;
      end;
    end;
end;

function TdmProductsTree.GetProductCode(AProductNo: Double;
  AProductClass: Integer): Integer;
begin
  qryNodeID.ParamByName('PRODUCT_NO').AsFloat:= AProductNo;
  qryNodeID.ParamByName('PRODUCT_CLASS_CODE').AsFloat:= AProductClass;
  qryNodeID.Open;
  try
    Result:= qryNodeIDNODE_ID.AsInteger;
  finally
    qryNodeID.Close;
  end;  { try }
end;

procedure TdmProductsTree.GetProductData(ANodeID: Integer;
  out NodeName: string; out NodeNo: Double;
  out WorkMeasureCode, AccountMeasureCode: Integer; out AccountMeasureCoef: Double;
  out TechMeasureCode: Integer; out TechMeasureCoef: Double;
  out EstimatedSecondaryPrice, MarketSecondaryPrice: Double;
  out IsVatFree, HasDocumentation: Boolean;
  out TransportMeasureCode: Integer;
  out TransportMeasureCoef: Double; out SelfExistentStatusCode: Integer;
  out IsGroup: Boolean; out TransientStatusCode: Integer;
  out WorkdaysToExist: Integer; out ParentNodeID: Integer;
  out IsInactive: Boolean; out IsSelfApproved: Boolean;
  out SaleLeaseSecondaryPrice: Double; out SaleLeaseDateUnitCode: Integer;
  out ProductSpecRequirementCode: Integer; out BOIOrderTypeCode: Integer;
  out CommonStatusCode: Integer; out HasSpec: Boolean);
begin
  with qryNodeData do
    begin
      ParamByName('NODE_ID').AsInteger:= ANodeID;
      Open;
      try
        NodeNo:= qryNodeDataNODE_NO.AsFloat;
        NodeName:= qryNodeDataNODE_NAME.AsString;
        WorkMeasureCode:= qryNodeDataWORK_MEASURE_CODE.AsInteger;
        AccountMeasureCode:= qryNodeDataACCOUNT_MEASURE_CODE.AsInteger;
        AccountMeasureCoef:= qryNodeDataACCOUNT_MEASURE_COEF.AsFloat;
        TechMeasureCode:= qryNodeDataTECH_MEASURE_CODE.AsInteger;
        TechMeasureCoef:= qryNodeDataTECH_MEASURE_COEF.AsFloat;
        EstimatedSecondaryPrice:= qryNodeDataESTIMATED_SECONDARY_PRICE.AsFloat;
        MarketSecondaryPrice:= qryNodeDataMARKET_SECONDARY_PRICE.AsFloat;
        IsVatFree:= qryNodeDataIS_VAT_FREE.AsBoolean;
        HasDocumentation:= qryNodeDataHAS_DOCUMENTATION.AsBoolean;
        TransportMeasureCode:= qryNodeDataTRANSPORT_MEASURE_CODE.AsInteger;
        TransportMeasureCoef:= qryNodeDataTRANSPORT_MEASURE_COEF.AsFloat;
        SelfExistentStatusCode:= qryNodeDataSELF_EXISTENT_STATUS_CODE.AsInteger;
        IsGroup:= (qryNodeDataIS_GROUP.AsInteger <> 0);
        TransientStatusCode:= qryNodeDataTRANSIENT_STATUS_CODE.AsInteger;
        WorkdaysToExist:= qryNodeDataWORKDAYS_TO_EXIST.AsInteger;
        ParentNodeID:= qryNodeDataPARENT_CODE.AsInteger;
        IsInactive:= qryNodeDataIS_INACTIVE.AsBoolean;
        IsSelfApproved:= qryNodeDataIS_SELF_APPROVED.AsBoolean;
        SaleLeaseSecondaryPrice:= qryNodeDataSALE_LEASE_SECONDARY_PRICE.AsFloat;
        SaleLeaseDateUnitCode:= qryNodeDataSALE_LEASE_DATE_UNIT_CODE.AsInteger;
        ProductSpecRequirementCode:= qryNodeDataPRODUCT_SPEC_REQUIREMENT_CODE.AsInteger;
        BOIOrderTypeCode:= qryNodeDataBOI_ORDER_TYPE_CODE.AsInteger;
        CommonStatusCode:= qryNodeDataCOMMON_STATUS_CODE.AsInteger;
        HasSpec:= qryNodeDataHAS_SPEC.AsBoolean;
      finally
        Close;
      end;
    end;
end;

function TdmProductsTree.GetNodeID(ANodeNo: Double): Integer;
begin
  raise Exception.Create('TdmProductsTree.GetNodeID is depricated');
end;

function TdmProductsTree.GetNodeSqlTableAlias: string;
begin
  Result:= 'p';
end;

function TdmProductsTree.GetProductDefaultStore(ProductCode,
  DeptCode: Integer): Integer;
begin
  with qryGetProductDefaultStore do
    begin
      ParamByName('PRODUCT_CODE').AsInteger:= ProductCode;
      ParamByName('DEPT_CODE').AsInteger:= DeptCode;

      Open;
      try
        Result:= qryGetProductDefaultStoreDEFAULT_STORE_CODE.AsInteger;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

function TdmProductsTree.GetProductDeptOptionsTopDeptCode(
  const AProductCode: Integer): Integer;
begin
  qryProductDeptOptionsTopDept.ParamByName('PRODUCT_CODE').AsInteger:= AProductCode;
  Result:=
    qryProductDeptOptionsTopDept.TempOpen/
      function: Integer begin
        Result:= qryProductDeptOptionsTopDeptPDO_TOP_DEPT_CODE.AsInteger;
      end;
end;

procedure TdmProductsTree.GetProductDoc(ProductCode: Integer;
  out DocBranchCode, DocCode: Integer);
begin
  with qryProductDoc do
    begin
      ParamByName('PRODUCT_CODE').AsInteger:= ProductCode;

      Open;
      try
        DocBranchCode:= qryProductDocDOC_BRANCH_CODE.AsInteger;
        DocCode:= qryProductDocDOC_CODE.AsInteger;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

function TdmProductsTree.CheckProductRelation(NewProductCode, OldProductCode: Integer): Integer;
begin
  with qryCheckProductRelation do
    begin
      ParamByName('NEW_PRODUCT_CODE').AsInteger:= NewProductCode;
      ParamByName('OLD_PRODUCT_CODE').AsInteger:= OldProductCode;

      Open;
      try
        if IsEmpty then
          Result:= 0
        else
          begin
            if (qryCheckProductRelationDESCENDANT_PRODUCT_CODE.AsInteger = NewProductCode) then
              Result:= 1
            else
              Result:= 2;
          end;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

procedure TdmProductsTree.GetProductParam(
  AProductCode: Integer;
  AParamCode: Integer;
  out ParamName: string;
  out ParamAbbrev: string;
  out ParamOrderNo: Integer;
  out ValueType: Integer;
  out NomCode: Integer;
  out DocBranchCode: Integer;
  out DocCode: Integer;
  out HasDocItems: Boolean;
  out NomDocBranchCode: Integer;
  out NomDocCode: Integer;
  out NomHasDocItems: Boolean);
begin
  with qryGetProductParam do
    begin
      ParamByName('PRODUCT_CODE').AsInteger:= AProductCode;
      ParamByName('PRODUCT_PARAM_CODE').AsInteger:= AParamCode;
      Open;
      try
        ParamName:= qryGetProductParamPRODUCT_PARAM_NAME.AsString;
        ParamAbbrev:= qryGetProductParamABBREV.AsString;
        ParamOrderNo:= qryGetProductParamPRODUCT_PARAM_ORDER_NO.AsInteger;
        ValueType:= qryGetProductParamVALUE_TYPE.AsInteger;
        NomCode:= qryGetProductParamNOM_CODE.AsInteger;
        DocBranchCode:= qryGetProductParamDOC_BRANCH_CODE.AsInteger;
        DocCode:= qryGetProductParamDOC_CODE.AsInteger;
        HasDocItems:= qryGetProductParamHAS_DOC_ITEMS.AsBoolean;
        NomDocBranchCode:= qryGetProductParamNOM_DOC_BRANCH_CODE.AsInteger;
        NomDocCode:= qryGetProductParamNOM_DOC_CODE.AsInteger;
        NomHasDocItems:= qryGetProductParamNOM_HAS_DOC_ITEMS.AsBoolean;
      finally
        Close;
      end;  { try }
    end; { with }
end;

procedure TdmProductsTree.GetProductPrices(
  ProductCode: Integer;
  PricesDate: TDateTime;
  out EstimatedSecondaryPrice: Double;
  out MarketSecondaryPrice: Double;
  out InvestmentValue2: Double;
  out InvestmentValue3: Double;
  out InvestmentValue4: Double;
  out InvestmentValue5: Double;
  out PrecisionLevelCode: Double);
begin
  with qryDateProductPrices do
    begin
      ParamByName('PRODUCT_CODE').AsInteger:= ProductCode;
      ParamByName('PRICES_DATE').AsDateTime:= PricesDate;

      Open;
      try
        EstimatedSecondaryPrice:= VarToFloatNaN(qryDateProductPricesESTIMATED_SECONDARY_PRICE.AsVariant);
        MarketSecondaryPrice:= VarToFloatNaN(qryDateProductPricesMARKET_SECONDARY_PRICE.AsVariant);
        InvestmentValue2:= VarToFloatNaN(qryDateProductPricesINVESTMENT_VALUE_2.AsVariant);
        InvestmentValue3:= VarToFloatNaN(qryDateProductPricesINVESTMENT_VALUE_3.AsVariant);
        InvestmentValue4:= VarToFloatNaN(qryDateProductPricesINVESTMENT_VALUE_4.AsVariant);
        InvestmentValue5:= VarToFloatNaN(qryDateProductPricesINVESTMENT_VALUE_5.AsVariant);
        PrecisionLevelCode:= VarToFloatNaN(qryDateProductPricesPRECISION_LEVEL_CODE.AsVariant);
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmProductsTree.GetProductSaleAcquireSinglePrice(ProductCode,
  InCurrencyCode: Integer; ToDate: TDateTime; ClientCode: Integer): OleVariant;
begin
  with qrySaleAcquireSinglePrice do
    begin
      ParamByName('PRODUCT_CODE').AsInteger:= ProductCode;
      ParamByName('IN_CURRENCY_CODE').AsInteger:= InCurrencyCode;
      ParamByName('TO_DATE').AsDateTime:= ToDate;
      ParamByName('CLIENT_CODE').Value:= VarToInt(ClientCode);

      Open;
      try
        Result:= qrySaleAcquireSinglePriceSALE_ACQUIRE_SINGLE_PRICE.AsVariant;
      finally
        Close;
      end;
    end;  { with }
end;

function TdmProductsTree.ProductBorderRelExists(ProductCode,
  BorderRelTypeCode: Integer): Boolean;
begin
  with qryProductBorderRelExists do
    begin
      ParamByName('PRODUCT_CODE').AsInteger:= ProductCode;
      ParamByName('BORDER_REL_TYPE_CODE').AsInteger:= BorderRelTypeCode;

      Open;
      try
        Result:= qryProductBorderRelExistsPRODUCT_BORDER_REL_EXISTS.AsBoolean;
      finally
        Close;
      end;
    end;  { with }
end;

procedure TdmProductsTree.GetProductNameAndDoc(ProductCode: Integer;
  out ProductName: string; out ProductNo: Double; out DocBranchCode,
  DocCode: Integer; out HasDocumentation: Boolean);
begin
  with qryNodeData do
    begin
      ParamByName('NODE_ID').AsInteger:= ProductCode;
      Open;
      try
        ProductName:= qryNodeDataNODE_NAME.AsString;
        ProductNo:= qryNodeDataNODE_NO.AsFloat;
        DocBranchCode:= qryNodeDataDOC_BRANCH_CODE.AsInteger;
        DocCode:= qryNodeDataDOC_CODE.AsInteger;
        HasDocumentation:= qryNodeDataHAS_DOCUMENTATION.AsBoolean;
      finally
        Close;
      end;
    end;
end;

initialization
  TdmProductsTreeProxy.FSingleton:= TdmProductsTreeProxy.Create(TdmProductsTree);

finalization
  FreeAndNil(TdmProductsTreeProxy.FSingleton);
end.
