unit fEmployeeDateAvailabilityModifier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, ComCtrls,
  JvExStdCtrls, JvDBCombobox, JvExControls, JvDBLookup, Mask, DBCtrls,
  fBaseFrame, fDBFrame, fFieldEditFrame, fDateIntervalFrame,
  fDateFieldEditFrame, AbmesDBCheckBox, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, ToolWin, fTimeFieldEditFrame, JvComponentBase,
  dDocClient, uClientTypes;

type
  TfmEmployeeDateAvailabilityModifier = class(TBevelEditForm)
    pnlPageControl: TPanel;
    pcMain: TPageControl;
    tsNone: TTabSheet;
    cbEmpAvailModifierType: TJvDBLookupCombo;
    tsDayModifier: TTabSheet;
    tsHourModifier: TTabSheet;
    lblSelectEmpAvailModifierType: TLabel;
    cbDayAbsenceReason: TJvDBLookupCombo;
    lblDayAbsenceReason: TLabel;
    lblDayAbsenceDocType: TLabel;
    cbDayAbsenceDocType: TJvDBLookupCombo;
    lblDayAbsenceDocNo: TLabel;
    edtDayAbsenceDocNo: TDBEdit;
    frDayAbsenceDocDate: TfrDateFieldEditFrame;
    lblDayAbsenceDocDate: TLabel;
    lblDayAbsenceDocIssuer: TLabel;
    edtDayAbsenceDocIssuer: TDBEdit;
    frDayAbsenceDateInterval: TfrDateIntervalFrame;
    lblDateInterval: TLabel;
    frHourAvailDateInterval: TfrDateIntervalFrame;
    lblHourAvailDateInterval: TLabel;
    lblBeginTime: TLabel;
    lblEndTime: TLabel;
    edtDurationHours: TDBEdit;
    lblDurationHours: TLabel;
    lblDurationHoursMeasure: TLabel;
    lblHourAvailModifierReason: TLabel;
    cbHourAvailModifierReason: TJvDBLookupCombo;
    chbIsPersonalWorkdaysOnly: TAbmesDBCheckBox;
    lblNotes: TLabel;
    edtNotes: TDBEdit;
    gbCreateInfo: TGroupBox;
    lblCreateTime: TLabel;
    lblCreateDate: TLabel;
    lblCreateEmployee: TLabel;
    frCreateDate: TfrDateFieldEditFrame;
    edtCreateTime: TDBEdit;
    frCreateEmployee: TfrEmployeeFieldEditFrameBald;
    gbStornoInfo: TGroupBox;
    lblStornoTime: TLabel;
    lblStornoDate: TLabel;
    lblStornoEmployee: TLabel;
    frStornoDate: TfrDateFieldEditFrame;
    edtStornoTime: TDBEdit;
    frStornoEmployee: TfrEmployeeFieldEditFrameBald;
    frAuthorizeEmployee: TfrEmployeeFieldEditFrameBald;
    lblAuthorizeEmployee: TLabel;
    pnlStornoButton: TPanel;
    btnStorno: TBitBtn;
    pnlStorned: TPanel;
    chbStorned: TCheckBox;
    actStorno: TAction;
    tlbDayAbsenceDocs: TToolBar;
    btnDayAbsenceDocs: TToolButton;
    tlbHourAvailDocs: TToolBar;
    btnHourAvailDocs: TToolButton;
    frBeginTime: TfrTimeFieldEditFrame;
    frEndTime: TfrTimeFieldEditFrame;
    actCalcDurationHours: TAction;
    tlbCalcDurationHours: TToolBar;
    btnCalcDurationHours: TToolButton;
    tsShiftChange: TTabSheet;
    frShiftChangeDateInterval: TfrDateIntervalFrame;
    lblShiftChangeDateInterval: TLabel;
    tlbShiftChangeDocs: TToolBar;
    btnShiftChangeDocs: TToolButton;
    lblShiftChangeReason: TLabel;
    cbShiftChangeReason: TJvDBLookupCombo;
    lblOldShift: TLabel;
    cbOldShift: TJvDBLookupCombo;
    lblNewShift: TLabel;
    cbNewShift: TJvDBLookupCombo;
    procedure actCalcDurationHoursExecute(Sender: TObject);
    procedure actCalcDurationHoursUpdate(Sender: TObject);
    procedure cbEmpAvailModifierTypeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actStornoExecute(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
  private
    FCanModifyData: Boolean;
    FStartStornoEmployeeCode: Integer;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FEditDayAbsenceDocDataOnly: Boolean;
    procedure SetActivePage;
    procedure dmDocClientOnDataChanged(Sender: TObject);
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
    class function CanUseDocs: Boolean; override;
    function GetRecordReadOnly: Boolean; override;
  public
    procedure Initialize; override;
    procedure Finalize; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AEmployeeFrameAllEmployees: TDataSet = nil); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AEmployeeFrameAllEmployees: TDataSet = nil): Boolean;
  end;

implementation

{$R *.dfm}

uses
  Math, uUtils, uClientUtils, AbmesDialogs, uDocUtils, DateUtils,
  dMain, fBaseForm, uUserActivityConsts, uEmployeeAvailability, uClientDateTime;

resourcestring
  SConfirmStorno = 'Анулиране с оставане на екран?';
  
procedure TfmEmployeeDateAvailabilityModifier.cbEmpAvailModifierTypeChange(
  Sender: TObject);
begin
  inherited;
  SetActivePage;
end;

procedure TfmEmployeeDateAvailabilityModifier.FormCreate(Sender: TObject);
begin
  inherited;

  frDayAbsenceDocDate.FieldNames:= 'EMP_DAY_ABSENCE_DOC_DATE';
  frBeginTime.FieldNames:= 'BEGIN_TIME';
  frEndTime.FieldNames:= 'END_TIME';
  frAuthorizeEmployee.FieldNames:= 'AUTHORIZE_EMPLOYEE_CODE';
  frAuthorizeEmployee.SpecialProffesionEmployee:= speEmpAvailModifierAuthorizer;
  frCreateDate.FieldNames:= 'CREATE_DATE';
  frCreateEmployee.FieldNames:= 'CREATE_EMPLOYEE_CODE';
  frStornoDate.FieldNames:= 'STORNO_DATE';
  frStornoEmployee.FieldNames:= 'STORNO_EMPLOYEE_CODE';
end;

procedure TfmEmployeeDateAvailabilityModifier.Initialize;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  FStartStornoEmployeeCode:= dsData.DataSet.FieldByName('STORNO_EMPLOYEE_CODE').AsInteger;
  FCanModifyData:= (EditMode = emInsert);

  with dsData.DataSet.FieldByName('_EMP_DAY_ABSENCE_REASON_NAME') do
    if (EditMode <> emInsert) and (not IsNull) then
      LookupDataSet.Locate(LookupKeyFields, dsData.DataSet.FieldByName(KeyFields).AsInteger, []);

  SetActivePage;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotEmpAvailModifier, dsData.DataSet);
end;

procedure TfmEmployeeDateAvailabilityModifier.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmEmployeeDateAvailabilityModifier.SetActivePage;
var
  eamtc: Integer;
begin
  eamtc:= VarToInt(cbEmpAvailModifierType.KeyValue);

  if (eamtc = eamtcShiftChange) then
    pcMain.ActivePageIndex:= 3
  else
    pcMain.ActivePageIndex:= Min(eamtc, 2);
end;

procedure TfmEmployeeDateAvailabilityModifier.SetDataParams(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AEmployeeFrameAllEmployees: TDataSet);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  frCreateEmployee.OuterAllEmployeesDataSet:= AEmployeeFrameAllEmployees;
  frStornoEmployee.OuterAllEmployeesDataSet:= AEmployeeFrameAllEmployees;
end;

class function TfmEmployeeDateAvailabilityModifier.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AEmployeeFrameAllEmployees: TDataSet): Boolean;
var
  f: TfmEmployeeDateAvailabilityModifier;
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

procedure TfmEmployeeDateAvailabilityModifier.SetDBFrameReadOnly(
  AFrame: TDBFrame);
begin
  inherited;

  if (AFrame = frHourAvailDateInterval) or
     (AFrame = frBeginTime) or
     (AFrame = frEndTime) or
     (AFrame = frShiftChangeDateInterval) then
    begin
      AFrame.ReadOnly:= not FCanModifyData;
      Exit;
    end;  { if }

  if (AFrame = frDayAbsenceDateInterval) or
     (AFrame = frAuthorizeEmployee) then
    begin
      AFrame.ReadOnly:= (not FCanModifyData) or FEditDayAbsenceDocDataOnly;
      Exit;
    end;  { if }

  if (AFrame = frDayAbsenceDocDate) then
    begin
      AFrame.ReadOnly:=
        (not FCanModifyData) or
        (dsData.DataSet.Active and
         (dsData.DataSet.FieldByName('EMP_DAY_ABSENCE_REASON_CODE').AsInteger <= 1));
      Exit;
    end;  { if }

  if (AFrame = frCreateDate) or
     (AFrame = frCreateEmployee) or
     (AFrame = frStornoDate) or
     (AFrame = frStornoEmployee) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmEmployeeDateAvailabilityModifier.actCalcDurationHoursUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    FCanModifyData and
    dsData.DataSet.Active and
    (not dsData.DataSet.FieldByName('BEGIN_TIME').IsNull) and
    (not dsData.DataSet.FieldByName('END_TIME').IsNull);
end;

procedure TfmEmployeeDateAvailabilityModifier.actCalcDurationHoursExecute(
  Sender: TObject);
var
  DurationHours: Real;
begin
  inherited;

  DurationHours:=
    ( TimeOf(dsData.DataSet.FieldByName('END_TIME').AsDateTime) -
      TimeOf(dsData.DataSet.FieldByName('BEGIN_TIME').AsDateTime) ) * 24;

  if (DurationHours < 0) then
    DurationHours:= DurationHours + 1;

  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('DURATION_HOURS').AsFloat:= DurationHours;
end;

procedure TfmEmployeeDateAvailabilityModifier.actFormUpdate(
  Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  ro:= not FCanModifyData;
  edtNotes.ReadOnly:= ro;
  edtNotes.Color:= ReadOnlyColors[ro];

  ro:= (not FCanModifyData) or FEditDayAbsenceDocDataOnly;

  cbEmpAvailModifierType.ReadOnly:= ro;
  cbDayAbsenceReason.ReadOnly:= ro;
  edtDurationHours.ReadOnly:= ro;
  cbHourAvailModifierReason.ReadOnly:= ro;
  chbIsPersonalWorkdaysOnly.ReadOnly:= ro;
  cbShiftChangeReason.ReadOnly:= ro;
  cbOldShift.ReadOnly:= ro;
  cbNewShift.ReadOnly:= ro;

  cbEmpAvailModifierType.Color:= ReadOnlyColors[ro];
  cbDayAbsenceReason.Color:= ReadOnlyColors[ro];
  edtDurationHours.Color:= ReadOnlyColors[ro];
  cbHourAvailModifierReason.Color:= ReadOnlyColors[ro];
  cbShiftChangeReason.Color:= ReadOnlyColors[ro];
  cbOldShift.Color:= ReadOnlyColors[ro];
  cbNewShift.Color:= ReadOnlyColors[ro];

  ro:=
    (not FCanModifyData) or
    (dsData.DataSet.Active and
     (dsData.DataSet.FieldByName('EMP_DAY_ABSENCE_REASON_CODE').AsInteger <= 1));

  cbDayAbsenceDocType.ReadOnly:= ro;
  edtDayAbsenceDocNo.ReadOnly:= ro;
  edtDayAbsenceDocIssuer.ReadOnly:= ro;

  cbDayAbsenceDocType.Color:= ReadOnlyColors[ro];
  edtDayAbsenceDocNo.Color:= ReadOnlyColors[ro];
  edtDayAbsenceDocIssuer.Color:= ReadOnlyColors[ro];

  pnlStornoButton.Visible:=
    (EditMode = emEdit) and
    (dsData.DataSet.State = dsBrowse)  and
    dsData.DataSet.FieldByName('STORNO_EMPLOYEE_CODE').IsNull;

  pnlStorned.Visible:=
    (FStartStornoEmployeeCode > 0);

  btnDayAbsenceDocs.ImageIndex:= dsData.DataSet.FieldByName('HAS_DOC_ITEMS').AsInteger;
  btnHourAvailDocs.ImageIndex:= btnDayAbsenceDocs.ImageIndex;
  btnShiftChangeDocs.ImageIndex:= btnDayAbsenceDocs.ImageIndex;
end;

procedure TfmEmployeeDateAvailabilityModifier.actStornoExecute(
  Sender: TObject);
begin
  inherited;

  case MessageDlgEx(SConfirmStorno, mtConfirmation, mbYesNoCancel, 0) of
    mrCancel:
      Abort;

    mrYes:
      begin
        CheckEditMode(dsData.DataSet);

        if not dsData.DataSet.FieldByName('DOC_CODE').IsNull then
          begin
            dsData.DataSet.FieldByName('DOC_CODE').AsInteger:=
              dmDocClient.CreateDocLike(dsData.DataSet.FieldByName('DOC_BRANCH_CODE').AsInteger, dsData.DataSet.FieldByName('DOC_CODE').AsInteger, True);
            dsData.DataSet.FieldByName('DOC_BRANCH_CODE').AsInteger:= LoginContext.LocalBranchCode;
          end;

        dsData.DataSet.FieldByName('CREATE_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
        dsData.DataSet.FieldByName('CREATE_DATE').AsDateTime:= ContextDate;
        dsData.DataSet.FieldByName('CREATE_TIME').AsDateTime:= ContextTime;

        FCanModifyData:= True;

        FEditDayAbsenceDocDataOnly:=
          (Trunc(ContextDate - dsData.DataSet.FieldByName('BEGIN_DATE').AsDateTime) > LoginContext.MaxEmpAvailModifierRegistrationDays) and
          not LoginContext.HasUserActivity(uaEmployeeAvailabilityModifierStorno);
      end;

    mrNo:
      begin
        if (Trunc(ContextDate - dsData.DataSet.FieldByName('BEGIN_DATE').AsDateTime) > LoginContext.MaxEmpAvailModifierRegistrationDays) then
          LoginContext.CheckUserActivity(uaEmployeeAvailabilityModifierStorno);

        CheckEditMode(dsData.DataSet);
        dsData.DataSet.FieldByName('STORNO_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
        ModalResult:= mrOk;
      end;
  end;
end;

procedure TfmEmployeeDateAvailabilityModifier.DoApplyUpdates;
begin
  try
    inherited;
  except
    CheckEditMode(dsData.DataSet);
    raise;
  end;  { try }
end;

procedure TfmEmployeeDateAvailabilityModifier.DoCancelUpdates;
var
  r: Integer;
begin
  inherited;
  r:= dsData.DataSet.RecNo;
  (dsData.DataSet as TClientDataSet).CancelUpdates;
  dsData.DataSet.RecNo:= r;
end;

class function TfmEmployeeDateAvailabilityModifier.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmEmployeeDateAvailabilityModifier.dmDocClientOnDataChanged(
  Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(dsData.DataSet.FieldByName('HAS_DOC_ITEMS'));
end;

procedure TfmEmployeeDateAvailabilityModifier.btnDocsClick(
  Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if (EditMode = emReadOnly) or
     (FStartStornoEmployeeCode > 0) or
     ( (EditMode = emEdit) and
       (dsData.DataSet.State = dsBrowse) ) then
    em:= emReadOnly
  else
    em:= EditMode;

  dmDocClient.DSOpenDoc(em, (Sender as TControl), dotEmpAvailModifier, dsData.DataSet);
end;

function TfmEmployeeDateAvailabilityModifier.GetRecordReadOnly: Boolean;
begin
  Result:= not dsData.DataSet.FieldByName('STORNO_EMPLOYEE_CODE').IsNull;
end;

end.
