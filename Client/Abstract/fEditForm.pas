unit fEditForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, ActnList, ImgList,
  fButtonForm, fDataForm, fDBDataForm, DBClient, AbmesClientDataSet,
  fDBFrame, JvButtons, Menus, uClientTypes, dDocClient, JvComponent,
  JvCaptionButton, JvComponentBase, uUtils, uSection, Generics.Collections,
  uAttributeUtils, uClientConsts, uNestProc, System.Actions;

type
  TFieldInitState = record
    Value: Variant;
    ReadOnly: Boolean;
  end;

  TFieldInitStateArray = array of TFieldInitState;

  CanEditOuterDataSetAttribute = class(TPositiveBooleanValueAttribute);
  VerticalResizeStepAttribute = class(TValueAttribute<Integer>);

type
  TMaximizeStyle = (msStandard, msVertical, msFull);

  [CanEditOuterDataSet]
  [VerticalResizeStep(GridRowHeight)]
  TEditForm = class(TDBDataForm)
    cdsData: TAbmesClientDataSet;
    actToggleFormHeight: TAction;
    actToggleFormWidth: TAction;
    procedure cdsDataAfterDelete(DataSet: TDataSet);
    procedure cdsDataAfterCancel(DataSet: TDataSet);
    procedure cdsDataReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actToggleFormHeightExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actToggleFormWidthExecute(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure InitializeAnnulCheckBoxes;
  private
    FDataSetBookmark: TBookmark;
    FDataSetOpenHere: Boolean;
    FSaveDataSetReadOnly: Boolean;
    FEditMode: TEditMode;
    FDefaultsDataSet: TDataSet;
    FOuterDataSet: TDataSet;
    FDefaultsOrigin: TDefaultsOrigin;
    FInsertLikeRecordData: Variant;
    FInsertingLike: Boolean;
    FSavedFormTop: Integer;
    FOriginalFormHeight: Integer;
    FMaximizeStyle: TMaximizeStyle;
    FSavedFormLeft: Integer;
    FOriginalFormWidth: Integer;
    FSavedFormHeight: Integer;
    FSavedFormWidth: Integer;
    FTogglingFormSize: TSinglePassSection;
    FFilterInitFieldStates: TDictionary<TDataSet, TFieldInitStateArray>;
    FRestoringInitFieldValues: Boolean;
    FInParamDataSetDataChange: Boolean;
    FClearingCurrentFilterVariant: Boolean;
    function GetLocalData: Boolean;
    procedure InternalOpenDataSets;
    procedure InternalCloseDataSets;
    procedure WMSysCommand(var AMessage: TWmSysCommand); message WM_SYSCOMMAND;
    procedure SaveFormPositionAndSize;
    procedure SaveFilterInitFieldValues(ADataSet: TDataSet = nil);
    procedure ParamDataSourceDataChange(Sender: TObject; Field: TField);
    procedure ParamDataSetCURRENT_FILTER_VARIANT_CODEValidate(Sender: TField);
    procedure ParamDataSetCURRENT_FILTER_VARIANT_CODEChange(Sender: TField);
    procedure AnnulCheckBoxClick(Sender: TObject);
  protected
    procedure DoEditApplyUpdates; virtual;
    procedure DoEditCancelUpdates; virtual;
    procedure DoApplyUpdates; override;
    function GetApplyUpdatesEnabled: Boolean; override;
    function GetRecordReadOnly: Boolean; virtual;
    procedure OpenDataSets; virtual;
    procedure CloseDataSets; virtual;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); virtual;
    procedure ChangeEditMode(var AEditMode: TEditMode); virtual;
    procedure SetClearFieldActionEnabled(AAction: TObject; AFieldName: string);
    procedure ClearField(AFieldName: string);
    function GetFormCaption: string; override;
    procedure InitializeAllDBComboBoxes;
    function ReadOnlyModeDataSetReadOnly: Boolean; virtual;
    function VerticalResizeStep: Integer; virtual;
    procedure DoBeforeShow; override;
    function FilterInitValuesModified(ADataSet: TDataSet = nil): Boolean;
    function InvisibleOperation: TNestProcRec;

    property DefaultsOrigin: TDefaultsOrigin read FDefaultsOrigin;
    property InsertingLike: Boolean read FInsertingLike;
    property MaximizeStyle: TMaximizeStyle read FMaximizeStyle write FMaximizeStyle;
    property OriginalFormHeight: Integer read FOriginalFormHeight write FOriginalFormHeight;
    property OriginalFormWidth: Integer read FOriginalFormWidth write FOriginalFormWidth;
  public
    class function CanEditOuterDataSet: Boolean; virtual;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone); reintroduce; virtual;
    procedure Initialize; override;
    procedure Finalize; override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone): Boolean;

    procedure RestoreFilterInitFieldStates(ADataSet: TDataSet = nil);
    function FilterInitFieldState(Index: Integer; ADataSet: TDataSet = nil): TFieldInitState; overload;
    function FilterInitFieldState(const FieldName: string; ADataSet: TDataSet = nil): TFieldInitState; overload;

    property EditMode: TEditMode read FEditMode;
    property LocalData: Boolean read GetLocalData;
    property OuterDataSet: TDataSet read FOuterDataSet;
  end;

  TEditFormClass = class of TEditForm;

resourcestring
  SEditCaption = 'Редактиране';
  SInsertCaption = 'Добавяне';
  SReadOnlyCaption = 'Преглед';

const
  CurrentFilterVariantCodeFieldName = 'CURRENT_FILTER_VARIANT_CODE';

implementation

uses
  uClientUtils, JvDBCombobox, uDataSetUtils, uClientDateTime,
  DateUtils, ParamDataSet, uDependantField, StrUtils, dMain, AbmesDBCheckBox,
  uFilterField, uScalingUtils;

{$R *.DFM}

type
  TCustomClientDataSetHack = class(TCustomClientDataSet);

{ TEditForm }

function TEditForm.GetLocalData: Boolean;
begin
  Result:= (dsData.DataSet = cdsData);
end;

function TEditForm.GetFormCaption: string;
var
  s: string;
begin
  case EditMode of
    emEdit:
      s:= SEditCaption;
    emInsert:
      s:= SInsertCaption;
    emReadOnly:
      s:= SReadOnlyCaption;
  else
    s:= '';
  end;

  Result:= Format(OriginalFormCaption, [s]);
end;

procedure TEditForm.SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
  AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin);
begin
  Assert(
    (cdsData.ProviderName = '') or
    (not Assigned(AdmDocClient)) or
    (not AdmDocClient.Modified),
    'Invalid outer dmDocClient'
  );

  Assert((not CanEditOuterDataSet) or (ADefaultsOrigin <> doServer));

  inherited SetDataParams(AdmDocClient);

  FEditMode:= AEditMode;
  FOuterDataSet:= ADataSet;
  FDefaultsOrigin:= ADefaultsOrigin;

  if Assigned(ADataSet) then
    begin
      if CanEditOuterDataSet then
        begin
          if Assigned(ADataSet) then
            dsData.DataSet:= ADataSet;
        end
      else
        begin
          if (AEditMode in [emEdit, emReadOnly]) or
             ((AEditMode = emInsert) and (ADefaultsOrigin = doServer)) then
            SetParams(cdsData.Params, ADataSet);

          if (AEditMode = emInsert) and (ADefaultsOrigin = doDataset) then
            FDefaultsDataSet:= ADataSet;
        end;
    end;
end;

procedure TEditForm.Initialize;
var
  ClientDataSet: TAbmesClientDataSet;
begin
  if not CanEditOuterDataSet then
    InternalOpenDataSets;

  inherited Initialize;

  ChangeEditMode(FEditMode);

  if (FEditMode = emEdit) and GetRecordReadOnly then
    FEditMode:= emReadOnly;

  case EditMode of
    emInsert:
      begin
        FDataSetBookmark:= dsData.DataSet.Bookmark;

        FInsertingLike:= (DefaultsOrigin = doServer);
        try
          if (DefaultsOrigin = doServer) then
            begin
              Assert(dsData.DataSet is TAbmesClientDataSet);
              ClientDataSet:= (dsData.DataSet as TAbmesClientDataSet);

              FInsertLikeRecordData:= GetRecordData(ClientDataSet, True);
              ClientDataSet.EmptyDataSet;
              ClientDataSet.MergeChangeLog;
            end;  { if }

          dsData.DataSet.Append;
        finally
          FInsertingLike:= False;
        end;  { try }
      end;
    emReadOnly:
      begin
        pnlOkCancel.Visible:= False;
        pnlApply.Visible:= False;
        pnlClose.Visible:= True;

        if dsData.DataSet is TAbmesClientDataSet then
          with dsData.DataSet as TAbmesClientDataSet do
            begin
              FSaveDataSetReadOnly:= ReadOnly;
              ReadOnly:= ReadOnlyModeDataSetReadOnly;
            end;
      end;
  end;

  if CanEditOuterDataSet then
    InternalOpenDataSets;

  InitializeAllDBComboBoxes;

  InitializeAnnulCheckBoxes;
end;

procedure TEditForm.InitializeAllDBComboBoxes;
var
  i: Integer;
begin
  for i:= 0 to ComponentCount - 1 do
    if (Components[i] is TJvDBComboBox) then
      InitializeDBComboBox(Components[i] as TJvDBComboBox);
end;

procedure TEditForm.InitializeAnnulCheckBoxes;
var
  cb: TCustomCheckBox;
  EmployeeName: string;
  DummyBoolean: Boolean;
  DummyInteger: Integer;
  EmployeeNo: Integer;
  AnnulHint: string;
begin
  if Assigned(dsData.DataSet.FindField('ANNUL_EMPLOYEE_CODE')) and
     not dsData.DataSet.FindField('ANNUL_EMPLOYEE_CODE').IsNull then
    begin
      dmMain.SvrHumanResource.GetEmployeeData(
        dsData.DataSet.FindField('ANNUL_EMPLOYEE_CODE').AsInteger,
        EmployeeName, DummyBoolean, DummyInteger, DummyInteger, EmployeeNo);

      AnnulHint:= Format('[%d] %s%', [EmployeeNo, EmployeeName, SLineBreak]);

      if Assigned(dsData.DataSet.FindField('ANNUL_DATE')) and
         Assigned(dsData.DataSet.FindField('ANNUL_TIME')) and
         (dsData.DataSet.FindField('ANNUL_DATE').DataType = ftTimeStamp) and
         (dsData.DataSet.FindField('ANNUL_TIME').DataType = ftTimeStamp) then
        AnnulHint:=
          AnnulHint + SLineBreak +
          dsData.DataSet.FindField('ANNUL_DATE').DisplayText + ' ' +
          FormatDateTime('hh:nn:ss', dsData.DataSet.FindField('ANNUL_TIME').AsDateTime);

      for cb in AllComponents.OfType<TCustomCheckBox> do
        if ContainsText(cb.Name, 'annul') then
          begin
            cb.ShowHint:= True;
            cb.Hint:= AnnulHint;

            if (cb.Parent is TPanel) and
               not (cb.Parent as TPanel).Enabled then
              begin
                cb.Parent.Enabled:= True;
                cb.Hint:= AnnulHint;
                cb.TabStop:= False;

                if (cb is TAbmesDBCheckBox) then
                  (cb as TAbmesDBCheckBox).ReadOnly:= True;

                if (cb is TCheckBox) then
                  (cb as TCheckBox).OnClick:= AnnulCheckBoxClick;
              end;
          end;
    end;
end;

procedure TEditForm.Finalize;
begin
  if (dsData.DataSet.State in dsEditModes) then
    dsData.DataSet.Cancel;

  case EditMode of
    emInsert:
      if (ModalResult <> mrOk) and (DefaultsOrigin <> doServer) then
        dsData.DataSet.Bookmark:= FDataSetBookmark;
    emReadOnly:
      if dsData.DataSet is TClientDataSet then
        TCustomClientDataSetHack(dsData.DataSet).ReadOnly:= FSaveDataSetReadOnly;
  end;

  InternalCloseDataSets;

  inherited Finalize;
end;

procedure TEditForm.FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  NewHeight:= Height + (((NewHeight - Height) div VerticalResizeStep) * VerticalResizeStep);
end;

procedure TEditForm.SaveFormPositionAndSize;
begin
  FSavedFormTop:= Top;
  FSavedFormHeight:= Height;
  FSavedFormLeft:= Left;
  FSavedFormWidth:= Width;
end;

procedure TEditForm.FormCreate(Sender: TObject);
begin
  inherited;
  FFilterInitFieldStates:= TDictionary<TDataSet, TFieldInitStateArray>.Create;
end;

procedure TEditForm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FFilterInitFieldStates);
  inherited;
end;

procedure TEditForm.FormResize(Sender: TObject);
begin
  inherited;
  if Visible and not FTogglingFormSize.IsEntered then
    begin
      actToggleFormHeight.Checked:= False;
      actToggleFormWidth.Checked:= False;
      SaveFormPositionAndSize;
    end;  { if }
end;

procedure TEditForm.FormShow(Sender: TObject);
begin
  inherited;
  OriginalFormHeight:= Height;
  OriginalFormWidth:= Width;
  SaveFormPositionAndSize;
end;

class function TEditForm.ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
  AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean;
var
  f: TEditForm;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

function TEditForm.VerticalResizeStep: Integer;
var
  VerticalResizeStepAttr: VerticalResizeStepAttribute;
begin
  VerticalResizeStepAttr:= FindAttribute<VerticalResizeStepAttribute>;

  if Assigned(VerticalResizeStepAttr) then
    Result:= ScalePixels(VerticalResizeStepAttr.Value)
  else
    Result:= 1;
end;

procedure TEditForm.WMSysCommand(var AMessage: TWmSysCommand);
begin
  if ((MaximizeStyle = msVertical) and ((AMessage.CmdType and $FFF0) = SC_MAXIMIZE)) then
    begin
      actToggleFormHeight.Execute;
      Exit;
    end;  { if }

  if ((MaximizeStyle = msFull) and ((AMessage.CmdType and $FFF0) = SC_MAXIMIZE)) then
    begin
      actToggleFormHeight.Execute;
      actToggleFormWidth.Execute;
      Exit;
    end;  { if }

  inherited;
end;

procedure TEditForm.DoEditApplyUpdates;
var
  SaveCursor: TCursor;
begin
  with cdsData do
    if (ProviderName <> '') or
       Assigned(RemoteServer) or
       Assigned(ConnectionBroker) or
       Assigned(DataSetField) then
      begin
        SaveCursor:= Screen.Cursor;
        Screen.Cursor:= crSQLWait;
        try
          if (cdsData.ChangeCount > 0) then
            begin
              if (cdsData.ApplyUpdates(0) > 0) then
                Abort;

              if Assigned(dmDocClient) then
                dmDocClient.CommitUpdates;
            end
          else
            begin
              if Assigned(dmDocClient) then
                dmDocClient.ApplyUpdates;
            end;

          SaveDocsSavePoint;
        finally
          Screen.Cursor:= SaveCursor;
        end;  { try }
      end;  { if }
end;

procedure TEditForm.DoEditCancelUpdates;
begin
  cdsData.CancelUpdates;
end;

procedure TEditForm.cdsDataAfterDelete(DataSet: TDataSet);
begin
  inherited;
  if (DefaultsOrigin <> doServer) then
    DoEditApplyUpdates;
end;

procedure TEditForm.cdsDataAfterCancel(DataSet: TDataSet);
begin
  inherited;
  DoEditCancelUpdates;
end;

procedure TEditForm.cdsDataReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ReconcileError(E);
end;

function TEditForm.GetApplyUpdatesEnabled: Boolean;
begin
  Result:=
    inherited GetApplyUpdatesEnabled or
    (cdsData.Active and (cdsData.ChangeCount > 0));
end;

procedure TEditForm.actToggleFormHeightExecute(Sender: TObject);
var
  WorkArea: TRect;
  NewHeight: Integer;
begin
  inherited;
  FTogglingFormSize.TempEnter/
    procedure begin
      with Sender as TAction do
        begin
          Checked:= not Checked;

          WorkArea:= Screen.MonitorFromPoint(Mouse.CursorPos).WorkareaRect;

          if Checked then
            begin
              FSavedFormTop:= Top;
              FSavedFormHeight:= Height;

              NewHeight:=
                OriginalFormHeight +
                ((WorkArea.Bottom - WorkArea.Top - OriginalFormHeight) div VerticalResizeStep) * VerticalResizeStep;

              Height:= NewHeight;
              Top:= WorkArea.Top + (WorkArea.Bottom - WorkArea.Top - NewHeight) div 2;
            end
          else   { if }
            begin
              Height:= FSavedFormHeight;
              Top:= FSavedFormTop;
            end;   { if }
        end;   { with }
    end;  { lambda }
end;

procedure TEditForm.actToggleFormWidthExecute(Sender: TObject);
var
  WorkArea: TRect;
begin
  inherited;
  FTogglingFormSize.TempEnter/
    procedure begin
      with Sender as TAction do
        begin
          Checked:= not Checked;

          WorkArea:= GetWorkArea;

          if Checked then
            begin
              FSavedFormLeft:= Left;
              FSavedFormWidth:= Width;
              Width:= WorkArea.Right - WorkArea.Left;
              Left:= WorkArea.Left;
            end
          else   { if }
            begin
              Width:= FSavedFormWidth;
              Left:= FSavedFormLeft;
            end;   { if }
        end;   { with }
    end;  { lambda }
end;

procedure TEditForm.AnnulCheckBoxClick(Sender: TObject);
begin
  (Sender as TCheckBox).Checked:= True;
end;

class function TEditForm.CanEditOuterDataSet: Boolean;
var
  CanEditOuterDataSetAttr: CanEditOuterDataSetAttribute;
begin
  CanEditOuterDataSetAttr:= FindAttribute<CanEditOuterDataSetAttribute>;
  Result:= Assigned(CanEditOuterDataSetAttr) and CanEditOuterDataSetAttr.Value;
end;

procedure TEditForm.DoApplyUpdates;
var
  flInEditModes: Boolean;
begin
  Application.ProcessMessages;

  flInEditModes:= (cdsData.State in dsEditModes);

  inherited DoApplyUpdates;

  if cdsData.Active then
    try
      DoEditApplyUpdates;
    except
      if flInEditModes then
        cdsData.Edit;
      raise;
    end;
end;

procedure TEditForm.DoBeforeShow;

var
  pds: TParamDataSet;
  ds: TDataSource;
  fld: TField;
begin
  inherited;

  for ds in AllComponents.OfType<TDataSource> do
    if Assigned(ds.DataSet) and
       (ds.DataSet is TParamDataSet) and
       (ds.DataSet.Owner = Self) and
       Assigned(ds.DataSet.FindField(CurrentFilterVariantCodeFieldName)) then
      ds.OnDataChange:= ParamDataSourceDataChange;

  for pds in AllComponents.OfType<TParamDataSet> do
    begin
      fld:= pds.FindField(CurrentFilterVariantCodeFieldName);
      if Assigned(fld) then
        begin
          fld.OnValidate:= ParamDataSetCURRENT_FILTER_VARIANT_CODEValidate;
          fld.OnChange:= ParamDataSetCURRENT_FILTER_VARIANT_CODEChange;

          SetDependantFields(pds, 'BEGIN_DATE', ['DATE_UNIT_CODE', 'DATE_UNIT_COUNT', 'TIME_UNIT_CODE', 'TIME_UNIT_COUNT']);

          SaveFilterInitFieldValues(pds);
        end;
    end;
end;

function TEditForm.GetRecordReadOnly: Boolean;
begin
  Result:= False;
end;

procedure TEditForm.OpenDataSets;
begin
  Application.ProcessMessages;

  FDataSetOpenHere:=
    Assigned(dsData.DataSet) and
    (dsData.DataSet.FieldCount > 0) and
    not dsData.DataSet.Active;

  if FDataSetOpenHere then
    begin
      if (dsData.DataSet is TCustomClientDataSet) then
        with TCustomClientDataSetHack(dsData.DataSet) do
          begin
            if (ProviderName <> '') or
               Assigned(RemoteServer) or
               Assigned(ConnectionBroker) or
               Assigned(DataSetField) then
              Open
            else
              CreateDataSet;
          end  { with }
        else
          dsData.DataSet.Open;
    end;  { if }
end;

function TEditForm.ReadOnlyModeDataSetReadOnly: Boolean;
begin
  Result:= True;
end;

procedure TEditForm.CloseDataSets;
begin
  if FDataSetOpenHere then
    dsData.DataSet.Close;
end;

procedure TEditForm.InternalOpenDataSets;
begin
  Application.ProcessMessages;

  Screen.TempCursor(crSQLWait)/
    procedure
    var
      f: TDBFrame;
    begin
      OpenDataSets;

      for f in Frames.OfType<TDBFrame> do
        f.OpenDataSets;
    end;
end;

procedure TEditForm.InternalCloseDataSets;
var
  f: TDBFrame;
begin
  for f in Frames.OfType<TDBFrame> do
    f.CloseDataSets;

  CloseDataSets;
end;

procedure TEditForm.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= (EditMode = emReadOnly);
end;

procedure TEditForm.actFormUpdate(Sender: TObject);
var
  f: TDBFrame;
begin
  inherited;

  // set the ReadOnly property of all DBFrames
  for f in Frames.OfType<TDBFrame> do
    SetDBFrameReadOnly(f);
end;

procedure TEditForm.ChangeEditMode(var AEditMode: TEditMode);
begin
// do nothig
end;

procedure TEditForm.SetClearFieldActionEnabled(AAction: TObject;
  AFieldName: string);
begin
  (AAction as TAction).Enabled:=
    not dsData.DataSet.FieldByName(AFieldName).IsNull;
end;

procedure TEditForm.ClearField(AFieldName: string);
begin
  with dsData, DataSet do
    begin
      CheckEditMode(DataSet);
      FieldByName(AFieldName).Clear;
    end;   { with }
end;

procedure TEditForm.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  case DefaultsOrigin of
    doNone: ;
      // do nothing

    doDataset:
      if Assigned(FDefaultsDataSet) then
        AssignFields(FDefaultsDataSet, cdsData);

    doServer:
      begin
        SetRecordData(dsData.DataSet, FInsertLikeRecordData, True);

        if Assigned(cdsData.FindField('DOC_BRANCH_CODE')) and Assigned(cdsData.FindField('DOC_CODE')) then
          dmDocClient.CreateDocLike(
            cdsData.FieldByName('DOC_BRANCH_CODE').AsInteger,
            cdsData.FieldByName('DOC_CODE').AsInteger,
            False,
            cdsData.FieldByName('DOC_BRANCH_CODE'),
            cdsData.FieldByName('DOC_CODE')
          );
      end;
  else
    raise Exception.Create('Unknown DefaultsOrigin');
  end;  { case }
end;

procedure TEditForm.SaveFilterInitFieldValues(ADataSet: TDataSet = nil);
var
  i: Integer;
  InitFieldStates: TFieldInitStateArray;
begin
  inherited;

  Assert(Assigned(ADataSet));

  SetLength(InitFieldStates, ADataSet.FieldCount);
  for i:= 0 to ADataSet.FieldCount - 1 do
    if (ADataSet.Fields[i].FieldName <> CurrentFilterVariantCodeFieldName) then
      begin
        InitFieldStates[i].Value:= ADataSet.Fields[i].AsVariant;
        InitFieldStates[i].ReadOnly:= ADataSet.Fields[i].ReadOnly;
      end;

  FFilterInitFieldStates.AddOrSetValue(ADataSet, InitFieldStates);
end;

procedure TEditForm.RestoreFilterInitFieldStates(ADataSet: TDataSet = nil);
var
  i: Integer;
  InitFieldStates: TFieldInitStateArray;
begin
  inherited;

  Assert(Assigned(ADataSet));

  if FRestoringInitFieldValues then
    Exit;

  InitFieldStates:= FFilterInitFieldStates[ADataSet];

  FRestoringInitFieldValues:= True;
  try
    for i:= 0 to ADataSet.FieldCount - 1 do
      if (ADataSet.Fields[i].FieldKind = fkData) and
         (ADataSet.Fields[i].FieldName <> CurrentFilterVariantCodeFieldName) then
        begin
          ADataSet.Fields[i].ReadOnly:= InitFieldStates[i].ReadOnly;
          ADataSet.Fields[i].LoadedReadOnly:= False;
        end;

    for i:= 0 to ADataSet.FieldCount - 1 do
      if (ADataSet.Fields[i].FieldKind = fkData) and
         (ADataSet.Fields[i].FieldName <> CurrentFilterVariantCodeFieldName) and
         (not ADataSet.Fields[i].ReadOnly) then
        ADataSet.Fields[i].AsVariant:= InitFieldStates[i].Value;
  finally
    FRestoringInitFieldValues:= False;
  end;
end;

function TEditForm.FilterInitValuesModified(ADataSet: TDataSet = nil): Boolean;
var
  i: Integer;
  InitFieldStates: TFieldInitStateArray;
begin
  Assert(Assigned(ADataSet));

  Result:= False;

  if FFilterInitFieldStates.ContainsKey(ADataSet) then
    begin
      InitFieldStates:= FFilterInitFieldStates[ADataSet];

      for i:= 0 to ADataSet.FieldCount - 1 do
        if (ADataSet.Fields[i].FieldKind = fkData) and
           (ADataSet.Fields[i].FieldName <> CurrentFilterVariantCodeFieldName) then
          Result:=
            Result or
            (InitFieldStates[i].Value <> ADataSet.Fields[i].AsVariant);
    end;
end;

function TEditForm.FilterInitFieldState(const FieldName: string;
  ADataSet: TDataSet = nil): TFieldInitState;
begin
  Assert(Assigned(ADataSet));

  Result:= FilterInitFieldState(ADataSet.FieldByName(FieldName).Index, ADataSet);
end;

function TEditForm.FilterInitFieldState(Index: Integer;
  ADataSet: TDataSet = nil): TFieldInitState;
begin
  Assert(Assigned(ADataSet));

  Result:= FFilterInitFieldStates[ADataSet][Index];
end;

procedure TEditForm.ParamDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if FInParamDataSetDataChange then
    Exit;

  FInParamDataSetDataChange:= True;
  try
    if Assigned(Field) and
       (Field.FieldKind = fkData) and
       (pfInUpdate in Field.ProviderFlags) and
       (Field.FieldName <> CurrentFilterVariantCodeFieldName) and
       (not FRestoringInitFieldValues) and
       (Field.DataSet.State in dsEditModes) and
       (Field.DataSet.FieldByName(CurrentFilterVariantCodeFieldName).AsInteger <> 0) and
       (not Field.DataSet.FieldByName(CurrentFilterVariantCodeFieldName).ReadOnly) and
       FilterInitValuesModified(Field.DataSet) then
      begin
        FClearingCurrentFilterVariant:= True;
        try
          Field.DataSet.FieldByName(CurrentFilterVariantCodeFieldName).Clear;
        finally
          FClearingCurrentFilterVariant:= False;
        end;
      end;
  finally
    FInParamDataSetDataChange:= False;
  end;
end;

procedure TEditForm.ParamDataSetCURRENT_FILTER_VARIANT_CODEValidate(
  Sender: TField);
begin
  inherited;
  if Sender.IsNull and not FClearingCurrentFilterVariant then
    Abort;
end;

procedure TEditForm.ParamDataSetCURRENT_FILTER_VARIANT_CODEChange(
  Sender: TField);
begin
  inherited;
  if (Sender.AsInteger = 1) and (Screen.ActiveForm <> Self) then
    RestoreFilterInitFieldStates(Sender.DataSet);
end;

function TEditForm.InvisibleOperation: TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc) begin
        Width:= 0;
        Height:= 0;
        try
          try
            AProc;
          except
            Application.HandleException(nil);
          end;
        finally
          PostMessage(Handle, WM_CLOSE, 0, 0);
        end;
      end);
end;

end.
