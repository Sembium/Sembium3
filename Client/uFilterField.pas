unit uFilterField;

interface

uses
  DB, uAttachedProperty, uDependantField;

type
  TFilterFieldHelper = class helper (TDependantFieldHelper) for TField
  private
    class var FLoadedReadOnlyProp: IProp<Boolean>;
    function GetLoadedReadOnly: Boolean;
    procedure SetLoadedReadOnly(const Value: Boolean);
  public
    property LoadedReadOnly: Boolean read GetLoadedReadOnly write SetLoadedReadOnly;
  end;

implementation

{ TDependantFieldHelper }

function TFilterFieldHelper.GetLoadedReadOnly: Boolean;
begin
  Result:= TProp<Boolean>.GetPropValue(FLoadedReadOnlyProp, Self);
end;

procedure TFilterFieldHelper.SetLoadedReadOnly(const Value: Boolean);
begin
  TProp<Boolean>.SetPropValue(FLoadedReadOnlyProp, Self, Value);
end;

end.
