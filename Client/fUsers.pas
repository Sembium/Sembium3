unit fUsers;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient, GridsEh,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fBottomButtonGridForm, AbmesClientDataSet, DBGridEh, AbmesDBGrid, AbmesFields,
  Menus, JvButtons, uClientTypes, ComCtrls, ToolWin, JvComponent,
  JvCaptionButton, JvComponentBase, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmUsers = class(TBottomButtonGridForm)
    cdsGridDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataIS_DISABLED: TAbmesFloatField;
    btnUserActivities: TBitBtn;
    actEditUserActivities: TAction;
    cdsGridDataEMPLOYEE_NAME: TAbmesWideStringField;
    btnConfigUser: TBitBtn;
    actConfigUser: TAction;                                                                           
    pmUserActivities: TPopupMenu;
    actShowEffectiveUserActivities: TAction;
    miUserActivities: TMenuItem;
    miShowEffectiveUserActivities: TMenuItem;
    pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataLAST_LOGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataLAST_LOGIN_TIME: TAbmesSQLTimeStampField;
    cdsGridDataEMPLOYEE_NO: TAbmesFloatField;
    actUserMemberGroups: TAction;
    miUserMemberGroups: TMenuItem;
    actUserActivities: TAction;
    cdsGridDataLAST_LOGIN_WINDOWS_VERSION: TAbmesWideStringField;
    cdsGridDataLAST_LOGIN_HARDWARE_INFO: TAbmesWideStringField;
    cdsGridDataEXTERNAL_IDENTIFIER: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actEditUserActivitiesExecute(Sender: TObject);
    procedure actConfigUserUpdate(Sender: TObject);
    procedure actEditUserActivitiesUpdate(Sender: TObject);
    procedure actConfigUserExecute(Sender: TObject);
    procedure actShowEffectiveUserActivitiesExecute(Sender: TObject);
    procedure actUserMemberGroupsUpdate(Sender: TObject);
    procedure actUserMemberGroupsExecute(Sender: TObject);
    procedure actUserActivitiesExecute(Sender: TObject);
    procedure actUserActivitiesUpdate(Sender: TObject);
  private
    { Private declarations }
  protected
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fUser, fUserActivities, uUserActivityConsts, fConfigUser,
  uClientUtils, fUserEffectiveActivities, fUserMemberGroups, Math, StrUtils,
  uConnectionUtils;

resourcestring
  SUserActivitiesCaption = 'ИнфОтг';

{$R *.DFM}

{ TfmUsers }

procedure TfmUsers.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmUser;
  RegisterDateFields([cdsGridDataLAST_LOGIN_DATE]);
end;

procedure TfmUsers.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('EMPLOYEE_CODE').Clear;
end;

procedure TfmUsers.actEditUserActivitiesExecute(Sender: TObject);
begin
  inherited;
  if LoginContext.HasUserActivity(uaUserActivitiesEdit) then
    TfmUserActivities.ShowForm(dmDocClient, cdsGridData, EditMode)
  else
    TfmUserActivities.ShowForm(dmDocClient, cdsGridData, emReadOnly);
end;

procedure TfmUsers.actConfigUserUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    not cdsGridData.IsEmpty;
end;

procedure TfmUsers.actEditUserActivitiesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
  (Sender as TAction).Visible:= LoginContext.IsOldActivitySystemVisible;
end;

procedure TfmUsers.actConfigUserExecute(Sender: TObject);
begin
  inherited;

  Assert(EditMode <> emInsert);

  LoginContext.CheckUserActivity(uaConfigAnyUser);

  TfmConfigUser.ShowForm(dmDocClient, cdsGridDataEMPLOYEE_CODE.AsInteger, EditMode);
end;

function TfmUsers.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmUser.ShowForm(dmDocClient, cdsGridData, AEditMode);     
end;

procedure TfmUsers.actShowEffectiveUserActivitiesExecute(Sender: TObject);
begin
  inherited;
  TfmUserEffectiveActivities.ShowForm(dmDocClient, cdsGridData, emReadOnly);
end;

procedure TfmUsers.actUserActivitiesExecute(Sender: TObject);
begin
  inherited;
  if LoginContext.IsOldActivitySystemVisible then
    PopupMenuFromButton((Sender as TAction).ActionComponent as TControl, pmUserActivities)
  else
    actShowEffectiveUserActivities.Execute;
end;

procedure TfmUsers.actUserActivitiesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Caption:=
    SUserActivitiesCaption +
    IfThen(not LoginContext.IsOldActivitySystemVisible, cDialogSuffix); 

  (Sender as TAction).Hint:=
    IfThen(not LoginContext.IsOldActivitySystemVisible, actShowEffectiveUserActivities.Hint, SUserActivitiesCaption);
end;

procedure TfmUsers.actUserMemberGroupsExecute(Sender: TObject);
begin
  inherited;
  if LoginContext.HasUserActivity(uaUsersEdit) then
    TfmUserMemberGroups.ShowForm(dmDocClient, cdsGridData, EditMode)
  else
    TfmUserMemberGroups.ShowForm(dmDocClient, cdsGridData, emReadOnly);
end;

procedure TfmUsers.actUserMemberGroupsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
  (Sender as TAction).Visible:= LoginContext.IsOldActivitySystemVisible;
end;

end.
