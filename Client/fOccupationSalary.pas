unit fOccupationSalary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, JvExControls, JvComponent, JvDBLookup, fBaseFrame,
  fDBFrame, fFieldEditFrame, fDateIntervalFrame;

type
  TfmOccupationSalary = class(TBevelEditForm)
    frDateIntervalFrame: TfrDateIntervalFrame;
    lblDateInterval: TLabel;
    cbDateUnit: TJvDBLookupCombo;
    edtBaseSalary: TDBEdit;
    lblBaseSalary: TLabel;
    edtBaseSalaryCurrency: TLabel;
    lblDateUnit: TLabel;
    edtCurrentSalaryRatioCoefInterval: TLabel;
    edtCurrentMinSalaryRatioCoef: TDBEdit;
    lblDash: TLabel;
    edtCurrentMaxSalaryRatioCoef: TDBEdit;
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uClientTypes, uClientUtils;

{$R *.dfm}

procedure TfmOccupationSalary.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  ro:= (EditMode = emReadOnly);

  edtBaseSalary.ReadOnly:= ro;
  cbDateUnit.ReadOnly:= ro;
  edtCurrentMinSalaryRatioCoef.ReadOnly:= ro;
  edtCurrentMaxSalaryRatioCoef.ReadOnly:= ro;

  edtBaseSalary.Color:= ReadOnlyColors[ro];
  cbDateUnit.Color:= ReadOnlyColors[ro];
  edtCurrentMinSalaryRatioCoef.Color:= ReadOnlyColors[ro];
  edtCurrentMaxSalaryRatioCoef.Color:= ReadOnlyColors[ro];
end;

procedure TfmOccupationSalary.FormCreate(Sender: TObject);
begin
  inherited;
  with edtBaseSalaryCurrency do
    Caption:= FormatBaseCurrencyAbbrevString(Caption);
end;

end.
