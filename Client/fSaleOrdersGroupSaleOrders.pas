unit fSaleOrdersGroupSaleOrders;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fMasterDetailForm, ExtCtrls, ImgList, ParamDataSet, ActnList,
  DBCtrls, ColorNavigator, StdCtrls, Db, DBClient, AbmesClientDataSet,
  Buttons, GridsEh, DBGridEh, AbmesDBGrid, AbmesFields, Mask, Menus,
  JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton, JvComponentBase,
  DBGridEhGrouping, uClientTypes;

type
  TfmSaleOrdersGroupSaleOrders = class(TMasterDetailForm)
    cdsGridDataSALE_ORDER_IDENTIFICATION: TAbmesWideStringField;
    cdsGridDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsGridDataSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataSALE_GROUP_IDENTIFICATION: TAbmesWideStringField;
    cdsGridDataCLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataCLIENT_COMPANY_NAME: TAbmesWideStringField;                                                        
    cdsGridDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataIS_ANNULED: TAbmesFloatField;
    cdsDetailREQUEST_LINE_NO: TAbmesFloatField;
    cdsDetailSALE_IDENTIFICATION: TAbmesWideStringField;
    cdsDetailPRODUCT_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_NO: TAbmesFloatField;
    cdsDetailPRODUCT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailCL_OFFER_QUANTITY: TAbmesFloatField;
    cdsDetailQUANTITY: TAbmesFloatField;
    cdsDetailIS_ANNULED: TAbmesFloatField;
    cdsGridDataREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataREQUEST_NO: TAbmesFloatField;
    cdsDetailSALE_TYPE_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsREQUEST_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsREQUEST_NO: TAbmesFloatField;
    pdsGridDataParamsCLIENT_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_IN_SALE_GROUP: TAbmesFloatField;
    pdsGridDataParamsIS_NOT_IN_SALE_GROUP: TAbmesFloatField;
    pdsGridDataParamsSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_FINISHED: TAbmesFloatField;
    pdsGridDataParamsIS_NOT_FINISHED: TAbmesFloatField;
    pdsGridDataParamsIS_ANNULED: TAbmesFloatField;
    pdsGridDataParamsIS_NOT_ANNULED: TAbmesFloatField;
    cdsGridDataSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsDetailREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsDetailREQUEST_NO: TAbmesFloatField;
    cdsGridDataIS_DONE: TAbmesFloatField;
    cdsGridDataANNUL_COEF: TAbmesFloatField;
    btnShowAnnuledLines: TSpeedButton;
    cdsDetailPRODUCT_NAME: TAbmesWideStringField;
    cdsDetailCOMPANY_PRODUCT_NAME: TAbmesWideStringField;
    cdsDetailCLIENT_REQUEST_NO: TAbmesWideStringField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    pdsGridDataParamsREQUEST_REGISTER_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsREQUEST_REGISTER_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsCL_OFFER_RECEIVE_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsCL_OFFER_RECEIVE_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsRECEIVE_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsRECEIVE_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsREAL_RECEIVE_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsREAL_RECEIVE_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsMIN_RECEIVE_DATE_RESERVE_DAYS: TAbmesFloatField;
    pdsGridDataParamsMAX_RECEIVE_DATE_RESERVE_DAYS: TAbmesFloatField;
    pdsGridDataParamsCLIENT_BEGIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsCLIENT_END_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsGridDataSHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCL_OFFER_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataTOTAL_PRICE: TAbmesFloatField;
    cdsGridDataREAL_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataTOTAL_PRICE_DIFF: TAbmesFloatField;
    cdsGridData_TOTAL_CL_OFFER_TOTAL_PRICE: TAggregateField;
    cdsGridData_TOTAL_TOTAL_PRICE: TAggregateField;
    cdsGridData_TOTAL_REAL_TOTAL_PRICE: TAggregateField;
    cdsGridData_TOTAL_TOTAL_PRICE_DIFF: TAggregateField;
    cdsGridDataCLIENT_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataCLIENT_PRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataCLIENT_PRIORITY_BCKG_COLOR: TAbmesFloatField;
    cdsGridDataRECEIVE_DATE_RESERVE_DAYS: TAbmesFloatField;
    cdsDetailPRODUCT_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailSHIPPED_QUANTITY: TAbmesFloatField;
    cdsDetailQUANTITY_DIFF: TAbmesFloatField;
    cdsDetailACC_CL_OFFER_QUANTITY: TAbmesFloatField;
    cdsDetailACC_QUANTITY: TAbmesFloatField;
    cdsDetailACC_SHIPPED_QUANTITY: TAbmesFloatField;
    cdsDetailACC_QUANTITY_DIFF: TAbmesFloatField;
    cdsDetailCL_OFFER_TOTAL_PRICE: TAbmesFloatField;
    cdsDetailTOTAL_PRICE: TAbmesFloatField;
    cdsDetailREAL_TOTAL_PRICE: TAbmesFloatField;
    cdsDetailTOTAL_PRICE_DIFF: TAbmesFloatField;
    tlbDetailToggles: TToolBar;
    btnShowWorkQuantities: TToolButton;
    btnShowAccountQuantities: TToolButton;
    actShowWorkQuantities: TAction;
    actShowAccountQuantities: TAction;
    tlbDetailDocs: TToolBar;
    sepSaleDocs: TToolButton;
    pnlSaleDocs: TPanel;
    btnSaleDocs: TToolButton;
    sepBeforeProductDocs: TToolButton;
    pnlProductDocs: TPanel;
    btnProductDocs: TToolButton;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataCLIENT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataCLIENT_DOC_CODE: TAbmesFloatField;
    cdsGridDataCLIENT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsDetailDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailDOC_CODE: TAbmesFloatField;
    cdsDetailHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    tlbMasterDocs: TToolBar;
    sepSaleRequestGroupDocs: TToolButton;
    pnlSaleRequestGroupDocs: TPanel;
    btnSaleRequestGroupDocs: TToolButton;
    sepClientDocs: TToolButton;
    pnlClientDocs: TPanel;
    btnClientDocs: TToolButton;
    lblCurrency: TLabel;
    cdsSaleDealTypes: TAbmesClientDataSet;
    cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_SALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    edtSaleDealType: TDBEdit;
    lblSaleDealType: TLabel;
    btnToggleDetailClientOffer: TSpeedButton;
    sepShowWorkQuantities: TToolButton;
    actToggleDetailClientOffer: TAction;
    cdsDetailCL_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDetailCL_OFFER_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDetailCL_OFFER_LEASE_RESOURCE_QTY: TAbmesFloatField;
    cdsDetailCL_OFFER_LEASE_RESOURCE_A_QTY: TAbmesFloatField;
    cdsDetailLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDetailLEASE_RESOURCE_QTY: TAbmesFloatField;
    cdsDetailLEASE_RESOURCE_ACC_QTY: TAbmesFloatField;
    cdsDetailREAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDetailREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDetailREAL_LEASE_RESOURCE_QTY: TAbmesFloatField;
    cdsDetailREAL_LEASE_RESOURCE_ACC_QTY: TAbmesFloatField;
    cdsDetailLEASE_RESOURCE_QTY_DIFF: TAbmesFloatField;
    cdsDetailLEASE_RESOURCE_ACC_QTY_DIFF: TAbmesFloatField;
    cdsGridDataCL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataRETURN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataIMPORT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSTATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField;
    cdsGridDataCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField;
    actShowClientNos: TAction;
    tlbMasterToggles: TToolBar;
    btnShowMasterClientRequestGroupNo: TToolButton;
    cdsDetail_SALE_IDENTIFICATION: TAbmesWideStringField;
    cdsDetail_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataREPORT_TAG: TAbmesFloatField;
    pdsGridDataParamsSALE_GROUP_CODE: TAbmesFloatField;
    actStoreRequest: TAction;
    cdsGridDataSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSTORE_REQUEST_CODE: TAbmesFloatField;
    pnlMasterBottomButtons: TPanel;
    btnStoreRequest: TBitBtn;
    btnInsertRecord: TBitBtn;
    pdsGridDataParamsSRG_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsGridDataIS_STORE_REQUEST_OTCH: TAbmesFloatField;
    cdsGridDataINVOICE_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsDetailQUANTITY_TAKEN_FROM_STORE: TAbmesFloatField;
    cdsDetailACC_QUANTITY_TAKEN_FROM_STORE: TAbmesFloatField;
    cdsDetailTAKEN_FROM_STORE_PRICE: TAbmesFloatField;
    btnToggleShippedAndTakenFromStoreQuantity: TSpeedButton;
    actToggleShippedAndTakenFromStoreQuantity: TAction;
    sepToggleShippedAndTakenFromStoreQuantity: TToolButton;
    cdsGridDataRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnShowAnnuledLinesClick(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdDetailGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actShowWorkQuantitiesExecute(Sender: TObject);
    procedure actShowAccountQuantitiesExecute(Sender: TObject);
    procedure btnProductDocsClick(Sender: TObject);
    procedure btnSaleRequestGroupDocsClick(Sender: TObject);
    procedure btnClientDocsClick(Sender: TObject);
    procedure btnSaleDocsClick(Sender: TObject);
    procedure actToggleDetailClientOfferExecute(Sender: TObject);
    procedure cdsGridDataCL_OFFER_RECEIVE_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataRECEIVE_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSHIPMENT_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actInsertRecordExecute(Sender: TObject);
    procedure cdsGridDataSTATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actShowClientNosExecute(Sender: TObject);
    procedure cdsDetailCalcFields(DataSet: TDataSet);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure actPrintDetailsExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure actStoreRequestExecute(Sender: TObject);
    procedure actStoreRequestUpdate(Sender: TObject);
    procedure cdsGridDataINVOICE_STATE_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actToggleShippedAndTakenFromStoreQuantityExecute(Sender: TObject);
  private
    procedure SetMasterColumns;
    procedure SetDetailColumns;
    function GetBeginDateFieldText(BeginDateField, EndDateField: TAbmesSQLTimeStampField): string;
  protected
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain,  fSaleOrdersGroupSaleOrdersFilter, uTreeClientUtils,
  fGroupSale, fEditForm, rGroupSales, uDocUtils, uColorConsts,
  uSaleDealTypes, JclStrings, StrUtils, JclDateTime, uUserActivityConsts, uSalesClientUtils,
  rGroupSalesDetail, uClientUtils, uSalesCommon, fStoreRequest,
  uClientStoreUtils, uDealTypes, Math;

{$R *.DFM}

resourcestring
  SDate = 'Дата';
  SDateInterval = 'ВрмИнт';

procedure TfmSaleOrdersGroupSaleOrders.FormCreate(Sender: TObject);
begin
  inherited;

  ReportClass:= TrptGroupSales;
  DetailsReportClass:= TrptGroupSalesDetail;
  FilterFormClass:= TfmSaleOrdersGroupSaleOrdersFilter;
  EditFormClass:= TfmGroupSale;
  DetailEditFormClass:= TfmGroupSale;

  lblCurrency.Caption:=
    FormatBaseCurrencyAbbrevString(lblCurrency.Caption);

  RegisterDateFields(cdsGridData);

  RegisterFieldsTextVisibility(
    IsSalePriceVisible,
    [ cdsGridDataCL_OFFER_TOTAL_PRICE,
      cdsGridData_TOTAL_CL_OFFER_TOTAL_PRICE,
      cdsGridDataTOTAL_PRICE,
      cdsGridData_TOTAL_TOTAL_PRICE,
      cdsGridDataREAL_TOTAL_PRICE,
      cdsGridData_TOTAL_REAL_TOTAL_PRICE,
      cdsGridDataTOTAL_PRICE_DIFF,
      cdsGridData_TOTAL_TOTAL_PRICE_DIFF,
      cdsDetailTOTAL_PRICE,
      cdsDetailREAL_TOTAL_PRICE,
      cdsDetailTOTAL_PRICE_DIFF,
      cdsDetailCL_OFFER_TOTAL_PRICE]);
end;

function TfmSaleOrdersGroupSaleOrders.GetBeginDateFieldText(BeginDateField,
  EndDateField: TAbmesSQLTimeStampField): string;
begin
  if BeginDateField.IsNull then
    Result:= ''
  else
    begin
      if (pdsGridDataParamsSALE_DEAL_TYPE_CODE.AsInteger = sdtLease) then
        Result:= dmMain.GetDateIntervalAsShortString(BeginDateField.AsDateTime, EndDateField.AsDateTime)
      else
        Result:= JclDateTime.FormatDateTime(BeginDateField.DisplayFormat, BeginDateField.AsDateTime);
    end;
end;

procedure TfmSaleOrdersGroupSaleOrders.grdDataGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if cdsGridData.Bof and cdsGridData.Eof then
    Exit;

  if (Column.Field = cdsGridDataSTATUS_CODE) then
    Background:= SaleOrderStatusColors[cdsGridDataSTATUS_CODE.AsInteger];

  if (Column.Field = cdsGridDataCLIENT_PRIORITY_NO) then
    begin
      if not cdsGridDataCLIENT_PRIORITY_COLOR.IsNull then
        AFont.Color:= cdsGridDataCLIENT_PRIORITY_COLOR.AsInteger;

      if not cdsGridDataCLIENT_PRIORITY_BCKG_COLOR.IsNull then
        Background:= cdsGridDataCLIENT_PRIORITY_BCKG_COLOR.AsInteger;
    end;

  if ( (Column.Field = cdsGridDataRECEIVE_DATE_RESERVE_DAYS) or
       (Column.Field = cdsGridDataTOTAL_PRICE_DIFF) ) and
     (Column.Field.AsFloat < 0) then
    Background:= ccTotalLateNotSelected;
end;

procedure TfmSaleOrdersGroupSaleOrders.grdDetailGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if ( (Column.Field = cdsDetailQUANTITY_DIFF) or
       (Column.Field = cdsDetailACC_QUANTITY_DIFF) or
       (Column.Field = cdsDetailLEASE_RESOURCE_QTY_DIFF) or
       (Column.Field = cdsDetailLEASE_RESOURCE_ACC_QTY_DIFF) or
       (Column.Field = cdsDetailTOTAL_PRICE_DIFF) ) and
     (Column.Field.AsFloat < 0) then
    Background:= ccTotalLateNotSelected;
end;

procedure TfmSaleOrdersGroupSaleOrders.SetDetailColumns;
const
  QuantityColumnWidths: array[sdtSale..sdtLease] of Integer = (142, 30);
var
  i: Integer;
  SaleDealTypeCode: Integer;
begin
  SaleDealTypeCode:= pdsGridDataParamsSALE_DEAL_TYPE_CODE.AsInteger;

  grdDetail.Columns.BeginUpdate;
  try
    for i:= 0 to grdDetail.Columns.Count - 1 do
      if (Pos('QUANTITY', grdDetail.Columns[i].FieldName) > 0) then
        grdDetail.Columns[i].Width:= QuantityColumnWidths[SaleDealTypeCode];

    // PRODUCT_NAME
    grdDetail.Columns[2].Visible:= not actShowClientNos.Checked;
    // CLIENT_REQUEST_NO
    grdDetail.Columns[3].Visible:= actShowClientNos.Checked;
    // COMPANY_PRODUCT_NAME
    grdDetail.Columns[4].Visible:= actShowClientNos.Checked;

    // PRODUCT_MEASURE_ABBREV
    grdDetail.Columns[5].Visible:= actShowWorkQuantities.Checked;
    // PRODUCT_ACCOUNT_MEASURE_ABBREV
    grdDetail.Columns[6].Visible:= actShowAccountQuantities.Checked;

    // CL_OFFER_QUANTITY
    grdDetail.Columns[7].Visible:= actShowWorkQuantities.Checked and not actToggleDetailClientOffer.Checked;
    // ACC_CL_OFFER_QUANTITY
    grdDetail.Columns[8].Visible:= actShowAccountQuantities.Checked and not actToggleDetailClientOffer.Checked;
    // CL_OFFER_LEASE_DATE_UNIT_QTY
    grdDetail.Columns[9].Visible:= (SaleDealTypeCode = sdtLease) and not actToggleDetailClientOffer.Checked;
    // CL_OFFER_LEASE_DATE_UNIT_NAME
    grdDetail.Columns[10].Visible:= (SaleDealTypeCode = sdtLease) and not actToggleDetailClientOffer.Checked;
    // CL_OFFER_LEASE_RESOURCE_QTY
    grdDetail.Columns[11].Visible:= (SaleDealTypeCode = sdtLease) and actShowWorkQuantities.Checked and not actToggleDetailClientOffer.Checked;
    // CL_OFFER_LEASE_RESOURCE_A_QTY
    grdDetail.Columns[12].Visible:= (SaleDealTypeCode = sdtLease) and actShowAccountQuantities.Checked and not actToggleDetailClientOffer.Checked;
    // CL_OFFER_TOTAL_PRICE
    grdDetail.Columns[13].Visible:= not actToggleDetailClientOffer.Checked;

    // QUANTITY
    grdDetail.Columns[14].Visible:= actShowWorkQuantities.Checked and actToggleDetailClientOffer.Checked;
    // ACC_QUANTITY
    grdDetail.Columns[15].Visible:= actShowAccountQuantities.Checked and actToggleDetailClientOffer.Checked;
    // LEASE_DATE_UNIT_QTY
    grdDetail.Columns[16].Visible:= (SaleDealTypeCode = sdtLease) and actToggleDetailClientOffer.Checked;
    // LEASE_DATE_UNIT_NAME
    grdDetail.Columns[17].Visible:= (SaleDealTypeCode = sdtLease) and actToggleDetailClientOffer.Checked;
    // LEASE_RESOURCE_QTY
    grdDetail.Columns[18].Visible:= (SaleDealTypeCode = sdtLease) and actShowWorkQuantities.Checked and actToggleDetailClientOffer.Checked;
    // LEASE_RESOURCE_ACC_QTY
    grdDetail.Columns[19].Visible:= (SaleDealTypeCode = sdtLease) and actShowAccountQuantities.Checked and actToggleDetailClientOffer.Checked;
    // TOTAL_PRICE
    grdDetail.Columns[20].Visible:= actToggleDetailClientOffer.Checked;

    // SHIPPED_QUANTITY
    grdDetail.Columns[21].Visible:= actShowWorkQuantities.Checked and not actToggleShippedAndTakenFromStoreQuantity.Checked;
    // ACC_SHIPPED_QUANTITY
    grdDetail.Columns[22].Visible:= actShowAccountQuantities.Checked and not actToggleShippedAndTakenFromStoreQuantity.Checked;
    // REAL_LEASE_DATE_UNIT_QTY
    grdDetail.Columns[23].Visible:= (SaleDealTypeCode = sdtLease) and not actToggleShippedAndTakenFromStoreQuantity.Checked;
    // REAL_LEASE_DATE_UNIT_NAME
    grdDetail.Columns[24].Visible:= (SaleDealTypeCode = sdtLease) and not actToggleShippedAndTakenFromStoreQuantity.Checked;
    // REAL_LEASE_RESOURCE_QTY
    grdDetail.Columns[25].Visible:= (SaleDealTypeCode = sdtLease) and actShowWorkQuantities.Checked and not actToggleShippedAndTakenFromStoreQuantity.Checked;
    // REAL_LEASE_RESOURCE_ACC_QTY
    grdDetail.Columns[26].Visible:= (SaleDealTypeCode = sdtLease) and actShowAccountQuantities.Checked and not actToggleShippedAndTakenFromStoreQuantity.Checked;
    // REAL_TOTAL_PRICE
    grdDetail.Columns[27].Visible:= not actToggleShippedAndTakenFromStoreQuantity.Checked;

    // QUANTITY_TAKEN_FROM_STORE
    grdDetail.Columns[28].Visible:= actShowWorkQuantities.Checked and actToggleShippedAndTakenFromStoreQuantity.Checked;
    // ACC_QUANTITY_TAKEN_FROM_STORE
    grdDetail.Columns[29].Visible:= actShowAccountQuantities.Checked and actToggleShippedAndTakenFromStoreQuantity.Checked;
    // REAL_LEASE_DATE_UNIT_QTY
    grdDetail.Columns[30].Visible:= (SaleDealTypeCode = sdtLease) and actToggleShippedAndTakenFromStoreQuantity.Checked;
    // REAL_LEASE_DATE_UNIT_NAME
    grdDetail.Columns[31].Visible:= (SaleDealTypeCode = sdtLease) and actToggleShippedAndTakenFromStoreQuantity.Checked;
    // REAL_LEASE_RESOURCE_QTY
    grdDetail.Columns[32].Visible:= (SaleDealTypeCode = sdtLease) and actShowWorkQuantities.Checked and actToggleShippedAndTakenFromStoreQuantity.Checked;
    // REAL_LEASE_RESOURCE_ACC_QTY
    grdDetail.Columns[33].Visible:= (SaleDealTypeCode = sdtLease) and actShowAccountQuantities.Checked and actToggleShippedAndTakenFromStoreQuantity.Checked;
    // TAKEN_FROM_STORE_PRICE
    grdDetail.Columns[34].Visible:= actToggleShippedAndTakenFromStoreQuantity.Checked;

    // QUANTITY_DIFF
    grdDetail.Columns[35].Visible:= (SaleDealTypeCode = sdtSale) and actShowWorkQuantities.Checked;
    // ACC_QUANTITY_DIFF
    grdDetail.Columns[36].Visible:= (SaleDealTypeCode = sdtSale) and actShowAccountQuantities.Checked;
    // LEASE_RESOURCE_QTY_DIFF
    grdDetail.Columns[37].Visible:= (SaleDealTypeCode = sdtLease) and actShowWorkQuantities.Checked;
    // LEASE_RESOURCE_ACC_QTY_DIFF
    grdDetail.Columns[38].Visible:= (SaleDealTypeCode = sdtLease) and actShowAccountQuantities.Checked;
  finally
    grdDetail.Columns.EndUpdate;
  end;
end;

procedure TfmSaleOrdersGroupSaleOrders.SetMasterColumns;
const
  DateColumnCaptions: array[sdtSale..sdtLease] of string = (SDate, SDateInterval);
const
  DateColumns: array[1..3] of Integer = (8, 10, 13);
var
  SaleDealTypeCode: Integer;
  i, p: Integer;
begin
  SaleDealTypeCode:= pdsGridDataParamsSALE_DEAL_TYPE_CODE.AsInteger;

  grdData.Columns.BeginUpdate;
  try
    for i:= Low(DateColumns) to High(DateColumns) do
      with grdData.Columns[DateColumns[i]].Title do
        begin
          p:= CharLastPos(Caption, '|');
          Assert(p >= 0);
          Caption:= LeftStr(Caption, p) + DateColumnCaptions[SaleDealTypeCode];
        end;

    // SALE_GROUP_IDENTIFICATION
    grdData.Columns[2].Visible:= not actShowClientNos.Checked;
    // CLIENT_REQUEST_GROUP_NO
    grdData.Columns[3].Visible:= actShowClientNos.Checked;
  finally
    grdData.Columns.EndUpdate;
  end;
end;

function TfmSaleOrdersGroupSaleOrders.ShowDetailEditForm(AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin): Boolean;
begin
  Result:= TfmGroupSale.ShowForm(dmDocClient, cdsDetail, AEditMode, ADefaultsOrigin);
end;

function TfmSaleOrdersGroupSaleOrders.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmGroupSale.ShowForm(dmDocClient, cdsGridData, AEditMode);
end;

procedure TfmSaleOrdersGroupSaleOrders.btnSaleDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnSaleDocs, dotSale, cdsDetail);
end;

procedure TfmSaleOrdersGroupSaleOrders.btnSaleRequestGroupDocsClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnSaleRequestGroupDocs, dotSaleRequestGroup, cdsGridData);
end;

procedure TfmSaleOrdersGroupSaleOrders.btnShowAnnuledLinesClick(
  Sender: TObject);
begin
  inherited;
  cdsDetail.Filtered:= not btnShowAnnuledLines.Down;
end;

procedure TfmSaleOrdersGroupSaleOrders.cdsDetailCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsDetail_SALE_IDENTIFICATION.AsString:= cdsDetailSALE_IDENTIFICATION.AsString + cdsDetailSALE_TYPE_ABBREV.AsString;

  if (cdsDetailQUANTITY.AsFloat = 0) then
    cdsDetail_SINGLE_PRICE.Clear
  else
    cdsDetail_SINGLE_PRICE.AsFloat:=
      cdsDetailTOTAL_PRICE.AsFloat / cdsDetailQUANTITY.AsFloat;
end;

procedure TfmSaleOrdersGroupSaleOrders.cdsGridDataAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  btnShowAnnuledLines.Down:= (cdsGridData.Params.ParamByName('MAX_STATUS_CODE').AsInteger = SaleOrderAnnuledStatus);
  cdsDetail.Filtered:= not btnShowAnnuledLines.Down;
  SetMasterColumns;
  SetDetailColumns;
end;

procedure TfmSaleOrdersGroupSaleOrders.cdsGridDataCalcFields(DataSet: TDataSet);
var
  ShowLease: Boolean;
  ShowClient: Boolean;
  ShowAcc: Boolean;
begin
  inherited;

  ShowLease:= (pdsGridDataParamsSALE_DEAL_TYPE_CODE.AsInteger = sdtLease);
  ShowClient:= actShowClientNos.Checked;
  ShowAcc:= actShowAccountQuantities.Checked;

  // s bitovi operacii shte e po-elegantno, ama niama smisyl
  if not ShowLease and not ShowClient and not ShowAcc then
    cdsGridDataREPORT_TAG.AsInteger:= 1;

  if not ShowLease and     ShowClient and not ShowAcc then
    cdsGridDataREPORT_TAG.AsInteger:= 2;

  if     ShowLease and not ShowClient and not ShowAcc then
    cdsGridDataREPORT_TAG.AsInteger:= 3;

  if     ShowLease and     ShowClient and not ShowAcc then
    cdsGridDataREPORT_TAG.AsInteger:= 4;

  if not ShowLease and not ShowClient and     ShowAcc then
    cdsGridDataREPORT_TAG.AsInteger:= 5;

  if not ShowLease and     ShowClient and     ShowAcc then
    cdsGridDataREPORT_TAG.AsInteger:= 6;

  if     ShowLease and not ShowClient and     ShowAcc then
    cdsGridDataREPORT_TAG.AsInteger:= 7;

  if     ShowLease and     ShowClient and     ShowAcc then
    cdsGridDataREPORT_TAG.AsInteger:= 8;
end;

procedure TfmSaleOrdersGroupSaleOrders.cdsGridDataCL_OFFER_RECEIVE_DATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= GetBeginDateFieldText(cdsGridDataCL_OFFER_RECEIVE_DATE, cdsGridDataCL_OFFER_RETURN_DATE);
end;

procedure TfmSaleOrdersGroupSaleOrders.cdsGridDataINVOICE_STATE_CODEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(Sender.AsInteger, Low(SaleOrderInvoiceStateNames), High(SaleOrderInvoiceStateNames)) then
    Text:= SaleOrderInvoiceStateNames[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmSaleOrdersGroupSaleOrders.cdsGridDataRECEIVE_DATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= GetBeginDateFieldText(cdsGridDataRECEIVE_DATE, cdsGridDataRETURN_DATE);
end;

procedure TfmSaleOrdersGroupSaleOrders.cdsGridDataSHIPMENT_DATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= GetBeginDateFieldText(cdsGridDataSHIPMENT_DATE, cdsGridDataIMPORT_DATE);
end;

procedure TfmSaleOrdersGroupSaleOrders.cdsGridDataSTATUS_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= SaleOrderStatuses[Sender.AsInteger];
end;

procedure TfmSaleOrdersGroupSaleOrders.OpenDataSets;
begin
  cdsSaleDealTypes.Open;
  inherited;
end;

procedure TfmSaleOrdersGroupSaleOrders.CloseDataSets;
begin
  inherited;
  cdsSaleDealTypes.Close;
end;

procedure TfmSaleOrdersGroupSaleOrders.actFormUpdate(Sender: TObject);
begin
  inherited;

  btnSaleRequestGroupDocs.Enabled:=
    cdsGridData.Active and (cdsGridData.RecordCount > 0);
  btnSaleRequestGroupDocs.ImageIndex:= cdsGridDataHAS_DOC_ITEMS.AsInteger;

  btnClientDocs.Enabled:=
    cdsGridData.Active and (cdsGridData.RecordCount > 0);
  btnClientDocs.ImageIndex:= cdsGridDataCLIENT_HAS_DOC_ITEMS.AsInteger;

  btnSaleDocs.Enabled:=
    cdsDetail.Active and (cdsDetail.RecordCount > 0);
  btnSaleDocs.ImageIndex:= cdsDetailHAS_DOC_ITEMS.AsInteger;

  btnProductDocs.Enabled:=
    cdsDetail.Active and (cdsDetail.RecordCount > 0);
  btnProductDocs.ImageIndex:= cdsDetailPRODUCT_HAS_DOC_ITEMS.AsInteger;
end;

class function TfmSaleOrdersGroupSaleOrders.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmSaleOrdersGroupSaleOrders.actInsertRecordExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaNewGroupSaleRequest);
  inherited;
end;

procedure TfmSaleOrdersGroupSaleOrders.actPrintDetailsExecute(Sender: TObject);
var
  b: TBookmark;
begin
  // force calc fields
  b:= cdsGridData.Bookmark;
  cdsGridData.First;
  cdsGridData.Last;
  cdsGridData.Bookmark:= b;

  inherited;
end;

procedure TfmSaleOrdersGroupSaleOrders.actPrintExecute(Sender: TObject);
var
  OldAfterScroll: TDataSetNotifyEvent;
begin
  OldAfterScroll:= cdsGridData.AfterScroll;
  cdsGridData.AfterScroll:= nil;
  try
    inherited;
  finally
    cdsGridData.AfterScroll:= OldAfterScroll;
  end;
end;

procedure TfmSaleOrdersGroupSaleOrders.actShowAccountQuantitiesExecute(
  Sender: TObject);
begin
  inherited;
  SetDetailColumns;
end;

procedure TfmSaleOrdersGroupSaleOrders.actShowClientNosExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetMasterColumns;
  SetDetailColumns;
end;

procedure TfmSaleOrdersGroupSaleOrders.actShowWorkQuantitiesExecute(
  Sender: TObject);
begin
  inherited;
  SetDetailColumns;
end;

procedure TfmSaleOrdersGroupSaleOrders.actStoreRequestExecute(Sender: TObject);
begin
  inherited;
  if not LoginContext.HasUserActivity(uaStoreDealsFromStoreRequestOut) then
    begin
      LoginContext.CheckUserActivity(uaWorkStoreDealsFromStoreRequestOut);
      LoginContext.CheckUserWorkDept(LoginContext.CurrentDeptCode);
    end;  { if }

  if (LoginContext.CurrentDeptCode = 0) then
    raise Exception.Create(SNoCurrentDept);

  if not dmMain.SvrDeptsTree.IsDeptStore(LoginContext.CurrentDeptCode) then
    raise Exception.Create(SCurrentDeptIsNotStore);

  TfmStoreRequest.ShowForm(dmDocClient, cdsGridData, emEdit, ioOut, LoginContext.CurrentDeptCode);
end;

procedure TfmSaleOrdersGroupSaleOrders.actStoreRequestUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    not cdsGridData.IsEmpty and
    not cdsGridDataSTORE_REQUEST_BRANCH_CODE.IsNull;
end;

procedure TfmSaleOrdersGroupSaleOrders.actToggleDetailClientOfferExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetDetailColumns;
end;

procedure TfmSaleOrdersGroupSaleOrders.actToggleShippedAndTakenFromStoreQuantityExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetDetailColumns;
end;

procedure TfmSaleOrdersGroupSaleOrders.btnClientDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnClientDocs, dotCompany,
    cdsGridDataCLIENT_DOC_BRANCH_CODE, cdsGridDataCLIENT_DOC_CODE);
end;

procedure TfmSaleOrdersGroupSaleOrders.btnProductDocsClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnProductDocs, dotProduct,
    cdsDetailPRODUCT_DOC_BRANCH_CODE, cdsDetailPRODUCT_DOC_CODE);
end;

procedure TfmSaleOrdersGroupSaleOrders.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  InitializePriorityInterval(pdsGridDataParamsCLIENT_BEGIN_PRIORITY_CODE, pdsGridDataParamsCLIENT_END_PRIORITY_CODE);
end;

end.
