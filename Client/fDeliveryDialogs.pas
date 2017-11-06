unit fDeliveryDialogs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, Mask, dDocClient, uClientTypes, uProductionOrderTypes, uProducts,
  Menus, DBGridEhGrouping;

type
  TfmDeliveryDialogs = class(TGridForm)
    cdsGridDataASPECT_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataDELIVERY_ID: TAbmesWideStringField;
    cdsGridDataIS_ACTIVATED_BY_VENDOR: TAbmesFloatField;
    cdsGridDataDIALOG_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataCOMPANY_STATUS_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_STATUS_NAME: TAbmesWideStringField;
    cdsGridDataVENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataVENDOR_COMPANY_NAME: TAbmesWideStringField;
    cdsGridDataPRIORITY_NO: TAbmesFloatField;
    cdsGridDataPRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridDataHAS_MEDIATOR: TAbmesFloatField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField;
    cdsGridDataMEASURE_CODE: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataREGISTER_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPLAN_PERIOD_DAYS: TAbmesFloatField;
    cdsGridDataREAL_PERIOD_DAYS: TAbmesFloatField;
    cdsGridDataREAL_PERIOD_DEVIATION_PERCENT: TAbmesFloatField;
    cdsGridDataPOSITION_DAYS_RSV: TAbmesFloatField;
    cdsGridDataVENDOR_POSITION_DAYS_RSV: TAbmesFloatField;
    cdsGridDataDECISION_DAYS_RSV: TAbmesFloatField;
    cdsGridDataDELIVERY_DECISION_CODE: TAbmesFloatField;
    cdsGridDataDELIVERY_DECISION_ABBREV: TAbmesWideStringField;
    cdsGridDataPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPROGNOSIS_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPROGNOSIS_QUANTITY: TAbmesFloatField;
    cdsGridDataPROGNOSIS_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataIS_QUANTITY_AGREED: TAbmesFloatField;
    cdsGridDataPROGNOSIS_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataPROGNOSIS_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataPROGNOSIS_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridDataIS_PRICE_AGREED: TAbmesFloatField;
    cdsGridDataPROGNOSIS_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataDELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsGridDataWORK_QUANTITY: TAbmesFloatField;
    cdsGridDataACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataSINGLE_PRICE: TAbmesFloatField;
    cdsGridDataTOTAL_PRICE: TAbmesFloatField;
    pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsDCD_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsDCD_CODE: TAbmesFloatField;
    pdsGridDataParamsDELIVERY_PROJECT_CODE: TAbmesFloatField;
    pdsGridDataParamsASPECT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_ACTIVATED_BY_CODE: TAbmesFloatField;
    pdsGridDataParamsHAS_CONTRACT_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsDIALOG_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsVENDOR_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsVENDOR_COUNTRY_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_VENDOR_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_VENDOR_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsHAS_MEDIATOR_CODE: TAbmesFloatField;
    pdsGridDataParamsMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsHAS_DECISION_CODE: TAbmesFloatField;
    pdsGridDataParamsDELIVERY_DECISION_CODE: TAbmesFloatField;
    pdsGridDataParamsDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_REGISTER_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_REGISTER_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_PLAN_POSITION_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_PLAN_POSITION_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_REAL_POSITION_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_REAL_POSITION_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_PLAN_VENDOR_POS_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_PLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_REAL_VENDOR_POS_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_REAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_PLAN_DECISION_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_PLAN_DECISION_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_REAL_DECISION_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_REAL_DECISION_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_POSITION_DAYS_RSV: TAbmesFloatField;
    pdsGridDataParamsEND_POSITION_DAYS_RSV: TAbmesFloatField;
    pdsGridDataParamsBEGIN_VENDOR_POSITION_DAYS_RSV: TAbmesFloatField;
    pdsGridDataParamsEND_VENDOR_POSITION_DAYS_RSV: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DECISION_DAYS_RSV: TAbmesFloatField;
    pdsGridDataParamsEND_DECISION_DAYS_RSV: TAbmesFloatField;
    cdsGridDataSTATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsGridDataCURRENCY_CODE: TAbmesFloatField;
    cdsGridDataCURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridDataVENDOR_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataVENDOR_PRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataVENDOR_PRIORITY_BK_COLOR: TAbmesFloatField;
    tbToggleQuantity: TToolBar;
    btnToggleVendorStuff: TSpeedButton;
    sepAfterToggleVendorStuff: TToolButton;
    btnWorkMeasure: TSpeedButton;
    btnAccountMeasure: TSpeedButton;
    sepBeforeDeliveryDealType: TToolButton;
    lblDeliveryDealType: TLabel;
    pnlSaleDealType: TPanel;
    edtDeliveryDealType: TDBEdit;
    actToggleVendorStuff: TAction;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataVENDOR_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataVENDOR_DOC_CODE: TAbmesFloatField;
    cdsGridDataVENDOR_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataVENDOR_PRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    actDeliveryDoc: TAction;
    actProductDoc: TAction;
    actVendorDoc: TAction;
    tlbVendorDoc: TToolBar;
    sepBeforeVendorDoc: TToolButton;
    lblVendorDoc: TLabel;
    btnVendorDoc: TToolButton;
    tlbDeliveryDoc: TToolBar;
    sepBeforeDeliveryDoc: TToolButton;
    lblDeliveryDoc: TLabel;
    btnDeliveryDoc: TToolButton;
    tlbProductDoc: TToolBar;
    sepBeforeProductDoc: TToolButton;
    lblProductDoc: TLabel;
    btnProductDoc: TToolButton;
    dsDeliveryDealTypes: TDataSource;
    cdsDeliveryDealTypes: TAbmesClientDataSet;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParams_DELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    btnEdit: TBitBtn;
    cdsGridDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDCD_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataDELIVERY_PROJECT_CODE: TAbmesFloatField;
    pcMain: TPageControl;
    tsDetailCommon: TTabSheet;
    grdDeliveryDialogs: TAbmesDBGrid;
    tsPrognosis: TTabSheet;
    grdPrognosis: TAbmesDBGrid;
    tsRealization: TTabSheet;
    grdRealization: TAbmesDBGrid;
    cdsGridDataPROGNOSIS_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataPROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataPROGNOSIS_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGridDataPROGNOSIS_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataPROGNOSIS_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridDataPROGNOSIS_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    cdsGridDataPROGNOSIS_ACC_TOTAL_LEASE_QTY: TAbmesFloatField;
    cdsGridDataIS_LEASE_QUANTITY_AGREED: TAbmesFloatField;
    cdsGridDataPROGNOSIS_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataPROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataPROGNOSIS_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridDataLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGridDataTOTAL_LEASE_QUANTITY: TAbmesFloatField;
    cdsGridDataTOTAL_ACCOUNT_LEASE_QUANTITY: TAbmesFloatField;
    cdsGridDataRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataRETURN_DATE: TAbmesSQLTimeStampField;
    cdsGridData_MIN_MEASURE_CODE: TAggregateField;
    cdsGridData_MAX_MEASURE_CODE: TAggregateField;
    cdsGridData_MIN_ACCOUNT_MEASURE_CODE: TAggregateField;
    cdsGridData_MAX_ACCOUNT_MEASURE_CODE: TAggregateField;
    cdsGridData_SUM_QUANTITY: TAggregateField;
    cdsGridData_SUM_ACCOUNT_QUANTITY: TAggregateField;
    cdsGridData_SUM_TOTAL_PRICE: TAggregateField;
    cdsGridData_SUM_PROGNOSIS_TOTAL_PRICE: TAggregateField;
    cdsGridData_SUM_PROGNOSIS_QUANTITY: TAggregateField;
    cdsGridData_MIN_PROGNOSIS_MEASURE_CODE: TAggregateField;
    cdsGridData_MAX_PROGNOSIS_MEASURE_CODE: TAggregateField;
    cdsGridData_MIN_PROGNOSIS_ACC_MEASURE_CODE: TAggregateField;
    cdsGridData_MAX_PROGNOSIS_ACC_MEASURE_CODE: TAggregateField;
    cdsGridData_SUM_PROGNOSIS_ACCOUNT_QUANTITY: TAggregateField;
    cdsGridData_DISPLAY_SUM_PROGNOSIS_QUANTITY: TAbmesFloatField;
    cdsGridData_DISPLAY_SUM_QUANTITY: TAbmesFloatField;
    cdsGridData_DISPLAY_SUM_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_PROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_PROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_DISPLAY_SUM_ACC_QTY: TAbmesFloatField;
    cdsGridData_DISPLAY_SUM_PROGNOSIS_ACC_QTY: TAbmesFloatField;
    cdsGridData_LEASE_DATE_INTERVAL: TAbmesSQLTimeStampField;
    cdsGridData_PROGNOSIS_PERIOD_MONTHS: TAbmesWideStringField;
    pdsGridDataParamsHAS_SALE: TAbmesFloatField;
    pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_NO: TAbmesFloatField;
    pdsGridDataParamsSTREAM_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsDELIVERY_TYPE_CODE: TAbmesFloatField;
    cdsParRelProductStatuses: TAbmesClientDataSet;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    cdsGridDataPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    pdsGridDataParamsPAR_REL_PRODUCT: TAbmesFloatField;
    pdsGridDataParamsPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParams_PAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    pdsGridDataParamsHAS_AGREED_QUANTITY: TAbmesFloatField;
    pdsGridDataParamsHAS_NOT_AGREED_QUANTITY: TAbmesFloatField;
    pdsGridDataParamsHAS_AGREED_SINGLE_PRICE: TAbmesFloatField;
    pdsGridDataParamsHAS_NOT_AGREED_SINGLE_PRICE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_PROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_PROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_PROGNOSIS_DAYS_RSV: TAbmesFloatField;
    pdsGridDataParamsEND_PROGNOSIS_DAYS_RSV: TAbmesFloatField;
    cdsGridDataBASE_ROLE_CODE: TAbmesFloatField;
    btnPrintDeliveryDialogs: TToolButton;
    actPrintDeliveryDialogs: TAction;
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataSTATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnWorkMeasureClick(Sender: TObject);
    procedure btnAccountMeasureClick(Sender: TObject);
    procedure actToggleVendorStuffExecute(Sender: TObject);
    procedure actDeliveryDocExecute(Sender: TObject);
    procedure actDeliveryDocUpdate(Sender: TObject);
    procedure actProductDocExecute(Sender: TObject);
    procedure actProductDocUpdate(Sender: TObject);
    procedure actVendorDocExecute(Sender: TObject);
    procedure actVendorDocUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cdsGridData_LEASE_DATE_INTERVALGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure pdsGridDataParamsDELIVERY_DEAL_TYPE_CODEChange(Sender: TField);
    procedure pdsGridDataParams_PAR_REL_PRODUCT_STATUS_NAMEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataREAL_PERIOD_DEVIATION_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataCOMPANY_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actToggleVendorStuffUpdate(Sender: TObject);
    procedure actPrintDeliveryDialogsUpdate(Sender: TObject);
    procedure actPrintDeliveryDialogsExecute(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FProdOrderBaseType: TBorderProdOrderBaseType;
    procedure UpdateVisibleColumns;
  protected
    function GetOriginalFormCaption: string; override;
    function ShowFilterForm: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    procedure DoBeforeShow; override;
    function GetInsertRecordEnabled: Boolean; override;
    function GetActiveGridReportTitle(AGrid: TAbmesDBGrid): string; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;

    class function CanUseDocs: Boolean; override;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProdOrderBaseType: TBorderProdOrderBaseType = pobtEmpty;
      AProductClass: TProductClass = pcNone): Boolean;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProdOrderBaseType: TBorderProdOrderBaseType = pobtEmpty;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  dMain, DateUtils, fDelivery, fDeliveryDialogsFilter, uDeliveryUtils,
  uColorConsts, uDeliveryDealTypes, uClientUtils, uDocClientUtils, uDocUtils,
  fDBDataForm, uPeriods, uCompanyClientUtils, uProductClientUtils,
  uParRelProducts, uBorderRelTypes, uUtils;

{$R *.dfm}
resourcestring
  STotalPriceOnPrognosisGrid = 'Перспективни Параметри на ОДД|Обща Стойност (%s)';
  STotalPriceOnRealizationGrid = 'Договорени Условия по Реализация на ОДД|Обща Стойност (%s)';

procedure TfmDeliveryDialogs.actDeliveryDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotDelivery,
    cdsGridDataDOC_BRANCH_CODE.AsInteger,
    cdsGridDataDOC_CODE.AsInteger);
end;

procedure TfmDeliveryDialogs.actDeliveryDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmDeliveryDialogs.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnVendorDoc.ImageIndex:= cdsGridDataVENDOR_HAS_DOCUMENTATION.AsInteger;
  btnDeliveryDoc.ImageIndex:= cdsGridDataHAS_DOCUMENTATION.AsInteger;
  btnProductDoc.ImageIndex:= cdsGridDataPRODUCT_HAS_DOCUMENTATION.AsInteger;
  sepAfterToggleVendorStuff.Visible:= (FProductClass = pcNormal);
  tbToggleQuantity.Visible:= (FProdOrderBaseType <> pobtOccCover);
end;

function TfmDeliveryDialogs.GetActiveGridReportTitle(AGrid: TAbmesDBGrid): string;
begin
  Result:= CleanFormCaption(Caption) + ' - ' + pcMain.ActivePage.Caption;
end;

procedure TfmDeliveryDialogs.actPrintDeliveryDialogsExecute(Sender: TObject);
begin
  inherited;

  if (pcMain.ActivePage = tsDetailCommon) then
    ActiveControl:= grdDeliveryDialogs;

  if (pcMain.ACtivePage = tsPrognosis) then
    ActiveControl:= grdPrognosis;

  if (pcMain.ACtivePage = tsRealization) then
    ActiveControl:= grdRealization;

  actPrintActiveGrid.Execute;
end;

procedure TfmDeliveryDialogs.actPrintDeliveryDialogsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmDeliveryDialogs.actProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotProduct,
    cdsGridDataPRODUCT_DOC_BRANCH_CODE.AsInteger,
    cdsGridDataPRODUCT_DOC_CODE.AsInteger);
end;

procedure TfmDeliveryDialogs.actProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmDeliveryDialogs.actToggleVendorStuffExecute(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmDeliveryDialogs.actToggleVendorStuffUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= (FProductClass = pcNormal);
end;

procedure TfmDeliveryDialogs.actVendorDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotCompany,
    cdsGridDataVENDOR_DOC_BRANCH_CODE.AsInteger,
    cdsGridDataVENDOR_DOC_CODE.AsInteger);
end;

procedure TfmDeliveryDialogs.actVendorDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmDeliveryDialogs.btnAccountMeasureClick(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmDeliveryDialogs.btnWorkMeasureClick(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

class function TfmDeliveryDialogs.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmDeliveryDialogs.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmDeliveryDialogs.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
  cdsGridData.Params.ParamByName('PROD_ORDER_BASE_TYPE_CODE').AsInteger:=
    ProdOrderBaseTypeToInt(FProdOrderBaseType);
end;

procedure TfmDeliveryDialogs.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  DeliveryDialogsCalcFields(DataSet);
end;

procedure TfmDeliveryDialogs.cdsGridDataCOMPANY_STATUS_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  CompanyStatusFieldGetText(Sender, cdsGridDataCOMPANY_STATUS_NAME, cdsGridDataBASE_ROLE_CODE, Text, DisplayText);
end;

procedure TfmDeliveryDialogs.cdsGridDataREAL_PERIOD_DEVIATION_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDeliveryDialogs.cdsGridDataSTATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull then
    Text:= ''
  else
    Text:= DeliveryDialogStatuses[Sender.AsInteger];
end;

procedure TfmDeliveryDialogs.cdsGridData_LEASE_DATE_INTERVALGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TfmDeliveryDialogs.CloseDataSets;
begin
  cdsDeliveryDealTypes.Close;
  inherited;
end;

procedure TfmDeliveryDialogs.DoBeforeShow;
var
  MsgParams: TStrings;
begin
  MsgParams:= uDeliveryUtils.CreateCommonMsgParams(FProdOrderBaseType, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    if (FProdOrderBaseType = pobtOccCover) then
      OccupationProductFixCommonMsgParams(MsgParams);

    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  MsgParams:=
    uParRelProducts.CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      brtVendor,
      pobtSaleCover,
      prpoProduct,
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False);
  try
    if (FProdOrderBaseType = pobtOccCover) then
      OccupationProductFixCommonMsgParams(MsgParams);

    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  if (FProdOrderBaseType = pobtSaleCover) then
    cdsGridData.Params.ParamByName('DELIVERY_DEAL_TYPE_CODE').AsInteger:= ddtDeliveryForSales
  else
    begin
      if (FProdOrderBaseType = pobtOccCover) then
        cdsGridData.Params.ParamByName('DELIVERY_DEAL_TYPE_CODE').AsInteger:= ddtDeliveryForOccupations
      else
        begin
          Assert(FProdOrderBaseType = pobtEnvCover);
          cdsGridData.Params.ParamByName('DELIVERY_DEAL_TYPE_CODE').AsInteger:= ddtDeliveryForEnvironment;
        end;
    end;

  inherited;
end;

procedure TfmDeliveryDialogs.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmDelivery;
  FilterFormClass:= TfmDeliveryDialogsFilter;
  pcMain.ActivePage:= tsDetailCommon;
  grdPrognosis.Columns[26].Title.Caption:= Format(STotalPriceOnPrognosisGrid, [LoginContext.BaseCurrencyAbbrev]);
  grdRealization.Columns[24].Title.Caption:= Format(STotalPriceOnRealizationGrid, [LoginContext.BaseCurrencyAbbrev]);
  RegisterDateFields(cdsGridData);

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridDataPROGNOSIS_SINGLE_PRICE,
      cdsGridDataPROGNOSIS_CURRENCY_ABBREV,
      cdsGridDataPROGNOSIS_TOTAL_PRICE,
      cdsGridData_SUM_PROGNOSIS_TOTAL_PRICE,
      cdsGridDataSINGLE_PRICE,
      cdsGridDataCURRENCY_ABBREV,
      cdsGridDataTOTAL_PRICE,
      cdsGridData_SUM_TOTAL_PRICE,
      cdsGridDataPROGNOSIS_ACCOUNT_SINGLE_PRICE]);
end;

procedure TfmDeliveryDialogs.FormShow(Sender: TObject);
var
  MsgParams: TStrings;
begin
  inherited;

  MsgParams:= uDeliveryUtils.CreateCommonMsgParams(FProdOrderBaseType, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;
end;

function TfmDeliveryDialogs.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

function TfmDeliveryDialogs.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmDeliveryDialogs.grdDataGetCellParams(Sender: TObject;
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

  if (Field = cdsGridDataVENDOR_PRIORITY_NO) then
    begin
      with cdsGridDataVENDOR_PRIORITY_BK_COLOR do
        if not IsNull then
          Background:= AsInteger;

      with cdsGridDataVENDOR_PRIORITY_COLOR do
        if not IsNull then
          AFont.Color:= AsInteger;
    end;

  if (Field = cdsGridDataCOMPANY_STATUS_CODE) then
    AFont.Color:= CompanyStatusColors[cdsGridDataCOMPANY_STATUS_CODE.AsInteger];

  if (Field = cdsGridDataSTATUS_CODE) then
    Background:= DeliveryDialogStatusColors[cdsGridDataSTATUS_CODE.AsInteger];
end;

procedure TfmDeliveryDialogs.Initialize;
begin
  inherited Initialize;

  FOriginalFormCaption:= actForm.Caption;

  if (FProdOrderBaseType = pobtOccCover) then
    begin
      HideGridColumns(grdDeliveryDialogs, [11, 12], 9);
      grdDeliveryDialogs.Columns[10].Width:= grdDeliveryDialogs.Columns[9].Width;

      pcMain.Pages[1].TabVisible:= False;

      HideGridColumns(grdRealization, [5, 6, 24], 3);
      grdRealization.Columns[4].Width:= grdRealization.Columns[3].Width;

      grdRealization.VTitleMargin:= 12;
    end;
end;

procedure TfmDeliveryDialogs.OpenDataSets;
begin
  inherited;
  cdsDeliveryDealTypes.Open;
end;

procedure TfmDeliveryDialogs.pdsGridDataParamsDELIVERY_DEAL_TYPE_CODEChange(
  Sender: TField);
begin
  inherited;
  pdsGridDataParamsHAS_SALE.AsInteger:= 0;
  pdsGridDataParamsSALE_BRANCH_CODE.Clear;
  pdsGridDataParamsSALE_NO.Clear;
end;

procedure TfmDeliveryDialogs.pdsGridDataParams_PAR_REL_PRODUCT_STATUS_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmDeliveryDialogs.SetDataParams(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TBorderProdOrderBaseType;
  AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProductClass:= AProductClass;
  FProdOrderBaseType:= AProdOrderBaseType;
end;

function TfmDeliveryDialogs.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmDelivery.ShowForm(dmDocClient, cdsGridData, EditMode, doNone, nil, FProductClass);
end;

function TfmDeliveryDialogs.ShowFilterForm: Boolean;
begin
  Result:= TfmDeliveryDialogsFilter.ShowForm(dmDocClient, pdsGridDataParams, emEdit, doNone, FProdOrderBaseType, FProductClass);
end;

class function TfmDeliveryDialogs.ShowForm(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AProdOrderBaseType: TBorderProdOrderBaseType;
  AProductClass: TProductClass): Boolean;
var
  f: TfmDeliveryDialogs;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProdOrderBaseType, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmDeliveryDialogs.UpdateVisibleColumns;
var
  ShowDeliveries: Boolean;
  ShowVendorStuff: Boolean;
  IsAccountMeasure: Boolean;
begin
  ShowVendorStuff:= btnToggleVendorStuff.Down;
  IsAccountMeasure:= btnAccountMeasure.Down;
  ShowDeliveries:= cdsGridData.IsEmpty or (pdsGridDataParamsDELIVERY_DEAL_TYPE_CODE.AsInteger in [ddtDeliveryForSales, ddtDeliveryForEnvironment, ddtImport]);

  grdData.Columns[3].Visible:= not ShowVendorStuff;
  grdData.Columns[4].Visible:= ShowVendorStuff;

  grdData.Columns[8].Visible:= not IsAccountMeasure;
  grdData.Columns[9].Visible:= not IsAccountMeasure;
  grdData.Columns[10].Visible:= not IsAccountMeasure;
  grdData.Columns[11].Visible:= not IsAccountMeasure;

  grdData.Columns[12].Visible:= IsAccountMeasure;
  grdData.Columns[13].Visible:= IsAccountMeasure;
  grdData.Columns[14].Visible:= IsAccountMeasure;
  grdData.Columns[15].Visible:= IsAccountMeasure;

  with grdDeliveryDialogs do
    begin
      Columns[9].Visible:=                                                  not ShowVendorStuff;
      Columns[10].Visible:=                                                     ShowVendorStuff;
    end;

  with grdPrognosis do
    begin
      Columns[3].Visible:=                                             not ShowVendorStuff;
      Columns[4].Visible:=                                                 ShowVendorStuff;

      Columns[8].Visible:=      ShowDeliveries and not IsAccountMeasure;
      Columns[9].Visible:=      ShowDeliveries and not IsAccountMeasure;
      Columns[10].Visible:=     ShowDeliveries and     IsAccountMeasure;
      Columns[11].Visible:=     ShowDeliveries and     IsAccountMeasure;
      Columns[12].Visible:=     ShowDeliveries;

      Columns[13].Visible:= not ShowDeliveries and not IsAccountMeasure;
      Columns[14].Visible:= not ShowDeliveries and not IsAccountMeasure;
      Columns[15].Visible:= not ShowDeliveries and     IsAccountMeasure;
      Columns[16].Visible:= not ShowDeliveries and     IsAccountMeasure;
      Columns[17].Visible:= not ShowDeliveries;
      Columns[18].Visible:= not ShowDeliveries;
      Columns[19].Visible:= not ShowDeliveries and not IsAccountMeasure;
      Columns[20].Visible:= not ShowDeliveries and     IsAccountMeasure;
      Columns[21].Visible:= not ShowDeliveries;

      Columns[22].Visible:=                        not IsAccountMeasure;
      Columns[23].Visible:=                            IsAccountMeasure;
    end;

  with grdRealization do
    begin
      Columns[3].Visible:=                                                  not ShowVendorStuff;
      Columns[4].Visible:=                                                      ShowVendorStuff;

      Columns[7].Visible:=      ShowDeliveries;
      Columns[8].Visible:=      ShowDeliveries and not IsAccountMeasure;
      Columns[9].Visible:=      ShowDeliveries and not IsAccountMeasure;
      Columns[10].Visible:=     ShowDeliveries and     IsAccountMeasure;
      Columns[11].Visible:=     ShowDeliveries and     IsAccountMeasure;

      Columns[12].Visible:= not ShowDeliveries;
      Columns[13].Visible:= not ShowDeliveries and not IsAccountMeasure;
      Columns[14].Visible:= not ShowDeliveries and not IsAccountMeasure;
      Columns[15].Visible:= not ShowDeliveries and     IsAccountMeasure;
      Columns[16].Visible:= not ShowDeliveries and     IsAccountMeasure;
      Columns[17].Visible:= not ShowDeliveries;
      Columns[18].Visible:= not ShowDeliveries;
      Columns[19].Visible:= not ShowDeliveries and not IsAccountMeasure;
      Columns[20].Visible:= not ShowDeliveries and     IsAccountMeasure;

      Columns[21].Visible:=                        not IsAccountMeasure;
      Columns[22].Visible:=                            IsAccountMeasure;
    end;
end;

procedure TfmDeliveryDialogs.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  InitializePriorityInterval(pdsGridDataParamsBEGIN_VENDOR_PRIORITY_CODE, pdsGridDataParamsEND_VENDOR_PRIORITY_CODE);
  InitializePriorityInterval(pdsGridDataParamsMIN_PRIORITY_CODE, pdsGridDataParamsMAX_PRIORITY_CODE);
end;

end.
