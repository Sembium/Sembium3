unit fPriorities;

interface

uses                                                                              
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBottomButtonGridForm, ImgList, ParamDataSet, ActnList, Db,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesFields, Menus,
  JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton, JvComponentBase,
  DBGridEhGrouping;

type
  TfmPriorities = class(TBottomButtonGridForm)
    cdsGridDataPRIORITY_CODE: TAbmesFloatField;
    cdsGridDataPRIORITY_NAME: TAbmesWideStringField;
    cdsGridDataPRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridData_PRIORITY_COLOR: TAbmesWideStringField;
    cdsGridDataPRIORITY_NO: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fPriority, uColorConsts, uUtils;

{$R *.DFM}

{ TfmPriorities }

procedure TfmPriorities.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmPriority;
end;

procedure TfmPriorities.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridData_PRIORITY_COLOR.AsString:= 'ᴼ';
end;

procedure TfmPriorities.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.FieldName = '_PRIORITY_COLOR') then
    begin
      if not cdsGridDataPRIORITY_COLOR.IsNull then
        AFont.Color:= cdsGridDataPRIORITY_COLOR.AsInteger;

      if not cdsGridDataPRIORITY_BACKGROUND_COLOR.IsNull then
        Background:= cdsGridDataPRIORITY_BACKGROUND_COLOR.AsInteger;
    end;
end;

end.
