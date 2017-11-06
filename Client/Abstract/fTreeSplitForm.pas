unit fTreeSplitForm;
                                                  
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fTreeForm, Db, DBClient, ActnList, ImgList, StdCtrls, ComCtrls, ToolWin,
  Buttons, ExtCtrls, TreeParentsComboBox, AbmesClientDataSet,
  AbmesFields, JvButtons, Menus, JvComponent, JvCaptionButton,
  JvComponentBase, System.ImageList, System.Actions;

type
  TTreeSplitForm = class(TTreeForm)
    sptMain: TSplitter;
    pnlDetails: TPanel;
    procedure actViewTreeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

{ TTreeSplitForm }

procedure TTreeSplitForm.actViewTreeExecute(Sender: TObject);
begin
  inherited;
  sptMain.Visible:= (Sender as TAction).Checked;
  if sptMain.Visible then
    sptMain.Left:= pnltree.Width;
end;

end.
