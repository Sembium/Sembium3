unit fFinModelLineReason;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TfmFinModelLineReason = class(TBevelEditForm)
    lblNo: TLabel;
    edtNo: TDBEdit;
    edtName: TDBEdit;
    lblName: TLabel;
    edtAbbrev: TDBEdit;
    lblAbbrev: TLabel;
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uClientTypes, uClientUtils;

{$R *.dfm}

procedure TfmFinModelLineReason.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;
  ro:= (EditMode = emReadOnly);
  edtNo.Color:= ReadOnlyColors[ro];
  edtName.Color:= ReadOnlyColors[ro];
  edtAbbrev.Color:= ReadOnlyColors[ro];
end;

end.
