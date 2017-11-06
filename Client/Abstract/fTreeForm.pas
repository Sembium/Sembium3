unit fTreeForm;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fButtonForm, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin, ActnList,
  ImgList, Db, DBClient, JvComponent, TreeParentsComboBox, JvCaptionButton,
  AbmesClientDataSet, AbmesFields, uLoginContext, JvButtons, Menus, dDocClient,
  JvComponentBase, System.ImageList, System.Actions;

type
  TNodeData = class(TPersistent)
  private
    FID: Integer;
    FParentID: Integer;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    procedure SetFromDataSet(ADataSet: TDataSet); virtual;

    property ID: Integer read FID write FID;
    property ParentID: Integer read FParentID write FParentID;
  end;

type
  TNodeDataClass = class of TNodeData;

type
  TNodeImage = (niImage, niSelected, niState, niOverlay);

type
  TTreeForm = class(TButtonForm)
    actUpperLevel: TAction;
    actViewTree: TAction;
    pnlTree: TPanel;
    tvTree: TTreeView;
    cdsTreeToNode: TAbmesClientDataSet;
    cdsTreeNodeChildren: TAbmesClientDataSet;
    ilIcons: TImageList;
    cdsTreeNodeChildrenNODE_ID: TAbmesFloatField;
    cdsTreeNodeChildrenPARENT_NODE_ID: TAbmesFloatField;
    cdsTreeNodeChildrenNODE_NAME: TAbmesWideStringField;
    cdsTreeToNodeNODE_ID: TAbmesFloatField;
    cdsTreeToNodePARENT_NODE_ID: TAbmesFloatField;
    cdsTreeToNodeNODE_NAME: TAbmesWideStringField;
    cdsTreeToNodeIS_THE_PARENT: TAbmesFloatField;
    clbMain: TCoolBar;
    cbParents: TTreeParentsComboBox;
    tlbButtons: TToolBar;
    btnUpperLevel: TToolButton;
    sepOne: TToolButton;
    btnShowTree: TToolButton;
    cdsTreeNodeChildrenNODE_TYPE: TAbmesFloatField;
    cdsTreeNodeChildrenIS_EXPANDABLE: TAbmesFloatField;
    cdsTreeToNodeNODE_TYPE: TAbmesFloatField;
    cdsTreeToNodeIS_EXPANDABLE: TAbmesFloatField;
    cdsTreeNode: TAbmesClientDataSet;
    cdsTreeNodeNODE_ID: TAbmesFloatField;
    cdsTreeNodePARENT_NODE_ID: TAbmesFloatField;
    cdsTreeNodeNODE_NAME: TAbmesWideStringField;
    cdsTreeNodeNODE_TYPE: TAbmesFloatField;
    cdsTreeNodeIS_EXPANDABLE: TAbmesFloatField;
    btnShowParams: TToolButton;
    btnShowInactive: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure actViewTreeExecute(Sender: TObject);
    procedure actUpperLevelExecute(Sender: TObject);
    procedure actUpperLevelUpdate(Sender: TObject);
    procedure tvTreeExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure tvTreeDeletion(Sender: TObject; Node: TTreeNode);
    procedure FormCreate(Sender: TObject);
  private
    FNodeDataClass: TNodeDataClass;
    procedure BuildTree(NodeID: Integer);
    procedure LoadChildren(ANode: TTreeNode);
    procedure LoadToNode(NodeID: Integer);
    procedure LoadRoot;
    function AddChildNode(AParent: TTreeNode; ADataSet: TDataSet): TTreeNode;
    procedure WMAppCommand(var Msg: TMessage); message WM_APPCOMMAND;
  protected
    FStartNodeID: Integer;
    FRootNodeID: Integer;
    function GetNodeImageIndex(ANodeType: Integer;
      ANodeImage: TNodeImage; ADataSet: TDataSet): Integer; virtual;
    function GetInactiveNodeImageIndex(ANodeType: Integer;
      ANodeImage: TNodeImage; ADataSet: TDataSet): Integer; virtual;
    procedure RefreshNode(ATreeNode: TTreeNode);
    procedure ExpandNode(ANode: TTreeNode; Levels: Integer);
    function LevelsToExpand: Integer; virtual;
    function IsInstance(ANodeID: Integer): Boolean; virtual; abstract;

    property NodeDataClass: TNodeDataClass read FNodeDataClass write FNodeDataClass;
  public
    procedure Initialize; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
                            ANodeID: Integer = 0;
                            ARootNodeID: Integer = 1); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
                            ANodeID: Integer = 0;
                            ARootNodeID: Integer = 1): Integer;
    property StartNodeID: Integer read FStartNodeID;
    property RootNodeID: Integer read FRootNodeID;
  end;

implementation

uses
  dMain, uClientUtils;

{$R *.DFM}

{ TNodeData }

procedure TNodeData.AssignTo(Dest: TPersistent);
begin
  if (Dest is TNodeData) then
    begin
      TNodeData(Dest).ID:= ID;
      TNodeData(Dest).ParentID:= ParentID;
    end
  else
    inherited;
end;

procedure TNodeData.SetFromDataSet(ADataSet: TDataSet);
begin
  ID:= ADataSet.FieldByName('NODE_ID').AsInteger;
  ParentID:= ADataSet.FieldByName('PARENT_NODE_ID').AsInteger;
end;

{ TTreeForm }

class function TTreeForm.ShowForm(AdmDocClient: TdmDocClient;
  ANodeID, ARootNodeID: Integer): Integer;
var
  f: TTreeForm;
begin
  Assert(ARootNodeID > 0, 'Tree root code must be > 0');

  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ANodeID, ARootNodeID);
    Result:= f.InternalShowForm;
  finally
    f.ReleaseForm;
  end;
end;

procedure TTreeForm.SetDataParams(AdmDocClient: TdmDocClient;
  ANodeID, ARootNodeID: Integer);
begin
  inherited SetDataParams(AdmDocClient);
  FStartNodeID:= ANodeID;
  FRootNodeID:= ARootNodeID;
end;

procedure TTreeForm.Initialize;
begin
  inherited;
  BuildTree(FStartNodeID);
end;

procedure TTreeForm.actViewTreeExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Checked:= not Checked;
      pnlTree.Visible:= Checked;
    end;
end;

procedure TTreeForm.actUpperLevelExecute(Sender: TObject);
begin
  inherited;
  with tvTree do
    Selected:= Selected.Parent;
end;

procedure TTreeForm.actUpperLevelUpdate(Sender: TObject);
begin
  inherited;
  with tvTree do
   (Sender as TAction).Enabled:=
     (Items.Count > 0) and (Selected <> Items[0]);
end;

procedure TTreeForm.BuildTree(NodeID: Integer);
var
  SaveCursor: TCursor;
begin
  Assert(tvTree.Items.Count = 0);

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    if (NodeID <> 0) then
      LoadToNode(NodeID)
    else
      begin
        LoadRoot;

        if (tvTree.Items.Count > 0) then
          tvTree.Items[0].Selected:= True;
      end;

    with tvTree do
      begin
        Items[0].Expanded:= True;
        ExpandNode(Items[0], LevelsToExpand);

        TopItem:= Selected;
      end;   { with }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

procedure TTreeForm.LoadChildren(ANode: TTreeNode);
var
  AnID: Integer;
  OldCursor: TCursor;
begin
  OldCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    tvTree.Items.BeginUpdate;
    try
      if Assigned(ANode) then
        begin
          AnID:= TNodeData(ANode.Data).ID;
          ANode.DeleteChildren;
        end
      else
        begin
          AnID:= 0;
          tvTree.Items.Clear;
        end;

      cdsTreeNodeChildren.Params.ParamByName('NODE_ID').AsInteger:= AnID;
      cdsTreeNodeChildren.Open;
      try
        while not cdsTreeNodeChildren.EOF do
          begin
            AddChildNode(ANode, cdsTreeNodeChildren);
            cdsTreeNodeChildren.Next;
          end;
      finally
        cdsTreeNodeChildren.Close;
      end;
    finally
      tvTree.Items.EndUpdate;
    end;
  finally
    Screen.Cursor:= OldCursor;
  end;   { try }
end;

procedure TTreeForm.LoadToNode(NodeID: Integer);

  function FindNextParent(Parent: TTreeNode; NewParentID: Integer): TTreeNode;
  var
    i: Integer;
  begin
    if (Parent = nil) then
      Result:= tvTree.Items[0]
    else
      begin
        i:= 0;
        while (i < Parent.Count) and
              (TNodeData(Parent.Item[i].Data).ID <> NewParentID) do Inc(i);
        if (i >= Parent.Count) then
          Result:= nil
        else
          Result:= Parent.Item[i];
      end;
  end;

var
  Parent: TTreeNode;
  ParentID: Integer;
  tn: TTreeNode;
begin
  Assert(not cdsTreeToNode.Active);

  Parent:= nil;

  cdsTreeToNode.Params.ParamByName('NODE_ID').AsInteger:= NodeID;
  cdsTreeToNode.Params.ParamByName('ROOT_NODE_ID').AsInteger:= FRootNodeID;
  cdsTreeToNode.Open;
  try
    ParentID:= cdsTreeToNodePARENT_NODE_ID.AsInteger;
    while not cdsTreeToNode.EOF do
      begin
        if (ParentID <> cdsTreeToNodePARENT_NODE_ID.AsInteger) then
          begin
            Parent:= FindNextParent(Parent, cdsTreeToNodePARENT_NODE_ID.AsInteger);
            ParentID:= cdsTreeToNodePARENT_NODE_ID.AsInteger;
          end;

        tn:= AddChildNode(Parent, cdsTreeToNode);

        if (cdsTreeToNodeIS_THE_PARENT.AsInteger = 1) then
          tvTree.Selected:= tn;

        cdsTreeToNode.Next;
      end;
  finally
    cdsTreeToNode.Close;
  end;
end;

procedure TTreeForm.LoadRoot;
begin
  tvTree.Items.BeginUpdate;
  try
    tvTree.Items.Clear;

    cdsTreeNode.Params.ParamByName('NODE_ID').AsInteger:= FRootNodeID;
    cdsTreeNode.Open;
    try
      if not cdsTreeNode.EOF then AddChildNode(nil, cdsTreeNode);
    finally
      cdsTreeNode.Close;
    end;
  finally
    tvTree.Items.EndUpdate;
  end;
end;

function TTreeForm.AddChildNode(AParent: TTreeNode; ADataSet: TDataSet): TTreeNode;
var
  nd: TNodeData;
  i: Integer;
begin
  nd:= NodeDataClass.Create;
  try
    nd.SetFromDataSet(ADataSet);
    Result:= tvTree.Items.AddChildObject(AParent,
               ADataSet.FieldByName('NODE_NAME').DisplayText, nd);
  except
    FreeAndNil(nd);
    raise;
  end;

  with Result do
    begin
      HasChildren:= (ADataSet.FieldByName('IS_EXPANDABLE').AsInteger <> 0);
      i:= ADataSet.FieldByName('NODE_TYPE').AsInteger;
      ImageIndex:= GetInactiveNodeImageIndex(i, niImage, ADataSet);
      SelectedIndex:= GetInactiveNodeImageIndex(i, niSelected, ADataSet);
    end;
end;

procedure TTreeForm.tvTreeExpanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
begin
  inherited;
  if (Node.Count = 0) then LoadChildren(Node);
end;

procedure TTreeForm.WMAppCommand(var Msg: TMessage);
begin
  case GET_APPCOMMAND_LPARAM(Msg.LParam) of
    APPCOMMAND_BROWSER_BACKWARD:
      begin
        actUpperLevel.Execute;
        Msg.Result:= 1;
      end;
  end;
end;

function TTreeForm.GetNodeImageIndex(ANodeType: Integer;
  ANodeImage: TNodeImage; ADataSet: TDataSet): Integer;
begin
  Result:= -1;
  case ANodeImage of
    niImage:
      case ANodeType of
        0: Result:= 0;   // root
        1: Result:= 1;   // closed folder
        2: Result:= 3;   // descendant
      end;
    niSelected:
      case ANodeType of
        0: Result:= 0;   // root
        1: Result:= 2;   // open folder
        2: Result:= 3;   // descendant
      end;
  end;
end;

function TTreeForm.GetInactiveNodeImageIndex(ANodeType: Integer;
  ANodeImage: TNodeImage; ADataSet: TDataSet): Integer;
var
  fld: TField;
begin
  Result:= GetNodeImageIndex(ANodeType, ANodeImage, ADataSet);

  if (ANodeType > 0) and Assigned(ADataSet) then
    begin
      fld:= ADataSet.FindField('IS_INACTIVE');
      if Assigned(fld) and fld.AsBoolean then
        Inc(Result, tvTree.Images.Count div 2);
    end;
end;

procedure TTreeForm.tvTreeDeletion(Sender: TObject; Node: TTreeNode);
begin
  inherited;
  TNodeData(Node.Data).Free;
  Node.Data:= nil;
end;

procedure TTreeForm.RefreshNode(ATreeNode: TTreeNode);
var
  OldExpanded: Boolean;
begin
  with tvTree do
    begin
      Items.BeginUpdate;
      try
        OldExpanded:= ATreeNode.Expanded;
        ATreeNode.Expanded:= False;
        try
          ATreeNode.DeleteChildren;
          ATreeNode.HasChildren:= True;
          ATreeNode.Expand(False);
        finally
          ATreeNode.Expanded:= OldExpanded;
          ATreeNode.HasChildren:= (ATreeNode.Count > 0)
        end;   { try }
      finally
        Items.EndUpdate;
      end;   { try }
    end;   { with }
end;

procedure TTreeForm.FormCreate(Sender: TObject);
begin
  SetDataSetsGetFieldValueAsStringEvent(Self);
  inherited;
  NodeDataClass:= TNodeData;

  clbMain.TabOrder:= 0;   // Delphi-to pederas i ne sa go publikuvali
end;

procedure TTreeForm.FormShow(Sender: TObject);
begin
  inherited;
  InitializeAllAbmesDBGridsOf(Self);
  clbMain.Bands[0].Width:= Width;
end;

procedure TTreeForm.ExpandNode(ANode: TTreeNode; Levels: Integer);
var
  i: Integer;
begin
  if (Levels < 1) then Exit;

  with ANode do
    begin
      Owner.BeginUpdate;
      try
        for i:= 0 to Count - 1 do
          begin
            Item[i].Expanded:= True;
            ExpandNode(Item[i], Levels-1);
          end;   { for }
      finally
        Owner.EndUpdate;
      end;   { try }
    end;   { with }                       
end;

function TTreeForm.LevelsToExpand: Integer;
begin
  Result:= 1;
end;

end.
