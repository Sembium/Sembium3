unit fDocProfile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls, Buttons,
  ExtCtrls, fBevelEditForm, Mask, DBCtrls, fBaseFrame, fDBFrame, fFieldEditFrame, fDoc, AbmesFields,
  uClientConsts;

type
  [CanEditOuterDataSet(False)]
  [VerticalResizeStep(GridRowHeight)]
  TfmDocProfile = class(TBevelEditForm)
    edtNo: TDBEdit;
    lblNo: TLabel;
    edtName: TDBEdit;
    lblName: TLabel;
    cdsDataDOC_PROFILE_CODE: TAbmesFloatField;
    cdsDataDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField;
    cdsDataDOC_PROFILE_NO: TAbmesFloatField;
    cdsDataDOC_PROFILE_NAME: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    frDoc: TfrDoc;
    cdsDataAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataAUTHORIZE_DATE: TAbmesSQLTimeStampField;
    cdsDataAUTHORIZE_TIME: TAbmesSQLTimeStampField;
    actAuthorize: TAction;
    actUnauthorize: TAction;
    pnlAuthorizeButtons: TPanel;
    pnlAuthorize: TPanel;
    btnAuthorize: TBitBtn;
    pnlUnauthorize: TPanel;
    btnUnauthorize: TBitBtn;
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actAuthorizeUpdate(Sender: TObject);
    procedure actUnauthorizeUpdate(Sender: TObject);
    procedure actAuthorizeExecute(Sender: TObject);
    procedure actUnauthorizeExecute(Sender: TObject);
    procedure cdsDataAUTHORIZE_EMPLOYEE_CODEChange(Sender: TField);
  private
    function IsAuthorized: Boolean;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uDocUtils, dDocClient, uClientUtils, uClientTypes, uClientDateTime, DateUtils,
  uUtils;

{$R *.dfm}

procedure TfmDocProfile.actAuthorizeExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  cdsDataAUTHORIZE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
end;

procedure TfmDocProfile.actAuthorizeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and not IsAuthorized;
end;

procedure TfmDocProfile.actFormUpdate(Sender: TObject);
begin
  inherited;
  SetControlsReadOnly((EditMode = emReadOnly) or IsAuthorized, [edtNo, edtName]);
  pnlAuthorize.Visible:= not IsAuthorized;
  pnlUnauthorize.Visible:= IsAuthorized;
end;

procedure TfmDocProfile.actUnauthorizeExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  cdsDataAUTHORIZE_EMPLOYEE_CODE.Clear;
end;

procedure TfmDocProfile.actUnauthorizeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and IsAuthorized;
end;

procedure TfmDocProfile.cdsDataAUTHORIZE_EMPLOYEE_CODEChange(
  Sender: TField);
var
  NowDateTime: TDateTime;
begin
  inherited;

  if Sender.IsNull then
    begin
      cdsDataAUTHORIZE_DATE.Clear;
      cdsDataAUTHORIZE_TIME.Clear;
    end
  else
    begin
      NowDateTime:= ContextNow;
      cdsDataAUTHORIZE_DATE.AsDateTime:= DateOf(NowDateTime);
      cdsDataAUTHORIZE_TIME.AsDateTime:= TimeOf(NowDateTime);
    end;
end;

procedure TfmDocProfile.cdsDataBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmDocProfile.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataDOC_PROFILE_CODE.AsInteger:= -1;
  dmDocClient.DSNewDoc(cdsData);
end;

procedure TfmDocProfile.FormCreate(Sender: TObject);
begin
  inherited;
  frDoc.ImmediatelyApplyUpdates:= False;
  MaximizeStyle:= msVertical;
end;

procedure TfmDocProfile.Initialize;
begin
  inherited;

  dmDocClient.SetDefaultDocItemTemplateType(
    IntToDocItemTemplateType(cdsDataDOC_ITEM_TEMPLATE_TYPE_CODE.AsInteger));

  frDoc.DocOwnerType:= dotDocProfile;
end;

function TfmDocProfile.IsAuthorized: Boolean;
begin
  Result:= not cdsDataAUTHORIZE_EMPLOYEE_CODE.IsNull;
end;

procedure TfmDocProfile.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= (EditMode = emReadOnly) or IsAuthorized;
end;

end.
