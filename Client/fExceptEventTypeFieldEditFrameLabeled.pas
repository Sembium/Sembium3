unit fExceptEventTypeFieldEditFrameLabeled;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, fExceptEventTypeFieldEditFrame, DB, AbmesFields, DBClient, AbmesClientDataSet,
  ActnList, ComCtrls, ToolWin, Buttons, JvExMask, JvToolEdit, JvDBControls, StdCtrls, Mask, DBCtrls,
  ExtCtrls;

type
  TfrExceptEventTypeFieldEditFrameLabeled = class(TfrExceptEventTypeFieldEditFrame)
    lblTreeNodeNo: TLabel;
    lblTreeNodeName: TLabel;
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

{ TfrExceptEventTypeFieldEditFrameLabeled }

procedure TfrExceptEventTypeFieldEditFrameLabeled.actFrameUpdate(Sender: TObject);
begin
  inherited;
  lblTreeNodeNo.Left:=
    lblTreeNodeNo.Parent.ScreenToClient(edtTreeNodeNo.Parent.ClientToScreen(Point(edtTreeNodeNo.Left, 0))).X;
end;

end.
