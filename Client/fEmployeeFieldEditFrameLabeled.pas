unit fEmployeeFieldEditFrameLabeled;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEmployeeFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, ComCtrls, ToolWin, StdCtrls,
  Mask, DBCtrls, ExtCtrls, JvExControls, JvComponent, JvDBLookup, System.Actions;

type
  TfrEmployeeFieldEditFrameLabeled = class(TfrEmployeeFieldEditFrame)
    pnlLabels: TPanel;
    lblCode: TLabel;
    lblName: TLabel;
    procedure actFrameUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrEmployeeFieldEditFrameLabeled.actFrameUpdate(Sender: TObject);
begin
  inherited;
  lblName.Left:= pnlEmployeeName.Left;
end;

end.
 
