unit fEstQuantitiesTableFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEstQuantitiesFilterAbstract, DB, AbmesFields, DBClient,
  AbmesClientDataSet, JvComponentBase, JvCaptionButton, ActnList,
  JvExExtCtrls, JvComponent, JvDBRadioPanel, ExtCtrls, StdCtrls,
  fDateUnitsIntervalEditFrame, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFilter, fProductFilter, fParamProductFilter, JvExControls,
  JvDBLookup, Buttons, DBCtrls, JvExtComponent, JvExStdCtrls, JvDBCombobox,
  JvCombobox, AbmesDBCheckBox, fDateFieldEditFrame;

type
  TfmEstQuantitiesTableFilter = class(TfmEstQuantitiesFilterAbstract)
    gbQuantities: TGroupBox;
    bvlQuantities1: TBevel;
    rgInQuantities: TJvDBRadioPanel;
    rgOutQuantities: TJvDBRadioPanel;
    bvlQuantities2: TBevel;
    rgDeficit: TJvDBRadioPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
