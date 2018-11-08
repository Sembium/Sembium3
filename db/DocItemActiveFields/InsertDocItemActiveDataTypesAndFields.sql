/term=;

delete DI_ACTIVE_DATA_TYPE_FIELDS;
delete DI_ACTIVE_DATA_TYPES;

/include _InsertDocItemActiveDataType.sql 2 integer ""

/include _InsertDocItemActiveDataType.sql 3 string ""

/include _InsertDocItemActiveDataType.sql 4 boolean ""

/include _InsertDocItemActiveDataType.sql 5 float ""

/include _InsertDocItemActiveDataType.sql 6 TDate ""

/include _InsertDocItemActiveDataField.sql 6 1 1 InDefaultFormat string "��� ������ �� ������������" 1

/include _InsertDocItemActiveDataField.sql 6 2 2 InWeekFormat string "� �������� ������" 1

/include _InsertDocItemActiveDataField.sql 6 3 3 InMonthFormat string "� ������� ������" 1

/include _InsertDocItemActiveDataType.sql 7 TDateInterval ""

/include _InsertDocItemActiveDataField.sql 7 1 1 BeginDate TDate "������� ����" 1

/include _InsertDocItemActiveDataField.sql 7 2 2 EndDate TDate "������ ����" 1

/include _InsertDocItemActiveDataField.sql 7 3 3 Days integer "���������� ���" 1

/include _InsertDocItemActiveDataField.sql 7 4 4 Workdays integer "������� ���" 1

/include _InsertDocItemActiveDataType.sql 8 TTime ""

/include _InsertDocItemActiveDataField.sql 8 1 1 InDefaultFormat string "��� ������ �� ������������" 1

/include _InsertDocItemActiveDataType.sql 9 TTimeInterval ""

/include _InsertDocItemActiveDataField.sql 9 1 1 BeginTime TTime "������� ���" 1

/include _InsertDocItemActiveDataField.sql 9 2 2 EndTime TTime "����� ���" 1

/include _InsertDocItemActiveDataType.sql 10 TDateTime ""

/include _InsertDocItemActiveDataField.sql 10 1 1 Date TDate "����" 1

/include _InsertDocItemActiveDataField.sql 10 2 2 Time TTime "���" 1

/include _InsertDocItemActiveDataType.sql 11 TTreeNode ""

/include _InsertDocItemActiveDataField.sql 11 1 1 Name string "������������" 1

/include _InsertDocItemActiveDataField.sql 11 2 2 IsGroup boolean "� �����" 1

/include _InsertDocItemActiveDataType.sql 12 TMeasure ""

/include _InsertDocItemActiveDataField.sql 12 1 1 MeasureAbbrev string "�����������" 1

/include _InsertDocItemActiveDataField.sql 12 2 2 MeasureName string "������������" 1

/include _InsertDocItemActiveDataType.sql 13 TSelfExistentStatus ""

/include _InsertDocItemActiveDataField.sql 13 1 1 SelfExistentStatusName string "������������" 1

/include _InsertDocItemActiveDataType.sql 14 TTransientStatus ""

/include _InsertDocItemActiveDataField.sql 14 1 1 TransientStatusName string "������������" 1

/include _InsertDocItemActiveDataType.sql 15 TPriority ""

/include _InsertDocItemActiveDataField.sql 15 1 1 PriorityNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 15 2 2 PriorityName string "������������" 1

/include _InsertDocItemActiveDataField.sql 15 3 3 PriorityColor integer "����" 1

/include _InsertDocItemActiveDataField.sql 15 4 4 PriorityBackgroundColor integer "���" 1

/include _InsertDocItemActiveDataType.sql 16 TProductOrigin ""

/include _InsertDocItemActiveDataField.sql 16 1 1 ProductOriginName string "������������" 1

/include _InsertDocItemActiveDataField.sql 16 2 2 ProductOriginAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 17 TBOIOrderType ""

/include _InsertDocItemActiveDataField.sql 17 1 1 BOIOrderTypeName string "������������" 1

/include _InsertDocItemActiveDataField.sql 17 2 2 BOIOrderTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 18 TProduct "TTreeNode"

/include _InsertDocItemActiveDataField.sql 18 1 1 ProductNo integer "id ������" 1

/include _InsertDocItemActiveDataField.sql 18 2 2 WorkMeasure TMeasure "������� ����� �������" 1

/include _InsertDocItemActiveDataField.sql 18 3 3 AccountMeasure TMeasure "���������� ����� �������" 1

/include _InsertDocItemActiveDataField.sql 18 4 4 AccountMeasureCoef float "���������� �� ���������� ����� �������" 1

/include _InsertDocItemActiveDataField.sql 18 5 5 TechMeasure TMeasure "������������ ����� �������" 1

/include _InsertDocItemActiveDataField.sql 18 6 6 TechMeasureCoef float "���������� �� ������������ ����� �������" 1

/include _InsertDocItemActiveDataField.sql 18 7 7 TransportMeasure TMeasure "����������� ����� �������" 1

/include _InsertDocItemActiveDataField.sql 18 8 8 TransportMeasureCoef float "���������� �� ����������� ����� �������" 1

/include _InsertDocItemActiveDataField.sql 18 9 9 PartnerProductNames string "��������� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 18 10 10 IsVatFree boolean "��������� �� ���" 1

/include _InsertDocItemActiveDataField.sql 18 11 11 Notes string "�������" 1

/include _InsertDocItemActiveDataField.sql 18 12 12 IsInactive boolean "���������" 1

/include _InsertDocItemActiveDataField.sql 18 13 13 SelfExistentStatus TSelfExistentStatus "������������� ������������" 1

/include _InsertDocItemActiveDataField.sql 18 14 14 IsProductionProduct boolean "�������� �����������" 1

/include _InsertDocItemActiveDataField.sql 18 15 15 TransientStatus TTransientStatus "������������ ��� �������" 1

/include _InsertDocItemActiveDataField.sql 18 16 16 WorkdaysToExist integer "������� ��� �� ������������ ��� �������" 1

/include _InsertDocItemActiveDataField.sql 18 17 17 IsUsedBySales boolean "� ������� �� ���" 1

/include _InsertDocItemActiveDataField.sql 18 18 18 IsUsedBySaleProduction boolean "� ������� �� �����" 1

/include _InsertDocItemActiveDataField.sql 18 19 19 IsUsedByEnvironmentProduction boolean "� ������� �� �����" 1

/include _InsertDocItemActiveDataField.sql 18 20 20 IsProvidedByDeliveries boolean "� ����������� �� ���" 1

/include _InsertDocItemActiveDataField.sql 18 21 21 IsProvidedBySaleProduction boolean "� ����������� �� �����" 1

/include _InsertDocItemActiveDataField.sql 18 22 22 IsProvidedByEnvironmentProduction boolean "� ����������� �� �����" 1

/include _InsertDocItemActiveDataField.sql 18 23 23 UsedBySalesPriority TPriority "������� �� ���: ���������" 1

/include _InsertDocItemActiveDataField.sql 18 24 24 UsedBySaleProductionPriority TPriority "������� �� �����: ���������" 1

/include _InsertDocItemActiveDataField.sql 18 25 25 UsedByEnvironmentProductionPriority TPriority "������� �� �����: ���������" 1

/include _InsertDocItemActiveDataField.sql 18 26 26 ProvidedByDeliveriesPriority TPriority "����������� �� ���: ���������" 1

/include _InsertDocItemActiveDataField.sql 18 27 27 ProvidedBySaleProductionPriority TPriority "����������� �� �����: ���������" 1

/include _InsertDocItemActiveDataField.sql 18 28 28 ProvidedByEnvironmentProductionPriority TPriority "����������� �� �����: ���������" 1

/include _InsertDocItemActiveDataField.sql 18 29 29 ProductOrigin TProductOrigin "���������� �� ���������� �� ��������������" 1

/include _InsertDocItemActiveDataField.sql 18 30 30 BOIOrderType TBOIOrderType "������" 1

/include _InsertDocItemActiveDataType.sql 19 TProductEx "TProduct"

/include _InsertDocItemActiveDataField.sql 19 1 1 Material TProduct "���" 1

/include _InsertDocItemActiveDataField.sql 19 2 2 MaterialTechQuantity float "������������ ���������� ���" 1

/include _InsertDocItemActiveDataType.sql 20 TDept "TTreeNode"

/include _InsertDocItemActiveDataField.sql 20 1 1 DeptIdentifier string "���" 1

/include _InsertDocItemActiveDataField.sql 20 2 2 BeginDate TDate "������ - ������" 1

/include _InsertDocItemActiveDataField.sql 20 3 3 EndDate TDate "������ - ����" 1

/include _InsertDocItemActiveDataField.sql 20 4 4 IsBranch boolean "� �� ������" 1

/include _InsertDocItemActiveDataField.sql 20 5 5 IsStore boolean "� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 20 6 6 IsFinancialStore boolean "� ��������� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 20 7 7 IsExternal boolean "� ������" 1

/include _InsertDocItemActiveDataField.sql 20 8 8 IsRecurrent boolean "� ��������" 1

/include _InsertDocItemActiveDataField.sql 20 9 9 Product TProduct "���" 1

/include _InsertDocItemActiveDataType.sql 21 TBaseGroup ""

/include _InsertDocItemActiveDataField.sql 21 1 1 GroupProduct TProduct "��� ���" 1

/include _InsertDocItemActiveDataField.sql 21 2 2 GroupDept TDept "����" 1

/include _InsertDocItemActiveDataField.sql 21 3 3 BaseGroupNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 21 4 4 BaseGroupName string "������������" 1

/include _InsertDocItemActiveDataType.sql 22 TCompanyType ""

/include _InsertDocItemActiveDataField.sql 22 1 1 CompanyTypeName string "������������" 1

/include _InsertDocItemActiveDataField.sql 22 2 2 CompanyTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 23 TCountry ""

/include _InsertDocItemActiveDataField.sql 23 1 1 CountryAbbrev string "�����������" 1

/include _InsertDocItemActiveDataField.sql 23 2 2 CountryName string "������������" 1

/include _InsertDocItemActiveDataType.sql 24 TCraftType ""

/include _InsertDocItemActiveDataField.sql 24 1 1 CraftTypeNo integer "���" 1

/include _InsertDocItemActiveDataField.sql 24 2 2 CraftTypeName string "������������" 1

/include _InsertDocItemActiveDataType.sql 25 TCraft ""

/include _InsertDocItemActiveDataField.sql 25 1 1 CraftNo integer "���" 1

/include _InsertDocItemActiveDataField.sql 25 2 2 CraftName string "������������" 1

/include _InsertDocItemActiveDataField.sql 25 3 3 CraftType TCraftType "��������������� ����� ��������" 1

/include _InsertDocItemActiveDataType.sql 26 TCurrency ""

/include _InsertDocItemActiveDataField.sql 26 1 1 CurrencyName string "������������" 1

/include _InsertDocItemActiveDataField.sql 26 2 2 CurrencyAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 27 TPartnerClass ""

/include _InsertDocItemActiveDataField.sql 27 1 1 PartnerClassName string "������������" 1

/include _InsertDocItemActiveDataField.sql 27 2 2 PartnerClassAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 28 TLanguage ""

/include _InsertDocItemActiveDataField.sql 28 1 1 LanguageName string "������������" 1

/include _InsertDocItemActiveDataType.sql 29 TEducation ""

/include _InsertDocItemActiveDataField.sql 29 1 1 EducationName string "������������" 1

/include _InsertDocItemActiveDataField.sql 29 2 2 EducationShortName string "������ ������������" 1

/include _InsertDocItemActiveDataType.sql 30 TPartner ""

/include _InsertDocItemActiveDataField.sql 30 1 1 PartnerNo integer "���" 1

/include _InsertDocItemActiveDataField.sql 30 2 2 PartnerClass TPartnerClass "����" 1

/include _InsertDocItemActiveDataField.sql 30 3 3 PartnerShortName string "������ ������������" 1

/include _InsertDocItemActiveDataField.sql 30 4 4 PartnerFullName string "����� ������������" 1

/include _InsertDocItemActiveDataField.sql 30 5 5 Country TCountry "�������" 1

/include _InsertDocItemActiveDataField.sql 30 6 6 State string "������" 1

/include _InsertDocItemActiveDataField.sql 30 7 7 Region string "������" 1

/include _InsertDocItemActiveDataField.sql 30 8 8 City string "����" 1

/include _InsertDocItemActiveDataField.sql 30 9 9 Zip string "�������� ���" 1

/include _InsertDocItemActiveDataField.sql 30 10 10 Address string "�����" 1

/include _InsertDocItemActiveDataField.sql 30 11 11 Language TLanguage "���� �� ��������������" 1

/include _InsertDocItemActiveDataField.sql 30 12 12 CompanyName string "��: ������������" 1

/include _InsertDocItemActiveDataField.sql 30 13 13 CompanyType TCompanyType "��: ���" 1

/include _InsertDocItemActiveDataField.sql 30 14 14 CompanyTaxNo integer "��: ������� �����" 1

/include _InsertDocItemActiveDataField.sql 30 15 15 CompanyBulstat string "��: �������" 1

/include _InsertDocItemActiveDataField.sql 30 16 16 CompanyIsVatRegistered boolean "��: ����������� �� ���" 1

/include _InsertDocItemActiveDataField.sql 30 17 17 PersonFirstName string "����: ���" 1

/include _InsertDocItemActiveDataField.sql 30 18 18 PersonMiddleName string "����: �������" 1

/include _InsertDocItemActiveDataField.sql 30 19 19 PersonLastName string "����: �������" 1

/include _InsertDocItemActiveDataField.sql 30 20 20 PersonAbbrev string "����: �����������" 1

/include _InsertDocItemActiveDataField.sql 30 21 21 PersonEGN string "����: ���" 1

/include _InsertDocItemActiveDataField.sql 30 22 22 PersonBirthDate TDate "����: ���� �� �������" 1

/include _InsertDocItemActiveDataField.sql 30 23 23 PersonEducation TEducation "����: �����������" 1

/include _InsertDocItemActiveDataType.sql 31 TEmployeeDisciplineRating ""

/include _InsertDocItemActiveDataField.sql 31 1 1 NegativeDisciplinePoints integer "����������� �����" 1

/include _InsertDocItemActiveDataField.sql 31 2 2 PositiveDisciplinePoints integer "����������� �����" 1

/include _InsertDocItemActiveDataType.sql 32 TEmployee "TPartner"

/include _InsertDocItemActiveDataField.sql 32 1 1 EmployeeProfessions string "������� ����������� �� �������� ����" 1

/include _InsertDocItemActiveDataField.sql 32 2 2 CurrentDisciplineRating TEmployeeDisciplineRating "������������� ������ (�����)" 1

/include _InsertDocItemActiveDataType.sql 33 TGlobals ""

/include _InsertDocItemActiveDataField.sql 33 1 1 BaseCurrency TCurrency "������� ������" 1

/include _InsertDocItemActiveDataField.sql 33 2 2 SecondaryCurrency TCurrency "�������� ������" 1

/include _InsertDocItemActiveDataType.sql 34 TDocItem ""

/include _InsertDocItemActiveDataField.sql 34 1 1 DocItemNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 34 2 2 DocItemTypeName string "���" 1

/include _InsertDocItemActiveDataField.sql 34 3 3 DocItemName string "������������" 1

/include _InsertDocItemActiveDataField.sql 34 4 4 DevelopEmployee TEmployee "����������" 1

/include _InsertDocItemActiveDataField.sql 34 5 5 DevelopDateTime TDateTime "���� � ��� �� ������������" 1

/include _InsertDocItemActiveDataField.sql 34 6 6 AuthorizeEmployee TEmployee "�����������" 1

/include _InsertDocItemActiveDataField.sql 34 7 7 AuthorizeDateTime TDateTime "���� � ��� �� ������������" 1

/include _InsertDocItemActiveDataField.sql 34 8 8 ApproveEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 34 9 9 ApproveDateTime TDateTime "���� � ��� �� ������������" 1

/include _InsertDocItemActiveDataField.sql 34 10 10 Notes string "�������" 1

/include _InsertDocItemActiveDataField.sql 34 11 11 IsInactive boolean "�������" 1

/include _InsertDocItemActiveDataType.sql 35 TDocItems ""

/include _InsertDocItemActiveDataField.sql 35 1 1 DocItem TDocItem "���" 1

/include _InsertDocItemActiveDataType.sql 36 TDoc ""

/include _InsertDocItemActiveDataField.sql 36 1 1 DocEmptinessRequirementName string "���� ������������" 1

/include _InsertDocItemActiveDataField.sql 36 2 2 IsComplete boolean "������ ����������" 1

/include _InsertDocItemActiveDataField.sql 36 3 3 DocItems TDocItems "���-��" 1

/include _InsertDocItemActiveDataType.sql 1 TBaseObjectDocItem ""

/include _InsertDocItemActiveDataField.sql 1 1 1 Doc TDoc "����" 1

/include _InsertDocItemActiveDataField.sql 1 2 2 DocItem TDocItem "���" 1

/include _InsertDocItemActiveDataField.sql 1 3 3 Globals TGlobals "�������� �����" 1

/include _InsertDocItemActiveDataType.sql 37 TEngineeringOrderType ""

/include _InsertDocItemActiveDataField.sql 37 1 1 EngineeringOrderTypeName string "������������" 1

/include _InsertDocItemActiveDataField.sql 37 2 2 EngineeringOrderTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 38 TProductionOrderBaseType ""

/include _InsertDocItemActiveDataField.sql 38 1 1 ProductionOrderBaseTypeName string "������������" 1

/include _InsertDocItemActiveDataField.sql 38 2 2 ProductionOrderBaseTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 39 TProductionOrderType ""

/include _InsertDocItemActiveDataField.sql 39 1 1 ProductionOrderTypeName string "������������" 1

/include _InsertDocItemActiveDataField.sql 39 2 2 ProductionOrderTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataField.sql 39 3 3 ProductionOrderBaseType TProductionOrderBaseType "����� ���" 1

/include _InsertDocItemActiveDataType.sql 40 TEngineeringOrder ""

/include _InsertDocItemActiveDataField.sql 40 1 1 EngineeringOrderBranch TDept "�� ������" 1

/include _InsertDocItemActiveDataField.sql 40 2 2 EngineeringOrderNo integer "���� No" 1

/include _InsertDocItemActiveDataField.sql 40 3 3 ProductionOrderType TProductionOrderType "������" 1

/include _InsertDocItemActiveDataField.sql 40 4 4 EngineeringOrderType TEngineeringOrderType "���" 1

/include _InsertDocItemActiveDataField.sql 40 5 5 Priority TPriority "���������" 1

/include _InsertDocItemActiveDataField.sql 40 6 6 OrderDept TDept "�� ���������" 1

/include _InsertDocItemActiveDataField.sql 40 7 7 Product TProduct "��������� �����" 1

/include _InsertDocItemActiveDataField.sql 40 8 8 ThoroughlyEngineeredProduct TProduct "��������� ����� ������" 1

/include _InsertDocItemActiveDataField.sql 40 9 9 EngineeringDept TDept "�� ����������" 1

/include _InsertDocItemActiveDataField.sql 40 10 10 EngineeringEmployee TEmployee "������� �����-���" 1

/include _InsertDocItemActiveDataField.sql 40 11 11 EngineeringPlanDateInterval TDateInterval "������ ������� �������� �� ����" 1

/include _InsertDocItemActiveDataField.sql 40 12 12 ActivateEmployee TEmployee "���������" 1

/include _InsertDocItemActiveDataField.sql 40 13 13 ActivateDateTime TDateTime "���� � ��� �� ����������" 1

/include _InsertDocItemActiveDataField.sql 40 14 14 CloseEmployee TEmployee "���������" 1

/include _InsertDocItemActiveDataField.sql 40 15 15 CloseDateTime TDateTime "���� � ��� �� �����������" 1

/include _InsertDocItemActiveDataField.sql 40 16 16 AnnulEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 40 17 17 AnnulDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 40 18 18 CreateEmployee TEmployee "������" 1

/include _InsertDocItemActiveDataField.sql 40 19 19 CreateDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 40 20 20 ChangeEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 40 21 21 ChangeDateTime TDateTime "���� � ��� �� �������" 1

/include _InsertDocItemActiveDataField.sql 40 22 22 ChangeCount integer "���� �������" 1

/include _InsertDocItemActiveDataType.sql 41 TModel ""

/include _InsertDocItemActiveDataField.sql 41 1 1 Identifier string "�������������" 1

/include _InsertDocItemActiveDataType.sql 42 TModelLine ""

/include _InsertDocItemActiveDataField.sql 42 1 1 NoAsText string "�����" 1

/include _InsertDocItemActiveDataField.sql 42 2 2 ForkNo integer "��" 1

/include _InsertDocItemActiveDataField.sql 42 3 3 Detail TProduct "���" 1

/include _InsertDocItemActiveDataField.sql 42 4 4 DetailTechQuantity float "���������� ������������ ���������� ���" 1

/include _InsertDocItemActiveDataField.sql 42 5 5 LineDetailTechQuantity float "���� ������������ ���������� ���" 1

/include _InsertDocItemActiveDataField.sql 42 6 6 Notes string "�������" 1

/include _InsertDocItemActiveDataField.sql 42 7 7 Material TProduct "���" 1

/include _InsertDocItemActiveDataField.sql 42 8 8 MaterialTechQuantity float "������������ ���������� ��� �� ������� ���" 1

/include _InsertDocItemActiveDataField.sql 42 9 9 IsForSingleUse boolean "��� �������" 1

/include _InsertDocItemActiveDataField.sql 42 10 10 ConstructionNotes string "������� �� ��������" 1

/include _InsertDocItemActiveDataField.sql 42 11 11 IsComplete boolean "���������� ����������" 1

/include _InsertDocItemActiveDataField.sql 42 12 12 Model TModel "�����" 1

/include _InsertDocItemActiveDataType.sql 43 TModelStage ""

/include _InsertDocItemActiveDataField.sql 43 1 1 StageNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 43 2 2 StageDept TDept "����" 1

/include _InsertDocItemActiveDataField.sql 43 3 3 TreatmentWorkdays integer "����� �� ���������� (���. ���)" 1

/include _InsertDocItemActiveDataField.sql 43 4 4 OutgoingWorkdays integer "����� �� ����� (���. ���)" 1

/include _InsertDocItemActiveDataField.sql 43 5 5 IsAutoMovement boolean "����������� ��������" 1

/include _InsertDocItemActiveDataField.sql 43 6 6 ExternalWorkPrice float "�������� �������� �� ���������� �� ���� ��� ������ ��" 1

/include _InsertDocItemActiveDataField.sql 43 7 7 ModelLine TModelLine "��� �� �����" 1

/include _InsertDocItemActiveDataType.sql 44 TProfession ""

/include _InsertDocItemActiveDataField.sql 44 1 1 ProfessionName string "������������" 1

/include _InsertDocItemActiveDataField.sql 44 2 2 HourPrice float "��� (BGL/���)" 1

/include _InsertDocItemActiveDataType.sql 45 TOperationType ""

/include _InsertDocItemActiveDataField.sql 45 1 1 OperationTypeName string "������������" 1

/include _InsertDocItemActiveDataField.sql 45 2 2 OperationTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 46 TModelOperation ""

/include _InsertDocItemActiveDataField.sql 46 1 1 OperationNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 46 2 2 OperationVariantNo integer "������� No" 1

/include _InsertDocItemActiveDataField.sql 46 3 3 OperationType TOperationType "���" 1

/include _InsertDocItemActiveDataField.sql 46 4 4 OperationDept TDept "����" 1

/include _InsertDocItemActiveDataField.sql 46 5 5 Profession TProfession "����������: ��������� ��������" 1

/include _InsertDocItemActiveDataField.sql 46 6 6 EffortCoef float "����������: ����. ���." 1

/include _InsertDocItemActiveDataField.sql 46 7 7 HourTechQuantity float "����������: �������� ���������������� (�-��/���)" 1

/include _InsertDocItemActiveDataField.sql 46 8 8 SetupProfession TProfession "���������: ��������� ��������" 1

/include _InsertDocItemActiveDataField.sql 46 9 9 SetupEffortCoef float "���������: ����. ���." 1

/include _InsertDocItemActiveDataField.sql 46 10 10 SetupHourTechQuantity float "���������: �������� ���������������� (�-��/���)" 1

/include _InsertDocItemActiveDataField.sql 46 11 11 ProgramToolProduct TProduct "���" 1

/include _InsertDocItemActiveDataField.sql 46 12 12 SpecificToolProduct TProduct "���" 1

/include _InsertDocItemActiveDataField.sql 46 13 13 SpecificToolDetailTechQuantity float "���: ���������� �� ������� ���" 1

/include _InsertDocItemActiveDataField.sql 46 14 14 TypicalToolProduct TProduct "���" 1

/include _InsertDocItemActiveDataField.sql 46 15 15 TypicalToolDetailTechQuantity float "���: ���������� �� ������� ���" 1

/include _InsertDocItemActiveDataField.sql 46 16 16 TreatmentBeginWorkdayNo integer "������� ��� �� �����" 1

/include _InsertDocItemActiveDataField.sql 46 17 17 TreatmentWorkdays integer "��������������� (���)" 1

/include _InsertDocItemActiveDataField.sql 46 18 18 HasSpecialControl boolean "������������� ������� ���� ����������" 1

/include _InsertDocItemActiveDataField.sql 46 19 19 Notes string "�������" 1

/include _InsertDocItemActiveDataField.sql 46 20 20 SetupCount integer "���� ���������" 1

/include _InsertDocItemActiveDataField.sql 46 21 21 ModelStage TModelStage "����" 1

/include _InsertDocItemActiveDataType.sql 47 TShift ""

/include _InsertDocItemActiveDataField.sql 47 1 1 ShiftName string "������������" 1

/include _InsertDocItemActiveDataField.sql 47 2 2 ShiftAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 48 TOccupationPhase ""

/include _InsertDocItemActiveDataField.sql 48 1 1 OccupationPhaseName string "������������" 1

/include _InsertDocItemActiveDataType.sql 49 TDateUnit ""

/include _InsertDocItemActiveDataField.sql 49 1 1 DateUnitName string "������������" 1

/include _InsertDocItemActiveDataField.sql 49 2 2 DateUnitAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 50 TSalary ""

/include _InsertDocItemActiveDataField.sql 50 1 1 Currency TCurrency "������" 1

/include _InsertDocItemActiveDataField.sql 50 2 2 Salary float "�������" 1

/include _InsertDocItemActiveDataField.sql 50 3 3 AsText string "������" 1

/include _InsertDocItemActiveDataField.sql 50 4 4 DateUnit TDateUnit "������� ������" 1

/include _InsertDocItemActiveDataType.sql 51 TFloatRange ""

/include _InsertDocItemActiveDataField.sql 51 1 1 MinValue float "��������� ��������" 1

/include _InsertDocItemActiveDataField.sql 51 2 2 MaxValue float "���������� ��������" 1

/include _InsertDocItemActiveDataType.sql 52 TOccupation ""

/include _InsertDocItemActiveDataField.sql 52 1 1 OccupationName string "������������" 1

/include _InsertDocItemActiveDataField.sql 52 2 2 OccupationDept TDept "��� �������������" 1

/include _InsertDocItemActiveDataField.sql 52 3 3 OccupationDateInterval TDateInterval "������� �������� �� ����������" 1

/include _InsertDocItemActiveDataField.sql 52 4 4 Shift TShift "�����" 1

/include _InsertDocItemActiveDataField.sql 52 5 5 OccupationLevel integer "������" 1

/include _InsertDocItemActiveDataField.sql 52 6 6 Notes string "�������" 1

/include _InsertDocItemActiveDataField.sql 52 7 7 IsMain boolean "� �������" 1

/include _InsertDocItemActiveDataField.sql 52 8 8 OccupationPhase TOccupationPhase "����" 1

/include _InsertDocItemActiveDataField.sql 52 9 9 Product TProduct "����" 1

/include _InsertDocItemActiveDataField.sql 52 10 10 Craft TCraft "��������" 1

/include _InsertDocItemActiveDataField.sql 52 11 11 CurrentBaseSalary TSalary "������ ������ ������� (������)" 1

/include _InsertDocItemActiveDataField.sql 52 12 12 CurrentSalaryRatioCoefRange TFloatRange "����� �������� (�����)" 1

/include _InsertDocItemActiveDataField.sql 52 13 13 OccupationWorkDepts string "�� ������ �� ����������" 1

/include _InsertDocItemActiveDataField.sql 52 14 14 OccupationProfessions string "���������� �������� ����" 1

/include _InsertDocItemActiveDataType.sql 53 TOperationMovementType ""

/include _InsertDocItemActiveDataField.sql 53 1 1 OperationMovementTypeName string "������������" 1

/include _InsertDocItemActiveDataField.sql 53 2 2 OperationMovementTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 54 TTeam ""

/include _InsertDocItemActiveDataField.sql 54 1 1 TeamNo integer "���" 1

/include _InsertDocItemActiveDataField.sql 54 2 2 TeamName string "������������" 1

/include _InsertDocItemActiveDataField.sql 54 3 3 IsActive boolean "�������" 1

/include _InsertDocItemActiveDataField.sql 54 4 4 Dept TDept "��� �� �������" 1

/include _InsertDocItemActiveDataType.sql 55 TOperationMovement ""

/include _InsertDocItemActiveDataField.sql 55 1 1 OperationMovementBranch TDept "�� ������" 1

/include _InsertDocItemActiveDataField.sql 55 2 2 OperationMovementNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 55 3 3 OperationMovementType TOperationMovementType "���" 1

/include _InsertDocItemActiveDataField.sql 55 4 4 OperationMovementDateTime TDateTime "���� � ���" 1

/include _InsertDocItemActiveDataField.sql 55 5 5 FromOperation TModelOperation "�� ��������" 1

/include _InsertDocItemActiveDataField.sql 55 6 6 ToOperation TModelOperation "��� ��������" 1

/include _InsertDocItemActiveDataField.sql 55 7 7 ToDept TDept "��� �� �� ����" 1

/include _InsertDocItemActiveDataField.sql 55 8 8 FromEmployee TEmployee "�� ��������" 1

/include _InsertDocItemActiveDataField.sql 55 9 9 FromTeam TTeam "�� �������" 1

/include _InsertDocItemActiveDataField.sql 55 10 10 ToEmployee TEmployee "��� ��������" 1

/include _InsertDocItemActiveDataField.sql 55 11 11 ToTeam TTeam "��� �������" 1

/include _InsertDocItemActiveDataField.sql 55 12 12 WasteDocNo string "��� �� ����: No" 1

/include _InsertDocItemActiveDataField.sql 55 13 13 WasteDocDate TDate "��� �� ����: ����" 1

/include _InsertDocItemActiveDataField.sql 55 14 14 WorkDetailTechQuantity float "���������� ���������� ���" 1

/include _InsertDocItemActiveDataField.sql 55 15 15 TotalDetailTechQuantity float "���� ���������� ���" 1

/include _InsertDocItemActiveDataField.sql 55 16 16 QADetailTechQuantity float "��������� ���������� ���" 1

/include _InsertDocItemActiveDataField.sql 55 17 17 WorkProductTechQuantity float "���������� ���������� ���" 1

/include _InsertDocItemActiveDataField.sql 55 18 18 TotalProductTechQuantity float "���� ���������� ���" 1

/include _InsertDocItemActiveDataField.sql 55 19 19 QAProductTechQuantity float "��������� ���������� ���" 1

/include _InsertDocItemActiveDataField.sql 55 20 20 QAEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 55 21 21 CreateEmployee TEmployee "������" 1

/include _InsertDocItemActiveDataField.sql 55 22 22 CreateDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 55 23 23 StornoEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 55 24 24 StornoDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 55 25 25 TotalPrice float "��1" 1

/include _InsertDocItemActiveDataType.sql 56 TProcess ""

/include _InsertDocItemActiveDataField.sql 56 1 1 ProcessName string "�����������" 1

/include _InsertDocItemActiveDataField.sql 56 2 2 ProcessAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 57 TProcessObject ""

/include _InsertDocItemActiveDataField.sql 57 1 1 ProcessObjectIdentifier string "�������������" 1

/include _InsertDocItemActiveDataType.sql 58 TProductStore ""

/include _InsertDocItemActiveDataField.sql 58 1 1 Product TProduct "��������� �����" 1

/include _InsertDocItemActiveDataField.sql 58 2 2 Store TDept "��" 1

/include _InsertDocItemActiveDataField.sql 58 3 3 MinQuantity float "��������� ����������" 1

/include _InsertDocItemActiveDataField.sql 58 4 4 DateInterval TDateInterval "������� ��������" 1

/include _InsertDocItemActiveDataType.sql 59 TStoreDealType ""

/include _InsertDocItemActiveDataField.sql 59 1 1 InOut boolean "�����������/�������" 1

/include _InsertDocItemActiveDataField.sql 59 2 2 StoreDealTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 60 TStoreDeal ""

/include _InsertDocItemActiveDataField.sql 60 1 1 Store TDept "�� ���������" 1

/include _InsertDocItemActiveDataField.sql 60 2 2 StoreDealType TStoreDealType "���" 1

/include _InsertDocItemActiveDataField.sql 60 3 3 StoreDealDate TDate "����" 1

/include _InsertDocItemActiveDataField.sql 60 4 4 StoreDealNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 60 5 5 StoreDealIdentifier string "�������������" 1

/include _InsertDocItemActiveDataField.sql 60 6 6 Product TProduct "��������� �����" 1

/include _InsertDocItemActiveDataField.sql 60 7 7 WantedQuantity float "�������� ������� ���������" 1

/include _InsertDocItemActiveDataField.sql 60 8 8 Quantity float "������� ����������" 1

/include _InsertDocItemActiveDataField.sql 60 9 9 AccountQuantity float "���������� ����������" 1

/include _InsertDocItemActiveDataField.sql 60 10 10 Currency TCurrency "������" 1

/include _InsertDocItemActiveDataField.sql 60 11 11 TotalPrice float "��������� ���������� ����������" 1

/include _InsertDocItemActiveDataField.sql 60 12 12 StoreEmployee TEmployee "���" 1

/include _InsertDocItemActiveDataField.sql 60 13 13 OtherEmployee TEmployee "���/���" 1

/include _InsertDocItemActiveDataField.sql 60 14 14 RequestEmployee TEmployee "������� ����������" 1

/include _InsertDocItemActiveDataField.sql 60 15 15 Dept TDept "�� ����������/�������" 1

/include _InsertDocItemActiveDataField.sql 60 16 16 BoundProcess TProcess "�������� �����������: ���" 1

/include _InsertDocItemActiveDataField.sql 60 17 17 BoundProcessObject TProcessObject "�������� �����������: ID" 1

/include _InsertDocItemActiveDataField.sql 60 18 18 CreateEmployee TEmployee "������" 1

/include _InsertDocItemActiveDataField.sql 60 19 19 CreateDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 60 20 20 StornoEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 60 21 21 StornoDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataType.sql 61 TBaseGroupDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 61 1 10 BaseGroup TBaseGroup "������ �����" 1

/include _InsertDocItemActiveDataType.sql 62 TDeptDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 62 1 10 Dept TDept "��" 1

/include _InsertDocItemActiveDataType.sql 63 TEmployeeDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 63 1 10 Employee TEmployee "��������" 1

/include _InsertDocItemActiveDataType.sql 64 TEngineeringOrderDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 64 1 10 EngineeringOrder TEngineeringOrder "����" 1

/include _InsertDocItemActiveDataType.sql 65 TModelOperationDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 65 1 10 ModelOperation TModelOperation "��������" 1

/include _InsertDocItemActiveDataType.sql 66 TModelStageDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 66 1 10 ModelStage TModelStage "����" 1

/include _InsertDocItemActiveDataType.sql 67 TOccupationDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 67 1 10 Occupation TOccupation "��������" 1

/include _InsertDocItemActiveDataType.sql 68 TOperationMovementDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 68 1 10 OperationMovement TOperationMovement "����������� ��������" 1

/include _InsertDocItemActiveDataType.sql 69 TPartnerDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 69 1 10 Partner TPartner "��������" 1

/include _InsertDocItemActiveDataType.sql 70 TProductDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 70 1 10 Product TProductEx "��������� �����" 1

/include _InsertDocItemActiveDataType.sql 71 TProductStoreDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 71 1 10 ProductStore TProductStore "�����" 1

/include _InsertDocItemActiveDataType.sql 72 TProfessionDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 72 1 10 Profession TProfession "�������� ����" 1

/include _InsertDocItemActiveDataType.sql 73 TStoreDealDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 73 1 10 StoreDeal TStoreDeal "�����������/�������" 1

/include _InsertDocItemActiveDataType.sql 74 TTeamDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 74 1 10 Team TTeam "�������" 1

/include _InsertDocItemActiveDataType.sql 75 TEmpAvailModifierType ""

/include _InsertDocItemActiveDataField.sql 75 1 1 EmpAvailModifierTypeName string "������������" 1

/include _InsertDocItemActiveDataField.sql 75 2 2 EmpAvailModifierTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 76 TEmpDayAbsenceReason ""

/include _InsertDocItemActiveDataField.sql 76 1 1 EmpDayAbsenceReasonName string "������������" 1

/include _InsertDocItemActiveDataField.sql 76 2 2 EmpDayAbsenceReasonAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 77 TEmpDayAbsenceDocType ""

/include _InsertDocItemActiveDataField.sql 77 1 1 EmpDayAbsenceDocName string "������������" 1

/include _InsertDocItemActiveDataType.sql 78 TEmpHourAvailModifierReason ""

/include _InsertDocItemActiveDataField.sql 78 1 1 EmpHourAvailModifierReasonName string "������������" 1

/include _InsertDocItemActiveDataType.sql 79 TEmpAvailModifier ""

/include _InsertDocItemActiveDataField.sql 79 1 1 Employee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 79 2 2 AuthorizeEmployee TEmployee "�������" 1

/include _InsertDocItemActiveDataField.sql 79 3 3 EmpAvailModifierType TEmpAvailModifierType "��� �����������" 1

/include _InsertDocItemActiveDataField.sql 79 4 4 DateInterval TDateInterval "������� ��������" 1

/include _InsertDocItemActiveDataField.sql 79 5 5 EmpDayAbsenceReason TEmpDayAbsenceReason "���������� �����������: �������" 1

/include _InsertDocItemActiveDataField.sql 79 6 6 EmpDayAbsenceDocType TEmpDayAbsenceDocType "���������� �����������: ��� ��������" 1

/include _InsertDocItemActiveDataField.sql 79 7 7 EmpDayAbsenceDocNo string "���������� �����������: ��������: �����" 1

/include _InsertDocItemActiveDataField.sql 79 8 8 EmpDayAbsenceDocDate TDate "���������� �����������: ��������: ����" 1

/include _InsertDocItemActiveDataField.sql 79 9 9 EmpDayAbsenceDocIssuer string "���������� �����������: ��������: ������� ��" 1

/include _InsertDocItemActiveDataField.sql 79 10 10 EmpHourAvailModifierReason TEmpHourAvailModifierReason "�������� �����������: �������" 1

/include _InsertDocItemActiveDataField.sql 79 11 11 TimeInterval TTimeInterval "�������� �����������: ������ ��������" 1

/include _InsertDocItemActiveDataField.sql 79 12 12 DurationHours float "�������� �����������: ��������������� (����)" 1

/include _InsertDocItemActiveDataField.sql 79 13 13 IsPersonalWorkdaysOnly boolean "�������� �����������: ���� �� ������� ������� ���" 1

/include _InsertDocItemActiveDataField.sql 79 14 14 Notes string "�������" 1

/include _InsertDocItemActiveDataField.sql 79 15 15 CreateEmployee TEmployee "�����������" 1

/include _InsertDocItemActiveDataField.sql 79 16 16 CreateDateTime TDateTime "���� � ��� �� ������������" 1

/include _InsertDocItemActiveDataField.sql 79 17 17 StornoEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 79 18 18 StornoDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataType.sql 80 TEmpAvailModifierDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 80 1 10 EmpAvailModifier TEmpAvailModifier "����������� �� ����������" 1

/include _InsertDocItemActiveDataType.sql 81 TBudgetOrderRegularityType ""

/include _InsertDocItemActiveDataField.sql 81 1 1 BudgetOrderRegularityTypeName string "������������" 1

/include _InsertDocItemActiveDataField.sql 81 2 2 BudgetOrderRegularityTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 82 TBudgetOrderClass ""

/include _InsertDocItemActiveDataField.sql 82 1 1 BudgetOrderClassName string "������������" 1

/include _InsertDocItemActiveDataType.sql 83 TBudgetOrder ""

/include _InsertDocItemActiveDataField.sql 83 1 1 BudgetOrderBranch TDept "�� ������" 1

/include _InsertDocItemActiveDataField.sql 83 2 2 BudgetOrderNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 83 3 3 BudgetOrderRegularityType TBudgetOrderRegularityType "����� �� ��������" 1

/include _InsertDocItemActiveDataField.sql 83 4 4 BudgetOrderClass TBudgetOrderClass "����" 1

/include _InsertDocItemActiveDataField.sql 83 5 5 GeneratorDept TDept "�� ����������" 1

/include _InsertDocItemActiveDataField.sql 83 6 6 DeveloperDept TDept "�� ������������" 1

/include _InsertDocItemActiveDataField.sql 83 7 7 Description string "��������" 1

/include _InsertDocItemActiveDataField.sql 83 8 8 DateInterval TDateInterval "������� �������� �� ��������" 1

/include _InsertDocItemActiveDataField.sql 83 9 9 TotalPrice float "�������� ��������" 1

/include _InsertDocItemActiveDataField.sql 83 10 10 CreateEmployee TEmployee "������" 1

/include _InsertDocItemActiveDataField.sql 83 11 11 CreateDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 83 12 12 ChangeEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 83 13 13 ChangeDateTime TDateTime "���� � ��� �� �������" 1

/include _InsertDocItemActiveDataField.sql 83 14 14 AnnulEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 83 15 15 AnnulDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 83 16 16 CloseEmployee TEmployee "���������" 1

/include _InsertDocItemActiveDataField.sql 83 17 17 CloseDateTime TDateTime "���� � ��� �� �����������" 1

/include _InsertDocItemActiveDataType.sql 84 TBOIDistributionType ""

/include _InsertDocItemActiveDataField.sql 84 1 1 BOIDistributionTypeName string "������������" 1

/include _InsertDocItemActiveDataField.sql 84 2 2 BOIDistributionTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 85 TBudgetOrderItem ""

/include _InsertDocItemActiveDataField.sql 85 1 1 BudgetOrder TBudgetOrder "������� �� �����" 1

/include _InsertDocItemActiveDataField.sql 85 2 2 BudgetOrderItemNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 85 3 3 BudgetProduct TProduct "������" 1

/include _InsertDocItemActiveDataField.sql 85 4 4 Dept TDept "�� ����������" 1

/include _InsertDocItemActiveDataField.sql 85 5 5 DistributionType TBOIDistributionType "����� �� �����������" 1

/include _InsertDocItemActiveDataField.sql 85 6 6 DateInterval TDateInterval "������� �������� �� ��������" 1

/include _InsertDocItemActiveDataField.sql 85 7 7 DistributedSinglePrice float "�������������" 1

/include _InsertDocItemActiveDataField.sql 85 8 8 DistributionDateUnit TDateUnit "������" 1

/include _InsertDocItemActiveDataField.sql 85 9 9 TotalPrice float "���� ��������" 1

/include _InsertDocItemActiveDataField.sql 85 10 10 BudgetOrderPricePercent integer "������� �� ������� �� �����" 1

/include _InsertDocItemActiveDataField.sql 85 11 11 IsConfirmed boolean "� ��������" 1

/include _InsertDocItemActiveDataField.sql 85 12 12 IsForReconsideration float "� �� ��������������" 1

/include _InsertDocItemActiveDataField.sql 85 13 13 IsCanceled boolean "� �������" 1

/include _InsertDocItemActiveDataField.sql 85 14 14 DecisionEnterEmployee TEmployee "����� �������" 1

/include _InsertDocItemActiveDataField.sql 85 15 15 DecisionEnterDate TDate "���� �� ��������� �� �������" 1

/include _InsertDocItemActiveDataField.sql 85 16 16 DecisionApproveEmployee TEmployee "���� �������" 1

/include _InsertDocItemActiveDataField.sql 85 17 17 DecisionApproveDate TDate "���� �� ������� �� �������" 1

/include _InsertDocItemActiveDataField.sql 85 18 18 CreateEmployee TEmployee "������" 1

/include _InsertDocItemActiveDataField.sql 85 19 19 CreateDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 85 20 20 ChangeEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 85 21 21 ChangeDateTime TDateTime "���� � ��� �� �������" 1

/include _InsertDocItemActiveDataField.sql 85 22 22 AnnulEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 85 23 23 AnnulDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 85 24 24 CloseEmployee TEmployee "���������" 1

/include _InsertDocItemActiveDataField.sql 85 25 25 CloseDateTime TDateTime "���� � ��� �� �����������" 1

/include _InsertDocItemActiveDataType.sql 86 TBudgetOrderDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 86 1 10 BudgetOrder TBudgetOrder "������� �� �����" 1

/include _InsertDocItemActiveDataType.sql 87 TBudgetOrderItemDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 87 1 10 BudgetOrderItem TBudgetOrderItem "����� �� ������� �� �����" 1

/include _InsertDocItemActiveDataType.sql 88 TDisciplineEventType ""

/include _InsertDocItemActiveDataField.sql 88 1 1 DisciplineEventTypeName string "������������" 1

/include _InsertDocItemActiveDataField.sql 88 2 2 DisciplinePoints integer "������������� �����" 1

/include _InsertDocItemActiveDataType.sql 89 TEmployeeDisciplineEvent ""

/include _InsertDocItemActiveDataField.sql 89 1 1 Employee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 89 2 2 DisciplineEventDate TDate "����" 1

/include _InsertDocItemActiveDataField.sql 89 3 3 DisciplineEventType TDisciplineEventType "���" 1

/include _InsertDocItemActiveDataField.sql 89 4 4 AuthorizeEmployee TEmployee "���������" 1

/include _InsertDocItemActiveDataField.sql 89 5 5 DisciplineEventComment string "��������" 1

/include _InsertDocItemActiveDataField.sql 89 6 6 CreateEmployee TEmployee "������" 1

/include _InsertDocItemActiveDataField.sql 89 7 7 CreateDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 89 8 8 StornoEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 89 9 9 StornoDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataType.sql 90 TEmployeeDisciplineEventDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 90 1 10 EmployeeDisciplineEvent TEmployeeDisciplineEvent "������������� �������" 1

/include _InsertDocItemActiveDataType.sql 91 TOccupationEmployeeAssignmentRegime ""

/include _InsertDocItemActiveDataField.sql 91 1 1 OccupationEmployeeAssignmentRegimeName string "������������" 1

/include _InsertDocItemActiveDataType.sql 92 TOccupationEmployeeAssignment ""

/include _InsertDocItemActiveDataField.sql 92 1 1 Occupation TOccupation "��������" 1

/include _InsertDocItemActiveDataField.sql 92 2 2 Employee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 92 3 3 AssignmentDateInterval TDateInterval "������� �������� �� ����������" 1

/include _InsertDocItemActiveDataField.sql 92 4 4 OccupationEmployeeAssignmentRegime TOccupationEmployeeAssignmentRegime "����� �� ����������" 1

/include _InsertDocItemActiveDataField.sql 92 5 5 Salary TSalary "������� �������" 1

/include _InsertDocItemActiveDataField.sql 92 6 6 AssignedProfessions string "��������� �������� ����" 1

/include _InsertDocItemActiveDataType.sql 93 TOccupationEmployeeAssignmentDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 93 1 10 OccupationEmployeeAssignment TOccupationEmployeeAssignment "���������� ����������" 1

/include _InsertDocItemActiveDataType.sql 94 TVatReason ""

/include _InsertDocItemActiveDataField.sql 94 1 1 No integer "No" 1

/include _InsertDocItemActiveDataField.sql 94 2 2 Name string "������������" 1

/include _InsertDocItemActiveDataField.sql 94 3 3 Abbrev string "�����������" 1

/include _InsertDocItemActiveDataField.sql 94 4 4 IntlName string "������������ (��������.)" 1

/include _InsertDocItemActiveDataField.sql 94 5 5 IntlAbbrev string "����������� (��������.)" 1

/include _InsertDocItemActiveDataType.sql 95 TInvoiceItem ""

/include _InsertDocItemActiveDataField.sql 95 1 1 Product TProduct "���" 1

/include _InsertDocItemActiveDataField.sql 95 2 2 ItemName string "������� ������������" 1

/include _InsertDocItemActiveDataField.sql 95 3 3 ItemIntlName string "������� ������������ (��������.)" 1

/include _InsertDocItemActiveDataField.sql 95 4 4 BoundProcessObject TProcessObject "���" 1

/include _InsertDocItemActiveDataField.sql 95 5 5 AccountQuantity float "���������� ����������" 1

/include _InsertDocItemActiveDataField.sql 95 6 6 AccountMeasureAbbrev string "���������� ����� ������� - �����������" 1

/include _InsertDocItemActiveDataField.sql 95 7 7 AccountMeasureIntlAbbrev string "���������� ����� ������� - ����������� (��������.)" 1

/include _InsertDocItemActiveDataField.sql 95 8 8 MarketSinglePrice float "������� ����" 1

/include _InsertDocItemActiveDataField.sql 95 9 9 DiscountPercent float "��������" 1

/include _InsertDocItemActiveDataField.sql 95 10 10 SinglePrice float "�������� ����" 1

/include _InsertDocItemActiveDataField.sql 95 11 11 TotalPrice float "����" 1

/include _InsertDocItemActiveDataType.sql 96 TInvoiceItems ""

/include _InsertDocItemActiveDataField.sql 96 1 1 InvoiceItem TInvoiceItem "��� �� �������" 1

/include _InsertDocItemActiveDataType.sql 97 TInvoice ""

/include _InsertDocItemActiveDataField.sql 97 1 1 IsProformInvoice boolean "� ��������" 1

/include _InsertDocItemActiveDataField.sql 97 2 2 InvoiceNo float "�����" 1

/include _InsertDocItemActiveDataField.sql 97 3 3 InvoiceTypeName string "���" 1

/include _InsertDocItemActiveDataField.sql 97 4 4 InvoiceTypeIntlName string "��� (��������.)" 1

/include _InsertDocItemActiveDataField.sql 97 5 5 InvoiceDate TDate "���� �� ��������" 1

/include _InsertDocItemActiveDataField.sql 97 6 6 EventDate TDate "���� �� ������� ��� �����" 1

/include _InsertDocItemActiveDataField.sql 97 7 7 InvoicePlace string "�����" 1

/include _InsertDocItemActiveDataField.sql 97 8 8 InvoiceIntlPlace string "����� (��������.)" 1

/include _InsertDocItemActiveDataField.sql 97 9 9 SellerPartner TPartner "��������" 1

/include _InsertDocItemActiveDataField.sql 97 10 10 SellerName string "�������� - ���" 1

/include _InsertDocItemActiveDataField.sql 97 11 11 SellerCity string "�������� - �������� �����" 1

/include _InsertDocItemActiveDataField.sql 97 12 12 SellerAddress string "�������� - �����" 1

/include _InsertDocItemActiveDataField.sql 97 13 13 SellerBulstat string "�������� - ���" 1

/include _InsertDocItemActiveDataField.sql 97 14 14 SellerVatNo string "�������� - ��.No �� ���" 1

/include _InsertDocItemActiveDataField.sql 97 15 15 SellerIsPerson boolean "�������� - � �����" 1

/include _InsertDocItemActiveDataField.sql 97 16 16 SellerEGN string "�������� - ���" 1

/include _InsertDocItemActiveDataField.sql 97 17 17 SellerPersonName string "�������� ��" 1

/include _InsertDocItemActiveDataField.sql 97 18 18 SellerIntlName string "�������� - ��� (��������.)" 1

/include _InsertDocItemActiveDataField.sql 97 19 19 SellerIntlCity string "�������� - �������� ����� (��������.)" 1

/include _InsertDocItemActiveDataField.sql 97 20 20 SellerIntlAddress string "�������� - ����� (��������.)" 1

/include _InsertDocItemActiveDataField.sql 97 21 21 SellerPersonIntlName string "�������� �� (��������.)" 1

/include _InsertDocItemActiveDataField.sql 97 22 22 SenderPartner TPartner "���������" 1

/include _InsertDocItemActiveDataField.sql 97 23 23 SenderName string "��������� - ���" 1

/include _InsertDocItemActiveDataField.sql 97 24 24 SenderAddress string "��������� - �����" 1

/include _InsertDocItemActiveDataField.sql 97 25 25 SenderIntlName string "��������� - ��� (��������.)" 1

/include _InsertDocItemActiveDataField.sql 97 26 26 SenderIntlAddress string "��������� - ����� (��������.)" 1

/include _InsertDocItemActiveDataField.sql 97 27 27 BuyerPartner TPartner "�������" 1

/include _InsertDocItemActiveDataField.sql 97 28 28 BuyerName string "������� - ���" 1

/include _InsertDocItemActiveDataField.sql 97 29 29 BuyerCity string "������� - �������� �����" 1

/include _InsertDocItemActiveDataField.sql 97 30 30 BuyerAddress string "������� - �����" 1

/include _InsertDocItemActiveDataField.sql 97 31 31 BuyerBulstat string "������� - ���" 1

/include _InsertDocItemActiveDataField.sql 97 32 32 BuyerVatNo string "������� - ��.No �� ���" 1

/include _InsertDocItemActiveDataField.sql 97 33 33 BuyerIsPerson boolean "������� - � �����" 1

/include _InsertDocItemActiveDataField.sql 97 34 34 BuyerEGN string "������� - ���" 1

/include _InsertDocItemActiveDataField.sql 97 35 35 BuyerPersonName string "�������� ��" 1

/include _InsertDocItemActiveDataField.sql 97 36 36 BuyerIntlName string "������� - ��� (��������.)" 1

/include _InsertDocItemActiveDataField.sql 97 37 37 BuyerIntlCity string "������� - �������� ����� (��������.)" 1

/include _InsertDocItemActiveDataField.sql 97 38 38 BuyerIntlAddress string "������� - ����� (��������.)" 1

/include _InsertDocItemActiveDataField.sql 97 39 39 BuyerPersonIntlName string "�������� �� (��������.)" 1

/include _InsertDocItemActiveDataField.sql 97 40 40 ReceiverPartner TPartner "���������" 1

/include _InsertDocItemActiveDataField.sql 97 41 41 ReceiverName string "��������� - ���" 1

/include _InsertDocItemActiveDataField.sql 97 42 42 ReceiverAddress string "��������� - �����" 1

/include _InsertDocItemActiveDataField.sql 97 43 43 ReceiverIntlName string "��������� - ��� (��������.)" 1

/include _InsertDocItemActiveDataField.sql 97 44 44 ReceiverIntlAddress string "��������� - ����� (��������.)" 1

/include _InsertDocItemActiveDataField.sql 97 45 45 Currency TCurrency "������" 1

/include _InsertDocItemActiveDataField.sql 97 46 46 VatPercent float "������� ������ ���" 1

/include _InsertDocItemActiveDataField.sql 97 47 47 TotalPrice float "����" 1

/include _InsertDocItemActiveDataField.sql 97 48 48 BaseCurrencyTotalPrice float "������� ������" 1

/include _InsertDocItemActiveDataField.sql 97 49 49 TotalPriceVat float "��� �/� ����" 1

/include _InsertDocItemActiveDataField.sql 97 50 50 BaseCurrencyTotalPriceVat float "��� �/� ������� ������" 1

/include _InsertDocItemActiveDataField.sql 97 51 51 PaymentPrice float "���� �� �������" 1

/include _InsertDocItemActiveDataField.sql 97 52 52 PaymentPriceAsLocalText string "���� �� ������� - ������" 1

/include _InsertDocItemActiveDataField.sql 97 53 53 PaymentPriceAsIntlText string "���� �� ������� - ������  (��������.)" 1

/include _InsertDocItemActiveDataField.sql 97 54 54 IsCashPayment boolean "� ����" 1

/include _InsertDocItemActiveDataField.sql 97 55 55 IBAN string "IBAN" 1

/include _InsertDocItemActiveDataField.sql 97 56 56 VatReason TVatReason "��������� �� ��������� �� ������ ��� ������������� �� �����" 1

/include _InsertDocItemActiveDataField.sql 97 57 57 Notes string "�������" 1

/include _InsertDocItemActiveDataField.sql 97 58 58 ApproveEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 97 59 59 ApproveDateTime TDateTime "���� � ��� �� ������������" 1

/include _InsertDocItemActiveDataField.sql 97 60 60 CreateEmployee TEmployee "�������" 1

/include _InsertDocItemActiveDataField.sql 97 61 61 CreateDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 97 62 62 ChangeEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 97 63 63 ChangeDateTime TDateTime "���� � ��� �� �������" 1

/include _InsertDocItemActiveDataField.sql 97 64 64 StornoEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 97 65 65 StornoDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 97 66 66 InvoiceItems TInvoiceItems "������ �� �������" 1

/include _InsertDocItemActiveDataType.sql 98 TInvoiceDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 98 1 10 Invoice TInvoice "�������" 1

/include _InsertDocItemActiveDataType.sql 99 TSaleShipment ""

/include _InsertDocItemActiveDataField.sql 99 1 1 SaleShipmentNo integer "�����" 1

/include _InsertDocItemActiveDataField.sql 99 2 2 SaleShipmentIdentifier string "�������������" 1

/include _InsertDocItemActiveDataField.sql 99 3 3 ShipmentPlanDate TDate "���� - ����" 1

/include _InsertDocItemActiveDataField.sql 99 4 4 PlanQuantity float "���� - ����������" 1

/include _InsertDocItemActiveDataField.sql 99 5 5 PlanAccountQuantity float "���� - ���������� ����������" 1

/include _InsertDocItemActiveDataField.sql 99 6 6 ShipmentDate TDate "����� - ����" 1

/include _InsertDocItemActiveDataField.sql 99 7 7 Quantity float "����� - ����������" 1

/include _InsertDocItemActiveDataField.sql 99 8 8 AccountQuantity float "����� - ���������� ����������" 1

/include _InsertDocItemActiveDataField.sql 99 9 9 ReceiveDate TDate "���� �� ����������" 1

/include _InsertDocItemActiveDataField.sql 99 10 10 InvoiceNo float "������� - �����" 1

/include _InsertDocItemActiveDataField.sql 99 11 11 IsProformInvoice boolean "������� - � ��������" 1

/include _InsertDocItemActiveDataField.sql 99 12 12 InvoiceDate TDate "������� - ����" 1

/include _InsertDocItemActiveDataField.sql 99 13 13 InvoiceCurrency TCurrency "������� - ������" 1

/include _InsertDocItemActiveDataField.sql 99 14 14 InvoiceSinglePrice float "������� - �������� ����" 1

/include _InsertDocItemActiveDataField.sql 99 15 15 InvoiceTotalPrice float "������� - ����" 1

/include _InsertDocItemActiveDataType.sql 100 TSaleShipmentDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 100 1 10 SaleShipment TSaleShipment "�����������" 1

/include _InsertDocItemActiveDataType.sql 101 TSaleShipments ""

/include _InsertDocItemActiveDataField.sql 101 1 1 SaleShipment TSaleShipment "�����������" 1

/include _InsertDocItemActiveDataType.sql 102 TSaleOrderType ""

/include _InsertDocItemActiveDataField.sql 102 1 1 SaleOrderTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataField.sql 102 2 2 SaleOrderTypeName string "������������" 1

/include _InsertDocItemActiveDataType.sql 103 TBorderDealType ""

/include _InsertDocItemActiveDataField.sql 103 1 1 BorderDealTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataField.sql 103 2 2 BorderDealTypeName string "������������" 1

/include _InsertDocItemActiveDataType.sql 104 TSaleType ""

/include _InsertDocItemActiveDataField.sql 104 1 1 SaleTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataField.sql 104 2 2 SaleTypeName string "������������" 1

/include _InsertDocItemActiveDataType.sql 105 TShipmentType ""

/include _InsertDocItemActiveDataField.sql 105 1 1 ShipmentTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataField.sql 105 2 2 ShipmentTypeName string "������������" 1

/include _InsertDocItemActiveDataField.sql 105 3 3 Notes string "��������" 1

/include _InsertDocItemActiveDataType.sql 106 TDecisionType ""

/include _InsertDocItemActiveDataField.sql 106 1 1 DecisionTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataField.sql 106 2 2 DecisionTypeName string "������������" 1

/include _InsertDocItemActiveDataType.sql 107 TAspectType ""

/include _InsertDocItemActiveDataField.sql 107 1 1 AspectTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataField.sql 107 2 2 AspectTypeName string "������������" 1

/include _InsertDocItemActiveDataType.sql 108 TStreamType ""

/include _InsertDocItemActiveDataField.sql 108 1 1 StreamTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataField.sql 108 2 2 StreamTypeName string "������������" 1

/include _InsertDocItemActiveDataType.sql 109 TSale ""

/include _InsertDocItemActiveDataField.sql 109 1 1 SaleIdentifier string "�������������" 1

/include _InsertDocItemActiveDataField.sql 109 2 2 SaleOrderType TSaleOrderType "��� �����" 1

/include _InsertDocItemActiveDataField.sql 109 3 3 RequestLineNo integer "No � ���" 1

/include _InsertDocItemActiveDataField.sql 109 4 4 AspectType TAspectType "������" 1

/include _InsertDocItemActiveDataField.sql 109 5 5 ClientCompany TPartner "������" 1

/include _InsertDocItemActiveDataField.sql 109 6 6 ClientRequestNo string "����������� ���������" 1

/include _InsertDocItemActiveDataField.sql 109 7 7 Product TProduct "���" 1

/include _InsertDocItemActiveDataField.sql 109 8 8 CompanyProductName string "��������� �� ��� �� ��������" 1

/include _InsertDocItemActiveDataField.sql 109 9 9 RequestSendDate TDate "��� - ���� �� ����������" 1

/include _InsertDocItemActiveDataField.sql 109 10 10 RequestRegisterDate TDate "��� - ���� �� ������������" 1

/include _InsertDocItemActiveDataField.sql 109 11 11 OfferSendPlanDate TDate "��� - ������� ������� �� ��" 1

/include _InsertDocItemActiveDataField.sql 109 12 12 OfferSendDate TDate "��� - ������� ������� �� ��" 1

/include _InsertDocItemActiveDataField.sql 109 13 13 OfferAnswerPlanDate TDate "��� - ������� ������� �� ������" 1

/include _InsertDocItemActiveDataField.sql 109 14 14 OfferAnswerDate TDate "��� - ������� ������� �� ������" 1

/include _InsertDocItemActiveDataField.sql 109 15 15 DecisionPlanDate TDate "��� - ������� ���� �� �������" 1

/include _InsertDocItemActiveDataField.sql 109 16 16 DecisionDate TDate "��� - ������� ���� �� �������" 1

/include _InsertDocItemActiveDataField.sql 109 17 17 Quantity float "���������� �-�� ��� - �������" 1

/include _InsertDocItemActiveDataField.sql 109 18 18 AccountQuantity float "���������� �-�� ��� - ����������" 1

/include _InsertDocItemActiveDataField.sql 109 19 19 DiscountPercent float "��������" 1

/include _InsertDocItemActiveDataField.sql 109 20 20 MarketSinglePrice float "������� �������� ����" 1

/include _InsertDocItemActiveDataField.sql 109 21 21 SinglePrice float "�������� ����" 1

/include _InsertDocItemActiveDataField.sql 109 22 22 Currency TCurrency "������" 1

/include _InsertDocItemActiveDataField.sql 109 23 23 ManagerEmployee TEmployee "��� - ����� ������" 1

/include _InsertDocItemActiveDataField.sql 109 24 24 DecisionType TDecisionType "��� - �������" 1

/include _InsertDocItemActiveDataField.sql 109 25 25 DecisionEmployee TEmployee "��� - ���� �������" 1

/include _InsertDocItemActiveDataField.sql 109 26 26 Notes string "�������" 1

/include _InsertDocItemActiveDataField.sql 109 27 27 PrognosisBeginDate TDate "����������� - ������ - ������" 1

/include _InsertDocItemActiveDataField.sql 109 28 28 PrognosisEndDate TDate "����������� - ������ - ����" 1

/include _InsertDocItemActiveDataField.sql 109 29 29 OurOfferQuantity float "����������� - ������� �� �� - ���������� - �������" 1

/include _InsertDocItemActiveDataField.sql 109 30 30 OurOfferAccountQuantity float "����������� - ������� �� �� - ���������� - ����������" 1

/include _InsertDocItemActiveDataField.sql 109 31 31 OurOfferSinglePrice float "����������� - ������� �� �� - �������� ����" 1

/include _InsertDocItemActiveDataField.sql 109 32 32 OurOfferCurrency TCurrency "����������� - ������� �� �� - ������" 1

/include _InsertDocItemActiveDataField.sql 109 33 33 ClientOfferQuantity float "����������� - ������� �� ������ - ���������� - �������" 1

/include _InsertDocItemActiveDataField.sql 109 34 34 ClientOfferAccountQuantity float "����������� - ������� �� ������ - ���������� - ����������" 1

/include _InsertDocItemActiveDataField.sql 109 35 35 ClientOfferSinglePrice float "����������� - ������� �� ������ - �������� ����" 1

/include _InsertDocItemActiveDataField.sql 109 36 36 ClientOfferCurrency TCurrency "����������� - ������� �� ������ - ������" 1

/include _InsertDocItemActiveDataField.sql 109 37 37 ReceiveDate TDate "���� �� ���������� - ����������" 1

/include _InsertDocItemActiveDataField.sql 109 38 38 ClientOfferReceiveDate TDate "���� �� ���������� - �������� �� ������" 1

/include _InsertDocItemActiveDataField.sql 109 39 39 ShipmentDate TDate "������� ���� �� ����������" 1

/include _InsertDocItemActiveDataField.sql 109 40 40 SaleDealType TBorderDealType "��� - ���" 1

/include _InsertDocItemActiveDataField.sql 109 41 41 SaleBranch TDept "��� - �� ������" 1

/include _InsertDocItemActiveDataField.sql 109 42 42 SaleNo integer "��� - No" 1

/include _InsertDocItemActiveDataField.sql 109 43 43 SaleType TSaleType "��� - ���" 1

/include _InsertDocItemActiveDataField.sql 109 44 44 SalePriority TPriority "��� - ���������" 1

/include _InsertDocItemActiveDataField.sql 109 45 45 ShipmentStore TDept "���������� �� ������ - �� ��������� �� ����������" 1

/include _InsertDocItemActiveDataField.sql 109 46 46 ShipmentDays integer "���������� �� ������ - ������ �� ��������" 1

/include _InsertDocItemActiveDataField.sql 109 47 47 ReceivePlaceOfficeName string "���������� �� ������ - �� �� ������" 1

/include _InsertDocItemActiveDataField.sql 109 48 48 ReceivePlaceCountry TCountry "���������� �� ������ - �������" 1

/include _InsertDocItemActiveDataField.sql 109 49 49 CustomhouseCompany TPartner "���������� �� ������ - �������" 1

/include _InsertDocItemActiveDataField.sql 109 50 50 ShipmentType TShipmentType "���������� �� ������ - ��������� ���" 1

/include _InsertDocItemActiveDataField.sql 109 51 51 IsVendorTransport boolean "���������� �� ������ - ����������� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 109 52 52 CreateEmployee TEmployee "������" 1

/include _InsertDocItemActiveDataField.sql 109 53 53 CreateDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 109 54 54 ChangeEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 109 55 55 ChangeDateTime TDateTime "���� � ��� �� �������" 1

/include _InsertDocItemActiveDataField.sql 109 56 56 FinishEmployee TEmployee "���������" 1

/include _InsertDocItemActiveDataField.sql 109 57 57 FinishDateTime TDateTime "���� � ��� �� �����������" 1

/include _InsertDocItemActiveDataField.sql 109 58 58 AnnulEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 109 59 59 AnnulDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 109 60 60 SaleShipments TSaleShipments "�����������" 1

/include _InsertDocItemActiveDataType.sql 110 TSales ""

/include _InsertDocItemActiveDataField.sql 110 1 1 Sale TSale "���" 1

/include _InsertDocItemActiveDataType.sql 111 TSaleRequestGroup ""

/include _InsertDocItemActiveDataField.sql 111 1 1 SaleRequestGroupID string "ID ���" 1

/include _InsertDocItemActiveDataField.sql 111 2 2 SaleOrderType TSaleOrderType "��� �����" 1

/include _InsertDocItemActiveDataField.sql 111 3 3 SaleDealType TBorderDealType "���" 1

/include _InsertDocItemActiveDataField.sql 111 4 4 RequestBranch TDept "�� ������" 1

/include _InsertDocItemActiveDataField.sql 111 5 5 RequestNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 111 6 6 StreamType TStreamType "�����" 1

/include _InsertDocItemActiveDataField.sql 111 7 7 IsActivatedByClient boolean "��������� �� ������" 1

/include _InsertDocItemActiveDataField.sql 111 8 8 ActivatedBy string "��������� ��" 1

/include _InsertDocItemActiveDataField.sql 111 9 9 ClientRequestGroupNo string "�������� �� ��� �� ������" 1

/include _InsertDocItemActiveDataField.sql 111 10 10 RequestSendDate TDate "���� �� ����������" 1

/include _InsertDocItemActiveDataField.sql 111 11 11 RequestRegisterDate TDate "���� �� ������������" 1

/include _InsertDocItemActiveDataField.sql 111 12 12 ClientCompany TPartner "������" 1

/include _InsertDocItemActiveDataField.sql 111 13 13 MediatorCompany TPartner "���������" 1

/include _InsertDocItemActiveDataField.sql 111 14 14 SaleRequestGroupEmployee TEmployee "����� �� ���" 1

/include _InsertDocItemActiveDataField.sql 111 15 15 CreateEmployee TEmployee "������" 1

/include _InsertDocItemActiveDataField.sql 111 16 16 CreateDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 111 17 17 ChangeEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 111 18 18 ChangeDateTime TDateTime "���� � ��� �� �������" 1

/include _InsertDocItemActiveDataField.sql 111 19 19 FinishEmployee TEmployee "���������" 1

/include _InsertDocItemActiveDataField.sql 111 20 20 FinishDateTime TDateTime "���� � ��� �� �����������" 1

/include _InsertDocItemActiveDataField.sql 111 21 21 AnnulEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 111 22 22 AnnulDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 111 23 23 Sales TSales "������" 1

/include _InsertDocItemActiveDataType.sql 112 TSaleDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 112 1 10 SaleRequestGroup TSaleRequestGroup "���" 1

/include _InsertDocItemActiveDataField.sql 112 2 11 Sale TSale "���/���/���" 1

/include _InsertDocItemActiveDataType.sql 113 TSaleRequestGroupDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 113 1 10 SaleRequestGroup TSaleRequestGroup "���" 1

/include _InsertDocItemActiveDataType.sql 114 TExceptEventType ""

/include _InsertDocItemActiveDataField.sql 114 1 1 ExceptEventTypeFullNo string "������. No" 1

/include _InsertDocItemActiveDataField.sql 114 2 2 ExceptEventTypeName string "������������" 1

/include _InsertDocItemActiveDataField.sql 114 3 3 ExceptEventTypeShortName string "������ ������������" 1

/include _InsertDocItemActiveDataType.sql 115 TExceptEventLevel ""

/include _InsertDocItemActiveDataField.sql 115 1 1 ExceptEventLevelNo string "No" 1

/include _InsertDocItemActiveDataField.sql 115 2 2 ExceptEventLevelName string "������������" 1

/include _InsertDocItemActiveDataField.sql 115 3 3 ExceptEventLevelAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 116 TExceptEventGenType ""

/include _InsertDocItemActiveDataField.sql 116 1 1 ExceptEventGenTypeNo string "No" 1

/include _InsertDocItemActiveDataField.sql 116 2 2 ExceptEventGenTypeName string "������������" 1

/include _InsertDocItemActiveDataField.sql 116 3 3 ExceptEventGenTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataType.sql 117 TExceptEvent ""

/include _InsertDocItemActiveDataField.sql 117 1 1 ExceptEventNo integer "No" 1

/include _InsertDocItemActiveDataField.sql 117 2 2 ExceptEventType TExceptEventType "���" 1

/include _InsertDocItemActiveDataField.sql 117 3 3 ExceptEventGenType TExceptEventGenType "������" 1

/include _InsertDocItemActiveDataField.sql 117 4 4 ExceptEventLevel TExceptEventLevel "������" 1

/include _InsertDocItemActiveDataField.sql 117 5 5 Product TProduct "��������� �����" 1

/include _InsertDocItemActiveDataField.sql 117 6 6 ProductQuantity float "���������� ���" 1

/include _InsertDocItemActiveDataField.sql 117 7 7 Dept TDept "�� �� ���������� �� ��" 1

/include _InsertDocItemActiveDataField.sql 117 8 8 Description string "������ �������� �� ��" 1

/include _InsertDocItemActiveDataField.sql 117 9 9 DetectDept TDept "�� �� ������������ �� ��" 1

/include _InsertDocItemActiveDataField.sql 117 10 10 DetectEmployee TEmployee "�������� - ��������� ��" 1

/include _InsertDocItemActiveDataField.sql 117 11 11 DetectDateTime TDateTime "���� � ��� �� ������������" 1

/include _InsertDocItemActiveDataField.sql 117 12 12 ControlDeptCode TDept "�� �� ������������ �� ��" 1

/include _InsertDocItemActiveDataField.sql 117 13 13 ControlAcceptEmployee TEmployee "�������� - ����� ������� �� ��" 1

/include _InsertDocItemActiveDataField.sql 117 14 14 ControlAcceptDateTime TDateTime "���� � ��� �� �������� �� ������� �� ��" 1

/include _InsertDocItemActiveDataField.sql 117 15 15 ControlMainEmployee TEmployee "������ ����������" 1

/include _InsertDocItemActiveDataField.sql 117 16 16 ControlActivateEmployee TEmployee "���������" 1

/include _InsertDocItemActiveDataField.sql 117 17 17 ControlActivateDateTime TDateTime "���� � ��� �� ����������" 1

/include _InsertDocItemActiveDataField.sql 117 18 18 DamageResolvePlanDateInterval TDateInterval "���������� �� ������� ��������� - ������ ������" 1

/include _InsertDocItemActiveDataField.sql 117 19 19 DamageResolveEmployee TEmployee "���������� �� ������� ��������� - ��������" 1

/include _InsertDocItemActiveDataField.sql 117 20 20 DamageResolveDateTime TDateTime "���������� �� ������� ��������� - ���� � ���" 1

/include _InsertDocItemActiveDataField.sql 117 21 21 ResolvePlanDateInterval TDateInterval "��������������� ���������� �� �� - ������ ������" 1

/include _InsertDocItemActiveDataField.sql 117 22 22 ResolveEmployee TEmployee "��������������� ���������� �� �� - ��������" 1

/include _InsertDocItemActiveDataField.sql 117 23 23 ResolveDateTime TDateTime "��������������� ���������� �� �� - ���� � ���" 1

/include _InsertDocItemActiveDataField.sql 117 24 24 CreateEmployee TEmployee "������" 1

/include _InsertDocItemActiveDataField.sql 117 25 25 CreateDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 117 26 26 ChangeEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 117 27 27 ChangeDateTime TDateTime "���� � ��� �� �������" 1

/include _InsertDocItemActiveDataField.sql 117 28 28 CloseEmployee TEmployee "���������" 1

/include _InsertDocItemActiveDataField.sql 117 29 29 CloseDateTime TDateTime "���� � ��� �� �����������" 1

/include _InsertDocItemActiveDataField.sql 117 30 30 AnnulEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 117 31 31 AnnulDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 117 32 32 OrgTaskProposalBindEmployee TEmployee "������� � ������" 1

/include _InsertDocItemActiveDataField.sql 117 33 33 OrgTaskProposalBindDateTime TDateTime "���� � ��� �� ��������� � ������" 1

/include _InsertDocItemActiveDataType.sql 118 TExceptEventDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 118 1 10 ExceptEvent TExceptEvent "����������� ����������" 1

/include _InsertDocItemActiveDataType.sql 119 TDeliveryType ""

/include _InsertDocItemActiveDataField.sql 119 1 1 DeliveryTypeAbbrev string "�����������" 1

/include _InsertDocItemActiveDataField.sql 119 2 2 Description string "��������" 1

/include _InsertDocItemActiveDataType.sql 120 TDeliveryProject ""

/include _InsertDocItemActiveDataField.sql 120 1 1 DeliveryProjectIdentifier string "ID ���" 1

/include _InsertDocItemActiveDataField.sql 120 2 2 DeliveryIdentifier string "ID ���" 1

/include _InsertDocItemActiveDataField.sql 120 3 3 DCDBranch TDept "�� ������" 1

/include _InsertDocItemActiveDataField.sql 120 4 4 DCDCode integer "��� No" 1

/include _InsertDocItemActiveDataField.sql 120 5 5 DeliveryProjectCode integer "��� No" 1

/include _InsertDocItemActiveDataField.sql 120 6 6 StreamType TStreamType "�����" 1

/include _InsertDocItemActiveDataField.sql 120 7 7 DeliveryType TDeliveryType "��� ���" 1

/include _InsertDocItemActiveDataField.sql 120 8 8 Vendor TPartner "���������" 1

/include _InsertDocItemActiveDataField.sql 120 9 9 Product TProduct "��������� �����" 1

/include _InsertDocItemActiveDataField.sql 120 10 10 DeficitCoverDate TDate "���� �� ����������� ���������" 1

/include _InsertDocItemActiveDataField.sql 120 11 11 WorkQuantity float "������� ����������" 1

/include _InsertDocItemActiveDataField.sql 120 12 12 SinglePrice float "��. ����" 1

/include _InsertDocItemActiveDataField.sql 120 13 13 AccountQuantity float "���������� ����������" 1

/include _InsertDocItemActiveDataField.sql 120 14 14 AccountSinglePrice float "����. ��. ����" 1

/include _InsertDocItemActiveDataField.sql 120 15 15 TotalPrice float "���� ��������" 1

/include _InsertDocItemActiveDataField.sql 120 16 16 Currency TCurrency "������" 1

/include _InsertDocItemActiveDataField.sql 120 17 17 DeliveryDate TDate "���� �� ����������" 1

/include _InsertDocItemActiveDataField.sql 120 18 18 MediatorCompany TPartner "���������" 1

/include _InsertDocItemActiveDataField.sql 120 19 19 StartDate TDate "���� �� ����������" 1

/include _InsertDocItemActiveDataField.sql 120 20 20 RegisterDate TDate "���� �� ������������" 1

/include _InsertDocItemActiveDataField.sql 120 21 21 PlanPositionDate TDate "���� ������� ���. ��" 1

/include _InsertDocItemActiveDataField.sql 120 22 22 RealPositionDate TDate "���� ������� ���. ��" 1

/include _InsertDocItemActiveDataField.sql 120 23 23 PlanVendorPositionDate TDate "���� ������� ���. ���������" 1

/include _InsertDocItemActiveDataField.sql 120 24 24 RealVendorPositionDate TDate "���� ������� ���. ���������" 1

/include _InsertDocItemActiveDataField.sql 120 25 25 DecisionEmployee TEmployee "���� �������" 1

/include _InsertDocItemActiveDataField.sql 120 26 26 DialogEmployee TEmployee "����� ������" 1

/include _InsertDocItemActiveDataField.sql 120 27 27 ShipmentDays integer "������" 1

/include _InsertDocItemActiveDataField.sql 120 28 28 PSDStore TDept "�� ������. �� �� �� ����������" 1

/include _InsertDocItemActiveDataField.sql 120 29 29 CreateEmployee TEmployee "������" 1

/include _InsertDocItemActiveDataField.sql 120 30 30 CreateDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataField.sql 120 31 31 ChangeEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 120 32 32 ChangeDateTime TDateTime "���� � ��� �� �������" 1

/include _InsertDocItemActiveDataField.sql 120 33 33 FinishEmployee TEmployee "���������" 1

/include _InsertDocItemActiveDataField.sql 120 34 34 FinishDateTime TDateTime "���� � ��� �� �����������" 1

/include _InsertDocItemActiveDataField.sql 120 35 35 AnnulEmployee TEmployee "��������" 1

/include _InsertDocItemActiveDataField.sql 120 36 36 AnnulDateTime TDateTime "���� � ��� �� ���������" 1

/include _InsertDocItemActiveDataType.sql 121 TDeliveryProjectDocItem "TBaseObjectDocItem"

/include _InsertDocItemActiveDataField.sql 121 1 10 DeliveryProject TDeliveryProject "���" 1
