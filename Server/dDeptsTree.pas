unit dDeptsTree;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dNomTree, AbmesClientDataSet, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  DBXDevartOracle, JvStringHolder, uSmartLock;

type
  TdmDeptsTree = class(TdmNomTree)
    qryNodeDataDEPT_IS_STORE: TAbmesFloatField;
    qryNodeChildrenSHOW_NO: TAbmesWideStringField;
    qryNodeDataDEPT_IDENTIFIER: TAbmesWideStringField;
    qryDeptID: TAbmesSQLQuery;
    qryDeptIDDEPT_CODE: TAbmesFloatField;
    qryNodeDataPRODUCT_CODE: TAbmesFloatField;
    qryPrintTreeChildrenSHOW_NO: TAbmesWideStringField;
    cdsPrintTreeChildrenSHOW_NO: TAbmesWideStringField;
    qryPrintTreeSHOW_NO: TAbmesWideStringField;
    qryDeptDoc: TAbmesSQLQuery;
    qryDeptDocDOC_BRANCH_CODE: TAbmesFloatField;
    qryDeptDocDOC_CODE: TAbmesFloatField;
    qryCheckDeptRelation: TAbmesSQLQuery;
    qryCheckDeptRelationANCESTOR_DEPT_CODE: TAbmesFloatField;
    qryCheckDeptRelationDESCENDANT_DEPT_CODE: TAbmesFloatField;
    qryNodeDataPARENT_NODE_ID: TAbmesFloatField;
    qryNodeChildrenIS_STORE: TAbmesFloatField;
    qryNodeChildrenIS_COMPUTERIZED_STORE: TAbmesFloatField;
    qryTreeNodeIS_STORE: TAbmesFloatField;
    qryTreeNodeIS_COMPUTERIZED_STORE: TAbmesFloatField;
    qryTreeNodeChildrenIS_STORE: TAbmesFloatField;
    qryTreeNodeChildrenIS_COMPUTERIZED_STORE: TAbmesFloatField;
    qryTreeToNodeIS_STORE: TAbmesFloatField;
    qryTreeToNodeIS_COMPUTERIZED_STORE: TAbmesFloatField;
    qryNodeDataDEPT_FULL_NAME: TAbmesWideStringField;
    qryNodeDataDOC_BRANCH_CODE: TAbmesFloatField;
    qryNodeDataDOC_CODE: TAbmesFloatField;
    qryNodeDataHAS_DOCUMENTATION: TAbmesFloatField;
    qryNodeChildrenHAS_DOCUMENTATION: TAbmesFloatField;
    qryDateDeptPrices: TAbmesSQLQuery;
    qryDateDeptPricesHOUR_PRICE: TAbmesFloatField;
    qryTreeNodeChildrenSHOW_NO: TAbmesWideStringField;
    qryTreeToNodeSHOW_NO: TAbmesWideStringField;
    qryGraphObjectSet: TAbmesSQLQuery;
    qryGraphObjects: TAbmesSQLQuery;
    qryGraphObjectPoints: TAbmesSQLQuery;
    qryGraphObjectTypes: TAbmesSQLQuery;
    prvGraphObjectTypes: TDataSetProvider;
    prvGraphObjectSet: TDataSetProvider;
    qryGraphObjectTypesGRAPH_OBJECT_TYPE_CODE: TAbmesFloatField;
    qryGraphObjectTypesGRAPH_OBJECT_TYPE_NAME: TAbmesWideStringField;
    qryGraphObjectSetGRAPH_OBJECT_SET_CODE: TAbmesFloatField;
    qryGraphObjectSetDEPT_CODE: TAbmesFloatField;
    dsGraphObjectSet: TDataSource;
    qryGraphObjectsGRAPH_OBJECT_SET_CODE: TAbmesFloatField;
    qryGraphObjectsGRAPH_OBJECT_CODE: TAbmesFloatField;
    dsGraphObjects: TDataSource;
    qryGraphObjectsGRAPH_OBJECT_TYPE_CODE: TAbmesFloatField;
    qryGraphObjectPointsGRAPH_OBJECT_SET_CODE: TAbmesFloatField;
    qryGraphObjectPointsGRAPH_OBJECT_CODE: TAbmesFloatField;
    qryGraphObjectPointsGRAPH_OBJECT_POINT_NO: TAbmesFloatField;
    qryGraphObjectPointsX: TAbmesFloatField;
    qryGraphObjectPointsY: TAbmesFloatField;
    qryNodeDataIS_RECURRENT: TAbmesFloatField;
    qryNodeDataBEGIN_DATE: TAbmesSQLTimeStampField;
    qryNodeDataEND_DATE: TAbmesSQLTimeStampField;
    qryNodeDataIS_EXTERNAL: TAbmesFloatField;
    qryNodeChildrenPRODUCT_CODE: TAbmesFloatField;
    qryDeptPeriodData: TAbmesSQLQuery;
    qryDeptPeriodDataPARALLEL_PROCESS_COUNT: TAbmesFloatField;
    qryDateDeptPricesMAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    qryDateDeptPricesPARALLEL_PROCESS_COUNT: TAbmesFloatField;
    qryDateDeptPricesPARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    qryNodeChildrenIS_FIN_STORE: TAbmesFloatField;
    qryNodeDataDEPT_IS_FIN_STORE: TAbmesFloatField;
    qryFindTreeNodesSHOW_NO: TAbmesWideStringField;
    qryGetDeptBranchCode: TAbmesSQLQuery;
    qryGetDeptBranchCodeDEPT_CODE: TAbmesFloatField;
    qryTreeNodeChildrenIS_FIN_STORE: TAbmesFloatField;
    qryTreeToNodeIS_FIN_STORE: TAbmesFloatField;
    qryShowNodeParamsNOM_DOC_BRANCH_CODE: TAbmesFloatField;
    qryShowNodeParamsNOM_DOC_CODE: TAbmesFloatField;
    qryShowNodeParamsNOM_HAS_DOC_ITEMS: TAbmesFloatField;
    qryShowNodeParamsVALUE_NOM_ITEM_DOC_BRANCH_CODE: TAbmesFloatField;
    qryShowNodeParamsVALUE_NOM_ITEM_DOC_CODE: TAbmesFloatField;
    qryShowNodeParamsVALUE_NOM_ITEM_HAS_DOC_ITEMS: TAbmesFloatField;
    procedure cdsPrintTreeChildrenBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure GetDeptData(ANodeID: Integer;
      out NodeName, DeptIdentifier: string;
      out DeptIsStore: Boolean; out ProductCode: Integer;
      out ParentNodeID: Integer; out IsRecurrent: Boolean;
      out BeginDate: TDateTime; out EndDate: TDateTime;
      out IsExternal: Boolean; out DeptIsFinStore: Boolean;
      out HasDocumentation: Boolean);
    function GetDeptID(const DeptIdentifier: string): Integer;
    procedure GetDeptDoc(DeptCode: Integer; out DocBranchCode: Integer; out DocCode: Integer);
    function IsDeptStore(ADeptCode: Integer): Boolean;
    function CheckDeptRelation(NewDeptCode, OldDeptCode: Integer): Integer;
    function GetStoreFullName(StoreCode: Integer): string;
    procedure GetDeptNameAndDoc(DeptCode: Integer; out DeptName: string;
                                out DeptNo: string; out DocBranchCode: Integer;
                                out DocCode: Integer; out HasDocumentation: Boolean);
    procedure GetDeptPrices(
      DeptCode: Integer; PricesDate: TDateTime;
      out HourPrice, MaintainanceHourPrice, ParallelProcessCount, ParallelOperatorCount: Double);
    procedure GetDeptPeriodData(DeptCode: Integer; ADate: TDateTime;
      out ParallelProcessCount: Integer);
    function SkipSQLTest(AQuery: TAbmesSQLQuery): Boolean; override;
    function GetDeptBranchCode(ADeptCode: Integer): Integer;
  end;

type
  IdmDeptsTreeProxy = interface(IdmNomTreeProxy)
    procedure GetDeptData(ANodeID: Integer;
      out NodeName, DeptIdentifier: string;
      out DeptIsStore: Boolean; out ProductCode: Integer;
      out ParentNodeID: Integer; out IsRecurrent: Boolean;
      out BeginDate: TDateTime; out EndDate: TDateTime;
      out IsExternal: Boolean; out DeptIsFinStore: Boolean;
      out HasDocumentation: Boolean);
    function GetDeptID(const DeptIdentifier: string): Integer;
    function IsDeptStore(ADeptCode: Integer): Boolean;
    function GetDeptBranchCode(ADeptCode: Integer): Integer;
  end;

type
  TdmDeptsTreeProxy = class(TdmNomTreeProxy, IdmDeptsTreeProxy)
  private
    class var FSingleton: TdmDeptsTreeProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmDeptsTree>;
  strict protected
    property LockedInstance: ISmartLock<TdmDeptsTree> read GetLockedInstance;
  public
    class property Singleton: TdmDeptsTreeProxy read FSingleton;

    procedure GetDeptData(ANodeID: Integer;
      out NodeName, DeptIdentifier: string;
      out DeptIsStore: Boolean; out ProductCode: Integer;
      out ParentNodeID: Integer; out IsRecurrent: Boolean;
      out BeginDate: TDateTime; out EndDate: TDateTime;
      out IsExternal: Boolean; out DeptIsFinStore: Boolean;
      out HasDocumentation: Boolean);
    function GetDeptID(const DeptIdentifier: string): Integer;
    function IsDeptStore(ADeptCode: Integer): Boolean;

    procedure GetDeptDoc(DeptCode: Integer; out DocBranchCode: Integer; out DocCode: Integer);

    function CheckDeptRelation(NewDeptCode, OldDeptCode: Integer): Integer;

    function GetStoreFullName(StoreCode: Integer): string;
    procedure GetDeptNameAndDoc(DeptCode: Integer; out DeptName: string;
                                out DeptNo: string; out DocBranchCode: Integer;
                                out DocCode: Integer; out HasDocumentation: Boolean);
    procedure GetDeptPrices(
      DeptCode: Integer; PricesDate: TDateTime;
      out HourPrice, MaintainanceHourPrice, ParallelProcessCount, ParallelOperatorCount: Double);
    procedure GetDeptPeriodData(DeptCode: Integer; ADate: TDateTime;
      out ParallelProcessCount: Integer);
    function GetDeptBranchCode(ADeptCode: Integer): Integer;
  end;

implementation

uses
  uUtils;

{$R *.DFM}

{ TdmDeptsTreeProxy }

function TdmDeptsTreeProxy.GetLockedInstance: ISmartLock<TdmDeptsTree>;
begin
  Result:= ISmartLock<TdmDeptsTree>(inherited LockedInstance);
end;

function TdmDeptsTreeProxy.GetDeptBranchCode(ADeptCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetDeptBranchCode(ADeptCode);
end;

procedure TdmDeptsTreeProxy.GetDeptData(ANodeID: Integer;
  out NodeName, DeptIdentifier: string;
  out DeptIsStore: Boolean; out ProductCode: Integer;
  out ParentNodeID: Integer; out IsRecurrent: Boolean;
  out BeginDate: TDateTime; out EndDate: TDateTime;
  out IsExternal: Boolean; out DeptIsFinStore: Boolean;
  out HasDocumentation: Boolean);
begin
  LockedInstance.Value.GetDeptData(
    ANodeID, NodeName, DeptIdentifier, DeptIsStore,
    ProductCode, ParentNodeID, IsRecurrent, BeginDate, EndDate, IsExternal, DeptIsFinStore, HasDocumentation);
end;

function TdmDeptsTreeProxy.GetDeptID(const DeptIdentifier: string): Integer;
begin
  Result:= LockedInstance.Value.GetDeptID(DeptIdentifier);
end;

procedure TdmDeptsTreeProxy.GetDeptDoc(DeptCode: Integer;
  out DocBranchCode, DocCode: Integer);
begin
  LockedInstance.Value.GetDeptDoc(DeptCode, DocBranchCode, DocCode);
end;

function TdmDeptsTreeProxy.IsDeptStore(ADeptCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.IsDeptStore(ADeptCode);
end;

function TdmDeptsTreeProxy.CheckDeptRelation(NewDeptCode, OldDeptCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.CheckDeptRelation(NewDeptCode, OldDeptCode);
end;

procedure TdmDeptsTreeProxy.GetDeptNameAndDoc(DeptCode: Integer;
  out DeptName, DeptNo: string; out DocBranchCode, DocCode: Integer; out HasDocumentation: Boolean);
begin
  LockedInstance.Value.GetDeptNameAndDoc(DeptCode, DeptName, DeptNo, DocBranchCode, DocCode, HasDocumentation);
end;

function TdmDeptsTreeProxy.GetStoreFullName(
  StoreCode: Integer): string;
begin
  Result:= LockedInstance.Value.GetStoreFullName(StoreCode);
end;

procedure TdmDeptsTreeProxy.GetDeptPeriodData(DeptCode: Integer;
  ADate: TDateTime; out ParallelProcessCount: Integer);
begin
  LockedInstance.Value.GetDeptPeriodData(DeptCode, ADate, ParallelProcessCount);
end;

procedure TdmDeptsTreeProxy.GetDeptPrices(
  DeptCode: Integer; PricesDate: TDateTime;
  out HourPrice, MaintainanceHourPrice, ParallelProcessCount, ParallelOperatorCount: Double);
begin
  LockedInstance.Value.GetDeptPrices(
    DeptCode, PricesDate, HourPrice, MaintainanceHourPrice,
    ParallelProcessCount, ParallelOperatorCount);
end;

{ TdmDeptsTree }

procedure TdmDeptsTree.cdsPrintTreeChildrenBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsPrintTreeChildren.Params.ParamByName('SHOW_FIN_STORES').Assign(
    qryPrintTree.CustomParams.ParamByName('SHOW_FIN_STORES'));
  cdsPrintTreeChildren.Params.ParamByName('SHOW_OWD_FIN_STORES').Assign(
    qryPrintTree.CustomParams.ParamByName('SHOW_OWD_FIN_STORES'));
end;

function TdmDeptsTree.CheckDeptRelation(NewDeptCode, OldDeptCode: Integer): Integer;
begin
  with qryCheckDeptRelation do
    begin
      ParamByName('NEW_DEPT_CODE').AsInteger:= NewDeptCode;
      ParamByName('OLD_DEPT_CODE').AsInteger:= OldDeptCode;

      Open;
      try
        if IsEmpty then
          Result:= 0
        else
          begin
            if (qryCheckDeptRelationDESCENDANT_DEPT_CODE.AsInteger = NewDeptCode) then
              Result:= 1
            else
              Result:= 2;
          end;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

function TdmDeptsTree.GetDeptBranchCode(ADeptCode: Integer): Integer;
begin
  qryGetDeptBranchCode.ParamByName('DEPT_CODE').AsInteger:= ADeptCode;
  Result:= qryGetDeptBranchCode.TempOpen/
    function: Integer begin
      Result:= qryGetDeptBranchCodeDEPT_CODE.AsInteger;
    end;
end;

procedure TdmDeptsTree.GetDeptData(ANodeID: Integer;
  out NodeName, DeptIdentifier: string;
  out DeptIsStore: Boolean; out ProductCode: Integer;
  out ParentNodeID: Integer; out IsRecurrent: Boolean;
  out BeginDate: TDateTime; out EndDate: TDateTime;
  out IsExternal: Boolean; out DeptIsFinStore: Boolean;
  out HasDocumentation: Boolean);
begin
  qryNodeData.ParamByName('NODE_ID').AsInteger:= ANodeID;
  qryNodeData.Open;
  try
    NodeName:= qryNodeDataNODE_NAME.AsString;
    DeptIdentifier:= qryNodeDataDEPT_IDENTIFIER.AsString;
    DeptIsStore:= qryNodeDataDEPT_IS_STORE.AsBoolean;
    ProductCode:= qryNodeDataPRODUCT_CODE.AsInteger;
    ParentNodeID:= qryNodeDataPARENT_NODE_ID.AsInteger;
    IsRecurrent:= qryNodeDataIS_RECURRENT.AsBoolean;
    BeginDate:= qryNodeDataBEGIN_DATE.AsDateTime;
    EndDate:= qryNodeDataEND_DATE.AsDateTime;
    IsExternal:= qryNodeDataIS_EXTERNAL.AsBoolean;
    DeptIsFinStore:= qryNodeDataDEPT_IS_FIN_STORE.AsBoolean;
    HasDocumentation:= qryNodeDataHAS_DOCUMENTATION.AsBoolean;
  finally
    qryNodeData.Close;
  end;  { try }
end;

procedure TdmDeptsTree.GetDeptDoc(DeptCode: Integer; out DocBranchCode,
  DocCode: Integer);
begin
  with qryDeptDoc do
    begin
      ParamByName('DEPT_CODE').AsInteger:= DeptCode;

      Open;
      try
        DocBranchCode:= qryDeptDocDOC_BRANCH_CODE.AsInteger;
        DocCode:= qryDeptDocDOC_CODE.AsInteger;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

function TdmDeptsTree.GetDeptID(const DeptIdentifier: string): Integer;
begin
  with qryDeptID do
    begin
      ParamByName('DEPT_IDENTIFIER').AsString:= DeptIdentifier;

      Open;
      try
        Result:= qryDeptIDDEPT_CODE.AsInteger;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

procedure TdmDeptsTree.GetDeptNameAndDoc(DeptCode: Integer; out DeptName,
  DeptNo: string; out DocBranchCode, DocCode: Integer; out HasDocumentation: Boolean);
begin
  qryNodeData.ParamByName('NODE_ID').AsInteger:= DeptCode;
  qryNodeData.Open;
  try
    DeptName:= qryNodeDataNODE_NAME.AsString;
    DeptNo:= qryNodeDataDEPT_IDENTIFIER.AsString;
    DocBranchCode:= qryNodeDataDOC_BRANCH_CODE.AsInteger;
    DocCode:= qryNodeDataDOC_CODE.AsInteger;
    HasDocumentation:= qryNodeDataHAS_DOCUMENTATION.AsBoolean;
  finally
    qryNodeData.Close;
  end;  { try }
end;

procedure TdmDeptsTree.GetDeptPeriodData(DeptCode: Integer;
  ADate: TDateTime; out ParallelProcessCount: Integer);
begin
  qryDeptPeriodData.ParamByName('DEPT_CODE').AsInteger:= DeptCode;
  qryDeptPeriodData.ParamByName('THE_DATE').AsDateTime:= ADate;
  qryDeptPeriodData.Open;
  try
    ParallelProcessCount:= qryDeptPeriodDataPARALLEL_PROCESS_COUNT.AsInteger;
  finally
    qryDeptPeriodData.Close;
  end;
end;

procedure TdmDeptsTree.GetDeptPrices(
  DeptCode: Integer; PricesDate: TDateTime;
  out HourPrice, MaintainanceHourPrice, ParallelProcessCount, ParallelOperatorCount: Double);
begin
  with qryDateDeptPrices do
    begin
      ParamByName('DEPT_CODE').AsInteger:= DeptCode;
      ParamByName('PRICES_DATE').AsDateTime:= PricesDate;

      Open;
      try
        HourPrice:= VarToFloatNaN(qryDateDeptPricesHOUR_PRICE.AsVariant);
        MaintainanceHourPrice:= VarToFloatNaN(qryDateDeptPricesMAINTAINANCE_HOUR_PRICE.AsVariant);
        ParallelProcessCount:= VarToFloatNaN(qryDateDeptPricesPARALLEL_PROCESS_COUNT.AsVariant);
        ParallelOperatorCount:= VarToFloatNaN(qryDateDeptPricesPARALLEL_OPERATOR_COUNT.AsVariant);
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmDeptsTree.GetStoreFullName(StoreCode: Integer): string;
begin
  qryNodeData.ParamByName('NODE_ID').AsInteger:= StoreCode;
  qryNodeData.Open;
  try
    Result:= qryNodeDataDEPT_FULL_NAME.AsString;
  finally
    qryNodeData.Close;
  end;  { try }
end;

function TdmDeptsTree.IsDeptStore(ADeptCode: Integer): Boolean;
var
  DeptName: string;
  DeptIdentifier: string;
  IsStore: Boolean;
  ProductCode: Integer;
  ParentNodeID: Integer;
  IsRecurrent: Boolean;
  BeginDate: TDateTime;
  EndDate: TDateTime;
  IsExternal: Boolean;
  DeptIsFinStore: Boolean;
  HasDocumentation: Boolean;
begin
  GetDeptData(ADeptCode, DeptName, DeptIdentifier, IsStore, ProductCode,
    ParentNodeID, IsRecurrent, BeginDate, EndDate, IsExternal, DeptIsFinStore, HasDocumentation);
  Result:= IsStore;
end;

function TdmDeptsTree.SkipSQLTest(AQuery: TAbmesSQLQuery): Boolean;
begin
  Result:=
    (AQuery = qryGraphObjectSet) or
    (AQuery = qryGraphObjects) or
    (AQuery = qryGraphObjectPoints) or
    (AQuery = qryGraphObjectTypes) or
    inherited SkipSQLTest(AQuery);
end;

initialization
  TdmDeptsTreeProxy.FSingleton:= TdmDeptsTreeProxy.Create(TdmDeptsTree);

finalization
  FreeAndNil(TdmDeptsTreeProxy.FSingleton);
end.
