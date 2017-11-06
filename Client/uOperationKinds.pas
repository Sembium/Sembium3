unit uOperationKinds;

interface

type
  TOperationKind = (okAccumulate, okOrganizational, okSimple, okBeginStore, okEndStore);

resourcestring
  SAccumulateOperationKindAbbrev = 'С';
  SOrganizationalOperationKindAbbrev = 'О';
  SSimpleOperationKindAbbrev = 'П';
  SBeginStoreOperationKindAbbrev = 'З';
  SEndStoreOperationKindAbbrev = 'З';

  SAccumulateOperationKindName = 'Структуроизграждаща';
  SOrganizationalOperationKindName = 'Организационна';
  SSimpleOperationKindName = 'Преобразуваща';
  SBeginStoreOperationKindName = 'Начална задържаща';
  SEndStoreOperationKindName = 'Крайна задържаща';

const
  OperationKindAbbrevs: array[TOperationKind] of string = (
    SAccumulateOperationKindAbbrev,
    SOrganizationalOperationKindAbbrev,
    SSimpleOperationKindAbbrev,
    SBeginStoreOperationKindAbbrev,
    SEndStoreOperationKindAbbrev);

  OperationKindNames: array[TOperationKind] of string = (
    SAccumulateOperationKindName,
    SOrganizationalOperationKindName,
    SSimpleOperationKindName,
    SBeginStoreOperationKindName,
    SEndStoreOperationKindName);

function IntToOperationKind(Value: Integer): TOperationKind;
function OperationKindToInt(Value: Integer): Integer;

implementation

uses
  SysUtils;

resourcestring
  SUnknownOperationKind = 'Невалиден вид операция';

function IntToOperationKind(Value: Integer): TOperationKind;
begin
  case Value of
    0: Result:= okAccumulate;
    1: Result:= okOrganizational;
    2: Result:= okSimple;
    3: Result:= okBeginStore;
    4: Result:= okEndStore;
  else
    raise Exception.Create(SUnknownOperationKind);
  end; { case }
end;

function OperationKindToInt(Value: Integer): Integer;
begin
  Result:= Ord(Value);
end;

end.
