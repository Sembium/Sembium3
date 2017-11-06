unit uNestProc;

interface

uses
  SysUtils, OtlTask, OtlTaskControl, uFuncUtils;

type
  TNestProc = reference to procedure (AProc: TProc);
  TNestProc<ParamType> = reference to procedure (AProc: TConstProc<ParamType>);
  TNestFunc<ResultType> = reference to function (AFunc: TFunc<ResultType>): ResultType;

type
  NestUtils = class
  public
    class function NestProcToNestFunc<ResultType>(const A: TNestProc): TNestFunc<ResultType>; static;
    class function IdentityNestFunc<ResultType>: TNestFunc<ResultType>; static;
  end;

type
  TEmptyRec = record
  strict private
    {$HINTS OFF}
    FSomeInteger: Integer;  // dxe2 64-bit bug workaround
    {$HINTS ON}
  end;

type
  TNestProcRec = record
  strict private
    FSomeString: string;  // d2010 bug workaround - za da pravi try-finally frames recorda i da reference countva pravilno TFunc-poletata. ako go niama tova se poluchava AV

    class function DoDivide<ResultType>(const A: TNestProcRec; const B: TFunc<ResultType>): ResultType; static;
  private
    FNestProc: TNestProc;
  public
    constructor Create(const ANestProc: TNestProc);

    // tezi sa public, za da ne reve kompilatora che ne se polzwali ( polzwat se ama toi ne se useshta )
    class function Nest(const A: TNestProc; const B: TNestProc): TNestProc; overload; static;
    class function Nest(const A: TNestProc; const B: TProc): TProc; overload; static;
    class function Nest<ResultType>(const A: TNestProc; const B: TFunc<ResultType>): TFunc<ResultType>; overload; static;

    class operator Divide(const A: TNestProcRec; const B: TNestProcRec): TNestProcRec;
    class operator Divide(const A: TNestProcRec; const B: TProc): TEmptyRec;
    class operator Divide(const A: TNestProcRec; const B: TFunc<Integer>): Integer;
    class operator Divide(const A: TNestProcRec; const B: TFunc<Real>): Real;
    class operator Divide(const A: TNestProcRec; const B: TFunc<Boolean>): Boolean;
    class operator Divide(const A: TNestProcRec; const B: TFunc<WordBool>): WordBool;
    class operator Divide(const A: TNestProcRec; const B: TFunc<string>): string;
    // do not overload for Variant: no warnig when 'Result:=' is omitted

    function Parallel: TNestProcRec;
    function IsEmpty: Boolean;

    function Nest: TNestProcRec; overload;
    property SomeString: string read FSomeString;
  end;

  TNestProcRec<ParamType> = record
  strict private
    FSomeString: string;

    class function GetOmniTaskFunction(const AProc: TConstProc<ParamType>; const AParam: ParamType): TOmniTaskDelegate; static;
    class function GetParallelProc(const AProc: TConstProc<ParamType>; const ATaskGroup: IOmniTaskGroup): TConstProc<ParamType>; static;
  private
    FNestProc: TNestProc<ParamType>;
  public
    constructor Create(const ANestProc: TNestProc<ParamType>);

    // tezi sa public, za da ne reve kompilatora che ne se polzwali ( polzwat se ama toi ne se useshta )
    class function Nest(const A: TNestProc; const B: TNestProc<ParamType>): TNestProc<ParamType>; overload; static;
    class function Nest(const A: TNestProc<ParamType>; const B: TConstProc<ParamType>): TProc; overload; static;
    class function Nest<ResultType>(const A: TNestProc<ParamType>; const B: TConstFunc<ParamType, ResultType>): TFunc<ResultType>; overload; static;

    class function DoDivide(const A: TNestProcRec<ParamType>; const B: TConstProc<ParamType>): TEmptyRec; overload; static;
    class function DoDivide(const A: TNestProcRec<ParamType>; const B: TProc<ParamType>): TEmptyRec; overload; static;

    class function DoDivide<ResultType>(const A: TNestProcRec<ParamType>; const B: TConstFunc<ParamType, ResultType>): ResultType; overload; static;
    class function DoDivide<ResultType>(const A: TNestProcRec<ParamType>; const B: TFunc<ParamType, ResultType>): ResultType; overload; static;

    class operator Divide(const A: TNestProcRec<ParamType>; const B: TConstProc<ParamType>): TEmptyRec; overload;
    class operator Divide(const A: TNestProcRec<ParamType>; const B: TProc<ParamType>): TEmptyRec; overload;
    class operator Divide(const A: TNestProcRec<ParamType>; const B: TProc): TEmptyRec; overload;

    class operator Divide(const A: TNestProcRec<ParamType>; const B: TConstFunc<ParamType, Integer>): Integer;
    class operator Divide(const A: TNestProcRec<ParamType>; const B: TFunc<ParamType, Integer>): Integer;
    class operator Divide(const A: TNestProcRec<ParamType>; const B: TConstFunc<ParamType, Real>): Real;
    class operator Divide(const A: TNestProcRec<ParamType>; const B: TFunc<ParamType, Real>): Real;
    class operator Divide(const A: TNestProcRec<ParamType>; const B: TConstFunc<ParamType, Boolean>): Boolean;
    class operator Divide(const A: TNestProcRec<ParamType>; const B: TFunc<ParamType, Boolean>): Boolean;
    class operator Divide(const A: TNestProcRec<ParamType>; const B: TConstFunc<ParamType, WordBool>): WordBool;
    class operator Divide(const A: TNestProcRec<ParamType>; const B: TFunc<ParamType, WordBool>): WordBool;
    class operator Divide(const A: TNestProcRec<ParamType>; const B: TConstFunc<ParamType, string>): string;
    class operator Divide(const A: TNestProcRec<ParamType>; const B: TFunc<ParamType, string>): string;
    class operator Divide(const A: TNestProcRec<ParamType>; const B: TConstFunc<ParamType, ParamType>): ParamType;
    class operator Divide(const A: TNestProcRec<ParamType>; const B: TFunc<ParamType, ParamType>): ParamType;
    // do not overload for Variant: no warnig when 'Result:=' is omitted

    class operator Divide(const A: TNestProcRec; const B: TNestProcRec<ParamType>): TNestProcRec<ParamType>; overload;

    function Parallel: TNestProcRec<ParamType>;
    function IsEmpty: Boolean;

    property SomeString: string read FSomeString;
  end;

type
  TNestFuncRec<ResultType> = record
  strict private
    FSomeString: string;

    type
      TNestFunc = TNestFunc<ResultType>;
      TFunc = TFunc<ResultType>;
  private
    FNestFunc: TNestFunc;
  public
    constructor Create(const ANestFunc: TNestFunc); overload;
    constructor Create(const ANestProcRec: TNestProcRec); overload;

    // tezi sa public, za da ne reve kompilatora che ne se polzwali ( polzwat se ama toi ne se useshta )
    class function Nest(const A: TNestFunc; const B: TNestFunc): TNestFunc; overload; static;
    class function Nest(const A: TNestFunc; const B: TNestProc): TNestFunc; overload; static;
    class function Nest(const A: TNestProc; const B: TNestFunc): TNestFunc; overload; static;
    class function Nest(const A: TNestFunc; const B: TFunc): TFunc; overload; static;
    class function Nest(const A: TNestProc; const B: TFunc): TFunc; overload; static;

    class operator Divide(const A: TNestFuncRec<ResultType>; const B: TNestFuncRec<ResultType>): TNestFuncRec<ResultType>;
    class operator Divide(const A: TNestFuncRec<ResultType>; const B: TNestProcRec): TNestFuncRec<ResultType>;
    class operator Divide(const A: TNestProcRec; const B: TNestFuncRec<ResultType>): TNestFuncRec<ResultType>;
    class operator Divide(const A: TNestFuncRec<ResultType>; const B: TFunc<ResultType>): ResultType;

    function IsEmpty: Boolean;

    property SomeString: string read FSomeString;
  end;

const
  EmptyNestProcRec: TNestProcRec = ();

function IfThen(AValue: Boolean; const ATrue, AFalse: TNestProcRec): TNestProcRec; overload;
function IfThen(AValue: Boolean; const ATrue: TNestProcRec): TNestProcRec; overload;

implementation

uses
  uParallelUtils;

function IfThen(AValue: Boolean; const ATrue, AFalse: TNestProcRec): TNestProcRec;
begin
  if AValue then
    Result:= ATrue
  else
    Result:= AFalse;
end;

function IfThen(AValue: Boolean; const ATrue: TNestProcRec): TNestProcRec;
begin
  if AValue then
    Result:= ATrue
  else
    Result:= EmptyNestProcRec;
end;

{ TNestProcRec }

constructor TNestProcRec.Create(const ANestProc: TNestProc);
begin
  FNestProc:= ANestProc;
end;

function TNestProcRec.IsEmpty: Boolean;
begin
  Result:= not Assigned(FNestProc);
end;

class function TNestProcRec.Nest(const A: TNestProc; const B: TProc): TProc;
begin
  Result:=
    procedure begin
      A(B);
    end;
end;

class function TNestProcRec.Nest(const A, B: TNestProc): TNestProc;
begin
  Result:=
    procedure (AProc: TProc) begin
      A(Nest(B, AProc));
    end;
end;

class function TNestProcRec.Nest<ResultType>(const A: TNestProc; const B: TFunc<ResultType>): TFunc<ResultType>;
begin
  Result:= TNestFuncRec<ResultType>.Nest(NestUtils.NestProcToNestFunc<ResultType>(A), B);
end;

class operator TNestProcRec.Divide(const A: TNestProcRec; const B: TNestProcRec): TNestProcRec;
begin
  if B.IsEmpty then
    Exit(A);

  if A.IsEmpty then
    Exit(B);

  Result:= TNestProcRec.Create(Nest(A.FNestProc, B.FNestProc));
end;

class operator TNestProcRec.Divide(const A: TNestProcRec; const B: TProc): TEmptyRec;
begin
  if A.IsEmpty then
    B()
  else
    Nest(A.FNestProc, B)();
end;

class function TNestProcRec.DoDivide<ResultType>(const A: TNestProcRec; const B: TFunc<ResultType>): ResultType;
begin
  Result:= Nest<ResultType>(A.FNestProc, B)();
end;

class operator TNestProcRec.Divide(const A: TNestProcRec; const B: TFunc<Boolean>): Boolean;
begin
  Result:= DoDivide<Boolean>(A, B);
end;

class operator TNestProcRec.Divide(const A: TNestProcRec; const B: TFunc<Integer>): Integer;
begin
  Result:= DoDivide<Integer>(A, B);
end;

class operator TNestProcRec.Divide(const A: TNestProcRec; const B: TFunc<Real>): Real;
begin
  Result:= DoDivide<Real>(A, B);
end;

class operator TNestProcRec.Divide(const A: TNestProcRec; const B: TFunc<WordBool>): WordBool;
begin
  Result:= DoDivide<WordBool>(A, B);
end;

class operator TNestProcRec.Divide(const A: TNestProcRec; const B: TFunc<string>): string;
begin
  Result:= DoDivide<string>(A, B);
end;

function TNestProcRec.Nest: TNestProcRec;
begin
  Result:= Self;
end;

function TNestProcRec.Parallel: TNestProcRec;
var
  MyNestProc: TNestProc;
begin
  MyNestProc:= FNestProc;
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      TaskGroup: IOmniTaskGroup;
    begin
      TaskGroup:= CreateTaskGroup;
      try
        MyNestProc(
          procedure begin
            CreateTask(
              procedure (const Task: IOmniTask) begin
                AProc;
              end
            ).Join(TaskGroup).Schedule;
          end);
      finally
        WaitForAllTasks(TaskGroup);
      end;
    end);
end;

{ TNestProcRec<ParamType> }

constructor TNestProcRec<ParamType>.Create(const ANestProc: TNestProc<ParamType>);
begin
  FNestProc:= ANestProc;
end;

class function TNestProcRec<ParamType>.Nest(const A: TNestProc; const B: TNestProc<ParamType>): TNestProc<ParamType>;
begin
  Result:=
    procedure (AProc: TConstProc<ParamType>) begin
      A(Nest(B, AProc));
    end;
end;

class function TNestProcRec<ParamType>.Nest(const A: TNestProc<ParamType>; const B: TConstProc<ParamType>): TProc;
begin
  Result:=
    procedure begin
      A(B);
    end;
end;

class function TNestProcRec<ParamType>.Nest<ResultType>(const A: TNestProc<ParamType>; const B: TConstFunc<ParamType, ResultType>): TFunc<ResultType>;
begin
  Result:=
    function: ResultType begin
      A(FuncUtils.FuncToProc<ParamType, ResultType>(B, Result));
    end;
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec; const B: TNestProcRec<ParamType>): TNestProcRec<ParamType>;
begin
  Assert(not B.IsEmpty);

  if A.IsEmpty then
    Exit(B);

  Result:= TNestProcRec<ParamType>.Create(Nest(A.FNestProc, B.FNestProc));
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec<ParamType>; const B: TConstProc<ParamType>): TEmptyRec;
begin
  Result:= DoDivide(A, B);
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec<ParamType>; const B: TProc<ParamType>): TEmptyRec;
begin
  Result:= DoDivide(A, B);
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec<ParamType>; const B: TProc): TEmptyRec;
begin
  Result:= DoDivide(A, FuncUtils.ProcToConstProc<ParamType>(B));
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec<ParamType>; const B: TConstFunc<ParamType, Integer>): Integer;
begin
  Result:= DoDivide<Integer>(A, B);
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec<ParamType>; const B: TFunc<ParamType, Integer>): Integer;
begin
  Result:= DoDivide<Integer>(A, B);
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec<ParamType>; const B: TConstFunc<ParamType, Real>): Real;
begin
  Result:= DoDivide<Real>(A, B);
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec<ParamType>; const B: TFunc<ParamType, Real>): Real;
begin
  Result:= DoDivide<Real>(A, B);
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec<ParamType>; const B: TConstFunc<ParamType, Boolean>): Boolean;
begin
  Result:= DoDivide<Boolean>(A, B);
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec<ParamType>; const B: TFunc<ParamType, Boolean>): Boolean;
begin
  Result:= DoDivide<Boolean>(A, B);
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec<ParamType>; const B: TConstFunc<ParamType, WordBool>): WordBool;
begin
  Result:= DoDivide<WordBool>(A, B);
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec<ParamType>; const B: TFunc<ParamType, WordBool>): WordBool;
begin
  Result:= DoDivide<WordBool>(A, B);
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec<ParamType>; const B: TConstFunc<ParamType, string>): string;
begin
  Result:= DoDivide<string>(A, B);
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec<ParamType>; const B: TFunc<ParamType, string>): string;
begin
  Result:= DoDivide<string>(A, B);
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec<ParamType>; const B: TConstFunc<ParamType, ParamType>): ParamType;
begin
  Result:= DoDivide<ParamType>(A, B);
end;

class operator TNestProcRec<ParamType>.Divide(const A: TNestProcRec<ParamType>; const B: TFunc<ParamType, ParamType>): ParamType;
begin
  Result:= DoDivide<ParamType>(A, B);
end;

class function TNestProcRec<ParamType>.DoDivide(const A: TNestProcRec<ParamType>; const B: TConstProc<ParamType>): TEmptyRec;
begin
  Assert(not A.IsEmpty);
  Nest(A.FNestProc, B)();
end;

class function TNestProcRec<ParamType>.DoDivide(const A: TNestProcRec<ParamType>; const B: TProc<ParamType>): TEmptyRec;
begin
  Result:= DoDivide(A, FuncUtils.ProcToConstProc<ParamType>(B));
end;

class function TNestProcRec<ParamType>.DoDivide<ResultType>(const A: TNestProcRec<ParamType>; const B: TConstFunc<ParamType, ResultType>): ResultType;
begin
  Assert(not A.IsEmpty);
  Result:= Nest<ResultType>(A.FNestProc, B)();
end;

class function TNestProcRec<ParamType>.DoDivide<ResultType>(const A: TNestProcRec<ParamType>; const B: TFunc<ParamType, ResultType>): ResultType;
begin
  Result:= DoDivide<ResultType>(A, FuncUtils.FuncToConstFunc<ParamType, ResultType>(B));
end;

function TNestProcRec<ParamType>.IsEmpty: Boolean;
begin
  Result:= not Assigned(FNestProc);
end;

class function TNestProcRec<ParamType>.GetOmniTaskFunction(const AProc: TConstProc<ParamType>; const AParam: ParamType): TOmniTaskDelegate;
begin
  Result:=
    procedure (const Task: IOmniTask) begin
      AProc(AParam);
    end
end;

class function TNestProcRec<ParamType>.GetParallelProc(const AProc: TConstProc<ParamType>; const ATaskGroup: IOmniTaskGroup): TConstProc<ParamType>;
begin
  Result:=
    procedure (const AParam: ParamType) begin
      CreateTask(GetOmniTaskFunction(AProc, AParam)).Join(ATaskGroup).Schedule;
    end;
end;

function TNestProcRec<ParamType>.Parallel: TNestProcRec<ParamType>;
var
  MyNestProc: TNestProc<ParamType>;
begin
  MyNestProc:= FNestProc;
  Result:= TNestProcRec<ParamType>.Create(
    procedure (AProc: TConstProc<ParamType>)
    var
      TaskGroup: IOmniTaskGroup;
    begin
      TaskGroup:= CreateTaskGroup;
      try
        MyNestProc(GetParallelProc(AProc, TaskGroup));
      finally
        WaitForAllTasks(TaskGroup);
      end;
    end);
end;

{ TNestFuncRec<ResultType> }

constructor TNestFuncRec<ResultType>.Create(const ANestFunc: TNestFunc);
begin
  FNestFunc:= ANestFunc;
end;

constructor TNestFuncRec<ResultType>.Create(const ANestProcRec: TNestProcRec);
begin
  Create(NestUtils.NestProcToNestFunc<ResultType>(ANestProcRec.FNestProc));
end;

function TNestFuncRec<ResultType>.IsEmpty: Boolean;
begin
  Result:= not Assigned(FNestFunc);
end;

class function TNestFuncRec<ResultType>.Nest(const A: TNestFunc; const B: TNestFunc): TNestFunc;
begin
  Result:=
    function (AFunc: TFunc): ResultType begin
      Result:= A(Nest(B, AFunc));
    end;
end;

class function TNestFuncRec<ResultType>.Nest(const A: TNestFunc; const B: TNestProc): TNestFunc;
begin
  Result:= Nest(A, NestUtils.NestProcToNestFunc<ResultType>(B));
end;

class function TNestFuncRec<ResultType>.Nest(const A: TNestProc; const B: TNestFunc): TNestFunc;
begin
  Result:= Nest(NestUtils.NestProcToNestFunc<ResultType>(A), B);
end;

class function TNestFuncRec<ResultType>.Nest(const A: TNestFunc; const B: TFunc): TFunc;
begin
  Result:=
    function: ResultType begin
      Result:= A(B);
    end;
end;

class function TNestFuncRec<ResultType>.Nest(const A: TNestProc; const B: TFunc): TFunc;
begin
  Result:= Nest(NestUtils.NestProcToNestFunc<ResultType>(A), B);
end;

class operator TNestFuncRec<ResultType>.Divide(const A: TNestFuncRec<ResultType>; const B: TNestFuncRec<ResultType>): TNestFuncRec<ResultType>;
begin
  if B.IsEmpty then
    Exit(A);

  if A.IsEmpty then
    Exit(B);

  Result:= TNestFuncRec<ResultType>.Create(Nest(A.FNestFunc, B.FNestFunc));
end;

class operator TNestFuncRec<ResultType>.Divide(const A: TNestFuncRec<ResultType>; const B: TNestProcRec): TNestFuncRec<ResultType>;
begin
  if B.IsEmpty then
    Exit(A);

  if A.IsEmpty then
    Exit(TNestFuncRec<ResultType>.Create(B));

  Result:= TNestFuncRec<ResultType>.Create(Nest(A.FNestFunc, B.FNestProc));
end;

class operator TNestFuncRec<ResultType>.Divide(const A: TNestProcRec; const B: TNestFuncRec<ResultType>): TNestFuncRec<ResultType>;
begin
  if B.IsEmpty then
    Exit(TNestFuncRec<ResultType>.Create(A));

  if A.IsEmpty then
    Exit(B);

  Result:= TNestFuncRec<ResultType>.Create(Nest(A.FNestProc, B.FNestFunc));
end;

class operator TNestFuncRec<ResultType>.Divide(const A: TNestFuncRec<ResultType>; const B: TFunc): ResultType;
begin
  if A.IsEmpty then
    Result:= B()
  else
    Result:= Nest(A.FNestFunc, B)();
end;

{ NestUtils }

class function NestUtils.IdentityNestFunc<ResultType>: TNestFunc<ResultType>;
begin
  Result:=
    function (AFunc: TFunc<ResultType>): ResultType begin
      Result:= AFunc();
    end;
end;

class function NestUtils.NestProcToNestFunc<ResultType>(const A: TNestProc): TNestFunc<ResultType>;
begin
  Result:=
    function (AFunc: TFunc<ResultType>): ResultType begin
      A(FuncUtils.FuncToProc<ResultType>(AFunc, Result));
    end;
end;

end.
