unit fSaleQuantities;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, Db, ImgList, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesFields, Menus,
  JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmSaleQuantities = class(TGridForm)
    pdsGridDataParamsGROUP_BY_CLIENT: TAbmesFloatField;
    pdsGridDataParamsSHOW_INSTANCES: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCLIENT_COMPANY_CODE: TAbmesFloatField;
    pnlPrintButton: TPanel;
    pdsGridDataParamsSALES_LEVEL: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataTOTAL_WANTED_QUANTITY: TAbmesFloatField;                                                   
    cdsGridDataTOTAL_WANTED_SECONDARY_PRICE: TAbmesFloatField;
    cdsGridDataMIN_WANTED_NO_RATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataTOTAL_CONTRACTED_QUANTITY: TAbmesFloatField;
    cdsGridDataTOTAL_CONTRACTED_SEC_PRICE: TAbmesFloatField;
    cdsGridDataMIN_CONTRACTED_NO_RATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataTOTAL_SHIPPED_QUANTITY: TAbmesFloatField;
    cdsGridDataTOTAL_SHIPPED_SECONDARY_PRICE: TAbmesFloatField;
    cdsGridDataMIN_SHIPMENT_NO_RATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataTOTAL_INVOICE_QUANTITY: TAbmesFloatField;
    cdsGridDataTOTAL_INVOICE_SECONDARY_PRICE: TAbmesFloatField;
    cdsGridDataMIN_INVOICE_NO_RATE_DATE: TAbmesSQLTimeStampField;
    cdsGridData_TOTAL_WANTED_QUANTITY_SUM: TAggregateField;
    cdsGridData_TOTAL_CONTRACTED_QUANTITY_SUM: TAggregateField;
    cdsGridData_TOTAL_SHIPPED_QUANTITY_SUM: TAggregateField;
    cdsGridData_TOTAL_INVOICE_QUANTITY_SUM: TAggregateField;
    cdsGridData_TOTAL_WANTED_SECONDARY_PRICE_SUM: TAggregateField;
    cdsGridData_TOTAL_CONTRACTED_SECONDARY_PRICE_SUM: TAggregateField;
    cdsGridData_TOTAL_SHIPPED_SECONDARY_PRICE_SUM: TAggregateField;
    cdsGridData_TOTAL_INVOICE_SECONDARY_PRICE_SUM: TAggregateField;
    cdsGridData_MIN_WANTED_NO_RATE_DATE: TAggregateField;
    cdsGridData_MIN_CONTRACTED_NO_RATE_DATE: TAggregateField;
    cdsGridData_MIN_SHIPMENT_NO_RATE_DATE: TAggregateField;
    cdsGridData_MIN_INVOICE_NO_RATE_DATE: TAggregateField;
    cdsGridDataMEASURE_CODE: TAbmesFloatField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_TOTAL_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_MIN_MEASURE_CODE: TAggregateField;
    cdsGridData_MAX_MEASURE_CODE: TAggregateField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataCLIENT_COMPANY_NAME: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    pdsGridDataParams_DATE_INTERVAL: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataTOTAL_WANTED_SECONDARY_PRICEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridDataTOTAL_CONTRACTED_SEC_PRICEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataTOTAL_SHIPPED_SECONDARY_PRICEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridDataTOTAL_INVOICE_SECONDARY_PRICEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_WANTED_SECONDARY_PRICE_SUMGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_CONTRACTED_SECONDARY_PRICE_SUMGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_SHIPPED_SECONDARY_PRICE_SUMGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_INVOICE_SECONDARY_PRICE_SUMGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_X_QUANTITY_SUMGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure cdsGridDataBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    function ShowFilterForm: Boolean; override;
    procedure SetGrid;
  public
    { Public declarations }
  end;

implementation

uses
  Variants, dMain, fSaleQuantitiesFilter, uClientTypes, uClientUtils,
  rSaleQuantities, rSaleQuantitiesByClient, uUtils, uTreeClientUtils;

{$R *.DFM}

resourcestring
  SDifferentMeasures = 'разл. м.ед.';

{ TfmSaleQuantities }

procedure TfmSaleQuantities.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmSaleQuantitiesFilter;
  ReportClass:= TrptSaleQuantities;

  with pnlNavigator do
    Caption:= Caption + LoginContext.SecondaryCurrencyAbbrev;

  RegisterFieldsTextVisibility(
    IsSalePriceVisible,
    [ cdsGridDataTOTAL_WANTED_SECONDARY_PRICE,
      cdsGridData_TOTAL_WANTED_SECONDARY_PRICE_SUM,
      cdsGridDataTOTAL_CONTRACTED_SEC_PRICE,
      cdsGridData_TOTAL_CONTRACTED_SECONDARY_PRICE_SUM,
      cdsGridDataTOTAL_SHIPPED_SECONDARY_PRICE,
      cdsGridData_TOTAL_SHIPPED_SECONDARY_PRICE_SUM,
      cdsGridDataTOTAL_INVOICE_SECONDARY_PRICE,
      cdsGridData_TOTAL_INVOICE_SECONDARY_PRICE_SUM]);
end;

function TfmSaleQuantities.ShowFilterForm: Boolean;
begin
  Assert(FilterFormClass = TfmSaleQuantitiesFilter);

  Result:= TfmSaleQuantitiesFilter.ShowForm(dmDocClient, pdsGridDataParams, emEdit);

  if Result then
    SetGrid;
end;

procedure TfmSaleQuantities.SetGrid;
const
  NormalCompanyWidth =  89;
  NormalProductWidth = 150;
  LongProductWidth   = 240;
begin
  with grdData do
    begin
      if cdsGridData.Params.ParamByName('GROUP_BY_CLIENT').AsBoolean then
        begin
          Columns[0].Visible:= True;
          Columns[0].Width:= NormalCompanyWidth;
          Columns[1].Width:= NormalProductWidth;
        end
      else   { if }
        begin
          Columns[0].Visible:= False;
          Columns[1].Width:= LongProductWidth;
        end;   { if }
    end;   { with }
end;

procedure TfmSaleQuantities.actPrintExecute(Sender: TObject);
begin
  if cdsGridData.Params.ParamByName('GROUP_BY_CLIENT').AsBoolean then
    ReportClass:= TrptSaleQuantitiesByClient
  else
    ReportClass:= TrptSaleQuantities;

  inherited;
end;

procedure TfmSaleQuantities.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if (VarToInt(cdsGridData_MIN_MEASURE_CODE.AsVariant) =
      VarToInt(cdsGridData_MAX_MEASURE_CODE.AsVariant)) then
    cdsGridData_TOTAL_MEASURE_ABBREV.Assign(cdsGridDataMEASURE_ABBREV)
  else
    cdsGridData_TOTAL_MEASURE_ABBREV.Clear;
end;

procedure TfmSaleQuantities.cdsGridDataTOTAL_WANTED_SECONDARY_PRICEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataMIN_WANTED_NO_RATE_DATE);
end;

procedure TfmSaleQuantities.cdsGridDataTOTAL_CONTRACTED_SEC_PRICEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataMIN_CONTRACTED_NO_RATE_DATE);
end;

procedure TfmSaleQuantities.cdsGridDataTOTAL_SHIPPED_SECONDARY_PRICEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataMIN_SHIPMENT_NO_RATE_DATE);
end;

procedure TfmSaleQuantities.cdsGridDataTOTAL_INVOICE_SECONDARY_PRICEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridDataMIN_INVOICE_NO_RATE_DATE);
end;

procedure TfmSaleQuantities.cdsGridData_TOTAL_WANTED_SECONDARY_PRICE_SUMGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridData_MIN_WANTED_NO_RATE_DATE);
end;

procedure TfmSaleQuantities.cdsGridData_TOTAL_CONTRACTED_SECONDARY_PRICE_SUMGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridData_MIN_CONTRACTED_NO_RATE_DATE);
end;

procedure TfmSaleQuantities.cdsGridData_TOTAL_SHIPPED_SECONDARY_PRICE_SUMGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridData_MIN_SHIPMENT_NO_RATE_DATE);
end;

procedure TfmSaleQuantities.cdsGridData_TOTAL_INVOICE_SECONDARY_PRICE_SUMGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    SetPriceFieldText(Text, Sender, cdsGridData_MIN_INVOICE_NO_RATE_DATE);
end;

procedure TfmSaleQuantities.cdsGridData_TOTAL_X_QUANTITY_SUMGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
var
  s: string;
begin
  inherited;
  
  if DisplayText then
    begin
      if (VarToInt(cdsGridData_MIN_MEASURE_CODE.AsVariant) <> VarToInt(cdsGridData_MAX_MEASURE_CODE.AsVariant)) then
        s:= SDifferentMeasures
      else
        with Sender as TAggregateField do
          if VarIsNull(AsVariant) then
            s:= ''
          else
            s:= FormatFloat(DisplayFormat, VarToFloat(AsVariant));

      Text:= s;
    end;
end;

procedure TfmSaleQuantities.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if ( (not (gdSelected in State)) or
       (ActiveControl <> Sender) ) and
     ( ( (Column.Field.FieldName = 'TOTAL_WANTED_SECONDARY_PRICE') and
         (not cdsGridDataMIN_WANTED_NO_RATE_DATE.IsNull) ) or
       ( (Column.Field.FieldName = 'TOTAL_CONTRACTED_SEC_PRICE') and
         (not cdsGridDataMIN_CONTRACTED_NO_RATE_DATE.IsNull) ) or
       ( (Column.Field.FieldName = 'TOTAL_SHIPPED_SECONDARY_PRICE') and
         (not cdsGridDataMIN_SHIPMENT_NO_RATE_DATE.IsNull) ) or
       ( (Column.Field.FieldName = 'TOTAL_INVOICE_SECONDARY_PRICE') and
         (not cdsGridDataMIN_INVOICE_NO_RATE_DATE.IsNull) ) ) then
    Background:= cl3DLight;
end;

procedure TfmSaleQuantities.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;
  CheckRequiredFields(pdsGridDataParams, 'BEGIN_DATE; END_DATE');
end;

procedure TfmSaleQuantities.cdsGridDataBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= PackageParams(cdsGridData.Params);
end;

procedure TfmSaleQuantities.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams_DATE_INTERVAL.AsString:=
    dmMain.GetDateIntervalAsString(pdsGridDataParamsBEGIN_DATE.AsDateTime, pdsGridDataParamsEND_DATE.AsDateTime)
end;

end.
