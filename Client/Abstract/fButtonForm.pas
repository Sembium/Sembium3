unit fButtonForm;

interface                               
                                        
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ActnList, ImgList, fBaseForm, Menus,
  JvButtons, JvComponent, JvCaptionButton, JvComponentBase, System.Actions;

type
  TButtonForm = class(TBaseForm)
    pnlBottomButtons: TPanel;
    pnlOKCancel: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    pnlClose: TPanel;
    btnClose: TBitBtn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

procedure TButtonForm.FormShow(Sender: TObject);
begin
  inherited;
  pnlBottomButtons.Top:= Height;  // put buttons at the bottom
end;

end.
