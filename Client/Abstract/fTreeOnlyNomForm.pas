unit fTreeOnlyNomForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin,
  JvExComCtrls, JvComponent, JvDBTreeView, uClientTypes, dDocClient, Menus,
  GridsEh, DBGridEh, AbmesDBGrid, fTreeSelectForm, ImgList, uClientConsts,
  uNestProc;

const
  RootNodeCode = 1;

type
  [VerticalResizeStep(TreeViewRowHeight)]
  TTreeOnlyNomForm = class(TEditForm)
    tvTree: TJvDBTreeView;
    actInsertDefiniteNode: TAction;
    actInsertGroupNode: TAction;
    actDeleteNode: TAction;
    actEditNode: TAction;
    actShowInactive: TAction;
    pmNodesEdit: TPopupMenu;
    miInsertDefiniteNode: TMenuItem;
    miInsertGroupNode: TMenuItem;
    miDeleteNode: TMenuItem;
    miEditNode: TMenuItem;
    actPrintSubTree: TAction;
    cdsPrintTree: TAbmesClientDataSet;
    ilTreeIcons: TImageList;
    actExpandAllNodes: TAction;
    actCollapseAllNodes: TAction;
    pmInsertNode: TPopupMenu;
    miInsNodeInsertDefiniteNode: TMenuItem;
    miInsNodeInsertGroupNode: TMenuItem;
    actToggleMoving: TAction;
    actFinishMoving: TAction;
    pnlTop: TPanel;
    tlbButtons: TToolBar;
    btnInsertNode: TToolButton;
    btnDeleteNode: TToolButton;
    btnEditNode: TToolButton;
    sepBetweenEditAndMove: TToolButton;
    btnToggleMoving: TToolButton;
    btnFinishMoving: TToolButton;
    sepBetweenMoveAndPrint: TToolButton;
    btnPrintSubTree: TToolButton;
    sepBetweenShowPrintAndExpandCollapse: TToolButton;
    btnExpandAllNodes: TToolButton;
    btnExpandCollapseAllNodes: TToolButton;
    sepAfterCollapse: TToolButton;
    btnShowInactive: TToolButton;
    pnlFind: TPanel;
    edtFind: TEdit;
    actFindNext: TAction;
    actFindPrev: TAction;
    tlbFind: TToolBar;
    tlbFindNext: TToolButton;
    btnFindPrev: TToolButton;
    actFocusFind: TAction;
    procedure actInsertDefiniteNodeExecute(Sender: TObject);
    procedure actInsertDefiniteNodeUpdate(Sender: TObject);
    procedure actInsertGroupNodeUpdate(Sender: TObject);
    procedure actInsertGroupNodeExecute(Sender: TObject);
    procedure actDeleteNodeExecute(Sender: TObject);
    procedure actDeleteNodeUpdate(Sender: TObject);
    procedure actEditNodeUpdate(Sender: TObject);
    procedure actEditNodeExecute(Sender: TObject);
    procedure actShowInactiveUpdate(Sender: TObject);
    procedure actShowInactiveExecute(Sender: TObject);
    procedure pmNodesEditPopup(Sender: TObject);
    procedure tvTreeDblClick(Sender: TObject);
    procedure actPrintSubTreeExecute(Sender: TObject);
    procedure cdsDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsPrintTreeBeforeOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure actExpandAllNodesExecute(Sender: TObject);
    procedure actCollapseAllNodesExecute(Sender: TObject);
    procedure actExpandAllNodesUpdate(Sender: TObject);
    procedure actCollapseAllNodesUpdate(Sender: TObject);
    procedure actToggleMovingUpdate(Sender: TObject);
    procedure actToggleMovingExecute(Sender: TObject);
    procedure actFinishMovingUpdate(Sender: TObject);
    procedure actFinishMovingExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFindNextUpdate(Sender: TObject);
    procedure actFindPrevUpdate(Sender: TObject);
    procedure actFindNextExecute(Sender: TObject);
    procedure actFocusFindExecute(Sender: TObject);
    procedure actFindPrevExecute(Sender: TObject);
  private
    FResultSelectedNodeCode: Integer;
    FDefaultSelectedNodeCode: Integer;
    FTreeDetailSelection: TTreeDetailSelection;
    FShowInactive: Boolean;
    FExpandedNodeCodes: array of Integer;
    FMovedNodeCode: Integer;
    FMovedLocalNo: Integer;
    FMovedParentNodeCode: Integer;
    FFindNextShortcut: TShortcut;
    FFindPrevShortcut: TShortcut;
    FFindString: string;
    FDelNodeShortcut: TShortcut;
    FEditNodeShortcut: TShortcut;

    procedure ExpandTree(AExpandLevel: Integer);
    procedure ExpandToNode(ATreeNodeCode: Integer);
    function SelectedTreeNodeCode: Integer;
    procedure SaveExpandedNodes;
    procedure RestoreExpandedNodes;
    function SelectNode(ANodeCode: Integer; ASelectRootIfNotFound: Boolean = False): Boolean;
    procedure MoveNode(ANodeCode, ANewParentNodeCode, ANewLocalNoValue: Integer);
    function MaxVisibleNodeLevel: Integer;
    function PreserveSelectedNode: TNestProcRec;
    function PreserveTopNode: TNestProcRec;
    procedure Find(AForward: Boolean);
  protected
    procedure RefreshTree(ASelectedNodeCode: Integer);

    procedure ShowEditForm(AEditMode: TEditMode; AInsertGroup: Boolean); virtual; abstract;
    function IsRoot: Boolean; virtual; abstract;
    function IsGroup: Boolean; virtual; abstract;
    function IsInactive: Boolean; virtual; abstract;
    function KeyFieldName: string; virtual; abstract;
    function ParentFieldName: string; virtual; abstract;
    function LocalNoFieldName: string; virtual; abstract;
    function ParentNodeCode: Integer; virtual; abstract;
    function GetCannotBeSelectedErrorMsg: string; virtual; abstract;
    procedure SetPrintDataSetParams; virtual;
    function IsReadOnly: Boolean; virtual;
    function GetDeleteEnabled: Boolean; virtual;
    function CanSelectNode: Boolean; virtual;
    function IsAcceptedByFilter: Boolean; virtual;
    function ShowInactiveParamName: string; virtual;
    function DefaultTreeExpandLevel: Integer; virtual;
    function IsRootReadOnly: Boolean; virtual;
    property ResultSelectedNodeCode: Integer read FResultSelectedNodeCode;
    property TreeDetailSelection: TTreeDetailSelection read FTreeDetailSelection;
  public
    procedure Initialize; override;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      ADefaultSelectedNodeCode: Integer = RootNodeCode;
      ATreeDetailSelection: TTreeDetailSelection = tdsNone); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      ADefaultSelectedNodeCode: Integer = RootNodeCode;
      ATreeDetailSelection: TTreeDetailSelection = tdsNone): Integer;
  end;

implementation

uses
  uClientUtils, uUtils, rTreeDefault, StrUtils, Math, dMain;

const
  TreeExpandLevel = 1;

resourcestring
  SStartMovingHint = 'Начало на преместване';
  SCancelMovingHint = 'Отказ на преместване';
  SParentIsDescendant = 'Не можете да преместите избрания запис на свой наследник!';
  SExistingNodeWithEqualLocalNo = 'Съществува друг запис със същия Структ. Номер';
  SNewLocalNo = 'Нов Структ. Номер';

{$R *.dfm}

{ TTreeOnlyNomForm }

procedure TTreeOnlyNomForm.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ADefaultSelectedNodeCode: Integer; ATreeDetailSelection: TTreeDetailSelection);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);
  FDefaultSelectedNodeCode:= ADefaultSelectedNodeCode;
  FTreeDetailSelection:= ATreeDetailSelection;
end;

procedure TTreeOnlyNomForm.SetPrintDataSetParams;
var
  ShowInactiveParam: TParam;
begin
  ShowInactiveParam:= cdsPrintTree.Params.FindParam(ShowInactiveParamName);
  if Assigned(ShowInactiveParam) then
    ShowInactiveParam.AsInteger:= Ord(FShowInactive);
end;

class function TTreeOnlyNomForm.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ADefaultSelectedNodeCode: Integer; ATreeDetailSelection: TTreeDetailSelection): Integer;
var
  f: TTreeOnlyNomForm;
begin
  f:= CreateEx;
  try
    f.SetDataParams(
      AdmDocClient,
      ADataSet,
      emReadOnly,
      ADefaultsOrigin,
      ADefaultSelectedNodeCode,
      ATreeDetailSelection);

    f.InternalShowForm;
    Result:= f.ResultSelectedNodeCode;
  finally
    f.ReleaseForm;
  end;  { try }
end;

function TTreeOnlyNomForm.ShowInactiveParamName: string;
begin
  Result:= 'SHOW_INACTIVE';
end;

function TTreeOnlyNomForm.DefaultTreeExpandLevel: Integer;
begin
  Result:= TreeExpandLevel;
end;

procedure TTreeOnlyNomForm.ExpandTree(AExpandLevel: Integer);
var
  TreeNode: TTreeNode;
begin
  for TreeNode in tvTree.Items do
    if (TreeNode.Level < AExpandLevel) then
      TreeNode.Expand(False);
end;

procedure TTreeOnlyNomForm.Find(AForward: Boolean);
var
  TreeNode: TTreeNode;
  tn: TTreeNode;
begin
  if SameText(edtFind.Text, FFindString) then
    TreeNode:= tvTree.Selected
  else
    begin
      FFindString:= edtFind.Text;
      TreeNode:= tvTree.Items[0];
    end;

  repeat
    if AForward then
      TreeNode:= TreeNode.GetNext
    else
      TreeNode:= TreeNode.GetPrev;

    if Assigned(TreeNode) and
       ContainsText(TreeNode.Text, FFindString) then
      Break;
  until not Assigned(TreeNode);

  if Assigned(TreeNode) then
    begin
      tn:= TreeNode;
      while Assigned(tn.Parent) do
        begin
          tn.Parent.Expanded:= True;
          tn:= tn.Parent;
        end;

      tvTree.Selected:= TreeNode;
    end;
end;

procedure TTreeOnlyNomForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (ModalResult = mrOk) and
     Assigned(tvTree.Selected) and
     (TreeDetailSelection <> tdsNone) then
    begin
      if not CanSelectNode then
        raise Exception.Create(GetCannotBeSelectedErrorMsg);
      FResultSelectedNodeCode:= SelectedTreeNodeCode
    end
  else
    begin
      FResultSelectedNodeCode:= 0;

      if (ModalResult = mrOk) then
        Abort;
    end;

  inherited;
end;

procedure TTreeOnlyNomForm.FormCreate(Sender: TObject);
begin
  inherited;
  FFindNextShortcut:= actFindNext.ShortCut;
  FFindPrevShortcut:= actFindPrev.ShortCut;
  FDelNodeShortcut:= actDeleteNode.ShortCut;
  FEditNodeShortcut:= actEditNode.ShortCut;

  ActiveControl:= edtFind;
end;

function TTreeOnlyNomForm.SelectedTreeNodeCode: Integer;
begin
  Result:= VarToInt((tvTree.Selected as TJvDBTreeNode).MasterValue);
end;

procedure TTreeOnlyNomForm.ExpandToNode(ATreeNodeCode: Integer);
var
  TreeNode: TTreeNode;
begin
  TreeNode:= tvTree.FindNode(ATreeNodeCode);

  while Assigned(TreeNode) do
    begin
      TreeNode.Expand(False);
      TreeNode:= TreeNode.Parent;
    end;  { while }

  cdsData.Locate(KeyFieldName, ATreeNodeCode, []);
end;

procedure TTreeOnlyNomForm.SaveExpandedNodes;
var
  TreeNode: TTreeNode;
begin
  SetLength(FExpandedNodeCodes, 0);

  for TreeNode in tvTree.Items do
    if TreeNode.Expanded then
      begin
        SetLength(FExpandedNodeCodes, Length(FExpandedNodeCodes) + 1);
        FExpandedNodeCodes[High(FExpandedNodeCodes)]:= VarToInt((TreeNode as TJvDBTreeNode).MasterValue);
      end;  { if }
end;

procedure TTreeOnlyNomForm.RestoreExpandedNodes;
var
  TreeNodeCode: Integer;
  TreeNode: TTreeNode;
begin
  for TreeNodeCode in FExpandedNodeCodes do
    begin
      TreeNode:= tvTree.FindNode(TreeNodeCode);
      if Assigned(TreeNode) then
        TreeNode.Expand(False);
    end;  { for }
end;

procedure TTreeOnlyNomForm.RefreshTree(ASelectedNodeCode: Integer);
var
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    SaveExpandedNodes;

    cdsData.DisableControls;
    try
      tvTree.DataSource:= nil;
      try
        RefreshDataSet(cdsData);
      finally
        tvTree.DataSource:= dsData;
      end;  { try }
    finally
      cdsData.EnableControls;
    end;  { try }

    RestoreExpandedNodes;

    SelectNode(ASelectedNodeCode, True);
  finally
    Screen.Cursor:= SaveCursor;
  end;  { try }
end;

function TTreeOnlyNomForm.MaxVisibleNodeLevel: Integer;
var
  tn: TTreeNode;
begin
  Result:= 0;
  for tn in tvTree.Items do
    if tn.IsVisible then
      Result:= Max(Result, tn.Level);
end;

function TTreeOnlyNomForm.PreserveSelectedNode: TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc)
      var
        SelectedNode: TTreeNode;
      begin
        SelectedNode:= tvTree.Selected;
        try
          AProc;
        finally
          while not SelectedNode.IsVisible do
            SelectedNode:= SelectedNode.Parent;

          tvTree.Selected:= SelectedNode;
        end;
      end);
end;

function TTreeOnlyNomForm.PreserveTopNode: TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc)
      var
        TopNode: TTreeNode;
      begin
        TopNode:= tvTree.TopItem;
        try
          AProc;
        finally
          while not TopNode.IsVisible do
            TopNode:= TopNode.Parent;

          tvTree.TopItem:= TopNode;
        end;
      end);
end;

procedure TTreeOnlyNomForm.actCollapseAllNodesExecute(Sender: TObject);
var
  SavedMaxVisibleNodeLevel: Integer;
begin
  inherited;
  TryFinally(tvTree.Items.BeginUpdate, tvTree.Items.EndUpdate)/
    PreserveSelectedNode/
      PreserveTopNode/
        procedure begin
          SavedMaxVisibleNodeLevel:= MaxVisibleNodeLevel;
          tvTree.FullCollapse;

          if ShiftIsPressed or ControlIsPressed then
            ExpandTree(SavedMaxVisibleNodeLevel - 1)
          else
            ExpandTree(DefaultTreeExpandLevel);
        end;
end;

procedure TTreeOnlyNomForm.actExpandAllNodesExecute(Sender: TObject);
begin
  inherited;
  TryFinally(tvTree.Items.BeginUpdate, tvTree.Items.EndUpdate)/
    PreserveSelectedNode/
      PreserveTopNode/
        procedure begin
          if ShiftIsPressed or ControlIsPressed then
            ExpandTree(MaxVisibleNodeLevel + 1)
          else
            tvTree.FullExpand;
        end;
end;

procedure TTreeOnlyNomForm.actExpandAllNodesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsData.IsEmpty;
end;

procedure TTreeOnlyNomForm.actFindNextExecute(Sender: TObject);
begin
  inherited;
  Find(True);
end;

procedure TTreeOnlyNomForm.actFindNextUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (edtFind.Text <> '');
end;

procedure TTreeOnlyNomForm.actFindPrevExecute(Sender: TObject);
begin
  inherited;
  Find(False);
end;

procedure TTreeOnlyNomForm.actFindPrevUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (edtFind.Text <> '');
end;

procedure TTreeOnlyNomForm.actFinishMovingExecute(Sender: TObject);
var
  NewParentNodeCode, NewLocalNoValue: Integer;
  StrNewLocalNoValue: string;

  function IsLocalNoFree(ANewLocalNoValue: Integer): Boolean;
  begin
    Result:= True;

    cdsData.First;
    while not cdsData.Eof do
      begin
        if (cdsData.FieldByName(ParentFieldName).AsInteger = NewParentNodeCode) and
          (cdsData.FieldByName(LocalNoFieldName).AsInteger = ANewLocalNoValue) then
            begin
              Result:= False;
              Break;
            end;  { if }

        cdsData.Next;
      end;  { while }
  end;

  function IsNodeDescendant(ANodeCode, AParentNodeCode: Integer): Boolean;
  begin
    Result:= False;

    cdsData.Locate(KeyFieldName, ANodeCode, []);
    repeat
        if (cdsData.FieldByName(KeyFieldName).AsInteger = AParentNodeCode) then
          begin
            Result:= True;
            Break;
          end;  { if }

        if not cdsData.FieldByName(ParentFieldName).IsNull then
          cdsData.Locate(KeyFieldName, cdsData.FieldByName(ParentFieldName).AsInteger, []);
    until cdsData.FieldByName(ParentFieldName).IsNull;
  end;

begin
  inherited;

  Assert(not cdsData.IsEmpty);
  try
    cdsData.DisableControls;
    try
      NewParentNodeCode:= cdsData.FieldByName(KeyFieldName).AsInteger;

      if (FMovedParentNodeCode = NewParentNodeCode) then
        Abort;

      if IsNodeDescendant(NewParentNodeCode, FMovedNodeCode) then
        raise Exception.Create(SParentIsDescendant);

      NewLocalNoValue:= FMovedLocalNo;
      while not IsLocalNoFree(NewLocalNoValue) do
        begin
          if not InputQuery(SExistingNodeWithEqualLocalNo, SNewLocalNo, StrNewLocalNoValue) then
            Abort;
          NewLocalNoValue:= StrToInt(StrNewLocalNoValue);
        end;  { while }

      try
        MoveNode(FMovedNodeCode, NewParentNodeCode, NewLocalNoValue);
        actApplyUpdates.Execute;
      finally
        RefreshTree(FMovedNodeCode);
      end;  { try }
    finally
      cdsData.EnableControls;
    end;  { try }
  finally
    actToggleMoving.Execute;
  end;  { try }
end;

procedure TTreeOnlyNomForm.actFinishMovingUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    (FMovedNodeCode > 0) and
    (not cdsData.IsEmpty) and
    IsGroup;
end;

procedure TTreeOnlyNomForm.actFocusFindExecute(Sender: TObject);
begin
  inherited;
  ActiveControl:= edtFind;
  edtFind.SelectAll;
end;

procedure TTreeOnlyNomForm.actFormUpdate(Sender: TObject);
begin
  inherited;

  if (ActiveControl = edtFind) then
    begin
      actFindNext.ShortCut:= FFindNextShortcut;
      actFindPrev.ShortCut:= FFindPrevShortcut;

      actDeleteNode.ShortCut:= scNone;
      actEditNode.ShortCut:= scNone;
    end
  else
    begin
      actFindNext.ShortCut:= scNone;
      actFindPrev.ShortCut:= scNone;

      actDeleteNode.ShortCut:= FDelNodeShortcut;
      actEditNode.ShortCut:= FEditNodeShortcut;
    end;
end;

procedure TTreeOnlyNomForm.actCollapseAllNodesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsData.IsEmpty;
end;

procedure TTreeOnlyNomForm.actDeleteNodeExecute(Sender: TObject);
begin
  inherited;
  if ConfirmRecordDelete then
    try
      cdsData.Delete;
    except
      RefreshTree(SelectedTreeNodeCode);
      raise;
    end;  { try }
end;

procedure TTreeOnlyNomForm.actDeleteNodeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetDeleteEnabled;
end;

procedure TTreeOnlyNomForm.actEditNodeExecute(Sender: TObject);
begin
  inherited;
  if IsReadOnly then
    ShowEditForm(emReadOnly, False)
  else
    ShowEditForm(emEdit, False);
end;

procedure TTreeOnlyNomForm.actEditNodeUpdate(Sender: TObject);
const
  Captions: array[Boolean] of string = (SEditCaption, SReadOnlyCaption);
begin
  inherited;
  (Sender as TAction).Caption:= Captions[IsReadOnly] + cDialogSuffix;
  (Sender as TAction).Hint:= Captions[IsReadOnly];
end;

procedure TTreeOnlyNomForm.actInsertDefiniteNodeExecute(Sender: TObject);
begin
  inherited;
  ShowEditForm(emInsert, False);
end;

procedure TTreeOnlyNomForm.actInsertDefiniteNodeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= IsGroup and (EditMode = emEdit);
end;

procedure TTreeOnlyNomForm.actInsertGroupNodeExecute(Sender: TObject);
begin
  inherited;
  ShowEditForm(emInsert, True);
end;

procedure TTreeOnlyNomForm.actInsertGroupNodeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= IsGroup and (EditMode = emEdit);
end;

procedure TTreeOnlyNomForm.actPrintSubTreeExecute(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  inherited;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    with cdsPrintTree do
      begin
        Open;
        try
          Screen.Cursor:= SaveCursor;
          TrptTreeDefault.PrintReport(cdsPrintTree);
        finally
          Close;
        end;  { try }
      end;  { with }
  finally
    Screen.Cursor:= SaveCursor;
  end;  { try }
end;

procedure TTreeOnlyNomForm.actShowInactiveExecute(Sender: TObject);
var
  SavedNodeCode: Integer;
  SavedDataSource: TDataSource;
begin
  inherited;
  FShowInactive:= not FShowInactive;

  with cdsData do
    begin
      DisableControls;
      try
        SavedNodeCode:= cdsData.FieldByName(KeyFieldName).AsInteger;

        Filtered:= False;
        Filtered:= True;

        SaveExpandedNodes;

        SavedDataSource:= tvTree.DataSource;
        tvTree.DataSource:= nil;
        tvTree.DataSource:= SavedDataSource;

        tvTree.FullExpand;
        tvTree.FullCollapse;

        RestoreExpandedNodes;

        SelectNode(SavedNodeCode, True);
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TTreeOnlyNomForm.actShowInactiveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= FShowInactive;
end;

procedure TTreeOnlyNomForm.actToggleMovingExecute(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      if (FMovedNodeCode = 0) then
        begin
          FMovedNodeCode:= cdsData.FieldByName(KeyFieldName).AsInteger;
          FMovedParentNodeCode:= cdsData.FieldByName(ParentFieldName).AsInteger;
          FMovedLocalNo:= cdsData.FieldByName(LocalNoFieldName).AsInteger;
        end
      else
        begin
          FMovedNodeCode:= 0;
          FMovedParentNodeCode:= 0;          
          FMovedLocalNo:= 0;
        end;
    end;  { with }
end;

procedure TTreeOnlyNomForm.actToggleMovingUpdate(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:=
        (FMovedNodeCode > 0) or
        ( (EditMode = emEdit) and
          cdsData.Active and
          (not cdsData.IsEmpty) and
          (not IsReadOnly)
        );

      Checked:= (FMovedNodeCode > 0);

      ImageIndex:= 121 + Ord(FMovedNodeCode > 0);
      Hint:= IfThen(FMovedNodeCode > 0, SCancelMovingHint, SStartMovingHint);
    end;  { with }
end;

function TTreeOnlyNomForm.CanSelectNode: Boolean;
begin
  Result:=
    (FTreeDetailSelection = tdsAll) or
    ((TreeDetailSelection = tdsInstance) and not IsGroup);
end;

procedure TTreeOnlyNomForm.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  // za da keshira cqloto darwo
  tvTree.FullExpand;
  tvTree.FullCollapse;
end;

procedure TTreeOnlyNomForm.cdsDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:= IsAcceptedByFilter;
end;

procedure TTreeOnlyNomForm.cdsPrintTreeBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetPrintDataSetParams;
end;

function TTreeOnlyNomForm.IsAcceptedByFilter: Boolean;
begin
  Result:= FShowInactive or not IsInactive;
end;

function TTreeOnlyNomForm.GetDeleteEnabled: Boolean;
begin
  Result:= not IsReadOnly and not IsRoot;
end;

function TTreeOnlyNomForm.IsReadOnly: Boolean;
begin
  Result:= (EditMode = emReadOnly) or (IsRoot and IsRootReadOnly) or (FMovedNodeCode > 0);
end;

function TTreeOnlyNomForm.IsRootReadOnly: Boolean;
begin
  Result:= True;
end;

procedure TTreeOnlyNomForm.MoveNode(ANodeCode, ANewParentNodeCode, ANewLocalNoValue: Integer);
begin
  cdsData.Locate(KeyFieldName, ANodeCode, []);
  cdsData.Edit;
  try
    cdsData.FieldByName(ParentFieldName).AsInteger:= ANewParentNodeCode;
    cdsData.FieldByName(LocalNoFieldName).AsInteger:= ANewLocalNoValue;

    cdsData.Post;
  except
    cdsData.Cancel;
    raise;
  end;  { try }
end;

function TTreeOnlyNomForm.SelectNode(ANodeCode: Integer; ASelectRootIfNotFound: Boolean): Boolean;
begin
  Result:= cdsData.Locate(KeyFieldName, ANodeCode, []);

  if Result then
    begin
      ExpandToNode(ParentNodeCode);
      cdsData.Locate(KeyFieldName, ANodeCode, []);
    end
  else
    begin
      if ASelectRootIfNotFound then
        cdsData.Locate(KeyFieldName, RootNodeCode, []);
    end;
end;

procedure TTreeOnlyNomForm.Initialize;
begin
  inherited;

  if (FDefaultSelectedNodeCode = 0) then
    FDefaultSelectedNodeCode:= RootNodeCode;

  pnlOKCancel.Visible:= (FTreeDetailSelection <> tdsNone);
  pnlClose.Visible:= (FTreeDetailSelection = tdsNone);

  ExpandTree(DefaultTreeExpandLevel);

  if not SelectNode(FDefaultSelectedNodeCode) then
    begin
      actShowInactive.Execute;

      if not SelectNode(FDefaultSelectedNodeCode) then
        actShowInactive.Execute;
    end;  { if }
end;

procedure TTreeOnlyNomForm.pmNodesEditPopup(Sender: TObject);
begin
  inherited;
  cdsData.Locate(
    KeyFieldName,
    SelectedTreeNodeCode,
    []);
end;

procedure TTreeOnlyNomForm.tvTreeDblClick(Sender: TObject);
begin
  inherited;
  if not IsGroup then
    ModalResult:= mrOk;
end;

end.
