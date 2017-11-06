unit fEarningModifiers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fBottomButtonGridForm, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmEarningModifiers = class(TBottomButtonGridForm)
    cdsGridDataEARNING_MODIFIER_CODE: TAbmesFloatField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    cdsGridData_MAX_EARNING_MODIFIER_CODE: TAggregateField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataLABOUR_COST_COEF: TAbmesFloatField;
    cdsGridDataORGANIZATION_COST_COEF: TAbmesFloatField;
    procedure cdsGridDataNewRecord(DataSet: TDataSet);                            
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uUtils, fEarningModifier, fEarningModifiersFilter,
  uClientUtils, uYearParts;

{$R *.dfm}

{ TfmEarningModifiers }

procedure TfmEarningModifiers.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataEARNING_MODIFIER_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_EARNING_MODIFIER_CODE.Value) + 1;
end;

procedure TfmEarningModifiers.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmEarningModifiersFilter;
  EditFormClass:= TfmEarningModifier;
  RegisterDateFields(cdsGridData);
end;

procedure TfmEarningModifiers.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  CheckRequiredFields([cdsGridDataBEGIN_DATE, cdsGridDataEND_DATE]);

  CheckDatePeriodYearParts(
    cdsGridDataBEGIN_DATE.AsDateTime,
    cdsGridDataEND_DATE.AsDateTime,
    LoginContext.DatePeriodsYearPartCode);
end;

end.
 
