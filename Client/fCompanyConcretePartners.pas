unit fCompanyConcretePartners;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, DB, AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls;

type
  TfmCompanyConcretePartners = class(TGridForm)
    cdsGridDataCOMPANY_STATUS_NAME: TAbmesWideStringField;
    cdsGridDataCOMPANY_NO: TAbmesFloatField;
    cdsGridDataCOMPANY_CLASS_ABBREV: TAbmesWideStringField;
    cdsGridDataSHORT_NAME: TAbmesWideStringField;
    cdsGridDataCOUNTRY_NAME: TAbmesWideStringField;
    cdsGridDataCITY: TAbmesWideStringField;
    cdsGridDataCOMPANY_STATUS_CODE: TAbmesFloatField;
    cdsGridDataBASE_ROLE_CODE: TAbmesFloatField;
    procedure cdsGridDataCOMPANY_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uCompanyClientUtils, uColorConsts;

{$R *.dfm}

procedure TfmCompanyConcretePartners.cdsGridDataCOMPANY_STATUS_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  CompanyStatusFieldGetText(Sender, cdsGridDataCOMPANY_STATUS_NAME, cdsGridDataBASE_ROLE_CODE, Text, DisplayText);
end;

procedure TfmCompanyConcretePartners.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if gdSelected in State then
    Exit;

  if (Column.Field = cdsGridDataCOMPANY_STATUS_CODE) then
    AFont.Color:= CompanyStatusColors[cdsGridDataCOMPANY_STATUS_CODE.AsInteger];
end;

end.
