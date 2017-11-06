unit fPlannedStoreDealsFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFilterForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, JvDBLookup, JvToolEdit, JvDBControls, AbmesClientDataSet, AbmesFields,
  AbmesDBCheckBox, Menus, JvButtons, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fProductFieldEditFrame,
  fDateIntervalFrame, fEmployeeFieldEditFrameBald, fEmployeeFieldEditFrame,
  JvComponent, JvCaptionButton, JvExControls, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameBald, JvExStdCtrls, JvDBCombobox, fTreeNodeFilter,
  fDeptFilter, fProductFilter, fParamProductFilter, JvComponentBase,
  fStoreDealBindingFilter, uProducts, dDocClient, uClientTypes, fFilterFrame,
  fTreeNodeGridFilter, System.Actions;

type
  TfmPlannedStoreDealsFilter = class(TFilterForm)
    gbDealType: TGroupBox;
    cdsBranches: TAbmesClientDataSet;
    dsBranches: TDataSource;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cbTeglene: TAbmesDBCheckBox;
    cbPostuplenie: TAbmesDBCheckBox;
    gbPeriod: TGroupBox;
    gbPlannedStoreDealType: TGroupBox;
    cbPlannedStoreDealType: TJvDBLookupCombo;
    cdsPlannedStoreDealTypes: TAbmesClientDataSet;
    dsPlannedStoreDealTypes: TDataSource;
    cdsPlannedStoreDealTypesPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsPlannedStoreDealTypesPLANNED_STORE_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsPlannedStoreDealTypesPLANNED_STORE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    frDateInterval: TfrDateIntervalFrame;
    gbStatus: TGroupBox;
    chkIsInactive: TAbmesDBCheckBox;
    chkIsActive: TAbmesDBCheckBox;
    cbClosed: TAbmesDBCheckBox;
    cbNotClosed: TAbmesDBCheckBox;
    cbAnnuled: TAbmesDBCheckBox;
    cbNotAnnuled: TAbmesDBCheckBox;
    gbID: TGroupBox;
    lblKlon: TLabel;
    lblNomer: TLabel;
    edtNomer: TDBEdit;
    cbKlon: TJvDBLookupCombo;
    frStore: TfrDeptFilter;
    frProduct: TfrParamProductFilter;
    gbPlanEmployee: TGroupBox;
    frPlanEmployee: TfrEmployeeFieldEditFrameBald;
    frBndProcess: TfrStoreDealBindingFilter;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
  protected
    function GetOriginalFormCaption: string; override;
    function GetFilterFormVariantCode: Integer; override;
  public
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;

    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone): Boolean;

    procedure Initialize; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses
  dMain,
  uProcesses,
  uTreeClientUtils,
  uCompanyKinds,
  uProductClientUtils,
  uClientUtils,
  uScalingUtils;

{$R *.DFM}

{ TfmPlannedStoreDealsFilter }

procedure TfmPlannedStoreDealsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frProduct.FieldNames:= 'CHOSEN_PRODUCTS';
  frStore.FieldNames:= 'CHOSEN_DEPTS';
  frPlanEmployee.FieldNames:= 'PLAN_EMPLOYEE_CODE';
  frPlanEmployee.EmployeeTypeName:= gbPlanEmployee.Caption;
  frDateInterval.FieldNames:= 'START_DATE;END_DATE';
end;

function TfmPlannedStoreDealsFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= ProductClassToInt(FProductClass);
end;

function TfmPlannedStoreDealsFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmPlannedStoreDealsFilter.Initialize;
var
  MsgParams: TStrings;
begin
  frBndProcess.FieldNames:= 'BND_PROCESS';
  frBndProcess.IsInboundProcess:= True;
  frBndProcess.IsOutboundProcess:= True;
  frBndProcess.IsPlanStoreDealProcess:= True;
  frBndProcess.IsProjStoreDealProcess:= True;
  frBndProcess.IsFinancialProcess:= (FProductClass = pcFinancial);

  inherited Initialize;

  frProduct.ProductClass:= FProductClass;

  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);

  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmPlannedStoreDealsFilter.actFormUpdate(Sender: TObject);
const
  FormHeights: array[Boolean] of Integer = (525, 525+88);
begin
  inherited;
  Height:= ScalePixels(FormHeights[frBndProcess.IsFinancialProcess]);
end;

procedure TfmPlannedStoreDealsFilter.CloseDataSets;
begin
  inherited;
  cdsBranches.Close;
  cdsPlannedStoreDealTypes.Close;
end;

procedure TfmPlannedStoreDealsFilter.OpenDataSets;
begin
  inherited;
  cdsBranches.Open;
  cdsPlannedStoreDealTypes.Open;
end;

procedure TfmPlannedStoreDealsFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass);
begin
  FProductClass:= AProductClass;
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
end;

class function TfmPlannedStoreDealsFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass): Boolean;
var
  f: TfmPlannedStoreDealsFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

end.
