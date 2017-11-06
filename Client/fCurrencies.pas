unit fCurrencies;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient, GridsEh,
  fBottomButtonGridForm, AbmesClientDataSet, DBGridEh, AbmesDBGrid,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesFields, Menus,
  JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton, JvComponentBase,
  DBGridEhGrouping;

type
  TfmCurrencies = class(TBottomButtonGridForm)
    cdsGridDataCURRENCY_CODE: TAbmesFloatField;
    cdsGridDataCURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridDataCURRENCY_NAME: TAbmesWideStringField;
    cdsGridDataSCALE: TAbmesFloatField;
    cdsGridDataROUNDER: TAbmesFloatField;                                                
    cdsGridDataORDER_NO: TAbmesFloatField;
    cdsGridDataCURRENCY_NAME_SINGULAR: TAbmesWideStringField;
    cdsGridDataCURRENCY_NAME_PLURAL: TAbmesWideStringField;
    cdsGridDataCURRENCY_NAME_GENDER_CODE: TAbmesFloatField;
    cdsGridDataCURRENCY_CENT_NAME_SINGULAR: TAbmesWideStringField;
    cdsGridDataCURRENCY_CENT_NAME_PLURAL: TAbmesWideStringField;
    cdsGridDataCURRENCY_CENT_NAME_GENDER_CODE: TAbmesFloatField;
    cdsGrammaticalGenders: TAbmesClientDataSet;
    cdsGrammaticalGendersGENDER_CODE: TAbmesFloatField;
    cdsGrammaticalGendersGENDER_NAME: TAbmesWideStringField;
    cdsGridData_CURRENCY_NAME_GENDER: TAbmesWideStringField;
    cdsGridData_CURRENCY_CENT_NAME_GENDER: TAbmesWideStringField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataCURRENCY_I_NAME_SINGULAR: TAbmesWideStringField;
    cdsGridDataCURRENCY_I_NAME_PLURAL: TAbmesWideStringField;
    cdsGridDataCURRENCY_CENT_I_NAME_SINGULAR: TAbmesWideStringField;
    cdsGridDataCURRENCY_CENT_I_NAME_PLURAL: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataROUNDERGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsGridDataROUNDERSetText(Sender: TField;
      const Text: String);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataPRODUCT_CODEChange(Sender: TField);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fCurrency, Math, uTreeClientUtils;

{$R *.DFM}

{ TfmCurrencies }

procedure TfmCurrencies.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmCurrency;
end;

procedure TfmCurrencies.cdsGridDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  DoProductFieldChanged(Sender, cdsGridDataPRODUCT_NAME, cdsGridDataPRODUCT_NO);
end;

procedure TfmCurrencies.cdsGridDataROUNDERGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= FloatToStr(IntPower(10, -cdsGridDataROUNDER.AsInteger));
end;

procedure TfmCurrencies.cdsGridDataROUNDERSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  cdsGridDataROUNDER.AsInteger:= Trunc(-Log10(StrToFloat(Text)));
end;

procedure TfmCurrencies.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataROUNDER.AsInteger:= 0;
end;

procedure TfmCurrencies.CloseDataSets;
begin
  cdsGrammaticalGenders.Close;
  inherited;
end;

procedure TfmCurrencies.OpenDataSets;
begin
  inherited;
  cdsGrammaticalGenders.Open;
end;

end.
