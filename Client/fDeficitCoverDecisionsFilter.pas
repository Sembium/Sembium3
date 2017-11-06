unit fDeficitCoverDecisionsFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFilterForm, Db, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  fEmployeeFieldEditFrame, fEmployeeFieldEditFrameLabeled,
  fDateIntervalFrame, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameLabeled, AbmesDBCheckBox, Mask, DBCtrls,
  AbmesFields, DBClient, AbmesClientDataSet, JvComponent, JvCaptionButton,
  JvExControls, JvDBLookup, JvComponentBase, fTreeNodeFilter, fProductFilter,
  fParamProductFilter, dDocClient, uClientTypes, JvExStdCtrls, JvDBCombobox,
  uProductionOrderTypes, uProducts, fFilterFrame, fTreeNodeGridFilter,
  uUtils, uDCDModes, fCompanyFilter;

type
  TfmDeficitCoverDecisionsFilter = class(TFilterForm)
    grpId: TGroupBox;
    lblBranch: TLabel;
    lblRPD: TLabel;
    edtRPD: TDBEdit;
    lcbBranch: TJvDBLookupCombo;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    dsBranches: TDataSource;
    frVPDEmployee: TfrEmployeeFieldEditFrameLabeled;
    cbDeliveryDealType: TJvDBLookupCombo;
    lblDeliveryDealType: TLabel;
    lblAspect: TLabel;
    cbAspect: TJvDBLookupCombo;
    gbOfferDate: TGroupBox;
    gbDeficitCoverDate: TGroupBox;
    frOfferDateInterval: TfrDateIntervalFrame;
    frDeficitCoverDateInterval: TfrDateIntervalFrame;
    cdsAspectTypes: TAbmesClientDataSet;
    cdsAspectTypesASPECT_TYPE_CODE: TAbmesFloatField;
    cdsAspectTypesASPECT_TYPE_ABBREV: TAbmesWideStringField;
    cdsAspectTypesASPECT_TYPE_NAME: TAbmesWideStringField;
    dsAspectTypes: TDataSource;
    cdsDeliveryDealTypes: TAbmesClientDataSet;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    dsDeliveryDealTypes: TDataSource;
    cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsStatuses: TAbmesClientDataSet;
    cdsStatusesSTATUS_CODE: TAbmesFloatField;
    cdsStatusesSTATUS_ABBREV: TAbmesWideStringField;
    cdsStatusesSTATUS_DESCRIPTION: TAbmesWideStringField;
    dsStatuses: TDataSource;
    gbStatus: TGroupBox;
    lblStatusDash: TLabel;
    cbMinStatus: TJvDBLookupCombo;
    cbMaxStatus: TJvDBLookupCombo;
    lblStreamType: TLabel;
    cbStreamType: TJvDBLookupCombo;
    cdsStreamTypes: TAbmesClientDataSet;
    cdsStreamTypesSTREAM_TYPE_CODE: TAbmesFloatField;
    cdsStreamTypesSTREAM_TYPE_ABBREV: TAbmesWideStringField;
    cdsStreamTypesSTREAM_TYPE_NAME: TAbmesWideStringField;
    dsStreamTypes: TDataSource;
    gbObjective: TGroupBox;
    frChosenProducts: TfrParamProductFilter;
    gbSubjective: TGroupBox;
    pnlDCDMode: TPanel;
    lblDCDMode: TLabel;
    cbDCDMode: TJvDBLookupCombo;
    frChosenCompanies: TfrCompanyFilter;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FProdOrderBaseType: TBorderProdOrderBaseType;
    FOriginalFormCaption: string;
    function IsDCDModeGroupBoxVisible(ADCDMode: TDCDMode): Boolean;
  protected
    function GetFilterFormVariantCode: Integer; override;
    function GetOriginalFormCaption: string; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;

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
  end;

implementation

uses
  dMain, uClientUtils, uDeliveryUtils, uParRelProducts, uBorderRelTypes,
  uProductClientUtils;

{$R *.DFM}

{ TfmDeficitCoverDecisionsFilter }

procedure TfmDeficitCoverDecisionsFilter.FormShow(Sender: TObject);
begin
  inherited;
  Utils.Using(uDeliveryUtils.CreateCommonMsgParams(FProdOrderBaseType, FProductClass))/
    procedure (mp: TStrings) begin
      RecursivelyFormatCaptions(Self, mp);
    end;

  cdsBranches.Open;
end;

function TfmDeficitCoverDecisionsFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if (AWinControl = cbDeliveryDealType) and
     (FProductClass = pcFinancial) then
    Exit(True);

  if ((AWinControl = cbStreamType) or (AWinControl = cbAspect)) and
     (FProdOrderBaseType = pobtOccCover) then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

function TfmDeficitCoverDecisionsFilter.GetFilterFormVariantCode: Integer;
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

function TfmDeficitCoverDecisionsFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmDeficitCoverDecisionsFilter.Initialize;
begin
  inherited Initialize;

  Utils.Using(uDeliveryUtils.CreateCommonMsgParams(FProdOrderBaseType, FProductClass))/
    procedure (mp: TStrings) begin
      RecursivelyFormatCaptions(Self, mp);
    end;

  Utils.Using(
    uParRelProducts.CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      brtVendor,
      pobtSaleCover,
      prpoProduct,
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False))/
    procedure (mp: TStrings) begin
      if (FProdOrderBaseType = pobtOccCover) then
        OccupationProductFixCommonMsgParams(mp);

      RecursivelyFormatCaptions(Self, mp);
    end;

  FOriginalFormCaption:= actForm.Caption;

  frChosenProducts.ProductClass:= FProductClass;
end;

function TfmDeficitCoverDecisionsFilter.IsDCDModeGroupBoxVisible(ADCDMode: TDCDMode): Boolean;
var
  DCDModeField: TField;
begin
  DCDModeField:= dsData.DataSet.FieldByName('DCD_MODE_CODE');
  Result:= not DCDModeField.IsNull and (DCDModeField.AsDCDMode = ADCDMode);
end;

procedure TfmDeficitCoverDecisionsFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  gbDeficitCoverDate.Visible:= IsDCDModeGroupBoxVisible(dcdmObjective);
  gbObjective.Visible:= IsDCDModeGroupBoxVisible(dcdmObjective);
  gbSubjective.Visible:= IsDCDModeGroupBoxVisible(dcdmSubjective);
end;

procedure TfmDeficitCoverDecisionsFilter.CloseDataSets;
begin
  inherited;
  cdsStatuses.Close;
  cdsStreamTypes.Close;
  cdsAspectTypes.Close;
  cdsDeliveryDealTypes.Close;
end;

procedure TfmDeficitCoverDecisionsFilter.OpenDataSets;
begin
  inherited;
  cdsStatuses.CreateDataSet;
  FillDataSetWithDCDStatuses(cdsStatuses);
  cdsAspectTypes.Open;
  cdsStreamTypes.Open;
  cdsDeliveryDealTypes.Open;
  cdsDeliveryDealTypes.Filter:=
    '(PROD_ORDER_BASE_TYPE_CODE = ' + IntToStr(ProdOrderBaseTypeToInt(FProdOrderBaseType)) + ')';
  cdsDeliveryDealTypes.Filtered:= True;
end;

procedure TfmDeficitCoverDecisionsFilter.SetDataParams(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TBorderProdOrderBaseType;
  AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProdOrderBaseType:= AProdOrderBaseType;
  FProductClass:= AProductClass;
end;

class function TfmDeficitCoverDecisionsFilter.ShowForm(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TBorderProdOrderBaseType;
  AProductClass: TProductClass): Boolean;
var
  f: TfmDeficitCoverDecisionsFilter;
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

procedure TfmDeficitCoverDecisionsFilter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsBranches.Close;
end;

procedure TfmDeficitCoverDecisionsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frVPDEmployee.FieldNames:= 'VPD_EMPLOYEE_CODE';
  frVPDEmployee.EmployeeTypeName:= frVPDEmployee.gbEmployee.Caption;
  frDeficitCoverDateInterval.FieldNames:= 'BEGIN_DEFICIT_COVER_DATE;END_DEFICIT_COVER_DATE';
  frOfferDateInterval.FieldNames:= 'BEGIN_PLAN_DECISION_DATE;END_PLAN_DECISION_DATE';
  frChosenProducts.FieldNames:= 'CHOSEN_PRODUCTS';
  frChosenCompanies.FieldNames:= 'CHOSEN_COMPANIES';
end;

end.
