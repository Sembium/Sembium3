unit fEngineeringOrderTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvComponent, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, JvComponentBase;

type
  TfmEngineeringOrderTypes = class(TBottomButtonGridForm)
    cdsGridDataENGINEERING_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsGridDataENGINEERING_ORDER_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataENGINEERING_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridData_MAX_ENG_ORDER_TYPE_CODE: TAggregateField;
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uUtils, fEngineeringOrderType;

{$R *.dfm}

procedure TfmEngineeringOrderTypes.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataENGINEERING_ORDER_TYPE_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_ENG_ORDER_TYPE_CODE.AsVariant) + 1;
end;

procedure TfmEngineeringOrderTypes.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmEngineeringOrderType;
end;

end.
