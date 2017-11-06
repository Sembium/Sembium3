unit dGroupSales;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  DBXOracle, uAspectTypes, DBXDevartOracle, uSmartLock;

type
  TdmGroupSales = class(TDBPooledDataModule)
    qrySaleRequestGroup: TAbmesSQLQuery;
    prvSaleRequestGroup: TDataSetProvider;
    dsSaleRequestGroup: TDataSource;
    qrySaleRequestGroupLines: TAbmesSQLQuery;
    qrySaleRequestGroupREQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupREQUEST_NO: TAbmesFloatField;
    qrySaleRequestGroupSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    qrySaleRequestGroupCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupCREATE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupCREATE_TIME: TAbmesSQLTimeStampField;
    qrySaleRequestGroupCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupCHANGE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupCHANGE_TIME: TAbmesSQLTimeStampField;
    qrySaleRequestGroupSG_PRIORITY_CODE: TAbmesFloatField;
    qrySaleRequestGroupSG_SALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupSG_CLIENT_COMPANY_CODE: TAbmesFloatField;
    qrySaleRequestGroupSG_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupSG_SALE_GROUP_NO: TAbmesFloatField;
    qrySaleRequestGroupS_CLIENT_COMPANY_CODE: TAbmesFloatField;
    qrySaleRequestGroupS_REQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupS_REQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupS_CL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupS_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupS_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupSSH_SHIPMENT_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupSSH_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupSSH_INVOICE_NO: TAbmesFloatField;
    qrySaleRequestGroupSSH_INVOICE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupSSH_INVOICE_CURRENCY_CODE: TAbmesFloatField;
    qrySaleRequestGroupSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSALE_OBJECT_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesREQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesREQUEST_NO: TAbmesFloatField;
    qrySaleRequestGroupLinesREQUEST_LINE_NO: TAbmesFloatField;
    qrySaleRequestGroupLinesCLIENT_COMPANY_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesPRODUCT_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesPRODUCT_NAME: TAbmesWideStringField;
    qrySaleRequestGroupLinesPRODUCT_NO: TAbmesFloatField;
    qrySaleRequestGroupLinesQUANTITY: TAbmesFloatField;
    qrySaleRequestGroupLinesCL_OFFER_QUANTITY: TAbmesFloatField;
    qrySaleRequestGroupLinesCURRENCY_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSINGLE_PRICE: TAbmesFloatField;
    qrySaleRequestGroupLinesRECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesSALE_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSALE_NO: TAbmesFloatField;
    qrySaleRequestGroupLinesSALE_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSHIPMENT_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesSHIPMENT_STORE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesANNUL_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesANNUL_TIME: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesFINISH_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesFINISH_TIME: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesCREATE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesCREATE_TIME: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesCHANGE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesCHANGE_TIME: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesMARKET_SINGLE_PRICE: TAbmesFloatField;
    qrySaleRequestGroupLinesDISCOUNT_PERCENT: TAbmesFloatField;
    qrySaleRequestGroupLinesCL_OFFER_QUANTITY_CHG: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesQUANTITY_CHG: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesRECEIVE_DATE_CHG: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesSSH_SALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSSH_SALE_OBJECT_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSSH_PLAN_QUANTITY: TAbmesFloatField;
    qrySaleRequestGroupLinesSSH_QUANTITY: TAbmesFloatField;
    qrySaleRequestGroupLinesSSH_SHIPMENT_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesSSH_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesSSH_INVOICE_NO: TAbmesFloatField;
    qrySaleRequestGroupLinesSSH_INVOICE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesSSH_INVOICE_CURRENCY_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSSH_INVOICE_SINGLE_PRICE: TAbmesFloatField;
    qrySaleRequestGroupS_RECEIVE_DATE_CHG: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesRECORD_CHANGED: TAbmesFloatField;
    qryInsSaleShipment: TAbmesSQLQuery;
    qryUpdSaleShipment: TAbmesSQLQuery;
    qryInsSaleGroup: TAbmesSQLQuery;
    qryUpdSaleGroup: TAbmesSQLQuery;
    qryGetMaxSaleGroupNo: TAbmesSQLQuery;
    qryGetMaxSaleGroupNoMAX_SALE_GROUP_NO: TAbmesFloatField;
    qryGetClientPriority: TAbmesSQLQuery;
    qryGetClientPriorityPRIORITY_CODE: TAbmesFloatField;
    qryGetMaxSaleRequestNo: TAbmesSQLQuery;
    qryGetMaxSaleRequestNoMAX_REQUEST_NO: TAbmesFloatField;
    qryGetMaxSaleNo: TAbmesSQLQuery;
    qryGetMaxSaleNoMAX_SALE_NO: TAbmesFloatField;
    qrySaleRequestGroupANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupANNUL_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupANNUL_TIME: TAbmesSQLTimeStampField;
    qrySaleRequestGroupFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupFINISH_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupFINISH_TIME: TAbmesSQLTimeStampField;
    qrySaleRequestGroupS_CURRENCY_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesPRODUCT_MEASURE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qrySaleRequestGroupS_SALE_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qrySaleRequestGroupCREATE_SALE_GROUP: TAbmesFloatField;
    qrySaleRequestGroupLinesTOTAL_PRICE: TAbmesFloatField;
    qryUpdSales: TAbmesSQLQuery;
    qrySaleRequestGroupLinesCREATE_SALE: TAbmesFloatField;
    qryInsPlannedStoreDeal: TAbmesSQLQuery;
    qryUpdPlannedStoreDeal: TAbmesSQLQuery;
    qryGetMaxStoreRequestCode: TAbmesSQLQuery;
    qryGetMaxStoreRequestCodeMAX_STORE_REQUEST_CODE: TAbmesFloatField;
    qryInsStoreRequest: TAbmesSQLQuery;
    qrySaleRequestGroupSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupSTORE_REQUEST_CODE: TAbmesFloatField;
    qryInsStoreRequestItem: TAbmesSQLQuery;
    qryUpdStoreRequest: TAbmesSQLQuery;
    qryUpdStoreRequestItems: TAbmesSQLQuery;
    qryInsStoreRequestItems: TAbmesSQLQuery;
    qryGetSaleGroupNonAnnuledSaleCount: TAbmesSQLQuery;
    qryGetSaleGroupNonAnnuledSaleCountSALE_COUNT: TAbmesFloatField;
    qrySaleRequestGroupLinesQUANTITY_CHG_X: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesCL_OFFER_QUANTITY_CHG_X: TAbmesSQLTimeStampField;
    qryDelStoreRequestItemsForAnnuledPlannedStoreDeals: TAbmesSQLQuery;
    qrySaleRequestGroupLinesQUANTITY_TAKEN_FROM_STORE: TAbmesFloatField;
    qrySaleRequestGroupSALE_GROUP_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qrySaleRequestGroupLinesCL_OFFER_SINGLE_PRICE: TAbmesFloatField;
    qrySaleRequestGroupLinesSTORE_REQ_COMPLETED_QUANTITY: TAbmesFloatField;
    qrySaleRequestGroupLinesANNUL_MULTIPLIER: TAbmesFloatField;
    qrySaleRequestGroupS_CL_OFFER_RECEIVE_DATEC: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesCL_OFFER_RECEIVE_DATE_CH: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesSSH_SHIPMENT_OBJ_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSSH_SHIPMENT_OBJ_CODE: TAbmesFloatField;
    qrySaleRequestGroupINV_INVOICE_NO: TAbmesFloatField;
    qrySaleRequestGroupINV_INVOICE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupINVOICE_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupINVOICE_CODE: TAbmesFloatField;
    qryGetMaxSaleGroupCode: TAbmesSQLQuery;
    qryGetMaxSaleGroupCodeMAX_SALE_GROUP_CODE: TAbmesFloatField;
    qrySaleRequestGroupDOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupDOC_CODE: TAbmesFloatField;
    qrySaleRequestGroupS_CLIENT_COMPANY_NAME: TAbmesWideStringField;
    qrySaleRequestGroupS_SALE_DEAL_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupS_CL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupS_RETURN_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesCL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesRETURN_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesCL_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qrySaleRequestGroupLinesCL_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qrySaleRequestGroupLinesLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField;
    qrySaleRequestGroupLinesSSH_LEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField;
    qrySaleRequestGroupLinesSSH_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qrySaleRequestGroupLinesCLIENT_REQUEST_NO: TAbmesWideStringField;
    qrySaleRequestGroupLinesDOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesDOC_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesHAS_DOC_ITEMS: TAbmesFloatField;
    qrySaleRequestGroupLinesCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    qrySaleRequestGroupLinesQUANTITY_RETURNED_TO_STORE: TAbmesFloatField;
    qrySaleRequestGroupS_IMPORT_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupSSH_IMPORT_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesSSH_IMPORT_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesSSH_IMPORT_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupSSH_IMPORT_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesIMPORT_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField;
    qrySaleRequestGroupLinesPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qrySaleRequestGroupHAS_DOC_ITEMS: TAbmesFloatField;
    qrySaleRequestGroupSTREAM_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupIS_ACTIVATED_BY_CLIENT: TAbmesFloatField;
    qrySaleRequestGroupLinesIS_VENDOR_TRANSPORT: TAbmesFloatField;
    qrySaleRequestGroupPRODUCT_CLASS_CODE: TAbmesFloatField;
    qrySaleRequestGroupFIN_ORDER_CODE: TAbmesFloatField;
    qrySaleRequestGroupFO_EXEC_DEPT_CODE: TAbmesFloatField;
    qrySaleRequestGroupFO_PRIORITY_CODE: TAbmesFloatField;
    qrySaleRequestGroupFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    qrySaleRequestGroupSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesASPECT_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupS_SHIPMENT_DAYS: TAbmesFloatField;
    qrySaleRequestGroupLinesSHIPMENT_DAYS: TAbmesFloatField;
    qrySaleRequestGroupLinesRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    qrySaleRequestGroupS_RECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesCUSTOMHOUSE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSHIPMENT_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupS_CUSTOMHOUSE_CODE: TAbmesFloatField;
    qrySaleRequestGroupS_SHIPMENT_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupS_IS_VENDOR_TRANSPORT: TAbmesFloatField;
    qrySaleRequestGroupSSH_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupLinesSSH_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupS_MANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesMANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    qryGroupSaleDefaults: TAbmesSQLQuery;
    qryGroupSaleDefaultsCURRENCY_CODE: TAbmesFloatField;
    qryGroupSaleDefaultsSTORE_CODE: TAbmesFloatField;
    qryGroupSaleDefaultsTRANSPORT_DURATION_DAYS: TAbmesFloatField;
    qryGroupSaleDefaultsMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    qryGroupSaleDefaultsSHIPMENT_TYPE_CODE: TAbmesFloatField;
    qryGroupSaleDefaultsIS_PARTNER_TRANSPORT: TAbmesFloatField;
    qryGroupSaleDefaultsCUSTOMHOUSE_CODE: TAbmesFloatField;
    qryGroupSaleDefaultsPARTNER_OFFICE_CODE: TAbmesFloatField;
    prvGroupSaleDefaults: TDataSetProvider;
    qryGroupSaleLineDefaults: TAbmesSQLQuery;
    prvGroupSaleLineDefaults: TDataSetProvider;
    qryGroupSaleLineDefaultsPRICE: TAbmesFloatField;
    qryGroupSaleLineDefaultsPRICE_MODIFIER: TAbmesFloatField;
    qrySaleRequestGroupFO_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupFO_CLOSE_REQUESTED: TAbmesFloatField;
    qryGroupSaleLineDefaultsCURRENCY_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesPARTNER_CODE: TAbmesFloatField;
    qrySaleRequestGroupFO_STATUS_CODE: TAbmesFloatField;
    qrySaleRequestGroupS_CLIENT_COMPANY_NO: TAbmesFloatField;
    qrySaleRequestGroupFO_PARTNER_CODE: TAbmesFloatField;
    qrySaleRequestGroupSALE_GROUP_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupSALE_GROUP_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSSH_DOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupLinesSSH_DOC_CODE: TAbmesFloatField;
    qrySaleRequestGroupINVOICE_STATE_CODE: TAbmesFloatField;
    qrySaleRequestGroupMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    qrySaleRequestGroupSSH_IS_PROFORM_INVOICE: TAbmesFloatField;
    qrySaleRequestGroupINV_IS_PROFORM_INVOICE: TAbmesFloatField;
    qrySaleRequestGroupLinesSSH_IS_PROFORM_INVOICE: TAbmesFloatField;
    qrySaleRequestGroupNOTES: TAbmesWideStringField;
    procedure prvSaleRequestGroupBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvSaleRequestGroupUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure prvSaleRequestGroupAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvSaleRequestGroupGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvSaleRequestGroupAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvSaleRequestGroupBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qrySaleRequestGroupAfterProviderStartTransaction(
      DataSet: TDataSet);
  private
    FUpdateDS: TDataSet;
    FNewRequestBranchCode: Integer;
    FNewRequestNo: Integer;
    FNewSaleGroupObjectIdentifier: string;
    FDocsDelta: Variant;
    FTotalPrice: Real;
    FNewFinOrderCode: Integer;
    function GetClientPriority(ClientCompanyCode: Integer): Integer;
    function GetSaleGroupNonAnnuledSaleCount(SaleGroupObjBranchCode, SaleGroupObjCode: Integer): Integer;
    function GetNewSaleGroupNo(SaleOrderTypeCode,
      ClientCompanyCode: Integer; ReceiveDate: TDateTime): Integer;
    function GetNewSaleGroupCode(SaleGroupBranchCode: Integer): Integer;
    function GetNewStoreRequestCode(StoreRequestBranchCode: Integer): Integer;
  protected
    function GetNewSaleRequestNo(RequestBranchCode: Integer): Integer;
    function GetNewSaleNo(SaleBranchCode: Integer): Integer;
  end;

type
  IdmGroupSalesProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmGroupSalesProxy = class(TDBPooledDataModuleProxy, IdmGroupSalesProxy)
  private
    class var FSingleton: TdmGroupSalesProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmGroupSales>;
  strict protected
    property LockedInstance: ISmartLock<TdmGroupSales> read GetLockedInstance;
  public
    class property Singleton: TdmGroupSalesProxy read FSingleton;

    function GetNewSaleRequestNo(RequestBranchCode: Integer): Integer;
    function GetNewSaleNo(SaleBranchCode: Integer): Integer;
  end;

implementation

uses
  Variants, uUtils, uSvrUtils, uProcesses, uDealTypes, uGroupSales,
  uSaleChangeTypes, uProcessObjectIdentifierFormats, uDBPooledDataModuleHelper,
  uSaleDealTypes, uStreamTypes;

{$R *.DFM}

{ TdmGroupSalesProxy }

function TdmGroupSalesProxy.GetLockedInstance: ISmartLock<TdmGroupSales>;
begin
  Result:= ISmartLock<TdmGroupSales>(inherited LockedInstance);
end;

function TdmGroupSalesProxy.GetNewSaleNo(SaleBranchCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewSaleNo(SaleBranchCode);
end;

function TdmGroupSalesProxy.GetNewSaleRequestNo(RequestBranchCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewSaleRequestNo(RequestBranchCode);
end;

{ TdmGroupSales }

function TdmGroupSales.GetClientPriority(
  ClientCompanyCode: Integer): Integer;
begin
  with qryGetClientPriority do
    begin
      ParamByName('CLIENT_COMPANY_CODE').AsInteger:=
        ClientCompanyCode;
      Open;
      try
        Result:= qryGetClientPriorityPRIORITY_CODE.AsInteger;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmGroupSales.GetSaleGroupNonAnnuledSaleCount(SaleGroupObjBranchCode,
  SaleGroupObjCode: Integer): Integer;
begin
  with qryGetSaleGroupNonAnnuledSaleCount do
    begin
      ParamByName('SALE_GROUP_OBJECT_BRANCH_CODE').AsInteger:=
        SaleGroupObjBranchCode;
      ParamByName('SALE_GROUP_OBJECT_CODE').AsInteger:=
        SaleGroupObjCode;
      Open;
      try
        Result:= qryGetSaleGroupNonAnnuledSaleCountSALE_COUNT.AsInteger;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmGroupSales.GetNewSaleRequestNo(
  RequestBranchCode: Integer): Integer;
begin
  with qryGetMaxSaleRequestNo do
    begin
      ParamByName('REQUEST_BRANCH_CODE').AsInteger:= RequestBranchCode;
      Open;
      try
        Result:= qryGetMaxSaleRequestNoMAX_REQUEST_NO.AsInteger + 1;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmGroupSales.GetNewSaleNo(SaleBranchCode: Integer): Integer;
begin
  with qryGetMaxSaleNo do
    begin
      ParamByName('SALE_BRANCH_CODE').AsInteger:= SaleBranchCode;
      Open;
      try
        Result:= qryGetMaxSaleNoMAX_SALE_NO.AsInteger + 1;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmGroupSales.GetNewSaleGroupNo(SaleOrderTypeCode, ClientCompanyCode: Integer;
  ReceiveDate: TDateTime): Integer;
begin
  with qryGetMaxSaleGroupNo do
    begin
      ParamByName('SALE_ORDER_TYPE_CODE').AsInteger:= SaleOrderTypeCode;
      ParamByName('CLIENT_COMPANY_CODE').AsInteger:= ClientCompanyCode;
      ParamByName('RECEIVE_DATE').AsDateTime:= ReceiveDate;
      Open;
      try
        Result:= qryGetMaxSaleGroupNoMAX_SALE_GROUP_NO.AsInteger + 1;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmGroupSales.GetNewSaleGroupCode(
  SaleGroupBranchCode: Integer): Integer;
begin
  with qryGetMaxSaleGroupCode do
    begin
      ParamByName('SALE_GROUP_BRANCH_CODE').AsInteger:= SaleGroupBranchCode;
      Open;
      try
        Result:= qryGetMaxSaleGroupCodeMAX_SALE_GROUP_CODE.AsInteger + 1;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmGroupSales.GetNewStoreRequestCode(
  StoreRequestBranchCode: Integer): Integer;
begin
  with qryGetMaxStoreRequestCode do
    begin
      ParamByName('STORE_REQUEST_BRANCH_CODE').AsInteger:= StoreRequestBranchCode;
      Open;
      try
        Result:= qryGetMaxStoreRequestCodeMAX_STORE_REQUEST_CODE.AsInteger + 1;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

procedure TdmGroupSales.prvSaleRequestGroupBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
  TryCount: Integer;
  StoreRequesTQuery: TAbmesSQLQuery;
  SaleCount: Integer;
  MasterUpdateKind: TUpdateKind;
  BranchName: string;
  BranchNo: Double;
begin
  inherited;
  FUpdateDS:= SourceDS;

  with DeltaDS do
    begin
      if (SourceDS = qrySaleRequestGroup) then
        begin
          if (UpdateKind = ukInsert) then
            begin
              FNewRequestBranchCode:=
                GetFieldValue(FieldByName('REQUEST_BRANCH_CODE'));

              FNewRequestNo:=
                GetNewSaleRequestNo(FNewRequestBranchCode);

              FieldByName('REQUEST_NO').NewValue:=
                FNewRequestNo;

              FieldByName('STREAM_TYPE_CODE').NewValue:= stStraight;

              FieldByName('CREATE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
              FieldByName('CREATE_DATE').NewValue:= ContextDate;
              FieldByName('CREATE_TIME').NewValue:= ContextTime;
            end;  { if }

          FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
          FieldByName('CHANGE_DATE').NewValue:= ContextDate;
          FieldByName('CHANGE_TIME').NewValue:= ContextTime;

          // SALE_GROUP stuff follows

          if (VarToInt(FieldByName('CREATE_SALE_GROUP').NewValue) <> 0) then
            begin  // insert sale group object
              SvrCommon.SetProcessObjectKey(
                DeltaDS,
                'SALE_GROUP_OBJECT_BRANCH_CODE',
                'SALE_GROUP_OBJECT_CODE',
                pocSaleGroup);

              FieldByName('SG_PRIORITY_CODE').NewValue:=
                GetClientPriority(GetFieldValue(FieldByName('S_CLIENT_COMPANY_CODE')));

              FieldByName('SG_SALE_ORDER_TYPE_CODE').NewValue:=
                GetFieldValue(FieldByName('SALE_ORDER_TYPE_CODE'));
              FieldByName('SG_SALE_ORDER_TYPE_CODE').NewValue:=
                GetFieldValue(FieldByName('SALE_ORDER_TYPE_CODE'));
              FieldByName('SG_CLIENT_COMPANY_CODE').NewValue:=
                GetFieldValue(FieldByName('S_CLIENT_COMPANY_CODE'));
              FieldByName('SG_RECEIVE_DATE').NewValue:=
                GetFieldValue(FieldByName('S_RECEIVE_DATE'));

              qryInsSaleGroup.ParamByName('SALE_GROUP_OBJECT_BRANCH_CODE').Value:=
                GetFieldValue(FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE'));
              qryInsSaleGroup.ParamByName('SALE_GROUP_OBJECT_CODE').Value:=
                GetFieldValue(FieldByName('SALE_GROUP_OBJECT_CODE'));
              qryInsSaleGroup.ParamByName('PRIORITY_CODE').Value:=
                GetFieldValue(FieldByName('SG_PRIORITY_CODE'));
              qryInsSaleGroup.ParamByName('SALE_ORDER_TYPE_CODE').Value:=
                GetFieldValue(FieldByName('SG_SALE_ORDER_TYPE_CODE'));
              qryInsSaleGroup.ParamByName('CLIENT_COMPANY_CODE').Value:=
                GetFieldValue(FieldByName('SG_CLIENT_COMPANY_CODE'));
              qryInsSaleGroup.ParamByName('RECEIVE_DATE').Value:=
                GetFieldValue(FieldByName('SG_RECEIVE_DATE'));

              TryCount:= MaxApplyRetryCount;
              while True do
                try
                  FieldByName('SG_SALE_GROUP_NO').NewValue:=
                    GetNewSaleGroupNo(
                      GetFieldValue(FieldByName('SALE_ORDER_TYPE_CODE')),
                      GetFieldValue(FieldByName('S_CLIENT_COMPANY_CODE')),
                      GetFieldValue(FieldByName('S_RECEIVE_DATE')));

                  qryInsSaleGroup.ParamByName('SALE_GROUP_NO').Value:=
                    GetFieldValue(FieldByName('SG_SALE_GROUP_NO'));

                  qryInsSaleGroup.ParamByName('SALE_GROUP_BRANCH_CODE').Value:=
                    GetFieldValue(FieldByName('REQUEST_BRANCH_CODE'));
                  qryInsSaleGroup.ParamByName('SALE_GROUP_CODE').AsInteger:=
                    GetNewSaleGroupCode(GetFieldValue(FieldByName('REQUEST_BRANCH_CODE')));

                  qryInsSaleGroup.ExecSQL;
                  Assert(qryInsSaleGroup.RowsAffected = 1,
                    'qryInsSaleGroup.RowsAffected should be 1. Actual: ' + IntToStr(qryInsSaleGroup.RowsAffected));

                  Break;
                except
                  if (TryCount > 0) then
                    Dec(TryCount)
                  else
                    raise;
                end;  { try }

              SvrDeptsTree.GetNodeData(
                qryInsSaleGroup.ParamByName('SALE_GROUP_BRANCH_CODE').AsInteger,
                BranchName,
                BranchNo);

              FieldByName('SALE_GROUP_OBJECT_IDENTIFIER').NewValue:=
                Format(
                  poifSaleGroup,
                  [ BranchNo,
                    qryInsSaleGroup.ParamByName('SALE_GROUP_CODE').AsInteger]);

              SvrCommon.UpdateProcessObjectIdentifier(
                VarToInt(FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE').NewValue),
                VarToInt(FieldByName('SALE_GROUP_OBJECT_CODE').NewValue),
                VarToStr(FieldByName('SALE_GROUP_OBJECT_IDENTIFIER').NewValue) );

              FNewSaleGroupObjectIdentifier:=
                VarToStr(FieldByName('SALE_GROUP_OBJECT_IDENTIFIER').NewValue);

              if (UpdateKind = ukModify) then
                begin
                  SetParams(qryUpdSales.Params, DeltaDS);
                  qryUpdSales.ExecSQL;
                end;  { if }
            end;  { if }

          if (VarToInt(FieldByName('CREATE_SALE_GROUP').NewValue) = 0) and
             not VarIsNull(GetFieldValue(FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE'))) and
             not VarIsNull(GetFieldValue(FieldByName('SALE_GROUP_OBJECT_CODE'))) then
            begin  // update sale group object
              FieldByName('SG_SALE_ORDER_TYPE_CODE').NewValue:=
                GetFieldValue(FieldByName('SALE_ORDER_TYPE_CODE'));
              FieldByName('SG_SALE_ORDER_TYPE_CODE').NewValue:=
                GetFieldValue(FieldByName('SALE_ORDER_TYPE_CODE'));
              FieldByName('SG_CLIENT_COMPANY_CODE').NewValue:=
                GetFieldValue(FieldByName('S_CLIENT_COMPANY_CODE'));
              FieldByName('SG_RECEIVE_DATE').NewValue:=
                GetFieldValue(FieldByName('S_RECEIVE_DATE'));

              qryUpdSaleGroup.ParamByName('SALE_GROUP_OBJECT_BRANCH_CODE').Value:=
                GetFieldValue(FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE'));
              qryUpdSaleGroup.ParamByName('SALE_GROUP_OBJECT_CODE').Value:=
                GetFieldValue(FieldByName('SALE_GROUP_OBJECT_CODE'));
              qryUpdSaleGroup.ParamByName('PRIORITY_CODE').Value:=
                GetFieldValue(FieldByName('SG_PRIORITY_CODE'));
              qryUpdSaleGroup.ParamByName('CLIENT_COMPANY_CODE').Value:=
                GetFieldValue(FieldByName('SG_CLIENT_COMPANY_CODE'));
              qryUpdSaleGroup.ParamByName('RECEIVE_DATE').Value:=
                GetFieldValue(FieldByName('SG_RECEIVE_DATE'));

              TryCount:= MaxApplyRetryCount;
              while True do
                try
                  if not VarIsEmpty(FieldByName('S_CLIENT_COMPANY_CODE').NewValue) or
                     not VarIsEmpty(FieldByName('S_RECEIVE_DATE').NewValue) then
                    begin
                      FieldByName('SG_SALE_GROUP_NO').NewValue:=
                        GetNewSaleGroupNo(
                          GetFieldValue(FieldByName('SALE_ORDER_TYPE_CODE')),
                          GetFieldValue(FieldByName('S_CLIENT_COMPANY_CODE')),
                          GetFieldValue(FieldByName('S_RECEIVE_DATE')));
                    end;  { if }

                  qryUpdSaleGroup.ParamByName('SALE_GROUP_NO').Value:=
                    GetFieldValue(FieldByName('SG_SALE_GROUP_NO'));

                  qryUpdSaleGroup.ExecSQL;
                  Assert(qryUpdSaleGroup.RowsAffected = 1,
                    'qryUpdSaleGroup.RowsAffected should be 1. Actual: ' + IntToStr(qryUpdSaleGroup.RowsAffected));

                  Break;
                except
                  if (TryCount > 0) then
                    Dec(TryCount)
                  else
                    raise;
                end;  { try }
            end;  { if }

          // STORE_REQUEST stuff follows

          // choose a query to execute

          StoreRequesTQuery:= nil;

          if (VarToInt(FieldByName('CREATE_SALE_GROUP').NewValue) <> 0) then
            StoreRequesTQuery:= qryInsStoreRequest;

          if (VarToInt(FieldByName('CREATE_SALE_GROUP').NewValue) = 0) and
             not VarIsNull(GetFieldValue(FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE'))) and
             not VarIsNull(GetFieldValue(FieldByName('SALE_GROUP_OBJECT_CODE'))) then
            StoreRequesTQuery:= qryUpdStoreRequest;

          // set common params

          if Assigned(StoreRequesTQuery) then
            begin
              StoreRequesTQuery.ParamByName('REQUEST_DEPT_CODE').Value:=
                GetFieldValue(FieldByName('REQUEST_BRANCH_CODE'));
              StoreRequesTQuery.ParamByName('REQUEST_EMPLOYEE_CODE').AsInteger:=
                LoginContext.UserCode;
              StoreRequesTQuery.ParamByName('REQUEST_BEGIN_DATE').Value:=
                GetFieldValue(FieldByName('S_RECEIVE_DATE'));
              StoreRequesTQuery.ParamByName('REQUEST_END_DATE').Value:=
                GetFieldValue(FieldByName('S_RECEIVE_DATE'));

              StoreRequesTQuery.ParamByName('CHANGE_EMPLOYEE_CODE').Value:=
                GetFieldValue(FieldByName('CHANGE_EMPLOYEE_CODE'));
              StoreRequesTQuery.ParamByName('CHANGE_DATE').Value:=
                GetFieldValue(FieldByName('CHANGE_DATE'));
              StoreRequesTQuery.ParamByName('CHANGE_TIME').Value:=
                GetFieldValue(FieldByName('CHANGE_TIME'));

              StoreRequesTQuery.ParamByName('FINISH_EMPLOYEE_CODE').Value:=
                GetFieldValue(FieldByName('FINISH_EMPLOYEE_CODE'));
              StoreRequesTQuery.ParamByName('FINISH_DATE').Value:=
                GetFieldValue(FieldByName('FINISH_DATE'));
              StoreRequesTQuery.ParamByName('FINISH_TIME').Value:=
                GetFieldValue(FieldByName('FINISH_TIME'));

              StoreRequesTQuery.ParamByName('ANNUL_EMPLOYEE_CODE').Value:=
                GetFieldValue(FieldByName('ANNUL_EMPLOYEE_CODE'));
              StoreRequesTQuery.ParamByName('ANNUL_DATE').Value:=
                GetFieldValue(FieldByName('ANNUL_DATE'));
              StoreRequesTQuery.ParamByName('ANNUL_TIME').Value:=
                GetFieldValue(FieldByName('ANNUL_TIME'));
            end;  { if }

          // set some query-specific params and exec query

          if (StoreRequesTQuery = qryInsStoreRequest) then
            begin
              StoreRequesTQuery.ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').Value:=
                GetFieldValue(FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE'));
              StoreRequesTQuery.ParamByName('BND_PROCESS_OBJECT_CODE').Value:=
                GetFieldValue(FieldByName('SALE_GROUP_OBJECT_CODE'));

              StoreRequesTQuery.ParamByName('CREATE_EMPLOYEE_CODE').Value:=
                GetFieldValue(FieldByName('CREATE_EMPLOYEE_CODE'));
              StoreRequesTQuery.ParamByName('CREATE_DATE').Value:=
                GetFieldValue(FieldByName('CREATE_DATE'));
              StoreRequesTQuery.ParamByName('CREATE_TIME').Value:=
                GetFieldValue(FieldByName('CREATE_TIME'));

              StoreRequesTQuery.ParamByName('PRODUCT_CLASS_CODE').Value:=
                GetFieldValue(FieldByName('PRODUCT_CLASS_CODE'));

              TryCount:= MaxApplyRetryCount;
              while True do
                try
                  FieldByName('STORE_REQUEST_BRANCH_CODE').NewValue:=
                    GetFieldValue(FieldByName('REQUEST_BRANCH_CODE'));
                  FieldByName('STORE_REQUEST_CODE').NewValue:=
                    GetNewStoreRequestCode(VarToInt(FieldByName('STORE_REQUEST_BRANCH_CODE').NewValue));

                  StoreRequesTQuery.ParamByName('STORE_REQUEST_BRANCH_CODE').Value:=
                    GetFieldValue(FieldByName('STORE_REQUEST_BRANCH_CODE'));
                  StoreRequesTQuery.ParamByName('STORE_REQUEST_CODE').Value:=
                    GetFieldValue(FieldByName('STORE_REQUEST_CODE'));

                  StoreRequesTQuery.ExecSQL;
                  Assert(StoreRequesTQuery.RowsAffected = 1,
                    StoreRequesTQuery.Name +
                    '.RowsAffected should be 1. Actual: ' +
                    IntToStr(StoreRequesTQuery.RowsAffected));

                  Break;
                except
                  if (TryCount > 0) then
                    Dec(TryCount)
                  else
                    raise;
                end;  { try }
            end;  { if }

          if (StoreRequesTQuery = qryUpdStoreRequest) then
            begin
              StoreRequesTQuery.ParamByName('STORE_REQUEST_BRANCH_CODE').Value:=
                GetFieldValue(FieldByName('STORE_REQUEST_BRANCH_CODE'));
              StoreRequesTQuery.ParamByName('STORE_REQUEST_CODE').Value:=
                GetFieldValue(FieldByName('STORE_REQUEST_CODE'));

              StoreRequesTQuery.ExecSQL;
              Assert(StoreRequesTQuery.RowsAffected = 1,
                StoreRequesTQuery.Name +
                '.RowsAffected should be 1. Actual: ' +
                IntToStr(StoreRequesTQuery.RowsAffected));
            end;  { if }

          // STORE_REQUEST_ITEMS stuff follows

          if Assigned(StoreRequesTQuery) and (UpdateKind = ukModify) then
            begin  // koda tuk niama nishto obshto s StoreRequesTQuery - samo proverkata
              if VarIsNull(GetFieldValue(FieldByName('ANNUL_EMPLOYEE_CODE'))) and
                 VarIsNull(GetFieldValue(FieldByName('FINISH_EMPLOYEE_CODE'))) then
                begin
                  // delete annuled lines
                  qryDelStoreRequestItemsForAnnuledPlannedStoreDeals.ParamByName('STORE_REQUEST_BRANCH_CODE').Value:=
                    GetFieldValue(FieldByName('STORE_REQUEST_BRANCH_CODE'));
                  qryDelStoreRequestItemsForAnnuledPlannedStoreDeals.ParamByName('STORE_REQUEST_CODE').Value:=
                    GetFieldValue(FieldByName('STORE_REQUEST_CODE'));

                  qryDelStoreRequestItemsForAnnuledPlannedStoreDeals.ExecSQL;
                end;  { if }

              // update store-request-items' quantities from the related PSD
              qryUpdStoreRequestItems.ParamByName('STORE_REQUEST_BRANCH_CODE').Value:=
                GetFieldValue(FieldByName('STORE_REQUEST_BRANCH_CODE'));
              qryUpdStoreRequestItems.ParamByName('STORE_REQUEST_CODE').Value:=
                GetFieldValue(FieldByName('STORE_REQUEST_CODE'));

              qryUpdStoreRequestItems.ExecSQL;

              // insert some store-request-items on some condition
              qryInsStoreRequestItems.ParamByName('SALE_GROUP_OBJECT_BRANCH_CODE').AsInteger:=
                VarToInt(GetFieldValue(FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE')));
              qryInsStoreRequestItems.ParamByName('SALE_GROUP_OBJECT_CODE').AsInteger:=
                VarToInt(GetFieldValue(FieldByName('SALE_GROUP_OBJECT_CODE')));

              qryInsStoreRequestItems.ParamByName('STORE_REQUEST_BRANCH_CODE').Value:=
                GetFieldValue(FieldByName('STORE_REQUEST_BRANCH_CODE'));
              qryInsStoreRequestItems.ParamByName('STORE_REQUEST_CODE').Value:=
                GetFieldValue(FieldByName('STORE_REQUEST_CODE'));

              qryInsStoreRequestItems.ExecSQL;

              // tova nadolu e za assertion
              SaleCount:=
                GetSaleGroupNonAnnuledSaleCount(
                  VarToInt(GetFieldValue(FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE'))),
                  VarToInt(GetFieldValue(FieldByName('SALE_GROUP_OBJECT_CODE'))) );

              Assert(
                ( ( qryUpdStoreRequestItems.RowsAffected +
                    qryInsStoreRequestItems.RowsAffected ) = SaleCount ),
                Format(
                  'Update mismatch. RowsAffected: qryUpdStoreRequestItems -> %d; qryInsStoreRequestItems -> %d. Total rows that should be updated: %d',
                  [ qryUpdStoreRequestItems.RowsAffected,
                    qryInsStoreRequestItems.RowsAffected,
                    SaleCount]));
            end;  { if }

          // sale group and stuff was created. clear create-indication
          if (VarToInt(FieldByName('CREATE_SALE_GROUP').NewValue) <> 0) then
            FieldByName('CREATE_SALE_GROUP').NewValue:= 0;

          Applied:= not RecordChanged(DeltaDS);
        end;  { if (SourceDS = qrySaleRequestGroup) }


      if (SourceDS = qrySaleRequestGroupLines) then
        begin
          Assert(Assigned(DataSetField));

          MasterUpdateKind:= (DataSetField.DataSet as TPacketDataSet).UpdateKind;

          if (UpdateKind = ukInsert) then
            begin
              SvrCommon.SetProcessObjectKey(
                DeltaDS,
                'SALE_OBJECT_BRANCH_CODE',
                'SALE_OBJECT_CODE',
                pocSale);

              if (MasterUpdateKind = ukInsert) then
                begin
                  FieldByName('REQUEST_BRANCH_CODE').NewValue:=
                    GetFieldValue(DataSetField.DataSet.FieldByName('REQUEST_BRANCH_CODE'));
                  FieldByName('REQUEST_NO').NewValue:=
                    GetFieldValue(DataSetField.DataSet.FieldByName('REQUEST_NO'));
                end;  { if }

              FieldByName('CREATE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
              FieldByName('CREATE_DATE').NewValue:= ContextDate;
              FieldByName('CREATE_TIME').NewValue:= ContextTime;

              FieldByName('ASPECT_TYPE_CODE').NewValue:= AspectTypeToInt(atRealization);
            end;  { if }

          FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
          FieldByName('CHANGE_DATE').NewValue:= ContextDate;
          FieldByName('CHANGE_TIME').NewValue:= ContextTime;

          if VarIsNull(GetFieldValue(FieldByName('SALE_GROUP_OBJECT_CODE'))) and
             VarIsNull(GetFieldValue(FieldByName('ANNUL_EMPLOYEE_CODE'))) then
            begin
              FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE').NewValue:=
                GetFieldValue(DataSetField.DataSet.FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE'));

              FieldByName('SALE_GROUP_OBJECT_CODE').NewValue:=
                GetFieldValue(DataSetField.DataSet.FieldByName('SALE_GROUP_OBJECT_CODE'));
            end;

          if (VarToInt(FieldByName('CREATE_SALE').NewValue) <> 0) then
            begin
              FieldByName('SALE_BRANCH_CODE').NewValue:=
                GetFieldValue(DataSetField.DataSet.FieldByName('REQUEST_BRANCH_CODE'));

              FieldByName('SALE_NO').NewValue:=
                GetNewSaleNo(VarToInt(FieldByName('SALE_BRANCH_CODE').NewValue));

              FieldByName('CREATE_SALE').NewValue:= 0;
            end;  { if }

          Applied:= not RecordChanged(DeltaDS);
        end;  { if (SourceDS = qrySaleRequestGroupLines) }
    end;  { with }
end;

procedure TdmGroupSales.prvSaleRequestGroupAfterUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);

  procedure SetReturnQueryParams(AQuery: TAbmesSQLQuery);
  begin
    AQuery.ParamByName('STORE_DEAL_BEGIN_DATE').Value:=
      GetFieldValue(DeltaDS.FieldByName('RETURN_DATE'));
    AQuery.ParamByName('STORE_DEAL_END_DATE').Value:=
      GetFieldValue(DeltaDS.FieldByName('RETURN_DATE'));
    AQuery.ParamByName('STORE_DEAL_TYPE_CODE').Value:= sdtIn;
  end;  { ExecReturnPSDQuery }    

var
  SaleObjectIdentifier: string;
  PlannedStoreDealQuery: TAbmesSQLQuery;
  MasterUpdateKind: TUpdateKind;
  BranchName: string;
  BranchNo: Double;
  PlannedStoreDealBranchCode, PlannedStoreDealCode: Integer;
  RequestBranchNo: Real;
  RequestNo: Integer;
  RequestLineNo: Integer;
  IsLease: Boolean;
  BaseDate: TDateTime;
begin
  inherited;
  DisableApplyRetryCounter;

  with DeltaDS do
    begin
      if (SourceDS = qrySaleRequestGroupLines) then
        begin
          Assert(Assigned(DataSetField));

          MasterUpdateKind:= (DataSetField.DataSet as TPacketDataSet).UpdateKind;

          if (UpdateKind = ukInsert) and
             VarIsNullOrEmpty( GetFieldValue(FieldByName('SALE_NO'))) then
            begin
              RequestBranchNo:=
                SvrDeptsTree.GetNodeNo(
                  GetFieldValue(DeltaDS.FieldByName('REQUEST_BRANCH_CODE'))
                );
              RequestNo:= GetFieldValue(DeltaDS.FieldByName('REQUEST_NO'));
              RequestLineNo:= GetFieldValue(DeltaDS.FieldByName('REQUEST_LINE_NO'));
              SvrCommon.UpdateProcessObjectIdentifier(
                GetFieldValue(DeltaDS.FieldByName('SALE_OBJECT_BRANCH_CODE')),
                GetFieldValue(DeltaDS.FieldByName('SALE_OBJECT_CODE')),
                Format(poifGroupSaleOrder, [RequestBranchNo, RequestNo, RequestLineNo]));
            end;

          if not VarIsNullOrEmpty(FieldByName('SALE_NO').NewValue) then
            begin
              SvrDeptsTree.GetNodeData(
                VarToInt(FieldByName('SALE_BRANCH_CODE').NewValue),
                BranchName,
                BranchNo);

              SaleObjectIdentifier:=
                Format(
                  poifSale,
                  [ BranchNo,
                    VarToInt(FieldByName('SALE_NO').NewValue)]);

              FieldByName('PROCESS_OBJECT_IDENTIFIER').NewValue:=
                SaleObjectIdentifier;

              SvrCommon.UpdateProcessObjectIdentifier(
                VarToInt(GetFieldValue(FieldByName('SALE_OBJECT_BRANCH_CODE'))),
                VarToInt(GetFieldValue(FieldByName('SALE_OBJECT_CODE'))),
                SaleObjectIdentifier);

              // SALE_SHIPMENT stuff follows
              // insert shipment object
              
              SvrCommon.SetProcessObjectKey(
                DeltaDS,
                'SSH_SHIPMENT_OBJ_BRANCH_CODE',
                'SSH_SHIPMENT_OBJ_CODE',
                pocSaleShipment,
                Format(
                  poifSaleShipment,
                  [ BranchNo,
                    VarToInt(FieldByName('SALE_NO').NewValue),
                    1]));

              qryInsSaleShipment.ParamByName('SHIPMENT_OBJECT_BRANCH_CODE').Value:=
                GetFieldValue(FieldByName('SSH_SHIPMENT_OBJ_BRANCH_CODE'));
              qryInsSaleShipment.ParamByName('SHIPMENT_OBJECT_CODE').Value:=
                GetFieldValue(FieldByName('SSH_SHIPMENT_OBJ_CODE'));
              qryInsSaleShipment.ParamByName('SALE_OBJECT_BRANCH_CODE').Value:=
                GetFieldValue(FieldByName('SALE_OBJECT_BRANCH_CODE'));
              qryInsSaleShipment.ParamByName('SALE_OBJECT_CODE').Value:=
                GetFieldValue(FieldByName('SALE_OBJECT_CODE'));
              qryInsSaleShipment.ParamByName('PLAN_QUANTITY').Value:=
                GetFieldValue(FieldByName('SSH_PLAN_QUANTITY'));
              qryInsSaleShipment.ParamByName('QUANTITY').Value:=
                GetFieldValue(FieldByName('SSH_QUANTITY'));
              qryInsSaleShipment.ParamByName('SHIPMENT_PLAN_DATE').Value:=
                GetFieldValue(FieldByName('SSH_SHIPMENT_PLAN_DATE'));
              qryInsSaleShipment.ParamByName('SHIPMENT_DATE').Value:=
                GetFieldValue(FieldByName('SSH_SHIPMENT_DATE'));
              qryInsSaleShipment.ParamByName('INVOICE_NO').Value:=
                GetFieldValue(FieldByName('SSH_INVOICE_NO'));
              qryInsSaleShipment.ParamByName('INVOICE_DATE').Value:=
                GetFieldValue(FieldByName('SSH_INVOICE_DATE'));
              qryInsSaleShipment.ParamByName('IS_PROFORM_INVOICE').Value:=
                GetFieldValue(FieldByName('SSH_IS_PROFORM_INVOICE'));
              qryInsSaleShipment.ParamByName('INVOICE_CURRENCY_CODE').Value:=
                GetFieldValue(FieldByName('SSH_INVOICE_CURRENCY_CODE'));
              qryInsSaleShipment.ParamByName('INVOICE_SINGLE_PRICE').Value:=
                GetFieldValue(FieldByName('SSH_INVOICE_SINGLE_PRICE'));

              qryInsSaleShipment.ParamByName('LEASE_PLAN_DATE_UNIT_QTY').Value:=
                GetFieldValue(FieldByName('SSH_LEASE_PLAN_DATE_UNIT_QTY'));
              qryInsSaleShipment.ParamByName('LEASE_DATE_UNIT_QTY').Value:=
                GetFieldValue(FieldByName('SSH_LEASE_DATE_UNIT_QTY'));
              qryInsSaleShipment.ParamByName('IMPORT_PLAN_DATE').Value:=
                GetFieldValue(FieldByName('SSH_IMPORT_PLAN_DATE'));
              qryInsSaleShipment.ParamByName('IMPORT_DATE').Value:=
                GetFieldValue(FieldByName('SSH_IMPORT_DATE'));
              qryInsSaleShipment.ParamByName('RECEIVE_DATE').Value:=
                GetFieldValue(FieldByName('SSH_RECEIVE_DATE'));

              qryInsSaleShipment.ParamByName('DOC_BRANCH_CODE').Value:=
                GetFieldValue(FieldByName('SSH_DOC_BRANCH_CODE'));
              qryInsSaleShipment.ParamByName('DOC_CODE').Value:=
                GetFieldValue(FieldByName('SSH_DOC_CODE'));

              qryInsSaleShipment.ExecSQL;
              Assert(qryInsSaleShipment.RowsAffected = 1,
                'qryInsSaleShipment.RowsAffected should be 1. Actual: ' + IntToStr(qryInsSaleShipment.RowsAffected));
            end;  { if }

          if VarIsEmpty(FieldByName('SALE_NO').NewValue) and
             not VarIsNull(FieldByName('SALE_NO').OldValue) then
            begin  // update shipment object
              qryUpdSaleShipment.ParamByName('SHIPMENT_OBJECT_BRANCH_CODE').Value:=
                GetFieldValue(FieldByName('SSH_SHIPMENT_OBJ_BRANCH_CODE'));
              qryUpdSaleShipment.ParamByName('SHIPMENT_OBJECT_CODE').Value:=
                GetFieldValue(FieldByName('SSH_SHIPMENT_OBJ_CODE'));
              qryUpdSaleShipment.ParamByName('PLAN_QUANTITY').Value:=
                GetFieldValue(FieldByName('SSH_PLAN_QUANTITY'));
              qryUpdSaleShipment.ParamByName('QUANTITY').Value:=
                GetFieldValue(FieldByName('SSH_QUANTITY'));
              qryUpdSaleShipment.ParamByName('SHIPMENT_PLAN_DATE').Value:=
                GetFieldValue(FieldByName('SSH_SHIPMENT_PLAN_DATE'));
              qryUpdSaleShipment.ParamByName('SHIPMENT_DATE').Value:=
                GetFieldValue(FieldByName('SSH_SHIPMENT_DATE'));
              qryUpdSaleShipment.ParamByName('INVOICE_NO').Value:=
                GetFieldValue(FieldByName('SSH_INVOICE_NO'));
              qryUpdSaleShipment.ParamByName('INVOICE_DATE').Value:=
                GetFieldValue(FieldByName('SSH_INVOICE_DATE'));
              qryUpdSaleShipment.ParamByName('IS_PROFORM_INVOICE').Value:=
                GetFieldValue(FieldByName('SSH_IS_PROFORM_INVOICE'));
              qryUpdSaleShipment.ParamByName('INVOICE_CURRENCY_CODE').Value:=
                GetFieldValue(FieldByName('SSH_INVOICE_CURRENCY_CODE'));
              qryUpdSaleShipment.ParamByName('INVOICE_SINGLE_PRICE').Value:=
                GetFieldValue(FieldByName('SSH_INVOICE_SINGLE_PRICE'));

              qryUpdSaleShipment.ParamByName('LEASE_PLAN_DATE_UNIT_QTY').Value:=
                GetFieldValue(FieldByName('SSH_LEASE_PLAN_DATE_UNIT_QTY'));
              qryUpdSaleShipment.ParamByName('LEASE_DATE_UNIT_QTY').Value:=
                GetFieldValue(FieldByName('SSH_LEASE_DATE_UNIT_QTY'));
              qryUpdSaleShipment.ParamByName('IMPORT_PLAN_DATE').Value:=
                GetFieldValue(FieldByName('SSH_IMPORT_PLAN_DATE'));
              qryUpdSaleShipment.ParamByName('IMPORT_DATE').Value:=
                GetFieldValue(FieldByName('SSH_IMPORT_DATE'));
              qryUpdSaleShipment.ParamByName('RECEIVE_DATE').Value:=
                GetFieldValue(FieldByName('SSH_RECEIVE_DATE'));

              qryUpdSaleShipment.ParamByName('DOC_BRANCH_CODE').Value:=
                GetFieldValue(FieldByName('SSH_DOC_BRANCH_CODE'));
              qryUpdSaleShipment.ParamByName('DOC_CODE').Value:=
                GetFieldValue(FieldByName('SSH_DOC_CODE'));

              qryUpdSaleShipment.ExecSQL;
              Assert(qryUpdSaleShipment.RowsAffected = 1,
                'qryUpdSaleShipment.RowsAffected should be 1. Actual: ' + IntToStr(qryUpdSaleShipment.RowsAffected));
            end;  { if }

          // PlannedStoreDeal Stuff
          PlannedStoreDealBranchCode:= 0;
          PlannedStoreDealCode:= 0;

          // choose query to execute
          case UpdateKind of
            ukInsert:
              PlannedStoreDealQuery:= qryInsPlannedStoreDeal;
            ukModify:
              PlannedStoreDealQuery:= qryUpdPlannedStoreDeal;
          else
            raise Exception.Create('Unsupported UpdateKind for PlannedStoreDealQuery');
          end;  { case }

          // set lots-o-common-params
          PlannedStoreDealQuery.ParamByName('STORE_CODE').Value:=
            GetFieldValue(FieldByName('SHIPMENT_STORE_CODE'));
          PlannedStoreDealQuery.ParamByName('STORE_DEAL_TYPE_CODE').Value:=
            sdtOut;
          PlannedStoreDealQuery.ParamByName('PRODUCT_CODE').Value:=
            GetFieldValue(FieldByName('PRODUCT_CODE'));

          PlannedStoreDealQuery.ParamByName('CHANGE_EMPLOYEE_CODE').Value:=
            GetFieldValue(FieldByName('CHANGE_EMPLOYEE_CODE'));
          PlannedStoreDealQuery.ParamByName('CHANGE_DATE').Value:=
            GetFieldValue(FieldByName('CHANGE_DATE'));
          PlannedStoreDealQuery.ParamByName('CHANGE_TIME').Value:=
            GetFieldValue(FieldByName('CHANGE_TIME'));

          PlannedStoreDealQuery.ParamByName('ANNUL_EMPLOYEE_CODE').Value:=
            GetFieldValue(FieldByName('ANNUL_EMPLOYEE_CODE'));
          PlannedStoreDealQuery.ParamByName('ANNUL_DATE').Value:=
            GetFieldValue(FieldByName('ANNUL_DATE'));
          PlannedStoreDealQuery.ParamByName('ANNUL_TIME').Value:=
            GetFieldValue(FieldByName('ANNUL_TIME'));

          PlannedStoreDealQuery.ParamByName('CLOSE_EMPLOYEE_CODE').Value:=
            GetFieldValue(FieldByName('FINISH_EMPLOYEE_CODE'));
          PlannedStoreDealQuery.ParamByName('CLOSE_DATE').Value:=
            GetFieldValue(FieldByName('FINISH_DATE'));
          PlannedStoreDealQuery.ParamByName('CLOSE_TIME').Value:=
            GetFieldValue(FieldByName('FINISH_TIME'));

          // tuk razchitam che clienta ne moje da promenia prioriteta na grupata ottuk.
          // ako moje da se promenia, niama da raboti pravilno - niama da se sloji
          // promenenia prioritet v saotvetnite PSD

          if VarIsNull(GetFieldValue(DataSetField.DataSet.FieldByName('SG_PRIORITY_CODE'))) then
            PlannedStoreDealQuery.ParamByName('PRIORITY_CODE').AsInteger:=
              GetClientPriority(VarToInt(GetFieldValue(FieldByName('CLIENT_COMPANY_CODE'))))
          else
            PlannedStoreDealQuery.ParamByName('PRIORITY_CODE').AsInteger:=
              VarToInt(GetFieldValue(DataSetField.DataSet.FieldByName('SG_PRIORITY_CODE')));

          if VarIsNull(GetFieldValue(FieldByName('QUANTITY'))) then
            begin
              PlannedStoreDealQuery.ParamByName('QUANTITY').Value:=
                GetFieldValue(FieldByName('CL_OFFER_QUANTITY'));
            end
          else
            begin
              PlannedStoreDealQuery.ParamByName('QUANTITY').Value:=
                GetFieldValue(FieldByName('QUANTITY'));
            end;

          if VarIsNull(GetFieldValue(FieldByName('RECEIVE_DATE'))) then
            begin
              PlannedStoreDealQuery.ParamByName('STORE_DEAL_BEGIN_DATE').Value:=
                GetFieldValue(FieldByName('CL_OFFER_RECEIVE_DATE'));
              PlannedStoreDealQuery.ParamByName('STORE_DEAL_END_DATE').Value:=
                GetFieldValue(FieldByName('CL_OFFER_RECEIVE_DATE'));
            end
          else
            begin
              PlannedStoreDealQuery.ParamByName('STORE_DEAL_BEGIN_DATE').Value:=
                GetFieldValue(FieldByName('RECEIVE_DATE'));
              PlannedStoreDealQuery.ParamByName('STORE_DEAL_END_DATE').Value:=
                GetFieldValue(FieldByName('RECEIVE_DATE'));
            end;

          if VarIsNull(GetFieldValue(FieldByName('SSH_SHIPMENT_OBJ_CODE'))) then
            begin
              PlannedStoreDealQuery.ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').Value:=
                GetFieldValue(FieldByName('SALE_OBJECT_BRANCH_CODE'));
              PlannedStoreDealQuery.ParamByName('BND_PROCESS_OBJECT_CODE').Value:=
                GetFieldValue(FieldByName('SALE_OBJECT_CODE'));
              PlannedStoreDealQuery.ParamByName('BND_PROCESS_CODE').Value:=
                pSaleRequestLine;
              PlannedStoreDealQuery.ParamByName('PLANNED_STORE_DEAL_TYPE_CODE').AsInteger:=
                psdtFake;
            end
          else
            begin
              PlannedStoreDealQuery.ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').Value:=
                GetFieldValue(FieldByName('SSH_SHIPMENT_OBJ_BRANCH_CODE'));
              PlannedStoreDealQuery.ParamByName('BND_PROCESS_OBJECT_CODE').Value:=
                GetFieldValue(FieldByName('SSH_SHIPMENT_OBJ_CODE'));
              PlannedStoreDealQuery.ParamByName('BND_PROCESS_CODE').Value:=
                pEXP;
              PlannedStoreDealQuery.ParamByName('PLANNED_STORE_DEAL_TYPE_CODE').AsInteger:=
                psdtNormal;
            end;

          IsLease:= (GetFieldValue(FieldByName('SALE_DEAL_TYPE_CODE')) = sdtLease);

          // Set query-specific params and exec query
          case UpdateKind of
            ukInsert:
              begin
                PlannedStoreDealBranchCode:= GetFieldValue(FieldByName('REQUEST_BRANCH_CODE'));
                PlannedStoreDealCode:= SvrStore.GetNewPlannedStoreDealCode;

                PlannedStoreDealQuery.ParamByName('PLANNED_STORE_DEAL_BRANCH_CODE').AsInteger:=
                  PlannedStoreDealBranchCode;
                PlannedStoreDealQuery.ParamByName('PLANNED_STORE_DEAL_CODE').AsInteger:=
                  PlannedStoreDealCode;

                PlannedStoreDealQuery.ParamByName('CREATE_EMPLOYEE_CODE').Value:=
                  GetFieldValue(FieldByName('CREATE_EMPLOYEE_CODE'));
                PlannedStoreDealQuery.ParamByName('CREATE_DATE').Value:=
                  GetFieldValue(FieldByName('CREATE_DATE'));
                PlannedStoreDealQuery.ParamByName('CREATE_TIME').Value:=
                  GetFieldValue(FieldByName('CREATE_TIME'));

                PlannedStoreDealQuery.ExecSQL;

                if IsLease then
                  begin
                    PlannedStoreDealQuery.ParamByName('PLANNED_STORE_DEAL_CODE').AsInteger:=
                      SvrStore.GetNewPlannedStoreDealCode;
                    SetReturnQueryParams(PlannedStoreDealQuery);
                    
                    PlannedStoreDealQuery.ExecSQL;
                  end;
              end;

            ukModify:
              begin
                if VarIsNull(FieldByName('SSH_SHIPMENT_OBJ_CODE').OldValue) then
                  begin
                    PlannedStoreDealQuery.ParamByName('OLD_BND_PROCESS_OBJECT_BRANCH_CODE').Value:=
                      FieldByName('SALE_OBJECT_BRANCH_CODE').OldValue;
                    PlannedStoreDealQuery.ParamByName('OLD_BND_PROCESS_OBJECT_CODE').Value:=
                      FieldByName('SALE_OBJECT_CODE').OldValue;
                  end
                else
                  begin
                    PlannedStoreDealQuery.ParamByName('OLD_BND_PROCESS_OBJECT_BRANCH_CODE').Value:=
                      FieldByName('SSH_SHIPMENT_OBJ_BRANCH_CODE').OldValue;
                    PlannedStoreDealQuery.ParamByName('OLD_BND_PROCESS_OBJECT_CODE').Value:=
                      FieldByName('SSH_SHIPMENT_OBJ_CODE').OldValue;
                  end;

                PlannedStoreDealQuery.ExecSQL;
                if (PlannedStoreDealQuery.RowsAffected <> 1) then
                  raise Exception.CreateFmt('%s.RowsAffected should be 1. Actual: %d', [PlannedStoreDealQuery.Name, PlannedStoreDealQuery.RowsAffected]);

                if IsLease then
                  begin
                    SetReturnQueryParams(PlannedStoreDealQuery);

                    if (PlannedStoreDealQuery.RowsAffected <> 1) then
                      raise Exception.CreateFmt('%s.RowsAffected should be 1. Actual: %d', [PlannedStoreDealQuery.Name, PlannedStoreDealQuery.RowsAffected]);
                  end;
              end;
          end;  { case }

        // STORE_REQUEST_ITEM stuff follows

        if (UpdateKind = ukInsert) and
           (MasterUpdateKind = ukInsert) and
           not VarIsNullOrEmpty(FieldByName('SALE_NO').NewValue) then
          begin
            // insert store-request-item
            // in all other cases, the master is responsible for
            // inserting and updating the items

            Assert((PlannedStoreDealBranchCode <> 0) and (PlannedStoreDealCode <> 0));

            qryInsStoreRequestItem.ParamByName('STORE_REQUEST_BRANCH_CODE').Value:=
              GetFieldValue(DataSetField.DataSet.FieldByName('STORE_REQUEST_BRANCH_CODE'));
            qryInsStoreRequestItem.ParamByName('STORE_REQUEST_CODE').Value:=
              GetFieldValue(DataSetField.DataSet.FieldByName('STORE_REQUEST_CODE'));

            qryInsStoreRequestItem.ParamByName('STORE_REQUEST_ITEM_CODE').Value:=
              GetFieldValue(FieldByName('REQUEST_LINE_NO'));

            qryInsStoreRequestItem.ParamByName('PLANNED_STORE_DEAL_BRANCH_CODE').AsInteger:=
              PlannedStoreDealBranchCode;
            qryInsStoreRequestItem.ParamByName('PLANNED_STORE_DEAL_CODE').AsInteger:=
              PlannedStoreDealCode;
            qryInsStoreRequestItem.ParamByName('REQUEST_QUANTITY').Value:=
              GetFieldValue(FieldByName('QUANTITY'));

            qryInsStoreRequestItem.ExecSQL;

            if (qryInsStoreRequestItem.RowsAffected <> 1) then
              raise Exception.CreateFmt('qryInsStoreRequestItem.RowsAffected shuld be 1. Actual: %d', [qryInsStoreRequestItem.RowsAffected]);
          end;  { if }
        end;  { if }

      if (SourceDS = qrySaleRequestGroup) and
         ( (UpdateKind = ukInsert) or
           ( (UpdateKind = ukModify) and
             VarIsNullOrEmpty(FieldByName('FIN_ORDER_CODE').OldValue) ) ) and
         not VarIsNullOrEmpty(FieldByName('FO_EXEC_DEPT_CODE').NewValue) then
        begin
          if VarIsNullOrEmpty(GetFieldValue(FieldByName('SSH_SHIPMENT_DATE'))) then
            BaseDate:= GetFieldValue(FieldByName('SSH_SHIPMENT_PLAN_DATE'))
          else
            BaseDate:= GetFieldValue(FieldByName('SSH_SHIPMENT_DATE'));

          FNewFinOrderCode:=
            SvrFinance.NewFinOrder(
              GetFieldValue(DeltaDS.FieldByName('FO_BRANCH_CODE')),
              GetFieldValue(FieldByName('FO_EXEC_DEPT_CODE')),
              GetFieldValue(FieldByName('FO_PRIORITY_CODE')),
              pFinPrdUobNl,
              GetFieldValue(FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE')),
              GetFieldValue(FieldByName('SALE_GROUP_OBJECT_CODE')),
              GetFieldValue(FieldByName('FO_PARTNER_CODE')),
              ioIn,
              BaseDate,
              Null,
              GetFieldValue(FieldByName('S_CURRENCY_CODE')),
              FTotalPrice,
              GetFieldValue(FieldByName('FO_WORK_FINANCIAL_PRODUCT_CODE')),
              GetFieldValue(FieldByName('SSH_INVOICE_NO')),
              GetFieldValue(FieldByName('SSH_INVOICE_DATE')),
              GetFieldValue(FieldByName('SPEC_FIN_MODEL_CODE'))
            );
        end;

      if (SourceDS = qrySaleRequestGroup) and
         (UpdateKind = ukModify) and
         (DeltaDS.FieldByName('FO_CLOSE_REQUESTED').NewValue = 1) then
        SvrFinance.CloseFinOrder(DeltaDS.FieldByName('FIN_ORDER_CODE').OldValue);
    end;  { with }

  ResetApplyRetryCounter;
end;

procedure TdmGroupSales.prvSaleRequestGroupUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;
  try
    ApplyRetry(E, Response);

    if (UpdateKind = ukInsert) then
      with DataSet do
        begin
          if (FUpdateDS = qrySaleRequestGroup) then
            begin
              FNewRequestBranchCode:=
                GetFieldValue(FieldByName('REQUEST_BRANCH_CODE'));

              FNewRequestNo:=
                GetNewSaleRequestNo(FNewRequestBranchCode);

              FieldByName('REQUEST_NO').NewValue:=
                FNewRequestNo;
            end;  { if }

          if (FUpdateDS = qrySaleRequestGroupLines) then
            begin
              FieldByName('SALE_NO').NewValue:=
                GetNewSaleNo(GetFieldValue(FieldByName('SALE_BRANCH_CODE')));
            end;  { if }
        end;  { with }
  except
    Response:= rrAbort;
    // no re-raise - exceptions should not be raised in OnUpdateError handlers
  end;
end;

procedure TdmGroupSales.prvSaleRequestGroupGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  NestedDS: TDataSet;
begin
  inherited;
  NestedDS:=
    (DataSet.FieldByName('qrySaleRequestGroupLines') as TDataSetField).NestedDataSet;
  with NestedDS do
    begin
      First;
      while not Eof do
        begin
          Edit;
          try
            SetTotalPriceField(NestedDS);
            SetXFields(NestedDS);
            Post;
          except
            Cancel;
            raise;
          end;  { try }

          Next;
        end;  { while }
    end;  { with }
end;

procedure TdmGroupSales.prvSaleRequestGroupBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FNewRequestBranchCode:= 0;
  FNewRequestNo:= 0;
  FNewSaleGroupObjectIdentifier:= '';
  FNewFinOrderCode:= 0;
  FDocsDelta:= OwnerData[0];
  FTotalPrice:= VarToFloat(OwnerData[1]);
end;

procedure TdmGroupSales.prvSaleRequestGroupAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= VarArrayOf([
    FNewRequestBranchCode,
    FNewRequestNo,
    FNewSaleGroupObjectIdentifier,
    FNewFinOrderCode]);

  FNewRequestBranchCode:= 0;
  FNewRequestNo:= 0;
  FNewSaleGroupObjectIdentifier:= '';

  FDocsDelta:= Unassigned;
end;

procedure TdmGroupSales.qrySaleRequestGroupAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

initialization
  TdmGroupSalesProxy.FSingleton:= TdmGroupSalesProxy.Create(TdmGroupSales);

finalization
  FreeAndNil(TdmGroupSalesProxy.FSingleton);
end.
