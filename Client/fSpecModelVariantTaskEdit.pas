unit fSpecModelVariantTaskEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBevelEditForm, Db, Menus, DBClient, AbmesClientDataSet, JvButtons,
  ImgList, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmSpecModelVariantTaskEdit = class(TBevelEditForm)
    edtTaskNo: TDBEdit;
    edtTaskName: TDBEdit;
    lblTaskNo: TLabel;
    lblTaskName: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
