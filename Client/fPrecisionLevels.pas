unit fPrecisionLevels;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, DBGridEhGrouping, Menus;

type
  TfmPrecisionLevels = class(TBottomButtonGridForm)
    cdsGridDataPRECISION_LEVEL_CODE: TAbmesFloatField;
    cdsGridDataPRECISION_LEVEL_NO: TAbmesFloatField;
    cdsGridDataPRECISION_LEVEL_NAME: TAbmesWideStringField;
    cdsGridDataCOLOR: TAbmesFloatField;
    cdsGridDataBACKGROUND_COLOR: TAbmesFloatField;
    cdsGridData_PRECISION_LEVEL_COLOR: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uUtils, fGridForm, fPrecisionLevel;

{$R *.dfm}

procedure TfmPrecisionLevels.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmPrecisionLevel;
end;

procedure TfmPrecisionLevels.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridData_PRECISION_LEVEL_COLOR.AsString:= 'ᴼ';
end;

procedure TfmPrecisionLevels.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.FieldName = '_PRECISION_LEVEL_COLOR') then
    begin
      if not cdsGridDataCOLOR.IsNull then
        AFont.Color:= cdsGridDataCOLOR.AsInteger;

      if not cdsGridDataBACKGROUND_COLOR.IsNull then
        Background:= cdsGridDataBACKGROUND_COLOR.AsInteger;
    end;  { if }
end;

end.
