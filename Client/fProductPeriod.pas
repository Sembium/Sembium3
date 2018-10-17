unit fProductPeriod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fProductFieldEditFrameBald, uClientTypes, dDocClient,
  ComCtrls, ToolWin, fDateIntervalFrame, JvExControls, JvComponent,
  JvDBLookup, JvExStdCtrls, JvDBCombobox, fDeptFieldEditFrame, GridsEh,
  DBGridEh, AbmesDBGrid, uProducts, fProductExFieldEditFrame, AbmesFields,
  fDeptFieldEditFrameBald, fDualGridFrame, fDeptFieldEditFrameLabeled,
  JvCombobox, System.Actions;

const
  MaxInvestmentLevel = 6;

type
  TfmProductPeriod = class(TEditForm)
    gbDateInterval: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    dsHeader: TDataSource;
    gbPresisionLevel: TGroupBox;
    gbBalanceQuantity: TGroupBox;
    txtMeasureAbbrev1: TDBText;
    gbInvestmentValues: TGroupBox;
    gbSalePrices: TGroupBox;
    lblSaleAcquireSinglePrice: TLabel;
    lblSaleAcquireCurrency: TLabel;
    txtMeasureAbbrev2: TDBText;
    lblSlash2: TLabel;
    lblSaleLeaseSinglePrice: TLabel;
    lblSaleLeaseCurrency: TLabel;
    txtMeasureAbbrev3: TDBText;
    lblSlash3: TLabel;
    lblSaleLeaseDateUnit: TLabel;
    gbDeliveryPrices: TGroupBox;
    lblDeliveryAcquireSinglePrice: TLabel;
    lblDeliveryAcquireCurrency: TLabel;
    txtMeasureAbbrev4: TDBText;
    lblSlash4: TLabel;
    lblDeliveryLeaseSinglePrice: TLabel;
    lblDeliveryLeaseCurrency: TLabel;
    txtMeasureAbbrev5: TDBText;
    lblSlash5: TLabel;
    lblDeliveryLeaseDateUnit: TLabel;
    gbPsdFromDelivery: TGroupBox;
    pnlToggleInvestmentValueDiffs: TPanel;
    pnlInvestmentLevel6: TPanel;
    lblInvestmentLevel6: TLabel;
    lblInvestmentLevel6Desc: TLabel;
    pnlInvestmentLevel6Controls: TPanel;
    lblBaseCurrency6: TLabel;
    txtMeasureAbbrev16: TDBText;
    edtInvestmentLevel6Diff: TDBEdit;
    lblInvestmentLevel6DiffMeasure: TLabel;
    pnlInvestmentLevel1: TPanel;
    lblInvestmentLevel1: TLabel;
    lblInvestmentLevel1Desc: TLabel;
    pnlInvestmentLevel1Controls: TPanel;
    lblBaseCurrency1: TLabel;
    txtMeasureAbbrev11: TDBText;
    lblInvestmentLevel1DiffMeasure: TLabel;
    edtInvestmentLevel1Diff: TDBEdit;
    pnlInvestmentLevel2: TPanel;
    lblInvestmentLevel2: TLabel;
    lblInvestmentLevel2Desc: TLabel;
    pnlInvestmentLevel2Controls: TPanel;
    lblBaseCurrency2: TLabel;
    txtMeasureAbbrev12: TDBText;
    lblInvestmentLevel2DiffMeasure: TLabel;
    edtInvestmentLevel2Diff: TDBEdit;
    pnlInvestmentLevel3: TPanel;
    lblInvestmentLevel3: TLabel;
    lblInvestmentLevel3Desc: TLabel;
    pnlInvestmentLevel3Controls: TPanel;
    lblBaseCurrency3: TLabel;
    txtMeasureAbbrev13: TDBText;
    lblInvestmentLevel3DiffMeasure: TLabel;
    edtInvestmentLevel3Diff: TDBEdit;
    pnlInvestmentLevel4: TPanel;
    lblInvestmentLevel4: TLabel;
    lblInvestmentLevel4Desc: TLabel;
    pnlInvestmentLevel4Controls: TPanel;
    lblBaseCurrency4: TLabel;
    txtMeasureAbbrev14: TDBText;
    lblInvestmentLevel4DiffMeasure: TLabel;
    edtInvestmentLevel4Diff: TDBEdit;
    pnlInvestmentLevel5: TPanel;
    lblInvestmentLevel5: TLabel;
    lblInvestmentLevel5Desc: TLabel;
    pnlInvestmentLevel5Controls: TPanel;
    lblBaseCurrency5: TLabel;
    txtMeasureAbbrev15: TDBText;
    lblInvestmentLevel5DiffMeasure: TLabel;
    edtInvestmentLevel5Diff: TDBEdit;
    pnlAggregatedInvestmentValues: TPanel;
    edtAggrInvestmentLevel2Value: TDBEdit;
    edtAggrInvestmentLevel3Value: TDBEdit;
    edtAggrInvestmentLevel4Value: TDBEdit;
    edtAggrInvestmentLevel5Value: TDBEdit;
    edtAggrInvestmentLevel6Value: TDBEdit;
    lblBaseCurrency20: TLabel;
    txtMeasureAbbrev20: TDBText;
    pnlFullInvestmentValues: TPanel;
    lblBaseCurrency30: TLabel;
    txtMeasureAbbrev30: TDBText;
    edtFullInvestmentLevel1Value: TDBEdit;
    edtFullInvestmentLevel2Value: TDBEdit;
    edtFullInvestmentLevel3Value: TDBEdit;
    edtFullInvestmentLevel4Value: TDBEdit;
    edtFullInvestmentLevel5Value: TDBEdit;
    edtFullInvestmentLevel6Value: TDBEdit;
    lblAggregatedInvestmentValues: TLabel;
    lblFullInvestmentValues: TLabel;
    actToggleSaleInvestmentValuesPart: TAction;
    actToggleDeliveryInvestmentValuesPart: TAction;
    actToggleCommonInvestmentValuesDiff: TAction;
    tlbToggleInvestmentValueDiffs: TToolBar;
    btnToggleCommonInvestmentValuesDiff: TSpeedButton;
    btnToggleSaleInvestmentValuesPart: TSpeedButton;
    btnToggleDeliveryInvestmentValuesPart: TSpeedButton;
    sepToggleSaleInvestmentValuesPart: TToolButton;
    sepToggleDeliveryInvestmentValuesPart: TToolButton;
    lblSaleProcessRoleNotSet: TLabel;
    lblDeliveryProcessRoleNotSet: TLabel;
    pnlToggleWorkOrAccountInvestmentValuesMargin: TPanel;
    tlbToggleWorkOrAccountInvestmentValues: TToolBar;
    btnWorkInvestmentValues: TToolButton;
    btnAccountInvestmentValues: TToolButton;
    actWorkInvestmentValues: TAction;
    actAccountInvestmentValues: TAction;
    actInvestedValuesGraph: TAction;
    frProduct: TfrProductExFieldEditFrame;
    lblSaleResolveDurationDays: TLabel;
    lblDeliveryResolveDurationDays: TLabel;
    lblSaleResolveDurationDaysMeasure: TLabel;
    lblDeliveryResolveDurationDaysMeasure: TLabel;
    edtAggrInvestmentLevel6Diff: TDBEdit;
    lblAggrInvestmentLevel6DiffMeasure: TLabel;
    edtFullInvestmentLevel6Diff: TDBEdit;
    lblFullInvestmentLevel6DiffMeasure: TLabel;
    actSpecInvestedValueLevelsGraph: TAction;
    cdsSpecInvestedValueLevelsGraphParams: TAbmesClientDataSet;
    cdsSpecInvestedValueLevelsGraphParamsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecInvestedValueLevelsGraphParamsMAIN_DEPT_CODE: TAbmesFloatField;
    cdsSpecInvestedValueLevelsGraphParamsMEASURE_TYPE_CODE: TAbmesFloatField;
    cdsSpecInvestedValueLevelsGraphParamsTECH_QUANTITY: TAbmesFloatField;
    cdsSpecInvestedValueLevelsGraphParamsCURRENCY_CODE: TAbmesFloatField;
    pnlToggleInvestmentValueDiffsRight: TPanel;
    gbSpecModelVariants: TGroupBox;
    frSpecModelVariants: TDualGridFrame;
    tlbSetIsEstVariant: TToolBar;
    sepBeforeSetIsEstVariant: TToolButton;
    actSetIsEstVariant: TAction;
    btnSetIsEstVariant: TSpeedButton;
    cdsProdPerSpecModelVariantsClone: TAbmesClientDataSet;
    cdsProdPerSpecModelVariantsCloneSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsProdPerSpecModelVariantsCloneMAIN_DEPT_CODE: TAbmesFloatField;
    cdsProdPerSpecModelVariantsCloneMIN_TECH_QUANTITY: TAbmesFloatField;
    cdsProdPerSpecModelVariantsCloneMAX_TECH_QUANTITY: TAbmesFloatField;
    lblSaleStore: TLabel;
    lblDeliveryStore: TLabel;
    btnInvestedValuesGraph: TBitBtn;
    btnSpecInvestedValueLevelsGraph: TBitBtn;
    pnlTogglePrecisionLevel: TPanel;
    pnlOverriddenPrecisionLevel: TPanel;
    cbPrecisionLevel: TJvDBLookupCombo;
    pnlInheritedPrecisionLevel: TPanel;
    edtInheritedPrecisionLevel: TDBEdit;
    actTogglePrecisionLevel: TAction;
    pnlToggleBalanceQuantity: TPanel;
    pnlOverriddenBalanceQuantity: TPanel;
    edtBalanceQuantity: TDBEdit;
    pnlInheritedBalanceQuantity: TPanel;
    edtInheritedBalanceQuantity: TDBEdit;
    actToggleBalanceQuantity: TAction;
    pnlToggleIsPsdPriceFromDelivery: TPanel;
    pnlOverriddenIsPsdPriceFromDelivery: TPanel;
    pnlInheritedIsPsdPriceFromDelivery: TPanel;
    edtInheritedIsPsdPriceFromDelivery: TDBEdit;
    actIsPsdPriceFromDelivery: TAction;
    cbIsPsdPriceFromDelivery: TJvDBComboBox;
    pnlToggleSaleAcquirePrice: TPanel;
    pnlInheritedSaleAcquirePrice: TPanel;
    edtInheritedSaleAcquireSinglePrice: TDBEdit;
    edtInheritedSaleAcquireCurrency: TDBEdit;
    pnlOverriddenSaleAcquirePrice: TPanel;
    edtSaleAcquireSinglePrice: TDBEdit;
    cbSaleAcquireCurrency: TJvDBLookupCombo;
    actToggleSaleAcquirePrice: TAction;
    pnlToggleDeliveryAcquirePrice: TPanel;
    pnlInheritedDeliveryAcquirePrice: TPanel;
    edtInheritedDeliveryAcquireSinglePrice: TDBEdit;
    edtInheritedDeliveryAcquireCurrency: TDBEdit;
    pnlOverriddenDeliveryAcquirePrice: TPanel;
    edtDeliveryAcquireSinglePrice: TDBEdit;
    cbDeliveryAcquireCurrency: TJvDBLookupCombo;
    actToggleDeliveryAcquirePrice: TAction;
    pnlToggleSaleLeasePrice: TPanel;
    pnlOverriddenSaleLeasePrice: TPanel;
    edtSaleLeaseSinglePrice: TDBEdit;
    cbSaleLeaseCurrency: TJvDBLookupCombo;
    cbSaleLeaseDateUnit: TJvDBLookupCombo;
    pnlInheritedSaleLeasePrice: TPanel;
    edtInheritedSaleLeaseSinglePrice: TDBEdit;
    edtInheritedSaleLeaseCurrency: TDBEdit;
    edtInheritedSaleLeaseDateUnit: TDBEdit;
    actToggleSaleLeasePrice: TAction;
    pnlToggleDeliveryLeasePrice: TPanel;
    pnlOverriddenDeliveryLeasePrice: TPanel;
    edtDeliveryLeaseSinglePrice: TDBEdit;
    cbDeliveryLeaseCurrency: TJvDBLookupCombo;
    cbDeliveryLeaseDateUnit: TJvDBLookupCombo;
    pnlInheritedDeliveryLeasePrice: TPanel;
    edtInheritedDeliveryLeaseSinglePrice: TDBEdit;
    edtInheritedDeliveryLeaseCurrency: TDBEdit;
    edtInheritedDeliveryLeaseDateUnit: TDBEdit;
    actToggleDeliveryLeasePrice: TAction;
    pnlToggleSaleResolveDurationDays: TPanel;
    pnlOverriddenSaleResolveDurationDays: TPanel;
    edtSaleResolveDurationDays: TDBEdit;
    pnlInheritedSaleResolveDurationDays: TPanel;
    edtInheritedSaleResolveDurationDays: TDBEdit;
    pnlToggleDeliveryResolveDurationDays: TPanel;
    pnlOverriddenDeliveryResolveDurationDays: TPanel;
    edtDeliveryResolveDurationDays: TDBEdit;
    pnlInheritedDeliveryResolveDurationDays: TPanel;
    edtInheritedDeliveryResolveDurationDays: TDBEdit;
    actToggleSaleResolveDurationDays: TAction;
    actToggleDeliveryResolveDurationDays: TAction;
    pnlToggleSaleStore: TPanel;
    pnlInheritedSaleStore: TPanel;
    pnlOverriddenSaleStore: TPanel;
    frSaleStore: TfrDeptFieldEditFrameBald;
    actToggleSaleStore: TAction;
    pnlToggleDeliveryStore: TPanel;
    pnlInheritedDeliveryStore: TPanel;
    pnlOverriddenDeliveryStore: TPanel;
    frDeliveryStore: TfrDeptFieldEditFrameBald;
    frInheritedSaleStore: TfrDeptFieldEditFrameBald;
    frInheritedDeliveryStore: TfrDeptFieldEditFrameBald;
    actToggleDeliveryStore: TAction;
    pnlToggleInvestmentLevel6Value: TPanel;
    pnlOverriddenInvestmentLevel6Value: TPanel;
    edtInvestmentLevel6Value: TDBEdit;
    pnlInheritedInvestmentLevel6Value: TPanel;
    edtInheritedInvestmentLevel6Value: TDBEdit;
    pnlToggleInvestmentLevel5Value: TPanel;
    pnlOverriddenInvestmentLevel5Value: TPanel;
    edtInvestmentLevel5Value: TDBEdit;
    pnlInheritedInvestmentLevel5Value: TPanel;
    edtInheritedInvestmentLevel5Value: TDBEdit;
    pnlToggleInvestmentLevel4Value: TPanel;
    pnlOverriddenInvestmentLevel4Value: TPanel;
    edtInvestmentLevel4Value: TDBEdit;
    pnlInheritedInvestmentLevel4Value: TPanel;
    edtInheritedInvestmentLevel4Value: TDBEdit;
    pnlToggleInvestmentLevel3Value: TPanel;
    pnlOverriddenInvestmentLevel3Value: TPanel;
    edtInvestmentLevel3Value: TDBEdit;
    pnlInheritedInvestmentLevel3Value: TPanel;
    edtInheritedInvestmentLevel3Value: TDBEdit;
    pnlToggleInvestmentLevel2Value: TPanel;
    pnlOverriddenInvestmentLevel2Value: TPanel;
    edtInvestmentLevel2Value: TDBEdit;
    pnlInheritedInvestmentLevel2Value: TPanel;
    edtInheritedInvestmentLevel2Value: TDBEdit;
    pnlToggleInvestmentLevel1Value: TPanel;
    pnlOverriddenInvestmentLevel1Value: TPanel;
    edtInvestmentLevel1Value: TDBEdit;
    pnlInheritedInvestmentLevel1Value: TPanel;
    edtInheritedInvestmentLevel1Value: TDBEdit;
    actToggleInvestmentLevel1Value: TAction;
    actToggleInvestmentLevel2Value: TAction;
    actToggleInvestmentLevel3Value: TAction;
    actToggleInvestmentLevel4Value: TAction;
    actToggleInvestmentLevel5Value: TAction;
    actToggleInvestmentLevel6Value: TAction;
    pnlTogglePrecisionLevelButton: TPanel;
    btnTogglePrecisionLevel: TSpeedButton;
    pnlToggleBalanceQuantityButton: TPanel;
    pnlToggleIsPsdPriceFromDeliveryButton: TPanel;
    pnlToggleSaleAcquirePriceButton: TPanel;
    pnlToggleDeliveryAcquirePriceButton: TPanel;
    pnlToggleDeliveryLeasePriceButton: TPanel;
    pnlToggleSaleLeasePriceButton: TPanel;
    pnlToggleSaleResolveDurationDaysButton: TPanel;
    pnlToggleDeliveryResolveDurationDaysButton: TPanel;
    pnlToggleSaleStoreButton: TPanel;
    pnlToggleDeliveryStoreButton: TPanel;
    pnlToggleInvestmentLevel1ValueButton: TPanel;
    pnlToggleInvestmentLevel2ValueButton: TPanel;
    pnlToggleInvestmentLevel3ValueButton: TPanel;
    pnlToggleInvestmentLevel4ValueButton: TPanel;
    pnlToggleInvestmentLevel5ValueButton: TPanel;
    pnlToggleInvestmentLevel6ValueButton: TPanel;
    btnToggleBalanceQuantity: TSpeedButton;
    btnToggleIsPsdPriceFromDelivery: TSpeedButton;
    btnToggleSaleAcquirePrice: TSpeedButton;
    btnToggleSaleLeasePrice: TSpeedButton;
    btnToggleSaleResolveDurationDays: TSpeedButton;
    btnToggleSaleStore: TSpeedButton;
    btnToggleDeliveryAcquirePrice: TSpeedButton;
    btnToggleDeliveryLeasePrice: TSpeedButton;
    btnToggleDeliveryResolveDurationDays: TSpeedButton;
    btnToggleDeliveryStore: TSpeedButton;
    btnToggleInvestmentLevel6Value: TSpeedButton;
    btnToggleInvestmentLevel5Value: TSpeedButton;
    btnToggleInvestmentLevel4Value: TSpeedButton;
    btnToggleInvestmentLevel3Value: TSpeedButton;
    btnToggleInvestmentLevel2Value: TSpeedButton;
    btnToggleInvestmentLevel1Value: TSpeedButton;
    gbOrderQuantities: TGroupBox;
    txtMeasureAbbrev6: TDBText;
    pnlToggleMinOrderQuantity: TPanel;
    pnlOverriddenMinOrderQuantity: TPanel;
    edtMinOrderQuantity: TDBEdit;
    pnlInheritedMinOrderQuantity: TPanel;
    edtIhneritedMinOrderQuantity: TDBEdit;
    pnlToggleMinOrderQuantityButton: TPanel;
    btnToggleMinOrderQuantity: TSpeedButton;
    pnlToggleMaxOrderQuantity: TPanel;
    pnlOverriddenMaxOrderQuantity: TPanel;
    edtMaxOrderQuantity: TDBEdit;
    pnlInheritedMaxOrderQuantity: TPanel;
    edtInheritedMaxOrderQuantity: TDBEdit;
    pnlToggleMaxOrderQuantityButton: TPanel;
    btnToggleMaxOrderQuantity: TSpeedButton;
    lblMinOrderQuantity: TLabel;
    lblMaxOrderQuantity: TLabel;
    actToggleMinOrderQuantity: TAction;
    actToggleMaxOrderQuantity: TAction;
    Panel1: TPanel;
    pnlOverriddenAcquireBatchQuantity: TPanel;
    edtAcquireBatchQuantity: TDBEdit;
    pnlInheritedAcquireBatchQuantity: TPanel;
    edtInheritedAcquireBatchQuantity: TDBEdit;
    pnlToggleAcquireBatchQuantityButton: TPanel;
    btnToggleAcquireBatchQuantity: TSpeedButton;
    lblAcquireBatchQuantity: TLabel;
    actToggleAcquireBatchQuantity: TAction;
    procedure cbSaleAcquireCurrency2Change(Sender: TObject);
    procedure cbDeliveryAcquireCurrency2Change(Sender: TObject);
    procedure actToggleInvestmentValuesDiff(Sender: TObject);
    procedure edtInvestmentValueExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actWorkInvestmentValuesExecute(Sender: TObject);
    procedure actAccountInvestmentValuesExecute(Sender: TObject);
    procedure actInvestedValuesGraphExecute(Sender: TObject);
    procedure actSpecInvestedValueLevelsGraphExecute(Sender: TObject);
    procedure actInvestedValuesGraphUpdate(Sender: TObject);
    procedure actSpecInvestedValueLevelsGraphUpdate(Sender: TObject);
    procedure actToggleCommonInvestmentValuesDiffUpdate(Sender: TObject);
    procedure actToggleSaleInvestmentValuesPartUpdate(Sender: TObject);
    procedure actToggleDeliveryInvestmentValuesPartUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSetIsEstVariantUpdate(Sender: TObject);
    procedure actSetIsEstVariantExecute(Sender: TObject);
    procedure actTogglePrecisionLevelUpdate(Sender: TObject);
    procedure actTogglePrecisionLevelExecute(Sender: TObject);
    procedure actToggleBalanceQuantityUpdate(Sender: TObject);
    procedure actToggleBalanceQuantityExecute(Sender: TObject);
    procedure actIsPsdPriceFromDeliveryExecute(Sender: TObject);
    procedure actIsPsdPriceFromDeliveryUpdate(Sender: TObject);
    procedure actToggleSaleAcquirePriceExecute(Sender: TObject);
    procedure actToggleSaleAcquirePriceUpdate(Sender: TObject);
    procedure actToggleDeliveryAcquirePriceExecute(Sender: TObject);
    procedure actToggleDeliveryAcquirePriceUpdate(Sender: TObject);
    procedure actToggleSaleLeasePriceExecute(Sender: TObject);
    procedure actToggleSaleLeasePriceUpdate(Sender: TObject);
    procedure actToggleDeliveryLeasePriceExecute(Sender: TObject);
    procedure actToggleDeliveryLeasePriceUpdate(Sender: TObject);
    procedure actToggleSaleResolveDurationDaysExecute(Sender: TObject);
    procedure actToggleSaleResolveDurationDaysUpdate(Sender: TObject);
    procedure actToggleDeliveryResolveDurationDaysExecute(Sender: TObject);
    procedure actToggleDeliveryResolveDurationDaysUpdate(Sender: TObject);
    procedure actToggleSaleStoreExecute(Sender: TObject);
    procedure actToggleSaleStoreUpdate(Sender: TObject);
    procedure actToggleDeliveryStoreExecute(Sender: TObject);
    procedure actToggleDeliveryStoreUpdate(Sender: TObject);
    procedure actToggleInvestmentLevel1ValueExecute(Sender: TObject);
    procedure actToggleInvestmentLevel2ValueExecute(Sender: TObject);
    procedure actToggleInvestmentLevel3ValueExecute(Sender: TObject);
    procedure actToggleInvestmentLevel4ValueExecute(Sender: TObject);
    procedure actToggleInvestmentLevel5ValueExecute(Sender: TObject);
    procedure actToggleInvestmentLevel6ValueExecute(Sender: TObject);
    procedure actToggleInvestmentLevel1ValueUpdate(Sender: TObject);
    procedure actToggleInvestmentLevel2ValueUpdate(Sender: TObject);
    procedure actToggleInvestmentLevel3ValueUpdate(Sender: TObject);
    procedure actToggleInvestmentLevel4ValueUpdate(Sender: TObject);
    procedure actToggleInvestmentLevel5ValueUpdate(Sender: TObject);
    procedure actToggleInvestmentLevel6ValueUpdate(Sender: TObject);
    procedure actToggleMinOrderQuantityUpdate(Sender: TObject);
    procedure actToggleMaxOrderQuantityUpdate(Sender: TObject);
    procedure actToggleMinOrderQuantityExecute(Sender: TObject);
    procedure actToggleMaxOrderQuantityExecute(Sender: TObject);
    procedure actToggleAcquireBatchQuantityUpdate(Sender: TObject);
    procedure actToggleAcquireBatchQuantityExecute(Sender: TObject);
  private
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FProdPerSpecModelVariantsDataSet: TAbmesClientDataSet;
    FSavePoint: Integer;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure RefreshCalcFieldEdits;
    procedure SetInvestmentValuesDiff;
    procedure SetWorkOrAccountInvestmentValues;
    procedure CheckEstVariant;
    procedure ToggleActionUpdate(ASender: TObject; AFieldName: string;
      AButtonPanel, AOverriddenPanel, AInheritedPanel: TPanel);
    procedure ToggleActionExecute(ASender: TObject; AFieldName: string);
  protected
    class function CanUseDocs: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetOriginalFormCaption: string; override;
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
    function IsQuantityField(const AField: TAbmesFloatField): Boolean; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProdPerSpecModelVariantsDataSet: TAbmesClientDataSet = nil;
      ANotProdPerSpecModelVariantsDataSet: TAbmesClientDataSet = nil): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProdPerSpecModelVariantsDataSet: TAbmesClientDataSet = nil;
      ANotProdPerSpecModelVariantsDataSet: TAbmesClientDataSet = nil); reintroduce; virtual;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  uColorConsts, uDocUtils, uUtils, dMain, uClientUtils, fCommonGroups, StrUtils,
  fSpecification, fSpecInvestedValueLevelsGraph, uPeriods, Math,
  uProductClientUtils, AbmesDialogs, uToolbarUtils, uUserActivityConsts;

resourcestring
  SNoEstVariant = 'Не сте задали Перспективен Вариант на П-МОДЕл!';
  SConfirmation = 'Потвърдете задаването на Перспективен Вариант на П-МОДЕл!';

{$R *.dfm}

{ TfmProductPeriod }

procedure TfmProductPeriod.actAccountInvestmentValuesExecute(
  Sender: TObject);
begin
  inherited;
  SetWorkOrAccountInvestmentValues;
end;

procedure TfmProductPeriod.actFormUpdate(Sender: TObject);
var
  IsUsedBySales: Boolean;
  IsProvidedByDeliveries: Boolean;
  ro: Boolean;
  c: TColor;
begin
  inherited;

  ro:= (EditMode = emReadOnly);
  cbPrecisionLevel.ReadOnly:= ro;
  edtBalanceQuantity.ReadOnly:= ro;
  edtMinOrderQuantity.ReadOnly:= ro;
  edtMaxOrderQuantity.ReadOnly:= ro;
  edtAcquireBatchQuantity.ReadOnly:= ro;
  cbIsPsdPriceFromDelivery.ReadOnly:= ro;
  edtInvestmentLevel1Value.ReadOnly:= ro;
  edtInvestmentLevel2Value.ReadOnly:= ro;
  edtInvestmentLevel3Value.ReadOnly:= ro;
  edtInvestmentLevel4Value.ReadOnly:= ro;
  edtInvestmentLevel5Value.ReadOnly:= ro;
  edtInvestmentLevel6Value.ReadOnly:= ro;

  c:= ReadOnlyColors[ro];
  cbPrecisionLevel.Color:= c;
  edtBalanceQuantity.Color:= c;
  edtMinOrderQuantity.Color:= c;
  edtMaxOrderQuantity.Color:= c;
  edtAcquireBatchQuantity.Color:= c;
  cbIsPsdPriceFromDelivery.Color:= c;
  edtInvestmentLevel1Value.Color:= c;
  edtInvestmentLevel2Value.Color:= c;
  edtInvestmentLevel3Value.Color:= c;
  edtInvestmentLevel4Value.Color:= c;
  edtInvestmentLevel5Value.Color:= c;
  edtInvestmentLevel6Value.Color:= c;

  IsUsedBySales:= dsHeader.DataSet.FieldByName('IS_USED_BY_SALES').AsBoolean;
  IsProvidedByDeliveries:= dsHeader.DataSet.FieldByName('IS_PROVIDED_BY_DELIVERIES').AsBoolean;

  lblSaleProcessRoleNotSet.Visible:= not IsUsedBySales;
  lblDeliveryProcessRoleNotSet.Visible:= not IsProvidedByDeliveries;

  ro:= (not IsUsedBySales) or (EditMode = emReadOnly);
  edtSaleAcquireSinglePrice.ReadOnly:= ro;
  cbSaleAcquireCurrency.ReadOnly:= ro;
  edtSaleLeaseSinglePrice.ReadOnly:= ro;
  cbSaleLeaseCurrency.ReadOnly:= ro;
  cbSaleLeaseDateUnit.ReadOnly:= ro;
  edtSaleResolveDurationDays.ReadOnly:= ro;

  c:= ReadOnlyColors[ro];
  edtSaleAcquireSinglePrice.Color:= c;
  cbSaleAcquireCurrency.Color:= c;
  edtSaleLeaseSinglePrice.Color:= c;
  cbSaleLeaseCurrency.Color:= c;
  cbSaleLeaseDateUnit.Color:= c;
  edtSaleResolveDurationDays.Color:= c;

  ro:= (not IsProvidedByDeliveries) or (EditMode = emReadOnly);
  edtDeliveryAcquireSinglePrice.ReadOnly:= ro;
  cbDeliveryAcquireCurrency.ReadOnly:= ro;
  edtDeliveryLeaseSinglePrice.ReadOnly:= ro;
  cbDeliveryLeaseCurrency.ReadOnly:= ro;
  cbDeliveryLeaseDateUnit.ReadOnly:= ro;
  edtDeliveryResolveDurationDays.ReadOnly:= ro;

  c:= ReadOnlyColors[ro];
  edtDeliveryAcquireSinglePrice.Color:= c;
  cbDeliveryAcquireCurrency.Color:= c;
  edtDeliveryLeaseSinglePrice.Color:= c;
  cbDeliveryLeaseCurrency.Color:= c;
  cbDeliveryLeaseDateUnit.Color:= c;
  edtDeliveryResolveDurationDays.Color:= c;

  btnDocs.ImageIndex:= dsData.DataSet.FieldByName('HAS_DOC_ITEMS').AsInteger;

  NormalizedToolbar(tlbToggleWorkOrAccountInvestmentValues).Visible:= (FProductClass in [pcNormal, pcFinancial]);
  gbInvestmentValues.Visible:= (FProductClass in [pcNormal, pcFinancial]);
  gbSalePrices.Visible:= (FProductClass in [pcNormal, pcFinancial]);
  gbPsdFromDelivery.Visible:= (FProductClass in [pcNormal, pcFinancial]);
  frSaleStore.Visible:= (FProductClass in [pcNormal, pcFinancial]);
  frDeliveryStore.Visible:= (FProductClass in [pcNormal, pcFinancial]);
end;

procedure TfmProductPeriod.actInvestedValuesGraphExecute(Sender: TObject);
begin
  inherited;
  dmMain.LoginContext.CheckUserActivities([uaShowLevelOneInvestedValues, uaShowHighLevelInvestedValues]);

  TfmSpecification.ShowInvestedValuesGraph(nil,
    dsHeader.DataSet.FieldByName('PRODUCT_CODE').AsInteger);
end;

procedure TfmProductPeriod.actInvestedValuesGraphUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= (FProductClass = pcNormal);
end;

procedure TfmProductPeriod.actIsPsdPriceFromDeliveryExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_IS_PSD_PRICE_FROM_DLV');
end;

procedure TfmProductPeriod.actIsPsdPriceFromDeliveryUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_IS_PSD_PRICE_FROM_DLV',
    pnlToggleIsPsdPriceFromDeliveryButton, pnlOverriddenIsPsdPriceFromDelivery, pnlInheritedIsPsdPriceFromDelivery);
end;

procedure TfmProductPeriod.actSetIsEstVariantExecute(Sender: TObject);

  procedure SetIsEstVariant(AValue: Boolean);
  begin
    FProdPerSpecModelVariantsDataSet.Edit;
    try
      FProdPerSpecModelVariantsDataSet.FieldByName('IS_EST_VARIANT').AsBoolean:= AValue;
      FProdPerSpecModelVariantsDataSet.Post;
    except
      FProdPerSpecModelVariantsDataSet.Cancel;
    end;
  end;

var
  SaveRecNo: Integer;
begin
  inherited;

  if (MessageDlgEx(SConfirmation, mtConfirmation, mbOKCancel, 0) <> mrOK) then
    Exit;

  FProdPerSpecModelVariantsDataSet.DisableControls;
  try
    SaveRecNo:= FProdPerSpecModelVariantsDataSet.RecNo;
    try
      FProdPerSpecModelVariantsDataSet.First;
      while not FProdPerSpecModelVariantsDataSet.Eof do
        begin
          if FProdPerSpecModelVariantsDataSet.FieldByName('IS_EST_VARIANT').AsBoolean then
            SetIsEstVariant(False);

          FProdPerSpecModelVariantsDataSet.Next;
        end;
    finally
      FProdPerSpecModelVariantsDataSet.RecNo:= SaveRecNo;
    end;

    SetIsEstVariant(True);
  finally
    FProdPerSpecModelVariantsDataSet.EnableControls;
  end;
end;

procedure TfmProductPeriod.actSetIsEstVariantUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    Assigned(FProdPerSpecModelVariantsDataSet) and
    (not FProdPerSpecModelVariantsDataSet.IsEmpty) and
    (not FProdPerSpecModelVariantsDataSet.FieldByName('IS_EST_VARIANT').AsBoolean);
end;

procedure TfmProductPeriod.actSpecInvestedValueLevelsGraphExecute(
  Sender: TObject);
begin
  inherited;
  dmMain.LoginContext.CheckUserActivities([uaShowLevelOneInvestedValues, uaShowHighLevelInvestedValues]);

  cdsSpecInvestedValueLevelsGraphParams.CreateDataSet;
  try
    cdsSpecInvestedValueLevelsGraphParams.Append;
    try
      cdsSpecInvestedValueLevelsGraphParamsSPEC_PRODUCT_CODE.AsInteger:=
        dsHeader.DataSet.FieldByName('PRODUCT_CODE').AsInteger;
      cdsSpecInvestedValueLevelsGraphParamsMEASURE_TYPE_CODE.AsInteger:= 1;  // work measure

      cdsSpecInvestedValueLevelsGraphParamsTECH_QUANTITY.AsVariant:=
        VarMult(
          dsData.DataSet.FieldByName('BALANCE_QUANTITY').AsVariant,
          dsHeader.DataSet.FieldByName('TECH_MEASURE_COEF').AsVariant
        );

      cdsSpecInvestedValueLevelsGraphParamsCURRENCY_CODE.Assign(
        dsData.DataSet.FieldByName('SALE_ACQUIRE_CURRENCY_CODE'));

      cdsSpecInvestedValueLevelsGraphParams.Post;
    except
      cdsSpecInvestedValueLevelsGraphParams.Cancel;
      raise;
    end;

    TfmSpecInvestedValueLevelsGraph.ShowForm(nil, cdsSpecInvestedValueLevelsGraphParams, emReadOnly);
  finally
    cdsSpecInvestedValueLevelsGraphParams.Close;
  end;
end;

procedure TfmProductPeriod.actSpecInvestedValueLevelsGraphUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= (FProductClass = pcNormal);
end;

procedure TfmProductPeriod.actToggleAcquireBatchQuantityExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_ACQUIRE_BATCH_QTY');
end;

procedure TfmProductPeriod.actToggleAcquireBatchQuantityUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_ACQUIRE_BATCH_QTY',
    pnlToggleAcquireBatchQuantityButton, pnlOverriddenAcquireBatchQuantity, pnlInheritedAcquireBatchQuantity);
end;

procedure TfmProductPeriod.actToggleBalanceQuantityExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_BALANCE_QUANTITY');
end;

procedure TfmProductPeriod.actToggleBalanceQuantityUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_BALANCE_QUANTITY',
    pnlToggleBalanceQuantityButton, pnlOverriddenBalanceQuantity, pnlInheritedBalanceQuantity);
end;

procedure TfmProductPeriod.actToggleCommonInvestmentValuesDiffUpdate(
  Sender: TObject);
begin
  inherited;
  btnToggleCommonInvestmentValuesDiff.Down:= (Sender as TAction).Checked;
  (Sender as TAction).Visible:=
    (FProductClass in [pcNormal, pcFinancial]);
  sepToggleSaleInvestmentValuesPart.Visible:= (Sender as TAction).Visible;
end;

procedure TfmProductPeriod.actToggleDeliveryAcquirePriceExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_D_ACQUIRE_PRICE');
end;

procedure TfmProductPeriod.actToggleDeliveryAcquirePriceUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_D_ACQUIRE_PRICE',
    pnlToggleDeliveryAcquirePriceButton, pnlOverriddenDeliveryAcquirePrice, pnlInheritedDeliveryAcquirePrice);
end;

procedure TfmProductPeriod.actToggleDeliveryInvestmentValuesPartUpdate(
  Sender: TObject);
begin
  inherited;
  btnToggleDeliveryInvestmentValuesPart.Down:= (Sender as TAction).Checked;
end;

procedure TfmProductPeriod.actToggleDeliveryLeasePriceExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_D_LEASE_PRICE');
end;

procedure TfmProductPeriod.actToggleDeliveryLeasePriceUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_D_LEASE_PRICE',
    pnlToggleDeliveryLeasePriceButton, pnlOverriddenDeliveryLeasePrice, pnlInheritedDeliveryLeasePrice);
end;

procedure TfmProductPeriod.actToggleDeliveryResolveDurationDaysExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_D_RESOLVE_DUR_DAYS');
end;

procedure TfmProductPeriod.actToggleDeliveryResolveDurationDaysUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_D_RESOLVE_DUR_DAYS',
    pnlToggleDeliveryResolveDurationDaysButton, pnlOverriddenDeliveryResolveDurationDays, pnlInheritedDeliveryResolveDurationDays);
end;

procedure TfmProductPeriod.actToggleDeliveryStoreExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_D_STORE');
end;

procedure TfmProductPeriod.actToggleDeliveryStoreUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_D_STORE',
    pnlToggleDeliveryStoreButton, pnlOverriddenDeliveryStore, pnlInheritedDeliveryStore);
end;

procedure TfmProductPeriod.actToggleInvestmentLevel1ValueExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_INV_LEVEL_1_VALUE');
end;

procedure TfmProductPeriod.actToggleInvestmentLevel1ValueUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_INV_LEVEL_1_VALUE',
    pnlToggleInvestmentLevel1ValueButton, pnlOverriddenInvestmentLevel1Value, pnlInheritedInvestmentLevel1Value);
end;

procedure TfmProductPeriod.actToggleInvestmentLevel2ValueExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_INV_LEVEL_2_VALUE');
end;

procedure TfmProductPeriod.actToggleInvestmentLevel2ValueUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_INV_LEVEL_2_VALUE',
    pnlToggleInvestmentLevel2ValueButton, pnlOverriddenInvestmentLevel2Value, pnlInheritedInvestmentLevel2Value);
end;

procedure TfmProductPeriod.actToggleInvestmentLevel3ValueExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_INV_LEVEL_3_VALUE');
end;

procedure TfmProductPeriod.actToggleInvestmentLevel3ValueUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_INV_LEVEL_3_VALUE',
    pnlToggleInvestmentLevel3ValueButton, pnlOverriddenInvestmentLevel3Value, pnlInheritedInvestmentLevel3Value);
end;

procedure TfmProductPeriod.actToggleInvestmentLevel4ValueExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_INV_LEVEL_4_VALUE');
end;

procedure TfmProductPeriod.actToggleInvestmentLevel4ValueUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_INV_LEVEL_4_VALUE',
    pnlToggleInvestmentLevel4ValueButton, pnlOverriddenInvestmentLevel4Value, pnlInheritedInvestmentLevel4Value);
end;

procedure TfmProductPeriod.actToggleInvestmentLevel5ValueExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_INV_LEVEL_5_VALUE');
end;

procedure TfmProductPeriod.actToggleInvestmentLevel5ValueUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_INV_LEVEL_5_VALUE',
    pnlToggleInvestmentLevel5ValueButton, pnlOverriddenInvestmentLevel5Value, pnlInheritedInvestmentLevel5Value);
end;

procedure TfmProductPeriod.actToggleInvestmentLevel6ValueExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_INV_LEVEL_6_VALUE');
end;

procedure TfmProductPeriod.actToggleInvestmentLevel6ValueUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_INV_LEVEL_6_VALUE',
    pnlToggleInvestmentLevel6ValueButton, pnlOverriddenInvestmentLevel6Value, pnlInheritedInvestmentLevel6Value);
end;

procedure TfmProductPeriod.actToggleInvestmentValuesDiff(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Checked:= True;
  (Sender as TAction).Update;
  SetInvestmentValuesDiff;
end;

procedure TfmProductPeriod.actToggleMaxOrderQuantityExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_MAX_ORDER_QUANTITY');
end;

procedure TfmProductPeriod.actToggleMaxOrderQuantityUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_MAX_ORDER_QUANTITY',
    pnlToggleMaxOrderQuantityButton, pnlOverriddenMaxOrderQuantity, pnlInheritedMaxOrderQuantity);
end;

procedure TfmProductPeriod.actToggleMinOrderQuantityExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_MIN_ORDER_QUANTITY');
end;

procedure TfmProductPeriod.actToggleMinOrderQuantityUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_MIN_ORDER_QUANTITY',
    pnlToggleMinOrderQuantityButton, pnlOverriddenMinOrderQuantity, pnlInheritedMinOrderQuantity);
end;

procedure TfmProductPeriod.actTogglePrecisionLevelExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_PRECISION_LEVEL');
end;

procedure TfmProductPeriod.actTogglePrecisionLevelUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_PRECISION_LEVEL',
    pnlTogglePrecisionLevelButton, pnlOverriddenPrecisionLevel, pnlInheritedPrecisionLevel);
end;

procedure TfmProductPeriod.actToggleSaleAcquirePriceExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_S_ACQUIRE_PRICE');
end;

procedure TfmProductPeriod.actToggleSaleAcquirePriceUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_S_ACQUIRE_PRICE',
    pnlToggleSaleAcquirePriceButton, pnlOverriddenSaleAcquirePrice, pnlInheritedSaleAcquirePrice);
end;

procedure TfmProductPeriod.actToggleSaleInvestmentValuesPartUpdate(
  Sender: TObject);
begin
  inherited;
  btnToggleSaleInvestmentValuesPart.Down:= (Sender as TAction).Checked;
end;

procedure TfmProductPeriod.actToggleSaleLeasePriceExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_S_LEASE_PRICE');
end;

procedure TfmProductPeriod.actToggleSaleLeasePriceUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_S_LEASE_PRICE',
    pnlToggleSaleLeasePriceButton, pnlOverriddenSaleLeasePrice, pnlInheritedSaleLeasePrice);
end;

procedure TfmProductPeriod.actToggleSaleResolveDurationDaysExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_S_RESOLVE_DUR_DAYS');
end;

procedure TfmProductPeriod.actToggleSaleResolveDurationDaysUpdate(
  Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_S_RESOLVE_DUR_DAYS',
    pnlToggleSaleResolveDurationDaysButton, pnlOverriddenSaleResolveDurationDays, pnlInheritedSaleResolveDurationDays);
end;

procedure TfmProductPeriod.actToggleSaleStoreExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_S_STORE');
end;

procedure TfmProductPeriod.actToggleSaleStoreUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_S_STORE',
    pnlToggleSaleStoreButton, pnlOverriddenSaleStore, pnlInheritedSaleStore);
end;

procedure TfmProductPeriod.actWorkInvestmentValuesExecute(Sender: TObject);
begin
  inherited;
  SetWorkOrAccountInvestmentValues;
end;

procedure TfmProductPeriod.btnDocsClick(Sender: TObject);
begin
  inherited;

  if (EditMode <> emReadOnly) then
    CheckEditMode(dsData.DataSet);

  dmDocClient.DSOpenDoc(EditMode, btnDocs, dotProductPeriod, dsData.DataSet);
end;

class function TfmProductPeriod.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmProductPeriod.cbDeliveryAcquireCurrency2Change(
  Sender: TObject);
begin
  inherited;
  SetInvestmentValuesDiff;
end;

procedure TfmProductPeriod.cbSaleAcquireCurrency2Change(Sender: TObject);
begin
  inherited;
  SetInvestmentValuesDiff;
end;

procedure TfmProductPeriod.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(dsData.DataSet.FieldByName('HAS_DOC_ITEMS'));
end;

procedure TfmProductPeriod.DoApplyUpdates;
begin
  CheckEstVariant;
  inherited;
end;

procedure TfmProductPeriod.DoCancelUpdates;
begin
  inherited;
  if (FSavePoint > 0) then
    (dsData.DataSet as TClientDataSet).SavePoint:= FSavePoint;
end;

procedure TfmProductPeriod.edtInvestmentValueExit(Sender: TObject);
begin
  inherited;
  RefreshCalcFieldEdits;
end;

procedure TfmProductPeriod.FormCreate(Sender: TObject);

  procedure SetBaseCurrencyLabel(ALabel: TLabel);
  begin
    ALabel.Caption:= FormatBaseCurrencyAbbrevString(ALabel.Caption);
  end;

var
  InvestmentLevel: Integer;
begin
  inherited;

  frSaleStore.FieldNames:= 'SALE_STORE_CODE';
  frSaleStore.SelectStore:= True;
  frInheritedSaleStore.FieldNames:= 'INHRT_S_STORE_CODE';
  frInheritedSaleStore.SelectStore:= True;
  frDeliveryStore.FieldNames:= 'DELIVERY_STORE_CODE';
  frDeliveryStore.SelectStore:= True;
  frInheritedDeliveryStore.FieldNames:= 'INHRT_D_STORE_CODE';
  frInheritedDeliveryStore.SelectStore:= True;

  for InvestmentLevel:= 1 to MaxInvestmentLevel do
    SetBaseCurrencyLabel(FindComponent(Format('lblBaseCurrency%d', [InvestmentLevel])) as TLabel);
  SetBaseCurrencyLabel(lblBaseCurrency20);
  SetBaseCurrencyLabel(lblBaseCurrency30);

  SetInvestmentValuesDiff;
end;

procedure TfmProductPeriod.FormShow(Sender: TObject);
begin
  inherited;
  actForm.Update;
end;

function TfmProductPeriod.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmProductPeriod.Initialize;
var
  MsgParams: TStrings;
begin
  dsHeader.DataSet:= (dsData.DataSet as TClientDataSet).DataSetField.DataSet;

  inherited;

  if (EditMode = emEdit) then
    FSavePoint:= (dsData.DataSet as TClientDataSet).SavePoint
  else
    FSavePoint:= 0;

  FProductClass:= IntToProductClass(dsHeader.DataSet.FieldByName('PRODUCT_CLASS_CODE').AsInteger);

  frProduct.SetDataSet(dsHeader.DataSet);
  frProduct.ProductClass:= FProductClass;
  frProduct.DocButtonVisible:= True;
  frProduct.SpecStateVisible:= True;
  frProduct.PriorityVisible:= (FProductClass in [pcNormal, pcFinancial]);
  frProduct.PartnerProductNamesVisible:= False;
  frProduct.ProductPeriodsButtonVisible:= False;
  frProduct.MeasureVisible:= False;
  frProduct.AccountMeasureVisible:= False;
  frProduct.CommonStatusVisible:= (FProductClass in [pcNormal, pcFinancial]);
  frProduct.ProductOriginVisible:= (FProductClass in [pcNormal, pcFinancial]);
  frProduct.SpecificationButtonVisible:= (FProductClass = pcNormal);
  frProduct.SpecDocStatusButtonVisible:= (FProductClass = pcNormal);
  frProduct.CommonGroupsButtonVisible:= (FProductClass in [pcNormal, pcFinancial]);

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  SetWorkOrAccountInvestmentValues;

  frProduct.SpecStateVisible:= (FProductClass = pcNormal);

  MsgParams:=
    CreateCommonMsgParams(
      LoginContext,
      FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;

  // towa tuk e weroqtno zabraweno - shtoto za budgetnite nqma miuob
  if (FProductClass = pcBudget) then
    begin
//      actToggleSaleInvestmentValuesPart.Execute;
      gbDeliveryPrices.Top:= gbInvestmentValues.Top;
      Height:= 288;
    end;
end;

function TfmProductPeriod.IsQuantityField(
  const AField: TAbmesFloatField): Boolean;
begin
  Result:= False;
end;

procedure TfmProductPeriod.RefreshCalcFieldEdits;
begin
  RefreshDBEdit(edtInvestmentLevel1Diff);
  RefreshDBEdit(edtInvestmentLevel2Diff);
  RefreshDBEdit(edtInvestmentLevel3Diff);
  RefreshDBEdit(edtInvestmentLevel4Diff);
  RefreshDBEdit(edtInvestmentLevel5Diff);
  RefreshDBEdit(edtInvestmentLevel6Diff);
  RefreshDBEdit(edtAggrInvestmentLevel2Value);
  RefreshDBEdit(edtAggrInvestmentLevel3Value);
  RefreshDBEdit(edtAggrInvestmentLevel4Value);
  RefreshDBEdit(edtAggrInvestmentLevel5Value);
  RefreshDBEdit(edtAggrInvestmentLevel6Value);
  RefreshDBEdit(edtFullInvestmentLevel1Value);
  RefreshDBEdit(edtFullInvestmentLevel2Value);
  RefreshDBEdit(edtFullInvestmentLevel3Value);
  RefreshDBEdit(edtFullInvestmentLevel4Value);
  RefreshDBEdit(edtFullInvestmentLevel5Value);
  RefreshDBEdit(edtFullInvestmentLevel6Value);
end;

procedure TfmProductPeriod.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmProductPeriod.CheckEstVariant;
begin
  if (FProdPerSpecModelVariantsDataSet.RecordCount > 0) and
     (VarToInt(FProdPerSpecModelVariantsDataSet.FieldByName('_MAX_IS_EST_VARIANT').AsVariant) = 0) then
    begin
      ActiveControl:= frSpecModelVariants.grdIncluded;
      raise Exception.Create(SNoEstVariant);
    end;
end;

procedure TfmProductPeriod.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProdPerSpecModelVariantsDataSet, ANotProdPerSpecModelVariantsDataSet: TAbmesClientDataSet);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  frSpecModelVariants.dsData.DataSet:= AProdPerSpecModelVariantsDataSet;
  frSpecModelVariants.dsExcluded.DataSet:= ANotProdPerSpecModelVariantsDataSet;
  FProdPerSpecModelVariantsDataSet:= AProdPerSpecModelVariantsDataSet;
end;

procedure TfmProductPeriod.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProduct) or
     (AFrame = frInheritedSaleStore) or
     (AFrame = frInheritedDeliveryStore) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  if (AFrame = frSaleStore) then
    begin
      AFrame.ReadOnly:=
        (EditMode = emReadOnly) or
        not dsHeader.DataSet.FieldByName('IS_USED_BY_SALES').AsBoolean;
      Exit;
    end;  { if }

  if (AFrame = frDeliveryStore) then
    begin
      AFrame.ReadOnly:=
        (EditMode = emReadOnly) or
        not dsHeader.DataSet.FieldByName('IS_PROVIDED_BY_DELIVERIES').AsBoolean;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmProductPeriod.SetInvestmentValuesDiff;
var
  FieldNameFormat: string;
  InvestmentLevel: Integer;
  edt: TDBEdit;
begin
  if actToggleCommonInvestmentValuesDiff.Checked then
    FieldNameFormat:= '_CMMN_INVESTMENT_LEVEL_%d_DIFF';
  if actToggleSaleInvestmentValuesPart.Checked then
    FieldNameFormat:= '_SALE_INVESTMENT_LEVEL_%d_PART';
  if actToggleDeliveryInvestmentValuesPart.Checked then
    FieldNameFormat:= '_DLVR_INVESTMENT_LEVEL_%d_PART';

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

procedure TfmProductPeriod.SetWorkOrAccountInvestmentValues;
var
  DBEdits: array of TDBEdit;
  MeasureDBTexts: array of TDBText;

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
  AddDBEdits([
    edtBalanceQuantity,
    edtMinOrderQuantity,
    edtMaxOrderQuantity,
    edtAcquireBatchQuantity,
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
    edtAggrInvestmentLevel6Value,
    edtSaleAcquireSinglePrice,
    edtSaleLeaseSinglePrice,
    edtDeliveryAcquireSinglePrice,
    edtDeliveryLeaseSinglePrice
  ]);

  for e in DBEdits do
    if EndsText('_VALUE', e.DataField) or
       EndsText('_PRICE', e.DataField) or
       EndsText('_QUANTITY', e.DataField) then
    begin
      FieldName:= e.DataField;

      FieldName:= StringReplace(FieldName, '_ACC', '', []);
      FieldName:= StringReplace(FieldName, 'ACC_', '', []);
      FieldName:= StringReplace(FieldName, 'DLVRY_', 'DELIVERY_', []);

      Assert(FieldName <> '');

      if actAccountInvestmentValues.Checked then
        begin
          if (FieldName[1] = '_') then
            FieldName:= '_ACC' + FieldName
          else
            FieldName:= 'ACC_' + FieldName;

          FieldName:= StringReplace(FieldName, 'DELIVERY_', 'DLVRY_', []);
        end;

      if FieldName.Contains('_QUANTITY') and
         (e.DataSource.DataSet.FindField(FieldName) = nil) then
        FieldName:= StringReplace(FieldName, '_QUANTITY', '_QTY', []);

      if (FieldName <> e.DataField) then
        begin
          e.DataField:= FieldName;
          RefreshDBEdit(e);
        end;
    end;

  AddMeasureDBTexts([
    txtMeasureAbbrev1,
    txtMeasureAbbrev2,
    txtMeasureAbbrev3,
    txtMeasureAbbrev4,
    txtMeasureAbbrev5,
    txtMeasureAbbrev6,
    txtMeasureAbbrev11,
    txtMeasureAbbrev12,
    txtMeasureAbbrev13,
    txtMeasureAbbrev14,
    txtMeasureAbbrev15,
    txtMeasureAbbrev16,
    txtMeasureAbbrev20,
    txtMeasureAbbrev30
  ]);

  for txt in MeasureDBTexts do
    if actAccountInvestmentValues.Checked then
      txt.DataField:= 'ACCOUNT_MEASURE_ABBREV'
    else
      txt.DataField:= 'MEASURE_ABBREV';
end;

class function TfmProductPeriod.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProdPerSpecModelVariantsDataSet, ANotProdPerSpecModelVariantsDataSet: TAbmesClientDataSet): Boolean;
var
  f: TfmProductPeriod;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
      AProdPerSpecModelVariantsDataSet, ANotProdPerSpecModelVariantsDataSet);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmProductPeriod.ToggleActionExecute(ASender: TObject;
  AFieldName: string);
begin
  CheckEditMode(dsData.DataSet);
  with dsData.DataSet.FieldByName(AFieldName) do
    AsBoolean:= not AsBoolean;

  (ASender as TAction).Update;
  SelectNext(((ASender as TAction).ActionComponent as TSpeedButton).Parent.Parent, True, True);
end;

procedure TfmProductPeriod.ToggleActionUpdate(ASender: TObject; AFieldName: string;
  AButtonPanel, AOverriddenPanel, AInheritedPanel: TPanel);
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
