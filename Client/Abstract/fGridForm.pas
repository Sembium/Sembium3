unit fGridForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, GridsEh, Db, DBClient, fEditForm,
  ActnList, ImgList, ColorNavigator, ParamDataSet, dDocClient,
  fButtonForm, fDataForm, uClientTypes, fFilterForm, AbmesClientDataSet,
  DBGridEh, AbmesDBGrid, Menus, JvButtons, ToolWin, ComCtrls, AbmesFields,
  JvComponent, JvCaptionButton, JvComponentBase, DBGridEhGrouping,
  uAttributeUtils, uDocExcelExport, fDBGridSearch, System.Actions, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TApplyKind = (akNone, akSingle, akAll);

type
  EditFormClassAttribute = class(TValueAttribute<TEditFormClass>);
  FilterFormClassAttribute = class(TValueAttribute<TFilterFormClass>);
  SkipRefreshConfirmationAttribute = class(TPositiveBooleanValueAttribute);

type
  TGridForm = class(TEditForm)
    pnlMain: TPanel;
    pnlGrid: TPanel;
    pnlNavigator: TPanel;
    dsGridData: TDataSource;
    cdsGridData: TAbmesClientDataSet;
    actFilter: TAction;
    pnlFilterButton: TPanel;
    btnFilter: TSpeedButton;
    navData: TDBColorNavigator;
    grdData: TAbmesDBGrid;
    pdsGridDataParams: TParamDataSet;
    dsGridDataParams: TDataSource;
    actInsertRecord: TAction;
    actDelRecord: TAction;
    actEditRecord: TAction;
    tlbTopGridButtons: TToolBar;
    btnExcelExport: TToolButton;
    actExcelExport: TAction;
    pdsGridDataParamsCURRENT_FILTER_VARIANT_CODE: TAbmesFloatField;
    btnPrintOnNavigator: TToolButton;
    sepBeforeExcelExportButton: TToolButton;
    actInsertLike: TAction;
    actInsertMenu: TAction;
    pmInsertMenu: TPopupMenu;
    miInsert: TMenuItem;
    miInsertLike: TMenuItem;
    actRefresh: TAction;
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataAfterCancel(DataSet: TDataSet);
    procedure cdsGridDataReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure actFilterUpdate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure grdDataDblClick(Sender: TObject);
    procedure actInsertRecordExecute(Sender: TObject);
    procedure actInsertRecordUpdate(Sender: TObject);
    procedure actEditRecordExecute(Sender: TObject);
    procedure actEditRecordUpdate(Sender: TObject);
    procedure actDelRecordExecute(Sender: TObject);
    procedure actDelRecordUpdate(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure grdDataSortMarkingChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure grdDataDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure actFormUpdate(Sender: TObject);
    procedure actExcelExportUpdate(Sender: TObject);
    procedure actExcelExportExecute(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure actInsertLikeUpdate(Sender: TObject);
    procedure actInsertLikeExecute(Sender: TObject);
    procedure actInsertMenuUpdate(Sender: TObject);
    procedure actInsertMenuExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actRefreshUpdate(Sender: TObject);
    procedure cdsGridDataBeforeClose(DataSet: TDataSet);
  private
    FEditFormClass: TEditFormClass;
    FFilterFormClass: TFilterFormClass;
    FFilterFormEnabled: Boolean;
    FSortFilteredDetails: Boolean;
    FInInsertLikeAction: Boolean;
    FExcelExportDocDefs: TDocDefs;
    FGridDataSizeInBytes: Integer;
    function GetInplaceEdit: Boolean;
    procedure SetFilterFormClass(const Value: TFilterFormClass);
    procedure SetToolbarVisibleButtons;
    function RefreshButtonVisible: Boolean;
    procedure RegisterDefaultExcelExportDocs;
    function SkipRefreshConfirmation: Boolean;
  protected
    class function WishNonDefaultFilter: Boolean; virtual;
    class function ParamsFromOuterDataSet: Boolean; virtual;
    procedure DoBeforeShow; override;
    procedure DoAfterHide; override;
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
    procedure DoGridApplyUpdates; virtual;
    procedure DoGridCancelUpdates; virtual;
    function GetApplyUpdatesEnabled: Boolean; override;
    function GetCancelUpdatesEnabled: Boolean; override;
    function GetInsertRecordEnabled: Boolean; virtual;
    function GetDelRecordEnabled: Boolean; virtual;
    function GetEditRecordEnabled: Boolean; virtual;
    function GetInsertLikeEnabled: Boolean; virtual;
    function GetPrintEnabled: Boolean; override;
    function GetPrintButtonOnToolbarEnabled: Boolean; virtual;
    function GetExcelExportEnabled: Boolean; virtual;
    function GetApplyKind: TApplyKind; virtual;
    function DoShowEditForm(AEditMode: TEditMode): Boolean; virtual;
    function ShowEditForm(AEditMode: TEditMode): Boolean; virtual;
    function ShowFilterForm: Boolean; virtual;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetGridRecordReadOnly: Boolean; virtual;
    procedure RefreshGridData; virtual;
    function GetFilterFormEnabled: Boolean; virtual;
    function MustResortGridDataAfterOpen: Boolean; virtual;
    procedure RecordDblClick; virtual;
    procedure BeforeNormalizeToolbars; override;
    function OpenTimeInSeconds: Integer; virtual;
    procedure SetRefreshHint(ANavigator: TDBColorNavigator; ARefreshAction: TAction);
    procedure DoFilterGridData; virtual;
    procedure ResortGridData(AGrid: TAbmesDBGrid = nil);
    procedure RegisterExcelExportDoc(const ADocBranchCodeFieldName, ADocCodeFieldName, AHasDocItemsFieldName, ADocName: string); overload;
    procedure RegisterExcelExportDoc(const ADocBranchCodeFieldName, ADocCodeFieldName, ADocName: string); overload;
    function DocExcelExportEnabled: Boolean;
    function DocExcelExportDNCOnlyDefault: Boolean;
    procedure CreateDBGridSearchFor(ADataSource: TDataSource); overload;
    procedure CreateDBGridSearchFor(ADBGrid: TAbmesDBGrid; ANavigator: TControl = nil; const AWidth: Integer = 0); overload;
    function GetActiveGridReportTitle(AGrid: TAbmesDBGrid): string; override;

    property EditFormClass: TEditFormClass read FEditFormClass write FEditFormClass;
    property FilterFormClass: TFilterFormClass read FFilterFormClass write SetFilterFormClass;
    property SortFilteredDetails: Boolean read FSortFilteredDetails write FSortFilteredDetails;
    property FilterFormEnabled: Boolean read GetFilterFormEnabled;
    property InInsertLikeAction: Boolean read FInInsertLikeAction;
    property ExcelExportDocDefs: TDocDefs read FExcelExportDocDefs;
  public
    constructor Create(AOwner: TComponent); override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True); reintroduce; virtual;
    function SupportsFilterForm: Boolean; override;
    procedure Initialize; override;

    property ApplyKind: TApplyKind read GetApplyKind;
    property InplaceEdit: Boolean read GetInplaceEdit;
  end;

type
  TGridFormClass = class of TGridForm;

const
  SortIndexName = 'idxGRID_SORT';

implementation

uses
  uUtils, uClientUtils, rDBDataReport, dMain, uExcelExport,
  uClientConsts, Math, VDBConsts, AbmesDialogs, fBaseForm;

{$R *.DFM}

resourcestring
  SWishNonDefaultFilter = 'Зададен е филтърът по подразбиране, който извежда много редове и отнема много време!' + SLineBreak +
                          'Моля стеснете търсенето!' + SLineBreak +
                          'Желаете ли да стесните търсенето?';

{ TGridForm }

function TGridForm.GetActiveGridReportTitle(AGrid: TAbmesDBGrid): string;
begin
  if (AGrid.DataSource = dsGridData) then
    Result:= CleanFormCaption(Caption)
  else
    Result:= inherited GetActiveGridReportTitle(AGrid);
end;

function TGridForm.GetApplyKind: TApplyKind;
begin
  Assert((pnlClose.Visible <> pnlOKCancel.Visible) and
         ((pnlClose.Visible <> pnlApply.Visible) or not pnlClose.Visible));

  if (EditMode = emReadOnly) then
    Result:= akNone
  else
    begin
      if pnlOKCancel.Visible then
        Result:= akAll
      else
        if InplaceEdit or Assigned(EditFormClass) then
          Result:= akSingle
        else
          Result:= akNone;
    end;
end;

function TGridForm.GetInplaceEdit: Boolean;
begin
  with grdData do
    Result:= (dgEditing in Options) and
             not (dgRowSelect in Options) and
             not ReadOnly;
end;

procedure TGridForm.DoBeforeShow;
var
  SaveCursor: TCursor;
begin
  Assert((pdsGridDataParams.Fields.Count > 0) or
         not Assigned(FilterFormClass));

  if (pdsGridDataParams.Fields.Count > 0) then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        pdsGridDataParams.Open;
      finally
        Screen.Cursor:= SaveCursor;
      end;  { try }
    end; { if }

  inherited;

  if Assigned(FilterFormClass) and
     FilterFormEnabled and
     not ShowFilterForm then
    Abort;
end;

procedure TGridForm.DoAfterHide;
begin
  pdsGridDataParams.Close;

  inherited;
end;

function TGridForm.GetApplyUpdatesEnabled: Boolean;
begin
  Result:=
    inherited GetApplyUpdatesEnabled or
    (cdsGridData.ChangeCount > 0) or
    (Assigned(cdsGridData.DataSetField) and
      (cdsGridData.DataSetField.DataSet.State in dsEditModes));
end;

function TGridForm.GetCancelUpdatesEnabled: Boolean;
begin
  Result:=
    inherited GetCancelUpdatesEnabled or
    (cdsGridData.ChangeCount > 0) or
    (Assigned(cdsGridData.DataSetField) and
      (cdsGridData.DataSetField.DataSet.State in dsEditModes));
end;

procedure TGridForm.cdsGridDataAfterDelete(DataSet: TDataSet);
begin
  inherited;                      
  if (ApplyKind = akSingle) then
    try
      DoGridApplyUpdates;
    except
      DoGridCancelUpdates;
      raise;
    end;
end;

procedure TGridForm.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;

  if (ApplyKind = akSingle) then
    try
      DoGridApplyUpdates;
    except
      DataSet.Edit;
      raise;
    end;
end;

procedure TGridForm.cdsGridDataAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if (ApplyKind = akSingle) then
    DoGridCancelUpdates;
end;

procedure TGridForm.cdsGridDataReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ReconcileError(E);
end;

procedure TGridForm.DoFilterGridData;
begin
  RevertDocsToSavePoint;
  if Assigned(dmDocClient) then
    dmDocClient.ClearDocs;

  cdsGridData.TempDisableCache/
    procedure begin
      RefreshDataSet(cdsGridData);
    end;
end;

procedure TGridForm.actFilterExecute(Sender: TObject);
begin
  inherited;
  if ShowFilterForm then
    Screen.TempCursor(crSQLWait)/
      ToProc(DoFilterGridData);
end;

function TGridForm.OpenTimeInSeconds: Integer;
begin
  Result:= cdsGridData.OpenTimeInSeconds;
end;

procedure TGridForm.actFilterUpdate(Sender: TObject);
var
  s: string;
begin
  inherited;
  (Sender as TAction).Enabled:= Assigned(FFilterFormClass) and FilterFormEnabled;

  s:= SFilter;
  if cdsGridData.Active then
    s:= s + Format(SRows, [Int(cdsGridData.RecordCount), OpenTimeInSeconds]) + Format(SRowsSizeSuffix, [FormatByteSize(FGridDataSizeInBytes)]);

  (Sender as TAction).Hint:= s;
end;

procedure TGridForm.actPrintExecute(Sender: TObject);
begin
  if ReportClass.InheritsFrom(TDBDataReport) then
    begin
      if (dsData.DataSet.State <> dsInactive) then
        TDBDataReportClass(ReportClass).PrintReport(cdsGridData, dsData.DataSet)
      else
        TDBDataReportClass(ReportClass).PrintReport(cdsGridData, pdsGridDataParams);
    end
  else
    inherited;
end;

procedure TGridForm.actRefreshExecute(Sender: TObject);
begin
  inherited;
  navData.BtnClick(nbRefresh);
end;

type
  TDBColorNavigatorHack = class(TDBColorNavigator);

procedure TGridForm.SetRefreshHint(ANavigator: TDBColorNavigator; ARefreshAction: TAction);
var
  AHint: string;
begin
  AHint:= SRefreshRecord;

  if ARefreshAction.Enabled then
    AHint:= Format('%s (%s)', [AHint, ShortCutToText(ARefreshAction.ShortCut)]);

  TDBColorNavigatorHack(ANavigator).Buttons[nbRefresh].Hint:= AHint;
end;

procedure TGridForm.actRefreshUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    dsGridData.DataSet.Active and
    RefreshButtonVisible;
  SetRefreshHint(navData, (Sender as TAction));
end;

procedure TGridForm.DoGridApplyUpdates;
var
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;                
  Screen.Cursor:= crSQLWait;
  try
    if (cdsGridData.ApplyUpdates(0) > 0) then
      Abort;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TGridForm.DoGridCancelUpdates;
begin
  cdsGridData.CancelUpdates;
end;

procedure TGridForm.navDataBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  case Button of
    nbInsert:
      if not InplaceEdit then
        begin
          actInsertRecord.Execute;
          Abort;
        end;

    nbEdit:
      if not InplaceEdit then
        begin
          actEditRecord.Execute;
          Abort;
        end;

    nbDelete:
      if not GetDelRecordEnabled then
        Abort;

    nbRefresh:
      begin
        if not SkipRefreshConfirmation then
          ConfirmRefresh;

        RefreshGridData;

        if Assigned(dmDocClient) then
          dmDocClient.ClearDocs;

        Abort;
      end;
  end;
end;

procedure TGridForm.grdDataDblClick(Sender: TObject);
begin
  inherited;
  RecordDblClick;
end;

procedure TGridForm.actInsertLikeExecute(Sender: TObject);
begin
  inherited;
  FInInsertLikeAction:= True;
  try
    DoShowEditForm(emInsert);
  finally
    FInInsertLikeAction:= False;
  end;  { try }
end;

procedure TGridForm.actInsertLikeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetInsertLikeEnabled;
end;

procedure TGridForm.actInsertMenuExecute(Sender: TObject);
begin
  inherited;
  if ShiftIsPressed then
    begin
      actInsertRecord.Execute;
      Exit;
    end;  { if }

  if ControlIsPressed then
    begin
      actInsertLike.Execute;
      Exit;
    end;  { if }

  PopupMenuFromButton((Sender as TAction).ActionComponent as TControl, pmInsertMenu);
end;

procedure TGridForm.actInsertMenuUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetInsertRecordEnabled;
end;

procedure TGridForm.actInsertRecordExecute(Sender: TObject);
begin
  inherited;
  DoShowEditForm(emInsert);
end;

procedure TGridForm.actInsertRecordUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetInsertRecordEnabled;
end;

procedure TGridForm.actEditRecordExecute(Sender: TObject);
begin
  inherited;
  if (EditMode = emReadOnly) or cdsGridData.ReadOnly then
    DoShowEditForm(emReadOnly)
  else
    DoShowEditForm(emEdit);
end;

procedure TGridForm.actEditRecordUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetEditRecordEnabled;

  if GetGridRecordReadOnly then
    (Sender as TAction).Caption:= SReadOnlyCaption + cDialogSuffix
  else
    (Sender as TAction).Caption:= SEditCaption + cDialogSuffix;
end;

function TGridForm.DoShowEditForm(AEditMode: TEditMode): Boolean;
var
  SaveCursor: TCursor;
begin
  Assert(Assigned(EditFormClass));

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    if (AEditMode = emEdit) and GetGridRecordReadOnly then
      AEditMode:= emReadOnly;

    Result:= ShowEditForm(AEditMode);

    if Result and not EditFormClass.CanEditOuterDataset then
      RefreshGridData;
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

function TGridForm.ShowEditForm(AEditMode: TEditMode): Boolean;
var
  DefaultsOrigin: TDefaultsOrigin;
begin
  Assert(Assigned(EditFormClass));

  if (AEditMode = emInsert) and FInInsertLikeAction then
    DefaultsOrigin:= doServer
  else
    DefaultsOrigin:= doNone;

  if EditFormClass.InheritsFrom(TGridForm) then
    Result:= TGridFormClass(EditFormClass).ShowForm(dmDocClient, dsGridData.DataSet, AEditMode, DefaultsOrigin)
  else
    Result:= EditFormClass.ShowForm(dmDocClient, dsGridData.DataSet, AEditMode, DefaultsOrigin);
end;

procedure TGridForm.actDelRecordExecute(Sender: TObject);
begin
  inherited;
  navData.BtnClick(nbDelete);
end;

procedure TGridForm.actDelRecordUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetDelRecordEnabled;
end;

procedure TGridForm.DoApplyUpdates;
begin
  Application.ProcessMessages;

  if Assigned(cdsGridData.DataSetField) then
    begin
      PostDataSet(cdsGridData.DataSetField.DataSet);
      inherited DoApplyUpdates;
    end
  else
    begin
      inherited DoApplyUpdates;
      DoGridApplyUpdates;
    end;
end;

procedure TGridForm.DoCancelUpdates;
begin
  inherited DoCancelUpdates;
  if Assigned(cdsGridData.DataSetField) then
    cdsGridData.DataSetField.DataSet.Cancel
  else
    DoGridCancelUpdates;
end;

function TGridForm.DocExcelExportEnabled: Boolean;
var
  DocExcelExportAttr: DocExcelExportAttribute;
begin
  DocExcelExportAttr:= FindAttribute<DocExcelExportAttribute>;
  Result:= Assigned(DocExcelExportAttr);
end;

function TGridForm.DocExcelExportDNCOnlyDefault: Boolean;
var
  DocExcelExportAttr: DocExcelExportAttribute;
begin
  DocExcelExportAttr:= FindAttribute<DocExcelExportAttribute>;
  Result:= Assigned(DocExcelExportAttr) and (DocExcelExportAttr.Value = difDNCOnly);
end;

function TGridForm.GetInsertLikeEnabled: Boolean;
begin
  Result:= 
    GetInsertRecordEnabled and not cdsGridData.IsEmpty;
end;

function TGridForm.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    Assigned(EditFormClass) and
    (EditMode <> emReadOnly) and
    ( (not (dsGridData.DataSet is TClientDataSet)) or
      (not (dsGridData.DataSet as TClientDataSet).ReadOnly) );
end;

function TGridForm.GetDelRecordEnabled: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    (not (dsGridData.DataSet.BOF and dsGridData.DataSet.EOF)) and
    ( (not (dsGridData.DataSet is TClientDataSet)) or
      (not (dsGridData.DataSet as TClientDataSet).ReadOnly) );
end;

function TGridForm.GetEditRecordEnabled: Boolean;
begin
  Result:=
    Assigned(EditFormClass) and
    not (dsGridData.DataSet.BOF and dsGridData.DataSet.Eof);
end;

procedure TGridForm.OpenDataSets;
begin
  inherited OpenDataSets;
  with cdsGridData do
    if (ProviderName = '') and
       AllUnassigned([RemoteServer, ConnectionBroker, DataSetField]) and
       (FieldCount > 0) then
      CreateDataSet
    else
      Open;
end;

class function TGridForm.ParamsFromOuterDataSet: Boolean;
begin
  Result:= True;
end;

procedure TGridForm.CloseDataSets;
begin
  cdsGridData.Close;
  inherited CloseDataSets;
end;

function TGridForm.GetPrintEnabled: Boolean;
begin
  Result:=
    inherited GetPrintEnabled and
    not (cdsGridData.BOF and cdsGridData.EOF);
end;

procedure TGridForm.SetFilterFormClass(const Value: TFilterFormClass);
begin
  if (Value <> FFilterFormClass) then
    begin
      FFilterFormClass:= Value;
    end;
end;

function TGridForm.ShowFilterForm: Boolean;
begin
  Result:= FFilterFormClass.ShowForm(dmDocClient, pdsGridDataParams);
end;

procedure TGridForm.cdsGridDataBeforeClose(DataSet: TDataSet);
begin
  inherited;
  FGridDataSizeInBytes:= 0;
end;

procedure TGridForm.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with (DataSet as TClientDataSet) do
    if (IndexName = SortIndexName) then
      IndexName:= '';
end;

procedure TGridForm.FormCreate(Sender: TObject);
begin
  inherited;
  MaximizeStyle:= msVertical;
  SetLength(FExcelExportDocDefs, 0);
end;

procedure TGridForm.FormShow(Sender: TObject);
begin
  inherited;
  CreateDBGridSearchFor(dsGridData);
  with grdData do
    begin
      if not Assigned(DataSource) or
         not (DataSource.DataSet is TCustomClientDataSet) or
         Assigned((DataSource.DataSet as TCustomClientDataSet).DataSetField) then
        Exit;
    end;  { with }
end;

procedure TGridForm.grdDataSortMarkingChanged(Sender: TObject);
begin
  ResortGridData(Sender as TAbmesDBGrid);
end;

procedure TGridForm.Initialize;
begin
  inherited;
  RegisterDefaultExcelExportDocs;
end;

procedure TGridForm.RegisterDefaultExcelExportDocs;
const
  HasDocItemsDefaultFieldNames: array[0..2] of string =
    ('HAS_DOC_ITEMS', 'HAS_DOCUMENTATION', 'HAS_DOC');
var
  DocCodeField: TField;
  DocBranchCodeField: TField;
  HasDocItemsFieldName: string;
  HasDocItemsDefaultFieldName: string;
begin
  if Assigned(grdData.DataSource) and
     Assigned(grdData.DataSource.DataSet) and
     grdData.DataSource.DataSet.Active then
    begin
      DocBranchCodeField:= grdData.DataSource.DataSet.FindField('DOC_BRANCH_CODE');
      DocCodeField:= grdData.DataSource.DataSet.FindField('DOC_CODE');

      HasDocItemsFieldName:= '';
      for HasDocItemsDefaultFieldName in HasDocItemsDefaultFieldNames do
        if (HasDocItemsFieldName = '') and
           Assigned(grdData.DataSource.DataSet.FindField(HasDocItemsFieldName)) then
          HasDocItemsFieldName:= HasDocItemsDefaultFieldName;

      if Assigned(DocBranchCodeField) and Assigned(DocCodeField) then
        RegisterExcelExportDoc(DocBranchCodeField.FieldName, DocCodeField.FieldName, HasDocItemsFieldName, '');
    end;
end;

function TGridForm.MustResortGridDataAfterOpen: Boolean;
begin
  Result:= True;
end;

procedure TGridForm.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if MustResortGridDataAfterOpen then
    ResortGridData;

  FGridDataSizeInBytes:= cdsGridData.DataSize;
end;

procedure TGridForm.RecordDblClick;
begin
  if not actEditRecord.Execute then
    actInsertRecord.Execute;
end;

function TGridForm.RefreshButtonVisible: Boolean;
var
  nav: TDBNavigator;
begin
  for nav in AllComponents.OfType<TDBNavigator> do
    if (nbRefresh in nav.VisibleButtons) then
      Exit(True);
  Result:= False;
end;

procedure TGridForm.RefreshGridData;
begin
  with dsGridData.DataSet as TClientDataSet do
    if (ProviderName = '') and
       AllUnassigned([RemoteServer, ConnectionBroker, DataSetField]) and
       (FieldCount > 0) then
      begin
        Close;
        CreateDataSet;
      end
    else
      begin
        if (dsGridData.DataSet is TAbmesClientDataSet) and
           ((dsGridData.DataSet as TAbmesClientDataSet).ProviderName <> '') then
          (dsGridData.DataSet as TAbmesClientDataSet).TempDisableCache/
            procedure begin
              RefreshDataSet(dsGridData.DataSet);
            end
        else
          RefreshDataSet(dsGridData.DataSet);
      end;
end;

procedure TGridForm.RegisterExcelExportDoc(const ADocBranchCodeFieldName, ADocCodeFieldName, ADocName: string);
begin
  RegisterExcelExportDoc(ADocBranchCodeFieldName, ADocCodeFieldName, '', ADocName);
end;

procedure TGridForm.RegisterExcelExportDoc(const ADocBranchCodeFieldName,
  ADocCodeFieldName, AHasDocItemsFieldName, ADocName: string);
begin
  SetLength(FExcelExportDocDefs, Length(FExcelExportDocDefs) + 1);
  FExcelExportDocDefs[Length(FExcelExportDocDefs) - 1]:=
    TDocDef.Create(ADocBranchCodeFieldName, ADocCodeFieldName, AHasDocItemsFieldName, ADocName);
end;

procedure TGridForm.ResortGridData(AGrid: TAbmesDBGrid);
begin
  if not Assigned(AGrid) then
    AGrid:= grdData;

  SortGrid(AGrid, SortIndexName, SortFilteredDetails);
end;

procedure TGridForm.SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
  AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);

  FFilterFormEnabled:= AFilterFormEnabled;

  if ParamsFromOuterDataSet and
     Assigned(ADataSet) and
     (AEditMode in [emEdit, emReadOnly]) and
     not Assigned(cdsGridData.DataSetField) then
    SetParams(cdsGridData.Params, ADataSet);
end;

class function TGridForm.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean): Boolean;
var
  f: TGridForm;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

function TGridForm.SkipRefreshConfirmation: Boolean;
begin
  Result:= Assigned(FindAttribute<SkipRefreshConfirmationAttribute>());
end;

function TGridForm.SupportsFilterForm: Boolean;
begin
  Result:= True;
end;

procedure TGridForm.SetToolbarVisibleButtons;
begin
  pnlFilterButton.Visible:= actFilter.Visible;
  btnPrintOnNavigator.Visible:= GetPrintButtonOnToolbarEnabled;
  sepBeforeExcelExportButton.Visible:= actExcelExport.Visible or btnPrintOnNavigator.Visible;
end;

constructor TGridForm.Create(AOwner: TComponent);
var
  EditFormClassAttr: EditFormClassAttribute;
  FilterFormClassAttr: FilterFormClassAttribute;
begin
  inherited Create(AOwner);
  FFilterFormEnabled:= True;

  EditFormClassAttr:= FindAttribute<EditFormClassAttribute>;
  if Assigned(EditFormClassAttr) then
    EditFormClass:= EditFormClassAttr.Value;

  FilterFormClassAttr:= FindAttribute<FilterFormClassAttribute>;
  if Assigned(FilterFormClassAttr) then
    FilterFormClass:= FilterFormClassAttr.Value;
end;

procedure TGridForm.CreateDBGridSearchFor(ADataSource: TDataSource);
var
  dbg: TAbmesDBGrid;
begin
  for dbg in AllComponents.OfType<TAbmesDBGrid> do
    if dbg.Visible and (dbg.DataSource = ADataSource) then
      CreateDBGridSearchFor(dbg);
end;

procedure TGridForm.CreateDBGridSearchFor(ADBGrid: TAbmesDBGrid; ANavigator: TControl;
  const AWidth: Integer);

  function ControlFullVisible(AControl: TControl): Boolean;
  begin
    Result:=
      AControl.Visible and
      ( (AControl is TForm) or
        ControlFullVisible(AControl.Parent) );
  end;

  function ClosestVisibleNavigator: TDBColorNavigator;
  var
    nav: TDBColorNavigator;
    MinDistance: Integer;
    p: TWinControl;
    Distance: Integer;
    NavParent: TControl;
  begin
    Result:= nil;
    MinDistance:= MaxInt;

    for nav in ADBGrid.Owner.AllComponents.OfType<TDBColorNavigator> do
      if ControlFullVisible(nav) and
         (nav.DataSource = ADBGrid.DataSource) then
        for NavParent in nav.Parents do
          if ADBGrid.Parents.Filter(NavParent).Exists then
            begin
              Distance:= 0;
              p:= ADBGrid;
              while Assigned(p.Parent) and (p <> NavParent) do
                begin
                  Inc(Distance);
                  p:= p.Parent;
                end;

              if (Distance < MinDistance) then
                begin
                  MinDistance:= Distance;
                  Result:= nav;
                end;
            end;
  end;

  function DBGridSearchFrameExists: Boolean;
  var
    fr: TFrame;
  begin
    for fr in Frames do
      if (fr is TfrDBGridSearch) and ((fr as TfrDBGridSearch).DBGrid = ADBGrid) then
        Exit(True);
    Result:= False;
  end;

var
  DBGridSearchFrame: TfrDBGridSearch;
begin
  Assert(Assigned(ADBGrid));

  if not Assigned(ANavigator) then
    ANavigator:= ClosestVisibleNavigator;

  if Assigned(ANavigator) and not DBGridSearchFrameExists then
    begin
      DBGridSearchFrame:= TfrDBGridSearch.Create(Self);
      try
        DBGridSearchFrame.Top:= -DBGridSearchFrame.Height;
        DBGridSearchFrame.Left:= ANavigator.Left;

        DBGridSearchFrame.Width:=
          IfThen((AWidth = 0), Max(DBGridSearchFrame.Width, ANavigator.Width), AWidth);

        DBGridSearchFrame.TabStop:= False;
        DBGridSearchFrame.edtSearch.TabStop:= False;

        DBGridSearchFrame.Parent:= ANavigator.Parent;
        DBGridSearchFrame.TabOrder:= 0;

        DBGridSearchFrame.DBGrid:= ADBGrid;

        DBGridSearchFrame.Name:= ADBGrid.Name + 'Search' + IntToStr(Integer(ADBGrid));
      except
        FreeAndNil(DBGridSearchFrame);
        raise;
      end;

      FillFramesList;
    end;
end;

procedure TGridForm.grdDataDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TGridForm.actFormUpdate(Sender: TObject);
var
  frDBGridSearch: TfrDBGridSearch;
begin
  inherited;
  SetToolbarVisibleButtons;
  actRefresh.Update; // ne e zakacheno nikude i ne se vika avtomatichno

  for frDBGridSearch in AllComponents.OfType<TfrDBGridSearch> do
    frDBGridSearch.UpdateAllActions;
end;

function TGridForm.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    (EditMode = emReadOnly) or
    cdsGridData.ReadOnly;
end;

procedure TGridForm.actExcelExportUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetExcelExportEnabled;
  (Sender as TAction).Visible:= ExcelExportAvailable;
end;

procedure TGridForm.actExcelExportExecute(Sender: TObject);
begin
  inherited;
  if (Length(ExcelExportDocDefs) = 0) or not DocExcelExportEnabled then
    GridExcelExport(grdData)
  else
    GridDocExcelExport(grdData, True, nil, '', ExcelExportDocDefs, DocExcelExportDNCOnlyDefault);
end;

function TGridForm.GetPrintButtonOnToolbarEnabled: Boolean;
begin
  Result:= Assigned(ReportClass);
end;

procedure TGridForm.BeforeNormalizeToolbars;
begin
  inherited;
  SetToolbarVisibleButtons;
end;

function TGridForm.GetExcelExportEnabled: Boolean;
begin
  Result:=
    dsGridData.DataSet.Active and
    (dsGridData.DataSet.RecordCount > 0);
end;

function TGridForm.GetFilterFormEnabled: Boolean;
begin
  Result:= FFilterFormEnabled;
end;

procedure TGridForm.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if WishNonDefaultFilter and
     (not FilterInitValuesModified(DataSet as TParamDataSet)) and
     (MessageDlgEx(SWishNonDefaultFilter, mtConfirmation, mbYesNoCancel, 0) <> mrNo) then
    Abort;
end;

class function TGridForm.WishNonDefaultFilter: Boolean;
begin
  Result:= False;
end;

end.
