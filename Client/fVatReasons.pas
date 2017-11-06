unit fVatReasons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, DBGridEhGrouping, Menus, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fBottomButtonGridForm;

type
  TfmVatReasons = class(TBottomButtonGridForm)
    cdsGridDataVAT_REASON_CODE: TAbmesFloatField;
    cdsGridDataVAT_REASON_NO: TAbmesFloatField;
    cdsGridDataVAT_REASON_NAME: TAbmesWideStringField;
    cdsGridDataVAT_REASON_ABBREV: TAbmesWideStringField;
    cdsGridData_MAX_VAT_REASON_CODE: TAggregateField;
    cdsGridData_MAX_VAT_REASON_NO: TAggregateField;
    cdsGridDataVAT_REASON_I_NAME: TAbmesWideStringField;
    cdsGridDataVAT_REASON_I_ABBREV: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  fVatReason, uUtils;

{$R *.dfm}

procedure TfmVatReasons.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataVAT_REASON_CODE.AsInteger:= VarToInt(cdsGridData_MAX_VAT_REASON_CODE.AsVariant) + 1;
  cdsGridDataVAT_REASON_NO.AsInteger:= VarToInt(cdsGridData_MAX_VAT_REASON_NO.AsVariant) + 1;
end;

procedure TfmVatReasons.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmVatReason;
end;

end.
