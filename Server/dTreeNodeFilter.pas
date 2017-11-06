unit dTreeNodeFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, AbmesClientDataSet, xChosenNodes, WideStrings, FMTBcd,
  SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TTreeNodeFilterInsertMethod = (fimBase, fimSecondary);

type
  TdmTreeNodeFilter = class(TDBPooledDataModule)
    qryInsFilteredNodes: TAbmesSQLQuery;
    qryInsChosenNode: TAbmesSQLQuery;
    qryInsChosenNodeMisc: TAbmesSQLQuery;
  private
    function GetAllFilteredNodesParamName(ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod): string;
    function GetTempFilteredNodesTableName(ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod): string;
    function CreateChosenNodeMiscs(const AXMLText: string): TParams;
    procedure InsChosenNodes(const AXMLs: string; ATempTableNo: Integer); overload;
    procedure InsChosenNodes(AXMLChosenNodes: IXMLChosenNodes; ATempTableNo, ATempFilterNo: Integer); overload;
    procedure InsChosenNodeMiscs(AChosenNodeMiscsArray: array of TParams; ATempTableNo: Integer); overload;
    procedure InsChosenNodeMiscs(AChosenNodeMiscs: TParams; ATempTableNo, ATempFilterNo: Integer); overload;
  protected
    function GetInsFilteredNodesQuery(ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod; AChosenNodeMiscsArray: array of TParams): TAbmesSQLQuery; virtual;
    function GetTempChosenNodesTableName(ATempTableNo: Integer): string;
    function GetTempChosenNodeMiscsTableName(ATempTableNo: Integer): string;
    function GetFilteredNodesBaseName(ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod): string; virtual; abstract;
    function GetTempChosenNodesBaseTableName: string; virtual; abstract;
    function GetTempChosenNodeMiscsBaseTableName: string; virtual; abstract;
    procedure InsChosenNode(AXMLChosenNode: IXMLChosenNode; ATempTableNo, ATempFilterNo: Integer); virtual;
    procedure DoInsChosenNode(ANodeCode, ATempTableNo, ATempFilterNo: Integer); virtual;
    procedure InsRootChosenNode(ATempTableNo, ATempFilterNo: Integer); virtual;
    procedure InsFilteredNodes(ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod; const AChosenNodeMiscsArray: array of TParams); virtual;
    procedure EmptyTempTables(ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod); virtual;

    procedure PrepareFilteredNodes(AParam: TParam; ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod = fimBase); overload;
    procedure PrepareFilteredNodes(const AXMLText: string; ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod = fimBase); overload;

    procedure PrepareFilteredNodes(AParam: TParam; const AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod = fimBase); overload;
    procedure PrepareFilteredNodes(const AXMLs: string; const AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod = fimBase); overload;

    procedure UnPrepareFilteredNodes(ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod = fimBase); overload;

    procedure UnPrepareFilteredNodes(AParam: TParam; const AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod = fimBase); overload;
    procedure UnPrepareFilteredNodes(const AXMLText: string; const AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod = fimBase); overload;
  end;

type
  IdmTreeNodeFilterProxy = interface(IDBPooledDataModuleProxy)
    procedure PrepareFilteredNodes(AParam: TParam; ATempTableNo: Integer = 1); overload;
    procedure PrepareFilteredNodes(AXMLText: string; ATempTableNo: Integer = 1); overload;

    procedure PrepareFilteredNodes(AParam: TParam; const AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;
    procedure PrepareFilteredNodes(AXMLText: string; const AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;

    procedure UnPrepareFilteredNodes(ATempTableNo: Integer = 1); overload;

    procedure UnPrepareFilteredNodes(AParam: TParam; const AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;
    procedure UnPrepareFilteredNodes(AXMLText: string; const AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;
  end;

type
  TdmTreeNodeFilterProxy = class abstract(TDBPooledDataModuleProxy, IdmTreeNodeFilterProxy)
  strict private
    function GetLockedInstance: ISmartLock<TdmTreeNodeFilter>;
  strict protected
    property LockedInstance: ISmartLock<TdmTreeNodeFilter> read GetLockedInstance;
  protected
    procedure PrepareFilteredNodes(AParam: TParam; ATempTableNo: Integer = 1); overload;
    procedure PrepareFilteredNodes(AXMLText: string; ATempTableNo: Integer = 1); overload;

    procedure PrepareFilteredNodes(AParam: TParam; const AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;
    procedure PrepareFilteredNodes(AXMLText: string; const AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;

    procedure UnPrepareFilteredNodes(ATempTableNo: Integer = 1); overload;

    procedure UnPrepareFilteredNodes(AParam: TParam; const AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;
    procedure UnPrepareFilteredNodes(AXMLText: string; const AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer = 1); overload;
  end;

implementation

uses
  uDBPooledDataModuleHelper, Variants, uUtils, uTreeNodes,
  XMLIntf, XMLDoc, uXMLUtils, uSvrUtils, uChosenNodes, uDBLoginContext;

{$R *.DFM}

const
  AllFilteredNodesParamName = 'ALL_FILTERED_NODES';

{ TdmTreeNodeFilterProxy }

function TdmTreeNodeFilterProxy.GetLockedInstance: ISmartLock<TdmTreeNodeFilter>;
begin
  Result:= ISmartLock<TdmTreeNodeFilter>(inherited LockedInstance);
end;

procedure TdmTreeNodeFilterProxy.PrepareFilteredNodes(AXMLText: string; ATempTableNo: Integer);
begin
  LockedInstance.Value.PrepareFilteredNodes(AXMLText, ATempTableNo);
end;

procedure TdmTreeNodeFilterProxy.PrepareFilteredNodes(AParam: TParam; ATempTableNo: Integer);
begin
  LockedInstance.Value.PrepareFilteredNodes(AParam, ATempTableNo);
end;

procedure TdmTreeNodeFilterProxy.UnPrepareFilteredNodes(ATempTableNo: Integer);
begin
  LockedInstance.Value.UnPrepareFilteredNodes(ATempTableNo);
end;

procedure TdmTreeNodeFilterProxy.PrepareFilteredNodes(AXMLText: string;
  const AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer);
begin
  LockedInstance.Value.PrepareFilteredNodes(AXMLText, AQueries, ATempTableNo);
end;

procedure TdmTreeNodeFilterProxy.PrepareFilteredNodes(AParam: TParam;
  const AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer);
begin
  LockedInstance.Value.PrepareFilteredNodes(AParam, AQueries, ATempTableNo);
end;

procedure TdmTreeNodeFilterProxy.UnPrepareFilteredNodes(AXMLText: string;
  const AQueries: array of TAbmesSQLQuery; ATempTableNo: Integer);
begin
  LockedInstance.Value.UnPrepareFilteredNodes(AXMLText, AQueries, ATempTableNo);
end;

procedure TdmTreeNodeFilterProxy.UnPrepareFilteredNodes(AParam: TParam; const AQueries: array of TAbmesSQLQuery;
  ATempTableNo: Integer);
begin
  LockedInstance.Value.UnPrepareFilteredNodes(AParam, AQueries, ATempTableNo);
end;

{ TdmTreeNodeFilter }

function TdmTreeNodeFilter.GetInsFilteredNodesQuery(
  ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod;
  AChosenNodeMiscsArray: array of TParams): TAbmesSQLQuery;
begin
  if (ATreeNodeFilterInsertMethod = fimBase) then
    Result:= qryInsFilteredNodes
  else
    raise Exception.Create('Unsupported TreeNodeFilterInsertMethod');
end;

function TdmTreeNodeFilter.GetTempChosenNodeMiscsTableName(
  ATempTableNo: Integer): string;
begin
  Result:=
    GetTempChosenNodeMiscsBaseTableName +
    SvrCommon.GetTempTableSuffix(ATempTableNo);
end;

function TdmTreeNodeFilter.GetTempChosenNodesTableName(ATempTableNo: Integer): string;
begin
  Result:=
    GetTempChosenNodesBaseTableName +
    SvrCommon.GetTempTableSuffix(ATempTableNo);
end;

function TdmTreeNodeFilter.GetTempFilteredNodesTableName(ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod): string;
begin
  Result:=
    'TEMP_FILTERED_' +
    GetFilteredNodesBaseName(ATreeNodeFilterInsertMethod) +
    SvrCommon.GetTempTableSuffix(ATempTableNo);
end;

function TdmTreeNodeFilter.GetAllFilteredNodesParamName(ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod): string;
begin
  Result:=
    'ALL_FILTERED_' +
    GetFilteredNodesBaseName(ATreeNodeFilterInsertMethod) +
    SvrCommon.GetTempTableSuffix(ATempTableNo);
end;

procedure TdmTreeNodeFilter.PrepareFilteredNodes(AParam: TParam; ATempTableNo: Integer;
  ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod);
begin
  Assert(Assigned(AParam));
  PrepareFilteredNodes(AParam.AsString, ATempTableNo, ATreeNodeFilterInsertMethod);
end;

procedure TdmTreeNodeFilter.PrepareFilteredNodes(const AXMLText: string; ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod);
begin
  PrepareFilteredNodes(AXMLText, [], ATempTableNo, ATreeNodeFilterInsertMethod);
end;

procedure TdmTreeNodeFilter.PrepareFilteredNodes(AParam: TParam; const AQueries: array of TAbmesSQLQuery;
  ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod);
begin
  Assert(Assigned(AParam));
  PrepareFilteredNodes(AParam.AsString, AQueries, ATempTableNo, ATreeNodeFilterInsertMethod);
end;

procedure TdmTreeNodeFilter.PrepareFilteredNodes(const AXMLs: string; const AQueries: array of TAbmesSQLQuery;
  ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod);
var
  AllFilteredNodes: Boolean;
  AllFilteredNodesParamName: string;
  XMLs: TXMLPair;
begin
  AllFilteredNodes:= AreAllNodesFiltered(AXMLs);
  AllFilteredNodesParamName:= GetAllFilteredNodesParamName(ATempTableNo, ATreeNodeFilterInsertMethod);
  SetIntegerParam(AQueries, AllFilteredNodesParamName, Ord(AllFilteredNodes));

  if not (AllFilteredNodes and AllQueriesHaveParam(AQueries, AllFilteredNodesParamName)) then
    begin
      XMLs:= SplitXMLs(AXMLs);

      DBDataModule.TempDisableDocsProcessing/
        DBDataModule.SafeTransaction/
          Utils.Using(CreateChosenNodeMiscs(XMLs.XML1))/
            procedure (ChosenNodeMiscs1: TParams) begin
              Utils.Using(CreateChosenNodeMiscs(XMLs.XML2))/
                procedure (ChosenNodeMiscs2: TParams) begin
                  EmptyTempTables(ATempTableNo, ATreeNodeFilterInsertMethod);

                  InsChosenNodeMiscs([ChosenNodeMiscs1, ChosenNodeMiscs2], ATempTableNo);

                  if AreAllNodesChosen(AXMLs) then
                    InsRootChosenNode(ATempTableNo, 1)
                  else
                    InsChosenNodes(AXMLs, ATempTableNo);

                  InsFilteredNodes(ATempTableNo, ATreeNodeFilterInsertMethod, [ChosenNodeMiscs1, ChosenNodeMiscs2]);
            end;
        end;
    end;
end;

procedure TdmTreeNodeFilter.UnPrepareFilteredNodes(ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod);
begin
  UnPrepareFilteredNodes('', [], ATempTableNo, ATreeNodeFilterInsertMethod);
end;

procedure TdmTreeNodeFilter.UnPrepareFilteredNodes(const AXMLText: string; const AQueries: array of TAbmesSQLQuery;
  ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod);
begin
  if not AreAllNodesFiltered(AXMLText) or
     not AllQueriesHaveParam(
           AQueries,
           GetAllFilteredNodesParamName(ATempTableNo, ATreeNodeFilterInsertMethod)) then
    begin
      DBDataModule.TempDisableDocsProcessing/
        DBDataModule.SafeTransaction/
          procedure begin
            EmptyTempTables(ATempTableNo, ATreeNodeFilterInsertMethod);
          end;
    end;
end;

procedure TdmTreeNodeFilter.UnPrepareFilteredNodes(AParam: TParam; const AQueries: array of TAbmesSQLQuery;
  ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod);
begin
  Assert(Assigned(AParam));
  UnPrepareFilteredNodes(AParam.AsString, AQueries, ATempTableNo, ATreeNodeFilterInsertMethod);
end;

function TdmTreeNodeFilter.CreateChosenNodeMiscs(const AXMLText: string): TParams;

  procedure AddParam(AParams: TParams; const AName: string; const AValue: Variant);
  var
    p: TParam;
  begin
    p:= AParams.Add as TParam;
    p.Name:= AName;

    if not VarIsNullOrEmpty(AValue) then
      p.AsString := AValue
    else
      begin
        p.AsString:= '';
        p.Clear;
      end;
  end;

var
  XMLDocument: IXMLDocument;
  XMLChosenNodesParams: IXMLChosenNodesParams;
  XMLChosenNodesParam: IXMLChosenNodesParam;
begin
  Result:= TParams.Create(nil);
  try
    AddParam(Result, AllFilteredNodesParamName, Ord(AreAllNodesFiltered(AXMLText)));

    if (AXMLText <> '') then
      begin
        XMLDocument:= NewXMLDocument;
        XMLDocument.XML.Text:= AXMLText;
        XMLChosenNodesParams:= GetChosenNodesAndParams(XMLDocument).ChosenNodesParams;

        if Assigned(XMLChosenNodesParams) then
          for XMLChosenNodesParam in All(XMLChosenNodesParams) do
            AddParam(Result, XMLChosenNodesParam.ParamName, XMLChosenNodesParam.ParamValue);
      end;  { if }
  except
    FreeAndNil(Result);
    raise;
  end;
end;

procedure TdmTreeNodeFilter.DoInsChosenNode(ANodeCode, ATempTableNo, ATempFilterNo: Integer);
begin
  qryInsChosenNode.MacroByName('TEMP_CHOSEN_NODES_TABLE_NAME').AsString:=
    GetTempChosenNodesTableName(ATempTableNo);

  qryInsChosenNode.ParamByName('FILTER_LEVEL_NO').AsInteger:= ATempFilterNo;
  qryInsChosenNode.ParamByName('NODE_CODE').AsInteger:= ANodeCode;
  qryInsChosenNode.ExecSQL;
end;

procedure TdmTreeNodeFilter.EmptyTempTables(ATempTableNo: Integer; ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod);
begin
  SvrCommon.TruncateTable(GetTempFilteredNodesTableName(ATempTableNo, ATreeNodeFilterInsertMethod));
  SvrCommon.TruncateTable(GetTempChosenNodesTableName(ATempTableNo));
  SvrCommon.TruncateTable(GetTempChosenNodeMiscsTableName(ATempTableNo));
end;

procedure TdmTreeNodeFilter.InsRootChosenNode(ATempTableNo, ATempFilterNo: Integer);
begin
  DoInsChosenNode(tnRootNodeCode, ATempTableNo, ATempFilterNo);
end;

procedure TdmTreeNodeFilter.InsChosenNode(AXMLChosenNode: IXMLChosenNode; ATempTableNo, ATempFilterNo: Integer);
begin
  Assert(not VarIsNullOrEmpty(AXMLChosenNode.NodeCode));
  DoInsChosenNode(AXMLChosenNode.NodeCode, ATempTableNo, ATempFilterNo);
end;

procedure TdmTreeNodeFilter.InsChosenNodeMiscs(AChosenNodeMiscsArray: array of TParams;
  ATempTableNo: Integer);

  function LastFilteredChosenNodeMiscsIndex: Integer;
  var
    i: Integer;
  begin
    Result:= 0;
    for i:= 0 to Length(AChosenNodeMiscsArray) - 1 do
      if (AChosenNodeMiscsArray[i].ParamByName(AllFilteredNodesParamName).AsString = '0') then
        Result:= i;
  end;

var
  i: Integer;
begin
  for i:= 0 to LastFilteredChosenNodeMiscsIndex do
    InsChosenNodeMiscs(AChosenNodeMiscsArray[i], ATempTableNo, i + 1);
end;

procedure TdmTreeNodeFilter.InsChosenNodeMiscs(AChosenNodeMiscs: TParams;
  ATempTableNo, ATempFilterNo: Integer);
begin
  qryInsChosenNodeMisc.MacroByName('TEMP_CHOSEN_NODE_MISCS_TABLE_NAME').AsString:=
    GetTempChosenNodeMiscsTableName(ATempTableNo);

  ClearParamValues(qryInsChosenNodeMisc.Params);
  qryInsChosenNodeMisc.Params.AssignValues(AChosenNodeMiscs);
  qryInsChosenNodeMisc.ParamByName('FILTER_LEVEL_NO').AsInteger:= ATempFilterNo;

  qryInsChosenNodeMisc.ExecSQL;
end;

procedure TdmTreeNodeFilter.InsChosenNodes(AXMLChosenNodes: IXMLChosenNodes;
  ATempTableNo, ATempFilterNo: Integer);
var
  XMLChosenNode: IXMLChosenNode;
begin
  if (AXMLChosenNodes.Count = 0) then
    InsRootChosenNode(ATempTableNo, ATempTableNo)
  else
    for XMLChosenNode in All(AXMLChosenNodes) do
      InsChosenNode(XMLChosenNode, ATempTableNo, ATempFilterNo);
end;

procedure TdmTreeNodeFilter.InsChosenNodes(const AXMLs: string; ATempTableNo: Integer);

  procedure InternalInsChosenNodes(const AXMLText: string; ATempTableNo, ATempFilterNo: Integer);
  var
    XMLDocument: IXMLDocument;
  begin
    XMLDocument:= NewXMLDocument;
    XMLDocument.XML.Text:= AXMLText;
    InsChosenNodes(GetChosenNodesAndParams(XMLDocument).ChosenNodes, ATempTableNo, ATempFilterNo);
  end;

begin
  with SplitXMLs(AXMLs) do
    begin
      InternalInsChosenNodes(XML1, ATempTableNo, 1);
      if (XML2 <> '') then
        InternalInsChosenNodes(XML2, ATempTableNo, 2);
    end;
end;

procedure TdmTreeNodeFilter.InsFilteredNodes(ATempTableNo: Integer;
  ATreeNodeFilterInsertMethod: TTreeNodeFilterInsertMethod;
  const AChosenNodeMiscsArray: array of TParams);
var
  InsFilteredNodesQuery: TAbmesSQLQuery;
begin
  InsFilteredNodesQuery:= GetInsFilteredNodesQuery(ATreeNodeFilterInsertMethod, AChosenNodeMiscsArray);

  InsFilteredNodesQuery.MacroByName('TEMP_FILTERED_NODES_TABLE_NAME').AsString:=
    GetTempFilteredNodesTableName(ATempTableNo, ATreeNodeFilterInsertMethod);
  InsFilteredNodesQuery.MacroByName('TEMP_CHOSEN_NODES_TABLE_NAME').AsString:=
    GetTempChosenNodesTableName(ATempTableNo);
  InsFilteredNodesQuery.MacroByName('TEMP_CHOSEN_NODE_MISCS_TABLE_NAME').AsString:=
    GetTempChosenNodeMiscsTableName(ATempTableNo);

  InsFilteredNodesQuery.ExecSQL;
end;

end.
