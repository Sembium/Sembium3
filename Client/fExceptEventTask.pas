unit fExceptEventTask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields,
  fBaseFrame, fDBFrame, fFieldEditFrame, fExceptEventIdentification, Mask,
  DBCtrls, fDateFieldEditFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameLabeled, fEmployeeFieldEditFrame, ComCtrls, ToolWin,
  dDocClient, uClientTypes, fTimeFieldEditFrame, System.Actions, JvExControls, JvDBLookup;

type
  TfmExceptEventTask = class(TEditForm)
    cdsDataEXCEPT_EVENT_TASK_CODE: TAbmesFloatField;
    cdsDataEXCEPT_EVENT_CODE: TAbmesFloatField;
    cdsDataEXCEPT_EVENT_TASK_NO: TAbmesFloatField;
    cdsDataDEPT_CODE: TAbmesFloatField;
    cdsDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsDataDESCRIPTION: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataNOTES: TAbmesWideStringField;
    cdsDataACTIVATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataACTIVATE_DATE: TAbmesSQLTimeStampField;
    cdsDataACTIVATE_TIME: TAbmesSQLTimeStampField;
    cdsDataPLAN_DATE: TAbmesSQLTimeStampField;
    cdsDataPROBLEM_ENCOUNTER_EMP_CODE: TAbmesFloatField;
    cdsDataPROBLEM_ENCOUNTER_DATE: TAbmesSQLTimeStampField;
    cdsDataPROBLEM_ENCOUNTER_TIME: TAbmesSQLTimeStampField;
    cdsDataPROBLEM_RESOLVE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataPROBLEM_RESOLVE_DATE: TAbmesSQLTimeStampField;
    cdsDataPROBLEM_RESOLVE_TIME: TAbmesSQLTimeStampField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCLOSE_DATE: TAbmesSQLTimeStampField;
    cdsDataCLOSE_TIME: TAbmesSQLTimeStampField;
    cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsDataANNUL_TIME: TAbmesSQLTimeStampField;
    frExceptEventIdentification: TfrExceptEventIdentification;
    gbExceptEventTaskId: TGroupBox;
    lblState: TLabel;
    edtState: TDBEdit;
    cdsDataSTATE_CODE: TAbmesFloatField;
    edtExceptEventTaskNo: TDBEdit;
    lblExceptEventTaskNo: TLabel;
    frCreateDate: TfrDateFieldEditFrame;
    lblCreateDate: TLabel;
    edtRealWorkdays: TDBEdit;
    lblRealWorkdays: TLabel;
    frDept: TfrDeptFieldEditFrameLabeled;
    frEmployee: TfrEmployeeFieldEditFrame;
    gbDescription: TGroupBox;
    actActivateExceptEventTask: TAction;
    moDescription: TDBMemo;
    pnlDoc: TPanel;
    gbNotes: TGroupBox;
    moNotes: TDBMemo;
    gbProblems: TGroupBox;
    frProblemEncounterEmployee: TfrEmployeeFieldEditFrame;
    frProblemResolveEmployee: TfrEmployeeFieldEditFrame;
    btnProblemEncounter: TBitBtn;
    btnProblemResolve: TBitBtn;
    pnlProblemEncounter: TPanel;
    imgProblemEncounter: TImage;
    pnlProblemResolve: TPanel;
    imgProblemResolve: TImage;
    pnlAnnulExceptEventTask: TPanel;
    pnlCloseExceptEventTask: TPanel;
    btnCloseExceptEventTask: TBitBtn;
    btnAnnulExceptEventTask: TBitBtn;
    actCloseExceptEventTask: TAction;
    actAnnulExceptEventTask: TAction;
    cdsDataTASK_REAL_WORKDAYS: TAbmesFloatField;
    cdsData_TASK_WORKDAYS_LEFT: TAbmesFloatField;
    tlbDoc: TToolBar;
    btnDoc: TToolButton;
    actDoc: TAction;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    actProblemEncounter: TAction;
    actProblemResolve: TAction;
    btnActivateExceptEventTask: TBitBtn;
    frProblemEncounterDate: TfrDateFieldEditFrame;
    lblProblemEncounterDate: TLabel;
    frProblemEncounterTime: TfrTimeFieldEditFrame;
    lblProblemEncounterTime: TLabel;
    frProblemResolveDate: TfrDateFieldEditFrame;
    lblProblemResolveDate: TLabel;
    frProblemResolveTime: TfrTimeFieldEditFrame;
    lblProblemResolveTime: TLabel;
    gbFinal: TGroupBox;
    frPlanDate: TfrDateFieldEditFrame;
    lblPlanDate: TLabel;
    frCloseDate: TfrDateFieldEditFrame;
    lblCloseDate: TLabel;
    edtWorkdaysLeft: TDBEdit;
    lblWorkdaysLeft: TLabel;
    lblEETaskResolveType: TLabel;
    cbEETaskResolveType: TJvDBLookupCombo;
    cdsDataEE_TASK_RESOLVE_TYPE_CODE: TAbmesFloatField;
    cdsEETaskResolveTypes: TAbmesClientDataSet;
    cdsEETaskResolveTypesEE_TASK_RESOLVE_TYPE_CODE: TAbmesFloatField;
    cdsEETaskResolveTypesEE_TASK_RESOLVE_TYPE_NO: TAbmesFloatField;
    cdsEETaskResolveTypesEE_TASK_RESOLVE_TYPE_NAME: TAbmesWideStringField;
    cdsEETaskResolveTypesEE_TASK_RESOLVE_TYPE_ABBREV: TAbmesWideStringField;
    dsEETaskResolveTypes: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure actActivateExceptEventTaskExecute(Sender: TObject);
    procedure actActivateExceptEventTaskUpdate(Sender: TObject);
    procedure cdsDataSTATE_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure actDocExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actFormUpdate(Sender: TObject);
    procedure actAnnulExceptEventTaskExecute(Sender: TObject);
    procedure actCloseExceptEventTaskExecute(Sender: TObject);
    procedure actProblemEncounterUpdate(Sender: TObject);
    procedure actProblemResolveUpdate(Sender: TObject);
    procedure actProblemResolveExecute(Sender: TObject);
    procedure actProblemEncounterExecute(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataDEPT_CODEChange(Sender: TField);
  private
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FExceptEventCode: Integer;
    FExceptEventIsSingleResolvable: Boolean;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    function CanModifyData: Boolean;
    procedure AssignEmployeeDateTimeFields(AEmployeeField, ADateField, ATimeField: TField);
    function IsActivated: Boolean;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    procedure Initialize; override;
    procedure Finalize; override;
    class function CanEditOuterDataSet: Boolean; override;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AExceptEventCode: Integer = 0;
      AExceptEventIsSingleResolvable: Boolean = False); reintroduce; virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AExceptEventCode: Integer = 0;
      AExceptEventIsSingleResolvable: Boolean = False): Boolean;
  end;

implementation

uses
  DateUtils, uUtils, Math, uExceptEventClientUtils, dMain,
  uDocUtils, AbmesDialogs, uClientConsts, uClientUtils, uClientDateTime;

resourcestring
  STheExceptEventTask = 'Пакетът от Мерки';
  SConfirmActivate = 'Потвърдете Активирането';
  SSelectedEmployeeMustActivate = 'Активирането може да стане само от посочения служител';

{$R *.dfm}

{ TfmExceptEventTask }

procedure TfmExceptEventTask.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AExceptEventCode: Integer; AExceptEventIsSingleResolvable: Boolean);
begin
  Assert(
    ((AEditMode = emInsert) and (AExceptEventCode <> 0)) or
    ((AEditMode <> emInsert) and (AExceptEventCode = 0)));

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FExceptEventCode:= AExceptEventCode;
  FExceptEventIsSingleResolvable:= AExceptEventIsSingleResolvable;
end;

class function TfmExceptEventTask.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AExceptEventCode: Integer; AExceptEventIsSingleResolvable: Boolean): Boolean;
var
  f: TfmExceptEventTask;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AExceptEventCode, AExceptEventIsSingleResolvable);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

class function TfmExceptEventTask.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmExceptEventTask.FormCreate(Sender: TObject);
begin
  inherited;
  frCreateDate.FieldNames:= 'CREATE_DATE';
  frEmployee.FieldNames:= 'EMPLOYEE_CODE';
  frPlanDate.FieldNames:= 'PLAN_DATE';
  frCloseDate.FieldNames:= 'CLOSE_DATE';
  frProblemEncounterEmployee.FieldNames:= 'PROBLEM_ENCOUNTER_EMP_CODE';
  frProblemEncounterEmployee.DocButtonVisible:= False;
  frProblemResolveEmployee.FieldNames:= 'PROBLEM_RESOLVE_EMPLOYEE_CODE';
  frProblemResolveEmployee.DocButtonVisible:= False;
  frProblemEncounterDate.FieldNames:= 'PROBLEM_ENCOUNTER_DATE';
  frProblemEncounterTime.FieldNames:= 'PROBLEM_ENCOUNTER_TIME';
  frProblemResolveDate.FieldNames:= 'PROBLEM_RESOLVE_DATE';
  frProblemResolveTime.Fieldnames:= 'PROBLEM_RESOLVE_TIME';
end;

procedure TfmExceptEventTask.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frExceptEventIdentification) or
     (AFrame = frCreateDate) or
     (AFrame = frProblemEncounterEmployee) or
     (AFrame = frProblemResolveEmployee) or
     (AFrame = frCloseDate) or
     (AFrame = frProblemEncounterDate) or
     (AFrame = frProblemEncounterTime) or
     (AFrame = frProblemResolveDate) or
     (AFrame = frProblemResolveTime) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  if (AFrame = frDept) or
     (AFrame = frEmployee) or
     (AFrame = frPlanDate) then
    begin
      AFrame.ReadOnly:= not CanModifyData or IsActivated;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmExceptEventTask.AssignEmployeeDateTimeFields(AEmployeeField, ADateField, ATimeField: TField);
var
  CurrentDateTime: TDateTime;
begin
  CurrentDateTime:= ContextNow;
  AEmployeeField.AsInteger:= LoginContext.UserCode;
  ADateField.AsDateTime:= DateOf(CurrentDateTime);
  ATimeField.AsDateTime:= TimeOf(CurrentDateTime);
end;

function TfmExceptEventTask.CanModifyData: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    cdsData.Active and
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

procedure TfmExceptEventTask.actActivateExceptEventTaskUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsDataPLAN_DATE.IsNull and
    not cdsDataDEPT_CODE.IsNull and
    not cdsDataEMPLOYEE_CODE.IsNull and
    cdsDataACTIVATE_EMPLOYEE_CODE.IsNull and
    CanModifyData;
end;

procedure TfmExceptEventTask.actActivateExceptEventTaskExecute(Sender: TObject);
begin
  inherited;

  if (cdsDataEMPLOYEE_CODE.AsInteger <> LoginContext.UserCode) then
    raise Exception.Create(SSelectedEmployeeMustActivate);

  if (MessageDlgEx(SConfirmActivate, mtConfirmation, mbOkCancel, 0) <> mrOK) then
    Abort;

  CheckEditMode(cdsData);
  AssignEmployeeDateTimeFields(cdsDataACTIVATE_EMPLOYEE_CODE, cdsDataACTIVATE_DATE, cdsDataACTIVATE_TIME);
end;

procedure TfmExceptEventTask.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsDataPLAN_DATE.IsNull then
    cdsData_TASK_WORKDAYS_LEFT.Clear
  else
    if cdsDataCLOSE_DATE.IsNull then
      cdsData_TASK_WORKDAYS_LEFT.AsInteger:=
        dmMain.CountWorkdays(ContextDate, cdsDataPLAN_DATE.AsDateTime)
    else
      cdsData_TASK_WORKDAYS_LEFT.AsInteger:=
        dmMain.CountWorkdays(cdsDataCLOSE_DATE.AsDateTime, cdsDataPLAN_DATE.AsDateTime);
end;

procedure TfmExceptEventTask.cdsDataDEPT_CODEChange(Sender: TField);
begin
  inherited;
  frEmployee.RequiredOccupationWorkDeptCode:= cdsDataDEPT_CODE.AsInteger;
end;

procedure TfmExceptEventTask.cdsDataSTATE_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(Sender.AsInteger, Low(ExceptEventTaskStateAbbrevs), High(ExceptEventTaskStateAbbrevs)) then
    Text:= ExceptEventTaskStateAbbrevs[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmExceptEventTask.actDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmExceptEventTask.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    Utils.IfThen(not CanModifyData or IsActivated, emReadOnly, EditMode),
    ((Sender as TAction).ActionComponent as TControl),
    dotExceptEventTask,
    cdsData);
end;

procedure TfmExceptEventTask.Initialize;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotExceptEventTask, dsData.DataSet);

  frEmployee.RequiredOccupationWorkDeptCode:= cdsDataDEPT_CODE.AsInteger;
end;

procedure TfmExceptEventTask.Finalize;
begin
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  inherited;
end;

procedure TfmExceptEventTask.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(dsData.DataSet.FieldByName('HAS_DOC_ITEMS'));
end;

procedure TfmExceptEventTask.cdsDataBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmExceptEventTask.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not cdsDataACTIVATE_EMPLOYEE_CODE.IsNull then
    CheckRequiredField(cdsDataEMPLOYEE_CODE);
end;

function TfmExceptEventTask.IsActivated: Boolean;
begin
  Result:= not cdsDataACTIVATE_EMPLOYEE_CODE.IsNull;
end;

procedure TfmExceptEventTask.OpenDataSets;
begin
  cdsEETaskResolveTypes.Open;
  inherited;
end;

procedure TfmExceptEventTask.CloseDataSets;
begin
  inherited;
  cdsEETaskResolveTypes.Close;
end;

procedure TfmExceptEventTask.actFormUpdate(Sender: TObject);
var
  HasUnresolvedProblems: Boolean;
begin
  inherited;
  pnlCloseExceptEventTask.Visible:=
    cdsData.Active and
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    (EditMode = emEdit);

  pnlAnnulExceptEventTask.Visible:=
    cdsData.Active and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    (EditMode = emEdit);

  SetControlsReadOnly(not CanModifyData or IsActivated, [moDescription, cbEETaskResolveType]);
  SetControlReadOnly(not CanModifyData, moNotes);

  HasUnresolvedProblems:=
    not cdsDataPROBLEM_ENCOUNTER_EMP_CODE.IsNull and
    cdsDataPROBLEM_RESOLVE_EMPLOYEE_CODE.IsNull;

  pnlProblemEncounter.Visible:= HasUnresolvedProblems;
  pnlProblemResolve.Visible:= not HasUnresolvedProblems;
end;

procedure TfmExceptEventTask.actAnnulExceptEventTaskExecute(Sender: TObject);
begin
  inherited;
  if (MessageDlgEx(SConfirmAnnul, mtConfirmation, mbOkCancel, 0) <> mrOK) then
    Abort;

  CheckEditMode(cdsData);
  AssignEmployeeDateTimeFields(cdsDataANNUL_EMPLOYEE_CODE, cdsDataANNUL_DATE, cdsDataANNUL_TIME);
end;

procedure TfmExceptEventTask.actCloseExceptEventTaskExecute(Sender: TObject);
begin
  inherited;
  if (MessageDlgEx(Format(SConfirmClosing, [STheExceptEventTask]), mtConfirmation, mbOkCancel, 0) <> mrOK) then
    Abort;

  CheckEditMode(cdsData);
  AssignEmployeeDateTimeFields(cdsDataCLOSE_EMPLOYEE_CODE, cdsDataCLOSE_DATE, cdsDataCLOSE_TIME);
end;

procedure TfmExceptEventTask.actProblemEncounterExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);

  cdsDataPROBLEM_RESOLVE_EMPLOYEE_CODE.Clear;
  cdsDataPROBLEM_RESOLVE_DATE.Clear;
  cdsDataPROBLEM_RESOLVE_TIME.Clear;

  AssignEmployeeDateTimeFields(
    cdsDataPROBLEM_ENCOUNTER_EMP_CODE,
    cdsDataPROBLEM_ENCOUNTER_DATE,
    cdsDataPROBLEM_ENCOUNTER_TIME);
end;

procedure TfmExceptEventTask.actProblemEncounterUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanModifyData and
    not cdsDataACTIVATE_EMPLOYEE_CODE.IsNull and
    ( cdsDataPROBLEM_ENCOUNTER_EMP_CODE.IsNull or
      not cdsDataPROBLEM_RESOLVE_EMPLOYEE_CODE.IsNull
    );
end;

procedure TfmExceptEventTask.actProblemResolveExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);

  AssignEmployeeDateTimeFields(
    cdsDataPROBLEM_RESOLVE_EMPLOYEE_CODE,
    cdsDataPROBLEM_RESOLVE_DATE,
    cdsDataPROBLEM_RESOLVE_TIME);
end;

procedure TfmExceptEventTask.actProblemResolveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanModifyData and
    not cdsDataACTIVATE_EMPLOYEE_CODE.IsNull and
    cdsDataPROBLEM_RESOLVE_EMPLOYEE_CODE.IsNull and
    not cdsDataPROBLEM_ENCOUNTER_EMP_CODE.IsNull;
end;

procedure TfmExceptEventTask.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataEXCEPT_EVENT_TASK_CODE.AsInteger:= dmMain.SvrExceptEvents.GetNewExceptEventTaskCode;
  AssignEmployeeDateTimeFields(cdsDataCREATE_EMPLOYEE_CODE, cdsDataCREATE_DATE, cdsDataCREATE_TIME);

  Assert(FExceptEventCode <> 0);
  cdsDataEXCEPT_EVENT_CODE.AsInteger:= FExceptEventCode;
  cdsDataEXCEPT_EVENT_TASK_NO.AsInteger:= dmMain.SvrExceptEvents.GetNextExceptEventTaskNo(FExceptEventCode);

  if not FExceptEventIsSingleResolvable then
    cdsDataEE_TASK_RESOLVE_TYPE_CODE.AsEETaskResolveType:= eetrtNormal;
end;

end.
