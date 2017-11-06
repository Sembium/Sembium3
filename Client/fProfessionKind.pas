unit fProfessionKind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBevelEditForm, Mask, DBCtrls,
  JvComponent, JvCaptionButton, JvComponentBase, JvExControls, JvDBLookup;

type
  TfmProfessionKind = class(TBevelEditForm)
    lblProfessionKindNo: TLabel;
    lblProfessionKindName: TLabel;
    edtProfessionKindNo: TDBEdit;
    edtProfessionKindName: TDBEdit;
    lblProfessionType: TLabel;
    cbProfessionType: TJvDBLookupCombo;
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

procedure TfmProfessionKind.actFormUpdate(Sender: TObject);
begin
  inherited;
  SetControlReadOnly(EditMode <> emInsert, cbProfessionType);
  SetControlsReadOnly(EditMode = emReadOnly, [edtProfessionKindNo, edtProfessionKindName]);
end;

end.
