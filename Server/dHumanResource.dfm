inherited dmHumanResource: TdmHumanResource
  Height = 837
  Width = 1270
  object prvTeams: TDataSetProvider
    DataSet = qryTeams
    UpdateMode = upWhereKeyOnly
    Left = 288
    Top = 8
  end
  object qryTeams: TAbmesSQLQuery
    BeforeOpen = qryTeamsBeforeOpen
    AfterClose = qryTeamsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'TEAM_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'TEAM_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  t.TEAM_CODE,'
      '  t.TEAM_NO,'
      '  t.TEAM_NAME,'
      '  t.DEPT_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPT_TYPES dt'
      '    where'
      '      (dt.DEPT_TYPE_CODE = d.DEPT_TYPE_CODE)'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  d.NAME as DEPT_NAME,'
      '  t.IS_ACTIVE,'
      ''
      '  t.DEFINED_EMPLOYEE_COUNT,'
      '  t.EMP_WORKDAY_DURATION_HOURS,'
      '  t.EMP_WORKDAY_DENSITY_PERCENT,'
      ''
      
        '  (t.EMP_WORKDAY_DURATION_HOURS * t.EMP_WORKDAY_DENSITY_PERCENT)' +
        ' as EMP_WORKDAY_EFFECTIVE_HOURS,'
      ''
      '  t.DOC_BRANCH_CODE,'
      '  t.DOC_CODE,'
      ''
      '  %HAS_DOC_ITEMS[t] as HAS_DOC,'
      ''
      '  ( select'
      '      NullIf(Count(*), 0)'
      '    from'
      '      TEAM_EMPLOYEES te'
      '    where'
      '      (te.TEAM_CODE = t.TEAM_CODE)'
      '  ) as EMPLOYEE_COUNT,'
      ''
      
        '  Cast(MiscUtils.TeamProfessions(t.TEAM_CODE) as Varchar2(250 ch' +
        'ar)) as TEAM_PROFESSIONS'
      ''
      'from'
      '  TEAMS t,'
      '  DEPTS d'
      ''
      'where'
      '  (t.DEPT_CODE = d.DEPT_CODE) and'
      ''
      '  ( (:TEAM_NO is null) or'
      '    (t.TEAM_NO = :TEAM_NO)'
      '  ) and'
      ''
      '  ( (:TEAM_NAME is null) or'
      '    (Upper(t.TEAM_NAME) = Upper(:TEAM_NAME))'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '        where'
      '          (tfd.DEPT_CODE = t.DEPT_CODE)'
      '      )'
      '    )'
      '  )'
      ''
      'order by'
      '  t.TEAM_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[t]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end>
    TableName = 'TEAMS_FOR_EDIT'
    Left = 288
    Top = 56
    object qryTeamsTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamsTEAM_NO: TAbmesFloatField
      FieldName = 'TEAM_NO'
    end
    object qryTeamsTEAM_NAME: TAbmesWideStringField
      FieldName = 'TEAM_NAME'
      Size = 50
    end
    object qryTeamsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryTeamsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryTeamsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryTeamsIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
    end
    object qryTeamsDEFINED_EMPLOYEE_COUNT: TAbmesFloatField
      FieldName = 'DEFINED_EMPLOYEE_COUNT'
    end
    object qryTeamsEMP_WORKDAY_DURATION_HOURS: TAbmesFloatField
      FieldName = 'EMP_WORKDAY_DURATION_HOURS'
    end
    object qryTeamsEMP_WORKDAY_DENSITY_PERCENT: TAbmesFloatField
      FieldName = 'EMP_WORKDAY_DENSITY_PERCENT'
    end
    object qryTeamsEMP_WORKDAY_EFFECTIVE_HOURS: TAbmesFloatField
      FieldName = 'EMP_WORKDAY_EFFECTIVE_HOURS'
      ProviderFlags = []
    end
    object qryTeamsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryTeamsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryTeamsHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
      ProviderFlags = []
    end
    object qryTeamsEMPLOYEE_COUNT: TAbmesFloatField
      FieldName = 'EMPLOYEE_COUNT'
      ProviderFlags = []
    end
    object qryTeamsTEAM_PROFESSIONS: TAbmesWideStringField
      FieldName = 'TEAM_PROFESSIONS'
      ProviderFlags = []
      Size = 250
    end
  end
  object qryTeamMembers: TAbmesSQLQuery
    DataSource = dsTeam
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  te.TEAM_CODE,'
      '  te.EMPLOYEE_CODE,'
      
        '  (e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39' ||' +
        ' e.LAST_NAME) as EMPLOYEE_NAME,'
      '  c.COMPANY_NO as EMPLOYEE_NO,'
      ''
      '  e.DOC_BRANCH_CODE,'
      '  e.DOC_CODE,'
      '  %HAS_DOC_ITEMS[e] as HAS_DOCUMENTATION,'
      ''
      '  ( select'
      '      s.SHIFT_ABBREV'
      '    from  '
      '      SHIFTS s'
      '    where'
      '      (s.SHIFT_CODE = '
      '        ( select'
      '            os.SHIFT_CODE'
      '          from'
      '            OCCUPATION_SHIFTS os'
      '          where'
      '            (os.OCCUPATION_CODE ='
      '              ( select'
      '                  o.OCCUPATION_CODE'
      '                from'
      '                  OCCUPATIONS o,'
      '                  OCCUPATION_EMPLOYEES oe'
      '                where'
      '                  (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '                  (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '                  (ContextDate between oe.ASSIGNMENT_BEGIN_DATE ' +
        'and oe.ASSIGNMENT_END_DATE) and'
      '                  (o.IS_MAIN = 1)'
      '              )'
      '            ) and'
      '            (ContextDate between os.BEGIN_DATE and os.END_DATE)'
      '        ) '
      '      )'
      '  ) as SHIFT_IDENTIFIER,'
      ''
      '  ( select'
      '      o.OCCUPATION_NAME'
      '    from'
      '      OCCUPATIONS o,'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '      (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '      (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIG' +
        'NMENT_END_DATE) and'
      '      (o.IS_MAIN = 1)'
      '  ) as OCCUPATION_NAME,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE ='
      '        ( select'
      '            o.DEPT_CODE'
      '          from'
      '            OCCUPATIONS o,'
      '            OCCUPATION_EMPLOYEES oe'
      '          where'
      '            (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '            (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '            (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe' +
        '.ASSIGNMENT_END_DATE) and'
      '            (o.IS_MAIN = 1)'
      '        )'
      '      ) '
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  c.DOC_BRANCH_CODE as COMPANY_DOC_BRANCH_CODE,'
      '  c.DOC_CODE as COMPANY_DOC_CODE,'
      '  %HAS_DOC_ITEMS[c] as COMPANY_HAS_DOCUMENTATION'
      ''
      'from'
      '  TEAM_EMPLOYEES te,'
      '  EMPLOYEES e,'
      '  COMPANIES c'
      ''
      'where'
      '  (te.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '  (e.COMPANY_CODE = c.COMPANY_CODE(+)) and'
      '  (te.TEAM_CODE = :TEAM_CODE)'
      ''
      'order by'
      '  e.ABBREV,'
      '  e.FIRST_NAME,'
      '  e.LAST_NAME,'
      '  e.EMPLOYEE_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[e]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[c]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'TEAM_EMPLOYEES'
    Left = 456
    Top = 56
    object qryTeamMembersTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamMembersEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamMembersEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 44
    end
    object qryTeamMembersEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
      ProviderFlags = []
    end
    object qryTeamMembersDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryTeamMembersDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object qryTeamMembersHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryTeamMembersOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryTeamMembersSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      ProviderFlags = []
      Size = 5
    end
    object qryTeamMembersDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryTeamMembersCOMPANY_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'COMPANY_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryTeamMembersCOMPANY_DOC_CODE: TAbmesFloatField
      FieldName = 'COMPANY_DOC_CODE'
      ProviderFlags = []
    end
    object qryTeamMembersCOMPANY_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'COMPANY_HAS_DOCUMENTATION'
      ProviderFlags = []
    end
  end
  object prvTeam: TDataSetProvider
    DataSet = qryTeam
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvTeamBeforeUpdateRecord
    BeforeApplyUpdates = prvTeamBeforeApplyUpdates
    AfterApplyUpdates = prvTeamAfterApplyUpdates
    Left = 368
    Top = 8
  end
  object qryTeam: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  t.TEAM_CODE,'
      '  t.TEAM_NO,'
      '  t.TEAM_NAME,'
      '  t.DEPT_CODE,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  d.NAME as DEPT_NAME,'
      '  t.IS_ACTIVE,'
      '  t.DOC_BRANCH_CODE,'
      '  t.DOC_CODE,'
      '  t.DEFINED_EMPLOYEE_COUNT,'
      '  t.EMP_WORKDAY_DURATION_HOURS,'
      '  t.EMP_WORKDAY_DENSITY_PERCENT'
      'from'
      '  TEAMS t,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      'where'
      '  (t.DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  (t.TEAM_CODE = :TEAM_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'TEAMS_FOR_EDIT'
    AfterProviderStartTransaction = qryTeamAfterProviderStartTransaction
    Left = 368
    Top = 56
    object qryTeamTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamTEAM_NO: TAbmesFloatField
      FieldName = 'TEAM_NO'
    end
    object qryTeamTEAM_NAME: TAbmesWideStringField
      FieldName = 'TEAM_NAME'
      Size = 50
    end
    object qryTeamDEFINED_EMPLOYEE_COUNT: TAbmesFloatField
      FieldName = 'DEFINED_EMPLOYEE_COUNT'
    end
    object qryTeamEMP_WORKDAY_DURATION_HOURS: TAbmesFloatField
      FieldName = 'EMP_WORKDAY_DURATION_HOURS'
    end
    object qryTeamEMP_WORKDAY_DENSITY_PERCENT: TAbmesFloatField
      FieldName = 'EMP_WORKDAY_DENSITY_PERCENT'
    end
    object qryTeamDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryTeamDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryTeamDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryTeamIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
    end
    object qryTeamDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryTeamDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object prvTeamMembers: TDataSetProvider
    DataSet = qryTeamMembers
    UpdateMode = upWhereKeyOnly
    Left = 456
    Top = 8
  end
  object qryTeamProfessions: TAbmesSQLQuery
    DataSource = dsTeam
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  tp.TEAM_CODE,'
      '  tp.PROFESSION_CODE,'
      '  p.PROFESSION_NAME,'
      
        '  Cast(%PROFESSION_FULL_NO[p.PROFESSION_CODE] as Varchar2(100 ch' +
        'ar)) as PROFESSION_FULL_NO,'
      
        '  Cast(%PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE] as Varch' +
        'ar2(100 char)) as PROFESSION_FORMATTED_FULL_NO,'
      ''
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION'
      ''
      'from'
      '  TEAM_PROFESSIONS tp,'
      '  PROFESSIONS p '
      'where'
      '  (tp.PROFESSION_CODE = p.PROFESSION_CODE) and'
      '  (tp.TEAM_CODE = :TEAM_CODE)'
      'order by'
      '  PROFESSION_FORMATTED_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PROFESSION_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'TEAM_PROFESSIONS'
    Left = 576
    Top = 56
    object qryTeamProfessionsTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryTeamProfessionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryTeamProfessionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object qryTeamProfessionsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryTeamProfessionsPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryTeamProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
  end
  object prvTeamProfessions: TDataSetProvider
    DataSet = qryTeamProfessions
    UpdateMode = upWhereKeyOnly
    Left = 576
    Top = 8
  end
  object dsTeam: TDataSource
    DataSet = qryTeam
    Left = 368
    Top = 104
  end
  object prvTeamNotMembers: TDataSetProvider
    DataSet = qryTeamNotMembers
    UpdateMode = upWhereKeyOnly
    Left = 456
    Top = 120
  end
  object qryTeamNotMembers: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_number(:TEAM_CODE) as TEAM_CODE,'
      '  e.EMPLOYEE_CODE,'
      
        '  (e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39' ||' +
        'e.LAST_NAME) as EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_NO,'
      '                                       '
      '  e.DOC_BRANCH_CODE,'
      '  e.DOC_CODE,'
      '  %HAS_DOC_ITEMS[e] as HAS_DOCUMENTATION,'
      ''
      '  ( select'
      '      s.SHIFT_ABBREV'
      '    from  '
      '      SHIFTS s'
      '    where'
      '      (s.SHIFT_CODE = '
      '        ( select'
      '            os.SHIFT_CODE'
      '          from'
      '            OCCUPATION_SHIFTS os'
      '          where'
      '            (os.OCCUPATION_CODE ='
      '              ( select'
      '                  o.OCCUPATION_CODE'
      '                from'
      '                  OCCUPATIONS o,'
      '                  OCCUPATION_EMPLOYEES oe'
      '                where'
      '                  (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '                  (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '                  (ContextDate between oe.ASSIGNMENT_BEGIN_DATE ' +
        'and oe.ASSIGNMENT_END_DATE) and'
      '                  (o.IS_MAIN = 1)'
      '              )'
      '            ) and      '
      '            (ContextDate between os.BEGIN_DATE and os.END_DATE)'
      '        ) '
      '      )'
      '  ) as SHIFT_IDENTIFIER,'
      ''
      '  ( select'
      '      o.OCCUPATION_NAME'
      '    from'
      '      OCCUPATIONS o,'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '      (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '      (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIG' +
        'NMENT_END_DATE) and'
      '      (o.IS_MAIN = 1)'
      '  ) as OCCUPATION_NAME'
      ''
      'from'
      '  EMPLOYEES e'
      'where'
      '  EMPLOYEE_CODE not in'
      '  ('
      '    select'
      '      EMPLOYEE_CODE'
      '    from'
      '      TEAM_EMPLOYEES'
      '    where'
      '      (TEAM_CODE = :TEAM_CODE)'
      '  )'
      'order by'
      '  e.ABBREV,'
      '  e.FIRST_NAME,'
      '  e.LAST_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[e]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 456
    Top = 168
    object qryTeamNotMembersTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamNotMembersEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamNotMembersEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object qryTeamNotMembersEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object qryTeamNotMembersDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryTeamNotMembersDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryTeamNotMembersHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryTeamNotMembersSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object qryTeamNotMembersOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
  end
  object prvTeamNotProfessions: TDataSetProvider
    DataSet = qryTeamNotProfessions
    UpdateMode = upWhereKeyOnly
    Left = 576
    Top = 120
  end
  object qryTeamNotProfessions: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_number(:TEAM_CODE) as TEAM_CODE,'
      '  p.PROFESSION_CODE,'
      '  p.PROFESSION_NAME,'
      ''
      
        '  Cast(%PROFESSION_FULL_NO[p.PROFESSION_CODE] as Varchar2(100 ch' +
        'ar)) as PROFESSION_FULL_NO,'
      
        '  Cast(%PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE] as Varch' +
        'ar2(100 char)) as PROFESSION_FORMATTED_FULL_NO,'
      ''
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION'
      ''
      'from'
      '  PROFESSIONS p'
      ''
      'where'
      '  (p.IS_GROUP = 0) and'
      ''
      '  ( PROFESSION_CODE not in'
      '    ('
      '      select'
      '        PROFESSION_CODE'
      '      from'
      '        TEAM_PROFESSIONS'
      '      where'
      '        (TEAM_CODE = :TEAM_CODE)'
      '    )'
      '  )'
      'order by'
      '  PROFESSION_FORMATTED_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PROFESSION_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 576
    Top = 168
    object qryTeamNotProfessionsTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamNotProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamNotProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      Size = 100
    end
    object qryTeamNotProfessionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryTeamNotProfessionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryTeamNotProfessionsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryTeamNotProfessionsPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      Size = 100
    end
    object qryTeamNotProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      Size = 100
    end
  end
  object qryMonthTeam: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_MONTH_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mt.TEAM_CODE,'
      '  mt.THE_MONTH_DATE,'
      '  mt.OVERRIDING_TEAM_EARNING,'
      '  mt.DEFINED_EMPLOYEE_COUNT,'
      '  mt.EMP_WORKDAY_DURATION_HOURS,'
      '  mt.EMP_WORKDAY_DENSITY_PERCENT,'
      '  t.TEAM_NO,'
      '  To_number(To_char(mt.THE_MONTH_DATE, '#39'YYYY'#39')) as YEAR,'
      '  To_number(To_char(mt.THE_MONTH_DATE, '#39'MM'#39')) as MONTH,'
      ''
      
        '  ModelUtils.TeamEarnings(t.TEAM_CODE, tmd.THE_FIRST_DATE, tmd.T' +
        'HE_LAST_DATE) as MONTH_TEAM_EARNINGS'
      ''
      'from'
      '  MONTH_TEAMS mt,'
      '  TEAMS t,'
      '  THE_MONTH_DATES tmd'
      ''
      'where'
      '  (mt.TEAM_CODE = t.TEAM_CODE) and'
      ''
      '  (mt.TEAM_CODE = :TEAM_CODE) and'
      '  (mt.THE_MONTH_DATE = :THE_MONTH_DATE) and'
      ''
      '  (tmd.THE_MONTH_DATE = :THE_MONTH_DATE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 808
    Top = 56
    object qryMonthTeamTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMonthTeamTHE_MONTH_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_MONTH_DATE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMonthTeamOVERRIDING_TEAM_EARNING: TAbmesFloatField
      FieldName = 'OVERRIDING_TEAM_EARNING'
    end
    object qryMonthTeamDEFINED_EMPLOYEE_COUNT: TAbmesFloatField
      FieldName = 'DEFINED_EMPLOYEE_COUNT'
    end
    object qryMonthTeamEMP_WORKDAY_DURATION_HOURS: TAbmesFloatField
      FieldName = 'EMP_WORKDAY_DURATION_HOURS'
    end
    object qryMonthTeamEMP_WORKDAY_DENSITY_PERCENT: TAbmesFloatField
      FieldName = 'EMP_WORKDAY_DENSITY_PERCENT'
    end
    object qryMonthTeamTEAM_NO: TAbmesFloatField
      FieldName = 'TEAM_NO'
      ProviderFlags = []
    end
    object qryMonthTeamYEAR: TAbmesFloatField
      FieldName = 'YEAR'
      ProviderFlags = []
    end
    object qryMonthTeamMONTH: TAbmesFloatField
      FieldName = 'MONTH'
      ProviderFlags = []
    end
    object qryMonthTeamMONTH_TEAM_EARNINGS: TAbmesFloatField
      FieldName = 'MONTH_TEAM_EARNINGS'
      ProviderFlags = []
    end
  end
  object prvMonthTeam: TDataSetProvider
    DataSet = qryMonthTeam
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvMonthTeamBeforeUpdateRecord
    Left = 808
    Top = 8
  end
  object qryMonthTeamEmployees: TAbmesSQLQuery
    DataSource = dsMonthTeam
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_MONTH_DATE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  mte.TEAM_CODE,'
      '  mte.THE_MONTH_DATE,'
      ''
      '  mte.EMPLOYEE_CODE,'
      
        '  (e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39' ||' +
        ' e.LAST_NAME) as EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_NO,'
      '                                       '
      '  e.DOC_BRANCH_CODE,'
      '  e.DOC_CODE,'
      '  %HAS_DOC_ITEMS[e] as HAS_DOCUMENTATION,'
      ''
      '  mte.EFFICIENCY_COEF,'
      '  mte.WORKDAY_COUNT,'
      ''
      '  ( select'
      '      s.SHIFT_ABBREV'
      '    from'
      '      SHIFTS s'
      '    where'
      '      (s.SHIFT_CODE ='
      '        ( select'
      '            os.SHIFT_CODE'
      '          from'
      '            OCCUPATION_SHIFTS os'
      '          where'
      '            (os.OCCUPATION_CODE ='
      '              ( select'
      '                  o.OCCUPATION_CODE'
      '                from'
      '                  OCCUPATIONS o,'
      '                  OCCUPATION_EMPLOYEES oe'
      '                where'
      '                  (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '                  (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '                  (ContextDate between oe.ASSIGNMENT_BEGIN_DATE ' +
        'and oe.ASSIGNMENT_END_DATE) and'
      '                  (o.IS_MAIN = 1)'
      '              )'
      '            ) and'
      '            (ContextDate between os.BEGIN_DATE and os.END_DATE)'
      '        )'
      '      )'
      '  ) as SHIFT_IDENTIFIER,'
      ''
      '  ( select'
      '      o.OCCUPATION_NAME'
      '    from'
      '      OCCUPATIONS o,'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '      (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '      (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIG' +
        'NMENT_END_DATE) and'
      '      (o.IS_MAIN = 1)'
      '  ) as OCCUPATION_NAME'
      ''
      'from'
      '  MONTH_TEAM_EMPLOYEES mte,'
      '  EMPLOYEES e'
      ''
      'where'
      '  (mte.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '  (mte.TEAM_CODE = :TEAM_CODE) and'
      '  (mte.THE_MONTH_DATE = :THE_MONTH_DATE)'
      ''
      'order by'
      '  e.ABBREV,'
      '  e.FIRST_NAME,'
      '  e.LAST_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[e]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'MONTH_TEAM_EMPLOYEES'
    Left = 808
    Top = 152
    object qryMonthTeamEmployeesTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMonthTeamEmployeesTHE_MONTH_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_MONTH_DATE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMonthTeamEmployeesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMonthTeamEmployeesEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 44
    end
    object qryMonthTeamEmployeesEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
      ProviderFlags = []
    end
    object qryMonthTeamEmployeesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryMonthTeamEmployeesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object qryMonthTeamEmployeesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryMonthTeamEmployeesEFFICIENCY_COEF: TAbmesFloatField
      FieldName = 'EFFICIENCY_COEF'
      ProviderFlags = [pfInUpdate]
    end
    object qryMonthTeamEmployeesWORKDAY_COUNT: TAbmesFloatField
      FieldName = 'WORKDAY_COUNT'
      ProviderFlags = [pfInUpdate]
    end
    object qryMonthTeamEmployeesSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      ProviderFlags = []
      Size = 5
    end
    object qryMonthTeamEmployeesOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      ProviderFlags = []
      Size = 50
    end
  end
  object prvMonthTeamNotEmployees: TDataSetProvider
    DataSet = qryMonthTeamNotEmployees
    Left = 808
    Top = 200
  end
  object qryMonthTeamNotEmployees: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_MONTH_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_number(:TEAM_CODE) as TEAM_CODE,'
      ''
      '  e.EMPLOYEE_CODE,'
      
        '  (e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39' ||' +
        ' e.LAST_NAME) as EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_NO,'
      '                                       '
      '  e.DOC_BRANCH_CODE,'
      '  e.DOC_CODE,'
      '  %HAS_DOC_ITEMS[e] as HAS_DOCUMENTATION,'
      ''
      '  ( select'
      '      s.SHIFT_ABBREV'
      '    from'
      '      SHIFTS s'
      '    where'
      '      (s.SHIFT_CODE ='
      '        ( select'
      '            os.SHIFT_CODE'
      '          from'
      '            OCCUPATION_SHIFTS os'
      '          where'
      '            (os.OCCUPATION_CODE ='
      '              ( select'
      '                  o.OCCUPATION_CODE'
      '                from'
      '                  OCCUPATIONS o,'
      '                  OCCUPATION_EMPLOYEES oe'
      '                where'
      '                  (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '                  (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '                  (ContextDate between oe.ASSIGNMENT_BEGIN_DATE ' +
        'and oe.ASSIGNMENT_END_DATE) and'
      '                  (o.IS_MAIN = 1)'
      '              )'
      '            ) and'
      '            (ContextDate between os.BEGIN_DATE and os.END_DATE)'
      '        )'
      '      )'
      '  ) as SHIFT_IDENTIFIER,'
      ''
      '  ( select'
      '      o.OCCUPATION_NAME'
      '    from'
      '      OCCUPATIONS o,'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '      (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '      (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIG' +
        'NMENT_END_DATE) and'
      '      (o.IS_MAIN = 1)'
      '  ) as OCCUPATION_NAME'
      ''
      'from'
      '  EMPLOYEES e'
      ''
      'where'
      '  (e.EMPLOYEE_CODE not in'
      '    ('
      '      select'
      '        EMPLOYEE_CODE'
      '      from'
      '        MONTH_TEAM_EMPLOYEES'
      '      where'
      '        (TEAM_CODE = :TEAM_CODE) and'
      '        (THE_MONTH_DATE = :THE_MONTH_DATE)'
      '    )'
      '  )'
      ''
      'order by'
      '  e.ABBREV,'
      '  e.FIRST_NAME,'
      '  e.LAST_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[e]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 808
    Top = 248
    object qryMonthTeamNotEmployeesTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
    end
    object qryMonthTeamNotEmployeesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryMonthTeamNotEmployeesEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object qryMonthTeamNotEmployeesEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object qryMonthTeamNotEmployeesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryMonthTeamNotEmployeesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryMonthTeamNotEmployeesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryMonthTeamNotEmployeesSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object qryMonthTeamNotEmployeesOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
  end
  object dsMonthTeam: TDataSource
    DataSet = qryMonthTeam
    Left = 808
    Top = 104
  end
  object prvMonthTeams: TDataSetProvider
    DataSet = qryMonthTeams
    UpdateMode = upWhereKeyOnly
    Left = 728
    Top = 8
  end
  object qryMonthTeams: TAbmesSQLQuery
    BeforeOpen = qryMonthTeamsBeforeOpen
    AfterClose = qryMonthTeamsAfterClose
    OnCalcFields = qryMonthTeamsCalcFields
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mt.TEAM_CODE,'
      '  mt.THE_MONTH_DATE,'
      '  mt.OVERRIDING_TEAM_EARNING,'
      '  mt.DEFINED_EMPLOYEE_COUNT,'
      '  mt.EMP_WORKDAY_DURATION_HOURS,'
      '  mt.EMP_WORKDAY_DENSITY_PERCENT,'
      ''
      
        '  (mt.EMP_WORKDAY_DURATION_HOURS * mt.EMP_WORKDAY_DENSITY_PERCEN' +
        'T) as EMP_WORKDAY_EFFECTIVE_HOURS,'
      ''
      '  t.TEAM_NO,'
      '  t.TEAM_NAME,'
      ''
      '  t.DEPT_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPT_TYPES dt'
      '    where'
      '      (dt.DEPT_TYPE_CODE = d.DEPT_TYPE_CODE)'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  d.NAME as DEPT_NAME,'
      ''
      '  ( select'
      '      NullIf(Count(*), 0)'
      '    from'
      '      MONTH_TEAM_EMPLOYEES mte'
      '    where'
      '      (mte.TEAM_CODE = mt.TEAM_CODE) and'
      '      (mte.THE_MONTH_DATE = mt.THE_MONTH_DATE)'
      '  ) as EMPLOYEE_COUNT,'
      ''
      '  ( select'
      '      Nvl2(Max(mte.WORKDAY_COUNT), 1, 0)'
      '    from'
      '      MONTH_TEAM_EMPLOYEES mte'
      '    where'
      '      (mte.TEAM_CODE = mt.TEAM_CODE) and'
      '      (mte.THE_MONTH_DATE = mt.THE_MONTH_DATE)'
      '  ) as HAS_EMPLOYEE_WORK_HOURS,'
      ''
      '  ( select'
      
        '      ModelUtils.TeamEarnings(mt.TEAM_CODE, tmd.THE_FIRST_DATE, ' +
        'tmd.THE_LAST_DATE)'
      '    from'
      '      THE_MONTH_DATES tmd'
      '    where'
      '      (tmd.THE_MONTH_DATE = mt.THE_MONTH_DATE)'
      '  ) as TEAM_EARNINGS,'
      ''
      '  ( select'
      
        '      NullIf(ModelUtils.TeamWorkHours(t.TEAM_CODE, tmd.THE_FIRST' +
        '_DATE, tmd2.THE_LAST_DATE, 1, 0, 0), 0)'
      '    from'
      '      THE_MONTH_DATES tmd,'
      '      THE_MONTH_DATES tmd2'
      '    where'
      '      (tmd.THE_MONTH_DATE = :BEGIN_MONTH_DATE) and'
      '      (tmd2.THE_MONTH_DATE = :END_MONTH_DATE)'
      '  ) as TEAM_SETUP_HOURS,'
      ''
      '  ( select'
      
        '      NullIf(ModelUtils.TeamWorkHours(t.TEAM_CODE, tmd.THE_FIRST' +
        '_DATE, tmd2.THE_LAST_DATE, 0, 1, 0), 0)'
      '    from'
      '      THE_MONTH_DATES tmd,'
      '      THE_MONTH_DATES tmd2'
      '    where'
      '      (tmd.THE_MONTH_DATE = :BEGIN_MONTH_DATE) and'
      '      (tmd2.THE_MONTH_DATE = :END_MONTH_DATE)'
      '  ) as TEAM_NONWASTE_HOURS,'
      ''
      '  ( select'
      
        '      NullIf(ModelUtils.TeamWorkHours(t.TEAM_CODE, tmd.THE_FIRST' +
        '_DATE, tmd2.THE_LAST_DATE, 0, 0, 1), 0)'
      '    from'
      '      THE_MONTH_DATES tmd,'
      '      THE_MONTH_DATES tmd2'
      '    where'
      '      (tmd.THE_MONTH_DATE = :BEGIN_MONTH_DATE) and'
      '      (tmd2.THE_MONTH_DATE = :END_MONTH_DATE)'
      '  ) as TEAM_WASTE_HOURS,'
      ''
      '  ( select'
      
        '      %COUNT_WORKDAYS[Least(tmd.THE_FIRST_DATE, ContextDate)~ Le' +
        'ast(tmd2.THE_LAST_DATE, ContextDate)]'
      '    from'
      '      THE_MONTH_DATES tmd,'
      '      THE_MONTH_DATES tmd2'
      '    where'
      '      (tmd.THE_MONTH_DATE = :BEGIN_MONTH_DATE) and'
      '      (tmd2.THE_MONTH_DATE = :END_MONTH_DATE)'
      '  ) as WORKDAY_COUNT'
      ''
      'from'
      '  MONTH_TEAMS mt,'
      '  TEAMS t,'
      '  DEPTS d'
      'where'
      '  (mt.TEAM_CODE = t.TEAM_CODE) and'
      '  (t.DEPT_CODE = d.DEPT_CODE) and'
      ''
      
        '  (mt.THE_MONTH_DATE between :BEGIN_MONTH_DATE and :END_MONTH_DA' +
        'TE) and'
      ''
      '  ( (:TEAM_CODE is null) or'
      '    (t.TEAM_CODE = :TEAM_CODE)'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '        where'
      '          (tfd.DEPT_CODE = t.DEPT_CODE)'
      '      )'
      '    )'
      '  )'
      '  '
      'order by'
      '  mt.THE_MONTH_DATE,'
      '  t.TEAM_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS[Least(tmd.THE_FIRST_DATE, ContextDate)~ Least(tmd' +
          '2.THE_LAST_DATE, ContextDate)]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end>
    TableName = 'MONTH_TEAMS'
    Left = 728
    Top = 56
    object qryMonthTeamsTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMonthTeamsTHE_MONTH_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_MONTH_DATE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMonthTeamsOVERRIDING_TEAM_EARNING: TAbmesFloatField
      FieldName = 'OVERRIDING_TEAM_EARNING'
    end
    object qryMonthTeamsDEFINED_EMPLOYEE_COUNT: TAbmesFloatField
      FieldName = 'DEFINED_EMPLOYEE_COUNT'
    end
    object qryMonthTeamsEMP_WORKDAY_DURATION_HOURS: TAbmesFloatField
      FieldName = 'EMP_WORKDAY_DURATION_HOURS'
    end
    object qryMonthTeamsEMP_WORKDAY_DENSITY_PERCENT: TAbmesFloatField
      FieldName = 'EMP_WORKDAY_DENSITY_PERCENT'
    end
    object qryMonthTeamsEMP_WORKDAY_EFFECTIVE_HOURS: TAbmesFloatField
      FieldName = 'EMP_WORKDAY_EFFECTIVE_HOURS'
      ProviderFlags = []
    end
    object qryMonthTeamsTEAM_NO: TAbmesFloatField
      FieldName = 'TEAM_NO'
      ProviderFlags = []
    end
    object qryMonthTeamsTEAM_NAME: TAbmesWideStringField
      FieldName = 'TEAM_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryMonthTeamsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = []
    end
    object qryMonthTeamsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryMonthTeamsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryMonthTeamsEMPLOYEE_COUNT: TAbmesFloatField
      FieldName = 'EMPLOYEE_COUNT'
      ProviderFlags = []
    end
    object qryMonthTeamsHAS_EMPLOYEE_WORK_HOURS: TAbmesFloatField
      FieldName = 'HAS_EMPLOYEE_WORK_HOURS'
      ProviderFlags = []
    end
    object qryMonthTeamsTEAM_EARNINGS: TAbmesFloatField
      FieldName = 'TEAM_EARNINGS'
      ProviderFlags = []
    end
    object qryMonthTeamsTEAM_SETUP_HOURS: TAbmesFloatField
      FieldName = 'TEAM_SETUP_HOURS'
      ProviderFlags = []
    end
    object qryMonthTeamsTEAM_NONWASTE_HOURS: TAbmesFloatField
      FieldName = 'TEAM_NONWASTE_HOURS'
      ProviderFlags = []
    end
    object qryMonthTeamsTEAM_WASTE_HOURS: TAbmesFloatField
      FieldName = 'TEAM_WASTE_HOURS'
      ProviderFlags = []
    end
    object qryMonthTeamsWORKDAY_COUNT: TAbmesFloatField
      FieldName = 'WORKDAY_COUNT'
      ProviderFlags = []
    end
    object qryMonthTeamsTEAM_TOTAL_WORK_HOURS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TEAM_TOTAL_WORK_HOURS'
      ProviderFlags = []
      Calculated = True
    end
    object qryMonthTeamsTEAM_AVG_DAY_HOURS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TEAM_AVG_DAY_HOURS'
      ProviderFlags = []
      Calculated = True
    end
    object qryMonthTeamsTEAM_WORK_HOUR_DENSITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TEAM_WORK_HOUR_DENSITY'
      ProviderFlags = []
      Calculated = True
    end
    object qryMonthTeamsEFFECTIVE_TEAM_EARNING: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'EFFECTIVE_TEAM_EARNING'
      ProviderFlags = []
      Calculated = True
    end
    object qryMonthTeamsTEAM_SETUP_OPHOURS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TEAM_SETUP_OPHOURS'
      ProviderFlags = []
      Calculated = True
    end
    object qryMonthTeamsTEAM_NONWASTE_OPHOURS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TEAM_NONWASTE_OPHOURS'
      ProviderFlags = []
      Calculated = True
    end
    object qryMonthTeamsTEAM_WASTE_OPHOURS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TEAM_WASTE_OPHOURS'
      ProviderFlags = []
      Calculated = True
    end
    object qryMonthTeamsTEAM_TOTAL_WORK_OPHOURS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TEAM_TOTAL_WORK_OPHOURS'
      ProviderFlags = []
      Calculated = True
    end
    object qryMonthTeamsTEAM_AVG_DAY_OPHOURS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TEAM_AVG_DAY_OPHOURS'
      ProviderFlags = []
      Calculated = True
    end
  end
  object qryOccupation: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  o.OCCUPATION_CODE,'
      '  o.IS_MAIN,'
      '  o.OCCUPATION_NAME,'
      '  o.OCCUPATION_LEVEL,'
      '  o.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  d.BEGIN_DATE as DEPT_BEGIN_DATE,'
      '  d.END_DATE as DEPT_END_DATE,'
      '  d.IS_EXTERNAL as  DEPT_IS_EXTERNAL,'
      '  d.IS_RECURRENT as DEPT_IS_RECURRENT,'
      '  o.OCCUPATION_BEGIN_DATE,'
      '  o.OCCUPATION_END_DATE,'
      '  o.DOC_BRANCH_CODE,'
      '  o.DOC_CODE,'
      '  o.NOTES,'
      '  o.OCCUPATION_PHASE_CODE,'
      '  o.PRODUCT_CODE,'
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = o.PRODUCT_CODE)'
      '  ) as PRODUCT_NAME,'
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = o.PRODUCT_CODE)'
      '  ) as PRODUCT_NO,'
      ''
      '  case'
      
        '    when (:THE_DATE between o.OCCUPATION_BEGIN_DATE and o.OCCUPA' +
        'TION_END_DATE) then 1'
      '  else'
      '    0'
      '  end as IS_ACTIVE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      
        '      (:THE_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNM' +
        'ENT_END_DATE)'
      '  ) as IS_OCCUPIED,'
      ''
      '  o.CRAFT_CODE,'
      '  ( select'
      '      c.CRAFT_TYPE_CODE'
      '    from'
      '      CRAFTS c'
      '    where'
      '      (c.CRAFT_CODE = o.CRAFT_CODE)'
      '  ) as CRAFT_TYPE_CODE,'
      ''
      '  Cast(:THE_DATE as Date) as THE_DATE,'
      ''
      '  ( select'
      '      db.DUMMY_BLOB_DATA'
      '    from'
      '      DUMMY_BLOB db'
      '  ) as PRC_DATA'
      ''
      'from'
      '  OCCUPATIONS o,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      ''
      'where'
      '  (o.OCCUPATION_CODE = :OCCUPATION_CODE) and'
      ''
      '  (o.DEPT_CODE = d.DEPT_CODE(+)) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'OCCUPATIONS_FOR_EDIT'
    AfterProviderStartTransaction = qryOccupationAfterProviderStartTransaction
    Left = 360
    Top = 400
    object qryOccupationOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationIS_MAIN: TAbmesFloatField
      FieldName = 'IS_MAIN'
    end
    object qryOccupationOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object qryOccupationOCCUPATION_LEVEL: TAbmesFloatField
      FieldName = 'OCCUPATION_LEVEL'
    end
    object qryOccupationDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryOccupationDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryOccupationDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 45
    end
    object qryOccupationDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object qryOccupationDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
      ProviderFlags = []
    end
    object qryOccupationDEPT_IS_EXTERNAL: TAbmesFloatField
      FieldName = 'DEPT_IS_EXTERNAL'
      ProviderFlags = []
    end
    object qryOccupationDEPT_IS_RECURRENT: TAbmesFloatField
      FieldName = 'DEPT_IS_RECURRENT'
      ProviderFlags = []
    end
    object qryOccupationOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OCCUPATION_BEGIN_DATE'
    end
    object qryOccupationOCCUPATION_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'OCCUPATION_END_DATE'
    end
    object qryOccupationDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryOccupationDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryOccupationIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object qryOccupationIS_OCCUPIED: TAbmesFloatField
      FieldName = 'IS_OCCUPIED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object qryOccupationNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryOccupationOCCUPATION_PHASE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_PHASE_CODE'
    end
    object qryOccupationPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryOccupationPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryOccupationPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryOccupationCRAFT_CODE: TAbmesFloatField
      FieldName = 'CRAFT_CODE'
    end
    object qryOccupationCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
      ProviderFlags = []
    end
    object qryOccupationTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
      ProviderFlags = []
    end
    object qryOccupationPRC_DATA: TBlobField
      FieldName = 'PRC_DATA'
      ProviderFlags = []
      BlobType = ftOraBlob
      Size = 1
    end
  end
  object prvOccupation: TDataSetProvider
    DataSet = qryOccupation
    Options = [poPropogateChanges, poUseQuoteChar]
    OnGetData = prvOccupationGetData
    AfterUpdateRecord = prvOccupationAfterUpdateRecord
    BeforeUpdateRecord = prvOccupationBeforeUpdateRecord
    BeforeApplyUpdates = prvOccupationBeforeApplyUpdates
    AfterApplyUpdates = prvOccupationAfterApplyUpdates
    Left = 360
    Top = 352
  end
  object qryOccupationProfessions: TAbmesSQLQuery
    DataSource = dsOccupation
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  op.OCCUPATION_CODE,'
      '  op.PROFESSION_CODE,'
      '  p.PROFESSION_NAME,'
      ''
      
        '  Cast(%PROFESSION_FULL_NO[p.PROFESSION_CODE] as Varchar2(100 ch' +
        'ar)) as PROFESSION_FULL_NO,'
      
        '  Cast(%PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE] as Varch' +
        'ar2(100 char)) as PROFESSION_FORMATTED_FULL_NO,'
      ''
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION,'
      '  %PROFESSION_KIND_IDENTIFIER[pk] as PROFESSION_KIND_IDENTIFIER,'
      '  pk.PROFESSION_KIND_NO'
      ''
      'from'
      '  OCCUPATION_PROFESSIONS op,'
      '  PROFESSIONS p,'
      '  PROFESSION_KINDS pk'
      ''
      'where'
      '  (op.PROFESSION_CODE = p.PROFESSION_CODE) and'
      '  (p.PROFESSION_KIND_CODE = pk.PROFESSION_KIND_CODE) and'
      '  (op.OCCUPATION_CODE = :OCCUPATION_CODE)'
      ''
      'order by'
      '  op.OCCUPATION_CODE,'
      '  pk.PROFESSION_KIND_NO,'
      '  PROFESSION_FORMATTED_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PROFESSION_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_KIND_IDENTIFIER[pk]'
        ParamType = ptInput
        Value = #39'a'#39
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'OCCUPATION_PROFESSIONS'
    Left = 360
    Top = 496
    object qryOccupationProfessionsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryOccupationProfessionsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryOccupationProfessionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryOccupationProfessionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object qryOccupationProfessionsPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROFESSION_KIND_IDENTIFIER'
      ProviderFlags = []
      Size = 409
    end
    object qryOccupationProfessionsPROFESSION_KIND_NO: TAbmesFloatField
      FieldName = 'PROFESSION_KIND_NO'
      ProviderFlags = []
      Required = True
    end
    object qryOccupationProfessionsPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryOccupationProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
  end
  object qryOccupationNotProfessions: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  To_number(:OCCUPATION_CODE) as OCCUPATION_CODE,'
      '  p.PROFESSION_CODE,'
      '  p.PROFESSION_NAME,'
      ''
      
        '  Cast(%PROFESSION_FULL_NO[p.PROFESSION_CODE] as Varchar2(100 ch' +
        'ar)) as PROFESSION_FULL_NO,'
      
        '  Cast(%PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE] as Varch' +
        'ar2(100 char)) as PROFESSION_FORMATTED_FULL_NO,'
      ''
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION,'
      ''
      '  %PROFESSION_KIND_IDENTIFIER[pk] as PROFESSION_KIND_IDENTIFIER,'
      '  pk.PROFESSION_KIND_NO'
      ''
      'from'
      '  OCCUPATION_AGGR_PROFESSIONS oap,'
      '  PROFESSIONS p,'
      '  PROFESSION_KINDS pk'
      ''
      'where'
      '  (oap.OCCUPATION_CODE = :OCCUPATION_CODE) and'
      '  (oap.PROFESSION_CODE = p.PROFESSION_CODE) and'
      '  (p.PROFESSION_KIND_CODE = pk.PROFESSION_KIND_CODE) and'
      '  (not exists('
      '    select'
      '      1'
      '    from'
      '      OCCUPATION_PROFESSIONS op'
      '    where'
      '      (op.OCCUPATION_CODE = :OCCUPATION_CODE) and'
      '      (op.PROFESSION_CODE = p.PROFESSION_CODE)'
      '    )'
      '  )'
      ''
      'order by'
      '  pk.PROFESSION_KIND_NO,'
      '  PROFESSION_FORMATTED_FULL_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PROFESSION_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_KIND_IDENTIFIER[pk]'
        ParamType = ptInput
        Value = #39'a'#39
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 448
    Top = 384
    object qryOccupationNotProfessionsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object qryOccupationNotProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object qryOccupationNotProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryOccupationNotProfessionsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryOccupationNotProfessionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryOccupationNotProfessionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object qryOccupationNotProfessionsPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROFESSION_KIND_IDENTIFIER'
      Size = 409
    end
    object qryOccupationNotProfessionsPROFESSION_KIND_NO: TAbmesFloatField
      FieldName = 'PROFESSION_KIND_NO'
      Required = True
    end
    object qryOccupationNotProfessionsPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      Size = 100
    end
    object qryOccupationNotProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      Size = 100
    end
  end
  object prvOccupationNotProfessions: TDataSetProvider
    DataSet = qryOccupationNotProfessions
    Left = 448
    Top = 336
  end
  object dsOccupation: TDataSource
    DataSet = qryOccupation
    Left = 360
    Top = 448
  end
  object qryOccupationDepts: TAbmesSQLQuery
    DataSource = dsOccupation
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  owd.OCCUPATION_CODE,'
      '  d.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  d.IS_EXTERNAL as DEPT_IS_EXTERNAL,'
      '  d.IS_RECURRENT as DEPT_IS_RECURRENT,'
      '  owdp.OCC_WORK_DEPT_PRIORITY_CODE,'
      '  ( select'
      '      dowdp.DEPT_OWDP_COVER_TYPE_CODE'
      '    from'
      '      DEPT_OWD_PRIORITIES dowdp'
      '    where'
      '      (dowdp.DEPT_CODE = d.DEPT_CODE) and'
      
        '      (dowdp.OCC_WORK_DEPT_PRIORITY_CODE = owd.OCC_WORK_DEPT_PRI' +
        'ORITY_CODE)'
      '  ) as DEPT_OWDP_COVER_TYPE_CODE,'
      '  owdp.IS_CAPACITY_GENERATOR,'
      ''
      
        '  Decode(%DEPT_OWDP_DELEGATING_DEPT[d.DEPT_CODE~owd.OCC_WORK_DEP' +
        'T_PRIORITY_CODE], owd.DEPT_CODE, 1, 0) as IS_DELEGATED'
      ''
      'from'
      '  OCCUPATION_WORK_DEPTS owd,'
      '  DEPT_RELATIONS dr,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  OCC_WORK_DEPT_PRIORITIES owdp'
      ''
      'where'
      '  (owd.OCCUPATION_CODE = :OCCUPATION_CODE) and'
      ''
      '  (dr.ANCESTOR_DEPT_CODE = owd.DEPT_CODE) and'
      
        '  ( (%DEPT_OWDP_COVERING_DEPT[dr.DESCENDANT_DEPT_CODE~owd.OCC_WO' +
        'RK_DEPT_PRIORITY_CODE] = owd.DEPT_CODE) or'
      
        '    (%DEPT_OWDP_DELEGATING_DEPT[dr.DESCENDANT_DEPT_CODE~owd.OCC_' +
        'WORK_DEPT_PRIORITY_CODE] = owd.DEPT_CODE)'
      '  ) and'
      ''
      '  (dr.DESCENDANT_DEPT_CODE = d.DEPT_CODE) and'
      ''
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      ''
      
        '  (owd.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK_DEPT_PRIORITY' +
        '_CODE)'
      ''
      'order by'
      '  OCC_WORK_DEPT_PRIORITY_NO,'
      '  IS_DELEGATED,'
      '  DEPT_OWDP_COVER_TYPE_CODE,'
      '  DEPT_IDENTIFIER')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'DEPT_OWDP_DELEGATING_DEPT[d.DEPT_CODE~owd.OCC_WORK_DEPT_PRIORITY' +
          '_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'DEPT_OWDP_COVERING_DEPT[dr.DESCENDANT_DEPT_CODE~owd.OCC_WORK_DEP' +
          'T_PRIORITY_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'DEPT_OWDP_DELEGATING_DEPT[dr.DESCENDANT_DEPT_CODE~owd.OCC_WORK_D' +
          'EPT_PRIORITY_CODE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'OCCUPATION_WORK_DEPTS'
    Left = 360
    Top = 544
    object qryOccupationDeptsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationDeptsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationDeptsOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationDeptsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryOccupationDeptsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 45
    end
    object qryOccupationDeptsDEPT_IS_EXTERNAL: TAbmesFloatField
      FieldName = 'DEPT_IS_EXTERNAL'
      ProviderFlags = []
    end
    object qryOccupationDeptsDEPT_IS_RECURRENT: TAbmesFloatField
      FieldName = 'DEPT_IS_RECURRENT'
      ProviderFlags = []
    end
    object qryOccupationDeptsDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
      ProviderFlags = []
    end
    object qryOccupationDeptsIS_CAPACITY_GENERATOR: TAbmesFloatField
      FieldName = 'IS_CAPACITY_GENERATOR'
      ProviderFlags = []
      Required = True
    end
    object qryOccupationDeptsIS_DELEGATED: TAbmesFloatField
      FieldName = 'IS_DELEGATED'
      ProviderFlags = []
    end
  end
  object qryGetNewOccupationCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_OCCUPATIONS.NextVal as NEW_OCCUPATION_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 592
    object qryGetNewOccupationCodeNEW_OCCUPATION_CODE: TAbmesFloatField
      FieldName = 'NEW_OCCUPATION_CODE'
    end
  end
  object qryGetNewTeamCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '  seq_TEAMS.NextVal as NEW_TEAM_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 152
    object qryGetNewTeamCodeNEW_TEAM_CODE: TAbmesFloatField
      FieldName = 'NEW_TEAM_CODE'
    end
  end
  object prvEmployees: TDataSetProvider
    DataSet = qryEmployees
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 144
  end
  object prvEmployee: TDataSetProvider
    DataSet = qryEmployee
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvEmployeeBeforeUpdateRecord
    BeforeApplyUpdates = prvEmployeeBeforeApplyUpdates
    AfterApplyUpdates = prvEmployeeAfterApplyUpdates
    Left = 32
  end
  object qryEmployeeProfessions: TAbmesSQLQuery
    DataSource = dsEmployee
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
      '  ep.EMPLOYEE_CODE,'
      '  ep.PROFESSION_CODE,'
      ''
      
        '  Cast(%PROFESSION_FULL_NO[p.PROFESSION_CODE] as Varchar2(100 ch' +
        'ar)) as PROFESSION_FULL_NO,'
      
        '  Cast(%PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE] as Varch' +
        'ar2(100 char)) as PROFESSION_FORMATTED_FULL_NO,'
      ''
      '  p.PROFESSION_NAME,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION'
      ''
      'from'
      '  EMPLOYEE_PROFESSIONS ep,'
      '  PROFESSIONS p'
      'where'
      '  (ep.PROFESSION_CODE = p.PROFESSION_CODE) and'
      '  (ep.EMPLOYEE_CODE = :EMPLOYEE_CODE)'
      'order by'
      '  PROFESSION_FORMATTED_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PROFESSION_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EMPLOYEE_PROFESSIONS'
    Left = 56
    Top = 176
    object qryEmployeeProfessionsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmployeeProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmployeeProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryEmployeeProfessionsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryEmployeeProfessionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryEmployeeProfessionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object qryEmployeeProfessionsPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryEmployeeProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
  end
  object qryEmployeeNotProfessions: TAbmesSQLQuery
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
      '  p.PROFESSION_CODE,'
      ''
      
        '  Cast(%PROFESSION_FULL_NO[p.PROFESSION_CODE] as Varchar2(100 ch' +
        'ar)) as PROFESSION_FULL_NO,'
      
        '  Cast(%PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE] as Varch' +
        'ar2(100 char)) as PROFESSION_FORMATTED_FULL_NO,'
      ''
      '  p.PROFESSION_NAME,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION'
      ''
      'from'
      '  PROFESSIONS p'
      ''
      'where'
      '  (p.IS_GROUP = 0) and'
      '  (p.PROFESSION_CODE not in'
      '    ( select'
      '        ep.PROFESSION_CODE'
      '      from'
      '        EMPLOYEE_PROFESSIONS ep'
      '      where'
      '        (ep.EMPLOYEE_CODE = :EMPLOYEE_CODE)'
      '    )'
      '  )'
      ''
      'order by'
      '  PROFESSION_FORMATTED_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PROFESSION_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 232
    object qryEmployeeNotProfessionsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmployeeNotProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmployeeNotProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryEmployeeNotProfessionsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryEmployeeNotProfessionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryEmployeeNotProfessionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryEmployeeNotProfessionsPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      Size = 100
    end
    object qryEmployeeNotProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      Size = 100
    end
  end
  object qryProfessions: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'HOUR_PRICE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PROFESSION_CODE,'
      '  p.PARENT_PROFESSION_CODE,'
      '  p.PROFESSION_LOCAL_NO,'
      '  p.PROFESSION_NAME,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      ''
      '  p.IS_GROUP,'
      
        '  Cast(%PROFESSION_FULL_NO[p.PROFESSION_CODE] as Varchar2(100 ch' +
        'ar)) as PROFESSION_FULL_NO,'
      
        '  Cast(%PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE] as Varch' +
        'ar2(100 char)) as PROFESSION_FORMATTED_FULL_NO,'
      ''
      '  ( select'
      '      pper.HOUR_PRICE'
      '    from'
      '      PROFESSION_PERIODS pper'
      '    where'
      '      (pper.PROFESSION_CODE = p.PROFESSION_CODE) and'
      
        '      (Coalesce(Cast(:HOUR_PRICE_DATE as Date), ContextDate) bet' +
        'ween pper.BEGIN_DATE and pper.END_DATE)'
      '  ) as HOUR_PRICE,'
      ''
      '  0 as RECORD_CHANGED,'
      ''
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION,'
      ''
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = p.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = p.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = p.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = p.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.AUTHORIZE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAUTHORIZED_ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = p.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      pk.PROFESSION_KIND_NAME'
      '    from'
      '      PROFESSION_KINDS pk'
      '    where'
      '      (pk.PROFESSION_KIND_CODE = p.PROFESSION_KIND_CODE)'
      '  ) as PROFESSION_KIND_NAME,'
      ''
      '  ( select'
      '      pt.PROFESSION_TYPE_NAME'
      '    from'
      '      PROFESSION_KINDS pk,'
      '      PROFESSION_TYPES pt'
      '    where'
      '      (pk.PROFESSION_KIND_CODE = p.PROFESSION_KIND_CODE) and'
      '      (pk.PROFESSION_TYPE_CODE = pt.PROFESSION_TYPE_CODE)'
      '  ) as PROFESSION_TYPE_NAME'
      ''
      'from'
      '  PROFESSIONS p'
      ''
      'order by'
      '  PROFESSION_FORMATTED_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PROFESSION_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PROFESSIONS_FOR_EDIT'
    Left = 368
    Top = 256
    object qryProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      Size = 100
    end
    object qryProfessionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProfessionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProfessionsHOUR_PRICE: TAbmesFloatField
      FieldName = 'HOUR_PRICE'
    end
    object qryProfessionsRECORD_CHANGED: TAbmesFloatField
      FieldName = 'RECORD_CHANGED'
      ProviderFlags = []
    end
    object qryProfessionsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryProfessionsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      ProviderFlags = []
    end
    object qryProfessionsDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      ProviderFlags = []
    end
    object qryProfessionsACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryProfessionsUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryProfessionsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryProfessionsPROFESSION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_TYPE_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryProfessionsPROFESSION_KIND_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_KIND_NAME'
      Size = 200
    end
    object qryProfessionsPROFESSION_LOCAL_NO: TAbmesFloatField
      FieldName = 'PROFESSION_LOCAL_NO'
      Required = True
    end
    object qryProfessionsIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
    end
    object qryProfessionsPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryProfessionsPARENT_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'PARENT_PROFESSION_CODE'
    end
  end
  object prvProfessions: TDataSetProvider
    DataSet = qryProfessions
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvProfessionsBeforeUpdateRecord
    Left = 368
    Top = 208
  end
  object prvWorkHours: TDataSetProvider
    DataSet = qryWorkHours
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 240
  end
  object qryWorkHours: TAbmesSQLQuery
    BeforeOpen = qryWorkHoursBeforeOpen
    OnCalcFields = qryWorkHoursCalcFields
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_SETUP'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
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
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_WORK'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
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
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
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
      end>
    SQL.Strings = (
      'select'
      '  x.*,'
      ''
      '  NullIf('
      '    Decode('
      '      x.OPERATOR_IS_TEAM,'
      '      1,'
      '      yt.WORKDAY_COUNT,'
      '      ye.EMP_MAIN_SHIFT_WORKDAY_COUNT'
      '    ),'
      '    0'
      '  ) as WORKDAY_COUNT,'
      ''
      '  NullIf('
      '    Decode('
      '      x.OPERATOR_IS_TEAM,'
      '      1,'
      '      yt.EFFECTIVE_EMP_WORKHOURS,'
      '      ye.EMP_MAIN_SHIFT_EFF_WORKHOURS'
      '    ),'
      '    0'
      '  ) as EFFECTIVE_EMP_WORKHOURS'
      ''
      'from'
      '  ( select'
      '      mlmso.MLMSO_OBJECT_BRANCH_CODE,'
      '      mlmso.MLMSO_OBJECT_CODE,'
      ''
      '      To_Number(null) as OM_BRANCH_CODE,'
      '      To_Number(null) as OM_CODE,'
      ''
      '      Nvl2(mlmso.SETUP_TEAM_CODE, 1, 0) as OPERATOR_IS_TEAM,'
      ''
      '      mlmso.SETUP_TEAM_CODE as TEAM_CODE,'
      '      mlmso.SETUP_EMPLOYEE_CODE as EMPLOYEE_CODE,'
      ''
      '      Nvl2('
      '        mlmso.SETUP_TEAM_CODE,'
      '        ('
      '          select'
      '            t.TEAM_NO'
      '          from'
      '            TEAMS t'
      '          where'
      '            (t.TEAM_CODE = mlmso.SETUP_TEAM_CODE)'
      '        ),'
      '        ( select'
      '            c.COMPANY_NO'
      '          from'
      '            EMPLOYEES e,'
      '            COMPANIES c'
      '          where'
      '            (e.EMPLOYEE_CODE = mlmso.SETUP_EMPLOYEE_CODE) and'
      '            (c.COMPANY_CODE = e.COMPANY_CODE)'
      '        )'
      '      ) as OPERATOR_NO,'
      ''
      '      Nvl2('
      '        mlmso.SETUP_TEAM_CODE,'
      '        ('
      '          select'
      
        '            (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LE' +
        'TTER) as DEPT_IDENTIFIER'
      '          from'
      '            DEPTS d,'
      '            DEPT_TYPES dt'
      '          where'
      '            (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '            (d.DEPT_CODE ='
      '              ('
      '                select'
      '                  t.DEPT_CODE'
      '                from'
      '                  TEAMS t'
      '                where'
      '                  (t.TEAM_CODE = mlmso.SETUP_TEAM_CODE)'
      '              )'
      '            )'
      '        ),'
      '        ('
      '          select'
      
        '            (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LE' +
        'TTER) as DEPT_IDENTIFIER'
      '          from'
      '            DEPTS d,'
      '            DEPT_TYPES dt'
      '          where'
      '            (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '            (d.DEPT_CODE ='
      '              ( select'
      '                  o.DEPT_CODE'
      '                from'
      '                  OCCUPATION_EMPLOYEES oe,'
      '                  OCCUPATIONS o'
      '                where'
      
        '                  (oe.EMPLOYEE_CODE = mlmso.SETUP_EMPLOYEE_CODE)' +
        ' and'
      '                  (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '                  (o.IS_MAIN = 1) and'
      
        '                  (mlmso.SETUP_DATE between oe.ASSIGNMENT_BEGIN_' +
        'DATE and oe.ASSIGNMENT_END_DATE)'
      '              )'
      '            )'
      '        )'
      '      ) as OPERATOR_DEPT_IDENTIFIER,'
      ''
      '      Nvl2('
      '        mlmso.SETUP_TEAM_CODE,'
      '        ('
      '          select'
      '            t.TEAM_NAME'
      '          from'
      '            TEAMS t'
      '          where'
      '            (t.TEAM_CODE = mlmso.SETUP_TEAM_CODE)'
      '        ),'
      '        ('
      '          select'
      
        '            (e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) ' +
        '|| '#39'. '#39' || e.LAST_NAME) as EMPLOYEE_NAME'
      '          from'
      '            EMPLOYEES e'
      '          where'
      '            (e.EMPLOYEE_CODE = mlmso.SETUP_EMPLOYEE_CODE)'
      '        )'
      '      ) as OPERATOR_NAME,'
      ''
      '      Nvl2('
      '        mlmso.SETUP_TEAM_CODE,'
      '        Coalesce('
      '          ( select'
      '              mt.DEFINED_EMPLOYEE_COUNT'
      '            from'
      '              MONTH_TEAMS mt,'
      '              THE_MONTH_DATES tmd'
      '            where'
      '              (mt.THE_MONTH_DATE = tmd.THE_MONTH_DATE) and'
      '              (mt.TEAM_CODE = mlmso.SETUP_TEAM_CODE) and'
      
        '              (mlmso.SETUP_DATE between tmd.THE_FIRST_DATE and t' +
        'md.THE_LAST_DATE)'
      '          ),'
      '          ( select'
      '              t.DEFINED_EMPLOYEE_COUNT'
      '            from'
      '              TEAMS t'
      '            where'
      '              (t.TEAM_CODE = mlmso.SETUP_TEAM_CODE)'
      '          )'
      '        ),'
      '        1'
      '      ) as DEFINED_EMPLOYEE_COUNT,'
      ''
      '      Nvl2('
      '        mlmso.SETUP_TEAM_CODE,'
      '        Cast(null as Varchar2(50 char)),'
      '        ( select'
      '            o.OCCUPATION_NAME'
      '          from'
      '            OCCUPATIONS o,'
      '            OCCUPATION_EMPLOYEES oe'
      '          where'
      '            (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '            (oe.EMPLOYEE_CODE = mlmso.SETUP_EMPLOYEE_CODE) and'
      
        '            (mlmso.SETUP_DATE between oe.ASSIGNMENT_BEGIN_DATE a' +
        'nd oe.ASSIGNMENT_END_DATE) and'
      '            (o.IS_MAIN = 1)'
      '        )'
      '      ) as OCCUPATION_NAME,'
      ''
      '      Nvl2('
      '        mlmso.SETUP_TEAM_CODE,'
      '        Cast(null as Varchar2(50 char)),'
      '        ( select'
      '            ('
      '              select'
      
        '                (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFI' +
        'X_LETTER)'
      '              from'
      '                DEPTS d,'
      '                DEPT_TYPES dt'
      '              where'
      '                (d.DEPT_CODE = o.DEPT_CODE) and'
      '                (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '            ) as DEPT_IDENTIFIER'
      '          from'
      '            OCCUPATIONS o,'
      '            OCCUPATION_EMPLOYEES oe'
      '          where'
      '            (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '            (oe.EMPLOYEE_CODE = mlmso.SETUP_EMPLOYEE_CODE) and'
      
        '            (mlmso.SETUP_DATE between oe.ASSIGNMENT_BEGIN_DATE a' +
        'nd oe.ASSIGNMENT_END_DATE) and'
      '            (o.IS_MAIN = 1)'
      '        )'
      '      ) as OCCUPATION_DEPT_IDENTIFIER,'
      ''
      '      Nvl2('
      '        mlmso.SETUP_TEAM_CODE,'
      '        Cast(null as Varchar2(5 char)),'
      '        ( select'
      '            s.SHIFT_ABBREV'
      '          from'
      '            SHIFTS s'
      '          where'
      '            (s.SHIFT_CODE ='
      '              ( select'
      '                  os.SHIFT_CODE'
      '                from'
      '                  OCCUPATION_SHIFTS os'
      '                where'
      '                  (os.OCCUPATION_CODE ='
      '                    ( select'
      '                        o.OCCUPATION_CODE'
      '                      from'
      '                        OCCUPATIONS o,'
      '                        OCCUPATION_EMPLOYEES oe'
      '                      where'
      
        '                        (o.OCCUPATION_CODE = oe.OCCUPATION_CODE)' +
        ' and'
      
        '                        (oe.EMPLOYEE_CODE = mlmso.SETUP_EMPLOYEE' +
        '_CODE) and'
      
        '                        (mlmso.SETUP_DATE between oe.ASSIGNMENT_' +
        'BEGIN_DATE and oe.ASSIGNMENT_END_DATE) and'
      '                        (o.IS_MAIN = 1)'
      '                    )'
      '                  ) and'
      
        '                  (mlmso.SETUP_DATE between os.BEGIN_DATE and os' +
        '.END_DATE)'
      '              )'
      '            )'
      '        )'
      '      ) as SHIFT_IDENTIFIER,'
      ''
      '      1 as IS_SETUP,'
      ''
      '      mlmso.SETUP_DATE as WORK_DATE,'
      '      0 as IS_WASTE,'
      ''
      '      ( select'
      '          ( select'
      '              pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '            from'
      '              PRODUCTION_ORDER_TYPES pot'
      '            where'
      
        '              (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORD' +
        'ER_TYPE_CODE)'
      '          ) ||'
      '          '#39'/'#39' ||'
      '          ( select'
      '              d.CUSTOM_CODE'
      '            from'
      '              DEPTS d'
      '            where'
      '              (d.DEPT_CODE = s.SALE_BRANCH_CODE)'
      '          ) ||'
      '          '#39'/'#39' ||'
      '          s.SALE_NO ||'
      '          '#39'/'#39' ||'
      '          ( select'
      '              st.SALE_TYPE_ABBREV'
      '            from'
      '              SALE_TYPES st'
      '            where'
      '              (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '          )'
      '        from'
      '          SALES s'
      '        where'
      '          ( (s.SALE_OBJECT_BRANCH_CODE, s.SALE_OBJECT_CODE) ='
      '            ('
      '              select'
      '                ml.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '                ml.BND_PROCESS_OBJECT_CODE'
      '              from'
      '                MATERIAL_LISTS ml'
      '              where'
      
        '                (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH' +
        '_CODE) and'
      '                (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE)'
      '            )'
      '          )'
      '      ) as PRODUCTION_ORDER_IDENTIFIER,'
      ''
      '      mll.NO_AS_TEXT,'
      '      mll.FORK_NO,'
      ''
      '      ('
      '        select'
      '          p.CUSTOM_CODE'
      '        from'
      '          PRODUCTS p'
      '        where'
      '          (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '      ) as DETAIL_NO,'
      ''
      '      ('
      '        select'
      '          p.NAME'
      '        from'
      '          PRODUCTS p'
      '        where'
      '          (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '      ) as DETAIL_NAME,'
      '  '
      '      mlmso.DONE_SETUP_COUNT as WORK_DETAIL_TECH_QUANTITY,'
      '  '
      '      Cast('#39'setup'#39' as Varchar2(5 char)) as TECH_MEASURE_ABBREV,'
      '  '
      '      ('
      '        select'
      '          d.NAME'
      '        from'
      '          DEPTS d'
      '        where'
      '          (d.DEPT_CODE = mlmso.DEPT_CODE)'
      '      ) as DEPT_NAME,'
      ''
      '      ('
      '        mlms.ML_MODEL_STAGE_NO || '#39'-'#39' ||'
      '        mlmso.MLMS_OPERATION_NO || '#39'.'#39' || '
      '        mlmso.MLMS_OPERATION_VARIANT_NO'
      '      ) as OPERATION_IDENTIFICATION,'
      '  '
      
        '      ( (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY' +
        ') *'
      '        mlmso.SETUP_EFFORT_COEF'
      '      ) as WORK_HOURS,'
      ''
      '      Coalesce('
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      
        '            (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE)' +
        ' and'
      
        '            (mlmso.SETUP_DATE between pper.BEGIN_DATE and pper.E' +
        'ND_DATE)'
      '        ),'
      '        0'
      '      ) as HOUR_PRICE,'
      '  '
      
        '      NullIf((mlmso.TREATMENT_END_DATE - mlmso.SETUP_DATE), 0) a' +
        's LATE_DAYS'
      ''
      '    from'
      '      MLMS_OPERATIONS mlmso,'
      '      ML_MODEL_STAGES mlms,'
      '      MATERIAL_LIST_LINES mll'
      ''
      '    where'
      '      (:IS_SETUP = 1) and'
      ''
      
        '      (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '      (mlmso.MLMS_OPERATION_VARIANT_NO >= 0) and'
      ''
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '      exists('
      '        select'
      '          1'
      '        from'
      '          SALES s'
      '        where'
      '          ( (s.SALE_OBJECT_BRANCH_CODE, s.SALE_OBJECT_CODE) ='
      '            ('
      '              select'
      '                ml.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '                ml.BND_PROCESS_OBJECT_CODE'
      '              from'
      '                MATERIAL_LISTS ml'
      '              where'
      
        '                (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH' +
        '_CODE) and'
      '                (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE)'
      '            )'
      '          ) and'
      ''
      '          ( (:SALE_TYPE_CODE is null) or'
      '            (s.SALE_TYPE_CODE = :SALE_TYPE_CODE) ) and'
      ''
      '          ( (:SALE_BRANCH_CODE is null) or'
      '            (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) ) and'
      ''
      '          ( (:SALE_NO is null) or'
      '            (s.SALE_NO = :SALE_NO) ) and'
      ''
      '          ( (:PRODUCTION_ORDER_TYPE_CODE is null) or'
      
        '            (s.PRODUCTION_ORDER_TYPE_CODE = :PRODUCTION_ORDER_TY' +
        'PE_CODE) ) and'
      ''
      '          ( (:PRIORITY_CODE is null) or'
      '            exists('
      '              select'
      '                1'
      '              from'
      '                SALE_GROUPS sg'
      '              where'
      
        '                (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP' +
        '_OBJECT_BRANCH_CODE) and'
      
        '                (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT' +
        '_CODE) and'
      '                (sg.PRIORITY_CODE = :PRIORITY_CODE)'
      '            )'
      '          )'
      '      ) and'
      ''
      
        '      (mlmso.SETUP_DATE between Trunc(:BEGIN_DATE) and Trunc(:EN' +
        'D_DATE)) and  -- Trunc() to disable parameter peeking in optimiz' +
        'er'
      ''
      '      exists('
      '        select'
      '          1'
      '        from'
      '          DEPT_RELATIONS dr'
      '        where'
      '          (dr.ANCESTOR_DEPT_CODE = :DEPT_CODE) and'
      
        '          (dr.DESCENDANT_DEPT_CODE = Coalesce(mlmso.DEPT_CODE, 0' +
        ')) -- Coalesce e slojeno za da se izluje oracle 10g da izpolzva ' +
        'indexa po setup_date vmesto po dept'
      '      ) and'
      ''
      '      ( (:TEAM_CODE is null) or'
      '        (mlmso.SETUP_TEAM_CODE = :TEAM_CODE) ) and'
      ''
      '      ('
      '        (:EMPLOYEE_CODE is null) or'
      ''
      '        ( (mlmso.SETUP_EMPLOYEE_CODE is not null) and'
      '          (mlmso.SETUP_EMPLOYEE_CODE = :EMPLOYEE_CODE) ) or'
      ''
      '        ( (mlmso.SETUP_TEAM_CODE is not null) and'
      '          ( exists'
      '            ( select'
      '                1'
      '              from'
      '                MONTH_TEAM_EMPLOYEES mte,'
      '                THE_DATES td'
      '              where'
      '                (mte.TEAM_CODE = mlmso.SETUP_TEAM_CODE) and'
      '                (mte.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '                (mte.THE_MONTH_DATE = td.THE_MONTH_DATE) and'
      '                (td.THE_DATE = mlmso.SETUP_DATE)'
      '            )'
      '          )'
      '        )'
      '      ) and'
      '  '
      '      ( (:SHIFT_CODE is null) or'
      '        ( (mlmso.SETUP_TEAM_CODE is null) and'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              OCCUPATION_SHIFTS os'
      '            where'
      '              (os.OCCUPATION_CODE ='
      '                ( select'
      '                    o.OCCUPATION_CODE'
      '                  from'
      '                    OCCUPATIONS o,'
      '                    OCCUPATION_EMPLOYEES oe'
      '                  where'
      '                    (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      
        '                    (oe.EMPLOYEE_CODE = mlmso.SETUP_EMPLOYEE_COD' +
        'E) and'
      
        '                    (mlmso.SETUP_DATE between oe.ASSIGNMENT_BEGI' +
        'N_DATE and oe.ASSIGNMENT_END_DATE) and'
      '                    (o.IS_MAIN = 1)'
      '                )'
      '              ) and'
      
        '              (mlmso.SETUP_DATE between os.BEGIN_DATE and os.END' +
        '_DATE) and'
      '              (os.SHIFT_CODE = :SHIFT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:OCCUPATION_DEPT_CODE is null) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            DEPT_RELATIONS dr2'
      '          where'
      '            (dr2.ANCESTOR_DEPT_CODE = :OCCUPATION_DEPT_CODE) and'
      '            (dr2.DESCENDANT_DEPT_CODE ='
      '              Nvl2('
      '                mlmso.SETUP_TEAM_CODE,'
      '                ( select'
      '                    t.DEPT_CODE'
      '                  from'
      '                    TEAMS t'
      '                  where'
      '                    (t.TEAM_CODE = mlmso.SETUP_TEAM_CODE)'
      '                ),'
      '                ( select'
      '                    o.DEPT_CODE'
      '                  from'
      '                    OCCUPATION_EMPLOYEES oe,'
      '                    OCCUPATIONS o'
      '                  where'
      
        '                    (oe.EMPLOYEE_CODE = mlmso.SETUP_EMPLOYEE_COD' +
        'E) and'
      '                    (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '                    (o.IS_MAIN = 1) and'
      
        '                    (mlmso.SETUP_DATE between oe.ASSIGNMENT_BEGI' +
        'N_DATE and oe.ASSIGNMENT_END_DATE)'
      '                )'
      '              )'
      '            )'
      '        )'
      '      )'
      ''
      ''
      '    ------------------------------------'
      '    union all'
      '    ------------------------------------'
      ''
      ''
      '    select'
      '      /*+ INDEX(mlmso) */'
      '      mlmso.MLMSO_OBJECT_BRANCH_CODE,'
      '      mlmso.MLMSO_OBJECT_CODE,'
      ''
      '      om.OM_BRANCH_CODE,'
      '      om.OM_CODE,'
      ''
      '      Nvl2(om.FROM_TEAM_CODE, 1, 0) as OPERATOR_IS_TEAM,'
      ''
      '      om.FROM_TEAM_CODE as TEAM_CODE,'
      '      om.FROM_EMPLOYEE_CODE as EMPLOYEE_CODE,'
      ''
      '      Nvl2(om.FROM_TEAM_CODE,'
      '        ('
      '          select'
      '            t.TEAM_NO'
      '          from'
      '            TEAMS t'
      '          where'
      '            (t.TEAM_CODE = om.FROM_TEAM_CODE)'
      '        ),'
      '        ( select'
      '            c.COMPANY_NO'
      '          from'
      '            EMPLOYEES e,'
      '            COMPANIES c'
      '          where'
      '            (e.EMPLOYEE_CODE = om.FROM_EMPLOYEE_CODE) and'
      '            (c.COMPANY_CODE = e.COMPANY_CODE)'
      '        )'
      '      ) as OPERATOR_NO,'
      ''
      '      Nvl2('
      '        om.FROM_TEAM_CODE,'
      '        ('
      '          select'
      
        '            (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LE' +
        'TTER) as DEPT_IDENTIFIER'
      '          from'
      '            DEPTS d,'
      '            DEPT_TYPES dt'
      '          where'
      '            (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '            (d.DEPT_CODE ='
      '              ('
      '                select'
      '                  t.DEPT_CODE'
      '                from'
      '                  TEAMS t'
      '                where'
      '                  (t.TEAM_CODE = om.FROM_TEAM_CODE)'
      '              )'
      '            )'
      '        ),'
      '        ('
      '          select'
      
        '            (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LE' +
        'TTER) as DEPT_IDENTIFIER'
      '          from'
      '            DEPTS d,'
      '            DEPT_TYPES dt'
      '          where'
      '            (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '            (d.DEPT_CODE ='
      '              ( select'
      '                  o.DEPT_CODE'
      '                from'
      '                  OCCUPATION_EMPLOYEES oe,'
      '                  OCCUPATIONS o'
      '                where'
      '                  (oe.EMPLOYEE_CODE = om.FROM_EMPLOYEE_CODE) and'
      '                  (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '                  (o.IS_MAIN = 1) and'
      
        '                  (om.OM_DATE between oe.ASSIGNMENT_BEGIN_DATE a' +
        'nd oe.ASSIGNMENT_END_DATE)'
      '              )'
      '            )'
      '        )'
      '      ) as OPERATOR_DEPT_IDENTIFIER,'
      ''
      '      Nvl2('
      '        om.FROM_TEAM_CODE,'
      '        ('
      '          select'
      '            t.TEAM_NAME'
      '          from'
      '            TEAMS t'
      '          where'
      '            (t.TEAM_CODE = om.FROM_TEAM_CODE)'
      '        ),'
      '        ('
      '          select'
      
        '            (e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) ' +
        '|| '#39'. '#39' || e.LAST_NAME) as EMPLOYEE_NAME'
      '          from'
      '            EMPLOYEES e'
      '          where'
      '            (e.EMPLOYEE_CODE = om.FROM_EMPLOYEE_CODE)'
      '        )'
      '      ) as OPERATOR_NAME,'
      ''
      '      Nvl2('
      '        om.FROM_TEAM_CODE,'
      '        Coalesce('
      '          ( select'
      '              mt.DEFINED_EMPLOYEE_COUNT'
      '            from'
      '              MONTH_TEAMS mt,'
      '              THE_MONTH_DATES tmd'
      '            where'
      '              (mt.THE_MONTH_DATE = tmd.THE_MONTH_DATE) and'
      '              (mt.TEAM_CODE = om.FROM_TEAM_CODE) and'
      
        '              (om.OM_DATE between tmd.THE_FIRST_DATE and tmd.THE' +
        '_LAST_DATE)'
      '          ),'
      '          ( select'
      '              t.DEFINED_EMPLOYEE_COUNT'
      '            from'
      '              TEAMS t'
      '            where'
      '              (t.TEAM_CODE = om.FROM_TEAM_CODE)'
      '          )'
      '        ),'
      '        1'
      '      ) as DEFINED_EMPLOYEE_COUNT,'
      ''
      '      Nvl2('
      '        om.FROM_TEAM_CODE,'
      '        Cast(null as Varchar2(50 char)),'
      '        ('
      '          select'
      '            o.OCCUPATION_NAME'
      '          from'
      '            OCCUPATIONS o,'
      '            OCCUPATION_EMPLOYEES oe'
      '          where'
      '            (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '            (oe.EMPLOYEE_CODE = om.FROM_EMPLOYEE_CODE) and'
      
        '            (om.OM_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.' +
        'ASSIGNMENT_END_DATE) and'
      '            (o.IS_MAIN = 1)'
      '        )'
      '      ) as OCCUPATION_NAME,'
      ''
      '      Nvl2('
      '        om.FROM_TEAM_CODE,'
      '        Cast(null as Varchar2(50 char)),'
      '        ('
      '          select'
      '            ('
      '              select'
      
        '                (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFI' +
        'X_LETTER)'
      '              from'
      '                DEPTS d,'
      '                DEPT_TYPES dt'
      '              where'
      '                (d.DEPT_CODE = o.DEPT_CODE) and'
      '                (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '            ) as DEPT_IDENTIFIER'
      '          from'
      '            OCCUPATIONS o,'
      '            OCCUPATION_EMPLOYEES oe'
      '          where'
      '            (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '            (oe.EMPLOYEE_CODE = om.FROM_EMPLOYEE_CODE) and'
      
        '            (om.OM_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.' +
        'ASSIGNMENT_END_DATE) and'
      '            (o.IS_MAIN = 1)'
      '        )'
      '      ) as OCCUPATION_DEPT_IDENTIFIER,'
      ''
      '      Nvl2('
      '        om.FROM_TEAM_CODE,'
      '        Cast(null as Varchar2(5 char)),'
      '        ( select'
      '            s.SHIFT_ABBREV'
      '          from'
      '            SHIFTS s'
      '          where'
      '            (s.SHIFT_CODE ='
      '              ( select'
      '                  os.SHIFT_CODE'
      '                from'
      '                  OCCUPATION_SHIFTS os'
      '                where'
      '                  (os.OCCUPATION_CODE ='
      '                    ( select'
      '                        o.OCCUPATION_CODE'
      '                      from'
      '                        OCCUPATIONS o,'
      '                        OCCUPATION_EMPLOYEES oe'
      '                      where'
      
        '                        (o.OCCUPATION_CODE = oe.OCCUPATION_CODE)' +
        ' and'
      
        '                        (oe.EMPLOYEE_CODE = om.FROM_EMPLOYEE_COD' +
        'E) and'
      
        '                        (om.OM_DATE between oe.ASSIGNMENT_BEGIN_' +
        'DATE and oe.ASSIGNMENT_END_DATE) and'
      '                        (o.IS_MAIN = 1)'
      '                    )'
      '                  ) and'
      
        '                  (om.OM_DATE between os.BEGIN_DATE and os.END_D' +
        'ATE)'
      '              )'
      '            )'
      '        )'
      '      ) as SHIFT_IDENTIFIER,'
      ''
      '      0 as IS_SETUP,'
      ''
      '      om.OM_DATE as WORK_DATE,'
      '      Nvl2(om.TO_DEPT_CODE, 1, 0) as IS_WASTE,'
      ''
      '      ( select'
      '          ( select'
      '              pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '            from'
      '              PRODUCTION_ORDER_TYPES pot'
      '            where'
      
        '              (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORD' +
        'ER_TYPE_CODE)'
      '          ) ||'
      '          '#39'/'#39' ||'
      '          ( select'
      '              d.CUSTOM_CODE'
      '            from'
      '              DEPTS d'
      '            where'
      '              (d.DEPT_CODE = s.SALE_BRANCH_CODE)'
      '          ) ||'
      '          '#39'/'#39' ||'
      '          s.SALE_NO ||'
      '          '#39'/'#39' ||'
      '          ( select'
      '              st.SALE_TYPE_ABBREV'
      '            from'
      '              SALE_TYPES st'
      '            where'
      '              (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '          )'
      '        from'
      '          SALES s'
      '        where'
      '          ( (s.SALE_OBJECT_BRANCH_CODE, s.SALE_OBJECT_CODE) ='
      '            ('
      '              select'
      '                ml.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '                ml.BND_PROCESS_OBJECT_CODE'
      '              from'
      '                MATERIAL_LISTS ml'
      '              where'
      
        '                (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH' +
        '_CODE) and'
      '                (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE)'
      '            )'
      '          )'
      '      ) as PRODUCTION_ORDER_IDENTIFIER,'
      ''
      '      mll.NO_AS_TEXT,'
      '      mll.FORK_NO,'
      ''
      '      ('
      '        select'
      '          p.CUSTOM_CODE'
      '        from'
      '          PRODUCTS p'
      '        where'
      '          (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '      ) as DETAIL_NO,'
      ''
      '      ('
      '        select'
      '          p.NAME'
      '        from'
      '          PRODUCTS p'
      '        where'
      '          (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '      ) as DETAIL_NAME,'
      ''
      '      om.WORK_DETAIL_TECH_QUANTITY,'
      ''
      '      ('
      '        select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE ='
      '            ('
      '              select'
      '                p.TECH_MEASURE_CODE'
      '              from'
      '                PRODUCTS p'
      '              where'
      '                (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '            )'
      '          )'
      '      ) as TECH_MEASURE_ABBREV,'
      ''
      '      ('
      '        select'
      '          d.NAME'
      '        from'
      '          DEPTS d'
      '        where'
      '          (d.DEPT_CODE = mlmso.DEPT_CODE)'
      '      ) as DEPT_NAME,'
      ''
      '      ('
      '        mlms.ML_MODEL_STAGE_NO || '#39'-'#39' ||'
      '        mlmso.MLMS_OPERATION_NO || '#39'.'#39' ||'
      '        mlmso.MLMS_OPERATION_VARIANT_NO'
      '      ) as OPERATION_IDENTIFICATION,'
      ''
      
        '      ( (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY' +
        ') *'
      '        mlmso.EFFORT_COEF'
      '      ) as WORK_HOURS,'
      ''
      '      Coalesce('
      '        ( select'
      '            pper.HOUR_PRICE'
      '          from'
      '            PROFESSION_PERIODS pper'
      '          where'
      '            (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and'
      
        '            (om.OM_DATE between pper.BEGIN_DATE and pper.END_DAT' +
        'E)'
      '        ),'
      '        0'
      '      ) as HOUR_PRICE,'
      ''
      
        '      NullIf((mlmso.TREATMENT_END_DATE - om.OM_DATE), 0) as LATE' +
        '_DAYS'
      ''
      '    from'
      '      OPERATION_MOVEMENTS om,'
      '      MLMS_OPERATIONS mlmso,'
      '      ML_MODEL_STAGES mlms,'
      '      MATERIAL_LIST_LINES mll,'
      '      DEPT_RELATIONS dr'
      ''
      '    where'
      '      (:IS_WORK = 1) and'
      ''
      '      (mlms.ML_MODEL_STAGE_NO > 0) and'
      '      (om.WORK_DETAIL_TECH_QUANTITY > 0) and'
      '      (mlmso.MLMS_OPERATION_VARIANT_NO >= 0) and'
      ''
      
        '      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and'
      ''
      
        '      (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '      (dr.DESCENDANT_DEPT_CODE = mlmso.DEPT_CODE) and'
      '      (dr.ANCESTOR_DEPT_CODE = :DEPT_CODE) and'
      ''
      '      exists('
      '        select'
      '          1'
      '        from'
      '          SALES s'
      '        where'
      '          ( (s.SALE_OBJECT_BRANCH_CODE, s.SALE_OBJECT_CODE) ='
      '            ('
      '              select'
      '                ml.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '                ml.BND_PROCESS_OBJECT_CODE'
      '              from'
      '                MATERIAL_LISTS ml'
      '              where'
      
        '                (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH' +
        '_CODE) and'
      '                (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE)'
      '            )'
      '          ) and'
      ''
      '          ( (:SALE_TYPE_CODE is null) or'
      '            (s.SALE_TYPE_CODE = :SALE_TYPE_CODE) ) and'
      ''
      '          ( (:SALE_BRANCH_CODE is null) or'
      '            (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) ) and'
      ''
      '          ( (:SALE_NO is null) or'
      '            (s.SALE_NO = :SALE_NO) ) and'
      ''
      '          ( (:PRODUCTION_ORDER_TYPE_CODE is null) or'
      
        '            (s.PRODUCTION_ORDER_TYPE_CODE = :PRODUCTION_ORDER_TY' +
        'PE_CODE) ) and'
      ''
      '          ( (:PRIORITY_CODE is null) or'
      '            exists('
      '              select'
      '                1'
      '              from'
      '                SALE_GROUPS sg'
      '              where'
      
        '                (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP' +
        '_OBJECT_BRANCH_CODE) and'
      
        '                (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT' +
        '_CODE) and'
      '                (sg.PRIORITY_CODE = :PRIORITY_CODE)'
      '            )'
      '          )'
      '      ) and'
      ''
      '      (om.STORNO_EMPLOYEE_CODE is null) and'
      
        '      (om.OM_DATE between Trunc(:BEGIN_DATE) and Trunc(:END_DATE' +
        ')) and  -- Trunc() to disable parameter peeking in optimizer'
      ''
      '      ( (:TEAM_CODE is null) or'
      '        (om.FROM_TEAM_CODE = :TEAM_CODE) ) and'
      ''
      '      ('
      '        (:EMPLOYEE_CODE is null) or'
      ''
      '        ( (om.FROM_TEAM_CODE is null) and'
      '          (om.FROM_EMPLOYEE_CODE = :EMPLOYEE_CODE) ) or'
      ''
      '        ( (om.FROM_TEAM_CODE is not null) and'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                MONTH_TEAM_EMPLOYEES mte,'
      '                THE_DATES td'
      '              where'
      '                (mte.TEAM_CODE = om.FROM_TEAM_CODE) and'
      '                (mte.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '                (mte.THE_MONTH_DATE = td.THE_MONTH_DATE) and'
      '                (td.THE_DATE = om.OM_DATE)'
      '            )'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:SHIFT_CODE is null) or'
      '        ( (om.FROM_TEAM_CODE is null) and'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              OCCUPATION_SHIFTS os'
      '            where'
      '              (os.OCCUPATION_CODE ='
      '                ( select'
      '                    o.OCCUPATION_CODE'
      '                  from'
      '                    OCCUPATIONS o,'
      '                    OCCUPATION_EMPLOYEES oe'
      '                  where'
      '                    (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      
        '                    (oe.EMPLOYEE_CODE = om.FROM_EMPLOYEE_CODE) a' +
        'nd'
      
        '                    (om.OM_DATE between oe.ASSIGNMENT_BEGIN_DATE' +
        ' and oe.ASSIGNMENT_END_DATE) and'
      '                    (o.IS_MAIN = 1)'
      '                )'
      '              ) and'
      
        '              (om.OM_DATE between os.BEGIN_DATE and os.END_DATE)' +
        ' and'
      '              (os.SHIFT_CODE = :SHIFT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:OCCUPATION_DEPT_CODE is null) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            DEPT_RELATIONS dr2'
      '          where'
      '            (dr2.ANCESTOR_DEPT_CODE = :OCCUPATION_DEPT_CODE) and'
      '            (dr2.DESCENDANT_DEPT_CODE ='
      '              Nvl2('
      '                om.FROM_TEAM_CODE,'
      '                ( select'
      '                    t.DEPT_CODE'
      '                  from'
      '                    TEAMS t'
      '                  where'
      '                    (t.TEAM_CODE = om.FROM_TEAM_CODE)'
      '                ),'
      '                ( select'
      '                    o.DEPT_CODE'
      '                  from'
      '                    OCCUPATION_EMPLOYEES oe,'
      '                    OCCUPATIONS o'
      '                  where'
      
        '                    (oe.EMPLOYEE_CODE = om.FROM_EMPLOYEE_CODE) a' +
        'nd'
      '                    (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '                    (o.IS_MAIN = 1) and'
      
        '                    (om.OM_DATE between oe.ASSIGNMENT_BEGIN_DATE' +
        ' and oe.ASSIGNMENT_END_DATE)'
      '                )'
      '              )'
      '            )'
      '        )'
      '      )'
      '  ) x,'
      ''
      '  ( select'
      '      t.TEAM_CODE,'
      ''
      '      %COUNT_WORKDAYS[:BEGIN_DATE ~ :END_DATE] as WORKDAY_COUNT,'
      ''
      '      ( select'
      '          Sum('
      '            Coalesce('
      '              ( select'
      
        '                  (mt.EMP_WORKDAY_DURATION_HOURS * mt.EMP_WORKDA' +
        'Y_DENSITY_PERCENT * mt.DEFINED_EMPLOYEE_COUNT)'
      '                from'
      '                  MONTH_TEAMS mt,'
      '                  THE_MONTH_DATES tmd'
      '                where'
      '                  (mt.THE_MONTH_DATE = tmd.THE_MONTH_DATE) and'
      '                  (mt.TEAM_CODE = t.TEAM_CODE) and'
      
        '                  (td.THE_DATE between tmd.THE_FIRST_DATE and tm' +
        'd.THE_LAST_DATE)'
      '              ),'
      
        '              (t.EMP_WORKDAY_DURATION_HOURS * t.EMP_WORKDAY_DENS' +
        'ITY_PERCENT * t.DEFINED_EMPLOYEE_COUNT)'
      '            )'
      '          )'
      '        from'
      '          THE_DATES td'
      '        where'
      
        '          (td.THE_DATE between Trunc(:BEGIN_DATE) and Trunc(:END' +
        '_DATE)) and  -- Trunc() to disable parameter peeking in optimize' +
        'r'
      '          (td.WORKDAYS = 1)'
      '      ) as EFFECTIVE_EMP_WORKHOURS'
      ''
      '    from'
      '      TEAMS t'
      ''
      '    where'
      '      ( (:TEAM_CODE is null) or'
      '        (t.TEAM_CODE = :TEAM_CODE)'
      '      )'
      ''
      '    group by'
      '      t.TEAM_CODE,'
      '      t.DEFINED_EMPLOYEE_COUNT,'
      '      t.EMP_WORKDAY_DURATION_HOURS,'
      '      t.EMP_WORKDAY_DENSITY_PERCENT'
      '  ) yt,'
      ''
      '  ( select'
      '      e.EMPLOYEE_CODE,'
      
        '      %EMPLOYEE_MAIN_SHIFT_WORKDAY_COUNT[e.EMPLOYEE_CODE ~ :BEGI' +
        'N_DATE ~ :END_DATE] as EMP_MAIN_SHIFT_WORKDAY_COUNT,'
      
        '      %EMPLOYEE_MAIN_SHIFT_EFFECTIVE_WORKHOURS[e.EMPLOYEE_CODE ~' +
        ' :BEGIN_DATE ~ :END_DATE] as EMP_MAIN_SHIFT_EFF_WORKHOURS'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      ( (:EMPLOYEE_CODE is null) or'
      '        (e.EMPLOYEE_CODE = :EMPLOYEE_CODE)'
      '      )'
      '    group by'
      '      e.EMPLOYEE_CODE'
      '  ) ye'
      ''
      'where'
      '  (x.TEAM_CODE = yt.TEAM_CODE(+)) and'
      '  (x.EMPLOYEE_CODE = ye.EMPLOYEE_CODE(+))'
      ''
      'order by'
      '  OPERATOR_IS_TEAM,'
      '  OPERATOR_NO,'
      '  WORK_DATE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[:BEGIN_DATE ~ :END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 
          'EMPLOYEE_MAIN_SHIFT_WORKDAY_COUNT[e.EMPLOYEE_CODE ~ :BEGIN_DATE ' +
          '~ :END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 
          'EMPLOYEE_MAIN_SHIFT_EFFECTIVE_WORKHOURS[e.EMPLOYEE_CODE ~ :BEGIN' +
          '_DATE ~ :END_DATE]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 288
    object qryWorkHoursMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
    end
    object qryWorkHoursMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
    end
    object qryWorkHoursOM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OM_BRANCH_CODE'
    end
    object qryWorkHoursOM_CODE: TAbmesFloatField
      FieldName = 'OM_CODE'
    end
    object qryWorkHoursOPERATOR_IS_TEAM: TAbmesFloatField
      FieldName = 'OPERATOR_IS_TEAM'
    end
    object qryWorkHoursOPERATOR_NO: TAbmesFloatField
      FieldName = 'OPERATOR_NO'
    end
    object qryWorkHoursOPERATOR_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OPERATOR_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryWorkHoursOPERATOR_NAME: TAbmesWideStringField
      FieldName = 'OPERATOR_NAME'
      Size = 50
    end
    object qryWorkHoursDEFINED_EMPLOYEE_COUNT: TAbmesFloatField
      FieldName = 'DEFINED_EMPLOYEE_COUNT'
    end
    object qryWorkHoursIS_SETUP: TAbmesFloatField
      FieldName = 'IS_SETUP'
      FieldValueType = fvtBoolean
    end
    object qryWorkHoursIS_NOT_SETUP: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'IS_NOT_SETUP'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object qryWorkHoursIS_WASTE: TAbmesFloatField
      FieldName = 'IS_WASTE'
      FieldValueType = fvtBoolean
    end
    object qryWorkHoursIS_NOT_WASTE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'IS_NOT_WASTE'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object qryWorkHoursPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_IDENTIFIER'
      Size = 188
    end
    object qryWorkHoursWORK_DATE: TAbmesSQLTimeStampField
      FieldName = 'WORK_DATE'
    end
    object qryWorkHoursDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryWorkHoursWORK_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_DETAIL_TECH_QUANTITY'
    end
    object qryWorkHoursTECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryWorkHoursOPERATION_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'OPERATION_IDENTIFICATION'
      Size = 122
    end
    object qryWorkHoursWORK_HOURS: TAbmesFloatField
      FieldName = 'WORK_HOURS'
    end
    object qryWorkHoursHOUR_PRICE: TAbmesFloatField
      FieldName = 'HOUR_PRICE'
    end
    object qryWorkHoursLATE_DAYS: TAbmesFloatField
      FieldName = 'LATE_DAYS'
    end
    object qryWorkHoursOPERATOR_EARNING: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'OPERATOR_EARNING'
      Calculated = True
    end
    object qryWorkHoursNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qryWorkHoursFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object qryWorkHoursDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryWorkHoursOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object qryWorkHoursSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object qryWorkHoursOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_IDENTIFIER'
      Size = 50
    end
    object qryWorkHoursDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qryWorkHoursWORK_OPHOURS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'WORK_OPHOURS'
      Calculated = True
    end
    object qryWorkHoursTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
    end
    object qryWorkHoursEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryWorkHoursWORKDAY_COUNT: TAbmesFloatField
      FieldName = 'WORKDAY_COUNT'
    end
    object qryWorkHoursEFFECTIVE_EMP_WORKHOURS: TAbmesFloatField
      FieldName = 'EFFECTIVE_EMP_WORKHOURS'
    end
  end
  object qryTeamEarnings: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  ModelUtils.TeamEarnings(:TEAM_CODE, :BEGIN_DATE, :END_DATE) as' +
        ' TEAM_EARNINGS'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 808
    Top = 296
    object qryTeamEarningsTEAM_EARNINGS: TAbmesFloatField
      FieldName = 'TEAM_EARNINGS'
    end
  end
  object prvEmployeeEarnings: TDataSetProvider
    DataSet = qryEmployeeEarnings
    UpdateMode = upWhereKeyOnly
    Left = 704
    Top = 232
  end
  object qryEmployeeEarnings: TAbmesSQLQuery
    BeforeOpen = qryEmployeeEarningsBeforeOpen
    AfterClose = qryEmployeeEarningsAfterClose
    OnCalcFields = qryEmployeeEarningsCalcFields
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_OCCUPATION'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_OCCUPATION'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.*,'
      ''
      '  ( select'
      '      o.DEPT_CODE'
      '    from'
      '      OCCUPATIONS o,'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '      (oe.EMPLOYEE_CODE = x.EMPLOYEE_CODE) and'
      
        '      (:BEGIN_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIG' +
        'NMENT_END_DATE) and'
      '      (o.IS_MAIN = 1)'
      '  ) as DEPT_CODE,'
      ''
      '  ( select'
      '      ( select'
      
        '          (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETT' +
        'ER) as DEPT_IDENTIFIER'
      '        from'
      '          DEPTS d,'
      '          DEPT_TYPES dt'
      '        where'
      '          (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '          (d.DEPT_CODE = o.DEPT_CODE)'
      '      )'
      '    from'
      '      OCCUPATIONS o,'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '      (oe.EMPLOYEE_CODE = x.EMPLOYEE_CODE) and'
      
        '      (:BEGIN_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIG' +
        'NMENT_END_DATE) and'
      '      (o.IS_MAIN = 1)'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      o.OCCUPATION_NAME'
      '    from'
      '      OCCUPATIONS o,'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '      (oe.EMPLOYEE_CODE = x.EMPLOYEE_CODE) and'
      
        '      (:BEGIN_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIG' +
        'NMENT_END_DATE) and'
      '      (o.IS_MAIN = 1)'
      '  ) as OCCUPATION_NAME,'
      ''
      '  ( select'
      '      s.SHIFT_ABBREV'
      '    from'
      '      SHIFTS s'
      '    where'
      '      (s.SHIFT_CODE ='
      '        ( select'
      '            os.SHIFT_CODE'
      '          from'
      '            OCCUPATION_SHIFTS os'
      '          where'
      '            (os.OCCUPATION_CODE ='
      '              ( select'
      '                  o.OCCUPATION_CODE'
      '                from'
      '                  OCCUPATIONS o,'
      '                  OCCUPATION_EMPLOYEES oe'
      '                where'
      '                  (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '                  (oe.EMPLOYEE_CODE = x.EMPLOYEE_CODE) and'
      
        '                  (:BEGIN_DATE between oe.ASSIGNMENT_BEGIN_DATE ' +
        'and oe.ASSIGNMENT_END_DATE) and'
      '                  (o.IS_MAIN = 1)'
      '              )'
      '            ) and'
      '            (:BEGIN_DATE between os.BEGIN_DATE and os.END_DATE)'
      '        )'
      '      )'
      '  ) as SHIFT_IDENTIFIER,'
      ''
      
        '  %EMPLOYEE_MAIN_SHIFT_WORKDAY_COUNT[x.EMPLOYEE_CODE ~ :BEGIN_DA' +
        'TE ~ :END_DATE] as EMP_MAIN_SHIFT_WORKDAY_COUNT,'
      
        '  %EMPLOYEE_MAIN_SHIFT_EFFECTIVE_WORKHOURS[x.EMPLOYEE_CODE ~ :BE' +
        'GIN_DATE ~ :END_DATE] as EMP_MAIN_SHIFT_EFF_WORKHOURS,'
      ''
      
        '  ModelUtils.EmployeePersonalWorkHours(x.EMPLOYEE_CODE, :BEGIN_D' +
        'ATE, :END_DATE, 1, 0, 0) as EMPLOYEE_SETUP_HOURS,'
      
        '  ModelUtils.EmployeePersonalWorkHours(x.EMPLOYEE_CODE, :BEGIN_D' +
        'ATE, :END_DATE, 0, 1, 0) as EMPLOYEE_NONWASTE_HOURS,'
      
        '  ModelUtils.EmployeePersonalWorkHours(x.EMPLOYEE_CODE, :BEGIN_D' +
        'ATE, :END_DATE, 0, 0, 1) as EMPLOYEE_WASTE_HOURS,'
      
        '  ModelUtils.EmployeeTeamWorkHours(x.EMPLOYEE_CODE, :BEGIN_DATE,' +
        ' :END_DATE, 1, 1, 1) as EMPLOYEE_TEAM_HOURS'
      ''
      'from'
      '  ( select'
      '      e.EMPLOYEE_CODE,'
      
        '      (e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) || '#39'. ' +
        #39' || e.LAST_NAME) as EMPLOYEE_NAME,'
      ''
      '      ( select'
      '          c.COMPANY_NO'
      '        from'
      '          COMPANIES c'
      '        where'
      '          (c.COMPANY_CODE = e.COMPANY_CODE)'
      '      ) as EMPLOYEE_NO,'
      ''
      
        '      ModelUtils.EmployeePersonalEarnings(e.EMPLOYEE_CODE, :BEGI' +
        'N_DATE, :END_DATE) as EMPLOYEE_PERSONAL_EARNINGS,'
      ''
      
        '      ModelUtils.EmployeeTeamEarnings(e.EMPLOYEE_CODE, :BEGIN_DA' +
        'TE, :END_DATE) as EMPLOYEE_TEAM_EARNINGS'
      ''
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      ( (:EMPLOYEE_CODE is null) or'
      '        (e.EMPLOYEE_CODE = :EMPLOYEE_CODE)'
      '      ) and'
      ''
      '      ( (:TEAM_CODE is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              THE_MONTH_DATES tmd'
      '            where'
      '              (tmd.THE_FIRST_DATE <= :END_DATE) and'
      '              (tmd.THE_LAST_DATE >= :BEGIN_DATE) and'
      ''
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    MONTH_TEAM_EMPLOYEES mte'
      '                  where'
      
        '                    (mte.THE_MONTH_DATE = tmd.THE_MONTH_DATE) an' +
        'd'
      '                    (mte.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '                    (mte.TEAM_CODE = :TEAM_CODE)'
      '                )'
      '              )'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:HAS_OCCUPATION = 0) or'
      '        ( (:HAS_OCCUPATION = 1) and'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                OCCUPATION_EMPLOYEES oe'
      '              where'
      '                (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '                (:BEGIN_DATE between oe.ASSIGNMENT_BEGIN_DATE an' +
        'd oe.ASSIGNMENT_END_DATE) and'
      ''
      '                (exists'
      '                  ( select'
      '                      1'
      '                    from'
      '                      OCCUPATIONS o,'
      '                      DEPT_RELATIONS dr'
      '                    where'
      
        '                      (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) a' +
        'nd'
      '                      (o.IS_MAIN = 1) and'
      '                      (dr.ANCESTOR_DEPT_CODE = :DEPT_CODE) and'
      '                      (dr.DESCENDANT_DEPT_CODE = o.DEPT_CODE)'
      '                  )'
      '                ) and'
      ''
      '                (exists'
      '                  ( select'
      '                      1'
      '                    from'
      '                      OCCUPATION_WORK_DEPTS owd'
      '                    where'
      
        '                     (owd.OCCUPATION_CODE = oe.OCCUPATION_CODE) ' +
        'and'
      '                     ( (:ALL_FILTERED_DEPTS = 1) or'
      '                       (exists'
      '                         ( select'
      '                             1'
      '                           from'
      '                             TEMP_FILTERED_DEPTS tfd'
      '                           where'
      '                             (tfd.DEPT_CODE = owd.DEPT_CODE)'
      '                         )'
      '                       )'
      '                     )'
      '                  )'
      '                )'
      '            )'
      '          )'
      '        )'
      '      )'
      '  ) x'
      ''
      'where'
      '  ( (x.EMPLOYEE_PERSONAL_EARNINGS > 0) or'
      '    (x.EMPLOYEE_TEAM_EARNINGS > 0)'
      '  )'
      ''
      'order by'
      '  DEPT_IDENTIFIER,'
      '  EMPLOYEE_NAME,'
      '  EMPLOYEE_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'EMPLOYEE_MAIN_SHIFT_WORKDAY_COUNT[x.EMPLOYEE_CODE ~ :BEGIN_DATE ' +
          '~ :END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 
          'EMPLOYEE_MAIN_SHIFT_EFFECTIVE_WORKHOURS[x.EMPLOYEE_CODE ~ :BEGIN' +
          '_DATE ~ :END_DATE]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_OCCUPATION_WORK_DEPTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 704
    Top = 280
    object qryEmployeeEarningsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmployeeEarningsEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object qryEmployeeEarningsEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object qryEmployeeEarningsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryEmployeeEarningsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryEmployeeEarningsEMPLOYEE_PERSONAL_EARNINGS: TAbmesFloatField
      FieldName = 'EMPLOYEE_PERSONAL_EARNINGS'
    end
    object qryEmployeeEarningsEMPLOYEE_TEAM_EARNINGS: TAbmesFloatField
      FieldName = 'EMPLOYEE_TEAM_EARNINGS'
    end
    object qryEmployeeEarningsEMPLOYEE_TOTAL_EARNINGS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'EMPLOYEE_TOTAL_EARNINGS'
      Calculated = True
    end
    object qryEmployeeEarningsEARNING_TYPE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'EARNING_TYPE'
      Calculated = True
    end
    object qryEmployeeEarningsEMPLOYEE_SETUP_HOURS: TAbmesFloatField
      FieldName = 'EMPLOYEE_SETUP_HOURS'
    end
    object qryEmployeeEarningsEMPLOYEE_NONWASTE_HOURS: TAbmesFloatField
      FieldName = 'EMPLOYEE_NONWASTE_HOURS'
    end
    object qryEmployeeEarningsEMPLOYEE_WASTE_HOURS: TAbmesFloatField
      FieldName = 'EMPLOYEE_WASTE_HOURS'
    end
    object qryEmployeeEarningsEMPLOYEE_TEAM_HOURS: TAbmesFloatField
      FieldName = 'EMPLOYEE_TEAM_HOURS'
    end
    object qryEmployeeEarningsEMPLOYEE_TOTAL_WORK_HOURS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'EMPLOYEE_TOTAL_WORK_HOURS'
      Calculated = True
    end
    object qryEmployeeEarningsEMPLOYEE_AVG_DAY_HOURS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'EMPLOYEE_AVG_DAY_HOURS'
      Calculated = True
    end
    object qryEmployeeEarningsEMPLOYEE_WORK_HOUR_DENSITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'EMPLOYEE_WORK_HOUR_DENSITY'
      Calculated = True
    end
    object qryEmployeeEarningsOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object qryEmployeeEarningsSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object qryEmployeeEarningsEMP_MAIN_SHIFT_WORKDAY_COUNT: TAbmesFloatField
      FieldName = 'EMP_MAIN_SHIFT_WORKDAY_COUNT'
    end
    object qryEmployeeEarningsEMP_MAIN_SHIFT_EFF_WORKHOURS: TAbmesFloatField
      FieldName = 'EMP_MAIN_SHIFT_EFF_WORKHOURS'
    end
  end
  object prvEarningModifiers: TDataSetProvider
    DataSet = qryEarningModifiers
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvEarningModifiersBeforeUpdateRecord
    Left = 176
    Top = 352
  end
  object qryEarningModifiers: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ea.EARNING_MODIFIER_CODE, '
      '  ea.BEGIN_DATE, '
      '  ea.END_DATE, '
      '  ea.LABOUR_COST_COEF,'
      '  ea.ORGANIZATION_COST_COEF'
      '  '
      'from'
      '  EARNING_MODIFIERS ea'
      '  '
      'where'
      '  ( (:BEGIN_DATE is null) or'
      '    (ea.END_DATE >= :BEGIN_DATE) ) and'
      '    '
      '  ( (:END_DATE is null) or'
      '    (ea.BEGIN_DATE <= :END_DATE) )'
      ''
      'order by'
      '  ea.BEGIN_DATE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EARNING_MODIFIERS_FOR_EDIT'
    Left = 176
    Top = 400
    object qryEarningModifiersEARNING_MODIFIER_CODE: TAbmesFloatField
      FieldName = 'EARNING_MODIFIER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEarningModifiersBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryEarningModifiersEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryEarningModifiersLABOUR_COST_COEF: TAbmesFloatField
      FieldName = 'LABOUR_COST_COEF'
      ProviderFlags = [pfInUpdate]
    end
    object qryEarningModifiersORGANIZATION_COST_COEF: TAbmesFloatField
      FieldName = 'ORGANIZATION_COST_COEF'
    end
  end
  object qryNewEarningModifierCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_EARNING_MODIFIERS.NextVal as NEW_EARNING_MODIFIER_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 448
    object qryNewEarningModifierCodeNEW_EARNING_MODIFIER_CODE: TAbmesFloatField
      FieldName = 'NEW_EARNING_MODIFIER_CODE'
    end
  end
  object qryGetMaxProffesionCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '  Max(PROFESSION_CODE) as MAX_PROFESSION_CODE'
      'from'
      '  PROFESSIONS')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 264
    Top = 336
    object qryGetMaxProffesionCodeMAX_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'MAX_PROFESSION_CODE'
    end
  end
  object qryEmployees: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  e.EMPLOYEE_CODE,'
      ''
      '  ( e.FIRST_NAME ||'
      '    Nvl2(e.MIDDLE_NAME,'
      '      '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '      '#39' '#39') ||'
      '    e.LAST_NAME'
      '  ) as EMPLOYEE_NAME,'
      ''
      '  e.ABBREV as EMPLOYEE_ABBREV,'
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
      '  EMPLOYEES e'
      ''
      
        '-- bez order by - ima DefaultOrder v servera za da ne misli v or' +
        'akala')
    SQLConnection = SQLConn
    Macros = <>
    DefaultOrder.Fields = 'EMPLOYEE_NAME'
    MacroParams = <>
    CustomParams = <>
    TableName = 'EMPLOYEES_FOR_EDIT'
    Left = 168
    Top = 192
    object qryEmployeesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmployeesEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object qryEmployeesEMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'EMPLOYEE_ABBREV'
      Size = 5
    end
    object qryEmployeesEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
      ProviderFlags = []
    end
  end
  object qryEmployee: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  -- narochno e predi e.* zashtoto inache poleto wzima stoinostt' +
        'a ot e.IS_EXTERNAL,'
      '  -- koiato e nevalidna (ne se poddyrja)'
      '  ( select'
      '      c.IS_EXTERNAL'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as IS_EXTERNAL,'
      ''
      '  e.*,'
      ''
      '  p.EGN,'
      '  p.IS_MALE,'
      '  p.EDUCATION_CODE,'
      ''
      '  ( select'
      '      edu.EDUCATION_NAME'
      '    from'
      '      EDUCATIONS edu'
      '    where'
      '      (edu.EDUCATION_CODE = p.EDUCATION_CODE)'
      '  ) as EDUCATION_NAME,'
      ''
      '  %HAS_DOC_ITEMS[e] as HAS_DOCUMENTATION,'
      ''
      '  (e.FIRST_NAME || '#39' '#39' || e.LAST_NAME) as EMPLOYEE_NAME,'
      '  d2.NAME as CURRENT_DEPT_NAME,'
      
        '  (dt2.DEPT_TYPE_ABBREV || d2.CUSTOM_CODE) as CURRENT_DEPT_IDENT' +
        'IFIER,'
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
      '  PERSONS p,'
      '  DEPTS d2,'
      '  DEPT_TYPES dt2'
      ''
      'where'
      '  (e.COMPANY_CODE = p.COMPANY_CODE) and'
      ''
      '  (e.CURRENT_DEPT_CODE = d2.DEPT_CODE(+)) and'
      '  (d2.DEPT_TYPE_CODE = dt2.DEPT_TYPE_CODE(+)) and'
      ''
      '  (e.EMPLOYEE_CODE = :EMPLOYEE_CODE)'
      ' ')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[e]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EMPLOYEES_FOR_EDIT'
    AfterProviderStartTransaction = qryEmployeeAfterProviderStartTransaction
    Left = 32
    Top = 48
    object qryEmployeeEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmployeeCURRENT_DEPT_CODE: TAbmesFloatField
      FieldName = 'CURRENT_DEPT_CODE'
    end
    object qryEmployeeCURRENT_DEPT_NAME: TAbmesWideStringField
      FieldName = 'CURRENT_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryEmployeeCURRENT_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CURRENT_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 45
    end
    object qryEmployeeDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryEmployeeDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryEmployeeEDUCATION_CODE: TAbmesFloatField
      FieldName = 'EDUCATION_CODE'
      ProviderFlags = []
    end
    object qryEmployeeFIRST_NAME: TAbmesWideStringField
      FieldName = 'FIRST_NAME'
      Size = 50
    end
    object qryEmployeeMIDDLE_NAME: TAbmesWideStringField
      FieldName = 'MIDDLE_NAME'
      Size = 50
    end
    object qryEmployeeLAST_NAME: TAbmesWideStringField
      FieldName = 'LAST_NAME'
      Size = 50
    end
    object qryEmployeeABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
      Size = 5
    end
    object qryEmployeeEGN: TAbmesWideStringField
      FieldName = 'EGN'
      ProviderFlags = []
      Size = 10
    end
    object qryEmployeeEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 41
    end
    object qryEmployeeCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
    object qryEmployeeIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object qryEmployeeEDUCATION_NAME: TAbmesWideStringField
      FieldName = 'EDUCATION_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryEmployeeIS_MALE: TAbmesFloatField
      FieldName = 'IS_MALE'
      ProviderFlags = []
    end
    object qryEmployeeIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object qryEmployeeHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object qryEmployeeEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
      ProviderFlags = []
    end
  end
  object qryOKIDUs: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  e.EMPLOYEE_CODE,'
      '  e.ABBREV,'
      '  e.FIRST_NAME,'
      '  e.LAST_NAME,'
      '  ( e.FIRST_NAME ||'
      '    Nvl2(e.MIDDLE_NAME,'
      '      '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '      '#39' '#39') ||'
      '    e.LAST_NAME'
      '  ) as EMPLOYEE_NAME'
      'from'
      '  EMPLOYEES e'
      'where'
      '  (exists ('
      '    select'
      '      1'
      '    from'
      '      EMPLOYEE_PROFESSIONS ep'
      '    where'
      '      (ep.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '      (ep.PROFESSION_CODE ='
      '        ( select'
      '            co.OKIDU_PROFESSION_CODE'
      '          from'
      '            COMMON_OPTIONS co'
      '          where'
      '            (co.CODE = 1)'
      '        )'
      '      )'
      '    )'
      '  )'
      'order by'
      '  e.FIRST_NAME,'
      '  e.LAST_NAME')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 520
    Top = 648
    object qryOKIDUsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOKIDUsFIRST_NAME: TAbmesWideStringField
      FieldName = 'FIRST_NAME'
      Size = 50
    end
    object qryOKIDUsLAST_NAME: TAbmesWideStringField
      FieldName = 'LAST_NAME'
      Size = 50
    end
    object qryOKIDUsABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
      Size = 5
    end
    object qryOKIDUsEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 41
    end
  end
  object prvOKIDUs: TDataSetProvider
    DataSet = qryOKIDUs
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 520
    Top = 600
  end
  object qryEmployeeDisciplineEvents: TAbmesSQLQuery
    DataSource = dsEmployee
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
      '  ede.EMPLOYEE_CODE,'
      '  ede.DISCIPLINE_EVENT_CODE,'
      '  ede.DISC_EVENT_TYPE_CODE,'
      '  det.NAME as DISC_EVENT_TYPE_NAME,'
      '  ede.DISCIPLINE_EVENT_STATE_CODE,'
      '  ede.DISCIPLINE_EVENT_COMMENT,'
      '  ede.DISCIPLINE_EVENT_DATE,'
      '  ede.AUTHORIZE_EMPLOYEE_CODE,'
      '  ede.DOC_BRANCH_CODE,'
      '  ede.DOC_CODE,'
      '  %HAS_DOC_ITEMS[ede] as HAS_DOC_ITEMS,'
      '  ede.CREATE_EMPLOYEE_CODE,'
      '  ede.CREATE_DATE,'
      '  ede.CREATE_TIME,'
      '  ede.STORNO_EMPLOYEE_CODE,'
      '  ede.STORNO_DATE,'
      '  ede.STORNO_TIME,'
      '  Nvl2(ede.STORNO_EMPLOYEE_CODE, 0, 1) as IS_NOT_STORNO,'
      '  ede.OLD_DISCIPLINE_EVENT_CODE,'
      ''
      '  (det.DISC_EVENT_TYPE_SIGN * detp.RATING) as RATING,'
      
        '  Decode(Sign(det.DISC_EVENT_TYPE_SIGN), -1, 1, 0) as IS_NEGATIV' +
        'E,'
      
        '  Decode(Sign(det.DISC_EVENT_TYPE_SIGN), 1, 1, 0) as IS_POSITIVE' +
        ','
      ''
      '  case'
      
        '    when (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_EVENT_' +
        'DATE-1,'
      
        '            detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_UNIT_CO' +
        'UNT) >= ContextDate) then 1'
      '  else'
      '    0'
      '  end as IS_ACTIVE,'
      ''
      '  0 as DIRECT_STORNO,'
      ''
      '  Nvl2(ede.STORNO_EMPLOYEE_CODE, 5,'
      '    Decode(ede.DISCIPLINE_EVENT_STATE_CODE,'
      '      1,'
      '      case'
      
        '        when (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_EV' +
        'ENT_DATE-1,'
      
        '                detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_UNI' +
        'T_COUNT) >= ContextDate) then 1'
      '      else'
      '        2'
      '      end,'
      '      ede.DISCIPLINE_EVENT_STATE_CODE + 1'
      '    )'
      '  ) as STATUS_CODE,'
      ''
      
        '  Decode(ede.DISCIPLINE_EVENT_STATE_CODE, 1, 1, 0) as IS_IN_NORM' +
        'AL_STATE,'
      ''
      '  detp.ACTIVE_DATE_UNIT_CODE,'
      '  detp.ACTIVE_DATE_UNIT_COUNT,'
      '  det.COLOR,'
      '  det.BACKGROUND_COLOR'
      ''
      'from'
      '  EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '  DISC_EVENT_TYPES det,'
      '  DISC_EVENT_TYPE_PERIODS detp'
      ''
      'where'
      '  (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE) and'
      '  (ede.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE(+)) and'
      
        '  (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE(+) and detp' +
        '.END_DATE(+)) and'
      '  (ede.EMPLOYEE_CODE = :EMPLOYEE_CODE)'
      ''
      'order by'
      '  STATUS_CODE,'
      '  ede.DISCIPLINE_EVENT_DATE,'
      '  ede.DISCIPLINE_EVENT_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[ede]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EMP_DISCIPLINE_EVENTS_FOR_EDIT'
    Left = 192
    Top = 48
    object qryEmployeeDisciplineEventsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmployeeDisciplineEventsDISCIPLINE_EVENT_CODE: TAbmesFloatField
      FieldName = 'DISCIPLINE_EVENT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmployeeDisciplineEventsDISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_CODE'
    end
    object qryEmployeeDisciplineEventsDISCIPLINE_EVENT_STATE_CODE: TAbmesFloatField
      FieldName = 'DISCIPLINE_EVENT_STATE_CODE'
    end
    object qryEmployeeDisciplineEventsDISCIPLINE_EVENT_COMMENT: TAbmesWideStringField
      FieldName = 'DISCIPLINE_EVENT_COMMENT'
      Size = 100
    end
    object qryEmployeeDisciplineEventsDISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'DISCIPLINE_EVENT_DATE'
    end
    object qryEmployeeDisciplineEventsRATING: TAbmesFloatField
      FieldName = 'RATING'
      ProviderFlags = []
    end
    object qryEmployeeDisciplineEventsIS_NEGATIVE: TAbmesFloatField
      FieldName = 'IS_NEGATIVE'
      ProviderFlags = []
    end
    object qryEmployeeDisciplineEventsIS_POSITIVE: TAbmesFloatField
      FieldName = 'IS_POSITIVE'
      ProviderFlags = []
    end
    object qryEmployeeDisciplineEventsIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      ProviderFlags = []
    end
    object qryEmployeeDisciplineEventsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object qryEmployeeDisciplineEventsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryEmployeeDisciplineEventsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryEmployeeDisciplineEventsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryEmployeeDisciplineEventsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryEmployeeDisciplineEventsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryEmployeeDisciplineEventsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryEmployeeDisciplineEventsSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object qryEmployeeDisciplineEventsSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object qryEmployeeDisciplineEventsSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
    object qryEmployeeDisciplineEventsIS_NOT_STORNO: TAbmesFloatField
      FieldName = 'IS_NOT_STORNO'
      ProviderFlags = []
    end
    object qryEmployeeDisciplineEventsOLD_DISCIPLINE_EVENT_CODE: TAbmesFloatField
      FieldName = 'OLD_DISCIPLINE_EVENT_CODE'
    end
    object qryEmployeeDisciplineEventsDIRECT_STORNO: TAbmesFloatField
      FieldName = 'DIRECT_STORNO'
      ProviderFlags = []
    end
    object qryEmployeeDisciplineEventsSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
      ProviderFlags = []
    end
    object qryEmployeeDisciplineEventsIS_IN_NORMAL_STATE: TAbmesFloatField
      FieldName = 'IS_IN_NORMAL_STATE'
      ProviderFlags = []
    end
    object qryEmployeeDisciplineEventsDISC_EVENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DISC_EVENT_TYPE_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryEmployeeDisciplineEventsACTIVE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'ACTIVE_DATE_UNIT_CODE'
      ProviderFlags = []
    end
    object qryEmployeeDisciplineEventsACTIVE_DATE_UNIT_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DATE_UNIT_COUNT'
      ProviderFlags = []
    end
    object qryEmployeeDisciplineEventsCOLOR: TAbmesFloatField
      FieldName = 'COLOR'
      ProviderFlags = []
    end
    object qryEmployeeDisciplineEventsBACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'BACKGROUND_COLOR'
      ProviderFlags = []
    end
  end
  object dsEmployee: TDataSource
    DataSet = qryEmployee
    Left = 32
    Top = 96
  end
  object qryGetMaxEmployeeDisciplineEventCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(ede.DISCIPLINE_EVENT_CODE) as MAX_DISCIPLINE_EVENT_CODE'
      'from'
      '  EMPLOYEE_DISCIPLINE_EVENTS ede'
      'where'
      '  (ede.EMPLOYEE_CODE = :EMPLOYEE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 192
    Top = 96
    object qryGetMaxEmployeeDisciplineEventCodeMAX_DISCIPLINE_EVENT_CODE: TAbmesFloatField
      FieldName = 'MAX_DISCIPLINE_EVENT_CODE'
    end
  end
  object prvOccupationsAndEmployeesMaster: TDataSetProvider
    DataSet = qryOccupationsAndEmployeesMaster
    UpdateMode = upWhereKeyOnly
    Left = 624
    Top = 304
  end
  object qryOccupationsAndEmployeesMaster: TAbmesSQLQuery
    BeforeOpen = qryOccupationsAndEmployeesMasterBeforeOpen
    AfterClose = qryOccupationsAndEmployeesMasterAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OCCUPATION_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OCCUPATION_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OCCUPATION_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OCCUPATION_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OCCUPATION_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OCCUPATION_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OCCUPATION_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OCCUPATION_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OCCUPATION_DAY_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OCCUPATION_DAY_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OCCUPATION_DAY_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OCCUPATION_DAY_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_ASSIGNMENT_DAY_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_ASSIGNMENT_DAY_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_ASSIGNMENT_DAY_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_ASSIGNMENT_DAY_DIFF'
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
        Name = 'EMPLOYEE_EGN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_EGN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_EMPLOYEE_AGE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_EMPLOYEE_AGE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_EMPLOYEE_AGE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_EMPLOYEE_AGE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_MALE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_MALE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EMPLOYEE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EMPLOYEE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EMPLOYEE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EMPLOYEE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EDUCATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EDUCATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_ACTIVE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_OCCUPIED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_MAIN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_MAIN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_PHASE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_PHASE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROFESSIONS_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROFESSIONS_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_NEGATIVE_DISCIPLINE_EVENTS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_NEGATIVE_DISCIPLINE_EVENTS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_POSITIVE_DISCIPLINE_EVENTS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_POSITIVE_DISCIPLINE_EVENTS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OE_REGIME_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OE_REGIME_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_PRC_ACTIONS_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_PRC_ACTIONS_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_FUNC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_KNOWL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_BASE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_BASE_ACTION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_ACTION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  o.OCCUPATION_CODE,'
      '  o.OCCUPATION_NAME,'
      ''
      '  o.DOC_BRANCH_CODE as OCCUPATION_DOC_BRANCH_CODE,'
      '  o.DOC_CODE as OCCUPATION_DOC_CODE,'
      '  %HAS_DOC_ITEMS[o] as OCCUPATION_HAS_DOC,'
      ''
      '  o.OCCUPATION_LEVEL,'
      ''
      '  ( select'
      '      os.SHIFT_CODE'
      '    from'
      '      OCCUPATION_SHIFTS os'
      '    where'
      '      (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      (:STATUS_DATE between os.BEGIN_DATE and os.END_DATE)'
      '  ) as SHIFT_CODE,'
      ''
      '  ( select'
      '      s.SHIFT_ABBREV'
      '    from'
      '      SHIFTS s'
      '    where'
      '      (s.SHIFT_CODE ='
      '        ( select'
      '            os.SHIFT_CODE'
      '          from'
      '            OCCUPATION_SHIFTS os'
      '          where'
      '            (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '            (:STATUS_DATE between os.BEGIN_DATE and os.END_DATE)'
      '        )'
      '      )'
      '  ) as SHIFT_IDENTIFIER,'
      ''
      '  ( case'
      
        '      when (:STATUS_DATE between o.OCCUPATION_BEGIN_DATE and o.O' +
        'CCUPATION_END_DATE) then 1'
      '    else'
      '      0'
      '    end'
      '  ) as IS_ACTIVE,'
      ''
      '  Nvl2(oe.EMPLOYEE_CODE, 1, 0) as IS_OCCUPIED,'
      ''
      '  e.EMPLOYEE_CODE,'
      '  ( select'
      '     c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as COMPANY_NO,'
      ''
      '  Nvl2(oe.EMPLOYEE_CODE,'
      
        '    (e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39' ' +
        '|| e.LAST_NAME),'
      '    null'
      '  ) as EMPLOYEE_NAME,'
      ''
      '  e.DOC_BRANCH_CODE as EMPLOYEE_DOC_BRANCH_CODE,'
      '  e.DOC_CODE as EMPLOYEE_DOC_CODE,'
      '  %HAS_DOC_ITEMS[e] as EMPLOYEE_HAS_DOC,'
      ''
      
        '  Trunc(Months_Between(:STATUS_DATE, per.BIRTH_DATE)/12) as EMPL' +
        'OYEE_AGE_YEARS,'
      '  per.EGN as EMPLOYEE_EGN,'
      ''
      '  ( select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = o.DEPT_CODE)'
      '  ) as DEPT_IDENTIFIER,'
      ''
      
        '  (o.OCCUPATION_END_DATE - Cast(:STATUS_DATE as Date)) as DAY_DI' +
        'FF,'
      ''
      '  NullIf('
      '    ( select'
      '        /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '        Sum(det.DISC_EVENT_TYPE_SIGN * detp.RATING)'
      '      from'
      '        EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '        DISC_EVENT_TYPES det,'
      '        DISC_EVENT_TYPE_PERIODS detp'
      '      where'
      '        (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '        (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE) an' +
        'd'
      
        '        (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE) a' +
        'nd'
      '        (ede.STORNO_EMPLOYEE_CODE is null) and'
      '        (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      '        (det.DISC_EVENT_TYPE_SIGN < 0) and'
      
        '        (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE and d' +
        'etp.END_DATE) and'
      
        '        (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_EVENT_D' +
        'ATE-1, detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_UNIT_COUNT) ' +
        '>= ContextDate)'
      '    ),'
      '    0'
      '  ) as EMP_NEGATIVE_DISCIPLINE_RATING,'
      ''
      '  NullIf('
      '    ( select'
      '        /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '        Sum(det.DISC_EVENT_TYPE_SIGN * detp.RATING)'
      '      from'
      '        EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '        DISC_EVENT_TYPES det,'
      '        DISC_EVENT_TYPE_PERIODS detp'
      '      where'
      '        (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '        (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE) an' +
        'd'
      
        '        (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE) a' +
        'nd'
      '        (ede.STORNO_EMPLOYEE_CODE is null) and'
      '        (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      '        (det.DISC_EVENT_TYPE_SIGN > 0) and'
      
        '        (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE and d' +
        'etp.END_DATE) and'
      
        '        (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_EVENT_D' +
        'ATE-1, detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_UNIT_COUNT) ' +
        '>= ContextDate)'
      '    ),'
      '    0'
      '  ) as EMP_POSITIVE_DISCIPLINE_RATING,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      OCCUPATION_EMP_PROFESSIONS oep'
      '    where'
      
        '      (oep.OCCUPATION_EMPLOYEE_CODE = oe.OCCUPATION_EMPLOYEE_COD' +
        'E)'
      '  ) as EMPLOYEE_OCCUPATION_PROF_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      OCCUPATION_PROFESSIONS op'
      '    where'
      '      (op.OCCUPATION_CODE = o.OCCUPATION_CODE)'
      '  ) as OCCUPATION_PROFESSION_COUNT,'
      ''
      
        '  %OE_MASTERED_PRC_ACTIONS_COUNT[oe~:STATUS_DATE] as OE_MASTERED' +
        '_PRC_ACTIONS_COUNT,'
      '  %OCC_PRC_ACTIONS_COUNT[o] as OCC_PRC_ACTIONS_COUNT,'
      ''
      '  ( select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = e.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = e.DOC_CODE)'
      '  ) as E_DOC_EMPTINESS_REQ_CODE,'
      ''
      '  ( select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = e.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = e.DOC_CODE)'
      '  ) as E_DOC_IS_COMPLETE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = e.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = e.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as E_ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = e.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = e.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.AUTHORIZE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as E_UNAUTHORIZED_ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = e.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = e.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as E_UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = o.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = o.DOC_CODE)'
      '  ) as O_DOC_EMPTINESS_REQ_CODE,'
      ''
      '  ( select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = o.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = o.DOC_CODE)'
      '  ) as O_DOC_IS_COMPLETE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = o.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = o.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as O_ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = o.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = o.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.AUTHORIZE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as O_UNAUTHORIZED_ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = o.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = o.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as O_UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      ''
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC,'
      ''
      '  ( select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = p.DOC_CODE)'
      '  ) as P_DOC_EMPTINESS_REQ_CODE,'
      ''
      '  ( select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = p.DOC_CODE)'
      '  ) as P_DOC_IS_COMPLETE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = p.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as P_ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = p.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.AUTHORIZE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as P_UNAUTHORIZED_ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = p.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = p.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as P_UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  o.IS_MAIN as OCCUPATION_IS_MAIN,'
      '  o.OCCUPATION_PHASE_CODE,'
      ''
      '  ( select'
      
        '      (op.OCCUPATION_PHASE_CODE || '#39' - '#39' || op.OCCUPATION_PHASE_' +
        'NAME)'
      '    from'
      '      OCCUPATION_PHASES op'
      '    where'
      '      (op.OCCUPATION_PHASE_CODE = o.OCCUPATION_PHASE_CODE)'
      '  ) as OCCUPATION_PHASE,'
      ''
      
        '  (oe.ASSIGNMENT_END_DATE - Cast(:STATUS_DATE as Date)) as ASSIG' +
        'NMENT_DAY_DIFF,'
      ''
      '  oe.OE_REGIME_CODE,'
      '  e.COMPANY_CODE as EMPLOYEE_COMPANY_CODE,'
      ''
      '  ( select'
      '      oer.OE_REGIME_NAME'
      '    from'
      '      OCCUPATION_EMPLOYEE_REGIMES oer'
      '    where'
      '      (oer.OE_REGIME_CODE = oe.OE_REGIME_CODE)'
      '  ) as OE_REGIME_NAME,'
      ''
      '  ( select'
      '      osa.BASE_SALARY'
      '    from'
      '      OCCUPATION_SALARIES osa'
      '    where'
      '      (osa.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      (:STATUS_DATE between osa.BEGIN_DATE and osa.END_DATE)'
      '  ) as BASE_SALARY,'
      ''
      '  ( select'
      '      ( select'
      '          tdu.THE_DATE_UNIT_NAME'
      '        from'
      '          THE_DATE_UNITS tdu'
      '        where'
      '          (tdu.THE_DATE_UNIT_CODE = osa.DATE_UNIT_CODE)'
      '      ) as BASE_SALARY_DATE_UNIT_NAME'
      '    from'
      '      OCCUPATION_SALARIES osa'
      '    where'
      '      (osa.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      (:STATUS_DATE between osa.BEGIN_DATE and osa.END_DATE)'
      '  ) as BASE_SALARY_DATE_UNIT_NAME,'
      ''
      '  ( select'
      '      osa.MIN_SALARY_RATIO_COEF'
      '    from'
      '      OCCUPATION_SALARIES osa'
      '    where'
      '      (osa.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      (:STATUS_DATE between osa.BEGIN_DATE and osa.END_DATE)'
      '  ) as MIN_SALARY_RATIO_COEF,'
      ''
      '  ( select'
      '      osa.MAX_SALARY_RATIO_COEF'
      '    from'
      '      OCCUPATION_SALARIES osa'
      '    where'
      '      (osa.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      (:STATUS_DATE between osa.BEGIN_DATE and osa.END_DATE)'
      '  ) as MAX_SALARY_RATIO_COEF,'
      ''
      '  oe.SALARY,'
      ''
      '  ( select'
      '      tdu.THE_DATE_UNIT_NAME'
      '    from'
      '      THE_DATE_UNITS tdu'
      '    where'
      '      (tdu.THE_DATE_UNIT_CODE = oe.SALARY_DATE_UNIT_CODE)'
      '  ) as SALARY_DATE_UNIT_NAME,'
      ''
      '  Cast(:STATUS_DATE as Date) as STATUS_DATE'
      ''
      'from'
      '  OCCUPATIONS o,'
      '  PRODUCTS p,'
      '  OCCUPATION_EMPLOYEES oe,'
      '  EMPLOYEES e,'
      '  COMPANIES c,'
      '  PERSONS per'
      ''
      'where'
      '  (o.PRODUCT_CODE = p.PRODUCT_CODE(+)) and'
      ''
      '  (o.OCCUPATION_CODE = oe.OCCUPATION_CODE(+)) and'
      
        '  (:STATUS_DATE between oe.ASSIGNMENT_BEGIN_DATE(+) and oe.ASSIG' +
        'NMENT_END_DATE(+))and'
      ''
      '  (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE(+)) and'
      ''
      '  (e.COMPANY_CODE = c.COMPANY_CODE(+)) and'
      ''
      '  (e.COMPANY_CODE = per.COMPANY_CODE(+)) and'
      ''
      '  ( (:BEGIN_OCCUPATION_LEVEL is null) or'
      '    (o.OCCUPATION_LEVEL >= :BEGIN_OCCUPATION_LEVEL)'
      '  ) and'
      ''
      '  ( (:END_OCCUPATION_LEVEL is null) or'
      '    (o.OCCUPATION_LEVEL <= :END_OCCUPATION_LEVEL)'
      '  ) and'
      ''
      '  ( (:OCCUPATION_BEGIN_DATE is null) or'
      '    (o.OCCUPATION_BEGIN_DATE >= :OCCUPATION_BEGIN_DATE)'
      '  ) and'
      ''
      '  ( (:OCCUPATION_END_DATE is null) or'
      '    (o.OCCUPATION_BEGIN_DATE <= :OCCUPATION_END_DATE)'
      '  ) and'
      ''
      '  ( (:MIN_OCCUPATION_DAY_DIFF is null) or'
      
        '    ((o.OCCUPATION_END_DATE - Cast(:STATUS_DATE as Date)) >= :MI' +
        'N_OCCUPATION_DAY_DIFF)'
      '  ) and'
      ''
      '  ( (:MAX_OCCUPATION_DAY_DIFF is null) or'
      
        '    ((o.OCCUPATION_END_DATE - Cast(:STATUS_DATE as Date)) <= :MI' +
        'N_OCCUPATION_DAY_DIFF)'
      '  ) and'
      ''
      '  ( (:MIN_ASSIGNMENT_DAY_DIFF is null) or'
      
        '    ((oe.ASSIGNMENT_END_DATE - Cast(:STATUS_DATE as Date)) >= :M' +
        'IN_ASSIGNMENT_DAY_DIFF)'
      '  ) and'
      ''
      '  ( (:MAX_ASSIGNMENT_DAY_DIFF is null) or'
      
        '    ((oe.ASSIGNMENT_END_DATE - Cast(:STATUS_DATE as Date)) <= :M' +
        'AX_ASSIGNMENT_DAY_DIFF)'
      '  ) and'
      ''
      '  ( (:EMPLOYEE_CODE is null) or'
      '    (oe.EMPLOYEE_CODE = :EMPLOYEE_CODE)'
      '  ) and'
      ''
      '  ( (:EMPLOYEE_EGN is null) or'
      '    (per.EGN = :EMPLOYEE_EGN)'
      '  ) and'
      ''
      '  ( (:MIN_EMPLOYEE_AGE is null) or'
      
        '    (Trunc(Months_Between(:STATUS_DATE, per.BIRTH_DATE)/12) >= :' +
        'MIN_EMPLOYEE_AGE)'
      '  ) and'
      ''
      '  ( (:MAX_EMPLOYEE_AGE is null) or'
      
        '    (Trunc(Months_Between(:STATUS_DATE, per.BIRTH_DATE)/12) <= :' +
        'MAX_EMPLOYEE_AGE)'
      '  ) and'
      ''
      '  ( (:EMPLOYEE_MALE is null) or'
      '    (per.IS_MALE = :EMPLOYEE_MALE)'
      '  ) and'
      ''
      '  ( (:EMPLOYEE_BEGIN_DATE is null) or'
      '    (oe.ASSIGNMENT_BEGIN_DATE is null) or'
      '    (oe.ASSIGNMENT_BEGIN_DATE >= :EMPLOYEE_BEGIN_DATE)'
      '  ) and'
      ''
      '  ( (:EMPLOYEE_END_DATE is null) or'
      '    (oe.ASSIGNMENT_BEGIN_DATE is null) or'
      '    (oe.ASSIGNMENT_BEGIN_DATE <= :EMPLOYEE_END_DATE)'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '        where'
      '          (tfd.DEPT_CODE = o.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:SHIFT_CODE is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        OCCUPATION_SHIFTS os'
      '      where'
      '        (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '        (:STATUS_DATE between os.BEGIN_DATE and os.END_DATE) and'
      '        (os.SHIFT_CODE = :SHIFT_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:WORK_DEPT_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          OCCUPATION_WORK_DEPTS owd'
      '        where'
      '          (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '          (owd.DEPT_CODE = :WORK_DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:OCCUPATION_PROFESSION_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          OCCUPATION_PROFESSIONS op'
      '        where'
      '          (op.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      ''
      '          ( (:OCCUPATION_PROFESSION_CODE is null) or'
      '            (op.PROFESSION_CODE = :OCCUPATION_PROFESSION_CODE)'
      '          )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:EMPLOYEE_PROFESSION_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          EMPLOYEE_PROFESSIONS ep'
      '        where'
      '          (ep.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '          (ep.PROFESSION_CODE = :EMPLOYEE_PROFESSION_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:OCCUPATION_EMPLOYEE_PROFESSION_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          OCCUPATION_EMP_PROFESSIONS oep'
      '        where'
      
        '          (oep.OCCUPATION_EMPLOYEE_CODE = oe.OCCUPATION_EMPLOYEE' +
        '_CODE) and'
      ''
      '          ( (:OCCUPATION_EMPLOYEE_PROFESSION_CODE is null) or'
      
        '            (oep.PROFESSION_CODE = :OCCUPATION_EMPLOYEE_PROFESSI' +
        'ON_CODE)'
      '          )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:EDUCATION_CODE is null) or'
      '    (per.EDUCATION_CODE = :EDUCATION_CODE)'
      '  ) and'
      ''
      '  ( ( (:IS_ACTIVE = 1) and'
      
        '      (:STATUS_DATE between o.OCCUPATION_BEGIN_DATE and o.OCCUPA' +
        'TION_END_DATE)'
      '    ) or'
      '    ( (:IS_NOT_ACTIVE = 1) and'
      
        '      not (:STATUS_DATE between o.OCCUPATION_BEGIN_DATE and o.OC' +
        'CUPATION_END_DATE)'
      '    )'
      '  ) and'
      ''
      '  ( ( (:IS_OCCUPIED = 1) and'
      '      (oe.EMPLOYEE_CODE is not null)'
      '    ) or'
      '    ( (:IS_NOT_OCCUPIED = 1) and'
      '      (oe.EMPLOYEE_CODE is null)'
      '    )'
      '  ) and'
      ''
      '  ( (:IS_MAIN is null) or'
      '    (o.IS_MAIN = :IS_MAIN)'
      '  ) and'
      ''
      '  ( (:OCCUPATION_PHASE_CODE is null) or'
      '    (o.OCCUPATION_PHASE_CODE = :OCCUPATION_PHASE_CODE)'
      '  ) and'
      ''
      '  ( (:PROFESSIONS_STATUS is null) or'
      '    ( (oe.EMPLOYEE_CODE is not null) and'
      '      ( Sign('
      
        '          Greatest(%OCC_PROFESSIONS_COUNT[o], 1) -   -- za da mo' +
        've ako nqma procesni roli da go broim za neadekwatno'
      '          ( select'
      '              Count(*)'
      '            from'
      '              OCCUPATION_EMP_PROFESSIONS oep'
      '            where'
      
        '              (oep.OCCUPATION_EMPLOYEE_CODE = oe.OCCUPATION_EMPL' +
        'OYEE_CODE)'
      '          )'
      '        ) <> :PROFESSIONS_STATUS'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( ( (:HAS_NEGATIVE_DISCIPLINE_EVENTS = 1) and'
      '      (exists'
      '        ( select'
      '            /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '            1'
      '          from'
      '            EMPLOYEE_DISCIPLINE_EVENTS ede'
      '          where'
      '            (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (ede.STORNO_EMPLOYEE_CODE is null) and'
      '            (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  DISC_EVENT_TYPES det'
      '                where'
      
        '                  (det.DISC_EVENT_TYPE_CODE = ede.DISC_EVENT_TYP' +
        'E_CODE) and'
      '                  (det.DISC_EVENT_TYPE_SIGN < 0)'
      '              )'
      '            )'
      '        )'
      '      )'
      '    ) or'
      '    ( (:HAS_NOT_NEGATIVE_DISCIPLINE_EVENTS = 1) and'
      '      (not exists'
      '        ( select'
      '            /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '            1'
      '          from'
      '            EMPLOYEE_DISCIPLINE_EVENTS ede'
      '          where'
      '            (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (ede.STORNO_EMPLOYEE_CODE is null) and'
      '            (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  DISC_EVENT_TYPES det'
      '                where'
      
        '                  (det.DISC_EVENT_TYPE_CODE = ede.DISC_EVENT_TYP' +
        'E_CODE) and'
      '                  (det.DISC_EVENT_TYPE_SIGN < 0)'
      '              )'
      '            )'
      '        )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( ( (:HAS_POSITIVE_DISCIPLINE_EVENTS = 1) and'
      '      (exists'
      '        ( select'
      '            /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '            1'
      '          from'
      '            EMPLOYEE_DISCIPLINE_EVENTS ede'
      '          where'
      '            (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (ede.STORNO_EMPLOYEE_CODE is null) and'
      '            (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  DISC_EVENT_TYPES det'
      '                where'
      
        '                  (det.DISC_EVENT_TYPE_CODE = ede.DISC_EVENT_TYP' +
        'E_CODE) and'
      '                  (det.DISC_EVENT_TYPE_SIGN > 0)'
      '              )'
      '            )'
      '        )'
      '      )'
      '    ) or'
      '    ( (:HAS_NOT_POSITIVE_DISCIPLINE_EVENTS = 1) and'
      '      (not exists'
      '        ( select'
      '            /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '            1'
      '          from'
      '            EMPLOYEE_DISCIPLINE_EVENTS ede'
      '          where'
      '            (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (ede.STORNO_EMPLOYEE_CODE is null) and'
      '            (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  DISC_EVENT_TYPES det'
      '                where'
      
        '                  (det.DISC_EVENT_TYPE_CODE = ede.DISC_EVENT_TYP' +
        'E_CODE) and'
      '                  (det.DISC_EVENT_TYPE_SIGN > 0)'
      '              )'
      '            )'
      '        )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = o.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:CRAFT_TYPE_CODE is null) or'
      '    (:CRAFT_TYPE_CODE ='
      '      ( select'
      '          cr.CRAFT_TYPE_CODE'
      '        from'
      '          CRAFTS cr'
      '        where'
      '          (cr.CRAFT_CODE = o.CRAFT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:CRAFT_CODE is null) or'
      '    (:CRAFT_CODE = o.CRAFT_CODE) ) and'
      ''
      '  ( (:OE_REGIME_CODE is null) or'
      '    (:OE_REGIME_CODE = oe.OE_REGIME_CODE) ) and'
      ''
      '  ( (:IS_EXTERNAL_CODE is null) or'
      '    (:IS_EXTERNAL_CODE = 0) or'
      ''
      '    ( (:IS_EXTERNAL_CODE = 1) and'
      '      (c.IS_EXTERNAL = 0) ) or'
      ''
      '    ( (:IS_EXTERNAL_CODE = 2) and'
      '      (c.IS_EXTERNAL = 1) )'
      '  ) and'
      ''
      '  ( (:OCC_PRC_ACTIONS_STATUS is null) or'
      '    ( (oe.OCCUPATION_EMPLOYEE_CODE is not null) and'
      '      ( Sign('
      
        '          Greatest(%OCC_PRC_ACTIONS_COUNT[o], 1) -   -- za da mo' +
        've ako nqma procesi da go broim za neadekwatno'
      '          %OE_MASTERED_PRC_ACTIONS_COUNT[oe~:STATUS_DATE]'
      '        ) = :OCC_PRC_ACTIONS_STATUS'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:SYS_ROLE_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          OCCUPATION_SYS_ROLES osr'
      '        where'
      '          (osr.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '          (osr.SYS_ROLE_CODE = :SYS_ROLE_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  -- procesen obhwat'
      '  %PRC_DATA_FILTER['
      '    OCC~'
      '    OCCUPATION_CODE~'
      '    o.OCCUPATION_CODE~'
      '    :PRC_FUNC_CODE~'
      '    :PRC_KNOWL_CODE~'
      '    :PRC_BASE_OP_CODE~'
      '    :PRC_BASE_ACTION_CODE~'
      '    :PRC_CONCRETE_OP_CODE~'
      '    :PRC_CONCRETE_ACTION_CODE] and'
      ''
      '  -- za da se wijdat parametrite'
      '  (:PRC_FUNC_CODE * null is null) and'
      '  (:PRC_KNOWL_CODE * null is null) and'
      '  (:PRC_BASE_OP_CODE * null is null) and'
      '  (:PRC_BASE_ACTION_CODE * null is null) and'
      '  (:PRC_CONCRETE_OP_CODE * null is null) and'
      '  (:PRC_CONCRETE_ACTION_CODE * null is null)'
      ''
      'order by'
      '  IS_ACTIVE,'
      '  IS_OCCUPIED,'
      '  OCCUPATION_NAME,'
      '  OCCUPATION_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[o]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'OE_MASTERED_PRC_ACTIONS_COUNT[oe~:STATUS_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'OCC_PRC_ACTIONS_COUNT[o]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'OCC_PROFESSIONS_COUNT[o]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'PRC_DATA_FILTER['#13#10'    OCC~'#13#10'    OCCUPATION_CODE~'#13#10'    o.OCCUPATI' +
          'ON_CODE~'#13#10'    :PRC_FUNC_CODE~'#13#10'    :PRC_KNOWL_CODE~'#13#10'    :PRC_BA' +
          'SE_OP_CODE~'#13#10'    :PRC_BASE_ACTION_CODE~'#13#10'    :PRC_CONCRETE_OP_CO' +
          'DE~'#13#10'    :PRC_CONCRETE_ACTION_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    Left = 624
    Top = 352
    object qryOccupationsAndEmployeesMasterOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object qryOccupationsAndEmployeesMasterOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object qryOccupationsAndEmployeesMasterOCCUPATION_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DOC_BRANCH_CODE'
    end
    object qryOccupationsAndEmployeesMasterOCCUPATION_DOC_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DOC_CODE'
    end
    object qryOccupationsAndEmployeesMasterOCCUPATION_HAS_DOC: TAbmesFloatField
      FieldName = 'OCCUPATION_HAS_DOC'
    end
    object qryOccupationsAndEmployeesMasterOCCUPATION_LEVEL: TAbmesFloatField
      FieldName = 'OCCUPATION_LEVEL'
    end
    object qryOccupationsAndEmployeesMasterSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object qryOccupationsAndEmployeesMasterSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object qryOccupationsAndEmployeesMasterIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      FieldValueType = fvtBoolean
    end
    object qryOccupationsAndEmployeesMasterIS_OCCUPIED: TAbmesFloatField
      FieldName = 'IS_OCCUPIED'
      FieldValueType = fvtBoolean
    end
    object qryOccupationsAndEmployeesMasterEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryOccupationsAndEmployeesMasterEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object qryOccupationsAndEmployeesMasterEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_BRANCH_CODE'
    end
    object qryOccupationsAndEmployeesMasterEMPLOYEE_DOC_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_CODE'
    end
    object qryOccupationsAndEmployeesMasterEMPLOYEE_HAS_DOC: TAbmesFloatField
      FieldName = 'EMPLOYEE_HAS_DOC'
    end
    object qryOccupationsAndEmployeesMasterEMPLOYEE_AGE_YEARS: TAbmesFloatField
      FieldName = 'EMPLOYEE_AGE_YEARS'
    end
    object qryOccupationsAndEmployeesMasterEMPLOYEE_EGN: TAbmesWideStringField
      FieldName = 'EMPLOYEE_EGN'
      Size = 10
    end
    object qryOccupationsAndEmployeesMasterDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryOccupationsAndEmployeesMasterDAY_DIFF: TAbmesFloatField
      FieldName = 'DAY_DIFF'
    end
    object qryOccupationsAndEmployeesMasterEMP_NEGATIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'EMP_NEGATIVE_DISCIPLINE_RATING'
    end
    object qryOccupationsAndEmployeesMasterEMP_POSITIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'EMP_POSITIVE_DISCIPLINE_RATING'
    end
    object qryOccupationsAndEmployeesMasterEMPLOYEE_OCCUPATION_PROF_COUNT: TAbmesFloatField
      FieldName = 'EMPLOYEE_OCCUPATION_PROF_COUNT'
    end
    object qryOccupationsAndEmployeesMasterOCCUPATION_PROFESSION_COUNT: TAbmesFloatField
      FieldName = 'OCCUPATION_PROFESSION_COUNT'
    end
    object qryOccupationsAndEmployeesMasterE_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField
      FieldName = 'E_DOC_EMPTINESS_REQ_CODE'
    end
    object qryOccupationsAndEmployeesMasterE_DOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'E_DOC_IS_COMPLETE'
    end
    object qryOccupationsAndEmployeesMasterE_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'E_ACTIVE_DI_COUNT'
    end
    object qryOccupationsAndEmployeesMasterE_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'E_UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object qryOccupationsAndEmployeesMasterE_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'E_UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryOccupationsAndEmployeesMasterO_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField
      FieldName = 'O_DOC_EMPTINESS_REQ_CODE'
    end
    object qryOccupationsAndEmployeesMasterO_DOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'O_DOC_IS_COMPLETE'
    end
    object qryOccupationsAndEmployeesMasterO_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'O_ACTIVE_DI_COUNT'
    end
    object qryOccupationsAndEmployeesMasterO_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'O_UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object qryOccupationsAndEmployeesMasterO_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'O_UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryOccupationsAndEmployeesMasterOCCUPATION_IS_MAIN: TAbmesFloatField
      FieldName = 'OCCUPATION_IS_MAIN'
    end
    object qryOccupationsAndEmployeesMasterOCCUPATION_PHASE: TAbmesWideStringField
      FieldName = 'OCCUPATION_PHASE'
      Size = 93
    end
    object qryOccupationsAndEmployeesMasterASSIGNMENT_DAY_DIFF: TAbmesFloatField
      FieldName = 'ASSIGNMENT_DAY_DIFF'
    end
    object qryOccupationsAndEmployeesMasterOCCUPATION_PHASE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_PHASE_CODE'
    end
    object qryOccupationsAndEmployeesMasterEMPLOYEE_COMPANY_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_COMPANY_CODE'
    end
    object qryOccupationsAndEmployeesMasterPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryOccupationsAndEmployeesMasterPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryOccupationsAndEmployeesMasterPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryOccupationsAndEmployeesMasterPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryOccupationsAndEmployeesMasterPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryOccupationsAndEmployeesMasterPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
    end
    object qryOccupationsAndEmployeesMasterP_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField
      FieldName = 'P_DOC_EMPTINESS_REQ_CODE'
    end
    object qryOccupationsAndEmployeesMasterP_DOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'P_DOC_IS_COMPLETE'
    end
    object qryOccupationsAndEmployeesMasterP_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'P_ACTIVE_DI_COUNT'
    end
    object qryOccupationsAndEmployeesMasterP_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'P_UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object qryOccupationsAndEmployeesMasterP_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'P_UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryOccupationsAndEmployeesMasterOE_REGIME_NAME: TAbmesWideStringField
      FieldName = 'OE_REGIME_NAME'
    end
    object qryOccupationsAndEmployeesMasterOE_REGIME_CODE: TAbmesFloatField
      FieldName = 'OE_REGIME_CODE'
    end
    object qryOccupationsAndEmployeesMasterCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object qryOccupationsAndEmployeesMasterBASE_SALARY: TAbmesFloatField
      FieldName = 'BASE_SALARY'
    end
    object qryOccupationsAndEmployeesMasterBASE_SALARY_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'BASE_SALARY_DATE_UNIT_NAME'
      Size = 50
    end
    object qryOccupationsAndEmployeesMasterMIN_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'MIN_SALARY_RATIO_COEF'
    end
    object qryOccupationsAndEmployeesMasterMAX_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'MAX_SALARY_RATIO_COEF'
    end
    object qryOccupationsAndEmployeesMasterSALARY: TAbmesFloatField
      FieldName = 'SALARY'
    end
    object qryOccupationsAndEmployeesMasterSALARY_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'SALARY_DATE_UNIT_NAME'
      Size = 50
    end
    object qryOccupationsAndEmployeesMasterSTATUS_DATE: TAbmesSQLTimeStampField
      FieldName = 'STATUS_DATE'
    end
    object qryOccupationsAndEmployeesMasterOE_MASTERED_PRC_ACTIONS_COUNT: TAbmesFloatField
      FieldName = 'OE_MASTERED_PRC_ACTIONS_COUNT'
    end
    object qryOccupationsAndEmployeesMasterOCC_PRC_ACTIONS_COUNT: TAbmesFloatField
      FieldName = 'OCC_PRC_ACTIONS_COUNT'
    end
  end
  object prvOccupations: TDataSetProvider
    DataSet = qryOccupations
    UpdateMode = upWhereKeyOnly
    Left = 456
    Top = 480
  end
  object qryOccupations: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  o.OCCUPATION_CODE,'
      '  o.OCCUPATION_NAME'
      'from'
      '  OCCUPATIONS o'
      'order by'
      '  o.OCCUPATION_NAME')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'OCCUPATIONS_FOR_EDIT'
    Left = 456
    Top = 528
    object qryOccupationsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object qryOccupationsOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
  end
  object prvOccupationAndEmployee: TDataSetProvider
    DataSet = qryOccupationAndEmployee
    Options = [poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    OnGetData = prvOccupationAndEmployeeGetData
    AfterUpdateRecord = prvOccupationAndEmployeeAfterUpdateRecord
    BeforeUpdateRecord = prvOccupationAndEmployeeBeforeUpdateRecord
    BeforeApplyUpdates = prvOccupationAndEmployeeBeforeApplyUpdates
    AfterApplyUpdates = prvOccupationAndEmployeeAfterApplyUpdates
    Left = 760
    Top = 344
  end
  object qryOccupationAndEmployee: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  o.OCCUPATION_CODE,'
      '  o.OCCUPATION_NAME,'
      '  o.OCCUPATION_LEVEL,'
      '  o.OCCUPATION_BEGIN_DATE,'
      '  o.OCCUPATION_END_DATE,'
      '  o.DOC_BRANCH_CODE as OCCUPATION_DOC_BRANCH_CODE,'
      '  o.DOC_CODE as OCCUPATION_DOC_CODE,'
      ''
      '  case'
      
        '    when (:THE_DATE between o.OCCUPATION_BEGIN_DATE and o.OCCUPA' +
        'TION_END_DATE) then 1'
      '  else'
      '    0'
      '  end as IS_ACTIVE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      
        '      (:THE_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNM' +
        'ENT_END_DATE)'
      '  ) as IS_OCCUPIED,'
      ''
      '  ( select'
      '      oe.EMPLOYEE_CODE'
      '    from'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (oe.OCCUPATION_EMPLOYEE_CODE = :OCCUPATION_EMPLOYEE_CODE)'
      '  ) as EMPLOYEE_CODE,'
      ''
      '  o.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      ''
      '  ('
      '    ('
      '      select'
      '        dt.DEPT_TYPE_ABBREV'
      '      from'
      '        DEPT_TYPES dt'
      '      where'
      '        (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE)'
      '    ) ||'
      '    d.CUSTOM_CODE ||'
      '    d.SUFFIX_LETTER'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  d.IS_EXTERNAL as DEPT_IS_EXTERNAL,'
      '  d.IS_RECURRENT as DEPT_IS_RECURRENT,'
      ''
      '  ( select'
      '      os.SHIFT_CODE'
      '    from'
      '      OCCUPATION_SHIFTS os'
      '    where'
      '      (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      (ContextDate between os.BEGIN_DATE and os.END_DATE)'
      '  ) as SHIFT_CODE,'
      ''
      '  ( select'
      '      s.SHIFT_ABBREV'
      '    from'
      '      SHIFTS s'
      '    where'
      '      (s.SHIFT_CODE ='
      '        ( select'
      '            os.SHIFT_CODE'
      '          from'
      '            OCCUPATION_SHIFTS os'
      '          where'
      '            (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '            (:THE_DATE between os.BEGIN_DATE and os.END_DATE)'
      '        )'
      '      )'
      '  ) as SHIFT_IDENTIFIER,'
      ''
      '  o.NOTES,'
      ''
      '  o.IS_MAIN,'
      '  o.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  ( select'
      '      op.OCCUPATION_PHASE_NAME'
      '    from'
      '      OCCUPATION_PHASES op'
      '    where'
      '      (op.OCCUPATION_PHASE_CODE = o.OCCUPATION_PHASE_CODE)'
      '  ) as OCCUPATION_PHASE_NAME,'
      ''
      '  o.CRAFT_CODE,'
      '  ( select'
      '      c.CRAFT_TYPE_CODE'
      '    from'
      '      CRAFTS c'
      '    where'
      '      (c.CRAFT_CODE = o.CRAFT_CODE)'
      '  ) as CRAFT_TYPE_CODE,'
      ''
      
        '  Coalesce(To_Number(:OCCUPATION_EMPLOYEE_CODE), MiscUtils.GetNe' +
        'wOccupationEmployeeCode) as OCCUPATION_EMPLOYEE_CODE,'
      ''
      '  osa.BASE_SALARY,'
      '  osa.MIN_SALARY_RATIO_COEF,'
      '  osa.MAX_SALARY_RATIO_COEF,'
      '  ( select'
      '      tdu.THE_DATE_UNIT_NAME'
      '    from'
      '      THE_DATE_UNITS tdu'
      '    where'
      '      (tdu.THE_DATE_UNIT_CODE = osa.DATE_UNIT_CODE)'
      '  ) as BASE_SALARY_DATE_UNIT_NAME'
      ''
      'from'
      '  OCCUPATIONS o,'
      '  DEPTS d,'
      '  PRODUCTS p,'
      '  OCCUPATION_SALARIES osa'
      ''
      'where'
      '  (d.DEPT_CODE = o.DEPT_CODE) and'
      ''
      '  (o.PRODUCT_CODE = p.PRODUCT_CODE(+)) and'
      ''
      '  (o.OCCUPATION_CODE = osa.OCCUPATION_CODE(+)) and'
      '  (:THE_DATE between osa.BEGIN_DATE(+) and osa.END_DATE(+)) and'
      ''
      '  (o.OCCUPATION_CODE ='
      '    Coalesce('
      '      ( select'
      '          oe.OCCUPATION_CODE'
      '        from'
      '          OCCUPATION_EMPLOYEES oe'
      '        where'
      
        '          (oe.OCCUPATION_EMPLOYEE_CODE = :OCCUPATION_EMPLOYEE_CO' +
        'DE)'
      '      ),'
      '      To_Number(:OCCUPATION_CODE)'
      '    )'
      '  )'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'OCCUPATIONS'
    AfterProviderStartTransaction = qryOccupationAndEmployeeAfterProviderStartTransaction
    Left = 760
    Top = 392
    object qryOccupationAndEmployeeOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
      ProviderFlags = [pfInKey]
    end
    object qryOccupationAndEmployeeOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeeOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryOccupationAndEmployeeOCCUPATION_LEVEL: TAbmesFloatField
      FieldName = 'OCCUPATION_LEVEL'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeeIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeeIS_OCCUPIED: TAbmesFloatField
      FieldName = 'IS_OCCUPIED'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeeEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeeDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeeDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryOccupationAndEmployeeDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryOccupationAndEmployeeDEPT_IS_EXTERNAL: TAbmesFloatField
      FieldName = 'DEPT_IS_EXTERNAL'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeeDEPT_IS_RECURRENT: TAbmesFloatField
      FieldName = 'DEPT_IS_RECURRENT'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeeSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeeSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      ProviderFlags = []
      Size = 5
    end
    object qryOccupationAndEmployeeOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OCCUPATION_BEGIN_DATE'
    end
    object qryOccupationAndEmployeeOCCUPATION_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'OCCUPATION_END_DATE'
    end
    object qryOccupationAndEmployeeOCCUPATION_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DOC_BRANCH_CODE'
    end
    object qryOccupationAndEmployeeOCCUPATION_DOC_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DOC_CODE'
    end
    object qryOccupationAndEmployeeNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryOccupationAndEmployeeIS_MAIN: TAbmesFloatField
      FieldName = 'IS_MAIN'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeePRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryOccupationAndEmployeePRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeeOCCUPATION_PHASE_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_PHASE_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryOccupationAndEmployeeCRAFT_CODE: TAbmesFloatField
      FieldName = 'CRAFT_CODE'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeeCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeeBASE_SALARY: TAbmesFloatField
      FieldName = 'BASE_SALARY'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeeMIN_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'MIN_SALARY_RATIO_COEF'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeeMAX_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'MAX_SALARY_RATIO_COEF'
      ProviderFlags = []
    end
    object qryOccupationAndEmployeeBASE_SALARY_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'BASE_SALARY_DATE_UNIT_NAME'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsOccupationAndEmployee: TDataSource
    DataSet = qryOccupationAndEmployee
    Left = 760
    Top = 440
  end
  object qryOAEProfessionsDepts: TAbmesSQLQuery
    DataSource = dsOccupationAndEmployee
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  owd.OCCUPATION_CODE,'
      '  owd.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  d.IS_EXTERNAL as DEPT_IS_EXTERNAL,'
      '  d.IS_RECURRENT as DEPT_IS_RECURRENT,'
      '  d.DOC_BRANCH_CODE,'
      '  d.DOC_CODE,'
      ''
      '  %HAS_DOC_ITEMS[d] as HAS_DOCUMENTATION,'
      ''
      '  owdp.OCC_WORK_DEPT_PRIORITY_CODE,'
      '  owdp.OCC_WORK_DEPT_PRIORITY_NO,'
      
        '  (owdp.OCC_WORK_DEPT_PRIORITY_NO || '#39' - '#39' || owdp.OCC_WORK_DEPT' +
        '_PRIORITY_NAME) as OCC_WORK_DEPT_PR_FULL_NAME,'
      '  ( select'
      '      dowdp.DEPT_OWDP_COVER_TYPE_CODE'
      '    from'
      '      DEPT_OWD_PRIORITIES dowdp'
      '    where'
      '      (dowdp.DEPT_CODE = d.DEPT_CODE) and'
      
        '      (dowdp.OCC_WORK_DEPT_PRIORITY_CODE = owd.OCC_WORK_DEPT_PRI' +
        'ORITY_CODE)'
      '  ) as DEPT_OWDP_COVER_TYPE_CODE,'
      '  owdp.IS_CAPACITY_GENERATOR as OWDP_IS_CAPACITY_GENERATOR,'
      
        '  Decode(%DEPT_OWDP_DELEGATING_DEPT[d.DEPT_CODE~owd.OCC_WORK_DEP' +
        'T_PRIORITY_CODE], owd.DEPT_CODE, 1, 0) as IS_DELEGATED'
      ''
      'from'
      '  OCCUPATION_WORK_DEPTS owd,'
      '  DEPT_RELATIONS dr,'
      '  DEPTS d,'
      '  DEPT_TYPES dt,'
      '  OCC_WORK_DEPT_PRIORITIES owdp'
      ''
      'where'
      '  (owd.OCCUPATION_CODE = :OCCUPATION_CODE) and'
      ''
      '  (dr.ANCESTOR_DEPT_CODE = owd.DEPT_CODE) and'
      
        '  ( (%DEPT_OWDP_COVERING_DEPT[dr.DESCENDANT_DEPT_CODE~owd.OCC_WO' +
        'RK_DEPT_PRIORITY_CODE] = owd.DEPT_CODE) or'
      
        '    (%DEPT_OWDP_DELEGATING_DEPT[dr.DESCENDANT_DEPT_CODE~owd.OCC_' +
        'WORK_DEPT_PRIORITY_CODE] = owd.DEPT_CODE)'
      '  ) and'
      ''
      '  (dr.DESCENDANT_DEPT_CODE = d.DEPT_CODE) and'
      ''
      
        '  (owd.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK_DEPT_PRIORITY' +
        '_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      ''
      'order by'
      '  OCC_WORK_DEPT_PRIORITY_NO,'
      '  IS_DELEGATED,'
      '  DEPT_OWDP_COVER_TYPE_CODE,'
      '  DEPT_IDENTIFIER'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'DEPT_OWDP_DELEGATING_DEPT[d.DEPT_CODE~owd.OCC_WORK_DEPT_PRIORITY' +
          '_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'DEPT_OWDP_COVERING_DEPT[dr.DESCENDANT_DEPT_CODE~owd.OCC_WORK_DEP' +
          'T_PRIORITY_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'DEPT_OWDP_DELEGATING_DEPT[dr.DESCENDANT_DEPT_CODE~owd.OCC_WORK_D' +
          'EPT_PRIORITY_CODE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 704
    Top = 504
    object qryOAEProfessionsDeptsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object qryOAEProfessionsDeptsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryOAEProfessionsDeptsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryOAEProfessionsDeptsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 45
    end
    object qryOAEProfessionsDeptsDEPT_IS_EXTERNAL: TAbmesFloatField
      FieldName = 'DEPT_IS_EXTERNAL'
    end
    object qryOAEProfessionsDeptsDEPT_IS_RECURRENT: TAbmesFloatField
      FieldName = 'DEPT_IS_RECURRENT'
    end
    object qryOAEProfessionsDeptsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryOAEProfessionsDeptsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryOAEProfessionsDeptsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryOAEProfessionsDeptsOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
    end
    object qryOAEProfessionsDeptsOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
    end
    object qryOAEProfessionsDeptsOCC_WORK_DEPT_PR_FULL_NAME: TAbmesWideStringField
      FieldName = 'OCC_WORK_DEPT_PR_FULL_NAME'
      Size = 83
    end
    object qryOAEProfessionsDeptsDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
    end
    object qryOAEProfessionsDeptsOWDP_IS_CAPACITY_GENERATOR: TAbmesFloatField
      FieldName = 'OWDP_IS_CAPACITY_GENERATOR'
      Required = True
    end
    object qryOAEProfessionsDeptsIS_DELEGATED: TAbmesFloatField
      FieldName = 'IS_DELEGATED'
    end
  end
  object qryOAEDisciplineEvents: TAbmesSQLQuery
    DataSource = dsOccupationAndEmployee
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
      '  ede.EMPLOYEE_CODE,'
      '  ede.DISCIPLINE_EVENT_CODE,'
      '  ede.DISC_EVENT_TYPE_CODE,'
      '  det.NAME as DISC_EVENT_TYPE_NAME,'
      '  ede.DISCIPLINE_EVENT_STATE_CODE,'
      '  ede.DISCIPLINE_EVENT_COMMENT,'
      '  ede.DISCIPLINE_EVENT_DATE,'
      '  ede.AUTHORIZE_EMPLOYEE_CODE,'
      '  ede.DOC_BRANCH_CODE,'
      '  ede.DOC_CODE,'
      '  %HAS_DOC_ITEMS[ede] as HAS_DOC_ITEMS,'
      '  ede.CREATE_EMPLOYEE_CODE,'
      '  ede.CREATE_DATE,'
      '  ede.CREATE_TIME,'
      '  ede.STORNO_EMPLOYEE_CODE,'
      '  ede.STORNO_DATE,'
      '  ede.STORNO_TIME,'
      '  Nvl2(ede.STORNO_EMPLOYEE_CODE, 0, 1) as IS_NOT_STORNO,'
      '  ede.OLD_DISCIPLINE_EVENT_CODE,'
      ''
      '  (det.DISC_EVENT_TYPE_SIGN * detp.RATING) as RATING,'
      
        '  Decode(Sign(det.DISC_EVENT_TYPE_SIGN), -1, 1, 0) as IS_NEGATIV' +
        'E,'
      
        '  Decode(Sign(det.DISC_EVENT_TYPE_SIGN), 1, 1, 0) as IS_POSITIVE' +
        ','
      ''
      '  case'
      
        '    when (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_EVENT_' +
        'DATE-1,'
      
        '            detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_UNIT_CO' +
        'UNT) >= ContextDate) then 1'
      '  else'
      '    0'
      '  end as IS_ACTIVE,'
      ''
      '  0 as DIRECT_STORNO,'
      ''
      '  Nvl2(ede.STORNO_EMPLOYEE_CODE, 5,'
      '    Decode(ede.DISCIPLINE_EVENT_STATE_CODE,'
      '      1,'
      '      case'
      
        '        when (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_EV' +
        'ENT_DATE-1,'
      
        '                detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_UNI' +
        'T_COUNT) >= ContextDate) then 1'
      '      else'
      '        2'
      '      end,'
      '      ede.DISCIPLINE_EVENT_STATE_CODE + 1'
      '    )'
      '  ) as STATUS_CODE,'
      ''
      
        '  Decode(ede.DISCIPLINE_EVENT_STATE_CODE, 1, 1, 0) as IS_IN_NORM' +
        'AL_STATE,'
      ''
      '  detp.ACTIVE_DATE_UNIT_CODE,'
      '  detp.ACTIVE_DATE_UNIT_COUNT,'
      '  det.COLOR,'
      '  det.BACKGROUND_COLOR'
      ''
      'from'
      '  EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '  DISC_EVENT_TYPES det,'
      '  DISC_EVENT_TYPE_PERIODS detp'
      ''
      'where'
      '  (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE) and'
      '  (ede.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE(+)) and'
      
        '  (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE(+) and detp' +
        '.END_DATE(+)) and'
      '  (ede.EMPLOYEE_CODE = :EMPLOYEE_CODE)'
      ''
      'order by'
      '  STATUS_CODE,'
      '  ede.DISCIPLINE_EVENT_DATE,'
      '  ede.DISCIPLINE_EVENT_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[ede]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 704
    Top = 552
    object qryOAEDisciplineEventsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryOAEDisciplineEventsDISCIPLINE_EVENT_CODE: TAbmesFloatField
      FieldName = 'DISCIPLINE_EVENT_CODE'
    end
    object qryOAEDisciplineEventsDISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_CODE'
    end
    object qryOAEDisciplineEventsDISC_EVENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DISC_EVENT_TYPE_NAME'
      Size = 100
    end
    object qryOAEDisciplineEventsDISCIPLINE_EVENT_STATE_CODE: TAbmesFloatField
      FieldName = 'DISCIPLINE_EVENT_STATE_CODE'
    end
    object qryOAEDisciplineEventsDISCIPLINE_EVENT_COMMENT: TAbmesWideStringField
      FieldName = 'DISCIPLINE_EVENT_COMMENT'
      Size = 100
    end
    object qryOAEDisciplineEventsDISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'DISCIPLINE_EVENT_DATE'
    end
    object qryOAEDisciplineEventsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object qryOAEDisciplineEventsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryOAEDisciplineEventsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryOAEDisciplineEventsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object qryOAEDisciplineEventsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryOAEDisciplineEventsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryOAEDisciplineEventsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryOAEDisciplineEventsSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object qryOAEDisciplineEventsSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object qryOAEDisciplineEventsSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
    object qryOAEDisciplineEventsIS_NOT_STORNO: TAbmesFloatField
      FieldName = 'IS_NOT_STORNO'
    end
    object qryOAEDisciplineEventsOLD_DISCIPLINE_EVENT_CODE: TAbmesFloatField
      FieldName = 'OLD_DISCIPLINE_EVENT_CODE'
    end
    object qryOAEDisciplineEventsRATING: TAbmesFloatField
      FieldName = 'RATING'
    end
    object qryOAEDisciplineEventsIS_NEGATIVE: TAbmesFloatField
      FieldName = 'IS_NEGATIVE'
    end
    object qryOAEDisciplineEventsIS_POSITIVE: TAbmesFloatField
      FieldName = 'IS_POSITIVE'
    end
    object qryOAEDisciplineEventsIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
    end
    object qryOAEDisciplineEventsDIRECT_STORNO: TAbmesFloatField
      FieldName = 'DIRECT_STORNO'
    end
    object qryOAEDisciplineEventsSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
    end
    object qryOAEDisciplineEventsIS_IN_NORMAL_STATE: TAbmesFloatField
      FieldName = 'IS_IN_NORMAL_STATE'
    end
    object qryOAEDisciplineEventsACTIVE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'ACTIVE_DATE_UNIT_CODE'
    end
    object qryOAEDisciplineEventsACTIVE_DATE_UNIT_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DATE_UNIT_COUNT'
    end
    object qryOAEDisciplineEventsCOLOR: TAbmesFloatField
      FieldName = 'COLOR'
    end
    object qryOAEDisciplineEventsBACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'BACKGROUND_COLOR'
    end
  end
  object qryOAEProfessions: TAbmesSQLQuery
    DataSource = dsOccupationEmployee
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  oep.OCCUPATION_EMPLOYEE_CODE,'
      '  oep.OCCUPATION_CODE,'
      '  oep.PROFESSION_CODE,'
      '  p.PROFESSION_NAME,'
      ''
      
        '  Cast(%PROFESSION_FULL_NO[p.PROFESSION_CODE] as Varchar2(100 ch' +
        'ar)) as PROFESSION_FULL_NO,'
      
        '  Cast(%PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE] as Varch' +
        'ar2(100 char)) as PROFESSION_FORMATTED_FULL_NO,'
      ''
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      ''
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION,'
      ''
      '  %PROFESSION_KIND_IDENTIFIER[pk] as PROFESSION_KIND_IDENTIFIER,'
      '  pk.PROFESSION_KIND_NO'
      ''
      'from'
      '  OCCUPATION_EMP_PROFESSIONS oep,'
      '  PROFESSIONS p,'
      '  PROFESSION_KINDS pk,'
      '  OCCUPATION_PROFESSIONS op'
      ''
      'where'
      '  (oep.PROFESSION_CODE = p.PROFESSION_CODE) and'
      ''
      '  (oep.OCCUPATION_CODE = op.OCCUPATION_CODE) and'
      '  (oep.PROFESSION_CODE = op.PROFESSION_CODE) and'
      ''
      '  (p.PROFESSION_KIND_CODE = pk.PROFESSION_KIND_CODE) and'
      ''
      '  (oep.OCCUPATION_EMPLOYEE_CODE = :OCCUPATION_EMPLOYEE_CODE)'
      ''
      'order by'
      '  PROFESSION_KIND_NO,'
      '  PROFESSION_FORMATTED_FULL_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PROFESSION_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_KIND_IDENTIFIER[pk]'
        ParamType = ptInput
        Value = #39'a'#39
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'OCCUPATION_EMP_PROFESSIONS'
    Left = 832
    Top = 640
    object qryOAEProfessionsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOAEProfessionsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object qryOAEProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOAEProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryOAEProfessionsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryOAEProfessionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryOAEProfessionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object qryOAEProfessionsPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROFESSION_KIND_IDENTIFIER'
      ProviderFlags = []
      Size = 408
    end
    object qryOAEProfessionsPROFESSION_KIND_NO: TAbmesFloatField
      FieldName = 'PROFESSION_KIND_NO'
      ProviderFlags = []
      Required = True
    end
    object qryOAEProfessionsPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryOAEProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
  end
  object qryOAENeededProfessions: TAbmesSQLQuery
    DataSource = dsOccupationAndEmployee
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  To_Number(:OCCUPATION_EMPLOYEE_CODE) as OCCUPATION_EMPLOYEE_CO' +
        'DE,'
      '  op.OCCUPATION_CODE,'
      '  op.PROFESSION_CODE,'
      '  p.PROFESSION_NAME,'
      ''
      
        '  Cast(%PROFESSION_FULL_NO[p.PROFESSION_CODE] as Varchar2(100 ch' +
        'ar)) as PROFESSION_FULL_NO,'
      
        '  Cast(%PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE] as Varch' +
        'ar2(100 char)) as PROFESSION_FORMATTED_FULL_NO,'
      ''
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      ''
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION,'
      ''
      '  %PROFESSION_KIND_IDENTIFIER[pk] as PROFESSION_KIND_IDENTIFIER,'
      '  pk.PROFESSION_KIND_NO,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      EMPLOYEE_PROFESSIONS ep'
      '    where'
      '      (ep.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '      (ep.PROFESSION_CODE = op.PROFESSION_CODE)'
      '  ) as EMP_HAS_THE_PROFESSION'
      ''
      'from'
      '  OCCUPATION_PROFESSIONS op,'
      '  PROFESSIONS p,'
      '  PROFESSION_KINDS pk'
      ''
      'where'
      '  (op.PROFESSION_CODE = p.PROFESSION_CODE) and'
      '  (p.PROFESSION_KIND_CODE = pk.PROFESSION_KIND_CODE) and'
      ''
      '  (op.OCCUPATION_CODE = :OCCUPATION_CODE) and'
      ''
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        OCCUPATION_EMP_PROFESSIONS oep'
      '      where'
      
        '        (oep.OCCUPATION_EMPLOYEE_CODE = :OCCUPATION_EMPLOYEE_COD' +
        'E) and'
      '        (oep.PROFESSION_CODE = op.PROFESSION_CODE)'
      '    )'
      '  )'
      ''
      'order by'
      '  PROFESSION_KIND_NO,'
      '  PROFESSION_FORMATTED_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PROFESSION_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_KIND_IDENTIFIER[pk]'
        ParamType = ptInput
        Value = #39'a'#39
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'OCCUPATION_PROFESSIONS'
    Left = 832
    Top = 496
    object qryOAENeededProfessionsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOAENeededProfessionsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object qryOAENeededProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOAENeededProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryOAENeededProfessionsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryOAENeededProfessionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryOAENeededProfessionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object qryOAENeededProfessionsEMP_HAS_THE_PROFESSION: TAbmesFloatField
      FieldName = 'EMP_HAS_THE_PROFESSION'
      ProviderFlags = []
    end
    object qryOAENeededProfessionsPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROFESSION_KIND_IDENTIFIER'
      Size = 408
    end
    object qryOAENeededProfessionsPROFESSION_KIND_NO: TAbmesFloatField
      FieldName = 'PROFESSION_KIND_NO'
      Required = True
    end
    object qryOAENeededProfessionsPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryOAENeededProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
  end
  object prvEmployeeProfessions: TDataSetProvider
    DataSet = qryEmployeeProfessions
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 136
  end
  object prvEmployeeNotProfessions: TDataSetProvider
    DataSet = qryEmployeeNotProfessions
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 280
  end
  object prvDeptProfessions: TDataSetProvider
    DataSet = qryDeptProfessions
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 512
  end
  object qryDeptProfessions: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PROFESSION_CODE,'
      '  p.PROFESSION_NAME'
      'from'
      '  PROFESSIONS p'
      'where'
      
        '  (1 = 1) or      -- dobaveno, za da moje da se izbira vremenno ' +
        'ot vsichki procesni roli, che niamat dlujnosti'
      '  exists('
      '    select'
      '      1'
      '    from'
      '      OCCUPATION_PROFESSIONS op'
      '    where'
      '      (op.PROFESSION_CODE = p.PROFESSION_CODE) and'
      '      exists('
      '        select'
      '          1'
      '        from'
      '          OCCUPATION_WORK_DEPTS owd'
      '        where'
      '          (owd.OCCUPATION_CODE = op.OCCUPATION_CODE) and'
      '          (owd.DEPT_CODE = :DEPT_CODE)'
      '      )'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 40
    Top = 560
    object qryDeptProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object qryDeptProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      Size = 100
    end
  end
  object prvProfessionKinds: TDataSetProvider
    DataSet = qryProfessionKinds
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 504
  end
  object qryProfessionKinds: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  pk.PROFESSION_KIND_CODE,'
      '  pk.PROFESSION_KIND_NO,'
      '  pk.PROFESSION_KIND_NAME,'
      '  pk.PROFESSION_TYPE_CODE'
      'from'
      '  PROFESSION_KINDS pk'
      'order by'
      '  pk.PROFESSION_KIND_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 552
    object qryProfessionKindsPROFESSION_KIND_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_KIND_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProfessionKindsPROFESSION_KIND_NO: TAbmesFloatField
      FieldName = 'PROFESSION_KIND_NO'
      Required = True
    end
    object qryProfessionKindsPROFESSION_KIND_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_KIND_NAME'
      Required = True
      Size = 200
    end
    object qryProfessionKindsPROFESSION_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_TYPE_CODE'
      Required = True
    end
  end
  object qryDeptDayWorkHours: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  CapacityUtils.GetDeptLimitHours(:DEPT_CODE, %INC_DATE_BY_WORKD' +
        'AYS[Trunc(ContextNow-1)~1], CapacityUtils.cllOccupation) as DEPT' +
        '_DAY_WORK_HOURS'
      'from'
      '  DUAL'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'INC_DATE_BY_WORKDAYS[Trunc(ContextNow-1)~1]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 504
    object qryDeptDayWorkHoursDEPT_DAY_WORK_HOURS: TAbmesFloatField
      FieldName = 'DEPT_DAY_WORK_HOURS'
    end
  end
  object qryOccupationWorkDeptPriorities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  owdp.OCC_WORK_DEPT_PRIORITY_CODE,'
      '  owdp.OCC_WORK_DEPT_PRIORITY_NO,'
      '  owdp.OCC_WORK_DEPT_PRIORITY_NAME,'
      '  owdp.IS_CAPACITY_GENERATOR,'
      
        '  (owdp.OCC_WORK_DEPT_PRIORITY_NO || '#39' - '#39' || owdp.OCC_WORK_DEPT' +
        '_PRIORITY_NAME) as PRIORITY_FULL_NAME,'
      '  owdp.DOC_BRANCH_CODE,'
      '  owdp.DOC_CODE,'
      '  %HAS_DOC_ITEMS[owdp] as HAS_DOC_ITEMS,'
      '  owdp.ORG_WORK_LEVEL_CODE,'
      '  owdp.ORG_WORK_ACTIVITY_CODE,'
      '  owdp.ORG_WORK_MODE_CODE'
      ''
      'from'
      '  OCC_WORK_DEPT_PRIORITIES owdp'
      ''
      'order by'
      '  owdp.OCC_WORK_DEPT_PRIORITY_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[owdp]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'OWD_PRIORITIES_FOR_EDIT'
    AfterProviderStartTransaction = qryOccupationWorkDeptPrioritiesAfterProviderStartTransaction
    Left = 72
    Top = 640
    object qryOccupationWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
    end
    object qryOccupationWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NAME'
      Size = 50
    end
    object qryOccupationWorkDeptPrioritiesIS_CAPACITY_GENERATOR: TAbmesFloatField
      FieldName = 'IS_CAPACITY_GENERATOR'
    end
    object qryOccupationWorkDeptPrioritiesPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      ProviderFlags = []
      Size = 93
    end
    object qryOccupationWorkDeptPrioritiesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryOccupationWorkDeptPrioritiesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryOccupationWorkDeptPrioritiesHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryOccupationWorkDeptPrioritiesORG_WORK_LEVEL_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_LEVEL_CODE'
      Required = True
    end
    object qryOccupationWorkDeptPrioritiesORG_WORK_ACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_ACTIVITY_CODE'
      Required = True
    end
    object qryOccupationWorkDeptPrioritiesORG_WORK_MODE_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_MODE_CODE'
      ProviderFlags = []
      Required = True
    end
  end
  object prvOccupationWorkDeptPriorities: TDataSetProvider
    DataSet = qryOccupationWorkDeptPriorities
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = prvOccupationWorkDeptPrioritiesBeforeApplyUpdates
    AfterApplyUpdates = prvOccupationWorkDeptPrioritiesAfterApplyUpdates
    Left = 72
    Top = 600
  end
  object qryOccupationEmployee: TAbmesSQLQuery
    DataSource = dsOccupationAndEmployee
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  oe.OCCUPATION_EMPLOYEE_CODE,'
      '  oe.OCCUPATION_CODE,'
      '  oe.EMPLOYEE_CODE,'
      '  oe.ASSIGNMENT_BEGIN_DATE,'
      '  oe.ASSIGNMENT_END_DATE,'
      '  oe.OE_REGIME_CODE,'
      '  oe.SALARY,'
      '  oe.SALARY_DATE_UNIT_CODE,'
      ''
      '  oe.DOC_BRANCH_CODE,'
      '  oe.DOC_CODE,'
      '  %HAS_DOC_ITEMS[oe] as HAS_DOC_ITEMS,'
      ''
      '  p.EGN as EMPLOYEE_EGN,'
      '  e.DOC_BRANCH_CODE as EMPLOYEE_DOC_BRANCH_CODE,'
      '  e.DOC_CODE as EMPLOYEE_DOC_CODE,'
      ''
      '  ( select'
      '      db.DUMMY_BLOB_DATA'
      '    from'
      '      DUMMY_BLOB db'
      '  ) as PRC_DATA'
      ''
      'from'
      '  OCCUPATION_EMPLOYEES oe,'
      '  EMPLOYEES e,'
      '  PERSONS p'
      ''
      'where'
      '  (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '  (e.COMPANY_CODE = p.COMPANY_CODE) and'
      ''
      '  (oe.OCCUPATION_EMPLOYEE_CODE = :OCCUPATION_EMPLOYEE_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[oe]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'OCCUPATION_EMPLOYEES_FOR_EDIT'
    Left = 832
    Top = 544
    object qryOccupationEmployeeOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationEmployeeOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOccupationEmployeeEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOccupationEmployeeASSIGNMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ASSIGNMENT_BEGIN_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOccupationEmployeeASSIGNMENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ASSIGNMENT_END_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOccupationEmployeeSALARY: TAbmesFloatField
      FieldName = 'SALARY'
    end
    object qryOccupationEmployeeSALARY_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'SALARY_DATE_UNIT_CODE'
    end
    object qryOccupationEmployeeEMPLOYEE_EGN: TAbmesWideStringField
      FieldName = 'EMPLOYEE_EGN'
      ProviderFlags = []
      Size = 10
    end
    object qryOccupationEmployeeEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryOccupationEmployeeEMPLOYEE_DOC_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_CODE'
      ProviderFlags = []
    end
    object qryOccupationEmployeeOE_REGIME_CODE: TAbmesFloatField
      FieldName = 'OE_REGIME_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryOccupationEmployeeDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryOccupationEmployeeDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryOccupationEmployeeHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryOccupationEmployeePRC_DATA: TBlobField
      FieldName = 'PRC_DATA'
      ProviderFlags = []
      BlobType = ftOraBlob
      Size = 1
    end
  end
  object dsOccupationEmployee: TDataSource
    DataSet = qryOccupationEmployee
    Left = 832
    Top = 592
  end
  object qryProfession: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PROFESSION_CODE,'
      '  p.PROFESSION_LOCAL_NO,'
      '  p.PROFESSION_NAME,'
      '  p.PARENT_PROFESSION_CODE,'
      ''
      '  Decode('
      '    p.PARENT_PROFESSION_CODE,'
      '    1000000,'
      '    null,'
      
        '    Cast(%PROFESSION_FULL_NO[p.PARENT_PROFESSION_CODE] as VarCha' +
        'r2(100 char))'
      '  ) as PARENT_FULL_NO,'
      ''
      '  p.IS_GROUP,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      ''
      '  %HAS_DOC_ITEMS[p] as HAS_DOC_ITEMS ,'
      ''
      '  p.PROFESSION_KIND_CODE'
      'from'
      '  PROFESSIONS p'
      'where'
      '  (p.PROFESSION_CODE = :PROFESSION_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PROFESSION_FULL_NO[p.PARENT_PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PROFESSIONS_FOR_EDIT'
    AfterProviderStartTransaction = qryProfessionAfterProviderStartTransaction
    Left = 264
    Top = 192
    object qryProfessionPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProfessionPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      Size = 100
    end
    object qryProfessionDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProfessionDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProfessionPROFESSION_KIND_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_KIND_CODE'
    end
    object qryProfessionPROFESSION_LOCAL_NO: TAbmesFloatField
      FieldName = 'PROFESSION_LOCAL_NO'
      Required = True
    end
    object qryProfessionPARENT_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'PARENT_PROFESSION_CODE'
    end
    object qryProfessionPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryProfessionIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
    end
    object qryProfessionHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
  end
  object prvProfession: TDataSetProvider
    DataSet = qryProfession
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvProfessionBeforeUpdateRecord
    BeforeApplyUpdates = prvProfessionBeforeApplyUpdates
    AfterApplyUpdates = prvProfessionAfterApplyUpdates
    Left = 264
    Top = 144
  end
  object qryEmployeesNom: TAbmesSQLQuery
    BeforeOpen = qryEmployeesNomBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MIN_STATUS_CODE'
        ParamType = ptInput
        Value = '3'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
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
        Name = 'COMPANY_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'FIRST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'FIRST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MIDDLE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MIDDLE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'LAST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'LAST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EDUCATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EDUCATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GENDER'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'GENDER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GENDER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GENDER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EGN'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EGN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_POSITIVE_RATING'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_POSITIVE_RATING'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_NEGATIVE_RATING'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_NEGATIVE_RATING'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IS_INACTIVE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftInteger
        Name = 'IS_INACTIVE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IS_INACTIVE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  /*+ INDEX(e) */'
      '  ( select'
      '      csc.COMPANY_STATUS_CODE'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc'
      '    where'
      '      (csc.COMPANY_CODE = e.COMPANY_CODE) and'
      ''
      '      (csc.STATUS_DATE = ('
      '        select'
      '          Max(STATUS_DATE)'
      '        from'
      '          COMPANY_STATUSES_CHANGES csc2'
      '        where'
      '          (csc2.COMPANY_CODE = csc.COMPANY_CODE)'
      '        )'
      '      )'
      '  ) as COMPANY_STATUS_CODE,'
      ''
      '  ( select'
      '      cs.COMPANY_STATUS_NAME'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc,'
      '      COMPANY_STATUSES cs'
      '    where'
      '      (csc.COMPANY_CODE = e.COMPANY_CODE) and'
      ''
      '      (csc.STATUS_DATE = ('
      '        select'
      '          Max(STATUS_DATE)'
      '        from'
      '          COMPANY_STATUSES_CHANGES csc2'
      '        where'
      '          (csc2.COMPANY_CODE = csc.COMPANY_CODE)'
      '        )'
      '      ) and'
      ''
      '      (cs.COMPANY_STATUS_CODE = csc.COMPANY_STATUS_CODE)'
      '  ) as COMPANY_STATUS_NAME,'
      ''
      '  %COMPANY_BASE_ROLE_CODE[e.COMPANY_CODE] as BASE_ROLE_CODE,'
      ''
      '  ( select'
      '      Round(Months_between(ContextDate, Max(csc.STATUS_DATE)))'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc'
      '    where'
      '      (csc.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EXISTANCE_MONTHS,'
      ''
      '  Round('
      '    Months_between('
      '      ( select'
      '          Max(csc.STATUS_DATE)'
      '        from'
      '          COMPANY_STATUSES_CHANGES csc'
      '        where'
      '          (csc.COMPANY_CODE = e.COMPANY_CODE)'
      '      ),'
      '      Coalesce('
      '        ( select'
      '            Min(csc2.STATUS_DATE)'
      '          from'
      '            COMPANY_STATUSES_CHANGES csc2'
      '          where'
      '            (csc2.COMPANY_CODE = e.COMPANY_CODE) and'
      '            (csc2.STATUS_DATE >'
      '              Coalesce('
      '                ( select'
      '                    Max(csc3.STATUS_DATE)'
      '                  from'
      '                    COMPANY_STATUSES_CHANGES csc3'
      '                  where'
      '                    (csc3.COMPANY_CODE = csc2.COMPANY_CODE) and'
      '                    (csc3.COMPANY_STATUS_CODE in (5, 6))'
      '                ),'
      '                CommonConsts.MinDate'
      '              )'
      '            )'
      '        ),'
      '        ( select'
      '            Max(csc.STATUS_DATE)'
      '          from'
      '            COMPANY_STATUSES_CHANGES csc'
      '          where'
      '            (csc.COMPANY_CODE = e.COMPANY_CODE)'
      '        )'
      '      )'
      '    )'
      '  ) as CURRENT_STATUS_REACH_MONTHS,'
      ''
      '  e.EMPLOYEE_CODE,'
      '  e.FIRST_NAME,'
      '  e.MIDDLE_NAME,'
      '  e.LAST_NAME,'
      '  e.ABBREV,'
      '  e.IS_INACTIVE,'
      '  p.IS_MALE,'
      '  p.EGN,'
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '     (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as COMPANY_NO,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      EMPLOYEE_PROFESSIONS ep'
      '    where'
      '      (ep.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '      (ep.PROFESSION_CODE ='
      '        ( select'
      '            co.MANAGER_OKIDU_PROFESSION_CODE'
      '          from'
      '            COMMON_OPTIONS co'
      '          where'
      '            (co.CODE = 1)'
      '        )'
      '      )'
      '  ) as IS_MANAGER_OKIDU,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      EMPLOYEE_PROFESSIONS ep'
      '    where'
      '      (ep.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '      (ep.PROFESSION_CODE ='
      '        ( select'
      '            co.OKIDU_PROFESSION_CODE'
      '          from'
      '            COMMON_OPTIONS co'
      '          where'
      '            (co.CODE = 1)'
      '        )'
      '      )'
      '  ) as IS_OKIDU,'
      ''
      '  (e.FIRST_NAME ||'
      '    Nvl2(e.MIDDLE_NAME,'
      '      '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '      '#39' '#39') ||'
      '    e.LAST_NAME'
      '  ) as EMPLOYEE_NAME,'
      ''
      '  P.EDUCATION_CODE,'
      '  ( select'
      '      edu.EDUCATION_SHORT_NAME'
      '    from'
      '      EDUCATIONS edu'
      '    where'
      '      (edu.EDUCATION_CODE = p.EDUCATION_CODE)'
      '  ) as EDUCATION_SHORT_NAME,'
      ''
      '  NullIf('
      '    ( select'
      '        /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '        Sum(det.DISC_EVENT_TYPE_SIGN * detp.RATING)'
      '      from'
      '        EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '        DISC_EVENT_TYPES det,'
      '        DISC_EVENT_TYPE_PERIODS detp'
      '      where'
      '        (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '        (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE) an' +
        'd'
      
        '        (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE) a' +
        'nd'
      '        (ede.STORNO_EMPLOYEE_CODE is null) and'
      '        (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      '        (det.DISC_EVENT_TYPE_SIGN < 0) and'
      
        '        (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE and d' +
        'etp.END_DATE) and'
      
        '        (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_EVENT_D' +
        'ATE-1, detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_UNIT_COUNT) ' +
        '>= ContextDate)'
      '    ),'
      '    0'
      '  ) as NEGATIVE_DISCIPLINE_RATING,'
      ''
      '  NullIf('
      '    ( select'
      '        /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '        Sum(det.DISC_EVENT_TYPE_SIGN * detp.RATING)'
      '      from'
      '        EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '        DISC_EVENT_TYPES det,'
      '        DISC_EVENT_TYPE_PERIODS detp'
      '      where'
      '        (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '        (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE) an' +
        'd'
      
        '        (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE) a' +
        'nd'
      '        (ede.STORNO_EMPLOYEE_CODE is null) and'
      '        (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      '        (det.DISC_EVENT_TYPE_SIGN > 0) and'
      
        '        (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE and d' +
        'etp.END_DATE) and'
      
        '        (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_EVENT_D' +
        'ATE-1, detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_UNIT_COUNT) ' +
        '>= ContextDate)'
      '    ),'
      '    0'
      '  ) as POSITIVE_DISCIPLINE_RATING,'
      ''
      '  ( select'
      '      c.DOC_BRANCH_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as COMPANY_DOC_BRANCH_CODE,'
      '  ( select'
      '      c.DOC_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as COMPANY_DOC_CODE,'
      '  ( select'
      '      %HAS_DOC_ITEMS[c]'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as COMPANY_HAS_DOCUMENTATION,'
      ''
      '  e.DOC_BRANCH_CODE,'
      '  e.DOC_CODE,'
      '  %HAS_DOC_ITEMS[e] as HAS_DOCUMENTATION,'
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = e.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = e.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = e.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = e.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = e.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = e.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = e.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = e.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.AUTHORIZE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAUTHORIZED_ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = e.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = e.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (e.EMPLOYEE_CODE = oe.EMPLOYEE_CODE)'
      '  ) as OCCUPATIONS_COUNT,'
      ''
      '  ( select'
      '      dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER'
      '    from'
      '      OCCUPATION_EMPLOYEES oe,'
      '      OCCUPATIONS o,'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (e.EMPLOYEE_CODE = oe.EMPLOYEE_CODE) and'
      
        '      (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIG' +
        'NMENT_END_DATE) and'
      '      (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      (o.IS_MAIN = 1) and'
      '      (o.DEPT_CODE = d.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as MAIN_OCC_DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      o.OCCUPATION_NAME'
      '    from'
      '      OCCUPATION_EMPLOYEES oe,'
      '      OCCUPATIONS o'
      '    where'
      '      (e.EMPLOYEE_CODE = oe.EMPLOYEE_CODE) and'
      
        '      (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIG' +
        'NMENT_END_DATE) and'
      '      (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      (o.IS_MAIN = 1) '
      '  ) as MAIN_OCCUPATION_NAME,'
      ''
      '  ( select'
      '      c.IS_EXTERNAL'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as IS_EXTERNAL'
      ''
      'from'
      '  EMPLOYEES e,'
      '  PERSONS p'
      ''
      'where'
      '  (e.COMPANY_CODE = p.COMPANY_CODE) and'
      ''
      '  ('
      '    ( select'
      '        csc.COMPANY_STATUS_CODE'
      '      from'
      '        COMPANY_STATUSES_CHANGES csc'
      '      where'
      '        (csc.COMPANY_CODE = e.COMPANY_CODE) and'
      ''
      '        (csc.STATUS_DATE = ('
      '          select'
      '            Max(STATUS_DATE)'
      '          from'
      '            COMPANY_STATUSES_CHANGES csc2'
      '          where'
      '            (csc2.COMPANY_CODE = csc.COMPANY_CODE)'
      '          )'
      '        )'
      '      ) between :MIN_STATUS_CODE and :MAX_STATUS_CODE'
      '  ) and'
      ''
      '  ( (:EMPLOYEE_CODE is null) or'
      '    (e.EMPLOYEE_CODE = :EMPLOYEE_CODE) ) and'
      ''
      '  ( (:COMPANY_NO is null) or'
      '    ( ( select'
      '          c.COMPANY_NO'
      '        from'
      '          COMPANIES c'
      '        where'
      '          (c.COMPANY_CODE = e.COMPANY_CODE)'
      '      ) = :COMPANY_NO) ) and'
      ''
      '  ( (:ABBREV is null) or'
      '    (Upper(e.ABBREV) = Upper(:ABBREV)) ) and'
      ''
      '  ( (:FIRST_NAME is null) or'
      '    (Upper(e.FIRST_NAME) = Upper(:FIRST_NAME)) ) and'
      ''
      '  ( (:MIDDLE_NAME is null) or'
      '    (Upper(e.MIDDLE_NAME) = Upper(:MIDDLE_NAME)) ) and'
      ''
      '  ( (:LAST_NAME is null) or'
      '    (Upper(e.LAST_NAME) = Upper(:LAST_NAME)) ) and'
      ''
      '  ( (:EDUCATION_CODE is null) or'
      '    (p.EDUCATION_CODE = :EDUCATION_CODE) ) and'
      ''
      '  ( (:GENDER is null) or'
      '    (:GENDER = 1) or'
      '    ( (:GENDER = 2) and (p.IS_MALE = 1) ) or'
      '    ( (:GENDER = 3) and (p.IS_MALE = 0) ) ) and'
      ''
      '  ( (:PROFESSION_CODE is null) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        EMPLOYEE_PROFESSIONS ep'
      '      where'
      '        (ep.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '        (ep.PROFESSION_CODE = :PROFESSION_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:EGN is null) or'
      '    (p.EGN like :EGN) ) and'
      ''
      '  ( (:DISCIPLINE_EVENT_STATUS_CODE is null) or'
      ''
      '    ( exists('
      '        select'
      '          /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '          1'
      '        from'
      '          EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '          DISC_EVENT_TYPES det,'
      '          DISC_EVENT_TYPE_PERIODS detp'
      '        where'
      '          (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '          (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE) ' +
        'and'
      
        '          (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE)' +
        ' and'
      
        '          (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE and' +
        ' detp.END_DATE) and'
      
        '          (ede.DISCIPLINE_EVENT_DATE between Coalesce(Cast(:BEGI' +
        'N_DISCIPLINE_EVENT_DATE as Date), %MIN_DATE) and Coalesce(Cast(:' +
        'END_DISCIPLINE_EVENT_DATE as Date), %MAX_DATE)) and'
      '          ( Nvl2(ede.STORNO_EMPLOYEE_CODE, 5,'
      '              Decode(ede.DISCIPLINE_EVENT_STATE_CODE,'
      '                1,'
      '                case'
      
        '                  when (DateTimeUtils.IncDateByTimeUnits(ede.DIS' +
        'CIPLINE_EVENT_DATE-1,'
      
        '                          detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIV' +
        'E_DATE_UNIT_COUNT) >= ContextDate) then 1'
      '                else'
      '                  2'
      '                end,'
      '                ede.DISCIPLINE_EVENT_STATE_CODE + 1'
      '              )'
      '            ) = :DISCIPLINE_EVENT_STATUS_CODE'
      '          )'
      '      ) and'
      ''
      '      ( Decode('
      '          Sign('
      '            Coalesce('
      '              ( select'
      '                  /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '                  Sum(det.DISC_EVENT_TYPE_SIGN * detp.RATING)'
      '                from'
      '                  EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '                  DISC_EVENT_TYPES det,'
      '                  DISC_EVENT_TYPE_PERIODS detp'
      '                where'
      '                  (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '                  (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYP' +
        'E_CODE) and'
      
        '                  (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TY' +
        'PE_CODE) and'
      '                  (det.DISC_EVENT_TYPE_SIGN > 0) and'
      
        '                  (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_' +
        'DATE and detp.END_DATE) and'
      
        '                  (ede.DISCIPLINE_EVENT_DATE between Coalesce(Ca' +
        'st(:BEGIN_DISCIPLINE_EVENT_DATE as Date), %MIN_DATE) and Coalesc' +
        'e(Cast(:END_DISCIPLINE_EVENT_DATE as Date), %MAX_DATE)) and'
      '                  ( Nvl2(ede.STORNO_EMPLOYEE_CODE, 5,'
      '                      Decode(ede.DISCIPLINE_EVENT_STATE_CODE,'
      '                        1,'
      '                        case'
      
        '                          when (DateTimeUtils.IncDateByTimeUnits' +
        '(ede.DISCIPLINE_EVENT_DATE-1,'
      
        '                                  detp.ACTIVE_DATE_UNIT_CODE, de' +
        'tp.ACTIVE_DATE_UNIT_COUNT) >= ContextDate) then 1'
      '                        else'
      '                          2'
      '                        end,'
      '                        ede.DISCIPLINE_EVENT_STATE_CODE + 1'
      '                      )'
      '                    ) = :DISCIPLINE_EVENT_STATUS_CODE'
      '                  )'
      '              ),'
      '              0'
      '            )'
      '          ),'
      '          0, :HAS_NOT_POSITIVE_RATING,'
      '          1, :HAS_POSITIVE_RATING'
      '        ) = 1'
      '      ) and'
      ''
      '      ( Decode('
      '          Sign('
      '            Coalesce('
      '              ( select'
      '                  /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '                  Sum(det.DISC_EVENT_TYPE_SIGN * detp.RATING)'
      '                from'
      '                  EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '                  DISC_EVENT_TYPES det,'
      '                  DISC_EVENT_TYPE_PERIODS detp'
      '                where'
      '                  (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '                  (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYP' +
        'E_CODE) and'
      
        '                  (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TY' +
        'PE_CODE) and'
      '                  (det.DISC_EVENT_TYPE_SIGN < 0) and'
      
        '                  (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_' +
        'DATE and detp.END_DATE) and'
      
        '                  (ede.DISCIPLINE_EVENT_DATE between Coalesce(Ca' +
        'st(:BEGIN_DISCIPLINE_EVENT_DATE as Date), %MIN_DATE) and Coalesc' +
        'e(Cast(:END_DISCIPLINE_EVENT_DATE as Date), %MAX_DATE)) and'
      '                  ( Nvl2(ede.STORNO_EMPLOYEE_CODE, 5,'
      '                      Decode(ede.DISCIPLINE_EVENT_STATE_CODE,'
      '                        1,'
      '                        case'
      
        '                          when (DateTimeUtils.IncDateByTimeUnits' +
        '(ede.DISCIPLINE_EVENT_DATE-1,'
      
        '                                  detp.ACTIVE_DATE_UNIT_CODE, de' +
        'tp.ACTIVE_DATE_UNIT_COUNT) >= ContextDate) then 1'
      '                        else'
      '                          2'
      '                        end,'
      '                        ede.DISCIPLINE_EVENT_STATE_CODE + 1'
      '                      )'
      '                    ) = :DISCIPLINE_EVENT_STATUS_CODE'
      '                  )'
      '              ),'
      '              0'
      '            )'
      '          ),'
      '          0, :HAS_NOT_NEGATIVE_RATING,'
      '          -1, :HAS_NEGATIVE_RATING'
      '        ) = 1'
      '      ) and'
      ''
      '      ( (:DISC_EVENT_TYPE_CODE is null) or'
      '        exists('
      '          select'
      '            /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '            1'
      '          from'
      '            EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '            DISC_EVENT_TYPES det,'
      '            DISC_EVENT_TYPE_PERIODS detp'
      '          where'
      '            (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '            (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE' +
        ') and'
      
        '            (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_COD' +
        'E) and'
      '            (det.DISC_EVENT_TYPE_SIGN < 0) and'
      
        '            (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE a' +
        'nd detp.END_DATE) and'
      
        '            (ede.DISCIPLINE_EVENT_DATE between Coalesce(Cast(:BE' +
        'GIN_DISCIPLINE_EVENT_DATE as Date), %MIN_DATE) and Coalesce(Cast' +
        '(:END_DISCIPLINE_EVENT_DATE as Date), %MAX_DATE)) and'
      '            ( Nvl2(ede.STORNO_EMPLOYEE_CODE, 5,'
      '                Decode(ede.DISCIPLINE_EVENT_STATE_CODE,'
      '                  1,'
      '                  case'
      
        '                    when (DateTimeUtils.IncDateByTimeUnits(ede.D' +
        'ISCIPLINE_EVENT_DATE-1,'
      
        '                            detp.ACTIVE_DATE_UNIT_CODE, detp.ACT' +
        'IVE_DATE_UNIT_COUNT) >= ContextDate) then 1'
      '                  else'
      '                    2'
      '                  end,'
      '                  ede.DISCIPLINE_EVENT_STATE_CODE + 1'
      '                )'
      '              ) = :DISCIPLINE_EVENT_STATUS_CODE'
      '            ) and'
      '            exists('
      '              select'
      '                1'
      '              from'
      '                DISC_EVENT_TYPE_RELATIONS detr'
      '              where'
      
        '                (detr.ANCESTOR_DET_CODE = :DISC_EVENT_TYPE_CODE)' +
        ' and'
      
        '                (detr.DESCENDANT_DET_CODE = ede.DISC_EVENT_TYPE_' +
        'CODE)'
      '            )'
      '          )'
      '      ) and'
      ''
      '      ( (:AUTHORIZE_EMPLOYEE_CODE is null) or'
      '        exists('
      '          select'
      '            /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '            1'
      '          from'
      '            EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '            DISC_EVENT_TYPES det,'
      '            DISC_EVENT_TYPE_PERIODS detp'
      '          where'
      '            (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '            (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE' +
        ') and'
      
        '            (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_COD' +
        'E) and'
      '            (det.DISC_EVENT_TYPE_SIGN < 0) and'
      
        '            (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE a' +
        'nd detp.END_DATE) and'
      
        '            (ede.DISCIPLINE_EVENT_DATE between Coalesce(Cast(:BE' +
        'GIN_DISCIPLINE_EVENT_DATE as Date), %MIN_DATE) and Coalesce(Cast' +
        '(:END_DISCIPLINE_EVENT_DATE as Date), %MAX_DATE)) and'
      '            ( Nvl2(ede.STORNO_EMPLOYEE_CODE, 5,'
      '                Decode(ede.DISCIPLINE_EVENT_STATE_CODE,'
      '                  1,'
      '                  case'
      
        '                    when (DateTimeUtils.IncDateByTimeUnits(ede.D' +
        'ISCIPLINE_EVENT_DATE-1,'
      
        '                            detp.ACTIVE_DATE_UNIT_CODE, detp.ACT' +
        'IVE_DATE_UNIT_COUNT) >= ContextDate) then 1'
      '                  else'
      '                    2'
      '                  end,'
      '                  ede.DISCIPLINE_EVENT_STATE_CODE + 1'
      '                )'
      '              ) = :DISCIPLINE_EVENT_STATUS_CODE'
      '            ) and'
      
        '            (ede.AUTHORIZE_EMPLOYEE_CODE = :AUTHORIZE_EMPLOYEE_C' +
        'ODE) '
      '        )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:IS_EXTERNAL is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        COMPANIES c'
      '      where'
      '        (c.COMPANY_CODE = e.COMPANY_CODE) and'
      '        (c.IS_EXTERNAL = :IS_EXTERNAL)'
      '    )'
      '  ) and'
      ''
      '  ( (:IS_INACTIVE_CODE = 0) or'
      '    ( (:IS_INACTIVE_CODE = 1) and'
      '      (e.IS_INACTIVE = 0) ) or'
      '    ( (:IS_INACTIVE_CODE = 2) and'
      '      (e.IS_INACTIVE = 1) )'
      '  )'
      ''
      'order by'
      '  e.FIRST_NAME,'
      '  e.LAST_NAME'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COMPANY_BASE_ROLE_CODE[e.COMPANY_CODE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[c]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[e]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'MIN_DATE'
        ParamType = ptInput
        Value = 'ContextDate'
      end
      item
        DataType = ftWideString
        Name = 'MAX_DATE'
        ParamType = ptInput
        Value = 'ContextDate'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EMPLOYEES_FOR_EDIT'
    Left = 280
    Top = 432
    object qryEmployeesNomEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmployeesNomCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
    end
    object qryEmployeesNomCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
    object qryEmployeesNomEXISTANCE_MONTHS: TAbmesFloatField
      FieldName = 'EXISTANCE_MONTHS'
    end
    object qryEmployeesNomCURRENT_STATUS_REACH_MONTHS: TAbmesFloatField
      FieldName = 'CURRENT_STATUS_REACH_MONTHS'
    end
    object qryEmployeesNomFIRST_NAME: TAbmesWideStringField
      FieldName = 'FIRST_NAME'
      Size = 50
    end
    object qryEmployeesNomMIDDLE_NAME: TAbmesWideStringField
      FieldName = 'MIDDLE_NAME'
      Size = 50
    end
    object qryEmployeesNomLAST_NAME: TAbmesWideStringField
      FieldName = 'LAST_NAME'
      Size = 50
    end
    object qryEmployeesNomABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
      Size = 5
    end
    object qryEmployeesNomIS_MALE: TAbmesFloatField
      FieldName = 'IS_MALE'
    end
    object qryEmployeesNomEGN: TAbmesWideStringField
      FieldName = 'EGN'
      Size = 10
    end
    object qryEmployeesNomCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object qryEmployeesNomIS_MANAGER_OKIDU: TAbmesFloatField
      FieldName = 'IS_MANAGER_OKIDU'
    end
    object qryEmployeesNomIS_OKIDU: TAbmesFloatField
      FieldName = 'IS_OKIDU'
    end
    object qryEmployeesNomEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object qryEmployeesNomEDUCATION_CODE: TAbmesFloatField
      FieldName = 'EDUCATION_CODE'
    end
    object qryEmployeesNomEDUCATION_SHORT_NAME: TAbmesWideStringField
      FieldName = 'EDUCATION_SHORT_NAME'
    end
    object qryEmployeesNomNEGATIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'NEGATIVE_DISCIPLINE_RATING'
    end
    object qryEmployeesNomPOSITIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'POSITIVE_DISCIPLINE_RATING'
    end
    object qryEmployeesNomCOMPANY_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'COMPANY_DOC_BRANCH_CODE'
    end
    object qryEmployeesNomCOMPANY_DOC_CODE: TAbmesFloatField
      FieldName = 'COMPANY_DOC_CODE'
    end
    object qryEmployeesNomCOMPANY_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'COMPANY_HAS_DOCUMENTATION'
    end
    object qryEmployeesNomDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryEmployeesNomDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryEmployeesNomHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryEmployeesNomDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object qryEmployeesNomDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object qryEmployeesNomACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object qryEmployeesNomUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object qryEmployeesNomUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryEmployeesNomOCCUPATIONS_COUNT: TAbmesFloatField
      FieldName = 'OCCUPATIONS_COUNT'
    end
    object qryEmployeesNomIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
    end
    object qryEmployeesNomIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object qryEmployeesNomMAIN_OCC_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_OCC_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryEmployeesNomMAIN_OCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'MAIN_OCCUPATION_NAME'
      Size = 50
    end
    object qryEmployeesNomBASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'BASE_ROLE_CODE'
    end
  end
  object prvEmployeesNom: TDataSetProvider
    DataSet = qryEmployeesNom
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 384
  end
  object qryManagerOKIDUs: TAbmesSQLQuery
    BeforeOpen = qryEmployeesNomBeforeOpen
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  e.EMPLOYEE_CODE,'
      ''
      '  (e.FIRST_NAME ||'
      '    Nvl2(e.MIDDLE_NAME,'
      '      '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '      '#39' '#39') ||'
      '    e.LAST_NAME'
      '  ) as EMPLOYEE_NAME'
      ''
      'from'
      '  EMPLOYEES e'
      ''
      'where'
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        EMPLOYEE_PROFESSIONS ep'
      '      where'
      '        (ep.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '        (ep.PROFESSION_CODE ='
      '          ( select'
      '              co.MANAGER_OKIDU_PROFESSION_CODE'
      '            from'
      '              COMMON_OPTIONS co'
      '          )'
      '        )'
      '    )'
      '  )'
      ''
      'order by'
      '  EMPLOYEE_NAME'
      ''
      ''
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EMPLOYEES'
    Left = 168
    Top = 296
    object qryManagerOKIDUsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryManagerOKIDUsEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
  end
  object prvManagerOKIDUs: TDataSetProvider
    DataSet = qryManagerOKIDUs
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 248
  end
  object prvOccupationPhases: TDataSetProvider
    DataSet = qryOccupationPhases
    UpdateMode = upWhereKeyOnly
    Left = 440
    Top = 576
  end
  object qryOccupationPhases: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  op.OCCUPATION_PHASE_CODE,'
      '  op.OCCUPATION_PHASE_NAME'
      ''
      'from'
      '  OCCUPATION_PHASES op'
      ''
      'order by'
      '  op.OCCUPATION_PHASE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 440
    Top = 624
    object qryOccupationPhasesOCCUPATION_PHASE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_PHASE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOccupationPhasesOCCUPATION_PHASE_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_PHASE_NAME'
      Required = True
      Size = 50
    end
  end
  object qryEmployeeOccupations: TAbmesSQLQuery
    DataSource = dsEmployee
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
      '  oe.OCCUPATION_EMPLOYEE_CODE,'
      ''
      '  oe.ASSIGNMENT_BEGIN_DATE,'
      '  oe.ASSIGNMENT_END_DATE,'
      ''
      '  case'
      '    when (oe.ASSIGNMENT_END_DATE < ContextDate) then 1'
      '    when (oe.ASSIGNMENT_BEGIN_DATE > ContextDate) then 3'
      '    else 2'
      '  end as ASSIGNMENT_PERIOD_STATUS_CODE,'
      ''
      '  o.IS_MAIN,'
      '  o.OCCUPATION_NAME,'
      '  ( ('
      '      select'
      '        dt.DEPT_TYPE_ABBREV'
      '      from'
      '        DEPT_TYPES dt'
      '      where'
      '        (dt.DEPT_TYPE_CODE = d.DEPT_TYPE_CODE)'
      '    ) ||'
      '    d.CUSTOM_CODE ||'
      '    d.SUFFIX_LETTER'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  d.NAME as DEPT_NAME,'
      '  d.IS_EXTERNAL,'
      '  d.IS_RECURRENT,'
      
        '  Nvl2(oe.ASSIGNMENT_END_DATE, (oe.ASSIGNMENT_END_DATE - Context' +
        'Date), null) as ASSIGNMENT_DAY_DIFF,'
      ''
      '  o.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      ''
      '  %HAS_DOC_ITEMS[o] as OCCUPATION_HAS_DOCS,'
      '  o.DOC_BRANCH_CODE as OCCUPATION_DOC_BRANCH_CODE,'
      '  o.DOC_CODE as OCCUPATION_DOC_CODE,'
      ''
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOCS,'
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE'
      ''
      'from'
      '  OCCUPATION_EMPLOYEES oe,'
      '  OCCUPATIONS o,'
      '  DEPTS d,'
      '  PRODUCTS p'
      ''
      'where'
      '  (oe.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '  (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '  (o.DEPT_CODE = d.DEPT_CODE) and'
      '  (o.PRODUCT_CODE = p.PRODUCT_CODE(+))'
      ''
      'order by'
      '  ASSIGNMENT_PERIOD_STATUS_CODE,'
      '  IS_MAIN desc,'
      '  ASSIGNMENT_BEGIN_DATE,'
      '  ASSIGNMENT_END_DATE,'
      '  OCCUPATION_NAME,'
      '  OCCUPATION_EMPLOYEE_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[o]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 112
    Top = 24
    object qryEmployeeOccupationsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
    end
    object qryEmployeeOccupationsASSIGNMENT_PERIOD_STATUS_CODE: TAbmesFloatField
      FieldName = 'ASSIGNMENT_PERIOD_STATUS_CODE'
    end
    object qryEmployeeOccupationsASSIGNMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ASSIGNMENT_BEGIN_DATE'
    end
    object qryEmployeeOccupationsASSIGNMENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ASSIGNMENT_END_DATE'
    end
    object qryEmployeeOccupationsIS_MAIN: TAbmesFloatField
      FieldName = 'IS_MAIN'
    end
    object qryEmployeeOccupationsOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object qryEmployeeOccupationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryEmployeeOccupationsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryEmployeeOccupationsIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
    end
    object qryEmployeeOccupationsIS_RECURRENT: TAbmesFloatField
      FieldName = 'IS_RECURRENT'
    end
    object qryEmployeeOccupationsASSIGNMENT_DAY_DIFF: TAbmesFloatField
      FieldName = 'ASSIGNMENT_DAY_DIFF'
    end
    object qryEmployeeOccupationsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryEmployeeOccupationsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryEmployeeOccupationsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryEmployeeOccupationsOCCUPATION_HAS_DOCS: TAbmesFloatField
      FieldName = 'OCCUPATION_HAS_DOCS'
    end
    object qryEmployeeOccupationsOCCUPATION_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DOC_BRANCH_CODE'
    end
    object qryEmployeeOccupationsOCCUPATION_DOC_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DOC_CODE'
    end
    object qryEmployeeOccupationsPRODUCT_HAS_DOCS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCS'
    end
    object qryEmployeeOccupationsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryEmployeeOccupationsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
  end
  object qryCraftTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  CRAFT_TYPES ct')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 32
    Top = 376
    object qryCraftTypesCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCraftTypesCRAFT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'CRAFT_TYPE_NAME'
      Size = 50
    end
  end
  object prvCraftTypes: TDataSetProvider
    DataSet = qryCraftTypes
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 328
  end
  object qryCrafts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  c.CRAFT_CODE,'
      '  c.CRAFT_NAME,'
      '  c.CRAFT_TYPE_CODE'
      'from'
      '  CRAFTS c'
      'where'
      '  ( (:CRAFT_TYPE_CODE is null) or'
      '    (c.CRAFT_TYPE_CODE = :CRAFT_TYPE_CODE) )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 96
    Top = 376
    object qryCraftsCRAFT_CODE: TAbmesFloatField
      FieldName = 'CRAFT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCraftsCRAFT_NAME: TAbmesWideStringField
      FieldName = 'CRAFT_NAME'
      Size = 50
    end
    object qryCraftsCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
    end
  end
  object prvCrafts: TDataSetProvider
    DataSet = qryCrafts
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 328
  end
  object qryOERegimes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  OCCUPATION_EMPLOYEE_REGIMES oer')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 848
    Top = 424
    object qryOERegimesOE_REGIME_CODE: TAbmesFloatField
      FieldName = 'OE_REGIME_CODE'
    end
    object qryOERegimesOE_REGIME_NAME: TAbmesWideStringField
      FieldName = 'OE_REGIME_NAME'
    end
  end
  object prvOERegimes: TDataSetProvider
    DataSet = qryOERegimes
    Left = 848
    Top = 376
  end
  object prvEmployeeFrame: TDataSetProvider
    DataSet = qryEmployeeFrame
    UpdateMode = upWhereKeyOnly
    Left = 656
    Top = 24
  end
  object qryEmployeeFrame: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_OCC_WORK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_OCC_WORK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_OCC_WORK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_USERS_ONLY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_USERS_ONLY'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  e.EMPLOYEE_CODE,'
      '  ( e.FIRST_NAME ||'
      '    Nvl2(e.MIDDLE_NAME,'
      '      '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '      '#39' '#39') ||'
      '    e.LAST_NAME'
      '  ) as EMPLOYEE_NAME,'
      '  e.ABBREV as EMPLOYEE_ABBREV,'
      '  e.DOC_BRANCH_CODE,'
      '  e.DOC_CODE,'
      '  %HAS_DOC_ITEMS[e] as HAS_DOCUMENTATION,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_NO                                     '
      ''
      'from'
      '  EMPLOYEES e'
      ''
      'where'
      '  (e.IS_INACTIVE = 0) and'
      ''
      '  ( (:SPECIAL_PROFESSION_EMPLOYEE is null) or'
      '    (:SPECIAL_PROFESSION_EMPLOYEE = 0) or'
      ''
      '    ( (:SPECIAL_PROFESSION_EMPLOYEE = 1) and'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            EMPLOYEE_PROFESSIONS ep'
      '          where'
      '            (ep.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (ep.PROFESSION_CODE ='
      '              ( select'
      '                  co.MANAGER_OKIDU_PROFESSION_CODE'
      '                from'
      '                  COMMON_OPTIONS co'
      '                where'
      '                  (co.CODE = 1)'
      '              )'
      '            )'
      '        )'
      '      )'
      '    ) or'
      ''
      '    ( (:SPECIAL_PROFESSION_EMPLOYEE = 2) and'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            EMPLOYEE_PROFESSIONS ep'
      '          where'
      '            (ep.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (ep.PROFESSION_CODE ='
      '              ( select'
      '                  co.OKIDU_PROFESSION_CODE'
      '                from'
      '                  COMMON_OPTIONS co'
      '                where'
      '                  (co.CODE = 1)'
      '              )'
      '            )'
      '        )'
      '      )'
      '    ) or'
      ''
      '    ( (:SPECIAL_PROFESSION_EMPLOYEE = 3) and'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            EMPLOYEE_PROFESSIONS ep'
      '          where'
      '            (ep.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (ep.PROFESSION_CODE ='
      '              ( select'
      '                  co.EAM_AUTHORIZE_PROFESSION_CODE'
      '                from'
      '                  COMMON_OPTIONS co'
      '                where'
      '                  (co.CODE = 1)'
      '              )'
      '            )'
      '        )'
      '      )'
      '    ) or'
      ''
      '    ( (:SPECIAL_PROFESSION_EMPLOYEE = 4) and'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            EMPLOYEE_PROFESSIONS ep'
      '          where'
      '            (ep.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (ep.PROFESSION_CODE ='
      '              ( select'
      '                  co.EE_CTRL_MAIN_PROFESSION_CODE'
      '                from'
      '                  COMMON_OPTIONS co'
      '                where'
      '                  (co.CODE = 1)'
      '              )'
      '            )'
      '        )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:REQUIRED_PROFESSION_CODE is null) or'
      '    (:REQUIRED_PROFESSION_CODE = 0) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        EMPLOYEE_PROFESSIONS ep'
      '      where'
      '        (ep.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '        (ep.PROFESSION_CODE = :REQUIRED_PROFESSION_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:REQUIRED_OCC_WORK_DEPT_CODE is null) or'
      '    (:REQUIRED_OCC_WORK_DEPT_CODE = 0) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        OCCUPATION_EMPLOYEES oe,'
      '        OCCUPATION_WORK_DEPTS owd,'
      '        OCC_WORK_DEPT_PRIORITIES owdp,'
      '        DEPT_RELATIONS dr'
      '      where'
      '        (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '        (owd.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      
        '        (owdp.OCC_WORK_DEPT_PRIORITY_CODE = owd.OCC_WORK_DEPT_PR' +
        'IORITY_CODE) and'
      ''
      
        '        (dr.ANCESTOR_DEPT_CODE = :REQUIRED_OCC_WORK_DEPT_CODE) a' +
        'nd'
      '        (dr.DESCENDANT_DEPT_CODE = owd.DEPT_CODE) and'
      ''
      
        '        (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASS' +
        'IGNMENT_END_DATE) and'
      '        (owdp.ORG_WORK_LEVEL_CODE = %owl_EXECUTING) and'
      '        (owdp.ORG_WORK_MODE_CODE = %owm_EXPLOITATION)'
      '    )'
      '  ) and'
      ''
      '  ( (:SHOW_USERS_ONLY is null) or'
      '    (:SHOW_USERS_ONLY = 0) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        USERS u'
      '      where'
      '        (u.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '        (u.IS_DISABLED = 0)'
      '    )'
      '  )'
      ''
      
        '-- bez order by - ima DefaultOrder v servera za da ne misli v or' +
        'akala')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'owl_EXECUTING'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'owm_EXPLOITATION'
        ParamType = ptInput
        Value = '1'
      end>
    DefaultOrder.Fields = 'EMPLOYEE_NAME'
    MacroParams = <>
    CustomParams = <>
    Left = 656
    Top = 72
    object qryEmployeeFrameEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmployeeFrameEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object qryEmployeeFrameEMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'EMPLOYEE_ABBREV'
      Size = 5
    end
    object qryEmployeeFrameDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryEmployeeFrameDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryEmployeeFrameHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryEmployeeFrameEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
  end
  object prvOccupationsAndEmployeesDetail: TDataSetProvider
    DataSet = qryOccupationsAndEmployeesDetail
    UpdateMode = upWhereKeyOnly
    OnGetData = prvOccupationsAndEmployeesDetailGetData
    Left = 624
    Top = 408
  end
  object qryOccupationsAndEmployeesDetail: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STATUS_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  o.OCCUPATION_CODE,'
      
        '  Coalesce(oe.ASSIGNMENT_BEGIN_DATE, o.OCCUPATION_BEGIN_DATE) as' +
        ' BEGIN_DATE,'
      
        '  Coalesce(oe.ASSIGNMENT_END_DATE, o.OCCUPATION_END_DATE) as END' +
        '_DATE,'
      ''
      '  Nvl2(oe.EMPLOYEE_CODE, 1, 0) as IS_OCCUPIED,'
      ''
      '  oe.OCCUPATION_EMPLOYEE_CODE,'
      '  oe.EMPLOYEE_CODE,'
      ''
      '  ( select'
      '     c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as COMPANY_NO,'
      ''
      '  Nvl2(oe.EMPLOYEE_CODE,'
      
        '    (e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39' ' +
        '|| e.LAST_NAME),'
      '    null'
      '  ) as EMPLOYEE_NAME,'
      ''
      '  e.COMPANY_CODE as EMPLOYEE_COMPANY_CODE,'
      ''
      '  e.DOC_BRANCH_CODE as EMPLOYEE_DOC_BRANCH_CODE,'
      '  e.DOC_CODE as EMPLOYEE_DOC_CODE,'
      '  %HAS_DOC_ITEMS[e] as EMPLOYEE_HAS_DOC,'
      ''
      '  ( select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = e.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = e.DOC_CODE)'
      '  ) as E_DOC_EMPTINESS_REQ_CODE,'
      ''
      '  ( select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = e.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = e.DOC_CODE)'
      '  ) as E_DOC_IS_COMPLETE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = e.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = e.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as E_ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = e.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = e.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.AUTHORIZE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as E_UNAUTHORIZED_ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = e.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = e.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as E_UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  NullIf('
      '    ( select'
      '        /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '        Sum(det.DISC_EVENT_TYPE_SIGN * detp.RATING)'
      '      from'
      '        EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '        DISC_EVENT_TYPES det,'
      '        DISC_EVENT_TYPE_PERIODS detp'
      '      where'
      '        (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '        (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE) an' +
        'd'
      
        '        (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE) a' +
        'nd'
      '        (ede.STORNO_EMPLOYEE_CODE is null) and'
      '        (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      '        (det.DISC_EVENT_TYPE_SIGN < 0) and'
      
        '        (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE and d' +
        'etp.END_DATE) and'
      
        '        (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_EVENT_D' +
        'ATE-1, detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_UNIT_COUNT) ' +
        '>= ContextDate)'
      '    ),'
      '    0'
      '  ) as EMP_NEGATIVE_DISCIPLINE_RATING,'
      ''
      '  NullIf('
      '    ( select'
      '        /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '        Sum(det.DISC_EVENT_TYPE_SIGN * detp.RATING)'
      '      from'
      '        EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '        DISC_EVENT_TYPES det,'
      '        DISC_EVENT_TYPE_PERIODS detp'
      '      where'
      '        (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '        (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE) an' +
        'd'
      
        '        (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE) a' +
        'nd'
      '        (ede.STORNO_EMPLOYEE_CODE is null) and'
      '        (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      '        (det.DISC_EVENT_TYPE_SIGN > 0) and'
      
        '        (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE and d' +
        'etp.END_DATE) and'
      
        '        (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_EVENT_D' +
        'ATE-1, detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_UNIT_COUNT) ' +
        '>= ContextDate)'
      '    ),'
      '    0'
      '  ) as EMP_POSITIVE_DISCIPLINE_RATING,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      OCCUPATION_EMP_PROFESSIONS oep'
      '    where'
      
        '      (oep.OCCUPATION_EMPLOYEE_CODE = oe.OCCUPATION_EMPLOYEE_COD' +
        'E)'
      '  ) as EMPLOYEE_OCCUPATION_PROF_COUNT,'
      ''
      
        '  %OE_MASTERED_PRC_ACTIONS_COUNT[oe~:STATUS_DATE] as OE_MASTERED' +
        '_PRC_ACTIONS_COUNT,'
      ''
      
        '  Trunc(Months_Between(oe.ASSIGNMENT_BEGIN_DATE, per.BIRTH_DATE)' +
        '/12) as EMPLOYEE_BEGIN_AGE_YEARS,'
      
        '  Trunc(Months_Between(oe.ASSIGNMENT_END_DATE, per.BIRTH_DATE)/1' +
        '2) as EMPLOYEE_END_AGE_YEARS,'
      ''
      '  oe.OE_REGIME_CODE,'
      '  ( select'
      '      oer.OE_REGIME_NAME'
      '    from'
      '      OCCUPATION_EMPLOYEE_REGIMES oer'
      '    where'
      '      (oer.OE_REGIME_CODE = oe.OE_REGIME_CODE)'
      '  ) as OE_REGIME_NAME,'
      ''
      '  o.OCCUPATION_BEGIN_DATE,'
      '  o.OCCUPATION_END_DATE,'
      ''
      '  oe.SALARY,'
      '  ( select'
      '      tdu.THE_DATE_UNIT_NAME'
      '    from'
      '      THE_DATE_UNITS tdu'
      '    where'
      '      (tdu.THE_DATE_UNIT_CODE = oe.SALARY_DATE_UNIT_CODE)'
      '  ) as SALARY_DATE_UNIT_NAME,'
      ''
      '  oe.DOC_BRANCH_CODE,'
      '  oe.DOC_CODE,'
      '  %HAS_DOC_ITEMS[oe] as HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = oe.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = oe.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQ_CODE,'
      ''
      '  ( select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = oe.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = oe.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = oe.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = oe.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = oe.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = oe.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.AUTHORIZE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAUTHORIZED_ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = oe.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = oe.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT'
      ''
      'from'
      '  OCCUPATIONS o,'
      '  OCCUPATION_EMPLOYEES oe,'
      '  EMPLOYEES e,'
      '  PERSONS per'
      ''
      'where'
      '  (o.OCCUPATION_CODE = oe.OCCUPATION_CODE(+)) and'
      '  (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE(+)) and'
      '  (e.COMPANY_CODE = per.COMPANY_CODE(+)) and'
      '  (o.OCCUPATION_CODE = :OCCUPATION_CODE) and'
      ''
      
        '  (:STATUS_DATE = :STATUS_DATE)  -- za da se wijda parametyra ( ' +
        'izpolzwa se w makroto OE_MASTERED_PRC_ACTIONS_COUNT )'
      ''
      'order by'
      '  BEGIN_DATE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'OE_MASTERED_PRC_ACTIONS_COUNT[oe~:STATUS_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[oe]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'OCCUPATION_EMPLOYEES_FOR_EDIT'
    Left = 624
    Top = 456
    object qryOccupationsAndEmployeesDetailOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationsAndEmployeesDetailOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object qryOccupationsAndEmployeesDetailBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryOccupationsAndEmployeesDetailEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryOccupationsAndEmployeesDetailIS_OCCUPIED: TAbmesFloatField
      FieldName = 'IS_OCCUPIED'
    end
    object qryOccupationsAndEmployeesDetailEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryOccupationsAndEmployeesDetailEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object qryOccupationsAndEmployeesDetailEMPLOYEE_COMPANY_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_COMPANY_CODE'
    end
    object qryOccupationsAndEmployeesDetailEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_BRANCH_CODE'
    end
    object qryOccupationsAndEmployeesDetailEMPLOYEE_DOC_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_CODE'
    end
    object qryOccupationsAndEmployeesDetailEMPLOYEE_HAS_DOC: TAbmesFloatField
      FieldName = 'EMPLOYEE_HAS_DOC'
    end
    object qryOccupationsAndEmployeesDetailE_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField
      FieldName = 'E_DOC_EMPTINESS_REQ_CODE'
    end
    object qryOccupationsAndEmployeesDetailE_DOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'E_DOC_IS_COMPLETE'
    end
    object qryOccupationsAndEmployeesDetailE_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'E_ACTIVE_DI_COUNT'
    end
    object qryOccupationsAndEmployeesDetailE_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'E_UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object qryOccupationsAndEmployeesDetailE_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'E_UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryOccupationsAndEmployeesDetailEMP_NEGATIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'EMP_NEGATIVE_DISCIPLINE_RATING'
    end
    object qryOccupationsAndEmployeesDetailEMP_POSITIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'EMP_POSITIVE_DISCIPLINE_RATING'
    end
    object qryOccupationsAndEmployeesDetailEMPLOYEE_OCCUPATION_PROF_COUNT: TAbmesFloatField
      FieldName = 'EMPLOYEE_OCCUPATION_PROF_COUNT'
    end
    object qryOccupationsAndEmployeesDetailEMPLOYEE_BEGIN_AGE_YEARS: TAbmesFloatField
      FieldName = 'EMPLOYEE_BEGIN_AGE_YEARS'
    end
    object qryOccupationsAndEmployeesDetailEMPLOYEE_END_AGE_YEARS: TAbmesFloatField
      FieldName = 'EMPLOYEE_END_AGE_YEARS'
    end
    object qryOccupationsAndEmployeesDetailOE_REGIME_CODE: TAbmesFloatField
      FieldName = 'OE_REGIME_CODE'
    end
    object qryOccupationsAndEmployeesDetailOE_REGIME_NAME: TAbmesWideStringField
      FieldName = 'OE_REGIME_NAME'
    end
    object qryOccupationsAndEmployeesDetailOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OCCUPATION_BEGIN_DATE'
    end
    object qryOccupationsAndEmployeesDetailOCCUPATION_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'OCCUPATION_END_DATE'
    end
    object qryOccupationsAndEmployeesDetailCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object qryOccupationsAndEmployeesDetailSALARY: TAbmesFloatField
      FieldName = 'SALARY'
    end
    object qryOccupationsAndEmployeesDetailSALARY_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'SALARY_DATE_UNIT_NAME'
      Size = 50
    end
    object qryOccupationsAndEmployeesDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryOccupationsAndEmployeesDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryOccupationsAndEmployeesDetailHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object qryOccupationsAndEmployeesDetailDOC_EMPTINESS_REQ_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQ_CODE'
    end
    object qryOccupationsAndEmployeesDetailDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object qryOccupationsAndEmployeesDetailACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object qryOccupationsAndEmployeesDetailUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object qryOccupationsAndEmployeesDetailUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryOccupationsAndEmployeesDetailOE_MASTERED_PRC_ACTIONS_COUNT: TAbmesFloatField
      FieldName = 'OE_MASTERED_PRC_ACTIONS_COUNT'
    end
  end
  object qryOccupationShifts: TAbmesSQLQuery
    DataSource = dsOccupation
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  os.OCCUPATION_SHIFT_CODE,'
      '  os.OCCUPATION_CODE,'
      '  os.SHIFT_CODE,'
      '  os.BEGIN_DATE,'
      '  os.END_DATE,'
      '  os.AFFECTS_EMP_AVAILABILITY,'
      ''
      '  case'
      '    when (:THE_DATE between os.BEGIN_DATE and os.END_DATE) then'
      '      ( select'
      '          s.SHIFT_ABBREV as SHIFT_IDENTIFIER'
      '        from'
      '          SHIFTS s'
      '        where'
      '          (s.SHIFT_CODE = os.SHIFT_CODE)'
      '      )'
      '  end as CURRENT_SHIFT_IDENTIFIER'
      ''
      'from'
      '  OCCUPATION_SHIFTS os'
      ''
      'where'
      '  (os.OCCUPATION_CODE = :OCCUPATION_CODE)'
      ''
      'order by'
      '  os.BEGIN_DATE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'OCCUPATION_SHIFTS_FOR_EDIT'
    Left = 360
    Top = 640
    object qryOccupationShiftsOCCUPATION_SHIFT_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_SHIFT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationShiftsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object qryOccupationShiftsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object qryOccupationShiftsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryOccupationShiftsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryOccupationShiftsAFFECTS_EMP_AVAILABILITY: TAbmesFloatField
      FieldName = 'AFFECTS_EMP_AVAILABILITY'
    end
    object qryOccupationShiftsCURRENT_SHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CURRENT_SHIFT_IDENTIFIER'
      ProviderFlags = []
      Size = 5
    end
  end
  object qryNewOccupationShiftCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_OCCUPATION_SHIFTS.NextVal as NEW_OCCUPATION_SHIFT_CODE'
      '  '
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 264
    Top = 480
    object qryNewOccupationShiftCodeNEW_OCCUPATION_SHIFT_CODE: TAbmesFloatField
      FieldName = 'NEW_OCCUPATION_SHIFT_CODE'
    end
  end
  object qryUpdEmployeeDisciplineEvent: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_COMMENT'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORNO_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  EMP_DISCIPLINE_EVENTS_FOR_EDIT ede'
      'set'
      '  ede.DISC_EVENT_TYPE_CODE = :DISC_EVENT_TYPE_CODE, '
      '  ede.DISCIPLINE_EVENT_COMMENT = :DISCIPLINE_EVENT_COMMENT, '
      '  ede.DISCIPLINE_EVENT_DATE = :DISCIPLINE_EVENT_DATE, '
      
        '  ede.DISCIPLINE_EVENT_STATE_CODE = :DISCIPLINE_EVENT_STATE_CODE' +
        ','
      '  ede.AUTHORIZE_EMPLOYEE_CODE = :AUTHORIZE_EMPLOYEE_CODE,'
      '  ede.DOC_BRANCH_CODE = :DOC_BRANCH_CODE, '
      '  ede.DOC_CODE = :DOC_CODE,'
      '  ede.CREATE_EMPLOYEE_CODE = :CREATE_EMPLOYEE_CODE,'
      '  ede.CREATE_DATE = :CREATE_DATE,'
      '  ede.CREATE_TIME = :CREATE_TIME,'
      '  ede.STORNO_EMPLOYEE_CODE = :STORNO_EMPLOYEE_CODE'
      'where'
      '  (ede.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '  (ede.DISCIPLINE_EVENT_CODE = :DISCIPLINE_EVENT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 192
  end
  object prvOAEDisciplineEvents: TDataSetProvider
    DataSet = qryOAEDisciplineEvents
    Options = [poReadOnly]
    Left = 672
    Top = 600
  end
  object dsProfession: TDataSource
    DataSet = qryProfession
    Left = 264
    Top = 240
  end
  object qryProfessionPeriods: TAbmesSQLQuery
    DataSource = dsProfession
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  pper.PROFESSION_PERIOD_CODE,'
      '  pper.PROFESSION_CODE,'
      '  pper.BEGIN_DATE,'
      '  pper.END_DATE,'
      '  pper.HOUR_PRICE,'
      '  pper.USED_BY_EMPLOYEES,'
      '  pper.USED_BY_TEAMS,'
      ''
      '  case'
      '    when (pper.END_DATE < ContextDate) then 1'
      '    else 0'
      '  end as IS_PAST,'
      ''
      '  case'
      
        '    when (ContextDate between pper.BEGIN_DATE and pper.END_DATE)' +
        ' then 1'
      '    else 0'
      '  end as IS_PRESENT,'
      ''
      '  case'
      '    when (ContextDate < pper.BEGIN_DATE) then 1'
      '    else 0'
      '  end as IS_FUTURE'
      ''
      'from'
      '  PROFESSION_PERIODS pper'
      ''
      'where'
      '  (pper.PROFESSION_CODE = :PROFESSION_CODE)'
      ''
      'order by'
      '  pper.BEGIN_DATE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PROFESSION_PERIODS_FOR_EDIT'
    Left = 264
    Top = 288
    object qryProfessionPeriodsPROFESSION_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_PERIOD_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProfessionPeriodsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object qryProfessionPeriodsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryProfessionPeriodsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryProfessionPeriodsHOUR_PRICE: TAbmesFloatField
      FieldName = 'HOUR_PRICE'
    end
    object qryProfessionPeriodsUSED_BY_EMPLOYEES: TAbmesFloatField
      FieldName = 'USED_BY_EMPLOYEES'
    end
    object qryProfessionPeriodsUSED_BY_TEAMS: TAbmesFloatField
      FieldName = 'USED_BY_TEAMS'
    end
    object qryProfessionPeriodsIS_PAST: TAbmesFloatField
      FieldName = 'IS_PAST'
      ProviderFlags = []
    end
    object qryProfessionPeriodsIS_PRESENT: TAbmesFloatField
      FieldName = 'IS_PRESENT'
      ProviderFlags = []
    end
    object qryProfessionPeriodsIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      ProviderFlags = []
    end
  end
  object qryNewProfessionPeriodCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_PROFESSION_PERIODS.NextVal as NEW_PROFESSION_PERIOD_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 352
    Top = 304
    object qryNewProfessionPeriodCodeNEW_PROFESSION_PERIOD_CODE: TAbmesFloatField
      FieldName = 'NEW_PROFESSION_PERIOD_CODE'
    end
  end
  object prvDisciplineEventStates: TDataSetProvider
    DataSet = qryEmployeeDisciplineStates
    Options = [poReadOnly, poUseQuoteChar]
    Left = 56
    Top = 424
  end
  object qryEmployeeDisciplineStates: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  des.DISCIPLINE_EVENT_STATE_CODE,'
      '  des.DISCIPLINE_EVENT_STATE_NAME'
      'from'
      '  DISCIPLINE_EVENT_STATES des'
      'order by'
      '  des.DISCIPLINE_EVENT_STATE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 472
    object qryEmployeeDisciplineStatesDISCIPLINE_EVENT_STATE_CODE: TAbmesFloatField
      FieldName = 'DISCIPLINE_EVENT_STATE_CODE'
    end
    object qryEmployeeDisciplineStatesDISCIPLINE_EVENT_STATE_NAME: TAbmesWideStringField
      FieldName = 'DISCIPLINE_EVENT_STATE_NAME'
      Size = 100
    end
  end
  object qryGetNewEmployeeCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_EMPLOYEES.NextVal as NEW_EMPLOYEE_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 72
    Top = 688
    object qryGetNewEmployeeCodeNEW_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'NEW_EMPLOYEE_CODE'
    end
  end
  object qryOccupationSalaries: TAbmesSQLQuery
    DataSource = dsOccupation
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  os.OCCUPATION_SALARY_CODE,'
      '  os.OCCUPATION_CODE,'
      '  os.BEGIN_DATE,'
      '  os.END_DATE,'
      '  os.BASE_SALARY,'
      '  os.DATE_UNIT_CODE,'
      '  os.MIN_SALARY_RATIO_COEF,'
      '  os.MAX_SALARY_RATIO_COEF,'
      ''
      '  case'
      '    when (:THE_DATE between os.BEGIN_DATE and os.END_DATE) then'
      '      os.BASE_SALARY'
      '  end as CURRENT_BASE_SALARY,'
      ''
      '  case'
      '    when (:THE_DATE between os.BEGIN_DATE and os.END_DATE) then'
      '      ( select'
      '          tdu.THE_DATE_UNIT_NAME'
      '        from'
      '          THE_DATE_UNITS tdu'
      '        where'
      '          (tdu.THE_DATE_UNIT_CODE = os.DATE_UNIT_CODE)'
      '      )'
      '  end as CURRENT_DATE_UNIT_NAME,'
      ''
      '  case'
      '    when (:THE_DATE between os.BEGIN_DATE and os.END_DATE) then'
      '      os.MIN_SALARY_RATIO_COEF'
      '  end as CURRENT_MIN_SALARY_RATIO_COEF,'
      ''
      '  case'
      '    when (:THE_DATE between os.BEGIN_DATE and os.END_DATE) then'
      '      os.MAX_SALARY_RATIO_COEF'
      '  end as CURRENT_MAX_SALARY_RATIO_COEF'
      ''
      'from'
      '  OCCUPATION_SALARIES os'
      ''
      'where'
      '  (os.OCCUPATION_CODE = :OCCUPATION_CODE)'
      ''
      'order by'
      '  os.BEGIN_DATE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'OCCUPATION_SALARIES_FOR_EDIT'
    Left = 360
    Top = 688
    object qryOccupationSalariesOCCUPATION_SALARY_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_SALARY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationSalariesOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object qryOccupationSalariesBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryOccupationSalariesEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryOccupationSalariesBASE_SALARY: TAbmesFloatField
      FieldName = 'BASE_SALARY'
    end
    object qryOccupationSalariesDATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DATE_UNIT_CODE'
    end
    object qryOccupationSalariesMIN_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'MIN_SALARY_RATIO_COEF'
    end
    object qryOccupationSalariesMAX_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'MAX_SALARY_RATIO_COEF'
    end
    object qryOccupationSalariesCURRENT_BASE_SALARY: TAbmesFloatField
      FieldName = 'CURRENT_BASE_SALARY'
      ProviderFlags = []
    end
    object qryOccupationSalariesCURRENT_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'CURRENT_DATE_UNIT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryOccupationSalariesCURRENT_MIN_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'CURRENT_MIN_SALARY_RATIO_COEF'
      ProviderFlags = []
    end
    object qryOccupationSalariesCURRENT_MAX_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'CURRENT_MAX_SALARY_RATIO_COEF'
      ProviderFlags = []
    end
  end
  object qryNewOccupationSalaryCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_OCCUPATION_SALARIES.NextVal as NEW_OCCUPATION_SALARY_CODE'
      '  '
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 216
    Top = 680
    object qryNewOccupationSalaryCodeNEW_OCCUPATION_SALARY_CODE: TAbmesFloatField
      FieldName = 'NEW_OCCUPATION_SALARY_CODE'
    end
  end
  object qryGetEmployeeShiftCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  os.SHIFT_CODE'
      'from'
      '  OCCUPATION_EMPLOYEES oe,'
      '  OCCUPATIONS o,'
      '  OCCUPATION_SHIFTS os'
      'where'
      '  (oe.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '  (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '  (o.IS_MAIN = 1) and'
      '  (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      
        '  (:THE_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMENT_' +
        'END_DATE) and  '
      '  (:THE_DATE between os.BEGIN_DATE and os.END_DATE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 496
    Top = 696
    object qryGetEmployeeShiftCodeSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
  end
  object qryDiscEventTypePeriods: TAbmesSQLQuery
    DataSource = dsDiscEventType
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  detp.DISC_EVENT_TYPE_PERIOD_CODE,'
      '  detp.DISC_EVENT_TYPE_CODE,'
      '  detp.BEGIN_DATE,'
      '  detp.END_DATE,'
      '  detp.ACTIVE_DATE_UNIT_COUNT,'
      '  detp.ACTIVE_DATE_UNIT_CODE,'
      '  detp.RATING'
      ''
      'from'
      '  DISC_EVENT_TYPE_PERIODS detp'
      ''
      'where'
      '  (detp.DISC_EVENT_TYPE_CODE = :DISC_EVENT_TYPE_CODE)'
      ''
      'order by'
      '  detp.BEGIN_DATE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DISC_EVENT_TYPE_PER_FOR_EDIT'
    Left = 168
    Top = 784
    object qryDiscEventTypePeriodsDISC_EVENT_TYPE_PERIOD_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_PERIOD_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDiscEventTypePeriodsDISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_CODE'
    end
    object qryDiscEventTypePeriodsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryDiscEventTypePeriodsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryDiscEventTypePeriodsACTIVE_DATE_UNIT_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DATE_UNIT_COUNT'
    end
    object qryDiscEventTypePeriodsACTIVE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'ACTIVE_DATE_UNIT_CODE'
    end
    object qryDiscEventTypePeriodsRATING: TAbmesFloatField
      FieldName = 'RATING'
    end
  end
  object dsDiscEventType: TDataSource
    DataSet = qryDiscEventType
    Left = 168
    Top = 736
  end
  object qryDiscEventType: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  det.DISC_EVENT_TYPE_CODE,'
      '  det.PARENT_DISC_EVENT_TYPE_CODE,'
      '  det.DISC_EVENT_TYPE_LOCAL_NO,'
      '  det.NAME,'
      '  det.SHORT_NAME,'
      '  det.IS_GROUP,'
      '  det.DOC_BRANCH_CODE,'
      '  det.DOC_CODE,'
      '  %HAS_DOC_ITEMS[det] as HAS_DOC_ITEMS,'
      '  det.DISC_EVENT_TYPE_SIGN,'
      '  det.COLOR,'
      '  det.BACKGROUND_COLOR,'
      ''
      '  Decode('
      '    det.PARENT_DISC_EVENT_TYPE_CODE,'
      '    1,'
      '    null,'
      
        '    Cast(MiscUtils.GetDiscEventTypeFullNo(det.PARENT_DISC_EVENT_' +
        'TYPE_CODE) as Varchar2(100 char))'
      '  ) as PARENT_FULL_NO'
      ''
      'from'
      '  DISC_EVENT_TYPES det'
      ''
      'where'
      '  (det.DISC_EVENT_TYPE_CODE = :DISC_EVENT_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[det]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DISC_EVENT_TYPES_FOR_EDIT'
    AfterProviderStartTransaction = qryDiscEventTypeAfterProviderStartTransaction
    Left = 56
    Top = 784
    object qryDiscEventTypeDISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDiscEventTypePARENT_DISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'PARENT_DISC_EVENT_TYPE_CODE'
    end
    object qryDiscEventTypeDISC_EVENT_TYPE_LOCAL_NO: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_LOCAL_NO'
    end
    object qryDiscEventTypeNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 100
    end
    object qryDiscEventTypeSHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
      Size = 100
    end
    object qryDiscEventTypeIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
    end
    object qryDiscEventTypeDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDiscEventTypeDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDiscEventTypeHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryDiscEventTypeDISC_EVENT_TYPE_SIGN: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_SIGN'
    end
    object qryDiscEventTypeCOLOR: TAbmesFloatField
      FieldName = 'COLOR'
    end
    object qryDiscEventTypeBACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'BACKGROUND_COLOR'
    end
    object qryDiscEventTypePARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
  end
  object prvDiscEventType: TDataSetProvider
    DataSet = qryDiscEventType
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = prvDiscEventTypeBeforeApplyUpdates
    AfterApplyUpdates = prvDiscEventTypeAfterApplyUpdates
    Left = 56
    Top = 736
  end
  object qryGetNewDiscEventTypeCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_DISC_EVENT_TYPES.NextVal as NEW_DISC_EVENT_TYPE_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 784
    object qryGetNewDiscEventTypeCodeNEW_DISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'NEW_DISC_EVENT_TYPE_CODE'
    end
  end
  object qryGetNewDiscEventTypeLocalNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARENT_DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(det.DISC_EVENT_TYPE_LOCAL_NO), 0) + 1) as NEW_DI' +
        'SC_EVENT_TYPE_LOCAL_NO'
      'from'
      '  DISC_EVENT_TYPES det'
      'where'
      
        '  (det.PARENT_DISC_EVENT_TYPE_CODE = :PARENT_DISC_EVENT_TYPE_COD' +
        'E)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 592
    Top = 760
    object qryGetNewDiscEventTypeLocalNoNEW_DISC_EVENT_TYPE_LOCAL_NO: TAbmesFloatField
      FieldName = 'NEW_DISC_EVENT_TYPE_LOCAL_NO'
    end
  end
  object qryGetNewDiscEventTypePeriodCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  seq_DISC_EVENT_TYPE_PERIODS.NextVal as NEW_DISC_EVENT_TYPE_PER' +
        '_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 728
    Top = 776
    object qryGetNewDiscEventTypePeriodCodeNEW_DISC_EVENT_TYPE_PER_CODE: TAbmesFloatField
      FieldName = 'NEW_DISC_EVENT_TYPE_PER_CODE'
    end
  end
  object prvDisciplineEvents: TDataSetProvider
    DataSet = qryDisciplineEvents
    UpdateMode = upWhereKeyOnly
    Left = 656
    Top = 648
  end
  object qryDisciplineEvents: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_DISC_EVENT_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_DISC_EVENT_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
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
        Name = 'MAIN_OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHOSEN_MAIN_OCCUPATION_DEPT_ONLY'
        ParamType = ptInput
        Value = 0.000000000000000000
      end
      item
        DataType = ftTimeStamp
        Name = 'DISCIPLINE_EVENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DISCIPLINE_EVENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DISCIPLINE_EVENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DISCIPLINE_EVENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORNO_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORNO_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORNO_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORNO_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORNO_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORNO_EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  /*+ INDEX(det) */'
      '  ede.EMPLOYEE_CODE,'
      '  ede.DISCIPLINE_EVENT_CODE,'
      '  ede.DISC_EVENT_TYPE_CODE,'
      ''
      '  det.NO_AS_FORMATED_TEXT as DET_NO_AS_FORMATED_TEXT,'
      '  det.NAME as DISC_EVENT_TYPE_NAME,'
      '  det.DOC_BRANCH_CODE as DET_DOC_BRANCH_CODE,'
      '  det.DOC_CODE as DET_DOC_CODE,'
      '  det.HAS_DOC_ITEMS as DET_HAS_DOC_ITEMS,'
      '  det.COLOR as DET_COLOR,'
      '  det.BACKGROUND_COLOR as DET_BACKGROUND_COLOR,'
      ''
      '  Nvl2(ede.STORNO_EMPLOYEE_CODE, 5,'
      '    Decode(ede.DISCIPLINE_EVENT_STATE_CODE,'
      '      1,'
      '      case'
      
        '        when (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_EV' +
        'ENT_DATE - 1,'
      
        '                detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_UNI' +
        'T_COUNT) >= ContextDate) then 1'
      '      else'
      '        2'
      '      end,'
      '      ede.DISCIPLINE_EVENT_STATE_CODE + 1'
      '    )'
      '  ) as DISC_EVENT_STATUS_CODE,'
      ''
      '  ede.DISCIPLINE_EVENT_DATE,'
      ''
      '  ( select'
      '     c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_NO,'
      ''
      
        '  (e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39' ||' +
        ' e.LAST_NAME) as EMPLOYEE_NAME,'
      ''
      '  e.DOC_BRANCH_CODE as EMPLOYEE_DOC_BRANCH_CODE,'
      '  e.DOC_CODE as EMPLOYEE_DOC_CODE,'
      '  %HAS_DOC_ITEMS[e] as EMPLOYEE_HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      ( select'
      
        '          (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETT' +
        'ER) as DEPT_IDENTIFIER'
      '        from'
      '          DEPTS d,'
      '          DEPT_TYPES dt'
      '        where'
      '          (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '          (d.DEPT_CODE = o.DEPT_CODE)'
      '      ) as MAIN_OCC_DEPT_IDENTIFIER'
      '    from'
      '      OCCUPATION_EMPLOYEES oe,'
      '      OCCUPATIONS o'
      '    where'
      '      (oe.EMPLOYEE_CODE = ede.EMPLOYEE_CODE) and'
      
        '      (ede.DISCIPLINE_EVENT_DATE between oe.ASSIGNMENT_BEGIN_DAT' +
        'E and oe.ASSIGNMENT_END_DATE) and'
      ''
      '      (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      
        '      (oe.ASSIGNMENT_BEGIN_DATE between o.OCCUPATION_BEGIN_DATE ' +
        'and o.OCCUPATION_END_DATE) and'
      '      (o.IS_MAIN = 1)'
      '  ) as MAIN_OCC_DEPT_IDENTIFIER,'
      ''
      
        '  (detp.RATING * det.DISC_EVENT_TYPE_SIGN) as DISCIPLINE_EVENT_R' +
        'ATING,'
      '  ede.DISCIPLINE_EVENT_COMMENT,'
      ''
      '  ( select'
      
        '      (ae.FIRST_NAME || '#39' '#39' || SubStr(ae.MIDDLE_NAME, 1, 1) || '#39 +
        '. '#39' || ae.LAST_NAME)'
      '    from'
      '      EMPLOYEES ae'
      '    where'
      '      (ae.EMPLOYEE_CODE = ede.AUTHORIZE_EMPLOYEE_CODE)'
      '  ) as AUTHORIZE_EMPLOYEE_NAME,'
      ''
      '  ( select'
      
        '      (ce.FIRST_NAME || '#39' '#39' || SubStr(ce.MIDDLE_NAME, 1, 1) || '#39 +
        '. '#39' || ce.LAST_NAME)'
      '    from'
      '      EMPLOYEES ce'
      '    where'
      '      (ce.EMPLOYEE_CODE = ede.CREATE_EMPLOYEE_CODE)'
      '  ) as CREATE_EMPLOYEE_ABBREV_NAME,'
      '  ede.CREATE_DATE,'
      ''
      '  ( select'
      
        '      (se.FIRST_NAME || '#39' '#39' || SubStr(se.MIDDLE_NAME, 1, 1) || '#39 +
        '. '#39' || se.LAST_NAME)'
      '    from'
      '      EMPLOYEES se'
      '    where'
      '      (se.EMPLOYEE_CODE = ede.STORNO_EMPLOYEE_CODE)'
      '  ) as STORNO_EMPLOYEE_ABBREV_NAME,'
      '  ede.STORNO_DATE,'
      ''
      '  ede.DOC_BRANCH_CODE as DOC_BRANCH_CODE,'
      '  ede.DOC_CODE as DOC_CODE,'
      '  %HAS_DOC_ITEMS[ede] as HAS_DOC_ITEMS'
      ''
      'from'
      '  EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '  ( select'
      '      detx.DISC_EVENT_TYPE_CODE,'
      
        '      Cast(MiscUtils.GetDiscEventTypeFullNo(detx.DISC_EVENT_TYPE' +
        '_CODE, -1) as Varchar2(50 char)) as NO_AS_FORMATED_TEXT,'
      '      detx.NAME,'
      '      detx.DISC_EVENT_TYPE_SIGN,'
      '      detx.DOC_BRANCH_CODE,'
      '      detx.DOC_CODE,'
      '     %HAS_DOC_ITEMS[detx] as HAS_DOC_ITEMS,'
      '      detx.COLOR,'
      '      detx.BACKGROUND_COLOR'
      '    from'
      '      DISC_EVENT_TYPES detx'
      '    order by'
      '      detx.DISC_EVENT_TYPE_CODE'
      '  ) det,'
      '  DISC_EVENT_TYPE_PERIODS detp,'
      '  EMPLOYEES e'
      ''
      'where'
      '  (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE) and'
      ''
      '  (ede.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE(+)) and'
      
        '  (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE(+) and detp' +
        '.END_DATE(+)) and'
      ''
      '  (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      ''
      '  ( Nvl2(ede.STORNO_EMPLOYEE_CODE, 5,'
      '      Decode(ede.DISCIPLINE_EVENT_STATE_CODE,'
      '        1,'
      '        case'
      
        '          when (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_' +
        'EVENT_DATE - 1,'
      
        '                  detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_U' +
        'NIT_COUNT) >= :THE_DATE) then 1'
      '        else'
      '          2'
      '        end,'
      '        ede.DISCIPLINE_EVENT_STATE_CODE + 1'
      '      )'
      
        '    ) between :MIN_DISC_EVENT_STATUS_CODE and :MAX_DISC_EVENT_ST' +
        'ATUS_CODE'
      '  ) and'
      '  '
      '  ( (:DISC_EVENT_TYPE_CODE is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        DISC_EVENT_TYPE_RELATIONS detr'
      '      where'
      '        (detr.ANCESTOR_DET_CODE = :DISC_EVENT_TYPE_CODE) and'
      '        (detr.DESCENDANT_DET_CODE = ede.DISC_EVENT_TYPE_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:EMPLOYEE_CODE is null) or'
      '    (ede.EMPLOYEE_CODE = :EMPLOYEE_CODE) ) and'
      '    '
      '  ( (:MAIN_OCCUPATION_DEPT_CODE is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        OCCUPATION_EMPLOYEES oe'
      '      where'
      '        (oe.EMPLOYEE_CODE = ede.EMPLOYEE_CODE) and'
      
        '        (ede.DISCIPLINE_EVENT_DATE between oe.ASSIGNMENT_BEGIN_D' +
        'ATE and oe.ASSIGNMENT_END_DATE) and'
      '        '
      '        exists('
      '          select'
      '            1'
      '          from'
      '            DEPT_RELATIONS dr,'
      '            OCCUPATIONS o'
      '          where'
      '            (dr.DESCENDANT_DEPT_CODE = o.DEPT_CODE) and'
      '            (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      
        '            (oe.ASSIGNMENT_BEGIN_DATE between o.OCCUPATION_BEGIN' +
        '_DATE and o.OCCUPATION_END_DATE) and'
      '            (o.IS_MAIN = 1) and'
      
        '            (dr.ANCESTOR_DEPT_CODE = :MAIN_OCCUPATION_DEPT_CODE)' +
        ' and'
      '            ( (:CHOSEN_MAIN_OCCUPATION_DEPT_ONLY = 0) or'
      '              (dr.ANCESTOR_DEPT_CODE = dr.DESCENDANT_DEPT_CODE)'
      '            )'
      '        )'
      '    )'
      '  ) and'
      '  '
      '  ( (:DISCIPLINE_EVENT_BEGIN_DATE is null) or'
      
        '    (ede.DISCIPLINE_EVENT_DATE >= :DISCIPLINE_EVENT_BEGIN_DATE) ' +
        ') and'
      '    '
      '  ( (:DISCIPLINE_EVENT_END_DATE is null) or'
      
        '    (ede.DISCIPLINE_EVENT_DATE <= :DISCIPLINE_EVENT_END_DATE) ) ' +
        'and'
      '    '
      '  ( (:AUTHORIZE_EMPLOYEE_CODE is null) or'
      
        '    (ede.AUTHORIZE_EMPLOYEE_CODE = :AUTHORIZE_EMPLOYEE_CODE) ) a' +
        'nd'
      ''
      '  ( (:CREATE_BEGIN_DATE is null) or'
      '    (ede.CREATE_DATE >= :CREATE_BEGIN_DATE) ) and'
      '    '
      '  ( (:CREATE_END_DATE is null) or'
      '    (ede.CREATE_DATE <= :CREATE_END_DATE) ) and'
      '    '
      '  ( (:CREATE_EMPLOYEE_CODE is null) or'
      '    (ede.CREATE_EMPLOYEE_CODE = :CREATE_EMPLOYEE_CODE) ) and'
      ''
      '  ( (:STORNO_BEGIN_DATE is null) or'
      '    (ede.STORNO_DATE >= :STORNO_BEGIN_DATE) ) and'
      '    '
      '  ( (:STORNO_END_DATE is null) or'
      '    (ede.STORNO_DATE <= :STORNO_END_DATE) ) and'
      '    '
      '  ( (:STORNO_EMPLOYEE_CODE is null) or'
      '    (ede.STORNO_EMPLOYEE_CODE = :STORNO_EMPLOYEE_CODE) ) '
      '    '
      'order by'
      '  DET_NO_AS_FORMATED_TEXT,'
      '  DISCIPLINE_EVENT_DATE,'
      '  EMPLOYEE_NAME,'
      '  EMPLOYEE_CODE,'
      '  DISCIPLINE_EVENT_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[ede]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[detx]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 656
    Top = 696
    object qryDisciplineEventsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryDisciplineEventsDISCIPLINE_EVENT_CODE: TAbmesFloatField
      FieldName = 'DISCIPLINE_EVENT_CODE'
    end
    object qryDisciplineEventsDISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_CODE'
    end
    object qryDisciplineEventsDET_NO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'DET_NO_AS_FORMATED_TEXT'
      Size = 50
    end
    object qryDisciplineEventsDISC_EVENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DISC_EVENT_TYPE_NAME'
      Size = 100
    end
    object qryDisciplineEventsDET_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DET_DOC_BRANCH_CODE'
    end
    object qryDisciplineEventsDET_DOC_CODE: TAbmesFloatField
      FieldName = 'DET_DOC_CODE'
    end
    object qryDisciplineEventsDET_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DET_HAS_DOC_ITEMS'
    end
    object qryDisciplineEventsDET_COLOR: TAbmesFloatField
      FieldName = 'DET_COLOR'
    end
    object qryDisciplineEventsDET_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'DET_BACKGROUND_COLOR'
    end
    object qryDisciplineEventsDISC_EVENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_STATUS_CODE'
    end
    object qryDisciplineEventsDISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'DISCIPLINE_EVENT_DATE'
    end
    object qryDisciplineEventsEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object qryDisciplineEventsEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object qryDisciplineEventsEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_BRANCH_CODE'
    end
    object qryDisciplineEventsEMPLOYEE_DOC_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_CODE'
    end
    object qryDisciplineEventsEMPLOYEE_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'EMPLOYEE_HAS_DOC_ITEMS'
    end
    object qryDisciplineEventsMAIN_OCC_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_OCC_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryDisciplineEventsDISCIPLINE_EVENT_RATING: TAbmesFloatField
      FieldName = 'DISCIPLINE_EVENT_RATING'
    end
    object qryDisciplineEventsDISCIPLINE_EVENT_COMMENT: TAbmesWideStringField
      FieldName = 'DISCIPLINE_EVENT_COMMENT'
      Size = 100
    end
    object qryDisciplineEventsAUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'AUTHORIZE_EMPLOYEE_NAME'
      Size = 44
    end
    object qryDisciplineEventsCREATE_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_ABBREV_NAME'
      Size = 54
    end
    object qryDisciplineEventsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryDisciplineEventsSTORNO_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField
      FieldName = 'STORNO_EMPLOYEE_ABBREV_NAME'
      Size = 54
    end
    object qryDisciplineEventsSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object qryDisciplineEventsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDisciplineEventsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDisciplineEventsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
  end
  object qryDiscEventTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  det.DISC_EVENT_TYPE_CODE,'
      '  det.PARENT_DISC_EVENT_TYPE_CODE,'
      '  det.DISC_EVENT_TYPE_LOCAL_NO,'
      
        '  Cast(MiscUtils.GetDiscEventTypeFullNo(det.DISC_EVENT_TYPE_CODE' +
        ') as Varchar2(100 char)) as DISC_EVENT_TYPE_FULL_NO,'
      
        '  Cast(MiscUtils.GetDiscEventTypeFullNo(det.DISC_EVENT_TYPE_CODE' +
        ', 1) as Varchar2(100 char)) as DISC_EVENT_TYPE_FMT_FULL_NO,'
      '  det.NAME,'
      '  det.SHORT_NAME,'
      '  det.IS_GROUP,'
      '  det.DOC_BRANCH_CODE,'
      '  det.DOC_CODE,'
      '  %HAS_DOC_ITEMS[det] as HAS_DOC_ITEMS,'
      '  det.DISC_EVENT_TYPE_SIGN,'
      '  %DISC_EVENT_TYPE_IS_INACTIVE[det] as IS_INACTIVE'
      ''
      'from'
      '  DISC_EVENT_TYPES det'
      ''
      'order by'
      '  DISC_EVENT_TYPE_FMT_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[det]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'DISC_EVENT_TYPE_IS_INACTIVE[det]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DISC_EVENT_TYPES_FOR_EDIT'
    Left = 288
    Top = 784
    object qryDiscEventTypesDISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDiscEventTypesPARENT_DISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'PARENT_DISC_EVENT_TYPE_CODE'
    end
    object qryDiscEventTypesDISC_EVENT_TYPE_LOCAL_NO: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_LOCAL_NO'
    end
    object qryDiscEventTypesDISC_EVENT_TYPE_FULL_NO: TAbmesWideStringField
      FieldName = 'DISC_EVENT_TYPE_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryDiscEventTypesDISC_EVENT_TYPE_FMT_FULL_NO: TAbmesWideStringField
      FieldName = 'DISC_EVENT_TYPE_FMT_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryDiscEventTypesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 100
    end
    object qryDiscEventTypesSHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
      Size = 100
    end
    object qryDiscEventTypesIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      FieldValueType = fvtBoolean
    end
    object qryDiscEventTypesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDiscEventTypesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDiscEventTypesHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object qryDiscEventTypesDISC_EVENT_TYPE_SIGN: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_SIGN'
    end
    object qryDiscEventTypesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
  end
  object prvDiscEventTypes: TDataSetProvider
    DataSet = qryDiscEventTypes
    UpdateMode = upWhereKeyOnly
    Left = 288
    Top = 736
  end
  object qryDiscEventTypesPrintTree: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  det.DISC_EVENT_TYPE_CODE as NODE_ID,'
      '  det.PARENT_DISC_EVENT_TYPE_CODE as PARENT_NODE_ID,'
      ''
      
        '  (Cast(MiscUtils.GetDiscEventTypeFullNo(det.DISC_EVENT_TYPE_COD' +
        'E) as Varchar2(50 char)) || '#39' '#39' || det.NAME) as NODE_NAME,'
      
        '  Cast(MiscUtils.GetDiscEventTypeFullNo(det.DISC_EVENT_TYPE_CODE' +
        ', 1) as Varchar2(50 char)) as FORMATED_NODE_NO,'
      ''
      '  (level - 1) as NODE_LEVEL,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DISC_EVENT_TYPES det3'
      '    where'
      
        '      (det3.PARENT_DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CO' +
        'DE) and'
      '      ( (:SHOW_INACTIVE = 1) or'
      '        (%DISC_EVENT_TYPE_IS_INACTIVE[det3] = 0)'
      '      )'
      '  ) as NODE_CHILD_COUNT,'
      ''
      '  Decode('
      '    ( select'
      '        Count(*)'
      '      from'
      '        DISC_EVENT_TYPES det2'
      '      where'
      
        '        (det2.PARENT_DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_' +
        'CODE)'
      '    ),'
      '    0,'
      '    2,'
      '    1'
      '  ) as NODE_TYPE,'
      ''
      '  Decode('
      '    det.DISC_EVENT_TYPE_CODE,'
      '    :DISC_EVENT_TYPE_CODE,'
      '    0,'
      '    Decode('
      '      ( select'
      '          Max(det4.DISC_EVENT_TYPE_LOCAL_NO)'
      '        from'
      '          DISC_EVENT_TYPES det4'
      '        where'
      
        '          (det4.PARENT_DISC_EVENT_TYPE_CODE = det.PARENT_DISC_EV' +
        'ENT_TYPE_CODE) and'
      '          ( (:SHOW_INACTIVE = 1) or'
      '            (%DISC_EVENT_TYPE_IS_INACTIVE[det4] = 0)'
      '          )'
      '      ),'
      '      det.DISC_EVENT_TYPE_LOCAL_NO,'
      '      1,'
      '      0'
      '    )'
      '  ) as IS_LAST_CHILD,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DISC_EVENT_TYPES det1'
      '    where'
      
        '      (det1.PARENT_DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CO' +
        'DE) and'
      ''
      '      ( (:SHOW_INACTIVE = 1) or'
      '        (%DISC_EVENT_TYPE_IS_INACTIVE[det1] = 0)'
      '      )'
      '  ) as HAS_CHILDREN'
      ''
      'from'
      '  DISC_EVENT_TYPES det'
      ''
      'start with'
      '  (det.DISC_EVENT_TYPE_CODE = :DISC_EVENT_TYPE_CODE)'
      ''
      'connect by'
      
        '  (det.PARENT_DISC_EVENT_TYPE_CODE = prior det.DISC_EVENT_TYPE_C' +
        'ODE) and'
      '  ( (:SHOW_INACTIVE = 1) or'
      '    (%DISC_EVENT_TYPE_IS_INACTIVE[det] = 0)'
      '  )'
      ''
      'order by'
      '  FORMATED_NODE_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'DISC_EVENT_TYPE_IS_INACTIVE[det3]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'DISC_EVENT_TYPE_IS_INACTIVE[det4]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'DISC_EVENT_TYPE_IS_INACTIVE[det1]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'DISC_EVENT_TYPE_IS_INACTIVE[det]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 824
    Top = 752
    object qryDiscEventTypesPrintTreeNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
    end
    object qryDiscEventTypesPrintTreePARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object qryDiscEventTypesPrintTreeNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 151
    end
    object qryDiscEventTypesPrintTreeFORMATED_NODE_NO: TAbmesWideStringField
      FieldName = 'FORMATED_NODE_NO'
      Size = 50
    end
    object qryDiscEventTypesPrintTreeNODE_LEVEL: TAbmesFloatField
      FieldName = 'NODE_LEVEL'
    end
    object qryDiscEventTypesPrintTreeNODE_CHILD_COUNT: TAbmesFloatField
      FieldName = 'NODE_CHILD_COUNT'
    end
    object qryDiscEventTypesPrintTreeNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
    object qryDiscEventTypesPrintTreeIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object qryDiscEventTypesPrintTreeHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
  end
  object prvDiscEventTypesPrintTree: TDataSetProvider
    DataSet = qryDiscEventTypesPrintTree
    UpdateMode = upWhereKeyOnly
    Left = 824
    Top = 704
  end
  object qryGetDiscEventTypeIsInstance: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  (1 - det.IS_GROUP) as IS_INSTANCE'
      'from'
      '  DISC_EVENT_TYPES det'
      'where'
      '  (det.DISC_EVENT_TYPE_CODE = :DISC_EVENT_TYPE_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 728
    Top = 728
    object qryGetDiscEventTypeIsInstanceIS_INSTANCE: TAbmesFloatField
      FieldName = 'IS_INSTANCE'
      FieldValueType = fvtBoolean
    end
  end
  object qryGetDiscEventTypeCodeByFullNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_FULL_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  det.DISC_EVENT_TYPE_CODE'
      'from'
      '  DISC_EVENT_TYPES det'
      'where'
      
        '  (MiscUtils.GetDiscEventTypeFullNo(det.DISC_EVENT_TYPE_CODE) = ' +
        ':DISC_EVENT_TYPE_FULL_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 584
    Top = 712
    object qryGetDiscEventTypeCodeByFullNoDISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_CODE'
    end
  end
  object qryGetDiscEventTypeIsInactive: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  %DISC_EVENT_TYPE_IS_INACTIVE[det] as IS_INACTIVE'
      'from'
      '  DISC_EVENT_TYPES det'
      'where'
      '  (det.DISC_EVENT_TYPE_CODE = :DISC_EVENT_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'DISC_EVENT_TYPE_IS_INACTIVE[det]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 464
    Top = 744
    object qryGetDiscEventTypeIsInactiveIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
  end
  object mshLocalMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'DISC_EVENT_TYPE_IS_INACTIVE'
        Strings.Strings = (
          'Decode('
          '  %1.IS_GROUP,'
          '  1, 0,'
          '  ( select'
          '      (1 - Sign(Count(*)))'
          '    from'
          '      DISC_EVENT_TYPE_PERIODS detp'
          '    where'
          '      (detp.DISC_EVENT_TYPE_CODE = %1.DISC_EVENT_TYPE_CODE) and'
          '      (ContextDate between detp.BEGIN_DATE and detp.END_DATE)'
          '  )'
          ')')
      end
      item
        Name = 'OCC_WORK_DEPT_PRIORITY_NO'
        Strings.Strings = (
          '( select'
          '    library_owdp.OCC_WORK_DEPT_PRIORITY_NO'
          '  from'
          '    OCC_WORK_DEPT_PRIORITIES library_owdp'
          '  where'
          '    (library_owdp.OCC_WORK_DEPT_PRIORITY_CODE = %1)'
          ')')
      end
      item
        Name = 'PROFESSION_KIND_IDENTIFIER'
        Strings.Strings = (
          '( select'
          
            '    %1.PROFESSION_KIND_NO || '#39'   '#39' || %1.PROFESSION_KIND_NAME ||' +
            ' '#39' ( '#39' || lib_pt.PROFESSION_TYPE_NAME || '#39' ) '#39
          '  from'
          '    PROFESSION_TYPES lib_pt'
          '  where'
          '    (lib_pt.PROFESSION_TYPE_CODE = %1.PROFESSION_TYPE_CODE)'
          ')')
      end>
    Left = 136
    Top = 760
  end
  object qryDiscEventTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  det.DISC_EVENT_TYPE_CODE,'
      '  det.PARENT_DISC_EVENT_TYPE_CODE,'
      '  det.DISC_EVENT_TYPE_LOCAL_NO,'
      
        '  Cast(MiscUtils.GetDiscEventTypeFullNo(det.DISC_EVENT_TYPE_CODE' +
        ') as Varchar2(100 char)) as DISC_EVENT_TYPE_FULL_NO,'
      
        '  Cast(MiscUtils.GetDiscEventTypeFullNo(det.DISC_EVENT_TYPE_CODE' +
        ', 1) as Varchar2(100 char)) as DISC_EVENT_TYPE_FMT_FULL_NO,'
      '  det.NAME,'
      '  det.SHORT_NAME,'
      '  det.IS_GROUP,'
      '  det.DOC_BRANCH_CODE,'
      '  det.DOC_CODE,'
      '  %HAS_DOC_ITEMS[det] as HAS_DOC_ITEMS,'
      ''
      '  (det.DISC_EVENT_TYPE_SIGN * detp.RATING) as RATING,'
      '  detp.ACTIVE_DATE_UNIT_COUNT,'
      '  detp.ACTIVE_DATE_UNIT_CODE,'
      ''
      '  det.COLOR,'
      '  det.BACKGROUND_COLOR'
      ''
      'from'
      '  DISC_EVENT_TYPES det,'
      '  DISC_EVENT_TYPE_PERIODS detp'
      ''
      'where'
      '  (det.DISC_EVENT_TYPE_CODE = :DISC_EVENT_TYPE_CODE) and'
      ''
      '  (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE(+)) and'
      '  (:TO_DATE between detp.BEGIN_DATE(+) and detp.END_DATE(+))'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[det]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 400
    Top = 760
    object qryDiscEventTypeDataDISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_CODE'
    end
    object qryDiscEventTypeDataPARENT_DISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'PARENT_DISC_EVENT_TYPE_CODE'
    end
    object qryDiscEventTypeDataDISC_EVENT_TYPE_LOCAL_NO: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_LOCAL_NO'
    end
    object qryDiscEventTypeDataDISC_EVENT_TYPE_FULL_NO: TAbmesWideStringField
      FieldName = 'DISC_EVENT_TYPE_FULL_NO'
      Size = 100
    end
    object qryDiscEventTypeDataDISC_EVENT_TYPE_FMT_FULL_NO: TAbmesWideStringField
      FieldName = 'DISC_EVENT_TYPE_FMT_FULL_NO'
      Size = 100
    end
    object qryDiscEventTypeDataNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 100
    end
    object qryDiscEventTypeDataSHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
      Size = 100
    end
    object qryDiscEventTypeDataIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      FieldValueType = fvtBoolean
    end
    object qryDiscEventTypeDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDiscEventTypeDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDiscEventTypeDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object qryDiscEventTypeDataRATING: TAbmesFloatField
      FieldName = 'RATING'
    end
    object qryDiscEventTypeDataACTIVE_DATE_UNIT_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DATE_UNIT_COUNT'
    end
    object qryDiscEventTypeDataACTIVE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'ACTIVE_DATE_UNIT_CODE'
    end
    object qryDiscEventTypeDataCOLOR: TAbmesFloatField
      FieldName = 'COLOR'
    end
    object qryDiscEventTypeDataBACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'BACKGROUND_COLOR'
    end
  end
  object qryMinAndMaxOccWorkDeptPriorityNoCodes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  ( select'
      '      owdp.OCC_WORK_DEPT_PRIORITY_CODE'
      '    from'
      '      OCC_WORK_DEPT_PRIORITIES owdp'
      '    where'
      '      (owdp.OCC_WORK_DEPT_PRIORITY_NO ='
      '        ( select'
      '            Min(owdp2.OCC_WORK_DEPT_PRIORITY_NO)'
      '          from'
      '            OCC_WORK_DEPT_PRIORITIES owdp2'
      '        )'
      '      )'
      '  ) as MIN_PRIORITY_NO_CODE,'
      ''
      '  ( select'
      '      owdp.OCC_WORK_DEPT_PRIORITY_CODE'
      '    from'
      '      OCC_WORK_DEPT_PRIORITIES owdp'
      '    where'
      '      (owdp.OCC_WORK_DEPT_PRIORITY_NO ='
      '        ( select'
      '            Max(owdp2.OCC_WORK_DEPT_PRIORITY_NO)'
      '          from'
      '            OCC_WORK_DEPT_PRIORITIES owdp2'
      '        )'
      '      )'
      '  ) as MAX_PRIORITY_NO_CODE'
      ''
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 496
    Top = 432
    object qryMinAndMaxOccWorkDeptPriorityNoCodesMIN_PRIORITY_NO_CODE: TAbmesFloatField
      FieldName = 'MIN_PRIORITY_NO_CODE'
    end
    object qryMinAndMaxOccWorkDeptPriorityNoCodesMAX_PRIORITY_NO_CODE: TAbmesFloatField
      FieldName = 'MAX_PRIORITY_NO_CODE'
    end
  end
  object qryOccupationSysRoles: TAbmesSQLQuery
    DataSource = dsOccupation
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  osr.OCCUPATION_CODE,'
      '  osr.SYS_ROLE_CODE,'
      '  sr.SYS_ROLE_NO,'
      '  sr.SYS_ROLE_NAME,'
      '  sr.SYS_ROLE_TYPE_CODE,'
      '  1 as IS_FILTER_ACCEPTED'
      ''
      'from'
      '  OCCUPATION_SYS_ROLES osr,'
      '  SYS_ROLES sr'
      ''
      'where'
      '  (osr.SYS_ROLE_CODE = sr.SYS_ROLE_CODE) and'
      '  (sr.SYS_ROLE_CODE <> CommonConsts.srDefault) and'
      '  (osr.OCCUPATION_CODE = :OCCUPATION_CODE)'
      ''
      'order by'
      '  sr.SYS_ROLE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'OCCUPATION_SYS_ROLES'
    Left = 408
    Top = 472
    object qryOccupationSysRolesOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationSysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationSysRolesSYS_ROLE_NO: TAbmesFloatField
      FieldName = 'SYS_ROLE_NO'
      ProviderFlags = []
    end
    object qryOccupationSysRolesSYS_ROLE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_NAME'
      ProviderFlags = []
      Size = 150
    end
    object qryOccupationSysRolesIS_FILTER_ACCEPTED: TAbmesFloatField
      FieldName = 'IS_FILTER_ACCEPTED'
      ProviderFlags = []
    end
    object qryOccupationSysRolesSYS_ROLE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_TYPE_CODE'
      ProviderFlags = []
      Required = True
    end
  end
  object qryOccupationNotSysRoles: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_number(:OCCUPATION_CODE) as OCCUPATION_CODE,'
      '  sr.SYS_ROLE_CODE,'
      '  sr.SYS_ROLE_NO,'
      '  sr.SYS_ROLE_NAME,'
      '  sr.SYS_ROLE_TYPE_CODE,'
      '  1 as IS_FILTER_ACCEPTED'
      ''
      'from'
      '  SYS_ROLES sr'
      ''
      'where'
      '  (sr.SYS_ROLE_CODE <> CommonConsts.srDefault) and'
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        OCCUPATION_SYS_ROLES osr'
      '      where'
      '        (osr.OCCUPATION_CODE = :OCCUPATION_CODE) and'
      '        (osr.SYS_ROLE_CODE = sr.SYS_ROLE_CODE)'
      '    )'
      '  )'
      ''
      'order by'
      '  sr.SYS_ROLE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 408
    Top = 560
    object qryOccupationNotSysRolesOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationNotSysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationNotSysRolesSYS_ROLE_NO: TAbmesFloatField
      FieldName = 'SYS_ROLE_NO'
      ProviderFlags = []
    end
    object qryOccupationNotSysRolesSYS_ROLE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_NAME'
      ProviderFlags = []
      Size = 150
    end
    object qryOccupationNotSysRolesIS_FILTER_ACCEPTED: TAbmesFloatField
      FieldName = 'IS_FILTER_ACCEPTED'
      ProviderFlags = []
    end
    object qryOccupationNotSysRolesSYS_ROLE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_TYPE_CODE'
      ProviderFlags = []
      Required = True
    end
  end
  object prvOccupationNotSysRoles: TDataSetProvider
    DataSet = qryOccupationNotSysRoles
    UpdateMode = upWhereKeyOnly
    Left = 408
    Top = 512
  end
  object qryOccupationEffectiveActivities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  a.ACTIVITY_CODE,'
      '  a.ACTIVITY_NO,'
      '  a.ACTIVITY_NAME,'
      
        '  Cast(MiscUtils.OccActivitySysRoleNames(:OCCUPATION_CODE, a.ACT' +
        'IVITY_CODE) as Varchar2(250 char)) as OCC_ACTIVITY_SYS_ROLE_NAME' +
        'S'
      ''
      'from'
      '  ACTIVITIES a'
      ''
      'where'
      '  (a.IS_ACTIVE = 1) and'
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        SYS_ROLE_ACTIVITIES sra,'
      '        OCCUPATION_SYS_ROLES osr'
      '      where'
      '        (sra.ACTIVITY_CODE = a.ACTIVITY_CODE) and'
      '        (sra.SYS_ROLE_CODE = osr.SYS_ROLE_CODE) and'
      '        (osr.OCCUPATION_CODE = :OCCUPATION_CODE)'
      '    )'
      '  )'
      ''
      'order by'
      '  a.ACTIVITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 920
    Top = 72
    object qryOccupationEffectiveActivitiesACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationEffectiveActivitiesACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
    end
    object qryOccupationEffectiveActivitiesACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
    object qryOccupationEffectiveActivitiesOCC_ACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField
      FieldName = 'OCC_ACTIVITY_SYS_ROLE_NAMES'
      Size = 250
    end
  end
  object prvOccupationEffectiveActivities: TDataSetProvider
    DataSet = qryOccupationEffectiveActivities
    UpdateMode = upWhereKeyOnly
    Left = 920
    Top = 24
  end
  object qryOccupationNotEffectiveActivities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  a.ACTIVITY_CODE,'
      '  a.ACTIVITY_NO,'
      '  a.ACTIVITY_NAME,'
      
        '  Cast(MiscUtils.ActivitySysRoleNames(a.ACTIVITY_CODE) as VarCha' +
        'r2(250 char)) as OCC_ACTIVITY_SYS_ROLE_NAMES'
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
      '        SYS_ROLE_ACTIVITIES sra,'
      '        OCCUPATION_SYS_ROLES osr'
      '      where'
      '        (sra.ACTIVITY_CODE = a.ACTIVITY_CODE) and'
      '        (sra.SYS_ROLE_CODE = osr.SYS_ROLE_CODE) and'
      '        (osr.OCCUPATION_CODE = :OCCUPATION_CODE)'
      '    )'
      '  )'
      ''
      'order by'
      '  a.ACTIVITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 920
    Top = 168
    object qryOccupationNotEffectiveActivitiesACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOccupationNotEffectiveActivitiesACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
    end
    object qryOccupationNotEffectiveActivitiesACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
    object qryOccupationNotEffectiveActivitiesOCC_ACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField
      FieldName = 'OCC_ACTIVITY_SYS_ROLE_NAMES'
      Size = 250
    end
  end
  object prvOccupationNotEffectiveActivities: TDataSetProvider
    DataSet = qryOccupationNotEffectiveActivities
    UpdateMode = upWhereKeyOnly
    Left = 920
    Top = 120
  end
  object qryDelProfessionPeriods: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  PROFESSION_PERIODS_FOR_EDIT pp'
      'where'
      '  (pp.PROFESSION_CODE = :PROFESSION_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 200
    Top = 576
  end
  object qrySysRolesIsFilterAccepted: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  sr.SYS_ROLE_CODE,'
      '  Nvl2(:ACTIVITY_CODE,'
      '    ( select'
      '        Sign(Count(*))'
      '      from'
      '        SYS_ROLE_ACTIVITIES sra'
      '      where'
      '        (sra.SYS_ROLE_CODE = sr.SYS_ROLE_CODE) and'
      '        (sra.ACTIVITY_CODE = :ACTIVITY_CODE)'
      '    ),'
      '    1'
      '  ) as IS_FILTER_ACCEPTED'
      'from'
      '  SYS_ROLES sr'
      'order by'
      '  sr.SYS_ROLE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 936
    Top = 288
    object qrySysRolesIsFilterAcceptedSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
      Required = True
    end
    object qrySysRolesIsFilterAcceptedIS_FILTER_ACCEPTED: TAbmesFloatField
      FieldName = 'IS_FILTER_ACCEPTED'
    end
  end
  object prvSysRolesIsFilterAccepted: TDataSetProvider
    DataSet = qrySysRolesIsFilterAccepted
    UpdateMode = upWhereKeyOnly
    Left = 936
    Top = 240
  end
  object qryProfessionBaseOps: TAbmesSQLQuery
    DataSource = dsProfession
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pbo.PROFESSION_CODE,'
      '  pbo.PRC_BASE_OP_CODE,'
      
        '  Cast(%PRC_BASE_OP_FORMATTED_FULL_NO[pbo.PRC_BASE_OP_CODE] as V' +
        'archar2(100 char)) as PRC_BASE_OP_FORMATTED_FULL_NO'
      'from'
      '  PROFESSION_BASE_OPS pbo'
      'where'
      '  (pbo.PROFESSION_CODE = :PROFESSION_CODE)'
      'order by'
      '  PRC_BASE_OP_FORMATTED_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_BASE_OP_FORMATTED_FULL_NO[pbo.PRC_BASE_OP_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PROFESSION_BASE_OPS'
    Left = 280
    Top = 288
    object qryProfessionBaseOpsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProfessionBaseOpsPRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProfessionBaseOpsPRC_BASE_OP_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 250
    end
  end
  object qryProfessionConcreteOps: TAbmesSQLQuery
    DataSource = dsProfession
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pco.PROFESSION_CODE,'
      '  pco.PRC_CONCRETE_OP_CODE,'
      
        '  Cast(%PRC_CONCRETE_OP_FORMATTED_FULL_NO[pco.PRC_CONCRETE_OP_CO' +
        'DE] as Varchar2(100 char)) as PRC_CONCR_OP_FORMATTED_FULL_NO'
      'from'
      '  PROFESSION_CONCRETE_OPS pco'
      'where'
      '  (pco.PROFESSION_CODE = :PROFESSION_CODE)'
      'order by'
      '  PRC_CONCR_OP_FORMATTED_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_CONCRETE_OP_FORMATTED_FULL_NO[pco.PRC_CONCRETE_OP_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PROFESSION_CONCRETE_OPS'
    Left = 296
    Top = 288
    object qryProfessionConcreteOpsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProfessionConcreteOpsPRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProfessionConcreteOpsPRC_CONCR_OP_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_CONCR_OP_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 250
    end
  end
  object qryProfessionTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  pt.PROFESSION_TYPE_CODE,'
      '  pt.PROFESSION_TYPE_NO,'
      '  pt.PROFESSION_TYPE_NAME,'
      '  pt.PROFESSION_TYPE_ABBREV'
      'from'
      '  PROFESSION_TYPES pt'
      'order by'
      '  pt.PROFESSION_TYPE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 272
    Top = 608
    object qryProfessionTypesPROFESSION_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_TYPE_CODE'
      Required = True
    end
    object qryProfessionTypesPROFESSION_TYPE_NO: TAbmesFloatField
      FieldName = 'PROFESSION_TYPE_NO'
      Required = True
    end
    object qryProfessionTypesPROFESSION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_TYPE_NAME'
      Required = True
      Size = 100
    end
    object qryProfessionTypesPROFESSION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PROFESSION_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object prvProfessionTypes: TDataSetProvider
    DataSet = qryProfessionTypes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 272
    Top = 560
  end
  object qryOrgWorkActivities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  owa.ORG_WORK_ACTIVITY_CODE,'
      '  owa.ORG_WORK_ACTIVITY_NO,'
      '  owa.ORG_WORK_ACTIVITY_NAME,'
      '  owa.ORG_WORK_MODE_CODE'
      ''
      'from'
      '  ORG_WORK_ACTIVITIES owa'
      ''
      'order by'
      '  owa.ORG_WORK_ACTIVITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 1040
    Top = 360
    object qryOrgWorkActivitiesORG_WORK_ACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_ACTIVITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOrgWorkActivitiesORG_WORK_ACTIVITY_NO: TAbmesFloatField
      FieldName = 'ORG_WORK_ACTIVITY_NO'
      Required = True
    end
    object qryOrgWorkActivitiesORG_WORK_ACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ORG_WORK_ACTIVITY_NAME'
      Required = True
      Size = 100
    end
    object qryOrgWorkActivitiesORG_WORK_MODE_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_MODE_CODE'
      Required = True
    end
  end
  object prvOrgWorkActivities: TDataSetProvider
    DataSet = qryOrgWorkActivities
    UpdateMode = upWhereKeyOnly
    Left = 1040
    Top = 312
  end
  object qryOrgWorkModes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  owm.ORG_WORK_MODE_CODE,'
      '  owm.ORG_WORK_MODE_NO,'
      '  owm.ORG_WORK_MODE_NAME,'
      '  owm.ORG_WORK_MODE_ABBREV'
      'from'
      '  ORG_WORK_MODES owm'
      'order by'
      '  owm.ORG_WORK_MODE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 1040
    Top = 464
    object qryOrgWorkModesORG_WORK_MODE_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_MODE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOrgWorkModesORG_WORK_MODE_NO: TAbmesFloatField
      FieldName = 'ORG_WORK_MODE_NO'
      Required = True
    end
    object qryOrgWorkModesORG_WORK_MODE_NAME: TAbmesWideStringField
      FieldName = 'ORG_WORK_MODE_NAME'
      Required = True
      Size = 100
    end
    object qryOrgWorkModesORG_WORK_MODE_ABBREV: TAbmesWideStringField
      FieldName = 'ORG_WORK_MODE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object prvOrgWorkModes: TDataSetProvider
    DataSet = qryOrgWorkModes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 1040
    Top = 416
  end
  object qryOrgWorkLevels: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  owl.ORG_WORK_LEVEL_CODE,'
      '  owl.ORG_WORK_LEVEL_NO,'
      '  owl.ORG_WORK_LEVEL_NAME,'
      '  owl.ORG_WORK_LEVEL_ABBREV'
      'from'
      '  ORG_WORK_LEVELS owl'
      'order by'
      '  owl.ORG_WORK_LEVEL_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 1040
    Top = 568
    object qryOrgWorkLevelsORG_WORK_LEVEL_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_LEVEL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOrgWorkLevelsORG_WORK_LEVEL_NO: TAbmesFloatField
      FieldName = 'ORG_WORK_LEVEL_NO'
      Required = True
    end
    object qryOrgWorkLevelsORG_WORK_LEVEL_NAME: TAbmesWideStringField
      FieldName = 'ORG_WORK_LEVEL_NAME'
      Required = True
      Size = 100
    end
    object qryOrgWorkLevelsORG_WORK_LEVEL_ABBREV: TAbmesWideStringField
      FieldName = 'ORG_WORK_LEVEL_ABBREV'
      Required = True
      Size = 100
    end
  end
  object prvOrgWorkLevels: TDataSetProvider
    DataSet = qryOrgWorkLevels
    Options = [poReadOnly, poUseQuoteChar]
    Left = 1040
    Top = 520
  end
  object qryDeptOWDPCoverTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  dowdpct.DEPT_OWDP_COVER_TYPE_CODE,'
      '  dowdpct.DEPT_OWDP_COVER_TYPE_NO,'
      '  dowdpct.DEPT_OWDP_COVER_TYPE_NAME,'
      '  dowdpct.DEPT_OWDP_COVER_TYPE_ABBREV'
      'from'
      '  DEPT_OWDP_COVER_TYPES dowdpct'
      'order by'
      '  dowdpct.DEPT_OWDP_COVER_TYPE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 1040
    Top = 672
    object qryDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_NO: TAbmesFloatField
      FieldName = 'DEPT_OWDP_COVER_TYPE_NO'
      Required = True
    end
    object qryDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DEPT_OWDP_COVER_TYPE_NAME'
      Required = True
      Size = 100
    end
    object qryDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DEPT_OWDP_COVER_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object prvDeptOWDPCoverTypes: TDataSetProvider
    DataSet = qryDeptOWDPCoverTypes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 1040
    Top = 624
  end
  object qryDeptOccWorkDeptPriorities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  owdp.OCC_WORK_DEPT_PRIORITY_CODE,'
      '  owdp.OCC_WORK_DEPT_PRIORITY_NO,'
      '  owdp.OCC_WORK_DEPT_PRIORITY_NAME,'
      
        '  (owdp.OCC_WORK_DEPT_PRIORITY_NO || '#39' - '#39' || owdp.OCC_WORK_DEPT' +
        '_PRIORITY_NAME) as OWD_PRIORITY_DISPLAY_NAME,'
      '  ( select'
      '      dowdp.DEPT_OWDP_COVER_TYPE_CODE'
      '    from'
      '      DEPT_OWD_PRIORITIES dowdp'
      '    where'
      '      (dowdp.DEPT_CODE = dcowdp.DEPT_CODE) and'
      
        '      (dowdp.OCC_WORK_DEPT_PRIORITY_CODE = dcowdp.OCC_WORK_DEPT_' +
        'PRIORITY_CODE)'
      '  ) as DEPT_OWDP_COVER_TYPE_CODE,'
      '  owdp.IS_CAPACITY_GENERATOR'
      'from'
      '  DEPT_OWD_PRIORITIES dcowdp,'
      '  OCC_WORK_DEPT_PRIORITIES owdp'
      'where'
      
        '  (dcowdp.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK_DEPT_PRIOR' +
        'ITY_CODE) and'
      '  (dcowdp.DEPT_CODE = :DEPT_CODE)'
      'order by'
      '  owdp.OCC_WORK_DEPT_PRIORITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 1040
    Top = 768
    object qryDeptOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
      Required = True
    end
    object qryDeptOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
      Required = True
    end
    object qryDeptOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NAME'
      Required = True
      Size = 50
    end
    object qryDeptOccWorkDeptPrioritiesOWD_PRIORITY_DISPLAY_NAME: TAbmesWideStringField
      FieldName = 'OWD_PRIORITY_DISPLAY_NAME'
      Size = 93
    end
    object qryDeptOccWorkDeptPrioritiesDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
    end
    object qryDeptOccWorkDeptPrioritiesIS_CAPACITY_GENERATOR: TAbmesFloatField
      FieldName = 'IS_CAPACITY_GENERATOR'
      Required = True
    end
  end
  object prvDeptOccWorkDeptPriorities: TDataSetProvider
    DataSet = qryDeptOccWorkDeptPriorities
    Left = 1040
    Top = 720
  end
  object qryOrgWorkTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  owt.ORG_WORK_LEVEL_CODE,'
      '  owt.ORG_WORK_MODE_CODE,'
      '  owt.IS_PROCESS_GENERATOR,'
      '  ( select'
      '      owl.ORG_WORK_LEVEL_NAME || '#39' '#39' || owm.ORG_WORK_MODE_NAME'
      '    from'
      '      ORG_WORK_LEVELS owl,'
      '      ORG_WORK_MODES owm'
      '    where'
      '      (owl.ORG_WORK_LEVEL_CODE = owt.ORG_WORK_LEVEL_CODE) and'
      '      (owm.ORG_WORK_MODE_CODE = owt.ORG_WORK_MODE_CODE)'
      '  ) as ORG_WORK_TYPE_NAME'
      'from'
      '  ORG_WORK_TYPES owt'
      'order by'
      '  owt.ORG_WORK_LEVEL_CODE,'
      '  owt.ORG_WORK_MODE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 944
    Top = 472
    object qryOrgWorkTypesORG_WORK_LEVEL_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_LEVEL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOrgWorkTypesORG_WORK_MODE_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_MODE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOrgWorkTypesIS_PROCESS_GENERATOR: TAbmesFloatField
      FieldName = 'IS_PROCESS_GENERATOR'
      Required = True
    end
    object qryOrgWorkTypesORG_WORK_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ORG_WORK_TYPE_NAME'
      ProviderFlags = []
      Size = 101
    end
  end
  object prvOrgWorkTypes: TDataSetProvider
    DataSet = qryOrgWorkTypes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 944
    Top = 424
  end
  object qryDeleteOccupation: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  OCCUPATIONS_FOR_EDIT ofe'
      'where'
      '  (ofe.OCCUPATION_CODE = :OCCUPATION_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 944
    Top = 552
  end
  object qryOccupationEmployeeRegimes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  oer.OE_REGIME_CODE,'
      '  oer.OE_REGIME_NAME'
      'from'
      '  OCCUPATION_EMPLOYEE_REGIMES oer'
      'order by'
      '  oer.OE_REGIME_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 1080
    Top = 88
    object qryOccupationEmployeeRegimesOE_REGIME_CODE: TAbmesFloatField
      FieldName = 'OE_REGIME_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOccupationEmployeeRegimesOE_REGIME_NAME: TAbmesWideStringField
      FieldName = 'OE_REGIME_NAME'
      Required = True
    end
  end
  object prvOccupationEmployeeRegimes: TDataSetProvider
    DataSet = qryOccupationEmployeeRegimes
    UpdateMode = upWhereKeyOnly
    Left = 1080
    Top = 40
  end
  object qryGetNewProfessionLocalNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARENT_PROFESSION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(p.PROFESSION_LOCAL_NO), 0) + 1) as NEW_PROFESSIO' +
        'N_LOCAL_NO'
      'from'
      '  PROFESSIONS p'
      'where'
      '  (p.PARENT_PROFESSION_CODE = :PARENT_PROFESSION_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 456
    Top = 224
    object qryGetNewProfessionLocalNoNEW_PROFESSION_LOCAL_NO: TAbmesFloatField
      FieldName = 'NEW_PROFESSION_LOCAL_NO'
    end
  end
  object qryProfessionsPrintTree: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PROFESSION_CODE as NODE_ID,'
      '  p.PARENT_PROFESSION_CODE as PARENT_NODE_ID,'
      ''
      
        '  (Cast(%PROFESSION_FULL_NO[p.PROFESSION_CODE] as Varchar2(50 ch' +
        'ar)) || '#39' '#39' || p.PROFESSION_NAME) as NODE_NAME,'
      
        '  Cast(%PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE] as Varch' +
        'ar2(50 char)) as FORMATED_NODE_NO,'
      ''
      '  (level - 1) as NODE_LEVEL,'
      ''
      '  ( select'
      '      Count(p3.PROFESSION_CODE) as NODE_CHILD_COUNT'
      '    from'
      '      PROFESSIONS p3'
      '    where'
      '      (p3.PARENT_PROFESSION_CODE = p.PROFESSION_CODE)'
      '  ) as NODE_CHILD_COUNT,'
      ''
      '  Decode('
      '    ( select'
      '        Count(p2.PROFESSION_CODE) as NODE_CHILD_COUNT'
      '      from'
      '        PROFESSIONS p2'
      '      where'
      '        (p2.PARENT_PROFESSION_CODE = p.PROFESSION_CODE)'
      '    ),'
      '    0,'
      '    2,'
      '    1'
      '  ) as NODE_TYPE,'
      ''
      '  Decode('
      '    p.PROFESSION_CODE,'
      '    :PROFESSION_CODE,'
      '    0,'
      '    Decode('
      '      ( select'
      '          Max(p4.PROFESSION_LOCAL_NO)'
      '        from'
      '          PROFESSIONS p4'
      '        where'
      '          (p4.PARENT_PROFESSION_CODE = p.PARENT_PROFESSION_CODE)'
      '      ),'
      '      p.PROFESSION_LOCAL_NO,'
      '      1,'
      '      0'
      '    )'
      '  ) as IS_LAST_CHILD,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      PROFESSIONS p1'
      '    where'
      '      (p1.PARENT_PROFESSION_CODE = p.PROFESSION_CODE)'
      '  ) as HAS_CHILDREN'
      ''
      'from'
      '  PROFESSIONS p'
      ''
      'start with'
      '  (p.PROFESSION_CODE = :PROFESSION_CODE)'
      ''
      'connect by'
      '  (p.PARENT_PROFESSION_CODE = prior p.PROFESSION_CODE)'
      ''
      'order by'
      '  FORMATED_NODE_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PROFESSION_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 1080
    Top = 224
    object qryProfessionsPrintTreeNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
      Required = True
    end
    object qryProfessionsPrintTreePARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object qryProfessionsPrintTreeNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 101
    end
    object qryProfessionsPrintTreeFORMATED_NODE_NO: TAbmesWideStringField
      FieldName = 'FORMATED_NODE_NO'
      Size = 50
    end
    object qryProfessionsPrintTreeNODE_LEVEL: TAbmesFloatField
      FieldName = 'NODE_LEVEL'
    end
    object qryProfessionsPrintTreeNODE_CHILD_COUNT: TAbmesFloatField
      FieldName = 'NODE_CHILD_COUNT'
    end
    object qryProfessionsPrintTreeNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
    object qryProfessionsPrintTreeIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object qryProfessionsPrintTreeHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
  end
  object prvProfessionsPrintTree: TDataSetProvider
    DataSet = qryProfessionsPrintTree
    UpdateMode = upWhereKeyOnly
    Left = 1080
    Top = 176
  end
  object qryGetProfessionIsInstance: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  (1 - p.IS_GROUP) as IS_INSTANCE'
      'from'
      '  PROFESSIONS p'
      'where'
      '  (p.PROFESSION_CODE = :PROFESSION_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 1144
    Top = 280
    object qryGetProfessionIsInstanceIS_INSTANCE: TAbmesFloatField
      FieldName = 'IS_INSTANCE'
      FieldValueType = fvtBoolean
    end
  end
  object qryGetProfessionCodeByFullNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'PROFESSION_FULL_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PROFESSION_CODE'
      'from'
      '  PROFESSIONS p'
      'where'
      '  (%PROFESSION_FULL_NO[p.PROFESSION_CODE] = :PROFESSION_FULL_NO)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PROFESSION_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 1144
    Top = 336
    object qryGetProfessionCodeByFullNoPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      Required = True
    end
  end
  object qryGetEmployeeName: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  e.FIRST_NAME,'
      '  e.MIDDLE_NAME,'
      '  e.LAST_NAME'
      'from'
      '  EMPLOYEES e'
      ''
      'where'
      '  (e.EMPLOYEE_CODE = :EMPLOYEE_CODE)'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 688
    Top = 144
    object qryGetEmployeeNameFIRST_NAME: TAbmesWideStringField
      FieldName = 'FIRST_NAME'
      Required = True
      Size = 50
    end
    object qryGetEmployeeNameMIDDLE_NAME: TAbmesWideStringField
      FieldName = 'MIDDLE_NAME'
      Size = 50
    end
    object qryGetEmployeeNameLAST_NAME: TAbmesWideStringField
      FieldName = 'LAST_NAME'
      Required = True
      Size = 50
    end
  end
end
