unit fSQL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fButtonForm, Menus, JvButtons, ActnList, StdCtrls, Buttons,
  ExtCtrls, GridsEh, DBGridEh, AbmesDBGrid, DB, DBClient, ComCtrls,
  JvComponent, JvCaptionButton, DBGridEhGrouping;

type
  TfmSQL = class(TButtonForm)
    actExecuteSQL: TAction;
    actClearSQLWindow: TAction;
    pnlMain: TPanel;
    pnlSQL: TPanel;
    moSQL: TMemo;
    spMain: TSplitter;
    pnlButtons: TPanel;
    btnExecSQL: TBitBtn;
    btnClear: TBitBtn;
    grdResult: TAbmesDBGrid;
    cdsResult: TClientDataSet;
    dsResult: TDataSource;
    sbMain: TStatusBar;
    btnExcelExport: TBitBtn;
    actExcelExport: TAction;
    actSelectAllSQL: TAction;
    procedure actExecuteSQLUpdate(Sender: TObject);
    procedure actClearSQLWindowUpdate(Sender: TObject);
    procedure actClearSQLWindowExecute(Sender: TObject);
    procedure actExecuteSQLExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cdsResultAfterExecute(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actExcelExportUpdate(Sender: TObject);
    procedure actExcelExportExecute(Sender: TObject);
    procedure actSelectAllSQLUpdate(Sender: TObject);
    procedure actSelectAllSQLExecute(Sender: TObject);
  private
    FGridHeight: Integer;
    FRowsAffected: Integer;
    procedure SetGridVisible;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uExcelExport, uUserActivityConsts, uUtils;

{$R *.dfm}

resourcestring
  SRowsAffected = '%d променени реда за %0.000f секунди';
  SRowsSelected = '%d избрани реда за %0.000f секунди';
  SCantExecModifyStatement = 'Нямате Информационна Отговорност за изпълнение на modify statement.';

procedure TfmSQL.actExecuteSQLUpdate(Sender: TObject);
begin
  inherited;
  actExecuteSQL.Enabled:= (moSQL.Lines.Count > 0);
end;

procedure TfmSQL.actSelectAllSQLExecute(Sender: TObject);
begin
  inherited;
  moSQL.SelectAll;
end;

procedure TfmSQL.actSelectAllSQLUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= moSQL.Focused;
end;

procedure TfmSQL.actClearSQLWindowUpdate(Sender: TObject);
begin
  inherited;
  actClearSQLWindow.Enabled:= (moSQL.Lines.Count > 0);
end;

procedure TfmSQL.actClearSQLWindowExecute(Sender: TObject);
begin
  inherited;
  moSQL.Lines.Clear;
end;

procedure TfmSQL.actExecuteSQLExecute(Sender: TObject);
var
  BeginMoment: Cardinal;
  Interval: Extended;
  SaveCursor: TCursor;
  IsSelectStatement: Boolean;
begin
  inherited;

  IsSelectStatement:=
    (LowerCase(Copy(Trim(moSQL.Lines.Text), 1, 6)) = 'select');

  if not IsSelectStatement then
    begin
      if not LoginContext.HasUserActivity(uaSQLEditorModifyStatement) then
        raise Exception.Create(SCantExecModifyStatement);
    end;

  cdsResult.Close;
  cdsResult.CommandText:= moSQL.Lines.Text;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    BeginMoment:= GetTickCount;

    if IsSelectStatement then
      cdsResult.Open
    else
      cdsResult.Execute;
      
    Interval:= TickCountDiff(BeginMoment, GetTickCount) / 1000;

  finally
    Screen.Cursor:= SaveCursor;
  end;   { try }

  SetGridVisible;

  if cdsResult.Active then
    sbMain.Panels[0].Text:= Format(SRowsSelected, [cdsResult.RecordCount, Interval])
  else
    sbMain.Panels[0].Text:= Format(SRowsAffected, [FRowsAffected, Interval])
end;

procedure TfmSQL.FormCreate(Sender: TObject);
begin
  inherited;
  FGridHeight:= grdResult.Height;
end;

procedure TfmSQL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsResult.Close;
end;

procedure TfmSQL.SetGridVisible;
begin
  if not cdsResult.Active then
    begin
      FGridHeight:= grdResult.Height;
      grdResult.Height:= 0;
      spMain.Enabled:= False;
    end
  else
    begin
      grdResult.Height:= FGridHeight;
      spMain.Enabled:= True;
    end;
end;

procedure TfmSQL.FormShow(Sender: TObject);
begin
  inherited;
  SetGridVisible;
end;

procedure TfmSQL.cdsResultAfterExecute(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FRowsAffected:= OwnerData;
end;

procedure TfmSQL.actExcelExportUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsResult.Active;
end;

procedure TfmSQL.actExcelExportExecute(Sender: TObject);
begin
  inherited;
  GridExcelExport(grdResult);
end;

end.
