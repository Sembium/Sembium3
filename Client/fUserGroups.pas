unit fUserGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, Menus, JvButtons, ImgList,
  ParamDataSet, ActnList, DB, DBClient, AbmesClientDataSet, GridsEh,
  DBGridEh, AbmesDBGrid, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, AbmesFields, ComCtrls, ToolWin, uClientTypes, JvComponent,
  JvCaptionButton, JvComponentBase, DBGridEhGrouping;

type
  TfmUserGroups = class(TBottomButtonGridForm)
    cdsGridDataUSER_GROUP_CODE: TAbmesFloatField;
    cdsGridDataUSER_GROUP_NAME: TAbmesWideStringField;
    cdsGridData_MAX_USER_GROUP_CODE: TAggregateField;
    btnUserGroupActivities: TBitBtn;
    actUserGroupActivities: TAction;
    procedure actDelRecordUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actUserGroupActivitiesUpdate(Sender: TObject);
    procedure actUserGroupActivitiesExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uUtils, uUserActivityConsts, fUserGroupsEdit,
  fUserGroupActivities;

{$R *.dfm}

{ TfmUserGroups }

procedure TfmUserGroups.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmUserGroupsEdit;
end;

procedure TfmUserGroups.actUserGroupActivitiesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmUserGroups.actDelRecordUpdate(Sender: TObject);
begin
  // do not call inherited
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    not cdsGridData.ReadOnly and
    (cdsGridDataUSER_GROUP_CODE.AsInteger <> UserGroupAllUsersCode);
end;

procedure TfmUserGroups.actUserGroupActivitiesExecute(Sender: TObject);
var
  AEditMode: TEditMode;
begin
  inherited;

  if LoginContext.HasUserActivity(uaUserGroupActivitiesEdit) and (EditMode <> emReadOnly) then
    AEditMode:= EditMode
  else
    AEditMode:= emReadOnly;

  TfmUserGroupActivities.ShowForm(dmDocClient, cdsGridData, AEditMode);
end;

function TfmUserGroups.ShowEditForm(AEditMode: TEditMode): Boolean;
var
  em: TEditMode;
begin
  if (AEditMode = emEdit) and (cdsGridDataUSER_GROUP_CODE.AsInteger = UserGroupAllUsersCode) then
    em:= emReadOnly
  else
    em:= AEditMode;

  Result:= TfmUserGroupsEdit.ShowForm(dmDocClient, cdsGridData, em);
end;

end.
