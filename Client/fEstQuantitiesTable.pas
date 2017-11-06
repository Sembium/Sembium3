unit fEstQuantitiesTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, dDocClient, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, Menus, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateIntervalFrame, PrnDbgeh, uParRelProducts, uProducts, uClientTypes,
  uBorderRelTypes, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TSetVisibleColumnsAfterOperation = (
    svcaoInitialize,
    svcaoTogglePartnerProductNames,
    svcaoToggleMeasure,
    svcaoShowHideRepeatableColumn
  );

type
  TfmEstQuantitiesTable = class(TGridForm)
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDATE_UNIT_CODE: TAbmesFloatField;
    pdsGridDataParamsDATE_UNIT_COUNT: TAbmesFloatField;
    actWorkMeasure: TAction;
    actAccountMeasure: TAction;
    tlbToggles: TToolBar;
    sepWorkMeasure: TToolButton;
    actPartnerProductNames: TAction;
    actInQuantities: TAction;
    actOutQuantities: TAction;
    actTotalQuantity: TAction;
    actTotalPrice: TAction;
    actDeficitQuantity: TAction;
    actDeficitPrice: TAction;
    actPassiveQuantity: TAction;
    actPassivePrice: TAction;
    btnPassivePrice: TToolButton;
    btnDeficitPrice: TToolButton;
    sepPartnerProductNames: TToolButton;
    btnInQuantities: TSpeedButton;
    btnOutQuantities: TSpeedButton;
    sepDeficitQuantity: TToolButton;
    sepPassiveQuantity: TToolButton;
    tlbTopButtons: TToolBar;
    sepCopy: TToolButton;
    btnCopy: TToolButton;
    actCopyToClipboard: TAction;
    actCopyNameToClipboard: TAction;
    actCopyNoToClipboard: TAction;
    pmCopy: TPopupMenu;
    miCopyNoToClipboard: TMenuItem;
    miCopyNameToClipboard: TMenuItem;
    tlbProductDocs: TToolBar;
    sepProductDocs: TToolButton;
    pnlProductDocs: TPanel;
    btnProductDocs: TToolButton;
    actProductDocs: TAction;
    pnlHeader: TPanel;
    lblProduct: TLabel;
    lblDateUnit: TLabel;
    lblDateUnitCount: TLabel;
    pnlDateUnit: TPanel;
    pnlDateUnitCount: TPanel;
    pnlProductOuter: TPanel;
    pnlProduct: TPanel;
    pnlHeaderSeparator: TPanel;
    pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParams_PRODUCT_NO: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    tlbFilterProductDocs: TToolBar;
    btnFilterProductDocs: TToolButton;
    actFilterProductDocs: TAction;
    frDateInterval: TfrDateIntervalFrame;
    lblDatePeriod: TLabel;
    pdsGridDataParamsIN_QUANTITIES: TAbmesFloatField;
    pdsGridDataParamsOUT_QUANTITIES: TAbmesFloatField;
    pgdData: TPrintDBGridEh;
    cdsParRelProductsParams: TAbmesClientDataSet;
    cdsParRelProductsParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsParRelProductsParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsParRelProductsParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsParRelProductsParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    lblCurrency: TLabel;
    cdsParRelProductsParamsMATERIAL_CODE: TAbmesFloatField;
    actInPrices: TAction;
    actOutPrices: TAction;
    sepOutQuantities: TToolButton;
    btnInPrices: TToolButton;
    btnOutPrices: TToolButton;
    pdsGridDataParamsDEFICIT: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_CODE: TAbmesFloatField;
    actClientProductParRelProducts: TAction;
    actVendorProductParRelProducts: TAction;
    actClientPartnerParRelProducts: TAction;
    actVendorPartnerParRelProducts: TAction;
    pmClientParRelProducts: TPopupMenu;
    pmVendorParRelProducts: TPopupMenu;
    miClientProductParRelProducts: TMenuItem;
    miClientPartnerParRelProducts: TMenuItem;
    miVendorProductParRelProducts: TMenuItem;
    miVendorPartnerParRelProducts: TMenuItem;
    btnClientParRelProducts: TBitBtn;
    btnVendorParRelProducts: TBitBtn;
    actClientParRelProducts: TAction;
    actVendorParRelProducts: TAction;
    pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField;
    btnTotalPrice: TToolButton;
    ToolButton1: TToolButton;
    btnTotalQuantity: TSpeedButton;
    btnDeficitQuantity: TSpeedButton;
    btnPassiveQuantity: TSpeedButton;
    btnAccountMeasure: TSpeedButton;
    btnWorkMeasure: TSpeedButton;
    btnPartnerProductNames: TSpeedButton;
    pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    cdsParRelProductsParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    cdsParRelProductsParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    actInDetails: TAction;
    actOutDetails: TAction;
    btnInDetails: TSpeedButton;
    btnOutDetails: TSpeedButton;
    pdsGridDataParamsPRODUCT_CLASS_CODE: TAbmesFloatField;
    pdsGridDataParamsBASE_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsINCLUDE_PROJECT_QUANTITIES: TAbmesFloatField;
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure actWorkMeasureExecute(Sender: TObject);
    procedure actAccountMeasureExecute(Sender: TObject);
    procedure actPartnerProductNamesExecute(Sender: TObject);
    procedure actInQuantitiesExecute(Sender: TObject);
    procedure actOutQuantitiesExecute(Sender: TObject);
    procedure actTotalQuantityExecute(Sender: TObject);
    procedure actTotalPriceExecute(Sender: TObject);
    procedure actDeficitQuantityExecute(Sender: TObject);
    procedure actDeficitPriceExecute(Sender: TObject);
    procedure actPassiveQuantityExecute(Sender: TObject);
    procedure actPassivePriceExecute(Sender: TObject);
    procedure actCopyToClipboardUpdate(Sender: TObject);
    procedure actCopyToClipboardExecute(Sender: TObject);
    procedure actCopyNameToClipboardExecute(Sender: TObject);
    procedure actCopyNoToClipboardExecute(Sender: TObject);
    procedure actProductDocsUpdate(Sender: TObject);
    procedure actProductDocsExecute(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsCHOSEN_PRODUCTSChange(Sender: TField);
    procedure actFilterProductDocsUpdate(Sender: TObject);
    procedure actFilterProductDocsExecute(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actPrintExecute(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure actInPricesExecute(Sender: TObject);
    procedure actOutPricesExecute(Sender: TObject);
    procedure actClientProductParRelProductsExecute(Sender: TObject);
    procedure actVendorProductParRelProductsExecute(Sender: TObject);
    procedure actClientPartnerParRelProductsExecute(Sender: TObject);
    procedure actVendorPartnerParRelProductsExecute(Sender: TObject);
    procedure actClientParRelProductsExecute(Sender: TObject);
    procedure actVendorParRelProductsExecute(Sender: TObject);
    procedure actClientParRelProductsUpdate(Sender: TObject);
    procedure actVendorParRelProductsUpdate(Sender: TObject);
    procedure actClientProductParRelProductsUpdate(Sender: TObject);
    procedure actVendorProductParRelProductsUpdate(Sender: TObject);
    procedure actClientPartnerParRelProductsUpdate(Sender: TObject);
    procedure actVendorPartnerParRelProductsUpdate(Sender: TObject);
    procedure actPartnerProductNamesUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actWorkMeasureUpdate(Sender: TObject);
    procedure actAccountMeasureUpdate(Sender: TObject);
    procedure actInQuantitiesUpdate(Sender: TObject);
    procedure actInPricesUpdate(Sender: TObject);
    procedure actOutQuantitiesUpdate(Sender: TObject);
    procedure actOutPricesUpdate(Sender: TObject);
    procedure actTotalQuantityUpdate(Sender: TObject);
    procedure actTotalPriceUpdate(Sender: TObject);
    procedure actDeficitQuantityUpdate(Sender: TObject);
    procedure actDeficitPriceUpdate(Sender: TObject);
    procedure actPassiveQuantityUpdate(Sender: TObject);
    procedure actPassivePriceUpdate(Sender: TObject);
    procedure PricesActionsUpdate(Sender: TObject);
    procedure actInDetailsUpdate(Sender: TObject);
    procedure actOutDetailsUpdate(Sender: TObject);
    procedure actInDetailsExecute(Sender: TObject);
    procedure actOutDetailsExecute(Sender: TObject);
    procedure pdsGridDataParamsBEGIN_DATEChange(Sender: TField);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FShowHideColumnActions: array of TAction;
    cdsGridDataPRODUCT_HAS_DOC_ITEMS: TField;
    procedure InitializeFields;
    procedure InitializeColumns;
    function GetRepeatableColumnNo(const FieldName: string): Integer;
    function RepeatableColumnVisible(const FieldName: string): Boolean;
    procedure SetVisibleColumns(AfterOperation: TSetVisibleColumnsAfterOperation);
    function DateUnitAsString(ADateUnitNo: Integer): string;
    procedure InitalizeShowHideColumnActionsArray;
    function ShowHideColumnActionEnabled(Action: TAction): Boolean;
    procedure ChosenProductsChange;
    procedure UpdateHeader;
    procedure ShowParRelProducts(BorderRelType: TBorderRelType;
      ParRelProductsOrientation: TParRelProductsOrientation);
    function ClientParRelProductsActionEnabled: Boolean;
    function VendorParRelProductsActionEnabled: Boolean;
  protected
    class function CanUseDocs: Boolean; override;
    function GetOriginalFormCaption: string; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function ShowFilterForm: Boolean; override;
    function IsQuantityField(const AField: TAbmesFloatField): Boolean; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
      AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
      AProductClass: TProductClass): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
      AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
      AProductClass: TProductClass); reintroduce; virtual;

    procedure Initialize; override;
  end;

implementation

uses
  dMain, uPeriods, uXMLUtils, uClientPeriods, JclStrings, StrUtils,
  uColorConsts, uClientUtils, Math, uDocUtils, Clipbrd, uClientApp,
  uTreeClientUtils, uUtils, fEstQuantitiesTableFilter, rBaseReport, Printers,
  PrViewEh, fParRelProducts, uProductionOrderTypes, fDBDataForm,
  fEstQuantitiesFilterAbstract, uProductClientUtils, uClientDateTime,
  fEditForm, uDependantField, PrvFrmEh, uScalingUtils, uAbmesDBGridHelpers;

{$R *.dfm}

resourcestring
  SProductNameCaption = '%ProductClassName%|id логически';
  SProductNoCaption = '%ProductClassName%|id цифров';
  SPartnerProductNamesCaption = '%ProductClassName%|Означения от партньори';
  SMeasureAbbrevCaption = 'Раб. м.ед.';
  SAccountMeasureAbbrevCaption = 'Счет. м.ед.';
  SInSaleCoverQuantityCaption = '%s|Постъпл.|ПДП|К-во';
  SInSaleCoverPriceCaption = '%s|Постъпл.|ПДП|ВС1';
  SInEnvCoverQuantityCaption = '%s|Постъпл.|ПДС|К-во';
  SInEnvCoverPriceCaption = '%s|Постъпл.|ПДС|ВС1';
  SInConsignQuantityCaption = '%s|Постъпл.|ВДП|К-во';
  SInConsignPriceCaption = '%s|Постъпл.|ВДП|ВС1';
  SInModelQuantityCaption = '%s|Постъпл.|ВО ИИР|К-во';
  SInModelPriceCaption = '%s|Постъпл.|ВО ИИР|ВС1';
  SInTotalQuantityCaption = '%s|Постъпл.|Общо|К-во';
  SInTotalPriceCaption = '%s|Постъпл.|Общо|ВС1';
  SOutSaleAcquireQuantityCaption = '%s|Тегл.|ИИР ПП|К-во';
  SOutSaleAcquirePriceCaption = '%s|Тегл.|ИИР ПП|ВС1';
  SOutSaleConsignQuantityCaption = '%s|Тегл.|ИИР ИП|К-во';
  SOutSaleConsignPriceCaption = '%s|Тегл.|ИИР ИП|ВС1';
  SOutSpecAcquireQuantityCaption = '%s|Тегл.|НСЧ ПП|К-во';
  SOutSpecAcquirePriceCaption = '%s|Тегл.|НСЧ ПП|ВС1';
  SOutSpecConsignQuantityCaption = '%s|Тегл.|НСЧ ИП|К-во';
  SOutSpecConsignPriceCaption = '%s|Тегл.|НСЧ ИП|ВС1';
  SOutTotalQuantityCaption = '%s|Тегл.|Общо|К-во';
  SOutTotalPriceCaption = '%s|Тегл.|Общо|ВС1';
  STotalQuantityCaption = '%s|Наличност|К-во';
  STotalPriceCaption = '%s|Наличност|ВС1';
  SDeficitQuantityCaption = '%s|Дефицит|К-во';
  SDeficitPriceCaption = '%s|Дефицит|ВС1';
  SPassiveQuantityCaption = '%s|Пасивна Наличност|К-во';
  SPassivePriceCaption = '%s|Пасивна Наличност|ВС1';

  plblDateUnit = 'Времева стъпка';
  plblDateUnitCount = 'Брой стъпки';
  plblDateInterval = 'ВрмИнт';
  plblProductCommonLevel = 'Ниво ИИР/ИД спрямо Управляем Обект';
  plblPartnerCommonLevel = 'Ниво ИИР/ИД спрямо Партньор';

type
  TColumnDesc = record
    FieldName: string;
    Caption: string;
    Width: Integer;
    Alignment: TAlignment;
    Visible: Boolean;
  end;

type
  TColumnTitle = record
    Key: string;
    Caption: string;
  end;

const
  ProductNameFieldName = 'PRODUCT_NAME';
  ProductNoFieldName = 'PRODUCT_NO';
  PartnerProductNamesFieldName = 'PARTNER_PRODUCT_NAMES';
  MeasureAbbrevFieldName = 'MEASURE_ABBREV';
  AccountMeasureAbbrevFieldName = 'ACCOUNT_MEASURE_ABBREV';
  TotalQuantityFieldName = 'TOTAL_QTY_';
  DeficitQuantityFieldName = 'DEFICIT_QTY_';
  PassiveQuantityFieldName = 'PASSIVE_QTY_';
  TotalPriceFieldName = 'TOTAL_PRICE_';
  DeficitPriceFieldName = 'DEFICIT_PRICE_';
  PassivePriceFieldName = 'PASSIVE_PRICE_';
  DateUnitFirstDateFieldName = 'DATE_UNIT_FIRST_DATE_';
  QuantityFieldNamePart = '_QTY_';
  PriceFieldNamePart = '_PRICE_';

  ProductNameCaption = '#SProductNameCaption#';
  ProductNoCaption = '#SProductNoCaption#';
  PartnerProductNamesCaption = '#SPartnerProductNamesCaption#';
  MeasureAbbrevCaption = '#SMeasureAbbrevCaption#';
  AccountMeasureAbbrevCaption = '#SAccountMeasureAbbrevCaption#';
  InSaleCoverQuantityCaption = '#SInSaleCoverQuantityCaption#';
  InEnvCoverQuantityCaption = '#SInEnvCoverQuantityCaption#';
  InConsignQuantityCaption = '#SInConsignQuantityCaption#';
  InModelQuantityCaption = '#SInModelQuantityCaption#';
  InTotalQuantityCaption = '#SInTotalQuantityCaption#';
  OutSaleAcquireQuantityCaption = '#SOutSaleAcquireQuantityCaption#';
  OutSaleConsignQuantityCaption = '#SOutSaleConsignQuantityCaption#';
  OutSpecAcquireQuantityCaption = '#SOutSpecAcquireQuantityCaption#';
  OutSpecConsignQuantityCaption = '#SOutSpecConsignQuantityCaption#';
  OutTotalQuantityCaption = '#SOutTotalQuantityCaption#';
  TotalQuantityCaption = '#STotalQuantityCaption#';
  DeficitQuantityCaption = '#SDeficitQuantityCaption#';
  PassiveQuantityCaption = '#SPassiveQuantityCaption#';
  InSaleCoverPriceCaption = '#SInSaleCoverPriceCaption#';
  InEnvCoverPriceCaption = '#SInEnvCoverPriceCaption#';
  InConsignPriceCaption = '#SInConsignPriceCaption#';
  InModelPriceCaption = '#SInModelPriceCaption#';
  InTotalPriceCaption = '#SInTotalPriceCaption#';
  OutSaleAcquirePriceCaption = '#SOutSaleAcquirePriceCaption#';
  OutSaleConsignPriceCaption = '#SOutSaleConsignPriceCaption#';
  OutSpecAcquirePriceCaption = '#SOutSpecAcquirePriceCaption#';
  OutSpecConsignPriceCaption = '#SOutSpecConsignPriceCaption#';
  OutTotalPriceCaption = '#SOutTotalPriceCaption#';
  TotalPriceCaption = '#STotalPriceCaption#';
  DeficitPriceCaption = '#SDeficitPriceCaption#';
  PassivePriceCaption = '#SPassivePriceCaption#';

  ColumnTitles: array[1..31] of TColumnTitle = (
    (Key: ProductNameCaption; Caption: SProductNameCaption),
    (Key: ProductNoCaption; Caption: SProductNoCaption),
    (Key: PartnerProductNamesCaption; Caption: SPartnerProductNamesCaption),
    (Key: MeasureAbbrevCaption; Caption: SMeasureAbbrevCaption),
    (Key: AccountMeasureAbbrevCaption; Caption: SAccountMeasureAbbrevCaption),
    (Key: InSaleCoverQuantityCaption; Caption: SInSaleCoverQuantityCaption),
    (Key: InEnvCoverQuantityCaption; Caption: SInEnvCoverQuantityCaption),
    (Key: InConsignQuantityCaption; Caption: SInConsignQuantityCaption),
    (Key: InModelQuantityCaption; Caption: SInModelQuantityCaption),
    (Key: InTotalQuantityCaption; Caption: SInTotalQuantityCaption),
    (Key: OutSaleAcquireQuantityCaption; Caption: SOutSaleAcquireQuantityCaption),
    (Key: OutSaleConsignQuantityCaption; Caption: SOutSaleConsignQuantityCaption),
    (Key: OutSpecAcquireQuantityCaption; Caption: SOutSpecAcquireQuantityCaption),
    (Key: OutSpecConsignQuantityCaption; Caption: SOutSpecConsignQuantityCaption),
    (Key: OutTotalQuantityCaption; Caption: SOutTotalQuantityCaption),
    (Key: TotalQuantityCaption; Caption: STotalQuantityCaption),
    (Key: DeficitQuantityCaption; Caption: SDeficitQuantityCaption),
    (Key: PassiveQuantityCaption; Caption: SPassiveQuantityCaption),
    (Key: InSaleCoverPriceCaption; Caption: SInSaleCoverPriceCaption),
    (Key: InEnvCoverPriceCaption; Caption: SInEnvCoverPriceCaption),
    (Key: InConsignPriceCaption; Caption: SInConsignPriceCaption),
    (Key: InModelPriceCaption; Caption: SInModelPriceCaption),
    (Key: InTotalPriceCaption; Caption: SInTotalPriceCaption),
    (Key: OutSaleAcquirePriceCaption; Caption: SOutSaleAcquirePriceCaption),
    (Key: OutSaleConsignPriceCaption; Caption: SOutSaleConsignPriceCaption),
    (Key: OutSpecAcquirePriceCaption; Caption: SOutSpecAcquirePriceCaption),
    (Key: OutSpecConsignPriceCaption; Caption: SOutSpecConsignPriceCaption),
    (Key: OutTotalPriceCaption; Caption: SOutTotalPriceCaption),
    (Key: TotalPriceCaption; Caption: STotalPriceCaption),
    (Key: DeficitPriceCaption; Caption: SDeficitPriceCaption),
    (Key: PassivePriceCaption; Caption: SPassivePriceCaption)
  );

  ProductNameColumnWidth = 166;
  ProductNoColumnWidth = 76;
  PartnerProductNamesColumnWidth = ProductNameColumnWidth + ProductNoColumnWidth + 1;
  RepeatableColumnWidth = 57;

  ColumnDescs: array[1..45] of TColumnDesc =
    ( (FieldName: '<default>'; Caption: ''; Width: 10; Alignment: taLeftJustify; Visible: False),
      (FieldName: ProductNameFieldName; Caption: ProductNameCaption; Width: ProductNameColumnWidth; Alignment: taLeftJustify; Visible: True),
      (FieldName: ProductNoFieldName; Caption: ProductNoCaption; Width: ProductNoColumnWidth; Alignment: taLeftJustify; Visible: True),
      (FieldName: PartnerProductNamesFieldName; Caption: PartnerProductNamesCaption; Width: PartnerProductNamesColumnWidth; Alignment: taLeftJustify; Visible: True),
      (FieldName: MeasureAbbrevFieldName; Caption: MeasureAbbrevCaption; Width: 30; Alignment: taLeftJustify; Visible: True),
      (FieldName: AccountMeasureAbbrevFieldName; Caption: AccountMeasureAbbrevCaption; Width: 30; Alignment: taLeftJustify; Visible: True),
      (FieldName: 'IN_SALE_COVER_QTY_'; Caption: InSaleCoverQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'IN_SALE_COVER_PRICE_'; Caption: InSaleCoverPriceCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'IN_ENV_COVER_QTY_'; Caption: InEnvCoverQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'IN_ENV_COVER_PRICE_'; Caption: InEnvCoverPriceCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'IN_CONSIGN_QTY_'; Caption: InConsignQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'IN_CONSIGN_PRICE_'; Caption: InConsignPriceCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'IN_MODEL_QTY_'; Caption: InModelQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'IN_MODEL_PRICE_'; Caption: InModelPriceCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'IN_TOTAL_QTY_'; Caption: InTotalQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'IN_TOTAL_PRICE_'; Caption: InTotalPriceCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'OUT_SALE_ACQUIRE_QTY_'; Caption: OutSaleAcquireQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'OUT_SALE_ACQUIRE_PRICE_'; Caption: OutSaleAcquirePriceCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'OUT_SALE_CONSIGN_QTY_'; Caption: OutSaleConsignQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'OUT_SALE_CONSIGN_PRICE_'; Caption: OutSaleConsignPriceCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'OUT_SPEC_ACQUIRE_QTY_'; Caption: OutSpecAcquireQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'OUT_SPEC_ACQUIRE_PRICE_'; Caption: OutSpecAcquirePriceCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'OUT_SPEC_CONSIGN_QTY_'; Caption: OutSpecConsignQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'OUT_SPEC_CONSIGN_PRICE_'; Caption: OutSpecConsignPriceCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'OUT_TOTAL_QTY_'; Caption: OutTotalQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'OUT_TOTAL_PRICE_'; Caption: OutTotalPriceCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: TotalQuantityFieldName; Caption: TotalQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: DeficitQuantityFieldName; Caption: DeficitQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: PassiveQuantityFieldName; Caption: PassiveQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'ACC_IN_SALE_COVER_QTY_'; Caption: InSaleCoverQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'ACC_IN_ENV_COVER_QTY_'; Caption: InEnvCoverQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'ACC_IN_CONSIGN_QTY_'; Caption: InConsignQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'ACC_IN_MODEL_QTY_'; Caption: InModelQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'ACC_IN_TOTAL_QTY_'; Caption: InTotalQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'ACC_OUT_SALE_ACQUIRE_QTY_'; Caption: OutSaleAcquireQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'ACC_OUT_SALE_CONSIGN_QTY_'; Caption: OutSaleConsignQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'ACC_OUT_SPEC_ACQUIRE_QTY_'; Caption: OutSpecAcquireQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'ACC_OUT_SPEC_CONSIGN_QTY_'; Caption: OutSpecConsignQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'ACC_OUT_TOTAL_QTY_'; Caption: OutTotalQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'ACC_TOTAL_QTY_'; Caption: TotalQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'ACC_DEFICIT_QTY_'; Caption: DeficitQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: 'ACC_PASSIVE_QTY_'; Caption: PassiveQuantityCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: TotalPriceFieldName; Caption: TotalPriceCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: DeficitPriceFieldName; Caption: DeficitPriceCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True),
      (FieldName: PassivePriceFieldName; Caption: PassivePriceCaption; Width: RepeatableColumnWidth; Alignment: taRightJustify; Visible: True)
    );

  FrozenColumns = 3;

  DefaultDateUnitCount = 5;

function GetColumnDesc(AFieldName: string): TColumnDesc;
var
  i: Integer;
begin
  for i:= Low(ColumnDescs) to High(ColumnDescs) do
    if StartsStr(ColumnDescs[i].FieldName, AFieldName) then
      begin
        Result:= ColumnDescs[i];
        Exit;
      end;

  Result:= ColumnDescs[1];  // default
end;

{ TfmEstQuantitiesTable }

procedure TfmEstQuantitiesTable.actDeficitQuantityExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleColumns(svcaoShowHideRepeatableColumn);
end;

procedure TfmEstQuantitiesTable.actDeficitQuantityUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    ShowHideColumnActionEnabled(Sender as TAction);
  btnDeficitQuantity.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstQuantitiesTable.actFilterProductDocsExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl),
    pdsGridDataParams_PRODUCT_CODE.AsInteger);
end;

procedure TfmEstQuantitiesTable.actFilterProductDocsUpdate(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= not pdsGridDataParams_PRODUCT_CODE.IsNull;
      ImageIndex:= pdsGridDataParams_PRODUCT_HAS_DOC_ITEMS.AsInteger;
    end;  { with }
end;

procedure TfmEstQuantitiesTable.actFormUpdate(Sender: TObject);
begin
  inherited;
  sepPartnerProductNames.Visible:= actPartnerProductNames.Visible;
end;

procedure TfmEstQuantitiesTable.actInDetailsExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleColumns(svcaoShowHideRepeatableColumn);
end;

procedure TfmEstQuantitiesTable.actInDetailsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    actInQuantities.Checked or
    actInPrices.Checked;
  btnInDetails.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstQuantitiesTable.actInPricesExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleColumns(svcaoShowHideRepeatableColumn);
end;

procedure TfmEstQuantitiesTable.actInPricesUpdate(Sender: TObject);
begin
  inherited;
  PricesActionsUpdate(Sender);
  btnInPrices.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstQuantitiesTable.actInQuantitiesExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleColumns(svcaoShowHideRepeatableColumn);
end;

procedure TfmEstQuantitiesTable.actInQuantitiesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    ShowHideColumnActionEnabled(Sender as TAction);
  btnInQuantities.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstQuantitiesTable.actAccountMeasureExecute(Sender: TObject);
begin
  inherited;
  SetVisibleColumns(svcaoToggleMeasure);
end;

procedure TfmEstQuantitiesTable.actClientPartnerParRelProductsExecute(
  Sender: TObject);
begin
  inherited;
  ShowParRelProducts(brtClient, prpoPartner);
end;

procedure TfmEstQuantitiesTable.actClientPartnerParRelProductsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= ClientParRelProductsActionEnabled;
end;

procedure TfmEstQuantitiesTable.actClientProductParRelProductsExecute(
  Sender: TObject);
begin
  inherited;
  ShowParRelProducts(brtClient, prpoProduct);
end;

procedure TfmEstQuantitiesTable.actClientProductParRelProductsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= ClientParRelProductsActionEnabled;
end;

procedure TfmEstQuantitiesTable.actAccountMeasureUpdate(Sender: TObject);
begin
  inherited;
  btnAccountMeasure.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstQuantitiesTable.actClientParRelProductsExecute(
  Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(btnClientParRelProducts, pmClientParRelProducts);
end;

procedure TfmEstQuantitiesTable.actClientParRelProductsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= ClientParRelProductsActionEnabled;
end;

function TfmEstQuantitiesTable.ClientParRelProductsActionEnabled: Boolean;
var
  FieldName: string;
begin
  FieldName:= grdData.Columns[grdData.Col-1].FieldName;

  Result:=
    (GetRepeatableColumnNo(FieldName) > 0) and
    (Pos('OUT_', FieldName) > 0);
end;

procedure TfmEstQuantitiesTable.actCopyNameToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridData.FieldByName('PRODUCT_NAME').AsString;
end;

procedure TfmEstQuantitiesTable.actCopyNoToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridData.FieldByName('PRODUCT_NO').AsString;
end;

procedure TfmEstQuantitiesTable.actCopyToClipboardExecute(Sender: TObject);
begin
  inherited;
  actCopyNoToClipboard.Execute;
end;

procedure TfmEstQuantitiesTable.actCopyToClipboardUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsGridData.IsEmpty;
end;

procedure TfmEstQuantitiesTable.actDeficitPriceExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleColumns(svcaoShowHideRepeatableColumn);
end;

procedure TfmEstQuantitiesTable.actDeficitPriceUpdate(Sender: TObject);
begin
  inherited;
  PricesActionsUpdate(Sender);
  btnDeficitPrice.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstQuantitiesTable.actOutDetailsExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleColumns(svcaoShowHideRepeatableColumn);
end;

procedure TfmEstQuantitiesTable.actOutDetailsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    actOutQuantities.Checked or
    actOutPrices.Checked;
  btnOutDetails.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstQuantitiesTable.actOutPricesExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleColumns(svcaoShowHideRepeatableColumn);
end;

procedure TfmEstQuantitiesTable.actOutPricesUpdate(Sender: TObject);
begin
  inherited;
  PricesActionsUpdate(Sender);
  btnOutPrices.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstQuantitiesTable.actOutQuantitiesExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleColumns(svcaoShowHideRepeatableColumn);
end;

procedure TfmEstQuantitiesTable.actOutQuantitiesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    ShowHideColumnActionEnabled(Sender as TAction);
  btnOutQuantities.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstQuantitiesTable.actPartnerProductNamesExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleColumns(svcaoTogglePartnerProductNames);
end;

procedure TfmEstQuantitiesTable.actPartnerProductNamesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= (FProductClass = pcNormal);
  btnPartnerProductNames.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstQuantitiesTable.actPassivePriceExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleColumns(svcaoShowHideRepeatableColumn);
end;

procedure TfmEstQuantitiesTable.actPassivePriceUpdate(Sender: TObject);
begin
  inherited;
  PricesActionsUpdate(Sender);
  btnPassivePrice.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstQuantitiesTable.actPassiveQuantityExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleColumns(svcaoShowHideRepeatableColumn);
end;

procedure TfmEstQuantitiesTable.actPassiveQuantityUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    ShowHideColumnActionEnabled(Sender as TAction);
  btnPassiveQuantity.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstQuantitiesTable.actPrintExecute(Sender: TObject);
var
  SaveCursor: TCursor;
  SavePage: TPrinterPage;
begin
//  inherited;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsGridData.DisableControls;
    try
      pgdData.PageFooter.LeftText.Text:= uClientApp.ReplaceAppParams(SPrintGridPageFooterLeftText);
      pgdData.PageFooter.RightText.Text:= uClientApp.ReplaceAppParams(SPrintGridPageFooterRightText);
      pgdData.PageFooter.CenterText.Text:= LoginContext.CompanyShortName;

      pgdData.SetSubstitutes([
        'PRODUCT_NAME', pnlProduct.Caption,
        'DATE_UNIT_COUNT', pnlDateUnitCount.Caption,
        'DATE_UNIT', pnlDateUnit.Caption,
        'DATE_INTERVAL', frDateInterval.edtInterval.Text,
        'PRODUCT_COMMON_LEVEL', ProductCommonLevels[pdsGridDataParamsPRODUCT_COMMON_LEVEL.AsInteger],
        'PARTNER_COMMON_LEVEL', PartnerCommonLevels[pdsGridDataParamsPARTNER_COMMON_LEVEL.AsInteger],
        'FormCaption', Caption,
        'plblDateUnit', plblDateUnit,
        'plblDateUnitCount', plblDateUnitCount,
        'plblDateInterval', plblDateInterval,
        'plblProductCommonLevel', plblProductCommonLevel,
        'plblPartnerCommonLevel', plblPartnerCommonLevel,
        'plblProduct', lblProduct.Caption
      ]);

      SavePage:= SetUpPrinter(0, poLandscape, PrinterPreview.Printer);
      try
        pgdData.PreviewModal;
      finally
        SetUpPrinter(SavePage.PaperSize, SavePage.Orientation, PrinterPreview.Printer);
      end;   { try }
    finally
      cdsGridData.EnableControls;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmEstQuantitiesTable.actProductDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl),
    dotProduct, cdsGridData, 'PRODUCT_DOC_BRANCH_CODE', 'PRODUCT_DOC_CODE');
end;

procedure TfmEstQuantitiesTable.actProductDocsUpdate(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= cdsGridData.Active and not cdsGridData.IsEmpty;
      ImageIndex:= cdsGridDataPRODUCT_HAS_DOC_ITEMS.AsInteger;
    end;  { with }
end;

procedure TfmEstQuantitiesTable.actTotalPriceExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleColumns(svcaoShowHideRepeatableColumn);
end;

procedure TfmEstQuantitiesTable.actTotalPriceUpdate(Sender: TObject);
begin
  inherited;
  PricesActionsUpdate(Sender);
  btnTotalPrice.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstQuantitiesTable.actTotalQuantityExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleColumns(svcaoShowHideRepeatableColumn);
end;

procedure TfmEstQuantitiesTable.actTotalQuantityUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    ShowHideColumnActionEnabled(Sender as TAction);
  btnTotalQuantity.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstQuantitiesTable.actVendorPartnerParRelProductsExecute(
  Sender: TObject);
begin
  inherited;
  ShowParRelProducts(brtVendor, prpoPartner);
end;

procedure TfmEstQuantitiesTable.actVendorPartnerParRelProductsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= VendorParRelProductsActionEnabled;
end;

procedure TfmEstQuantitiesTable.actVendorProductParRelProductsExecute(
  Sender: TObject);
begin
  inherited;
  ShowParRelProducts(brtVendor, prpoProduct);
end;

procedure TfmEstQuantitiesTable.actVendorProductParRelProductsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= VendorParRelProductsActionEnabled;
end;

procedure TfmEstQuantitiesTable.actVendorParRelProductsExecute(
  Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(btnVendorParRelProducts, pmVendorParRelProducts);
end;

procedure TfmEstQuantitiesTable.actVendorParRelProductsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= VendorParRelProductsActionEnabled;
end;

function TfmEstQuantitiesTable.VendorParRelProductsActionEnabled: Boolean;
var
  FieldName: string;
begin
  FieldName:= grdData.Columns[grdData.Col-1].FieldName;

  Result:=
    (GetRepeatableColumnNo(FieldName) > 0) and
    (Pos('IN_', FieldName) > 0) and
    (Pos('_MODEL_', FieldName) = 0);
end;

procedure TfmEstQuantitiesTable.actWorkMeasureExecute(Sender: TObject);
begin
  inherited;
  SetVisibleColumns(svcaoToggleMeasure);
end;

procedure TfmEstQuantitiesTable.actWorkMeasureUpdate(Sender: TObject);
begin
  inherited;
  btnWorkMeasure.Down:= (Sender as TAction).Checked;
end;

class function TfmEstQuantitiesTable.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmEstQuantitiesTable.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  UpdateHeader;
  InitializeFields;
  InitializeColumns;
end;

procedure TfmEstQuantitiesTable.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
end;

procedure TfmEstQuantitiesTable.ChosenProductsChange;
begin
  pdsGridDataParams_PRODUCT_CODE.Clear;
  pdsGridDataParams_PRODUCT_NO.Clear;
  pdsGridDataParams_PRODUCT_NAME.Clear;

  if HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
    if IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
      begin
        pdsGridDataParams_PRODUCT_CODE.AsInteger:=
          ChosenNodeXMLToNodeCode(pdsGridDataParamsCHOSEN_PRODUCTS.AsString);

        DoProductFieldChanged(
          pdsGridDataParams_PRODUCT_CODE,
          pdsGridDataParams_PRODUCT_NAME,
          pdsGridDataParams_PRODUCT_NO,
          nil, nil, nil, nil, nil, nil, nil, nil,
          pdsGridDataParams_PRODUCT_HAS_DOC_ITEMS);
      end
    else
      pdsGridDataParams_PRODUCT_NAME.AsString:= SProductsSet[FProductClass];
end;

function TfmEstQuantitiesTable.DateUnitAsString(
  ADateUnitNo: Integer): string;
var
  Period: TPeriod;
  DateUnitFirstDate: TDateTime;
begin
  Period:= GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger);

  DateUnitFirstDate:=
    IncDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, Period, ADateUnitNo - 1);

  Result:= GetPeriodLabel(DateUnitFirstDate, Period, True);
end;

procedure TfmEstQuantitiesTable.InitalizeShowHideColumnActionsArray;
begin
  SetLength(FShowHideColumnActions, 10);
  FShowHideColumnActions[0]:= actInQuantities;
  FShowHideColumnActions[1]:= actInPrices;
  FShowHideColumnActions[2]:= actOutQuantities;
  FShowHideColumnActions[3]:= actOutPrices;
  FShowHideColumnActions[4]:= actTotalQuantity;
  FShowHideColumnActions[5]:= actTotalPrice;
  FShowHideColumnActions[6]:= actDeficitQuantity;
  FShowHideColumnActions[7]:= actDeficitPrice;
  FShowHideColumnActions[8]:= actPassiveQuantity;
  FShowHideColumnActions[9]:= actPassivePrice;
end;

procedure TfmEstQuantitiesTable.FormCreate(Sender: TObject);
begin
  inherited;

  FilterFormClass:= TfmEstQuantitiesTableFilter;
  ReportClass:= TBaseReport;

  lblCurrency.Caption:= FormatBaseCurrencyAbbrevString(lblCurrency.Caption);

  InitalizeShowHideColumnActionsArray;
  MaximizeStyle:= msStandard;

  SetDependantFields(pdsGridDataParams, 'CHOSEN_PRODUCTS', ['_PRODUCT_CODE', '_PRODUCT_NAME', '_PRODUCT_NO', '_PRODUCT_HAS_DOC_ITEMS']);
end;

function TfmEstQuantitiesTable.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

function TfmEstQuantitiesTable.GetRepeatableColumnNo(
  const FieldName: string): Integer;
begin
  Result:= StrToIntDef(Copy(FieldName, CharLastPos(FieldName, '_') + 1, 100), 0)
end;

procedure TfmEstQuantitiesTable.grdDataDblClick(Sender: TObject);
var
  ParRelProductsOrientation: TParRelProductsOrientation;
  BorderRelType: TBorderRelType;
  FieldName: string;
begin
//  inherited;

  if ShiftIsPressed then
    ParRelProductsOrientation:= prpoPartner
  else
    ParRelProductsOrientation:= prpoProduct;

  FieldName:= grdData.Columns[grdData.Col-1].FieldName;

  if (Pos('IN_TOTAL', FieldName) > 0) or
     (Pos('OUT_TOTAL', FieldName) > 0) then
    Exit;

  BorderRelType:= brtNone;
  if (Pos('IN_', FieldName) > 0) then
    BorderRelType:= brtVendor;
  if (Pos('OUT_', FieldName) > 0) then
    BorderRelType:= brtClient;

  ShowParRelProducts(BorderRelType, ParRelProductsOrientation);
end;

procedure TfmEstQuantitiesTable.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if ( (Pos('TOTAL_', Column.FieldName) > 0) or
       (Pos('DEFICIT_', Column.FieldName) > 0) ) and
     (Column.Field.AsFloat < 0) then
    Background:= ccDeficitBackground;

  if (Pos('PASSIVE_', Column.FieldName) > 0) and
     (Column.Field.AsFloat > 0) then
    Background:= $00F9DBE7;
end;

procedure TfmEstQuantitiesTable.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(
      LoginContext,
      FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmEstQuantitiesTable.InitializeColumns;

  function NormalizeColumnCaption(const ACaption: string): string;

    function KeyCaption(const AKey: string): string;
    var
      ColumnTitle: TColumnTitle;
    begin
      Result:= '';
      for ColumnTitle in ColumnTitles do
        if (ColumnTitle.Key = AKey) then
          begin
            Result:= ColumnTitle.Caption;
            Exit;
          end;
    end;  { KeyTitle }

  const
    DelimiterChar = '#';
  var
    i: Integer;
    key: string;
    InKey: Boolean;
  begin
    Result:= '';
    InKey:= False;
    for i:= 1 to Length(ACaption) do
      if InKey then
        begin
          key:= key + ACaption[i];
          if (ACaption[i] = DelimiterChar) then
            begin
              InKey:= False;
              Result:= Result + KeyCaption(key);
            end;
        end
      else
        begin
          if (ACaption[i] = DelimiterChar) then
            begin
              InKey:= True;
              key:= DelimiterChar;
            end
          else
            Result:= Result + ACaption[i];
        end;
  end;  { NormalizeColumnCaption }

  procedure FormatCaptions;
  var
    MsgParams: TStrings;
  begin
    MsgParams:=
      uProductClientUtils.CreateCommonMsgParams(
        LoginContext,
        FProductClass);
    try
      RecursivelyFormatCaptions(grdData, MsgParams);
    finally
      FreeAndNil(MsgParams);
    end;  { try }
  end;

var
  SaveDataSource: TDataSource;
  i: Integer;
  Column: TColumnEh;
  ColumnDesc: TColumnDesc;
  RepeatableColumnNo: Integer;
  ColumnCaption: string;
begin
  grdData.DataSource.DataSet.DisableControls;
  try
    SaveDataSource:= grdData.DataSource;
    grdData.DataSource:= nil;
    try
      grdData.Columns.BeginUpdate;
      try
        grdData.FrozenCols:= 0;
        grdData.Columns.Clear;
        for i:= 0 to cdsGridData.FieldCount - 1 do
          if GetColumnDesc(cdsGridData.Fields[i].FieldName).Visible then
            grdData.Columns.Add.FieldName:= cdsGridData.Fields[i].FieldName;

        for i:= 0 to grdData.Columns.Count - 1 do
          begin
            Column:= grdData.Columns[i];
            ColumnDesc:= GetColumnDesc(Column.FieldName);

            ColumnCaption:= NormalizeColumnCaption(ColumnDesc.Caption);

            RepeatableColumnNo:= GetRepeatableColumnNo(Column.FieldName);
            if (RepeatableColumnNo > 0) then
              ColumnCaption:= Format(ColumnCaption, [DateUnitAsString(RepeatableColumnNo)]);

            Column.Title.Caption:= ColumnCaption;
            Column.Width:= ColumnDesc.Width;
            Column.Alignment:= ColumnDesc.Alignment;
            Column.Visible:= ColumnDesc.Visible;

            if EndsText('HAS_DOC_ITEMS', Column.FieldName) then
              begin
                Column.Color:= ccDocBackground;
                Column.Font.Name:= 'Courier';
                Column.Font.Style:= [fsBold];
              end;  { if }

            Column.AutoFitColWidth:= False;
          end;

        if (cdsGridData.OpenCount > 1) then  // purvia put ostaviame na obshtia mehanizum da rescale-ne shirinite
          for Column in grdData.Columns do
            Column.Width:= ScalePixels(Column.Width);

        SetVisibleColumns(svcaoInitialize);
      finally
        grdData.Columns.EndUpdate;
      end;  { try }
    finally
      grdData.DataSource:= SaveDataSource;
    end;  { try }
  finally
    grdData.DataSource.DataSet.EnableControls;
  end;  { try }

//  grdData.FrozenCols:= FrozenColumns - Ord(actPartnerProductNames.Checked);

  InitializeAbmesDBGrid(grdData);
  FormatCaptions;
end;

procedure TfmEstQuantitiesTable.InitializeFields;
var
  i: Integer;
begin
  for i:= 0 to cdsGridData.FieldCount - 1 do
    if (Pos(QuantityFieldNamePart, cdsGridData.Fields[i].FieldName) > 0) then
      (cdsGridData.Fields[i] as TAbmesFloatField).DisplayFormat:= ',0';

  for i:= 0 to cdsGridData.FieldCount - 1 do
    if (Pos(PriceFieldNamePart, cdsGridData.Fields[i].FieldName) > 0) then
      (cdsGridData.Fields[i] as TAbmesFloatField).DisplayFormat:= ',0';

  cdsGridDataPRODUCT_HAS_DOC_ITEMS:= cdsGridData.FieldByName('PRODUCT_HAS_DOC_ITEMS');
end;

function TfmEstQuantitiesTable.IsQuantityField(
  const AField: TAbmesFloatField): Boolean;
begin
  Result:= False;
end;

procedure TfmEstQuantitiesTable.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;

  pdsGridDataParams.Edit;
  try
    if pdsGridDataParamsBEGIN_DATE.IsNull then
      pdsGridDataParamsBEGIN_DATE.AsDateTime:= ContextDate;
    if pdsGridDataParamsDATE_UNIT_CODE.IsNull then
      pdsGridDataParamsDATE_UNIT_CODE.AsInteger:= GetPeriodConst(perMonth);
    if pdsGridDataParamsDATE_UNIT_COUNT.IsNull then
      pdsGridDataParamsDATE_UNIT_COUNT.AsInteger:= DefaultDateUnitCount;

    pdsGridDataParamsBASE_DATE.AsDateTime:= pdsGridDataParamsBEGIN_DATE.AsDateTime - 1;

    ChosenProductsChange;

    pdsGridDataParams.Post;
  except
    pdsGridDataParams.Cancel;
    raise;
  end;
end;

procedure TfmEstQuantitiesTable.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if pdsGridDataParamsCHOSEN_PRODUCTS.Required and
     not HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
    raise Exception.Create(SProductsRequired[FProductClass]);

  if pdsGridDataParamsBEGIN_DATE.IsNull or
     pdsGridDataParamsDATE_UNIT_CODE.IsNull or
     pdsGridDataParamsDATE_UNIT_COUNT.IsNull then
    pdsGridDataParamsEND_DATE.Clear
  else
    pdsGridDataParamsEND_DATE.AsDateTime:=
      IncDate(
        pdsGridDataParamsBEGIN_DATE.AsDateTime,
        GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger),
        pdsGridDataParamsDATE_UNIT_COUNT.AsInteger) - 1;

  if (pdsGridDataParamsBASE_DATE.AsDateTime >= pdsGridDataParamsBEGIN_DATE.AsDateTime) then
    raise Exception.Create(SInvalidBaseDate);
end;

procedure TfmEstQuantitiesTable.pdsGridDataParamsBEGIN_DATEChange(
  Sender: TField);
begin
  inherited;

  if (pdsGridDataParamsBASE_DATE.AsDateTime >= pdsGridDataParamsBEGIN_DATE.AsDateTime) then
    pdsGridDataParamsBASE_DATE.AsDateTime:= pdsGridDataParamsBEGIN_DATE.AsDateTime - 1;
end;

procedure TfmEstQuantitiesTable.pdsGridDataParamsCHOSEN_PRODUCTSChange(
  Sender: TField);
begin
  inherited;
  ChosenProductsChange;
end;

procedure TfmEstQuantitiesTable.PricesActionsUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:=
    ShowHideColumnActionEnabled(Sender as TAction) and IsLevelOneInvestedValueVisible;
end;

function TfmEstQuantitiesTable.RepeatableColumnVisible(
  const FieldName: string): Boolean;
var
  IsTotalField: Boolean;
begin
  Result:= False;

  IsTotalField:= (Pos('_TOTAL_', FieldName) > 0);

  if (Pos(TotalQuantityFieldName, FieldName) > 0) then
    Result:= actTotalQuantity.Checked;

  if (Pos(TotalPriceFieldName, FieldName) > 0) then
    Result:= actTotalPrice.Checked;

  if (Pos('IN_', FieldName) > 0) and
     (Pos(QuantityFieldNamePart, FieldName) > 0) then
    Result:= actInQuantities.Checked and (actInDetails.Checked or IsTotalField);

  if (Pos('IN_', FieldName) > 0) and
     (Pos(PriceFieldNamePart, FieldName) > 0) then
    Result:= actInPrices.Checked and (actInDetails.Checked or IsTotalField);

  if (Pos('OUT_', FieldName) > 0) and
     (Pos(QuantityFieldNamePart, FieldName) > 0) then
    Result:= actOutQuantities.Checked and (actOutDetails.Checked or IsTotalField);

  if (Pos('OUT_', FieldName) > 0) and
     (Pos(PriceFieldNamePart, FieldName) > 0) then
    Result:= actOutPrices.Checked and (actOutDetails.Checked or IsTotalField);

  if (Pos(DeficitQuantityFieldName, FieldName) > 0) then
    Result:= actDeficitQuantity.Checked;

  if (Pos(DeficitPriceFieldName, FieldName) > 0) then
    Result:= actDeficitPrice.Checked;

  if (Pos(PassiveQuantityFieldName, FieldName) > 0) then
    Result:= actPassiveQuantity.Checked;

  if (Pos(PassivePriceFieldName, FieldName) > 0) then
    Result:= actPassivePrice.Checked;

  if (Pos(QuantityFieldNamePart, FieldName) > 0) then
    begin
      if StartsStr('ACC_', FieldName) then
        Result:= Result and actAccountMeasure.Checked
      else
        Result:= Result and actWorkMeasure.Checked;
    end;
end;

procedure TfmEstQuantitiesTable.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FProductClass:= AProductClass;
end;

procedure TfmEstQuantitiesTable.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= True;
end;

procedure TfmEstQuantitiesTable.SetVisibleColumns(
  AfterOperation: TSetVisibleColumnsAfterOperation);

  function ColumnByFieldName(AFieldName: string): TColumnEh;
  var
    i: Integer;
  begin
    for i:= 0 to grdData.Columns.Count - 1 do
      if (grdData.Columns[i].FieldName = AFieldName) then
        begin
          Result:= grdData.Columns[i];
          Exit;
        end;  { if }
    raise Exception.CreateFmt('Column not found by field name: %s', [AFieldName]);
  end;  { ColumnByFieldName }      

var
  i: Integer;
  RepeatableColumnNo: Integer;
  VisibleLeftCol: Integer;
  VisibleCol: Integer;
  VisibleCols: Integer;
  NewLeftCol: Integer;
  NewCol: Integer;
  CurrentColumn: TColumnEh;
  VisibleColFromLeftCol: Integer;
  FirstNonFrozenCol: Integer;
  SaveCol: Integer;
begin
  grdData.Columns.BeginUpdate;
  try
    SaveCol:= grdData.Col;

    VisibleLeftCol:= 0;
    for i:= 1 to grdData.LeftCol do
      Inc(VisibleLeftCol, Ord(grdData.Columns[i-1].Visible));

    VisibleCol:= 0;
    for i:= 1 to grdData.Col do
      Inc(VisibleCol, Ord(grdData.Columns[i-1].Visible));

    VisibleColFromLeftCol:= VisibleCol - VisibleLeftCol;

    CurrentColumn:= grdData.Columns[grdData.Col-1];

    for i:= 0 to grdData.Columns.Count - 1 do
      begin
        RepeatableColumnNo:= GetRepeatableColumnNo(grdData.Columns[i].FieldName);
        if (RepeatableColumnNo > 0) then
          grdData.Columns[i].Visible:=
            RepeatableColumnVisible(grdData.Columns[i].FieldName)
        else
          begin
            if (grdData.Columns[i].FieldName = MeasureAbbrevFieldName) then
              grdData.Columns[i].Visible:= actWorkMeasure.Checked;

            if (grdData.Columns[i].FieldName = AccountMeasureAbbrevFieldName) then
              grdData.Columns[i].Visible:= actAccountMeasure.Checked;

            if (grdData.Columns[i].FieldName = ProductNameFieldName) or
               (grdData.Columns[i].FieldName = ProductNoFieldName) then
              grdData.Columns[i].Visible:= not actPartnerProductNames.Checked;

            if (grdData.Columns[i].FieldName = PartnerProductNamesFieldName) then
              grdData.Columns[i].Visible:= actPartnerProductNames.Checked;
          end;
      end;

    if actInQuantities.Checked or
       actInPrices.Checked or
       actOutQuantities.Checked or
       actOutPrices.Checked then
      grdData.VTitleMargin:= 6
    else
      begin
        if actPassiveQuantity.Checked or
           actPassivePrice.Checked then
          grdData.VTitleMargin:= 7
        else
          grdData.VTitleMargin:= 12;
      end;
  finally
    grdData.Columns.EndUpdate;
  end;

  if (AfterOperation = svcaoTogglePartnerProductNames) then
    begin
      if not CurrentColumn.Visible then
        begin
          if actPartnerProductNames.Checked then
            SaveCol:= ColumnByFieldName(PartnerProductNamesFieldName).Index + 1
          else
            SaveCol:= ColumnByFieldName(ProductNameFieldName).Index + 1;
        end;  { if }

      grdData.FrozenCols:= FrozenColumns - Ord(actPartnerProductNames.Checked);
      grdData.Col:= SaveCol;
      grdData.Invalidate;
      Exit;
    end;

  if (AfterOperation = svcaoShowHideRepeatableColumn) then
    begin
      if CurrentColumn.Visible then
        begin
          VisibleCol:= 0;
          for i:= 0 to CurrentColumn.Index do
            Inc(VisibleCol, Ord(grdData.Columns[i].Visible));
        end
      else
        begin
          VisibleCol:= 1;
        end;
    end;  { if }

  VisibleLeftCol:= Max(VisibleCol - VisibleColFromLeftCol, 1);

  VisibleCols:= 0;
  i:= -1;
  while (VisibleCols < VisibleLeftCol) and (i < grdData.Columns.Count - 1) do
    begin
      Inc(i);
      Inc(VisibleCols, Ord(grdData.Columns[i].Visible));
    end;
  NewLeftCol:= i+1;

  VisibleCols:= 0;
  i:= -1;
  while (VisibleCols < VisibleCol) and (i < grdData.Columns.Count - 1)  do
    begin
      Inc(i);
      Inc(VisibleCols, Ord(grdData.Columns[i].Visible));
    end;
  NewCol:= i+1;

  VisibleCols:= 0;
  i:= -1;
  while (VisibleCols <= grdData.FrozenCols) do
    begin
      Inc(i);
      Inc(VisibleCols, Ord(grdData.Columns[i].Visible));
    end;  { while }
  FirstNonFrozenCol:= i+1;

  if grdData.HorzScrollBar.IsScrollBarShowing then
    grdData.LeftCol:= Max(NewLeftCol, FirstNonFrozenCol);

  try
    grdData.Col:= NewCol;
  except
  end;

  grdData.Invalidate;
end;

function TfmEstQuantitiesTable.ShowFilterForm: Boolean;
begin
  if FilterFormClass.InheritsFrom(TfmEstQuantitiesFilterAbstract) then
    Result:=
      TfmEstQuantitiesFilterAbstractClass(FilterFormClass).ShowForm(
        dmDocClient,
        pdsGridDataParams,
        emEdit,
        doNone,
        FProductClass)
  else
    Result:= inherited ShowFilterForm;
end;

class function TfmEstQuantitiesTable.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass): Boolean;
var
  f: TfmEstQuantitiesTable;
begin
  f:= CreateEx;
  try
    f.SetDataParams(
      AdmDocClient,
      ADataSet,
      AEditMode,
      ADefaultsOrigin,
      AFilterFormEnabled,
      AProductClass);

    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

function TfmEstQuantitiesTable.ShowHideColumnActionEnabled(
  Action: TAction): Boolean;
var
  act: TAction;
begin
  if not Action.Checked then
    Result:= True
  else
    begin
      Result:= True;

      for act in FShowHideColumnActions do
        if (act <> Action) and act.Checked then
          Exit;

      Result:= False;
    end;  { if }
end;

procedure TfmEstQuantitiesTable.ShowParRelProducts(
  BorderRelType: TBorderRelType;
  ParRelProductsOrientation: TParRelProductsOrientation);
var
  FieldName: string;
  BorderProdOrderBaseType: TBorderProdOrderBaseType;
  ObtainmentType: TObtainmentType;
  ParRelProductsStructurePartIncludeKind: TParRelProductsStructurePartIncludeKind;
  ProductCode: Integer;
  RepeatableColumnNo: Integer;
  BeginDate: TDateTime;
  EndDate: TDateTime;
begin
  FieldName:= grdData.Columns[grdData.Col-1].FieldName;

  RepeatableColumnNo:= GetRepeatableColumnNo(FieldName);

  if (BorderRelType <> brtNone) and
     (RepeatableColumnNo > 0) and
     (Pos('_MODEL_', FieldName) = 0) then
    begin
      if (Pos('ENV_COVER', FieldName) > 0) then
        BorderProdOrderBaseType:= pobtEnvCover
      else
        BorderProdOrderBaseType:= pobtSaleCover;

      if (Pos('CONSIGN', FieldName) > 0) then
        ObtainmentType:= otConsign
      else
        ObtainmentType:= otAcquire;

      if (Pos('_SPEC_', FieldName) > 0) then
        ParRelProductsStructurePartIncludeKind:= prpspikMaterial
      else
        ParRelProductsStructurePartIncludeKind:= prpspikNone;

      ProductCode:= cdsGridData.FieldByName('PRODUCT_CODE').AsInteger;

      BeginDate:=
        IncDate(
          pdsGridDataParamsBEGIN_DATE.AsDateTime,
          GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger),
          RepeatableColumnNo - 1
        );
      EndDate:= IncDate(BeginDate, GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger), 1) - 1;

      cdsParRelProductsParams.CreateDataSet;
      try
        cdsParRelProductsParams.Append;
        try

          if (ParRelProductsStructurePartIncludeKind = prpspikMaterial) then
            cdsParRelProductsParamsMATERIAL_CODE.AsInteger:= ProductCode
          else
            cdsParRelProductsParamsCHOSEN_PRODUCTS.AsString:=
              ChosenNodeCodeToXML(ProductCode);

          cdsParRelProductsParamsOBTAINMENT_TYPE_CODE.AsInteger:= ObtainmentTypeToInt(ObtainmentType);
          cdsParRelProductsParamsBEGIN_DATE.AsDateTime:= BeginDate;
          cdsParRelProductsParamsEND_DATE.AsDateTime:= EndDate;
          cdsParRelProductsParamsPRODUCT_COMMON_LEVEL.AsVariant:= pdsGridDataParamsPRODUCT_COMMON_LEVEL.AsVariant;
          cdsParRelProductsParamsPARTNER_COMMON_LEVEL.AsVariant:= pdsGridDataParamsPARTNER_COMMON_LEVEL.AsVariant;

          cdsParRelProductsParams.Post;
        except
          cdsParRelProductsParams.Cancel;
          raise;
        end;

        if TfmParRelProducts.ShowForm(
             dmDocClient,
             cdsParRelProductsParams,
             EditMode,
             doNone,
             False,
             FProductClass,
             BorderRelType,
             BorderProdOrderBaseType,
             ParRelProductsOrientation,
             prpkQuantity,
             ParRelProductsStructurePartIncludeKind,
              prpdikNone,
             False
           ) then
          RefreshGridData;
      finally
        cdsParRelProductsParams.Close;
      end;
    end;  { if }
end;

procedure TfmEstQuantitiesTable.UpdateHeader;
begin
  pnlProduct.Caption:= ' ' + pdsGridDataParams_PRODUCT_NAME.DisplayText;
  pnlDateUnit.Caption:= GetPeriodTypeName(GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger));
  pnlDateUnitCount.Caption:= IntToStr(pdsGridDataParamsDATE_UNIT_COUNT.AsInteger);
end;

end.
