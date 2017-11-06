unit fVatPeriod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, StdCtrls, Mask, DBCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateIntervalFrame, DB, DBClient, AbmesClientDataSet,
  ActnList, Buttons, ExtCtrls;

type
  TfmVatPeriod = class(TEditForm)
    gbPeriod: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    gbVatPercent: TGroupBox;
    edtVatPercent: TDBEdit;
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uClientUtils, uClientTypes;

{$R *.dfm}

procedure TfmVatPeriod.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;
  ro:= (EditMode = emReadOnly);
  SetControlsReadOnly(ro, [edtVatPercent]);
end;

end.
