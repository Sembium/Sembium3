unit uTimerThread;

interface

uses
  System.Classes, System.SysUtils, System.TimeSpan;

type
  TTimerThread = class(TThread)
  strict private
    FExecuteProc: TProc;
    FGetSleepTimeSpan: TFunc<TTimeSpan>;
  public
    constructor Create(AExecuteProc: TProc; AGetSleepTimeSpan: TFunc<TTimeSpan>);
    procedure Execute; override;
  end;

implementation

{ TTimerThread }

constructor TTimerThread.Create(AExecuteProc: TProc;
  AGetSleepTimeSpan: TFunc<TTimeSpan>);
begin
  Assert(Assigned(AExecuteProc));
  Assert(Assigned(AGetSleepTimeSpan));

  inherited Create(True);

  FExecuteProc:= AExecuteProc;
  FGetSleepTimeSpan:= AGetSleepTimeSpan;
end;

procedure TTimerThread.Execute;
var
  SleepTimeSpan: TTimeSpan;
begin
  while not Terminated do
    begin
      FExecuteProc();

      SleepTimeSpan:= FGetSleepTimeSpan();

      Sleep(Trunc(SleepTimeSpan.TotalMilliseconds));
    end;
end;

end.
