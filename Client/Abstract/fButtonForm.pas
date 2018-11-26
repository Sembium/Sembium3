unit fButtonForm;

interface                               
                                        
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ActnList, ImgList, fBaseForm, Menus,
  JvButtons, JvComponent, JvCaptionButton, JvComponentBase, System.Actions,
  JvExControls, JvGradient;

type
  TButtonForm = class(TBaseForm)
    pnlBottomButtons: TPanel;
    pnlOKCancel: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    pnlClose: TPanel;
    btnClose: TBitBtn;
    grBottomButtons: TJvGradient;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uClientApp;

{$R *.DFM}

procedure TButtonForm.FormCreate(Sender: TObject);
begin
  inherited;
  grBottomButtons.EndColor:= AccentColor;
  grBottomButtons.SetBounds(0, 0, pnlBottomButtons.Width, pnlBottomButtons.Height);
end;

procedure TButtonForm.FormShow(Sender: TObject);
begin
  inherited;
  pnlBottomButtons.Top:= Height;  // put buttons at the bottom
end;

end.
