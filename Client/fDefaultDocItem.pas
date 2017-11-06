unit fDefaultDocItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, fBevelEditForm, DB,
  DBClient, AbmesClientDataSet, ActnList, StdCtrls,
  Buttons, ExtCtrls, Mask, DBCtrls, JvExControls, JvDBLookup;

type
  TfmDefaultDocItem = class(TBevelEditForm)
    lblState: TLabel;
    cbState: TJvDBLookupCombo;
    lblName: TLabel;
    edtName: TDBEdit;
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

procedure TfmDefaultDocItem.actFormUpdate(Sender: TObject);
begin
  inherited;
  SetControlsReadOnly((EditMode = emReadOnly), [edtName, cbState]);
end;

end.
