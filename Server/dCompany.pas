unit dCompany;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  DBXDevartOracle, uSmartLock;

type
  TdmCompany = class(TDBPooledDataModule)
    qryBranches: TAbmesSQLQuery;
    prvBranches: TDataSetProvider;
    qryUsers: TAbmesSQLQuery;
    prvUsers: TDataSetProvider;
    qryStores: TAbmesSQLQuery;
    prvStores: TDataSetProvider;
    qryBranchesBRANCH_CODE: TAbmesFloatField;
    qryBranchesBRANCH_NO: TAbmesFloatField;
    qryBranchesNAME: TAbmesWideStringField;
    qryBranchesDEPT_CODE: TAbmesFloatField;
    qryStoresSTORE_CODE: TAbmesFloatField;
    qryStoresIS_COMPUTERIZED: TAbmesFloatField;
    qryUsersEMPLOYEE_CODE: TAbmesFloatField;
    qryUsersIS_DISABLED: TAbmesFloatField;
    qryStoresSTORE_NAME: TAbmesWideStringField;
    qryUserHasActivities: TAbmesSQLQuery;
    prvUserHasActivities: TDataSetProvider;
    prvUserHasNotActivities: TDataSetProvider;
    qryUserHasNotActivities: TAbmesSQLQuery;
    qryUserHasActivitiesEMPLOYEE_CODE: TAbmesFloatField;
    qryUserHasActivitiesACTIVITY_CODE: TAbmesFloatField;
    qryUserHasActivitiesACTIVITY_NAME: TAbmesWideStringField;
    qryUserHasNotActivitiesACTIVITY_NAME: TAbmesWideStringField;
    qryUserHasNotActivitiesACTIVITY_CODE: TAbmesFloatField;
    qryUsersEMPLOYEE_NAME: TAbmesWideStringField;
    qryBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    qryBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    qryStoresDEPT_IDENTIFIER: TAbmesWideStringField;
    qryStoresSTORE_IDENTIFIER: TAbmesWideStringField;
    qryStoresSTORE_FULL_NAME: TAbmesWideStringField;
    qryBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    qryBranchesIS_INACTIVE: TAbmesFloatField;
    prvUserGroups: TDataSetProvider;
    qryUserGroups: TAbmesSQLQuery;
    qryUserGroupsUSER_GROUP_CODE: TAbmesFloatField;
    qryUserGroupsUSER_GROUP_NAME: TAbmesWideStringField;
    dsUserGroup: TDataSource;
    qryUserGroupUsers: TAbmesSQLQuery;
    qryUserGroupUsersUSER_GROUP_CODE: TAbmesFloatField;
    qryUserGroupUsersEMPLOYEE_CODE: TAbmesFloatField;
    qryUserGroupUsersEMPLOYEE_NAME: TAbmesWideStringField;
    qryUserGroupHasActivities: TAbmesSQLQuery;
    prvUserGroupHasActivities: TDataSetProvider;
    prvUserGroupHasNotActivities: TDataSetProvider;
    qryUserGroupHasNotActivities: TAbmesSQLQuery;
    qryUserGroupHasActivitiesUSER_GROUP_CODE: TAbmesFloatField;
    qryUserGroupHasActivitiesACTIVITY_CODE: TAbmesFloatField;
    qryUserGroupHasActivitiesACTIVITY_NAME: TAbmesWideStringField;
    qryUserGroupHasNotActivitiesUSER_GROUP_CODE: TAbmesFloatField;
    qryUserGroupHasNotActivitiesACTIVITY_CODE: TAbmesFloatField;
    qryUserGroupHasNotActivitiesACTIVITY_NAME: TAbmesWideStringField;
    qryUserMemberGroups: TAbmesSQLQuery;
    qryUserMemberGroupsUSER_GROUP_CODE: TAbmesFloatField;
    qryUserMemberGroupsUSER_GROUP_NAME: TAbmesWideStringField;
    qryUserMemberGroupsEMPLOYEE_CODE: TAbmesFloatField;
    qryUserNotMemberGroups: TAbmesSQLQuery;
    prvUserNotMemberGroups: TDataSetProvider;
    qryUser: TAbmesSQLQuery;
    qryUserEMPLOYEE_CODE: TAbmesFloatField;
    qryUserIS_DISABLED: TAbmesFloatField;
    prvUser: TDataSetProvider;
    qryUserHasNotActivitiesEMPLOYEE_CODE: TAbmesFloatField;
    qryUserEffectiveActivities: TAbmesSQLQuery;
    prvUserEffectiveActivities: TDataSetProvider;
    qryUserEffectiveActivitiesACTIVITY_CODE: TAbmesFloatField;
    qryUserEffectiveActivitiesIS_PERSONAL_ACTIVITY: TAbmesFloatField;
    qryUserEffectiveActivitiesIS_GROUP_ACTIVITY: TAbmesFloatField;
    qryUserEffectiveForbiddenActivities: TAbmesSQLQuery;
    prvUserEffectiveForbiddenActivities: TDataSetProvider;
    qryUserEffectiveForbiddenActivitiesACTIVITY_CODE: TAbmesFloatField;
    qryUserEffectiveForbiddenActivitiesACTIVITY_NAME: TAbmesWideStringField;
    qryUserEffectiveActivitiesACTIVITY_NAME: TAbmesWideStringField;
    qryUserEffectiveActivitiesACTIVITY_GROUP_NAMES: TAbmesWideStringField;
    qryUserEffectiveForbiddenActivitiesACTIVITY_GROUP_NAMES: TAbmesWideStringField;
    qryUserGroupNotUsers: TAbmesSQLQuery;
    prvUserGroupNotUsers: TDataSetProvider;
    prvUserGroup: TDataSetProvider;
    qryUserGroup: TAbmesSQLQuery;
    qryCurrentDept: TAbmesSQLQuery;
    prvCurrentDept: TDataSetProvider;
    qryCurrentDeptEMPLOYEE_CODE: TAbmesFloatField;
    qryCurrentDeptCURRENT_DEPT_CODE: TAbmesFloatField;
    qryCurrentDeptCURRENT_DEPT_NAME: TAbmesWideStringField;
    qryCurrentDeptCURRENT_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryCurrentDeptStores: TAbmesSQLQuery;
    prvCurrentDeptStores: TDataSetProvider;
    qryCurrentDeptStoresSTORE_CODE: TAbmesFloatField;
    qryCurrentDeptStoresSTORE_NAME: TAbmesWideStringField;
    qryCurrentDeptStoresDEPT_IDENTIFIER: TAbmesWideStringField;
    qryCurrentDeptStoresSTORE_IDENTIFIER: TAbmesWideStringField;
    qryCurrentDeptStoresSTORE_FULL_NAME: TAbmesWideStringField;
    qryCurrentDeptStoresSTORE_NO: TAbmesFloatField;
    qryCurrentDeptStoresIS_COMPUTERIZED: TAbmesFloatField;
    qryUsersLAST_LOGIN_DATE: TAbmesSQLTimeStampField;
    qryUsersLAST_LOGIN_TIME: TAbmesSQLTimeStampField;
    qryStoresSTORE_NO: TAbmesFloatField;
    qryUserGroupNotUsersUSER_GROUP_CODE: TAbmesFloatField;
    qryUserGroupNotUsersEMPLOYEE_CODE: TAbmesFloatField;
    qryUserGroupNotUsersEMPLOYEE_NAME: TAbmesWideStringField;
    qryUserGroupUSER_GROUP_CODE: TAbmesFloatField;
    qryUserGroupUSER_GROUP_NAME: TAbmesWideStringField;
    qryUserNotMemberGroupsEMPLOYEE_CODE: TAbmesFloatField;
    qryUserNotMemberGroupsUSER_GROUP_CODE: TAbmesFloatField;
    qryUserNotMemberGroupsUSER_GROUP_NAME: TAbmesWideStringField;
    qryUsersEMPLOYEE_NO: TAbmesFloatField;
    qryUserGroupNotUsersEMPLOYEE_NO: TAbmesFloatField;
    qryUserGroupUsersEMPLOYEE_NO: TAbmesFloatField;
    qryUserHasNotActivitiesACTIVITY_NO: TAbmesFloatField;
    qryUserHasActivitiesACTIVITY_NO: TAbmesFloatField;
    qryUserEffectiveForbiddenActivitiesACTIVITY_NO: TAbmesFloatField;
    qryUserEffectiveActivitiesACTIVITY_NO: TAbmesFloatField;
    qryUserGroupHasActivitiesACTIVITY_NO: TAbmesFloatField;
    qryUserGroupHasNotActivitiesACTIVITY_NO: TAbmesFloatField;
    qrySysRoles: TAbmesSQLQuery;
    prvSysRoles: TDataSetProvider;
    qrySysRolesSYS_ROLE_CODE: TAbmesFloatField;
    qrySysRolesSYS_ROLE_NO: TAbmesFloatField;
    qrySysRolesSYS_ROLE_NAME: TAbmesWideStringField;
    prvSysRole: TDataSetProvider;
    qrySysRole: TAbmesSQLQuery;
    qrySysRoleSYS_ROLE_CODE: TAbmesFloatField;
    qrySysRoleSYS_ROLE_NO: TAbmesFloatField;
    qrySysRoleSYS_ROLE_NAME: TAbmesWideStringField;
    dsSysRole: TDataSource;
    qrySysRoleActivities: TAbmesSQLQuery;
    qrySysRoleActivitiesSYS_ROLE_CODE: TAbmesFloatField;
    qrySysRoleActivitiesACTIVITY_CODE: TAbmesFloatField;
    qrySysRoleActivitiesACTIVITY_NO: TAbmesFloatField;
    qrySysRoleActivitiesACTIVITY_NAME: TAbmesWideStringField;
    qrySysRoleNotActivities: TAbmesSQLQuery;
    qrySysRoleNotActivitiesSYS_ROLE_CODE: TAbmesFloatField;
    qrySysRoleNotActivitiesACTIVITY_CODE: TAbmesFloatField;
    qrySysRoleNotActivitiesACTIVITY_NO: TAbmesFloatField;
    qrySysRoleNotActivitiesACTIVITY_NAME: TAbmesWideStringField;
    prvSysRoleNotActivties: TDataSetProvider;
    qryGetNewSysRoleCode: TAbmesSQLQuery;
    qryGetNewSysRoleCodeNEW_SYS_ROLE_CODE: TAbmesFloatField;
    qryUserEffectiveActivitiesACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField;
    qryUserEffectiveForbiddenActivitiesACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField;
    prvUserMemberGroups: TDataSetProvider;
    qrySysRolesIS_RESERVED: TAbmesFloatField;
    qrySysRoleIS_RESERVED: TAbmesFloatField;
    qrySysRoleTypes: TAbmesSQLQuery;
    prvSysRoleTypes: TDataSetProvider;
    qrySysRoleTypesSYS_ROLE_TYPE_CODE: TAbmesFloatField;
    qrySysRoleTypesSYS_ROLE_TYPE_NAME: TAbmesWideStringField;
    qrySysRoleTypesSYS_ROLE_TYPE_ABBREV: TAbmesWideStringField;
    qrySysRolesSYS_ROLE_TYPE_CODE: TAbmesFloatField;
    qrySysRoleSYS_ROLE_TYPE_CODE: TAbmesFloatField;
    qrySysRolesSYS_ROLE_TYPE_ABBREV: TAbmesWideStringField;
    qryUsersLAST_LOGIN_WINDOWS_VERSION: TAbmesWideStringField;
    qryUsersLAST_LOGIN_HARDWARE_INFO: TAbmesWideStringField;
    qryUserEXTERNAL_IDENTIFIER: TAbmesWideStringField;
    qryUsersEXTERNAL_IDENTIFIER: TAbmesWideStringField;
    procedure prvUserGroupsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvSysRoleBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
  private
    function GetNewSysRoleCode: Integer;
  end;

type
  IdmCompanyProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmCompanyProxy = class(TDBPooledDataModuleProxy, IdmCompanyProxy)
  private
    class var FSingleton: TdmCompanyProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmCompany>;
  strict protected
    property LockedInstance: ISmartLock<TdmCompany> read GetLockedInstance;
  public
    class property Singleton: TdmCompanyProxy read FSingleton;
  end;

implementation

uses
  Variants, uUtils, uDBPooledDataModuleHelper, uSvrUtils;

{$R *.DFM}

{ TdmCompanyProxy }

function TdmCompanyProxy.GetLockedInstance: ISmartLock<TdmCompany>;
begin
  Result:= ISmartLock<TdmCompany>(inherited LockedInstance);
end;

{ TdmCompany }

function TdmCompany.GetNewSysRoleCode: Integer;
begin
  qryGetNewSysRoleCode.Open;
  try
    Result:= qryGetNewSysRoleCodeNEW_SYS_ROLE_CODE.AsInteger;
  finally
    qryGetNewSysRoleCode.Close;
  end;  { try }
end;

procedure TdmCompany.prvSysRoleBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  if (UpdateKind = ukInsert) then
    begin
     if (SourceDS = qrySysRole) then
       DeltaDS.FieldByName('SYS_ROLE_CODE').NewValue:= GetNewSysRoleCode;

     if (SourceDS = qrySysRoleActivities) then
       DeltaDS.FieldByName('SYS_ROLE_CODE').NewValue:=
         GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('SYS_ROLE_CODE'));
    end;  { if }
end;

procedure TdmCompany.prvUserGroupsBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (SourceDS = qryUserGroupUsers) and
     (UpdateKind = ukInsert) then
    begin
      DeltaDS.FieldByName('USER_GROUP_CODE').NewValue:=
        GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('USER_GROUP_CODE'));
    end;   { if }
end;

initialization
  TdmCompanyProxy.FSingleton:= TdmCompanyProxy.Create(TdmCompany);

finalization
  FreeAndNil(TdmCompanyProxy.FSingleton);
end.
