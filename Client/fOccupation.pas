unit fOccupation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields, fDualGridForm,
  ParamDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Mask, fBaseFrame, fDBFrame, fFieldEditFrame,
  JvToolEdit, JvDBControls, JvDBLookup, fOccupationProfessionsDepts,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDateIntervalFrame,
  fProductFieldEditFrameLabeled, JvDBCombobox, JvExControls, JvComponent,
  JvExStdCtrls, JvCaptionButton, fCraftEditFrame,
  fProductFieldEditFrameBald, fDeptFieldEditFrameBald, JvComponentBase,
  fDualGridFrame, fProductFieldEditFrame, fProductExFieldEditFrame,
  uClientTypes, Menus, uSysRoleClientUtils, fPrcDataFieldEditFrame, JvCombobox, DBGridEhGrouping,
  uSection, dDocClient, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmOccupation = class(TDualGridForm)
    cdsDataOCCUPATION_CODE: TAbmesFloatField;
    cdsDataOCCUPATION_NAME: TAbmesWideStringField;
    cdsDataDEPT_CODE: TAbmesFloatField;
    cdsDataOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataOCCUPATION_END_DATE: TAbmesSQLTimeStampField;
    pnlData: TPanel;
    cdsGridDataPROFESSION_CODE: TAbmesFloatField;
    cdsGridDataPROFESSION_NAME: TAbmesWideStringField;
    cdsOtherGridDataOCCUPATION_CODE: TAbmesFloatField;
    cdsOtherGridDataPROFESSION_CODE: TAbmesFloatField;
    cdsOtherGridDataPROFESSION_NAME: TAbmesWideStringField;
    cdsDataDEPT_NAME: TAbmesWideStringField;
    cdsDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDataqryOccupationProfessions: TDataSetField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsGridDataOCCUPATION_CODE: TAbmesFloatField;
    cdsOtherGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsShifts: TAbmesClientDataSet;
    cdsDataqryOccupationDepts: TDataSetField;
    cdsDataOCCUPATION_LEVEL: TAbmesFloatField;
    cdsDataIS_ACTIVE: TAbmesFloatField;
    cdsDataIS_OCCUPIED: TAbmesFloatField;
    cdsData_OCCUPATION_STATUS_ABBREV: TAbmesWideStringField;
    cdsShiftsSHIFT_CODE: TAbmesFloatField;
    pnlGridNavigators: TPanel;
    navGridData: TDBColorNavigator;
    navOtherGridData: TDBColorNavigator;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsOtherGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsOtherGridDataDOC_CODE: TAbmesFloatField;
    cdsDataNOTES: TAbmesWideStringField;
    cdsDataDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsDataOCCUPATION_PHASE_CODE: TAbmesFloatField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsOccupationPhases: TAbmesClientDataSet;
    cdsOccupationPhasesOCCUPATION_PHASE_CODE: TAbmesFloatField;
    cdsOccupationPhasesOCCUPATION_PHASE_NAME: TAbmesWideStringField;
    cdsOccupationPhases_SHOW_NAME: TAbmesWideStringField;
    cdsData_OCCUPATION_PHASE_SHOW_NAME: TAbmesWideStringField;
    cdsDataIS_MAIN: TAbmesFloatField;
    cdsDataDEPT_IS_EXTERNAL: TAbmesFloatField;
    cdsDataDEPT_IS_RECURRENT: TAbmesFloatField;
    cdsDataPRODUCT_NAME: TAbmesWideStringField;
    cdsDataPRODUCT_NO: TAbmesFloatField;
    cdsPrint: TAbmesClientDataSet;
    cdsPrintIS_MAIN: TAbmesFloatField;
    cdsPrintOCCUPATION_NAME: TAbmesWideStringField;
    cdsPrintOCCUPATION_LEVEL: TAbmesFloatField;
    cdsPrintDEPT_NAME: TAbmesWideStringField;
    cdsPrintDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsPrintNOTES: TAbmesWideStringField;
    cdsPrint_OCCUPATION_STATUS_ABBREV: TAbmesWideStringField;
    cdsPrint_OCCUPATION_PHASE_SHOW_NAME: TAbmesWideStringField;
    cdsPrintPRODUCT_NAME: TAbmesWideStringField;
    cdsPrintPRODUCT_NO: TAbmesFloatField;
    cdsPrintDEPT_IS_EXTERNAL: TAbmesFloatField;
    cdsPrintDEPT_IS_RECURRENT: TAbmesFloatField;
    cdsPrint_SHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsData_OCCUPATION_PERIOD: TAbmesWideStringField;
    cdsPrint_OCCUPATION_PERIOD: TAbmesWideStringField;
    cdsPrintORIGIN_INDEX: TAbmesFloatField;
    cdsPrintPROFESSION_NAME_2: TAbmesWideStringField;
    cdsPrintIS_INCLUDED_PROFESSIONS_RECORD: TAbmesFloatField;
    cdsPrintIS_EXCLUDED_PROFESSIONS_RECORD: TAbmesFloatField;
    cdsPrintPROFESSION_NAME: TAbmesWideStringField;
    cdsPrintHAS_DOCUMENTATION2: TAbmesFloatField;
    cdsPrintHAS_DOCUMENTATION_2: TAbmesFloatField;
    cdsShiftsSHIFT_NAME: TAbmesWideStringField;
    cdsShiftsSHIFT_ABBREV: TAbmesWideStringField;
    cdsShiftsSHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsDataCRAFT_CODE: TAbmesFloatField;
    cdsDataCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsData_DAYS_LEFT: TAbmesFloatField;
    gbOccupation: TGroupBox;
    gbOccupationDates: TGroupBox;
    lblDaysLeft: TLabel;
    lblCalendarDays: TLabel;
    frDateInterval: TfrDateIntervalFrame;
    edtDaysLeft: TDBEdit;
    gbCoefs: TGroupBox;
    lblCurrentSalaryRatioCoefIntervalDash: TLabel;
    lblCurrentBaseSalary: TLabel;
    edtCurrentMinSalaryRatioCoef: TDBEdit;
    edtCurrentMaxSalaryRatioCoef: TDBEdit;
    edtCurrentBaseSalary: TDBEdit;
    pnlOccupationId: TPanel;
    lblOccupationStatus: TLabel;
    lblOccupationIsMain: TLabel;
    lblOccupation: TLabel;
    btnDocs: TSpeedButton;
    edtOccupationStatus: TDBEdit;
    edtOccupation: TDBEdit;
    cbOccupationIsMain: TJvDBComboBox;
    pnlPhase: TPanel;
    lblPhase: TLabel;
    cbPhase: TJvDBLookupCombo;
    gbCraft: TGroupBox;
    pnlShift: TPanel;
    lblOccupationLevel: TLabel;
    edtOccupationLevel: TDBEdit;
    actNotes: TAction;
    pnlNotes: TPanel;
    btnNotes: TBitBtn;
    gbDept: TGroupBox;
    edtDeptIsExternal: TDBEdit;
    edtDeptIsRecurrent: TDBEdit;
    actAssignment: TAction;
    frDept: TfrDeptFieldEditFrameBald;
    cdsData_CRAFT_TYPE_NAME: TAbmesWideStringField;
    cdsData_CRAFT_NAME: TAbmesWideStringField;
    cdsPrint_DAYS_LEFT: TAbmesFloatField;
    cdsPrint_CRAFT_TYPE_NAME: TAbmesWideStringField;
    cdsPrint_CRAFT_NAME: TAbmesWideStringField;
    cdsPrintSPEC_STATE_CODE: TAbmesFloatField;
    cdsPrintCOMMON_STATUS_CODE: TAbmesFloatField;
    cdsPrint_COMMON_PRODUCTS_LEVELS: TAbmesWideStringField;
    cdsDataqryOccupationShifts: TDataSetField;
    cdsOccupationShifts: TAbmesClientDataSet;
    cdsOccupationShiftsOCCUPATION_SHIFT_CODE: TAbmesFloatField;
    cdsOccupationShiftsOCCUPATION_CODE: TAbmesFloatField;
    cdsOccupationShiftsSHIFT_CODE: TAbmesFloatField;
    cdsOccupationShiftsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsOccupationShiftsEND_DATE: TAbmesSQLTimeStampField;
    cdsOccupationShifts_MAX_OCCUPATION_SHIFT_CODE: TAggregateField;
    cdsOccupationShifts_SHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsOccupationShiftsCURRENT_SHIFT_IDENTIFIER: TAbmesWideStringField;
    edtCurrentShift: TDBEdit;
    cdsOccupationShifts_MAX_CURRENT_SHIFT_IDENTIFIER: TAggregateField;
    dsOccupationShifts: TDataSource;
    btnOccupationShifts: TSpeedButton;
    lblCurrentShift: TLabel;
    actOccupationShifts: TAction;
    pnlBottomButtonsClient: TPanel;
    pnlPrint: TPanel;
    pnlPrintButton: TPanel;
    btnPrint: TBitBtn;
    pnlPrintCheckbox: TPanel;
    chkPrint: TCheckBox;
    cdsOccupationShifts_MIN_BEGIN_DATE: TAggregateField;
    cdsOccupationShifts_MAX_END_DATE: TAggregateField;
    cdsOccupationShifts_SUM_PERIOD_DAYS: TAggregateField;
    cdsOccupationShiftsAFFECTS_EMP_AVAILABILITY: TAbmesFloatField;
    cdsOccupationSalaries: TAbmesClientDataSet;
    dsOccupationSalaries: TDataSource;
    cdsDataqryOccupationSalaries: TDataSetField;
    cdsOccupationSalariesOCCUPATION_SALARY_CODE: TAbmesFloatField;
    cdsOccupationSalariesOCCUPATION_CODE: TAbmesFloatField;
    cdsOccupationSalariesBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsOccupationSalariesEND_DATE: TAbmesSQLTimeStampField;
    cdsOccupationSalariesBASE_SALARY: TAbmesFloatField;
    cdsOccupationSalariesDATE_UNIT_CODE: TAbmesFloatField;
    cdsOccupationSalariesMIN_SALARY_RATIO_COEF: TAbmesFloatField;
    cdsOccupationSalariesMAX_SALARY_RATIO_COEF: TAbmesFloatField;
    cdsOccupationSalariesCURRENT_BASE_SALARY: TAbmesFloatField;
    cdsOccupationSalariesCURRENT_MIN_SALARY_RATIO_COEF: TAbmesFloatField;
    cdsOccupationSalariesCURRENT_MAX_SALARY_RATIO_COEF: TAbmesFloatField;
    cdsOccupationSalaries_MAX_OCCUPATION_SALARY_CODE: TAggregateField;
    cdsOccupationSalaries_MAX_CURRENT_BASE_SALARY: TAggregateField;
    cdsOccupationSalaries_MAX_CURRENT_DATE_UNIT_NAME: TAggregateField;
    cdsOccupationSalaries_MAX_CUR_MIN_SALARY_RATIO_COEF: TAggregateField;
    cdsOccupationSalaries_MAX_CUR_MAX_SALARY_RATIO_COEF: TAggregateField;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsOccupationSalaries_DATE_UNIT_NAME: TAbmesWideStringField;
    actOccupationSalaries: TAction;
    btnOccupationSalaries: TSpeedButton;
    cdsOccupationSalariesCURRENT_DATE_UNIT_NAME: TAbmesWideStringField;
    txtCurrentBaseSalaryCurrency: TDBText;
    lblCurrentSalaryRatioCoefInterval: TLabel;
    cdsOccupationSalaries_MIN_BEGIN_DATE: TAggregateField;
    cdsOccupationSalaries_MAX_END_DATE: TAggregateField;
    cdsOccupationSalaries_SUM_PERIOD_DAYS: TAggregateField;
    cdsPrintCURRENT_BASE_SALARY: TAbmesFloatField;
    cdsPrintCURRENT_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsPrintCURRENT_MIN_SALARY_RATIO_COEF: TAbmesFloatField;
    cdsPrintCURRENT_MAX_SALARY_RATIO_COEF: TAbmesFloatField;
    cdsData_SHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsDataTHE_DATE: TAbmesSQLTimeStampField;
    pcOccupationDetails: TPageControl;
    tsOccupationProfessionsDepts: TTabSheet;
    tsOccupationProfessions: TTabSheet;
    frProfessions: TDualGridFrame;
    tlbOccupationProfessionDocs: TToolBar;
    btnOccupationProfessionDocs: TSpeedButton;
    tlbOccupationNotProfessionDocs: TToolBar;
    btnOccupationNotProfessionDocs: TSpeedButton;
    frCraft: TfrCraftEditFrame;
    frProduct: TfrProductExFieldEditFrame;
    tsSysRoles: TTabSheet;
    frSysRoles: TDualGridFrame;
    cdsDataqryOccupationSysRoles: TDataSetField;
    cdsOccupationSysRoles: TAbmesClientDataSet;
    cdsOccupationNotSysRoles: TAbmesClientDataSet;
    cdsOccupationNotSysRolesOCCUPATION_CODE: TAbmesFloatField;
    cdsOccupationNotSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    cdsOccupationNotSysRolesSYS_ROLE_NO: TAbmesFloatField;
    cdsOccupationNotSysRolesSYS_ROLE_NAME: TAbmesWideStringField;
    cdsOccupationSysRolesOCCUPATION_CODE: TAbmesFloatField;
    cdsOccupationSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    cdsOccupationSysRolesSYS_ROLE_NO: TAbmesFloatField;
    cdsOccupationSysRolesSYS_ROLE_NAME: TAbmesWideStringField;
    btnOccupationEffectiveActivities: TBitBtn;
    actOccupationEffectiveActivities: TAction;
    pdsSysRolesIsFilterAcceptedParams: TParamDataSet;
    actFilterOccupationNotSysRoles: TAction;
    cdsActivities: TAbmesClientDataSet;
    pdsSysRolesIsFilterAcceptedParams_ACTIVITY_NO: TAbmesFloatField;
    dsSysRolesIsFilterAcceptedParams: TDataSource;
    pdsSysRolesIsFilterAcceptedParamsACTIVITY_CODE: TAbmesFloatField;
    cdsSysRolesIsFilterAccepted: TAbmesClientDataSet;
    cdsSysRolesIsFilterAcceptedSYS_ROLE_CODE: TAbmesFloatField;
    cdsActivitiesACTIVITY_CODE: TAbmesFloatField;
    cdsActivitiesACTIVITY_NO: TAbmesFloatField;
    cdsOccupationNotSysRolesIS_FILTER_ACCEPTED: TAbmesFloatField;
    cdsOccupationSysRolesIS_FILTER_ACCEPTED: TAbmesFloatField;
    cdsSysRolesIsFilterAcceptedIS_FILTER_ACCEPTED: TAbmesFloatField;
    cdsOccupationSysRolesSYS_ROLE_TYPE_CODE: TAbmesFloatField;
    cdsOccupationNotSysRolesSYS_ROLE_TYPE_CODE: TAbmesFloatField;
    bvlOccupationSysRolesTopButtons: TBevel;
    tlbSwitchVisibleSysRoleType: TToolBar;
    btnShowSRTActivities: TSpeedButton;
    btnShowSRTFilterVariants: TSpeedButton;
    btnShowSRTDocItems: TSpeedButton;
    actShowSRTActivities: TAction;
    actShowSRTFilterVariants: TAction;
    actShowSRTDocItems: TAction;
    pnlSysRolesFilter: TPanel;
    tlbFilterOccupationNotSysRoles: TToolBar;
    btnFilterOccupationNotSysRoles: TToolButton;
    edtActivityNo: TDBEdit;
    cdsDataPRC_DATA: TBlobField;
    tsPrcData: TTabSheet;
    cdsGridDataPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField;
    cdsOtherGridDataPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField;
    cdsPrintPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataPROFESSION_KIND_NO: TAbmesFloatField;
    cdsOtherGridDataPROFESSION_KIND_NO: TAbmesFloatField;
    cdsPrint_OWD_PRIORITY_DISPLAY_NAME: TAbmesWideStringField;
    cdsPrintDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    cdsPrintIS_CAPACITY_GENERATOR: TAbmesFloatField;
    cdsGridDataPROFESSION_FULL_NO: TAbmesWideStringField;
    cdsOtherGridDataPROFESSION_FULL_NO: TAbmesWideStringField;
    cdsPrintPROFESSION_FULL_NO: TAbmesWideStringField;
    cdsPrintPROFESSION_FULL_NO_2: TAbmesWideStringField;
    cdsGridDataPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsOtherGridDataPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsPrintSYS_ROLE_NO: TAbmesFloatField;
    cdsPrintSYS_ROLE_NAME: TAbmesWideStringField;
    procedure cdsPrintCURRENT_BASE_SALARYGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsOccupationSalaries_MAX_CURRENT_BASE_SALARYGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsOccupationSalariesBEGIN_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsOccupationSalaries_MAX_CURRENT_DATE_UNIT_NAMEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actOccupationSalariesExecute(Sender: TObject);
    procedure cdsOccupationSalariesBeforePost(DataSet: TDataSet);
    procedure cdsOccupationSalariesNewRecord(DataSet: TDataSet);
    procedure cdsDataDEPT_CODEChange(Sender: TField);
    procedure cdsDataBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure cdsOtherGridDataBeforeOpen(DataSet: TDataSet);
    procedure btnDocsClick(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure FormShow(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure btnOccupationProfessionDocsClick(Sender: TObject);
    procedure btnOccupationNotProfessionDocsClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataOCCUPATION_BEGIN_DATEChange(Sender: TField);
    procedure cdsOccupationPhasesCalcFields(DataSet: TDataSet);
    procedure cdsDataOCCUPATION_PHASE_CODEValidate(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actPrintExecute(Sender: TObject);
    procedure actPrintUpdate(Sender: TObject);
    procedure actNotesExecute(Sender: TObject);
    procedure cdsDataSPEC_STATE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsOccupationShiftsNewRecord(DataSet: TDataSet);
    procedure cdsOccupationShiftsBeforePost(DataSet: TDataSet);
    procedure cdsOccupationShiftsBEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actOccupationShiftsExecute(Sender: TObject);
    procedure frProfessionsgrdIncludedDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure cdsOccupationNotSysRolesBeforeOpen(DataSet: TDataSet);
    procedure actOccupationEffectiveActivitiesUpdate(Sender: TObject);
    procedure actOccupationEffectiveActivitiesExecute(Sender: TObject);
    procedure frSysRolesgrdExcludedGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure actFilterOccupationNotSysRolesExecute(Sender: TObject);
    procedure frSysRolesgrdIncludedGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure cdsOtherGridDataAfterOpen(DataSet: TDataSet);
    procedure cdsOccupationNotSysRolesAfterOpen(DataSet: TDataSet);
    procedure cdsOccupationSysRolesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actShowSRTActivitiesExecute(Sender: TObject);
    procedure actShowSRTFilterVariantsExecute(Sender: TObject);
    procedure actShowSRTDocItemsExecute(Sender: TObject);
    procedure cdsOccupationNotSysRolesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsDataIS_MAINGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsPrintDEPT_OWDP_COVER_TYPE_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actNotesUpdate(Sender: TObject);
  private
    FfmOccupationProfessionsDepts: TfmOccupationProfessionsDepts;
    FStartOccupationPhaseCode: Integer;
    FVisibleSysRolesType: TSysRoleType;
    FfrPrcData: TfrPrcDataFieldEditFrame;
    FInsertWorkDept: Boolean;
    procedure RecalcStatus;
    procedure FilterSysRolesDataSets;
    procedure RefilterSysRolesDataSets;
    function OccupationWorkDeptsModified: Boolean;
    function PrcDataModified: Boolean;
    function OccupationProfessionsModified: Boolean;
  protected
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoApplyUpdates; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AInsertWorkDept: Boolean = False); reintroduce; virtual;

    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AInsertWorkDept: Boolean = False): Boolean;
  end;

implementation

uses
  dMain, uTreeClientUtils, uUtils,
  uDocUtils, uClientUtils, rOccupation, fNotes, uModelUtils,
  uColorConsts, fCommonGroups, uProductClientUtils,
  fGridForm, fOccupationShifts, Math, fOccupationSalaries, uUserActivityConsts,
  fOccupationEffectiveActivities, fMain, uClientDateTime, fSysRole,
  fOccSysRolesFilter, uPrcDeclarations, uClientPrcData,
  rOccupationPrcDataReport, uPrcUtils, uClientConsts, uOWDPriorityTypes,
  uOWDPriorityClientConsts, uAbmesClientDataSetHelper, uMessageDecodingUtils;

{$R *.dfm}

resourcestring
  SIncorrectOccupationPhase = 'След преход от Фаза 1 можете да задавате само Фаза 2 или 3';
{ tova se upotrebiavashe na cdsDataBeforePost, kydeto e comment-nato
  SInvalidOccupationProfessionDept = 'Съществува ТП на изпълнение на Процесните Роли, което не е наследник на ОрЧ на Назначение';}

  SActiveOccupied = 'АЗ - Активна Заета';
  SActiveNotOccupied = 'АН - Активна Незаета';
  SPassiveOccupied = 'ПЗ - Пасивна Заета';
  SPassiveNotOccupied = 'ПН - Пасивна Незаета';

  SDatePeriodNotInDept = 'Времевият интервал за активност на длъжността трябва да е се включва във' + SLineBreak +
                       'времевия интервал за активност на ОрЧ (%s)';
  SMainOccupationOnRecurrentDeptNotAllowed = 'Не можете да залагате Основно Длъжностно Назначение в Пулсиращо ТП!';
  SIncorrectShiftDateIntervals = 'Времевите интервали на смените не покриват точно целия времеви интервал на длъжността!';
  SIncorrectSalaryDateIntervals = 'Времевите интервали на стойностните характеристики не покриват точно целия времеви интервал на длъжността!';
  SAllPrcDataWillBeDeletedPleaseCopyIt = 'Процесния Обхват на Длъжността няма да бъде копиран. Моля, копирайте го ръчно след запис.';

  SOccupation = 'Длъжност';

  SDerived = 'Производна';
  SMain = 'Основна';

const
  OccupationStatuses: array [False..True, False..True] of string =
    ( (SPassiveNotOccupied, SPassiveOccupied),
      (SActiveNotOccupied, SActiveOccupied) );

{ TfmOccupation }

procedure TfmOccupation.SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled, AInsertWorkDept: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FInsertWorkDept:= AInsertWorkDept;
end;

class function TfmOccupation.ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled, AInsertWorkDept: Boolean): Boolean;
var
  f: TfmOccupation;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled, AInsertWorkDept);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

class function TfmOccupation.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmOccupation.cdsDataDEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsDataDEPT_CODE, cdsDataDEPT_NAME, cdsDataDEPT_IDENTIFIER,
    nil, nil, nil,
    cdsDataDEPT_IS_RECURRENT, cdsDataDEPT_BEGIN_DATE, cdsDataDEPT_END_DATE, cdsDataDEPT_IS_EXTERNAL);
  FfmOccupationProfessionsDepts.DeptCode:= cdsDataDEPT_CODE.AsInteger;         
end;

procedure TfmOccupation.cdsDataIS_MAINGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
const
  IsMainTexts: array[Boolean] of string = (SDerived, SMain);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= IsMainTexts[Sender.AsBoolean];
end;

procedure TfmOccupation.cdsDataBeforeOpen(DataSet: TDataSet);
var
  f: TField;
begin
  inherited;
  f:= OuterDataSet.FindField('NODE_PARAM_CODE');
  if Assigned(f) and (EditMode <> emInsert) then
    cdsData.Params.ParamByName('OCCUPATION_CODE').AsInteger:= f.AsInteger;

  with cdsData.Params.ParamByName('THE_DATE') do
    if IsNull then
      AsDateTime:= ContextDate;
end;

procedure TfmOccupation.cdsGridDataBeforeOpen(DataSet: TDataSet);
var
  f: TField;
begin
  inherited;
  f:= OuterDataSet.FindField('NODE_PARAM_CODE');
  if Assigned(f) and (EditMode <> emInsert) then
    cdsGridData.Params.ParamByName('OCCUPATION_CODE').AsInteger:= f.AsInteger;
end;

procedure TfmOccupation.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataOCCUPATION_CODE.Assign(cdsDataOCCUPATION_CODE);
end;

procedure TfmOccupation.cdsOtherGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DataSet.Subtract(cdsGridData, 'PROFESSION_CODE');
end;

procedure TfmOccupation.cdsOtherGridDataBeforeOpen(DataSet: TDataSet);
var
  f: TField;
begin
  inherited;
  f:= OuterDataSet.FindField('NODE_PARAM_CODE');
  if Assigned(f) and (EditMode <> emInsert) then
    cdsOtherGridData.Params.ParamByName('OCCUPATION_CODE').AsInteger:= f.AsInteger;
end;

procedure TfmOccupation.cdsPrintCURRENT_BASE_SALARYGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOccupation.cdsPrintDEPT_OWDP_COVER_TYPE_CODEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= DeptOWDPCoverTypeAbbrevs[Sender.AsDeptOWDPCoverType];
end;

procedure TfmOccupation.FilterSysRolesDataSets;

  procedure AssignIsFilterAcceptedFieldOfAllRows(ADataSet: TAbmesClientDataSet);
  var
    SavedSysRoleCode: Integer;
    SavedIndexName: string;
    IsSysRoleLocated: Boolean;
  begin
    ADataSet.DisableControls;
    try
      SavedSysRoleCode:= ADataSet.FieldByName('SYS_ROLE_CODE').AsInteger;
      try
        SavedIndexName:= ADataSet.IndexName;
        ADataSet.IndexName:= '';
        try
          ADataSet.First;
          while not ADataSet.Eof do
            begin
              IsSysRoleLocated:=
                cdsSysRolesIsFilterAccepted.Locate('SYS_ROLE_CODE', ADataSet.FieldByName('SYS_ROLE_CODE').AsInteger, []);

              Assert(IsSysRoleLocated);

              if (ADataSet.FieldByName('IS_FILTER_ACCEPTED').AsBoolean <> cdsSysRolesIsFilterAcceptedIS_FILTER_ACCEPTED.AsBoolean) then
                begin
                  ADataSet.Edit;
                  try
                    ADataSet.FieldByName('IS_FILTER_ACCEPTED').AsBoolean:=
                      cdsSysRolesIsFilterAcceptedIS_FILTER_ACCEPTED.AsBoolean;

                    ADataSet.Post;
                  except
                    ADataSet.Cancel;
                    raise;
                  end;  { try }
                end;  { if }

              ADataSet.Next;
            end;  { while }
        finally
          ADataSet.IndexName:= SavedIndexName;
        end;  { try }
      finally
        ADataSet.Locate('SYS_ROLE_CODE', SavedSysRoleCode, []);
      end;  { try }
    finally
      ADataSet.EnableControls;
    end;  { try }
  end;

begin
  cdsSysRolesIsFilterAccepted.Open;
  try
    AssignIsFilterAcceptedFieldOfAllRows(cdsOccupationSysRoles);
    AssignIsFilterAcceptedFieldOfAllRows(cdsOccupationNotSysRoles);
  finally
    cdsSysRolesIsFilterAccepted.Close;
  end;  { try }
end;

procedure TfmOccupation.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, btnDocs, dotOccupation, cdsData);
end;

class function TfmOccupation.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmOccupation.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmOccupation.FormShow(Sender: TObject);
begin
  inherited;
  FfmOccupationProfessionsDepts.DeptCode:= cdsDataDEPT_CODE.AsInteger;         
end;

procedure TfmOccupation.frProfessionsgrdIncludedDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmOccupation.frSysRolesgrdExcludedGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if not cdsOccupationNotSysRolesIS_FILTER_ACCEPTED.AsBoolean then
    AFont.Color:= clGray;
end;

procedure TfmOccupation.frSysRolesgrdIncludedGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if not cdsOccupationSysRolesIS_FILTER_ACCEPTED.AsBoolean then
    AFont.Color:= clGray;
end;

procedure TfmOccupation.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  if InsertingLike then
    begin
      PrcDataCreateLike(cdsDataPRC_DATA, ProcessOwners.Occupation);
      FfrPrcData.DeleteAllPrcData;
      ShowMessage(SAllPrcDataWillBeDeletedPleaseCopyIt);
    end
  else
    begin
      cdsDataOCCUPATION_CODE.AsInteger:= -1;
      cdsDataDEPT_CODE.Assign(OuterDataSet.FieldByName('DEPT_CODE'));
    end;  { if }

  cdsDataIS_OCCUPIED.AsBoolean:= False;
end;

procedure TfmOccupation.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if cdsData.RecordChecksEnabled then
    begin
      CheckRequiredField(cdsData_OCCUPATION_PHASE_SHOW_NAME);
      CheckDatePeriod(cdsDataOCCUPATION_BEGIN_DATE, cdsDataOCCUPATION_END_DATE);

      if not IsDateSubPeriod(cdsDataOCCUPATION_BEGIN_DATE, cdsDataOCCUPATION_END_DATE,
               cdsDataDEPT_BEGIN_DATE, cdsDataDEPT_END_DATE) then
        raise Exception.CreateFmt(SDatePeriodNotInDept, [
                dmMain.GetDateIntervalAsString(
                  cdsDataDEPT_BEGIN_DATE.AsDateTime,
                  cdsDataDEPT_END_DATE.AsDateTime)]);

      { proverka forp na izpylnenie na procesnite roli da sa naslenici na forpa na dlyjnostta
        ama ne ni triabva sega, da sedi ako potriabva
        with FfmOccupationProfessionsDepts.cdsGridData do
        try
          DisableControls;
          First;
          while not Eof do
            begin
              if not dmMain.SvrDeptsTree.IsDescendantOf(
                       FieldByName('DEPT_CODE').AsInteger,
                       cdsDataDEPT_CODE.AsInteger) then
                raise Exception.Create(SInvalidOccupationProfessionDept);

              Next;
            end;

        finally
          EnableControls;
        end;
      }

      if cdsDataIS_MAIN.AsBoolean and cdsDataDEPT_IS_RECURRENT.AsBoolean then
        raise Exception.Create(SMainOccupationOnRecurrentDeptNotAllowed);
    end;
end;

procedure TfmOccupation.CloseDataSets;
begin
  cdsOccupationNotSysRoles.Close;
  inherited;
  cdsDateUnits.Close;
  cdsShifts.Close;
  cdsActivities.Close;
  pdsSysRolesIsFilterAcceptedParams.Close;
end;

procedure TfmOccupation.OpenDataSets;
begin
  pdsSysRolesIsFilterAcceptedParams.Open;
  cdsActivities.Open;
  cdsShifts.Open;
  cdsDateUnits.Open;
  inherited;
  cdsOccupationNotSysRoles.Open;
end;

procedure TfmOccupation.FormCreate(Sender: TObject);
begin
  inherited;

  ReportClass:= TrptOccupation;

  FfmOccupationProfessionsDepts:= TfmOccupationProfessionsDepts.CreateDockedTo(tsOccupationProfessionsDepts);
  FfmOccupationProfessionsDepts.Align:= alClient;
  FfmOccupationProfessionsDepts.dsData.DataSet:= cdsData;
  FfmOccupationProfessionsDepts.cdsGridData.DataSetField:= cdsDataqryOccupationDepts;

  frDateInterval.FieldNames:= 'OCCUPATION_BEGIN_DATE;OCCUPATION_END_DATE';

  frCraft.FieldNames:= 'CRAFT_CODE';

  frProduct.PriorityVisible:= False;
  frProduct.MeasureVisible:= False;
  frProduct.PartnerProductNamesVisible:= False;
  frProduct.ProductOriginVisible:= False;
  frProduct.ProductPeriodsButtonVisible:= False;
  frProduct.CommonGroupsButtonVisible:= True;

  if (LoginContext.OccupationRootProductCode > 0) then
    frProduct.RootCode:= LoginContext.OccupationRootProductCode;

  frSysRoles.IncludedEditFormClass:= TfmSysRole;
  frSysRoles.ExcludedEditFormClass:= TfmSysRole;

  FVisibleSysRolesType:= srtActivities;

  FfrPrcData:= TfrPrcDataFieldEditFrame.Create(Self);
  FfrPrcData.ProcessOwner:= ProcessOwners.Occupation;
  FfrPrcData.OwnerDisplayName:= SOccupation;
  FfrPrcData.PrcDataReportClass:= TrptOccupationPrcDataReport;
  tsPrcData.InsertControl(FfrPrcData);

  if IsAppThemed then
    FfmOccupationProfessionsDepts.Color:= clWhite;

  RegisterFieldsTextVisibility(
    IsSalaryVisible,
    [ cdsOccupationSalaries_MAX_CURRENT_BASE_SALARY,
      cdsOccupationSalaries_MAX_CURRENT_DATE_UNIT_NAME,
      cdsPrintCURRENT_BASE_SALARY]);
end;

procedure TfmOccupation.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsDataIS_ACTIVE.IsNull or cdsDataIS_OCCUPIED.IsNull then
    cdsData_OCCUPATION_STATUS_ABBREV.Clear
  else
    cdsData_OCCUPATION_STATUS_ABBREV.AsString:=
      OccupationStatuses[cdsDataIS_ACTIVE.AsBoolean, cdsDataIS_OCCUPIED.AsBoolean];

  cdsData_OCCUPATION_PERIOD.AsString:=
    dmMain.GetDateIntervalAsString(cdsDataOCCUPATION_BEGIN_DATE.AsDateTime, cdsDataOCCUPATION_END_DATE.AsDateTime);

  cdsData_DAYS_LEFT.AsInteger:= Trunc(cdsDataOCCUPATION_END_DATE.AsDateTime - ContextDate);
  if (cdsData_DAYS_LEFT.AsInteger <= 0) then
    cdsData_DAYS_LEFT.Clear;

  if frCraft.cdsCraft.Active then
    begin
      cdsData_CRAFT_TYPE_NAME.Assign(frCraft.cdsCraft_CRAFT_TYPE_NAME);
      cdsData_CRAFT_NAME.AsString:=
        frCraft.cdsCraftCRAFT_CODE.AsString + ' - ' + frCraft.cdsCraft_CRAFT_NAME.AsString;
    end
  else
    begin
      cdsData_CRAFT_TYPE_NAME.Clear;
      cdsData_CRAFT_NAME.Clear;
    end;

  cdsData_SHIFT_IDENTIFIER.AsVariant:= cdsOccupationShifts_MAX_CURRENT_SHIFT_IDENTIFIER.AsVariant;
end;

procedure TfmOccupation.RecalcStatus;
var
  d: TDateTime;
begin
  CheckEditMode(cdsData);
  if cdsDataOCCUPATION_BEGIN_DATE.IsNull then
    cdsDataIS_ACTIVE.Clear
  else
    begin
      if (EditMode = emInsert) or cdsDataTHE_DATE.IsNull then
        d:= ContextDate
      else
        d:= cdsDataTHE_DATE.AsDateTime;

      cdsDataIS_ACTIVE.AsBoolean:=
        InRange(d, cdsDataOCCUPATION_BEGIN_DATE.AsDateTime, cdsDataOCCUPATION_END_DATE.AsDateTime);
    end;
end;

procedure TfmOccupation.btnOccupationProfessionDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnOccupationProfessionDocs, dotProfession, cdsGridData);
end;

procedure TfmOccupation.btnOccupationNotProfessionDocsClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnOccupationNotProfessionDocs, dotProfession, cdsOtherGridData);
end;

procedure TfmOccupation.actFilterOccupationNotSysRolesExecute(Sender: TObject);
begin
  inherited;
  if TfmOccSysRolesFilter.ShowForm(dmDocClient, pdsSysRolesIsFilterAcceptedParams) then
    FilterSysRolesDataSets;
end;

procedure TfmOccupation.actFormUpdate(Sender: TObject);
begin
  inherited;

  pnlPrintButton.Visible:= not GetApplyUpdatesEnabled;
  pnlPrintCheckbox.Visible:= GetApplyUpdatesEnabled;

  btnOccupationProfessionDocs.Enabled:= cdsGridDataHAS_DOCUMENTATION.AsBoolean;
  btnOccupationNotProfessionDocs.Enabled:= cdsOtherGridDataHAS_DOCUMENTATION.AsBoolean;

  cbOccupationIsMain.ReadOnly:= (EditMode = emReadOnly) or cdsDataIS_OCCUPIED.AsBoolean;
  cbOccupationIsMain.Color:= ReadOnlyColors[cbOccupationIsMain.ReadOnly];

  pnlSysRolesFilter.Visible:= (FVisibleSysRolesType = srtActivities);
  btnOccupationEffectiveActivities.Visible:= (FVisibleSysRolesType = srtActivities);

  FfmOccupationProfessionsDepts.cdsGridData.ReadOnly:=
    (EditMode = emReadOnly) or
    PrcDataModified or
    OccupationProfessionsModified;
end;

procedure TfmOccupation.RefilterSysRolesDataSets;

  procedure RefilterSysRolesDataSet(ADataSet: TDataSet);
  var
    b: TBookmark;
  begin
    ADataSet.DisableControls;
    try
      b:= ADataSet.Bookmark;
      try
        ADataSet.Filtered:= False;
        ADataSet.Filtered:= True;
      finally
        try
          ADataSet.Bookmark:= b;
        except
          ADataSet.First;
        end;  { try }
      end;  { try }
    finally
      ADataSet.EnableControls;
    end;  { try }
  end;

begin
  RefilterSysRolesDataSet(cdsOccupationSysRoles);
  RefilterSysRolesDataSet(cdsOccupationNotSysRoles);
end;

function TfmOccupation.OccupationWorkDeptsModified: Boolean;
begin
  Result:= (FfmOccupationProfessionsDepts.cdsGridData.ChangeCount > 0);
end;

function TfmOccupation.PrcDataModified: Boolean;
begin
  Result:= FfrPrcData.IsDataModified;
end;

function TfmOccupation.OccupationProfessionsModified: Boolean;
begin
  Result:= (cdsGridData.ChangeCount > 0);
end;

procedure TfmOccupation.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = FfrPrcData) and
     (OccupationWorkDeptsModified or OccupationProfessionsModified) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  if (AFrame = frProfessions) and
     (PrcDataModified or OccupationWorkDeptsModified) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmOccupation.actShowSRTActivitiesExecute(Sender: TObject);
begin
  inherited;
  FVisibleSysRolesType:= srtActivities;
  RefilterSysRolesDataSets;
end;

procedure TfmOccupation.actShowSRTDocItemsExecute(Sender: TObject);
begin
  inherited;
  FVisibleSysRolesType:= srtDocItems;
  RefilterSysRolesDataSets;
end;

procedure TfmOccupation.actShowSRTFilterVariantsExecute(Sender: TObject);
begin
  inherited;
  FVisibleSysRolesType:= srtFilterVariants;
  RefilterSysRolesDataSets;
end;

procedure TfmOccupation.cdsDataOCCUPATION_BEGIN_DATEChange(Sender: TField);
begin
  inherited;
  RecalcStatus;
end;

procedure TfmOccupation.cdsOccupationNotSysRolesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DataSet.Subtract(cdsOccupationSysRoles, 'SYS_ROLE_CODE');
end;

procedure TfmOccupation.cdsOccupationNotSysRolesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsOccupationNotSysRoles.Params.ParamByName('OCCUPATION_CODE').AsInteger:= cdsDataOCCUPATION_CODE.AsInteger;
end;

procedure TfmOccupation.cdsOccupationNotSysRolesFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:= (IntToSysRoleType(cdsOccupationNotSysRolesSYS_ROLE_TYPE_CODE.AsInteger) = FVisibleSysRolesType);
end;

procedure TfmOccupation.cdsOccupationPhasesCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsOccupationPhases_SHOW_NAME.AsString:=
    cdsOccupationPhasesOCCUPATION_PHASE_CODE.AsString + '-' +
    cdsOccupationPhasesOCCUPATION_PHASE_NAME.AsString;
end;

procedure TfmOccupation.Initialize;
begin
  inherited;
  FStartOccupationPhaseCode:= cdsDataOCCUPATION_PHASE_CODE.AsInteger;
  FfmOccupationProfessionsDepts.cdsGridData.ReadOnly:= (EditMode = emReadOnly);

  pcOccupationDetails.ActivePageIndex:= 0;

  if cdsDataIS_OCCUPIED.AsBoolean then
    FfrPrcData.DefaultPrcOrgDistributionStatus:= podsOccupationEmployee
  else
    FfrPrcData.DefaultPrcOrgDistributionStatus:= podsOccupation;

  if FInsertWorkDept then
    begin
      cdsDataDEPT_CODE.Clear;

      cdsData.TempDisableRecordChecks/
        cdsDataqryOccupationDepts.NestedDataSet.SafeAppend/
          procedure begin
            cdsDataqryOccupationDepts.NestedDataSet.FieldByName('DEPT_CODE').AssignFromDataSet(OuterDataSet);
            cdsDataqryOccupationDepts.NestedDataSet.FieldByName('OCC_WORK_DEPT_PRIORITY_CODE').AssignFromDataSet(OuterDataSet);
            cdsDataqryOccupationDepts.NestedDataSet.FieldByName('DEPT_OWDP_COVER_TYPE_CODE').AssignFromDataSet(OuterDataSet);
            cdsDataqryOccupationDepts.NestedDataSet.FieldByName('IS_CAPACITY_GENERATOR').AssignFromDataSet(OuterDataSet);
          end;
    end;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotOccupation, dsData.DataSet);
end;

procedure TfmOccupation.cdsDataOCCUPATION_PHASE_CODEValidate(
  Sender: TField);
begin
  inherited;
  if (FStartOccupationPhaseCode > 1) and (Sender.AsInteger <= 1) then
    raise Exception.Create(SIncorrectOccupationPhase);
end;

procedure TfmOccupation.DoApplyUpdates;
var
  SysRolesChanged: Boolean;
begin
  if (cdsOccupationShifts.RecordCount = 0) or
     (cdsDataOCCUPATION_BEGIN_DATE.AsDateTime <> VarToDateTime(cdsOccupationShifts_MIN_BEGIN_DATE.AsVariant)) or
     (cdsDataOCCUPATION_END_DATE.AsDateTime <> VarToDateTime(cdsOccupationShifts_MAX_END_DATE.AsVariant)) or
     (cdsDataOCCUPATION_END_DATE.AsDateTime - cdsDataOCCUPATION_BEGIN_DATE.AsDateTime + 1 <>
      VarToInt(cdsOccupationShifts_SUM_PERIOD_DAYS.AsVariant)) then
    raise Exception.Create(SIncorrectShiftDateIntervals);

  if (cdsOccupationSalaries.RecordCount = 0) or
     (cdsDataOCCUPATION_BEGIN_DATE.AsDateTime <> VarToDateTime(cdsOccupationSalaries_MIN_BEGIN_DATE.AsVariant)) or
     (cdsDataOCCUPATION_END_DATE.AsDateTime <> VarToDateTime(cdsOccupationSalaries_MAX_END_DATE.AsVariant)) or
     (cdsDataOCCUPATION_END_DATE.AsDateTime - cdsDataOCCUPATION_BEGIN_DATE.AsDateTime + 1 <>
      VarToInt(cdsOccupationSalaries_SUM_PERIOD_DAYS.AsVariant)) then
    raise Exception.Create(SIncorrectSalaryDateIntervals);

  if cdsDataDOC_CODE.IsNull then
    begin
      CheckEditMode(cdsData);
      dmDocClient.DSNewDoc(cdsData);
    end;

  SysRolesChanged:= (cdsOccupationSysRoles.ChangeCount > 0);

  inherited;

  if SysRolesChanged then
    begin
      dmMain.RefreshLoginContext;
      fmMain.LoadCustomMenuItems;
    end;  { if }
end;

procedure TfmOccupation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  if (ModalResult = mrOk) and (pnlPrintCheckbox.Visible) and (chkPrint.Checked) then
    actPrint.Execute;
end;

procedure TfmOccupation.actPrintExecute(Sender: TObject);
const
  SysRoleTypeOriginIndices: array[TSysRoleType] of Integer = (0, 5, 7, 9, 0);

var
  b: TBookmark;
  SavedVisibleSysRolesType: TSysRoleType;
begin
  // do not call inherited

  // force calcfields
  b:= cdsData.Bookmark;
  try
    cdsData.First;
    cdsData.Last;
  finally
    cdsData.Bookmark:= b;
  end;

  cdsPrint.CreateDataSet;
  try
    cdsPrint.Append;
    cdsPrintORIGIN_INDEX.AsInteger:= 1;
    AssignFields(cdsData, cdsPrint);
    cdsPrintCURRENT_BASE_SALARY.Assign(cdsOccupationSalaries_MAX_CURRENT_BASE_SALARY);
    cdsPrintCURRENT_DATE_UNIT_NAME.AsString:= cdsOccupationSalaries_MAX_CURRENT_DATE_UNIT_NAME.DisplayText;
    cdsPrintCURRENT_MIN_SALARY_RATIO_COEF.Assign(cdsOccupationSalaries_MAX_CUR_MIN_SALARY_RATIO_COEF);
    cdsPrintCURRENT_MAX_SALARY_RATIO_COEF.Assign(cdsOccupationSalaries_MAX_CUR_MAX_SALARY_RATIO_COEF);
    cdsPrint.Post;

    FfmOccupationProfessionsDepts.cdsGridData.DisableControls;
    try
      b:= FfmOccupationProfessionsDepts.cdsGridData.Bookmark;
      try
        FfmOccupationProfessionsDepts.cdsGridData.First;
        while not FfmOccupationProfessionsDepts.cdsGridData.Eof do
          begin
            cdsPrint.Append;
            cdsPrintORIGIN_INDEX.AsInteger:= 2;
            AssignFields(FfmOccupationProfessionsDepts.cdsGridData, cdsPrint);
            cdsPrint.Post;
            FfmOccupationProfessionsDepts.cdsGridData.Next;
          end;
      finally
        FfmOccupationProfessionsDepts.cdsGridData.Bookmark:= b;
      end;  { try }
    finally
      FfmOccupationProfessionsDepts.cdsGridData.EnableControls;
    end;  { try }

    cdsPrint.Append;
    cdsPrintORIGIN_INDEX.AsInteger:= 3;
    AssignFields(cdsData, cdsPrint);
    cdsPrintSPEC_STATE_CODE.Assign(frProduct.cdsExtendedInfoSPEC_STATE_CODE);
    cdsPrintCOMMON_STATUS_CODE.Assign(frProduct.cdsExtendedInfoCOMMON_STATUS_CODE);
    cdsPrint_COMMON_PRODUCTS_LEVELS.Assign(frProduct.cdsExtendedInfo_COMMON_PRODUCTS_LEVELS_SHOW);
    cdsPrint.Post;

    cdsGridData.DisableControls;
    try
      b:= cdsGridData.Bookmark;
      try
        cdsGridData.First;
        while not cdsGridData.Eof do
          begin
            cdsPrint.Append;
            cdsPrintORIGIN_INDEX.AsInteger:= 4;

            if not cdsGridData.Eof then
              begin
                AssignFields(cdsGridData, cdsPrint);
                cdsGridData.Next;
              end;

            cdsPrintIS_INCLUDED_PROFESSIONS_RECORD.AsBoolean:= True;
            cdsPrintIS_EXCLUDED_PROFESSIONS_RECORD.AsBoolean:= False;

            cdsPrint.Post;
          end;
      finally
        cdsGridData.Bookmark:= b;
      end;  { try }
      
    finally
      cdsGridData.EnableControls;
    end;  { try }

    cdsOccupationSysRoles.TempDisableControls/
      cdsOccupationSysRoles.PreserveBookmark/
        cdsOccupationNotSysRoles.TempDisableControls/
          cdsOccupationNotSysRoles.PreserveBookmark/
            procedure
            var
              SysRoleType: TSysRoleType;
            begin
              SavedVisibleSysRolesType:= FVisibleSysRolesType;
              try
                for SysRoleType in [srtActivities, srtFilterVariants, srtDocItems] do
                  begin
                    FVisibleSysRolesType:= SysRoleType;
                    RefilterSysRolesDataSets;

                    cdsPrint.SafeAppend/
                      procedure begin
                        cdsPrintORIGIN_INDEX.AsInteger:= SysRoleTypeOriginIndices[SysRoleType];
                      end;

                    cdsOccupationSysRoles.ForEach/
                      cdsPrint.SafeAppend/
                        procedure begin
                          cdsPrintORIGIN_INDEX.AsInteger:= SysRoleTypeOriginIndices[SysRoleType] + 1;
                          AssignFields(cdsOccupationSysRoles, cdsPrint);
                        end;
                  end;
              finally
                if (FVisibleSysRolesType <> SavedVisibleSysRolesType) then
                  begin
                    FVisibleSysRolesType:= SavedVisibleSysRolesType;
                    RefilterSysRolesDataSets;
                  end;
              end;
            end;

    TrptOccupation.PrintReport(cdsPrint);
  finally
    cdsPrint.Close;
  end;  { try }
end;

procedure TfmOccupation.actPrintUpdate(Sender: TObject);
begin
  // do not call inherited
  (Sender as TAction).Enabled:= True;
end;

procedure TfmOccupation.actNotesExecute(Sender: TObject);
begin
  inherited;
  TfmNotes.EditNotesField(cdsDataNOTES, EditMode);
end;

procedure TfmOccupation.actNotesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= IfThen(cdsDataNOTES.AsString = '', 207, 57);
end;

procedure TfmOccupation.cdsDataSPEC_STATE_CODEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (not Sender.IsNull) and (not cdsDataPRODUCT_CODE.IsNull) then
    Text:= '   ' + SpecStateAbbrevs[Sender.AsInteger]
  else
    Text:= '';
end;

procedure TfmOccupation.cdsOccupationShiftsNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsOccupationShiftsOCCUPATION_SHIFT_CODE.AsInteger:=
    VarToInt(cdsOccupationShifts_MAX_OCCUPATION_SHIFT_CODE.AsVariant) + 1;
  cdsOccupationShiftsOCCUPATION_CODE.AsInteger:= cdsDataOCCUPATION_CODE.AsInteger;
  cdsOccupationShiftsAFFECTS_EMP_AVAILABILITY.AsBoolean:= cdsDataIS_MAIN.AsBoolean;
end;

procedure TfmOccupation.cdsOccupationSysRolesFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:= (IntToSysRoleType(cdsOccupationSysRolesSYS_ROLE_TYPE_CODE.AsInteger) = FVisibleSysRolesType);
end;

procedure TfmOccupation.cdsOccupationSalariesBeforePost(DataSet: TDataSet);
var
  d: TDateTime;
begin
  inherited;

  CheckRequiredFields([
    cdsOccupationSalariesBEGIN_DATE,
    cdsOccupationSalariesEND_DATE,
    cdsOccupationSalariesBASE_SALARY,
    cdsOccupationSalaries_DATE_UNIT_NAME,
    cdsOccupationSalariesMIN_SALARY_RATIO_COEF,
    cdsOccupationSalariesMAX_SALARY_RATIO_COEF
  ]);

  CheckFloatInterval(cdsOccupationSalariesMIN_SALARY_RATIO_COEF, cdsOccupationSalariesMAX_SALARY_RATIO_COEF);

  if (EditMode = emInsert) or cdsDataTHE_DATE.IsNull then
    d:= ContextDate
  else
    d:= cdsDataTHE_DATE.AsDateTime;

  if InRange(d, cdsOccupationSalariesBEGIN_DATE.AsDateTime, cdsOccupationSalariesEND_DATE.AsDateTime) then
    begin
      cdsOccupationSalariesCURRENT_BASE_SALARY.Assign(cdsOccupationSalariesBASE_SALARY);
      cdsOccupationSalariesCURRENT_DATE_UNIT_NAME.Assign(cdsOccupationSalaries_DATE_UNIT_NAME);
      cdsOccupationSalariesCURRENT_MIN_SALARY_RATIO_COEF.Assign(cdsOccupationSalariesMIN_SALARY_RATIO_COEF);
      cdsOccupationSalariesCURRENT_MAX_SALARY_RATIO_COEF.Assign(cdsOccupationSalariesMAX_SALARY_RATIO_COEF);
    end
  else
    begin
      cdsOccupationSalariesCURRENT_BASE_SALARY.Clear;
      cdsOccupationSalariesCURRENT_DATE_UNIT_NAME.Clear;
      cdsOccupationSalariesCURRENT_MIN_SALARY_RATIO_COEF.Clear;
      cdsOccupationSalariesCURRENT_MAX_SALARY_RATIO_COEF.Clear;
    end;
end;

procedure TfmOccupation.cdsOccupationSalariesBEGIN_DATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  if Sender.DataSet.IsEmpty then
    Text:= ''
  else
    Text:=
      dmMain.GetDateIntervalAsShortString(Sender.AsDateTime,
        cdsOccupationSalariesEND_DATE.AsDateTime);
end;

procedure TfmOccupation.cdsOccupationSalariesNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsOccupationSalariesOCCUPATION_SALARY_CODE.AsInteger:=
    VarToInt(cdsOccupationSalaries_MAX_OCCUPATION_SALARY_CODE.AsVariant) + 1;
  cdsOccupationSalariesOCCUPATION_CODE.AsInteger:= cdsDataOCCUPATION_CODE.AsInteger;
end;

procedure TfmOccupation.cdsOccupationSalaries_MAX_CURRENT_BASE_SALARYGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOccupation.cdsOccupationSalaries_MAX_CURRENT_DATE_UNIT_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if VarIsNull(Sender.AsVariant) then
    Text:= ''
  else
    Text:= Format('%s / %s', [LoginContext.BaseCurrencyAbbrev, DecodeDBTextMessage(Sender.AsString)]);
end;

procedure TfmOccupation.cdsOccupationShiftsBeforePost(DataSet: TDataSet);
var
  d: TDateTime;
begin
  inherited;

  CheckRequiredField(cdsOccupationShifts_SHIFT_IDENTIFIER);

  if (EditMode = emInsert) or cdsDataTHE_DATE.IsNull then
    d:= ContextDate
  else
    d:= cdsDataTHE_DATE.AsDateTime;

  if InRange(d, cdsOccupationShiftsBEGIN_DATE.AsDateTime, cdsOccupationShiftsEND_DATE.AsDateTime) then
    cdsOccupationShiftsCURRENT_SHIFT_IDENTIFIER.AsString:= cdsOccupationShifts_SHIFT_IDENTIFIER.AsString
  else
    cdsOccupationShiftsCURRENT_SHIFT_IDENTIFIER.Clear;
end;

procedure TfmOccupation.cdsOccupationShiftsBEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if Sender.DataSet.IsEmpty then
    Text:= ''
  else
    Text:=
      dmMain.GetDateIntervalAsShortString(Sender.AsDateTime,
        cdsOccupationShiftsEND_DATE.AsDateTime);
end;

procedure TfmOccupation.actOccupationEffectiveActivitiesExecute(Sender: TObject);
begin
  inherited;
  TfmOccupationEffectiveActivities.ShowForm(nil, cdsData, emReadOnly);
end;

procedure TfmOccupation.actOccupationEffectiveActivitiesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emInsert) and
    (cdsOccupationSysRoles.ChangeCount = 0);
end;

procedure TfmOccupation.actOccupationSalariesExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  LoginContext.CheckUserActivity(uaShowSalary);

  if (EditMode = emInsert) then
    em:= emEdit
  else
    em:= EditMode;

  TfmOccupationSalaries.ShowForm(dmDocClient, cdsOccupationSalaries, em);
end;

procedure TfmOccupation.actOccupationShiftsExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if (EditMode = emInsert) then
    em:= emEdit
  else
    em:= EditMode;

  TfmOccupationShifts.ShowForm(dmDocClient, cdsOccupationShifts, em);
end;

end.


