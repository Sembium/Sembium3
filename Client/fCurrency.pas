unit fCurrency;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  fBevelEditForm, Mask, DBCtrls, AbmesClientDataSet, Menus, JvButtons,
  JvDBCombobox, JvDBLookup, JvExControls, JvComponent, JvExStdCtrls,
  JvCaptionButton, JvComponentBase, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, AbmesFields;

type
  TfmCurrency = class(TBevelEditForm)
    lblCode: TLabel;
    edtCode: TDBEdit;
    edtAbbrev: TDBEdit;
    lblAbbrev: TLabel;
    lblName: TLabel;
    edtName: TDBEdit;
    lblScale: TLabel;
    edtScale: TDBEdit;
    lblRounder: TLabel;
    edtOrderNo: TDBEdit;
    lblOrderNo: TLabel;
    lblCurrencyNameSingular: TLabel;
    edtCurrencyNameSingular: TDBEdit;
    edtCurrencyNamePlural: TDBEdit;
    lblCurrencyNamePlural: TLabel;
    cbCurrencyNameGender: TJvDBLookupCombo;
    lblCurrencyNameGender: TLabel;
    lblCurrencyCentNameSingular: TLabel;
    edtCurrencyCentNameSingular: TDBEdit;
    edtCurrencyCentNamePlural: TDBEdit;
    lblCurrencyCentNamePlural: TLabel;
    cbCurrencyCentNameGender: TJvDBLookupCombo;
    lblCurrencyCentNameGender: TLabel;
    frProduct: TfrProductFieldEditFrame;
    cdsRounders: TAbmesClientDataSet;
    cdsRoundersROUNDER: TAbmesFloatField;
    cdsRoundersROUNDER_NAME: TAbmesWideStringField;
    cbRounder: TJvDBLookupCombo;
    dsRounders: TDataSource;
    edtCurrencyINameSingular: TDBEdit;
    edtCurrencyINamePlural: TDBEdit;
    lblCurrencyINamePlural: TLabel;
    lblCurrencyINameSingular: TLabel;
    edtCurrencyCentINamePlural: TDBEdit;
    lblCurrencyCentINamePlural: TLabel;
    edtCurrencyCentINameSingular: TDBEdit;
    lblCurrencyCentINameSingular: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uProducts, uClientUtils, Math;

{$R *.DFM}

procedure TfmCurrency.FormCreate(Sender: TObject);
const
  MaxRounder = 4;
var
  i: Integer;
begin
  inherited;

  frProduct.ProductClass:= pcFinancial;

  cdsRounders.CreateDataSet;
  for i:= -MaxRounder to MaxRounder do
    cdsRounders.AppendRecord([i, FloatToStr(IntPower(10, -i))]);
end;

end.
