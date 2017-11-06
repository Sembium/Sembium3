unit fDBGridSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, fBaseFrame, StdCtrls, ComCtrls,
  ToolWin, ActnList, AbmesDBGrid, DBGridEh, ExtCtrls, AppEvnts, System.Actions;

type
  TfrDBGridSearch = class(TBaseFrame)
    actSearchForwards: TAction;
    actSearchBackwards: TAction;
    actFocusSearch: TAction;
    pnlMain: TPanel;
    tlbSearchData: TToolBar;
    btnSearchDataForwards: TToolButton;
    btnSearchDataBackwards: TToolButton;
    edtSearch: TEdit;
    ApplicationEvents: TApplicationEvents;
    procedure actSearchForwardsUpdate(Sender: TObject);
    procedure actSearchBackwardsUpdate(Sender: TObject);
    procedure actSearchForwardsExecute(Sender: TObject);
    procedure actSearchBackwardsExecute(Sender: TObject);
    procedure actFocusSearchExecute(Sender: TObject);
    procedure actFocusSearchUpdate(Sender: TObject);
    procedure actFrameUpdate(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure FrameExit(Sender: TObject);
    procedure ApplicationEventsMessage(var Msg: tagMSG; var Handled: Boolean);
  private
    FDBGrid: TAbmesDBGrid;
    FFrameEnterTop: Integer;
    procedure SearchGrid(ASearchForwards: Boolean);
  public
    property DBGrid: TAbmesDBGrid read FDBGrid write FDBGrid;
  end;

implementation

{$R *.dfm}

uses
  DB, uClientUtils, StrUtils, Menus, uUtils, Math, uAbmesDBGridHelpers;

const
  SearchShortcutText = 'Ctrl+F';

resourcestring
  SNewSearch = 'Ново търсене';

procedure TfrDBGridSearch.actFocusSearchExecute(Sender: TObject);
begin
  inherited;
  edtSearch.SetFocus;
  edtSearch.SelectAll;
end;

procedure TfrDBGridSearch.actFocusSearchUpdate(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:=
        Assigned(DBGrid) and
        ( (Screen.ActiveControl = edtSearch) or
          (Screen.ActiveControl = DBGrid) );

      if Enabled then
        begin
          ShortCut:= TextToShortCut(SearchShortcutText);
          edtSearch.TextHint:= Format('%s (%s)', [SNewSearch, SearchShortcutText]);
        end
      else
        begin
          ShortCut:= scNone;
          edtSearch.TextHint:= SNewSearch;
        end;
    end;
end;

procedure TfrDBGridSearch.actFrameUpdate(Sender: TObject);
begin
  inherited;
  actFocusSearchUpdate(actFocusSearch);
end;

procedure TfrDBGridSearch.actSearchBackwardsExecute(Sender: TObject);
begin
  inherited;
  SearchGrid(False);
end;

procedure TfrDBGridSearch.actSearchBackwardsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (edtSearch.Text <> '');

  if edtSearch.Focused then
    (Sender as TAction).ShortCut:= TextToShortCut('Shift+Enter')
  else
    (Sender as TAction).ShortCut:= scNone;
end;

procedure TfrDBGridSearch.actSearchForwardsExecute(Sender: TObject);
begin
  inherited;
  SearchGrid(True);
end;

procedure TfrDBGridSearch.actSearchForwardsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (edtSearch.Text <> '');

  if edtSearch.Focused then
    (Sender as TAction).ShortCut:= TextToShortCut('Enter')
  else
    (Sender as TAction).ShortCut:= scNone;
end;

procedure TfrDBGridSearch.ApplicationEventsMessage(var Msg: tagMSG;
  var Handled: Boolean);
begin
  inherited;

  if (Msg.message = WM_KEYDOWN) and
     (Screen.ActiveControl = edtSearch) and
     (Msg.wParam = VK_ESCAPE) then
    begin
      Handled:= True;
      DoExit;
    end;
end;

procedure TfrDBGridSearch.FrameEnter(Sender: TObject);
begin
  inherited;
  FFrameEnterTop:= Top;
  Top:= Max(Top, 0);
end;

procedure TfrDBGridSearch.FrameExit(Sender: TObject);
begin
  inherited;

  Top:= FFrameEnterTop;

  try
    DBGrid.SetFocus;
  except
  end;
end;

procedure TfrDBGridSearch.SearchGrid(ASearchForwards: Boolean);
var
  SearchFields: array of TField;
  c: TColumnEh;
  i: Integer;
  DataSet: TDataSet;
  SaveRecNo: Integer;
begin
  SetLength(SearchFields, DBGrid.VisibleColumns.Count);
  i:= 0;
  for c in DBGrid.AllColumns do
    if c.Visible then
      begin
        SearchFields[i]:= c.Field;
        Inc(i);
      end;

  DataSet:= DBGrid.DataSource.DataSet;
  Screen.TempCursor(crHourGlass)/
    DataSet.TempDisableControls/
      procedure
      var
        fld: TField;
        Found: Boolean;
      begin
        SaveRecNo:= DataSet.RecNo;
        try
          Found:= False;
          while (ASearchForwards and (DataSet.RecNo < DataSet.RecordCount)) or
                ((not ASearchForwards) and (DataSet.RecNo > 1)) do
            begin
              if ASearchForwards then
                DataSet.Next
              else
                DataSet.Prior;

              for fld in SearchFields do
                if Assigned(fld) and
                   ContainsText(fld.DisplayText, edtSearch.Text) then
                  begin
                    Found:= True;
                    Break;
                  end;

              if Found then
                begin
                  SaveRecNo:= DataSet.RecNo;
                  Break;
                end;
            end;
        finally
          DataSet.RecNo:= SaveRecNo;
        end;
      end;
end;

end.
