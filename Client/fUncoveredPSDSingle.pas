unit fUncoveredPSDSingle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls, AbmesFields,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, Mask, Menus, JvButtons, uClientTypes,
  JvToolEdit, JvDBControls, ComCtrls, ToolWin, dDocClient, fBaseFrame,
  fDBFrame, fFieldEditFrame, fDateIntervalFrame, JvComponent,
  JvCaptionButton, JvComponentBase, uProducts, DBGridEhGrouping;

type
  TfmUncoveredPSDSingle = class(TGridForm)
    pdsGridDataParamsPRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsDEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsINCLUDE_PL_SECOND_LEVEL: TAbmesFloatField;
    pdsGridDataParamsPRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParamsPRODUCT_NO: TAbmesFloatField;
    pdsGridDataParamsDEPT_NAME: TAbmesWideStringField;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    pnlFilterInfo: TPanel;
    btnMllChange: TBitBtn;
    actMllChange: TAction;
    pdsGridDataParamsDEPT_IDENTIFIER: TAbmesWideStringField;
    pnlFilter: TPanel;
    lblProduct: TLabel;
    edtProduct: TDBEdit;
    lblDept: TLabel;
    edtDept: TDBEdit;
    lblStartDate: TLabel;
    lblTimeUnit: TLabel;
    edtTimeUnit: TDBEdit;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCREATE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCHANGE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataCLOSE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCLOSE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCLOSE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsGridDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataANNUL_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridData_PRIORITY_COLOR: TAbmesFloatField;
    cdsGridData_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    actCopyToClipboard: TAction;
    actCopyNameToClipboard: TAction;
    actCopyNoToClipboard: TAction;
    btnCopy: TToolButton;
    actMllStoreChange: TAction;
    btnMllStoreChange: TBitBtn;
    btnEdit: TBitBtn;
    frDateInterval: TfrDateIntervalFrame;
    pdsGridDataParamsMAX_PSD_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsTIME_UNIT_CODE: TAbmesFloatField;
    pdsGridDataParamsTIME_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParams_END_DATE: TAbmesSQLTimeStampField;
    pcMain: TPageControl;
    tsIdentification: TTabSheet;
    grdIdentification: TAbmesDBGrid;
    tsQuantitiesAndPrices: TTabSheet;
    grdOtch: TAbmesDBGrid;
    tsSysInfo: TTabSheet;
    grdSysInfo: TAbmesDBGrid;
    tsMODEL: TTabSheet;
    grdMODEL: TAbmesDBGrid;
    cdsGridDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    cdsGridDataPSD_ID: TAbmesWideStringField;
    cdsGridDataCOMPLETED_QUANTITY: TAbmesFloatField;
    cdsGridDataCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataINCOMPLETED_QUANTITY: TAbmesFloatField;
    cdsGridDataINCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsGridDataPLANNED_STORE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataBND_PROCESS_CODE: TAbmesFloatField;
    cdsGridDataBND_PROCESS_OBJECT_CLASS_CODE: TAbmesFloatField;
    cdsGridDataBND_PROCESS_ABBREV: TAbmesWideStringField;
    cdsGridDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataIN_OUT: TAbmesFloatField;
    cdsGridDataSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSTORE_CODE: TAbmesFloatField;
    cdsGridDataSTORE_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataMEASURE_CODE: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataTOTAL_PRICE_SC: TAbmesFloatField;
    cdsGridDataIS_DONE: TAbmesFloatField;
    cdsGridDataIS_ANNULED: TAbmesFloatField;
    cdsGridDataDETAIL_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_NAME: TAbmesWideStringField;
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
    cdsGridDataENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataIS_MODEL_LIMITING: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField;
    cdsGridDataMLL_CHANGE_STATUS: TAbmesFloatField;
    cdsGridDataMIN_QUANTITY: TAbmesFloatField;
    cdsGridDataMIN_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataPRIORITY_CODE: TAbmesFloatField;
    cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField;
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
    btnToggleProductDisplay: TSpeedButton;
    cdsGridData_IS_ONE_MEASURE: TAggregateField;
    cdsGridData_OVERALL_COMPLETED_QUANTITY_RAW: TAggregateField;
    cdsGridData_OVERALL_INCOMPLETED_QUANTITY_RAW: TAggregateField;
    cdsGridData_OVERALL_TOTAL_PRICE_SC: TAggregateField;
    cdsGridData_IS_ONE_ACCOUNT_MEASURE: TAggregateField;
    cdsGridData_OVERALL_COMPLETED_ACCOUNT_QUANTITY_RAW: TAggregateField;
    cdsGridData_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY_RAW: TAggregateField;
    cdsGridData_OVERALL_COMPLETED_QUANTITY: TAbmesFloatField;
    cdsGridData_OVERALL_INCOMPLETED_QUANTITY: TAbmesFloatField;
    cdsGridData_OVERALL_COMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    sepAfterToggleProductDisplay: TToolButton;
    pdsGridDataParams_TIME_UNIT_NAME: TAbmesWideStringField;
    cdsGridData_MLL_CHANGE_STATUS_ABBREV: TAbmesWideStringField;
    sepBeforeCopy: TToolButton;
    pdsGridDataParamsIS_TOWARDS_RESERVE: TAbmesFloatField;
    cdsGridDataPRIORITY_NO: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsSTORE_CODE: TAbmesFloatField;
    pdsGridDataParamsBND_PROCESS: TAbmesWideStringField;
    tsFinModel: TTabSheet;
    grdFinModel: TAbmesDBGrid;
    pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsGridDataRFML_BND_OBJECT_ID: TAbmesWideStringField;
    cdsGridDataRFML_PARTNER_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataRFML_QUANTITY: TAbmesFloatField;
    cdsGridDataRFML_DOCUMENT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataRFML_DOCUMENT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataUNCOVERED_QUANTITY: TAbmesFloatField;
    cdsGridData_OVERALL_UNCOVERED_QUANTITY: TAbmesFloatField;
    cdsGridData_OVERALL_UNCOVERED_ACC_QUANTITY: TAbmesFloatField;
    cdsGridData_OVERALL_UNCOVERED_QUANTITY_RAW: TAggregateField;
    cdsGridData_OVERALL_UNCOVERED_ACC_QUANTITY_RAW: TAggregateField;
    cdsGridDataUNCOVERED_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_OVERALL_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_OVERALL_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsPRODUCT_CODEChange(Sender: TField);
    procedure pdsGridDataParamsDEPT_CODEChange(Sender: TField);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsDATE_UNIT_CODEChange(Sender: TField);
    procedure pdsGridDataParams_TIME_UNITS_NUMChange(Sender: TField);
    procedure cdsGridDataAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actMllChangeExecute(Sender: TObject);
    procedure actMllChangeUpdate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actCopyToClipboardExecute(Sender: TObject);
    procedure actCopyNoToClipboardExecute(Sender: TObject);
    procedure actCopyNameToClipboardExecute(Sender: TObject);
    procedure cdsGridDataCREATE_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataCHANGE_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataCLOSE_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataANNUL_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actMllStoreChangeExecute(Sender: TObject);
    procedure actMllStoreChangeUpdate(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure actCopyDetailNoToClipboardExecute(Sender: TObject);
    procedure actCopyDetailNoToClipboardUpdate(Sender: TObject);
    procedure actCopyDetailNameToClipboardExecute(Sender: TObject);
    procedure actCopyDetailNameToClipboardUpdate(Sender: TObject);
    procedure actCopySaleProductNoToClipboardExecute(Sender: TObject);
    procedure actCopySaleProductNoToClipboardUpdate(Sender: TObject);
    procedure actCopySaleProductNameToClipboardExecute(Sender: TObject);
    procedure actCopySaleProductNameToClipboardUpdate(Sender: TObject);
    procedure actProductDocExecute(Sender: TObject);
    procedure actProductDocUpdate(Sender: TObject);
    procedure actDetailDocExecute(Sender: TObject);
    procedure actDetailDocUpdate(Sender: TObject);
    procedure actSaleProductDocExecute(Sender: TObject);
    procedure actSaleProductDocUpdate(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure cdsGridDataENTER_RESULT_STORE_BEGIN_DATEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridDataSTORE_DEAL_BEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pcMainChanging(Sender: TObject; var AllowChange: Boolean);
    procedure pdsGridDataParamsBEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsPRODUCT_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsDEPT_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsCHOSEN_PRODUCTSChange(Sender: TField);
    procedure pdsGridDataParamsCHOSEN_DEPTSChange(Sender: TField);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FWorkMeasureAbbrev, FAccountMeasureAbbrev: string;
    FHasCommonMeasure: Boolean;
    FAccountMeasureCoef: Double;
    FIsMadeChange: Boolean;
    FSyncingGrids: Boolean;
    procedure SetStartEndDates;
    procedure TimeFieldsGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure SyncGrids;
    function HasSelectedRows: Boolean;
    procedure ChosenProductsChange;
    procedure ChosenDeptsChange;
  protected
    function GetOriginalFormCaption: string; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    class function CanUseDocs: Boolean; override;
    function ShowFilterForm: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetGridRecordReadOnly: Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
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
  Variants, dMain, fUncoveredPSDSingleFilter, uClientUtils, uTreeNodes,
  rUncoveredPSDSingle, uUtils, uColorConsts, uPeriods,
  uUserActivityConsts, uProcesses, fMaterialListLineMultiChange,
  fMaterialListLineChange, uClientMaterialListLineChanges, fPlannedStoreDealIn,
  fPlannedStoreDealOut, uDealTypes, uTreeClientUtils, Clipbrd,
  fMaterialListLineStoreMultiChange, uXMLUtils, uProductClientUtils, uClientDateTime,
  uToolbarUtils;

{$R *.DFM}

const
  colPlan = $0086E8EA;
  colProject = $0097E38C;

// MLL Change Stauts Codes
  lcsOK = 0;            // no change request
  lcsReplyPending = 1;  // change request with no reply
  lcsUnseenReject = 2;  // not seen rejected request

resourcestring
  STotalPrice = 'Обща Пл. Стойност (%s)';
  SDiferentMeasurements = 'разл. м.ед.';
  SProduct = 'Управляем Обект';
  SProductOverName = 'Управляем Обект|Наименование';
  SAllProducts = 'всички';
  SAllDepts = 'всички';
  SBracketOpen = '<';                                              
  SBracketClose = '>';
  SInvalidBeginDate = 'Началната дата на справката не може да е по-късна от началната дата на текущия период!';
  SIncompatibleChoosenLines = 'Избраните редове не са за един и същ Управляем Обект и ТП Задържащо';
  SChoosenLineStoresNotCompatible = 'Избраните редове не са за едно и също ТП Задържащо';
  SChoosenLineWithInvalidPSDType = 'Има избран ред с планово теглене от втори ред';
  SUnboundChoosenLine = 'Има избран ред който не е обвързан с ред от МОДЕл';
  SChoosenLineWithInvalidMLLChangeStatus = 'Има избран ред с предложена замяна или невидян отказ';
  SDifferentMeasures = 'разл.м.ед.';

{ TfmUncoveredPSDSingle }

procedure TfmUncoveredPSDSingle.FormCreate(Sender: TObject);
begin
  inherited;
  FProductClass:= pcNormal;

  FilterFormClass:= TfmUncoveredPSDSingleFilter;
  ReportClass:= TrptUncoveredPSDSingle;
  EditFormClass:= TfmPlannedStoreDealIn; // v ShowAnEditForm izbirame redaktirashta forma
  cdsDateUnits.Open;
  RegisterDateFields(cdsGridData);
  frDateInterval.FieldNames:= 'BEGIN_DATE;_END_DATE';

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridDataTOTAL_PRICE_SC,
      cdsGridData_OVERALL_TOTAL_PRICE_SC]);
end;

procedure TfmUncoveredPSDSingle.pdsGridDataParamsPRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;

  DoProductFieldChanged(
    pdsGridDataParamsPRODUCT_CODE,
    pdsGridDataParamsPRODUCT_NAME,
    pdsGridDataParamsPRODUCT_NO);
end;

procedure TfmUncoveredPSDSingle.pdsGridDataParamsDEPT_CODEChange(
  Sender: TField);
begin
  inherited;
  with Sender.DataSet do
    begin
      DoDeptFieldChanged(
        FieldByName('DEPT_CODE'),
        FieldByName('DEPT_NAME'),
        FieldByName('DEPT_IDENTIFIER'));

      if (FieldByName('DEPT_CODE').IsNull) or
         (FieldByName('DEPT_CODE').AsInteger = tnRootDeptCode) then
        FieldByName('DEPT_NAME').AsString:=
          SBracketOpen +
          ' ' +
          SAllDepts +
          ' ' +
          SBracketClose;
    end;
end;

procedure TfmUncoveredPSDSingle.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  with DataSet do
    begin
      Edit;
      try
        FieldByName('BEGIN_DATE').AsDateTime:=
          GetPeriodFirstDate(ContextDate(), GetPeriodValue(FieldByName('TIME_UNIT_CODE').AsInteger));
        FieldByName('INCLUDE_PL_SECOND_LEVEL').AsFloat:= 0;
        ChosenProductsChange;
        ChosenDeptsChange;

        if Assigned(OuterDataSet) then
          AssignFields(OuterDataSet);

        Post;
      except
        Cancel;
        raise;
      end;
    end;
end;

procedure TfmUncoveredPSDSingle.FormDestroy(Sender: TObject);
begin
  inherited;
  cdsDateUnits.Close;
end;

procedure TfmUncoveredPSDSingle.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  Field: TField;
begin
  if Assigned(Column) and Assigned(Column.Field) then
    begin
      Field:= Column.Field;

      if (Field.FieldName = 'PRIORITY_FULL_NAME') then
        begin
          if not cdsGridData_PRIORITY_COLOR.IsNull then
            AFont.Color:= cdsGridData_PRIORITY_COLOR.AsInteger;

          if not cdsGridData_PRIORITY_BACKGROUND_COLOR.IsNull then
            Background:= cdsGridData_PRIORITY_BACKGROUND_COLOR.AsInteger;
        end;
    end;

  inherited;
  
  if Assigned(Column) and (Column.Field = cdsGridData_MLL_CHANGE_STATUS_ABBREV) then
    begin
      AFont.Color:= MllChangeStatusColor(cdsGridDataMLL_CHANGE_STATUS.AsInteger);
      Background:= MllChangeStatusBackgroundColor(cdsGridDataMLL_CHANGE_STATUS.AsInteger);
    end;  { if }
end;

procedure TfmUncoveredPSDSingle.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if (cdsGridDataBND_PROCESS_OBJECT_CLASS_CODE.AsInteger = pocMaterialListLine) then
    begin
      cdsGridDataMLL_OBJECT_BRANCH_CODE.AsVariant:= cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE.AsVariant;
      cdsGridDataMLL_OBJECT_CODE.AsVariant:= cdsGridDataBND_PROCESS_OBJECT_CODE.AsVariant;
    end
  else
    begin
      cdsGridDataMLL_OBJECT_BRANCH_CODE.Clear;
      cdsGridDataMLL_OBJECT_CODE.Clear;
    end;

  if cdsGridData_IS_ONE_MEASURE.Value then
    begin
      cdsGridData_OVERALL_COMPLETED_QUANTITY.AsVariant:= cdsGridData_OVERALL_COMPLETED_QUANTITY_RAW.AsVariant;
      cdsGridData_OVERALL_INCOMPLETED_QUANTITY.AsVariant:= cdsGridData_OVERALL_INCOMPLETED_QUANTITY_RAW.AsVariant;
      cdsGridData_OVERALL_UNCOVERED_QUANTITY.AsVariant:= cdsGridData_OVERALL_UNCOVERED_QUANTITY_RAW.AsVariant;
      cdsGridData_OVERALL_MEASURE_ABBREV.AsString:= cdsGridDataMEASURE_ABBREV.AsString;
    end
  else
    begin
      cdsGridData_OVERALL_COMPLETED_QUANTITY.Clear;
      cdsGridData_OVERALL_INCOMPLETED_QUANTITY.Clear;
      cdsGridData_OVERALL_UNCOVERED_QUANTITY.Clear;
      cdsGridData_OVERALL_MEASURE_ABBREV.AsString:= SDifferentMeasures;
    end;

  if cdsGridData_IS_ONE_ACCOUNT_MEASURE.Value then
    begin
      cdsGridData_OVERALL_COMPLETED_ACCOUNT_QUANTITY.AsVariant:= cdsGridData_OVERALL_COMPLETED_ACCOUNT_QUANTITY_RAW.AsVariant;
      cdsGridData_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY.AsVariant:= cdsGridData_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY_RAW.AsVariant;
      cdsGridData_OVERALL_UNCOVERED_ACC_QUANTITY.AsVariant:= cdsGridData_OVERALL_UNCOVERED_ACC_QUANTITY_RAW.AsVariant;
      cdsGridData_OVERALL_ACCOUNT_MEASURE_ABBREV.AsString:= cdsGridDataACCOUNT_MEASURE_ABBREV.AsString;
    end
  else
    begin
      cdsGridData_OVERALL_COMPLETED_ACCOUNT_QUANTITY.Clear;
      cdsGridData_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY.Clear;
      cdsGridData_OVERALL_UNCOVERED_ACC_QUANTITY.Clear;
      cdsGridData_OVERALL_ACCOUNT_MEASURE_ABBREV.AsString:= SDifferentMeasures;
    end;

  cdsGridData_MLL_CHANGE_STATUS_ABBREV.AsString:=
    MllChangeStatusAbbrev(cdsGridDataMLL_CHANGE_STATUS.AsInteger);
end;

procedure TfmUncoveredPSDSingle.SetStartEndDates;
var
  TimeUnit: TPeriod;
begin
  with pdsGridDataParams do
    begin
      TimeUnit:= GetPeriodValue(FieldByName('DATE_UNIT_CODE').AsInteger);
      if FieldByName('START_PERIOD_DATE').IsNull then
        FieldByName('START_PERIOD_DATE').AsDateTime:= ContextDate();
      FieldByName('START_PERIOD_DATE').AsDateTime:= GetPeriodFirstDate(FieldByName('START_PERIOD_DATE').AsDateTime, TimeUnit);
      FieldByName('END_PERIOD_DATE').AsDatetime:=
        IncDate(FieldByName('START_PERIOD_DATE').AsDateTime,
                TimeUnit,
                FieldByName('_TIME_UNITS_NUM').AsInteger) - 1;
    end;
end;

procedure TfmUncoveredPSDSingle.pdsGridDataParamsDATE_UNIT_CODEChange(
  Sender: TField);
begin
  inherited;
  with pdsGridDataParams do
    FieldByName('START_PERIOD_DATE').AsDateTime:=
      GetPeriodFirstDate(ContextDate(),
                         GetPeriodValue(FieldByName('DATE_UNIT_CODE').AsInteger));
  SetStartEndDates;
end;

procedure TfmUncoveredPSDSingle.pdsGridDataParams_TIME_UNITS_NUMChange(
  Sender: TField);
begin
  inherited;
  SetStartEndDates;
end;

procedure TfmUncoveredPSDSingle.cdsGridDataAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FHasCommonMeasure:=
    dmMain.SvrStore.VIMProductNodeProp(
      pdsGridDataParams.FieldByName('PRODUCT_CODE').AsInteger,
      FAccountMeasureCoef,
      FWorkMeasureAbbrev,
      FAccountMeasureAbbrev);
end;

procedure TfmUncoveredPSDSingle.actMllChangeExecute(Sender: TObject);

  function RequestSingleChange: Boolean;
  begin
    cdsGridData.Bookmark:= grdMODEl.SelectedRows[0];
    Result:= TfmMaterialListLineChange.ShowForm(dmDocClient, cdsGridData, emInsert);
  end;

  function RequestMultiChange: Boolean;
  var
    i: Integer;
    ProductCode, StoreCode: Integer;
    SelectedMlls: OleVariant;
  begin
    cdsGridData.Bookmark:= grdMODEl.SelectedRows[0];
    ProductCode:= cdsGridDataPRODUCT_CODE.AsInteger;
    StoreCode:= cdsGridDataSTORE_CODE.AsInteger;
    for i:= 1 to grdData.SelectedRows.Count - 1 do
      begin
        cdsGridData.Bookmark:= grdData.SelectedRows[i];
        if (cdsGridDataPRODUCT_CODE.AsInteger <> ProductCode) or
           (cdsGridDataSTORE_CODE.AsInteger <> StoreCode) then
          raise Exception.Create(SIncompatibleChoosenLines);
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
          raise Exception.Create(SChoosenLineWithInvalidPSDType);

        if (cdsGridDataBND_PROCESS_OBJECT_CLASS_CODE.AsInteger <> pocMaterialListLine) then
          raise Exception.Create(SUnboundChoosenLine);

        if (cdsGridDataMLL_CHANGE_STATUS.AsInteger <> 0) then
          raise Exception.Create(SChoosenLineWithInvalidMLLChangeStatus);
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

procedure TfmUncoveredPSDSingle.actMllChangeUpdate(Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    begin
      Visible:= (FProductClass = pcNormal);
      Enabled:=
        (EditMode <> emReadOnly) and
        HasSelectedRows and
        not cdsGridData.IsEmpty;
    end;
end;

procedure TfmUncoveredPSDSingle.actPrintExecute(Sender: TObject);
begin
  TrptUncoveredPSDSingle.PrintReport(cdsGridData, pdsGridDataParams, btnWorkMeasure.Down);
end;

function TfmUncoveredPSDSingle.ShowFilterForm: Boolean;
begin
  Result:= TfmUncoveredPSDSingleFilter.ShowForm(dmDocClient, pdsGridDataParams, emEdit, doNone, FProductClass);
end;

class function TfmUncoveredPSDSingle.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass): Boolean;
var
  f: TfmUncoveredPSDSingle;
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

procedure TfmUncoveredPSDSingle.FormShow(Sender: TObject);
begin
  inherited;
  FIsMadeChange:= False;
  grdOtch.Columns[13].Title.Caption:= Format(STotalPrice, [LoginContext.SecondaryCurrencyAbbrev]);

  pcMain.ActivePage:= tsIdentification;
end;

function TfmUncoveredPSDSingle.GetGridRecordReadOnly: Boolean;
begin
  Result:= True;
end;

function TfmUncoveredPSDSingle.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

function TfmUncoveredPSDSingle.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

function TfmUncoveredPSDSingle.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  case cdsGridDataIN_OUT.AsInteger of
    1 :
      Result:= TfmPlannedStoreDealIn.ShowForm(dmDocClient, cdsGridData, EditMode, doNone, FProductClass);
    -1 :
      Result:= TfmPlannedStoreDealOut.ShowForm(dmDocClient, cdsGridData, EditMode, doNone, FProductClass);
  else
    raise Exception.Create('internal error: Unknown IN_OUT');
  end;
end;

procedure TfmUncoveredPSDSingle.actFormUpdate(Sender: TObject);
begin
  inherited;

  grdIdentification.Columns[2].Visible:= not btnToggleProductDisplay.Down;
  grdIdentification.Columns[3].Visible:= not btnToggleProductDisplay.Down;
  grdIdentification.Columns[4].Visible:= btnToggleProductDisplay.Down;

  grdOtch.Columns[2].Visible:= not btnToggleProductDisplay.Down;
  grdOtch.Columns[3].Visible:= not btnToggleProductDisplay.Down;
  grdOtch.Columns[4].Visible:= btnToggleProductDisplay.Down;

  grdOtch.Columns[5].Visible:= btnWorkMeasure.Down;
  grdOtch.Columns[6].Visible:= btnWorkMeasure.Down;
  grdOtch.Columns[7].Visible:= btnWorkMeasure.Down;
  grdOtch.Columns[8].Visible:= btnWorkMeasure.Down;
  grdOtch.Columns[9].Visible:= not btnWorkMeasure.Down;
  grdOtch.Columns[10].Visible:= not btnWorkMeasure.Down;
  grdOtch.Columns[11].Visible:= not btnWorkMeasure.Down;
  grdOtch.Columns[12].Visible:= not btnWorkMeasure.Down;

  grdMODEL.Columns[2].Visible:= not btnToggleProductDisplay.Down;
  grdMODEL.Columns[3].Visible:= btnToggleProductDisplay.Down;

  btnProductDoc.ImageIndex:= cdsGridDataHAS_DOCUMENTATION.AsInteger;
  btnDetailDoc.ImageIndex:= cdsGridDataDETAIL_HAS_DOCUMENTATION.AsInteger;
  btnSaleProductDoc.ImageIndex:= cdsGridDataSALE_PRODUCT_HAS_DOCUMENTATION.AsInteger;

  NormalizedToolbar(tlbDetailDoc).Visible:= (FProductClass = pcNormal);
  NormalizedToolbar(tlbSaleProductDoc).Visible:= (FProductClass = pcNormal);
  btnToggleProductDisplay.Visible:= (FProductClass = pcNormal);
  sepAfterToggleProductDisplay.Visible:= (FProductClass = pcNormal);

  tsMODEL.TabVisible:= (FProductClass <> pcFinancial);
  tsFinModel.TabVisible:= (FProductClass = pcFinancial);;
end;

class function TfmUncoveredPSDSingle.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmUncoveredPSDSingle.CloseDataSets;
begin
  cdsDateUnits.Close;
  cdsPriorities.Close;
  inherited;
end;

procedure TfmUncoveredPSDSingle.DoBeforeShow;
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

procedure TfmUncoveredPSDSingle.OpenDataSets;
begin
  inherited;
  cdsPriorities.Open;
  cdsDateUnits.Open;
end;

procedure TfmUncoveredPSDSingle.actCopyToClipboardExecute(Sender: TObject);
begin
  inherited;
  actCopyNoToClipboard.Execute;
end;

procedure TfmUncoveredPSDSingle.actCopyNoToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NO.AsString;
end;

procedure TfmUncoveredPSDSingle.actCopyNameToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NAME.AsString;
end;

procedure TfmUncoveredPSDSingle.cdsGridDataCREATE_TIMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldsGetText(Sender, Text, DisplayText);
end;

procedure TfmUncoveredPSDSingle.TimeFieldsGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not Sender.IsNull then
    Text:= TimeToStr(Sender.AsDateTime);
end;

procedure TfmUncoveredPSDSingle.cdsGridDataCHANGE_TIMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldsGetText(Sender, Text, DisplayText);
end;

procedure TfmUncoveredPSDSingle.cdsGridDataCLOSE_TIMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldsGetText(Sender, Text, DisplayText);
end;

procedure TfmUncoveredPSDSingle.cdsGridDataANNUL_TIMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldsGetText(Sender, Text, DisplayText);
end;

procedure TfmUncoveredPSDSingle.actMllStoreChangeExecute(Sender: TObject);

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
          raise Exception.Create(SChoosenLineWithInvalidPSDType);

        if (cdsGridDataBND_PROCESS_OBJECT_CLASS_CODE.AsInteger <> pocMaterialListLine) then
          raise Exception.Create(SUnboundChoosenLine);

        if (cdsGridDataMLL_CHANGE_STATUS.AsInteger <> 0) then
          raise Exception.Create(SChoosenLineWithInvalidMLLChangeStatus);
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

procedure TfmUncoveredPSDSingle.actMllStoreChangeUpdate(Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    begin
      Visible:= (FProductClass = pcNormal);
      Enabled:=
        (EditMode <> emReadOnly) and
        HasSelectedRows and
        not cdsGridData.IsEmpty;
    end;
end;

procedure TfmUncoveredPSDSingle.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass);
begin
  FProductClass:= AProductClass;
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
end;

procedure TfmUncoveredPSDSingle.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDateInterval) then
    AFrame.ReadOnly:= True
  else
    inherited;
end;

procedure TfmUncoveredPSDSingle.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if pdsGridDataParamsBEGIN_DATE.IsNull or
     pdsGridDataParamsTIME_UNIT_CODE.IsNull or
     pdsGridDataParamsTIME_UNIT_COUNT.IsNull then
    pdsGridDataParams_END_DATE.Clear
  else
    pdsGridDataParams_END_DATE.AsDateTime:=
      IncDate(
        pdsGridDataParamsBEGIN_DATE.AsDateTime,
        GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger),
        pdsGridDataParamsTIME_UNIT_COUNT.AsInteger);

  pdsGridDataParams_PRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmUncoveredPSDSingle.actCopyDetailNameToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataDETAIL_NAME.AsString;
end;

procedure TfmUncoveredPSDSingle.actCopyDetailNameToClipboardUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridDataDETAIL_NAME.IsNull;
  (Sender as TAction).Visible:= (FProductClass = pcNormal);
end;

procedure TfmUncoveredPSDSingle.actCopyDetailNoToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataDETAIL_NO.AsString;
end;

procedure TfmUncoveredPSDSingle.actCopyDetailNoToClipboardUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridDataDETAIL_NO.IsNull;
  (Sender as TAction).Visible:= (FProductClass = pcNormal);
end;

procedure TfmUncoveredPSDSingle.actCopySaleProductNameToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataSALE_PRODUCT_NAME.AsString;
end;

procedure TfmUncoveredPSDSingle.actCopySaleProductNameToClipboardUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridDataSALE_PRODUCT_NAME.IsNull;
end;

procedure TfmUncoveredPSDSingle.actCopySaleProductNoToClipboardExecute(
  Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataSALE_PRODUCT_NO.AsString;
end;

procedure TfmUncoveredPSDSingle.actCopySaleProductNoToClipboardUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridDataSALE_PRODUCT_NO.IsNull;
end;

procedure TfmUncoveredPSDSingle.actDetailDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    cdsGridDataDETAIL_CODE.AsInteger);
end;

procedure TfmUncoveredPSDSingle.actDetailDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmUncoveredPSDSingle.actProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    cdsGridDataPRODUCT_CODE.AsInteger);
end;

procedure TfmUncoveredPSDSingle.actProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmUncoveredPSDSingle.actSaleProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    cdsGridDataDETAIL_CODE.AsInteger);
end;

procedure TfmUncoveredPSDSingle.actSaleProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmUncoveredPSDSingle.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if pdsGridDataParamsBEGIN_DATE.IsNull or
     (pdsGridDataParamsBEGIN_DATE.AsDateTime <
       GetPeriodFirstDate(ContextDate(), GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger) ) ) then
    raise Exception.Create(SInvalidBeginDate);
end;

procedure TfmUncoveredPSDSingle.cdsGridDataENTER_RESULT_STORE_BEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= dmMain.GetDateIntervalAsString(cdsGridDataENTER_RESULT_STORE_BEGIN_DATE.AsDateTime, cdsGridDataENTER_RESULT_STORE_END_DATE.AsDateTime);
end;

procedure TfmUncoveredPSDSingle.cdsGridDataSTORE_DEAL_BEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= dmMain.GetDateIntervalAsString(cdsGridDataSTORE_DEAL_BEGIN_DATE.AsDateTime, cdsGridDataSTORE_DEAL_END_DATE.AsDateTime);
end;

procedure TfmUncoveredPSDSingle.pcMainChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  SyncGrids;
end;

procedure TfmUncoveredPSDSingle.SyncGrids;
begin
  if FSyncingGrids then
    Exit;

  FSyncingGrids:= True;
  try
    if (pcMain.ActivePage = tsIdentification) then
      SynchronizeGridsSelection(grdIdentification, [grdData, grdOtch, grdSysInfo, grdMODEl]);
    if (pcMain.ActivePage = tsQuantitiesAndPrices) then
      SynchronizeGridsSelection(grdOtch, [grdData, grdIdentification, grdSysInfo, grdMODEl]);
    if (pcMain.ActivePage = tsSysInfo) then
      SynchronizeGridsSelection(grdSysInfo, [grdData, grdIdentification, grdOtch, grdMODEl]);
    if (pcMain.ActivePage = tsMODEl) then
      SynchronizeGridsSelection(grdMODEl, [grdData, grdIdentification, grdOtch, grdSysInfo]);

  finally
    FSyncingGrids:= False;
  end;
end;

function TfmUncoveredPSDSingle.HasSelectedRows: Boolean;
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
end;

procedure TfmUncoveredPSDSingle.Initialize;
begin
  inherited Initialize;

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmUncoveredPSDSingle.pdsGridDataParamsBEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= dmMain.GetDateIntervalAsString(pdsGridDataParamsBEGIN_DATE.AsDateTime, pdsGridDataParams_END_DATE.AsDateTime);
end;

procedure TfmUncoveredPSDSingle.pdsGridDataParamsPRODUCT_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

procedure TfmUncoveredPSDSingle.pdsGridDataParamsDEPT_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

procedure TfmUncoveredPSDSingle.cdsGridDataBeforeOpen(DataSet: TDataSet);
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

  cdsGridData.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmUncoveredPSDSingle.ChosenDeptsChange;
begin
  pdsGridDataParamsDEPT_CODE.Clear;
  pdsGridDataParamsDEPT_IDENTIFIER.Clear;
  pdsGridDataParamsDEPT_NAME.Clear;

  if HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_DEPTS.AsString) then
    if IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_DEPTS.AsString) then
      begin
        pdsGridDataParamsDEPT_CODE.AsInteger:=
          ChosenNodeXMLToNodeCode(pdsGridDataParamsCHOSEN_DEPTS.AsString);

        DoDeptFieldChanged(
          pdsGridDataParamsDEPT_CODE,
          pdsGridDataParamsDEPT_NAME,
          pdsGridDataParamsDEPT_IDENTIFIER);
      end
    else
      pdsGridDataParamsDEPT_NAME.AsString:= SDeptsSet;
end;

procedure TfmUncoveredPSDSingle.ChosenProductsChange;
begin
  pdsGridDataParamsPRODUCT_CODE.Clear;
  pdsGridDataParamsPRODUCT_NO.Clear;
  pdsGridDataParamsPRODUCT_NAME.Clear;

  if HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
    if IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
      begin
        pdsGridDataParamsPRODUCT_CODE.AsInteger:=
          ChosenNodeXMLToNodeCode(pdsGridDataParamsCHOSEN_PRODUCTS.AsString);

        DoProductFieldChanged(
          pdsGridDataParamsPRODUCT_CODE,
          pdsGridDataParamsPRODUCT_NAME,
          pdsGridDataParamsPRODUCT_NO);
      end
    else
      pdsGridDataParamsPRODUCT_NAME.AsString:= SProductsSet[FProductClass];
end;

procedure TfmUncoveredPSDSingle.pdsGridDataParamsCHOSEN_PRODUCTSChange(
  Sender: TField);
begin
  inherited;
  ChosenProductsChange;
end;

procedure TfmUncoveredPSDSingle.pdsGridDataParamsCHOSEN_DEPTSChange(
  Sender: TField);
begin
  inherited;
  ChosenDeptsChange
end;

end.



