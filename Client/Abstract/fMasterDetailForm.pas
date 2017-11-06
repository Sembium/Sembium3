unit fMasterDetailForm;

interface               

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, ParamDataSet, ActnList, Db, DBClient, GridsEh, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, uClientTypes, fEditForm, fGridForm,
  AbmesClientDataSet, DBGridEh, AbmesDBGrid, Menus, JvButtons, ComCtrls,
  ToolWin, AbmesFields, rBaseReport, JvComponent, JvCaptionButton,
  JvComponentBase, dDocClient, DBGridEhGrouping, uAttributeUtils, uDocExcelExport, ToolCtrlsEh, DBGridEhToolCtrls,
  System.Actions, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  DetailEditFormClassAttribute = class(TValueAttribute<TEditFormClass>);

type
  TMasterDetailForm = class(TGridForm)
    pnlDetailGrid: TPanel;
    sptDetail: TSplitter;
    cdsDetail: TAbmesClientDataSet;
    dsDetail: TDataSource;
    pnlDetailNavigator: TPanel;
    grdDetail: TAbmesDBGrid;
    navDetail: TDBColorNavigator;
    actInsertDetailRecord: TAction;
    actDelDetailRecord: TAction;
    actEditDetailRecord: TAction;
    tmrMaster: TTimer;
    actPrintDetails: TAction;
    tlbDetailGridButtons: TToolBar;
    btnPrintDetails: TToolButton;
    sepBeforePrintDetailsButton: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actPrintExecute(Sender: TObject);
    procedure navDetailBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure grdDetailDblClick(Sender: TObject);
    procedure actInsertDetailRecordExecute(Sender: TObject);
    procedure actInsertDetailRecordUpdate(Sender: TObject);
    procedure actEditDetailRecordExecute(Sender: TObject);
    procedure actEditDetailRecordUpdate(Sender: TObject);
    procedure actDelDetailRecordExecute(Sender: TObject);
    procedure actDelDetailRecordUpdate(Sender: TObject);
    procedure cdsDetailAfterPost(DataSet: TDataSet);
    procedure cdsDetailAfterCancel(DataSet: TDataSet);
    procedure cdsDetailAfterDelete(DataSet: TDataSet);
    procedure cdsGridDataAfterScroll(DataSet: TDataSet);
    procedure tmrMasterTimer(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure grdDetailDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure actExcelExportExecute(Sender: TObject);
    procedure actPrintDetailsUpdate(Sender: TObject);
    procedure actPrintDetailsExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDetailReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure sptDetailCanResize(Sender: TObject; var NewSize: Integer; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    FRecordChangePending: Boolean;
    FRecordChangeCount: Integer;
    FDetailEditFormClass: TEditFormClass;
    FDelayDetailFetch: Boolean;
    FDetailsReportClass: TBaseReportClass;
    FMasterReportClass: TBaseReportClass;
    FExportingMasterDetail: Boolean;
    FExportMasterOnly: Boolean;
    FDetailExcelExportDocDefs: TDocDefs;
    function GetDetailInplaceEdit: Boolean;
    procedure FetchDetails;
  protected
    procedure FetchDetailsAfterScroll;
    function GetInsertDetailRecordEnabled: Boolean; virtual;
    function GetDelDetailRecordEnabled: Boolean; virtual;
    function GetEditDetailRecordEnabled: Boolean; virtual;
    function GetDetailDefaultsOrigin: TDefaultsOrigin; virtual;
    function DoShowDetailEditForm(AEditMode: TEditMode): Boolean;
    function ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean; virtual;
    function GetConfirmDetailExcelExportMessage: string; virtual;
    class function ManualDetailFetch: Boolean; virtual;
    procedure RefreshGridData; override;
    procedure ForceFetchDetails;
    function DoShowEditForm(AEditMode: TEditMode): Boolean; override;
    procedure FetchCustomDetails; virtual;
    function OpenTimeInSeconds: Integer; override;
    procedure SplitterStepResize(ADetailHeight: Integer; var NewSize: Integer);
    procedure RegisterDetailExcelExportDoc(const ADocBranchCodeFieldName, ADocCodeFieldName, AHasDocItemsFieldName, ADocName: string); overload;
    procedure RegisterDetailExcelExportDoc(const ADocBranchCodeFieldName, ADocCodeFieldName, ADocName: string); overload;

    property DetailEditFormClass: TEditFormClass read FDetailEditFormClass write FDetailEditFormClass;
    property DetailInplaceEdit: Boolean read GetDetailInplaceEdit;
    property RecordChangePending: Boolean read FRecordChangePending;
    property DelayDetailFetch: Boolean read FDelayDetailFetch write FDelayDetailFetch;
    property ExportMasterOnly: Boolean read FExportMasterOnly write FExportMasterOnly;
    property DetailExcelExportDocDefs: TDocDefs read FDetailExcelExportDocDefs;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Initialize; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True); override;
    property MasterReportClass: TBaseReportClass read FMasterReportClass write FMasterReportClass;
    property DetailsReportClass: TBaseReportClass read FDetailsReportClass write FDetailsReportClass;
  end;

implementation

uses
  uUtils, uClientUtils, rMasterDetailReport,
  AbmesDialogs, rDBDataReport, uClientConsts, uExcelExport;

{$R *.DFM}

resourcestring
  SPrintDetails = 'Печат на детайлите?';
  SConfirmDetailExcelExportMessage = 'Желаете ли експорт на детайлите на всеки ред от справката?';

{ TMasterDetailForm }

constructor TMasterDetailForm.Create(AOwner: TComponent);
var
  DetailEditFormClassAttr: DetailEditFormClassAttribute;
begin
  inherited Create(AOwner);
  FDelayDetailFetch:= True;

  DetailEditFormClassAttr:= FindAttribute<DetailEditFormClassAttribute>;
  if Assigned(DetailEditFormClassAttr) then
    DetailEditFormClass:= DetailEditFormClassAttr.Value;
end;

function TMasterDetailForm.GetDetailInplaceEdit: Boolean;
begin
  with grdDetail do
    Result:=
      (dgEditing in Options) and
      not (dgRowSelect in Options) and
      not ReadOnly;
end;

function TMasterDetailForm.OpenTimeInSeconds: Integer;
begin
  Result:= inherited OpenTimeInSeconds + cdsDetail.OpenTimeInSeconds;
end;

procedure TMasterDetailForm.FormShow(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  inherited;
  with cdsDetail do
    if not AllUnassigned([DataSetField, MasterSource]) or ManualDetailFetch then
      begin
        SaveCursor:= Screen.Cursor;
        Screen.Cursor:= crSQLWait;
        try
          if (ProviderName = '') and
             AllUnassigned([RemoteServer, ConnectionBroker, DataSetField]) and
             (FieldCount > 0) then
            CreateDataSet
          else
            begin
              Open;
            end;
        finally
          Screen.Cursor:= SaveCursor;
        end;  { try }
      end;  { if }

  CreateDBGridSearchFor(dsDetail);
end;

procedure TMasterDetailForm.ForceFetchDetails;
begin
  if FRecordChangePending and cdsGridData.Active then
    begin
      FRecordChangePending:= False;
      FetchDetails;
    end;
end;

procedure TMasterDetailForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsDetail.Close;
end;

procedure TMasterDetailForm.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(FDetailExcelExportDocDefs, 0);
end;

procedure TMasterDetailForm.actPrintExecute(Sender: TObject);
var
  OldDelayDetailFetch: Boolean;
  PrintMasterDetail: Boolean;
  PrintOnlyMaster: Boolean;
begin
  PrintMasterDetail:= Assigned(ReportClass);
  PrintOnlyMaster:= Assigned(MasterReportClass);

  if PrintMasterDetail and PrintOnlyMaster then
    begin
      case MessageDlgEx(SPrintDetails, mtConfirmation, mbYesNoCancel, 0) of
        mrYes: PrintOnlyMaster:= False;
        mrNo: PrintMasterDetail:= False
      else
        Abort;
      end
    end;

  if PrintMasterDetail then
    begin
      OldDelayDetailFetch:= FDelayDetailFetch;
      FDelayDetailFetch:= False;
      try
        if ReportClass.InheritsFrom(TMasterDetailReport) then
          begin
            if Assigned(dsData.DataSet) and (dsData.DataSet.FieldCount > 0) then
              TMasterDetailReportClass(ReportClass).PrintReport(cdsGridData, dsData.DataSet, cdsDetail)
            else
              TMasterDetailReportClass(ReportClass).PrintReport(cdsGridData, pdsGridDataParams, cdsDetail);
          end
        else
          inherited;
      finally
        FDelayDetailFetch:= OldDelayDetailFetch;
      end;
    end;  { if }

  if PrintOnlyMaster then
    TDBDataReportClass(MasterReportClass).PrintReport(cdsGridData, pdsGridDataParams);  
end;

procedure TMasterDetailForm.navDetailBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  case Button of
    nbInsert:
      if not DetailInplaceEdit then
        begin
          actInsertDetailRecord.Execute;
          Abort;
        end;

    nbEdit:
      if not DetailInplaceEdit then
        begin
          actEditDetailRecord.Execute;
          Abort;
        end;

    nbDelete:
      if FRecordChangePending or not GetDelDetailRecordEnabled then
        Abort;

    nbRefresh:
      begin
        RefreshDataSet(cdsDetail);
      end;
  end;
end;

procedure TMasterDetailForm.RefreshGridData;
var
  MasterBookmark: TBookmark;
  DetailBookmark: TBookmark;
begin
  dsGridData.DataSet.DisableControls;
  try
    cdsDetail.DisableControls;
    try
      MasterBookmark:= dsGridData.DataSet.Bookmark;
      DetailBookmark:= cdsDetail.Bookmark;
      try
        inherited;

        if not Assigned(cdsDetail.DataSetField) then
          RefreshDataSet(cdsDetail);
      finally
        try
          dsGridData.DataSet.Bookmark:= MasterBookmark;
          cdsDetail.Bookmark:= DetailBookmark;
        except
        end;
      end;
    finally
      cdsDetail.EnableControls;
    end;
  finally
    dsGridData.DataSet.EnableControls;
  end;
end;

procedure TMasterDetailForm.RegisterDetailExcelExportDoc(const ADocBranchCodeFieldName, ADocCodeFieldName,
  ADocName: string);
begin
  RegisterDetailExcelExportDoc(ADocBranchCodeFieldName, ADocCodeFieldName, '', ADocName);
end;

procedure TMasterDetailForm.RegisterDetailExcelExportDoc(
  const ADocBranchCodeFieldName, ADocCodeFieldName, AHasDocItemsFieldName, ADocName: string);
begin
  SetLength(FDetailExcelExportDocDefs, Length(FDetailExcelExportDocDefs) + 1);
  FDetailExcelExportDocDefs[Length(FDetailExcelExportDocDefs) - 1]:=
    TDocDef.Create(ADocBranchCodeFieldName, ADocCodeFieldName, AHasDocItemsFieldName, ADocName);
end;

procedure TMasterDetailForm.grdDetailDblClick(Sender: TObject);
begin
  inherited;
  if not actEditDetailRecord.Execute then
    actInsertDetailRecord.Execute;
end;

procedure TMasterDetailForm.actInsertDetailRecordExecute(Sender: TObject);
begin
  inherited;
  DoShowDetailEditForm(emInsert);
end;

procedure TMasterDetailForm.actInsertDetailRecordUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetInsertDetailRecordEnabled;
end;

procedure TMasterDetailForm.actEditDetailRecordExecute(Sender: TObject);
begin
  inherited;
  if (EditMode = emReadOnly) then
    DoShowDetailEditForm(emReadOnly)
  else
    DoShowDetailEditForm(emEdit);
end;

procedure TMasterDetailForm.actEditDetailRecordUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetEditDetailRecordEnabled;
end;

procedure TMasterDetailForm.actDelDetailRecordExecute(Sender: TObject);
begin
  inherited;
  navDetail.BtnClick(nbDelete);
end;

procedure TMasterDetailForm.actDelDetailRecordUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetDelDetailRecordEnabled;
end;

procedure TMasterDetailForm.cdsDetailAfterPost(DataSet: TDataSet);
begin
  inherited;
  Assert(DataSet is TCustomClientDataSet, 'Not a TCustomClientDataSet');

  if Assigned((DataSet as TCustomClientDataSet).DataSetField) then
    try
      (DataSet as TCustomClientDataSet).DataSetField.DataSet.Post;
    except
      DataSet.Edit;
      raise;
    end;  { try }
end;

procedure TMasterDetailForm.cdsDetailAfterCancel(DataSet: TDataSet);
begin
  inherited;
  Assert(DataSet is TCustomClientDataSet, 'Not a TCustomClientDataSet');

  if Assigned((DataSet as TCustomClientDataSet).DataSetField) then
    (DataSet as TCustomClientDataSet).DataSetField.DataSet.Cancel;
end;

procedure TMasterDetailForm.cdsDetailAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Assert(DataSet is TCustomClientDataSet, 'Not a TCustomClientDataSet');

  if Assigned((DataSet as TCustomClientDataSet).DataSetField) then
    with (DataSet as TCustomClientDataSet).DataSetField.DataSet do
      try
        CheckBrowseMode;
      except
        Cancel;
        raise;
      end;  { try }
end;

function TMasterDetailForm.GetInsertDetailRecordEnabled: Boolean;
begin
  Result:=
    Assigned(DetailEditFormClass) and
    not cdsGridData.IsEmpty and
    (EditMode <> emReadOnly);
end;

function TMasterDetailForm.GetDelDetailRecordEnabled: Boolean;
begin
  Result:=
    not cdsDetail.IsEmpty and
    (EditMode <> emReadOnly);
end;

function TMasterDetailForm.GetEditDetailRecordEnabled: Boolean;
begin
  Result:=
    Assigned(DetailEditFormClass) and
    not cdsDetail.IsEmpty;
end;

function TMasterDetailForm.DoShowDetailEditForm(
  AEditMode: TEditMode): Boolean;
begin
  if FRecordChangePending then
    Abort;

  Assert(Assigned(DetailEditFormClass));
  Result:= ShowDetailEditForm(AEditMode, GetDetailDefaultsOrigin);
  if Result and not DetailEditFormClass.CanEditOuterDataset then
    RefreshGridData;
end;

function TMasterDetailForm.DoShowEditForm(AEditMode: TEditMode): Boolean;
begin
  ForceFetchDetails;
  Result:= inherited DoShowEditForm(AEditMode);
end;

procedure TMasterDetailForm.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean);
begin
  inherited SetDataParams(
    AdmDocClient,
    ADataSet,
    AEditMode,
    ADefaultsOrigin,
    AFilterFormEnabled);

  if Assigned(ADataSet) and
     (AEditMode in [emEdit, emReadOnly]) and
     not Assigned(cdsDetail.DataSetField) then
    SetParams(cdsDetail.Params, ADataSet);
end;

function TMasterDetailForm.ShowDetailEditForm(
  AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean;
begin
  Assert(Assigned(DetailEditFormClass));
  if DetailEditFormClass.InheritsFrom(TGridForm) then
    Result:= TGridFormClass(DetailEditFormClass).ShowForm(dmDocClient, cdsDetail, AEditMode, ADefaultsOrigin)
  else
    Result:= DetailEditFormClass.ShowForm(dmDocClient, cdsDetail, AEditMode, ADefaultsOrigin);
end;

procedure TMasterDetailForm.SplitterStepResize(ADetailHeight: Integer; var NewSize: Integer);
begin
  NewSize:= ADetailHeight + (((NewSize - ADetailHeight) div VerticalResizeStep) * VerticalResizeStep);
end;

procedure TMasterDetailForm.sptDetailCanResize(Sender: TObject; var NewSize: Integer; var Accept: Boolean);
begin
  inherited;
  SplitterStepResize(pnlDetailGrid.Height, NewSize);
end;

class function TMasterDetailForm.ManualDetailFetch: Boolean;
begin
  Result:= False;
end;

procedure TMasterDetailForm.FetchDetails;
var
  SaveCursor: TCursor;
  p: TParams;
  b: TBookmark;
begin
  with cdsDetail do
    if AllUnassigned([DataSetField, MasterSource]) and
       not ManualDetailFetch then
      begin
        SaveCursor:= Screen.Cursor;
        Screen.Cursor:= crSQLWait;
        try
          DisableControls;
          try
            p:= TParams.Create;
            try
              p.Assign(Params);
              b:= Bookmark;

              Close;

              if cdsGridData.IsEmpty then
                ClearParams(Params)
              else
                SetParams(Params, cdsGridData);

              if (ProviderName = '') and
                 AllUnassigned([RemoteServer, ConnectionBroker, DataSetField]) and
                 (FieldCount > 0) then
                CreateDataSet
              else
                Open;

              if Params.IsEqual(p) then
                begin
                  try
                    Bookmark:= b;
                  except
                    on EDatabaseError do
                      begin
                        // Do nothing. Just catch the exception
                      end;
                  end;  { try }
                end;  { if }
            finally
              FreeAndNil(p);
            end;  { try }
          finally
            EnableControls;
          end;  { try }
        finally
          Screen.Cursor:= SaveCursor;
        end;  { try }
      end;  { if }

  FetchCustomDetails;
end;

procedure TMasterDetailForm.FetchCustomDetails;
begin
  // do nothing
end;

procedure TMasterDetailForm.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // patch!!!
  // Slednia kod e slojen za da pokrie situaciata v koiato mastera e prazen
  // za sajalenie pri normalna situacia toi predizvikva 1 izlishno izpulnenie
  // na detailnoto query...
  FetchDetailsAfterScroll;
end;

procedure TMasterDetailForm.cdsGridDataAfterScroll(DataSet: TDataSet);
begin
  inherited;
  FetchDetailsAfterScroll;
end;

procedure TMasterDetailForm.tmrMasterTimer(Sender: TObject);
begin
  inherited;
  if FRecordChangePending and
     (FRecordChangeCount = 0) and
     (cdsGridData.Active) then
    begin
      FRecordChangePending:= False;
      FetchDetails;
    end;

  FRecordChangeCount:= 0;
end;

procedure TMasterDetailForm.Initialize;
var
  DocBranchCodeField: TField;
  DocCodeField: TField;
begin
  inherited;

  if (EditMode = emReadOnly) then
    actEditDetailRecord.Caption:= SReadOnlyCaption + cDialogSuffix;

  DocBranchCodeField:= cdsDetail.FindField('DOC_BRANCH_CODE');
  DocCodeField:= cdsDetail.FindField('DOC_CODE');

  if Assigned(DocBranchCodeField) and Assigned(DocCodeField) then
    RegisterDetailExcelExportDoc(DocBranchCodeField.FieldName, DocCodeField.FieldName, '');
end;

procedure TMasterDetailForm.FetchDetailsAfterScroll;
begin
  if FDelayDetailFetch and not FExportingMasterDetail then
    begin
      FRecordChangePending := True;
      Inc(FRecordChangeCount);
    end
  else
    FetchDetails;
end;

procedure TMasterDetailForm.grdDetailDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TMasterDetailForm.actExcelExportExecute(Sender: TObject);
begin
  if ExportMasterOnly then
    inherited
  else
    case MessageDlgEx(GetConfirmDetailExcelExportMessage, mtConfirmation, mbYesNoCancel, 0) of
      mrYes:
        begin
          FExportingMasterDetail:= True;
          try
            if ((Length(ExcelExportDocDefs) = 0) and (Length(DetailExcelExportDocDefs) = 0)) or
               not DocExcelExportEnabled then
              MasterDetailGridExcelExport(grdData, grdDetail)
            else
              MasterDetailGridDocExcelExport(grdData, grdDetail, ExcelExportDocDefs, DetailExcelExportDocDefs, DocExcelExportDNCOnlyDefault);
          finally
            FExportingMasterDetail:= False;
          end;
        end;
      mrNo:
        inherited;
    end;
end;

function TMasterDetailForm.GetConfirmDetailExcelExportMessage: string;
begin
  Result:= SConfirmDetailExcelExportMessage;
end;

procedure TMasterDetailForm.actPrintDetailsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= Assigned(DetailsReportClass);
  (Sender as TAction).Enabled:=
    cdsDetail.Active and not cdsDetail.IsEmpty;
end;

procedure TMasterDetailForm.actPrintDetailsExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(DetailsReportClass));

  if DetailsReportClass.InheritsFrom(TDBDataReport) then
    TDBDataReportClass(DetailsReportClass).PrintReport(cdsDetail, cdsGridData)
  else
    DetailsReportClass.PrintReport;
end;

procedure TMasterDetailForm.actFormUpdate(Sender: TObject);
begin
  inherited;
  sepBeforePrintDetailsButton.Visible:= actPrintDetails.Visible;
end;

procedure TMasterDetailForm.cdsDetailReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  ReconcileError(E);
end;

function TMasterDetailForm.GetDetailDefaultsOrigin: TDefaultsOrigin;
begin
  Result:= doNone;
end;

end.

