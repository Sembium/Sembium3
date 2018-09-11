unit fSvrConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, AbmesFields, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls, Grids, DBGrids,
  Mask, ComCtrls, ToolWin, ImgList, ActnList, JvExStdCtrls, JvDBCombobox, uObjParams,
  JvCombobox, DBGridEhGrouping, AbmesDBCheckBox, JvExMask, JvToolEdit,
  JvDBControls, WideStrings, DBXDevartOracle, SqlExpr, AbmesSQLConnection, System.Actions, ToolCtrlsEh,
  DBGridEhToolCtrls, JvSpin, JvDBSpinEdit, DynVarsEh, EhLibVCL, DBAxisGridsEh,
  System.ImageList;

type
  TServiceStatus = (ssNotInstalled, ssStopped, ssStarted, ssStopping, ssStarting);

type
  TfmSvrConfig = class(TForm)
    cdsData: TAbmesClientDataSet;
    cdsDataDB_CONNECTION_NAME: TAbmesWideStringField;
    cdsDataDB_CONNECTION_TYPE: TAbmesWideStringField;
    cdsDataDB_HOST: TAbmesWideStringField;
    cdsDataDB_PORT: TAbmesWideStringField;
    cdsDataDB_SERVICE: TAbmesWideStringField;
    cdsDataDB_USER: TAbmesWideStringField;
    cdsDataDB_PASSWORD: TAbmesWideStringField;
    dsData: TDataSource;
    pnlConnections: TPanel;
    pnlParams: TPanel;
    pnlConnectionsCaption: TPanel;
    pnlParamsCaption: TPanel;
    grdConnections: TAbmesDBGrid;
    alActions: TActionList;
    actNewDBConnection: TAction;
    actDeleteDBConnection: TAction;
    tlbConnections: TToolBar;
    btnNewDBConnection: TToolButton;
    btnDeleteDBConnection: TToolButton;
    lblParams: TLabel;
    actForm: TAction;
    gbConnectionLock: TGroupBox;
    gbGeneralParams: TGroupBox;
    edtDBConnectionName: TDBEdit;
    lblDBConnectionName: TLabel;
    lblDBConnectionType: TLabel;
    cbDBConnectionType: TDBComboBox;
    edtDBService: TDBEdit;
    lblDBService: TLabel;
    edtDBPort: TDBEdit;
    lblDBPort: TLabel;
    edtDBHost: TDBEdit;
    lblDBHost: TLabel;
    edtDBUser: TDBEdit;
    lblDBUser: TLabel;
    edtDBPassword: TDBEdit;
    lblDBPassword: TLabel;
    edtLockMessage: TDBEdit;
    lblLockMessage: TLabel;
    cdsDataLOCK_MESSAGE: TAbmesWideStringField;
    ilActions: TImageList;
    lblAccessBanType: TLabel;
    cbAccessBanType: TJvDBComboBox;
    cdsDataACCESS_BAN_TYPE: TAbmesFloatField;
    pnlBottomButtons: TPanel;
    pnlOKCancel: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    btnLockAllConnections: TButton;
    actLockAllConnections: TAction;
    btnUnlockAllConnections: TButton;
    actUnlockAllConnections: TAction;
    cdsDataIS_LOCKED: TAbmesFloatField;
    pnlTop: TPanel;
    gbProtocols: TGroupBox;
    cdsSettings: TAbmesClientDataSet;
    dsSettings: TDataSource;
    cdsSettingsDATASNAP_PORT: TAbmesFloatField;
    cdsSettingsENABLE_DATASNAP: TAbmesFloatField;
    chbEnableDatasnap: TAbmesDBCheckBox;
    edtDatasnapPort: TJvDBComboEdit;
    lblDatasnapPort: TLabel;
    btnTestConnection: TButton;
    gbService: TGroupBox;
    lblServiceStatus: TLabel;
    btnStartService: TButton;
    btnStopService: TButton;
    actStartService: TAction;
    actStopService: TAction;
    cdsDataORDER_NO: TAbmesFloatField;
    actMoveUp: TAction;
    actMoveDown: TAction;
    btnMoveUp: TToolButton;
    btnMoveDown: TToolButton;
    cdsData_MAX_ORDER_NO: TAggregateField;
    cdsDataIS_READ_ONLY: TAbmesFloatField;
    chbIsReadOnly: TAbmesDBCheckBox;
    cdsSettingsSERVER_CALLS_LOG_DIRECTORY: TAbmesWideStringField;
    cdsSettingsLOCK_OTHER_COMPUTER_SESSIONS: TAbmesFloatField;
    cdsSettingsCOMPUTER_SWITCH_TIMEOUT_MINUTES: TAbmesFloatField;
    gbLoginSettings: TGroupBox;
    chbLockOtherComputerSessions: TAbmesDBCheckBox;
    lblComputerSwitchTimeoutMinutes: TLabel;
    lblComputerSwitchTimeoutMinutes2: TLabel;
    gbLogging: TGroupBox;
    lblServerCallsLogDir: TLabel;
    edtServerCallsLogDir: TJvDirectoryEdit;
    edtComputerSwitchTimeoutMinutes: TJvDBSpinEdit;
    cdsSettingsSHOW_ADVANCED_SETTINGS: TAbmesFloatField;
    cdsDataIS_TEST_DB: TAbmesFloatField;
    chbIsTestDB: TAbmesDBCheckBox;
    cdsDataCONTENT_STORAGE_CONTAINER_NAME: TAbmesWideStringField;
    gbContentStorageContainerName: TGroupBox;
    edtContentStorageContainerName: TDBEdit;
    btnApply: TBitBtn;
    edtHttpPort: TJvDBComboEdit;
    lblHttpPort: TLabel;
    chbEnableHttp: TAbmesDBCheckBox;
    cdsSettingsENABLE_HTTP: TAbmesFloatField;
    cdsSettingsHTTP_PORT: TAbmesFloatField;
    chbServerCallsAsyncLogging: TAbmesDBCheckBox;
    cdsSettingsSERVER_CALLS_ASYNC_LOGGING: TAbmesFloatField;
    chbEnableVersionHttp: TAbmesDBCheckBox;
    lblVersionHttpPort: TLabel;
    edtVersionHttpPort: TJvDBComboEdit;
    cdsSettingsVERSION_HTTP_PORT: TAbmesFloatField;
    cdsSettingsENABLE_VERSION_HTTP: TAbmesFloatField;
    btnExport: TBitBtn;
    ExportDialog: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actNewDBConnectionUpdate(Sender: TObject);
    procedure actDeleteDBConnectionUpdate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cbDBConnectionTypeClick(Sender: TObject);
    procedure actDeleteDBConnectionExecute(Sender: TObject);
    procedure actNewDBConnectionExecute(Sender: TObject);
    procedure actLockAllConnectionsExecute(Sender: TObject);
    procedure actUnlockAllConnectionsExecute(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsSettingsBeforePost(DataSet: TDataSet);
    procedure edtDatasnapPortButtonClick(Sender: TObject);
    procedure btnTestConnectionClick(Sender: TObject);
    procedure actStartServiceExecute(Sender: TObject);
    procedure actStopServiceExecute(Sender: TObject);
    procedure actStartServiceUpdate(Sender: TObject);
    procedure actStopServiceUpdate(Sender: TObject);
    procedure actMoveUpUpdate(Sender: TObject);
    procedure actMoveDownUpdate(Sender: TObject);
    procedure actMoveUpExecute(Sender: TObject);
    procedure actMoveDownExecute(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure edtHttpPortButtonClick(Sender: TObject);
    procedure edtVersionHttpPortButtonClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
    FServiceDisplayName: string;
    FServiceStatus: TServiceStatus;
    procedure ReadData(const ALocation: string);
    procedure WriteData(const ALocation: string);
    procedure RecalcOrderNo;
    procedure SetAccessBanTypeAndLockMessage(AAccessBanType: TAccessBanType; ALockMessage: string = '');
    procedure CheckOtherHomes;
    procedure GetServiceInfo;
    procedure SetServiceStatusText;
    function ApplyChanges: Boolean;
    procedure MoveConnection(const Up: Boolean);
    procedure DoApply;
    procedure CheckBrowseMode;
  public
    { Public declarations }
  end;

implementation

uses
  Registry, DBConsts, uUtils, fLockAllConnections, uMessageUtils, uSvrUtils,
  uServiceUtils, dSvrMain, ShellAPI, uDBUtils, UITypes, uServerConfigRepository,
  uSvrApp, uServerConfig, uSvrHostingUtils;

{$R *.dfm}

resourcestring
  SCaption = '%s Configuration';
  SServerIsRunningChangesWillTakeEffectAfterRestart =
    '%s might be running. If so changes will take effect after restart.';
  SConfirmUnlockAllConnections = 'This will unlock all connections.';
  SNoProtocolEnabled = 'No protocol is enabled';
  SPortsMustDiffer = '"%s" must differ "%s"';
  SPortAlreadyUsed = '"%s" already used in home "%s"';
  STestSuccessful = 'Test successful.';
  STestFailed = 'Test failed.';
  SNotInstalled = 'not installed';
  SStopped = 'stopped';
  SStarted = 'started';
  SStopping = 'stopping';
  SStarting = 'starting';
  SSaveChangesOnServiceStart = 'Changes will be saved before service start';

{ TfmSvrConfig }

procedure TfmSvrConfig.MoveConnection(const Up: Boolean);
var
  ConnectionName: string;
  OrderNo: Integer;
  OtherOrderNo: Integer;
begin
  ConnectionName:= cdsDataDB_CONNECTION_NAME.AsString;
  OrderNo:= cdsDataORDER_NO.AsInteger;

  if Up then
    cdsData.Prior
  else
    cdsData.Next;

  OtherOrderNo:= cdsDataORDER_NO.AsInteger;

  cdsData.TempDisableControls/
    procedure begin
      cdsData.SafeEdit/
        procedure begin
          cdsDataORDER_NO.AsInteger:= OrderNo;
        end;

      cdsData.First;
      cdsData.Locate(cdsDataDB_CONNECTION_NAME.FieldName, ConnectionName, []);
      Assert(cdsDataDB_CONNECTION_NAME.AsString = ConnectionName);

      cdsData.SafeEdit/
        procedure begin
          cdsDataORDER_NO.AsInteger:= OtherOrderNo;
        end;
    end;
end;

procedure TfmSvrConfig.DoApply;
begin
  if ApplyChanges and
     (RunningProcessCount(ExtractFileName(Application.ExeName)) > 1) then
    ShowMessage(Format(SServerIsRunningChangesWillTakeEffectAfterRestart, [Application.Title]));
end;

procedure TfmSvrConfig.CheckBrowseMode;
begin
  CheckEditMode(cdsSettings);
  cdsSettingsSERVER_CALLS_LOG_DIRECTORY.AsString := edtServerCallsLogDir.Directory;

  cdsSettings.CheckBrowseMode;
  cdsData.CheckBrowseMode;

  if (not cdsSettingsENABLE_DATASNAP.AsBoolean) and
     (not cdsSettingsENABLE_HTTP.AsBoolean) and
     (MessageDlg(SNoProtocolEnabled, mtWarning, [mbOK, mbCancel], 0) <> mrOK) then
    Abort;
end;

procedure TfmSvrConfig.GetServiceInfo;
begin
  FServiceDisplayName:= ServiceDisplayName;

  if not RegisteredAsService then
    FServiceStatus:= ssNotInstalled
  else
    begin
      if ServiceIsRunning then
        FServiceStatus:= ssStarted
      else
        FServiceStatus:= ssStopped;
    end;

  SetServiceStatusText;
end;

procedure TfmSvrConfig.actDeleteDBConnectionExecute(Sender: TObject);
begin
  if (MessageDlg(SDeleteRecordQuestion, mtConfirmation, mbOKCancel, 0) = mrOk) then
    cdsData.Delete;
end;

procedure TfmSvrConfig.actDeleteDBConnectionUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:=
    cdsData.Active and (cdsData.RecordCount > 0);
end;

procedure TfmSvrConfig.actFormUpdate(Sender: TObject);
const
  ReadOnlyColors: array[Boolean] of TColor = (clWindow, clBtnFace);
var
  ro: Boolean;
  IsLocked: Boolean;
begin
  ro:= (cbDBConnectionType.Text = SOraClientConnectionType);

  edtDBHost.ReadOnly:= ro;
  edtDBPort.ReadOnly:= ro;

  edtDBHost.Color:= ReadOnlyColors[ro];
  edtDBPort.Color:= ReadOnlyColors[ro];

  IsLocked:= (IntToAccessBanType(cdsDataACCESS_BAN_TYPE.AsInteger) <> abtNone);

  edtLockMessage.ReadOnly:= not IsLocked;
  edtLockMessage.Color:= ReadOnlyColors[not IsLocked];

  edtDatasnapPort.ReadOnly:= not cdsSettingsENABLE_DATASNAP.AsBoolean;
  edtDatasnapPort.Color:= ReadOnlyColors[edtDatasnapPort.ReadOnly];
  edtDatasnapPort.Button.Enabled:= not edtDatasnapPort.ReadOnly;

  edtHttpPort.ReadOnly:= not cdsSettingsENABLE_HTTP.AsBoolean;
  edtHttpPort.Color:= ReadOnlyColors[edtHttpPort.ReadOnly];
  edtHttpPort.Button.Enabled:= not edtHttpPort.ReadOnly;

  edtVersionHttpPort.ReadOnly:= not cdsSettingsENABLE_VERSION_HTTP.AsBoolean;
  edtVersionHttpPort.Color:= ReadOnlyColors[edtVersionHttpPort.ReadOnly];
  edtVersionHttpPort.Button.Enabled:= not edtVersionHttpPort.ReadOnly;

  gbLoginSettings.Visible:= cdsSettingsSHOW_ADVANCED_SETTINGS.AsBoolean;
end;

procedure TfmSvrConfig.actLockAllConnectionsExecute(Sender: TObject);
var
  AccessBanType: TAccessBanType;
  LockMessage: string;
begin
  if TfmLockAllConnections.ShowForm(AccessBanType, LockMessage) then
    SetAccessBanTypeAndLockMessage(AccessBanType, LockMessage);
end;

procedure TfmSvrConfig.actMoveDownExecute(Sender: TObject);
begin
  MoveConnection(False);
end;

procedure TfmSvrConfig.actMoveDownUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:=
    cdsData.Active and
    (cdsData.RecNo < cdsData.RecordCount);
end;

procedure TfmSvrConfig.actMoveUpExecute(Sender: TObject);
begin
  MoveConnection(True);
end;

procedure TfmSvrConfig.actMoveUpUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:=
    cdsData.Active and
    (cdsData.RecNo > 1);
end;

procedure TfmSvrConfig.actNewDBConnectionExecute(Sender: TObject);
begin
  edtDBConnectionName.SetFocus;
  cdsData.Append;
end;

procedure TfmSvrConfig.actNewDBConnectionUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:= cdsData.Active;
end;

procedure TfmSvrConfig.actStartServiceExecute(Sender: TObject);
begin
  if (cdsData.State in dsEditModes) or (cdsData.ChangeCount > 0) then
    begin
      if (MessageDlg(SSaveChangesOnServiceStart, mtConfirmation, mbOKCancel, 0) <> mrOK) then
        Abort;

      ApplyChanges;
    end;

  Screen.TempCursor(crHourGlass)/
    procedure begin
      FServiceStatus:= ssStarting;
      try
        SetServiceStatusText;
        StartService;
      finally
        GetServiceInfo;
      end;
    end;
end;

procedure TfmSvrConfig.actStartServiceUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:= (FServiceStatus = ssStopped);
end;

procedure TfmSvrConfig.actStopServiceExecute(Sender: TObject);
begin
  Screen.TempCursor(crHourGlass)/
    procedure begin
      FServiceStatus:= ssStopping;
      try
        SetServiceStatusText;
        StopService;
      finally
        GetServiceInfo;
      end;
    end;
end;

procedure TfmSvrConfig.actStopServiceUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:= (FServiceStatus = ssStarted);
end;

procedure TfmSvrConfig.actUnlockAllConnectionsExecute(Sender: TObject);
begin
  if (MessageDlg(SConfirmUnlockAllConnections, mtConfirmation, mbOKCancel, 0) = mrOk) then
    SetAccessBanTypeAndLockMessage(abtNone);
end;

function TfmSvrConfig.ApplyChanges: Boolean;
begin
  Result:= False;

  CheckBrowseMode;

  CheckOtherHomes;

  if (cdsSettings.ChangeCount > 0) or (cdsData.ChangeCount > 0) then
    begin
      WriteData(GetServerConfigLocation);
      Result:= True;
    end;  { if }
end;

procedure TfmSvrConfig.btnApplyClick(Sender: TObject);
begin
  DoApply;
end;

procedure TfmSvrConfig.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfmSvrConfig.btnExportClick(Sender: TObject);
begin
  if ExportDialog.Execute then
    begin
      CheckBrowseMode;
      WriteData(ExportDialog.FileName);
    end;
end;

procedure TfmSvrConfig.btnOKClick(Sender: TObject);
begin
  DoApply;
  Close;
end;

procedure TfmSvrConfig.btnTestConnectionClick(Sender: TObject);
var
  TestObjParams: TStringList;
  TestSQLConn: TAbmesSQLConnection;

  procedure SetObjParamValueOrDefault(const AParamName, AParamValue: string);
  begin
    if (AParamValue = '') then
      TestObjParams.Values[AParamName]:= GetParamDefaultValue(AParamName)
    else
      TestObjParams.Values[AParamName]:= AParamValue;
  end;

begin
  if cdsData.State in dsEditModes then
    cdsData.UpdateRecord;

  TestSQLConn:= TAbmesSQLConnection.Create(nil);
  try
    TestObjParams:= TStringList.Create;
    try
      SetObjParamValueOrDefault(SDBConnectionTypeParamName, cdsDataDB_CONNECTION_TYPE.AsString);
      SetObjParamValueOrDefault(SDBHostParamName, cdsDataDB_HOST.AsString);
      SetObjParamValueOrDefault(SDBPortParamName, cdsDataDB_PORT.AsString);
      SetObjParamValueOrDefault(SDBServiceParamName, cdsDataDB_SERVICE.AsString);
      SetObjParamValueOrDefault(SDBUserParamName, cdsDataDB_USER.AsString);
      SetObjParamValueOrDefault(SDBPasswordParamName, cdsDataDB_PASSWORD.AsString);

      SetSqlConnectionParams(TestSQLConn, TestObjParams);
      TestSQLConn.LoginPrompt:= False;

      try
        Screen.TempCursor(crHourGlass)/
          procedure begin
            TestSQLConn.Open;
            TestSQLConn.Close;
          end;

        MessageDlg(STestSuccessful, mtInformation, [mbOK], 0);
      except
        on E: Exception do
          MessageDlg(STestFailed + SLineBreak + SLineBreak + E.Message, mtError, [mbOK], 0);
      end;
    finally
      FreeAndNil(TestObjParams);
    end;
  finally
    FreeAndNil(TestSQLConn);
  end;
end;

procedure TfmSvrConfig.cbDBConnectionTypeClick(Sender: TObject);
begin
  if (cbDBConnectionType.Text = SOraClientConnectionType) then
    begin
      cdsDataDB_HOST.Clear;
      cdsDataDB_PORT.Clear;
    end;  { if }
end;

procedure TfmSvrConfig.cdsDataCalcFields(DataSet: TDataSet);
begin
  cdsDataIS_LOCKED.AsBoolean:= IntToAccessBanType(cdsDataACCESS_BAN_TYPE.AsInteger) <> abtNone;
end;

procedure TfmSvrConfig.cdsDataNewRecord(DataSet: TDataSet);
begin
  cdsDataACCESS_BAN_TYPE.AsInteger:= AccessBanTypeToInt(abtNone);
  cdsDataORDER_NO.AsInteger:= cdsData_MAX_ORDER_NO.AsVarInteger + 1;
  cdsDataIS_READ_ONLY.AsBoolean:= False;
  cdsDataIS_TEST_DB.AsBoolean:= False;
end;

procedure TfmSvrConfig.FormCreate(Sender: TObject);
begin
  Caption:= Format(SCaption, [Application.Title]);

  cbDBConnectionType.Items.Add('');
  cbDBConnectionType.Items.Add(SOraDirectConnectionType);
  cbDBConnectionType.Items.Add(SOraClientConnectionType);

  FillComboBoxWithAccessBanTypes(cbAccessBanType);

  GetServiceInfo;

  Application.BringToFront;
end;

procedure TfmSvrConfig.FormShow(Sender: TObject);
begin
  try
    cdsSettings.CreateDataSet;
    cdsData.CreateDataSet;

    ReadData(GetServerConfigLocation);

    edtServerCallsLogDir.Directory:= cdsSettingsSERVER_CALLS_LOG_DIRECTORY.AsString;

    ForceForegroundWindow(Handle);
  except
    Application.HandleException(Self);
    PostMessage(Handle, WM_CLOSE, 0, 0);
    Height:= 0;
    Width:= 0;
  end;  { try }
end;

procedure TfmSvrConfig.cdsSettingsBeforePost(DataSet: TDataSet);

  procedure CheckSamePorts(const APortField1, APortField2: TField);
  begin
    if (not APortField1.IsNull) and
       (not cdsSettingsHTTP_PORT.IsNull) and
       (APortField1.AsInteger = APortField2.AsInteger) then
      begin
        APortField2.FocusControl;
        raise Exception.CreateFmt(SPortsMustDiffer,
          [APortField2.DisplayLabel, APortField1.DisplayLabel]);
      end;
  end;

begin
  if cdsSettingsENABLE_DATASNAP.AsBoolean then
    CheckRequiredField(cdsSettingsDATASNAP_PORT)
  else
    cdsSettingsDATASNAP_PORT.Clear;

  if cdsSettingsENABLE_HTTP.AsBoolean then
    CheckRequiredField(cdsSettingsHTTP_PORT)
  else
    cdsSettingsHTTP_PORT.Clear;

  if cdsSettingsENABLE_VERSION_HTTP.AsBoolean then
    CheckRequiredField(cdsSettingsVERSION_HTTP_PORT)
  else
    cdsSettingsVERSION_HTTP_PORT.Clear;

  CheckSamePorts(cdsSettingsDATASNAP_PORT, cdsSettingsHTTP_PORT);
  CheckSamePorts(cdsSettingsDATASNAP_PORT, cdsSettingsVERSION_HTTP_PORT);
  CheckSamePorts(cdsSettingsHTTP_PORT, cdsSettingsVERSION_HTTP_PORT);
end;

procedure TfmSvrConfig.CheckOtherHomes;
var
  Homes: TStringList;
  r: TRegistry;
  Home: string;
  OtherDatasnapPort: string;
  OtherHttpPort: string;

  procedure CheckPortField(AField: TField; const AOtherHomeName, AOtherDatasnapPort: string);
  begin
    if (not AField.IsNull) and
       (AField.AsString = AOtherDatasnapPort) then
      raise Exception.CreateFmt(SPortAlreadyUsed, [AField.DisplayLabel, AOtherHomeName]);
  end;

begin
  Homes:= TStringList.Create;
  try
    r:= TRegistry.Create(KEY_READ);
    try
      r.RootKey:= HKEY_LOCAL_MACHINE;

      if r.OpenKey(SRegServerHomesKey, False) then
        try
          r.GetKeyNames(Homes);
        finally
          r.CloseKey;
        end;  { try }

      for Home in Homes do
        if (not SameText(Home, GetHome)) then
          begin
            if r.OpenKey(SRegServerHomesKey + '\' + Home, False) then
              try
                OtherDatasnapPort:= r.ReadString(SDatasnapPortParamName);
                OtherHttpPort:= r.ReadString(SHttpPortParamName);

                CheckPortField(cdsSettingsDATASNAP_PORT, Home, OtherDatasnapPort);
                CheckPortField(cdsSettingsHTTP_PORT, Home, OtherHttpPort);
              finally
                r.CloseKey;
              end;  { try }
          end;
    finally
      FreeAndNil(r);
    end;  { try }
  finally
    FreeAndNil(Homes);
  end;  { try }
end;

procedure TfmSvrConfig.edtDatasnapPortButtonClick(Sender: TObject);
begin
  CheckEditMode(cdsSettings);
  cdsSettingsDATASNAP_PORT.AsInteger:= DefaultDatasnapPort;
end;

procedure TfmSvrConfig.edtHttpPortButtonClick(Sender: TObject);
begin
  CheckEditMode(cdsSettings);
  cdsSettingsHTTP_PORT.AsInteger:= DefaultHttpPort;
end;

procedure TfmSvrConfig.edtVersionHttpPortButtonClick(Sender: TObject);
begin
  CheckEditMode(cdsSettings);
  cdsSettingsVERSION_HTTP_PORT.AsInteger:= DefaultVersionHttpPort;
end;

procedure TfmSvrConfig.SetAccessBanTypeAndLockMessage(
  AAccessBanType: TAccessBanType; ALockMessage: string);
var
  b: TBookmark;
begin
  cdsData.DisableControls;
  try
    b:= cdsData.Bookmark;
    try
      cdsData.First;
      while not cdsData.Eof do
        begin
          cdsData.Edit;
          try
            cdsDataACCESS_BAN_TYPE.AsInteger:= AccessBanTypeToInt(AAccessBanType);
            cdsDataLOCK_MESSAGE.AsString:= ALockMessage;
            cdsData.Post;
          except
            cdsData.Cancel;
            raise;
          end;  { try }

          cdsData.Next;
        end;  { while }
    finally
      cdsData.Bookmark:= b;
    end;  { try }
  finally
    cdsData.EnableControls;
  end;  { try }
end;

procedure TfmSvrConfig.SetServiceStatusText;
const
  ServiceStatusText: array[TServiceStatus] of string =
    (SNotInstalled, SStopped, SStarted, SStopping, SStarting);
begin
  lblServiceStatus.Caption:=
    Format('Service "%s" is %s', [FServiceDisplayName, ServiceStatusText[FServiceStatus]]);
  Application.ProcessMessages;
end;

procedure TfmSvrConfig.ReadData(const ALocation: string);

  procedure ReadSettings(AServerConfig: TServerConfig);
  var
    ShowAdvancedSettings: Boolean;
  begin
    ShowAdvancedSettings:= True;

    cdsSettings.AppendRecord([
      AServerConfig.DatasnapPort,
      Ord(AServerConfig.DatasnapPort <> 0),
      AServerConfig.HttpPort,
      Ord(AServerConfig.HttpPort <> 0),
      AServerConfig.VersionHttpPort,
      Ord(AServerConfig.VersionHttpPort <> 0),
      AServerConfig.ServerCallsLogDirectory,
      Ord(AServerConfig.ServerCallsAsyncLogging),
      Ord(AServerConfig.LockOtherComputersSessions),
      AServerConfig.ComputerSwitchTimeoutMinutes,
      Ord(ShowAdvancedSettings)
    ]);

    cdsSettings.MergeChangeLog;
  end;  { ReadSettings }

  procedure ReadConnections(AServerConfig: TServerConfig);
  var
    c: TServerConnectionConfig;
  begin
    for c in AServerConfig.Connections do
      cdsData.SafeAppend/
        procedure begin
          cdsDataDB_CONNECTION_NAME.AsString:= c.DBConnectionName;
          cdsDataDB_CONNECTION_TYPE.AsString:= c.DBConnectionType;
          cdsDataDB_HOST.AsString:= c.DBHost;
          cdsDataDB_PORT.AsString:= c.DBPort;
          cdsDataDB_SERVICE.AsString:= c.DBService;
          cdsDataDB_USER.AsString:= c.DBUser;
          cdsDataDB_PASSWORD.AsString:= c.DBPassword;
          cdsDataACCESS_BAN_TYPE.AsInteger:= c.AccessBanType;
          cdsDataLOCK_MESSAGE.AsString:= c.LockMessage;
          cdsDataORDER_NO.AsInteger:= c.OrderNo;
          cdsDataIS_READ_ONLY.AsBoolean:= c.IsReadOnlyDB;
          cdsDataIS_TEST_DB.AsBoolean:= c.IsTestDB;
          cdsDataCONTENT_STORAGE_CONTAINER_NAME.AsString:= c.ContentStorageContainerName;
        end;

    RecalcOrderNo;

    cdsData.First;
    cdsData.MergeChangeLog;
  end;

var
  ServerConfig: TServerConfig;
begin
  ServerConfig:= LoadServerConfig(ALocation);
  try
    ReadSettings(ServerConfig);
    ReadConnections(ServerConfig)
  finally
    FreeAndNil(ServerConfig);
  end;
end;

procedure TfmSvrConfig.RecalcOrderNo;
begin
  cdsData.TempDisableControls/
    cdsData.PreserveRecNo/
      procedure begin
        cdsData.Last;
        while not cdsData.Bof do
          begin
            cdsData.SafeEdit/
              procedure begin
                cdsDataORDER_NO.AsInteger:= cdsData.RecNo;
              end;
            cdsData.Prior;
          end;
      end;
end;

procedure TfmSvrConfig.WriteData(const ALocation: string);
var
  ServerConfig: TServerConfig;
begin
  RecalcOrderNo;

  ServerConfig:= TServerConfig.Create;
  try
    ServerConfig.DatasnapPort:= cdsSettingsDATASNAP_PORT.AsInteger;
    ServerConfig.HttpPort:= cdsSettingsHTTP_PORT.AsInteger;
    ServerConfig.VersionHttpPort:= cdsSettingsVERSION_HTTP_PORT.AsInteger;
    ServerConfig.ServerCallsLogDirectory:= cdsSettingsSERVER_CALLS_LOG_DIRECTORY.AsString;
    ServerConfig.ServerCallsAsyncLogging:= cdsSettingsSERVER_CALLS_ASYNC_LOGGING.AsBoolean;
    ServerConfig.LockOtherComputersSessions:= cdsSettingsLOCK_OTHER_COMPUTER_SESSIONS.AsBoolean;
    ServerConfig.ComputerSwitchTimeoutMinutes:= cdsSettingsCOMPUTER_SWITCH_TIMEOUT_MINUTES.AsInteger;

    cdsData.TempDisableControls/
      cdsData.PreserveBookmark/
        cdsData.ForEach/
          procedure begin
            ServerConfig.AddConnection(
              TServerConnectionConfig.Create(
                cdsDataDB_CONNECTION_NAME.AsString,
                cdsDataDB_CONNECTION_TYPE.AsString,
                cdsDataDB_HOST.AsString,
                cdsDataDB_PORT.AsString,
                cdsDataDB_SERVICE.AsString,
                cdsDataDB_USER.AsString,
                cdsDataDB_PASSWORD.AsString,
                cdsDataACCESS_BAN_TYPE.AsInteger,
                cdsDataLOCK_MESSAGE.AsString,
                cdsDataORDER_NO.AsInteger,
                cdsDataIS_READ_ONLY.AsBoolean,
                cdsDataIS_TEST_DB.AsBoolean,
                cdsDataCONTENT_STORAGE_CONTAINER_NAME.AsString
              )
            );
          end;

    SaveServerConfig(ServerConfig, ALocation);
  finally
    ServerConfig.Free;
  end;

  cdsSettings.MergeChangeLog;
  cdsData.MergeChangeLog;
end;

end.
