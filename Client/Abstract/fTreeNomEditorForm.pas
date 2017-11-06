unit fTreeNomEditorForm;

// ostavil sum actNewDescendant da ne se vika ot nikude,
// shtoto ne mi se trieshe, che moje niakoi den da potriabva

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fTreeNomForm, Menus, Db, DBClient, ImgList, ActnList, ComCtrls, GridsEh,
  ColorNavigator, ToolWin, Buttons, ExtCtrls, fTreeForm, uClientTypes,
  AbmesClientDataSet, DBGridEh, AbmesDBGrid, StdCtrls, TreeParentsComboBox,
  DBCtrls, AbmesFields, fBaseFrame, fDBFrame, fTreeNodeParamsFrame,
  JvButtons, fEditForm, dDocClient, fTreeSelectForm, JvComponent,
  JvCaptionButton, JvComponentBase, ParamDataSet, AbmesDBCheckBox,
  DBGridEhGrouping, uSection, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions;
                                 
type
  TTreeNomEditorForm = class(TTreeNomForm)
    actInsertChild: TAction;
    actNewDescendant: TAction;
    actDelChild: TAction;
    actEditChild: TAction;
    cdsNodeChildrenNODE_NO: TAbmesFloatField;
    tlbEditChildren: TToolBar;
    btnAdd: TToolButton;
    btnDel: TToolButton;
    pmChildren: TPopupMenu;
    miOpenChild: TMenuItem;
    N1: TMenuItem;
    miInsertChild: TMenuItem;
    miDelChild: TMenuItem;
    miEditChild: TMenuItem;
    cdsTreeNodeChildrenNODE_NO: TAbmesFloatField;
    cdsTreeToNodeNODE_NO: TAbmesFloatField;
    cdsTreeNodeNODE_NO: TAbmesFloatField;
    cdsNodeChildren_MAX_NODE_NO: TAggregateField;
    actCreateLike: TAction;
    btnEdit: TToolButton;
    miCreateLike: TMenuItem;
    actInsertGroup: TAction;
    miInsertGroup: TMenuItem;
    cdsPrintTreeHAS_CHILDREN: TAbmesFloatField;
    pmAdd: TPopupMenu;
    pmDelete: TPopupMenu;
    pmEdit: TPopupMenu;
    miDropInsertChild: TMenuItem;
    miDropInsertGroup: TMenuItem;
    miDropCreateLike: TMenuItem;
    miDropDelChild: TMenuItem;
    miDropEditChild: TMenuItem;
    sepAdd: TToolButton;
    procedure actInsertChildExecute(Sender: TObject);
    procedure actInsertChildUpdate(Sender: TObject);
    procedure actNewDescendantExecute(Sender: TObject);
    procedure actNewDescendantUpdate(Sender: TObject);
    procedure actDelChildExecute(Sender: TObject);
    procedure actDelChildUpdate(Sender: TObject);
    procedure actEditChildExecute(Sender: TObject);
    procedure actEditChildUpdate(Sender: TObject);
    procedure cdsNodeChildrenAfterPost(DataSet: TDataSet);
    procedure cdsNodeChildrenNewRecord(DataSet: TDataSet);
    procedure cdsNodeChildrenReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsNodeChildrenAfterDelete(DataSet: TDataSet);
    procedure cdsNodeChildrenBeforePost(DataSet: TDataSet);
    procedure actCopyToClipboardExecute(Sender: TObject);
    procedure actCreateLikeUpdate(Sender: TObject);
    procedure actCreateLikeExecute(Sender: TObject);
    procedure actInsertGroupUpdate(Sender: TObject);
    procedure actInsertGroupExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFormUpdate(Sender: TObject);
    procedure grdChildrenDblClick(Sender: TObject);
    procedure cdsNodeChildrenBeforeInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure grdChildrenMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tvTreeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvTreeDragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    FChildEditFormClass: TEditFormClass;
    FEditMode: TEditMode;
    FCreateLikeRecord: Variant;
    FCreateLikeNodeID: Integer;
    FInsertingGroup: Boolean;
    FTreeDetailSelection: TTreeDetailSelection;
    FEndNodeID: Integer;
    FRootIsGroup: Boolean;
    FMaxNodeNo: Real;
    FMovingNode: TMultiPassSection;
    procedure EnforcedShowGridNodeParams;
  protected
    function GetInsertChildEnabled: Boolean; virtual;
    function GetNewDescendantEnabled: Boolean; virtual;
    function GetDelChildEnabled: Boolean; virtual;
    function GetEditChildEnabled: Boolean; virtual;
    function GetCreateLikeChildEnabled: Boolean; virtual;
    function DoShowEditForm(AEditMode: TEditMode): Boolean; virtual;
    function ShowEditForm(AEditMode: TEditMode): Boolean; virtual;
    procedure CopyToCreateLikeRecord;
    procedure PasteFromCreateLikeRecord;
    function GetEditActivityCode: Integer; virtual; abstract;
    function GetChildReadOnly: Boolean; virtual;

    property ChildEditFormClass: TEditFormClass read FChildEditFormClass write FChildEditFormClass;
    property CreateLikeNodeID: Integer read FCreateLikeNodeID;
    property TreeDetailSelection: TTreeDetailSelection read FTreeDetailSelection;
    property RootIsGroup: Boolean read FRootIsGroup;
    property MaxNodeNo: Real read FMaxNodeNo;
    property MovingNode: TMultiPassSection read FMovingNode;
    property InsertingGroup: Boolean read FInsertingGroup;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
                            ANodeID: Integer = 0;
                            ARootNodeID: Integer = 1;
                            AEditMode: TEditMode = emEdit;
                            ATreeDetailSelection: TTreeDetailSelection = tdsNone); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
                            ANodeID: Integer = 0;
                            ARootNodeID: Integer = 1;
                            AEditMode: TEditMode = emEdit;
                            ATreeDetailSelection: TTreeDetailSelection = tdsNone): Integer;
    procedure Initialize; override;

    property EditMode: TEditMode read FEditMode;
    property EndNodeID: Integer read FEndNodeID;
  end;

implementation

uses
  VDbConsts, Variants, uUtils, uClientUtils, AbmesDialogs, dMain, uTreeNodes,
  uTreeNodeParams;

{$R *.DFM}

resourcestring
  SNodeNotFoundInTree = 'Node not found in tree';
  SNodeNameRequired = 'Не сте въвели наименование';
  SConfirmMove = 'Потвърдете преместването?';

{ TTreeNomEditorForm }

procedure TTreeNomEditorForm.actInsertChildExecute(Sender: TObject);
begin
  inherited;

  FInsertingGroup:= False;

  if DoShowEditForm(emInsert) then
    EnforcedShowGridNodeParams;
end;

procedure TTreeNomEditorForm.actInsertChildUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetInsertChildEnabled;
end;

procedure TTreeNomEditorForm.actNewDescendantExecute(Sender: TObject);

  function AddToTree(AName: string): TTreeNode;
  var
    pos: Integer;
  begin
    with tvTree.Selected do
      begin
        Expanded:= True;

        pos:= 0;
        while (pos < Count) and (AName >= Item[pos].Text) do Inc(pos);

        Result:= tvTree.Items.AddChild(tvTree.Selected, AName);
        try
          Result.MoveTo(Item[pos], naInsert);
          Result.ImageIndex:= GetInactiveNodeImageIndex(Ord(ntClass), niImage, cdsNodeChildren);
          Result.SelectedIndex:= GetInactiveNodeImageIndex(Ord(ntClass), niSelected, cdsNodeChildren);
        except
          FreeAndNil(Result);
          raise;
        end;   { try }
      end;   { with }
  end;

  function FindInTree(NodeName: string): TTreeNode;
  var
    i: Integer;
  begin
    with tvTree.Selected do
      begin
        Expanded:= True;

        for i:= 0 to Count - 1 do
          if (Item[i].Text = NodeName) then
            begin
              Result:= Item[i];
              Exit;
            end;   { if }
      end;   { with }

    raise Exception.Create(SNodeNotFoundInTree);
  end;

var
  tn: TTreeNode;
  nd: TNodeData;
  OldSelected: TTreeNode;
  OldExpanded: Boolean;
  SelectedChildID: Integer;
  NodeExistedInTree: Boolean;
begin
  inherited;

  with tvTree do
    begin
      Items.BeginUpdate;
      try
        SelectedChildID:= cdsNodeChildrenNODE_ID.AsInteger;
        OldExpanded:= Selected.Expanded;
        try
          NodeExistedInTree:=
            (cdsNodeChildrenNODE_TYPE.Value <> Ord(ntInstance));

          if NodeExistedInTree then
            tn:= FindInTree(cdsNodeChildrenNODE_NAME.AsString)
          else   { if }
            tn:= AddToTree(cdsNodeChildrenNODE_NAME.AsString);

          try
            nd:= NodeDataClass.Create;
            try
              nd.SetFromDataSet(cdsNodeChildren);

              if not NodeExistedInTree then
                tn.Data:= nd;

              OldSelected:= Selected;
              try
                Selected:= tn;

                tvTree.Items.EndUpdate;
                try
                  if DoShowEditForm(emInsert) then
                    EnforcedShowGridNodeParams
                  else
                    Abort;
                finally
                  tvTree.Items.BeginUpdate;
                end;   { try }
              except
                Selected:= OldSelected;

                if not cdsNodeChildren.Locate('NODE_ID', SelectedChildID, []) then
                  cdsNodeChildren.First;

                raise;
              end;   { try }

              if NodeExistedInTree then
                FreeAndNil(nd);
            except
              if not NodeExistedInTree then
                tn.Data:= nil;
              FreeAndNil(nd);
              raise;
            end;   { try }
          except
            if not NodeExistedInTree then FreeAndNil(tn);
            raise;
          end;   { try }
        except
          Selected.Expanded:= OldExpanded;
          raise;
        end;   { try }
      finally
        Items.EndUpdate;
      end;   { try }
    end;   { with tvTree }
end;

procedure TTreeNomEditorForm.actNewDescendantUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetNewDescendantEnabled;
end;

procedure TTreeNomEditorForm.actDelChildExecute(Sender: TObject);

  function FindInTree(NodeName: string): TTreeNode;
  var
    i: Integer;
  begin
    Result:= nil;

    with tvTree.Selected do
      begin
        Expanded:= True;

        for i:= 0 to Count - 1 do
          if (Item[i].Text = NodeName) then
            begin
              Result:= Item[i];
              Exit;
            end;   { if }
      end;   { with }
  end;

var
  tn: TTreeNode;
  s: string;
begin
  inherited;

  if (MessageDlgEx(SDeleteRecord, mtConfirmation, mbOkCancel, 0) = mrOK) then
    begin
      s:= cdsNodeChildrenNODE_NAME.AsString;

      cdsNodeChildren.TempDisableControls /
        procedure begin
          cdsNodeChildren.Delete;
        end;

      if (s <> cdsNodeChildrenNODE_NAME.AsString) then
        begin
          tn:= FindInTree(s);
          if Assigned(tn) then
            tn.Free;
        end;

      EnforcedShowGridNodeParams;
    end;   { if }
end;

procedure TTreeNomEditorForm.actDelChildUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetDelChildEnabled;
end;

procedure TTreeNomEditorForm.actEditChildExecute(Sender: TObject);
var
  AEditMode: TEditMode;
begin
  inherited;

  if GetChildReadOnly or
     (TreeDetailSelection <> tdsNone) then
    AEditMode:= emReadOnly
  else
    AEditMode:= emEdit;

  if DoShowEditForm(AEditMode) then
    begin
      RefreshNode(tvTree.Selected);
      EnforcedShowGridNodeParams;
    end;
end;

procedure TTreeNomEditorForm.actEditChildUpdate(Sender: TObject);
var
  s: string;
begin
  inherited;

  with (Sender as TAction) do
    begin
      Enabled:= GetEditChildEnabled;

      if Enabled and
        ( GetChildReadOnly or
          (TreeDetailSelection <> tdsNone) ) then
        s:= SReadOnlyCaption
      else
        s:= SEditCaption;

      Caption:= s + cDialogSuffix;
      Hint:= s;
    end;   { with }
end;

function TTreeNomEditorForm.GetInsertChildEnabled: Boolean;
begin
  Result:=
    Assigned(FChildEditFormClass) and
    (EditMode <> emReadOnly) and
    LoginContext.HasUserActivity(GetEditActivityCode) and
    RootIsGroup;
end;

function TTreeNomEditorForm.GetNewDescendantEnabled: Boolean;
begin
  Result:=
    Assigned(FChildEditFormClass) and
    cdsNodeChildren.Active and
    (not (cdsNodeChildren.BOF and cdsNodeChildren.EOF)) and
    (EditMode <> emReadOnly) and
    LoginContext.HasUserActivity(GetEditActivityCode) and
    RootIsGroup;
end;

function TTreeNomEditorForm.GetDelChildEnabled: Boolean;
begin
  Result:=
    cdsNodeChildren.Active and
    (not (cdsNodeChildren.BOF and cdsNodeChildren.EOF)) and
    (EditMode <> emReadOnly) and
    (TreeDetailSelection = tdsNone);
end;

function TTreeNomEditorForm.GetEditChildEnabled: Boolean;
begin
  Result:=
    Assigned(FChildEditFormClass) and
    cdsNodeChildren.Active and
    (not (cdsNodeChildren.BOF and cdsNodeChildren.EOF));
end;

function TTreeNomEditorForm.GetChildReadOnly: Boolean;
begin
  Result:= (EditMode = emReadOnly);
end;

function TTreeNomEditorForm.GetCreateLikeChildEnabled: Boolean;
begin
  Result:=
    Assigned(FChildEditFormClass) and
    (EditMode <> emReadOnly) and
    cdsNodeChildren.Active and
    (not (cdsNodeChildren.BOF and cdsNodeChildren.EOF)) and
    LoginContext.HasUserActivity(GetEditActivityCode) and
    RootIsGroup;
end;

function TTreeNomEditorForm.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Assert(Assigned(dmDocClient));
  Assert(Assigned(FChildEditFormClass));

  Assert(not dmDocClient.Modified);
  Assert(dmDocClient.cdsDocs.State = dsBrowse);

  Result:= FChildEditFormClass.ShowForm(dmDocClient, cdsNodeChildren, AEditMode);

  Assert(not dmDocClient.Modified);
  Assert(dmDocClient.cdsDocs.State = dsBrowse);
end;

procedure TTreeNomEditorForm.cdsNodeChildrenAfterPost(DataSet: TDataSet);
var
  SaveCursor: TCursor;
begin
  inherited;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    if ((DataSet as TCustomClientDataSet).ApplyUpdates(0) > 0) then
      begin
        DataSet.Edit;
        Abort;
      end;
    dmDocClient.CommitUpdates;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TTreeNomEditorForm.cdsNodeChildrenNewRecord(DataSet: TDataSet);
var
  NodeNo: Real;
begin
  inherited;

  Assert(Assigned(tvTree.Selected));

  if (CreateLikeNodeID > 0) then
    PasteFromCreateLikeRecord
  else   { if }
    begin
      cdsNodeChildrenIS_INACTIVE.AsBoolean:= False;
    end;   { if }

  cdsNodeChildrenPARENT_NODE_ID.Value:=
    TNomNodeData(tvTree.Selected.Data).ID;

  if LoginContext.DefaultTreeCustomCode then
    begin
      if (MaxNodeNo = 0) then
        begin
          NodeNo:= TNomNodeData(tvTree.Selected.Data).NodeNo;
          if (NodeNo <> 0) then
            cdsNodeChildrenNODE_NO.Value:= NodeNo;
        end
      else   { if }
        cdsNodeChildrenNODE_NO.Value:= MaxNodeNo + 1;
    end;   { if }

  if FInsertingGroup then
    cdsNodeChildrenNODE_TYPE.Value:= Ord(ntClass)
  else
    cdsNodeChildrenNODE_TYPE.Value:= Ord(ntInstance);
end;

procedure TTreeNomEditorForm.cdsNodeChildrenReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ReconcileError(E);
end;

procedure TTreeNomEditorForm.cdsNodeChildrenAfterDelete(DataSet: TDataSet);
begin
  inherited;
  if ((DataSet as TCustomClientDataSet).ApplyUpdates(0) = 0) then
    dmDocClient.CommitUpdates
  else
    begin
      (DataSet as TCustomClientDataSet).UndoLastChange(True);
      dmDocClient.CancelUpdates;
    end;
end;

procedure TTreeNomEditorForm.cdsNodeChildrenBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (Trim(cdsNodeChildrenNODE_NAME.AsString) = '') then
    raise Exception.Create(SNodeNameRequired);
end;

procedure TTreeNomEditorForm.actCopyToClipboardExecute(Sender: TObject);
begin
//  inherited;      new behaviour
  actCopyNoToClipboard.Execute;
end;

procedure TTreeNomEditorForm.EnforcedShowGridNodeParams;
begin
  if not actShowParams.Checked then Exit;

  Assert(cdsNodeChildren.Active);

  frTreeNodeParams.ShowParamsFor(
    cdsNodeChildrenNODE_ID.AsInteger,
    cdsNodeChildrenNODE_NAME.AsString,
    True);
end;

procedure TTreeNomEditorForm.SetDataParams(AdmDocClient: TdmDocClient;
  ANodeID, ARootNodeID: Integer; AEditMode: TEditMode;
  ATreeDetailSelection: TTreeDetailSelection);
begin
  Assert(AEditMode <> emInsert, 'EditMode must not be emInsert');

  inherited SetDataParams(AdmDocClient, ANodeID, ARootNodeID);
  FEditMode:= AEditMode;
  FTreeDetailSelection:= ATreeDetailSelection;
end;

class function TTreeNomEditorForm.ShowForm(AdmDocClient: TdmDocClient;
  ANodeID, ARootNodeID: Integer; AEditMode: TEditMode;
  ATreeDetailSelection: TTreeDetailSelection): Integer;
var
  f: TTreeNomEditorForm;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ANodeID, ARootNodeID, AEditMode, ATreeDetailSelection);
    f.InternalShowForm;
    Result:= f.EndNodeID;
  finally
    f.ReleaseForm;
  end;
end;

procedure TTreeNomEditorForm.tvTreeDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  Node: TTreeNode;
  NodeData: TNodeData;
  MovedNodeID: Integer;
begin
  inherited;

  ConfirmAction(SConfirmMove);

  FMovingNode.TempEnter/
    procedure begin
      Node:= tvTree.GetNodeAt(X, Y);
      if Assigned(Node) and Assigned(Node.Data) then
        begin
          NodeData:= TNodeData(Node.Data);

          if (Source = grdChildren) then
            begin
              MovedNodeID:= cdsNodeChildrenNODE_ID.AsInteger;

              cdsNodeChildren.TempDisableControls/
                procedure
                var
                  n: TTreeNode;
                begin
                  cdsNodeChildren.SafeEdit/
                    procedure begin
                      cdsNodeChildren.FieldByName('PARENT_CODE').AsInteger:= NodeData.ID;
                    end;

                  tvTree.Items.BeginUpdate;
                  try
                    for n in tvTree.Items do
                      if Assigned(n.Data) and (TNodeData(n.Data).ID = MovedNodeID) then
                        begin
                          n.DeleteChildren;
                          n.Delete;
                          Break;
                        end;
                  finally
                    tvTree.Items.EndUpdate;
                  end;

                  cdsNodeChildren.TempDisableCache/
                    procedure begin
                      tvTree.Selected:= Node;
                    end;

                  cdsTreeNodeChildren.TempDisableCache/
                    procedure begin
                      RefreshNode(Node);
                    end;

                  if not cdsNodeChildren.Locate('NODE_ID', MovedNodeID, []) then
                    cdsNodeChildren.First;
                end;
            end;
        end;
    end;
end;

procedure TTreeNomEditorForm.tvTreeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);

  function AcceptNode(ANodeID, AParentNodeID: Integer): Boolean;
  var
    Node: TTreeNode;
    NodeData: TNodeData;
  begin
    Result:= False;

    Node:= tvTree.GetNodeAt(X, Y);
    if Assigned(Node) and Assigned(Node.Data) then
      begin
        NodeData:= TNodeData(Node.Data);

        Result:=
          (NodeData.ID <> ANodeID) and
          (NodeData.ID <> AParentNodeID);

        while Result and Assigned(Node.Parent) do
          begin
            Node:= Node.Parent;
            if Assigned(Node.Data) then
              begin
                NodeData:= TNodeData(Node.Data);
                Result:= (NodeData.ID <> ANodeID);
              end;
          end;
      end;
  end;  { AcceptNode }

begin
  inherited;

  Accept:= False;

  if (Source = grdChildren) then
    Accept:=
      AcceptNode(
        cdsNodeChildrenNODE_ID.AsInteger,
        cdsNodeChildrenPARENT_NODE_ID.AsInteger
      );
end;

procedure TTreeNomEditorForm.actCreateLikeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetCreateLikeChildEnabled;
end;

procedure TTreeNomEditorForm.actCreateLikeExecute(Sender: TObject);
begin
  inherited;

  FCreateLikeNodeID:= cdsNodeChildrenNODE_ID.AsInteger;
  try
    FInsertingGroup:= (cdsNodeChildrenNODE_TYPE.AsInteger = Ord(ntClass));
    try
      CopyToCreateLikeRecord;
      try
        if (cdsNodeChildrenNODE_TYPE.AsInteger = Ord(ntClass)) then
          actInsertGroup.Execute
        else
          actInsertChild.Execute;
      finally
        FCreateLikeRecord:= Unassigned;
      end;   { try }
    finally
      FInsertingGroup:= False;
    end;
  finally
    FCreateLikeNodeID:= 0;
  end;   { try }
end;

procedure TTreeNomEditorForm.CopyToCreateLikeRecord;
var
  i, k: Integer;
  DataFieldsCount: Integer;
begin
  with cdsNodeChildren do
    begin
      DataFieldsCount:= 0;

      for i:= 0 to FieldCount - 1 do
        if (Fields[i].FieldKind = fkData) then
          Inc(DataFieldsCount);

      FCreateLikeRecord:= VarArrayCreate([0, DataFieldsCount-1], varVariant);

      k:= 0;
      for i:= 0 to FieldCount - 1 do
        if (Fields[i].FieldKind = fkData) then
          begin
            if (Fields[i] <> cdsNodeChildrenNODE_ID) and
               not (pfInKey in Fields[i].ProviderFlags) then
              FCreateLikeRecord[k]:= Fields[i].AsVariant;
            Inc(k);
          end;
    end;   { with }
end;

procedure TTreeNomEditorForm.PasteFromCreateLikeRecord;
var
  i, k: Integer;
begin
  with cdsNodeChildren do
    begin
      k:= 0;
      for i:= 0 to FieldCount - 1 do
        if (Fields[i].FieldKind = fkData) then
          begin
            Fields[i].AsVariant:= FCreateLikeRecord[k];
            Inc(k);
          end;
    end;   { with }
end;

function TTreeNomEditorForm.DoShowEditForm(AEditMode: TEditMode): Boolean;
begin
  if (EditMode = emReadOnly) and (AEditMode = emEdit) then
    AEditMode:= emReadOnly;

  Result:= ShowEditForm(AEditMode);
end;

procedure TTreeNomEditorForm.actInsertGroupUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetInsertChildEnabled;
end;

procedure TTreeNomEditorForm.actInsertGroupExecute(Sender: TObject);

  function AddToTree(AName: string): TTreeNode;
  var
    pos: Integer;
  begin
    with tvTree.Selected do
      begin
        Expanded:= True;

        pos:= 0;
        while (pos < Count) and (AName >= Item[pos].Text) do Inc(pos);

        if (pos > 0) and (AName = Item[pos-1].Text) then
          Result:= Item[pos-1]
        else
          begin
            Result:= tvTree.Items.AddChild(tvTree.Selected, AName);
            try
              Result.MoveTo(Item[pos], naInsert);
              Result.ImageIndex:= GetInactiveNodeImageIndex(Ord(ntClass), niImage, cdsNodeChildren);
              Result.SelectedIndex:= GetInactiveNodeImageIndex(Ord(ntClass), niSelected, cdsNodeChildren);
            except
              FreeAndNil(Result);
              raise;
            end;   { try }
          end;
      end;   { with }
  end;

var
  tn: TTreeNode;
  nd: TNodeData;
begin
  inherited;

  FInsertingGroup:= True;
  try
    if DoShowEditForm(emInsert) then
      begin
        if (not tvTree.Selected.Expanded) and tvTree.Selected.HasChildren and (tvTree.Selected.Count = 0) then
          begin
            tvTree.Selected.Expanded:= True;
          end
        else
          begin
            tn:= AddToTree(cdsNodeChildrenNODE_NAME.AsString);
            try
              nd:= NodeDataClass.Create;
              try
                nd.SetFromDataSet(cdsNodeChildren);
                tn.Data:= nd;
              except
                FreeAndNil(nd);
                raise;
              end;
            except
              FreeAndNil(tn);
              raise;
            end;
          end;

        EnforcedShowGridNodeParams;
      end;
  finally
    FInsertingGroup:= False;
  end;
end;

procedure TTreeNomEditorForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModalResult = mrOK) then
    begin
      case TreeDetailSelection of
        tdsNone: Abort;
        tdsInstance:
          if (cdsNodeChildrenNODE_TYPE.AsInteger <= 1) then Abort;
      end;

      FEndNodeID:= cdsNodeChildrenNODE_ID.AsInteger;
    end
  else
    FEndNodeID:= 0;

  inherited;
end;

procedure TTreeNomEditorForm.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  for i:= 0 to alActions.ActionCount - 1 do
    if (alActions[i].Category = 'ChildActions') then
      RegisterChildrenAction(alActions[i] as TAction);
end;

procedure TTreeNomEditorForm.actFormUpdate(Sender: TObject);
begin
  inherited;

  pnlOKCancel.Visible:=
    (TreeDetailSelection <> tdsNone);
  pnlClose.Visible:=
    not pnlOKCancel.Visible;

  btnOK.Enabled:=
    (TreeDetailSelection = tdsAll) or
    ((TreeDetailSelection = tdsInstance) and
     cdsNodeChildren.Active and
     (cdsNodeChildrenNODE_TYPE.AsInteger = Ord(ntInstance)));
end;

procedure TTreeNomEditorForm.grdChildrenDblClick(Sender: TObject);
begin
  if (TreeDetailSelection <> tdsNone) and
     cdsNodeChildren.Active and
     (cdsNodeChildrenNODE_TYPE.AsInteger = Ord(ntInstance)) then
    ModalResult:= mrOK
  else
    inherited;
end;

procedure TTreeNomEditorForm.grdChildrenMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (EditMode = emEdit) and
     (TreeDetailSelection = tdsNone) and
     (Button = mbLeft) and
     (grdChildren.MouseCoord(X, Y).Y >= 0) then
    grdChildren.BeginDrag(False);
end;

procedure TTreeNomEditorForm.Initialize;
begin
  inherited;
  FRootIsGroup:= not IsInstance(RootNodeID);
end;

procedure TTreeNomEditorForm.cdsNodeChildrenBeforeInsert(
  DataSet: TDataSet);
var
  B: TBookmark;
  SaveFiltered: Boolean;
begin
  inherited;

  with cdsNodeChildren do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          SaveFiltered:= Filtered;
          try
            Filtered:= False;
            FMaxNodeNo:= VarToFloat(cdsNodeChildren_MAX_NODE_NO.Value);
          finally
            Filtered:= SaveFiltered;
          end;  { try }
        finally
          Bookmark:= b;
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

end.
