unit fTreeGridForm;
                                                  
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fTreeSplitForm, Db, DBClient, ActnList, ImgList, StdCtrls,
  ComCtrls, ToolWin, ExtCtrls, Buttons, GridsEh, JvCaptionButton,
  DBCtrls, ColorNavigator, TreeParentsComboBox, AbmesClientDataSet,
  DBGridEh, AbmesDBGrid, AbmesFields, JvButtons, Menus, JvComponent,
  JvComponentBase, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, DBAxisGridsEh, System.ImageList, System.Actions;

type
  TTreeGridForm = class(TTreeSplitForm)
    grdChildren: TAbmesDBGrid;
    cdsNodeChildren: TAbmesClientDataSet;
    dsNodeChildren: TDataSource;
    pnlNavChildren: TPanel;
    navChildren: TDBColorNavigator;
    btnFilterParams: TToolButton;
    pnlHeader: TPanel;
    hcChildren: THeaderControl;
    procedure tvTreeChange(Sender: TObject; Node: TTreeNode);
    procedure FormCreate(Sender: TObject);
    procedure hcChildrenSectionResize(HeaderControl: THeaderControl;
      Section: THeaderSection);
    procedure hcChildrenSectionTrack(HeaderControl: THeaderControl;
      Section: THeaderSection; Width: Integer; State: TSectionTrackState);
    procedure hcChildrenMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure hcChildrenMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdChildrenDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure navChildrenBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    FCanClickChildrenHeaderButtons: Boolean;
    FClickedSection: Integer;
    FSortByFieldNames: string;
    FSortByDescFieldNames: string;
    FSortDescending: Boolean;
    procedure RefreshNodeChildren;
  protected
    function GetSortBy(const AFieldName: string): string; virtual;
    function GetSortByDescFields(const ADescFields: string): string; virtual;
    procedure RecreateHeaderSections;
    procedure SortByFieldName(AFieldName: string); virtual;

    property SortByFieldNames: string read FSortByFieldNames;
    property SortByDescFieldNames: string read FSortByDescFieldNames;
    property SortDescending: Boolean read FSortDescending;
  public
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  fTreeForm;

{$R *.DFM}

const
  SortIndexName = 'idxSort';

{ TTreeGridForm }

procedure TTreeGridForm.Finalize;
begin
  cdsNodeChildren.Close;
  inherited;
end;

procedure TTreeGridForm.tvTreeChange(Sender: TObject; Node: TTreeNode);
begin
  inherited;
  RefreshNodeChildren;
end;

procedure TTreeGridForm.RefreshNodeChildren;
var
  OldCursor: TCursor;
  s: string;
  i: Integer;
begin
  inherited;

  OldCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    with cdsNodeChildren do
      begin
        DisableControls;
        try
          Params.ParamByName('NODE_ID').AsInteger:=
            TNodeData(tvTree.Selected.Data).ID;

          if (IndexName = SortIndexName) then
            begin
              s:= '';
              for i:= 0 to IndexFieldCount - 1 do
                s:= s + IndexFields[i].FieldName + '; ';
              if (s <> '') then
                SetLength(s, Length(s)-2);

              IndexName:= '';
              try
                cdsNodeChildren.DeleteIndex(SortIndexName);
              except
              end;

              Close;
              Open;

              cdsNodeChildren.AddIndex(SortIndexName, s, [], FSortByDescFieldNames);
              cdsNodeChildren.IndexName:= SortIndexName;

              First;
            end
          else
            begin
              Close;
              Open;
            end;
        finally
          cdsNodeChildren.EnableControls;
        end;
      end;  { with }
  finally
    Screen.Cursor:= OldCursor;
  end;
end;

procedure TTreeGridForm.FormCreate(Sender: TObject);
begin
  inherited;

  FCanClickChildrenHeaderButtons:= True;
  hcChildren.Width:= pnlHeader.Width;
  RecreateHeaderSections;
end;

procedure TTreeGridForm.hcChildrenSectionResize(
  HeaderControl: THeaderControl; Section: THeaderSection);
var
  VisibleColumnCount: Integer;
  ColumnIndex: Integer;
begin
  inherited;

  VisibleColumnCount:= 0;
  ColumnIndex:= -1;
  while (VisibleColumnCount <= Section.Index) and (ColumnIndex < grdChildren.Columns.Count - 1) do
    begin
      Inc(ColumnIndex);
      Inc(VisibleColumnCount, Ord(grdChildren.Columns[ColumnIndex].Visible));
    end;
  Assert(VisibleColumnCount > Section.Index, Format('Visible column %d not found', [Section.Index]));

  if (Section.Index = 0) then
    grdChildren.Columns[ColumnIndex].Width:= Section.Width - 3
  else
    grdChildren.Columns[ColumnIndex].Width:= Section.Width;
end;

procedure TTreeGridForm.hcChildrenSectionTrack(
  HeaderControl: THeaderControl; Section: THeaderSection; Width: Integer;
  State: TSectionTrackState);
begin
  inherited;
  FCanClickChildrenHeaderButtons:= (State = tsTrackEnd);
end;

procedure TTreeGridForm.hcChildrenMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i: Integer;
begin
  inherited;

  FClickedSection:= -1;
  if FCanClickChildrenHeaderButtons then
    begin
      i:= 0;
      while (i < hcChildren.Sections.Count) and
             not ( (hcChildren.Sections[i].Left <= X) and
                   (X <= hcChildren.Sections[i].Right) ) do Inc(i);
      if (i < hcChildren.Sections.Count) then
        FClickedSection:= i;
    end;
end;

procedure TTreeGridForm.hcChildrenMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i: Integer;
  k: Integer;
  VisibleCount: Integer;
begin
  inherited;

  if (FClickedSection >= 0) and (Y >= 0) and (Y < hcChildren.Height) then
    begin
      i:= 0;
      while (i < hcChildren.Sections.Count) and
             not ( (hcChildren.Sections[i].Left <= X) and
                   (X <= hcChildren.Sections[i].Right) ) do Inc(i);

      if (i = FClickedSection) then
        begin
          VisibleCount:= 0;
          for k:= 0 to grdChildren.Columns.Count - 1 do
            begin
              if grdChildren.Columns[k].Visible then
                Inc(VisibleCount);

              if (VisibleCount = i + 1) then
                begin
                  SortByFieldName(grdChildren.Columns[k].FieldName);
                  Break;
                end;
            end;
        end;
    end;
end;

function TTreeGridForm.GetSortBy(const AFieldName: string): string;
begin
  Result:= AFieldName;
end;

procedure TTreeGridForm.RecreateHeaderSections;
var
  i: Integer;
begin
  with hcChildren.Sections do
    begin
      BeginUpdate;
      try
        Clear;

        for i:= 0 to grdChildren.Columns.Count - 1 do
          if grdChildren.Columns[i].Visible then
            with Add do
              begin
                Text:= grdChildren.Columns[i].Title.Caption;
                Alignment:= grdChildren.Columns[i].Title.Alignment;
                Width:= grdChildren.Columns[i].Width + 1;
                if (i = 0) then Width:= Width + 2;
              end;
      finally
        EndUpdate;
      end;
    end;
end;

procedure TTreeGridForm.SortByFieldName(AFieldName: string);
var
  s: string;
  i: Integer;
begin
  s:= AFieldName;

  s:= GetSortBy(s);

  if (FSortByDescFieldNames = '') then
    begin
      if (cdsNodeChildren.IndexName = '') then
        FSortByDescFieldNames:= AFieldName
      else
        for i:= 0 to cdsNodeChildren.IndexFieldCount - 1 do
          if (cdsNodeChildren.IndexFields[i].FieldName = AFieldName) then
            FSortByDescFieldNames:= AFieldName;
    end
  else
    FSortByDescFieldNames:= '';

  cdsNodeChildren.IndexName:= '';

  try
    cdsNodeChildren.DeleteIndex(SortIndexName);
  except
  end;

  FSortByFieldNames:= s;
  FSortByDescFieldNames:= GetSortByDescFields(FSortByDescFieldNames);

  cdsNodeChildren.AddIndex(SortIndexName, FSortByFieldNames, [], FSortByDescFieldNames);
  cdsNodeChildren.IndexName:= SortIndexName;

  FSortDescending:= (FSortByDescFieldNames <> '') and (FSortByDescFieldNames <> 'NODE_TYPE');
end;

procedure TTreeGridForm.Initialize;
begin
  inherited;
  FSortByDescFieldNames:= grdChildren.Columns[1].FieldName;
  SortByFieldName(FSortByDescFieldNames);
end;

procedure TTreeGridForm.navChildrenBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;

  if (Button = nbRefresh) then
    begin
      RefreshNodeChildren;
      Abort;
    end;
end;

function TTreeGridForm.GetSortByDescFields(
  const ADescFields: string): string;
begin
  Result:= ADescFields;
end;

procedure TTreeGridForm.grdChildrenDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  Offset: Integer;
  NewWidth: Integer;
  NewLeft: Integer;
begin
  inherited;

  if (DataCol = 0) then
    begin
      Offset:= -Rect.Left;

      NewWidth:= pnlHeader.Width + Offset;
      NewLeft:= -Offset;

      if (NewLeft <> hcChildren.Left) or
         (NewWidth <> hcChildren.Width) then
        hcChildren.SetBounds(NewLeft, hcChildren.Top, NewWidth, hcChildren.Height);
    end;
end;

end.
