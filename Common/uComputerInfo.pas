unit uComputerInfo;

interface

uses
  Winapi.Windows;

function GetLocalComputerName: string;
function GetWindowsUserName: string;
function GetWindowsSessionId: DWord;
function GetWindowsVersionString: string;
function GetInternetExplorerVersionString: string;
function GetHardwareInfo: string;
function GetSysVolumeSerialNumber: string;

implementation

uses
  SysUtils, StrUtils, JclRegistry, JclSysInfo;

// ako stawa duma za tekushtiq proces da se wika GetWindowsSessionId
{$EXTERNALSYM ProcessIdToSessionId}
function ProcessIdToSessionId(AProcessId: DWord; var ASessionId: DWord): Boolean; stdcall; external 'kernel32.dll' name 'ProcessIdToSessionId';

function FormatByteSize(const bytes: Int64): string;
const
  B = 1; //byte
  KB = 1024 * B; //kilobyte
  MB = 1024 * KB; //megabyte
  GB = 1024 * MB; //gigabyte
begin
  if (bytes > GB) then
    Result:= FormatFloat('0.# GB', bytes / GB)
  else
    if (bytes > MB) then
      Result:= FormatFloat('0.# MB', bytes / MB)
    else
      if (bytes > KB) then
        Result:= FormatFloat('0.# KB', bytes / KB)
      else
        Result:= FormatFloat('0.# B', bytes) ;
end;

function GetLocalComputerName: string;
var
  Size: DWORD;
  LocalComputerName: array [0..MAX_COMPUTERNAME_LENGTH] of Char;
begin
  Size:= SizeOf(LocalComputerName);  // Win95 is hypersensitive to size
  if Winapi.Windows.GetComputerName(LocalComputerName, Size) then
    Result:= LocalComputerName
  else
    raise Exception.Create('Call to GetComputerName failed');
end;

function GetWindowsUserName: string;
var
  Size: DWORD;
  WindowsUserName: array[0..MAX_PROFILE_LEN] of Char;
begin
  Size:= SizeOf(WindowsUserName);
  if GetUserName(WindowsUserName, Size) then
    Result:= WindowsUserName
  else
    raise Exception.Create('Call to GetUserName failed');
end;

function GetWindowsSessionId: DWord;
begin
  if not ProcessIdToSessionId(GetCurrentProcessId, Result) then
    raise Exception.Create(SysErrorMessage(GetLastError));
end;

function GetWindowsVersionString: string;
const
  ProductName = 'SOFTWARE\Microsoft\Windows NT\CurrentVersion';
  Windows10 = 'Windows 10';
  IEVersionKey = 'SOFTWARE\Microsoft\Internet Explorer';
var
  Edition: string;
begin
  Edition:= RegReadStringDef(HKEY_LOCAL_MACHINE, ProductName, 'ProductName', '');

  if ContainsText(Edition, Windows10) then
    Result:= Windows10
  else
    Result:= JclSysInfo.GetWindowsVersionString;
end;

function GetInternetExplorerVersionString: string;
const
  IEVersionKey = 'SOFTWARE\Microsoft\Internet Explorer';
var
  IEVersion: string;
begin
  IEVersion:= RegReadStringDef(HKEY_LOCAL_MACHINE, IEVersionKey, 'Version', '');
  IEVersion:= RegReadStringDef(HKEY_LOCAL_MACHINE, IEVersionKey, 'svcVersion', IEVersion);

  Result:= Result + 'Internet Explorer ' + SplitString(IEVersion, '.')[0];
end;

function GetHardwareInfo: string;
var
  ProcessorName: string;
  Memory: string;
begin
  ProcessorName:= string(AnsiString(CPUID.CpuName));
  Memory:= FormatByteSize(GetTotalPhysicalMemory);

  Result:= Format('%s; %s RAM', [ProcessorName, Memory]);

  Result:= Trim(Result);
end;

function GetSysVolumeSerialNumber: string;
var
  SysDrive: string;
  VolumeSerialNumber: DWord;
  Dummy: DWord;
begin
  VolumeSerialNumber:= 0;
  SysDrive:= IncludeTrailingPathDelimiter(GetEnvironmentVariable('SystemDrive'));
  GetVolumeInformation(PChar(SysDrive), nil, 0, @VolumeSerialNumber, Dummy, Dummy, nil, 0);
  Result:= IntToHex(VolumeSerialNumber, 8);
end;

end.
