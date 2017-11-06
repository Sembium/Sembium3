unit uAttachedProperty;

interface

uses
  SysUtils, Classes, Generics.Collections, SyncObjs;

type
  IProp<T> = interface
    function DoGetPropValue(const AObject: TComponent): T;
    procedure DoSetPropValue(const AObject: TComponent; const AValue: T);
  end;

type
  TProp<T> = class(TComponent, IProp<T>)
  private
    class var FCreationCriticalSection: TCriticalSection;
    FSync: TMultiReadExclusiveWriteSynchronizer;
    FDict: TDictionary<TComponent, T>;
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  protected
    function DoGetPropValue(const AObject: TComponent): T;
    procedure DoSetPropValue(const AObject: TComponent; const AValue: T);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    class constructor CreateClass;
    class destructor DestroyClass;
    class function GetPropValue(const AProp: IProp<T>; const AObject: TComponent): T;
    class procedure SetPropValue(var AProp: IProp<T>; const AObject: TComponent; const AValue: T);
  end;

implementation

uses
  uUtils;

{ TProp<T> }

constructor TProp<T>.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FSync:= TMultiReadExclusiveWriteSynchronizer.Create;
  FDict:= TDictionary<TComponent, T>.Create;
end;

destructor TProp<T>.Destroy;
begin
  FreeAndNil(FDict);
  FreeAndNil(FSync);
  inherited Destroy;
end;

class constructor TProp<T>.CreateClass;
begin
  FCreationCriticalSection:= TCriticalSection.Create;
end;

class destructor TProp<T>.DestroyClass;
begin
  FreeAndNil(FCreationCriticalSection);
end;

class function TProp<T>.GetPropValue(const AProp: IProp<T>;
  const AObject: TComponent): T;
begin
  if Assigned(AProp) then
    Result:= AProp.DoGetPropValue(AObject)
  else
    Result:= Default(T);
end;

class procedure TProp<T>.SetPropValue(var AProp: IProp<T>;
  const AObject: TComponent; const AValue: T);
begin
  if not Assigned(AProp) then
    begin
      FCreationCriticalSection.Enter;
      try
        if not Assigned(AProp) then  // otnovo proverka za da e sigurno che druga nishka ne ni e izprevarila sas sazdavaneto
          AProp:= TProp<T>.Create(nil);
      finally
        FCreationCriticalSection.Leave;
      end;
    end;

  AProp.DoSetPropValue(AObject, AValue);
end;

function TProp<T>.DoGetPropValue(const AObject: TComponent): T;
begin
  FSync.BeginRead;
  try
    if not FDict.TryGetValue(AObject, Result) then
      Result:= Default(T);
  finally
    FSync.EndRead;
  end;
end;

procedure TProp<T>.DoSetPropValue(const AObject: TComponent; const AValue: T);
begin
  FSync.TempWrite/
    procedure begin
      if FDict.ContainsKey(AObject) then
        FDict[AObject]:= AValue
      else
        begin
          FreeNotification(AObject);
          FDict.Add(AObject, AValue);
        end;
    end;
end;

procedure TProp<T>.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited;
  FSync.TempWrite/
    procedure begin
      FDict.Remove(AComponent);
    end;
end;

end.
