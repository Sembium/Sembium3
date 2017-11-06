unit fVendorProductSignaturesFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvComponent,
  JvDBLookup, Buttons, StdCtrls, ExtCtrls, fCompanyFilter, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFilter, fProductFilter, fParamProductFilter;

type
  TfmVendorProductSignaturesFilter = class(TFilterForm)
    frProduct: TfrParamProductFilter;
    frCompany: TfrCompanyFilter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

{ TfmVendorProductSignaturesFilter }

procedure TfmVendorProductSignaturesFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frProduct.FieldNames:= 'CHOSEN_PRODUCTS';
  frCompany.FieldNames:= 'CHOSEN_COMPANIES';
end;

end.
