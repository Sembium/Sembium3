unit dStoreRequests;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, AbmesClientDataSet, WideStrings, FMTBcd, SqlExpr,
  AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type 
  TdmStoreRequests = class(TDBPooledDataModule)
    prvStoreRequest: TDataSetProvider;
    qryStoreRequest: TAbmesSQLQuery;
    qryStoreRequestItems: TAbmesSQLQuery;
    dsStoreRequest: TDataSource;
    qryStoreRequestItemsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    qryStoreRequestItemsSTORE_REQUEST_CODE: TAbmesFloatField;
    qryStoreRequestItemsSTORE_REQUEST_ITEM_CODE: TAbmesFloatField;
    qryStoreRequestItemsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    qryStoreRequestItemsPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    qryStoreRequestItemsREQUEST_QUANTITY: TAbmesFloatField;
    qryStoreRequestItemsSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStoreRequestItemsSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    qryMaxStoreRequestCode: TAbmesSQLQuery;
    qryMaxStoreRequestCodeMAX_STORE_REQUEST_CODE: TAbmesFloatField;
    prvStoreRequestPlannedStoreDeals: TDataSetProvider;
    qryStoreRequestItemsPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryStoreRequestItemsPRODUCT_CODE: TAbmesFloatField;
    qryStoreRequestItemsPRODUCT_NAME: TAbmesWideStringField;
    qryStoreRequestItemsMEASURE_ABBREV: TAbmesWideStringField;
    qryStoreRequestItemsSTORE_CODE: TAbmesFloatField;
    prvStoreRequests: TDataSetProvider;
    qryStoreRequests: TAbmesSQLQuery;
    qryStoreRequestPSDQuantities: TAbmesSQLQuery;
    prvStoreRequestPSDQuantities: TDataSetProvider;
    qryStoreRequestPSDQuantitiesPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    qryStoreRequestPSDQuantitiesPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    qryStoreRequestPSDQuantitiesPLAN_QUANTITY: TAbmesFloatField;
    qryStoreRequestPSDQuantitiesCOMPLETED_QUANTITY: TAbmesFloatField;
    qryStoreRequestPSDQuantitiesOTHER_REQUESTED_QUANTITY: TAbmesFloatField;
    qryStoreRequestPSDQuantitiesREMAINING_QUANTITY: TAbmesFloatField;
    qryStoreRequestItemsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStoreRequestItemsBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryMaxStoreRequestItemCode: TAbmesSQLQuery;
    qryMaxStoreRequestItemCodeMAX_STORE_REQUEST_ITEM_CODE: TAbmesFloatField;
    qryInsPlannedStoreDeal: TAbmesSQLQuery;
    qryProductData: TAbmesSQLQuery;
    qryInsStoreDeal: TAbmesSQLQuery;
    qryProductDataNAME: TAbmesWideStringField;
    qryProductDataCUSTOM_CODE: TAbmesFloatField;
    qryProductDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryStoreProductTotals: TAbmesSQLQuery;
    qryMaxStoreDealNo: TAbmesSQLQuery;
    qryMaxStoreDealNoMAX_STORE_DEAL_NO: TAbmesFloatField;
    qryStoreAndProductInfo: TAbmesSQLQuery;
    qryStoreProductTotalsTOTAL_QUANTITY: TAbmesFloatField;
    qryStoreProductTotalsTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryStoreRequestSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    qryStoreRequestSTORE_REQUEST_CODE: TAbmesFloatField;
    qryStoreRequestIN_OUT: TAbmesFloatField;
    qryStoreRequestBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStoreRequestBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryStoreRequestREQUEST_DEPT_CODE: TAbmesFloatField;
    qryStoreRequestREQUEST_EMPLOYEE_CODE: TAbmesFloatField;
    qryStoreRequestREQUEST_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryStoreRequestREQUEST_END_DATE: TAbmesSQLTimeStampField;
    qryStoreRequestCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryStoreRequestCREATE_DATE: TAbmesSQLTimeStampField;
    qryStoreRequestCREATE_TIME: TAbmesSQLTimeStampField;
    qryStoreRequestCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryStoreRequestCHANGE_DATE: TAbmesSQLTimeStampField;
    qryStoreRequestCHANGE_TIME: TAbmesSQLTimeStampField;
    qryStoreRequestFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    qryStoreRequestFINISH_DATE: TAbmesSQLTimeStampField;
    qryStoreRequestFINISH_TIME: TAbmesSQLTimeStampField;
    qryStoreRequestANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryStoreRequestANNUL_DATE: TAbmesSQLTimeStampField;
    qryStoreRequestANNUL_TIME: TAbmesSQLTimeStampField;
    qryStoreRequestREQUEST_DEPT_NAME: TAbmesWideStringField;
    qryStoreRequestBND_PROCESS_OBJECT_CLASS_ABB: TAbmesWideStringField;
    qryStoreRequestBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryStoreRequestsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    qryStoreRequestsSTORE_REQUEST_CODE: TAbmesFloatField;
    qryStoreRequestsIN_OUT: TAbmesFloatField;
    qryStoreRequestsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStoreRequestsBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryStoreRequestItemsOTHER_EMPLOYEE_CODE: TAbmesFloatField;
    qryStoreRequestItemsBND_PROCESS_CODE: TAbmesFloatField;
    qryStoreRequestItemsACCOUNT_COEF: TAbmesFloatField;
    qryStoreRequestItemsSINGLE_PRICE: TAbmesFloatField;
    qryStoreRequestItemsPRODUCT_NO: TAbmesFloatField;
    qryStoreRequestItemsCOMPLETED_QUANTITY: TAbmesFloatField;
    qryStoreRequestItemsHAS_OLD_COMPLETED_QUANTITY: TAbmesFloatField;
    qryStoreRequestItemsCLOSED_PSD: TAbmesFloatField;
    qryStoreRequestItemsCURRENCY_CODE: TAbmesFloatField;
    qryStoreProductTotalsTOTAL_BASE_PRICE: TAbmesFloatField;
    qryStoreRequestItemsSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qryStoreRequestItemsSTORE_DEAL_NO: TAbmesFloatField;
    qryStoreRequestItemsSTORE_DEAL_CURRENCY_ABBREV: TAbmesWideStringField;
    qryStoreRequestItemsSTORE_DEAL_TOTAL_PRICE: TAbmesFloatField;
    qryStoreRequestItemsSTORE_DEAL_STORE_EMPLOYEE_CODE: TAbmesFloatField;
    qryStoreRequestItemsSTORE_DEAL_IDENTIFIER: TAbmesWideStringField;
    qryStoreProductTotalsMIN_NO_RATE_DATE: TAbmesSQLTimeStampField;
    qryStoreRequestItemsSTORE_DEAL_STORNED: TAbmesFloatField;
    qryStoreRequestREQUEST_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryStoreRequestsREQUEST_DEPT: TAbmesWideStringField;
    qryStoreRequestsREQUEST_EMPLOYEE_NAME: TAbmesWideStringField;
    qryStoreRequestsREQUEST_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryStoreRequestsREQUEST_END_DATE: TAbmesSQLTimeStampField;
    qryStoreRequestsBND_PROCESS_OBJECT_CLASS_ABB: TAbmesWideStringField;
    qryStoreRequestsBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryStoreRequestsIS_FINISHED: TAbmesFloatField;
    qryStoreRequestsIS_ANNULED: TAbmesFloatField;
    qryStoreAndProductInfoSTORE_NAME: TAbmesWideStringField;
    qryStoreAndProductInfoPRODUCT_NAME: TAbmesWideStringField;
    qryStoreAndProductInfoPRODUCT_NO: TAbmesFloatField;
    qryStoreRequestItemsPSD_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryStoreRequestItemsPSD_END_DATE: TAbmesSQLTimeStampField;
    prvOtherStoreRequests: TDataSetProvider;
    qryOtherStoreRequests: TAbmesSQLQuery;
    qryStoreRequestItemsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryStoreRequestItemsSTORE_DEAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryStoreRequestItemsSD_ML_MAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryStoreRequestItemsCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryStoreRequestItemsTOTAL_PRICE: TAbmesFloatField;
    qryStoreRequestItemsSTORE_DEAL_VENDOR_COMPANY_CODE: TAbmesFloatField;
    qryStoreRequestItemsSTORE_DEAL_INVOICE_NO: TAbmesFloatField;
    qryStoreRequestItemsSTORE_DEAL_INVOICE_ABBREV: TAbmesWideStringField;
    qryStoreRequestItemsSTORE_DEAL_INVOICE_DATE: TAbmesSQLTimeStampField;
    qryStoreRequestItemsSTORE_DEAL_CURRENCY_CODE: TAbmesFloatField;
    qryStoreRequestItemsSTORE_DEAL_BASE_TOTAL_PRICE: TAbmesFloatField;
    qryStoreRequestItemsACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryStoreRequestsTOTAL_STORE_REQUEST_ITEMS: TAbmesFloatField;
    qryStoreRequestsUNFINISHED_STORE_REQUEST_ITEMS: TAbmesFloatField;
    qryStoreRequestItemsIS_BOUND_TO_DELIVERY: TAbmesFloatField;
    qryDeptIdentifier: TAbmesSQLQuery;
    qryOtherStoreRequestsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    qryOtherStoreRequestsSTORE_REQUEST_CODE: TAbmesFloatField;
    qryOtherStoreRequestsIN_OUT: TAbmesFloatField;
    qryOtherStoreRequestsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOtherStoreRequestsBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryOtherStoreRequestsREQUEST_DEPT: TAbmesWideStringField;
    qryOtherStoreRequestsREQUEST_EMPLOYEE_NAME: TAbmesWideStringField;
    qryOtherStoreRequestsREQUEST_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOtherStoreRequestsREQUEST_END_DATE: TAbmesSQLTimeStampField;
    qryOtherStoreRequestsBND_PROCESS_OBJECT_CLASS_ABB: TAbmesWideStringField;
    qryOtherStoreRequestsBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryOtherStoreRequestsSTORE_REQUEST_BRANCH_NO: TAbmesFloatField;
    qryOtherStoreRequestsIS_FINISHED: TAbmesFloatField;
    qryOtherStoreRequestsIS_ANNULED: TAbmesFloatField;
    qryOtherStoreRequestsTOTAL_STORE_REQUEST_ITEMS: TAbmesFloatField;
    qryOtherStoreRequestsUNFINISHED_STORE_REQUEST_ITEMS: TAbmesFloatField;
    qryCheckMLLOperations: TAbmesSQLQuery;
    qryCheckMLLOperationsMLL_IDENTIFIER: TAbmesWideStringField;
    qryStoreRequestItemsSTORE_IDENTIFIER: TAbmesWideStringField;
    qryStoreRequestItemsPSD_DEPT_CODE: TAbmesFloatField;
    qryDeptIsActive: TAbmesSQLQuery;
    qryDeptIsActiveDEPT_IS_ACTIVE: TAbmesFloatField;
    qryDeptIdentifierDEPT_IDENTIFIER: TAbmesWideStringField;
    qryStoreRequestItemsSTORE_DEAL_VENDOR_COMPANY_NAME: TAbmesWideStringField;
    qryStoreRequestsSTORE_REQUEST_IDENTIFIER: TAbmesWideStringField;
    qryOtherStoreRequestsSTORE_REQUEST_IDENTIFIER: TAbmesWideStringField;
    qryStoreRequestItemsPRIORITY_CODE: TAbmesFloatField;
    qryStoreRequestItemsPRIORITY_NO: TAbmesFloatField;
    qryStoreRequestItemsPRIORITY_FULL_NAME: TAbmesWideStringField;
    qryStoreRequestItemsBND_PROCESS_ABBREV: TAbmesWideStringField;
    qryStoreRequestItemsOTHER_EMPLOYEE_NO: TAbmesFloatField;
    qryStoreRequestItemsSTORE_DEAL_STORE_EMPLOYEE_NO: TAbmesFloatField;
    qryStoreRequestPlannedStoreDeals: TAbmesSQLQuery;
    qryStoreRequestPlannedStoreDealsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsBND_PROCESS_ABBREV: TAbmesWideStringField;
    qryStoreRequestPlannedStoreDealsPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryStoreRequestPlannedStoreDealsPRIORITY_CODE: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsPRIORITY_NO: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsPRIORITY_FULL_NAME: TAbmesWideStringField;
    qryStoreRequestPlannedStoreDealsWORK_PRIORITY_NO: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryStoreRequestPlannedStoreDealsSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField;
    qryStoreRequestPlannedStoreDealsPRODUCT_CODE: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsPRODUCT_NAME: TAbmesWideStringField;
    qryStoreRequestPlannedStoreDealsPRODUCT_NO: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsMEASURE_ABBREV: TAbmesWideStringField;
    qryStoreRequestPlannedStoreDealsACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsSTORE_CODE: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsSTORE_IDENTIFIER: TAbmesWideStringField;
    qryStoreRequestPlannedStoreDealsPSD_DEPT_CODE: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsPLAN_QUANTITY: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsCOMPLETED_QUANTITY: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsOTHER_REQUESTED_QUANTITY: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsREMAINING_QUANTITY: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsREQUEST_QUANTITY: TAbmesFloatField;
    qryStoreRequestItemsIN_OUT: TAbmesFloatField;
    qryStoreRequestPlannedStoreDealsIN_OUT: TAbmesFloatField;
    qryStoreRequestPRODUCT_CLASS_CODE: TAbmesFloatField;
    qryStoreRequestPARTNER_CODE: TAbmesFloatField;
    qryStoreRequestPARTNER_ACCOUNT_CODE: TAbmesFloatField;
    qryStoreRequestUNFINISHED_OTHER_SRI_COUNT: TAbmesFloatField;
    qryStoreRequestItemsBND_PO_PROD_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryStoreRequestItemsBND_BOIO_BO_PROD_CUSTOM_CODE: TAbmesFloatField;
    qryStoreRequestItemsBND_BOIO_BO_PRODUCT_NAME: TAbmesWideStringField;
    qryStoreRequestItemsROOT_SALE_PRODUCT_IF_FOR_PROJ: TAbmesWideStringField;
    qryStoreRequestItemsBND_BOIO_CONSUMER_DEPT_ID: TAbmesWideStringField;
    qryStoreRequestItemsIS_PSD_BOUND_TO_MODEL: TAbmesFloatField;
    qryStoreRequestBND_PROCESS_OBJECT_CLASS_CODE: TAbmesFloatField;
    qryStoreRequestsPRODUCT_CLASS_CODE: TAbmesFloatField;
    qryOtherStoreRequestsPRODUCT_CLASS_CODE: TAbmesFloatField;
    qryStoreRequestsPARTNER_SHORT_NAME: TAbmesWideStringField;
    qryStartStoreRecalcDeffer: TAbmesSQLQuery;
    qryApplyStoreRecalcDeffer: TAbmesSQLQuery;
    qryCancelStoreRecalcDeffer: TAbmesSQLQuery;
    qryStoreRequestItemsPSD_QUANTITY: TAbmesFloatField;
    qryStoreRequestItemsPSD_REMAINING_QUANTITY: TAbmesFloatField;
    qryStoreRequestItemsDELIVERY_DOC_BRANCH_CODE: TAbmesFloatField;
    qryStoreRequestItemsDELIVERY_DOC_CODE: TAbmesFloatField;
    qryStoreRequestItemsDELIVERY_HAS_DOC_ITEMS: TAbmesFloatField;
    procedure prvStoreRequestPlannedStoreDealsGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvStoreRequestUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvStoreRequestBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvStoreRequestAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvStoreRequestUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure prvStoreRequestBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvStoreRequestAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvStoreRequestBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryStoreRequestsBeforeOpen(DataSet: TDataSet);
    procedure qryStoreRequestItemsBeforeOpen(DataSet: TDataSet);
    procedure qryStoreRequestsAfterClose(DataSet: TDataSet);
    procedure qryStoreRequestPlannedStoreDealsBeforeOpen(DataSet: TDataSet);
    procedure qryStoreRequestPlannedStoreDealsAfterClose(DataSet: TDataSet);
    procedure qryStoreRequestAfterProviderStartTransaction(DataSet: TDataSet);
    procedure qryStoreRequestBeforeProviderEndTransaction(DataSet: TDataSet;
      Commit: Boolean);
  private
    FUpdateDS: TDataSet;
    FInvoiceData: Variant;
    FIsActiveCheckStoreCode: Integer;
    procedure SetNewStoreRequestItemCode(ADataSet: TDataSet);
    procedure SetNewPlannedStoreDeal(ADataSet: TCustomClientDataSet);
    procedure GetProductData(ProductCode: Integer;
      out AccountMeasureCoef: Real);
    procedure InsertStoreDeal(ADataSet: TCustomClientDataSet);
    function GetNewStoreDealNo(StoreCode, StoreDealTypeCode: Integer; StoreDealDate: TDateTime): Integer;
    procedure GetStoreAndProductInfo(AStoreCode, AProductCode: Integer;
      out StoreName, ProductName: string; out ProductNo: Real);
    procedure CalcAccountCoefAndSinglePrice(ADataSet: TCustomClientDataSet;
      out AccountCoef, SinglePrice: Real; out CurrencyCode: Integer);
    function GetDeptIdentifier(DeptCode: Integer): string;
    function GetDealTypeCode(AInOut, AStoreCode: Integer): Integer;
  protected
    function GetNewStoreRequestCode(StoreRequestBranchCode: Integer): Integer;
  end;

type
  IdmStoreRequestsProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmStoreRequestsProxy = class(TDBPooledDataModuleProxy, IdmStoreRequestsProxy)
  private
    class var FSingleton: TdmStoreRequestsProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmStoreRequests>;
  strict protected
    property LockedInstance: ISmartLock<TdmStoreRequests> read GetLockedInstance;
  public
    class property Singleton: TdmStoreRequestsProxy read FSingleton;

    function GetNewStoreRequestCode(StoreRequestBranchCode: Integer): Integer;
  end;

implementation

uses
  Variants, uUtils, uSvrUtils, uDealTypes, uProcesses, uServerMessageIds,
  uProcessObjectIdentifierFormats, uDBPooledDataModuleHelper, uTreeNodes,
  uMessageUtils;

{$R *.DFM}

const
  FloatCorrectEpsilon = 0.00000001;

{ TdmStoreRequestsProxy }

function TdmStoreRequestsProxy.GetLockedInstance: ISmartLock<TdmStoreRequests>;
begin
  Result:= ISmartLock<TdmStoreRequests>(inherited LockedInstance);
end;

function TdmStoreRequestsProxy.GetNewStoreRequestCode(
  StoreRequestBranchCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewStoreRequestCode(StoreRequestBranchCode);
end;

{ TdmStoreRequests }

procedure TdmStoreRequests.prvStoreRequestPlannedStoreDealsGetData(
  Sender: TObject; DataSet: TCustomClientDataSet);
var
  b: TBookmark;
begin
  inherited;

  with DataSet do
    begin
      b:= Bookmark;
      try
        First;
        while not EOF do
          begin
            Edit;
            try
              if (FieldByName('REMAINING_QUANTITY').AsFloat <= 0) then
                FieldByName('REMAINING_QUANTITY').Clear;

              FieldByName('REQUEST_QUANTITY').Clear;

              Post;
            except
              Cancel;
              raise;
            end;   { try }
            Next;
          end;   { while }
      finally
        Bookmark:= b;
      end;   { try }
    end;   { with }
end;

procedure TdmStoreRequests.prvStoreRequestUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  inherited;
  ResetApplyRetryCounter;
end;

procedure TdmStoreRequests.prvStoreRequestBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  FUpdateDS:= SourceDS;

  with DeltaDS do
    if (SourceDS = qryStoreRequest) then
      begin
        if (UpdateKind = ukInsert) then
          begin
            FieldByName('STORE_REQUEST_CODE').NewValue:=
              GetNewStoreRequestCode(FieldByName('STORE_REQUEST_BRANCH_CODE').NewValue);

            FieldByName('CREATE_EMPLOYEE_CODE').NewValue:=
              LoginContext.UserCode;
            FieldByName('CREATE_DATE').NewValue:= ContextDate;
            FieldByName('CREATE_TIME').NewValue:= ContextTime;
          end;   { if }

        if (UpdateKind <> ukDelete) then
          begin
            FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:=
              LoginContext.UserCode;
            FieldByName('CHANGE_DATE').NewValue:= ContextDate;
            FieldByName('CHANGE_TIME').NewValue:= ContextTime;
          end;   { if }

        if not VarIsEmpty(FieldByName('FINISH_EMPLOYEE_CODE').NewValue) then
          begin
            FieldByName('FINISH_DATE').NewValue:= ContextDate;
            FieldByName('FINISH_TIME').NewValue:= ContextTime;
          end;   { if }

        if not VarIsEmpty(FieldByName('ANNUL_EMPLOYEE_CODE').NewValue) then
          begin
            FieldByName('ANNUL_DATE').NewValue:= ContextDate;
            FieldByName('ANNUL_TIME').NewValue:= ContextTime;
          end;   { if }
      end   { if }
    else
      if (SourceDS = qryStoreRequestItems) then
        begin
          if (UpdateKind = ukInsert) then
            begin
              with qryCheckMLLOperations do
                begin
                  SetParams(Params, DeltaDS);
                  Open;
                  try
                    if not (Bof and Eof) then
                      raise Exception.Create(SBeginOperationNotFoundId + '(' +
                        'MllIdentifier:s=' + InternalEncodeString(qryCheckMLLOperationsMLL_IDENTIFIER.AsString) + ')');
                  finally
                    Close;
                  end;  { try }
                end;  { with }

              DeltaDS.FieldByName('STORE_REQUEST_CODE').NewValue:=
                GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('STORE_REQUEST_CODE'));
              SetNewStoreRequestItemCode(DeltaDS);

              if not VarIsEmpty(FieldByName('BND_PROCESS_CODE').NewValue) then
                SetNewPlannedStoreDeal(DeltaDS);
            end;
        end;

  Applied:= not RecordChanged(DeltaDS);
end;

procedure TdmStoreRequests.prvStoreRequestAfterUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
begin
  inherited;

  if (SourceDS = qryStoreRequestItems) and
     (UpdateKind <> ukDelete) and
     not VarIsNullOrEmpty(DeltaDS.FieldByName('COMPLETED_QUANTITY').NewValue) then
    InsertStoreDeal(DeltaDS);

  ResetApplyRetryCounter;
end;

procedure TdmStoreRequests.prvStoreRequestUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;

  ApplyRetry(E, Response);

  if (Response = rrApply) then
    begin
      if (UpdateKind = ukInsert) then
        begin
          if (FUpdateDS = qryStoreRequest) then
            DataSet.FieldByName('STORE_REQUEST_CODE').NewValue:=
              GetNewStoreRequestCode(LoginContext.LocalBranchCode)
          else
            if (FUpdateDS = qryStoreRequestItems) then
              SetNewStoreRequestItemCode(DataSet);
        end;
    end;   { if }
end;

function TdmStoreRequests.GetNewStoreRequestCode(
  StoreRequestBranchCode: Integer): Integer;
begin
  with qryMaxStoreRequestCode do
    begin
      ParamByName('STORE_REQUEST_BRANCH_CODE').AsInteger:=
        StoreRequestBranchCode;

      Open;
      try
        Result:=
          qryMaxStoreRequestCodeMAX_STORE_REQUEST_CODE.AsInteger + 1;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

procedure TdmStoreRequests.SetNewStoreRequestItemCode(
  ADataSet: TDataSet);
begin
  with qryMaxStoreRequestItemCode do
    begin
      SetParams(Params, ADataSet);

      Open;
      try
        ADataSet.FieldByName('STORE_REQUEST_ITEM_CODE').NewValue:=
          qryMaxStoreRequestItemCodeMAX_STORE_REQUEST_ITEM_CODE.Value + 1;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

procedure TdmStoreRequests.SetNewPlannedStoreDeal(ADataSet: TCustomClientDataSet);
var
  DealTypeCode: Integer;
  AccountMeasureCoef: Real;
  TryCount: Integer;
begin
  with qryInsPlannedStoreDeal do
    begin
      GetProductData(ADataSet.FieldByName('PRODUCT_CODE').NewValue,
        AccountMeasureCoef);

      ADataSet.FieldByName('ACCOUNT_COEF').NewValue:= AccountMeasureCoef;

      SetParams(Params, ADataSet.DataSetField.DataSet);

      DealTypeCode:= GetDealTypeCode(GetFieldValue(ADataSet.FieldByName('IN_OUT')),
        GetFieldValue(ADataSet.FieldByName('STORE_CODE')));
      ParamByName('STORE_DEAL_TYPE_CODE').AsInteger:= DealTypeCode;

      TryCount:= MaxApplyRetryCount;
      while True do
        try
          ADataSet.FieldByName('PLANNED_STORE_DEAL_BRANCH_CODE').NewValue:=
            ADataSet.FieldByName('STORE_REQUEST_BRANCH_CODE').AsInteger;
          ADataSet.FieldByName('PLANNED_STORE_DEAL_CODE').NewValue:=
            SvrStore.GetNewPlannedStoreDealCode;

          SetParams(Params, ADataSet);

          ParamByName('PRIORITY_CODE').AsInteger:=
            LoginContext.DefaultPriorityCode;

          ExecSQL;

          Break;
        except
          if (TryCount > 0) then
            Dec(TryCount)
          else
            raise;
        end;  { try }
    end;   { with }
end;

procedure TdmStoreRequests.GetProductData(ProductCode: Integer;
  out AccountMeasureCoef: Real);
begin
  with qryProductData do
    begin
      ParamByName('PRODUCT_CODE').AsInteger:= ProductCode;

      Open;
      try
        if qryProductDataACCOUNT_MEASURE_COEF.IsNull then
          raise Exception.Create(SNoAccountMeasureCoefId + '(' +
            'ProductName:s=' + InternalEncodeString(qryProductDataNAME.AsString) + ',' +
            'ProductIdentifier:f=' + InternalFloatToStr(qryProductDataCUSTOM_CODE.AsFloat) + ')');

        AccountMeasureCoef:=
          qryProductDataACCOUNT_MEASURE_COEF.Value;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

procedure TdmStoreRequests.InsertStoreDeal(ADataSet: TCustomClientDataSet);

  function GetDealTypeAbbrev: string;
  begin
    if (GetFieldValue(ADataSet.FieldByName('IN_OUT')) > 0) then
      Result:= SInDealAbbrev
    else
      Result:= SOutDealAbbrev;
  end;

  function DeptIsActive(ADeptCode: Integer): Boolean;
  begin
    with qryDeptIsActive do
      begin
        ParamByName('DEPT_CODE').AsInteger:= ADeptCode;
        Open;
        try
          Result:= qryDeptIsActiveDEPT_IS_ACTIVE.AsBoolean;
        finally
          Close;
        end;  { try }
      end;  { with }
  end;

var
  DealTypeCode: Integer;
  AccountCoef: Real;
  SinglePrice: Real;
  StoreDealNo: Integer;
  CurrencyCode: Integer;
  AccountQuantity: Real;
  TotalPrice: Real;
  StoreDealDate: TDateTime;
begin
  if (GetFieldValue(ADataSet.FieldByName('COMPLETED_QUANTITY')) = 0) then
    Exit;  // ред, в който не се отчита нищо, но трябва да се отбележи като отчетен има количество 0

  StoreDealDate:=
    (ADataSet.DataSetField.DataSet as TCustomClientDataSet).GetOptionalParam('STORE_DEAL_DATE');

  SvrCommon.SetProcessObjectKey(ADataSet,
    'STORE_DEAL_OBJECT_BRANCH_CODE', 'STORE_DEAL_OBJECT_CODE', pocStoreDeal);

  with qryInsStoreDeal do
    begin
      SetParams(Params, ADataSet.DataSetField.DataSet);
      SetParams(Params, ADataSet);

      ParamByName('CREATE_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
      ParamByName('STORE_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;

      DealTypeCode:=
        GetDealTypeCode(
          GetFieldValue(ADataSet.FieldByName('IN_OUT')),
          GetFieldValue(ADataSet.FieldByName('STORE_CODE'))
        );
      ParamByName('STORE_DEAL_TYPE_CODE').AsInteger:= DealTypeCode;

      StoreDealNo:= GetNewStoreDealNo(
          GetFieldValue(ADataSet.FieldByName('STORE_CODE')),
          DealTypeCode,
          StoreDealDate);
      ParamByName('STORE_DEAL_NO').AsInteger:= StoreDealNo;

      if VarIsNull(GetFieldValue(ADataSet.FieldByName('COMPLETED_ACCOUNT_QUANTITY'))) or
         VarIsNull(GetFieldValue(ADataSet.FieldByName('TOTAL_PRICE'))) then
        begin
          CalcAccountCoefAndSinglePrice(ADataSet, AccountCoef, SinglePrice, CurrencyCode);

          AccountQuantity:=
            GetFieldValue(ADataSet.FieldByName('COMPLETED_QUANTITY')) * AccountCoef;
          TotalPrice:=
            GetFieldValue(ADataSet.FieldByName('COMPLETED_QUANTITY')) * SinglePrice;

          ParamByName('ACCOUNT_QUANTITY').AsFloat:= AccountQuantity;
          ParamByName('TOTAL_PRICE').AsFloat:= TotalPrice;
          ParamByName('CURRENCY_CODE').AsInteger:= CurrencyCode;
        end
      else   { if }
        begin
          ParamByName('ACCOUNT_QUANTITY').AsFloat:=
            GetFieldValue(ADataSet.FieldByName('COMPLETED_ACCOUNT_QUANTITY'));
          ParamByName('TOTAL_PRICE').AsFloat:=
            GetFieldValue(ADataSet.FieldByName('TOTAL_PRICE'));

          if (not VarIsNullOrEmpty(FInvoiceData)) and (GetFieldValue(ADataSet.FieldByName('BND_PROCESS_CODE')) = pPD) then
            ParamByName('CURRENCY_CODE').Value:= FInvoiceData[0]
          else
            ParamByName('CURRENCY_CODE').Clear;

          if ParamByName('CURRENCY_CODE').IsNull then
            ParamByName('CURRENCY_CODE').Value:=
              GetFieldValue(ADataSet.FieldByName('CURRENCY_CODE'));
        end;   { if }

      ParamByName('OTHER_EMPLOYEE_CODE').Value:=
        (ADataSet.DataSetField.DataSet as TCustomClientDataSet).GetOptionalParam('OTHER_EMPLOYEE_CODE');

      ParamByName('STORE_DEAL_DATE').Value:= StoreDealDate;

      if (not VarIsNullOrEmpty(FInvoiceData)) and (GetFieldValue(ADataSet.FieldByName('BND_PROCESS_CODE')) = pPD) then
        begin
          ParamByName('VENDOR_COMPANY_CODE').Value:= FInvoiceData[1];
          ParamByName('INVOICE_NO').Value:= FInvoiceData[2];

          if (FInvoiceData[3] = '') then
            ParamByName('INVOICE_ABBREV').Clear
          else
            ParamByName('INVOICE_ABBREV').Value:= FInvoiceData[3];

          ParamByName('INVOICE_DATE').Value:= FInvoiceData[4];
        end;   { if }

      if LoginContext.IsStoreRequestStoreDealDeptCopiedFromPSD and
         not VarIsNullOrEmpty(GetFieldValue(ADataSet.FieldByName('PSD_DEPT_CODE'))) then
        ParamByName('REQUEST_DEPT_CODE').AsInteger:= GetFieldValue(ADataSet.FieldByName('PSD_DEPT_CODE'));

      if (FIsActiveCheckStoreCode <> ParamByName('STORE_CODE').AsInteger) then
        begin
          FIsActiveCheckStoreCode:= ParamByName('STORE_CODE').AsInteger;

          if not DeptIsActive(ParamByName('STORE_CODE').AsInteger) then
            raise Exception.Create(SCantCrateSDWithInactiveStoreId);
        end;

      if not DeptIsActive(ParamByName('REQUEST_DEPT_CODE').AsInteger) then
        raise Exception.Create(SCantCrateSDWithInactiveDeptId + '(' +
            'DeptIdentifier:s=' + GetDeptIdentifier(ParamByName('REQUEST_DEPT_CODE').AsInteger) + ')');

      ExecSQL;
    end;   { with }

// set the process object identifier
  with ADataSet do
    SvrCommon.UpdateProcessObjectIdentifier(
      FieldByName('STORE_DEAL_OBJECT_BRANCH_CODE').NewValue,
      FieldByName('STORE_DEAL_OBJECT_CODE').NewValue,
      Format(poifStoreDeal, [
        GetDeptIdentifier(GetFieldValue(FieldByName('STORE_CODE'))),
        FormatDateTime('dd-mm-yyyy', StoreDealDate),
        GetDealTypeAbbrev,
        StoreDealNo]));
end;

function TdmStoreRequests.GetNewStoreDealNo(StoreCode,
  StoreDealTypeCode: Integer; StoreDealDate: TDateTime): Integer;
begin
  with qryMaxStoreDealNo do
    begin
      ParamByName('STORE_CODE').AsInteger:= StoreCode;
      ParamByName('STORE_DEAL_TYPE_CODE').AsInteger:= StoreDealTypeCode;
      ParamByName('STORE_DEAL_DATE').AsDateTime:= StoreDealDate;

      Open;
      try
        Result:= qryMaxStoreDealNoMAX_STORE_DEAL_NO.AsInteger + 1;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

procedure TdmStoreRequests.GetStoreAndProductInfo(AStoreCode, AProductCode: Integer;
  out StoreName, ProductName: string; out ProductNo: Real);
begin
  with qryStoreAndProductInfo do
    begin
      ParamByName('STORE_CODE').AsInteger:= AStoreCode;
      ParamByName('PRODUCT_CODE').AsInteger:= AProductCode;

      Open;
      try
        StoreName:= qryStoreAndProductInfoSTORE_NAME.AsString;
        ProductName:= qryStoreAndProductInfoPRODUCT_NAME.AsString;
        ProductNo:= qryStoreAndProductInfoPRODUCT_NO.AsFloat;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

procedure TdmStoreRequests.CalcAccountCoefAndSinglePrice(
  ADataSet: TCustomClientDataSet; out AccountCoef, SinglePrice: Real;
  out CurrencyCode: Integer);
var
  StoreName: string;
  ProductName: string;
  ProductNo: Real;
begin
  if (GetFieldValue(ADataSet.FieldByName('IN_OUT')) > 0) then
    begin   // postuplenie
      if VarIsNullOrEmpty(GetFieldValue(ADataSet.FieldByName('SINGLE_PRICE'))) or
         VarIsNullOrEmpty(GetFieldValue(ADataSet.FieldByName('CURRENCY_CODE'))) then
        raise Exception.Create(SPSDSinglePriceNotSetId);

      AccountCoef:=
        GetFieldValue(ADataSet.FieldByName('ACCOUNT_COEF'));
      SinglePrice:=
        GetFieldValue(ADataSet.FieldByName('SINGLE_PRICE'));
      CurrencyCode:=
        GetFieldValue(ADataSet.FieldByName('CURRENCY_CODE'));
    end
  else   { if }
    begin   // teglene
      with qryStoreProductTotals do
        begin
          SetParams(Params, ADataSet);

          Open;
          try
            if not qryStoreProductTotalsMIN_NO_RATE_DATE.IsNull then
              raise Exception.Create(SNoCurrencyRatesId + '(' +
                'Date:d=' + InternalDateToStr(qryStoreProductTotalsMIN_NO_RATE_DATE.AsDateTime) + ')');

            if (qryStoreProductTotalsTOTAL_QUANTITY.Value <
                GetFieldValue(ADataSet.FieldByName('COMPLETED_QUANTITY'))) then
              begin
                GetStoreAndProductInfo(
                  GetFieldValue(ADataSet.FieldByName('STORE_CODE')),
                  GetFieldValue(ADataSet.FieldByName('PRODUCT_CODE')),
                  StoreName, ProductName, ProductNo);

                raise Exception.Create(SNotEnoughStoreQuantityId + '(' +
                  'StoreName:s=' + InternalEncodeString(StoreName) + ',' +
                  'ProductName:s=' + InternalEncodeString(ProductName) + ',' +
                  'ProductIdentifier:f=' + InternalFloatToStr(ProductNo) + ')');
              end;

            AccountCoef:=
              qryStoreProductTotalsTOTAL_ACCOUNT_QUANTITY.Value /
              qryStoreProductTotalsTOTAL_QUANTITY.Value;

            if (qryStoreProductTotalsTOTAL_BASE_PRICE.Value < FloatCorrectEpsilon) then
              SinglePrice:= 0
            else
              SinglePrice:=
                qryStoreProductTotalsTOTAL_BASE_PRICE.Value /
                qryStoreProductTotalsTOTAL_QUANTITY.Value;

            CurrencyCode:= LoginContext.BaseCurrencyCode;
          finally
            Close;
          end;   { try }
        end;   { with }
    end;   { if }
end;

function TdmStoreRequests.GetDeptIdentifier(
  DeptCode: Integer): string;
begin
  with qryDeptIdentifier do
    begin
      ParamByName('DEPT_CODE').AsInteger:= DeptCode;

      Open;
      try
        Result:= qryDeptIdentifierDEPT_IDENTIFIER.AsString;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

procedure TdmStoreRequests.prvStoreRequestBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FInvoiceData:= OwnerData;
  FIsActiveCheckStoreCode:= 0;
end;

procedure TdmStoreRequests.prvStoreRequestAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FInvoiceData:= Unassigned;
end;

function TdmStoreRequests.GetDealTypeCode(AInOut,
  AStoreCode: Integer): Integer;
begin
  if (AInOut > 0) then
    Result:= sdtIn
  else
    Result:= sdtOut;
end;

procedure TdmStoreRequests.prvStoreRequestBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  if not VarIsEmpty(OwnerData) then
    begin
      qryStoreRequest.Params.ParamByName('STORE_CODE').Value:= OwnerData;
      qryStoreRequestItems.Params.ParamByName('STORE_CODE').Value:= OwnerData;
    end;
end;

procedure TdmStoreRequests.qryStoreRequestsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrStore.SetStoreDealsQueryBndProcessMacros(
    (DataSet as TAbmesSQLQuery),
    '');
end;

procedure TdmStoreRequests.qryStoreRequestsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  (DataSet as TAbmesSQLQuery).ParamByName('BND_PROCESS_CODE').Clear; // sledvashtia red shto go populni parama ako e nujno

  SvrStore.SetStoreDealsQueryBndProcessMacros(
    (DataSet as TAbmesSQLQuery),
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('BND_PROCESS').AsString);

  ProcessDeptParamBeforeQueryOpen((DataSet as TAbmesSQLQuery).ParamByName('REQUEST_DEPT_CODE'), LoginContext);
  SetCurrentDeptIfNeeded((DataSet as TAbmesSQLQuery).ParamByName('PSD_STORE_CODE'), LoginContext);

  ProcessUserParamBeforeQueryOpen((DataSet as TAbmesSQLQuery).ParamByName('REQUEST_EMPLOYEE_CODE'), LoginContext);
end;

procedure TdmStoreRequests.qryStoreRequestAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  qryStartStoreRecalcDeffer.ExecSQL;
end;

procedure TdmStoreRequests.qryStoreRequestBeforeProviderEndTransaction(
  DataSet: TDataSet; Commit: Boolean);
begin
  inherited;
  if Commit then
    qryApplyStoreRecalcDeffer.ExecSQL
  else
    qryCancelStoreRecalcDeffer.ExecSQL;
end;

procedure TdmStoreRequests.qryStoreRequestItemsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  ProcessDeptParamBeforeQueryOpen(qryStoreRequestItems.ParamByName('STORE_CODE'), LoginContext);
  qryStoreRequestItems.ParamByName('DELIVERY_PROCESS_CODE').AsInteger:= pPD;
end;

procedure TdmStoreRequests.qryStoreRequestPlannedStoreDealsAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrStore.SetStoreDealsQueryBndProcessMacros(
    (DataSet as TAbmesSQLQuery),
    '');
end;

procedure TdmStoreRequests.qryStoreRequestPlannedStoreDealsBeforeOpen(
  DataSet: TDataSet);
var
  PartnerCode: Variant;
begin
  inherited;

  PartnerCode:= (DataSet as TAbmesSQLQuery).ParamByName('PARTNER_CODE').Value;

  SvrStore.SetStoreDealsQueryBndProcessMacros(
    (DataSet as TAbmesSQLQuery),
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('BND_PROCESS').AsString);

  if not VarIsNullOrEmpty(PartnerCode) then
    (DataSet as TAbmesSQLQuery).ParamByName('PARTNER_CODE').Value:= PartnerCode;

  ProcessDeptParamBeforeQueryOpen(
    (DataSet as TAbmesSQLQuery).ParamByName('STORE_CODE'), LoginContext);

  ProcessProductParamBeforeQueryOpen(
    (DataSet as TAbmesSQLQuery).ParamByName('PRODUCT_CODE'));
end;

initialization
  TdmStoreRequestsProxy.FSingleton:= TdmStoreRequestsProxy.Create(TdmStoreRequests);

finalization
  FreeAndNil(TdmStoreRequestsProxy.FSingleton);
end.

