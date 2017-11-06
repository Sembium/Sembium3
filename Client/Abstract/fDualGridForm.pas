unit fDualGridForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBDataForm, DB, Menus, JvButtons, ImgList, ActnList, StdCtrls,
  Buttons, ExtCtrls, GridsEh, DBGridEh, AbmesDBGrid, Mask, DBCtrls,
  AbmesFields, DBClient, AbmesClientDataSet, uClientTypes, fGridForm,
  ParamDataSet, ColorNavigator, ComCtrls, ToolWin, dDocClient, JvComponent,
  JvCaptionButton, JvComponentBase, Generics.Collections, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL,
  DBAxisGridsEh;

type
  TActionsShortCuts = TDictionary<TAction, TShortCut>;

type
  TDualGridForm = class(TGridForm)
    pnlUser: TPanel;                                                                                   
    cdsOtherGridData: TAbmesClientDataSet;
    dsOtherGridData: TDataSource;
    actAddToData: TAction;
    actRemoveFromData: TAction;
    actAddAllToData: TAction;
    actRemoveAllFromData: TAction;
    grdOtherData: TAbmesDBGrid;
    pnlMoveButtons: TPanel;
    btnAdd: TSpeedButton;
    btnRemove: TSpeedButton;
    btnAddAll: TSpeedButton;
    btnRemoveAll: TSpeedButton;
    pnlExcelExportButton: TPanel;
    btnExcelExportDown: TBitBtn;
    procedure cdsOtherGridDataAfterOpen(DataSet: TDataSet);
    procedure actAddToDataExecute(Sender: TObject);
    procedure actAddToDataUpdate(Sender: TObject);
    procedure actRemoveFromDataExecute(Sender: TObject);
    procedure actRemoveFromDataUpdate(Sender: TObject);
    procedure actAddAllToDataExecute(Sender: TObject);
    procedure actAddAllToDataUpdate(Sender: TObject);
    procedure actRemoveAllFromDataExecute(Sender: TObject);
    procedure actRemoveAllFromDataUpdate(Sender: TObject);
    procedure GridsSortMarkingChanged(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  protected
    FActionShortCuts: TActionsShortCuts;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetAddToDataEnabled: Boolean; virtual;
    function GetAddAllToDataEnabled: Boolean; virtual;
    function GetRemoveFromDataEnabled: Boolean; virtual;
    function GetRemoveAllFromDataEnabled: Boolean; virtual;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True); override;
  end;

implementation

uses
  uUtils, uClientUtils, fEditForm;

{$R *.dfm}

const
  SortIndexName = 'idxGRID_SORT';

{ TDualGridForm }

procedure TDualGridForm.cdsOtherGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SortGrid(grdOtherData, SortIndexName);
end;

procedure TDualGridForm.actAddToDataExecute(Sender: TObject);

  procedure AddCurrentToData;
  begin
    cdsGridData.Append;
    try
      AssignFields(cdsOtherGridData, cdsGridData, '', True);
      cdsGridData.Post;
    except
      cdsGridData.Cancel;
      raise;
    end;   { try }

    cdsOtherGridData.Delete;

    grdData.SelectedRows.CurrentRowSelected:= True;
  end;

var
  i: Integer;
begin
  inherited;
  Assert(cdsOtherGridData.RecordCount > 0);

  cdsGridData.DisableControls;
  cdsOtherGridData.DisableControls;

  try
    grdData.SelectedRows.Clear;

    if (grdOtherData.SelectedRows.Count = 0) then
      AddCurrentToData
    else
      for i:= 0 to grdOtherData.SelectedRows.Count - 1 do
        begin
          cdsOtherGridData.Bookmark:= grdOtherData.SelectedRows[i];
          AddCurrentToData;
        end;

    grdOtherData.SelectedRows.Clear;
  finally
    cdsGridData.EnableControls;
    cdsOtherGridData.EnableControls;
  end;  { try }

  if grdData.CanFocus then
    grdData.SetFocus;
end;

procedure TDualGridForm.CloseDataSets;
begin
  inherited;
  cdsOtherGridData.Close;
end;

procedure TDualGridForm.FormCreate(Sender: TObject);
begin
  inherited;
  FActionShortCuts:= TActionsShortCuts.Create;
  FActionShortCuts.Add(actAddToData, actAddToData.ShortCut);
  FActionShortCuts.Add(actRemoveFromData, actRemoveFromData.ShortCut);
  FActionShortCuts.Add(actAddAllToData, actAddAllToData.ShortCut);
  FActionShortCuts.Add(actRemoveAllFromData, actRemoveAllFromData.ShortCut);
end;

procedure TDualGridForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FActionShortCuts);
end;

procedure TDualGridForm.OpenDataSets;
begin
  inherited;

  cdsOtherGridData.Active:= True;
end;

procedure TDualGridForm.actAddToDataUpdate(Sender: TObject);
begin
  inherited;
  actAddToData.Enabled:= GetAddToDataEnabled;
  (Sender as TAction).ShortCut:=
    IfThen(grdOtherData.Focused, FActionShortCuts[(Sender as TAction)], scNone);
end;

procedure TDualGridForm.actRemoveFromDataExecute(Sender: TObject);

  procedure RemoveCurrentFromData;
  begin
    cdsOtherGridData.Append;
    try
      AssignFields(cdsGridData, cdsOtherGridData);
      cdsOtherGridData.Post;
    except
      cdsOtherGridData.Cancel;
      raise;
    end;   { try }

    cdsGridData.Delete;

    grdOtherData.SelectedRows.CurrentRowSelected:= True;
  end;

var
  i: Integer;
begin
  inherited;
  Assert(cdsGridData.RecordCount > 0);

  cdsGridData.DisableControls;
  cdsOtherGridData.DisableControls;

  try
    grdOtherData.SelectedRows.Clear;

    if (grdData.SelectedRows.Count = 0) then
      RemoveCurrentFromData
    else
      for i:= 0 to grdData.SelectedRows.Count - 1 do
        begin
          cdsGridData.Bookmark:= grdData.SelectedRows[i];
          RemoveCurrentFromData;
        end;

    grdData.SelectedRows.Clear;
  finally
    cdsGridData.EnableControls;
    cdsOtherGridData.EnableControls;
  end;  { try }

  if grdOtherData.CanFocus then
    grdOtherData.SetFocus;
end;

procedure TDualGridForm.actRemoveFromDataUpdate(Sender: TObject);
begin
  inherited;
  actRemoveFromData.Enabled:= GetRemoveFromDataEnabled;
  (Sender as TAction).ShortCut:=
    IfThen(grdData.Focused, FActionShortCuts[(Sender as TAction)], scNone);
end;

procedure TDualGridForm.actAddAllToDataExecute(Sender: TObject);
begin
  inherited;
  Assert(cdsOtherGridData.RecordCount > 0);

  cdsGridData.DisableControls;
  cdsOtherGridData.DisableControls;

  try
    cdsOtherGridData.First;
    while not cdsOtherGridData.Eof do
      begin
        cdsGridData.Append;

        try
          AssignFields(cdsOtherGridData, cdsGridData, '', True);
          cdsGridData.Post;
        except
          cdsGridData.Cancel;
          raise;
        end;   { try }

        cdsOtherGridData.Delete;
      end;
      cdsGridData.First;
      grdData.SelectedIndex:= -1;

  finally
    cdsGridData.EnableControls;
    cdsOtherGridData.EnableControls;
  end;  { try }
end;

procedure TDualGridForm.actAddAllToDataUpdate(Sender: TObject);
begin
  inherited;
  actAddAllToData.Enabled:= GetAddAllToDataEnabled;
  (Sender as TAction).ShortCut:=
    IfThen(grdOtherData.Focused, FActionShortCuts[(Sender as TAction)], scNone);
end;

procedure TDualGridForm.actRemoveAllFromDataExecute(Sender: TObject);
begin
  Assert(cdsGridData.RecordCount > 0);

  cdsGridData.DisableControls;
  cdsOtherGridData.DisableControls;

  try
    cdsGridData.First;
    while not cdsGridData.Eof do
      begin
        cdsOtherGridData.Append;

        try
          AssignFields(cdsGridData, cdsOtherGridData);
          cdsOtherGridData.Post;
        except
          cdsOtherGridData.Cancel;
          raise;
        end;   { try }

        cdsGridData.Delete;
      end;
      cdsOtherGridData.First;
      grdOtherData.SelectedIndex:= -1;

  finally
    cdsGridData.EnableControls;
    cdsOtherGridData.EnableControls;
  end;  { try }
end;

procedure TDualGridForm.actRemoveAllFromDataUpdate(Sender: TObject);
begin
  inherited;
  actRemoveAllFromData.Enabled:= GetRemoveAllFromDataEnabled;
  (Sender as TAction).ShortCut:=
    IfThen(grdData.Focused, FActionShortCuts[(Sender as TAction)], scNone);
end;

procedure TDualGridForm.GridsSortMarkingChanged(Sender: TObject);
begin
  inherited;
  SortGrid(Sender as TAbmesDBGrid, SortIndexName);
end;

procedure TDualGridForm.grdDataDblClick(Sender: TObject);
begin
// do not call inherited
end;

procedure TDualGridForm.SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
  AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);

  if Assigned(ADataSet) and
     (AEditMode in [emEdit, emReadOnly]) and
     not Assigned(cdsOtherGridData.DataSetField) then
    SetParams(cdsOtherGridData.Params, ADataSet);
end;

function TDualGridForm.GetAddAllToDataEnabled: Boolean;
begin
  Result:= GetAddToDataEnabled;
end;

function TDualGridForm.GetAddToDataEnabled: Boolean;
begin
  if cdsOtherGridData.Active then
    Result:=
      (cdsOtherGridData.RecordCount > 0) and
      (EditMode <> emReadOnly)
  else
    Result:= False;
end;

function TDualGridForm.GetRemoveAllFromDataEnabled: Boolean;
begin
  Result:= GetRemoveFromDataEnabled;
end;

function TDualGridForm.GetRemoveFromDataEnabled: Boolean;
begin
  if cdsGridData.Active then
    Result:=
      (cdsGridData.RecordCount > 0) and
      (EditMode <> emReadOnly)
  else
    Result:= False;
end;

procedure TDualGridForm.actFormUpdate(Sender: TObject);
begin
  inherited;
  if GetGridRecordReadOnly then
    actEditRecord.Caption:= SReadOnlyCaption + cDialogSuffix
  else
    actEditRecord.Caption:= SEditCaption + cDialogSuffix;
end;

end.
