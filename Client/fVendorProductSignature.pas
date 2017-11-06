unit fVendorProductSignature;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  AbmesClientDataSet, Menus, JvButtons,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, JvComponent,
  JvCaptionButton, JvComponentBase, fPartnerFieldEditFrame;

type
  TfmVendorProductSignature = class(TEditForm)
    bvlMain: TBevel;
    lblProductSignature: TLabel;
    edtProductSignature: TDBEdit;
    frProduct: TfrProductFieldEditFrame;
    frCompany: TfrPartnerFieldEditFrame;
    procedure FormShow(Sender: TObject);
  private
    FHasProductOnOpen: Boolean;
    FHasCompanyOnOpen: Boolean;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    { Public declarations }
  end;

implementation

uses
  fTreeSelectForm, uClientTypes;

{$R *.DFM}

{ TfmVendorProductSignature }

procedure TfmVendorProductSignature.FormShow(Sender: TObject);
begin
  inherited;
  frProduct.TreeDetailSelection:= tdsInstance;
  frCompany.FieldNames:= 'COMPANY_CODE';
  FHasProductOnOpen:= not dsData.DataSet.FieldByName('PRODUCT_CODE').IsNull;
  FHasCompanyOnOpen:= not dsData.DataSet.FieldByName('COMPANY_CODE').IsNull;
end;

procedure TfmVendorProductSignature.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProduct) then
    frProduct.ReadOnly:= (EditMode <> emInsert) or FHasProductOnOpen
  else
    if (AFrame = frCompany) then
      frCompany.ReadOnly:= (EditMode <> emInsert) or FHasCompanyOnOpen
    else
      inherited;
end;

end.
