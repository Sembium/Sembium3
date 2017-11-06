unit fProcessConcreteOperationFieldEditFrameLabeled;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fProcessConcreteOperationFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, ComCtrls, ToolWin, Buttons, JvExMask,
  JvToolEdit, JvDBControls, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfrProcessConcreteOperationFieldEditFrameLabeled = class(TfrProcessConcreteOperationFieldEditFrame)
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

procedure TfrProcessConcreteOperationFieldEditFrameLabeled.actFrameUpdate(
  Sender: TObject);
begin
  inherited;
  lblTreeNodeNo.Left:=
    lblTreeNodeNo.Parent.ScreenToClient(edtTreeNodeNo.Parent.ClientToScreen(Point(edtTreeNodeNo.Left, 0))).X;
end;

end.
