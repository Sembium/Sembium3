inherited dmCompany: TdmCompany
  Height = 653
  Width = 896
  object prvUsers: TDataSetProvider
    DataSet = qryUsers
    Options = [poCascadeDeletes]
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 8
  end
  object qryUsers: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  u.EMPLOYEE_CODE,'
      '  u.IS_DISABLED,'
      ''
      '  (e.FIRST_NAME ||'
      '    Nvl2(e.MIDDLE_NAME,'
      '      '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '      '#39' '#39') ||'
      '    e.LAST_NAME'
      '  ) as EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_NO,'
      ''
      '  u.LAST_LOGIN_DATE,'
      '  u.LAST_LOGIN_TIME,'
      '  u.LAST_LOGIN_WINDOWS_VERSION,'
      '  u.LAST_LOGIN_HARDWARE_INFO,'
      '  u.EXTERNAL_IDENTIFIER'
      ''
      'from'
      '  USERS u,'
      '  EMPLOYEES e'
      ''
      'where'
      '  (u.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      ''
      '  ( (:EMPLOYEE_CODE is null) or'
      '    (u.EMPLOYEE_CODE = :EMPLOYEE_CODE) )'
      ''
      'order by'
      '  u.EMPLOYEE_CODE'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'USERS'
    Left = 32
    Top = 56
    object qryUsersEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryUsersIS_DISABLED: TAbmesFloatField
      FieldName = 'IS_DISABLED'
      Required = True
    end
    object qryUsersEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 41
    end
    object qryUsersEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
      ProviderFlags = []
    end
    object qryUsersLAST_LOGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'LAST_LOGIN_DATE'
      ProviderFlags = []
    end
    object qryUsersLAST_LOGIN_TIME: TAbmesSQLTimeStampField
      FieldName = 'LAST_LOGIN_TIME'
      ProviderFlags = []
    end
    object qryUsersLAST_LOGIN_WINDOWS_VERSION: TAbmesWideStringField
      FieldName = 'LAST_LOGIN_WINDOWS_VERSION'
      Size = 100
    end
    object qryUsersLAST_LOGIN_HARDWARE_INFO: TAbmesWideStringField
      FieldName = 'LAST_LOGIN_HARDWARE_INFO'
      Size = 250
    end
    object qryUsersEXTERNAL_IDENTIFIER: TAbmesWideStringField
      FieldName = 'EXTERNAL_IDENTIFIER'
      Size = 100
    end
  end
  object prvBranches: TDataSetProvider
    DataSet = qryBranches
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 272
  end
  object qryBranches: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE,'
      '  d.DEPT_CODE as BRANCH_CODE,'
      '  d.CUSTOM_CODE as BRANCH_NO,'
      '  d.NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as B' +
        'RANCH_IDENTIFIER,'
      '  (d.CUSTOM_CODE || '#39' - '#39' || d.NAME) as BRANCH_CODE_AND_NAME,'
      '  1 as IS_LOCAL_BRANCH,'
      ''
      '  case'
      
        '    when (ContextDate between d.BEGIN_DATE and Coalesce(d.END_DATE' +
        ', ContextDate)) then 0'
      '  else'
      '    1'
      '  end as IS_INACTIVE'
      ''
      'from'
      '  DEPTS d,'
      '  BRANCHES b,'
      '  DEPT_TYPES dt'
      ''
      'where'
      '  (d.DEPT_CODE = b.BRANCH_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      ''
      'order by'
      '  BRANCH_IDENTIFIER')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 24
    Top = 320
    object qryBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBranchesBRANCH_NO: TAbmesFloatField
      FieldName = 'BRANCH_NO'
    end
    object qryBranchesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object qryBranchesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfHidden]
    end
    object qryBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 46
    end
    object qryBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 143
    end
    object qryBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object qryBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object prvStores: TDataSetProvider
    DataSet = qryStores
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 296
  end
  object qryStores: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  s.STORE_CODE,'
      '  d.CUSTOM_CODE as STORE_NO,'
      '  s.IS_COMPUTERIZED,'
      '  d.NAME as STORE_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'TORE_IDENTIFIER,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER || '#39' ' +
        '- '#39' || d.NAME) as STORE_FULL_NAME'
      'from'
      '  STORES s,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      'where'
      '  (s.STORE_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) '
      'order by'
      '  DEPT_IDENTIFIER')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'STORES'
    Left = 96
    Top = 344
    object qryStoresSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryStoresIS_COMPUTERIZED: TAbmesFloatField
      FieldName = 'IS_COMPUTERIZED'
      Required = True
    end
    object qryStoresSTORE_NAME: TAbmesWideStringField
      FieldName = 'STORE_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryStoresDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryStoresSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 45
    end
    object qryStoresSTORE_FULL_NAME: TAbmesWideStringField
      FieldName = 'STORE_FULL_NAME'
      ProviderFlags = []
      Size = 200
    end
    object qryStoresSTORE_NO: TAbmesFloatField
      FieldName = 'STORE_NO'
    end
  end
  object qryUserHasActivities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ua.*,'
      '  a.ACTIVITY_NAME,'
      '  a.ACTIVITY_NO'
      'from'
      '  USER_ACTIVITIES ua,'
      '  ACTIVITIES a'
      'where'
      '  (ua.ACTIVITY_CODE = a.ACTIVITY_CODE) and'
      '  (ua.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '  (a.IS_ACTIVE = 1)'
      'order by'
      '  a.ACTIVITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 416
    Top = 352
    object qryUserHasActivitiesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserHasActivitiesACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserHasActivitiesACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      ProviderFlags = []
      Size = 150
    end
    object qryUserHasActivitiesACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
      ProviderFlags = []
    end
  end
  object prvUserHasActivities: TDataSetProvider
    DataSet = qryUserHasActivities
    Left = 416
    Top = 304
  end
  object prvUserHasNotActivities: TDataSetProvider
    DataSet = qryUserHasNotActivities
    Left = 416
    Top = 400
  end
  object qryUserHasNotActivities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_number(:EMPLOYEE_CODE) as EMPLOYEE_CODE,'
      '  ACTIVITY_CODE,'
      '  ACTIVITY_NAME,'
      '  ACTIVITY_NO'
      'from'
      '  ACTIVITIES'
      'where'
      '  (ACTIVITY_CODE not in'
      '    ('
      '      select'
      '        ACTIVITY_CODE'
      '      from'
      '        USER_ACTIVITIES'
      '      where'
      '        (EMPLOYEE_CODE = :EMPLOYEE_CODE)'
      '    )'
      '  ) and'
      '  (IS_ACTIVE = 1)'
      'order by'
      '  ACTIVITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 416
    Top = 448
    object qryUserHasNotActivitiesACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
    end
    object qryUserHasNotActivitiesACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
    object qryUserHasNotActivitiesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryUserHasNotActivitiesACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
    end
  end
  object prvUserGroups: TDataSetProvider
    DataSet = qryUserGroups
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvUserGroupsBeforeUpdateRecord
    Left = 400
    Top = 8
  end
  object qryUserGroups: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  ug.USER_GROUP_CODE,'
      '  ug.USER_GROUP_NAME'
      'from'
      '  USER_GROUPS ug'
      'order by'
      '  ug.USER_GROUP_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 400
    Top = 56
    object qryUserGroupsUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserGroupsUSER_GROUP_NAME: TAbmesWideStringField
      FieldName = 'USER_GROUP_NAME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object dsUserGroup: TDataSource
    DataSet = qryUserGroup
    Left = 400
    Top = 200
  end
  object qryUserGroupUsers: TAbmesSQLQuery
    DataSource = dsUserGroup
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_GROUP_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  ugu.USER_GROUP_CODE,'
      '  ugu.EMPLOYEE_CODE,'
      '  (e.FIRST_NAME || '#39' '#39' || e.LAST_NAME) as EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_NO'
      ''
      'from'
      '  USER_GROUP_USERS ugu,'
      '  USERS u,'
      '  EMPLOYEES e'
      ''
      'where'
      '  (ugu.EMPLOYEE_CODE = u.EMPLOYEE_CODE) and'
      '  (u.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '  (ugu.USER_GROUP_CODE = :USER_GROUP_CODE)'
      '  '
      'order by'
      '  e.FIRST_NAME,'
      '  e.LAST_NAME,'
      '  ugu.EMPLOYEE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'USER_GROUP_USERS'
    Left = 400
    Top = 248
    object qryUserGroupUsersUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserGroupUsersEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserGroupUsersEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 41
    end
    object qryUserGroupUsersEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
      ProviderFlags = []
    end
  end
  object qryUserGroupHasActivities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_GROUP_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  uga.USER_GROUP_CODE,'
      '  uga.ACTIVITY_CODE,'
      '  a.ACTIVITY_NAME,'
      '  a.ACTIVITY_NO'
      'from'
      '  USER_GROUP_ACTIVITIES uga,'
      '  ACTIVITIES a'
      'where'
      '  (uga.ACTIVITY_CODE = a.ACTIVITY_CODE) and'
      '  (uga.USER_GROUP_CODE = :USER_GROUP_CODE) and'
      '  (a.IS_ACTIVE = 1)'
      'order by'
      '  a.ACTIVITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 512
    Top = 384
    object qryUserGroupHasActivitiesUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserGroupHasActivitiesACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserGroupHasActivitiesACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      ProviderFlags = []
      Size = 150
    end
    object qryUserGroupHasActivitiesACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
      ProviderFlags = []
    end
  end
  object prvUserGroupHasActivities: TDataSetProvider
    DataSet = qryUserGroupHasActivities
    Left = 536
    Top = 312
  end
  object prvUserGroupHasNotActivities: TDataSetProvider
    DataSet = qryUserGroupHasNotActivities
    Left = 512
    Top = 432
  end
  object qryUserGroupHasNotActivities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_GROUP_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_number(:USER_GROUP_CODE) as USER_GROUP_CODE,'
      '  a.ACTIVITY_CODE,'
      '  a.ACTIVITY_NAME,'
      '  a.ACTIVITY_NO'
      'from'
      '  ACTIVITIES a'
      'where'
      '  (a.ACTIVITY_CODE not in'
      '    ('
      '      select'
      '        uga.ACTIVITY_CODE'
      '      from'
      '        USER_GROUP_ACTIVITIES uga'
      '      where'
      '        (uga.USER_GROUP_CODE = :USER_GROUP_CODE)'
      '    )'
      '  ) and'
      '  (a.IS_ACTIVE = 1)'
      'order by'
      '  a.ACTIVITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 512
    Top = 480
    object qryUserGroupHasNotActivitiesUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
    end
    object qryUserGroupHasNotActivitiesACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
    end
    object qryUserGroupHasNotActivitiesACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
    object qryUserGroupHasNotActivitiesACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
    end
  end
  object qryUserMemberGroups: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  ugu.EMPLOYEE_CODE,'
      '  ugu.USER_GROUP_CODE,'
      '  ug.USER_GROUP_NAME'
      'from'
      '  USER_GROUP_USERS ugu,'
      '  USER_GROUPS ug'
      'where'
      '  (ugu.USER_GROUP_CODE <> CommonConsts.ugAllUsers) and'
      '  (ugu.USER_GROUP_CODE = ug.USER_GROUP_CODE) and'
      '  (ugu.EMPLOYEE_CODE = :EMPLOYEE_CODE)'
      'order by'
      '  ug.USER_GROUP_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 192
    Top = 472
    object qryUserMemberGroupsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserMemberGroupsUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserMemberGroupsUSER_GROUP_NAME: TAbmesWideStringField
      FieldName = 'USER_GROUP_NAME'
      ProviderFlags = []
      Size = 50
    end
  end
  object qryUserNotMemberGroups: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_number(:EMPLOYEE_CODE) as EMPLOYEE_CODE,'
      '  ug.USER_GROUP_CODE,'
      '  ug.USER_GROUP_NAME'
      ''
      'from'
      '  USER_GROUPS ug'
      ''
      'where'
      '  (ug.USER_GROUP_CODE <> CommonConsts.ugAllUsers) and'
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        USER_GROUP_USERS ugu'
      '      where'
      '        (ugu.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '        (ugu.USER_GROUP_CODE = ug.USER_GROUP_CODE)'
      '    )'
      '  )'
      ''
      'order by'
      '  ug.USER_GROUP_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 472
    object qryUserNotMemberGroupsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserNotMemberGroupsUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserNotMemberGroupsUSER_GROUP_NAME: TAbmesWideStringField
      FieldName = 'USER_GROUP_NAME'
      ProviderFlags = []
      Size = 50
    end
  end
  object prvUserNotMemberGroups: TDataSetProvider
    DataSet = qryUserNotMemberGroups
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 424
  end
  object qryUser: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  u.EMPLOYEE_CODE,'
      '  u.IS_DISABLED,'
      '  u.EXTERNAL_IDENTIFIER'
      'from'
      '  USERS u,'
      '  EMPLOYEES e'
      'where'
      '  (u.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '  (u.EMPLOYEE_CODE = :EMPLOYEE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 8
    Top = 152
    object qryUserEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserIS_DISABLED: TAbmesFloatField
      FieldName = 'IS_DISABLED'
    end
    object qryUserEXTERNAL_IDENTIFIER: TAbmesWideStringField
      FieldName = 'EXTERNAL_IDENTIFIER'
      Size = 100
    end
  end
  object prvUser: TDataSetProvider
    DataSet = qryUser
    Left = 8
    Top = 104
  end
  object qryUserEffectiveActivities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  a.ACTIVITY_CODE,'
      '  a.ACTIVITY_NAME,'
      '  a.ACTIVITY_NO,'
      '  '
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      USER_ACTIVITIES ua'
      '    where'
      '      (ua.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '      (ua.ACTIVITY_CODE = a.ACTIVITY_CODE)'
      '   ) as IS_PERSONAL_ACTIVITY,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      USER_GROUP_USERS ugu,'
      '      USER_GROUP_ACTIVITIES uga'
      '    where'
      '      (ugu.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '      (ugu.USER_GROUP_CODE = uga.USER_GROUP_CODE) and'
      '      (uga.ACTIVITY_CODE = a.ACTIVITY_CODE)'
      '   ) as IS_GROUP_ACTIVITY,'
      ''
      
        '  Cast(MiscUtils.EmpActivityGroupNames(:EMPLOYEE_CODE, a.ACTIVIT' +
        'Y_CODE) as Varchar2(2000 char)) as ACTIVITY_GROUP_NAMES,'
      
        '  Cast(MiscUtils.EmpActivitySysRoleNames(:EMPLOYEE_CODE, a.ACTIV' +
        'ITY_CODE, :TO_DATE) as Varchar2(2000 char)) as ACTIVITY_SYS_ROLE' +
        '_NAMES'
      ''
      'from'
      '  ACTIVITIES a'
      ''
      'where'
      '  (a.IS_ACTIVE = 1) and'
      ''
      '  ( (exists'
      '      ( select'
      '          1'
      '        from'
      '          USER_ACTIVITIES ua'
      '        where'
      '          (ua.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '          (ua.ACTIVITY_CODE = a.ACTIVITY_CODE)'
      '      )'
      '    ) or'
      ''
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          USER_GROUP_USERS ugu,'
      '          USER_GROUP_ACTIVITIES uga'
      '        where'
      '          (ugu.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '          (ugu.USER_GROUP_CODE = uga.USER_GROUP_CODE) and'
      '          (uga.ACTIVITY_CODE = a.ACTIVITY_CODE)'
      '      )'
      '    ) or'
      ''
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          OCCUPATION_EMPLOYEES oe,'
      '          OCCUPATION_SYS_ROLES osr,'
      '          SYS_ROLE_ACTIVITIES sra'
      '        where'
      '          (oe.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      
        '          (:TO_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSI' +
        'GNMENT_END_DATE) and'
      '          (oe.OCCUPATION_CODE = osr.OCCUPATION_CODE) and'
      '          (osr.SYS_ROLE_CODE = sra.SYS_ROLE_CODE) and'
      '          (sra.ACTIVITY_CODE = a.ACTIVITY_CODE)'
      '      )'
      '    )'
      '  )'
      ''
      'order by'
      '  a.ACTIVITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 192
    Top = 568
    object qryUserEffectiveActivitiesACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
    end
    object qryUserEffectiveActivitiesACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
    object qryUserEffectiveActivitiesIS_PERSONAL_ACTIVITY: TAbmesFloatField
      FieldName = 'IS_PERSONAL_ACTIVITY'
    end
    object qryUserEffectiveActivitiesIS_GROUP_ACTIVITY: TAbmesFloatField
      FieldName = 'IS_GROUP_ACTIVITY'
    end
    object qryUserEffectiveActivitiesACTIVITY_GROUP_NAMES: TAbmesWideStringField
      FieldName = 'ACTIVITY_GROUP_NAMES'
      Size = 2000
    end
    object qryUserEffectiveActivitiesACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
    end
    object qryUserEffectiveActivitiesACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField
      FieldName = 'ACTIVITY_SYS_ROLE_NAMES'
      Size = 2000
    end
  end
  object prvUserEffectiveActivities: TDataSetProvider
    DataSet = qryUserEffectiveActivities
    Left = 192
    Top = 520
  end
  object qryUserEffectiveForbiddenActivities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  a.ACTIVITY_CODE,'
      '  a.ACTIVITY_NAME,'
      '  a.ACTIVITY_NO,'
      
        '  Cast(MiscUtils.ActivityGroupNames(a.ACTIVITY_CODE) as VarChar2' +
        '(2000 char)) as ACTIVITY_GROUP_NAMES,'
      
        '  Cast(MiscUtils.ActivitySysRoleNames(a.ACTIVITY_CODE) as VarCha' +
        'r2(2000 char)) as ACTIVITY_SYS_ROLE_NAMES'
      ''
      'from'
      '  ACTIVITIES a'
      ''
      'where'
      '  (a.IS_ACTIVE = 1) and'
      '  '
      '  not ('
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        USER_ACTIVITIES ua'
      '      where'
      '        (ua.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '        (ua.ACTIVITY_CODE = a.ACTIVITY_CODE)'
      '      )'
      '    ) or'
      ''
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        USER_GROUP_USERS ugu,'
      '        USER_GROUP_ACTIVITIES uga'
      '      where'
      '        (ugu.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '        (ugu.USER_GROUP_CODE = uga.USER_GROUP_CODE) and'
      '        (uga.ACTIVITY_CODE = a.ACTIVITY_CODE)'
      '      )'
      '    ) or'
      ''
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          OCCUPATION_EMPLOYEES oe,'
      '          OCCUPATION_SYS_ROLES osr,'
      '          SYS_ROLE_ACTIVITIES sra'
      '        where'
      '          (oe.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      
        '          (:TO_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSI' +
        'GNMENT_END_DATE) and'
      '          (oe.OCCUPATION_CODE = osr.OCCUPATION_CODE) and'
      '          (osr.SYS_ROLE_CODE = sra.SYS_ROLE_CODE) and'
      '          (sra.ACTIVITY_CODE = a.ACTIVITY_CODE)'
      '      )'
      '    )'
      '  )'
      ''
      'order by'
      '  a.ACTIVITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 344
    Top = 568
    object qryUserEffectiveForbiddenActivitiesACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
    end
    object qryUserEffectiveForbiddenActivitiesACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
    object qryUserEffectiveForbiddenActivitiesACTIVITY_GROUP_NAMES: TAbmesWideStringField
      FieldName = 'ACTIVITY_GROUP_NAMES'
      Size = 2000
    end
    object qryUserEffectiveForbiddenActivitiesACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
    end
    object qryUserEffectiveForbiddenActivitiesACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField
      FieldName = 'ACTIVITY_SYS_ROLE_NAMES'
      Size = 2000
    end
  end
  object prvUserEffectiveForbiddenActivities: TDataSetProvider
    DataSet = qryUserEffectiveForbiddenActivities
    Left = 344
    Top = 520
  end
  object qryUserGroupNotUsers: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_GROUP_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'USER_GROUP_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_number(:USER_GROUP_CODE) as USER_GROUP_CODE,'
      '  e.EMPLOYEE_CODE,'
      '  (e.FIRST_NAME || '#39' '#39' || e.LAST_NAME) as EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_NO'
      ''
      'from'
      '  EMPLOYEES e,'
      '  USERS u'
      ''
      'where'
      '  (u.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '  (not exists('
      '    select'
      '      1'
      '    from'
      '      USER_GROUP_USERS ugu'
      '    where'
      '      (ugu.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '      (ugu.USER_GROUP_CODE = :USER_GROUP_CODE)'
      '    )'
      '  )'
      ''
      'order by'
      '  e.FIRST_NAME,'
      '  e.LAST_NAME,'
      '  e.EMPLOYEE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 328
    Top = 168
    object qryUserGroupNotUsersUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserGroupNotUsersEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserGroupNotUsersEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 41
    end
    object qryUserGroupNotUsersEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
      ProviderFlags = []
    end
  end
  object prvUserGroupNotUsers: TDataSetProvider
    DataSet = qryUserGroupNotUsers
    Left = 328
    Top = 120
  end
  object prvUserGroup: TDataSetProvider
    DataSet = qryUserGroup
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvUserGroupsBeforeUpdateRecord
    Left = 400
    Top = 104
  end
  object qryUserGroup: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_GROUP_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ug.USER_GROUP_CODE,'
      '  ug.USER_GROUP_NAME'
      'from'
      '  USER_GROUPS ug'
      'where'
      '  (ug.USER_GROUP_CODE = :USER_GROUP_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 400
    Top = 152
    object qryUserGroupUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUserGroupUSER_GROUP_NAME: TAbmesWideStringField
      FieldName = 'USER_GROUP_NAME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object qryCurrentDept: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  e.EMPLOYEE_CODE,'
      '  e.CURRENT_DEPT_CODE,'
      '  d.NAME as CURRENT_DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as C' +
        'URRENT_DEPT_IDENTIFIER'
      'from'
      '  EMPLOYEES e,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      'where'
      '  (e.CURRENT_DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (e.EMPLOYEE_CODE = LoginContext.UserCode)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EMPLOYEES_FOR_EDIT'
    Left = 192
    Top = 264
    object qryCurrentDeptEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCurrentDeptCURRENT_DEPT_CODE: TAbmesFloatField
      FieldName = 'CURRENT_DEPT_CODE'
    end
    object qryCurrentDeptCURRENT_DEPT_NAME: TAbmesWideStringField
      FieldName = 'CURRENT_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryCurrentDeptCURRENT_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CURRENT_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
  end
  object prvCurrentDept: TDataSetProvider
    DataSet = qryCurrentDept
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 216
  end
  object qryCurrentDeptStores: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ANCESTOR_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ANCESTOR_DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.STORE_CODE,'
      '  d.CUSTOM_CODE as STORE_NO,'
      '  s.IS_COMPUTERIZED,'
      '  d.NAME as STORE_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as S' +
        'TORE_IDENTIFIER,'
      '  d.NAME as STORE_FULL_NAME'
      'from'
      '  STORES s,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      'where'
      '  (s.STORE_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        DEPT_RELATIONS dr'
      '      where'
      '        (dr.DESCENDANT_DEPT_CODE = s.STORE_CODE) and'
      '        (dr.ANCESTOR_DEPT_CODE = :ANCESTOR_DEPT_CODE) and'
      '        (dr.DESCENDANT_DEPT_CODE <> :ANCESTOR_DEPT_CODE)'
      '    )'
      '  )'
      'order by'
      '  DEPT_IDENTIFIER'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'STORES'
    Left = 192
    Top = 160
    object qryCurrentDeptStoresSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCurrentDeptStoresSTORE_NO: TAbmesFloatField
      FieldName = 'STORE_NO'
      Required = True
    end
    object qryCurrentDeptStoresIS_COMPUTERIZED: TAbmesFloatField
      FieldName = 'IS_COMPUTERIZED'
      Required = True
    end
    object qryCurrentDeptStoresSTORE_NAME: TAbmesWideStringField
      FieldName = 'STORE_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryCurrentDeptStoresDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryCurrentDeptStoresSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 45
    end
    object qryCurrentDeptStoresSTORE_FULL_NAME: TAbmesWideStringField
      FieldName = 'STORE_FULL_NAME'
      ProviderFlags = []
      Size = 148
    end
  end
  object prvCurrentDeptStores: TDataSetProvider
    DataSet = qryCurrentDeptStores
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 112
  end
  object qrySysRoles: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sr.SYS_ROLE_CODE,'
      '  sr.SYS_ROLE_NO,'
      '  sr.SYS_ROLE_NAME,'
      '  sr.IS_RESERVED,'
      '  sr.SYS_ROLE_TYPE_CODE,'
      ''
      '  ( select'
      '      srt.SYS_ROLE_TYPE_ABBREV'
      '    from'
      '      SYS_ROLE_TYPES srt'
      '    where'
      '      (srt.SYS_ROLE_TYPE_CODE = sr.SYS_ROLE_TYPE_CODE)'
      '  ) as SYS_ROLE_TYPE_ABBREV'
      ''
      'from'
      '  SYS_ROLES sr'
      ''
      'where'
      '  ( (:ACTIVITY_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          SYS_ROLE_ACTIVITIES sra'
      '        where'
      '          (sra.SYS_ROLE_CODE = sr.SYS_ROLE_CODE) and'
      '          (sra.ACTIVITY_CODE = :ACTIVITY_CODE)'
      '      )'
      '    )'
      '  ) and'
      '  ( (:SYS_ROLE_TYPE_CODE is null) or'
      '    (:SYS_ROLE_TYPE_CODE = 0) or'
      '    (sr.SYS_ROLE_TYPE_CODE = :SYS_ROLE_TYPE_CODE) or'
      '    ( (sr.SYS_ROLE_TYPE_CODE = %srt_FV_AND_DI) and'
      
        '      (:SYS_ROLE_TYPE_CODE in (%srt_FILTER_VARIANTS, %srt_DOC_IT' +
        'EMS))'
      '    )'
      '  )'
      ''
      'order by'
      '  sr.SYS_ROLE_NO'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'srt_FV_AND_DI'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'srt_FILTER_VARIANTS'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'srt_DOC_ITEMS'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SYS_ROLES'
    Left = 760
    Top = 56
    object qrySysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySysRolesSYS_ROLE_NO: TAbmesFloatField
      FieldName = 'SYS_ROLE_NO'
    end
    object qrySysRolesSYS_ROLE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_NAME'
      Size = 150
    end
    object qrySysRolesIS_RESERVED: TAbmesFloatField
      FieldName = 'IS_RESERVED'
      Required = True
    end
    object qrySysRolesSYS_ROLE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_TYPE_CODE'
      Required = True
    end
    object qrySysRolesSYS_ROLE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SYS_ROLE_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object prvSysRoles: TDataSetProvider
    DataSet = qrySysRoles
    UpdateMode = upWhereKeyOnly
    Left = 760
    Top = 8
  end
  object prvSysRole: TDataSetProvider
    DataSet = qrySysRole
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvSysRoleBeforeUpdateRecord
    Left = 760
    Top = 104
  end
  object qrySysRole: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sr.SYS_ROLE_CODE,'
      '  sr.SYS_ROLE_NO,'
      '  sr.SYS_ROLE_NAME,'
      '  sr.IS_RESERVED,'
      '  sr.SYS_ROLE_TYPE_CODE'
      'from'
      '  SYS_ROLES sr'
      'where'
      '  (sr.SYS_ROLE_CODE = :SYS_ROLE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 760
    Top = 152
    object qrySysRoleSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySysRoleSYS_ROLE_NO: TAbmesFloatField
      FieldName = 'SYS_ROLE_NO'
    end
    object qrySysRoleSYS_ROLE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_NAME'
      Size = 150
    end
    object qrySysRoleIS_RESERVED: TAbmesFloatField
      FieldName = 'IS_RESERVED'
      Required = True
    end
    object qrySysRoleSYS_ROLE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_TYPE_CODE'
      Required = True
    end
  end
  object dsSysRole: TDataSource
    DataSet = qrySysRole
    Left = 760
    Top = 200
  end
  object qrySysRoleActivities: TAbmesSQLQuery
    DataSource = dsSysRole
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  sra.SYS_ROLE_CODE,'
      '  sra.ACTIVITY_CODE,'
      '  a.ACTIVITY_NO,'
      '  a.ACTIVITY_NAME'
      ''
      'from'
      '  SYS_ROLE_ACTIVITIES sra,'
      '  ACTIVITIES a'
      ''
      'where'
      '  (sra.SYS_ROLE_CODE = :SYS_ROLE_CODE) and'
      '  (sra.ACTIVITY_CODE = a.ACTIVITY_CODE) and'
      '  (a.IS_ACTIVE = 1)'
      ''
      'order by'
      '  a.ACTIVITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SYS_ROLE_ACTIVITIES'
    Left = 760
    Top = 248
    object qrySysRoleActivitiesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySysRoleActivitiesACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySysRoleActivitiesACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
      ProviderFlags = []
    end
    object qrySysRoleActivitiesACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      ProviderFlags = []
      Size = 150
    end
  end
  object qrySysRoleNotActivities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_number(:SYS_ROLE_CODE) as SYS_ROLE_CODE,'
      '  a.ACTIVITY_CODE,'
      '  a.ACTIVITY_NO,'
      '  a.ACTIVITY_NAME'
      ''
      'from'
      '  ACTIVITIES a'
      ''
      'where'
      '  (a.IS_ACTIVE = 1) and'
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        SYS_ROLE_ACTIVITIES sra'
      '      where'
      '        (sra.SYS_ROLE_CODE = :SYS_ROLE_CODE) and'
      '        (sra.ACTIVITY_CODE = a.ACTIVITY_CODE)'
      '    )'
      '  )'
      ''
      'order by'
      '  a.ACTIVITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 648
    Top = 248
    object qrySysRoleNotActivitiesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySysRoleNotActivitiesACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySysRoleNotActivitiesACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
      ProviderFlags = []
    end
    object qrySysRoleNotActivitiesACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      ProviderFlags = []
      Size = 150
    end
  end
  object prvSysRoleNotActivties: TDataSetProvider
    DataSet = qrySysRoleNotActivities
    UpdateMode = upWhereKeyOnly
    Left = 648
    Top = 200
  end
  object qryGetNewSysRoleCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_SYS_ROLES.NextVal as NEW_SYS_ROLE_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 752
    Top = 360
    object qryGetNewSysRoleCodeNEW_SYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'NEW_SYS_ROLE_CODE'
    end
  end
  object prvUserMemberGroups: TDataSetProvider
    DataSet = qryUserMemberGroups
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 424
  end
  object qrySysRoleTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  srt.SYS_ROLE_TYPE_CODE,'
      '  srt.SYS_ROLE_TYPE_NAME,'
      '  srt.SYS_ROLE_TYPE_ABBREV'
      'from'
      '  SYS_ROLE_TYPES srt'
      'order by'
      '  srt.SYS_ROLE_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 704
    Top = 512
    object qrySysRoleTypesSYS_ROLE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_TYPE_CODE'
      Required = True
    end
    object qrySysRoleTypesSYS_ROLE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_TYPE_NAME'
      Required = True
      Size = 250
    end
    object qrySysRoleTypesSYS_ROLE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SYS_ROLE_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object prvSysRoleTypes: TDataSetProvider
    DataSet = qrySysRoleTypes
    UpdateMode = upWhereKeyOnly
    Left = 704
    Top = 464
  end
end
