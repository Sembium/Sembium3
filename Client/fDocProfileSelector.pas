unit fDocProfileSelector;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, fGridForm, DBGridEhGrouping, Menus, DB, AbmesFields, ParamDataSet, ActnList,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls;

type
  TfmDocProfileSelector = class(TGridForm)
    cdsGridDataDOC_PROFILE_CODE: TAbmesFloatField;
    cdsGridDataDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataDOC_PROFILE_NO: TAbmesFloatField;
    cdsGridDataDOC_PROFILE_NAME: TAbmesWideStringField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataDOC_EMPTINESS_REQ_CODE: TAbmesFloatField;
    cdsGridDataDOC_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataAUTHORIZE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataAUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField;
    procedure cdsGridDataAfterScroll(DataSet: TDataSet);
    procedure cdsGridDataDOC_EMPTINESS_REQ_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataAUTHORIZE_EMPLOYEE_ABBREVGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uUtils, uDocClientUtils, uDocUtils;

{$R *.dfm}

procedure TfmDocProfileSelector.cdsGridDataAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('DOC_BRANCH_CODE').Assign(cdsGridDataDOC_BRANCH_CODE);
  dsData.DataSet.FieldByName('DOC_CODE').Assign(cdsGridDataDOC_CODE);
end;

procedure TfmDocProfileSelector.cdsGridDataAUTHORIZE_EMPLOYEE_ABBREVGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull then
    Text:= ''
  else
    Text:= Format('        %s           %s', [
      Sender.AsString,
      cdsGridDataAUTHORIZE_EMPLOYEE_NAME.AsString]);
end;

procedure TfmDocProfileSelector.cdsGridDataDOC_EMPTINESS_REQ_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  DocEmptinessRequirementFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDocProfileSelector.cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  UnauthorizedActiveDocItemCountFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDocProfileSelector.grdDataGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  DocFieldsGetCellParams(Sender, Column, AFont, Background, State);
end;

end.
