unit fDeliveryDialogsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvComponent,
  JvDBLookup, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls, JvExExtCtrls,
  JvDBRadioPanel, fBaseFrame, fDBFrame, fFieldEditFrame,
  fPriorityIntervalEditFrame, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameLabeled, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameBald, fTreeNodeFilter, fProductFilter,
  fParamProductFilter, fEmployeeFieldEditFrameBald, fDateIntervalFrame,
  JvExStdCtrls, JvDBCombobox, dDocClient, uClientTypes, uProductionOrderTypes,
  JvExtComponent, uProducts, JvCombobox;

type
  TfmDeliveryDialogsFilter = class(TFilterForm)
    gbStatus: TGroupBox;
    lblDash5: TLabel;
    cbMinStatus: TJvDBLookupCombo;
    cbMaxStatus: TJvDBLookupCombo;
    dsStatuses: TDataSource;
    cdsStatuses: TAbmesClientDataSet;
    cdsStatusesSTATUS_CODE: TAbmesFloatField;
    cdsStatusesSTATUS_ABBREV: TAbmesWideStringField;
    cdsStatusesSTATUS_DESCRIPTION: TAbmesWideStringField;
    gbID: TGroupBox;
    lblDeliveryDealType: TLabel;
    lblDCDBranch: TLabel;
    lblDCDCode: TLabel;
    lblActivatedBy: TLabel;
    lblDeliveryProjectCode: TLabel;
    lblAspectType: TLabel;
    cbDeliveryDealType: TJvDBLookupCombo;
    cbDCDBranch: TJvDBLookupCombo;
    edtDCDCode: TDBEdit;
    edtDeliveryProjectCode: TDBEdit;
    cbAspectType: TJvDBLookupCombo;
    rpHasContract: TJvDBRadioPanel;
    lblDeliveryContractPriority: TLabel;
    frDeliveryContractPriorityInterval: TfrPriorityIntervalEditFrame;
    frDialogEmployee: TfrEmployeeFieldEditFrameLabeled;
    gbBoundSale: TGroupBox;
    gbMediator: TGroupBox;
    lblMediator: TLabel;
    rpHasMediator: TJvDBRadioPanel;
    frMediator: TfrPartnerFieldEditFrameBald;
    gbVendor: TGroupBox;
    lblPartnerCode: TLabel;
    lblVendorCompany: TLabel;
    lblCountry: TLabel;
    lblPriority: TLabel;
    frVendorCompany: TfrPartnerFieldEditFrameBald;
    cbCountry: TJvDBLookupCombo;
    frVendorPriorityInterval: TfrPriorityIntervalEditFrame;
    frProduct: TfrParamProductFilter;
    gbIztD: TGroupBox;
    gbDecision: TGroupBox;
    lblDecisionType: TLabel;
    lblDecisionEmployee: TLabel;
    cbDecisionType: TJvDBLookupCombo;
    frDecisionEmployee: TfrEmployeeFieldEditFrameBald;
    gbHasAgreedQuantity: TGroupBox;
    gbHasAgreedSinglePrice: TGroupBox;
    gbRequestRegisterDate: TGroupBox;
    frRegisterDateInterval: TfrDateIntervalFrame;
    gbPrognosis: TGroupBox;
    lblPrognosisBeginDateInterval: TLabel;
    lblPrognosisDaysRsv: TLabel;
    lblDash4: TLabel;
    frPrognosisBeginDateInterval: TfrDateIntervalFrame;
    edtBeginPrognosisDaysRsv: TDBEdit;
    edtEndPrognosisDaysRsv: TDBEdit;
    gbDates: TGroupBox;
    lblDaysRsv: TLabel;
    lblRealPositionDate: TLabel;
    lblPosition: TLabel;
    lblVendorPosition: TLabel;
    lblDecision: TLabel;
    lblDash1: TLabel;
    lblDash2: TLabel;
    lblDash3: TLabel;
    lblPlanPositionDate: TLabel;
    frPlanPositionDate: TfrDateIntervalFrame;
    edtBeginPositionDaysRsv: TDBEdit;
    edtEndPositionDaysRsv: TDBEdit;
    frRealPositionDate: TfrDateIntervalFrame;
    frVendorPlanPositionDate: TfrDateIntervalFrame;
    edtBeginVendorPositionDaysRsv: TDBEdit;
    edtEndVendorPositionDaysRsv: TDBEdit;
    frVendorRealPositionDate: TfrDateIntervalFrame;
    frPlanDecisionDate: TfrDateIntervalFrame;
    edtBeginDecisionDaysRsv: TDBEdit;
    endDecisionDaysRsv: TDBEdit;
    frRealDecisionDate: TfrDateIntervalFrame;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    dsBranches: TDataSource;
    cdsAspectTypes: TAbmesClientDataSet;
    cdsAspectTypesASPECT_TYPE_CODE: TAbmesFloatField;
    cdsAspectTypesASPECT_TYPE_ABBREV: TAbmesWideStringField;
    cdsAspectTypesASPECT_TYPE_NAME: TAbmesWideStringField;
    dsAspectTypes: TDataSource;
    cbActivatedBy: TJvDBComboBox;
    cdsDecisionTypes: TAbmesClientDataSet;
    cdsDecisionTypesDELIVERY_DECISION_CODE: TAbmesFloatField;
    cdsDecisionTypesDELIVERY_DECISION_ABBREV: TAbmesWideStringField;
    cdsDecisionTypesDELIVERY_DECISION_NAME: TAbmesWideStringField;
    dsDecisionTypes: TDataSource;
    cdsCountries: TAbmesClientDataSet;
    cdsCountriesCOUNTRY_CODE: TAbmesFloatField;
    cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField;
    cdsCountriesCOUNTRY_NAME: TAbmesWideStringField;
    dsCountries: TDataSource;
    cdsDeliveryDealTypes: TAbmesClientDataSet;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    dsDeliveryDealTypes: TDataSource;
    cdsStreamTypes: TAbmesClientDataSet;
    cdsStreamTypesSTREAM_TYPE_CODE: TAbmesFloatField;
    cdsStreamTypesSTREAM_TYPE_ABBREV: TAbmesWideStringField;
    cdsStreamTypesSTREAM_TYPE_NAME: TAbmesWideStringField;
    dsStreamTypes: TDataSource;
    lblStreamType: TLabel;
    cbStreamType: TJvDBLookupCombo;
    lblSaleBranch: TLabel;
    lblSaleNo: TLabel;
    cbHasSale: TJvDBComboBox;
    cbSaleBranch: TJvDBLookupCombo;
    edtSaleNo: TDBEdit;
    cdsDeliveryTypes: TAbmesClientDataSet;
    cdsDeliveryTypesDELIVERY_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryTypesDELIVERY_TYPE_ABBREV: TAbmesWideStringField;
    dsDeliveryTypes: TDataSource;
    lblType: TLabel;
    cbType: TJvDBLookupCombo;
    rgParRelProduct: TJvDBRadioPanel;
    cbParRelProductStatus: TJvDBLookupCombo;
    chkHasAgreedQuantity: TDBCheckBox;
    chkHasNotAgreedQuantity: TDBCheckBox;
    chkHasAgreedSinglePrice: TDBCheckBox;
    chkHasNotAgreedSinglePrice: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FProdOrderBaseType: TBorderProdOrderBaseType;
  protected
    function GetOriginalFormCaption: string; override;
    function GetFilterFormVariantCode: Integer; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProdOrderBaseType: TBorderProdOrderBaseType = pobtEmpty;
      AProductClass: TProductClass = pcNone): Boolean;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProdOrderBaseType: TBorderProdOrderBaseType = pobtEmpty;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;

    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;
  end;

implementation

uses
  uDeliveryUtils, uCompanyKinds, uClientUtils, fEditForm, uDeliveryDealTypes, uProductClientUtils,
  uParRelProducts, uBorderRelTypes;

{$R *.dfm}

{ TfmDeliveriesNewFilter }

procedure TfmDeliveryDialogsFilter.actFormUpdate(Sender: TObject);
begin
  inherited;

  lblDeliveryContractPriority.Visible:= (rpHasContract.ItemIndex = 1);
  frDeliveryContractPriorityInterval.Visible:= lblDeliveryContractPriority.Visible;
  lblType.Visible:= lblDeliveryContractPriority.Visible;
  cbType.Visible:= lblDeliveryContractPriority.Visible;

  lblMediator.Visible:= (rpHasMediator.ItemIndex = 1);
  frMediator.Visible:= lblMediator.Visible;

  gbBoundSale.Visible:= not OuterDataSet.FieldByName('DELIVERY_DEAL_TYPE_CODE').AsInteger in ddtLease;

  cbParRelProductStatus.Enabled:= (rgParRelProduct.ItemIndex = 1);

  gbIztD.Visible:= (FProdOrderBaseType <> pobtOccCover);
  gbPrognosis.Visible:= (FProdOrderBaseType <> pobtOccCover);
end;

procedure TfmDeliveryDialogsFilter.CloseDataSets;
begin
  cdsDeliveryTypes.Close;
  cdsCountries.Close;
  cdsDecisionTypes.Close;
  cdsStreamTypes.Close;
  cdsAspectTypes.Close;
  cdsBranches.Close;
  cdsDeliveryDealTypes.Close;
  cdsStatuses.Close;
  inherited;
end;

procedure TfmDeliveryDialogsFilter.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if Assigned(Field) and (Field.FieldName = 'DELIVERY_DEAL_TYPE_CODE') then
    if Field.IsNull then
      begin
        frVendorCompany.FilterCompanyKind:= ckVendor;
        frVendorCompany.SecondaryFilterCompanyKind:= ckClient;
      end
    else
      if (Field.AsInteger = ddtImport) then
        begin
          frVendorCompany.FilterCompanyKind:= ckClient;
          frVendorCompany.SecondaryFilterCompanyKind:= ckNone;
        end
      else
        begin
          frVendorCompany.FilterCompanyKind:= ckVendor;
          frVendorCompany.SecondaryFilterCompanyKind:= ckNone;
        end;
end;

procedure TfmDeliveryDialogsFilter.OpenDataSets;
begin
  inherited;
  cdsStatuses.CreateDataSet;
  FillDataSetWithDeliveryDialogStatuses(cdsStatuses);
  cdsDeliveryDealTypes.Open;
  cdsDeliveryDealTypes.Filter:=
    '(PROD_ORDER_BASE_TYPE_CODE = ' + IntToStr(ProdOrderBaseTypeToInt(FProdOrderBaseType)) + ')';
  cdsDeliveryDealTypes.Filtered:= True;
  cdsBranches.Open;
  cdsAspectTypes.Open;
  cdsStreamTypes.Open;
  cdsDecisionTypes.Open;
  cdsCountries.Open;
  cdsDeliveryTypes.Open;
end;

procedure TfmDeliveryDialogsFilter.SetDataParams(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TBorderProdOrderBaseType;
  AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  Assert(AProdOrderBaseType in [pobtSaleCover..pobtOccCover]);
  FProductClass:= AProductClass;
  FProdOrderBaseType:= AProdOrderBaseType;
end;

class function TfmDeliveryDialogsFilter.ShowForm(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TBorderProdOrderBaseType;
  AProductClass: TProductClass): Boolean;
var
  f: TfmDeliveryDialogsFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProdOrderBaseType, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmDeliveryDialogsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frVendorPriorityInterval.FieldNames:= 'BEGIN_VENDOR_PRIORITY_CODE;END_VENDOR_PRIORITY_CODE';
  frDeliveryContractPriorityInterval.FieldNames:= 'MIN_PRIORITY_CODE;MAX_PRIORITY_CODE';
  frDialogEmployee.FieldNames:= 'DIALOG_EMPLOYEE_CODE';
  frVendorCompany.FieldNames:= 'VENDOR_COMPANY_CODE';
  frVendorCompany.FilterCompanyKind:= ckVendor;
  frMediator.FieldNames:= 'MEDIATOR_COMPANY_CODE';
  frMediator.FilterCompanyKind:= ckMediator;
  frProduct.FieldNames:= 'CHOSEN_PRODUCTS';
  frDecisionEmployee.FieldNames:= 'DECISION_EMPLOYEE_CODE';
  frRegisterDateInterval.FieldNames:= 'BEGIN_REGISTER_DATE;END_REGISTER_DATE';
  frPrognosisBeginDateInterval.FieldNames:= 'BEGIN_PROGNOSIS_BEGIN_DATE;END_PROGNOSIS_BEGIN_DATE';
  frPlanPositionDate.FieldNames:= 'BEGIN_PLAN_POSITION_DATE;END_PLAN_POSITION_DATE';
  frRealPositionDate.FieldNames:= 'BEGIN_REAL_POSITION_DATE;END_REAL_POSITION_DATE';
  frVendorPlanPositionDate.FieldNames:= 'BEGIN_PLAN_VENDOR_POS_DATE;END_PLAN_VENDOR_POSITION_DATE';
  frVendorRealPositionDate.FieldNames:= 'BEGIN_REAL_VENDOR_POS_DATE;END_REAL_VENDOR_POSITION_DATE';
  frPlanDecisionDate.FieldNames:= 'BEGIN_PLAN_DECISION_DATE;END_PLAN_DECISION_DATE';
  frRealDecisionDate.FieldNames:= 'BEGIN_REAL_DECISION_DATE;END_REAL_DECISION_DATE';
end;

function TfmDeliveryDialogsFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if (AWinControl = cbDeliveryDealType) and
     (FProductClass = pcFinancial) then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

function TfmDeliveryDialogsFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= 0;
  case FProductClass of
    pcNormal:
      case FProdOrderBaseType of
        pobtSaleCover: Result:= 1;
        pobtEnvCover: Result:= 2;
        pobtOccCover: Result:= 4;
      end;  { case }

    pcFinancial: Result:= 3;
  end;  { case }
end;

function TfmDeliveryDialogsFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmDeliveryDialogsFilter.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  frProduct.ProductClass:= FProductClass;

  MsgParams:= uDeliveryUtils.CreateCommonMsgParams(FProdOrderBaseType, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  MsgParams:=
    uParRelProducts.CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      brtVendor,
      pobtSaleCover,
      prpoProduct,
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False);
  try
    if (FProdOrderBaseType = pobtOccCover) then
      OccupationProductFixCommonMsgParams(MsgParams);

    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  FOriginalFormCaption:= actForm.Caption;
end;

end.
