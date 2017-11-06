unit fDisciplineEventTypePeriod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask,
  fBaseFrame, fDBFrame, fFieldEditFrame, fDateIntervalFrame, JvExControls,
  JvComponent, JvDBLookup, AbmesFields;

type
  TfmDisciplineEventTypePeriod = class(TEditForm)
    gbTimeInterval: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    gbDiscEventTypePeriod: TGroupBox;
    lblActivePeriod: TLabel;
    edtActiveDateUnitCount: TDBEdit;
    lblRating: TLabel;
    edtRating: TDBEdit;
    cbActiveDateUnit: TJvDBLookupCombo;
    pnlPlus: TPanel;
    imgPlus: TImage;
    pnlMinus: TPanel;
    imgMinus: TImage;
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uUtils, dMain, uClientTypes, uClientUtils;

{$R *.dfm}

{ TfmDisciplineEventTypePeriod }

procedure TfmDisciplineEventTypePeriod.actFormUpdate(Sender: TObject);
var
  ReadOnly: Boolean;
begin
  inherited;
  pnlMinus.Visible:= (OuterDataSet.DataSetField.DataSet.FieldByName('DISC_EVENT_TYPE_SIGN').AsInteger = -1);
  pnlPlus.Visible:= (OuterDataSet.DataSetField.DataSet.FieldByName('DISC_EVENT_TYPE_SIGN').AsInteger = 1);

  ReadOnly:= (EditMode = emReadOnly);
  edtActiveDateUnitCount.Color:= ReadOnlyColors[ReadOnly];
  edtRating.Color:= ReadOnlyColors[ReadOnly];
  cbActiveDateUnit.Color:= ReadOnlyColors[ReadOnly];
end;

end.
