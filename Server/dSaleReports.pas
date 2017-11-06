unit dSaleReports;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, uPeriods, AbmesClientDataSet, JvStringHolder,
  WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmSaleReports = class(TDBPooledDataModule)
    qryExpGroupsMaster: TAbmesSQLQuery;
    prvExpGroupMaster: TDataSetProvider;
    prvExpGroupsDetail: TDataSetProvider;
    qryExpGroupsMasterSHIPMENT_DATE: TAbmesSQLTimeStampField;
    qryExpGroupsMasterIS_OTCH: TAbmesFloatField;
    qryExpGroupsMasterCLIENT_COMPANY_CODE: TAbmesFloatField;
    qryExpGroupsMasterCLENT_COMPANY_NAME: TAbmesWideStringField;
    qryExpGroupsMasterRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    qryExpGroupsMasterOFFICE_NAME: TAbmesWideStringField;
    qryExpGroupsMasterPLAN_VALUE_GAINED: TAbmesFloatField;
    qryExpGroupsMasterPLAN_VALUE_INVESTED: TAbmesFloatField;
    qryExpGroupsMasterOTCH_VALUE_GAINED: TAbmesFloatField;
    qryExpGroupsMasterOTCH_VALUE_INVESTED: TAbmesFloatField;
    qryExpGroupsMasterAVG_TIME_DEV: TAbmesFloatField;
    qryExpGroupsMasterMIN_TIME_DEV: TAbmesFloatField;
    qrySingleExps: TAbmesSQLQuery;
    prvSingleExps: TDataSetProvider;
    qrySingleExpsSALE_ID: TAbmesWideStringField;
    qrySingleExpsSHIPMENT_DATE: TAbmesSQLTimeStampField;
    qrySingleExpsCLIENT_NAME: TAbmesWideStringField;
    qrySingleExpsPRODUCT_NAME: TAbmesWideStringField;
    qrySingleExpsMEASURE_ABBREV: TAbmesWideStringField;
    qrySingleExpsPLAN_QUANTITY: TAbmesFloatField;
    qrySingleExpsPLAN_VALUE_GAINED: TAbmesFloatField;
    qrySingleExpsPLAN_VALUE_INVESTED: TAbmesFloatField;
    qrySingleExpsOTCH_QUANTITY: TAbmesFloatField;
    qrySingleExpsOTCH_VALUE_GAINED: TAbmesFloatField;
    qrySingleExpsOTCH_VALUE_INVESTED: TAbmesFloatField;
    qrySingleExpsIS_ANNULED: TAbmesFloatField;
    qrySingleExpsIS_OTCH: TAbmesFloatField;
    qrySingleExpsDEV_TIME: TAbmesFloatField;
    qrySingleExpsSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySingleExpsSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySingleExpsSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    qrySingleExpsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySingleExpsSALE_OBJECT_CODE: TAbmesFloatField;
    qrySingleExpsREQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySingleExpsREQUEST_NO: TAbmesFloatField;
    qrySingleExpsREQUEST_LINE_NO: TAbmesFloatField;
    qrySingleExpsSALE_SHIPMENT_NO: TAbmesFloatField;
    qrySingleExpsSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryExpGroupsMasterUNCOVERED_LINES: TAbmesFloatField;
    qrySingleExpsUNCOVERED_LINES: TAbmesFloatField;
    qrySingleExpsCLIENT_REQUEST_NO: TAbmesWideStringField;
    qrySingleExpsPRODUCTION_DEPT_IDENTIFIER: TAbmesWideStringField;
    qrySingleExpsCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    qrySingleExpsINVOICE_NO: TAbmesFloatField;
    qrySingleExpsINVOICE_DATE: TAbmesSQLTimeStampField;
    qryExpGroupsMasterMIN_TRANSPORT_MEASURE_CODE: TAbmesFloatField;
    qryExpGroupsMasterMAX_TRANSPORT_MEASURE_CODE: TAbmesFloatField;
    qryExpGroupsMasterTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField;
    qryExpGroupsMasterPLAN_TRANSPORT_QUANTITY: TAbmesFloatField;
    qryExpGroupsMasterOTCH_TRANSPORT_QUANTITY: TAbmesFloatField;
    qrySingleExpsTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField;
    qrySingleExpsPLAN_TRANSPORT_QUANTITY: TAbmesFloatField;
    qrySingleExpsOTCH_TRANSPORT_QUANTITY: TAbmesFloatField;
    qrySingleExpsPRODUCT_CODE: TAbmesFloatField;
    qryShipmentNeededMaterials: TAbmesSQLQuery;
    prvShipmentNeededMaterials: TDataSetProvider;
    qryShipmentNeededMaterialsMATERIAL_CODE: TAbmesFloatField;
    qryShipmentNeededMaterialsMATERIAL_NAME: TAbmesWideStringField;
    qryShipmentNeededMaterialsMATERIAL_NO: TAbmesFloatField;
    qryShipmentNeededMaterialsMATERIAL_MEASURE_CODE: TAbmesFloatField;
    qryShipmentNeededMaterialsMATERIAL_MEASURE_ABBREV: TAbmesWideStringField;
    qryShipmentNeededMaterialsMATERIAL_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryShipmentNeededMaterialsMATERIAL_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    qryShipmentNeededMaterialsDETAIL_CODE: TAbmesFloatField;
    qryShipmentNeededMaterialsDETAIL_NAME: TAbmesWideStringField;
    qryShipmentNeededMaterialsDETAIL_NO: TAbmesFloatField;
    qryShipmentNeededMaterialsDETAIL_MEASURE_CODE: TAbmesFloatField;
    qryShipmentNeededMaterialsDETAIL_MEASURE_ABBREV: TAbmesWideStringField;
    qryShipmentNeededMaterialsDETAIL_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryShipmentNeededMaterialsDETAIL_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryShipmentNeededMaterialsQUANTITY: TAbmesFloatField;
    qryShipmentNeededMaterialsACCOUNT_QUANTITY: TAbmesFloatField;
    qryExpGroupsMasterGROUP_DATE_STATUS_CODE: TAbmesFloatField;
    qrySingleExpsPRODUCT_NO: TAbmesFloatField;
    qryExpGroupsMasterIS_INVOICE_DATE_NULL: TAbmesFloatField;
    shActiveSaleCondition: TJvStrHolder;
    qrySingleExpsPRIORITY_CODE: TAbmesFloatField;
    qrySingleExpsPRIORITY_NO: TAbmesFloatField;
    qrySingleExpsPRIORITY_FULL_NAME: TAbmesWideStringField;
    qrySingleExpsLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qrySingleExpsLEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField;
    qrySingleExpsLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qrySingleExpsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qrySingleExpsPLAN_ACCOUNT_QUANTITY: TAbmesFloatField;
    qrySingleExpsOTCH_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryExpGroupsMasterEXP_GROUP_STATE_CODE: TAbmesFloatField;
    qrySingleExpsSALE_SHIPMENT_STATE_CODE: TAbmesFloatField;
    qrySingleExpsINVOICE_STATE_CODE: TAbmesFloatField;
    qryExpGroupsDetail: TAbmesSQLQuery;
    qryExpGroupsDetailIS_OTCH: TAbmesFloatField;
    qryExpGroupsDetailSHIPMENT_DATE: TAbmesSQLTimeStampField;
    qryExpGroupsDetailIS_INVOICE_DATE_NULL: TAbmesFloatField;
    qryExpGroupsDetailCLIENT_COMPANY_CODE: TAbmesFloatField;
    qryExpGroupsDetailRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    qryExpGroupsDetailSALE_ID: TAbmesWideStringField;
    qryExpGroupsDetailSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryExpGroupsDetailSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qryExpGroupsDetailSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryExpGroupsDetailSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    qryExpGroupsDetailSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryExpGroupsDetailSALE_OBJECT_CODE: TAbmesFloatField;
    qryExpGroupsDetailSALE_SHIPMENT_NO: TAbmesFloatField;
    qryExpGroupsDetailREQUEST_BRANCH_CODE: TAbmesFloatField;
    qryExpGroupsDetailREQUEST_NO: TAbmesFloatField;
    qryExpGroupsDetailREQUEST_LINE_NO: TAbmesFloatField;
    qryExpGroupsDetailCLIENT_REQUEST_NO: TAbmesWideStringField;
    qryExpGroupsDetailPRIORITY_CODE: TAbmesFloatField;
    qryExpGroupsDetailPRIORITY_NO: TAbmesFloatField;
    qryExpGroupsDetailPRIORITY_FULL_NAME: TAbmesWideStringField;
    qryExpGroupsDetailPRODUCT_CODE: TAbmesFloatField;
    qryExpGroupsDetailPRODUCT_NO: TAbmesFloatField;
    qryExpGroupsDetailPRODUCT_NAME: TAbmesWideStringField;
    qryExpGroupsDetailCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    qryExpGroupsDetailMEASURE_ABBREV: TAbmesWideStringField;
    qryExpGroupsDetailPLAN_QUANTITY: TAbmesFloatField;
    qryExpGroupsDetailPLAN_VALUE_GAINED: TAbmesFloatField;
    qryExpGroupsDetailPLAN_VALUE_INVESTED: TAbmesFloatField;
    qryExpGroupsDetailOTCH_VALUE_GAINED: TAbmesFloatField;
    qryExpGroupsDetailOTCH_QUANTITY: TAbmesFloatField;
    qryExpGroupsDetailOTCH_VALUE_INVESTED: TAbmesFloatField;
    qryExpGroupsDetailIS_ANNULED: TAbmesFloatField;
    qryExpGroupsDetailUNCOVERED_LINES: TAbmesFloatField;
    qryExpGroupsDetailTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField;
    qryExpGroupsDetailPLAN_TRANSPORT_QUANTITY: TAbmesFloatField;
    qryExpGroupsDetailOTCH_TRANSPORT_QUANTITY: TAbmesFloatField;
    qryExpGroupsDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryExpGroupsDetailLEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField;
    qryExpGroupsDetailLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qryExpGroupsDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryExpGroupsDetailPLAN_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryExpGroupsDetailOTCH_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryExpGroupsDetailSALE_SHIPMENT_STATE_CODE: TAbmesFloatField;
    qryExpGroupsDetailINVOICE_STATE_CODE: TAbmesFloatField;
    qryExpGroupsDetailRECEIVE_DATE_RSV: TAbmesFloatField;
    qryExpGroupsDetailIMPORT_DATE_RSV: TAbmesFloatField;
    qrySingleExpsRECEIVE_DATE_RSV: TAbmesFloatField;
    qrySingleExpsIMPORT_DATE_RSV: TAbmesFloatField;
    qryExpGroupsDetailRECEIVE_PLAN_DATE: TAbmesSQLTimeStampField;
    qryExpGroupsDetailIMPORT_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySingleExpsRECEIVE_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySingleExpsIMPORT_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySingleExpsRECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySingleExpsIMPORT_DATE: TAbmesSQLTimeStampField;
    qryExpGroupsDetailRECEIVE_DATE: TAbmesSQLTimeStampField;
    qryExpGroupsDetailIMPORT_DATE: TAbmesSQLTimeStampField;
    qryPrepareUncoveredPSD: TAbmesSQLQuery;
    qryUnprepareUncoveredPSD: TAbmesSQLQuery;
    qryExpGroupsDetailDAMAGES_STATE_CODE: TAbmesFloatField;
    qrySingleExpsDAMAGES_STATE_CODE: TAbmesFloatField;
    qrySingleExpsSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySingleExpsSHIPMENT_OBJECT_CODE: TAbmesFloatField;
    qryExpGroupsDetailSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryExpGroupsDetailSHIPMENT_OBJECT_CODE: TAbmesFloatField;
    qryExpGroupsMasterEXP_GROUP_DAMAGES_STATE_CODE: TAbmesFloatField;
    qrySingleExpsMEASURE_CODE: TAbmesFloatField;
    qrySingleExpsACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qrySingleExpsHAS_FIN_ORDER: TAbmesFloatField;
    qrySingleExpsINVOICE_DATA_ACCOUNT_QUANTITY: TAbmesFloatField;
    qrySingleExpsINVOICE_DATA_SINGLE_PRICE: TAbmesFloatField;
    qrySingleExpsINVOICE_DATA_MARKET_SNGL_PRICE: TAbmesFloatField;
    qrySingleExpsINVOICE_DATA_DISCOUNT_PERCENT: TAbmesFloatField;
    qrySingleExpsINVOICE_DATA_CURRENCY_CODE: TAbmesFloatField;
    qrySingleExpsINVOICE_DATA_SSH_IDENTIFIER: TAbmesWideStringField;
    qryUnprepareMaterialList: TAbmesSQLQuery;
    qryPrepareMaterialList: TAbmesSQLQuery;
    qryExpGroupsMasterCLIENT_STATUS_NAME: TAbmesWideStringField;
    qryExpGroupsMasterIS_VENDOR_TRANSPORT: TAbmesFloatField;
    qryExpGroupsMasterCLIENT_COMPANY_NO: TAbmesFloatField;
    qrySingleExpsCLIENT_COMPANY_NO: TAbmesFloatField;
    qryExpGroupsDetailIS_VENDOR_TRANSPORT: TAbmesFloatField;
    qryExpGroupsDetailMEASURE_CODE: TAbmesFloatField;
    qryExpGroupsDetailTRANSPORT_MEASURE_CODE: TAbmesFloatField;
    qryExpGroupsDetailACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryExpGroupsDetailSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    qrySingleExpsSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    qrySingleExpsRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField;
    qryExpGroupsDetailCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySingleExpsCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    procedure qryExpGroupsMasterAfterClose(DataSet: TDataSet);
    procedure qryExpGroupsDetailAfterClose(DataSet: TDataSet);
    procedure qryExpGroupsDetailBeforeOpen(DataSet: TDataSet);
    procedure qryExpGroupsMasterBeforeOpen(DataSet: TDataSet);
    procedure qrySingleExpsAfterClose(DataSet: TDataSet);
    procedure qrySingleExpsBeforeOpen(DataSet: TDataSet);
    procedure prvExpGroupMasterBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvExpGroupsDetailBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvSingleExpsBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryShipmentNeededMaterialsBeforeOpen(DataSet: TDataSet);
    procedure qryShipmentNeededMaterialsAfterClose(DataSet: TDataSet);
  private
    FShowUncoveredLines: Boolean;
  end;

type
  IdmSaleReportsProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmSaleReportsProxy = class(TDBPooledDataModuleProxy, IdmSaleReportsProxy)
  private
    class var FSingleton: TdmSaleReportsProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmSaleReports>;
  strict protected
    property LockedInstance: ISmartLock<TdmSaleReports> read GetLockedInstance;
  public
    class property Singleton: TdmSaleReportsProxy read FSingleton;
  end;

implementation

uses
  Variants, uDBPooledDataModuleHelper, uTreeNodes, uXMLUtils;

{$R *.DFM}

{ TdmSaleReportsProxy }

function TdmSaleReportsProxy.GetLockedInstance: ISmartLock<TdmSaleReports>;
begin
  Result:= ISmartLock<TdmSaleReports>(inherited LockedInstance);
end;

{ TdmSaleReports }

procedure TdmSaleReports.qryExpGroupsMasterAfterClose(DataSet: TDataSet);
begin
  inherited;

  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);;

  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  if FShowUncoveredLines then
    qryUnprepareUncoveredPSD.ExecSQL;
end;

procedure TdmSaleReports.qryExpGroupsDetailAfterClose(DataSet: TDataSet);
begin
  inherited;

  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);;

  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  if FShowUncoveredLines then
    qryUnprepareUncoveredPSD.ExecSQL;
end;

procedure TdmSaleReports.qryExpGroupsDetailBeforeOpen(DataSet: TDataSet);
var
  Period: TPeriod;
begin
  inherited;

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
  
  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);

  if FShowUncoveredLines then
    begin
      Period:= GetPeriodValue(LoginContext.DefaultDateUnitCode);

      SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
        ChosenNodeCodeToXML(tnRootProductCode));

      SvrDeptTreeNodeFilter.PrepareFilteredNodes(
        ChosenNodeCodeToXML(tnRootDeptCode));

      with qryPrepareUncoveredPSD do
        begin
          ParamByName('MAX_PSD_TYPE_CODE').AsFloat:= 1;
          ParamByName('START_PERIOD_DATE').AsDateTime:= GetPeriodFirstDate(ContextDate, Period);
          ParamByName('END_PERIOD_DATE').AsDateTime:= GetPeriodLastDate(SvrDeficit.GetLastPSDDate, Period);
          ParamByName('DATE_UNIT_CODE').AsFloat:= LoginContext.DefaultDateUnitCode;
          ExecSQL;
        end;

      SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes;
      SvrDeptTreeNodeFilter.UnPrepareFilteredNodes;
    end;

  with (DataSet as TAbmesSQLQuery) do
    begin
      if (ParamByName('MAX_SALE_SHIPMENT_STATE_CODE').AsInteger <= 8) then
        MacroByName('IF_IS_ACTIVE').AsString:= shActiveSaleCondition.Strings.Text
      else
        MacroByName('IF_IS_ACTIVE').AsString:= '(0=0)';
    end;  { with }
end;

procedure TdmSaleReports.qryExpGroupsMasterBeforeOpen(DataSet: TDataSet);
var
  Period: TPeriod;
begin
  inherited;

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);

  if FShowUncoveredLines then
    begin
      Period:= GetPeriodValue(LoginContext.DefaultDateUnitCode);

      SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
        ChosenNodeCodeToXML(tnRootProductCode));

      SvrDeptTreeNodeFilter.PrepareFilteredNodes(
        ChosenNodeCodeToXML(tnRootDeptCode));

      with qryPrepareUncoveredPSD do
        begin
          ParamByName('MAX_PSD_TYPE_CODE').AsFloat:= 1;
          ParamByName('START_PERIOD_DATE').AsDateTime:= GetPeriodFirstDate(ContextDate, Period);
          ParamByName('END_PERIOD_DATE').AsDateTime:= GetPeriodLastDate(SvrDeficit.GetLastPSDDate, Period);
          ParamByName('DATE_UNIT_CODE').AsFloat:= LoginContext.DefaultDateUnitCode;
          ExecSQL;
        end;  { with }

      SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes;
      SvrDeptTreeNodeFilter.UnPrepareFilteredNodes;
    end;  { if }

  with (DataSet as TAbmesSQLQuery) do
    begin
      if (ParamByName('MAX_SALE_SHIPMENT_STATE_CODE').AsInteger <= 8) then
        MacroByName('IF_IS_ACTIVE').AsString:= shActiveSaleCondition.Strings.Text
      else
        MacroByName('IF_IS_ACTIVE').AsString:= '(0=0)';
    end;  { with }
end;

procedure TdmSaleReports.qryShipmentNeededMaterialsAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  qryUnprepareMaterialList.ExecSQL;
end;

procedure TdmSaleReports.qryShipmentNeededMaterialsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;

  with qryPrepareMaterialList do
    begin
      ParamByName('SALE_OBJECT_BRANCH_CODE').Assign(qryShipmentNeededMaterials.ParamByName('SALE_OBJECT_BRANCH_CODE'));
      ParamByName('SALE_OBJECT_CODE').Assign(qryShipmentNeededMaterials.ParamByName('SALE_OBJECT_CODE'));
      ParamByName('SALE_SHIPMENT_NO').Assign(qryShipmentNeededMaterials.ParamByName('SALE_SHIPMENT_NO'));

      ExecSQL;
    end;
end;

procedure TdmSaleReports.qrySingleExpsAfterClose(DataSet: TDataSet);
begin
  inherited;

  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);;

  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  if FShowUncoveredLines then
    qryUnprepareUncoveredPSD.ExecSQL;
end;

procedure TdmSaleReports.qrySingleExpsBeforeOpen(DataSet: TDataSet);
var
  Period: TPeriod;
begin
  inherited;

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);

  if FShowUncoveredLines then
    begin
      Period:= GetPeriodValue(LoginContext.DefaultDateUnitCode);

      SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
        ChosenNodeCodeToXML(tnRootProductCode));

      SvrDeptTreeNodeFilter.PrepareFilteredNodes(
        ChosenNodeCodeToXML(tnRootDeptCode));

      with qryPrepareUncoveredPSD do
        begin
          ParamByName('MAX_PSD_TYPE_CODE').AsFloat:= 1;
          ParamByName('START_PERIOD_DATE').AsDateTime:= GetPeriodFirstDate(ContextDate, Period);
          ParamByName('END_PERIOD_DATE').AsDateTime:= GetPeriodLastDate(SvrDeficit.GetLastPSDDate, Period);
          ParamByName('DATE_UNIT_CODE').AsFloat:= LoginContext.DefaultDateUnitCode;
          ExecSQL;
        end;

      SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes;
      SvrDeptTreeNodeFilter.UnPrepareFilteredNodes;
    end;

  with (DataSet as TAbmesSQLQuery) do
    begin
      if (ParamByName('MAX_SALE_SHIPMENT_STATE_CODE').AsInteger <= 8) then
        MacroByName('IF_IS_ACTIVE').AsString:= shActiveSaleCondition.Strings.Text
      else
        MacroByName('IF_IS_ACTIVE').AsString:= '(0=0)';
    end;  { with }
end;

procedure TdmSaleReports.prvExpGroupMasterBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FShowUncoveredLines:= False;
end;

procedure TdmSaleReports.prvExpGroupsDetailBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FShowUncoveredLines:= False;
end;

procedure TdmSaleReports.prvSingleExpsBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FShowUncoveredLines:= False;
end;

initialization
  TdmSaleReportsProxy.FSingleton:= TdmSaleReportsProxy.Create(TdmSaleReports);

finalization
  FreeAndNil(TdmSaleReportsProxy.FSingleton);
end.
