unit fPartnerFieldEditFrameLabeled;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fPartnerFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, StdCtrls, Mask, DBCtrls, 
  ComCtrls, ToolWin, ExtCtrls, JvExControls, JvComponent, JvDBLookup,
  System.Actions;

type
  TfrPartnerFieldEditFrameLabeled = class(TfrPartnerFieldEditFrame)
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

procedure TfrPartnerFieldEditFrameLabeled.actFrameUpdate(Sender: TObject);
begin
  inherited;
  lblName.Left:= pnlNameAndButtons.Left;
end;

end.
