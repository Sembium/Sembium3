unit fSysRoles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh,
  DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, Menus, Mask, uClientTypes, DBGridEhGrouping;

type
  TfmSysRoles = class(TBottomButtonGridForm)
    cdsGridDataSYS_ROLE_CODE: TAbmesFloatField;
    cdsGridDataSYS_ROLE_NO: TAbmesFloatField;
    cdsGridDataSYS_ROLE_NAME: TAbmesWideStringField;
    pdsGridDataParamsACTIVITY_CODE: TAbmesFloatField;
    cdsGridDataIS_RESERVED: TAbmesFloatField;
    cdsGridDataSYS_ROLE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataSYS_ROLE_TYPE_ABBREV: TAbmesWideStringField;
    edtSysRoleType: TDBEdit;
    cdsSysRoleTypes: TAbmesClientDataSet;
    cdsSysRoleTypesSYS_ROLE_TYPE_CODE: TAbmesFloatField;
    cdsSysRoleTypesSYS_ROLE_TYPE_NAME: TAbmesWideStringField;
    cdsSysRoleTypesSYS_ROLE_TYPE_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_SYS_ROLE_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParamsSYS_ROLE_TYPE_CODE: TAbmesFloatField;
    btnInsertLike: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  private
    { Private declarations }
  protected
    function GetDelRecordEnabled: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function GetInsertLikeEnabled: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  uUserActivityConsts, fSysRole, fSysRolesFilter, uSysRoleClientUtils;

{$R *.dfm}

{ TfmSysRoles }

procedure TfmSysRoles.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmSysRole;
  FilterFormClass:= TfmSysRolesFilter;
  cdsGridData.Params.ParamByName('SYS_ROLE_TYPE_CODE').AsFloat:= SysRoleTypeToInt(srtActivities);
end;

function TfmSysRoles.GetDelRecordEnabled: Boolean;
begin
  Result:=
    inherited GetDelRecordEnabled and
    (GetSysRoleNoType(cdsGridDataSYS_ROLE_NO.AsInteger) in [srntNormal, srntUserDerived]) and
    (not cdsGridDataIS_RESERVED.AsBoolean);
end;

function TfmSysRoles.GetInsertLikeEnabled: Boolean;
begin
  Result:=
   inherited GetInsertLikeEnabled and
   (IntToSysRoleType(cdsGridDataSYS_ROLE_TYPE_CODE.AsInteger) <> srtInternal);
end;

procedure TfmSysRoles.grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  inherited;
  Background:= SysRoleCellBackgrounds[GetSysRoleNoType(cdsGridDataSYS_ROLE_NO.AsInteger)];
end;

procedure TfmSysRoles.OpenDataSets;
begin
  cdsSysRoleTypes.Open;
  inherited;
end;

function TfmSysRoles.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  if (AEditMode = emInsert) and not InInsertLikeAction then
    Result:= TfmSysRole.ShowForm(dmDocClient, pdsGridDataParams, emInsert, doDataSet)
  else
    Result:= inherited ShowEditForm(AEditMode);
end;

procedure TfmSysRoles.CloseDataSets;
begin
  inherited;
  cdsSysRoleTypes.Close;
end;

end.
