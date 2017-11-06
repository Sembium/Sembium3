unit uSalesClientUtils;

interface

uses
  Db, Graphics, JvDBCombobox, DBCtrlsEh, fEditForm, uSalesCommon;

resourcestring
  SSaleDone = 'Прикл.';
  SSaleAnnuled = 'Анул.';
  SSalePaymentExpected = 'Оч. плащане';
  SSaleInvoiceExpected = 'Оч. фактура';
  SSaleIsLate = 'Закъсн.';
  SSaleIsActualLate = 'Акт. закъсн.';
  SSaleIsActualFuture = 'Акт. предст.';
  SSaleIsFuture = 'Бъдеща';

  SSaleOrderStatus1 = 'Длг';
  SSaleOrderStatus2 = 'ИП?';
  SSaleOrderStatus3 = 'ИП?!';
  SSaleOrderStatus4 = 'Кл?';
  SSaleOrderStatus5 = 'Кл?!';
  SSaleOrderStatus6 = 'Реш?';
  SSaleOrderStatus7 = 'Реш?!';
  SSaleOrderStatus8 = 'Реш';
  SSaleOrderStatus9 = 'ОПП';
  SSaleOrderStatus10 = 'Пк';
  SSaleOrderStatus11 = 'Ан';

  SSaleOrderStatusDesc1 = 'Отворен Диалог';
  SSaleOrderStatusDesc2 = 'Диалог, очакващ Позиция на ИП';
  SSaleOrderStatusDesc3 = 'Закъсняваща Позиция на ИП';
  SSaleOrderStatusDesc4 = 'Диалог, очакващ Позиция на Клиент';
  SSaleOrderStatusDesc5 = 'Закъсняваща Позиция на Клиент';
  SSaleOrderStatusDesc6 = 'Диалог, очакващ Решение';
  SSaleOrderStatusDesc7 = 'Закъсняващо Решение по Диалог';
  SSaleOrderStatusDesc8 = 'Диалог с взето Решение';
  SSaleOrderStatusDesc9 = 'Диалог със създаден ОПП';
  SSaleOrderStatusDesc10 = 'Приключен Диалог';
  SSaleOrderStatusDesc11 = 'Анулиран Диалог';

  SaleOrderInvoiceStateNone = '';
  SaleOrderInvoiceStateExternalProform = 'СП      Проформа Фактура, издадена от Сателитна Система';
  SaleOrderInvoiceStateExternal = 'СФ      Фактура, издадена от Сателитна Система';
  SaleOrderInvoiceStateProform = 'П      Проформа Фактура';
  SaleOrderInvoiceStateUnapproved = 'Н      Неутвърдена Фактура';
  SaleOrderInvoiceStateApproved = 'У      Утвърдена Фактура';

  SSaleDealTypeNameSaleAndExport = 'Придобиваща или Извеждаща';
  SSaleDealTypeAbbrevSaleAndExport = 'ПП+ИП';

const
  GroupTypeNames: array[1..8] of String = (
    SSaleAnnuled,
    SSaleDone,
    SSalePaymentExpected,
    SSaleInvoiceExpected,
    SSaleIsLate,
    SSaleIsActualLate,
    SSaleIsActualFuture,
    SSaleIsFuture);

  SaleOrderStatuses: array [1..11] of string = (
    SSaleOrderStatus1, SSaleOrderStatus2, SSaleOrderStatus3, SSaleOrderStatus4,
    SSaleOrderStatus5, SSaleOrderStatus6, SSaleOrderStatus7, SSaleOrderStatus8,
    SSaleOrderStatus9, SSaleOrderStatus10, SSaleOrderStatus11
  );

  SaleOrderStatusDescriptions: array [1..11] of string = (
    SSaleOrderStatusDesc1, SSaleOrderStatusDesc2, SSaleOrderStatusDesc3, SSaleOrderStatusDesc4,
    SSaleOrderStatusDesc5, SSaleOrderStatusDesc6, SSaleOrderStatusDesc7, SSaleOrderStatusDesc8,
    SSaleOrderStatusDesc9, SSaleOrderStatusDesc10, SSaleOrderStatusDesc11
  );

const
  SaleStateBackgroundColors: array[TSaleStateCodes] of TColor = (
    $00E6E6E6,
    $00D4D8FD,
    clWindow,
    $00D4D8FD,
    $00FF97DA,
    clWindow,
    $00D4D8FD,
    $00CAFFDB,
    clWindow,
    $00FFEFE7
  );

const
  SaleOrderInvoiceStateNames: array[1..6] of string =
    ( SaleOrderInvoiceStateNone,
      SaleOrderInvoiceStateExternalProform,
      SaleOrderInvoiceStateExternal,
      SaleOrderInvoiceStateProform,
      SaleOrderInvoiceStateUnapproved,
      SaleOrderInvoiceStateApproved
    );
  
function GetSaleEditFormClass(ASaleOrderTypeCode: Integer): TEditFormClass;

procedure InitializeComboBoxWithSaleShipmentStates(const AComboBox: TJvDBComboBox; ANumbered: Boolean); overload;
procedure InitializeComboBoxWithSaleShipmentStates(const AComboBox: TDBComboBoxEh; ANumbered: Boolean); overload;

procedure FillDataSetWithSaleOrderStatuses(ADataSet: TDataSet);

function SaleStateDisplayText(AStateCode: Integer; AAbbrevWidth: Integer = 0;
  ACanvas: TCanvas = nil; ANumbered: Boolean = False): string;

implementation

uses
  SysUtils, Math, Classes, uSaleOrderTypes, fSale, fQuickSale,
  fGroupSale, fProductionOrder, Controls, uUtils, uScalingUtils;

resourcestring
  SSaleStateAbbrev1  = 'Пл';
  SSaleStateAbbrev2  = 'Пл!';
  SSaleStateAbbrev3  = 'Експ';
  SSaleStateAbbrev4  = 'Експ!';
  SSaleStateAbbrev5  = 'Наем';
  SSaleStateAbbrev6  = 'Врщ';
  SSaleStateAbbrev7  = 'Врщ!';
  SSaleStateAbbrev8  = 'Отч';
  SSaleStateAbbrev9  = 'Пк';
  SSaleStateAbbrev10 = 'Ан';

  SSaleStateName1  = 'Планова Продажба';
  SSaleStateName2  = 'Закъсняваща Експедиция на Планова Продажба';
  SSaleStateName3  = 'Експедирана Продажба';
  SSaleStateName4  = 'Закъсняваща Експедирана Продажба';
  SSaleStateName5  = 'Протича Наем';
  SSaleStateName6  = 'Изтекъл Наем и връщане на наети обекти';
  SSaleStateName7  = 'Изтекъл Наем и Закъсняващо връщане на наети обекти';
  SSaleStateName8  = 'Отчетена Продажба';
  SSaleStateName9  = 'Приключена Продажба';
  SSaleStateName10 = 'Анулирана Продажба';

const
  SaleStatusAbbrevs: array[TSaleStateCodes] of string = (
    SSaleStateAbbrev1,
    SSaleStateAbbrev2,
    SSaleStateAbbrev3,
    SSaleStateAbbrev4,
    SSaleStateAbbrev5,
    SSaleStateAbbrev6,
    SSaleStateAbbrev7,
    SSaleStateAbbrev8,
    SSaleStateAbbrev9,
    SSaleStateAbbrev10
  );

  SaleStatusNames: array[TSaleStateCodes] of string = (
    SSaleStateName1,
    SSaleStateName2,
    SSaleStateName3,
    SSaleStateName4,
    SSaleStateName5,
    SSaleStateName6,
    SSaleStateName7,
    SSaleStateName8,
    SSaleStateName9,
    SSaleStateName10
  );

function SaleStateDisplayText(AStateCode: Integer; AAbbrevWidth: Integer; ACanvas: TCanvas;
  ANumbered: Boolean): string;
const
  Space = ' ';
  DefaultSpaceCount = 5;

  function CodeToStr(ACode: Integer): string;
  begin
    if (ACode = High(TSaleStateCodes)) then
      Result:= SaleStatusAbbrevs[High(TSaleStateCodes)]
    else
      Result:= IntToStr(ACode);
  end;  { CodeToStr }

var
  MaxCodeLength: Integer;
  PreffixFormatPattern: string;
  SpaceWidth: Integer;
  PrefixWidth: Integer;
  SpaceCount: Integer;
  Prefix: string;
begin
  if not ValidSaleState(AStateCode) then
    begin
      Result:= '';
      Exit;
    end;

  MaxCodeLength:=
    Max(
      Length(IntToStr(High(TSaleStateCodes))),
      Length(SaleStatusAbbrevs[High(TSaleStateCodes)])
    );

  if ANumbered then
    PreffixFormatPattern:= '%1:' + IntToStr(MaxCodeLength) + 's - %0:s'
  else
    PreffixFormatPattern:= '%0:s';

  if (AAbbrevWidth = 0) or not Assigned(ACanvas) then
    SpaceCount:= DefaultSpaceCount
  else
    begin
      SpaceWidth:= ScalePixels(ACanvas.TextWidth(Space));
      Prefix:= Format(PreffixFormatPattern, [SaleStatusAbbrevs[AStateCode], CodeToStr(AStateCode)]);
      PrefixWidth:= ScalePixels(ACanvas.TextWidth(Prefix));
      SpaceCount:= RealRound((AAbbrevWidth - PrefixWidth) / SpaceWidth);
    end;

  Result:= Prefix + StringOfChar(Space, SpaceCount) + SaleStatusNames[AStateCode];
end;  { SaleStateDisplayText }

procedure FillDataSetWithSaleOrderStatuses(ADataSet: TDataSet);
var
  i: Integer;
begin
  for i:= Low(SaleOrderStatuses) to High(SaleOrderStatuses) do
    ADataSet.AppendRecord([i, SaleOrderStatuses[i], SaleOrderStatusDescriptions[i]]);
end;

procedure InternalInitializeComboBoxWithSaleShipmentStates(AComboBox: TWinControl; ACanvas: TCanvas;
  AItems, AValues: TStrings; ANumbered: Boolean); overload;
var
  Code: Integer;
begin
  AItems.Clear;
  AValues.Clear;

  for Code:= Low(TSaleStateCodes) to High(TSaleStateCodes) do
    begin

      AItems.Add(SaleStateDisplayText(Code, AComboBox.Width, ACanvas, ANumbered));
      AValues.Add(IntToStr(Code));
    end;
end;

procedure InitializeComboBoxWithSaleShipmentStates(const AComboBox: TJvDBComboBox; ANumbered: Boolean);
begin
  InternalInitializeComboBoxWithSaleShipmentStates(AComboBox, AComboBox.Canvas,
    AComboBox.Items, AComboBox.Values, ANumbered);
end;

type
  TDBComboBoxEhHack = class(TDBComboBoxEh)
  public
    property Canvas;
  end;

procedure InitializeComboBoxWithSaleShipmentStates(const AComboBox: TDBComboBoxEh; ANumbered: Boolean); overload;
begin
  InternalInitializeComboBoxWithSaleShipmentStates(AComboBox, TDBComboBoxEhHack(AComboBox).Canvas,
    AComboBox.Items, AComboBox.KeyItems, ANumbered);
end;

function GetSaleEditFormClass(ASaleOrderTypeCode: Integer): TEditFormClass;
begin
  case ASaleOrderTypeCode of
    sotNormalSaleOrder:
      Result:= TfmSale;

    sotQuickSaleOrder:
      Result:= TfmQuickSale;

    sotProductionOrder:
      Result:= TfmProductionOrder;

    sotCurrentQuantity, sotFutureQuantity:
      Result:= TfmGroupSale;
    else
      Result:= nil;
  end;  { case }
end;

end.
