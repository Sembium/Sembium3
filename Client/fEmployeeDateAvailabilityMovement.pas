unit fEmployeeDateAvailabilityMovement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  fBaseFrame, fDBFrame, fFieldEditFrame, fDateFieldEditFrame,
  fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald, DBCtrlsEh,
  JvExStdCtrls, JvDBCombobox, fTimeFieldEditFrame, JvComponentBase,
  ComCtrls, ToolWin, dDocClient, uClientTypes;

type
  TfmEmployeeDateAvailabilityMovement = class(TBevelEditForm)
    lblMovementDate: TLabel;
    lblMovementTime: TLabel;
    frMovementDate: TfrDateFieldEditFrame;
    gbCreateInfo: TGroupBox;
    frCreateDate: TfrDateFieldEditFrame;
    lblCreateTime: TLabel;
    edtCreateTime: TDBEdit;
    lblCreateDate: TLabel;
    frCreateEmployee: TfrEmployeeFieldEditFrameBald;
    lblCreateEmployee: TLabel;
    gbStornoInfo: TGroupBox;
    lblStornoTime: TLabel;
    lblStornoDate: TLabel;
    lblStornoEmployee: TLabel;
    frStornoDate: TfrDateFieldEditFrame;
    edtStornoTime: TDBEdit;
    frStornoEmployee: TfrEmployeeFieldEditFrameBald;
    pnlStornoButton: TPanel;
    btnStorno: TBitBtn;
    pnlStorned: TPanel;
    chbStorned: TCheckBox;
    actStorno: TAction;
    cbInOut: TJvDBComboBox;
    lblInOut: TLabel;
    frMovementTime: TfrTimeFieldEditFrame;
    actSetNowToMovementTime: TAction;
    tlbClearMovementTime: TToolBar;
    btnSetNowToMovementTime: TToolButton;
    procedure actSetNowToMovementTimeExecute(Sender: TObject);
    procedure actSetNowToMovementTimeUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actStornoExecute(Sender: TObject);
  private
    FStartStornoEmployeeCode: Integer;
    FCanModifyData: Boolean;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
    function GetRecordReadOnly: Boolean; override;
  public
    procedure Initialize; override;
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

uses
  uClientUtils, AbmesDialogs, uUtils, uColorConsts, dMain, uClientDateTime;

{$R *.dfm}

resourcestring
  SConfirmStorno = 'Анулиране с оставане на екран?';

procedure TfmEmployeeDateAvailabilityMovement.FormCreate(Sender: TObject);
begin
  inherited;

  frMovementDate.FieldNames:= 'EMP_MOVEMENT_DATE';
  frMovementTime.FieldNames:= 'EMP_MOVEMENT_TIME';
  frCreateDate.FieldNames:= 'CREATE_DATE';
  frCreateEmployee.FieldNames:= 'CREATE_EMPLOYEE_CODE';
  frStornoDate.FieldNames:= 'STORNO_DATE';
  frStornoEmployee.FieldNames:= 'STORNO_EMPLOYEE_CODE';
end;

procedure TfmEmployeeDateAvailabilityMovement.SetDataParams(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AEmployeeFrameAllEmployees: TDataSet);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  frCreateEmployee.OuterAllEmployeesDataSet:= AEmployeeFrameAllEmployees;
  frStornoEmployee.OuterAllEmployeesDataSet:= AEmployeeFrameAllEmployees;
end;

class function TfmEmployeeDateAvailabilityMovement.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AEmployeeFrameAllEmployees: TDataSet): Boolean;
var
  f: TfmEmployeeDateAvailabilityMovement;
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

procedure TfmEmployeeDateAvailabilityMovement.SetDBFrameReadOnly(
  AFrame: TDBFrame);
begin
  if (AFrame = frMovementDate) or (AFrame = frMovementTime) then
    begin
      AFrame.ReadOnly:= not FCanModifyData;
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

procedure TfmEmployeeDateAvailabilityMovement.actSetNowToMovementTimeUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= FCanModifyData;
end;

procedure TfmEmployeeDateAvailabilityMovement.actSetNowToMovementTimeExecute(
  Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('EMP_MOVEMENT_TIME').AsDateTime:= ContextTime;
end;

procedure TfmEmployeeDateAvailabilityMovement.actFormUpdate(
  Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  ro:= not FCanModifyData;

  cbInOut.Enabled:= not ro;
  cbInOut.Color:= ReadOnlyColors[ro];

  pnlStornoButton.Visible:=
    (EditMode = emEdit) and
    dsData.DataSet.Active and
    (dsData.DataSet.State = dsBrowse)  and
    dsData.DataSet.FieldByName('STORNO_EMPLOYEE_CODE').IsNull;

  pnlStorned.Visible:=
    (FStartStornoEmployeeCode > 0);
end;

procedure TfmEmployeeDateAvailabilityMovement.Initialize;
begin
  inherited;
  FStartStornoEmployeeCode:= dsData.DataSet.FieldByName('STORNO_EMPLOYEE_CODE').AsInteger;
  FCanModifyData:= (EditMode = emInsert);
end;

procedure TfmEmployeeDateAvailabilityMovement.actStornoExecute(
  Sender: TObject);
begin
  inherited;

  case MessageDlgEx(SConfirmStorno, mtConfirmation, mbYesNoCancel, 0) of
    mrCancel:
      Abort;

    mrYes:
      begin
        CheckEditMode(dsData.DataSet);
        dsData.DataSet.FieldByName('CREATE_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
        dsData.DataSet.FieldByName('CREATE_DATE').AsDateTime:= ContextDate;
        dsData.DataSet.FieldByName('CREATE_TIME').AsDateTime:= ContextTime;
        FCanModifyData:= True;
      end;

    mrNo:
      begin
        CheckEditMode(dsData.DataSet);
        dsData.DataSet.FieldByName('STORNO_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
        ModalResult:= mrOk;
      end;
  end;
end;

procedure TfmEmployeeDateAvailabilityMovement.DoApplyUpdates;
begin
  try
    inherited;
  except
    CheckEditMode(dsData.DataSet);
    raise;
  end;  { try }
end;

procedure TfmEmployeeDateAvailabilityMovement.DoCancelUpdates;
var
  r: Integer;
begin
  inherited;
  r:= dsData.DataSet.RecNo;
  (dsData.DataSet as TClientDataSet).CancelUpdates;
  dsData.DataSet.RecNo:= r;
end;

function TfmEmployeeDateAvailabilityMovement.GetRecordReadOnly: Boolean;
begin
  Result:= not dsData.DataSet.FieldByName('STORNO_EMPLOYEE_CODE').IsNull;
end;

end.
