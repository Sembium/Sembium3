unit fEstQuantitiesGraphFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEstQuantitiesFilterAbstract, DB, AbmesFields, DBClient,
  AbmesClientDataSet, JvComponentBase, JvCaptionButton, ActnList,
  fDateUnitsIntervalEditFrame, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFilter, fProductFilter, fParamProductFilter, JvExControls,
  JvComponent, JvDBLookup, Buttons, StdCtrls, ExtCtrls, JvExExtCtrls,
  JvDBRadioPanel, DBCtrls, JvExtComponent, JvExStdCtrls, JvDBCombobox,
  JvCombobox, AbmesDBCheckBox, fDateFieldEditFrame;

type
  TfmEstQuantitiesGraphFilter = class(TfmEstQuantitiesFilterAbstract)
    gbRounders: TGroupBox;
    lblQuantityRounder: TLabel;
    lblPriceRounder: TLabel;
    lblAccountQuantityRounder: TLabel;
    cbQuantityRounder: TJvDBLookupCombo;
    cbPriceRounder: TJvDBLookupCombo;
    rgUseDefaultRounders: TJvDBRadioPanel;
    cbAccountQuantityRounder: TJvDBLookupCombo;
    procedure rgUseDefaultRoundersChange(Sender: TObject);
  private
    { Private declarations }
  public
    procedure DoApplyUpdates; override;
  end;

implementation

{$R *.dfm}

resourcestring
  SRounderStepRequired = 'Ръчният вариант на закръгляване изисква да изберете стъпка на закръгляване за цени и количества.';

{ TfmEstQuantitiesGraphFilter }

procedure TfmEstQuantitiesGraphFilter.DoApplyUpdates;
begin
  with dsData.DataSet do
    if not FieldByName('USE_DEFAULT_ROUNDERS').AsBoolean then
      if FieldByName('QUANTITY_ROUNDER').IsNull or
         FieldByName('ACCOUNT_QUANTITY_ROUNDER').IsNull or
         FieldByName('PRICE_ROUNDER').IsNull then
        raise Exception.Create(SRounderStepRequired);

  inherited;
end;

procedure TfmEstQuantitiesGraphFilter.rgUseDefaultRoundersChange(
  Sender: TObject);
var
  en: Boolean;
begin
  inherited;
  en:= not (rgUseDefaultRounders.Value = 'True');
  cbQuantityRounder.Enabled:= en;
  cbAccountQuantityRounder.Enabled:= en;
  cbPriceRounder.Enabled:= en;
  if not en then
    begin
      cbQuantityRounder.Color:= clBtnFace;
      cbAccountQuantityRounder.Color:= clBtnFace;
      cbPriceRounder.Color:= clBtnFace;
      if dsData.State = dsEdit then
        begin
          dsData.DataSet.FieldByName('QUANTITY_ROUNDER').Clear;
          dsData.DataSet.FieldByName('ACCOUNT_QUANTITY_ROUNDER').Clear;
          dsData.DataSet.FieldByName('PRICE_ROUNDER').Clear;
        end;
    end
  else
    begin
      cbQuantityRounder.Color:= clWindow;
      cbAccountQuantityRounder.Color:= clWindow;
      cbPriceRounder.Color:= clWindow;
    end;
end;

end.
