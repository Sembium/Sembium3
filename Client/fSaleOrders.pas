unit fSaleOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh,
  DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, Mask, uProducts, uClientTypes, dDocClient, Menus,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions,
  EhLibVCL, DBAxisGridsEh;

type
  TfmSaleOrders = class(TGridForm)
    pcDetail: TPageControl;
    tsDetailCommon: TTabSheet;
    grdSaleOrders: TAbmesDBGrid;
    tsPrognosis: TTabSheet;
    grdPrognosis: TAbmesDBGrid;
    tsRealization: TTabSheet;
    grdRealization: TAbmesDBGrid;
    cdsGridData_SUM_PROGNOSIS_TOTAL_PRICE: TAggregateField;
    cdsGridData_MIN_MEASURE_CODE: TAggregateField;
    cdsGridData_MAX_MEASURE_CODE: TAggregateField;
    cdsGridData_SUM_PROGNOSIS_QUANTITY: TAggregateField;
    cdsGridData_SUM_TOTAL_PRICE: TAggregateField;
    cdsGridData_SUM_QUANTITY: TAggregateField;
    cdsGridData_MIN_PROGNOSIS_MEASURE_CODE: TAggregateField;
    cdsGridData_MAX_PROGNOSIS_MEASURE_CODE: TAggregateField;
    cdsGridData_MIN_ACCOUNT_MEASURE_CODE: TAggregateField;
    cdsGridData_MAX_ACCOUNT_MEASURE_CODE: TAggregateField;
    cdsGridData_MIN_PROGNOSIS_ACC_MEASURE_CODE: TAggregateField;
    cdsGridData_MAX_PROGNOSIS_ACC_MEASURE_CODE: TAggregateField;
    cdsGridData_SUM_PROGNOSIS_ACCOUNT_QUANTITY: TAggregateField;
    cdsGridData_SUM_ACCOUNT_QUANTITY: TAggregateField;
    cdsGridData_PROGNOSIS_PERIOD_MONTHS: TAbmesWideStringField;
    cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataSTATUS_CODE: TAbmesFloatField;
    cdsGridDataASPECT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataASPECT_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataSALE_ORDER_ID: TAbmesWideStringField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataIS_ANNULED: TAbmesFloatField;
    cdsGridDataIS_FINISHED: TAbmesFloatField;
    cdsGridDataPLAN_PERIOD_DAYS: TAbmesFloatField;
    cdsGridDataREAL_PERIOD_DAYS: TAbmesFloatField;
    cdsGridDataREAL_PERIOD_DEVIATION_PERCENT: TAbmesFloatField;
    cdsGridDataOFFER_SEND_DAYS_RSV: TAbmesFloatField;
    cdsGridDataOFFER_ANSWER_DAYS_RSV: TAbmesFloatField;
    cdsGridDataDECISION_DAYS_RSV: TAbmesFloatField;
    cdsGridDataDECISION_TYPE_CODE: TAbmesFloatField;
    cdsGridDataDECISION_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPROGNOSIS_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataQUANTITY: TAbmesFloatField;
    cdsGridDataMEASURE_CODE: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataIS_QUANTITY_AGREED: TAbmesFloatField;
    cdsGridDataSINGLE_PRICE: TAbmesFloatField;
    cdsGridDataCURRENCY_CODE: TAbmesFloatField;
    cdsGridDataCURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridDataIS_SINGLE_PRICE_AGREED: TAbmesFloatField;
    cdsGridDataTOTAL_PRICE: TAbmesFloatField;
    cdsGridDataPROGNOSIS_QUANTITY: TAbmesFloatField;
    cdsGridDataPROGNOSIS_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataPROGNOSIS_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataPROGNOSIS_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSALE_ID: TAbmesWideStringField;
    cdsGridDataPROGNOSIS_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGridDataCOMMON_STATUS_CODE: TAbmesFloatField;
    cdsGridDataPROGNOSIS_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataIS_LEASE_QUANTITY_AGREED: TAbmesFloatField;
    cdsGridData_LEASE_DATE_INTERVAL: TAbmesSQLTimeStampField;
    cdsGridDataPROGNOSIS_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridDataLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridDataLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGridDataPROGNOSIS_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    cdsGridDataTOTAL_LEASE_QUANTITY: TAbmesFloatField;
    cdsGridData_DISPLAY_SUM_PROGNOSIS_QUANTITY: TAbmesFloatField;
    cdsGridData_DISPLAY_SUM_QUANTITY: TAbmesFloatField;
    cdsGridData_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_PROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_PROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_DISPLAY_SUM_ACC_QTY: TAbmesFloatField;
    cdsGridData_DISPLAY_SUM_PROGNOSIS_ACC_QTY: TAbmesFloatField;
    cdsGridDataPROGNOSIS_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataTOTAL_ACCOUNT_LEASE_QUANTITY: TAbmesFloatField;
    cdsGridDataPROGNOSIS_ACC_TOTAL_LEASE_QTY: TAbmesFloatField;
    cdsGridDataPROGNOSIS_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataPROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataPROGNOSIS_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataPROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataPROGNOSIS_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataPROGNOSIS_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridDataMANAGER_EMPLOYEE_FULL_NAME: TAbmesWideStringField;
    cdsGridDataCOMPANY_STATUS_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_STATUS_NAME: TAbmesWideStringField;
    cdsGridDataCLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataCLIENT_COMPANY_NAME: TAbmesWideStringField;
    cdsGridDataPRIORITY_NO: TAbmesFloatField;
    cdsGridDataPRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridDataHAS_MEDIATOR: TAbmesFloatField;
    pdsGridDataParamsSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsREQUEST_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsREUQEST_NO: TAbmesFloatField;
    pdsGridDataParamsREQUEST_NO: TAbmesFloatField;
    pdsGridDataParamsREQUEST_LINE_NO: TAbmesFloatField;
    pdsGridDataParamsASPECT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    actClientDoc: TAction;
    actSaleDoc: TAction;
    actProductDoc: TAction;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataCLIENT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataCLIENT_DOC_CODE: TAbmesFloatField;
    cdsGridDataCLIENT_HAS_DOCUMENTATION: TAbmesFloatField;
    tlbClientDoc: TToolBar;
    sepBeforeClientDoc: TToolButton;
    lblClientDoc: TLabel;
    btnClientDoc: TToolButton;
    tlbSaleDoc: TToolBar;
    sepBeforeSaleDoc: TToolButton;
    lblSaleDoc: TLabel;
    btnSaleDoc: TToolButton;
    tlbProductDoc: TToolBar;
    sepBeforeProductDoc: TToolButton;
    lblProductDoc: TLabel;
    btnProductDoc: TToolButton;
    cdsGridDataSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsGridDataSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    tbToggleQuantity: TToolBar;
    btnWorkMeasure: TSpeedButton;
    btnAccountMeasure: TSpeedButton;
    sepBeforeSaleDealType: TToolButton;
    lblSaleDealType: TLabel;
    pnlSaleDealType: TPanel;
    edtSaleDealType: TDBEdit;
    cdsSaleDealTypes: TAbmesClientDataSet;
    cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    dsSaleDealTypes: TDataSource;
    btnEditRecord: TBitBtn;
    pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_NO: TAbmesFloatField;
    pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsMANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsCLIENT_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsCLIENT_COUNTRY_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_CLIENT_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_CLIENT_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsHAS_MEDIATOR_CODE: TAbmesFloatField;
    pdsGridDataParamsHAS_DECISION_CODE: TAbmesFloatField;
    pdsGridDataParamsDECISION_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_REQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_REQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_PROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_PROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_PROGNOSIS_DAYS_RSV: TAbmesFloatField;
    pdsGridDataParamsBEGIN_OFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_OFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_OFFER_SEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_OFFER_SEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_OFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_OFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_OFFER_ANSWER_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_OFFER_ANSWER_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_DECISION_PLAN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DECISION_PLAN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_DECISION_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DECISION_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_OFFER_SEND_DAYS_RSV: TAbmesFloatField;
    pdsGridDataParamsEND_OFFER_SEND_DAYS_RSV: TAbmesFloatField;
    pdsGridDataParamsBEGIN_OFFER_ANSWER_DAYS_RSV: TAbmesFloatField;
    pdsGridDataParamsEND_OFFER_ANSWER_DAYS_RSV: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DECISION_DAYS_RSV: TAbmesFloatField;
    pdsGridDataParamsEND_DECISION_DAYS_RSV: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsHAS_AGREED_QUANTITY: TAbmesFloatField;
    pdsGridDataParamsHAS_NOT_AGREED_QUANTITY: TAbmesFloatField;
    pdsGridDataParamsHAS_AGREED_SINGLE_PRICE: TAbmesFloatField;
    pdsGridDataParamsHAS_NOT_AGREED_SINGLE_PRICE: TAbmesFloatField;
    pdsGridDataParamsEND_PROGNOSIS_DAYS_RSV: TAbmesFloatField;
    pdsGridDataParamsMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField;
    cdsGridDataCLIENT_REQUEST_NO: TAbmesWideStringField;
    cdsGridDataCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    sepBeforeWorkMeasure: TToolButton;
    btnToggleClientStuff: TSpeedButton;
    actToggleClientStuff: TAction;
    cdsGridDataREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataREQUEST_NO: TAbmesFloatField;
    cdsGridDataREQUEST_LINE_NO: TAbmesFloatField;
    cdsGridDataREQUEST_BRANCH_ID: TAbmesFloatField;
    cdsGridDataSALE_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataSALE_PRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    pdsGridDataParamsDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    pdsGridDataParamsPAR_REL_PRODUCT: TAbmesFloatField;
    pdsGridDataParamsPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductStatuses: TAbmesClientDataSet;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    pdsGridDataParams_PAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    pdsGridDataParamsSTREAM_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsHAS_DELIVERY: TAbmesFloatField;
    pdsGridDataParamsDCD_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsDCD_CODE: TAbmesFloatField;
    pdsGridDataParamsDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsGridDataIS_ACTIVATED_BY_CLIENT: TAbmesFloatField;
    pdsGridDataParamsIS_ACTIVATED_BY_CLIENT: TAbmesFloatField;
    cdsGridDataBASE_ROLE_CODE: TAbmesFloatField;
    btnPrintSaleOrders: TToolButton;
    actPrintSaleOrders: TAction;
    cdsGridData_SALE_DEAL_TYPE_SHOW_NAME: TAbmesWideStringField;
    cdsSaleDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsSaleDealTypes_SALE_DEAL_TYPE_SHOW_NAME: TAbmesWideStringField;
    pdsGridDataParams_SALE_DEAL_TYPE_SHOW_NAME: TAbmesWideStringField;
    cdsGridDataRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField;
    cdsGridDataCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataREAL_PERIOD_DEVIATION_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataCOMMON_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_LEASE_DATE_INTERVALGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure grdSaleOrdersDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure grdSaleOrdersDblClick(Sender: TObject);
    procedure grdSaleOrdersSortMarkingChanged(Sender: TObject);
    procedure grdSaleOrdersGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure actClientDocExecute(Sender: TObject);
    procedure actClientDocUpdate(Sender: TObject);
    procedure actSaleDocUpdate(Sender: TObject);
    procedure actProductDocUpdate(Sender: TObject);
    procedure actSaleDocExecute(Sender: TObject);
    procedure actProductDocExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure btnWorkMeasureClick(Sender: TObject);
    procedure btnAccountMeasureClick(Sender: TObject);
    procedure cdsGridDataSTATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actToggleClientStuffExecute(Sender: TObject);
    procedure pdsGridDataParams_PAR_REL_PRODUCT_STATUS_NAMEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataCOMPANY_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actPrintSaleOrdersUpdate(Sender: TObject);
    procedure actPrintSaleOrdersExecute(Sender: TObject);
    procedure cdsSaleDealTypesAfterOpen(DataSet: TDataSet);
    procedure cdsSaleDealTypesCalcFields(DataSet: TDataSet);
    procedure actExcelExportExecute(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    procedure UpdateVisibleColumns;
  protected
    function GetOriginalFormCaption: string; override;
    function GetInsertRecordEnabled: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function ShowFilterForm: Boolean; override;
    procedure DoBeforeShow; override;
    function GetActiveGridReportTitle(AGrid: TAbmesDBGrid): string; override;
  public
    procedure Initialize; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    class function CanUseDocs: Boolean; override;
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
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  fSaleOrdersFilter, dMain, uClientUtils, uProductClientUtils, uPeriods, fSaleOrder, DateUtils,
  uDocClientUtils, uDocUtils, uClientConsts, uSaleDealTypes,
  uSalesClientUtils, uColorConsts, uCompanyClientUtils, uParRelProducts,
  uBorderRelTypes, uProductionOrderTypes, uUtils, StrUtils, uExcelExport;

{$R *.dfm}

resourcestring
  SAnnuledAbbrev = 'Ан';
  SFinishedAbbrev = 'Пк';
  STotalPricePrognosisGrid = 'Перспективни Параметри на ОДК|Обща Стойност (%s)';
  STotalPriceRealizationGrid = 'Договорени Условия по Реализация на ОДК|Обща Стойност (%s)';
  SPoZadanie = 'по Задание';

{ TfmSaleOrders }

procedure TfmSaleOrders.actClientDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotCompany,
    cdsGridDataCLIENT_DOC_BRANCH_CODE.AsInteger,
    cdsGridDataCLIENT_DOC_CODE.AsInteger);
end;

procedure TfmSaleOrders.actClientDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmSaleOrders.actExcelExportExecute(Sender: TObject);
begin
//  inherited;
  MultiGridExcelExport([grdSaleOrders, grdPrognosis, grdRealization]);
end;

procedure TfmSaleOrders.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnClientDoc.ImageIndex:= cdsGridDataCLIENT_HAS_DOCUMENTATION.AsInteger;
  btnSaleDoc.ImageIndex:= cdsGridDataHAS_DOCUMENTATION.AsInteger;
  btnProductDoc.ImageIndex:= cdsGridDataPRODUCT_HAS_DOCUMENTATION.AsInteger;
end;

function TfmSaleOrders.GetActiveGridReportTitle(AGrid: TAbmesDBGrid): string;
begin
  Result:= CleanFormCaption(Caption) + ' - ' + pcDetail.ActivePage.Caption;
end;

procedure TfmSaleOrders.actPrintSaleOrdersExecute(Sender: TObject);
begin
  inherited;

  if (pcDetail.ActivePage = tsDetailCommon) then
    ActiveControl:= grdSaleOrders;

  if (pcDetail.ActivePage = tsPrognosis) then
    ActiveControl:= grdPrognosis;

  if (pcDetail.ActivePage = tsRealization) then
    ActiveControl:= grdRealization;

  actPrintActiveGrid.Execute;
end;

procedure TfmSaleOrders.actPrintSaleOrdersUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmSaleOrders.actProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotProduct,
    cdsGridDataPRODUCT_DOC_BRANCH_CODE.AsInteger,
    cdsGridDataPRODUCT_DOC_CODE.AsInteger);
end;

procedure TfmSaleOrders.actProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmSaleOrders.actSaleDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotSale,
    cdsGridDataDOC_BRANCH_CODE.AsInteger,
    cdsGridDataDOC_CODE.AsInteger);
end;

procedure TfmSaleOrders.actSaleDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmSaleOrders.actToggleClientStuffExecute(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmSaleOrders.btnAccountMeasureClick(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmSaleOrders.btnWorkMeasureClick(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

class function TfmSaleOrders.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmSaleOrders.cdsGridDataSTATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= SaleOrderStatuses[Sender.AsInteger];
end;

procedure TfmSaleOrders.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmSaleOrders.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmSaleOrders.cdsGridDataCalcFields(DataSet: TDataSet);
var
  MeasureAbbrev, AccountMeasureAbbrev: string;
begin
  inherited;

  with DataSet do
    begin
      if FieldByName('PROGNOSIS_BEGIN_DATE').IsNull then
        FieldByName('_PROGNOSIS_PERIOD_MONTHS').Clear
      else
        FieldByName('_PROGNOSIS_PERIOD_MONTHS').AsString:=
          FieldByName('PROGNOSIS_BEGIN_DATE').DisplayText +
          ' - ' +
          IntToStr(MonthsBetween(FieldByName('PROGNOSIS_BEGIN_DATE').AsDateTime, FieldByName('PROGNOSIS_END_DATE').AsDateTime));

      FieldByName('_LEASE_DATE_INTERVAL').Assign(FieldByName('RECEIVE_DATE'));

      // totals
      if FieldByName('MEASURE_ABBREV').IsNull then
        MeasureAbbrev:= FieldByName('PROGNOSIS_MEASURE_ABBREV').AsString
      else
        MeasureAbbrev:= FieldByName('MEASURE_ABBREV').AsString;

      if FieldByName('ACCOUNT_MEASURE_ABBREV').IsNull then
        AccountMeasureAbbrev:= FieldByName('PROGNOSIS_ACC_MEASURE_ABBREV').AsString
      else
        AccountMeasureAbbrev:= FieldByName('ACCOUNT_MEASURE_ABBREV').AsString;

      if FieldByName('_MIN_MEASURE_CODE').AsVariant = FieldByName('_MAX_MEASURE_CODE').AsVariant then
        begin
          FieldByName('_DISPLAY_SUM_QUANTITY').AsVariant:= FieldByName('_SUM_QUANTITY').AsVariant;
          FieldByName('_MEASURE_ABBREV').AsString:= MeasureAbbrev;
        end
      else
        begin
          FieldByName('_DISPLAY_SUM_QUANTITY').Clear;
          FieldByName('_MEASURE_ABBREV').Clear;
        end;

      if FieldByName('_MIN_ACCOUNT_MEASURE_CODE').AsVariant = FieldByName('_MAX_ACCOUNT_MEASURE_CODE').AsVariant then
        begin
          FieldByName('_DISPLAY_SUM_ACC_QTY').AsVariant:= FieldByName('_SUM_ACCOUNT_QUANTITY').AsVariant;
          FieldByName('_ACCOUNT_MEASURE_ABBREV').AsString:= AccountMeasureAbbrev;
        end
      else
        begin
          FieldByName('_DISPLAY_SUM_ACC_QTY').Clear;
          FieldByName('_ACCOUNT_MEASURE_ABBREV').Clear;
        end;

      if FieldByName('_MIN_PROGNOSIS_MEASURE_CODE').AsVariant = FieldByName('_MAX_PROGNOSIS_MEASURE_CODE').AsVariant then
        begin
          FieldByName('_DISPLAY_SUM_PROGNOSIS_QUANTITY').AsVariant:= FieldByName('_SUM_PROGNOSIS_QUANTITY').AsVariant;
          FieldByName('_PROGNOSIS_MEASURE_ABBREV').AsString:= MeasureAbbrev;
        end
      else
        begin
          FieldByName('_DISPLAY_SUM_PROGNOSIS_QUANTITY').Clear;
          FieldByName('_PROGNOSIS_MEASURE_ABBREV').Clear;
        end;

      if FieldByName('_MIN_PROGNOSIS_ACC_MEASURE_CODE').AsVariant = FieldByName('_MAX_PROGNOSIS_ACC_MEASURE_CODE').AsVariant then
        begin
          FieldByName('_DISPLAY_SUM_PROGNOSIS_ACC_QTY').AsVariant:= FieldByName('_SUM_PROGNOSIS_ACCOUNT_QUANTITY').AsVariant;
          FieldByName('_PROGNOSIS_ACC_MEASURE_ABBREV').AsString:= AccountMeasureAbbrev;
        end
      else
        begin
          FieldByName('_DISPLAY_SUM_PROGNOSIS_ACC_QTY').Clear;
          FieldByName('_PROGNOSIS_ACC_MEASURE_ABBREV').Clear;
        end;
    end;
end;

procedure TfmSaleOrders.cdsGridDataCOMMON_STATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= ProductCommonStatusAbbrevs[Sender.AsInteger];
end;

procedure TfmSaleOrders.cdsGridDataCOMPANY_STATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  CompanyStatusFieldGetText(Sender, cdsGridDataCOMPANY_STATUS_NAME, cdsGridDataBASE_ROLE_CODE, Text, DisplayText);
end;

procedure TfmSaleOrders.cdsGridDataREAL_PERIOD_DEVIATION_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleOrders.cdsGridData_LEASE_DATE_INTERVALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    try
      Text:= dmMain.GetDateIntervalAsString(
        Sender.AsDateTime,
        IncDate(Sender.AsDateTime, GetPeriodValue(cdsGridDataLEASE_DATE_UNIT_CODE.AsInteger), cdsGridDataLEASE_DATE_UNIT_QTY.AsInteger)
      );
    except
      Text:= '';
    end;
end;

procedure TfmSaleOrders.cdsSaleDealTypesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsSaleDealTypes.TempReadOnly(False)/
    cdsSaleDealTypes.SafeAppend/
      procedure begin
        cdsSaleDealTypesSALE_DEAL_TYPE_CODE.AsInteger:= sdtFilterSaleAndExport;
        cdsSaleDealTypesSALE_DEAL_TYPE_NAME.AsString:= SSaleDealTypeNameSaleAndExport;
        cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV.AsString:= SSaleDealTypeAbbrevSaleAndExport;
        cdsSaleDealTypesOBTAINMENT_TYPE_CODE.AsInteger:= ObtainmentTypeToInt(otNone);
      end;
end;

procedure TfmSaleOrders.cdsSaleDealTypesCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsSaleDealTypes_SALE_DEAL_TYPE_SHOW_NAME.AsString:=
    cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV.AsString +
    DupeString(' ', 20 - Length(cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV.AsString) * 3) +
    cdsSaleDealTypesSALE_DEAL_TYPE_NAME.AsString;
end;

procedure TfmSaleOrders.CloseDataSets;
begin
  cdsSaleDealTypes.Close;
  inherited;
end;

procedure TfmSaleOrders.DoBeforeShow;
var
  MsgParams: TStrings;
begin
  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  if (FProductClass = pcNormal) then
    MsgParams.Values['PoZadanie']:= SPoZadanie
  else
    MsgParams.Values['PoZadanie']:= ' ';

  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  MsgParams:=
    uParRelProducts.CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      brtClient,
      pobtSaleCover,
      prpoProduct,
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  inherited;
end;

procedure TfmSaleOrders.FormCreate(Sender: TObject);
begin
  inherited;

  FilterFormClass:= TfmSaleOrdersFilter;
  EditFormClass:= TfmSaleOrder;

  grdPrognosis.Columns[27].Title.Caption:= Format(STotalPricePrognosisGrid, [LoginContext.BaseCurrencyAbbrev]);
  grdRealization.Columns[26].Title.Caption:= Format(STotalPriceRealizationGrid, [LoginContext.BaseCurrencyAbbrev]);

  pcDetail.ActivePage:= tsDetailCommon;

  RegisterDateFields(cdsGridData);

  RegisterFieldsTextVisibility(
    IsSalePriceVisible,
    [ cdsGridDataPROGNOSIS_SINGLE_PRICE,
      cdsGridDataPROGNOSIS_CURRENCY_ABBREV,
      cdsGridDataPROGNOSIS_TOTAL_PRICE,
      cdsGridData_SUM_PROGNOSIS_TOTAL_PRICE,
      cdsGridDataPROGNOSIS_ACCOUNT_SINGLE_PRICE,
      cdsGridDataSINGLE_PRICE,
      cdsGridDataACCOUNT_SINGLE_PRICE,
      cdsGridDataCURRENCY_ABBREV,
      cdsGridDataTOTAL_PRICE,
      cdsGridData_SUM_TOTAL_PRICE]);
end;

function TfmSaleOrders.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

function TfmSaleOrders.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmSaleOrders.grdSaleOrdersDblClick(Sender: TObject);
begin
  inherited;
  grdDataDblClick(Sender);
end;

procedure TfmSaleOrders.grdSaleOrdersDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  grdDataDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmSaleOrders.grdSaleOrdersGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  Highlight: Boolean;
  Field: TField;
begin
  inherited;

  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if (Highlight and (ActiveControl = Sender)) or not Assigned(Field) or (Field.DataSet.Bof and Field.DataSet.Eof) then
    Exit;

  if (Field = cdsGridDataPRIORITY_NO) then
    begin
      with cdsGridDataPRIORITY_BACKGROUND_COLOR do
        if not IsNull then
          Background:= AsInteger;

      with cdsGridDataPRIORITY_COLOR do
        if not IsNull then
          AFont.Color:= AsInteger;
    end;

  if (Field = cdsGridDataSALE_PRIORITY_NO) then
    begin
      with cdsGridDataSALE_PRIORITY_BACKGROUND_COLOR do
        if not IsNull then
          Background:= AsInteger;

      with cdsGridDataSALE_PRIORITY_COLOR do
        if not IsNull then
          AFont.Color:= AsInteger;
    end;

  if (Field = cdsGridDataCOMPANY_STATUS_CODE) then
    AFont.Color:= CompanyStatusColors[cdsGridDataCOMPANY_STATUS_CODE.AsInteger];

  if (Field = cdsGridDataSTATUS_CODE) then
    Background:= SaleOrderStatusColors[cdsGridDataSTATUS_CODE.AsInteger];
end;

procedure TfmSaleOrders.grdSaleOrdersSortMarkingChanged(Sender: TObject);
begin
  inherited;
  grdDataSortMarkingChanged(Sender);
end;

procedure TfmSaleOrders.Initialize;
begin
  inherited Initialize;

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmSaleOrders.OpenDataSets;
begin
  inherited;
  cdsSaleDealTypes.Open;
end;

procedure TfmSaleOrders.pdsGridDataParams_PAR_REL_PRODUCT_STATUS_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleOrders.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FProductClass:= AProductClass;
end;

function TfmSaleOrders.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmSaleOrder.ShowForm(dmDocClient, cdsGridData, AEditMode, doNone, FProductClass);
end;

function TfmSaleOrders.ShowFilterForm: Boolean;
begin
  Result:= TfmSaleOrdersFilter.ShowForm(dmDocClient, pdsGridDataParams, emEdit, doNone, FProductClass);
end;

class function TfmSaleOrders.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass): Boolean;
var
  f: TfmSaleOrders;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmSaleOrders.UpdateVisibleColumns;
var
  ShowSales: Boolean;
  ShowClientStuff: Boolean;
  IsAccountMeasure: Boolean;
  
begin
  ShowSales:= cdsGridData.IsEmpty or (cdsGridDataSALE_DEAL_TYPE_CODE.AsInteger = sdtSale);
  ShowClientStuff:= btnToggleClientStuff.Down;
  IsAccountMeasure:= btnAccountMeasure.Down;

  with grdSaleOrders do
    begin
      Columns[2].Visible:=                                             not ShowClientStuff;
      Columns[3].Visible:=                                                 ShowClientStuff;
      Columns[10].Visible:=                                             not ShowClientStuff or (FProductClass = pcFinancial);
      Columns[11].Visible:=                                                ShowClientStuff and (FProductClass = pcNormal);
    end;
    
  with grdPrognosis do
    begin
      Columns[2].Visible:=                                             not ShowClientStuff;
      Columns[3].Visible:=                                                 ShowClientStuff;
      Columns[4].Visible:=                                             not ShowClientStuff or (FProductClass = pcFinancial);
      Columns[5].Visible:=                                                 ShowClientStuff and (FProductClass = pcNormal);

      Columns[9].Visible:=      ShowSales and not IsAccountMeasure;
      Columns[10].Visible:=     ShowSales and not IsAccountMeasure;
      Columns[11].Visible:=     ShowSales and     IsAccountMeasure;
      Columns[12].Visible:=     ShowSales and     IsAccountMeasure;
      Columns[13].Visible:=     ShowSales;

      Columns[14].Visible:= not ShowSales and not IsAccountMeasure;
      Columns[15].Visible:= not ShowSales and not IsAccountMeasure;
      Columns[16].Visible:= not ShowSales and     IsAccountMeasure;
      Columns[17].Visible:= not ShowSales and     IsAccountMeasure;
      Columns[18].Visible:= not ShowSales;
      Columns[19].Visible:= not ShowSales;
      Columns[20].Visible:= not ShowSales and not IsAccountMeasure;
      Columns[21].Visible:= not ShowSales and     IsAccountMeasure;
      Columns[22].Visible:= not ShowSales;

      Columns[23].Visible:=                   not IsAccountMeasure;
      Columns[24].Visible:=                       IsAccountMeasure;
    end;

  with grdRealization do
    begin
      Columns[2].Visible:=                                             not ShowClientStuff;
      Columns[3].Visible:=                                                 ShowClientStuff;
      Columns[4].Visible:=                                             not ShowClientStuff or (FProductClass = pcFinancial);
      Columns[5].Visible:=                                                 ShowClientStuff and (FProductClass = pcNormal);

      Columns[8].Visible:=      ShowSales;
      Columns[9].Visible:=      ShowSales;
      Columns[10].Visible:=     ShowSales and not IsAccountMeasure;
      Columns[11].Visible:=     ShowSales and not IsAccountMeasure;
      Columns[12].Visible:=     ShowSales and     IsAccountMeasure;
      Columns[13].Visible:=     ShowSales and     IsAccountMeasure;

      Columns[14].Visible:= not ShowSales;
      Columns[15].Visible:= not ShowSales and not IsAccountMeasure;
      Columns[16].Visible:= not ShowSales and not IsAccountMeasure;
      Columns[17].Visible:= not ShowSales and     IsAccountMeasure;
      Columns[18].Visible:= not ShowSales and     IsAccountMeasure;
      Columns[19].Visible:= not ShowSales;
      Columns[20].Visible:= not ShowSales;
      Columns[21].Visible:= not ShowSales and not IsAccountMeasure;
      Columns[22].Visible:= not ShowSales and     IsAccountMeasure;

      Columns[23].Visible:=                   not IsAccountMeasure;
      Columns[24].Visible:=                       IsAccountMeasure;
    end;
end;

procedure TfmSaleOrders.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  InitializePriorityInterval(pdsGridDataParamsBEGIN_PRIORITY_CODE, pdsGridDataParamsEND_PRIORITY_CODE);
  InitializePriorityInterval(pdsGridDataParamsBEGIN_CLIENT_PRIORITY_CODE, pdsGridDataParamsEND_CLIENT_PRIORITY_CODE);
end;

end.
