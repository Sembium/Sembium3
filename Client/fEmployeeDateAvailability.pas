unit fEmployeeDateAvailability;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  AbmesFields, ComCtrls, ToolWin, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateFieldEditFrame, fEmployeeDateAvailabilityMovements, GridsEh, DBGridEh,
  AbmesDBGrid, fEmployeeDateAvailabilityModifiers, JvExStdCtrls,
  JvDBCombobox, ColorNavigator, uEmployeeAvailability, JvComponentBase,
  dDocClient, uClientTypes, Grids, System.Actions;

type
  TfmEmployeeDateAvailability = class(TEditForm)
    gbOccupation: TGroupBox;
    edtOccupationDept: TDBEdit;
    lblOccupationDept: TLabel;
    cdsDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsDataOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDataOCCUPATION_NAME: TAbmesWideStringField;
    cdsDataOCCUPATION_LEVEL: TAbmesFloatField;
    cdsDataSHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsDataEMPLOYEE_STATUS_NAME: TAbmesWideStringField;
    cdsDataEMPLOYEE_NAME: TAbmesWideStringField;
    cdsDataEMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsDataEMPLOYEE_EGN: TAbmesWideStringField;
    cdsDataEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataEMPLOYEE_DOC_CODE: TAbmesFloatField;
    cdsDataTHE_DATE: TAbmesSQLTimeStampField;
    cdsDataqryEmpDateAvailModifiers: TDataSetField;
    cdsDataqryEmpDateAvailMovements: TDataSetField;
    edtOccupationName: TDBEdit;
    lblOccupationName: TLabel;
    lblOccupationLevel: TLabel;
    edtOccupationLevel: TDBEdit;
    lblShiftIdentifier: TLabel;
    edtShiftIdentifier: TDBEdit;
    gbEmployee: TGroupBox;
    edtEmployeeStatus: TDBEdit;
    lblEmployeeStatus: TLabel;
    edtEmployeeNo: TDBEdit;
    lblEmployeeCode: TLabel;
    lblEmployeeName: TLabel;
    edtEmployeeName: TDBEdit;
    lblEmployeeAbbrev: TLabel;
    edtEmployeeAbbrev: TDBEdit;
    lblEmployeeEgn: TLabel;
    edtEmployeeEgn: TDBEdit;
    tlbEmployeeDocs: TToolBar;
    btnEmployeeDocs: TToolButton;
    gbTimeline: TGroupBox;
    cdsEmployeeMovements: TAbmesClientDataSet;
    cdsEmployeeAvailabilityModifiers: TAbmesClientDataSet;
    cdsEmployeeMovementsEMP_MOVEMENT_CODE: TAbmesFloatField;
    cdsEmployeeMovementsIN_OUT: TAbmesFloatField;
    cdsEmployeeMovementsEMP_MOVEMENT_DATE: TAbmesSQLTimeStampField;
    cdsEmployeeMovementsEMP_MOVEMENT_TIME: TAbmesSQLTimeStampField;
    cdsEmployeeMovementsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeMovementsCREATE_DATE: TAbmesSQLTimeStampField;
    cdsEmployeeMovementsCREATE_TIME: TAbmesSQLTimeStampField;
    cdsEmployeeMovementsSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeMovementsSTORNO_DATE: TAbmesSQLTimeStampField;
    cdsEmployeeMovementsSTORNO_TIME: TAbmesSQLTimeStampField;
    cdsEmployeeMovementsRECORD_TYPE: TAbmesFloatField;
    cdsEmployeeMovementsEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeMovementsFOR_OTHER_DATE: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_CODE: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsEmployeeAvailabilityModifiersEND_DATE: TAbmesSQLTimeStampField;
    cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_TYPE_CODE: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersBEGIN_TIME: TAbmesSQLTimeStampField;
    cdsEmployeeAvailabilityModifiersEND_TIME: TAbmesSQLTimeStampField;
    cdsEmployeeAvailabilityModifiersDURATION_HOURS: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersIS_PERSONAL_WORKDAYS_ONLY: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_NO: TAbmesWideStringField;
    cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_DATE: TAbmesSQLTimeStampField;
    cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_ISSUER: TAbmesWideStringField;
    cdsEmployeeAvailabilityModifiersNOTES: TAbmesWideStringField;
    cdsEmployeeAvailabilityModifiersDOC_BRANCH_CODE: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersDOC_CODE: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersCREATE_DATE: TAbmesSQLTimeStampField;
    cdsEmployeeAvailabilityModifiersCREATE_TIME: TAbmesSQLTimeStampField;
    cdsEmployeeAvailabilityModifiersSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersSTORNO_DATE: TAbmesSQLTimeStampField;
    cdsEmployeeAvailabilityModifiersSTORNO_TIME: TAbmesSQLTimeStampField;
    pnlGrids: TPanel;
    gbEmployeeMovements: TGroupBox;
    pnlEmployeeMovements: TPanel;
    gbEmployeeAvailabilityModifiers: TGroupBox;
    pnlEmployeeAvailabilityModifiers: TPanel;
    pnlGridSeparator: TPanel;
    actMaximizeMovements: TAction;
    actMaximizeModifiers: TAction;
    cdsEmpDayAbsenceReasons: TAbmesClientDataSet;
    cdsEmpDayAbsenceDocTypes: TAbmesClientDataSet;
    cdsEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    cdsEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField;
    cdsEmpDayAbsenceReasonsqryEmpDayAbsenceDocTypes: TDataSetField;
    cdsEmpDayAbsenceDocTypesEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    cdsEmpDayAbsenceDocTypesEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField;
    cdsEmpDayAbsenceDocTypesEMP_DAY_ABSENCE_DOC_TYPE_NAME: TAbmesWideStringField;
    cdsEmployeeAvailabilityModifiers_EMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField;
    cdsEmployeeAvailabilityModifiers_EMP_DAY_ABSENCE_DOC_TYPE_NAME: TAbmesWideStringField;
    cdsEmpAvailModifierTypes: TAbmesClientDataSet;
    cdsEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_CODE: TAbmesFloatField;
    cdsEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_NAME: TAbmesWideStringField;
    cdsEmployeeAvailabilityModifiers_EMP_AVAIL_MODIFIER_TYPE_NAME: TAbmesWideStringField;
    cdsEmpHourAvailModReasons: TAbmesClientDataSet;
    cdsEmpHourAvailModReasonsEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField;
    cdsEmpHourAvailModReasonsEMP_HOUR_AVAIL_MOD_REASON_NAME: TAbmesWideStringField;
    cdsEmployeeAvailabilityModifiers_EMP_HOUR_AVAIL_MOD_REASON_NAME: TAbmesWideStringField;
    cdsEmployeeAvailabilityModifiers_SHOW_DATE_PERIOD: TAbmesSQLTimeStampField;
    cdsEmployeeAvailabilityModifiers_SHOW_TIME_PERIOD: TAbmesWideStringField;
    cdsEmployeeAvailabilityModifiers_REASON_NAME: TAbmesWideStringField;
    cdsEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_ABBREV: TAbmesWideStringField;
    cdsEmpAvailModifierTypes_ABBREV_AND_NAME: TAbmesWideStringField;
    cdsEmployeeAvailabilityModifiers_EMP_AVAIL_MODIFIER_TYPE_A_N: TAbmesWideStringField;
    cdsEmployeeAvailabilityModifiersHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDataEMPLOYEE_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsEmployeeMovementsIS_UNMATCHED_MOVEMENT: TAbmesFloatField;
    actEmployeeDateShiftCycles: TAction;
    cdsDataWORKDAY_BEGIN_DATE_TIME: TAbmesSQLTimeStampField;
    cdsDataWORKDAY_END_DATE_TIME: TAbmesSQLTimeStampField;
    cdsData_THE_NEXT_DATE: TAbmesSQLTimeStampField;
    btnEmployeeDateShiftCycles: TBitBtn;
    edtTheDate: TDBEdit;
    pnlTimeLine: TPanel;
    shpTheDate: TShape;
    txtTheDate: TDBText;
    shpTheNextDate: TShape;
    txtTheNextDate: TDBText;
    shpTheDate12: TShape;
    shpTheNextDate12: TShape;
    shpTheDate6: TShape;
    shpTheDate18: TShape;
    shpTheNextDate6: TShape;
    shpTheNextDate18: TShape;
    lblTheDate12: TLabel;
    lblTheNextDate12: TLabel;
    lblTheDate0: TLabel;
    shpTheDate1: TShape;
    shpTheDate2: TShape;
    shpTheDate3: TShape;
    shpTheDate4: TShape;
    shpTheDate5: TShape;
    shpTheDate7: TShape;
    shpTheDate8: TShape;
    shpTheDate9: TShape;
    shpTheDate10: TShape;
    shpTheDate11: TShape;
    shpTheDate13: TShape;
    shpTheDate14: TShape;
    shpTheDate15: TShape;
    shpTheDate16: TShape;
    shpTheDate17: TShape;
    shpTheDate19: TShape;
    shpTheDate20: TShape;
    shpTheDate21: TShape;
    shpTheDate22: TShape;
    shpTheDate23: TShape;
    shpTheNextDate1: TShape;
    shpTheNextDate2: TShape;
    shpTheNextDate3: TShape;
    shpTheNextDate4: TShape;
    shpTheNextDate5: TShape;
    shpTheNextDate7: TShape;
    shpTheNextDate8: TShape;
    shpTheNextDate9: TShape;
    shpTheNextDate10: TShape;
    shpTheNextDate11: TShape;
    shpTheNextDate13: TShape;
    shpTheNextDate14: TShape;
    shpTheNextDate15: TShape;
    shpTheNextDate16: TShape;
    shpTheNextDate17: TShape;
    shpTheNextDate19: TShape;
    shpTheNextDate20: TShape;
    shpTheNextDate21: TShape;
    shpTheNextDate22: TShape;
    shpTheNextDate23: TShape;
    lblTheDate6: TLabel;
    lblTheDate18: TLabel;
    lblTheNextDate6: TLabel;
    lblTheNextDate18: TLabel;
    grdTimeLine: TDrawGrid;
    pnlHideRightTimeLine: TPanel;
    txtEmpDayAbsenceReason: TDBText;
    dsEmployeeAvailabilityModifiers: TDataSource;
    cdsEmployeeAvailabilityModifiers_MAX_EMP_DAY_ABS_REASON_CODE: TAggregateField;
    cdsDataDAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    cdsDataDAY_AVAIL_STATUS_ABBREV: TAbmesWideStringField;
    edtDayAvailabilityStatusAbbrev: TDBEdit;
    cdsEmployeeMovements_STORNO_COUNT: TAggregateField;
    cdsEmployeeAvailabilityModifiers_STORNO_COUNT: TAggregateField;
    cdsDataEMPLOYEE_NO: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersIS_NOT_STORNO: TAbmesFloatField;
    cdsData_STORNO_MOVEMENT_COUNT: TAbmesFloatField;
    cdsData_STORNO_EMP_AVAIL_MOD_COUNT: TAbmesFloatField;
    cdsDataIS_EMPLOYEE_AVAILABLE_NOW: TAbmesFloatField;
    pnlEmployeeIsAvailableNow: TPanel;
    txtEmployeeIsAvailableNow: TDBText;
    cdsEmployeeMovementsIS_STORNO: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersIS_STORNO: TAbmesFloatField;
    cdsEmployeeMovementsEMP_MOVEMENT_DATE_TIME: TAbmesSQLTimeStampField;
    cdsDataIS_WORKDATE_NOW: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersOLD_SHIFT_CODE: TAbmesFloatField;
    cdsEmployeeAvailabilityModifiersNEW_SHIFT_CODE: TAbmesFloatField;
    cdsShifts: TAbmesClientDataSet;
    cdsShiftsSHIFT_CODE: TAbmesFloatField;
    cdsShiftsSHIFT_ABBREV: TAbmesWideStringField;
    cdsEmployeeAvailabilityModifiers_OLD_SHIFT_ABBREV: TAbmesWideStringField;
    cdsEmployeeAvailabilityModifiers_NEW_SHIFT_ABBREV: TAbmesWideStringField;
    cdsEmployeeMovementsCREATE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsEmployeeAvailabilityModifiersAUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField;
    pnlResizeMovements: TPanel;
    pnlResizeModifiers: TPanel;
    tlbResizeMovements: TToolBar;
    btnMaximizeMovements: TSpeedButton;
    tlbResizeModifiers: TToolBar;
    btnMaximizeModifiers: TSpeedButton;
    procedure cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_TYPE_CODEChange(
      Sender: TField);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsEmployeeAvailabilityModifiersBeforeEdit(
      DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsEmployeeMovementsIN_OUTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsEmployeeMovementsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsEmployeeMovementsNewRecord(DataSet: TDataSet);
    procedure cdsEmployeeMovementsAfterPost(DataSet: TDataSet);
    procedure cdsEmployeeAvailabilityModifiersFilterRecord(
      DataSet: TDataSet; var Accept: Boolean);
    procedure cdsEmployeeAvailabilityModifiersAfterPost(DataSet: TDataSet);
    procedure actMaximizeMovementsExecute(Sender: TObject);
    procedure actMaximizeModifiersExecute(Sender: TObject);
    procedure cdsEmployeeAvailabilityModifiersNewRecord(DataSet: TDataSet);
    procedure cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_REASON_CODEChange(
      Sender: TField);
    procedure cdsEmployeeAvailabilityModifiers_SHOW_DATE_PERIODGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsEmployeeAvailabilityModifiersCalcFields(
      DataSet: TDataSet);
    procedure cdsEmpAvailModifierTypesCalcFields(DataSet: TDataSet);
    procedure cdsEmployeeAvailabilityModifiersBeforePost(
      DataSet: TDataSet);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure grdTimeLineDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure actFormUpdate(Sender: TObject);
    procedure grdTimeLineSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure cdsEmployeeMovementsBeforePost(DataSet: TDataSet);
    procedure actEmployeeDateShiftCyclesExecute(Sender: TObject);
    procedure btnEmployeeDocsClick(Sender: TObject);
    procedure cdsDataAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsEmployeeAvailabilityModifiers_MAX_EMP_DAY_ABS_REASON_CODEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure TimeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure grdTimeLineMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure cdsEmpAvailModifierTypesAfterOpen(DataSet: TDataSet);
  private
    FfmEmployeeDateAvailabilityMovements: TfmEmployeeDateAvailabilityMovements;
    FfmEmployeeDateAvailabilityModifiers: TfmEmployeeDateAvailabilityModifiers;
    FEmployeeCode: Integer;
    FDate: TDateTime;
    FTimeLineAvailabilityStatuses: array of TAvailabilityStatus;
    FBeforeEditBeginDate: TDateTime;
    FStornoEmployeeMovementCount: Integer;
    FStornoEmployeeAvailabilityModifierCount: Integer;
    procedure ApplyAndRefresh;
    procedure RestoreGridHeights;
    procedure UpdateGridHeights;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AEmployeeFrameAllEmployees: TDataSet = nil); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AEmployeeFrameAllEmployees: TDataSet = nil): Boolean;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uUtils, uUserActivityConsts, fEmployeeDateShiftCycles,
  uDocUtils, uColorConsts, Math, StrUtils, uScalingUtils,
  uClientUtils, DateUtils, uClientDateTime;

{$R *.dfm}

resourcestring
  SCantRegisterFutureMovement = 'Не можете да регистрирате бъдещи движения!';
  SExceedingEmpMovementRegistrationDiffHours = 'Момента на регистриране се различава с повече от допустимото от момента на вход/изход!';
  SExceedingEmpAvailModifierRegistrationDiffDays = 'Датата на регистриране се различава с повече от допустимото (%d дни) от началото на ВрмИнт!';
  SEnter = 'Вход';
  SLeave = 'Изход';
  SWholeDay = 'Цял ден';
  SDayAbsence = 'Целодневно Отсъствие: %s%s';

  SasNoneHint = '';
  SasOfftimeHint = 'Неработно време';
  SasShiftCycleBreak = 'Почивка';
  SasOfftimePresence = 'Допълнително присъствие (неодобрено)';
  SasUnapprovedOvertimePresence = 'Допълнително присъствие (одобрено)';
  SasNormalPresenceHint = 'Нормално присъствие';
  SasApprovedOvertimePresenceHint = 'Извънредно присъствие';
  SasApprovedAbsenceHint = 'Одобрено отсъствие';
  SasUnapprovedFutureAbsenceHint = 'Бъдещо отсъствие';
  SasUnapprovedPastAbsenceHint = 'Неодобрено отсъствие';
  SPlanSelfAbsencePreffix = 'Планова ';
  SDifferentOldAndNewShiftsRequired = '%s и %s трябва да бъдат различни!';
  SExceedingDurationHours = 'Продължителността надхвърля времето между Начален и Краен час';

const
  ListMinHeight = 20;

  AvailabilityStatusColors: array[TAvailabilityStatus] of TColor =
    (
      clSilver,        //  asNone
      $00F5E6CB,       //  asOfftime
      $00F5E6CB,       //  asShiftCycleBreak
      $00CAF9CB,       //  asOfftimePresence
      $00009700,       //  asUnapprovedOvertimePresence
      $0062EC65,       //  asNormalPresence
      $00005B00,       //  asApprovedOvertimePresence
      $00AEAEFF,       //  asApprovedAbsence
      ccFutureWorkday, //  asUnapprovedFutureAbsence
      clRed            //  asUnapprovedPastAbsence
    );

  AvailabilityStatusHints: array[TAvailabilityStatus] of string =
    (
      SasNoneHint,                                    //  asNone
      SasOfftimeHint,                                 //  asOfftime
      SasShiftCycleBreak,                             //  asShiftCycleBreak
      SasOfftimePresence,                             //  asOfftimePresence
      SasUnapprovedOvertimePresence,                  //  asUnapprovedOvertimePresence
      SasNormalPresenceHint,                          //  asNormalPresence
      SasApprovedOvertimePresenceHint,                //  asApprovedOvertimePresence
      SasApprovedAbsenceHint,                         //  asApprovedAbsence
      SasUnapprovedFutureAbsenceHint,                 //  asUnapprovedFutureAbsence
      SasUnapprovedPastAbsenceHint                    //  asUnapprovedPastAbsence
    );

class function TfmEmployeeDateAvailability.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmEmployeeDateAvailability.FormCreate(Sender: TObject);
begin
  inherited;

  pnlHideRightTimeLine.Left:= grdTimeLine.Left + (grdTimeLine.Width div 2);
  pnlHideRightTimeLine.Width:= (grdTimeLine.Width div 2) + 1;
  pnlHideRightTimeLine.Top:= txtTheNextDate.Top;
  edtTheDate.Color:= ccReadOnlyDate;

  RegisterDateFields(cdsData);
  RegisterDateFields([
    cdsEmployeeMovementsEMP_MOVEMENT_DATE,
    cdsEmployeeMovementsCREATE_DATE,
    cdsEmployeeMovementsSTORNO_DATE
  ]);
  RegisterDateFields([
    cdsEmployeeAvailabilityModifiersBEGIN_DATE,
    cdsEmployeeAvailabilityModifiersEND_DATE,
    cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_DATE,
    cdsEmployeeAvailabilityModifiersCREATE_DATE,
    cdsEmployeeAvailabilityModifiersSTORNO_DATE
  ]);

  FfmEmployeeDateAvailabilityMovements:= TfmEmployeeDateAvailabilityMovements.CreateDockedTo(pnlEmployeeMovements);
  FfmEmployeeDateAvailabilityMovements.dsGridData.DataSet:= cdsEmployeeMovements;
  FfmEmployeeDateAvailabilityMovements.Align:= alClient;
  FfmEmployeeDateAvailabilityMovements.Visible:= False;

  FfmEmployeeDateAvailabilityModifiers:= TfmEmployeeDateAvailabilityModifiers.CreateDockedTo(pnlEmployeeAvailabilityModifiers);
  FfmEmployeeDateAvailabilityModifiers.dsGridData.DataSet:= cdsEmployeeAvailabilityModifiers;
  FfmEmployeeDateAvailabilityModifiers.Align:= alClient;
  FfmEmployeeDateAvailabilityModifiers.OuterdmDocClient:= dmDocClient;
  FfmEmployeeDateAvailabilityModifiers.Visible:= False;

  grdTimeLine.ColCount:= grdTimeLine.Width;

  RegisterFieldTextVisibility(IsEGNVisible, cdsDataEMPLOYEE_EGN);
end;

procedure TfmEmployeeDateAvailability.FormShow(Sender: TObject);
var
  i: Integer;
  OriginalTimeLineCount: Integer;
begin
  inherited;

  if IsApplicationScaled then
    begin
      OriginalTimeLineCount:= grdTimeLine.ColCount;
      grdTimeLine.ColCount:= grdTimeLine.Width;
      SetLength(FTimeLineAvailabilityStatuses, grdTimeLine.ColCount);
      for i:= Length(FTimeLineAvailabilityStatuses) - 1 downto 0 do
        FTimeLineAvailabilityStatuses[i]:=
          FTimeLineAvailabilityStatuses[MulDiv(i, OriginalTimeLineCount, Length(FTimeLineAvailabilityStatuses))];

      FfmEmployeeDateAvailabilityMovements.pnlMain.Align:= alNone;
      FfmEmployeeDateAvailabilityMovements.pnlMain.SetBounds(0, 0, pnlEmployeeMovements.Width, pnlEmployeeMovements.Height);
      FfmEmployeeDateAvailabilityMovements.pnlMain.Anchors:= [akLeft, akTop, akRight, akBottom];

      FfmEmployeeDateAvailabilityModifiers.pnlMain.Align:= alNone;
      FfmEmployeeDateAvailabilityModifiers.pnlMain.SetBounds(0, 0, pnlEmployeeAvailabilityModifiers.Width, pnlEmployeeAvailabilityModifiers.Height);
      FfmEmployeeDateAvailabilityModifiers.pnlMain.Anchors:= [akLeft, akTop, akRight, akBottom];
    end;
end;

procedure TfmEmployeeDateAvailability.OpenDataSets;
begin
  cdsEmpAvailModifierTypes.Open;
  cdsEmpDayAbsenceReasons.Open;
  cdsEmpHourAvailModReasons.Open;
  inherited;
end;

procedure TfmEmployeeDateAvailability.CloseDataSets;
begin
  inherited;
  cdsEmpHourAvailModReasons.Close;
  cdsEmpDayAbsenceReasons.Close;
  cdsEmpAvailModifierTypes.Close;
end;

procedure TfmEmployeeDateAvailability.cdsEmployeeMovementsIN_OUTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
const
  InOut: array[-1..1] of string = (SLeave, '', SEnter);
begin
  inherited;
  if DisplayText then
    Text:= InOut[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmEmployeeDateAvailability.cdsEmployeeMovementsFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:= cdsEmployeeMovementsSTORNO_EMPLOYEE_CODE.IsNull;
end;

procedure TfmEmployeeDateAvailability.cdsEmployeeMovementsNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  cdsEmployeeMovementsEMP_MOVEMENT_CODE.AsInteger:= -1;

  cdsEmployeeMovementsEMPLOYEE_CODE.AsInteger:= FEmployeeCode;

  cdsEmployeeMovementsEMP_MOVEMENT_DATE.AsDateTime:= FDate;

  cdsEmployeeMovementsCREATE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsEmployeeMovementsCREATE_DATE.AsDateTime:= ContextDate;
  cdsEmployeeMovementsCREATE_TIME.AsDateTime:= ContextTime;
end;

procedure TfmEmployeeDateAvailability.Initialize;
begin
  inherited;

  FEmployeeCode:= OuterDataSet.FieldByName('EMPLOYEE_CODE').AsInteger;
  FDate:= OuterDataSet.FieldByName('THE_DATE').AsDateTime;

  FfmEmployeeDateAvailabilityMovements.SetDataParams(dmDocClient, nil, EditMode);
  FfmEmployeeDateAvailabilityModifiers.SetDataParams(dmDocClient, nil, EditMode);

  FfmEmployeeDateAvailabilityMovements.Visible:= True;
  FfmEmployeeDateAvailabilityModifiers.Visible:= True;

  actForm.Update;
end;

procedure TfmEmployeeDateAvailability.ApplyAndRefresh;
var
  SaveCursor: TCursor;
  EmpMovementCode: Integer;
  EmpAvailModifierCode: Integer;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsData.DisableControls;
    cdsEmployeeMovements.DisableControls;
    cdsEmployeeAvailabilityModifiers.DisableControls;
    try
      actApplyUpdates.Execute;

      EmpMovementCode:= cdsEmployeeMovementsEMP_MOVEMENT_CODE.AsInteger;
      try
        EmpAvailModifierCode:= cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_CODE.AsInteger;
        try
          cdsData.Close;
          cdsData.Open;
        finally
          if not cdsEmployeeAvailabilityModifiers.Locate('EMP_AVAIL_MODIFIER_CODE', EmpAvailModifierCode, []) then
            cdsEmployeeAvailabilityModifiers.First;
        end;  { try }
      finally
        if not cdsEmployeeMovements.Locate('EMP_MOVEMENT_CODE', EmpMovementCode, []) then
          cdsEmployeeMovements.First;
      end;  { try }
    finally
      cdsData.EnableControls;
      cdsEmployeeMovements.EnableControls;
      cdsEmployeeAvailabilityModifiers.EnableControls;
    end;  { try }

    grdTimeLine.Repaint;
  finally
    Screen.Cursor:= SaveCursor;
  end;  { cursor try }
end;

procedure TfmEmployeeDateAvailability.cdsEmployeeMovementsAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  ApplyAndRefresh;
end;

procedure TfmEmployeeDateAvailability.cdsEmployeeAvailabilityModifiersFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:= cdsEmployeeAvailabilityModifiersSTORNO_EMPLOYEE_CODE.IsNull;
end;

procedure TfmEmployeeDateAvailability.cdsEmployeeAvailabilityModifiersAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  ApplyAndRefresh;
end;

procedure TfmEmployeeDateAvailability.actMaximizeMovementsExecute(
  Sender: TObject);
begin
  inherited;

  if (actMaximizeMovements.Tag = 1) then
    begin
      gbEmployeeMovements.Height:=
        pnlGrids.Height - pnlGridSeparator.Height - ScalePixels(ListMinHeight);

      actMaximizeMovements.Tag:= 2;
      actMaximizeMovements.Caption:= '2';
      actMaximizeModifiers.Tag:= 1;
      actMaximizeModifiers.Caption:= '1';
    end
  else
    RestoreGridHeights;

  UpdateGridHeights;
end;

procedure TfmEmployeeDateAvailability.actMaximizeModifiersExecute(
  Sender: TObject);
begin
  inherited;

  if (actMaximizeModifiers.Tag = 1) then
    begin
      gbEmployeeMovements.Height:= ScalePixels(ListMinHeight);

      actMaximizeMovements.Tag:= 1;
      actMaximizeMovements.Caption:= '1';
      actMaximizeModifiers.Tag:= 2;
      actMaximizeModifiers.Caption:= '2';
    end
  else
    RestoreGridHeights;

  UpdateGridHeights;
end;

procedure TfmEmployeeDateAvailability.cdsEmployeeAvailabilityModifiersNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_CODE.AsInteger:= -1;

  cdsEmployeeAvailabilityModifiersEMPLOYEE_CODE.AsInteger:= FEmployeeCode;

  cdsEmployeeAvailabilityModifiersBEGIN_DATE.AsDateTime:= FDate;
  cdsEmployeeAvailabilityModifiersEND_DATE.AsDateTime:= FDate;

  cdsEmployeeAvailabilityModifiersIS_PERSONAL_WORKDAYS_ONLY.AsBoolean:= False;

  cdsEmployeeAvailabilityModifiersCREATE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsEmployeeAvailabilityModifiersCREATE_DATE.AsDateTime:= ContextDate;
  cdsEmployeeAvailabilityModifiersCREATE_TIME.AsDateTime:= ContextTime;
end;

procedure TfmEmployeeDateAvailability.cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_TYPE_CODEChange(
  Sender: TField);
begin
  inherited;

  if (cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_TYPE_CODE.AsInteger = eamtcShiftChange) and
     cdsEmployeeAvailabilityModifiersOLD_SHIFT_CODE.IsNull then
    cdsEmployeeAvailabilityModifiersOLD_SHIFT_CODE.AsVariant:=
      IntToVar(
        dmMain.SvrHumanResource.GetEmployeeShiftCode(
          cdsDataEMPLOYEE_CODE.AsInteger, cdsDataTHE_DATE.AsDateTime));   
end;

procedure TfmEmployeeDateAvailability.cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_REASON_CODEChange(
  Sender: TField);
begin
  inherited;

  cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_TYPE_CODE.Clear;

  if (Sender.AsInteger = 1) then
    begin
      cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_NO.Clear;
      cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_DATE.Clear;
      cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_ISSUER.Clear;
    end;  { if }
end;

procedure TfmEmployeeDateAvailability.cdsEmployeeAvailabilityModifiers_SHOW_DATE_PERIODGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if cdsEmployeeAvailabilityModifiersBEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:=
      dmMain.GetDateIntervalAsShortString(
        cdsEmployeeAvailabilityModifiersBEGIN_DATE.AsDateTime,
        cdsEmployeeAvailabilityModifiersEND_DATE.AsDateTime
      );
end;

procedure TfmEmployeeDateAvailability.cdsEmployeeAvailabilityModifiersCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  case cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_TYPE_CODE.AsInteger of
    eamtcDayAbsence:
      cdsEmployeeAvailabilityModifiers_SHOW_TIME_PERIOD.AsString:= SWholeDay;

    eamtcShiftChange:
      cdsEmployeeAvailabilityModifiers_SHOW_TIME_PERIOD.AsString:=
        Format('%s >> %s', [
          cdsEmployeeAvailabilityModifiers_OLD_SHIFT_ABBREV.AsString,
          cdsEmployeeAvailabilityModifiers_NEW_SHIFT_ABBREV.AsString]);

  else
    if (not cdsEmployeeAvailabilityModifiersBEGIN_TIME.IsNull) and
       (not cdsEmployeeAvailabilityModifiersEND_TIME.IsNull) and
       (not cdsEmployeeAvailabilityModifiersDURATION_HOURS.IsNull) then
      cdsEmployeeAvailabilityModifiers_SHOW_TIME_PERIOD.AsString:=
        Format('%s-%s / %s', [
          cdsEmployeeAvailabilityModifiersBEGIN_TIME.DisplayText,
          cdsEmployeeAvailabilityModifiersEND_TIME.DisplayText,
          HoursToStr(cdsEmployeeAvailabilityModifiersDURATION_HOURS.AsFloat)
        ]);
  end;


  if (cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_TYPE_CODE.AsInteger = 1) then
  else
    begin
    end;

  if (cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_TYPE_CODE.AsInteger = 1) then
    cdsEmployeeAvailabilityModifiers_REASON_NAME.Assign(cdsEmployeeAvailabilityModifiers_EMP_DAY_ABSENCE_REASON_NAME)
  else
    cdsEmployeeAvailabilityModifiers_REASON_NAME.Assign(cdsEmployeeAvailabilityModifiers_EMP_HOUR_AVAIL_MOD_REASON_NAME);
end;

procedure TfmEmployeeDateAvailability.cdsEmpAvailModifierTypesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsEmpAvailModifierTypes_ABBREV_AND_NAME.AsString:=
    Format('%s           %s', [
      cdsEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_ABBREV.AsString,
      cdsEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_NAME.AsString
    ]);
end;

procedure TfmEmployeeDateAvailability.cdsEmployeeAvailabilityModifiersBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  FBeforeEditBeginDate:= cdsEmployeeAvailabilityModifiersBEGIN_DATE.AsDateTime;
end;

procedure TfmEmployeeDateAvailability.cdsEmployeeAvailabilityModifiersBeforePost(
  DataSet: TDataSet);
var
  TimeDuration: Real;
begin
  inherited;

  // iziskvania na poleta
  CheckRequiredField(cdsEmployeeAvailabilityModifiers_EMP_AVAIL_MODIFIER_TYPE_NAME);
  CheckRequiredFields([
    cdsEmployeeAvailabilityModifiersBEGIN_DATE,
    cdsEmployeeAvailabilityModifiersEND_DATE
  ]);

  if (cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_TYPE_CODE.AsInteger = eamtcDayAbsence) then
    begin
      CheckRequiredField(cdsEmployeeAvailabilityModifiers_EMP_DAY_ABSENCE_REASON_NAME);

      if (cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_REASON_CODE.AsInteger <> 1) and
         ( (not cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_TYPE_CODE.IsNull) or
           (not cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_NO.IsNull) or
           (not cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_DATE.IsNull) or
           (not cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_ISSUER.IsNull) ) then
        CheckRequiredFields([
          cdsEmployeeAvailabilityModifiers_EMP_DAY_ABSENCE_DOC_TYPE_NAME,
          cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_NO,
          cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_DATE,
          cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_ISSUER
        ]);
    end
  else  { if }
    begin
      if (cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_TYPE_CODE.AsInteger = eamtcShiftChange) then
        begin
          CheckRequiredFields([
            cdsEmployeeAvailabilityModifiers_EMP_HOUR_AVAIL_MOD_REASON_NAME,
            cdsEmployeeAvailabilityModifiers_OLD_SHIFT_ABBREV,
            cdsEmployeeAvailabilityModifiers_NEW_SHIFT_ABBREV
          ]);

          if (cdsEmployeeAvailabilityModifiersNEW_SHIFT_CODE.AsInteger = cdsEmployeeAvailabilityModifiersOLD_SHIFT_CODE.AsInteger) then
            raise Exception.CreateFmt(SDifferentOldAndNewShiftsRequired, [
              cdsEmployeeAvailabilityModifiers_OLD_SHIFT_ABBREV.DisplayLabel,
              cdsEmployeeAvailabilityModifiers_NEW_SHIFT_ABBREV.DisplayLabel]);
        end
      else
        CheckRequiredFields([
          cdsEmployeeAvailabilityModifiersBEGIN_TIME,
          cdsEmployeeAvailabilityModifiersEND_TIME,
          cdsEmployeeAvailabilityModifiersDURATION_HOURS,
          cdsEmployeeAvailabilityModifiers_EMP_HOUR_AVAIL_MOD_REASON_NAME
        ]);
    end;  { if }

  CheckRequiredField(cdsEmployeeAvailabilityModifiersAUTHORIZE_EMPLOYEE_CODE);

  // check begin date
  if ( (DataSet.State = dsInsert) or
       (cdsEmployeeAvailabilityModifiersBEGIN_DATE.AsDateTime <> FBeforeEditBeginDate) ) and
     (Trunc(ContextDate - cdsEmployeeAvailabilityModifiersBEGIN_DATE.AsDateTime) > LoginContext.MaxEmpAvailModifierRegistrationDays) and
     not LoginContext.HasUserActivity(uaEmployeeAvailabilityModifierStorno) then
    raise Exception.CreateFmt(SExceedingEmpAvailModifierRegistrationDiffDays, [LoginContext.MaxEmpAvailModifierRegistrationDays]);

  if (cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_TYPE_CODE.AsInteger = eamtcShiftChange) and
     cdsEmployeeAvailabilityModifiersSTORNO_EMPLOYEE_CODE.IsNull then
    cdsEmployeeAvailabilityModifiersIS_PERSONAL_WORKDAYS_ONLY.AsBoolean:= True;

  cdsEmployeeAvailabilityModifiersIS_NOT_STORNO.AsBoolean:=
    cdsEmployeeAvailabilityModifiersSTORNO_EMPLOYEE_CODE.IsNull;

  // izchistvane na nenujnite poleta
  if (cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_TYPE_CODE.AsInteger = eamtcDayAbsence) then
    begin
      cdsEmployeeAvailabilityModifiersBEGIN_TIME.Clear;
      cdsEmployeeAvailabilityModifiersEND_TIME.Clear;
      cdsEmployeeAvailabilityModifiersDURATION_HOURS.Clear;
      cdsEmployeeAvailabilityModifiersEMP_HOUR_AVAIL_MOD_REASON_CODE.Clear;
      cdsEmployeeAvailabilityModifiersOLD_SHIFT_CODE.Clear;
      cdsEmployeeAvailabilityModifiersNEW_SHIFT_CODE.Clear;
    end
  else  { if }
    begin
      cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_REASON_CODE.Clear;
      cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_TYPE_CODE.Clear;
      cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_NO.Clear;
      cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_DATE.Clear;
      cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_ISSUER.Clear;

      if (cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_TYPE_CODE.AsInteger = eamtcShiftChange) then
        begin
          cdsEmployeeAvailabilityModifiersBEGIN_TIME.Clear;
          cdsEmployeeAvailabilityModifiersEND_TIME.Clear;
          cdsEmployeeAvailabilityModifiersDURATION_HOURS.Clear;
        end
      else
        begin
          cdsEmployeeAvailabilityModifiersOLD_SHIFT_CODE.Clear;
          cdsEmployeeAvailabilityModifiersNEW_SHIFT_CODE.Clear;
        end;
    end;  { if }

  if (not cdsEmployeeAvailabilityModifiersDURATION_HOURS.IsNull) and
     (not cdsEmployeeAvailabilityModifiersBEGIN_TIME.IsNull) and
     (not cdsEmployeeAvailabilityModifiersEND_TIME.IsNull) then
    begin
      TimeDuration:=
        cdsEmployeeAvailabilityModifiersEND_TIME.AsDateTime -
        cdsEmployeeAvailabilityModifiersBEGIN_TIME.AsDateTime;
      if (TimeDuration < 0) then
        TimeDuration:= TimeDuration + 1;

      if (LargeZero(cdsEmployeeAvailabilityModifiersDURATION_HOURS.AsFloat - (TimeDuration * 24)) > 0) then
        begin
          cdsEmployeeAvailabilityModifiersDURATION_HOURS.FocusControl;
          raise Exception.Create(SExceedingDurationHours);
        end;
    end;
end;

procedure TfmEmployeeDateAvailability.cdsDataBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmEmployeeDateAvailability.grdTimeLineDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  inherited;
  with grdTimeLine.Canvas do
    begin
      if (ACol < Length(FTimeLineAvailabilityStatuses)) then
        Brush.Color:= AvailabilityStatusColors[FTimeLineAvailabilityStatuses[ACol]]
      else
        Brush.Color:= grdTimeLine.Color;

      FillRect(Rect);
    end;  { with }
end;

procedure TfmEmployeeDateAvailability.actFormUpdate(Sender: TObject);
begin
  inherited;

  btnEmployeeDocs.ImageIndex:= cdsDataEMPLOYEE_HAS_DOC_ITEMS.AsInteger;

  txtEmpDayAbsenceReason.Visible:=
    (cdsDataDAY_ABSENCE_REASON_CODE.AsInteger <> 0) or
    (VarToInt(cdsEmployeeAvailabilityModifiers_MAX_EMP_DAY_ABS_REASON_CODE.AsVariant) > 0);
  pnlTimeLine.Visible:= not txtEmpDayAbsenceReason.Visible;

  if cdsData.Active and
     ( (Pos('?', cdsDataDAY_AVAIL_STATUS_ABBREV.AsString) > 0) or
       (Pos('(', cdsDataDAY_AVAIL_STATUS_ABBREV.AsString) > 0) ) then
    edtDayAvailabilityStatusAbbrev.Font.Color:= clRed
  else
    edtDayAvailabilityStatusAbbrev.Font.Color:= clWindowText;

  txtEmployeeIsAvailableNow.Visible:=
    cdsData.Active and
    ( cdsDataIS_WORKDATE_NOW.AsBoolean or
      (cdsDataTHE_DATE.AsDateTime = ContextDate) );
end;

procedure TfmEmployeeDateAvailability.grdTimeLineSelectCell(
  Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
begin
  inherited;
  CanSelect:= False;
end;

procedure TfmEmployeeDateAvailability.cdsEmployeeMovementsBeforePost(
  DataSet: TDataSet);
const
  Eps = 0.00001;
var
  EmpMovementDateTime: TDateTime;
  RegistrationDiffHours: Real;
begin
  inherited;

  EmpMovementDateTime:= cdsEmployeeMovementsEMP_MOVEMENT_DATE.AsDateTime;
  ReplaceTime(EmpMovementDateTime, cdsEmployeeMovementsEMP_MOVEMENT_TIME.AsDateTime);

  if (LargeZero(EmpMovementDateTime - ContextNow, Eps) > 0) then
    raise Exception.Create(SCantRegisterFutureMovement);

  if not LoginContext.HasUserActivity(uaFarEmployeeMovement) then
    begin
      RegistrationDiffHours:= Abs(EmpMovementDateTime - ContextNow) * 24;

      if (LargeZero(RegistrationDiffHours - LoginContext.MaxEmployeeMovementRegistrationHours, Eps) > 0) then
        raise Exception.Create(SExceedingEmpMovementRegistrationDiffHours);
    end;  { if }
end;

procedure TfmEmployeeDateAvailability.RestoreGridHeights;
begin
  gbEmployeeMovements.Height:= (pnlGrids.Height - pnlGridSeparator.Height) div 2;

  actMaximizeMovements.Tag:= 1;
  actMaximizeMovements.Caption:= '1';
  actMaximizeModifiers.Tag:= 1;
  actMaximizeModifiers.Caption:= '1';
end;

procedure TfmEmployeeDateAvailability.SetDataParams(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AEmployeeFrameAllEmployees: TDataSet);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FfmEmployeeDateAvailabilityMovements.EmployeeFrameAllEmployees:= AEmployeeFrameAllEmployees;
  FfmEmployeeDateAvailabilityModifiers.EmployeeFrameAllEmployees:= AEmployeeFrameAllEmployees;
end;

class function TfmEmployeeDateAvailability.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AEmployeeFrameAllEmployees: TDataSet): Boolean;
var
  f: TfmEmployeeDateAvailability;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
      AEmployeeFrameAllEmployees);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmEmployeeDateAvailability.actEmployeeDateShiftCyclesExecute(
  Sender: TObject);
begin
  inherited;
  TfmEmployeeDateShiftCycles.ShowForm(dmDocClient, cdsData, emReadOnly);
end;

procedure TfmEmployeeDateAvailability.btnEmployeeDocsClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TControl), dotEmployee,
    cdsDataEMPLOYEE_DOC_BRANCH_CODE, cdsDataEMPLOYEE_DOC_CODE);
end;

procedure TfmEmployeeDateAvailability.cdsDataAfterGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
var
  i: Integer;
  v: Boolean;
begin
  inherited;

  if VarIsNullOrEmpty(OwnerData) then
    Exit;

  Assert(VarIsArray(OwnerData));

  SetLength(FTimeLineAvailabilityStatuses, grdTimeLine.ColCount);
  for i:= 0 to grdTimeLine.ColCount - 1 do
    FTimeLineAvailabilityStatuses[i]:= IntToAvailabilityStatus(OwnerData[i+1]);

  v:= True;
  for i:= (VarArrayHighBound(OwnerData, 1) div 2 + 1) to VarArrayHighBound(OwnerData, 1) do
    v:= v and (IntToAvailabilityStatus(OwnerData[i]) = asNone);

  pnlHideRightTimeLine.Visible:= v;
  lblTheDate0.Visible:= v;
  txtTheDate.Visible:= not v;
end;

procedure TfmEmployeeDateAvailability.cdsDataAfterOpen(DataSet: TDataSet);
var
  SaveFiltered: Boolean;
begin
  inherited;

  SaveFiltered:= cdsEmployeeMovements.Filtered;
  cdsEmployeeMovements.Filtered:= False;
  try
    FStornoEmployeeMovementCount:=
      VarToInt(cdsEmployeeMovements_STORNO_COUNT.AsVariant);
  finally
    cdsEmployeeMovements.Filtered:= SaveFiltered;
  end;

  SaveFiltered:= cdsEmployeeAvailabilityModifiers.Filtered;
  cdsEmployeeAvailabilityModifiers.Filtered:= False;
  try
    FStornoEmployeeAvailabilityModifierCount:=
      VarToInt(cdsEmployeeAvailabilityModifiers_STORNO_COUNT.AsVariant);
  finally
    cdsEmployeeAvailabilityModifiers.Filtered:= SaveFiltered;
  end;

  DataSet.Last;
  DataSet.First;
end;

procedure TfmEmployeeDateAvailability.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsData_THE_NEXT_DATE.AsDateTime:= cdsDataTHE_DATE.AsDateTime + 1;
  cdsData_STORNO_MOVEMENT_COUNT.AsInteger:= FStornoEmployeeMovementCount;
  cdsData_STORNO_EMP_AVAIL_MOD_COUNT.AsInteger:= FStornoEmployeeAvailabilityModifierCount;
end;

procedure TfmEmployeeDateAvailability.cdsEmployeeAvailabilityModifiers_MAX_EMP_DAY_ABS_REASON_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
var
  DayAbsenceReasonCode: Integer;
begin
  inherited;

  if (not Sender.IsNull) or (cdsDataDAY_ABSENCE_REASON_CODE.AsInteger <> 0) then
    begin
      DayAbsenceReasonCode:=
        Max(VarToInt(Sender.AsVariant), Abs(cdsDataDAY_ABSENCE_REASON_CODE.AsInteger));

      Text:=
        Format(SDayAbsence, [
          IfThen(
            ((IntToDayAbsenceReason(cdsDataDAY_ABSENCE_REASON_CODE.AsInteger) = darPlanSelfAbsence) and
             (IntToDayAbsenceReason(DayAbsenceReasonCode) = darRealSelfAbsence)),
            SPlanSelfAbsencePreffix,
            ''
          ),
          cdsEmpDayAbsenceReasons.Lookup('EMP_DAY_ABSENCE_REASON_CODE',
            DayAbsenceReasonCode,
            'EMP_DAY_ABSENCE_REASON_NAME'
          )
        ]);
    end;
end;

procedure TfmEmployeeDateAvailability.TimeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeeDateAvailability.UpdateGridHeights;
begin
  FfmEmployeeDateAvailabilityMovements.pnlMain.SetBounds(0, 0, pnlEmployeeMovements.Width, pnlEmployeeMovements.Height);
  FfmEmployeeDateAvailabilityModifiers.pnlMain.SetBounds(0, 0, pnlEmployeeAvailabilityModifiers.Width, pnlEmployeeAvailabilityModifiers.Height);
end;

procedure TfmEmployeeDateAvailability.grdTimeLineMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  Col, Row: Integer;
begin
  inherited;

  grdTimeLine.MouseToCell(X, Y, Col, Row);

  if (0 <= Col) and (Col < Length(FTimeLineAvailabilityStatuses)) then
    grdTimeLine.Hint:= AvailabilityStatusHints[FTimeLineAvailabilityStatuses[Col]]
  else
    grdTimeLine.Hint:= '';

  Application.ActivateHint(Mouse.CursorPos);
end;

procedure TfmEmployeeDateAvailability.cdsEmpAvailModifierTypesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  PersistDBTextMessages(cdsEmpAvailModifierTypes);
end;

end.

