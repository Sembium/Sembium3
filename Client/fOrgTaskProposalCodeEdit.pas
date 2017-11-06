unit fOrgTaskProposalCodeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, fDateFieldEditFrame,
  fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fProductFieldEditFrameLabeled, Mask, DBCtrls,
  AbmesFields;

type
  TfmOrgTaskProposalCodeEdit = class(TEditForm)
    gbOrganisationTaskProposal: TGroupBox;
    gbOrgTaskProposalID: TGroupBox;
    lblOrgTaskProposalState: TLabel;
    lblOrgTaskProposalNo: TLabel;
    lblOrgTaskProposalCycleNo: TLabel;
    edtOrgTaskProposalState: TDBEdit;
    edtOrgTaskProposalCycleNo: TDBEdit;
    edtOrgTaskProposalNo: TDBEdit;
    pnlDetachOrgTaskProposal: TPanel;
    btnDetachOrgTaskProposal: TSpeedButton;
    frOrgTaskProposalProduct: TfrProductFieldEditFrameLabeled;
    gbOrgTaskProposalBindDate: TGroupBox;
    frOrgTaskProposalBindDate: TfrDateFieldEditFrame;
    actDetachOrgTaskProposal: TAction;
    dsOrgTaskProposal: TDataSource;
    cdsOrgTaskProposal: TAbmesClientDataSet;
    cdsOrgTaskProposalORG_TASK_PROPOSAL_CODE: TAbmesFloatField;
    cdsOrgTaskProposalOTP_STATE_CODE: TAbmesFloatField;
    cdsOrgTaskProposalORG_TASK_PROPOSAL_NO: TAbmesFloatField;
    cdsOrgTaskProposalORG_TASK_PROPOSAL_CYCLE_NO: TAbmesFloatField;
    cdsOrgTaskProposalPRODUCT_CODE: TAbmesFloatField;
    procedure actDetachOrgTaskProposalUpdate(Sender: TObject);
    procedure actDetachOrgTaskProposalExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsOrgTaskProposalBeforeOpen(DataSet: TDataSet);
    procedure cdsOrgTaskProposalOTP_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsOrgTaskProposalORG_TASK_PROPOSAL_NOChange(Sender: TField);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure DoApplyUpdates; override;
    class function CanUseDocs: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  uOrganisationTaskClientUtils, Math, dMain, uUserActivityConsts, uClientUtils,
  uUtils;

{$R *.dfm}

{ TfmOrgTaskProposalCodeEdit }

procedure TfmOrgTaskProposalCodeEdit.actDetachOrgTaskProposalExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaExceptEventsEditOTP);
  dsData.DataSet.FieldByName('ORG_TASK_PROPOSAL_CODE').Clear;
end;

procedure TfmOrgTaskProposalCodeEdit.actDetachOrgTaskProposalUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not dsData.DataSet.FieldByName('ORG_TASK_PROPOSAL_CODE').IsNull;
end;

class function TfmOrgTaskProposalCodeEdit.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmOrgTaskProposalCodeEdit.cdsOrgTaskProposalBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsOrgTaskProposal.Params.ParamByName('ORG_TASK_PROPOSAL_CODE').AsInteger:=
    dsData.DataSet.FieldByName('ORG_TASK_PROPOSAL_CODE').AsInteger;
end;

procedure TfmOrgTaskProposalCodeEdit.cdsOrgTaskProposalORG_TASK_PROPOSAL_NOChange(Sender: TField);
var
  OrgTaskProposalCode: Integer;
begin
  inherited;
  OrgTaskProposalCode:=
    dmMain.SvrOrganisationTasks.GetOrgTaskProposalCodeByNo(cdsOrgTaskProposalORG_TASK_PROPOSAL_NO.AsInteger);

  if (OrgTaskProposalCode = 0) then
    dsData.DataSet.FieldByName('ORG_TASK_PROPOSAL_CODE').Clear
  else
    dsData.DataSet.FieldByName('ORG_TASK_PROPOSAL_CODE').AsInteger:= OrgTaskProposalCode;
end;

procedure TfmOrgTaskProposalCodeEdit.cdsOrgTaskProposalOTP_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(Sender.AsInteger, Low(OTPStateAbbrevs), High(OTPStateAbbrevs)) then
    Text:= OTPStateAbbrevs[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmOrgTaskProposalCodeEdit.dsDataDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Assigned(Field) then
    if (Field.FieldName = 'ORG_TASK_PROPOSAL_CODE') then
      RefreshDataSet(cdsOrgTaskProposal);
end;

procedure TfmOrgTaskProposalCodeEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (cdsOrgTaskProposal.State in dsEditModes) and (ModalResult = mrOk) then
    cdsOrgTaskProposal.UpdateRecord;

  inherited;
end;

procedure TfmOrgTaskProposalCodeEdit.FormCreate(Sender: TObject);
begin
  inherited;
  frOrgTaskProposalProduct.FieldNames:= 'PRODUCT_CODE';
  frOrgTaskProposalProduct.SetDataSet(cdsOrgTaskProposal);
  frOrgTaskProposalBindDate.FieldNames:= 'OTP_BIND_DATE';
end;

procedure TfmOrgTaskProposalCodeEdit.OpenDataSets;
begin
  inherited OpenDataSets;
  cdsOrgTaskProposal.Open;
end;

procedure TfmOrgTaskProposalCodeEdit.CloseDataSets;
begin
  cdsOrgTaskProposal.Close;
  inherited CloseDataSets;
end;

procedure TfmOrgTaskProposalCodeEdit.DoApplyUpdates;
begin
  CheckRequiredField(dsData.DataSet.FieldByName('ORG_TASK_PROPOSAL_CODE'));
  inherited DoApplyUpdates;
end;

procedure TfmOrgTaskProposalCodeEdit.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frOrgTaskProposalProduct) or
     (AFrame = frOrgTaskProposalBindDate) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

end.
