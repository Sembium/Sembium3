unit fProductFieldEditFrameLabeled;

interface                    

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fProductFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, ComCtrls, ToolWin, Buttons, JvToolEdit,
  StdCtrls, Mask, DBCtrls, ExtCtrls, JvExMask, JvDBControls, System.Actions;

type
  TfrProductFieldEditFrameLabeled = class(TfrProductFieldEditFrame)
    lblTreeNodeName: TLabel;
    lblTreeNodeNo: TLabel;
    procedure actFrameUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Types;

{$R *.dfm}

{ TfrProductFieldEditFrameLabeled }

procedure TfrProductFieldEditFrameLabeled.actFrameUpdate(Sender: TObject);
begin
  inherited;
  lblTreeNodeNo.Left:=
    lblTreeNodeNo.Parent.ScreenToClient(edtTreeNodeNo.Parent.ClientToScreen(Point(edtTreeNodeNo.Left, 0))).X;
end;

end.
