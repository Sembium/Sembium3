unit uSvrCommand;

interface

procedure StartInCommandMode;

implementation

uses
  Windows,
  Classes,
  SysUtils,
  StrUtils,
  Registry,
  uObjParams;

procedure ManageConnections(const AConnectionName: string; const AAccessBanType: TAccessBanType; const ALockMessage: string = '');
var
  r: TRegistry;
  KeyList: TStringList;
  s: string;
  MyNow: TDateTime;
begin
  KeyList:= TStringList.Create;
  try
    r:= TRegistry.Create(KEY_ALL_ACCESS);
    try
      r.RootKey:= HKEY_LOCAL_MACHINE;

      if r.OpenKey(GetDBDataModulesConfigKey, False) then
        try
          r.GetKeyNames(KeyList);
        finally
          r.CloseKey;
        end;  { try }

        for s in KeyList do
          if (UpperCase(s) = UpperCase(AConnectionName)) or (UpperCase(AConnectionName) = 'ALL') then
            if r.OpenKey(GetDBDataModulesConfigKey + '\' + s, False) then
              try
                r.WriteString(SAccessBanTypeParamName, IntToStr(AccessBanTypeToInt(AAccessBanType)));
                if (AAccessBanType = abtBlockClients) then
                  r.WriteString(SLockMessageParamName, ALockMessage);
              finally
                r.CloseKey;
              end;  { try }

      if r.OpenKey(GetBaseConfigKey, False) then
        try
          MyNow:= Now;  // ne ContextNow
          r.WriteDateTime(SConfigChangeDateTimeParamName, MyNow);
          r.WriteDateTime(SAccessBanChangeDateTimeParamName, MyNow);
        finally
          r.CloseKey;
        end;  { try }
    finally
      FreeAndNil(r);
    end;  { try }
  finally
    FreeAndNil(KeyList);
  end;  { try }
end;

procedure StartInCommandMode;

  type
    TCommandModeSwitch = (
      cmsLock,
      cmsUnlock
    );

    TCommandModeSwitches = set of TCommandModeSwitch;

  const
    LockParamSwitchName = 'lock';
    UnlockParamSwitchName = 'unlock';

  function GetConnectionName(const AParam: string): string;
  var
    FirstColonIndex, SecondColonIndex: Integer;
  begin
    FirstColonIndex:= PosEx(':', AParam);
    if (FirstColonIndex = 0) then
      Result:= ''
    else
      begin
        SecondColonIndex:= PosEx(':', AParam, FirstColonIndex + 1);
        if (SecondColonIndex = 0) then
          Result:= RightStr(AParam, Length(AParam) - FirstColonIndex)
        else
          Result:= Copy(AParam, FirstColonIndex + 1, SecondColonIndex - (FirstColonIndex + 1));
      end;
  end;

  function GetLockMessage(const AParam: string): string;
  var
    FirstColonIndex, SecondColonIndex: Integer;
  begin
    FirstColonIndex:= PosEx(':', AParam);
    if (FirstColonIndex = 0) then
      Result:= ''
    else
      begin
        SecondColonIndex:= PosEx(':', AParam, FirstColonIndex + 1);
        if (SecondColonIndex = 0) then
          Result:= ''
        else
          Result:= RightStr(AParam, Length(AParam) - SecondColonIndex);
      end;
  end;

var
  CommandModeSwitches: TCommandModeSwitches;
  LockConnectionName: string;
  LockConnectionMessage: string;
  UnlockConnectionName: string;
  CurrentParam: string;
  i: Integer;
begin
  for i:= 1 to ParamCount do
    begin
      CurrentParam:= ParamStr(i);
      if (CurrentParam <> '') and CharInSet(CurrentParam[1], SwitchChars) then
        begin
          if (Copy(CurrentParam, 2, Length(LockParamSwitchName)) = LockParamSwitchName) then
            begin
              CommandModeSwitches:= CommandModeSwitches + [cmsLock];
              LockConnectionName:= GetConnectionName(CurrentParam);
              LockConnectionMessage:= GetLockMessage(CurrentParam);
            end;  { if }

          if (Copy(CurrentParam, 2, Length(UnlockParamSwitchName)) = UnlockParamSwitchName) then
            begin
              CommandModeSwitches:= CommandModeSwitches + [cmsUnlock];
              UnlockConnectionName:= GetConnectionName(CurrentParam);
            end;  { if }
        end;  { if }
    end;  { for }

    if (cmsLock in CommandModeSwitches) then
      begin
        if (LockConnectionName = '') then
          raise Exception.Create('Lock connection name not specified! Usage /lock:<connection name | all>[:["lock message"]]');

        ManageConnections(LockConnectionName, abtBlockClients,LockConnectionMessage);
      end;  { if }

    if (cmsUnlock in CommandModeSwitches) then
      begin
        if (UnlockConnectionName = '') then
          raise Exception.Create('Unlock connection name not specified! Usage /unlock:<connection name | all>[:["lock message"]]');

        ManageConnections(UnlockConnectionName, abtNone);
      end;  { if }
end;

end.
