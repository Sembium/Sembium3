unit uDBConfigRepository;

interface

uses
  uUtils,
  uObjParams;

function GetConfiguredDBNames: TStringArray;
function GetConfiguredDBAccessBanType(const ADBName: string): TAccessBanType;
function GetConfiguredDBAccessBanMessage(const ADBName: string): string;
function GetConfiguredDBIsReadOnly(const ADBName: string): Boolean;
function GetConfiguredDBIsTest(const ADBName: string): Boolean;
function GetConfiguredDBContentStorageContainerName(const ADBName: string): string;

implementation

uses
  System.Classes,
  System.SysUtils,
  System.Win.Registry,
  Winapi.Windows;

{ Routines }

function GetConfiguredDBNames: TStringArray;
var
  r: TRegistry;
  KeyList: TStringList;
begin
  KeyList:= TStringList.Create;
  try
    r:= TRegistry.Create(KEY_READ);
    try
      r.RootKey:= HKEY_LOCAL_MACHINE;
      if r.OpenKey(GetDBDataModulesConfigKey, False) then
        try
          r.GetKeyNames(KeyList);
        finally
          r.CloseKey;
        end;
    finally
      FreeAndNil(r);
    end;

    Result:= KeyList.ToStringArray;
  finally
    FreeAndNil(KeyList);
  end;
end;

function GetConfiguredDBAccessBanType(const ADBName: string): TAccessBanType;
var
  r: TRegistry;
begin
  Result:= abtNone;

  r:= TRegistry.Create(KEY_READ);
  try
    r.RootKey:= HKEY_LOCAL_MACHINE;
    if r.OpenKey(GetDBDataModulesConfigKey + '\' + ADBName, False) then
      try
        if r.ValueExists(SAccessBanTypeParamName) then
          try
            Result:= IntToAccessBanType(StrToInt(r.ReadString(SAccessBanTypeParamName)));
          except
            // do nothing
          end;
      finally
        r.CloseKey;
      end;
  finally
    FreeAndNil(r);
  end;
end;

function GetConfiguredDBAccessBanMessage(const ADBName: string): string;
var
  r: TRegistry;
begin
  r:= TRegistry.Create(KEY_READ);
  try
    r.RootKey:= HKEY_LOCAL_MACHINE;
    if r.OpenKey(GetDBDataModulesConfigKey + '\' + ADBName, False) then
      try
        if r.ValueExists(SLockMessageParamName) then
          try
            Result:= r.ReadString(SLockMessageParamName);
          except
            // do nothing
          end;
      finally
        r.CloseKey;
      end;
  finally
    FreeAndNil(r);
  end;
end;

function GetConfiguredDBIsReadOnly(const ADBName: string): Boolean;
var
  r: TRegistry;
begin
  Result:= False;

  r:= TRegistry.Create(KEY_READ);
  try
    r.RootKey:= HKEY_LOCAL_MACHINE;
    if r.OpenKey(GetDBDataModulesConfigKey + '\' + ADBName, False) then
      try
        if r.ValueExists(SReadOnlyDBParamName) then
          try
            Result:= (StrToIntDef(r.ReadString(SReadOnlyDBParamName), 0) <> 0);
          except
            // do nothing
          end;
      finally
        r.CloseKey;
      end;
  finally
    FreeAndNil(r);
  end;
end;

function GetConfiguredDBIsTest(const ADBName: string): Boolean;
var
  r: TRegistry;
begin
  Result:= False;

  r:= TRegistry.Create(KEY_READ);
  try
    r.RootKey:= HKEY_LOCAL_MACHINE;
    if r.OpenKey(GetDBDataModulesConfigKey + '\' + ADBName, False) then
      try
        if r.ValueExists(STestDBParamName) then
          try
            Result:= (StrToIntDef(r.ReadString(STestDBParamName), 0) <> 0);
          except
            // do nothing
          end;
      finally
        r.CloseKey;
      end;
  finally
    FreeAndNil(r);
  end;
end;

function GetConfiguredDBContentStorageContainerName(const ADBName: string): string;
var
  r: TRegistry;
begin
  r:= TRegistry.Create(KEY_READ);
  try
    r.RootKey:= HKEY_LOCAL_MACHINE;
    if r.OpenKey(GetDBDataModulesConfigKey + '\' + ADBName, False) then
      try
        if r.ValueExists(SContentStorageContainerNameParamName) then
          try
            Result:= r.ReadString(SContentStorageContainerNameParamName);
          except
            // do nothing
          end;
      finally
        r.CloseKey;
      end;
  finally
    FreeAndNil(r);
  end;
end;

end.
