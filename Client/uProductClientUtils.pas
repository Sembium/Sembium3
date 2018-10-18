unit uProductClientUtils;

interface

uses
  Classes, uLoginContext, uProducts;

function CreateCommonMsgParams(
  ALoginContext: TLoginContext;
  AProductClass: TProductClass): TStrings;

function CommonStatusesToStr(const ACommonStatuses: TCommonStatuses; const ALastWordSeparator: string = ''): string;
procedure CheckSelectedCommonStatus(const ACommonStatus: TCommonStatus; const ACommonStatuses: TCommonStatuses; AProductClass: TProductClass);

procedure OccupationProductFixCommonMsgParams(var AParams: TStrings);

function GetOrderQuantitiesText(const AMinOrderQuantity, AMaxOrderQuantity, AAcquireBatchQuantity: Variant;
  const AMeasureAbbrev: string): string;

resourcestring
  SSingleAbbrev = 'Е';
  SCommonAbbrev = 'О';
  SJoinedAbbrev = 'П';
  SJoinedStandardAbbrev = 'ПЕт';
  SFilterThruCommonAbbrev = 'О --> П';
  SFilterStandardThruCommonAbbrev = 'О --> ПЕт';

  SSingleName = 'Единак';
  SCommonName = 'Обобщаващ';
  SJoinedName = 'Приобщен';
  SJoinedStandardName = 'Приобщен Еталон';
  SFilterThruCommonName = 'Приобщен към Обобщаващ';
  SFilterStandardThruCommonName = 'Приобщен Еталон към Обобщаващ';

  SProductClassNameNormal = 'Управляем Обект';
  SProductClassNameFinancial = 'Финансов Обект';
  SProductClassNameBudget = 'Разходна и Инвестиционна Статия за Среда';

  SProductsClassNameNormal = 'Управляеми Обекти';
  SProductsClassNameFinancial = 'Финансови Обекти';
  SProductsClassNameBudget = 'Разходни и Инвестиционни Статии за Среда';

  SProductClassNameWithThePrefixNormal = 'Управляемия Обект';
  SProductClassNameWithThePrefixFinancial = 'Финансовия Обект';
  SProductClassNameWithThePrefixBudget = 'Разходната и Инвестиционната Статия за Среда';

  SProductClassAbbrevNormal = 'УОб';
  SProductClassAbbrevFinancial = 'ФОб';
  SProductClassAbbrevBudget = 'РИСС';

  SProductPeriodAbbrevNormal = 'УМ УОб';
  SProductPeriodAbbrevFinancial = 'УМ ФОб';
  SProductPeriodAbbrevBudget = 'УМ РИСС';

  SProductStatusIDNormal = 'Статус ИД';
  SProductStatusIDFinancial = 'ИД-Ф';
  SProductStatusIDBudget = 'ИД-Б';

  SProductionOrderAbbrev = 'ОПВ';
  SFinOrderAbbrev = 'ОПФ';

  SOccupationProductName = 'Длъжностен Работник на Организацията';
  SOccupationProductAbbrev = 'ДРОр';

const
  ProductCommonStatusAbbrevs: array [TCommonStatusCode] of string =
    ('', SSingleAbbrev, SCommonAbbrev, SJoinedAbbrev, SJoinedStandardAbbrev);
  ProductCommonStatusNames: array [TCommonStatusCode] of string =
    ('', SSingleName, SCommonName, SJoinedName, SJoinedStandardName);

  ProductClassCommonNames: array[TProductClass] of string =
    ('', SProductClassNameNormal, SProductClassNameFinancial, SProductClassNameBudget);
  ProductClassNames: array[TProductClass] of string =
    ('', SProductClassNameNormal, SProductClassNameFinancial, SProductClassNameBudget);
  ProductClassNamesWithThePrefix: array[TProductClass] of string =
    ('', SProductClassNameWithThePrefixNormal, SProductClassNameWithThePrefixFinancial, SProductClassNameWithThePrefixBudget);
  ProductsClassNames: array[TProductClass] of string =
    ('', SProductsClassNameNormal, SProductsClassNameFinancial, SProductsClassNameBudget);
  ProductClassAbbrevs: array[TProductClass] of string =
    ('', SProductClassAbbrevNormal, SProductClassAbbrevFinancial, SProductClassAbbrevBudget);
  ProductPeriodAbbrevs: array[TProductClass] of string =
    ('', SProductPeriodAbbrevNormal, SProductPeriodAbbrevFinancial, SProductPeriodAbbrevBudget);
  ProductStatusIDs: array[TProductClass] of string =
    ('', SProductStatusIDNormal, SProductStatusIDFinancial, SProductStatusIDBudget);
  ProductionOrFinOrderAbbrevs: array [TProductClass] of string =
    ('', SProductionOrderAbbrev, SFinOrderAbbrev, '');

implementation

uses
  uUtils, SysUtils, uClientConsts;

resourcestring
  SIncorrectSelectedCommonStatus = 'Трябва да изберeте %s %s';
  SNoOrderQuantitySet = '< не е зададено >';
  SFrom = 'от';
  STo = 'до';
  SBatch = 'кратност';

{ Routines }

function CreateCommonMsgParams(
  ALoginContext: TLoginContext;
  AProductClass: TProductClass): TStrings;
begin
  Result:= TStringList.Create;
  try
    Result.Clear;
    Result.ValuesEx['BaseCurrency']:= ALoginContext.BaseCurrencyAbbrev;
    Result.ValuesEx['SecondaryCurrency']:= ALoginContext.SecondaryCurrencyAbbrev;
    Result.ValuesEx['ProductClassCommonName']:= ProductClassCommonNames[AProductClass];
    Result.ValuesEx['ProductClassName']:= ProductClassNames[AProductClass];
    Result.ValuesEx['ProductClassNameWithThePrefix']:= ProductClassNamesWithThePrefix[AProductClass];
    Result.ValuesEx['ProductsClassName']:= ProductsClassNames[AProductClass];
    Result.ValuesEx['ProductClassAbbrev']:= ProductClassAbbrevs[AProductClass];
    Result.ValuesEx['ProductPeriodAbbrev']:= ProductPeriodAbbrevs[AProductClass];
    Result.ValuesEx['ProductStatusID']:= ProductStatusIDs[AProductClass];
    Result.ValuesEx['ProductionOrFinOrderAbbrev']:= ProductionOrFinOrderAbbrevs[AProductClass];
  except
    FreeAndNil(Result);
    raise;
  end;  { try }
end;

procedure OccupationProductFixCommonMsgParams(var AParams: TStrings);
begin
  AParams.ValuesEx['ProductClassName']:= SOccupationProductName;
  AParams.ValuesEx['ProductClassAbbrev']:= SOccupationProductAbbrev;
end;

function CommonStatusesToStr(const ACommonStatuses: TCommonStatuses;
  const ALastWordSeparator: string): string;
var
  SL: TStringList;
  cs: TCommonStatus;
  LastWord: string;
begin
  SL:= TStringList.Create;
  try
    for cs in ACommonStatuses do
      if (cs <> csNone) then
        SL.Add(ProductCommonStatusNames[CommonStatusToInt(cs)]);

    if (SL.Count > 1) and (ALastWordSeparator <> '') then
      begin
        LastWord:= SL[SL.Count - 1];
        SL.Delete(SL.Count - 1);
        Result:= Format('%s %s %s', [SL.CommaText, ALastWordSeparator, LastWord]);
      end
    else
      Result:= SL.CommaText;
  finally
    FreeAndNil(SL);
  end;
end;

procedure CheckSelectedCommonStatus(const ACommonStatus: TCommonStatus;
  const ACommonStatuses: TCommonStatuses; AProductClass: TProductClass);
begin
  if not (ACommonStatus in ACommonStatuses) then
    raise Exception.CreateFmt(SIncorrectSelectedCommonStatus,
            [ProductClassAbbrevs[AProductClass], CommonStatusesToStr(ACommonStatuses, SOr)]);
end;

function GetOrderQuantitiesText(const AMinOrderQuantity, AMaxOrderQuantity, AAcquireBatchQuantity: Variant;
  const AMeasureAbbrev: string): string;
const
  QuantityFormat = ',0.###';
begin
  if (VarToFloat(AMinOrderQuantity) = 0) and
     (VarToFloat(AMaxOrderQuantity) = 0) and
     (VarToFloat(AAcquireBatchQuantity) = 0) then
    Exit(SNoOrderQuantitySet);

  Result:= '';

  if (VarToFloat(AMinOrderQuantity) > 0) then
    Result:= Format('%s %s ', [SFrom, FormatFloat(QuantityFormat, VarToFloat(AMinOrderQuantity))]);

  if (VarToFloat(AMaxOrderQuantity) > 0) then
    Result:= Result + Format('%s %s ', [STo, FormatFloat(QuantityFormat, VarToFloat(AMaxOrderQuantity))]);

  if (VarToFloat(AAcquireBatchQuantity) > 0) then
    begin
      if (Result <> '') then
        Result:= Result + AMeasureAbbrev + ', ';

      Result:= Result + Format('%s %s ', [SBatch, FormatFloat(QuantityFormat, VarToFloat(AAcquireBatchQuantity))]);
    end;

  Result:= Result + AMeasureAbbrev;
end;

end.
