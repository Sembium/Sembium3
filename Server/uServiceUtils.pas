unit uServiceUtils;

interface

uses
  Classes, SysUtils, uUtils;

type
  PComponent = ^TComponent;

type
  TComponentRef = record
  strict private
    FComponentClass: TComponentClass;
    FComponentReference: PComponent;
  public
    constructor Create(
      const AComponentClass: TComponentClass;
      const AComponentReference: PComponent = nil);

    property ComponentClass: TComponentClass read FComponentClass;
    property ComponentReference: PComponent read FComponentReference;
  end;

type
  TComponentRefArray = TArray<TComponentRef>;

type
  TCustomSwitchInfo = record
  strict private
    FSwitchNames: TStringArray;
    FRequiresElevation: Boolean;
    FComponentRefs: TComponentRefArray;
    FRunProc: TProc;
  public
    constructor Create(
      const ASwitchNames: array of string;
      const ARequiresElevation: Boolean;
      const AComponentRefs: array of TComponentRef;
      const ARunProc: TProc = nil);

    function IsEmpty: Boolean;

    property SwitchNames: TStringArray read FSwitchNames;
    property RequiresElevation: Boolean read FRequiresElevation;
    property ComponentRefs: TComponentRefArray read FComponentRefs;
    property RunProc: TProc read FRunProc;
  end;

const
  EmptyCustomSwitchInfo: TCustomSwitchInfo = ();

type
  TCustomSwitchInfos = TArray<TCustomSwitchInfo>;

procedure StartServer(
  const AApplicationTitle: string;
  const AComponentRefs: array of TComponentRef;
  const ACustomSwitchInfos: array of TCustomSwitchInfo;
  const ANameAddition: string = '';
  const ACommandLineAddition: string = '');

function ServiceName: string;
function ServiceDisplayName: string;
function RegisteredAsService: Boolean;
function ServiceIsRunning: Boolean;
procedure StartService;
procedure StopService;

const
  CLSIDRegKey = 'CLSID\';
  LocalServer32RegKey = 'LocalServer32';

implementation

uses
  Forms, SvcMgr, WinSvc, Windows, EventLog, uEnumeratorUtils,
  uServiceState, uServiceStateRepository, uSvrApp;

type
  EServiceNotRegistered = class(Exception);
  EServiceNotStarted = class(Exception);

type
  TServiceApplicationHack = class(TServiceApplication);

type
  TStartMode = (
    smRun,
    smSetup,
    smCustom);

type
  TSetupParam = (
    spRegisterService,
    spUnregisterService);

type
  TSetupParams = set of TSetupParam;

type
  TStartModeInfo = record
  strict private
    FStartMode: TStartMode;
    FSetupParams: TSetupParams;
    FCustomSwitchInfo: TCustomSwitchInfo;
  public
    constructor Create(
      const AStartMode: TStartMode;
      const ASetupParams: TSetupParams;
      const ACustomSwitchInfo: TCustomSwitchInfo);

    property StartMode: TStartMode read FStartMode;
    property SetupParams: TSetupParams read FSetupParams;
    property CustomSwitchInfo: TCustomSwitchInfo read FCustomSwitchInfo;
  end;

const
  AppIDRegKey = 'AppID\';
  LocalServiceRegValue = 'LocalService';
  AppIDRegValue = 'AppID';
  RunAsRegValue = 'RunAs';
  InteractiveUserString = 'Interactive User';

var
  SavedInitProc: Pointer = nil;
  SavedExitProc: Pointer = nil;

  SetupParams: TSetupParams;

  ServiceClass: TComponentClass;
  ServiceReference: PComponent;

  NameAddition: string;
  CommandLineAddition: string;

function ServiceName: string;
begin
  Result:= Format('svc%sSever%s', [SServiceBaseName, NameAddition]);
end;

function ServiceDisplayName: string;
begin
  Result:= Format('%s %s', [SServerAppDisplayName, NameAddition]);
end;

function CommandLineWithAddition: string;
begin
  Result:= ConcatWords(ParamStr(0), CommandLineAddition);
end;

function OpenServiceControlManager: Integer;
begin
  Result:= OpenSCManager(nil, nil, GENERIC_READ);
  if (Result = 0) then
    raise Exception.Create(SysErrorMessage(GetLastError));
end;

function OpenWindowsService(AManagerHandle: Integer; ADesiredAccess: Cardinal): Integer;
var
  Error: Integer;
begin
  Result:= OpenService(AManagerHandle, PChar(ServiceName), ADesiredAccess);

  if (Result = 0) then
    begin
      Error:= GetLastError;
      if (Error = ERROR_SERVICE_DOES_NOT_EXIST) then
        raise EServiceNotRegistered.Create(SysErrorMessage(Error))
      else
        raise Exception.Create(SysErrorMessage(Error));
    end;  { if }
end;

procedure StopWindowsService(AServiceHandle: Integer);
var
  ServiceStatus: _SERVICE_STATUS;
  Error: Integer;
begin
  if not ControlService(AServiceHandle, SERVICE_CONTROL_STOP, ServiceStatus) then
    begin
      Error:= GetLastError;
      if (Error = ERROR_SERVICE_NOT_ACTIVE) then
        raise EServiceNotStarted.Create(SysErrorMessage(Error))
      else
        raise Exception.Create(SysErrorMessage(Error));
    end;  { if }
end;

procedure StartService;
var
  ManagerHandle: Integer;
  ServiceHandle: Integer;
  ss: TServiceStatus;
  psTemp: PWideChar;
  dwChkP: DWORD;  // check point
  ServiceStarted: Boolean;
  Error: Integer;
begin
  ServiceStarted:= False;
  ManagerHandle:= OpenServiceControlManager;
  try
    ServiceHandle:= OpenWindowsService(ManagerHandle, SERVICE_START or SERVICE_QUERY_STATUS);
    try
      psTemp := nil;
      if WinSvc.StartService(ServiceHandle, 0, psTemp) then
        begin
          // check status
          if QueryServiceStatus(ServiceHandle, ss) then
            begin
              while (ss.dwCurrentState <> SERVICE_RUNNING) do
                begin
                  // dwCheckPoint contains a value that the
                  // service increments periodically to
                  // report its progress during a
                  // lengthy operation. Save current value
                  dwChkP:= ss.dwCheckPoint;

                  // wait a bit before checking status again
                  // dwWaitHint is the estimated amount of
                  // time the calling program should wait
                  // before calling QueryServiceStatus()
                  // again. Idle events should be
                  // handled here...
                  Sleep(ss.dwWaitHint);

                  if not QueryServiceStatus(ServiceHandle, ss) then
                    Break;

                  // QueryServiceStatus didn't increment
                  // dwCheckPoint as it should have.
                  // Avoid an infinite loop by breaking
                  if (ss.dwCheckPoint < dwChkP) then
                    Break;
                end;

              ServiceStarted:= (ss.dwCurrentState = SERVICE_RUNNING);
            end;
        end;
    finally
      CloseServiceHandle(ServiceHandle);
    end;  { try }
  finally
    CloseServiceHandle(ManagerHandle);
  end;  { try }

  if not ServiceStarted then
    begin
      Error:= GetLastError;
      if (Error = ERROR_SERVICE_NOT_ACTIVE) then
        raise EServiceNotStarted.Create(SysErrorMessage(Error))
      else
        raise Exception.Create(SysErrorMessage(Error));
    end;  { if }
end;

procedure StopService;
var
  ManagerHandle: Integer;
  ServiceHandle: Integer;
begin
  ManagerHandle:= OpenServiceControlManager;
  try
    ServiceHandle:= OpenWindowsService(ManagerHandle, SERVICE_STOP);
    try
      try
        StopWindowsService(ServiceHandle);
      except
        on EServiceNotStarted do
          begin
            // do nothing
          end;
      end;  { try }
    finally
      CloseServiceHandle(ServiceHandle);
    end;  { try }
  finally
    CloseServiceHandle(ManagerHandle);
  end;  { try }
end;

function GetServiceStatus: Integer;
var
  ManagerHandle: Integer;
  ServiceHandle: Integer;
  SS: TServiceStatus;
begin
  Result:= 0;
  ManagerHandle:= OpenServiceControlManager;
  try
    ServiceHandle:= OpenWindowsService(ManagerHandle, SERVICE_QUERY_STATUS);
    try
      if (ServiceHandle > 0) then
        begin
          if (QueryServiceStatus(ServiceHandle, SS)) then
            Result:= SS.dwCurrentState;
        end;
    finally
      CloseServiceHandle(ServiceHandle);
    end;  { try }
  finally
    CloseServiceHandle(ManagerHandle);
  end;  { try }
end;

function ServiceIsRunning: Boolean;
begin
  Result:= (GetServiceStatus = SERVICE_RUNNING);
end;

function RegisteredAsService: Boolean;
var
  ManagerHandle: Integer;
  ServiceHandle: Integer;
begin
  ManagerHandle:= OpenServiceControlManager;
  try
    try
      ServiceHandle:= OpenWindowsService(ManagerHandle, GENERIC_READ);
      try
        Result:= True;
      finally
        CloseServiceHandle(ServiceHandle);
      end;  { try }
    except
      on E: EServiceNotRegistered do
        Result:= False;
    end;  { try }
  finally
    CloseServiceHandle(ManagerHandle);
  end;  { try }
end;

function IsSwitchFoundInCommandLineParams(const ASwitchName: string): Boolean; overload;
begin
  Result:= FindCmdLineSwitch(ASwitchName);
end;

function IsSwitchInfoFoundInCommandLineParams(const ACustomSwitchInfo: TCustomSwitchInfo): Boolean; overload;
begin
  Result:= ArrayUtils.All<string>(ACustomSwitchInfo.SwitchNames).Filter(IsSwitchFoundInCommandLineParams).Exists;
end;

function ParseParams(const ACustomSwitchInfos: array of TCustomSwitchInfo): TStartModeInfo;

type
  TSwitch = (
    swRegisterService,
    swUnregisterService,
    swInstallService,
    swUninstallService,
    swElevated,
    swCustom);

  TSwitches = set of TSwitch;

const
  RegisterServiceSwitchName = 'regsvc';
  UnregisterServiceSwitchName = 'unregsvc';
  InstallServiceSwitchName = 'install';
  UninstallServiceSwitchName = 'uninstall';

  SwitchStrings: array[TSwitch] of string = (
    RegisterServiceSwitchName,
    UnregisterServiceSwitchName,
    InstallServiceSwitchName,
    UninstallServiceSwitchName,
    ElevatedSwitchName,
    '');

  StartModeAllowedSwitches: array[TStartMode] of TSwitches = (
    [],                                                     // smRun
    [swRegisterService, swUnregisterService, swElevated],   // smSetup
    [swElevated]                                            // smCustom
  );

  function GetSwitches: TSwitches;
  var
    Switch: TSwitch;
  begin
    Result:= [];
    for Switch:= Low(TSwitch) to High(TSwitch) do
      if FindCmdLineSwitch(SwitchStrings[Switch]) then
        Result:= Result + [Switch];
  end;

  procedure ParametersError;
  begin
    raise Exception.Create('Invalid combination of parameters');
  end;

var
  Switches: TSwitches;
  StartMode: TStartMode;
  SetupParams: TSetupParams;
  CustomSwitchInfo: TCustomSwitchInfo;
  sw: TSwitch;
begin
  Switches:= GetSwitches;

  if ((StartModeAllowedSwitches[smSetup] - [swElevated]) * Switches <> []) then
    StartMode:= smSetup
  else
    StartMode:= smRun;

  CustomSwitchInfo:=
    ArrayUtils.All<TCustomSwitchInfo>(ACustomSwitchInfos)
      .Filter(IsSwitchInfoFoundInCommandLineParams)
      .FirstOrDefault(EmptyCustomSwitchInfo);

  if (StartMode = smRun) and not CustomSwitchInfo.IsEmpty then
    StartMode:= smCustom;

  for sw in Switches do
    if not (sw in StartModeAllowedSwitches[StartMode]) then
      ParametersError;

  SetupParams:= [];

  if (swRegisterService in Switches) then
    Include(SetupParams, spRegisterService);

  if (swUnregisterService in Switches) then
    Include(SetupParams, spUnregisterService);

  Result:= TStartModeInfo.Create(StartMode, SetupParams, CustomSwitchInfo);
end;

procedure CheckStartMode(const ASetupParams: TSetupParams);
begin
end;

procedure SaveServiceStoppedState;
begin
  SaveServiceState(ssStopped);
end;

procedure StartAsService(const AApplicationTitle: string; const AComponentRefs: array of TComponentRef);
var
  cr: TComponentRef;
  c: TComponent;
begin
  SvcMgr.Application.DelayInitialize:= True;

  if not SvcMgr.Application.DelayInitialize or SvcMgr.Application.Installing then
    SvcMgr.Application.Initialize;

  SvcMgr.Application.Title:= AApplicationTitle;
  SvcMgr.Application.CreateForm(ServiceClass, ServiceReference^);
  ServiceReference^.Name:= ServiceName;
  TService(ServiceReference^).DisplayName:= ServiceDisplayName;

  for cr in AComponentRefs do
    if (not cr.ComponentClass.InheritsFrom(TForm)) and
       (not cr.ComponentClass.InheritsFrom(TService)) then
      begin
        SvcMgr.Application.CreateForm(cr.ComponentClass, c);
        if Assigned(cr.ComponentReference) then
          cr.ComponentReference^:= c;
      end;


  AddExitProc(SaveServiceStoppedState);

  SaveServiceState(ssStarted);

  SvcMgr.Application.Run;
end;

procedure SetServiceCommandLine;
var
  ManagerHandle: Integer;
  ServiceHandle: Integer;
  Success: Boolean;
begin
  ManagerHandle:= OpenServiceControlManager;
  try
    ServiceHandle:= OpenWindowsService(ManagerHandle, SERVICE_CHANGE_CONFIG);
    try
      Success:=
        ChangeServiceConfig(ServiceHandle,
          SERVICE_NO_CHANGE, SERVICE_NO_CHANGE, SERVICE_NO_CHANGE,
          PChar(CommandLineWithAddition),
          nil, nil, nil, nil, nil, nil);

      if not Success then
        raise Exception.Create(SysErrorMessage(GetLastError));
    finally
      CloseServiceHandle(ServiceHandle);
    end;  { try }
  finally
    CloseServiceHandle(ManagerHandle);
  end;  { try }
end;

procedure StartAsApplication(const AApplicationTitle: string; const AComponentRefs: array of TComponentRef; const ARunProc: TProc);
var
  cr: TComponentRef;
  c: TComponent;
begin
  Forms.Application.Initialize;
  Forms.Application.Title:= AApplicationTitle;
  Forms.Application.HintHidePause:= MaxInt;  // cial jivot - dokato ne mrudnesh mishkata

  for cr in AComponentRefs do
    if not cr.ComponentClass.InheritsFrom(TService) then
      begin
        Forms.Application.CreateForm(cr.ComponentClass, c);

        if Assigned(cr.ComponentReference) then
          cr.ComponentReference^:= c;
      end;

  if Assigned(ARunProc) then
    ARunProc()
  else
    Forms.Application.Run;
end;

procedure RegisterService(AInstalling: Boolean);
begin
  if (ServiceReference^ = nil) then
    begin
      SvcMgr.Application.CreateForm(ServiceClass, ServiceReference^);
      ServiceReference^.Name:= ServiceName;
      TService(ServiceReference^).DisplayName:= ServiceDisplayName;
    end;

  if not AInstalling then
    StopService;

  TServiceApplicationHack(SvcMgr.Application).RegisterServices(AInstalling, True);

  if AInstalling then
    SetServiceCommandLine;
end;

procedure SetupInitProcedure;
begin
  if (spUnregisterService in SetupParams) and
     RegisteredAsService then
    begin
      RegisterService(False);
    end;  { if }
end;

procedure SetupExitProcedure;
begin
  if (spRegisterService in SetupParams) then
    begin
      if RegisteredAsService then
        RegisterService(False);

      RegisterService(True);
    end;  { if }
end;

procedure ServerInitProcedure;
begin
  SetupInitProcedure;

  if (SavedInitProc <> nil) then
    TProcedure(SavedInitProc);
end;

procedure ServerExitProcedure;
begin
  SetupExitProcedure;

  if (SavedExitProc <> nil) then
    TProcedure(SavedExitProc);
end;

function IsServiceRef(const AComponentRef: TComponentRef): Boolean;
begin
  Result:= AComponentRef.ComponentClass.InheritsFrom(TService);
end;

procedure StartServer(
  const AApplicationTitle: string;
  const AComponentRefs: array of TComponentRef;
  const ACustomSwitchInfos: array of TCustomSwitchInfo;
  const ANameAddition: string = '';
  const ACommandLineAddition: string = '');
var
  ApplicationTitle: string;
  ServiceRef: TComponentRef;
  StartModeInfo: TStartModeInfo;
begin
  ApplicationTitle:= ConcatWords(AApplicationTitle, ANameAddition);

  try
    ServiceRef:= ArrayUtils.All<TComponentRef>(AComponentRefs).Filter(IsServiceRef).First;
    ServiceClass:= ServiceRef.ComponentClass;
    ServiceReference:= ServiceRef.ComponentReference;
    NameAddition:= ANameAddition;
    CommandLineAddition:= ACommandLineAddition;

    Assert(Assigned(ServiceRef.ComponentReference));

    StartModeInfo:= ParseParams(ACustomSwitchInfos);
    SetupParams:= StartModeInfo.SetupParams;

    CheckStartMode(StartModeInfo.SetupParams);

    case StartModeInfo.StartMode of
      smCustom:
        begin
          if StartModeInfo.CustomSwitchInfo.RequiresElevation then
            EnsureAdminElevation;

          if (Length(StartModeInfo.CustomSwitchInfo.ComponentRefs) = 0) and
             Assigned(StartModeInfo.CustomSwitchInfo.RunProc) then
            StartModeInfo.CustomSwitchInfo.RunProc()
          else
            StartAsApplication(ApplicationTitle, StartModeInfo.CustomSwitchInfo.ComponentRefs, StartModeInfo.CustomSwitchInfo.RunProc);
        end;

      smRun:
        if RegisteredAsService then
          StartAsService(ApplicationTitle, AComponentRefs)
        else
          StartAsApplication(ApplicationTitle, AComponentRefs, nil);

      smSetup:
        begin
          EnsureAdminElevation;

          SetupInitProcedure;
          SetupExitProcedure;
        end;
    end;
  except
    on E: Exception do
      begin
        WriteToEventLog(E.Message, ApplicationTitle);
        KillApplication(1);
      end;
  end;  { try }
end;

{ TComponentRef }

constructor TComponentRef.Create(const AComponentClass: TComponentClass;
  const AComponentReference: PComponent);
begin
  FComponentClass:= AComponentClass;
  FComponentReference:= AComponentReference;
end;

{ TCustomSwitchInfo }

constructor TCustomSwitchInfo.Create(
  const ASwitchNames: array of string;
  const ARequiresElevation: Boolean;
  const AComponentRefs: array of TComponentRef;
  const ARunProc: TProc);
begin
  FSwitchNames:= ArrayUtils.ArrayOf<string>(ASwitchNames);
  FRequiresElevation:= ARequiresElevation;
  FComponentRefs:= ArrayUtils.ArrayOf<TComponentRef>(AComponentRefs);
  FRunProc:= ARunProc;
end;

function TCustomSwitchInfo.IsEmpty: Boolean;
begin
  Result:= (Length(FSwitchNames) = 0);
end;

{ TStartModeInfo }

constructor TStartModeInfo.Create(
  const AStartMode: TStartMode;
  const ASetupParams: TSetupParams;
  const ACustomSwitchInfo: TCustomSwitchInfo);
begin
  FStartMode:= AStartMode;
  FSetupParams:= ASetupParams;
  FCustomSwitchInfo:= ACustomSwitchInfo;
end;

end.
