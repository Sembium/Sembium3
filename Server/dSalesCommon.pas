unit dSalesCommon;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  DBXDevartOracle, uSmartLock;

type
  TdmSalesCommon = class(TDBPooledDataModule)
    prvSaleTypes: TDataSetProvider;
    qrySaleTypes: TAbmesSQLQuery;
    qrySaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    qrySaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    prvShipmentTypes: TDataSetProvider;
    qryShipmentTypes: TAbmesSQLQuery;
    qryShipmentTypesSHIPMENT_TYPE_CODE: TAbmesFloatField;
    qryShipmentTypesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    qryShipmentTypesSHIPMENT_TYPE_NAME: TAbmesWideStringField;
    qryShipmentTypesNOTES: TAbmesWideStringField;
    prvSaleOrderTypes: TDataSetProvider;
    qrySaleOrderTypes: TAbmesSQLQuery;
    qrySaleOrderTypesSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySaleOrderTypesSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleOrderTypesSALE_ORDER_TYPE_NAME: TAbmesWideStringField;
    qrySaleTypesEXPORT_NO: TAbmesFloatField;
    qryMaxSaleTypeCode: TAbmesSQLQuery;
    qryMaxSaleTypeCodeMAX_SALE_TYPE_CODE: TAbmesFloatField;
    qrySaleTypesEXPORT_NO_2: TAbmesFloatField;
    qryProductionOrderTypes: TAbmesSQLQuery;
    prvProductionOrderTypes: TDataSetProvider;
    qryProductionOrderTypesPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    qryProductionOrderTypesPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryProductionOrderTypesPRODUCTION_ORDER_TYPE_NAME: TAbmesWideStringField;
    qryProductionOrderTypesPRODUCTION_ORDER_TYPE_TEXT: TAbmesWideStringField;
    qryProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    qryProductionOrderTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField;
    qryProductionOrderTypesPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField;
    qryProductionOrderTypesPROD_ORDER_BASE_ROLE_NO: TAbmesFloatField;
    qryProductionOrderTypesIS_REVERSIBLE: TAbmesFloatField;
    prvSaleDealTypes: TDataSetProvider;
    qrySaleDealTypes: TAbmesSQLQuery;
    qrySaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    qrySaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField;
    qrySaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    procedure prvSaleTypesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
  private
    { Private declarations }
  end;

type
  IdmSalesCommonProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmSalesCommonProxy = class(TDBPooledDataModuleProxy, IdmSalesCommonProxy)
  private
    class var FSingleton: TdmSalesCommonProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmSalesCommon>;
  strict protected
    property LockedInstance: ISmartLock<TdmSalesCommon> read GetLockedInstance;
  public
    class property Singleton: TdmSalesCommonProxy read FSingleton;
  end;

implementation

{$R *.DFM}

{ TdmSalesCommonProxy }

function TdmSalesCommonProxy.GetLockedInstance: ISmartLock<TdmSalesCommon>;
begin
  Result:= ISmartLock<TdmSalesCommon>(inherited LockedInstance);
end;

{ TdmSalesCommon }

procedure TdmSalesCommon.prvSaleTypesBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukInsert) then
    begin
      qryMaxSaleTypeCode.Open;
      try
        DeltaDS.FieldByName('SALE_TYPE_CODE').NewValue:=
          qryMaxSaleTypeCodeMAX_SALE_TYPE_CODE.AsInteger + 1;
      finally
        qryMaxSaleTypeCode.Close;
      end;   { try }
    end;   { if }
end;

initialization
  TdmSalesCommonProxy.FSingleton:= TdmSalesCommonProxy.Create(TdmSalesCommon);

finalization
  FreeAndNil(TdmSalesCommonProxy.FSingleton);
end.
