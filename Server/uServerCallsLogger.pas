unit uServerCallsLogger;

interface

type
  TLogOccurrence = (loBefore, loAfter);

type
  IServerCallsLogger = interface
    procedure LogProviderCall(
      const ALogOccurance: TLogOccurrence;
      const AClassName: string;
      const AMethodName: string;
      const AProviderName: string;
      const AParamsMemory: Cardinal;
      const ADurationMilliseconds: Cardinal;
      const ADBName: string;
      const AEmployeeCode: Integer;
      const AExceptionMessage: string = ''
    );
    procedure LogMethodCall(
      const AMethodName: string;
      const ADBName: string;
      const AEmployeeCode: Integer
    );
    procedure LogTrace(const AMessage: string);
  end;

type
  TServerCallsFileLogger = class(TInterfacedObject, IServerCallsLogger)
  strict private
    FServerCallsLogDirectory: string;
    FServerCallsAsyncLogging: Boolean;
    class function GetFileName(const AServerCallsLogDirectory: string; const AFileNamePrefix: string; const ADateTime: TDateTime): string;
    class procedure LogLine(const AServerCallsLogDirectory: string; const AFileNamePrefix: string; const ADateTime: TDateTime; const ALine: string);
    class function FormatJsonDateTime(const AValue: TDateTime): string;
    class function FormatJsonString(const AValue: string): string;

    class procedure InternalLogProviderCall(
      const AServerCallsLogDirectory: string;
      const ADateTime: TDateTime;
      const ALogOccurance: TLogOccurrence;
      const AClassName: string;
      const AMethodName: string;
      const AProviderName: string;
      const AParamsMemory: Cardinal;
      const ADurationMilliseconds: Cardinal;
      const ADBName: string;
      const AEmployeeCode: Integer;
      const AExceptionMessage: string = ''
    );
    class procedure InternalLogMethodCall(
      const AServerCallsLogDirectory: string;
      const ADateTime: TDateTime;
      const AMethodName: string;
      const ADBName: string;
      const AEmployeeCode: Integer
    );
    class procedure InternalLogTrace(
      const AServerCallsLogDirectory: string;
      const ADateTime: TDateTime;
      const ATraceMessage: string
    );

  public
    procedure LogProviderCall(
      const ALogOccurance: TLogOccurrence;
      const AClassName: string;
      const AMethodName: string;
      const AProviderName: string;
      const AParamsMemory: Cardinal;
      const ADurationMilliseconds: Cardinal;
      const ADBName: string;
      const AEmployeeCode: Integer;
      const AExceptionMessage: string = ''
    );
    procedure LogMethodCall(
      const AMethodName: string;
      const ADBName: string;
      const AEmployeeCode: Integer
    );
    procedure LogTrace(const ATraceMessage: string);

    constructor Create(const AServerCallsLogDirectory: string; const AServerCallsAsyncLogging: Boolean);
  end;

type
  TServerCallsLoggerFactory = class
  strict private
    class var FInstance: IServerCallsLogger;
  public
    class function GetLogger: IServerCallsLogger;
    class procedure Initialize(const AServerCallsLogDirectory: string; const AServerCallsAsyncLogging: Boolean);
  end;

type
  TRoutineTraceLogger = record
  strict private
    FRoutineName: string;
  public
    constructor Create(const ARoutineName: string);
    procedure LogEnter;
    procedure LogLeave;
    procedure LogException;
  end;

procedure LogTrace(const ATraceMessage: string);

implementation

uses
  System.IOUtils, System.SysUtils, System.Classes, Winapi.Windows,
  JclStrings, System.StrUtils, System.Types, uUtils, System.Threading;

const
  SBefore = 'Before';
  SAfter = 'After';

function LogOccurrenceToStr(const AValue: TLogOccurrence): string;
const
  Results: array[TLogOccurrence] of string = (SBefore, SAfter);
begin
  Result:= Results[AValue];
end;

{ TServerCallsFileLogger }

constructor TServerCallsFileLogger.Create(const AServerCallsLogDirectory: string;
  const AServerCallsAsyncLogging: Boolean);
begin
  FServerCallsLogDirectory:= AServerCallsLogDirectory;
  FServerCallsAsyncLogging:= AServerCallsAsyncLogging;
end;

class function TServerCallsFileLogger.FormatJsonDateTime(const AValue: TDateTime): string;
begin
  Result:= FormatDateTime('yyyy-mm-dd"T"hh:nn:ss.zzz"Z"', AValue);
end;

class function TServerCallsFileLogger.FormatJsonString(const AValue: string): string;
begin
  Result:= AValue;
  Result:= StringReplace(Result, '\', '\\', [rfReplaceAll]);
  Result:= StringReplace(Result, '"', '\"', [rfReplaceAll]);
  Result:= StringReplace(Result, #10#13, ' ', [rfReplaceAll]);
  Result:= StringReplace(Result, #10, ' ', [rfReplaceAll]);
  Result:= StringReplace(Result, #13, ' ', [rfReplaceAll]);
end;

class function TServerCallsFileLogger.GetFileName(const AServerCallsLogDirectory: string; const AFileNamePrefix: string; const ADateTime: TDateTime): string;
var
  DirectoryName: string;
begin
  DirectoryName:= TPath.Combine(AServerCallsLogDirectory, FormatDateTime('yyyy-mm-dd', ADateTime));
  Result:= TPath.Combine(DirectoryName, AFileNamePrefix + FormatFloat('00000000000000000000', GetCurrentThreadID()) + '.log');
end;

class procedure TServerCallsFileLogger.LogLine(const AServerCallsLogDirectory: string;
  const AFileNamePrefix: string; const ADateTime: TDateTime; const ALine: string);
var
  FileName: string;
begin
  if SameText(AServerCallsLogDirectory, 'console') then
    begin
      WriteLn(ALine);
    end
  else
    begin
      FileName:= GetFileName(AServerCallsLogDirectory, AFileNamePrefix, ADateTime);
      TDirectory.CreateDirectory(TPath.GetDirectoryName(FileName));
      TFile.AppendAllText(FileName, ALine, TEncoding.UTF8);
    end;
end;

procedure TServerCallsFileLogger.LogMethodCall(const AMethodName,
  ADBName: string; const AEmployeeCode: Integer);
var
  dt: TDateTime;
  ServerCallsLogDirectory: string;
begin
  dt:= Now;
  ServerCallsLogDirectory:= FServerCallsLogDirectory;
  if not FServerCallsAsyncLogging then
    begin
      InternalLogMethodCall(ServerCallsLogDirectory, dt, AMethodName, ADBName, AEmployeeCode);
    end
  else
    TTask.Run(
      procedure begin
        InternalLogMethodCall(ServerCallsLogDirectory, dt, AMethodName, ADBName, AEmployeeCode);
      end
    );
end;

procedure TServerCallsFileLogger.LogProviderCall(
  const ALogOccurance: TLogOccurrence; const AClassName, AMethodName,
  AProviderName: string; const AParamsMemory, ADurationMilliseconds: Cardinal;
  const ADBName: string; const AEmployeeCode: Integer;
  const AExceptionMessage: string);
var
  dt: TDateTime;
  ServerCallsLogDirectory: string;
begin
  dt:= Now;
  ServerCallsLogDirectory:= FServerCallsLogDirectory;
  if not FServerCallsAsyncLogging then
    begin
      InternalLogProviderCall(
        ServerCallsLogDirectory,
        dt,
        ALogOccurance,
        AClassName,
        AMethodName,
        AProviderName,
        AParamsMemory,
        ADurationMilliseconds,
        ADBName,
        AEmployeeCode,
        AExceptionMessage);
    end
  else
    TTask.Run(
      procedure begin
        InternalLogProviderCall(
          ServerCallsLogDirectory,
          dt,
          ALogOccurance,
          AClassName,
          AMethodName,
          AProviderName,
          AParamsMemory,
          ADurationMilliseconds,
          ADBName,
          AEmployeeCode,
          AExceptionMessage);
      end
    );
end;

procedure TServerCallsFileLogger.LogTrace(const ATraceMessage: string);
var
  dt: TDateTime;
  ServerCallsLogDirectory: string;
begin
  dt:= Now;
  ServerCallsLogDirectory:= FServerCallsLogDirectory;
  if not FServerCallsAsyncLogging then
    begin
      InternalLogTrace(ServerCallsLogDirectory, dt, ATraceMessage);
    end
  else
    TTask.Run(
      procedure begin
        InternalLogTrace(ServerCallsLogDirectory, dt, ATraceMessage);
      end
    );
end;

class procedure TServerCallsFileLogger.InternalLogMethodCall(
  const AServerCallsLogDirectory: string;
  const ADateTime: TDateTime;
  const AMethodName: string;
  const ADBName: string;
  const AEmployeeCode: Integer);
var
  MethodNames: TStringDynArray;
  LogEntry: string;
begin
  MethodNames:= System.StrUtils.SplitString(AMethodName, '.');

  LogEntry:= Format('{ "LogDateTime": "%s", "ClassName": "%s", "MethodName": "%s", "DBName": "%s", "EmployeeCode": "%d" }',
    [FormatJsonDateTime(ADateTime), MethodNames[0], MethodNames[1], ADBName, AEmployeeCode]);

  LogLine(AServerCallsLogDirectory, 'MethodCalls', ADateTime, LogEntry + SLineBreak);
end;

class procedure TServerCallsFileLogger.InternalLogProviderCall(
  const AServerCallsLogDirectory: string;
  const ADateTime: TDateTime;
  const ALogOccurance: TLogOccurrence;
  const AClassName: string;
  const AMethodName: string;
  const AProviderName: string;
  const AParamsMemory: Cardinal;
  const ADurationMilliseconds: Cardinal;
  const ADBName: string;
  const AEmployeeCode: Integer;
  const AExceptionMessage: string);
var
  LogEntry: string;
begin
  LogEntry:= Format('{ "LogDateTime": "%s", "Occurrence": "%s", "ClassName": "%s", "MethodName": "%s", "ProviderName": "%s", "' +
                    'FastMMAllocatedMemory": "%d", "FastMMReservedMemory": "%d", "WinMMAllocatedMemory": "%d", "ParamsMemory": "%d", "' +
                    'DurationMilliseconds": "%d", "DBName": "%s", "EmployeeCode": "%d", "ExceptionMessage": "%s" }',
    [FormatJsonDateTime(ADateTime), LogOccurrenceToStr(ALogOccurance),
     AClassName, AMethodName, AProviderName,
     GetFastMMAllocatedMemory, GetFastMMReservedMemory, GetWinMMAllocatedMemory, AParamsMemory,
     ADurationMilliseconds, ADBName, AEmployeeCode, FormatJsonString(AExceptionMessage)]);

  LogLine(AServerCallsLogDirectory, 'ProviderCalls', ADateTime, LogEntry + SLineBreak);
end;

class procedure TServerCallsFileLogger.InternalLogTrace(
  const AServerCallsLogDirectory: string;
  const ADateTime: TDateTime;
  const ATraceMessage: string);
var
  LogEntry: string;
begin
  LogEntry:= Format('{ "LogDateTime": "%s", "ThreadID": "%s", "TraceMessage": "%s" }',
    [FormatJsonDateTime(ADateTime), FormatFloat('00000000000000000000', GetCurrentThreadID()), ATraceMessage]);

  LogLine(AServerCallsLogDirectory, 'Trace', ADateTime, LogEntry + SLineBreak);
end;

{ TServerCallsLoggerFactory }

class function TServerCallsLoggerFactory.GetLogger: IServerCallsLogger;
begin
  Assert(Assigned(FInstance));
  Result:= FInstance;
end;

class procedure TServerCallsLoggerFactory.Initialize(
  const AServerCallsLogDirectory: string;
  const AServerCallsAsyncLogging: Boolean);
begin
  Assert(not Assigned(FInstance));
  FInstance:= TServerCallsFileLogger.Create(AServerCallsLogDirectory, AServerCallsAsyncLogging);
end;

{ routines }

procedure LogTrace(const ATraceMessage: string);
begin
  //TServerCallsLoggerFactory.GetLogger().LogTrace(ATraceMessage);
end;

{ TRoutineTraceLogger }

constructor TRoutineTraceLogger.Create(const ARoutineName: string);
begin
  FRoutineName:= ARoutineName;
end;

procedure TRoutineTraceLogger.LogEnter;
begin
  LogTrace(FRoutineName + ' - ENTER');
end;

procedure TRoutineTraceLogger.LogException;
begin
  LogTrace(FRoutineName + ' - EXCEPTION: ' + (ExceptObject as Exception).Message);
end;

procedure TRoutineTraceLogger.LogLeave;
begin
  LogTrace(FRoutineName + ' - LEAVE');
end;

end.
