unit uSplitInvestedValue;

interface

type
  TSplitInvestedValue = record
    FixedValue: Real;
    SingleValue: Real;

    class operator Add(a, b: TSplitInvestedValue): TSplitInvestedValue;
    class operator Multiply(a: TSplitInvestedValue; b: Real): TSplitInvestedValue;
    class operator Divide(a: TSplitInvestedValue; b: Real): TSplitInvestedValue;
    procedure Clear;
  end;

implementation

{ TSplitInvestedValue }

class operator TSplitInvestedValue.Add(a,
  b: TSplitInvestedValue): TSplitInvestedValue;
begin
  Result.FixedValue:= a.FixedValue + b.FixedValue;
  Result.SingleValue:= a.SingleValue + b.SingleValue;
end;

class operator TSplitInvestedValue.Multiply(a: TSplitInvestedValue;
  b: Real): TSplitInvestedValue;
begin
  Result.FixedValue:= a.FixedValue * b;
  Result.SingleValue:= a.SingleValue * b;
end;

procedure TSplitInvestedValue.Clear;
begin
  FixedValue:= 0;
  SingleValue:= 0;
end;

class operator TSplitInvestedValue.Divide(a: TSplitInvestedValue;
  b: Real): TSplitInvestedValue;
begin
  Result.FixedValue:= a.FixedValue / b;
  Result.SingleValue:= a.SingleValue / b;
end;

end.
