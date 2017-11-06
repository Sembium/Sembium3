unit uToolRequirements;

interface

uses
  DB;

type
  TToolRequirement = (trNone, trUnknown, trEmpty, trNotEmpty);

function ToolRequirementToInt(AValue: TToolRequirement): Integer;
function IntToToolRequirement(AValue: Integer): TToolRequirement;

function ToolRequirementAbbrev(ToolRequirement: TToolRequirement; IsComplete: Boolean): string;

procedure ToolRequirementFieldGetText(ToolRequirementField, IsCompleteField, OperationTypeField: TField;
  var Text: string; DisplayText: Boolean);

implementation

uses
  uOperationTypes, StrUtils;

function ToolRequirementToInt(AValue: TToolRequirement): Integer;
const
  ToolRequirementCodes: array[TToolRequirement] of Integer = (0, 1, 2, 3);
begin
  Result:= ToolRequirementCodes[AValue];
end;

function IntToToolRequirement(AValue: Integer): TToolRequirement;
const
  ToolRequirements: array[0..3] of TToolRequirement = (
    trNone, trUnknown, trEmpty, trNotEmpty);
begin
  Assert(AValue in [Low(ToolRequirements).. High(ToolRequirements)]);
  Result:= ToolRequirements[AValue];
end;

function ToolRequirementAbbrev(ToolRequirement: TToolRequirement; IsComplete: Boolean): string;
const
  ToolRequirementAbbrevs: array[TToolRequirement] of string = ('?', '?', '=0', '>0');
begin
  if (ToolRequirement = trNotEmpty) and IsComplete then
    Result:= '√'
  else
    Result:= ToolRequirementAbbrevs[ToolRequirement];
end;

procedure ToolRequirementFieldGetText(
  ToolRequirementField, IsCompleteField, OperationTypeField: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    begin
      if (OperationTypeField.AsInteger = otNormal) or
         StartsText('PROGRAM', ToolRequirementField.FieldName) then
        Text:=
          ToolRequirementAbbrev(IntToToolRequirement(ToolRequirementField.AsInteger), IsCompleteField.AsBoolean)
      else
        Text:= '';
    end
  else
    Text:= ToolRequirementField.AsString;
end;

end.
