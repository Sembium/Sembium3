unit dEngineering;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes,
  DBClient, dPooledDataModule, dDBPooledDataModule,
  DB, AbmesSQLQuery, Provider, AbmesFields, WideStrings, FMTBcd,
  SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmEngineering = class(TDBPooledDataModule)
    prvEngineeringOrder: TDataSetProvider;
    qryEngineeringOrder: TAbmesSQLQuery;
    prvProductEngineering: TDataSetProvider;
    qryProductEngineering: TAbmesSQLQuery;
    qryEngineeringOrderENGINEERING_ORDER_CODE: TAbmesFloatField;
    qryEngineeringOrderENGINEERING_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryEngineeringOrderENGINEERING_ORDER_NO: TAbmesFloatField;
    qryEngineeringOrderENGINEERING_ORDER_TYPE_CODE: TAbmesFloatField;
    qryEngineeringOrderDOC_BRANCH_CODE: TAbmesFloatField;
    qryEngineeringOrderDOC_CODE: TAbmesFloatField;
    qryEngineeringOrderHAS_DOC_ITEMS: TAbmesFloatField;
    qryEngineeringOrderPRIORITY_CODE: TAbmesFloatField;
    qryEngineeringOrderORDER_DEPT_CODE: TAbmesFloatField;
    qryEngineeringOrderPRODUCT_CODE: TAbmesFloatField;
    qryEngineeringOrderTHOROUGHLY_ENG_PRODUCT_CODE: TAbmesFloatField;
    qryEngineeringOrderENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrderENGINEERING_DEPT_CODE: TAbmesFloatField;
    qryEngineeringOrderENGINEERING_EMPLOYEE_CODE: TAbmesFloatField;
    qryEngineeringOrderENGINEERING_PLAN_WORKDAYS: TAbmesFloatField;
    qryEngineeringOrderACTIVATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEngineeringOrderACTIVATE_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrderACTIVATE_TIME: TAbmesSQLTimeStampField;
    qryEngineeringOrderCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEngineeringOrderCLOSE_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrderCLOSE_TIME: TAbmesSQLTimeStampField;
    qryEngineeringOrderANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryEngineeringOrderANNUL_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrderANNUL_TIME: TAbmesSQLTimeStampField;
    qryEngineeringOrderCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEngineeringOrderCREATE_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrderCREATE_TIME: TAbmesSQLTimeStampField;
    qryEngineeringOrderCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEngineeringOrderCHANGE_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrderCHANGE_TIME: TAbmesSQLTimeStampField;
    qryEngineeringOrderCHANGE_COUNT: TAbmesFloatField;
    qryNewEngineeringOrderNo: TAbmesSQLQuery;
    qryNewEngineeringOrderNoNEW_ENGINEERING_ORDER_NO: TAbmesFloatField;
    qryNewEngineeringOrderCode: TAbmesSQLQuery;
    qryNewEngineeringOrderCodeNEW_ENGINEERING_ORDER_CODE: TAbmesFloatField;
    prvEngineeringOrderTypes: TDataSetProvider;
    qryEngineeringOrderTypes: TAbmesSQLQuery;
    qryEngineeringOrderTypesENGINEERING_ORDER_TYPE_CODE: TAbmesFloatField;
    qryEngineeringOrderTypesENGINEERING_ORDER_TYPE_NAME: TAbmesWideStringField;
    qryEngineeringOrderTypesENGINEERING_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryNewEngineeringOrderTypeCode: TAbmesSQLQuery;
    qryNewEngineeringOrderTypeCodeNEW_ENG_ORDER_TYPE_CODE: TAbmesFloatField;
    qryEngineeringOrderPRODUCT_PARENT_CODE: TAbmesFloatField;
    qryThorughlyEngineeredProduct: TAbmesSQLQuery;
    qryThorughlyEngineeredProductPRODUCT_CODE: TAbmesFloatField;
    prvEngineeringOrders: TDataSetProvider;
    qryEngineeringOrders: TAbmesSQLQuery;
    qryEngineeringOrdersENGINEERING_ORDER_CODE: TAbmesFloatField;
    qryEngineeringOrdersDOC_BRANCH_CODE: TAbmesFloatField;
    qryEngineeringOrdersDOC_CODE: TAbmesFloatField;
    qryEngineeringOrdersHAS_DOC_ITEMS: TAbmesFloatField;
    qryEngineeringOrdersSPEC_STATE_CODE: TAbmesFloatField;
    qryEngineeringOrdersEO_STATE_CODE: TAbmesFloatField;
    qryEngineeringOrdersENGINEERING_ORDER_IDENTIFIER: TAbmesWideStringField;
    qryEngineeringOrdersPARENT_ENG_ORDER_IDENTIFIER: TAbmesWideStringField;
    qryEngineeringOrdersPRIORITY_NO: TAbmesFloatField;
    qryEngineeringOrdersPRIORITY_FULL_NAME: TAbmesWideStringField;
    qryEngineeringOrdersPRIORITY_COLOR: TAbmesFloatField;
    qryEngineeringOrdersPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryEngineeringOrdersORDER_DEPT_NAME: TAbmesWideStringField;
    qryEngineeringOrdersPRODUCT_CODE: TAbmesFloatField;
    qryEngineeringOrdersPRODUCT_PARENT_CODE: TAbmesFloatField;
    qryEngineeringOrdersPRODUCT_NAME: TAbmesWideStringField;
    qryEngineeringOrdersPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryEngineeringOrdersHAS_THOROUGHLY_ENG_PRODUCT: TAbmesFloatField;
    qryEngineeringOrdersCOMMON_STATUS_CODE: TAbmesFloatField;
    qryEngineeringOrdersCOMMON_PRODUCT_LEVELS: TAbmesWideStringField;
    qryEngineeringOrdersJOINED_SIBLINGS: TAbmesWideStringField;
    qryEngineeringOrdersENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrdersENGINEERING_FINAL_DATE_DIFF: TAbmesFloatField;
    qryEngineeringOrdersENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrdersENGINEERING_START_DATE_DIFF: TAbmesFloatField;
    qryEngineeringOrdersENGINEERING_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryEngineeringOrdersENGINEERING_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryEngineeringOrdersENGINEERING_PLAN_WORKDAYS: TAbmesFloatField;
    qryEngineeringOrdersENGINEERING_REAL_WORKDAYS: TAbmesFloatField;
    qryEngineeringOrdersENGINEERING_WORKDAYS_DIFF: TAbmesFloatField;
    qryEngineeringOrdersENGINEERING_WORKDAYS_DIFF_PCT: TAbmesFloatField;
    qryEngineeringOrdersCREATE_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrdersCREATE_TIME: TAbmesSQLTimeStampField;
    qryEngineeringOrdersCREATE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryEngineeringOrdersCHANGE_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrdersCHANGE_TIME: TAbmesSQLTimeStampField;
    qryEngineeringOrdersCHANGE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryEngineeringOrdersACTIVATE_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrdersACTIVATE_TIME: TAbmesSQLTimeStampField;
    qryEngineeringOrdersACTIVATE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryEngineeringOrdersCLOSE_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrdersCLOSE_TIME: TAbmesSQLTimeStampField;
    qryEngineeringOrdersCLOSE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryEngineeringOrdersANNUL_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrdersANNUL_TIME: TAbmesSQLTimeStampField;
    qryEngineeringOrdersANNUL_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryEngineeringOrderPARENT_ENGINEERING_ORDER_CODE: TAbmesFloatField;
    qryEngineeringOrderPARENT_ENG_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryEngineeringOrderPARENT_ENG_ORDER_NO: TAbmesFloatField;
    qryEngineeringOrderHAS_PARENT_ENGINEERING_ORDER: TAbmesFloatField;
    qryGetEngineeringOrderCode: TAbmesSQLQuery;
    qryGetEngineeringOrderCodeENGINEERING_ORDER_CODE: TAbmesFloatField;
    qryEngineeringOrdersHAS_PARENT_ENGINEERING_ORDER: TAbmesFloatField;
    qryEngineeringOrderHAS_CHILD_ENGINEERING_ORDERS: TAbmesFloatField;
    qryEngineeringOrdersHAS_CHILDREN: TAbmesFloatField;
    qryProductEngineeringCOMMON_STATUS_CODE: TAbmesFloatField;
    qryProductEngineeringCOMMON_PRODUCTS_LEVEL_NO: TAbmesFloatField;
    qryProductEngineeringCOMMON_PRODUCTS_SUB_LEVELS: TAbmesFloatField;
    qryProductEngineeringSPEC_STATE_CODE: TAbmesFloatField;
    qryProductEngineeringSPEC_CREATE_DATE: TAbmesSQLTimeStampField;
    qryProductEngineeringSPEC_CHANGE_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrdersPARTNER_PRODUCT_NAMES: TAbmesWideStringField;
    qryEngineeringOrdersPARENT_ENGINEERING_ORDER_CODE: TAbmesFloatField;
    qryEngineeringOrderNOTES: TAbmesWideStringField;
    qryEngineeringOrdersNOTES: TAbmesWideStringField;
    qryEngineeringOrdersHAS_NOTCLOSED_ORDERS: TAbmesFloatField;
    procedure prvEngineeringOrderBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvEngineeringOrderTypesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvEngineeringOrdersGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvEngineeringOrderBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvEngineeringOrderAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryEngineeringOrderAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure qryEngineeringOrdersBeforeOpen(DataSet: TDataSet);
    procedure qryEngineeringOrdersAfterClose(DataSet: TDataSet);
  private
    FDocsDelta: Variant;
    function NewEngineeringOrderTypeCode: Integer;
  protected
    function NewEngineeringOrderCode: Integer;
    function NewEngineeringOrderNo: Integer;
    function GetProductThoroughlyEngineeredProduct(ProductCode: Integer): Integer;
    function GetEngineeringOrderCode(
      EngineeringOrderBranchCode: Integer; EngineeringOrderNo: Integer): Integer;
  end;

type
  IdmEngineeringProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmEngineeringProxy = class(TDBPooledDataModuleProxy, IdmEngineeringProxy)
  private
    class var FSingleton: TdmEngineeringProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmEngineering>;
  strict protected
    property LockedInstance: ISmartLock<TdmEngineering> read GetLockedInstance;
  public
    class property Singleton: TdmEngineeringProxy read FSingleton;

    function NewEngineeringOrderCode: Integer;
    function NewEngineeringOrderNo: Integer;
    function GetProductThoroughlyEngineeredProduct(ProductCode: Integer): Integer;
    function GetEngineeringOrderCode(
      EngineeringOrderBranchCode: Integer; EngineeringOrderNo: Integer): Integer;
  end;

implementation

{$R *.DFM}

uses
  Variants, uDBPooledDataModuleHelper, uSvrUtils, uUtils;

{ TdmEngineeringProxy }

function TdmEngineeringProxy.GetLockedInstance: ISmartLock<TdmEngineering>;
begin
  Result:= ISmartLock<TdmEngineering>(inherited LockedInstance);
end;

function TdmEngineeringProxy.GetEngineeringOrderCode(EngineeringOrderBranchCode,
  EngineeringOrderNo: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetEngineeringOrderCode(EngineeringOrderBranchCode, EngineeringOrderNo);
end;

function TdmEngineeringProxy.NewEngineeringOrderCode: Integer;
begin
  Result:= LockedInstance.Value.NewEngineeringOrderCode;
end;

function TdmEngineeringProxy.NewEngineeringOrderNo: Integer;
begin
  Result:= LockedInstance.Value.NewEngineeringOrderNo;
end;

function TdmEngineeringProxy.GetProductThoroughlyEngineeredProduct(
  ProductCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetProductThoroughlyEngineeredProduct(ProductCode);
end;

{ TdmEngineering }

function TdmEngineering.GetEngineeringOrderCode(EngineeringOrderBranchCode,
  EngineeringOrderNo: Integer): Integer;
begin
  qryGetEngineeringOrderCode.ParamByName('ENGINEERING_ORDER_BRANCH_CODE').AsInteger:=
    EngineeringOrderBranchCode;
  qryGetEngineeringOrderCode.ParamByName('ENGINEERING_ORDER_NO').AsInteger:=
    EngineeringOrderNo;

  qryGetEngineeringOrderCode.Open;
  try
    Result:= qryGetEngineeringOrderCodeENGINEERING_ORDER_CODE.AsInteger;
  finally
    qryGetEngineeringOrderCode.Close;
  end;
end;

function TdmEngineering.GetProductThoroughlyEngineeredProduct(
  ProductCode: Integer): Integer;
begin
  with qryThorughlyEngineeredProduct do
    begin
      ParamByName('PRODUCT_CODE').AsInteger:= ProductCode;
      Open;
      try
        Result:= qryThorughlyEngineeredProductPRODUCT_CODE.AsInteger;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmEngineering.NewEngineeringOrderCode: Integer;
begin
  qryNewEngineeringOrderCode.Open;
  try
    Result:= qryNewEngineeringOrderCodeNEW_ENGINEERING_ORDER_CODE.AsInteger;
  finally
    qryNewEngineeringOrderCode.Close;
  end;  { try }
end;

function TdmEngineering.NewEngineeringOrderNo: Integer;
begin
  qryNewEngineeringOrderNo.Open;
  try
    Result:= qryNewEngineeringOrderNoNEW_ENGINEERING_ORDER_NO.AsInteger;
  finally
    qryNewEngineeringOrderNo.Close;
  end;  { try }
end;

function TdmEngineering.NewEngineeringOrderTypeCode: Integer;
begin
  qryNewEngineeringOrderTypeCode.Open;
  try
    Result:= qryNewEngineeringOrderTypeCodeNEW_ENG_ORDER_TYPE_CODE.AsInteger;
  finally
    qryNewEngineeringOrderTypeCode.Close;
  end;  { try }
end;

procedure TdmEngineering.prvEngineeringOrderBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukInsert) then
    begin
      DeltaDS.FieldByName('ENGINEERING_ORDER_NO').NewValue:= NewEngineeringOrderNo;

      DeltaDS.FieldByName('CREATE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
      DeltaDS.FieldByName('CREATE_DATE').NewValue:= ContextDate;
      DeltaDS.FieldByName('CREATE_TIME').NewValue:= ContextTime;
    end;  { if }

  if (UpdateKind <> ukDelete) then
    begin
      DeltaDS.FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
      DeltaDS.FieldByName('CHANGE_DATE').NewValue:= ContextDate;
      DeltaDS.FieldByName('CHANGE_TIME').NewValue:= ContextTime;
    end;  { if }

  Applied:= not RecordChanged(DeltaDS);
end;

procedure TdmEngineering.prvEngineeringOrderTypesBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('ENGINEERING_ORDER_TYPE_CODE').NewValue:= NewEngineeringOrderTypeCode;
end;

procedure TdmEngineering.prvEngineeringOrdersGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  inherited;

  with DataSet do
    begin
      First;
      while not Eof do
        begin
          Edit;
          try
            FieldByName('ENGINEERING_WORKDAYS_DIFF').AsInteger:=
              FieldByName('ENGINEERING_PLAN_WORKDAYS').AsInteger -
              FieldByName('ENGINEERING_REAL_WORKDAYS').AsInteger;

            if (FieldByName('ENGINEERING_PLAN_WORKDAYS').AsInteger = 0) then
              FieldByName('ENGINEERING_WORKDAYS_DIFF_PCT').AsFloat:= 0
            else
              FieldByName('ENGINEERING_WORKDAYS_DIFF_PCT').AsFloat:=
                FieldByName('ENGINEERING_WORKDAYS_DIFF').AsInteger /
                FieldByName('ENGINEERING_PLAN_WORKDAYS').AsInteger * 100;

            Post;
          except
            Cancel;
            raise;
          end;  { try }

          if (qryEngineeringOrders.CustomParams.ParamByName('GET_ENGINEERING_ORDERS_TREE').AsInteger = 1) or

             ( (qryEngineeringOrders.CustomParams.ParamByName('BEGIN_ENG_FINAL_DATE_DIFF').IsNull or
                ((DataSet.FieldByName('ENGINEERING_WORKDAYS_DIFF').AsFloat >=
                  qryEngineeringOrders.CustomParams.ParamByName('BEGIN_ENG_FINAL_DATE_DIFF').AsFloat))) and

               (qryEngineeringOrders.CustomParams.ParamByName('END_ENG_FINAL_DATE_DIFF').IsNull or
                ((DataSet.FieldByName('ENGINEERING_WORKDAYS_DIFF').AsFloat <=
                  qryEngineeringOrders.CustomParams.ParamByName('END_ENG_FINAL_DATE_DIFF').AsFloat))) and

               (qryEngineeringOrders.CustomParams.ParamByName('BEGIN_ENG_WORKDAYS_DIFF_PCT').IsNull or
                ((DataSet.FieldByName('ENGINEERING_WORKDAYS_DIFF_PCT').AsFloat >=
                  qryEngineeringOrders.CustomParams.ParamByName('BEGIN_ENG_WORKDAYS_DIFF_PCT').AsFloat))) and

               (qryEngineeringOrders.CustomParams.ParamByName('END_ENG_WORKDAYS_DIFF_PCT').IsNull or
                ((DataSet.FieldByName('ENGINEERING_WORKDAYS_DIFF_PCT').AsFloat <=
                  qryEngineeringOrders.CustomParams.ParamByName('END_ENG_WORKDAYS_DIFF_PCT').AsFloat)))
             ) then
            Next
          else
            Delete;
        end;  { while }

      DataSet.ForEach/
        procedure begin
          if DataSet.FieldByName('CLOSE_DATE').IsNull and not DataSet.FieldByName('PARENT_ENGINEERING_ORDER_CODE').IsNull then
            DataSet.PreserveRecNo/
              procedure begin
                while DataSet.Locate('ENGINEERING_ORDER_CODE', DataSet.FieldByName('PARENT_ENGINEERING_ORDER_CODE').AsInteger, []) and
                      (DataSet.FieldByName('HAS_NOTCLOSED_ORDERS').AsInteger = 0) do
                  DataSet.SafeEdit/
                    procedure begin
                      DataSet.FieldByName('HAS_NOTCLOSED_ORDERS').AsInteger:= 1;
                    end;
              end;
        end;

      First;
    end;  { with }
end;

procedure TdmEngineering.prvEngineeringOrderBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmEngineering.prvEngineeringOrderAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmEngineering.qryEngineeringOrderAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmEngineering.qryEngineeringOrdersBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_ORDER_DEPTS'), [(DataSet as TAbmesSQLQuery)], 1);
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_ENGINEERING_DEPTS'), [(DataSet as TAbmesSQLQuery)], 2);
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  ProcessUserParamBeforeQueryOpen((DataSet as TAbmesSQLQuery).Params.ParamByName('ENGINEERING_EMPLOYEE_CODE'), LoginContext);

  with (DataSet as TAbmesSQLQuery) do
    begin
      MacroByName('GET_ENGINEERING_ORDERS_TREE').AsInteger:= CustomParams.ParamByName('GET_ENGINEERING_ORDERS_TREE').AsInteger;

      if (CustomParams.ParamByName('GET_ENGINEERING_ORDERS_TREE').AsInteger = 1) then
        MacroByName('EO_TABLE_OR_TREE').AsString:= 'eo_tree'
      else
        MacroByName('EO_TABLE_OR_TREE').AsString:= 'ENGINEERING_ORDERS';
    end;  { with }
end;

procedure TdmEngineering.qryEngineeringOrdersAfterClose(DataSet: TDataSet);
begin
  inherited;

  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_ENGINEERING_DEPTS'), [(DataSet as TAbmesSQLQuery)], 2);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_ORDER_DEPTS'), [(DataSet as TAbmesSQLQuery)], 1);
end;

initialization
  TdmEngineeringProxy.FSingleton:= TdmEngineeringProxy.Create(TdmEngineering);

finalization
  FreeAndNil(TdmEngineeringProxy.FSingleton);
end.
