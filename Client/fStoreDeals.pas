unit fStoreDeals;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame, fDateIntervalFrame, Mask,
  uClientTypes, dDocClient, Menus, uProducts, DBGridEhGrouping;

type
  TfmStoreDeals = class(TGridForm)
    actCopyToClipboard: TAction;
    actCopyNoToClipboard: TAction;
    actCopyNameToClipboard: TAction;
    actCopyDetailNoToClipboard: TAction;
    actCopyDetailNameToClipboard: TAction;
    actCopySaleProductNoToClipboard: TAction;
    actCopySaleProductNameToClipboard: TAction;
    actProductDoc: TAction;
    actDetailDoc: TAction;
    actSaleProductDoc: TAction;
    actDoc: TAction;
    cdsGridDataSTORE_CODE: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSTORE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsGridDataIN_OUT: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataBND_PROCESS_CODE: TAbmesFloatField;
    cdsGridDataBND_PO_CLASS_ABBREV: TAbmesWideStringField;
    cdsGridDataBND_PO_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataWORK_DEPT_NAME: TAbmesWideStringField;
    cdsGridDataWORK_ORDER_NO: TAbmesWideStringField;
    cdsGridDataQUANTITY: TAbmesFloatField;
    cdsGridDataMEASURE_CODE: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataTOTAL_PRICE: TAbmesFloatField;
    cdsGridDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataSTORNO_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSTORNO_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataSTORNO_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSTORE_REQUEST_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_NAME: TAbmesWideStringField;
    cdsGridDataENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataMLL_CHANGE_STATUS: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField;
    cdsGridDataVENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataVENDOR_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataINVOICE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataINVOICE_NO: TAbmesFloatField;
    cdsGridDataSTORE_NAME: TAbmesWideStringField;
    cdsGridDataSTORE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataSINGLE_PRICE: TAbmesFloatField;
    cdsGridDataIS_STORNO: TAbmesFloatField;
    cdsGridDataBND_PROCESS_ABBREV: TAbmesWideStringField;
    cdsGridDataPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    cdsGridDataSTORE_REQUEST_ID: TAbmesWideStringField;
    cdsGridDataDETAIL_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_NO: TAbmesFloatField;
    cdsGridDataDETAIL_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_DOC_CODE: TAbmesFloatField;
    cdsGridDataSALE_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataSALE_PRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataSALE_PRODUCT_NO: TAbmesFloatField;
    cdsGridDataSALE_PRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataSALE_PRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSALE_PRODUCT_DOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataSD_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataSD_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSD_DOC_CODE: TAbmesFloatField;
    cdsGridData_TOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_TOTAL_QUANTITY: TAbmesFloatField;
    cdsGridData_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_MLL_CHANGE_STATUS_ABBREV: TAbmesWideStringField;
    cdsGridData_TOTAL_QUANTITY_RAW: TAggregateField;
    cdsGridData_TOTAL_ACCOUNT_QUANTITY_RAW: TAggregateField;
    cdsGridData_IS_ONE_MEASURE: TAggregateField;
    cdsGridData_IS_ONE_ACCOUNT_MEASURE: TAggregateField;
    cdsGridData_OVERALL_TOTAL_PRICE: TAggregateField;
    pdsGridDataParamsSTORE_DEAL_NO: TAbmesFloatField;
    pdsGridDataParamsSTART_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsALL_FILTERED_DEPTS: TAbmesFloatField;
    pdsGridDataParamsALL_FILTERED_PRODUCTS: TAbmesFloatField;
    pdsGridDataParamsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSTORE_REQUEST_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_IN: TAbmesFloatField;
    pdsGridDataParamsIS_OUT: TAbmesFloatField;
    pdsGridDataParamsIS_STORNO: TAbmesFloatField;
    pdsGridDataParamsIS_NOT_STORNO: TAbmesFloatField;
    pdsGridDataParamsOTHER_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsPRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsSTORE_CODE: TAbmesFloatField;
    pdsGridDataParamsBND_PROCESS: TAbmesWideStringField;
    cdsProcesses: TAbmesClientDataSet;
    cdsProcessesPROCESS_CODE: TAbmesFloatField;
    cdsProcessesPROCESS_NO: TAbmesFloatField;
    cdsProcessesPROCESS_ABBREV: TAbmesWideStringField;
    cdsProcessesPROCESS_NAME: TAbmesWideStringField;
    dsProcesses: TDataSource;
    pdsGridDataParams_PRODUCT_NO: TAbmesWideStringField;
    pdsGridDataParams_STORE_DEPT_NO: TAbmesWideStringField;
    pdsGridDataParams_DEPT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_DATE_INTERVAL: TAbmesWideStringField;
    pdsGridDataParamsREPORT_TAG: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParams_STORE_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_STORE_DEPT_NAME: TAbmesWideStringField;
    pdsGridDataParams_BND_PROCESS_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_DEPT_NAME: TAbmesWideStringField;
    pdsGridDataParamsSTORE_REQUEST_BRANCH_NAME: TAbmesWideStringField;
    pdsGridDataParamsSTORE_REQUEST_BRANCH_ID: TAbmesWideStringField;
    pmCopy: TPopupMenu;
    miCopyNoToClipboard: TMenuItem;
    miCopyNameToClipboard: TMenuItem;
    miCopyDetailNoToClipboard: TMenuItem;
    miCopyDetailNameToClipboard: TMenuItem;
    miCopySaleProductNoToClipboard: TMenuItem;
    miCopySaleProductNameToClipboard: TMenuItem;
    pcMain: TPageControl;
    tsIdentification: TTabSheet;
    grdIdentification: TAbmesDBGrid;
    tsQuantitiesAndPrices: TTabSheet;
    grdOtch: TAbmesDBGrid;
    tsSysInfo: TTabSheet;
    grdSysInfo: TAbmesDBGrid;
    tsMODEL: TTabSheet;
    grdMODEL: TAbmesDBGrid;
    tsDelivery: TTabSheet;
    grdDelivery: TAbmesDBGrid;
    tlbTopButtons: TToolBar;
    sepBeforeCopyButton: TToolButton;
    btnCopyToClipboard: TToolButton;
    tlbDoc: TToolBar;
    sepBeforeProductDoc: TToolButton;
    lblProductDoc: TLabel;
    btnProductDoc: TToolButton;
    tlbSaleProductDoc: TToolBar;
    sepBeforeSaleProductDoc: TToolButton;
    lblSaleProductDoc: TLabel;
    btnSaleProductDoc: TToolButton;
    tlbDetailDoc: TToolBar;
    sepBeforeDetailDoc: TToolButton;
    lblDetailDoc: TLabel;
    btnDetailDoc: TToolButton;
    tlbSDDoc: TToolBar;
    sepBeforeSDDoc: TToolButton;
    lblSDDoc: TLabel;
    btnSDDoc: TToolButton;
    pnlTop: TPanel;
    tbToggleQuantity: TToolBar;
    btnToggleProductDisplay: TSpeedButton;
    btnWorkMeasure: TSpeedButton;
    btnAccountMeasure: TSpeedButton;
    gbFilter: TGroupBox;
    lblStore: TLabel;
    lblInterval: TLabel;
    lblProductName: TLabel;
    edtStore: TDBEdit;
    edtProductName: TDBEdit;
    edtProductNo: TDBEdit;
    frDateInterval: TfrDateIntervalFrame;
    pnlBottom4: TPanel;
    btnEdit: TBitBtn;
    pdsGridDataParamsBND_PROCESS_CODE: TAbmesFloatField;
    cdsGridDataACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataHAS_BND_SD: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField;
    tsFinModel: TTabSheet;
    grdFinModel: TAbmesDBGrid;
    cdsGridDataRFML_BND_OBJECT_ID: TAbmesWideStringField;
    cdsGridDataRFML_PARTNER_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataRFML_QUANTITY: TAbmesFloatField;
    sepAfterToggleProductDisplay: TToolButton;
    cdsGridDataSALE_TOTAL_PRICE: TAbmesFloatField;
    btnNewStoreDealIn: TBitBtn;
    btnNewStoreDealOut: TBitBtn;
    actNewStoreDealIn: TAction;
    actNewStoreDealOut: TAction;
    cdsGridDataRFML_DOCUMENT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataRFML_DOCUMENT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPROJECT_PRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPROJECT_PRODUCT_NO: TAbmesFloatField;
    cdsGridDataORG_TASK_PROPOSAL_NO: TAbmesFloatField;
    cdsGridDataREQUEST_EMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataREQUEST_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataSTORE_EMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataSTORE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataOTHER_EMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataOTHER_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataDELIVERY_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDELIVERY_DOC_CODE: TAbmesFloatField;
    cdsGridDataDELIVERY_HAS_DOC_ITEMS: TAbmesFloatField;
    tlbDeliveryDoc: TToolBar;
    sepDeliveryDoc: TToolButton;
    lblDeliveryDoc: TLabel;
    btnDeliveryDoc: TToolButton;
    actDeliveryDoc: TAction;
    cdsGridDataBOIO_BUDGET_PRODUCT_NO: TAbmesFloatField;
    cdsGridDataBOIO_BUDGET_PRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataBND_PROCESS_OBJECT_TYPE_ABBREV: TAbmesWideStringField;
    procedure actExcelExportExecute(Sender: TObject);
    procedure actCopyNoToClipboardExecute(Sender: TObject);
    procedure actCopyToClipboardExecute(Sender: TObject);
    procedure actCopyToClipboardUpdate(Sender: TObject);
    procedure actCopyNameToClipboardExecute(Sender: TObject);
    procedure actCopyDetailNoToClipboardExecute(Sender: TObject);
    procedure actCopyDetailNameToClipboardExecute(Sender: TObject);
    procedure actCopySaleProductNoToClipboardExecute(Sender: TObject);
    procedure actCopySaleProductNameToClipboardExecute(Sender: TObject);
    procedure actProductDocExecute(Sender: TObject);
    procedure actProductDocUpdate(Sender: TObject);
    procedure actDetailDocExecute(Sender: TObject);
    procedure actDetailDocUpdate(Sender: TObject);
    procedure actSaleProductDocExecute(Sender: TObject);
    procedure actSaleProductDocUpdate(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure ProductAndStoreFieldsGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure TimeFieldsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataENTER_RESULT_STORE_BEGIN_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure pdsGridDataParamsSTORE_REQUEST_BRANCH_CODEChange(Sender: TField);
    procedure pdsGridDataParamsOTHER_DEPT_CODEChange(Sender: TField);
    procedure pdsGridDataParamsCHOSEN_PRODUCTSChange(Sender: TField);
    procedure pdsGridDataParamsCHOSEN_DEPTSChange(Sender: TField);
    procedure pdsGridDataParamsPRODUCT_CODEChange(Sender: TField);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure GridsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actCopyDetailNoToClipboardUpdate(Sender: TObject);
    procedure actCopyDetailNameToClipboardUpdate(Sender: TObject);
    procedure actNewStoreDealInUpdate(Sender: TObject);
    procedure actNewStoreDealOutUpdate(Sender: TObject);
    procedure actNewStoreDealInExecute(Sender: TObject);
    procedure actNewStoreDealOutExecute(Sender: TObject);
    procedure actDeliveryDocExecute(Sender: TObject);
    procedure actDeliveryDocUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    procedure ChosenProductsChange;
    procedure ChosenDeptsChange;
    procedure CheckNewStoreDealUserActivities(AInOut: Integer);
    procedure CheckCurrentDept;
  protected
    function GetOriginalFormCaption: string; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function ShowFilterForm: Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure DoBeforeShow; override;
  public
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

    class function CanUseDocs: Boolean; override;
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  uExcelExport, Clipbrd, uDocUtils, dMain, uClientUtils, uUtils,
  uXMLUtils, uClientMaterialListLineChanges, uTreeClientUtils, uColorConsts,
  uDealTypes, fStoreDealIn, fStoreDealOut, rStoreDeals,
  fStoreDealsFilter, uProductClientUtils, uClientDateTime, uToolbarUtils,
  uUserActivityConsts;

{$R *.dfm}

resourcestring
  SDateIntervalRequired = 'Не е зададен Времеви Интервал';
  SUnknownStoreDealTypeCode = 'Неразпознат вид движение';
  SSinglePriceBaseCurrencyCaption = 'Стойност /%s/|Единична';
  STotalPriceBaseCurrencyCaption = 'Стойност /%s/|Обща';

{ TfmStoreDeals }

procedure TfmStoreDeals.actCopyDetailNameToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataDETAIL_NAME.AsString;
end;

procedure TfmStoreDeals.actCopyDetailNameToClipboardUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= (FProductClass = pcNormal);
end;

procedure TfmStoreDeals.actCopyDetailNoToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataDETAIL_NO.AsString;
end;

procedure TfmStoreDeals.actCopyDetailNoToClipboardUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= (FProductClass = pcNormal);
end;

procedure TfmStoreDeals.actCopyNameToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NAME.AsString;
end;

procedure TfmStoreDeals.actCopyNoToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NO.AsString;
end;

procedure TfmStoreDeals.actCopySaleProductNameToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataSALE_PRODUCT_NAME.AsString;
end;

procedure TfmStoreDeals.actCopySaleProductNoToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataSALE_PRODUCT_NO.AsString;
end;

procedure TfmStoreDeals.actCopyToClipboardExecute(Sender: TObject);
begin
  inherited;
  actCopyNoToClipboard.Execute;
end;

procedure TfmStoreDeals.actCopyToClipboardUpdate(Sender: TObject);
begin
  inherited;

  with cdsGridData do
    (Sender as TAction).Enabled:=
      Active and
      not (Bof and Eof);
end;

procedure TfmStoreDeals.actDeliveryDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotDelivery,
    cdsGridDataDELIVERY_DOC_BRANCH_CODE,
    cdsGridDataDELIVERY_DOC_CODE);
end;

procedure TfmStoreDeals.actDeliveryDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataDELIVERY_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmStoreDeals.actDetailDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    cdsGridDataDETAIL_CODE.AsInteger);
end;

procedure TfmStoreDeals.actDetailDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmStoreDeals.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotStoreDeal,
    cdsGridDataSD_DOC_BRANCH_CODE.AsInteger,
    cdsGridDataSD_DOC_CODE.AsInteger);
end;

procedure TfmStoreDeals.actExcelExportExecute(Sender: TObject);
begin
  // do not call inherited
  MultiGridExcelExport(
    [ grdIdentification,
      grdOtch,
      grdSysInfo,
      Utils.IfThen(FProductClass = pcFinancial, grdFinModel, grdMODEL),
      grdDelivery
    ]);
end;

procedure TfmStoreDeals.actFormUpdate(Sender: TObject);
begin
  inherited;

  with grdIdentification do
    begin
      Columns[5].Visible:= not btnToggleProductDisplay.Down;
      Columns[6].Visible:= not btnToggleProductDisplay.Down;
      Columns[7].Visible:= btnToggleProductDisplay.Down;
    end;

  with grdOtch do
    begin
      Columns[5].Visible:= not btnToggleProductDisplay.Down;
      Columns[6].Visible:= not btnToggleProductDisplay.Down;
      Columns[7].Visible:= btnToggleProductDisplay.Down;

      Columns[8].Visible:= btnWorkMeasure.Down;
      Columns[9].Visible:= btnWorkMeasure.Down;

      Columns[10].Visible:= not btnWorkMeasure.Down;
      Columns[11].Visible:= not btnWorkMeasure.Down;

      Columns[12].Visible:= btnWorkMeasure.Down;
      Columns[13].Visible:= not btnWorkMeasure.Down;
    end;

  with grdMODEL do
    begin
      Columns[5].Visible:= not btnToggleProductDisplay.Down;
      Columns[6].Visible:= btnToggleProductDisplay.Down;
    end;

  with grdDelivery do
    begin
      Columns[5].Visible:= not btnToggleProductDisplay.Down;
      Columns[6].Visible:= btnToggleProductDisplay.Down;
    end;

  btnProductDoc.ImageIndex:= cdsGridDataHAS_DOCUMENTATION.AsInteger;
  btnDetailDoc.ImageIndex:= cdsGridDataDETAIL_HAS_DOCUMENTATION.AsInteger;
  btnSaleProductDoc.ImageIndex:= cdsGridDataSALE_PRODUCT_HAS_DOCUMENTATION.AsInteger;
  btnSDDoc.ImageIndex:= cdsGridDataSD_HAS_DOCUMENTATION.AsInteger;

  NormalizedToolbar(tlbDetailDoc).Visible:= (FProductClass = pcNormal);
  NormalizedToolbar(tlbSaleProductDoc).Visible:= (FProductClass = pcNormal);
  btnToggleProductDisplay.Visible:= (FProductClass = pcNormal);
  sepAfterToggleProductDisplay.Visible:= (FProductClass = pcNormal);
end;

procedure TfmStoreDeals.CheckNewStoreDealUserActivities(AInOut: Integer);
const
  NewStoreDealActivities: array[ioOut..ioIn] of Integer = (uaNewStoreDealOut, 0, uaNewStoreDealIn);
  NewWorkStoreDealActivities: array[ioOut..ioIn] of Integer = (uaNewWorkStoreDealOut, 0, uaNewWorkStoreDealIn);
begin
  if not LoginContext.HasUserActivity(NewStoreDealActivities[AInOut]) then
    begin
      LoginContext.CheckUserActivity(NewWorkStoreDealActivities[AInOut]);
      LoginContext.CheckUserWorkDept(LoginContext.CurrentDeptCode);
    end;  { if }
end;

procedure TfmStoreDeals.CheckCurrentDept;
begin
  if (LoginContext.CurrentDeptCode = 0) then
    raise Exception.Create(SMissingCurrentDept);

  if not dmMain.SvrDeptsTree.IsDeptStore(LoginContext.CurrentDeptCode) then
    raise Exception.Create(SCurrentDeptIsNotStore);
end;

procedure TfmStoreDeals.actNewStoreDealInExecute(Sender: TObject);
begin
  inherited;
  CheckCurrentDept;
  CheckNewStoreDealUserActivities(ioIn);
  if TfmStoreDealIn.ShowForm(nil, nil, emInsert, doNone, FProductClass) then
    RefreshGridData;
end;

procedure TfmStoreDeals.actNewStoreDealInUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emReadOnly);
end;

procedure TfmStoreDeals.actNewStoreDealOutExecute(Sender: TObject);
begin
  inherited;
  CheckCurrentDept;
  CheckNewStoreDealUserActivities(ioOut);
  if TfmStoreDealOut.ShowForm(nil, nil, emInsert, doNone, FProductClass) then
    RefreshGridData;
end;

procedure TfmStoreDeals.actNewStoreDealOutUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emReadOnly);
end;

procedure TfmStoreDeals.actPrintExecute(Sender: TObject);
begin
  // force calc fields
  pdsGridDataParams.First;
  pdsGridDataParams.Last;
  pdsGridDataParams.First;

  inherited;
end;

procedure TfmStoreDeals.actProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    cdsGridDataPRODUCT_CODE.AsInteger);
end;

procedure TfmStoreDeals.actProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmStoreDeals.actSaleProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    cdsGridDataSALE_PRODUCT_CODE.AsInteger);
end;

procedure TfmStoreDeals.actSaleProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

class function TfmStoreDeals.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

class function TfmStoreDeals.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmStoreDeals.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  if not FilterFormEnabled and not pdsGridDataParamsPRODUCT_CODE.IsNull then
    begin
      CheckEditMode(pdsGridDataParams);
      pdsGridDataParamsCHOSEN_PRODUCTS.AsString:= ChosenNodeCodeToXML(pdsGridDataParamsPRODUCT_CODE.AsInteger);
      pdsGridDataParams.Post;
    end;

  if not FilterFormEnabled and not pdsGridDataParamsSTORE_CODE.IsNull then
    begin
      CheckEditMode(pdsGridDataParams);
      pdsGridDataParamsCHOSEN_DEPTS.AsString:= ChosenNodeCodeToXML(pdsGridDataParamsSTORE_CODE.AsInteger);
      pdsGridDataParams.Post;
    end;

  Assert(FProductClass in [pcNormal, pcFinancial]);
  cdsGridData.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:= ProductClassToInt(FProductClass);

  inherited;
end;

procedure TfmStoreDeals.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsGridData_IS_ONE_MEASURE.AsVariant then
    cdsGridData_TOTAL_QUANTITY.AsFloat:=
      VarToFloat(cdsGridData_TOTAL_QUANTITY_RAW.AsVariant)
  else
    cdsGridData_TOTAL_QUANTITY.Clear;

  if cdsGridData_IS_ONE_ACCOUNT_MEASURE.AsVariant then
    cdsGridData_TOTAL_ACCOUNT_QUANTITY.AsFloat:=
      VarToFloat(cdsGridData_TOTAL_ACCOUNT_QUANTITY_RAW.AsVariant)
  else
    cdsGridData_TOTAL_ACCOUNT_QUANTITY.Clear;

  if cdsGridData_IS_ONE_MEASURE.AsVariant then
    cdsGridData_MEASURE_ABBREV.Assign(cdsGridDataMEASURE_ABBREV)
  else
    cdsGridData_MEASURE_ABBREV.Clear;

  if cdsGridData_IS_ONE_ACCOUNT_MEASURE.AsVariant then
    cdsGridData_ACCOUNT_MEASURE_ABBREV.Assign(cdsGridDataACCOUNT_MEASURE_ABBREV)
  else
    cdsGridData_ACCOUNT_MEASURE_ABBREV.Clear;

  cdsGridData_MLL_CHANGE_STATUS_ABBREV.AsString:=
    MllChangeStatusAbbrev(cdsGridDataMLL_CHANGE_STATUS.AsInteger);
end;

procedure TfmStoreDeals.cdsGridDataENTER_RESULT_STORE_BEGIN_DATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:=
    dmMain.GetDateIntervalAsString(
      cdsGridDataENTER_RESULT_STORE_BEGIN_DATE.AsDateTime,
      cdsGridDataENTER_RESULT_STORE_END_DATE.AsDateTime);
end;

procedure TfmStoreDeals.ChosenDeptsChange;
begin
  pdsGridDataParamsSTORE_CODE.Clear;
  pdsGridDataParams_STORE_DEPT_NO.Clear;
  pdsGridDataParams_STORE_DEPT_NAME.Clear;

  if HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_DEPTS.AsString) then
    if IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_DEPTS.AsString) then
      begin
        pdsGridDataParamsSTORE_CODE.AsInteger:=
          ChosenNodeXMLToNodeCode(pdsGridDataParamsCHOSEN_DEPTS.AsString);

        DoDeptFieldChanged(
          pdsGridDataParamsSTORE_CODE,
          pdsGridDataParams_STORE_DEPT_NAME,
          pdsGridDataParams_STORE_DEPT_NO);
      end
    else
      pdsGridDataParams_STORE_DEPT_NAME.AsString:= SDeptsSet;
end;

procedure TfmStoreDeals.ChosenProductsChange;
begin
  pdsGridDataParamsPRODUCT_CODE.Clear;
  pdsGridDataParams_PRODUCT_NO.Clear;
  pdsGridDataParams_PRODUCT_NAME.Clear;

  if HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
    if IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
      begin
        pdsGridDataParamsPRODUCT_CODE.AsInteger:=
          ChosenNodeXMLToNodeCode(pdsGridDataParamsCHOSEN_PRODUCTS.AsString);

        DoProductFieldChanged(
          pdsGridDataParamsPRODUCT_CODE,
          pdsGridDataParams_PRODUCT_NAME,
          pdsGridDataParams_PRODUCT_NO);
      end
    else
      pdsGridDataParams_PRODUCT_NAME.AsString:= SProductsSet[FProductClass];
end;

procedure TfmStoreDeals.CloseDataSets;
begin
  cdsProcesses.Close;
  inherited;
end;

procedure TfmStoreDeals.DoBeforeShow;
var
  MsgParams: TStrings;
begin
  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);

  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  inherited;
end;

procedure TfmStoreDeals.FormCreate(Sender: TObject);
begin
  inherited;

  ReportClass:= TrptStoreDeals;
  EditFormClass:= TfmStoreDealIn;
  FilterFormClass:= TfmStoreDealsFilter;

  cdsGridData.Params.ParamByName('START_DATE').Value:= ContextDate;
  cdsGridData.Params.ParamByName('END_DATE').Value:= ContextDate;

  RegisterDateFields(cdsGridData);

  frDateInterval.FieldNames:= 'START_DATE;END_DATE';

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridDataSINGLE_PRICE,
      cdsGridDataTOTAL_PRICE,
      cdsGridDataACCOUNT_SINGLE_PRICE,
      cdsGridDataSALE_TOTAL_PRICE,
      cdsGridData_OVERALL_TOTAL_PRICE]);

  RegisterFieldTextVisibility(IsSalePriceVisible, cdsGridDataSALE_TOTAL_PRICE);
end;

procedure TfmStoreDeals.FormShow(Sender: TObject);
begin
  inherited;

  grdOtch.Columns[12].Title.Caption:= Format(SSinglePriceBaseCurrencyCaption, [LoginContext.BaseCurrencyAbbrev]);
  grdOtch.Columns[13].Title.Caption:= Format(SSinglePriceBaseCurrencyCaption, [LoginContext.BaseCurrencyAbbrev]);
  grdOtch.Columns[14].Title.Caption:= Format(STotalPriceBaseCurrencyCaption, [LoginContext.BaseCurrencyAbbrev]);

  if (FProductClass = pcFinancial) then
    tsMODEL.PageControl:= nil
  else
    tsFinModel.PageControl:= nil;

  pcMain.ActivePage:= tsIdentification;
end;

function TfmStoreDeals.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

function TfmStoreDeals.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmStoreDeals.GridsGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
var
  Highlight: Boolean;
  Field: TField;
begin
  inherited;

  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if not Assigned(Field) or (Highlight and (ActiveControl = Sender)) or (Field.DataSet.Bof and Field.DataSet.Eof) then
    Exit;

  if Field.DataSet.FieldByName('IS_STORNO').AsBoolean then
    begin
      Background:= ccAnnuledObjectBackground;
      Exit;
    end;

  if (Field.FieldName = 'STORE_DEAL_TYPE_ABBREV') then
    case cdsGridDataSTORE_DEAL_TYPE_CODE.AsInteger of
      sdtIn:
        Background:= ccStoreDealIn;

      sdtOut:
        Background:= ccStoreDealOut;

    else
      raise Exception.Create(SUnknownStoreDealTypeCode);
    end;
end;

procedure TfmStoreDeals.Initialize;
begin
  inherited Initialize;

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmStoreDeals.OpenDataSets;
begin
  inherited;
  cdsProcesses.Open;
end;

procedure TfmStoreDeals.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if FilterFormEnabled and (LoginContext.CurrentDeptCode > 0) then
    begin
      CheckEditMode(pdsGridDataParams);
      pdsGridDataParamsCHOSEN_DEPTS.AsString:= ChosenNodeCodeToXML(-1);
      pdsGridDataParams.Post;
    end;

  CheckEditMode(pdsGridDataParams);
  ChosenProductsChange;
  ChosenDeptsChange;
  pdsGridDataParams.Post;
end;

procedure TfmStoreDeals.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if pdsGridDataParamsSTART_DATE.IsNull or pdsGridDataParamsEND_DATE.IsNull then
    raise Exception.Create(SDateIntervalRequired);
end;

procedure TfmStoreDeals.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;

  if pdsGridDataParamsSTART_DATE.IsNull or
     pdsGridDataParamsEND_DATE.IsNull or
     (pdsGridDataParamsSTART_DATE.AsDateTime > pdsGridDataParamsEND_DATE.AsDateTime) then
    pdsGridDataParams_DATE_INTERVAL.Clear
  else
    pdsGridDataParams_DATE_INTERVAL.AsString:=
      dmMain.GetDateIntervalAsString(pdsGridDataParamsSTART_DATE.AsDateTime, pdsGridDataParamsEND_DATE.AsDateTime);

  pdsGridDataParamsREPORT_TAG.AsInteger:= Ord(btnToggleProductDisplay.Down) + 1;

  pdsGridDataParams_PRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmStoreDeals.pdsGridDataParamsCHOSEN_DEPTSChange(Sender: TField);
begin
  inherited;
  ChosenDeptsChange;
end;

procedure TfmStoreDeals.pdsGridDataParamsCHOSEN_PRODUCTSChange(Sender: TField);
begin
  inherited;
  ChosenProductsChange;
end;

procedure TfmStoreDeals.pdsGridDataParamsOTHER_DEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(
    pdsGridDataParamsOTHER_DEPT_CODE,
    pdsGridDataParams_DEPT_NAME,
    pdsGridDataParams_DEPT_IDENTIFIER);
end;

procedure TfmStoreDeals.pdsGridDataParamsPRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  DoProductFieldChanged(
    pdsGridDataParamsPRODUCT_CODE,
    pdsGridDataParams_PRODUCT_NAME,
    pdsGridDataParams_PRODUCT_NO);
end;

procedure TfmStoreDeals.pdsGridDataParamsSTORE_REQUEST_BRANCH_CODEChange(
  Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(
    pdsGridDataParamsSTORE_REQUEST_BRANCH_CODE,
    pdsGridDataParamsSTORE_REQUEST_BRANCH_NAME,
    pdsGridDataParamsSTORE_REQUEST_BRANCH_ID);
end;

procedure TfmStoreDeals.ProductAndStoreFieldsGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

procedure TfmStoreDeals.SetDataParams(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean;
  AProductClass: TProductClass);
begin
  FProductClass:= AProductClass;
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
end;

procedure TfmStoreDeals.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDateInterval) then
    AFrame.ReadOnly:= True
  else
    inherited;
end;

function TfmStoreDeals.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  if (cdsGridDataIN_OUT.AsInteger = 1) then
    begin
      if cdsGridDataSTORNO_EMPLOYEE_CODE.IsNull then
        Result:= TfmStoreDealIn.ShowForm(dmDocClient, cdsGridData, AEditMode, doNone, FProductClass)
      else
        Result:= TfmStoreDealIn.ShowForm(dmDocClient, cdsGridData, emReadOnly, doNone, FProductClass);
    end
  else
    begin
      if cdsGridDataSTORNO_EMPLOYEE_CODE.IsNull then
        Result:= TfmStoreDealOut.ShowForm(dmDocClient, cdsGridData, AEditMode, doNone, FProductClass)
      else
        Result:= TfmStoreDealOut.ShowForm(dmDocClient, cdsGridData, emReadOnly, doNone, FProductClass)
    end;
end;

function TfmStoreDeals.ShowFilterForm: Boolean;
begin
  Result:= TfmStoreDealsFilter.ShowForm(dmDocClient, pdsGridDataParams, emEdit, doNone, FProductClass);
end;

class function TfmStoreDeals.ShowForm(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean;
  AProductClass: TProductClass): Boolean;
var
  f: TfmStoreDeals;
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

procedure TfmStoreDeals.TimeFieldsGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;

  if not Sender.IsNull then
    Text:= TimeToStr(Sender.AsDateTime);
end;

end.
