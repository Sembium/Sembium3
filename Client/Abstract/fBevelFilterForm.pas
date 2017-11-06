unit fBevelFilterForm;

interface
                                                              
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFilterForm, ExtCtrls, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons,
  AbmesClientDataSet, Menus, JvButtons, AbmesFields, JvDBLookup,
  JvComponent, JvCaptionButton, JvExControls, JvComponentBase, System.Actions;

type
  TBevelFilterForm = class(TFilterForm)
    bvlMain: TBevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
