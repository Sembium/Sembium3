unit fOrgWorkActivity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls, Buttons, ExtCtrls,
  fBevelEditForm, JvExControls, JvDBLookup, Mask, DBCtrls;

type
  TfmOrgWorkActivity = class(TBevelEditForm)
    lblNo: TLabel;
    edtNo: TDBEdit;
    edtName: TDBEdit;
    lblName: TLabel;
    cbType: TJvDBLookupCombo;
    lblType: TLabel;
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

procedure TfmOrgWorkActivity.actFormUpdate(Sender: TObject);
begin
  inherited;
  SetControlsReadOnly(EditMode = emReadOnly, [edtNo, edtName]);
  SetControlReadOnly(EditMode <> emInsert, cbType);
end;

end.
