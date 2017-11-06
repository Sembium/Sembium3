unit fBaseInvestedValueFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, JvDBLookup,
  JvExControls, JvComponent, JvCaptionButton, JvComponentBase,
  JvExExtCtrls, JvDBRadioPanel, JvExtComponent;

type
  TBaseInvestedValueFilter = class(TEditForm)
    pnlLevels: TPanel;
    pnlLevelFull: TPanel;
    pnlLevelFull5: TPanel;
    pnlLevelFull1: TPanel;
    pnlLevelFull2: TPanel;
    pnlLevelFull3: TPanel;
    pnlLevelFull4: TPanel;
    pnlLevelAggregated: TPanel;
    pnlLevelAggregated5: TPanel;
    pnlLevelAggregated3: TPanel;
    pnlLevelAggregated4: TPanel;
    pnlLevel1: TPanel;
    pnlLevel15: TPanel;
    pnlLevel11: TPanel;
    pnlLevel12: TPanel;
    pnlLevel13: TPanel;
    pnlLevel14: TPanel;
    btnLevelFull1: TSpeedButton;
    btnLevelFull2: TSpeedButton;
    btnLevelFull3: TSpeedButton;
    btnLevelFull4: TSpeedButton;
    btnLevelFull5: TSpeedButton;
    btnLevelAggregated3: TSpeedButton;
    btnLevelAggregated4: TSpeedButton;
    btnLevelAggregated5: TSpeedButton;
    btnLevel11: TSpeedButton;
    pnlLevel2Outer: TPanel;
    pnlLevel2: TPanel;
    pnlLevel22: TPanel;
    btnLevel22: TSpeedButton;
    pnlLevel23: TPanel;
    pnlLevel24: TPanel;
    pnlLevel25: TPanel;
    pnlLevel3Outer: TPanel;
    pnlLevel3: TPanel;
    pnlLevel33: TPanel;
    btnLevel33: TSpeedButton;
    pnlLevel34: TPanel;
    pnlLevel35: TPanel;
    pnlLevel4Outer: TPanel;
    pnlLevel4: TPanel;
    pnlLevel44: TPanel;
    btnLevel44: TSpeedButton;
    pnlLevel45: TPanel;
    pnlData: TPanel;
    gbQuantity: TGroupBox;
    edtQuantity: TDBEdit;
    lblQuantity: TLabel;
    txtTechMeasureAbbrev: TDBText;
    rgAggregated: TDBRadioGroup;
    pnlLevel5Outer: TPanel;
    pnlLevel5: TPanel;
    pnlLevel55: TPanel;
    btnLevel55: TSpeedButton;
    gbCurrency: TGroupBox;
    lblCurrency: TLabel;
    cbCurrency: TJvDBLookupCombo;
    rgInvestedValueSingle: TJvDBRadioPanel;
    procedure btnLevelButtonClick(Sender: TObject);
  private
    { Private declarations }
    FSelectedInvestedValueButton: TSpeedButton;
  public
    procedure Initialize; override;
  end;

resourcestring
  SInvestedValueLevel1Abbrev = 'ВС 1';
  SInvestedValueLocalAbbrev = 'Л';
  SInvestedValueAggregatedAbbrev = 'С';
  SInvestedValueSingleAbbrevSingle = '1';
  SInvestedValueSingleAbbrevQuantity = 'П';

implementation

uses
  uUtils, StrUtils, fSpecificationAndXModelAbstract;

{$R *.dfm}

{ TBaseInvestedValueFilter }

procedure TBaseInvestedValueFilter.btnLevelButtonClick(Sender: TObject);
begin
  inherited;

  FSelectedInvestedValueButton.Down:= False;

  FSelectedInvestedValueButton:= (Sender as TSpeedButton);
  FSelectedInvestedValueButton.Down:= True;

  CheckEditMode(dsData.DataSet);

  dsData.DataSet.FieldByName('INVESTED_VALUE_LEVEL').AsInteger:=
    StrToInt(RightStr(FSelectedInvestedValueButton.Caption, 1));
  dsData.DataSet.FieldByName('INVESTED_VALUE_SUM').AsInteger:=
    FSelectedInvestedValueButton.Tag;
  dsData.DataSet.FieldByName('INVESTED_VALUE_ABBREV').AsString:=
    FSelectedInvestedValueButton.Caption;
end;

procedure TBaseInvestedValueFilter.Initialize;
var
  ButtonName: string;
  InvestedValueLevel: string;
begin
  inherited;

  ButtonName:= 'btnLevel';
  InvestedValueLevel:= dsData.DataSet.FieldByName('INVESTED_VALUE_LEVEL').AsString;

  case TInvestedValueSum(dsData.DataSet.FieldByName('INVESTED_VALUE_SUM').AsInteger) of
    ivsNone: ButtonName:= ButtonName + InvestedValueLevel;
    ivsAggregated: ButtonName:= ButtonName + 'Aggregated';
    ivsFull: ButtonName:= ButtonName + 'Full';
  end;

  ButtonName:= ButtonName + InvestedValueLevel;

  FSelectedInvestedValueButton:= (FindComponent(ButtonName) as TSpeedButton);

  Assert(Assigned(FSelectedInvestedValueButton));

  FSelectedInvestedValueButton.Down:= True;
end;

end.
