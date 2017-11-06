unit uBudgetClientUtils;

interface

uses
  Db, Classes, uLoginContext, uBOIOrderTypes, uClientUtils, DBCtrlsEh,
  JvDBCombobox, Graphics, uBudgetUtils, AbmesClientDataSet;

resourcestring
  SCanceledProjectAbbrev = 'X';
  SProjectInProgressAbbrev = 'П/О';
  SConfirmedProjectAbbrev = 'Пл';
  SNotConfirmedProjectAbbrev = 'Пр!';
  SProjectAbbrev = 'Пр';
  SClosedAbbrev = 'П';
  SAnnulAbbrev = 'А';
  SNoOrderAbbrev = 'без';
  SProductOrderAbbrev = 'УОб';
  SCompanyOrderAbbrev = 'Пар';
  SUnknownOrderState = '?';

  SExpensePlural = 'Разходни';
  SInvestPlural = 'Инвестиционни';

  SBudgetModeNameExpense = 'Разходна';
  SBudgetModeNameInvest = 'Инвестиционна';
  SBudgetModePluralExpense = 'Разходи';
  SBudgetModePluralInvest = 'Инвестиции';
  SBudgetOrderNameExpense = 'Разходно Бордеро';
  SBudgetOrderNameInvest = 'Инвестиционно Бордеро';
  SBudgetOrderNamePluralExpense = 'Разходни Бордера';
  SBudgetOrderNamePluralInvest = 'Инвестиционни Бордера';
  SBudgetOrderAbbrevExpense = 'РБС';
  SBudgetOrderAbbrevInvest = 'ИБС';
  SBudgetOrderItemAbbrevExpense = 'ЛРБС';
  SBudgetOrderItemAbbrevInvest = 'ЛИБС';
  SBudgetOrderItemOrderAbbrevExpense = 'ОЛРБС';
  SBudgetOrderItemOrderAbbrevInvest = 'ОЛИБС';
  SBudgetClassNameExpense = 'Разходна Статия';
  SBudgetClassNameInvest = 'Инвестиционна Статия';

  SBudgetOrderStatusAbbrev1 = 'Пл';
  SBudgetOrderStatusAbbrev2 = 'П/О';
  SBudgetOrderStatusAbbrev3 = 'Изт';
  SBudgetOrderStatusAbbrev4 = 'Пк';
  SBudgetOrderStatusAbbrev5 = 'Ан';

  SBudgetOrderStatusName1 = 'Планов';
  SBudgetOrderStatusName2 = 'Планово - Отчетен';
  SBudgetOrderStatusName3 = 'Изтекъл';
  SBudgetOrderStatusName4 = 'Приключено';
  SBudgetOrderStatusName5 = 'Анулирано';

  SBudgetOrderItemStatusAbbrev1 = 'Пр';
  SBudgetOrderItemStatusAbbrev2 = 'Пр?';
  SBudgetOrderItemStatusAbbrev3 = 'Пр!';
  SBudgetOrderItemStatusAbbrev4 = 'Пр?!';
  SBudgetOrderItemStatusAbbrev5 = 'X';
  SBudgetOrderItemStatusAbbrev6 = 'Пл';
  SBudgetOrderItemStatusAbbrev7 = 'П/О';
  SBudgetOrderItemStatusAbbrev8 = 'Изт';
  SBudgetOrderItemStatusAbbrev9 = 'Пк';
  SBudgetOrderItemStatusAbbrev10 = 'Ан';

  SBudgetOrderItemStatusName1 = 'Проектен';
  SBudgetOrderItemStatusName2 = 'Проектен за преразглеждане';
  SBudgetOrderItemStatusName3 = 'Проектен, не утвърден, закъсняващ';
  SBudgetOrderItemStatusName4 = 'Проектен за преразглеждане, не утвърден, закъсняващ';
  SBudgetOrderItemStatusName5 = 'Отказан';
  SBudgetOrderItemStatusName6 = 'Планов';
  SBudgetOrderItemStatusName7 = 'Планово - Отчетен';
  SBudgetOrderItemStatusName8 = 'Изтекъл';
  SBudgetOrderItemStatusName9 = 'Приключен';
  SBudgetOrderItemStatusName10 = 'Анулиран ';

  SBOIOrderStatusAbbrev1 = 'Пр';
  SBOIOrderStatusAbbrev2 = 'Пр!';
  SBOIOrderStatusAbbrev3 = 'X';
  SBOIOrderStatusAbbrev4 = 'Пл';
  SBOIOrderStatusAbbrev5 = 'П/О';
  SBOIOrderStatusAbbrev6 = 'Пк';
  SBOIOrderStatusAbbrev7 = 'Ан';

  SBOIOrderStatusName1 = 'Проектен';
  SBOIOrderStatusName2 = 'Проектен не утвърден';
  SBOIOrderStatusName3 = 'Отказан';
  SBOIOrderStatusName4 = 'Планов';
  SBOIOrderStatusName5 = 'Планово - Отчетен';
  SBOIOrderStatusName6 = 'Приключен';
  SBOIOrderStatusName7 = 'Анулиран';

  SProductBOIOrderTypeName = 'Предметен';
  SCompanyBOIOrderTypeName = 'Обслужващ';
  SWasteBOIOrderTypeName = 'Преоценяващ';
  SMarkingBOIOrderTypeName = 'Маркиращ';

  SBOITypeDeliveriesIntroducingPlural = 'Привличащи по Доставки';
  SBOITypeInternalIntroducingPlural = 'Привличащи по Вътрешни Процеси';
  SBOITypeExpensePlural = 'Разходващи по ИП';
  SBOITypeExploitationPlural = 'Въвеждащи в Експлоатация';

  SBOIBaseTypeIntroducingPlural = 'Привличане в ИП';
  SBOIBaseTypeExpensePlural = 'Разходи по ИП';
  SBOIBaseTypeExploitationPlural = 'Въвеждане в Експлоатация';

  SBOITypeDeliveriesIntroducingName = 'Привличащ по Доставки';
  SBOITypeInternalIntroducingName = 'Привличащ по Вътрешни Процеси';
  SBOITypeExpenseName = 'Разходващ по ИП';
  SBOITypeExploitationName = 'Въвеждащ в Експлоатация';


  SFilterBudgetOrderItemTypeAbbrev1 = 'У';
  SFilterBudgetOrderItemTypeName1 = 'Увеличение на ИП = П + Р';

  SFilterBudgetOrderItemTypeAbbrev2 = 'П';
  SFilterBudgetOrderItemTypeName2 = 'Привличане в ИП = ПД + ПВ';

  SFilterBudgetOrderItemTypeAbbrev3 = 'ПД';
  SFilterBudgetOrderItemTypeName3 = 'Привличане в ИП по Доставки';

  SFilterBudgetOrderItemTypeAbbrev4 = 'ПВ';
  SFilterBudgetOrderItemTypeName4 = 'Привличане в ИП по Вътрешни Процеси';

  SFilterBudgetOrderItemTypeAbbrev5 = 'Р';
  SFilterBudgetOrderItemTypeName5 = 'Разходи по ИП';

  SFilterBudgetOrderItemTypeAbbrev6 = 'В';
  SFilterBudgetOrderItemTypeName6 = 'Въвеждане в Експлоатация';

type
  TFilterBudgetOrderItemType = record
    Code: Integer;
    Abbrev: string;
    Name: string;
  end;

const
  FilterBudgetOrderItemTypes: array[1..6] of TFilterBudgetOrderItemType = (
    (Code: 1; Abbrev: SFilterBudgetOrderItemTypeAbbrev1; Name: SFilterBudgetOrderItemTypeName1),
    (Code: 2; Abbrev: SFilterBudgetOrderItemTypeAbbrev2; Name: SFilterBudgetOrderItemTypeName2),
    (Code: 3; Abbrev: SFilterBudgetOrderItemTypeAbbrev3; Name: SFilterBudgetOrderItemTypeName3),
    (Code: 4; Abbrev: SFilterBudgetOrderItemTypeAbbrev4; Name: SFilterBudgetOrderItemTypeName4),
    (Code: 5; Abbrev: SFilterBudgetOrderItemTypeAbbrev5; Name: SFilterBudgetOrderItemTypeName5),
    (Code: 6; Abbrev: SFilterBudgetOrderItemTypeAbbrev6; Name: SFilterBudgetOrderItemTypeName6)
  );

const
  InvestmentBudgetOrderItemType = 1;
  ApplyBudgetOrderItemType = 6;

type
  TBudgetMode = (bmExpense, bmInvest);

const
  BudgetModeNamesPlural: array [bmExpense..bmInvest] of string = (SExpensePlural, SInvestPlural);
  BudgetModeNamesSingle: array [bmExpense..bmInvest] of string = (SBudgetModeNameExpense, SBudgetModeNameInvest);
  BudgetModePlural: array [bmExpense..bmInvest] of string = (SBudgetModePluralExpense, SBudgetModePluralInvest);
  BudgetOrderNames: array [bmExpense..bmInvest] of string = (SBudgetOrderNameExpense, SBudgetOrderNameInvest);
  BudgetOrderNamesPlural: array [bmExpense..bmInvest] of string = (SBudgetOrderNamePluralExpense, SBudgetOrderNamePluralInvest);
  BudgetOrderAbbrevs: array [bmExpense..bmInvest] of string = (SBudgetOrderAbbrevExpense, SBudgetOrderAbbrevInvest);
  BudgetOrderItemAbbrevs: array [bmExpense..bmInvest] of string = (SBudgetOrderItemAbbrevExpense, SBudgetOrderItemAbbrevInvest);
  BudgetOrderItemOrderAbbrevs: array [bmExpense..bmInvest] of string = (SBudgetOrderItemOrderAbbrevExpense, SBudgetOrderItemOrderAbbrevInvest);
  BudgetClassNames: array [bmExpense..bmInvest] of string = (SBudgetClassNameExpense, SBudgetClassNameInvest);
  BOIOrderTypeNames: array[TBOIOrderType] of string = (SProductBOIOrderTypeName, SCompanyBOIOrderTypeName, SWasteBOIOrderTypeName, SMarkingBOIOrderTypeName);
  BudgetOrderItemTypePluralNames: array[TBudgetOrderItemType] of string = (SBOITypeDeliveriesIntroducingPlural, SBOITypeInternalIntroducingPlural, SBOITypeExpensePlural, SBOITypeExploitationPlural);
  BudgetOrderItemTypeNames: array[TBudgetOrderItemType] of string = (SBOITypeDeliveriesIntroducingName, SBOITypeInternalIntroducingName, SBOITypeExpenseName, SBOITypeExploitationName);
  BudgetOrderItemBaseTypePluralNames: array[TBudgetOrderItemBaseType] of string = (SBOIBaseTypeIntroducingPlural, SBOIBaseTypeExpensePlural, SBOIBaseTypeExploitationPlural);

const
  MinBudgetOrderStatusCode = 1;
  MaxBudgetOrderStatusCode = 5;

  MinBudgetOrderItemStatusCode = 1;
  ClosedBudgetOrderItemStatusCode = 9;
  MaxBudgetOrderItemStatusCode = 10;

  MinBOIOrderStatusCode = 1;
  PlannedBOIOrderStatusCode = 4;
  ClosedBOIOrderStatusCode = 6;
  MaxBOIOrderStatusCode = 7;

function CalcBudgetOrderStatus(
  AIsAnnuled: Boolean;
  AIsClosed: Boolean;
  ABeginDate: TDateTime;
  AEndDate: TDateTime): Integer;

function CalcBudgetOrderItemStatus(
  AIsAnnuled: Boolean;
  AIsClosed: Boolean;
  AIsConfirmed: Boolean;
  AIsCanceled: Boolean;
  AIsForReconsideration: Boolean;
  ABeginDate: TDateTime;
  AEndDate: TDateTime): Integer;

function CalcBOIOrderStatus(
  AIsAnnuled: Boolean;
  AIsClosed: Boolean;
  AIsConfirmed: Boolean;
  AIsCanceled: Boolean;
  APlanDate: TDateTime): Integer;

function GetBudgetOrderItemHasOrderStateAbbrev(AState: Integer): string;

function CreateCommonMsgParams(ALoginContext: TLoginContext; ABudgetMode: TBudgetMode): TStrings; overload;
function CreateCommonMsgParams(ALoginContext: TLoginContext; ABudgetMode: TBudgetMode;
  ABudgetOrderItemType: TBudgetOrderItemType; ABOIOrderType: Integer): TStrings; overload;

function BudgetModeToInt(ABudgetMode: TBudgetMode): Integer;

function IntToBudgetMode(AInt: Integer): TBudgetMode;

function GetBudgetOrderStatusText(AStatusCode: Integer; AStatusTextType: TStatusTextType): string;
function GetBudgetOrderItemStatusText(AStatusCode: Integer; AStatusTextType: TStatusTextType): string;
function GetBOIOrderStatusText(AStatusCode: Integer; AStatusTextType: TStatusTextType): string;

procedure FillFilterBudgetOrderItemTypes(ADataSet: TAbmesClientDataSet);

implementation

uses
  SysUtils, Math, dMain, uClientDateTime, AbmesFields;

type
  TBudgetOrderStatus = 1..5;

const
  BudgetOrderStatusAbbrevs: array [TBudgetOrderStatus] of string = (
    SBudgetOrderStatusAbbrev1,
    SBudgetOrderStatusAbbrev2,
    SBudgetOrderStatusAbbrev3,
    SBudgetOrderStatusAbbrev4,
    SBudgetOrderStatusAbbrev5
  );

const
  BudgetOrderStatusNames: array[TBudgetOrderStatus] of string = (
    SBudgetOrderStatusName1,
    SBudgetOrderStatusName2,
    SBudgetOrderStatusName3,
    SBudgetOrderStatusName4,
    SBudgetOrderStatusName5
  );

type
  TBudgetOrderItemStatus = 1..10;

const
  BudgetOrderItemStatusAbbrevs: array [TBudgetOrderItemStatus] of string = (
    SBudgetOrderItemStatusAbbrev1,
    SBudgetOrderItemStatusAbbrev2,
    SBudgetOrderItemStatusAbbrev3,
    SBudgetOrderItemStatusAbbrev4,
    SBudgetOrderItemStatusAbbrev5,
    SBudgetOrderItemStatusAbbrev6,
    SBudgetOrderItemStatusAbbrev7,
    SBudgetOrderItemStatusAbbrev8,
    SBudgetOrderItemStatusAbbrev9,
    SBudgetOrderItemStatusAbbrev10
  );

  BudgetOrderItemStatusNames: array [TBudgetOrderItemStatus] of string = (
    SBudgetOrderItemStatusName1,
    SBudgetOrderItemStatusName2,
    SBudgetOrderItemStatusName3,
    SBudgetOrderItemStatusName4,
    SBudgetOrderItemStatusName5,
    SBudgetOrderItemStatusName6,
    SBudgetOrderItemStatusName7,
    SBudgetOrderItemStatusName8,
    SBudgetOrderItemStatusName9,
    SBudgetOrderItemStatusName10
  );

type
  TBOIOrderStatus = 1..7;

const
  BOIOrderStatusAbbrevs: array [TBOIOrderStatus] of string = (
    SBOIOrderStatusAbbrev1,
    SBOIOrderStatusAbbrev2,
    SBOIOrderStatusAbbrev3,
    SBOIOrderStatusAbbrev4,
    SBOIOrderStatusAbbrev5,
    SBOIOrderStatusAbbrev6,
    SBOIOrderStatusAbbrev7
  );

  BOIOrderStatusNames: array [TBOIOrderStatus] of string = (
    SBOIOrderStatusName1,
    SBOIOrderStatusName2,
    SBOIOrderStatusName3,
    SBOIOrderStatusName4,
    SBOIOrderStatusName5,
    SBOIOrderStatusName6,
    SBOIOrderStatusName7
  );

function CalcBudgetOrderStatus(
  AIsAnnuled: Boolean;
  AIsClosed: Boolean;
  ABeginDate: TDateTime;
  AEndDate: TDateTime): Integer;
begin
  if AIsAnnuled then
    begin
      Result:= 5;
      Exit;
    end;

  if AIsClosed then
    begin
      Result:= 4;
      Exit;
    end;

  if (ContextDate < ABeginDate) then
    begin;
      Result:= 1;
      Exit;
    end;

  if (ContextDate >= ABeginDate) and (ContextDate <= AEndDate) then
    Result:= 2
  else
    Result:= 3;
end;

function CalcBudgetOrderItemStatus(
  AIsAnnuled: Boolean;
  AIsClosed: Boolean;
  AIsConfirmed: Boolean;
  AIsCanceled: Boolean;
  AIsForReconsideration: Boolean;
  ABeginDate: TDateTime;
  AEndDate: TDateTime): Integer;
begin
  if AIsAnnuled then
    begin
      Result:= 10;
      Exit;
    end;
    
  if AIsClosed then
    begin
      Result:= 9;
      Exit;
    end;

  if (ContextDate < ABeginDate) and not AIsConfirmed and not AIsCanceled and not AIsForReconsideration then
    begin
      Result:= 1;
      Exit;
    end;

  if (ContextDate < ABeginDate) and not AIsConfirmed and not AIsCanceled and AIsForReconsideration then
    begin
      Result:= 2;
      Exit;
    end;

  if (ContextDate >= ABeginDate) and (ContextDate <= AEndDate) and not AIsConfirmed and not AIsCanceled and not AIsForReconsideration then
    begin
      Result:= 3;
      Exit;
    end;

  if (ContextDate >= ABeginDate) and (ContextDate <= AEndDate) and AIsForReconsideration then
    begin
      Result:= 4;
      Exit;
    end;

  if AIsCanceled then
    begin
      Result:= 5;
      Exit;
    end;

  if (ContextDate < ABeginDate) and AIsConfirmed then
    begin
      Result:= 6;
      Exit;
    end;

  if (ContextDate >= ABeginDate) and (ContextDate <= AEndDate) and AIsConfirmed then
    begin
      Result:= 7;
      Exit;
    end;

  Result:= 8;
end;


function CalcBOIOrderStatus(
  AIsAnnuled: Boolean;
  AIsClosed: Boolean;
  AIsConfirmed: Boolean;
  AIsCanceled: Boolean;
  APlanDate: TDateTime): Integer;
begin
  if AIsAnnuled then
    begin
      Result:= 7;
      Exit;
    end;
    
  if AIsClosed then
    begin
      Result:= 6;
      Exit;
    end;

  if (ContextDate < APlanDate) and not AIsConfirmed and not AIsCanceled then
    begin
      Result:= 1;
      Exit;
    end;

  if (ContextDate >= APlanDate) and not AIsConfirmed and not AIsCanceled then
    begin
      Result:= 2;
      Exit;
    end;

  if AIsCanceled then
    begin
      Result:= 3;
      Exit;
    end;

  if (ContextDate < APlanDate) and AIsConfirmed then
    begin
      Result:= 4;
      Exit;
    end;

  Result:= 5;
end;

function GetBudgetOrderItemHasOrderStateAbbrev(AState: Integer): string;
const
  States: array [0..4] of string =
    ('', SNoOrderAbbrev, SProductOrderAbbrev, SCompanyOrderAbbrev, SUnknownOrderState);
begin
  Result:= States[AState];
end;

function CreateCommonMsgParams(ALoginContext: TLoginContext; ABudgetMode: TBudgetMode): TStrings;
var
  s: TStrings;
begin
  s:= TStringList.Create;
  try
    try
      s.Values['BaseCurrency']:= ALoginContext.BaseCurrencyAbbrev;
      s.Values['BudgetModePlural']:= BudgetModeNamesPlural[ABudgetMode];
      s.Values['BudgetMode']:= BudgetModeNamesSingle[ABudgetMode];
      s.Values['BudgetModeNounPlural']:= BudgetModePlural[ABudgetMode];
      s.Values['BudgetOrderName']:= BudgetOrderNames[ABudgetMode];
      s.Values['BudgetOrderNamePlural']:= BudgetOrderNamesPlural[ABudgetMode];
      s.Values['BudgetOrderAbbrev']:= BudgetOrderAbbrevs[ABudgetMode];
      s.Values['BudgetOrderItemAbbrev']:= BudgetOrderItemAbbrevs[ABudgetMode];
      s.Values['BudgetOrderItemOrderAbbrev']:= BudgetOrderItemOrderAbbrevs[ABudgetMode];
      s.Values['BudgetClassName']:= BudgetClassNames[ABudgetMode];
    except
      FreeAndNil(s);
      raise;
    end;
  finally
    Result:= s;
  end;
end;

function CreateCommonMsgParams(ALoginContext: TLoginContext; ABudgetMode: TBudgetMode;
  ABudgetOrderItemType: TBudgetOrderItemType; ABOIOrderType: Integer): TStrings;
var
  s: TStrings;
begin
  try
    try
      s:= CreateCommonMsgParams(ALoginContext, ABudgetMode);
      s.Values['BOIOrderTypeName']:= BOIOrderTypeNames[ABOIOrderType];
      s.Values['BudgetOrderItemTypeName']:= BudgetOrderItemTypeNames[ABudgetOrderItemType];
      s.Values['BudgetOrderItemTypeNamePlural']:= BudgetOrderItemTypePluralNames[ABudgetOrderItemType];
    except
      FreeAndNil(s);
      raise;
    end;
  finally
    Result:= s;
  end;  { try }
end;

function BudgetModeToInt(ABudgetMode: TBudgetMode): Integer;
begin
  case ABudgetMode of
    bmExpense: Result:= 1;
    bmInvest: Result:= 2;
  else
    raise Exception.Create('Unknown budget mode');
  end;
end;

function IntToBudgetMode(AInt: Integer): TBudgetMode;
begin
  case AInt of
    1: Result:= bmExpense;
    2: Result:= bmInvest;
  else
    raise Exception.Create('Invalid int to convert to budget mode');
  end;
end;

function GetBudgetOrderStatusText(AStatusCode: Integer; AStatusTextType: TStatusTextType): string;
begin
  Result:= GetStatusText(AStatusCode, AStatusTextType, BudgetOrderStatusNames, BudgetOrderStatusAbbrevs);
end;

function GetBudgetOrderItemStatusText(AStatusCode: Integer; AStatusTextType: TStatusTextType): string;
begin
  Result:= GetStatusText(AStatusCode, AStatusTextType, BudgetOrderItemStatusNames, BudgetOrderItemStatusAbbrevs);
end;

function GetBOIOrderStatusText(AStatusCode: Integer; AStatusTextType: TStatusTextType): string;
begin
  Result:= GetStatusText(AStatusCode, AStatusTextType, BOIOrderStatusNames, BOIOrderStatusAbbrevs);
end;

procedure FillFilterBudgetOrderItemTypes(ADataSet: TAbmesClientDataSet);
var
  FilterBudgetOrderItemType: TFilterBudgetOrderItemType;
begin
  Assert(Assigned(ADataSet));
  for FilterBudgetOrderItemType in FilterBudgetOrderItemTypes do
    begin
      ADataSet.Append;
      try
        ADataSet.FieldByName('BUDGET_ORDER_ITEM_TYPE').AsInteger:= FilterBudgetOrderItemType.Code;
        ADataSet.FieldByName('BUDGET_ORDER_ITEM_TYPE_ABBREV').AsString:= FilterBudgetOrderItemType.Abbrev;
        ADataSet.FieldByName('BUDGET_ORDER_ITEM_TYPE_NAME').AsString:= FilterBudgetOrderItemType.Name;
        ADataSet.Post;
      except
        ADataSet.Cancel;
        raise;
      end;  { try }
    end;  { for }
end;

end.

