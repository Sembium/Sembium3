unit fBOIProductOrdersFilter;

interface                                   

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBOIOrdersFilter, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponent, JvCaptionButton, ActnList, JvExControls, JvDBLookup,
  Buttons, StdCtrls, ExtCtrls, fDeptFieldEditFrameBald,
  fDateIntervalFrame, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameLabeled, Mask, DBCtrls, JvExStdCtrls, JvDBCombobox,
  fTreeNodeFilter, fProductFilter, fParamProductFilter, JvComponentBase,
  fProductFieldEditFrame, AbmesDBCheckBox;

type
  TfmBOIProductOrdersFilter = class(TfmBOIOrdersFilter)          
    frStore: TfrDeptFieldEditFrame;
    frParamProductFilter: TfrParamProductFilter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TfmBOIProductOrdersFilter }

procedure TfmBOIProductOrdersFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frStore.FieldNames:= 'STORE_CODE';
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
end;

end.
