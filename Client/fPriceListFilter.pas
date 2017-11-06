unit fPriceListFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvComponent,
  JvDBLookup, Buttons, StdCtrls, ExtCtrls, fDateUnitsIntervalEditFrame,
  fCompanyFilter, fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFilter,
  fProductFilter, fParamProductFilter, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fProductExFieldEditFrame, fPartnerFieldEditFrame,
  fPartnerExFieldEditFrame, DBCtrls, uProducts, JvExStdCtrls, JvCombobox,
  JvDBCombobox, fFilterFrame, fTreeNodeGridFilter, uParRelProducts,
  AbmesDBCheckBox;

type
  TfmPriceListFilter = class(TFilterForm)
    pnlTop: TPanel;
    pnlProducts: TPanel;
    frParamProductFilter: TfrParamProductFilter;
    pnlCompanies: TPanel;
    frCompanyFilter: TfrCompanyFilter;
    frDateUnitsInterval: TfrDateUnitsIntervalEditFrame;
    pnlObject: TPanel;
    pnlPartner: TPanel;
    frPartner: TfrPartnerExFieldEditFrame;
    pnlProduct: TPanel;
    frProduct: TfrProductExFieldEditFrame;
    gbObtainmentType: TGroupBox;
    cbObtainmentType: TJvDBLookupCombo;
    pnlOrientation: TPanel;
    gbOrientation: TGroupBox;
    cbOrientation: TJvDBComboBox;
    gbRequirePrpp: TGroupBox;
    cbRequirePrpp: TJvDBComboBox;
    gbShowEmptyLines: TGroupBox;
    chbShowEmptyLines: TAbmesDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
  protected
    function GetOriginalFormCaption: string; override;
    function GetDBFrameReadOnly(AFrame: TDBFrame): Boolean; override;
    function GetFilterFormVariantCode: Integer; override;
  public
    procedure Initialize; override;
  end;

resourcestring
  SPartnerCaptionSuffix = '%BorderRelTypeMultiAction%';
  SProductCaptionSuffix = '%ProductClassName% в Процес "%BorderRelTypeMultiAction%"';

const
  ParRelProductsOrientationCaptionSuffixes: array[TParRelProductsOrientation] of string =
    (SPartnerCaptionSuffix, SProductCaptionSuffix);

implementation

uses
  uClientUtils, uBorderRelTypes, uProductionOrderTypes,
  uComboBoxUtils, fTreeSelectForm;

{$R *.dfm}

resourcestring
  SCaptionPrefix = 'Филтър на Ценова Листа за ';

{ TfmPriceListFilter }

procedure TfmPriceListFilter.actFormUpdate(Sender: TObject);
var
  ParRelProductsOrientation: TParRelProductsOrientation;
begin
  inherited;

  ParRelProductsOrientation:=
    IntToParRelProductsOrientation(
      dsData.DataSet.FieldByName('PAR_REL_PRODUCT_ORIENTATION').AsInteger);

  pnlPartner.Visible:= (ParRelProductsOrientation = prpoPartner);
  pnlProduct.Visible:= (ParRelProductsOrientation = prpoProduct);
  pnlCompanies.Visible:= (ParRelProductsOrientation = prpoProduct);
  pnlProducts.Visible:= (ParRelProductsOrientation = prpoPartner);

  gbObtainmentType.Visible:=
    (FProductClass = pcNormal);

  SetControlReadOnly(dsData.DataSet.FieldByName(cbOrientation.DataField).ReadOnly, ReplacedDBComboBox(cbOrientation));
  SetControlReadOnly(cbObtainmentType.Field.ReadOnly, cbObtainmentType);
end;

procedure TfmPriceListFilter.FormCreate(Sender: TObject);
begin
  inherited;

  frCompanyFilter.FieldNames:= 'CHOSEN_COMPANIES';
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frDateUnitsInterval.FieldNames:= 'DATE_UNIT_CODE; BEGIN_DATE; DATE_UNIT_COUNT';

  frProduct.FieldNames:= 'PRODUCT_CODE';
  frProduct.TreeDetailSelection:= tdsInstance;
  frProduct.DocButtonVisible:= True;
  frProduct.SpecStateVisible:= True;
  frProduct.PriorityVisible:= True;
  frProduct.MeasureVisible:= True;
  frProduct.CommonStatusVisible:= False;
  frProduct.ProductOriginVisible:= False;
  frProduct.PartnerProductNamesVisible:= False;
  frProduct.ProductPeriodsButtonVisible:= False;

  frPartner.FieldNames:= 'PARTNER_CODE';
  frPartner.PartnerStatusVisible:= True;
  frPartner.CountryVisible:= False;
  frPartner.ParRelButtonVisible:= False;
end;

procedure TfmPriceListFilter.FormShow(Sender: TObject);
begin
  inherited;

  frProduct.ShowAllWhenEmpty:= False;
  frPartner.ShowAllWhenEmpty:= False;
  RefreshDBEdit(frProduct.edtTreeNodeName);

  actForm.Update;
end;

function TfmPriceListFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= dsData.DataSet.FieldByName('BORDER_REL_TYPE_CODE').AsInteger;
end;

function TfmPriceListFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmPriceListFilter.Initialize;
var
  MsgParams: TStrings;
  BorderRelType: TBorderRelType;
begin
  FProductClass:=
    IntToProductClass(dsData.DataSet.FieldByName('PRODUCT_CLASS_CODE').AsInteger);

  frParamProductFilter.ProductClass:= FProductClass;
  frProduct.ProductClass:= FProductClass;

  inherited;

  BorderRelType:=
    IntToBorderRelType(dsData.DataSet.FieldByName('BORDER_REL_TYPE_CODE').AsInteger);

  frPartner.PriorityCompanyKind:= BorderRelTypeToCompanyKind(BorderRelType);
  frPartner.FilterCompanyKind:= BorderRelTypeToCompanyKind(BorderRelType);

  gbRequirePrpp.Visible:= (BorderRelType = brtClient);

  actForm.Caption:=
    SCaptionPrefix +
    ParRelProductsOrientationCaptionSuffixes[
      IntToParRelProductsOrientation(dsData.DataSet.FieldByName('PAR_REL_PRODUCT_ORIENTATION').AsInteger)];

  MsgParams:=
    CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      BorderRelType,
      pobtSaleCover,
      IntToParRelProductsOrientation(dsData.DataSet.FieldByName('PAR_REL_PRODUCT_ORIENTATION').AsInteger),
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

function TfmPriceListFilter.GetDBFrameReadOnly(AFrame: TDBFrame): Boolean;
begin
  if ((AFrame = frPartner) or (AFrame = frProduct)) and
     ((AFrame as TFieldEditFrame).FieldCount > 0) and
     Assigned((AFrame as TFieldEditFrame).Fields[0]) and
     (AFrame as TFieldEditFrame).Fields[0].ReadOnly then
    Exit(True);

  Result:= inherited GetDBFrameReadOnly(AFrame);
end;

end.
