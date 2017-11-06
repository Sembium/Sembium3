unit fBaseGroupsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelFilterForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, AbmesFields, JvDBLookup,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fProductFieldEditFrame,
  JvComponent, JvCaptionButton, JvExControls, JvComponentBase, fTreeNodeFilter,
  fProductFilter, fParamProductFilter, DBCtrls;

type
  TfmBaseGroupsFilter = class(TBevelFilterForm)
    frGroupDept: TfrDeptFieldEditFrame;
    frJoinedProduct: TfrParamProductFilter;
    gbCandidatesFilter: TGroupBox;
    frCandidateProduct: TfrParamProductFilter;
    rgFlowsThroughDept: TDBRadioGroup;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uClientTypes, fBaseGroupsCandidateProductsFilter;

{$R *.dfm}

{ TfmBaseGroupsFilter }

procedure TfmBaseGroupsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frGroupDept.FieldNames:= 'GROUP_DEPT_CODE';
  frGroupDept.ShowAllWhenEmpty:= False;

  frJoinedProduct.FieldNames:= 'CHOSEN_PRODUCTS';
  frCandidateProduct.FieldNames:= 'CANDIDATE_CHOSEN_PRODUCTS';
end;

end.
