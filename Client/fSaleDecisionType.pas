unit fSaleDecisionType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, AbmesDBCheckBox, Mask,
  DBCtrls;

type
  TfmSaleDecisionType = class(TBevelEditForm)
    lblNo: TLabel;
    edtNo: TDBEdit;
    lblName: TLabel;
    edtName: TDBEdit;
    lblAbbrev: TLabel;
    edtAbbrev: TDBEdit;
    chbAllowsSale: TAbmesDBCheckBox;
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

{ TfmSaleDecisionType }

procedure TfmSaleDecisionType.actFormUpdate(Sender: TObject);
begin
  inherited;
  chbAllowsSale.Enabled:= dsData.DataSet.FieldByName('IS_REALIZATION_BOUND').AsBoolean;
end;

end.
