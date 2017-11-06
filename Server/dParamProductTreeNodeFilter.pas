unit dParamProductTreeNodeFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, AbmesClientDataSet, dProductTreeNodeFilter,
  dTreeNodeFilter, xChosenNodes, WideStrings, FMTBcd, SqlExpr,
  AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmParamProductTreeNodeFilter = class(TdmProductTreeNodeFilter)
    qryInsChosenNodeParam: TAbmesSQLQuery;
    qryInsFilteredNodesThruCommonProduct: TAbmesSQLQuery;
    qryInsFilteredDeptsThruCommonProduct: TAbmesSQLQuery;
    qryInsChosenNodeParamValue: TAbmesSQLQuery;
  private
    function GetTempChosenNodeParamsTableName(ATempTableNo: Integer): string;
    function GetTempChosenNodeParamValuesTableName(ATempTableNo: Integer): string;
  protected
    function GetInsFilteredNodesQuery(ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod; AChosenNodeMiscsArray: array of TParams): TAbmesSQLQuery; override;
    function GetTempChosenNodeParamsBaseTableName: string; virtual;
    function GetTempChosenNodeParamValuesBaseTableName: string; virtual;
    procedure DoInsChosenNodeParam(AXMLNodeParam: IXMLNodeParam; ATempTableNo, ATempFilterNo: Integer);
    procedure DoInsChosenNodeParamValue(AXMLNodeParamValue: IXMLNodeParamValue; ATempTableNo, ATempFilterNo: Integer);
    procedure InsChosenNode(AXMLChosenNode: IXMLChosenNode; ATempTableNo, ATempFilterNo: Integer); override;
    procedure InsChosenNodeParams(AXMLNodeParams: IXMLNodeParams; ATempTableNo, ATempFilterNo: Integer);
    procedure InsChosenNodeParam(AXMLNodeParam: IXMLNodeParam; ATempTableNo, ATempFilterNo: Integer); virtual;
    procedure InsChosenNodeParamValues(AXMLNodeParamValues: IXMLNodeParamValues; ATempTableNo, ATempFilterNo: Integer);
    procedure InsChosenNodeParamValue(AXMLNodeParamValue: IXMLNodeParamValue; ATempTableNo, ATempFilterNo: Integer); virtual;
    procedure InsFilteredNodes(ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod; const AChosenNodeMiscsArray: array of TParams); override;
    procedure EmptyTempTables(ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod); override;
  end;

type
  IdmParamProductTreeNodeFilterProxy = interface(IdmProductTreeNodeFilterProxy)
  end;

type
  TdmParamProductTreeNodeFilterProxy = class(TdmProductTreeNodeFilterProxy, IdmParamProductTreeNodeFilterProxy)
  private
    class var FSingleton: TdmParamProductTreeNodeFilterProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmParamProductTreeNodeFilter>;
  strict protected
    property LockedInstance: ISmartLock<TdmParamProductTreeNodeFilter> read GetLockedInstance;
  public
    class property Singleton: TdmParamProductTreeNodeFilterProxy read FSingleton;
  end;

implementation

uses
  Variants, uUtils, uDBPooledDataModuleHelper, uProducts, uChosenNodes;

{$R *.DFM}

{ TdmParamProductTreeNodeFilterProxy }

function TdmParamProductTreeNodeFilterProxy.GetLockedInstance: ISmartLock<TdmParamProductTreeNodeFilter>;
begin
  Result:= ISmartLock<TdmParamProductTreeNodeFilter>(inherited LockedInstance);
end;

{ TdmParamProductTreeNodeFilter }

function TdmParamProductTreeNodeFilter.GetInsFilteredNodesQuery(
  ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod;
  AChosenNodeMiscsArray: array of TParams): TAbmesSQLQuery;
var
  p: TParam;
  ChosenNodeMiscs: TParams;
  FirstCommonStatusCodeAsString: string;
begin
  FirstCommonStatusCodeAsString:= '';
  for ChosenNodeMiscs in AChosenNodeMiscsArray do
    begin
      p:= ChosenNodeMiscs.FindParam('COMMON_STATUS_CODE');
      if Assigned(p) and not p.IsNull then
        begin
          FirstCommonStatusCodeAsString:= p.AsString;
          Break;
        end;
    end;

  if (FirstCommonStatusCodeAsString = IntToStr(cscFilterThruCommon)) then
    begin
      if (ATreeNodeFilterInsertMethod = fimSecondary) then
        Result:= qryInsFilteredDeptsThruCommonProduct
      else
        Result:= qryInsFilteredNodesThruCommonProduct;
    end
  else
    Result:= inherited;
end;

function TdmParamProductTreeNodeFilter.GetTempChosenNodeParamsBaseTableName: string;
begin
  Result:= 'TEMP_CHOSEN_PRODUCT_PARAMS';
end;

function TdmParamProductTreeNodeFilter.GetTempChosenNodeParamsTableName(
  ATempTableNo: Integer): string;
begin
  Result:=
    GetTempChosenNodeParamsBaseTableName +
    SvrCommon.GetTempTableSuffix(ATempTableNo);
end;

function TdmParamProductTreeNodeFilter.GetTempChosenNodeParamValuesBaseTableName: string;
begin
  Result:= 'TEMP_CHOSEN_PROD_PARAM_VALS';
end;

function TdmParamProductTreeNodeFilter.GetTempChosenNodeParamValuesTableName(
  ATempTableNo: Integer): string;
begin
  Result:=
    GetTempChosenNodeParamValuesBaseTableName +
    SvrCommon.GetTempTableSuffix(ATempTableNo);
end;

procedure TdmParamProductTreeNodeFilter.DoInsChosenNodeParam(
  AXMLNodeParam: IXMLNodeParam; ATempTableNo, ATempFilterNo: Integer);
begin
  Assert(not VarIsNullOrEmpty(AXMLNodeParam.NodeParamCode));

  qryInsChosenNodeParam.MacroByName('TEMP_CHOSEN_NODE_PARAMS_TABLE_NAME').AsString:=
    GetTempChosenNodeParamsTableName(ATempTableNo);

  qryInsChosenNodeParam.ParamByName('FILTER_LEVEL_NO').AsInteger:= ATempFilterNo;
  qryInsChosenNodeParam.ParamByName('NODE_CODE').AsInteger:= (AXMLNodeParam.ParentNode.ParentNode as IXMLChosenNode).NodeCode;
  qryInsChosenNodeParam.ParamByName('NODE_PARAM_CODE').AsInteger:= AXMLNodeParam.NodeParamCode;

  qryInsChosenNodeParam.ExecSQL;
end;

procedure TdmParamProductTreeNodeFilter.DoInsChosenNodeParamValue(
  AXMLNodeParamValue: IXMLNodeParamValue; ATempTableNo, ATempFilterNo: Integer);
begin
  Assert(not VarIsNullOrEmpty(AXMLNodeParamValue.NodeParamValueCode));

  qryInsChosenNodeParamValue.MacroByName('TEMP_CHOSEN_NODE_PARAM_VALUES_TABLE_NAME').AsString:=
    GetTempChosenNodeParamValuesTableName(ATempTableNo);

  qryInsChosenNodeParamValue.ParamByName('FILTER_LEVEL_NO').AsInteger:= ATempFilterNo;
  qryInsChosenNodeParamValue.ParamByName('NODE_CODE').AsInteger:= (AXMLNodeParamValue.ParentNode.ParentNode.ParentNode.ParentNode as IXMLChosenNode).NodeCode;
  qryInsChosenNodeParamValue.ParamByName('NODE_PARAM_CODE').AsInteger:= (AXMLNodeParamValue.ParentNode.ParentNode as IXMLNodeParam).NodeParamCode;
  qryInsChosenNodeParamValue.ParamByName('NODE_PARAM_VALUE_CODE').AsInteger:= AXMLNodeParamValue.NodeParamValueCode;
  qryInsChosenNodeParamValue.ParamByName('VALUE_NOM_CODE').Value:= AXMLNodeParamValue.ValueNomCode;
  qryInsChosenNodeParamValue.ParamByName('VALUE_NOM_ITEM_CODE').Value:= AXMLNodeParamValue.ValueNomItemCode;
  qryInsChosenNodeParamValue.ParamByName('VALUE_FLOAT_MIN').Value:= AXMLNodeParamValue.ValueFloatMin;
  qryInsChosenNodeParamValue.ParamByName('VALUE_FLOAT_MAX').Value:= AXMLNodeParamValue.ValueFloatMax;
  qryInsChosenNodeParamValue.ParamByName('VALUE_STRING').Value:= AXMLNodeParamValue.ValueString;
  qryInsChosenNodeParamValue.ExecSQL;
end;

procedure TdmParamProductTreeNodeFilter.EmptyTempTables(ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod);
begin
  inherited;
  SvrCommon.TruncateTable(GetTempChosenNodeParamsTableName(ATempTableNo));
  SvrCommon.TruncateTable(GetTempChosenNodeParamValuesTableName(ATempTableNo));
end;

procedure TdmParamProductTreeNodeFilter.InsChosenNode(
  AXMLChosenNode: IXMLChosenNode; ATempTableNo, ATempFilterNo: Integer);
begin
  inherited;
  InsChosenNodeParams(AXMLChosenNode.NodeParams, ATempTableNo, ATempFilterNo);
end;

procedure TdmParamProductTreeNodeFilter.InsChosenNodeParam(
  AXMLNodeParam: IXMLNodeParam; ATempTableNo, ATempFilterNo: Integer);
begin
  DoInsChosenNodeParam(AXMLNodeParam, ATempTableNo, ATempFilterNo);
  InsChosenNodeParamValues(AXMLNodeParam.NodeParamValues, ATempTableNo, ATempFilterNo);
end;

procedure TdmParamProductTreeNodeFilter.InsChosenNodeParams(AXMLNodeParams: IXMLNodeParams;
  ATempTableNo, ATempFilterNo: Integer);
var
  XMLNodeParam: IXMLNodeParam;
begin
  for XMLNodeParam in All(AXMLNodeParams) do
    InsChosenNodeParam(XMLNodeParam, ATempTableNo, ATempFilterNo);
end;

procedure TdmParamProductTreeNodeFilter.InsChosenNodeParamValue(
  AXMLNodeParamValue: IXMLNodeParamValue; ATempTableNo, ATempFilterNo: Integer);
begin
  DoInsChosenNodeParamValue(AXMLNodeParamValue, ATempTableNo, ATempFilterNo);
end;

procedure TdmParamProductTreeNodeFilter.InsChosenNodeParamValues(
  AXMLNodeParamValues: IXMLNodeParamValues; ATempTableNo, ATempFilterNo: Integer);
var
  XMLNodeParamValue: IXMLNodeParamValue;
begin
  for XMLNodeParamValue in All(AXMLNodeParamValues) do
    InsChosenNodeParamValue(XMLNodeParamValue, ATempTableNo, ATempFilterNo);
end;

procedure TdmParamProductTreeNodeFilter.InsFilteredNodes(
  ATempTableNo: Integer;
  ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod;
  const AChosenNodeMiscsArray: array of TParams);
var
  InsFilteredNodesQuery: TAbmesSQLQuery;
begin
  InsFilteredNodesQuery:= GetInsFilteredNodesQuery(ATreeNodeFilterInsertMethod, AChosenNodeMiscsArray);

  InsFilteredNodesQuery.MacroByName('TEMP_CHOSEN_NODE_PARAMS_TABLE_NAME').AsString:=
    GetTempChosenNodeParamsTableName(ATempTableNo);

  InsFilteredNodesQuery.MacroByName('TEMP_CHOSEN_NODE_PARAM_VALUES_TABLE_NAME').AsString:=
    GetTempChosenNodeParamValuesTableName(ATempTableNo);

  inherited;
end;

initialization
  TdmParamProductTreeNodeFilterProxy.FSingleton:= TdmParamProductTreeNodeFilterProxy.Create(TdmParamProductTreeNodeFilter);

finalization
  FreeAndNil(TdmParamProductTreeNodeFilterProxy.FSingleton);
end.
