unit fEmployeesAvailability;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponent, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDateIntervalFrame, Mask,
  PrnDbgeh, dDocClient, uClientTypes, uClientPeriods, JvComponentBase, Menus,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions,
  EhLibVCL, DBAxisGridsEh;

type
  TfmEmployeesAvailability = class(TGridForm)
    tcMain: TTabControl;
    pnlTopMargin: TPanel;
    sepShowCrafts: TToolButton;
    btnShowCrafts: TSpeedButton;
    actShowCrafts: TAction;
    frOccupationDept: TfrDeptFieldEditFrame;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsOCCUPATION_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsINCLUDE_DEPT_DESCENDANTS: TAbmesFloatField;
    pdsGridDataParamsSHIFT_CODE: TAbmesFloatField;
    pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsCRAFT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsCRAFT_CODE: TAbmesFloatField;
    gbDatePeriod: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    gbIncludeDeptDescendants: TGroupBox;
    edtIncludeDeptDescendants: TDBEdit;
    actShowHours: TAction;
    btnShowHours: TSpeedButton;
    tlbDocs: TToolBar;
    btnOccupationDocs: TToolButton;
    lblOccupationDocs: TLabel;
    sepOccupationDocs: TToolButton;
    pdsGridDataParamsIS_EXTERNAL: TAbmesFloatField;
    cdsShifts: TAbmesClientDataSet;
    cdsShiftsSHIFT_CODE: TAbmesFloatField;
    cdsShiftsSHIFT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_SHIFT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParams_END_DATE: TAbmesSQLTimeStampField;
    cdsCraftTypes: TAbmesClientDataSet;
    cdsCrafts: TAbmesClientDataSet;
    cdsCraftTypesCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsCraftTypesCRAFT_TYPE_NAME: TAbmesWideStringField;
    cdsCraftsCRAFT_CODE: TAbmesFloatField;
    cdsCraftsCRAFT_NAME: TAbmesWideStringField;
    cdsCraftsCRAFT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParams_CRAFT_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_CRAFT_NAME: TAbmesWideStringField;
    actEmployeeDateAvailability: TAction;
    cdsEmployeeDateAvailabilityParams: TAbmesClientDataSet;
    cdsEmployeeDateAvailabilityParamsEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeDateAvailabilityParamsTHE_DATE: TAbmesSQLTimeStampField;
    btnEmployeeDateAvailability: TBitBtn;
    actOccupationEmployee: TAction;
    btnOccupationEmployee: TBitBtn;
    actEmployee: TAction;
    btnEmployee: TBitBtn;
    pgdData: TPrintDBGridEh;
    sepShowOfficialTotals: TToolButton;
    btnShowOfficialTotals: TToolButton;
    btnShowRealTotals: TToolButton;
    btnShowRealTotalsByDayKind: TToolButton;
    actShowOfficialTotals: TAction;
    actShowRealTotals: TAction;
    actShowRealTotalsByDayKind: TAction;
    cdsEmpDayAbsenceReasons: TAbmesClientDataSet;
    cdsEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    cdsEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_ABBREV: TAbmesWideStringField;
    cdsEmpDayAbsenceReasons_MAX_DAY_ABSENCE_REASON_CODE: TAggregateField;
    pdsGridDataParams_MONTH_NAME: TAbmesWideStringField;
    pdsGridDataParams_YEAR: TAbmesFloatField;
    pdsGridDataParams_COMPANY_NAME: TAbmesWideStringField;
    actPrintEmployeeMonthAvailability: TAction;
    btnPrintEmployeeMonthAvailability: TToolButton;
    pdsGridDataParams_INCLUDE_DEPT_DESCENDANTS: TAbmesWideStringField;
    sepPrintEmployeeMonthAvailability: TToolButton;
    cdsOccupationEmployee: TAbmesClientDataSet;
    cdsOccupationEmployeeOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsFILTER_EMP_AVAIL_MODIFIERS: TAbmesFloatField;
    pdsGridDataParamsEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_EMP_DAY_ABSENCE_CONFIRMED: TAbmesFloatField;
    pdsGridDataParamsEMP_AVAIL_MODIFIER_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField;
    cdsEmpAvailModifierTypes: TAbmesClientDataSet;
    cdsEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_CODE: TAbmesFloatField;
    cdsEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_NAME: TAbmesWideStringField;
    cdsEmpHourAvailModReasons: TAbmesClientDataSet;
    cdsEmpHourAvailModReasonsEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField;
    cdsEmpHourAvailModReasonsEMP_HOUR_AVAIL_MOD_REASON_NAME: TAbmesWideStringField;
    pdsGridDataParams_EMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField;
    pdsGridDataParams_EMP_AVAIL_MODIFIER_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_EMP_HOUR_AVAIL_MOD_REASON_NAME: TAbmesWideStringField;
    cdsEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField;
    pdsGridDataParamsHAS_UNMATCHED_MOVEMENTS: TAbmesFloatField;
    gbShift: TGroupBox;
    edtShift: TDBEdit;
    actToggleUnapprovedAbsenceHours: TAction;
    btnToggleUnapprovedAbsenceHours: TToolButton;
    cdsRefreshEmployee: TAbmesClientDataSet;
    pdsGridDataParamsOLD_SHIFT_CODE: TAbmesFloatField;
    pdsGridDataParamsNEW_SHIFT_CODE: TAbmesFloatField;
    pdsGridDataParams_OLD_SHIFT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_NEW_SHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsEmployeeFrameAllEmployees: TAbmesClientDataSet;
    actToggleUnapprovedOvertimeHours: TAction;
    actToggleOfftimePresenceHours: TAction;
    sepToggleUnapprovedOvertimeHours: TToolButton;
    btnToggleUnapprovedOvertimeHours: TToolButton;
    btnToggleOfftimePresenceHours: TToolButton;
    sepShowHours: TToolButton;
    tlbToggles: TToolBar;
    procedure actToggleHoursUpdate(Sender: TObject);
    procedure actToggleHoursExecute(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure actShowCraftsExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tcMainChange(Sender: TObject);
    procedure actShowHoursExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataBeforeClose(DataSet: TDataSet);
    procedure btnOccupationDocsClick(Sender: TObject);
    procedure pdsGridDataParamsGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsCRAFT_TYPE_CODEChange(Sender: TField);
    procedure cdsCraftsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure actEmployeeDateAvailabilityUpdate(Sender: TObject);
    procedure actEmployeeDateAvailabilityExecute(Sender: TObject);
    procedure actOccupationEmployeeUpdate(Sender: TObject);
    procedure actOccupationEmployeeExecute(Sender: TObject);
    procedure actEmployeeUpdate(Sender: TObject);
    procedure actEmployeeExecute(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure AvailabilityHoursFieldGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure AvailabilityOfficialHoursFieldGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure TotalHoursFieldGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actShowTotalsExecute(Sender: TObject);
    procedure actPrintEmployeeMonthAvailabilityUpdate(Sender: TObject);
    procedure actPrintEmployeeMonthAvailabilityExecute(Sender: TObject);
    procedure actShowHoursUpdate(Sender: TObject);
  private
    FColumTitlesDateFormat: TDateFormat;
    FOccupationHasDocItemsField: TField;
    FWorkDateField: TField;
    FIsEmployeeAvaialableNowField: TAbmesFloatField;
    FAvailabilityHoursCorrespondingStatusField: array of TField;
    FAvailabilityOfficialHoursCorrespondingStatusField: array of TField;
    FDayAbsenceReasonAbbrevs: array of string;
    FSettingColumns: Boolean;
    FTodayDate: TDateTime;
    procedure SetColumTitlesDateFormat(const Value: TDateFormat);
    procedure SetColumns(Reset: Boolean; ForPrint: Boolean = False);
    procedure SetVisibleCrafts;
    procedure SetVisibleHours(ForPrint: Boolean = False);
    procedure SetVisibleTotals(ForPrint: Boolean = False);
    procedure InitializeFields;
    procedure LoadDayAbsenceReasonAbbrevs;
    procedure UpdateVTitleMargin;
    function DayColumnSelected: Boolean;
    function RepeatableColumnNo(ACol: Integer): Integer;
    function ColumnToDate(ACol: Integer): TDateTime;
    procedure RefreshEmployee;
    procedure SetFrozenCols;

    property ColumTitlesDateFormat: TDateFormat read FColumTitlesDateFormat write SetColumTitlesDateFormat;
  protected
    class function CanUseDocs: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function ShowFilterForm: Boolean; override;
    procedure DoFilterGridData; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True): Boolean;
  end;

implementation

uses
  dMain, StrUtils, JclDateTime, fEmployeesAvailabilityFilter, PrViewEh,
  uDocUtils, uClientUtils, fEmployeeDateAvailability, Printers,
  fOccupationAndEmployee, fEmployee, uColorConsts, rBaseReport, Math,
  uUtils, uPeriods, DateUtils, fBaseForm, rEmployeeMonthAvailability,
  uEmployeeAvailability, uClientDateTime, fEditForm, PrvFrmEh,
  uScalingUtils, uAbmesDBGridHelpers;

{$R *.dfm}

resourcestring
  SNoOccupationEmployee = 'Няма назначение за посочения ден!';
  SOccupationDeptOrEmployeeRequired = 'Трябва да зададете ''%s'' или ''%s''';
  SAssignedEmployeesInDept = 'Служители на Длъжности от избрани ОрЧ БЕЗ структурни части';
  SAssignedEmployeesInDeptAndDescendants = 'Служители на Длъжности от избрани ОрЧ СЪС структурни части';
  SNotAssignedEmployees = 'Служители НЕназначени на Длъжност';
  SMaxMonthsAllowed = 'Максималният допустим Времеви Интервал е %d %s!';
  SMonth = 'месец';
  SMonths = 'месеца';

  SOccupationDeptIdentifierCaption = '  ОрЧ      на    Дл. Назн.';
  SOccupationNameCaption = 'Длъжност|Наименование';
  SOccupationLevelCaption = 'Длъжност|Орг ниво';
  SShiftAbbrevCaption = 'Длъжност|Орг. См.';
  SCraftTypeNameCaption = 'Професия|Класификационна Група';
  SCraftNameCaption = 'Професия|Професия';
  SEmployeeNoCaption = 'Служител|Код';
  SEmployeeNameCaption = 'Служител|Име';
  STotalPresenceDaysCaption = 'Явявания на работа (дни)';
  STotalAbsenceDayCaption = 'Неявявания на работа (дни)|%s';
  STotalDaysOffCaption = 'Неявявания на работа (дни)|Н';
  STotalTotalDaysCaption = 'Общо човеко дни';
  STotalPresenceHoursCaption = 'Присъствени човеко-часове|Всичко';
  STotalApprovedOvertimeHoursCaption = 'Присъствени човеко-часове|Извън- редни';
  STotalUnapprovedOvertimeHoursCaption = 'Присъствени човеко-часове|Плж.откл. (одобр.)';
  STotalOfftimePresenceHoursCaption = 'Присъствени човеко-часове|Плж.откл. (неодобр.)';
  STotalUnapprovedAbsenceHoursCaption = 'Присъствени човеко-часове|Отриц. откл.';
  STotalWCaptionSuffix = '|Р';
  STotalOCaptionSuffix = '|П';

  SNegativeDisciplineRatingCaption = 'Дисципл. статус|Отриц.';
  SPositiveDisciplineRatingCaption = 'Дисципл. статус|Полож.';
  SBaseSalaryCaption = 'Базова брутна заплата|Стойност /BGL/';
  SBaseSalaryDateUnitNameCaption = 'Базова брутна заплата|Времева стъпка';
  SSalaryCaption = 'Основна заплата|Стойност /BGL/';
  SSalaryDateUnitNameCaption = 'Основна заплата|Времева стъпка';
  SMinSalaryRatioCoefCaption = 'КОрЕф|От';
  SMaxSalaryRatioCoefCaption = 'КОрЕф|До';

  plblTitle = 'Регистър на Присъствия и Отсъствия на Служители';

type
  TColumnDesc = record
    FieldName: string;
    Caption: string;
    Width: Integer;
    Alignment: TAlignment;
    VisibleOnTab: set of Byte;
  end;

type
  TColumnTitle = record
    Key: string;
    Caption: string;
  end;

const
  OccupationShowFieldNames: array[1..3] of string = ('OCCUPATION_NAME', 'OCCUPATION_LEVEL', 'SHIFT_ABBREV');
  CraftShowFieldNames: array[1..2] of string = ('CRAFT_TYPE_NAME', 'CRAFT_NAME');
  IsOfficialWorkdayFieldName = 'IS_OFFICIAL_WORKDAY_';
  AvailabilityStatusFieldName = 'AVAILABILITY_STATUS_';
  AvailabilityHoursFieldName = 'AVAILABILITY_HOURS_';
  AvailabilityOfficialHoursFieldName = 'AVAILABILITY_OFFICIAL_HOURS_';
  OfficialAbsenceDaysFieldName = 'OFFICIAL_ABSENCE_DAYS_';
  RealTAbsenceDaysFieldName = 'REAL_T_ABSENCE_DAYS_';
  RealWAbsenceDaysFieldName = 'REAL_W_ABSENCE_DAYS_';
  RealOAbsenceDaysFieldName = 'REAL_O_ABSENCE_DAYS_';

  OccupationDeptIdentifierCaption = '#SOccupationDeptIdentifierCaption#';
  OccupationNameCaption = '#SOccupationNameCaption#';
  OccupationLevelCaption = '#SOccupationLevelCaption#';
  ShiftAbbrevCaption = '#SShiftAbbrevCaption#';
  CraftTypeNameCaption = '#SCraftTypeNameCaption#';
  CraftNameCaption = '#SCraftNameCaption#';
  EmployeeNoCaption = '#SEmployeeNoCaption#';
  EmployeeNameCaption = '#SEmployeeNameCaption#';
  TotalPresenceDaysCaption = '#STotalPresenceDaysCaption#';
  TotalAbsenceDayCaption = '#STotalAbsenceDayCaption#';
  TotalDaysOffCaption = '#STotalDaysOffCaption#';
  TotalTotalDaysCaption = '#STotalTotalDaysCaption#';
  TotalPresenceHoursCaption = '#STotalPresenceHoursCaption#';
  TotalApprovedOvertimeHoursCaption = '#STotalApprovedOvertimeHoursCaption#';
  TotalUnapprovedOvertimeHoursCaption = '#STotalUnapprovedOvertimeHoursCaption#';
  TotalOfftimePresenceHoursCaption = '#STotalOfftimePresenceHoursCaption#';
  TotalUnapprovedAbsenceHoursCaption = '#STotalUnapprovedAbsenceHoursCaption#';
  TotalWCaptionSuffix = '#STotalWCaptionSuffix#';
  TotalOCaptionSuffix = '#STotalOCaptionSuffix#';

  ColumnTitles: array[1..19] of TColumnTitle = (
    (Key: OccupationDeptIdentifierCaption; Caption: SOccupationDeptIdentifierCaption),
    (Key: OccupationNameCaption; Caption: SOccupationNameCaption),
    (Key: OccupationLevelCaption; Caption: SOccupationLevelCaption),
    (Key: ShiftAbbrevCaption; Caption: SShiftAbbrevCaption),
    (Key: CraftTypeNameCaption; Caption: SCraftTypeNameCaption),
    (Key: CraftNameCaption; Caption: SCraftNameCaption),
    (Key: EmployeeNoCaption; Caption: SEmployeeNoCaption),
    (Key: EmployeeNameCaption; Caption: SEmployeeNameCaption),
    (Key: TotalPresenceDaysCaption; Caption: STotalPresenceDaysCaption),
    (Key: TotalAbsenceDayCaption; Caption: STotalAbsenceDayCaption),
    (Key: TotalDaysOffCaption; Caption: STotalDaysOffCaption),
    (Key: TotalTotalDaysCaption; Caption: STotalTotalDaysCaption),
    (Key: TotalPresenceHoursCaption; Caption: STotalPresenceHoursCaption),
    (Key: TotalApprovedOvertimeHoursCaption; Caption: STotalApprovedOvertimeHoursCaption),
    (Key: TotalUnapprovedOvertimeHoursCaption; Caption: STotalUnapprovedOvertimeHoursCaption),
    (Key: TotalOfftimePresenceHoursCaption; Caption: STotalOfftimePresenceHoursCaption),
    (Key: TotalUnapprovedAbsenceHoursCaption; Caption: STotalUnapprovedAbsenceHoursCaption),
    (Key: TotalWCaptionSuffix; Caption: STotalWCaptionSuffix),
    (Key: TotalOCaptionSuffix; Caption: STotalOCaptionSuffix)
  );

const
  DayWidth = 23;
  TotalsMiscColumnWidth = 27;
  TotalsDayColumnWidth = 19;
  FakeDisciplineTabIndex = 8;
  FakeSalaryTabIndex = 9;

  ColumnDescs: array[1..63] of TColumnDesc =
    ( (FieldName: 'OCCUPATION_CODE'; Caption: ''; Width: 10; Alignment: taLeftJustify; VisibleOnTab: []),
      (FieldName: 'OCCUPATION_DEPT_IDENTIFIER'; Caption: OccupationDeptIdentifierCaption; Width: 40; Alignment: taLeftJustify; VisibleOnTab: [0, 1]),
      (FieldName: 'OCCUPATION_NAME'; Caption: OccupationNameCaption; Width: 137; Alignment: taLeftJustify; VisibleOnTab: [0, 1]),
      (FieldName: 'OCCUPATION_LEVEL'; Caption: OccupationLevelCaption; Width: 28; Alignment: taCenter; VisibleOnTab: [0, 1]),
      (FieldName: 'OCCUPATION_DOC_BRANCH_CODE'; Caption: ShiftAbbrevCaption; Width: 10; Alignment: taLeftJustify; VisibleOnTab: []),
      (FieldName: 'OCCUPATION_DOC_CODE'; Caption: ShiftAbbrevCaption; Width: 10; Alignment: taLeftJustify; VisibleOnTab: []),
      (FieldName: 'OCCUPATION_HAS_DOC_ITEMS'; Caption: ShiftAbbrevCaption; Width: 10; Alignment: taLeftJustify; VisibleOnTab: []),
      (FieldName: 'SHIFT_ABBREV'; Caption: ShiftAbbrevCaption; Width: 28; Alignment: taCenter; VisibleOnTab: [0, 1]),
      (FieldName: 'CRAFT_TYPE_NAME'; Caption: CraftTypeNameCaption; Width: 97; Alignment: taLeftJustify; VisibleOnTab: [0, 1]),
      (FieldName: 'CRAFT_NAME'; Caption: CraftNameCaption; Width: 97; Alignment: taLeftJustify; VisibleOnTab: [0, 1]),
      (FieldName: 'EMPLOYEE_CODE'; Caption: EmployeeNoCaption; Width: 50; Alignment: taRightJustify; VisibleOnTab: []),
      (FieldName: 'EMPLOYEE_NO'; Caption: EmployeeNoCaption; Width: 50; Alignment: taRightJustify; VisibleOnTab: [0, 1]),
      (FieldName: 'EMPLOYEE_NAME'; Caption: EmployeeNameCaption; Width: 168; Alignment: taLeftJustify; VisibleOnTab: [0, 1]),
      (FieldName: 'WORK_DATE'; Caption: ''; Width: 10; Alignment: taLeftJustify; VisibleOnTab: []),
      (FieldName: 'IS_EMPLOYEE_AVAILABLE_NOW'; Caption: ''; Width: 10; Alignment: taLeftJustify; VisibleOnTab: []),
      (FieldName: 'NEGATIVE_DISCIPLINE_RATING'; Caption: SNegativeDisciplineRatingCaption; Width: 50; Alignment: taRightJustify; VisibleOnTab: [FakeDisciplineTabIndex]),
      (FieldName: 'POSITIVE_DISCIPLINE_RATING'; Caption: SPositiveDisciplineRatingCaption; Width: 50; Alignment: taRightJustify; VisibleOnTab: [FakeDisciplineTabIndex]),
      (FieldName: 'BASE_SALARY'; Caption: SBaseSalaryCaption; Width: 50; Alignment: taRightJustify; VisibleOnTab: [FakeSalaryTabIndex]),
      (FieldName: 'BASE_SALARY_DATE_UNIT_NAME'; Caption: SBaseSalaryDateUnitNameCaption; Width: 80; Alignment: taLeftJustify; VisibleOnTab: [FakeSalaryTabIndex]),
      (FieldName: 'SALARY'; Caption: SSalaryCaption; Width: 50; Alignment: taRightJustify; VisibleOnTab: [FakeSalaryTabIndex]),
      (FieldName: 'SALARY_DATE_UNIT_NAME'; Caption: SSalaryDateUnitNameCaption; Width: 80; Alignment: taLeftJustify; VisibleOnTab: [FakeSalaryTabIndex]),
      (FieldName: 'MIN_SALARY_RATIO_COEF'; Caption: SMinSalaryRatioCoefCaption; Width: 50; Alignment: taRightJustify; VisibleOnTab: [FakeSalaryTabIndex]),
      (FieldName: 'MAX_SALARY_RATIO_COEF'; Caption: SMaxSalaryRatioCoefCaption; Width: 50; Alignment: taRightJustify; VisibleOnTab: [FakeSalaryTabIndex]),
      (FieldName: IsOfficialWorkdayFieldName; Caption: '%d|%d'; Width: DayWidth; Alignment: taLeftJustify; VisibleOnTab: []),
      (FieldName: AvailabilityStatusFieldName; Caption: '%d|%d'; Width: DayWidth; Alignment: taLeftJustify; VisibleOnTab: [0]),
      (FieldName: AvailabilityHoursFieldName; Caption: '%d|%d'; Width: DayWidth; Alignment: taLeftJustify; VisibleOnTab: [0]),
      (FieldName: AvailabilityOfficialHoursFieldName; Caption: '%d|%d'; Width: DayWidth; Alignment: taLeftJustify; VisibleOnTab: [0]),

      (FieldName: 'OFFICIAL_PRESENCE_DAYS'; Caption: TotalPresenceDaysCaption; Width: 2*TotalsMiscColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: OfficialAbsenceDaysFieldName; Caption: TotalAbsenceDayCaption; Width: 2*TotalsDayColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'OFFICIAL_DAYS_OFF'; Caption: TotalDaysOffCaption; Width: 2*TotalsDayColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'OFFICIAL_TOTAL_DAYS'; Caption: TotalTotalDaysCaption; Width: 2*TotalsMiscColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'OFFICIAL_PRESENCE_HOURS'; Caption: TotalPresenceHoursCaption; Width: 2*TotalsMiscColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'OFFICIAL_APP_OVERTIME_HOURS'; Caption: TotalApprovedOvertimeHoursCaption; Width: 2*TotalsMiscColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'OFFICIAL_UNAPP_OVERTIME_HOURS'; Caption: TotalUnapprovedOvertimeHoursCaption; Width: 2*TotalsMiscColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'OFFICIAL_OFFTIME_PRESENCE_HRS'; Caption: TotalOfftimePresenceHoursCaption; Width: 2*TotalsMiscColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'OFFICIAL_UNAPP_ABSENCE_HOURS'; Caption: TotalUnapprovedAbsenceHoursCaption; Width: 2*TotalsMiscColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),

      (FieldName: 'REAL_T_PRESENCE_DAYS'; Caption: TotalPresenceDaysCaption; Width: 2*TotalsMiscColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: RealTAbsenceDaysFieldName; Caption: TotalAbsenceDayCaption; Width: 2*TotalsDayColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_T_DAYS_OFF'; Caption: TotalDaysOffCaption; Width: 2*TotalsDayColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_T_TOTAL_DAYS'; Caption: TotalTotalDaysCaption; Width: 2*TotalsMiscColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_T_PRESENCE_HOURS'; Caption: TotalPresenceHoursCaption; Width: 2*TotalsMiscColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_T_APP_OVERTIME_HOURS'; Caption: TotalApprovedOvertimeHoursCaption; Width: 2*TotalsMiscColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_T_UNAPP_OVERTIME_HOURS'; Caption: TotalUnapprovedOvertimeHoursCaption; Width: 2*TotalsMiscColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_T_OFFTIME_PRESENCE_HRS'; Caption: TotalOfftimePresenceHoursCaption; Width: 2*TotalsMiscColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_T_UNAPP_ABSENCE_HOURS'; Caption: TotalUnapprovedAbsenceHoursCaption; Width: 2*TotalsMiscColumnWidth+1; Alignment: taRightJustify; VisibleOnTab: [1]),

      (FieldName: 'REAL_W_PRESENCE_DAYS'; Caption: TotalPresenceDaysCaption + TotalWCaptionSuffix; Width: TotalsMiscColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_O_PRESENCE_DAYS'; Caption: TotalPresenceDaysCaption + TotalOCaptionSuffix; Width: TotalsMiscColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: RealWAbsenceDaysFieldName; Caption: TotalAbsenceDayCaption + TotalWCaptionSuffix; Width: TotalsDayColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: RealOAbsenceDaysFieldName; Caption: TotalAbsenceDayCaption + TotalOCaptionSuffix; Width: TotalsDayColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_W_DAYS_OFF'; Caption: TotalDaysOffCaption + TotalWCaptionSuffix; Width: TotalsDayColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_O_DAYS_OFF'; Caption: TotalDaysOffCaption + TotalOCaptionSuffix; Width: TotalsDayColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_W_TOTAL_DAYS'; Caption: TotalTotalDaysCaption + TotalWCaptionSuffix; Width: TotalsMiscColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_O_TOTAL_DAYS'; Caption: TotalTotalDaysCaption + TotalOCaptionSuffix; Width: TotalsMiscColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_W_PRESENCE_HOURS'; Caption: TotalPresenceHoursCaption + TotalWCaptionSuffix; Width: TotalsMiscColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_O_PRESENCE_HOURS'; Caption: TotalPresenceHoursCaption + TotalOCaptionSuffix; Width: TotalsMiscColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_W_APP_OVERTIME_HOURS'; Caption: TotalApprovedOvertimeHoursCaption + TotalWCaptionSuffix; Width: TotalsMiscColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_O_APP_OVERTIME_HOURS'; Caption: TotalApprovedOvertimeHoursCaption + TotalOCaptionSuffix; Width: TotalsMiscColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_W_UNAPP_OVERTIME_HOURS'; Caption: TotalUnapprovedOvertimeHoursCaption + TotalWCaptionSuffix; Width: TotalsMiscColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_O_UNAPP_OVERTIME_HOURS'; Caption: TotalUnapprovedOvertimeHoursCaption + TotalOCaptionSuffix; Width: TotalsMiscColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_W_OFFTIME_PRESENCE_HRS'; Caption: TotalOfftimePresenceHoursCaption + TotalWCaptionSuffix; Width: TotalsMiscColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_O_OFFTIME_PRESENCE_HRS'; Caption: TotalOfftimePresenceHoursCaption + TotalOCaptionSuffix; Width: TotalsMiscColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_W_UNAPP_ABSENCE_HOURS'; Caption: TotalUnapprovedAbsenceHoursCaption + TotalWCaptionSuffix; Width: TotalsMiscColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1]),
      (FieldName: 'REAL_O_UNAPP_ABSENCE_HOURS'; Caption: TotalUnapprovedAbsenceHoursCaption + TotalOCaptionSuffix; Width: TotalsMiscColumnWidth; Alignment: taRightJustify; VisibleOnTab: [1])
    );

function GetColumnDesc(AFieldName: string): TColumnDesc;
var
  i: Integer;
begin
  for i:= High(ColumnDescs) downto Low(ColumnDescs) do
    if AnsiStartsStr(ColumnDescs[i].FieldName, AFieldName) then
      begin
        Result:= ColumnDescs[i];
        Exit;
      end;
  Assert(False, Format('Column description for field %s not found!', [AFieldName]))
end;

procedure TfmEmployeesAvailability.SetColumns(Reset: Boolean; ForPrint: Boolean);

  function NormalizeColumnCaption(const ACaption: string): string;

    function KeyCaption(AKey: string): string;
    var
      ColumnTitle: TColumnTitle;
    begin
      Result:= '';
      for ColumnTitle in ColumnTitles do
        if (ColumnTitle.Key = AKey) then
          begin
            Result:= ColumnTitle.Caption;
            Exit;
          end;
    end;  { KeyTitle }

  const
    DelimiterChar = '#';
  var
    i: Integer;
    key: string;
    InKey: Boolean;
  begin
    Result:= '';
    InKey:= False;
    for i:= 1 to Length(ACaption) do
      if InKey then
        begin
          key:= key + ACaption[i];
          if (ACaption[i] = DelimiterChar) then
            begin
              InKey:= False;
              Result:= Result + KeyCaption(key);
            end;
        end
      else
        begin
          if (ACaption[i] = DelimiterChar) then
            begin
              InKey:= True;
              key:= DelimiterChar;
            end
          else
            Result:= Result + ACaption[i];
        end;
  end;  { NormalizeColumnCaption }

var
  BeginDate: TDateTime;
  i: Integer;
  Column: TColumnEh;
  ColumnDesc: TColumnDesc;
  RepeatableColumnNo: Integer;
  TheDate: TDateTime;
  PeriodNo, DayNo: Integer;
  ColumnCaption: string;
  SaveDataSource: TDataSource;
begin
  FSettingColumns:= True;
  try
    BeginDate:= cdsGridData.Params.ParamByName('BEGIN_DATE').AsDateTime;

    grdData.DataSource.DataSet.DisableControls;
    try
      SaveDataSource:= grdData.DataSource;
      grdData.DataSource:= nil;
      try
        grdData.Columns.BeginUpdate;
        try
          if Reset then
            begin
              grdData.Columns.Clear;
              for i:= 0 to cdsGridData.FieldCount - 1 do
                with GetColumnDesc(cdsGridData.Fields[i].FieldName) do
                  if (VisibleOnTab <> []) then
                    grdData.Columns.Add.FieldName:= cdsGridData.Fields[i].FieldName;
            end;  { if }

          for i:= 0 to grdData.Columns.Count - 1 do
            begin
              Column:= grdData.Columns[i];
              ColumnDesc:= GetColumnDesc(Column.FieldName);

              RepeatableColumnNo:=
                StrToIntDef(RightStr(Column.FieldName, Length(Column.FieldName) - Length(ColumnDesc.FieldName)), 0);

              ColumnCaption:= '';

              if (RepeatableColumnNo > 0) and (0 in ColumnDesc.VisibleOnTab) then
                begin
                  TheDate:= BeginDate + RepeatableColumnNo - 1;

                  if (dmMain.DateFormat = diWeek) then
                    begin
                      PeriodNo:= ISOWeekNumber(TheDate);
                      DayNo:= ISODayOfWeek(TheDate);
                    end
                  else  { if }
                    begin
                      PeriodNo:= MonthOfDate(TheDate);
                      DayNo:= DayOfDate(TheDate);
                    end;  { if }

                  ColumnCaption:= Format(NormalizeColumnCaption(ColumnDesc.Caption), [PeriodNo, DayNo]);

                  Column.Tag:= Trunc(TheDate);
                end;

              if (RepeatableColumnNo > 0) and (1 in ColumnDesc.VisibleOnTab) then
                ColumnCaption:= Format(NormalizeColumnCaption(ColumnDesc.Caption), [FDayAbsenceReasonAbbrevs[RepeatableColumnNo]]);

              if (ColumnCaption = '') then
                ColumnCaption:= NormalizeColumnCaption(ColumnDesc.Caption);

              Column.Visible:=
                (ForPrint and
                 (not (FakeDisciplineTabIndex in ColumnDesc.VisibleOnTab)) and
                 (not (FakeSalaryTabIndex in ColumnDesc.VisibleOnTab))) or
                (tcMain.TabIndex in ColumnDesc.VisibleOnTab);
              Column.Title.Caption:= ColumnCaption;
              Column.Width:= ColumnDesc.Width;
              Column.Alignment:= ColumnDesc.Alignment;

              Column.AutoFitColWidth:= False;
            end;

          if (cdsGridData.OpenCount > 1) then  // purvia put ostaviame na obshtia mehanizum da rescale-ne shirinite
            for Column in grdData.Columns do
              Column.Width:= ScalePixels(Column.Width);

          UpdateVTitleMargin;

          if not ForPrint then
            SetVisibleCrafts;
          SetVisibleHours(ForPrint);
          SetVisibleTotals(ForPrint);
        finally
          grdData.Columns.EndUpdate;
        end;  { try }
      finally
        grdData.DataSource:= SaveDataSource;
      end;  { try }
    finally
      grdData.DataSource.DataSet.EnableControls;
    end;  { try }

    SetFrozenCols;
  finally
    FSettingColumns:= False;
  end;  { try }

  if Reset then
    InitializeAbmesDBGrid(grdData);
end;

procedure TfmEmployeesAvailability.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FTodayDate:= ContextDate;
  InitializeFields;
  SetColumns(True);
end;

procedure TfmEmployeesAvailability.actShowCraftsExecute(Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    Checked:= not Checked;
  SetVisibleCrafts;
  SetFrozenCols;
end;

procedure TfmEmployeesAvailability.SetVisibleCrafts;
const
  ColOffset: array[Boolean] of Integer = (1, -1);
var
  i, k: Integer;
  LeftCol, Col: Integer;
  SaveDataSource: TDataSource;
begin
  cdsGridData.DisableControls;
  try
    LeftCol:= grdData.LeftCol;
    Col:= grdData.Col;

    SaveDataSource:= grdData.DataSource;
    grdData.DataSource:= nil;
    try
      grdData.Columns.BeginUpdate;
      try
        for i:= 0 to grdData.Columns.Count - 1 do
          begin
            for k:= Low(OccupationShowFieldNames) to High(OccupationShowFieldNames) do
              if (grdData.Columns[i].FieldName = OccupationShowFieldNames[k]) then
                grdData.Columns[i].Visible:= not actShowCrafts.Checked;

            for k:= Low(CraftShowFieldNames) to High(CraftShowFieldNames) do
              if (grdData.Columns[i].FieldName = CraftShowFieldNames[k]) then
                grdData.Columns[i].Visible:= actShowCrafts.Checked;
          end;

        UpdateVTitleMargin;
      finally
        grdData.Columns.EndUpdate;
      end;  { try }
    finally
      grdData.DataSource:= SaveDataSource;
    end;  { try }

    if not FSettingColumns then
      begin
        grdData.LeftCol:= Max(grdData.LeftCol, LeftCol);
        grdData.Col:= Col;
      end;
  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

procedure TfmEmployeesAvailability.SetVisibleHours(ForPrint: Boolean);
const
  ColOffset: array[Boolean] of Integer = (-1, 1);
var
  i: Integer;
  LeftCol, Col: Integer;
  SaveDataSource: TDataSource;
  v: Boolean;
begin
  cdsGridData.DisableControls;
  try
    LeftCol:= grdData.LeftCol;
    Col:= grdData.Col;

    SaveDataSource:= grdData.DataSource;
    grdData.DataSource:= nil;
    try
      grdData.Columns.BeginUpdate;
      try
        for i:= 0 to grdData.Columns.Count - 1 do
          begin
            v:= grdData.Columns[i].Visible;
            
            if AnsiStartsStr(AvailabilityStatusFieldName, grdData.Columns[i].FieldName) then
              v:= not actShowHours.Checked;

            if AnsiStartsStr(AvailabilityHoursFieldName, grdData.Columns[i].FieldName) then
              v:= actShowHours.Checked and not actShowOfficialTotals.Checked;

            if AnsiStartsStr(AvailabilityOfficialHoursFieldName, grdData.Columns[i].FieldName) then
              v:= actShowHours.Checked and actShowOfficialTotals.Checked;

            v:= v and (ForPrint or (tcMain.TabIndex in GetColumnDesc(grdData.Columns[i].FieldName).VisibleOnTab));

            grdData.Columns[i].Visible:= v;
          end;

        UpdateVTitleMargin;
      finally
        grdData.Columns.EndUpdate;
      end;  { try }
    finally
      grdData.DataSource:= SaveDataSource;
    end;  { try }

    if (tcMain.TabIndex = 0) and (not FSettingColumns) then
      begin
        if not grdData.Columns[Col-1].Visible then
          begin
            if AnsiStartsStr(AvailabilityStatusFieldName, grdData.Columns[Col-1].FieldName) then
              grdData.Col:= Col + 1 + Ord(actShowOfficialTotals.Checked)
            else
              begin
                if AnsiStartsStr(AvailabilityHoursFieldName, grdData.Columns[Col-1].FieldName) then
                  grdData.Col:= Col + ColOffset[actShowHours.Checked]
                else
                  grdData.Col:= Col - 1 - Ord(not actShowHours.Checked)
              end;
          end;

        if (grdData.Columns[LeftCol-1].Tag > 0) then   // date column
          grdData.LeftCol:= Max(grdData.LeftCol, LeftCol + (grdData.Col - Col));
      end;
  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

procedure TfmEmployeesAvailability.SetVisibleTotals(ForPrint: Boolean);

  function FindMatchingVisibleColumn(ACol: Integer): TColumnEh;
  var
    TotalKind, tk: TTotalKind;
    fn: string;
    i: Integer;
  begin
    Result:= nil;

    TotalKind:= tkNone;
    for tk:= Succ(Low(TotalFieldNamePreffixes)) to High(TotalFieldNamePreffixes) do
      if AnsiStartsStr(TotalFieldNamePreffixes[tk], grdData.Columns[ACol-1].FieldName) then
        TotalKind:= tk;

    if (TotalKind <> tkNone) then
      begin
        for tk:= Succ(Low(TotalFieldNamePreffixes)) to High(TotalFieldNamePreffixes) do
          begin
            fn:= StringReplace(grdData.Columns[ACol-1].FieldName, TotalFieldNamePreffixes[TotalKind], TotalFieldNamePreffixes[tk], []);

            for i:= 0 to grdData.Columns.Count - 1 do
              if (grdData.Columns[i].FieldName = fn) and grdData.Columns[i].Visible then
                begin
                  Result:= grdData.Columns[i];
                  Exit;
                end;
          end;

        if AnsiEndsStr('_HOURS', grdData.Columns[ACol-1].FieldName) or
           AnsiEndsStr('_HRS', grdData.Columns[ACol-1].FieldName) then
          for i:= grdData.Columns.Count - 1 downto 0 do
            if (AnsiEndsStr('_HOURS', grdData.Columns[i].FieldName) or
                AnsiEndsStr('_HRS', grdData.Columns[i].FieldName)) and
               grdData.Columns[i].Visible then
              begin
                if (i > 0) and
                   grdData.Columns[i-1].Visible and
                   (Pos('_O_', grdData.Columns[ACol-1].FieldName) = 0) and
                   (Pos('_O_', grdData.Columns[i].FieldName) > 0) and
                   (grdData.Columns[i-1].FieldName = StringReplace(grdData.Columns[i].FieldName, '_O_', '_W_', [])) then
                  Result:= grdData.Columns[i-1]
                else
                  Result:= grdData.Columns[i];

                Exit;
              end;
      end;
  end;

var
  i: Integer;
  LeftCol, Col: Integer;
  MatchingVisibleColumn: TColumnEh;
  SaveDataSource: TDataSource;
  v: Boolean;
  TotalFieldNamePreffix: string;
begin
  cdsGridData.DisableControls;
  try
    LeftCol:= grdData.LeftCol;
    Col:= grdData.Col;

    SaveDataSource:= grdData.DataSource;
    grdData.DataSource:= nil;
    try
      grdData.Columns.BeginUpdate;
      try
        for i:= 0 to grdData.Columns.Count - 1 do
          begin
            v:= grdData.Columns[i].Visible;

            if AnsiStartsStr(OfficialTotalFieldNamePrefix, grdData.Columns[i].FieldName) then
              v:= actShowOfficialTotals.Checked;

            if AnsiStartsStr(RealTTotalFieldNamePrefix, grdData.Columns[i].FieldName) then
              v:= actShowRealTotals.Checked;

            if AnsiStartsStr(RealWTotalFieldNamePrefix, grdData.Columns[i].FieldName) then
              v:= actShowRealTotalsByDayKind.Checked;

            if AnsiStartsStr(RealOTotalFieldNamePrefix, grdData.Columns[i].FieldName) then
              v:= actShowRealTotalsByDayKind.Checked;

            for TotalFieldNamePreffix in TotalFieldNamePreffixes do
              begin
                if (grdData.Columns[i].FieldName = TotalFieldNamePreffix + ApprovedOvertimeHoursAfterSuffix) then
                  v:= v and actShowOfficialTotals.Checked;

                if (grdData.Columns[i].FieldName = TotalFieldNamePreffix + UnapprovedOvertimeHoursAfterSuffix) then
                  v:= v and (not actShowOfficialTotals.Checked) and
                      (actToggleUnapprovedOvertimeHours.Checked or ForPrint);

                if (grdData.Columns[i].FieldName = TotalFieldNamePreffix + OfftimePresenceHoursAfterSuffix) then
                  v:= v and (not actShowOfficialTotals.Checked) and
                      (actToggleOfftimePresenceHours.Checked or ForPrint);

                if (grdData.Columns[i].FieldName = TotalFieldNamePreffix + UnapprovedAbsenceHoursAfterSuffix) then
                  v:= v and (not actShowOfficialTotals.Checked) and
                      (actToggleUnapprovedAbsenceHours.Checked or ForPrint);
              end;

            v:= v and (ForPrint or (tcMain.TabIndex in GetColumnDesc(grdData.Columns[i].FieldName).VisibleOnTab));

            grdData.Columns[i].Visible:= v;
          end;

        UpdateVTitleMargin;
      finally
        grdData.Columns.EndUpdate;
      end;  { try }
    finally
      grdData.DataSource:= SaveDataSource;
    end;  { try }

    if (tcMain.TabIndex = 1) and (not FSettingColumns) then
      begin
        if not grdData.Columns[Col-1].Visible then
          begin
            MatchingVisibleColumn:= FindMatchingVisibleColumn(Col);
            if Assigned(MatchingVisibleColumn) and MatchingVisibleColumn.Visible then
              grdData.Col:= MatchingVisibleColumn.Index + 1;
          end;

        if not grdData.Columns[LeftCol-1].Visible then
          begin
            MatchingVisibleColumn:= FindMatchingVisibleColumn(LeftCol);
            if Assigned(MatchingVisibleColumn) and MatchingVisibleColumn.Visible then
              grdData.LeftCol:= MatchingVisibleColumn.Index + 1;
          end
        else
          grdData.LeftCol:= LeftCol;
      end;
  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

procedure TfmEmployeesAvailability.FormCreate(Sender: TObject);
var
  NowDate: TDateTime;
begin
  inherited;

  grdData.Anchors:= [akLeft, akTop, akRight, akBottom];  // genialno Delphi

  FilterFormClass:= TfmEmployeesAvailabilityFilter;
  ReportClass:= TBaseReport;  // za da se enable-ne pechata

  FColumTitlesDateFormat:= dmMain.DateFormat;

  frOccupationDept.FieldNames:= 'OCCUPATION_DEPT_CODE';
  frOccupationDept.ShowAllWhenEmpty:= True;
  frDateInterval.FieldNames:= '_BEGIN_DATE; _END_DATE';

  NowDate:= ContextDate;
  cdsGridData.Params.ParamByName('BEGIN_DATE').AsDateTime:= NowDate;
  cdsGridData.Params.ParamByName('END_DATE').AsDateTime:= NowDate;

  cdsEmployeeFrameAllEmployees.Open;  // otvaria se tuk, zaradi filter-a
  MaximizeStyle:= msStandard;
end;

procedure TfmEmployeesAvailability.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frOccupationDept) or
     (AFrame = frDateInterval) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmEmployeesAvailability.tcMainChange(Sender: TObject);
begin
  inherited;
  SetColumns(False);
end;

procedure TfmEmployeesAvailability.actShowHoursExecute(Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    Checked:= not Checked;
  SetVisibleHours;
end;

procedure TfmEmployeesAvailability.actShowHoursUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (tcMain.TabIndex = 0);
end;

procedure TfmEmployeesAvailability.actFormUpdate(Sender: TObject);
begin
  inherited;

  if Assigned(FOccupationHasDocItemsField) then
    btnOccupationDocs.ImageIndex:= FOccupationHasDocItemsField.AsInteger;

  ColumTitlesDateFormat:= dmMain.DateFormat;

  grdData.HorzScrollBar.Visible:= (tcMain.TabIndex = 0);
end;

procedure TfmEmployeesAvailability.cdsGridDataBeforeClose(
  DataSet: TDataSet);
begin
  inherited;
  FOccupationHasDocItemsField:= nil;
end;

procedure TfmEmployeesAvailability.btnOccupationDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TControl), dotOccupation,
    cdsGridData.FieldByName('OCCUPATION_DOC_BRANCH_CODE'), cdsGridData.FieldByName('OCCUPATION_DOC_CODE'));
end;

class function TfmEmployeesAvailability.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmEmployeesAvailability.OpenDataSets;
begin
  LoadDayAbsenceReasonAbbrevs;
  cdsEmpDayAbsenceReasons.Open;
  cdsEmpAvailModifierTypes.Open;
  cdsEmpHourAvailModReasons.Open;
  inherited;
  cdsShifts.Open;
  cdsCraftTypes.Open;
  cdsCrafts.Open;
end;

procedure TfmEmployeesAvailability.CloseDataSets;
begin
  cdsCrafts.Close;
  cdsCraftTypes.Close;
  cdsShifts.Close;
  inherited;
  cdsEmployeeFrameAllEmployees.Close;
  cdsEmpHourAvailModReasons.Close;
  cdsEmpAvailModifierTypes.Close;
  cdsEmpDayAbsenceReasons.Close;
end;

procedure TfmEmployeesAvailability.pdsGridDataParamsGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailability.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
const
  IncludeDeptDescendants: array[0..2] of string = (
    SAssignedEmployeesInDept, SAssignedEmployeesInDeptAndDescendants, SNotAssignedEmployees);
begin
  inherited;

  pdsGridDataParams_BEGIN_DATE.Assign(pdsGridDataParamsBEGIN_DATE);
  pdsGridDataParams_END_DATE.Assign(pdsGridDataParamsEND_DATE);
  pdsGridDataParams_MONTH_NAME.AsString:= FormatSettings.LongMonthNames[MonthOf(pdsGridDataParamsBEGIN_DATE.AsDateTime)];
  pdsGridDataParams_YEAR.AsInteger:= YearOf(pdsGridDataParamsBEGIN_DATE.AsDateTime);
  pdsGridDataParams_COMPANY_NAME.AsString:= LoginContext.CompanyLongName;

  pdsGridDataParams_INCLUDE_DEPT_DESCENDANTS.AsString:=
    IncludeDeptDescendants[pdsGridDataParamsINCLUDE_DEPT_DESCENDANTS.AsInteger];
end;

procedure TfmEmployeesAvailability.pdsGridDataParamsCRAFT_TYPE_CODEChange(
  Sender: TField);
begin
  inherited;

  if not Sender.IsNull then
    pdsGridDataParamsCRAFT_CODE.Clear;

  cdsCrafts.Filtered:= False;
  cdsCrafts.Filtered:= True;
end;

procedure TfmEmployeesAvailability.cdsCraftsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    (not pdsGridDataParams.Active) or
    pdsGridDataParamsCRAFT_TYPE_CODE.IsNull or
    (cdsCraftsCRAFT_TYPE_CODE.AsInteger = pdsGridDataParamsCRAFT_TYPE_CODE.AsInteger);
end;

procedure TfmEmployeesAvailability.pdsGridDataParamsBeforePost(DataSet: TDataSet);

  procedure CheckDateIntervalLength(AMaxMonthsAllowed: Integer);
  begin
    if (IncMonth(pdsGridDataParamsBEGIN_DATE.AsDateTime, AMaxMonthsAllowed) <= pdsGridDataParamsEND_DATE.AsDateTime) then
      raise Exception.CreateFmt(SMaxMonthsAllowed, [AMaxMonthsAllowed, IfThen(AMaxMonthsAllowed = 1, SMonth, SMonths)]);
  end;

begin
  inherited;

  CheckDateIntervalLength(IfThen(pdsGridDataParamsEMPLOYEE_CODE.IsNull, 1, 12));

  if (pdsGridDataParamsINCLUDE_DEPT_DESCENDANTS.AsInteger <> 2) and
     pdsGridDataParamsOCCUPATION_DEPT_CODE.IsNull and
     pdsGridDataParamsEMPLOYEE_CODE.IsNull then
    raise Exception.CreateFmt(SOccupationDeptOrEmployeeRequired, [
            pdsGridDataParamsOCCUPATION_DEPT_CODE.DisplayLabel,
            pdsGridDataParamsEMPLOYEE_CODE.DisplayLabel
          ]);

  if (pdsGridDataParamsINCLUDE_DEPT_DESCENDANTS.AsInteger = 2) then
    begin
      pdsGridDataParamsOCCUPATION_DEPT_CODE.Clear;
      pdsGridDataParamsSHIFT_CODE.Clear;
    end;  { if }

  if pdsGridDataParams_CRAFT_NAME.IsNull and not pdsGridDataParamsCRAFT_CODE.IsNull then
    pdsGridDataParamsCRAFT_CODE.Clear;
end;

procedure TfmEmployeesAvailability.actEmployeeDateAvailabilityUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    DayColumnSelected and

    (grdData.Columns[grdData.Col - 1 -
                       IfThen(
                         AnsiStartsStr(AvailabilityHoursFieldName, grdData.Columns[grdData.Col-1].FieldName),
                         1,
                         IfThen(
                           AnsiStartsStr(AvailabilityOfficialHoursFieldName, grdData.Columns[grdData.Col-1].FieldName),
                           2,
                           0
                         )
                       )
                    ].Field.AsString <> NoOccupationEmployee);
end;

procedure TfmEmployeesAvailability.actEmployeeDateAvailabilityExecute(
  Sender: TObject);
var
  TheDate: TDateTime;
begin
  inherited;

  cdsEmployeeDateAvailabilityParams.CreateDataSet;
  try
    TheDate:= ColumnToDate(grdData.Col);

    cdsEmployeeDateAvailabilityParams.AppendRecord([cdsGridData.FieldByName('EMPLOYEE_CODE').AsInteger, TheDate]);

    if TfmEmployeeDateAvailability.ShowForm(dmDocClient, cdsEmployeeDateAvailabilityParams, EditMode, doNone, cdsEmployeeFrameAllEmployees) then
      RefreshEmployee;
  finally
    cdsEmployeeDateAvailabilityParams.Close;
  end;  { try }
end;

procedure TfmEmployeesAvailability.actOccupationEmployeeUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    DayColumnSelected;
end;

procedure TfmEmployeesAvailability.actOccupationEmployeeExecute(
  Sender: TObject);
begin
  inherited;

  SetParams(cdsOccupationEmployee.Params, cdsGridData);
  cdsOccupationEmployee.Params.ParamByName('THE_DATE').AsDateTime:= ColumnToDate(grdData.Col);
  cdsOccupationEmployee.Open;
  try
    if cdsOccupationEmployee.IsEmpty then
      raise Exception.Create(SNoOccupationEmployee);

    TfmOccupationAndEmployee.ShowForm(dmDocClient, cdsOccupationEmployee, emReadOnly);
  finally
    cdsOccupationEmployee.Close;
  end;  { try }
end;

procedure TfmEmployeesAvailability.actEmployeeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmEmployeesAvailability.actEmployeeExecute(Sender: TObject);
begin
  inherited;
  TfmEmployee.ShowForm(dmDocClient, cdsGridData, emReadOnly);
end;

procedure TfmEmployeesAvailability.grdDataDblClick(Sender: TObject);
begin
//  inherited;
  actEmployeeDateAvailability.Execute;
end;

procedure TfmEmployeesAvailability.actPrintExecute(Sender: TObject);
var
  LeftCol, Col: Integer;
  SavePage: TPrinterPage;
begin
//  inherited;
  cdsGridData.DisableControls;
  try
    LeftCol:= grdData.LeftCol;
    Col:= grdData.Col;
    try
      SetColumns(False, True);
      try
        SavePage:= SetUpPrinter(DMPAPER_A3, poLandscape, PrinterPreview.Printer);
        try
          pgdData.SetSubstitutes([
            'plblTitle', plblTitle
          ]);
          pgdData.PreviewModal;
        finally
          SetUpPrinter(SavePage.PaperSize, SavePage.Orientation, PrinterPreview.Printer);
        end;   { try }
      finally
        SetColumns(False, False);
      end;  { try }
    finally
      grdData.LeftCol:= LeftCol;
      grdData.Col:= Col;
    end;  { try }
  finally
    cdsGridData.EnableControls;
  end;  { try }       
end;

function TfmEmployeesAvailability.ShowFilterForm: Boolean;
begin
  Result:=
    TfmEmployeesAvailabilityFilter.ShowForm(dmDocClient, pdsGridDataParams, emEdit, doNone,
      cdsEmployeeFrameAllEmployees);
end;

procedure TfmEmployeesAvailability.DoFilterGridData;
begin
  grdData.FrozenCols:= 0;
  inherited DoFilterGridData;
end;

class function TfmEmployeesAvailability.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean): Boolean;
var
  f: TfmEmployeesAvailability;
  SavePage: TPrinterPage;
begin
  SavePage:= SetUpPrinter(DMPAPER_A3, poLandscape);
  try
    f:= CreateEx;
    try
      f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
      f.InternalShowForm;
      Result:= f.IsDataModified;
    finally
      f.ReleaseForm;
    end;  { try }
  finally
    SetUpPrinter(SavePage.PaperSize, SavePage.Orientation);
  end;   { try }
end;

procedure TfmEmployeesAvailability.SetFrozenCols;
begin
  grdData.FrozenCols:= 8;
end;

procedure TfmEmployeesAvailability.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  f: TField;
  TheDate, d: TDateTime;
  IsWorkdayFieldIndex: Integer;
  IsWorkday: Boolean;
begin
  inherited;

  if (Column.Tag > 0) then  // date column
    begin
      f:= FAvailabilityHoursCorrespondingStatusField[Column.Field.Index];

      if not Assigned(f) then
        f:= FAvailabilityOfficialHoursCorrespondingStatusField[Column.Field.Index];

      if not Assigned(f) then
        f:= Column.Field;

      if (Pos('?', f.AsString) > 0) or (Pos('(', f.AsString) > 0) then
        AFont.Color:= clRed;

      TheDate:= Column.Tag;

      if (TheDate = FWorkDateField.AsDateTime) then
        begin
          if FIsEmployeeAvaialableNowField.AsBoolean then
            Background:= ccTodayAvailable
          else
            Background:= ccTodayNotAvailable;
        end
      else
        begin
          IsWorkdayFieldIndex:=
            Column.Field.Index - 1 -
            IfThen(
              AnsiStartsStr(AvailabilityHoursFieldName, Column.Field.FieldName),
              1,
              IfThen(
                AnsiStartsStr(AvailabilityOfficialHoursFieldName, Column.Field.FieldName),
                2,
                0
              )
            );
          IsWorkday:= (cdsGridData.Fields[IsWorkdayFieldIndex].AsInteger <> 0);

          if FWorkDateField.IsNull then
            d:= FTodayDate
          else
            d:= FWorkDateField.AsDateTime;

          if (TheDate < d) then
            begin
              if IsWorkday then
                Background:= ccPastWorkday
              else
                Background:= ccPastDayOff;
            end
          else
            begin
              if IsWorkday then
                Background:= ccFutureWorkday
              else
                Background:= ccFutureDayOff;
            end;
        end;
    end;  { if }
end;

procedure TfmEmployeesAvailability.InitializeFields;
var
  i: Integer;
  tk: TTotalKind;
begin
  FOccupationHasDocItemsField:= cdsGridData.FieldByName('OCCUPATION_HAS_DOC_ITEMS');
  FWorkDateField:= cdsGridData.FieldByName('WORK_DATE');
  FIsEmployeeAvaialableNowField:= cdsGridData.FieldByName('IS_EMPLOYEE_AVAILABLE_NOW') as TAbmesFloatField;
  FIsEmployeeAvaialableNowField.FieldValueType:= fvtBoolean;

  SetLength(FAvailabilityHoursCorrespondingStatusField, cdsGridData.FieldCount);
  SetLength(FAvailabilityOfficialHoursCorrespondingStatusField, cdsGridData.FieldCount);

  for i:= 0 to cdsGridData.FieldCount - 1 do
    begin
      if AnsiStartsStr(AvailabilityHoursFieldName, cdsGridData.Fields[i].FieldName) then
        begin
          FAvailabilityHoursCorrespondingStatusField[i]:=
            cdsGridData.FieldByName(
              StringReplace(cdsGridData.Fields[i].FieldName, AvailabilityHoursFieldName, AvailabilityStatusFieldName, []));

          cdsGridData.Fields[i].OnGetText:= AvailabilityHoursFieldGetText;
        end
      else
        FAvailabilityHoursCorrespondingStatusField[i]:= nil;

      if AnsiStartsStr(AvailabilityOfficialHoursFieldName, cdsGridData.Fields[i].FieldName) then
        begin
          FAvailabilityOfficialHoursCorrespondingStatusField[i]:=
            cdsGridData.FieldByName(
              StringReplace(cdsGridData.Fields[i].FieldName, AvailabilityOfficialHoursFieldName, AvailabilityStatusFieldName, []));

          cdsGridData.Fields[i].OnGetText:= AvailabilityOfficialHoursFieldGetText;
        end
      else
        FAvailabilityOfficialHoursCorrespondingStatusField[i]:= nil;

      if AnsiEndsStr('_HOURS', cdsGridData.Fields[i].FieldName) or
         AnsiEndsStr('_HRS', cdsGridData.Fields[i].FieldName) then
        for tk:= Low(TotalFieldNamePreffixes) to High(TotalFieldNamePreffixes) do
          if AnsiStartsStr(TotalFieldNamePreffixes[tk], cdsGridData.Fields[i].FieldName) then
            cdsGridData.Fields[i].OnGetText:= TotalHoursFieldGetText;

      if AnsiContainsStr(cdsGridData.Fields[i].FieldName, 'SALARY') then
        RegisterFieldTextVisibility(IsSalaryVisible, cdsGridData.Fields[i]);
    end;
end;

procedure TfmEmployeesAvailability.AvailabilityHoursFieldGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if Sender.IsNull then
    Text:= FAvailabilityHoursCorrespondingStatusField[Sender.Index].DisplayText
  else
    Text:= HoursToStr(Sender.AsFloat);
end;

procedure TfmEmployeesAvailability.AvailabilityOfficialHoursFieldGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if Sender.IsNull then
    Text:= FAvailabilityOfficialHoursCorrespondingStatusField[Sender.Index].DisplayText
  else
    Text:= HoursToStr(Sender.AsFloat);
end;

procedure TfmEmployeesAvailability.TotalHoursFieldGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if (Sender.AsFloat = 0) then
    Text:= ''
  else
    Text:= HoursToStr(Sender.AsFloat);
end;

procedure TfmEmployeesAvailability.actShowTotalsExecute(
  Sender: TObject);
begin
  inherited;

  if (tcMain.TabIndex = 0) then
    SetVisibleHours
  else
    SetVisibleTotals;
end;

procedure TfmEmployeesAvailability.actToggleHoursUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (tcMain.TabIndex = 1) and
     not actShowOfficialTotals.Checked;
end;

procedure TfmEmployeesAvailability.actToggleHoursExecute(
  Sender: TObject);
begin
  inherited;
  SetVisibleTotals;
end;

procedure TfmEmployeesAvailability.LoadDayAbsenceReasonAbbrevs;
begin
  cdsEmpDayAbsenceReasons.Open;
  try
    SetLength(FDayAbsenceReasonAbbrevs,
      VarToInt(cdsEmpDayAbsenceReasons_MAX_DAY_ABSENCE_REASON_CODE.AsVariant) + 1);

    while not cdsEmpDayAbsenceReasons.Eof do
      begin
        FDayAbsenceReasonAbbrevs[cdsEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_CODE.AsInteger]:=
          cdsEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_ABBREV.AsString;
        cdsEmpDayAbsenceReasons.Next;
      end;  { while }
  finally
    cdsEmpDayAbsenceReasons.Close;
  end;  { try }
end;

procedure TfmEmployeesAvailability.UpdateVTitleMargin;
var
  vtm: Integer;
begin
  if (tcMain.TabIndex = 1) then
    vtm:= 14 - 9 * Ord(actShowRealTotalsByDayKind.Checked)
  else
    vtm:= 21;

  if (grdData.VTitleMargin <> vtm) then
    grdData.VTitleMargin:= vtm;
end;

procedure TfmEmployeesAvailability.actPrintEmployeeMonthAvailabilityUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (not cdsGridData.IsEmpty) and
    (GetPeriodFirstDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, perMonth) = pdsGridDataParamsBEGIN_DATE.AsDateTime) and
    (GetPeriodLastDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, perMonth) = pdsGridDataParamsEND_DATE.AsDateTime);
end;

procedure TfmEmployeesAvailability.actPrintEmployeeMonthAvailabilityExecute(
  Sender: TObject);
begin
  inherited;
  TrptEmployeeMonthAvailability.PrintReport(cdsGridData, pdsGridDataParams);
end;

procedure TfmEmployeesAvailability.SetColumTitlesDateFormat(
  const Value: TDateFormat);
begin
  if (Value <> FColumTitlesDateFormat) then
    begin
      FColumTitlesDateFormat:= Value;

      if (tcMain.TabIndex = 0) then
        SetColumns(False);
    end;  { if }
end;

function TfmEmployeesAvailability.DayColumnSelected: Boolean;
begin
  Result:=
    AnsiStartsStr(AvailabilityStatusFieldName, grdData.Columns[grdData.Col-1].FieldName) or
    AnsiStartsStr(AvailabilityHoursFieldName, grdData.Columns[grdData.Col-1].FieldName) or
    AnsiStartsStr(AvailabilityOfficialHoursFieldName, grdData.Columns[grdData.Col-1].FieldName);
end;

function TfmEmployeesAvailability.RepeatableColumnNo(
  ACol: Integer): Integer;
var
  ColFieldName: string;
  PreffixLength: Integer;
begin
  ColFieldName:= grdData.Columns[ACol-1].FieldName;

  PreffixLength:=
    Length(
      IfThen(
        AnsiStartsStr(AvailabilityStatusFieldName, ColFieldName),
        AvailabilityStatusFieldName,
        IfThen(AnsiStartsStr(AvailabilityHoursFieldName, ColFieldName),
          AvailabilityHoursFieldName,
          AvailabilityOfficialHoursFieldName
        )
      )
    );
  Result:= StrToInt(RightStr(ColFieldName, Length(ColFieldName) - PreffixLength));
end;

function TfmEmployeesAvailability.ColumnToDate(ACol: Integer): TDateTime;
begin
  Result:= cdsGridData.Params.ParamByName('BEGIN_DATE').AsDateTime + RepeatableColumnNo(ACol) - 1;
end;

procedure TfmEmployeesAvailability.RefreshEmployee;
var
  SaveLeftCol: Integer;
  Col: Integer;
  EmployeeCode: Variant;
  OccupationCode: Variant;
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsGridData.DisableControls;
    try
      grdData.DataSource:= nil;
      try
        SaveLeftCol:= grdData.LeftCol;
        Col:= grdData.Col;
        try
          EmployeeCode:= cdsGridData.FieldByName('EMPLOYEE_CODE').AsVariant;
          OccupationCode:= cdsGridData.FieldByName('OCCUPATION_CODE').AsVariant;
          try
            cdsGridData.First;
            while cdsGridData.Locate('EMPLOYEE_CODE', EmployeeCode, []) do
              cdsGridData.Delete;

            cdsRefreshEmployee.Params.AssignValues(cdsGridData.Params);
            cdsRefreshEmployee.Params.ParamByName('EMPLOYEE_CODE').Value:= EmployeeCode;

            cdsRefreshEmployee.Open;
            try
              while not cdsRefreshEmployee.Eof do
                begin
                  cdsGridData.Append;
                  try
                    AssignFields(cdsRefreshEmployee, cdsGridData);
                    cdsGridData.Post;
                  except
                    cdsGridData.Cancel;
                    raise;
                  end;

                  cdsRefreshEmployee.Next;
                end;  { while }
            finally
              cdsRefreshEmployee.Close;
            end;
          finally
            cdsGridData.First;
            cdsGridData.Locate('EMPLOYEE_CODE;OCCUPATION_CODE', VarArrayOf([EmployeeCode, OccupationCode]), []);
          end;
        finally
          grdData.LeftCol:= SaveLeftCol;
          grdData.Col:= Col;
        end;
      finally
        grdData.DataSource:= dsGridData;
      end;
    finally
      cdsGridData.EnableControls;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

end.

