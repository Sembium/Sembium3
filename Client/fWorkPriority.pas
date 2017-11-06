unit fWorkPriority;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TfmWorkPriority = class(TBevelEditForm)
    edtWorkPriorityNo: TDBEdit;
    edtWorkPriorityName: TDBEdit;
    lblWorkPriorityNo: TLabel;
    lblWorkPriorityName: TLabel;
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uClientUtils, uClientTypes;

{$R *.dfm}

procedure TfmWorkPriority.actFormUpdate(Sender: TObject);
begin
  inherited;
  edtWorkPriorityNo.Color:= ReadOnlyColors[(EditMode = emReadOnly)];
  edtWorkPriorityName.Color:= ReadOnlyColors[(EditMode = emReadOnly)];
end;

end.
