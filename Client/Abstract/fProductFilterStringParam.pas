unit fProductFilterStringParam;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBevelEditForm, StdCtrls, Mask, DBCtrls, Db, DBClient, ImgList, ActnList,
  Buttons, ExtCtrls, AbmesClientDataSet, Menus, JvButtons, JvComponent,
  JvCaptionButton, JvComponentBase;

type
  TfmProductFilterStringParam = class(TBevelEditForm)
    edtValueString: TDBEdit;
    lblValueString: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
