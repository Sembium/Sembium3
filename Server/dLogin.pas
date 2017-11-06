unit dLogin;

interface

uses
  Windows, Messages, SysUtils, Classes, Db, AbmesSQLQuery,
  AbmesFields, dPooledDataModule, dDBPooledDataModule,
  uDBLoginContext, Provider, uUtils, WideStrings, FMTBcd, SqlExpr,
  AbmesSQLConnection, DBClient, DBXDevartOracle, uSmartLock;

type
  TDBLoginContextHack = class(TDBLoginContext);

type
  TdmLogin = class(TDBPooledDataModule)
    qryUserData: TAbmesSQLQuery;
    qryUserDataEMPLOYEE_CODE: TAbmesFloatField;
    qryUserDataABBREV: TAbmesWideStringField;
    qryUserActivities: TAbmesSQLQuery;
    qryUserActivitiesACTIVITY_CODE: TAbmesFloatField;
    qryCompanyData: TAbmesSQLQuery;
    qryCompanyDataSHORT_NAME: TAbmesWideStringField;
    qryCompanyDataLONG_NAME: TAbmesWideStringField;
    qryInternalValues: TAbmesSQLQuery;
    qryInternalValuesBASE_CURRENCY_CODE: TAbmesFloatField;
    qryInternalValuesBASE_CURRENCY_ABBREV: TAbmesWideStringField;
    qryInternalValuesSECONDARY_CURRENCY_CODE: TAbmesFloatField;
    qryInternalValuesSECONDARY_CURRENCY_ABBREV: TAbmesWideStringField;
    qryInternalValuesLOCAL_BRANCH_CODE: TAbmesFloatField;
    qryInternalValuesLOCAL_BRANCH_NAME: TAbmesWideStringField;
    qryInternalValuesLOCAL_BRANCH_NO: TAbmesFloatField;
    prvCommonOptions: TDataSetProvider;
    qryCommonOptions: TAbmesSQLQuery;
    qryCommonOptionsCODE: TAbmesFloatField;
    qryCommonOptionsDEFAULT_TREE_CUSTOM_CODE: TAbmesFloatField;
    qryCommonOptionsDEFAULT_PRIORITY_CODE: TAbmesFloatField;
    qryCommonOptionsDEFAULT_MGR_SALE_PRIORITY_CODE: TAbmesFloatField;
    qryCommonOptionsMIN_RANGE_INVOICE_NO: TAbmesFloatField;
    qryCommonOptionsMAX_RANGE_INVOICE_NO: TAbmesFloatField;
    qryCommonOptionsDEFAULT_DATE_UNIT_CODE: TAbmesFloatField;
    qryDateUnits: TAbmesSQLQuery;
    prvDateUnits: TDataSetProvider;
    qryDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    qryDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryCommonOptionsMLLC_IND_REFRESH_INTERVAL: TAbmesFloatField;
    qryUserDataPRODUCTS_TREE_EXPAND_LEVELS: TAbmesFloatField;
    qryUserDataDEPTS_TREE_EXPAND_LEVELS: TAbmesFloatField;
    prvUserOptions: TDataSetProvider;
    qryUserOptions: TAbmesSQLQuery;
    qryUserOptionsEMPLOYEE_CODE: TAbmesFloatField;
    qryUserOptionsPRODUCTS_TREE_EXPAND_LEVELS: TAbmesFloatField;
    qryUserOptionsDEPTS_TREE_EXPAND_LEVELS: TAbmesFloatField;
    qryCommonOptionsAUTO_LIMITED_DEFAULT_MODELS: TAbmesFloatField;
    qryCommonOptionsML_LIMITING_WORKDAYS: TAbmesFloatField;
    qryCommonOptionsWEEK_DATE_FORMATTING: TAbmesFloatField;
    qryUserOptionsDEFAULT_SHOW_UNCOVERED_LINES: TAbmesFloatField;
    qryUserDataDEFAULT_SHOW_UNCOVERED_LINES: TAbmesFloatField;
    qryUserOptionsPSD_COMPLETE_IN_ADVANCE_WDAYS: TAbmesFloatField;
    qryUserOptionsPSD_REQUEST_IN_ADVANCE_WDAYS: TAbmesFloatField;
    qryUserDataPSD_COMPLETE_IN_ADVANCE_WDAYS: TAbmesFloatField;
    qryUserDataPSD_REQUEST_IN_ADVANCE_WDAYS: TAbmesFloatField;
    qryUserOptionsDEFAULT_DELIVERIES_ACTIVE_PAGE: TAbmesFloatField;
    qryUserDataDEFAULT_DELIVERIES_ACTIVE_PAGE: TAbmesFloatField;
    qryUserDataDEFAULT_SALES_EXP_ACTIVE_PAGE: TAbmesFloatField;
    qryUserOptionsDEFAULT_SALES_EXP_ACTIVE_PAGE: TAbmesFloatField;
    qryCommonOptionsMAX_DCD_OVERHEAD_PERCENT: TAbmesFloatField;
    qryInternalValuesEXPIRE_DATE: TAbmesSQLTimeStampField;
    qryCommonOptionsIS_SALE_MFG_QTY_AUTO_LOADED: TAbmesFloatField;
    qryCommonOptionsPROD_ORGANIZER_PROFESSION_CODE: TAbmesFloatField;
    qryCommonOptionsIS_DISCOUNT_PERCENT_SHOWN: TAbmesFloatField;
    qryCommonOptionsMAX_SALE_INV_VAL_DIFF_PERCENT: TAbmesFloatField;
    qryCommonOptionsPRODUCTION_ORDER_LATE_DAYS: TAbmesFloatField;
    qryCommonOptionsPRODUCTION_LEVEL_CODE: TAbmesFloatField;
    qryCommonOptionsDOCS_REMOTE_ROOT_PATH: TAbmesWideStringField;
    qryCommonOptionsDOCS_LOCAL_ROOT_PATH: TAbmesWideStringField;
    qryCommonOptionsDNC_DOCS_RELATIVE_ROOT_PATH: TAbmesWideStringField;
    qryCommonOptionsDNC_SERVER_NAME: TAbmesWideStringField;
    qryUserDataCURRENT_DEPT_CODE: TAbmesFloatField;
    qryUserDataCURRENT_DEPT_FULL_NAME: TAbmesWideStringField;
    qryCommonOptionsMANAGER_OKIDU_PROFESSION_CODE: TAbmesFloatField;
    qryCommonOptionsOKIDU_PROFESSION_CODE: TAbmesFloatField;
    qryUpdateLastLoginMoment: TAbmesSQLQuery;
    qryCommonOptionsOPERATION_WORKDAYS_DEV_PERCENT: TAbmesFloatField;
    qryCommonOptionsALLOW_LATE_ML_LIMITING: TAbmesFloatField;
    qryCommonOptionsIS_SR_SD_DEPT_COPIED_FROM_PSD: TAbmesFloatField;
    qryCommonOptionsCOUNT_APPROVE_CYCLES: TAbmesFloatField;
    qryCommonOptionsDOC_ITEMS_UNAPPROVE_PROMPT: TAbmesFloatField;
    qryCommonOptionsALLOW_INTERNALLY_STORED_DOC: TAbmesFloatField;
    qryCommonOptionsDOC_ITEM_VIEW_CACHE_SIZE: TAbmesFloatField;
    qryCommonOptionsDATE_INTERVAL_FORMAT_CODE: TAbmesFloatField;
    qryUserDataPRODUCTS_TREE_SHOW_DETAIL: TAbmesFloatField;
    qryUserDataDEPTS_TREE_SHOW_DETAIL: TAbmesFloatField;
    qryUserOptionsPRODUCTS_TREE_SHOW_DETAIL: TAbmesFloatField;
    qryUserOptionsDEPTS_TREE_SHOW_DETAIL: TAbmesFloatField;
    qryCommonOptionsCHECK_SPEC_DOCS: TAbmesFloatField;
    qryCommonOptionsCHECK_MODEL_DOCS: TAbmesFloatField;
    qryCommonOptionsOCCUPATION_ROOT_PRODUCT_CODE: TAbmesFloatField;
    qryUserDataEMPLOYEE_NAME: TAbmesWideStringField;
    qryUserDataBEGIN_TIME: TAbmesSQLTimeStampField;
    qryUserDataEND_TIME: TAbmesSQLTimeStampField;
    qryCommonOptionsOCC_ASSIGNMENT_DAYS_DIFF: TAbmesFloatField;
    qryCommonOptionsCOMMON_GROUPS_PROD_ORD_MONTHS: TAbmesFloatField;
    qryCommonOptionsEO_ACTIVATING_WORKDAYS: TAbmesFloatField;
    qryCommonOptionsDEFAULT_WORK_PRIORITY_CODE: TAbmesFloatField;
    qryCommonOptionsMAX_EMP_AVAIL_HOURS: TAbmesFloatField;
    qryCommonOptionsMIN_INTEGRAL_OVERTIME_HOURS: TAbmesFloatField;
    qryCommonOptionsMAX_EMP_MOVEMENT_REG_HOURS: TAbmesFloatField;
    qryCommonOptionsEAM_AUTHORIZE_PROFESSION_CODE: TAbmesFloatField;
    qryCommonOptionsMAX_EAM_REG_DAYS: TAbmesFloatField;
    qryUserDataNEGATIVE_DISCIPLINE_RATING: TAbmesFloatField;
    qryUserDataPOSITIVE_DISCIPLINE_RATING: TAbmesFloatField;
    qryUserGroups: TAbmesSQLQuery;
    qryUserGroupsUSER_GROUP_CODE: TAbmesFloatField;
    qryCommonOptionsDOC_ITEM_MIRRORS_ROOT_PATH: TAbmesWideStringField;
    qryUserWorkDepts: TAbmesSQLQuery;
    qryUserWorkDeptsDEPT_CODE: TAbmesFloatField;
    prvToolbars: TDataSetProvider;
    prvUserToolbars: TDataSetProvider;
    qryToolbars: TAbmesSQLQuery;
    qryUserToolbars: TAbmesSQLQuery;
    qryToolbarsCROSS_STATE_CODE: TAbmesFloatField;
    qryToolbarsTOOLBAR_CODE: TAbmesFloatField;
    qryToolbarsTOOLBAR_NAME: TAbmesWideStringField;
    qryUserToolbarsEMPLOYEE_CODE: TAbmesFloatField;
    qryUserToolbarsCROSS_STATE_CODE: TAbmesFloatField;
    qryUserToolbarsTOOLBAR_CODE: TAbmesFloatField;
    qryToolbarsTOOLBAR_CATEGORY_CODE: TAbmesFloatField;
    qryResetUserToolbars: TAbmesSQLQuery;
    qryCommonOptionsMINIMAL_EXCEPT_EVENT_HOURS: TAbmesFloatField;
    qryCommonOptionsMAX_UNFINISHED_MFG_PAST_DAYS: TAbmesFloatField;
    qryCommonOptionsDATE_PERIODS_YEAR_PART_CODE: TAbmesFloatField;
    qryToolbarsTOOLBAR_CATEGORY_ACTIVITY_CODE: TAbmesFloatField;
    qryCommonOptionsEE_IND_REFRESH_INTERVAL: TAbmesFloatField;
    qryUserOptionsFIN_PROD_TREE_EXPAND_LEVELS: TAbmesFloatField;
    qryUserOptionsBUDGET_PROD_TREE_EXPAND_LEVELS: TAbmesFloatField;
    qryUserOptionsFIN_PROD_TREE_SHOW_DETAIL: TAbmesFloatField;
    qryUserOptionsBUDGET_PROD_TREE_SHOW_DETAIL: TAbmesFloatField;
    qryUserDataFIN_PROD_TREE_EXPAND_LEVELS: TAbmesFloatField;
    qryUserDataBUDGET_PROD_TREE_EXPAND_LEVELS: TAbmesFloatField;
    qryUserDataFIN_PROD_TREE_SHOW_DETAIL: TAbmesFloatField;
    qryUserDataBUDGET_PROD_TREE_SHOW_DETAIL: TAbmesFloatField;
    qryUserDataCURRENT_DEPT_IS_FIN_STORE: TAbmesFloatField;
    qryUserSysRoles: TAbmesSQLQuery;
    qryUserSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    qryCommonOptionsFIN_ORDER_REQUIREMENT_CODE: TAbmesFloatField;
    qryToolbarsTOOLBAR_NO: TAbmesFloatField;
    qryCommonOptionsSLOW_CONN_SF_WARNING_SIZE: TAbmesFloatField;
    qryUserDataDOS_PRINT: TAbmesFloatField;
    qryUserOptionsDOS_PRINT: TAbmesFloatField;
    qryUserDataEMPLOYEE_NO: TAbmesFloatField;
    qryUserOptionsDEFAULT_MODEL_STATUS_EXPAND_ST: TAbmesFloatField;
    qryUserDataDEFAULT_MODEL_STATUS_EXPAND_ST: TAbmesFloatField;
    qryInternalValuesIS_OLD_ACTIVITY_SYSTEM_VISIBLE: TAbmesFloatField;
    qryInternalValuesIS_INVOICE_SYSTEM_VISIBLE: TAbmesFloatField;
    qryGetLastExecutionDate: TAbmesSQLQuery;
    qryGetLastExecutionDateLAST_EXECUTION_DATE: TAbmesSQLTimeStampField;
    qryCommonOptionsTIME_ZONE_ID: TAbmesWideStringField;
    qryDBValues: TAbmesSQLQuery;
    qryDBValuesIS_PRODUCTION_DB: TAbmesFloatField;
    qryCommonOptionsDEFAULT_FO_BRANCH_CODE: TAbmesFloatField;
    qryCommonOptionsDEFAULT_FO_EXEC_DEPT_CODE: TAbmesFloatField;
    qryCommonOptionsALLOW_NON_MAIN_ONLY_OE: TAbmesFloatField;
    qryGetDbId: TAbmesSQLQuery;
    qryCommonOptionsDEFAULT_DCD_MODE_CODE: TAbmesFloatField;
    qryCommonOptionsDEFAULT_INCLUDE_VAT: TAbmesFloatField;
    qryCommonOptionsDEFAULT_PRODUCT_SPEC_REQ_CODE: TAbmesFloatField;
    qryInternalValuesIS_AUTO_COMPLETE_FO_VISIBLE: TAbmesFloatField;
    qryCommonOptionsOPEN_NEW_FIN_ORDER: TAbmesFloatField;
    qryUserOptionsDEFAULT_SHOW_PRODUCT_QTY_TREE: TAbmesFloatField;
    qryUserDataDEFAULT_SHOW_PRODUCT_QTY_TREE: TAbmesFloatField;
    qryCommonOptionsIS_DISCOUNT_PERCENT_SHOWN_PRN: TAbmesFloatField;
    qryInternalValuesIS_AUTO_COMPLETE_SR_VISIBLE: TAbmesFloatField;
    qryCommonOptionsDEFAULT_RELOAD_GROUP_SALE_INS: TAbmesFloatField;
    qryCommonOptionsDEFAULT_RELOAD_GROUP_SALE_EDT: TAbmesFloatField;
    qryGetDbIdDB_ID: TAbmesWideStringField;
    qryCommonOptionsOM_REQUIRES_OCC_DEPT: TAbmesFloatField;
    qryCommonOptionsSPEC_CONTROL_PROFESSION_CODE: TAbmesFloatField;
    qryCommonOptionsOM_REQUIRES_SPEC_CONTROL_FIRST: TAbmesFloatField;
    qryCommonOptionsEE_CTRL_MAIN_PROFESSION_CODE: TAbmesFloatField;
    qryUserAccessRules: TAbmesSQLQuery;
    qryAccessRuleCount: TAbmesSQLQuery;
    qryAccessRuleCountCOUNT: TAbmesFloatField;
    qryUserAccessRulesIP_ADDRESS_PATTERN: TAbmesWideStringField;
    qryUserAccessRulesACCESS_TYPE_CODE: TAbmesFloatField;
    prvAccessRules: TDataSetProvider;
    qryAccessRules: TAbmesSQLQuery;
    qryNewAccessRuleCode: TAbmesSQLQuery;
    qryNewAccessRuleCodeNEW_ACCESS_RULE_CODE: TAbmesFloatField;
    prvAccessRule: TDataSetProvider;
    qryAccessRule: TAbmesSQLQuery;
    qryAccessRulesACCESS_RULE_CODE: TAbmesFloatField;
    qryAccessRulesACCESS_RULE_NAME: TAbmesWideStringField;
    qryAccessRulesACCESS_TYPE_NAME: TAbmesWideStringField;
    qryAccessRulesIS_ACTIVE: TAbmesFloatField;
    prvAccessTypes: TDataSetProvider;
    qryAccessTypes: TAbmesSQLQuery;
    qryAccessTypesACCESS_TYPE_CODE: TAbmesFloatField;
    qryAccessTypesACCESS_TYPE_NAME: TAbmesWideStringField;
    qryAccessRuleACCESS_RULE_CODE: TAbmesFloatField;
    qryAccessRuleACCESS_RULE_NAME: TAbmesWideStringField;
    qryAccessRuleEMPLOYEE_CODE: TAbmesFloatField;
    qryAccessRuleDEPT_CODE: TAbmesFloatField;
    qryAccessRuleINCLUDE_DEPT_DESCENDANTS: TAbmesFloatField;
    qryAccessRuleIP_ADDRESS_PATTERN: TAbmesWideStringField;
    qryAccessRuleACCESS_TYPE_CODE: TAbmesFloatField;
    qryAccessRuleIS_ACTIVE: TAbmesFloatField;
    qryCommonOptionsDATABASE_ICON_INDEX: TAbmesFloatField;
    qryUserOptionsPICTURE: TBlobField;
    qryUserLastLoginInfo: TAbmesSQLQuery;
    qryUserLastLoginInfoLAST_LOGIN_DATE_TIME: TAbmesSQLTimeStampField;
    qryUserLastLoginInfoLAST_LOGIN_COMPUTER_NAME: TAbmesWideStringField;
    qryUserLastLoginInfoLAST_LOGIN_WINDOWS_SESSION_ID: TAbmesFloatField;
    qryGetUserCodeByExternalIdentifier: TAbmesSQLQuery;
    qryGetUserCodeByExternalIdentifierUSER_CODE: TAbmesFloatField;
    qryGetUserCodeByUserCode: TAbmesSQLQuery;
    qryGetUserCodeByUserCodeUSER_CODE: TAbmesFloatField;
    qryUserDataFIRST_NAME: TAbmesWideStringField;
    qryUserDataMIDDLE_NAME: TAbmesWideStringField;
    qryUserDataLAST_NAME: TAbmesWideStringField;
    qryInternalValuesFEATURE_FLAG_OPERATION_LOADING: TAbmesFloatField;
    procedure prvCommonOptionsAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvUserToolbarsUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure prvAccessRuleBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
  private
    procedure LoadCommonOptions;
    procedure LoadCompanyData;
    procedure LoadInternalValues;
    procedure CheckUserConnection(const AUserCode: Integer);
    procedure LoadUserData(const AUserCode: Integer);
    procedure LoadDBValues;
    procedure GetUserLastLoginInfo(const AUserCode: Integer;
      out ALastLoginDateTime: TDateTime;
      out ALastLoginClientComputerName: string;
      out ALastLoginClientWindowsSessionID: Integer);
    procedure UpdateLastLoginMoment;
    function GetUserIntegerArray(AQuery: TAbmesSQLQuery): TIntegerArray;
    procedure CheckContextDate;
    function GetLoginContextHack: TDBLoginContextHack;
    property LoginContextHack: TDBLoginContextHack read GetLoginContextHack;
    function NewAccessRuleCode: Integer;
    procedure LockOtherComputersUserSessions(const ADBName: string; const AUserCode: Integer;
      const AClientComputerName: string);
    function GetUserCodeByUserId(const AUserId: string): Integer;
  protected
    procedure Login;
    procedure LoadLoginContext;

    procedure ResetUserToolbars(EmployeeCode: Integer; CrossStateCode: Integer);
  end;

type
  IdmLoginProxy = interface(IDBPooledDataModuleProxy)
    procedure Login;
    procedure LoadLoginContext;
  end;

type
  TdmLoginProxy = class(TDBPooledDataModuleProxy, IdmLoginProxy)
  private
    class var FSingleton: TdmLoginProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmLogin>;
  strict protected
    property LockedInstance: ISmartLock<TdmLogin> read GetLockedInstance;
  protected
    procedure Login;
    procedure LoadLoginContext;
  public
    class property Singleton: TdmLoginProxy read FSingleton;

    procedure ResetUserToolbars(EmployeeCode: Integer; CrossStateCode: Integer);
  end;

implementation

uses
  uServerMessageIds, uLoginContext, uDBPooledDataModuleHelper,
  uMessageUtils, StrUtils, uLicenseUtils, uSessionContext, dSvrMain,
  uSystemLocaleUtils, uIPAddressUtils, System.DateUtils;

{$R *.DFM}

const
  LoginFailSleepMilliseconds = 5 * 1000;

{ TdmLoginProxy }

function TdmLoginProxy.GetLockedInstance: ISmartLock<TdmLogin>;
begin
  Result:= ISmartLock<TdmLogin>(inherited LockedInstance);
end;

procedure TdmLoginProxy.Login;
begin
  LockedInstance.Value.Login;
end;

procedure TdmLoginProxy.LoadLoginContext;
begin
  LockedInstance.Value.LoadLoginContext;
end;

procedure TdmLoginProxy.ResetUserToolbars(EmployeeCode,
  CrossStateCode: Integer);
begin
  LockedInstance.Value.ResetUserToolbars(EmployeeCode, CrossStateCode);
end;

{ TdmLogin }

procedure TdmLogin.GetUserLastLoginInfo(const AUserCode: Integer;
  out ALastLoginDateTime: TDateTime; out ALastLoginClientComputerName: string;
  out ALastLoginClientWindowsSessionID: Integer);
begin
  Assert(not qryUserLastLoginInfo.Active);

  qryUserLastLoginInfo.ParamByName('USER_CODE').AsInteger:= AUserCode;

  qryUserLastLoginInfo.Open;
  try
    ALastLoginDateTime:= qryUserLastLoginInfoLAST_LOGIN_DATE_TIME.AsDateTime;
    ALastLoginClientComputerName:= qryUserLastLoginInfoLAST_LOGIN_COMPUTER_NAME.AsString;
    ALastLoginClientWindowsSessionID:=
      IfThen(qryUserLastLoginInfoLAST_LOGIN_WINDOWS_SESSION_ID.IsNull, -1, qryUserLastLoginInfoLAST_LOGIN_WINDOWS_SESSION_ID.AsInteger);
  finally
    qryUserLastLoginInfo.Close;
  end;
end;

function TdmLogin.GetLoginContextHack: TDBLoginContextHack;
begin
  if Assigned(LoginContext()) then
    Result:= TDBLoginContextHack(LoginContext())
  else
    Result:= nil;
end;

procedure TdmLogin.LoadCommonOptions;
begin
  Assert(not qryCommonOptions.Active);

  qryCommonOptions.TempOpen/
    procedure begin
      LoginContextHack.SetDefaultTreeCustomCode(qryCommonOptionsDEFAULT_TREE_CUSTOM_CODE.AsInteger <> 0);
      LoginContextHack.SetDefaultPriorityCode(qryCommonOptionsDEFAULT_PRIORITY_CODE.AsInteger);
      LoginContextHack.SetDefaultProductionOrderPriorityCode(qryCommonOptionsDEFAULT_MGR_SALE_PRIORITY_CODE.AsInteger);
      LoginContextHack.SetDefaultDateUnitCode(qryCommonOptionsDEFAULT_DATE_UNIT_CODE.AsInteger);
      LoginContextHack.SetMllcIndicatorRefreshInterval(qryCommonOptionsMLLC_IND_REFRESH_INTERVAL.AsInteger);
      LoginContextHack.SetAutoLimitedDefaultModels(qryCommonOptionsAUTO_LIMITED_DEFAULT_MODELS.AsBoolean);
      LoginContextHack.SetMLLimitingWorkdays(qryCommonOptionsML_LIMITING_WORKDAYS.AsInteger);
      LoginContextHack.SetWeekDateFormatting(qryCommonOptionsWEEK_DATE_FORMATTING.AsBoolean);
      LoginContextHack.SetDateIntervalFormatCode(qryCommonOptionsDATE_INTERVAL_FORMAT_CODE.AsInteger);
      LoginContextHack.SetIsSaleManufactureQuantityAutoLoaded(qryCommonOptionsIS_SALE_MFG_QTY_AUTO_LOADED.AsBoolean);
      LoginContextHack.SetProductionOrganizerProfessionCode(qryCommonOptionsPROD_ORGANIZER_PROFESSION_CODE.AsInteger);
      LoginContextHack.SetIsDiscountPercentShown(qryCommonOptionsIS_DISCOUNT_PERCENT_SHOWN.AsBoolean);
      LoginContextHack.SetMaxSaleInvestedValueDiffPercent(qryCommonOptionsMAX_SALE_INV_VAL_DIFF_PERCENT.AsFloat);
      LoginContextHack.SetProductionOrderLateDays(qryCommonOptionsPRODUCTION_ORDER_LATE_DAYS.AsInteger);
      LoginContextHack.SetProductionLevelCode(qryCommonOptionsPRODUCTION_LEVEL_CODE.AsInteger);
      LoginContextHack.SetDocsLocalRootPath(qryCommonOptionsDOCS_LOCAL_ROOT_PATH.AsString);
      LoginContextHack.SetDocsRemoteRootPath(qryCommonOptionsDOCS_REMOTE_ROOT_PATH.AsString);
      LoginContextHack.SetDncDocsRelativeRootPath(qryCommonOptionsDNC_DOCS_RELATIVE_ROOT_PATH.AsString);
      LoginContextHack.SetDncServerName(qryCommonOptionsDNC_SERVER_NAME.AsString);
      LoginContextHack.SetOperationWorkdaysDeviationPercent(qryCommonOptionsOPERATION_WORKDAYS_DEV_PERCENT.AsFloat);
      LoginContextHack.SetAllowLateMLLimiting(qryCommonOptionsALLOW_LATE_ML_LIMITING.AsBoolean);
      LoginContextHack.SetIsStoreRequestStoreDealDeptCopiedFromPSD(qryCommonOptionsIS_SR_SD_DEPT_COPIED_FROM_PSD.AsBoolean);
      LoginContextHack.SetCountApproveCycles(qryCommonOptionsCOUNT_APPROVE_CYCLES.AsBoolean);
      LoginContextHack.SetDocItemsUnapprovePrompt(qryCommonOptionsDOC_ITEMS_UNAPPROVE_PROMPT.AsBoolean);
      LoginContextHack.SetAllowInternallyStoredDoc(qryCommonOptionsALLOW_INTERNALLY_STORED_DOC.AsBoolean);
      LoginContextHack.SetCheckSpecDocs(qryCommonOptionsCHECK_SPEC_DOCS.AsBoolean);
      LoginContextHack.SetCheckModelDocs(qryCommonOptionsCHECK_MODEL_DOCS.AsBoolean);
      LoginContextHack.SetOccupationRootProductCode(qryCommonOptionsOCCUPATION_ROOT_PRODUCT_CODE.AsInteger);
      LoginContextHack.SetOccupationAssignmentDaysDiff(qryCommonOptionsOCC_ASSIGNMENT_DAYS_DIFF.AsInteger);
      LoginContextHack.SetCommonGroupsProductionOrdersMonths(qryCommonOptionsCOMMON_GROUPS_PROD_ORD_MONTHS.AsInteger);
      LoginContextHack.SetEOActivatingWorkdays(qryCommonOptionsEO_ACTIVATING_WORKDAYS.AsInteger);
      LoginContextHack.SetDefaultWorkPriorityCode(qryCommonOptionsDEFAULT_WORK_PRIORITY_CODE.AsInteger);
      LoginContextHack.SetMaxEmployeeAvailabilityHours(qryCommonOptionsMAX_EMP_AVAIL_HOURS.AsFloat);
      LoginContextHack.SetMinIntegralOvertimeHours(qryCommonOptionsMIN_INTEGRAL_OVERTIME_HOURS.AsFloat);
      LoginContextHack.SetMaxEmployeeMovementRegistrationHours(qryCommonOptionsMAX_EMP_MOVEMENT_REG_HOURS.AsFloat);
      LoginContextHack.SetEmpAvailModifierAuthorizeProfessionCode(qryCommonOptionsEAM_AUTHORIZE_PROFESSION_CODE.AsInteger);
      LoginContextHack.SetMaxEmpAvailModifierRegistrationDays(qryCommonOptionsMAX_EAM_REG_DAYS.AsInteger);
      LoginContextHack.SetDocItemMirrorsRootPath(qryCommonOptionsDOC_ITEM_MIRRORS_ROOT_PATH.AsString);
      LoginContextHack.SetMinimalExceptEventHours(qryCommonOptionsMINIMAL_EXCEPT_EVENT_HOURS.AsInteger);
      LoginContextHack.SetMaxUnfinishedMfgPastDays(qryCommonOptionsMAX_UNFINISHED_MFG_PAST_DAYS.AsInteger);
      LoginContextHack.SetDatePeriodsYearPartCode(qryCommonOptionsDATE_PERIODS_YEAR_PART_CODE.AsInteger);
      LoginContextHack.SetExceptEventIndicatorRefreshInterval(qryCommonOptionsEE_IND_REFRESH_INTERVAL.AsInteger);
      LoginContextHack.SetFinOrderRequirementCode(qryCommonOptionsFIN_ORDER_REQUIREMENT_CODE.AsInteger);
      LoginContextHack.SetTimeZoneId(qryCommonOptionsTIME_ZONE_ID.AsString);
      LoginContextHack.SetDefaultFinOrderBranchCode(qryCommonOptionsDEFAULT_FO_BRANCH_CODE.AsInteger);
      LoginContextHack.SetDefaultFinOrderExecDeptCode(qryCommonOptionsDEFAULT_FO_EXEC_DEPT_CODE.AsInteger);
      LoginContextHack.SetDefaultDCDModeCode(qryCommonOptionsDEFAULT_DCD_MODE_CODE.AsInteger);
      LoginContextHack.SetDefaultIncludeVAT(qryCommonOptionsDEFAULT_INCLUDE_VAT.AsBoolean);
      LoginContextHack.SetDefaultProductSpecRequirementCode(qryCommonOptionsDEFAULT_PRODUCT_SPEC_REQ_CODE.AsInteger);
      LoginContextHack.SetOpenNewFinOrder(qryCommonOptionsOPEN_NEW_FIN_ORDER.AsBoolean);
      LoginContextHack.SetIsDiscountPercentShownOnPrint(qryCommonOptionsIS_DISCOUNT_PERCENT_SHOWN_PRN.AsBoolean);
      LoginContextHack.SetDefaultReloadGroupSaleOnInsert(qryCommonOptionsDEFAULT_RELOAD_GROUP_SALE_INS.AsBoolean);
      LoginContextHack.SetDefaultReloadGroupSaleOnEdit(qryCommonOptionsDEFAULT_RELOAD_GROUP_SALE_EDT.AsBoolean);
      LoginContextHack.SetOperationMovementRequiresOccupationDept(qryCommonOptionsOM_REQUIRES_OCC_DEPT.AsBoolean);
      LoginContextHack.SetSpecialControlProfessionCode(qryCommonOptionsSPEC_CONTROL_PROFESSION_CODE.AsInteger);
      LoginContextHack.SetOMRequiresSpecialControlFirst(qryCommonOptionsOM_REQUIRES_SPEC_CONTROL_FIRST.AsBoolean);
      LoginContextHack.SetEECtrlMainEmployeeProfessionCode(qryCommonOptionsEE_CTRL_MAIN_PROFESSION_CODE.AsInteger);
      LoginContextHack.SetDatabaseIconIndex(qryCommonOptionsDATABASE_ICON_INDEX.AsInteger);
  end;
end;

procedure TdmLogin.LoadCompanyData;
begin
  Assert(not qryCompanyData.Active);

  qryCompanyData.TempOpen/
    procedure begin
      LoginContextHack.SetCompanyShortName(qryCompanyDataSHORT_NAME.AsString);
      LoginContextHack.SetCompanyLongName(qryCompanyDataLONG_NAME.AsString);
    end;
end;

procedure TdmLogin.LoadDBValues;
begin
  qryGetDbId.TempOpen/
    procedure begin
      LoginContextHack.SetDbId(qryGetDbIdDB_ID.AsString);
    end;

  qryDBValues.TempOpen/
    procedure begin
      LoginContextHack.SetIsProductionDb(qryDBValuesIS_PRODUCTION_DB.AsBoolean);
    end;
end;

procedure TdmLogin.LoadInternalValues;
begin
  Assert(not qryInternalValues.Active);

  qryInternalValues.TempOpen/
    procedure begin
      LoginContextHack.SetBaseCurrencyCode(qryInternalValuesBASE_CURRENCY_CODE.AsInteger);
      LoginContextHack.SetBaseCurrencyAbbrev(qryInternalValuesBASE_CURRENCY_ABBREV.AsString);
      LoginContextHack.SetSecondaryCurrencyCode(qryInternalValuesSECONDARY_CURRENCY_CODE.AsInteger);
      LoginContextHack.SetSecondaryCurrencyAbbrev(qryInternalValuesSECONDARY_CURRENCY_ABBREV.AsString);
      LoginContextHack.SetLocalBranchCode(qryInternalValuesLOCAL_BRANCH_CODE.AsInteger);
      LoginContextHack.SetLocalBranchNo(qryInternalValuesLOCAL_BRANCH_NO.AsInteger);
      LoginContextHack.SetLocalBranchName(qryInternalValuesLOCAL_BRANCH_NAME.AsString);
      if qryInternalValuesEXPIRE_DATE.IsNull then
        LoginContextHack.SetExpireDate(EncodeDate(2999, 1, 1))
      else
        LoginContextHack.SetExpireDate(qryInternalValuesEXPIRE_DATE.AsDateTime);

      LoginContextHack.SetIsOldActivitySystemVisible(qryInternalValuesIS_OLD_ACTIVITY_SYSTEM_VISIBLE.AsBoolean);
      LoginContextHack.SetIsInvoiceSystemVisible(qryInternalValuesIS_INVOICE_SYSTEM_VISIBLE.AsBoolean);
      LoginContextHack.SetIsAutoCompleteFinOrderVisible(qryInternalValuesIS_AUTO_COMPLETE_FO_VISIBLE.AsBoolean);
      LoginContextHack.SetIsAutoCompleteStoreRequestVisible(qryInternalValuesIS_AUTO_COMPLETE_SR_VISIBLE.AsBoolean);

      LoginContextHack.SetFeatureFlagOperationsLoading(qryInternalValuesFEATURE_FLAG_OPERATION_LOADING.AsBoolean);
    end;
end;

function TdmLogin.GetUserCodeByUserId(const AUserId: string): Integer;
begin
  if AUserId.Contains('=>') then
    begin
      Assert(Length(AUserId.Split(['=>'])) = 2);

      qryGetUserCodeByUserCode.ParamByName('USER_CODE').AsInteger:= AUserId.Split(['=>'])[1].ToInteger;

      Result:=
        qryGetUserCodeByUserCode.TempOpen/
          qryGetUserCodeByUserCodeUSER_CODE.AsIntegerFunc;
    end
  else
    begin
      qryGetUserCodeByExternalIdentifier.ParamByName('EXTERNAL_IDENTIFIER').AsString:= AUserId;

      Result:=
        qryGetUserCodeByExternalIdentifier.TempOpen/
          qryGetUserCodeByExternalIdentifierUSER_CODE.AsIntegerFunc;
    end;

  if (Result = 0) then
    raise Exception.Create(SUserNotAllowedToDB);
end;

function TdmLogin.GetUserIntegerArray(AQuery: TAbmesSQLQuery): TIntegerArray;
begin
  Assert(not AQuery.Active);
  Assert(AQuery.Fields.Count = 1);
  Assert(AQuery.Fields[0] is TAbmesFloatField);
  Assert(AQuery.Params.FindParam('USER_CODE') <> nil);

  AQuery.ParamByName('USER_CODE').AsInteger:= LoginContext.UserCode;

  Result:=
    AQuery.TempOpen/
      Utils.Nest<TIntegerArray>/
        function: TIntegerArray
        var
          i: Integer;
        begin
          i:= 0;
          while not AQuery.Eof do
            begin
              Inc(i);

              SetLength(Result, i);
              Result[i-1]:= AQuery.Fields[0].AsInteger;

              AQuery.Next;
            end;
        end;
end;

procedure TdmLogin.LoadUserData(const AUserCode: Integer);
begin
  Assert(not qryUserData.Active);

  qryUserData.ParamByName('USER_CODE').AsInteger:= AUserCode;

  qryUserData.TempOpen/
    procedure begin
      if qryUserData.Eof then
        raise Exception.Create('dmLogin internal error: user not found');

      if (SessionContext.AuthenticationToken.FirstName <> '') and
         (SessionContext.AuthenticationToken.FirstName <> qryUserDataFIRST_NAME.AsString) then
        raise Exception.Create(SUserAndEmployeeNamesDiffer);

      if (SessionContext.AuthenticationToken.MiddleName <> '') and
         (SessionContext.AuthenticationToken.MiddleName <> qryUserDataMIDDLE_NAME.AsString) then
        raise Exception.Create(SUserAndEmployeeNamesDiffer);

      if (SessionContext.AuthenticationToken.LastName <> '') and
         (SessionContext.AuthenticationToken.LastName <> qryUserDataLAST_NAME.AsString) then
        raise Exception.Create(SUserAndEmployeeNamesDiffer);

      LoginContextHack.SetUserCode(qryUserDataEMPLOYEE_CODE.AsInteger);
      LoginContextHack.SetCurrentDeptCode(qryUserDataCURRENT_DEPT_CODE.AsInteger);
      LoginContextHack.SetCurrentDeptFullName(qryUserDataCURRENT_DEPT_FULL_NAME.AsString);
      LoginContextHack.SetCurrentDeptIsFinStore(qryUserDataCURRENT_DEPT_IS_FIN_STORE.AsBoolean);
      LoginContextHack.SetUserFullName(qryUserDataEMPLOYEE_NAME.AsString);
      LoginContextHack.SetProductsTreeExpandLevels(qryUserDataPRODUCTS_TREE_EXPAND_LEVELS.AsInteger);
      LoginContextHack.SetDeptsTreeExpandLevels(qryUserDataDEPTS_TREE_EXPAND_LEVELS.AsInteger);
      LoginContextHack.SetProductsTreeShowDetail(qryUserDataPRODUCTS_TREE_SHOW_DETAIL.AsInteger);
      LoginContextHack.SetDeptsTreeShowDetail(qryUserDataDEPTS_TREE_SHOW_DETAIL.AsInteger);
      LoginContextHack.SetDefaultShowUncoveredLines(qryUserDataDEFAULT_SHOW_UNCOVERED_LINES.AsBoolean);
      LoginContextHack.SetPSDCompleteInAdvanceWorkdays(qryUserDataPSD_COMPLETE_IN_ADVANCE_WDAYS.AsInteger);
      LoginContextHack.SetPSDRequestInAdvanceWorkdays(qryUserDataPSD_REQUEST_IN_ADVANCE_WDAYS.AsInteger);
      LoginContextHack.SetDefaultSalesExpActivePage(qryUserDataDEFAULT_SALES_EXP_ACTIVE_PAGE.AsInteger);
      LoginContextHack.SetDefaultDeliveriesActivePage(qryUserDataDEFAULT_DELIVERIES_ACTIVE_PAGE.AsInteger);
      LoginContextHack.SetWorkdayBeginHour(qryUserDataBEGIN_TIME.AsDateTime);
      LoginContextHack.SetWorkdayEndHour(qryUserDataEND_TIME.AsDateTime);
      LoginContextHack.SetUserNegativeDisciplineRating(qryUserDataNEGATIVE_DISCIPLINE_RATING.AsInteger);
      LoginContextHack.SetUserPositiveDisciplineRating(qryUserDataPOSITIVE_DISCIPLINE_RATING.AsInteger);
      LoginContextHack.SetFinancialProductsTreeExpandLevels(qryUserDataFIN_PROD_TREE_EXPAND_LEVELS.AsInteger);
      LoginContextHack.SetBudgetProductsTreeExpandLevels(qryUserDataBUDGET_PROD_TREE_EXPAND_LEVELS.AsInteger);
      LoginContextHack.SetFinancialProductsTreeShowDetail(qryUserDataFIN_PROD_TREE_SHOW_DETAIL.AsInteger);
      LoginContextHack.SetBudgetProductsTreeShowDetail(qryUserDataBUDGET_PROD_TREE_SHOW_DETAIL.AsInteger);
      LoginContextHack.SetDOSPrint(qryUserDataDOS_PRINT.AsBoolean);
      LoginContextHack.SetDefaultModelStatusExpandState(qryUserDataDEFAULT_MODEL_STATUS_EXPAND_ST.AsInteger);
      LoginContextHack.SetEmployeeNo(qryUserDataEMPLOYEE_NO.AsInteger);
      LoginContextHack.SetShowProductQuantitiesTreeByDefault(qryUserDataDEFAULT_SHOW_PRODUCT_QTY_TREE.AsBoolean);
    end;
end;

procedure TdmLogin.LockOtherComputersUserSessions(const ADBName: string; const AUserCode: Integer;
  const AClientComputerName: string);
var
  sc: TSessionContext;
begin
  inherited;

  for sc in SessionContextsSnapshot do
    if SameText(sc.DBName, ADBName) and
       (sc.LoginContext.UserCode = AUserCode) and
       (sc.LoginContext.LicensePoolType <> lptInternal) and
       not SameText(sc.ClientInfo.ComputerName, AClientComputerName) then
      begin
        sc.RequestLockConnection(AClientComputerName);
      end;
end;

function TdmLogin.NewAccessRuleCode: Integer;
begin
  Result:=
    qryNewAccessRuleCode.TempOpen/
      qryNewAccessRuleCodeNEW_ACCESS_RULE_CODE.AsIntegerFunc;
end;

procedure TdmLogin.CheckUserConnection(const AUserCode: Integer);
var
  ConnectionIPAddress: string;
  IPAddressAllowed: Boolean;
  IPAddressDenied: Boolean;
  AccessRuleCount: Integer;
begin
  ConnectionIPAddress:= SessionContext.ClientInfo.IPAddress;

  if TIPAddressUtils.IPAddressMatchesPattern(ConnectionIPAddress, '127.0.0.1') then
    Exit;

  AccessRuleCount:=
    qryAccessRuleCount.TempOpen/
      qryAccessRuleCountCOUNT.AsIntegerFunc;

  if (AccessRuleCount = 0) then
    Exit;

  qryUserAccessRules.ParamByName('EMPLOYEE_CODE').AsInteger:= AUserCode;

  qryUserAccessRules.TempOpen/
    procedure begin
      if not qryUserAccessRules.Eof then
        begin
          IPAddressAllowed:= False;
          IPAddressDenied:= False;

          qryUserAccessRules.ForEach/
            procedure begin
              if qryUserAccessRulesIP_ADDRESS_PATTERN.IsNull or
                 TIPAddressUtils.IPAddressMatchesPattern(ConnectionIPAddress, qryUserAccessRulesIP_ADDRESS_PATTERN.AsString) then
                begin
                  if (qryUserAccessRulesACCESS_TYPE_CODE.AsInteger = 1) then
                    IPAddressAllowed:= True
                  else
                    IPAddressDenied:= True;
                end;
            end;

          if (not IPAddressAllowed) or IPAddressDenied then
            begin
              Sleep(LoginFailSleepMilliseconds);
              raise Exception.Create(SAccessDeniedId);
            end;
        end;
    end;
end;

procedure TdmLogin.CheckContextDate;
var
  LastExecutionDate: TDateTime;
begin
  LastExecutionDate:=
    Utils.Nest<TDateTime>/
      qryGetLastExecutionDate.TempOpen/
        qryGetLastExecutionDateLAST_EXECUTION_DATE.AsDateTimeFunc;

  if (LastExecutionDate > ContextDate) then
    raise Exception.Create(
      SCannotLoginToEarlierDateThanId +
      '(EarliestPossibleLoginDate:d=' + InternalDateToStr(LastExecutionDate) + ')');

  with LoginContext as TDBLoginContext do
    if not IsSessionReadOnly and IsContextDateOverrideEnabled and IsProductionDb then
      raise Exception.Create(SCannotOverrideContextDateOnProductionDbId);
end;

procedure TdmLogin.Login;

  function GetLicensePoolType: TLicensePoolType;
  begin
    if SessionContext.IsPowerUser then
      Result:= lptInternal
    else
      Result:= lptConcurrent;
  end;

  procedure CheckLastLogin(
    const ALastLoginDateTime: TDateTime;
    const ALastLoginClientComputerName: string;
    const ALastLoginClientWindowsSessionID: Integer);
  begin
    if (GetLicensePoolType <> lptInternal) and
       (ALastLoginClientComputerName <> '') and
       (ALastLoginClientWindowsSessionID >= 0) and
       ( (SessionContext.ClientInfo.ComputerName <> ALastLoginClientComputerName) or
         (SessionContext.ClientInfo.WindowsSessionId <> ALastLoginClientWindowsSessionID) ) and
       (SecondSpan(Now, ALastLoginDateTime) <= dmSvrMain.ComputerSwitchTimeoutMinutes * 60) then
      raise Exception.Create(
        SNewComputerLoginNotAllowedId + '(' +
        'TimeoutMinutes:i=' + InternalIntToStr(dmSvrMain.ComputerSwitchTimeoutMinutes) + ',' +
        'ComputerName:s=' + InternalEncodeString(ALastLoginClientComputerName) + ',' +
        'LastLoginTime:t=' + InternalTimeToString(ALastLoginDateTime) + ')');
  end;

var
  UserCode: Integer;
  LastLoginDateTime: TDateTime;
  LastLoginClientComputerName: string;
  LastLoginClientWindowsSessionID: Integer;
begin
  UserCode:= GetUserCodeByUserId(SessionContext.AuthenticationToken.UserId);

  CheckUserConnection(UserCode);

  LoginContextHack.SetLicensePoolType(GetLicensePoolType);

  GetUserLastLoginInfo(UserCode, LastLoginDateTime, LastLoginClientComputerName, LastLoginClientWindowsSessionID);
  CheckLastLogin(LastLoginDateTime, LastLoginClientComputerName, LastLoginClientWindowsSessionID);

  if dmSvrMain.LockOtherComputersSessions and (GetLicensePoolType <> lptInternal) then
    LockOtherComputersUserSessions(SessionContext.DBName, UserCode, SessionContext.ClientInfo.ComputerName);

  CheckContextDate;

  UpdateLastLoginMoment;
end;

procedure TdmLogin.LoadLoginContext;

  function GetLicensePoolType: TLicensePoolType;
  begin
    if SessionContext.IsPowerUser then
      Result:= lptInternal
    else
      Result:= lptConcurrent;
  end;

var
  IsSessionReadOnly: Boolean;
  UserCode: Integer;
begin
  UserCode:= GetUserCodeByUserId(SessionContext.AuthenticationToken.UserId);
  LoginContextHack.SetUserCode(UserCode);

  LoadUserData(UserCode);

  LoginContextHack.SetUserActivities(GetUserIntegerArray(qryUserActivities));
  LoginContextHack.SetUserGroups(GetUserIntegerArray(qryUserGroups));
  LoginContextHack.SetUserSysRoles(GetUserIntegerArray(qryUserSysRoles));
  LoginContextHack.SetUserWorkDepts(GetUserIntegerArray(qryUserWorkDepts));

  LoginContextHack.SetSystemLocale(IntToSystemLocale(SessionContext.ClientInfo.SystemLocale));

  LoadDBValues;
  LoadCommonOptions;
  LoadCompanyData;
  LoadInternalValues;

  IsSessionReadOnly:= SessionContext.ClientInfo.IsSessionReadOnly or (LoginContext as TDBLoginContext).IsReadOnlyDB;

  // tova e vajno da stane sled LoadCommonOptions, za da e zaredena veche time zona-ta
  LoginContextHack.SetStartupContextDateOverride(SessionContext.ClientInfo.StartupContextDateOverride);
  LoginContextHack.SetIsSessionReadOnly(IsSessionReadOnly);
  LoginContextHack.SetIsSessionTest((LoginContext as TDBLoginContext).IsTestDB);
  LoginContextHack.SetIsPowerUser(SessionContext.IsPowerUser);

  LoginContextHack.SetLicensePoolType(GetLicensePoolType);
  LoginContextHack.SetLastLogin(Now);
end;

procedure TdmLogin.prvAccessRuleBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('ACCESS_RULE_CODE').NewValue:= NewAccessRuleCode;
end;

procedure TdmLogin.prvCommonOptionsAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  LoginContext.IsValid:= False;
  try
    Sleep(1000);
    LoadCommonOptions;
  finally
    LoginContext.IsValid:= True;
  end;
end;

procedure TdmLogin.prvUserToolbarsUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;
  Response:= rrIgnore;
end;

procedure TdmLogin.ResetUserToolbars(EmployeeCode,
  CrossStateCode: Integer);
begin
  qryResetUserToolbars.ParamByName('EMPLOYEE_CODE').AsInteger:= EmployeeCode;
  qryResetUserToolbars.ParamByName('CROSS_STATE_CODE').AsInteger:= CrossStateCode;
  qryResetUserToolbars.ExecSQL;
end;

procedure TdmLogin.UpdateLastLoginMoment;
begin
  if (LoginContext.LicensePoolType <> lptInternal) then
    DBDataModule.TempDisableDocsProcessing/
      procedure begin
        qryUpdateLastLoginMoment.ParamByName('EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
        qryUpdateLastLoginMoment.ParamByName('LAST_LOGIN_COMPUTER_NAME').AsString:= SessionContext.ClientInfo.ComputerName;
        qryUpdateLastLoginMoment.ParamByName('LAST_LOGIN_WINDOWS_SESSION_ID').AsInteger:= SessionContext.ClientInfo.WindowsSessionId;
        qryUpdateLastLoginMoment.ParamByName('LAST_LOGIN_WINDOWS_VERSION').AsString:= SessionContext.ClientInfo.WindowsVersion;
        qryUpdateLastLoginMoment.ParamByName('LAST_LOGIN_HARDWARE_INFO').AsString:= SessionContext.ClientInfo.HardwareInfo;
        qryUpdateLastLoginMoment.ExecSQL;
        Assert(qryUpdateLastLoginMoment.RowsAffected = 1);
      end;
end;

initialization
  TdmLoginProxy.FSingleton:= TdmLoginProxy.Create(TdmLogin);

finalization
  FreeAndNil(TdmLoginProxy.FSingleton);
end.
