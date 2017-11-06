unit fRealFinModelLine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls, fBaseFrame,
  fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, Mask, JvExControls, JvDBLookup, fDateFieldEditFrame;

type
  TfmRealFinModelLine = class(TEditForm)
    gbLine: TGroupBox;
    lblFinModelLineType: TLabel;
    lblShowNo: TLabel;
    lblLineQuantityPercent: TLabel;
    lblAbsMovementDateOffset: TLabel;
    lblAbsMovementDateOffsetMeasure: TLabel;
    lblFinancialStore: TLabel;
    lblPartnerOffice: TLabel;
    lblLineQuantityPercentMeasure: TLabel;
    cbFinModelLineType: TJvDBLookupCombo;
    edtShowNo: TDBEdit;
    edtLineQuantityPercent: TDBEdit;
    edtAbsMovementDateOffset: TDBEdit;
    cbMovementDateOffsetSign: TJvDBLookupCombo;
    frFinancialStore: TfrDeptFieldEditFrameBald;
    pnlMovement: TPanel;
    lblTransportDurationDays: TLabel;
    lblTransportDurationDaysMeasure: TLabel;
    edtTransportDurationDays: TDBEdit;
    cbPartnerOffice: TJvDBLookupCombo;
    pnlFinModelLineReason: TPanel;
    lblFinModelLineReason: TLabel;
    cbFinModelLineReason: TJvDBLookupCombo;
    edtAfterAbsMovementDateOffset: TEdit;
    actAnnulLine: TAction;
    pnlAnnulLine: TPanel;
    btnAnnulLine: TBitBtn;
    pnlOrderAnnuled: TPanel;
    chbOrderAnnuled: TCheckBox;
    actArrow: TAction;
    pnlArrow: TPanel;
    btnArrow: TSpeedButton;
    frMovementPlanBeginDate: TfrDateFieldEditFrame;
    lblMovementBeginDate: TLabel;
    frMovementPlanEndDate: TfrDateFieldEditFrame;
    lblMovementEndDate: TLabel;
    edtFMMovementOffsetType: TDBEdit;
    dsFinOrder: TDataSource;
    pnlToggleDocument: TPanel;
    pnlToggleInheritedDocument: TPanel;
    edtInheritedDocumentIdentifier: TDBEdit;
    pnlToggleOverriddenDocument: TPanel;
    edtDocumentIdentifier: TDBEdit;
    pnlToggleDocumentButton: TPanel;
    btnToggleDocument: TSpeedButton;
    actToggleDocument: TAction;
    frDocumentDate: TfrDateFieldEditFrame;
    frInheritedDocumentDate: TfrDateFieldEditFrame;
    lblDocumentIdentifier: TLabel;
    lblDocumentDate: TLabel;
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actAnnulLineExecute(Sender: TObject);
    procedure actArrowUpdate(Sender: TObject);
    procedure actArrowExecute(Sender: TObject);
    procedure actAnnulLineUpdate(Sender: TObject);
    procedure actToggleDocumentUpdate(Sender: TObject);
    procedure actToggleDocumentExecute(Sender: TObject);
  private
    function CanModifyArrow: Boolean;
    function HasBaseDataModifyActivity: Boolean;
    function HasPartialDataModifyActivity: Boolean;
    procedure ToggleActionUpdate(ASender: TObject; AFieldName: string;
      AButtonPanel, AOverriddenPanel, AInheritedPanel: TPanel);
    procedure ToggleActionExecute(ASender: TObject; AFieldName: string);
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uFinModelLineTypes, uClientTypes, uClientUtils, uUtils, DateUtils, uProcesses,
  uClientDateTime, uUserActivityConsts;

{$R *.dfm}

procedure TfmRealFinModelLine.actAnnulLineExecute(Sender: TObject);
var
  NowDateTime: TDateTime;
begin
  inherited;

  NowDateTime:= ContextNow;
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
  dsData.DataSet.FieldByName('ANNUL_DATE').AsDateTime:= DateOf(NowDateTime);
  dsData.DataSet.FieldByName('ANNUL_TIME').AsDateTime:= TimeOf(NowDateTime);
end;

procedure TfmRealFinModelLine.actAnnulLineUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    HasBaseDataModifyActivity;
end;

procedure TfmRealFinModelLine.actArrowExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  with dsData.DataSet.FieldByName('IN_OUT') do
    AsInteger:= -AsInteger;
end;

procedure TfmRealFinModelLine.actArrowUpdate(Sender: TObject);
begin
  inherited;
  pnlArrow.Enabled:= CanModifyArrow;
end;

procedure TfmRealFinModelLine.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  cbMovementDateOffsetSign.Enabled:=
    (edtAbsMovementDateOffset.Field.AsInteger > 0);

  pnlFinModelLineReason.Visible:=
    (IntToFinModelLineType(dsData.DataSet.FieldByName('FIN_MODEL_LINE_TYPE_CODE').AsInteger) = fmltSecondary);

  ro:= (EditMode = emReadOnly) or not HasPartialDataModifyActivity;
  edtAbsMovementDateOffset.ReadOnly:= ro;
  SetControlsReadOnly(ro, [edtLineQuantityPercent, cbMovementDateOffsetSign, edtDocumentIdentifier]);

  ro:= (EditMode = emReadOnly) or not HasBaseDataModifyActivity;
  edtTransportDurationDays.ReadOnly:= ro;
  SetControlsReadOnly(ro, [cbPartnerOffice, cbFinModelLineReason]);

  ro:= ro or (EditMode <> emInsert);
  SetControlReadOnly(ro, cbFinModelLineType);

  pnlAnnulLine.Visible:=
    (EditMode = emEdit) and
    not dsData.DataSet.FieldByName('IS_ANNULED').AsBoolean;
  pnlOrderAnnuled.Visible:=
    dsData.DataSet.FieldByName('IS_ANNULED').AsBoolean;

  btnArrow.Caption:=
    dsData.DataSet.FieldByName('_ARROW').DisplayText;
end;

procedure TfmRealFinModelLine.actToggleDocumentExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_DOCUMENT');
end;

procedure TfmRealFinModelLine.actToggleDocumentUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_DOCUMENT',
    pnlToggleDocumentButton, pnlToggleOverriddenDocument, pnlToggleInheritedDocument);
end;

function TfmRealFinModelLine.CanModifyArrow: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    ((dsData.DataSet as TClientDataSet).UpdateStatus = usInserted) and
    ((dsData.DataSet as TClientDataSet).DataSetField.DataSet.FieldByName('FIN_PROCESS_CODE').AsInteger in [pFinVtrRF, pFinVtrOF]);
end;

function TfmRealFinModelLine.HasBaseDataModifyActivity: Boolean;
begin
  Result:= LoginContext.HasUserActivity(uaRealFinancialModelEdit);
end;

function TfmRealFinModelLine.HasPartialDataModifyActivity: Boolean;
begin
  Result:=
    LoginContext.HasUserActivity(uaRealFinancialModelEdit) or
    LoginContext.HasUserActivity(uaRFMLEditBeforeAndAfterActivation) or
    ((dsData.DataSet as TClientDataSet).DataSetField.DataSet.FieldByName('ACTIVATE_EMPLOYEE_CODE').IsNull and
     LoginContext.HasUserActivity(uaRFMLEditBeforeActivation));
end;

procedure TfmRealFinModelLine.Initialize;
begin
  dsFinOrder.DataSet:= (OuterDataSet as TClientDataSet).DataSetField.DataSet;
  frInheritedDocumentDate.SetDataSet(dsFinOrder.DataSet);
  inherited;
end;

procedure TfmRealFinModelLine.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frMovementPlanBeginDate) or
     (AFrame = frMovementPlanEndDate) or
     (AFrame = frDocumentDate) then
    begin
      AFrame.ReadOnly:=
        (EditMode = emReadOnly) or
        not HasPartialDataModifyActivity;
      Exit;
    end;

  if (AFrame = frFinancialStore) then
    begin
      AFrame.ReadOnly:=
        (EditMode = emReadOnly) or
        not HasBaseDataModifyActivity;
      Exit;
    end;

  if (AFrame = frInheritedDocumentDate) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmRealFinModelLine.ToggleActionExecute(ASender: TObject;
  AFieldName: string);
begin
  CheckEditMode(dsData.DataSet);
  with dsData.DataSet.FieldByName(AFieldName) do
    AsBoolean:= not AsBoolean;

  (ASender as TAction).Update;
  SelectNext(((ASender as TAction).ActionComponent as TSpeedButton).Parent.Parent, True, True);
end;

procedure TfmRealFinModelLine.ToggleActionUpdate(ASender: TObject;
  AFieldName: string; AButtonPanel, AOverriddenPanel, AInheritedPanel: TPanel);
begin
  AButtonPanel.Enabled:=
    not ((EditMode = emReadOnly) or not HasPartialDataModifyActivity);
  with ASender as TAction do
    begin
      Checked:= dsData.DataSet.FieldByName(AFieldName).AsBoolean;
      AOverriddenPanel.Visible:= Checked;
      AInheritedPanel.Visible:= not Checked;
    end;  { with }
end;

procedure TfmRealFinModelLine.FormCreate(Sender: TObject);
begin
  inherited;

  frFinancialStore.FieldNames:= 'FIN_STORE_CODE';
  frFinancialStore.SelectStore:= True;
  frFinancialStore.SelectFinancialStore:= True;
  frMovementPlanBeginDate.FieldNames:= 'MOVEMENT_PLAN_BEGIN_DATE';
  frMovementPlanEndDate.FieldNames:= 'MOVEMENT_PLAN_END_DATE';
  frDocumentDate.FieldNames:= 'DOCUMENT_DATE';
  frInheritedDocumentDate.FieldNames:= 'DOCUMENT_DATE';
end;

end.
