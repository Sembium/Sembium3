unit fXModelInvestedValueFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBaseInvestedValueFilter, DB, DBClient, AbmesClientDataSet,
  JvButtons, ActnList, StdCtrls, Buttons, JvDBLookup, ExtCtrls, DBCtrls, Mask,
  JvComponent, JvCaptionButton, JvExControls, JvComponentBase,
  JvExExtCtrls, JvDBRadioPanel;

type
  TfmXModelInvestedValueFilter = class(TBaseInvestedValueFilter)
    rgInvestedValueType: TDBRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

resourcestring
  SInvestedValueTypeAbbrevPlan = 'П';
  SInvestedValueTypeAbbrevReal = 'О';
  SInvestedValueTypeAbbrevDiversion = 'Щ';
  SInvestedValueTypeAbbrevWaste = 'Б';

implementation

{$R *.dfm}

end.
