unit fInvoices;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesFields, Menus,
  JvButtons, ComCtrls, ToolWin, JvComponentBase, JvCaptionButton,
  uInvoiceTypes, uClientTypes, dDocClient, DBGridEhGrouping;

type
  TfmInvoices = class(TGridForm)
    cdsGridDataINVOICE_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataINVOICE_CODE: TAbmesFloatField;
    cdsGridDataINVOICE_NO: TAbmesFloatField;
    cdsGridDataINVOICE_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataIS_PROFORM_INVOICE: TAbmesFloatField;
    cdsGridDataINVOICE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSELLER_NAME: TAbmesWideStringField;
    cdsGridDataBUYER_NAME: TAbmesWideStringField;
    pdsGridDataParamsINVOICE_START_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsINVOICE_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsINVOICE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsSELLER_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsBUYER_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_PROFORM_INVOICE: TAbmesFloatField;
    pdsGridDataParamsIS_NOT_PROFORM_INVOICE: TAbmesFloatField;
    pdsGridDataParamsINVOICE_NO: TAbmesFloatField;
    cdsGridDataIS_STORNO_INVOICE: TAbmesFloatField;
    pdsGridDataParamsIS_STORNO_INVOICE: TAbmesFloatField;
    pdsGridDataParamsIS_NOT_STORNO_INVOICE: TAbmesFloatField;
    pdsGridDataParamsBANK_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsACCOUNT: TAbmesFloatField;
    pdsGridDataParamsIS_CASH_PAYMENT: TAbmesFloatField;
    pdsGridDataParamsIS_BANK_ACCOUNT_PAYMENT: TAbmesFloatField;
    btnEditData: TBitBtn;
    cdsGridDataTOTAL_MARKET_PRICE_WITHOUT_VAT: TAbmesFloatField;
    cdsGridDataTOTAL_PRICE_WITHOUT_VAT: TAbmesFloatField;
    cdsGridDataTOTAL_VAT: TAbmesFloatField;
    cdsGridDataTOTAL_PRICE: TAbmesFloatField;
    cdsGridData_SUM_TOTAL_MARKET_PRICE_WITHOUT_VAT: TAggregateField;
    cdsGridData_SUM_TOTAL_PRICE_WITHOUT_VAT: TAggregateField;
    cdsGridData_SUM_TOTAL_VAT: TAggregateField;
    cdsGridData_SUM_TOTAL_PRICE: TAggregateField;
    btnPrices: TSpeedButton;
    cdsGridDataTOTAL_PRICE_DISCOUNT: TAbmesFloatField;
    cdsGridData_SUM_TOTAL_PRICE_DISCOUNT: TAggregateField;
    cdsGridData_COUNT_NULL_PRICES: TAggregateField;
    pdsGridDataParams_IS_PROFORM_INVOICE: TBooleanField;
    pdsGridDataParams_IS_NOT_PROFORM_INVOICE: TBooleanField;
    pdsGridDataParams_IS_STORNO_INVOICE: TBooleanField;
    pdsGridDataParams_IS_NOT_STORNO_INVOICE: TBooleanField;
    pdsGridDataParams_INVOICE_START_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParams_INVOICE_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsPRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsPRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParamsPRODUCT_NO: TAbmesWideStringField;
    btnNotes: TSpeedButton;
    cdsGridDataNOTES: TAbmesWideStringField;
    pdsGridDataParamsIS_PAID: TAbmesFloatField;
    pdsGridDataParamsIS_NOT_PAID: TAbmesFloatField;
    cdsGridDataIS_PAID: TAbmesFloatField;
    cdsGridDataINVOICE_ITEMS_NAMES: TAbmesWideStringField;
    btnInvoiceItems: TSpeedButton;
    pdsGridDataParamsIS_VAT_PAID: TAbmesFloatField;
    pdsGridDataParamsIS_VAT_NOT_PAID: TAbmesFloatField;
    cdsGridData_IS_PAID: TAbmesWideStringField;
    cdsGridDataIS_VAT_PAID: TAbmesFloatField;
    pdsGridDataParamsCURRENCY_CODE: TAbmesFloatField;
    cdsGridDataIS_APPROVED: TAbmesFloatField;
    pdsGridDataParamsIS_APPROVED: TAbmesFloatField;
    pdsGridDataParamsIS_NOT_APPROVED: TAbmesFloatField;
    pdsGridDataParamsMIN_INVOICE_NO: TAbmesFloatField;
    pdsGridDataParamsMAX_INVOICE_NO: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure PriceFieldsGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SwitchButtonsClick(Sender: TObject);
    procedure actInsertRecordUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure SumPricesGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsPRODUCT_CODEChange(Sender: TField);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataTOTAL_PRICE_DISCOUNTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_SUM_TOTAL_PRICE_DISCOUNTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    FInvoiceInOut: TInvoiceInOut;
    procedure SetColumnsVisible;
  protected
    function ShowFilterForm: Boolean; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True; AInvoiceInOut: TInvoiceInOut = iioNone): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True; AInvoiceInOut: TInvoiceInOut = iioNone); reintroduce; virtual;
  end;

implementation

uses
  fInvoicesFilter, dMain, fInvoice, rInvoices, uUtils, uTreeClientUtils,
  rInvoicesWithoutDiscount, uClientDateTime;

{$R *.DFM}

resourcestring
  SNoRateFor = 'н.к.%s';
  SNoRate = 'няма курс';
  SNotAvailable = '***';

{ TfmInvoices }

procedure TfmInvoices.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmInvoicesFilter;
  EditFormClass:= TfmInvoice;

  cdsGridData.Params.ParamByName('INVOICE_START_DATE').Value:= ContextDate;
  cdsGridData.Params.ParamByName('INVOICE_END_DATE').Value:= ContextDate;

  RegisterFieldsTextVisibility(
    IsSalePriceVisible,
    [ cdsGridDataTOTAL_MARKET_PRICE_WITHOUT_VAT,
      cdsGridDataTOTAL_PRICE_DISCOUNT,
      cdsGridDataTOTAL_PRICE_WITHOUT_VAT,
      cdsGridDataTOTAL_VAT,
      cdsGridDataTOTAL_PRICE]);
end;

procedure TfmInvoices.PriceFieldsGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if Sender.DataSet.IsEmpty then
    Text:= ''
  else
    if Sender.IsNull then
      Text:= Format(SNoRateFor, [cdsGridDataINVOICE_DATE.AsString])
    else
      begin
        if (Sender.AsFloat = 0) then
          Text:= ''
        else
          Text:= FormatFloat((Sender as TAbmesFloatField).DisplayFormat, Sender.AsFloat);
      end;
end;

procedure TfmInvoices.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  with Column.Field do
    begin
      if ( (FieldName = 'TOTAL_MARKET_PRICE_WITHOUT_VAT') or
           (FieldName = 'TOTAL_PRICE_WITHOUT_VAT') or
           (FieldName = 'TOTAL_VAT') or
           (FieldName = 'TOTAL_PRICE_DISCOUNT') or
           (FieldName = 'TOTAL_PRICE') ) and
         IsNull and
         IsSalePriceVisible then
        AFont.Color:= clRed;

      if (FieldName = '_IS_PAID') and
         (cdsGridDataIS_PAID.AsBoolean xor cdsGridDataIS_VAT_PAID.AsBoolean) then
        AFont.Color:= clRed;
    end;
end;

procedure TfmInvoices.SwitchButtonsClick(Sender: TObject);
begin
  inherited;
  SetColumnsVisible;
end;

procedure TfmInvoices.SetColumnsVisible;
begin
  grdData.Columns[6].Visible:= btnPrices.Down and LoginContext.IsDiscountPercentShown;
  grdData.Columns[7].Visible:= btnPrices.Down and LoginContext.IsDiscountPercentShown;
  grdData.Columns[8].Visible:= btnPrices.Down;
  grdData.Columns[9].Visible:= btnPrices.Down;
  grdData.Columns[10].Visible:= btnPrices.Down;

  grdData.Columns[11].Visible:= btnNotes.Down;

  grdData.Columns[12].Visible:= btnInvoiceItems.Down;

  if btnNotes.Down or btnInvoiceItems.Down then
    grdData.VTitleMargin:= 25
  else
    grdData.VTitleMargin:= 6;
end;

function TfmInvoices.ShowFilterForm: Boolean;
begin
  if FilterFormClass.InheritsFrom(TfmInvoicesFilter) then
    Result:=
      TfmInvoicesFilterClass(FilterFormClass).ShowForm(
        dmDocClient,
        pdsGridDataParams,
        emEdit,
        doNone,
        FInvoiceInOut)
  else
    Result:= inherited ShowFilterForm;
end;

procedure TfmInvoices.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AInvoiceInOut: TInvoiceInOut);
begin
  if (AInvoiceInOut = iioIn) then
    raise Exception.Create('iioIn Invoices are not supported');

  FInvoiceInOut:= AInvoiceInOut;

  case FInvoiceInOut of
    iioIn:
      cdsGridData.Params.ParamByName('BUYER_COMPANY_CODE').AsInteger:= 0;
    iioOut:
      cdsGridData.Params.ParamByName('SELLER_COMPANY_CODE').AsInteger:= 0;
  end;  { case }

  // narochno inherited-a e nakraia - inache se precakva poluchavaneto na parametri otvun

  inherited SetDataParams(
    AdmDocClient,
    ADataSet,
    AEditMode,
    ADefaultsOrigin,
    AFilterFormEnabled);
end;

class function TfmInvoices.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AInvoiceInOut: TInvoiceInOut): Boolean;
var
  f: TfmInvoices;
begin
  f:= CreateEx;
  try
    f.SetDataParams(
      AdmDocClient,
      ADataSet,
      AEditMode,
      ADefaultsOrigin,
      AFilterFormEnabled,
      AInvoiceInOut);

    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmInvoices.actInsertRecordUpdate(Sender: TObject);
begin
//  inherited;
  actInsertRecord.Enabled:= False;
end;

procedure TfmInvoices.FormShow(Sender: TObject);
begin
  inherited;
  SetColumnsVisible;
end;

procedure TfmInvoices.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;
  CheckRequiredFields([pdsGridDataParamsINVOICE_START_DATE, pdsGridDataParamsINVOICE_END_DATE]);
end;

procedure TfmInvoices.SumPricesGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if (VarToFloat(cdsGridData_COUNT_NULL_PRICES.Value) > 0) then
    Text:= SNoRate
  else
    begin
      if not VarIsNullOrEmpty(Sender.Value) then
        Text:= FormatFloat(
          (Sender as TAggregateField).DisplayFormat,
          VarToFloat(Sender.Value))
      else
        Text:= '';
    end;
end;

procedure TfmInvoices.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;

  pdsGridDataParams_IS_PROFORM_INVOICE.AsBoolean:=
    pdsGridDataParamsIS_PROFORM_INVOICE.AsBoolean;

  pdsGridDataParams_IS_NOT_PROFORM_INVOICE.AsBoolean:=
    pdsGridDataParamsIS_NOT_PROFORM_INVOICE.AsBoolean;

  pdsGridDataParams_IS_STORNO_INVOICE.AsBoolean:=
    pdsGridDataParamsIS_STORNO_INVOICE.AsBoolean;

  pdsGridDataParams_IS_NOT_STORNO_INVOICE.AsBoolean:=
    pdsGridDataParamsIS_NOT_STORNO_INVOICE.AsBoolean;

  pdsGridDataParams_INVOICE_START_DATE.AsVariant:=
    pdsGridDataParamsINVOICE_START_DATE.AsVariant;

  pdsGridDataParams_INVOICE_END_DATE.AsVariant:=
    pdsGridDataParamsINVOICE_END_DATE.AsVariant;
end;

procedure TfmInvoices.pdsGridDataParamsPRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  DoProductFieldChanged(pdsGridDataParamsPRODUCT_CODE,
    pdsGridDataParamsPRODUCT_NAME,
    pdsGridDataParamsPRODUCT_NO);
end;

procedure TfmInvoices.cdsGridDataCalcFields(DataSet: TDataSet);
const
  IsPaidString: array [False..True, False..True] of string =
    ( ('', '   √'), ('√', '√√') );
begin
  inherited;

  cdsGridData_IS_PAID.AsString:= IsPaidString[cdsGridDataIS_PAID.AsBoolean, cdsGridDataIS_VAT_PAID.AsBoolean];
end;

procedure TfmInvoices.actFormUpdate(Sender: TObject);
begin
  inherited;
  if LoginContext.IsDiscountPercentShownOnPrint then
    ReportClass:= TrptInvoices
  else
    ReportClass:= TrptInvoicesWithoutDiscount;
end;

procedure TfmInvoices.cdsGridDataTOTAL_PRICE_DISCOUNTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.DataSet.IsEmpty then
    Text:= ''
  else
    PriceFieldsGetText(Sender, Text, DisplayText);
end;

procedure TfmInvoices.cdsGridData_SUM_TOTAL_PRICE_DISCOUNTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.DataSet.IsEmpty then
    Text:= ''
  else
    SumPricesGetText(Sender, Text, DisplayText);
end;

end.
