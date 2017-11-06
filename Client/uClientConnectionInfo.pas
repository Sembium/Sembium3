unit uClientConnectionInfo;

interface

uses
  System.SyncObjs, Data.DBXCommon;

type
  TClientConnectionInfo = class
  strict private
    FGuid: string;
    FComputerName: string;
    FWindowsUserName: string;
    FWindowsSessionId: Integer;
    FWindowsVersion: string;
    FSystemLocale: Integer;
    FSysVolumeSerialNumber: string;
    FHardwareInfo: string;
    FStartupContextDateOverride: TDateTime;
    FIsSessionReadOnly: Boolean;
    FCommunicationProtocol: string;
    FAuthenticationTokenPrefix: string;
    FAuthenticationTokenValue: string;
    FActiveServerName: string;
    FSync: TCriticalSection;

    function GetAuthenticationToken: string;
    procedure SetActiveServerName(const Value: string);
    function GetActiveServerName: string;
  private
    function GetAuthenticationTokenPrefix: string;
    function GetAuthenticationTokenValue: string;
  public
    constructor Create(
      const AComputerName: string;
      const AWindowsUserName: string;
      AWindowsSessionId: Integer;
      const AWindowsVersion: string;
      ASystemLocale: Integer;
      const ASysVolumeSerialNumber: string;
      const AHardwareInfo: string;
      AStartupContextDateOverride: TDateTime;
      AIsSessionReadOnly: Boolean;
      const ACommunicationProtocol: string
    );
    destructor Destroy; override;

    procedure SetAuthenticationToken(const APrefix, AValue: string);
    procedure SetEmptyAuthenticationToken;

    property Guid: string read FGuid;
    property ComputerName: string read FComputerName;
    property WindowsUserName: string read FWindowsUserName;
    property WindowsSessionId: Integer read FWindowsSessionId;
    property WindowsVersion: string read FWindowsVersion;
    property SystemLocale: Integer read FSystemLocale;
    property SysVolumeSerialNumber: string read FSysVolumeSerialNumber;
    property HardwareInfo: string read FHardwareInfo;
    property StartupContextDateOverride: TDateTime read FStartupContextDateOverride;
    property IsSessionReadOnly: Boolean read FIsSessionReadOnly;
    property CommunicationProtocol: string read FCommunicationProtocol write FCommunicationProtocol;

    property AuthenticationToken: string read GetAuthenticationToken;
    property AuthenticationTokenPrefix: string read GetAuthenticationTokenPrefix;
    property AuthenticationTokenValue: string read GetAuthenticationTokenValue;
    property ActiveServerName: string read GetActiveServerName write SetActiveServerName;
  end;

procedure InitClientConnectionInfo(AStartupContextDateOverride: TDateTime; AIsSessionReadOnly: Boolean; const ACommunicationProtocol: string);
function ClientConnectionInfo: TClientConnectionInfo;
procedure SetConnectionProperties(
  Properties: TDBXProperties; const ALoginName, ADBName: string; const IsPingConnection: Boolean; const ExeVersion: string);

implementation

uses
  uUtils, System.StrUtils, JclRegistry, Winapi.Windows, JclSysInfo,
  uSystemLocaleUtils, System.SysUtils, uConnectionUtils;

var
  FClientConnectionInfo: TClientConnectionInfo;

const
  DefaultDatasnapPort = 215;
  DefaultHttpPort = 280;

{ TClientConnectionInfo }

constructor TClientConnectionInfo.Create(const AComputerName,
  AWindowsUserName: string; AWindowsSessionId: Integer;
  const AWindowsVersion: string; ASystemLocale: Integer;
  const ASysVolumeSerialNumber, AHardwareInfo: string; AStartupContextDateOverride: TDateTime;
  AIsSessionReadOnly: Boolean; const ACommunicationProtocol: string);
begin
  inherited Create;

  FSync:= TCriticalSection.Create;

  FGuid:= GenerateGuid;

  FComputerName:= AComputerName;
  FWindowsUserName:= AWindowsUserName;
  FWindowsSessionId:= AWindowsSessionId;
  FWindowsVersion:= AWindowsVersion;
  FSystemLocale:= ASystemLocale;
  FSysVolumeSerialNumber:= ASysVolumeSerialNumber;
  FHardwareInfo:= AHardwareInfo;
  FStartupContextDateOverride:= AStartupContextDateOverride;
  FIsSessionReadOnly:= AIsSessionReadOnly;
  FCommunicationProtocol:= ACommunicationProtocol;
end;

destructor TClientConnectionInfo.Destroy;
begin
  FreeAndNil(FSync);
  inherited;
end;

function TClientConnectionInfo.GetActiveServerName: string;
begin
  Result:=
    FSync.TempEnter/
      function: string begin
        Result:= FActiveServerName;
      end;
end;

function TClientConnectionInfo.GetAuthenticationToken: string;
begin
  Result:=
    FSync.TempEnter/
      function: string begin
        Result:= FAuthenticationTokenPrefix + FAuthenticationTokenValue;
      end;
end;

function TClientConnectionInfo.GetAuthenticationTokenPrefix: string;
begin
  Result:=
    FSync.TempEnter/
      function: string begin
        Result:= FAuthenticationTokenPrefix;
      end;
end;

function TClientConnectionInfo.GetAuthenticationTokenValue: string;
begin
  Result:=
    FSync.TempEnter/
      function: string begin
        Result:= FAuthenticationTokenValue;
      end;
end;

procedure TClientConnectionInfo.SetActiveServerName(const Value: string);
begin
  FSync.TempEnter/
    procedure begin
      FActiveServerName:= Value;
    end;
end;

procedure TClientConnectionInfo.SetAuthenticationToken(const APrefix, AValue: string);
begin
  FSync.TempEnter/
    procedure begin
      FAuthenticationTokenPrefix:= APrefix;
      FAuthenticationTokenValue:= AValue;
    end;
end;

procedure TClientConnectionInfo.SetEmptyAuthenticationToken;
begin
  SetAuthenticationToken('', '');
end;

procedure InitClientConnectionInfo(AStartupContextDateOverride: TDateTime; AIsSessionReadOnly: Boolean; const ACommunicationProtocol: string);

  function GetWindowsVersionStringEx: string;
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
      Result:= GetWindowsVersionString;
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

var
  SystemLocale: TSystemLocale;
begin
  try
    SystemLocale:= StrToSystemLocale(GetExeLocale);
  except
    SystemLocale:= slNone;
  end;

  FClientConnectionInfo:=
    TClientConnectionInfo.Create(
      GetLocalComputerName,
      GetWindowsUserName,
      GetWindowsSessionId,
      GetWindowsVersionStringEx + '     ' + GetInternetExplorerVersionString,
      SystemLocaleToInt(SystemLocale),
      GetSysVolumeSerialNumber,
      GetHardwareInfo,
      AStartupContextDateOverride,
      AIsSessionReadOnly,
      ACommunicationProtocol
    );
end;

function GetDefaultPort(const ACommunicationProtocol: string): Integer;
begin
  if SameText(ACommunicationProtocol, GetCommunicationProtocol(DatasnapConnectionParam)) then
    Exit(DefaultDatasnapPort);

  if SameText(ACommunicationProtocol, GetCommunicationProtocol(HttpConnectionParam)) then
    Exit(DefaultHttpPort);

  raise Exception.CreateFmt('Unknown communication protocol: ', [ACommunicationProtocol]);
end;

procedure SetConnectionProperties(Properties: TDBXProperties; const ALoginName, ADBName: string; const IsPingConnection: Boolean; const ExeVersion: string);
begin
  Properties[TConnectionPropertyNames.ComputerName]:= FClientConnectionInfo.ComputerName;
  Properties[TConnectionPropertyNames.WindowsUserName]:= FClientConnectionInfo.WindowsUserName;
  Properties[TConnectionPropertyNames.WindowsSessionId]:= IntToStr(FClientConnectionInfo.WindowsSessionId);
  Properties[TConnectionPropertyNames.WindowsVersion]:= FClientConnectionInfo.WindowsVersion;
  Properties[TConnectionPropertyNames.SystemLocale]:= IntToStr(FClientConnectionInfo.SystemLocale);
  Properties[TConnectionPropertyNames.SysVolumeSerialNumber]:= FClientConnectionInfo.SysVolumeSerialNumber;
  Properties[TConnectionPropertyNames.HardwareInfo]:= FClientConnectionInfo.HardwareInfo;
  Properties[TConnectionPropertyNames.StartupContextDateOverride]:= FloatToStr(FClientConnectionInfo.StartupContextDateOverride);
  Properties[TConnectionPropertyNames.IsSessionReadOnly]:= IntToStr(Ord(FClientConnectionInfo.IsSessionReadOnly));

  Properties[TDBXPropertyNames.CommunicationProtocol]:= FClientConnectionInfo.CommunicationProtocol;
  Properties[TDBXPropertyNames.HostName]:= HostOf(FClientConnectionInfo.ActiveServerName);
  Properties[TDBXPropertyNames.Port]:= IntToStr(PortOf(FClientConnectionInfo.ActiveServerName, GetDefaultPort(FClientConnectionInfo.CommunicationProtocol)));

  Properties[TDBXPropertyNames.BufferKBSize]:= '200';
  Properties[TDBXPropertyNames.ConnectTimeout]:= '5000';

  Properties[TConnectionPropertyNames.ClientSessionGuid]:= FClientConnectionInfo.Guid;
  Properties[TConnectionPropertyNames.AuthenticationToken]:= FClientConnectionInfo.AuthenticationToken;
  Properties[TConnectionPropertyNames.LoginName]:= ALoginName;
  Properties[TConnectionPropertyNames.DBName]:= ADBName;
  Properties[TConnectionPropertyNames.ConnectionPurpose]:= IfThen(IsPingConnection, TConnectionPurposeValues.Ping, TConnectionPurposeValues.Main);

  Properties[TConnectionPropertyNames.ExeVersion]:= ExeVersion;
end;

function ClientConnectionInfo: TClientConnectionInfo;
begin
  Result:= FClientConnectionInfo;
end;

end.
