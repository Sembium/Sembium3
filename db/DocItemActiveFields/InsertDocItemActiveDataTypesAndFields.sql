/term=;

delete DI_ACTIVE_DATA_TYPE_FIELDS;
delete DI_ACTIVE_DATA_TYPES;

/include _InsertDocItemActiveDataType.sql 2 integer ""

/include _InsertDocItemActiveDataType.sql 3 string ""

/include _InsertDocItemActiveDataType.sql 4 boolean ""

/include _InsertDocItemActiveDataType.sql 5 float ""

/include _InsertDocItemActiveDataType.sql 6 TDate ""

/include _InsertDocItemActiveDataField.sql 6 1 1 InDefaultFormat string "Във формат по подразбиране" 1

/include _InsertDocItemActiveDataField.sql 6 2 2 InWeekFormat string "В седмичен формат" 1

/include _InsertDocItemActiveDataField.sql 6 3 3 InMonthFormat string "В месечен формат" 1

/include _InsertDocItemActiveDataType.sql 7 TDateInterval ""

/include _InsertDocItemActiveDataField.sql 7 1 1 BeginDate TDate "Начална дата" 1

/include _InsertDocItemActiveDataField.sql 7 2 2 EndDate TDate "Крайна дата" 1

/include _InsertDocItemActiveDataField.sql 7 3 3 Days integer "Календарни дни" 1

/include _InsertDocItemActiveDataField.sql 7 4 4 Workdays integer "Работни дни" 1

/include _InsertDocItemActiveDataType.sql 8 TTime ""

/include _InsertDocItemActiveDataField.sql 8 1 1 InDefaultFormat string "Във формат по подразбиране" 1

/include _InsertDocItemActiveDataType.sql 9 TTimeInterval ""

/include _InsertDocItemActiveDataField.sql 9 1 1 BeginTime TTime "Начален час" 1

/include _InsertDocItemActiveDataField.sql 9 2 2 EndTime TTime "Краен час" 1

/include _InsertDocItemActiveDataType.sql 10 TDateTime ""

/include _InsertDocItemActiveDataField.sql 10 1 1 Date TDate "Дата" 1

/include _InsertDocItemActiveDataField.sql 10 2 2 Time TTime "Час" 1

/include _InsertDocItemActiveDataType.sql 11 TTreeNode ""

/include _InsertDocItemActiveDataField.sql 11 1 1 Name string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 11 2 2 IsGroup boolean "Е група" 1

/include _InsertDocItemActiveDataType.sql 12 TMeasure ""

/include _InsertDocItemActiveDataField.sql 12 1 1 MeasureAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataField.sql 12 2 2 MeasureName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 13 TSelfExistentStatus ""

/include _InsertDocItemActiveDataField.sql 13 1 1 SelfExistentStatusName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 14 TTransientStatus ""

/include _InsertDocItemActiveDataField.sql 14 1 1 TransientStatusName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 15 TPriority ""

/include _InsertDocItemActiveDataField.sql 15 1 1 PriorityNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 15 2 2 PriorityName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 15 3 3 PriorityColor integer "Цвят" 1

/include _InsertDocItemActiveDataField.sql 15 4 4 PriorityBackgroundColor integer "Фон" 1

/include _InsertDocItemActiveDataType.sql 16 TProductOrigin ""

/include _InsertDocItemActiveDataField.sql 16 1 1 ProductOriginName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 16 2 2 ProductOriginAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 17 TBOIOrderType ""

/include _InsertDocItemActiveDataField.sql 17 1 1 BOIOrderTypeName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 17 2 2 BOIOrderTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 18 TProduct "TTreeNode"

/include _InsertDocItemActiveDataField.sql 18 1 1 ProductNo integer "id цифров" 1

/include _InsertDocItemActiveDataField.sql 18 2 2 WorkMeasure TMeasure "Работна мерна единица" 1

/include _InsertDocItemActiveDataField.sql 18 3 3 AccountMeasure TMeasure "Счетоводна мерна единица" 1

/include _InsertDocItemActiveDataField.sql 18 4 4 AccountMeasureCoef float "Коефициент на счетоводна мерна единица" 1

/include _InsertDocItemActiveDataField.sql 18 5 5 TechMeasure TMeasure "Технологична мерна единица" 1

/include _InsertDocItemActiveDataField.sql 18 6 6 TechMeasureCoef float "Коефициент на технологична мерна единица" 1

/include _InsertDocItemActiveDataField.sql 18 7 7 TransportMeasure TMeasure "Транспортна мерна единица" 1

/include _InsertDocItemActiveDataField.sql 18 8 8 TransportMeasureCoef float "Коефициент на транспортна мерна единица" 1

/include _InsertDocItemActiveDataField.sql 18 9 9 PartnerProductNames string "Означения от партньори" 1

/include _InsertDocItemActiveDataField.sql 18 10 10 IsVatFree boolean "Освободен от ДДС" 1

/include _InsertDocItemActiveDataField.sql 18 11 11 Notes string "Бележки" 1

/include _InsertDocItemActiveDataField.sql 18 12 12 IsInactive boolean "Неактивен" 1

/include _InsertDocItemActiveDataField.sql 18 13 13 SelfExistentStatus TSelfExistentStatus "Самостоятелно съществуване" 1

/include _InsertDocItemActiveDataField.sql 18 14 14 IsProductionProduct boolean "Каскадно обезпечаван" 1

/include _InsertDocItemActiveDataField.sql 18 15 15 TransientStatus TTransientStatus "Съществуване във времето" 1

/include _InsertDocItemActiveDataField.sql 18 16 16 WorkdaysToExist integer "Работни дни на съществуване във времето" 1

/include _InsertDocItemActiveDataField.sql 18 17 17 IsUsedBySales boolean "Е ползван от Прд" 1

/include _InsertDocItemActiveDataField.sql 18 18 18 IsUsedBySaleProduction boolean "Е ползван от ВОПрд" 1

/include _InsertDocItemActiveDataField.sql 18 19 19 IsUsedByEnvironmentProduction boolean "Е ползван от ВОЕлС" 1

/include _InsertDocItemActiveDataField.sql 18 20 20 IsProvidedByDeliveries boolean "Е обезпечаван от Дст" 1

/include _InsertDocItemActiveDataField.sql 18 21 21 IsProvidedBySaleProduction boolean "Е обезпечаван от ВОПрд" 1

/include _InsertDocItemActiveDataField.sql 18 22 22 IsProvidedByEnvironmentProduction boolean "Е обезпечаван от ВОЕлС" 1

/include _InsertDocItemActiveDataField.sql 18 23 23 UsedBySalesPriority TPriority "Ползван от Прд: приоритет" 1

/include _InsertDocItemActiveDataField.sql 18 24 24 UsedBySaleProductionPriority TPriority "Ползван от ВОПрд: приоритет" 1

/include _InsertDocItemActiveDataField.sql 18 25 25 UsedByEnvironmentProductionPriority TPriority "Ползван от ВОЕлС: приоритет" 1

/include _InsertDocItemActiveDataField.sql 18 26 26 ProvidedByDeliveriesPriority TPriority "Обезпечаван от Дст: приоритет" 1

/include _InsertDocItemActiveDataField.sql 18 27 27 ProvidedBySaleProductionPriority TPriority "Обезпечаван от ВОПрд: приоритет" 1

/include _InsertDocItemActiveDataField.sql 18 28 28 ProvidedByEnvironmentProductionPriority TPriority "Обезпечаван от ВОЕлС: приоритет" 1

/include _InsertDocItemActiveDataField.sql 18 29 29 ProductOrigin TProductOrigin "Уникалност на Управление на Съществуването" 1

/include _InsertDocItemActiveDataField.sql 18 30 30 BOIOrderType TBOIOrderType "Статия" 1

/include _InsertDocItemActiveDataType.sql 19 TProductEx "TProduct"

/include _InsertDocItemActiveDataField.sql 19 1 1 Material TProduct "НСЧ" 1

/include _InsertDocItemActiveDataField.sql 19 2 2 MaterialTechQuantity float "Технологично количество НСЧ" 1

/include _InsertDocItemActiveDataType.sql 20 TDept "TTreeNode"

/include _InsertDocItemActiveDataField.sql 20 1 1 DeptIdentifier string "Код" 1

/include _InsertDocItemActiveDataField.sql 20 2 2 BeginDate TDate "ВрмИнт - Начало" 1

/include _InsertDocItemActiveDataField.sql 20 3 3 EndDate TDate "ВрмИнт - Край" 1

/include _InsertDocItemActiveDataField.sql 20 4 4 IsBranch boolean "Е ТП Главно" 1

/include _InsertDocItemActiveDataField.sql 20 5 5 IsStore boolean "Е ТП Задържащо" 1

/include _InsertDocItemActiveDataField.sql 20 6 6 IsFinancialStore boolean "Е Финансово ТП Задържащо" 1

/include _InsertDocItemActiveDataField.sql 20 7 7 IsExternal boolean "Е Външен" 1

/include _InsertDocItemActiveDataField.sql 20 8 8 IsRecurrent boolean "Е Пулсиращ" 1

/include _InsertDocItemActiveDataField.sql 20 9 9 Product TProduct "ОпМ" 1

/include _InsertDocItemActiveDataType.sql 21 TBaseGroup ""

/include _InsertDocItemActiveDataField.sql 21 1 1 GroupProduct TProduct "Род КСЧ" 1

/include _InsertDocItemActiveDataField.sql 21 2 2 GroupDept TDept "ЕтТП" 1

/include _InsertDocItemActiveDataField.sql 21 3 3 BaseGroupNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 21 4 4 BaseGroupName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 22 TCompanyType ""

/include _InsertDocItemActiveDataField.sql 22 1 1 CompanyTypeName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 22 2 2 CompanyTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 23 TCountry ""

/include _InsertDocItemActiveDataField.sql 23 1 1 CountryAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataField.sql 23 2 2 CountryName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 24 TCraftType ""

/include _InsertDocItemActiveDataField.sql 24 1 1 CraftTypeNo integer "Код" 1

/include _InsertDocItemActiveDataField.sql 24 2 2 CraftTypeName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 25 TCraft ""

/include _InsertDocItemActiveDataField.sql 25 1 1 CraftNo integer "Код" 1

/include _InsertDocItemActiveDataField.sql 25 2 2 CraftName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 25 3 3 CraftType TCraftType "Класификационна Група Професии" 1

/include _InsertDocItemActiveDataType.sql 26 TCurrency ""

/include _InsertDocItemActiveDataField.sql 26 1 1 CurrencyName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 26 2 2 CurrencyAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 27 TPartnerClass ""

/include _InsertDocItemActiveDataField.sql 27 1 1 PartnerClassName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 27 2 2 PartnerClassAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 28 TLanguage ""

/include _InsertDocItemActiveDataField.sql 28 1 1 LanguageName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 29 TEducation ""

/include _InsertDocItemActiveDataField.sql 29 1 1 EducationName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 29 2 2 EducationShortName string "Кратко наименование" 1

/include _InsertDocItemActiveDataType.sql 30 TPartner ""

/include _InsertDocItemActiveDataField.sql 30 1 1 PartnerNo integer "Код" 1

/include _InsertDocItemActiveDataField.sql 30 2 2 PartnerClass TPartnerClass "Клас" 1

/include _InsertDocItemActiveDataField.sql 30 3 3 PartnerShortName string "Кратко наименование" 1

/include _InsertDocItemActiveDataField.sql 30 4 4 PartnerFullName string "Пълно наименование" 1

/include _InsertDocItemActiveDataField.sql 30 5 5 Country TCountry "Държава" 1

/include _InsertDocItemActiveDataField.sql 30 6 6 State string "Област" 1

/include _InsertDocItemActiveDataField.sql 30 7 7 Region string "Община" 1

/include _InsertDocItemActiveDataField.sql 30 8 8 City string "Град" 1

/include _InsertDocItemActiveDataField.sql 30 9 9 Zip string "Пощенски код" 1

/include _InsertDocItemActiveDataField.sql 30 10 10 Address string "Адрес" 1

/include _InsertDocItemActiveDataField.sql 30 11 11 Language TLanguage "Език за кореспонденция" 1

/include _InsertDocItemActiveDataField.sql 30 12 12 CompanyName string "ИП: Наименование" 1

/include _InsertDocItemActiveDataField.sql 30 13 13 CompanyType TCompanyType "ИП: Тип" 1

/include _InsertDocItemActiveDataField.sql 30 14 14 CompanyTaxNo integer "ИП: Данъчен номер" 1

/include _InsertDocItemActiveDataField.sql 30 15 15 CompanyBulstat string "ИП: Булстат" 1

/include _InsertDocItemActiveDataField.sql 30 16 16 CompanyIsVatRegistered boolean "ИП: Регистриран по ДДС" 1

/include _InsertDocItemActiveDataField.sql 30 17 17 PersonFirstName string "СИЧИ: Име" 1

/include _InsertDocItemActiveDataField.sql 30 18 18 PersonMiddleName string "СИЧИ: Презиме" 1

/include _InsertDocItemActiveDataField.sql 30 19 19 PersonLastName string "СИЧИ: Фамилия" 1

/include _InsertDocItemActiveDataField.sql 30 20 20 PersonAbbrev string "СИЧИ: Абревиатура" 1

/include _InsertDocItemActiveDataField.sql 30 21 21 PersonEGN string "СИЧИ: ЕГН" 1

/include _InsertDocItemActiveDataField.sql 30 22 22 PersonBirthDate TDate "СИЧИ: Дата на раждане" 1

/include _InsertDocItemActiveDataField.sql 30 23 23 PersonEducation TEducation "СИЧИ: Образование" 1

/include _InsertDocItemActiveDataType.sql 31 TEmployeeDisciplineRating ""

/include _InsertDocItemActiveDataField.sql 31 1 1 NegativeDisciplinePoints integer "Отрицателни точки" 1

/include _InsertDocItemActiveDataField.sql 31 2 2 PositiveDisciplinePoints integer "Положителни точки" 1

/include _InsertDocItemActiveDataType.sql 32 TEmployee "TPartner"

/include _InsertDocItemActiveDataField.sql 32 1 1 EmployeeProfessions string "Заявени Способности за Процесни Роли" 1

/include _InsertDocItemActiveDataField.sql 32 2 2 CurrentDisciplineRating TEmployeeDisciplineRating "Дисциплинарен статус (текущ)" 1

/include _InsertDocItemActiveDataType.sql 33 TGlobals ""

/include _InsertDocItemActiveDataField.sql 33 1 1 BaseCurrency TCurrency "Основна Валута" 1

/include _InsertDocItemActiveDataField.sql 33 2 2 SecondaryCurrency TCurrency "Вторична Валута" 1

/include _InsertDocItemActiveDataType.sql 34 TDocItem ""

/include _InsertDocItemActiveDataField.sql 34 1 1 DocItemNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 34 2 2 DocItemTypeName string "Вид" 1

/include _InsertDocItemActiveDataField.sql 34 3 3 DocItemName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 34 4 4 DevelopEmployee TEmployee "Разработил" 1

/include _InsertDocItemActiveDataField.sql 34 5 5 DevelopDateTime TDateTime "Дата и час на разработване" 1

/include _InsertDocItemActiveDataField.sql 34 6 6 AuthorizeEmployee TEmployee "Авторизирал" 1

/include _InsertDocItemActiveDataField.sql 34 7 7 AuthorizeDateTime TDateTime "Дата и час на авторизиране" 1

/include _InsertDocItemActiveDataField.sql 34 8 8 ApproveEmployee TEmployee "Утвърдил" 1

/include _InsertDocItemActiveDataField.sql 34 9 9 ApproveDateTime TDateTime "Дата и час на утвърждаване" 1

/include _InsertDocItemActiveDataField.sql 34 10 10 Notes string "Бележки" 1

/include _InsertDocItemActiveDataField.sql 34 11 11 IsInactive boolean "Пасивен" 1

/include _InsertDocItemActiveDataType.sql 35 TDocItems ""

/include _InsertDocItemActiveDataField.sql 35 1 1 DocItem TDocItem "ИИО" 1

/include _InsertDocItemActiveDataType.sql 36 TDoc ""

/include _InsertDocItemActiveDataField.sql 36 1 1 DocEmptinessRequirementName string "МИИО необходимост" 1

/include _InsertDocItemActiveDataField.sql 36 2 2 IsComplete boolean "Крайно определено" 1

/include _InsertDocItemActiveDataField.sql 36 3 3 DocItems TDocItems "ИИО-та" 1

/include _InsertDocItemActiveDataType.sql 1 TBaseObjectDocItem ""

/include _InsertDocItemActiveDataField.sql 1 1 1 Doc TDoc "МИИО" 1

/include _InsertDocItemActiveDataField.sql 1 2 2 DocItem TDocItem "ИИО" 1

/include _InsertDocItemActiveDataField.sql 1 3 3 Globals TGlobals "Глобални данни" 1

/include _InsertDocItemActiveDataType.sql 37 TEngineeringOrderType ""

/include _InsertDocItemActiveDataField.sql 37 1 1 EngineeringOrderTypeName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 37 2 2 EngineeringOrderTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 38 TProductionOrderBaseType ""

/include _InsertDocItemActiveDataField.sql 38 1 1 ProductionOrderBaseTypeName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 38 2 2 ProductionOrderBaseTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 39 TProductionOrderType ""

/include _InsertDocItemActiveDataField.sql 39 1 1 ProductionOrderTypeName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 39 2 2 ProductionOrderTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataField.sql 39 3 3 ProductionOrderBaseType TProductionOrderBaseType "Базов тип" 1

/include _InsertDocItemActiveDataType.sql 40 TEngineeringOrder ""

/include _InsertDocItemActiveDataField.sql 40 1 1 EngineeringOrderBranch TDept "ТП Главно" 1

/include _InsertDocItemActiveDataField.sql 40 2 2 EngineeringOrderNo integer "ОПИР No" 1

/include _InsertDocItemActiveDataField.sql 40 3 3 ProductionOrderType TProductionOrderType "Процес" 1

/include _InsertDocItemActiveDataField.sql 40 4 4 EngineeringOrderType TEngineeringOrderType "Вид" 1

/include _InsertDocItemActiveDataField.sql 40 5 5 Priority TPriority "Приоритет" 1

/include _InsertDocItemActiveDataField.sql 40 6 6 OrderDept TDept "ТП Поръчител" 1

/include _InsertDocItemActiveDataField.sql 40 7 7 Product TProduct "Управляем Обект" 1

/include _InsertDocItemActiveDataField.sql 40 8 8 ThoroughlyEngineeredProduct TProduct "Управляем Обект Еталон" 1

/include _InsertDocItemActiveDataField.sql 40 9 9 EngineeringDept TDept "ТП Реализатор" 1

/include _InsertDocItemActiveDataField.sql 40 10 10 EngineeringEmployee TEmployee "Инженер МОДЕл-иер" 1

/include _InsertDocItemActiveDataField.sql 40 11 11 EngineeringPlanDateInterval TDateInterval "Планов времеви интервал на ОПИР" 1

/include _InsertDocItemActiveDataField.sql 40 12 12 ActivateEmployee TEmployee "Активирал" 1

/include _InsertDocItemActiveDataField.sql 40 13 13 ActivateDateTime TDateTime "Дата и час на активиране" 1

/include _InsertDocItemActiveDataField.sql 40 14 14 CloseEmployee TEmployee "Приключил" 1

/include _InsertDocItemActiveDataField.sql 40 15 15 CloseDateTime TDateTime "Дата и час на приключване" 1

/include _InsertDocItemActiveDataField.sql 40 16 16 AnnulEmployee TEmployee "Анулирал" 1

/include _InsertDocItemActiveDataField.sql 40 17 17 AnnulDateTime TDateTime "Дата и час на анулиране" 1

/include _InsertDocItemActiveDataField.sql 40 18 18 CreateEmployee TEmployee "Създал" 1

/include _InsertDocItemActiveDataField.sql 40 19 19 CreateDateTime TDateTime "Дата и час на създаване" 1

/include _InsertDocItemActiveDataField.sql 40 20 20 ChangeEmployee TEmployee "Променил" 1

/include _InsertDocItemActiveDataField.sql 40 21 21 ChangeDateTime TDateTime "Дата и час на промяна" 1

/include _InsertDocItemActiveDataField.sql 40 22 22 ChangeCount integer "Брой промени" 1

/include _InsertDocItemActiveDataType.sql 41 TModel ""

/include _InsertDocItemActiveDataField.sql 41 1 1 Identifier string "Идентификатор" 1

/include _InsertDocItemActiveDataType.sql 42 TModelLine ""

/include _InsertDocItemActiveDataField.sql 42 1 1 NoAsText string "Номер" 1

/include _InsertDocItemActiveDataField.sql 42 2 2 ForkNo integer "Рк" 1

/include _InsertDocItemActiveDataField.sql 42 3 3 Detail TProduct "КСЧ" 1

/include _InsertDocItemActiveDataField.sql 42 4 4 DetailTechQuantity float "Структурно технологично количество КСЧ" 1

/include _InsertDocItemActiveDataField.sql 42 5 5 LineDetailTechQuantity float "Общо технологично количество КСЧ" 1

/include _InsertDocItemActiveDataField.sql 42 6 6 Notes string "Бележки" 1

/include _InsertDocItemActiveDataField.sql 42 7 7 Material TProduct "НСЧ" 1

/include _InsertDocItemActiveDataField.sql 42 8 8 MaterialTechQuantity float "Технологично количество НСЧ за единица КСЧ" 1

/include _InsertDocItemActiveDataField.sql 42 9 9 IsForSingleUse boolean "Без връщане" 1

/include _InsertDocItemActiveDataField.sql 42 10 10 ConstructionNotes string "Бележки по вмъкване" 1

/include _InsertDocItemActiveDataField.sql 42 11 11 IsComplete boolean "Структурно съгласуван" 1

/include _InsertDocItemActiveDataField.sql 42 12 12 Model TModel "МОДЕл" 1

/include _InsertDocItemActiveDataType.sql 43 TModelStage ""

/include _InsertDocItemActiveDataField.sql 43 1 1 StageNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 43 2 2 StageDept TDept "ЕтТП" 1

/include _InsertDocItemActiveDataField.sql 43 3 3 TreatmentWorkdays integer "Време за изпълниние (раб. дни)" 1

/include _InsertDocItemActiveDataField.sql 43 4 4 OutgoingWorkdays integer "Време за изход (раб. дни)" 1

/include _InsertDocItemActiveDataField.sql 43 5 5 IsAutoMovement boolean "Автоматично движение" 1

/include _InsertDocItemActiveDataField.sql 43 6 6 ExternalWorkPrice float "Обобщена стойност на изпълнение на Етап във Външно ТП" 1

/include _InsertDocItemActiveDataField.sql 43 7 7 ModelLine TModelLine "Ред от МОДЕл" 1

/include _InsertDocItemActiveDataType.sql 44 TProfession ""

/include _InsertDocItemActiveDataField.sql 44 1 1 ProfessionName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 44 2 2 HourPrice float "ВЕЦ (BGL/час)" 1

/include _InsertDocItemActiveDataType.sql 45 TOperationType ""

/include _InsertDocItemActiveDataField.sql 45 1 1 OperationTypeName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 45 2 2 OperationTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 46 TModelOperation ""

/include _InsertDocItemActiveDataField.sql 46 1 1 OperationNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 46 2 2 OperationVariantNo integer "Вариант No" 1

/include _InsertDocItemActiveDataField.sql 46 3 3 OperationType TOperationType "Вид" 1

/include _InsertDocItemActiveDataField.sql 46 4 4 OperationDept TDept "ОпТП" 1

/include _InsertDocItemActiveDataField.sql 46 5 5 Profession TProfession "Изпълнение: Подготвен оператор" 1

/include _InsertDocItemActiveDataField.sql 46 6 6 EffortCoef float "Изпълнение: Коеф. Инт." 1

/include _InsertDocItemActiveDataField.sql 46 7 7 HourTechQuantity float "Изпълнение: Изходяща производителност (к-во/час)" 1

/include _InsertDocItemActiveDataField.sql 46 8 8 SetupProfession TProfession "Настройка: Подготвен оператор" 1

/include _InsertDocItemActiveDataField.sql 46 9 9 SetupEffortCoef float "Настройка: Коеф. Инт." 1

/include _InsertDocItemActiveDataField.sql 46 10 10 SetupHourTechQuantity float "Настройка: Изходяща производителност (к-во/час)" 1

/include _InsertDocItemActiveDataField.sql 46 11 11 ProgramToolProduct TProduct "ИКП" 1

/include _InsertDocItemActiveDataField.sql 46 12 12 SpecificToolProduct TProduct "ИКС" 1

/include _InsertDocItemActiveDataField.sql 46 13 13 SpecificToolDetailTechQuantity float "ИКС: Количество за единица КСЧ" 1

/include _InsertDocItemActiveDataField.sql 46 14 14 TypicalToolProduct TProduct "ИКТ" 1

/include _InsertDocItemActiveDataField.sql 46 15 15 TypicalToolDetailTechQuantity float "ИКТ: Количество за единица КСЧ" 1

/include _InsertDocItemActiveDataField.sql 46 16 16 TreatmentBeginWorkdayNo integer "Начален ден от етапа" 1

/include _InsertDocItemActiveDataField.sql 46 17 17 TreatmentWorkdays integer "Продължителност (дни)" 1

/include _InsertDocItemActiveDataField.sql 46 18 18 HasSpecialControl boolean "Специализиран Контрол след Операцията" 1

/include _InsertDocItemActiveDataField.sql 46 19 19 Notes string "Бележки" 1

/include _InsertDocItemActiveDataField.sql 46 20 20 SetupCount integer "Брой настройки" 1

/include _InsertDocItemActiveDataField.sql 46 21 21 ModelStage TModelStage "Етап" 1

/include _InsertDocItemActiveDataType.sql 47 TShift ""

/include _InsertDocItemActiveDataField.sql 47 1 1 ShiftName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 47 2 2 ShiftAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 48 TOccupationPhase ""

/include _InsertDocItemActiveDataField.sql 48 1 1 OccupationPhaseName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 49 TDateUnit ""

/include _InsertDocItemActiveDataField.sql 49 1 1 DateUnitName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 49 2 2 DateUnitAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 50 TSalary ""

/include _InsertDocItemActiveDataField.sql 50 1 1 Currency TCurrency "Валута" 1

/include _InsertDocItemActiveDataField.sql 50 2 2 Salary float "Заплата" 1

/include _InsertDocItemActiveDataField.sql 50 3 3 AsText string "Словом" 1

/include _InsertDocItemActiveDataField.sql 50 4 4 DateUnit TDateUnit "Времева стъпка" 1

/include _InsertDocItemActiveDataType.sql 51 TFloatRange ""

/include _InsertDocItemActiveDataField.sql 51 1 1 MinValue float "Минимална стойност" 1

/include _InsertDocItemActiveDataField.sql 51 2 2 MaxValue float "Максимална стойност" 1

/include _InsertDocItemActiveDataType.sql 52 TOccupation ""

/include _InsertDocItemActiveDataField.sql 52 1 1 OccupationName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 52 2 2 OccupationDept TDept "ОрЧ Принадлежност" 1

/include _InsertDocItemActiveDataField.sql 52 3 3 OccupationDateInterval TDateInterval "Времеви интервал на Длъжността" 1

/include _InsertDocItemActiveDataField.sql 52 4 4 Shift TShift "Смяна" 1

/include _InsertDocItemActiveDataField.sql 52 5 5 OccupationLevel integer "ОрНиво" 1

/include _InsertDocItemActiveDataField.sql 52 6 6 Notes string "Бележки" 1

/include _InsertDocItemActiveDataField.sql 52 7 7 IsMain boolean "Е Основна" 1

/include _InsertDocItemActiveDataField.sql 52 8 8 OccupationPhase TOccupationPhase "Фаза" 1

/include _InsertDocItemActiveDataField.sql 52 9 9 Product TProduct "ДРОр" 1

/include _InsertDocItemActiveDataField.sql 52 10 10 Craft TCraft "Професия" 1

/include _InsertDocItemActiveDataField.sql 52 11 11 CurrentBaseSalary TSalary "Базова брутна заплата (текуща)" 1

/include _InsertDocItemActiveDataField.sql 52 12 12 CurrentSalaryRatioCoefRange TFloatRange "КОрЕф интервал (текущ)" 1

/include _InsertDocItemActiveDataField.sql 52 13 13 OccupationWorkDepts string "ТП Обхват на Длъжността" 1

/include _InsertDocItemActiveDataField.sql 52 14 14 OccupationProfessions string "Необходими Процесни Роли" 1

/include _InsertDocItemActiveDataType.sql 53 TOperationMovementType ""

/include _InsertDocItemActiveDataField.sql 53 1 1 OperationMovementTypeName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 53 2 2 OperationMovementTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 54 TTeam ""

/include _InsertDocItemActiveDataField.sql 54 1 1 TeamNo integer "Код" 1

/include _InsertDocItemActiveDataField.sql 54 2 2 TeamName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 54 3 3 IsActive boolean "Активна" 1

/include _InsertDocItemActiveDataField.sql 54 4 4 Dept TDept "ОрЧ на Бригада" 1

/include _InsertDocItemActiveDataType.sql 55 TOperationMovement ""

/include _InsertDocItemActiveDataField.sql 55 1 1 OperationMovementBranch TDept "ТП Главно" 1

/include _InsertDocItemActiveDataField.sql 55 2 2 OperationMovementNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 55 3 3 OperationMovementType TOperationMovementType "Вид" 1

/include _InsertDocItemActiveDataField.sql 55 4 4 OperationMovementDateTime TDateTime "Дата и час" 1

/include _InsertDocItemActiveDataField.sql 55 5 5 FromOperation TModelOperation "ОТ Операция" 1

/include _InsertDocItemActiveDataField.sql 55 6 6 ToOperation TModelOperation "КЪМ Операция" 1

/include _InsertDocItemActiveDataField.sql 55 7 7 ToDept TDept "КЪМ ТП за Брак" 1

/include _InsertDocItemActiveDataField.sql 55 8 8 FromEmployee TEmployee "ОТ Оператор" 1

/include _InsertDocItemActiveDataField.sql 55 9 9 FromTeam TTeam "ОТ Бригада" 1

/include _InsertDocItemActiveDataField.sql 55 10 10 ToEmployee TEmployee "КЪМ Оператор" 1

/include _InsertDocItemActiveDataField.sql 55 11 11 ToTeam TTeam "КЪМ Бригада" 1

/include _InsertDocItemActiveDataField.sql 55 12 12 WasteDocNo string "Акт за Брак: No" 1

/include _InsertDocItemActiveDataField.sql 55 13 13 WasteDocDate TDate "Акт за Брак: Дата" 1

/include _InsertDocItemActiveDataField.sql 55 14 14 WorkDetailTechQuantity float "Изработено количество КСЧ" 1

/include _InsertDocItemActiveDataField.sql 55 15 15 TotalDetailTechQuantity float "Общо количество КСЧ" 1

/include _InsertDocItemActiveDataField.sql 55 16 16 QADetailTechQuantity float "Одитирано количество КСЧ" 1

/include _InsertDocItemActiveDataField.sql 55 17 17 WorkProductTechQuantity float "Изработено количество НСЧ" 1

/include _InsertDocItemActiveDataField.sql 55 18 18 TotalProductTechQuantity float "Общо количество НСЧ" 1

/include _InsertDocItemActiveDataField.sql 55 19 19 QAProductTechQuantity float "Одитирано количество НСЧ" 1

/include _InsertDocItemActiveDataField.sql 55 20 20 QAEmployee TEmployee "Одитиращ" 1

/include _InsertDocItemActiveDataField.sql 55 21 21 CreateEmployee TEmployee "Създал" 1

/include _InsertDocItemActiveDataField.sql 55 22 22 CreateDateTime TDateTime "Дата и час на създаване" 1

/include _InsertDocItemActiveDataField.sql 55 23 23 StornoEmployee TEmployee "Анулирал" 1

/include _InsertDocItemActiveDataField.sql 55 24 24 StornoDateTime TDateTime "Дата и час на анулиране" 1

/include _InsertDocItemActiveDataField.sql 55 25 25 TotalPrice float "ВС1" 1

/include _InsertDocItemActiveDataType.sql 56 TProcess ""

/include _InsertDocItemActiveDataField.sql 56 1 1 ProcessName string "Наименоване" 1

/include _InsertDocItemActiveDataField.sql 56 2 2 ProcessAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 57 TProcessObject ""

/include _InsertDocItemActiveDataField.sql 57 1 1 ProcessObjectIdentifier string "Идентификатор" 1

/include _InsertDocItemActiveDataType.sql 58 TProductStore ""

/include _InsertDocItemActiveDataField.sql 58 1 1 Product TProduct "Управляем Обект" 1

/include _InsertDocItemActiveDataField.sql 58 2 2 Store TDept "ТП" 1

/include _InsertDocItemActiveDataField.sql 58 3 3 MinQuantity float "Минимално количество" 1

/include _InsertDocItemActiveDataField.sql 58 4 4 DateInterval TDateInterval "Времеви интервал" 1

/include _InsertDocItemActiveDataType.sql 59 TStoreDealType ""

/include _InsertDocItemActiveDataField.sql 59 1 1 InOut boolean "Постъпление/Теглене" 1

/include _InsertDocItemActiveDataField.sql 59 2 2 StoreDealTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 60 TStoreDeal ""

/include _InsertDocItemActiveDataField.sql 60 1 1 Store TDept "ТП Задържащо" 1

/include _InsertDocItemActiveDataField.sql 60 2 2 StoreDealType TStoreDealType "Вид" 1

/include _InsertDocItemActiveDataField.sql 60 3 3 StoreDealDate TDate "Дата" 1

/include _InsertDocItemActiveDataField.sql 60 4 4 StoreDealNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 60 5 5 StoreDealIdentifier string "Идентификатор" 1

/include _InsertDocItemActiveDataField.sql 60 6 6 Product TProduct "Управляем Обект" 1

/include _InsertDocItemActiveDataField.sql 60 7 7 WantedQuantity float "Поискано работно количесво" 1

/include _InsertDocItemActiveDataField.sql 60 8 8 Quantity float "Работно количество" 1

/include _InsertDocItemActiveDataField.sql 60 9 9 AccountQuantity float "Счетоводно количество" 1

/include _InsertDocItemActiveDataField.sql 60 10 10 Currency TCurrency "Валута" 1

/include _InsertDocItemActiveDataField.sql 60 11 11 TotalPrice float "Изчислено счетоводно количество" 1

/include _InsertDocItemActiveDataField.sql 60 12 12 StoreEmployee TEmployee "МОЛ" 1

/include _InsertDocItemActiveDataField.sql 60 13 13 OtherEmployee TEmployee "ПОЛ/ТОЛ" 1

/include _InsertDocItemActiveDataField.sql 60 14 14 RequestEmployee TEmployee "Поискал движението" 1

/include _InsertDocItemActiveDataField.sql 60 15 15 Dept TDept "ТП Постъпващо/Теглещо" 1

/include _InsertDocItemActiveDataField.sql 60 16 16 BoundProcess TProcess "Процесна Обвързаност: Вид" 1

/include _InsertDocItemActiveDataField.sql 60 17 17 BoundProcessObject TProcessObject "Процесна Обвързаност: ID" 1

/include _InsertDocItemActiveDataField.sql 60 18 18 CreateEmployee TEmployee "Създал" 1

/include _InsertDocItemActiveDataField.sql 60 19 19 CreateDateTime TDateTime "Дата и час на създаване" 1

/include _InsertDocItemActiveDataField.sql 60 20 20 StornoEmployee TEmployee "Анулирал" 1

/include _InsertDocItemActiveDataField.sql 60 21 21 StornoDateTime TDateTime "Дата и час на анулиране" 1

/include _InsertDocItemActiveDataType.sql 61 TBaseGroupDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 61 1 10 BaseGroup TBaseGroup "Базова Група" 1

/include _InsertDocItemActiveDataType.sql 62 TDeptDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 62 1 10 Dept TDept "ТП" 1

/include _InsertDocItemActiveDataType.sql 63 TEmployeeDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 63 1 10 Employee TEmployee "Служител" 1

/include _InsertDocItemActiveDataType.sql 64 TEngineeringOrderDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 64 1 10 EngineeringOrder TEngineeringOrder "ОПИР" 1

/include _InsertDocItemActiveDataType.sql 65 TModelOperationDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 65 1 10 ModelOperation TModelOperation "Операция" 1

/include _InsertDocItemActiveDataType.sql 66 TModelStageDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 66 1 10 ModelStage TModelStage "Етап" 1

/include _InsertDocItemActiveDataType.sql 67 TOccupationDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 67 1 10 Occupation TOccupation "Длъжност" 1

/include _InsertDocItemActiveDataType.sql 68 TOperationMovementDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 68 1 10 OperationMovement TOperationMovement "Операционно Движение" 1

/include _InsertDocItemActiveDataType.sql 69 TPartnerDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 69 1 10 Partner TPartner "Партньор" 1

/include _InsertDocItemActiveDataType.sql 70 TProductDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 70 1 10 Product TProductEx "Управляем Обект" 1

/include _InsertDocItemActiveDataType.sql 71 TProductStoreDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 71 1 10 ProductStore TProductStore "Задел" 1

/include _InsertDocItemActiveDataType.sql 72 TProfessionDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 72 1 10 Profession TProfession "Процесна Роля" 1

/include _InsertDocItemActiveDataType.sql 73 TStoreDealDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 73 1 10 StoreDeal TStoreDeal "Постъпление/Теглене" 1

/include _InsertDocItemActiveDataType.sql 74 TTeamDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 74 1 10 Team TTeam "Бригада" 1

/include _InsertDocItemActiveDataType.sql 75 TEmpAvailModifierType ""

/include _InsertDocItemActiveDataField.sql 75 1 1 EmpAvailModifierTypeName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 75 2 2 EmpAvailModifierTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 76 TEmpDayAbsenceReason ""

/include _InsertDocItemActiveDataField.sql 76 1 1 EmpDayAbsenceReasonName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 76 2 2 EmpDayAbsenceReasonAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 77 TEmpDayAbsenceDocType ""

/include _InsertDocItemActiveDataField.sql 77 1 1 EmpDayAbsenceDocName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 78 TEmpHourAvailModifierReason ""

/include _InsertDocItemActiveDataField.sql 78 1 1 EmpHourAvailModifierReasonName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 79 TEmpAvailModifier ""

/include _InsertDocItemActiveDataField.sql 79 1 1 Employee TEmployee "Служител" 1

/include _InsertDocItemActiveDataField.sql 79 2 2 AuthorizeEmployee TEmployee "Наредил" 1

/include _InsertDocItemActiveDataField.sql 79 3 3 EmpAvailModifierType TEmpAvailModifierType "Вид модификатор" 1

/include _InsertDocItemActiveDataField.sql 79 4 4 DateInterval TDateInterval "Времеви интервал" 1

/include _InsertDocItemActiveDataField.sql 79 5 5 EmpDayAbsenceReason TEmpDayAbsenceReason "Целодневен модификатор: Причина" 1

/include _InsertDocItemActiveDataField.sql 79 6 6 EmpDayAbsenceDocType TEmpDayAbsenceDocType "Целодневен модификатор: Вид документ" 1

/include _InsertDocItemActiveDataField.sql 79 7 7 EmpDayAbsenceDocNo string "Целодневен модификатор: Документ: Номер" 1

/include _InsertDocItemActiveDataField.sql 79 8 8 EmpDayAbsenceDocDate TDate "Целодневен модификатор: Документ: Дата" 1

/include _InsertDocItemActiveDataField.sql 79 9 9 EmpDayAbsenceDocIssuer string "Целодневен модификатор: Документ: Издаден от" 1

/include _InsertDocItemActiveDataField.sql 79 10 10 EmpHourAvailModifierReason TEmpHourAvailModifierReason "Частичен модификатор: Причина" 1

/include _InsertDocItemActiveDataField.sql 79 11 11 TimeInterval TTimeInterval "Частичен модификатор: Часови интервал" 1

/include _InsertDocItemActiveDataField.sql 79 12 12 DurationHours float "Частичен модификатор: Продължителност (часа)" 1

/include _InsertDocItemActiveDataField.sql 79 13 13 IsPersonalWorkdaysOnly boolean "Частичен модификатор: Само за личните работни дни" 1

/include _InsertDocItemActiveDataField.sql 79 14 14 Notes string "Бележки" 1

/include _InsertDocItemActiveDataField.sql 79 15 15 CreateEmployee TEmployee "Регистрирал" 1

/include _InsertDocItemActiveDataField.sql 79 16 16 CreateDateTime TDateTime "Дата и час на регистриране" 1

/include _InsertDocItemActiveDataField.sql 79 17 17 StornoEmployee TEmployee "Анулирал" 1

/include _InsertDocItemActiveDataField.sql 79 18 18 StornoDateTime TDateTime "Дата и час на анулиране" 1

/include _InsertDocItemActiveDataType.sql 80 TEmpAvailModifierDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 80 1 10 EmpAvailModifier TEmpAvailModifier "Модификатор на Присъствие" 1

/include _InsertDocItemActiveDataType.sql 81 TBudgetOrderRegularityType ""

/include _InsertDocItemActiveDataField.sql 81 1 1 BudgetOrderRegularityTypeName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 81 2 2 BudgetOrderRegularityTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 82 TBudgetOrderClass ""

/include _InsertDocItemActiveDataField.sql 82 1 1 BudgetOrderClassName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 83 TBudgetOrder ""

/include _InsertDocItemActiveDataField.sql 83 1 1 BudgetOrderBranch TDept "ТП Главно" 1

/include _InsertDocItemActiveDataField.sql 83 2 2 BudgetOrderNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 83 3 3 BudgetOrderRegularityType TBudgetOrderRegularityType "Режим на пулсация" 1

/include _InsertDocItemActiveDataField.sql 83 4 4 BudgetOrderClass TBudgetOrderClass "Клас" 1

/include _InsertDocItemActiveDataField.sql 83 5 5 GeneratorDept TDept "ТП Реализатор" 1

/include _InsertDocItemActiveDataField.sql 83 6 6 DeveloperDept TDept "ТП Разработващо" 1

/include _InsertDocItemActiveDataField.sql 83 7 7 Description string "Описание" 1

/include _InsertDocItemActiveDataField.sql 83 8 8 DateInterval TDateInterval "Времеви интервал на действие" 1

/include _InsertDocItemActiveDataField.sql 83 9 9 TotalPrice float "Проектна стойност" 1

/include _InsertDocItemActiveDataField.sql 83 10 10 CreateEmployee TEmployee "Създал" 1

/include _InsertDocItemActiveDataField.sql 83 11 11 CreateDateTime TDateTime "Дата и час на създаване" 1

/include _InsertDocItemActiveDataField.sql 83 12 12 ChangeEmployee TEmployee "Променил" 1

/include _InsertDocItemActiveDataField.sql 83 13 13 ChangeDateTime TDateTime "Дата и час на промяна" 1

/include _InsertDocItemActiveDataField.sql 83 14 14 AnnulEmployee TEmployee "Анулирал" 1

/include _InsertDocItemActiveDataField.sql 83 15 15 AnnulDateTime TDateTime "Дата и час на анулиране" 1

/include _InsertDocItemActiveDataField.sql 83 16 16 CloseEmployee TEmployee "Приключил" 1

/include _InsertDocItemActiveDataField.sql 83 17 17 CloseDateTime TDateTime "Дата и час на приключване" 1

/include _InsertDocItemActiveDataType.sql 84 TBOIDistributionType ""

/include _InsertDocItemActiveDataField.sql 84 1 1 BOIDistributionTypeName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 84 2 2 BOIDistributionTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 85 TBudgetOrderItem ""

/include _InsertDocItemActiveDataField.sql 85 1 1 BudgetOrder TBudgetOrder "Бордеро за Среда" 1

/include _InsertDocItemActiveDataField.sql 85 2 2 BudgetOrderItemNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 85 3 3 BudgetProduct TProduct "Статия" 1

/include _InsertDocItemActiveDataField.sql 85 4 4 Dept TDept "ТП Консуматор" 1

/include _InsertDocItemActiveDataField.sql 85 5 5 DistributionType TBOIDistributionType "Начин на консумиране" 1

/include _InsertDocItemActiveDataField.sql 85 6 6 DateInterval TDateInterval "Времеви интервал на действие" 1

/include _InsertDocItemActiveDataField.sql 85 7 7 DistributedSinglePrice float "Разпределение" 1

/include _InsertDocItemActiveDataField.sql 85 8 8 DistributionDateUnit TDateUnit "Период" 1

/include _InsertDocItemActiveDataField.sql 85 9 9 TotalPrice float "Обща стойност" 1

/include _InsertDocItemActiveDataField.sql 85 10 10 BudgetOrderPricePercent integer "Процент от Бордеро за Среда" 1

/include _InsertDocItemActiveDataField.sql 85 11 11 IsConfirmed boolean "Е утвърден" 1

/include _InsertDocItemActiveDataField.sql 85 12 12 IsForReconsideration float "Е за преразглеждане" 1

/include _InsertDocItemActiveDataField.sql 85 13 13 IsCanceled boolean "Е отказан" 1

/include _InsertDocItemActiveDataField.sql 85 14 14 DecisionEnterEmployee TEmployee "Въвел решение" 1

/include _InsertDocItemActiveDataField.sql 85 15 15 DecisionEnterDate TDate "Дата на въвеждане на решение" 1

/include _InsertDocItemActiveDataField.sql 85 16 16 DecisionApproveEmployee TEmployee "Взел решение" 1

/include _InsertDocItemActiveDataField.sql 85 17 17 DecisionApproveDate TDate "Дата на вземане на решение" 1

/include _InsertDocItemActiveDataField.sql 85 18 18 CreateEmployee TEmployee "Създал" 1

/include _InsertDocItemActiveDataField.sql 85 19 19 CreateDateTime TDateTime "Дата и час на създаване" 1

/include _InsertDocItemActiveDataField.sql 85 20 20 ChangeEmployee TEmployee "Променил" 1

/include _InsertDocItemActiveDataField.sql 85 21 21 ChangeDateTime TDateTime "Дата и час на промяна" 1

/include _InsertDocItemActiveDataField.sql 85 22 22 AnnulEmployee TEmployee "Анулирал" 1

/include _InsertDocItemActiveDataField.sql 85 23 23 AnnulDateTime TDateTime "Дата и час на анулиране" 1

/include _InsertDocItemActiveDataField.sql 85 24 24 CloseEmployee TEmployee "Приключил" 1

/include _InsertDocItemActiveDataField.sql 85 25 25 CloseDateTime TDateTime "Дата и час на приключване" 1

/include _InsertDocItemActiveDataType.sql 86 TBudgetOrderDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 86 1 10 BudgetOrder TBudgetOrder "Бордеро за Среда" 1

/include _InsertDocItemActiveDataType.sql 87 TBudgetOrderItemDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 87 1 10 BudgetOrderItem TBudgetOrderItem "Лимит от Бордеро за Среда" 1

/include _InsertDocItemActiveDataType.sql 88 TDisciplineEventType ""

/include _InsertDocItemActiveDataField.sql 88 1 1 DisciplineEventTypeName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 88 2 2 DisciplinePoints integer "Дисциплинарни точки" 1

/include _InsertDocItemActiveDataType.sql 89 TEmployeeDisciplineEvent ""

/include _InsertDocItemActiveDataField.sql 89 1 1 Employee TEmployee "Служител" 1

/include _InsertDocItemActiveDataField.sql 89 2 2 DisciplineEventDate TDate "Дата" 1

/include _InsertDocItemActiveDataField.sql 89 3 3 DisciplineEventType TDisciplineEventType "Вид" 1

/include _InsertDocItemActiveDataField.sql 89 4 4 AuthorizeEmployee TEmployee "Установил" 1

/include _InsertDocItemActiveDataField.sql 89 5 5 DisciplineEventComment string "Коментар" 1

/include _InsertDocItemActiveDataField.sql 89 6 6 CreateEmployee TEmployee "Създал" 1

/include _InsertDocItemActiveDataField.sql 89 7 7 CreateDateTime TDateTime "Дата и час на създаване" 1

/include _InsertDocItemActiveDataField.sql 89 8 8 StornoEmployee TEmployee "Анулирал" 1

/include _InsertDocItemActiveDataField.sql 89 9 9 StornoDateTime TDateTime "Дата и час на анулиране" 1

/include _InsertDocItemActiveDataType.sql 90 TEmployeeDisciplineEventDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 90 1 10 EmployeeDisciplineEvent TEmployeeDisciplineEvent "Дисциплинарно Събитие" 1

/include _InsertDocItemActiveDataType.sql 91 TOccupationEmployeeAssignmentRegime ""

/include _InsertDocItemActiveDataField.sql 91 1 1 OccupationEmployeeAssignmentRegimeName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 92 TOccupationEmployeeAssignment ""

/include _InsertDocItemActiveDataField.sql 92 1 1 Occupation TOccupation "Длъжност" 1

/include _InsertDocItemActiveDataField.sql 92 2 2 Employee TEmployee "Служител" 1

/include _InsertDocItemActiveDataField.sql 92 3 3 AssignmentDateInterval TDateInterval "Времеви Интервал на Назначение" 1

/include _InsertDocItemActiveDataField.sql 92 4 4 OccupationEmployeeAssignmentRegime TOccupationEmployeeAssignmentRegime "Режим на Назначение" 1

/include _InsertDocItemActiveDataField.sql 92 5 5 Salary TSalary "Основна заплата" 1

/include _InsertDocItemActiveDataField.sql 92 6 6 AssignedProfessions string "Присвоени Процесни Роли" 1

/include _InsertDocItemActiveDataType.sql 93 TOccupationEmployeeAssignmentDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 93 1 10 OccupationEmployeeAssignment TOccupationEmployeeAssignment "Длъжностно назначение" 1

/include _InsertDocItemActiveDataType.sql 94 TVatReason ""

/include _InsertDocItemActiveDataField.sql 94 1 1 No integer "No" 1

/include _InsertDocItemActiveDataField.sql 94 2 2 Name string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 94 3 3 Abbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataField.sql 94 4 4 IntlName string "Наименование (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 94 5 5 IntlAbbrev string "Абревиатура (междунар.)" 1

/include _InsertDocItemActiveDataType.sql 95 TInvoiceItem ""

/include _InsertDocItemActiveDataField.sql 95 1 1 Product TProduct "УОб" 1

/include _InsertDocItemActiveDataField.sql 95 2 2 ItemName string "Артикул Наименование" 1

/include _InsertDocItemActiveDataField.sql 95 3 3 ItemIntlName string "Артикул Наименование (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 95 4 4 BoundProcessObject TProcessObject "ОПП" 1

/include _InsertDocItemActiveDataField.sql 95 5 5 AccountQuantity float "Счетоводно количество" 1

/include _InsertDocItemActiveDataField.sql 95 6 6 AccountMeasureAbbrev string "Счетоводна мерна единица - Абревиатура" 1

/include _InsertDocItemActiveDataField.sql 95 7 7 AccountMeasureIntlAbbrev string "Счетоводна мерна единица - Абревиатура (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 95 8 8 MarketSinglePrice float "Пазарна цена" 1

/include _InsertDocItemActiveDataField.sql 95 9 9 DiscountPercent float "Отстъпка" 1

/include _InsertDocItemActiveDataField.sql 95 10 10 SinglePrice float "Единична цена" 1

/include _InsertDocItemActiveDataField.sql 95 11 11 TotalPrice float "Цена" 1

/include _InsertDocItemActiveDataType.sql 96 TInvoiceItems ""

/include _InsertDocItemActiveDataField.sql 96 1 1 InvoiceItem TInvoiceItem "Ред от Фактура" 1

/include _InsertDocItemActiveDataType.sql 97 TInvoice ""

/include _InsertDocItemActiveDataField.sql 97 1 1 IsProformInvoice boolean "Е Проформа" 1

/include _InsertDocItemActiveDataField.sql 97 2 2 InvoiceNo float "Номер" 1

/include _InsertDocItemActiveDataField.sql 97 3 3 InvoiceTypeName string "Вид" 1

/include _InsertDocItemActiveDataField.sql 97 4 4 InvoiceTypeIntlName string "Вид (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 97 5 5 InvoiceDate TDate "Дата на издаване" 1

/include _InsertDocItemActiveDataField.sql 97 6 6 EventDate TDate "Дата на събитие или аванс" 1

/include _InsertDocItemActiveDataField.sql 97 7 7 InvoicePlace string "Място" 1

/include _InsertDocItemActiveDataField.sql 97 8 8 InvoiceIntlPlace string "Място (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 97 9 9 SellerPartner TPartner "Продавач" 1

/include _InsertDocItemActiveDataField.sql 97 10 10 SellerName string "Продавач - Име" 1

/include _InsertDocItemActiveDataField.sql 97 11 11 SellerCity string "Продавач - Населено място" 1

/include _InsertDocItemActiveDataField.sql 97 12 12 SellerAddress string "Продавач - Адрес" 1

/include _InsertDocItemActiveDataField.sql 97 13 13 SellerBulstat string "Продавач - ЕИК" 1

/include _InsertDocItemActiveDataField.sql 97 14 14 SellerVatNo string "Продавач - Ид.No по ДДС" 1

/include _InsertDocItemActiveDataField.sql 97 15 15 SellerIsPerson boolean "Продавач - Е човек" 1

/include _InsertDocItemActiveDataField.sql 97 16 16 SellerEGN string "Продавач - ЕГН" 1

/include _InsertDocItemActiveDataField.sql 97 17 17 SellerPersonName string "Издадена от" 1

/include _InsertDocItemActiveDataField.sql 97 18 18 SellerIntlName string "Продавач - Име (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 97 19 19 SellerIntlCity string "Продавач - Населено място (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 97 20 20 SellerIntlAddress string "Продавач - Адрес (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 97 21 21 SellerPersonIntlName string "Издадена от (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 97 22 22 SenderPartner TPartner "Доставчик" 1

/include _InsertDocItemActiveDataField.sql 97 23 23 SenderName string "Доставчик - Име" 1

/include _InsertDocItemActiveDataField.sql 97 24 24 SenderAddress string "Доставчик - Адрес" 1

/include _InsertDocItemActiveDataField.sql 97 25 25 SenderIntlName string "Доставчик - Име (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 97 26 26 SenderIntlAddress string "Доставчик - Адрес (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 97 27 27 BuyerPartner TPartner "Купувач" 1

/include _InsertDocItemActiveDataField.sql 97 28 28 BuyerName string "Купувач - Име" 1

/include _InsertDocItemActiveDataField.sql 97 29 29 BuyerCity string "Купувач - Населено място" 1

/include _InsertDocItemActiveDataField.sql 97 30 30 BuyerAddress string "Купувач - Адрес" 1

/include _InsertDocItemActiveDataField.sql 97 31 31 BuyerBulstat string "Купувач - ЕИК" 1

/include _InsertDocItemActiveDataField.sql 97 32 32 BuyerVatNo string "Купувач - Ид.No по ДДС" 1

/include _InsertDocItemActiveDataField.sql 97 33 33 BuyerIsPerson boolean "Купувач - Е човек" 1

/include _InsertDocItemActiveDataField.sql 97 34 34 BuyerEGN string "Купувач - ЕГН" 1

/include _InsertDocItemActiveDataField.sql 97 35 35 BuyerPersonName string "Получена от" 1

/include _InsertDocItemActiveDataField.sql 97 36 36 BuyerIntlName string "Купувач - Име (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 97 37 37 BuyerIntlCity string "Купувач - Населено място (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 97 38 38 BuyerIntlAddress string "Купувач - Адрес (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 97 39 39 BuyerPersonIntlName string "Получена от (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 97 40 40 ReceiverPartner TPartner "Получател" 1

/include _InsertDocItemActiveDataField.sql 97 41 41 ReceiverName string "Получател - Име" 1

/include _InsertDocItemActiveDataField.sql 97 42 42 ReceiverAddress string "Получател - Адрес" 1

/include _InsertDocItemActiveDataField.sql 97 43 43 ReceiverIntlName string "Получател - Име (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 97 44 44 ReceiverIntlAddress string "Получател - Адрес (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 97 45 45 Currency TCurrency "Валута" 1

/include _InsertDocItemActiveDataField.sql 97 46 46 VatPercent float "Данъчна ставка ДДС" 1

/include _InsertDocItemActiveDataField.sql 97 47 47 TotalPrice float "Общо" 1

/include _InsertDocItemActiveDataField.sql 97 48 48 BaseCurrencyTotalPrice float "Данъчна основа" 1

/include _InsertDocItemActiveDataField.sql 97 49 49 TotalPriceVat float "ДДС в/у Общо" 1

/include _InsertDocItemActiveDataField.sql 97 50 50 BaseCurrencyTotalPriceVat float "ДДС в/у Данъчна основа" 1

/include _InsertDocItemActiveDataField.sql 97 51 51 PaymentPrice float "Сума за плащане" 1

/include _InsertDocItemActiveDataField.sql 97 52 52 PaymentPriceAsLocalText string "Сума за плащане - Словом" 1

/include _InsertDocItemActiveDataField.sql 97 53 53 PaymentPriceAsIntlText string "Сума за плащане - Словом  (междунар.)" 1

/include _InsertDocItemActiveDataField.sql 97 54 54 IsCashPayment boolean "В брой" 1

/include _InsertDocItemActiveDataField.sql 97 55 55 IBAN string "IBAN" 1

/include _InsertDocItemActiveDataField.sql 97 56 56 VatReason TVatReason "Основание за прилагане на ставка или неначисляване на данък" 1

/include _InsertDocItemActiveDataField.sql 97 57 57 Notes string "Бележки" 1

/include _InsertDocItemActiveDataField.sql 97 58 58 ApproveEmployee TEmployee "Утвърдил" 1

/include _InsertDocItemActiveDataField.sql 97 59 59 ApproveDateTime TDateTime "Дата и час на утвърждаване" 1

/include _InsertDocItemActiveDataField.sql 97 60 60 CreateEmployee TEmployee "Създале" 1

/include _InsertDocItemActiveDataField.sql 97 61 61 CreateDateTime TDateTime "Дата и час на създаване" 1

/include _InsertDocItemActiveDataField.sql 97 62 62 ChangeEmployee TEmployee "Променил" 1

/include _InsertDocItemActiveDataField.sql 97 63 63 ChangeDateTime TDateTime "Дата и час на промяна" 1

/include _InsertDocItemActiveDataField.sql 97 64 64 StornoEmployee TEmployee "Анулирал" 1

/include _InsertDocItemActiveDataField.sql 97 65 65 StornoDateTime TDateTime "Дата и час на анулиране" 1

/include _InsertDocItemActiveDataField.sql 97 66 66 InvoiceItems TInvoiceItems "Редове от Фактура" 1

/include _InsertDocItemActiveDataType.sql 98 TInvoiceDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 98 1 10 Invoice TInvoice "Фактура" 1

/include _InsertDocItemActiveDataType.sql 99 TSaleShipment ""

/include _InsertDocItemActiveDataField.sql 99 1 1 SaleShipmentNo integer "Номер" 1

/include _InsertDocItemActiveDataField.sql 99 2 2 SaleShipmentIdentifier string "Идентификатор" 1

/include _InsertDocItemActiveDataField.sql 99 3 3 ShipmentPlanDate TDate "План - Дата" 1

/include _InsertDocItemActiveDataField.sql 99 4 4 PlanQuantity float "План - Количество" 1

/include _InsertDocItemActiveDataField.sql 99 5 5 PlanAccountQuantity float "План - Счетоводно Количество" 1

/include _InsertDocItemActiveDataField.sql 99 6 6 ShipmentDate TDate "Отчет - Дата" 1

/include _InsertDocItemActiveDataField.sql 99 7 7 Quantity float "Отчет - Количество" 1

/include _InsertDocItemActiveDataField.sql 99 8 8 AccountQuantity float "Отчет - Счетоводно Количество" 1

/include _InsertDocItemActiveDataField.sql 99 9 9 ReceiveDate TDate "Дата на получаване" 1

/include _InsertDocItemActiveDataField.sql 99 10 10 InvoiceNo float "Фактура - Номер" 1

/include _InsertDocItemActiveDataField.sql 99 11 11 IsProformInvoice boolean "Фактура - Е Проформа" 1

/include _InsertDocItemActiveDataField.sql 99 12 12 InvoiceDate TDate "Фактура - Дата" 1

/include _InsertDocItemActiveDataField.sql 99 13 13 InvoiceCurrency TCurrency "Фактура - Валута" 1

/include _InsertDocItemActiveDataField.sql 99 14 14 InvoiceSinglePrice float "Фактура - Единична цена" 1

/include _InsertDocItemActiveDataField.sql 99 15 15 InvoiceTotalPrice float "Фактура - Общо" 1

/include _InsertDocItemActiveDataType.sql 100 TSaleShipmentDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 100 1 10 SaleShipment TSaleShipment "Разклонение" 1

/include _InsertDocItemActiveDataType.sql 101 TSaleShipments ""

/include _InsertDocItemActiveDataField.sql 101 1 1 SaleShipment TSaleShipment "Разклонение" 1

/include _InsertDocItemActiveDataType.sql 102 TSaleOrderType ""

/include _InsertDocItemActiveDataField.sql 102 1 1 SaleOrderTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataField.sql 102 2 2 SaleOrderTypeName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 103 TBorderDealType ""

/include _InsertDocItemActiveDataField.sql 103 1 1 BorderDealTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataField.sql 103 2 2 BorderDealTypeName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 104 TSaleType ""

/include _InsertDocItemActiveDataField.sql 104 1 1 SaleTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataField.sql 104 2 2 SaleTypeName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 105 TShipmentType ""

/include _InsertDocItemActiveDataField.sql 105 1 1 ShipmentTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataField.sql 105 2 2 ShipmentTypeName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 105 3 3 Notes string "Значение" 1

/include _InsertDocItemActiveDataType.sql 106 TDecisionType ""

/include _InsertDocItemActiveDataField.sql 106 1 1 DecisionTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataField.sql 106 2 2 DecisionTypeName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 107 TAspectType ""

/include _InsertDocItemActiveDataField.sql 107 1 1 AspectTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataField.sql 107 2 2 AspectTypeName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 108 TStreamType ""

/include _InsertDocItemActiveDataField.sql 108 1 1 StreamTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataField.sql 108 2 2 StreamTypeName string "Наименование" 1

/include _InsertDocItemActiveDataType.sql 109 TSale ""

/include _InsertDocItemActiveDataField.sql 109 1 1 SaleIdentifier string "Идентификатор" 1

/include _InsertDocItemActiveDataField.sql 109 2 2 SaleOrderType TSaleOrderType "Вид Ордер" 1

/include _InsertDocItemActiveDataField.sql 109 3 3 RequestLineNo integer "No в ПДК" 1

/include _InsertDocItemActiveDataField.sql 109 4 4 AspectType TAspectType "Аспект" 1

/include _InsertDocItemActiveDataField.sql 109 5 5 ClientCompany TPartner "Клиент" 1

/include _InsertDocItemActiveDataField.sql 109 6 6 ClientRequestNo string "Партньорско означение" 1

/include _InsertDocItemActiveDataField.sql 109 7 7 Product TProduct "УОб" 1

/include _InsertDocItemActiveDataField.sql 109 8 8 CompanyProductName string "Означение на УОб от Партньор" 1

/include _InsertDocItemActiveDataField.sql 109 9 9 RequestSendDate TDate "ОДК - Дата на Стартиране" 1

/include _InsertDocItemActiveDataField.sql 109 10 10 RequestRegisterDate TDate "ОДК - Дата на Регистриране" 1

/include _InsertDocItemActiveDataField.sql 109 11 11 OfferSendPlanDate TDate "ОДК - Планова позиция на ИП" 1

/include _InsertDocItemActiveDataField.sql 109 12 12 OfferSendDate TDate "ОДК - Отчетна позиция на ИП" 1

/include _InsertDocItemActiveDataField.sql 109 13 13 OfferAnswerPlanDate TDate "ОДК - Планова позиция на Клиент" 1

/include _InsertDocItemActiveDataField.sql 109 14 14 OfferAnswerDate TDate "ОДК - Отчетна позиция на Клиент" 1

/include _InsertDocItemActiveDataField.sql 109 15 15 DecisionPlanDate TDate "ОДК - Планова дата на решение" 1

/include _InsertDocItemActiveDataField.sql 109 16 16 DecisionDate TDate "ОДК - Отчетна дата на решение" 1

/include _InsertDocItemActiveDataField.sql 109 17 17 Quantity float "Договорено К-во УОб - Работно" 1

/include _InsertDocItemActiveDataField.sql 109 18 18 AccountQuantity float "Договорено К-во УОб - Счетоводно" 1

/include _InsertDocItemActiveDataField.sql 109 19 19 DiscountPercent float "Отстъпка" 1

/include _InsertDocItemActiveDataField.sql 109 20 20 MarketSinglePrice float "Начална единична цена" 1

/include _InsertDocItemActiveDataField.sql 109 21 21 SinglePrice float "Единична цена" 1

/include _InsertDocItemActiveDataField.sql 109 22 22 Currency TCurrency "Валута" 1

/include _InsertDocItemActiveDataField.sql 109 23 23 ManagerEmployee TEmployee "ОДК - Водещ Диалог" 1

/include _InsertDocItemActiveDataField.sql 109 24 24 DecisionType TDecisionType "ОДК - Решение" 1

/include _InsertDocItemActiveDataField.sql 109 25 25 DecisionEmployee TEmployee "ОДК - Взел Решение" 1

/include _InsertDocItemActiveDataField.sql 109 26 26 Notes string "Бележки" 1

/include _InsertDocItemActiveDataField.sql 109 27 27 PrognosisBeginDate TDate "Перспектива - ВрмИнт - Начало" 1

/include _InsertDocItemActiveDataField.sql 109 28 28 PrognosisEndDate TDate "Перспектива - ВрмИнт - Край" 1

/include _InsertDocItemActiveDataField.sql 109 29 29 OurOfferQuantity float "Перспектива - Позиция на ИП - Количество - Работно" 1

/include _InsertDocItemActiveDataField.sql 109 30 30 OurOfferAccountQuantity float "Перспектива - Позиция на ИП - Количество - Счетоводно" 1

/include _InsertDocItemActiveDataField.sql 109 31 31 OurOfferSinglePrice float "Перспектива - Позиция на ИП - Единична цена" 1

/include _InsertDocItemActiveDataField.sql 109 32 32 OurOfferCurrency TCurrency "Перспектива - Позиция на ИП - Валута" 1

/include _InsertDocItemActiveDataField.sql 109 33 33 ClientOfferQuantity float "Перспектива - Позиция на Клиент - Количество - Работно" 1

/include _InsertDocItemActiveDataField.sql 109 34 34 ClientOfferAccountQuantity float "Перспектива - Позиция на Клиент - Количество - Счетоводно" 1

/include _InsertDocItemActiveDataField.sql 109 35 35 ClientOfferSinglePrice float "Перспектива - Позиция на Клиент - Единична цена" 1

/include _InsertDocItemActiveDataField.sql 109 36 36 ClientOfferCurrency TCurrency "Перспектива - Позиция на Клиент - Валута" 1

/include _InsertDocItemActiveDataField.sql 109 37 37 ReceiveDate TDate "Дата на получаване - Договорена" 1

/include _InsertDocItemActiveDataField.sql 109 38 38 ClientOfferReceiveDate TDate "Дата на получаване - Поискана от клиент" 1

/include _InsertDocItemActiveDataField.sql 109 39 39 ShipmentDate TDate "Планова дата за експедиция" 1

/include _InsertDocItemActiveDataField.sql 109 40 40 SaleDealType TBorderDealType "ОПП - Тип" 1

/include _InsertDocItemActiveDataField.sql 109 41 41 SaleBranch TDept "ОПП - ТП Главно" 1

/include _InsertDocItemActiveDataField.sql 109 42 42 SaleNo integer "ОПП - No" 1

/include _InsertDocItemActiveDataField.sql 109 43 43 SaleType TSaleType "ОПП - Вид" 1

/include _InsertDocItemActiveDataField.sql 109 44 44 SalePriority TPriority "ОПП - Приоритет" 1

/include _InsertDocItemActiveDataField.sql 109 45 45 ShipmentStore TDept "Получаване от Клиент - ТП Задържащо за Експедиция" 1

/include _InsertDocItemActiveDataField.sql 109 46 46 ShipmentDays integer "Получаване от Клиент - Период на движение" 1

/include _InsertDocItemActiveDataField.sql 109 47 47 ReceivePlaceOfficeName string "Получаване от Клиент - ТП на Клиент" 1

/include _InsertDocItemActiveDataField.sql 109 48 48 ReceivePlaceCountry TCountry "Получаване от Клиент - Държава" 1

/include _InsertDocItemActiveDataField.sql 109 49 49 CustomhouseCompany TPartner "Получаване от Клиент - Митница" 1

/include _InsertDocItemActiveDataField.sql 109 50 50 ShipmentType TShipmentType "Получаване от Клиент - Търговски код" 1

/include _InsertDocItemActiveDataField.sql 109 51 51 IsVendorTransport boolean "Получаване от Клиент - Организация на Транспорт" 1

/include _InsertDocItemActiveDataField.sql 109 52 52 CreateEmployee TEmployee "Създал" 1

/include _InsertDocItemActiveDataField.sql 109 53 53 CreateDateTime TDateTime "Дата и час на създаване" 1

/include _InsertDocItemActiveDataField.sql 109 54 54 ChangeEmployee TEmployee "Променил" 1

/include _InsertDocItemActiveDataField.sql 109 55 55 ChangeDateTime TDateTime "Дата и час на промяна" 1

/include _InsertDocItemActiveDataField.sql 109 56 56 FinishEmployee TEmployee "Приключил" 1

/include _InsertDocItemActiveDataField.sql 109 57 57 FinishDateTime TDateTime "Дата и час на приключване" 1

/include _InsertDocItemActiveDataField.sql 109 58 58 AnnulEmployee TEmployee "Анулирал" 1

/include _InsertDocItemActiveDataField.sql 109 59 59 AnnulDateTime TDateTime "Дата и час на анулиране" 1

/include _InsertDocItemActiveDataField.sql 109 60 60 SaleShipments TSaleShipments "Разклонения" 1

/include _InsertDocItemActiveDataType.sql 110 TSales ""

/include _InsertDocItemActiveDataField.sql 110 1 1 Sale TSale "ОДК" 1

/include _InsertDocItemActiveDataType.sql 111 TSaleRequestGroup ""

/include _InsertDocItemActiveDataField.sql 111 1 1 SaleRequestGroupID string "ID ПДК" 1

/include _InsertDocItemActiveDataField.sql 111 2 2 SaleOrderType TSaleOrderType "Вид Ордер" 1

/include _InsertDocItemActiveDataField.sql 111 3 3 SaleDealType TBorderDealType "Тип" 1

/include _InsertDocItemActiveDataField.sql 111 4 4 RequestBranch TDept "ТП Главно" 1

/include _InsertDocItemActiveDataField.sql 111 5 5 RequestNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 111 6 6 StreamType TStreamType "Поток" 1

/include _InsertDocItemActiveDataField.sql 111 7 7 IsActivatedByClient boolean "Активиран от Клиент" 1

/include _InsertDocItemActiveDataField.sql 111 8 8 ActivatedBy string "Активиран от" 1

/include _InsertDocItemActiveDataField.sql 111 9 9 ClientRequestGroupNo string "Ознчение на ПДК от Клиент" 1

/include _InsertDocItemActiveDataField.sql 111 10 10 RequestSendDate TDate "Дата на Стартиране" 1

/include _InsertDocItemActiveDataField.sql 111 11 11 RequestRegisterDate TDate "Дата на Регистриране" 1

/include _InsertDocItemActiveDataField.sql 111 12 12 ClientCompany TPartner "Клиент" 1

/include _InsertDocItemActiveDataField.sql 111 13 13 MediatorCompany TPartner "Посредник" 1

/include _InsertDocItemActiveDataField.sql 111 14 14 SaleRequestGroupEmployee TEmployee "Водещ по ПДК" 1

/include _InsertDocItemActiveDataField.sql 111 15 15 CreateEmployee TEmployee "Създал" 1

/include _InsertDocItemActiveDataField.sql 111 16 16 CreateDateTime TDateTime "Дата и час на създаване" 1

/include _InsertDocItemActiveDataField.sql 111 17 17 ChangeEmployee TEmployee "Променил" 1

/include _InsertDocItemActiveDataField.sql 111 18 18 ChangeDateTime TDateTime "Дата и час на промяна" 1

/include _InsertDocItemActiveDataField.sql 111 19 19 FinishEmployee TEmployee "Приключил" 1

/include _InsertDocItemActiveDataField.sql 111 20 20 FinishDateTime TDateTime "Дата и час на приключване" 1

/include _InsertDocItemActiveDataField.sql 111 21 21 AnnulEmployee TEmployee "Анулирал" 1

/include _InsertDocItemActiveDataField.sql 111 22 22 AnnulDateTime TDateTime "Дата и час на анулиране" 1

/include _InsertDocItemActiveDataField.sql 111 23 23 Sales TSales "Редове" 1

/include _InsertDocItemActiveDataType.sql 112 TSaleDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 112 1 10 SaleRequestGroup TSaleRequestGroup "ПДК" 1

/include _InsertDocItemActiveDataField.sql 112 2 11 Sale TSale "ОДК/ОПП/ОПВ" 1

/include _InsertDocItemActiveDataType.sql 113 TSaleRequestGroupDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 113 1 10 SaleRequestGroup TSaleRequestGroup "ПДК" 1

/include _InsertDocItemActiveDataType.sql 114 TExceptEventType ""

/include _InsertDocItemActiveDataField.sql 114 1 1 ExceptEventTypeFullNo string "Структ. No" 1

/include _InsertDocItemActiveDataField.sql 114 2 2 ExceptEventTypeName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 114 3 3 ExceptEventTypeShortName string "Кратко Наименование" 1

/include _InsertDocItemActiveDataType.sql 115 TExceptEventLevel ""

/include _InsertDocItemActiveDataField.sql 115 1 1 ExceptEventLevelNo string "No" 1

/include _InsertDocItemActiveDataField.sql 115 2 2 ExceptEventLevelName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 115 3 3 ExceptEventLevelAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 116 TExceptEventGenType ""

/include _InsertDocItemActiveDataField.sql 116 1 1 ExceptEventGenTypeNo string "No" 1

/include _InsertDocItemActiveDataField.sql 116 2 2 ExceptEventGenTypeName string "Наименование" 1

/include _InsertDocItemActiveDataField.sql 116 3 3 ExceptEventGenTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataType.sql 117 TExceptEvent ""

/include _InsertDocItemActiveDataField.sql 117 1 1 ExceptEventNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 117 2 2 ExceptEventType TExceptEventType "Вид" 1

/include _InsertDocItemActiveDataField.sql 117 3 3 ExceptEventGenType TExceptEventGenType "Процес" 1

/include _InsertDocItemActiveDataField.sql 117 4 4 ExceptEventLevel TExceptEventLevel "Обхват" 1

/include _InsertDocItemActiveDataField.sql 117 5 5 Product TProduct "Управляем Обект" 1

/include _InsertDocItemActiveDataField.sql 117 6 6 ProductQuantity float "Количество УОб" 1

/include _InsertDocItemActiveDataField.sql 117 7 7 Dept TDept "ТП на Възникване на НО" 1

/include _InsertDocItemActiveDataField.sql 117 8 8 Description string "Кратко описание на НО" 1

/include _InsertDocItemActiveDataField.sql 117 9 9 DetectDept TDept "ТП на Установяване на НО" 1

/include _InsertDocItemActiveDataField.sql 117 10 10 DetectEmployee TEmployee "Служител - Установил НО" 1

/include _InsertDocItemActiveDataField.sql 117 11 11 DetectDateTime TDateTime "Дата и час на установяване" 1

/include _InsertDocItemActiveDataField.sql 117 12 12 ControlDeptCode TDept "ТП за Преодоляване на НО" 1

/include _InsertDocItemActiveDataField.sql 117 13 13 ControlAcceptEmployee TEmployee "Служител - приел сигнала за НО" 1

/include _InsertDocItemActiveDataField.sql 117 14 14 ControlAcceptDateTime TDateTime "Дата и час на приемане на сигнала за НО" 1

/include _InsertDocItemActiveDataField.sql 117 15 15 ControlMainEmployee TEmployee "Главен Отговорник" 1

/include _InsertDocItemActiveDataField.sql 117 16 16 ControlActivateEmployee TEmployee "Активирал" 1

/include _InsertDocItemActiveDataField.sql 117 17 17 ControlActivateDateTime TDateTime "Дата и час на активиране" 1

/include _InsertDocItemActiveDataField.sql 117 18 18 DamageResolvePlanDateInterval TDateInterval "Овладяване на Верижни Поражения - Планов ВрмИнт" 1

/include _InsertDocItemActiveDataField.sql 117 19 19 DamageResolveEmployee TEmployee "Овлядяване на Верижни Поражения - Служител" 1

/include _InsertDocItemActiveDataField.sql 117 20 20 DamageResolveDateTime TDateTime "Овладяване на Верижни Поражения - Дата и час" 1

/include _InsertDocItemActiveDataField.sql 117 21 21 ResolvePlanDateInterval TDateInterval "Преустановяване Действието на НО - Планов ВрмИнт" 1

/include _InsertDocItemActiveDataField.sql 117 22 22 ResolveEmployee TEmployee "Преустановяване Действието на НО - Служител" 1

/include _InsertDocItemActiveDataField.sql 117 23 23 ResolveDateTime TDateTime "Преустановяване Действието на НО - Дата и час" 1

/include _InsertDocItemActiveDataField.sql 117 24 24 CreateEmployee TEmployee "Създал" 1

/include _InsertDocItemActiveDataField.sql 117 25 25 CreateDateTime TDateTime "Дата и час на създаване" 1

/include _InsertDocItemActiveDataField.sql 117 26 26 ChangeEmployee TEmployee "Променил" 1

/include _InsertDocItemActiveDataField.sql 117 27 27 ChangeDateTime TDateTime "Дата и час на промяна" 1

/include _InsertDocItemActiveDataField.sql 117 28 28 CloseEmployee TEmployee "Приключил" 1

/include _InsertDocItemActiveDataField.sql 117 29 29 CloseDateTime TDateTime "Дата и час на приключване" 1

/include _InsertDocItemActiveDataField.sql 117 30 30 AnnulEmployee TEmployee "Анулирал" 1

/include _InsertDocItemActiveDataField.sql 117 31 31 AnnulDateTime TDateTime "Дата и час на анулиране" 1

/include _InsertDocItemActiveDataField.sql 117 32 32 OrgTaskProposalBindEmployee TEmployee "Свързал с Проект" 1

/include _InsertDocItemActiveDataField.sql 117 33 33 OrgTaskProposalBindDateTime TDateTime "Дата и час на свързване с Проект" 1

/include _InsertDocItemActiveDataType.sql 118 TExceptEventDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 118 1 10 ExceptEvent TExceptEvent "Недопустимо Отклонение" 1

/include _InsertDocItemActiveDataType.sql 119 TDeliveryType ""

/include _InsertDocItemActiveDataField.sql 119 1 1 DeliveryTypeAbbrev string "Абревиатура" 1

/include _InsertDocItemActiveDataField.sql 119 2 2 Description string "Описание" 1

/include _InsertDocItemActiveDataType.sql 120 TDeliveryProject ""

/include _InsertDocItemActiveDataField.sql 120 1 1 DeliveryProjectIdentifier string "ID ОДД" 1

/include _InsertDocItemActiveDataField.sql 120 2 2 DeliveryIdentifier string "ID ОПД" 1

/include _InsertDocItemActiveDataField.sql 120 3 3 DCDBranch TDept "ТП Главно" 1

/include _InsertDocItemActiveDataField.sql 120 4 4 DCDCode integer "ПДД No" 1

/include _InsertDocItemActiveDataField.sql 120 5 5 DeliveryProjectCode integer "ОДД No" 1

/include _InsertDocItemActiveDataField.sql 120 6 6 StreamType TStreamType "Поток" 1

/include _InsertDocItemActiveDataField.sql 120 7 7 DeliveryType TDeliveryType "Вид ОПД" 1

/include _InsertDocItemActiveDataField.sql 120 8 8 Vendor TPartner "Доставчик" 1

/include _InsertDocItemActiveDataField.sql 120 9 9 Product TProduct "Управляем Обект" 1

/include _InsertDocItemActiveDataField.sql 120 10 10 DeficitCoverDate TDate "Дата на отрицателна наличност" 1

/include _InsertDocItemActiveDataField.sql 120 11 11 WorkQuantity float "Работно Количество" 1

/include _InsertDocItemActiveDataField.sql 120 12 12 SinglePrice float "Ед. цена" 1

/include _InsertDocItemActiveDataField.sql 120 13 13 AccountQuantity float "Счетоводно Количество" 1

/include _InsertDocItemActiveDataField.sql 120 14 14 AccountSinglePrice float "Счет. Ед. цена" 1

/include _InsertDocItemActiveDataField.sql 120 15 15 TotalPrice float "Обща Стойност" 1

/include _InsertDocItemActiveDataField.sql 120 16 16 Currency TCurrency "Валута" 1

/include _InsertDocItemActiveDataField.sql 120 17 17 DeliveryDate TDate "Дата на Получаване" 1

/include _InsertDocItemActiveDataField.sql 120 18 18 MediatorCompany TPartner "Посредник" 1

/include _InsertDocItemActiveDataField.sql 120 19 19 StartDate TDate "Дата на Стартиране" 1

/include _InsertDocItemActiveDataField.sql 120 20 20 RegisterDate TDate "Дата на Регистриране" 1

/include _InsertDocItemActiveDataField.sql 120 21 21 PlanPositionDate TDate "Дата Планова Пзц. ИП" 1

/include _InsertDocItemActiveDataField.sql 120 22 22 RealPositionDate TDate "Дата Отчетна Пзц. ИП" 1

/include _InsertDocItemActiveDataField.sql 120 23 23 PlanVendorPositionDate TDate "Дата Планова Пзц. Доставчик" 1

/include _InsertDocItemActiveDataField.sql 120 24 24 RealVendorPositionDate TDate "Дата Отчетна Пзц. Доставчик" 1

/include _InsertDocItemActiveDataField.sql 120 25 25 DecisionEmployee TEmployee "Взел Решение" 1

/include _InsertDocItemActiveDataField.sql 120 26 26 DialogEmployee TEmployee "Водещ Диалог" 1

/include _InsertDocItemActiveDataField.sql 120 27 27 ShipmentDays integer "ПерДвж" 1

/include _InsertDocItemActiveDataField.sql 120 28 28 PSDStore TDept "ТП Задърж. на ИП за Получаване" 1

/include _InsertDocItemActiveDataField.sql 120 29 29 CreateEmployee TEmployee "Създал" 1

/include _InsertDocItemActiveDataField.sql 120 30 30 CreateDateTime TDateTime "Дата и час на създаване" 1

/include _InsertDocItemActiveDataField.sql 120 31 31 ChangeEmployee TEmployee "Променил" 1

/include _InsertDocItemActiveDataField.sql 120 32 32 ChangeDateTime TDateTime "Дата и час на промяна" 1

/include _InsertDocItemActiveDataField.sql 120 33 33 FinishEmployee TEmployee "Приключил" 1

/include _InsertDocItemActiveDataField.sql 120 34 34 FinishDateTime TDateTime "Дата и час на приключване" 1

/include _InsertDocItemActiveDataField.sql 120 35 35 AnnulEmployee TEmployee "Анулирал" 1

/include _InsertDocItemActiveDataField.sql 120 36 36 AnnulDateTime TDateTime "Дата и час на анулиране" 1

/include _InsertDocItemActiveDataType.sql 121 TDeliveryProjectDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 121 1 10 DeliveryProject TDeliveryProject "ОДД" 1
