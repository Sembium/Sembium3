unit fOccupationAndEmployee;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields, Mask, DBCtrls,
  JvDBLookup, ToolWin, ComCtrls, JvToolEdit, JvDBControls, GridsEh, DBGridEh,
  AbmesDBGrid, fBaseFrame, fDBFrame, fFieldEditFrame, 
  fGridForm, ParamDataSet, ColorNavigator, fDualGridFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDateIntervalFrame,
  fProductFieldEditFrame, JvEdit, JvExControls, JvComponent, JvExStdCtrls,
  JvCaptionButton, fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald,
  fEditForm, fCraftEditFrame, fProductFieldEditFrameBald,
  fDeptFieldEditFrameBald, dDocClient, uClientTypes,
  fEmployeeDisciplineEvents, JvComponentBase, fProductFieldEditFrameLabeled,
  fProductExFieldEditFrame, DBGridEhGrouping;

type
  TfmOccupationAndEmployee = class(TEditForm)
    gbOccupation: TGroupBox;
    cdsDataOCCUPATION_CODE: TAbmesFloatField;
    cdsDataOCCUPATION_NAME: TAbmesWideStringField;
    cdsDataOCCUPATION_LEVEL: TAbmesFloatField;
    cdsDataIS_ACTIVE: TAbmesFloatField;
    cdsDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsDataDEPT_CODE: TAbmesFloatField;
    cdsDataDEPT_NAME: TAbmesWideStringField;
    cdsDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDataSHIFT_CODE: TAbmesFloatField;
    cdsDataqryOAEDisciplineEvents: TDataSetField;
    cdsDataqryOAEProfessionsDepts: TDataSetField;
    cdsOAEProfessions: TAbmesClientDataSet;
    cdsOAEProfessionsPROFESSION_CODE: TAbmesFloatField;
    cdsOAEProfessionsPROFESSION_NAME: TAbmesWideStringField;
    cdsOAEProfessionsDepts: TAbmesClientDataSet;
    cdsOAEProfessionsDeptsOCCUPATION_CODE: TAbmesFloatField;
    cdsOAEProfessionsDeptsDEPT_CODE: TAbmesFloatField;
    cdsOAEProfessionsDeptsDEPT_NAME: TAbmesWideStringField;
    cdsOAEProfessionsDeptsDEPT_IDENTIFIER: TAbmesWideStringField;
    dsOAEProfessionsDepts: TDataSource;
    cdsDataSHIFT_IDENTIFIER: TAbmesWideStringField;
    pcMain: TPageControl;
    tsProfessions: TTabSheet;
    tsDiscplineEvents: TTabSheet;
    cdsOAENeededProfessions: TAbmesClientDataSet;
    cdsOAENeededProfessionsOCCUPATION_CODE: TAbmesFloatField;
    cdsOAENeededProfessionsPROFESSION_CODE: TAbmesFloatField;
    cdsOAENeededProfessionsPROFESSION_NAME: TAbmesWideStringField;
    frProfessions: TDualGridFrame;
    cdsOAEProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    cdsOAENeededProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    cdsData_IS_OCCUPIED: TAbmesFloatField;
    cdsData_STATUS_ABBREV: TAbmesWideStringField;
    cdsEmployeeProfessions: TAbmesClientDataSet;
    cdsEmployeeProfessionsPROFESSION_CODE: TAbmesFloatField;
    actReleaseEmployee: TAction;
    tsAbilities: TTabSheet;
    frEmployeeAbilities: TDualGridFrame;
    cdsEmployeeAbilities: TAbmesClientDataSet;
    cdsEmployeeAbilitiesEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeAbilitiesPROFESSION_CODE: TAbmesFloatField;
    cdsEmployeeAbilitiesPROFESSION_NAME: TAbmesWideStringField;
    cdsEmployeeAbilitiesHAS_DOCUMENTATION: TAbmesFloatField;
    cdsEmployeeNotAbilities: TAbmesClientDataSet;
    gbOccupationDates: TGroupBox;
    cdsDataOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataOCCUPATION_END_DATE: TAbmesSQLTimeStampField;
    cdsDataOCCUPATION_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataOCCUPATION_DOC_CODE: TAbmesFloatField;
    pnlProfessionsTop: TPanel;
    pnlEmployeeAbilitiesTop: TPanel;
    tlbProfessionDocs: TToolBar;
    btnProfessionDocs: TSpeedButton;
    navGridData: TDBColorNavigator;
    tlbNotProfessionDocs: TToolBar;
    btnNotProfessionDocs: TSpeedButton;
    navOtherGridData: TDBColorNavigator;
    cdsOAEProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsOAEProfessionsDOC_CODE: TAbmesFloatField;
    cdsEmployeeAbilitiesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsEmployeeAbilitiesDOC_CODE: TAbmesFloatField;
    cdsOAENeededProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsOAENeededProfessionsDOC_CODE: TAbmesFloatField;
    tlbEmployeeAbilitiesDocs: TToolBar;
    btnEmployeeAbilitiesDocs: TSpeedButton;
    navEmployeeAbilities: TDBColorNavigator;
    tlbEmployeeNotAbilitiesDocs: TToolBar;
    btnEmployeeNotAbilitiesDocs: TSpeedButton;
    navEmployeeNotAbilities: TDBColorNavigator;
    cdsEmployeeNotAbilitiesEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeNotAbilitiesPROFESSION_CODE: TAbmesFloatField;
    cdsEmployeeNotAbilitiesPROFESSION_NAME: TAbmesWideStringField;
    cdsEmployeeNotAbilitiesHAS_DOCUMENTATION: TAbmesFloatField;
    cdsEmployeeNotAbilitiesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsEmployeeNotAbilitiesDOC_CODE: TAbmesFloatField;
    cdsOAEProfessionsDeptsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsOAEProfessionsDeptsDOC_CODE: TAbmesFloatField;
    cdsOAEProfessionsDeptsHAS_DOCUMENTATION: TAbmesFloatField;
    cdsOAENeededProfessionsEMP_HAS_THE_PROFESSION: TAbmesFloatField;
    cdsOAEProfessionsOCCUPATION_CODE: TAbmesFloatField;
    cdsDataqryOccupationEmployee: TDataSetField;
    cdsOccupationEmployee: TAbmesClientDataSet;
    cdsOccupationEmployeeOCCUPATION_CODE: TAbmesFloatField;
    cdsOccupationEmployeeEMPLOYEE_CODE: TAbmesFloatField;
    cdsOccupationEmployeeASSIGNMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsOccupationEmployeeASSIGNMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsOccupationEmployeeEMPLOYEE_EGN: TAbmesWideStringField;
    cdsOccupationEmployeeEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsOccupationEmployeeEMPLOYEE_DOC_CODE: TAbmesFloatField;
    dsOccupationEmployee: TDataSource;
    cdsDataNOTES: TAbmesWideStringField;
    cdsOAEProfessionsDeptsOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    cdsDataqryOAENeededProfessions: TDataSetField;
    cdsOccupationEmployeeqryOAEProfessions: TDataSetField;
    frOccupationDateInterval: TfrDateIntervalFrame;
    cdsDataIS_MAIN: TAbmesFloatField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataPRODUCT_NAME: TAbmesWideStringField;
    cdsDataPRODUCT_NO: TAbmesFloatField;
    cdsOAEProfessionsDeptsDEPT_IS_EXTERNAL: TAbmesFloatField;
    cdsOAEProfessionsDeptsDEPT_IS_RECURRENT: TAbmesFloatField;
    cdsDataDEPT_IS_EXTERNAL: TAbmesFloatField;
    cdsDataDEPT_IS_RECURRENT: TAbmesFloatField;                                                                                      
    lblProfessionsStatus: TLabel;
    edtProfessionsStatus: TJvEdit;
    cdsData_PROFESSIONS_STATUS: TAbmesWideStringField;
    cdsOAEProfessions_PROFESSIONS_STATUS: TAbmesWideStringField;
    actShowOccupation: TAction;
    cdsData_OCCUPATION_PERIOD: TAbmesWideStringField;
    cdsOccupationEmployee_ASSIGNMENT_PERIOD: TAbmesWideStringField;
    cdsDataOCCUPATION_PHASE_NAME: TAbmesWideStringField;
    cdsOAEProfessionsDeptsOCC_WORK_DEPT_PR_FULL_NAME: TAbmesWideStringField;
    lblOccupationDaysLeft: TLabel;
    lblCalendarDays: TLabel;
    edtOccupationDaysLeft: TDBEdit;
    pnlNotes: TPanel;
    actNotes: TAction;
    btnNotes: TBitBtn;
    cdsData_DAYS_LEFT: TAbmesFloatField;
    cdsOccupationEmployee_ASSIGNMENT_DAYS_LEFT: TAbmesFloatField;
    cdsDataCRAFT_CODE: TAbmesFloatField;
    cdsDataCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsOccupationEmployeeOE_REGIME_CODE: TAbmesFloatField;
    cdsOERegimes: TAbmesClientDataSet;
    cdsOERegimesOE_REGIME_CODE: TAbmesFloatField;
    cdsOERegimesOE_REGIME_NAME: TAbmesWideStringField;
    cdsOccupationEmployee_OE_REGIME_NAME: TAbmesWideStringField;
    pnlOccupationId: TPanel;
    lblOccupationName: TLabel;
    lblStatus: TLabel;
    lblIsMain: TLabel;
    edtOccupationName: TDBEdit;
    edtStatus: TDBEdit;
    tlbOccupationDocs: TToolBar;
    btnOccupationDocs: TSpeedButton;
    edtIsMain: TDBEdit;
    pnlPhase: TPanel;
    lblPhase: TLabel;
    edtPhase: TDBEdit;
    pnlShift: TPanel;
    lblOccupationLevel: TLabel;
    edtOccupationLevel: TDBEdit;
    lblShift: TLabel;
    edtShift: TDBEdit;
    gbCoefs: TGroupBox;
    gbOccupationEmployee: TGroupBox;
    frEmployee: TfrEmployeeFieldEditFrameBald;
    cbOERegime: TJvDBLookupCombo;
    lblAssignmentDaysLeft: TLabel;
    lblEmployeeNo: TLabel;
    frDateInterval: TfrDateIntervalFrame;
    edtAssignmentDaysLeft: TDBEdit;
    gbCraft: TGroupBox;
    lblEmployee: TLabel;
    lblOERegime: TLabel;
    lblDateInterval: TLabel;
    gbDept: TGroupBox;
    edtDeptIsExternal: TDBEdit;
    edtDeptIsRecurrent: TDBEdit;
    btnShowOccupation: TSpeedButton;
    frDept: TfrDeptFieldEditFrameBald;
    cdsNotes: TAbmesClientDataSet;
    cdsNotesNOTES: TAbmesWideStringField;
    cdsData_CRAFT_NAME: TAbmesWideStringField;
    cdsData_CRAFT_TYPE_NAME: TAbmesWideStringField;
    cdsData_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsOAEProfessionsDeptsOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField;
    cdsOccupationEmployeeOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    cdsOAEProfessionsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    pnlBottomButtonsClient: TPanel;
    pnlPrintCheckBox: TPanel;
    chkPrint: TCheckBox;
    pnlPrintButton: TPanel;
    btnPrint: TBitBtn;
    frEmployeeDisciplineEvents: TfrEmployeeDisciplineEvents;
    cdsEmployeeDisciplineEvents: TAbmesClientDataSet;
    cdsEmployeeDisciplineEventsEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeDisciplineEventsDISCIPLINE_EVENT_CODE: TAbmesFloatField;
    cdsEmployeeDisciplineEventsDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsEmployeeDisciplineEventsDISCIPLINE_EVENT_COMMENT: TAbmesWideStringField;
    cdsEmployeeDisciplineEventsDISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField;
    cdsEmployeeDisciplineEventsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeDisciplineEventsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsEmployeeDisciplineEventsDOC_CODE: TAbmesFloatField;
    cdsEmployeeDisciplineEventsHAS_DOC_ITEMS: TAbmesFloatField;
    cdsEmployeeDisciplineEventsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeDisciplineEventsCREATE_DATE: TAbmesSQLTimeStampField;
    cdsEmployeeDisciplineEventsCREATE_TIME: TAbmesSQLTimeStampField;
    cdsEmployeeDisciplineEventsSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeDisciplineEventsSTORNO_DATE: TAbmesSQLTimeStampField;
    cdsEmployeeDisciplineEventsSTORNO_TIME: TAbmesSQLTimeStampField;
    cdsEmployeeDisciplineEventsIS_NOT_STORNO: TAbmesFloatField;
    cdsEmployeeDisciplineEventsOLD_DISCIPLINE_EVENT_CODE: TAbmesFloatField;
    cdsEmployeeDisciplineEventsRATING: TAbmesFloatField;
    cdsEmployeeDisciplineEventsIS_NEGATIVE: TAbmesFloatField;
    cdsEmployeeDisciplineEventsIS_POSITIVE: TAbmesFloatField;
    cdsEmployeeDisciplineEventsIS_ACTIVE: TAbmesFloatField;
    cdsEmployeeDisciplineEventsDIRECT_STORNO: TAbmesFloatField;
    cdsData_EMPLOYEE_NO: TAbmesFloatField;
    cdsDataBASE_SALARY: TAbmesFloatField;
    cdsDataMIN_SALARY_RATIO_COEF: TAbmesFloatField;
    cdsDataMAX_SALARY_RATIO_COEF: TAbmesFloatField;
    cdsDataBASE_SALARY_DATE_UNIT_NAME: TAbmesWideStringField;
    blSalaryRatioCoefDash: TLabel;
    lblBaseSalary: TLabel;
    txtBaseSalaryCurrency: TDBText;
    edtCurrentSalaryRatioCoefInterval: TLabel;
    edtMinSalaryRatioCoef: TDBEdit;
    edtMaxSalaryRatioCoef: TDBEdit;
    edtBaseSalary: TDBEdit;
    cdsOccupationEmployeeSALARY: TAbmesFloatField;
    cdsOccupationEmployeeSALARY_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsOccupationEmployee_SALARY_DATE_UNIT_NAME: TAbmesWideStringField;
    lblSalary: TLabel;
    edtSalary: TDBEdit;
    edtSalaryCurrency: TLabel;
    cbSalaryDateUnit: TJvDBLookupCombo;
    lblSalaryDateUnit: TLabel;
    cdsOccupationEmployee_SHOW_SALARY_DATE_UNIT: TAbmesWideStringField;
    cdsData_SHOW_BASE_SALARY_DATE_UNIT: TAbmesWideStringField;
    cdsOccupationEmployeeDOC_BRANCH_CODE: TAbmesFloatField;
    cdsOccupationEmployeeDOC_CODE: TAbmesFloatField;
    cdsOccupationEmployeeHAS_DOC_ITEMS: TAbmesFloatField;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    cdsDataIS_OCCUPIED: TAbmesFloatField;
    tsOccupationProfessionsDepts: TTabSheet;
    grdProfessionsDepts: TAbmesDBGrid;
    frCraft: TfrCraftEditFrame;
    frProduct: TfrProductExFieldEditFrame;
    pnlOccupationProfessionDeptsTop: TPanel;
    navOccupationProfessions: TDBColorNavigator;
    tlbProfessionDeptsDocs: TToolBar;
    btnProfessionDeptsDocs: TSpeedButton;
    lblProfessionDeptDoc: TLabel;
    cdsOAENeededProfessionsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    tsPrcData: TTabSheet;
    cdsOccupationEmployeeOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsOccupationEmployeeOCCUPATION_END_DATE: TAbmesSQLTimeStampField;
    cdsOccupationEmployeePRC_DATA: TBlobField;
    cdsOccupationEmployee_EMPLOYEE_NO: TAbmesFloatField;
    cdsOccupationEmployee_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsOAENeededProfessionsPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField;
    cdsOAENeededProfessionsPROFESSION_KIND_NO: TAbmesFloatField;
    cdsOAEProfessionsPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField;
    cdsOAEProfessionsPROFESSION_KIND_NO: TAbmesFloatField;
    cdsOAEProfessionsDeptsDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    cdsOAEProfessionsDeptsOWDP_IS_CAPACITY_GENERATOR: TAbmesFloatField;
    tlbProfessionsDeptsButtons: TToolBar;
    sepFilterCoveredDepts: TToolButton;
    btnFilterCoveredDepts: TToolButton;
    sepProfessionsDeptsDoc: TToolButton;
    actFilterCoveredDepts: TAction;
    cdsOAEProfessionsPROFESSION_FULL_NO: TAbmesWideStringField;
    cdsOAENeededProfessionsPROFESSION_FULL_NO: TAbmesWideStringField;
    cdsEmployeeAbilitiesPROFESSION_FULL_NO: TAbmesWideStringField;
    cdsEmployeeNotAbilitiesPROFESSION_FULL_NO: TAbmesWideStringField;
    cdsOAEProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsOAENeededProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsOAEProfessionsDeptsIS_DELEGATED: TAbmesFloatField;
    procedure cdsDataBASE_SALARYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsOccupationEmployeeSALARYGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDataBASE_SALARY_DATE_UNIT_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDataEMPLOYEE_CODEChange(Sender: TField);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsOAEProfessionsNewRecord(DataSet: TDataSet);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnOccupationDocsClick(Sender: TObject);
    procedure btnProfessionDocsClick(Sender: TObject);
    procedure btnNotProfessionDocsClick(Sender: TObject);
    procedure btnEmployeeAbilitiesDocsClick(Sender: TObject);
    procedure btnEmployeeNotAbilitiesDocsClick(Sender: TObject);
    procedure btnProfessionDeptsDocsClick(Sender: TObject);
    procedure cdsOAENeededProfessionsNewRecord(DataSet: TDataSet);
    procedure cdsOccupationEmployeeBeforePost(DataSet: TDataSet);
    procedure cdsOccupationEmployeeNewRecord(DataSet: TDataSet);
    procedure frProfessionsactIncludeExecute(Sender: TObject);
    procedure frProfessionsactIncludeAllExecute(Sender: TObject);
    procedure CanIncludeOccupationEmployeeProfession(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actPrintExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actShowOccupationExecute(Sender: TObject);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsOccupationEmployeeCalcFields(DataSet: TDataSet);
    procedure actNotesExecute(Sender: TObject);
    procedure cdsDataAfterInsert(DataSet: TDataSet);
    procedure cdsDataBeforeOpen(DataSet: TDataSet);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure btnDocsClick(Sender: TObject);
    procedure cdsOAEProfessionsDeptsDEPT_OWDP_COVER_TYPE_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure grdProfessionsDeptsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure actFilterCoveredDeptsExecute(Sender: TObject);
    procedure cdsOAEProfessionsDeptsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure actNotesUpdate(Sender: TObject);
  private
    FHadEmployee: Boolean;
    FDefaultsFromOuterDataSet: Boolean;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    procedure LoadEmployeeProfessions;
    procedure LoadEmployeeAbilitiesAndUpdatePageControl;
    procedure LoadEmployeeDisciplineEventsAndUpdatePageControl;
    procedure AddOccupationEmployee;
    procedure dmDocClientOnDataChanged(Sender: TObject);
  protected
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
    procedure Finalize; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone); override;
  end;

implementation

uses
  dMain, uClientUtils, uUtils, rOccupationAndEmployee,
  uDocUtils, uColorConsts, fOccupation, fNotes,
  uClientConsts, uUserActivityConsts, Math, 
  DateUtils, uOccupationUtils, uClientDateTime, fPrcDataFieldEditFrame,
  uPrcDeclarations, rOccupationAndEmployeePrcDataReport, uOWDPriorityTypes,
  uOWDPriorityClientConsts;

resourcestring
  SEmployeeAdditionalPrice = '%s / час';
  SAssignmentPeriodNotInOccupation =
    'Времевият интервал на назначение не се включва в този на длъжността (%s)!';
  SAssignmentPeriodNotInMainAssignment =
    'Времевият интервал на производно назначение не се включва в този на основното назначение (%s)!';
  SOccupationEmployee = 'Длъжностно Назначение';

{$R *.dfm}

{ TfmOccupationAndEmployee }

procedure TfmOccupationAndEmployee.OpenDataSets;
begin
  cdsDateUnits.Open;
  inherited;
  cdsOERegimes.Open;
  LoadEmployeeAbilitiesAndUpdatePageControl;
end;

procedure TfmOccupationAndEmployee.CloseDataSets;
begin
  cdsOERegimes.Close;
  cdsEmployeeNotAbilities.Close;
  inherited;
  cdsDateUnits.Close;
end;

procedure TfmOccupationAndEmployee.dmDocClientOnDataChanged(
  Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(cdsOccupationEmployeeHAS_DOC_ITEMS);
end;

procedure TfmOccupationAndEmployee.cdsDataEMPLOYEE_CODEChange(
  Sender: TField);
begin
  inherited;

  AddOccupationEmployee;

  LoadEmployeeProfessions;
  LoadEmployeeAbilitiesAndUpdatePageControl;
  LoadEmployeeDisciplineEventsAndUpdatePageControl;
end;

procedure TfmOccupationAndEmployee.actFilterCoveredDeptsExecute(Sender: TObject);
begin
  inherited;
  cdsOAEProfessionsDepts.Filtered:= not cdsOAEProfessionsDepts.Filtered;
end;

procedure TfmOccupationAndEmployee.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  ro:= (EditMode = emReadOnly) or (cdsData.Active and cdsOccupationEmployeeEMPLOYEE_CODE.IsNull);
  cbOERegime.ReadOnly:= ro;
  cbOERegime.Color:= ReadOnlyColors[ro];

  ro:= ro or not IsSalaryVisible;
  edtSalary.ReadOnly:= ro;
  cbSalaryDateUnit.ReadOnly:= ro;
  edtSalary.Color:= ReadOnlyColors[ro];
  cbSalaryDateUnit.Color:= ReadOnlyColors[ro];

  btnProfessionDocs.Enabled:= cdsOAEProfessions.Active and cdsOAEProfessionsHAS_DOCUMENTATION.AsBoolean;
  btnNotProfessionDocs.Enabled:= cdsOAENeededProfessions.Active and cdsOAENeededProfessionsHAS_DOCUMENTATION.AsBoolean;
  btnEmployeeAbilitiesDocs.Enabled:= cdsEmployeeAbilities.Active and cdsEmployeeAbilitiesHAS_DOCUMENTATION.AsBoolean;
  btnEmployeeNotAbilitiesDocs.Enabled:= cdsEmployeeNotAbilities.Active and cdsEmployeeNotAbilitiesHAS_DOCUMENTATION.AsBoolean;
  btnProfessionDeptsDocs.Enabled:= cdsOAEProfessionsDepts.Active and cdsOAEProfessionsDeptsHAS_DOCUMENTATION.AsBoolean;

  pnlPrintButton.Visible:= not GetApplyUpdatesEnabled;
  pnlPrintCheckbox.Visible:= GetApplyUpdatesEnabled;

  edtProfessionsStatus.Text:=
    Format('%d/%d', [
      (-cdsOAENeededProfessions.RecordCount),
      (cdsOAENeededProfessions.RecordCount + cdsOAEProfessions.RecordCount)
    ]);

  if (cdsOAENeededProfessions.RecordCount > 0) then
    edtProfessionsStatus.Color:= ccTotalLateNotSelected
  else
    edtProfessionsStatus.Color:= clBtnFace;

  btnDocs.ImageIndex:= cdsOccupationEmployeeHAS_DOC_ITEMS.AsInteger;
end;

class function TfmOccupationAndEmployee.CanUseDocs: Boolean;
begin
  Result:= True;
end;

class function TfmOccupationAndEmployee.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmOccupationAndEmployee.Initialize;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  FHadEmployee:= not cdsDataEMPLOYEE_CODE.IsNull;

  if (EditMode = emInsert) and FDefaultsFromOuterDataSet then
    begin
      CheckEditMode(cdsOccupationEmployee);
      cdsOccupationEmployeeASSIGNMENT_BEGIN_DATE.AsDateTime:=
        OuterDataSet.FieldByName('BEGIN_DATE').AsDateTime;
      cdsOccupationEmployeeASSIGNMENT_END_DATE.AsDateTime:=
        OuterDataSet.FieldByName('END_DATE').AsDateTime;
    end;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotOccupationEmployee, cdsOccupationEmployee);
end;

procedure TfmOccupationAndEmployee.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmOccupationAndEmployee.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDept) or
     (AFrame = frEmployeeAbilities) or
     (AFrame = frProduct) or
     (AFrame = frCraft) or
     (AFrame = frEmployeeDisciplineEvents) then
    AFrame.ReadOnly:= True
  else
    begin
      if (AFrame = frProfessions) and
         cdsDataEMPLOYEE_CODE.IsNull then
        AFrame.ReadOnly:= True
      else
        begin
          if (AFrame = frDateInterval) then
            AFrame.ReadOnly:= (EditMode = emReadOnly)
          else
            begin
              if (AFrame = frOccupationDateInterval) then
                AFrame.ReadOnly:= True
              else
                begin
                  if (AFrame = frEmployee) then
                    AFrame.ReadOnly:= FHadEmployee
                  else
                    inherited;
                end;
            end;
        end;
    end
end;

procedure TfmOccupationAndEmployee.cdsOAEProfessionsDeptsDEPT_OWDP_COVER_TYPE_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= DeptOWDPCoverTypeAbbrevs[Sender.AsDeptOWDPCoverType];
end;

procedure TfmOccupationAndEmployee.cdsOAEProfessionsDeptsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (cdsOAEProfessionsDeptsDEPT_OWDP_COVER_TYPE_CODE.AsDeptOWDPCoverType in [dowdpctLocal, dowdpctLocalAndDescendants]) and
    not cdsOAEProfessionsDeptsIS_DELEGATED.AsBoolean;
end;

procedure TfmOccupationAndEmployee.cdsOAEProfessionsNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsOAEProfessionsOCCUPATION_CODE.AsInteger:= cdsDataOCCUPATION_CODE.AsInteger;
end;

procedure TfmOccupationAndEmployee.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsData_IS_OCCUPIED.AsBoolean:=
    cdsDataIS_OCCUPIED.AsBoolean or
    ( (not cdsDataEMPLOYEE_CODE.IsNull) and
      (not cdsOccupationEmployeeASSIGNMENT_BEGIN_DATE.IsNull) and
      (not cdsOccupationEmployeeASSIGNMENT_END_DATE.IsNull) and
      InRange(cdsData.Params.ParamByName('THE_DATE').AsDateTime,
              cdsOccupationEmployeeASSIGNMENT_BEGIN_DATE.AsDateTime,
              cdsOccupationEmployeeASSIGNMENT_END_DATE.AsDateTime) );

  cdsData_STATUS_ABBREV.AsString:=
    cdsDataIS_ACTIVE.DisplayText +
    cdsData_IS_OCCUPIED.DisplayText;

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

  cdsData_SHOW_BASE_SALARY_DATE_UNIT.AsString:=
    cdsDataBASE_SALARY_DATE_UNIT_NAME.DisplayText;
end;

procedure TfmOccupationAndEmployee.cdsDataBASE_SALARYGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOccupationAndEmployee.cdsDataBASE_SALARY_DATE_UNIT_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if VarIsNull(Sender.AsVariant) then
    Text:= ''
  else
    Text:= Format('%s / %s', [LoginContext.BaseCurrencyAbbrev, Sender.AsString]);
end;

procedure TfmOccupationAndEmployee.LoadEmployeeProfessions;
var
  ProfessionCode: Integer;
  SaveActiveControl: TWinControl;
begin
  SaveActiveControl:= ActiveControl;
  try
    cdsOAEProfessions.DisableControls;
    cdsOAENeededProfessions.DisableControls;
    try
      ProfessionCode:= cdsOAENeededProfessionsPROFESSION_CODE.AsInteger;
      try
        SetParams(cdsEmployeeProfessions.Params, cdsData);
        cdsEmployeeProfessions.Open;
        try
          with cdsOAENeededProfessions do
            begin
              First;
              while not Eof do
                begin
                  Edit;
                  try
                    cdsOAENeededProfessionsEMP_HAS_THE_PROFESSION.AsBoolean:=
                      cdsEmployeeProfessions.Locate('PROFESSION_CODE', cdsOAENeededProfessionsPROFESSION_CODE.AsInteger, []);
                    Post;
                  except
                    Cancel;
                    raise;
                  end;  { try }

                  Next;
                end;  { while }

              First;
            end;  { with }
        finally
          cdsEmployeeProfessions.Close;
        end;  { try }

        cdsOAEProfessions.MergeChangeLog;

        frProfessions.grdIncluded.SelectedRows.Clear;
        frProfessions.grdExcluded.SelectedRows.Clear;

        cdsOAEProfessions.First;
        cdsOAENeededProfessions.First;
      finally
        cdsOAENeededProfessions.Locate('PROFESSION_CODE', ProfessionCode, []);
      end;  { try }
    finally
      cdsOAEProfessions.EnableControls;
      cdsOAENeededProfessions.EnableControls;
    end;  { try }
  finally
    ActiveControl:= SaveActiveControl;
  end;  { try }
end;

procedure TfmOccupationAndEmployee.FormCreate(Sender: TObject);
var
  frPrcData: TfrPrcDataFieldEditFrame;
begin
  inherited;

  ReportClass:= TrptOccupationAndEmployee;

  frProfessions.CanInclude:= CanIncludeOccupationEmployeeProfession;

  pcMain.ActivePageIndex:= 0;

  frEmployee.FieldNames:= 'EMPLOYEE_CODE';
  frDateInterval.FieldNames:= 'ASSIGNMENT_BEGIN_DATE;ASSIGNMENT_END_DATE';
  frOccupationDateInterval.FieldNames:= 'OCCUPATION_BEGIN_DATE;OCCUPATION_END_DATE';
  frCraft.FieldNames:= 'CRAFT_CODE';

  frProduct.PriorityVisible:= False;
  frProduct.MeasureVisible:= False;
  frProduct.PartnerProductNamesVisible:= False;
  frProduct.ProductOriginVisible:= False;
  frProduct.ProductPeriodsButtonVisible:= False;
  frProduct.CommonGroupsButtonVisible:= True;

  RegisterDateField(frEmployeeDisciplineEvents.cdsGridDataDISCIPLINE_EVENT_DATE);
  RegisterDateField(frEmployeeDisciplineEvents.cdsGridDataSTORNO_DATE);

  with edtSalaryCurrency do
    Caption:= FormatBaseCurrencyAbbrevString(Caption);

  frPrcData:= TfrPrcDataFieldEditFrame.Create(Self);
  frPrcData.SetDataSet(cdsOccupationEmployee);
  frPrcData.ProcessOwner:= ProcessOwners.OccupationEmployee;
  frPrcData.OwnerDisplayName:= SOccupationEmployee;
  frPrcData.PrcDataReportClass:= TrptOccupationAndEmployeePrcDataReport;
  tsPrcData.InsertControl(frPrcData);

  RegisterFieldsTextVisibility(
    IsSalaryVisible,
    [ cdsDataBASE_SALARY,
      cdsDataBASE_SALARY_DATE_UNIT_NAME,
      cdsOccupationEmployeeSALARY,
      cdsOccupationEmployee_SALARY_DATE_UNIT_NAME]);

  MaximizeStyle:= msVertical;    
end;

procedure TfmOccupationAndEmployee.LoadEmployeeAbilitiesAndUpdatePageControl;

  procedure RefreshAbilities(ADataSet: TClientDataSet);
  begin
    with ADataSet do
      begin
        DisableControls;
        try
          Close;
          Params.ParamByName('EMPLOYEE_CODE').AsInteger:= cdsDataEMPLOYEE_CODE.AsInteger;
          Open;
        finally
          EnableControls;
        end;  { try }
      end;  { with }
  end;

begin
  tsAbilities.TabVisible:= not cdsDataEMPLOYEE_CODE.IsNull;
  RefreshAbilities(cdsEmployeeAbilities);
  RefreshAbilities(cdsEmployeeNotAbilities);
end;

procedure TfmOccupationAndEmployee.LoadEmployeeDisciplineEventsAndUpdatePageControl;
begin
  with frEmployeeDisciplineEvents.cdsGridData do
    begin
      DisableControls;
      try
        while not IsEmpty do
          Delete;

        SetParams(cdsEmployeeDisciplineEvents.Params, cdsData);
        cdsEmployeeDisciplineEvents.Open;
        try
          while not cdsEmployeeDisciplineEvents.Eof do
            begin
              Append;
              try
                frEmployeeDisciplineEvents.cdsGridData.AssignFields(cdsEmployeeDisciplineEvents,
                  'DISCIPLINE_EVENT_CODE; ' +
                  'DISC_EVENT_TYPE_CODE; ' +
                  'DISCIPLINE_EVENT_COMMENT; ' +
                  'DISCIPLINE_EVENT_DATE; ' +
                  'AUTHORIZE_EMPLOYEE_CODE; ' +
                  'DOC_BRANCH_CODE; ' +
                  'DOC_CODE; ' +
                  'HAS_DOC_ITEMS; ' +
                  'CREATE_EMPLOYEE_CODE; ' +
                  'CREATE_DATE; ' +
                  'CREATE_TIME; ' +
                  'STORNO_EMPLOYEE_CODE; ' +
                  'STORNO_DATE; ' +
                  'IS_NOT_STORNO; ' +
                  'OLD_DISCIPLINE_EVENT_CODE; ' +
                  'RATING; ' +
                  'IS_NEGATIVE; ' +
                  'IS_POSITIVE; ' +
                  'IS_ACTIVE; ' +
                  'DIRECT_STORNO'
                );
                Post;
              except
                Cancel;
                raise;
              end;  { try }

              cdsEmployeeDisciplineEvents.Next;
            end;  { while }
        finally
          cdsEmployeeDisciplineEvents.Close;
        end;  { try }

        First;

        MergeChangeLog;
      finally
        EnableControls;
      end;  { try }
    end;  { with }

  tsDiscplineEvents.TabVisible:= not cdsDataEMPLOYEE_CODE.IsNull;
end;

procedure TfmOccupationAndEmployee.btnOccupationDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnOccupationDocs, dotOccupation,
    cdsDataOCCUPATION_DOC_BRANCH_CODE, cdsDataOCCUPATION_DOC_CODE);
end;

procedure TfmOccupationAndEmployee.btnProfessionDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnProfessionDocs, dotProfession,
    cdsOAEProfessionsDOC_BRANCH_CODE, cdsOAEProfessionsDOC_CODE);
end;

procedure TfmOccupationAndEmployee.btnNotProfessionDocsClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnNotProfessionDocs, dotProfession,
    cdsOAENeededProfessionsDOC_BRANCH_CODE, cdsOAENeededProfessionsDOC_CODE);
end;

procedure TfmOccupationAndEmployee.btnDocsClick(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if (EditMode = emReadOnly) or
     (cdsData.Active and cdsOccupationEmployeeEMPLOYEE_CODE.IsNull) then
    em:= emReadOnly
  else
    em:= emEdit;

  dmDocClient.DSOpenDoc(em, (Sender as TControl), dotOccupationEmployee, cdsOccupationEmployee);
end;

procedure TfmOccupationAndEmployee.btnEmployeeAbilitiesDocsClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnEmployeeAbilitiesDocs, dotProfession,
    cdsEmployeeAbilitiesDOC_BRANCH_CODE, cdsEmployeeAbilitiesDOC_CODE);
end;

procedure TfmOccupationAndEmployee.btnEmployeeNotAbilitiesDocsClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnEmployeeNotAbilitiesDocs, dotProfession,
    cdsEmployeeNotAbilitiesDOC_BRANCH_CODE, cdsEmployeeNotAbilitiesDOC_CODE);
end;

procedure TfmOccupationAndEmployee.btnProfessionDeptsDocsClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnProfessionDeptsDocs, dotDept,
    cdsOAEProfessionsDeptsDOC_BRANCH_CODE, cdsOAEProfessionsDeptsDOC_CODE);
end;

procedure TfmOccupationAndEmployee.cdsOAENeededProfessionsNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsOAENeededProfessionsEMP_HAS_THE_PROFESSION.AsBoolean:= True;
end;

procedure TfmOccupationAndEmployee.cdsOccupationEmployeeBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  CheckDatePeriod(cdsOccupationEmployeeASSIGNMENT_BEGIN_DATE, cdsOccupationEmployeeASSIGNMENT_END_DATE);

  if not cdsOccupationEmployeeEMPLOYEE_CODE.IsNull then
    CheckRequiredFields([
      cdsOccupationEmployeeASSIGNMENT_BEGIN_DATE,
      cdsOccupationEmployeeASSIGNMENT_END_DATE,
      cdsOccupationEmployee_OE_REGIME_NAME,
      cdsOccupationEmployeeSALARY,
      cdsOccupationEmployee_SALARY_DATE_UNIT_NAME
    ]);
end;

procedure TfmOccupationAndEmployee.AddOccupationEmployee;
var
  SaveActiveControl: TWinControl;
  AssignmentBeginDate: Variant;
  AssignmentEndDate: Variant;
  Salary: Variant;
  SalaryDateUnitCode: Variant;
  OERegimeCode: Variant;
begin
  cdsOccupationEmployee.DisableControls;
  try
    cdsOAEProfessions.DisableControls;
    try
      SaveActiveControl:= ActiveControl;
      try
        frProfessions.DoExcludeAll;
      finally
        ActiveControl:= SaveActiveControl;
      end;  { try }

      AssignmentBeginDate:= cdsOccupationEmployeeASSIGNMENT_BEGIN_DATE.AsVariant;
      AssignmentEndDate:= cdsOccupationEmployeeASSIGNMENT_END_DATE.AsVariant;
      Salary:= cdsOccupationEmployeeSALARY.AsVariant;
      SalaryDateUnitCode:= cdsOccupationEmployeeSALARY_DATE_UNIT_CODE.AsVariant;
      OERegimeCode:= cdsOccupationEmployeeOE_REGIME_CODE.AsVariant;

      if (cdsOccupationEmployee.RecordCount > 0) then
        cdsOccupationEmployee.Delete;

      if cdsOccupationEmployee.State in dsEditModes then
        cdsOccupationEmployee.Cancel;

      if not cdsDataEMPLOYEE_CODE.IsNull then
        begin
          cdsOccupationEmployee.Append;
          cdsOccupationEmployeeASSIGNMENT_BEGIN_DATE.AsVariant:= AssignmentBeginDate;
          cdsOccupationEmployeeASSIGNMENT_END_DATE.AsVariant:= AssignmentEndDate;
          cdsOccupationEmployeeSALARY.AsVariant:= Salary;
          cdsOccupationEmployeeSALARY_DATE_UNIT_CODE.AsVariant:= SalaryDateUnitCode;
          cdsOccupationEmployeeOE_REGIME_CODE.AsVariant:= OERegimeCode;
        end;
    finally
      cdsOAEProfessions.EnableControls;
    end;  { try }
  finally
    cdsOccupationEmployee.EnableControls;
  end;  { try }
end;

procedure TfmOccupationAndEmployee.cdsOccupationEmployeeNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsOccupationEmployeeOCCUPATION_CODE.Assign(cdsDataOCCUPATION_CODE);
  cdsOccupationEmployeeEMPLOYEE_CODE.Assign(cdsDataEMPLOYEE_CODE);
end;

procedure TfmOccupationAndEmployee.cdsOccupationEmployeeSALARYGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOccupationAndEmployee.frProfessionsactIncludeExecute(
  Sender: TObject);
begin
  inherited;

  PostDataSet(cdsData);
  PostDataSet(cdsOccupationEmployee);

  frProfessions.actIncludeExecute(Sender);
end;

procedure TfmOccupationAndEmployee.grdProfessionsDeptsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont;
  var Background: TColor; State: TGridDrawState);
begin
  inherited;
  if (not cdsOAEProfessionsDeptsDEPT_OWDP_COVER_TYPE_CODE.IsNull ) and
     ( (cdsOAEProfessionsDeptsDEPT_OWDP_COVER_TYPE_CODE.AsDeptOWDPCoverType = dowdpctAncestor) or
       cdsOAEProfessionsDeptsIS_DELEGATED.AsBoolean
     ) then
    begin
      if cdsOAEProfessionsDeptsIS_DELEGATED.AsBoolean then
        AFont.Color:= DelegatedDeptsFontColor
      else
        AFont.Color:= clGray;

      if cdsOAEProfessionsDeptsIS_DELEGATED.AsBoolean then
        Background:= DelegatedDeptsColor
      else
        Background:= CoveredDeptsColor;
    end;
end;

procedure TfmOccupationAndEmployee.frProfessionsactIncludeAllExecute(
  Sender: TObject);
begin
  inherited;

  PostDataSet(cdsData);
  PostDataSet(cdsOccupationEmployee);

  frProfessions.actIncludeAllExecute(Sender);
end;

procedure TfmOccupationAndEmployee.CanIncludeOccupationEmployeeProfession(
  DataSet: TDataSet; var Accept: Boolean);
begin
//  Accept:= cdsOAENeededProfessionsEMP_HAS_THE_PROFESSION.AsBoolean;
  Accept:= True;
end;

procedure TfmOccupationAndEmployee.actPrintExecute(Sender: TObject);

var
  CompositeDataSet: TAbmesClientDataSet;

  procedure CreateCompositeDataSetStructure;

    procedure AddFloatFieldToCompositeDataSet(AName: string);
    var
      f: TField;
    begin
      f:= TAbmesFloatField.Create(CompositeDataSet);
      f.FieldName:= AName;
      f.Name:= CompositeDataSet.Name + f.FieldName;
      f.Index:= CompositeDataSet.FieldCount;
      f.DataSet:= CompositeDataSet;
    end;

    procedure AddFieldToCompositeDataSet(Src: TField; NamePrefix: string = '');
    var
      Dest: TField;
    begin
      if (Src is TAbmesFloatField) or
         (Src is TAbmesSQLTimeStampField) or
         (Src is TAbmesWideStringField) then
        begin
          if (Src is TAbmesFloatField) then
            begin
              Dest:= TAbmesFloatField.Create(CompositeDataSet);
              (Dest as TAbmesFloatField).FieldValueType:= (Src as TAbmesFloatField).FieldValueType;
              (Dest as TAbmesFloatField).DisplayFormat:= (Src as TAbmesFloatField).DisplayFormat;
              (Dest as TAbmesFloatField).DisplayBoolValues:= (Src as TAbmesFloatField).DisplayBoolValues;
            end;

          if (Src is TAbmesSQLTimeStampField) then
            begin
              Dest:= TAbmesSQLTimeStampField.Create(CompositeDataSet);
              (Dest as TAbmesSQLTimeStampField).DisplayFormat:= (Src as TAbmesSQLTimeStampField).DisplayFormat;
            end;

          if (Src is TAbmesWideStringField) then
            Dest:= TAbmesWideStringField.Create(CompositeDataSet);

          Dest.FieldName:= NamePrefix + Src.FieldName;
          Dest.Name:= CompositeDataSet.Name + Dest.FieldName;
          Dest.Index:= CompositeDataSet.FieldCount;
          Dest.Size:= Src.Size;
          Dest.OnGetText:= Src.OnGetText;
          try
            Dest.DataSet:= CompositeDataSet;
          except
            FreeAndNil(Dest);
          end;
        end;
    end;

    procedure AddFieldsToCompositeDataSet(ADataSet: TAbmesClientDataSet; NamePrefix: string = '');
    var
      i: Integer;
    begin
      for i:= 0 to ADataSet.Fields.Count - 1 do
        if (NamePrefix <> '') or (not Assigned(CompositeDataSet.FindField(ADataSet.Fields[i].FieldName))) then
          AddFieldToCompositeDataSet(ADataSet.Fields[i], NamePrefix);
    end;

  begin
    AddFloatFieldToCompositeDataSet('ORIGIN_INDEX');
    AddFloatFieldToCompositeDataSet('IS_INCLUDED_PROFESSIONS_RECORD');
    AddFloatFieldToCompositeDataSet('IS_EXCLUDED_PROFESSIONS_RECORD');

    AddFieldsToCompositeDataSet(cdsData);
    AddFieldsToCompositeDataSet(cdsOccupationEmployee);
    AddFieldsToCompositeDataSet(cdsOAEProfessionsDepts);
    AddFieldsToCompositeDataSet(cdsOAEProfessions, 'OAEP_');
    AddFieldsToCompositeDataSet(cdsOAENeededProfessions, 'OAENP_');
  end;

  procedure FillCompositeDataSet;
  var
    b: TBookmark;
  begin
    with CompositeDataSet do
      begin
        CreateDataSet;

        // dlyjnost
        Append;
        try
          FieldByName('ORIGIN_INDEX').Value:= 1;
          CompositeDataSet.AssignFields(cdsData);
          CompositeDataSet.AssignFields(cdsOccupationEmployee);
          Post;
        except
          Cancel;
          raise;
        end;  { try }

        // forp za izp. na procesnite roli - zaglavie
        Append;
        try
          FieldByName('ORIGIN_INDEX').Value:= 2;
          Post;
        except
          Cancel;
          raise;
        end;  { try }

        // forp za izp. na procesnite roli - danni
        b:= cdsOAEProfessionsDepts.Bookmark;
        cdsOAEProfessionsDepts.First;
        try
          while not cdsOAEProfessionsDepts.Eof do
            begin
              Append;
              try
                FieldByName('ORIGIN_INDEX').Value:= 3;
                CompositeDataSet.AssignFields(cdsOAEProfessionsDepts);
                Post;
              except
                Cancel;
                raise;
              end;  { try }

              cdsOAEProfessionsDepts.Next;
            end;  { while }

        finally
          cdsOAEProfessionsDepts.Bookmark:= b;
        end;  { try }

        // slujitel + prisvoiavane na procesnite roli - zaglavie
        Append;
        try
          FieldByName('ORIGIN_INDEX').Value:= 4;
          CompositeDataSet.AssignFields(cdsData);
          CompositeDataSet.AssignFields(cdsOccupationEmployee);
          Post;
        except
          Cancel;
          raise;
        end;  { try }

        // prisvoiavane na procesnite roli - danni
        cdsOAEProfessions.DisableControls;
        try
          cdsOAEProfessions.First;
          try
            cdsOAENeededProfessions.DisableControls;
            try
              cdsOAENeededProfessions.First;
              try
                while not (cdsOAEProfessions.Eof and cdsOAENeededProfessions.Eof) do
                  begin
                    Append;
                    try
                      FieldByName('ORIGIN_INDEX').Value:= 5;

                      if not cdsOAEProfessions.Eof then
                        begin
                          FieldByName('IS_INCLUDED_PROFESSIONS_RECORD').AsFloat:= 1;
                          FieldByName('OAEP_PROFESSION_CODE').Assign(cdsOAEProfessionsPROFESSION_CODE);
                          FieldByName('OAEP_PROFESSION_FULL_NO').Assign(cdsOAEProfessionsPROFESSION_FULL_NO);
                          FieldByName('OAEP_HAS_DOCUMENTATION').Assign(cdsOAEProfessionsHAS_DOCUMENTATION);
                          FieldByName('OAEP_PROFESSION_NAME').Assign(cdsOAEProfessionsPROFESSION_NAME);
                          FieldByName('OAEP_PROFESSION_KIND_IDENTIFIER').Assign(cdsOAEProfessionsPROFESSION_KIND_IDENTIFIER);
                          cdsOAEProfessions.Next;
                        end
                      else
                        FieldByName('IS_INCLUDED_PROFESSIONS_RECORD').AsFloat:= 0;

                      if not cdsOAENeededProfessions.Eof then
                        begin
                          FieldByName('IS_EXCLUDED_PROFESSIONS_RECORD').AsFloat:= 1;
                          FieldByName('OAENP_PROFESSION_CODE').Assign(cdsOAENeededProfessionsPROFESSION_CODE);
                          FieldByName('OAENP_PROFESSION_FULL_NO').Assign(cdsOAENeededProfessionsPROFESSION_FULL_NO);
                          FieldByName('OAENP_HAS_DOCUMENTATION').Assign(cdsOAENeededProfessionsHAS_DOCUMENTATION);
                          FieldByName('OAENP_PROFESSION_NAME').Assign(cdsOAENeededProfessionsPROFESSION_NAME);
                          FieldByName('OAENP_PROFESSION_KIND_IDENTIFIER').Assign(cdsOAENeededProfessionsPROFESSION_KIND_IDENTIFIER);
                          FieldByName('OAENP_EMP_HAS_THE_PROFESSION').Assign(cdsOAENeededProfessionsEMP_HAS_THE_PROFESSION);
                          cdsOAENeededProfessions.Next;
                        end
                      else
                        FieldByName('IS_EXCLUDED_PROFESSIONS_RECORD').AsFloat:= 0;

                      Post;
                    except
                      Cancel;
                      raise;
                    end;  { try }
                  end;  { while }

              finally
                cdsOAENeededProfessions.First;
              end;  { try }

            finally
               cdsOAENeededProfessions.EnableControls;
            end;  { try }

          finally
            cdsOAEProfessions.First;
          end;  { try }

        finally
          cdsOAEProfessions.EnableControls;
        end;  { try }
      end;  { with }
  end;

var
  b: TBookmark;
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

  CompositeDataSet:= TAbmesClientDataSet.Create(Self);
  CompositeDataSet.Name:= 'CompositeDataSet';
  try
    CreateCompositeDataSetStructure;
    FillCompositeDataSet;
    TrptOccupationAndEmployee.PrintReport(CompositeDataSet, CompositeDataSet);
  finally
    FreeAndNil(CompositeDataSet);
  end;  { try }
end;

procedure TfmOccupationAndEmployee.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  if (ModalResult = mrOk) and (pnlPrintCheckbox.Visible) and (chkPrint.Checked) then
    actPrint.Execute;
end;

procedure TfmOccupationAndEmployee.actShowOccupationExecute(
  Sender: TObject);
begin
  inherited;
  TfmOccupation.ShowForm(nil, cdsData, emReadOnly);
end;

procedure TfmOccupationAndEmployee.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if not cdsDataEMPLOYEE_CODE.IsNull then
    begin
      if not cdsOccupationEmployeeASSIGNMENT_END_DATE.IsNull then
        CheckDatePeriod(cdsOccupationEmployeeASSIGNMENT_BEGIN_DATE, cdsOccupationEmployeeASSIGNMENT_END_DATE);

      if not IsDateSubPeriod(cdsOccupationEmployeeASSIGNMENT_BEGIN_DATE, cdsOccupationEmployeeASSIGNMENT_END_DATE,
               cdsDataOCCUPATION_BEGIN_DATE, cdsDataOCCUPATION_END_DATE) then
        raise Exception.CreateFmt(SAssignmentPeriodNotInOccupation, [
                dmMain.GetDateIntervalAsString(
                  cdsDataOCCUPATION_BEGIN_DATE.AsDateTime,
                  cdsDataOCCUPATION_END_DATE.AsDateTime)]);
    end;  { if }
end;

procedure TfmOccupationAndEmployee.cdsOccupationEmployeeCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  cdsOccupationEmployee_ASSIGNMENT_PERIOD.AsString:=
    dmMain.GetDateIntervalAsString(cdsOccupationEmployeeASSIGNMENT_BEGIN_DATE.AsDateTime, cdsOccupationEmployeeASSIGNMENT_END_DATE.AsDateTime);

  cdsOccupationEmployee_ASSIGNMENT_DAYS_LEFT.AsInteger:= Trunc(cdsOccupationEmployeeASSIGNMENT_END_DATE.AsDateTime - ContextDate);
  if (cdsOccupationEmployee_ASSIGNMENT_DAYS_LEFT.AsInteger <= 0) then
    cdsOccupationEmployee_ASSIGNMENT_DAYS_LEFT.Clear;

  if cdsOccupationEmployeeSALARY_DATE_UNIT_CODE.IsNull then
    cdsOccupationEmployee_SHOW_SALARY_DATE_UNIT.Clear
  else
    cdsOccupationEmployee_SHOW_SALARY_DATE_UNIT.AsString:=
      Format('%s / %s', [LoginContext.BaseCurrencyAbbrev, cdsOccupationEmployee_SALARY_DATE_UNIT_NAME.DisplayText]);

  cdsOccupationEmployeeOCCUPATION_BEGIN_DATE.Assign(cdsDataOCCUPATION_BEGIN_DATE);
  cdsOccupationEmployeeOCCUPATION_END_DATE.Assign(cdsDataOCCUPATION_END_DATE);
end;

procedure TfmOccupationAndEmployee.actNotesExecute(Sender: TObject);
begin
  inherited;
  cdsNotes.CreateDataSet;
  try
    cdsNotes.AppendRecord([cdsDataNOTES.AsString]);
    TfmNotes.ShowForm(dmDocClient, cdsNotes, emReadOnly);

  finally
    cdsNotes.Close;
  end;
end;

procedure TfmOccupationAndEmployee.actNotesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= IfThen(cdsDataNOTES.AsString = '', 207, 57);
end;

procedure TfmOccupationAndEmployee.cdsDataAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsData.Cancel;
end;

procedure TfmOccupationAndEmployee.cdsDataBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmOccupationAndEmployee.cdsDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  if (EditMode = emInsert) then
    cdsData.Params.ParamByName('OCCUPATION_CODE').AsInteger:=
      OuterDataSet.FieldByName('OCCUPATION_CODE').AsInteger;

  with cdsData.Params.ParamByName('THE_DATE') do
    if IsNull then
      AsDateTime:= ContextDate;
end;

procedure TfmOccupationAndEmployee.SetDataParams(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin);
begin
  inherited;
  FDefaultsFromOuterDataSet:= (ADefaultsOrigin = doDataset);
end;

end.

