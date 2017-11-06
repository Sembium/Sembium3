unit fDeptFieldEditFrameLabeled;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDeptFieldEditFrame, StdCtrls, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, ComCtrls, ToolWin, Buttons, JvToolEdit,
  Mask, DBCtrls, ExtCtrls, JvExMask, JvDBControls, System.Actions;

type
  TfrDeptFieldEditFrameLabeled = class(TfrDeptFieldEditFrame)
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

{ TfrDeptFieldEditFrameLabeled }

procedure TfrDeptFieldEditFrameLabeled.actFrameUpdate(Sender: TObject);
begin
  inherited;
  lblTreeNodeNo.Left:=
    lblTreeNodeNo.Parent.ScreenToClient(edtTreeNodeNo.Parent.ClientToScreen(Point(edtTreeNodeNo.Left, 0))).X;
end;

end.
