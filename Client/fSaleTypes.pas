unit fSaleTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, Menus, JvButtons, ParamDataSet,
  ActnList, DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesFields,
  ComCtrls, ToolWin, JvComponent, JvCaptionButton;

type
  TfmSaleTypes = class(TBottomButtonGridForm)
    cdsGridDataSALE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataSALE_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataEXPORT_NO: TAbmesFloatField;
    cdsGridData_MAX_SALE_TYPE_CODE: TAggregateField;
    cdsGridDataEXPORT_NO_2: TAbmesFloatField;                                        
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fSaleType, uUtils;

{$R *.dfm}

{ TfmSaleTypes }

procedure TfmSaleTypes.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmSaleType;
end;

procedure TfmSaleTypes.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataSALE_TYPE_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_SALE_TYPE_CODE.Value) + 1;
end;

end.
