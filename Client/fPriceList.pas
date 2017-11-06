unit fPriceList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, uParRelProducts, dDocClient,
  uClientTypes, uBorderRelTypes, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fProductExFieldEditFrame, fBaseFrame, fDBFrame,
  fFieldEditFrame, fPartnerFieldEditFrame, fPartnerExFieldEditFrame,
  fDateIntervalFrame, PrnDbgeh, uProducts, Menus, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmPriceList = class(TGridForm)
    pnlObject: TPanel;
    pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsBORDER_REL_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsPAR_REL_PRODUCT_ORIENTATION: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDATE_UNIT_CODE: TAbmesFloatField;
    pdsGridDataParamsDATE_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParamsPARTNER_CODE: TAbmesFloatField;
    pdsGridDataParamsPRODUCT_CODE: TAbmesFloatField;
    pnlPartner: TPanel;
    frPartner: TfrPartnerExFieldEditFrame;
    pnlProduct: TPanel;
    frProduct: TfrProductExFieldEditFrame;
    actToggleBaseCurrency: TAction;
    actWorkMeasure: TAction;
    actAccountMeasure: TAction;
    tlbToggles: TToolBar;
    sepWorkMeasure: TToolButton;
    btnWorkMeasure: TToolButton;
    btnAccountMeasure: TToolButton;
    btnToggleBaseCurrency: TToolButton;
    tlbProductDocs: TToolBar;
    sepProductDocs: TToolButton;
    pnlProductDocs: TPanel;
    btnProductDocs: TToolButton;
    tlbPartnerDocs: TToolBar;
    sepPartnerDocs: TToolButton;
    pnlPartnerDocs: TPanel;
    btnPartnerDocs: TToolButton;
    pnlDateInterval: TPanel;
    gbDateInterval: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    pdsGridDataParams_DATE_UNIT_NAME: TAbmesWideStringField;
    lblDateInterval: TLabel;
    txtDateUnitName: TDBText;
    pdsGridDataParams_PARTNER_CODE: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_CODE: TAbmesFloatField;
    pgdData: TPrintDBGridEh;
    actProductPartnerPrice: TAction;
    lblPartnerDocs: TLabel;
    cdsBorderRelTypeObtainmentTypes: TAbmesClientDataSet;
    cdsBorderRelTypeObtainmentTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsBorderRelTypeObtainmentTypesOBTAINMENT_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParams_OBTAINMENT_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParamsPRODUCT_CLASS_CODE: TAbmesFloatField;
    pdsGridDataParamsREQUIRE_PRPP: TAbmesFloatField;
    actExcludeVAT: TAction;
    actIncludeVAT: TAction;
    tlbTogglePrices: TToolBar;
    btnExcludeVAT: TToolButton;
    btnIncludeVAT: TToolButton;
    sepVAT: TToolButton;
    pdsGridDataParamsSHOW_EMPTY_LINES: TAbmesFloatField;
    actParRelProduct: TAction;
    pnlRefreshNeeded: TPanel;
    actProductPeriods: TAction;
    pnlProductPartnerPrice: TPanel;
    btnProductPartnerPrice: TBitBtn;
    pnlParRelProduct: TPanel;
    pnlProductPeriods: TPanel;
    btnParRelProduct: TBitBtn;
    btnProductPeriods: TBitBtn;
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actToggleBaseCurrencyExecute(Sender: TObject);
    procedure actWorkMeasureExecute(Sender: TObject);
    procedure actAccountMeasureExecute(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnPartnerDocsClick(Sender: TObject);
    procedure btnProductDocsClick(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure actExcelExportExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actProductPartnerPriceUpdate(Sender: TObject);
    procedure actProductPartnerPriceExecute(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure cdsBorderRelTypeObtainmentTypesBeforeOpen(DataSet: TDataSet);
    procedure actExcludeVATExecute(Sender: TObject);
    procedure actIncludeVATExecute(Sender: TObject);
    procedure pdsGridDataParamsPAR_REL_PRODUCT_ORIENTATIONChange(
      Sender: TField);
    procedure actParRelProductUpdate(Sender: TObject);
    procedure actParRelProductExecute(Sender: TObject);
    procedure actProductPeriodsUpdate(Sender: TObject);
    procedure actProductPeriodsExecute(Sender: TObject);
  private
    FProductClass: TProductClass;
    FBorderRelType: TBorderRelType;
    FParRelProductsOrientation: TParRelProductsOrientation;
    FInGridDataParamsAfterOpen: Boolean;
    FPriceChangeFields: array of TField;
    FOriginalFormCaption: string;
    cdsGridDataPAR_PRIORITY_COLOR: TField;
    cdsGridDataPAR_PRIORITY_BACKGROUND_COLOR: TField;
    cdsGridDataPARTNER_HAS_DOC_ITEMS: TField;
    cdsGridDataPRODUCT_PRIORITY_COLOR: TField;
    cdsGridDataPRODUCT_PRIORITY_BACKGR_COLOR: TField;
    cdsGridDataPRODUCT_HAS_DOC_ITEMS: TField;
    FOuterParamDataSet: TDataSet;
    cdsGridDataHAS_PARTNER: TField;
    FDataModified: Boolean;
    cdsGridDataPAR_REL_PRODUCT_STATUS_CODE: TField;
    cdsGridDataPRODUCT_CODE: TField;
    procedure cdsGridDataPRODUCT_COMMON_STATUS_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataPARTNER_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure InitializeColumns;
    procedure InitializeFields;
    function GetRepeatableColumnNo(FieldName: string): Integer;
    function RepeatableColumnVisible(FieldName: string): Boolean;
    procedure SetVisibleColumns;
    function DateUnitAsString(ADateUnitNo: Integer): string;
    procedure FormatCaptions;
    function PriceColumnSelected: Boolean;
    function GetColumnDate: TDateTime;
  protected
    class function CanUseDocs: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetOriginalFormCaption: string; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoBeforeShow; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
      AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
      AProductClass: TProductClass; ABorderRelType: TBorderRelType; AParRelProductsOrientation: TParRelProductsOrientation;
      AOuterParamDataSet: TDataSet): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
      AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
      AProductClass: TProductClass; ABorderRelType: TBorderRelType; AParRelProductsOrientation: TParRelProductsOrientation;
      AOuterParamDataSet: TDataSet); reintroduce; virtual;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uPeriods, fPriceListFilter, uXMLUtils, uUtils, uClientUtils, StrUtils,
  JclStrings, DateUtils, uColorConsts, uProductClientUtils, uDocUtils, uExcelExport,
  rBaseReport, Printers, PrViewEh, fParRelProduct, uClientPeriods, Math,
  uProductionOrderTypes, uClientDateTime, uToolbarUtils, fEditForm,
  fProductPartnerPrice, uTreeClientUtils, uCompanyClientUtils,
  uUserActivityConsts, uClientConsts, fProductPeriods, PrvFrmEh;

{$R *.dfm}

resourcestring
  SParRelProductStatusNameCaption = '%ParRelProductAbbrev%|Статус';
  SParRelProductExistMonthsCaption = '%ParRelProductAbbrev%|Същ. (мес)';
  SPartnerStatusNameCaption = '%Partner%|Статус';
  SPartnerExistMonthsCaption = '%Partner%|Същ. (мес)';
  SPartnerClassAbbrevCaption = '%Partner%|Клас';
  SPartnerPriorityNoCaption = '%Partner%|%PartnerPriority%';
  SPartnerNameCaption = '%Partner%|Наименование';
  SPartnerHasDocItemsCaption = '%Partner%|И И О';
  SProductCommonStatusCaption = '%ProductClassName%|Пзц. ТЙС';
  SProductPriorityNoCaption = '%ProductClassName%|БПриор.';
  SProductNameCaption = '%ProductClassName%|id логически';
  SMeasureAbbrevCaption = '%ProductClassName%|Раб. м.ед.';
  SAccountMeasureAbbrevCaption = '%ProductClassName%|Счет. м.ед.';
  SProductHasDocItemsCaption = '%ProductClassName%|И И О';
  SPriceCaption = '%s|Ед. цена';
  SCurrencyAbbrevCaption = '%s|Вал.';
  SLeaseDateUnitNameCaption = '%s|Наем.Ст.';
  SCaptionPrefix = 'Ценова Листа за ';
  SRefreshNeeded = 'Внимание! Данните са променени! За актуално състояние, моля презаредете справката.';

  plblDateInterval = 'ВрмИнт';
  plblDateUnitName = 'Времева стъпка';
  SBasePrice = '< Базова цена >';

type
  TColumnDesc = record
    FieldName: string;
    Caption: string;
    CaptionOrientation: TTextOrientationEh;
    Width: Integer;
    Alignment: TAlignment;
    VisibleOnOrientation: set of TParRelProductsOrientation;
  end;

type
  TColumnTitle = record
    Key: string;
    Caption: string;
  end;

const
  SinglePriceFieldName = 'SINGLE_PRICE_';
  AccountSinglePriceFieldName = 'ACCOUNT_SINGLE_PRICE_';
  CurrencyAbbrevFieldName = 'CURRENCY_ABBREV_';
  BaseSinglePriceFieldName = 'BASE_SINGLE_PRICE_';
  BaseAccountSinglePriceFieldName = 'BASE_ACCOUNT_SINGLE_PRICE_';
  BaseCurrencyAbbrevFieldName = 'BASE_CURRENCY_ABBREV_';
  LeaseDateUnitNameFieldName = 'LEASE_DATE_UNIT_NAME_';
  PriceChangeSignFieldName = 'PRICE_CHANGE_SIGN_';

  ParRelProductStatusNameCaption = '#SParRelProductStatusNameCaption#';
  ParRelProductExistMonthsCaption = '#SParRelProductExistMonthsCaption#';
  PartnerStatusNameCaption = '#SPartnerStatusNameCaption#';
  PartnerExistMonthsCaption = '#SPartnerExistMonthsCaption#';
  PartnerClassAbbrevCaption = '#SPartnerClassAbbrevCaption#';
  PartnerPriorityNoCaption = '#SPartnerPriorityNoCaption#';
  PartnerNameCaption = '#SPartnerNameCaption#';
  PartnerHasDocItemsCaption = '#SPartnerHasDocItemsCaption#';
  ProductCommonStatusCaption = '#ProductCommonStatusCaption#';
  ProductPriorityNoCaption = '#SProductPriorityNoCaption#';
  ProductNameCaption = '#SProductNameCaption#';
  MeasureAbbrevCaption = '#SMeasureAbbrevCaption#';
  AccountMeasureAbbrevCaption = '#SAccountMeasureAbbrevCaption#';
  ProductHasDocItemsCaption = '#SProductHasDocItemsCaption#';
  PriceCaption = '#SPriceCaption#';
  CurrencyAbbrevCaption = '#SCurrencyAbbrevCaption#';
  LeaseDateUnitNameCaption = '#SLeaseDateUnitNameCaption#';

  ColumnTitles: array[1..17] of TColumnTitle = (
    (Key: ParRelProductStatusNameCaption; Caption: SParRelProductStatusNameCaption),
    (Key: ParRelProductExistMonthsCaption; Caption: SParRelProductExistMonthsCaption),
    (Key: PartnerStatusNameCaption; Caption: SPartnerStatusNameCaption),
    (Key: PartnerExistMonthsCaption; Caption: SPartnerExistMonthsCaption),
    (Key: PartnerClassAbbrevCaption; Caption: SPartnerClassAbbrevCaption),
    (Key: PartnerPriorityNoCaption; Caption: SPartnerPriorityNoCaption),
    (Key: PartnerNameCaption; Caption: SPartnerNameCaption),
    (Key: PartnerHasDocItemsCaption; Caption: SPartnerHasDocItemsCaption),
    (Key: ProductCommonStatusCaption; Caption: SProductCommonStatusCaption),
    (Key: ProductPriorityNoCaption; Caption: SProductPriorityNoCaption),
    (Key: ProductNameCaption; Caption: SProductNameCaption),
    (Key: MeasureAbbrevCaption; Caption: SMeasureAbbrevCaption),
    (Key: AccountMeasureAbbrevCaption; Caption: SAccountMeasureAbbrevCaption),
    (Key: ProductHasDocItemsCaption; Caption: SProductHasDocItemsCaption),
    (Key: PriceCaption; Caption: SPriceCaption),
    (Key: CurrencyAbbrevCaption; Caption: SCurrencyAbbrevCaption),
    (Key: LeaseDateUnitNameCaption; Caption: SLeaseDateUnitNameCaption)
  );

  ColumnDescs: array[1..22] of TColumnDesc =
    ( (FieldName: '<default>'; Caption: ''; CaptionOrientation: tohHorizontal; Width: 10; Alignment: taLeftJustify; VisibleOnOrientation: []),
      (FieldName: 'PAR_REL_PRODUCT_STATUS_NAME'; Caption: ParRelProductStatusNameCaption; CaptionOrientation: tohHorizontal; Width: 43; Alignment: taLeftJustify; VisibleOnOrientation: [prpoPartner, prpoProduct]),
      (FieldName: 'PAR_REL_PRODUCT_EXIST_MONTHS'; Caption: ParRelProductExistMonthsCaption; CaptionOrientation: tohHorizontal; Width: 31; Alignment: taRightJustify; VisibleOnOrientation: [prpoPartner, prpoProduct]),
      (FieldName: 'PARTNER_STATUS_NAME'; Caption: PartnerStatusNameCaption; CaptionOrientation: tohHorizontal; Width: 43; Alignment: taLeftJustify; VisibleOnOrientation: [prpoProduct]),
      (FieldName: 'PARTNER_EXISTENCE_MONTHS'; Caption: PartnerExistMonthsCaption; CaptionOrientation: tohHorizontal; Width: 31; Alignment: taRightJustify; VisibleOnOrientation: [prpoProduct]),
      (FieldName: 'PARTNER_CLASS_ABBREV'; Caption: PartnerClassAbbrevCaption; CaptionOrientation: tohHorizontal; Width: 35; Alignment: taLeftJustify; VisibleOnOrientation: [prpoProduct]),
      (FieldName: 'PARTNER_PRIORITY_NO'; Caption: PartnerPriorityNoCaption; CaptionOrientation: tohVertical; Width: 13; Alignment: taCenter; VisibleOnOrientation: [prpoProduct]),
      (FieldName: 'PARTNER_NAME'; Caption: PartnerNameCaption; CaptionOrientation: tohHorizontal; Width: 144; Alignment: taLeftJustify; VisibleOnOrientation: [prpoProduct]),
      (FieldName: 'PARTNER_HAS_DOC_ITEMS'; Caption: PartnerHasDocItemsCaption; CaptionOrientation: tohHorizontal; Width: 13; Alignment: taCenter; VisibleOnOrientation: [prpoProduct]),
      (FieldName: 'PRODUCT_COMMON_STATUS_CODE'; Caption: ProductCommonStatusCaption; CaptionOrientation: tohVertical; Width: 13; Alignment: taCenter; VisibleOnOrientation: [prpoPartner]),
      (FieldName: 'PRODUCT_PRIORITY_NO'; Caption: ProductPriorityNoCaption; CaptionOrientation: tohVertical; Width: 13; Alignment: taCenter; VisibleOnOrientation: [prpoPartner]),
      (FieldName: 'PRODUCT_NAME'; Caption: ProductNameCaption; CaptionOrientation: tohHorizontal; Width: 211; Alignment: taLeftJustify; VisibleOnOrientation: [prpoPartner]),
      (FieldName: 'PRODUCT_HAS_DOC_ITEMS'; Caption: ProductHasDocItemsCaption; CaptionOrientation: tohHorizontal; Width: 13; Alignment: taCenter; VisibleOnOrientation: [prpoPartner]),
      (FieldName: 'MEASURE_ABBREV'; Caption: MeasureAbbrevCaption; CaptionOrientation: tohHorizontal; Width: 30; Alignment: taLeftJustify; VisibleOnOrientation: [prpoPartner]),
      (FieldName: 'ACCOUNT_MEASURE_ABBREV'; Caption: AccountMeasureAbbrevCaption; CaptionOrientation: tohHorizontal; Width: 30; Alignment: taLeftJustify; VisibleOnOrientation: [prpoPartner]),
      (FieldName: SinglePriceFieldName; Caption: PriceCaption; CaptionOrientation: tohHorizontal; Width: 55; Alignment: taRightJustify; VisibleOnOrientation: [prpoPartner, prpoProduct]),
      (FieldName: AccountSinglePriceFieldName; Caption: PriceCaption; CaptionOrientation: tohHorizontal; Width: 55; Alignment: taRightJustify; VisibleOnOrientation: [prpoPartner, prpoProduct]),
      (FieldName: CurrencyAbbrevFieldName; Caption: CurrencyAbbrevCaption; CaptionOrientation: tohHorizontal; Width: 30; Alignment: taCenter; VisibleOnOrientation: [prpoPartner, prpoProduct]),
      (FieldName: BaseSinglePriceFieldName; Caption: PriceCaption; CaptionOrientation: tohHorizontal; Width: 55; Alignment: taRightJustify; VisibleOnOrientation: [prpoPartner, prpoProduct]),
      (FieldName: BaseAccountSinglePriceFieldName; Caption: PriceCaption; CaptionOrientation: tohHorizontal; Width: 55; Alignment: taRightJustify; VisibleOnOrientation: [prpoPartner, prpoProduct]),
      (FieldName: BaseCurrencyAbbrevFieldName; Caption: CurrencyAbbrevCaption; CaptionOrientation: tohHorizontal; Width: 30; Alignment: taCenter; VisibleOnOrientation: [prpoPartner, prpoProduct]),
      (FieldName: LeaseDateUnitNameFieldName; Caption: LeaseDateUnitNameCaption; CaptionOrientation: tohHorizontal; Width: 65; Alignment: taLeftJustify; VisibleOnOrientation: [prpoPartner, prpoProduct])
    );

  BadPriceChangeColor = $007575FF;
  GoodPriceChangeColor = $00C5EFC2;

  PriceChangeBackgroundColors: array[TBorderRelType, -1..1] of TColor =
    ( (clWindow, clWindow, clWindow),  // brtNone
      (BadPriceChangeColor, clWindow, GoodPriceChangeColor),  // brtClient
      (GoodPriceChangeColor, clWindow, BadPriceChangeColor)  // brtVendor
    );

  DefaultDateUnitCount = 7;

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

function GetBorderRelTypePriceVisibilityActivity(ABorderRelType: TBorderRelType): Integer;
begin
  case ABorderRelType of
    brtClient: 
      Result:= uaShowSalePrices;
    brtVendor: 
      Result:= uaShowLevelOneInvestedValues;
  else
    Result:= 0;
  end;
end;

{ TfmPriceList }

procedure TfmPriceList.actAccountMeasureExecute(Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmPriceList.actExcelExportExecute(Sender: TObject);
begin
//  inherited;
  GridExcelExport(grdData, False);
end;

procedure TfmPriceList.actExcludeVATExecute(Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmPriceList.actFormUpdate(Sender: TObject);
begin
  inherited;

  pnlPartner.Visible:= (FParRelProductsOrientation = prpoPartner);
  pnlProduct.Visible:= (FParRelProductsOrientation = prpoProduct);

  NormalizedToolbar(tlbPartnerDocs).Visible:= (FParRelProductsOrientation = prpoProduct);
  NormalizedToolbar(tlbProductDocs).Visible:= (FParRelProductsOrientation = prpoPartner);

  if Assigned(cdsGridDataPARTNER_HAS_DOC_ITEMS) then
    btnPartnerDocs.ImageIndex:= cdsGridDataPARTNER_HAS_DOC_ITEMS.AsInteger;
  if Assigned(cdsGridDataPRODUCT_HAS_DOC_ITEMS) then
    btnProductDocs.ImageIndex:= cdsGridDataPRODUCT_HAS_DOC_ITEMS.AsInteger;

  pnlPartnerDocs.Width:= lblPartnerDocs.Width;

  pnlRefreshNeeded.Visible:= FDataModified;

  pnlParRelProduct.Visible:= (FBorderRelType = brtClient);
end;

procedure TfmPriceList.actIncludeVATExecute(Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmPriceList.actProductPartnerPriceExecute(Sender: TObject);
var
  RepeatableColumnNo: Integer;
  BeginDate: Variant;
  Period: TPeriod;
begin
  inherited;

  RepeatableColumnNo:= GetRepeatableColumnNo(grdData.Columns[grdData.Col-1].FieldName);
  if (RepeatableColumnNo > 0) then
    begin
      Period:= GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger);
      BeginDate:= IncDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, Period, RepeatableColumnNo - 1);

      TfmProductPartnerPrice.ShowForm(dmDocClient, nil, emReadOnly, doNone,
        cdsGridData.FieldByName('PRODUCT_CODE').AsInteger,
        cdsGridData.FieldByName('PARTNER_CODE').AsInteger,
        FBorderRelType,
        IntToObtainmentType(pdsGridDataParamsOBTAINMENT_TYPE_CODE.AsInteger),
        BeginDate);
    end;
end;

procedure TfmPriceList.actProductPartnerPriceUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsGridData.IsEmpty and
    PriceColumnSelected;
end;

procedure TfmPriceList.actProductPeriodsExecute(Sender: TObject);
var
  DataSet: TDataSet;
begin
  inherited;

  LoginContext.CheckUserActivity(uaProductPeriods);

  if (FParRelProductsOrientation = prpoProduct) then
    DataSet:= pdsGridDataParams
  else
    DataSet:= cdsGridData;

  if TfmProductPeriods.ShowForm(nil, DataSet, EditMode, doNone, True, GetColumnDate) then
    FDataModified:= True;
end;

procedure TfmPriceList.actProductPeriodsUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    ( (FParRelProductsOrientation = prpoPartner) and
      cdsGridData.Active and
      not cdsGridDataPRODUCT_CODE.IsNull
    ) or
    ( (FParRelProductsOrientation = prpoProduct) and
      (not pdsGridDataParamsPRODUCT_CODE.IsNull) );
end;

procedure TfmPriceList.actParRelProductExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  LoginContext.CheckUserActivity(uaParRelProductSales);

  if LoginContext.HasUserActivity(uaParRelProductSalesEdit) then
    em:= EditMode
  else
    em:= emReadOnly;

  if TfmParRelProduct.ShowForm(nil, cdsGridData, em, doNone, True, GetColumnDate) then
    FDataModified:= True;
end;

procedure TfmPriceList.actParRelProductUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    (FBorderRelType = brtClient) and
    cdsGridData.Active and
    not cdsGridData.IsEmpty and
    not cdsGridDataPAR_REL_PRODUCT_STATUS_CODE.IsNull;
end;

procedure TfmPriceList.actPrintExecute(Sender: TObject);
var
  LeftCol, Col: Integer;
  OrientationObjectPrintName: string;
  SavePage: TPrinterPage;
begin
//  inherited;
  cdsGridData.DisableControls;
  try
    LeftCol:= grdData.LeftCol;
    Col:= grdData.Col;
    try
      SavePage:= SetUpPrinter(DMPAPER_A3, poLandscape, PrinterPreview.Printer);
      try
        case FParRelProductsOrientation of
          prpoPartner:
            OrientationObjectPrintName:=
              frPartner.cdsPartnerCOMPANY_NO.AsString + ' - ' +
              frPartner.cdsPartner_PARTNER_NAME.AsString;
          prpoProduct:
            OrientationObjectPrintName:=
              frProduct.cdsTreeNodeNODE_NAME.AsString + ' - ' +
              frProduct.cdsTreeNodeNODE_NAME.AsString;
        else
          OrientationObjectPrintName:= '';
        end;

        pgdData.SetSubstitutes([
          'TITLE', Caption,
          'OBJECT', OrientationObjectPrintName,
          'DATE_INTERVAL', frDateInterval.edtInterval.Text,
          'DATE_UNIT_NAME', pdsGridDataParams_DATE_UNIT_NAME.AsString,
          'plblDateInterval', plblDateInterval,
          'plblDateUnitName', plblDateUnitName
        ]);

        pgdData.PreviewModal;
      finally
        SetUpPrinter(SavePage.PaperSize, SavePage.Orientation, PrinterPreview.Printer);
      end;   { try }
    finally
      grdData.LeftCol:= LeftCol;
      grdData.Col:= Col;
    end;  { try }
  finally
    cdsGridData.EnableControls;
  end;  { try }       
end;

procedure TfmPriceList.actToggleBaseCurrencyExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleColumns;
end;

procedure TfmPriceList.actWorkMeasureExecute(Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmPriceList.btnPartnerDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, Sender as TControl, dotCompany, 
    cdsGridData, 'PARTNER_DOC_BRANCH_CODE', 'PARTNER_DOC_CODE');
end;

procedure TfmPriceList.btnProductDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, Sender as TControl, dotProduct, 
    cdsGridData, 'PRODUCT_DOC_BRANCH_CODE', 'PRODUCT_DOC_CODE');
end;

class function TfmPriceList.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmPriceList.cdsBorderRelTypeObtainmentTypesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsBorderRelTypeObtainmentTypes.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:=
    BorderRelTypeToInt(FBorderRelType);
end;

procedure TfmPriceList.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FDataModified:= False;
  InitializeFields;
  InitializeColumns;
  FormatCaptions;
end;

procedure TfmPriceList.cdsGridDataPRODUCT_COMMON_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text:= ProductCommonStatusAbbrevs[Sender.AsInteger];
end;

procedure TfmPriceList.cdsGridDataPARTNER_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if cdsGridDataHAS_PARTNER.AsBoolean then
    Text:= Sender.AsString
  else
    Text:= SBasePrice;
end;

procedure TfmPriceList.CloseDataSets;
begin
  inherited;
  cdsBorderRelTypeObtainmentTypes.Close;
  cdsDateUnits.Close;
end;

function TfmPriceList.DateUnitAsString(ADateUnitNo: Integer): string;
var
  Period: TPeriod;
  DateUnitFirstDate: TDateTime;
begin
  Period:= GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger);

  DateUnitFirstDate:=
    IncDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, Period, ADateUnitNo - 1);

  Result:= GetPeriodLabel(DateUnitFirstDate, Period);
end;

procedure TfmPriceList.FormatCaptions;
var
  tlb: TToolbar;
begin
  Utils.Using(
    uParRelProducts.CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      FBorderRelType,
      pobtSaleCover,
      FParRelProductsOrientation,
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False))/
    procedure (mp: TStrings) begin
      RecursivelyFormatCaptions(Self, mp);
    end;

  Utils.Using(
    uProductClientUtils.CreateCommonMsgParams(
      LoginContext, FProductClass))/
    procedure (mp: TStrings) begin
      RecursivelyFormatCaptions(Self, mp);
    end;

  for tlb in NormalizedToolbarToolbars(tlbPartnerDocs) do
    tlb.ButtonHeight:= tlbPartnerDocs.Height;

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmPriceList.FormCreate(Sender: TObject);
begin
  inherited;

  FilterFormClass:= TfmPriceListFilter;
  ReportClass:= TBaseReport;

  frPartner.SetDataSet(pdsGridDataParams);
  frPartner.FieldNames:= '_PARTNER_CODE';
  frProduct.SetDataSet(pdsGridDataParams);
  frProduct.FieldNames:= '_PRODUCT_CODE';

  frProduct.DocButtonVisible:= True;
  frProduct.SpecStateVisible:= True;
  frProduct.PriorityVisible:= True;
  frProduct.CommonStatusVisible:= False;
  frProduct.ProductOriginVisible:= False;
  frProduct.PartnerProductNamesVisible:= False;
  frProduct.ProductPeriodsButtonVisible:= False;

  frDateInterval.SetDataSet(pdsGridDataParams);
  
  cdsGridData.Params.ParamByName('BEGIN_DATE').AsDateTime:= ContextDate;
  MaximizeStyle:= msStandard;

  pnlRefreshNeeded.Caption:= SRefreshNeeded;
end;

procedure TfmPriceList.FormShow(Sender: TObject);
begin
  inherited;
  actForm.Update;
end;

function TfmPriceList.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

function TfmPriceList.GetRepeatableColumnNo(FieldName: string): Integer;
begin
  if (Pos('SINGLE_PRICE', FieldName) > 0) or
     (Pos('CURRENCY_ABBREV', FieldName) > 0) or
     StartsStr(LeaseDateUnitNameFieldName, FieldName) or
     StartsStr(PriceChangeSignFieldName, FieldName) then
    Result:= StrToIntDef(Copy(FieldName, CharLastPos(FieldName, '_') + 1, 100), 0)
  else
    Result:= 0;
end;

procedure TfmPriceList.grdDataDblClick(Sender: TObject);
begin
//  inherited;
  if ContainsText(grdData.Columns[grdData.Col-1].FieldName, 'PAR_REL_PRODUCT_') then
    actParRelProduct.Execute
  else
    begin
      if StartsText('PRODUCT_', grdData.Columns[grdData.Col-1].FieldName) or
         ContainsText(grdData.Columns[grdData.Col-1].FieldName, 'MEASURE') then
        actProductPeriods.Execute
      else
        actProductPartnerPrice.Execute;
    end;
end;

procedure TfmPriceList.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  RepeatableColumnNo: Integer;
begin
  inherited;

  Assert(Assigned(cdsGridDataPAR_PRIORITY_COLOR));
  Assert(Assigned(cdsGridDataPAR_PRIORITY_BACKGROUND_COLOR));
  Assert(Assigned(cdsGridDataPRODUCT_PRIORITY_COLOR));
  Assert(Assigned(cdsGridDataPRODUCT_PRIORITY_BACKGR_COLOR));
  
  RepeatableColumnNo:= GetRepeatableColumnNo(Column.FieldName);
  if (RepeatableColumnNo > 0) then
    Background:=
      PriceChangeBackgroundColors[FBorderRelType, FPriceChangeFields[RepeatableColumnNo-1].AsInteger];

  if (Column.FieldName = 'PARTNER_PRIORITY_NO') then
    begin
      if not cdsGridDataPAR_PRIORITY_COLOR.IsNull then
        AFont.Color:= cdsGridDataPAR_PRIORITY_COLOR.AsInteger;
      if not cdsGridDataPAR_PRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsGridDataPAR_PRIORITY_BACKGROUND_COLOR.AsInteger;
    end;  { if }

  if (Column.FieldName = 'PRODUCT_PRIORITY_NO') then
    begin
      if not cdsGridDataPRODUCT_PRIORITY_COLOR.IsNull then
        AFont.Color:= cdsGridDataPRODUCT_PRIORITY_COLOR.AsInteger;
      if not cdsGridDataPRODUCT_PRIORITY_BACKGR_COLOR.IsNull then
        Background:= cdsGridDataPRODUCT_PRIORITY_BACKGR_COLOR.AsInteger;
    end;  { if }
end;

procedure TfmPriceList.InitializeFields;

  procedure InitializeBooleanField(AField: TField);
  begin
    with AField as TAbmesFloatField do
      begin
        FieldValueType:= fvtBoolean;
        DisplayBoolValues:= 'i;';
      end;  { with }
  end;

var
  i: Integer;
begin
  for i:= 0 to cdsGridData.FieldCount - 1 do
    if (Pos('SINGLE_PRICE', cdsGridData.Fields[i].FieldName) > 0) then
      (cdsGridData.Fields[i] as TAbmesFloatField).DisplayFormat:= ',0.00';

  for i:= 0 to cdsGridData.FieldCount - 1 do
    if StartsStr(PriceChangeSignFieldName, cdsGridData.Fields[i].FieldName) then
      begin
        SetLength(FPriceChangeFields, GetRepeatableColumnNo(cdsGridData.Fields[i].FieldName));
        FPriceChangeFields[Length(FPriceChangeFields)-1]:= cdsGridData.Fields[i];
      end;

  cdsGridDataPAR_PRIORITY_COLOR:= cdsGridData.FieldByName('PAR_PRIORITY_COLOR');
  cdsGridDataPAR_PRIORITY_BACKGROUND_COLOR:= cdsGridData.FieldByName('PAR_PRIORITY_BACKGROUND_COLOR');
  cdsGridDataPARTNER_HAS_DOC_ITEMS:= cdsGridData.FieldByName('PARTNER_HAS_DOC_ITEMS');
  cdsGridDataPRODUCT_PRIORITY_COLOR:= cdsGridData.FieldByName('PRODUCT_PRIORITY_COLOR');
  cdsGridDataPRODUCT_PRIORITY_BACKGR_COLOR:= cdsGridData.FieldByName('PRODUCT_PRIORITY_BACKGR_COLOR');
  cdsGridDataPRODUCT_HAS_DOC_ITEMS:= cdsGridData.FieldByName('PRODUCT_HAS_DOC_ITEMS');
  cdsGridDataHAS_PARTNER:= cdsGridData.FieldByName('HAS_PARTNER');
  cdsGridDataPAR_REL_PRODUCT_STATUS_CODE:= cdsGridData.FieldByName('PAR_REL_PRODUCT_STATUS_CODE');
  cdsGridDataPRODUCT_CODE:= cdsGridData.FieldByName('PRODUCT_CODE');

  InitializeBooleanField(cdsGridDataPARTNER_HAS_DOC_ITEMS);
  InitializeBooleanField(cdsGridDataPRODUCT_HAS_DOC_ITEMS);
  InitializeBooleanField(cdsGridDataHAS_PARTNER);

  cdsGridData.FieldByName('PRODUCT_COMMON_STATUS_CODE').OnGetText:= cdsGridDataPRODUCT_COMMON_STATUS_CODEGetText;
  cdsGridData.FieldByName('PARTNER_NAME').OnGetText:= cdsGridDataPARTNER_NAMEGetText;

  (cdsGridData.FieldByName('PAR_REL_PRODUCT_EXIST_MONTHS') as TAbmesFloatField).DisplayFormat:= ',0';
  (cdsGridData.FieldByName('PARTNER_EXISTENCE_MONTHS') as TAbmesFloatField).DisplayFormat:= ',0';
end;

procedure TfmPriceList.OpenDataSets;
begin
  cdsDateUnits.Open;
  cdsBorderRelTypeObtainmentTypes.Open;
  inherited;
end;

procedure TfmPriceList.Initialize;
begin
  frPartner.PriorityCompanyKind:= BorderRelTypeToCompanyKind(FBorderRelType);
  frProduct.ProductClass:= FProductClass;
  frProduct.BorderRelType:= FBorderRelType;

  actForm.Caption:= SCaptionPrefix + ParRelProductsOrientationCaptionSuffixes[FParRelProductsOrientation];
  
  inherited;

  if LoginContext.DefaultIncludeVAT and (FProductClass <> pcFinancial) then
    actIncludeVAT.Execute;
end;

procedure TfmPriceList.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
var
  Period: TPeriod;
begin
  inherited;

  FInGridDataParamsAfterOpen:= True;
  try
    pdsGridDataParams.Edit;
    try
      pdsGridDataParamsBORDER_REL_TYPE_CODE.AsInteger:=
        BorderRelTypeToInt(FBorderRelType);
      pdsGridDataParamsPAR_REL_PRODUCT_ORIENTATION.AsInteger:=
        ParRelProductsOrientationToInt(FParRelProductsOrientation);

      if Assigned(OuterDataSet) then
        begin
          pdsGridDataParams.AssignFields(OuterDataSet, 'PARTNER_CODE; PRODUCT_CODE; OBTAINMENT_TYPE_CODE');

          pdsGridDataParams_OBTAINMENT_TYPE_NAME.ReadOnly:=
            not pdsGridDataParamsOBTAINMENT_TYPE_CODE.IsNull;

          if pdsGridDataParamsOBTAINMENT_TYPE_CODE.IsNull then
            pdsGridDataParamsOBTAINMENT_TYPE_CODE.AsInteger:= ObtainmentTypeToInt(otAcquire);

          pdsGridDataParamsPAR_REL_PRODUCT_ORIENTATION.ReadOnly:= True;
        end;

      if Assigned(FOuterParamDataSet) and
         FOuterParamDataSet.Active and
         Assigned(FOuterParamDataSet.FindField('BEGIN_DATE')) and
         Assigned(FOuterParamDataSet.FindField('END_DATE')) and
         (not FOuterParamDataSet.FieldByName('BEGIN_DATE').IsNull) and
         (not FOuterParamDataSet.FieldByName('END_DATE').IsNull) then
        begin
          Period:= GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger);

          pdsGridDataParamsBEGIN_DATE.AsDateTime:=
            GetPeriodFirstDate(
              FOuterParamDataSet.FieldByName('BEGIN_DATE').AsDateTime,
              Period
            );

          pdsGridDataParamsEND_DATE.AsDateTime:=
            GetPeriodLastDate(
              FOuterParamDataSet.FieldByName('END_DATE').AsDateTime,
              Period
            );

          pdsGridDataParamsDATE_UNIT_COUNT.AsInteger:=
            Max(
              GetTimeUnitCount(
                pdsGridDataParamsBEGIN_DATE.AsDateTime,
                pdsGridDataParamsEND_DATE.AsDateTime + 1,
                Period
              ),
              2
            );
        end
      else
        begin
          pdsGridDataParamsDATE_UNIT_COUNT.AsInteger:= DefaultDateUnitCount;
        end;

      if (FBorderRelType = brtVendor) then
        pdsGridDataParamsREQUIRE_PRPP.AsInteger:= 1;

      pdsGridDataParams.Post;
    except
      pdsGridDataParams.Cancel;
      raise;
    end;

    pdsGridDataParamsPARTNER_CODE.ReadOnly:= not pdsGridDataParamsPARTNER_CODE.IsNull;
    pdsGridDataParamsPRODUCT_CODE.ReadOnly:= not pdsGridDataParamsPRODUCT_CODE.IsNull;
  finally
    FInGridDataParamsAfterOpen:= False;
  end;
end;

procedure TfmPriceList.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if not FInGridDataParamsAfterOpen then
    case IntToParRelProductsOrientation(pdsGridDataParamsPAR_REL_PRODUCT_ORIENTATION.AsInteger) of
      prpoPartner:
        begin
          CheckRequiredField(pdsGridDataParamsPARTNER_CODE);
          if (not HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString)) then
            raise Exception.Create(SProductsRequired[FProductClass]);
        end;
      prpoProduct:
        CheckRequiredField(pdsGridDataParamsPRODUCT_CODE);
    end;

  CheckRequiredField(pdsGridDataParams_OBTAINMENT_TYPE_NAME);

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

  FParRelProductsOrientation:=
    IntToParRelProductsOrientation(pdsGridDataParamsPAR_REL_PRODUCT_ORIENTATION.AsInteger);

  case FParRelProductsOrientation of
    prpoPartner:
      pdsGridDataParamsCHOSEN_COMPANIES.AsString:=
        ChosenCompanyCodeToXML(pdsGridDataParamsPARTNER_CODE.AsInteger);

    prpoProduct:
      pdsGridDataParamsCHOSEN_PRODUCTS.AsString:=
        ChosenNodeCodeToXML(pdsGridDataParamsPRODUCT_CODE.AsInteger);
  end;
end;

procedure TfmPriceList.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams_PARTNER_CODE.AsVariant:= pdsGridDataParamsPARTNER_CODE.AsVariant;
  pdsGridDataParams_PRODUCT_CODE.AsVariant:= pdsGridDataParamsPRODUCT_CODE.AsVariant;
end;

procedure TfmPriceList.pdsGridDataParamsPAR_REL_PRODUCT_ORIENTATIONChange(
  Sender: TField);
begin
  inherited;
  pdsGridDataParamsCHOSEN_COMPANIES.Clear;
  pdsGridDataParamsCHOSEN_PRODUCTS.Clear;
end;

function TfmPriceList.RepeatableColumnVisible(FieldName: string): Boolean;
begin
  if StartsStr(LeaseDateUnitNameFieldName, FieldName) then
    Result:= True
  else
    begin
      Result:=
        ((Pos('BASE_', FieldName) > 0) = actToggleBaseCurrency.Checked);

      if (Pos('SINGLE_PRICE', FieldName) > 0) then
        begin
          if (Pos('ACCOUNT', FieldName) > 0) then
            Result:= Result and actAccountMeasure.Checked
          else
            Result:= Result and actWorkMeasure.Checked;

          if (Pos('_V_', FieldName) > 0) then
            Result:= Result and actIncludeVAT.Checked
          else
            Result:= Result and actExcludeVAT.Checked;
        end;
    end;
end;

procedure TfmPriceList.InitializeColumns;

  function NormalizeColumnCaption(const ACaption: string): string;

    function KeyCaption(AKey: string): string;
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

var
  SaveDataSource: TDataSource;
  i: Integer;
  Column: TColumnEh;
  ColumnDesc: TColumnDesc;
  RepeatableColumnNo: Integer;
  ColumnCaption: string;
  LeasePrices: Boolean;
  FrozenCols: Integer;
begin
  grdData.DataSource.DataSet.DisableControls;
  try
    SaveDataSource:= grdData.DataSource;
    grdData.DataSource:= nil;
    try
      grdData.Columns.BeginUpdate;
      try
        LeasePrices:= (IntToObtainmentType(pdsGridDataParamsOBTAINMENT_TYPE_CODE.AsInteger) = otLease);

        grdData.FrozenCols:= 0;
        grdData.Columns.Clear;
        for i:= 0 to cdsGridData.FieldCount - 1 do
          with GetColumnDesc(cdsGridData.Fields[i].FieldName) do
            if (VisibleOnOrientation <> []) and
               (LeasePrices or not StartsStr(LeaseDateUnitNameFieldName, cdsGridData.Fields[i].FieldName)) then
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
            Column.Title.Orientation:= ColumnDesc.CaptionOrientation;
            Column.Width:= ColumnDesc.Width;
            Column.Alignment:= ColumnDesc.Alignment;
            Column.Visible:= (FParRelProductsOrientation in ColumnDesc.VisibleOnOrientation);

            if EndsText('HAS_DOC_ITEMS', Column.FieldName) then
              begin
                Column.Color:= ccDocBackground;
                Column.Font.Name:= 'Courier';
                Column.Font.Style:= [fsBold];
              end;  { if }

            if EndsText('_MONTHS', Column.FieldName) then
              Column.Color:= ccDate;
          end;

        SetVisibleColumns;

        grdData.HorzScrollBar.Visible:=
          (pdsGridDataParamsDATE_UNIT_COUNT.AsInteger > DefaultDateUnitCount);
      finally
        grdData.Columns.EndUpdate;
      end;  { try }
    finally
      grdData.DataSource:= SaveDataSource;
    end;  { try }
  finally
    grdData.DataSource.DataSet.EnableControls;
  end;  { try }

  FrozenCols:= 0;
  for i:= 0 to grdData.Columns.Count - 1 do
    if (GetRepeatableColumnNo(grdData.Columns[i].FieldName) = 0) then
      FrozenCols:= i + 1;
  grdData.FrozenCols:= FrozenCols;

  InitializeAbmesDBGrid(grdData);
end;

procedure TfmPriceList.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean;
  AProductClass: TProductClass;
  ABorderRelType: TBorderRelType;
  AParRelProductsOrientation: TParRelProductsOrientation;
  AOuterParamDataSet: TDataSet);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FProductClass:= AProductClass;
  FBorderRelType:= ABorderRelType;
  FParRelProductsOrientation:= AParRelProductsOrientation;
  FOuterParamDataSet:= AOuterParamDataSet;

  cdsGridData.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
end;

procedure TfmPriceList.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= True;
end;

procedure TfmPriceList.SetVisibleColumns;
var
  i: Integer;
  RepeatableColumnNo: Integer;
  VisibleLeftCol: Integer;
  VisibleCol: Integer;
  VisibleCols: Integer;
begin
  grdData.Columns.BeginUpdate;
  try
    VisibleLeftCol:= 0;
    for i:= 1 to grdData.LeftCol do
      Inc(VisibleLeftCol, Ord(grdData.Columns[i-1].Visible));

    VisibleCol:= 0;
    for i:= 1 to grdData.Col do
      Inc(VisibleCol, Ord(grdData.Columns[i-1].Visible));

    for i:= 0 to grdData.Columns.Count - 1 do
      begin
        RepeatableColumnNo:= GetRepeatableColumnNo(grdData.Columns[i].FieldName);
        if (RepeatableColumnNo > 0) then
          grdData.Columns[i].Visible:=
            RepeatableColumnVisible(grdData.Columns[i].FieldName)
        else
          begin
            if (grdData.Columns[i].FieldName = 'MEASURE_ABBREV') then
              grdData.Columns[i].Visible:=
                actWorkMeasure.Checked and (FParRelProductsOrientation = prpoPartner);

            if (grdData.Columns[i].FieldName = 'ACCOUNT_MEASURE_ABBREV') then
              grdData.Columns[i].Visible:=
                actAccountMeasure.Checked and (FParRelProductsOrientation = prpoPartner);
          end;
      end;
  finally
    grdData.Columns.EndUpdate;
  end;

  VisibleCols:= 0;
  i:= -1;
  while (VisibleCols < VisibleLeftCol) do
    begin
      Inc(i);
      Inc(VisibleCols, Ord(grdData.Columns[i].Visible));
    end;
  try
    grdData.LeftCol:= i+1;
  except
  end;

  VisibleCols:= 0;
  i:= -1;
  while (VisibleCols < VisibleCol) do
    begin
      Inc(i);
      Inc(VisibleCols, Ord(grdData.Columns[i].Visible));
    end;
  grdData.Col:= i+1;

  frProduct.MeasureVisible:= actWorkMeasure.Checked;
  frProduct.AccountMeasureVisible:= actAccountMeasure.Checked;
end;

class function TfmPriceList.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean;
  AProductClass: TProductClass;
  ABorderRelType: TBorderRelType;
  AParRelProductsOrientation: TParRelProductsOrientation;
  AOuterParamDataSet: TDataSet): Boolean;
var
  f: TfmPriceList;
  SavePage: TPrinterPage;
begin
  dmMain.LoginContext.CheckUserActivity(GetBorderRelTypePriceVisibilityActivity(ABorderRelType));

  SavePage:= SetUpPrinter(DMPAPER_A3, poLandscape);
  try
    f:= CreateEx;
    try
      f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled,
        AProductClass, ABorderRelType, AParRelProductsOrientation, AOuterParamDataSet);

      f.InternalShowForm;
      Result:= f.IsDataModified;
    finally
      f.ReleaseForm;
    end;  { try }
  finally
    SetUpPrinter(SavePage.PaperSize, SavePage.Orientation);
  end;   { try }
end;

function TfmPriceList.PriceColumnSelected: Boolean;
var
  FldName: string;
begin
  FldName:= grdData.Columns[grdData.Col-1].FieldName;

  Result:=
    ContainsStr(FldName, 'SINGLE_PRICE') or
    ContainsStr(FldName, 'CURRENCY_ABBREV') or
    ContainsStr(FldName, 'LEASE_DATE_UNIT_NAME');
end;

procedure TfmPriceList.DoBeforeShow;
begin
  FormatCaptions;
  inherited;
end;

function TfmPriceList.GetColumnDate: TDateTime;
var
  RepeatableColumnNo: Integer;
  Period: TPeriod;
begin
  RepeatableColumnNo:= GetRepeatableColumnNo(grdData.Columns[grdData.Col-1].FieldName);
  if (RepeatableColumnNo > 0) then
    begin
      Period:= GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger);
      Result:= IncDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, Period, RepeatableColumnNo - 1);
    end
  else
    Result:= pdsGridDataParamsBEGIN_DATE.AsDateTime;
end;

end.
