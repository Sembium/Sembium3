unit uServerMessageTexts;

interface

uses
  AbmesDialogs;
  
const  // saobshtena koito ne triabva da se prevejdat
  SInvalidLoginContextText = 'Invalid login context';

resourcestring   // textove na syobshteniq
  SIncorrectSystemTimeText = 'System time should not be rolled back';
  SNegativeUnfinishedMfgText = 'Получава се отрицателна оперативна наличност към %Date%' + SLineBreak +
    'Количество: %Quantity% Ред: %Mll% Рк: %ForkNo% Етап: %StageNo%';
  SNegativeOpUnfinishedMfgText = 'Получава се отрицателна оперативна наличност към %Date%' + SLineBreak +
    'Количество: %Quantity% Ред: %Mll% Рк: %ForkNo% Етап: %StageNo% Операция: %OperationNo%.%OperationVariantNo%';
  SRelativePathNotEnteredText = 'Не сте задали релативен път';
  SWrongRelativePathText = 'Релативният път трябва да започва с "\"';
  SParamMustHaveValueText = 'Всеки "присъщ" и "задължителен" параметър на оборудване трябва да има стойност';
  SCrossedPeriodText = 'Пресичащ се времеви интервал: %BeginDate% - %EndDate%';
  SCrossedDeptPricesPeriodText = 'Припокриващ ВрмИнт на Стойностно Характеризиране на ФЗ: %BeginDate% - %EndDate%';
  SReportSettingWithOldDateText = 'Не можете да отчитате настройка с толкова стара дата';
  SReportSettingWithFutureDateText = 'Не можете да отчитате настройка с бъдеща дата';
  SNegativeTechQuantityText = 'Отрицателно технологично количество на технологична операция %MlmsoIdentifier%';
  SDefaultStoreNotFoundText = 'Не е въведено ТП Задържащо по подразбиране за %ProductName% No: %ProductNo%';
  SReportMovementWithOldDateText = 'Не можете да отчитате преминаване с толкова стара дата';
  SReportMovementWithFutDateText = 'Не можете да отчитате преминаване с бъдеща дата';
  SMeasureOrCoefNotFoundText = 'Не са зададени всички мерни единици или коефициенти: %ProductIdentifier%';
  SProductNotSelfExistingText = 'Управляем Обект %ProductIdentifier% не е определен като (Не)Самостоятелно съществуващ';
  SProductNotConstTempText = 'Управляем Обект %ProductIdentifier% не е определен като Постоянно/Временно съществуващ';
  SProductParamMustHaveValueText = 'Всеки "присъщ" и "задължителен" параметър на управляем обект трябва да има стойност.' + SLineBreak +
                                   'Управляем Обект: "%ProductName%"   No: %ProductNo%   Параметър: "%ProductParamName%"';
  SCannotChangeProductText = 'Не може да сменяте Управляемия Обект, тъй като има неанулирани Постъпления и Тегления с него';
  SReportStoreDealWithOldDateText = 'Не можете да отчитате Постъпление/Теглене с толкова стара дата';
  SReportStoreDealWithFutDateText = 'Не можете да отчитате Постъпление/Теглене с бъдеща дата';
  SCannotReportProductText = 'Не можете да отчитате Управляем Обект, различен от плановия';
  SBeginingOrgOpNotFoundText = 'Не е намерена начална организационна операция или активен вариант на операцията с теглещото ТП за ред от Р-МОДЕл: %MllIdentifier%';
  SOpVariantNotFoundText = 'Не е намерен вариант на операция с постъпващото ТП';
  SInvalidNoAsTextText = 'Некоректен структурен номер';
  SIncorrectDatePeriodText = 'Некоректен период';
  SIncorrectIntervalText = 'Некоректен интервал';
  SFileDoesNotExistsText = 'Файлът %FileName% не съществува';
  SGetPeriodTypeNameInvalidPeriodText = 'Извикване на GetPeriodTypeName с невалидна стойност за период';
  SGetPeriodConstInvalidArgumentText = 'Извикване на GetPeriodConst с невалидна стойност за период';
  SGetPeriodValueInvalidArgumentText = 'Извикване на GetPeriodValue с невалиден аргумент';
  SGetPeriodFirstDateInvalidPeriodText = 'Извикване на GetPeriodFirstDate с невалидна стойност за период';
  SIncDateInvalidPeriodText = 'Извикване на IncDate с невалидна стойност за период';
  SGetPeriodLabelInvalidPeriodText = 'Извикване на GetPeriodLabel с невалидна стойност за период';
  SGetTimeUnitsCountIncorectPeriodText = 'Извикване на GetTimeUnitsCount с некоректно зададен период';
  SInvalidIntParamValueText = '"%Value%" не е валидна целочислена стоиност за параметъра %Object%/%Param%';
  SExecSQLErrorText = 'Записът не е извършен';
  SUnknownCompanyKindText = 'Непознат тип компания';
  SPlannedStoreDealNotCreatedText = 'Планирано Постъпление не е създадено';
  SPlannedStoreDealNotUpdatedText = 'Планираното Постъпление не е обновено';
  SPlannedStoreDealNotAnnuledText = 'Планираното Постъпление не е анулирано';
  SPlannedStoreDealNotClosedText  = 'Планираното Постъпление не е приключено';
  SCannotAnnulRPDText = 'Грешка при анулиране на доставките по настоящото РПД';
  SCannotAnnulGroupText = 'Грешка при анулиране на Групата Продукто-Доставки';
  SCannotCloseGroupText = 'Грешка при приключване на Групата Продукто-Доставки';
  SNoCurrencyRateText = 'Не е въведен курс на валутата за деня на движението';
  SNoBaseCurrencyRateText = 'Не е въведен курс на %Currency% за датата на движението';
  SStoreDealCustomKeyViolationText = 'В базата от данни вече има въведено Постъпление/Теглене с такава идентификация';
  SPlannedStoreDoesnotMatchText = 'Плановото ТП Задържащо не е същото като текущото';
  SBeginOperationNotFoundText = 'Не е намерена начална организационна операция след етап 0 от ред от МОДЕл %MllIdentifier%';
  SNoTodaySecondaryCurrencyRateText = 'Не е въведен курс за днес за вторичната валута';
  SNoEstimatedSecPriceText = 'Не е въведена себестойност на "%ProductName%" - %ProductIdentifier%';
  SNoAccountMeasureCoefText = 'Не е въведен счетоводен коефициент на "%ProductName%" - %ProductIdentifier%';
  SNotEnoughStoreQuantityText = 'Няма достатъчна наличност в ТП Задържащо "%StoreName%" от Управляем Обект "%ProductName%" Nо: %ProductIdentifier%';
  SNoCurrencyRatesText = 'Не са въведени валутни курсове за %s';
  SIncorrectModelVariantText = 'Некоректен авторизиран Вариант №%VariantNo% на Принципен МОДЕл на ред %StageNo%';
  SInvoiceRangeExhaustedText = 'Интервалът за даване на автоматични номера на фактури е изчерпан';
  SUpdateSaleShipmentFailedText = 'Грешка при обновяване на разклонението по ОПВ';
  SInvalidInvoiceNoText = 'Не можете да запишете фактура с по-голям номер и по-ранна дата от друга фактура';
  SModelExistsForSaleText = 'Не можете да промените Управляемият Обект, защото по тази продажба съществува МОДЕл';
  SHasMovementsText = 'Не можете да добавяте наследник, тъй като по ред %StageNo% има движения';
  SSmallLineDetailTechQtyText = 'Количеството по ред %s/%d е по-малко от вече предаденото';
  SRowsChangedByOtherUserText = 'Някой от избраните редове е променен от друг потребител. Обновете данните в списъка и опитайте отново';
  SDocNotFoundText = 'Няма ИИО от DNC-тип';
  SMoreThanOneDocText = 'Има повече от едно ИИО от DNC-тип';
  SLinesWithoutStagesText = 'МОДЕл-ът има редове без етапи';
  SNormalOperationsFoundText = 'МОДЕл-ът трябва да има само организационни операции';
  SNotLimitingModelText = 'Модел-а не е Активиран';
  SCheckOperationsSpecModelText = 'МОДЕл-ът не е създаден' + SLineBreak + 'Проверете дали Принципният МОДЕл е авторизиран на Операционно ниво';
  SModelNotCreatedText = 'МОДЕл-ът не е създаден';
  SNoDefaultStoreText = 'Не е въведено ТП Задържащо по подразбиране за Управляем Обект "%ProductName%" Nо: %ProductNo%';
  SExpeditionNotInsertedText = 'Експедицията не е записана';
  SExpeditionNotUpdatedText = 'Експедицията не е обновена';
  SQuickSalePSDNotInsertedText = 'Не е генерирано планирано теглене';
  SQuickSalePSDNotUpdatedText = 'Не е обновено планираното теглене';
  SQuickSaleGroupNotInsertedText = 'Не е създадена група';
  SInvalidModelText = 'МОДЕл-ът е променен. Вече не е валиден.';
  SNoProductDataText = 'Не сте въвели %ErrorData% за Управляем Обект "%ProductName%" Nо: %ProductNo%';
  SInactiveProductsText = 'Не можете да създавате МОДЕл от Принципен МОДЕл с неактивни НСЧ:' + SLineBreak + SLineBreak + '%InactiveProducts%';
  SListNotEnoughStoreQuantityText =
    'Няма достатъчна наличност за:' + SLineBreak +
    'Управляем Обект                     НОМЕР        ТП Задържащо НЕОБХ.К-ВО   НАЛ.К-ВО' + SLineBreak +
    '%NotEnoughStoreQuantityProducts%' + SMonospaced;
  SYouHaveNoRightsForThisOperationText = 'Нямате Информационни Отговорности за тази операция (%ActivityID%)';
  SYouHaveNoWorkDeptsForThisOperationText = 'Нямате зададено ТП - Обхват на Длъжност за тази операция';
  SUnknownEarningTypeText = 'Невалиден вид натовареност';
  SCannotInsertNegativeValueInLocalNoText = 'Полето ''Код'' трябва да съдържа положителна стойност';
  SNegativePresenceText = 'Отрицателна наличност (Постъпление / Теглене: %StoreDealID%; УОб: %ProductNo%)';
  SExecuteServerNotFoundText = 'Няма въведен Изпълняващ сървър, който да изпълнява генератора %GeneratorName%';
  SFreeExecuteServerNotFoundText = 'Не е намерен свободен Изпълняващ сървър за %GeneratorName%';
  SExecuteServerConnectionErrorText = 'Няма връзка с Изпълняващ сървър: %ExecuteServerName%';
  SOverlappingBudgetOrderItemsText =
    'Не може да съществуват Лимити с пресичащи се времеви интервали, съвпадащи Режим на пулс. и Статия,' + SLineBreak +
    'и с ТП Консуматори, които съвпадат или са в релация,' + SLineBreak +
    'като това от по-високо ниво е с разпределен или централизиран начин на консумиране.' + SLineBreak +
    'Конфликт с Лимит %BOIId%, времеви интервал на действие %BOIBeginDate% - %BOIWorkdays% р.д.';
  SCannotChangeSaleStoreText = 'Не можете да променяте ТП Задържащо на ОПВ с неанулирани Постъпления и Тегления';
  SIncorrectOccupationEmployeeText = 'Некоректни длъжностни назначения за служител №%EmployeeCode%';
  SRecurrentDeptWithMainOccsText = 'Не можете да задавате Пулсиращо ТП с Основни Длъжностни Назначения!';
  SIncorrectOWDEnclosureText = 'Некоректно приложение на Уст/Пулс ТП-Обхват на длъжност!';
  SCantCrateSDWithInactiveStoreText = 'Не можете да създавате Постъпление/Теглене с неактивно ТП Задържащо!';
  SCantCrateSDWithInactiveDeptText = 'Не можете да създавате Постъпление/Теглене с неактивно ТП: %DeptIdentifier%!';
  SCrossedProductStorePeriodText = 'Припокриващ ВрмИнт на Задел: %BeginDate% - %EndDate%';
  SDateTooBigText = 'Прекалено далечна дата';
  SInvalidProcessPositionsText = 'Некоректни процесни позиции във връзка с обобщаващия на Управляем Обект Nо: %ProductNo%';
  SModelIncorrectWasteForksText = 'Сумата на количествата по разклоненията за блокиране по ред от Р-МОДЕл не трябва да надвишава сумата на количествата от движенията към блокиране по реда и неговите разклонения.' + SLineBreak +
                                  'Некоректни разклонения по блокиране по следните редове:' + SLineBreak + '%LineNos%';
  SLineIncorrectWasteForksText = 'Сумата на количествата по движенията към блокиране по реда от Р-МОДЕл-а и неговите разклонения не трябва да бъде по-малка от сумата на количествата по разклоненията за блокиране!';
  SThoroughlyEngineeredExistsText = 'Вече съществува еталон в ТЙС';

  SCannotDeleteStoreDealNotStornoText = 'Неанулирани Постъпления и Тегления не могат да бъдат изтривани';
  SCannotDeleteOperationMovementNotStornoText = 'Неанулирани Операционни Движения по Р-МОДЕл-и не могат да бъдат изтривани';
  SCrossedOccShiftPeriodText = 'Припокриващ ВрмИнт на Смяна на Длъжност: %BeginDate% - %EndDate%';
  SCrossedOccEmployeePeriodText = 'Припокриващ ВрмИнт на Длъжностно Назначение: %BeginDate% - %EndDate%';
  SIncorrectOccupationPeriodText = 'ВрмИнт на Длъжностните Назначения излизат извън ВрмИнт на Длъжността: %BeginDate% - %EndDate%';
  SIncorrectOccEmployeePeriodText = 'ВрмИнт на Длъжностното Назначение излиза извън ВрмИнт на Длъжността: %BeginDate% - %EndDate%';
  SIncorrectDeptParentPeriodText = 'ВрмИнт на ТП излиза извън ВрмИнт на ТП от по-високо ниво: %BeginDate% - %EndDate%';
  SIncorrectDeptChildrenPeriodText = 'ВрмИнт на ТП от по-ниско ниво излизат извън ВрмИнт на ТП: %BeginDate% - %EndDate%';
  SIncorrectDeptOccPeriodText = 'ВрмИнт на Длъжностите излизат извън ВрмИнт на ТП: %BeginDate% - %EndDate%';
  SIncorrectOccDeptPeriodText = 'ВрмИнт на Длъжността излиза извън ВрмИнт на ТП: %BeginDate% - %EndDate%';
  SCrossedShCycleBreakPeriodText = 'Пресичащ се ВрмИнт на Почивка: %BeginTime% - %EndTime%';
  STooLargePrintTreeText = 'Избраното дърво е прекалено голямо!';
  SCannotDeleteEmpMovementNotStornoText = 'Неанулирани Движения на Служители не могат да бъдат изтривани';
  SCrossedEamDayAbsencePeriodText = 'Не можете да задавате повече от едно целодневно отсъствие!';
  SCannotDeleteEmployeeDisciplineEventNotStornoText = 'Неанулирани Дисциплинарни Събития не могат да бъдат изтривани';
  SSDIncorrectBOIOConsumerDeptText = 'Неправилно ТП спрямо ТП Консуматор!';
  SConsumerDeptIsNotStoreText = 'ТП Пряк Консуматор трябва да е ТП Задържащо за да генерирате насрещно Планово постъпление';
  SCrossedProfessionPeriodText = 'Припокриващ ВрмИнт на Процесна Роля: %BeginDate% - %EndDate%';
  SCrossedOccSalaryPeriodText = 'Припокриващ ВрмИнт на Стойностна характеристика на Длъжност: %BeginDate% - %EndDate%';
  SIncorrectDeptPerDeptPeriodText = 'ВрмИнт на УМ ТП излизат извън ВрмИнт на ТП: %BeginDate% - %EndDate%';
  SIncorrectDeptDeptPerPeriodText = 'ВрмИнт на УМ ТП излиза извън ВрмИнт на ТП: %BeginDate% - %EndDate%';
  SCrossedEamShiftChangePeriodText = 'Не можете да задавате на ден повече от една замяна за смяна!';
  SAnnuledPSDWithSDNotAllowedText = 'Не е допустимо анулирано планово постъпление/теглене с неанулирани постъпления/тегления!';
  SCrossedParRelPeriodPeriodText = 'Припокриващ ВрмИнт: %BeginDate% - %EndDate%';
  SCrossedProductPeriodText = 'Припокриващ ВрмИнт: %BeginDate% - %EndDate%';
  SIncorrectCommonProductPerText = 'Некоректен ВрмИнт спрямо УОб Обобщаващ: %BeginDate% - %EndDate%';
  SIncorrectJoinedProductPerText = 'Некоректен ВрмИнт спрямо УОб Приобщени: %BeginDate% - %EndDate%';
  SCrossedParRelProductPeriodText = 'Припокриващ ВрмИнт: %BeginDate% - %EndDate%';
  SIncorrectParRelProdPeriodText = 'Некоректен ВрмИнт спрямо УМ Пар и УМ УОб/УМ ФОб/УМ РИСС: %BeginDate% - %EndDate%';
  SOTPExEventsMustBeAnnuledText = 'Не може да се анулира Проект, към който имат връзка неанулирани Недопустими Отклонения';
  SCrossedDiscEventTypePeriodText = 'Припокриващ ВрмИнт: %BeginDate% - %EndDate%';

  SExceptEventsMustBeAnnuledText = 'Недопустимите Отклонения трябва да бъдат анулирани';
  SExceptEventHasUnnormAttacksText = 'Съществуват ненормализирани Атаки';
  SExceptEventHasUnclosedTasksText = 'Съществуват неприключени Пакети от Мерки';
  SEEMustNotBeResolvedText = 'Недопустимото Отклонение не може да бъде с Потвърждение за Преустановено Действие';
  SEEHasUnannuledTasksText = 'Съществуват неанулирани Пакети от Мерки';
  SExceptEventMustBeAnnuledText = 'Недопустимото Отклонение трябва да бъде анулирано';
  SExceptEventDamageQtyIsLessText = 'Атакуваното количество не може да бъде повече от поразеното количество';
  SEEDHasAttacksWithGreaterQtyText = 'Съществуват Атаки с по голямо атакувано количество от поразеното количество';
  SCrossedDeptBPPeriodText = 'Припокриващ ВрмИнт на Процес: %BeginDate% - %EndDate%';
  SOEBPStatusDateOutOfRangeText = 'Дата на Статус излиза извън ВрмИнт на Длъжностното Назначение';
  SCantChgRfmlPartnerOrAccountText = 'Не можете да променяте ТП - Финансово по Ред от Р-МОДЕл - Финансов, за който е създадена Групова Заявка за постъпления или тегления';
  SCantDeleteFinStoreText = 'Не можете да изтриете ТП - Финансово, за което има планови или отчетни постъпления и тегления!';
  SCannotDeleteEENotAnnulText = 'Неанулирани Недопустими Отклонения не могат да бъдат изтривани';
  SExceptEventsIncorrectQtyText = 'Количеството не може да бъде по-голямо от количеството в ID ОП';
  SEEWithIncorrectQtyExistsText = 'Съществуват Недопустими Отклонения с по-голямо количество УОб';
  ///////SMaxConcurrentConnectionsReachedText = 'Не съществува именован лиценз за този компютър и е достигнат максималният брой конкурентни връзки (%MaxActiveConnections%)';
  ///////SMaxNamedConnectionsForComputerReachedText = 'Достигнат е максималният брой именовани връзки за този компютър (%MaxActiveConnections%)';
  ///////SMaxNamedConnectionsReachedText = 'Достигнат е максималният брой именовани връзки (%MaxActiveConnections%)';
  ///////SMaxInternalConnectionsReachedText = 'Достигнат е максималният брой сервизни връзки (%MaxActiveConnections%)';
  SCannotLoginToEarlierDateThanText = 'Не може да зададете дата по-ранна от %EarliestPossibleLoginDate%';
  SSaleForOTPIsIncorrectText = 'ОПВ, който е избран в Проект, не може да бъде за различен от избрания в Проекта УОб';
  SOTPMustBeAnnuledText = 'ОПВ, който е избран в Проект, не може да бъде анулиран преди да бъде анулиран Проекта';

  SPOHasUnclosedDescendantsText = 'ОПВ има съпътстващи ОПВ, които са неприключени и неанулирани';
  SParentPOIsClosedText = 'Основният ОПВ е приключен';
  SPOHasUnannuledDescendantsText = 'ОПВ има неанулирани съпътстващи ОПВ';
  SParentPOIsAnnuledText = 'Основният ОПВ е анулиран';
  SEOHasUnclosedDescendantsText = 'ОПИР има съпътстващи ОПИР, които са неприключени и неанулирани';
  SParentEOIsClosedText = 'Основният ОПИР е приключен';
  SEOHasUnannuledDescendantsText = 'ОПИР има неанулирани съпътстващи ОПИР';
  SParentEOIsAnnuledText = 'Основният ОПИР е анулиран';
  SBOIOConsumerMustMatchText = 'ТП - Пряк Консуматор на Ордера трябва да съвпада с ТП - Консуматор на Лимит';
  SBOIOConsumerMustDescendText = 'ТП - Пряк Консуматор на Ордера трябва да съвпада или да е наследник на ТП - Консуматор на Лимит';
  SDifferentConsumerDeptExistsText = 'Съществува Ордер с ТП - Пряк Консуматор различен от ТП - Консуматор на Лимит';
  SNotDescendantConsDeptExistsText = 'Съществува Ордер с ТП - Пряк Консуматор различен или не наследник на ТП - Консуматор на Лимит';

  SDptIncorrectPrcActionsExistText = 'Съществува Познавателна Функция с Времеви Интервал, който не попада изцяло във Времевия Интервал на ТП';
  SOccIncorrectPrcActionsExistText = 'Съществува Познавателна Функция с Времеви Интервал, който не попада изцяло във Времевия Интервал на Длъжност';

  SOEPBAStatusDateOutOfRangeText = 'Дата на Статус на усвояване на ПФ излиза извън ВрмИнт на Длъжностното Назначение';
  SOEPCAStatusDateOutOfRangeText = 'Дата на Статус на усвояване на ПФ излиза извън ВрмИнт на Длъжностното Назначение';

  SConcreteToStrategicStateText = 'Не може да съществува Приобщен УОб към Стратегически Обобщаващ УОб';
  SAccessBannedText = 'Достъпът до базата е временно спрян.' + SLineBreak + '%BanMessage%';
  SConnectionLockedByServerText = 'Връзката е заключена поради регистриране от друг компютър: %LockMessage%';
  SConnectionClosedByServerText = 'Връзката е прекратена.'  + SLineBreak + '%Message%';

  SCannotOverrideContextDateOnProductionDbText = 'Не може да се регистрирате към дата в режим за редактиране в тази база от данни';
  SFieldMustBeGreaterThanText = 'Стойността на полето ''%FieldName%'' трябва да бъде по-голяма от %Value%';
  SInvoiceInconsistentSSHText = 'ОПП "%ShipmentIdentifier%" има различен "Клиент", "УОб", "Цена" или "Количество" от записаните в ред от фактура.';
  SDeptMustHaveCapacityGeneratorText = 'ОпТП трябва да има Капацитетообразуващ Режим на Организиране';

  SErrorInMultiDecisionForDeliveryProjectText = 'ОДД %DeliveryId%: %ErrorMessage%';
  SPSDSinglePriceNotSetText = 'Не е зададена цена за придобиване';
  SEEMustBeSingleResolvableText = 'Не може да задавате Вид Превантивен на Пакет от Мерки по Недопустимо Отклонение, което не е отбелязано като ПБП-Е';
  SEEHasSingleResolveTasksText = 'По Недопустимо Отклонение, което не е отбелязано като ПБП-Е, не може да има Пакети от Мерки от Вид Превантивен';
  SExceptEventHasDamagesText = 'По Констативно Недопустимото Отклонение не може да има Верижни Поражения';
  SExceptEventHasTasksText = 'По Констативно Недопустимото Отклонение не може да има Пакети от Мерки';
  SAccessDeniedText = 'Достъпът на този потребител и/или IP адрес не е разрешен';
  SNewComputerLoginNotAllowedText = 'Не е възможно регистриране от различен компютър и/или Windows сесия след по-малко от %TimeoutMinutes% минути.' + SLineBreak +
                                    'Последно регистриране от %ComputerName% в %LastLoginTime% часа';
  SCantAddSpecWhenInlineModelsText = 'Не можете да създавате П-МОДЕл за УОб, който в друг П-МОДЕл е КСЧ различна от НСЧ';
  SInvalidInlineModelText = 'Не можете да задавате ред без НСЧ или с различни НСЧ и КСЧ с П-МОДЕл.' + SLineBreak +
                            'Това е възможно само с добавяне на П-МОДЕл.' + SLineBreak +
                            'Управляем Обект No: %ProductNo%, Ред на П-МОДЕл: %NoAsText%';

  SUserNotAllowedToDBText = 'Нямате достъп до тази база от данни. За получаване на достъп се обърнете към администратора на базата от данни';

  SUserAndEmployeeNamesDifferText = 'Имената на Потребителя и Служителя не съвпадат';
  SParamsExportDataTooLongText = 'Данните за експорт на параметрите са прекалено големи! УОб No: %ProductNo%';

resourcestring  // textove na kluchovi dumi
  SAccountMeasureKeywordText = 'счетоводна мерна единица';
  STechMeasureKeywordText = 'технологична мерна единица';
  SEstimatedSecondaryPriceKeywordText = 'себестойност';

implementation

end.
