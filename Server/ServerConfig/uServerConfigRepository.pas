unit uServerConfigRepository;

interface

uses
  uServerConfig;

function LoadServerConfig(const ALocation: string = ''): TServerConfig;
procedure SaveServerConfig(AServerConfig: TServerConfig; const ALocation: string = '');

function GetServerConfigLocation: string;

function ServerConfigToJson(AServerConfig: TServerConfig): string;
function ServerConfigFromJson(AJson: string): TServerConfig;

procedure SaveServerConfigToFile(AServerConfig: TServerConfig;
  const AFileName: string);
function LoadServerConfigFromFile(const AFileName: string): TServerConfig;

function LoadServerConfigFromUrl(const AUrl: string): TServerConfig;

procedure SaveServerConfigToRegistry(AServerConfig: TServerConfig;
  const AServerConfigRegKey, AConnectionsConfigRegKey: string);
function LoadServerConfigFromRegistry(
  const AServerConfigRegKey, AConnectionsConfigRegKey: string): TServerConfig;

implementation

uses
  System.Classes, System.SysUtils, System.Win.Registry, Winapi.Windows,
  REST.Json, System.IOUtils, uObjParams, uUtils, uJsonUtils, HttpUtils;

function LoadServerConfig(const ALocation: string): TServerConfig;
begin
  if (ALocation = '') or SameText(ALocation, 'Registry') then
    Exit(LoadServerConfigFromRegistry(GetBaseConfigKey, GetDBDataModulesConfigKey));

  if IsURL(ALocation) then
    Exit(LoadServerConfigFromUrl(ALocation));

  Result:= LoadServerConfigFromFile(ALocation);
end;

procedure SaveServerConfig(AServerConfig: TServerConfig; const ALocation: string);
begin
  if (ALocation = '') or SameText(ALocation, 'Registry') then
    begin
      SaveServerConfigToRegistry(AServerConfig, GetBaseConfigKey, GetDBDataModulesConfigKey);
      Exit;
    end;

//  if IsURL(ALocation) then
//    begin
//      SaveServerConfigToUrl(AServerConfig, ALocation);
//      Exit;
//    end;

  SaveServerConfigToFile(AServerConfig, ALocation);
end;

function GetServerConfigLocation: string;
begin
  if not FindCmdLineSwitch('configlocation', Result, True, [clstValueAppended]) then
    Result:= '';
end;

function ServerConfigToJson(AServerConfig: TServerConfig): string;
begin
  Result:= TJson.ObjectToJsonString(AServerConfig);
end;

function ServerConfigFromJson(AJson: string): TServerConfig;
begin
  Result:= TJson.JsonToObject<TServerConfig>(AJson);
end;

procedure SaveServerConfigToFile(AServerConfig: TServerConfig;
  const AFileName: string);
begin
  TFile.WriteAllText(AFileName, ServerConfigToJson(AServerConfig));
end;

function LoadServerConfigFromFile(const AFileName: string): TServerConfig;
begin
  Result:= ServerConfigFromJson(TFile.ReadAllText(AFileName));
end;

function LoadServerConfigFromUrl(const AUrl: string): TServerConfig;
begin
  Result:= ServerConfigFromJson(HttpGetString(AUrl, 'application/json'));
end;

procedure SaveServerConfigToRegistry(AServerConfig: TServerConfig;
  const AServerConfigRegKey, AConnectionsConfigRegKey: string);

  procedure WriteValue(ARegistry: TRegistry; const AValueName, AValue: string);
  begin
    if (AValue = '') then
      ARegistry.DeleteValue(AValueName)
    else
      ARegistry.WriteString(AValueName, AValue);
  end;

  procedure SaveSettings(ARegistry: TRegistry);
  begin
    if ARegistry.OpenKey(AServerConfigRegKey, True) then
      try
        WriteValue(ARegistry, SDatasnapPortParamName, AServerConfig.DatasnapPort.ToString());
        WriteValue(ARegistry, SHttpPortParamName, AServerConfig.HttpPort.ToString());
        WriteValue(ARegistry, SVersionHttpPortParamName, AServerConfig.VersionHttpPort.ToString());
        WriteValue(ARegistry, SServerCallsLogDirectoryParamName, AServerConfig.ServerCallsLogDirectory);
        WriteValue(ARegistry, SServerCallsAsyncLoggingParamName, Ord(AServerConfig.ServerCallsAsyncLogging).ToString());
        WriteValue(ARegistry, SLockOtherComputersSessionsParamName, Ord(AServerConfig.LockOtherComputersSessions).ToString());
        WriteValue(ARegistry, SComputerSwitchTimeoutMinutesParamName, AServerConfig.ComputerSwitchTimeoutMinutes.ToString());
      finally
        ARegistry.CloseKey;
      end;  { try }
  end;  { SaveSettings }

  procedure SaveConnections(ARegistry: TRegistry);
  var
    KeyList: TStringList;
    s: string;
    c: TServerConnectionConfig;
  begin
    KeyList:= TStringList.Create;
    try
      if ARegistry.OpenKey(AConnectionsConfigRegKey, False) then
        try
          ARegistry.GetKeyNames(KeyList);

          for s in KeyList do
            if (AServerConfig.TryGetConnection(s) = nil) then
              ARegistry.DeleteKey(s);
        finally
          ARegistry.CloseKey;
        end;  { try }

      for c in AServerConfig.Connections do
        begin
          if ARegistry.OpenKey(AConnectionsConfigRegKey + '\' + c.DBConnectionName, True) then
            try
              WriteValue(ARegistry, SDBConnectionTypeParamName, c.DBConnectionType);
              WriteValue(ARegistry, SDBHostParamName, c.DBHost);
              WriteValue(ARegistry, SDBPortParamName, c.DBPort);
              WriteValue(ARegistry, SDBServiceParamName, c.DBService);
              WriteValue(ARegistry, SDBUserParamName, c.DBUser);
              WriteValue(ARegistry, SDBPasswordParamName, c.DBPassword);
              WriteValue(ARegistry, SAccessBanTypeParamName, c.AccessBanType.ToString());
              WriteValue(ARegistry, SLockMessageParamName, c.LockMessage);
              WriteValue(ARegistry, SOrderNoParamName, c.OrderNo.ToString());
              WriteValue(ARegistry, SReadOnlyDBParamName, Ord(c.IsReadOnlyDB).ToString());
              WriteValue(ARegistry, STestDBParamName, Ord(c.IsTestDB).ToString());
              WriteValue(ARegistry, SContentStorageContainerNameParamName, c.ContentStorageContainerName);
            finally
              ARegistry.CloseKey;
            end;  { try }
        end;  { while }
    finally
      FreeAndNil(KeyList);
    end;  { try }
  end;  { SaveConnections }

var
  r: TRegistry;
begin
  r:= TRegistry.Create(KEY_ALL_ACCESS);
  try
    r.RootKey:= HKEY_LOCAL_MACHINE;

    SaveSettings(r);
    SaveConnections(r);
  finally
    FreeAndNil(r);
  end;  { try }
end;

function LoadServerConfigFromRegistry(const AServerConfigRegKey, AConnectionsConfigRegKey: string): TServerConfig;

  procedure LoadSettings(AServerConfig: TServerConfig; ARegistry: TRegistry);
  begin
    if ARegistry.OpenKeyReadOnly(AServerConfigRegKey) then
      try
        AServerConfig.DatasnapPort:= StrToIntDef(ARegistry.ReadStringDef(SDatasnapPortParamName), 0);
        AServerConfig.HttpPort:= StrToIntDef(ARegistry.ReadStringDef(SHttpPortParamName), 0);
        AServerConfig.VersionHttpPort:= StrToIntDef(ARegistry.ReadStringDef(SVersionHttpPortParamName), 0);
        AServerConfig.ServerCallsLogDirectory:= ARegistry.ReadStringDef(SServerCallsLogDirectoryParamName);
        AServerConfig.ServerCallsAsyncLogging:= (ARegistry.ReadStringDef(SServerCallsAsyncLoggingParamName) = '1');
        AServerConfig.LockOtherComputersSessions:= (ARegistry.ReadStringDef(SLockOtherComputersSessionsParamName) = '1');
        AServerConfig.ComputerSwitchTimeoutMinutes:= StrToIntDef(ARegistry.ReadStringDef(SComputerSwitchTimeoutMinutesParamName), 0);
      finally
        ARegistry.CloseKey;
      end;  { try }
  end;  { LoadSettings }

  procedure LoadConnections(AServerConfig: TServerConfig; ARegistry: TRegistry);
  var
    KeyList: TStringList;
    s: string;
  begin
    KeyList:= TStringList.Create;
    try
      if ARegistry.OpenKey(AConnectionsConfigRegKey, False) then
        try
          ARegistry.GetKeyNames(KeyList);
        finally
          ARegistry.CloseKey;
        end;  { try }

      for s in KeyList do
        if ARegistry.OpenKey(AConnectionsConfigRegKey + '\' + s, False) then
          try
            AServerConfig.AddConnection(
              TServerConnectionConfig.Create(
                s,
                ARegistry.ReadString(SDBConnectionTypeParamName),
                ARegistry.ReadString(SDBHostParamName),
                ARegistry.ReadString(SDBPortParamName),
                ARegistry.ReadString(SDBServiceParamName),
                ARegistry.ReadString(SDBUserParamName),
                ARegistry.ReadString(SDBPasswordParamName),
                StrToIntDef(ARegistry.ReadString(SAccessBanTypeParamName), 0),
                ARegistry.ReadString(SLockMessageParamName),
                StrToIntDef(ARegistry.ReadString(SOrderNoParamName), 0),
                StrToIntDef(ARegistry.ReadString(SReadOnlyDBParamName), 0) <> 0,
                StrToIntDef(ARegistry.ReadString(STestDBParamName), 0) <> 0,
                ARegistry.ReadString(SContentStorageContainerNameParamName)
              )
            );
          finally
            ARegistry.CloseKey;
          end;  { try }
    finally
      FreeAndNil(KeyList);
    end;  { try }
  end;  { LoadConnections }

var
  r: TRegistry;
begin
  r:= TRegistry.Create(KEY_READ);
  try
    r.RootKey:= HKEY_LOCAL_MACHINE;

    Result:= TServerConfig.Create;
    try
      LoadSettings(Result, r);
      LoadConnections(Result, r);

    except
      FreeAndNil(Result);
      raise;
    end;
  finally
    FreeAndNil(r);
  end;  { try }
end;

end.