unit dProductionProductsTree;

interface                                                  

uses
  Windows, Messages, SysUtils, Classes, dProductsTree, DBClient,
  AbmesClientDataSet, Provider, DB, AbmesFields,
  AbmesSQLQuery, dPooledDataModule, WideStrings, FMTBcd,
  SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock, JvStringHolder;

type
  TdmProductionProductsTree = class(TdmProductsTree)
    qryNodeChildrenIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    qryPrintTreeChildrenIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    cdsPrintTreeChildrenIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    prvProductionProduct: TDataSetProvider;
    qryProductionProduct: TAbmesSQLQuery;
    qryProductionProductPRODUCT_CODE: TAbmesFloatField;
    qryProductionProductPRODUCT_NAME: TAbmesWideStringField;
    qryProductionProductPRODUCT_NO: TAbmesFloatField;
    qryProductionProductMEASURE_CODE: TAbmesFloatField;
    qryProductionProductMEASURE_ABBREV: TAbmesWideStringField;
    qryProductionProductTECH_MEASURE_CODE: TAbmesFloatField;
    qryProductionProductTECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryProductionProductIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    dsProductionProduct: TDataSource;
    qryProductLocations: TAbmesSQLQuery;
    qryProductLocationsPRODUCT_CODE: TAbmesFloatField;
    qryProductLocationsDEPT_CODE: TAbmesFloatField;
    qryProductLocationsSTORE_CODE: TAbmesFloatField;
    qryProductLocationsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryProductLocationsSTORE_FULL_NAME: TAbmesWideStringField;
    qryProductionProductSELF_EXISTENT_STATUS_CODE: TAbmesFloatField;
    qryProductionProductIS_GROUP: TAbmesFloatField;
    qryProductLocationsIS_INHERITED: TAbmesFloatField;
    qryProductLocationsPRODUCT_LEVEL: TAbmesFloatField;
    qryPrintTreeIS_PRODUCTION_PRODUCT: TAbmesFloatField;
  private
    { Private declarations }
  end;

type
  IdmProductionProductsTreeProxy = interface(IdmProductsTreeProxy)
  end;

type
  TdmProductionProductsTreeProxy = class(TdmProductsTreeProxy, IdmProductionProductsTreeProxy)
  private
    class var FSingleton: TdmProductionProductsTreeProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmProductionProductsTree>;
  strict protected
    property LockedInstance: ISmartLock<TdmProductionProductsTree> read GetLockedInstance;
  public
    class property Singleton: TdmProductionProductsTreeProxy read FSingleton;
  end;

implementation

{$R *.dfm}

{ TdmProductionProductsTreeProxy }

function TdmProductionProductsTreeProxy.GetLockedInstance: ISmartLock<TdmProductionProductsTree>;
begin
  Result:= ISmartLock<TdmProductionProductsTree>(inherited LockedInstance);
end;

initialization
  TdmProductionProductsTreeProxy.FSingleton:= TdmProductionProductsTreeProxy.Create(TdmProductionProductsTree);

finalization
  FreeAndNil(TdmProductionProductsTreeProxy.FSingleton);
end.
