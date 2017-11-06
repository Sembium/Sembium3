unit dNomTree;

interface

uses
  Windows, Messages, SysUtils, Classes, Db, Provider, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule, dTree,
  AbmesClientDataSet, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  DBXDevartOracle, JvStringHolder, uSmartLock;

type
  TdmNomTree = class(TdmTree)
    qryNodeData: TAbmesSQLQuery;
    qryNodeDataNODE_NO: TAbmesFloatField;
    qryNodeDataNODE_NAME: TAbmesWideStringField;
    qryNodeID: TAbmesSQLQuery;
    qryNodeIDNODE_ID: TAbmesFloatField;
    qryNodeChildrenNODE_NO: TAbmesFloatField;
    qryTreeNodeChildrenNODE_NO: TAbmesFloatField;
    qryTreeToNodeNODE_NO: TAbmesFloatField;
    qryTreeNodeNODE_NO: TAbmesFloatField;                  
    prvPrintTree: TDataSetProvider;
    qryPrintTree: TAbmesSQLQuery;
    qryPrintTreeChildren: TAbmesSQLQuery;
    qryPrintTreeNODE_ID: TAbmesFloatField;
    qryPrintTreePARENT_NODE_ID: TAbmesFloatField;
    qryPrintTreeNODE_NAME: TAbmesWideStringField;
    qryPrintTreeNODE_NO: TAbmesFloatField;
    qryPrintTreeChildrenNODE_ID: TAbmesFloatField;
    qryPrintTreeChildrenPARENT_NODE_ID: TAbmesFloatField;
    qryPrintTreeChildrenNODE_NAME: TAbmesWideStringField;
    qryPrintTreeChildrenNODE_NO: TAbmesFloatField;
    qryPrintTreeNODE_LEVEL: TAbmesFloatField;
    qryPrintTreeIS_LAST_CHILD: TAbmesFloatField;
    qryPrintTreeORDER_NO: TAbmesFloatField;
    qryPrintTreeNODE_TYPE: TAbmesFloatField;
    qryPrintTreeChildrenNODE_TYPE: TAbmesFloatField;
    qryPrintTreeChildrenNODE_CHILD_COUNT: TAbmesFloatField;
    prvShowNodeParams: TDataSetProvider;
    qryShowNodeParams: TAbmesSQLQuery;
    qryShowNodeParamsNODE_PARAM_CODE: TAbmesFloatField;
    qryShowNodeParamsNODE_PARAM_NAME: TAbmesWideStringField;
    qryShowNodeParamsNODE_PARAM_ORDER_NO: TAbmesFloatField;
    qryNodeChildrenIS_INACTIVE: TAbmesFloatField;
    qryShowNodeParamsPARAM_VALUE: TAbmesWideStringField;
    prvPrintTreeChildren: TDataSetProvider;
    cdsPrintTreeChildren: TAbmesClientDataSet;
    cdsPrintTreeChildrenNODE_ID: TAbmesFloatField;
    cdsPrintTreeChildrenPARENT_NODE_ID: TAbmesFloatField;
    cdsPrintTreeChildrenNODE_NAME: TAbmesWideStringField;
    cdsPrintTreeChildrenNODE_NO: TAbmesFloatField;
    cdsPrintTreeChildrenNODE_CHILD_COUNT: TAbmesFloatField;
    cdsPrintTreeChildrenNODE_TYPE: TAbmesFloatField;
    qryTreeNodeChildrenIS_INACTIVE: TAbmesFloatField;
    qryPrintTreeHAS_CHILDREN: TAbmesFloatField;
    qryFindTreeNodes: TAbmesSQLQuery;
    prvFindTreeNodes: TDataSetProvider;
    shFindStringTemplate: TJvStrHolder;
    qryFindTreeNodesNODE_ID: TAbmesFloatField;
    qryFindTreeNodesPARENT_NODE_IDS: TAbmesWideStringField;
    qryFindTreeNodesNODE_NAME: TAbmesWideStringField;
    qryFindTreeNodesNODE_NO: TAbmesFloatField;
    qryShowNodeParamsVALUE_TYPE: TAbmesFloatField;
    qryPrintTreeChildrenLEVEL_NO: TAbmesFloatField;
    cdsPrintTreeChildrenLEVEL_NO: TAbmesFloatField;
    cdsPrintTreeChildren_MAX_LEVEL_NO: TAggregateField;
    qryPrintTreeChildrenIS_INACTIVE: TAbmesFloatField;
    cdsPrintTreeChildrenIS_INACTIVE: TAbmesFloatField;
    qryPrintTreeIS_INACTIVE: TAbmesFloatField;
    procedure prvPrintTreeGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvNodeChildrenBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvPrintTreeBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryFindTreeNodesBeforeOpen(DataSet: TDataSet);
  private
    procedure BuildPrintDataSet(ADataSet: TCustomClientDataSet);
  protected
    procedure GetNodeData(ANodeID: Integer; out NodeName: string;
      out NodeNo: Double); override;
    function GetNodeID(ANodeNo: Double): Integer; virtual;
    function GetNodeSqlTableAlias: string; virtual; abstract;
  end;

type
  IdmNomTreeProxy = interface(IdmTreeProxy)
  end;

type
  TdmNomTreeProxy = class abstract(TdmTreeProxy, IdmNomTreeProxy)
  strict private
    function GetLockedInstance: ISmartLock<TdmNomTree>;
  strict protected
    property LockedInstance: ISmartLock<TdmNomTree> read GetLockedInstance;
  protected
    function GetNodeID(ANodeNo: Double): Integer;
  end;

implementation

uses
  uUtils, uSvrTreeNodeParams, Variants, uServerMessageIds, StrUtils, uSvrUtils;

{$R *.DFM}

{ TdmNomTreeProxy }

function TdmNomTreeProxy.GetLockedInstance: ISmartLock<TdmNomTree>;
begin
  Result:= ISmartLock<TdmNomTree>(inherited LockedInstance);
end;

function TdmNomTreeProxy.GetNodeID(ANodeNo: Double): Integer;
begin
  Result:= LockedInstance.Value.GetNodeID(ANodeNo);
end;

{ TdmNomTree }

procedure TdmNomTree.GetNodeData(ANodeID: Integer;
  out NodeName: string; out NodeNo: Double);
begin
  qryNodeData.ParamByName('NODE_ID').AsInteger:= ANodeID;
  qryNodeData.Open;
  try
    NodeNo:= qryNodeDataNODE_NO.AsFloat;
    NodeName:= qryNodeDataNODE_NAME.AsString;
  finally
    qryNodeData.Close;
  end;  { try }
end;

function TdmNomTree.GetNodeID(ANodeNo: Double): Integer;
begin
  qryNodeID.ParamByName('NODE_NO').AsFloat:= ANodeNo;
  qryNodeID.Open;
  try
    Result:= qryNodeIDNODE_ID.AsInteger;
  finally
    qryNodeID.Close;
  end;  { try }
end;

procedure TdmNomTree.BuildPrintDataSet(ADataSet: TCustomClientDataSet);
var
  ADataSetNODE_LEVEL: TField;
  ADataSetHAS_CHILDREN: TField;
  ADataSetIS_LAST_CHILD: TField;
  ADataSetORDER_NO: TField;
  ADataSetPARENT_NODE_ID: TField;
  SortFields: string;
  SortDescFields: string;
  PriorParentNodeIDs: TIntegerArray;
  SL: TStringList;
  s: string;
begin
  if not (ADataSet.BOF and ADataSet.EOF) then
    begin
      if (qryPrintTree.CustomParams.ParamByName('SORT_FIELD_NAMES').AsString <> '') then
        begin
          SortFields:= qryPrintTree.CustomParams.ParamByName('SORT_FIELD_NAMES').AsString;
          SortDescFields:= qryPrintTree.CustomParams.ParamByName('SORT_DESC_FIELD_NAMES').AsString
        end
      else  { if }
        begin
          SortFields:= '''a''';
          SortDescFields:= '';
        end;  { if }

      SortFields:= StringReplace(SortFields, ';', ',', [rfReplaceAll]);
      SortDescFields:= StringReplace(SortDescFields, ';', ',', [rfReplaceAll]);

      SL:= TStringList.Create;
      try
        SL.CommaText:= SortDescFields;
        for s in SL do
          SortFields:= StringReplace(SortFields, s, s + ' desc', []);
      finally
        FreeAndNil(SL);
      end;

      qryPrintTreeChildren.MacroByName('ORDER_BY_FIELDS').AsString:= SortFields;

      ADataSetNODE_LEVEL:= ADataSet.FieldByName('NODE_LEVEL');
      ADataSetHAS_CHILDREN:= ADataSet.FieldByName('HAS_CHILDREN');
      ADataSetIS_LAST_CHILD:= ADataSet.FieldByName('IS_LAST_CHILD');
      ADataSetORDER_NO:= ADataSet.FieldByName('ORDER_NO');
      ADataSetPARENT_NODE_ID:= ADataSet.FieldByName('PARENT_NODE_ID');

      SetParams(cdsPrintTreeChildren.Params, ADataSet);
      cdsPrintTreeChildren.Params.ParamByName('SHOW_INACTIVE').AsInteger:=
        qryPrintTree.CustomParams.ParamByName('SHOW_INACTIVE').AsInteger;

      cdsPrintTreeChildren.TempOpen/
        procedure
          var
            i: Integer;
        begin
          if (cdsPrintTreeChildren.RecordCount > qryPrintTree.CustomParams.ParamByName('MAX_RECORDS').AsInteger) then
            raise Exception.Create(STooLargePrintTreeId);

          if (cdsPrintTreeChildren.RecordCount > 1) then
            begin
              ADataSet.DisableConstraints;
              try
                cdsPrintTreeChildren.ForEach/
                  procedure begin
                    if (cdsPrintTreeChildren.RecNo > 1) then // skip root
                      begin
                        ADataSet.SafeAppend/
                          procedure begin
                            ADataSet.AssignFields(cdsPrintTreeChildren);

                            ADataSetNODE_LEVEL.AsInteger:= cdsPrintTreeChildrenLEVEL_NO.AsInteger;
                            ADataSetHAS_CHILDREN.AsInteger:= Ord(cdsPrintTreeChildrenNODE_CHILD_COUNT.AsInteger > 0);
                            ADataSetORDER_NO.AsInteger:= ADataSet.RecordCount;
                          end;
                      end;
                  end;

                SetLength(PriorParentNodeIDs, cdsPrintTreeChildren_MAX_LEVEL_NO.AsVarInteger + 1);
                for i:= Low(PriorParentNodeIDs) to High(PriorParentNodeIDs) do
                  PriorParentNodeIDs[i]:= -1;

                ADataSet.Last;
                while not ADataSet.Bof do
                  begin
                    ADataSet.SafeEdit/
                      procedure begin
                        ADataSetIS_LAST_CHILD.AsInteger:= Ord(ADataSetPARENT_NODE_ID.AsInteger <> PriorParentNodeIDs[ADataSetNODE_LEVEL.AsInteger]);
                      end;

                    PriorParentNodeIDs[ADataSetNODE_LEVEL.AsInteger]:= ADataSetPARENT_NODE_ID.AsInteger;
                    ADataSet.Prior;
                  end;

                ADataSet.First;
                ADataSet.SafeEdit/
                  procedure begin
                    ADataSet.FieldByName('HAS_CHILDREN').AsInteger:= 1;
                  end;
              finally
                ADataSet.EnableConstraints;
              end;  { try }
            end;
        end;
    end;   { if }
end;

procedure TdmNomTree.prvPrintTreeBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  if not VarIsEmpty(OwnerData) then
    ReceiveTreeNodeParams(OwnerData, qryPrintTreeChildren,
      'NODE_PARAMS_WHERE_COND', GetNodeSqlTableAlias);
end;

procedure TdmNomTree.prvPrintTreeGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  inherited;
  BuildPrintDataSet(DataSet);
end;

procedure TdmNomTree.qryFindTreeNodesBeforeOpen(DataSet: TDataSet);
var
  FindString: string;
  SubStrings: TStringArray;
  i: Integer;
  WhereCond: string;
  LikeModifier: string;
begin
  inherited;

  FindString:= qryFindTreeNodes.CustomParams.ParamByName('FIND_STRING').AsString;

  if (qryFindTreeNodes.CustomParams.ParamByName('CASE_SENSITIVE').AsInteger = 0) then
    FindString:= AnsiUpperCase(FindString);

  SubStrings:= uUtils.SplitString(FindString);

  if (qryFindTreeNodes.CustomParams.ParamByName('EXACT_MATCH').AsInteger = 1) then
    LikeModifier:= ''''''
  else
    LikeModifier:= '''%''';

  WhereCond:= '';

  for i:= 0 to Length(SubStrings)-1 do
    begin
      shFindStringTemplate.MacroByName('FIND_STRING_PARAM_NAME').Value:= Format(':FIND_STRING_PARAM_%d', [i+1]);
      shFindStringTemplate.MacroByName('LIKE_MODIFIER').Value:= LikeModifier;
      WhereCond:= WhereCond + shFindStringTemplate.ExpandMacros + ' and' + SLineBreak;
      WhereCond:= WhereCond + SLineBreak;
    end;

  WhereCond:= WhereCond + '(1=1)  -- end "and" sequence' + SLineBreak;
  WhereCond:= '(' + SLineBreak + WhereCond + SLineBreak + ')';

  qryFindTreeNodes.MacroByName('FIND_CONDITION').Value:= WhereCond;
  qryFindTreeNodes.RescanParams;
  qryFindTreeNodes.Params.AssignValues(qryFindTreeNodes.CustomParams);

  for i:= 0 to Length(SubStrings)-1 do
    qryFindTreeNodes.ParamByName(Format('FIND_STRING_PARAM_%d', [i+1])).AsString:= SubStrings[i];
end;

procedure TdmNomTree.prvNodeChildrenBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  if not VarIsEmpty(OwnerData) then
    ReceiveTreeNodeParams(OwnerData, qryNodeChildren,
      'NODE_PARAMS_WHERE_COND', GetNodeSqlTableAlias);
end;

end.
