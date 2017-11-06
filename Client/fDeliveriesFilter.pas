unit fDeliveriesFilter;

interface                            

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fButtonForm, StdCtrls, Buttons, ExtCtrls, Db, fFilterForm,
  fPartnerFieldEditFrame, fPartnerFieldEditFrameLabeled,
  fEmployeeFieldEditFrame, fEmployeeFieldEditFrameLabeled, DBCtrlsEh,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameLabeled, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateIntervalFrame, Mask, DBCtrls, AbmesFields, DBClient,
  AbmesClientDataSet, JvComponent, JvCaptionButton, ActnList, JvExControls,
  JvDBLookup, JvComponentBase, dDocClient, uClientTypes, JvExStdCtrls,
  JvDBCombobox, fTreeNodeFilter, fProductFilter, fParamProductFilter,
  fPartnerFieldEditFrameBald, uProductionOrderTypes, uProducts, fCompanyFilter,
  JvCombobox;

type
  TfmDeliveriesFilter = class(TFilterForm)
    gbID: TGroupBox;
    lblBranch: TLabel;
    lblDeficitCoverDecisionNo: TLabel;
    edtDeficitCoverDecisionNo: TDBEdit;
    lblType: TLabel;
    cbType: TJvDBLookupCombo;
    cbBranch: TJvDBLookupCombo;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    dsBranches: TDataSource;
    cdsDeliveryTypes: TAbmesClientDataSet;
    cdsDeliveryTypesDELIVERY_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryTypesDELIVERY_TYPE_ABBREV: TAbmesWideStringField;
    dsDeliveryTypes: TDataSource;
    lblNo: TLabel;
    edtNo: TDBEdit;
    cdsDeliveryDealTypes: TAbmesClientDataSet;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    dsDeliveryDealTypes: TDataSource;
    cbDeliveryDealType: TJvDBLookupCombo;
    lblDeliveryDealType: TLabel;
    frParamProductFilter: TfrParamProductFilter;
    gbLeaseDateUnit: TGroupBox;
    gbSale: TGroupBox;
    gbDates: TGroupBox;
    gbSinglePriceDeviation: TGroupBox;
    gbVendor: TGroupBox;
    frDeliveryDateInterval: TfrDateIntervalFrame;
    lblDeliveryDaysRsv: TLabel;
    edtBeginDeliveryDateDaysRsv: TDBEdit;
    lblDash2: TLabel;
    edtEndDeliveryDateDaysRsv: TDBEdit;
    gbShipmentTypeCode: TGroupBox;
    cbTradeCode: TJvDBLookupCombo;
    gbTransportBy: TGroupBox;
    cbIsTransportFromVendor: TJvDBComboBox;
    cdsVendorOffices: TAbmesClientDataSet;
    cdsVendorOfficesCOMPANY_CODE: TAbmesFloatField;
    cdsVendorOfficesOFFICE_CODE: TAbmesFloatField;
    cdsVendorOfficesOFFICE_NAME: TAbmesWideStringField;
    dsVendorOffices: TDataSource;
    dsCountries: TDataSource;
    cdsCountries: TAbmesClientDataSet;
    cdsCountriesCOUNTRY_CODE: TAbmesFloatField;
    cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField;
    cdsCountriesCOUNTRY_NAME: TAbmesWideStringField;
    cdsTradeCodes: TAbmesClientDataSet;
    cdsTradeCodesSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsTradeCodesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    dsTradeCodes: TDataSource;
    cdsStatuses: TAbmesClientDataSet;
    cdsStatusesSTATUS_CODE: TAbmesFloatField;
    cdsStatusesSTATUS_ABBREV: TAbmesWideStringField;
    cdsStatusesSTATUS_DESCRIPTION: TAbmesWideStringField;
    dsStatuses: TDataSource;
    gbStatus: TGroupBox;
    lblDash: TLabel;
    cbMinStatus: TJvDBLookupCombo;
    cbMaxStatus: TJvDBLookupCombo;
    JvDBLookupCombo1: TJvDBLookupCombo;
    cbHasSale: TJvDBComboBox;
    lblSaleBranch: TLabel;
    cbSaleBranch: TJvDBLookupCombo;
    lblSaleNo: TLabel;
    edtSaleNo: TDBEdit;
    gbExceptEventDamages: TGroupBox;
    cbDamagesState: TJvDBLookupCombo;
    lblDamagesState: TLabel;
    cdsDamageStates: TAbmesClientDataSet;
    cdsDamageStatesSTATE_CODE: TAbmesFloatField;
    cdsDamageStatesSTATE_ABBREV: TAbmesWideStringField;
    cdsDamageStatesSTATE_NAME: TAbmesWideStringField;
    dsDamageStates: TDataSource;
    pnlVendorInfo: TPanel;
    lblDeliveryVendorOffice: TLabel;
    lblCountry: TLabel;
    cbDeliveryVendorOffice: TJvDBLookupCombo;
    cbCountry: TJvDBLookupCombo;
    gbBudgetOrderItem: TGroupBox;
    cbBudgetOrderBranch: TJvDBLookupCombo;
    lblBudgetOrderBranch: TLabel;
    edtBudgetOrderCode: TDBEdit;
    lblBudgetOrderCode: TLabel;
    edtBudgetOrderItemCode: TDBEdit;
    lblBudgetOrderItemCode: TLabel;
    edtBOIOrderCode: TDBEdit;
    lblBOIOrderCode: TLabel;
    frVendor: TfrCompanyFilter;
    procedure FormCreate(Sender: TObject);
    procedure cdsVendorOfficesBeforeOpen(DataSet: TDataSet);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure actFormUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FProdOrderBaseType: TProdOrderBaseType;
  protected
    function GetFilterFormVariantCode: Integer; override;
    function GetOriginalFormCaption: string; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProdOrderBaseType: TProdOrderBaseType = pobtEmpty;
      AProductClass: TProductClass = pcNone): Boolean;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProdOrderBaseType: TProdOrderBaseType = pobtEmpty;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;

    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uCompanyKinds, uDeliveryUtils, uClientUtils, uDeliveryDealTypes,
  uExceptEventClientUtils, uProductClientUtils, uCompanyClientUtils;

{$R *.DFM}

function TfmDeliveriesFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if (AWinControl = cbDeliveryVendorOffice) and
     not IsSingleChosenCompany(dsData.DataSet.FieldByName('CHOSEN_COMPANIES').AsString) then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

function TfmDeliveriesFilter.GetFilterFormVariantCode: Integer;
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

function TfmDeliveriesFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmDeliveriesFilter.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    if (FProdOrderBaseType = pobtOccCover) then
      OccupationProductFixCommonMsgParams(MsgParams);

    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  MsgParams:= uDeliveryUtils.CreateCommonMsgParams(FProdOrderBaseType, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  frParamProductFilter.ProductClass:= FProductClass;
  
  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmDeliveriesFilter.OpenDataSets;
begin
  inherited;
  cdsStatuses.CreateDataSet;
  FillDataSetWithDeliveryStatuses(cdsStatuses);
  cdsBranches.Open;
  cdsDeliveryTypes.Open;
  cdsDeliveryDealTypes.Open;
  cdsDeliveryDealTypes.Filter:=
    '(PROD_ORDER_BASE_TYPE_CODE = ' + IntToStr(ProdOrderBaseTypeToInt(FProdOrderBaseType)) + ')';
  cdsDeliveryDealTypes.Filtered:= True;
  cdsVendorOffices.Open;
  cdsCountries.Open;
  cdsTradeCodes.Open;

  cdsDamageStates.CreateDataSet;
  FillDataSetWithProcessTypeDamagedStates(cdsDamageStates);
end;

procedure TfmDeliveriesFilter.SetDataParams(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TProdOrderBaseType;
  AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProductClass:= AProductClass;
  FProdOrderBaseType:= AProdOrderBaseType;
end;

class function TfmDeliveriesFilter.ShowForm(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TProdOrderBaseType;
  AProductClass: TProductClass): Boolean;
var
  f: TfmDeliveriesFilter;
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

procedure TfmDeliveriesFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  gbLeaseDateUnit.Visible:= OuterDataSet.FieldByName('DELIVERY_DEAL_TYPE_CODE').AsInteger in ddtLease;
  gbSale.Visible:= (FProductClass = pcNormal);

  SetControlReadOnly(FProductClass = pcFinancial, cbDeliveryDealType);

  SetControlReadOnly(
    not IsSingleChosenCompany(dsData.DataSet.FieldByName('CHOSEN_COMPANIES').AsString),
    cbDeliveryVendorOffice);

  pnlVendorInfo.Visible:= (FProdOrderBaseType <> pobtOccCover);
  gbTransportBy.Visible:= (FProdOrderBaseType <> pobtOccCover);
  gbShipmentTypeCode.Visible:= (FProdOrderBaseType <> pobtOccCover);
end;

procedure TfmDeliveriesFilter.cdsVendorOfficesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if IsSingleChosenCompany(dsData.DataSet.FieldByName('CHOSEN_COMPANIES').AsString) then
    cdsVendorOffices.Params.ParamByName('COMPANY_CODE').AsInteger:=
      SingleChosenCompanyCode(dsData.DataSet.FieldByName('CHOSEN_COMPANIES').AsString)
  else
    cdsVendorOffices.Params.ParamByName('COMPANY_CODE').Clear;
end;

procedure TfmDeliveriesFilter.CloseDataSets;
begin
  inherited;
  cdsDamageStates.Close;
  cdsStatuses.Close;
  cdsDeliveryTypes.Close;
  cdsBranches.Close;
  cdsDeliveryDealTypes.Close;
  cdsVendorOffices.Close;
  cdsCountries.Close;
  cdsTradeCodes.Close;
end;

procedure TfmDeliveriesFilter.dsDataDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if not Assigned(Field) then
    Exit;

  if (Field.FieldName = 'CHOSEN_COMPANIES') then
    begin
      dsData.DataSet.FieldByName('DELIVERY_VENDOR_OFFICE_CODE').Clear;
      cdsVendorOffices.Close;
      cdsVendorOffices.Open;
    end;  { if }
end;

procedure TfmDeliveriesFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDeliveryDateInterval.FieldNames:= 'BEGIN_DELIVERY_DATE;END_DELIVERY_DATE';
  frVendor.FieldNames:= 'CHOSEN_COMPANIES';
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  InitializeDBComboBox(cbIsTransportFromVendor);
end;

end.
