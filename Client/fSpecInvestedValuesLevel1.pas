unit fSpecInvestedValuesLevel1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, DB, AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, dMain, fBaseFrame,
  fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fProductExFieldEditFrame, Mask, fDateFieldEditFrame, uProducts, uUtils;

type
  TfmSpecInvestedValuesLevel1 = class(TGridForm)
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataLINE_COUNT: TAbmesFloatField;
    cdsGridDataPRECISION_LEVEL_NO: TAbmesFloatField;
    cdsGridDataTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataTECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataTOTAL_PRODUCT_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataPRODUCT_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataPRODUCT_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataPRODUCT_TOTAL_PRICE_PCT: TAbmesFloatField;
    pdsGridDataParamsRESULT_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    pdsGridDataParamsTHE_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    pnlFilter: TPanel;
    frProduct: TfrProductExFieldEditFrame;
    gbDate: TGroupBox;
    frDate: TfrDateFieldEditFrame;
    gbResultProductTechQuantity: TGroupBox;
    edtResultProductTechQuantity: TDBEdit;
    cdsGridData_SUM_PRODUCT_TOTAL_PRICE: TAggregateField;
    pdsPrintParams: TAbmesClientDataSet;
    pdsPrintParamsTHE_DATE: TAbmesWideStringField;
    pdsPrintParamsSPEC_PRODUCT_NAME: TAbmesWideStringField;
    pdsPrintParamsSPEC_PRODUCT_NO: TAbmesWideStringField;
    pdsPrintParamsTECH_MEASURE_ABBREV: TAbmesWideStringField;
    pdsPrintParamsRESULT_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataPRODUCT_TOTAL_PRICE_PCTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actPrintExecute(Sender: TObject);
  private
    FProductClass: TProductClass;
    { Private declarations }
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    { Public declarations }
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  uTreeClientUtils, uClientUtils, rSpecInvestedValuesLevel1;

{$R *.dfm}

procedure TfmSpecInvestedValuesLevel1.actPrintExecute(Sender: TObject);
begin
  pdsPrintParams.TempCreateDataSet /
    procedure begin
      pdsPrintParams.AppendRecord([
        frProduct.edtTreeNodeNo.Text,
        frProduct.edtTreeNodeName.Text,
        pdsGridDataParamsRESULT_PRODUCT_TECH_QUANTITY.AsVariant,
        frProduct.edtTechMeasure.Text,
        pdsGridDataParamsTHE_DATE.DisplayText
      ]);

      TrptSpecInvestedValuesLevel1.PrintReport(cdsGridData, pdsPrintParams);
    end;
end;

procedure TfmSpecInvestedValuesLevel1.cdsGridDataPRODUCT_TOTAL_PRICE_PCTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmSpecInvestedValuesLevel1.FormCreate(Sender: TObject);
begin
  inherited;

  ReportClass:= TrptSpecInvestedValuesLevel1;

  FProductClass:= pcNormal;

  SetBaseCurrencyAbbrevColumnCaption(grdData.Columns[7]);
  SetBaseCurrencyAbbrevColumnCaption(grdData.Columns[8]);

  frDate.FieldNames:= 'THE_DATE';
  frDate.SetDataSet(pdsGridDataParams);

  frProduct.FieldNames:= 'SPEC_PRODUCT_CODE';
  frProduct.SetDataSet(pdsGridDataParams);
  frProduct.SpecStateVisible:= True;
  frProduct.MeasureVisible:= False;
  frProduct.TechMeasureVisible:= True;
  frProduct.CommonStatusVisible:= False;
  frProduct.ProductOriginVisible:= False;
  frProduct.PartnerProductNamesVisible:= False;
  frProduct.PriorityVisible:= False;
  frProduct.VIMButtonVisible:= False;
  frProduct.ProductPeriodsButtonVisible:= False;

  RegisterDateFields(pdsGridDataParams);

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridDataPRODUCT_SINGLE_PRICE,
      cdsGridDataPRODUCT_TOTAL_PRICE,
      cdsGridData_SUM_PRODUCT_TOTAL_PRICE,
      cdsGridDataPRODUCT_TOTAL_PRICE_PCT]);
end;

procedure TfmSpecInvestedValuesLevel1.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= True;
end;

end.
