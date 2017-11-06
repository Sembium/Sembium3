unit fShipmentType;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, StdCtrls, Mask, DBCtrls, Db, DBClient, ImgList, ActnList,
  Buttons, ExtCtrls, Menus, AbmesClientDataSet, JvButtons, JvComponent,
  JvCaptionButton, JvComponentBase;

type
  TfmShipmentType = class(TEditForm)
    edtCode: TDBEdit;
    lblCode: TLabel;
    edtAbbrev: TDBEdit;
    lblAbbrev: TLabel;
    edtName: TDBEdit;
    lblName: TLabel;
    lblNotes: TLabel;
    edtNotes: TDBEdit;
    Bevel1: TBevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
