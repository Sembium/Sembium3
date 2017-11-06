unit fDeptOWDPriority;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls, Buttons, ExtCtrls,
  fBevelEditForm, JvExControls, JvDBLookup;

type
  TfmDeptOWDPriority = class(TBevelEditForm)
    cbOWDPriorityCoverType: TJvDBLookupCombo;
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

procedure TfmDeptOWDPriority.actFormUpdate(Sender: TObject);
begin
  inherited;
  SetControlReadOnly(EditMode = emReadOnly, cbOWDPriorityCoverType);
end;

end.
