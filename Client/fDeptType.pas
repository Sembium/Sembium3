unit fDeptType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, Menus, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBevelEditForm, Mask, DBCtrls,
  JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmDeptType = class(TBevelEditForm)
    lblCode: TLabel;
    lblAbbrev: TLabel;
    lblName: TLabel;
    edtCode: TDBEdit;
    edtAbbrev: TDBEdit;
    edtName: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
