unit uTimeZoneUtils;

interface

uses
  Windows, Classes, SysUtils;

type
  TTimeZoneRec = record
    TimeZoneInfo: TTimeZoneInformation;  // tova pole e purvo za da e binary compatible strukturata
    Id: string;
    DisplayName: string;
  end;

type
  TTimeZones = class
  private
    FSync: TMultiReadExclusiveWriteSynchronizer;
    FList: TStringList;
    FLoadDateTime: TDateTime;
    procedure BeginRead;
    procedure EndRead;
    procedure BeginWrite;
    procedure EndWrite;
    procedure CheckLoaded;
    procedure DoLoad;
    procedure DoClearList;
  protected
    function MustLoad: Boolean; virtual;
    procedure JustLoaded; virtual;

    function DoGetTimeZone(ATimeZoneId: string): TTimeZoneRec; virtual;
    procedure DoGetTimeZoneIdList(AStrings: TStrings); virtual;

    function DoLoadTimeZone(ATimeZoneId: string): TTimeZoneRec; virtual;
    procedure DoLoadTimeZoneIdList(AStrings: TStrings); virtual;
  public
    constructor Create;
    destructor Destroy; override;
    procedure GetTimeZoneIdList(AStrings: TStrings);
    function GetTimeZone(ATimeZoneId: string): TTimeZoneRec;
  end;

function TimeZones: TTimeZones;

function NowInTimeZone(ATimeZoneId: string): TDateTime;

implementation

uses
  Registry, DateUtils;

const
  TTimeZonesRegistryKey = 'SOFTWARE\Microsoft\Windows NT\CurrentVersion\Time Zones';
  ReloadPeriod = 1; // 1 denonoshtie

type
  TTimeZoneObject = class
  private
    FTimeZoneRec: TTimeZoneRec;
  end;

var
  FTimeZones: TTimeZones;

function TimeZones: TTimeZones;
begin
  Result:= FTimeZones;
end;

function NowInTimeZone(ATimeZoneId: string): TDateTime;
var
  TimeZone: TTimeZoneRec;
  UtcSystemTime: TSystemTime;
  ResultSystemTime: TSystemTime;
begin
  if (ATimeZoneId = '') then
    Result:= Now
  else
    begin
      TimeZone:= TimeZones.GetTimeZone(ATimeZoneId);
      GetSystemTime(UtcSystemTime);

      if not SystemTimeToTzSpecificLocalTime(@TimeZone.TimeZoneInfo, UtcSystemTime, ResultSystemTime) then
        raise Exception.Create('SystemTimeToTzSpecificLocalTime() failed');

      Result:= SystemTimeToDateTime(ResultSystemTime);
    end;
end;

{ TTimeZones }

procedure TTimeZones.BeginRead;
begin
  CheckLoaded;
  FSync.BeginRead;
end;

procedure TTimeZones.BeginWrite;
begin
  FSync.BeginWrite;
end;

procedure TTimeZones.CheckLoaded;
begin
  // narochno ia ima 2 puti proverkata, za da ne se sluchi da load-vame 2 puti burzo edin sled drug
  if MustLoad then
    begin
      BeginWrite;
      try
        if MustLoad then
          begin
            DoLoad;
            JustLoaded;
          end;  { if }
      finally
        EndWrite;
      end;  { try }
    end;  { if }
end;

constructor TTimeZones.Create;
begin
  inherited Create;
  FSync:= TMultiReadExclusiveWriteSynchronizer.Create;
  FList:= TStringList.Create;
  FList.Sorted:= True;
end;

destructor TTimeZones.Destroy;
begin
  DoClearList;
  FreeAndNil(FList);
  FreeAndNil(FSync);
  inherited Destroy;
end;

procedure TTimeZones.DoClearList;
var
  i: Integer;
begin
  for i:= 0 to FList.Count - 1 do
    if Assigned(FList.Objects[i]) then
      begin
        FList.Objects[i].Free;
        FList.Objects[i]:= nil;
      end;
      
  FList.Clear;
end;

function TTimeZones.DoGetTimeZone(ATimeZoneId: string): TTimeZoneRec;
var
  i: Integer;
begin
  i:= FList.IndexOf(ATimeZoneId);

  if (i < 0) then
    raise Exception.CreateFmt('Time zone "%s" not found', [ATimeZoneId]);

  Assert(Assigned(FList.Objects[i]));
  Assert(FList.Objects[i] is TTimeZoneObject);

  Result:= (FList.Objects[i] as TTimeZoneObject).FTimeZoneRec;
end;

procedure TTimeZones.DoGetTimeZoneIdList(AStrings: TStrings);
var
  s: string;
begin
  AStrings.Clear;
  for s in FList do
    AStrings.Add(s);    
end;

procedure TTimeZones.DoLoad;
var
  i: Integer;
  tzo: TTimeZoneObject;
begin
  DoClearList;
  DoLoadTimeZoneIdList(FList);
  for i:= 0 to FList.Count - 1 do
    begin
      tzo:= TTimeZoneObject.Create;
      try
        tzo.FTimeZoneRec:= DoLoadTimeZone(FList[i]);
        FList.Objects[i]:= tzo;
      except
        FreeAndNil(tzo);
        raise;
      end;  { try }
    end;  { for }
end;

function TTimeZones.DoLoadTimeZone(ATimeZoneId: string): TTimeZoneRec;
type
  PRegTziFormat = ^TRegTziFormat;
  TRegTziFormat = record
    Bias: Longint;
    StandardBias: Longint;
    DaylightBias: Longint;
    StandardDate: TSystemTime;
    DaylightDate: TSystemTime;
  end;
var
  Reg: TRegistry;
  tzi: TRegTziFormat;
begin
  Result.Id:= ATimeZoneId;

  Reg:= TRegistry.Create(KEY_READ);
  try
    Reg.RootKey:= HKEY_LOCAL_MACHINE;

    if Reg.OpenKey(TTimeZonesRegistryKey + '\' + ATimeZoneId, False) then
      try
        Reg.ReadBinaryData('TZI', tzi, SizeOf(tzi));

        Result.TimeZoneInfo.Bias:= tzi.Bias;
        Result.TimeZoneInfo.StandardDate:= tzi.StandardDate;
        Result.TimeZoneInfo.StandardBias:= tzi.StandardBias;
        Result.TimeZoneInfo.DaylightDate:= tzi.DaylightDate;
        Result.TimeZoneInfo.DaylightBias:= tzi.DaylightBias;

        StringToWideChar(Reg.ReadString('Std'), Result.TimeZoneInfo.StandardName, SizeOf(Result.TimeZoneInfo.StandardName));
        StringToWideChar(Reg.ReadString('Dlt'), Result.TimeZoneInfo.DaylightName, SizeOf(Result.TimeZoneInfo.DaylightName));

        Result.DisplayName:= Reg.ReadString('Display');
      finally
        Reg.CloseKey;
      end  { try }
    else
      raise Exception.CreateFmt('Registry key for time zone "%s" not found', [ATimeZoneId]);
  finally
    FreeAndNil(Reg);
  end;  { try }
end;

procedure TTimeZones.DoLoadTimeZoneIdList(AStrings: TStrings);
var
  Reg: TRegistry;
begin
  Reg:= TRegistry.Create(KEY_READ);
  try
    Reg.RootKey:= HKEY_LOCAL_MACHINE;

    if Reg.OpenKey(TTimeZonesRegistryKey, False) then
      try
        AStrings.Clear;
        Reg.GetKeyNames(AStrings);
      finally
        Reg.CloseKey;
      end  { try }
    else
      raise Exception.Create('Time zones registry key not found');
  finally
    FreeAndNil(Reg);
  end;  { try }
end;

procedure TTimeZones.EndRead;
begin
  FSync.EndRead;
end;

procedure TTimeZones.EndWrite;
begin
  FSync.EndWrite;
end;

function TTimeZones.GetTimeZone(ATimeZoneId: string): TTimeZoneRec;
begin
  BeginRead;
  try
    Result:= DoGetTimeZone(ATimeZoneId);
  finally
    EndRead;
  end;  { try }
end;

procedure TTimeZones.GetTimeZoneIdList(AStrings: TStrings);
begin
  BeginRead;
  try
    DoGetTimeZoneIdList(AStrings);
  finally
    EndRead;
  end;  { try }
end;

procedure TTimeZones.JustLoaded;
begin
  FLoadDateTime:= Now;  // tuk ne triabva da e ContextNow
end;

function TTimeZones.MustLoad: Boolean;
begin
  Result:= (Abs(Now - FLoadDateTime) > ReloadPeriod);  // tuk ne triabva da e ContextNow
end;

initialization
  FTimeZones:= TTimeZones.Create;

finalization
  FreeAndNil(FTimeZones);
end.
