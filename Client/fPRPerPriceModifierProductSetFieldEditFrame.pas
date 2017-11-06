unit fPRPerPriceModifierProductSetFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fProductSetFieldEditFrame, DB, AbmesFields, DBClient, AbmesClientDataSet, ActnList,
  JvExControls, JvDBLookup, StdCtrls, Mask, DBCtrls;

type
  TfrPRPerPriceModifierProductSetFieldEditFrame = class(TfrProductSetFieldEditFrame)
    procedure cdsEnumItemsBeforeOpen(DataSet: TDataSet);
  private
    FParRelPeriodBeginDateField: TField;
    FParRelPeriodEndDateField: TField;
  public
    property ParRelPeriodBeginDateField: TField read FParRelPeriodBeginDateField write FParRelPeriodBeginDateField;
    property ParRelPeriodEndDateField: TField read FParRelPeriodEndDateField write FParRelPeriodEndDateField;
  end;

implementation

{$R *.dfm}

procedure TfrPRPerPriceModifierProductSetFieldEditFrame.cdsEnumItemsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsEnumItems.Params.ParamByName('BEGIN_DATE').Assign(ParRelPeriodBeginDateField);
  cdsEnumItems.Params.ParamByName('END_DATE').Assign(ParRelPeriodEndDateField);
end;

end.
