unit dCommon;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, JvStringHolder, WideStrings, FMTBcd, SqlExpr,
  AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmCommon = class(TDBPooledDataModule)
    qryCountries: TAbmesSQLQuery;
    prvCountries: TDataSetProvider;
    qryCurrencies: TAbmesSQLQuery;
    prvCurrencies: TDataSetProvider;
    qryCustomhouses: TAbmesSQLQuery;
    qryCustomhousesCUSTOMHOUSE_CODE: TAbmesFloatField;
    qryCustomhousesCUSTOMHOUSE_NAME: TAbmesWideStringField;
    prvCustomhouses: TDataSetProvider;
    qryMeasures: TAbmesSQLQuery;
    prvMeasures: TDataSetProvider;
    qryNoms: TAbmesSQLQuery;
    qryNomsNOM_CODE: TAbmesFloatField;
    qryNomsNOM_NAME: TAbmesWideStringField;
    qryNomItems: TAbmesSQLQuery;
    qryNomItemsNOM_CODE: TAbmesFloatField;
    qryNomItemsNOM_ITEM_CODE: TAbmesFloatField;
    qryNomItemsNOM_ITEM_NAME: TAbmesWideStringField;
    prvNoms: TDataSetProvider;
    prvNomItems: TDataSetProvider;
    qryPaymentTypes: TAbmesSQLQuery;
    qryPaymentTypesPAYMENT_TYPE_CODE: TAbmesFloatField;
    qryPaymentTypesPAYMENT_TYPE_NAME: TAbmesWideStringField;
    prvPaymentTypes: TDataSetProvider;
    qryCurrenciesCURRENCY_CODE: TAbmesFloatField;
    qryCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    qryCurrenciesROUNDER: TAbmesFloatField;
    qryCurrenciesORDER_NO: TAbmesFloatField;
    qrySecondaryCurrencyRates: TAbmesSQLQuery;
    qryCurrencyRates: TAbmesSQLQuery;
    prvCurrencyRates: TDataSetProvider;
    qryCurrencyRatesCURRENCY_ABBREV: TAbmesWideStringField;
    qryCurrencyRatesCURRENCY_NAME: TAbmesWideStringField;
    qryCurrencyRatesSCALE: TAbmesFloatField;
    qryCurrencyRatesCURRENCY_CODE: TAbmesFloatField;
    qryCurrencyRatesFIXING: TAbmesFloatField;
    qryInsertCurrencyRate: TAbmesSQLQuery;
    qryDeleteCurrencyRate: TAbmesSQLQuery;
    qryCountriesCOUNTRY_CODE: TAbmesFloatField;
    qryCountriesCOUNTRY_ABBREV: TAbmesWideStringField;
    qryCountriesCOUNTRY_NAME: TAbmesWideStringField;
    prvShipmentTypes: TDataSetProvider;
    qryShipmentTypes: TAbmesSQLQuery;
    qryShipmentTypesSHIPMENT_TYPE_CODE: TAbmesFloatField;
    qryShipmentTypesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    qryShipmentTypesSHIPMENT_TYPE_NAME: TAbmesWideStringField;
    qryShipmentTypesNOTES: TAbmesWideStringField;
    qryLanguages: TAbmesSQLQuery;
    prvLanguages: TDataSetProvider;
    qryMeasuresMEASURE_CODE: TAbmesFloatField;
    qryMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    qryMeasuresMEASURE_NAME: TAbmesWideStringField;
    qryLanguagesLANGUAGE_CODE: TAbmesFloatField;
    qryLanguagesLANGUAGE_NAME: TAbmesWideStringField;
    dsNomsEdit: TDataSource;
    prvNomsEdit: TDataSetProvider;
    qryNomsEdit: TAbmesSQLQuery;
    qryNomItemsEdit: TAbmesSQLQuery;
    qryNomsEditNOM_CODE: TAbmesFloatField;
    qryNomsEditNOM_NAME: TAbmesWideStringField;
    qryNomItemsEditNOM_CODE: TAbmesFloatField;
    qryNomItemsEditNOM_ITEM_CODE: TAbmesFloatField;
    qryNomItemsEditNOM_ITEM_NAME: TAbmesWideStringField;
    qryContactTypes: TAbmesSQLQuery;
    qryContactTypesCONTACT_TYPE_CODE: TAbmesFloatField;
    qryContactTypesCONTACT_TYPE_NAME: TAbmesWideStringField;
    prvContactTypes: TDataSetProvider;
    prvPriorities: TDataSetProvider;
    qryPriorities: TAbmesSQLQuery;
    qryPrioritiesPRIORITY_CODE: TAbmesFloatField;
    qryPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    qryCurrenciesCURRENCY_NAME: TAbmesWideStringField;
    qryCurrenciesSCALE: TAbmesFloatField;
    qryCurrenciesWithRates: TAbmesSQLQuery;
    prvCurrenciesWithRates: TDataSetProvider;
    qryCurrenciesWithRatesCURRENCY_CODE: TAbmesFloatField;
    qryCurrenciesWithRatesCURRENCY_ABBREV: TAbmesWideStringField;
    qryCurrenciesWithRatesCURRENCY_NAME: TAbmesWideStringField;
    qryCurrenciesWithRatesSCALE: TAbmesFloatField;
    qryCurrenciesWithRatesROUNDER: TAbmesFloatField;
    qryCurrenciesWithRatesORDER_NO: TAbmesFloatField;
    qryCurrenciesWithRatesTODAY_FIXING: TAbmesFloatField;
    qryCurrenciesWithRatesTODAY_SECONDARY_FIXING: TAbmesFloatField;
    qrySecondaryCurrencyRatesCURRENCY_CODE: TAbmesFloatField;
    qrySecondaryCurrencyRatesRATE_DATE: TAbmesSQLTimeStampField;
    qrySecondaryCurrencyRatesFIXING: TAbmesFloatField;
    qryUpdateNomItemNames: TAbmesSQLQuery;
    prvSecondaryCurrencyRates: TDataSetProvider;
    prvTodaySecondaryCurrencyRates: TDataSetProvider;
    qryTodaySecondaryCurrencyRates: TAbmesSQLQuery;
    qryTodaySecondaryCurrencyRatesCURRENCY_CODE: TAbmesFloatField;
    qryTodaySecondaryCurrencyRatesFIXING: TAbmesFloatField;
    qryNewProcessObjectCode: TAbmesSQLQuery;
    qryInsertProcessObject: TAbmesSQLQuery;
    qryUpdateProcessObjectIdentifier: TAbmesSQLQuery;
    qryRounders: TAbmesSQLQuery;
    prvRounders: TDataSetProvider;
    qryRoundersROUNDER_CODE: TAbmesFloatField;
    qryRoundersROUNDER: TAbmesFloatField;
    qryRoundersROUNDER_NAME: TAbmesWideStringField;
    qryRoundersMIN_LIMIT: TAbmesFloatField;
    qryRoundersMAX_LIMIT: TAbmesFloatField;
    qryRoundersROUNDER_ABBREV: TAbmesWideStringField;
    qryDaysOff: TAbmesSQLQuery;
    prvDaysOff: TDataSetProvider;
    qryDaysOffTHE_DATE: TAbmesSQLTimeStampField;
    qryDaysOffDAYS_OFF: TAbmesFloatField;
    qryDaysOffWORKDAYS: TAbmesFloatField;
    qrySecondaryCurrencyRate: TAbmesSQLQuery;
    qrySecondaryCurrencyRateFIXING: TAbmesFloatField;
    qryDateUnits: TAbmesSQLQuery;
    qryDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    qryDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    prvDateUnits: TDataSetProvider;
    qryDeleteProcessObject: TAbmesSQLQuery;
    qryAreAllTodayCurrencyRatesEntered: TAbmesSQLQuery;
    qryAreAllTodayCurrencyRatesEnteredALL_ENTERED: TAbmesFloatField;
    qryCurrencyRatesRATE_DATE: TAbmesSQLTimeStampField;
    qryUpdateDaysOff: TAbmesSQLQuery;
    qryMeasuresEXPORT_NO: TAbmesFloatField;
    qryDeptTypes: TAbmesSQLQuery;
    qryDeptTypesDEPT_TYPE_CODE: TAbmesFloatField;
    qryDeptTypesDEPT_TYPE_ABBREV: TAbmesWideStringField;
    qryDeptTypesDEPT_TYPE_NAME: TAbmesWideStringField;
    prvDeptTypes: TDataSetProvider;
    qryTheDates: TAbmesSQLQuery;
    prvTheDates: TDataSetProvider;
    qryTheDatesTHE_DATE: TAbmesSQLTimeStampField;
    qryTheDatesACCUMULATED_WORKDAYS: TAbmesFloatField;
    qryTheDatesIS_WORKDAY: TAbmesFloatField;
    qryPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    qryPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    prvSelfExistentStatuses: TDataSetProvider;
    qrySelfExistentStatuses: TAbmesSQLQuery;
    qrySelfExistentStatusesSELF_EXISTENT_STATUS_CODE: TAbmesFloatField;
    qrySelfExistentStatusesSELF_EXISTENT_STATUS_NAME: TAbmesWideStringField;
    prvTransientStatuses: TDataSetProvider;
    qryTransientStatuses: TAbmesSQLQuery;
    qryTransientStatusesTRANSIENT_STATUS_CODE: TAbmesFloatField;
    qryTransientStatusesTRANSIENT_STATUS_NAME: TAbmesWideStringField;
    qryNomItemsEditNOM_ITEM_DESCRIPTION: TAbmesWideStringField;
    qryNomItemsNOM_ITEM_DESCRIPTION: TAbmesWideStringField;
    qryNewProcessObjectCodeNEW_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryTruncateTable: TAbmesSQLQuery;
    prvEducations: TDataSetProvider;
    qryEducations: TAbmesSQLQuery;
    qryEducationsEDUCATION_CODE: TAbmesFloatField;
    qryEducationsEDUCATION_NAME: TAbmesWideStringField;
    qryEducationsEDUCATION_SHORT_NAME: TAbmesWideStringField;
    qryMeasuresROUNDER: TAbmesFloatField;
    qryTimeUnits: TAbmesSQLQuery;
    prvTimeUnits: TDataSetProvider;
    qryTimeUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    qryTimeUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryTimeUnitsTABLE_NAME: TAbmesWideStringField;
    qryTimeUnitsKEY_FIELD_NAME: TAbmesWideStringField;
    qryTimeUnitsYEAR_UNIT_NO_NAME: TAbmesWideStringField;
    qryTimeUnitsDEFAULT_UNIT_COUNT: TAbmesFloatField;
    qryTimeUnitsMIN_UNIT_COUNT: TAbmesFloatField;
    qryTimeUnitsMAX_UNIT_COUNT: TAbmesFloatField;
    qryTimeUnitsTHE_DATE_UNIT_NAME_PLURAL: TAbmesWideStringField;
    qryCurrenciesCURRENCY_NAME_SINGULAR: TAbmesWideStringField;
    qryCurrenciesCURRENCY_NAME_PLURAL: TAbmesWideStringField;
    qryCurrenciesCURRENCY_NAME_GENDER_CODE: TAbmesFloatField;
    qryCurrenciesCURRENCY_CENT_NAME_SINGULAR: TAbmesWideStringField;
    qryCurrenciesCURRENCY_CENT_NAME_PLURAL: TAbmesWideStringField;
    qryCurrenciesCURRENCY_CENT_NAME_GENDER_CODE: TAbmesFloatField;
    qryGrammaticalGenders: TAbmesSQLQuery;
    prvGrammaticalGenders: TDataSetProvider;
    qryGrammaticalGendersGENDER_CODE: TAbmesFloatField;
    qryGrammaticalGendersGENDER_NAME: TAbmesWideStringField;
    qryTimeUnitsAVERAGE_WORKDAYS: TAbmesFloatField;
    qryTimeUnitsTHE_DATE_UNIT_ABBREV: TAbmesWideStringField;
    qryDateIntervalFormats: TAbmesSQLQuery;
    qryDateIntervalFormatsDATE_INTERVAL_FORMAT_CODE: TAbmesFloatField;
    qryDateIntervalFormatsDATE_INTERVAL_FORMAT_NAME: TAbmesWideStringField;
    prvDateIntervalFormats: TDataSetProvider;
    prvWorkPriorities: TDataSetProvider;
    qryWorkPriorities: TAbmesSQLQuery;
    qryWorkPrioritiesWORK_PRIORITY_CODE: TAbmesFloatField;
    qryWorkPrioritiesWORK_PRIORITY_NO: TAbmesFloatField;
    qryWorkPrioritiesWORK_PRIORITY_NAME: TAbmesWideStringField;
    qryNewWorkPriorityCode: TAbmesSQLQuery;
    qryNewWorkPriorityCodeNEW_WORK_PRIORITY_CODE: TAbmesFloatField;
    qryPrioritiesPRIORITY_NO: TAbmesFloatField;
    qryNewPriorityCode: TAbmesSQLQuery;
    qryNewPriorityCodeNEW_PRIORITY_CODE: TAbmesFloatField;
    qryNomItemsEditCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryNomItemsEditCREATE_DATE: TAbmesSQLTimeStampField;
    qryNomItemsEditCREATE_TIME: TAbmesSQLTimeStampField;
    qryNomItemsEditCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryNomItemsEditCHANGE_DATE: TAbmesSQLTimeStampField;
    qryNomItemsEditCHANGE_TIME: TAbmesSQLTimeStampField;
    qryNomItemsEditCHANGE_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField;
    qryBaseCurrencyRate: TAbmesSQLQuery;
    qryBaseCurrencyRateFIXING: TAbmesFloatField;
    qryMinAndMaxPriorityNoCodes: TAbmesSQLQuery;
    qryMinAndMaxPriorityNoCodesMIN_PRIORITY_NO_CODE: TAbmesFloatField;
    qryMinAndMaxPriorityNoCodesMAX_PRIORITY_NO_CODE: TAbmesFloatField;
    qryPrecisionLevels: TAbmesSQLQuery;
    qryPrecisionLevelsPRECISION_LEVEL_CODE: TAbmesFloatField;
    qryPrecisionLevelsPRECISION_LEVEL_NO: TAbmesFloatField;
    qryPrecisionLevelsPRECISION_LEVEL_NAME: TAbmesWideStringField;
    qryPrecisionLevelsCOLOR: TAbmesFloatField;
    qryPrecisionLevelsBACKGROUND_COLOR: TAbmesFloatField;
    prvPrecisionLevels: TDataSetProvider;
    qryNewPrecisionLevelCode: TAbmesSQLQuery;
    qryNewPrecisionLevelCodeNEW_PRECISION_LEVEL_CODE: TAbmesFloatField;
    qryDaysOffOFFICIAL_WORKDAYS: TAbmesFloatField;
    qryDaysOffOFFICIAL_DAYS_OFF: TAbmesFloatField;
    prvStreamTypes: TDataSetProvider;
    qryStreamTypes: TAbmesSQLQuery;
    qryStreamTypesSTREAM_TYPE_CODE: TAbmesFloatField;
    qryStreamTypesSTREAM_TYPE_ABBREV: TAbmesWideStringField;
    qryStreamTypesSTREAM_TYPE_NAME: TAbmesWideStringField;
    qryAspectTypes: TAbmesSQLQuery;
    qryAspectTypesASPECT_TYPE_CODE: TAbmesFloatField;
    qryAspectTypesASPECT_TYPE_ABBREV: TAbmesWideStringField;
    qryAspectTypesASPECT_TYPE_NAME: TAbmesWideStringField;
    prvAspectTypes: TDataSetProvider;
    mshLocalMacroLibrary: TJvMultiStringHolder;
    qryMeasuresPRODUCT_CLASS_CODE: TAbmesFloatField;
    qryNewMeasureCode: TAbmesSQLQuery;
    qryNewMeasureCodeNEW_MEASURE_CODE: TAbmesFloatField;
    qryNewNomCode: TAbmesSQLQuery;
    qryNewNomCodeNEW_NOM_CODE: TAbmesFloatField;
    qryNomItemsEditPRODUCT_CLASS_CODE: TAbmesFloatField;
    qryNomsEditPRODUCT_CLASS_CODE: TAbmesFloatField;
    qryCurrenciesPRODUCT_CODE: TAbmesFloatField;
    qryCurrenciesPRODUCT_NO: TAbmesFloatField;
    qryCurrenciesPRODUCT_NAME: TAbmesWideStringField;
    prvYearParts: TDataSetProvider;
    qryYearParts: TAbmesSQLQuery;
    qryYearPartsYEAR_PART_CODE: TAbmesFloatField;
    qryYearPartsYEAR_PART_NAME: TAbmesWideStringField;
    qryNomsNOM_NO: TAbmesFloatField;
    qryNomsEditNOM_NO: TAbmesFloatField;
    qryGetActivityNo: TAbmesSQLQuery;
    qryGetActivityNoACTIVITY_NO: TAbmesFloatField;
    prvFinOrderRequirements: TDataSetProvider;
    qryFinOrderRequirements: TAbmesSQLQuery;
    qryFinOrderRequirementsFIN_ORDER_REQUIREMENT_CODE: TAbmesFloatField;
    qryFinOrderRequirementsFIN_ORDER_REQUIREMENT_NAME: TAbmesWideStringField;
    prvLastMissingCurrencyRateDate: TDataSetProvider;
    qryLastMissingCurrencyRateDate: TAbmesSQLQuery;
    qryActivities: TAbmesSQLQuery;
    prvActivities: TDataSetProvider;
    qryActivitiesACTIVITY_CODE: TAbmesFloatField;
    qryActivitiesACTIVITY_NO: TAbmesFloatField;
    qryActivitiesACTIVITY_NAME: TAbmesWideStringField;
    qryNomItemData: TAbmesSQLQuery;
    qryNomItemDataNOM_ITEM_NAME: TAbmesWideStringField;
    qryNomItemDataNOM_ITEM_DESCRIPTION: TAbmesWideStringField;
    qryNomItemsEditNOM_ITEM_NO: TAbmesFloatField;
    qryNewNomItemCode: TAbmesSQLQuery;
    qryNewNomItemCodeNEW_NOM_ITEM_CODE: TAbmesFloatField;
    qryMeasuresI_MEASURE_ABBREV: TAbmesWideStringField;
    qryMeasuresI_MEASURE_NAME: TAbmesWideStringField;
    qryCountriesI_COUNTRY_ABBREV: TAbmesWideStringField;
    qryCountriesI_COUNTRY_NAME: TAbmesWideStringField;
    qryNomItemsEditDOC_BRANCH_CODE: TAbmesFloatField;
    qryNomItemsEditDOC_CODE: TAbmesFloatField;
    qryNomsEditDOC_BRANCH_CODE: TAbmesFloatField;
    qryNomsEditDOC_CODE: TAbmesFloatField;
    qryNomItemsDOC_BRANCH_CODE: TAbmesFloatField;
    qryNomItemsDOC_CODE: TAbmesFloatField;
    qryNomsDOC_BRANCH_CODE: TAbmesFloatField;
    qryNomsDOC_CODE: TAbmesFloatField;
    qryNomsHAS_DOC_ITEMS: TAbmesFloatField;
    qryNomItemsHAS_DOC_ITEMS: TAbmesFloatField;
    qryNomsEditHAS_DOC_ITEMS: TAbmesFloatField;
    qryNomItemsEditHAS_DOC_ITEMS: TAbmesFloatField;
    qryNomItemDataDOC_BRANCH_CODE: TAbmesFloatField;
    qryNomItemDataDOC_CODE: TAbmesFloatField;
    qryNomItemDataHAS_DOC_ITEMS: TAbmesFloatField;
    qryCurrenciesCURRENCY_I_NAME_SINGULAR: TAbmesWideStringField;
    qryCurrenciesCURRENCY_I_NAME_PLURAL: TAbmesWideStringField;
    qryCurrenciesCURRENCY_CENT_I_NAME_SINGULAR: TAbmesWideStringField;
    qryCurrenciesCURRENCY_CENT_I_NAME_PLURAL: TAbmesWideStringField;
    qryNomItemsIS_NOT_PART_OF_NAME: TAbmesFloatField;
    qryNomItemsEditIS_NOT_PART_OF_NAME: TAbmesFloatField;
    procedure prvPrecisionLevelsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvCurrencyRatesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvNomsEditAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvDaysOffBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvWorkPrioritiesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvPrioritiesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvNomsEditBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryMeasuresBeforeOpen(DataSet: TDataSet);
    procedure prvMeasuresBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryNomsBeforeOpen(DataSet: TDataSet);
    procedure qryNomItemsBeforeOpen(DataSet: TDataSet);
    procedure prvNomsEditAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvNomsEditBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryNomsEditAfterProviderStartTransaction(DataSet: TDataSet);
  private
    FDocsDelta: Variant;
    function NewMeasureCode: Integer;
    function NewNomCode: Integer;
    function NewNomItemCode(ANomCode: Integer): Integer;
    function MoneyToBulgarianText(AAmount: Double; ACurrencyCode: Integer): string;
    function MoneyToEnglishText(AAmount: Double; ACurrencyCode: Integer): string;
  protected
    procedure TruncateTable(const ATableName: string);
    function GetTempTableSuffix(ATempTableNo: Integer): string;
    procedure GetProcessObjectKey(ProcessObjectClassCode: Integer;
      out ProcessObjectBranchCode, ProcessObjectCode: Integer;
      const ProcessObjectIdentifier: string = '');
    procedure SetProcessObjectKey(ADataSet: TDataSet;
      ProcessObjectBranchCodeFieldName, ProcessObjectCodeFieldName: string;
      ProcessObjectClassCode: Integer;
      const ProcessObjectIdentifier: string = '');
    procedure DeleteProcessObject(ADataSet: TDataSet;
      ProcessObjectBranchCodeFieldName, ProcessObjectCodeFieldName: string);
    function  GetSecondaryCurrencyFixing(ACurrencyCode: Integer; ADate: TDateTime): Double;
    function  GetBaseCurrencyFixing(ACurrencyCode: Integer; ADate: TDateTime): Double;
    procedure GetNomItemData(ANomCode, ANomItemCode: Integer;
      out NomItemName: string; out NomItemDescription: string;
      out DocBranchCode: Integer; out DocCode: Integer; out HasDocItems: Boolean);
    function  AreAllTodayCurrencyRatesEntered: Boolean;
    procedure GetMinAndMaxPriorityNoCodes(out MinPriorityNoCode: Integer;
                                          out MaxPriorityNoCode: Integer);

    procedure UpdateProcessObjectIdentifier(ProcessObjectBranchCode,
      ProcessObjectCode: Integer; ProcessObjectIdentifier: string);

    function MoneyToText(AAmount: Double; ACurrencyCode, ASystemLocaleCode: Integer): string;
    function MoneyToLocalText(AAmount: Double; ACurrencyCode: Integer): string;

    function GetActivityNo(AActivityCode: Integer): Integer;
  end;

type
  IdmCommonProxy = interface(IDBPooledDataModuleProxy)
    procedure TruncateTable(ATableName: string);
    function GetTempTableSuffix(ATempTableNo: Integer): string;
    procedure GetProcessObjectKey(ProcessObjectClassCode: Integer;
      out ProcessObjectBranchCode, ProcessObjectCode: Integer;
      const ProcessObjectIdentifier: string = '');
    procedure SetProcessObjectKey(ADataSet: TDataSet;
      ProcessObjectBranchCodeFieldName, ProcessObjectCodeFieldName: string;
      ProcessObjectClassCode: Integer;
      const ProcessObjectIdentifier: string = '');
    procedure DeleteProcessObject(ADataSet: TDataSet;
      ProcessObjectBranchCodeFieldName, ProcessObjectCodeFieldName: string);

    procedure UpdateProcessObjectIdentifier(ProcessObjectBranchCode,
      ProcessObjectCode: Integer; ProcessObjectIdentifier: string);

    function GetSecondaryCurrencyFixing2(ACurrencyCode: Integer; ADate: TDateTime): Double;

    function MoneyToText(AAmount: Double; ACurrencyCode, ASystemLocaleCode: Integer): string;
    function MoneyToLocalText(AAmount: Double; ACurrencyCode: Integer): string;
    function GetActivityNo(AActivityCode: Integer): Integer;
  end;

type
  TdmCommonProxy = class(TDBPooledDataModuleProxy, IdmCommonProxy)
  private
    class var FSingleton: TdmCommonProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmCommon>;
  strict protected
    property LockedInstance: ISmartLock<TdmCommon> read GetLockedInstance;
  protected
    procedure TruncateTable(ATableName: string);
    function GetTempTableSuffix(ATempTableNo: Integer): string;
    procedure GetProcessObjectKey(ProcessObjectClassCode: Integer;
      out ProcessObjectBranchCode, ProcessObjectCode: Integer;
      const ProcessObjectIdentifier: string = '');
    procedure SetProcessObjectKey(ADataSet: TDataSet;
      ProcessObjectBranchCodeFieldName, ProcessObjectCodeFieldName: string;
      ProcessObjectClassCode: Integer;
      const ProcessObjectIdentifier: string = '');
    procedure DeleteProcessObject(ADataSet: TDataSet;
      ProcessObjectBranchCodeFieldName, ProcessObjectCodeFieldName: string);

    procedure UpdateProcessObjectIdentifier(ProcessObjectBranchCode,
      ProcessObjectCode: Integer; ProcessObjectIdentifier: string);

    function GetSecondaryCurrencyFixing2(ACurrencyCode: Integer; ADate: TDateTime): Double;
  public
    class property Singleton: TdmCommonProxy read FSingleton;

    function GetSecondaryCurrencyFixing(ACurrencyCode: Integer; ADate: TDateTime): Double;
    function GetBaseCurrencyFixing(ACurrencyCode: Integer; ADate: TDateTime): Double;
    function AreAllTodayCurrencyRatesEntered: Boolean;
    procedure GetNomItemData(ANomCode, ANomItemCode: Integer;
      out NomItemName: string; out NomItemDescription: string;
      out DocBranchCode: Integer; out DocCode: Integer; out HasDocItems: Boolean);
    procedure GetMinAndMaxPriorityNoCodes(out MinPriorityNoCode: Integer;
                                          out MaxPriorityNoCode: Integer);
    function MoneyToText(AAmount: Double; ACurrencyCode, ASystemLocaleCode: Integer): string;
    function MoneyToLocalText(AAmount: Double; ACurrencyCode: Integer): string;
    function GetActivityNo(AActivityCode: Integer): Integer;
  end;

implementation

uses
  Variants, uUtils, uSvrUtils, uServerMessageIds, uIntToText,
  uDBPooledDataModuleHelper, uProducts, uSystemLocaleUtils,
  uProcessObjectIdentifierFormats, uSessionContext;

const
  SSingleProcessObjectNotFound = 'TdmDB.DeleteProcessObject() could not find a single ProcessObject: (%d, %d). RowsAffected = %d';

{$R *.DFM}

{ TdmCommonProxy }

function TdmCommonProxy.GetLockedInstance: ISmartLock<TdmCommon>;
begin
  Result:= ISmartLock<TdmCommon>(inherited LockedInstance);
end;

procedure TdmCommonProxy.GetProcessObjectKey(
  ProcessObjectClassCode: Integer; out ProcessObjectBranchCode,
  ProcessObjectCode: Integer; const ProcessObjectIdentifier: string);
begin
  LockedInstance.Value.GetProcessObjectKey(
    ProcessObjectClassCode, ProcessObjectBranchCode, ProcessObjectCode, ProcessObjectIdentifier);
end;

procedure TdmCommonProxy.SetProcessObjectKey(ADataSet: TDataSet;
  ProcessObjectBranchCodeFieldName, ProcessObjectCodeFieldName: string;
  ProcessObjectClassCode: Integer; const ProcessObjectIdentifier: string);
begin
  LockedInstance.Value.SetProcessObjectKey(
    ADataSet,
    ProcessObjectBranchCodeFieldName,
    ProcessObjectCodeFieldName,
    ProcessObjectClassCode,
    ProcessObjectIdentifier);
end;

procedure TdmCommonProxy.DeleteProcessObject(ADataSet: TDataSet;
  ProcessObjectBranchCodeFieldName, ProcessObjectCodeFieldName: string);
begin
  LockedInstance.Value.DeleteProcessObject(ADataSet, ProcessObjectBranchCodeFieldName, ProcessObjectCodeFieldName);
end;

procedure TdmCommonProxy.UpdateProcessObjectIdentifier(
  ProcessObjectBranchCode, ProcessObjectCode: Integer;
  ProcessObjectIdentifier: string);
begin
  LockedInstance.Value.UpdateProcessObjectIdentifier(ProcessObjectBranchCode, ProcessObjectCode, ProcessObjectIdentifier);
end;

function TdmCommonProxy.GetSecondaryCurrencyFixing2(ACurrencyCode: Integer;
  ADate: TDateTime): Double;
begin
  Result:= LockedInstance.Value.GetSecondaryCurrencyFixing(ACurrencyCode, ADate);
end;

procedure TdmCommonProxy.TruncateTable(ATableName: string);
begin
  LockedInstance.Value.TruncateTable(ATableName);
end;

function TdmCommonProxy.GetTempTableSuffix(ATempTableNo: Integer): string;
begin
  Result:= LockedInstance.Value.GetTempTableSuffix(ATempTableNo);
end;

function TdmCommonProxy.MoneyToText(AAmount: Double; ACurrencyCode, ASystemLocaleCode: Integer): string;
begin
  Result:= LockedInstance.Value.MoneyToText(AAmount, ACurrencyCode, ASystemLocaleCode);
end;

function TdmCommonProxy.MoneyToLocalText(AAmount: Double;
  ACurrencyCode: Integer): string;
begin
  Result:= LockedInstance.Value.MoneyToLocalText(AAmount, ACurrencyCode);
end;

function TdmCommonProxy.GetActivityNo(AActivityCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetActivityNo(AActivityCode);
end;

function TdmCommonProxy.GetSecondaryCurrencyFixing(ACurrencyCode: Integer;
  ADate: TDateTime): Double;
begin
  Result:= LockedInstance.Value.GetSecondaryCurrencyFixing(ACurrencyCode, ADate);
end;

function TdmCommonProxy.GetBaseCurrencyFixing(ACurrencyCode: Integer;
  ADate: TDateTime): Double;
begin
  Result:= LockedInstance.Value.GetBaseCurrencyFixing(ACurrencyCode, ADate);
end;

function TdmCommonProxy.AreAllTodayCurrencyRatesEntered: Boolean;
begin
  Result:= LockedInstance.Value.AreAllTodayCurrencyRatesEntered;
end;

procedure TdmCommonProxy.GetMinAndMaxPriorityNoCodes(out MinPriorityNoCode,
  MaxPriorityNoCode: Integer);
begin
  LockedInstance.Value.GetMinAndMaxPriorityNoCodes(MinPriorityNoCode, MaxPriorityNoCode);
end;

procedure TdmCommonProxy.GetNomItemData(ANomCode, ANomItemCode: Integer;
  out NomItemName, NomItemDescription: string;
  out DocBranchCode, DocCode: Integer; out HasDocItems: Boolean);
begin
  LockedInstance.Value.GetNomItemData(ANomCode, ANomItemCode, NomItemName, NomItemDescription,
    DocBranchCode, DocCode, HasDocItems);
end;

{ TdmCommon }

procedure TdmCommon.GetProcessObjectKey(ProcessObjectClassCode: Integer;
  out ProcessObjectBranchCode, ProcessObjectCode: Integer;
  const ProcessObjectIdentifier: string);
begin
  ProcessObjectBranchCode:= LoginContext.LocalBranchCode;

  qryNewProcessObjectCode.Open;
  try
    ProcessObjectCode:=
      qryNewProcessObjectCodeNEW_PROCESS_OBJECT_CODE.AsInteger;
  finally
    qryNewProcessObjectCode.Close;
  end;  { try }

  with qryInsertProcessObject do
    begin
      ParamByName('PROCESS_OBJECT_BRANCH_CODE').AsInteger:=
        ProcessObjectBranchCode;
      ParamByName('PROCESS_OBJECT_CLASS_CODE').AsInteger:=
        ProcessObjectClassCode;
      ParamByName('PROCESS_OBJECT_CODE').AsInteger:=
        ProcessObjectCode;

      with ParamByName('PROCESS_OBJECT_IDENTIFIER') do
        if (ProcessObjectIdentifier = '') then
          AsString:= Format(poifTemp, [ProcessObjectBranchCode, ProcessObjectCode])
        else
          AsString:= ProcessObjectIdentifier;

      ExecSQL;
    end;  { with }
end;

procedure TdmCommon.prvCurrencyRatesBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;

  // new currency rate
  if VarIsNull(DeltaDS.FieldByName('FIXING').OldValue) then
    with qryInsertCurrencyRate do
      begin
        SetParams(Params, DeltaDS);
        ExecSQL;

        if (RowsAffected <> 1) then
          raise Exception.Create(SExecSQLErrorId);

        Applied:= True;
      end;  { with }

  // fixing deleted -> delete the currency rate
  if (VarIsNull(DeltaDS.FieldByName('FIXING').NewValue) or
      VarIsEmpty(DeltaDS.FieldByName('FIXING').NewValue) ) then   // ako e unassigned niama da se izvika beforeupdaterecord

    with qryDeleteCurrencyRate do
      begin
        SetParams(Params, DeltaDS);
        ExecSQL;

        if (RowsAffected <> 1) then
          raise Exception.Create(SExecSQLErrorId);

        Applied:= True;
      end;  { with }
end;

procedure TdmCommon.prvNomsEditAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmCommon.prvNomsEditAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;
  if (UpdateKind = ukModify) and (SourceDS = qryNomItemsEdit) then
    begin
      SetParams(qryUpdateNomItemNames.Params, DeltaDS);
      qryUpdateNomItemNames.ExecSQL;
    end;  { if }
end;

procedure TdmCommon.SetProcessObjectKey(ADataSet: TDataSet;
  ProcessObjectBranchCodeFieldName, ProcessObjectCodeFieldName: string;
  ProcessObjectClassCode: Integer; const ProcessObjectIdentifier: string);
var
  ProcessObjectBranchCode: Integer;
  ProcessObjectCode: Integer;
begin
  GetProcessObjectKey(ProcessObjectClassCode, ProcessObjectBranchCode,
    ProcessObjectCode, ProcessObjectIdentifier);

  ADataSet.FieldByName(ProcessObjectBranchCodeFieldName).NewValue:=
    ProcessObjectBranchCode;
  ADataSet.FieldByName(ProcessObjectCodeFieldName).NewValue:=
    ProcessObjectCode;
end;

procedure TdmCommon.UpdateProcessObjectIdentifier(ProcessObjectBranchCode,
  ProcessObjectCode: Integer; ProcessObjectIdentifier: string);
begin
  with qryUpdateProcessObjectIdentifier do
    begin
      ParamByName('PROCESS_OBJECT_BRANCH_CODE').AsInteger:= ProcessObjectBranchCode;
      ParamByName('PROCESS_OBJECT_CODE').AsInteger:= ProcessObjectCode;

      if (ProcessObjectIdentifier = '') then
        ParamByName('PROCESS_OBJECT_IDENTIFIER').Clear
      else
        ParamByName('PROCESS_OBJECT_IDENTIFIER').AsString:= ProcessObjectIdentifier;

      ExecSQL;

      if (RowsAffected <> 1) then
        raise Exception.CreateFmt(SSingleProcessObjectNotFound,
          [ProcessObjectBranchCode, ProcessObjectCode, RowsAffected]);
    end;  { with }
end;

function TdmCommon.GetSecondaryCurrencyFixing(ACurrencyCode: Integer;
  ADate: TDateTime): Double;
begin
  with qrySecondaryCurrencyRate do
    begin
      ParamByName('CURRENCY_CODE').AsInteger:= ACurrencyCode;
      ParamByName('RATE_DATE').AsDateTime:= ADate;
      Open;
      try
        Result:= qrySecondaryCurrencyRateFIXING.AsFloat;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmCommon.GetActivityNo(AActivityCode: Integer): Integer;
begin
  qryGetActivityNo.ParamByName('ACTIVITY_CODE').AsInteger:= AActivityCode;
  qryGetActivityNo.Open;
  try
    Result:= qryGetActivityNoACTIVITY_NO.AsInteger;
  finally
    qryGetActivityNo.Close;
  end;  { try }
end;

function TdmCommon.GetBaseCurrencyFixing(ACurrencyCode: Integer;
  ADate: TDateTime): Double;
begin
  with qryBaseCurrencyRate do
    begin
      ParamByName('CURRENCY_CODE').AsInteger:= ACurrencyCode;
      ParamByName('RATE_DATE').AsDateTime:= ADate;
      Open;
      try
        Result:= qryBaseCurrencyRateFIXING.AsFloat;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

procedure TdmCommon.DataModuleCreate(Sender: TObject);
begin
  RegisterMacroLibrary(mshLocalMacroLibrary);
  inherited;
end;

procedure TdmCommon.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  UnregisterMacroLibrary(mshLocalMacroLibrary);
end;

procedure TdmCommon.DeleteProcessObject(ADataSet: TDataSet;
  ProcessObjectBranchCodeFieldName, ProcessObjectCodeFieldName: string);
var
  ProcessObjectBranchCode: Integer;
  ProcessObjectCode: Integer;
begin
  with qryDeleteProcessObject do
    begin
      ProcessObjectBranchCode:= ADataSet.FieldByName(ProcessObjectBranchCodeFieldName).OldValue;
      ProcessObjectCode:= ADataSet.FieldByName(ProcessObjectCodeFieldName).OldValue;

      ParamByName('PROCESS_OBJECT_BRANCH_CODE').AsInteger:= ProcessObjectBranchCode;
      ParamByName('PROCESS_OBJECT_CODE').AsInteger:= ProcessObjectCode;

      ExecSQL;

      if (RowsAffected <> 1) then
        raise Exception.CreateFmt(SSingleProcessObjectNotFound,
          [ProcessObjectBranchCode, ProcessObjectCode, RowsAffected]);
    end;  { with }
end;

procedure TdmCommon.prvDaysOffBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
//  with DeltaDS do
//    FieldByName('WORKDAYS').NewValue:= 1 - FieldByName('DAYS_OFF').AsInteger;
  with qryUpdateDaysOff do
    begin
      SetParams(Params, DeltaDS);
      ExecSQL;

      if (RowsAffected <> 1) then
        raise Exception.Create('Internal error: cannot update properly THE_DATES');
    end;

  Applied:= True;
end;

procedure TdmCommon.prvMeasuresBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('MEASURE_CODE').NewValue:= NewMeasureCode;
end;

function TdmCommon.AreAllTodayCurrencyRatesEntered: Boolean;
begin
  with qryAreAllTodayCurrencyRatesEntered do
    begin
      Open;
      try
        Result:= qryAreAllTodayCurrencyRatesEnteredALL_ENTERED.AsBoolean;
      finally
        Close;
      end;  { try }
    end;  { with }

  SessionContext.PreserveLastActivityDateTime;
end;

procedure TdmCommon.TruncateTable(const ATableName: string);
begin
  DBDataModule.TempDisableDocsProcessing/
    procedure begin
      qryTruncateTable.MacroByName('TABLE_NAME').AsString:= ATableName;
      qryTruncateTable.ExecSQL;
    end;
end;

function TdmCommon.GetTempTableSuffix(ATempTableNo: Integer): string;
begin
  Assert(ATempTableNo > 0);

  if (ATempTableNo = 1) then
    Result:= ''
  else
    Result:= '_' + IntToStr(ATempTableNo);
end;

procedure TdmCommon.prvWorkPrioritiesBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukInsert) then
    begin
      qryNewWorkPriorityCode.Open;
      try
        DeltaDS.FieldByName('WORK_PRIORITY_CODE').NewValue:=
          qryNewWorkPriorityCodeNEW_WORK_PRIORITY_CODE.AsInteger;
      finally
        qryNewWorkPriorityCode.Close;
      end;  { try }
    end;  { if }
end;

procedure TdmCommon.qryMeasuresBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with qryMeasures.ParamByName('PRODUCT_CLASS_CODE') do
    if IsNull then
      AsInteger:= ProductClassToInt(pcNormal);
end;

procedure TdmCommon.qryNomItemsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with qryNomItems.ParamByName('PRODUCT_CLASS_CODE') do
    if IsNull then
      AsInteger:= ProductClassToInt(pcNormal);
end;

procedure TdmCommon.qryNomsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with qryNoms.ParamByName('PRODUCT_CLASS_CODE') do
    if IsNull then
      AsInteger:= ProductClassToInt(pcNormal);
end;

procedure TdmCommon.qryNomsEditAfterProviderStartTransaction(DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmCommon.prvPrecisionLevelsBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukInsert) then
    begin
      qryNewPrecisionLevelCode.Open;
      try
        DeltaDS.FieldByName('PRECISION_LEVEL_CODE').NewValue:=
          qryNewPrecisionLevelCodeNEW_PRECISION_LEVEL_CODE.AsInteger;
      finally
        qryNewPrecisionLevelCode.Close;
      end;  { try }
    end;  { if }
end;

procedure TdmCommon.prvPrioritiesBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukInsert) then
    begin
      qryNewPriorityCode.Open;
      try
        DeltaDS.FieldByName('PRIORITY_CODE').NewValue:=
          qryNewPriorityCodeNEW_PRIORITY_CODE.AsInteger;
      finally
        qryNewPriorityCode.Close;
      end;  { try }
    end;  { if }
end;

procedure TdmCommon.prvNomsEditBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmCommon.prvNomsEditBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (SourceDS = qryNomsEdit) and (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('NOM_CODE').NewValue:= NewNomCode;

  if (SourceDS = qryNomItemsEdit) and (UpdateKind = ukInsert) then
    begin
      DeltaDS.FieldByName('NOM_CODE').NewValue:=
        DeltaDS.DataSetField.DataSet.FieldByName('NOM_CODE').NewValue;

      DeltaDS.FieldByName('NOM_ITEM_CODE').NewValue:=
        NewNomItemCode(GetFieldValue(DeltaDS.FieldByName('NOM_CODE')));

      DeltaDS.FieldByName('CREATE_EMPLOYEE_CODE').NewValue:=
        DeltaDS.FieldByName('CHANGE_EMPLOYEE_CODE').NewValue;
      DeltaDS.FieldByName('CREATE_DATE').NewValue:=
        DeltaDS.FieldByName('CHANGE_DATE').NewValue;
      DeltaDS.FieldByName('CREATE_TIME').NewValue:=
        DeltaDS.FieldByName('CHANGE_TIME').NewValue;
    end;  { if }                      
end;

procedure TdmCommon.GetMinAndMaxPriorityNoCodes(out MinPriorityNoCode,
  MaxPriorityNoCode: Integer);
begin
  qryMinAndMaxPriorityNoCodes.Open;
  try
    MinPriorityNoCode:= qryMinAndMaxPriorityNoCodesMIN_PRIORITY_NO_CODE.AsInteger;
    MaxPriorityNoCode:= qryMinAndMaxPriorityNoCodesMAX_PRIORITY_NO_CODE.AsInteger;
  finally
    qryMinAndMaxPriorityNoCodes.Close;
  end;  { try }
end;

function TdmCommon.MoneyToBulgarianText(AAmount: Double; ACurrencyCode: Integer): string;
const
  SAnd = 'и';

var
  t: Currency;
  leva: Integer;
  stotinki: Integer;
begin
  t:= Abs(AAmount);
  Result:= '';

  leva:= RealRound(t * 100) div 100;
  stotinki:= RealRound(Frac(t) * 100);

  qryCurrencies.Open;
  try
    if not qryCurrencies.Locate('CURRENCY_CODE', ACurrencyCode, []) then
      raise Exception.Create('MoneyToBulgarianText(): Currency not found');

    if (t >= 1) then
      begin
        Result:= IntToBulgarianText(leva, IntToGender(qryCurrenciesCURRENCY_NAME_GENDER_CODE.AsInteger)) + ' ';
        if (leva >= 2) then
          Result:= Result + qryCurrenciesCURRENCY_NAME_PLURAL.AsString + ' '
        else
          Result:= Result + qryCurrenciesCURRENCY_NAME_SINGULAR.AsString + ' ';
      end;

    // tui dolnoto da ne se pravi s tip real, extended i prochie!!!
    // tipa currency biva, shtoto e s fiksirana tochnost 0.0000
    if (stotinki >= 1) and (stotinki <= 99) then
      begin
        if (Result <> '') then
          Result:= Result + SAnd + ' ' + IntToBulgarianText(stotinki, IntToGender(qryCurrenciesCURRENCY_CENT_NAME_GENDER_CODE.AsInteger)) + ' '
        else
          Result:= IntToBulgarianText(stotinki, IntToGender(qryCurrenciesCURRENCY_CENT_NAME_GENDER_CODE.AsInteger)) + ' ';

        if (stotinki >= 2) then
          Result:= Result + qryCurrenciesCURRENCY_CENT_NAME_PLURAL.AsString
        else
          Result:= Result + qryCurrenciesCURRENCY_CENT_NAME_SINGULAR.AsString;
      end;
  finally
    qryCurrencies.Close;
  end;  { try }
end;

function TdmCommon.MoneyToEnglishText(AAmount: Double;
  ACurrencyCode: Integer): string;
const
  SAnd = 'and';

var
  AbsoluteAmount: Currency;
  Bills: Integer;
  Coins: Integer;
begin
  AbsoluteAmount:= Abs(AAmount);
  Result:= '';

  Bills:= RealRound(AbsoluteAmount * 100) div 100;
  Coins:= RealRound(Frac(AbsoluteAmount) * 100);

  qryCurrencies.Open;
  try
    if not qryCurrencies.Locate('CURRENCY_CODE', ACurrencyCode, []) then
      raise Exception.Create('MoneyToEnglishText(): Currency not found');

    if (AbsoluteAmount >= 1) then
      begin
        Result:= IntToEnglishText(Bills) + ' ';
        if (Bills >= 2) then
          Result:= Result + qryCurrenciesCURRENCY_I_NAME_PLURAL.AsString + ' '
        else
          Result:= Result + qryCurrenciesCURRENCY_I_NAME_SINGULAR.AsString + ' ';
      end;

    // tui dolnoto da ne se pravi s tip real, extended i prochie!!!
    // tipa currency biva, shtoto e s fiksirana tochnost 0.0000
    if (Coins >= 1) and (Coins <= 99) then
      begin
        if (Result <> '') then
          Result:= Result + SAnd + ' ' + IntToEnglishText(Coins) + ' '
        else
          Result:= IntToEnglishText(Coins) + ' ';

        if (Coins >= 2) then
          Result:= Result + qryCurrenciesCURRENCY_CENT_I_NAME_PLURAL.AsString
        else
          Result:= Result + qryCurrenciesCURRENCY_CENT_I_NAME_SINGULAR.AsString;
      end;
  finally
    qryCurrencies.Close;
  end;  { try }
end;

function TdmCommon.MoneyToLocalText(AAmount: Double;
  ACurrencyCode: Integer): string;
begin
  Result:= MoneyToText(AAmount, ACurrencyCode, SystemLocaleToInt(LoginContext.SystemLocale));
end;

function TdmCommon.MoneyToText(AAmount: Double; ACurrencyCode,
  ASystemLocaleCode: Integer): string;
var
  SystemLocale: TSystemLocale;
begin
  SystemLocale:= IntToSystemLocale(ASystemLocaleCode);

  case SystemLocale of
    slBulgarian:
      Result:= MoneyToBulgarianText(AAmount, ACurrencyCode);
    slGBEnglish, slUSEnglish:
      Result:= MoneyToEnglishText(AAmount, ACurrencyCode);
  else
    raise Exception.Create('MoneyToText(): Not implemented for given System Locale.');
  end;
end;

function TdmCommon.NewMeasureCode: Integer;
begin
  qryNewMeasureCode.Open;
  try
    Result:= qryNewMeasureCodeNEW_MEASURE_CODE.AsInteger;
  finally
    qryNewMeasureCode.Close;
  end;
end;

function TdmCommon.NewNomCode: Integer;
begin
  qryNewNomCode.Open;
  try
    Result:= qryNewNomCodeNEW_NOM_CODE.AsInteger;
  finally
    qryNewNomCode.Close;
  end;
end;

function TdmCommon.NewNomItemCode(ANomCode: Integer): Integer;
begin
  qryNewNomItemCode.ParamByName('NOM_CODE').AsInteger:= ANomCode;
  Result:=
    qryNewNomItemCode.TempOpen/
      function: Integer begin
        Result:= qryNewNomItemCodeNEW_NOM_ITEM_CODE.AsInteger;
      end;
end;

procedure TdmCommon.GetNomItemData(ANomCode, ANomItemCode: Integer;
  out NomItemName, NomItemDescription: string;
  out DocBranchCode, DocCode: Integer; out HasDocItems: Boolean);
begin
  with qryNomItemData do
    begin
      ParamByName('NOM_CODE').AsInteger:= ANomCode;
      ParamByName('NOM_ITEM_CODE').AsInteger:= ANomItemCode;
      Open;
      try
        NomItemName:= qryNomItemDataNOM_ITEM_NAME.AsString;
        NomItemDescription:= qryNomItemDataNOM_ITEM_DESCRIPTION.AsString;
        DocBranchCode:= qryNomItemDataDOC_BRANCH_CODE.AsInteger;
        DocCode:= qryNomItemDataDOC_CODE.AsInteger;
        HasDocItems:= qryNomItemDataHAS_DOC_ITEMS.AsBoolean;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

initialization
  TdmCommonProxy.FSingleton:= TdmCommonProxy.Create(TdmCommon);

finalization
  FreeAndNil(TdmCommonProxy.FSingleton);
end.
