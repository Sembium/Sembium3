unit fMLMSOperationVariant;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBevelEditForm, AbmesDBCheckBox,
  JvToolEdit, JvDBControls, Mask, DBCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateIntervalFrame, JvComponent, JvCaptionButton;

type
  TfmMLMSOperationVariant = class(TBevelEditForm)
    grpWorkdays: TGroupBox;
    lblTreatmentBeginWorkdayNo: TLabel;
    edtTreatmentBeginWorkdayNo: TDBEdit;
    lblOperationTreatmentWorkdays: TLabel;
    edtOperationTreatmentWorkdays: TDBEdit;
    gbDates: TGroupBox;
    chbIsActive: TAbmesDBCheckBox;
    edtVariantDetalTechQuantity: TDBEdit;
    lblVariantDetalTechQuantity: TLabel;
    frTreatmentDateInterval: TfrDateIntervalFrame;
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uOperationTypes, uClientUtils, uClientTypes;

{$R *.dfm}

{ TfmMLMSOperationVariant }

procedure TfmMLMSOperationVariant.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  ro:= (EditMode = emReadOnly);
  edtTreatmentBeginWorkdayNo.ReadOnly:= ro;
  edtOperationTreatmentWorkdays.ReadOnly:= ro;

  edtTreatmentBeginWorkdayNo.Color:= ReadOnlyColors[ro];
  edtOperationTreatmentWorkdays.Color:= ReadOnlyColors[ro];

  edtVariantDetalTechQuantity.ReadOnly:=
    (EditMode = emReadOnly) or
    (not dsData.DataSet.Active) or
    (dsData.DataSet.FieldByName('OPERATION_TYPE_CODE').AsInteger <> otNormal);

  edtVariantDetalTechQuantity.Color:= ReadOnlyColors[edtVariantDetalTechQuantity.ReadOnly];

  chbIsActive.ReadOnly:=
    (EditMode = emReadOnly) or
    (not dsData.DataSet.Active) or
    (dsData.DataSet.FieldByName('OPERATION_TYPE_CODE').AsInteger <> otNormal) or
    (not chbIsActive.Field.AsBoolean);
end;

procedure TfmMLMSOperationVariant.FormCreate(Sender: TObject);
begin
  inherited;
  frTreatmentDateInterval.FieldNames:= 'TREATMENT_BEGIN_DATE;TREATMENT_END_DATE';
end;

end.
