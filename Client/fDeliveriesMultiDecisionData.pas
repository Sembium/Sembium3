unit fDeliveriesMultiDecisionData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls, Buttons, ExtCtrls,
  fBevelEditForm, fBaseFrame, fDBFrame, fFieldEditFrame, fDateFieldEditFrame, JvExControls, JvDBLookup,
  fEmployeeFieldEditFrame, fEmployeeFieldEditFrameLabeled, AbmesFields,
  dDocClient, uClientTypes, uSection;

type
  TfmDeliveriesMultiDecisionData = class(TEditForm)
    gbDecision: TGroupBox;
    cbDecisionType: TJvDBLookupCombo;
    frRealDecisionDate: TfrDateFieldEditFrame;
    lblRealDecisionDate: TLabel;
    lblDecision: TLabel;
    frDecisionEmployee: TfrEmployeeFieldEditFrameLabeled;
    cdsDecisionTypes: TAbmesClientDataSet;
    cdsDecisionTypesDELIVERY_DECISION_CODE: TAbmesFloatField;
    cdsDecisionTypesDELIVERY_DECISION_ABBREV: TAbmesWideStringField;
    cdsDecisionTypesDELIVERY_DECISION_NAME: TAbmesWideStringField;
    cdsDecisionTypesDELIVERY_DECISION_NO: TAbmesFloatField;
    cdsDecisionTypesIS_ESTIMATION_BOUND: TAbmesFloatField;
    cdsDecisionTypesIS_REALIZATION_BOUND: TAbmesFloatField;
    cdsDecisionTypesALLOWS_DELIVERY_CONTRACT: TAbmesFloatField;
    cdsDecisionTypesREQUIRES_FINISHING: TAbmesFloatField;
    dsDecisionTypes: TDataSource;
    gbDeliveryContract: TGroupBox;
    lblPriority: TLabel;
    lblType: TLabel;
    btnCreateDeliveryContract: TButton;
    cbPriority: TJvDBLookupCombo;
    cbType: TJvDBLookupCombo;
    btnFinOrder: TButton;
    actCreateDeliveryContract: TAction;
    cdsDeliveryTypes: TAbmesClientDataSet;
    cdsDeliveryTypesDELIVERY_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryTypesDELIVERY_TYPE_ABBREV: TAbmesWideStringField;
    dsDeliveryTypes: TDataSource;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NO: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    dsPriorities: TDataSource;
    actFinOrder: TAction;
    procedure FormCreate(Sender: TObject);
    procedure actCreateDeliveryContractUpdate(Sender: TObject);
    procedure actCreateDeliveryContractExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actFinOrderUpdate(Sender: TObject);
    procedure actFinOrderExecute(Sender: TObject);
  private
    FPartnerCode: Integer;
    FBaseBeginDate: TDateTime;
    FBaseEndDate: TDateTime;
    function HasDeliveryContract: Boolean;
    function CanCreateDeliveryContract: Boolean;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      APartnerCode: Integer = 0;
      ABaseBeginDate: TDateTime = 0;
      ABaseEndDate: TDateTime = 0); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      APartnerCode: Integer = 0;
      ABaseBeginDate: TDateTime = 0;
      ABaseEndDate: TDateTime = 0): Boolean;
  end;

implementation

uses
  uClientUtils, uUtils, uUserActivityConsts, fNewFinOrder,
  uBorderRelTypes, uFinOrderRequirementClientUtils;

{$R *.dfm}

procedure TfmDeliveriesMultiDecisionData.SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
  AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; APartnerCode: Integer;
  ABaseBeginDate, ABaseEndDate: TDateTime);
begin
  Assert(EditMode = emEdit);

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);

  FPartnerCode:= APartnerCode;
  FBaseBeginDate:= ABaseBeginDate;

  if (ABaseEndDate = 0) then
    FBaseEndDate:= ABaseBeginDate
  else
    FBaseEndDate:= ABaseEndDate;
end;

class function TfmDeliveriesMultiDecisionData.ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
  AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; APartnerCode: Integer;
  ABaseBeginDate, ABaseEndDate: TDateTime): Boolean;
var
  f: TfmDeliveriesMultiDecisionData;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, APartnerCode, ABaseBeginDate, ABaseEndDate);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmDeliveriesMultiDecisionData.FormCreate(Sender: TObject);
begin
  inherited;
  frRealDecisionDate.FieldNames:= 'REAL_DECISION_DATE';
  frDecisionEmployee.FieldNames:= 'DECISION_EMPLOYEE_CODE';
end;

procedure TfmDeliveriesMultiDecisionData.OpenDataSets;
begin
  cdsDecisionTypes.Open;
  cdsDeliveryTypes.Open;
  cdsPriorities.Open;
  inherited;
end;

procedure TfmDeliveriesMultiDecisionData.CloseDataSets;
begin
  inherited;
  cdsPriorities.Close;
  cdsDeliveryTypes.Close;
  cdsDecisionTypes.Close;
end;

function TfmDeliveriesMultiDecisionData.HasDeliveryContract: Boolean;
begin
  Result:= not dsData.DataSet.FieldByName('DELIVERY_OBJECT_BRANCH_CODE').IsNull;
end;

function TfmDeliveriesMultiDecisionData.CanCreateDeliveryContract: Boolean;
var
  v: Variant;
begin
  v:= cdsDecisionTypes.Lookup('DELIVERY_DECISION_CODE', dsData.DataSet.FieldByName('DELIVERY_DECISION_CODE').AsInteger, 'ALLOWS_DELIVERY_CONTRACT');
  Result:= (VarToInt(v) = 1);
end;

procedure TfmDeliveriesMultiDecisionData.actCreateDeliveryContractUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not HasDeliveryContract and CanCreateDeliveryContract;
end;

procedure TfmDeliveriesMultiDecisionData.actCreateDeliveryContractExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('DELIVERY_OBJECT_BRANCH_CODE').AsInteger:= 1;
end;

procedure TfmDeliveriesMultiDecisionData.actFormUpdate(Sender: TObject);
begin
  inherited;
  SetControlsReadOnly(not HasDeliveryContract, [cbPriority, cbType]);
  SetControlReadOnly(HasDeliveryContract, cbDecisionType);
end;

procedure TfmDeliveriesMultiDecisionData.actFinOrderExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaNewFinancialOrder);
  if not TfmNewFinOrder.ShowForm(nil, dsData.DataSet, emEdit, doNone, FPartnerCode, brtVendor, FBaseBeginDate, FBaseEndDate, OuterDataSet.FieldByName('FO_DCD_BRANCH_CODE').AsInteger) then
    Abort;
end;

procedure TfmDeliveriesMultiDecisionData.actFinOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= HasDeliveryContract;
end;

end.
