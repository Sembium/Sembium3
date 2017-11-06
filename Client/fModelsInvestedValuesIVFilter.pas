unit fModelsInvestedValuesIVFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fXModelInvestedValueFilter, DB, DBClient, AbmesClientDataSet,
  JvButtons, ActnList, StdCtrls, Buttons, JvDBLookup, ExtCtrls, DBCtrls, Mask,
  JvComponent, JvCaptionButton, JvExControls, JvExExtCtrls, JvDBRadioPanel,
  JvComponentBase;

type
  TfmModelsInvestedValuesIVFilter = class(TfmXModelInvestedValueFilter)
  private
    FInvestedValueLevel: Variant;
    FInvestedValueSum: Variant;
    FInvestedValueAbbrev: Variant;
    FCurrencyCode: Variant;
    FInvestedValueSingle: Variant;
  protected
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
  public
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

{$R *.dfm}

{ TfmModelsInvestedValuesIVFilter }

procedure TfmModelsInvestedValuesIVFilter.DoApplyUpdates;
begin
//  inherited;  do nothing
end;

procedure TfmModelsInvestedValuesIVFilter.DoCancelUpdates;
begin
  with dsData.DataSet do
    if (State in dsEditModes) then
      begin
        FieldByName('INVESTED_VALUE_LEVEL').AsVariant:= FInvestedValueLevel;
        FieldByName('INVESTED_VALUE_SUM').AsVariant:= FInvestedValueSum;
        FieldByName('INVESTED_VALUE_ABBREV').AsVariant:= FInvestedValueAbbrev;
        FieldByName('CURRENCY_CODE').AsVariant:= FCurrencyCode;
        FieldByName('INVESTED_VALUE_SINGLE').AsVariant:= FInvestedValueSingle;
      end;
end;

procedure TfmModelsInvestedValuesIVFilter.Initialize;
begin
  inherited;

  with dsData.DataSet do
    begin
      FInvestedValueLevel:= FieldByName('INVESTED_VALUE_LEVEL').AsVariant;
      FInvestedValueSum:= FieldByName('INVESTED_VALUE_SUM').AsVariant;
      FInvestedValueAbbrev:= FieldByName('INVESTED_VALUE_ABBREV').AsVariant;
      FCurrencyCode:= FieldByName('CURRENCY_CODE').AsVariant;
      FInvestedValueSingle:= FieldByName('INVESTED_VALUE_SINGLE').AsVariant;
    end;  { with }
end;

procedure TfmModelsInvestedValuesIVFilter.Finalize;
begin
//  inherited;  do nothing
end;

end.
