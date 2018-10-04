unit fProductionOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, ParamDataSet, ActnList, DB,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  AbmesFields, uProductionOrderTypes, dDocClient, uClientTypes,
  JvComponent, JvCaptionButton, JvComponentBase, uProducts,
  ImgList, uCellParamsSetters, Menus, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmProductionOrders = class(TGridForm)
    pcMain: TPageControl;
    tsMain: TTabSheet;
    tsSysInfo: TTabSheet;
    grdSysInfo: TAbmesDBGrid;
    pnlCommon: TPanel;
    navData2: TDBColorNavigator;
    pnlFilter2: TPanel;
    btnFilter2: TSpeedButton;
    tbCommon: TToolBar;
    btnExcelExport2: TToolButton;
    btnProductDocs: TSpeedButton;
    pdsGridDataParamsPROD_START_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsPROD_START_PLAN_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_NO: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridData_PRIORITY_COLOR: TAbmesFloatField;
    cdsGridData_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    pnlBottomLeftButtons: TPanel;
    btnEditProductionOrder: TBitBtn;
    btnEditModel: TBitBtn;
    btnNewProductionOrder: TBitBtn;
    btnArchive: TBitBtn;
    btnUnarchive: TBitBtn;
    actEditModel: TAction;
    pdsGridDataParamsMIN_ML_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_ML_STATE_CODE: TAbmesFloatField;
    actArchiveModel: TAction;
    actUnarchiveModel: TAction;
    pdsGridDataParamsPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsSHOW_UNCOVERED_LINES: TAbmesFloatField;
    pdsGridDataParamsFILTER_UNCOVERED_LINES_STATE: TAbmesFloatField;
    cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataML_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataSALE_IDENTIFICATION: TAbmesWideStringField;
    cdsGridDataWASTING_ORDER_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsGridDataSALE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataML_STATE_CODE: TAbmesFloatField;
    cdsGridDataPRIORITY_CODE: TAbmesFloatField;
    cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsGridDataOWNER_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataPRODUCT_OTHER_NAME: TAbmesWideStringField;
    cdsGridDataMEASURE_CODE: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataQUANTITY: TAbmesFloatField;
    cdsGridDataQUANTITY_IN: TAbmesFloatField;
    cdsGridDataQUANTITY_DEVIATION_PERCENT: TAbmesFloatField;
    cdsGridDataENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSTART_STAGE_COEF: TAbmesFloatField;
    cdsGridDataUNCOVERED_LINES: TAbmesFloatField;
    cdsGridDataMAIN_DEPT_CODE: TAbmesFloatField;
    cdsGridDataMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCREATE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCHANGE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataFINISH_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataFINISH_DATE: TAbmesSQLTimeStampField;
    cdsGridDataFINISH_TIME: TAbmesSQLTimeStampField;
    cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataANNUL_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsGridDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsGridDataLIMITING_DATE: TAbmesSQLTimeStampField;
    cdsGridDataLIMITING_TIME: TAbmesSQLTimeStampField;
    cdsGridDataLIMITING_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataLIMITING_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataMODEL_CLOSE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataMODEL_CLOSE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataMODEL_CLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataMODEL_CLOSE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataIS_SALE: TAbmesFloatField;
    pdsGridDataParamsIS_SALE_STATE: TAbmesFloatField;
    cdsGridData_SUM_QUANTITY_RAW: TAggregateField;
    cdsGridData_SUM_MEASURE_CODE: TAggregateField;
    cdsGridData_SUM_UNCOVERED_LINES: TAggregateField;
    cdsGridData_SUM_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_REPORT_TITLE: TAbmesWideStringField;
    cdsGridDataMIN_PRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    btnModelCapacityStatus: TBitBtn;
    actModelCapacityStatus: TAction;
    sepBeforePrintButtonOnToolbar: TToolButton;
    btnPrint: TToolButton;
    sepBeforeDocumentationButton: TToolButton;
    cdsGridDataOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataOWNER_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsOWNER_COMPANY_CODE: TAbmesFloatField;
    btnVIM: TToolButton;
    actProductVIM: TAction;
    pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsPRODUCTION_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_WASTE_COMPENSATOR_STATUS: TAbmesFloatField;
    pdsGridDataParamsWASTING_SALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsWASTING_SALE_NO: TAbmesFloatField;
    cdsGridDataQUANTITY_DIFF: TAbmesFloatField;
    cdsGridDataSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataIS_WASTE_COMPENSATOR: TAbmesFloatField;
    cdsGridDataHAS_WASTE: TAbmesFloatField;
    cdsGridDataPRODUCTION_START_DATE_DIFF: TAbmesFloatField;
    cdsGridDataENTER_SH_STORE_DATE_DIFF: TAbmesFloatField;
    cdsGridDataINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    cdsGridDataPRODUCTION_WORKDAYS: TAbmesFloatField;
    cdsGridDataMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField;
    cdsGridDataMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField;
    cdsGridDataPRODUCTION_WORKDAYS_PERCENT: TAbmesFloatField;
    cdsGridDataCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField;
    tlbToggleButtons: TToolBar;
    btnToggleProductDisplay: TSpeedButton;
    btnToggleOwnerConsumer: TSpeedButton;
    btnToggleQuantityDiff: TSpeedButton;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    pnlProductDocsCaption: TPanel;
    pnlSaleDocsCaption: TPanel;
    btnSaleDocs: TSpeedButton;
    sepSaleDocs: TToolButton;
    sepProductDocs: TToolButton;
    pnlSysTop: TPanel;
    pdsGridDataParamsENTER_SH_STORE_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsENTER_SH_STORE_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsHAS_WASTE_STATUS: TAbmesFloatField;
    pdsGridDataParamsMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsOKIDU_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTION_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_OPERATION_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_SHIPMENT_STORES: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_CONSUMER_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsCONSUME_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsSALE_SHIPMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsSALE_SHIPMENT_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_PRODUCTION_WORKDAYS_PERCENT: TAbmesFloatField;
    pdsGridDataParamsEND_PRODUCTION_WORKDAYS_PERCENT: TAbmesFloatField;
    pdsGridDataParamsBEGIN_OP_DATE_DIFF: TAbmesFloatField;
    pdsGridDataParamsEND_OP_DATE_DIFF: TAbmesFloatField;
    pdsGridDataParamsBEGIN_PRODUCTION_WORKDAYS: TAbmesFloatField;
    pdsGridDataParamsEND_PRODUCTION_WORKDAYS: TAbmesFloatField;
    pdsGridDataParamsBEGIN_PRODUCTION_START_DATE_DIFF: TAbmesFloatField;
    pdsGridDataParamsEND_PRODUCTION_START_DATE_DIFF: TAbmesFloatField;
    pdsGridDataParamsBEGIN_ENTER_SH_STORE_DATE_DIFF: TAbmesFloatField;
    pdsGridDataParamsEND_ENTER_SH_STORE_DATE_DIFF: TAbmesFloatField;
    cdsGridDataPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridData_SUM_QUANTITY_DIFF_RAW: TAggregateField;
    cdsGridData_SUM_QUANTITY_DIFF: TAbmesFloatField;
    cdsGridDataSTART_AFTER_LIMITING_DAYS: TAbmesFloatField;
    cdsGridData_QUANTITY_DEV_PRICE_OR_PERCENT: TAbmesWideStringField;
    cdsGridData_QUANTITY_DEV_LABEL: TAbmesWideStringField;
    cdsGridDataWORK_PRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsGridDataPRIORITY_NO: TAbmesFloatField;
    cdsGridDataWORK_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataCONSUME_DATE_DIFF: TAbmesFloatField;
    pdsGridDataParamsMIN_CONSUME_DATE_DIFF: TAbmesFloatField;
    pdsGridDataParamsMAX_CONSUME_DATE_DIFF: TAbmesFloatField;
    cdsGridDataCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCONSUME_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDAMAGES_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsDAMAGES_STATE_CODE: TAbmesFloatField;
    actExceptEvents: TAction;
    cdsExceptEventsParams: TAbmesClientDataSet;
    cdsExceptEventsParamsMAX_STATE_CODE: TAbmesFloatField;
    cdsExceptEventsParamsIS_FILTERED_BY_DAMAGES: TAbmesFloatField;
    cdsExceptEventsParamsEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField;
    cdsExceptEventsParamsML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsExceptEventsParamsML_OBJECT_CODE: TAbmesFloatField;
    btnGroupDeliveriesExceptEvents: TBitBtn;
    cdsGridDataHAS_WASTE_COMPENSATORS: TAbmesFloatField;
    cdsGridData_PRODUCTION_ORDER_POSITION: TAbmesWideStringField;
    cdsModelDevelopmentTypes: TAbmesClientDataSet;
    prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField;
    prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_MODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataWASTING_SALE_OBJ_PK: TAbmesWideStringField;
    cdsGridDataSALE_OBJECT_PK: TAbmesWideStringField;
    btnToggleTreeView: TSpeedButton;
    actToggleTreeView: TAction;
    sepToggleTreeView: TToolButton;
    pnlMainGrid: TPanel;
    grdMain: TAbmesDBGrid;
    pnlTreeView: TPanel;
    navData2Refresh: TDBColorNavigator;
    grdProductionOrdersTree: TAbmesDBGrid;
    btnShowInactive: TToolButton;
    actShowInactive: TAction;
    cdsGridDataMIN_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridDataMAX_ORDER_QUANTITY: TAbmesFloatField;
    cdsGridDataBALANCE_QUANTITY: TAbmesFloatField;
    cdsGridDataQUANTITY_INTERVAL_PCT: TAbmesFloatField;
    procedure cdsGridDataCONSUME_BEGIN_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataML_STATE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure grdMainDblClick(Sender: TObject);
    procedure grdMainDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure grdMainSortMarkingChanged(Sender: TObject);
    procedure grdSysInfoDblClick(Sender: TObject);
    procedure grdSysInfoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure grdSysInfoSortMarkingChanged(Sender: TObject);
    procedure cdsGridDataUNCOVERED_LINESGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure grdMainGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdSysInfoGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnProductDocsClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataCREATE_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataCHANGE_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataFINISH_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataANNUL_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure cdsGridDataENTER_SH_STORE_PLAN_BEGIN_DATEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure actArchiveModelExecute(Sender: TObject);
    procedure actArchiveModelUpdate(Sender: TObject);
    procedure actUnarchiveModelExecute(Sender: TObject);
    procedure actUnarchiveModelUpdate(Sender: TObject);
    procedure actEditRecordUpdate(Sender: TObject);
    procedure actInsertRecordUpdate(Sender: TObject);
    procedure actEditModelUpdate(Sender: TObject);
    procedure actEditModelExecute(Sender: TObject);
    procedure pdsGridDataParams_MAIN_DEPT_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataLIMITING_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataMODEL_CLOSE_TIMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actExcelExportExecute(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridData_SUM_UNCOVERED_LINESGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataSTART_STAGE_COEFGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actModelCapacityStatusUpdate(Sender: TObject);
    procedure actModelCapacityStatusExecute(Sender: TObject);
    procedure actProductVIMUpdate(Sender: TObject);
    procedure actProductVIMExecute(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure btnSaleDocsClick(Sender: TObject);
    procedure actInsertRecordExecute(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataDAMAGES_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actExceptEventsUpdate(Sender: TObject);
    procedure actExceptEventsExecute(Sender: TObject);
    procedure actToggleTreeViewExecute(Sender: TObject);
    procedure actToggleTreeViewUpdate(Sender: TObject);
    procedure actRefreshUpdate(Sender: TObject);
    procedure grdProductionOrdersTreeDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure actShowInactiveExecute(Sender: TObject);
    procedure actShowInactiveUpdate(Sender: TObject);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsGridDataBeforeClose(DataSet: TDataSet);
    procedure cdsGridDataQUANTITY_INTERVAL_PCTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    FProductClass: TProductClass;
    FProductionOrderBaseTypeCode: Integer;
    FShowUncoveredLines: Boolean;
    FIsTreeViewVisible: Boolean;
    FShowInactive: Boolean;
    procedure SetShowUncoveredLines(const Value: Boolean);
    procedure SetCellParams(ACellParamsSetter: TCellParamsSetter);
    function GetImageIndex: Integer;
    procedure ConvertGridDataToTreeList;
  protected
    class function CanUseDocs: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetPrintEnabled: Boolean; override;
    function GetFilterFormEnabled: Boolean; override;
    function MustResortGridDataAfterOpen: Boolean; override;
  public
    property ShowUncoveredLines: Boolean read FShowUncoveredLines write SetShowUncoveredLines;
    procedure Initialize; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; AFilterFormEnabled: Boolean = True;
      AProductionOrderBaseTypeCode: Integer = 0); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; AFilterFormEnabled: Boolean = True;
      AProductionOrderBaseTypeCode: Integer = 0): Boolean;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  dMain, fProductionOrdersFilter, uModelUtils, uColorConsts,
  fProductionOrder, fDBDataForm, JclDateTime, uUserActivityConsts,
  AbmesDialogs, fModelStatus, uClientUtils, uTreeClientUtils, uSaleOrderTypes,
  fSale, uPeriods, uUtils, uExcelExport, rProductionOrders, uOpenVIMConsts,
  fModelCapacityStatus, uClientPeriods, fVIMQuantity, uDocUtils, fBaseForm,
  uExceptEventClientUtils, fExceptEvents, uClientDateTime, fFilterForm,
  uClientConsts, uToolbarUtils, uXMLUtils, uTreeListUtils, MemTableDataEh;

{$R *.dfm}

resourcestring
  SMeasure = 'м.ед.';
  SPercent = '%';
  SDeviation = 'Откл %s';
  SProdOrdersAll = 'Регистър на Ордери за Процес Вътрешен';
  SProdOrdersOfBaseType = 'Регистър на Ордери за Процес Вътрешен %s';
  SConfirmModelArchive   = 'Потвърдете архивирането на Р-МОДЕл-а';
  SConfirmModelUnArchive = 'Потвърдете разархивирането на Р-МОДЕл-а';
  SCantArchiveNotClosedModel = 'Не можете да архивирате Р-МОДЕл, който не е приключен!';
  SEditProductionOrderCaption = 'ОПB';
  SNewProductionOrderCaption = 'Нов ОПВ';
  SPlan = 'Планова';
  SOtch = 'Отчетна';

{ TfmProductionOrders }

procedure TfmProductionOrders.SetCellParams(ACellParamsSetter: TCellParamsSetter);
var
  TempColor: TColor;
begin
  with ACellParamsSetter do
    begin
      if IsSelected then
        Exit;

      if (VarToInt(GetFieldValue('ML_STATE_CODE')) = AnnuledMLState) then
        Background:= ccAnnuledObjectBackground
      else
        begin
          if (CurrentFieldName = 'PRIORITY_FULL_NAME') and
             not VarIsNull(GetFieldValue(CurrentFieldName)) then
            begin
              if not VarIsNull(GetFieldValue('_PRIORITY_COLOR')) then
                Foreground:= VarToInt(GetFieldValue('_PRIORITY_COLOR'));

              if not VarIsNull(GetFieldValue('_PRIORITY_BACKGROUND_COLOR')) then
                Background:= VarToInt(GetFieldValue('_PRIORITY_BACKGROUND_COLOR'));
            end;  { if }

          if (CurrentFieldName = 'ML_STATE_CODE') then
            begin
              if (VarToInt(GetFieldValue('ML_STATE_CODE')) >= Low(ModelStateColors)) and
                 (VarToInt(GetFieldValue('ML_STATE_CODE')) <= High(ModelStateColors)) then
                Background:= ModelStateColors[VarToInt(GetFieldValue('ML_STATE_CODE'))];
            end;  { if }

          if (CurrentFieldName = 'QUANTITY_DEVIATION_PERCENT') and
             (VarToFloat(GetFieldValue(CurrentFieldName)) < 0) then
            begin
              Foreground:= clRed;
            end;  { if }

          if (CurrentFieldName = 'QUANTITY_INTERVAL_PCT') then
            begin
              Foreground:= clRed;
            end;  { if }

          if (CurrentFieldName = '_PRODUCTION_ORDER_POSITION') and
             (VarToInt(GetFieldValue('HAS_WASTE')) = 1) then
            begin
              Background:= ccTotalLateNotSelected;
            end;  { if }

          if (CurrentFieldName = 'ENTER_SH_STORE_DATE_DIFF') and
             (VarToInt(GetFieldValue(CurrentFieldName)) < 0) then
            begin
              if (Abs(VarToInt(GetFieldValue(CurrentFieldName))) > LoginContext.ProductionOrderLateDays) then
                Background:= ccModelLate
              else
                Background:= ccModelActualLate;
            end;  { if }

          if (CurrentFieldName = 'DAMAGES_STATE_CODE') then
            begin
              TempColor:= Background;
              DamagesStateColumnBackground(VarToInt(GetFieldValue(CurrentFieldName)), TempColor);
              Background:= TempColor;
            end;  { if }
        end;
    end;  { with }
end;

procedure TfmProductionOrders.FormShow(Sender: TObject);
begin
  inherited;
  InitializeAbmesDBGrid(grdProductionOrdersTree, False);
  pcMain.ActivePage:= tsMain;
end;

function TfmProductionOrders.GetFilterFormEnabled: Boolean;
begin
  Result:=
    inherited GetFilterFormEnabled and
    not FIsTreeViewVisible;
end;

function TfmProductionOrders.GetPrintEnabled: Boolean;
begin
  Result:=
    inherited GetPrintEnabled and
    not FIsTreeViewVisible;
end;

procedure TfmProductionOrders.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmProductionOrdersFilter;
  EditFormClass:= TfmProductionOrder;
  ReportClass:= TrptProductionOrders;
  RegisterDateFields(cdsGridData);
  ShowUncoveredLines:= LoginContext.DefaultShowUncoveredLines;
end;

procedure TfmProductionOrders.cdsGridDataML_STATE_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (Sender.AsInteger >= Low(MLStateNames)) and
     (Sender.AsInteger <= High(MLStateNames)) then
    Text:= MLStateNames[Sender.AsInteger]
  else
    Text:= '';
end;

procedure TfmProductionOrders.grdMainDblClick(Sender: TObject);
begin
  inherited;

  if ((Sender as TAbmesDBGrid).SelectedIndex <= 6) then
    actEditRecord.Execute
  else
    actEditModel.Execute;
end;

procedure TfmProductionOrders.grdMainDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  grdDataDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmProductionOrders.grdMainSortMarkingChanged(Sender: TObject);
begin
  inherited;
  grdDataSortMarkingChanged(Sender);
end;

procedure TfmProductionOrders.grdProductionOrdersTreeDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;

  with Column.Field.DataSet do
    if BOF and EOF then
      Exit;

  if (Column.FieldName = 'SALE_IDENTIFICATION') then
    DrawTreeImageColumnCell(grdProductionOrdersTree, dmMain.ilActions, GetImageIndex, Rect, Column);
end;

function TfmProductionOrders.GetImageIndex: Integer;
begin
  Result:= 155 + Ord(not VarIsNull(grdProductionOrdersTree.DataSource.DataSet.FieldByName('WASTING_SALE_OBJ_PK').AsVariant));
end;

procedure TfmProductionOrders.grdSysInfoDblClick(Sender: TObject);
begin
  inherited;
  grdDataDblClick(Sender);
end;

procedure TfmProductionOrders.grdSysInfoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  grdDataDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmProductionOrders.grdSysInfoSortMarkingChanged(
  Sender: TObject);
begin
  inherited;
  grdDataSortMarkingChanged(Sender);
end;

procedure TfmProductionOrders.cdsGridDataUNCOVERED_LINESGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (Sender.AsInteger = 0) then
    Text:= ''
  else
    Text:= Sender.AsString;
end;

procedure TfmProductionOrders.grdMainGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  GridCellParamsSetter: TGridCellParamsSetter;
begin
  inherited;
  GridCellParamsSetter:= TGridCellParamsSetter.Create(Column, AFont, Background, State);
  try
    SetCellParams(GridCellParamsSetter);
  finally
    FreeAndNil(GridCellParamsSetter);
  end;  { try }
end;

procedure TfmProductionOrders.grdSysInfoGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  grdMainGetCellParams(Sender, Column, AFont, Background, State);
end;

procedure TfmProductionOrders.CloseDataSets;
begin
  cdsModelDevelopmentTypes.Close;
  cdsPriorities.Close;
  inherited;
end;

procedure TfmProductionOrders.OpenDataSets;
begin
  inherited;
  cdsPriorities.Open;
  cdsModelDevelopmentTypes.Open;
end;

procedure TfmProductionOrders.btnProductDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, btnProductDocs,
    cdsGridDataPRODUCT_CODE.AsInteger);
end;

procedure TfmProductionOrders.actFormUpdate(Sender: TObject);
var
  c: TWinControlArray;
begin
  inherited;

  btnProductDocs.Enabled:=
    cdsGridData.Active and
    cdsGridDataPRODUCT_HAS_DOCUMENTATION.AsBoolean;

  btnSaleDocs.Enabled:=
    cdsGridData.Active and
    cdsGridDataHAS_DOCUMENTATION.AsBoolean;

  btnToggleProductDisplay.Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);

  c:= NormalizedToolbarToolbarsAndFlowPanels(tlbToggleButtons);
  UpdateColumnsVisibility(grdMain, c);
  UpdateColumnsVisibility(grdProductionOrdersTree, c);

  tsMain.Caption:= TreeViewEnabledMainTabSheetCaptions[FIsTreeViewVisible];

  tsSysInfo.TabVisible:= not FIsTreeViewVisible;

  pnlMainGrid.Visible:= not FIsTreeViewVisible;
  pnlTreeView.Visible:= FIsTreeViewVisible;

  navData2.Enabled:= not FIsTreeViewVisible;
end;

procedure TfmProductionOrders.cdsGridDataCREATE_TIMEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmProductionOrders.cdsGridDataDAMAGES_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ProcessDamgedStateFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmProductionOrders.cdsGridDataCHANGE_TIMEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmProductionOrders.cdsGridDataCONSUME_BEGIN_DATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= dmMain.GetDateIntervalAsShortString(
    Sender.AsDateTime, Sender.DataSet.FieldByName('CONSUME_END_DATE').AsDateTime);
end;

procedure TfmProductionOrders.cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    not FIsTreeViewVisible or
    FShowInactive or
    (cdsGridDataML_STATE_CODE.AsInteger < ClosedMaxMLState);
end;

procedure TfmProductionOrders.cdsGridDataFINISH_TIMEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmProductionOrders.cdsGridDataANNUL_TIMEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmProductionOrders.FormDestroy(Sender: TObject);
begin
  UnregisterDateFields(cdsGridData);
  inherited;
end;

procedure TfmProductionOrders.cdsGridDataENTER_SH_STORE_PLAN_BEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if not (cdsGridData.Bof and cdsGridData.Eof) then
    Text:= dmMain.GetDateIntervalAsShortString(Sender.AsDateTime, Sender.DataSet.FieldByName('ENTER_SH_STORE_PLAN_END_DATE').AsDateTime)
  else
    Text:= '';
end;

procedure TfmProductionOrders.actArchiveModelExecute(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  inherited;

  LoginContext.CheckUserActivity(uaArchiveXModel);

  if (cdsGridDataML_STATE_CODE.AsInteger < ClosedMinMLState) or
     (cdsGridDataML_STATE_CODE.AsInteger > ClosedMaxMLState) then
    raise Exception.Create(SCantArchiveNotClosedModel);

  if (MessageDlgEx(SConfirmModelArchive, mtConfirmation, mbOkCancel, 0) = mrOk) then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        dmMain.SvrMfgReports.ArchiveModel(cdsGridDataML_OBJECT_BRANCH_CODE.AsInteger,
                                          cdsGridDataML_OBJECT_CODE.AsInteger);
        RefreshDataSet(cdsGridData);
{        with cdsGridData do
          begin
            DisableControls;
            try
              Edit;
              try
                cdsGridDataIS_ARCHIVED.AsBoolean:= True;
                Post;
              except
                Cancel;
                raise;
              end;   { try }
{            finally
              EnableControls;
            end;   { try }
{          end;   { with }
      finally
        Screen.Cursor:= SaveCursor;
      end;   { try SaveCursor }
    end;
end;

procedure TfmProductionOrders.actArchiveModelUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (not (EditMode = emReadOnly)) and
    (not (cdsGridData.Bof and cdsGridData.Eof)) and
    ( (cdsGridDataML_STATE_CODE.AsInteger < ArchivedMinMLState) or
      (cdsGridDataML_STATE_CODE.AsInteger > ArchivedMaxMLState) );
end;

procedure TfmProductionOrders.actUnarchiveModelExecute(Sender: TObject);
var
  SaveCursor: TCursor;
begin
  inherited;

  LoginContext.CheckUserActivity(uaArchiveXModel);

  if (MessageDlgEx(SConfirmModelUnArchive, mtConfirmation, mbOkCancel, 0) = mrOk) then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        dmMain.SvrMfgReports.UnArchiveModel(cdsGridDataML_OBJECT_BRANCH_CODE.AsInteger,
                                            cdsGridDataML_OBJECT_CODE.AsInteger);
        RefreshDataSet(cdsGridData);
{        with cdsGridData do
          begin
            DisableControls;
            try
              Edit;
              try
                cdsGridDataIS_ARCHIVED.AsBoolean:= False;
                Post;
              except
                Cancel;
                raise;
              end;   { try }
{            finally
              EnableControls;
            end;   { try }
{          end;   { with }
      finally
        Screen.Cursor:= SaveCursor;
      end;   { try SaveCursor }
    end;
end;

procedure TfmProductionOrders.actUnarchiveModelUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (not (EditMode = emReadOnly)) and
    (not (cdsGridData.Bof and cdsGridData.Eof)) and
    (cdsGridDataML_STATE_CODE.AsInteger >= ArchivedMinMLState) and
    (cdsGridDataML_STATE_CODE.AsInteger <= ArchivedMinMLState);
end;

class function TfmProductionOrders.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmProductionOrders.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AFilterFormEnabled: Boolean;
  AProductionOrderBaseTypeCode: Integer);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, doNone, AFilterFormEnabled);
  FProductionOrderBaseTypeCode:= AProductionOrderBaseTypeCode;
  cdsGridData.Params.ParamByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger:= FProductionOrderBaseTypeCode;
end;

class function TfmProductionOrders.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AFilterFormEnabled: Boolean;
  AProductionOrderBaseTypeCode: Integer): Boolean;
var
  f: TfmProductionOrders;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AFilterFormEnabled, AProductionOrderBaseTypeCode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmProductionOrders.Initialize;
begin
  FProductClass:= pcNormal;

  inherited;
  if (FProductionOrderBaseTypeCode = 0) then
    Caption:= SProdOrdersAll
  else
    Caption:= Format(SProdOrdersOfBaseType, [ProductionOrderBaseTypes[FProductionOrderBaseTypeCode].CoveringAbbrevPlural]);
end;

procedure TfmProductionOrders.actEditRecordUpdate(Sender: TObject);
begin
  // do not call inherited
  (Sender as TAction).Enabled:= GetEditRecordEnabled;
  (Sender as TAction).Caption:= SEditProductionOrderCaption + cDialogSuffix;
end;

procedure TfmProductionOrders.actInsertRecordUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Caption:= SNewProductionOrderCaption + cDialogSuffix;
end;

function TfmProductionOrders.ShowEditForm(AEditMode: TEditMode): Boolean;
var
  DefaultsOrigin: TDefaultsOrigin;
begin
  if (AEditMode = emInsert) and InInsertLikeAction then
    DefaultsOrigin:= doServer
  else
    DefaultsOrigin:= doNone;

  if (AEditMode = emInsert) then
    Result:= TfmProductionOrder.ShowForm(dmDocClient, cdsGridData, AEditMode, DefaultsOrigin, FProductionOrderBaseTypeCode)
  else
    begin
      if (cdsGridDataSALE_ORDER_TYPE_CODE.AsInteger = sotProductionOrder) then
        Result:= TfmProductionOrder.ShowForm(dmDocClient, cdsGridData, AEditMode, DefaultsOrigin, FProductionOrderBaseTypeCode)
      else
        Result:= TfmSale.ShowForm(dmDocClient, cdsGridData, AEditMode, 0);
    end;
end;

procedure TfmProductionOrders.actEditModelUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetEditRecordEnabled and not cdsGridDataML_OBJECT_CODE.IsNull;
end;

procedure TfmProductionOrders.actEditModelExecute(Sender: TObject);
begin
  inherited;

  if TfmModelStatus.ShowForm(dmDocClient, cdsGridData, EditMode) then
    RefreshDataSet(cdsGridData);
end;

procedure TfmProductionOrders.pdsGridDataParams_MAIN_DEPT_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmProductionOrders.SetShowUncoveredLines(const Value: Boolean);
var
  SaveCursor: TCursor;
begin
  if FShowUncoveredLines <> Value then
    begin
      FShowUncoveredLines:= Value;
      cdsGridData.Params.ParamByName('SHOW_UNCOVERED_LINES').AsInteger:= Ord(Value);
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        if cdsGridData.Active then
          begin
            cdsGridData.Close;
            cdsGridData.Open;
          end;
      finally
        Screen.Cursor:= SaveCursor;
      end;
    end;
end;

procedure TfmProductionOrders.cdsGridDataLIMITING_TIMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmProductionOrders.cdsGridDataMODEL_CLOSE_TIMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmProductionOrders.cdsGridDataQUANTITY_INTERVAL_PCTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmProductionOrders.actExcelExportExecute(Sender: TObject);
begin
  // do not call inherited
  if FIsTreeViewVisible then
    GridExcelExport(grdProductionOrdersTree)
  else
    GridExcelExport(grdMain);
end;

procedure TfmProductionOrders.actExceptEventsExecute(Sender: TObject);
begin
  inherited;
  cdsExceptEventsParams.CreateDataSet;
  try
    cdsExceptEventsParams.Append;
    try
      cdsExceptEventsParamsMAX_STATE_CODE.AsInteger:= High(TExceptEventStateNames);
      cdsExceptEventsParamsIS_FILTERED_BY_DAMAGES.AsBoolean:= True;
      cdsExceptEventsParamsEE_DAMAGE_PROCESS_TYPE_CODE.AsInteger:= ExceptEventDamageProcessTypeToInt(eedptMaterialListLine);
      cdsExceptEventsParamsML_OBJECT_BRANCH_CODE.AsInteger:= cdsGridDataML_OBJECT_BRANCH_CODE.AsInteger;
      cdsExceptEventsParamsML_OBJECT_CODE.AsInteger:= cdsGridDataML_OBJECT_CODE.AsInteger;

      cdsExceptEventsParams.Post;
    except
      cdsExceptEventsParams.Cancel;
      raise;
    end;  { try }

    TfmExceptEvents.ShowForm(dmDocClient, cdsExceptEventsParams, emReadOnly, doNone, False);
  finally
    cdsExceptEventsParams.Close;
  end;  { try }
end;

procedure TfmProductionOrders.actExceptEventsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridData.IsEmpty and
    not cdsGridDataDAMAGES_STATE_CODE.IsNull;
end;

procedure TfmProductionOrders.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsGridData_REPORT_TITLE.AsString:= Caption;

  if (cdsGridData_SUM_MEASURE_CODE.Value = 0) then
    begin
      cdsGridData_SUM_QUANTITY.Value:= cdsGridData_SUM_QUANTITY_RAW.Value;
      cdsGridData_SUM_QUANTITY_DIFF.Value:= cdsGridData_SUM_QUANTITY_DIFF_RAW.Value;
      cdsGridData_SUM_MEASURE_ABBREV.Value:= cdsGridDataMEASURE_ABBREV.Value;
    end
  else
    begin
      cdsGridData_SUM_QUANTITY.Clear;
      cdsGridData_SUM_QUANTITY_DIFF.Clear;
      cdsGridData_SUM_MEASURE_ABBREV.Clear;
    end;

  if btnToggleQuantityDiff.Down then
    begin
      cdsGridData_QUANTITY_DEV_PRICE_OR_PERCENT.AsString:= cdsGridDataQUANTITY_DEVIATION_PERCENT.DisplayText;
      cdsGridData_QUANTITY_DEV_LABEL.AsString:= Format(SDeviation, [SPercent]);
    end
  else
    begin
      cdsGridData_QUANTITY_DEV_PRICE_OR_PERCENT.AsString:= cdsGridDataQUANTITY_DIFF.DisplayText;
      cdsGridData_QUANTITY_DEV_LABEL.AsString:= Format(SDeviation, [SMeasure]);
    end;

  cdsGridData_PRODUCTION_ORDER_POSITION.AsString:=
    GetProductionOrderPosition(
      cdsGridDataIS_WASTE_COMPENSATOR.AsBoolean,
      cdsGridDataHAS_WASTE_COMPENSATORS.AsBoolean,
      cdsGridDataHAS_WASTE.AsBoolean);
end;

procedure TfmProductionOrders.cdsGridData_SUM_UNCOVERED_LINESGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if VarIsNullOrEmpty(Sender.Value) or (Sender.Value = 0) then
    Text:= ''
  else
    Text:= Sender.Value;
end;

procedure TfmProductionOrders.cdsGridDataSTART_STAGE_COEFGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if VarIsNullOrEmpty(Sender.Value) or (Sender.Value < 0.005) then
    Text:= ''
  else
    Text:= FormatFloat((Sender as TAbmesFloatField).DisplayFormat, Sender.AsFloat);
end;

procedure TfmProductionOrders.actModelCapacityStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetEditRecordEnabled and not cdsGridDataML_OBJECT_CODE.IsNull;
end;

procedure TfmProductionOrders.actModelCapacityStatusExecute(
  Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaModelCapacityStatus);
  TfmModelCapacityStatus.ShowForm(dmDocClient, cdsGridData, EditMode);
end;

procedure TfmProductionOrders.actProductVIMUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmProductionOrders.actRefreshUpdate(Sender: TObject);
begin
  inherited;
  SetRefreshHint(navData2, (Sender as TAction));
end;

procedure TfmProductionOrders.actShowInactiveExecute(Sender: TObject);
begin
  inherited;
  FShowInactive:= not FShowInactive;
  (Sender as TAction).Checked:= FShowInactive;
  RefilterDataSet(cdsGridData);
  ConvertGridDataToTreeList;
end;

procedure TfmProductionOrders.actShowInactiveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= FIsTreeViewVisible;
end;

procedure TfmProductionOrders.actToggleTreeViewExecute(Sender: TObject);
var
  SavedSaleObjectBranchCode: Integer;
  SavedSaleObjectCode: Integer;
begin
  inherited;

  if FIsTreeViewVisible then
    begin
      SavedSaleObjectBranchCode:= cdsGridData.Params.ParamByName('TREE_SALE_OBJECT_BRANCH_CODE').AsInteger;
      SavedSaleObjectCode:= cdsGridData.Params.ParamByName('TREE_SALE_OBJECT_CODE').AsInteger;
    end
  else
    begin
      SavedSaleObjectBranchCode:= cdsGridDataSALE_OBJECT_BRANCH_CODE.AsInteger;
      SavedSaleObjectCode:= cdsGridDataSALE_OBJECT_CODE.AsInteger;
    end;

  FIsTreeViewVisible:= not FIsTreeViewVisible;

  pcMain.ActivePage:= tsMain;

  cdsGridData.Params.ParamByName('GET_SALE_OBJECT_TREE').AsInteger:= Ord(FIsTreeViewVisible);

  if FIsTreeViewVisible then
    begin
      cdsGridData.Params.ParamByName('TREE_SALE_OBJECT_BRANCH_CODE').AsInteger:= cdsGridDataSALE_OBJECT_BRANCH_CODE.AsInteger;
      cdsGridData.Params.ParamByName('TREE_SALE_OBJECT_CODE').AsInteger:= cdsGridDataSALE_OBJECT_CODE.AsInteger;
    end
  else
    begin
      cdsGridData.Params.ParamByName('TREE_SALE_OBJECT_BRANCH_CODE').Clear;
      cdsGridData.Params.ParamByName('TREE_SALE_OBJECT_CODE').Clear;
    end;

  cdsGridData.TempDisableControls/
    procedure begin
      RefreshDataSet(cdsGridData);
      cdsGridData.Locate(
        'SALE_OBJECT_BRANCH_CODE; SALE_OBJECT_CODE',
        VarArrayOf([
          SavedSaleObjectBranchCode,
          SavedSaleObjectCode]),
        []);
    end;

  actForm.Update;
  ActiveControl:= (IfThen(FIsTreeViewVisible, grdProductionOrdersTree, grdMain) as TWinControl);

  FixDBGridEhColumnWidths(grdData);
end;

function TfmProductionOrders.MustResortGridDataAfterOpen: Boolean;
begin
  Result:= Assigned(grdMain.DataSource);
end;

procedure TfmProductionOrders.actToggleTreeViewUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    FIsTreeViewVisible or
    ( not cdsGridData.IsEmpty and
      (cdsGridDataML_STATE_CODE.AsInteger <> AnnuledMLState)
    );
end;

procedure TfmProductionOrders.actProductVIMExecute(Sender: TObject);
begin
  inherited;
  ShowProductVIM(dmDocClient, cdsGridDataPRODUCT_CODE.AsInteger, ContextDate, False, vofVIMOpenedFromSale, pcNormal);
end;

procedure TfmProductionOrders.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if (cdsGridData.IndexName = '') then
    begin
      cdsGridData.IndexName:= cdsGridData.IndexDefs[0].Name;
      cdsGridData.First;
    end;

  if MustResortGridDataAfterOpen then
    ResortGridData(Utils.IfThen(pcMain.ActivePage = tsMain, grdMain, grdSysInfo));

  if FIsTreeViewVisible then
    ConvertGridDataToTreeList;
end;

procedure TfmProductionOrders.cdsGridDataBeforeClose(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.IndexName:= '';
end;

procedure TfmProductionOrders.ConvertGridDataToTreeList;
begin
  SortGrid(grdData, SortIndexName, SortFilteredDetails);

  grdProductionOrdersTree.ConvertToTreeList('SALE_OBJECT_PK', 'WASTING_SALE_OBJ_PK');

  InitializeTreeNodesExpandedState(
    grdProductionOrdersTree,
    function (AMemoryRecordEh: TMemoryRecordEh): Boolean begin
      Result:= (AMemoryRecordEh.DataValues['ML_STATE_CODE', dvvCurValueEh] >= ClosedMaxMLState);
    end);
end;

procedure TfmProductionOrders.btnSaleDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnSaleDocs, dotSale, cdsGridData);
end;

procedure TfmProductionOrders.actInsertRecordExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaNewProductionOrderBase + FProductionOrderBaseTypeCode);
  inherited;
end;

procedure TfmProductionOrders.pdsGridDataParamsBeforePost(DataSet: TDataSet);
var
  SkipMLStateFilterCheck: Boolean;
begin
  inherited;

  if (pdsGridDataParamsIS_WASTE_COMPENSATOR_STATUS.AsInteger = 3) then
    begin
      if not pdsGridDataParamsWASTING_SALE_BRANCH_CODE.IsNull then
        CheckRequiredField(pdsGridDataParamsWASTING_SALE_NO);

      if not pdsGridDataParamsWASTING_SALE_NO.IsNull then
        CheckRequiredField(pdsGridDataParamsWASTING_SALE_BRANCH_CODE);
    end;

  SkipMLStateFilterCheck:=
    ( (pdsGridDataParamsIS_WASTE_COMPENSATOR_STATUS.AsInteger = 3) and
      not pdsGridDataParamsWASTING_SALE_BRANCH_CODE.IsNull and
      not pdsGridDataParamsWASTING_SALE_NO.IsNull
    ) or
    ( (IntToProdOrderBaseType(pdsGridDataParamsPRODUCTION_ORDER_BASE_TYPE_CODE.AsInteger) = pobtProjectCover) and
      IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString)
    );

  if not SkipMLStateFilterCheck then
    CheckMLStateFilter(pdsGridDataParamsMIN_ML_STATE_CODE.AsInteger, pdsGridDataParamsMAX_ML_STATE_CODE.AsInteger);
end;

procedure TfmProductionOrders.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  InitializePriorityInterval(pdsGridDataParamsBEGIN_PRIORITY_CODE, pdsGridDataParamsEND_PRIORITY_CODE);
end;

end.



