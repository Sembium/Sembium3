unit dProductQuantitiesTree;

interface
                              
uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dProductsTree, AbmesClientDataSet, WideStrings, FMTBcd, SqlExpr,
  AbmesSQLConnection, JvStringHolder, DBXDevartOracle, uSmartLock;

type
  TdmProductQuantitiesTree = class(TdmProductsTree)
    qryNodeChildrenLOCAL_QUANTITY: TAbmesFloatField;
    qryNodeChildrenTOTAL_QUANTITY: TAbmesFloatField;
    qryProductStoreQuantities: TAbmesSQLQuery;
    prvProductStoreQuantities: TDataSetProvider;
    qryProductStoreQuantitiesSTORE_CODE: TAbmesFloatField;
    qryProductStoreQuantitiesTOTAL_QUANTITY: TAbmesFloatField;
    qryPrintTreeLOCAL_QUANTITY: TAbmesFloatField;
    qryPrintTreeTOTAL_QUANTITY: TAbmesFloatField;
    qryPrintTreeChildrenLOCAL_QUANTITY: TAbmesFloatField;
    qryPrintTreeChildrenTOTAL_QUANTITY: TAbmesFloatField;
    qryPrintTreeChildrenMEASURE_ABBREV: TAbmesWideStringField;
    qryPrintTreeMEASURE_ABBREV: TAbmesWideStringField;
    qryNodeChildrenMEASURE_ABBREV: TAbmesWideStringField;
    cdsPrintTreeChildrenMEASURE_ABBREV: TAbmesWideStringField;
    cdsPrintTreeChildrenLOCAL_QUANTITY: TAbmesFloatField;
    cdsPrintTreeChildrenTOTAL_QUANTITY: TAbmesFloatField;
    qryNodeChildrenLOCAL_TOTAL_PRICE: TAbmesFloatField;
    qryNodeChildrenTOTAL_TOTAL_PRICE: TAbmesFloatField;
    qryPrintTreeLOCAL_TOTAL_PRICE: TAbmesFloatField;
    qryPrintTreeTOTAL_TOTAL_PRICE: TAbmesFloatField;
    qryPrintTreeChildrenLOCAL_TOTAL_PRICE: TAbmesFloatField;
    qryPrintTreeChildrenTOTAL_TOTAL_PRICE: TAbmesFloatField;
    cdsPrintTreeChildrenLOCAL_TOTAL_PRICE: TAbmesFloatField;
    cdsPrintTreeChildrenTOTAL_TOTAL_PRICE: TAbmesFloatField;
    qryNodeChildrenLOCAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryNodeChildrenTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryNodeChildrenACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryPrintTreeLOCAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryPrintTreeTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryPrintTreeChildrenLOCAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryPrintTreeChildrenTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsPrintTreeChildrenLOCAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsPrintTreeChildrenTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryProductStoreQuantitiesTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryPrintTreeACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryPrintTreeChildrenACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsPrintTreeChildrenACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryNodeChildrenLOCAL_MARKET_TOTAL_PRICE: TAbmesFloatField;
    qryNodeChildrenTOTAL_MARKET_TOTAL_PRICE: TAbmesFloatField;
    qryNodeChildrenPARTNER_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    qryNodeChildrenBASE_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    qryNodeChildrenPARTNER_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField;
    qryNodeChildrenBASE_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField;
    qryPrintTreeChildrenLOCAL_MARKET_TOTAL_PRICE: TAbmesFloatField;
    qryPrintTreeChildrenTOTAL_MARKET_TOTAL_PRICE: TAbmesFloatField;
    qryPrintTreeChildrenPARTNER_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    qryPrintTreeChildrenBASE_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    qryPrintTreeChildrenPARTNER_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField;
    qryPrintTreeChildrenBASE_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField;
    cdsPrintTreeChildrenLOCAL_MARKET_TOTAL_PRICE: TAbmesFloatField;
    cdsPrintTreeChildrenTOTAL_MARKET_TOTAL_PRICE: TAbmesFloatField;
    cdsPrintTreeChildrenPARTNER_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    cdsPrintTreeChildrenBASE_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    cdsPrintTreeChildrenPARTNER_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField;
    cdsPrintTreeChildrenBASE_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField;
    qryPrintTreeLOCAL_MARKET_TOTAL_PRICE: TAbmesFloatField;
    qryPrintTreeTOTAL_MARKET_TOTAL_PRICE: TAbmesFloatField;
    qryPrintTreePARTNER_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    qryPrintTreeBASE_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    qryPrintTreePARTNER_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField;
    qryPrintTreeBASE_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField;
    qryProductStoreQuantitiesSTORE_FULL_NAME: TAbmesWideStringField;
    qryProductStoreQuantitiesTOTAL_PRICE: TAbmesFloatField;
    qryProductStoreQuantitiesTOTAL_MARKET_PRICE: TAbmesFloatField;
    qryPrintTreeChildrenNODE_PARAM_NAMES: TAbmesWideStringField;
    qryPrintTreeChildrenNODE_PARAM_VALUES: TAbmesWideStringField;
    cdsPrintTreeChildrenNODE_PARAM_NAMES: TAbmesWideStringField;
    cdsPrintTreeChildrenNODE_PARAM_VALUES: TAbmesWideStringField;
    qryPrintTreeNODE_PARAM_NAMES: TAbmesWideStringField;
    qryPrintTreeNODE_PARAM_VALUES: TAbmesWideStringField;
    procedure cdsPrintTreeChildrenBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  end;

type
  IdmProductQuantitiesTreeProxy = interface(IdmProductsTreeProxy)
  end;

type
  TdmProductQuantitiesTreeProxy = class(TdmProductsTreeProxy, IdmProductQuantitiesTreeProxy)
  private
    class var FSingleton: TdmProductQuantitiesTreeProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmProductQuantitiesTree>;
  strict protected
    property LockedInstance: ISmartLock<TdmProductQuantitiesTree> read GetLockedInstance;
  public
    class property Singleton: TdmProductQuantitiesTreeProxy read FSingleton;
  end;

implementation

{$R *.DFM}

{ TdmProductQuantitiesTreeProxy }

function TdmProductQuantitiesTreeProxy.GetLockedInstance: ISmartLock<TdmProductQuantitiesTree>;
begin
  Result:= ISmartLock<TdmProductQuantitiesTree>(inherited LockedInstance);
end;

{ TdmProductQuantitiesTree }

procedure TdmProductQuantitiesTree.cdsPrintTreeChildrenBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsPrintTreeChildren.Params.ParamByName('LOCAL_DEPT_CODE').AsInteger:=
    qryPrintTree.ParamByName('LOCAL_DEPT_CODE').AsInteger;
  cdsPrintTreeChildren.Params.ParamByName('AGGREGATE_VALUES').AsInteger:=
    qryPrintTree.ParamByName('AGGREGATE_VALUES').AsInteger;
end;

initialization
  TdmProductQuantitiesTreeProxy.FSingleton:= TdmProductQuantitiesTreeProxy.Create(TdmProductQuantitiesTree);

finalization
  FreeAndNil(TdmProductQuantitiesTreeProxy.FSingleton);
end.
