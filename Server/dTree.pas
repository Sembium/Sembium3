unit dTree;

interface

uses
  Windows, Messages, SysUtils, Classes, DBClient, Provider, Db,
  AbmesSQLQuery, AbmesFields, WideStrings, FMTBcd, SqlExpr,
  AbmesSQLConnection, DBXDevartOracle, uSmartLock, dPooledDataModule, dDBPooledDataModule;

type
  TdmTree = class(TDBPooledDataModule)
    qryTreeNodeChildren: TAbmesSQLQuery;
    qryTreeNodeChildrenNODE_ID: TAbmesFloatField;
    qryTreeNodeChildrenPARENT_NODE_ID: TAbmesFloatField;
    qryTreeNodeChildrenNODE_NAME: TAbmesWideStringField;
    qryTreeNodeChildrenNODE_TYPE: TAbmesFloatField;
    qryTreeNodeChildrenIS_EXPANDABLE: TAbmesFloatField;
    qryTreeToNode: TAbmesSQLQuery;
    qryTreeToNodeNODE_ID: TAbmesFloatField;
    qryTreeToNodePARENT_NODE_ID: TAbmesFloatField;
    qryTreeToNodeNODE_NAME: TAbmesWideStringField;
    qryTreeToNodeNODE_TYPE: TAbmesFloatField;
    qryTreeToNodeIS_EXPANDABLE: TAbmesFloatField;
    qryTreeToNodeIS_THE_PARENT: TAbmesFloatField;
    qryNodeChildren: TAbmesSQLQuery;
    qryNodeChildrenNODE_ID: TAbmesFloatField;
    qryNodeChildrenPARENT_NODE_ID: TAbmesFloatField;
    qryNodeChildrenNODE_NAME: TAbmesWideStringField;
    qryNodeChildrenNODE_TYPE: TAbmesFloatField;
    qryTreeNode: TAbmesSQLQuery;
    qryRootNodeNODE_ID: TAbmesFloatField;
    qryRootNodePARENT_NODE_ID: TAbmesFloatField;
    qryRootNodeNODE_NAME: TAbmesWideStringField;
    qryRootNodeNODE_TYPE: TAbmesFloatField;
    qryRootNodeIS_EXPANDABLE: TAbmesFloatField;
    prvTreeNodeChildren: TDataSetProvider;
    prvTreeToNode: TDataSetProvider;
    prvNodeChildren: TDataSetProvider;
    prvTreeNode: TDataSetProvider;
    qryIsDescendantOf: TAbmesSQLQuery;
    qryIsDescendantOfDESCENDANT_NODE_ID: TAbmesFloatField;
    qryNodeIsInstance: TAbmesSQLQuery;
    qryNodeIsInstanceIS_INSTANCE: TAbmesFloatField;
    qryTreeToNodeNODE_REAL_LEVEL: TAbmesFloatField;
  private
    { Private declarations }
  protected
    procedure GetNodeData(ANodeID: Integer; out NodeName: string;
      out NodeNo: Double); virtual; abstract;
    function GetNodeNo(ANodeCode: Integer): Real;
    function IsInstance(NodeID: Integer): Boolean;
    function IsDescendantOf(NodeID: Integer; RootID: Integer): Boolean;
  end;

type
  IdmTreeProxy = interface(IDBPooledDataModuleProxy)
    procedure GetNodeData(ANodeID: Integer; out NodeName: string;
      out NodeNo: Double);
    function GetNodeNo(ANodeCode: Integer): Real;
  end;

type
  TdmTreeProxy = class abstract(TDBPooledDataModuleProxy, IdmTreeProxy)
  strict private
    function GetLockedInstance: ISmartLock<TdmTree>;
  strict protected
    property LockedInstance: ISmartLock<TdmTree> read GetLockedInstance;
  protected
    function GetNodeNo(ANodeCode: Integer): Real;
  public
    procedure GetNodeData(ANodeID: Integer; out NodeName: string;
      out NodeNo: Double);
    function IsInstance(NodeID: Integer): Boolean;
    function IsDescendantOf(NodeID: Integer; RootID: Integer): Boolean;
  end;

implementation

{$R *.DFM}

{ TdmTreeProxy }

function TdmTreeProxy.GetLockedInstance: ISmartLock<TdmTree>;
begin
  Result:= ISmartLock<TdmTree>(inherited LockedInstance);
end;

procedure TdmTreeProxy.GetNodeData(ANodeID: Integer;
  out NodeName: string; out NodeNo: Double);
begin
  LockedInstance.Value.GetNodeData(ANodeID, NodeName, NodeNo);
end;

function TdmTreeProxy.IsInstance(NodeID: Integer): Boolean;
begin
  Result:= LockedInstance.Value.IsInstance(NodeID);
end;

function TdmTreeProxy.GetNodeNo(ANodeCode: Integer): Real;
begin
  Result:= LockedInstance.Value.GetNodeNo(ANodeCode);
end;

function TdmTreeProxy.IsDescendantOf(NodeID, RootID: Integer): Boolean;
begin
  Result:= LockedInstance.Value.IsDescendantOf(NodeID, RootID);
end;

{ TdmTree }

function TdmTree.GetNodeNo(ANodeCode: Integer): Real;
var
  DummyStr: string;
  ResultInDouble: Double;
begin
  GetNodeData(ANodeCode, DummyStr, ResultInDouble);
  Result:= ResultInDouble;
end;

function TdmTree.IsDescendantOf(NodeID, RootID: Integer): Boolean;
begin
  with qryIsDescendantOf do
    begin
      ParamByName('NODE_ID').AsInteger:= NodeID;
      ParamByName('ROOT_ID').AsInteger:= RootID;

      Open;
      try
        Result:= not (Bof and Eof);
      finally
        Close;
      end;   { try }
    end;   { with }
end;

function TdmTree.IsInstance(NodeID: Integer): Boolean;
begin
  with qryNodeIsInstance do
    begin
      ParamByName('NODE_ID').AsInteger:= NodeID;

      Open;
      try
        Result:= qryNodeIsInstanceIS_INSTANCE.AsBoolean;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

end.
