unit uDependantField;

interface

uses
  uUtils, DB, uAttachedProperty;

type
  TDependantFieldHelper = class helper (TFieldHelper) for TField
  private
    class var FDependsOnProp: IProp<string>;
    function GetDependsOn: string;
    procedure SetDependsOn(const Value: string);
  public
    property DependsOn: string read GetDependsOn write SetDependsOn;
  end;

procedure SetDependantFields(ADataSet: TDataSet; const ADependOnFieldName: string;
  ADependantFieldNames: array of string);

implementation

{ TDependantFieldHelper }

function TDependantFieldHelper.GetDependsOn: string;
begin
  Result:= TProp<string>.GetPropValue(FDependsOnProp, Self);
end;

procedure TDependantFieldHelper.SetDependsOn(const Value: string);
begin
  TProp<string>.SetPropValue(FDependsOnProp, Self, Value);
end;

{ routines }

procedure SetDependantFields(ADataSet: TDataSet; const ADependOnFieldName: string;
  ADependantFieldNames: array of string);
var
  DependantFieldName: string;
  DependantField: TField;
begin
  if Assigned(ADataSet.FindField(ADependOnFieldName)) then
    for DependantFieldName in ADependantFieldNames do
      begin
        DependantField:= ADataSet.FindField(DependantFieldName);
        if Assigned(DependantField) then
          DependantField.DependsOn:= ADependOnFieldName;
      end;
end;

end.
