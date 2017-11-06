unit uRttiUtils;

interface

uses
  uNestProc, Rtti;

type
  TRttiContextHelper = record helper for TRttiContext
  public
    class function Using: TNestProcRec; overload; static;
    class function Using<T>: TNestFuncRec<T>; overload; static;
  end;

implementation

uses
  SysUtils;

class function TRttiContextHelper.Using: TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      RttiContext: TRttiContext;
    begin
      RttiContext:= TRttiContext.Create;
      try
        AProc;
      finally
        RttiContext.Free;
      end;
    end);
end;

class function TRttiContextHelper.Using<T>: TNestFuncRec<T>;
begin
  Result:= TNestFuncRec<T>.Create(
    function (AFunc: TFunc<T>): T
    var
      RttiContext: TRttiContext;
    begin
      RttiContext:= TRttiContext.Create;
      try
        Result:= AFunc;
      finally
        RttiContext.Free;
      end;
    end);
end;

end.
