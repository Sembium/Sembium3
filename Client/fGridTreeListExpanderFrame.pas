unit fGridTreeListExpanderFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBaseFrame, ActnList, ComCtrls, ToolWin, AbmesDBGrid, uNestProc, MemTreeEh,
  System.Actions;

type
  TfrGridTreeListExpanderFrame = class(TBaseFrame)
    tlbMain: TToolBar;
    sepLeft: TToolButton;
    btnExpand: TToolButton;
    btnCollapse: TToolButton;
    actExpand: TAction;
    actCollapse: TAction;
    procedure actExpandExecute(Sender: TObject);
    procedure actExpandUpdate(Sender: TObject);
    procedure actCollapseUpdate(Sender: TObject);
    procedure actCollapseExecute(Sender: TObject);
  private
    FTreeListGrid: TAbmesDBGrid;
    function KeyFieldName: string;
    function ParentKeyFieldName: string;
    function GetMaxVisibleLevel: Integer;
    function PreserveCurrentRecord: TNestProcRec;
    procedure CollapseNodes(AMaxLevel: Integer; ANode: TBaseTreeNodeEh);
    procedure ExpandNodes(AMaxLevel: Integer; ANode: TBaseTreeNodeEh);
  public
    property TreeListGrid: TAbmesDBGrid read FTreeListGrid write FTreeListGrid;
  end;

implementation

uses
  uClientUtils, uTreeListUtils, MemTableEh, uUtils, Math, DB, uEnumeratorUtils;

type
  TBaseTreeNodeEhHack = class(TBaseTreeNodeEh);

{$R *.dfm}

function TfrGridTreeListExpanderFrame.GetMaxVisibleLevel: Integer;
var
  MaxLevel: Integer;
begin
  MaxLevel:= -1;
  TreeListGrid.TreeDataSet.ForEach/
    procedure begin
      MaxLevel:= Max(MaxLevel, TreeListGrid.TreeDataSet.TreeNodeLevel);
    end;

  Result:= MaxLevel;
end;

procedure TfrGridTreeListExpanderFrame.CollapseNodes(AMaxLevel: Integer; ANode: TBaseTreeNodeEh);
var
  Child: TBaseTreeNodeEh;
begin
  with TBaseTreeNodeEhHack(ANode) do
    if (Level >= AMaxLevel-1) then
      Expanded:= False;

  for Child in ANode.Children do
    CollapseNodes(AMaxLevel, Child);
end;

procedure TfrGridTreeListExpanderFrame.ExpandNodes(AMaxLevel: Integer; ANode: TBaseTreeNodeEh);
var
  Child: TBaseTreeNodeEh;
begin
  with TBaseTreeNodeEhHack(ANode) do
    if (Parent <> nil) then
      if (Level <= AMaxLevel) then
        Expanded:= True;

  for Child in ANode.Children do
    ExpandNodes(AMaxLevel, Child);
end;

procedure TfrGridTreeListExpanderFrame.actCollapseExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(TreeListGrid));

  if ControlIsPressed then
    TreeListGrid.TreeDataSet.TempDisableControls/
      PreserveCurrentRecord/
        TreeListGrid.TreeDataSet.TempDisableSync/
          procedure begin
            CollapseNodes(GetMaxVisibleLevel, TreeListGrid.TreeDataSet.RecordsView.MemoryTreeList.Root);
            TreeListGrid.TreeDataSet.RecordsView.MemoryTreeList.BuildVisibleItems;
            TreeListGrid.TreeDataSet.Resync([]);
          end
  else
    TreeListGrid.TreeDataSet.TreeList.FullCollapse;
end;

procedure TfrGridTreeListExpanderFrame.actCollapseUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(TreeListGrid));
  (Sender as TAction).Enabled:=
    (TreeListGrid.DataSource.DataSet is TMemTableEh) and
    not TreeListGrid.TreeDataSet.IsEmpty;
end;

procedure TfrGridTreeListExpanderFrame.actExpandExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(TreeListGrid));

  if ControlIsPressed then
    TreeListGrid.TreeDataSet.TempDisableControls/
      PreserveCurrentRecord/
        TreeListGrid.TreeDataSet.TempDisableSync/
          procedure begin
            ExpandNodes(GetMaxVisibleLevel, TreeListGrid.TreeDataSet.RecordsView.MemoryTreeList.Root);
            TreeListGrid.TreeDataSet.RecordsView.MemoryTreeList.BuildVisibleItems;
            TreeListGrid.TreeDataSet.Resync([]);
          end
  else
    TreeListGrid.TreeDataSet.TreeList.FullExpand;
end;

procedure TfrGridTreeListExpanderFrame.actExpandUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(TreeListGrid));
  (Sender as TAction).Enabled:=
    (TreeListGrid.DataSource.DataSet is TMemTableEh) and
    not TreeListGrid.TreeDataSet.IsEmpty;
end;

function TfrGridTreeListExpanderFrame.KeyFieldName: string;
begin
  Result:= TreeListGrid.TreeDataSet.TreeList.KeyFieldName;
end;

function TfrGridTreeListExpanderFrame.ParentKeyFieldName: string;
begin
  Result:= TreeListGrid.TreeDataSet.TreeList.RefParentFieldName;
end;

function TfrGridTreeListExpanderFrame.PreserveCurrentRecord: TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      KeyFieldValue: Variant;
      ParentKeyFieldValue: Variant;
    begin
      KeyFieldValue:= TreeListGrid.TreeDataSet.FieldByName(KeyFieldName).AsVariant;
      ParentKeyFieldValue:= TreeListGrid.TreeDataSet.FieldByName(ParentKeyFieldName).AsVariant;
      try
        AProc;
      finally
        if not TreeListGrid.TreeDataSet.Locate(KeyFieldName, KeyFieldValue, []) then
          TreeListGrid.TreeDataSet.Locate(KeyFieldName, ParentKeyFieldValue, []);
      end;
    end);
end;

end.
