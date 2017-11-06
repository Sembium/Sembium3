unit fGroupDeliveriesFilter;
 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fButtonForm, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, JvToolEdit,
  JvDBControls, JvDBLookup, Db, ParamDataSet, DBClient,
  ImgList, ActnList, fFilterForm, AbmesClientDataSet, AbmesFields,
  AbmesDBCheckBox, Menus, JvButtons, fBaseFrame, fDBFrame, fFieldEditFrame,
  fEmployeeFieldEditFrame, fDateIntervalFrame, fPartnerFieldEditFrame,
  fEmployeeFieldEditFrameLabeled, fPartnerFieldEditFrameLabeled,
  JvComponent, JvCaptionButton, JvExControls, JvComponentBase, JvExStdCtrls,
  JvDBCombobox, fTreeNodeFilter, fProductFilter, fParamProductFilter,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fPartnerFieldEditFrameBald,
  dDocClient, uClientTypes, uProductionOrderTypes, uProducts, fCompanyFilter,
  JvCombobox, fTreeNodeGridFilter, fFilterFrame;

type
  TfmGroupDeliveriesFilter = class(TFilterForm)
    gbVendor: TGroupBox;
    cdsTradeCodes: TAbmesClientDataSet;
    cdsTradeCodesSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsTradeCodesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    dsTradeCodes: TDataSource;
    cdsCustomHouses: TAbmesClientDataSet;
    cdsCustomHousesCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsCustomHousesCUSTOMHOUSE_NAME: TAbmesWideStringField;
    dsCustomHouses: TDataSource;
    cdsVendorOffices: TAbmesClientDataSet;
    cdsVendorOfficesCOMPANY_CODE: TAbmesFloatField;
    cdsVendorOfficesOFFICE_CODE: TAbmesFloatField;
    cdsVendorOfficesOFFICE_NAME: TAbmesWideStringField;
    dsVendorOffices: TDataSource;
    gbDates: TGroupBox;
    frDeliveryDateInterval: TfrDateIntervalFrame;
    lblDaysLeft: TLabel;
    edtBeginDaysLeft: TDBEdit;
    edtEndDaysLeft: TDBEdit;
    lblDaysLeftDash: TLabel;
    frParamProductFilter: TfrParamProductFilter;
    gbDeliveryDealType: TGroupBox;
    dsDeliveryDealTypes: TDataSource;
    cdsDeliveryDealTypes: TAbmesClientDataSet;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cbDeliveryDealType: TJvDBLookupCombo;
    gbLeaseDateUnit: TGroupBox;
    gbGroupBy: TGroupBox;
    frDCDPSDStore: TfrDeptFieldEditFrame;
    dsCountries: TDataSource;
    cdsCountries: TAbmesClientDataSet;
    cdsCountriesCOUNTRY_CODE: TAbmesFloatField;
    cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField;
    cdsCountriesCOUNTRY_NAME: TAbmesWideStringField;
    cdsStatuses: TAbmesClientDataSet;
    cdsStatusesSTATUS_CODE: TAbmesFloatField;
    cdsStatusesSTATUS_ABBREV: TAbmesWideStringField;
    cdsStatusesSTATUS_DESCRIPTION: TAbmesWideStringField;
    dsStatuses: TDataSource;
    gbStatus: TGroupBox;
    lblStatusDash: TLabel;
    cbMinStatus: TJvDBLookupCombo;
    cbMaxStatus: TJvDBLookupCombo;
    cbLeaseDateUnit: TJvDBLookupCombo;
    cbGroupBy: TJvDBComboBox;
    gbExceptEventDamages: TGroupBox;
    cbDamagesState: TJvDBLookupCombo;
    dsDamageStates: TDataSource;
    cdsDamageStates: TAbmesClientDataSet;
    cdsDamageStatesSTATE_CODE: TAbmesFloatField;
    cdsDamageStatesSTATE_ABBREV: TAbmesWideStringField;
    cdsDamageStatesSTATE_NAME: TAbmesWideStringField;
    pnlVendorInfo: TPanel;
    lblCode: TLabel;
    lblCustomhouse: TLabel;
    lblDeliveryVendorOffice: TLabel;
    lblCountry: TLabel;
    cbDeliveryVendorOffice: TJvDBLookupCombo;
    cbTradeCode: TJvDBLookupCombo;
    cbCustomhouse: TJvDBLookupCombo;
    cbCountry: TJvDBLookupCombo;
    gbBudgetOrderItem: TGroupBox;
    lblBudgetOrderBranch: TLabel;
    lblBudgetOrderCode: TLabel;
    lblBudgetOrderItemCode: TLabel;
    cbBudgetOrderBranch: TJvDBLookupCombo;
    edtBudgetOrderCode: TDBEdit;
    edtBudgetOrderItemCode: TDBEdit;
    edtBOIOrderCode: TDBEdit;
    lblBOIOrderCode: TLabel;
    frVendor: TfrCompanyFilter;
    gbDCDBranch: TGroupBox;
    cbDCDBranch: TJvDBLookupCombo;
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure cdsVendorOfficesBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
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
      AProdOrderBaseType: TProdOrderBaseType = pobtSaleCover;
      AProductClass: TProductClass = pcNone): Boolean;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProdOrderBaseType: TProdOrderBaseType = pobtSaleCover;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;

    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uCompanyKinds, uDeliveryUtils, uClientUtils, uDeliveryDealTypes,
  uExceptEventClientUtils, uUtils, uProductClientUtils, uCompanyClientUtils;

{$R *.DFM}

{ TfmGroupDeliveriesFilter }

procedure TfmGroupDeliveriesFilter.OpenDataSets;
begin
  inherited;
  cdsStatuses.CreateDataSet;
  FillDataSetWithDeliveryStatuses(cdsStatuses);
  cdsDeliveryDealTypes.Open;
  cdsDeliveryDealTypes.Filter:=
    '(PROD_ORDER_BASE_TYPE_CODE = ' + IntToStr(ProdOrderBaseTypeToInt(FProdOrderBaseType)) + ')';
  cdsDeliveryDealTypes.Filtered:= True;
  cdsCustomhouses.Open;
  cdsTradeCodes.Open;
  cdsVendorOffices.Open;
  cdsCountries.Open;

  cdsDamageStates.CreateDataSet;
  FillDataSetWithProcessTypeDamagedStates(cdsDamageStates);
end;

procedure TfmGroupDeliveriesFilter.SetDataParams(
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

class function TfmGroupDeliveriesFilter.ShowForm(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TProdOrderBaseType;
  AProductClass: TProductClass): Boolean;
var
  f: TfmGroupDeliveriesFilter;
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

procedure TfmGroupDeliveriesFilter.CloseDataSets;
begin
  cdsDamageStates.Close;
  cdsCountries.Close;
  cdsVendorOffices.Close;
  cdsTradeCodes.Close;
  cdsCustomhouses.Close;
  cdsDeliveryDealTypes.Close;
  cdsStatuses.Close;
  inherited;
end;

procedure TfmGroupDeliveriesFilter.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if not Assigned(Field) then
    Exit;

  if (Field.FieldName = 'CHOSEN_COMPANIES') then
    begin
      dsData.DataSet.FieldByName('DELIVERY_VENDOR_OFFICE_CODE').Clear;
      cdsVendorOffices.Close;
      cdsVendorOffices.Open;
    end;
end;

procedure TfmGroupDeliveriesFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  gbLeaseDateUnit.Visible:= OuterDataSet.FieldByName('DELIVERY_DEAL_TYPE_CODE').AsInteger in ddtLease;
  cbGroupBy.Enabled:= (VarToInt(cbDeliveryDealType.KeyValue) in ddtLease);
  gbGroupBy.Visible:= (FProductClass = pcNormal);
  pnlVendorInfo.Visible:= (FProdOrderBaseType <> pobtOccCover);
end;

function TfmGroupDeliveriesFilter.GetControlReadOnly(AWinControl: TWinControl): Boolean;
begin
  Result:= inherited GetControlReadOnly(AWinControl);

  if (AWinControl = cbDeliveryVendorOffice) then
    Result:= Result or not IsSingleChosenCompany(dsData.DataSet.FieldByName('CHOSEN_COMPANIES').AsString);

  if (AWinControl = cbDeliveryDealType) then
    Result:= Result or (FProductClass = pcFinancial);
end;

procedure TfmGroupDeliveriesFilter.cdsVendorOfficesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  if IsSingleChosenCompany(dsData.DataSet.FieldByName('CHOSEN_COMPANIES').AsString) then
    cdsVendorOffices.Params.ParamByName('COMPANY_CODE').AsInteger:=
      SingleChosenCompanyCode(dsData.DataSet.FieldByName('CHOSEN_COMPANIES').AsString)
  else
    cdsVendorOffices.Params.ParamByName('COMPANY_CODE').Clear;
end;

procedure TfmGroupDeliveriesFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDeliveryDateInterval.FieldNames:= 'BEGIN_DELIVERY_DATE;END_DELIVERY_DATE';
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frDCDPSDStore.FieldNames:= 'PSD_STORE_CODE';
  frVendor.FieldNames:= 'CHOSEN_COMPANIES';
end;

function TfmGroupDeliveriesFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= 0;
  case FProductClass of
    pcNormal:
      case FProdOrderBaseType of
        pobtSaleCover: Result:= 1;
        pobtEnvCover: Result:= 2;
      end;  { case }

    pcFinancial: Result:= 3;
  end;  { case }
end;

function TfmGroupDeliveriesFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmGroupDeliveriesFilter.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  frParamProductFilter.ProductClass:= FProductClass;

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

  FOriginalFormCaption:= actForm.Caption;
end;

end.
