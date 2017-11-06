unit fDeliveryDecision;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  AbmesDBCheckBox;

type
  TfmDeliveryDecision = class(TBevelEditForm)
    lblNo: TLabel;
    edtNo: TDBEdit;
    lblAbbrev: TLabel;
    edtAbbrev: TDBEdit;
    lblName: TLabel;
    edtName: TDBEdit;
    chbAllowsDeliveryContract: TAbmesDBCheckBox;
    chbIsEstimationBound: TAbmesDBCheckBox;
    chbIsRealizationBound: TAbmesDBCheckBox;
    chbRequiresFinishing: TAbmesDBCheckBox;
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TfmDeliveryDecision }

procedure TfmDeliveryDecision.actFormUpdate(Sender: TObject);
begin
  inherited;
  chbAllowsDeliveryContract.Enabled:= dsData.DataSet.FieldByName('IS_REALIZATION_BOUND').AsBoolean;
end;

end.
