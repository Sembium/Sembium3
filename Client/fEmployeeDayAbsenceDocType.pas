unit fEmployeeDayAbsenceDocType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TfmEmployeeDayAbsenceDocType = class(TBevelEditForm)
    edtName: TDBEdit;
    lblName: TLabel;
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

procedure TfmEmployeeDayAbsenceDocType.actFormUpdate(Sender: TObject);
begin
  inherited;

  edtName.ReadOnly:= (EditMode = emReadOnly);
  edtName.Color:= ReadOnlyColors[(EditMode = emReadOnly)];
end;

end.
