unit uDeliveryUtils;

interface

uses
  Classes, JvDBComboBox, DB, DBCtrlsEh, uProductionOrderTypes, uProducts;

function CalcObjectiveDCDStatusCode(
  APlanDecisionDateField: TField;
  ADCDQuantityField: TField;
  ADPDecisionQuantityField: TField;
  ADCQuantityField: TField;
  ADeliverySDQuantityField: TField;
  ADeficitCoverDateField: TField;
  AIsDoneField: TField;
  AIsCanceledField: TField): Integer;

function CalcSubjectiveDCDStatusCode(
  AOriginalDCDStatusCodeField: TField;
  APlanDecisionDateField: TField;
  AIsDoneField: TField;
  AIsCanceledField: TField): Integer;

function CalcDeliveryDialogStatusCode(
  AnnulEmployeeCodeField: TField;
  FinishEmployeeCodeField: TField;
  DeliveryObjectBranchCodeField: TField;
  RealDecisionDateField: TField;
  PlanDecisionDateField: TField;
  RealVendorPositionDateField: TField;
  PlanVendorPositionDateField: TField;
  RealPositionDateField: TField;
  PlanPositionDateField: TField
  ): Integer;

function CalcDeliveryStatusCode(
  DeliveryDateField: TField;
  SDQuantityField: TField;
  QuantityField: TField;
  FinishEmployeeCodeField: TField;
  AnnulEmployeeCodeField: TField
  ): Integer;

procedure FillDataSetWithDCDStatuses(ADataSet: TDataSet);
procedure FillDataSetWithDeliveryDialogStatuses(ADataSet: TDataSet);
procedure FillDataSetWithDeliveryStatuses(ADataSet: TDataSet);

procedure DeliveryDialogsCalcFields(ADataSet: TDataSet);

function CreateCommonMsgParams(AProdOrderBaseType: TProdOrderBaseType; AProductClass: TProductClass): TStrings;

resourcestring
  SDeliveryDialogStatus1 = 'Длг';
  SDeliveryDialogStatus2 = 'ИП?';
  SDeliveryDialogStatus3 = 'ИП?!';
  SDeliveryDialogStatus4 = 'Дст?';
  SDeliveryDialogStatus5 = 'Дст?!';
  SDeliveryDialogStatus6 = 'Реш?';
  SDeliveryDialogStatus7 = 'Реш?!';
  SDeliveryDialogStatus8 = 'Реш';
  SDeliveryDialogStatus9 = 'ОПД';
  SDeliveryDialogStatus10 = 'Пк';
  SDeliveryDialogStatus11 = 'Ан';

  SDeliveryDialogStatusDesc1 = 'Отворен Диалог';
  SDeliveryDialogStatusDesc2 = 'Диалог, очакващ Позиция на ИП';
  SDeliveryDialogStatusDesc3 = 'Закъсняваща Позиция на ИП';
  SDeliveryDialogStatusDesc4 = 'Диалог, очакващ Позиция на Доставчик';
  SDeliveryDialogStatusDesc5 = 'Закъсняваща Позиция на Доставчик';
  SDeliveryDialogStatusDesc6 = 'Диалог, очакващ Доставчик';
  SDeliveryDialogStatusDesc7 = 'Закъсняващо Решение по Доставчик';
  SDeliveryDialogStatusDesc8 = 'Диалог с взето Решение';
  SDeliveryDialogStatusDesc9 = 'Диалог със създаден ОПД';
  SDeliveryDialogStatusDesc10 = 'Приключен Диалог';
  SDeliveryDialogStatusDesc11 = 'Анулиран Диалог';

  SDCDStatus1 = 'Реш?';
  SDCDStatus2 = 'Реш?!';
  SDCDStatus3 = 'Реш';
  SDCDStatus4 = 'ОПД';
  SDCDStatus5 = 'Деф';
  SDCDStatus6 = 'Отч';
  SDCDStatus7 = 'Пк';
  SDCDStatus8 = 'Ан';

  SDCDStatusDesc1 = 'Очакват се Позиции на Доставчик и Решения по тях';
  SDCDStatusDesc2 = 'Закъсняващи Позиции на Доставчик и Решения по тях';
  SDCDStatusDesc3 = 'Налични Позиции на Доставчик и Решения по тях за цялото к-во по ПДД';
  SDCDStatusDesc4 = 'Налични са ОПД за цялото к-во по ПДД';
  SDCDStatusDesc5 = 'Непредотвратен Дефицит';
  SDCDStatusDesc6 = 'Отчетена Доставка';
  SDCDStatusDesc7 = 'Приключен Пакет Диалози';
  SDCDStatusDesc8 = 'Анулиран Пакет Диалози';

  SDeliveryStatus1 = 'Пл';
  SDeliveryStatus2 = 'Дст!';
  SDeliveryStatus3 = 'Наем';
  SDeliveryStatus4 = 'Врщ!';
  SDeliveryStatus5 = 'Отч';
  SDeliveryStatus6 = 'Пк';
  SDeliveryStatus7 = 'Ан';

  SDeliveryStatusDesc1 = 'Планова Доставка';
  SDeliveryStatusDesc2 = 'Закъсняваща Доставка';
  SDeliveryStatusDesc3 = 'Протича Наем';
  SDeliveryStatusDesc4 = 'Изтекъл Наем и Закъсняващо връщане на наети обекти';
  SDeliveryStatusDesc5 = 'Отчетена Доставка';
  SDeliveryStatusDesc6 = 'Приключена Доставка';
  SDeliveryStatusDesc7 = 'Анулирана Доставка';

  SSales = 'УОб-ЕлП';
  SEnv = 'УОб-ЕлС';
  SFor = 'за';
  SOf = 'на';

const
  DeliveryStatusCodeAnnuled = 7;

const
  DeliveryDialogStatuses: array [1..11] of string = (
    SDeliveryDialogStatus1, SDeliveryDialogStatus2, SDeliveryDialogStatus3, SDeliveryDialogStatus4,
    SDeliveryDialogStatus5, SDeliveryDialogStatus6, SDeliveryDialogStatus7, SDeliveryDialogStatus8,
    SDeliveryDialogStatus9, SDeliveryDialogStatus10, SDeliveryDialogStatus11
  );

  DeliveryDialogStatusDescriptions: array [1..11] of string = (
    SDeliveryDialogStatusDesc1, SDeliveryDialogStatusDesc2, SDeliveryDialogStatusDesc3, SDeliveryDialogStatusDesc4,
    SDeliveryDialogStatusDesc5, SDeliveryDialogStatusDesc6, SDeliveryDialogStatusDesc7, SDeliveryDialogStatusDesc8,
    SDeliveryDialogStatusDesc9, SDeliveryDialogStatusDesc10, SDeliveryDialogStatusDesc11
  );

  DeliveryDialogStatusCodeClosed = 10;

const
  DeliveryGroupStatuses: array [1..3] of string = (
    SDeliveryDialogStatus9, SDeliveryDialogStatus10, SDeliveryDialogStatus11
  );

const
  DCDStatuses: array [1..8] of string = (
    SDCDStatus1, SDCDStatus2, SDCDStatus3, SDCDStatus4,
    SDCDStatus5, SDCDStatus6, SDCDStatus7, SDCDStatus8
  );

  DCDStatusDescriptions: array [1..8] of string = (
    SDCDStatusDesc1, SDCDStatusDesc2, SDCDStatusDesc3, SDCDStatusDesc4,
    SDCDStatusDesc5, SDCDStatusDesc6, SDCDStatusDesc7, SDCDStatusDesc8
  );

  DCDStatusCodeReceivedDelivery = 6;
  DCDStatusCodeFinished = 7;

const
  DeliveryStatuses: array [1..7] of string = (
    SDeliveryStatus1, SDeliveryStatus2, SDeliveryStatus3, SDeliveryStatus4,
    SDeliveryStatus5, SDeliveryStatus6, SDeliveryStatus7
  );

  DeliveryStatusDescriptions: array [1..7] of string = (
    SDeliveryStatusDesc1, SDeliveryStatusDesc2, SDeliveryStatusDesc3, SDeliveryStatusDesc4,
    SDeliveryStatusDesc5, SDeliveryStatusDesc6, SDeliveryStatusDesc7
  );

implementation

uses
  SysUtils, uPeriods, DateUtils, uProductClientUtils, uUtils, uClientDateTime;

function CreateCommonMsgParams(AProdOrderBaseType: TProdOrderBaseType; AProductClass: TProductClass): TStrings;
const
  AProdOrderBaseTypeNames: array [pobtEmpty..pobtOccCover] of string = ('', SSales, SEnv, SOccupationProductAbbrev);
begin
  Result:= TStringList.Create;
  try
    Result.Clear;

    case AProductClass of
      pcNormal:
        begin
          Result.ValuesEx['Provision']:= AProdOrderBaseTypeNames[AProdOrderBaseType];

          case AProdOrderBaseType of
            pobtEmpty:
              Result.ValuesEx['ForOrOf']:= '';
            pobtOccCover:
              Result.ValuesEx['ForOrOf']:= SFor;
          else
            Result.ValuesEx['ForOrOf']:= SFor;
          end;
        end;

      pcFinancial:
        begin
          Result.ValuesEx['Provision']:= SProductClassAbbrevFinancial;
          Result.ValuesEx['ForOrOf']:= SFor;
        end;

      else
        Assert(False);
    end;
    
  except
    FreeAndNil(Result);
    raise;
  end;
end;

procedure FillDataSetWithDCDStatuses(ADataSet: TDataSet);
var
  i: Integer;
begin
  for i:= Low(DCDStatuses) to High(DCDStatuses) do
    ADataSet.AppendRecord([i, DCDStatuses[i], DCDStatusDescriptions[i]]);
end;

procedure FillDataSetWithDeliveryDialogStatuses(ADataSet: TDataSet);
var
  i: Integer;
begin
  for i:= Low(DeliveryDialogStatuses) to High(DeliveryDialogStatuses) do
    ADataSet.AppendRecord([i, DeliveryDialogStatuses[i], DeliveryDialogStatusDescriptions[i]]);
end;

procedure FillDataSetWithDeliveryStatuses(ADataSet: TDataSet);
var
  i: Integer;
begin
  for i:= Low(DeliveryStatuses) to High(DeliveryStatuses) do
    ADataSet.AppendRecord([i, DeliveryStatuses[i], DeliveryStatusDescriptions[i]]);
end;

function CalcObjectiveDCDStatusCode(
  APlanDecisionDateField: TField;
  ADCDQuantityField: TField;
  ADPDecisionQuantityField: TField;
  ADCQuantityField: TField;
  ADeliverySDQuantityField: TField;
  ADeficitCoverDateField: TField;
  AIsDoneField: TField;
  AIsCanceledField: TField): Integer;
begin
  if AIsCanceledField.AsBoolean then
    Exit(8);

  if AIsDoneField.AsBoolean then
    Exit(7);

  if not ADeliverySDQuantityField.IsNull and
     (ADeliverySDQuantityField.AsFloat >= ADCDQuantityField.AsFloat) then
    Exit(6);

  if not ADeficitCoverDateField.IsNull and
     (ContextDate > ADeficitCoverDateField.AsDateTime) then
    Exit(5);

  if not ADCQuantityField.IsNull and
     (ADCQuantityField.AsFloat >= ADCDQuantityField.AsFloat) then
    Exit(4);

  if not ADPDecisionQuantityField.IsNull and
     (ADPDecisionQuantityField.AsFloat >= ADCDQuantityField.AsFloat) then
    Exit(3);

  if not APlanDecisionDateField.IsNull and
     (ContextDate > APlanDecisionDateField.AsDateTime) then
    Exit(2);

  Result:= 1;
end;

function CalcSubjectiveDCDStatusCode(
  AOriginalDCDStatusCodeField: TField;
  APlanDecisionDateField: TField;
  AIsDoneField: TField;
  AIsCanceledField: TField): Integer;
begin
  if AIsCanceledField.AsBoolean then
    Exit(8);

  if AIsDoneField.AsBoolean then
    Exit(7);

  if (AOriginalDCDStatusCodeField.AsInteger > 2) then
    Exit(AOriginalDCDStatusCodeField.AsInteger);

  if not APlanDecisionDateField.IsNull and
     (ContextDate > APlanDecisionDateField.AsDateTime) then
    Exit(2);

  Result:= 1;
end;

function CalcDeliveryDialogStatusCode(
  AnnulEmployeeCodeField: TField;
  FinishEmployeeCodeField: TField;
  DeliveryObjectBranchCodeField: TField;
  RealDecisionDateField: TField;
  PlanDecisionDateField: TField;
  RealVendorPositionDateField: TField;
  PlanVendorPositionDateField: TField;
  RealPositionDateField: TField;
  PlanPositionDateField: TField
  ): Integer;
begin
  if not AnnulEmployeeCodeField.IsNull then
    begin
      Result:= 11;
      Exit;
    end;

  if not FinishEmployeeCodeField.IsNull then
    begin
      Result:= 10;
      Exit;
    end;

  if not DeliveryObjectBranchCodeField.IsNull then
    begin
      Result:= 9;
      Exit;
    end;

  if not RealDecisionDateField.IsNull then
    begin
      Result:= 8;
      Exit;
    end;

  if not RealVendorPositionDateField.IsNull then
    begin
      if (ContextDate > PlanDecisionDateField.AsDateTime) then
        Result:= 7
      else
        Result:= 6;
    end
  else
    begin
      if not RealPositionDateField.IsNull then
        begin
          if (ContextDate > PlanVendorPositionDateField.AsDateTime) then
            Result:= 5
          else
            Result:= 4
        end
      else
        begin
          if PlanPositionDateField.IsNull then
            Result:= 1
          else
            begin
              if (ContextDate > PlanPositionDateField.AsDateTime) then
                Result:= 3
              else
                Result:= 2
            end;
        end;
    end;
end;

function CalcDeliveryStatusCode(
  DeliveryDateField: TField;
  SDQuantityField: TField;
  QuantityField: TField;
  FinishEmployeeCodeField: TField;
  AnnulEmployeeCodeField: TField
  ): Integer;
begin
  if not AnnulEmployeeCodeField.IsNull then
    begin
      Result:= 7;
      Exit;
    end;

  if not FinishEmployeeCodeField.IsNull then
    begin
      Result:= 6;
      Exit;
    end;

  if (SDQuantityField.AsFloat >= QuantityField.AsFloat) then
    begin
      Result:= 5;
      Exit;
    end;

  if (ContextDate > DeliveryDateField.AsDateTime) then
    begin
      Result:= 2;
      Exit;
    end;

  Result:= 1;
end;

procedure DeliveryDialogsCalcFields(ADataSet: TDataSet);
var
  MeasureAbbrev, AccountMeasureAbbrev: string;
begin
  with ADataSet do
    begin
      if FieldByName('PROGNOSIS_BEGIN_DATE').IsNull then
        FieldByName('_PROGNOSIS_PERIOD_MONTHS').Clear
      else
        FieldByName('_PROGNOSIS_PERIOD_MONTHS').AsString:=
          FieldByName('PROGNOSIS_BEGIN_DATE').DisplayText +
          ' - ' +
          IntToStr(MonthsBetween(FieldByName('PROGNOSIS_BEGIN_DATE').AsDateTime, FieldByName('PROGNOSIS_END_DATE').AsDateTime));

      FieldByName('_LEASE_DATE_INTERVAL').Assign(FieldByName('RECEIVE_DATE'));

      // totals
      if FieldByName('MEASURE_ABBREV').IsNull then
        MeasureAbbrev:= FieldByName('PROGNOSIS_MEASURE_ABBREV').AsString
      else
        MeasureAbbrev:= FieldByName('MEASURE_ABBREV').AsString;

      if FieldByName('ACCOUNT_MEASURE_ABBREV').IsNull then
        AccountMeasureAbbrev:= FieldByName('PROGNOSIS_ACC_MEASURE_ABBREV').AsString
      else
        AccountMeasureAbbrev:= FieldByName('ACCOUNT_MEASURE_ABBREV').AsString;

      if FieldByName('_MIN_MEASURE_CODE').AsVariant = FieldByName('_MAX_MEASURE_CODE').AsVariant then
        begin
          FieldByName('_DISPLAY_SUM_QUANTITY').AsVariant:= FieldByName('_SUM_QUANTITY').AsVariant;
          FieldByName('_MEASURE_ABBREV').AsString:= MeasureAbbrev;
        end
      else
        begin
          FieldByName('_DISPLAY_SUM_QUANTITY').Clear;
          FieldByName('_MEASURE_ABBREV').Clear;
        end;

      if FieldByName('_MIN_ACCOUNT_MEASURE_CODE').AsVariant = FieldByName('_MAX_ACCOUNT_MEASURE_CODE').AsVariant then
        begin
          FieldByName('_DISPLAY_SUM_ACCOUNT_QUANTITY').AsVariant:= FieldByName('_SUM_ACCOUNT_QUANTITY').AsVariant;
          FieldByName('_ACCOUNT_MEASURE_ABBREV').AsString:= AccountMeasureAbbrev;
        end
      else
        begin
          FieldByName('_DISPLAY_SUM_ACCOUNT_QUANTITY').Clear;
          FieldByName('_ACCOUNT_MEASURE_ABBREV').Clear;
        end;

      if FieldByName('_MIN_PROGNOSIS_MEASURE_CODE').AsVariant = FieldByName('_MAX_PROGNOSIS_MEASURE_CODE').AsVariant then
        begin
          FieldByName('_DISPLAY_SUM_PROGNOSIS_QUANTITY').AsVariant:= FieldByName('_SUM_PROGNOSIS_QUANTITY').AsVariant;
          FieldByName('_PROGNOSIS_MEASURE_ABBREV').AsString:= MeasureAbbrev;
        end
      else
        begin
          FieldByName('_DISPLAY_SUM_PROGNOSIS_QUANTITY').Clear;
          FieldByName('_PROGNOSIS_MEASURE_ABBREV').Clear;
        end;

      if FieldByName('_MIN_PROGNOSIS_ACC_MEASURE_CODE').AsVariant = FieldByName('_MAX_PROGNOSIS_ACC_MEASURE_CODE').AsVariant then
        begin
          FieldByName('_DISPLAY_SUM_PROGNOSIS_ACC_QTY').AsVariant:= FieldByName('_SUM_PROGNOSIS_ACCOUNT_QUANTITY').AsVariant;
          FieldByName('_PROGNOSIS_ACC_MEASURE_ABBREV').AsString:= AccountMeasureAbbrev;
        end
      else
        begin
          FieldByName('_DISPLAY_SUM_PROGNOSIS_ACC_QTY').Clear;
          FieldByName('_PROGNOSIS_ACC_MEASURE_ABBREV').Clear;
        end;
    end;
end;

end.
