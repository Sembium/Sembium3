unit fSaleShipments;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fInnerButtonGridForm, ImgList, ParamDataSet, ActnList, Db,
  DBClient, GridsEh, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, fEditForm, Mask, AbmesClientDataSet, DBGridEh,
  AbmesDBGrid, AbmesFields, Menus, JvButtons, JvToolEdit, JvDBControls, ComCtrls,
  ToolWin, uClientTypes, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateFieldEditFrame, JvComponent, JvCaptionButton, JvComponentBase, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  System.Actions, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TfmSaleShipments = class(TInnerButtonGridForm)
    cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataSALE_SHIPMENT_NO: TAbmesFloatField;
    cdsGridDataSHIPMENT_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataIS_PROFORM_INVOICE: TAbmesFloatField;
    cdsGridDataINVOICE_NO: TAbmesFloatField;
    cdsGridDataINVOICE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataINVOICE_CURRENCY_CODE: TAbmesFloatField;
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsCurrenciesROUNDER: TAbmesFloatField;
    cdsCurrenciesORDER_NO: TAbmesFloatField;
    cdsGridData_INVOICE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridDataPLAN_QUANTITY: TAbmesFloatField;
    cdsGridDataQUANTITY: TAbmesFloatField;
    cdsGridDataINVOICE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_MAX_SALE_SHIPMENT_NO: TAggregateField;
    cdsGridData_SUM_SHIPMENT_OUT_QUANTITY: TAggregateField;
    cdsGridData_SUM_PLAN_QUANTITY: TAggregateField;
    cdsGridData_LAST_SHIPMENT_DATE: TAggregateField;
    cdsGridDataSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSHIPMENT_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataUPDATE_STATUS: TAbmesFloatField;
    cdsGridDataINVOICE_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataqryShipmentPlannedStoreDeals: TDataSetField;
    dsSale: TDataSource;
    cdsGridData_DATE_DIFF: TAbmesFloatField;
    cdsGridData_QUANTITY_DIFF: TAbmesFloatField;
    cdsGridData_VALUE_GAINED_PLAN: TAbmesFloatField;
    cdsGridData_VALUE_GAINED_DIFF: TAbmesFloatField;
    cdsGridData_VALUE_GAINED_REAL: TAbmesFloatField;
    cdsGridDataPLAN_SECONDARY_VALUE_INVESTED: TAbmesFloatField;
    cdsGridDataSECONDARY_VALUE_INVESTED: TAbmesFloatField;
    cdsGridData_VALUE_INVESTED_DIFF: TAbmesFloatField;
    cdsGridData_VALUE_INVESTED_PERCENT_PLAN: TAbmesFloatField;
    cdsGridData_VALUE_INVESTED_PERCENT_REAL: TAbmesFloatField;
    cdsGridData_VALUE_INVESTED_PERCENT_DIFF: TAbmesFloatField;
    cdsGridData_VALUE_ADDED_REAL: TAbmesFloatField;
    cdsGridData_VALUE_ADDED_PLAN: TAbmesFloatField;
    cdsGridData_VALUE_ADDED_DIFF: TAbmesFloatField;
    cdsGridDataPLAN_SECONDARY_CURRENCY_RATE: TAbmesFloatField;
    cdsGridDataREAL_SECONDARY_CURRENCY_RATE: TAbmesFloatField;
    cdsGridDataCHECK_QUANTITY: TAbmesFloatField;
    cdsGridData_SUM_CHECK_QUANTITY: TAggregateField;
    cdsGridDataSHIPMENT_OUT_QUANTITY: TAbmesFloatField;
    cdsGridData_SHIPMENT_OUT_QUANTITY_DIFF: TAbmesFloatField;
    btnDocs: TSpeedButton;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataSHIPMENT_STORE_CODE: TAbmesFloatField;
    sepBeforeDocsButton: TToolButton;
    cdsGridData_MAX_SHIPMENT_OBJECT_CODE: TAggregateField;
    pnlShipmentsTop: TPanel;
    gbQuantities: TGroupBox;
    gbPrice: TGroupBox;
    lblSinglePrice: TLabel;
    txtSinglePriceCurrency: TDBText;
    lblTotalPrice: TLabel;
    txtTotalPriceCurrency: TDBText;
    edtSinglePrice: TDBEdit;
    edtTotalPrice: TDBEdit;
    gbValueGained: TGroupBox;
    cdsGridData_TOTAL_VALUE_ADDED_PLAN_PCT: TAggregateField;
    lblValueAddedPlanPct: TLabel;
    edtValueAddedPlanPct: TDBEdit;
    lblValueAddedRealPct: TLabel;
    edtValueAddedRealPct: TDBEdit;
    lblValueAddedPlanPctPct: TLabel;
    lblValueAddedRealPctPct: TLabel;
    cdsGridData_TOTAL_VALUE_ADDED_REAL_PCT: TAggregateField;
    cdsGridData_VALUE_ADDED_REAL_PCT: TAbmesFloatField;
    cdsGridData_SUM_QUANTITY: TAggregateField;
    cdsGridData_SUM_INVOICE_TOTAL_PRICE: TAggregateField;
    cdsGridData_MIN_INVOICE_CURRENCY_CODE: TAggregateField;
    cdsGridData_MAX_INVOICE_CURRENCY_CODE: TAggregateField;
    cdsGridData_PLAN_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_SHIPMENT_OUT_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridData_ACCOUNT_QUANTITY: TAbmesFloatField;
    tbSpeed: TToolBar;
    sbtnWorkMeasure: TSpeedButton;
    sbtnAccountMeasure: TSpeedButton;
    cdsGridData_SUM_SHIPMENT_OUT_ACC_QUANTITY: TAggregateField;
    cdsGridData_SUM_ACCOUNT_QUANTITY: TAggregateField;
    cdsGridDataINVOICE_CURRENCY_FIXING: TAbmesFloatField;
    cdsGridData_BASE_INVOICE_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_BASE_INVOICE_TOTAL_PRICE: TAbmesFloatField;
    cdsGridData_SUM_BASE_INVOICE_TOTAL_PRICE: TAggregateField;
    sepToggleCurrency: TToolButton;
    btnToggleCurrency: TSpeedButton;
    actToggleCurrency: TAction;
    cdsGridData_BASE_INVOICE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridDataLEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGridDataLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGridDataIMPORT_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataIMPORT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSHIPMENT_IN_QUANTITY: TAbmesFloatField;
    pnlRightMargin: TPanel;
    pnlTopMargin: TPanel;
    gbValueGainedSeparator: TPanel;
    pnlPriceSeparator: TPanel;
    pnlLeftMargin: TPanel;
    pnlQuantity: TPanel;
    lblQuantity: TLabel;
    txtMeasureAbbrev: TDBText;
    edtQuantity: TDBEdit;
    pnlAccountQuantity: TPanel;
    lblAccountQuantity: TLabel;
    dbtShippedQuantityMeasure: TDBText;
    edtAccountQuantity: TDBEdit;
    pnlRemainingQuantity: TPanel;
    lblRemainingQuantity: TLabel;
    txtQuantityDiffMeasure: TDBText;
    edtQuantityDiff: TDBEdit;
    btnToggleQuantityDiffMeasure: TSpeedButton;
    pnlLease: TPanel;
    edtLeaseDateUnitQty: TDBEdit;
    lblLeaseDateUnitQty: TLabel;
    edtLeaseDateUnit: TDBEdit;
    lblLeaseDateUnit: TLabel;
    edtLeaseDateUnitDiff: TDBEdit;
    lblLeaseDateUnitDiff: TLabel;
    edtTotalLeaseDateUnitQty: TDBEdit;
    lblTotalLeaseDateUnitQty: TLabel;
    edtTotalLeaseDateUnitQtyDiff: TDBEdit;
    lblTotalLeaseDateUnitQtyDiff: TLabel;
    lblFor: TLabel;
    lblImportQuantityDiff: TLabel;
    edtImportQuantityDiff: TDBEdit;
    txtImportQuantityDiffMeasure: TDBText;
    actToggleQuantityDiffMeasure: TAction;
    cdsGridData_REMAINING_SUM_QUANTITY: TAbmesFloatField;
    cdsGridData_REMAINING_SUM_QUANTITY_PERCENT: TAbmesFloatField;
    cdsGridData_SUM_LEASE_DATE_UNIT_QTY: TAggregateField;
    cdsGridData_REMAINING_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGridData_REM_TOTAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGridData_TOTAL_LEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGridData_TOTAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsGridDataSHIPMENT_OUT_LAST_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSHIPMENT_IN_LAST_DATE: TAbmesSQLTimeStampField;
    cdsGridDataRECEIVE_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataRETURN_PLAN_DATE: TAbmesSQLTimeStampField;
    cdsGridData_IMPORT_DATE_DIFF: TAbmesFloatField;
    cdsGridDataSALE_SHIPMENT_STATE_CODE: TAbmesFloatField;
    cdsGridData_MIN_SALE_SHIPMENT_STATE_CODE: TAggregateField;
    lblSlash: TLabel;
    txtSinglePriceMeasureAbbrev: TDBText;
    cdsGridDataFIN_ORDER_CODE: TAbmesFloatField;
    cdsGridDataFO_EXEC_DEPT_CODE: TAbmesFloatField;
    cdsGridDataFO_PRIORITY_CODE: TAbmesFloatField;
    cdsGridDataFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    cdsGridData_ACCOUNT_QUANTITY_2: TAbmesFloatField;
    cdsGridDataFO_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataFO_IS_COMPLETED: TAbmesFloatField;
    cdsGridDataFO_CLOSE_REQUESTED: TAbmesFloatField;
    cdsGridDataINVOICE_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataINVOICE_CODE: TAbmesFloatField;
    cdsGridDataSHIPMENT_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataFO_STATUS_CODE: TAbmesFloatField;
    cdsGridDataFO_PARTNER_CODE: TAbmesFloatField;
    cdsGridDataCLIENT_REQUEST_NO: TAbmesWideStringField;
    procedure cdsGridDataRECEIVE_PLAN_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actToggleQuantityDiffMeasureExecute(Sender: TObject);
    procedure actToggleQuantityDiffMeasureUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataQUANTITYValidate(Sender: TField);
    procedure cdsGridDataPLAN_QUANTITYChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataINVOICE_SINGLE_PRICEChange(Sender: TField);
    procedure cdsGridDataINVOICE_TOTAL_PRICEChange(Sender: TField);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataSHIPMENT_PLAN_DATEChange(Sender: TField);
    procedure cdsGridDataSHIPMENT_DATEChange(Sender: TField);
    procedure cdsGridDataINVOICE_CURRENCY_CODEChange(Sender: TField);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataBeforeDelete(DataSet: TDataSet);
    procedure navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure btnDocsClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure ShipmentsPercentFieldGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_SUM_INVOICE_TOTAL_PRICEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_MIN_INVOICE_CURRENCY_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure sbtnWorkMeasureClick(Sender: TObject);
    procedure sbtnAccountMeasureClick(Sender: TObject);
    procedure cdsGridDataINVOICE_DATEChange(Sender: TField);
    procedure actToggleCurrencyExecute(Sender: TObject);
    procedure cdsGridDataSALE_SHIPMENT_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_MIN_SALE_SHIPMENT_STATE_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsGridDataINVOICE_NOChange(Sender: TField);
  private
    FAfterShipmentPost: TDataSetNotifyEvent;
    FCalculatingPrices: Boolean;
    FOuterEditMode: TEditMode;
    FShipmentNo: Integer;
    FNeedsInitialUpdate: Boolean;
    FPrevIsLease: Boolean;
    FShipmentsModified: Boolean;
    procedure RecalcTotalPrice;
    procedure SetVisibleColumns;
    procedure UpdateInvoiceCurrencyFixing;
  protected
    function GetInsertRecordEnabled: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    procedure Initialize; override;
    property AfterShipmentPost: TDataSetNotifyEvent read FAfterShipmentPost write FAfterShipmentPost;
    property OuterEditMode: TEditMode read FOuterEditMode write FOuterEditMode;
    property ShipmentNo: Integer read FShipmentNo write FShipmentNo;
    procedure FixColumnWidths;
  end;

implementation

uses
  Variants, dMain, fSaleShipmentEdit, uUtils, uUserActivityConsts,
  uClientUtils, uDocUtils, fDBDataForm, uSaleDealTypes, StrUtils, uSalesClientUtils,
  rSale, uSalesCommon, uClientDateTime, uAbmesDBGridHelpers;

{$R *.DFM}

resourcestring
  SDifferentCurrencies = 'разл. вал.';
  SFieldValueMustBePositive = 'Стойността на полето ''%s'' трябва да е положителна';
  SReservedQuantityExceedsPlanned = 'Запазеното количество надвишава планираното с %f';

procedure TfmSaleShipments.FormCreate(Sender: TObject);
  procedure SetSecCurrencyCaption(Labels: array of TLabel);
  var
    i: Integer;
  begin
    for i:= Low(Labels) to High(Labels) do
      with Labels[i] do
        Caption:= LoginContext.SecondaryCurrencyAbbrev;
  end;
begin
  inherited;

  FShipmentNo:= 0;
  FNeedsInitialUpdate:= True;

  EditFormClass:= TfmSaleShipmentEdit;
  ReportClass:= TrptSale;

  actToggleCurrency.Caption:=
    FormatBaseCurrencyAbbrevString(actToggleCurrency.Caption);

  RegisterFieldsTextVisibility(
    IsSalePriceVisible,
    [ cdsGridDataINVOICE_SINGLE_PRICE,
      cdsGridData_BASE_INVOICE_SINGLE_PRICE,
      cdsGridDataINVOICE_TOTAL_PRICE,
      cdsGridData_SUM_INVOICE_TOTAL_PRICE,
      cdsGridData_BASE_INVOICE_TOTAL_PRICE,
      cdsGridData_SUM_BASE_INVOICE_TOTAL_PRICE]);

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridData_VALUE_INVESTED_DIFF,
      cdsGridData_VALUE_INVESTED_PERCENT_PLAN,
      cdsGridData_VALUE_INVESTED_PERCENT_REAL,
      cdsGridData_VALUE_INVESTED_PERCENT_DIFF,
      cdsGridDataPLAN_SECONDARY_VALUE_INVESTED,
      cdsGridDataSECONDARY_VALUE_INVESTED]);

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedAndSalePriceVisible,
    [ cdsGridData_VALUE_ADDED_REAL_PCT,
      cdsGridData_VALUE_ADDED_PLAN,
      cdsGridData_VALUE_ADDED_REAL,
      cdsGridData_VALUE_ADDED_DIFF]);
end;

procedure TfmSaleShipments.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsGridDataSHIPMENT_OBJECT_BRANCH_CODE.Value:=
    cdsGridDataSALE_OBJECT_BRANCH_CODE.Value;

  cdsGridDataSHIPMENT_OBJECT_CODE.Value:=
    VarToInt(cdsGridData_MAX_SHIPMENT_OBJECT_CODE.Value) + 1;

  cdsGridDataSALE_SHIPMENT_NO.Value:=
    VarToInt(cdsGridData_MAX_SALE_SHIPMENT_NO.Value) + 1;

  cdsGridDataSHIPMENT_STORE_CODE.AsInteger:=
    cdsGridData.DataSetField.DataSet.FieldByName('SHIPMENT_STORE_CODE').AsInteger;
end;

function TfmSaleShipments.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertRecordEnabled and
    not (cdsGridData.BOF and cdsGridData.EOF);
end;

function TfmSaleShipments.GetDelRecordEnabled: Boolean;
begin
  Result:=
    inherited GetDelRecordEnabled and
    (cdsGridData.RecordCount > 1);
end;

procedure TfmSaleShipments.cdsGridDataAfterDelete(DataSet: TDataSet);
begin
  inherited;

  FShipmentsModified:= True;

  if Assigned(FAfterShipmentPost) then
    FAfterShipmentPost(DataSet);
end;

procedure TfmSaleShipments.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;

  with cdsGridData.DataSetField do     // Master.ReCalcFields
    begin
      PostDataSet(DataSet);
      DataSet.Last;
      DataSet.First;

      CheckEditMode(DataSet);

      if (cdsGridData.RecNo = 1) then
        DataSet.FieldByName('SHIPMENT_DATE').Assign(cdsGridDataSHIPMENT_PLAN_DATE);
    end;

  FShipmentsModified:= True;

  if Assigned(FAfterShipmentPost) then
    FAfterShipmentPost(DataSet);
end;

procedure TfmSaleShipments.cdsGridDataQUANTITYValidate(Sender: TField);
begin
  inherited;

  with Sender as TAbmesFloatField do
    if (not IsNull) and (AsFloat <= 0) then
      begin
        Sender.FocusControl;
        raise Exception.CreateFmt(SFieldValueMustBePositive, [DisplayLabel]);
      end;   { if }
end;

procedure TfmSaleShipments.cdsGridDataRECEIVE_PLAN_DATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:=
    dmMain.GetDateIntervalAsString(
      cdsGridDataRECEIVE_PLAN_DATE.AsDateTime,
      cdsGridDataRETURN_PLAN_DATE.AsDateTime
    );
end;

procedure TfmSaleShipments.cdsGridDataPLAN_QUANTITYChange(Sender: TField);
begin
  inherited;
  RecalcTotalPrice;
end;

function TfmSaleShipments.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  if (OuterEditMode = emReadOnly) then
    AEditMode:= emReadOnly;

  Result:=
    TfmSaleShipmentEdit.ShowForm(dmDocClient, cdsGridData, AEditMode);
end;

procedure TfmSaleShipments.FormShow(Sender: TObject);
begin
  inherited;
  RegisterDateFields(cdsGridData);
  cdsGridData.Last;
  cdsGridData.First;
end;

procedure TfmSaleShipments.FixColumnWidths;
var
  c: TColumnEh;

  procedure FixColumnWidth(AColumn: TColumnEh; const Prefix: string);
  var
    p: Integer;
    s: string;
    c: TColumnEh;
  begin
    p:= Pos(Prefix, AColumn.FieldName);
    if (p > 0) then
      begin
        s:= StringReplace(AColumn.FieldName, Prefix, '', []);
        if (s <> '') and (s[1] = '_') then
          s:= RightStr(s, Length(s) - 1);

        for c in grdData.Columns do
          if (c.FieldName = s) or (c.FieldName = '_' + s) then
            begin
              AColumn.Width:= c.Width;
              Exit;
            end;
      end;
  end;  { FixColumnWidth }

begin
  for c in grdData.Columns do
    begin
      FixColumnWidth(c, 'ACCOUNT_');
      FixColumnWidth(c, 'BASE_');
    end;
end;


procedure TfmSaleShipments.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (cdsGridData.RecNo = 1) and
     ( (not (gdSelected in State)) or
       (not grdData.Focused)) then
    Background:= cl3DLight;

  if (Column.Field = cdsGridDataSALE_SHIPMENT_STATE_CODE) and
     ValidSaleState(Column.Field.AsInteger) and
     not FShipmentsModified then
    Background:= SaleStateBackgroundColors[Column.Field.AsInteger];
end;

procedure TfmSaleShipments.Initialize;
var
  IsLease: Boolean;
begin
  inherited;

  IsLease:= (dsSale.DataSet.FieldByName('SALE_DEAL_TYPE_CODE').AsInteger = sdtLease);
  if not IsLease then
    grdData.Columns[23].Width:= grdData.Columns[23].Width + 50;  // razshiriavame sluchaina kolona

  SetVisibleColumns;
end;

procedure TfmSaleShipments.cdsGridDataINVOICE_SINGLE_PRICEChange(
  Sender: TField);
begin
  inherited;
  RecalcTotalPrice;
end;

procedure TfmSaleShipments.cdsGridDataINVOICE_TOTAL_PRICEChange(
  Sender: TField);
var
  Quantity: Real;
begin
  inherited;

  if FCalculatingPrices then Exit;

  FCalculatingPrices:= True;
  try
    if cdsGridDataPLAN_QUANTITY.IsNull and cdsGridDataQUANTITY.IsNull then
      cdsGridDataINVOICE_SINGLE_PRICE.Clear
    else
      begin
        if cdsGridDataQUANTITY.IsNull then
          Quantity:= cdsGridDataPLAN_QUANTITY.AsFloat
        else
          Quantity:= cdsGridDataQUANTITY.AsFloat;

        cdsGridDataINVOICE_SINGLE_PRICE.AsFloat:=
          cdsGridDataINVOICE_TOTAL_PRICE.AsFloat / Quantity;
      end;
  finally
    FCalculatingPrices:= False;
  end;   { try }
end;

procedure TfmSaleShipments.RecalcTotalPrice;
var
  Quantity: Real;
begin
  if FCalculatingPrices then Exit;

  FCalculatingPrices:= True;
  try
    if (cdsGridDataPLAN_QUANTITY.IsNull and cdsGridDataQUANTITY.IsNull) or
       cdsGridDataINVOICE_SINGLE_PRICE.IsNull then
      cdsGridDataINVOICE_TOTAL_PRICE.Clear
    else
      begin
        if cdsGridDataQUANTITY.IsNull then
          Quantity:= cdsGridDataPLAN_QUANTITY.AsFloat
        else
          Quantity:= cdsGridDataQUANTITY.AsFloat;

        cdsGridDataINVOICE_TOTAL_PRICE.AsFloat:=
          cdsGridDataINVOICE_SINGLE_PRICE.AsFloat * Quantity;
      end;
  finally
    FCalculatingPrices:= False;
  end;   { try }
end;

procedure TfmSaleShipments.cdsGridDataCalcFields(DataSet: TDataSet);

  procedure CalcAccountQuantityField(AccountQuantityField, QuantityField: TField);
  begin
    if QuantityField.IsNull or
       cdsGridData.DataSetField.DataSet.FieldByName('ACCOUNT_MEASURE_COEF').IsNull then
      AccountQuantityField.Clear
    else
      AccountQuantityField.AsFloat:=
        QuantityField.AsFloat *
        cdsGridData.DataSetField.DataSet.FieldByName('ACCOUNT_MEASURE_COEF').AsFloat;
  end;

  procedure CalcInvoiceBasePriceField(BasePriceField, PriceField: TField);
  begin
    if PriceField.IsNull or cdsGridDataINVOICE_CURRENCY_FIXING.IsNull then
      BasePriceField.Clear
    else
      BasePriceField.AsFloat:=
        PriceField.AsFloat * cdsGridDataINVOICE_CURRENCY_FIXING.AsFloat;
  end;

var
  Quantity: Real;
begin
  inherited;

  Quantity:= cdsGridData.DataSetField.DataSet.FieldByName('QUANTITY').AsFloat;

  cdsGridData_REMAINING_SUM_QUANTITY.AsFloat:=
    VarToFloat(cdsGridData_SUM_QUANTITY.AsVariant) - Quantity;

  if (Quantity = 0) then
    cdsGridData_REMAINING_SUM_QUANTITY_PERCENT.AsFloat:= 0
  else
    cdsGridData_REMAINING_SUM_QUANTITY_PERCENT.AsFloat:=
      cdsGridData_REMAINING_SUM_QUANTITY.AsFloat /
      Quantity *
      100;

  cdsGridData_REMAINING_LEASE_DATE_UNIT_QTY.AsFloat:=
    cdsGridData.DataSetField.DataSet.FieldByName('LEASE_DATE_UNIT_QTY').AsFloat -
    VarToFloat(cdsGridData_SUM_LEASE_DATE_UNIT_QTY.AsVariant);

  cdsGridData_REM_TOTAL_LEASE_DATE_UNIT_QTY.AsFloat:=
    cdsGridData_REMAINING_LEASE_DATE_UNIT_QTY.AsFloat * Quantity;

  if cdsGridDataLEASE_PLAN_DATE_UNIT_QTY.IsNull then
    cdsGridData_TOTAL_LEASE_PLAN_DATE_UNIT_QTY.Clear
  else
    cdsGridData_TOTAL_LEASE_PLAN_DATE_UNIT_QTY.AsFloat:=
      cdsGridDataLEASE_PLAN_DATE_UNIT_QTY.AsFloat * Quantity;

  if cdsGridDataLEASE_DATE_UNIT_QTY.IsNull then
    cdsGridData_TOTAL_LEASE_DATE_UNIT_QTY.Clear
  else
    cdsGridData_TOTAL_LEASE_DATE_UNIT_QTY.AsFloat:=
      cdsGridDataLEASE_DATE_UNIT_QTY.AsFloat * Quantity;

  CalcAccountQuantityField(cdsGridData_ACCOUNT_QUANTITY_2, cdsGridDataQUANTITY);

  if (cdsGridData.State <> dsInternalCalc) then
    Exit;


  if cdsGridDataQUANTITY.IsNull or cdsGridDataPLAN_QUANTITY.IsNull then
    cdsGridData_QUANTITY_DIFF.Clear
  else
    cdsGridData_QUANTITY_DIFF.AsFloat:=
      cdsGridDataQUANTITY.AsFloat -
      cdsGridDataPLAN_QUANTITY.AsFloat;

  if cdsGridDataSHIPMENT_OUT_QUANTITY.IsNull or cdsGridDataPLAN_QUANTITY.IsNull then
    cdsGridData_SHIPMENT_OUT_QUANTITY_DIFF.Clear
  else
    cdsGridData_SHIPMENT_OUT_QUANTITY_DIFF.AsFloat:=
      cdsGridDataSHIPMENT_OUT_QUANTITY.AsFloat -
      cdsGridDataPLAN_QUANTITY.AsFloat;

  if cdsGridDataSHIPMENT_PLAN_DATE.IsNull then
    cdsGridData_DATE_DIFF.Clear
  else
    begin
      if cdsGridDataSHIPMENT_DATE.IsNull then
        cdsGridData_DATE_DIFF.AsFloat:=
          cdsGridDataSHIPMENT_PLAN_DATE.AsDateTime -
          ContextDate()
      else
        cdsGridData_DATE_DIFF.AsFloat:=
          cdsGridDataSHIPMENT_PLAN_DATE.AsDateTime -
          cdsGridDataSHIPMENT_DATE.AsDateTime;
    end;

  if cdsGridDataPLAN_QUANTITY.IsNull or
     cdsGridData.DataSetField.DataSet.FieldByName('SINGLE_PRICE').IsNull or
     cdsGridDataPLAN_SECONDARY_CURRENCY_RATE.IsNull then
    cdsGridData_VALUE_GAINED_PLAN.Clear
  else
    cdsGridData_VALUE_GAINED_PLAN.AsFloat:=
      cdsGridDataPLAN_QUANTITY.AsFloat *
      cdsGridData.DataSetField.DataSet.FieldByName('SINGLE_PRICE').AsFloat *
      cdsGridDataPLAN_SECONDARY_CURRENCY_RATE.AsFloat;

  if cdsGridDataQUANTITY.IsNull or
     cdsGridDataINVOICE_SINGLE_PRICE.IsNull or
     cdsGridDataREAL_SECONDARY_CURRENCY_RATE.IsNull then
    cdsGridData_VALUE_GAINED_REAL.Clear
  else
    cdsGridData_VALUE_GAINED_REAL.AsFloat:=
      cdsGridDataQUANTITY.AsFloat *
      cdsGridDataINVOICE_SINGLE_PRICE.AsFloat *
      cdsGridDataREAL_SECONDARY_CURRENCY_RATE.AsFloat;

  if cdsGridData_VALUE_GAINED_REAL.IsNull or
     cdsGridData_VALUE_GAINED_PLAN.IsNull then
    cdsGridData_VALUE_GAINED_DIFF.Clear
  else
    cdsGridData_VALUE_GAINED_DIFF.AsFloat:=
      cdsGridData_VALUE_GAINED_REAL.AsFloat -
      cdsGridData_VALUE_GAINED_PLAN.AsFloat;

  if cdsGridDataSECONDARY_VALUE_INVESTED.IsNull or
     cdsGridDataPLAN_SECONDARY_VALUE_INVESTED.IsNull then
    cdsGridData_VALUE_INVESTED_DIFF.Clear
  else
    cdsGridData_VALUE_INVESTED_DIFF.AsFloat:=
      cdsGridDataSECONDARY_VALUE_INVESTED.AsFloat -
      cdsGridDataPLAN_SECONDARY_VALUE_INVESTED.AsFloat;

  if cdsGridDataPLAN_SECONDARY_VALUE_INVESTED.IsNull or
     cdsGridData.DataSetField.DataSet.FieldByName('SINGLE_PRICE').IsNull or
     cdsGridDataPLAN_SECONDARY_CURRENCY_RATE.IsNull then
    cdsGridData_VALUE_INVESTED_PERCENT_PLAN.Clear
  else
    cdsGridData_VALUE_INVESTED_PERCENT_PLAN.AsFloat:=
      100 *
      cdsGridDataPLAN_SECONDARY_VALUE_INVESTED.AsFloat /
      ( cdsGridData.DataSetField.DataSet.FieldByName('SINGLE_PRICE').AsFloat *
        cdsGridDataPLAN_SECONDARY_CURRENCY_RATE.AsFloat
      );

  if cdsGridDataSECONDARY_VALUE_INVESTED.IsNull or
     cdsGridData.DataSetField.DataSet.FieldByName('SINGLE_PRICE').IsNull or
     cdsGridDataREAL_SECONDARY_CURRENCY_RATE.IsNull then
    cdsGridData_VALUE_INVESTED_PERCENT_REAL.Clear
  else
    cdsGridData_VALUE_INVESTED_PERCENT_REAL.AsFloat:=
      100 *
      cdsGridDataSECONDARY_VALUE_INVESTED.AsFloat /
      ( cdsGridData.DataSetField.DataSet.FieldByName('SINGLE_PRICE').AsFloat *
        cdsGridDataREAL_SECONDARY_CURRENCY_RATE.AsFloat
      );

  if cdsGridData_VALUE_INVESTED_PERCENT_REAL.IsNull or
     cdsGridData_VALUE_INVESTED_PERCENT_PLAN.IsNull then
    cdsGridData_VALUE_INVESTED_PERCENT_DIFF.Clear
  else
    cdsGridData_VALUE_INVESTED_PERCENT_DIFF.AsFloat:=
      cdsGridData_VALUE_INVESTED_PERCENT_REAL.AsFloat -
      cdsGridData_VALUE_INVESTED_PERCENT_PLAN.AsFloat;

  if cdsGridData_VALUE_GAINED_PLAN.IsNull or
    cdsGridDataPLAN_SECONDARY_VALUE_INVESTED.IsNull or
    cdsGridDataPLAN_QUANTITY.IsNull then
    cdsGridData_VALUE_ADDED_PLAN.Clear
  else
    cdsGridData_VALUE_ADDED_PLAN.AsFloat:=
      cdsGridData_VALUE_GAINED_PLAN.AsFloat -
      ( cdsGridDataPLAN_SECONDARY_VALUE_INVESTED.AsFloat *
        cdsGridDataPLAN_QUANTITY.AsFloat
      );

  if cdsGridData_VALUE_GAINED_REAL.IsNull or
     cdsGridDataSECONDARY_VALUE_INVESTED.IsNull or
     cdsGridDataQUANTITY.IsNull then
    cdsGridData_VALUE_ADDED_REAL.Clear
  else
    cdsGridData_VALUE_ADDED_REAL.AsFloat:=
      cdsGridData_VALUE_GAINED_REAL.AsFloat -
      ( cdsGridDataSECONDARY_VALUE_INVESTED.AsFloat *
        cdsGridDataQUANTITY.AsFloat
      );

  if cdsGridData_VALUE_ADDED_REAL.IsNull or
     cdsGridData_VALUE_ADDED_PLAN.IsNull then
    cdsGridData_VALUE_ADDED_DIFF.Clear
  else
    cdsGridData_VALUE_ADDED_DIFF.AsFloat:=
      cdsGridData_VALUE_ADDED_REAL.AsFloat -
      cdsGridData_VALUE_ADDED_PLAN.AsFloat;

  if (cdsGridData_VALUE_GAINED_REAL.AsFloat = 0) or
     cdsGridData_VALUE_ADDED_REAL.IsNull then
    cdsGridData_VALUE_ADDED_REAL_PCT.Clear
  else
    cdsGridData_VALUE_ADDED_REAL_PCT.AsFloat:=
      cdsGridData_VALUE_ADDED_REAL.AsFloat /
      cdsGridData_VALUE_GAINED_REAL.AsFloat;

  CalcAccountQuantityField(cdsGridData_PLAN_ACCOUNT_QUANTITY, cdsGridDataPLAN_QUANTITY);
  CalcAccountQuantityField(cdsGridData_SHIPMENT_OUT_ACCOUNT_QUANTITY, cdsGridDataSHIPMENT_OUT_QUANTITY);
  CalcAccountQuantityField(cdsGridData_ACCOUNT_QUANTITY, cdsGridDataQUANTITY);

  CalcInvoiceBasePriceField(cdsGridData_BASE_INVOICE_SINGLE_PRICE, cdsGridDataINVOICE_SINGLE_PRICE);
  CalcInvoiceBasePriceField(cdsGridData_BASE_INVOICE_TOTAL_PRICE, cdsGridDataINVOICE_TOTAL_PRICE);

  cdsGridData_BASE_INVOICE_CURRENCY_ABBREV.AsString:= LoginContext.BaseCurrencyAbbrev;

  if cdsGridDataIMPORT_PLAN_DATE.IsNull then
    cdsGridData_IMPORT_DATE_DIFF.Clear
  else
    begin
      if cdsGridDataIMPORT_DATE.IsNull then
        cdsGridData_IMPORT_DATE_DIFF.AsFloat:=
          cdsGridDataIMPORT_PLAN_DATE.AsDateTime -
          ContextDate()
      else
        cdsGridData_IMPORT_DATE_DIFF.AsFloat:=
          cdsGridDataIMPORT_PLAN_DATE.AsDateTime -
          cdsGridDataIMPORT_DATE.AsDateTime;
    end;
end;

procedure TfmSaleShipments.cdsGridDataSHIPMENT_PLAN_DATEChange(
  Sender: TField);
var
  d: TDateTime;
begin
  inherited;
  if (cdsGridDataSHIPMENT_PLAN_DATE.AsDateTime > ContextDate()) then
    d:= ContextDate()
  else
    d:= cdsGridDataSHIPMENT_PLAN_DATE.AsDateTime;

  cdsGridDataPLAN_SECONDARY_CURRENCY_RATE.AsVariant:=
    FloatToVar(
      dmMain.SvrCommon.GetSecondaryCurrencyFixing(
        cdsGridData.DataSetField.DataSet.FieldByName('CURRENCY_CODE').AsInteger,
        d
      )
    );
end;

procedure TfmSaleShipments.cdsGridDataSHIPMENT_DATEChange(Sender: TField);
begin
  inherited;
  cdsGridDataREAL_SECONDARY_CURRENCY_RATE.AsVariant:=
    FloatToVar(
      dmMain.SvrCommon.GetSecondaryCurrencyFixing(
        cdsGridDataINVOICE_CURRENCY_CODE.AsInteger,
        cdsGridDataSHIPMENT_DATE.AsDateTime
      )
    );
end;

procedure TfmSaleShipments.cdsGridDataINVOICE_CURRENCY_CODEChange(
  Sender: TField);
begin
  inherited;
  cdsGridDataREAL_SECONDARY_CURRENCY_RATE.AsVariant:=
    FloatToVar(
      dmMain.SvrCommon.GetSecondaryCurrencyFixing(
        cdsGridDataINVOICE_CURRENCY_CODE.AsInteger,
        cdsGridDataSHIPMENT_DATE.AsDateTime
      )
    );
  UpdateInvoiceCurrencyFixing;
end;

procedure TfmSaleShipments.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if not FNeedsInitialUpdate then
    cdsGridDataSALE_SHIPMENT_STATE_CODE.Clear;

  if cdsGridDataQUANTITY.IsNull then
    cdsGridDataCHECK_QUANTITY.AsFloat:= cdsGridDataPLAN_QUANTITY.AsFloat
  else
    cdsGridDataCHECK_QUANTITY.AsFloat:= cdsGridDataQUANTITY.AsFloat;
end;

procedure TfmSaleShipments.cdsGridDataBeforeDelete(DataSet: TDataSet);
begin
  dmDocClient.DSDeleteDoc(cdsGridData);

  inherited;
end;

procedure TfmSaleShipments.navDataBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (cdsGridData.DataSetField.DataSet as TAbmesClientDataSet).ReadOnly or
     ((Button = nbDelete) and (cdsGridData.RecNo = 1)) then
    Abort;

  inherited;
end;

procedure TfmSaleShipments.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnDocs, dotSaleShipment, cdsGridData);
end;

procedure TfmSaleShipments.cdsGridDataSALE_SHIPMENT_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= SaleStateDisplayText(Sender.AsInteger, 50, Canvas);
end;

procedure TfmSaleShipments.actFormUpdate(Sender: TObject);
var
  IsLease: Boolean;
begin
  inherited;
  if FNeedsInitialUpdate then
    begin
      FNeedsInitialUpdate:= False;
      FShipmentsModified:= False;
      if (FShipmentNo > 0) then
        cdsGridData.Locate('SALE_SHIPMENT_NO', FShipmentNo, []);
    end;

  IsLease:= (dsSale.DataSet.FieldByName('SALE_DEAL_TYPE_CODE').AsInteger = sdtLease);

  if (IsLease <> FPrevIsLease) then
   SetVisibleColumns;
  FPrevIsLease:= IsLease;

  pnlAccountQuantity.Visible:= not IsLease;
  pnlLease.Visible:= IsLease;
end;

procedure TfmSaleShipments.ShipmentsPercentFieldGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmSaleShipments.cdsGridData_SUM_INVOICE_TOTAL_PRICEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull or
     (VarToInt(cdsGridData_MIN_INVOICE_CURRENCY_CODE.AsVariant) =
      VarToInt(cdsGridData_MAX_INVOICE_CURRENCY_CODE.AsVariant)) then
    NumericFieldGetText(Sender, Text, DisplayText)
  else
    Text:= SDifferentCurrencies;
end;

procedure TfmSaleShipments.cdsGridData_MIN_INVOICE_CURRENCY_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if (VarToInt(cdsGridData_MIN_INVOICE_CURRENCY_CODE.AsVariant) =
      VarToInt(cdsGridData_MAX_INVOICE_CURRENCY_CODE.AsVariant)) then
    Text:= VarToStr(cdsCurrencies.Lookup('CURRENCY_CODE', Sender.AsVariant, 'CURRENCY_ABBREV'))
  else
    Text:= '';
end;

procedure TfmSaleShipments.cdsGridData_MIN_SALE_SHIPMENT_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if FShipmentsModified and not FNeedsInitialUpdate then
    Text:= ''
  else
    Text:= SaleStateDisplayText(VarToInt(Sender.AsVariant), 50, Canvas);
end;

procedure TfmSaleShipments.SetVisibleColumns;
var
  IsLease: Boolean;
  Prefix: string;
begin
  IsLease:= (dsSale.DataSet.FieldByName('SALE_DEAL_TYPE_CODE').AsInteger = sdtLease);

  grdData.Columns[2].Visible:= not IsLease;  // SHIPMENT_PLAN_DATE
  grdData.Columns[3].Visible:= (not IsLease) and sbtnWorkMeasure.Down;  // PLAN_QUANTITY
  grdData.Columns[4].Visible:= (not IsLease) and sbtnAccountMeasure.Down;  // _PLAN_ACCOUNT_QUANTITY
  grdData.Columns[5].Visible:= IsLease;  // RECEIVE_PLAN_DATE
  grdData.Columns[6].Visible:= IsLease;  // LEASE_PLAN_DATE_UNIT_QTY
  grdData.Columns[9].Visible:= (not IsLease) and sbtnWorkMeasure.Down;  // SHIPMENT_OUT_QUANTITY
  grdData.Columns[10].Visible:= (not IsLease) and sbtnAccountMeasure.Down;  // _SHIPMENT_OUT_ACCOUNT_QUANTITY
  grdData.Columns[11].Visible:= IsLease;  // IMPORT_DATE
  grdData.Columns[12].Visible:= IsLease;  // _IMPORT_DATE_DIFF
  grdData.Columns[13].Visible:= (not IsLease) and sbtnWorkMeasure.Down;  // QUANTITY
  grdData.Columns[14].Visible:= (not IsLease) and sbtnAccountMeasure.Down;  // _ACCOUNT_QUANTITY
  grdData.Columns[15].Visible:= IsLease;  // LEASE_DATE_UNIT_QTY
  grdData.Columns[16].Visible:= not actToggleCurrency.Checked;  // INVOICE_SINGLE_PRICE
  grdData.Columns[17].Visible:= actToggleCurrency.Checked;  // _BASE_INVOICE_SINGLE_PRICE
  grdData.Columns[18].Visible:= not actToggleCurrency.Checked;  // INVOICE_TOTAL_PRICE
  grdData.Columns[19].Visible:= actToggleCurrency.Checked;  // _BASE_INVOICE_TOTAL_PRICE
  grdData.Columns[20].Visible:= not actToggleCurrency.Checked;  // _INVOICE_CURRENCY_ABBREV
  grdData.Columns[21].Visible:= actToggleCurrency.Checked;  // _BASE_INVOICE_CURRENCY_ABBREV

  grdData.Columns[23].Visible:= not IsLease;  // IS_PROFORM_INVOICE

  if sbtnAccountMeasure.Down then
    Prefix:= '_ACCOUNT_'
  else
    Prefix:= '';

  edtSinglePrice.DataField:= Prefix + 'SINGLE_PRICE';
  txtSinglePriceMeasureAbbrev.DataField:= Prefix + 'MEASURE_ABBREV';
end;

procedure TfmSaleShipments.sbtnWorkMeasureClick(Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmSaleShipments.sbtnAccountMeasureClick(Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmSaleShipments.cdsGridDataINVOICE_DATEChange(Sender: TField);
begin
  inherited;
  UpdateInvoiceCurrencyFixing;
end;

procedure TfmSaleShipments.cdsGridDataINVOICE_NOChange(Sender: TField);
begin
  inherited;
  if cdsGridDataINVOICE_NO.IsNull then
    cdsGridDataIS_PROFORM_INVOICE.Clear;
end;

procedure TfmSaleShipments.UpdateInvoiceCurrencyFixing;
begin
  cdsGridDataINVOICE_CURRENCY_FIXING.AsVariant:=
    FloatToVar(
      dmMain.SvrCommon.GetBaseCurrencyFixing(
        cdsGridDataINVOICE_CURRENCY_CODE.AsInteger,
        cdsGridDataINVOICE_DATE.AsDateTime
      )
    );
end;

procedure TfmSaleShipments.actPrintExecute(Sender: TObject);
begin
  // do not call inherited

  // force calc fields
  with dsSale.DataSet do
    begin
      First;
      Last;
      First;
    end;
    
  TrptSale.PrintReport(cdsGridData, dsSale.DataSet);
end;

procedure TfmSaleShipments.actToggleCurrencyExecute(Sender: TObject);
begin
  inherited;

  with (Sender as TAction) do
    Checked:= not Checked;

  SetVisibleColumns;
end;

procedure TfmSaleShipments.actToggleQuantityDiffMeasureExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
end;

procedure TfmSaleShipments.actToggleQuantityDiffMeasureUpdate(Sender: TObject);
begin
  inherited;
  with (Sender as TAction), dsSale.DataSet do
    begin
      edtQuantityDiff.DataField:=
        IfThen(Checked, cdsGridData_REMAINING_SUM_QUANTITY_PERCENT.FieldName, cdsGridData_REMAINING_SUM_QUANTITY.FieldName);
      txtQuantityDiffMeasure.DataField:=
        IfThen(Checked, FieldByName('_PERCENT_TEXT').FieldName, FieldByName('_MEASURE_ABBREV').FieldName);
    end;  { with }
end;

end.

