unit fSaleOrdersFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvComponent,
  JvDBLookup, Buttons, StdCtrls, ExtCtrls, JvExStdCtrls, JvDBCombobox, Mask,
  DBCtrls, JvExExtCtrls, JvDBRadioPanel, fBaseFrame, fDBFrame, fFieldEditFrame,
  fPriorityIntervalEditFrame, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameLabeled, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameBald, fTreeNodeFilter, fProductFilter,
  fParamProductFilter, fEmployeeFieldEditFrameBald, fDateIntervalFrame,
  JvExtComponent, uProducts, dDocClient, uClientTypes, JvCombobox;

type
  TfmSaleOrdersFilter = class(TFilterForm)
    gbID: TGroupBox;
    lblSaleDealType: TLabel;
    lblRequestBranch: TLabel;
    lblRequestNo: TLabel;
    lblIsActivatedByClient: TLabel;
    cbSaleDealType: TJvDBLookupCombo;
    cbRequestBranch: TJvDBLookupCombo;
    edtRequestNo: TDBEdit;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    dsDateUnits: TDataSource;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    dsBranches: TDataSource;
    edtRequestLineNo: TDBEdit;
    lblRequestLineNo: TLabel;
    lblAspectType: TLabel;
    cbAspectType: TJvDBLookupCombo;
    cdsAspectTypes: TAbmesClientDataSet;
    dsAspectTypes: TDataSource;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    dsSaleTypes: TDataSource;
    frManagerEmployee: TfrEmployeeFieldEditFrameLabeled;
    gbClient: TGroupBox;
    lblPartnerCode: TLabel;
    frClientCompany: TfrPartnerFieldEditFrameBald;
    lblPartner: TLabel;
    gbMediator: TGroupBox;
    lblMediator: TLabel;
    rpHasMediator: TJvDBRadioPanel;
    frMediator: TfrPartnerFieldEditFrameBald;
    lblCountry: TLabel;
    lblPriorityCode: TLabel;
    cdsCountries: TAbmesClientDataSet;
    cdsCountriesCOUNTRY_CODE: TAbmesFloatField;
    cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField;
    cdsCountriesCOUNTRY_NAME: TAbmesWideStringField;
    dsCountries: TDataSource;
    cbCountry: TJvDBLookupCombo;
    frClientPriority: TfrPriorityIntervalEditFrame;
    frChosenProducts: TfrParamProductFilter;
    gbParRelProduct: TGroupBox;
    gbDecision: TGroupBox;
    cdsDecisionTypes: TAbmesClientDataSet;
    cdsDecisionTypesDECISION_TYPE_CODE: TAbmesFloatField;
    cdsDecisionTypesDECISION_TYPE_ABBREV: TAbmesWideStringField;
    cdsDecisionTypesDECISION_TYPE_NAME: TAbmesWideStringField;
    dsDecisionTypes: TDataSource;
    gbRequestRegisterDate: TGroupBox;
    frRequestRegisterDateInterval: TfrDateIntervalFrame;
    gbHasAgreedQuantity: TGroupBox;
    gbHasAgreedSinglePrice: TGroupBox;
    gbPrognosis: TGroupBox;
    gbDates: TGroupBox;
    lblDaysRsv: TLabel;
    lblDateInterval: TLabel;
    lblOfferSendPos: TLabel;
    lblOfferAnswerPos: TLabel;
    lblDecision: TLabel;
    frOfferSendPlanDateInterval: TfrDateIntervalFrame;
    edtBeginOfferSendDaysRsv: TDBEdit;
    lblDash1: TLabel;
    edtEndOfferSendDaysRsv: TDBEdit;
    frOfferSendDateInterval: TfrDateIntervalFrame;
    frOfferAnswerPlanDateInterval: TfrDateIntervalFrame;
    edtBeginOfferAnswerDaysRsv: TDBEdit;
    lblDash2: TLabel;
    edtEndOfferAnswerDaysRsv: TDBEdit;
    frOfferAnswerDateInterval: TfrDateIntervalFrame;
    frDecisionPlanDateInterval: TfrDateIntervalFrame;
    edtBeginDecisionDaysRsv: TDBEdit;
    lblDash3: TLabel;
    endDecisionDaysRsv: TDBEdit;
    frDecisionDateInterval: TfrDateIntervalFrame;
    frPrognosisBeginDateInterval: TfrDateIntervalFrame;
    lblPlanDateInterval: TLabel;
    lblPrognosisBeginDateInterval: TLabel;
    lblPrognosisDaysRsv: TLabel;
    edtBeginPrognosisDaysRsv: TDBEdit;
    lblDash4: TLabel;
    edtEndPrognosisDaysRsv: TDBEdit;
    chkHasAgreedQuantity: TDBCheckBox;
    chkHasNotAgreedQuantity: TDBCheckBox;
    chkHasAgreedSinglePrice: TDBCheckBox;
    chkHasNotAgreedSinglePrice: TDBCheckBox;
    lblDecisionType: TLabel;
    lblDecisionEmployee: TLabel;
    cbDecisionType: TJvDBLookupCombo;
    frDecisionEmployee: TfrEmployeeFieldEditFrameBald;
    cdsStatuses: TAbmesClientDataSet;
    dsStatuses: TDataSource;
    cdsStatusesSTATUS_CODE: TAbmesFloatField;
    cdsStatusesSTATUS_ABBREV: TAbmesWideStringField;
    cdsStatusesSTATUS_DESCRIPTION: TAbmesWideStringField;
    gbStatus: TGroupBox;
    cbMinStatus: TJvDBLookupCombo;
    lblDash5: TLabel;
    cbMaxStatus: TJvDBLookupCombo;
    gbSale: TGroupBox;
    lblSaleBranchCode: TLabel;
    lblSaleNo: TLabel;
    lblSaleTypeCode: TLabel;
    lblPriority: TLabel;
    cbSaleBranchCode: TJvDBLookupCombo;
    edtSaleNo: TDBEdit;
    cbSaleTypeCode: TJvDBLookupCombo;
    frSalePriority: TfrPriorityIntervalEditFrame;
    cdsAspectTypesASPECT_TYPE_CODE: TAbmesFloatField;
    cdsAspectTypesASPECT_TYPE_ABBREV: TAbmesWideStringField;
    cdsAspectTypesASPECT_TYPE_NAME: TAbmesWideStringField;
    rgParRelProduct: TJvDBRadioPanel;
    cbParRelProductStatus: TJvDBLookupCombo;
    cdsStreamTypes: TAbmesClientDataSet;
    cdsStreamTypesSTREAM_TYPE_CODE: TAbmesFloatField;
    cdsStreamTypesSTREAM_TYPE_ABBREV: TAbmesWideStringField;
    cdsStreamTypesSTREAM_TYPE_NAME: TAbmesWideStringField;
    dsStreamTypes: TDataSource;
    cbStreamType: TJvDBLookupCombo;
    lblStreamType: TLabel;
    pnlRightChangingGroupboxes: TPanel;
    gbLeaseDateUnit: TGroupBox;
    cbDateUnit: TJvDBLookupCombo;
    gbDelivery: TGroupBox;
    cbHasSale: TJvDBComboBox;
    lblDCDBranch: TLabel;
    cbDCDBranch: TJvDBLookupCombo;
    edtDCDCode: TDBEdit;
    lblDCDCode: TLabel;
    edtDeliveryProjectCode: TDBEdit;
    lblDeliveryProjectCode: TLabel;
    cbIsActivatedByClient: TJvDBComboBox;
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
  protected
    function GetFilterFormVariantCode: Integer; override;
    function GetOriginalFormCaption: string; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;

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
  end;

implementation

uses
  uSaleDealTypes, uCompanyKinds, uClientConsts, uSalesClientUtils, fEditForm, uClientUtils,
  uProductClientUtils, uParRelProducts, uBorderRelTypes, uProductionOrderTypes;

{$R *.dfm}

{ TfmSaleOrdersFilter }

procedure TfmSaleOrdersFilter.actFormUpdate(Sender: TObject);
begin
  inherited;

  gbLeaseDateUnit.Visible:= (cbSaleDealType.KeyValue = sdtLease);
  gbDelivery.Visible:= (cbSaleDealType.KeyValue = sdtExport);

  lblMediator.Visible:= (rpHasMediator.ItemIndex = 1);
  frMediator.Visible:= lblMediator.Visible;

  cbParRelProductStatus.Enabled:= (rgParRelProduct.ItemIndex = 1);
end;

procedure TfmSaleOrdersFilter.CloseDataSets;
begin
  cdsStatuses.Close;
  cdsCountries.Close;
  cdsDecisionTypes.Close;
  cdsSaleTypes.Close;
  cdsAspectTypes.Close;
  cdsDateUnits.Close;
  cdsBranches.Close;
  cdsStreamTypes.Close;
  inherited;
end;

procedure TfmSaleOrdersFilter.dsDataDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if Assigned(Field) and (Field.FieldName = 'SALE_DEAL_TYPE_CODE') then
    with dsData.DataSet do
      begin
        if Field.IsNull or (Field.AsInteger = sdtFilterSaleAndExport) then
          begin
            frClientCompany.FilterCompanyKind:= ckClient;
            frClientCompany.SecondaryFilterCompanyKind:= ckVendor;
          end
        else
          if (Field.AsInteger = sdtExport) then
            begin
              frClientCompany.FilterCompanyKind:= ckVendor;
              frClientCompany.SecondaryFilterCompanyKind:= ckNone;
            end
          else
            begin
              frClientCompany.FilterCompanyKind:= ckClient;
              frClientCompany.SecondaryFilterCompanyKind:= ckNone;
            end;

        FieldByName('LEASE_DATE_UNIT_CODE').Clear;
        FieldByName('HAS_DELIVERY').AsInteger:= 0;
        FieldByName('DCD_BRANCH_CODE').Clear;
        FieldByName('DCD_CODE').Clear;
        FieldByName('DELIVERY_PROJECT_CODE').Clear;
      end;
end;

procedure TfmSaleOrdersFilter.FormCreate(Sender: TObject);
begin
  inherited;

  frSalePriority.FieldNames:= 'BEGIN_PRIORITY_CODE;END_PRIORITY_CODE';
  frManagerEmployee.FieldNames:= 'MANAGER_EMPLOYEE_CODE';
  frClientCompany.FieldNames:= 'CLIENT_COMPANY_CODE';
  frClientCompany.FilterCompanyKind:= ckClient;
  frMediator.FieldNames:= 'MEDIATOR_COMPANY_CODE';
  frMediator.FilterCompanyKind:= ckMediator;
  frClientPriority.FieldNames:= 'BEGIN_CLIENT_PRIORITY_CODE;END_CLIENT_PRIORITY_CODE';
  frChosenProducts.FieldNames:= 'CHOSEN_PRODUCTS';
  frDecisionEmployee.FieldNames:= 'DECISION_EMPLOYEE_CODE';
  frRequestRegisterDateInterval.FieldNames:= 'BEGIN_REQUEST_REGISTER_DATE;END_REQUEST_REGISTER_DATE';
  frPrognosisBeginDateInterval.FieldNames:= 'BEGIN_PROGNOSIS_BEGIN_DATE;END_PROGNOSIS_BEGIN_DATE';
  frOfferSendPlanDateInterval.FieldNames:= 'BEGIN_OFFER_SEND_PLAN_DATE;END_OFFER_SEND_PLAN_DATE';
  frOfferSendDateInterval.FieldNames:= 'BEGIN_OFFER_SEND_DATE;END_OFFER_SEND_DATE';
  frOfferAnswerPlanDateInterval.FieldNames:= 'BEGIN_OFFER_ANSWER_PLAN_DATE;END_OFFER_ANSWER_PLAN_DATE';
  frOfferAnswerDateInterval.FieldNames:= 'BEGIN_OFFER_ANSWER_DATE;END_OFFER_ANSWER_DATE';
  frDecisionPlanDateInterval.FieldNames:= 'BEGIN_DECISION_PLAN_DATE;END_DECISION_PLAN_DATE';
  frDecisionDateInterval.FieldNames:= 'BEGIN_DECISION_DATE;END_DECISION_DATE';
end;

function TfmSaleOrdersFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if (AWinControl = cbSaleDealType) and
     (FProductClass = pcFinancial) then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

function TfmSaleOrdersFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= ProductClassToInt(FProductClass);
end;

function TfmSaleOrdersFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmSaleOrdersFilter.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  frChosenProducts.ProductClass:= FProductClass;

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  MsgParams:=
    uParRelProducts.CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      brtClient,
      pobtSaleCover,
      prpoProduct,
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmSaleOrdersFilter.OpenDataSets;
begin
  inherited;
  cdsStreamTypes.Open;
  cdsBranches.Open;
  cdsDateUnits.Open;
  cdsAspectTypes.Open;
  cdsSaleTypes.Open;
  cdsDecisionTypes.Open;
  cdsCountries.Open;
  cdsStatuses.CreateDataSet;
  FillDataSetWithSaleOrderStatuses(cdsStatuses);
end;

procedure TfmSaleOrdersFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProductClass:= AProductClass;
end;

class function TfmSaleOrdersFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass): Boolean;
var
  f: TfmSaleOrdersFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

end.
