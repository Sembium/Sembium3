unit fQuantityDeficit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, uPeriods, PrnDbgeh, Db, StdCtrls, DBCtrls, ComCtrls, ToolWin,
  ImgList, ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  AbmesDBGrid, ColorNavigator, Buttons, ExtCtrls, DBGrids, GridsEh, DBGridEh,
  AbmesFields, AbmesDBCheckBox, Menus, uClientTypes, JvButtons, fEditForm,
  JvComponent, JvCaptionButton, JvComponentBase, uProducts, dDocClient,
  uClientUtils, DBGridEhGrouping, fBaseFrame, fDBFrame, fFieldEditFrame, fDateFieldEditFrame, AppEvnts,
  uNestProc, fDateIntervalFrame, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  System.Actions, EhLibVCL, DBAxisGridsEh;

const
  Eps = 0.00001;

type
  TDeficitSelection = (dsCell, dsRow);
  TDeliveryProjectsSelection = (dpsAll, dpsSelected);

type
  TfmQuantityDeficit = class(TGridForm)
    actQuantityIn: TAction;
    actQuantityOut: TAction;
    actDeficit: TAction;
    actQuantity: TAction;
    actQuantityPrice: TAction;
    actDeficitPrice: TAction;
    actAccountMeasure: TAction;
    pnlHeader: TPanel;
    lblProduct: TLabel;
    lblDept: TLabel;
    pnlDept: TPanel;
    pnlTimeUnit: TPanel;
    lblPeriod: TLabel;
    lblUnitNum: TLabel;
    pnlTimeUnits: TPanel;
    cbProjectDeals: TAbmesDBCheckBox;
    EhPrint: TPrintDBGridEh;
    actPrintDeficitGrid: TAction;
    actWorkMeasure: TAction;
    EhPrintSaveHeader: TPrintDBGridEh;
    cdsTempParams: TAbmesClientDataSet;
    cdsTempParamsSTART_DATE: TAbmesSQLTimeStampField;
    cdsTempParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsTempParamsIN_P: TAbmesFloatField;
    cdsTempParamsOUT_P: TAbmesFloatField;
    cdsTempParamsIS_ANNULED: TAbmesFloatField;
    cdsTempParamsIS_NOT_ANNULED: TAbmesFloatField;
    cdsTempParamsIS_CLOSED: TAbmesFloatField;
    cdsTempParamsIS_NOT_CLOSED: TAbmesFloatField;
    cdsTempParamsSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    pnlWarning: TPanel;
    pnlTop: TPanel;
    cdsTempParamsINCLUDE_PL_SECOND_LEVEL: TAbmesFloatField;
    cdsTempParamsDATE_UNIT_CODE: TAbmesFloatField;
    cdsTempParamsSTART_PERIOD_DATE: TAbmesSQLTimeStampField;
    cdsTempParamsEND_PERIOD_DATE: TAbmesSQLTimeStampField;
    cdsTempParams_STORE_DEAL_DATE_2: TAbmesSQLTimeStampField;
    cdsTempParamsINCLUDE_PLANNED_SECOND_LEVEL: TAbmesFloatField;
    cdsTempParamsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    actShowVIM: TAction;
    btnNewDCDPopup: TBitBtn;
    actNewDeficitCoverDecision: TAction;
    mdsNewDeficitCoverDecision: TAbmesClientDataSet;
    mdsNewDeficitCoverDecisionP_PRODUCT_CODE: TAbmesFloatField;
    mdsNewDeficitCoverDecisionP_WORK_QUANTITY: TAbmesFloatField;
    mdsNewDeficitCoverDecisionP_DEFICIT_COVER_DATE: TAbmesSQLTimeStampField;
    mdsNewSimpleSale: TAbmesClientDataSet;
    mdsNewSimpleSaleENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    mdsNewSimpleSaleENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    mdsNewSimpleSaleQUANTITY: TAbmesFloatField;
    mdsNewSimpleSalePRODUCT_CODE: TAbmesFloatField;
    actNewProductionOrFinOrder: TAction;
    btnNewProductionOrFinOrderPopup: TBitBtn;
    pnlProductOuter: TPanel;
    pnlProductDocumentation: TPanel;
    btnDocumentation: TSpeedButton;
    pnlProduct: TPanel;
    cdsTempParamsPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField;
    actShowTowardsReserve: TAction;
    actShowReserve: TAction;
    pnlSecondaryCurrency: TPanel;
    lblSecondaryCurrency: TLabel;
    btnCopy: TToolButton;
    actCopyToClipboard: TAction;
    actCopyNoToClipboard: TAction;
    actCopyNameToClipboard: TAction;
    pmCopy: TPopupMenu;
    miCopyNoToClipboard: TMenuItem;
    miCopyNameToClipboard: TMenuItem;
    tbVisibleColumns: TToolBar;
    sepBeforeQuantityIn: TToolButton;
    sbtnQuantity: TSpeedButton;
    sbtnQuantityPrice: TSpeedButton;
    sepBeforeDeficit: TToolButton;
    sbtnDeficit: TSpeedButton;
    sbtnDeficitPrice: TSpeedButton;
    sepBeforeQuantity: TToolButton;
    sbtnQuantityOut: TSpeedButton;
    sepBeforeQuantityOut: TToolButton;
    sbtnQuantityIn: TSpeedButton;
    sepBeforeShowNegativeQuantity: TToolButton;
    sbtnWorkMeasure: TSpeedButton;
    sbtnAccountMeasure: TSpeedButton;
    sepBeforeToggleProductDisplay: TToolButton;
    sbtnShowReserve: TSpeedButton;
    sbtnShowTowardsReserve: TSpeedButton;
    sbtnToggleProductDisplay: TSpeedButton;
    actShowNegativeQuantity: TAction;
    btnShowNegativeQuantity: TSpeedButton;
    sepBeforeCopyToClipboard: TToolButton;
    btnPrintDeficitGrid: TToolButton;
    btnShowVIM: TToolButton;
    sepBeforeShowVIM: TToolButton;
    tlbDocumentation: TToolBar;
    btnGridDocumentation: TToolButton;
    cdsTempParamsIS_GROUPED_BY_STORE: TAbmesFloatField;
    pdsGridDataParamsTIME_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParamsTIME_UNIT_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_PSD_TYPE_CODE: TAbmesFloatField;
    sepBeforeWorkMeasure: TToolButton;
    cdsTempParamsMAX_PSD_TYPE_CODE: TAbmesFloatField;
    cdsTempParamsTIME_UNITS_NUM: TAbmesFloatField;
    actActiveQuantity: TAction;
    actActivePrice: TAction;
    pdsGridDataParamsHAS_DEFICIT_CODE: TAbmesFloatField;
    pdsGridDataParamsHAS_DEFICIT_RSV_CODE: TAbmesFloatField;
    pdsGridDataParamsHAS_DEALS_IN_CODE: TAbmesFloatField;
    pdsGridDataParamsHAS_DEALS_OUT_CODE: TAbmesFloatField;
    lblGridDocumentation: TLabel;
    cdsTempParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsTempParamsTIME_UNIT_COUNT: TAbmesFloatField;
    cdsTempParamsTIME_UNIT_CODE: TAbmesFloatField;
    cdsTempParamsIS_TOWARDS_RESERVE: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField;
    pdsGridDataParams_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParams_PRODUCT_NO: TAbmesFloatField;
    pdsGridDataParams_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParams_DEPT_NAME: TAbmesWideStringField;
    pdsGridDataParams_DEPT_NO: TAbmesWideStringField;
    cdsTempParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsTempParamsCHOSEN_DEPTS: TAbmesWideStringField;
    sepBeforeShowTowardsReserve: TToolButton;
    pmNewDeficitCoverDecision: TPopupMenu;
    actNewRowDeficitCoverDecision: TAction;
    actNewDCDPopup: TAction;
    miNewDeficitCoverDecision: TMenuItem;
    miNewRowDeficitCoverDecision: TMenuItem;
    actNewProductionOrFinOrderPopup: TAction;
    actNewRowProductionOrFinOrder: TAction;
    pmNewProductionOrFinOrder: TPopupMenu;
    miNewProductionOrFinOrder: TMenuItem;
    miNewRowProductionOrFinOrder: TMenuItem;
    lblDateInterval: TLabel;
    pdsGridDataParams_END_DATE: TAbmesSQLTimeStampField;
    AppEvents: TApplicationEvents;
    btnNewSubjectiveDeliveryProjectsPopup: TBitBtn;
    actNewSubjectiveDeliveryProjects: TAction;
    actSelectAll: TAction;
    actNewSubjectiveDeliveryProjectsChosen: TAction;
    actNewSubjectiveDeliveryProjectsAll: TAction;
    pmNewSubjectiveDeliveryProjects: TPopupMenu;
    miNewSubjectiveDeliveryProjectsChosen: TMenuItem;
    miNewSubjectiveDeliveryProjectsAll: TMenuItem;
    pdsGridDataParams_IS_TOWARDS_RESERVE: TAbmesFloatField;
    cdsNewSubjectiveDeliveryProjects: TAbmesClientDataSet;
    cdsNewSubjectiveDeliveryProjectsPRODUCT_CODE: TAbmesFloatField;
    cdsNewSubjectiveDeliveryProjectsPRODUCT_NAME: TAbmesWideStringField;
    cdsNewSubjectiveDeliveryProjectsPRODUCT_NO: TAbmesFloatField;
    cdsNewSubjectiveDeliveryProjectsDELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsNewSubjectiveDeliveryProjectsQUANTITY_DEFICIT: TAbmesFloatField;
    cdsNewSubjectiveDeliveryProjectsMIN_QUANTITY: TAbmesFloatField;
    cdsNewSubjectiveDeliveryProjectsQUANTITY: TAbmesFloatField;
    cdsNewSubjectiveDeliveryProjectsDELIVERY_PROJECT_QUANTITY: TAbmesFloatField;
    frDateInterval: TfrDateIntervalFrame;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsNewSubjectiveDeliveryProjectsMEASURE_ABBREV: TAbmesWideStringField;
    cdsNewSubjectiveDeliveryProjectsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsNewSubjectiveDeliveryProjectsACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsNewSubjectiveDeliveryProjectsPRODUCT_HAS_DOC: TAbmesFloatField;
    pnlSelection: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actQuantityExecute(Sender: TObject);
    procedure actDeficitExecute(Sender: TObject);
    procedure actQuantityOutExecute(Sender: TObject);
    procedure actQuantityInExecute(Sender: TObject);
    procedure actQuantityUpdate(Sender: TObject);
    procedure actDeficitUpdate(Sender: TObject);
    procedure actQuantityOutUpdate(Sender: TObject);
    procedure actQuantityInUpdate(Sender: TObject);
    procedure actQuantityPriceExecute(Sender: TObject);
    procedure actDeficitPriceExecute(Sender: TObject);
    procedure actQuantityPriceUpdate(Sender: TObject);
    procedure actDeficitPriceUpdate(Sender: TObject);
    procedure actAccountMeasureExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actPrintDeficitGridExecute(Sender: TObject);
    procedure actPrintDeficitGridUpdate(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdDataDblClick(Sender: TObject);
    procedure pdsGridDataParams_STORE_FULL_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actShowVIMUpdate(Sender: TObject);
    procedure actShowVIMExecute(Sender: TObject);
    procedure actNewDeficitCoverDecisionExecute(Sender: TObject);
    procedure actNewProductionOrFinOrderExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure btnDocumentationClick(Sender: TObject);
    procedure actShowTowardsReserveExecute(Sender: TObject);
    procedure actShowReserveExecute(Sender: TObject);
    procedure actCopyToClipboardExecute(Sender: TObject);
    procedure actCopyToClipboardUpdate(Sender: TObject);
    procedure actCopyNoToClipboardExecute(Sender: TObject);
    procedure actCopyNameToClipboardExecute(Sender: TObject);
    procedure btnGridDocumentationClick(Sender: TObject);
    procedure sbtnToggleProductDisplayClick(Sender: TObject);
    procedure actShowNegativeQuantityExecute(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure actActiveQuantityExecute(Sender: TObject);
    procedure actActivePriceExecute(Sender: TObject);
    procedure actActiveQuantityUpdate(Sender: TObject);
    procedure actActivePriceUpdate(Sender: TObject);
    procedure pdsGridDataParamsCHOSEN_PRODUCTSChange(Sender: TField);
    procedure pdsGridDataParamsCHOSEN_DEPTSChange(Sender: TField);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParams_DEPT_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure pdsGridDataParams_PRODUCT_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actNewDCDPopupUpdate(Sender: TObject);
    procedure actNewDCDPopupExecute(Sender: TObject);
    procedure actNewRowDeficitCoverDecisionUpdate(Sender: TObject);
    procedure actNewRowDeficitCoverDecisionExecute(Sender: TObject);
    procedure actNewRowProductionOrFinOrderUpdate(Sender: TObject);
    procedure actNewProductionOrFinOrderPopupUpdate(Sender: TObject);
    procedure actNewProductionOrFinOrderPopupExecute(Sender: TObject);
    procedure actNewRowProductionOrFinOrderExecute(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure AppEventsMessage(var Msg: tagMSG; var Handled: Boolean);
    procedure actNewProductionOrFinOrderUpdate(Sender: TObject);
    procedure actNewDeficitCoverDecisionUpdate(Sender: TObject);
    procedure actNewSubjectiveDeliveryProjectsUpdate(Sender: TObject);
    procedure actNewSubjectiveDeliveryProjectsExecute(Sender: TObject);
    procedure actSelectAllUpdate(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actNewSubjectiveDeliveryProjectsChosenUpdate(Sender: TObject);
    procedure actNewSubjectiveDeliveryProjectsAllUpdate(Sender: TObject);
    procedure actNewSubjectiveDeliveryProjectsChosenExecute(Sender: TObject);
    procedure actNewSubjectiveDeliveryProjectsAllExecute(Sender: TObject);
    procedure pdsGridDataParams_IS_TOWARDS_RESERVEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure grdDataDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure grdDataSelectionChanged(Sender: TObject);
    procedure grdDataCellClick(Column: TColumnEh);
    procedure cdsGridDataAfterClose(DataSet: TDataSet);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FMsgParams: TStrings;
    FDeficitStatusChanged: Boolean;
    FShowNegativeQuantity: Boolean;
    FSavePage: TPrinterPage;
    (*FFirstShowFilterPassed: Boolean;*)

    function GetButtonsDownCount: Integer;
    function CanEnableSpeedButton(ASpeedButton: TSpeedButton): Boolean;
    function IsFieldInFieldSet(AColumnFieldName: string; AFieldNames: array of string): Boolean;
    function FieldInFieldSetValue(ColumnFieldName: string; FieldNames: array of string): Real;
    procedure GetDeficitData(ADeficitSelection: TDeficitSelection; out ProductCode: Integer;
      out DeficitDate: Variant; out Quantity: Real);
    function NewSimpleSale(SimpleSaleClass: TEditFormClass; ADeficitSelection: TDeficitSelection): Boolean;
    function NewFinOrder: Boolean;
    procedure UpdateVisibleColumns;
    procedure QuantityFieldsGetText(Sender: TField;  var Text: String; DisplayText: Boolean);
    procedure EmptyWhenZeroFieldsGetText(Sender: TField;  var Text: String; DisplayText: Boolean);
    function Match(APrefix: string; AFieldName: string): Boolean;
    procedure ChosenProductsChange;
    procedure ChosenDeptsChange;
    procedure NewDeficitCoverDecision(ADeficitSelection: TDeficitSelection);
    procedure NewProductionOrFinOrder(ADeficitSelection: TDeficitSelection);
    function SelectedRowsCount: Integer;
    function NewItemsActionsEnabled: Boolean;
    function NewRowObjectiveItemsActionsEnabled: Boolean;
    function NewDeliveryProjectsActionsEnabled: Boolean;
    procedure NewSubjectiveDeliveryProjects(ADeliveryProjectsSelection: TDeliveryProjectsSelection);
    procedure AppendDeliveryProjectRecord;
    function MakeLastFieldName(const AFieldName: string): string;
    function SelectionStatusText: string;
    procedure SetSelectionStatusText;
  protected
    function GetOriginalFormCaption: string; override;
    class function CanUseDocs: Boolean; override;
    function ShowFilterForm: Boolean; override;
    procedure UpdateHeader;
    function IsQuantityField(const AField: TAbmesFloatField): Boolean; override;
    procedure DoBeforeShow; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    property ButtonsDownCount: Integer read GetButtonsDownCount;

    procedure SetReportHeaderParams;

    procedure Initialize; override;
    procedure Finalize; override;

    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNone): Boolean;
      
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;
  end;

implementation

uses
  dMain, uDealTypes, fQuantityDeficitFilter, uTreeNodes,
  uQuantityDeficitFieldNames, Printers, fPlannedStoreDeals,
  fStoreQuantities, fUncoveredPSDSingle, fVIMQuantity, uTreeClientUtils,
  uOpenVIMConsts, fDeficitCoverDecision, fProductionOrder, fDBDataForm,
  uUserActivityConsts, PrViewEh, uColorConsts, Clipbrd, uUtils, uClientPeriods,
  StrUtils, Variants, uXMLUtils, uProductionOrderTypes, uProductClientUtils,
  uMessageDecodingUtils, uClientDateTime, uGraphUtils, uClientApp,
  fQuantityDeficitCreateDeliveryProjects, Math, PrvFrmEh, JclStrings,
  System.UITypes, System.Types, uAbmesDBGridHelpers, uScalingUtils;

{$R *.DFM}

resourcestring
  SDeficitPriceTowardsReserve = 'ВС1 на Д|Спр.задел';
  SDeficitPriceTowardsZero = 'ВС1 на Д|Спрямо 0';
  SDeficitTowardsReserve = 'Дефицит|Спр.задел';
  SDeficitTowardsZero = 'Дефицит|Спрямо 0';
  SPriceTowardsReserve = 'ВС1 на Н|Спр.задел';
  SPriceTowardsZero = 'ВС1 на Н|Спрямо 0';
  SQuantityTowardsReserve = 'Наличност|Спр.задел';
  SQuantityTowardsZero = 'Наличност|Спрямо 0';
  SQuantityOut = 'Тегления';
  SQuantityIn = 'Постъпл.';
  SInitialQuantityTowardsReserve = 'Начална наличност|Спр.задел';
  SInitialQuantityTowardsZero = 'Начална наличност|Спрямо 0';
  SProductMinQuantity = 'Задел';
  SAccountMeasureAbbrev = 'Сч. м.ед.';
  SWorkMeasureAbbrev = 'Раб. м.ед.';
  SProductNo = '%ProductClassName%|id цифров';
  SClientProductSignatures = '%ProductClassName%|Идентификатори от Партньори';
  SNext = '>>';
  SProductName = '%ProductClassName%|id логически';
  SAllPricesIn = 'Всички цени са в';
  SDeficitChangeWarning = 'Внимание! Състоянието на справката е променено! За актуално състояние, моля презаредете справката.';

  plblProductName = 'Управляем Обект';
  plblDeptName = 'Звено';
  plblPlSecondLevel = 'Проектни движения';
  plblTimeUnit = 'Времева стъпка';
  plblTUCount = 'Брой стъпки';
  plblTitle = 'ВИМ - Табличен на Наличности от';
  STowardsZero = 'Спрямо нула';
  STowardsReserve = 'Спрямо задел';
  SSelectedSingleDeficitPeriod = 'Избрана е една %1:s с';
  SSelectedMultipleDeficitPeriods = 'Избрани са %0:d %1:s с общ';
  SSelectedDeficitQuantities = ' дефицит %2:s %3:s. Количество за ОПВ/ОПД: %4:s';

const
  dUnderscore = '_';
  dIndent = ' ';
  dCaptionGroupChar = '|';

  MinColumnsCount = 2;
  MaxColumnsCount = 15;
  DefaultColumnsCount = 7;

  IndicatorColWidth = 11;
  QuantityPriceWidth = 59;

type
  TIsTowardsReserve = Boolean;

const
  TowardsModeNames: array[TIsTowardsReserve] of string = (STowardsZero, STowardsReserve);

{ TfmQuantityDeficit }

procedure TfmQuantityDeficit.FormCreate(Sender: TObject);
begin
  inherited;
  FSavePage:= SetUpPrinter(0, poLandscape);

  FilterFormClass:= TfmQuantityDeficitFilter;

  FShowNegativeQuantity:= False;

  FDeficitStatusChanged:= False;

  cdsTempParams.CreateDataSet;
  cdsTempParams.Insert;
  cdsTempParams.Post;

  MaximizeStyle:= msStandard;

  if IsAppThemed then
    begin
      grdData.VTitleMargin:= grdData.VTitleMargin - 1;
      Height:= Height - 2;
    end;  { if }

  frDateInterval.SetDataSet(pdsGridDataParams);
  frDateInterval.FieldNames:= 'BEGIN_DATE;_END_DATE';
end;

procedure TfmQuantityDeficit.cdsGridDataAfterClose(DataSet: TDataSet);
begin
  inherited;
  SetSelectionStatusText;
end;

procedure TfmQuantityDeficit.cdsGridDataAfterOpen(DataSet: TDataSet);
  type
    TColumnTypeData = record
      FieldName: string;
      Caption: string;
      Width: Integer;
    end;

  // vajno e reda na kolonite da e syshtia, koito vryshta queryto (tova vaji i za RowHeaderColCount po-dolu)!!!
  // tova e s cel da ne se polzva grdData.FieldColumns, a direktno indexite, shtoto tova e seriozen spad v proizvoditelnostta
  const
    ColumnDefaultData: array [0..35] of TColumnTypeData = (
      (FieldName: dProductCodeFieldName;                          Caption: '';                             Width: 20),
      (FieldName: dProductNameFieldName;                          Caption: SProductName;                   Width: 201),
      (FieldName: dProductCustomCodeFieldName;                    Caption: SProductNo;                     Width: 76),
      (FieldName: dProductOtherNameFieldName;                     Caption: SClientProductSignatures;       Width: 201),
      (FieldName: dProductHasDocumentationFieldName;              Caption: '';                             Width: 20),
      (FieldName: dProductMeasureAbbrevFieldName;                 Caption: SWorkMeasureAbbrev;             Width: 29),
      (FieldName: dProductAccountMeasureAbbrevFieldName;          Caption: SAccountMeasureAbbrev;          Width: 29),
      (FieldName: dProductAccountMeasureCoefFieldName;            Caption: '';                             Width: 20),
      (FieldName: dProductMinOrderQuantityFieldName;              Caption: '';                             Width: QuantityPriceWidth),
      (FieldName: dProductMaxOrderQuantityFieldName;              Caption: '';                             Width: QuantityPriceWidth),
      (FieldName: dInitialQuantityFieldName;                      Caption: SInitialQuantityTowardsZero;    Width: QuantityPriceWidth),
      (FieldName: dInitialAccountQuantityFieldName;               Caption: SInitialQuantityTowardsZero;    Width: QuantityPriceWidth),
      (FieldName: dInitialQuantityTowardsReserveFieldName;        Caption: SInitialQuantityTowardsReserve; Width: QuantityPriceWidth),
      (FieldName: dInitialAccountQuantityTowardsReserveFieldName; Caption: SInitialQuantityTowardsReserve; Width: QuantityPriceWidth),
      (FieldName: dQuantityInFieldName;                           Caption: SQuantityIn;                    Width: QuantityPriceWidth),
      (FieldName: dQuantityOutFieldName;                          Caption: SQuantityOut;                   Width: QuantityPriceWidth),
      (FieldName: dAccountQuantityInFieldName;                    Caption: SQuantityIn;                    Width: QuantityPriceWidth),
      (FieldName: dAccountQuantityOutFieldName;                   Caption: SQuantityOut;                   Width: QuantityPriceWidth),
      (FieldName: dQuantityFieldName;                             Caption: SQuantityTowardsZero;           Width: QuantityPriceWidth),
      (FieldName: dQuantityTowardsReserveFieldName;               Caption: SQuantityTowardsReserve;        Width: QuantityPriceWidth),
      (FieldName: dAccountQuantityFieldName;                      Caption: SQuantityTowardsZero;           Width: QuantityPriceWidth),
      (FieldName: dAccountQuantityTowardsReserveFieldName;        Caption: SQuantityTowardsReserve;        Width: QuantityPriceWidth),
      (FieldName: dQuantityPriceFieldName;                        Caption: SPriceTowardsZero;              Width: QuantityPriceWidth),
      (FieldName: dQuantityPriceTowardsReserveFieldName;          Caption: SPriceTowardsReserve;           Width: QuantityPriceWidth),
      (FieldName: dDeficitFieldName;                              Caption: SDeficitTowardsZero;            Width: QuantityPriceWidth),
      (FieldName: dDeficitTowardsReserveFieldName;                Caption: SDeficitTowardsReserve;         Width: QuantityPriceWidth),
      (FieldName: dAccountDeficitFieldName;                       Caption: SDeficitTowardsZero;            Width: QuantityPriceWidth),
      (FieldName: dAccountDeficitTowardsReserveFieldName;         Caption: SDeficitTowardsReserve;         Width: QuantityPriceWidth),
      (FieldName: dAggrPrefix + dDeficitFieldName;                Caption: '';                             Width: QuantityPriceWidth),
      (FieldName: dAggrPrefix + dDeficitTowardsReserveFieldName;  Caption: '';                             Width: QuantityPriceWidth),
      (FieldName: dAggrPrefix + dAccountDeficitFieldName;         Caption: '';                             Width: QuantityPriceWidth),
      (FieldName: dAggrPrefix + dAccountDeficitTowardsReserveFieldName; Caption: '';                       Width: QuantityPriceWidth),
      (FieldName: dDeficitPriceFieldName;                         Caption: SDeficitPriceTowardsZero;       Width: QuantityPriceWidth),
      (FieldName: dDeficitPriceTowardsReserveFieldName;           Caption: SDeficitPriceTowardsReserve;    Width: QuantityPriceWidth),
      (FieldName: dProductReserveFieldName;                       Caption: SProductMinQuantity;            Width: QuantityPriceWidth),
      (FieldName: dAccountProductReserveFieldName;                Caption: SProductMinQuantity;            Width: QuantityPriceWidth)
    );

const
  RowHeaderColCount = 14;
  ColumnCountPerDateUnit = High(ColumnDefaultData) - RowHeaderColCount + 1;

var
  col: TColumnEh;
  i, j: Integer;
  TimeLabel: string;
  TimeUnit: TPeriod;
  TimeUnitCount: Integer;

begin
  inherited;

  FDeficitStatusChanged:= False;

  grdData.FrozenCols:= 0;
  TimeUnit:= GetPeriodValue(cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger);
  TimeUnitCount:= cdsGridData.Params.ParamByName('TIME_UNIT_COUNT').AsInteger;

  Assert(Low(ColumnDefaultData) = 0, 'internal error: ColumnDefaultData must be zero-based');
  grdData.Columns.BeginUpdate;
  try
    cdsGridData.DisableControls;
    try
      for i:= 0 to RowHeaderColCount - 1 do
        with ColumnDefaultData[i] do
          begin
            col:= grdData.Columns[i];
            col.Title.Caption:= FormatMessage(Caption, FMsgParams);
            col.Width:= Width;
            col.Visible:= False;

            if (FieldName <> dProductCustomCodeFieldName) and
               (cdsGridData.FieldByName(FieldName) is TAbmesFloatField) then
              with (cdsGridData.FieldByName(FieldName) as TAbmesFloatField) do
                begin
                  DisplayFormat:= ',0.0';
                  OnGetText:= EmptyWhenZeroFieldsGetText;
                end;
          end;

      for i:= 0 to TimeUnitCount do
        for j:= RowHeaderColCount to High(ColumnDefaultData) do
          with ColumnDefaultData[j] do
            begin
              TimeLabel:= GetPeriodLabel(IncDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, TimeUnit, i), TimeUnit, True);

              if (i = TimeUnitCount) then
                TimeLabel:= TimeLabel + ' ' + SNext;

              col:= grdData.Columns[j + i*ColumnCountPerDateUnit];
              col.Title.Caption:= TimeLabel + '|' + Caption;
              col.Width:= Width;
              col.Visible:= False;

              if cdsGridData.FieldByName(FieldName + '_' + IntToStr(i+1)) is TAbmesFloatField then
                (cdsGridData.FieldByName(FieldName + '_' + IntToStr(i+1)) as TAbmesFloatField).DisplayFormat:= ',0.0';

              if (FieldName = dQuantityFieldName) or
                 (FieldName = dAccountQuantityFieldName) or
                 (FieldName = dQuantityPriceFieldName) or
                 (FieldName = dQuantityTowardsReserveFieldName) or
                 (FieldName = dAccountQuantityTowardsReserveFieldName) or
                 (FieldName = dQuantityPriceTowardsReserveFieldName) then
                cdsGridData.FieldByName(FieldName + '_' + IntToStr(i+1)).OnGetText:= QuantityFieldsGetText
              else
                begin
                  if cdsGridData.FieldByName(FieldName + '_' + IntToStr(i+1)) is TAbmesFloatField then
                    (cdsGridData.FieldByName(FieldName + '_' + IntToStr(i+1)) as TAbmesFloatField).OnGetText:= EmptyWhenZeroFieldsGetText;
                end;
            end;

      if (cdsGridData.OpenCount > 1) then  // purvia put ostaviame na obshtia mehanizum da rescale-ne shirinite
        for col in grdData.Columns do
          col.Width:= ScalePixels(col.Width);

      for col in grdData.Columns do
        col.AutoFitColWidth:= False;

    finally
      cdsGridData.EnableControls;
    end;

  finally
    grdData.Columns.EndUpdate;
  end;  { try }

  UpdateVisibleColumns;
  InitializeAbmesDBGrid(grdData);
end;

procedure TfmQuantityDeficit.FormDestroy(Sender: TObject);
begin
  cdsTempParams.Close;
  SetUpPrinter(FSavePage.PaperSize, FSavePage.Orientation);
  inherited;
end;

procedure TfmQuantityDeficit.FormShow(Sender: TObject);
begin
  inherited;

  lblSecondaryCurrency.Caption:=
    SAllPricesIn + '  ' + LoginContext.SecondaryCurrencyAbbrev;

  UpdateHeader;
  UpdateVisibleColumns;
end;

procedure TfmQuantityDeficit.actQuantityExecute(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmQuantityDeficit.actDeficitExecute(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmQuantityDeficit.actQuantityOutExecute(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmQuantityDeficit.actQuantityInExecute(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmQuantityDeficit.actQuantityPriceExecute(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmQuantityDeficit.actDeficitPriceExecute(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

function TfmQuantityDeficit.CanEnableSpeedButton(
  ASpeedButton: TSpeedButton): Boolean;
begin
  Result:=
    not ((ASpeedButton.Down) and (ButtonsDownCount = 1));
end;

procedure TfmQuantityDeficit.actQuantityUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= CanEnableSpeedButton(sbtnQuantity);
end;

procedure TfmQuantityDeficit.actDeficitUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= CanEnableSpeedButton(sbtnDeficit);
end;

procedure TfmQuantityDeficit.actQuantityOutUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= CanEnableSpeedButton(sbtnQuantityOut);
end;

procedure TfmQuantityDeficit.actQuantityInUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= CanEnableSpeedButton(sbtnQuantityIn);
end;

procedure TfmQuantityDeficit.actQuantityPriceUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanEnableSpeedButton(sbtnQuantityPrice) and IsLevelOneInvestedValueVisible;
end;

procedure TfmQuantityDeficit.actDeficitPriceUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanEnableSpeedButton(sbtnDeficitPrice) and IsLevelOneInvestedValueVisible;
end;

function TfmQuantityDeficit.GetButtonsDownCount: Integer;
begin
  Result:= 0;

  if sbtnQuantity.Down then Inc(Result);
  if sbtnQuantityPrice.Down then Inc(Result);
  if sbtnDeficit.Down then Inc(Result);
  if sbtnDeficitPrice.Down then Inc(Result);
  if sbtnQuantityOut.Down then Inc(Result);
  if sbtnQuantityIn.Down then Inc(Result);
end;

procedure TfmQuantityDeficit.actAccountMeasureExecute(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

function TfmQuantityDeficit.ShowFilterForm: Boolean;
begin
  Result:= TfmQuantityDeficitFilterClass.ShowForm(
    dmDocClient,
    pdsGridDataParams,
    MinColumnsCount,
    MaxColumnsCount,
    FProductClass);
  (*
  if not FFirstShowFilterPassed then
    begin
      FFirstShowFilterPassed:= True;

      if Result and
         ( (pdsGridDataParamsHAS_DEFICIT_CODE.AsInteger = 1) or
           (pdsGridDataParamsHAS_DEFICIT_RSV_CODE.AsInteger = 1) ) then
        begin
          sbtnQuantity.Down:= False;
        end;
    end;
    *)
end;

class function TfmQuantityDeficit.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass): Boolean;
var
  f: TfmQuantityDeficit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmQuantityDeficit.actFilterExecute(Sender: TObject);
begin
  // don't call the inherited method
  // the call to RefreshDataSet procedure confuses the grid grdData
  if ShowFilterForm then
    begin
      grdData.Columns.Clear;  // bugfix na EhGrid-a

      grdData.DataSource:= nil;
      UpdateHeader;
      Application.ProcessMessages;
      grdData.DataSource:= dsGridData;

      Screen.TempCursor(crSQLWait)/
        cdsGridData.TempDisableControls/
          procedure begin
            cdsGridData.Close;
            cdsGridData.Open;
            FDeficitStatusChanged:= False;
          end;
    end;
end;

procedure TfmQuantityDeficit.UpdateHeader;
begin
  with pdsGridDataParams do
    begin
      pnlProduct.Caption:= dIndent + FieldByName('_PRODUCT_NAME').DisplayText;
      pnlDept.Caption:= dIndent + FieldByName('_DEPT_NAME').DisplayText;
      
      pnlTimeUnit.Caption:= GetPeriodTypeName(GetPeriodValue(FieldByName('TIME_UNIT_CODE').AsInteger));
      pnlTimeUnits.Caption:= IntToStr(FieldByName('TIME_UNIT_COUNT').AsInteger);
    end;
end;

procedure TfmQuantityDeficit.actPrintDeficitGridExecute(Sender: TObject);
var
  SaveCursor: TCursor;
  SavePage: TPrinterPage;
begin
  inherited;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsGridData.DisableControls;
    try
      EhPrintSaveHeader.BeforeGridText:= EhPrint.BeforeGridText;
      try
        SetReportHeaderParams;

        SavePage:= SetUpPrinter(0, poLandscape, PrinterPreview.Printer);
        try
          EhPrint.PreviewModal;
        finally
          SetUpPrinter(SavePage.PaperSize, SavePage.Orientation, PrinterPreview.Printer);
        end;   { try }
      finally
        EhPrint.BeforeGridText:= EhPrintSaveHeader.BeforeGridText;
      end;
    finally
      cdsGridData.EnableControls;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmQuantityDeficit.actPrintDeficitGridUpdate(Sender: TObject);
begin
  inherited;
  with grdData do
    (Sender as TAction).Enabled:=
      Assigned(DataSource) and
      DataSource.DataSet.Active and
      (DataSource.DataSet.RecordCount > 0);
end;

procedure TfmQuantityDeficit.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass);
begin
  FProductClass:= AProductClass;
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
end;

procedure TfmQuantityDeficit.SetSelectionStatusText;
begin
  pnlSelection.Caption:= SelectionStatusText;
end;

procedure TfmQuantityDeficit.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDateInterval) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmQuantityDeficit.SetReportHeaderParams;
var
  Check: string;
begin
  if cbProjectDeals.Checked then
    Check:= '[X]'
  else
    Check:= '[ ]';

  EhPrint.SetSubstitutes([
    'PRODUCT_NAME', pnlProduct.Caption,
    'DEPT_NAME', pnlDept.Caption,
    'TIME_UNIT', pnlTimeUnit.Caption,
    'TU_COUNT', pnlTimeUnits.Caption,
    'PL_SECOND_LEVEL', Check,
    'PRODUCT_CLASS_NAME', ProductsClassNames[FProductClass],
    'plblProductName', plblProductName,
    'plblDeptName', plblDeptName,
    'plblPlSecondLevel', plblPlSecondLevel,
    'plblTimeUnit', plblTimeUnit,
    'plblTUCount', plblTUCount,
    'plblTitle', plblTitle
  ]);

  EhPrint.PageFooter.LeftText.Text:= uClientApp.ReplaceAppParams(SPrintGridPageFooterLeftText);
  EhPrint.PageFooter.RightText.Text:= uClientApp.ReplaceAppParams(SPrintGridPageFooterRightText);
  EhPrint.PageFooter.CenterText.Text:= LoginContext.CompanyShortName;
end;

function TfmQuantityDeficit.IsFieldInFieldSet(AColumnFieldName: string;
  AFieldNames: array of string): Boolean;
var
  FieldName: string;
begin
  Result:= False;
  for FieldName in AFieldNames do
    if (Copy(AColumnFieldName, 1, Length(FieldName)) = FieldName) then
      Exit(True);
end;

function TfmQuantityDeficit.IsQuantityField(
  const AField: TAbmesFloatField): Boolean;
begin
  Result:= False;
end;

function TfmQuantityDeficit.FieldInFieldSetValue(ColumnFieldName: string;
  FieldNames: array of string): Real;
begin
  if IsFieldInFieldSet(ColumnFieldName, FieldNames) then
    Result:= grdData.DataSource.DataSet.FieldByName(ColumnFieldName).AsFloat
  else
    Result:= 0;
end;

procedure TfmQuantityDeficit.Finalize;
begin
  inherited;
  FreeAndNil(FMsgParams);
end;

procedure TfmQuantityDeficit.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if not (Column.Field is TAbmesFloatField) then
    Exit;

  if ( (Copy(Column.FieldName, 1, Length(dQuantityInFieldName)) = dQuantityInFieldName) or
       (Copy(Column.FieldName, 1, Length(dAccountQuantityInFieldName)) = dAccountQuantityInFieldName) ) and
      not (gdSelected in State) then
    Background:= ccInDealsBackground
  else
  if ( (Copy(Column.FieldName, 1, Length(dQuantityOutFieldName)) = dQuantityOutFieldName) or
       (Copy(Column.FieldName, 1, Length(dAccountQuantityOutFieldName)) = dAccountQuantityOutFieldName) ) and
      not (gdSelected in State) then
    Background:= ccOutDealsBackground;

  if (gdSelected in State) or
     ((Column.Field as TAbmesFloatField).AsFloat > -Eps) then
    Exit;

  // redyt e vajen, shtoto FieldInFieldSetValue e pederas' i ne e ednoznachna
  if (FieldInFieldSetValue(
       Column.FieldName,
       [dQuantityTowardsReserveFieldName,
        dAccountQuantityTowardsReserveFieldName,
        dQuantityPriceFieldName]) < 0) and
      not (gdSelected in State) and
      FShowNegativeQuantity then
    AFont.Color:= clRed
  else
  if (FieldInFieldSetValue(
       Column.FieldName,
       [dDeficitTowardsReserveFieldName,
        dAccountDeficitTowardsReserveFieldName]) < 0) and
      not (gdSelected in State) then
    Background:= ccDeficitTowardsReserveBackground
  else
  if (FieldInFieldSetValue(
       Column.FieldName,
       [dQuantityFieldName,
        dAccountQuantityFieldName]) < 0) and
      not (gdSelected in State) and
      FShowNegativeQuantity  then
    AFont.Color:= clRed
  else
  if (FieldInFieldSetValue(
       Column.FieldName,
       [dDeficitFieldName,
        dAccountDeficitFieldName]) < 0) and
      not (gdSelected in State) then
    Background:= ccDeficitBackground
  else
  if (Copy(Column.FieldName, 1, 8) = 'INITIAL_') and
     (grdData.DataSource.DataSet.FieldByName(Column.FieldName).AsFloat + Eps < 0) and
     not (gdSelected in State) then
    AFont.Color:= clRed
  else
    inherited;
end;

procedure TfmQuantityDeficit.grdDataSelectionChanged(Sender: TObject);
begin
  inherited;
  SetSelectionStatusText;
end;

function TfmQuantityDeficit.SelectionStatusText: string;
const
  QuantityFormat = ',0.###';
var
  r: TGridRect;
  c: Integer;
  PeriodCount: Integer;
  TotalDeficitQuantity: Real;
  FieldName: string;
  Field: TField;
  DeficitFieldName: string;
  PeriodName: string;
begin
  Result:= '';
  if cdsGridData.Active and (grdData.SelectedRows.Count = 0) then
    begin
      DeficitFieldName:= IfThen(sbtnShowTowardsReserve.Down, dDeficitTowardsReserveFieldName, dDeficitFieldName);

      PeriodCount:= 0;
      TotalDeficitQuantity:= 0;

      if (grdData.Selection.SelectionType = gstNon) then
        begin
          FieldName:= grdData.Columns[grdData.Col-1].FieldName;
          Field:= grdData.Columns[grdData.Col-1].Field;

          if Match(DeficitFieldName, FieldName) then
            begin
              PeriodCount:= 1;
              TotalDeficitQuantity:= Field.AsFloat;
            end;
        end;

      if (grdData.Selection.SelectionType = gstRectangle) then
        begin
          r:= grdData.Selection.SelectionToGridRect;
          if (r.Top = r.Bottom) then
            for c:= r.Left to r.Right do
              begin
                FieldName:= grdData.Columns[c-1].FieldName;
                Field:= grdData.Columns[c-1].Field;

                if Match(DeficitFieldName, FieldName) then
                  Inc(PeriodCount);

                if Match(DeficitFieldName, FieldName) then
                  TotalDeficitQuantity:= TotalDeficitQuantity + Field.AsFloat;
              end;
        end;

      if (PeriodCount > 0) then
        begin
          PeriodName:= GetPeriodTypeName(GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger), PeriodCount > 1).ToLowerInvariant;

          Result:=
            Format(IfThen(PeriodCount = 1, SSelectedSingleDeficitPeriod, SSelectedMultipleDeficitPeriods) + SSelectedDeficitQuantities, [
              PeriodCount,
              PeriodName,
              FormatFloat(QuantityFormat, TotalDeficitQuantity),
              StrTrimCharRight(cdsGridData.FieldByName(dProductMeasureAbbrevFieldName).AsString, '.'),
              GetOrderQuantitiesText(
                cdsGridData.FieldByName(dProductMinOrderQuantityFieldName).AsVariant,
                cdsGridData.FieldByName(dProductMaxOrderQuantityFieldName).AsVariant,
                cdsGridData.FieldByName(dProductMeasureAbbrevFieldName).AsString
              )
            ]);
        end;
    end;
end;

procedure TfmQuantityDeficit.Initialize;
begin
  inherited Initialize;

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmQuantityDeficit.grdDataCellClick(Column: TColumnEh);
begin
  inherited;
  SetSelectionStatusText;
end;

procedure TfmQuantityDeficit.grdDataDblClick(Sender: TObject);
var
  IntervalNo: Integer;
  SelectedFieldName: string;
  Period: TPeriod;
  TimeUnits: Integer;
  StartDate: TDateTime;
  LastPSDDate: TDateTime;
  b: Boolean;
begin
  inherited;

  if not Assigned(grdData.SelectedField) then
    Exit;

  TimeUnits:= cdsGridData.Params.ParamByName('TIME_UNIT_COUNT').AsInteger;
  Period:= GetPeriodValue(cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger);

  SelectedFieldName:= grdData.SelectedField.FieldName;
  IntervalNo:= Length(SelectedFieldName);
  while CharInSet(SelectedFieldName[IntervalNo], ['0'..'9']) do
    Dec(IntervalNo);

  IntervalNo:= StrToIntDef(Copy(SelectedFieldName, IntervalNo+1, Length(SelectedFieldName) - IntervalNo), 0);

  StartDate:= IncDate(GetPeriodFirstDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, Period), Period, IntervalNo-1);

  cdsTempParams.Edit;
  cdsTempParams.ClearFields;

  if (IntervalNo <= TimeUnits) then
    begin
      cdsTempParams.FieldByName('END_DATE').AsDateTime:=
        GetPeriodLastDate(StartDate, Period);
      cdsTempParams.FieldByName('END_PERIOD_DATE').AsDateTime:=
        GetPeriodLastDate(StartDate, Period);
      cdsTempParams.FieldByName('STORE_DEAL_DATE').AsDateTime:=
        GetPeriodLastDate(StartDate, Period);
    end
  else
    begin
      cdsTempParams.FieldByName('END_DATE').Clear;
      LastPSDDate:= dmMain.SvrDeficit.GetLastPSDDate;
      cdsTempParams.FieldByName('END_PERIOD_DATE').AsDateTime:= LastPSDDate;
      cdsTempParams.FieldByName('STORE_DEAL_DATE').AsDateTime:= LastPSDDate;
    end;

  if (IntervalNo = 1) then
    begin
      cdsTempParams.FieldByName('START_DATE').Clear;
      cdsTempParams.FieldByName('START_PERIOD_DATE').Clear;
    end
  else
    begin
      cdsTempParams.FieldByName('START_DATE').AsDateTime:= StartDate;
      cdsTempParams.FieldByName('START_PERIOD_DATE').AsDateTime:= StartDate;
    end;

  cdsTempParams.FieldByName('BEGIN_DATE').AsDateTime:= StartDate;

  cdsTempParams.FieldByName('CHOSEN_DEPTS').AsString:= pdsGridDataParamsCHOSEN_DEPTS.AsString;
  cdsTempParams.FieldByName('CHOSEN_PRODUCTS').AsString:=
    ChosenNodeCodeToXML(cdsGridData.FieldByName('PRODUCT_CODE').AsInteger);

  cdsTempParams.FieldByName('IS_ANNULED').AsFloat:= 0;
  cdsTempParams.FieldByName('IS_NOT_ANNULED').AsFloat:= 1;
  cdsTempParams.FieldByName('IS_CLOSED').AsFloat:= 0;
  cdsTempParams.FieldByName('IS_NOT_CLOSED').AsFloat:= 1;

  cdsTempParams.FieldByName('INCLUDE_PL_SECOND_LEVEL').AsBoolean:=
    (cdsGridData.Params.ParamByName('MAX_PSD_TYPE_CODE').AsFloat = 2);

  cdsTempParams.FieldByName('IS_GROUPED_BY_STORE').AsBoolean:= ShiftIsPressed;
  cdsTempParams.FieldByName('IS_TOWARDS_RESERVE').AsBoolean:= sbtnShowTowardsReserve.Down;

  if cdsTempParams.FieldByName('INCLUDE_PL_SECOND_LEVEL').AsBoolean then
    cdsTempParamsPLANNED_STORE_DEAL_TYPE_CODE.Clear
  else
    cdsTempParamsPLANNED_STORE_DEAL_TYPE_CODE.AsInteger:= psdtNormal;

  cdsTempParams.FieldByName('TIME_UNIT_COUNT').AsFloat:= 1;

  cdsTempParams.FieldByName('DATE_UNIT_CODE').AsFloat:= cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger;
  cdsTempParams.FieldByName('TIME_UNIT_CODE').AsFloat:= cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger;

  with grdData.SelectedField do
    begin
      if Match(dInitialQuantityFieldName, FieldName) or
         Match(dInitialQuantityTowardsReserveFieldName, FieldName) or
         Match(dInitialAccountQuantityFieldName, FieldName) or
         Match(dInitialAccountQuantityTowardsReserveFieldName, FieldName) or
         Match(dQuantityFieldName, FieldName) or
         Match(dQuantityTowardsReserveFieldName, FieldName) or
         Match(dAccountQuantityFieldName, FieldName) or
         Match(dAccountQuantityTowardsReserveFieldName, FieldName) or
         Match(dQuantityPriceFieldName, FieldName) or
         Match(dQuantityPriceTowardsReserveFieldName, FieldName) then
        begin  // наличност
          cdsTempParams.Post;
          TfmStoreQuantities.ShowForm(dmDocClient, cdsTempParams, EditMode, doNone, False, FProductClass);
        end;

      if Match(dDeficitFieldName, FieldName) or
         Match(dDeficitTowardsReserveFieldName, FieldName) or
         Match(dAccountDeficitFieldName, FieldName) or
         Match(dAccountDeficitTowardsReserveFieldName, FieldName) or
         Match(dDeficitPriceFieldName, FieldName) or
         Match(dDeficitPriceTowardsReserveFieldName, FieldName) then
        begin  // дефицит
          cdsTempParams.Post;
          b:= TfmUncoveredPSDSingle.ShowForm(dmDocClient, cdsTempParams, EditMode, doNone, False, FProductClass);
          FDeficitStatusChanged:= FDeficitStatusChanged or b;
        end;

      if Match(dQuantityInFieldName, FieldName) or
         Match(dAccountQuantityInFieldName, FieldName) then
        begin  // планови постъпления
          cdsTempParams.FieldByName('IN_P').AsFloat:= 1;
          cdsTempParams.FieldByName('OUT_P').AsFloat:= 0;
          cdsTempParams.Post;
          TfmPlannedStoreDeals.ShowForm(dmDocClient, cdsTempParams, EditMode, doNone, False, FProductClass);
        end;

      if Match(dQuantityOutFieldName, FieldName) or
         Match(dAccountQuantityOutFieldName, FieldName) then
        begin  // планови тегления
          cdsTempParams.FieldByName('IN_P').AsFloat:= 0;
          cdsTempParams.FieldByName('OUT_P').AsFloat:= 1;
          cdsTempParams.Post;
          b:= TfmPlannedStoreDeals.ShowForm(dmDocClient, cdsTempParams, EditMode, doNone, False, FProductClass);
          FDeficitStatusChanged:= FDeficitStatusChanged or b;
        end;
    end;
end;

type
  TCustomDBAxisGridEhHack = class(TCustomDBAxisGridEh);

procedure TfmQuantityDeficit.grdDataDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);

  function ColumnDeficitColor: TColor;
  begin
    if Column.FieldName.Contains('RSV_') then
      Result:= ccDeficitTowardsReserveBackground
    else
      Result:= ccDeficitBackground;
  end;

  function FixSelectedColor(const AColor: TColor): TColor;
  begin
    if (gdSelected in State) then
      Result:= GetNearestColor(grdData.Canvas.Handle, LightenColorEh(AColor, clHighlight, True))
    else
      Result:= AColor;
  end;

var
  R: TRect;
  Value: string;
  DeficitFieldName: string;
  AggrDeficitFieldName: string;
  AbsAggrDeficit: Real;
  MinOrderQuantityField: TField;
  MaxOrderQuantityField: TField;
  AbsDeficit: Real;
  PartialR: TRect;
  XFrameOffs: Integer;
  YFrameOffs: Integer;
  remaining: Real;
  LastAggrDeficitFieldName: string;
  LasAggrDeficitField: TField;
  LasAggrDeficit: Real;
begin
//  inherited;
  if (Column.FieldName <> '') and
     (Column.FieldName.Contains('DEFICIT_')) and
     (not (gdFocused in State)) then
    begin
      DeficitFieldName:= Column.FieldName.Replace('ACCOUNT_', '');
      AggrDeficitFieldName:= dAggrPrefix + DeficitFieldName;
      LastAggrDeficitFieldName:=
        AggrDeficitFieldName.Substring(0, AggrDeficitFieldName.LastIndexOf('_') + 1) +
        IntToStr(pdsGridDataParamsTIME_UNIT_COUNT.AsInteger + Ord(not sbtnShowTowardsReserve.Down));

      AbsDeficit:= Abs(cdsGridData.FieldByName(DeficitFieldName).AsFloat);
      AbsAggrDeficit:= Abs(cdsGridData.FieldByName(AggrDeficitFieldName).AsFloat);

      MinOrderQuantityField:= cdsGridData.FieldByName(dProductMinOrderQuantityFieldName);     // optimize: make global
      MaxOrderQuantityField:= cdsGridData.FieldByName(dProductMaxOrderQuantityFieldName);     //
      LasAggrDeficitField:= cdsGridData.FindField(LastAggrDeficitFieldName);

      if Assigned(LasAggrDeficitField) then
        LasAggrDeficit:= LasAggrDeficitField.AsFloat
      else
        LasAggrDeficit:= 0;

      R:= Rect;
      if (dghFooter3D in grdData.OptionsEh) then
      begin
        XFrameOffs:= 1;
        InflateRect(R, -1, -1);
      end else XFrameOffs := 2;
      YFrameOffs:= XFrameOffs;
      if grdData.Flat then Dec(YFrameOffs);

      if (AbsDeficit > 0) and
         not MaxOrderQuantityField.IsNull and
         (MaxOrderQuantityField.AsFloat < AbsAggrDeficit) then
        begin
          PartialR:= R;

          remaining:= AbsAggrDeficit - MaxOrderQuantityField.AsFloat;
          PartialR.Left:= Max(R.Left, R.Right - Trunc(SimpleRoundTo((remaining / AbsDeficit) * R.Width)));

          grdData.Canvas.Brush.Color:= FixSelectedColor(ColumnDeficitColor);
          grdData.Canvas.FillRect(R);

          grdData.Canvas.Brush.Color:= FixSelectedColor(ccDeficitExceedingOrderQuantity);
          grdData.Canvas.FillRect(PartialR);

          Value:= Column.DisplayText;
          grdData.Canvas.Brush.Style:= bsClear;

          TCustomDBAxisGridEhHack(grdData).WriteCellText(Column, Canvas, R, True, XFrameOffs, YFrameOffs, Value,
            Column.Alignment, Column.Layout, False, Column.EndEllipsis, 0, 0, True);

          Exit;
        end;

      if (AbsDeficit > 0) and
         (MinOrderQuantityField.AsFloat > AbsAggrDeficit) and
         (AbsAggrDeficit = Abs(LasAggrDeficit)) then
        begin
          PartialR:= R;
          PartialR.Right:= PartialR.Right - 10;

          grdData.Canvas.Brush.Color:= Column.Color;
          grdData.Canvas.FillRect(R);

          grdData.Canvas.Brush.Color:= FixSelectedColor(ColumnDeficitColor);
          grdData.Canvas.FillRect(PartialR);

          grdData.Canvas.Pen.Color:= grdData.Canvas.Brush.Color;
          grdData.Canvas.Polygon([
            Point(PartialR.Right, PartialR.Top+1),
            Point(PartialR.Right, PartialR.Bottom-1),
            Point(R.Right-1, (R.Top + R.Bottom) div 2)
          ]);

          Value:= Column.DisplayText;
          grdData.Canvas.Brush.Style:= bsClear;

          TCustomDBAxisGridEhHack(grdData).WriteCellText(Column, Canvas, R, True, XFrameOffs, YFrameOffs, Value,
            Column.Alignment, Column.Layout, False, Column.EndEllipsis, 0, 0, True);

          Exit;
        end;
    end;

  grdData.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmQuantityDeficit.pdsGridDataParams_STORE_FULL_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmQuantityDeficit.actShowVIMUpdate(Sender: TObject);
begin
  inherited;
  with grdData do
    (Sender as TAction).Enabled:=
      Assigned(DataSource) and
      DataSource.DataSet.Active and
      (DataSource.DataSet.RecordCount > 0);
end;

procedure TfmQuantityDeficit.AppEventsMessage(var Msg: tagMSG; var Handled: Boolean);
begin
  inherited;
  PreventGridColumnSelection(grdData, Msg, Handled);
end;

procedure TfmQuantityDeficit.actShowVIMExecute(Sender: TObject);
var
  b: Boolean;
  p: TPeriod;
begin
  inherited;
  with cdsTempParams do
    begin
      Edit;
      ClearFields;
      FieldByName('CHOSEN_PRODUCTS').AsString:= ChosenNodeCodeToXML(cdsGridData.FieldByName('PRODUCT_CODE').AsInteger);
      FieldByName('CHOSEN_DEPTS').AsString:= pdsGridDataParamsCHOSEN_DEPTS.AsString;

      p:= GetPeriodValue(cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger);
      FieldByName('BEGIN_DATE').AsDateTime:= GetPeriodFirstDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, p);
      FieldByName('TIME_UNIT_COUNT').AsFloat:= cdsGridData.Params.ParamByName('TIME_UNIT_COUNT').AsInteger;
      FieldByName('TIME_UNIT_CODE').AsFloat:= cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsFloat;
      FieldByName('INCLUDE_PLANNED_SECOND_LEVEL').AsBoolean:= (cdsGridData.Params.ParamByName('MAX_PSD_TYPE_CODE').AsFloat = 2);
      FieldByName('IS_TOWARDS_RESERVE').AsBoolean:= sbtnShowTowardsReserve.Down;
      Post;
    end;

  b:= TfmVIMQuantity.ShowForm(dmDocClient, cdsTempParams, EditMode, False, vofVIMOpenedFromDef, FProductClass);
  FDeficitStatusChanged:= FDeficitStatusChanged or b;
end;

procedure TfmQuantityDeficit.actNewDCDPopupExecute(Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(btnNewDCDPopup, pmNewDeficitCoverDecision);
end;

procedure TfmQuantityDeficit.actNewDCDPopupUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    NewItemsActionsEnabled or
    NewRowObjectiveItemsActionsEnabled;
end;

procedure TfmQuantityDeficit.NewDeficitCoverDecision(ADeficitSelection: TDeficitSelection);
var
  ProductCode: Integer;
  DeficitDate: Variant;
  Quantity: Real;
  b: Boolean;
begin
  GetDeficitData(ADeficitSelection, ProductCode, DeficitDate, Quantity);
  if not VarIsNull(DeficitDate) then
    DeficitDate:= GetPeriodFirstDate(DeficitDate, GetPeriodValue(cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger));

  mdsNewDeficitCoverDecision.TempCreateDataSet/
    procedure begin
      mdsNewDeficitCoverDecision.SafeAppend/
        procedure begin
          mdsNewDeficitCoverDecisionP_PRODUCT_CODE.AsInteger:= ProductCode;
          mdsNewDeficitCoverDecisionP_DEFICIT_COVER_DATE.AsVariant:= DeficitDate;

          if (Quantity < 0) then
            mdsNewDeficitCoverDecisionP_WORK_QUANTITY.AsFloat:= Abs(Quantity)
          else
            mdsNewDeficitCoverDecisionP_WORK_QUANTITY.Clear;
        end;  { lambda }

      b:= TfmDeficitCoverDecision.ShowForm(dmDocClient, mdsNewDeficitCoverDecision, emInsert, False, doDataset, pobtEmpty, FProductClass);
      FDeficitStatusChanged:= FDeficitStatusChanged or b;
    end;  { lambda }
end;

procedure TfmQuantityDeficit.actNewDeficitCoverDecisionExecute(Sender: TObject);
begin
  inherited;
  NewDeficitCoverDecision(dsCell);
end;

procedure TfmQuantityDeficit.actNewDeficitCoverDecisionUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= NewItemsActionsEnabled;
end;

function TfmQuantityDeficit.NewItemsActionsEnabled: Boolean;
begin
  if FShowNegativeQuantity then
    Result:=
      (EditMode = emEdit) and
      Assigned(grdData.Columns[grdData.Col - 1].Field) and
      (grdData.Columns[grdData.Col - 1].Field is TNumericField) and
      (SelectedRowsCount <= 1)
  else
    Result:=
      (EditMode = emEdit) and
      (SelectedRowsCount <= 1) and
      IsFieldInFieldSet(
        grdData.Columns[grdData.Col - 1].FieldName,
        [ dInitialQuantityTowardsReserveFieldName,
          dInitialAccountQuantityTowardsReserveFieldName,
          dDeficitFieldName,
          dAccountDeficitFieldName,
          dQuantityFieldName]
      );
end;

function TfmQuantityDeficit.NewRowObjectiveItemsActionsEnabled: Boolean;
begin
  Result:=
    (EditMode = emEdit) and
    not cdsGridData.IsEmpty and
    (SelectedRowsCount <= 1);
end;

procedure TfmQuantityDeficit.GetDeficitData(ADeficitSelection: TDeficitSelection; out ProductCode: Integer;
  out DeficitDate: Variant; out Quantity: Real);

  function DeficitDateByFieldName(AFieldName: string): TDateTime;
  var
    i: Integer;
    p: TPeriod;
  begin
    p:= GetPeriodValue(cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger);

    i:= Length(AFieldName);
    while CharInSet(AFieldName[i], ['0'..'9']) do
      Dec(i);

    i:= StrToIntDef(Copy(AFieldName, i+1, Length(AFieldName) - i), 0);

    Result:= IncDate(GetPeriodLastDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, p), p, i-1);
  end;

  function GetDeficitQuantity(const AFieldName: string): Real;
  var
    CurrentField: TField;
  begin
    CurrentField:= cdsGridData.FieldByName(StringReplace(AFieldName, 'ACCOUNT_', '', [rfReplaceAll]));
    DeficitDate:= DeficitDateByFieldName(CurrentField.FieldName);

    if ( ( (StartsStr(dQuantityFieldName, CurrentField.FieldName)) and
           (not FShowNegativeQuantity)
         ) or
         StartsStr(dQuantityPriceFieldName, CurrentField.FieldName) or
         StartsStr(dDeficitPriceFieldName, CurrentField.FieldName)
       ) and
       (CurrentField.AsFloat < 0) then
      Result:= 0
    else
      Result:= CurrentField.AsFloat;
  end;

var
  CurrentField: TField;
  col: TColumnEh;
  r: TGridRect;
  c: Integer;
  DeficitFieldName: string;
  FieldName: string;
begin
  ProductCode:= cdsGridData.FieldByName('PRODUCT_CODE').AsInteger;

  case ADeficitSelection of
    dsCell:
      begin
        Quantity:= 0;

        case grdData.Selection.SelectionType of
          gstNon:
            Quantity:= GetDeficitQuantity(grdData.SelectedField.FieldName);

          gstRectangle:
            begin
              DeficitFieldName:= IfThen(sbtnShowTowardsReserve.Down, dDeficitTowardsReserveFieldName, dDeficitFieldName);

              r:= grdData.Selection.SelectionToGridRect;
              Assert(r.Top = r.Bottom);
              for c:= r.Left to r.Right do
                begin
                  FieldName:= grdData.Columns[c-1].FieldName;
                  if Match(DeficitFieldName, FieldName) then
                    Quantity:= Quantity + GetDeficitQuantity(FieldName);
                end;
            end;
        end;
      end;

    dsRow:
      begin
        DeficitDate:= Null;
        Quantity:= 0;

        for col in grdData.AllColumns.Reversed.Filter(col.IsVisiblePredicate) do
          begin
            CurrentField:= cdsGridData.FieldByName(StringReplace(col.FieldName, 'ACCOUNT_', '', [rfReplaceAll]));
            if not StartsStr(dDeficitPriceFieldName, CurrentField.FieldName) and
               StartsStr(dDeficitFieldName, CurrentField.FieldName) and
               (CurrentField.AsFloat < 0) then
              begin
                Quantity:= Quantity + CurrentField.AsFloat;
                DeficitDate:= DeficitDateByFieldName(CurrentField.FieldName);
              end;
          end;
      end;
  else
    raise Exception.Create('Unknown DeficitSelection');
  end;  { case }
end;

function TfmQuantityDeficit.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

function TfmQuantityDeficit.NewSimpleSale(SimpleSaleClass: TEditFormClass; ADeficitSelection: TDeficitSelection): Boolean;
var
  ProductCode: Integer;
  DeficitDate: Variant;
  Quantity: Real;
begin
  inherited;

  GetDeficitData(ADeficitSelection, ProductCode, DeficitDate, Quantity);
  if not VarIsNull(DeficitDate) then
    DeficitDate:= GetPeriodFirstDate(DeficitDate, GetPeriodValue(cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger));

  Result:=
    mdsNewSimpleSale.TempCreateDataSet/
      function: Boolean begin
        mdsNewSimpleSale.SafeAppend/
          procedure begin
            mdsNewSimpleSalePRODUCT_CODE.AsInteger:= ProductCode;
            mdsNewSimpleSaleENTER_SH_STORE_PLAN_BEGIN_DATE.AsVariant:= DeficitDate;
            mdsNewSimpleSaleENTER_SH_STORE_PLAN_END_DATE.AsVariant:= DeficitDate;

            if (Quantity < 0) then
              mdsNewSimpleSaleQUANTITY.AsFloat:= Abs(Quantity)
            else
              mdsNewSimpleSaleQUANTITY.Clear;
          end;  { lambda }

        Result:= SimpleSaleClass.ShowForm(dmDocClient, mdsNewSimpleSale, emInsert, doDataset);
      end;  { lambda }
end;

function TfmQuantityDeficit.NewFinOrder: Boolean;
begin
  Result:= False;
end;

procedure TfmQuantityDeficit.NewProductionOrFinOrder(ADeficitSelection: TDeficitSelection);
var
  b: Boolean;
begin
  b:= False;
  case FProductClass of
    pcNormal:
      b:= NewSimpleSale(TfmProductionOrder, ADeficitSelection);

    pcFinancial:
      b:= NewFinOrder;

    else
      Assert(False);
  end;

  FDeficitStatusChanged:= FDeficitStatusChanged or b;
end;

procedure TfmQuantityDeficit.actNewProductionOrFinOrderExecute(Sender: TObject);
begin
  inherited;
  NewProductionOrFinOrder(dsCell);
end;

procedure TfmQuantityDeficit.actNewProductionOrFinOrderPopupExecute(Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(btnNewProductionOrFinOrderPopup, pmNewProductionOrFinOrder);
end;

procedure TfmQuantityDeficit.actNewProductionOrFinOrderPopupUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    NewItemsActionsEnabled or
    NewRowObjectiveItemsActionsEnabled;
end;

procedure TfmQuantityDeficit.actNewProductionOrFinOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    NewItemsActionsEnabled and
    (grdData.SelectedRows.Count = 0);
end;

procedure TfmQuantityDeficit.actNewRowDeficitCoverDecisionExecute(Sender: TObject);
begin
  inherited;
  NewDeficitCoverDecision(dsRow);
end;

procedure TfmQuantityDeficit.actNewRowDeficitCoverDecisionUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= NewRowObjectiveItemsActionsEnabled;
end;

procedure TfmQuantityDeficit.actNewRowProductionOrFinOrderExecute(Sender: TObject);
begin
  inherited;
  NewProductionOrFinOrder(dsRow);
end;

procedure TfmQuantityDeficit.actNewRowProductionOrFinOrderUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= NewRowObjectiveItemsActionsEnabled;
end;

function TfmQuantityDeficit.MakeLastFieldName(const AFieldName: string): string;
begin
  Result:= Format('%s_%d', [AFieldName, pdsGridDataParamsTIME_UNIT_COUNT.AsInteger]);
end;

procedure TfmQuantityDeficit.AppendDeliveryProjectRecord;
var
  ProductCode: Integer;
  DeficitDate: Variant;
  Quantity: Real;
begin
  GetDeficitData(dsRow, ProductCode, DeficitDate, Quantity);

  if VarIsNull(DeficitDate) then
    DeficitDate:= pdsGridDataParamsBEGIN_DATE.AsDateTime
  else
    DeficitDate:= GetPeriodFirstDate(DeficitDate, GetPeriodValue(cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger));

  cdsNewSubjectiveDeliveryProjects.SafeAppend/
    procedure begin
      cdsNewSubjectiveDeliveryProjectsPRODUCT_CODE.Assign(cdsGridData.FieldByName('PRODUCT_CODE'));
      cdsNewSubjectiveDeliveryProjectsPRODUCT_NAME.Assign(cdsGridData.FieldByName('PRODUCT_NAME'));
      cdsNewSubjectiveDeliveryProjectsPRODUCT_NO.Assign(cdsGridData.FieldByName('PRODUCT_CUSTOM_CODE'));
      cdsNewSubjectiveDeliveryProjectsPRODUCT_HAS_DOC.Assign(cdsGridData.FieldByName('PRODUCT_HAS_DOCUMENTATION'));
      cdsNewSubjectiveDeliveryProjectsDELIVERY_DATE.AsDateTime:= DeficitDate;

      cdsNewSubjectiveDeliveryProjectsMEASURE_ABBREV.Assign(cdsGridData.FieldByName('MEASURE_ABBREV'));
      cdsNewSubjectiveDeliveryProjectsACCOUNT_MEASURE_ABBREV.Assign(cdsGridData.FieldByName('ACCOUNT_MEASURE_ABBREV'));
      cdsNewSubjectiveDeliveryProjectsACCOUNT_MEASURE_COEF.Assign(cdsGridData.FieldByName('ACCOUNT_MEASURE_COEF'));

      if (Quantity < 0) then
        cdsNewSubjectiveDeliveryProjectsQUANTITY_DEFICIT.AsFloat:= Abs(Quantity);

      if pdsGridDataParams_IS_TOWARDS_RESERVE.AsBoolean then
        cdsNewSubjectiveDeliveryProjectsMIN_QUANTITY.AsVarFloat:=
          cdsGridData.FieldByName(MakeLastFieldName(dProductReserveFieldName)).AsFloat;

      cdsNewSubjectiveDeliveryProjectsQUANTITY.AsVarFloat:=
        Max(0,
          cdsGridData.FieldByName(
            MakeLastFieldName(
              IfThen(pdsGridDataParams_IS_TOWARDS_RESERVE.AsBoolean, dQuantityTowardsReserveFieldName, dQuantityFieldName))).AsFloat);

      cdsNewSubjectiveDeliveryProjectsDELIVERY_PROJECT_QUANTITY.Assign(cdsNewSubjectiveDeliveryProjectsQUANTITY_DEFICIT);
    end;
end;

procedure TfmQuantityDeficit.NewSubjectiveDeliveryProjects(ADeliveryProjectsSelection: TDeliveryProjectsSelection);
var
  b: Boolean;
begin
  pdsGridDataParams.RecalcFields;

  cdsNewSubjectiveDeliveryProjects.TempCreateDataSet/
    procedure begin
      cdsGridData.TempDisableControls/
        cdsGridData.PreserveBookmark/
          procedure begin
            case ADeliveryProjectsSelection of
              dpsAll:
                cdsGridData.ForEach/
                  ToProc(AppendDeliveryProjectRecord);

              dpsSelected:
                if (grdData.SelectedRows.Count = 0) then
                  AppendDeliveryProjectRecord
                else
                  cdsGridData.ForEachSelected(grdData)/
                    ToProc(AppendDeliveryProjectRecord);
            else
              raise Exception.Create('Unknown DeliveryProjectsSelection');
            end;
          end;

      b:= TfmQuantityDeficitCreateDeliveryProjects.ShowForm(dmDocClient, nil, emEdit, doNone, False, FProductClass, pdsGridDataParams, cdsNewSubjectiveDeliveryProjects);
      FDeficitStatusChanged:= FDeficitStatusChanged or (b and (pdsGridDataParamsMAX_PSD_TYPE_CODE.AsInteger = 2));
    end;
end;

procedure TfmQuantityDeficit.actNewSubjectiveDeliveryProjectsAllExecute(Sender: TObject);
begin
  inherited;
  NewSubjectiveDeliveryProjects(dpsAll);
end;

procedure TfmQuantityDeficit.actNewSubjectiveDeliveryProjectsAllUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= NewDeliveryProjectsActionsEnabled;
end;

procedure TfmQuantityDeficit.actNewSubjectiveDeliveryProjectsChosenExecute(Sender: TObject);
begin
  inherited;
  NewSubjectiveDeliveryProjects(dpsSelected);
end;

procedure TfmQuantityDeficit.actNewSubjectiveDeliveryProjectsChosenUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    NewDeliveryProjectsActionsEnabled and
    (grdData.SelectedRows.Count > 0);
end;

procedure TfmQuantityDeficit.actNewSubjectiveDeliveryProjectsExecute(Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(btnNewSubjectiveDeliveryProjectsPopup, pmNewSubjectiveDeliveryProjects);
end;

function TfmQuantityDeficit.NewDeliveryProjectsActionsEnabled: Boolean;
begin
  Result:=
    (EditMode = emEdit) and
    not cdsGridData.IsEmpty;
end;

procedure TfmQuantityDeficit.actNewSubjectiveDeliveryProjectsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= NewDeliveryProjectsActionsEnabled;
end;

function TfmQuantityDeficit.SelectedRowsCount: Integer;
begin
  with grdData.Selection.SelectionToGridRect do
    Result:= Bottom - Top + 1;
end;

procedure TfmQuantityDeficit.actFormUpdate(Sender: TObject);
begin
  inherited;

  if FDeficitStatusChanged then
    pnlWarning.Caption:= SDeficitChangeWarning
  else
    pnlWarning.Caption:= '';

  pnlProductDocumentation.Visible:= (not pdsGridDataParams_PRODUCT_CODE.IsNull) and (pdsGridDataParams_PRODUCT_CODE.Value <> tnRootProductCode);

  if cdsGridData.FieldByName(dProductHasDocumentationFieldName).IsNull then
    btnGridDocumentation.ImageIndex:= 0
  else
    btnGridDocumentation.ImageIndex:= cdsGridData.FieldByName(dProductHasDocumentationFieldName).AsInteger;

  sbtnToggleProductDisplay.Visible:= (FProductClass = pcNormal);
end;

procedure TfmQuantityDeficit.btnDocumentationClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, btnDocumentation,
    pdsGridDataParams_PRODUCT_CODE.AsInteger);  // ne e Null zashtoto pri Null butona e izkliuchen
end;

class function TfmQuantityDeficit.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmQuantityDeficit.actShowTowardsReserveExecute(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmQuantityDeficit.UpdateVisibleColumns;

  function ColTimeUnit(AFieldName: string): Integer;
  var
    LD: Integer;
  begin
    LD:= LastDelimiter('_', AFieldName);
    Result:= StrToIntDef(Copy(AFieldName, LD+1, Length(AFieldName)-LD), 0);
  end;

var
  ShowWorkMeasure,
  ShowAccountMeasure,
  ShowTowardsZero,
  ShowTowardsReserve,
  ShowQuantity,
  ShowQuantityPrice,
  ShowDeficit,
  ShowDeficitPrice,
  ShowQuantityIn,
  ShowQuantityOut,
  ShowReserve: Boolean;
  ShowProductOtherName: Boolean;
  ShowActiveQuantity: Boolean;
  ShowActivePrice: Boolean;
  i: Integer;
  SaveCursor: TCursor;
  TimeUnitCount: Integer;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    grdData.Columns.BeginUpdate;
    try
      ShowWorkMeasure:= sbtnWorkMeasure.Down;
      ShowAccountMeasure:= sbtnAccountMeasure.Down;
      ShowTowardsZero:= not sbtnShowTowardsReserve.Down;
      ShowTowardsReserve:= sbtnShowTowardsReserve.Down;
      ShowQuantity:= sbtnQuantity.Down or not sbtnQuantity.Enabled;
      ShowQuantityPrice:= sbtnQuantityPrice.Down;
      ShowDeficit:= sbtnDeficit.Down or not sbtnDeficit.Enabled;
      ShowDeficitPrice:= sbtnDeficitPrice.Down;
      ShowQuantityIn:= sbtnQuantityIn.Down;
      ShowQuantityOut:= sbtnQuantityOut.Down;
      ShowReserve:= sbtnShowReserve.Down;
      ShowProductOtherName:= sbtnToggleProductDisplay.Down;
      ShowActiveQuantity:= False;
      ShowActivePrice:= False;
      TimeUnitCount:= cdsGridData.Params.ParamByName('TIME_UNIT_COUNT').AsInteger;

      grdData.FrozenCols:= 0;

      for i:= 0 to grdData.Columns.Count - 1 do
        with grdData.Columns[i] do
          Visible:=                                                                                                        // ne e poslednata kolonka
            (Match(dProductNameFieldName, FieldName)                         and not ShowProductOtherName                                                                                      ) or
            (Match(dProductOtherNameFieldName, FieldName)                    and     ShowProductOtherName                                                                                      ) or
            (Match(dProductCustomCodeFieldName, FieldName)                                                                                                                                     ) or
            (Match(dProductMeasureAbbrevFieldName, FieldName)                and ShowWorkMeasure                                                                                               ) or
            (Match(dProductAccountMeasureAbbrevFieldName, FieldName)         and ShowAccountMeasure                                                                                            ) or
            (Match(dProductReserveFieldName, FieldName)                      and ShowWorkMeasure    and ShowReserve        and (ColTimeUnit(FieldName) <= TimeUnitCount)                       ) or
            (Match(dAccountProductReserveFieldName, FieldName)               and ShowAccountMeasure and ShowReserve        and (ColTimeUnit(FieldName) <= TimeUnitCount)                       ) or
            (Match(dInitialQuantityFieldName, FieldName)                     and ShowWorkMeasure    and ShowTowardsZero                                                                        ) or
            (Match(dInitialQuantityTowardsReserveFieldName, FieldName)       and ShowWorkMeasure    and ShowTowardsReserve and (ColTimeUnit(FieldName) <= TimeUnitCount)                       ) or
            (Match(dInitialAccountQuantityFieldName, FieldName)              and ShowAccountMeasure and ShowTowardsZero                                                                        ) or
            (Match(dInitialAccountQuantityTowardsReserveFieldName, FieldName)and ShowAccountMeasure and ShowTowardsReserve and (ColTimeUnit(FieldName) <= TimeUnitCount)                       ) or
            (Match(dQuantityFieldName, FieldName)                            and ShowWorkMeasure    and ShowTowardsZero                                                  and ShowQuantity      ) or
            (Match(dQuantityTowardsReserveFieldName, FieldName)              and ShowWorkMeasure    and ShowTowardsReserve and (ColTimeUnit(FieldName) <= TimeUnitCount) and ShowQuantity      ) or
            (Match(dAccountQuantityFieldName, FieldName)                     and ShowAccountMeasure and ShowTowardsZero                                                  and ShowQuantity      ) or
            (Match(dAccountQuantityTowardsReserveFieldName, FieldName)       and ShowAccountMeasure and ShowTowardsReserve and (ColTimeUnit(FieldName) <= TimeUnitCount) and ShowQuantity      ) or
            (Match(dQuantityPriceFieldName, FieldName)                                              and ShowTowardsZero                                                  and ShowQuantityPrice ) or
            (Match(dQuantityPriceTowardsReserveFieldName, FieldName)                                and ShowTowardsReserve and (ColTimeUnit(FieldName) <= TimeUnitCount) and ShowQuantityPrice ) or
            (Match(dDeficitFieldName, FieldName)                             and ShowWorkMeasure    and ShowTowardsZero                                                  and ShowDeficit       ) or
            (Match(dDeficitTowardsReserveFieldName, FieldName)               and ShowWorkMeasure    and ShowTowardsReserve and (ColTimeUnit(FieldName) <= TimeUnitCount) and ShowDeficit       ) or
            (Match(dAccountDeficitFieldName, FieldName)                      and ShowAccountMeasure and ShowTowardsZero                                                  and ShowDeficit       ) or
            (Match(dAccountDeficitTowardsReserveFieldName, FieldName)        and ShowAccountMeasure and ShowTowardsReserve and (ColTimeUnit(FieldName) <= TimeUnitCount) and ShowDeficit       ) or
            (Match(dDeficitPriceFieldName, FieldName)                                               and ShowTowardsZero                                                  and ShowDeficitPrice  ) or
            (Match(dDeficitPriceTowardsReserveFieldName, FieldName)                                 and ShowTowardsReserve and (ColTimeUnit(FieldName) <= TimeUnitCount) and ShowDeficitPrice  ) or
            (Match(dQuantityInFieldName, FieldName)                          and ShowWorkMeasure                                                                         and ShowQuantityIn    ) or
            (Match(dAccountQuantityInFieldName, FieldName)                   and ShowAccountMeasure                                                                      and ShowQuantityIn    ) or
            (Match(dQuantityOutFieldName, FieldName)                         and ShowWorkMeasure                                                                         and ShowQuantityOut   ) or
            (Match(dAccountQuantityOutFieldName, FieldName)                  and ShowAccountMeasure                                                                      and ShowQuantityOut   ) or
            (Match(dActiveQuantityFieldName, FieldName)                      and ShowWorkMeasure    and ShowTowardsZero                                                  and ShowActiveQuantity) or
            (Match(dActiveQuantityTowardsReserveFieldName, FieldName)        and ShowWorkMeasure    and ShowTowardsReserve and (i <= grdData.Columns.Count - 1)          and ShowActiveQuantity) or
            (Match(dAccountActiveQuantityFieldName, FieldName)               and ShowAccountMeasure and ShowTowardsZero                                                  and ShowActiveQuantity) or
            (Match(dAccountActiveQuantityTowardsReserveFieldName, FieldName) and ShowAccountMeasure and ShowTowardsReserve and (i <= grdData.Columns.Count - 1)          and ShowActiveQuantity) or
            (Match(dActivePriceFieldName, FieldName)                                                and ShowTowardsZero                                                  and ShowActivePrice   ) or
            (Match(dActivePriceTowardsReserveFieldName, FieldName)                                  and ShowTowardsReserve and (i <= grdData.Columns.Count - 1)          and ShowActivePrice   );

      FixDBGridHorizontalScroller(grdData);

    finally
      grdData.Columns.EndUpdate;
    end;  { try }

    grdData.FrozenCols:= 9;

  finally
    Screen.Cursor:= SaveCursor;
  end;  { try }
end;

procedure TfmQuantityDeficit.actShowReserveExecute(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmQuantityDeficit.actCopyToClipboardExecute(Sender: TObject);
begin
  inherited;
  actCopyNoToClipboard.Execute;
end;

procedure TfmQuantityDeficit.actCopyToClipboardUpdate(Sender: TObject);
begin
  inherited;

  with cdsGridData do
    (Sender as TAction).Enabled:=
      Active and
      not (Bof and Eof);
end;

procedure TfmQuantityDeficit.actCopyNoToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridData.FieldByName('PRODUCT_CUSTOM_CODE').AsString;
end;

procedure TfmQuantityDeficit.actCopyNameToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridData.FieldByName('PRODUCT_NAME').AsString;
end;

procedure TfmQuantityDeficit.btnGridDocumentationClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, btnGridDocumentation,
    cdsGridData.FieldByName('PRODUCT_CODE').AsInteger);
end;

procedure TfmQuantityDeficit.sbtnToggleProductDisplayClick(
  Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmQuantityDeficit.QuantityFieldsGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);

  procedure PutStandardText;
  begin
    Text:= FormatFloat((Sender as TAbmesFloatField).DisplayFormat, Sender.AsFloat);
  end;

begin
  if (Sender.AsFloat > Eps) then
    PutStandardText
  else
    begin
      if not FShowNegativeQuantity or (Sender.AsFloat > -Eps) then
        Text:= ''
      else
        PutStandardText;
    end;
end;

procedure TfmQuantityDeficit.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  grdData.SelectedRows.SelectAll;
end;

procedure TfmQuantityDeficit.actSelectAllUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmQuantityDeficit.actShowNegativeQuantityExecute(
  Sender: TObject);
var
  b: TBookmark;
begin
  inherited;
  FShowNegativeQuantity:= btnShowNegativeQuantity.Down;
  if cdsGridData.Active then
    begin
      b:= cdsGridData.Bookmark;
      cdsGridData.First;
      try
        cdsGridData.Last;
      finally
        cdsGridData.Bookmark:= b;
      end;  { try }
    end;
end;

procedure TfmQuantityDeficit.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CheckEditMode(pdsGridDataParams);
  pdsGridDataParamsBEGIN_DATE.AsDateTime:= ContextDate;
  pdsGridDataParamsTIME_UNIT_CODE.AsInteger:= LoginContext.DefaultDateUnitCode;
  pdsGridDataParamsTIME_UNIT_COUNT.AsInteger:= DefaultColumnsCount;

  ChosenProductsChange;
  ChosenDeptsChange;

  pdsGridDataParams.Post;
end;

procedure TfmQuantityDeficit.EmptyWhenZeroFieldsGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (Abs(Sender.AsFloat) < Eps) then
    Text:= ''
  else
    Text:= FormatFloat((Sender as TAbmesFloatField).DisplayFormat, Sender.AsFloat);
end;

function TfmQuantityDeficit.Match(APrefix, AFieldName: string): Boolean;
var
  i: Integer;
begin
  if (APrefix = AFieldName) then
    Result:= True
  else
    begin
      i:= Length(AFieldName);
      while (AFieldName[i] <> '_') do Dec(i);
      Result:= (Copy(AFieldName, 1, i) = (APrefix + '_'));
      Result:= Result and TryStrToInt(Copy(AFieldName, i+1, Length(AFieldName)-i), i);
    end;
end;

procedure TfmQuantityDeficit.actActiveQuantityExecute(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmQuantityDeficit.actActivePriceExecute(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmQuantityDeficit.actActiveQuantityUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= False; //CanEnableSpeedButton(sbtnAccountQuantity);
end;

procedure TfmQuantityDeficit.actActivePriceUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= False; //CanEnableSpeedButton(sbtnAccountPrice);
end;

procedure TfmQuantityDeficit.pdsGridDataParamsCHOSEN_PRODUCTSChange(
  Sender: TField);
begin
  inherited;
  ChosenProductsChange;
end;

procedure TfmQuantityDeficit.ChosenProductsChange;
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
          pdsGridDataParams_PRODUCT_NO);
      end
    else
      pdsGridDataParams_PRODUCT_NAME.AsString:= SProductsSet[FProductClass];
end;

procedure TfmQuantityDeficit.DoBeforeShow;
begin
  FMsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);

  RecursivelyFormatCaptions(Self, FMsgParams);

  inherited;
end;

procedure TfmQuantityDeficit.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if pdsGridDataParamsTIME_UNIT_CODE.IsNull or pdsGridDataParamsBEGIN_DATE.IsNull then
    pdsGridDataParams_END_DATE.Clear
  else
    pdsGridDataParams_END_DATE.AsDateTime:=
      CalcEndDate(
        pdsGridDataParamsBEGIN_DATE.AsDateTime,
        GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger),
        pdsGridDataParamsTIME_UNIT_COUNT.AsInteger);

  pdsGridDataParams_IS_TOWARDS_RESERVE.AsBoolean:= sbtnShowTowardsReserve.Down;
end;

procedure TfmQuantityDeficit.pdsGridDataParamsCHOSEN_DEPTSChange(Sender: TField);
begin
  inherited;
  ChosenDeptsChange;
end;

procedure TfmQuantityDeficit.ChosenDeptsChange;
begin
  pdsGridDataParams_DEPT_CODE.Clear;
  pdsGridDataParams_DEPT_NO.Clear;
  pdsGridDataParams_DEPT_NAME.Clear;

  if HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_DEPTS.AsString) then
    if IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_DEPTS.AsString) then
      begin
        pdsGridDataParams_DEPT_CODE.AsInteger:=
          ChosenNodeXMLToNodeCode(pdsGridDataParamsCHOSEN_DEPTS.AsString);

        DoDeptFieldChanged(
          pdsGridDataParams_DEPT_CODE,
          pdsGridDataParams_DEPT_NAME,
          pdsGridDataParams_DEPT_NO);
      end
    else
      pdsGridDataParams_DEPT_NAME.AsString:= SDeptsSet;
end;

procedure TfmQuantityDeficit.pdsGridDataParams_PRODUCT_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

procedure TfmQuantityDeficit.pdsGridDataParams_DEPT_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

procedure TfmQuantityDeficit.pdsGridDataParams_IS_TOWARDS_RESERVEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= TowardsModeNames[Sender.AsBoolean];
end;

procedure TfmQuantityDeficit.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if pdsGridDataParamsCHOSEN_PRODUCTS.Required and
     (not HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString)) then
    raise Exception.Create(SProductsRequired[FProductClass]);
end;

end.




