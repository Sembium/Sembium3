unit uEnumeratorUtils;

interface

uses
  SysUtils,
  Classes,
  Generics.Defaults,
  Generics.Collections,
  TypInfo,
  Rtti,
  uFuncUtils,
  uNestProc;

type
  EEnumerableRecException = class(Exception);
  EEmptyEnumerableRec = class(EEnumerableRecException);

type
  TEnumerableRec<ItemType> = record
  strict private
    FEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>;
    FSomeString: string;  // d2010 bug workaround - za da pravi try-finally frames recorda i da reference countva pravilno TFunc-poletata. ako go niama tova se poluchava AV
  public
    constructor Create(const AEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>);

    function GetEnumerator: TEnumerator<ItemType>;

    function ToArray: TArray<ItemType>;

    class operator Add(const A, B: TEnumerableRec<ItemType>): TEnumerableRec<ItemType>;
    class operator Add(const A: ItemType; const B: TEnumerableRec<ItemType>): TEnumerableRec<ItemType>;
    class operator Add(const A: TEnumerableRec<ItemType>; const B: ItemType): TEnumerableRec<ItemType>;
    class operator Implicit(const AValue: TEnumerableRec<ItemType>): TArray<ItemType>;

    function Exists: Boolean;
    function Single: ItemType;
    function First: ItemType;
    function FirstOrDefault: ItemType; overload;
    function FirstOrDefault(const ADefault: ItemType): ItemType; overload;
    function Skip(const ASkipCount: Integer): TEnumerableRec<ItemType>;
    function Take(const ATakeCount: Integer): TEnumerableRec<ItemType>;
    function Filter(const AFilterPredicate: TConstPredicate<ItemType>): TEnumerableRec<ItemType>; overload;
    function Filter(const AFilterPredicate: TPredicate<ItemType>): TEnumerableRec<ItemType>; overload;
    function Filter(const AValue: ItemType): TEnumerableRec<ItemType>; overload;
    function Distinct(const AEqualityComparison: TEqualityComparison<ItemType>): TEnumerableRec<ItemType>;
    function Map<ResultItemType>(const AMapFunc: TFunc<ItemType, ResultItemType>): TEnumerableRec<ResultItemType>; overload;
    function Map<ResultItemType>(const AMapFunc: TConstFunc<ItemType, ResultItemType>): TEnumerableRec<ResultItemType>; overload;
    function Map(const AMapFunc: TConstFunc<ItemType, ItemType>): TEnumerableRec<ItemType>; overload;
    function Map(const AMapFunc: TFunc<ItemType, ItemType>): TEnumerableRec<ItemType>; overload;
    function Concat(const AEnumerable: TEnumerableRec<ItemType>): TEnumerableRec<ItemType>;
    function Append(const AItem: ItemType): TEnumerableRec<ItemType>;
    function Insert(const AItem: ItemType): TEnumerableRec<ItemType>;
    function AsOf<ResultItemType: ItemType>: TEnumerableRec<ResultItemType>;
    function _AsOf<ResultItemType>: TEnumerableRec<ResultItemType>;
    function OfType<ResultItemType: ItemType>: TEnumerableRec<ResultItemType>;
    function _OfType<ResultItemType>: TEnumerableRec<ResultItemType>;
    function ForEach: TNestProcRec<ItemType>;
    function Flatten<ResultItemType>: TEnumerableRec<ResultItemType>;
    function Reversed: TEnumerableRec<ItemType>;

    function Aggr<ResultType>(const AFunc: TConstFunc<ItemType,ResultType,ResultType>; const ADefaultValue: ResultType): ResultType; overload;
    function Aggr<ResultType>(const AFunc: TConstFunc<ItemType,ResultType,ResultType>): ResultType; overload;
    function Aggr(const AFunc: TConstFunc<ItemType,ItemType,ItemType>; const ADefaultValue: ItemType): ItemType; overload;
    function Aggr(const AFunc: TConstFunc<ItemType,ItemType,ItemType>): ItemType; overload;
    function Aggr<ResultType>(const AFunc: TFunc<ItemType,ResultType,ResultType>; const ADefaultValue: ResultType): ResultType; overload;
    function Aggr<ResultType>(const AFunc: TFunc<ItemType,ResultType,ResultType>): ResultType; overload;
    function Aggr(const AFunc: TFunc<ItemType,ItemType,ItemType>; const ADefaultValue: ItemType): ItemType; overload;
    function Aggr(const AFunc: TFunc<ItemType,ItemType,ItemType>): ItemType; overload;

    function Count: Integer;

    property SomeString: string read FSomeString;
  end;

type
  TGenericEnumerator<ItemType> = class abstract (TEnumerator<ItemType>)
  strict private
    FItemTypeClass: TClass;
    FItemTypeInterfaceGUID: TGUID;
  protected
    property ItemTypeClass: TClass read FItemTypeClass;
    property ItemTypeInterfaceGUID: TGUID read FItemTypeInterfaceGUID;
  public
    constructor Create;
  end;

type
  TMoveNextMethod = function: Boolean of object;
  TCurrentMethod<ItemType> = function: ItemType of object;

type
  TProxyEnumerator<ItemType> = class(TGenericEnumerator<ItemType>)
  strict private
    FOldEnumerator: TObject;
    FOldMoveNextMethod: TMoveNextMethod;
    FOldCurrentMethod: TCurrentMethod<ItemType>;
    procedure SetOldEnumerator(const AValue: TObject);
  protected
    function DoGetCurrent: ItemType; override;
    function DoMoveNext: Boolean; override;
  public
    constructor Create(const AOldEnumeratorFactoryFunc: TFunc<TObject>);
    destructor Destroy; override;
    class function CreateEnumerableRec(const AOldEnumeratorFactoryFunc: TFunc<TObject>): TEnumerableRec<ItemType>;
  end;

type
  TBaseWrapperEnumerator<WrappedItemType, ItemType> = class abstract (TGenericEnumerator<ItemType>)
  strict private
    FWrappedEnumerator: TEnumerator<WrappedItemType>;
  strict protected
    property WrappedEnumerator: TEnumerator<WrappedItemType> read FWrappedEnumerator;
  public
    constructor Create(const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<WrappedItemType>>); virtual;
    destructor Destroy; override;
    class function CreateEnumerableRec(const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<WrappedItemType>>): TEnumerableRec<ItemType>;
  end;

type
  TBaseFilterEnumerator<ItemType> = class abstract (TBaseWrapperEnumerator<ItemType, ItemType>)
  protected
    function DoGetCurrent: ItemType; override;
  end;

type
  TSkipEnumerator<ItemType> = class(TBaseFilterEnumerator<ItemType>)
  strict private
    FSkipCount: Integer;
  protected
    function DoMoveNext: Boolean; override;
  public
    constructor Create(const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>; const ASkipCount: Integer); reintroduce;
    class function CreateEnumerableRec(const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>; const ASkipCount: Integer): TEnumerableRec<ItemType>;
  end;

type
  TTakeEnumerator<ItemType> = class(TBaseFilterEnumerator<ItemType>)
  strict private
    FTakeCount: Integer;
  protected
    function DoMoveNext: Boolean; override;
  public
    constructor Create(const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>; const ATakeCount: Integer); reintroduce;
    class function CreateEnumerableRec(const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>; const ATakeCount: Integer): TEnumerableRec<ItemType>;
  end;

type
  TFilterEnumerator<ItemType> = class(TBaseFilterEnumerator<ItemType>)
  strict private
    FFilterPredicate: TConstPredicate<ItemType>;
  protected
    function DoMoveNext: Boolean; override;
  public
    constructor Create(const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>; const AFilterPredicate: TConstPredicate<ItemType>); reintroduce;
    class function CreateEnumerableRec(const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>; const AFilterPredicate: TConstPredicate<ItemType>): TEnumerableRec<ItemType>;
  end;

type
  TDistinctEnumerator<ItemType> = class(TBaseFilterEnumerator<ItemType>)
  strict private
    FWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>;
    FEqualityComparison: TEqualityComparison<ItemType>;
    FIndex: Integer;
  protected
    function DoMoveNext: Boolean; override;
  public
    constructor Create(const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>; const AEqualityComparison: TEqualityComparison<ItemType>); reintroduce;
    class function CreateEnumerableRec(const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>; const AEqualityComparison: TEqualityComparison<ItemType>): TEnumerableRec<ItemType>;
  end;

type
  TMapEnumerator<WrappedItemType, ItemType> = class(TBaseWrapperEnumerator<WrappedItemType, ItemType>)
  strict private
    FMapFunc: TConstFunc<WrappedItemType, ItemType>;
  protected
    function DoGetCurrent: ItemType; override;
    function DoMoveNext: Boolean; override;
  public
    constructor Create(const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<WrappedItemType>>; const AMapFunc: TConstFunc<WrappedItemType, ItemType>); reintroduce;
    class function CreateEnumerableRec(const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<WrappedItemType>>; const AMapFunc: TConstFunc<WrappedItemType, ItemType>): TEnumerableRec<ItemType>;
  end;

type
  TBaseBinaryEnumerator<ItemType> = class abstract (TGenericEnumerator<ItemType>)
  strict private
    FLeftEnumerator: TEnumerator<ItemType>;
    FRightEnumerator: TEnumerator<ItemType>;
  strict protected
    property LeftEnumerator: TEnumerator<ItemType> read FLeftEnumerator;
    property RightEnumerator: TEnumerator<ItemType> read FRightEnumerator;
  public
    constructor Create(const ALeftEnumeratorFactoryFunc, ARightEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>);
    destructor Destroy; override;
    class function CreateEnumerableRec(const ALeftEnumeratorFactoryFunc, ARightEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>): TEnumerableRec<ItemType>;
  end;

type
  TConcatEnumerator<ItemType> = class(TBaseBinaryEnumerator<ItemType>)
  strict private
    FLeftEnumeratorPassed: Boolean;
  protected
    function DoGetCurrent: ItemType; override;
    function DoMoveNext: Boolean; override;
  end;

type
  TIndexedEnumerator<ItemType; ContainerType> = class abstract (TGenericEnumerator<ItemType>)
  strict private
    FContainer: ContainerType;
    FIndex: Integer;
  protected
    function DoGetCurrent: ItemType; override;
    function DoMoveNext: Boolean; override;
    function GetItem(AIndex: Integer): ItemType; virtual; abstract;
    function ItemCount: Integer; virtual; abstract;
    property Container: ContainerType read FContainer;
  public
    constructor Create(const AContainer: ContainerType);
    class function CreateEnumerableRec(const AContainer: ContainerType): TEnumerableRec<ItemType>;
  end;

type
  TLinkedListEnumerator<NodeType, DataType> = class abstract (TGenericEnumerator<DataType>)
  strict private
    FCurrent: NodeType;
    FNext: NodeType;
  protected
    function DoGetCurrent: DataType; override;
    function DoMoveNext: Boolean; override;
    function GetNodeData(const ANode: NodeType): DataType; virtual; abstract;
    function GetNextNode(const ANode: NodeType): NodeType; virtual; abstract;
  public
    constructor Create(const ANode: NodeType);
    class function CreateEnumerableRec(const ANode: NodeType): TEnumerableRec<DataType>;
  end;

type
  TSimpleLinkedListEnumerator<ItemType> = class abstract (TLinkedListEnumerator<ItemType, ItemType>)
  protected
    function GetNodeData(const ANode: ItemType): ItemType; override;
  end;

type
  TArrayEnumerator<T> = class(TIndexedEnumerator<T, TArray<T>>)
  protected
    function GetItem(AIndex: Integer): T; override;
    function ItemCount: Integer; override;
  end;

type
  TEmptyEnumerator<ItemType> = class(TGenericEnumerator<ItemType>)
  protected
    function DoGetCurrent: ItemType; override;
    function DoMoveNext: Boolean; override;
  public
    class function CreateEnumerableRec: TEnumerableRec<ItemType>;
  end;

type
  TSingleItemEnumerator<ItemType> = class(TGenericEnumerator<ItemType>)
  strict private
    FItem: ItemType;
    FItemIsReturned: Boolean;
  protected
    function DoGetCurrent: ItemType; override;
    function DoMoveNext: Boolean; override;
  public
    constructor Create(const AItem: ItemType);
    class function CreateEnumerableRec(const AItem: ItemType): TEnumerableRec<ItemType>;
  end;

type
  TReverseEnumerator<ItemType> = class(TBaseWrapperEnumerator<ItemType, ItemType>)
  strict private
    FItems: TStack<ItemType>;
    FIsEnumeratorStarted: Boolean;
  protected
    function DoGetCurrent: ItemType; override;
    function DoMoveNext: Boolean; override;
  public
    constructor Create(const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>); override;
    destructor Destroy; override;
  end;

type
  ArrayUtils = class
  public
    class function All<T>(const AArray: array of T): TEnumerableRec<T>;

    class function ArrayOf<T>(const AValues: array of T): TArray<T>;
    class function Concat<T>(const AValue: T; const AArray: array of T): TArray<T>; overload;
    class function Concat<T>(const AArray: array of T; const AValue: T): TArray<T>; overload;
    class function Concat<T>(const AFirstArray, ASecondArray: array of T): TArray<T>; overload;
    class function Slice<T>(const AArray: array of T; const ACount: Integer): TArray<T>;
    class function SliceFrom<T>(const AArray: array of T; const AStartIndex: Integer; const ACount: Integer = -1): TArray<T>;
    class function SliceFromTo<T>(const AArray: array of T; const AStartIndex, AEndIndex: Integer): TArray<T>;

    class function Filter<T>(const APredicate: TPredicate<T>; const AArray: array of T): TArray<T>; overload;
    class function Filter<T>(const APredicate: TConstPredicate<T>; const AArray: array of T): TArray<T>; overload;
    class function Distinct<T>(const AEqualityComparison: TEqualityComparison<T>; const AArray: array of T): TArray<T>;
    class function Map<T1,T2>(const AFunc: TFunc<T1,T2>; const AArray: array of T1): TArray<T2>; overload;
    class function Map<T1,T2>(const AFunc: TConstFunc<T1,T2>; const AArray: array of T1): TArray<T2>; overload;
    class function Map<T>(const AFunc: TFunc<T,T>; const AArray: array of T): TArray<T>; overload;
    class function Map<T>(const AFunc: TConstFunc<T,T>; const AArray: array of T): TArray<T>; overload;

    class function Aggr<T1,T2>(const AFunc: TConstFunc<T1,T2,T2>; const ADefaultValue: T2; const AArray: array of T1): T2; overload;
    class function Aggr<T1,T2>(const AFunc: TConstFunc<T1,T2,T2>; const AArray: array of T1): T2; overload;
    class function Aggr<T>(const AFunc: TConstFunc<T,T,T>; const ADefaultValue: T; const AArray: array of T): T; overload;
    class function Aggr<T>(const AFunc: TConstFunc<T,T,T>; const AArray: array of T): T; overload;
    class function Aggr<T1,T2>(const AFunc: TFunc<T1,T2,T2>; const ADefaultValue: T2; const AArray: array of T1): T2; overload;
    class function Aggr<T1,T2>(const AFunc: TFunc<T1,T2,T2>; const AArray: array of T1): T2; overload;
    class function Aggr<T>(const AFunc: TFunc<T,T,T>; const ADefaultValue: T; const AArray: array of T): T; overload;
    class function Aggr<T>(const AFunc: TFunc<T,T,T>; const AArray: array of T): T; overload;
  end;

implementation

uses
  Math;

{ ArrayUtils }

class function ArrayUtils.All<T>(const AArray: array of T): TEnumerableRec<T>;
begin
  Result:= TArrayEnumerator<T>.CreateEnumerableRec(ArrayOf<T>(AArray));
end;

class function ArrayUtils.Aggr<T1,T2>(
  const AFunc: TFunc<T1, T2, T2>;
  const AArray: array of T1): T2;
begin
  Result:= Aggr<T1,T2>(FuncUtils.FuncToConstFunc<T1,T2,T2>(AFunc), AArray);
end;

class function ArrayUtils.Aggr<T1,T2>(
  const AFunc: TConstFunc<T1, T2, T2>;
  const AArray: array of T1): T2;
begin
  Result:= Aggr<T1,T2>(AFunc, Default(T2), AArray);
end;

class function ArrayUtils.Aggr<T1,T2>(
  const AFunc: TFunc<T1, T2, T2>;
  const ADefaultValue: T2;
  const AArray: array of T1): T2;
begin
  Result:= Aggr<T1,T2>(FuncUtils.FuncToConstFunc<T1,T2,T2>(AFunc), ADefaultValue, AArray);
end;

class function ArrayUtils.Aggr<T1,T2>(
  const AFunc: TConstFunc<T1, T2, T2>;
  const ADefaultValue: T2;
  const AArray: array of T1): T2;
var
  x: T1;
begin
  Assert(Assigned(AFunc));

  Result:= ADefaultValue;
  for x in AArray do
    Result:= AFunc(x, Result);
end;

class function ArrayUtils.Aggr<T>(
  const AFunc: TFunc<T, T, T>;
  const AArray: array of T): T;
begin
  Result:= Aggr<T>(FuncUtils.FuncToConstFunc<T,T,T>(AFunc), AArray);
end;

class function ArrayUtils.Aggr<T>(
  const AFunc: TConstFunc<T, T, T>;
  const AArray: array of T): T;
begin
  Result:= Aggr<T>(AFunc, Default(T), AArray);
end;

class function ArrayUtils.Aggr<T>(
  const AFunc: TFunc<T, T, T>;
  const ADefaultValue: T;
  const AArray: array of T): T;
begin
  Result:= Aggr<T>(FuncUtils.FuncToConstFunc<T,T,T>(AFunc), ADefaultValue, AArray);
end;

class function ArrayUtils.Aggr<T>(
  const AFunc: TConstFunc<T, T, T>;
  const ADefaultValue: T;
  const AArray: array of T): T;
begin
  Result:= Aggr<T,T>(AFunc, ADefaultValue, AArray);
end;

class function ArrayUtils.ArrayOf<T>(const AValues: array of T): TArray<T>;
var
  i: Integer;
begin
  SetLength(Result, High(AValues) - Low(AValues) + 1);
  for i:= Low(AValues) to High(AValues) do
    Result[i - Low(AValues)]:= AValues[i];
end;

class function ArrayUtils.Concat<T>(const AFirstArray,
  ASecondArray: array of T): TArray<T>;
var
  Value: T;
  i: Integer;
begin
  SetLength(Result, Length(AFirstArray) + Length(ASecondArray));

  i:= 0;

  for Value in AFirstArray do
    begin
      Result[i]:= Value;
      Inc(i);
    end;

  for Value in ASecondArray do
    begin
      Result[i]:= Value;
      Inc(i);
    end;
end;

class function ArrayUtils.Filter<T>(const APredicate: TPredicate<T>;
  const AArray: array of T): TArray<T>;
begin
  Result:= Filter<T>(FuncUtils.PredicateToConstPredicate<T>(APredicate), AArray);
end;

class function ArrayUtils.Filter<T>(const APredicate: TConstPredicate<T>;
  const AArray: array of T): TArray<T>;
var
  x: T;
begin
  Assert(Assigned(APredicate));

  Result:= nil;
  for x in AArray do
    if APredicate(x) then
      Result:= Concat<T>(Result, x);
end;

class function ArrayUtils.Distinct<T>(const AEqualityComparison: TEqualityComparison<T>;
  const AArray: array of T): TArray<T>;
var
  x: T;
  i: Integer;
  FilterPredicate: TConstPredicate<T>;
begin
  Assert(Assigned(AEqualityComparison));

  i:= -1;
  Result:= nil;
  for x in AArray do
    begin
      Inc(i);

      FilterPredicate:=
        function(const AItem: T): Boolean
        begin
          Result:= AEqualityComparison(AItem, x);
        end;

      if (Length(Filter<T>(FilterPredicate, Slice<T>(AArray, i))) = 0) then
        Result:= Concat<T>(Result, x);
    end;
end;

class function ArrayUtils.Map<T1,T2>(
  const AFunc: TFunc<T1,T2>;
  const AArray: array of T1): TArray<T2>;
begin
  Result:= Map<T1,T2>(FuncUtils.FuncToConstFunc<T1,T2>(AFunc), AArray);
end;

class function ArrayUtils.Map<T1,T2>(
  const AFunc: TConstFunc<T1,T2>;
  const AArray: array of T1): TArray<T2>;
var
  i: Integer;
begin
  Assert(Assigned(AFunc));
  SetLength(Result, Length(AArray));
  for i:= 0 to Length(AArray)-1 do
    Result[i]:= AFunc(AArray[i]);
end;

class function ArrayUtils.Map<T>(
  const AFunc: TFunc<T,T>;
  const AArray: array of T): TArray<T>;
begin
  Result:= Map<T>(FuncUtils.FuncToConstFunc<T,T>(AFunc), AArray);
end;

class function ArrayUtils.Map<T>(
  const AFunc: TConstFunc<T,T>;
  const AArray: array of T): TArray<T>;
begin
  Result:= Map<T,T>(AFunc, AArray);
end;

class function ArrayUtils.Slice<T>(const AArray: array of T;
  const ACount: Integer): TArray<T>;
begin
  Result:= SliceFrom<T>(AArray, 0, ACount);
end;

class function ArrayUtils.SliceFrom<T>(
  const AArray: array of T; const AStartIndex: Integer; const ACount: Integer = -1): TArray<T>;
var
  i: Integer;
  RealCount: Integer;
begin
  if (AStartIndex < 0) or (AStartIndex >= Length(AArray)) then
    Exit(nil);

  if (ACount < 0) then
    RealCount:= Length(AArray) - AStartIndex
  else
    RealCount:= Min(ACount, Length(AArray) - AStartIndex);

  SetLength(Result, RealCount);
  for i:= 0 to RealCount - 1 do
    Result[i]:= AArray[AStartIndex + i];
end;

class function ArrayUtils.SliceFromTo<T>(const AArray: array of T;
  const AStartIndex, AEndIndex: Integer): TArray<T>;
begin
  Result:= SliceFrom<T>(AArray, AStartIndex, (AEndIndex - AStartIndex + 1));
end;

class function ArrayUtils.Concat<T>(const AValue: T; const AArray: array of T): TArray<T>;
begin
  Result:= Concat<T>([AValue], AArray);
end;

class function ArrayUtils.Concat<T>(const AArray: array of T;
  const AValue: T): TArray<T>;
begin
  Result:= Concat<T>(AArray, [AValue]);
end;

{ TEnumerableRec<ItemType> }

constructor TEnumerableRec<ItemType>.Create(const AEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>);
begin
  FEnumeratorFactoryFunc:= AEnumeratorFactoryFunc;
end;

function TEnumerableRec<ItemType>.GetEnumerator: TEnumerator<ItemType>;
begin
  Result:= FEnumeratorFactoryFunc();
end;

class operator TEnumerableRec<ItemType>.Add(const A, B: TEnumerableRec<ItemType>): TEnumerableRec<ItemType>;
begin
  Result:= A.Concat(B);
end;

class operator TEnumerableRec<ItemType>.Add(const A: TEnumerableRec<ItemType>; const B: ItemType): TEnumerableRec<ItemType>;
begin
  Result:= A.Append(B);
end;

class operator TEnumerableRec<ItemType>.Add(const A: ItemType; const B: TEnumerableRec<ItemType>): TEnumerableRec<ItemType>;
begin
  Result:= B.Insert(A);
end;

class operator TEnumerableRec<ItemType>.Implicit(const AValue: TEnumerableRec<ItemType>): TArray<ItemType>;
begin
  Result:= AValue.ToArray;
end;

function TEnumerableRec<ItemType>.ToArray: TArray<ItemType>;
var
  x: ItemType;
begin
  Result:= nil;
  for x in Self do
    Result:= ArrayUtils.Concat<ItemType>(Result, x);
end;

function TEnumerableRec<ItemType>.Exists: Boolean;
var
  Item: ItemType;
begin
  for Item in Self do
    Exit(True);

  Result:= False;
end;

function TEnumerableRec<ItemType>.Single: ItemType;
begin
  if (Count <> 1) then
    raise Exception.Create('Not a single item in TEnumerableRec');

  Result:= First;
end;

function TEnumerableRec<ItemType>.First: ItemType;
var
  Item: ItemType;
begin
  for Item in Self do
    Exit(Item);

  raise EEmptyEnumerableRec.Create('Enumerable is empty');
end;

function TEnumerableRec<ItemType>.FirstOrDefault: ItemType;
begin
  Result:= FirstOrDefault(Default(ItemType));
end;

function TEnumerableRec<ItemType>.FirstOrDefault(const ADefault: ItemType): ItemType;
var
  Item: ItemType;
begin
  for Item in Self do
    Exit(Item);

  Result:= ADefault;
end;

function TEnumerableRec<ItemType>.Skip(const ASkipCount: Integer): TEnumerableRec<ItemType>;
begin
  Result:= TSkipEnumerator<ItemType>.CreateEnumerableRec(FEnumeratorFactoryFunc, ASkipCount);
end;

function TEnumerableRec<ItemType>.Take(const ATakeCount: Integer): TEnumerableRec<ItemType>;
begin
  Result:= TTakeEnumerator<ItemType>.CreateEnumerableRec(FEnumeratorFactoryFunc, ATakeCount);
end;

function TEnumerableRec<ItemType>.Filter(const AFilterPredicate: TConstPredicate<ItemType>): TEnumerableRec<ItemType>;
begin
  Result:= TFilterEnumerator<ItemType>.CreateEnumerableRec(FEnumeratorFactoryFunc, AFilterPredicate);
end;

function TEnumerableRec<ItemType>.Filter(const AFilterPredicate: TPredicate<ItemType>): TEnumerableRec<ItemType>;
begin
  Result:= Filter(FuncUtils.PredicateToConstPredicate<ItemType>(AFilterPredicate));
end;

function TEnumerableRec<ItemType>.Filter(const AValue: ItemType): TEnumerableRec<ItemType>;
begin
  Result:= Filter(Funcs<ItemType>.IsEqualPredicate(AValue));
end;

function TEnumerableRec<ItemType>.Distinct(const AEqualityComparison: TEqualityComparison<ItemType>): TEnumerableRec<ItemType>;
begin
  Result:= TDistinctEnumerator<ItemType>.CreateEnumerableRec(FEnumeratorFactoryFunc, AEqualityComparison);
end;

function TEnumerableRec<ItemType>.Map<ResultItemType>(const AMapFunc: TConstFunc<ItemType, ResultItemType>): TEnumerableRec<ResultItemType>;
begin
  Result:= TMapEnumerator<ItemType, ResultItemType>.CreateEnumerableRec(FEnumeratorFactoryFunc, AMapFunc);
end;

function TEnumerableRec<ItemType>.Map<ResultItemType>(const AMapFunc: TFunc<ItemType, ResultItemType>): TEnumerableRec<ResultItemType>;
begin
  Result:= Map<ResultItemType>(FuncUtils.FuncToConstFunc<ItemType, ResultItemType>(AMapFunc));
end;

function TEnumerableRec<ItemType>.Map(const AMapFunc: TConstFunc<ItemType, ItemType>): TEnumerableRec<ItemType>;
begin
  Result:= Map<ItemType>(AMapFunc);
end;

function TEnumerableRec<ItemType>.Map(const AMapFunc: TFunc<ItemType, ItemType>): TEnumerableRec<ItemType>;
begin
  Result:= Map(FuncUtils.FuncToConstFunc<ItemType, ItemType>(AMapFunc));
end;

function TEnumerableRec<ItemType>.Concat(const AEnumerable: TEnumerableRec<ItemType>): TEnumerableRec<ItemType>;
begin
  Result:= TConcatEnumerator<ItemType>.CreateEnumerableRec(FEnumeratorFactoryFunc, AEnumerable.FEnumeratorFactoryFunc);
end;

function TEnumerableRec<ItemType>.Append(const AItem: ItemType): TEnumerableRec<ItemType>;
begin
  Result:= Concat(TSingleItemEnumerator<ItemType>.CreateEnumerableRec(AItem));
end;

function TEnumerableRec<ItemType>.Insert(const AItem: ItemType): TEnumerableRec<ItemType>;
begin
  Result:= TSingleItemEnumerator<ItemType>.CreateEnumerableRec(AItem).Concat(Self);
end;

function TEnumerableRec<ItemType>.Aggr(
  const AFunc: TFunc<ItemType, ItemType, ItemType>;
  const ADefaultValue: ItemType): ItemType;
begin
  Result:= Aggr(FuncUtils.FuncToConstFunc<ItemType,ItemType,ItemType>(AFunc), ADefaultValue);
end;

function TEnumerableRec<ItemType>.Aggr(
  const AFunc: TFunc<ItemType, ItemType, ItemType>): ItemType;
begin
  Result:= Aggr(FuncUtils.FuncToConstFunc<ItemType,ItemType,ItemType>(AFunc));
end;

function TEnumerableRec<ItemType>.Aggr(
  const AFunc: TConstFunc<ItemType, ItemType, ItemType>;
  const ADefaultValue: ItemType): ItemType;
begin
  Result:= Aggr<ItemType>(AFunc, ADefaultValue);
end;

function TEnumerableRec<ItemType>.Aggr(
  const AFunc: TConstFunc<ItemType, ItemType, ItemType>): ItemType;
begin
  Result:= Aggr<ItemType>(AFunc);
end;

function TEnumerableRec<ItemType>.Aggr<ResultType>(
  const AFunc: TFunc<ItemType, ResultType, ResultType>;
  const ADefaultValue: ResultType): ResultType;
begin
  Result:= Aggr<ResultType>(FuncUtils.FuncToConstFunc<ItemType,ResultType,ResultType>(AFunc), ADefaultValue);
end;

function TEnumerableRec<ItemType>.Aggr<ResultType>(
  const AFunc: TFunc<ItemType, ResultType, ResultType>): ResultType;
begin
  Result:= Aggr<ResultType>(FuncUtils.FuncToConstFunc<ItemType,ResultType,ResultType>(AFunc));
end;

function TEnumerableRec<ItemType>.Aggr<ResultType>(
  const AFunc: TConstFunc<ItemType, ResultType, ResultType>;
  const ADefaultValue: ResultType): ResultType;
var
  Item: ItemType;
begin
  Assert(Assigned(AFunc));

  Result:= ADefaultValue;
  for Item in Self do
    Result:= AFunc(Item, Result);
end;

function TEnumerableRec<ItemType>.Aggr<ResultType>(
  const AFunc: TConstFunc<ItemType, ResultType, ResultType>): ResultType;
begin
  Result:= Aggr<ResultType>(AFunc, Default(ResultType));
end;

function TEnumerableRec<ItemType>.Count: Integer;
begin
  Result:= Aggr<Integer>(AggrFuncs.CountFunc<ItemType>());
end;

function TEnumerableRec<ItemType>.AsOf<ResultItemType>: TEnumerableRec<ResultItemType>;
begin
  Result:= _AsOf<ResultItemType>;
end;

function TEnumerableRec<ItemType>._AsOf<ResultItemType>: TEnumerableRec<ResultItemType>;
begin
  Result:= Map<ResultItemType>(ObjectFuncs<ItemType, ResultItemType>.AsOfFunc);
end;

function TEnumerableRec<ItemType>.OfType<ResultItemType>: TEnumerableRec<ResultItemType>;
begin
  Result:= _OfType<ResultItemType>;
end;

function TEnumerableRec<ItemType>._OfType<ResultItemType>: TEnumerableRec<ResultItemType>;
begin
  Result:= Filter(ObjectFuncs<ItemType, ResultItemType>.IsOfPredicate).Map<ResultItemType>(ObjectFuncs<ItemType, ResultItemType>.AsOfFunc);
end;

function TEnumerableRec<ItemType>.ForEach: TNestProcRec<ItemType>;
var
  EnumerableRec: TEnumerableRec<ItemType>;
begin
  EnumerableRec:= Self;
  Result:= TNestProcRec<ItemType>.Create(
    procedure (AProc: TConstProc<ItemType>)
    var
      Item: ItemType;
    begin
      for Item in EnumerableRec do
        AProc(Item);
    end);
end;

function TEnumerableRec<ItemType>.Flatten<ResultItemType>: TEnumerableRec<ResultItemType>;
var
  SelfRec: TEnumerableRec<TEnumerableRec<ResultItemType>>;
  Item: TEnumerableRec<ResultItemType>;
begin
  Assert(TValue.From<TEnumerableRec<ItemType>>(Self).IsType<TEnumerableRec<TEnumerableRec<ResultItemType>>>);
  SelfRec:= TEnumerableRec<TEnumerableRec<ResultItemType>>(Self);

  Result:= TEmptyEnumerator<ResultItemType>.CreateEnumerableRec;
  for Item in SelfRec do
    Result:= Result + Item;
end;

function TEnumerableRec<ItemType>.Reversed: TEnumerableRec<ItemType>;
begin
  Result:= TReverseEnumerator<ItemType>.CreateEnumerableRec(FEnumeratorFactoryFunc);
end;

{ TGenericEnumerator<ItemType> }

constructor TGenericEnumerator<ItemType>.Create;
var
  ItemTypeData: PTypeData;
begin
  inherited Create;
  ItemTypeData:= GetTypeData(TypeInfo(ItemType));
  FItemTypeClass:= ItemTypeData^.ClassType;
  FItemTypeInterfaceGUID:= ItemTypeData^.Guid;
end;

{ TProxyEnumerator<ItemType> }

constructor TProxyEnumerator<ItemType>.Create(
  const AOldEnumeratorFactoryFunc: TFunc<TObject>);
begin
  inherited Create;
  SetOldEnumerator(AOldEnumeratorFactoryFunc());
end;

class function TProxyEnumerator<ItemType>.CreateEnumerableRec(const AOldEnumeratorFactoryFunc: TFunc<TObject>): TEnumerableRec<ItemType>;
begin
  Result:=
    TEnumerableRec<ItemType>.Create(
      function: TEnumerator<ItemType>
      begin
        Result:= Create(AOldEnumeratorFactoryFunc);
      end);
end;

destructor TProxyEnumerator<ItemType>.Destroy;
begin
  FreeAndNil(FOldEnumerator);
  inherited;
end;

function TProxyEnumerator<ItemType>.DoGetCurrent: ItemType;
begin
  Result:= FOldCurrentMethod();
end;

function TProxyEnumerator<ItemType>.DoMoveNext: Boolean;
begin
  Result:= FOldMoveNextMethod();
end;

procedure TProxyEnumerator<ItemType>.SetOldEnumerator(const AValue: TObject);
{$IFNDEF VER240}
const
  PROPSLOT_MASK = $FF000000;
  PROPSLOT_FIELD = $FF000000;
  PROPSLOT_VIRTUAL = $FE000000;
type
  IntPtr = NativeInt;
{$ENDIF}
var
  RttiContext: TRttiContext;
  EnumeratorRttiType: TRttiType;
  CurrentProp: TRttiInstanceProperty;
  MoveNextFunc: TRttiMethod;
  PropGetter: Integer;
  PropCodePointer: Pointer;
begin
  FOldEnumerator:= AValue;

  RttiContext:= TRttiContext.Create;
  try
    EnumeratorRttiType:= RttiContext.GetType(AValue.ClassType);

    MoveNextFunc:= EnumeratorRttiType.GetMethod('MoveNext');
    Assert(Assigned(MoveNextFunc));

    TMethod(FOldMoveNextMethod).Code:= MoveNextFunc.CodeAddress;
    TMethod(FOldMoveNextMethod).Data:= AValue;

    CurrentProp:= (EnumeratorRttiType.GetProperty('Current') as TRttiInstanceProperty);
    Assert(Assigned(CurrentProp));

    // begin izkopiran kod ot Rtti.pas ot TRttiInstanceProperty.DoGetValue

    PropGetter:= Integer(CurrentProp.PropInfo^.GetProc);

    // assert che property-to ne chete ot pole, a si ima getter funkciq
    Assert((IntPtr(PropGetter) and PROPSLOT_MASK) <> PROPSLOT_FIELD, 'Property "Current" of enumerator must have a getter');

    if ((IntPtr(PropGetter) and PROPSLOT_MASK) = PROPSLOT_VIRTUAL) then
      PropCodePointer:= PPointer(PInteger(AValue)^ + Smallint(PropGetter))^  // Virtual dispatch, but with offset, not slot
    else
      PropCodePointer:= Pointer(PropGetter);  // Static dispatch

    // end izkopiran kod

    TMethod(FOldCurrentMethod).Code:= PropCodePointer;
    TMethod(FOldCurrentMethod).Data:= AValue;
  finally
    RttiContext.Free;
  end;
end;

{ TBaseWrapperEnumerator<WrappedItemType, ItemType> }

constructor TBaseWrapperEnumerator<WrappedItemType, ItemType>.Create(
  const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<WrappedItemType>>);
begin
  inherited Create;
  FWrappedEnumerator:= AWrappedEnumeratorFactoryFunc();
end;

class function TBaseWrapperEnumerator<WrappedItemType, ItemType>.CreateEnumerableRec(
  const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<WrappedItemType>>): TEnumerableRec<ItemType>;
begin
  Result:=
    TEnumerableRec<ItemType>.Create(
      function: TEnumerator<ItemType>
      begin
        Result:= Create(AWrappedEnumeratorFactoryFunc);
      end);
end;

destructor TBaseWrapperEnumerator<WrappedItemType, ItemType>.Destroy;
begin
  FreeAndNil(FWrappedEnumerator);
  inherited;
end;

{ TBaseFilterEnumerator<ItemType> }

function TBaseFilterEnumerator<ItemType>.DoGetCurrent: ItemType;
begin
  Result:= WrappedEnumerator.Current;
end;

{ TSkipEnumerator<ItemType> }

constructor TSkipEnumerator<ItemType>.Create(
  const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>;
  const ASkipCount: Integer);
begin
  inherited Create(AWrappedEnumeratorFactoryFunc);
  FSkipCount:= ASkipCount;
end;

class function TSkipEnumerator<ItemType>.CreateEnumerableRec(
  const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>;
  const ASkipCount: Integer): TEnumerableRec<ItemType>;
begin
  Result:=
    TEnumerableRec<ItemType>.Create(
      function: TEnumerator<ItemType>
      begin
        Result:= Create(AWrappedEnumeratorFactoryFunc, ASkipCount);
      end);
end;

function TSkipEnumerator<ItemType>.DoMoveNext: Boolean;
begin
  Result:= False;
  while WrappedEnumerator.MoveNext do
    if (FSkipCount > 0) then
      Dec(FSkipCount)
    else
      Exit(True);
end;

{ TTakeEnumerator<ItemType> }

constructor TTakeEnumerator<ItemType>.Create(
  const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>;
  const ATakeCount: Integer);
begin
  inherited Create(AWrappedEnumeratorFactoryFunc);
  FTakeCount:= ATakeCount;
end;

class function TTakeEnumerator<ItemType>.CreateEnumerableRec(
  const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>;
  const ATakeCount: Integer): TEnumerableRec<ItemType>;
begin
  Result:=
    TEnumerableRec<ItemType>.Create(
      function: TEnumerator<ItemType>
      begin
        Result:= Create(AWrappedEnumeratorFactoryFunc, ATakeCount);
      end);
end;

function TTakeEnumerator<ItemType>.DoMoveNext: Boolean;
begin
  if (FTakeCount = 0) then
    Result:= False
  else
    begin
      Result:= WrappedEnumerator.MoveNext;

      if (FTakeCount > 0) then
        Dec(FTakeCount);
    end;
end;

{ TFilterEnumerator<ItemType> }

constructor TFilterEnumerator<ItemType>.Create(
  const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>;
  const AFilterPredicate: TConstPredicate<ItemType>);
begin
  inherited Create(AWrappedEnumeratorFactoryFunc);
  FFilterPredicate:= AFilterPredicate;
end;

class function TFilterEnumerator<ItemType>.CreateEnumerableRec(
  const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>;
  const AFilterPredicate: TConstPredicate<ItemType>): TEnumerableRec<ItemType>;
begin
  Result:=
    TEnumerableRec<ItemType>.Create(
      function: TEnumerator<ItemType>
      begin
        Result:= Create(AWrappedEnumeratorFactoryFunc, AFilterPredicate);
      end);
end;

function TFilterEnumerator<ItemType>.DoMoveNext: Boolean;
begin
  Result:= False;
  while WrappedEnumerator.MoveNext do
    if FFilterPredicate(Current) then
      Exit(True);
end;

{ TDistinctEnumerator<ItemType> }

constructor TDistinctEnumerator<ItemType>.Create(
  const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>;
  const AEqualityComparison: TEqualityComparison<ItemType>);
begin
  inherited Create(AWrappedEnumeratorFactoryFunc);
  FWrappedEnumeratorFactoryFunc:= AWrappedEnumeratorFactoryFunc;
  FEqualityComparison:= AEqualityComparison;
  FIndex:= -1;
end;

class function TDistinctEnumerator<ItemType>.CreateEnumerableRec(
  const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>;
  const AEqualityComparison: TEqualityComparison<ItemType>): TEnumerableRec<ItemType>;
begin
  Result:=
    TEnumerableRec<ItemType>.Create(
      function: TEnumerator<ItemType>
      begin
        Result:= Create(AWrappedEnumeratorFactoryFunc, AEqualityComparison);
      end);
end;

function TDistinctEnumerator<ItemType>.DoMoveNext: Boolean;
var
  FilterPredicate: TConstPredicate<ItemType>;
begin
  Result:= False;
  while WrappedEnumerator.MoveNext do
    begin
      Inc(FIndex);

      FilterPredicate:=
        function(const AItem: ItemType): Boolean
        begin
          Result:= FEqualityComparison(AItem, Current);
        end;

      if not TEnumerableRec<ItemType>.Create(FWrappedEnumeratorFactoryFunc).Take(FIndex).Filter(FilterPredicate).Exists then
        Exit(True);
    end;
end;

{ TMapEnumerator<WrappedItemType, ItemType> }

constructor TMapEnumerator<WrappedItemType, ItemType>.Create(
  const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<WrappedItemType>>;
  const AMapFunc: TConstFunc<WrappedItemType, ItemType>);
begin
  inherited Create(AWrappedEnumeratorFactoryFunc);
  FMapFunc:= AMapFunc;
end;

class function TMapEnumerator<WrappedItemType, ItemType>.CreateEnumerableRec(
  const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<WrappedItemType>>;
  const AMapFunc: TConstFunc<WrappedItemType, ItemType>): TEnumerableRec<ItemType>;
begin
  Result:=
    TEnumerableRec<ItemType>.Create(
      function: TEnumerator<ItemType>
      begin
        Result:= Create(AWrappedEnumeratorFactoryFunc, AMapFunc);
      end);
end;

function TMapEnumerator<WrappedItemType, ItemType>.DoGetCurrent: ItemType;
begin
  Result:= FMapFunc(WrappedEnumerator.Current);
end;

function TMapEnumerator<WrappedItemType, ItemType>.DoMoveNext: Boolean;
begin
  Result:= WrappedEnumerator.MoveNext;
end;

{ TBaseBinaryEnumerator<ItemType> }

constructor TBaseBinaryEnumerator<ItemType>.Create(
  const ALeftEnumeratorFactoryFunc, ARightEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>);
begin
  inherited Create;
  FLeftEnumerator:= ALeftEnumeratorFactoryFunc();
  FRightEnumerator:= ARightEnumeratorFactoryFunc();
end;

class function TBaseBinaryEnumerator<ItemType>.CreateEnumerableRec(
  const ALeftEnumeratorFactoryFunc, ARightEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>): TEnumerableRec<ItemType>;
begin
  Result:=
    TEnumerableRec<ItemType>.Create(
      function: TEnumerator<ItemType>
      begin
        Result:= Create(ALeftEnumeratorFactoryFunc, ARightEnumeratorFactoryFunc);
      end);
end;

destructor TBaseBinaryEnumerator<ItemType>.Destroy;
begin
  FreeAndNil(FLeftEnumerator);
  FreeAndNil(FRightEnumerator);
  inherited;
end;

{ TConcatEnumerator<ItemType> }

function TConcatEnumerator<ItemType>.DoGetCurrent: ItemType;
begin
  if FLeftEnumeratorPassed then
    Result:= RightEnumerator.Current
  else
    Result:= LeftEnumerator.Current;
end;

function TConcatEnumerator<ItemType>.DoMoveNext: Boolean;
begin
  if not FLeftEnumeratorPassed then
    begin
      if LeftEnumerator.MoveNext then
        Exit(True)
      else
        FLeftEnumeratorPassed:= True;
    end;

  Result:= RightEnumerator.MoveNext;
end;

{ TIndexedEnumerator<ItemType, ContainerType> }

class function TIndexedEnumerator<ItemType, ContainerType>.CreateEnumerableRec(const AContainer: ContainerType): TEnumerableRec<ItemType>;
begin
  Result:=
    TEnumerableRec<ItemType>.Create(
      function: TEnumerator<ItemType>
      begin
        Result:= Create(AContainer);
      end);
end;

constructor TIndexedEnumerator<ItemType, ContainerType>.Create(const AContainer: ContainerType);
begin
  inherited Create;
  FContainer:= AContainer;
  FIndex:= -1;
end;

function TIndexedEnumerator<ItemType, ContainerType>.DoGetCurrent: ItemType;
begin
  Result:= GetItem(FIndex);
end;

function TIndexedEnumerator<ItemType, ContainerType>.DoMoveNext: Boolean;
begin
  Result:= (FIndex < (ItemCount - 1));
  if Result then
    Inc(FIndex);
end;

{ TArrayEnumerator<T> }

function TArrayEnumerator<T>.GetItem(AIndex: Integer): T;
begin
  Result:= Container[AIndex];
end;

function TArrayEnumerator<T>.ItemCount: Integer;
begin
  Result:= Length(Container);
end;

{ TLinkedListEnumerator<NodeType, DataType> }

constructor TLinkedListEnumerator<NodeType, DataType>.Create(const ANode: NodeType);
begin
  inherited Create;
  FCurrent:= Default(NodeType);
  FNext:= ANode;
end;

class function TLinkedListEnumerator<NodeType, DataType>.CreateEnumerableRec(const ANode: NodeType): TEnumerableRec<DataType>;
begin
  Result:=
    TEnumerableRec<DataType>.Create(
      function: TEnumerator<DataType> begin
        Result:= Create(ANode);
      end);
end;

function TLinkedListEnumerator<NodeType, DataType>.DoGetCurrent: DataType;
begin
  Result:= GetNodeData(FCurrent);
end;

function TLinkedListEnumerator<NodeType, DataType>.DoMoveNext: Boolean;
begin
  Result:= (TComparer<NodeType>.Default.Compare(FNext, Default(NodeType)) <> 0);
  if Result then
    begin
      FCurrent:= FNext;
      FNext:= GetNextNode(FCurrent);
    end;
end;

{ TSimpleLinkedListEnumerator<ItemType> }

function TSimpleLinkedListEnumerator<ItemType>.GetNodeData(const ANode: ItemType): ItemType;
begin
  Result:= ANode;
end;

{ TEmptyEnumerator<ItemType> }

class function TEmptyEnumerator<ItemType>.CreateEnumerableRec: TEnumerableRec<ItemType>;
begin
  Result:=
    TEnumerableRec<ItemType>.Create(
      function: TEnumerator<ItemType> begin
        Result:= Create;
      end);
end;

function TEmptyEnumerator<ItemType>.DoGetCurrent: ItemType;
begin
  raise Exception.Create('DoGetCurrent on empty enumerator should never be called!');
end;

function TEmptyEnumerator<ItemType>.DoMoveNext: Boolean;
begin
  Result:= False;
end;

{ TSingleItemEnumerator<ItemType> }

constructor TSingleItemEnumerator<ItemType>.Create(const AItem: ItemType);
begin
  inherited Create;
  FItem:= AItem;
end;

class function TSingleItemEnumerator<ItemType>.CreateEnumerableRec(const AItem: ItemType): TEnumerableRec<ItemType>;
begin
  Result:=
    TEnumerableRec<ItemType>.Create(
      function: TEnumerator<ItemType> begin
        Result:= Create(AItem);
      end);
end;

function TSingleItemEnumerator<ItemType>.DoGetCurrent: ItemType;
begin
  Result:= FItem;
end;

function TSingleItemEnumerator<ItemType>.DoMoveNext: Boolean;
begin
  Result:= not FItemIsReturned;
  FItemIsReturned:= True;
end;

{ TReverseEnumerator<ItemType> }

constructor TReverseEnumerator<ItemType>.Create(const AWrappedEnumeratorFactoryFunc: TFunc<TEnumerator<ItemType>>);
begin
  inherited Create(AWrappedEnumeratorFactoryFunc);

  FItems:= TStack<ItemType>.Create;

  while WrappedEnumerator.MoveNext do
    FItems.Push(WrappedEnumerator.Current);
end;

destructor TReverseEnumerator<ItemType>.Destroy;
begin
  FreeAndNil(FItems);
  inherited;
end;

function TReverseEnumerator<ItemType>.DoGetCurrent: ItemType;
begin
  Result:= FItems.Peek;
end;

function TReverseEnumerator<ItemType>.DoMoveNext: Boolean;
begin
  if not FIsEnumeratorStarted then
    FIsEnumeratorStarted:= True
  else
    FItems.Pop;

  Result:= (FItems.Count > 0);
end;

end.
