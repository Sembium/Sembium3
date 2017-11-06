unit uWindowsServiceUtils;

interface

uses
  SysUtils, WinSvc, Windows;

type
  EServiceNotRegistered = class(Exception)
  end;

function GetSCManager: SC_HANDLE;
function GetServiceHandle(AManagerHandle: SC_HANDLE; const AServiceName: string; ADesiredAccess: Cardinal): SC_HANDLE;
function IsServiceStarted(const AServiceName: string): Boolean;
function IsServiceStopped(const AServiceName: string): Boolean;
function IsServiceInstalled(const AServiceName: string): Boolean;
function GetServiceExePath(const AServiceName: string): string;
procedure StartSvc(const AServiceName: string);
procedure StopSvc(const AServiceName: string);
procedure StartWindowsSvc(AServiceHandle: SC_HANDLE);
procedure StopWindowsSvc(AServiceHandle: SC_HANDLE);

implementation

const
  ServerStopAttemptTimeout = 500;
  ServerStopTimeout = 60 * 1000;

function GetSCManager: SC_HANDLE;
begin
  Result:= OpenSCManager(nil, nil, GENERIC_READ);
  if (Result = 0) then
    raise Exception.Create(SysErrorMessage(GetLastError));
end;

function GetServiceHandle(AManagerHandle: SC_HANDLE; const AServiceName: string; ADesiredAccess: Cardinal): SC_HANDLE;
var
  Error: Integer;
begin
  Result:= OpenService(AManagerHandle, PChar(AServiceName), ADesiredAccess);
  if (Result = 0) then
    begin
      Error:= GetLastError;
      if (Error = ERROR_SERVICE_DOES_NOT_EXIST) then
        raise EServiceNotRegistered.Create(SysErrorMessage(Error))
      else
        raise Exception.Create(SysErrorMessage(Error));
    end;  { if }
end;

function GetServiceStatus(const AServiceName: string): DWORD;
var
  ManagerHandle: SC_HANDLE;
  ServiceHandle: SC_HANDLE;
  ServiceStatus: _SERVICE_STATUS;
begin
  ManagerHandle:= GetSCManager;
  try
    ServiceHandle:= GetServiceHandle(ManagerHandle, AServiceName, SERVICE_INTERROGATE);
    try
      if not ControlService(ServiceHandle, SERVICE_CONTROL_INTERROGATE, ServiceStatus) then
        Exception.Create(SysErrorMessage(GetLastError));
      Result:= ServiceStatus.dwCurrentState;
    finally
      CloseServiceHandle(ServiceHandle);
    end;  { try }
  finally
    CloseServiceHandle(ManagerHandle);
  end;  { try }
end;

function GetServiceExePath(const AServiceName: string): string;
var
  ManagerHandle: SC_HANDLE;
  ServiceHandle: SC_HANDLE;
  Buffer: pointer;
  Config: PQueryServiceConfig;
  ServiceConfig: TQueryServiceConfig;
  pcbBytesNeeded, ActualSize: Cardinal;
begin
  ManagerHandle:= GetSCManager;
  try
    ServiceHandle:= GetServiceHandle(ManagerHandle, AServiceName, SERVICE_ALL_ACCESS);
    try
      QueryServiceConfig(ServiceHandle, @ServiceConfig, SizeOf(ServiceConfig), pcbBytesNeeded);
      GetMem(Buffer, pcbBytesNeeded);
      ActualSize:= pcbBytesNeeded;
      try
        QueryServiceConfig(ServiceHandle, Buffer, ActualSize, pcbBytesNeeded);
        Config:= Buffer;
        Result:= Config.lpBinaryPathName;
      finally
        FreeMem(Buffer);
      end;
    finally
      CloseServiceHandle(ServiceHandle);
    end;  { try }
  finally
    CloseServiceHandle(ManagerHandle);
  end;  { try }
end;

function IsServiceStarted(const AServiceName: string): Boolean;
begin
  Result:= (GetServiceStatus(AServiceName) = SERVICE_RUNNING);
end;

function IsServiceStopped(const AServiceName: string): Boolean;
begin
  Result:= (GetServiceStatus(AServiceName) = SERVICE_STOPPED);
end;

function IsServiceInstalled(const AServiceName: string): Boolean;
var
  ManagerHandle: SC_HANDLE;
  ServiceHandle: SC_HANDLE;
begin
  ManagerHandle:= GetSCManager;
  try
    try
      ServiceHandle:= GetServiceHandle(ManagerHandle, AServiceName, GENERIC_READ);
      try
        Result:= True;
      finally
        CloseServiceHandle(ServiceHandle);
      end;
    except
      on
        e: EServiceNotRegistered do
          Result:= False;
    end;  { try }
  finally
    CloseServiceHandle(ManagerHandle);
  end;  { try }
end;

procedure StartWindowsSvc(AServiceHandle: SC_HANDLE);
var
  p: PChar;
begin
  p:= nil;
  if not StartService(AServiceHandle, 0, p) then
    raise Exception.Create(SysErrorMessage(GetLastError));
end;

procedure StopWindowsSvc(AServiceHandle: SC_HANDLE);
var
  ServiceStatus: _SERVICE_STATUS;
begin
  if not ControlService(AServiceHandle, SERVICE_CONTROL_STOP, ServiceStatus) then
    raise Exception.Create(SysErrorMessage(GetLastError));
end;

procedure StartSvc(const AServiceName: string);
var
  ManagerHandle: SC_HANDLE;
  ServiceHandle: SC_HANDLE;
begin
  ManagerHandle:= GetSCManager;
  try
    ServiceHandle:= GetServiceHandle(ManagerHandle, AServiceName, SERVICE_START);
    try
      StartWindowsSvc(ServiceHandle);
    finally
      CloseServiceHandle(ServiceHandle);
    end;  { try }
  finally
    CloseServiceHandle(ManagerHandle);
  end;  { try }
end;

procedure StopSvc(const AServiceName: string);
var
  ManagerHandle: SC_HANDLE;
  ServiceHandle: SC_HANDLE;
  TimeElapsed: LongInt;
begin
  ManagerHandle:= GetSCManager;
  try
    ServiceHandle:= GetServiceHandle(ManagerHandle, AServiceName, SERVICE_STOP);
    try
      StopWindowsSvc(ServiceHandle);

      TimeElapsed:= 0;
      while not IsServiceStopped(AServiceName) do
        begin
          if (TimeElapsed > ServerStopTimeout) then
            raise Exception.Create('Service stop timeout');

          Sleep(ServerStopAttemptTimeout);
          TimeElapsed:= TimeElapsed + ServerStopAttemptTimeout;
        end;  { while }
    finally
      CloseServiceHandle(ServiceHandle);
    end;  { try }
  finally
    CloseServiceHandle(ManagerHandle);
  end;  { try }
end;

end.
