unit uObjectSubscription;

interface

uses
  Generics.Collections, AbmesFields, uClientPeriods, uProducts;

type
  TSubscription<T: class> = class abstract
  strict private
    FSubscriptionElements: TList<T>;
    FOwner: TObject;
  strict protected
    procedure BeforeExecute; virtual;
    procedure AfterExecute; virtual;
    procedure ExecuteOperation(const AObject: T); virtual; abstract;
    property Owner: TObject read FOwner;
  public
    constructor Create(const AOwner: TObject); virtual;
    destructor Destroy; override;
    procedure Execute;
    procedure Subscribe(const AObject: T); overload;
    procedure Subscribe(const AObjects: array of T); overload;
    procedure Unsubscribe(const AObject: T); overload;
    procedure Unsubscribe(const AObjects: array of T); overload;
    function IsSubscribed(const AObject: T): Boolean;
  end;

type
  TDateFieldFormatSubscription = class(TSubscription<TAbmesSQLTimeStampField>)
  strict private
    FOldDateIntervalFormat: TDateIntervalFormat;
  strict protected
    procedure AfterExecute; override;
  public
    procedure ExecuteOperation(const AObject: TAbmesSQLTimeStampField); override;
  end;

type
  TQuantityFieldFormatSubscription = class(TSubscription<TAbmesFloatField>)
  public
    procedure ExecuteOperation(const AObject: TAbmesFloatField); override;
  end;

type
  TCompareObjects<T: class> = class
  public
    class function CompareObjects(const Left, Right: T): Integer;
  end;

implementation

uses
  SysUtils, Generics.Defaults, dMain, TypInfo;

class function TCompareObjects<T>.CompareObjects(const Left, Right: T): Integer;
begin
  if (Left = Right) then
    Result:= 0
  else
    Result:= -1;
end;

{ TSubscription<T> }

procedure TSubscription<T>.AfterExecute;
begin
  // do nothing
end;

procedure TSubscription<T>.BeforeExecute;
begin
  // do nothing
end;

constructor TSubscription<T>.Create(const AOwner: TObject);
begin
  inherited Create;

  FOwner:= AOwner;

  FSubscriptionElements:=
    TList<T>.Create(TDelegatedComparer<T>.Create(TCompareObjects<T>.CompareObjects));
end;

destructor TSubscription<T>.Destroy;
begin
  FreeAndNil(FSubscriptionElements);
  inherited Destroy;
end;

procedure TSubscription<T>.Execute;
var
  x: T;
begin
  BeforeExecute;

  for x in FSubscriptionElements do
    ExecuteOperation(x);

  AfterExecute;
end;

function TSubscription<T>.IsSubscribed(const AObject: T): Boolean;
begin
  Result:= (FSubscriptionElements.IndexOf(AObject) >= 0);
end;

procedure TSubscription<T>.Subscribe(const AObject: T);
begin
  Assert(Assigned(AObject));
  Assert(not IsSubscribed(AObject));

  FSubscriptionElements.Add(AObject);
end;

procedure TSubscription<T>.Subscribe(const AObjects: array of T);
var
  x: T;
begin
  for x in AObjects do
    Assert(not IsSubscribed(x));

  for x in AObjects do
    Subscribe(x);
end;

procedure TSubscription<T>.Unsubscribe(const AObject: T);
begin
  FSubscriptionElements.Remove(AObject);
end;

procedure TSubscription<T>.Unsubscribe(const AObjects: array of T);
var
  x: T;
begin
  for x in AObjects do
    Assert(IsSubscribed(x));

  for x in AObjects do
    Unsubscribe(x);
end;

{ TDateFieldFormatSubscription }

procedure TDateFieldFormatSubscription.AfterExecute;
begin
  inherited;
  FOldDateIntervalFormat:= dmMain.DateIntervalFormat;
end;

procedure TDateFieldFormatSubscription.ExecuteOperation(
  const AObject: TAbmesSQLTimeStampField);
var
  f: string;
begin
  f:= dmMain.DateFormatString;

  if (FOldDateIntervalFormat <> dmMain.DateIntervalFormat) then
    begin
      // force change format
      AObject.DisplayFormat:= '';
      AObject.AbmesEditFormat:= '';
    end;

  AObject.DisplayFormat:= f;
  AObject.AbmesEditFormat:= f;
end;

{ TQuantityFieldFormatSubscription }

procedure TQuantityFieldFormatSubscription.ExecuteOperation(
  const AObject: TAbmesFloatField);
const
  NormalQuantityFormat = ',0.####';
  FinancialQUantityFormat = ',0.00';
var
  ProductClass: TProductClass;
  p: PPropInfo;
begin
  p:= GetPropInfo(Owner, 'ProductClass');
  if Assigned(p) then
    ProductClass:= TProductClass(GetOrdProp(Owner, p))
  else
    ProductClass:= pcNone;

  case ProductClass of
    pcNormal:
      begin
        AObject.DisplayFormat:= NormalQuantityFormat;
        AObject.EditFormat:= NormalQuantityFormat;
      end;

    pcFinancial:
      begin
        AObject.DisplayFormat:= FinancialQuantityFormat;
        AObject.EditFormat:= FinancialQuantityFormat;
      end;

  else
    begin
      // do nothing
    end;
  end;
end;

end.
