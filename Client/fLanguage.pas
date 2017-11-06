unit fLanguage;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, AbmesClientDataSet, Menus, JvButtons, fBevelEditForm,
  JvComponent, JvCaptionButton;

type
  TfmLanguage = class(TBevelEditForm)
    edtCode: TDBEdit;
    edtName: TDBEdit;
    lblCode: TLabel;
    lblName: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
