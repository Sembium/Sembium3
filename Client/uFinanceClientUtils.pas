unit uFinanceClientUtils;

interface

uses
  Graphics, JvDBCombobox, DBCtrlsEh, DB;

procedure InitializeComboBoxWithFinOrderStates(const AComboBox: TJvDBComboBox; ANumbered: Boolean); overload;
procedure InitializeComboBoxWithFinOrderStates(const AComboBox: TDBComboBoxEh; ANumbered: Boolean); overload;

function FinOrderStateDisplayText(AStateCode: Integer; AAbbrevWidth: Integer = 0;
  ACanvas: TCanvas = nil; ANumbered: Boolean = False): string;

procedure FinStoreFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean; IsFinStore: Boolean = True);

procedure FinOrderGeneratorModifiedError;

procedure CheckClosingWithFinOrder(const AFinOrderStatusCode: Integer);

resourcestring
  SBefore = 'Преди';
  SAfter = 'След';
  SMovementDateOffsetSignRequired = 'Не сте задали посока на отместване спрямо Базова Дата';
  SIncorrectPrimaryLineQtyPercentSum = 'Сумата от структурните пропорции по основните редове трябва да е 100%';
  SConfirmFinOrderClose = 'ОПФ е отчетен и също ще бъде приключен.' + SLineBreak + 'Желаете ли да продължите?';
  SFinOrderGeneratorModified = 'Не можете да отваряте ОПФ, тъй като ордерът генератор е променен';
  SCloseNotAllowed = 'Не можете да приключвате, тъй като съществува ОПФ, който не е активиран';

const
  fosNotActivated = 1;
  fosActivated = 2;
  fosActivatedLate = 3;
  fosStarted = 4;
  fosCompleted = 5;
  fosClosed = 6;
  fosAnnuled = 7;

implementation

uses
  SysUtils, Math, uUtils, Controls, Classes, dMain, uClientUtils,
  uUserActivityConsts;

resourcestring
  SFinOrderStateAbbrev1 = 'РИР';
  SFinOrderStateAbbrev2 = 'Пл';
  SFinOrderStateAbbrev3 = 'Пл!';
  SFinOrderStateAbbrev4 = 'П/О';
  SFinOrderStateAbbrev5 = 'Отч';
  SFinOrderStateAbbrev6 = 'Пк';
  SFinOrderStateAbbrev7 = 'Ан';

  SFinOrderStateName1 = 'Реализационно Идейно Разработване';
  SFinOrderStateName2 = 'Планов';
  SFinOrderStateName3 = 'Планов със закъснение';
  SFinOrderStateName4 = 'Планово - Отчетен';
  SFinOrderStateName5 = 'Отчетен';
  SFinOrderStateName6 = 'Приключен';
  SFinOrderStateName7 = 'Анулиран';

type
  TFinOrderStateCodes = 1..7;

const
  FinOrderStatusAbbrevs: array[TFinOrderStateCodes] of string = (
    SFinOrderStateAbbrev1,
    SFinOrderStateAbbrev2,
    SFinOrderStateAbbrev3,
    SFinOrderStateAbbrev4,
    SFinOrderStateAbbrev5,
    SFinOrderStateAbbrev6,
    SFinOrderStateAbbrev7
  );

  FinOrderStatusNames: array[TFinOrderStateCodes] of string = (
    SFinOrderStateName1,
    SFinOrderStateName2,
    SFinOrderStateName3,
    SFinOrderStateName4,
    SFinOrderStateName5,
    SFinOrderStateName6,
    SFinOrderStateName7
  );

procedure InternalInitializeComboBoxWithFinOrderStates(AComboBox: TWinControl; ACanvas: TCanvas;
  AItems, AValues: TStrings; ANumbered: Boolean); overload;
var
  Code: Integer;
begin
  AItems.Clear;
  AValues.Clear;

  for Code:= Low(TFinOrderStateCodes) to High(TFinOrderStateCodes) do
    begin
      AItems.Add(FinOrderStateDisplayText(Code, AComboBox.Width, ACanvas, ANumbered));
      AValues.Add(IntToStr(Code));
    end;
end;

procedure InitializeComboBoxWithFinOrderStates(const AComboBox: TJvDBComboBox; ANumbered: Boolean);
begin
  InternalInitializeComboBoxWithFinOrderStates(AComboBox, AComboBox.Canvas,
    AComboBox.Items, AComboBox.Values, ANumbered);
end;

type
  TDBComboBoxEhHack = class(TDBComboBoxEh)
  public
    property Canvas;
  end;

procedure InitializeComboBoxWithFinOrderStates(const AComboBox: TDBComboBoxEh; ANumbered: Boolean); overload;
begin
  InternalInitializeComboBoxWithFinOrderStates(AComboBox, TDBComboBoxEhHack(AComboBox).Canvas,
    AComboBox.Items, AComboBox.KeyItems, ANumbered);
end;

function FinOrderStateDisplayText(AStateCode: Integer; AAbbrevWidth: Integer; ACanvas: TCanvas;
  ANumbered: Boolean): string;
const
  Space = ' ';
  DefaultSpaceCount = 5;

  function ValidFinOrderState(AStateCode: Integer): Boolean;
  begin
    Result:= InRange(AStateCode, Low(TFinOrderStateCodes), High(TFinOrderStateCodes));
  end;

  function CodeToStr(ACode: Integer): string;
  begin
    if (ACode = High(TFinOrderStateCodes)) then
      Result:= FinOrderStatusAbbrevs[High(TFinOrderStateCodes)]
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
  if not ValidFinOrderState(AStateCode) then
    begin
      Result:= '';
      Exit;
    end;

  MaxCodeLength:=
    Max(
      Length(IntToStr(High(TFinOrderStateCodes))),
      Length(FinOrderStatusAbbrevs[High(TFinOrderStateCodes)])
    );

  if ANumbered then
    PreffixFormatPattern:= '%1:' + IntToStr(MaxCodeLength) + 's - %0:s'
  else
    PreffixFormatPattern:= '%0:s';

  if (AAbbrevWidth = 0) or not Assigned(ACanvas) then
    SpaceCount:= DefaultSpaceCount
  else
    begin
      SpaceWidth:= ACanvas.TextWidth(Space);
      Prefix:= Format(PreffixFormatPattern, [FinOrderStatusAbbrevs[AStateCode], CodeToStr(AStateCode)]);
      PrefixWidth:= ACanvas.TextWidth(Prefix);
      SpaceCount:= RealRound((AAbbrevWidth - PrefixWidth) / SpaceWidth);
    end;

  Result:= Prefix + StringOfChar(Space, SpaceCount) + FinOrderStatusNames[AStateCode];
end;  { FinOrderStateDisplayText }

procedure FinStoreFieldGetText(Sender: TField; var Text: String; DisplayText, IsFinStore: Boolean);
begin
  if IsFinStore and
     (not VarIsNullOrEmpty(Sender.Value)) and
     (not dmMain.LoginContext.HasUserActivity(uaShowFinStores)) then
    Text:= SNotAvailable
  else
    Text:= Sender.AsString;
end;

procedure FinOrderGeneratorModifiedError;
begin
  raise Exception.Create(SFinOrderGeneratorModified);
end;

procedure CheckClosingWithFinOrder(const AFinOrderStatusCode: Integer);
begin
  if (AFinOrderStatusCode = fosNotActivated) then
    raise Exception.Create(SCloseNotAllowed);
end;

end.
