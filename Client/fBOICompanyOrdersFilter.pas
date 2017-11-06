unit fBOICompanyOrdersFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBOIOrdersFilter, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponent, JvCaptionButton, ActnList, JvExControls, JvDBLookup,
  Buttons, StdCtrls, ExtCtrls, fDeptFieldEditFrameBald,
  fDateIntervalFrame, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameLabeled, Mask, DBCtrls, JvExStdCtrls, JvDBCombobox,
  fPartnerFieldEditFrame, JvComponentBase, fTreeNodeFilter, fProductFilter,
  fParamProductFilter, fProductFieldEditFrame, AbmesDBCheckBox;

type
  TfmBOICompanyOrdersFilter = class(TfmBOIOrdersFilter)
    frPartner: TfrPartnerFieldEditFrame;
    gbDocumentIDText: TGroupBox;
    edtDocumentIDText: TDBEdit;
    gbBOIOAccountDate: TGroupBox;
    frBOIOAccountDate: TfrDateIntervalFrame;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }                                              
  end;

implementation

{$R *.dfm}

{ TfmBOICompanyOrdersFilter }

procedure TfmBOICompanyOrdersFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frPartner.FieldNames:= 'COMPANY_CODE';
  frBOIOAccountDate.FieldNames:= 'BOIO_BEGIN_ACCOUNT_DATE;BOIO_END_ACCOUNT_DATE';
end;

end.
