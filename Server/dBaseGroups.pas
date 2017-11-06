unit dBaseGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  dDBPooledDataModule, dPooledDataModule,
  Provider, DB, AbmesSQLQuery, AbmesFields, DBClient,
  AbmesClientDataSet, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  JvStringHolder, DBXDevartOracle, uSmartLock;

type
  TdmBaseGroups = class(TDBPooledDataModule)
    prvBaseGroups: TDataSetProvider;
    qryBaseGroups: TAbmesSQLQuery;
    qryBaseGroupProducts: TAbmesSQLQuery;
    qryBaseGroupsBASE_GROUP_CODE: TAbmesFloatField;
    qryBaseGroupsGROUP_DEPT_CODE: TAbmesFloatField;
    qryBaseGroupsGROUP_DEPT_NAME: TAbmesWideStringField;
    qryBaseGroupsGROUP_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryBaseGroupsBASE_GROUP_NO: TAbmesFloatField;
    qryBaseGroupsBASE_GROUP_NAME: TAbmesWideStringField;
    qryBaseGroupsDOC_BRANCH_CODE: TAbmesFloatField;
    qryBaseGroupsDOC_CODE: TAbmesFloatField;
    qryBaseGroupsHAS_DOC_ITEMS: TAbmesFloatField;
    qryBaseGroupsBASE_PRODUCT_CODE: TAbmesFloatField;
    qryBaseGroupsBASE_PRODUCT_NAME: TAbmesWideStringField;
    qryBaseGroupsBASE_PRODUCT_NO: TAbmesFloatField;
    qryBaseGroupsBASE_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryBaseGroupProductsBASE_GROUP_CODE: TAbmesFloatField;
    qryBaseGroupProductsPRODUCT_CODE: TAbmesFloatField;
    qryBaseGroupProductsPRODUCT_NAME: TAbmesWideStringField;
    qryBaseGroupProductsPRODUCT_NO: TAbmesFloatField;
    qryBaseGroupProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryBaseGroupProductsIS_BASE_PRODUCT: TAbmesFloatField;
    prvBaseGroupCandidateProducts: TDataSetProvider;
    qryBaseGroupCandidateProducts: TAbmesSQLQuery;
    qryBaseGroupCandidateProductsPRODUCT_CODE: TAbmesFloatField;
    qryBaseGroupCandidateProductsPRODUCT_NAME: TAbmesWideStringField;
    qryBaseGroupCandidateProductsPRODUCT_NO: TAbmesFloatField;
    qryBaseGroupCandidateProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    dsBaseGroups: TDataSource;
    qryNewBaseGroupCode: TAbmesSQLQuery;
    qryNewBaseGroupCodeNEW_BASE_GROUP_CODE: TAbmesFloatField;
    qryBaseGroupsDOC_CHANGED: TAbmesFloatField;
    prvBaseGroup: TDataSetProvider;
    qryBaseGroup: TAbmesSQLQuery;
    qryBaseGroupBASE_GROUP_CODE: TAbmesFloatField;
    qryBaseGroupBASE_GROUP_NO: TAbmesFloatField;
    qryBaseGroupBASE_GROUP_NAME: TAbmesWideStringField;
    qryBaseGroupDOC_BRANCH_CODE: TAbmesFloatField;
    qryBaseGroupDOC_CODE: TAbmesFloatField;
    qryBaseGroupBASE_PRODUCT_HAS_SPECIFICATION: TAbmesFloatField;
    qryBaseGroupProductsDOC_BRANCH_CODE: TAbmesFloatField;
    qryBaseGroupProductsDOC_CODE: TAbmesFloatField;
    qryBaseGroupCandidateProductsDOC_BRANCH_CODE: TAbmesFloatField;
    qryBaseGroupCandidateProductsDOC_CODE: TAbmesFloatField;
    prvCommonProducts: TDataSetProvider;
    qryCommonProducts: TAbmesSQLQuery;
    dsCommonProducts: TDataSource;
    qryCommonProductJoinedProducts: TAbmesSQLQuery;
    prvCommonProductsCandidateJoinedProducts: TDataSetProvider;
    qryCommonProductsCandidateJoinedProducts: TAbmesSQLQuery;
    qryUpdDefiniteProduct: TAbmesSQLQuery;
    qryCommonProductJoinedProductsPRODUCT_CODE: TAbmesFloatField;
    qryCommonProductJoinedProductsCOMMON_PRODUCT_CODE: TAbmesFloatField;
    qryCommonProductJoinedProductsPRODUCT_NAME: TAbmesWideStringField;
    qryCommonProductJoinedProductsSPEC_STATUS_CODE: TAbmesFloatField;
    qryCommonProductJoinedProductsPRODUCTION_ORDER_COUNT: TAbmesFloatField;
    qryCommonProductJoinedProductsPRODUCTION_ORDERS_QUANTITY: TAbmesFloatField;
    qryCommonProductJoinedProductsMEASURE_CODE: TAbmesFloatField;
    qryCommonProductJoinedProductsMEASURE_ABBREV: TAbmesWideStringField;
    qryCommonProductJoinedProductsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryCommonProductJoinedProductsPRODUCT_DOC_CODE: TAbmesFloatField;
    qryCommonProductJoinedProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryCommonProductsCandidateJoinedProductsPRODUCT_CODE: TAbmesFloatField;
    qryCommonProductsCandidateJoinedProductsPRODUCT_NAME: TAbmesWideStringField;
    qryCommonProductsCandidateJoinedProductsSPEC_STATUS_CODE: TAbmesFloatField;
    qryCommonProductsCandidateJoinedProductsPRODUCTION_ORDER_COUNT: TAbmesFloatField;
    qryCommonProductsCandidateJoinedProductsPRODUCTION_ORDERS_QUANTITY: TAbmesFloatField;
    qryCommonProductsCandidateJoinedProductsMEASURE_CODE: TAbmesFloatField;
    qryCommonProductsCandidateJoinedProductsMEASURE_ABBREV: TAbmesWideStringField;
    qryCommonProductsCandidateJoinedProductsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryCommonProductsCandidateJoinedProductsPRODUCT_DOC_CODE: TAbmesFloatField;
    qryCommonProductsCandidateJoinedProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryCommonProductsCOMMON_PRODUCT_CODE: TAbmesFloatField;
    qryCommonProductsCOMMON_PRODUCT_NAME: TAbmesWideStringField;
    qryCommonProductsJOINED_TO_PRODUCT_CODE: TAbmesFloatField;
    qryCommonProductsSPEC_STATUS_CODE: TAbmesFloatField;
    qryCommonProductsNOTES: TAbmesWideStringField;
    qryCommonProductsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryCommonProductsPRODUCT_DOC_CODE: TAbmesFloatField;
    qryCommonProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    prvCommonProductsHeader: TDataSetProvider;
    qryCommonProductsHeader: TAbmesSQLQuery;
    qryCommonProductsHeaderPRODUCT_CODE: TAbmesFloatField;
    qryCommonProductsHeaderMEASURE_ABBREV: TAbmesWideStringField;
    qryCommonProductsCOMMON_PRODUCT_NO: TAbmesFloatField;
    qryCommonProductJoinedProductsIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    qryCommonProductsCandidateJoinedProductsIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    qryCommonProductsCandidateJoinedProductsPRODUCT_NO: TAbmesFloatField;
    qryCommonProductJoinedProductsPRODUCT_NO: TAbmesFloatField;
    qryCommonProductsCandidateJoinedProductsIS_INACTIVE: TAbmesFloatField;
    qryCommonProductJoinedProductsIS_INACTIVE: TAbmesFloatField;
    qryCommonProductsIS_INACTIVE: TAbmesFloatField;
    qryBaseGroupProductsIS_INACTIVE: TAbmesFloatField;
    qryBaseGroupCandidateProductsIS_INACTIVE: TAbmesFloatField;
    qryBaseGroupProductsHAS_SPEC: TAbmesFloatField;
    qryBaseGroupCandidateProductsHAS_SPEC: TAbmesFloatField;
    qryBaseGroupBASE_PRODUCT_CODE: TAbmesFloatField;
    qryBaseGroupHAS_DOC_ITEMS: TAbmesFloatField;
    qryCommonProductsCandidateJoinedProductsCOMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryCommonProductJoinedProductsCOMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryBaseGroupsBASE_GROUP_PRODUCTS_COUNT: TAbmesFloatField;
    qryBaseGroupProductsJOINED_IN_BASE_GROUPS_COUNT: TAbmesFloatField;
    qryBaseGroupProductsGROUP_DEPT_FLOW_COUNT: TAbmesFloatField;
    qryBaseGroupCandidateProductsJOINED_IN_BASE_GROUPS_COUNT: TAbmesFloatField;
    qryBaseGroupCandidateProductsGROUP_DEPT_FLOW_COUNT: TAbmesFloatField;
    qryHasSMVSOperationsForDept: TAbmesSQLQuery;
    qryHasSMVSOperationsForDeptHAS_SMVS_OPERATIONS_FOR_DEPT: TAbmesFloatField;
    mshLocalMacroLibrary: TJvMultiStringHolder;
    qryBaseGroupProductsMODEL_VARIANTS_COUNT: TAbmesFloatField;
    qryBaseGroupCandidateProductsMODEL_VARIANTS_COUNT: TAbmesFloatField;
    qryClearBaseGroupBaseProduct: TAbmesSQLQuery;
    qryCommonProductsHeaderTOTAL_CONCRETE_PRODUCT_COUNT: TAbmesFloatField;
    qryCommonProductsHeaderACTIVE_CONCRETE_PRODUCT_COUNT: TAbmesFloatField;
    qryAllCommonProductJoinedProducts: TAbmesSQLQuery;
    qryAllCommonProductJoinedProductsPRODUCT_CODE: TAbmesFloatField;
    qryAllCommonProductJoinedProductsCOMMON_PRODUCT_CODE: TAbmesFloatField;
    qryAllCommonProductJoinedProductsPRODUCT_NAME: TAbmesWideStringField;
    qryAllCommonProductJoinedProductsPRODUCT_NO: TAbmesFloatField;
    qryAllCommonProductJoinedProductsSPEC_STATUS_CODE: TAbmesFloatField;
    qryAllCommonProductJoinedProductsPRODUCTION_ORDER_COUNT: TAbmesFloatField;
    qryAllCommonProductJoinedProductsPRODUCTION_ORDERS_QUANTITY: TAbmesFloatField;
    qryAllCommonProductJoinedProductsMEASURE_CODE: TAbmesFloatField;
    qryAllCommonProductJoinedProductsMEASURE_ABBREV: TAbmesWideStringField;
    qryAllCommonProductJoinedProductsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryAllCommonProductJoinedProductsPRODUCT_DOC_CODE: TAbmesFloatField;
    qryAllCommonProductJoinedProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryAllCommonProductJoinedProductsIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    qryAllCommonProductJoinedProductsIS_INACTIVE: TAbmesFloatField;
    qryAllCommonProductJoinedProductsCOMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    prvAllCommonProductJoinedProducts: TDataSetProvider;
    cdsAllCommonProductJoinedProducts: TAbmesClientDataSet;
    cdsAllCommonProductJoinedProductsPRODUCT_CODE: TAbmesFloatField;
    cdsAllCommonProductJoinedProductsCOMMON_PRODUCT_CODE: TAbmesFloatField;
    cdsAllCommonProductJoinedProductsPRODUCT_NAME: TAbmesWideStringField;
    cdsAllCommonProductJoinedProductsPRODUCT_NO: TAbmesFloatField;
    cdsAllCommonProductJoinedProductsSPEC_STATUS_CODE: TAbmesFloatField;
    cdsAllCommonProductJoinedProductsPRODUCTION_ORDER_COUNT: TAbmesFloatField;
    cdsAllCommonProductJoinedProductsPRODUCTION_ORDERS_QUANTITY: TAbmesFloatField;
    cdsAllCommonProductJoinedProductsMEASURE_CODE: TAbmesFloatField;
    cdsAllCommonProductJoinedProductsMEASURE_ABBREV: TAbmesWideStringField;
    cdsAllCommonProductJoinedProductsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsAllCommonProductJoinedProductsPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsAllCommonProductJoinedProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsAllCommonProductJoinedProductsIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    cdsAllCommonProductJoinedProductsIS_INACTIVE: TAbmesFloatField;
    cdsAllCommonProductJoinedProductsCOMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryUpdIsThoroughlyEngineered: TAbmesSQLQuery;
    qryCommonProductsIS_STRATEGIC: TAbmesFloatField;
    qryAllBaseGroupProducts: TAbmesSQLQuery;
    prvAllBaseGroupProducts: TDataSetProvider;
    cdsAllBaseGroupProducts: TAbmesClientDataSet;
    qryAllBaseGroupProductsBASE_GROUP_CODE: TAbmesFloatField;
    qryAllBaseGroupProductsPRODUCT_CODE: TAbmesFloatField;
    qryAllBaseGroupProductsPRODUCT_NAME: TAbmesWideStringField;
    qryAllBaseGroupProductsPRODUCT_NO: TAbmesFloatField;
    qryAllBaseGroupProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryAllBaseGroupProductsIS_INACTIVE: TAbmesFloatField;
    qryAllBaseGroupProductsHAS_SPEC: TAbmesFloatField;
    qryAllBaseGroupProductsJOINED_IN_BASE_GROUPS_COUNT: TAbmesFloatField;
    qryAllBaseGroupProductsGROUP_DEPT_FLOW_COUNT: TAbmesFloatField;
    qryAllBaseGroupProductsMODEL_VARIANTS_COUNT: TAbmesFloatField;
    qryAllBaseGroupProductsIS_BASE_PRODUCT: TAbmesFloatField;
    qryAllBaseGroupProductsDOC_BRANCH_CODE: TAbmesFloatField;
    qryAllBaseGroupProductsDOC_CODE: TAbmesFloatField;
    qryAllBaseGroupProductsGROUP_DEPT_CODE: TAbmesFloatField;
    cdsAllBaseGroupProductsBASE_GROUP_CODE: TAbmesFloatField;
    cdsAllBaseGroupProductsPRODUCT_CODE: TAbmesFloatField;
    cdsAllBaseGroupProductsPRODUCT_NAME: TAbmesWideStringField;
    cdsAllBaseGroupProductsPRODUCT_NO: TAbmesFloatField;
    cdsAllBaseGroupProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsAllBaseGroupProductsIS_INACTIVE: TAbmesFloatField;
    cdsAllBaseGroupProductsHAS_SPEC: TAbmesFloatField;
    cdsAllBaseGroupProductsJOINED_IN_BASE_GROUPS_COUNT: TAbmesFloatField;
    cdsAllBaseGroupProductsGROUP_DEPT_FLOW_COUNT: TAbmesFloatField;
    cdsAllBaseGroupProductsMODEL_VARIANTS_COUNT: TAbmesFloatField;
    cdsAllBaseGroupProductsIS_BASE_PRODUCT: TAbmesFloatField;
    cdsAllBaseGroupProductsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsAllBaseGroupProductsDOC_CODE: TAbmesFloatField;
    cdsAllBaseGroupProductsGROUP_DEPT_CODE: TAbmesFloatField;
    procedure prvBaseGroupsBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvBaseGroupsAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryBaseGroupsAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure prvBaseGroupsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvCommonProductsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryCommonProductJoinedProductsBeforeOpen(DataSet: TDataSet);
    procedure qryBaseGroupsBeforeOpen(DataSet: TDataSet);
    procedure qryBaseGroupsAfterClose(DataSet: TDataSet);
    procedure qryBaseGroupCandidateProductsBeforeOpen(DataSet: TDataSet);
    procedure qryBaseGroupCandidateProductsAfterClose(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure prvCommonProductsAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvCommonProductsGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure qryCommonProductJoinedProductsBeforeScroll(DataSet: TDataSet);
    procedure prvBaseGroupsGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure qryBaseGroupProductsBeforeScroll(DataSet: TDataSet);
    procedure prvBaseGroupsAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryBaseGroupsAfterOpen(DataSet: TDataSet);
  private
    FDocsDelta: Variant;
  protected
    function NewBaseGroupCode: Integer;
    function HasSMVSOperationsForDept(ADeptCode: Integer): Boolean;
  end;

type
  IdmBaseGroupsProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmBaseGroupsProxy = class(TDBPooledDataModuleProxy, IdmBaseGroupsProxy)
  private
    class var FSingleton: TdmBaseGroupsProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmBaseGroups>;
  strict protected
    property LockedInstance: ISmartLock<TdmBaseGroups> read GetLockedInstance;
  public
    class property Singleton: TdmBaseGroupsProxy read FSingleton;

    function NewBaseGroupCode: Integer;
    function HasSMVSOperationsForDept(ADeptCode: Integer): Boolean;
  end;

implementation

{$R *.dfm}

uses
  uSvrUtils, uDBPooledDataModuleHelper, uUtils;

{ TdmBaseGroupsProxy }

function TdmBaseGroupsProxy.GetLockedInstance: ISmartLock<TdmBaseGroups>;
begin
  Result:= ISmartLock<TdmBaseGroups>(inherited LockedInstance);
end;

function TdmBaseGroupsProxy.HasSMVSOperationsForDept(ADeptCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.HasSMVSOperationsForDept(ADeptCode);
end;

function TdmBaseGroupsProxy.NewBaseGroupCode: Integer;
begin
  Result:= LockedInstance.Value.NewBaseGroupCode;
end;

{ TdmBaseGroups }

procedure TdmBaseGroups.DataModuleCreate(Sender: TObject);
begin
  RegisterMacroLibrary(mshLocalMacroLibrary);
  inherited;
end;

procedure TdmBaseGroups.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  UnregisterMacroLibrary(mshLocalMacroLibrary);
end;

function TdmBaseGroups.HasSMVSOperationsForDept(ADeptCode: Integer): Boolean;
begin
  qryHasSMVSOperationsForDept.ParamByName('DEPT_CODE').AsInteger:= ADeptCode;
  qryHasSMVSOperationsForDept.Open;
  try
    Result:= qryHasSMVSOperationsForDeptHAS_SMVS_OPERATIONS_FOR_DEPT.AsBoolean;
  finally
    qryHasSMVSOperationsForDept.Close;
  end;  { try }
end;

function TdmBaseGroups.NewBaseGroupCode: Integer;
begin
  with qryNewBaseGroupCode do
    begin
      Open;
      try
        Result:= qryNewBaseGroupCodeNEW_BASE_GROUP_CODE.AsInteger;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

procedure TdmBaseGroups.prvBaseGroupsBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmBaseGroups.prvBaseGroupsAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmBaseGroups.prvBaseGroupsAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  dsBaseGroups.DataSet:= qryBaseGroups;
end;

procedure TdmBaseGroups.qryBaseGroupsAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmBaseGroups.qryBaseGroupsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmBaseGroups.qryBaseGroupCandidateProductsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CANDIDATE_CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmBaseGroups.qryBaseGroupCandidateProductsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CANDIDATE_CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmBaseGroups.qryBaseGroupProductsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  dsBaseGroups.DataSet:= nil;
end;

procedure TdmBaseGroups.qryBaseGroupsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmBaseGroups.qryBaseGroupsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // отваряме cdsAllBaseGroupProducts тук, за да може да ползва TEMP_FILTERED_PRODUCTS на qryBaseGroups
  cdsAllBaseGroupProducts.Params.AssignValues(qryBaseGroups.Params);
  cdsAllBaseGroupProducts.Open;
end;

procedure TdmBaseGroups.prvBaseGroupsBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  Applied:= not RecordChanged(DeltaDS);

  if (SourceDS = qryBaseGroupProducts) and
     (UpdateKind in [ukModify, ukInsert]) and
     (not VarIsEmpty(DeltaDS.FieldByName('IS_BASE_PRODUCT').NewValue)) and
     (VarToInt(DeltaDS.FieldByName('IS_BASE_PRODUCT').NewValue) = 1) then
    begin
      qryClearBaseGroupBaseProduct.ParamByName('BASE_GROUP_CODE').Value:=
        GetFieldValue(DeltaDS.FieldByName('BASE_GROUP_CODE'));

      qryClearBaseGroupBaseProduct.ExecSQL;
    end;  { if }
end;

procedure TdmBaseGroups.prvBaseGroupsGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  cdsBaseGroupProducts: TDataSet;
  DataSetBASE_GROUP_CODE: TField;
begin
  inherited;

  dsBaseGroups.DataSet:= qryBaseGroups;

  try
    cdsBaseGroupProducts:= (DataSet.FieldByName(qryBaseGroupProducts.Name) as TDataSetField).NestedDataSet;
    DataSetBASE_GROUP_CODE:= DataSet.FieldByName('BASE_GROUP_CODE');

    DataSet.ForEach/
      procedure begin
        cdsAllBaseGroupProducts.Filter:=
          Format('%s = %d',
            [cdsAllBaseGroupProductsBASE_GROUP_CODE.FieldName, DataSetBASE_GROUP_CODE.AsInteger]);

        cdsAllBaseGroupProducts.TempFilter/
          cdsAllBaseGroupProducts.ForEach/
            cdsBaseGroupProducts.SafeAppend/
              procedure begin
                cdsBaseGroupProducts.AssignFields(cdsAllBaseGroupProducts);
              end;
      end;

    // workaround na posledvashto goliamo zamisliane v TBaseProvider.DoOnGetData na proverka za ChangeCount > 0
    DataSet.AppendRecord([]);
    DataSet.MergeChangeLog;
    DataSet.Delete;
  finally
    cdsAllBaseGroupProducts.Close;
  end;
end;

procedure TdmBaseGroups.prvCommonProductsAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  dsCommonProducts.DataSet:= qryCommonProducts;
end;

procedure TdmBaseGroups.prvCommonProductsBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (SourceDS = qryCommonProducts) then
    begin
      if (UpdateKind = ukModify) and
         (not VarIsEmpty(DeltaDS.FieldByName('JOINED_TO_PRODUCT_CODE').NewValue)) then
        begin
          qryUpdDefiniteProduct.ParamByName('PRODUCT_CODE').AsInteger:=
            DeltaDS.FieldByName('COMMON_PRODUCT_CODE').OldValue;
          qryUpdDefiniteProduct.ParamByName('COMMON_PRODUCT_CODE').Value:=
            DeltaDS.FieldByName('JOINED_TO_PRODUCT_CODE').NewValue;

          qryUpdDefiniteProduct.ExecSQL;
        end;  { if }

      Applied:= True;
    end;  { if }

  if (SourceDS = qryCommonProductJoinedProducts) then
    begin
      SetParams(qryUpdDefiniteProduct.Params, DeltaDS);
      if (UpdateKind = ukDelete) then
        qryUpdDefiniteProduct.ParamByName('COMMON_PRODUCT_CODE').Clear;

      qryUpdDefiniteProduct.ExecSQL;

      if (UpdateKind = ukInsert) or
         ( (UpdateKind = ukModify) and
           (not VarIsNullOrEmpty(DeltaDS.FieldByName('IS_THOROUGHLY_ENGINEERED').NewValue)) ) then
        begin
          SetParams(qryUpdIsThoroughlyEngineered.Params, DeltaDS);
          qryUpdIsThoroughlyEngineered.ExecSQL;
        end;

      Applied:= True;
    end;  { if }
end;

procedure TdmBaseGroups.prvCommonProductsGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  cdsCommonProductJoinedProducts: TDataSet;
  DataSetCOMMON_PRODUCT_CODE: TField;
begin
  inherited;

  dsCommonProducts.DataSet:= qryCommonProducts;

  cdsCommonProductJoinedProducts:= (DataSet.FieldByName(qryCommonProductJoinedProducts.Name) as TDataSetField).NestedDataSet;
  DataSetCOMMON_PRODUCT_CODE:= DataSet.FieldByName('COMMON_PRODUCT_CODE');

  cdsAllCommonProductJoinedProducts.Params.AssignValues(qryCommonProducts.CustomParams);
  cdsAllCommonProductJoinedProducts.Params.AssignValues(qryCommonProducts.Params);

  cdsAllCommonProductJoinedProducts.TempOpen/
    DataSet.ForEach/
      procedure begin
        cdsAllCommonProductJoinedProducts.Filter:=
          Format('%s = %d',
            [cdsAllCommonProductJoinedProductsCOMMON_PRODUCT_CODE.FieldName, DataSetCOMMON_PRODUCT_CODE.AsInteger]);

        cdsAllCommonProductJoinedProducts.TempFilter/
          cdsAllCommonProductJoinedProducts.ForEach/
            cdsCommonProductJoinedProducts.SafeAppend/
              procedure begin
                cdsCommonProductJoinedProducts.AssignFields(cdsAllCommonProductJoinedProducts);
              end;
      end;

  // workaround na posledvashto goliamo zamisliane v TBaseProvider.DoOnGetData na proverka za ChangeCount > 0
  DataSet.AppendRecord([]);
  DataSet.MergeChangeLog;
  DataSet.Delete;
end;

procedure TdmBaseGroups.qryCommonProductJoinedProductsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  qryCommonProductJoinedProducts.Params.AssignValues(qryCommonProducts.CustomParams);
  qryCommonProductJoinedProducts.Params.AssignValues(qryCommonProducts.Params);
end;

procedure TdmBaseGroups.qryCommonProductJoinedProductsBeforeScroll(
  DataSet: TDataSet);
begin
  inherited;
  dsCommonProducts.DataSet:= nil;
end;

initialization
  TdmBaseGroupsProxy.FSingleton:= TdmBaseGroupsProxy.Create(TdmBaseGroups);

finalization
  FreeAndNil(TdmBaseGroupsProxy.FSingleton);
end.
