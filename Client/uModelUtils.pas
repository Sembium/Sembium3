unit uModelUtils;
                                      
interface

uses
  JvDBCombobox, DBCtrlsEh, DB;

// vidove razguvania na Sledene na MODEl
const
  msesExpanded = 1;
  msesWarningsOnly = 2;
  msesShrunk = 3;


resourcestring
  SAnnuledML                  = 'Ан      (100) Анулиран';
  SFinishedWithoutML          = 'ПкБ     (12) Приключен ОПВ без създаден Р-МОДЕл';
  SArchivedML                 = 'Ар      (11) Р-МОДЕл-а е архивиран и ОП е приключен';
  SArchivedMLButNotSale       = 'Ар?     (10) Р-МОДЕл-а е архивиран, но ОП не е приключен (при ОПП)';
  SFinishedML                 = 'Пк     (9) Р-МОДЕл-а и ОП са приключени';
  SFinishedMLButNotSale       = 'Пк?    (8) Р-МОДЕл-а е приключен, но ОП не е приключен (при ОПП)';
  SCompletedML                = 'Отч    (7) Всички преминавания по Р-МОДЕл-а са отчетени';
  SLimitingML                 = 'П/О   (6) Р-МОДЕл-а е активиран';
  SLimitingDateReachedML      = 'Пл!    (5) Р-МОДЕл-а не е активиран, но датата за активиране вече е настъпила';
  SLimitingDateNotReachedML   = 'Пл     (4) Р-МОДЕл-а не е активиран и датата за активиране не е настъпила';
  SPlanMLMissingML            = 'РМ?   (3) Не е създаден Реализационен МОДЕл (Р-МОДЕл)';
  SProductionDeptNotDefinedML = 'ТР?   (2) Не е избрано ТП Реализатор';
  SOKIDUMissingML             = 'ИМ?   (1) Не е избран Инженер МОДЕл-иер';

  SNumAnnuledML                  = 'Ан - Ан          Анулиран';
  SNumFinishedWithoutML          = '12 - ПкБ        Приключен ОПВ без създаден Р-МОДЕл';
  SNumArchivedML                 = '11 - Ар          Р-МОДЕл-а е архивиран и ОП е приключен';
  SNumArchivedMLButNotSale       = '10 - Ар?         Р-МОДЕл-а е архивиран, но ОП не е приключен (при ОПП)';
  SNumFinishedML                 = ' 9 - Пк          Р-МОДЕл-а и ОП са приключени';
  SNumFinishedMLButNotSale       = ' 8 - Пк?         Р-МОДЕл-а е приключен, но ОП не е приключен (при ОПП)';
  SNumCompletedML                = ' 7 - Отч        Всички преминавания по Р-МОДЕл-а са отчетени';
  SNumLimitingML                 = ' 6 - П/О        Р-МОДЕл-а е активиран';
  SNumLimitingDateReachedML      = ' 5 - Пл!         Р-МОДЕл-а не е активиран, но датата за активиране вече е настъпила';
  SNumLimitingDateNotReachedML   = ' 4 - Пл          Р-МОДЕл-а не е активиран и датата за активиране не е настъпила';
  SNumPlanMLMissingML            = ' 3 - РМ?       Не е създаден Реализационен МОДЕл (Р-МОДЕл)';
  SNumProductionDeptNotDefinedML = ' 2 - ТР?      Не е избрано ТП Реализатор';
  SNumOKIDUMissingML             = ' 1 - ИМ?       Не е избран Инженер МОДЕл-иер';

  SAnnuledMLAbbrev = 'Ан';
  SFinishedWithoutMLAbbrev = 'ПкБ';
  SArchivedMLAbbrev = 'Ар';
  SArchivedMLAbbrevButNotSale = 'Ар?';
  SFinishedMLAbbrev = 'Пк';
  SFinishedMLAbbrevButNotSale = 'Пк?';
  SCompletedMLAbbrev = 'Отч';
  SLimitingMLAbbrev = 'П/О';
  SLimitingDateReachedMLAbbrev = 'Пл!';
  SLimitingDateNotReachedMLAbbrev = 'Пл';
  SPlanMLMissingMLAbbrev = 'РМ?';
  SProductionDeptNotDefinedMLAbbrev = 'ТР?';
  SOKIDUMissingMLAbbrev = 'ИМ?';

  SOkSpec     = '6 - OK';
  SState5Spec = '5 - ОК?      Очаква авторизиране на вариант на Принципен МОДЕл';
  SState4Spec = '4 - РПМ     Работа по Принципен Модел';
  SState3Spec = '3 - ОЗПМ   Очаква Започване на Принципен МОДЕл';
  SState2Spec = '2 - РИС      Работа по Инженерна Структура';
  SState1Spec = '1 - ОЗИС   Очаква Започване на Инженерна Структура';
  SState0Spec = '0 - БПМС   Без П-МОДЕл в Системата';

  SOkSpecAbbrev     = 'ОК            Всичко е ОК (може да бъде зареден към ОПВ)';
  SState5SpecAbbrev = 'OK?';        // такъв не трябва да може да има, зашото варианта за модела трябва да е един
  SState4SpecAbbrev = 'РПМ          Работа по Принципен Модел (Няма авторизиран вариант на П-МОДЕл-а, отговарящ на количеството по ОПВ)';
  SState3SpecAbbrev = 'ОЗПМ         Очаква Започване на Принципен МОДЕл (Не е създаден Принципен МОДЕл)';
  SState2SpecAbbrev = 'РИС          Работа по Инженерна Структура (Няма Авторизирана Работна Инженерна Структура)';
  SState1SpecAbbrev = 'ОЗИС         Очаква Започване на Инженерна Структура (Няма Работна Инженерна Структура)';
  SState0SpecAbbrev = 'БПМС         Без П-МОДЕл в Системата';

  SSpecNoQuantityState0Abbrev = 'БПМС';
  SSpecNoQuantityState1Abbrev = 'ОЗИС';
  SSpecNoQuantityState2Abbrev = 'РИС';
  SSpecNoQuantityState3Abbrev = 'ОЗПМ';
  SSpecNoQuantityState4Abbrev = 'РПМ';
  SSpecNoQuantityState5Abbrev = 'ОК?';
  SSpecNoQuantityState6Abbrev = 'ОК';

  SSpecNoQuantityState0 = 'БПМС            Без П-МОДЕл в Системата';
  SSpecNoQuantityState1 = 'ОЗИС            Очаква Започване на Инженерна Структура';
  SSpecNoQuantityState2 = 'РИС             Работа по Инженерна Структура';
  SSpecNoQuantityState3 = 'ОЗПМ            Очаква Започване на Принципен МОДЕл';
  SSpecNoQuantityState4 = 'РПМ             Работа по Принципен МОДЕл';
  SSpecNoQuantityState5 = 'OK?             Очаква авторизиране на вариант на Принципен МОДЕл';
  SSpecNoQuantityState6 = 'ОК';

  SModelOperationsStatusStageAbbrev = 'Е';
  SModelOperationsStatusCombinedAbbrev = 'К';
  SModelOperationsStatusOperationsAbbrev = 'О';

  // Engineering orders
  SEngineeringDeptNotSetEO           = 'ТР?       Не е избрано ТП Реализатор';
  SEngineeringEmployeeNotSetEO       = 'ИМ?       Не е избран Инженер МОДЕл-иер';
  SStartingDateNotReachedEO          = 'Пл        ОПИР не е стартиран и датата за стартиране не е настъпила';
  SStartingDateReachedEO             = 'Пл!       ОПИР не е стартиран, но датата за стартиране вече е настъпила';
  SActivatedEO                       = 'П/О       ОПИР е активиран';
  SCompletedEO                       = 'Отч       ПИР статуса на УОб по ОПИР е ОК';
  SClosedEO                          = 'Пк        ОПИР е приключен';
  SAnnuledEO                         = 'Ан        ОПИР е Анулиран';

  SEngineeringDeptNotSetAbbrevEO     = 'ТР?';
  SEngineeringEmployeeNotSetAbbrevEO = 'ИМ?';
  SActivatingDateNotReachedAbbrevEO  = 'Пл';
  SActivatingDateReachedAbbrevEO     = 'Пл!';
  SActivatedAbbrevEO                 = 'П/О';
  SCompletedAbbrevEO                 = 'Отч';
  SClosedAbbrevEO                    = 'Пк';
  SAnnuledAbbrevEO                   = 'Ан';

  SNumEngineeringDeptNotSetEO        = ' 1 - ТР?     Не е избрано ТП Реализатор';
  SNumEngineeringEmployeeNotSetEO    = ' 2 - ИМ?     Не е избран Инженер МОДЕл-иер';
  SNumActivatingDateNotReachedEO     = ' 3 - Пл      ОПИР не е активиран и датата за активиране не е настъпила';
  SNumActivatingDateReachedEO        = ' 4 - Пл!     ОПИР не е активиран, но датата за активиране вече е настъпила';
  SNumActivatedEO                    = ' 5 - П/О     ОПИР е активиран';
  SNumCompletedEO                    = ' 6 - Отч     ПИР статуса на УОб по ОПИР е ОК';
  SNumClosedEO                       = ' 7 - Пк      ОПИР е приключен';
  SNumAnnuledEO                      = 'Ан - Ан      ОПИР е Анулиран';

const
  OKIDUMissingMLState = 1;
  ClosedMinMLState = 8;
  ClosedMaxMLState = 9;
  ArchivedMinMLState = 10;
  ArchivedMaxMLState = 11;
  FinishedWithoutMLState = 12;
  AnnuledMLState = 13;

type
  TMLStateNames = array [1..13] of string;
  TEOStates = 1..8;
  TEOStateNames = array[TEOStates] of string;

const
  MLStateNames: TMLStateNames =
    ( SOKIDUMissingML,
      SProductionDeptNotDefinedML,
      SPlanMLMissingML,
      SLimitingDateNotReachedML,
      SLimitingDateReachedML,
      SLimitingML,
      SCompletedML,
      SFinishedMLButNotSale,
      SFinishedML,
      SArchivedMLButNotSale,
      SArchivedML,
      SFinishedWithoutML,
      SAnnuledML
    );

  MLStateNumNames: TMLStateNames =
    ( SNumOKIDUMissingML,
      SNumProductionDeptNotDefinedML,
      SNumPlanMLMissingML,
      SNumLimitingDateNotReachedML,
      SNumLimitingDateReachedML,
      SNumLimitingML,
      SNumCompletedML,
      SNumFinishedMLButNotSale,
      SNumFinishedML,
      SNumArchivedMLButNotSale,
      SNumArchivedML,
      SNumFinishedWithoutML,
      SNumAnnuledML
    );

  MLStateAbbrevs: TMLStateNames =
    ( SOKIDUMissingMLAbbrev,
      SProductionDeptNotDefinedMLAbbrev,
      SPlanMLMissingMLAbbrev,
      SLimitingDateNotReachedMLAbbrev,
      SLimitingDateReachedMLAbbrev,
      SLimitingMLAbbrev,
      SCompletedMLAbbrev,
      SFinishedMLAbbrevButNotSale,
      SFinishedMLAbbrev,
      SArchivedMLAbbrevButNotSale,
      SArchivedMLAbbrev,
      SFinishedWithoutMLAbbrev,
      SAnnuledMLAbbrev
    );

  SpecStateNames: array [0..6] of string =
    ( SState0Spec,
      SState1Spec,
      SState2Spec,
      SState3Spec,
      SState4Spec,
      SState5Spec,
      SOkSpec
    );

  SpecStateAbbrevs: array [0..6] of string =
    ( SState0SpecAbbrev,
      SState1SpecAbbrev,
      SState2SpecAbbrev,
      SState3SpecAbbrev,
      SState4SpecAbbrev,
      SState5SpecAbbrev,
      SOkSpecAbbrev
    );

  SpecNoQuantityStateAbbrevs: array [0..6] of string =
    ( SSpecNoQuantityState0Abbrev,
      SSpecNoQuantityState1Abbrev,
      SSpecNoQuantityState2Abbrev,
      SSpecNoQuantityState3Abbrev,
      SSpecNoQuantityState4Abbrev,
      SSpecNoQuantityState5Abbrev,
      SSpecNoQuantityState6Abbrev
    );

  SpecNoQuantityStates: array [0..6] of string =
    ( SSpecNoQuantityState0,
      SSpecNoQuantityState1,
      SSpecNoQuantityState2,
      SSpecNoQuantityState3,
      SSpecNoQuantityState4,
      SSpecNoQuantityState5,
      SSpecNoQuantityState6
    );

  EOStateNames: TEOStateNames =
    ( SEngineeringDeptNotSetEO,
      SEngineeringEmployeeNotSetEO,
      SStartingDateNotReachedEO,
      SStartingDateReachedEO,
      SActivatedEO,
      SCompletedEO,
      SClosedEO,
      SAnnuledEO
    );

  EOStateAbbrevs: TEOStateNames =
    ( SEngineeringDeptNotSetAbbrevEO,
      SEngineeringEmployeeNotSetAbbrevEO,
      SActivatingDateNotReachedAbbrevEO,
      SActivatingDateReachedAbbrevEO,
      SActivatedAbbrevEO,
      SCompletedAbbrevEO,
      SClosedAbbrevEO,
      SAnnuledAbbrevEO
    );

  EOStateNumNames: TEOStateNames =
    ( SNumEngineeringDeptNotSetEO,
      SNumEngineeringEmployeeNotSetEO,
      SNumActivatingDateNotReachedEO,
      SNumActivatingDateReachedEO,
      SNumActivatedEO,
      SNumCompletedEO,
      SNumClosedEO,
      SNumAnnuledEO
    );

  ClosedEOStateCode = 7;
  AnnuledEOStateCode = 8;

// model operations status
  mosStage = 1;
  mosCombined = 2;
  mosOperations = 3;

  ModelOperationsStatusAbbrevs: array[mosStage..mosOperations] of string =
    (
      SModelOperationsStatusStageAbbrev,
      SModelOperationsStatusCombinedAbbrev,
      SModelOperationsStatusOperationsAbbrev
    );


procedure InitializeComboBoxWithMLStates(const AComboBox: TJvDBComboBox; ANumbered: Boolean); overload;
procedure InitializeComboBoxWithMLStates(const AComboBox: TDBComboBoxEh; ANumbered: Boolean); overload;
procedure InitializeComboBoxWithSpecStates(const AComboBox: TJvDBComboBox); overload;
procedure InitializeComboBoxWithSpecStates(const AComboBox: TDBComboBoxEh); overload;
procedure InitializeComboBoxWithEOStates(const AComboBox: TJvDBComboBox; ANumbered: Boolean); overload;
procedure InitializeComboBoxWithEOStates(const AComboBox: TDBComboBoxEh; ANumbered: Boolean); overload;

procedure ModelOperationsStatusFieldGetText(Sender: TField; var Text: String; DisplayText: Boolean);

procedure OperationNotesGetText(Sender: TField; var Text: string; OperationTypeCode: Integer);

procedure CheckMLStateFilter(MinMLStageCode, MaxMLStageCode: Integer);

resourcestring
  SCannotReportAutoSetup = 'Не можете да отчитате автоматична настройка';
  SCannotReportAutoMovement = 'Не можете да отчитате автоматично движение';

implementation

uses
  SysUtils, uOperationTypes, Math;

resourcestring
  SBeginOrEndOperationNotes = 'Организация на движение';
  SIncorrectMLStateFilter = 'Прекалено широк диапазон от статуси!';

const
  MLStateFilterRanges: array[1..4] of
    record
      RangeBegin: Integer;
      RangeEnd: Integer;
    end =
    ( (RangeBegin: 1; RangeEnd: 8),
      (RangeBegin: 4; RangeEnd: 9),
      (RangeBegin: 10; RangeEnd: 12),
      (RangeBegin: 13; RangeEnd: 13)
    );

function GetMLStateNames(ANumbered: Boolean): TMLStateNames;
begin
  if ANumbered then
    Result:= MLStateNumNames
  else
    Result:= MLStateNames;
end;

function GetEOStateNames(ANumbered: Boolean): TEOStateNames;
begin
  if ANumbered then
    Result:= EOStateNumNames
  else
    Result:= EOStateNames;
end;

procedure InitializeComboBoxWithMLStates(const AComboBox: TDBComboBoxEh; ANumbered: Boolean);
var
  i: Integer;
  AMLStateNames: TMLStateNames;
begin
  AComboBox.Items.Clear;
  AComboBox.KeyItems.Clear;

  AMLStateNames:= GetMLStateNames(ANumbered);
  for i:= Low(AMLStateNames) to High(AMLStateNames) do
    begin
      AComboBox.Items.Add(AMLStateNames[i]);
      AComboBox.KeyItems.Add(IntToStr(i));
    end;
end;

procedure InitializeComboBoxWithMLStates(const AComboBox: TJvDBComboBox; ANumbered: Boolean);
var
  i: Integer;
  AMLStateNames: TMLStateNames;
begin
  AComboBox.Items.Clear;
  AComboBox.Values.Clear;

  AMLStateNames:= GetMLStateNames(ANumbered);
  for i:= Low(AMLStateNames) to High(AMLStateNames) do
    begin
      AComboBox.Items.Add(AMLStateNames[i]);
      AComboBox.Values.Add(IntToStr(i));
    end;
end;

procedure InitializeComboBoxWithSpecStates(const AComboBox: TJvDBComboBox);
var
  i: Integer;
begin
  AComboBox.Items.Clear;
  AComboBox.Values.Clear;
  for i:= Low(SpecStateNames) to High(SpecStateNames) do
    begin
      AComboBox.Items.Add(SpecStateNames[i]);
      AComboBox.Values.Add(IntToStr(i));
    end;
end;

procedure InitializeComboBoxWithSpecStates(const AComboBox: TDBComboBoxEh);
var
  i: Integer;
begin
  AComboBox.Items.Clear;
  AComboBox.KeyItems.Clear;
  for i:= Low(SpecStateNames) to High(SpecStateNames) do
    begin
      AComboBox.Items.Add(SpecStateNames[i]);
      AComboBox.KeyItems.Add(IntToStr(i));
    end;
end;

procedure InitializeComboBoxWithEOStates(const AComboBox: TDBComboBoxEh; ANumbered: Boolean);
var
  i: Integer;
  AEOStateNames: TEOStateNames;
begin
  AComboBox.Items.Clear;
  AComboBox.KeyItems.Clear;

  AEOStateNames:= GetEOStateNames(ANumbered);
  for i:= Low(AEOStateNames) to High(AEOStateNames) do
    begin
      AComboBox.Items.Add(AEOStateNames[i]);
      AComboBox.KeyItems.Add(IntToStr(i));
    end;
end;

procedure InitializeComboBoxWithEOStates(const AComboBox: TJvDBComboBox; ANumbered: Boolean);
var
  i: Integer;
  AEOStateNames: TEOStateNames;
begin
  AComboBox.Items.Clear;
  AComboBox.Values.Clear;

  AEOStateNames:= GetEOStateNames(ANumbered);
  for i:= Low(AEOStateNames) to High(AEOStateNames) do
    begin
      AComboBox.Items.Add(AEOStateNames[i]);
      AComboBox.Values.Add(IntToStr(i));
    end;
end;

procedure ModelOperationsStatusFieldGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if DisplayText and (not Sender.IsNull) then
    Text:= ModelOperationsStatusAbbrevs[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;  { ModelOperationsStatusFieldGetText }

procedure OperationNotesGetText(Sender: TField; var Text: string; OperationTypeCode: Integer);
begin
  if (OperationTypeCode = otNormal) or (Assigned(Sender) and (Sender.DataSet.RecordCount = 0)) then
    Text:= Sender.AsString
  else
    Text:= SBeginOrEndOperationNotes;
end;

procedure CheckMLStateFilter(MinMLStageCode, MaxMLStageCode: Integer);
var
  i: Integer;
  Ranges: string;
begin
  Ranges:= '';
  for i:= Low(MLStateFilterRanges) to High(MLStateFilterRanges) do
    begin
      if InRange(MinMLStageCode, MLStateFilterRanges[i].RangeBegin, MLStateFilterRanges[i].RangeEnd) and
         InRange(MaxMLStageCode, MLStateFilterRanges[i].RangeBegin, MLStateFilterRanges[i].RangeEnd) then
        Exit;

      Ranges:= Ranges + SLineBreak + 
        Format('%d - %s   -   %d - %s', [
          MLStateFilterRanges[i].RangeBegin, MLStateAbbrevs[MLStateFilterRanges[i].RangeBegin], 
          MLStateFilterRanges[i].RangeEnd, MLStateAbbrevs[MLStateFilterRanges[i].RangeEnd]
        ]);
    end;

  raise Exception.CreateFmt(SIncorrectMLStateFilter, [Ranges]);
end;  { CheckMLStateFilter }


end.
