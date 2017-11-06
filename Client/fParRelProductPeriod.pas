unit fParRelProductPeriod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fProductExFieldEditFrame, ComCtrls, ToolWin, fPartnerFieldEditFrame,
  fPartnerExFieldEditFrame, fBaseFrame, fDBFrame, fFieldEditFrame,
  fStatusAbstract, fParRelProductStatus, Mask, DBCtrls, uBorderRelTypes,
  fDateIntervalFrame, JvExControls, JvComponent, JvDBLookup, JvExStdCtrls,
  JvDBCombobox, fDeptFieldEditFrame, fDeptFieldEditFrameBald, uProducts,
  fPartnerFieldEditFrameBald, uClientTypes, dDocClient, AbmesFields,
  uParRelProducts, JvCombobox;

const
  MaxInvestmentLevel = 6;

type
  TfmParRelProductPeriod = class(TEditForm)
    pnlTop: TPanel;
    gbParRelProduct: TGroupBox;
    lblIsRegular: TLabel;
    frStatus: TfrParRelProductStatus;
    frPartner: TfrPartnerExFieldEditFrame;
    tlbParRelProductDocs: TToolBar;
    btnParRelProductDocs: TToolButton;
    frProduct: TfrProductExFieldEditFrame;
    edtIsRegular: TDBEdit;
    dsHeader: TDataSource;
    pnlEstimatedQuantities: TPanel;
    pnlClientEstimatedQuantities: TPanel;
    gbClientSaleCoverAcquireQuantity: TGroupBox;
    edtClientSaleCoverAcquireQuantity: TDBEdit;
    lblClientSaleCoverAcquireQuantity: TLabel;
    txtClientSaleCoverAcquireMeasureAbbrev: TDBText;
    lblClientSaleCoverAcquireTotalPrice: TLabel;
    edtClientSaleCoverAcquireTotalPrice: TDBEdit;
    txtClientSaleCoverAcquireCurrencyAbbrev: TDBText;
    gbClientSaleCoverLeaseQuantity: TGroupBox;
    lblClientSaleCoverLeaseQuantity: TLabel;
    txtClientSaleCoverLeaseMeasureAbbrev: TDBText;
    lblClientSaleCoverLeaseTotalPrice: TLabel;
    txtClientSaleCoverLeaseCurrencyAbbrev: TDBText;
    edtClientSaleCoverLeaseQuantity: TDBEdit;
    edtClientSaleCoverLeaseTotalPrice: TDBEdit;
    lblClientSaleCoverLeaseQuantityFor: TLabel;
    lblClientSaleCoverLeaseDateUnitQuantity: TLabel;
    edtClientSaleCoverLeaseDateUnitQuantity: TDBEdit;
    lblClientSaleCoverLeaseDateUnitName: TLabel;
    edtClientSaleCoverLeaseDateUnitName: TDBEdit;
    lblClientSaleCoverLeaseTotalQuantity: TLabel;
    edtClientSaleCoverLeaseTotalQuantity: TDBEdit;
    pnlVendorEstimatedQuantities: TPanel;
    gbDateInterval: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    actWorkMeasure: TAction;
    actAccountMeasure: TAction;
    actToggleAcquirePrice: TAction;
    actToggleLeasePrice: TAction;
    gbTransport: TGroupBox;
    pnlTransport: TPanel;
    actToggleStore: TAction;
    pnlStore: TPanel;
    pnlToggleStore: TPanel;
    pnlToggleOverriddenStore: TPanel;
    frStore: TfrDeptFieldEditFrameBald;
    pnlToggleInheritedStore: TPanel;
    frInheritedStore: TfrDeptFieldEditFrameBald;
    lblStore: TLabel;
    actTogglePartnerOffice: TAction;
    pnlPartnerOffice: TPanel;
    pnlTogglePartnerOffice: TPanel;
    pnlToggleOverriddenPartnerOffice: TPanel;
    cbPartnerOffice: TJvDBLookupCombo;
    pnlToggleInheritedPartnerOffice: TPanel;
    edtInheritedPartnerOffice: TDBEdit;
    lblPartnerOffice: TLabel;
    actToggleTransportDurationDays: TAction;
    pnlTransportDurationDays: TPanel;
    pnlToggleTransportDurationDays: TPanel;
    pnlToggleOverriddenTransportDurationDays: TPanel;
    edtTransportDurationDays: TDBEdit;
    pnlToggleInheritedTransportDurationDays: TPanel;
    edtInheritedTransportDurationDays: TDBEdit;
    lblTransportDurationDays: TLabel;
    lblCalendarDays: TLabel;
    gbMediatorCompany: TGroupBox;
    actToggleMediatorCompany: TAction;
    pnlToggleMediatorCompany: TPanel;
    pnlToggleOverriddenMediatorCompany: TPanel;
    frMediatorCompany: TfrPartnerFieldEditFrameBald;
    pnlToggleInheritedMediatorCompany: TPanel;
    pnlToggleStoreButton: TPanel;
    btnToggleStore: TSpeedButton;
    edtInheritedMediatorCompany: TDBEdit;
    pnlToggleMediatorCompanyButton: TPanel;
    btnToggleMediatorCompany: TSpeedButton;
    actToggleShipmentType: TAction;
    actToggleIsPartnerTransport: TAction;
    actToggleCustomhouse: TAction;
    actToggleCommonInvestmentValuesDiff: TAction;
    actToggleSinglePriceInvestmentValuesPart: TAction;
    gbClientSaleCoverConsignQuantity: TGroupBox;
    lblClientSaleCoverConsignQuantity: TLabel;
    txtClientSaleCoverConsignMeasureAbbrev: TDBText;
    edtClientSaleCoverConsignQuantity: TDBEdit;
    pnlResloveDurationDays: TPanel;
    lblResolveDurationDays: TLabel;
    lblCalendarDays2: TLabel;
    pnlToggleResolveDurationDays: TPanel;
    pnlToggleOverriddenResolveDurationDays: TPanel;
    edtResolveDurationDays: TDBEdit;
    pnlToggleInheritedResolveDurationDays: TPanel;
    edtInheritedResolveDurationDays: TDBEdit;
    actToogleResolveDurationDays: TAction;
    pnlVendorSaleCoverQuantities: TPanel;
    gbVendorSaleCoverAcquireQuantity: TGroupBox;
    lblVendorSaleCoverAcquireQuantity: TLabel;
    txtVendorSaleCoverAcquireMeasureAbbrev: TDBText;
    lblVendorSaleCoverAcquireTotalPrice: TLabel;
    txtVendorSaleCoverAcquireCurrencyAbbrev: TDBText;
    edtVendorSaleCoverAcquireQuantity: TDBEdit;
    edtVendorSaleCoverAcquireTotalPrice: TDBEdit;
    gbVendorSaleCoverLeaseQuantity: TGroupBox;
    lblVendorSaleCoverLeaseQuantity: TLabel;
    txtVendorSaleCoverLeaseMeasureAbbrev: TDBText;
    lblVendorSaleCoverLeaseTotalPrice: TLabel;
    txtVendorSaleCoverLeaseCurrencyAbbrev: TDBText;
    lblVendorSaleCoverLeaseQuantityFor: TLabel;
    lblVendorSaleCoverLeaseDateUnitQuantity: TLabel;
    lblVendorSaleCoverLeaseDateUnitName: TLabel;
    lblVendorSaleCoverLeaseTotalQuantity: TLabel;
    edtVendorSaleCoverLeaseQuantity: TDBEdit;
    edtVendorSaleCoverLeaseTotalPrice: TDBEdit;
    edtVendorSaleCoverLeaseDateUnitQuantity: TDBEdit;
    edtVendorSaleCoverLeaseDateUnitName: TDBEdit;
    edtVendorSaleCoverLeaseTotalQuantity: TDBEdit;
    gbVendorSaleCoverConsignQuantity: TGroupBox;
    lblVendorSaleCoverConsignQuantity: TLabel;
    txtVendorSaleCoverConsignMeasureAbbrev: TDBText;
    edtVendorSaleCoverConsignQuantity: TDBEdit;
    pnlVendorEnvCoverQuantities: TPanel;
    gbVendorEnvCoverAcquireQuantity: TGroupBox;
    lblVendorEnvCoverAcquireQuantity: TLabel;
    txtVendorEnvCoverAcquireMeasureAbbrev: TDBText;
    lblVendorEnvCoverAcquireTotalPrice: TLabel;
    txtVendorEnvCoverAcquireCurrencyAbbrev: TDBText;
    edtVendorEnvCoverAcquireQuantity: TDBEdit;
    edtVendorEnvCoverAcquireTotalPrice: TDBEdit;
    gbVendorEnvCoverLeaseQuantity: TGroupBox;
    lblVendorEnvCoverLeaseQuantity: TLabel;
    txtVendorEnvCoverLeaseMeasureAbbrev: TDBText;
    lblVendorEnvCoverLeaseTotalPrice: TLabel;
    txtVendorEnvCoverLeaseCurrencyAbbrev: TDBText;
    lblVendorEnvCoverLeaseQuantityFor: TLabel;
    lblVendorEnvCoverLeaseDateUnitQuantity: TLabel;
    lblVendorEnvCoverLeaseDateUnitName: TLabel;
    lblVendorEnvCoverLeaseTotalQuantity: TLabel;
    edtVendorEnvCoverLeaseQuantity: TDBEdit;
    edtVendorEnvCoverLeaseTotalPrice: TDBEdit;
    edtVendorEnvCoverLeaseDateUnitQuantity: TDBEdit;
    edtVendorEnvCoverLeaseDateUnitName: TDBEdit;
    edtVendorEnvCoverLeaseTotalQuantity: TDBEdit;
    pnlBottomStuff: TPanel;
    gbPrecisionLevel: TGroupBox;
    edtPrecisionLevelShowName: TDBEdit;
    gbBalanceQuantity: TGroupBox;
    txtBalanceQuantityMeasureAbbrev: TDBText;
    edtBalanceQuantity: TDBEdit;
    gbPrices: TGroupBox;
    lblAcquireSinglePrice: TLabel;
    lblAcquireCurrency: TLabel;
    txtAcquireMeasureAbbrev: TDBText;
    lblSlash1: TLabel;
    bvlPricesSeparator: TBevel;
    pnlToggleAcquirePrice: TPanel;
    pnlToggleInheritedAcquirePrice: TPanel;
    edtInheritedAcquireSinglePrice: TDBEdit;
    edtInheritedAcquireCurrency: TDBEdit;
    pnlToggleOverriddenAcquirePrice: TPanel;
    edtAcquireSinglePrice: TDBEdit;
    cbAcquireCurrency: TJvDBLookupCombo;
    pnlValueGainedLevel6: TPanel;
    lblValueGainedLevel6Currency: TLabel;
    txtValueGainedLevel6MeasureAbbrev: TDBText;
    lblValueGainedLevel6: TLabel;
    txtValueGainedLevel6Currency: TDBText;
    lblValueGainedLevel6Percent: TLabel;
    edtValueGainedLevel6: TDBEdit;
    edtValueGainedLevel6Percent: TDBEdit;
    gbIsApprovedByPartner: TGroupBox;
    cbIsApprovedByPartner: TJvDBComboBox;
    gbInvestmentValues: TGroupBox;
    pnlToggleInvestmentValueDiffs: TPanel;
    tlbToggleInvestmentValueDiffs: TToolBar;
    btnToggleSinglePriceInvestmentValuesPart: TSpeedButton;
    sepToggleCommonInvestmentValuesDiff: TToolButton;
    btnToggleCommonInvestmentValuesDiff: TSpeedButton;
    pnlToggleWorkOrAccountInvestmentValuesMargin: TPanel;
    pnlInvestmentLevel6: TPanel;
    lblInvestmentLevel6: TLabel;
    lblInvestmentLevel6Desc: TLabel;
    pnlInvestmentLevel6Controls: TPanel;
    lblBaseCurrency6: TLabel;
    txtInvestmentValueLeve6MeasureAbbrev: TDBText;
    lblInvestmentLevel6DiffMeasure: TLabel;
    edtInvestmentLevel6Value: TDBEdit;
    edtInvestmentLevel6Diff: TDBEdit;
    pnlInvestmentLevel1: TPanel;
    lblInvestmentLevel1: TLabel;
    lblInvestmentLevel1Desc: TLabel;
    pnlInvestmentLevel1Controls: TPanel;
    lblBaseCurrency1: TLabel;
    txtInvestmentValueLeve1MeasureAbbrev: TDBText;
    lblInvestmentLevel1DiffMeasure: TLabel;
    edtInvestmentLevel1Value: TDBEdit;
    edtInvestmentLevel1Diff: TDBEdit;
    pnlInvestmentLevel2: TPanel;
    lblInvestmentLevel2: TLabel;
    lblInvestmentLevel2Desc: TLabel;
    pnlInvestmentLevel2Controls: TPanel;
    lblBaseCurrency2: TLabel;
    txtInvestmentValueLeve2MeasureAbbrev: TDBText;
    lblInvestmentLevel2DiffMeasure: TLabel;
    edtInvestmentLevel2Value: TDBEdit;
    edtInvestmentLevel2Diff: TDBEdit;
    pnlInvestmentLevel3: TPanel;
    lblInvestmentLevel3: TLabel;
    lblInvestmentLevel3Desc: TLabel;
    pnlInvestmentLevel3Controls: TPanel;
    lblBaseCurrency3: TLabel;
    txtInvestmentValueLeve3MeasureAbbrev: TDBText;
    lblInvestmentLevel3DiffMeasure: TLabel;
    edtInvestmentLevel3Value: TDBEdit;
    edtInvestmentLevel3Diff: TDBEdit;
    pnlInvestmentLevel4: TPanel;
    lblInvestmentLevel4: TLabel;
    lblInvestmentLevel4Desc: TLabel;
    pnlInvestmentLevel4Controls: TPanel;
    lblBaseCurrency4: TLabel;
    txtInvestmentValueLeve4MeasureAbbrev: TDBText;
    lblInvestmentLevel4DiffMeasure: TLabel;
    edtInvestmentLevel4Value: TDBEdit;
    edtInvestmentLevel4Diff: TDBEdit;
    pnlInvestmentLevel5: TPanel;
    lblInvestmentLevel5: TLabel;
    lblInvestmentLevel5Desc: TLabel;
    pnlInvestmentLevel5Controls: TPanel;
    lblBaseCurrency5: TLabel;
    txtInvestmentValueLeve5MeasureAbbrev: TDBText;
    lblInvestmentLevel5DiffMeasure: TLabel;
    edtInvestmentLevel5Value: TDBEdit;
    edtInvestmentLevel5Diff: TDBEdit;
    pnlAggregatedInvestmentValues: TPanel;
    lblBaseCurrency20: TLabel;
    txtAggrInvestmentValueMeasureAbbrev: TDBText;
    lblAggregatedInvestmentValues: TLabel;
    edtAggrInvestmentLevel2Value: TDBEdit;
    edtAggrInvestmentLevel3Value: TDBEdit;
    edtAggrInvestmentLevel4Value: TDBEdit;
    edtAggrInvestmentLevel5Value: TDBEdit;
    edtAggrInvestmentLevel6Value: TDBEdit;
    pnlFullInvestmentValues: TPanel;
    lblBaseCurrency30: TLabel;
    txtFullInvestmentValueMeasureAbbrev: TDBText;
    lblFullInvestmentValues: TLabel;
    edtFullInvestmentLevel1Value: TDBEdit;
    edtFullInvestmentLevel2Value: TDBEdit;
    edtFullInvestmentLevel3Value: TDBEdit;
    edtFullInvestmentLevel4Value: TDBEdit;
    edtFullInvestmentLevel5Value: TDBEdit;
    edtFullInvestmentLevel6Value: TDBEdit;
    gbOther: TGroupBox;
    lblShipmentType: TLabel;
    lblIsPartnerTransport: TLabel;
    lblCustomhouse: TLabel;
    pnlToggleShipmentType: TPanel;
    pnlToggleOverriddenShipmentType: TPanel;
    cbShipmentType: TJvDBLookupCombo;
    pnlToggleInheritedShipmentType: TPanel;
    edtInheritedShipmentType: TDBEdit;
    pnlToggleIsPartnerTransport: TPanel;
    pnlToggleOverriddenIsPartnerTransport: TPanel;
    cbIsPartnerTransport: TJvDBComboBox;
    pnlToggleInheritedIsPartnerTransport: TPanel;
    edtInheritedIsPartnerTransport: TDBEdit;
    pnlToggleCustomhouse: TPanel;
    pnlToggleOverriddenCustomhouse: TPanel;
    cbCustomhouse: TJvDBLookupCombo;
    pnlToggleInheritedCustomhouse: TPanel;
    edtInheritedCustomhouse: TDBEdit;
    pnlLeasePrice: TPanel;
    lblSaleLeaseSinglePrice: TLabel;
    lblLeaseCurrency: TLabel;
    txtLeaseMeasureAbbrev: TDBText;
    lblSlash2: TLabel;
    lblLeaseDateUnit: TLabel;
    pnlToggleLeasePrice: TPanel;
    pnlToggleOverriddenLeasePrice: TPanel;
    edtLeaseSinglePrice: TDBEdit;
    cbLeaseCurrency: TJvDBLookupCombo;
    cbLeaseDateUnit: TJvDBLookupCombo;
    pnlToggleInheritedLeasePrice: TPanel;
    edtInheritedLeaseSinglePrice: TDBEdit;
    edtInheritedLeaseCurrency: TDBEdit;
    edtInheritedLeaseDateUnit: TDBEdit;
    tlbWorkMeasure: TToolBar;
    btnWorkMeasure: TToolButton;
    tlbAccountMeasure: TToolBar;
    btnAccountMeasure: TToolButton;
    gbEstSpecFinModel: TGroupBox;
    pnlToggleEstSpecFinModel: TPanel;
    pnlOverriddenInheritedEstSpecFinModel: TPanel;
    pnlToggleInheritedEstSpecFinModel: TPanel;
    edtToggleInheritedEstSpecFinModel: TDBEdit;
    pnlToggleEstSpecFinModelButton: TPanel;
    btnToggleEstSpecFinModel: TSpeedButton;
    cbEstSpecFinModel: TJvDBLookupCombo;
    actToggleEstSpecFinModel: TAction;
    cdsSpecFinModels: TAbmesClientDataSet;
    dsSpecFinModels: TDataSource;
    cdsSpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    cdsSpecFinModelsSPEC_FIN_MODEL_NAME: TAbmesWideStringField;
    lblAggrInvestmentLevel6DiffMeasure: TLabel;
    edtAggrInvestmentLevel6Diff: TDBEdit;
    lblFullInvestmentLevel6DiffMeasure: TLabel;
    edtFullInvestmentLevel6Diff: TDBEdit;
    pnlToggleAcquirePriceButton: TPanel;
    pnlToggleLeasePriceButton: TPanel;
    pnlToggleResolveDurationDaysButton: TPanel;
    pnlToggleTransportDurationDaysButton: TPanel;
    pnlTogglePartnerOfficeButton: TPanel;
    pnlToggleShipmentTypeButton: TPanel;
    pnlToggleIsPartnerTransportButton: TPanel;
    pnlToggleCustomhouseButton: TPanel;
    btnToggleAcquirePrice: TSpeedButton;
    btnToggleLeasePrice: TSpeedButton;
    btnToggleResolveDurationDays: TSpeedButton;
    btnToggleTransportDurationDays: TSpeedButton;
    btnTogglePartnerOffice: TSpeedButton;
    btnToggleShipmentType: TSpeedButton;
    btnToggleIsPartnerTransport: TSpeedButton;
    btnToggleCustomhouse: TSpeedButton;
    actAcquirePrice: TAction;
    actLeasePrice: TAction;
    pnlAcquirePriceButton: TPanel;
    btnAcquirePrice: TSpeedButton;
    pnlLeasePriceButton: TPanel;
    btnLeasePrice: TSpeedButton;
    procedure actFormUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actWorkMeasureExecute(Sender: TObject);
    procedure actAccountMeasureExecute(Sender: TObject);
    procedure actToggleAcquirePriceUpdate(Sender: TObject);
    procedure actToggleAcquirePriceExecute(Sender: TObject);
    procedure actToggleLeasePriceUpdate(Sender: TObject);
    procedure actToggleLeasePriceExecute(Sender: TObject);
    procedure actToggleStoreUpdate(Sender: TObject);
    procedure actToggleStoreExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actTogglePartnerOfficeUpdate(Sender: TObject);
    procedure actTogglePartnerOfficeExecute(Sender: TObject);
    procedure actToggleTransportDurationDaysUpdate(Sender: TObject);
    procedure actToggleTransportDurationDaysExecute(Sender: TObject);
    procedure actToggleMediatorCompanyUpdate(Sender: TObject);
    procedure actToggleMediatorCompanyExecute(Sender: TObject);
    procedure actToggleShipmentTypeUpdate(Sender: TObject);
    procedure actToggleShipmentTypeExecute(Sender: TObject);
    procedure actToggleIsPartnerTransportUpdate(Sender: TObject);
    procedure actToggleIsPartnerTransportExecute(Sender: TObject);
    procedure actToggleCustomhouseUpdate(Sender: TObject);
    procedure actToggleCustomhouseExecute(Sender: TObject);
    procedure btnParRelProductDocsClick(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure actToggleInvestmentValuesDiff(Sender: TObject);
    procedure frDateIntervalactEditDateIntervalExecute(Sender: TObject);
    procedure cbAcquireCurrencyChange(Sender: TObject);
    procedure cbLeaseCurrencyChange(Sender: TObject);
    procedure actToggleCommonInvestmentValuesDiffUpdate(Sender: TObject);
    procedure actToogleResolveDurationDaysUpdate(Sender: TObject);
    procedure actToogleResolveDurationDaysExecute(Sender: TObject);
    procedure edtAcquireSinglePriceExit(Sender: TObject);
    procedure actToggleEstSpecFinModelUpdate(Sender: TObject);
    procedure actToggleEstSpecFinModelExecute(Sender: TObject);
    procedure cdsSpecFinModelsBeforeOpen(DataSet: TDataSet);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure actToggleSinglePriceInvestmentValuesPartUpdate(Sender: TObject);
    procedure actAcquirePriceExecute(Sender: TObject);
    procedure actLeasePriceExecute(Sender: TObject);
    procedure actAcquirePriceUpdate(Sender: TObject);
    procedure actLeasePriceUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FBorderRelType: TBorderRelType;
    FOriginalFormCaption: string;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FOriginalFormClientHeight: Integer;
    procedure InitializeIsPartnerTransportComboBox;
    procedure SetWorkOrAccountMeasure;
    procedure RefreshRealAndInheritedFieldDBEdits;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure SetInvestmentValuesDiff;
    procedure RefreshCurrencies;
    procedure ToggleActionUpdate(ASender: TObject; AFieldName: string;
      AButtonPanel, AOverriddenPanel, AInheritedPanel: TPanel);
    procedure ToggleActionExecute(ASender: TObject; AFieldName: string);
    procedure ShowProductPartnerPrice(AObtainmentType: TObtainmentType);
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetOriginalFormCaption: string; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function IsQuantityField(const AField: TAbmesFloatField): Boolean; override;

    property BorderRelType: TBorderRelType read FBorderRelType;
  public
    class function ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
      AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
      AProductClass: TProductClass;
      AStatusData: OleVariant): Boolean; reintroduce;
    procedure SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
      AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
      AProductClass: TProductClass;
      AStatusData: OleVariant); reintroduce; virtual;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  uClientConsts, uClientUtils, StrUtils, uUtils,
  uDocUtils, dMain, uCompanyKinds, uProductionOrderTypes, fProductPartnerPrice,
  uCompanyClasses, uComboBoxUtils;

{$R *.dfm}

resourcestring
  SWorkLeaseTotalQuantityCaption = 'Раб. Ресурс';
  SAccountLeaseTotalQuantityCaption = 'Счет. Ресурс';

{ TfmParRelProductPeriod }

procedure TfmParRelProductPeriod.actAccountMeasureExecute(Sender: TObject);
begin
  inherited;
  SetWorkOrAccountMeasure;
end;

procedure TfmParRelProductPeriod.actAcquirePriceExecute(Sender: TObject);
begin
  inherited;
  ShowProductPartnerPrice(otAcquire);
end;

procedure TfmParRelProductPeriod.actAcquirePriceUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('BEGIN_DATE').IsNull;
end;

procedure TfmParRelProductPeriod.actFormUpdate(Sender: TObject);

  procedure SetDiffEditFontColor(edt: TDBEdit);
  begin
    if edt.Field.DataSet.Active and
       (edt.Field.AsFloat < 0) then
      edt.Font.Color:= clRed
    else
      edt.Font.Color:= clWindowText;
  end;

begin
  inherited;

  if (FProductClass = pcNormal) and (BorderRelType = brtVendor) then
    begin
      ClientHeight:= FOriginalFormClientHeight;
      pnlEstimatedQuantities.Height:= pnlVendorEstimatedQuantities.Height;
    end
  else
    begin
      ClientHeight:= (FOriginalFormClientHeight - pnlVendorEstimatedQuantities.Height + pnlClientEstimatedQuantities.Height);
      pnlEstimatedQuantities.Height:= pnlClientEstimatedQuantities.Height;
    end;

  pnlClientEstimatedQuantities.Visible:= (BorderRelType = brtClient);
  pnlVendorEstimatedQuantities.Visible:= (BorderRelType = brtVendor);

  pnlVendorSaleCoverQuantities.Visible:= (FProductClass in [pcNormal, pcFinancial]);
  pnlVendorEnvCoverQuantities.Visible:= (FProductClass in [pcNormal, pcBudget]);

  gbClientSaleCoverLeaseQuantity.Visible:= (FProductClass = pcNormal);
  gbClientSaleCoverConsignQuantity.Visible:= (FProductClass = pcNormal);
  gbVendorSaleCoverLeaseQuantity.Visible:= (FProductClass = pcNormal);
  gbVendorSaleCoverConsignQuantity.Visible:= (FProductClass = pcNormal);
  gbVendorEnvCoverLeaseQuantity.Visible:= (FProductClass = pcNormal);

  pnlLeasePrice.Visible:= (FProductClass = pcNormal);

  with dsData.DataSet.FieldByName('_PRECISION_LEVEL_COLOR') do
    if not IsNull then
      edtPrecisionLevelShowName.Font.Color:= AsInteger;

  with dsData.DataSet.FieldByName('_PRECISION_LEVEL_BACKGROUND_COLOR') do
    if not IsNull then
      edtPrecisionLevelShowName.Color:= AsInteger;

  SetControlsReadOnly(
    (EditMode = emReadOnly),
    [ edtClientSaleCoverAcquireQuantity,
      edtClientSaleCoverLeaseQuantity,
      edtClientSaleCoverLeaseDateUnitQuantity,
      edtClientSaleCoverConsignQuantity,
      edtVendorSaleCoverAcquireQuantity,
      edtVendorSaleCoverLeaseQuantity,
      edtVendorSaleCoverLeaseDateUnitQuantity,
      edtVendorSaleCoverConsignQuantity,
      edtVendorEnvCoverAcquireQuantity,
      edtVendorEnvCoverLeaseQuantity,
      edtVendorEnvCoverLeaseDateUnitQuantity,
      ReplacedDBComboBox(cbIsApprovedByPartner),
      edtAcquireSinglePrice,
      cbAcquireCurrency,
      edtLeaseSinglePrice,
      cbLeaseCurrency,
      cbLeaseDateUnit,
      cbEstSpecFinModel,
      edtTransportDurationDays,
      cbPartnerOffice,
      cbShipmentType,
      cbIsPartnerTransport,
      cbCustomhouse
    ]
  );

  if Assigned(dsHeader.DataSet) and dsHeader.DataSet.Active then
    btnParRelProductDocs.ImageIndex:= dsHeader.DataSet.FieldByName('HAS_DOC_ITEMS').AsInteger;

  if dsData.DataSet.Active then
    btnDocs.ImageIndex:= dsData.DataSet.FieldByName('HAS_DOC_ITEMS').AsInteger;

  if IsFullInvestedAndSalePriceVisible then
    begin
      SetDiffEditFontColor(edtValueGainedLevel6);
      SetDiffEditFontColor(edtValueGainedLevel6Percent);
    end;  { if }

  pnlValueGainedLevel6.Visible:= (FBorderRelType = brtClient);
  gbInvestmentValues.Visible:= (FBorderRelType = brtClient);
end;

procedure TfmParRelProductPeriod.actLeasePriceExecute(Sender: TObject);
begin
  inherited;
  ShowProductPartnerPrice(otLease);
end;

procedure TfmParRelProductPeriod.actLeasePriceUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('BEGIN_DATE').IsNull;
end;

procedure TfmParRelProductPeriod.actToggleAcquirePriceExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_ACQUIRE_PRICE');
end;

procedure TfmParRelProductPeriod.actToggleAcquirePriceUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_ACQUIRE_PRICE',
    pnlToggleAcquirePriceButton, pnlToggleOverriddenAcquirePrice, pnlToggleInheritedAcquirePrice);
end;

procedure TfmParRelProductPeriod.actToggleCommonInvestmentValuesDiffUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    Assigned(dsHeader.DataSet) and
    (dsHeader.DataSet.FieldByName('_COMMON_STATUS_CODE').AsInteger = cscJoined);
  btnToggleCommonInvestmentValuesDiff.Down:= (Sender as TAction).Checked;
end;

procedure TfmParRelProductPeriod.actToggleCustomhouseExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_CUSTOMHOUSE');
end;

procedure TfmParRelProductPeriod.actToggleCustomhouseUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_CUSTOMHOUSE',
    pnlToggleCustomhouseButton, pnlToggleOverriddenCustomhouse, pnlToggleInheritedCustomhouse);
end;

procedure TfmParRelProductPeriod.actToggleEstSpecFinModelExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_EST_SPEC_FIN_MODEL');
end;

procedure TfmParRelProductPeriod.actToggleEstSpecFinModelUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_EST_SPEC_FIN_MODEL',
    pnlToggleEstSpecFinModelButton, pnlOverriddenInheritedEstSpecFinModel, pnlToggleInheritedEstSpecFinModel);
end;

procedure TfmParRelProductPeriod.actToggleInvestmentValuesDiff(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Checked:= True;
  (Sender as TAction).Update;
  SetInvestmentValuesDiff;
end;

procedure TfmParRelProductPeriod.actToggleIsPartnerTransportExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_IS_PARTNER_TRANSPORT');
end;

procedure TfmParRelProductPeriod.actToggleIsPartnerTransportUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_IS_PARTNER_TRANSPORT',
    pnlToggleIsPartnerTransportButton, pnlToggleOverriddenIsPartnerTransport, pnlToggleInheritedIsPartnerTransport);
end;

procedure TfmParRelProductPeriod.actToggleLeasePriceExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_LEASE_PRICE');
end;

procedure TfmParRelProductPeriod.actToggleLeasePriceUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_LEASE_PRICE',
    pnlToggleLeasePriceButton, pnlToggleOverriddenLeasePrice, pnlToggleInheritedLeasePrice);
end;

procedure TfmParRelProductPeriod.actToggleMediatorCompanyExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_MEDIATOR_COMPANY');
end;

procedure TfmParRelProductPeriod.actToggleMediatorCompanyUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_MEDIATOR_COMPANY',
    pnlToggleMediatorCompanyButton, pnlToggleOverriddenMediatorCompany, pnlToggleInheritedMediatorCompany);
end;

procedure TfmParRelProductPeriod.actTogglePartnerOfficeExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_PARTNER_OFFICE');
end;

procedure TfmParRelProductPeriod.actTogglePartnerOfficeUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_PARTNER_OFFICE',
    pnlTogglePartnerOfficeButton, pnlToggleOverriddenPartnerOffice, pnlToggleInheritedPartnerOffice);
end;

procedure TfmParRelProductPeriod.actToggleShipmentTypeExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_SHIPMENT_TYPE');
end;

procedure TfmParRelProductPeriod.actToggleShipmentTypeUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_SHIPMENT_TYPE',
    pnlToggleShipmentTypeButton, pnlToggleOverriddenShipmentType, pnlToggleInheritedShipmentType);
end;

procedure TfmParRelProductPeriod.actToggleSinglePriceInvestmentValuesPartUpdate(
  Sender: TObject);
begin
  inherited;
  btnToggleSinglePriceInvestmentValuesPart.Down:= (Sender as TAction).Checked;
end;

procedure TfmParRelProductPeriod.actToggleStoreExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_STORE');
end;

procedure TfmParRelProductPeriod.actToggleStoreUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_STORE',
    pnlToggleStoreButton, pnlToggleOverriddenStore, pnlToggleInheritedStore);
end;

procedure TfmParRelProductPeriod.actToggleTransportDurationDaysExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_TRANSPORT_DURATION');
end;

procedure TfmParRelProductPeriod.actToggleTransportDurationDaysUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_TRANSPORT_DURATION',
    pnlToggleTransportDurationDaysButton, pnlToggleOverriddenTransportDurationDays, pnlToggleInheritedTransportDurationDays);
end;

procedure TfmParRelProductPeriod.actToogleResolveDurationDaysExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_RESOLVE_DURATION_DAYS');
end;

procedure TfmParRelProductPeriod.actToogleResolveDurationDaysUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_RESOLVE_DURATION_DAYS',
    pnlToggleResolveDurationDaysButton, pnlToggleOverriddenResolveDurationDays, pnlToggleInheritedResolveDurationDays);
end;

procedure TfmParRelProductPeriod.actWorkMeasureExecute(Sender: TObject);
begin
  inherited;
  SetWorkOrAccountMeasure;
end;

procedure TfmParRelProductPeriod.btnDocsClick(Sender: TObject);
begin
  inherited;

  if (EditMode <> emReadOnly) then
    CheckEditMode(dsData.DataSet);
    
  dmDocClient.DSOpenDoc(EditMode, btnDocs, dotParRelProductPeriod, dsData.DataSet);
end;

procedure TfmParRelProductPeriod.btnParRelProductDocsClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnParRelProductDocs, dotParRelProduct, dsHeader.DataSet);
end;

procedure TfmParRelProductPeriod.cbAcquireCurrencyChange(Sender: TObject);
begin
  inherited;
  RefreshCurrencies;
end;

procedure TfmParRelProductPeriod.cbLeaseCurrencyChange(Sender: TObject);
begin
  inherited;
  RefreshCurrencies;
end;

procedure TfmParRelProductPeriod.cdsSpecFinModelsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsSpecFinModels.Params, dsHeader.DataSet);
  cdsSpecFinModels.Params.ParamByName('TO_DATE').AsDateTime:=
    dsData.DataSet.FieldByName('BEGIN_DATE').AsDateTime;
end;

procedure TfmParRelProductPeriod.CloseDataSets;
begin
  cdsSpecFinModels.Close;
  inherited;
end;

procedure TfmParRelProductPeriod.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(dsData.DataSet.FieldByName('HAS_DOC_ITEMS'));
end;

procedure TfmParRelProductPeriod.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Assigned(Field) and (Field.FieldName = 'BEGIN_DATE') then
    begin
      cdsSpecFinModels.Close;
      cdsSpecFinModels.Open;

      with dsData.DataSet.FieldByName('EST_SPEC_FIN_MODEL_CODE') do
        if not IsNull and
           not cdsSpecFinModels.Locate('SPEC_FIN_MODEL_CODE', AsInteger, []) then
          Clear;
    end;
end;

procedure TfmParRelProductPeriod.edtAcquireSinglePriceExit(Sender: TObject);
begin
  inherited;
  RefreshRealAndInheritedFieldDBEdits;
end;

procedure TfmParRelProductPeriod.FormCreate(Sender: TObject);

  procedure SetBaseCurrencyLabel(ALabel: TLabel);
  begin
    ALabel.Caption:= FormatBaseCurrencyAbbrevString(ALabel.Caption);
  end;

var
  InvestmentLevel: Integer;
begin
  inherited;

  frPartner.ShownCompanyClasses:= [ccFirm, ccPerson, ccCumulative, ccCommon];
  frStore.FieldNames:= 'STORE_CODE';
  frStore.SelectStore:= True;
  frStore.DocButtonVisible:= False;
  frInheritedStore.FieldNames:= 'INHRT_STORE_CODE';
  frInheritedStore.SelectStore:= True;
  frInheritedStore.DocButtonVisible:= False;
  frMediatorCompany.FieldNames:= 'MEDIATOR_COMPANY_CODE';
  frMediatorCompany.FilterCompanyKind:= ckMediator;
  frMediatorCompany.DocButtonVisible:= False;

  for InvestmentLevel:= 1 to MaxInvestmentLevel do
    SetBaseCurrencyLabel(FindComponent(Format('lblBaseCurrency%d', [InvestmentLevel])) as TLabel);
  SetBaseCurrencyLabel(lblBaseCurrency20);
  SetBaseCurrencyLabel(lblBaseCurrency30);

  FOriginalFormClientHeight:= ClientHeight;
end;

procedure TfmParRelProductPeriod.FormShow(Sender: TObject);
begin
  inherited;
  actForm.Update;
end;

procedure TfmParRelProductPeriod.frDateIntervalactEditDateIntervalExecute(
  Sender: TObject);
begin
  frDateInterval.actEditDateIntervalExecute(Sender);
  RefreshRealAndInheritedFieldDBEdits;
end;

function TfmParRelProductPeriod.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmParRelProductPeriod.Initialize;
var
  MsgParams: TStrings;
begin
  dsHeader.DataSet:= (OuterDataSet as TClientDataSet).DataSetField.DataSet;

  inherited;

  (dsData.DataSet as TClientDataSet).ReadOnly:= False;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  FBorderRelType:=
    IntToBorderRelType(OuterDataSet.FieldByName('BORDER_REL_TYPE_CODE').AsInteger);

  frStatus.SetDataSet(dsHeader.DataSet);
  frPartner.SetDataSet(dsHeader.DataSet);
  frProduct.SetDataSet(dsHeader.DataSet);

  frStatus.FieldNames:= 'PARTNER_CODE; BORDER_REL_TYPE_CODE; PRODUCT_CODE';
  frPartner.FieldNames:= 'PARTNER_CODE';
  frPartner.PartnerStatusVisible:= True;
  frPartner.ParRelButtonVisible:= True;
  frPartner.PriorityCompanyKind:= BorderRelTypeToCompanyKind(BorderRelType);
  frProduct.FieldNames:= 'PRODUCT_CODE; PARTNER_CODE';
  frProduct.BorderRelType:= BorderRelType;
  frProduct.ProductClass:= FProductClass;

  InitializeIsPartnerTransportComboBox;

  if (BorderRelType = brtVendor) then
    begin
      pnlPartnerOffice.Align:= alLeft;
      pnlStore.Align:= alRight;

      pnlPartnerOffice.TabOrder:= 0;
      pnlStore.TabOrder:= 2;
    end;

  SetWorkOrAccountMeasure;

  MsgParams:=
    uParRelProducts.CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      BorderRelType,
      pobtSaleCover,
      prpoPartner,
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;

  SetInvestmentValuesDiff;

  frProduct.PartnerCode:= dsData.DataSet.FieldByName('PARTNER_CODE').AsInteger;
end;

procedure TfmParRelProductPeriod.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmParRelProductPeriod.ShowProductPartnerPrice(
  AObtainmentType: TObtainmentType);
begin
  TfmProductPartnerPrice.ShowForm(dmDocClient, nil, emReadOnly, doNone,
    dsData.DataSet.FieldByName('PRODUCT_CODE').AsInteger,
    dsData.DataSet.FieldByName('PARTNER_CODE').AsInteger,
    FBorderRelType,
    AObtainmentType,
    dsData.DataSet.FieldByName('BEGIN_DATE').AsDateTime);
end;

procedure TfmParRelProductPeriod.InitializeIsPartnerTransportComboBox;
var
  SL: TStringList;
begin
  SL:= TStringList.Create;
  try
    SL.Delimiter:= ';';
    SL.DelimitedText:= (cbIsPartnerTransport.Field as TAbmesFloatField).DisplayBoolValues;

    Assert(SL.Count = 2);

    cbIsPartnerTransport.Items.Clear;
    cbIsPartnerTransport.Items.Add('');
    cbIsPartnerTransport.Items.Add(SL[1]);
    cbIsPartnerTransport.Items.Add(SL[0]);

    cbIsPartnerTransport.Values.Assign(cbIsPartnerTransport.Items);
  finally
    FreeAndNil(SL);
  end;
end;

function TfmParRelProductPeriod.IsQuantityField(
  const AField: TAbmesFloatField): Boolean;
begin
  Result:= False;
end;

procedure TfmParRelProductPeriod.OpenDataSets;
begin
  inherited;
  cdsSpecFinModels.Open;
end;

procedure TfmParRelProductPeriod.RefreshCurrencies;
var
  CurrencyDBTexts: array of TDBText;
  txt: TDBText;
  DS: TDataSource;

  procedure AddCurrencyDBTexts(ACurrencyDBTexts: array of TDBText);
  var
    e: TDBText;
  begin
    for e in ACurrencyDBTexts do
      begin
        SetLength(CurrencyDBTexts, Length(CurrencyDBTexts) + 1);
        CurrencyDBTexts[Length(CurrencyDBTexts)-1]:= e;
      end;
  end;  { AddCurrencyDBTexts }

begin
  AddCurrencyDBTexts([
    txtClientSaleCoverAcquireCurrencyAbbrev,
    txtClientSaleCoverLeaseCurrencyAbbrev,
    txtVendorSaleCoverAcquireCurrencyAbbrev,
    txtVendorSaleCoverLeaseCurrencyAbbrev,
    txtVendorEnvCoverAcquireCurrencyAbbrev,
    txtVendorEnvCoverLeaseCurrencyAbbrev,
    txtValueGainedLevel6Currency
  ]);

  for txt in CurrencyDBTexts do
    begin
      DS:= txt.DataSource;
      txt.DataSource:= nil;
      txt.DataSource:= DS;
    end;

  RefreshDBEdit(edtValueGainedLevel6);
  RefreshDBEdit(edtValueGainedLevel6Percent);
end;

procedure TfmParRelProductPeriod.RefreshRealAndInheritedFieldDBEdits;
var
  InvestmentLevel: Integer;
  edt: TDBEdit;
begin
  RefreshDBEdit(edtClientSaleCoverAcquireTotalPrice);
  RefreshDBEdit(edtClientSaleCoverLeaseDateUnitName);
  RefreshDBEdit(edtClientSaleCoverLeaseTotalPrice);
  RefreshDBEdit(edtVendorSaleCoverAcquireTotalPrice);
  RefreshDBEdit(edtVendorSaleCoverLeaseDateUnitName);
  RefreshDBEdit(edtVendorSaleCoverLeaseTotalPrice);
  RefreshDBEdit(edtVendorEnvCoverAcquireTotalPrice);
  RefreshDBEdit(edtVendorEnvCoverLeaseDateUnitName);
  RefreshDBEdit(edtVendorEnvCoverLeaseTotalPrice);
  RefreshDBEdit(edtInheritedAcquireSinglePrice);
  RefreshDBEdit(edtInheritedAcquireCurrency);
  RefreshDBEdit(edtInheritedLeaseSinglePrice);
  RefreshDBEdit(edtInheritedLeaseCurrency);
  RefreshDBEdit(edtInheritedLeaseDateUnit);
  RefreshDBEdit(edtInheritedPartnerOffice);
  RefreshDBEdit(edtInheritedTransportDurationDays);
  RefreshDBEdit(edtInheritedMediatorCompany);
  RefreshDBEdit(edtInheritedShipmentType);
  RefreshDBEdit(edtInheritedIsPartnerTransport);
  RefreshDBEdit(edtInheritedCustomhouse);
  RefreshDBEdit(edtValueGainedLevel6);
  RefreshDBEdit(edtValueGainedLevel6Percent);

  for InvestmentLevel:= 1 to MaxInvestmentLevel do
    begin
      edt:= FindComponent(Format('edtInvestmentLevel%dValue', [InvestmentLevel])) as TDBEdit;
      RefreshDBEdit(edt);

      edt:= FindComponent(Format('edtInvestmentLevel%dDiff', [InvestmentLevel])) as TDBEdit;
      RefreshDBEdit(edt);

      edt:= FindComponent(Format('edtFullInvestmentLevel%dValue', [InvestmentLevel])) as TDBEdit;
      RefreshDBEdit(edt);
    end;

  for InvestmentLevel:= 2 to MaxInvestmentLevel do
    begin
      edt:= FindComponent(Format('edtAggrInvestmentLevel%dValue', [InvestmentLevel])) as TDBEdit;
      RefreshDBEdit(edt);
    end;
end;

procedure TfmParRelProductPeriod.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frStatus) or
     (AFrame = frPartner) or
     (AFrame = frProduct) or
     (AFrame = frInheritedStore) then
    begin
      AFrame.Readonly:= True;
      Exit;
    end;  { if }

  inherited;
end;

procedure TfmParRelProductPeriod.SetInvestmentValuesDiff;
var
  FieldNameFormat: string;
  InvestmentLevel: Integer;
  edt: TDBEdit;
begin
  if actToggleCommonInvestmentValuesDiff.Checked then
    FieldNameFormat:= '_CMMN_INVESTMENT_LEVEL_%d_DIFF';
  if actToggleSinglePriceInvestmentValuesPart.Checked then
    FieldNameFormat:= '_SINGLE_PRICE_INVESTMENT_LEVEL_%d_PART';

  for InvestmentLevel:= 1 to MaxInvestmentLevel do
    begin
      edt:= FindComponent(Format('edtInvestmentLevel%dDiff', [InvestmentLevel])) as TDBEdit;
      edt.DataField:= Format(FieldNameFormat, [InvestmentLevel]);
      RefreshDBEdit(edt);
    end;

  edtAggrInvestmentLevel6Diff.DataField:=
    Format(StringReplace(FieldNameFormat, 'INVEST', 'AGGR_INVEST', []), [6]);
  RefreshDBEdit(edtAggrInvestmentLevel6Diff);
  edtFullInvestmentLevel6Diff.DataField:=
    Format(StringReplace(FieldNameFormat, 'INVEST', 'FULL_INVEST', []), [6]);
  RefreshDBEdit(edtFullInvestmentLevel6Diff);
end;

procedure TfmParRelProductPeriod.SetWorkOrAccountMeasure;
var
  DBEdits: array of TDBEdit;
  MeasureDBTexts: array of TDBText;
  LeaseTotalQuantityCaption: string;

  procedure AddDBEdits(ADBEdits: array of TDBEdit);
  var
    e: TDBEdit;
  begin
    for e in ADBEdits do
      begin
        SetLength(DBEdits, Length(DBEdits) + 1);
        DBEdits[Length(DBEdits)-1]:= e;
      end;
  end;  { AddDBEdit }

  procedure AddMeasureDBTexts(AMeasureDBTexts: array of TDBText);
  var
    e: TDBText;
  begin
    for e in AMeasureDBTexts do
      begin
        SetLength(MeasureDBTexts, Length(MeasureDBTexts) + 1);
        MeasureDBTexts[Length(MeasureDBTexts)-1]:= e;
      end;
  end;  { AddMeasureDBTexts }

var
  e: TDBEdit;
  txt: TDBText;
  FieldName: string;
begin
  frProduct.MeasureVisible:= actWorkMeasure.Checked;
  frProduct.AccountMeasureVisible:= actAccountMeasure.Checked;

  AddDBEdits([
    edtClientSaleCoverAcquireQuantity,
    edtClientSaleCoverLeaseQuantity,
    edtClientSaleCoverLeaseTotalQuantity,
    edtVendorSaleCoverAcquireQuantity,
    edtVendorSaleCoverLeaseQuantity,
    edtVendorSaleCoverLeaseTotalQuantity,
    edtVendorSaleCoverConsignQuantity,
    edtVendorEnvCoverAcquireQuantity,
    edtVendorEnvCoverLeaseQuantity,
    edtVendorEnvCoverLeaseTotalQuantity,
    edtBalanceQuantity,
    edtAcquireSinglePrice,
    edtInheritedAcquireSinglePrice,
    edtLeaseSinglePrice,
    edtInheritedLeaseSinglePrice,
    edtInvestmentLevel1Value,
    edtInvestmentLevel2Value,
    edtInvestmentLevel3Value,
    edtInvestmentLevel4Value,
    edtInvestmentLevel5Value,
    edtInvestmentLevel6Value,
    edtFullInvestmentLevel1Value,
    edtFullInvestmentLevel2Value,
    edtFullInvestmentLevel3Value,
    edtFullInvestmentLevel4Value,
    edtFullInvestmentLevel5Value,
    edtFullInvestmentLevel6Value,
    edtAggrInvestmentLevel2Value,
    edtAggrInvestmentLevel3Value,
    edtAggrInvestmentLevel4Value,
    edtAggrInvestmentLevel5Value,
    edtAggrInvestmentLevel6Value
  ]);

  for e in DBEdits do
    if EndsText('_VALUE', e.DataField) or
       EndsText('_PRICE', e.DataField) or
       EndsText('_QTY', e.DataField) or
       EndsText('BALANCE_QUANTITY', e.DataField) then
    begin
      Assert(Assigned(e.Field));

      FieldName:= e.DataField;
      FieldName:= StringReplace(FieldName, '_ACC', '', []);
      FieldName:= StringReplace(FieldName, 'ACC_', '', []);

      Assert(FieldName <> '');

      if actWorkMeasure.Checked then
        begin
          if (FieldName[1] = '_') and
             (not Assigned(e.Field.DataSet.FindField(FieldName))) then
            FieldName:= RightStr(FieldName, Length(FieldName)-1);
        end
      else
        begin
          if (FieldName[1] = '_') then
            FieldName:= '_ACC' + FieldName
          else
            FieldName:= 'ACC_' + FieldName;

          if (not Assigned(e.Field.DataSet.FindField(FieldName))) then
            FieldName:= '_' + FieldName;
        end;

      if (FieldName <> e.DataField) then
        begin
          e.DataField:= FieldName;
          RefreshDBEdit(e);
        end;
    end;

  AddMeasureDBTexts([
    txtClientSaleCoverAcquireMeasureAbbrev,
    txtClientSaleCoverLeaseMeasureAbbrev,
    txtVendorSaleCoverAcquireMeasureAbbrev,
    txtVendorSaleCoverLeaseMeasureAbbrev,
    txtVendorSaleCoverConsignMeasureAbbrev,
    txtVendorEnvCoverAcquireMeasureAbbrev,
    txtVendorEnvCoverLeaseMeasureAbbrev,
    txtBalanceQuantityMeasureAbbrev,
    txtAcquireMeasureAbbrev,
    txtLeaseMeasureAbbrev,
    txtInvestmentValueLeve1MeasureAbbrev,
    txtInvestmentValueLeve2MeasureAbbrev,
    txtInvestmentValueLeve3MeasureAbbrev,
    txtInvestmentValueLeve4MeasureAbbrev,
    txtInvestmentValueLeve5MeasureAbbrev,
    txtInvestmentValueLeve6MeasureAbbrev,
    txtAggrInvestmentValueMeasureAbbrev,
    txtFullInvestmentValueMeasureAbbrev
  ]);

  for txt in MeasureDBTexts do
    if actWorkMeasure.Checked then
      txt.DataField:= 'MEASURE_ABBREV'
    else
      txt.DataField:= 'ACCOUNT_MEASURE_ABBREV';

  if actWorkMeasure.Checked then
    LeaseTotalQuantityCaption:= SWorkLeaseTotalQuantityCaption
  else
    LeaseTotalQuantityCaption:= SAccountLeaseTotalQuantityCaption;

  lblClientSaleCoverLeaseTotalQuantity.Caption:= LeaseTotalQuantityCaption;
  lblVendorSaleCoverLeaseTotalQuantity.Caption:= LeaseTotalQuantityCaption;
  lblVendorEnvCoverLeaseTotalQuantity.Caption:= LeaseTotalQuantityCaption;
end;

procedure TfmParRelProductPeriod.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass;
  AStatusData: OleVariant);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProductClass:= AProductClass;

  frStatus.OuterData:= AStatusData;
end;

class function TfmParRelProductPeriod.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass;
  AStatusData: OleVariant): Boolean;
var
  f: TfmParRelProductPeriod;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProductClass, AStatusData);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmParRelProductPeriod.ToggleActionExecute(ASender: TObject;
  AFieldName: string);
begin
  CheckEditMode(dsData.DataSet);
  with dsData.DataSet.FieldByName(AFieldName) do
    AsBoolean:= not AsBoolean;

  RefreshRealAndInheritedFieldDBEdits;
  (ASender as TAction).Update;
  SelectNext(((ASender as TAction).ActionComponent as TSpeedButton).Parent.Parent, True, True);
end;

procedure TfmParRelProductPeriod.ToggleActionUpdate(ASender: TObject;
  AFieldName: string; AButtonPanel, AOverriddenPanel, AInheritedPanel: TPanel);
begin
  AButtonPanel.Enabled:= (EditMode <> emReadOnly);
  with ASender as TAction do
    begin
      Checked:= dsData.DataSet.FieldByName(AFieldName).AsBoolean;
      AOverriddenPanel.Visible:= Checked;
      AInheritedPanel.Visible:= not Checked;
    end;  { with }
end;

end.
