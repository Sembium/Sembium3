unit uFuncUtils;

interface

uses
  SysUtils;

type
  TConstProc<T> = reference to procedure (const Arg1: T);
  TConstProc<T1,T2> = reference to procedure (const Arg1: T1; const Arg2: T2);
  TConstProc<T1,T2,T3> = reference to procedure (const Arg1: T1; const Arg2: T2; const Arg3: T3);
  TConstProc<T1,T2,T3,T4> = reference to procedure (const Arg1: T1; const Arg2: T2; const Arg3: T3; const Arg4: T4);

  TConstFunc<T,TResult> = reference to function (const Arg1: T): TResult;
  TConstFunc<T1,T2,TResult> = reference to function (const Arg1: T1; const Arg2: T2): TResult;
  TConstFunc<T1,T2,T3,TResult> = reference to function (const Arg1: T1; const Arg2: T2; const Arg3: T3): TResult;
  TConstFunc<T1,T2,T3,T4,TResult> = reference to function (const Arg1: T1; const Arg2: T2; const Arg3: T3; const Arg4: T4): TResult;

  TConstPredicate<T> = reference to function (const Arg1: T): Boolean;

type
  Funcs<T> = class
  strict private
    class function GetIdentityFunc: TConstFunc<T,T>; static;
    class function GetTruePredicate: TConstPredicate<T>; static;
  public
    class function Evaluate(const AFunc: TFunc<T>): T;
    class function IsEqualPredicate(const AValue: T): TConstPredicate<T>;
    class property IdentityFunc: TConstFunc<T,T> read GetIdentityFunc;
    class property TruePredicate: TConstPredicate<T> read GetTruePredicate;
  end;

  ObjectFuncs<T1, T2> = class
  strict private
    class function GetAsOfFunc: TConstFunc<T1,T2>; static;
    class function GetIsOfPredicate: TConstPredicate<T1>; static;
//    class function GetClassType<T>: TClass; static;
  public
    class property AsOfFunc: TConstFunc<T1,T2> read GetAsOfFunc;
    class property IsOfPredicate: TConstPredicate<T1> read GetIsOfPredicate;
  end;

  FuncUtils = class
  public
    class function ProcToConstProc<T>(const AProc: TProc<T>): TConstProc<T>; overload;
    class function ProcToConstProc<T>(const AProc: TProc): TConstProc<T>; overload;
    class function FuncToConstFunc<T,TResult>(const AFunc: TFunc<T,TResult>): TConstFunc<T,TResult>; overload;
    class function FuncToConstFunc<T1,T2,TResult>(const AFunc: TFunc<T1,T2,TResult>): TConstFunc<T1,T2,TResult>; overload;
    class function PredicateToConstPredicate<T>(const AFunc: TPredicate<T>): TConstPredicate<T>;
    class function FuncToProc<ResultType>(const AFunc: TFunc<ResultType>; var AResult: ResultType): TProc; overload; static;
    class function FuncToProc<ParamType, ResultType>(const AFunc: TConstFunc<ParamType, ResultType>; var AResult: ResultType): TConstProc<ParamType>; overload; static;
  end;

  AggrFuncs = class
  public
    class function CountFunc<T>: TConstFunc<T, Integer, Integer>;
  end;

  Funcs = class
  public
    class function Constant<T>(const AValue: T): TFunc<T>;
    class function IsEqualPredicate<T>(const AValue: T): TConstPredicate<T>;
  end;

  MapFuncs = class
  public
    type
      Str = class
      public
        class function PrecedeWith(const APrecedeWithValue: string): TConstFunc<string, string>;
      end;
  end;

implementation

uses
  TypInfo, Generics.Defaults, Rtti;

{ Funcs<T> }

class function Funcs<T>.GetIdentityFunc: TConstFunc<T, T>;
begin
  Result:=
    function (const AValue: T): T
    begin
      Result:= AValue;
    end;
end;

class function Funcs<T>.GetTruePredicate: TConstPredicate<T>;
begin
  Result:=
    function (const AValue: T): Boolean
    begin
      Result:= True;
    end;
end;

class function Funcs<T>.IsEqualPredicate(const AValue: T): TConstPredicate<T>;
begin
  Result:=
    function (const AItem: T): Boolean
    begin
      Result:= TEqualityComparer<T>.Default.Equals(AItem, AValue);
    end;
end;

class function Funcs<T>.Evaluate(const AFunc: TFunc<T>): T;
begin
  Result:= AFunc();
end;

{ ObjectFuncs<T1, T2> }

// old - wzimane na TClass-a na <T>
//class function ObjectFuncs<T1, T2>.GetClassType<T>: TClass;
//begin
//  Result:= GetTypeData(TypeInfo(T))^.ClassType;
//end;

class function ObjectFuncs<T1, T2>.GetAsOfFunc: TConstFunc<T1, T2>;
begin
  Result:=
    function (const AValue: T1): T2
    begin
      Result:= TValue.From<T1>(AValue).AsType<T2>;
    end;
end;

class function ObjectFuncs<T1, T2>.GetIsOfPredicate: TConstPredicate<T1>;
begin
  Result:=
    function (const AValue: T1): Boolean
    begin
      Result:= TValue.From<T1>(AValue).IsType<T2>;
    end;
end;

{ FuncUtils }

class function FuncUtils.ProcToConstProc<T>(const AProc: TProc<T>): TConstProc<T>;
begin
  Result:=
    procedure (const AValue: T)
    begin
      AProc(AValue);
    end;
end;

class function FuncUtils.ProcToConstProc<T>(const AProc: TProc): TConstProc<T>;
begin
  Result:=
    procedure (const AValue: T)
    begin
      AProc();
    end;
end;

class function FuncUtils.FuncToConstFunc<T,TResult>(
  const AFunc: TFunc<T, TResult>): TConstFunc<T, TResult>;
begin
  Result:=
    function (const AValue: T): TResult
    begin
      Result:= AFunc(AValue);
    end;
end;

class function FuncUtils.FuncToConstFunc<T1,T2,TResult>(const AFunc: TFunc<T1,T2,TResult>): TConstFunc<T1,T2,TResult>;
begin
  Result:=
    function (const Arg1: T1; const Arg2: T2): TResult
    begin
      Result:= AFunc(Arg1, Arg2);
    end;
end;

class function FuncUtils.PredicateToConstPredicate<T>(
  const AFunc: TPredicate<T>): TConstPredicate<T>;
begin
  Result:=
    function (const AValue: T): Boolean
    begin
      Result:= AFunc(AValue);
    end;
end;

class function FuncUtils.FuncToProc<ResultType>(const AFunc: TFunc<ResultType>; var AResult: ResultType): TProc;
var
  Res: ^ResultType;
begin
  Res:= @AResult;
  Result:=
    procedure begin
      Res^:= AFunc();
    end;
end;

class function FuncUtils.FuncToProc<ParamType, ResultType>(const AFunc: TConstFunc<ParamType, ResultType>; var AResult: ResultType): TConstProc<ParamType>;
var
  Res: ^ResultType;
begin
  Res:= @AResult;
  Result:=
    procedure (const AParam: ParamType) begin
      Res^:= AFunc(AParam);
    end;
end;

{ AggrFuncs }

class function AggrFuncs.CountFunc<T>: TConstFunc<T, Integer, Integer>;
begin
  Result:=
    function (const AItem: T; const AValue: Integer): Integer
    begin
      Result:= AValue + 1;
    end;
end;

{ Funcs }

class function Funcs.Constant<T>(const AValue: T): TFunc<T>;
begin
  Result:=
    function: T begin
      Result:= AValue;
    end;
end;

class function Funcs.IsEqualPredicate<T>(const AValue: T): TConstPredicate<T>;
begin
  Result:= Funcs<T>.IsEqualPredicate(AValue);
end;

{ MapFuncs.Str }

class function MapFuncs.Str.PrecedeWith(const APrecedeWithValue: string): TConstFunc<string, string>;
begin
  Result:=
    function (const AValue: string): string begin
      Result:= APrecedeWithValue + AValue;
    end;
end;

end.
