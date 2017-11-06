unit fCustomhouse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, Menus, AbmesClientDataSet, JvButtons, JvComponent,
  JvCaptionButton, JvComponentBase;

type
  TfmCustomhouse = class(TEditForm)
    edtCode: TDBEdit;
    edtName: TDBEdit;
    lblCode: TLabel;
    lblName: TLabel;
    Bevel1: TBevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
