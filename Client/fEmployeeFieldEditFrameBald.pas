unit fEmployeeFieldEditFrameBald;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEmployeeFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, ComCtrls, ToolWin, StdCtrls,
  Mask, DBCtrls, ExtCtrls, JvExControls, JvComponent, JvDBLookup, System.Actions;

type
  TfrEmployeeFieldEditFrameBald = class(TfrEmployeeFieldEditFrame)
    procedure actFrameUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Math, uClientUtils, uScalingUtils;

{$R *.dfm}

procedure TfrEmployeeFieldEditFrameBald.actFrameUpdate(Sender: TObject);
begin
  inherited;
  gbEmployee.Top:= -pnlEmployeeCode.Top - edtEmployeeNo.Top;
  gbEmployee.Left:= -pnlEmployeeCode.Left - IfThen((pnlEmployeeCode.Align = alLeft), edtEmployeeNo.Left, ScalePixels(8));
  gbEmployee.Width:= Width + ScalePixels(16);
  edtEmployeeNo.Height:= cbEmployee.Height;
  edtEmployeeName.Height:= cbEmployee.Height;
end;

end.
