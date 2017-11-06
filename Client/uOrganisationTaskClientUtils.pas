unit uOrganisationTaskClientUtils;

interface

uses
  JvDBCombobox, DBCtrlsEh;

resourcestring
  SPlanProposalNotSetOTP        = 'Зр?          Зараждане без План за Представяне';
  SPlanProposalSetOTP           = 'Зр            Зараждане с План за Представяне';
  SProposalReturnedOTP          = 'Врнт?      Върнато Предложение за Проект без нов цикъл на зараждане';
  SProposalAcceptedOTP          = 'Прието    Прието Предложение за Проект - очаква Предсъзряване';
  SFirstEONotActiveOTP          = 'ПрСз?     Предсъзряване преди Активиране на ОПИР';
  SFirstEOActiveOTP             = 'ПрСз       Предсъзряване с Активиран ОПИР';
  SFirstEOClosedOTP             = 'ОРСз       Очаква Решение за Съзряване';
  SEngineeringOrderNotActiveOTP = 'Сз?          Съзряване преди Активиране на ОПИР';
  SEngineeringOrderActiveOTP    = 'Сз            Съзряване с Активиран ОПИР';
  SEngineeringOrderClosedOTP    = 'ОРРл       Очаква Решение за Реализация';
  SProductionOrderNotActiveOTP  = 'Рл?          Реализация преди Активиране';
  SProductionOrderActiveOTP     = 'Рл            Реализация с Активиране';
  SProductionOrderClosedOTP     = 'Пк?          Реализация Приключена';
  SProposalClosedOTP            = 'Пк            Приключен Проект с Изпълнена Реализация';
  SProposalClosedInFirstEOOTP   = 'ПкПрСз   Приключен Проект в резултат на Предсъзряване';
  SProposalClosedInSecondEOOTP  = 'ПкСз       Приключен Проект в резултат на Съзряване';
  SPrematurelyClosedInEOOTP     = 'ПкПАкСз  Приключен поради Преустановяване на Актуалност до начало на Реализация';
  SPrematurelyClosedInPOOTP     = 'ПкПАкРл  Прклиючен поради Преустановяване на Актуалност по време на Реализация';
  SProposalAttachedOTP          = 'Приобщ.  Приобщено Предложение за Проект';
  SProposalReturnedAndReplacedOTP = 'Врнт        Върнато Предложение за Проект с нов цикъл на зараждане';
  SProposalDeniedOTP            = 'Отказ      Отказано Предложение за Проект';
  SProposalAnnuledOTP           = 'Ан            Анулиран Проект';

  SPlanProposalNotSetAbbrevOTP        = 'Зр?';
  SPlanProposalSetAbbrevOTP           = 'Зр';
  SProposalReturnedAbbrevOTP          = 'Врнт?';
  SProposalAcceptedAbbrevOTP          = 'Прието';
  SFirstEONotActiveAbbrevOTP          = 'ПрСз?';
  SFirstEOActiveAbbrevOTP             = 'ПрСз';
  SFirstEOClosedAbbrevOTP             = 'ОРСз';
  SEngineeringOrderNotActiveAbbrevOTP = 'Сз?';
  SEngineeringOrderActiveAbbrevOTP    = 'Сз';
  SEngineeringOrderClosedAbbrevOTP    = 'ОРРл';
  SProductionOrderNotActiveAbbrevOTP  = 'Рл?';
  SProductionOrderActiveAbbrevOTP     = 'Рл';
  SProductionOrderClosedAbbrevOTP     = 'Пк?';
  SProposalClosedAbbrevOTP            = 'Пк';
  SProposalClosedInFirstEOAbbrevOTP   = 'ПкПрСз';
  SProposalClosedInSecondEOAbbrevOTP  = 'ПкСз';
  SPrematurelyClosedInEOAbbrevOTP     = 'ПкПАкСз';
  SPrematurelyClosedInPOAbbrevOTP     = 'ПкПАкРл';
  SProposalAttachedAbbrevOTP          = 'Приобщ.';
  SProposalReturnedAndReplacedAbbrevOTP = 'Врнт';
  SProposalDeniedAbbrevOTP            = 'Отказ';
  SProposalAnnuledAbbrevOTP           = 'Ан';

  SNumPlanProposalNotSetOTP        = '1 - Зр?          Зараждане без План за Представяне';
  SNumPlanProposalSetOTP           = '2 - Зр            Зараждане с План за Представяне';
  SNumProposalReturnedOTP          = '3 - Врнт?       Върнато Предложение за Проект без нов цикъл на зараждане';
  SNumProposalAcceptedOTP          = '4 - Прието     Прието Предложение за Проект - очаква Предсъзряване';
  SNumFirstEONotActiveOTP          = '5 - ПрСз?      Предсъзряване преди Активиране на ОПИР';
  SNumFirstEOActiveOTP             = '6 - ПрСз        Предсъзряване с Активиран ОПИР';
  SNumFirstEOClosedOTP             = '7 - ОРСз        Очаква Решение за Съзряване';
  SNumEngineeringOrderNotActiveOTP = '8 - Сз?           Съзряване преди Активиране на ОПИР';
  SNumEngineeringOrderActiveOTP    = '9 - Сз             Съзряване с Активиран ОПИР';
  SNumEngineeringOrderClosedOTP    = '10 - ОРРл       Очаква Решение за Реализация';
  SNumProductionOrderNotActiveOTP  = '11 - Рл?          Реализация преди Активиране';
  SNumProductionOrderActiveOTP     = '12 - Рл            Реализация с Активиране';
  SNumProductionOrderClosedOTP     = '13 - Пк?          Реализация Приключена';
  SNumProposalClosedOTP            = '14 - Пк            Приключен Проект с Изпълнена Реализация';
  SNumProposalClosedInFirstEOOTP   = '15 - ПкПрСз   Приключен Проект в резултат на Предсъзряване';
  SNumProposalClosedInSecondEOOTP  = '16 - ПкСз        Приключен Проект в резултат на Съзряване';
  SNumPrematurelyClosedInEOOTP     = '17 - ПкПАкСз Приключен поради Преустановяване на Актуалност до начало на Реализация';
  SNumPrematurelyClosedInPOOTP     = '18 - ПкПАкРл Прклиючен поради Преустановяване на Актуалност по време на Реализация';
  SNumProposalAttachedOTP          = '19 - Приобщ.  Приобщено Предложение за Проект';
  SNumProposalReturnedAndReplacedOTP = '20 - Врнт        Върнато Предложение за Проект с нов цикъл на зараждане';
  SNumProposalDeniedOTP            = '21 - Отказ      Отказано Предложение за Проект';
  SNumProposalAnnuledOTP           = '22 - Ан            Анулиран Проект';

type
  TOTPStates = 1..22;
  TOTPStateNames = array[TOTPStates] of string;

const
  OTPStateNames: TOTPStateNames =
    ( SPlanProposalNotSetOTP,
      SPlanProposalSetOTP,
      SProposalReturnedOTP,
      SProposalAcceptedOTP,
      SFirstEONotActiveOTP,
      SFirstEOActiveOTP,
      SFirstEOClosedOTP,
      SEngineeringOrderNotActiveOTP,
      SEngineeringOrderActiveOTP,
      SEngineeringOrderClosedOTP,
      SProductionOrderNotActiveOTP,
      SProductionOrderActiveOTP,
      SProductionOrderClosedOTP,
      SProposalClosedOTP,
      SProposalClosedInFirstEOOTP,
      SProposalClosedInSecondEOOTP,
      SPrematurelyClosedInEOOTP,
      SPrematurelyClosedInPOOTP,
      SProposalAttachedOTP,
      SProposalReturnedAndReplacedOTP,
      SProposalDeniedOTP,
      SProposalAnnuledOTP
    );

  OTPStateAbbrevs: TOTPStateNames =
    ( SPlanProposalNotSetAbbrevOTP,
      SPlanProposalSetAbbrevOTP,
      SProposalReturnedAbbrevOTP,
      SProposalAcceptedAbbrevOTP,
      SFirstEONotActiveAbbrevOTP,
      SFirstEOActiveAbbrevOTP,
      SFirstEOClosedAbbrevOTP,
      SEngineeringOrderNotActiveAbbrevOTP,
      SEngineeringOrderActiveAbbrevOTP,
      SEngineeringOrderClosedAbbrevOTP,
      SProductionOrderNotActiveAbbrevOTP,
      SProductionOrderActiveAbbrevOTP,
      SProductionOrderClosedAbbrevOTP,
      SProposalClosedAbbrevOTP,
      SProposalClosedInFirstEOAbbrevOTP,
      SProposalClosedInSecondEOAbbrevOTP,
      SPrematurelyClosedInEOAbbrevOTP,
      SPrematurelyClosedInPOAbbrevOTP,
      SProposalAttachedAbbrevOTP,
      SProposalReturnedAndReplacedAbbrevOTP,
      SProposalDeniedAbbrevOTP,
      SProposalAnnuledAbbrevOTP
    );

  OTPStateNumNames: TOtpStateNames =
    ( SNumPlanProposalNotSetOTP,
      SNumPlanProposalSetOTP,
      SNumProposalReturnedOTP,
      SNumProposalAcceptedOTP,
      SNumFirstEONotActiveOTP,
      SNumFirstEOActiveOTP,
      SNumFirstEOClosedOTP,
      SNumEngineeringOrderNotActiveOTP,
      SNumEngineeringOrderActiveOTP,
      SNumEngineeringOrderClosedOTP,
      SNumProductionOrderNotActiveOTP,
      SNumProductionOrderActiveOTP,
      SNumProductionOrderClosedOTP,
      SNumProposalClosedOTP,
      SNumProposalClosedInFirstEOOTP,
      SNumProposalClosedInSecondEOOTP,
      SNumPrematurelyClosedInEOOTP,
      SNumPrematurelyClosedInPOOTP,
      SNumProposalAttachedOTP,
      SNumProposalReturnedAndReplacedOTP,
      SNumProposalDeniedOTP,
      SNumProposalAnnuledOTP
    );

const
  OTPStatePlanProposalNotSet = 1;
  OTPStatePlanProposalSet = 2;
  OTPStateProposalReturned = 3;
  OTPStateProposalAccepted = 4;
  OTPStateFirstEONotActive = 5;
  OTPStateFirstEOActive = 6;
  OTPStateFirstEOClosed = 7;
  OTPStateEngineeringOrderNotActive = 8;
  OTPStateEngineeringOrderActive = 9;
  OTPStateEngineeringOrderClosed = 10;
  OTPStateProductionOrderNotActive = 11;
  OTPStateProductionOrderActive = 12;
  OTPStateProductionOrderClosed = 13;
  OTPStateProposalClosed = 14;
  OTPStateProposalClosedInFirstEO = 15;
  OTPStateProposalClosedInSecondEO = 16;
  OTPStatePrematurelyClosedInEO = 17;
  OTPStatePrematurelyClosedInPO = 18;
  OTPStateProposalAttached = 19;
  OTPStateProposalReturnedAndReplaced = 20;
  OTPStateProposalDenied = 21;
  OTPStateProposalAnnuled = 22;

const
  OTPEngineeringStateCode = 1;
  OTPProductionStateCode = 2;

type
  TOTPCloseButtonBehaviour = record
  private
    CanBeUsed: Boolean;
    ExceptionMessage: string;
  public
    procedure CheckCanBeUsed;
  end;

const
  SOTPStatesAssertion = 'uOrganisationTaskClientUtils Assertion: OTP Is Already Closed';
  SCannotCloseProposalWithoutResult = 'Не може да се приключи Проект без взето решение.';
  SProposalWillBeClosedWhenReplaced = 'Предложението ще бъде приключено когато бъде създаден нов цикъл на Зараждане';
  SProposalCanBePrematurelyClosedOnly = 'В този статус Проектът може да бъде приключен само поради Преустановяване на Актуалност';
  SProposalIsInTheMiddleOfFirstEO = 'Проектът не може да бъде приключен докато не приключи фазата на Предсъзряване';
  SProposalIsInTheMiddleOfSecondEO = 'Проектът не може да бъде приключен докато не приключи фазата на Съзряване';
  SProposalIsInTheMiddleOfProdOrder = 'Проектът не може да бъде приключен докато не приключи фазата на Реализация';

const
  OTPNormallyCloseButtonBehaviours: array[TOTPStates] of TOTPCloseButtonBehaviour = (
    (CanBeUsed: False; ExceptionMessage: SCannotCloseProposalWithoutResult),  // 1
    (CanBeUsed: False; ExceptionMessage: SCannotCloseProposalWithoutResult),  // 2
    (CanBeUsed: False; ExceptionMessage: SProposalWillBeClosedWhenReplaced),  // 3
    (CanBeUsed: False; ExceptionMessage: SProposalCanBePrematurelyClosedOnly),  // 4
    (CanBeUsed: False; ExceptionMessage: SProposalIsInTheMiddleOfFirstEO),  // 5
    (CanBeUsed: False; ExceptionMessage: SProposalIsInTheMiddleOfFirstEO),  // 6
    (CanBeUsed: True;  ExceptionMessage: ''),  // 7
    (CanBeUsed: False; ExceptionMessage: SProposalIsInTheMiddleOfSecondEO),  // 8
    (CanBeUsed: False; ExceptionMessage: SProposalIsInTheMiddleOfSecondEO),  // 9
    (CanBeUsed: True ; ExceptionMessage: ''),  // 10
    (CanBeUsed: False; ExceptionMessage: SProposalIsInTheMiddleOfProdOrder),  // 11
    (CanBeUsed: False; ExceptionMessage: SProposalIsInTheMiddleOfProdOrder),  // 12
    (CanBeUsed: True; ExceptionMessage: ''),  // 13
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 14
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 15
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 16
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 17
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 18
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 19
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 20
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 21
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion)   // 22
  );

const
  OTPPematurelyCloseButtonBehaviours: array[TOTPStates] of TOTPCloseButtonBehaviour = (
    (CanBeUsed: False; ExceptionMessage: SCannotCloseProposalWithoutResult),  // 1
    (CanBeUsed: False; ExceptionMessage: SCannotCloseProposalWithoutResult),  // 2
    (CanBeUsed: False; ExceptionMessage: SProposalWillBeClosedWhenReplaced),  // 3
    (CanBeUsed: True;  ExceptionMessage: ''),  // 4
    (CanBeUsed: False; ExceptionMessage: SProposalIsInTheMiddleOfFirstEO),  // 5
    (CanBeUsed: False; ExceptionMessage: SProposalIsInTheMiddleOfFirstEO),  // 6
    (CanBeUsed: True;  ExceptionMessage: ''),  // 7
    (CanBeUsed: False; ExceptionMessage: SProposalIsInTheMiddleOfSecondEO),  // 8
    (CanBeUsed: False; ExceptionMessage: SProposalIsInTheMiddleOfSecondEO),  // 9
    (CanBeUsed: True;  ExceptionMessage: ''),  // 10
    (CanBeUsed: False; ExceptionMessage: SProposalIsInTheMiddleOfProdOrder),  // 11
    (CanBeUsed: False; ExceptionMessage: SProposalIsInTheMiddleOfProdOrder),  // 12
    (CanBeUsed: True; ExceptionMessage: ''),  // 13
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 14
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 15
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 16
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 17
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 18
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 19
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 20
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion),  // 21
    (CanBeUsed: False; ExceptionMessage: SOTPStatesAssertion)   // 22
  );

procedure InitializeComboBoxWithOTPStates(const AComboBox: TJvDBComboBox; ANumbered: Boolean); overload;
procedure InitializeComboBoxWithOTPStates(const AComboBox: TDBComboBoxEh; ANumbered: Boolean); overload;

implementation

uses
  SysUtils;

function GetOTPStateNames(ANumbered: Boolean): TOTPStateNames;
begin
  if ANumbered then
    Result:= OTPStateNumNames
  else
    Result:= OTPStateNames;
end;

procedure InitializeComboBoxWithOTPStates(const AComboBox: TDBComboBoxEh; ANumbered: Boolean); overload;
var
  i: Integer;
  OTPStateNames: TOTPStateNames;
begin
  AComboBox.Items.Clear;
  AComboBox.KeyItems.Clear;

  OTPStateNames:= GetOTPStateNames(ANumbered);
  for i:= Low(OTPStateNames) to High(OTPStateNames) do
    begin
      AComboBox.Items.Add(OTPStateNames[i]);
      AComboBox.KeyItems.Add(IntToStr(i));
    end;  { for }
end;

procedure InitializeComboBoxWithOTPStates(const AComboBox: TJvDBComboBox; ANumbered: Boolean); overload;
var
  i: Integer;
  OTPStateNames: TOTPStateNames;
begin
  AComboBox.Items.Clear;
  AComboBox.Values.Clear;

  OTPStateNames:= GetOTPStateNames(ANumbered);
  for i:= Low(OTPStateNames) to High(OTPStateNames) do
    begin
      AComboBox.Items.Add(OTPStateNames[i]);
      AComboBox.Values.Add(IntToStr(i));
    end;  { for }
end;

{ TOTPCloseButtonBehaviour }

procedure TOTPCloseButtonBehaviour.CheckCanBeUsed;
begin
  if not CanBeUsed then
    raise Exception.Create(ExceptionMessage);
end;

end.
