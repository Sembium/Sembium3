inherited dmFilter: TdmFilter
  Height = 402
  Width = 605
  object qryFilterVariantsByFormName: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'FILTER_FORM_CLASS_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_FORM_VARIANT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  Decode(fv.FILTER_VARIANT_CODE, 1, 0, 1) as IS_NOT_DEFAULT_VARI' +
        'ANT,'
      '  fv.FILTER_CODE,'
      '  fv.FILTER_VARIANT_CODE,'
      '  fv.FILTER_VARIANT_NAME'
      '  '
      'from'
      '  FILTERS f,'
      '  FILTER_VARIANTS fv'
      ''
      'where'
      '  (f.FILTER_CODE = fv.FILTER_CODE) and'
      ''
      
        '  ( (exists                 -- user-a ima pravo svobodno da prom' +
        'enia poletata na filtyra, togava vinagi vijda default varianta'
      '      ( select'
      '          1'
      '        from'
      '          USER_ACTIVITIES ua'
      '        where'
      '          (fv.FILTER_VARIANT_CODE = 1) and'
      '          (ua.EMPLOYEE_CODE = LoginContext.UserCode) and'
      '          (ua.ACTIVITY_CODE = f.MODIFY_VARIANT_ACTIVITY_CODE)'
      '      )'
      '    ) or'
      ''
      
        '    (exists                 -- user-a prinadleji na grupa, koiat' +
        'o ima pravo svobodno da promenia poletata na filtyra'
      '      ( select'
      '          1'
      '        from'
      '          USER_GROUP_ACTIVITIES uga'
      '        where'
      '          (fv.FILTER_VARIANT_CODE = 1) and'
      '          (uga.USER_GROUP_CODE in'
      '            ( select'
      '                ugu.USER_GROUP_CODE'
      '              from'
      '                USER_GROUP_USERS ugu'
      '              where'
      '                (ugu.EMPLOYEE_CODE = LoginContext.UserCode)'
      '            )'
      '          ) and'
      '          (uga.ACTIVITY_CODE = f.MODIFY_VARIANT_ACTIVITY_CODE)'
      '      )'
      '    ) or'
      ''
      
        '    (exists                 -- user-a e w sys rolq, koiato ima p' +
        'ravo svobodno da promenia poletata na filtyra'
      '      ( select'
      '          1'
      '        from'
      '          OCCUPATION_EMPLOYEES oe,'
      '          OCCUPATION_SYS_ROLES osr,'
      '          SYS_ROLE_ACTIVITIES sra'
      '        where'
      '          (oe.EMPLOYEE_CODE = LoginContext.UserCode) and'
      
        '          (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASS' +
        'IGNMENT_END_DATE) and'
      '          (oe.OCCUPATION_CODE = osr.OCCUPATION_CODE) and'
      '          (osr.SYS_ROLE_CODE = sra.SYS_ROLE_CODE) and'
      '          (fv.FILTER_VARIANT_CODE = 1) and'
      '          (sra.ACTIVITY_CODE = f.MODIFY_VARIANT_ACTIVITY_CODE)'
      '      )'
      '    ) or'
      ''
      
        '    (exists                 -- user-a ima pravo da zapisva varia' +
        'nti na filtyr I da vijda vsichki varianti'
      '      ( select'
      '          1'
      '        from'
      '          USER_ACTIVITIES ua'
      '        where'
      '          (ua.EMPLOYEE_CODE = LoginContext.UserCode) and'
      '          (ua.ACTIVITY_CODE = 5017)'
      '      )'
      '    ) or'
      ''
      
        '    (exists                 -- user-a prinadleji na grupa, deto ' +
        'ima pravo da zapisva varianti na filtyr'
      '      ( select'
      '          1'
      '        from'
      '          USER_GROUP_ACTIVITIES uga'
      '        where'
      '          (uga.USER_GROUP_CODE in'
      '            ( select'
      '                ugu.USER_GROUP_CODE'
      '              from'
      '                USER_GROUP_USERS ugu'
      '              where'
      '                (ugu.EMPLOYEE_CODE = LoginContext.UserCode)'
      '            )'
      '          ) and'
      '          (uga.ACTIVITY_CODE = 5017)'
      '      )'
      '    ) or'
      ''
      
        '    (exists                 -- user-a e w sys rolq, koiato ima p' +
        'ravo da zapisva varianti na filtyr'
      '      ( select'
      '          1'
      '        from'
      '          OCCUPATION_EMPLOYEES oe,'
      '          OCCUPATION_SYS_ROLES osr,'
      '          SYS_ROLE_ACTIVITIES sra'
      '        where'
      '          (oe.EMPLOYEE_CODE = LoginContext.UserCode) and'
      
        '          (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and oe.ASS' +
        'IGNMENT_END_DATE) and'
      '          (oe.OCCUPATION_CODE = osr.OCCUPATION_CODE) and'
      '          (osr.SYS_ROLE_CODE = sra.SYS_ROLE_CODE) and'
      '          (sra.ACTIVITY_CODE = 5017)'
      '      )'
      '    ) or'
      ''
      
        '    (exists                 -- user-a ima pravo da go vijda toia' +
        ' variant'
      '      ( select'
      '          1'
      '        from'
      '          FILTER_VARIANT_SYS_ROLES fvsr'
      '        where'
      '          (fvsr.FILTER_CODE = fv.FILTER_CODE) and'
      
        '          (fvsr.FILTER_VARIANT_CODE = fv.FILTER_VARIANT_CODE) an' +
        'd'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                OCCUPATION_EMPLOYEES oe,'
      '                OCCUPATION_SYS_ROLES osr'
      '              where'
      '                (osr.SYS_ROLE_CODE = fvsr.SYS_ROLE_CODE) and'
      '                (osr.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '                (oe.EMPLOYEE_CODE = LoginContext.UserCode) and'
      
        '                (ContextDate between oe.ASSIGNMENT_BEGIN_DATE and ' +
        'oe.ASSIGNMENT_END_DATE)'
      '            )'
      '          )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (f.FILTER_FORM_CLASS_NAME = :FILTER_FORM_CLASS_NAME) and'
      '  (f.FILTER_FORM_VARIANT_CODE = :FILTER_FORM_VARIANT_CODE)'
      ''
      'order by'
      '  IS_NOT_DEFAULT_VARIANT,'
      '  FILTER_VARIANT_NAME')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'FILTER_VARIANTS'
    Left = 496
    Top = 64
    object qryFilterVariantsByFormNameFILTER_CODE: TAbmesFloatField
      FieldName = 'FILTER_CODE'
    end
    object qryFilterVariantsByFormNameFILTER_VARIANT_CODE: TAbmesFloatField
      FieldName = 'FILTER_VARIANT_CODE'
    end
    object qryFilterVariantsByFormNameFILTER_VARIANT_NAME: TAbmesWideStringField
      FieldName = 'FILTER_VARIANT_NAME'
      Size = 100
    end
    object qryFilterVariantsByFormNameIS_NOT_DEFAULT_VARIANT: TAbmesFloatField
      FieldName = 'IS_NOT_DEFAULT_VARIANT'
    end
  end
  object prvFilterVariantsByFormName: TDataSetProvider
    DataSet = qryFilterVariantsByFormName
    BeforeUpdateRecord = prvFilterVariantsByFormNameBeforeUpdateRecord
    Left = 496
    Top = 16
  end
  object qryFilterVariantFields: TAbmesSQLQuery
    DataSource = dsFilterVariantsByFormName
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FILTER_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'FILTER_VARIANT_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  fvf.FILTER_CODE,'
      '  fvf.FILTER_VARIANT_CODE,'
      '  fvf.FILTER_VARIANT_FIELD_CODE,'
      '  fvf.FIELD_NAME,'
      
        '  Cast(null as Varchar2(100 char)) as FIELD_DISPLAY_LABEL, -- fake, s' +
        ' internal calc bi bilo po-chisto, no ne stava'
      '  0 as FIELD_TYPE,                                    -- fake'
      '  0 as IS_FIELD_EMPTY,                                -- fake'
      '  fvf.VALUE_AS_NUMBER,'
      '  fvf.VALUE_AS_STRING,'
      '  fvf.TIME_UNIT_COUNT,'
      '  fvf.TIME_UNIT_CODE,'
      '  fvf.TIME_UNIT_POSITION,'
      '  0 as TIME_UNIT_READ_ONLY,                           -- fake'
      '  0 as SAVE_FIELD,'
      '  0 as HAS_DEFAULT_VALUE,'
      '  Cast(null as Varchar2(100 char)) as DEPENDS_ON_FIELD_NAME'
      'from'
      '  FILTER_VARIANT_FIELDS fvf'
      'where'
      '  (fvf.FILTER_CODE = :FILTER_CODE) and'
      '  (fvf.FILTER_VARIANT_CODE = :FILTER_VARIANT_CODE)'
      'order by'
      '  fvf.FILTER_CODE,'
      '  fvf.FILTER_VARIANT_CODE,'
      '  fvf.FILTER_VARIANT_FIELD_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'FILTER_VARIANT_FIELDS'
    Left = 496
    Top = 160
    object qryFilterVariantFieldsFILTER_CODE: TAbmesFloatField
      FieldName = 'FILTER_CODE'
    end
    object qryFilterVariantFieldsFILTER_VARIANT_CODE: TAbmesFloatField
      FieldName = 'FILTER_VARIANT_CODE'
    end
    object qryFilterVariantFieldsFILTER_VARIANT_FIELD_CODE: TAbmesFloatField
      FieldName = 'FILTER_VARIANT_FIELD_CODE'
    end
    object qryFilterVariantFieldsFIELD_NAME: TAbmesWideStringField
      FieldName = 'FIELD_NAME'
      Size = 100
    end
    object qryFilterVariantFieldsFIELD_DISPLAY_LABEL: TAbmesWideStringField
      FieldName = 'FIELD_DISPLAY_LABEL'
      ProviderFlags = []
      Size = 100
    end
    object qryFilterVariantFieldsFIELD_TYPE: TAbmesFloatField
      FieldName = 'FIELD_TYPE'
      ProviderFlags = []
    end
    object qryFilterVariantFieldsIS_FIELD_EMPTY: TAbmesFloatField
      FieldName = 'IS_FIELD_EMPTY'
      ProviderFlags = []
    end
    object qryFilterVariantFieldsVALUE_AS_NUMBER: TAbmesFloatField
      FieldName = 'VALUE_AS_NUMBER'
    end
    object qryFilterVariantFieldsVALUE_AS_STRING: TAbmesWideStringField
      FieldName = 'VALUE_AS_STRING'
      Size = 4000
    end
    object qryFilterVariantFieldsTIME_UNIT_COUNT: TAbmesFloatField
      FieldName = 'TIME_UNIT_COUNT'
    end
    object qryFilterVariantFieldsTIME_UNIT_CODE: TAbmesFloatField
      FieldName = 'TIME_UNIT_CODE'
    end
    object qryFilterVariantFieldsTIME_UNIT_POSITION: TAbmesFloatField
      FieldName = 'TIME_UNIT_POSITION'
    end
    object qryFilterVariantFieldsTIME_UNIT_READ_ONLY: TAbmesFloatField
      FieldName = 'TIME_UNIT_READ_ONLY'
      ProviderFlags = []
    end
    object qryFilterVariantFieldsSAVE_FIELD: TAbmesFloatField
      FieldName = 'SAVE_FIELD'
      ProviderFlags = []
    end
    object qryFilterVariantFieldsHAS_DEFAULT_VALUE: TAbmesFloatField
      FieldName = 'HAS_DEFAULT_VALUE'
      ProviderFlags = []
    end
    object qryFilterVariantFieldsDEPENDS_ON_FIELD_NAME: TAbmesWideStringField
      FieldName = 'DEPENDS_ON_FIELD_NAME'
      ProviderFlags = []
      Size = 100
    end
  end
  object dsFilterVariantsByFormName: TDataSource
    DataSet = qryFilterVariantsByFormName
    Left = 496
    Top = 112
  end
  object qryGetFilterCodeByFormClassName: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'FILTER_FORM_CLASS_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_FORM_VARIANT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  f.FILTER_CODE'
      'from'
      '  FILTERS f'
      'where'
      '  (f.FILTER_FORM_CLASS_NAME = :FILTER_FORM_CLASS_NAME) and'
      '  (f.FILTER_FORM_VARIANT_CODE = :FILTER_FORM_VARIANT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 40
    object qryGetFilterCodeByFormClassNameFILTER_CODE: TAbmesFloatField
      FieldName = 'FILTER_CODE'
    end
  end
  object qryFilterVariantByName: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FILTER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'FILTER_VARIANT_NAME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  fv.FILTER_CODE,'
      '  fv.FILTER_VARIANT_CODE'
      'from'
      '  FILTER_VARIANTS fv'
      'where'
      '  (fv.FILTER_CODE = :FILTER_CODE) and'
      '  (fv.FILTER_VARIANT_NAME = :FILTER_VARIANT_NAME)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 136
    object qryFilterVariantByNameFILTER_CODE: TAbmesFloatField
      FieldName = 'FILTER_CODE'
    end
    object qryFilterVariantByNameFILTER_VARIANT_CODE: TAbmesFloatField
      FieldName = 'FILTER_VARIANT_CODE'
    end
  end
  object qryFilterVariantSysRoles: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FILTER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_VARIANT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  fvsr.FILTER_CODE,'
      '  fvsr.FILTER_VARIANT_CODE,'
      '  fvsr.SYS_ROLE_CODE,'
      '  sr.SYS_ROLE_NO,'
      '  sr.SYS_ROLE_NAME'
      ''
      'from'
      '  FILTER_VARIANT_SYS_ROLES fvsr,'
      '  SYS_ROLES sr'
      ''
      'where'
      '  (fvsr.SYS_ROLE_CODE = sr.SYS_ROLE_CODE) and'
      '  (fvsr.FILTER_CODE = :FILTER_CODE) and'
      '  (fvsr.FILTER_VARIANT_CODE = :FILTER_VARIANT_CODE)'
      ''
      'order by'
      '  sr.SYS_ROLE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'FILTER_VARIANT_SYS_ROLES'
    Left = 88
    Top = 72
    object qryFilterVariantSysRolesFILTER_CODE: TAbmesFloatField
      FieldName = 'FILTER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFilterVariantSysRolesFILTER_VARIANT_CODE: TAbmesFloatField
      FieldName = 'FILTER_VARIANT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFilterVariantSysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFilterVariantSysRolesSYS_ROLE_NO: TAbmesFloatField
      FieldName = 'SYS_ROLE_NO'
      ProviderFlags = []
    end
    object qryFilterVariantSysRolesSYS_ROLE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_NAME'
      ProviderFlags = []
      Size = 150
    end
  end
  object qryFilterVariantNotSysRoles: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FILTER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_VARIANT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_VARIANT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_number(:FILTER_CODE) as FILTER_CODE,'
      '  To_number(:FILTER_VARIANT_CODE) as FILTER_VARIANT_CODE,'
      '  sr.SYS_ROLE_CODE,'
      '  sr.SYS_ROLE_NO,'
      '  sr.SYS_ROLE_NAME'
      ''
      'from'
      '  SYS_ROLES sr'
      ''
      'where'
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        FILTER_VARIANT_SYS_ROLES fvsr'
      '      where'
      '        (fvsr.FILTER_CODE = :FILTER_CODE) and'
      '        (fvsr.FILTER_VARIANT_CODE = :FILTER_VARIANT_CODE) and'
      '        (fvsr.SYS_ROLE_CODE = sr.SYS_ROLE_CODE)'
      '    )'
      '  ) and'
      
        '  (sr.SYS_ROLE_TYPE_CODE in (%srt_FILTER_VARIANTS, %srt_FV_AND_D' +
        'I))'
      ''
      'order by'
      '  sr.SYS_ROLE_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'srt_FILTER_VARIANTS'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'srt_FV_AND_DI'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 88
    Top = 168
    object qryFilterVariantNotSysRolesFILTER_CODE: TAbmesFloatField
      FieldName = 'FILTER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFilterVariantNotSysRolesFILTER_VARIANT_CODE: TAbmesFloatField
      FieldName = 'FILTER_VARIANT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFilterVariantNotSysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFilterVariantNotSysRolesSYS_ROLE_NO: TAbmesFloatField
      FieldName = 'SYS_ROLE_NO'
      ProviderFlags = []
    end
    object qryFilterVariantNotSysRolesSYS_ROLE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_NAME'
      ProviderFlags = []
      Size = 150
    end
  end
  object prvFilterVariantSysRoles: TDataSetProvider
    DataSet = qryFilterVariantSysRoles
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 24
  end
  object prvFilterVariantNotSysRoles: TDataSetProvider
    DataSet = qryFilterVariantNotSysRoles
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 120
  end
  object qryGetModifyFilterVariantActivityCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'FILTER_FORM_CLASS_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_FORM_VARIANT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  f.MODIFY_VARIANT_ACTIVITY_CODE'
      'from'
      '  FILTERS f'
      'where'
      '  (f.FILTER_FORM_CLASS_NAME = :FILTER_FORM_CLASS_NAME) and'
      '  (f.FILTER_FORM_VARIANT_CODE = :FILTER_FORM_VARIANT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 184
    object qryGetModifyFilterVariantActivityCodeMODIFY_VARIANT_ACTIVITY_CODE: TAbmesFloatField
      FieldName = 'MODIFY_VARIANT_ACTIVITY_CODE'
    end
  end
  object qryDeleteFilterVariant: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FILTER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_VARIANT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_VARIANT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  delete'
      '    FILTER_VARIANT_FIELDS fvf'
      '  where'
      '    (fvf.FILTER_CODE = :FILTER_CODE) and'
      '    (fvf.FILTER_VARIANT_CODE = :FILTER_VARIANT_CODE);'
      ''
      '  delete'
      '    FILTER_VARIANTS fv'
      '  where'
      '    (fv.FILTER_CODE = :FILTER_CODE) and'
      '    (fv.FILTER_VARIANT_CODE = :FILTER_VARIANT_CODE);'
      'end;'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 88
  end
end
