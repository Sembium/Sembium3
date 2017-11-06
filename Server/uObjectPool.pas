unit uObjectPool;

interface

uses
  System.SyncObjs, System.TimeSpan, System.SysUtils;

type
  TObjectPoolItem<T> = record
  strict private
    FItemIndex: Integer;
    FItem: T;
  private
    constructor Create(const AIndex: Integer; const AItem: T);
    property ItemIndex: Integer read FItemIndex;
  public
    property Item: T read FItem;
  end;

type
  TObjectPool<T: class> = class
  strict private
    FTimeoutMilliseconds: Cardinal;
    FFactoryFunc: TFunc<T>;
    FObjects: TArray<T>;
    FMutexes: TArray<THandle>;

    procedure CreateMutexes;
    procedure DestroyMutexes;
    procedure DestroyObjects;

    procedure DoAcquireMutex(const AIndex: Integer); overload;
    function DoAcquireMutex: Integer; overload;
    procedure DoReleaseMutex(const AIndex: Integer);
    procedure RaiseServicePoolBusyError;
    procedure RaiseMutexAbandonedError;
  public
    constructor Create(const AMaxCount: Integer; const ATimeout: TTimeSpan; const AFactoryFunc: TFunc<T>);
    destructor Destroy; override;

    function Acquire: TObjectPoolItem<T>;
    procedure Release(const AObjectPoolItem: TObjectPoolItem<T>);
    procedure ReleaseAndReset(const AObjectPoolItem: TObjectPoolItem<T>);
    procedure Reset;

    function Count(const APredicate: TPredicate<T> = nil): Integer;
  end;

implementation

uses
  Winapi.Windows, System.Math, uUtils;

{ TObjectPool<T> }

constructor TObjectPool<T>.Create(const AMaxCount: Integer; const ATimeout: TTimeSpan;
  const AFactoryFunc: TFunc<T>);
var
  MaxCount: Integer;
begin
  inherited Create;

  FTimeoutMilliseconds:= Trunc(ATimeout.TotalMilliseconds);
  FFactoryFunc:= AFactoryFunc;

  MaxCount:= Min(AMaxCount, MAXIMUM_WAIT_OBJECTS);
  SetLength(FObjects, MaxCount);
  SetLength(FMutexes, MaxCount);

  CreateMutexes;
end;

destructor TObjectPool<T>.Destroy;
begin
  DestroyMutexes;
  DestroyObjects;
  inherited Destroy;
end;

procedure TObjectPool<T>.CreateMutexes;
var
  i: Integer;
begin
  for i:= Low(FMutexes) to High(FMutexes) do
    FMutexes[i]:= CreateMutex(nil, False, '');
end;

procedure TObjectPool<T>.DestroyMutexes;
var
  i: Integer;
begin
  for i:= Low(FMutexes) to High(FMutexes) do
    begin
      CloseHandle(FMutexes[i]);
      FMutexes[i]:= 0;
    end;
end;

procedure TObjectPool<T>.DestroyObjects;
var
  i: Integer;
begin
  for i:= Low(FObjects) to High(FObjects) do
    FreeAndNil(FObjects[i]);
end;

procedure TObjectPool<T>.DoAcquireMutex(const AIndex: Integer);
begin
  case WaitForSingleObject(FMutexes[AIndex], FTimeoutMilliseconds) of
    WAIT_OBJECT_0:
      ; // OK
    WAIT_ABANDONED:
      begin
        try
          FreeAndNil(FObjects[AIndex]);
        finally
          DoReleaseMutex(AIndex);  // temp
        end;
        RaiseMutexAbandonedError;  // temp
      end;
    WAIT_TIMEOUT:
      RaiseServicePoolBusyError;
    WAIT_FAILED:
      RaiseLastOSError;
  else
    RaiseLastOSError;
  end;
end;

function TObjectPool<T>.DoAcquireMutex: Integer;
var
  AcquiredMutex: TMutex;
  WaitResult: DWORD;
begin
  WaitResult := WaitForMultipleObjects(Length(FMutexes), @FMutexes[0], False, FTimeoutMilliseconds);
  case WaitResult of
    WAIT_OBJECT_0..WAIT_OBJECT_0 + MAXIMUM_WAIT_OBJECTS - 1:
      Result:= WaitResult - WAIT_OBJECT_0;
    WAIT_ABANDONED_0..WAIT_ABANDONED_0 + MAXIMUM_WAIT_OBJECTS - 1:
      begin
        Result:= WaitResult - WAIT_ABANDONED_0;
        try
          FreeAndNil(FObjects[Result]);
        finally
          DoReleaseMutex(Result);  // temp
        end;
        RaiseMutexAbandonedError;  // temp
      end;
    WAIT_TIMEOUT:
      RaiseServicePoolBusyError;
    WAIT_FAILED:
      RaiseLastOSError;
  else
    RaiseLastOSError;
  end;
end;

procedure TObjectPool<T>.DoReleaseMutex(const AIndex: Integer);
begin
  if not WinApi.Windows.ReleaseMutex(FMutexes[AIndex]) then
    RaiseLastOSError;
end;

function TObjectPool<T>.Count(const APredicate: TPredicate<T>): Integer;
var
  o: T;
begin
  Result:= 0;
  for o in FObjects do
    if Assigned(o) and
       ( not Assigned(APredicate) or
         APredicate(o)) then
      Inc(Result);
end;

procedure TObjectPool<T>.RaiseMutexAbandonedError;
begin
  raise Exception.Create(ClassName + ': ' + SMutexAbandoned);
end;

procedure TObjectPool<T>.RaiseServicePoolBusyError;
begin
  raise Exception.Create(ClassName + ': ' + SServicePoolBusy);
end;

procedure TObjectPool<T>.Reset;
var
  i: Integer;
begin
  for i:= Low(FObjects) to High(FObjects) do
    begin
      DoAcquireMutex(i);
      try
        FreeAndNil(FObjects[i]);
      finally
        DoReleaseMutex(i);
      end;
    end;
end;

function TObjectPool<T>.Acquire: TObjectPoolItem<T>;
var
  AcquiredIndex: Integer;
begin
  AcquiredIndex:= DoAcquireMutex;
  try
    if not Assigned(FObjects[AcquiredIndex]) then
      FObjects[AcquiredIndex]:= FFactoryFunc();

    Result:= TObjectPoolItem<T>.Create(AcquiredIndex, FObjects[AcquiredIndex]);
  except
    DoReleaseMutex(AcquiredIndex);
    raise;
  end;
end;

procedure TObjectPool<T>.Release(const AObjectPoolItem: TObjectPoolItem<T>);
begin
  DoReleaseMutex(AObjectPoolItem.ItemIndex);
end;

procedure TObjectPool<T>.ReleaseAndReset(
  const AObjectPoolItem: TObjectPoolItem<T>);
begin
  FreeAndNil(FObjects[AObjectPoolItem.ItemIndex]);
  DoReleaseMutex(AObjectPoolItem.ItemIndex);
end;

{ TAcquireResult<T> }

constructor TObjectPoolItem<T>.Create(const AIndex: Integer; const AItem: T);
begin
  inherited;
  FItemIndex:= AIndex;
  FItem:= AItem;
end;

end.
