unit fSaleRequestGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, Buttons, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, StdCtrls, uClientTypes, Mask, uProducts, dDocClient,
  Menus;

type
  TfmSaleRequestGroups = class(TMasterDetailForm)
    pcDetail: TPageControl;
    cdsGridDataREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataREQUEST_NO: TAbmesFloatField;
    cdsGridDataSRG_STATUS_CODE: TAbmesFloatField;
    cdsGridDataSRG_ID: TAbmesWideStringField;
    cdsGridDataSRG_EMPLOYEE_FULL_NAME: TAbmesWideStringField;
    cdsGridDataCOMPANY_STATUS_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_STATUS_NAME: TAbmesWideStringField;
    cdsGridDataPRIORITY_NO: TAbmesFloatField;
    cdsGridDataCLIENT_COMPANY_NAME: TAbmesWideStringField;
    cdsGridDataHAS_MEDIATOR: TAbmesFloatField;
    cdsGridDataPROGNOSIS_SALE_COUNT: TAbmesFloatField;
    cdsGridDataREALIZATION_SALE_COUNT: TAbmesFloatField;
    cdsGridDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    cdsDetailSTATUS_CODE: TAbmesFloatField;
    cdsDetailASPECT_TYPE_ABBREV: TAbmesWideStringField;
    cdsDetailSALE_ORDER_ID: TAbmesWideStringField;
    cdsDetailPRODUCT_NAME: TAbmesWideStringField;
    tsDetailCommon: TTabSheet;
    pdsGridDataParamsREQUEST_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsREQUEST_NO: TAbmesFloatField;
    pdsGridDataParamsSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    grdSaleOrders: TAbmesDBGrid;
    pnlDetaillNavigatorAbovePageControl: TPanel;
    navDetailAbovePageControl: TDBColorNavigator;
    pdsGridDataParamsBEGIN_REQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_REQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_REQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_REQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsCLIENT_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsCOUNTRY_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsHAS_MEDIATOR_CODE: TAbmesFloatField;
    pdsGridDataParamsSRG_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    btnInsertDetailRecord: TBitBtn;
    btnEditDetailRecord: TBitBtn;
    cdsGridDataCLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDetailSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDetailSALE_OBJECT_CODE: TAbmesFloatField;
    cdsDetailIS_ANNULED: TAbmesFloatField;
    cdsDetailIS_FINISHED: TAbmesFloatField;
    cdsDetailPLAN_PERIOD_DAYS: TAbmesFloatField;
    cdsDetailREAL_PERIOD_DAYS: TAbmesFloatField;
    cdsDetailOFFER_SEND_DAYS_RSV: TAbmesFloatField;
    cdsDetailOFFER_ANSWER_DAYS_RSV: TAbmesFloatField;
    cdsDetailDECISION_DAYS_RSV: TAbmesFloatField;
    cdsDetailDECISION_TYPE_CODE: TAbmesFloatField;
    cdsDetailDECISION_TYPE_ABBREV: TAbmesWideStringField;
    tsPrognosis: TTabSheet;
    grdPrognosis: TAbmesDBGrid;
    cdsDetailPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDetailPROGNOSIS_END_DATE: TAbmesSQLTimeStampField;
    cdsDetailQUANTITY: TAbmesFloatField;
    cdsDetailMEASURE_CODE: TAbmesFloatField;
    cdsDetailMEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDetailACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailIS_QUANTITY_AGREED: TAbmesFloatField;
    cdsDetailSINGLE_PRICE: TAbmesFloatField;
    cdsDetailCURRENCY_CODE: TAbmesFloatField;
    cdsDetailCURRENCY_ABBREV: TAbmesWideStringField;
    cdsDetailIS_SINGLE_PRICE_AGREED: TAbmesFloatField;
    cdsDetailTOTAL_PRICE: TAbmesFloatField;
    cdsDetail_PROGNOSIS_PERIOD_MONTHS: TAbmesWideStringField;
    tsRealization: TTabSheet;
    grdRealization: TAbmesDBGrid;
    cdsDetailPROGNOSIS_QUANTITY: TAbmesFloatField;
    cdsDetailPROGNOSIS_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDetailPROGNOSIS_SINGLE_PRICE: TAbmesFloatField;
    cdsDetailPROGNOSIS_TOTAL_PRICE: TAbmesFloatField;
    cdsDetailRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDetailSALE_ID: TAbmesWideStringField;
    cdsDetailCOMMON_STATUS_CODE: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataCLIENT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataCLIENT_DOC_CODE: TAbmesFloatField;
    cdsGridDataCLIENT_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsDetailPROGNOSIS_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDetailPROGNOSIS_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDetailIS_LEASE_QUANTITY_AGREED: TAbmesFloatField;
    cdsDetailDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailDOC_CODE: TAbmesFloatField;
    cdsDetailHAS_DOCUMENTATION: TAbmesFloatField;
    cdsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    pnlGridButtons: TPanel;
    btnInsertRecord: TBitBtn;
    btnEditRecord: TBitBtn;
    tlbClientDoc: TToolBar;
    sepBeforeClientDoc: TToolButton;
    lblClientDoc: TLabel;
    btnClientDoc: TToolButton;
    actClientDoc: TAction;
    actDoc: TAction;
    tlbDoc: TToolBar;
    sepBeforeDoc: TToolButton;
    lblDoc: TLabel;
    btnDoc: TToolButton;
    tlbSaleDoc: TToolBar;
    sepBeforeSaleDoc: TToolButton;
    lblSaleDoc: TLabel;
    btnSaleDoc: TToolButton;
    tlbProductDoc: TToolBar;
    sepBeforeProductDoc: TToolButton;
    lblProductDoc: TLabel;
    btnProductDoc: TToolButton;
    actSaleDoc: TAction;
    actProductDoc: TAction;
    cdsGridDataSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDetail_LEASE_DATE_INTERVAL: TAbmesSQLTimeStampField;
    cdsDetailPROGNOSIS_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDetailLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDetailLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDetailPROGNOSIS_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    cdsDetailTOTAL_LEASE_QUANTITY: TAbmesFloatField;
    cdsDetail_SUM_PROGNOSIS_TOTAL_PRICE: TAggregateField;
    cdsDetail_MIN_MEASURE_CODE: TAggregateField;
    cdsDetail_MAX_MEASURE_CODE: TAggregateField;
    cdsDetail_SUM_PROGNOSIS_QUANTITY: TAggregateField;
    cdsDetail_SUM_TOTAL_PRICE: TAggregateField;
    cdsDetail_SUM_QUANTITY: TAggregateField;
    cdsDetail_DISPLAY_SUM_PROGNOSIS_QUANTITY: TAbmesFloatField;
    cdsDetail_DISPLAY_SUM_QUANTITY: TAbmesFloatField;
    cdsDetail_MEASURE_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataPRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsDetailREAL_PERIOD_DEVIATION_PERCENT: TAbmesFloatField;
    cdsDetailASPECT_TYPE_CODE: TAbmesFloatField;
    cdsDetailPROGNOSIS_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsDetailACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    tbToggleQuantity: TToolBar;
    btnWorkMeasure: TSpeedButton;
    btnAccountMeasure: TSpeedButton;
    pnlDetailTitle: TPanel;
    cdsDetailPROGNOSIS_ACC_TOTAL_LEASE_QTY: TAbmesFloatField;
    cdsDetailTOTAL_ACCOUNT_LEASE_QUANTITY: TAbmesFloatField;
    cdsDetailPROGNOSIS_MEASURE_CODE: TAbmesFloatField;
    cdsDetailPROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailPROGNOSIS_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsDetailPROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailPROGNOSIS_CURRENCY_CODE: TAbmesFloatField;
    cdsDetailPROGNOSIS_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsDetail_MIN_PROGNOSIS_MEASURE_CODE: TAggregateField;
    cdsDetail_MAX_PROGNOSIS_MEASURE_CODE: TAggregateField;
    cdsDetail_MIN_ACCOUNT_MEASURE_CODE: TAggregateField;
    cdsDetail_MAX_ACCOUNT_MEASURE_CODE: TAggregateField;
    cdsDetail_MIN_PROGNOSIS_ACC_MEASURE_CODE: TAggregateField;
    cdsDetail_MAX_PROGNOSIS_ACC_MEASURE_CODE: TAggregateField;
    cdsDetail_SUM_PROGNOSIS_ACCOUNT_QUANTITY: TAggregateField;
    cdsDetail_SUM_ACCOUNT_QUANTITY: TAggregateField;
    cdsDetail_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetail_PROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetail_PROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetail_DISPLAY_SUM_ACC_QTY: TAbmesFloatField;
    cdsDetail_DISPLAY_SUM_PROGNOSIS_ACC_QTY: TAbmesFloatField;
    pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField;
    pnlShowAnnuledLines: TPanel;
    btnShowAnnuledLines: TSpeedButton;
    cdsGridDataCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField;
    cdsDetailCLIENT_REQUEST_NO: TAbmesWideStringField;
    cdsDetailCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    actToggleClientStuff: TAction;
    btnToggleClientStuff: TSpeedButton;
    cdsDetailSALE_PRIORITY_NO: TAbmesFloatField;
    cdsDetailSALE_PRIORITY_COLOR: TAbmesFloatField;
    cdsDetailSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridDataCLIENT_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsSTREAM_TYPE_CODE: TAbmesFloatField;
    cdsGridDataSTREAM_TYPE_CODE: TAbmesFloatField;
    cdsDetailREQUEST_LINE_NO: TAbmesFloatField;
    cdsDetailREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsDetailREQUEST_NO: TAbmesFloatField;
    cdsGridDataBORDER_REL_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsREPORT_TAG: TAbmesFloatField;
    cdsGridDataIS_ACTIVATED_BY_CLIENT: TAbmesFloatField;
    pdsGridDataParamsIS_ACTIVATED_BY_CLIENT: TAbmesFloatField;
    cdsGridDataBASE_ROLE_CODE: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsDetailPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    cdsDetailRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField;
    procedure cdsGridDataREALIZATION_SALE_COUNTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataPROGNOSIS_SALE_COUNTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure grdSaleOrdersDblClick(Sender: TObject);
    procedure grdSaleOrdersDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure cdsDetailCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cdsDetailCOMMON_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actClientDocExecute(Sender: TObject);
    procedure actClientDocUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
    procedure actSaleDocExecute(Sender: TObject);
    procedure actSaleDocUpdate(Sender: TObject);
    procedure actProductDocExecute(Sender: TObject);
    procedure actProductDocUpdate(Sender: TObject);
    procedure cdsGridDataAfterScroll(DataSet: TDataSet);
    procedure cdsDetail_LEASE_DATE_INTERVALGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSRG_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actEditRecordUpdate(Sender: TObject);
    procedure cdsDetailREAL_PERIOD_DEVIATION_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure btnWorkMeasureClick(Sender: TObject);
    procedure btnAccountMeasureClick(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdSaleOrdersGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsDetailSTATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btnShowAnnuledLinesClick(Sender: TObject);
    procedure actInsertRecordExecute(Sender: TObject);
    procedure actToggleClientStuffExecute(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataCOMPANY_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    procedure UpdateVisibleColumns;
  protected
    function GetOriginalFormCaption: string; override;
    function ShowFilterForm: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean; override;
    class function CanUseDocs: Boolean; override;
    function GetInsertDetailRecordEnabled: Boolean; override;
  public
    procedure Initialize; override;

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
  dMain, fSaleRequestGroup, fSaleRequestGroupsFilter, fSaleOrder,
  uClientUtils, fEditForm, DateUtils, uProductClientUtils, uDocUtils, uSaleDealTypes,
  fDBDataForm, uPeriods, fBaseForm, uUserActivityConsts, uSalesClientUtils,
  uColorConsts, rSaleRequestGroups, uCompanyClientUtils, Math;

{$R *.dfm}

resourcestring
  SAnnuledAbbrev = 'Ан';
  SFinishedAbbrev = 'Пк';
  STotalPricePrognosisGrid = 'Перспективни Параметри на ОДК|Обща Стойност (%s)';
  STotalPriceRealizationGrid = 'Договорени Условия по Реализация на ОДК|Обща Стойност (%s)';
  SSRGReadOnlyCaption = 'Преглед на ПДК...';
  SSRGEditCaption = 'Редактиране на ПДК...';

{ TfmSaleRequestGroups }

procedure TfmSaleRequestGroups.actClientDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotCompany,
    cdsGridDataCLIENT_DOC_BRANCH_CODE.AsInteger,
    cdsGridDataCLIENT_DOC_CODE.AsInteger);
end;

procedure TfmSaleRequestGroups.actClientDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmSaleRequestGroups.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotSaleRequestGroup,
    cdsGridDataDOC_BRANCH_CODE.AsInteger,
    cdsGridDataDOC_CODE.AsInteger);
end;

procedure TfmSaleRequestGroups.actDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmSaleRequestGroups.actEditRecordUpdate(Sender: TObject);
begin
  // do not call inherited

  (Sender as TAction).Enabled:= GetEditRecordEnabled;

  if GetGridRecordReadOnly then
    (Sender as TAction).Caption:= SSRGReadOnlyCaption
  else
    (Sender as TAction).Caption:= SSRGEditCaption;
end;

procedure TfmSaleRequestGroups.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnClientDoc.ImageIndex:= cdsGridDataCLIENT_HAS_DOCUMENTATION.AsInteger;
  btnDoc.ImageIndex:= cdsGridDataHAS_DOCUMENTATION.AsInteger;
  btnSaleDoc.ImageIndex:= cdsDetailHAS_DOCUMENTATION.AsInteger;
  btnProductDoc.ImageIndex:= cdsDetailPRODUCT_HAS_DOCUMENTATION.AsInteger;
end;

procedure TfmSaleRequestGroups.actInsertRecordExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaNewSaleRequestGroup);
  inherited;
end;

procedure TfmSaleRequestGroups.actPrintExecute(Sender: TObject);
var
  OldAfterScroll: TDataSetNotifyEvent;
begin
  // force calc fields
  pdsGridDataParams.First;
  pdsGridDataParams.Last;

  OldAfterScroll:= cdsGridData.AfterScroll;
  cdsGridData.AfterScroll:= nil;
  try
    inherited;
  finally
    cdsGridData.AfterScroll:= OldAfterScroll;
  end;
end;

procedure TfmSaleRequestGroups.actProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotProduct,
    cdsDetailPRODUCT_DOC_BRANCH_CODE.AsInteger,
    cdsDetailPRODUCT_DOC_CODE.AsInteger);
end;

procedure TfmSaleRequestGroups.actProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmSaleRequestGroups.actSaleDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotSale,
    cdsDetailDOC_BRANCH_CODE.AsInteger,
    cdsDetailDOC_CODE.AsInteger);
end;

procedure TfmSaleRequestGroups.actSaleDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmSaleRequestGroups.actToggleClientStuffExecute(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmSaleRequestGroups.btnAccountMeasureClick(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmSaleRequestGroups.btnShowAnnuledLinesClick(Sender: TObject);
begin
  inherited;
  cdsDetail.Filtered:= not btnShowAnnuledLines.Down;
end;

procedure TfmSaleRequestGroups.btnWorkMeasureClick(Sender: TObject);
begin
  inherited;
  UpdateVisibleColumns;
end;

class function TfmSaleRequestGroups.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmSaleRequestGroups.cdsDetailCalcFields(DataSet: TDataSet);
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

procedure TfmSaleRequestGroups.cdsDetailCOMMON_STATUS_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= ProductCommonStatusAbbrevs[Sender.AsInteger];
end;

procedure TfmSaleRequestGroups.cdsDetailREAL_PERIOD_DEVIATION_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleRequestGroups.cdsDetailSTATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= SaleOrderStatuses[Sender.AsInteger];
end;

procedure TfmSaleRequestGroups.cdsDetail_LEASE_DATE_INTERVALGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    try
      Text:= dmMain.GetDateIntervalAsString(
        Sender.AsDateTime,
        IncDate(Sender.AsDateTime, GetPeriodValue(cdsDetailLEASE_DATE_UNIT_CODE.AsInteger), cdsDetailLEASE_DATE_UNIT_QTY.AsInteger)
      );
    except
      Text:= '';
    end;
end;

procedure TfmSaleRequestGroups.cdsGridDataAfterScroll(DataSet: TDataSet);
begin
  inherited;
  UpdateVisibleColumns;
end;

procedure TfmSaleRequestGroups.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmSaleRequestGroups.cdsGridDataCOMPANY_STATUS_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  CompanyStatusFieldGetText(Sender, cdsGridDataCOMPANY_STATUS_NAME, cdsGridDataBASE_ROLE_CODE, Text, DisplayText);
end;

procedure TfmSaleRequestGroups.cdsGridDataPROGNOSIS_SALE_COUNTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleRequestGroups.cdsGridDataREALIZATION_SALE_COUNTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleRequestGroups.cdsGridDataSRG_STATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= SaleOrderStatuses[Sender.AsInteger];
end;

procedure TfmSaleRequestGroups.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmSaleRequestGroupsFilter;
  EditFormClass:= TfmSaleRequestGroup;
  ReportClass:= TrptSaleRequestGroups;
  DetailEditFormClass:= TfmSaleOrder;

  grdPrognosis.Columns[27].Title.Caption:= Format(STotalPricePrognosisGrid, [LoginContext.BaseCurrencyAbbrev]);
  grdRealization.Columns[26].Title.Caption:= Format(STotalPriceRealizationGrid, [LoginContext.BaseCurrencyAbbrev]);

  RegisterDateFields(cdsGridData);
  RegisterDateFields(cdsDetail);

  RegisterFieldsTextVisibility(
    IsSalePriceVisible,
    [ cdsDetailPROGNOSIS_SINGLE_PRICE,
      cdsDetailPROGNOSIS_CURRENCY_ABBREV,
      cdsDetailIS_SINGLE_PRICE_AGREED,
      cdsDetailPROGNOSIS_TOTAL_PRICE,
      cdsDetail_SUM_PROGNOSIS_TOTAL_PRICE,
      cdsDetailSINGLE_PRICE,
      cdsDetailCURRENCY_ABBREV,
      cdsDetailTOTAL_PRICE,
      cdsDetail_SUM_TOTAL_PRICE]);
end;

procedure TfmSaleRequestGroups.FormShow(Sender: TObject);
begin
  inherited;
  pcDetail.ActivePage:= tsDetailCommon;
  cdsDetail.Filtered:= not btnShowAnnuledLines.Down;
  UpdateVisibleColumns;
end;

function TfmSaleRequestGroups.GetInsertDetailRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertDetailRecordEnabled and
    InRange(cdsGridDataSRG_STATUS_CODE.AsInteger, 1, 9);
end;

function TfmSaleRequestGroups.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmSaleRequestGroups.grdDataGetCellParams(Sender: TObject;
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

  if (Field = cdsGridDataCOMPANY_STATUS_CODE) then
    AFont.Color:= CompanyStatusColors[cdsGridDataCOMPANY_STATUS_CODE.AsInteger];

  if (Field = cdsGridDataSRG_STATUS_CODE) then
    Background:= SaleOrderStatusColors[cdsGridDataSRG_STATUS_CODE.AsInteger];
end;

procedure TfmSaleRequestGroups.grdSaleOrdersDblClick(Sender: TObject);
begin
  inherited;
  cdsDetail.Locate('SALE_ORDER_ID', (Sender as TAbmesDBGrid).DataSource.DataSet.FieldByName('SALE_ORDER_ID').AsString, []);
  grdDetailDblClick(Sender);
end;

procedure TfmSaleRequestGroups.grdSaleOrdersDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  grdDetailDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmSaleRequestGroups.grdSaleOrdersGetCellParams(Sender: TObject;
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

  if (Field = cdsDetailSALE_PRIORITY_NO) then
    begin
      with cdsDetailSALE_PRIORITY_BACKGROUND_COLOR do
        if not IsNull then
          Background:= AsInteger;

      with cdsDetailSALE_PRIORITY_COLOR do
        if not IsNull then
          AFont.Color:= AsInteger;
    end;

  if (Field = cdsDetailSTATUS_CODE) then
    Background:= SaleOrderStatusColors[cdsDetailSTATUS_CODE.AsInteger];
end;

procedure TfmSaleRequestGroups.Initialize;
var
  MsgParams: TStrings;
begin
  inherited;

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmSaleRequestGroups.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParamsREPORT_TAG.AsInteger:= Ord(btnToggleClientStuff.Down) + 1;
  pdsGridDataParams_PRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmSaleRequestGroups.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FProductClass:= AProductClass;
end;

function TfmSaleRequestGroups.ShowDetailEditForm(AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin): Boolean;
begin
  if (AEditMode = emInsert) then
    Result:= TfmSaleOrder.ShowForm(dmDocClient, cdsGridData, AEditMode, doDataset, FProductClass)
  else
    Result:= TfmSaleOrder.ShowForm(dmDocClient, cdsDetail, AEditMode, doNone, FProductClass);
end;

function TfmSaleRequestGroups.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmSaleRequestGroup.ShowForm(dmDocClient, cdsGridData, AEditMode, doNone, FProductClass);
end;

function TfmSaleRequestGroups.ShowFilterForm: Boolean;
begin
  Result:= TfmSaleRequestGroupsFilter.ShowForm(dmDocClient, pdsGridDataParams, emEdit, doNone, FProductClass);
end;

class function TfmSaleRequestGroups.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass): Boolean;
var
  f: TfmSaleRequestGroups;
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

procedure TfmSaleRequestGroups.UpdateVisibleColumns;
var
  ShowSales: Boolean;
  ShowClientStuff: Boolean;
  IsAccountMeasure: Boolean;
  
begin
  ShowSales:=
    cdsGridData.IsEmpty or (cdsGridDataSALE_DEAL_TYPE_CODE.AsInteger in [sdtSale, sdtExport]);

  ShowClientStuff:= btnToggleClientStuff.Down;
  IsAccountMeasure:= btnAccountMeasure.Down;

  with grdData do
    begin
      Columns[2].Visible:=                                             not ShowClientStuff;
      Columns[3].Visible:=                                                 ShowClientStuff;
    end;

  with grdSaleOrders do
    begin
      Columns[2].Visible:=                                             not ShowClientStuff;
      Columns[3].Visible:=                                                 ShowClientStuff;
      Columns[4].Visible:=                                             not ShowClientStuff or (FProductClass = pcFinancial);
      Columns[5].Visible:=                                                 ShowClientStuff and (FProductClass = pcNormal);
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

procedure TfmSaleRequestGroups.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  InitializePriorityInterval(pdsGridDataParamsBEGIN_PRIORITY_CODE, pdsGridDataParamsEND_PRIORITY_CODE);
end;

end.
