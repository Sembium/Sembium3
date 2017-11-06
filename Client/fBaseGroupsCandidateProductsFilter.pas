unit fBaseGroupsCandidateProductsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvDBLookup, Buttons,
  StdCtrls, ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFilter,
  fProductFilter, fParamProductFilter, DBCtrls;

type
  TfmBaseGroupsCandidateProductsFilter = class(TFilterForm)
    frCandidateProduct: TfrParamProductFilter;
    rgFlowsThroughDept: TDBRadioGroup;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfmBaseGroupsCandidateProductsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frCandidateProduct.FieldNames:= 'CANDIDATE_CHOSEN_PRODUCTS';
end;

end.
