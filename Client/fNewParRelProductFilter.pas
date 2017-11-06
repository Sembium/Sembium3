unit fNewParRelProductFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, fBaseFrame, fDBFrame,
  fFieldEditFrame, fPartnerFieldEditFrame, fEditForm, AbmesFields,
  JvExControls, JvComponent, JvDBLookup, uBorderRelTypes, uProducts;

type
  TfmNewParRelProductFilter = class(TFilterForm)
    frPartner: TfrPartnerFieldEditFrame;
    frProduct: TfrProductFieldEditFrame;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FBorderRelType: TBorderRelType;
    FOriginalFormCaption: string;
  protected
    procedure DoApplyUpdates; override;
    function GetOriginalFormCaption: string; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uClientUtils, uUtils, uParRelProducts, uBorderRelTypeClientUtils, dMain,
  uProductionOrderTypes, uProductClientUtils, uBOIOrderTypes, uCompanyClasses;

resourcestring
  SParRelDoesNotExist = 'За този партньор не е зададена пазарна роля %s';
  SProductBorderRelDoesNotExist = 'За този %s не е зададена процесна позиция за %s';

{$R *.dfm}

{ TfmNewParRelProductFilter }

procedure TfmNewParRelProductFilter.DoApplyUpdates;
var
  BorderRelTypeCode: Integer;
begin
  CheckRequiredFields(dsData.DataSet, 'PARTNER_CODE; PRODUCT_CODE; BORDER_REL_TYPE_CODE');

  BorderRelTypeCode:= dsData.DataSet.FieldByName('BORDER_REL_TYPE_CODE').AsInteger;

  if not dmMain.SvrCompanies.ParRelExists(
           dsData.DataSet.FieldByName('PARTNER_CODE').AsInteger, BorderRelTypeCode) then
    raise Exception.CreateFmt(SParRelDoesNotExist,
            [BorderRelTypeNames[IntToBorderRelType(BorderRelTypeCode)]]);

  if not dmMain.SvrProductsTree.ProductBorderRelExists(
           dsData.DataSet.FieldByName('PRODUCT_CODE').AsInteger, BorderRelTypeCode) then
    raise Exception.CreateFmt(SProductBorderRelDoesNotExist,
            [ProductClassAbbrevs[FProductClass], BorderRelTypeMultiActions[IntToBorderRelType(BorderRelTypeCode)]]);

  inherited;
end;

procedure TfmNewParRelProductFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frPartner.FieldNames:= 'PARTNER_CODE';
  frPartner.ShownCompanyClasses:= [ccFirm, ccPerson, ccCumulative, ccCommon];
  frProduct.FieldNames:= 'PRODUCT_CODE';
  frProduct.BOIOrderType:= boiotCompany;
end;

procedure TfmNewParRelProductFilter.FormShow(Sender: TObject);
begin
  inherited;
  frPartner.ShowAllWhenEmpty:= False;
  frProduct.ShowAllWhenEmpty:= False;
  RefreshDBEdit(frProduct.edtTreeNodeName);
end;

function TfmNewParRelProductFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmNewParRelProductFilter.Initialize;
var
  MsgParams: TStrings;
begin
  FProductClass:=
    IntToProductClass(dsData.DataSet.FieldByName('PRODUCT_CLASS_CODE').AsInteger);

  FBorderRelType:=
    IntToBorderRelType(dsData.DataSet.FieldByName('BORDER_REL_TYPE_CODE').AsInteger);

  frProduct.ProductClass:= FProductClass;

  inherited;

  MsgParams:=
    uParRelProducts.CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      FBorderRelType,
      pobtSaleCover,
      prpoPartner,
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  frPartner.FilterCompanyKind:= BorderRelTypeToCompanyKind(FBorderRelType);

  FOriginalFormCaption:= actForm.Caption;
end;

end.
