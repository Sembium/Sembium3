unit fEarningModifiersFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvButtons, ActnList, JvDBLookup, Buttons, StdCtrls, ExtCtrls, JvToolEdit,
  JvDBControls, Mask, DBCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateIntervalFrame, JvComponent, JvCaptionButton, JvExControls,
  JvComponentBase;

type
  TfmEarningModifiersFilter = class(TFilterForm)
    gbPeriod: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
