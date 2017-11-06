unit fPartnerFieldEditFrameBald;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fPartnerFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, StdCtrls, Mask, DBCtrls, 
  ComCtrls, ToolWin, ExtCtrls, JvExControls, JvComponent, JvDBLookup,
  System.Actions;

type
  TfrPartnerFieldEditFrameBald = class(TfrPartnerFieldEditFrame)
    procedure actFrameUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }          
  end;

implementation

uses
  Math,
  uScalingUtils;

{$R *.dfm}

procedure TfrPartnerFieldEditFrameBald.actFrameUpdate(Sender: TObject);
begin
  inherited;
  gbPartner.Top:= -pnlPartnerCode.Top - edtPartnerCode.Top;
  gbPartner.Left:= -pnlPartnerCode.Left - IfThen((pnlPartnerCode.Align = alLeft), edtPartnerCode.Left, ScalePixels(8));
  gbPartner.Width:= Width + ScalePixels(16);
  edtPartnerCode.Height:= cbPartner.Height;
  edtPartnerName.Height:= cbPartner.Height;
end;

end.
