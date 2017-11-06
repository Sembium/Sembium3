unit fBOIWasteOrdersFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBOIOrdersFilter, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponent, JvCaptionButton, ActnList, JvExControls, JvDBLookup,
  Buttons, StdCtrls, ExtCtrls, fDeptFieldEditFrameBald,
  fDateIntervalFrame, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameLabeled, Mask, DBCtrls, JvExStdCtrls, JvDBCombobox,
  JvComponentBase, fTreeNodeFilter, fProductFilter, fParamProductFilter,
  fProductFieldEditFrame, AbmesDBCheckBox;

type
  TfmBOIWasteOrdersFilter = class(TfmBOIOrdersFilter)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation                                                      

{$R *.dfm}

{ TfmBOIWasteOrdersFilter }

end.
