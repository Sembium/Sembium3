unit fVatPeriods;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, Menus, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls;

type
  TfmVatPeriods = class(TBottomButtonGridForm)
    cdsGridDataVAT_PERIOD_CODE: TAbmesFloatField;
    cdsGridDataVAT_PERCENT: TAbmesFloatField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    cdsGridData_MAX_VAT_PERIOD_CODE: TAggregateField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    procedure cdsGridDataVAT_PERCENTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataVAT_PERCENTSetText(Sender: TField; const Text: string);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataVAT_PERCENTValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uClientUtils, uUtils, fVatPeriod, uYearParts, Math;

{$R *.dfm}

resourcestring
  SFieldValueMustBeBetween = 'Стойността на полето "%s" трябва да е между 0%% и 100%%';

procedure TfmVatPeriods.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataVAT_PERIOD_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_VAT_PERIOD_CODE.Value) + 1;
end;

procedure TfmVatPeriods.cdsGridDataVAT_PERCENTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText, False);
end;

procedure TfmVatPeriods.cdsGridDataVAT_PERCENTSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  PercentFieldSetText(Sender, Text);
end;

procedure TfmVatPeriods.cdsGridDataVAT_PERCENTValidate(Sender: TField);
begin
  inherited;
  if not InRange(Sender.AsFloat, 0, 1) then
    raise Exception.CreateFmt(SFieldValueMustBeBetween, [Sender.DisplayLabel])
end;

procedure TfmVatPeriods.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmVatPeriod;
  RegisterDateFields(cdsGridData);
end;

end.
