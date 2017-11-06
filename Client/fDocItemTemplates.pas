unit fDocItemTemplates;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvButtons, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, JvComponent, JvCaptionButton, JvComponentBase,
  DBGridEhGrouping, Menus;

type
  TfmDocItemTemplates = class(TBottomButtonGridForm)
    cdsGridDataDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField;
    cdsGridDataDOC_ITEM_TEMPLATE_NAME: TAbmesWideStringField;
    cdsGridDataDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataDOC_ITEM_CODE: TAbmesFloatField;
    cdsGridDataIS_PATTERN: TAbmesFloatField;
    cdsGridDataDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsGridDataDOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataDOC_ITEM_TEMPLATE_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataNOTES: TAbmesWideStringField;
    cdsGridDataIS_INACTIVE: TAbmesFloatField;
    cdsGridData_MAX_DOC_ITEM_TEMPLATE_CODE: TAggregateField;
    procedure FormCreate(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fDocItemTemplate, uUserActivityConsts, uUtils;

{$R *.dfm}

{ TfmDocItemTemplates }

procedure TfmDocItemTemplates.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmDocItemTemplate;
end;

procedure TfmDocItemTemplates.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if cdsGridData.IsEmpty then
    Exit;

  if cdsGridDataIS_INACTIVE.AsBoolean then
    AFont.Color:= clGray;
end;

end.
