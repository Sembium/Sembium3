unit fProcessBaseOperationFieldEditFrameLabeled;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fProcessBaseOperationFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, ComCtrls, ToolWin, Buttons, JvExMask,
  JvToolEdit, JvDBControls, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfrProcessBaseOperationFieldEditFrameLabeled = class(TfrProcessBaseOperationFieldEditFrame)
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

{ TfrProcessBaseOperationFieldEditFrameLabeled }

procedure TfrProcessBaseOperationFieldEditFrameLabeled.actFrameUpdate(
  Sender: TObject);
begin
  inherited;
  lblTreeNodeNo.Left:=
    lblTreeNodeNo.Parent.ScreenToClient(edtTreeNodeNo.Parent.ClientToScreen(Point(edtTreeNodeNo.Left, 0))).X;
end;

end.
