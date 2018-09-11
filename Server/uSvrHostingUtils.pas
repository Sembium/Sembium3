unit uSvrHostingUtils;

interface

// return the home from the command line
function GetHomeSwitch: string;
function GetHome: string;
function ExtractHome(const ACommandLine: string): string;
function MakeHomeSwitch(const AHome: string): string;

function ProgramDataHomePath: string;

function GetBaseConfigKey: string;
function GetDataModulesConfigKey: string;
function GetDBDataModulesConfigKey: string;

implementation

uses
  System.SysUtils, System.StrUtils, System.IOUtils, uSvrApp;

const
  HomeSwitchName = 'home';
  DefaultHome = 'DefaultHome';

  SRegServerObjectsKey = SRegServerKey + '\ServerObjects';
  SRegServerObjectsDataModulesKey = SRegServerObjectsKey + '\DataModules';
  SRegServerObjectsDBDataModulesKey = SRegServerObjectsKey + '\DBDataModules';

function GetHomeSwitch: string;
var
  i: Integer;
  Switch: string;
  HomeSwitchPrefix: string;
begin
  HomeSwitchPrefix:= Format('/%s:', [HomeSwitchName]);

  for i:= 1 to ParamCount do
    begin
      Switch:= ParamStr(i);
      if StartsText(HomeSwitchPrefix, Switch) then
        Exit(Switch);
    end;

  Result:= MakeHomeSwitch(DefaultHome);
end;

function GetHome: string;
var
  HomeSwitch: string;
  HomeSwitchPrefix: string;
begin
  HomeSwitch:= GetHomeSwitch;
  HomeSwitchPrefix:= Format('/%s:', [HomeSwitchName]);
  Result:= RightStr(HomeSwitch, Length(HomeSwitch) - Length(HomeSwitchPrefix));
end;

function ExtractHome(const ACommandLine: string): string;
var
  HomeSwitchPrefix: string;
  p: Integer;
  e: Integer;
begin
  HomeSwitchPrefix:= Format('/%s:', [HomeSwitchName]);
  p:= Pos(HomeSwitchPrefix, ACommandLine);

  Result:= '';
  if (p > 0) then
    begin
      e:= PosEx(' ', ACommandLine + ' ', p);
      Result:= Copy(ACommandLine, p + Length(HomeSwitchPrefix), e - (p + Length(HomeSwitchPrefix)) + 1)
    end;

  if (Result = '') then
    Result:= DefaultHome;
end;

function MakeHomeSwitch(const AHome: string): string;
begin
  Result:= Format('/%s:%s', [HomeSwitchName, AHome]);
end;

function ProgramDataHomePath: string;
var
  AppDataPath: string;
begin
  AppDataPath:= GetEnvironmentVariable('ProgramData');
  Result:= TPath.Combine(AppDataPath, Format(SProgramDataPath, [GetHome]));
end;

function GetBaseConfigKey: string;
begin
  Result:= Format(SRegServerKey, [GetHome])
end;

function GetBaseObjectsConfigKey: string;
begin
  Result:= Format(SRegServerObjectsKey, [GetHome])
end;

function GetDataModulesConfigKey: string;
begin
  Result:= Format(SRegServerObjectsDataModulesKey, [GetHome])
end;

function GetDBDataModulesConfigKey: string;
begin
  Result:= Format(SRegServerObjectsDBDataModulesKey, [GetHome])
end;

end.
