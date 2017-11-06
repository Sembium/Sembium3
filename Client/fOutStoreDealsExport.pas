unit fOutStoreDealsExport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, JvButtons, ActnList, StdCtrls, Buttons,
  ExtCtrls, JvToolEdit, Mask, DB, DBClient, AbmesClientDataSet, AbmesReport,
  AbmesFields, GridsEh, DBGridEh, AbmesDBGrid, JvExMask, JvComponent,
  JvCaptionButton, fButtonForm, JvComponentBase, DBGridEhGrouping, AppEvnts,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh,
  System.Actions;

type
  TfmOutStoreDealsExport = class(TButtonForm)
    edtBeginDate: TJvDateEdit;
    edtEndDate: TJvDateEdit;
    lblBeginDate: TLabel;
    lblEndDate: TLabel;
    lblFileName: TLabel;
    edtFileName: TJvFilenameEdit;
    cdsModelOutStoreDealsExport: TAbmesClientDataSet;
    sfr: TAbmesFileReport;
    dsModelOutStoreDealsExport: TDataSource;
    cdsModelOutStoreDealsExportSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsModelOutStoreDealsExportSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    cdsModelOutStoreDealsExportSTORE_NO: TAbmesFloatField;
    cdsModelOutStoreDealsExportSTORE_DEAL_NO_IN_STORE: TAbmesFloatField;
    cdsModelOutStoreDealsExportSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsModelOutStoreDealsExportSALE_TYPE_EXPORT_NO: TAbmesFloatField;
    cdsModelOutStoreDealsExportSALE_NO: TAbmesFloatField;
    cdsModelOutStoreDealsExportPRODUCT_NO: TAbmesFloatField;
    cdsModelOutStoreDealsExportACCOUNT_MEASURE_EXPORT_NO: TAbmesFloatField;
    cdsModelOutStoreDealsExportACCOUNT_QUANTITY: TAbmesFloatField;
    cdsModelOutStoreDealsExport_STORE_DEAL_YEAR: TAbmesFloatField;
    cdsModelOutStoreDealsExport_ORDER_NO: TAbmesFloatField;
    cdsModelOutStoreDealsExportSALE_TYPE_EXPORT_NO_2: TAbmesFloatField;
    chbTranslate: TCheckBox;
    cdsExcludedStores: TAbmesClientDataSet;
    cdsIncludedStores: TAbmesClientDataSet;
    dsExcludedStores: TDataSource;
    dsIncludedStores: TDataSource;
    cdsIncludedStoresSTORE_CODE: TAbmesFloatField;
    cdsIncludedStoresSTORE_NAME: TAbmesWideStringField;
    cdsIncludedStoresSTORE_IDENTIFIER: TAbmesWideStringField;
    cdsExcludedStoresSTORE_CODE: TAbmesFloatField;
    cdsExcludedStoresSTORE_NAME: TAbmesWideStringField;
    cdsExcludedStoresSTORE_IDENTIFIER: TAbmesWideStringField;
    gbExcludedStores: TGroupBox;
    grdExcludedStores: TAbmesDBGrid;
    grdIncludedStores: TAbmesDBGrid;
    lblExcludedStores: TLabel;
    lblIncludedStores: TLabel;
    btnExcludeStores: TSpeedButton;
    btnIncludeStores: TSpeedButton;
    actExcludeStores: TAction;
    actIncludeStores: TAction;
    cdsStores: TAbmesClientDataSet;
    cdsStoresSTORE_CODE: TAbmesFloatField;
    cdsStoresSTORE_NAME: TAbmesWideStringField;
    cdsStoresSTORE_IDENTIFIER: TAbmesWideStringField;
    cdsModelOutStoreDealsExportDOCUMENT_TYPE_NO: TAbmesFloatField;
    bvlMain: TBevel;
    ApplicationEvents: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsModelOutStoreDealsExportCalcFields(DataSet: TDataSet);
    procedure actExcludeStoresUpdate(Sender: TObject);
    procedure actExcludeStoresExecute(Sender: TObject);
    procedure actIncludeStoresUpdate(Sender: TObject);
    procedure actIncludeStoresExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure grdExcludedStoresDblClick(Sender: TObject);
    procedure grdIncludedStoresDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEventsMessage(var Msg: tagMSG; var Handled: Boolean);
  private
    procedure DoExport;
  public
    class function ShowForm: Integer;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, DateUtils, DBConsts, fAnimatedSplash, ComCtrls, uUtils,
  uClientUtils, uJvComboEditFixer;

{$R *.dfm}

resourcestring
  SPleaseWait = 'Моля почакайте. Експорт...';

{ TfmOutStoreDealsExport }

class function TfmOutStoreDealsExport.ShowForm: Integer;
var
  f: TfmOutStoreDealsExport;
begin
  f:= CreateEx;
  try
    f.SetDataParams;
    Result:= f.InternalShowForm;

    if (Result = mrOK) then
      f.DoExport;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmOutStoreDealsExport.FormCreate(Sender: TObject);
begin
  inherited;
  InitializeAbmesDBGrid(grdExcludedStores);
  InitializeAbmesDBGrid(grdIncludedStores);
end;

procedure TfmOutStoreDealsExport.FormDestroy(Sender: TObject);
begin
  inherited;
  cdsExcludedStores.Close;
  cdsIncludedStores.Close;
end;

procedure TfmOutStoreDealsExport.Initialize;
begin
  inherited;

  cdsIncludedStores.CreateDataSet;
  cdsExcludedStores.CreateDataSet;

  cdsIncludedStores.DisableControls;
  try
    cdsStores.Open;
    try
      while not cdsStores.Eof do
        begin
          cdsIncludedStores.Append;
          try
            AssignFields(cdsStores, cdsIncludedStores);
            cdsIncludedStores.Post;
          except
            cdsIncludedStores.Cancel;
            raise;
          end;   { try }

          cdsStores.Next;
        end;   { while }
    finally
      cdsStores.Close;
    end;   { try }

    cdsIncludedStores.First;
  finally
    cdsIncludedStores.EnableControls;
  end;   { try }
end;

procedure TfmOutStoreDealsExport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  if (ModalResult = mrOK) then
    begin
      if (edtBeginDate.Date = 0) then
        begin
          ActiveControl:= edtBeginDate;
          raise Exception.CreateFmt(SFieldRequired, [lblBeginDate.Caption]);
        end;

      if (edtEndDate.Date = 0) then
        begin
          ActiveControl:= edtEndDate;
          raise Exception.CreateFmt(SFieldRequired, [lblEndDate.Caption]);
        end;

      if (edtFileName.Text = '') then
        begin
          ActiveControl:= edtFileName;
          raise Exception.CreateFmt(SFieldRequired, [lblFileName.Caption]);
        end;
    end;   { if }
end;

procedure TfmOutStoreDealsExport.DoExport;
var
  SaveCursor: TCursor;
  fmSplash: TfmAnimatedSplash;
  s: string;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    Application.CreateForm(TfmAnimatedSplash, fmSplash);
    try
      fmSplash.ShowForm(aviCopyFiles, SPleaseWait);

      sfr.FileName:= edtFileName.FileName;
      sfr.Translate:= chbTranslate.Checked;

      cdsModelOutStoreDealsExport.Params.ParamByName('BEGIN_DATE').AsDateTime:=
        edtBeginDate.Date;
      cdsModelOutStoreDealsExport.Params.ParamByName('END_DATE').AsDateTime:=
        edtEndDate.Date;

      with cdsExcludedStores do
        begin
          DisableControls;
          try
            s:= '';
            First;
            while not Eof do
              begin
                s:= s + cdsExcludedStoresSTORE_CODE.AsString + ', ';
                Next;
              end;   { while }
          finally
            EnableControls;
          end;   { try }
        end;   { with }
      if (s <> '') then
        SetLength(s, Length(s) - 2);
      cdsModelOutStoreDealsExport.Params.ParamByName('EXCLUDE_STORE_CODES').AsString:= '(' + s + ')';

      cdsModelOutStoreDealsExport.Open;
      try
        sfr.Print;
      finally
        cdsModelOutStoreDealsExport.Close;
      end;   { try }
    finally
      fmSplash.Release;
    end;   { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

procedure TfmOutStoreDealsExport.cdsModelOutStoreDealsExportCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  cdsModelOutStoreDealsExport_STORE_DEAL_YEAR.AsFloat:=
    YearOf(cdsModelOutStoreDealsExportSTORE_DEAL_DATE.AsDateTime);

  cdsModelOutStoreDealsExport_ORDER_NO.AsString:=
    cdsModelOutStoreDealsExportSALE_TYPE_EXPORT_NO_2.AsString +
    cdsModelOutStoreDealsExportSALE_NO.AsString;
end;

procedure TfmOutStoreDealsExport.actExcludeStoresUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsIncludedStores.Active and
    (cdsIncludedStores.RecordCount > 0) and
    (grdIncludedStores.SelectedRows.Count > 0);
end;

procedure TfmOutStoreDealsExport.actExcludeStoresExecute(
  Sender: TObject);
var
  i: Integer;
begin
  inherited;

  cdsIncludedStores.DisableControls;
  try
    cdsExcludedStores.DisableControls;
    try
      for i:= 0 to grdIncludedStores.SelectedRows.Count - 1 do
        begin
          cdsIncludedStores.Bookmark:= grdIncludedStores.SelectedRows[i];

          cdsExcludedStores.Append;
          try
            AssignFields(cdsIncludedStores, cdsExcludedStores);
            cdsExcludedStores.Post;
          except
            cdsExcludedStores.Cancel;
            raise;
          end;   { try }

          cdsIncludedStores.Delete;
        end;   { for }
      grdIncludedStores.SelectedRows.Clear;
    finally
      cdsExcludedStores.EnableControls;
    end;   { try }
  finally
    cdsIncludedStores.EnableControls;
  end;   { try }
end;

procedure TfmOutStoreDealsExport.actIncludeStoresUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsExcludedStores.Active and
    (cdsExcludedStores.RecordCount > 0) and
    (grdExcludedStores.SelectedRows.Count > 0);
end;

procedure TfmOutStoreDealsExport.ApplicationEventsMessage(var Msg: tagMSG;
  var Handled: Boolean);
begin
  inherited;
  edtFileName.OnMessage(Msg, Handled);
end;

procedure TfmOutStoreDealsExport.actIncludeStoresExecute(
  Sender: TObject);
var
  i: Integer;
begin
  inherited;

  cdsExcludedStores.DisableControls;
  try
    cdsIncludedStores.DisableControls;
    try
      for i:= 0 to grdExcludedStores.SelectedRows.Count - 1 do
        begin
          cdsExcludedStores.Bookmark:= grdExcludedStores.SelectedRows[i];

          cdsIncludedStores.Append;
          try
            AssignFields(cdsExcludedStores, cdsIncludedStores);
            cdsIncludedStores.Post;
          except
            cdsIncludedStores.Cancel;
            raise;
          end;   { try }

          cdsExcludedStores.Delete;
        end;   { for }
      grdExcludedStores.SelectedRows.Clear;
    finally
      cdsIncludedStores.EnableControls;
    end;   { try }
  finally
    cdsExcludedStores.EnableControls;
  end;   { try }
end;

procedure TfmOutStoreDealsExport.grdExcludedStoresDblClick(
  Sender: TObject);
begin
  inherited;
  actIncludeStores.Execute;
end;

procedure TfmOutStoreDealsExport.grdIncludedStoresDblClick(
  Sender: TObject);
begin
  inherited;
  actExcludeStores.Execute;
end;

end.
