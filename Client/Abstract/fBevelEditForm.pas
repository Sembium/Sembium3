unit fBevelEditForm;

interface
                                                               
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, ExtCtrls, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons,
  AbmesClientDataSet, Menus, JvButtons, JvComponent, JvCaptionButton,
  JvComponentBase, System.Actions;

type
  TBevelEditForm = class(TEditForm)
    bvlMain: TBevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
