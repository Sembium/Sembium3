unit uLoginContext;

interface

uses
  uUtils, uLicenseUtils, uSystemLocaleUtils;

type
  TParamsTreeShowDetail = (ptsdNone, ptsdParams, ptsdDocs);
  TDeptsTreeShowDetail = (dtsdNone, dtsdOccupations, dtsdDocs);

type
  TLoginContext = class abstract
  strict private
    FIsSessionReadOnly: Boolean;

    FUserCode: Integer;
    FLocalBranchCode: Integer;
    FLocalBranchNo: Integer;
    FLocalBranchName: string;

    FCompanyShortName: string;
    FCompanyLongName: string;

    FLateSaleDays: Integer;
    FFutureSaleDays: Integer;

    FBaseCurrencyCode: Integer;
    FBaseCurrencyAbbrev: string;
    FSecondaryCurrencyCode: Integer;
    FSecondaryCurrencyAbbrev: string;
    FDefaultTreeCustomCode: Boolean;
    FDefaultPriorityCode: Integer;
    FDefaultProductionOrderPriorityCode: Integer;
    FDefaultDateUnitCode: Integer;

    FUserFullName: string;
    FUserActivities: TIntegerArray;
    FUserGroups: TIntegerArray;
    FUserSysRoles: TIntegerArray;
    FUserWorkDepts: TIntegerArray;

    FProductsTreeExpandLevels: Integer;
    FDeptsTreeExpandLevels: Integer;

    FMllcIndicatorRefreshInterval: Integer;

    FProductsTreeShowDetail: Integer;
    FDeptsTreeShowDetail: Integer;

    FAutoLimitedDefaultModels: Boolean;

    FMLLimitingWorkdays: Integer;
    FMLCreateWorkdays: Integer;

    FWeekDateFormatting: Boolean;
    FDateIntervalFormatCode: Integer;

    FPSDCompleteInAdvanceWorkdays: Integer;
    FPSDRequestInAdvanceWorkdays: Integer;

    FDefaultShowUncoveredLines: Boolean;

    FDefaultSalesActivePage: Integer;

    FDefaultSalesExpActivePage: Integer;

    FDefaultDeliveriesActivePage: Integer;

    FExpireDate: TDateTime;

    FWorkdayBeginHour: TDateTime;
    FWorkdayEndHour: TDateTime;
    FIsSaleManufactureQuantityAutoLoaded: Boolean;

    FProductionOrganizerProfessionCode: Integer;
    FIsDiscountPercentShown: Boolean;
    FMaxSaleInvestedValueDiffPercent: Real;
    FProductionOrderLateDays: Integer;
    FProductionLevelCode: Integer;

    FDocsRemoteRootPath: string;
    FDocsLocalRootPath: string;
    FDocItemMirrorsRootPath: string;
    FDncDocsRelativeRootPath: string;
    FDncServerName: string;

    FCurrentDeptCode: Integer;
    FCurrentDeptFullName: string;

    FDefaultModelStatusExpandState: Integer;

    FOperationWorkdaysDeviationPercent: Real;

    FAllowLateMLLimiting: Boolean;

    FIsStoreRequestStoreDealDeptCopiedFromPSD: Boolean;

    FCountApproveCycles: Boolean;
    FDocItemsUnapprovePrompt: Boolean;
    FAllowInternallyStoredDoc: Boolean;
    FCheckSpecDocs: Boolean;
    FCheckModelDocs: Boolean;

    FOccupationRootProductCode: Integer;
    FOccupationAssignmentDaysDiff: Integer;

    FCommonGroupsProductionOrdersMonths: Integer;

    FEOActivatingWorkdays: Integer;

    FDefaultWorkPriorityCode: Integer;

    FMaxEmployeeAvailabilityHours: Real;
    FMinIntegralOvertimeHours: Real;
    FMaxEmployeeMovementRegistrationHours: Real;
    FEmpAvailModifierAuthorizeProfessionCode: Integer;

    FMaxEmpAvailModifierRegistrationDays: Integer;

    FUserNegativeDisciplineRating: Integer;
    FUserPositiveDisciplineRating: Integer;

    FMinimalExceptEventHours: Integer;

    FMaxUnfinishedMfgPastDays: Integer;

    FDatePeriodsYearPartCode: Integer;

    FExceptEventIndicatorRefreshInterval: Integer;

    FFinancialProductsTreeExpandLevels: Integer;
    FBudgetProductsTreeExpandLevels: Integer;
    FFinancialProductsTreeShowDetail: Integer;
    FBudgetProductsTreeShowDetail: Integer;

    FCurrentDeptIsFinStore: Boolean;

    FFinOrderRequirementCode: Integer;

    FDOSPrint: Boolean;

    FLastLogin: TDateTime;
    FEmployeeNo: Integer;
    FConnectionId: Integer;
    FIsOldActivitySystemVisible: Boolean;
    FIsInvoiceSystemVisible: Boolean;
    FLicensePoolType: TLicensePoolType;
    FTimeZoneId: string;

    FDefaultFinOrderBranchCode: Integer;
    FDefaultFinOrderExecDeptCode: Integer;
    FDefaultDCDModeCode: Integer;

    FSystemLocale: TSystemLocale;

    FDefaultIncludeVAT: Boolean;
    FDefaultProductSpecRequirementCode: Integer;

    FIsAutoCompleteFinOrderVisible: Boolean;
    FOpenNewFinOrder: Boolean;
    FShowProductQuantitiesTreeByDefault: Boolean;
    FIsDiscountPercentShownOnPrint: Boolean;
    FIsAutoCompleteStoreRequestVisible: Boolean;
    FDefaultReloadGroupSaleOnInsert: Boolean;
    FDefaultReloadGroupSaleOnEdit: Boolean;

    FOperationMovementRequiresOccupationDept: Boolean;

    FSpecialControlProfessionCode: Integer;
    FOMRequiresSpecialControlFirst: Boolean;
    FEECtrlMainEmployeeProfessionCode: Integer;
    FDatabaseIconIndex: Integer;
    FIsSessionTest: Boolean;

    FIsPowerUser: Boolean;

    FFeatureFlagOperationsLoading: Boolean;

    FIsValid: Integer;
    function GetIsValid: Boolean;
    procedure SetIsValid(const Value: Boolean);
  strict protected
    procedure SetConnectionId(AConnectionId: Integer);

    procedure SetDefaults; virtual;
    procedure DoSetDefaults; virtual;

    function GetActivityNo(AActivityCode: Integer): Integer; virtual; abstract;

    function GetContextDate: TDateTime;
    function GetContextTime: TDateTime;
    function GetContextNow: TDateTime; virtual; abstract;

    function GetIsSessionReadOnly: Boolean;

    function GetBaseCurrencyAbbrev: string;
    function GetBaseCurrencyCode: Integer;
    function GetCompanyLongName: string;
    function GetCompanyShortName: string;
    function GetDefaultProductionOrderPriorityCode: Integer;
    function GetDefaultPriorityCode: Integer;
    function GetDefaultTreeCustomCode: Boolean;
    function GetDefaultDateUnitCode: Integer;
    function GetFutureSaleDays: Integer;
    function GetLateSaleDays: Integer;
    function GetLocalBranchCode: Integer;
    function GetLocalBranchName: string;
    function GetLocalBranchNo: Integer;
    function GetSecondaryCurrencyAbbrev: string;
    function GetSecondaryCurrencyCode: Integer;
    function GetUserActivities: TIntegerArray;
    function GetUserGroups: TIntegerArray;
    function GetUserSysRoles: TIntegerArray;
    function GetUserWorkDepts: TIntegerArray;
    function GetUserCode: Integer;
    function GetUserFullName: string;
    function GetProductsTreeExpandLevels: Integer;
    function GetDeptsTreeExpandLevels: Integer;
    function GetMllcIndicatorRefreshInterval: Integer;
    function GetProductsTreeShowDetail: Integer;
    function GetDeptsTreeShowDetail: Integer;
    function GetAutoLimitedDefaultModels: Boolean;
    function GetMLLimitingWorkdays: Integer;
    function GetMLCreateWorkdays: Integer;
    function GetWeekDateFormatting: Boolean;
    function GetDateIntervalFormatCode: Integer;
    function GetPSDCompleteInAdvanceWorkdays: Integer;
    function GetPSDRequestInAdvanceWorkdays: Integer;
    function GetDefaultShowUncoveredLines: Boolean;
    function GetDefaultSalesActivePage: Integer;
    function GetDefaultSalesExpActivePage: Integer;
    function GetDefaultDeliveriesActivePage: Integer;
    function GetExpireDate: TDateTime;
    function GetWorkdayBeginHour: TDateTime;
    function GetWorkdayEndHour: TDateTime;
    function GetIsSaleManufactureQuantityAutoLoaded: Boolean;
    function GetProductionOrganizerProfessionCode: Integer;
    function GetIsDiscountPercentShown: Boolean;
    function GetMaxSaleInvestedValueDiffPercent: Real;
    function GetProductionOrderLateDays: Integer;
    function GetProductionLevelCode: Integer;
    function GetDocsRemoteRootPath: string;
    function GetDocsLocalRootPath: string;
    function GetDocItemMirrorsRootPath: string;
    function GetDncDocsRelativeRootPath: string;
    function GetDncServerName: string;
    function GetCurrentDeptCode: Integer;
    function GetCurrentDeptFullName: string;
    function GetDefaultModelStatusExpandState: Integer;
    function GetOperationWorkdaysDeviationPercent: Real;
    function GetAllowLateMLLimiting: Boolean;
    function GetIsStoreRequestStoreDealDeptCopiedFromPSD: Boolean;
    function GetCountApproveCycles: Boolean;
    function GetDocItemsUnapprovePrompt: Boolean;
    function GetAllowInternallyStoredDoc: Boolean;
    function GetCheckSpecDocs: Boolean;
    function GetCheckModelDocs: Boolean;
    function GetOccupationRootProductCode: Integer;
    function GetOccupationAssignmentDaysDiff: Integer;
    function GetCommonGroupsProductionOrdersMonths: Integer;
    function GetEOActivatingWorkdays: Integer;
    function GetDefaultWorkPriorityCode: Integer;
    function GetMaxEmployeeAvailabilityHours: Real;
    function GetMinIntegralOvertimeHours: Real;
    function GetMaxEmployeeMovementRegistrationHours: Real;
    function GetEmpAvailModifierAuthorizeProfessionCode: Integer;
    function GetMaxEmpAvailModifierRegistrationDays: Integer;
    function GetUserNegativeDisciplineRating: Integer;
    function GetUserPositiveDisciplineRating: Integer;
    function GetMinimalExceptEventHours: Integer;
    function GetMaxUnfinishedMfgPastDays: Integer;
    function GetDatePeriodsYearPartCode: Integer;
    function GetExceptEventIndicatorRefreshInterval: Integer;
    function GetFinancialProductsTreeExpandLevels: Integer;
    function GetBudgetProductsTreeExpandLevels: Integer;
    function GetFinancialProductsTreeShowDetail: Integer;
    function GetBudgetProductsTreeShowDetail: Integer;
    function GetCurrentDeptIsFinStore: Boolean;
    function GetFinOrderRequirementCode: Integer;
    function GetDOSPrint: Boolean;
    function GetLastLogin: TDateTime;
    function GetEmployeeNo: Integer;
    function GetConnectionId: Integer;
    function GetIsOldActivitySystemVisible: Boolean;
    function GetIsInvoiceSystemVisible: Boolean;
    function GetLicensePoolType: TLicensePoolType;
    function GetTimeZoneId: string;
    function GetDefaultFinOrderBranchCode: Integer;
    function GetDefaultFinOrderExecDeptCode: Integer;
    function GetDefaultDCDModeCode: Integer;
    function GetDefaultSystemLocale: TSystemLocale;
    function GetSystemLocale: TSystemLocale;
    function GetDefaultIncludeVAT: Boolean;
    function GetDefaultProductSpecRequirementCode: Integer;
    function GetIsAutoCompleteFinOrderVisible: Boolean;
    function GetOpenNewFinOrder: Boolean;
    function GetShowProductQuantitiesTreeByDefault: Boolean;
    function GetIsDiscountPercentShownOnPrint: Boolean;
    function GetIsAutoCompleteStoreRequestVisible: Boolean;
    function GetDefaultReloadGroupSaleOnInsert: Boolean;
    function GetDefaultReloadGroupSaleOnEdit: Boolean;
    function GetOperationMovementRequiresOccupationDept: Boolean;
    function GetSpecialControlProfessionCode: Integer;
    function GetOMRequiresSpecialControlFirst: Boolean;
    function GetEECtrlMainEmployeeProfessionCode: Integer;
    function GetDatabaseIconIndex: Integer;
    function GetIsSessionTest: Boolean;
    function GetIsPowerUser: Boolean;
    function GetFeatureFlagOperationsLoading: Boolean;

  protected
    procedure SetAsVariant(const v: OleVariant);

    procedure SetIsSessionReadOnly(const Value: Boolean);
    procedure SetBaseCurrencyAbbrev(const Value: string);
    procedure SetBaseCurrencyCode(const Value: Integer);
    procedure SetCompanyLongName(const Value: string);
    procedure SetCompanyShortName(const Value: string);
    procedure SetDefaultProductionOrderPriorityCode(const Value: Integer);
    procedure SetDefaultPriorityCode(const Value: Integer);
    procedure SetDefaultTreeCustomCode(const Value: Boolean);
    procedure SetDefaultDateUnitCode(const Value: Integer);
    procedure SetFutureSaleDays(const Value: Integer);
    procedure SetLateSaleDays(const Value: Integer);
    procedure SetLocalBranchCode(const Value: Integer);
    procedure SetLocalBranchName(const Value: string);
    procedure SetLocalBranchNo(const Value: Integer);
    procedure SetSecondaryCurrencyAbbrev(const Value: string);
    procedure SetSecondaryCurrencyCode(const Value: Integer);
    procedure SetUserActivities(const Value: TIntegerArray);
    procedure SetUserGroups(const Value: TIntegerArray);
    procedure SetUserSysRoles(const Value: TIntegerArray);
    procedure SetUserWorkDepts(const Value: TIntegerArray);
    procedure SetUserFullName(const Value: string);
    procedure SetUserCode(const Value: Integer);
    procedure SetProductsTreeExpandLevels(const Value: Integer);
    procedure SetDeptsTreeExpandLevels(const Value: Integer);
    procedure SetMllcIndicatorRefreshInterval(const Value: Integer);
    procedure SetProductsTreeShowDetail(const Value: Integer);
    procedure SetDeptsTreeShowDetail(const Value: Integer);
    procedure SetAutoLimitedDefaultModels(const Value: Boolean);
    procedure SetMLLimitingWorkdays(const Value: Integer);
    procedure SetMLCreateWorkdays(const Value: Integer);
    procedure SetWeekDateFormatting(const Value: Boolean);
    procedure SetDateIntervalFormatCode(const Value: Integer);
    procedure SetPSDCompleteInAdvanceWorkdays(const Value: Integer);
    procedure SetPSDRequestInAdvanceWorkdays(const Value: Integer);
    procedure SetDefaultShowUncoveredLines(const Value: Boolean);
    procedure SetDefaultSalesActivePage(const Value: Integer);
    procedure SetDefaultSalesExpActivePage(const Value: Integer);
    procedure SetDefaultDeliveriesActivePage(const Value: Integer);
    procedure SetExpireDate(const Value: TDateTime);
    procedure SetWorkdayBeginHour(const Value: TDateTime);
    procedure SetWorkdayEndHour(const Value: TDateTime);
    procedure SetIsSaleManufactureQuantityAutoLoaded(const Value: Boolean);
    procedure SetProductionOrganizerProfessionCode(const Value: Integer);
    procedure SetIsDiscountPercentShown(const Value: Boolean);
    procedure SetMaxSaleInvestedValueDiffPercent(const Value: Real);
    procedure SetProductionOrderLateDays(const Value: Integer);
    procedure SetProductionLevelCode(const Value: Integer);
    procedure SetDocsRemoteRootPath(const Value: string);
    procedure SetDocsLocalRootPath(const Value: string);
    procedure SetDocItemMirrorsRootPath(const Value: string);
    procedure SetDncDocsRelativeRootPath(const Value: string);
    procedure SetDncServerName(const Value: string);
    procedure SetCurrentDeptCode(const Value: Integer);
    procedure SetCurrentDeptFullName(const Value: string);
    procedure SetDefaultModelStatusExpandState(const Value: Integer);
    procedure SetOperationWorkdaysDeviationPercent(const Value: Real);
    procedure SetAllowLateMLLimiting(const Value: Boolean);
    procedure SetIsStoreRequestStoreDealDeptCopiedFromPSD(const Value: Boolean);
    procedure SetCountApproveCycles(const Value: Boolean);
    procedure SetDocItemsUnapprovePrompt(const Value: Boolean);
    procedure SetAllowInternallyStoredDoc(const Value: Boolean);
    procedure SetCheckSpecDocs(const Value: Boolean);
    procedure SetCheckModelDocs(const Value: Boolean);
    procedure SetOccupationRootProductCode(const Value: Integer);
    procedure SetOccupationAssignmentDaysDiff(const Value: Integer);
    procedure SetCommonGroupsProductionOrdersMonths(const Value: Integer);
    procedure SetEOActivatingWorkdays(const Value: Integer);
    procedure SetDefaultWorkPriorityCode(const Value: Integer);
    procedure SetMaxEmployeeAvailabilityHours(const Value: Real);
    procedure SetMinIntegralOvertimeHours(const Value: Real);
    procedure SetMaxEmployeeMovementRegistrationHours(const Value: Real);
    procedure SetEmpAvailModifierAuthorizeProfessionCode(const Value: Integer);
    procedure SetMaxEmpAvailModifierRegistrationDays(const Value: Integer);
    procedure SetUserNegativeDisciplineRating(const Value: Integer);
    procedure SetUserPositiveDisciplineRating(const Value: Integer);
    procedure SetMinimalExceptEventHours(const Value: Integer);
    procedure SetMaxUnfinishedMfgPastDays(const Value: Integer);
    procedure SetDatePeriodsYearPartCode(const Value: Integer);
    procedure SetExceptEventIndicatorRefreshInterval(const Value: Integer);
    procedure SetFinancialProductsTreeExpandLevels(const Value: Integer);
    procedure SetBudgetProductsTreeExpandLevels(const Value: Integer);
    procedure SetFinancialProductsTreeShowDetail(const Value: Integer);
    procedure SetBudgetProductsTreeShowDetail(const Value: Integer);
    procedure SetCurrentDeptIsFinStore(const Value: Boolean);
    procedure SetFinOrderRequirementCode(const Value: Integer);
    procedure SetDOSPrint(const Value: Boolean);
    procedure SetLastLogin(const Value: TDateTime);
    procedure SetEmployeeNo(const Value: Integer);
    procedure SetIsOldActivitySystemVisible(const Value: Boolean);
    procedure SetIsInvoiceSystemVisible(const Value: Boolean);
    procedure SetLicensePoolType(const Value: TLicensePoolType);
    procedure SetTimeZoneId(const Value: string);
    procedure SetDefaultFinOrderBranchCode(const Value: Integer);
    procedure SetDefaultFinOrderExecDeptCode(const Value: Integer);
    procedure SetDefaultDCDModeCode(const Value: Integer);
    procedure SetSystemLocale(const Value: TSystemLocale);
    procedure SetDefaultIncludeVAT(const Value: Boolean);
    procedure SetDefaultProductSpecRequirementCode(const Value: Integer);
    procedure SetIsAutoCompleteFinOrderVisible(const Value: Boolean);
    procedure SetOpenNewFinOrder(const Value: Boolean);
    procedure SetShowProductQuantitiesTreeByDefault(const Value: Boolean);
    procedure SetIsDiscountPercentShownOnPrint(const Value: Boolean);
    procedure SetIsAutoCompleteStoreRequestVisible(const Value: Boolean);
    procedure SetDefaultReloadGroupSaleOnInsert(const Value: Boolean);
    procedure SetDefaultReloadGroupSaleOnEdit(const Value: Boolean);
    procedure SetOperationMovementRequiresOccupationDept(const Value: Boolean);
    procedure SetSpecialControlProfessionCode(const Value: Integer);
    procedure SetOMRequiresSpecialControlFirst(const Value: Boolean);
    procedure SetEECtrlMainEmployeeProfessionCode(const Value: Integer);
    procedure SetDatabaseIconIndex(const Value: Integer);
    procedure SetIsSessionTest(const Value: Boolean);
    procedure SetIsPowerUser(const Value: Boolean);
    procedure SetFeatureFlagOperationsLoading(const Value: Boolean);
  public
    constructor Create;

    function DateToStr(ADate: TDateTime): string;

    function GetAsVariant: OleVariant;

    procedure CheckUserActivity(ActivityCode: Integer);
    procedure CheckUserActivities(const ActivityCodes: array of Integer);
    function HasUserActivity(ActivityCode: Integer): Boolean;
    function HasAnyUserActivity(const ActivityCodes: array of Integer): Boolean;
    function IsUserMemberOf(UserGroupCode: Integer): Boolean;
    function IsUserInSysRole(ASysRoleCode: Integer): Boolean;
    function HasUserWorkDept(UserWorkDeptCode: Integer): Boolean;
    procedure CheckUserWorkDept(WorkDeptCode: Integer);

    property ContextDate: TDateTime read GetContextDate;
    property ContextTime: TDateTime read GetContextTime;
    property ContextNow: TDateTime read GetContextNow;

    property IsSessionReadOnly: Boolean read GetIsSessionReadOnly;

    property UserFullName: string read GetUserFullName;
    property UserActivities: TIntegerArray read GetUserActivities;
    property UserGroups: TIntegerArray read GetUserGroups;
    property UserSysRoles: TIntegerArray read GetUserSysRoles;
    property UserWorkDepts: TIntegerArray read GetUserWorkDepts;

    property LocalBranchCode: Integer read GetLocalBranchCode;
    property LocalBranchNo: Integer read GetLocalBranchNo;
    property LocalBranchName: string read GetLocalBranchName;

    property CompanyShortName: string read GetCompanyShortName;
    property CompanyLongName: string read GetCompanyLongName;

    property LateSaleDays: Integer read GetLateSaleDays;
    property FutureSaleDays: Integer read GetFutureSaleDays;

    property BaseCurrencyCode: Integer read GetBaseCurrencyCode;
    property BaseCurrencyAbbrev: string read GetBaseCurrencyAbbrev;
    property SecondaryCurrencyCode: Integer read GetSecondaryCurrencyCode;
    property SecondaryCurrencyAbbrev: string read GetSecondaryCurrencyAbbrev;

    property DefaultTreeCustomCode: Boolean read GetDefaultTreeCustomCode;
    property DefaultPriorityCode: Integer read GetDefaultPriorityCode;
    property DefaultProductionOrderPriorityCode: Integer read GetDefaultProductionOrderPriorityCode;
    property DefaultDateUnitCode: Integer read GetDefaultDateUnitCode;

    property UserCode: Integer read GetUserCode;

    property ProductsTreeExpandLevels: Integer read GetProductsTreeExpandLevels;
    property DeptsTreeExpandLevels: Integer read GetDeptsTreeExpandLevels;

    property MllcIndicatorRefreshInterval: Integer read GetMllcIndicatorRefreshInterval;

    property ProductsTreeShowDetail: Integer read GetProductsTreeShowDetail;
    property DeptsTreeShowDetail: Integer read GetDeptsTreeShowDetail;

    property AutoLimitedDefaultModels: Boolean read GetAutoLimitedDefaultModels;

    property MLLimitingWorkdays: Integer read GetMLLimitingWorkdays;
    property MLCreateWorkdays: Integer read GetMLCreateWorkdays;

    property WeekDateFormatting: Boolean read GetWeekDateFormatting;
    property DateIntervalFormatCode: Integer read GetDateIntervalFormatCode;

    property PSDCompleteInAdvanceWorkdays: Integer read GetPSDCompleteInAdvanceWorkdays;
    property PSDRequestInAdvanceWorkdays: Integer read GetPSDRequestInAdvanceWorkdays;

    property DefaultShowUncoveredLines: Boolean read GetDefaultShowUncoveredLines;

    property DefaultSalesActivePage: Integer read GetDefaultSalesActivePage;

    property DefaultSalesExpActivePage: Integer read GetDefaultSalesExpActivePage;

    property DefaultDeliveriesActivePage: Integer read GetDefaultDeliveriesActivePage;

    property ExpireDate: TDateTime read GetExpireDate;

    property WorkdayBeginHour: TDateTime read GetWorkdayBeginHour;
    property WorkdayEndHour: TDateTime read GetWorkdayEndHour;
    property IsSaleManufactureQuantityAutoLoaded: Boolean read GetIsSaleManufactureQuantityAutoLoaded;

    property ProductionOrganizerProfessionCode: Integer read GetProductionOrganizerProfessionCode;
    property IsDiscountPercentShown: Boolean read GetIsDiscountPercentShown;
    property MaxSaleInvestedValueDiffPercent: Real read GetMaxSaleInvestedValueDiffPercent;
    property ProductionOrderLateDays: Integer read GetProductionOrderLateDays;
    property ProductionLevelCode: Integer read GetProductionLevelCode;

    property DocsRemoteRootPath: string read GetDocsRemoteRootPath;
    property DocsLocalRootPath: string read GetDocsLocalRootPath;
    property DocItemMirrorsRootPath: string read GetDocItemMirrorsRootPath;
    property DncDocsRelativeRootPath: string read GetDncDocsRelativeRootPath;
    property DncServerName: string read GetDncServerName;

    property CurrentDeptCode: Integer read GetCurrentDeptCode;
    property CurrentDeptFullName: string read GetCurrentDeptFullName;

    property DefaultModelStatusExpandState: Integer read GetDefaultModelStatusExpandState;

    property OperationWorkdaysDeviationPercent: Real read GetOperationWorkdaysDeviationPercent;

    property AllowLateMLLimiting: Boolean read GetAllowLateMLLimiting;

    property IsStoreRequestStoreDealDeptCopiedFromPSD: Boolean read GetIsStoreRequestStoreDealDeptCopiedFromPSD;

    property CountApproveCycles: Boolean read GetCountApproveCycles;
    property DocItemsUnapprovePrompt: Boolean read GetDocItemsUnapprovePrompt;
    property AllowInternallyStoredDoc: Boolean read GetAllowInternallyStoredDoc;
    property CheckSpecDocs: Boolean read GetCheckSpecDocs;
    property CheckModelDocs: Boolean read GetCheckModelDocs;

    property OccupationRootProductCode: Integer read GetOccupationRootProductCode;
    property OccupationAssignmentDaysDiff: Integer read GetOccupationAssignmentDaysDiff;

    property CommonGroupsProductionOrdersMonths: Integer read GetCommonGroupsProductionOrdersMonths;

    property EOActivatingWorkdays: Integer read GetEOActivatingWorkdays;

    property DefaultWorkPriorityCode: Integer read GetDefaultWorkPriorityCode;

    property MaxEmployeeAvailabilityHours: Real read GetMaxEmployeeAvailabilityHours;
    property MinIntegralOvertimeHours: Real read GetMinIntegralOvertimeHours;
    property MaxEmployeeMovementRegistrationHours: Real read GetMaxEmployeeMovementRegistrationHours;
    property EmpAvailModifierAuthorizeProfessionCode: Integer read GetEmpAvailModifierAuthorizeProfessionCode;

    property MaxEmpAvailModifierRegistrationDays: Integer read GetMaxEmpAvailModifierRegistrationDays;

    property UserNegativeDisciplineRating: Integer read GetUserNegativeDisciplineRating;
    property UserPositiveDisciplineRating: Integer read GetUserPositiveDisciplineRating;

    property MinimalExceptEventHours: Integer read GetMinimalExceptEventHours;

    property MaxUnfinishedMfgPastDays: Integer read GetMaxUnfinishedMfgPastDays;

    property DatePeriodsYearPartCode: Integer read GetDatePeriodsYearPartCode;

    property ExceptEventIndicatorRefreshInterval: Integer read GetExceptEventIndicatorRefreshInterval;

    property FinancialProductsTreeExpandLevels: Integer read GetFinancialProductsTreeExpandLevels;
    property BudgetProductsTreeExpandLevels: Integer read GetBudgetProductsTreeExpandLevels;
    property FinancialProductsTreeShowDetail: Integer read GetFinancialProductsTreeShowDetail;
    property BudgetProductsTreeShowDetail: Integer read GetBudgetProductsTreeShowDetail;

    property CurrentDeptIsFinStore: Boolean read GetCurrentDeptIsFinStore;

    property FinOrderRequirementCode: Integer read GetFinOrderRequirementCode;

    property DOSPrint: Boolean read GetDOSPrint;

    property LastLogin: TDateTime read GetLastLogin;
    property EmployeeNo: Integer read GetEmployeeNo;
    property ConnectionId: Integer read GetConnectionId;
    property IsOldActivitySystemVisible: Boolean read GetIsOldActivitySystemVisible;
    property IsInvoiceSystemVisible: Boolean read GetIsInvoiceSystemVisible;
    property LicensePoolType: TLicensePoolType read GetLicensePoolType;
    property TimeZoneId: string read GetTimeZoneId;

    property DefaultFinOrderBranchCode: Integer read GetDefaultFinOrderBranchCode;
    property DefaultFinOrderExecDeptCode: Integer read GetDefaultFinOrderExecDeptCode;
    property DefaultDCDModeCode: Integer read GetDefaultDCDModeCode;

    property SystemLocale: TSystemLocale read GetSystemLocale;
    property DefaultSystemLocale: TSystemLocale read GetDefaultSystemLocale;

    property DefaultIncludeVAT: Boolean read GetDefaultIncludeVAT;
    property DefaultProductSpecRequirementCode: Integer read GetDefaultProductSpecRequirementCode;
    property IsAutoCompleteFinOrderVisible: Boolean read GetIsAutoCompleteFinOrderVisible;
    property OpenNewFinOrder: Boolean read GetOpenNewFinOrder;
    property ShowProductQuantitiesTreeByDefault: Boolean read GetShowProductQuantitiesTreeByDefault;
    property IsDiscountPercentShownOnPrint: Boolean read GetIsDiscountPercentShownOnPrint;
    property IsAutoCompleteStoreRequestVisible: Boolean read GetIsAutoCompleteStoreRequestVisible;
    property DefaultReloadGroupSaleOnInsert: Boolean read GetDefaultReloadGroupSaleOnInsert;
    property DefaultReloadGroupSaleOnEdit: Boolean read GetDefaultReloadGroupSaleOnEdit;

    property OperationMovementRequiresOccupationDept: Boolean read GetOperationMovementRequiresOccupationDept;

    property SpecialControlProfessionCode: Integer read FSpecialControlProfessionCode;
    property OMRequiresSpecialControlFirst: Boolean read FOMRequiresSpecialControlFirst;
    property EECtrlMainEmployeeProfessionCode: Integer read FEECtrlMainEmployeeProfessionCode;

    property DatabaseIconIndex: Integer read FDatabaseIconIndex;
    property IsSessionTest: Boolean read FIsSessionTest;
    property IsPowerUser: Boolean read FIsPowerUser;

    property FeatureFlagOperationsLoading: Boolean read FFeatureFlagOperationsLoading;

    property IsValid: Boolean read GetIsValid write SetIsValid;
  end;

function ParamsTreeShowDetailToInt(AValue: TParamsTreeShowDetail): Integer;
function IntToParamsTreeShowDetail(AValue: Integer): TParamsTreeShowDetail;

function DeptsTreeShowDetailToInt(AValue: TDeptsTreeShowDetail): Integer;
function IntToDeptsTreeShowDetail(AValue: Integer): TDeptsTreeShowDetail;

implementation

uses
  Windows, SysUtils, DateUtils, JclDateTime, Variants, uServerMessageIds, uMessageUtils,
  System.SyncObjs;

function ParamsTreeShowDetailToInt(AValue: TParamsTreeShowDetail): Integer;
begin
  Result:= Integer(AValue);
end;

function IntToParamsTreeShowDetail(AValue: Integer): TParamsTreeShowDetail;
begin
  Result:= TParamsTreeShowDetail(AValue);
end;

function DeptsTreeShowDetailToInt(AValue: TDeptsTreeShowDetail): Integer;
begin
  Result:= Integer(AValue);
end;

function IntToDeptsTreeShowDetail(AValue: Integer): TDeptsTreeShowDetail;
begin
  Result:= TDeptsTreeShowDetail(AValue);
end;

{ TLoginContext }

procedure TLoginContext.CheckUserActivity(ActivityCode: Integer);
begin
  if not HasUserActivity(ActivityCode) then
    raise ENoRights.Create(
      SYouHaveNoRightsForThisOperationId +
      '(' + 'ActivityID:i=' + InternalIntToStr(GetActivityNo(ActivityCode)) + ') ' +
      'ActivityCode: ' + InternalIntToStr(ActivityCode));
end;

procedure TLoginContext.CheckUserActivities(
  const ActivityCodes: array of Integer);
var
  ActivityCode: Integer;
begin
  for ActivityCode in ActivityCodes do
    CheckUserActivity(ActivityCode);
end;

procedure TLoginContext.CheckUserWorkDept(WorkDeptCode: Integer);
begin
  if not HasUserWorkDept(WorkDeptCode) then
    raise Exception.Create(SYouHaveNoWorkDeptsForThisOperationId);
end;

constructor TLoginContext.Create;
begin
  inherited Create;
  SetDefaults;
end;

procedure TLoginContext.DoSetDefaults;
begin
  FUserCode:= 0;

  FIsSessionReadOnly:= False;

  FLocalBranchCode:= 0;
  FLocalBranchNo:= 0;
  FLocalBranchName:= '';

  FCompanyShortName:= '';
  FCompanyLongName:= '';

  FLateSaleDays:= 0;
  FFutureSaleDays:= 0;

  FBaseCurrencyCode:= 0;
  FBaseCurrencyAbbrev:= '';
  FSecondaryCurrencyCode:= 0;
  FSecondaryCurrencyAbbrev:= '';
  FDefaultTreeCustomCode:= False;
  FDefaultPriorityCode:= 0;
  FDefaultProductionOrderPriorityCode:= 0;
  FDefaultDateUnitCode:= 0;

  FUserFullName:= '';
  FUserActivities:= nil;
  FUserGroups:= nil;
  FUserSysRoles:= nil;

  FProductsTreeExpandLevels:= 0;
  FDeptsTreeExpandLevels:= 0;

  FMllcIndicatorRefreshInterval:= 0;

  FProductsTreeShowDetail:= 0;
  FDeptsTreeShowDetail:= 0;

  FAutoLimitedDefaultModels:= False;

  FMLLimitingWorkdays:= 0;
  FMLCreateWorkdays:= 0;

  FWeekDateFormatting:= False;
  FDateIntervalFormatCode:= 2;

  FPSDCompleteInAdvanceWorkdays:= 0;
  FPSDRequestInAdvanceWorkdays:= 0;

  FDefaultShowUncoveredLines:= False;

  FDefaultSalesActivePage:= 1;
  FDefaultSalesExpActivePage:= 1;
  FDefaultDeliveriesActivePage:= 1;

  FExpireDate:= EncodeDate(3000, 1, 1);

  FProductionOrganizerProfessionCode:= 0;
  FProductionLevelCode:= 1;

  FDocsRemoteRootPath:= '';
  FDocsLocalRootPath:= '';
  FDncDocsRelativeRootPath:= '';

  FDefaultModelStatusExpandState:= 1;
  FOperationWorkdaysDeviationPercent:= 0.2;

  FAllowLateMLLimiting:= False;

  FIsStoreRequestStoreDealDeptCopiedFromPSD:= False;

  FCountApproveCycles:= False;
  FDocItemsUnapprovePrompt:= False;
  FAllowInternallyStoredDoc:= False;
  FCheckSpecDocs:= False;
  FCheckModelDocs:= False;

  FOccupationRootProductCode:= 0;
  FOccupationAssignmentDaysDiff:= 0;

  FCommonGroupsProductionOrdersMonths:= 0;

  FEOActivatingWorkdays:= 0;

  FDefaultWorkPriorityCode:= 0;

  FMaxEmployeeAvailabilityHours:= 0;
  FMinIntegralOvertimeHours:= 0;
  FMaxEmployeeMovementRegistrationHours:= 0;
  FEmpAvailModifierAuthorizeProfessionCode:= 0;

  FMaxEmpAvailModifierRegistrationDays:= 0;

  FDocItemMirrorsRootPath:= '';
  FMinimalExceptEventHours:= 0;

  FMaxUnfinishedMfgPastDays:= 0;

  FDatePeriodsYearPartCode:= 1;

  FExceptEventIndicatorRefreshInterval:= 0;

  FFinancialProductsTreeExpandLevels:= 0;
  FBudgetProductsTreeExpandLevels:= 0;
  FFinancialProductsTreeShowDetail:= 0;
  FBudgetProductsTreeShowDetail:= 0;

  FCurrentDeptIsFinStore:= False;

  FFinOrderRequirementCode:= 0;

  FDOSPrint:= False;

  FLastLogin:= MinDate;
  FEmployeeNo:= 0;

  // do not set FConnectionId:= 0;

  FIsOldActivitySystemVisible:= False;
  FIsInvoiceSystemVisible:= False;
  FLicensePoolType:= lptNone;
  FTimeZoneId:= '';

  FIsPowerUser:= False;
  FDefaultFinOrderBranchCode:= 0;
  FDefaultFinOrderExecDeptCode:= 0;
  FDefaultDCDModeCode:= 0;

  FSystemLocale:= slNone;

  FDefaultIncludeVAT:= False;
  FDefaultProductSpecRequirementCode:= 0;
  FIsAutoCompleteFinOrderVisible:= False;
  FOpenNewFinOrder:= False;
  FShowProductQuantitiesTreeByDefault:= False;
  FIsDiscountPercentShownOnPrint:= False;
  FIsAutoCompleteStoreRequestVisible:= False;
  FDefaultReloadGroupSaleOnInsert:= False;
  FDefaultReloadGroupSaleOnEdit:= False;

  FOperationMovementRequiresOccupationDept:= False;

  FSpecialControlProfessionCode:= 0;
  FOMRequiresSpecialControlFirst:= False;
  FEECtrlMainEmployeeProfessionCode:= 0;

  FDatabaseIconIndex:= 0;

  FFeatureFlagOperationsLoading:= False;
end;

function TLoginContext.DateToStr(ADate: TDateTime): string;
begin
  if FWeekDateFormatting then
    Result:= JCLDateTime.FormatDateTime(WeekFormat, ADate)
  else
    Result:= SysUtils.DateToStr(ADate);
end;

function TLoginContext.GetAsVariant: OleVariant;
var
  UserActivitiesVariant: OleVariant;
  UserGroupsVariant: OleVariant;
  UserSysRolesVariant: OleVariant;
  UserWorkDeptsVariant: OleVariant;
begin
  UserActivitiesVariant:= IntArrayToVarArray(FUserActivities);
  UserGroupsVariant:= IntArrayToVarArray(FUserGroups);
  UserSysRolesVariant:= IntArrayToVarArray(FUserSysRoles);
  UserWorkDeptsVariant:= IntArrayToVarArray(FUserWorkDepts);

  Result:= VarArrayOf([
    FUserCode,
    FUserFullName,

    FIsSessionReadOnly,
    
    UserActivitiesVariant,

    FLocalBranchCode,
    FLocalBranchNo,
    FLocalBranchName,

    FCompanyShortName,
    FCompanyLongName,

    FLateSaleDays,
    FFutureSaleDays,

    FBaseCurrencyCode,
    FBaseCurrencyAbbrev,
    FSecondaryCurrencyCode,
    FSecondaryCurrencyAbbrev,
    FDefaultTreeCustomCode,
    FDefaultPriorityCode,
    FDefaultProductionOrderPriorityCode,
    0,                                        // VatPercent, unused
    FDefaultDateUnitCode,
    FProductsTreeExpandLevels,
    FDeptsTreeExpandLevels,
    1,                                        // FDevicesTreeExpandLevels
    FMllcIndicatorRefreshInterval,
    FProductsTreeShowDetail,
    1,                                        // FDevicesTreeShowDetail
    FAutoLimitedDefaultModels,
    FMLLimitingWorkdays,
    FMLCreateWorkdays,
    FWeekDateFormatting,
    FPSDCompleteInAdvanceWorkdays,
    FPSDRequestInAdvanceWorkdays,
    FDefaultShowUncoveredLines,
    FDefaultSalesActivePage,
    FDefaultSalesExpActivePage,
    FDefaultDeliveriesActivePage,
    1,                                        // clients/vendors export path, unused
    1,
    0,                                        // FMaxProductPriceDeviationPercent,
    FExpireDate,
    FWorkdayBeginHour,
    FWorkdayEndHour,
    False,                                    // FDefaultInvoiceOriginalState, unused
    FIsSaleManufactureQuantityAutoLoaded,
    FProductionOrganizerProfessionCode,
    FIsDiscountPercentShown,
    FMaxSaleInvestedValueDiffPercent,
    FProductionOrderLateDays,
    FProductionLevelCode,
    FDocsRemoteRootPath,
    FDocsLocalRootPath,
    FDncDocsRelativeRootPath,
    FDncServerName,
    FCurrentDeptCode,
    FCurrentDeptFullName,
    FDefaultModelStatusExpandState,
    FOperationWorkdaysDeviationPercent,
    FAllowLateMLLimiting,
    FIsStoreRequestStoreDealDeptCopiedFromPSD,
    FCountApproveCycles,
    FDocItemsUnapprovePrompt,
    FAllowInternallyStoredDoc,
    FDateIntervalFormatCode,
    FDeptsTreeShowDetail,
    FCheckSpecDocs,
    FCheckModelDocs,
    FOccupationRootProductCode,
    FOccupationAssignmentDaysDiff,
    FCommonGroupsProductionOrdersMonths,
    FEOActivatingWorkdays,
    FDefaultWorkPriorityCode,
    FMaxEmployeeAvailabilityHours,
    FMinIntegralOvertimeHours,
    FMaxEmployeeMovementRegistrationHours,
    FEmpAvailModifierAuthorizeProfessionCode,
    False,                                    // FDefaultDocItemInternallyStored, unused
    FMaxEmpAvailModifierRegistrationDays,
    FUserNegativeDisciplineRating,
    FUserPositiveDisciplineRating,
    UserGroupsVariant,
    UserWorkDeptsVariant,
    FDocItemMirrorsRootPath,
    FMinimalExceptEventHours,
    FMaxUnfinishedMfgPastDays,
    FDatePeriodsYearPartCode,
    FExceptEventIndicatorRefreshInterval,
    FFinancialProductsTreeExpandLevels,
    FBudgetProductsTreeExpandLevels,
    FFinancialProductsTreeShowDetail,
    FBudgetProductsTreeShowDetail,
    FCurrentDeptIsFinStore,
    UserSysRolesVariant,
    FFinOrderRequirementCode,
    0,
    FDOSPrint,
    '',
    '',
    '',
    0,
    FLastLogin,
    FEmployeeNo,
    FConnectionId,
    '',
    FIsOldActivitySystemVisible,
    FIsInvoiceSystemVisible,
    LicensePoolTypeToInt(FLicensePoolType),
    FTimeZoneId,
    '',
    FIsPowerUser,
    FDefaultFinOrderBranchCode,
    FDefaultFinOrderExecDeptCode,
    FDefaultDCDModeCode,
    SystemLocaleToInt(FSystemLocale),
    FDefaultIncludeVAT,
    FDefaultProductSpecRequirementCode,
    FIsAutoCompleteFinOrderVisible,
    FOpenNewFinOrder,
    FShowProductQuantitiesTreeByDefault,
    FIsDiscountPercentShownOnPrint,
    FIsAutoCompleteStoreRequestVisible,
    FDefaultReloadGroupSaleOnInsert,
    FDefaultReloadGroupSaleOnEdit,
    FOperationMovementRequiresOccupationDept,
    FSpecialControlProfessionCode,
    FOMRequiresSpecialControlFirst,
    FEECtrlMainEmployeeProfessionCode,
    FDatabaseIconIndex,
    FIsSessionTest,
    FFeatureFlagOperationsLoading
  ]);
end;

function TLoginContext.GetAutoLimitedDefaultModels: Boolean;
begin
  Result:= FAutoLimitedDefaultModels;
end;

function TLoginContext.GetBaseCurrencyAbbrev: string;
begin
  Result:= FBaseCurrencyAbbrev;
end;

function TLoginContext.GetBaseCurrencyCode: Integer;
begin
  Result:= FBaseCurrencyCode;
end;

function TLoginContext.GetBudgetProductsTreeExpandLevels: Integer;
begin
  Result:= FBudgetProductsTreeExpandLevels;
end;

function TLoginContext.GetBudgetProductsTreeShowDetail: Integer;
begin
  Result:= FBudgetProductsTreeShowDetail;
end;

function TLoginContext.GetCompanyLongName: string;
begin
  Result:= FCompanyLongName;
end;

function TLoginContext.GetCompanyShortName: string;
begin
  Result:= FCompanyShortName;
end;

function TLoginContext.GetDefaultDateUnitCode: Integer;
begin
  Result:= FDefaultDateUnitCode;
end;

function TLoginContext.GetDefaultDeliveriesActivePage: Integer;
begin
  Result:= FDefaultDeliveriesActivePage;
end;

function TLoginContext.GetDefaultProductionOrderPriorityCode: Integer;
begin
  Result:= FDefaultProductionOrderPriorityCode;
end;

function TLoginContext.GetDefaultPriorityCode: Integer;
begin
  Result:= FDefaultPriorityCode;
end;

function TLoginContext.GetDefaultSalesActivePage: Integer;
begin
  Result:= FDefaultSalesActivePage;
end;

function TLoginContext.GetDefaultSalesExpActivePage: Integer;
begin
  Result:= FDefaultSalesExpActivePage;
end;

function TLoginContext.GetDefaultShowUncoveredLines: Boolean;
begin
  Result:= FDefaultShowUncoveredLines;
end;

function TLoginContext.GetDefaultSystemLocale: TSystemLocale;
begin
  Result:= slUSEnglish;
end;

function TLoginContext.GetDefaultTreeCustomCode: Boolean;
begin
  Result:= FDefaultTreeCustomCode;
end;

function TLoginContext.GetDeptsTreeExpandLevels: Integer;
begin
  Result:= FDeptsTreeExpandLevels;
end;

function TLoginContext.GetExpireDate: TDateTime;
begin
  Result:= FExpireDate;
end;

function TLoginContext.GetFeatureFlagOperationsLoading: Boolean;
begin
  Result:= FFeatureFlagOperationsLoading;
end;

function TLoginContext.GetFinancialProductsTreeExpandLevels: Integer;
begin
  Result:= FFinancialProductsTreeExpandLevels;
end;

function TLoginContext.GetFinancialProductsTreeShowDetail: Integer;
begin
  Result:= FFinancialProductsTreeShowDetail;
end;

function TLoginContext.GetFinOrderRequirementCode: Integer;
begin
  Result:= FFinOrderRequirementCode;
end;

function TLoginContext.GetFutureSaleDays: Integer;
begin
  Result:= FFutureSaleDays;
end;

function TLoginContext.GetLateSaleDays: Integer;
begin
  Result:= FLateSaleDays;
end;

function TLoginContext.GetLocalBranchCode: Integer;
begin
  Result:= FLocalBranchCode;
end;

function TLoginContext.GetLocalBranchName: string;
begin
  Result:= FLocalBranchName;
end;

function TLoginContext.GetLocalBranchNo: Integer;
begin
  Result:= FLocalBranchNo;
end;

function TLoginContext.GetWorkdayBeginHour: TDateTime;
begin
  Result:= FWorkdayBeginHour;
end;

function TLoginContext.GetWorkdayEndHour: TDateTime;
begin
  Result:= FWorkdayEndHour;
end;

function TLoginContext.GetIsSaleManufactureQuantityAutoLoaded: Boolean;
begin
  Result:= FIsSaleManufactureQuantityAutoLoaded;
end;

function TLoginContext.GetIsSessionReadOnly: Boolean;
begin
  Result:= FIsSessionReadOnly;
end;

function TLoginContext.GetIsSessionTest: Boolean;
begin
  Result:= FIsSessionTest;
end;

function TLoginContext.GetMLCreateWorkdays: Integer;
begin
  Result:= FMLCreateWorkdays;
end;

function TLoginContext.GetMllcIndicatorRefreshInterval: Integer;
begin
  Result:= FMllcIndicatorRefreshInterval;
end;

function TLoginContext.GetMLLimitingWorkdays: Integer;
begin
  Result:= FMLLimitingWorkdays;
end;

function TLoginContext.GetProductsTreeExpandLevels: Integer;
begin
  Result:= FProductsTreeExpandLevels;
end;

function TLoginContext.GetProductsTreeShowDetail: Integer;
begin
  Result:= FProductsTreeShowDetail;
end;

function TLoginContext.GetDeptsTreeShowDetail: Integer;
begin
  Result:= FDeptsTreeShowDetail;
end;

function TLoginContext.GetPSDCompleteInAdvanceWorkdays: Integer;
begin
  Result:= FPSDCompleteInAdvanceWorkdays;
end;

function TLoginContext.GetPSDRequestInAdvanceWorkdays: Integer;
begin
  Result:= FPSDRequestInAdvanceWorkdays;
end;

function TLoginContext.GetSecondaryCurrencyAbbrev: string;
begin
  Result:= FSecondaryCurrencyAbbrev;
end;

function TLoginContext.GetSecondaryCurrencyCode: Integer;
begin
  Result:= FSecondaryCurrencyCode;
end;

function TLoginContext.GetContextDate: TDateTime;
begin
  Result:= DateOf(GetContextNow);
end;

function TLoginContext.GetContextTime: TDateTime;
begin
  Result:= TimeOf(GetContextNow);
end;

function TLoginContext.GetSpecialControlProfessionCode: Integer;
begin
  Result:= FSpecialControlProfessionCode;
end;

function TLoginContext.GetSystemLocale: TSystemLocale;
begin
  Result:= IfThen(FSystemLocale <> slNone, FSystemLocale, DefaultSystemLocale);
end;

function TLoginContext.GetDatabaseIconIndex: Integer;
begin
  Result:= FDatabaseIconIndex;
end;

function TLoginContext.GetTimeZoneId: string;
begin
  Result:= FTimeZoneId;
end;

function TLoginContext.GetUserActivities: TIntegerArray;
begin
  Result:= FUserActivities;
end;

function TLoginContext.GetUserGroups: TIntegerArray;
begin
  Result:= FUserGroups;
end;

function TLoginContext.GetUserSysRoles: TIntegerArray;
begin
  Result:= FUserSysRoles;
end;

function TLoginContext.GetUserCode: Integer;
begin
  Result:= FUserCode;
end;

function TLoginContext.GetUserFullName: string;
begin
  Result:= FUserFullName;
end;

function TLoginContext.GetWeekDateFormatting: Boolean;
begin
  Result:= FWeekDateFormatting;
end;

function TLoginContext.GetDateIntervalFormatCode: Integer;
begin
  Result:= FDateIntervalFormatCode;
end;

function TLoginContext.GetDatePeriodsYearPartCode: Integer;
begin
  Result:= FDatePeriodsYearPartCode;
end;

function TLoginContext.GetCurrentDeptCode: Integer;
begin
  Result:= FCurrentDeptCode;
end;

function TLoginContext.GetCurrentDeptFullName: string;
begin
  Result:= FCurrentDeptFullName;
end;

function TLoginContext.GetCurrentDeptIsFinStore: Boolean;
begin
  Result:= FCurrentDeptIsFinStore;
end;

function TLoginContext.GetDefaultModelStatusExpandState: Integer;
begin
  Result:= FDefaultModelStatusExpandState;
end;

function TLoginContext.GetOperationMovementRequiresOccupationDept: Boolean;
begin
  Result:= FOperationMovementRequiresOccupationDept;
end;

function TLoginContext.GetOperationWorkdaysDeviationPercent: Real;
begin
  Result:= FOperationWorkdaysDeviationPercent;
end;

function TLoginContext.GetAllowLateMLLimiting: Boolean;
begin
  Result:= FAllowLateMLLimiting;
end;

function TLoginContext.GetIsStoreRequestStoreDealDeptCopiedFromPSD: Boolean;
begin
  Result:= FIsStoreRequestStoreDealDeptCopiedFromPSD;
end;

function TLoginContext.GetIsValid: Boolean;
begin
  Result:= (FIsValid <> 0);
end;

function TLoginContext.GetCountApproveCycles: Boolean;
begin
  Result:= FCountApproveCycles;
end;

function TLoginContext.GetDocItemsUnapprovePrompt: Boolean;
begin
  Result:= FDocItemsUnapprovePrompt;
end;

function TLoginContext.GetExceptEventIndicatorRefreshInterval: Integer;
begin
  Result:= FExceptEventIndicatorRefreshInterval;
end;

function TLoginContext.HasAnyUserActivity(
  const ActivityCodes: array of Integer): Boolean;
var
  ActivityCode: Integer;
begin
  Result:= True;
  for ActivityCode in ActivityCodes do
    if HasUserActivity(ActivityCode) then
      Exit;
  Result:= False;
end;

function TLoginContext.HasUserActivity(ActivityCode: Integer): Boolean;
begin
  Result:= IsValueInArray(ActivityCode, FUserActivities);
end;

function TLoginContext.IsUserMemberOf(UserGroupCode: Integer): Boolean;
begin
  Result:= IsValueInArray(UserGroupCode, FUserGroups);
end;

function TLoginContext.IsUserInSysRole(ASysRoleCode: Integer): Boolean;
begin
  Result:= IsValueInArray(ASysRoleCode, FUserSysRoles);
end;

function TLoginContext.HasUserWorkDept(UserWorkDeptCode: Integer): Boolean;
begin
  Result:= IsValueInArray(UserWorkDeptCode, FUserWorkDepts);
end;

procedure TLoginContext.SetAsVariant(const v: OleVariant);
var
  i: Integer;
begin
  Assert(VarIsArray(v));
  Assert(VarArrayLowBound(v, 1) = 0);
  Assert(VarArrayHighBound(v, 1) = 128);

  Assert(VarIsType(v[0], varInteger)); // UserCode
  Assert(VarIsType(v[1], varOleStr));  // UserFullName
  Assert(VarIsType(v[2], varBoolean)); // IsSessionReadOnly

  Assert(VarIsArray(v[3]));   // UserActivities
  Assert(VarArrayLowBound(v[3], 1) = 0);
  for i:= 0 to VarArrayHighBound(v[3], 1) do
    Assert(VarIsType(v[3][i], varInteger));

  Assert(VarIsType(v[4], varInteger)); // LocalDeptCode
  Assert(VarIsType(v[5], varInteger));  // LocalDeptNo
  Assert(VarIsType(v[6], varOleStr));  // LocalDeptName
  Assert(VarIsType(v[7], varOleStr));  // CompanyShortName
  Assert(VarIsType(v[8], varOleStr));  // CompanyLongName
  Assert(VarIsType(v[9], varInteger)); // LateSaleDays
  Assert(VarIsType(v[10], varInteger));// FutureSaleDays
  Assert(VarIsType(v[11], varInteger));// BaseCurrencyCode
  Assert(VarIsType(v[12], varOleStr)); // BaseCurrencyAbbrev
  Assert(VarIsType(v[13], varInteger));// SecondaryCurrencyCode
  Assert(VarIsType(v[14], varOleStr)); // SecondaryCurrencyAbbrev
  Assert(VarIsType(v[15], varBoolean)); // DefaultTreeCustomCode
  Assert(VarIsType(v[16], varInteger)); // DefaultPriorityCode
  Assert(VarIsType(v[17], varInteger)); // DefaultProductionOrderPriorityCode
//  Assert(VarIsType(v[18], varDouble)); // VatPercent                          UNUSED
  Assert(VarIsType(v[19], varInteger)); // DefaultDateUnitCode
  Assert(VarIsType(v[20], varInteger)); // ProductsTreeExpandLevels
  Assert(VarIsType(v[21], varInteger)); // DeptsTreeExpandLevels
//Assert(VarIsType(v[22], varInteger)); // DevicesTreeExpandLevels              UNUSED
  Assert(VarIsType(v[23], varInteger)); // MllcIndicatorRefreshInterval
  Assert(VarIsType(v[24], varInteger)); // ProductsTreeShowDetail
//  Assert(VarIsType(v[25], varInteger)); // DevicesTreeShowDetail              UNUSED
  Assert(VarIsType(v[26], varBoolean)); // AutoLimitedDefaultModels
  Assert(VarIsType(v[27], varInteger)); // MLLimitingWorkdays
  Assert(VarIsType(v[28], varInteger)); // MLCreateWorkdays
  Assert(VarIsType(v[29], varBoolean)); // WeekDateFormatting
  Assert(VarIsType(v[30], varInteger)); // PSDCompleteInAdvanceWorkdays
  Assert(VarIsType(v[31], varInteger)); // PSDRequestInAdvanceWorkdays
  Assert(VarIsType(v[32], varBoolean)); // DefaultShowUncoveredLines
  Assert(VarIsType(v[33], varInteger)); // DefaultSalesActivePage
  Assert(VarIsType(v[34], varInteger)); // DefaultSalesExpActivePage
  Assert(VarIsType(v[35], varInteger)); // DefaultDeliveriesActivePage
//  Assert(VarIsType(v[36], varOleStr));  // ClientsExportPath                  UNUSED
//  Assert(VarIsType(v[37], varOleStr));  // VendorsExportPath                  UNUSED
//  Assert(VarIsType(v[38], varDouble));  // MaxProductPriceDeviationPercent    UNUSED
  Assert(VarIsType(v[39], varDate));    // ExpireDate
  Assert(VarIsType(v[40], varDate));    // WorkdayBeginHour
  Assert(VarIsType(v[41], varDate));    // WorkdayEndHour
//  Assert(VarIsType(v[42], varBoolean)); // DefaultInvoiceOriginalState UNUSED
  Assert(VarIsType(v[43], varBoolean)); // IsSaleManufactureQuantityAutoLoaded
  Assert(VarIsType(v[44], varInteger)); // ProductionOrganizerProfessionCode
  Assert(VarIsType(v[45], varBoolean)); // IsDiscountPercentShown
  Assert(VarIsType(v[46], varDouble));  // MaxSaleInvestedValueDiffPercent
  Assert(VarIsType(v[47], varInteger)); // ProductionOrderLateDays
  Assert(VarIsType(v[48], varInteger)); // ProductionLevelCode
  Assert(VarIsType(v[49], varOleStr)); // DocsRemoteRootPath
  Assert(VarIsType(v[50], varOleStr)); // DocsLocalRootPath
  Assert(VarIsType(v[51], varOleStr)); // DncDocsRelativeRootPath
  Assert(VarIsType(v[52], varOleStr)); // DncServerName
  Assert(VarIsType(v[53], varInteger)); // CurrentDeptCode
  Assert(VarIsType(v[54], varOleStr)); // CurrentDeptFullName
  Assert(VarIsType(v[55], varInteger)); // CurrentDeptFullName
  Assert(VarIsType(v[56], varDouble));  // OperationWorkdaysDeviationPercent
  Assert(VarIsType(v[57], varBoolean));  // AllowLateMLLimiting
  Assert(VarIsType(v[58], varBoolean));    // IsStoreRequestStoreDealDeptCopiedFromPSD
  Assert(VarIsType(v[59], varBoolean));    // CountApproveCycles
  Assert(VarIsType(v[60], varBoolean));    // DocItemsUnapprovePrompt
  Assert(VarIsType(v[61], varBoolean));    // AllowInternallyStoredDoc
  Assert(VarIsType(v[62], varInteger));    // DateIntervalFormatCode
  Assert(VarIsType(v[63], varInteger));    // DeptsTreeShowDetail
  Assert(VarIsType(v[64], varBoolean));    // CheckSpecDocs
  Assert(VarIsType(v[65], varBoolean));    // CheckModelDocs
  Assert(VarIsType(v[66], varInteger));    // OccupationRootProductCode
  Assert(VarIsType(v[67], varInteger));    // OccupationAssignmentDaysDiff
  Assert(VarIsType(v[68], varInteger));    // CommonGroupsProductionOrdersMonths
  Assert(VarIsType(v[69], varInteger));    // EOActivatingWorkdays
  Assert(VarIsType(v[70], varInteger));    // DefaultWorkPriorityCode
  Assert(VarIsType(v[71], varDouble));    // MaxEmployeeAvailabilityHours
  Assert(VarIsType(v[72], varDouble));    // MinIntegralOvertimeHours
  Assert(VarIsType(v[73], varDouble));    // MaxEmployeeMovementRegistrationHours
  Assert(VarIsType(v[74], varInteger));   // EmpAvailModifierAuthorizeProfessionCode
//  Assert(VarIsType(v[75], varBoolean));   // DefaultDocItemInternallyStored   UNUSED
  Assert(VarIsType(v[76], varInteger));   // MaxEmpAvailModifierRegistrationDays
  Assert(VarIsType(v[77], varInteger));   // UserNegativeDisciplineRating
  Assert(VarIsType(v[78], varInteger));   // UserPositiveDisciplineRating

  Assert(VarIsArray(v[79]));   // UserGroups
  for i:= VarArrayLowBound(v[79], 1) to VarArrayHighBound(v[79], 1) do
    Assert(VarIsType(v[79][i], varInteger));

  Assert(VarIsArray(v[80]));   // UserWorkDepts
  for i:= VarArrayLowBound(v[80], 1) to VarArrayHighBound(v[80], 1) do
    Assert(VarIsType(v[80][i], varInteger));

  Assert(VarIsType(v[81], varOleStr));   // DocItemMirrorsRootPath
  Assert(VarIsType(v[82], varInteger));  // MinimalExceptEventHours
  Assert(VarIsType(v[83], varInteger));  // MaxUnfinishedMfgPastDays
  Assert(VarIsType(v[84], varInteger));  // DatePeriodsYearPartCode
  Assert(VarIsType(v[85], varInteger));  // ExceptEventIndicatorRefreshInterval
  Assert(VarIsType(v[86], varInteger));  // FinancialProductsTreeExpandLevels
  Assert(VarIsType(v[87], varInteger));  // BudgetProductsTreeExpandLevels
  Assert(VarIsType(v[88], varInteger));  // FinancialProductsTreeShowDetail
  Assert(VarIsType(v[89], varInteger));  // BudgetProductsTreeShowDetail
  Assert(VarIsType(v[90], varBoolean));  // CurrentDeptIsFinStore

  Assert(VarIsArray(v[91]));  // UserSysRoles
  for i:= VarArrayLowBound(v[91], 1) to VarArrayHighBound(v[91], 1) do
    Assert(VarIsType(v[91][i], varInteger));

  Assert(VarIsType(v[92], varInteger));  // FinOrderRequirementCode
  Assert(VarIsType(v[93], varInteger));  // SlowConnectionStoredFileWarningSize    UNUSED
  Assert(VarIsType(v[94], varBoolean));  // DOSPrint
  Assert(VarIsType(v[95], varOleStr));   // FLoginName     UNUSED
  Assert(VarIsType(v[96], varOleStr));   // FClientComputerName           UNUSED
  Assert(VarIsType(v[97], varOleStr));   // FClientWindowsUserName        UNUSED
  Assert(VarIsType(v[98], varInteger));  // FClientWindowsSessionId       UNUSED
  Assert(VarIsType(v[99], varDate));     // FLastLogin
  Assert(VarIsType(v[100], varInteger)); // FEmployeeNo
  Assert(VarIsType(v[101], varInteger)); // FConnectionId
  Assert(VarIsType(v[102], varOleStr));  // FConnectionType               UNUSED
  Assert(VarIsType(v[103], varBoolean)); // FIsOldActivitySystemVisible
  Assert(VarIsType(v[104], varBoolean)); // FIsInvoiceSystemVisible
  Assert(VarIsType(v[105], varInteger)); // FLicensePoolType
  Assert(VarIsType(v[106], varOleStr));  // FTimeZoneId
  Assert(VarIsType(v[107], varOleStr));  // FClientSysVolumeSerialNumber  UNUSED
  Assert(VarIsType(v[108], varBoolean)); // FIsPowerUser
  Assert(VarIsType(v[109], varInteger)); // FDefaultFinOrderBranchCode
  Assert(VarIsType(v[110], varInteger)); // FDefaultFinOrderExecDeptCode
  Assert(VarIsType(v[111], varInteger)); // FDefaultDCDModeCode
  Assert(VarIsType(v[112], varInteger)); // FSystemLocale
  Assert(VarIsType(v[113], varBoolean)); // FDefaultIncludeVAT
  Assert(VarIsType(v[114], varInteger)); // FDefaultProductSpecRequirementCode
  Assert(VarIsType(v[115], varBoolean)); // FIsAutoCompleteFinOrderVisible
  Assert(VarIsType(v[116], varBoolean)); // FOpenNewFinOrder
  Assert(VarIsType(v[117], varBoolean)); // FShowProductQuantitiesTreeByDefault
  Assert(VarIsType(v[118], varBoolean)); // FIsDiscountPercentShownOnPrint
  Assert(VarIsType(v[119], varBoolean)); // FIsAutoCompleteStoreRequestVisible
  Assert(VarIsType(v[120], varBoolean)); // FDefaultReloadGroupSaleOnInsert
  Assert(VarIsType(v[121], varBoolean)); // FDefaultReloadGroupSaleOnEdit
  Assert(VarIsType(v[122], varBoolean)); // FOperationMovementRequiresOccupationDept
  Assert(VarIsType(v[123], varInteger)); // FSpecialControlProfessionCode
  Assert(VarIsType(v[124], varBoolean)); // FOMRequiresSpecialControlFirst
  Assert(VarIsType(v[125], varInteger)); // FEECtrlMainEmployeeProfessionCode
  Assert(VarIsType(v[126], varInteger)); // FDatabaseIconIndex
  Assert(VarIsType(v[127], varBoolean)); // FIsSessionTest

  FUserCode:= v[0];
  FUserFullName:= v[1];
  FIsSessionReadOnly:= v[2];

  FUserActivities:= VarArrayToIntArray(v[3]);

  FLocalBranchCode:= v[4];
  FLocalBranchNo:= v[5];
  FLocalBranchName:= v[6];
  FCompanyShortName:= v[7];
  FCompanyLongName:= v[8];
  FLateSaleDays:= v[9];
  FFutureSaleDays:= v[10];
  FBaseCurrencyCode:= v[11];
  FBaseCurrencyAbbrev:= v[12];
  FSecondaryCurrencyCode:= v[13];
  FSecondaryCurrencyAbbrev:= v[14];
  FDefaultTreeCustomCode:= v[15];
  FDefaultPriorityCode:= v[16];
  FDefaultProductionOrderPriorityCode:= v[17];
//  FVatPercent:= v[18];  UNUSED
  FDefaultDateUnitCode:= v[19];
  FProductsTreeExpandLevels:= v[20];
  FDeptsTreeExpandLevels:= v[21];
//  FDevicesTreeExpandLevels:= v[22];  UNUSED
  FMllcIndicatorRefreshInterval:= v[23];
  FProductsTreeShowDetail:= v[24];
//  FDevicesTreeShowDetail:= v[25];  UNUSED
  FAutoLimitedDefaultModels:= v[26];
  FMLLimitingWorkdays:= v[27];
  FMLCreateWorkdays:= v[28];
  FWeekDateFormatting:= v[29];
  FPSDCompleteInAdvanceWorkdays:= v[30];
  FPSDRequestInAdvanceWorkdays:= v[31];
  FDefaultShowUncoveredLines:= v[32];
  FDefaultSalesActivePage:= v[33];
  FDefaultSalesExpActivePage:= v[34];
  FDefaultDeliveriesActivePage:= v[35];
//  FClientsExportPath:= v[36];  UNUSED
//  FVendorsExportPath:= v[37];  UNUSED
//  FMaxProductPriceDeviationPercent:= v[38];  UNUSED
  FExpireDate:= v[39];
  FWorkdayBeginHour:= v[40];
  FWorkdayEndHour:= v[41];
//  FDefaultInvoiceOriginalState:= v[42];  UNUSED
  FIsSaleManufactureQuantityAutoLoaded:= v[43];
  FProductionOrganizerProfessionCode:= v[44];
  FIsDiscountPercentShown:= v[45];
  FMaxSaleInvestedValueDiffPercent:= v[46];
  FProductionOrderLateDays:= v[47];
  FProductionLevelCode:= v[48];
  FDocsRemoteRootPath:= v[49];
  FDocsLocalRootPath:= v[50];
  FDncDocsRelativeRootPath:= v[51];
  FDncServerName:= v[52];
  FCurrentDeptCode:= v[53];
  FCurrentDeptFullName:= v[54];
  FDefaultModelStatusExpandState:= v[55];
  FOperationWorkdaysDeviationPercent:= v[56];
  FAllowLateMLLimiting:= v[57];
  FIsStoreRequestStoreDealDeptCopiedFromPSD:= v[58];
  FCountApproveCycles:= v[59];
  FDocItemsUnapprovePrompt:= v[60];
  FAllowInternallyStoredDoc:= v[61];
  FDateIntervalFormatCode:= v[62];
  FDeptsTreeShowDetail:= v[63];
  FCheckSpecDocs:= v[64];
  FCheckModelDocs:= v[65];
  FOccupationRootProductCode:= v[66];
  FOccupationAssignmentDaysDiff:= v[67];
  FCommonGroupsProductionOrdersMonths:= v[68];
  FEOActivatingWorkdays:= v[69];
  FDefaultWorkPriorityCode:= v[70];
  FMaxEmployeeAvailabilityHours:= v[71];
  FMinIntegralOvertimeHours:= v[72];
  FMaxEmployeeMovementRegistrationHours:= v[73];
  FEmpAvailModifierAuthorizeProfessionCode:= v[74];
//  FDefaultDocItemInternallyStored:= v[75];  UNUSED
  FMaxEmpAvailModifierRegistrationDays:= v[76];
  FUserNegativeDisciplineRating:= v[77];
  FUserPositiveDisciplineRating:= v[78];

  FUserGroups:= VarArrayToIntArray(v[79]);
  FUserWorkDepts:= VarArrayToIntArray(v[80]);

  FDocItemMirrorsRootPath:= v[81];
  FMinimalExceptEventHours:= v[82];
  FMaxUnfinishedMfgPastDays:= v[83];
  FDatePeriodsYearPartCode:= v[84];

  FExceptEventIndicatorRefreshInterval:= v[85];

  FFinancialProductsTreeExpandLevels:= v[86];
  FBudgetProductsTreeExpandLevels:= v[87];
  FFinancialProductsTreeShowDetail:= v[88];
  FBudgetProductsTreeShowDetail:= v[89];

  FCurrentDeptIsFinStore:= v[90];

  FUserSysRoles:= VarArrayToIntArray(v[91]);

  FFinOrderRequirementCode:= v[92];
//  FSlowConnectionStoredFileWarningSize:= v[93];    UNUSED
  FDOSPrint:= v[94];

//  FLoginName:= v[95];  UNUSED
//  FClientComputerName:= v[96];    UNUSED
//  FClientWindowsUserName:= v[97];       UNUSED
//  FClientWindowsSessionId:= v[98];      UNUSED
  FLastLogin:= v[99];
  FEmployeeNo:= v[100];
  FConnectionId:= v[101];
//  FConnectionType:= v[102];             UNUSED
  FIsOldActivitySystemVisible:= v[103];
  FIsInvoiceSystemVisible:= v[104];
  FLicensePoolType:= IntToLicensePoolType(v[105]);
  FTimeZoneId:= v[106];
//  FClientSysVolumeSerialNumber:= v[107];      UNUSED
  FIsPowerUser:= v[108];
  FDefaultFinOrderBranchCode:= v[109];
  FDefaultFinOrderExecDeptCode:= v[110];
  FDefaultDCDModeCode:= v[111];
  FDefaultIncludeVAT:= v[113];
  FDefaultProductSpecRequirementCode:= v[114];
  FIsAutoCompleteFinOrderVisible:= v[115];
  FOpenNewFinOrder:= v[116];
  FShowProductQuantitiesTreeByDefault:= v[117];
  FIsDiscountPercentShownOnPrint:= v[118];
  FIsAutoCompleteStoreRequestVisible:= v[119];
  FDefaultReloadGroupSaleOnInsert:= v[120];
  FDefaultReloadGroupSaleOnEdit:= v[121];
  FOperationMovementRequiresOccupationDept:= v[122];
  FSpecialControlProfessionCode:= v[123];
  FOMRequiresSpecialControlFirst:= v[124];
  FEECtrlMainEmployeeProfessionCode:= v[125];
  FDatabaseIconIndex:= v[126];
  FIsSessionTest:= v[127];
  FFeatureFlagOperationsLoading:= v[128];
end;

procedure TLoginContext.SetAutoLimitedDefaultModels(const Value: Boolean);
begin
  FAutoLimitedDefaultModels:= Value;
end;

procedure TLoginContext.SetBaseCurrencyAbbrev(const Value: string);
begin
  FBaseCurrencyAbbrev:= Value;
end;

procedure TLoginContext.SetBaseCurrencyCode(const Value: Integer);
begin
  FBaseCurrencyCode:= Value;
end;

procedure TLoginContext.SetBudgetProductsTreeExpandLevels(const Value: Integer);
begin
  FBudgetProductsTreeExpandLevels:= Value;
end;

procedure TLoginContext.SetBudgetProductsTreeShowDetail(const Value: Integer);
begin
  FBudgetProductsTreeShowDetail:= Value;
end;

procedure TLoginContext.SetCompanyLongName(const Value: string);
begin
  FCompanyLongName:= Value;
end;

procedure TLoginContext.SetCompanyShortName(const Value: string);
begin
  FCompanyShortName:= Value;
end;

procedure TLoginContext.SetDefaultDateUnitCode(const Value: Integer);
begin
  FDefaultDateUnitCode:= Value;
end;

procedure TLoginContext.SetDefaultDeliveriesActivePage(
  const Value: Integer);
begin
  FDefaultDeliveriesActivePage:= Value;
end;

procedure TLoginContext.SetDefaultProductionOrderPriorityCode(const Value: Integer);
begin
  FDefaultProductionOrderPriorityCode:= Value;
end;

procedure TLoginContext.SetDefaultPriorityCode(const Value: Integer);
begin
  FDefaultPriorityCode:= Value;
end;

procedure TLoginContext.SetDefaults;
begin
  DoSetDefaults;
end;

procedure TLoginContext.SetDefaultSalesActivePage(const Value: Integer);
begin
  FDefaultSalesActivePage:= Value;
end;

procedure TLoginContext.SetDefaultSalesExpActivePage(const Value: Integer);
begin
  FDefaultSalesExpActivePage:= Value;
end;

procedure TLoginContext.SetDefaultShowUncoveredLines(const Value: Boolean);
begin
  FDefaultShowUncoveredLines:= Value;
end;

procedure TLoginContext.SetDefaultTreeCustomCode(const Value: Boolean);
begin
  FDefaultTreeCustomCode:= Value;
end;

procedure TLoginContext.SetDeptsTreeExpandLevels(const Value: Integer);
begin
  FDeptsTreeExpandLevels:= Value;
end;

procedure TLoginContext.SetExpireDate(const Value: TDateTime);
begin
  FExpireDate:= Value;
end;

procedure TLoginContext.SetFeatureFlagOperationsLoading(const Value: Boolean);
begin
  FFeatureFlagOperationsLoading:= Value;
end;

procedure TLoginContext.SetFinancialProductsTreeExpandLevels(
  const Value: Integer);
begin
  FFinancialProductsTreeExpandLevels:= Value
end;

procedure TLoginContext.SetFinancialProductsTreeShowDetail(
  const Value: Integer);
begin
  FFinancialProductsTreeShowDetail:= Value;
end;

procedure TLoginContext.SetFinOrderRequirementCode(const Value: Integer);
begin
  FFinOrderRequirementCode:= Value;
end;

procedure TLoginContext.SetFutureSaleDays(const Value: Integer);
begin
  FFutureSaleDays:= Value;
end;

procedure TLoginContext.SetLateSaleDays(const Value: Integer);
begin
  FLateSaleDays:= Value;
end;

procedure TLoginContext.SetLocalBranchCode(const Value: Integer);
begin
  FLocalBranchCode:= Value;
end;

procedure TLoginContext.SetLocalBranchName(const Value: string);
begin
  FLocalBranchName:= Value;
end;

procedure TLoginContext.SetLocalBranchNo(const Value: Integer);
begin
  FLocalBranchNo:= Value;
end;

procedure TLoginContext.SetWorkdayBeginHour(
  const Value: TDateTime);
begin
  FWorkdayBeginHour:= Value;
end;

procedure TLoginContext.SetWorkdayEndHour(
  const Value: TDateTime);
begin
  FWorkdayEndHour:= Value;
end;

procedure TLoginContext.SetIsSaleManufactureQuantityAutoLoaded(
  const Value: Boolean);
begin
  FIsSaleManufactureQuantityAutoLoaded:= Value;
end;

procedure TLoginContext.SetIsSessionReadOnly(const Value: Boolean);
begin
  FIsSessionReadOnly:= Value;
end;

procedure TLoginContext.SetIsSessionTest(const Value: Boolean);
begin
  FIsSessionTest:= Value;
end;

procedure TLoginContext.SetMLCreateWorkdays(const Value: Integer);
begin
  FMLCreateWorkdays:= Value;
end;

procedure TLoginContext.SetMllcIndicatorRefreshInterval(
  const Value: Integer);
begin
  FMllcIndicatorRefreshInterval:= Value;
end;

procedure TLoginContext.SetMLLimitingWorkdays(const Value: Integer);
begin
  FMLLimitingWorkdays:= Value;
end;

procedure TLoginContext.SetProductsTreeExpandLevels(const Value: Integer);
begin
  FProductsTreeExpandLevels:= Value;
end;

procedure TLoginContext.SetProductsTreeShowDetail(const Value: Integer);
begin
  FProductsTreeShowDetail:= Value;
end;

procedure TLoginContext.SetDeptsTreeShowDetail(const Value: Integer);
begin
  FDeptsTreeShowDetail:= Value;
end;

procedure TLoginContext.SetPSDCompleteInAdvanceWorkdays(
  const Value: Integer);
begin
  FPSDCompleteInAdvanceWorkdays:= Value;
end;

procedure TLoginContext.SetPSDRequestInAdvanceWorkdays(
  const Value: Integer);
begin
  FPSDRequestInAdvanceWorkdays:= Value;
end;

procedure TLoginContext.SetSecondaryCurrencyAbbrev(const Value: string);
begin
  FSecondaryCurrencyAbbrev:= Value;
end;

procedure TLoginContext.SetSecondaryCurrencyCode(const Value: Integer);
begin
  FSecondaryCurrencyCode:= Value;
end;

procedure TLoginContext.SetSpecialControlProfessionCode(const Value: Integer);
begin
  FSpecialControlProfessionCode:= Value;
end;

procedure TLoginContext.SetSystemLocale(const Value: TSystemLocale);
begin
  FSystemLocale:= Value;
end;

procedure TLoginContext.SetDatabaseIconIndex(const Value: Integer);
begin
  FDatabaseIconIndex:= Value;
end;

procedure TLoginContext.SetTimeZoneId(const Value: string);
begin
  FTimeZoneId:= Value;
end;

procedure TLoginContext.SetUserActivities(const Value: TIntegerArray);
begin
  FUserActivities:= Value;
end;

procedure TLoginContext.SetUserGroups(const Value: TIntegerArray);
begin
  FUserGroups:= Value;
end;

procedure TLoginContext.SetUserSysRoles(const Value: TIntegerArray);
begin
  FUserSysRoles:= Value;
end;

procedure TLoginContext.SetUserCode(const Value: Integer);
begin
  FUserCode:= Value;
end;

procedure TLoginContext.SetUserFullName(const Value: string);
begin
  FUserFullName:= Value;
end;

procedure TLoginContext.SetWeekDateFormatting(const Value: Boolean);
begin
  FWeekDateFormatting:= Value;
end;

procedure TLoginContext.SetDateIntervalFormatCode(const Value: Integer);
begin
  FDateIntervalFormatCode:= Value;
end;

procedure TLoginContext.SetDatePeriodsYearPartCode(const Value: Integer);
begin
  FDatePeriodsYearPartCode:= Value;
end;

function TLoginContext.GetProductionOrganizerProfessionCode: Integer;
begin
  Result:= FProductionOrganizerProfessionCode;
end;

procedure TLoginContext.SetProductionOrganizerProfessionCode(
  const Value: Integer);
begin
  FProductionOrganizerProfessionCode:= Value;
end;

function TLoginContext.GetDefaultIncludeVAT: Boolean;
begin
  Result:= FDefaultIncludeVAT;
end;

function TLoginContext.GetDefaultProductSpecRequirementCode: Integer;
begin
  Result:= FDefaultProductSpecRequirementCode;
end;

function TLoginContext.GetIsAutoCompleteFinOrderVisible: Boolean;
begin
  Result:= FIsAutoCompleteFinOrderVisible;
end;

function TLoginContext.GetIsAutoCompleteStoreRequestVisible: Boolean;
begin
  Result:= FIsAutoCompleteStoreRequestVisible;
end;

function TLoginContext.GetOpenNewFinOrder: Boolean;
begin
  Result:= FOpenNewFinOrder;
end;

function TLoginContext.GetShowProductQuantitiesTreeByDefault: Boolean;
begin
  Result:= FShowProductQuantitiesTreeByDefault;
end;

function TLoginContext.GetIsDiscountPercentShownOnPrint: Boolean;
begin
  Result:= FIsDiscountPercentShownOnPrint;
end;

function TLoginContext.GetDefaultReloadGroupSaleOnInsert: Boolean;
begin
  Result:= FDefaultReloadGroupSaleOnInsert;
end;

function TLoginContext.GetDefaultReloadGroupSaleOnEdit: Boolean;
begin
  Result:= FDefaultReloadGroupSaleOnEdit;
end;

function TLoginContext.GetIsDiscountPercentShown: Boolean;
begin
  Result:= FIsDiscountPercentShown;
end;

procedure TLoginContext.SetDefaultIncludeVAT(const Value: Boolean);
begin
  FDefaultIncludeVAT:= Value;
end;

procedure TLoginContext.SetDefaultProductSpecRequirementCode(const Value: Integer);
begin
  FDefaultProductSpecRequirementCode:= Value;
end;

procedure TLoginContext.SetIsAutoCompleteFinOrderVisible(const Value: Boolean);
begin
  FIsAutoCompleteFinOrderVisible:= Value;
end;

procedure TLoginContext.SetIsAutoCompleteStoreRequestVisible(const Value: Boolean);
begin
  FIsAutoCompleteStoreRequestVisible:= Value;
end;

procedure TLoginContext.SetOpenNewFinOrder(const Value: Boolean);
begin
  FOpenNewFinOrder:= Value;
end;

procedure TLoginContext.SetShowProductQuantitiesTreeByDefault(const Value: Boolean);
begin
  FShowProductQuantitiesTreeByDefault:= Value;
end;

procedure TLoginContext.SetIsDiscountPercentShownOnPrint(const Value: Boolean);
begin
  FIsDiscountPercentShownOnPrint:= Value;
end;

procedure TLoginContext.SetDefaultReloadGroupSaleOnInsert(const Value: Boolean);
begin
  FDefaultReloadGroupSaleOnInsert:= Value;
end;

procedure TLoginContext.SetDefaultReloadGroupSaleOnEdit(const Value: Boolean);
begin
  FDefaultReloadGroupSaleOnEdit:= Value;
end;

procedure TLoginContext.SetIsDiscountPercentShown(
  const Value: Boolean);
begin
  FIsDiscountPercentShown:= Value;
end;

function TLoginContext.GetMaxSaleInvestedValueDiffPercent: Real;
begin
  Result:= FMaxSaleInvestedValueDiffPercent;
end;

function TLoginContext.GetMaxUnfinishedMfgPastDays: Integer;
begin
  Result:= FMaxUnfinishedMfgPastDays;
end;

function TLoginContext.GetProductionOrderLateDays: Integer;
begin
  Result:= FProductionOrderLateDays;
end;

procedure TLoginContext.SetMaxSaleInvestedValueDiffPercent(
  const Value: Real);
begin
  FMaxSaleInvestedValueDiffPercent:= Value;
end;

procedure TLoginContext.SetMaxUnfinishedMfgPastDays(const Value: Integer);
begin
  FMaxUnfinishedMfgPastDays:= Value;
end;

procedure TLoginContext.SetProductionOrderLateDays(
  const Value: Integer);
begin
  FProductionOrderLateDays:= Value;
end;

function TLoginContext.GetProductionLevelCode: Integer;
begin
  Result:= FProductionLevelCode;
end;

procedure TLoginContext.SetProductionLevelCode(const Value: Integer);
begin
  FProductionLevelCode:= Value;
end;

function TLoginContext.GetDocsRemoteRootPath: string;
begin
  Result:= FDocsRemoteRootPath;
end;

function TLoginContext.GetDOSPrint: Boolean;
begin
  Result:= FDOSPrint;
end;

function TLoginContext.GetLicensePoolType: TLicensePoolType;
begin
  Result:= FLicensePoolType;
end;

function TLoginContext.GetLastLogin: TDateTime;
begin
  Result:= FLastLogin;
end;

function TLoginContext.GetEmployeeNo: Integer;
begin
  Result:= FEmployeeNo;
end;

function TLoginContext.GetConnectionId: Integer;
begin
  Result:= FConnectionId;
end;

function TLoginContext.GetIsOldActivitySystemVisible: Boolean;
begin
  Result:= FIsOldActivitySystemVisible;
end;

function TLoginContext.GetIsPowerUser: Boolean;
begin
  Result:= FIsPowerUser;
end;

function TLoginContext.GetIsInvoiceSystemVisible: Boolean;
begin
  Result:= FIsInvoiceSystemVisible;
end;

function TLoginContext.GetDocsLocalRootPath: string;
begin
  Result:= FDocsLocalRootPath;
end;

function TLoginContext.GetDocItemMirrorsRootPath: string;
begin
  Result:= FDocItemMirrorsRootPath;
end;

function TLoginContext.GetDncDocsRelativeRootPath: string;
begin
  Result:= FDncDocsRelativeRootPath;
end;

function TLoginContext.GetDncServerName: string;
begin
  Result:= FDncServerName;
end;

procedure TLoginContext.SetDocsRemoteRootPath(const Value: string);
begin
  FDocsRemoteRootPath:= Value;
end;

procedure TLoginContext.SetDOSPrint(const Value: Boolean);
begin
  FDOSPrint:= Value;
end;

procedure TLoginContext.SetLicensePoolType(const Value: TLicensePoolType);
begin
  FLicensePoolType:= Value;
end;

procedure TLoginContext.SetLastLogin(const Value: TDateTime);
begin
  FLastLogin:= Value;
end;

procedure TLoginContext.SetEmployeeNo(const Value: Integer);
begin
  FEmployeeNo:= Value;
end;

procedure TLoginContext.SetConnectionId(AConnectionId: Integer);
begin
  FConnectionId:= AConnectionId;
end;

procedure TLoginContext.SetIsOldActivitySystemVisible(const Value: Boolean);
begin
  FIsOldActivitySystemVisible:= Value;
end;

procedure TLoginContext.SetIsPowerUser(const Value: Boolean);
begin
  FIsPowerUser:= Value;
end;

procedure TLoginContext.SetIsInvoiceSystemVisible(const Value: Boolean);
begin
  FIsInvoiceSystemVisible:= Value;
end;

procedure TLoginContext.SetDocsLocalRootPath(const Value: string);
begin
  FDocsLocalRootPath:= Value;
end;

procedure TLoginContext.SetDocItemMirrorsRootPath(const Value: string);
begin
  FDocItemMirrorsRootPath:= Value;
end;

procedure TLoginContext.SetDncDocsRelativeRootPath(const Value: string);
begin
  FDncDocsRelativeRootPath:= Value;
end;

procedure TLoginContext.SetDncServerName(const Value: string);
begin
  FDncServerName:= Value;
end;

procedure TLoginContext.SetCurrentDeptCode(const Value: Integer);
begin
  FCurrentDeptCode:= Value;
end;

procedure TLoginContext.SetCurrentDeptFullName(const Value: string);
begin
  FCurrentDeptFullName:= Value;
end;

procedure TLoginContext.SetCurrentDeptIsFinStore(const Value: Boolean);
begin
  FCurrentDeptIsFinStore:= Value;
end;

procedure TLoginContext.SetDefaultModelStatusExpandState(
  const Value: Integer);
begin
  FDefaultModelStatusExpandState:= Value;
end;

procedure TLoginContext.SetOperationMovementRequiresOccupationDept(const Value: Boolean);
begin
  FOperationMovementRequiresOccupationDept:= Value;
end;

procedure TLoginContext.SetOperationWorkdaysDeviationPercent(
  const Value: Real);
begin
  FOperationWorkdaysDeviationPercent:= Value;
end;

procedure TLoginContext.SetAllowLateMLLimiting(const Value: Boolean);
begin
  FAllowLateMLLimiting:= Value;
end;

procedure TLoginContext.SetIsStoreRequestStoreDealDeptCopiedFromPSD(
  const Value: Boolean);
begin
  FIsStoreRequestStoreDealDeptCopiedFromPSD:= Value;
end;

procedure TLoginContext.SetIsValid(const Value: Boolean);
begin
  InterlockedExchange(FIsValid, Ord(Value));
end;

procedure TLoginContext.SetCountApproveCycles(const Value: Boolean);
begin
  FCountApproveCycles:= Value;
end;

procedure TLoginContext.SetDocItemsUnapprovePrompt(const Value: Boolean);
begin
  FDocItemsUnapprovePrompt:= Value;
end;

procedure TLoginContext.SetAllowInternallyStoredDoc(const Value: Boolean);
begin
  FAllowInternallyStoredDoc:= Value;
end;

function TLoginContext.GetAllowInternallyStoredDoc: Boolean;
begin
  Result:= FAllowInternallyStoredDoc;
end;

function TLoginContext.GetCheckSpecDocs: Boolean;
begin
  Result:= FCheckSpecDocs;
end;

procedure TLoginContext.SetCheckSpecDocs(
  const Value: Boolean);
begin
  FCheckSpecDocs:= Value;
end;

function TLoginContext.GetCheckModelDocs: Boolean;
begin
  Result:= FCheckModelDocs;
end;

procedure TLoginContext.SetCheckModelDocs(
  const Value: Boolean);
begin
  FCheckModelDocs:= Value;
end;

function TLoginContext.GetOccupationRootProductCode: Integer;
begin
  Result:= FOccupationRootProductCode;
end;

function TLoginContext.GetOMRequiresSpecialControlFirst: Boolean;
begin
  Result:= FOMRequiresSpecialControlFirst;
end;

function TLoginContext.GetEECtrlMainEmployeeProfessionCode: Integer;
begin
  Result:= FEECtrlMainEmployeeProfessionCode;
end;

procedure TLoginContext.SetOccupationRootProductCode(const Value: Integer);
begin
  FOccupationRootProductCode:= Value;
end;

procedure TLoginContext.SetOMRequiresSpecialControlFirst(const Value: Boolean);
begin
  FOMRequiresSpecialControlFirst:= Value;
end;

procedure TLoginContext.SetEECtrlMainEmployeeProfessionCode(const Value: Integer);
begin
  FEECtrlMainEmployeeProfessionCode:= Value;
end;

function TLoginContext.GetOccupationAssignmentDaysDiff: Integer;
begin
  Result:= FOccupationAssignmentDaysDiff;
end;

procedure TLoginContext.SetOccupationAssignmentDaysDiff(const Value: Integer);
begin
  FOccupationAssignmentDaysDiff:= Value;
end;

function TLoginContext.GetCommonGroupsProductionOrdersMonths: Integer;
begin
  Result:= FCommonGroupsProductionOrdersMonths;
end;

procedure TLoginContext.SetCommonGroupsProductionOrdersMonths(
  const Value: Integer);
begin
  FCommonGroupsProductionOrdersMonths:= Value;
end;

function TLoginContext.GetEOActivatingWorkdays: Integer;
begin
  Result:= FEOActivatingWorkdays;
end;

procedure TLoginContext.SetEOActivatingWorkdays(const Value: Integer);
begin
  FEOActivatingWorkdays:= Value;
end;

function TLoginContext.GetDefaultWorkPriorityCode: Integer;
begin
  Result:= FDefaultWorkPriorityCode;
end;

procedure TLoginContext.SetDefaultWorkPriorityCode(const Value: Integer);
begin
  FDefaultWorkPriorityCode:= Value;
end;

function TLoginContext.GetMaxEmployeeAvailabilityHours: Real;
begin
  Result:= FMaxEmployeeAvailabilityHours;
end;

function TLoginContext.GetMaxEmployeeMovementRegistrationHours: Real;
begin
  Result:= FMaxEmployeeMovementRegistrationHours;
end;

function TLoginContext.GetMinIntegralOvertimeHours: Real;
begin
  Result:= FMinIntegralOvertimeHours;
end;

procedure TLoginContext.SetMaxEmployeeAvailabilityHours(const Value: Real);
begin
  FMaxEmployeeAvailabilityHours:= Value;
end;

procedure TLoginContext.SetMaxEmployeeMovementRegistrationHours(
  const Value: Real);
begin
  FMaxEmployeeMovementRegistrationHours:= Value;
end;

procedure TLoginContext.SetMinIntegralOvertimeHours(const Value: Real);
begin
  FMinIntegralOvertimeHours:= Value;
end;

function TLoginContext.GetEmpAvailModifierAuthorizeProfessionCode: Integer;
begin
  Result:= FEmpAvailModifierAuthorizeProfessionCode;
end;

procedure TLoginContext.SetEmpAvailModifierAuthorizeProfessionCode(
  const Value: Integer);
begin
  FEmpAvailModifierAuthorizeProfessionCode:= Value;
end;

function TLoginContext.GetDefaultFinOrderBranchCode: Integer;
begin
  Result:= FDefaultFinOrderBranchCode;
end;

function TLoginContext.GetDefaultFinOrderExecDeptCode: Integer;
begin
  Result:= FDefaultFinOrderExecDeptCode;
end;

function TLoginContext.GetDefaultDCDModeCode: Integer;
begin
  Result:= FDefaultDCDModeCode;
end;

procedure TLoginContext.SetDefaultDCDModeCode(const Value: Integer);
begin
  FDefaultDCDModeCode:= Value;
end;

procedure TLoginContext.SetDefaultFinOrderBranchCode(const Value: Integer);
begin
  FDefaultFinOrderBranchCode:= Value;
end;

procedure TLoginContext.SetDefaultFinOrderExecDeptCode(const Value: Integer);
begin
  FDefaultFinOrderExecDeptCode:= Value;
end;

function TLoginContext.GetMaxEmpAvailModifierRegistrationDays: Integer;
begin
  Result:= FMaxEmpAvailModifierRegistrationDays;
end;

procedure TLoginContext.SetMaxEmpAvailModifierRegistrationDays(
  const Value: Integer);
begin
  FMaxEmpAvailModifierRegistrationDays:= Value;
end;

function TLoginContext.GetUserNegativeDisciplineRating: Integer;
begin
  Result:= FUserNegativeDisciplineRating;
end;

procedure TLoginContext.SetUserNegativeDisciplineRating(
  const Value: Integer);
begin
  FUserNegativeDisciplineRating:= Value;
end;

function TLoginContext.GetUserPositiveDisciplineRating: Integer;
begin
  Result:= FUserPositiveDisciplineRating;
end;

procedure TLoginContext.SetUserPositiveDisciplineRating(
  const Value: Integer);
begin
  FUserPositiveDisciplineRating:= Value;
end;

function TLoginContext.GetMinimalExceptEventHours: Integer;
begin
  Result:= FMinimalExceptEventHours;
end;

procedure TLoginContext.SetMinimalExceptEventHours(const Value: Integer);
begin
  FMinimalExceptEventHours:= Value;
end;

procedure TLoginContext.SetExceptEventIndicatorRefreshInterval(const Value: Integer);
begin
  FExceptEventIndicatorRefreshInterval:= Value;
end;

function TLoginContext.GetUserWorkDepts: TIntegerArray;
begin
  Result:= FUserWorkDepts;
end;

procedure TLoginContext.SetUserWorkDepts(const Value: TIntegerArray);
begin
  FUserWorkDepts:= Value;
end;

end.
