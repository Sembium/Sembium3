unit fProductFilterFloatParam;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBevelEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons,
  ExtCtrls, Mask, DBCtrls, AbmesClientDataSet, Menus, JvButtons,
  JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmProductFilterFloatParam = class(TBevelEditForm)
    edtFloatValueMin: TDBEdit;
    edtFloatValueMax: TDBEdit;
    lblFloatValueMin: TLabel;
    lblFloatValueMax: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
