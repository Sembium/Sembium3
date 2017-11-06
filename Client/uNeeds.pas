unit uNeeds;

interface

uses
  Classes, uLoginContext, uAspectTypes;

type
  TStructurePartKind = (spkNone, spkResultProduct, spkDetail, spkMaterial);

function StructurePartKindToInt(AValue: TStructurePartKind): Integer;
function IntToStructurePartKind(AValue: Integer): TStructurePartKind;

function CreateCommonMsgParams(
  ALoginContext: TLoginContext;
  AAspectType: TAspectType;
  AStructurePartKind: TStructurePartKind): TStrings;

implementation

uses
  SysUtils, uUtils;

resourcestring
  SEstNeeds = 'Перспективни потребности';
  SRealNeeds = 'Реализационни потребности';

  SParRelProductAbbrevClient = 'ИИР';
  SSaleProcessOrderAbbrev = 'ОПП';

  SEstDateIntervalName = 'ВрмИнт на Перспектива';
  SRealDateIntervalName = 'ВрмИнт на Дата на Експедиция';

  SResultProduct = 'УОб продаван';
  SDetail = 'КСЧ';
  SMaterial = 'НСЧ';

  SResultProducts = 'УОб продавани';
  SDetails = 'КСЧ за УОб продавани';
  SMaterials = 'НСЧ за УОб продавани';

  SUpperLevelStructurePartOfDetail = 'КСЧ от предходно структурно ниво';
  SUpperLevelStructurePartOfMaterial = 'КСЧ';

  SUpperLevelStructurePartsOfDetail = 'КСЧ от предходно структурно ниво';
  SUpperLevelStructurePartsOfMaterial = 'КСЧ';

  SUpperLevelStructurePartOfDetailAbbrev = 'КСЧ от пр. стр. ниво';
  SUpperLevelStructurePartOfMaterialAbbrev = 'КСЧ';

  SUpperLevelStructurePartsOfDetailAbbrev = 'КСЧ от пр. стр. ниво';
  SUpperLevelStructurePartsOfMaterialAbbrev = 'КСЧ';

const
  Needs: array[TAspectType] of string = ('', SEstNeeds, SRealNeeds);
  SaleProcessOrderAbbrev: array[TAspectType] of string = ('', SParRelProductAbbrevClient, SSaleProcessOrderAbbrev);
  DateIntervalName: array[TAspectType] of string = ('', SEstDateIntervalName, SRealDateIntervalName);
  StructurePart: array[TStructurePartKind] of string = ('', SResultProduct, SDetail, SMaterial);
  StructureParts: array[TStructurePartKind] of string = ('', SResultProducts, SDetails, SMaterials);
  UpperLevelStructurePart: array[TStructurePartKind] of string = ('', '', SUpperLevelStructurePartOfDetail, SUpperLevelStructurePartOfMaterial);
  UpperLevelStructureParts: array[TStructurePartKind] of string = ('', '', SUpperLevelStructurePartsOfDetail, SUpperLevelStructurePartsOfMaterial);
  UpperLevelStructurePartAbbrev: array[TStructurePartKind] of string = ('', '', SUpperLevelStructurePartOfDetailAbbrev, SUpperLevelStructurePartOfMaterialAbbrev);
  UpperLevelStructurePartsAbbrev: array[TStructurePartKind] of string = ('', '', SUpperLevelStructurePartsOfDetailAbbrev, SUpperLevelStructurePartsOfMaterialAbbrev);

{ Routines }

function CreateCommonMsgParams(
  ALoginContext: TLoginContext;
  AAspectType: TAspectType;
  AStructurePartKind: TStructurePartKind): TStrings;
begin
  Result:= TStringList.Create;
  try
    Result.Clear;
    Result.ValuesEx['Needs']:= Needs[AAspectType];
    Result.ValuesEx['SaleProcessOrderAbbrev']:= SaleProcessOrderAbbrev[AAspectType];
    Result.ValuesEx['DateIntervalName']:= DateIntervalName[AAspectType];
    Result.ValuesEx['StructurePart']:= StructurePart[AStructurePartKind];
    Result.ValuesEx['StructureParts']:= StructureParts[AStructurePartKind];
    Result.ValuesEx['UpperLevelStructurePart']:= UpperLevelStructurePart[AStructurePartKind];
    Result.ValuesEx['UpperLevelStructureParts']:= UpperLevelStructureParts[AStructurePartKind];
    Result.ValuesEx['UpperLevelStructurePartAbbrev']:= UpperLevelStructurePartAbbrev[AStructurePartKind];
    Result.ValuesEx['UpperLevelStructurePartsAbbrev']:= UpperLevelStructurePartsAbbrev[AStructurePartKind];
    Result.ValuesEx['BaseCurrencyAbbrev']:= ALoginContext.BaseCurrencyAbbrev;
  except
    FreeAndNil(Result);
    raise;
  end;  { try }
end;

function StructurePartKindToInt(AValue: TStructurePartKind): Integer;
const
  Values: array[TStructurePartKind] of Integer = (0, 1, 2, 3);
begin
  Result:= Values[AValue];
end;

function IntToStructurePartKind(AValue: Integer): TStructurePartKind;
const
  Values: array[0..3] of TStructurePartKind = (spkNone, spkResultProduct, spkDetail, spkMaterial);
begin
  Assert(AValue >= Low(Values));
  Assert(AValue <= High(Values));

  Result:= Values[AValue];
end;

end.
