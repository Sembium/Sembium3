unit fShiftCycleBreak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, System.Actions, AbmesDBCheckBox;

type
  TfmShiftCycleBreak = class(TBevelEditForm)
    lblBeginTime: TLabel;
    lblEndTime: TLabel;
    lblDurationHoursMeasure: TLabel;
    lblDurationHours: TLabel;
    edtBeginTime: TDBEdit;
    edtEndTime: TDBEdit;
    edtDurationHours: TDBEdit;
    chbIsWorktime: TAbmesDBCheckBox;
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

procedure TfmShiftCycleBreak.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  ro:= (EditMode = emReadOnly);

  edtBeginTime.ReadOnly:= ro;
  edtEndTime.ReadOnly:= ro;
  edtDurationHours.ReadOnly:= ro;

  edtBeginTime.Color:= ReadOnlyColors[ro];
  edtEndTime.Color:= ReadOnlyColors[ro];
  edtDurationHours.Color:= ReadOnlyColors[ro];
end;

end.
