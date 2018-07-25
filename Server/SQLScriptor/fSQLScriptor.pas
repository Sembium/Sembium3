unit fSQLScriptor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, DB, AbmesFields, DBClient,
  AbmesClientDataSet, JvBaseDlg, JvBrowseFolder, JvSelectDirectory,
  DBGridEhGrouping, GridsEh, DBGridEh, AbmesDBGrid, JvDataSource, Buttons,
  ExtCtrls, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh;

// use "deflate" method for zip compression

type
  TUpdateProcessStatus = (
    upsNotStarted,
    upsExtracting,
    upsStarted,
    upsCompleted
  );

type
  TfmSQLScriptor = class(TForm)
    cdsDatabases: TAbmesClientDataSet;
    cdsDatabasesDB_CONNECTION_NAME: TAbmesWideStringField;
    cdsDatabasesIS_LOCKED: TAbmesFloatField;
    cdsDatabasesVERSION_NO: TAbmesFloatField;
    dsDatabases: TDataSource;
    cdsDatabasesCONNECT_ERROR_TEXT: TAbmesWideStringField;
    cdsDatabasesIS_CHOSEN: TAbmesFloatField;
    cdsDatabases_VERSION_STATUS: TAbmesFloatField;
    cdsDatabasesUPDATE_STATUS: TAbmesFloatField;
    cdsDatabases_FULL_STATUS: TAbmesFloatField;
    pnlTop: TPanel;
    pnlClient: TPanel;
    pnlBottom: TPanel;
    lblScriptFile: TLabel;
    lblScriptVersion: TLabel;
    lblLogFolder: TLabel;
    edtScriptFile: TJvComboEdit;
    edtScriptVersion: TEdit;
    edtLogFolder: TJvComboEdit;
    dlgScriptFile: TOpenDialog;
    dlgLogFolder: TJvBrowseForFolderDialog;
    btnUpdateDatabases: TBitBtn;
    btnClose: TBitBtn;
    grdDatabases: TAbmesDBGrid;
    lblUpdateProcessStatus: TLabel;
    cdsDatabasesORDER_NO: TAbmesFloatField;
    procedure edtScriptFileButtonClick(Sender: TObject);
    procedure edtLogFolderButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdDatabasesKeyPress(Sender: TObject; var Key: Char);
    procedure grdDatabasesCellClick(Column: TColumnEh);
    procedure cdsDatabasesCalcFields(DataSet: TDataSet);
    procedure grdDatabasesGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnUpdateDatabasesClick(Sender: TObject);
    procedure cdsDatabases_FULL_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure grdDatabasesDblClick(Sender: TObject);
    procedure cdsDatabasesNewRecord(DataSet: TDataSet);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    FScriptFileName: string;
    FScriptVersion: Integer;
    FLogFolderName: string;
    FLogDateTime: TDateTime;
    FUpdateProcessStatus: TUpdateProcessStatus;
    FPersistedScriptFileName: string;
    FAutoUpdated: Boolean;
    function GetScriptVersion(const AScriptFileName: string): Integer;
    procedure LoadLogFolderName;
    procedure SaveLogFolderName;
    procedure LoadDatabases;
    procedure ReadConnections;
    procedure ReadDbVersions;
    function GetDbVersion(const ADBName: string): Integer;
    procedure UnchooseAll;
    procedure SetScriptVersion(const Value: Integer);
    procedure SetScriptFileName(const Value: string);
    function CanToggleIsChosen: Boolean;
    procedure ToggleIsChosen;
    procedure SetLogFolderName(const Value: string);
    function GetLogDateTime: TDateTime;
    procedure SetUpdateProcessStatus(const Value: TUpdateProcessStatus);
    function FileIsArchive(const AFileName: string): Boolean;
    procedure LoadScriptFromArchive(const AScriptFileName: string; ADest: TStringList);
    procedure PersistScript;
    procedure UpdateDatabases;
    procedure AutoUpdateDatabases;

    property ScriptFileName: string read FScriptFileName write SetScriptFileName;
    property ScriptVersion: Integer read FScriptVersion write SetScriptVersion;
    property LogFolderName: string read FLogFolderName write SetLogFolderName;
    property LogDateTime: TDateTime read GetLogDateTime;
    property UpdateProcessStatus: TUpdateProcessStatus read FUpdateProcessStatus write SetUpdateProcessStatus;
    property PersistedScriptFileName: string read FPersistedScriptFileName;
  protected
    procedure UpdateActions; override;
  public
    { Public declarations }
  end;

implementation

uses
  UITypes,
  StrUtils,
  uObjParams,
  Registry,
  uUtils,
  Generics.Collections,
  uEnumeratorUtils,
  IOUtils,
  ShellAPI,
  uSQLScriptor,
  uSQLScriptor.Variables,
  uSQLScriptor.Logger,
  uSQLScriptor.FilePosition,
  uSQLScriptor.Parser,
  uSQLScriptor.StatementExecutor,
  Zip,
  System.Types, 
  JclStrings, 
  Math, 
  uSvrUtils;

{$R *.dfm}

const
  SLogFolderKeyName = 'SqlScriptorLogFolderName';

const
  UpdateProcessStatusNames: array[TUpdateProcessStatus] of string = (
    '',                // upsNotStarted,
    'Extracting...',   // upsExtrating
    'Updating...',     // upsStarted,
    'Update finished.' // upsCompleted
  );

type
  TVersionStatus = (
    vsUnknownScriptVersion,
    vsUnknownDBVersion,
    vsDBIsOlder,
    vsDBIsCurrent,
    vsDBIsNewer
  );

type
  TDBUpdateStatus = (
    dusNotStarted,
    dusStarted,
    dusCompletedOK,
    dusCompletedWithErrors
  );

type
  TFullStatus = (
    fsCantConnect,
    fsUnknownScriptVersion,
    fsUnknownDBVersion,
    fsDBIsOlder,
    fsDBIsCurrent,
    fsDBIsNewer,
    fsUpdatePending,
    fsUpdateStarted,
    fsUpdateCompletedOK,
    fsUpdateCompletedWithErrors
  );

resourcestring
  SCantConnect               = 'Can''t connect';
  SUnknownScriptVersion      = 'Unknown script verison';
  SUnknownDBVersion          = 'Unknown db verison';
  SDBIsOlder                 = 'Out of date';
  SDBIsCurrent               = 'Up to date';
  SDBIsNewer                 = 'Newer than script';
  SUpdatePending             = 'Update pending';
  SUpdateStarted             = 'Updating';
  SUpdateCompletedOK         = 'Updated OK';
  SUpdateCompletedWithErrors = 'Updated with ERRORS';

  SConfirmUpdate             = 'Selected databases will be updated.';

const
  FullStatusTexts: array[TFullStatus] of string = (
    SCantConnect,
    SUnknownScriptVersion,
    SUnknownDBVersion,
    SDBIsOlder,
    SDBIsCurrent,
    SDBIsNewer,
    SUpdatePending,
    SUpdateStarted,
    SUpdateCompletedOK,
    SUpdateCompletedWithErrors
  );

function VersionStatusToFullStatus(const AVersionStatus: TVersionStatus): TFullStatus;
begin
  case AVersionStatus of
    vsUnknownScriptVersion:
      Result:= fsUnknownScriptVersion;
    vsUnknownDBVersion:
      Result:= fsUnknownDBVersion;
    vsDBIsOlder:
      Result:= fsDBIsOlder;
    vsDBIsCurrent:
      Result:= fsDBIsCurrent;
    vsDBIsNewer:
      Result:= fsDBIsNewer;
    else
      raise Exception.Create('Can''t convert VersionStatus to FullStatus');
  end;
end;

function DBUpdateStatusToFullStatus(const ADBUpdateStatus: TDBUpdateStatus): TFullStatus;
begin
  case ADBUpdateStatus of
    dusStarted:
      Result:= fsUpdateStarted;
    dusCompletedOK:
      Result:= fsUpdateCompletedOK;
    dusCompletedWithErrors:
      Result:= fsUpdateCompletedWithErrors;
    else
      raise Exception.Create('Can''t convert DBUpdateStatus to FullStatus');
  end;
end;

function IntToFullStatus(const AValue: Integer): TFullStatus;
begin
  if (AValue in [Ord(Low(TFullStatus))..Ord(High(TFullStatus))]) then
    Result:= TFullStatus(AValue)
  else
    raise Exception.CreateFmt('Invalid FullStatus code: %d', [AValue]);
end;

function FullStatusToInt(const AValue: TFullStatus): Integer;
begin
  Result:= Ord(AValue);
end;

function IntToVersionStatus(const AValue: Integer): TVersionStatus;
begin
  if (AValue in [Ord(Low(TVersionStatus))..Ord(High(TVersionStatus))]) then
    Result:= TVersionStatus(AValue)
  else
    raise Exception.CreateFmt('Invalid VersionStatus code: %d', [AValue]);
end;

function VersionStatusToInt(const AValue: TVersionStatus): Integer;
begin
  Result:= Ord(AValue);
end;

function IntToDBUpdateStatus(const AValue: Integer): TDBUpdateStatus;
begin
  if (AValue in [Ord(Low(TDBUpdateStatus))..Ord(High(TDBUpdateStatus))]) then
    Result:= TDBUpdateStatus(AValue)
  else
    raise Exception.CreateFmt('Invalid DBUpdateStatus code: %d', [AValue]);
end;

function DBUpdateStatusToInt(const AValue: TDBUpdateStatus): Integer;
begin
  Result:= Ord(AValue);
end;

function GetDBLogFolder(const ADBName, ALogFolderName: string): string;
begin
  Result:= TPath.Combine(ALogFolderName, ADBName);
end;

function GetLogFileName(const AScriptFileName, ADBName, ALogFolderName: string; const ADateTime: TDateTime): string;
begin
  Result:=
    TPath.Combine(
      GetDBLogFolder(ADBName, ALogFolderName),
      Format(
        '%s_%s_%s.log',
        [ TPath.GetFileNameWithoutExtension(AScriptFileName),
          ADBName,
          FormatDateTime('yyyy-mm-dd_hh-nn', ADateTime)]));
end;

type
  TStatusFieldHelper = class helper (TFieldHelper) for TField
  private
    function GetAsDBUpdateStatus: TDBUpdateStatus;
    function GetAsVersionStatus: TVersionStatus;
    function GetAsFullStatus: TFullStatus;
    procedure SetAsDBUpdateStatus(const Value: TDBUpdateStatus);
    procedure SetAsVersionStatus(const Value: TVersionStatus);
    procedure SetAsFullStatus(const Value: TFullStatus);
  public
    property AsDBUpdateStatus: TDBUpdateStatus read GetAsDBUpdateStatus write SetAsDBUpdateStatus;
    property AsVersionStatus: TVersionStatus read GetAsVersionStatus write SetAsVersionStatus;
    property AsFullStatus: TFullStatus read GetAsFullStatus write SetAsFullStatus;
  end;

{ TStatusFieldHelper }

function TStatusFieldHelper.GetAsDBUpdateStatus: TDBUpdateStatus;
begin
  Result:= IntToDBUpdateStatus(AsInteger);
end;

function TStatusFieldHelper.GetAsFullStatus: TFullStatus;
begin
  Result:= IntToFullStatus(AsInteger);
end;

function TStatusFieldHelper.GetAsVersionStatus: TVersionStatus;
begin
  Result:= IntToVersionStatus(AsInteger);
end;

procedure TStatusFieldHelper.SetAsDBUpdateStatus(const Value: TDBUpdateStatus);
begin
  AsInteger:= DBUpdateStatusToInt(Value);
end;

procedure TStatusFieldHelper.SetAsFullStatus(const Value: TFullStatus);
begin
  AsInteger:= FullStatusToInt(Value);
end;

procedure TStatusFieldHelper.SetAsVersionStatus(const Value: TVersionStatus);
begin
  AsInteger:= VersionStatusToInt(Value);
end;

type
  TDBGridColumnsEhHelper = class helper (TCollectionHelper) for TDBGridColumnsEh
  public
    function GetEnumerator: TEnumerator<TColumnEh>;
  end;

{ TDBGridColumnsEhHelper }

function TDBGridColumnsEhHelper.GetEnumerator: TEnumerator<TColumnEh>;
begin
  Result:= TProxyEnumerator<TColumnEh>.Create(GetEnumeratorObject);
end;

procedure InitializeAbmesDBGrid(AGrid: TAbmesDBGrid;
  ATitleButtons: Boolean = True);
begin
  AGrid.ShowHint:= True;

  AGrid.OptionsEh:=
    AGrid.OptionsEh +
    [dghExtendVertLines] -
    [dghColumnResize, dghColumnMove];

  AGrid.Columns.TempUpdate/
    procedure
    var
      c: TColumnEh;
    begin
      for c in AGrid.Columns do
        begin
          c.ToolTips:= True;
          c.Footer.ToolTips:= True;

          if Assigned(c.Field) and (c.Field.FieldKind in [fkData, fkInternalCalc]) then
            c.Title.TitleButton:= ATitleButtons;
        end;
    end;
end;

type
  TSQLScriptorWorkThread = class(TThread)
  strict private
    FOwnerForm: TfmSQLScriptor;
    function GetScriptFileName: string;
    function GetLogFolderName: string;
    function GetLogDateTime: TDateTime;
    function GetNextDBName: string;
    function DoExecScript(const AScriptFileName, ADBName, ALogFileName: string): Boolean;
    procedure DoDBCompleted(const ADBName: string; const AHasErrors: Boolean);
    procedure DoAllCompleted;
  protected
    procedure Execute; override;
  public
    constructor Create(const AOwnerForm: TfmSQLScriptor);
  end;

{ TSQLScriptorWorkThread }

constructor TSQLScriptorWorkThread.Create(const AOwnerForm: TfmSQLScriptor);
begin
  inherited Create(False);
  FOwnerForm:= AOwnerForm;
  FreeOnTerminate:= True;
end;

procedure TSQLScriptorWorkThread.DoAllCompleted;
begin
  Synchronize/
    procedure begin
      FOwnerForm.UpdateProcessStatus:= upsCompleted;
    end;
end;

procedure TSQLScriptorWorkThread.DoDBCompleted(const ADBName: string; const AHasErrors: Boolean);
var
  dus: TDBUpdateStatus;
begin
  if AHasErrors then
    dus:= dusCompletedWithErrors
  else
    dus:= dusCompletedOK;

  Synchronize/
    FOwnerForm.cdsDatabases.TempDisableControls/
      FOwnerForm.cdsDatabases.PreserveBookmark/
        FOwnerForm.cdsDatabases.ForEach/
          procedure begin
            if (FOwnerForm.cdsDatabasesDB_CONNECTION_NAME.AsString = ADBName) then
              FOwnerForm.cdsDatabases.SafeEdit/
                procedure begin
                  FOwnerForm.cdsDatabasesUPDATE_STATUS.AsDBUpdateStatus:= dus;
                end;
          end;
end;

function TSQLScriptorWorkThread.DoExecScript(const AScriptFileName, ADBName, ALogFileName: string): Boolean;
var
  SQLScriptor: ISQLScriptor;
  Logger: ILogger;
begin
  Logger:= TFileLogger.Create(ALogFileName);

  SQLScriptor:= TSqlScriptor.Create(TDBXSqlStatementExecutorFactory.Create(ADBName, Logger), Logger);
  SQLScriptor.ExecScript(AScriptFileName);

  Result:= Logger.HasErrors;
end;

procedure TSQLScriptorWorkThread.Execute;
var
  ScriptFileName: string;
  DBName: string;
  HasErrors: Boolean;
  LogFolderName: string;
  LogDateTime: TDateTime;
begin
  try
    ScriptFileName:= GetScriptFileName;
    LogFolderName:= GetLogFolderName;
    LogDateTime:= GetLogDateTime;

    while not Terminated do
      begin
        HasErrors:= True;
        DBName:= GetNextDBName;
        if (DBName = '') then
          Break
        else
          try
            HasErrors:= DoExecScript(ScriptFileName, DBName, GetLogFileName(ScriptFileName, DBName, LogFolderName, LogDateTime));
          finally
            DoDBCompleted(DBName, HasErrors);
          end;
      end;
  finally
    DoAllCompleted;
  end;
end;

function TSQLScriptorWorkThread.GetLogDateTime: TDateTime;
var
  Res: TDateTime;
begin
  Res:= 0;

  Synchronize/
    procedure begin
      Res:= FOwnerForm.LogDateTime;
    end;

  Result:= Res;
end;

function TSQLScriptorWorkThread.GetLogFolderName: string;
var
  Res: string;
begin
  Res:= '';

  Synchronize/
    procedure begin
      Res:= FOwnerForm.LogFolderName;
    end;

  Result:= Res;
end;

function TSQLScriptorWorkThread.GetNextDBName: string;
var
  Res: string;
begin
  Res:= '';

  Synchronize/
    FOwnerForm.cdsDatabases.TempDisableControls/
      FOwnerForm.cdsDatabases.PreserveBookmark/
        FOwnerForm.cdsDatabases.ForEach/
          procedure begin
            if (FOwnerForm.cdsDatabases_FULL_STATUS.AsFullStatus = fsUpdatePending) then
              begin
                Res:= FOwnerForm.cdsDatabasesDB_CONNECTION_NAME.AsString;

                FOwnerForm.cdsDatabases.SafeEdit/
                  procedure begin
                    FOwnerForm.cdsDatabasesUPDATE_STATUS.AsDBUpdateStatus:= dusStarted;
                  end;

                DoBreak;
              end;
          end;

  Result:= Res;
end;

function TSQLScriptorWorkThread.GetScriptFileName: string;
var
  Res: string;
begin
  Res:= '';

  Synchronize/
    procedure begin
      Res:= FOwnerForm.PersistedScriptFileName;
    end;

  Result:= Res;
end;

{ TfmSQLScriptor }

procedure TfmSQLScriptor.AutoUpdateDatabases;
begin
  cdsDatabases.TempDisableControls/
    cdsDatabases.PreserveRecNo/
      cdsDatabases.ForEach/
        cdsDatabases.SafeEdit/
          procedure begin
            cdsDatabasesIS_CHOSEN.AsBoolean:= CanToggleIsChosen;
          end;

  UpdateDatabases;
end;

procedure TfmSQLScriptor.btnCloseClick(Sender: TObject);

  function ShiftIsPressed: Boolean;
  begin
    Result:= GetKeyState(VK_SHIFT) and (1 shl 15) <> 0;
  end;
var
  CommandLineParams: string;

begin
  if ShiftIsPressed then
    begin
      CommandLineParams:= Format('/config /home:%s', [GetHome]);
      ShellExecute(0, nil, PChar(ParamStr(0)), PChar(CommandLineParams), nil, SW_SHOWNORMAL);
    end;

  Close;
end;

procedure TfmSQLScriptor.btnUpdateDatabasesClick(Sender: TObject);
begin
  Assert(UpdateProcessStatus = upsNotStarted);

  if (MessageDlg(SConfirmUpdate, mtConfirmation, mbOKCancel, 0) <> mrOk) then
    Exit;

  UpdateDatabases;
end;

procedure TfmSQLScriptor.UpdateDatabases;
begin
  UpdateProcessStatus:= upsStarted;
  try
    PersistScript;
    TSQLScriptorWorkThread.Create(Self);
  except
    UpdateProcessStatus:= upsNotStarted;
    raise;
  end;
end;

function TfmSQLScriptor.CanToggleIsChosen: Boolean;
begin
  Result:=
    not cdsDatabases.IsEmpty and
    cdsDatabasesIS_LOCKED.AsBoolean and
    cdsDatabasesCONNECT_ERROR_TEXT.IsNull and
    (cdsDatabases_VERSION_STATUS.AsVersionStatus in [vsDBIsOlder, vsDBIsCurrent]) and
    (cdsDatabasesUPDATE_STATUS.AsDBUpdateStatus = dusNotStarted);
end;

procedure TfmSQLScriptor.cdsDatabasesCalcFields(DataSet: TDataSet);

  function GetVersionStatus(const ADBVersion: Integer): TVersionStatus;
  begin
    Result:= vsUnknownScriptVersion;  // za da ne reve warning

    if (FScriptVersion = 0) then
      Exit(vsUnknownScriptVersion);

    if (ADBVersion = 0) then
      Exit(vsUnknownDBVersion);

    if (ADBVersion < FScriptVersion) then
      Exit(vsDBIsOlder);

    if (ADBVersion = FScriptVersion) then
      Exit(vsDBIsCurrent);

    if (ADBVersion > FScriptVersion) then
      Exit(vsDBIsNewer);
  end;

  function GetFullStatus(
    const ACanConnect: Boolean;
    const AVersionStatus: TVersionStatus;
    const AIsChosen: Boolean;
    const ADBUpdateStatus: TDBUpdateStatus): TFullStatus;
  begin
    if not ACanConnect then
      Exit(fsCantConnect);

    if (ADBUpdateStatus > dusNotStarted) then
      Exit(DBUpdateStatusToFullStatus(ADBUpdateStatus));

    if AIsChosen then
      Exit(fsUpdatePending);

    Result:= VersionStatusToFullStatus(AVersionStatus);
  end;

begin
  cdsDatabases_VERSION_STATUS.AsVersionStatus:=
    GetVersionStatus(cdsDatabasesVERSION_NO.AsInteger);

  cdsDatabases_FULL_STATUS.AsFullStatus:=
    GetFullStatus(
      cdsDatabasesCONNECT_ERROR_TEXT.IsNull,
      cdsDatabases_VERSION_STATUS.AsVersionStatus,
      cdsDatabasesIS_CHOSEN.AsBoolean,
      cdsDatabasesUPDATE_STATUS.AsDBUpdateStatus);
end;

procedure TfmSQLScriptor.cdsDatabasesNewRecord(DataSet: TDataSet);
begin
  cdsDatabasesIS_CHOSEN.AsBoolean:= False;
end;

procedure TfmSQLScriptor.cdsDatabases_FULL_STATUSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.IsNull then
    Text:= ''
  else
    Text:=
      ConcatWords(
        FullStatusTexts[Sender.AsFullStatus],
        cdsDatabasesCONNECT_ERROR_TEXT.AsString,
        True,
        ': ');
end;

procedure TfmSQLScriptor.edtLogFolderButtonClick(Sender: TObject);
begin
  if (LogFolderName <> '') then
    dlgLogFolder.Directory:= LogFolderName;

  if dlgLogFolder.Execute then
    LogFolderName:= dlgLogFolder.Directory;
end;

procedure TfmSQLScriptor.edtScriptFileButtonClick(Sender: TObject);
begin
  if (ScriptFileName <> '') then
    dlgScriptFile.FileName:= ScriptFileName;

  if dlgScriptFile.Execute then
    ScriptFileName:= dlgScriptFile.FileName;
end;

function TfmSQLScriptor.FileIsArchive(const AFileName: string): Boolean;
const
  ArchiveExtensions: array[1..1] of string = ('zip');
var
  FileExtension: string;
  ext: string;
begin
  FileExtension:= ExtractFileExt(AFileName);
  for ext in ArchiveExtensions do
    if SameText(FileExtension, '.' + ext) then
      Exit(True);
  Result:= False;
end;

procedure TfmSQLScriptor.FormActivate(Sender: TObject);
begin
  if not FAutoUpdated and
     btnUpdateDatabases.Enabled and
     FindCmdLineSwitch('AutoUpdate') then
    begin
      FAutoUpdated:= True;
      AutoUpdateDatabases;
    end;
end;

procedure TfmSQLScriptor.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= (UpdateProcessStatus <> upsStarted);
end;

procedure TfmSQLScriptor.FormCreate(Sender: TObject);
begin
  Caption:= Caption + ' ' + GetHome;
  Application.Title:= Caption;
end;

procedure TfmSQLScriptor.FormShow(Sender: TObject);
var
  i: Integer;
begin
  LoadLogFolderName;
  LoadDatabases;
  InitializeAbmesDBGrid(grdDatabases, False);

  for i:= 1 to ParamCount do
    if FileExists(ParamStr(i)) then
      ScriptFileName:= ParamStr(i);

  ForceForegroundWindow(Handle);
end;

function TfmSQLScriptor.GetDbVersion(const ADBName: string): Integer;
var
  ex: ISqlStatementExecutor;
  VariablesSet: IVariablesSet;
begin
  VariablesSet:= TVariablesSet.Create(TVariables.Create);

  ex:= TDBXSqlStatementExecutor.Create(ADBName, 0, nil);

  ex.ExecStatement(
    'select Sign(Count(*)) as TABLE_EXISTS from USER_TABLES ut where (ut.TABLE_NAME = ''INTERNAL_VALUES'')',
    VariablesSet,
    False,
    TImmutableStack<IFilePosition>.Create);

  if (VarToInt(VariablesSet['TABLE_EXISTS']) = 0) then
    Exit(99999);

  ex.ExecStatement(
    'select iv.DB_VERSION from INTERNAL_VALUES iv where (iv.CODE = 1)',
    VariablesSet,
    False,
    TImmutableStack<IFilePosition>.Create);

  Result:= VarToInt(VariablesSet['DB_VERSION']);
end;

function TfmSQLScriptor.GetLogDateTime: TDateTime;
begin
  if (FLogDateTime = 0) then
    FLogDateTime:= Now;

  Result:= FLogDateTime;
end;

function TfmSQLScriptor.GetScriptVersion(
  const AScriptFileName: string): Integer;
var
  sl: TStringList;
  i: Integer;
  LineType: TLineType;
  LineCommandParams: TStringArray;
begin
  Result:= 0;

  sl:= TStringList.Create;
  try
    if FileIsArchive(AScriptFileName) then
      LoadScriptFromArchive(AScriptFileName, sl)
    else
      sl.LoadFromFile(AScriptFileName);

    for i:= sl.Count-1 downto 0 do
      begin
        ParseLine(sl[i], LineType, LineCommandParams);
        if (LineType = ltLabel) and (Length(LineCommandParams) > 0) then
          begin
            Result:= StrToIntDef(LineCommandParams[0], 0);
            if (Result <> 0) then
              Break;
          end;
      end;
  finally
    FreeAndNil(sl);
  end;

  if (Result = 0) then
    Result:= 999999;
end;

procedure TfmSQLScriptor.grdDatabasesCellClick(Column: TColumnEh);
begin
  if (Column.Field = cdsDatabasesIS_CHOSEN) then
    ToggleIsChosen;
end;

procedure TfmSQLScriptor.grdDatabasesDblClick(Sender: TObject);
var
  ExecPath: string;
begin
  if (cdsDatabasesUPDATE_STATUS.AsDBUpdateStatus in [dusCompletedOK, dusCompletedWithErrors]) then
    ExecPath:= GetLogFileName(PersistedScriptFileName, cdsDatabasesDB_CONNECTION_NAME.AsString, LogFolderName, LogDateTime)
  else
    ExecPath:= GetDBLogFolder(cdsDatabasesDB_CONNECTION_NAME.AsString, LogFolderName);

  ShellExecute(0, nil, PChar(ExecPath), nil, nil, SW_SHOWNORMAL);
end;

procedure TfmSQLScriptor.grdDatabasesGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Column.Field = cdsDatabasesIS_CHOSEN) and not CanToggleIsChosen then
    Background:= clSilver;
end;

procedure TfmSQLScriptor.grdDatabasesKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #32) then
    ToggleIsChosen;
end;

procedure TfmSQLScriptor.LoadDatabases;
begin
  cdsDatabases.Close;
  cdsDatabases.CreateDataSet;
  try
    ReadConnections;
    ReadDbVersions;
    cdsDatabases.MergeChangeLog;
  except
    cdsDatabases.Close;
    raise;
  end;
end;

procedure TfmSQLScriptor.LoadLogFolderName;
var
  r: TRegistry;
begin
  if not FindCmdLineSwitch('L', FLogFolderName, True, [clstValueAppended]) then
    begin
      r:= TRegistry.Create(KEY_READ);
      try
        r.RootKey:= HKEY_CURRENT_USER;
        if r.OpenKey(GetBaseConfigKey, False) then
          try
            FLogFolderName:= r.ReadString(SLogFolderKeyName);
          finally
            r.CloseKey;
          end;  { try }
      finally
        FreeAndNil(r);
      end;  { try }
    end;
end;

function IsRootScriptFileName(const AFileName: string): Boolean; overload;
begin
  Result:=
    (AFileName <> '') and
    not StartsText('_', ExtractFileName(AFileName));
end;

procedure TfmSQLScriptor.LoadScriptFromArchive(const AScriptFileName: string;
  ADest: TStringList);

  function GetCompressedScriptFileName(const AFileNames: TArray<string>): string;
  const
    PathSeparator = '/';
  var
    fn: string;
    FileNames: TStringList;
    LastPathSeparatorPos: Integer;
  begin
    FileNames:= TStringList.Create;
    try
      for fn in AFileNames do
        FileNames.Add(FormatFloat('000', StrCharCount(fn, PathSeparator)) + PathSeparator +  fn);
      FileNames.Sort;

      for fn in FileNames do
        begin
          LastPathSeparatorPos:= CharLastPos(fn, PathSeparator, 1);
          if IsRootScriptFileName(Copy(fn, LastPathSeparatorPos + 1, Length(fn))) then
            Exit(Copy(fn, Pos(PathSeparator, fn) + 1, Length(fn)));
        end;
    finally
      FreeAndNil(FileNames);
    end;

    Result:= '';
  end;

var
  ZipFile: TZipFile;
  ScriptBytes: TBytes;
  ScriptStream: TBytesStream;
begin
  ZipFile:= TZipFile.Create;
  try
    ZipFile.Open(AScriptFileName, zmRead);
    try
      ZipFile.Read(GetCompressedScriptFileName(ZipFile.FileNames), ScriptBytes);
    finally
      ZipFile.Close;
    end;
  finally
    FreeAndNil(ZipFile);
  end;

  ScriptStream:= TBytesStream.Create(ScriptBytes);
  try
    ADest.LoadFromStream(ScriptStream);
  finally
    FreeAndNil(ScriptStream);
  end;
end;

procedure TfmSQLScriptor.PersistScript;

  function GetScriptTempPath: string;
  const
    SScriptTempDirName = 'SqlScriptTemp';
  begin
    Result:= MakeFileName(TempPath, SScriptTempDirName);
  end;

var
  ZipFile: TZipFile;
  SqlFileNames: TStringDynArray;
  SaveUpdateProcessStatus: TUpdateProcessStatus;
  ScriptTempPath: string;
begin
  if not FileIsArchive(ScriptFileName) then
    FPersistedScriptFileName:= ScriptFileName
  else
    begin
      SaveUpdateProcessStatus:= UpdateProcessStatus;
      UpdateProcessStatus:= upsExtracting;
      try
        UpdateActions;
        Application.ProcessMessages;

        ScriptTempPath:= GetScriptTempPath;

        if TDirectory.Exists(ScriptTempPath) then
          TDirectory.Delete(ScriptTempPath, True);

        ZipFile:= TZipFile.Create;
        try
          ZipFile.Open(ScriptFileName, zmRead);
          try
            ZipFile.ExtractAll(ScriptTempPath);
          finally
            ZipFile.Close;
          end;
        finally
          FreeAndNil(ZipFile);
        end;

        SqlFileNames:= TDirectory.GetFiles(ScriptTempPath, '*.sql', TSearchOption.soAllDirectories);

        FPersistedScriptFileName:=
          ArrayUtils.All<string>(SqlFileNames)
            .Filter(IsRootScriptFileName)
            .FirstOrDefault;
      finally
        UpdateProcessStatus:= SaveUpdateProcessStatus;
      end;
    end;
end;

procedure TfmSQLScriptor.SaveLogFolderName;
var
  r: TRegistry;
begin
  r:= TRegistry.Create(KEY_WRITE);
  try
    r.RootKey:= HKEY_CURRENT_USER;
    if r.OpenKey(GetBaseConfigKey, True) then
      try
        r.WriteString(SLogFolderKeyName, FLogFolderName);
      finally
        r.CloseKey;
      end;  { try }
  finally
    FreeAndNil(r);
  end;  { try }
end;

procedure TfmSQLScriptor.ReadConnections;
begin
  cdsDatabases.TempDisableControls/
    procedure
    var
      r: TRegistry;
      KeyList: TStringList;
      s: string;
    begin
      r:= TRegistry.Create(KEY_READ);
      try
        r.RootKey:= HKEY_LOCAL_MACHINE;

        KeyList:= TStringList.Create;
        try
          if r.OpenKey(GetDBDataModulesConfigKey, False) then
            try
              r.GetKeyNames(KeyList);
            finally
              r.CloseKey;
            end;

          for s in KeyList do
            if r.OpenKey(GetDBDataModulesConfigKey + '\' + s, False) then
              try
                cdsDatabases.SafeAppend/
                  procedure begin
                    cdsDatabasesDB_CONNECTION_NAME.AsString:= s;
                    cdsDatabasesIS_LOCKED.AsBoolean:=
                      (IntToAccessBanType(StrToIntDef(r.ReadString(SAccessBanTypeParamName), AccessBanTypeToInt(abtNone))) <> abtNone);
                    cdsDatabasesORDER_NO.AsInteger:= StrToIntDef(r.ReadString(SOrderNoParamName), 0);
                  end;
              finally
                r.CloseKey;
              end;
        finally
          FreeAndNil(KeyList);
        end;  { try }
      finally
        FreeAndNil(r);
      end;

      cdsDatabases.First;
    end;
end;

procedure TfmSQLScriptor.ReadDbVersions;
begin
  cdsDatabases.TempDisableControls/
    cdsDatabases.PreserveBookmark/
      cdsDatabases.ForEach/
        cdsDatabases.SafeEdit/
          procedure begin
            try
              cdsDatabasesVERSION_NO.AsInteger:= GetDbVersion(cdsDatabasesDB_CONNECTION_NAME.AsString);
              cdsDatabasesCONNECT_ERROR_TEXT.Clear;
            except
              on E: Exception do
                cdsDatabasesCONNECT_ERROR_TEXT.AsString:= Trim(E.Message);
            end;
          end;
end;

procedure TfmSQLScriptor.UnchooseAll;
begin
  cdsDatabases.TempDisableControls/
    cdsDatabases.PreserveBookmark/
      cdsDatabases.ForEach/
        cdsDatabases.SafeEdit/
          procedure begin
            cdsDatabasesIS_CHOSEN.AsBoolean:= False;
          end;
end;

procedure TfmSQLScriptor.SetLogFolderName(const Value: string);
begin
  FLogFolderName := Value;
  SaveLogFolderName;
end;

procedure TfmSQLScriptor.SetScriptFileName(const Value: string);
begin
  FScriptFileName:= Value;

  ScriptVersion:= 0;
  ScriptVersion:= GetScriptVersion(FScriptFileName);
  FPersistedScriptFileName:= '';
end;

procedure TfmSQLScriptor.SetScriptVersion(const Value: Integer);
begin
  FScriptVersion:= Value;
  UnchooseAll;
end;

procedure TfmSQLScriptor.SetUpdateProcessStatus(
  const Value: TUpdateProcessStatus);
begin
  FUpdateProcessStatus:= Value;
  Application.ProcessMessages;
end;

procedure TfmSQLScriptor.ToggleIsChosen;
begin
  if CanToggleIsChosen then
    cdsDatabases.SafeEdit/
      procedure begin
        cdsDatabasesIS_CHOSEN.AsBoolean:= not cdsDatabasesIS_CHOSEN.AsBoolean;
      end;
end;

procedure TfmSQLScriptor.UpdateActions;
begin
  inherited;
  edtScriptFile.Text:= ScriptFileName;
  edtScriptFile.Enabled:= (UpdateProcessStatus = upsNotStarted);

  edtScriptVersion.Text:= IntToStr(FScriptVersion);

  edtLogFolder.Text:= LogFolderName;
  edtLogFolder.Enabled:= (UpdateProcessStatus = upsNotStarted);

  btnUpdateDatabases.Enabled:=
    (ScriptFileName <> '') and
    (LogFolderName <> '') and
    (UpdateProcessStatus = upsNotStarted);

  lblUpdateProcessStatus.Caption:= UpdateProcessStatusNames[UpdateProcessStatus];
end;

end.
