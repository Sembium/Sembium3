unit uTotalCountField;

interface

uses
  Db, uDependantField, uAttachedProperty;

type
  TTotalCountFieldHelper = class helper (TDependantFieldHelper) for TField
  private
    class var FTotalCountFieldProp: IProp<TField>;
    function GetTotalCountField: TField;
    procedure SetTotalCountField(const Value: TField);
  public
    property TotalCountField: TField read GetTotalCountField write SetTotalCountField;
  end;

implementation

{ TTotalCountFieldHelper }

function TTotalCountFieldHelper.GetTotalCountField: TField;
begin
  Result:= TProp<TField>.GetPropValue(FTotalCountFieldProp, Self);
end;

procedure TTotalCountFieldHelper.SetTotalCountField(const Value: TField);
begin
  TProp<TField>.SetPropValue(FTotalCountFieldProp, Self, Value);
end;

end.
