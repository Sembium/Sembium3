unit fParRelProductStatusForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls,
  fBaseFrame, fDBFrame, fFieldEditFrame, fDateFieldEditFrame, JvExControls,
  JvComponent, JvDBLookup;

type
  TfmParRelProductStatus = class(TBevelEditForm)
    cbStatus: TJvDBLookupCombo;
    lblStatus: TLabel;
    lblStatusDate: TLabel;
    frStatusDate: TfrDateFieldEditFrame;
    procedure FormCreate(Sender: TObject);
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

procedure TfmParRelProductStatus.actFormUpdate(Sender: TObject);
begin
  inherited;
  cbStatus.ReadOnly:= (EditMode = emReadOnly);
  cbStatus.Color:= ReadOnlyColors[cbStatus.ReadOnly];
end;

procedure TfmParRelProductStatus.FormCreate(Sender: TObject);
begin
  inherited;
  frStatusDate.FieldNames:= 'STATUS_DATE';
end;

end.
