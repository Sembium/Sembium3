unit fFilterVariantSysRoles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDualGridForm, JvButtons, ParamDataSet, ActnList, DB,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  AbmesFields, JvComponentBase, JvCaptionButton, Menus, DBGridEhGrouping;

type
  TfmFilterVariantSysRoles = class(TDualGridForm)
    pdsGridDataParamsFILTER_CODE: TAbmesFloatField;
    pdsGridDataParamsFILTER_VARIANT_CODE: TAbmesFloatField;
    pnlTitle: TPanel;
    cdsOtherGridDataFILTER_CODE: TAbmesFloatField;
    cdsOtherGridDataFILTER_VARIANT_CODE: TAbmesFloatField;
    cdsOtherGridDataSYS_ROLE_CODE: TAbmesFloatField;
    cdsOtherGridDataSYS_ROLE_NO: TAbmesFloatField;
    cdsOtherGridDataSYS_ROLE_NAME: TAbmesWideStringField;
    cdsGridDataFILTER_CODE: TAbmesFloatField;
    cdsGridDataFILTER_VARIANT_CODE: TAbmesFloatField;
    cdsGridDataSYS_ROLE_CODE: TAbmesFloatField;
    cdsGridDataSYS_ROLE_NO: TAbmesFloatField;
    cdsGridDataSYS_ROLE_NAME: TAbmesWideStringField;
    btnNotSysRoleOccupations: TButton;
    btnSysRoleOccupations: TButton;
    actSysRoleOccupations: TAction;
    actNotSysRoleOccupations: TAction;
    procedure FormShow(Sender: TObject);
    procedure actSysRoleOccupationsExecute(Sender: TObject);
    procedure actNotSysRoleOccupationsExecute(Sender: TObject);
    procedure actSysRoleOccupationsUpdate(Sender: TObject);
    procedure actNotSysRoleOccupationsUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dMain, fOccupationsAndEmployees, uClientTypes, uLoginContext,
  uUserActivityConsts;

{$R *.dfm}
resourcestring
  SFilterVariantSysRoles = 'Набори Информационни Отговорности за използване на варианта "%s"';

procedure TfmFilterVariantSysRoles.actNotSysRoleOccupationsExecute(
  Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaOccupationsAndEmployees);
  TfmOccupationsAndEmployees.ShowForm(nil, cdsOtherGridData, emReadOnly, doNone, True, True);
end;

procedure TfmFilterVariantSysRoles.actNotSysRoleOccupationsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (cdsOtherGridData.RecordCount > 0);
end;

procedure TfmFilterVariantSysRoles.actSysRoleOccupationsExecute(
  Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaOccupationsAndEmployees);
  TfmOccupationsAndEmployees.ShowForm(nil, cdsGridData, emReadOnly, doNone, True, True);
end;

procedure TfmFilterVariantSysRoles.actSysRoleOccupationsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (cdsGridData.RecordCount > 0);
end;

procedure TfmFilterVariantSysRoles.FormShow(Sender: TObject);
begin
  inherited;
  pnlTitle.Caption:= Format(SFilterVariantSysRoles, [dsData.DataSet.FieldByName('FILTER_VARIANT_NAME').AsString]);
end;

end.
