unit fVatReason;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls,
  Buttons, ExtCtrls, Mask, DBCtrls;

type
  TfmVatReason = class(TEditForm)
    edtAbbrev: TDBEdit;
    lblAbbrev: TLabel;
    edtName: TDBEdit;
    lblName: TLabel;
    edtNo: TDBEdit;
    bvlMain: TBevel;
    lblNo: TLabel;
    edtIAbbrev: TDBEdit;
    edtIName: TDBEdit;
    lblIAbbrev: TLabel;
    lblIName: TLabel;
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

procedure TfmVatReason.actFormUpdate(Sender: TObject);
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
