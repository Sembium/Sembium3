unit fConfig;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, AbmesClientDataSet, AbmesFields, JvCaptionButton,
  AbmesDBCheckBox, ComCtrls, Menus, JvButtons, DBCtrlsEh, JvDBLookup,
  JvDBCombobox, fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, JvExControls, JvComponent, JvExStdCtrls,
  JvComponentBase, uClientTypes, dDocClient, JvCombobox, fDeptFieldEditFrame,
  fTreeOnlyNodeFieldEditFrame, fProfessionFieldEditFrame,
  fProfessionFieldEditFrameBald, System.Actions, System.Generics.Collections;

type
  TfmConfig = class(TEditForm)
    cdsDataCODE: TAbmesFloatField;
    cdsDataDEFAULT_TREE_CUSTOM_CODE: TAbmesFloatField;
    cdsDataDEFAULT_MGR_SALE_PRIORITY_CODE: TAbmesFloatField;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    dsPriorities: TDataSource;
    cdsDataDEFAULT_PRIORITY_CODE: TAbmesFloatField;
    cdsDataMIN_RANGE_INVOICE_NO: TAbmesFloatField;
    cdsDataMAX_RANGE_INVOICE_NO: TAbmesFloatField;
    cdsDataDEFAULT_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    dsDateUnits: TDataSource;
    pcMain: TPageControl;
    tsSales: TTabSheet;
    tsFinance: TTabSheet;
    cdsDataMLLC_IND_REFRESH_INTERVAL: TAbmesFloatField;
    cdsDataAUTO_LIMITED_DEFAULT_MODELS: TAbmesFloatField;
    cdsDataML_LIMITING_WORKDAYS: TAbmesFloatField;
    cdsDataWEEK_DATE_FORMATTING: TAbmesFloatField;
    tsDeliveries: TTabSheet;
    cdsDataMAX_DCD_OVERHEAD_PERCENT: TAbmesFloatField;
    cdsDataIS_SALE_MFG_QTY_AUTO_LOADED: TAbmesFloatField;
    cdsDataPROD_ORGANIZER_PROFESSION_CODE: TAbmesFloatField;
    cdsProfessions: TAbmesClientDataSet;
    cdsProfessionsPROFESSION_CODE: TAbmesFloatField;
    cdsProfessionsPROFESSION_NAME: TAbmesWideStringField;
    cdsData_PROD_ORGANIZER_PROFESSION_NAME: TAbmesWideStringField;
    cdsDataIS_DISCOUNT_PERCENT_SHOWN: TAbmesFloatField;
    cdsDataMAX_SALE_INV_VAL_DIFF_PERCENT: TAbmesFloatField;
    tsProductionOrders: TTabSheet;
    cdsDataPRODUCTION_ORDER_LATE_DAYS: TAbmesFloatField;
    cdsDataPRODUCTION_LEVEL_CODE: TAbmesFloatField;
    cdsDataDOCS_REMOTE_ROOT_PATH: TAbmesWideStringField;
    cdsDataDOCS_LOCAL_ROOT_PATH: TAbmesWideStringField;
    cdsDataDNC_DOCS_RELATIVE_ROOT_PATH: TAbmesWideStringField;
    tsDoc: TTabSheet;
    cdsDataDNC_SERVER_NAME: TAbmesWideStringField;
    cdsDataMANAGER_OKIDU_PROFESSION_CODE: TAbmesFloatField;
    cdsDataOKIDU_PROFESSION_CODE: TAbmesFloatField;
    cdsData_MANAGER_OKIDU_PROFESSION_NAME: TAbmesWideStringField;
    cdsData_OKIDU_PROFESSION_NAME: TAbmesWideStringField;
    cdsDataOPERATION_WORKDAYS_DEV_PERCENT: TAbmesFloatField;
    cdsDataALLOW_LATE_ML_LIMITING: TAbmesFloatField;
    cdsDataIS_SR_SD_DEPT_COPIED_FROM_PSD: TAbmesFloatField;
    cdsDataCOUNT_APPROVE_CYCLES: TAbmesFloatField;
    cdsDataDOC_ITEMS_UNAPPROVE_PROMPT: TAbmesFloatField;
    cdsDataALLOW_INTERNALLY_STORED_DOC: TAbmesFloatField;
    cdsDataDOC_ITEM_VIEW_CACHE_SIZE: TAbmesFloatField;
    cdsDateFormats: TAbmesClientDataSet;
    cdsDateFormatsDATE_FORMAT_CODE: TAbmesFloatField;
    cdsDateFormatsDATE_FORMAT_NAME: TAbmesWideStringField;
    dsDateFormats: TDataSource;
    cdsDateIntervalFormats: TAbmesClientDataSet;
    cdsDateIntervalFormatsDATE_INTERVAL_FORMAT_CODE: TAbmesFloatField;
    cdsDateIntervalFormatsDATE_INTERVAL_FORMAT_NAME: TAbmesWideStringField;
    cdsDataDATE_INTERVAL_FORMAT_CODE: TAbmesFloatField;
    dsDateIntervalFormats: TDataSource;
    cdsDataCHECK_SPEC_DOCS: TAbmesFloatField;
    cdsDataCHECK_MODEL_DOCS: TAbmesFloatField;
    cdsDataOCCUPATION_ROOT_PRODUCT_CODE: TAbmesFloatField;
    tsDepts: TTabSheet;
    cdsDataOCC_ASSIGNMENT_DAYS_DIFF: TAbmesFloatField;
    cdsDataCOMMON_GROUPS_PROD_ORD_MONTHS: TAbmesFloatField;
    cdsDataEO_ACTIVATING_WORKDAYS: TAbmesFloatField;
    cdsDataDEFAULT_WORK_PRIORITY_CODE: TAbmesFloatField;
    cdsWorkPriorities: TAbmesClientDataSet;
    cdsWorkPrioritiesWORK_PRIORITY_CODE: TAbmesFloatField;
    cdsWorkPrioritiesWORK_PRIORITY_NO: TAbmesFloatField;
    cdsWorkPrioritiesWORK_PRIORITY_NAME: TAbmesWideStringField;
    dsWorkPriorities: TDataSource;
    cdsDataMAX_EMP_AVAIL_HOURS: TAbmesFloatField;
    cdsDataMIN_INTEGRAL_OVERTIME_HOURS: TAbmesFloatField;
    cdsDataMAX_EMP_MOVEMENT_REG_HOURS: TAbmesFloatField;
    tsSubjects: TTabSheet;
    cdsDataEAM_AUTHORIZE_PROFESSION_CODE: TAbmesFloatField;
    cdsData_EAM_AUTHORIZE_PROFESSION_NAME: TAbmesWideStringField;
    cdsDataMAX_EAM_REG_DAYS: TAbmesFloatField;
    cdsDataDOC_ITEM_MIRRORS_ROOT_PATH: TAbmesWideStringField;
    cdsDataMINIMAL_EXCEPT_EVENT_HOURS: TAbmesFloatField;
    cdsDataDATE_PERIODS_YEAR_PART_CODE: TAbmesFloatField;
    cdsYearParts: TAbmesClientDataSet;
    cdsYearPartsYEAR_PART_CODE: TAbmesFloatField;
    cdsYearPartsYEAR_PART_NAME: TAbmesWideStringField;
    dsYearParts: TDataSource;
    cdsDataEE_IND_REFRESH_INTERVAL: TAbmesFloatField;
    cdsDataFIN_ORDER_REQUIREMENT_CODE: TAbmesFloatField;
    cdsFinOrderRequirements: TAbmesClientDataSet;
    cdsFinOrderRequirementsFIN_ORDER_REQUIREMENT_CODE: TAbmesFloatField;
    cdsFinOrderRequirementsFIN_ORDER_REQUIREMENT_NAME: TAbmesWideStringField;
    dsFinOrderRequirements: TDataSource;
    cdsDataSLOW_CONN_SF_WARNING_SIZE: TAbmesFloatField;
    tsCommon: TTabSheet;
    gbCommonDates: TGroupBox;
    gbCommonDefaultPriority: TGroupBox;
    lblDefaultDateUnit: TLabel;
    lblDateFormat: TLabel;
    lblDateIntervalFormat: TLabel;
    cbDefaultDateUnit: TJvDBLookupCombo;
    cbDateIntervalFormat: TJvDBLookupCombo;
    cbDateFormat: TJvDBLookupCombo;
    cbDatePeriodsYearPart: TJvDBLookupCombo;
    lblDatePeriodsYearPart: TLabel;
    gbCommonExceptEvents: TGroupBox;
    cbDefaultPriority: TJvDBLookupCombo;
    lblDefaultPriority: TLabel;
    lblMinimalExceptEventHours: TLabel;
    edtMinimalExceptEventHours: TDBEdit;
    lblHours: TLabel;
    lblExceptEventIndicatorRefreshInterval: TLabel;
    edtExceptEventIndicatorsRefreshInterval: TDBEdit;
    lblMinutes: TLabel;
    gbCommonTreeNodeNos: TGroupBox;
    chbDefaultTreeCustomCode: TAbmesDBCheckBox;
    gbSubjectsEmployeeAvailability: TGroupBox;
    gbSubjectsEmployeeAvailabilityParams: TGroupBox;
    lblMaxEmployeeAvailabilityHours: TLabel;
    lblMaxEmployeeAvailabilityHoursMeasure: TLabel;
    lblMinIntegralOvertimeHoursMeasure: TLabel;
    lblMaxEmployeeMovementRegistrationHoursMeasure: TLabel;
    lblMinIntegralOvertimeHours: TLabel;
    lblMaxEmployeeMovementRegistrationHours: TLabel;
    lblEmpAvailModifierStornoDays: TLabel;
    edtEmpAvailModifierStornoDaysMeasure: TLabel;
    edtMaxEmployeeAvailabilityHours: TDBEdit;
    edtMinIntegralOvertimeHours: TDBEdit;
    edtMaxEmployeeMovementRegistrationHours: TDBEdit;
    edtEmpAvailModifierStornoDays: TDBEdit;
    gbSubjectsEmployeeAvailabilitySpecificProfessions: TGroupBox;
    lblEmpAvailModifierAuthorizeProfession: TLabel;
    tsObjects: TTabSheet;
    gbObjectsCommonGroups: TGroupBox;
    gbObjectsEngineeringOrders: TGroupBox;
    gbObjectsStoreRequests: TGroupBox;
    lblCommonGroupsProductionOrdersMonths: TLabel;
    lblCommonGroupsProductionOrdersMonthsMeasure: TLabel;
    edtCommonGroupsProductionOrdersMonths: TDBEdit;
    lblEOActivatingWorkdays: TLabel;
    edtEOActivatingWorkdays: TDBEdit;
    chbIsStoreRequestStoreDealDeptCopiedFromPSD: TAbmesDBCheckBox;
    gbDeptsOccupations: TGroupBox;
    frOccupationRootProduct: TfrProductFieldEditFrame;
    gbDeptsAssignmentsDiff: TGroupBox;
    lblAssignmentDaysDiff1: TLabel;
    bvlDeptsAssignmentsDiff: TBevel;
    bvlLeftLine3: TBevel;
    lblAssignmentDaysDiff2: TLabel;
    bvlLeftLine4: TBevel;
    lblAssignmentDaysDiff3: TLabel;
    lblZero2: TLabel;
    lblCalendarDays: TLabel;
    shpAssignmentDaysDiff3: TShape;
    shpAssignmentDaysDiff2: TShape;
    shpAssignmentDaysDiff1: TShape;
    edtAssignmentDaysDiff: TDBEdit;
    gbSalesSaleProductionOrder: TGroupBox;
    gbSalesDefaultWorkPriority: TGroupBox;
    chkIsSaleManufactureQuantityAutoLoaded: TAbmesDBCheckBox;
    lblDefaultWorkPriority: TLabel;
    cbDefaultWorkPriority: TJvDBLookupCombo;
    gbProductionOrdersProductionOrders: TGroupBox;
    gbProductionOrdersLateDays: TGroupBox;
    lblProductionOrderLateDays1: TLabel;
    bvlProductionOrdersLateDays: TBevel;
    bvlLeftLine1: TBevel;
    lblProductionOrderLateDays2: TLabel;
    bvlLeftLine2: TBevel;
    lblProductionOrderLateDays3: TLabel;
    lblZero: TLabel;
    lblDays: TLabel;
    shpProductionOrderLateDays3: TShape;
    shpProductionOrderLateDays2: TShape;
    edtProductionOrderLateDays: TDBEdit;
    lblMaxSaleAddedValDiffPercent: TLabel;
    lblMaxSaleAddedValDiffPercentMeasure: TLabel;
    edtMaxSaleAddedValDiffPercent: TDBEdit;
    gbProductionOrdersModels: TGroupBox;
    lblProductionLevel: TLabel;
    cbProductionLevel: TJvDBComboBox;
    lblMllcIndicatorRefreshInterval: TLabel;
    lblMllcIndicatorRefreshIntervalMinutes: TLabel;
    edtMllcIndicatorRefreshInterval: TDBEdit;
    gbDeliveriesDeliveryGroups: TGroupBox;
    lblMaxDCDOverheadPercent: TLabel;
    lblMaxDCDOverheadPercentMeasure: TLabel;
    edtMaxDCDOverheadPercent: TDBEdit;
    gbFinanceInvoices: TGroupBox;
    chkIsDiscountPercentShown: TAbmesDBCheckBox;
    gbFinanceFinOrders: TGroupBox;
    lblFinOrderRequirement: TLabel;
    cbFinOrderRequirement: TJvDBLookupCombo;
    gbDocOptions: TGroupBox;
    chkAllowInternallyStoredDoc: TAbmesDBCheckBox;
    chbCountApproveCycles: TAbmesDBCheckBox;
    chbDocItemsUnapprovePrompt: TAbmesDBCheckBox;
    chkCheckSpecDocs: TAbmesDBCheckBox;
    chkCheckModelDocs: TAbmesDBCheckBox;
    lblDocItemViewCacheSize: TLabel;
    edtDocItemViewCacheSize: TDBEdit;
    gbDocExternalDocs: TGroupBox;
    lblDncDocsRelativeRootPath: TLabel;
    lblDncServerName: TLabel;
    lblDocsLocalRootPath: TLabel;
    lblDocsRemoteRootPath: TLabel;
    edtDncDocsRelativeRootPath: TDBEdit;
    edtDncServerName: TDBEdit;
    edtDocsLocalRootPath: TDBEdit;
    edtDocsRemoteRootPath: TDBEdit;
    gbDocSlowConnection: TGroupBox;
    lblSlowConnectionStoredFileWarningSize: TLabel;
    edtSetSlowConnectionStoredFileWarningSize: TDBEdit;
    bvlDocOptions: TBevel;
    lblMaxRangeInvoiceNo: TLabel;
    edtMinRangeInvoiceNo: TDBEdit;
    edtMaxRangeInvoiceNo: TDBEdit;
    lblInvoicesNoRange: TLabel;
    cbMgrSalePriority: TJvDBLookupCombo;
    lblMgrSalePriority: TLabel;
    gbProductionOrdersOperations: TGroupBox;
    lblOperationWorkdaysDevPercent: TLabel;
    lblPercents: TLabel;
    edtOperationWorkdaysDevPercent: TDBEdit;
    gbProductionOrdersSpecificProfessions: TGroupBox;
    lblProductionOrganizerProfession: TLabel;
    lblOKIDUProfesison: TLabel;
    lblManagerOKIDUProfession: TLabel;
    lblMLLimitingWorkdays: TLabel;
    chbAutoLimitingDefaultModels: TAbmesDBCheckBox;
    cbAllowLateMLLimiting: TAbmesDBCheckBox;
    edtMLLimitingWorkdays: TDBEdit;
    lblSetSlowConnectionStoredFileWarningSizeMeasure: TLabel;
    cdsTimeZones: TAbmesClientDataSet;
    dsTimeZones: TDataSource;
    cdsTimeZonesTIME_ZONE_ID: TAbmesWideStringField;
    cdsDataMAX_UNFINISHED_MFG_PAST_DAYS: TAbmesFloatField;
    cdsDataTIME_ZONE_ID: TAbmesWideStringField;
    gbCommonTimeZone: TGroupBox;
    cbTimeZone: TJvDBLookupCombo;
    cdsTimeZonesTIME_ZONE_NAME: TAbmesWideStringField;
    cdsTimeZonesBIAS: TAbmesFloatField;
    cdsTimeZonesTIME_ZONE_OFFSET: TAbmesFloatField;
    cdsDataDEFAULT_FO_BRANCH_CODE: TAbmesFloatField;
    cdsDataDEFAULT_FO_EXEC_DEPT_CODE: TAbmesFloatField;
    lblDefaultFinOrderBranch: TLabel;
    cbDefaultFinOrderBranch: TJvDBLookupCombo;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    dsBranches: TDataSource;
    frDefaultFinOrderExecDept: TfrDeptFieldEditFrame;
    cdsDataALLOW_NON_MAIN_ONLY_OE: TAbmesFloatField;
    gbOccupationEmployeeAssignments: TGroupBox;
    chkAllowNonMainOnlyOccEmpAssignments: TAbmesDBCheckBox;
    cdsDataDEFAULT_DCD_MODE_CODE: TAbmesFloatField;
    cdsDCDModes: TAbmesClientDataSet;
    cdsDCDModesDCD_MODE_CODE: TAbmesFloatField;
    cdsDCDModesDCD_MODE_NO: TAbmesFloatField;
    cdsDCDModesDCD_MODE_NAME: TAbmesWideStringField;
    cdsDCDModesDCD_MODE_ABBREV: TAbmesWideStringField;
    dsDCDModes: TDataSource;
    lblDefaultDCDMode: TLabel;
    cbDefaultDCDMode: TJvDBLookupCombo;
    frProductionOrganizerProfession: TfrProfessionFieldEditFrameBald;
    frManagerOKIDUProfession: TfrProfessionFieldEditFrameBald;
    frOKIDUProfesison: TfrProfessionFieldEditFrameBald;
    frEmpAvailModifierAuthorizeProfession: TfrProfessionFieldEditFrameBald;
    lblWarning: TLabel;
    cdsDataDEFAULT_INCLUDE_VAT: TAbmesFloatField;
    gbObjectsPrices: TGroupBox;
    chbDefaultIncludeVAT: TAbmesDBCheckBox;
    cdsDataDEFAULT_PRODUCT_SPEC_REQ_CODE: TAbmesFloatField;
    gbDefaultProductSpecRequirement: TGroupBox;
    lblDefaultProductSpecRequirement: TLabel;
    cdsProductSpecRequirements: TAbmesClientDataSet;
    cdsProductSpecRequirementsPRODUCT_SPEC_REQUIREMENT_CODE: TAbmesFloatField;
    cdsProductSpecRequirementsPRODUCT_SPEC_REQUIREMENT_NAME: TAbmesWideStringField;
    dsProductSpecRequirements: TDataSource;
    cbDefaultProductSpecRequirement: TJvDBLookupCombo;
    chbOpenNewFinOrder: TAbmesDBCheckBox;
    cdsDataOPEN_NEW_FIN_ORDER: TAbmesFloatField;
    cdsDataIS_DISCOUNT_PERCENT_SHOWN_PRN: TAbmesFloatField;
    chkIsDiscountPercentShownOnPrint: TAbmesDBCheckBox;
    gbReloadGroupSaleDefaults: TGroupBox;
    cdsDataDEFAULT_RELOAD_GROUP_SALE_INS: TAbmesFloatField;
    cdsDataDEFAULT_RELOAD_GROUP_SALE_EDT: TAbmesFloatField;
    chkDefaultReloadGroupSaleOnInsert: TAbmesDBCheckBox;
    chkDefaultReloadGroupSaleOnEdit: TAbmesDBCheckBox;
    cdsDataOM_REQUIRES_OCC_DEPT: TAbmesFloatField;
    cbOperationMovementRequiresOccupationDept: TAbmesDBCheckBox;
    lblSpecialControlProfession: TLabel;
    frSpecialControlProfession: TfrProfessionFieldEditFrameBald;
    cdsDataSPEC_CONTROL_PROFESSION_CODE: TAbmesFloatField;
    cdsDataOM_REQUIRES_SPEC_CONTROL_FIRST: TAbmesFloatField;
    chbOMRequiresSpecControlFirst: TAbmesDBCheckBox;
    lblEECtrlMainProfession: TLabel;
    frEECtrlMainProfession: TfrProfessionFieldEditFrameBald;
    cdsDataEE_CTRL_MAIN_PROFESSION_CODE: TAbmesFloatField;
    cdsDataDATABASE_ICON_INDEX: TAbmesFloatField;
    gbCommonDatabaseIcon: TGroupBox;
    cbDatabaseIcon: TJvDBComboBox;
    procedure cdsDataBeforeOpen(DataSet: TDataSet);
    procedure cdsDataAfterClose(DataSet: TDataSet);
    procedure cdsDataVAT_PERCENTValidate(Sender: TField);
    procedure cdsDataMAX_DCD_OVERHEAD_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDataMAX_DCD_OVERHEAD_PERCENTSetText(Sender: TField;
      const Text: String);
    procedure cdsDataVAT_PERCENTGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsDataVAT_PERCENTSetText(Sender: TField;
      const Text: String);
    procedure FormShow(Sender: TObject);
    procedure cdsDataMAX_SALE_INV_VAL_DIFF_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDataMAX_SALE_INV_VAL_DIFF_PERCENTSetText(Sender: TField;
      const Text: String);
    procedure cdsDataOPERATION_WORKDAYS_DEV_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDataOPERATION_WORKDAYS_DEV_PERCENTSetText(Sender: TField;
      const Text: String);
    procedure cdsDataDOC_ITEM_VIEW_CACHE_SIZESetText(Sender: TField;
      const Text: String);
    procedure cdsDataDOC_ITEM_VIEW_CACHE_SIZEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure HoursInMinutesGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure HoursInMinutesSetText(Sender: TField;
      const Text: String);
    procedure cdsDataSLOW_CONN_SF_WARNING_SIZEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDataSLOW_CONN_SF_WARNING_SIZESetText(Sender: TField;
      const Text: string);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cbDatabaseIconDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
      State: TOwnerDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure cbDatabaseIconMeasureItem(Control: TWinControl; Index: Integer; var Height: Integer);
  private
    FDocConfig: Boolean;
    FCurrentTimeOffset: Real;
    FDatabaseIcons: TObjectList<TGraphic>;
    function GetTimeOffset(ATimeZoneId: string): Real;
    procedure InitializeDatabaseIconComboBox;
  protected
    procedure DoApplyUpdates; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ADocConfig: Boolean = False); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ADocConfig: Boolean = False): Boolean;
  end;

implementation

uses
  dMain, uClientUtils, JclDateTime, uUtils, Math, StrUtils, DateUtils,
  fTreeSelectForm, AbmesDialogs, uTaskBarUtils, uDatabaseIcons, uClientApp,
  uClientDateTime, uClientAppResources, JclStrings;

{$R *.DFM}

resourcestring
  SFieldValueMustBeBetween = 'Стойността на полето "%s" трябва да е между 0%% и 100%%';
  SWorkdayHoursIncorrect = 'Началния час трябва да бъде по-малък от крайния';

  SWeekDateFormat = 'Седмичен формат (%s)';
  SMonthDateFormat = 'Месечен формат (%s)';
  STimeZoneChangeConfirmation = 'Промяната на часовата зона на базата ще промени и датата.' + SLineBreak +
    'Това може да направи невъзможно използването на %AppName% за няколко часа (до оеднаквяване на датите).' + SLineBreak +
    'Желаете ли да продължите?';

const
  SInvalidTimeZone = 'TimeZone not found';

{ TfmConfig }

procedure TfmConfig.cdsDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsTimeZones.Open;
  cdsPriorities.Open;
  cdsDateUnits.Open;
  cdsDateIntervalFormats.Open;
  cdsWorkPriorities.Open;
  cdsYearParts.Open;
  cdsFinOrderRequirements.Open;
  cdsBranches.Open;
  cdsDCDModes.Open;
  cdsProductSpecRequirements.Open;

  InitializeDatabaseIconComboBox;

  cdsDateFormats.CreateDataSet;
  cdsDateFormats.AppendRecord([0, Format(SMonthDateFormat, [JclDateTime.FormatDateTime(dmMain.GetDateFormat, ContextDate)])]);
  cdsDateFormats.AppendRecord([1, Format(SWeekDateFormat, [JclDateTime.FormatDateTime(dmMain.GetWeekDateFormat, ContextDate)])]);
end;

procedure TfmConfig.actFormUpdate(Sender: TObject);
begin
  inherited;
  gbFinanceInvoices.Visible:= LoginContext.IsInvoiceSystemVisible;
end;

procedure TfmConfig.cbDatabaseIconDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
var
  Offset: Integer;
begin
  inherited;

  cbDatabaseIcon.Canvas.FillRect(Rect);

  if InRange(Index, 0, FDatabaseIcons.Count - 1) then
    begin
      if (odComboBoxEdit in State) then
        Offset:= 0
      else
        Offset:= 2;

      cbDatabaseIcon.Canvas.Draw(Rect.Left + Offset, Rect.Top, FDatabaseIcons[Index]);
    end;
end;

procedure TfmConfig.cbDatabaseIconMeasureItem(Control: TWinControl; Index: Integer; var Height: Integer);
begin
  inherited;
  Height:= 16;
end;

procedure TfmConfig.cdsDataAfterClose(DataSet: TDataSet);
begin
  inherited;
  cdsProductSpecRequirements.Close;
  cdsDCDModes.Close;
  cdsBranches.Close;
  cdsFinOrderRequirements.Close;
  cdsYearParts.Close;
  cdsWorkPriorities.Close;
  cdsDateFormats.Close;
  cdsDateIntervalFormats.Close;
  cdsDateUnits.Close;
  cdsPriorities.Close;
  cdsTimeZones.Close;
end;

procedure TfmConfig.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FCurrentTimeOffset:= GetTimeOffset(cdsDataTIME_ZONE_ID.AsString);
  cdsBranches.Filtered:= True;
end;

procedure TfmConfig.cdsDataVAT_PERCENTValidate(Sender: TField);
begin
  inherited;
  if (Sender.AsFloat < 0) or (Sender.AsFloat > 1) then
    raise Exception.CreateFmt(SFieldValueMustBeBetween, [Sender.DisplayLabel])
end;

procedure TfmConfig.cdsDataMAX_DCD_OVERHEAD_PERCENTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmConfig.cdsDataMAX_DCD_OVERHEAD_PERCENTSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  PercentFieldSetText(Sender, Text);
end;

procedure TfmConfig.cdsDataVAT_PERCENTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmConfig.cdsDataVAT_PERCENTSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  PercentFieldSetText(Sender, Text);
end;

procedure TfmConfig.FormShow(Sender: TObject);
var
  i: Integer;
begin
  inherited;

  for i:= 0 to pcMain.PageCount - 1 do
    pcMain.Pages[i].TabVisible:= (Sign(i) = Ord(not FDocConfig));

  pcMain.ActivePageIndex:= Ord(not FDocConfig);

  Caption:=
    IfThen(FDocConfig, pcMain.Pages[0].Caption, SAppName) + ' ' + Caption;
end;

function TfmConfig.GetTimeOffset(ATimeZoneId: string): Real;
begin
  if (ATimeZoneId = '') then
    Result:= 0
  else
    begin
      if cdsTimeZones.Locate('TIME_ZONE_ID', ATimeZoneId, []) then
        Result:= cdsTimeZonesTIME_ZONE_OFFSET.AsFloat
      else
        raise Exception.Create(SInvalidTimeZone);
    end;
end;

procedure TfmConfig.cdsDataMAX_SALE_INV_VAL_DIFF_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmConfig.cdsDataMAX_SALE_INV_VAL_DIFF_PERCENTSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  PercentFieldSetText(Sender, Text);
end;

procedure TfmConfig.DoApplyUpdates;
begin
  inherited;
  dmMain.RefreshLoginContext;
end;

procedure TfmConfig.cdsDataOPERATION_WORKDAYS_DEV_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmConfig.cdsDataOPERATION_WORKDAYS_DEV_PERCENTSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  PercentFieldSetText(Sender, Text);
end;

procedure TfmConfig.cdsDataSLOW_CONN_SF_WARNING_SIZEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
  kbytes: Integer;
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    begin
      kbytes:= Sender.AsInteger div 1024;
      if DisplayText then
        Text:= FormatFloat((Sender as TFloatField).DisplayFormat, kbytes)
      else
        Text:= FormatFloat((Sender as TFloatField).EditFormat, kbytes);
    end;
end;

procedure TfmConfig.cdsDataSLOW_CONN_SF_WARNING_SIZESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Text = '') then
    Sender.Clear
  else
    Sender.AsInteger:= StrToInt(Text) * 1024;
end;

procedure TfmConfig.cdsDataDOC_ITEM_VIEW_CACHE_SIZESetText(Sender: TField; const Text: String);
begin
  inherited;
  MByteFieldSetText(Sender, Text);
end;

procedure TfmConfig.cdsDataDOC_ITEM_VIEW_CACHE_SIZEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  MByteFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmConfig.FormCreate(Sender: TObject);
begin
  inherited;

  frOccupationRootProduct.FieldNames:= 'OCCUPATION_ROOT_PRODUCT_CODE';
  frOccupationRootProduct.DocButtonVisible:= False;
  frOccupationRootProduct.VIMButtonVisible:= False;

  frDefaultFinOrderExecDept.FieldNames:= 'DEFAULT_FO_EXEC_DEPT_CODE';

  frEmpAvailModifierAuthorizeProfession.FieldNames:= 'EAM_AUTHORIZE_PROFESSION_CODE';
  frEmpAvailModifierAuthorizeProfession.TreeDetailSelection:= tdsInstance;

  frProductionOrganizerProfession.FieldNames:= 'PROD_ORGANIZER_PROFESSION_CODE';
  frProductionOrganizerProfession.TreeDetailSelection:= tdsInstance;

  frManagerOKIDUProfession.FieldNames:= 'MANAGER_OKIDU_PROFESSION_CODE';
  frManagerOKIDUProfession.TreeDetailSelection:= tdsInstance;

  frOKIDUProfesison.FieldNames:= 'OKIDU_PROFESSION_CODE';
  frOKIDUProfesison.TreeDetailSelection:= tdsInstance;

  frSpecialControlProfession.FieldNames:= 'SPEC_CONTROL_PROFESSION_CODE';
  frSpecialControlProfession.TreeDetailSelection:= tdsInstance;

  frEECtrlMainProfession.FieldNames:= 'EE_CTRL_MAIN_PROFESSION_CODE';
  frEECtrlMainProfession.TreeDetailSelection:= tdsInstance;
end;

procedure TfmConfig.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FDatabaseIcons);
end;

procedure TfmConfig.cdsDataBeforePost(DataSet: TDataSet);
var
  NewContextTime: TDateTime;
  NewTimeOffset: Real;
begin
  inherited;

  if (not cdsDataDOCS_REMOTE_ROOT_PATH.IsNull) then
    cdsDataDOC_ITEM_MIRRORS_ROOT_PATH.AsString:=
      StrTrimCharRight(cdsDataDOCS_REMOTE_ROOT_PATH.AsString, '\') + '\Mirror';

  if cdsDataIS_SALE_MFG_QTY_AUTO_LOADED.AsBoolean then
    CheckRequiredField(cdsDataDEFAULT_WORK_PRIORITY_CODE);

  NewTimeOffset:= GetTimeOffset(cdsDataTIME_ZONE_ID.AsString);
  NewContextTime:= ContextNow - FCurrentTimeOffset + NewTimeOffset;
  if (DateOf(ContextNow) <> DateOf(NewContextTime)) then
    if (MessageDlgEx(uClientApp.ReplaceAppParams(STimeZoneChangeConfirmation), mtConfirmation, mbOKCancel, 0) <> mrOk)  then
      Abort;
end;

procedure TfmConfig.HoursInMinutesGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= IntToStr(RealRound(Sender.AsFloat * 60));
end;

procedure TfmConfig.HoursInMinutesSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsFloat:= StrToInt(Text) / 60;
end;

procedure TfmConfig.InitializeDatabaseIconComboBox;
const
  Order: array[TDatabaseIconIndex] of TDatabaseIconIndex =
    (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12);
var
  dbi: TDatabaseIconIndex;
begin
  cbDatabaseIcon.Items.BeginUpdate;
  try
    cbDatabaseIcon.Items.Clear;
    for dbi:= Low(TDatabaseIconIndex) to High(TDatabaseIconIndex) do
      cbDatabaseIcon.Items.Add(IntToStr(Order[dbi]));
  finally
    cbDatabaseIcon.Items.EndUpdate;
  end;

  cbDatabaseIcon.Values.Assign(cbDatabaseIcon.Items);

  FreeAndNil(FDatabaseIcons);
  FDatabaseIcons:= TObjectList<TGraphic>.Create(True);

  for dbi:= Low(TDatabaseIconIndex) to High(TDatabaseIconIndex) do
    FDatabaseIcons.Add(TDatabaseIconLoader.LoadSmallDatabaseIcon<TWICImage>(Order[dbi] + Ord(LoginContext.IsSessionTest) * High(TDatabaseIconIndex)));
end;

procedure TfmConfig.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ADocConfig: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FDocConfig:= ADocConfig;
end;

class function TfmConfig.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ADocConfig: Boolean): Boolean;
var
  f: TfmConfig;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, ADocConfig);
    MessageDlgEx(f.lblWarning.Caption, mtWarning, [mbOK], 0);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

end.

