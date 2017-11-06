unit fCompanyType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, fEditForm,
  JvExStdCtrls, JvDBCombobox, Mask, DBCtrls;

type
  TfmCompanyType = class(TBevelEditForm)
    lblNo: TLabel;
    edtNo: TDBEdit;
    edtName: TDBEdit;
    lblName: TLabel;
    lblAbbrev: TLabel;
    edtAbbrev: TDBEdit;
    lblAbbrevBefore: TLabel;
    cbAbbrevBefore: TJvDBComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
