unit fFinancialRelationsTableFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFinancialRelationsAbstractFilter, DB, AbmesFields, DBClient,
  AbmesClientDataSet, JvComponentBase, JvCaptionButton, ActnList, StdCtrls,
  JvExStdCtrls, JvDBCombobox, Mask, DBCtrlsEh, fCompanyFilter, fBaseFrame,
  fDBFrame, fFieldEditFrame, fDateUnitsIntervalEditFrame, JvExControls,
  JvDBLookup, Buttons, ExtCtrls;

type
  TfmFinancialRelationsTableFilter = class(TfmFinancialRelationsAbstractFilter)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
