unit dSvrExecute;

interface

uses
  SysUtils, Classes, Datasnap.DSProviderDataModuleAdapter, uContentStorageUtils,
  uContentStorageLocatorsCache;

type
  TdmSvrExecute = class(TDSServerModule)
    procedure DSServerModuleCreate(Sender: TObject);
    procedure DSServerModuleDestroy(Sender: TObject);
  private
    FContentStorageLocatorsCache: TContentStorageLocatorsCache;
    function ExecuteFile(AExecutePath, AExecuteParams, AInputFileName,
      AOutputFileName: string; ATimeOut: Integer): OleVariant;
    procedure WriteInputFile(AFileData: Variant; const AFileName: string);
    function IsURL(const AValue: string): Boolean;
    procedure DownloadFile(const AURL, AFileName: string);
  public
    function ExecuteExternalFile(const ExecutePath, ExecuteParams, InputFileName,
      ResultExt: string; Timeout: Integer): OleVariant;

    function ExecuteInternalFile(const ExecutePath,
      ExecuteParams: string; const InputExt, InputData: OleVariant;
      const ResultExt: string; Timeout: Integer): OleVariant;
  end;

const
  SRegistryKey = '\SOFTWARE\%s\ExecuteServer\';

implementation

{$R *.dfm}

uses
  Variants, Windows, JclFileUtils, uUtils, DateUtils, Registry, SyncObjs,
  System.StrUtils, System.IOUtils, System.Net.HttpClient, System.Net.URLClient, uSvrDocUtils,
  JclRegistry, uComputerInfo, uApp;

const
  STempFileName = 'ExecuteServerTempFile';
  SDefaultServerFolder = 'C:\ExecuteServer\';
  SExecuteServerWorkSubfolder = 'Work';
  SInputFileTag = '%InputFile%';
  SResultFileTag = '%ResultFile%';
  SRegistryExecuteFolderValueName = 'ExecuteFolder';
  SRegistryContentStorageContainerNameValueName = 'ContentStorageContainerName';
  SRegistryContentStorageAuthenticationTokenValueName = 'ContentStorageAuthenticationToken';
  SRegistryContentStorageLocatorURLValueName = 'ContentStorageLocatorURL';
  SProcessTimeoutExceeded = 'Изпълнението на %s на компютър %s не приключи в рамките на конфигурираното време. Моля, свържете се със системния администратор за отстраняване на проблема!';
  SCouldNotExecuteProcess = 'Файлът %s не може да бъде изпълнен на компютър %s. Моля, свържете се със системния администратор за отстраняване на проблема!';
  SDateTimeFormatString = 'yyyymmddhhnnss';

var
  CriticalSection: TCriticalSection;

function GetRegistrySetting(const ASettingName: string): string;
begin
  Result:= RegReadStringDef(HKEY_LOCAL_MACHINE, Format(SRegistryKey, [SRootRegKeyName]), ASettingName, '');
end;

function GetExecuteServerFolder: string;
begin
  Result:= GetRegistrySetting(SRegistryExecuteFolderValueName);

  if (Result = '') then
    Result:= SDefaultServerFolder;

  Result:=
    IncludeTrailingPathDelimiter(
      IncludeTrailingPathDelimiter(Result) +
      SExecuteServerWorkSubfolder);
end;

function GetContentStorageConfig: TContentStorageConfig;
begin
  Result:=
    TContentStorageConfig.Create(
      GetRegistrySetting(SRegistryContentStorageContainerNameValueName),
      GetRegistrySetting(SRegistryContentStorageAuthenticationTokenValueName),
      GetRegistrySetting(SRegistryContentStorageLocatorURLValueName));
end;

function ExecuteProcess(FileName, CommandLine: string; Timeout: Integer): Boolean;
var
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
  Result:= False;
  FillChar(StartupInfo, SizeOf(TStartupInfo), #0);
  FillChar(ProcessInfo, SizeOf(TProcessInformation), #0);
  StartupInfo.cb:= SizeOf(TStartupInfo);
  try
    if CreateProcess(PChar(FileName), PChar(CommandLine), nil, nil,False,
      CREATE_NEW_PROCESS_GROUP + NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInfo) then
      begin
        if (WaitForSingleObject(ProcessInfo.hProcess, Timeout) <> WAIT_TIMEOUT) then
          Result:= True
        else
          TerminateProcess(ProcessInfo.hProcess, 0);
      end
    else
      raise Exception.CreateFmt(SCouldNotExecuteProcess, [FileName, GetLocalComputerName]);
  finally
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
  end;  { try }
end;

function TdmSvrExecute.ExecuteFile(AExecutePath, AExecuteParams, AInputFileName,
  AOutputFileName: string; ATimeOut: Integer): OleVariant;
var
  CommandLine: string;
  ContentStorageConfig: TContentStorageConfig;
begin
  CommandLine:= '"' + AExecutePath + '" ' + AExecuteParams;

  CommandLine:= StringReplace(
    CommandLine, SInputFileTag, Format('"%s"', [AInputFileName]), [rfReplaceAll, rfIgnoreCase]);
  CommandLine:= StringReplace(
    CommandLine, SResultFileTag, Format('"%s"', [AOutputFileName]), [rfReplaceAll, rfIgnoreCase]);

  ContentStorageConfig:= GetContentStorageConfig;

  if not ExecuteProcess(AExecutePath, CommandLine, ATimeOut) then
    raise Exception.CreateFmt(SProcessTimeoutExceeded, [AExecutePath, GetLocalComputerName]);

  if (ContentStorageConfig.ContainerName <> '') then
    Result:= UploadFileToContentStorage(AOutputFileName, ContentStorageConfig, FContentStorageLocatorsCache)
  else
    Result:= ReadFileToVarArray(AOutputFileName);
end;

procedure TdmSvrExecute.DownloadFile(const AURL, AFileName: string);
var
  http: THTTPClient;
  FS: TFileStream;
begin
  FS:= TFileStream.Create(AFileName, fmCreate);
  try
    http:= THTTPClient.Create;
    try
      http.Get(AURL, FS);
    finally
      FreeAndNil(http);
    end;
  finally
    FreeAndNil(FS);
  end;
end;

procedure TdmSvrExecute.DSServerModuleCreate(Sender: TObject);
begin
  FContentStorageLocatorsCache:= TContentStorageLocatorsCache.Create(ContentStorageLocatorsCacheExpirySeconds);
end;

procedure TdmSvrExecute.DSServerModuleDestroy(Sender: TObject);
begin
  FreeAndNil(FContentStorageLocatorsCache);
end;

function TdmSvrExecute.ExecuteExternalFile(const ExecutePath, ExecuteParams,
  InputFileName, ResultExt: string; Timeout: Integer): OleVariant;
var
  TempFileName: string;
  ExecuteServerFolder: string;
  OutputFileName: string;
begin
  CriticalSection.Enter;
  try
    ExecuteServerFolder:= GetExecuteServerFolder;

    DelTree(ExecuteServerFolder);
    try
      ForceDirectories(ExecuteServerFolder);

      TempFileName:= STempFileName + FormatDateTime(SDateTimeFormatString, Now);
      OutputFileName:= MakeFileName(ExecuteServerFolder, TempFileName + '.' + ResultExt);

      Result:= ExecuteFile(ExecutePath, ExecuteParams, InputFileName, OutputFileName, TimeOut);
    finally
      DelTree(ExecuteServerFolder);
    end;  { try }
  finally
    CriticalSection.Leave;
  end;
end;

function TdmSvrExecute.ExecuteInternalFile(const ExecutePath,
  ExecuteParams: string; const InputExt, InputData: OleVariant;
  const ResultExt: string; Timeout: Integer): OleVariant;
var
  i: Integer;
  ExecuteServerFolder: string;
  TempFileName: string;
  ArrayOffset: Integer;
  InputFileName: string;
  OutputFileName: string;
  InternalInputExt: Variant;
  InternalInputData: Variant;
  FirstData: Variant;
begin
  CriticalSection.Enter;
  try
    Assert(VarIsStr(InputExt) or VarIsArray(InputExt));
    Assert(VarIsArray(InputData));

    InternalInputExt:= InputExt;
    if not VarIsArray(InternalInputExt) then
      InternalInputExt:= VarArrayOf([InternalInputExt]);

    InternalInputData:= InputData;
    FirstData:= InternalInputData[VarArrayLowBound(InternalInputData, 1)];
    if (not VarIsArray(FirstData)) and not (VarIsStr(FirstData) and IsURL(FirstData)) then
      InternalInputData:= VarArrayOf([InternalInputData]);

    ExecuteServerFolder:= GetExecuteServerFolder;

    DelTree(ExecuteServerFolder);
    try
      ForceDirectories(ExecuteServerFolder);

      TempFileName:= STempFileName + FormatDateTime(SDateTimeFormatString, Now);
      InputFileName:= MakeFileName(ExecuteServerFolder, TempFileName + '_input.' + VarToStr(InternalInputExt[0]));
      OutputFileName:= MakeFileName(ExecuteServerFolder, TempFileName + '_output.' + ResultExt);

      ArrayOffset:= VarArrayLowBound(InternalInputData, 1) - VarArrayLowBound(InternalInputExt, 1);
      for i:= VarArrayLowBound(InternalInputExt, 1) to VarArrayHighBound(InternalInputExt, 1) do
        WriteInputFile(InternalInputData[i + ArrayOffset], ChangeFileExt(InputFileName, '.' + VarToStr(InternalInputExt[i])));

      Result:= ExecuteFile(ExecutePath, ExecuteParams, InputFileName, OutputFileName, TimeOut);
    finally
      DelTree(ExecuteServerFolder);
    end;  { try }
  finally
    CriticalSection.Leave;
  end;
end;

function TdmSvrExecute.IsURL(const AValue: string): Boolean;
begin
  Result:= StartsText('http://', AValue) or StartsText('https://', AValue);
end;

procedure TdmSvrExecute.WriteInputFile(AFileData: Variant; const AFileName: string);
begin
  if VarIsStr(AFileData) then
    begin
      if IsURL(AFileData) then
        DownloadFile(AFileData, AFileName)
      else
        TFile.Copy(AFileData, AFileName);
    end
  else
    WriteVarArrayToFile(AFileData, AFileName);
end;

initialization
  CriticalSection:= TCriticalSection.Create;

finalization
  FreeAndNil(CriticalSection);

end.
