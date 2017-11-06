 unit fCommonGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, JvComponent, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, Buttons, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, StdCtrls, fBaseFrame, fDBFrame,
  fDualGridFrame, fFieldEditFrame, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, Menus, ImgList, Mask, fProductFieldEditFrameBald,
  dDocClient, uClientTypes, JvComponentBase, uProducts, uToolbarUtils,
  DBGridEhGrouping, MemTableDataEh, DataDriverEh, MemTableEh,
  fGridTreeListExpanderFrame;

type
  TJoinedProductsStat = (jpsCount, jpsProductionOrderCount, jpsProductionOrdersQuantity, jpsThoroughlyEngineeredExists);

type
  TfmCommonGroups = class(TMasterDetailForm)
    pnlFilter: TPanel;
    frCommonGroupProducts: TDualGridFrame;
    cdsCandidateProducts: TAbmesClientDataSet;
    pdsGridDataParamsPRODUCT_PARENT_CODE: TAbmesFloatField;
    sepCommonProductDocStatus: TToolButton;
    btnCommonProductDocs: TSpeedButton;
    tlbCommonGroupProducts: TToolBar;
    btnCommonGroupProductDocs: TSpeedButton;
    sepJoinedProductDocStatus: TToolButton;
    tlbCandidateProducts: TToolBar;
    sepCandidateProductDocStatus: TToolButton;
    btnCandidateProductDocs: TSpeedButton;
    pdsGridDataParams_PRODUCT_PARENT_CODE: TAbmesFloatField;
    cdsGridDataSPEC_STATUS_CODE: TAbmesFloatField;
    cdsGridDataNOTES: TAbmesWideStringField;
    cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataqryCommonProductJoinedProducts: TDataSetField;
    cdsDetailPRODUCT_CODE: TAbmesFloatField;
    cdsDetailCOMMON_PRODUCT_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_NAME: TAbmesWideStringField;
    cdsDetailSPEC_STATUS_CODE: TAbmesFloatField;
    cdsDetailPRODUCTION_ORDER_COUNT: TAbmesFloatField;
    cdsDetailPRODUCTION_ORDERS_QUANTITY: TAbmesFloatField;
    cdsDetailMEASURE_CODE: TAbmesFloatField;
    cdsDetailMEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsCandidateProductsPRODUCT_CODE: TAbmesFloatField;
    cdsCandidateProductsPRODUCT_NAME: TAbmesWideStringField;
    cdsCandidateProductsSPEC_STATUS_CODE: TAbmesFloatField;
    cdsCandidateProductsPRODUCTION_ORDER_COUNT: TAbmesFloatField;
    cdsCandidateProductsPRODUCTION_ORDERS_QUANTITY: TAbmesFloatField;
    cdsCandidateProductsMEASURE_CODE: TAbmesFloatField;
    cdsCandidateProductsMEASURE_ABBREV: TAbmesWideStringField;
    cdsCandidateProductsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsCandidateProductsPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsCandidateProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsDetail_PRODUCTION_ORDERS_AVG_QUANTITY: TAbmesFloatField;
    cdsCandidateProducts_PRODUCTION_ORDERS_AVG_QUANTITY: TAbmesFloatField;
    cdsGridDataCOMMON_PRODUCT_CODE: TAbmesFloatField;
    cdsDetail_SUM_PRODUCTION_ORDER_COUNT: TAggregateField;
    cdsDetail_SUM_PRODUCTION_ORDERS_QUANTITY: TAggregateField;
    cdsGridDataCOMMON_PRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataJOINED_TO_PRODUCT_CODE: TAbmesFloatField;
    cdsDetail_COUNT: TAggregateField;
    cdsGridData_JOINED_PRODUCT_COUNT: TAbmesFloatField;
    cdsGridData_JOINED_PRODUCTS_PR_ORD_COUNT: TAbmesFloatField;
    cdsGridData_JOINED_PRODUCTS_PR_ORD_QTY: TAbmesFloatField;
    cdsGridData_CHILD_PRODUCTION_ORDER_AVG_QTY: TAbmesFloatField;
    pnlResizeWorkspaceButton: TPanel;
    lblHint: TLabel;
    tlbMove: TToolBar;
    actCopyToClipboard: TAction;
    pmCopy: TPopupMenu;
    miCopyNoToClipboard: TMenuItem;
    miCopyNameToClipboard: TMenuItem;
    actCopyNoToClipboard: TAction;
    actCopyNameToClipboard: TAction;
    btnCopyToClipboard: TToolButton;
    actCommonProductDocStatus: TAction;
    actJoinedProductDocStatus: TAction;
    actCandidateProductDocStatus: TAction;
    btnCommonProductDocStatus: TToolButton;
    btnJoinedProductDocStatus: TToolButton;
    btnCandidateProductDocStatus: TToolButton;
    sepCopyToClipboard: TToolButton;
    actStartMoving: TAction;
    actFinishMoving: TAction;
    actMakeRoot: TAction;
    btnStartMoving: TToolButton;
    btnFinishMoving: TToolButton;
    btnMakeRoot: TToolButton;
    ilCommonProducts: TImageList;
    cdsHeader: TAbmesClientDataSet;
    dsHeader: TDataSource;
    cdsHeaderPRODUCT_CODE: TAbmesFloatField;
    cdsHeaderMEASURE_ABBREV: TAbmesWideStringField;
    frProductParent: TfrProductFieldEditFrameBald;
    lblProductParent: TLabel;
    edtMeasure: TDBEdit;
    lblMeasure: TLabel;
    lblUsedBy: TLabel;
    edtUsedBy: TDBEdit;
    lblDeliveredBy: TLabel;
    edtDeliveredBy: TDBEdit;
    lblFirstLevelCommonProductCount: TLabel;
    edtFirstLevelCommonProductCount: TDBEdit;
    lblCommonProductCount: TLabel;
    edtCommonProductCount: TDBEdit;
    lblCommonProducts: TLabel;
    lblJoinedProductCount: TLabel;
    edtJoinedProductCount: TDBEdit;
    edtCandidateProductCount: TDBEdit;
    lblCandidateProductCount: TLabel;
    cdsGridData_COUNT: TAggregateField;
    cdsGridData_FIRST_LEVEL_COUNT: TAggregateField;
    cdsHeader_JOINED_PRODUCT_COUNT: TAbmesFloatField;
    cdsGridDataCOMMON_PRODUCT_NO: TAbmesFloatField;
    pdsGridDataParamsIS_USED_BY: TAbmesFloatField;
    pdsGridDataParamsIS_PROVIDED_BY: TAbmesFloatField;
    sepCommonProductDocs: TToolButton;
    pnlProductDocsCaption: TPanel;
    pnlCommonGroupProductsCaption: TPanel;
    pnlCandidateProductDocsCaption: TPanel;
    sepBeforeCandidateProductDocsCaption: TToolButton;
    sepBeforeCommonGroupProductsCaption: TToolButton;
    cdsCandidateProductsIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    cdsDetailIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    cdsDetail_MAX_IS_THOROUGHLY_ENGINEERED: TAggregateField;
    cdsGridData_HAS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    tlbSelectTreeProduct: TToolBar;
    tlbSelectCommonGroupProduct: TToolBar;
    tlbSelectCandidateProduct: TToolBar;
    btnSelectTreeProduct: TToolButton;
    btnSelectCommonGroupProduct: TToolButton;
    btnSelectCandidateProduct: TToolButton;
    cdsDetail_THOROUGHLY_ENGINEERED_COUNT: TAggregateField;
    cdsDetailPRODUCT_NO: TAbmesFloatField;
    cdsCandidateProductsPRODUCT_NO: TAbmesFloatField;
    cdsDetailIS_INACTIVE: TAbmesFloatField;
    cdsCandidateProductsIS_INACTIVE: TAbmesFloatField;
    cdsGridDataIS_INACTIVE: TAbmesFloatField;
    actShowInactive: TAction;
    pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsDetailCOMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    cdsCandidateProductsCOMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    actCompanyProductNames: TAction;
    cdsProductPeriodsParams: TAbmesClientDataSet;
    cdsProductPeriodsParamsPRODUCT_CODE: TAbmesFloatField;
    actCommonProductPeriods: TAction;
    actJoinedProductPeriods: TAction;
    actCandidateProductPeriods: TAction;
    sepCommonProductPeriods: TToolButton;
    btnCommonProductPeriods: TSpeedButton;
    sepJoinedProductPeriods: TToolButton;
    btnJoinedProductPeriods: TSpeedButton;
    sepCandidateProductPeriods: TToolButton;
    btnCandidateProductPeriods: TSpeedButton;
    pnlToggles: TPanel;
    btnCompanyProductNames: TSpeedButton;
    btnShowInactive: TSpeedButton;
    sepJoinedProductsExcelExport: TToolButton;
    btnJoinedProductsExcelExport: TToolButton;
    sepNotJoinedProductsExcelExport: TToolButton;
    btnNotJoinedProductsExcelExport: TToolButton;
    cdsCandidateProducts_TOTAL_COUNT: TAggregateField;
    cdsCandidateProducts_ACTIVE_COUNT: TAggregateField;
    cdsHeaderTOTAL_CONCRETE_PRODUCT_COUNT: TAbmesFloatField;
    cdsHeaderACTIVE_CONCRETE_PRODUCT_COUNT: TAbmesFloatField;
    cdsCandidateProducts_COUNT: TAbmesFloatField;
    actCopyJoinedToClipboard: TAction;
    actCopyCandidateToClipboard: TAction;
    actCopyJoinedNoToClipboard: TAction;
    actCopyJoinedNameToClipboard: TAction;
    actCopyCandidateNoToClipboard: TAction;
    actCopyCandidateNameToClipboard: TAction;
    sepCopyJoinedToClipboard: TToolButton;
    btnCopyJoinedToClipboard: TToolButton;
    btnCopyCandidateToClipboard: TToolButton;
    sepCopyCandidateToClipboard: TToolButton;
    pmJoinedCopy: TPopupMenu;
    miCopyJoinedNoToClipboard: TMenuItem;
    miCopyJoinedNameToClipboard: TMenuItem;
    pmCandidateCopy: TPopupMenu;
    miCopyCandidateNoToClipboard: TMenuItem;
    miCopyCandidateNameToClipboard: TMenuItem;
    frTreeListExpander: TfrGridTreeListExpanderFrame;
    cdsGridDataIS_STRATEGIC: TAbmesFloatField;
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataBeforeClose(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    function GetInsertRecordEnabled: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    procedure frCommonGroupProductsactIncludeUpdate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure btnCommonProductDocsClick(Sender: TObject);
    procedure btnCommonGroupProductDocsClick(Sender: TObject);
    procedure btnCandidateProductDocsClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure frCommonGroupProductsResize(Sender: TObject);
    procedure frCommonGroupProductsactIncludeExecute(Sender: TObject);
    procedure frCommonGroupProductsactExcludeExecute(Sender: TObject);
    procedure frCommonGroupProductsactIncludeAllExecute(Sender: TObject);
    procedure frCommonGroupProductsactExcludeAllExecute(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure cdsDetailCalcFields(DataSet: TDataSet);
    procedure cdsCandidateProductsCalcFields(DataSet: TDataSet);
    procedure SpecStatusGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_CHILD_COUNTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure actCopyToClipboardUpdate(Sender: TObject);
    procedure actCopyToClipboardExecute(Sender: TObject);
    procedure actCopyNoToClipboardExecute(Sender: TObject);
    procedure actCopyNameToClipboardExecute(Sender: TObject);
    procedure actCommonProductDocStatusUpdate(Sender: TObject);
    procedure actCommonProductDocStatusExecute(Sender: TObject);
    procedure actJoinedProductDocStatusUpdate(Sender: TObject);
    procedure actJoinedProductDocStatusExecute(Sender: TObject);
    procedure actCandidateProductDocStatusUpdate(Sender: TObject);
    procedure actCandidateProductDocStatusExecute(Sender: TObject);
    procedure actStartMovingUpdate(Sender: TObject);
    procedure actStartMovingExecute(Sender: TObject);
    procedure actFinishMovingUpdate(Sender: TObject);
    procedure actFinishMovingExecute(Sender: TObject);
    procedure actMakeRootUpdate(Sender: TObject);
    procedure actMakeRootExecute(Sender: TObject);
    procedure cdsHeaderCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsIS_USED_BYGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsIS_PROVIDED_BYGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure frCommonGroupProductsgrdIncludedGetCellParams(
      Sender: TObject; Column: TColumnEh; AFont: TFont;
      var Background: TColor; State: TGridDrawState);
    procedure btnSelectTreeProductClick(Sender: TObject);
    procedure btnSelectCommonGroupProductClick(Sender: TObject);
    procedure btnSelectCandidateProductClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actShowInactiveExecute(Sender: TObject);
    procedure actCompanyProductNamesExecute(Sender: TObject);
    procedure actCommonProductPeriodsUpdate(Sender: TObject);
    procedure actJoinedProductPeriodsUpdate(Sender: TObject);
    procedure actCandidateProductPeriodsUpdate(Sender: TObject);
    procedure actCommonProductPeriodsExecute(Sender: TObject);
    procedure actJoinedProductPeriodsExecute(Sender: TObject);
    procedure actCandidateProductPeriodsExecute(Sender: TObject);
    procedure actCompanyProductNamesUpdate(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actExcelExportExecute(Sender: TObject);
    procedure grdDataDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure actCopyJoinedToClipboardUpdate(Sender: TObject);
    procedure actCopyCandidateToClipboardUpdate(Sender: TObject);
    procedure actCopyJoinedNoToClipboardExecute(Sender: TObject);
    procedure actCopyJoinedNameToClipboardExecute(Sender: TObject);
    procedure actCopyCandidateNoToClipboardExecute(Sender: TObject);
    procedure actCopyCandidateNameToClipboardExecute(Sender: TObject);
    procedure actCopyJoinedToClipboardExecute(Sender: TObject);
    procedure actCopyCandidateToClipboardExecute(Sender: TObject);
    procedure frCommonGroupProductsgrdIncludedDblClick(Sender: TObject);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
  private
    FMovedCommonProductCode: Integer;
    FMovedCommonProductJoinedToProductCode: Integer;
    FJoinedProductsStats: TStringList;
    FChangesApplied: Boolean;
    FChosenProductCode: Integer;
    FSelectMode: Boolean;
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FRefiltered: Boolean;
    FShowInactive: Boolean;
    FMovedCommonProductIsStrategic: Boolean;
    procedure CheckForChanges;
    procedure RefreshCalcFields(AllRecords: Boolean = False);
    procedure SetCommonProductJoinedTo(AProductCode, AJoinedToProductCode: Integer);
    function GetJoinedProductsStat(ACommonProductCode: Integer;
      AJoinedProductsStat: TJoinedProductsStat): Real;
    procedure FocusTopCommonProduct;
    procedure SetColumns;
    procedure ShowProductPeriods(AProductCode: Integer);
    procedure ShowInactive(AValue: Boolean);
    procedure CalcFields;
    function RelationExists(ChildCode, ParentCode: Integer): Boolean;
    procedure RefreshTreeList(FieldDataOnly: Boolean);
    function GetImageIndex: Integer;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    class function CanUseDocs: Boolean; override;
    procedure RefilterDataSet(ADataSet: TAbmesClientDataSet; AFiltered: Boolean);
    function GetOriginalFormCaption: string; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      ASelectMode: Boolean = False;
      AProductClass: TProductClass = pcNormal); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AChosenProductCodePtr: PInteger = nil;
      AProductClass: TProductClass = pcNormal): Boolean; overload;
    class function ShowForm(AdmDocClient: TdmDocClient; AProductParentCode, AProductCode: Integer;
      AProductClass: TProductClass = pcNormal): Boolean; overload;
    procedure DoApplyUpdates; override;
    procedure Initialize; override;
    procedure InitializeColumns;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  dMain, StrUtils, Clipbrd, uUtils, uClientUtils, AbmesDialogs, uDocUtils,
  uModelUtils, uColorConsts, uUserActivityConsts, fSpecDocStatus,
  fCommonGroupsFilter, Math, uTreeClientUtils, uProductClientUtils,
  fProductPeriods, uExcelExport, uClientDateTime, uTreeListUtils;

{$R *.dfm}

resourcestring
  STwoOrMoreThoroughlyEngineered = 'В една група не може да има повече от един УОб-Еталон';
  SSavePrompt = 'Желаете ли да запишете промените?';
  SStartMovingHint = 'Начало на преместване';
  SCancelMovingHint = 'Отказ на преместване';
  SIsUsedBySalesAbbrev = 'Прд';
  SIsUsedBySaleProductionAbbrev = 'ВОПрд';
  SIsUsedByEnvProductionAbbrev = 'ВОЕлС';
  SIsProvidedByDeliveriesAbbrev = 'Дст';
  SIsProvidedBySaleProductionAbbrev = 'ВОПрд';
  SIsProvidedByEnvProductionAbbrev = 'ВОЕлС';
  SCircularReference = 'Не можете да преместите избрания УОб като наследник на себе си!';
  SCantMoveStrategicProduct = 'Не можете да преместите избрания стратегически УОб под потенциален';

{ TfmCommonGroups }

procedure TfmCommonGroups.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  cdsCandidateProducts.Params.AssignValues(cdsGridData.Params);
  cdsCandidateProducts.Open;

  cdsHeader.Params.ParamByName('PRODUCT_CODE').AsInteger:=
    cdsGridData.Params.ParamByName('PRODUCT_PARENT_CODE').AsInteger;
  cdsHeader.Open;

  if not FShowInactive then
    begin
      // recalc fields
      ShowInactive(True);
      ShowInactive(False);
    end;

  RefreshCalcFields(True);

  FRefiltered:= True;

  grdData.ConvertToTreeList('COMMON_PRODUCT_CODE', 'JOINED_TO_PRODUCT_CODE');
end;

procedure TfmCommonGroups.cdsGridDataBeforeClose(DataSet: TDataSet);
begin
  inherited;
  cdsCandidateProducts.Close;
  cdsHeader.Close;
end;

procedure TfmCommonGroups.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDetailCOMMON_PRODUCT_CODE.Assign(cdsGridDataCOMMON_PRODUCT_CODE);
end;

procedure TfmCommonGroups.FormCreate(Sender: TObject);
begin
  inherited;

  tlbSelectTreeProduct.Parent:= pnlNavigator;
  tlbSelectTreeProduct.Align:= alRight;
  tlbCommonGroupProducts.Parent:= frCommonGroupProducts.pnlIncludedNavigator;
  tlbCommonGroupProducts.Align:= alLeft;
  tlbSelectCommonGroupProduct.Parent:= frCommonGroupProducts.pnlIncludedNavigator;
  tlbSelectCommonGroupProduct.Align:= alRight;
  tlbCandidateProducts.Parent:= frCommonGroupProducts.pnlExcludedNavigator;
  tlbCandidateProducts.Align:= alLeft;
  tlbSelectCandidateProduct.Parent:= frCommonGroupProducts.pnlExcludedNavigator;
  tlbSelectCandidateProduct.Align:= alRight;

  FilterFormClass:= TfmCommonGroupsFilter;

  frProductParent.FieldNames:= '_PRODUCT_PARENT_CODE';
  frProductParent.VIMButtonVisible:= False;

  frTreeListExpander.TreeListGrid:= grdData;

  FJoinedProductsStats:= TStringList.Create;

  lblHint.Caption:= Format(lblHint.Caption, [LoginContext.CommonGroupsProductionOrdersMonths]);
  cdsGridData.Params.ParamByName('PRODUCTION_ORDERS_BEGIN_DATE').AsDateTime:=
    IncMonth(ContextDate, -LoginContext.CommonGroupsProductionOrdersMonths);

  FShowInactive:= True;  // na initialize eventualno se pravi na False
end;

procedure TfmCommonGroups.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FJoinedProductsStats);
end;

procedure TfmCommonGroups.FormShow(Sender: TObject);
begin
  inherited;
  InitializeAbmesDBGrid(grdData, False);
end;

function TfmCommonGroups.GetImageIndex: Integer;
begin
  Result:= Ord(not grdData.DataSource.DataSet.FieldByName('JOINED_TO_PRODUCT_CODE').IsNull);

  if (FMovedCommonProductCode > 0) and
     (grdData.DataSource.DataSet.FieldByName('COMMON_PRODUCT_CODE').AsInteger = FMovedCommonProductCode) then
    Inc(Result, 2);
end;

function TfmCommonGroups.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

function TfmCommonGroups.GetDelRecordEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmCommonGroups.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProductParent) then
    AFrame.ReadOnly:= True
  else
    inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmCommonGroups.frCommonGroupProductsactIncludeUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    frCommonGroupProducts.GetIncludeEnabled and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmCommonGroups.CheckForChanges;
begin
  if (cdsGridData.ChangeCount > 0) then
    case MessageDlgEx(SSavePrompt, mtConfirmation, mbYesNoCancel, 0) of
      mrYes: DoApplyUpdates;
      mrNo: DoCancelUpdates;
      mrCancel: Abort;
    end;
end;

procedure TfmCommonGroups.actFilterExecute(Sender: TObject);
begin
  CheckForChanges;

  FRefiltered:= False;
  try
    inherited;

    if FRefiltered then
      FocusTopCommonProduct;
  finally
    FRefiltered:= False;
  end;
end;

procedure TfmCommonGroups.navDataBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbRefresh) then
    CheckForChanges;
  inherited;
end;

class function TfmCommonGroups.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmCommonGroups.btnCommonProductDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnCommonProductDocs, dotProduct,
    cdsGridDataPRODUCT_DOC_BRANCH_CODE, cdsGridDataPRODUCT_DOC_CODE);
end;

procedure TfmCommonGroups.btnCommonGroupProductDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnCommonGroupProductDocs, dotProduct,
    cdsDetailPRODUCT_DOC_BRANCH_CODE, cdsDetailPRODUCT_DOC_CODE);
end;

procedure TfmCommonGroups.btnCandidateProductDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnCandidateProductDocs, dotProduct,
    cdsCandidateProductsPRODUCT_DOC_BRANCH_CODE, cdsCandidateProductsPRODUCT_DOC_CODE);
end;

procedure TfmCommonGroups.actFormUpdate(Sender: TObject);
begin
  inherited;

  btnCommonProductDocs.Enabled:=
    cdsGridData.Active and
    cdsGridDataPRODUCT_HAS_DOC_ITEMS.AsBoolean;

  btnCommonGroupProductDocs.Enabled:=
    cdsDetail.Active and
    cdsDetailPRODUCT_HAS_DOC_ITEMS.AsBoolean;

  btnCandidateProductDocs.Enabled:=
    cdsCandidateProducts.Active and
    cdsCandidateProductsPRODUCT_HAS_DOC_ITEMS.AsBoolean;

  NormalizedToolbar(tlbSelectTreeProduct).Visible:= FSelectMode;
  NormalizedToolbar(tlbSelectCommonGroupProduct).Visible:= FSelectMode;
  NormalizedToolbar(tlbSelectCandidateProduct).Visible:= FSelectMode;

  btnCommonProductDocStatus.Visible:= (FProductClass = pcNormal);
  sepCommonProductDocStatus.Visible:= btnCommonProductDocStatus.Visible;
  btnJoinedProductDocStatus.Visible:= (FProductClass = pcNormal);
  sepJoinedProductDocStatus.Visible:= btnJoinedProductDocStatus.Visible;
  btnCandidateProductDocStatus.Visible:= (FProductClass = pcNormal);
  sepCandidateProductDocStatus.Visible:= btnCandidateProductDocStatus.Visible;

  lblHint.Visible:= (FProductClass <> pcFinancial);
end;

procedure TfmCommonGroups.frCommonGroupProductsResize(Sender: TObject);
begin
  inherited;
  NormalizedToolbar(tlbCommonGroupProducts).Top:= frCommonGroupProducts.Top;
  NormalizedToolbar(tlbCandidateProducts).Top:= frCommonGroupProducts.Top;
  NormalizedToolbar(tlbSelectCommonGroupProduct).Top:= frCommonGroupProducts.Top;
  NormalizedToolbar(tlbSelectCandidateProduct).Top:= frCommonGroupProducts.Top;
end;

procedure TfmCommonGroups.RefilterDataSet(ADataSet: TAbmesClientDataSet;
  AFiltered: Boolean);
var
  b: TBookmark;
begin
  if (AFiltered <> ADataSet.Filtered) then
    with ADataSet do
      begin
        cdsDetail.DisableControls;
        try
          DisableControls;
          try
            b:= Bookmark;
            try
              Filtered:= AFiltered;
              First;
            finally
              try
                Bookmark:= b;
              except
                First;
              end;
            end;
          finally
            EnableControls;
          end;
        finally
          cdsDetail.EnableControls;
        end;
      end;  { with }
end;

procedure TfmCommonGroups.CalcFields;
var
  JoinedProductCount: Integer;
  JoinedProductsProductionOrderCount: Integer;
  JoinedProductsProductionOrderQuantity: Real;
  ThoroughlyEngineeredJoinedProductExists: Integer;
begin
  JoinedProductCount:= VarToInt(cdsDetail_COUNT.AsVariant);
  JoinedProductsProductionOrderCount:= VarToInt(cdsDetail_SUM_PRODUCTION_ORDER_COUNT.AsVariant);
  JoinedProductsProductionOrderQuantity:= VarToFloat(cdsDetail_SUM_PRODUCTION_ORDERS_QUANTITY.AsVariant);
  ThoroughlyEngineeredJoinedProductExists:= VarToInt(cdsDetail_MAX_IS_THOROUGHLY_ENGINEERED.AsVariant);

  FJoinedProductsStats.Values[cdsGridDataCOMMON_PRODUCT_CODE.AsString]:=
    Format('%d; %d; %g; %d', [
      JoinedProductCount, JoinedProductsProductionOrderCount, JoinedProductsProductionOrderQuantity, ThoroughlyEngineeredJoinedProductExists]);
end;

procedure TfmCommonGroups.RefreshCalcFields(AllRecords: Boolean);
begin
  grdData.DataSource.DataSet.TempDisableControls /
    cdsGridData.TempDisableControls /
      cdsDetail.TempDisableControls /
            procedure begin
              if AllRecords then
                begin
                  cdsGridData.PreserveRecNo /
                    procedure begin
                      FJoinedProductsStats.Clear;

                      cdsGridData.ForEach /
                        procedure begin
                          CalcFields;
                        end;  { while }
                    end;
                end
              else
                CalcFields;
            end;

  cdsHeader.Last;
  cdsHeader.First;

  RefreshTreeList(True);
end;

procedure TfmCommonGroups.RefreshTreeList(FieldDataOnly: Boolean);
begin
  cdsDetail.TempDisableControls /
    procedure begin
      grdData.RefreshTreeList(FieldDataOnly);
    end;
end;

function TfmCommonGroups.RelationExists(ChildCode,
  ParentCode: Integer): Boolean;
var
  R: Boolean;
begin
  if (ChildCode = ParentCode) then
    Exit(True);

  R:= False;
  cdsGridData.TempDisableControls /
    cdsGridData.PreserveBookmark /
      procedure begin
        cdsGridData.Locate('COMMON_PRODUCT_CODE', ChildCode, []);
        while cdsGridData.Locate('COMMON_PRODUCT_CODE', cdsGridDataJOINED_TO_PRODUCT_CODE.AsInteger, []) do
          if (cdsGridDataCOMMON_PRODUCT_CODE.AsInteger = ParentCode) then
            begin
              R:= True;
              Break;
            end;
      end;

  Result:= R;
end;

procedure TfmCommonGroups.frCommonGroupProductsactIncludeExecute(
  Sender: TObject);
begin
  inherited;
  frCommonGroupProducts.actIncludeExecute(Sender);
  RefreshCalcFields;
end;

procedure TfmCommonGroups.frCommonGroupProductsactExcludeExecute(
  Sender: TObject);
begin
  inherited;
  frCommonGroupProducts.actExcludeExecute(Sender);
  RefreshCalcFields;
end;

procedure TfmCommonGroups.frCommonGroupProductsactIncludeAllExecute(
  Sender: TObject);
begin
  inherited;
  frCommonGroupProducts.actIncludeAllExecute(Sender);
  RefreshCalcFields;
end;

procedure TfmCommonGroups.frCommonGroupProductsactExcludeAllExecute(
  Sender: TObject);
begin
  inherited;
  frCommonGroupProducts.actExcludeAllExecute(Sender);
  RefreshCalcFields;
end;

procedure TfmCommonGroups.Initialize;
var
  ProductField: TField;
  Located: Boolean;
  LocatedInactive: Boolean;
  TopCommonProductRecNo: Integer;
  DetailBookmark: TBookmark;
  MsgParams: TStrings;
begin
  inherited;

  frProductParent.ProductClass:= FProductClass;

  pnlResizeWorkspaceButton.Left:= 0;

  FocusTopCommonProduct;

  LocatedInactive:= False;

  if Assigned(OuterDataSet) then
    begin
      ProductField:= OuterDataSet.FindField('PRODUCT_CODE');

      if Assigned(ProductField) then
        begin
          grdData.DataSource.DataSet.DisableControls;
          cdsGridData.DisableControls;
          cdsDetail.DisableControls;
          cdsCandidateProducts.DisableControls;
          try
            TopCommonProductRecNo:= cdsGridData.RecNo;

            Located:= cdsGridData.Locate('COMMON_PRODUCT_CODE', ProductField.AsInteger, []);

            if Located then
              begin
                ActiveControl:= grdData;
                LocatedInactive:= cdsGridDataIS_INACTIVE.AsBoolean;
              end
            else
              begin
                cdsGridData.First;

                Located:= cdsCandidateProducts.Locate('PRODUCT_CODE', ProductField.AsInteger, []);

                if Located then
                  begin
                    cdsGridData.RecNo:= TopCommonProductRecNo;
                    ActiveControl:= frCommonGroupProducts.grdExcluded;
                    LocatedInactive:= cdsCandidateProductsIS_INACTIVE.AsBoolean;
                  end
                else
                  begin
                    cdsCandidateProducts.First;

                    while not cdsGridData.Eof do
                      begin
                        Located:= cdsDetail.Locate('PRODUCT_CODE', ProductField.AsInteger, []);

                        if Located then
                          Break;

                        cdsGridData.Next;
                      end;  { while }

                    if Located then
                      begin
                        ActiveControl:= frCommonGroupProducts.grdIncluded;
                        LocatedInactive:= cdsDetailIS_INACTIVE.AsBoolean;
                      end
                    else
                      begin
                        cdsGridData.RecNo:= TopCommonProductRecNo;
                        cdsDetail.First;
                      end;
                  end;  { if }
              end;  { if }

            DetailBookmark:= cdsDetail.Bookmark;
          finally
            grdData.DataSource.DataSet.EnableControls;
            cdsGridData.EnableControls;
            cdsDetail.EnableControls;
            cdsCandidateProducts.EnableControls;
          end;  { try }

          cdsDetail.Bookmark:= DetailBookmark;
        end;
    end;

  MsgParams:=
    CreateCommonMsgParams(
      LoginContext,
      FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  ShowInactive(LocatedInactive);

  FOriginalFormCaption:= actForm.Caption;

  InitializeColumns;
  SetColumns;
end;

procedure TfmCommonGroups.InitializeColumns;

  procedure InitializeBottomColumns(AGrid: TAbmesDBGrid);
  var
    i: Integer;
  begin
    for i:= 3 to AGrid.Columns.Count - 1 do
      AGrid.Columns[i].Visible:= (FProductClass = pcNormal);

    for i:= 3 to AGrid.Columns.Count - 1 do
      if not AGrid.Columns[i].Visible then
        AGrid.Columns[0].Width:=
          AGrid.Columns[0].Width + AGrid.Columns[i].Width + 1;
  end;

begin
  grdData.Columns[3].Visible:= (FProductClass = pcNormal);  // SPEC_STATUS_CODE
  grdData.Columns[5].Visible:= (FProductClass = pcNormal);  // _JOINED_PRODUCT_COUNT
  grdData.Columns[6].Visible:= (FProductClass = pcNormal);  // _JOINED_PRODUCTS_PR_ORD_COUNT

  InitializeBottomColumns(frCommonGroupProducts.grdIncluded);
  InitializeBottomColumns(frCommonGroupProducts.grdExcluded);
end;

procedure TfmCommonGroups.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams_PRODUCT_PARENT_CODE.Assign(pdsGridDataParamsPRODUCT_PARENT_CODE);
  pdsGridDataParams_PRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmCommonGroups.cdsDetailBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (DataSet.State = dsInsert) and
     cdsDetailIS_THOROUGHLY_ENGINEERED.AsBoolean and
     (VarToInt(cdsDetail_MAX_IS_THOROUGHLY_ENGINEERED.AsVariant) = 1) then
    cdsDetailIS_THOROUGHLY_ENGINEERED.AsBoolean:= False;
end;

procedure TfmCommonGroups.cdsDetailCalcFields(DataSet: TDataSet);
begin
  inherited;

  if (cdsDetailPRODUCTION_ORDER_COUNT.AsFloat = 0) then
    cdsDetail_PRODUCTION_ORDERS_AVG_QUANTITY.Clear
  else
    cdsDetail_PRODUCTION_ORDERS_AVG_QUANTITY.AsFloat:=
      cdsDetailPRODUCTION_ORDERS_QUANTITY.AsFloat /
      cdsDetailPRODUCTION_ORDER_COUNT.AsFloat;
end;

procedure TfmCommonGroups.cdsCandidateProductsCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if (cdsCandidateProductsPRODUCTION_ORDER_COUNT.AsFloat = 0) then
    cdsCandidateProducts_PRODUCTION_ORDERS_AVG_QUANTITY.Clear
  else
    cdsCandidateProducts_PRODUCTION_ORDERS_AVG_QUANTITY.AsFloat:=
      cdsCandidateProductsPRODUCTION_ORDERS_QUANTITY.AsFloat /
      cdsCandidateProductsPRODUCTION_ORDER_COUNT.AsFloat;

  cdsCandidateProducts_COUNT.AsVariant:=
    IntToVar(
      VarToInt(
        IfThen(FShowInactive, cdsCandidateProducts_TOTAL_COUNT.AsVariant, cdsCandidateProducts_ACTIVE_COUNT.AsVariant)));
end;

procedure TfmCommonGroups.SpecStatusGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (not Sender.IsNull) and
     InRange(Sender.AsInteger, Low(SpecNoQuantityStates), High(SpecNoQuantityStates)) then
    Text:= SpecNoQuantityStates[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmCommonGroups.cdsGridData_CHILD_COUNTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= IntToStr(VarToInt(cdsDetail_COUNT.AsVariant));
end;

procedure TfmCommonGroups.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsGridData_JOINED_PRODUCT_COUNT.AsFloat:=
    GetJoinedProductsStat(cdsGridDataCOMMON_PRODUCT_CODE.AsInteger, jpsCount);

  cdsGridData_JOINED_PRODUCTS_PR_ORD_COUNT.AsFloat:=
    GetJoinedProductsStat(cdsGridDataCOMMON_PRODUCT_CODE.AsInteger, jpsProductionOrderCount);

  cdsGridData_JOINED_PRODUCTS_PR_ORD_QTY.AsFloat:=
    GetJoinedProductsStat(cdsGridDataCOMMON_PRODUCT_CODE.AsInteger, jpsProductionOrdersQuantity);

  cdsGridData_HAS_THOROUGHLY_ENGINEERED.AsFloat:=
    GetJoinedProductsStat(cdsGridDataCOMMON_PRODUCT_CODE.AsInteger, jpsThoroughlyEngineeredExists);

  if (cdsGridData_JOINED_PRODUCTS_PR_ORD_COUNT.AsFloat = 0) then
    cdsGridData_CHILD_PRODUCTION_ORDER_AVG_QTY.Clear
  else
    cdsGridData_CHILD_PRODUCTION_ORDER_AVG_QTY.AsFloat:=
      cdsGridData_JOINED_PRODUCTS_PR_ORD_QTY.AsFloat /
      cdsGridData_JOINED_PRODUCTS_PR_ORD_COUNT.AsFloat;
end;

procedure TfmCommonGroups.actCopyToClipboardUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmCommonGroups.actExcelExportExecute(Sender: TObject);
begin
//  inherited;  do not call
  cdsDetail.TempDisableControls /
    procedure begin
      GridExcelExport(grdData);
    end;
end;

procedure TfmCommonGroups.actCopyToClipboardExecute(Sender: TObject);
begin
  inherited;
  actCopyNoToClipboard.Execute;
end;

procedure TfmCommonGroups.actCopyNoToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataCOMMON_PRODUCT_NO.AsString;
end;

procedure TfmCommonGroups.actCopyCandidateNameToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsCandidateProductsPRODUCT_NAME.AsString;
end;

procedure TfmCommonGroups.actCopyCandidateNoToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsCandidateProductsPRODUCT_NO.AsString;
end;

procedure TfmCommonGroups.actCopyCandidateToClipboardExecute(Sender: TObject);
begin
  inherited;
  actCopyCandidateNoToClipboard.Execute;
end;

procedure TfmCommonGroups.actCopyCandidateToClipboardUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsCandidateProducts.Active and
    (cdsCandidateProducts.RecordCount > 0);
end;

procedure TfmCommonGroups.actCopyJoinedNameToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsDetailPRODUCT_NAME.AsString;
end;

procedure TfmCommonGroups.actCopyJoinedNoToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsDetailPRODUCT_NO.AsString;
end;

procedure TfmCommonGroups.actCopyJoinedToClipboardExecute(Sender: TObject);
begin
  inherited;
  actCopyJoinedNoToClipboard.Execute;
end;

procedure TfmCommonGroups.actCopyJoinedToClipboardUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDetail.Active and
    (cdsDetail.RecordCount > 0);
end;

procedure TfmCommonGroups.actCopyNameToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataCOMMON_PRODUCT_NAME.AsString;
end;

procedure TfmCommonGroups.actCommonProductDocStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    (cdsGridDataSPEC_STATUS_CODE.AsInteger > 1);
end;

procedure TfmCommonGroups.actCommonProductPeriodsExecute(Sender: TObject);
begin
  inherited;
  ShowProductPeriods(cdsGridDataCOMMON_PRODUCT_CODE.AsInteger);
end;

procedure TfmCommonGroups.actCommonProductPeriodsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmCommonGroups.actCompanyProductNamesExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetColumns;
end;

procedure TfmCommonGroups.actCompanyProductNamesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= (FProductClass = pcNormal);
end;

procedure TfmCommonGroups.actCommonProductDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient, cdsGridDataCOMMON_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmCommonGroups.actJoinedProductDocStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDetail.Active and
    (cdsDetail.RecordCount > 0) and
    (cdsDetailSPEC_STATUS_CODE.AsInteger > 1);
end;

procedure TfmCommonGroups.actJoinedProductPeriodsExecute(Sender: TObject);
begin
  inherited;
  ShowProductPeriods(cdsDetailPRODUCT_CODE.AsInteger);
end;

procedure TfmCommonGroups.actJoinedProductPeriodsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsDetail.Active and
    (cdsDetail.RecordCount > 0);
end;

procedure TfmCommonGroups.actJoinedProductDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient, cdsDetailPRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmCommonGroups.actCandidateProductDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsCandidateProducts.Active and
    (cdsCandidateProducts.RecordCount > 0) and
    (cdsCandidateProductsSPEC_STATUS_CODE.AsInteger > 1);
end;

procedure TfmCommonGroups.actCandidateProductPeriodsExecute(Sender: TObject);
begin
  inherited;
  ShowProductPeriods(cdsCandidateProductsPRODUCT_CODE.AsInteger);
end;

procedure TfmCommonGroups.actCandidateProductPeriodsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsCandidateProducts.Active and
    (cdsCandidateProducts.RecordCount > 0);
end;

procedure TfmCommonGroups.actCandidateProductDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient, cdsCandidateProductsPRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmCommonGroups.actStartMovingUpdate(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:=
        (EditMode = emEdit) and
        cdsGridData.Active and
        (cdsGridData.RecordCount > 1);

      ImageIndex:= 121 + Ord(Checked);
      Hint:= IfThen(Checked, SCancelMovingHint, SStartMovingHint);
    end;
end;

procedure TfmCommonGroups.actShowInactiveExecute(Sender: TObject);
begin
  inherited;
  ShowInactive(not FShowInactive);
end;

procedure TfmCommonGroups.actStartMovingExecute(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      Checked:= not Checked;

      if Checked then
        begin
          FMovedCommonProductCode:= cdsGridDataCOMMON_PRODUCT_CODE.AsInteger;
          FMovedCommonProductJoinedToProductCode:= cdsGridDataJOINED_TO_PRODUCT_CODE.AsInteger;
          FMovedCommonProductIsStrategic:= cdsGridDataIS_STRATEGIC.AsBoolean;
        end
      else
        begin
          FMovedCommonProductCode:= 0;
          FMovedCommonProductJoinedToProductCode:= 0;
          FMovedCommonProductIsStrategic:= False;
        end;
    end;  { with }
end;

procedure TfmCommonGroups.actFinishMovingUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    (FMovedCommonProductCode > 0);
end;

procedure TfmCommonGroups.actFinishMovingExecute(Sender: TObject);
begin
  inherited;

  if RelationExists(cdsGridDataCOMMON_PRODUCT_CODE.AsInteger, FMovedCommonProductCode) then
    raise Exception.Create(SCircularReference);

  if FMovedCommonProductIsStrategic and not cdsGridDataIS_STRATEGIC.AsBoolean then
    raise Exception.Create(SCantMoveStrategicProduct);

  SetCommonProductJoinedTo(FMovedCommonProductCode, cdsGridDataCOMMON_PRODUCT_CODE.AsInteger);
  actStartMoving.Execute;
  RefreshTreeList(False);
end;

procedure TfmCommonGroups.actMakeRootUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    (FMovedCommonProductCode > 0) and
    (FMovedCommonProductJoinedToProductCode > 0);
end;

procedure TfmCommonGroups.actMakeRootExecute(Sender: TObject);
begin
  inherited;
  SetCommonProductJoinedTo(FMovedCommonProductCode, 0);
  actStartMoving.Execute;
  RefreshTreeList(False);
end;

procedure TfmCommonGroups.SetColumns;
begin
  frCommonGroupProducts.grdIncluded.Columns.BeginUpdate;
  try
    frCommonGroupProducts.grdIncluded.Columns[0].Visible:= not actCompanyProductNames.Checked;
    frCommonGroupProducts.grdIncluded.Columns[1].Visible:= not actCompanyProductNames.Checked;
    frCommonGroupProducts.grdIncluded.Columns[2].Visible:= actCompanyProductNames.Checked;
  finally
    frCommonGroupProducts.grdIncluded.Columns.EndUpdate;
  end;

  frCommonGroupProducts.grdExcluded.Columns.BeginUpdate;
  try
    frCommonGroupProducts.grdExcluded.Columns[0].Visible:= not actCompanyProductNames.Checked;
    frCommonGroupProducts.grdExcluded.Columns[1].Visible:= not actCompanyProductNames.Checked;
    frCommonGroupProducts.grdExcluded.Columns[2].Visible:= actCompanyProductNames.Checked;
  finally
    frCommonGroupProducts.grdExcluded.Columns.EndUpdate;
  end;
end;

procedure TfmCommonGroups.SetCommonProductJoinedTo(AProductCode,
  AJoinedToProductCode: Integer);
begin
  grdData.DataSource.DataSet.TempDisableControls /
    cdsGridData.TempDisableControls /
      procedure begin
        cdsGridData.Locate('COMMON_PRODUCT_CODE', AProductCode, []);

        cdsGridData.SafeEdit /
          procedure begin
            cdsGridDataJOINED_TO_PRODUCT_CODE.AsVariant:= IntToVar(AJoinedToProductCode);
          end;

        RefreshCalcFields(True);

        cdsGridData.Locate('COMMON_PRODUCT_CODE', AProductCode, []);
      end;
end;

procedure TfmCommonGroups.cdsHeaderCalcFields(DataSet: TDataSet);
var
  TotalConcreteProductCount: Variant;
  CandidateConcreteProductCount: Variant;
begin
  inherited;

  TotalConcreteProductCount:= IfThen(FShowInactive, cdsHeaderTOTAL_CONCRETE_PRODUCT_COUNT.AsVariant, cdsHeaderACTIVE_CONCRETE_PRODUCT_COUNT.AsVariant);
  CandidateConcreteProductCount:= IfThen(FShowInactive, cdsCandidateProducts_TOTAL_COUNT.AsVariant, cdsCandidateProducts_ACTIVE_COUNT.AsVariant);

  cdsHeader_JOINED_PRODUCT_COUNT.AsVariant:=
    IntToVar(VarToInt(TotalConcreteProductCount) - VarToInt(CandidateConcreteProductCount));
end;

function TfmCommonGroups.GetJoinedProductsStat(ACommonProductCode: Integer;
  AJoinedProductsStat: TJoinedProductsStat): Real;
var
  Stats: TStringList;
  StatsDelimitedText: string;
begin
  Result:= 0;
  if (FJoinedProductsStats.Count > 0) then
    begin
      StatsDelimitedText:= FJoinedProductsStats.Values[IntToStr(ACommonProductCode)];
      if (StatsDelimitedText <> '') then
        begin
          Stats:= TStringList.Create;
          try
            Stats.Delimiter:= ';';
            Stats.DelimitedText:= StatsDelimitedText;

            if (Stats.Count > Ord(AJoinedProductsStat)) then
              Result:= StrToFloat(Stats[Ord(AJoinedProductsStat)]);
          finally
            FreeAndNil(Stats);
          end;  { try }
        end;  { if }
    end;  { if }
end;

function TfmCommonGroups.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmCommonGroups.grdDataDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;

  with Column.Field.DataSet do
    if BOF and EOF then
      Exit;

  if (Column.FieldName = 'COMMON_PRODUCT_NAME') then
    DrawTreeImageColumnCell(grdData, ilCommonProducts, GetImageIndex, Rect, Column);
end;

procedure TfmCommonGroups.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  SpecStatusCode: Integer;
begin
  inherited;

  if (FMovedCommonProductCode > 0) and
     (grdData.DataSource.DataSet.FieldByName('COMMON_PRODUCT_CODE').AsInteger = FMovedCommonProductCode) then
    begin
      if (ActiveControl <> grdData) or not (gdFocused in State) then
        AFont.Color:= clBlue;

      AFont.Style:= [fsBold];
    end
  else
    begin
      if (grdData.DataSource.DataSet.FieldByName('_JOINED_PRODUCT_COUNT').AsInteger = 0) and
         (Column.FieldName <> 'SPEC_STATUS_CODE') then
        AFont.Color:= clGray;
    end;

  if (Column.FieldName = 'SPEC_STATUS_CODE') then
    begin
      SpecStatusCode:= grdData.DataSource.DataSet.FieldByName('SPEC_STATUS_CODE').AsInteger;

      if InRange(SpecStatusCode, Low(SpecStateColors), High(SpecStateColors)) then
        Background:= SpecStateColors[SpecStatusCode];
    end;

  if (grdData.DataSource.DataSet.FieldByName('IS_INACTIVE').AsInteger = 1) then
    AFont.Color:= clGray;
end;

procedure TfmCommonGroups.pdsGridDataParamsIS_USED_BYGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
const
  UsedBy: array[0..3] of string =
    (SAllInBrackets, SIsUsedBySalesAbbrev,
     SIsUsedBySaleProductionAbbrev, SIsUsedByEnvProductionAbbrev);
begin
  inherited;
  Text:= UsedBy[Sender.AsInteger];
end;

procedure TfmCommonGroups.pdsGridDataParamsIS_PROVIDED_BYGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
const
  ProvidedBy: array[0..3] of string =
    (SAllInBrackets, SIsProvidedByDeliveriesAbbrev,
     SIsProvidedBySaleProductionAbbrev, SIsProvidedByEnvProductionAbbrev);
begin
  inherited;
  Text:= ProvidedBy[Sender.AsInteger];
end;

procedure TfmCommonGroups.frCommonGroupProductsgrdIncludedDblClick(
  Sender: TObject);
var
  cds: TAbmesClientDataSet;
begin
  inherited;

  if (EditMode = emEdit) and
     (frCommonGroupProducts.grdIncluded.Col = frCommonGroupProducts.grdIncluded.Columns.Count) then
    begin
      if not cdsDetailIS_THOROUGHLY_ENGINEERED.AsBoolean then
        begin
          cds:= TAbmesClientDataSet.Create(Self);
          try
            cds.CloneCursor(cdsDetail, False, True);

            cdsDetail.TempDisableControls/
              procedure begin
                cds.ForEach/
                  procedure begin
                    if (cds.FieldByName('PRODUCT_CODE').AsInteger <> cdsDetailPRODUCT_CODE.AsInteger) and
                       (cds.FieldByName('IS_THOROUGHLY_ENGINEERED').AsInteger = 1) then
                      cds.SafeEdit/
                        procedure begin
                          cds.FieldByName('IS_THOROUGHLY_ENGINEERED').AsInteger:= 0;
                        end;
                  end;
              end;
          finally
            FreeAndNil(cds);
          end;
        end;

      cdsDetail.SafeEdit/
         procedure begin
           cdsDetailIS_THOROUGHLY_ENGINEERED.AsBoolean:= not cdsDetailIS_THOROUGHLY_ENGINEERED.AsBoolean;
         end;
    end
  else
    frCommonGroupProducts.grdIncludedDblClick(Sender);
end;

procedure TfmCommonGroups.frCommonGroupProductsgrdIncludedGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.FieldName = 'SPEC_STATUS_CODE') and
     (not Column.Field.IsNull) and
     InRange(Column.Field.AsInteger, Low(SpecStateColors), High(SpecStateColors)) then
    Background:= SpecStateColors[Column.Field.AsInteger];

  if (Sender as TAbmesDBGrid).DataSource.DataSet.FieldByName('IS_INACTIVE').AsBoolean then
    AFont.Color:= clGray;
end;

procedure TfmCommonGroups.FocusTopCommonProduct;
begin
  grdData.DataSource.DataSet.First;
end;

procedure TfmCommonGroups.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled, ASelectMode: Boolean;
  AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FSelectMode:= ASelectMode;

  if Assigned(ADataSet) and
     Assigned(ADataSet.FindField('PRODUCT_CODE')) and
     (ADataSet.FindField('PRODUCT_CODE').AsInteger <> 0) then
    cdsGridData.Params.ParamByName('PRODUCT_PARENT_CODE').AsInteger:=
      GetProductParent(ADataSet.FindField('PRODUCT_CODE').AsInteger);

  FProductClass:= AProductClass;
end;

class function TfmCommonGroups.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AChosenProductCodePtr: PInteger;
  AProductClass: TProductClass): Boolean;
var
  f: TfmCommonGroups;
begin
  dmMain.LoginContext.CheckUserActivity(uaCommonGroups);

  if (AEditMode <> emReadOnly) and not dmMain.LoginContext.HasUserActivity(uaCommonGroupsEdit) then
    AEditMode:= emReadOnly;

  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled,
      Assigned(AChosenProductCodePtr), AProductClass);
    f.InternalShowForm;
    Result:= f.FChangesApplied;

    if Assigned(AChosenProductCodePtr) then
      AChosenProductCodePtr^:= f.FChosenProductCode;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmCommonGroups.DoApplyUpdates;
var
  GridDataBookmark: TBookmark;
  DetailBookmark: TBookmark;
begin
  grdData.DataSource.DataSet.DisableControls;
  cdsGridData.DisableControls;
  cdsDetail.DisableControls;
  try
    GridDataBookmark:= cdsGridData.Bookmark;
    DetailBookmark:= cdsDetail.Bookmark;
    try
      cdsGridData.First;
      while not cdsGridData.Eof do
        begin
          if (VarToInt(cdsDetail_THOROUGHLY_ENGINEERED_COUNT.AsVariant) > 1) then
            begin
              GridDataBookmark:= cdsGridData.Bookmark;
              DetailBookmark:= cdsDetail.Bookmark;

              frCommonGroupProducts.grdIncluded.SetFocus;

              raise Exception.Create(STwoOrMoreThoroughlyEngineered);
            end;  { if }

          cdsGridData.Next;
        end;  { while }
    finally
      cdsGridData.Bookmark:= GridDataBookmark;
      cdsDetail.Bookmark:= DetailBookmark;
    end;  { try }
  finally
    grdData.DataSource.DataSet.EnableControls;
    cdsGridData.EnableControls;
    cdsDetail.EnableControls;
  end;  { try }

  inherited;

  FChangesApplied:= True;
end;

procedure TfmCommonGroups.btnSelectTreeProductClick(Sender: TObject);
begin
  inherited;
  btnSelectCommonGroupProduct.Down:= False;
  btnSelectCandidateProduct.Down:= False;
end;

procedure TfmCommonGroups.btnSelectCommonGroupProductClick(
  Sender: TObject);
begin
  inherited;
  btnSelectTreeProduct.Down:= False;
  btnSelectCandidateProduct.Down:= False;
end;

procedure TfmCommonGroups.btnSelectCandidateProductClick(Sender: TObject);
begin
  inherited;
  btnSelectTreeProduct.Down:= False;
  btnSelectCommonGroupProduct.Down:= False;
end;

procedure TfmCommonGroups.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FChosenProductCode:= 0;
  if (ModalResult = mrOK) then
    begin
      if btnSelectTreeProduct.Down then
        FChosenProductCode:= cdsGridDataCOMMON_PRODUCT_CODE.AsInteger;

      if btnSelectCommonGroupProduct.Down then
        FChosenProductCode:= cdsDetailPRODUCT_CODE.AsInteger;

      if btnSelectCandidateProduct.Down then
        FChosenProductCode:= cdsCandidateProductsPRODUCT_CODE.AsInteger;
    end;  { if }

  inherited;
end;

class function TfmCommonGroups.ShowForm(
  AdmDocClient: TdmDocClient; AProductParentCode, AProductCode: Integer;
  AProductClass: TProductClass): Boolean;
var
  cdsCommonGroupsParams: TAbmesClientDataSet;
begin
  dmMain.LoginContext.CheckUserActivity(uaCommonGroups);

  cdsCommonGroupsParams:= TAbmesClientDataSet.Create(nil);
  try
    cdsCommonGroupsParams.FieldDefs.Add('PRODUCT_PARENT_CODE', ftFloat);
    cdsCommonGroupsParams.FieldDefs.Add('PRODUCT_CODE', ftFloat);

    cdsCommonGroupsParams.CreateDataSet;
    try
      cdsCommonGroupsParams.AppendRecord([AProductParentCode, AProductCode]);
      Result:= ShowForm(AdmDocClient, cdsCommonGroupsParams, emReadOnly, doNone, False, nil, AProductClass);
    finally
      cdsCommonGroupsParams.Close;
    end;  { try }
  finally
    FreeAndNil(cdsCommonGroupsParams);
  end;  { try }
end;

procedure TfmCommonGroups.ShowInactive(AValue: Boolean);
var
  CommonProductCode: Integer;
  ProductCode: Integer;
  CandidateProductCode: Integer;
begin
  FShowInactive:= AValue;

  actShowInactive.Checked:= FShowInactive;
  btnShowInactive.Down:= FShowInactive;

  frCommonGroupProducts.grdIncluded.SelectedRows.Clear;
  frCommonGroupProducts.grdExcluded.SelectedRows.Clear;

  CommonProductCode:= cdsGridDataCOMMON_PRODUCT_CODE.AsInteger;
  ProductCode:= cdsDetailPRODUCT_CODE.AsInteger;
  CandidateProductCode:= cdsCandidateProductsPRODUCT_CODE.AsInteger;

  grdData.DataSource.DataSet.TempDisableControls /
    procedure begin
      RefilterDataSet(cdsGridData, not FShowInactive);
    end;

  RefilterDataSet(cdsDetail, not FShowInactive);
  RefilterDataSet(cdsCandidateProducts, not FShowInactive);

  RefreshCalcFields;

  if not cdsGridData.Locate('COMMON_PRODUCT_CODE', CommonProductCode, []) then
    cdsGridData.First;

  if (CommonProductCode = cdsGridDataCOMMON_PRODUCT_CODE.AsInteger) then
    begin
      if not cdsDetail.Locate('PRODUCT_CODE', ProductCode, []) then
        cdsDetail.First;
    end;

  if not cdsCandidateProducts.Locate('PRODUCT_CODE', CandidateProductCode, []) then
    cdsCandidateProducts.First;
end;

procedure TfmCommonGroups.ShowProductPeriods(AProductCode: Integer);
begin
  cdsProductPeriodsParams.CreateDataSet;
  try
    cdsProductPeriodsParams.AppendRecord([AProductCode]);
    TfmProductPeriods.ShowForm(nil, cdsProductPeriodsParams, emReadOnly);
  finally
    cdsProductPeriodsParams.Close;
  end;
end;

end.

