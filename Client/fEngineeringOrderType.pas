unit fEngineeringOrderType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TfmEngineeringOrderType = class(TBevelEditForm)
    edtCode: TDBEdit;
    lblCode: TLabel;
    edtAbbrev: TDBEdit;
    lblAbbrev: TLabel;
    lblName: TLabel;
    edtName: TDBEdit;
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uClientUtils, uClientTypes;

{$R *.dfm}

procedure TfmEngineeringOrderType.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  ro:= (EditMode = emReadOnly);

  edtAbbrev.ReadOnly:= ro;
  edtName.ReadOnly:= ro;

  edtAbbrev.Color:= ReadOnlyColors[ro];
  edtName.Color:= ReadOnlyColors[ro];
end;

end.
