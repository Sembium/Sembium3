unit fPlannedStoreDeals;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient, GridsEh,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  AbmesClientDataSet, DBGridEh, AbmesDBGrid, AbmesFields, Menus, JvButtons,
  ToolWin, ComCtrls, uClientTypes, dDocClient, JvComponent, JvCaptionButton,
  Mask, JvComponentBase, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateIntervalFrame, uProducts, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmPlannedStoreDeals = class(TGridForm)
    pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParams_PRODUCT_NO: TAbmesFloatField;
    pdsGridDataParamsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    pdsGridDataParamsPLAN_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsIN_P: TAbmesFloatField;
    pdsGridDataParamsOUT_P: TAbmesFloatField;
    pdsGridDataParamsSTART_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsIS_ANNULED: TAbmesFloatField;
    pdsGridDataParamsIS_NOT_ANNULED: TAbmesFloatField;
    pdsGridDataParamsIS_CLOSED: TAbmesFloatField;
    pdsGridDataParamsIS_NOT_CLOSED: TAbmesFloatField;
    cdsGridDataIN_OUT: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    cdsGridDataSTORE_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_DEAL_TYPE: TAbmesWideStringField;
    cdsGridDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataPLANNED_STORE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsGridDataPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsGridData_IS_ONE_MEASURE: TAggregateField;
    cdsGridData_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataMEASURE_CODE: TAbmesFloatField;
    cdsGridDataCOMPLETED_QUANTITY: TAbmesFloatField;
    cdsGridDataINCOMPLETED_QUANTITY: TAbmesFloatField;
    cdsGridDataTOTAL_PRICE_SC: TAbmesFloatField;
    cdsGridDataIS_DONE: TAbmesFloatField;
    cdsGridDataIS_ANNULED: TAbmesFloatField;
    cdsGridData_OVERALL_COMPLETED_QUANTITY_RAW: TAggregateField;
    cdsGridData_OVERALL_INCOMPLETED_QUANTITY_RAW: TAggregateField;
    cdsGridData_OVERALL_COMPLETED_QUANTITY: TAbmesFloatField;
    cdsGridData_OVERALL_INCOMPLETED_QUANTITY: TAbmesFloatField;
    cdsGridData_OVERALL_TOTAL_PRICE_SC: TAggregateField;
    cdsGridDataCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataINCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_IS_ONE_ACCOUNT_MEASURE: TAggregateField;
    cdsGridData_OVERALL_COMPLETED_ACCOUNT_QUANTITY_RAW: TAggregateField;
    cdsGridData_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY_RAW: TAggregateField;
    cdsGridData_OVERALL_COMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_NAME: TAbmesWideStringField;
    cdsGridDataENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataMLL_CHANGE_STATUS: TAbmesFloatField;
    cdsGridData_MLL_CHANGE_STATUS_ABBREV: TAbmesWideStringField;
    actMllChange: TAction;
    cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataSTORE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField;
    cdsGridDataVENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataVENDOR_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataDELIVERY_PLACE: TAbmesWideStringField;
    cdsGridDataBND_PROCESS_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataCLOSE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCLOSE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCLOSE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsGridDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsGridDataANNUL_EMPLOYEE_NAME: TAbmesWideStringField;
    actCopyToClipboard: TAction;
    actCopyNoToClipboard: TAction;
    actCopyNameToClipboard: TAction;
    btnCopyToClipboard: TToolButton;
    cdsGridDataBND_PROCESS_ABBREV: TAbmesWideStringField;
    actMllStoreChange: TAction;
    cdsGridDataIS_MODEL_LIMITING: TAbmesFloatField;
    sepBeforeCopyToClipboard: TToolButton;
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
    cdsGridDataPSD_ID: TAbmesWideStringField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
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
    cdsGridDataBND_PROCESS_OBJECT_CLASS_CODE: TAbmesFloatField;
    pmCopy: TPopupMenu;
    miCopyNoToClipboard: TMenuItem;
    miCopyNameToClipboard: TMenuItem;
    miCopyDetailNoToClipboard: TMenuItem;
    miCopyDetailNameToClipboard: TMenuItem;
    miCopySaleProductNoToClipboard: TMenuItem;
    miCopySaleProductNameToClipboard: TMenuItem;
    tlbDoc: TToolBar;
    sepBeforeProductDoc: TToolButton;
    lblProductDoc: TLabel;
    btnProductDoc: TToolButton;
    tlbDetailDoc: TToolBar;
    sepBeforeDetailDoc: TToolButton;
    lblDetailDoc: TLabel;
    btnDetailDoc: TToolButton;
    tlbSaleProductDoc: TToolBar;
    sepBeforeSaleProductDoc: TToolButton;
    lblSaleProductDoc: TLabel;
    btnSaleProductDoc: TToolButton;
    tbToggleQuantity: TToolBar;
    btnWorkMeasure: TSpeedButton;
    btnAccountMeasure: TSpeedButton;
    cdsGridDataPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    pdsGridDataParamsIS_ACTIVE: TAbmesFloatField;
    pdsGridDataParamsIS_INACTIVE: TAbmesFloatField;
    btnToggleProductDisplay: TSpeedButton;
    sepAfterToggleProductDisplay: TToolButton;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsPRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsSTORE_CODE: TAbmesFloatField;
    pdsGridDataParams_DEPT_NO: TAbmesWideStringField;
    pdsGridDataParams_DEPT_NAME: TAbmesWideStringField;
    pnlTop: TPanel;
    gbFilter: TGroupBox;
    lblStore: TLabel;
    lblInterval: TLabel;
    lblProductName: TLabel;
    edtStore: TDBEdit;
    edtProductName: TDBEdit;
    edtProductNo: TDBEdit;
    frDateInterval: TfrDateIntervalFrame;
    pdsGridDataParams_DATE_INTERVAL: TAbmesWideStringField;
    pdsGridDataParamsBND_PROCESS: TAbmesWideStringField;
    cdsGridDataPSD_BRANCH_ID: TAbmesFloatField;
    cdsGridDataMLL_NOTES: TAbmesWideStringField;
    cdsGridDataDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataDETAIL_TECH_COMPLETED_QTY: TAbmesFloatField;
    cdsGridDataDETAIL_TECH_INCOMPLETED_QTY: TAbmesFloatField;
    tsFinModel: TTabSheet;
    cdsGridDataRFML_BND_OBJECT_ID: TAbmesWideStringField;
    cdsGridDataRFML_PARTNER_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataRFML_QUANTITY: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField;
    actNewStoreDeal: TAction;
    cdsNewStoreDealDefaults: TAbmesClientDataSet;
    cdsNewStoreDealDefaultsBND_PROCESS_CODE: TAbmesFloatField;
    cdsNewStoreDealDefaultsBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsNewStoreDealDefaultsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsNewStoreDealDefaultsQUANTITY: TAbmesFloatField;
    cdsNewStoreDealDefaultsACCOUNT_QUANTITY: TAbmesFloatField;
    cdsNewStoreDealDefaultsPRODUCT_CODE: TAbmesFloatField;
    cdsNewStoreDealDefaultsWANTED_QUANTITY: TAbmesFloatField;
    cdsNewStoreDealDefaultsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    cdsNewStoreDealDefaultsPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    cdsNewStoreDealDefaultsSTORE_CODE: TAbmesFloatField;
    pnlEditRecord: TPanel;
    pnlMllChange: TPanel;
    btnEdit: TBitBtn;
    btnMllChange: TBitBtn;
    pnlMllStoreChange: TPanel;
    btnMllStoreChange: TBitBtn;
    pnlNewStoreDeal: TPanel;
    btnNewStoreDeal: TBitBtn;
    cdsGridDataRFML_DOCUMENT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataRFML_DOCUMENT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDELIVERY_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDELIVERY_DOC_CODE: TAbmesFloatField;
    cdsGridDataDELIVERY_HAS_DOC_ITEMS: TAbmesFloatField;
    tlbDeliveryDoc: TToolBar;
    sepDeliveryDoc: TToolButton;
    lblDeliveryDoc: TLabel;
    btnDeliveryDoc: TToolButton;
    actDeliveryDoc: TAction;
    cdsGridDataCOMPLETED_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataINCOMPLETED_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataTECH_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataTECH_MEASURE_ABBREV: TAbmesWideStringField;
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pdsGridDataParams_PRODUCT_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actEditRecordExecute(Sender: TObject);
    procedure pdsGridDataParams_DEPT_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actPrintExecute(Sender: TObject);
    procedure QuantitiesGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actMllChangeUpdate(Sender: TObject);
    procedure actMllChangeExecute(Sender: TObject);
    procedure TimeFieldsGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure pdsGridDataParamsNO_AS_TEXTValidate(Sender: TField);
    procedure actCopyToClipboardExecute(Sender: TObject);
    procedure actCopyNoToClipboardExecute(Sender: TObject);
    procedure actCopyNameToClipboardExecute(Sender: TObject);
    procedure actCopyToClipboardUpdate(Sender: TObject);
    procedure actMllStoreChangeExecute(Sender: TObject);
    procedure actMllStoreChangeUpdate(Sender: TObject);
    procedure actProductDocExecute(Sender: TObject);
    procedure actProductDocUpdate(Sender: TObject);
    procedure actDetailDocExecute(Sender: TObject);
    procedure actDetailDocUpdate(Sender: TObject);
    procedure actSaleProductDocExecute(Sender: TObject);
    procedure actSaleProductDocUpdate(Sender: TObject);
    procedure actCopyDetailNoToClipboardExecute(Sender: TObject);
    procedure actCopyDetailNoToClipboardUpdate(Sender: TObject);
    procedure actCopyDetailNameToClipboardExecute(Sender: TObject);
    procedure actCopyDetailNameToClipboardUpdate(Sender: TObject);
    procedure actCopySaleProductNoToClipboardExecute(Sender: TObject);
    procedure actCopySaleProductNoToClipboardUpdate(Sender: TObject);
    procedure actCopySaleProductNameToClipboardExecute(Sender: TObject);
    procedure actCopySaleProductNameToClipboardUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataSTORE_DEAL_BEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataENTER_RESULT_STORE_BEGIN_DATEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure pcMainChanging(Sender: TObject; var AllowChange: Boolean);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsCHOSEN_PRODUCTSChange(Sender: TField);
    procedure pdsGridDataParamsCHOSEN_DEPTSChange(Sender: TField);
    procedure actNewStoreDealUpdate(Sender: TObject);
    procedure actNewStoreDealExecute(Sender: TObject);
    procedure actDeliveryDocExecute(Sender: TObject);
    procedure actDeliveryDocUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FIsMadeChange: Boolean;
    FSyncingGrids: Boolean;
    procedure SyncGrids;
    function HasSelectedRows: Boolean;
    procedure ChosenProductsChange;
    procedure ChosenDeptsChange;
  protected
    function GetOriginalFormCaption: string; override;
    function GetGridRecordReadOnly: Boolean; override;
    function ShowFilterForm: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetInsertRecordEnabled: Boolean; override;
    class function CanUseDocs: Boolean; override;
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

    procedure Initialize; override;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  Variants, dMain, uClientUtils, uTreeClientUtils, uUserActivityConsts,
  uProcesses, uColorConsts, uUtils, uClientMaterialListLineChanges,
  fPlannedStoreDealOut, fPlannedStoreDealIn, fMaterialListLineMultiChange,
  fPlannedStoreDealsFilter, fMaterialListLineChange, rPlannedStoreDeals, Clipbrd,
  fMaterialListLineStoreMultiChange, uXMLUtils, uProductClientUtils,
  uToolbarUtils, uDealTypes, fStoreDealIn, fStoreDealOut, AbmesDialogs,
  fStoreDeal, Consts, uDocUtils;

{$R *.DFM}

resourcestring
  SOut = 'Т';
  SIn = 'П';
  STotalPrice = 'Обща Пл. Стойност (%s)';
  SAll = '< всички >';
  SChoosenLinesNotCompatible = 'Избраните редове не са за един и същ Управляем Обект и ТП Задържащо';
  SChoosenLineStoresNotCompatible = 'Избраните редове не са за едино и също ТП Задържащо';
  SRedSPlanovoTegleneOt2riRed = 'Има избран ред с планово теглене от втори ред';
  SChoosenUnboundLine = 'Има избран ред който не е обвързан с ред от МОДЕл';
  SRedSPredlojenaZamiana = 'Има избран ред с предложена замяна или невидян отказ';
  SCantChangeAnnulledPsd = 'Има избран анулиран ред';
  SCantChangeClosedPsd = 'Има избран приключен ред';
  SChooseStore = 'Изберете ТП Задържащо, в което да бъде отчетено %s!';
  STheStoreDealIn = 'Постъплението';
  STheStoreDealOut = 'Тегленето';
  SCurrentStore = 'Текущ (%s)';
  SPlannedStore = 'Планов (%s)';

{ TfmPlannedStoreDeals }

procedure TfmPlannedStoreDeals.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  with DataSet do
    case FieldByName('IN_OUT').AsInteger of
      -1: FieldByName('_DEAL_TYPE').AsString:= SOut;
       1: FieldByName('_DEAL_TYPE').AsString:= SIn;
    else
      FieldByName('_DEAL_TYPE').AsString:= '';
    end;

  if cdsGridData_IS_ONE_MEASURE.Value then
    begin
      cdsGridData_MEASURE_ABBREV.AsVariant:= cdsGridDataMEASURE_ABBREV.AsVariant;
      cdsGridData_OVERALL_COMPLETED_QUANTITY.AsVariant:= cdsGridData_OVERALL_COMPLETED_QUANTITY_RAW.AsVariant;
      cdsGridData_OVERALL_INCOMPLETED_QUANTITY.AsVariant:= cdsGridData_OVERALL_INCOMPLETED_QUANTITY_RAW.AsVariant;
    end
  else
    begin
      cdsGridData_MEASURE_ABBREV.Clear;
      cdsGridData_OVERALL_COMPLETED_QUANTITY.Clear;
      cdsGridData_OVERALL_INCOMPLETED_QUANTITY.Clear;
    end;

  if cdsGridData_IS_ONE_ACCOUNT_MEASURE.Value then
    begin
      cdsGridData_ACCOUNT_MEASURE_ABBREV.AsVariant:= cdsGridDataACCOUNT_MEASURE_ABBREV.AsVariant;
      cdsGridData_OVERALL_COMPLETED_ACCOUNT_QUANTITY.AsVariant:= cdsGridData_OVERALL_COMPLETED_ACCOUNT_QUANTITY_RAW.AsVariant;
      cdsGridData_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY.AsVariant:= cdsGridData_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY_RAW.AsVariant;
    end
  else
    begin
      cdsGridData_ACCOUNT_MEASURE_ABBREV.Clear;
      cdsGridData_OVERALL_COMPLETED_ACCOUNT_QUANTITY.Clear;
      cdsGridData_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY.Clear;
    end;

  cdsGridData_MLL_CHANGE_STATUS_ABBREV.AsString:=
    MllChangeStatusAbbrev(cdsGridDataMLL_CHANGE_STATUS.AsInteger);
end;

procedure TfmPlannedStoreDeals.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmPlannedStoreDealsFilter;
  ReportClass:= TrptPlannedStoreDeals;         // actPrint.Execute -> si haresvame koi report da pokajem
  EditFormClass:= TfmPlannedStoreDealIn; // samo da moje da se vika action-a EditRecord, tam si izbirame redaktirashta forma

  frDateInterval.FieldNames:= 'START_DATE;END_DATE';

  RegisterDateFields(cdsGridData);

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridDataTOTAL_PRICE_SC,
      cdsGridData_OVERALL_TOTAL_PRICE_SC]);
end;

procedure TfmPlannedStoreDeals.FormShow(Sender: TObject);
begin
  inherited;

  grdData.Columns[18].Title.Caption:= Format(STotalPrice, [LoginContext.SecondaryCurrencyAbbrev]);
  grdOtch.Columns[13].Title.Caption:= Format(STotalPrice, [LoginContext.SecondaryCurrencyAbbrev]);
  FIsMadeChange:= False;

  if (FProductClass = pcFinancial) then
    tsMODEL.PageControl:= nil
  else
    tsFinModel.PageControl:= nil;

  pcMain.ActivePage:= tsIdentification;
end;

procedure TfmPlannedStoreDeals.pdsGridDataParams_PRODUCT_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (Sender.AsString = '') then
    Text:= SAll
  else
    Text:= Sender.AsString;
end;

procedure TfmPlannedStoreDeals.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  Highlight: Boolean;
  Field: TField;
begin
  inherited;

  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if not Assigned(Field) or (Highlight and (ActiveControl = Sender)) or (Field.DataSet.Bof and Field.DataSet.Eof) then
    Exit;

  if (Field.FieldName = '_DEAL_TYPE') then
    case cdsGridDataIN_OUT.AsInteger of
      1:
        Background:= ccStoreDealIn;
      -1:
        Background:= ccStoreDealOut;
      else
        Background:= clBlack;
    end
  else
    if (Field.FieldName = 'PLANNED_STORE_DEAL_TYPE_ABBREV') then
      Background:= PlannedStoreDealTypeColors[
        Field.DataSet.FieldByName('PLANNED_STORE_DEAL_TYPE_CODE').AsInteger];

  if Assigned(Column) and (Column.Field = cdsGridData_MLL_CHANGE_STATUS_ABBREV) then
    begin
      AFont.Color:= MllChangeStatusColor(cdsGridDataMLL_CHANGE_STATUS.AsInteger);
      Background:= MllChangeStatusBackgroundColor(cdsGridDataMLL_CHANGE_STATUS.AsInteger);
    end;  { if }
end;

procedure TfmPlannedStoreDeals.actEditRecordExecute(Sender: TObject);
begin
  case cdsGridDataIN_OUT.AsInteger of
    1 : TfmPlannedStoreDealIn.ShowForm(dmDocClient, cdsGridData, EditMode, doNone, FProductClass);
    -1 : TfmPlannedStoreDealOut.ShowForm(dmDocClient, cdsGridData, EditMode, doNone, FProductClass);
  else
    raise Exception.Create('internal error: Unknown IN_OUT');
  end;  { case }
end;

procedure TfmPlannedStoreDeals.pdsGridDataParams_DEPT_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull then
    Text:= SAll
  else
    Text:= Sender.AsString;
end;

procedure TfmPlannedStoreDeals.actPrintExecute(Sender: TObject);
begin
//  inherited;
//  Assert(sbtnWorkMeasure.Down xor sbtnAccountMeasure.Down);

//  if sbtnWorkMeasure.Down then
    TrptPlannedStoreDeals.PrintReport(cdsGridData, pdsGridDataParams)
//  else
//    TrptPlannedStoreDealsAccountMeasure.PrintReport(cdsGridData, pdsGridDataParams);
end;

procedure TfmPlannedStoreDeals.QuantitiesGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;

  if (Sender.AsFloat = 0) then
    Text:= ''
  else
    Text:= FormatFloat((Sender as TAbmesFloatField).DisplayFormat, Sender.AsFloat);
end;

procedure TfmPlannedStoreDeals.actMllChangeUpdate(Sender: TObject);
begin
  inherited;
  with (Sender as TAction)do
    begin
      Enabled:= (EditMode <> emReadOnly) and HasSelectedRows and not cdsGridData.IsEmpty;
      Visible:= (FProductClass = pcNormal);
    end;
end;

procedure TfmPlannedStoreDeals.actMllChangeExecute(Sender: TObject);

  function RequestSingleChange: Boolean;
  begin
    cdsGridData.Bookmark:= grdData.SelectedRows[0];
    Result:= TfmMaterialListLineChange.ShowForm(dmDocClient, cdsGridData, emInsert);
  end;

  function RequestMultiChange: Boolean;
  var
    i: Integer;
    ProductCode, StoreCode: Integer;
    SelectedMlls: OleVariant;
  begin
    cdsGridData.Bookmark:= grdData.SelectedRows[0];
    ProductCode:= cdsGridDataPRODUCT_CODE.AsInteger;
    StoreCode:= cdsGridDataSTORE_CODE.AsInteger;
    for i:= 1 to grdData.SelectedRows.Count - 1 do
      begin
        cdsGridData.Bookmark:= grdData.SelectedRows[i];
        if (cdsGridDataPRODUCT_CODE.AsInteger <> ProductCode) or
           (cdsGridDataSTORE_CODE.AsInteger <> StoreCode) then
          raise Exception.Create(SChoosenLinesNotCompatible);
      end;  { for }

    SelectedMlls:= VarArrayCreate([0, grdData.SelectedRows.Count - 1], varVariant);
    for i:= 0 to grdData.SelectedRows.Count - 1 do
      begin
        cdsGridData.Bookmark:= grdData.SelectedRows[i];
        SelectedMlls[i]:=
          VarArrayOf([cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger, cdsGridDataBND_PROCESS_OBJECT_CODE.AsInteger]);
      end;  { for }

    Result:= TfmMaterialListLineMultiChange.ShowForm(dmDocClient, SelectedMlls, ProductCode, StoreCode);
  end;

var
  Changed: Boolean;
  i: Integer;
begin
  inherited;
  SyncGrids;
  Assert(grdData.SelectedRows.Count > 0);

  LoginContext.CheckUserActivity(uaMllChangeRequest);

  cdsGridData.DisableControls;
  try
    for i:= 0 to grdData.SelectedRows.Count - 1 do
      begin
        cdsGridData.Bookmark:= grdData.SelectedRows[i];

        if (cdsGridDataPLANNED_STORE_DEAL_TYPE_CODE.AsInteger <> 1) then
          raise Exception.Create(SRedSPlanovoTegleneOt2riRed);

        if not cdsGridDataANNUL_DATE.IsNull then
          raise Exception.Create(SCantChangeAnnulledPsd);

        if not cdsGridDataCLOSE_DATE.IsNull then
          raise Exception.Create(SCantChangeClosedPsd);

        if (cdsGridDataBND_PROCESS_OBJECT_CLASS_CODE.AsInteger <> pocMaterialListLine) then
          raise Exception.Create(SChoosenUnboundLine);

        if (cdsGridDataMLL_CHANGE_STATUS.AsInteger <> 0) then
          raise Exception.Create(SRedSPredlojenaZamiana);
      end;  { for }

    if (grdData.SelectedRows.Count = 1) then
      Changed:= RequestSingleChange
    else
      Changed:= RequestMultiChange;

    if Changed then
      begin
        RefreshDataSet(cdsGridData);
        FIsMadeChange:= True;
      end;
  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

procedure TfmPlannedStoreDeals.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass);
begin
  FProductClass:= AProductClass;
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
end;

procedure TfmPlannedStoreDeals.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDateInterval) then
    AFrame.ReadOnly:= True
  else
    inherited;
end;

function TfmPlannedStoreDeals.ShowFilterForm: Boolean;
begin
  Result:= TfmPlannedStoreDealsFilter.ShowForm(dmDocClient, pdsGridDataParams, emEdit, doNone, FProductClass);
end;

class function TfmPlannedStoreDeals.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass): Boolean;
var
  f: TfmPlannedStoreDeals;
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

procedure TfmPlannedStoreDeals.TimeFieldsGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;

  if not Sender.IsNull then
    Text:= TimeToStr(Sender.AsDateTime);
end;

procedure TfmPlannedStoreDeals.pdsGridDataParamsNO_AS_TEXTValidate(
  Sender: TField);
begin
  inherited;
  CheckNoAsTextField(Sender, False);
end;

procedure TfmPlannedStoreDeals.actCopyNameToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NAME.AsString;
end;

procedure TfmPlannedStoreDeals.actCopyNoToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NO.AsString;
end;

procedure TfmPlannedStoreDeals.actCopyToClipboardExecute(Sender: TObject);
begin
  inherited;
  actCopyNoToClipboard.Execute;
end;

procedure TfmPlannedStoreDeals.actCopyToClipboardUpdate(Sender: TObject);
begin
  inherited;

  with cdsGridData do
    (Sender as TAction).Enabled:=
      Active and
      not (Bof and Eof);
end;

procedure TfmPlannedStoreDeals.actMllStoreChangeExecute(Sender: TObject);

  function DoStoreChange: Boolean;
  var
    i: Integer;
    StoreCode: Integer;
    SelectedMlls: OleVariant;
  begin
    cdsGridData.Bookmark:= grdData.SelectedRows[0];
    StoreCode:= cdsGridDataSTORE_CODE.AsInteger;
    for i:= 1 to grdData.SelectedRows.Count - 1 do
      begin
        cdsGridData.Bookmark:= grdData.SelectedRows[i];
        if (cdsGridDataSTORE_CODE.AsInteger <> StoreCode) then
          raise Exception.Create(SChoosenLineStoresNotCompatible);
      end;  { for }

    SelectedMlls:= VarArrayCreate([0, grdData.SelectedRows.Count - 1], varVariant);
    for i:= 0 to grdData.SelectedRows.Count - 1 do
      begin
        cdsGridData.Bookmark:= grdData.SelectedRows[i];
        SelectedMlls[i]:=
          VarArrayOf([cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger, cdsGridDataBND_PROCESS_OBJECT_CODE.AsInteger]);
      end;  { for }

    Result:= TfmMaterialListLineStoreMultiChange.ShowForm(dmDocClient, SelectedMlls, StoreCode);
  end;

var
  Changed: Boolean;
  i: Integer;
begin
  inherited;
  SyncGrids;
  Assert(grdData.SelectedRows.Count > 0);

  LoginContext.CheckUserActivity(uaMllStoreChange);

  cdsGridData.DisableControls;
  try
    for i:= 0 to grdData.SelectedRows.Count - 1 do
      begin
        cdsGridData.Bookmark:= grdData.SelectedRows[i];

        if (cdsGridDataPLANNED_STORE_DEAL_TYPE_CODE.AsInteger <> 1) then
          raise Exception.Create(SRedSPlanovoTegleneOt2riRed);

        if not cdsGridDataANNUL_DATE.IsNull then
          raise Exception.Create(SCantChangeAnnulledPsd);

        if not cdsGridDataCLOSE_DATE.IsNull then
          raise Exception.Create(SCantChangeClosedPsd);

        if (cdsGridDataBND_PROCESS_OBJECT_CLASS_CODE.AsInteger <> pocMaterialListLine) then
          raise Exception.Create(SChoosenUnboundLine);

        if (cdsGridDataMLL_CHANGE_STATUS.AsInteger <> 0) then
          raise Exception.Create(SRedSPredlojenaZamiana);
      end;  { for }

    Changed:= DoStoreChange;

    if Changed then
      begin
        RefreshDataSet(cdsGridData);
        FIsMadeChange:= True;
      end;
  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

procedure TfmPlannedStoreDeals.actMllStoreChangeUpdate(Sender: TObject);
begin
  inherited;
  with (Sender as TAction)do
    begin
      Enabled:= (EditMode <> emReadOnly) and HasSelectedRows and not cdsGridData.IsEmpty;
      Visible:= (FProductClass = pcNormal);
    end;
end;

procedure TfmPlannedStoreDeals.actNewStoreDealExecute(Sender: TObject);

  function ChooseStoreCode: Integer;
  const
    TheStoreDeals: array[ioOut..ioIn] of string = (STheStoreDealOut, '', STheStoreDealIn);
  var
    DummyString: string;
    DummyInteger: Integer;
    DummyBoolean: Boolean;
    DummyDateTime: TDateTime;
    CurrentDeptIdentifier: string;
    PlannedStoreIdentifier: string;
  begin
    Result:= -1;

    if (LoginContext.CurrentDeptCode = cdsGridDataSTORE_CODE.AsInteger) then
      Exit(cdsGridDataSTORE_CODE.AsInteger);

    dmMain.SvrDeptsTree.GetDeptData(
      LoginContext.CurrentDeptCode, DummyString, CurrentDeptIdentifier,
      DummyBoolean, DummyInteger, DummyInteger, DummyBoolean, DummyDateTime, DummyDateTime, DummyBoolean, DummyBoolean, DummyBoolean);

    dmMain.SvrDeptsTree.GetDeptData(
      cdsGridDataSTORE_CODE.AsInteger, DummyString, PlannedStoreIdentifier,
      DummyBoolean, DummyInteger, DummyInteger, DummyBoolean, DummyDateTime, DummyDateTime, DummyBoolean, DummyBoolean, DummyBoolean);

    case MessageDlgBtn(
           Format(SChooseStore, [TheStoreDeals[cdsGridDataIN_OUT.AsInteger]]),
           mtConfirmation,
           [ Format(SCurrentStore, [CurrentDeptIdentifier]),
             Format(SPlannedStore, [PlannedStoreIdentifier]),
             SCancelButton
           ], 0
         ) of
      0: Result:= LoginContext.CurrentDeptCode;
      1: Result:= cdsGridDataSTORE_CODE.AsInteger;
      2: Abort;
    else
      raise Exception.Create('Unknown button is pressed');
    end;  { case }

    Assert(Result <> -1);
  end;

type
  TStoreDealFormClass = class of TfmStoreDeal;

const
  StoreDealFormClasses: array[ioOut..ioIn] of TStoreDealFormClass = (TfmStoreDealOut, nil, TfmStoreDealIn);

var
  StoreDealInserted: Boolean;
  StoreCode: Integer;
begin
  inherited;

  StoreCode:= ChooseStoreCode;

  CheckNewStoreDealUserActivities(cdsGridDataIN_OUT.AsInteger, StoreCode, FProductClass);

  SetParams(cdsNewStoreDealDefaults.Params, cdsGridData);
  StoreDealInserted:=
    cdsNewStoreDealDefaults.TempOpen/
      function: Boolean begin
        cdsNewStoreDealDefaults.SafeEdit/
          procedure begin
            cdsNewStoreDealDefaultsSTORE_CODE.AsInteger:= StoreCode;
          end;

        Result:= StoreDealFormClasses[cdsGridDataIN_OUT.AsInteger].ShowForm(nil, cdsNewStoreDealDefaults, emInsert, doDataSet, FProductClass);
      end;

  if StoreDealInserted then
    RefreshGridData;
end;

procedure TfmPlannedStoreDeals.actNewStoreDealUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not cdsGridData.IsEmpty and
    (cdsGridDataPLANNED_STORE_DEAL_TYPE_CODE.AsInteger = psdtNormal);
end;

procedure TfmPlannedStoreDeals.actCopyDetailNameToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataDETAIL_NAME.AsString;
end;

procedure TfmPlannedStoreDeals.actCopyDetailNameToClipboardUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridDataDETAIL_NAME.IsNull;
  (Sender as TAction).Visible:= (FProductClass = pcNormal);
end;

procedure TfmPlannedStoreDeals.actCopyDetailNoToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataDETAIL_NO.AsString;
end;

procedure TfmPlannedStoreDeals.actCopyDetailNoToClipboardUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridDataDETAIL_NO.IsNull;
  (Sender as TAction).Visible:= (FProductClass = pcNormal);
end;

procedure TfmPlannedStoreDeals.actCopySaleProductNameToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataSALE_PRODUCT_NAME.AsString;
end;

procedure TfmPlannedStoreDeals.actCopySaleProductNameToClipboardUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridDataSALE_PRODUCT_NAME.IsNull;
end;

procedure TfmPlannedStoreDeals.actCopySaleProductNoToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataSALE_PRODUCT_NO.AsString;
end;

procedure TfmPlannedStoreDeals.actCopySaleProductNoToClipboardUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridDataSALE_PRODUCT_NO.IsNull;
end;

procedure TfmPlannedStoreDeals.actDeliveryDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotDelivery,
    cdsGridDataDELIVERY_DOC_BRANCH_CODE,
    cdsGridDataDELIVERY_DOC_CODE);
end;

procedure TfmPlannedStoreDeals.actDeliveryDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataDELIVERY_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmPlannedStoreDeals.actDetailDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    cdsGridDataDETAIL_CODE.AsInteger);
end;

procedure TfmPlannedStoreDeals.actDetailDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmPlannedStoreDeals.actProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    cdsGridDataPRODUCT_CODE.AsInteger);
end;

procedure TfmPlannedStoreDeals.actProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmPlannedStoreDeals.actSaleProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    cdsGridDataSALE_PRODUCT_CODE.AsInteger);
end;

procedure TfmPlannedStoreDeals.actSaleProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmPlannedStoreDeals.actFormUpdate(Sender: TObject);
begin
  inherited;

  grdIdentification.Columns[4].Visible:= not btnToggleProductDisplay.Down;
  grdIdentification.Columns[5].Visible:= not btnToggleProductDisplay.Down;
  grdIdentification.Columns[6].Visible:= btnToggleProductDisplay.Down;

  grdOtch.Columns[4].Visible:= not btnToggleProductDisplay.Down;
  grdOtch.Columns[5].Visible:= not btnToggleProductDisplay.Down;
  grdOtch.Columns[6].Visible:= btnToggleProductDisplay.Down;

  grdOtch.Columns[7].Visible:= btnWorkMeasure.Down;
  grdOtch.Columns[8].Visible:= btnWorkMeasure.Down;
  grdOtch.Columns[9].Visible:= btnWorkMeasure.Down;
  grdOtch.Columns[10].Visible:= not btnWorkMeasure.Down;
  grdOtch.Columns[11].Visible:= not btnWorkMeasure.Down;
  grdOtch.Columns[12].Visible:= not btnWorkMeasure.Down;

  grdMODEL.Columns[4].Visible:= not btnToggleProductDisplay.Down;
  grdMODEL.Columns[5].Visible:= btnToggleProductDisplay.Down;

  grdDelivery.Columns[4].Visible:= not btnToggleProductDisplay.Down;
  grdDelivery.Columns[5].Visible:= not btnToggleProductDisplay.Down;
  grdDelivery.Columns[6].Visible:= btnToggleProductDisplay.Down;

  btnProductDoc.ImageIndex:= cdsGridDataHAS_DOCUMENTATION.AsInteger;
  btnDetailDoc.ImageIndex:= cdsGridDataDETAIL_HAS_DOCUMENTATION.AsInteger;
  btnSaleProductDoc.ImageIndex:= cdsGridDataSALE_PRODUCT_HAS_DOCUMENTATION.AsInteger;

  NormalizedToolbar(tlbDetailDoc).Visible:= (FProductClass = pcNormal);
  NormalizedToolbar(tlbSaleProductDoc).Visible:= (FProductClass = pcNormal);
  btnToggleProductDisplay.Visible:= (FProductClass = pcNormal);
  sepAfterToggleProductDisplay.Visible:= (FProductClass = pcNormal);

  pnlMllChange.Visible:= (FProductClass = pcNormal);
  pnlMllStoreChange.Visible:= (FProductClass = pcNormal);
end;

class function TfmPlannedStoreDeals.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmPlannedStoreDeals.cdsGridDataSTORE_DEAL_BEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= dmMain.GetDateIntervalAsString(cdsGridDataSTORE_DEAL_BEGIN_DATE.AsDateTime, cdsGridDataSTORE_DEAL_END_DATE.AsDateTime);
end;

procedure TfmPlannedStoreDeals.cdsGridDataENTER_RESULT_STORE_BEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= dmMain.GetDateIntervalAsString(cdsGridDataENTER_RESULT_STORE_BEGIN_DATE.AsDateTime, cdsGridDataENTER_RESULT_STORE_END_DATE.AsDateTime);
end;

function TfmPlannedStoreDeals.GetGridRecordReadOnly: Boolean;
begin
  Result:= True;
end;

function TfmPlannedStoreDeals.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

function TfmPlannedStoreDeals.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmPlannedStoreDeals.SyncGrids;
begin
  if FSyncingGrids then
    Exit;

  FSyncingGrids:= True;
  try
    if (pcMain.ActivePage = tsIdentification) then
      SynchronizeGridsSelection(grdIdentification, [grdData, grdOtch, grdSysInfo, grdMODEl, grdDelivery]);
    if (pcMain.ActivePage = tsQuantitiesAndPrices) then
      SynchronizeGridsSelection(grdOtch, [grdData, grdIdentification, grdSysInfo, grdMODEl, grdDelivery]);
    if (pcMain.ActivePage = tsSysInfo) then
      SynchronizeGridsSelection(grdSysInfo, [grdData, grdIdentification, grdOtch, grdMODEl, grdDelivery]);
    if (pcMain.ActivePage = tsMODEl) then
      SynchronizeGridsSelection(grdMODEl, [grdData, grdIdentification, grdOtch, grdSysInfo, grdDelivery]);
    if (pcMain.ActivePage = tsDelivery) then
      SynchronizeGridsSelection(grdDelivery, [grdData, grdIdentification, grdOtch, grdSysInfo, grdMODEl]);

  finally
    FSyncingGrids:= False;
  end;
end;

procedure TfmPlannedStoreDeals.pcMainChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  SyncGrids;
end;

function TfmPlannedStoreDeals.HasSelectedRows: Boolean;
begin
  Result:= False;
  if (pcMain.ActivePage = tsIdentification) then
    Result:= (grdIdentification.SelectedRows.Count > 0);
  if (pcMain.ActivePage = tsQuantitiesAndPrices) then
    Result:= (grdOtch.SelectedRows.Count > 0);
  if (pcMain.ActivePage = tsSysInfo) then
    Result:= (grdSysInfo.SelectedRows.Count > 0);
  if (pcMain.ActivePage = tsMODEl) then
    Result:= (grdMODEl.SelectedRows.Count > 0);
  if (pcMain.ActivePage = tsDelivery) then
    Result:= (grdDelivery.SelectedRows.Count > 0);
end;

procedure TfmPlannedStoreDeals.Initialize;
begin
  inherited Initialize;

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmPlannedStoreDeals.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
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

procedure TfmPlannedStoreDeals.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;

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
end;

procedure TfmPlannedStoreDeals.ChosenDeptsChange;
begin
  pdsGridDataParamsSTORE_CODE.Clear;
  pdsGridDataParams_DEPT_NO.Clear;
  pdsGridDataParams_DEPT_NAME.Clear;

  if HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_DEPTS.AsString) then
    if IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_DEPTS.AsString) then
      begin
        pdsGridDataParamsSTORE_CODE.AsInteger:=
          ChosenNodeXMLToNodeCode(pdsGridDataParamsCHOSEN_DEPTS.AsString);

        DoDeptFieldChanged(
          pdsGridDataParamsSTORE_CODE,
          pdsGridDataParams_DEPT_NAME,
          pdsGridDataParams_DEPT_NO);
      end
    else
      pdsGridDataParams_DEPT_NAME.AsString:= SDeptsSet;
end;

procedure TfmPlannedStoreDeals.ChosenProductsChange;
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

procedure TfmPlannedStoreDeals.DoBeforeShow;
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

procedure TfmPlannedStoreDeals.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams_DATE_INTERVAL.AsString:=
    dmMain.GetDateIntervalAsString(pdsGridDataParamsSTART_DATE.AsDateTime, pdsGridDataParamsEND_DATE.AsDateTime);
  pdsGridDataParams_PRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmPlannedStoreDeals.pdsGridDataParamsCHOSEN_PRODUCTSChange(
  Sender: TField);
begin
  inherited;
  ChosenProductsChange;
end;

procedure TfmPlannedStoreDeals.pdsGridDataParamsCHOSEN_DEPTSChange(
  Sender: TField);
begin
  inherited;
  ChosenDeptsChange;
end;

end.

