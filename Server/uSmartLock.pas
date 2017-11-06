unit uSmartLock;

interface

uses
  System.SysUtils, uFuncUtils;

type
  ISmartLock<T> = interface
    function Acquired: Boolean;
    function Value: T;
  end;

type
  TSmartLock<T1, T2> = class(TInterfacedObject, ISmartLock<T2>)
  strict private
    FAcquireFunc: TFunc<T1>;
    FReleaseProc: TConstProc<T1>;
    FValueFunc: TConstFunc<T1, T2>;
    FAcquiredObject: T1;
    FAcquired: Integer;
  strict protected
    procedure EnsureAcquired; virtual;
    procedure EnsureReleased; virtual;
  public
    constructor Create(
      AAcquireFunc: TFunc<T1>;
      AReleaseProc: TConstProc<T1>;
      AValueFunc: TConstFunc<T1, T2>);
    destructor Destroy; override;

    function Acquired: Boolean;
    function Value: T2;
  end;

type
  TMinRefCountingSmartLock<T1, T2> = class(TSmartLock<T1, T2>, ISmartLock<T2>, IInterface)
  strict private
    FMinRefCount: Integer;
  strict protected
    procedure EnsureAcquired; override;
  protected
    function _Release: Integer; stdcall;
  public
    constructor Create(
      AAcquireFunc: TFunc<T1>;
      AReleaseProc: TConstProc<T1>;
      AValueFunc: TConstFunc<T1, T2>;
      AMinRefCount: Integer);
  end;

implementation

uses
  System.SyncObjs;

{ TPooledDataModuleSmartLock<T> }

function TSmartLock<T1, T2>.Acquired: Boolean;
begin
  Result:= (TInterlocked.CompareExchange(FAcquired, 0, 0) = 1);
end;

constructor TSmartLock<T1, T2>.Create(
  AAcquireFunc: TFunc<T1>;
  AReleaseProc: TConstProc<T1>;
  AValueFunc: TConstFunc<T1, T2>);
begin
  inherited Create;

  Assert(Assigned(AAcquireFunc));
  Assert(Assigned(AReleaseProc));
  Assert(Assigned(AValueFunc));

  FAcquireFunc:= AAcquireFunc;
  FReleaseProc:= AReleaseProc;
  FValueFunc:= AValueFunc;
end;

destructor TSmartLock<T1, T2>.Destroy;
begin
  EnsureReleased;
  inherited;
end;

procedure TSmartLock<T1, T2>.EnsureAcquired;
begin
  if (TInterlocked.CompareExchange(FAcquired, 1, 0) = 0) then
    try
      FAcquiredObject:= FAcquireFunc();
    except
      TInterlocked.Exchange(FAcquired, 0);
      raise;
    end;
end;

procedure TSmartLock<T1, T2>.EnsureReleased;
begin
  if (TInterlocked.CompareExchange(FAcquired, 0, 1) = 1) then
    FReleaseProc(FAcquiredObject);
end;

function TSmartLock<T1, T2>.Value: T2;
begin
  EnsureAcquired;
  Result:= FValueFunc(FAcquiredObject);
end;

{ TMinRefCountingSmartLock<T1, T2> }

constructor TMinRefCountingSmartLock<T1, T2>.Create(
  AAcquireFunc: TFunc<T1>;
  AReleaseProc: TConstProc<T1>;
  AValueFunc: TConstFunc<T1, T2>;
  AMinRefCount: Integer);
begin
  inherited Create(AAcquireFunc, AReleaseProc, AValueFunc);
  FMinRefCount:= AMinRefCount;
end;

procedure TMinRefCountingSmartLock<T1, T2>.EnsureAcquired;
begin
  Assert(RefCount >= FMinRefCount);
  inherited;
end;

function TMinRefCountingSmartLock<T1, T2>._Release: Integer;
begin
  if (RefCount <= FMinRefCount) then
    EnsureReleased;

  Result:= inherited _Release;
end;

end.
