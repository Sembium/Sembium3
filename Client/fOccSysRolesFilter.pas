unit fOccSysRolesFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvDBLookup, Buttons,
  StdCtrls, ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fEnumFieldEditFrame, fActivityFieldEditFrame;

type
  TfmOccSysRolesFilter = class(TFilterForm)
    frActivity: TfrActivityFieldEditFrame;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
