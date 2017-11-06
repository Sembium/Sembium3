inherited dmProcesses: TdmProcesses
  Height = 872
  Width = 1237
  object qryProcessActions: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pa.PRC_ACTION_CODE,'
      '  pa.PRC_ACTION_NO,'
      '  pa.PRC_ACTION_NAME,'
      '  pa.PRC_ACTION_ABBREV,'
      '  pa.IS_BASE_ACTION,'
      '  pa.IS_CONCRETE_ACTION,'
      '  pa.IS_PROJECT_ACTION,'
      '  pa.DOC_BRANCH_CODE,'
      '  pa.DOC_CODE,'
      '  %HAS_DOC_ITEMS[pa] as HAS_DOC_ITEMS'
      'from'
      '  PRC_ACTIONS pa'
      'where'
      '  ( (:PROCESS_ACTION_TYPE is null) or'
      '    ( (:PROCESS_ACTION_TYPE = %pat_BASE) and'
      '      (pa.IS_BASE_ACTION = 1)'
      '    ) or'
      '    ( (:PROCESS_ACTION_TYPE = %pat_CONCRETE) and'
      '      (pa.IS_CONCRETE_ACTION = 1)'
      '    ) or'
      '    ( (:PROCESS_ACTION_TYPE = %pat_PROJECT) and'
      '      (pa.IS_PROJECT_ACTION = 1)'
      '    )'
      '  )'
      'order by'
      '  pa.PRC_ACTION_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pa]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'pat_BASE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'pat_CONCRETE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'pat_PROJECT'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRC_ACTIONS_FOR_EDIT'
    AfterProviderStartTransaction = qryProcessActionsAfterProviderStartTransaction
    Left = 392
    Top = 56
    object qryProcessActionsPRC_ACTION_CODE: TAbmesFloatField
      FieldName = 'PRC_ACTION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProcessActionsPRC_ACTION_NO: TAbmesFloatField
      FieldName = 'PRC_ACTION_NO'
      Required = True
    end
    object qryProcessActionsPRC_ACTION_NAME: TAbmesWideStringField
      FieldName = 'PRC_ACTION_NAME'
      Required = True
      Size = 250
    end
    object qryProcessActionsPRC_ACTION_ABBREV: TAbmesWideStringField
      FieldName = 'PRC_ACTION_ABBREV'
      Required = True
      Size = 10
    end
    object qryProcessActionsIS_BASE_ACTION: TAbmesFloatField
      FieldName = 'IS_BASE_ACTION'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryProcessActionsIS_CONCRETE_ACTION: TAbmesFloatField
      FieldName = 'IS_CONCRETE_ACTION'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryProcessActionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProcessActionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProcessActionsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryProcessActionsIS_PROJECT_ACTION: TAbmesFloatField
      FieldName = 'IS_PROJECT_ACTION'
      Required = True
    end
  end
  object prvProcessActions: TDataSetProvider
    DataSet = qryProcessActions
    Options = [poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvProcessActionsBeforeUpdateRecord
    BeforeApplyUpdates = prvProcessActionsBeforeApplyUpdates
    AfterApplyUpdates = prvProcessActionsAfterApplyUpdates
    Left = 392
    Top = 8
  end
  object qryNewProcessActionCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(pa.PRC_ACTION_CODE), 0) + 1) as NEW_PRC_ACTION_C' +
        'ODE'
      'from'
      '  PRC_ACTIONS pa')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 280
    Top = 8
    object qryNewProcessActionCodeNEW_PRC_ACTION_CODE: TAbmesFloatField
      FieldName = 'NEW_PRC_ACTION_CODE'
    end
  end
  object qryProcessKnowls: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  pk.PRC_KNOWL_CODE,'
      '  pk.PARENT_PRC_KNOWL_CODE,'
      '  pk.PRC_KNOWL_LOCAL_NO,'
      '  pk.PRC_KNOWL_NAME,'
      '  pk.PRC_KNOWL_SHORT_NAME,'
      '  pk.IS_GROUP,'
      
        '  Cast(%PRC_KNOWL_FULL_NO[pk.PRC_KNOWL_CODE] as Varchar2(100 cha' +
        'r)) as PRC_KNOWL_FULL_NO,'
      
        '  Cast(%PRC_KNOWL_FORMATTED_FULL_NO[pk.PRC_KNOWL_CODE] as VarCha' +
        'r2(100 char)) as PRC_KNOWL_FORMATTED_FULL_NO,'
      '  pk.DOC_BRANCH_CODE,'
      '  pk.DOC_CODE,'
      '  %HAS_DOC_ITEMS[pk] as HAS_DOC_ITEMS'
      ''
      'from'
      '  PRC_KNOWLS pk'
      ''
      'order by'
      '  PRC_KNOWL_FORMATTED_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_KNOWL_FULL_NO[pk.PRC_KNOWL_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'PRC_KNOWL_FORMATTED_FULL_NO[pk.PRC_KNOWL_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pk]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRC_KNOWLS_FOR_EDIT'
    Left = 72
    Top = 512
    object qryProcessKnowlsPRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PRC_KNOWL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProcessKnowlsPARENT_PRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_KNOWL_CODE'
    end
    object qryProcessKnowlsPRC_KNOWL_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_KNOWL_LOCAL_NO'
      Required = True
    end
    object qryProcessKnowlsPRC_KNOWL_NAME: TAbmesWideStringField
      FieldName = 'PRC_KNOWL_NAME'
      Required = True
      Size = 100
    end
    object qryProcessKnowlsPRC_KNOWL_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_KNOWL_SHORT_NAME'
      Required = True
      Size = 100
    end
    object qryProcessKnowlsIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryProcessKnowlsPRC_KNOWL_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_KNOWL_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryProcessKnowlsPRC_KNOWL_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_KNOWL_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 250
    end
    object qryProcessKnowlsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProcessKnowlsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProcessKnowlsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
  end
  object prvProcessKnowls: TDataSetProvider
    DataSet = qryProcessKnowls
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 464
  end
  object qryNewProcessKnowlCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_PRC_KNOWLS.NextVal as NEW_PRC_KNOWL_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 416
    Top = 512
    object qryNewProcessKnowlCodeNEW_PRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'NEW_PRC_KNOWL_CODE'
    end
  end
  object qryGetNewProcessKnowlLocalNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARENT_PRC_KNOWL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(pk.PRC_KNOWL_LOCAL_NO), 0) + 1) as NEW_PRC_KNOWL' +
        '_LOCAL_NO'
      'from'
      '  PRC_KNOWLS pk'
      'where'
      '  (pk.PARENT_PRC_KNOWL_CODE = :PARENT_PRC_KNOWL_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 416
    Top = 464
    object qryGetNewProcessKnowlLocalNoNEW_PRC_KNOWL_LOCAL_NO: TAbmesFloatField
      FieldName = 'NEW_PRC_KNOWL_LOCAL_NO'
    end
  end
  object mshLocalMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'pat_BASE'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'pat_CONCRETE'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'pat_PROJECT'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'PRC_FUNC_IMAGE_INDEX'
        Strings.Strings = (
          '171')
      end
      item
        Name = 'PRC_KNOWL_IMAGE_INDEX'
        Strings.Strings = (
          '167')
      end
      item
        Name = 'PRC_BASE_OP_IMAGE_INDEX'
        Strings.Strings = (
          '175')
      end
      item
        Name = 'NOT_CLOSED_OTP_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    ORG_TASK_PROPOSALS lib_otp'
          '  where'
          '    (lib_otp.CREATE_DATE <= %2) and'
          '    ( (lib_otp.CLOSE_DATE is null) or'
          '      (lib_otp.CLOSE_DATE > %2)'
          '    ) and'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          OTP_PRC_BASE_OPS lib_otppbo'
          '        where'
          
            '          (lib_otppbo.ORG_TASK_PROPOSAL_CODE = lib_otp.ORG_TASK_' +
            'PROPOSAL_CODE) and'
          '          (lib_otppbo.PRC_FUNC_CODE = %1.PRC_FUNC_CODE) and'
          '          (lib_otppbo.PRC_KNOWL_CODE = %1.PRC_KNOWL_CODE) and'
          '          (lib_otppbo.PRC_BASE_OP_CODE = %1.PRC_BASE_OP_CODE)'
          '      )'
          '    )'
          ')')
      end
      item
        Name = 'TOTAL_OTP_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    ORG_TASK_PROPOSALS lib_otp'
          '  where'
          '    (lib_otp.CREATE_DATE <= %2) and'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          OTP_PRC_BASE_OPS lib_otppbo'
          '        where'
          
            '          (lib_otppbo.ORG_TASK_PROPOSAL_CODE = lib_otp.ORG_TASK_' +
            'PROPOSAL_CODE) and'
          '          (lib_otppbo.PRC_FUNC_CODE = %1.PRC_FUNC_CODE) and'
          '          (lib_otppbo.PRC_KNOWL_CODE = %1.PRC_KNOWL_CODE) and'
          '          (lib_otppbo.PRC_BASE_OP_CODE = %1.PRC_BASE_OP_CODE)'
          '      )'
          '    )'
          ')')
      end
      item
        Name = 'NOT_OCCUPATION_DEPT_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    DEPT_PRC_BASE_OPS lib_dpbo'
          '  where'
          '    (lib_dpbo.PRC_FUNC_CODE = %1.PRC_FUNC_CODE) and'
          '    (lib_dpbo.PRC_KNOWL_CODE = %1.PRC_KNOWL_CODE) and'
          '    (lib_dpbo.PRC_BASE_OP_CODE = %1.PRC_BASE_OP_CODE) and'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          DEFINITE_DEPTS lib_dd'
          '        where'
          '          (lib_dd.DEPT_CODE = lib_dpbo.DEPT_CODE)'
          '      )'
          '    ) and'
          '    (not exists'
          '      ( select'
          '          1'
          '        from'
          '          OWD_PRC_BASE_OPS lib_owdpbo,'
          '          OCC_PRC_BASE_OPS lib_opbo'
          '        where'
          '          (lib_owdpbo.DEPT_CODE = lib_dpbo.DEPT_CODE) and'
          
            '          (lib_owdpbo.PRC_FUNC_CODE = lib_dpbo.PRC_FUNC_CODE) an' +
            'd'
          
            '          (lib_owdpbo.PRC_KNOWL_CODE = lib_dpbo.PRC_KNOWL_CODE) ' +
            'and'
          
            '          (lib_owdpbo.PRC_BASE_OP_CODE = lib_dpbo.PRC_BASE_OP_CO' +
            'DE) and'
          ''
          
            '          (lib_opbo.OCCUPATION_CODE = lib_owdpbo.OCCUPATION_CODE' +
            ') and'
          
            '          (lib_opbo.PRC_FUNC_CODE = lib_owdpbo.PRC_FUNC_CODE) an' +
            'd'
          
            '          (lib_opbo.PRC_KNOWL_CODE = lib_owdpbo.PRC_KNOWL_CODE) ' +
            'and'
          
            '          (lib_opbo.PRC_BASE_OP_CODE = lib_owdpbo.PRC_BASE_OP_CO' +
            'DE)'
          '      )'
          '    )'
          ')')
      end
      item
        Name = 'TOTAL_DEPT_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    DEPT_PRC_BASE_OPS lib_dpbo'
          '  where'
          '    (lib_dpbo.PRC_FUNC_CODE = %1.PRC_FUNC_CODE) and'
          '    (lib_dpbo.PRC_KNOWL_CODE = %1.PRC_KNOWL_CODE) and'
          '    (lib_dpbo.PRC_BASE_OP_CODE = %1.PRC_BASE_OP_CODE) and'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          DEFINITE_DEPTS lib_dd'
          '        where'
          '          (lib_dd.DEPT_CODE = lib_dpbo.DEPT_CODE)'
          '      )'
          '    )'
          ')')
      end
      item
        Name = 'NOT_MASTERED_OCCUPATION_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    OCC_PRC_BASE_OPS lib_opbo'
          '  where'
          '    (lib_opbo.PRC_FUNC_CODE = %1.PRC_FUNC_CODE) and'
          '    (lib_opbo.PRC_KNOWL_CODE = %1.PRC_KNOWL_CODE) and'
          '    (lib_opbo.PRC_BASE_OP_CODE = %1.PRC_BASE_OP_CODE) and'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          OCC_PRC_BASE_ACTIONS lib_opba'
          '        where'
          
            '          (lib_opba.OCCUPATION_CODE = lib_opbo.OCCUPATION_CODE) ' +
            'and'
          '          (lib_opba.PRC_FUNC_CODE = lib_opbo.PRC_FUNC_CODE) and'
          
            '          (lib_opba.PRC_KNOWL_CODE = lib_opbo.PRC_KNOWL_CODE) an' +
            'd'
          
            '          (lib_opba.PRC_BASE_OP_CODE = lib_opbo.PRC_BASE_OP_CODE' +
            ') and'
          '          ( %OCC_PBA_DISTRIBUTION_STATUS_CODE['
          '              lib_opba.OCCUPATION_CODE~'
          '              lib_opba.PRC_FUNC_CODE~'
          '              lib_opba.PRC_KNOWL_CODE~'
          '              lib_opba.PRC_BASE_OP_CODE~'
          '              lib_opba.PRC_ACTION_CODE~'
          '              %2] <>'
          '            %pods_MASTERED_OCCUPATION_EMPLOYEE'
          '          )'
          '      )'
          '    )'
          ')')
      end
      item
        Name = 'TOTAL_OCCUPATION_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    OCC_PRC_BASE_OPS lib_opbo'
          '  where'
          '    (lib_opbo.PRC_FUNC_CODE = %1.PRC_FUNC_CODE) and'
          '    (lib_opbo.PRC_KNOWL_CODE = %1.PRC_KNOWL_CODE) and'
          '    (lib_opbo.PRC_BASE_OP_CODE = %1.PRC_BASE_OP_CODE)'
          ')')
      end
      item
        Name = 'DEPT_PRC_ACTION_FILTER'
        Strings.Strings = (
          '( (%2 is null) or'
          '  (%1.PRC_ACTION_CODE = %2)'
          ') and'
          ''
          '( (%6 is null) or'
          '  ( (%6 = 1) and'
          '    (%TOTAL_OTP_COUNT[%1~ %3] = 0)'
          '  ) or'
          '  ( (%6 = 2) and'
          '    (%NOT_CLOSED_OTP_COUNT[%1~ %3] > 0)'
          '  ) or'
          '  ( (%6 = 3) and'
          '    (%TOTAL_OTP_COUNT[%1~ %3] > 0) and'
          '    (%NOT_CLOSED_OTP_COUNT[%1~ %3] = 0)'
          '  )'
          ') and'
          ''
          
            '(  %GROUP_DEPT_PBA_DISTRIBUTION_STATUS_CODE[%1.DEPT_CODE~ %1.PRC' +
            '_FUNC_CODE~ %1.PRC_KNOWL_CODE~ %1.PRC_BASE_OP_CODE~ %1.PRC_ACTIO' +
            'N_CODE~ %3]'
          '   between %4 and %5'
          ')')
      end
      item
        Name = 'ORG_PRC_CONCRETE_ACTION_FILTER'
        Strings.Strings = (
          '( (%7 is null) or'
          '  (pa.PRC_ACTION_CODE = %7)'
          ') and'
          ''
          '( (%6 is null) or'
          '  ( (%6 = 1) and'
          '    (%CONCR_TOTAL_OTP_COUNT[%1~ %3] = 0)'
          '  ) or'
          '  ( (%6 = 2) and'
          '    (%CONCR_NOT_CLOSED_OTP_COUNT[%1~ %3] > 0)'
          '  ) or'
          '  ( (%6 = 3) and'
          '    (%CONCR_TOTAL_OTP_COUNT[%1~ %3] > 0) and'
          '    (%CONCR_NOT_CLOSED_OTP_COUNT[%1~ %3] = 0)'
          '  )'
          ') and'
          ''
          
            '( %ORG_PCA_DISTRIBUTION_STATUS_CODE[%1.PRC_CONCRETE_OP_CODE~ %2.' +
            'PRC_ACTION_CODE~ %3]'
          '  between %4 and %5'
          ')')
      end
      item
        Name = 'CONCR_NOT_CLOSED_OTP_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    ORG_TASK_PROPOSALS lib_otp'
          '  where'
          '    (lib_otp.CREATE_DATE <= %2) and'
          '    ( (lib_otp.CLOSE_DATE is null) or'
          '      (lib_otp.CLOSE_DATE > %2)'
          '    ) and'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          OTP_PRC_CONCRETE_OPS lib_otppco'
          '        where'
          
            '          (lib_otppco.ORG_TASK_PROPOSAL_CODE = lib_otp.ORG_TASK_' +
            'PROPOSAL_CODE) and'
          
            '          (lib_otppco.PRC_CONCRETE_OP_CODE = %1.PRC_CONCRETE_OP_' +
            'CODE)'
          '      )'
          '    )'
          ')')
      end
      item
        Name = 'CONCR_TOTAL_OTP_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    ORG_TASK_PROPOSALS lib_otp'
          '  where'
          '    (lib_otp.CREATE_DATE <= %2) and'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          OTP_PRC_CONCRETE_OPS lib_otppco'
          '        where'
          
            '          (lib_otppco.ORG_TASK_PROPOSAL_CODE = lib_otp.ORG_TASK_' +
            'PROPOSAL_CODE) and'
          
            '          (lib_otppco.PRC_CONCRETE_OP_CODE = %1.PRC_CONCRETE_OP_' +
            'CODE)'
          '      )'
          '    )'
          ')')
      end
      item
        Name = 'CONCR_NOT_OCCUPATION_DEPT_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    DEPT_PRC_CONCRETE_OPS lib_dpco'
          '  where'
          
            '    (lib_dpco.PRC_CONCRETE_OP_CODE = %1.PRC_CONCRETE_OP_CODE) an' +
            'd'
          '    (not exists'
          '      ( select'
          '          1'
          '        from'
          '          OWD_PRC_CONCRETE_OPS lib_owdpco,'
          '          OCC_PRC_CONCRETE_OPS lib_opco'
          '        where'
          '          (lib_owdpco.DEPT_CODE = lib_dpco.DEPT_CODE) and'
          
            '          (lib_owdpco.PRC_FUNC_CODE = lib_dpco.PRC_FUNC_CODE) an' +
            'd'
          
            '          (lib_owdpco.PRC_KNOWL_CODE = lib_dpco.PRC_KNOWL_CODE) ' +
            'and'
          
            '          (lib_owdpco.PRC_BASE_OP_CODE = lib_dpco.PRC_BASE_OP_CO' +
            'DE) and'
          
            '          (lib_owdpco.PRC_CONCRETE_OP_CODE = lib_dpco.PRC_CONCRE' +
            'TE_OP_CODE) and'
          ''
          
            '          (lib_opco.OCCUPATION_CODE = lib_owdpco.OCCUPATION_CODE' +
            ') and'
          
            '          (lib_opco.PRC_FUNC_CODE = lib_owdpco.PRC_FUNC_CODE) an' +
            'd'
          
            '          (lib_opco.PRC_KNOWL_CODE = lib_owdpco.PRC_KNOWL_CODE) ' +
            'and'
          
            '          (lib_opco.PRC_BASE_OP_CODE = lib_owdpco.PRC_BASE_OP_CO' +
            'DE) and'
          
            '          (lib_opco.PRC_CONCRETE_OP_CODE = lib_owdpco.PRC_CONCRE' +
            'TE_OP_CODE)'
          '      )'
          '    )'
          ')')
      end
      item
        Name = 'CONCR_TOTAL_DEPT_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    DEPT_PRC_CONCRETE_OPS lib_dpco'
          '  where'
          '    (lib_dpco.PRC_CONCRETE_OP_CODE = %1.PRC_CONCRETE_OP_CODE)'
          ')')
      end
      item
        Name = 'CONCR_NOT_MASTERED_OCCUPATION_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    OCC_PRC_CONCRETE_OPS lib_opco'
          '  where'
          
            '    (lib_opco.PRC_CONCRETE_OP_CODE = %1.PRC_CONCRETE_OP_CODE) an' +
            'd'
          '    (exists'
          '      ( select'
          '          1'
          '        from'
          '          OCC_PRC_CONCRETE_ACTIONS lib_opca'
          '        where'
          
            '          (lib_opca.OCCUPATION_CODE = lib_opco.OCCUPATION_CODE) ' +
            'and'
          '          (lib_opca.PRC_FUNC_CODE = lib_opco.PRC_FUNC_CODE) and'
          
            '          (lib_opca.PRC_KNOWL_CODE = lib_opco.PRC_KNOWL_CODE) an' +
            'd'
          
            '          (lib_opca.PRC_BASE_OP_CODE = lib_opco.PRC_BASE_OP_CODE' +
            ') and'
          
            '          (lib_opca.PRC_CONCRETE_OP_CODE = lib_opco.PRC_CONCRETE' +
            '_OP_CODE) and'
          '          ( %OCC_PCA_DISTRIBUTION_STATUS_CODE['
          '              lib_opca.OCCUPATION_CODE~'
          '              lib_opca.PRC_FUNC_CODE~'
          '              lib_opca.PRC_KNOWL_CODE~'
          '              lib_opca.PRC_BASE_OP_CODE~'
          '              lib_opca.PRC_CONCRETE_OP_CODE~'
          '              lib_opca.PRC_ACTION_CODE~'
          '              %2] <>'
          '            %pods_MASTERED_OCCUPATION_EMPLOYEE'
          '          )'
          '      )'
          '    )'
          ')')
      end
      item
        Name = 'CONCR_TOTAL_OCCUPATION_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    OCC_PRC_CONCRETE_OPS lib_opco'
          '  where'
          '    (lib_opco.PRC_CONCRETE_OP_CODE = %1.PRC_CONCRETE_OP_CODE)'
          ')')
      end
      item
        Name = 'DEPT_PRC_BASE_ACTION_STATUS_MACRO'
        Strings.Strings = (
          'Decode('
          '  d.IS_GROUP, 1,'
          '  Decode('
          
            '    %GROUP_DEPT_PBA_DISTRIBUTION_STATUS_CODE[pa2.DEPT_CODE~ pa2.' +
            'PRC_FUNC_CODE~ pa2.PRC_KNOWL_CODE~ pa2.PRC_BASE_OP_CODE~ pa2.PRC' +
            '_ACTION_CODE~ :TO_DATE],'
          '    1, 1'
          '  ),'
          
            '  %DEFINITE_DEPT_PBA_DISTRIBUTION_STATUS_CODE[pa2.DEPT_CODE~ pa2' +
            '.PRC_FUNC_CODE~ pa2.PRC_KNOWL_CODE~ pa2.PRC_BASE_OP_CODE~ pa2.PR' +
            'C_ACTION_CODE~ :TO_DATE]'
          ')')
      end
      item
        Name = 'DEPT_PRC_CONCRETE_ACTION_STATUS_MACRO'
        Strings.Strings = (
          
            '%DEFINITE_DEPT_PCA_DISTRIBUTION_STATUS_CODE[pa2.DEPT_CODE~ pa2.P' +
            'RC_FUNC_CODE~ pa2.PRC_KNOWL_CODE~ pa2.PRC_BASE_OP_CODE~ pa2.PRC_' +
            'CONCRETE_OP_CODE~ pa2.PRC_ACTION_CODE~ :TO_DATE]')
      end
      item
        Name = 'OCC_PRC_BASE_ACTION_STATUS_MACRO'
        Strings.Strings = (
          
            '%OCC_PBA_DISTRIBUTION_STATUS_CODE[pa.OCCUPATION_CODE~ pa.PRC_FUN' +
            'C_CODE~ pa.PRC_KNOWL_CODE~ pa.PRC_BASE_OP_CODE~ pa.PRC_ACTION_CO' +
            'DE~ :TO_DATE]')
      end
      item
        Name = 'OCC_PRC_CONCRETE_ACTION_STATUS_MACRO'
        Strings.Strings = (
          
            '%OCC_PCA_DISTRIBUTION_STATUS_CODE[pa.OCCUPATION_CODE~ pa.PRC_FUN' +
            'C_CODE~ pa.PRC_KNOWL_CODE~ pa.PRC_BASE_OP_CODE~ pa.PRC_CONCRETE_' +
            'OP_CODE~ pa.PRC_ACTION_CODE~ :TO_DATE]')
      end
      item
        Name = 'OTP_PRC_BASE_ACTION_STATUS_MACRO'
        Strings.Strings = (
          'Nvl2(otp.CLOSE_EMPLOYEE_CODE, 1, 0)')
      end
      item
        Name = 'OTP_PRC_CONCRETE_ACTION_STATUS_MACRO'
        Strings.Strings = (
          'Nvl2(otp.CLOSE_EMPLOYEE_CODE, 1, 0)')
      end
      item
        Name = 'OWD_PRIORITY_STATE_CODE'
        Strings.Strings = (
          '( case'
          '    when'
          '      ( (select'
          '           lib_d.IS_OWD_PRIORITIES_SET_COMPLETE'
          '         from'
          '           DEPTS lib_d'
          '         where'
          '           (lib_d.DEPT_CODE = %1)'
          '        ) = 0'
          '      ) then 2'
          '    when'
          '      (%DEPT_OWDP_COVERING_DEPT[%1~ %2] is null) then 3'
          '    when'
          '      (not exists'
          '        ( select'
          '            1'
          '          from'
          '            OCCUPATION_WORK_DEPTS lib_owd'
          '          where'
          
            '            (lib_owd.DEPT_CODE = %DEPT_OWDP_COVERING_DEPT[%1~ %2' +
            ']) and'
          '            (lib_owd.OCC_WORK_DEPT_PRIORITY_CODE = %2)'
          '        )'
          '      ) then 4'
          '    when'
          '      (not exists'
          '        ( select'
          '            1'
          '          from'
          '            OCCUPATION_WORK_DEPTS lib_owd,'
          '            OCCUPATION_EMPLOYEES lib_oe'
          '          where'
          
            '            (lib_owd.DEPT_CODE = %DEPT_OWDP_COVERING_DEPT[%1~ %2' +
            ']) and'
          '            (lib_owd.OCC_WORK_DEPT_PRIORITY_CODE = %2) and'
          
            '            (lib_owd.OCCUPATION_CODE = lib_oe.OCCUPATION_CODE) a' +
            'nd'
          
            '            (%3 between lib_oe.ASSIGNMENT_BEGIN_DATE and lib_oe.' +
            'ASSIGNMENT_END_DATE)'
          '        )'
          '      ) then 5'
          '  else'
          '    6'
          '  end'
          ')')
      end
      item
        Name = 'DEPT_OWD_PRIORITY_STATE_CODE'
        Strings.Strings = (
          '-- DEPT_OWD_PRIORITY_STATE_CODE[DEPT_CODE~ TO_DATE]'
          ''
          '( case'
          '    when (%1 = %TREE_ROOT_CODE) then'
          '      null'
          '    when'
          '      (not exists'
          '        ( select'
          '            1'
          '          from'
          '            DEPT_OWD_PRIORITIES outer_lib_dowdp'
          '          where'
          '            (outer_lib_dowdp.DEPT_CODE = %1)'
          '        )'
          '      ) then 1'
          '    else'
          '      ( select'
          
            '          Min(%OWD_PRIORITY_STATE_CODE[%1~ outer_lib_dowdp.OCC_W' +
            'ORK_DEPT_PRIORITY_CODE~ %2])'
          '        from'
          '          DEPT_OWD_PRIORITIES outer_lib_dowdp'
          '        where'
          '          (outer_lib_dowdp.DEPT_CODE = %1)'
          '      )'
          '  end'
          ')')
      end
      item
        Name = 'HAS_DEPT_OWD_PRIORITIES'
        Strings.Strings = (
          '( select'
          '    Sign(Count(*))'
          '  from'
          '    DEPT_OWD_PRIORITIES lib_dowdp,'
          '    OCC_WORK_DEPT_PRIORITIES lib_owdp'
          '  where'
          
            '    (lib_dowdp.OCC_WORK_DEPT_PRIORITY_CODE = lib_owdp.OCC_WORK_D' +
            'EPT_PRIORITY_CODE) and'
          '    (lib_dowdp.DEPT_CODE = %1) and'
          '    (lib_owdp.ORG_WORK_LEVEL_CODE = %2) and'
          '    (lib_owdp.ORG_WORK_MODE_CODE = %3)'
          ')')
      end>
    Left = 88
  end
  object qryProcessKnowlsPrintTree: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_KNOWL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_KNOWL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pk.PRC_KNOWL_CODE as NODE_ID,'
      '  pk.PARENT_PRC_KNOWL_CODE as PARENT_NODE_ID,'
      ''
      
        '  (Cast(%PRC_KNOWL_FULL_NO[pk.PRC_KNOWL_CODE] as Varchar2(50 cha' +
        'r)) || '#39' '#39' || pk.PRC_KNOWL_NAME || '#39' - '#39' || pk.PRC_KNOWL_SHORT_N' +
        'AME) as NODE_NAME,'
      
        '  Cast(%PRC_KNOWL_FORMATTED_FULL_NO[pk.PRC_KNOWL_CODE] as VarCha' +
        'r2(50 char)) as FORMATED_NODE_NO,'
      ''
      '  (level - 1) as NODE_LEVEL,'
      ''
      '  ( select'
      '      Count(pk3.PRC_KNOWL_CODE) as NODE_CHILD_COUNT'
      '    from'
      '      PRC_KNOWLS pk3'
      '    where'
      '      (pk3.PARENT_PRC_KNOWL_CODE = pk.PRC_KNOWL_CODE)'
      '  ) as NODE_CHILD_COUNT,'
      ''
      '  Decode('
      '    ( select'
      '        Count(pk2.PRC_KNOWL_CODE) as NODE_CHILD_COUNT'
      '      from'
      '        PRC_KNOWLS pk2'
      '      where'
      '        (pk2.PARENT_PRC_KNOWL_CODE = pk.PRC_KNOWL_CODE)'
      '    ),'
      '    0,'
      '    2,'
      '    1'
      '  ) as NODE_TYPE,'
      ''
      '  Decode('
      '    pk.PRC_KNOWL_CODE,'
      '    :PRC_KNOWL_CODE,'
      '    0,'
      '    Decode('
      '      ( select'
      '          Max(pk4.PRC_KNOWL_LOCAL_NO)'
      '        from'
      '          PRC_KNOWLS pk4'
      '        where'
      '          (pk4.PARENT_PRC_KNOWL_CODE = pk.PARENT_PRC_KNOWL_CODE)'
      '      ),'
      '      pk.PRC_KNOWL_LOCAL_NO,'
      '      1,'
      '      0'
      '    )'
      '  ) as IS_LAST_CHILD,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      PRC_KNOWLS pk1'
      '    where'
      '      (pk1.PARENT_PRC_KNOWL_CODE = pk.PRC_KNOWL_CODE)'
      '  ) as HAS_CHILDREN'
      ''
      'from'
      '  PRC_KNOWLS pk'
      ''
      'start with'
      '  (pk.PRC_KNOWL_CODE = :PRC_KNOWL_CODE)'
      ''
      'connect by'
      '  (pk.PARENT_PRC_KNOWL_CODE = prior pk.PRC_KNOWL_CODE)'
      ''
      'order by'
      '  FORMATED_NODE_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_KNOWL_FULL_NO[pk.PRC_KNOWL_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRC_KNOWL_FORMATTED_FULL_NO[pk.PRC_KNOWL_CODE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 512
    object qryProcessKnowlsPrintTreeNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
      Required = True
    end
    object qryProcessKnowlsPrintTreePARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object qryProcessKnowlsPrintTreeNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 184
    end
    object qryProcessKnowlsPrintTreeFORMATED_NODE_NO: TAbmesWideStringField
      FieldName = 'FORMATED_NODE_NO'
      Size = 50
    end
    object qryProcessKnowlsPrintTreeNODE_LEVEL: TAbmesFloatField
      FieldName = 'NODE_LEVEL'
    end
    object qryProcessKnowlsPrintTreeNODE_CHILD_COUNT: TAbmesFloatField
      FieldName = 'NODE_CHILD_COUNT'
    end
    object qryProcessKnowlsPrintTreeNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
    object qryProcessKnowlsPrintTreeIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object qryProcessKnowlsPrintTreeHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
  end
  object prvProcessKnowlsPrintTree: TDataSetProvider
    DataSet = qryProcessKnowlsPrintTree
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 464
  end
  object qryProcessFunctions: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  pf.PRC_FUNC_CODE,'
      '  pf.PARENT_PRC_FUNC_CODE,'
      '  pf.PRC_FUNC_LOCAL_NO,'
      '  pf.PRC_FUNC_NAME,'
      '  pf.PRC_FUNC_SHORT_NAME,'
      '  pf.IS_GROUP,'
      
        '  Cast(%PRC_FUNC_FULL_NO[pf.PRC_FUNC_CODE] as Varchar2(100 char)' +
        ') as PRC_FUNC_FULL_NO,'
      
        '  Cast(%PRC_FUNC_FORMATTED_FULL_NO[pf.PRC_FUNC_CODE] as Varchar2' +
        '(100 char)) as PRC_FUNC_FORMATTED_FULL_NO,'
      '  pf.DOC_BRANCH_CODE,'
      '  pf.DOC_CODE,'
      '  %HAS_DOC_ITEMS[pf] as HAS_DOC_ITEMS'
      ''
      'from'
      '  PRC_FUNCS pf'
      ''
      'order by'
      '  PRC_FUNC_FORMATTED_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_FUNC_FULL_NO[pf.PRC_FUNC_CODE]'
        ParamType = ptInput
        Value = #39'XXX'#39
      end
      item
        DataType = ftWideString
        Name = 'PRC_FUNC_FORMATTED_FULL_NO[pf.PRC_FUNC_CODE]'
        ParamType = ptInput
        Value = #39'XXX'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pf]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRC_FUNCS_FOR_EDIT'
    Left = 72
    Top = 400
    object qryProcessFunctionsPRC_FUNC_CODE: TAbmesFloatField
      FieldName = 'PRC_FUNC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProcessFunctionsPARENT_PRC_FUNC_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_FUNC_CODE'
    end
    object qryProcessFunctionsPRC_FUNC_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_FUNC_LOCAL_NO'
      Required = True
    end
    object qryProcessFunctionsPRC_FUNC_NAME: TAbmesWideStringField
      FieldName = 'PRC_FUNC_NAME'
      Required = True
      Size = 100
    end
    object qryProcessFunctionsPRC_FUNC_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_FUNC_SHORT_NAME'
      Required = True
      Size = 100
    end
    object qryProcessFunctionsIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
    end
    object qryProcessFunctionsPRC_FUNC_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_FUNC_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryProcessFunctionsPRC_FUNC_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_FUNC_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 250
    end
    object qryProcessFunctionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProcessFunctionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProcessFunctionsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
  end
  object prvProcessFunctions: TDataSetProvider
    DataSet = qryProcessFunctions
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 352
  end
  object qryProcessFunction: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_FUNC_CODE'
        ParamType = ptInput
        Size = 2
      end>
    SQL.Strings = (
      'select'
      '  pf.PRC_FUNC_CODE,'
      '  pf.PARENT_PRC_FUNC_CODE,'
      '  pf.PRC_FUNC_LOCAL_NO,'
      '  pf.PRC_FUNC_NAME,'
      '  pf.PRC_FUNC_SHORT_NAME,'
      '  pf.IS_GROUP,'
      ''
      '  Decode('
      '    pf.PARENT_PRC_FUNC_CODE,'
      '    1,'
      '    null,'
      
        '    Cast(%PRC_FUNC_FULL_NO[pf.PARENT_PRC_FUNC_CODE] as VarChar2(' +
        '100 char))'
      '  ) as PARENT_FULL_NO,'
      ''
      '  pf.DOC_BRANCH_CODE,'
      '  pf.DOC_CODE,'
      '  %HAS_DOC_ITEMS[pf] as HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      db.DUMMY_BLOB_DATA'
      '    from'
      '      DUMMY_BLOB db'
      '  ) as PRC_DATA'
      ''
      'from'
      '  PRC_FUNCS pf'
      ''
      'where'
      '  (pf.PRC_FUNC_CODE = :PRC_FUNC_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_FUNC_FULL_NO[pf.PARENT_PRC_FUNC_CODE]'
        ParamType = ptInput
        Value = #39'XXX'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pf]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRC_FUNCS_FOR_EDIT'
    AfterProviderStartTransaction = qryProcessFunctionAfterProviderStartTransaction
    Left = 224
    Top = 400
    object qryProcessFunctionPRC_FUNC_CODE: TAbmesFloatField
      FieldName = 'PRC_FUNC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProcessFunctionPARENT_PRC_FUNC_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_FUNC_CODE'
    end
    object qryProcessFunctionPRC_FUNC_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_FUNC_LOCAL_NO'
      Required = True
    end
    object qryProcessFunctionPRC_FUNC_NAME: TAbmesWideStringField
      FieldName = 'PRC_FUNC_NAME'
      Required = True
      Size = 100
    end
    object qryProcessFunctionPRC_FUNC_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_FUNC_SHORT_NAME'
      Required = True
      Size = 100
    end
    object qryProcessFunctionIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
    end
    object qryProcessFunctionPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryProcessFunctionDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProcessFunctionDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProcessFunctionHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryProcessFunctionPRC_DATA: TBlobField
      FieldName = 'PRC_DATA'
      ProviderFlags = []
      BlobType = ftOraBlob
      Size = 1
    end
  end
  object prvProcessFunction: TDataSetProvider
    DataSet = qryProcessFunction
    UpdateMode = upWhereKeyOnly
    OnGetData = prvProcessFunctionGetData
    AfterUpdateRecord = prvProcessFunctionAfterUpdateRecord
    BeforeApplyUpdates = prvProcessFunctionBeforeApplyUpdates
    AfterApplyUpdates = prvProcessFunctionAfterApplyUpdates
    Left = 224
    Top = 352
  end
  object qryNewProcessFunctionCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_PRC_FUNCS.NextVal as NEW_PRC_FUNC_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 416
    Top = 400
    object qryNewProcessFunctionCodeNEW_PRC_FUNC_CODE: TAbmesFloatField
      FieldName = 'NEW_PRC_FUNC_CODE'
    end
  end
  object qryGetNewProcessFunctionLocalNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARENT_PRC_FUNC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(pf.PRC_FUNC_LOCAL_NO), 0) + 1) as NEW_PRC_FUNC_L' +
        'OCAL_NO'
      'from'
      '  PRC_FUNCS pf'
      'where'
      '  (pf.PARENT_PRC_FUNC_CODE = :PARENT_PRC_FUNC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 416
    Top = 352
    object qryGetNewProcessFunctionLocalNoNEW_PRC_FUNC_LOCAL_NO: TAbmesFloatField
      FieldName = 'NEW_PRC_FUNC_LOCAL_NO'
    end
  end
  object qryProcessFunctionsPrintTree: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_FUNC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_FUNC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pf.PRC_FUNC_CODE as NODE_ID,'
      '  pf.PARENT_PRC_FUNC_CODE as PARENT_NODE_ID,'
      ''
      
        '  (Cast(%PRC_FUNC_FULL_NO[pf.PRC_FUNC_CODE] as Varchar2(50 char)' +
        ') || '#39' '#39' || pf.PRC_FUNC_NAME || '#39' - '#39' || pf.PRC_FUNC_SHORT_NAME)' +
        ' as NODE_NAME,'
      
        '  Cast(%PRC_FUNC_FORMATTED_FULL_NO[pf.PRC_FUNC_CODE] as Varchar2' +
        '(50 char)) as FORMATED_NODE_NO,'
      ''
      '  (level - 1) as NODE_LEVEL,'
      ''
      '  ( select'
      '      Count(pf3.PRC_FUNC_CODE) as NODE_CHILD_COUNT'
      '    from'
      '      PRC_FUNCS pf3'
      '    where'
      '      (pf3.PARENT_PRC_FUNC_CODE = pf.PRC_FUNC_CODE)'
      '  ) as NODE_CHILD_COUNT,'
      ''
      '  Decode('
      '    ( select'
      '        Count(pf2.PRC_FUNC_CODE) as NODE_CHILD_COUNT'
      '      from'
      '        PRC_FUNCS pf2'
      '      where'
      '        (pf2.PARENT_PRC_FUNC_CODE = pf.PRC_FUNC_CODE)'
      '    ),'
      '    0,'
      '    2,'
      '    1'
      '  ) as NODE_TYPE,'
      ''
      '  Decode('
      '    pf.PRC_FUNC_CODE,'
      '    :PRC_FUNC_CODE,'
      '    0,'
      '    Decode('
      '      ( select'
      '          Max(pf4.PRC_FUNC_LOCAL_NO)'
      '        from'
      '          PRC_FUNCS pf4'
      '        where'
      '          (pf4.PARENT_PRC_FUNC_CODE = pf.PARENT_PRC_FUNC_CODE)'
      '      ),'
      '      pf.PRC_FUNC_LOCAL_NO,'
      '      1,'
      '      0'
      '    )'
      '  ) as IS_LAST_CHILD,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      PRC_FUNCS pf1'
      '    where'
      '      (pf1.PARENT_PRC_FUNC_CODE = pf.PRC_FUNC_CODE)'
      '  ) as HAS_CHILDREN'
      ''
      'from'
      '  PRC_FUNCS pf'
      ''
      'start with'
      '  (pf.PRC_FUNC_CODE = :PRC_FUNC_CODE)'
      ''
      'connect by'
      '  (pf.PARENT_PRC_FUNC_CODE = prior pf.PRC_FUNC_CODE)'
      ''
      'order by'
      '  FORMATED_NODE_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_FUNC_FULL_NO[pf.PRC_FUNC_CODE]'
        ParamType = ptInput
        Value = #39'XXX'#39
      end
      item
        DataType = ftWideString
        Name = 'PRC_FUNC_FORMATTED_FULL_NO[pf.PRC_FUNC_CODE]'
        ParamType = ptInput
        Value = #39'XXX'#39
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 400
    object qryProcessFunctionsPrintTreeNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
      Required = True
    end
    object qryProcessFunctionsPrintTreePARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object qryProcessFunctionsPrintTreeNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 254
    end
    object qryProcessFunctionsPrintTreeFORMATED_NODE_NO: TAbmesWideStringField
      FieldName = 'FORMATED_NODE_NO'
      Size = 50
    end
    object qryProcessFunctionsPrintTreeNODE_LEVEL: TAbmesFloatField
      FieldName = 'NODE_LEVEL'
    end
    object qryProcessFunctionsPrintTreeNODE_CHILD_COUNT: TAbmesFloatField
      FieldName = 'NODE_CHILD_COUNT'
    end
    object qryProcessFunctionsPrintTreeNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
    object qryProcessFunctionsPrintTreeIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object qryProcessFunctionsPrintTreeHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
  end
  object prvProcessFunctionsPrintTree: TDataSetProvider
    DataSet = qryProcessFunctionsPrintTree
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 352
  end
  object qryProcessBaseOperations: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  pbo.PRC_BASE_OP_CODE,'
      '  pbo.PARENT_PRC_BASE_OP_CODE,'
      '  pbo.PRC_BASE_OP_LOCAL_NO,'
      '  pbo.PRC_BASE_OP_NAME,'
      '  pbo.PRC_BASE_OP_SHORT_NAME,'
      '  pbo.IS_GROUP,'
      
        '  Cast(%PRC_BASE_OP_FULL_NO[pbo.PRC_BASE_OP_CODE] as VarChar2(10' +
        '0 char)) as PRC_BASE_OP_FULL_NO,'
      
        '  Cast(%PRC_BASE_OP_FORMATTED_FULL_NO[pbo.PRC_BASE_OP_CODE] as V' +
        'archar2(100 char)) as PRC_BASE_OP_FORMATTED_FULL_NO,'
      '  pbo.DOC_PRODUCT_CODE,'
      ''
      '  ( select'
      '      sp.SPEC_PRODUCT_CODE'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = pbo.DOC_PRODUCT_CODE)'
      '  ) as DOC_SPEC_PRODUCT_CODE,'
      ''
      '  pbo.DOC_BRANCH_CODE,'
      '  pbo.DOC_CODE,'
      '  %HAS_DOC_ITEMS[pbo] as HAS_DOC_ITEMS,'
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOCUMENTATION'
      ''
      'from'
      '  PRC_BASE_OPS pbo,'
      '  PRODUCTS p'
      ''
      'where'
      '  (pbo.DOC_PRODUCT_CODE = p.PRODUCT_CODE(+))'
      ''
      'order by'
      '  PRC_BASE_OP_FORMATTED_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_BASE_OP_FULL_NO[pbo.PRC_BASE_OP_CODE]'
        ParamType = ptInput
        Value = #39'XXX'#39
      end
      item
        DataType = ftWideString
        Name = 'PRC_BASE_OP_FORMATTED_FULL_NO[pbo.PRC_BASE_OP_CODE]'
        ParamType = ptInput
        Value = #39'XXX'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pbo]'
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
    TableName = 'PRC_BASE_OPS_FOR_EDIT'
    Left = 72
    Top = 288
    object qryProcessBaseOperationsPRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProcessBaseOperationsPARENT_PRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_BASE_OP_CODE'
    end
    object qryProcessBaseOperationsPRC_BASE_OP_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_LOCAL_NO'
      Required = True
    end
    object qryProcessBaseOperationsPRC_BASE_OP_NAME: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_NAME'
      Required = True
      Size = 100
    end
    object qryProcessBaseOperationsPRC_BASE_OP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_SHORT_NAME'
      Required = True
      Size = 100
    end
    object qryProcessBaseOperationsIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
    end
    object qryProcessBaseOperationsPRC_BASE_OP_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryProcessBaseOperationsPRC_BASE_OP_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 250
    end
    object qryProcessBaseOperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProcessBaseOperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProcessBaseOperationsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryProcessBaseOperationsDOC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DOC_PRODUCT_CODE'
    end
    object qryProcessBaseOperationsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryProcessBaseOperationsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
      ProviderFlags = []
    end
    object qryProcessBaseOperationsPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryProcessBaseOperationsDOC_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DOC_SPEC_PRODUCT_CODE'
      ProviderFlags = []
    end
  end
  object prvProcessBaseOperations: TDataSetProvider
    DataSet = qryProcessBaseOperations
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 240
  end
  object prvProcessBaseOperation: TDataSetProvider
    DataSet = qryProcessBaseOperation
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = prvProcessBaseOperationBeforeApplyUpdates
    AfterApplyUpdates = prvProcessBaseOperationAfterApplyUpdates
    Left = 224
    Top = 240
  end
  object qryProcessBaseOperation: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_BASE_OP_CODE'
        ParamType = ptInput
        Size = 2
      end>
    SQL.Strings = (
      'select'
      '  pbo.PRC_BASE_OP_CODE,'
      '  pbo.PARENT_PRC_BASE_OP_CODE,'
      '  pbo.PRC_BASE_OP_LOCAL_NO,'
      '  pbo.PRC_BASE_OP_NAME,'
      '  pbo.PRC_BASE_OP_SHORT_NAME,'
      '  pbo.IS_GROUP,'
      ''
      '  Decode('
      '    pbo.PARENT_PRC_BASE_OP_CODE,'
      '    1,'
      '    null,'
      
        '    Cast(%PRC_BASE_OP_FULL_NO[pbo.PARENT_PRC_BASE_OP_CODE] as Va' +
        'rchar2(100 char))'
      '  ) as PARENT_FULL_NO,'
      ''
      '  pbo.DOC_PRODUCT_CODE,'
      '  pbo.DOC_BRANCH_CODE,'
      '  pbo.DOC_CODE,'
      '  %HAS_DOC_ITEMS[pbo] as HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      p.DOC_BRANCH_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = pbo.DOC_PRODUCT_CODE)'
      '  ) as PRODUCT_DOC_BRANCH_CODE,'
      ''
      '  ( select'
      '      p.DOC_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = pbo.DOC_PRODUCT_CODE)'
      '  ) as PRODUCT_DOC_CODE,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = pbo.DOC_PRODUCT_CODE)'
      '  ) as PRODUCT_HAS_DOCUMENTATION'
      ''
      'from'
      '  PRC_BASE_OPS pbo'
      ''
      'where'
      '  (pbo.PRC_BASE_OP_CODE = :PRC_BASE_OP_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_BASE_OP_FULL_NO[pbo.PARENT_PRC_BASE_OP_CODE]'
        ParamType = ptInput
        Value = #39'XXX'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pbo]'
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
    TableName = 'PRC_BASE_OPS_FOR_EDIT'
    AfterProviderStartTransaction = qryProcessBaseOperationAfterProviderStartTransaction
    Left = 224
    Top = 288
    object qryProcessBaseOperationPRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProcessBaseOperationPARENT_PRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_BASE_OP_CODE'
    end
    object qryProcessBaseOperationPRC_BASE_OP_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_LOCAL_NO'
      Required = True
    end
    object qryProcessBaseOperationPRC_BASE_OP_NAME: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_NAME'
      Required = True
      Size = 100
    end
    object qryProcessBaseOperationPRC_BASE_OP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_SHORT_NAME'
      Required = True
      Size = 100
    end
    object qryProcessBaseOperationIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
    end
    object qryProcessBaseOperationPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryProcessBaseOperationDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProcessBaseOperationDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProcessBaseOperationHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryProcessBaseOperationDOC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DOC_PRODUCT_CODE'
    end
    object qryProcessBaseOperationPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryProcessBaseOperationPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
      ProviderFlags = []
    end
    object qryProcessBaseOperationPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
      ProviderFlags = []
    end
  end
  object qryGetNewProcessBaseOperationCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_PRC_BASE_OPS.NextVal as NEW_PRC_BASE_OP_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 416
    Top = 288
    object qryGetNewProcessBaseOperationCodeNEW_PRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'NEW_PRC_BASE_OP_CODE'
    end
  end
  object qryGetNewProcessBaseOperationLocalNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARENT_PRC_BASE_OP_CODE'
        ParamType = ptInput
        Size = 2
      end>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(pbo.PRC_BASE_OP_LOCAL_NO), 0) + 1) as NEW_PRC_BA' +
        'SE_OP_LOCAL_NO'
      'from'
      '  PRC_BASE_OPS pbo'
      'where'
      '  (pbo.PARENT_PRC_BASE_OP_CODE = :PARENT_PRC_BASE_OP_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 416
    Top = 240
    object qryGetNewProcessBaseOperationLocalNoNEW_PRC_BASE_OP_LOCAL_NO: TAbmesFloatField
      FieldName = 'NEW_PRC_BASE_OP_LOCAL_NO'
    end
  end
  object qryProcessBaseOperationsPrintTree: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_BASE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_BASE_OP_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pbo.PRC_BASE_OP_CODE as NODE_ID,'
      '  pbo.PARENT_PRC_BASE_OP_CODE as PARENT_NODE_ID,'
      ''
      
        '  (Cast(%PRC_BASE_OP_FULL_NO[pbo.PRC_BASE_OP_CODE] as VarChar2(5' +
        '0 char)) || '#39' '#39' || pbo.PRC_BASE_OP_NAME || '#39' - '#39' || pbo.PRC_BASE' +
        '_OP_SHORT_NAME) as NODE_NAME,'
      
        '  Cast(%PRC_BASE_OP_FORMATTED_FULL_NO[pbo.PRC_BASE_OP_CODE] as V' +
        'archar2(50 char)) as FORMATED_NODE_NO,'
      ''
      '  (level - 1) as NODE_LEVEL,'
      ''
      '  ( select'
      '      Count(pbo3.PRC_BASE_OP_CODE) as NODE_CHILD_COUNT'
      '    from'
      '      PRC_BASE_OPS pbo3'
      '    where'
      '      (pbo3.PARENT_PRC_BASE_OP_CODE = pbo.PRC_BASE_OP_CODE)'
      '  ) as NODE_CHILD_COUNT,'
      ''
      '  Decode('
      '    ( select'
      '        Count(pbo2.PRC_BASE_OP_CODE) as NODE_CHILD_COUNT'
      '      from'
      '        PRC_BASE_OPS pbo2'
      '      where'
      '        (pbo2.PARENT_PRC_BASE_OP_CODE = pbo.PRC_BASE_OP_CODE)'
      '    ),'
      '    0,'
      '    2,'
      '    1'
      '  ) as NODE_TYPE,'
      ''
      '  Decode('
      '    pbo.PRC_BASE_OP_CODE,'
      '    :PRC_BASE_OP_CODE,'
      '    0,'
      '    Decode('
      '      ( select'
      '          Max(pbo4.PRC_BASE_OP_LOCAL_NO)'
      '        from'
      '          PRC_BASE_OPS pbo4'
      '        where'
      
        '          (pbo4.PARENT_PRC_BASE_OP_CODE = pbo.PARENT_PRC_BASE_OP' +
        '_CODE)'
      '      ),'
      '      pbo.PRC_BASE_OP_LOCAL_NO,'
      '      1,'
      '      0'
      '    )'
      '  ) as IS_LAST_CHILD,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      PRC_BASE_OPS pbo1'
      '    where'
      '      (pbo1.PARENT_PRC_BASE_OP_CODE = pbo.PRC_BASE_OP_CODE)'
      '  ) as HAS_CHILDREN'
      ''
      'from'
      '  PRC_BASE_OPS pbo'
      ''
      'start with'
      '  (pbo.PRC_BASE_OP_CODE = :PRC_BASE_OP_CODE)'
      ''
      'connect by'
      '  (pbo.PARENT_PRC_BASE_OP_CODE = prior pbo.PRC_BASE_OP_CODE)'
      ''
      'order by'
      '  FORMATED_NODE_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_BASE_OP_FULL_NO[pbo.PRC_BASE_OP_CODE]'
        ParamType = ptInput
        Value = #39'XXX'#39
      end
      item
        DataType = ftWideString
        Name = 'PRC_BASE_OP_FORMATTED_FULL_NO[pbo.PRC_BASE_OP_CODE]'
        ParamType = ptInput
        Value = #39'XXX'#39
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 288
    object qryProcessBaseOperationsPrintTreeNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
      Required = True
    end
    object qryProcessBaseOperationsPrintTreePARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object qryProcessBaseOperationsPrintTreeNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 184
    end
    object qryProcessBaseOperationsPrintTreeFORMATED_NODE_NO: TAbmesWideStringField
      FieldName = 'FORMATED_NODE_NO'
      Size = 50
    end
    object qryProcessBaseOperationsPrintTreeNODE_LEVEL: TAbmesFloatField
      FieldName = 'NODE_LEVEL'
    end
    object qryProcessBaseOperationsPrintTreeNODE_CHILD_COUNT: TAbmesFloatField
      FieldName = 'NODE_CHILD_COUNT'
    end
    object qryProcessBaseOperationsPrintTreeNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
    object qryProcessBaseOperationsPrintTreeIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object qryProcessBaseOperationsPrintTreeHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
  end
  object prvProcessBaseOperationsPrintTree: TDataSetProvider
    DataSet = qryProcessBaseOperationsPrintTree
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 240
  end
  object qryProcessConcreteOperations: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  pco.PRC_CONCRETE_OP_CODE,'
      '  pco.PARENT_PRC_CONCRETE_OP_CODE,'
      '  pco.PRC_CONCRETE_OP_LOCAL_NO,'
      '  pco.PRC_CONCRETE_OP_NAME,'
      '  pco.PRC_CONCRETE_OP_SHORT_NAME,'
      '  pco.IS_GROUP,'
      
        '  Cast(%PRC_CONCRETE_OP_FULL_NO[pco.PRC_CONCRETE_OP_CODE] as Var' +
        'char2(100 char)) as PRC_CONCRETE_OP_FULL_NO,'
      
        '  Cast(%PRC_CONCRETE_OP_FORMATTED_FULL_NO[pco.PRC_CONCRETE_OP_CO' +
        'DE] as Varchar2(100 char)) as PRC_CONCR_OP_FORMATTED_FULL_NO,'
      '  pco.DOC_PRODUCT_CODE,'
      ''
      '  ( select'
      '      sp.SPEC_PRODUCT_CODE'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = pco.DOC_PRODUCT_CODE)'
      '  ) as DOC_SPEC_PRODUCT_CODE,'
      ''
      '  pco.DOC_BRANCH_CODE,'
      '  pco.DOC_CODE,'
      '  %HAS_DOC_ITEMS[pco] as HAS_DOC_ITEMS,'
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOCUMENTATION,'
      '  pco.DEACTIVATION_DATE,'
      '  Nvl2(pco.DEACTIVATION_DATE, 1, 0) as IS_INACTIVE,'
      ''
      '  Cast('
      '    %PRC_CONCRETE_OP_FULL_NO[pco.PRC_CONCRETE_OP_CODE] || '#39' '#39' ||'
      '    pco.PRC_CONCRETE_OP_NAME || '#39' ('#39' ||'
      '    pco.PRC_CONCRETE_OP_SHORT_NAME || '#39')'#39
      '    as Varchar2(250 char)'
      '  ) as PRC_CONCRETE_OP_DISPLAY_NAME'
      ''
      'from'
      '  PRC_CONCRETE_OPS pco,'
      '  PRODUCTS p'
      ''
      'where'
      '  (pco.DOC_PRODUCT_CODE = p.PRODUCT_CODE(+))'
      ''
      'order by'
      '  PRC_CONCR_OP_FORMATTED_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_CONCRETE_OP_FULL_NO[pco.PRC_CONCRETE_OP_CODE]'
        ParamType = ptInput
        Value = #39'XXX'#39
      end
      item
        DataType = ftWideString
        Name = 'PRC_CONCRETE_OP_FORMATTED_FULL_NO[pco.PRC_CONCRETE_OP_CODE]'
        ParamType = ptInput
        Value = #39'XXX'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pco]'
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
    TableName = 'PRC_CONCRETE_OPS_FOR_EDIT'
    Left = 72
    Top = 176
    object qryProcessConcreteOperationsPRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProcessConcreteOperationsPARENT_PRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_CONCRETE_OP_CODE'
    end
    object qryProcessConcreteOperationsPRC_CONCRETE_OP_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_LOCAL_NO'
      Required = True
    end
    object qryProcessConcreteOperationsPRC_CONCRETE_OP_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_NAME'
      Required = True
      Size = 100
    end
    object qryProcessConcreteOperationsPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_SHORT_NAME'
      Required = True
      Size = 100
    end
    object qryProcessConcreteOperationsIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
    end
    object qryProcessConcreteOperationsPRC_CONCRETE_OP_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryProcessConcreteOperationsPRC_CONCR_OP_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_CONCR_OP_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 250
    end
    object qryProcessConcreteOperationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProcessConcreteOperationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProcessConcreteOperationsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryProcessConcreteOperationsDOC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DOC_PRODUCT_CODE'
    end
    object qryProcessConcreteOperationsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryProcessConcreteOperationsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
      ProviderFlags = []
    end
    object qryProcessConcreteOperationsPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryProcessConcreteOperationsDEACTIVATION_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEACTIVATION_DATE'
    end
    object qryProcessConcreteOperationsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      ProviderFlags = []
    end
    object qryProcessConcreteOperationsDOC_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DOC_SPEC_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryProcessConcreteOperationsPRC_CONCRETE_OP_DISPLAY_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_DISPLAY_NAME'
      Size = 250
    end
  end
  object qryProcessConcreteOperation: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pco.PRC_CONCRETE_OP_CODE,'
      '  pco.PARENT_PRC_CONCRETE_OP_CODE,'
      '  pco.PRC_CONCRETE_OP_LOCAL_NO,'
      '  pco.PRC_CONCRETE_OP_NAME,'
      '  pco.PRC_CONCRETE_OP_SHORT_NAME,'
      '  pco.IS_GROUP,'
      ''
      '  Decode('
      '    pco.PARENT_PRC_CONCRETE_OP_CODE,'
      '    1,'
      '    null,'
      
        '    Cast(%PRC_CONCRETE_OP_FULL_NO[pco.PARENT_PRC_CONCRETE_OP_COD' +
        'E] as Varchar2(100 char))'
      '  ) as PARENT_FULL_NO,'
      ''
      '  pco.DOC_PRODUCT_CODE,'
      '  pco.DOC_BRANCH_CODE,'
      '  pco.DOC_CODE,'
      '  %HAS_DOC_ITEMS[pco] as HAS_DOC_ITEMS,'
      '  pco.DEACTIVATION_DATE,'
      '  Nvl2(pco.DEACTIVATION_DATE, 1, 0) as IS_INACTIVE,'
      ''
      '  ( select'
      '      p.DOC_BRANCH_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = pco.DOC_PRODUCT_CODE)'
      '  ) as PRODUCT_DOC_BRANCH_CODE,'
      ''
      '  ( select'
      '      p.DOC_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = pco.DOC_PRODUCT_CODE)'
      '  ) as PRODUCT_DOC_CODE,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = pco.DOC_PRODUCT_CODE)'
      '  ) as PRODUCT_HAS_DOCUMENTATION,'
      ''
      
        '  Cast(%PRC_CONCRETE_OP_FORMATTED_FULL_NO[pco.PRC_CONCRETE_OP_CO' +
        'DE] as Varchar2(100 char)) as PRC_CONCR_OP_FORMATTED_FULL_NO,'
      
        '  Cast(%PRC_CONCRETE_OP_FULL_NO[pco.PRC_CONCRETE_OP_CODE] as Var' +
        'char2(100 char)) as PRC_CONCRETE_OP_FULL_NO'
      ''
      'from'
      '  PRC_CONCRETE_OPS pco'
      '  '
      'where'
      '  (pco.PRC_CONCRETE_OP_CODE = :PRC_CONCRETE_OP_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_CONCRETE_OP_FULL_NO[pco.PARENT_PRC_CONCRETE_OP_CODE]'
        ParamType = ptInput
        Value = #39'XXX'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pco]'
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
        Name = 'PRC_CONCRETE_OP_FORMATTED_FULL_NO[pco.PRC_CONCRETE_OP_CODE]'
        ParamType = ptInput
        Value = #39#39
      end
      item
        DataType = ftWideString
        Name = 'PRC_CONCRETE_OP_FULL_NO[pco.PRC_CONCRETE_OP_CODE]'
        ParamType = ptInput
        Value = #39#39
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRC_CONCRETE_OPS_FOR_EDIT'
    AfterProviderStartTransaction = qryProcessBaseOperationAfterProviderStartTransaction
    Left = 224
    Top = 176
    object qryProcessConcreteOperationPRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProcessConcreteOperationPARENT_PRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_CONCRETE_OP_CODE'
    end
    object qryProcessConcreteOperationPRC_CONCRETE_OP_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_LOCAL_NO'
      Required = True
    end
    object qryProcessConcreteOperationPRC_CONCRETE_OP_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_NAME'
      Required = True
      Size = 100
    end
    object qryProcessConcreteOperationPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_SHORT_NAME'
      Required = True
      Size = 100
    end
    object qryProcessConcreteOperationIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
    end
    object qryProcessConcreteOperationPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryProcessConcreteOperationDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProcessConcreteOperationHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryProcessConcreteOperationDOC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DOC_PRODUCT_CODE'
    end
    object qryProcessConcreteOperationDEACTIVATION_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEACTIVATION_DATE'
    end
    object qryProcessConcreteOperationIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      ProviderFlags = []
    end
    object qryProcessConcreteOperationDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProcessConcreteOperationPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryProcessConcreteOperationPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
      ProviderFlags = []
    end
    object qryProcessConcreteOperationPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryProcessConcreteOperationPRC_CONCR_OP_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_CONCR_OP_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 250
    end
    object qryProcessConcreteOperationPRC_CONCRETE_OP_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
  end
  object qryGetNewProcessConcreteOperationLocalNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARENT_PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(pco.PRC_CONCRETE_OP_LOCAL_NO), 0) + 1) as NEW_PR' +
        'C_CONCRETE_OP_LOCAL_NO'
      'from'
      '  PRC_CONCRETE_OPS pco'
      'where'
      
        '  (pco.PARENT_PRC_CONCRETE_OP_CODE = :PARENT_PRC_CONCRETE_OP_COD' +
        'E)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 416
    Top = 128
    object qryGetNewProcessConcreteOperationLocalNoNEW_PRC_CONCRETE_OP_LOCAL_NO: TAbmesFloatField
      FieldName = 'NEW_PRC_CONCRETE_OP_LOCAL_NO'
    end
  end
  object qryGetNewProcessConcreteOperationCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_PRC_CONCRETE_OPS.NextVal as NEW_PRC_CONCRETE_OP_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 416
    Top = 176
    object qryGetNewProcessConcreteOperationCodeNEW_PRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'NEW_PRC_CONCRETE_OP_CODE'
    end
  end
  object qryProcessConcreteOperationsPrintTree: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
        Value = '1'
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
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pco.PRC_CONCRETE_OP_CODE as NODE_ID,'
      '  pco.PARENT_PRC_CONCRETE_OP_CODE as PARENT_NODE_ID,'
      ''
      
        '  (Cast(%PRC_CONCRETE_OP_FULL_NO[pco.PRC_CONCRETE_OP_CODE] as Va' +
        'rchar2(50 char)) || '#39' '#39' || pco.PRC_CONCRETE_OP_NAME || '#39' - '#39' || ' +
        'pco.PRC_CONCRETE_OP_SHORT_NAME) as NODE_NAME,'
      
        '  Cast(%PRC_CONCRETE_OP_FORMATTED_FULL_NO[pco.PRC_CONCRETE_OP_CO' +
        'DE] as Varchar2(50 char)) as FORMATED_NODE_NO,'
      ''
      '  (level - 1) as NODE_LEVEL,'
      ''
      '  ( select'
      '      Count(pco3.PRC_CONCRETE_OP_CODE) as NODE_CHILD_COUNT'
      '    from'
      '      PRC_CONCRETE_OPS pco3'
      '    where'
      
        '      (pco3.PARENT_PRC_CONCRETE_OP_CODE = pco.PRC_CONCRETE_OP_CO' +
        'DE) and'
      ''
      '      ( (:SHOW_INACTIVE = 1) or'
      '        (pco3.DEACTIVATION_DATE is null)'
      '      )'
      '  ) as NODE_CHILD_COUNT,'
      ''
      '  Decode('
      '    ( select'
      '        Count(pco2.PRC_CONCRETE_OP_CODE) as NODE_CHILD_COUNT'
      '      from'
      '        PRC_CONCRETE_OPS pco2'
      '      where'
      
        '        (pco2.PARENT_PRC_CONCRETE_OP_CODE = pco.PRC_CONCRETE_OP_' +
        'CODE)'
      '    ),'
      '    0,'
      '    2,'
      '    1'
      '  ) as NODE_TYPE,'
      ''
      '  Decode('
      '    pco.PRC_CONCRETE_OP_CODE,'
      '    :PRC_CONCRETE_OP_CODE,'
      '    0,'
      '    Decode('
      '      ( select'
      '          Max(pco4.PRC_CONCRETE_OP_LOCAL_NO)'
      '        from'
      '          PRC_CONCRETE_OPS pco4'
      '        where'
      
        '          (pco4.PARENT_PRC_CONCRETE_OP_CODE = pco.PARENT_PRC_CON' +
        'CRETE_OP_CODE) and'
      ''
      '          ( (:SHOW_INACTIVE = 1) or'
      '            (pco4.DEACTIVATION_DATE is null)'
      '          )'
      '      ),'
      '      pco.PRC_CONCRETE_OP_LOCAL_NO,'
      '      1,'
      '      0'
      '    )'
      '  ) as IS_LAST_CHILD,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      PRC_CONCRETE_OPS pco1'
      '    where'
      
        '      (pco1.PARENT_PRC_CONCRETE_OP_CODE = pco.PRC_CONCRETE_OP_CO' +
        'DE) and'
      ''
      '      ( (:SHOW_INACTIVE = 1) or'
      '        (pco1.DEACTIVATION_DATE is null)'
      '      )'
      '  ) as HAS_CHILDREN'
      ''
      'from'
      '  PRC_CONCRETE_OPS pco'
      ''
      'start with'
      '  (pco.PRC_CONCRETE_OP_CODE = :PRC_CONCRETE_OP_CODE)'
      ''
      'connect by'
      
        '  (pco.PARENT_PRC_CONCRETE_OP_CODE = prior pco.PRC_CONCRETE_OP_C' +
        'ODE) and'
      ''
      '  ( (:SHOW_INACTIVE = 1) or'
      '    (pco.DEACTIVATION_DATE is null)'
      '  )'
      ''
      'order by'
      '  FORMATED_NODE_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_CONCRETE_OP_FULL_NO[pco.PRC_CONCRETE_OP_CODE]'
        ParamType = ptInput
        Value = #39'XXX'#39
      end
      item
        DataType = ftWideString
        Name = 'PRC_CONCRETE_OP_FORMATTED_FULL_NO[pco.PRC_CONCRETE_OP_CODE]'
        ParamType = ptInput
        Value = #39'XXX'#39
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 176
    object qryProcessConcreteOperationsPrintTreeNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
      Required = True
    end
    object qryProcessConcreteOperationsPrintTreePARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object qryProcessConcreteOperationsPrintTreeNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 184
    end
    object qryProcessConcreteOperationsPrintTreeFORMATED_NODE_NO: TAbmesWideStringField
      FieldName = 'FORMATED_NODE_NO'
      Size = 50
    end
    object qryProcessConcreteOperationsPrintTreeNODE_LEVEL: TAbmesFloatField
      FieldName = 'NODE_LEVEL'
    end
    object qryProcessConcreteOperationsPrintTreeNODE_CHILD_COUNT: TAbmesFloatField
      FieldName = 'NODE_CHILD_COUNT'
    end
    object qryProcessConcreteOperationsPrintTreeNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
    object qryProcessConcreteOperationsPrintTreeIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object qryProcessConcreteOperationsPrintTreeHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
  end
  object prvProcessConcreteOperations: TDataSetProvider
    DataSet = qryProcessConcreteOperations
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 128
  end
  object prvProcessConcreteOperation: TDataSetProvider
    DataSet = qryProcessConcreteOperation
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = prvProcessBaseOperationBeforeApplyUpdates
    AfterApplyUpdates = prvProcessBaseOperationAfterApplyUpdates
    Left = 224
    Top = 128
  end
  object prvProcessConcreteOperationsPrintTree: TDataSetProvider
    DataSet = qryProcessConcreteOperationsPrintTree
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 128
  end
  object qryGetProcessConcreteOperationIsInstance: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  (1 - pco.IS_GROUP) as IS_INSTANCE'
      'from'
      '  PRC_CONCRETE_OPS pco'
      'where'
      '  (pco.PRC_CONCRETE_OP_CODE = :PRC_CONCRETE_OP_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 850
    Top = 127
    object qryGetProcessConcreteOperationIsInstanceIS_INSTANCE: TAbmesFloatField
      FieldName = 'IS_INSTANCE'
      FieldValueType = fvtBoolean
    end
  end
  object qryGetProcessConcreteOperationCodeByFullNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'PRC_CONCRETE_OP_FULL_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pco.PRC_CONCRETE_OP_CODE'
      'from'
      '  PRC_CONCRETE_OPS pco'
      'where'
      
        '  (%PRC_CONCRETE_OP_FULL_NO[pco.PRC_CONCRETE_OP_CODE] = :PRC_CON' +
        'CRETE_OP_FULL_NO)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_CONCRETE_OP_FULL_NO[pco.PRC_CONCRETE_OP_CODE]'
        ParamType = ptInput
        Value = #39#39
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 850
    Top = 176
    object qryGetProcessConcreteOperationCodeByFullNoPRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_CODE'
      Required = True
    end
  end
  object qryGetProcessConcreteOperationIsInactive: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Nvl2(pco.DEACTIVATION_DATE, 1, 0) as IS_INACTIVE'
      'from'
      '  PRC_CONCRETE_OPS pco'
      'where'
      '  (pco.PRC_CONCRETE_OP_CODE = :PRC_CONCRETE_OP_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 848
    Top = 143
    object qryGetProcessConcreteOperationIsInactiveIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
  end
  object qryGetProcessBaseOperationCodeByFullNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'PRC_BASE_OP_FULL_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pbo.PRC_BASE_OP_CODE'
      'from'
      '  PRC_BASE_OPS pbo'
      'where'
      
        '  (%PRC_BASE_OP_FULL_NO[pbo.PRC_BASE_OP_CODE] = :PRC_BASE_OP_FUL' +
        'L_NO)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_BASE_OP_FULL_NO[pbo.PRC_BASE_OP_CODE]'
        ParamType = ptInput
        Value = #39#39
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 850
    Top = 288
    object qryGetProcessBaseOperationCodeByFullNoPRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_CODE'
      Required = True
    end
  end
  object qryGetProcessBaseOperationIsInstance: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_BASE_OP_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  (1 - pbo.IS_GROUP) as IS_INSTANCE'
      'from'
      '  PRC_BASE_OPS pbo'
      'where'
      '  (pbo.PRC_BASE_OP_CODE = :PRC_BASE_OP_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 850
    Top = 239
    object qryGetProcessBaseOperationIsInstanceIS_INSTANCE: TAbmesFloatField
      FieldName = 'IS_INSTANCE'
      FieldValueType = fvtBoolean
    end
  end
  object dsProcessKnowl: TDataSource
    DataSet = qryProcessKnowl
    Left = 224
    Top = 560
  end
  object qryProcessKnowlDetail: TAbmesSQLQuery
    DataSource = dsProcessKnowl
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_KNOWL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pkbo.PRC_KNOWL_CODE,'
      '  pkbo.PRC_BASE_OP_CODE,'
      
        '  Cast(%PRC_BASE_OP_FORMATTED_FULL_NO[pkbo.PRC_BASE_OP_CODE] as ' +
        'Varchar2(100 char)) as PRC_BASE_OP_FORMATTED_FULL_NO'
      'from'
      '  PRC_KNOWL_BASE_OPS pkbo'
      'where'
      '  (pkbo.PRC_KNOWL_CODE = :PRC_KNOWL_CODE)'
      'order by'
      '  PRC_BASE_OP_FORMATTED_FULL_NO'
      '  ')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_BASE_OP_FORMATTED_FULL_NO[pkbo.PRC_BASE_OP_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRC_KNOWL_BASE_OPS'
    Left = 224
    Top = 608
    object qryProcessKnowlDetailPRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PRC_KNOWL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProcessKnowlDetailPRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProcessKnowlDetailPRC_BASE_OP_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 250
    end
  end
  object qryGetProcessFunctionIsInstance: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_FUNC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  (1 - pf.IS_GROUP) as IS_INSTANCE'
      'from'
      '  PRC_FUNCS pf'
      'where'
      '  (pf.PRC_FUNC_CODE = :PRC_FUNC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 850
    Top = 351
    object qryGetProcessFunctionIsInstanceIS_INSTANCE: TAbmesFloatField
      FieldName = 'IS_INSTANCE'
      FieldValueType = fvtBoolean
    end
  end
  object qryGetProcessFunctionCodeByFullNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'PRC_FUNC_FULL_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pf.PRC_FUNC_CODE'
      'from'
      '  PRC_FUNCS pf'
      'where'
      '  (%PRC_FUNC_FULL_NO[pf.PRC_FUNC_CODE] = :PRC_FUNC_FULL_NO)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_FUNC_FULL_NO[pf.PRC_FUNC_CODE]'
        ParamType = ptInput
        Value = #39#39
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 850
    Top = 400
    object qryGetProcessFunctionCodeByFullNoPRC_FUNC_CODE: TAbmesFloatField
      FieldName = 'PRC_FUNC_CODE'
      Required = True
    end
  end
  object qryGetProcessKnowlIsInstance: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_KNOWL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  (1 - pk.IS_GROUP) as IS_INSTANCE'
      'from'
      '  PRC_KNOWLS pk'
      'where'
      '  (pk.PRC_KNOWL_CODE = :PRC_KNOWL_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 850
    Top = 463
    object qryGetProcessKnowlIsInstanceIS_INSTANCE: TAbmesFloatField
      FieldName = 'IS_INSTANCE'
      FieldValueType = fvtBoolean
    end
  end
  object qryGetProcessKnowlCodeByFullNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'PRC_KNOWL_FULL_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pk.PRC_KNOWL_CODE'
      'from'
      '  PRC_KNOWLS pk'
      'where'
      '  (%PRC_KNOWL_FULL_NO[pk.PRC_KNOWL_CODE] = :PRC_KNOWL_FULL_NO)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_KNOWL_FULL_NO[pk.PRC_KNOWL_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 850
    Top = 512
    object qryGetProcessKnowlCodeByFullNoPRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PRC_KNOWL_CODE'
      Required = True
    end
  end
  object mshSQLGenerationMacros: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'SELF_DOC_FIELDS'
        Strings.Strings = (
          '  t.DOC_BRANCH_CODE,'
          '  t.DOC_CODE,'
          '  %HAS_DOC_ITEMS[t] as HAS_DOC_ITEMS,')
      end
      item
        Name = 'PRODUCT_DOC_FIELDS'
        Strings.Strings = (
          ''
          '  ( select'
          '      p.DOC_BRANCH_CODE'
          '    from'
          '      PRODUCTS p'
          '    where'
          '      (p.PRODUCT_CODE = t.DOC_PRODUCT_CODE)'
          '  ) as DOC_BRANCH_CODE,'
          ''
          '  ( select'
          '      p.DOC_CODE'
          '    from'
          '      PRODUCTS p'
          '    where'
          '      (p.PRODUCT_CODE = t.DOC_PRODUCT_CODE)'
          '  ) as DOC_CODE,'
          ''
          '  ( select'
          '      %HAS_DOC_ITEMS[p]'
          '    from'
          '      PRODUCTS p'
          '    where'
          '      (p.PRODUCT_CODE = t.DOC_PRODUCT_CODE)'
          '  ) as HAS_DOC_ITEMS,'
          '')
      end
      item
        Name = 'GROUP_DEPT_PBA_DISTRIBUTION_COUNT'
        Strings.Strings = (
          '%GROUP_DEPT_PBA_DISTRIBUTION_COUNT[ot]')
      end
      item
        Name = 'GROUP_DEPT_PBA_STATUS_CODE'
        Strings.Strings = (
          
            '%GROUP_DEPT_PBA_DISTRIBUTION_STATUS_CODE[ot.DEPT_CODE~ ot.PRC_FU' +
            'NC_CODE~ ot.PRC_KNOWL_CODE~ ot.PRC_BASE_OP_CODE~ ot.PRC_ACTION_C' +
            'ODE~ ContextDate]')
      end
      item
        Name = 'DEFINITE_DEPT_PBA_STATUS_CODE'
        Strings.Strings = (
          
            '%DEFINITE_DEPT_PBA_DISTRIBUTION_STATUS_CODE[ot.DEPT_CODE~ ot.PRC' +
            '_FUNC_CODE~ ot.PRC_KNOWL_CODE~ ot.PRC_BASE_OP_CODE~ ot.PRC_ACTIO' +
            'N_CODE~ ContextDate]')
      end
      item
        Name = 'OCC_PBA_STATUS_CODE'
        Strings.Strings = (
          
            '%OCC_PBA_DISTRIBUTION_STATUS_CODE[ot.OCCUPATION_CODE~ ot.PRC_FUN' +
            'C_CODE~ ot.PRC_KNOWL_CODE~ ot.PRC_BASE_OP_CODE~ ot.PRC_ACTION_CO' +
            'DE~ ContextDate]')
      end
      item
        Name = 'OE_PBA_STATUS_CODE'
        Strings.Strings = (
          
            '%OE_PBA_DISTRIBUTION_STATUS_CODE[ot.OCCUPATION_EMPLOYEE_CODE~ ot' +
            '.PRC_FUNC_CODE~ ot.PRC_KNOWL_CODE~ ot.PRC_BASE_OP_CODE~ ot.PRC_A' +
            'CTION_CODE~ ContextDate]')
      end
      item
        Name = 'DEFINITE_DEPT_PCA_STATUS_CODE'
        Strings.Strings = (
          
            '%DEFINITE_DEPT_PCA_DISTRIBUTION_STATUS_CODE[ot.DEPT_CODE~ ot.PRC' +
            '_FUNC_CODE~ ot.PRC_KNOWL_CODE~ ot.PRC_BASE_OP_CODE~ ot.PRC_CONCR' +
            'ETE_OP_CODE~ ot.PRC_ACTION_CODE~ ContextDate]')
      end
      item
        Name = 'OCC_PCA_STATUS_CODE'
        Strings.Strings = (
          
            '%OCC_PCA_DISTRIBUTION_STATUS_CODE[ot.OCCUPATION_CODE~ ot.PRC_FUN' +
            'C_CODE~ ot.PRC_KNOWL_CODE~ ot.PRC_BASE_OP_CODE~ ot.PRC_CONCRETE_' +
            'OP_CODE~ ot.PRC_ACTION_CODE~ ContextDate]')
      end
      item
        Name = 'OE_PCA_STATUS_CODE'
        Strings.Strings = (
          
            '%OE_PCA_DISTRIBUTION_STATUS_CODE[ot.OCCUPATION_EMPLOYEE_CODE~ ot' +
            '.PRC_FUNC_CODE~ ot.PRC_KNOWL_CODE~ ot.PRC_BASE_OP_CODE~ ot.PRC_C' +
            'ONCRETE_OP_CODE~ ot.PRC_ACTION_CODE~ ContextDate]')
      end
      item
        Name = 'PRC_BASE_OP_MASTER_CODE_PARAMS'
        Strings.Strings = (
          '(pa.PRC_FUNC_CODE = :PRC_FUNC_CODE) and'
          '(pa.PRC_KNOWL_CODE = :PRC_KNOWL_CODE) and'
          '(pa.PRC_BASE_OP_CODE = :PRC_BASE_OP_CODE)')
      end
      item
        Name = 'PRC_CONCRETE_OP_MASTER_CODE_PARAMS'
        Strings.Strings = (
          '(pa.PRC_CONCRETE_OP_CODE = :PRC_CONCRETE_OP_CODE)')
      end
      item
        Name = 'DEPT_PRC_BASE_ACTIONS_OUTER_JOIN'
        Strings.Strings = (
          '(:PRC_FUNC_CODE = pa2.PRC_FUNC_CODE(+)) and'
          '(:PRC_KNOWL_CODE = pa2.PRC_KNOWL_CODE(+)) and'
          '(:PRC_BASE_OP_CODE = pa2.PRC_BASE_OP_CODE(+))')
      end
      item
        Name = 'DEPT_PRC_CONCRETE_ACTIONS_OUTER_JOIN'
        Strings.Strings = (
          '(:PRC_CONCRETE_OP_CODE = pa2.PRC_CONCRETE_OP_CODE(+))')
      end>
    Left = 88
    Top = 56
  end
  object prvPrcOpRegimes: TDataSetProvider
    DataSet = qryPrcOpRegimes
    Options = [poReadOnly, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 544
    Top = 8
  end
  object qryPrcOpRegimes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  por.PRC_OP_REGIME_CODE,'
      '  por.PRC_OP_REGIME_NO,'
      '  por.PRC_OP_REGIME_NAME,'
      '  por.PRC_OP_REGIME_ABBREV'
      'from'
      '  PRC_OP_REGIMES por'
      'order by'
      '  por.PRC_OP_REGIME_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 544
    Top = 56
    object qryPrcOpRegimesPRC_OP_REGIME_CODE: TAbmesFloatField
      FieldName = 'PRC_OP_REGIME_CODE'
      Required = True
    end
    object qryPrcOpRegimesPRC_OP_REGIME_NO: TAbmesFloatField
      FieldName = 'PRC_OP_REGIME_NO'
      Required = True
    end
    object qryPrcOpRegimesPRC_OP_REGIME_NAME: TAbmesWideStringField
      FieldName = 'PRC_OP_REGIME_NAME'
      Required = True
    end
    object qryPrcOpRegimesPRC_OP_REGIME_ABBREV: TAbmesWideStringField
      FieldName = 'PRC_OP_REGIME_ABBREV'
      Required = True
      Size = 5
    end
  end
  object qryPrcLearningStatuses: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  pls.PRC_LEARNING_STATUS_CODE,'
      '  pls.PRC_LEARNING_STATUS_NO,'
      '  pls.PRC_LEARNING_STATUS_NAME'
      'from'
      '  PRC_LEARNING_STATUSES pls'
      'order by'
      '  pls.PRC_LEARNING_STATUS_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 696
    Top = 56
    object qryPrcLearningStatusesPRC_LEARNING_STATUS_CODE: TAbmesFloatField
      FieldName = 'PRC_LEARNING_STATUS_CODE'
      Required = True
    end
    object qryPrcLearningStatusesPRC_LEARNING_STATUS_NO: TAbmesFloatField
      FieldName = 'PRC_LEARNING_STATUS_NO'
      Required = True
    end
    object qryPrcLearningStatusesPRC_LEARNING_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PRC_LEARNING_STATUS_NAME'
      Required = True
      Size = 100
    end
  end
  object prvPrcLearningStatuses: TDataSetProvider
    DataSet = qryPrcLearningStatuses
    Options = [poReadOnly, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 696
    Top = 8
  end
  object qryProcessKnowl: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_KNOWL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pk.PRC_KNOWL_CODE,'
      '  pk.PARENT_PRC_KNOWL_CODE,'
      '  pk.PRC_KNOWL_LOCAL_NO,'
      '  pk.PRC_KNOWL_NAME,'
      '  pk.PRC_KNOWL_SHORT_NAME,'
      '  pk.IS_GROUP,'
      ''
      '  Decode('
      '    pk.PARENT_PRC_KNOWL_CODE,'
      '    1,'
      '    null,'
      
        '    Cast(%PRC_KNOWL_FULL_NO[pk.PARENT_PRC_KNOWL_CODE] as Varchar' +
        '2(100 char))'
      '  ) as PARENT_FULL_NO,'
      ''
      '  pk.DOC_BRANCH_CODE,'
      '  pk.DOC_CODE,'
      '  %HAS_DOC_ITEMS[pk] as HAS_DOC_ITEMS'
      ''
      'from'
      '  PRC_KNOWLS pk'
      ''
      'where'
      '  (pk.PRC_KNOWL_CODE = :PRC_KNOWL_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_KNOWL_FULL_NO[pk.PARENT_PRC_KNOWL_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pk]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRC_KNOWLS_FOR_EDIT'
    AfterProviderStartTransaction = qryProcessKnowlAfterProviderStartTransaction
    Left = 224
    Top = 512
    object qryProcessKnowlPRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PRC_KNOWL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProcessKnowlPARENT_PRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PARENT_PRC_KNOWL_CODE'
    end
    object qryProcessKnowlPRC_KNOWL_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_KNOWL_LOCAL_NO'
      Required = True
    end
    object qryProcessKnowlPRC_KNOWL_NAME: TAbmesWideStringField
      FieldName = 'PRC_KNOWL_NAME'
      Required = True
      Size = 100
    end
    object qryProcessKnowlPRC_KNOWL_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_KNOWL_SHORT_NAME'
      Required = True
      Size = 100
    end
    object qryProcessKnowlIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
    end
    object qryProcessKnowlPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryProcessKnowlDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProcessKnowlDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProcessKnowlHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
  end
  object prvProcessKnowl: TDataSetProvider
    DataSet = qryProcessKnowl
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = prvProcessKnowlBeforeApplyUpdates
    AfterApplyUpdates = prvProcessKnowlAfterApplyUpdates
    Left = 224
    Top = 464
  end
  object qryOrgPrcDataBaseOps: TAbmesSQLQuery
    BeforeOpen = qryOrgPrcDataBaseOpsBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_BASE_ACTION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_DISTRIBUTION_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_DISTRIBUTION_STATUS_CODE'
        ParamType = ptInput
        Value = '6'
      end
      item
        DataType = ftFloat
        Name = 'OTP_DISTRIBUTION_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
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
        Name = 'PRC_KNOWL_CODE'
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
        Name = 'PRC_CONCRETE_OP_CODE'
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
        Name = 'PRC_CONCRETE_ACTION_CODE'
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
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_ACTION_CODE'
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
        Name = 'PRC_BASE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_BASE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_ACTION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_BASE_OP_CODE'
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
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_ACTION_CODE'
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
      '  *'
      'from'
      '  ( ( select'
      '        *'
      '      from'
      '        ( select'
      '            dpf.PRC_FUNC_CODE,'
      '            Cast(null as Number(10)) as PRC_KNOWL_CODE,'
      '            Cast(null as Number(10)) as PRC_BASE_OP_CODE,'
      '            pa.PRC_ACTION_CODE,'
      '            ( '#39'PRC_FUNC_CODE='#39' || To_Char(dpf.PRC_FUNC_CODE)'
      '            ) as PRC_OBJECT_CODE,'
      
        '            Cast(null as Varchar2(250 char)) as PARENT_PRC_OBJEC' +
        'T_CODE,'
      '            pf.PRC_FUNC_NAME as PRC_OBJECT_NAME,'
      '            pf.PRC_FUNC_SHORT_NAME as PRC_OBJECT_SHORT_NAME,'
      '            %PRC_FUNC_IMAGE_INDEX as PRC_OBJECT_IMAGE_INDEX,'
      
        '            Cast('#39'1:'#39' || %PRC_FUNC_FORMATTED_FULL_NO[pf.PRC_FUNC' +
        '_CODE] as Varchar2(100 char)) as SORT_PRC_OBJECT_NO,'
      ''
      '            pf.DOC_BRANCH_CODE,'
      '            pf.DOC_CODE,'
      '            %HAS_DOC_ITEMS[pf] as HAS_DOC_ITEMS,'
      '            %dot_PROCESS_FUNCTION as DOC_OWNER_TYPE_CODE,'
      ''
      '            Cast(null as Number(10)) as NOT_CLOSED_OTP_COUNT,'
      '            Cast(null as Number(10)) as TOTAL_OTP_COUNT,'
      
        '            Cast(null as Number(10)) as NOT_OCCUPATION_DEPT_COUN' +
        'T,'
      '            Cast(null as Number(10)) as TOTAL_DEPT_COUNT,'
      
        '            Cast(null as Number(10)) as NOT_MASTERED_OCCUPATION_' +
        'COUNT,'
      '            Cast(null as Number(10)) as TOTAL_OCCUPATION_COUNT,'
      ''
      '            Cast(null as Number(10)) as PRC_DISTRIB_STATUS_CODE,'
      '            Cast(null as Number(10)) as PRC_DISTRIBUTION_COUNT,'
      '            Cast(1 as Number(10)) as IS_FILTER_ACCEPTED'
      ''
      '          from'
      '            DEPT_PRC_FUNCS dpf,'
      '            PRC_FUNCS pf,'
      '            PRC_ACTIONS pa'
      ''
      '          where'
      '            (dpf.PRC_FUNC_CODE = pf.PRC_FUNC_CODE) and'
      '            (dpf.DEPT_CODE = %TREE_ROOT_CODE) and'
      ''
      '            (:PRC_BASE_ACTION_CODE * null is null) and'
      '            (:MIN_DISTRIBUTION_STATUS_CODE * null is null) and'
      '            (:MAX_DISTRIBUTION_STATUS_CODE * null is null) and'
      '            (:OTP_DISTRIBUTION_STATE_CODE * null is null) and'
      '            ((:TO_DATE is null) or (:TO_DATE is not null)) and'
      ''
      '            ( (:PRC_FUNC_CODE is null) or'
      
        '              %EXISTS_PRC_FUNC_RELATION[:PRC_FUNC_CODE~ dpf.PRC_' +
        'FUNC_CODE]'
      '            ) and'
      ''
      '            ( (:PRC_KNOWL_CODE is null) or'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    DEPT_PRC_KNOWLS dpk'
      '                  where'
      '                    (dpk.DEPT_CODE = dpf.DEPT_CODE) and'
      '                    (dpk.PRC_FUNC_CODE = dpf.PRC_FUNC_CODE) and'
      
        '                    %EXISTS_PRC_KNOWL_RELATION[:PRC_KNOWL_CODE~ ' +
        'dpk.PRC_KNOWL_CODE]'
      '                )'
      '              )'
      '            ) and'
      ''
      '            ( (:PRC_BASE_OP_CODE is null) or'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    DEPT_PRC_BASE_OPS dpbo'
      '                  where'
      '                    (dpbo.DEPT_CODE = dpf.DEPT_CODE) and'
      '                    (dpbo.PRC_FUNC_CODE = dpf.PRC_FUNC_CODE) and'
      '                    ( (:PRC_KNOWL_CODE is null) or'
      
        '                      %EXISTS_PRC_KNOWL_RELATION[:PRC_KNOWL_CODE' +
        '~ dpbo.PRC_KNOWL_CODE]'
      '                    ) and'
      
        '                    %EXISTS_PRC_BASE_OP_RELATION[:PRC_BASE_OP_CO' +
        'DE~ dpbo.PRC_BASE_OP_CODE]'
      '                )'
      '              )'
      '            ) and'
      ''
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  DEPT_PRC_BASE_ACTIONS dpba2'
      '                where'
      '                  (dpba2.DEPT_CODE = dpf.DEPT_CODE) and'
      '                  (dpba2.PRC_FUNC_CODE = dpf.PRC_FUNC_CODE) and'
      '                  ( (:PRC_KNOWL_CODE is null) or'
      
        '                    %EXISTS_PRC_KNOWL_RELATION[:PRC_KNOWL_CODE~ ' +
        'dpba2.PRC_KNOWL_CODE]'
      '                  ) and'
      '                  ( (:PRC_BASE_OP_CODE is null) or'
      
        '                    %EXISTS_PRC_BASE_OP_RELATION[:PRC_BASE_OP_CO' +
        'DE~ dpba2.PRC_BASE_OP_CODE]'
      '                  ) and'
      ''
      
        '                  %DEPT_PRC_ACTION_FILTER[dpba2~ :PRC_BASE_ACTIO' +
        'N_CODE~ :TO_DATE~ :MIN_DISTRIBUTION_STATUS_CODE~ :MAX_DISTRIBUTI' +
        'ON_STATUS_CODE~ :OTP_DISTRIBUTION_STATE_CODE]'
      '              )'
      '            ) and'
      ''
      '            ( (:PRC_CONCRETE_OP_CODE is null) or'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    DEPT_PRC_CONCRETE_OPS dpco'
      '                  where'
      '                    (dpco.PRC_FUNC_CODE = dpf.PRC_FUNC_CODE) and'
      ''
      '                    ( (:PRC_KNOWL_CODE is null) or'
      
        '                      %EXISTS_PRC_KNOWL_RELATION[:PRC_KNOWL_CODE' +
        '~ dpco.PRC_KNOWL_CODE]'
      '                    ) and'
      '                    ( (:PRC_BASE_OP_CODE is null) or'
      
        '                      %EXISTS_PRC_BASE_OP_RELATION[:PRC_BASE_OP_' +
        'CODE~ dpco.PRC_BASE_OP_CODE]'
      '                    ) and'
      ''
      
        '                    %EXISTS_PRC_CONCRETE_OP_RELATION[:PRC_CONCRE' +
        'TE_OP_CODE~ dpco.PRC_CONCRETE_OP_CODE]'
      '                )'
      '              )'
      '            ) and'
      ''
      '            ( (:PRC_CONCRETE_ACTION_CODE is null) or'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    DEPT_PRC_CONCRETE_ACTIONS dpca'
      '                  where'
      '                    (dpca.PRC_FUNC_CODE = dpf.PRC_FUNC_CODE) and'
      ''
      '                    ( (:PRC_KNOWL_CODE is null) or'
      
        '                      %EXISTS_PRC_KNOWL_RELATION[:PRC_KNOWL_CODE' +
        '~ dpca.PRC_KNOWL_CODE]'
      '                    ) and'
      '                    ( (:PRC_BASE_OP_CODE is null) or'
      
        '                      %EXISTS_PRC_BASE_OP_RELATION[:PRC_BASE_OP_' +
        'CODE~ dpca.PRC_BASE_OP_CODE]'
      '                    ) and'
      '                    ( (:PRC_CONCRETE_OP_CODE is null) or'
      
        '                      %EXISTS_PRC_CONCRETE_OP_RELATION[:PRC_CONC' +
        'RETE_OP_CODE~ dpca.PRC_CONCRETE_OP_CODE]'
      '                    ) and'
      ''
      
        '                    (dpca.PRC_ACTION_CODE = :PRC_CONCRETE_ACTION' +
        '_CODE)'
      '                )'
      '              )'
      '            )'
      '        ) p'
      '      pivot'
      '        ('
      
        '          Min(p.PRC_DISTRIB_STATUS_CODE) as PRC_DISTRIB_STATUS_C' +
        'ODE,'
      
        '          Min(p.PRC_DISTRIBUTION_COUNT) as PRC_DISTRIBUTION_COUN' +
        'T,'
      '          Min(p.IS_FILTER_ACCEPTED) as IS_FILTER_ACCEPTED'
      '          for PRC_ACTION_CODE in (%PRC_ACTION_CODES)'
      '        )'
      '    )'
      ''
      '    union all'
      ''
      '    ( select'
      '        *'
      '      from'
      '        ( select'
      '            dpk.PRC_FUNC_CODE,'
      '            dpk.PRC_KNOWL_CODE,'
      '            Cast(null as Number(10)) as PRC_BASE_OP_CODE,'
      '            pa.PRC_ACTION_CODE,'
      
        '            ( '#39'PRC_FUNC_CODE='#39' || To_Char(dpk.PRC_FUNC_CODE) || ' +
        #39';'#39' ||'
      '              '#39'PRC_KNOWL_CODE='#39' || To_Char(dpk.PRC_KNOWL_CODE)'
      '            ) as PRC_OBJECT_CODE,'
      '            ( '#39'PRC_FUNC_CODE='#39' || To_Char(dpk.PRC_FUNC_CODE)'
      '            ) as PARENT_PRC_OBJECT_CODE,'
      '            pk.PRC_KNOWL_NAME as PRC_OBJECT_NAME,'
      '            ( select'
      
        '                '#39'['#39' || pfk.PRC_RING_NO || '#39'] '#39' || pk.PRC_KNOWL_S' +
        'HORT_NAME'
      '              from'
      '                PRC_FUNC_KNOWLS pfk'
      '              where'
      '                (pfk.PRC_FUNC_CODE = dpk.PRC_FUNC_CODE) and'
      '                (pfk.PRC_KNOWL_CODE = dpk.PRC_KNOWL_CODE)'
      '            ) as PRC_OBJECT_SHORT_NAME,'
      '            %PRC_KNOWL_IMAGE_INDEX as PRC_OBJECT_IMAGE_INDEX,'
      '            Cast('#39'2:'#39' ||'
      '              ( select'
      
        '                  LPad(To_Char(pfk.PRC_RING_NO), 10, '#39'0'#39') || '#39':'#39 +
        ' || LPad(To_Char(pfk.PRC_RING_LOCAL_NO), 10, '#39'0'#39')'
      '                from'
      '                  PRC_FUNC_KNOWLS pfk'
      '                where'
      '                  (pfk.PRC_FUNC_CODE = dpk.PRC_FUNC_CODE) and'
      '                  (pfk.PRC_KNOWL_CODE = dpk.PRC_KNOWL_CODE)'
      '              ) as Varchar2(100 char)'
      '            ) as SORT_PRC_OBJECT_NO,'
      ''
      '            pk.DOC_BRANCH_CODE,'
      '            pk.DOC_CODE,'
      '            %HAS_DOC_ITEMS[pk] as HAS_DOC_ITEMS,'
      '            %dot_PROCESS_KNOWL as DOC_OWNER_TYPE_CODE,'
      ''
      '            Cast(null as Number(10)) as NOT_CLOSED_OTP_COUNT,'
      '            Cast(null as Number(10)) as TOTAL_OTP_COUNT,'
      
        '            Cast(null as Number(10)) as NOT_OCCUPATION_DEPT_COUN' +
        'T,'
      '            Cast(null as Number(10)) as TOTAL_DEPT_COUNT,'
      
        '            Cast(null as Number(10)) as NOT_MASTERED_OCCUPATION_' +
        'COUNT,'
      '            Cast(null as Number(10)) as TOTAL_OCCUPATION_COUNT,'
      ''
      '            Cast(null as Number(10)) as PRC_DISTRIB_STATUS_CODE,'
      '            Cast(null as Number(10)) as PRC_DISTRIBUTION_COUNT,'
      '            Cast(1 as Number(10)) as IS_FILTER_ACCEPTED'
      ''
      '          from'
      '            DEPT_PRC_KNOWLS dpk,'
      '            PRC_KNOWLS pk,'
      '            PRC_ACTIONS pa'
      ''
      '          where'
      '            (dpk.PRC_KNOWL_CODE = pk.PRC_KNOWL_CODE) and'
      '            (dpk.DEPT_CODE = %TREE_ROOT_CODE) and'
      ''
      '            ( (:PRC_FUNC_CODE is null) or'
      
        '              %EXISTS_PRC_FUNC_RELATION[:PRC_FUNC_CODE~ dpk.PRC_' +
        'FUNC_CODE]'
      '            ) and'
      ''
      '            ( (:PRC_KNOWL_CODE is null) or'
      
        '              %EXISTS_PRC_KNOWL_RELATION[:PRC_KNOWL_CODE~ dpk.PR' +
        'C_KNOWL_CODE]'
      '            ) and'
      ''
      '            ( (:PRC_BASE_OP_CODE is null) or'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    DEPT_PRC_BASE_OPS dpbo'
      '                  where'
      '                    (dpbo.DEPT_CODE = dpk.DEPT_CODE) and'
      '                    (dpbo.PRC_FUNC_CODE = dpk.PRC_FUNC_CODE) and'
      
        '                    (dpbo.PRC_KNOWL_CODE = dpk.PRC_KNOWL_CODE) a' +
        'nd'
      
        '                    %EXISTS_PRC_BASE_OP_RELATION[:PRC_BASE_OP_CO' +
        'DE~ dpbo.PRC_BASE_OP_CODE]'
      '                )'
      '              )'
      '            ) and'
      ''
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  DEPT_PRC_BASE_ACTIONS dpba2'
      '                where'
      '                  (dpba2.DEPT_CODE = dpk.DEPT_CODE) and'
      '                  (dpba2.PRC_FUNC_CODE = dpk.PRC_FUNC_CODE) and'
      
        '                  (dpba2.PRC_KNOWL_CODE = dpk.PRC_KNOWL_CODE) an' +
        'd'
      '                  ( (:PRC_BASE_OP_CODE is null) or'
      
        '                    %EXISTS_PRC_BASE_OP_RELATION[:PRC_BASE_OP_CO' +
        'DE~ dpba2.PRC_BASE_OP_CODE]'
      '                  ) and'
      ''
      
        '                  %DEPT_PRC_ACTION_FILTER[dpba2~ :PRC_BASE_ACTIO' +
        'N_CODE~ :TO_DATE~ :MIN_DISTRIBUTION_STATUS_CODE~ :MAX_DISTRIBUTI' +
        'ON_STATUS_CODE~ :OTP_DISTRIBUTION_STATE_CODE]'
      '              )'
      '            ) and'
      ''
      '            ( (:PRC_CONCRETE_OP_CODE is null) or'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    DEPT_PRC_CONCRETE_OPS dpco'
      '                  where'
      '                    (dpco.PRC_FUNC_CODE = dpk.PRC_FUNC_CODE) and'
      
        '                    (dpco.PRC_KNOWL_CODE = dpk.PRC_KNOWL_CODE) a' +
        'nd'
      ''
      '                    ( (:PRC_BASE_OP_CODE is null) or'
      
        '                      %EXISTS_PRC_BASE_OP_RELATION[:PRC_BASE_OP_' +
        'CODE~ dpco.PRC_BASE_OP_CODE]'
      '                    ) and'
      ''
      
        '                    %EXISTS_PRC_CONCRETE_OP_RELATION[:PRC_CONCRE' +
        'TE_OP_CODE~ dpco.PRC_CONCRETE_OP_CODE]'
      '                )'
      '              )'
      '            ) and'
      ''
      '            ( (:PRC_CONCRETE_ACTION_CODE is null) or'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    DEPT_PRC_CONCRETE_ACTIONS dpca'
      '                  where'
      '                    (dpca.PRC_FUNC_CODE = dpk.PRC_FUNC_CODE) and'
      
        '                    (dpca.PRC_KNOWL_CODE = dpk.PRC_KNOWL_CODE) a' +
        'nd'
      ''
      '                    ( (:PRC_BASE_OP_CODE is null) or'
      
        '                      %EXISTS_PRC_BASE_OP_RELATION[:PRC_BASE_OP_' +
        'CODE~ dpca.PRC_BASE_OP_CODE]'
      '                    ) and'
      '                    ( (:PRC_CONCRETE_OP_CODE is null) or'
      
        '                      %EXISTS_PRC_CONCRETE_OP_RELATION[:PRC_CONC' +
        'RETE_OP_CODE~ dpca.PRC_CONCRETE_OP_CODE]'
      '                    ) and'
      ''
      
        '                    (dpca.PRC_ACTION_CODE = :PRC_CONCRETE_ACTION' +
        '_CODE)'
      '                )'
      '              )'
      '            )'
      '        ) p'
      '      pivot'
      '        ('
      
        '          Min(p.PRC_DISTRIB_STATUS_CODE) as PRC_DISTRIB_STATUS_C' +
        'ODE,'
      
        '          Min(p.PRC_DISTRIBUTION_COUNT) as PRC_DISTRIBUTION_COUN' +
        'T,'
      '          Min(p.IS_FILTER_ACCEPTED) as IS_FILTER_ACCEPTED'
      '          for PRC_ACTION_CODE in (%PRC_ACTION_CODES)'
      '        )'
      '    )'
      ''
      '    union all'
      ''
      '    ( select'
      '        *'
      '      from'
      '        ( select'
      '            dpba.PRC_FUNC_CODE,'
      '            dpba.PRC_KNOWL_CODE,'
      '            dpba.PRC_BASE_OP_CODE,'
      '            dpba.PRC_ACTION_CODE,'
      ''
      
        '            ( '#39'PRC_FUNC_CODE='#39' || To_Char(dpba.PRC_FUNC_CODE) ||' +
        ' '#39';'#39' ||'
      
        '              '#39'PRC_KNOWL_CODE='#39' || To_Char(dpba.PRC_KNOWL_CODE) ' +
        '|| '#39';'#39' ||'
      
        '              '#39'PRC_BASE_OP_CODE='#39' || To_Char(dpba.PRC_BASE_OP_CO' +
        'DE)'
      '            ) as PRC_OBJECT_CODE,'
      ''
      
        '            ( '#39'PRC_FUNC_CODE='#39' || To_Char(dpba.PRC_FUNC_CODE) ||' +
        ' '#39';'#39' ||'
      '              '#39'PRC_KNOWL_CODE='#39' || To_Char(dpba.PRC_KNOWL_CODE)'
      '            ) as PARENT_PRC_OBJECT_CODE,'
      ''
      '            pbo.PRC_BASE_OP_NAME as PRC_OBJECT_NAME,'
      '            ( select'
      
        '                '#39'['#39' || pfkb.PRC_RING_NO || '#39'] '#39' || pbo.PRC_BASE_' +
        'OP_SHORT_NAME'
      '              from'
      '                PRC_FUNC_KNOWL_BASE_OPS pfkb'
      '              where'
      '                (pfkb.PRC_FUNC_CODE = dpba.PRC_FUNC_CODE) and'
      '                (pfkb.PRC_KNOWL_CODE = dpba.PRC_KNOWL_CODE) and'
      '                (pfkb.PRC_BASE_OP_CODE = dpba.PRC_BASE_OP_CODE)'
      '            ) as PRC_OBJECT_SHORT_NAME,'
      '            %PRC_BASE_OP_IMAGE_INDEX as PRC_OBJECT_IMAGE_INDEX,'
      ''
      '            Cast('#39'2:'#39' ||'
      '              ( select'
      
        '                  LPad(To_Char(pfkbo.PRC_RING_NO), 10, '#39'0'#39') || '#39 +
        ':'#39' || LPad(To_Char(pfkbo.PRC_RING_LOCAL_NO), 10, '#39'0'#39')'
      '                from'
      '                  PRC_FUNC_KNOWL_BASE_OPS pfkbo'
      '                where'
      '                  (pfkbo.PRC_FUNC_CODE = dpba.PRC_FUNC_CODE) and'
      
        '                  (pfkbo.PRC_KNOWL_CODE = dpba.PRC_KNOWL_CODE) a' +
        'nd'
      
        '                  (pfkbo.PRC_BASE_OP_CODE = dpba.PRC_BASE_OP_COD' +
        'E)'
      '              ) as Varchar2(100 char)'
      '            ) as SORT_PRC_OBJECT_NO,'
      ''
      
        '            (select p.DOC_BRANCH_CODE from PRODUCTS p where (p.P' +
        'RODUCT_CODE = pbo.DOC_PRODUCT_CODE)) as DOC_BRANCH_CODE,'
      
        '            (select p.DOC_CODE from PRODUCTS p where (p.PRODUCT_' +
        'CODE = pbo.DOC_PRODUCT_CODE)) as DOC_CODE,'
      
        '            (select %HAS_DOC_ITEMS[p] from PRODUCTS p where (p.P' +
        'RODUCT_CODE = pbo.DOC_PRODUCT_CODE)) as HAS_DOC_ITEMS,'
      '            %dot_PRODUCT as DOC_OWNER_TYPE_CODE,'
      ''
      
        '            %NOT_CLOSED_OTP_COUNT[dpba~ :TO_DATE] as NOT_CLOSED_' +
        'OTP_COUNT,'
      '            %TOTAL_OTP_COUNT[dpba~ :TO_DATE] as TOTAL_OTP_COUNT,'
      ''
      
        '            %NOT_OCCUPATION_DEPT_COUNT[dpba] as NOT_OCCUPATION_D' +
        'EPT_COUNT,'
      '            %TOTAL_DEPT_COUNT[dpba] as TOTAL_DEPT_COUNT,'
      ''
      
        '            %NOT_MASTERED_OCCUPATION_COUNT[dpba~ :TO_DATE] as NO' +
        'T_MASTERED_OCCUPATION_COUNT,'
      
        '            %TOTAL_OCCUPATION_COUNT[dpba] as TOTAL_OCCUPATION_CO' +
        'UNT,'
      ''
      
        '            %GROUP_DEPT_PBA_DISTRIBUTION_STATUS_CODE[dpba.DEPT_C' +
        'ODE~ dpba.PRC_FUNC_CODE~ dpba.PRC_KNOWL_CODE~ dpba.PRC_BASE_OP_C' +
        'ODE~ dpba.PRC_ACTION_CODE~ :TO_DATE] as PRC_DISTRIB_STATUS_CODE,'
      
        '            %GROUP_DEPT_PBA_DISTRIBUTION_COUNT[dpba] as PRC_DIST' +
        'RIBUTION_COUNT,'
      ''
      '            ( select'
      '                Sign(Count(*))'
      '              from'
      '                DUAL'
      '              where'
      
        '                %DEPT_PRC_ACTION_FILTER[dpba~ :PRC_BASE_ACTION_C' +
        'ODE~ :TO_DATE~ :MIN_DISTRIBUTION_STATUS_CODE~ :MAX_DISTRIBUTION_' +
        'STATUS_CODE~ :OTP_DISTRIBUTION_STATE_CODE]'
      '            ) as IS_FILTER_ACCEPTED'
      ''
      '          from'
      '            DEPT_PRC_BASE_ACTIONS dpba,'
      '            PRC_BASE_OPS pbo'
      ''
      '          where'
      '            (dpba.PRC_BASE_OP_CODE = pbo.PRC_BASE_OP_CODE) and'
      '            (dpba.DEPT_CODE = %TREE_ROOT_CODE) and'
      ''
      '            ( (:PRC_FUNC_CODE is null) or'
      
        '              %EXISTS_PRC_FUNC_RELATION[:PRC_FUNC_CODE~ dpba.PRC' +
        '_FUNC_CODE]'
      '            ) and'
      ''
      '            ( (:PRC_KNOWL_CODE is null) or'
      
        '              %EXISTS_PRC_KNOWL_RELATION[:PRC_KNOWL_CODE~ dpba.P' +
        'RC_KNOWL_CODE]'
      '            ) and'
      ''
      '            ( (:PRC_BASE_OP_CODE is null) or'
      
        '              %EXISTS_PRC_BASE_OP_RELATION[:PRC_BASE_OP_CODE~ dp' +
        'ba.PRC_BASE_OP_CODE]'
      '            ) and'
      ''
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  DEPT_PRC_BASE_ACTIONS dpba2'
      '                where'
      '                  (dpba2.DEPT_CODE = dpba.DEPT_CODE) and'
      '                  (dpba2.PRC_FUNC_CODE = dpba.PRC_FUNC_CODE) and'
      
        '                  (dpba2.PRC_KNOWL_CODE = dpba.PRC_KNOWL_CODE) a' +
        'nd'
      
        '                  (dpba2.PRC_BASE_OP_CODE = dpba.PRC_BASE_OP_COD' +
        'E) and'
      ''
      
        '                  %DEPT_PRC_ACTION_FILTER[dpba2~ :PRC_BASE_ACTIO' +
        'N_CODE~ :TO_DATE~ :MIN_DISTRIBUTION_STATUS_CODE~ :MAX_DISTRIBUTI' +
        'ON_STATUS_CODE~ :OTP_DISTRIBUTION_STATE_CODE]'
      '              )'
      '            ) and'
      ''
      '            ( (:PRC_CONCRETE_OP_CODE is null) or'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    DEPT_PRC_CONCRETE_OPS dpco'
      '                  where'
      
        '                    (dpco.PRC_FUNC_CODE = dpba.PRC_FUNC_CODE) an' +
        'd'
      
        '                    (dpco.PRC_KNOWL_CODE = dpba.PRC_KNOWL_CODE) ' +
        'and'
      
        '                    (dpco.PRC_BASE_OP_CODE = dpba.PRC_BASE_OP_CO' +
        'DE) and'
      
        '                    %EXISTS_PRC_CONCRETE_OP_RELATION[:PRC_CONCRE' +
        'TE_OP_CODE~ dpco.PRC_CONCRETE_OP_CODE]'
      '                )'
      '              )'
      '            ) and'
      ''
      '            ( (:PRC_CONCRETE_ACTION_CODE is null) or'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    DEPT_PRC_CONCRETE_ACTIONS dpca'
      '                  where'
      
        '                    (dpca.PRC_FUNC_CODE = dpba.PRC_FUNC_CODE) an' +
        'd'
      
        '                    (dpca.PRC_KNOWL_CODE = dpba.PRC_KNOWL_CODE) ' +
        'and'
      
        '                    (dpca.PRC_BASE_OP_CODE = dpba.PRC_BASE_OP_CO' +
        'DE) and'
      ''
      '                    ( (:PRC_CONCRETE_OP_CODE is null) or'
      
        '                      %EXISTS_PRC_CONCRETE_OP_RELATION[:PRC_CONC' +
        'RETE_OP_CODE~ dpca.PRC_CONCRETE_OP_CODE]'
      '                    ) and'
      ''
      
        '                    (dpca.PRC_ACTION_CODE = :PRC_CONCRETE_ACTION' +
        '_CODE)'
      '                )'
      '              )'
      '            )'
      '        ) p'
      '      pivot'
      '        ('
      
        '          Min(p.PRC_DISTRIB_STATUS_CODE) as PRC_DISTRIB_STATUS_C' +
        'ODE,'
      
        '          Min(p.PRC_DISTRIBUTION_COUNT) as PRC_DISTRIBUTION_COUN' +
        'T,'
      '          Min(p.IS_FILTER_ACCEPTED) as IS_FILTER_ACCEPTED'
      '          for PRC_ACTION_CODE in (%PRC_ACTION_CODES)'
      '        )'
      '    )'
      '  ) prc'
      ''
      'order by'
      '  prc.SORT_PRC_OBJECT_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_FUNC_IMAGE_INDEX'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRC_FUNC_FORMATTED_FULL_NO[pf.PRC_FUNC_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pf]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'dot_PROCESS_FUNCTION'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'TREE_ROOT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'EXISTS_PRC_FUNC_RELATION[:PRC_FUNC_CODE~ dpf.PRC_FUNC_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'EXISTS_PRC_KNOWL_RELATION[:PRC_KNOWL_CODE~ dpk.PRC_KNOWL_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'EXISTS_PRC_KNOWL_RELATION[:PRC_KNOWL_CODE~ dpbo.PRC_KNOWL_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'EXISTS_PRC_BASE_OP_RELATION[:PRC_BASE_OP_CODE~ dpbo.PRC_BASE_OP_' +
          'CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'EXISTS_PRC_KNOWL_RELATION[:PRC_KNOWL_CODE~ dpba2.PRC_KNOWL_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'EXISTS_PRC_BASE_OP_RELATION[:PRC_BASE_OP_CODE~ dpba2.PRC_BASE_OP' +
          '_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'DEPT_PRC_ACTION_FILTER[dpba2~ :PRC_BASE_ACTION_CODE~ :TO_DATE~ :' +
          'MIN_DISTRIBUTION_STATUS_CODE~ :MAX_DISTRIBUTION_STATUS_CODE~ :OT' +
          'P_DISTRIBUTION_STATE_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'EXISTS_PRC_KNOWL_RELATION[:PRC_KNOWL_CODE~ dpco.PRC_KNOWL_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'EXISTS_PRC_BASE_OP_RELATION[:PRC_BASE_OP_CODE~ dpco.PRC_BASE_OP_' +
          'CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'EXISTS_PRC_CONCRETE_OP_RELATION[:PRC_CONCRETE_OP_CODE~ dpco.PRC_' +
          'CONCRETE_OP_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'EXISTS_PRC_KNOWL_RELATION[:PRC_KNOWL_CODE~ dpca.PRC_KNOWL_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'EXISTS_PRC_BASE_OP_RELATION[:PRC_BASE_OP_CODE~ dpca.PRC_BASE_OP_' +
          'CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'EXISTS_PRC_CONCRETE_OP_RELATION[:PRC_CONCRETE_OP_CODE~ dpca.PRC_' +
          'CONCRETE_OP_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_ACTION_CODES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRC_KNOWL_IMAGE_INDEX'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pk]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'dot_PROCESS_KNOWL'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'EXISTS_PRC_FUNC_RELATION[:PRC_FUNC_CODE~ dpk.PRC_FUNC_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_BASE_OP_IMAGE_INDEX'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'dot_PRODUCT'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'NOT_CLOSED_OTP_COUNT[dpba~ :TO_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'TOTAL_OTP_COUNT[dpba~ :TO_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'NOT_OCCUPATION_DEPT_COUNT[dpba]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'TOTAL_DEPT_COUNT[dpba]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'NOT_MASTERED_OCCUPATION_COUNT[dpba~ :TO_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'TOTAL_OCCUPATION_COUNT[dpba]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'GROUP_DEPT_PBA_DISTRIBUTION_STATUS_CODE[dpba.DEPT_CODE~ dpba.PRC' +
          '_FUNC_CODE~ dpba.PRC_KNOWL_CODE~ dpba.PRC_BASE_OP_CODE~ dpba.PRC' +
          '_ACTION_CODE~ :TO_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'GROUP_DEPT_PBA_DISTRIBUTION_COUNT[dpba]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'DEPT_PRC_ACTION_FILTER[dpba~ :PRC_BASE_ACTION_CODE~ :TO_DATE~ :M' +
          'IN_DISTRIBUTION_STATUS_CODE~ :MAX_DISTRIBUTION_STATUS_CODE~ :OTP' +
          '_DISTRIBUTION_STATE_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'EXISTS_PRC_FUNC_RELATION[:PRC_FUNC_CODE~ dpba.PRC_FUNC_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'EXISTS_PRC_KNOWL_RELATION[:PRC_KNOWL_CODE~ dpba.PRC_KNOWL_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'EXISTS_PRC_BASE_OP_RELATION[:PRC_BASE_OP_CODE~ dpba.PRC_BASE_OP_' +
          'CODE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 704
    Top = 696
  end
  object prvOrgPrcDataBaseOps: TDataSetProvider
    DataSet = qryOrgPrcDataBaseOps
    UpdateMode = upWhereKeyOnly
    Left = 704
    Top = 648
  end
  object qryOrgPrcDataDepts: TAbmesSQLQuery
    BeforeOpen = qryOrgPrcDataDeptsBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MIN_DISTRIBUTION_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_DISTRIBUTION_STATUS_CODE'
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
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  ( select'
      '      d.DEPT_CODE,'
      '      pa2.PRC_ACTION_CODE,'
      ''
      '      d.PARENT_CODE,'
      '      d.NAME as DEPT_NAME,'
      '      %DEPT_IDENTIFIER[d.DEPT_CODE] as DEPT_IDENTIFIER,'
      '      d.IS_GROUP,'
      '      ( select'
      '          Sign(Count(*))'
      '        from'
      '          FIN_STORES fs'
      '        where'
      '          (fs.STORE_CODE = d.DEPT_CODE)'
      '      ) as IS_FIN_STORE,'
      
        '      Decode(d.DEPT_CODE, %TREE_ROOT_CODE, 0, Decode(d.IS_GROUP,' +
        ' 1, 1, 2)) as DEPT_IMAGE_INDEX,'
      ''
      '      Coalesce('
      '        ( select'
      '            1'
      '          from'
      '            DEFINITE_DEPTS dd'
      '          where'
      '            (dd.DEPT_CODE = d.DEPT_CODE)'
      '        ),'
      '        2'
      '      ) as NODE_TYPE,'
      ''
      '      d.DOC_BRANCH_CODE,'
      '      d.DOC_CODE,'
      '      %HAS_DOC_ITEMS[d] as HAS_DOC_ITEMS,'
      '      %dot_DEPT as DOC_OWNER_TYPE_CODE,'
      ''
      
        '      (select p.DOC_BRANCH_CODE from PRODUCTS p where (p.PRODUCT' +
        '_CODE = d.PRODUCT_CODE)) as PRODUCT_DOC_BRANCH_CODE,'
      
        '      (select p.DOC_CODE from PRODUCTS p where (p.PRODUCT_CODE =' +
        ' d.PRODUCT_CODE)) as PRODUCT_DOC_CODE,'
      
        '      (select %HAS_DOC_ITEMS[p] from PRODUCTS p where (p.PRODUCT' +
        '_CODE = d.PRODUCT_CODE)) as PRODUCT_HAS_DOC_ITEMS,'
      '      %dot_PRODUCT as PRODUCT_DOC_OWNER_TYPE_CODE,'
      ''
      '      %PRC_ACTION_STATUS_MACRO as PRC_DISTRIB_STATUS_CODE,'
      ''
      '      0 as PRC_DISTRIBUTION_COUNT,'
      ''
      '      ( select'
      '          Sign(Count(*))'
      '        from'
      '          DUAL'
      '        where'
      '          ( (%PRC_ACTION_CODE_PARAM is null) or'
      '            (pa2.PRC_ACTION_CODE = %PRC_ACTION_CODE_PARAM)'
      '          ) and'
      
        '          (%PRC_ACTION_STATUS_MACRO between :MIN_DISTRIBUTION_ST' +
        'ATUS_CODE and :MAX_DISTRIBUTION_STATUS_CODE)'
      '      ) as IS_FILTER_ACCEPTED'
      '    from'
      '      DEPTS d,'
      '      %PRC_ACTIONS_TABLE_NAME pa2'
      '    where'
      '      (:PRC_FUNC_CODE * null is null) and'
      '      (:PRC_KNOWL_CODE * null is null) and'
      '      (:PRC_BASE_OP_CODE * null is null) and'
      '      (:PRC_BASE_ACTION_CODE * null is null) and'
      '      (:PRC_CONCRETE_OP_CODE * null is null) and'
      '      (:PRC_CONCRETE_ACTION_CODE * null is null) and'
      '      ((:TO_DATE is null) or (:TO_DATE is not null)) and'
      ''
      '      (d.DEPT_CODE = pa2.DEPT_CODE(+)) and'
      ''
      '      %DEPT_PRC_ACTIONS_OUTER_JOIN and'
      ''
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            DEPT_RELATIONS dr'
      '          where'
      '            (dr.ANCESTOR_DEPT_CODE = d.DEPT_CODE) and'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  %PRC_ACTIONS_TABLE_NAME pa'
      '                where'
      '                  (pa.DEPT_CODE = dr.DESCENDANT_DEPT_CODE) and'
      '                  %PRC_MASTER_CODE_PARAMS'
      '              )'
      '            )'
      '        )'
      '      )'
      '  ) p'
      'pivot'
      '  ('
      '    Min(p.PRC_DISTRIB_STATUS_CODE) as PRC_DISTRIB_STATUS_CODE,'
      '    Min(p.PRC_DISTRIBUTION_COUNT) as PRC_DISTRIBUTION_COUNT,'
      '    Min(p.IS_FILTER_ACCEPTED) as IS_FILTER_ACCEPTED'
      '    for PRC_ACTION_CODE in (%PRC_ACTION_CODES)'
      '  )'
      'order by'
      '  NODE_TYPE,'
      '  DEPT_IDENTIFIER')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'DEPT_IDENTIFIER[d.DEPT_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'TREE_ROOT_CODE'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'dot_DEPT'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'dot_PRODUCT'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_ACTION_STATUS_MACRO'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_ACTION_CODE_PARAM'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_ACTIONS_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'DEPT_PRC_ACTIONS_OUTER_JOIN'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_MASTER_CODE_PARAMS'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_ACTION_CODES'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptUnknown
      end>
    Left = 640
    Top = 808
  end
  object prvOrgPrcDataDepts: TDataSetProvider
    DataSet = qryOrgPrcDataDepts
    UpdateMode = upWhereKeyOnly
    Left = 640
    Top = 760
  end
  object qryOrgPrcDataOccupations: TAbmesSQLQuery
    BeforeOpen = qryOrgPrcDataOccupationsBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_DISTRIBUTION_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_DISTRIBUTION_STATUS_CODE'
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
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  ( select'
      '      pa.OCCUPATION_CODE,'
      '      pa.PRC_ACTION_CODE,'
      ''
      '      o.OCCUPATION_NAME,'
      ''
      '      ( case'
      
        '          when (:TO_DATE between o.OCCUPATION_BEGIN_DATE and o.O' +
        'CCUPATION_END_DATE) then 1'
      '        else'
      '          0'
      '        end'
      '      ) as IS_ACTIVE,'
      ''
      '      Nvl2(oe.EMPLOYEE_CODE, 1, 0) as IS_OCCUPIED,'
      '      o.IS_MAIN,'
      ''
      '      ( select'
      
        '          (op.OCCUPATION_PHASE_CODE || '#39' - '#39' || op.OCCUPATION_PH' +
        'ASE_NAME)'
      '        from'
      '          OCCUPATION_PHASES op'
      '        where'
      '          (op.OCCUPATION_PHASE_CODE = o.OCCUPATION_PHASE_CODE)'
      '      ) as OCCUPATION_PHASE,'
      ''
      '      o.OCCUPATION_LEVEL,'
      '      %DEPT_IDENTIFIER[o.DEPT_CODE] as DEPT_IDENTIFIER,'
      
        '      (o.OCCUPATION_END_DATE - Cast(:TO_DATE as Date)) as OCCUPA' +
        'TION_DAY_DIFF,'
      ''
      '      ( select'
      
        '          (e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) ||' +
        ' '#39'. '#39' || e.LAST_NAME)'
      '        from'
      '          EMPLOYEES e'
      '        where'
      '          (e.EMPLOYEE_CODE = oe.EMPLOYEE_CODE)'
      '      ) as EMPLOYEE_NAME,'
      ''
      
        '      Nvl2(oe.ASSIGNMENT_END_DATE, oe.ASSIGNMENT_END_DATE - Cast' +
        '(:TO_DATE as Date), null) as OCCUPATION_EMPLOYEE_DAY_DIFF,'
      ''
      '      o.DOC_BRANCH_CODE,'
      '      o.DOC_CODE,'
      '      %HAS_DOC_ITEMS[o] as HAS_DOC_ITEMS,'
      '      %dot_OCCUPATION as DOC_OWNER_TYPE_CODE,'
      ''
      
        '      (select p.DOC_BRANCH_CODE from PRODUCTS p where (p.PRODUCT' +
        '_CODE = o.PRODUCT_CODE)) as PRODUCT_DOC_BRANCH_CODE,'
      
        '      (select p.DOC_CODE from PRODUCTS p where (p.PRODUCT_CODE =' +
        ' o.PRODUCT_CODE)) as PRODUCT_DOC_CODE,'
      
        '      (select %HAS_DOC_ITEMS[p] from PRODUCTS p where (p.PRODUCT' +
        '_CODE = o.PRODUCT_CODE)) as PRODUCT_HAS_DOC_ITEMS,'
      '      %dot_PRODUCT as PRODUCT_DOC_OWNER_TYPE_CODE,'
      ''
      '      %PRC_ACTION_STATUS_MACRO as PRC_DISTRIB_STATUS_CODE,'
      ''
      '      0 as PRC_DISTRIBUTION_COUNT,'
      ''
      '      ( select'
      '          Sign(Count(*))'
      '        from'
      '          DUAL'
      '        where'
      '          ( (%PRC_ACTION_CODE_PARAM is null) or'
      '            (pa.PRC_ACTION_CODE = %PRC_ACTION_CODE_PARAM)'
      '          ) and'
      ''
      
        '          (%PRC_ACTION_STATUS_MACRO between :MIN_DISTRIBUTION_ST' +
        'ATUS_CODE and :MAX_DISTRIBUTION_STATUS_CODE)'
      '      ) as IS_FILTER_ACCEPTED'
      ''
      '    from'
      '      OCCUPATIONS o,'
      '      OCCUPATION_EMPLOYEES oe,'
      '      %PRC_ACTIONS_TABLE_NAME pa'
      ''
      '    where'
      '      (:PRC_FUNC_CODE * null is null) and'
      '      (:PRC_KNOWL_CODE * null is null) and'
      '      (:PRC_BASE_OP_CODE * null is null) and'
      '      (:PRC_BASE_ACTION_CODE * null is null) and'
      '      (:PRC_CONCRETE_OP_CODE * null is null) and'
      '      (:PRC_CONCRETE_ACTION_CODE * null is null) and'
      '      ((:TO_DATE is null) or (:TO_DATE is not null)) and'
      ''
      '      (o.OCCUPATION_CODE = oe.OCCUPATION_CODE(+)) and'
      
        '      (:TO_DATE between oe.ASSIGNMENT_BEGIN_DATE(+) and oe.ASSIG' +
        'NMENT_END_DATE(+))and'
      ''
      '      (o.OCCUPATION_CODE = pa.OCCUPATION_CODE) and'
      ''
      '      %PRC_MASTER_CODE_PARAMS'
      '  ) p'
      'pivot'
      '  ('
      '    Min(p.PRC_DISTRIB_STATUS_CODE) as PRC_DISTRIB_STATUS_CODE,'
      '    Min(p.PRC_DISTRIBUTION_COUNT) as PRC_DISTRIBUTION_COUNT,'
      '    Min(p.IS_FILTER_ACCEPTED) as IS_FILTER_ACCEPTED'
      '    for PRC_ACTION_CODE in (%PRC_ACTION_CODES)'
      '  ) x'
      'order by'
      '  x.OCCUPATION_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'DEPT_IDENTIFIER[o.DEPT_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[o]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'dot_OCCUPATION'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'dot_PRODUCT'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_ACTION_STATUS_MACRO'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_ACTION_CODE_PARAM'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_ACTIONS_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_MASTER_CODE_PARAMS'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_ACTION_CODES'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptUnknown
      end>
    Left = 784
    Top = 808
  end
  object prvOrgPrcDataOccupations: TDataSetProvider
    DataSet = qryOrgPrcDataOccupations
    UpdateMode = upWhereKeyOnly
    Left = 784
    Top = 760
  end
  object qryOrgPrcDataConcreteOps: TAbmesSQLQuery
    BeforeOpen = qryOrgPrcDataConcreteOpsBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OTP_DISTRIBUTION_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_DISTRIBUTION_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_DISTRIBUTION_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
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
        DataType = ftUnknown
        Name = 'PRC_CONCRETE_ACTION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  ( select'
      '      *'
      '    from'
      '      ( select'
      '          pco.PRC_CONCRETE_OP_CODE,'
      '          pa.PRC_ACTION_CODE,'
      '          pco.PARENT_PRC_CONCRETE_OP_CODE,'
      
        '          (%PRC_CONCRETE_OP_FULL_NO[pco.PRC_CONCRETE_OP_CODE] ||' +
        ' '#39' '#39' || pco.PRC_CONCRETE_OP_NAME) as PRC_CONCRETE_OP_DISPLAY_NAM' +
        'E,'
      
        '          %PRC_CONCRETE_OP_FORMATTED_FULL_NO[pco.PRC_CONCRETE_OP' +
        '_CODE] as PRC_CONCR_OP_FORMATTED_FULL_NO,'
      
        '          Nvl2(pco.PARENT_PRC_CONCRETE_OP_CODE, (179 - 20 * pco.' +
        'IS_GROUP + 14 * Nvl2(pco.DEACTIVATION_DATE, 1, 0)), 157) as PRC_' +
        'CONCRETE_OP_IMAGE_INDEX,'
      ''
      
        '          Decode(pco.IS_GROUP, 1, pco.DOC_BRANCH_CODE, (select p' +
        '.DOC_BRANCH_CODE from PRODUCTS p where (p.PRODUCT_CODE = pco.DOC' +
        '_PRODUCT_CODE))) as DOC_BRANCH_CODE,'
      
        '          Decode(pco.IS_GROUP, 1, pco.DOC_CODE, (select p.DOC_CO' +
        'DE from PRODUCTS p where (p.PRODUCT_CODE = pco.DOC_PRODUCT_CODE)' +
        ')) as DOC_CODE,'
      
        '          Decode(pco.IS_GROUP, 1, %HAS_DOC_ITEMS[pco], (select %' +
        'HAS_DOC_ITEMS[p] from PRODUCTS p where (p.PRODUCT_CODE = pco.DOC' +
        '_PRODUCT_CODE))) as HAS_DOC_ITEMS,'
      
        '          Decode(pco.IS_GROUP, 1, %dot_PROCESS_CONCRETE_OPERATIO' +
        'N, %dot_PRODUCT) as DOC_OWNER_TYPE_CODE,'
      ''
      
        '          Decode(pco.IS_GROUP, 0, %CONCR_NOT_CLOSED_OTP_COUNT[pc' +
        'o~ :TO_DATE]) as NOT_CLOSED_OTP_COUNT,'
      
        '          Decode(pco.IS_GROUP, 0, %CONCR_TOTAL_OTP_COUNT[pco~ :T' +
        'O_DATE]) as TOTAL_OTP_COUNT,'
      ''
      
        '          Decode(pco.IS_GROUP, 0, %CONCR_NOT_OCCUPATION_DEPT_COU' +
        'NT[pco]) as NOT_OCCUPATION_DEPT_COUNT,'
      
        '          Decode(pco.IS_GROUP, 0, %CONCR_TOTAL_DEPT_COUNT[pco]) ' +
        'as TOTAL_DEPT_COUNT,'
      ''
      
        '          Decode(pco.IS_GROUP, 0, %CONCR_NOT_MASTERED_OCCUPATION' +
        '_COUNT[pco~ :TO_DATE]) as NOT_MASTERED_OCCUPATION_COUNT,'
      
        '          Decode(pco.IS_GROUP, 0, %CONCR_TOTAL_OCCUPATION_COUNT[' +
        'pco]) as TOTAL_OCCUPATION_COUNT,'
      ''
      
        '          Decode(pco.IS_GROUP, 0, %ORG_PCA_DISTRIBUTION_STATUS_C' +
        'ODE[pco.PRC_CONCRETE_OP_CODE~ pa.PRC_ACTION_CODE~ :TO_DATE]) as ' +
        'PRC_DISTRIB_STATUS_CODE,'
      '          0 as PRC_DISTRIBUTION_COUNT,'
      ''
      '          ( select'
      '              Sign(Count(*))'
      '            from'
      '              DUAL'
      '            where'
      
        '              %ORG_PRC_CONCRETE_ACTION_FILTER[pco~ pa~ :TO_DATE~' +
        ' :MIN_DISTRIBUTION_STATUS_CODE~ :MAX_DISTRIBUTION_STATUS_CODE~ :' +
        'OTP_DISTRIBUTION_STATE_CODE~ :PRC_CONCRETE_ACTION_CODE] and'
      ''
      '              (:OTP_DISTRIBUTION_STATE_CODE * null is null) and'
      '              (:MIN_DISTRIBUTION_STATUS_CODE * null is null) and'
      '              (:MAX_DISTRIBUTION_STATUS_CODE * null is null) and'
      '              ((:TO_DATE is null) or (:TO_DATE is not null))'
      '          ) as IS_FILTER_ACCEPTED'
      ''
      '        from'
      '          PRC_CONCRETE_OPS pco,'
      '          PRC_CONCRETE_ACTIONS pa'
      ''
      '        where'
      '          ( ( (pco.IS_GROUP = 0) and'
      
        '               %ORG_PRC_CONCRETE_ACTION_FILTER[pco~ pa~ :TO_DATE' +
        '~ :MIN_DISTRIBUTION_STATUS_CODE~ :MAX_DISTRIBUTION_STATUS_CODE~ ' +
        ':OTP_DISTRIBUTION_STATE_CODE~ null]'
      '            ) or'
      '            ( (pco.IS_GROUP = 1) and'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    DEFINITE_PRC_CONCRETE_OPS dpco,'
      '                    PRC_CONCRETE_ACTIONS pca'
      '                  where'
      
        '                    %EXISTS_PRC_CONCRETE_OP_RELATION[pco.PRC_CON' +
        'CRETE_OP_CODE~ dpco.PRC_CONCRETE_OP_CODE] and'
      
        '                    %ORG_PRC_CONCRETE_ACTION_FILTER[dpco~ pca~ :' +
        'TO_DATE~ :MIN_DISTRIBUTION_STATUS_CODE~ :MAX_DISTRIBUTION_STATUS' +
        '_CODE~ :OTP_DISTRIBUTION_STATE_CODE~ null]'
      '                )'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:PRC_CONCRETE_OP_CODE is null) or'
      
        '            %EXISTS_PRC_CONCRETE_OP_RELATION[:PRC_CONCRETE_OP_CO' +
        'DE~ pco.PRC_CONCRETE_OP_CODE]'
      '          ) and'
      ''
      '          ( ( (:PRC_FUNC_CODE is null) and'
      '              (:PRC_KNOWL_CODE is null) and'
      '              (:PRC_BASE_OP_CODE is null) and'
      '              (:PRC_BASE_ACTION_CODE is null) and'
      '              (:PRC_CONCRETE_ACTION_CODE is null)'
      '            ) or'
      '            ( (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    DEFINITE_DEPTS dd'
      '                  where'
      '                    %PRC_DATA_FILTER['
      '                      DEPT~'
      '                      DEPT_CODE~'
      '                      dd.DEPT_CODE~'
      '                      :PRC_FUNC_CODE~'
      '                      :PRC_KNOWL_CODE~'
      '                      :PRC_BASE_OP_CODE~'
      '                      :PRC_BASE_ACTION_CODE~'
      '                      pco.PRC_CONCRETE_OP_CODE~'
      '                      :PRC_CONCRETE_ACTION_CODE]'
      '                )'
      '              )'
      '            )'
      '          )'
      '      ) p'
      '    pivot'
      '      ('
      
        '        Min(p.PRC_DISTRIB_STATUS_CODE) as PRC_DISTRIB_STATUS_COD' +
        'E,'
      '        Min(p.PRC_DISTRIBUTION_COUNT) as PRC_DISTRIBUTION_COUNT,'
      '        Min(p.IS_FILTER_ACCEPTED) as IS_FILTER_ACCEPTED'
      '        for PRC_ACTION_CODE in (%PRC_ACTION_CODES)'
      '      )'
      '  ) x'
      ''
      'order by'
      '  x.PRC_CONCR_OP_FORMATTED_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRC_CONCRETE_OP_FULL_NO[pco.PRC_CONCRETE_OP_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_CONCRETE_OP_FORMATTED_FULL_NO[pco.PRC_CONCRETE_OP_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pco]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'dot_PROCESS_CONCRETE_OPERATION'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'dot_PRODUCT'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'CONCR_NOT_CLOSED_OTP_COUNT[pco~ :TO_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'CONCR_TOTAL_OTP_COUNT[pco~ :TO_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'CONCR_NOT_OCCUPATION_DEPT_COUNT[pco]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'CONCR_TOTAL_DEPT_COUNT[pco]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'CONCR_NOT_MASTERED_OCCUPATION_COUNT[pco~ :TO_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'CONCR_TOTAL_OCCUPATION_COUNT[pco]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'ORG_PCA_DISTRIBUTION_STATUS_CODE[pco.PRC_CONCRETE_OP_CODE~ pa.PR' +
          'C_ACTION_CODE~ :TO_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'ORG_PRC_CONCRETE_ACTION_FILTER[pco~ pa~ :TO_DATE~ :MIN_DISTRIBUT' +
          'ION_STATUS_CODE~ :MAX_DISTRIBUTION_STATUS_CODE~ :OTP_DISTRIBUTIO' +
          'N_STATE_CODE~ :PRC_CONCRETE_ACTION_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'ORG_PRC_CONCRETE_ACTION_FILTER[pco~ pa~ :TO_DATE~ :MIN_DISTRIBUT' +
          'ION_STATUS_CODE~ :MAX_DISTRIBUTION_STATUS_CODE~ :OTP_DISTRIBUTIO' +
          'N_STATE_CODE~ null]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'EXISTS_PRC_CONCRETE_OP_RELATION[pco.PRC_CONCRETE_OP_CODE~ dpco.P' +
          'RC_CONCRETE_OP_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'ORG_PRC_CONCRETE_ACTION_FILTER[dpco~ pca~ :TO_DATE~ :MIN_DISTRIB' +
          'UTION_STATUS_CODE~ :MAX_DISTRIBUTION_STATUS_CODE~ :OTP_DISTRIBUT' +
          'ION_STATE_CODE~ null]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'EXISTS_PRC_CONCRETE_OP_RELATION[:PRC_CONCRETE_OP_CODE~ pco.PRC_C' +
          'ONCRETE_OP_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'PRC_DATA_FILTER['#13#10'                      DEPT~'#13#10'                 ' +
          '     DEPT_CODE~'#13#10'                      dd.DEPT_CODE~'#13#10'          ' +
          '            :PRC_FUNC_CODE~'#13#10'                      :PRC_KNOWL_CO' +
          'DE~'#13#10'                      :PRC_BASE_OP_CODE~'#13#10'                 ' +
          '     :PRC_BASE_ACTION_CODE~'#13#10'                      pco.PRC_CONCR' +
          'ETE_OP_CODE~'#13#10'                      :PRC_CONCRETE_ACTION_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_ACTION_CODES'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 848
    Top = 696
  end
  object prvOrgPrcDataConcreteOps: TDataSetProvider
    DataSet = qryOrgPrcDataConcreteOps
    UpdateMode = upWhereKeyOnly
    Left = 848
    Top = 648
  end
  object qryOrgPrcDataOrgTaskProposals: TAbmesSQLQuery
    BeforeOpen = qryOrgPrcDataOrgTaskProposalsBeforeOpen
    MaxBlobSize = -1
    Params = <
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
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  ( select'
      '      pa.ORG_TASK_PROPOSAL_CODE,'
      '      pa.PRC_ACTION_CODE,'
      ''
      '      %OTP_STATE_CODE[otp~s~ml~eo] as OTP_STATE_CODE,'
      '      otp.ORG_TASK_PROPOSAL_NO,'
      '      otp.DESCRIPTION,'
      '      otp.CLOSE_DATE,'
      '      %DEPT_IDENTIFIER[otp.DEPT_CODE] as DEPT_IDENTIFIER,'
      ''
      '      otp.DOC_BRANCH_CODE,'
      '      otp.DOC_CODE,'
      '      %HAS_DOC_ITEMS[otp] as HAS_DOC_ITEMS,'
      '      %dot_ORG_TASK_PROPOSAL as DOC_OWNER_TYPE_CODE,'
      ''
      
        '      (select p.DOC_BRANCH_CODE from PRODUCTS p where (p.PRODUCT' +
        '_CODE = otp.PRODUCT_CODE)) as PRODUCT_DOC_BRANCH_CODE,'
      
        '      (select p.DOC_CODE from PRODUCTS p where (p.PRODUCT_CODE =' +
        ' otp.PRODUCT_CODE)) as PRODUCT_DOC_CODE,'
      
        '      (select %HAS_DOC_ITEMS[p] from PRODUCTS p where (p.PRODUCT' +
        '_CODE = otp.PRODUCT_CODE)) as PRODUCT_HAS_DOC_ITEMS,'
      '      %dot_PRODUCT as PRODUCT_DOC_OWNER_TYPE_CODE,'
      ''
      ''
      '      %PRC_ACTION_STATUS_MACRO as PRC_DISTRIB_STATUS_CODE,'
      '      0 as PRC_DISTRIBUTION_COUNT,'
      ''
      '      ( select'
      '          Sign(Count(*))'
      '        from'
      '          DUAL'
      '        where'
      '          ( (%PRC_ACTION_CODE_PARAM is null) or'
      '            (pa.PRC_ACTION_CODE = %PRC_ACTION_CODE_PARAM)'
      '          )'
      '      ) as IS_FILTER_ACCEPTED'
      '    from'
      '      ORG_TASK_PROPOSALS otp,'
      '      %PRC_ACTIONS_TABLE_NAME pa,'
      '      ENGINEERING_ORDERS eo,'
      '      SALES s,'
      '      MATERIAL_LISTS ml'
      '    where'
      '      (:PRC_FUNC_CODE * null is null) and'
      '      (:PRC_KNOWL_CODE * null is null) and'
      '      (:PRC_BASE_OP_CODE * null is null) and'
      '      (:PRC_BASE_ACTION_CODE * null is null) and'
      '      (:PRC_CONCRETE_OP_CODE * null is null) and'
      '      (:PRC_CONCRETE_ACTION_CODE * null is null) and'
      '      ((:TO_DATE is null) or (:TO_DATE is not null)) and'
      ''
      '      (otp.PRODUCT_CODE = eo.PRODUCT_CODE(+)) and'
      '      (eo.ANNUL_EMPLOYEE_CODE(+) is null) and'
      '      (eo.CLOSE_EMPLOYEE_CODE(+) is null) and'
      '      (eo.PARENT_ENGINEERING_ORDER_CODE(+) is null) and'
      ''
      
        '      (otp.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE(+' +
        ')) and'
      '      (otp.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE(+)) and'
      ''
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_' +
        'CODE(+)) and'
      '      (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE(+)) and'
      ''
      
        '      (otp.ORG_TASK_PROPOSAL_CODE = pa.ORG_TASK_PROPOSAL_CODE) a' +
        'nd'
      ''
      '      %PRC_MASTER_CODE_PARAMS'
      '  ) p'
      'pivot'
      '  ('
      '    Min(p.PRC_DISTRIB_STATUS_CODE) as PRC_DISTRIB_STATUS_CODE,'
      '    Min(p.PRC_DISTRIBUTION_COUNT) as PRC_DISTRIBUTION_COUNT,'
      '    Min(p.IS_FILTER_ACCEPTED) as IS_FILTER_ACCEPTED'
      '    for PRC_ACTION_CODE in (%PRC_ACTION_CODES)'
      '  ) x'
      'order by'
      '  x.ORG_TASK_PROPOSAL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'OTP_STATE_CODE[otp~s~ml~eo]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'DEPT_IDENTIFIER[otp.DEPT_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[otp]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'dot_ORG_TASK_PROPOSAL'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'dot_PRODUCT'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_ACTION_STATUS_MACRO'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_ACTION_CODE_PARAM'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_ACTIONS_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_MASTER_CODE_PARAMS'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRC_ACTION_CODES'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptUnknown
      end>
    Left = 952
    Top = 808
  end
  object prvOrgPrcDataOrgTaskProposals: TDataSetProvider
    DataSet = qryOrgPrcDataOrgTaskProposals
    UpdateMode = upWhereKeyOnly
    Left = 952
    Top = 760
  end
  object qryOrgPrcDataProfessions: TAbmesSQLQuery
    BeforeOpen = qryOrgPrcDataProfessionsBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_BASE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PROFESSION_CODE,'
      
        '  Cast(%PROFESSION_FULL_NO[p.PROFESSION_CODE] as Varchar2(100 ch' +
        'ar)) as PROFESSION_FULL_NO,'
      
        '  Cast(%PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE] as VarCh' +
        'ar2(100 char)) as PROFESSION_FORMATTED_FULL_NO,'
      '  p.PROFESSION_NAME,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOC_ITEMS,'
      '  %dot_PROFESSION as DOC_OWNER_TYPE_CODE'
      ''
      'from'
      '  PROFESSIONS p'
      ''
      'where'
      '  (:PRC_BASE_OP_CODE * null is null) and'
      '  (:PRC_CONCRETE_OP_CODE * null is null) and'
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        %PROFESSION_OPS_TABLE_NAME po'
      '      where'
      '        (po.PROFESSION_CODE = p.PROFESSION_CODE) and'
      '        %PROFESSION_OP_CODE_JOIN'
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
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_FORMATTED_FULL_NO[p.PROFESSION_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'dot_PROFESSION'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_OPS_TABLE_NAME'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PROFESSION_OP_CODE_JOIN'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptUnknown
      end>
    Left = 1112
    Top = 808
  end
  object prvOrgPrcDataProfessions: TDataSetProvider
    DataSet = qryOrgPrcDataProfessions
    UpdateMode = upWhereKeyOnly
    Left = 1112
    Top = 760
  end
  object qryDeptsPrcDataDepts: TAbmesSQLQuery
    BeforeOpen = qryDeptsPrcDataDeptsBeforeOpen
    AfterClose = qryDeptsPrcDataDeptsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
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
      '  d.DEPT_CODE,'
      '  d.PARENT_CODE,'
      '  d.NAME as DEPT_NAME,'
      '  %DEPT_IDENTIFIER[d.DEPT_CODE] as DEPT_IDENTIFIER,'
      '  d.IS_GROUP,'
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      FIN_STORES fs'
      '    where'
      '      (fs.STORE_CODE = d.DEPT_CODE)'
      '  ) as IS_FIN_STORE,'
      
        '  Decode(d.DEPT_CODE, %TREE_ROOT_CODE, 0, Decode(d.IS_GROUP, 1, ' +
        '1, 2)) as DEPT_IMAGE_INDEX,'
      ''
      '  d.DOC_BRANCH_CODE,'
      '  d.DOC_CODE,'
      '  %HAS_DOC_ITEMS[d] as HAS_DOC_ITEMS,'
      ''
      '  d.PRODUCT_CODE as DEPT_PRODUCT_CODE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DEPT_PRC_BASE_ACTIONS dpba'
      '    where'
      '      (dpba.DEPT_CODE = d.DEPT_CODE)'
      '  ) as TOTAL_DEPT_BASE_ACTIONS,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DEPT_PRC_CONCRETE_ACTIONS dpca'
      '    where'
      '      (dpca.DEPT_CODE = d.DEPT_CODE)'
      '  ) as TOTAL_DEPT_CONCRETE_ACTIONS,'
      ''
      '  Decode('
      '    d.IS_GROUP, 1,'
      '    ( select'
      '        Count(*)'
      '      from'
      '        DEPT_PRC_BASE_ACTIONS dpba'
      '      where'
      '        (dpba.DEPT_CODE = d.DEPT_CODE) and'
      '        (not exists'
      '          ( select'
      '              1'
      '            from'
      '              DEPT_PRC_BASE_ACTIONS dpba2'
      '            where'
      '              (dpba2.PARENT_CODE = dpba.DEPT_CODE) and'
      '              (dpba2.PRC_FUNC_CODE = dpba.PRC_FUNC_CODE) and'
      '              (dpba2.PRC_KNOWL_CODE = dpba.PRC_KNOWL_CODE) and'
      
        '              (dpba2.PRC_BASE_OP_CODE = dpba.PRC_BASE_OP_CODE) a' +
        'nd'
      '              (dpba2.PRC_ACTION_CODE = dpba.PRC_ACTION_CODE)'
      '          )'
      '        )'
      '    )'
      '  ) as NOT_DISTRIBUTED_DEPT_ACTIONS,'
      ''
      '  Decode('
      '    d.IS_GROUP, 0,'
      '    ( select'
      '        Count(*)'
      '      from'
      '        DEPT_PRC_BASE_ACTIONS dpba'
      '      where'
      '        (dpba.DEPT_CODE = d.DEPT_CODE) and'
      '        (not exists'
      '          ( select'
      '              1'
      '            from'
      '              OWD_PRC_BASE_ACTIONS owdpba,'
      '              OCC_PRC_BASE_ACTIONS opba'
      '            where'
      '              (owdpba.DEPT_CODE = dpba.DEPT_CODE) and'
      '              (owdpba.PRC_FUNC_CODE = dpba.PRC_FUNC_CODE) and'
      '              (owdpba.PRC_KNOWL_CODE = dpba.PRC_KNOWL_CODE) and'
      
        '              (owdpba.PRC_BASE_OP_CODE = dpba.PRC_BASE_OP_CODE) ' +
        'and'
      
        '              (owdpba.PRC_ACTION_CODE = dpba.PRC_ACTION_CODE) an' +
        'd'
      ''
      
        '              (opba.OCCUPATION_CODE = owdpba.OCCUPATION_CODE) an' +
        'd'
      '              (opba.PRC_FUNC_CODE = owdpba.PRC_FUNC_CODE) and'
      '              (opba.PRC_KNOWL_CODE = owdpba.PRC_KNOWL_CODE) and'
      
        '              (opba.PRC_BASE_OP_CODE = owdpba.PRC_BASE_OP_CODE) ' +
        'and'
      '              (opba.PRC_ACTION_CODE = owdpba.PRC_ACTION_CODE)'
      '          )'
      '        )'
      '    )'
      '  ) as NOT_DISTRIB_OCC_BASE_ACTIONS,'
      ''
      '  Decode('
      '    d.IS_GROUP, 0,'
      '    ( select'
      '        Count(*)'
      '      from'
      '        DEPT_PRC_CONCRETE_ACTIONS dpca'
      '      where'
      '        (dpca.DEPT_CODE = d.DEPT_CODE) and'
      '        (not exists'
      '          ( select'
      '              1'
      '            from'
      '              OWD_PRC_CONCRETE_ACTIONS owdpca,'
      '              OCC_PRC_CONCRETE_ACTIONS opca'
      '            where'
      '              (owdpca.DEPT_CODE = dpca.DEPT_CODE) and'
      '              (owdpca.PRC_FUNC_CODE = dpca.PRC_FUNC_CODE) and'
      '              (owdpca.PRC_KNOWL_CODE = dpca.PRC_KNOWL_CODE) and'
      
        '              (owdpca.PRC_BASE_OP_CODE = dpca.PRC_BASE_OP_CODE) ' +
        'and'
      
        '              (owdpca.PRC_CONCRETE_OP_CODE = dpca.PRC_CONCRETE_O' +
        'P_CODE) and'
      
        '              (owdpca.PRC_ACTION_CODE = dpca.PRC_ACTION_CODE) an' +
        'd'
      ''
      
        '              (opca.OCCUPATION_CODE = owdpca.OCCUPATION_CODE) an' +
        'd'
      '              (opca.PRC_FUNC_CODE = owdpca.PRC_FUNC_CODE) and'
      '              (opca.PRC_KNOWL_CODE = owdpca.PRC_KNOWL_CODE) and'
      
        '              (opca.PRC_BASE_OP_CODE = owdpca.PRC_BASE_OP_CODE) ' +
        'and'
      
        '              (opca.PRC_CONCRETE_OP_CODE = owdpca.PRC_CONCRETE_O' +
        'P_CODE) and'
      '              (opca.PRC_ACTION_CODE = owdpca.PRC_ACTION_CODE)'
      '          )'
      '        )'
      '    )'
      '  ) as NOT_DISTRIB_OCC_CONCR_ACTIONS,'
      ''
      '  (d.END_DATE - Cast(:TO_DATE as Date)) as DEPT_DAYS_LEFT,'
      ''
      '  ( select'
      '      NullIf(Count(Count(*)), 0)'
      '    from'
      '      OCCUPATION_WORK_DEPTS owd,'
      '      OCCUPATION_SHIFTS os'
      '    where'
      '      (owd.DEPT_CODE = d.DEPT_CODE) and'
      '      (owd.OCCUPATION_CODE = os.OCCUPATION_CODE) and'
      '      (:TO_DATE between os.BEGIN_DATE and os.END_DATE)'
      '    group by'
      '      os.SHIFT_CODE'
      '  ) as OCCUPATION_SHIFT_COUNT,'
      ''
      '  ( select'
      '      dp.PARALLEL_PROCESS_COUNT'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = d.DEPT_CODE) and'
      '      (:TO_DATE between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as PARALLEL_PROCESS_COUNT,'
      ''
      '  ( select'
      '      dp.PARALLEL_OPERATOR_COUNT'
      '    from'
      '      DEPT_PERIODS dp'
      '    where'
      '      (dp.DEPT_CODE = d.DEPT_CODE) and'
      '      (:TO_DATE between dp.BEGIN_DATE and dp.END_DATE)'
      '  ) as PARALLEL_OPERATOR_COUNT,'
      ''
      
        '  (To_Char(d.IS_GROUP) || '#39';'#39' || %DEPT_IDENTIFIER[d.DEPT_CODE]) ' +
        'as SORT_FIELD,'
      ''
      
        '  Decode(d.IS_GROUP, 0, %HAS_DEPT_OWD_PRIORITIES[d.DEPT_CODE~ %o' +
        'wl_EXECUTING~ %owm_EXPLOITATION]) as HAS_EXEC_EXPL_OWD_PRIORITIE' +
        'S,'
      
        '  %HAS_DEPT_OWD_PRIORITIES[d.DEPT_CODE~ %owl_MANAGING~ %owm_EXPL' +
        'OITATION] as HAS_MNG_EXPL_OWD_PRIORITIES,'
      
        '  %HAS_DEPT_OWD_PRIORITIES[d.DEPT_CODE~ %owl_EXECUTING~ %owm_SER' +
        'VICE] as HAS_EXEC_SVC_OWD_PRIORITIES,'
      
        '  %DEPT_OWD_PRIORITY_STATE_CODE[d.DEPT_CODE~ :TO_DATE] as DEPT_O' +
        'WD_PRIORITY_STATE_CODE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DUAL'
      '    where'
      '      (:TO_DATE between d.BEGIN_DATE and d.END_DATE) and'
      ''
      '      ( (:ALL_FILTERED_DEPTS = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_DEPTS tfd'
      '            where'
      '              (tfd.DEPT_CODE = d.DEPT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_PRODUCTS tfp'
      '            where'
      '              (tfp.PRODUCT_CODE = d.PRODUCT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:OCC_WORK_DEPT_PRIORITY_CODE is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              DEPT_OWD_PRIORITIES dowdp'
      '            where'
      '              (dowdp.DEPT_CODE = d.DEPT_CODE) and'
      
        '              (dowdp.OCC_WORK_DEPT_PRIORITY_CODE = :OCC_WORK_DEP' +
        'T_PRIORITY_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( ( (:ORG_WORK_LEVEL_CODE is null) and'
      '          (:ORG_WORK_MODE_CODE is null)'
      '        ) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              DEPT_OWD_PRIORITIES dowdp,'
      '              OCC_WORK_DEPT_PRIORITIES owdp'
      '            where'
      '              (dowdp.DEPT_CODE = d.DEPT_CODE) and'
      
        '              (dowdp.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK' +
        '_DEPT_PRIORITY_CODE) and'
      
        '              (owdp.ORG_WORK_LEVEL_CODE = :ORG_WORK_LEVEL_CODE) ' +
        'and'
      '              (owdp.ORG_WORK_MODE_CODE = :ORG_WORK_MODE_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_DEPTS_2 = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              DEPT_OWD_PRIORITIES dowdp,'
      '              OCCUPATION_WORK_DEPTS owd,'
      '              OCCUPATIONS o,'
      '              TEMP_FILTERED_DEPTS_2 tfd'
      '            where'
      '              (dowdp.DEPT_CODE = d.DEPT_CODE) and'
      
        '              (owd.DEPT_CODE = %DEPT_OWDP_COVERING_DEPT[dowdp.DE' +
        'PT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]) and'
      
        '              (owd.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WORK_' +
        'DEPT_PRIORITY_CODE) and'
      '              (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '              (o.DEPT_CODE = tfd.DEPT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:SHIFT_CODE is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              DEPT_OWD_PRIORITIES dowdp,'
      '              OCCUPATION_WORK_DEPTS owd,'
      '              OCCUPATIONS o,'
      '              OCCUPATION_SHIFTS os'
      '            where'
      '              (dowdp.DEPT_CODE = d.DEPT_CODE) and'
      
        '              (owd.DEPT_CODE = %DEPT_OWDP_COVERING_DEPT[dowdp.DE' +
        'PT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]) and'
      
        '              (owd.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WORK_' +
        'DEPT_PRIORITY_CODE) and'
      '              (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '              (o.OCCUPATION_CODE = os.OCCUPATION_CODE) and'
      
        '              (:TO_DATE between os.BEGIN_DATE and os.END_DATE) a' +
        'nd'
      '              (os.SHIFT_CODE = :SHIFT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:IS_ACTIVE is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              DEPT_OWD_PRIORITIES dowdp,'
      '              OCCUPATION_WORK_DEPTS owd,'
      '              OCCUPATIONS o'
      '            where'
      '              (dowdp.DEPT_CODE = d.DEPT_CODE) and'
      
        '              (owd.DEPT_CODE = %DEPT_OWDP_COVERING_DEPT[dowdp.DE' +
        'PT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]) and'
      
        '              (owd.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WORK_' +
        'DEPT_PRIORITY_CODE) and'
      '              (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '              ( ( (:IS_ACTIVE = 1) and'
      
        '                  (:TO_DATE between o.OCCUPATION_BEGIN_DATE and ' +
        'o.OCCUPATION_END_DATE)'
      '                ) or'
      '                ( (:IS_ACTIVE = 0) and'
      
        '                  not (:TO_DATE between o.OCCUPATION_BEGIN_DATE ' +
        'and o.OCCUPATION_END_DATE)'
      '                )'
      '              )'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:IS_OCCUPIED is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              DEPT_OWD_PRIORITIES dowdp,'
      '              OCCUPATION_WORK_DEPTS owd,'
      '              OCCUPATIONS o,'
      '              OCCUPATION_EMPLOYEES oe'
      '            where'
      '              (dowdp.DEPT_CODE = d.DEPT_CODE) and'
      
        '              (owd.DEPT_CODE = %DEPT_OWDP_COVERING_DEPT[dowdp.DE' +
        'PT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]) and'
      
        '              (owd.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WORK_' +
        'DEPT_PRIORITY_CODE) and'
      '              (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '              (o.OCCUPATION_CODE = oe.OCCUPATION_CODE(+)) and'
      
        '              (:TO_DATE between oe.ASSIGNMENT_BEGIN_DATE(+) and ' +
        'oe.ASSIGNMENT_END_DATE(+)) and'
      '              ( ( (:IS_OCCUPIED = 1) and'
      '                  (oe.EMPLOYEE_CODE is not null)'
      '                ) or'
      '                ( (:IS_OCCUPIED = 0) and'
      '                  (oe.EMPLOYEE_CODE is null)'
      '                )'
      '              )'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:MIN_OWD_PRIORITY_STATE_CODE is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              DEPT_OWD_PRIORITIES dowdp'
      '            where'
      '              (dowdp.DEPT_CODE = d.DEPT_CODE) and'
      
        '              (%OWD_PRIORITY_STATE_CODE[%DEPT_OWDP_COVERING_DEPT' +
        '[dowdp.DEPT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]~ dowdp.OCC_' +
        'WORK_DEPT_PRIORITY_CODE~ :TO_DATE] >= :MIN_OWD_PRIORITY_STATE_CO' +
        'DE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:MAX_OWD_PRIORITY_STATE_CODE is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              DEPT_OWD_PRIORITIES dowdp'
      '            where'
      '              (dowdp.DEPT_CODE = d.DEPT_CODE) and'
      
        '              (%OWD_PRIORITY_STATE_CODE[%DEPT_OWDP_COVERING_DEPT' +
        '[dowdp.DEPT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]~ dowdp.OCC_' +
        'WORK_DEPT_PRIORITY_CODE~ :TO_DATE] <= :MAX_OWD_PRIORITY_STATE_CO' +
        'DE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:ORG_WORK_ACTIVITY_CODE is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              DEPT_OWD_PRIORITIES  dowdp,'
      '              OCC_WORK_DEPT_PRIORITIES owdp'
      '            where'
      '              (dowdp.DEPT_CODE = d.DEPT_CODE) and'
      
        '              (dowdp.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK' +
        '_DEPT_PRIORITY_CODE) and'
      
        '              (owdp.ORG_WORK_ACTIVITY_CODE = :ORG_WORK_ACTIVITY_' +
        'CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      -- procesen obhwat'
      '      %PRC_DATA_FILTER['
      '        DEPT~'
      '        DEPT_CODE~'
      '        d.DEPT_CODE~'
      '        :PRC_FUNC_CODE~'
      '        :PRC_KNOWL_CODE~'
      '        :PRC_BASE_OP_CODE~'
      '        :PRC_BASE_ACTION_CODE~'
      '        :PRC_CONCRETE_OP_CODE~'
      '        :PRC_CONCRETE_ACTION_CODE]'
      ''
      '  ) as IS_FILTER_ACCEPTED'
      ''
      'from'
      '  DEPTS d'
      ''
      'where'
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        DEPT_RELATIONS dr,'
      '        DEPTS d2'
      '      where'
      '        (dr.DESCENDANT_DEPT_CODE = d2.DEPT_CODE) and'
      ''
      '        (dr.ANCESTOR_DEPT_CODE = d.DEPT_CODE) and'
      ''
      '        (:TO_DATE between d2.BEGIN_DATE and d2.END_DATE) and'
      ''
      '        ( (:ALL_FILTERED_DEPTS = 1) or'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                TEMP_FILTERED_DEPTS tfd'
      '              where'
      '                (tfd.DEPT_CODE = d2.DEPT_CODE)'
      '            )'
      '          )'
      '        ) and'
      ''
      '        ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                TEMP_FILTERED_PRODUCTS tfp'
      '              where'
      '                (tfp.PRODUCT_CODE = d2.PRODUCT_CODE)'
      '            )'
      '          )'
      '        ) and'
      ''
      '        ( (:OCC_WORK_DEPT_PRIORITY_CODE is null) or'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                DEPT_OWD_PRIORITIES dowdp'
      '              where'
      '                (dowdp.DEPT_CODE = d2.DEPT_CODE) and'
      
        '                (dowdp.OCC_WORK_DEPT_PRIORITY_CODE = :OCC_WORK_D' +
        'EPT_PRIORITY_CODE)'
      '            )'
      '          )'
      '        ) and'
      ''
      '        ( ( (:ORG_WORK_LEVEL_CODE is null) and'
      '            (:ORG_WORK_MODE_CODE is null)'
      '          ) or'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                DEPT_OWD_PRIORITIES dowdp,'
      '                OCC_WORK_DEPT_PRIORITIES owdp'
      '              where'
      '                (dowdp.DEPT_CODE = d2.DEPT_CODE) and'
      
        '                (dowdp.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WO' +
        'RK_DEPT_PRIORITY_CODE) and'
      
        '                (owdp.ORG_WORK_LEVEL_CODE = :ORG_WORK_LEVEL_CODE' +
        ') and'
      '                (owdp.ORG_WORK_MODE_CODE = :ORG_WORK_MODE_CODE)'
      '            )'
      '          )'
      '        ) and'
      ''
      '        ( (:ALL_FILTERED_DEPTS_2 = 1) or'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                DEPT_OWD_PRIORITIES dowdp,'
      '                OCCUPATION_WORK_DEPTS owd,'
      '                OCCUPATIONS o,'
      '                TEMP_FILTERED_DEPTS_2 tfd'
      '              where'
      '                (dowdp.DEPT_CODE = d2.DEPT_CODE) and'
      
        '                (owd.DEPT_CODE = %DEPT_OWDP_COVERING_DEPT[dowdp.' +
        'DEPT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]) and'
      
        '                (owd.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WOR' +
        'K_DEPT_PRIORITY_CODE) and'
      '                (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '                (o.DEPT_CODE = tfd.DEPT_CODE)'
      '            )'
      '          )'
      '        ) and'
      ''
      '        ( (:SHIFT_CODE is null) or'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                DEPT_OWD_PRIORITIES dowdp,'
      '                OCCUPATION_WORK_DEPTS owd,'
      '                OCCUPATIONS o,'
      '                OCCUPATION_SHIFTS os'
      '              where'
      '                (dowdp.DEPT_CODE = d2.DEPT_CODE) and'
      
        '                (owd.DEPT_CODE = %DEPT_OWDP_COVERING_DEPT[dowdp.' +
        'DEPT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]) and'
      
        '                (owd.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WOR' +
        'K_DEPT_PRIORITY_CODE) and'
      '                (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '                (o.OCCUPATION_CODE = os.OCCUPATION_CODE) and'
      
        '                (:TO_DATE between os.BEGIN_DATE and os.END_DATE)' +
        ' and'
      '                (os.SHIFT_CODE = :SHIFT_CODE)'
      '            )'
      '          )'
      '        ) and'
      ''
      '        ( (:IS_ACTIVE is null) or'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                DEPT_OWD_PRIORITIES dowdp,'
      '                OCCUPATION_WORK_DEPTS owd,'
      '                OCCUPATIONS o'
      '              where'
      '                (dowdp.DEPT_CODE = d2.DEPT_CODE) and'
      
        '                (owd.DEPT_CODE = %DEPT_OWDP_COVERING_DEPT[dowdp.' +
        'DEPT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]) and'
      
        '                (owd.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WOR' +
        'K_DEPT_PRIORITY_CODE) and'
      '                (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '                ( ( (:IS_ACTIVE = 1) and'
      
        '                    (:TO_DATE between o.OCCUPATION_BEGIN_DATE an' +
        'd o.OCCUPATION_END_DATE)'
      '                  ) or'
      '                  ( (:IS_ACTIVE = 0) and'
      
        '                    not (:TO_DATE between o.OCCUPATION_BEGIN_DAT' +
        'E and o.OCCUPATION_END_DATE)'
      '                  )'
      '                )'
      '            )'
      '          )'
      '        ) and'
      ''
      '        ( (:IS_OCCUPIED is null) or'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                DEPT_OWD_PRIORITIES dowdp,'
      '                OCCUPATION_WORK_DEPTS owd,'
      '                OCCUPATIONS o,'
      '                OCCUPATION_EMPLOYEES oe'
      '              where'
      '                (dowdp.DEPT_CODE = d2.DEPT_CODE) and'
      
        '                (owd.DEPT_CODE = %DEPT_OWDP_COVERING_DEPT[dowdp.' +
        'DEPT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]) and'
      
        '                (owd.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WOR' +
        'K_DEPT_PRIORITY_CODE) and'
      '                (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '                (o.OCCUPATION_CODE = oe.OCCUPATION_CODE(+)) and'
      
        '                (:TO_DATE between oe.ASSIGNMENT_BEGIN_DATE(+) an' +
        'd oe.ASSIGNMENT_END_DATE(+)) and'
      '                ( ( (:IS_OCCUPIED = 1) and'
      '                    (oe.EMPLOYEE_CODE is not null)'
      '                  ) or'
      '                  ( (:IS_OCCUPIED = 0) and'
      '                    (oe.EMPLOYEE_CODE is null)'
      '                  )'
      '                )'
      '            )'
      '          )'
      '        ) and'
      ''
      '        ( (:MIN_OWD_PRIORITY_STATE_CODE is null) or'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                DEPT_OWD_PRIORITIES dowdp'
      '              where'
      '                (dowdp.DEPT_CODE = d2.DEPT_CODE) and'
      
        '                (%OWD_PRIORITY_STATE_CODE[%DEPT_OWDP_COVERING_DE' +
        'PT[dowdp.DEPT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]~ dowdp.OC' +
        'C_WORK_DEPT_PRIORITY_CODE~ :TO_DATE] >= :MIN_OWD_PRIORITY_STATE_' +
        'CODE)'
      '            )'
      '          )'
      '        ) and'
      ''
      '        ( (:MAX_OWD_PRIORITY_STATE_CODE is null) or'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                DEPT_OWD_PRIORITIES dowdp'
      '              where'
      '                (dowdp.DEPT_CODE = d2.DEPT_CODE) and'
      
        '                (%OWD_PRIORITY_STATE_CODE[%DEPT_OWDP_COVERING_DE' +
        'PT[dowdp.DEPT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]~ dowdp.OC' +
        'C_WORK_DEPT_PRIORITY_CODE~ :TO_DATE] <= :MAX_OWD_PRIORITY_STATE_' +
        'CODE)'
      '            )'
      '          )'
      '        ) and'
      ''
      '        ( (:ORG_WORK_ACTIVITY_CODE is null) or'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                DEPT_OWD_PRIORITIES  dowdp,'
      '                OCC_WORK_DEPT_PRIORITIES owdp'
      '              where'
      '                (dowdp.DEPT_CODE = d2.DEPT_CODE) and'
      
        '                (dowdp.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WO' +
        'RK_DEPT_PRIORITY_CODE) and'
      
        '                (owdp.ORG_WORK_ACTIVITY_CODE = :ORG_WORK_ACTIVIT' +
        'Y_CODE)'
      '            )'
      '          )'
      '        ) and'
      ''
      '        -- procesen obhwat'
      '        %PRC_DATA_FILTER['
      '          DEPT~'
      '          DEPT_CODE~'
      '          d2.DEPT_CODE~'
      '          :PRC_FUNC_CODE~'
      '          :PRC_KNOWL_CODE~'
      '          :PRC_BASE_OP_CODE~'
      '          :PRC_BASE_ACTION_CODE~'
      '          :PRC_CONCRETE_OP_CODE~'
      '          :PRC_CONCRETE_ACTION_CODE]'
      '    )'
      '  ) and'
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
      '  SORT_FIELD'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'DEPT_IDENTIFIER[d.DEPT_CODE]'
        ParamType = ptInput
        Value = #39'0123456789012345678901234567890123456789012345'#39
      end
      item
        DataType = ftWideString
        Name = 'TREE_ROOT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'HAS_DEPT_OWD_PRIORITIES[d.DEPT_CODE~ %owl_EXECUTING~ %owm_EXPLOI' +
          'TATION]'
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
      end
      item
        DataType = ftWideString
        Name = 
          'HAS_DEPT_OWD_PRIORITIES[d.DEPT_CODE~ %owl_MANAGING~ %owm_EXPLOIT' +
          'ATION]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'owl_MANAGING'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'HAS_DEPT_OWD_PRIORITIES[d.DEPT_CODE~ %owl_EXECUTING~ %owm_SERVIC' +
          'E]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'owm_SERVICE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'DEPT_OWD_PRIORITY_STATE_CODE[d.DEPT_CODE~ :TO_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'DEPT_OWDP_COVERING_DEPT[dowdp.DEPT_CODE~ dowdp.OCC_WORK_DEPT_PRI' +
          'ORITY_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'OWD_PRIORITY_STATE_CODE[%DEPT_OWDP_COVERING_DEPT[dowdp.DEPT_CODE' +
          '~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]~ dowdp.OCC_WORK_DEPT_PRIORI' +
          'TY_CODE~ :TO_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'PRC_DATA_FILTER['#13#10'        DEPT~'#13#10'        DEPT_CODE~'#13#10'        d.D' +
          'EPT_CODE~'#13#10'        :PRC_FUNC_CODE~'#13#10'        :PRC_KNOWL_CODE~'#13#10'  ' +
          '      :PRC_BASE_OP_CODE~'#13#10'        :PRC_BASE_ACTION_CODE~'#13#10'      ' +
          '  :PRC_CONCRETE_OP_CODE~'#13#10'        :PRC_CONCRETE_ACTION_CODE]'
        ParamType = ptInput
        Value = '(0=0)'
      end
      item
        DataType = ftWideString
        Name = 
          'PRC_DATA_FILTER['#13#10'          DEPT~'#13#10'          DEPT_CODE~'#13#10'       ' +
          '   d2.DEPT_CODE~'#13#10'          :PRC_FUNC_CODE~'#13#10'          :PRC_KNOW' +
          'L_CODE~'#13#10'          :PRC_BASE_OP_CODE~'#13#10'          :PRC_BASE_ACTIO' +
          'N_CODE~'#13#10'          :PRC_CONCRETE_OP_CODE~'#13#10'          :PRC_CONCRE' +
          'TE_ACTION_CODE]'
        ParamType = ptInput
        Value = '(0=0)'
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
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_OCCUPATION_DEPTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 120
    Top = 696
    object qryDeptsPrcDataDeptsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      Required = True
    end
    object qryDeptsPrcDataDeptsPARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
    end
    object qryDeptsPrcDataDeptsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 100
    end
    object qryDeptsPrcDataDeptsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryDeptsPrcDataDeptsIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
    end
    object qryDeptsPrcDataDeptsDEPT_IMAGE_INDEX: TAbmesFloatField
      FieldName = 'DEPT_IMAGE_INDEX'
    end
    object qryDeptsPrcDataDeptsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDeptsPrcDataDeptsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDeptsPrcDataDeptsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object qryDeptsPrcDataDeptsTOTAL_DEPT_BASE_ACTIONS: TAbmesFloatField
      FieldName = 'TOTAL_DEPT_BASE_ACTIONS'
    end
    object qryDeptsPrcDataDeptsTOTAL_DEPT_CONCRETE_ACTIONS: TAbmesFloatField
      FieldName = 'TOTAL_DEPT_CONCRETE_ACTIONS'
    end
    object qryDeptsPrcDataDeptsNOT_DISTRIBUTED_DEPT_ACTIONS: TAbmesFloatField
      FieldName = 'NOT_DISTRIBUTED_DEPT_ACTIONS'
    end
    object qryDeptsPrcDataDeptsNOT_DISTRIB_OCC_BASE_ACTIONS: TAbmesFloatField
      FieldName = 'NOT_DISTRIB_OCC_BASE_ACTIONS'
    end
    object qryDeptsPrcDataDeptsNOT_DISTRIB_OCC_CONCR_ACTIONS: TAbmesFloatField
      FieldName = 'NOT_DISTRIB_OCC_CONCR_ACTIONS'
    end
    object qryDeptsPrcDataDeptsDEPT_DAYS_LEFT: TAbmesFloatField
      FieldName = 'DEPT_DAYS_LEFT'
    end
    object qryDeptsPrcDataDeptsOCCUPATION_SHIFT_COUNT: TAbmesFloatField
      FieldName = 'OCCUPATION_SHIFT_COUNT'
    end
    object qryDeptsPrcDataDeptsPARALLEL_PROCESS_COUNT: TAbmesFloatField
      FieldName = 'PARALLEL_PROCESS_COUNT'
    end
    object qryDeptsPrcDataDeptsPARALLEL_OPERATOR_COUNT: TAbmesFloatField
      FieldName = 'PARALLEL_OPERATOR_COUNT'
    end
    object qryDeptsPrcDataDeptsSORT_FIELD: TAbmesWideStringField
      FieldName = 'SORT_FIELD'
      Size = 87
    end
    object qryDeptsPrcDataDeptsIS_FILTER_ACCEPTED: TAbmesFloatField
      FieldName = 'IS_FILTER_ACCEPTED'
    end
    object qryDeptsPrcDataDeptsIS_FIN_STORE: TAbmesFloatField
      FieldName = 'IS_FIN_STORE'
    end
    object qryDeptsPrcDataDeptsHAS_EXEC_EXPL_OWD_PRIORITIES: TAbmesFloatField
      FieldName = 'HAS_EXEC_EXPL_OWD_PRIORITIES'
    end
    object qryDeptsPrcDataDeptsHAS_MNG_EXPL_OWD_PRIORITIES: TAbmesFloatField
      FieldName = 'HAS_MNG_EXPL_OWD_PRIORITIES'
    end
    object qryDeptsPrcDataDeptsHAS_EXEC_SVC_OWD_PRIORITIES: TAbmesFloatField
      FieldName = 'HAS_EXEC_SVC_OWD_PRIORITIES'
    end
    object qryDeptsPrcDataDeptsDEPT_OWD_PRIORITY_STATE_CODE: TAbmesFloatField
      FieldName = 'DEPT_OWD_PRIORITY_STATE_CODE'
    end
    object qryDeptsPrcDataDeptsDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
  end
  object prvDeptsPrcDataDepts: TDataSetProvider
    DataSet = qryDeptsPrcDataDepts
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 648
  end
  object qryDeptsPrcDataPrcData: TAbmesSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE,'
      '  d.IS_GROUP,'
      '  d.BEGIN_DATE,'
      '  d.END_DATE,'
      ''
      '  -- za pechata'
      '  d.DEPT_TYPE_CODE,'
      '  d.CUSTOM_CODE as NODE_NO,'
      '  d.SUFFIX_LETTER,'
      '  d.NAME as NODE_NAME,'
      ''
      '  ( select'
      '      db.DUMMY_BLOB_DATA'
      '    from'
      '      DUMMY_BLOB db'
      '  ) as PRC_DATA'
      ''
      'from'
      '  DEPTS d'
      ''
      'where'
      '  (d.DEPT_CODE = :DEPT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 808
    object qryDeptsPrcDataPrcDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDeptsPrcDataPrcDataIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      ProviderFlags = []
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryDeptsPrcDataPrcDataBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object qryDeptsPrcDataPrcDataEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      Required = True
    end
    object qryDeptsPrcDataPrcDataPRC_DATA: TBlobField
      FieldName = 'PRC_DATA'
      ProviderFlags = []
      BlobType = ftOraBlob
      Size = 1
    end
    object qryDeptsPrcDataPrcDataDEPT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_TYPE_CODE'
    end
    object qryDeptsPrcDataPrcDataNODE_NO: TAbmesFloatField
      FieldName = 'NODE_NO'
      Required = True
    end
    object qryDeptsPrcDataPrcDataSUFFIX_LETTER: TAbmesWideStringField
      FieldName = 'SUFFIX_LETTER'
      Size = 1
    end
    object qryDeptsPrcDataPrcDataNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Required = True
      Size = 100
    end
  end
  object prvDeptsPrcDataPrcData: TDataSetProvider
    DataSet = qryDeptsPrcDataPrcData
    UpdateMode = upWhereKeyOnly
    OnGetData = prvDeptsPrcDataPrcDataGetData
    Left = 56
    Top = 760
  end
  object qryDeptPrcData: TAbmesSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE,'
      '  d.PARENT_CODE,'
      '  d.IS_GROUP,'
      '  d.BEGIN_DATE,'
      '  d.END_DATE,'
      ''
      '  d.IS_OWD_PRIORITIES_SET_COMPLETE,'
      '  0 as HAS_OWD_PRIORITIES_CHANGES,'
      ''
      '  -- za pechata'
      '  d.DEPT_TYPE_CODE,'
      '  d.CUSTOM_CODE as NODE_NO,'
      '  d.SUFFIX_LETTER,'
      '  d.NAME as NODE_NAME,'
      ''
      '  ( select'
      '      db.DUMMY_BLOB_DATA'
      '    from'
      '      DUMMY_BLOB db'
      '  ) as PRC_DATA'
      ''
      'from'
      '  DEPTS d'
      ''
      'where'
      '  (d.DEPT_CODE = :DEPT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DEPTS_FOR_EDIT'
    BeforeProviderEndTransaction = qryDeptPrcDataBeforeProviderEndTransaction
    Left = 376
    Top = 664
    object qryDeptPrcDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDeptPrcDataPARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
      ProviderFlags = []
    end
    object qryDeptPrcDataIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      ProviderFlags = []
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryDeptPrcDataBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      ProviderFlags = []
      Required = True
    end
    object qryDeptPrcDataEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      ProviderFlags = []
      Required = True
    end
    object qryDeptPrcDataDEPT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_TYPE_CODE'
      ProviderFlags = []
    end
    object qryDeptPrcDataNODE_NO: TAbmesFloatField
      FieldName = 'NODE_NO'
      ProviderFlags = []
      Required = True
    end
    object qryDeptPrcDataSUFFIX_LETTER: TAbmesWideStringField
      FieldName = 'SUFFIX_LETTER'
      ProviderFlags = []
      Size = 1
    end
    object qryDeptPrcDataNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object qryDeptPrcDataPRC_DATA: TBlobField
      FieldName = 'PRC_DATA'
      ProviderFlags = []
      BlobType = ftOraBlob
      Size = 1
    end
    object qryDeptPrcDataHAS_OWD_PRIORITIES_CHANGES: TAbmesFloatField
      FieldName = 'HAS_OWD_PRIORITIES_CHANGES'
      ProviderFlags = []
    end
    object qryDeptPrcDataIS_OWD_PRIORITIES_SET_COMPLETE: TAbmesFloatField
      FieldName = 'IS_OWD_PRIORITIES_SET_COMPLETE'
      Required = True
    end
  end
  object prvDeptPrcData: TDataSetProvider
    DataSet = qryDeptPrcData
    UpdateMode = upWhereKeyOnly
    OnGetData = prvDeptPrcDataGetData
    AfterUpdateRecord = prvDeptPrcDataAfterUpdateRecord
    BeforeUpdateRecord = prvDeptPrcDataBeforeUpdateRecord
    BeforeApplyUpdates = prvDeptPrcDataBeforeApplyUpdates
    AfterApplyUpdates = prvDeptPrcDataAfterApplyUpdates
    Left = 376
    Top = 616
  end
  object dsDeptPrcData: TDataSource
    DataSet = qryDeptPrcData
    Left = 376
    Top = 712
  end
  object qryDeptOWDPriorities: TAbmesSQLQuery
    DataSource = dsDeptPrcData
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dowdp.DEPT_CODE,'
      '  dowdp.OCC_WORK_DEPT_PRIORITY_CODE,'
      '  dowdp.DEPT_OWDP_COVER_TYPE_CODE,'
      ''
      '  ( select'
      '      owdp.OCC_WORK_DEPT_PRIORITY_NO'
      '    from'
      '      OCC_WORK_DEPT_PRIORITIES owdp'
      '    where'
      
        '      (owdp.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WORK_DEPT_PR' +
        'IORITY_CODE)'
      '  ) as OCC_WORK_DEPT_PRIORITY_NO,'
      ''
      '  ( select'
      '      owdp.OCC_WORK_DEPT_PRIORITY_NAME'
      '    from'
      '      OCC_WORK_DEPT_PRIORITIES owdp'
      '    where'
      
        '      (owdp.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WORK_DEPT_PR' +
        'IORITY_CODE)'
      '  ) as OCC_WORK_DEPT_PRIORITY_NAME,'
      ''
      '  To_Number(null) as HAS_NOT_COVERED_DESCENDANT'
      ''
      'from'
      '  DEPT_OWD_PRIORITIES dowdp'
      ''
      'where'
      '  (dowdp.DEPT_CODE = :DEPT_CODE)'
      ''
      'order by'
      '  OCC_WORK_DEPT_PRIORITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DEPT_OWD_PRIORITIES'
    Left = 376
    Top = 760
    object qryDeptOWDPrioritiesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDeptOWDPrioritiesDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
      Required = True
    end
    object qryDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
      ProviderFlags = []
    end
    object qryDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryDeptOWDPrioritiesHAS_NOT_COVERED_DESCENDANT: TAbmesFloatField
      FieldName = 'HAS_NOT_COVERED_DESCENDANT'
      ProviderFlags = []
    end
  end
  object qryDeptsPrcDataOccupations: TAbmesSQLQuery
    BeforeOpen = qryDeptsPrcDataOccupationsBeforeOpen
    AfterClose = qryDeptsPrcDataOccupationsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_Number(null) as OCCUPATION_CODE,'
      '  dowdp.DEPT_CODE,'
      '  dowdp.OCC_WORK_DEPT_PRIORITY_CODE,'
      '  dowdp.DEPT_OWDP_COVER_TYPE_CODE,'
      '  LPad(dowdp.OCC_WORK_DEPT_PRIORITY_CODE, 9, '#39'0'#39') as TREE_CODE,'
      '  To_Char(null) as PARENT_TREE_CODE,'
      '  LPad(owdp.OCC_WORK_DEPT_PRIORITY_NO, 9, '#39'0'#39') as SORT_FIELD,'
      '  owdp.OCC_WORK_DEPT_PRIORITY_NAME as TREE_DISPLAY_NAME,'
      '  Cast(null as Varchar2(54 char)) as EMPLOYEE_NAME,'
      '  To_Number(null) as ASSIGNMENT_DAYS_LEFT,'
      
        '  %OWD_PRIORITY_STATE_CODE[dowdp.DEPT_CODE~ dowdp.OCC_WORK_DEPT_' +
        'PRIORITY_CODE~ :TO_DATE] as OWD_PRIORITY_STATE_CODE,'
      '  owdp.IS_CAPACITY_GENERATOR,'
      '  To_Number(null) as IS_ACTIVE,'
      '  To_Number(null) as IS_OCCUPIED,'
      '  To_Number(null) as IS_MAIN,'
      '  To_Char(null) as OCCUPATION_PHASE,'
      '  To_Number(null) as OCCUPATION_LEVEL,'
      '  Cast(null as Varchar2(5 char)) as SHIFT_IDENTIFIER,'
      '  Cast(null as Varchar2(46 char)) as OCCUPATION_DEPT_IDENTIFIER,'
      '  To_Number(null) as OCCUPATION_DAYS_LEFT,'
      '  To_Number(null) as DOC_BRANCH_CODE,'
      '  To_Number(null) as DOC_CODE,'
      '  To_Number(null) as HAS_DOC_ITEMS,'
      '  To_Number(null) as PRODUCT_DOC_BRANCH_CODE,'
      '  To_Number(null) as PRODUCT_DOC_CODE,'
      '  To_Number(null) as PRODUCT_HAS_DOC_ITEMS,'
      '  To_Number(null) as EMPLOYEE_OCCUPATION_PROF_COUNT,'
      '  To_Number(null) as OCCUPATION_PROFESSION_COUNT,'
      '  To_Number(null) as OE_MASTERED_PRC_ACTIONS_COUNT,'
      '  To_Number(null) as OCC_PRC_ACTIONS_COUNT,'
      '  To_Number(null) as OCCUPATION_EMPLOYEE_CODE,'
      '  To_Number(null) as EMPLOYEE_CODE,'
      '  owdp.DOC_BRANCH_CODE as OWDP_DOC_BRANCH_CODE,'
      '  owdp.DOC_CODE as OWDP_DOC_CODE,'
      '  %HAS_DOC_ITEMS[owdp] as OWDP_HAS_DOC_ITEMS,'
      ''
      '  Decode('
      '    dowdp.DEPT_OWDP_COVER_TYPE_CODE,'
      '    %dowdpct_ANCESTOR,'
      
        '    Cast(%DEPT_IDENTIFIER[%DEPT_OWDP_COVERING_DEPT[dowdp.DEPT_CO' +
        'DE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]] as Varchar2(46 char))'
      '  ) as DEPT_OWDP_COVERING_DEPT,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DUAL'
      '    where'
      '      ( (:OCC_WORK_DEPT_PRIORITY_CODE is null) or'
      
        '        (dowdp.OCC_WORK_DEPT_PRIORITY_CODE = :OCC_WORK_DEPT_PRIO' +
        'RITY_CODE)'
      '      ) and'
      ''
      '      ( ( (:ORG_WORK_LEVEL_CODE is null) and'
      '          (:ORG_WORK_MODE_CODE is null)'
      '        ) or'
      '        ( (owdp.ORG_WORK_LEVEL_CODE = :ORG_WORK_LEVEL_CODE) and'
      '          (owdp.ORG_WORK_MODE_CODE = :ORG_WORK_MODE_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_DEPTS_2 = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              OCCUPATION_WORK_DEPTS owd,'
      '              OCCUPATIONS o,'
      '              TEMP_FILTERED_DEPTS_2 tfd'
      '            where'
      
        '              (owd.DEPT_CODE = %DEPT_OWDP_COVERING_DEPT[dowdp.DE' +
        'PT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]) and'
      
        '              (owd.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WORK_' +
        'DEPT_PRIORITY_CODE) and'
      '              (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '              (o.DEPT_CODE = tfd.DEPT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:SHIFT_CODE is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              OCCUPATION_WORK_DEPTS owd,'
      '              OCCUPATIONS o,'
      '              OCCUPATION_SHIFTS os'
      '            where'
      
        '              (owd.DEPT_CODE = %DEPT_OWDP_COVERING_DEPT[dowdp.DE' +
        'PT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]) and'
      
        '              (owd.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WORK_' +
        'DEPT_PRIORITY_CODE) and'
      '              (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '              (o.OCCUPATION_CODE = os.OCCUPATION_CODE) and'
      
        '              (:TO_DATE between os.BEGIN_DATE and os.END_DATE) a' +
        'nd'
      '              (os.SHIFT_CODE = :SHIFT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:IS_ACTIVE is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              OCCUPATION_WORK_DEPTS owd,'
      '              OCCUPATIONS o'
      '            where'
      
        '              (owd.DEPT_CODE = %DEPT_OWDP_COVERING_DEPT[dowdp.DE' +
        'PT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]) and'
      
        '              (owd.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WORK_' +
        'DEPT_PRIORITY_CODE) and'
      '              (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '              ( ( (:IS_ACTIVE = 1) and'
      
        '                  (:TO_DATE between o.OCCUPATION_BEGIN_DATE and ' +
        'o.OCCUPATION_END_DATE)'
      '                ) or'
      '                ( (:IS_ACTIVE = 0) and'
      
        '                  not (:TO_DATE between o.OCCUPATION_BEGIN_DATE ' +
        'and o.OCCUPATION_END_DATE)'
      '                )'
      '              )'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:IS_OCCUPIED is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              OCCUPATION_WORK_DEPTS owd,'
      '              OCCUPATIONS o,'
      '              OCCUPATION_EMPLOYEES oe'
      '            where'
      
        '              (owd.DEPT_CODE = %DEPT_OWDP_COVERING_DEPT[dowdp.DE' +
        'PT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]) and'
      
        '              (owd.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WORK_' +
        'DEPT_PRIORITY_CODE) and'
      '              (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '              (o.OCCUPATION_CODE = oe.OCCUPATION_CODE(+)) and'
      
        '              (:TO_DATE between oe.ASSIGNMENT_BEGIN_DATE(+) and ' +
        'oe.ASSIGNMENT_END_DATE(+)) and'
      '              ( ( (:IS_OCCUPIED = 1) and'
      '                  (oe.EMPLOYEE_CODE is not null)'
      '                ) or'
      '                ( (:IS_OCCUPIED = 0) and'
      '                  (oe.EMPLOYEE_CODE is null)'
      '                )'
      '              )'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:MIN_OWD_PRIORITY_STATE_CODE is null) or'
      
        '        (%OWD_PRIORITY_STATE_CODE[%DEPT_OWDP_COVERING_DEPT[dowdp' +
        '.DEPT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]~ dowdp.OCC_WORK_D' +
        'EPT_PRIORITY_CODE~ :TO_DATE] >= :MIN_OWD_PRIORITY_STATE_CODE)'
      '      ) and'
      ''
      '      ( (:MAX_OWD_PRIORITY_STATE_CODE is null) or'
      
        '        (%OWD_PRIORITY_STATE_CODE[%DEPT_OWDP_COVERING_DEPT[dowdp' +
        '.DEPT_CODE~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]~ dowdp.OCC_WORK_D' +
        'EPT_PRIORITY_CODE~ :TO_DATE] <= :MAX_OWD_PRIORITY_STATE_CODE)'
      '      ) and'
      ''
      '      ( (:ORG_WORK_ACTIVITY_CODE is null) or'
      '        (owdp.ORG_WORK_ACTIVITY_CODE = :ORG_WORK_ACTIVITY_CODE)'
      '      )'
      '  ) as IS_FILTER_ACCEPTED'
      ''
      'from'
      '  DEPT_OWD_PRIORITIES dowdp,'
      '  OCC_WORK_DEPT_PRIORITIES owdp'
      ''
      'where'
      
        '  (dowdp.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK_DEPT_PRIORI' +
        'TY_CODE) and'
      '  (dowdp.DEPT_CODE = :DEPT_CODE)'
      ''
      'union all'
      ''
      'select'
      '  owd.OCCUPATION_CODE,'
      '  dowdp.DEPT_CODE,'
      '  dowdp.OCC_WORK_DEPT_PRIORITY_CODE,'
      '  dowdp.DEPT_OWDP_COVER_TYPE_CODE,'
      
        '  (LPad(dowdp.OCC_WORK_DEPT_PRIORITY_CODE, 9, '#39'0'#39') || '#39';'#39' || LPa' +
        'd(o.OCCUPATION_CODE, 9, '#39'0'#39')) as TREE_CODE,'
      
        '  LPad(dowdp.OCC_WORK_DEPT_PRIORITY_CODE, 9, '#39'0'#39') as PARENT_TREE' +
        '_CODE,'
      '  o.OCCUPATION_NAME as SORT_FIELD,'
      '  o.OCCUPATION_NAME as TREE_DISPLAY_NAME,'
      '  %EMPLOYEE_ABBREV_NAME[oe.EMPLOYEE_CODE] as EMPLOYEE_NAME,'
      
        '  (oe.ASSIGNMENT_END_DATE - Cast(:TO_DATE as Date)) as ASSIGNMEN' +
        'T_DAYS_LEFT,'
      '  To_Number(null) as OWD_PRIORITY_STATE_CODE,'
      '  ( select'
      '      owdp.IS_CAPACITY_GENERATOR'
      '    from'
      '      OCC_WORK_DEPT_PRIORITIES owdp'
      '    where'
      
        '      (owdp.OCC_WORK_DEPT_PRIORITY_CODE = owd.OCC_WORK_DEPT_PRIO' +
        'RITY_CODE)'
      '  ) as IS_CAPACITY_GENERATOR,'
      ''
      '  ( case'
      
        '      when (:TO_DATE between o.OCCUPATION_BEGIN_DATE and o.OCCUP' +
        'ATION_END_DATE) then 1'
      '    else'
      '      0'
      '    end'
      '  ) as IS_ACTIVE,'
      ''
      '  Nvl2(oe.EMPLOYEE_CODE, 1, 0) as IS_OCCUPIED,'
      '  o.IS_MAIN,'
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
      '  o.OCCUPATION_LEVEL,'
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
      '            (:TO_DATE between os.BEGIN_DATE and os.END_DATE)'
      '        )'
      '      )'
      '  ) as SHIFT_IDENTIFIER,'
      '  %DEPT_IDENTIFIER[o.DEPT_CODE] as OCCUPATION_DEPT_IDENTIFIER,'
      
        '  (o.OCCUPATION_END_DATE - Cast(:TO_DATE as Date)) as OCCUPATION' +
        '_DAYS_LEFT,'
      '  o.DOC_BRANCH_CODE,'
      '  o.DOC_CODE,'
      '  %HAS_DOC_ITEMS[o] as HAS_DOC_ITEMS,'
      
        '  (select p.DOC_BRANCH_CODE from PRODUCTS p where (p.PRODUCT_COD' +
        'E = o.PRODUCT_CODE)) as PRODUCT_DOC_BRANCH_CODE,'
      
        '  (select p.DOC_CODE from PRODUCTS p where (p.PRODUCT_CODE = o.P' +
        'RODUCT_CODE)) as PRODUCT_DOC_CODE,'
      
        '  (select %HAS_DOC_ITEMS[p] from PRODUCTS p where (p.PRODUCT_COD' +
        'E = o.PRODUCT_CODE)) as PRODUCT_HAS_DOC_ITEMS,'
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
      '  %OCC_PROFESSIONS_COUNT[o] as OCCUPATION_PROFESSION_COUNT,'
      
        '  %OE_MASTERED_PRC_ACTIONS_COUNT[oe~:TO_DATE] as OE_MASTERED_PRC' +
        '_ACTIONS_COUNT,'
      '  %OCC_PRC_ACTIONS_COUNT[o] as OCC_PRC_ACTIONS_COUNT,'
      '  oe.OCCUPATION_EMPLOYEE_CODE,'
      '  oe.EMPLOYEE_CODE,'
      '  To_Number(null) as OWDP_DOC_BRANCH_CODE,'
      '  To_Number(null) as OWDP_DOC_CODE,'
      '  To_Number(null) as OWDP_HAS_DOC_ITEMS,'
      '  To_Char(null) as DEPT_OWDP_COVERING_DEPT,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DUAL'
      '    where'
      '      ( (:OCC_WORK_DEPT_PRIORITY_CODE is null) or'
      
        '        (dowdp.OCC_WORK_DEPT_PRIORITY_CODE = :OCC_WORK_DEPT_PRIO' +
        'RITY_CODE)'
      '      ) and'
      ''
      '      ( ( (:ORG_WORK_LEVEL_CODE is null) and'
      '          (:ORG_WORK_MODE_CODE is null)'
      '        ) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              OCC_WORK_DEPT_PRIORITIES owdp'
      '            where'
      
        '              (owdp.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WORK' +
        '_DEPT_PRIORITY_CODE) and'
      
        '              (owdp.ORG_WORK_LEVEL_CODE = :ORG_WORK_LEVEL_CODE) ' +
        'and'
      '              (owdp.ORG_WORK_MODE_CODE = :ORG_WORK_MODE_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_DEPTS_2 = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_DEPTS_2 tfd'
      '            where'
      '              (tfd.DEPT_CODE = o.DEPT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:SHIFT_CODE is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              OCCUPATION_SHIFTS os'
      '            where'
      '              (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      
        '              (:TO_DATE between os.BEGIN_DATE and os.END_DATE) a' +
        'nd'
      '              (os.SHIFT_CODE = :SHIFT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:IS_ACTIVE is null) or'
      '        ( (:IS_ACTIVE = 1) and'
      
        '          (:TO_DATE between o.OCCUPATION_BEGIN_DATE and o.OCCUPA' +
        'TION_END_DATE)'
      '        ) or'
      '        ( (:IS_ACTIVE = 0) and'
      
        '          not (:TO_DATE between o.OCCUPATION_BEGIN_DATE and o.OC' +
        'CUPATION_END_DATE)'
      '        )'
      '      ) and'
      ''
      '      ( (:IS_OCCUPIED is null) or'
      '        ( (:IS_OCCUPIED = 1) and'
      '          (oe.EMPLOYEE_CODE is not null)'
      '        ) or'
      '        ( (:IS_OCCUPIED = 0) and'
      '          (oe.EMPLOYEE_CODE is null)'
      '        )'
      '      ) and'
      ''
      '      ( (:MIN_OWD_PRIORITY_STATE_CODE is null) or'
      
        '        (%OWD_PRIORITY_STATE_CODE[owd.DEPT_CODE~ owd.OCC_WORK_DE' +
        'PT_PRIORITY_CODE~ :TO_DATE] >= :MIN_OWD_PRIORITY_STATE_CODE)'
      '      ) and'
      ''
      '      ( (:MAX_OWD_PRIORITY_STATE_CODE is null) or'
      
        '        (%OWD_PRIORITY_STATE_CODE[owd.DEPT_CODE~ owd.OCC_WORK_DE' +
        'PT_PRIORITY_CODE~ :TO_DATE] <= :MAX_OWD_PRIORITY_STATE_CODE)'
      '      ) and'
      ''
      '      ( (:ORG_WORK_ACTIVITY_CODE is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              OCC_WORK_DEPT_PRIORITIES owdp'
      '            where'
      
        '              (owdp.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WORK' +
        '_DEPT_PRIORITY_CODE) and'
      
        '              (owdp.ORG_WORK_ACTIVITY_CODE = :ORG_WORK_ACTIVITY_' +
        'CODE)'
      '          )'
      '        )'
      '      )'
      '  ) as IS_FILTER_ACCEPTED'
      ''
      'from'
      '  DEPT_OWD_PRIORITIES dowdp,'
      '  OCCUPATION_WORK_DEPTS owd,'
      '  OCCUPATIONS o,'
      '  OCCUPATION_EMPLOYEES oe'
      ''
      'where'
      
        '  (owd.DEPT_CODE = %DEPT_OWDP_COVERING_DEPT[dowdp.DEPT_CODE~ dow' +
        'dp.OCC_WORK_DEPT_PRIORITY_CODE]) and'
      
        '  (owd.OCC_WORK_DEPT_PRIORITY_CODE = dowdp.OCC_WORK_DEPT_PRIORIT' +
        'Y_CODE) and'
      ''
      '  (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '  (o.OCCUPATION_CODE = oe.OCCUPATION_CODE(+)) and'
      
        '  (:TO_DATE between oe.ASSIGNMENT_BEGIN_DATE(+) and oe.ASSIGNMEN' +
        'T_END_DATE(+)) and'
      ''
      '  (dowdp.DEPT_CODE = :DEPT_CODE)'
      ''
      'order by'
      '  SORT_FIELD'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'OWD_PRIORITY_STATE_CODE[dowdp.DEPT_CODE~ dowdp.OCC_WORK_DEPT_PRI' +
          'ORITY_CODE~ :TO_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[owdp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'dowdpct_ANCESTOR'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'DEPT_IDENTIFIER[%DEPT_OWDP_COVERING_DEPT[dowdp.DEPT_CODE~ dowdp.' +
          'OCC_WORK_DEPT_PRIORITY_CODE]]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 
          'DEPT_OWDP_COVERING_DEPT[dowdp.DEPT_CODE~ dowdp.OCC_WORK_DEPT_PRI' +
          'ORITY_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 
          'OWD_PRIORITY_STATE_CODE[%DEPT_OWDP_COVERING_DEPT[dowdp.DEPT_CODE' +
          '~ dowdp.OCC_WORK_DEPT_PRIORITY_CODE]~ dowdp.OCC_WORK_DEPT_PRIORI' +
          'TY_CODE~ :TO_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_ABBREV_NAME[oe.EMPLOYEE_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'DEPT_IDENTIFIER[o.DEPT_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[o]'
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
        Name = 'OE_MASTERED_PRC_ACTIONS_COUNT[oe~:TO_DATE]'
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
        Name = 
          'OWD_PRIORITY_STATE_CODE[owd.DEPT_CODE~ owd.OCC_WORK_DEPT_PRIORIT' +
          'Y_CODE~ :TO_DATE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_OCCUPATION_DEPTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 200
    Top = 808
    object qryDeptsPrcDataOccupationsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object qryDeptsPrcDataOccupationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryDeptsPrcDataOccupationsOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
    end
    object qryDeptsPrcDataOccupationsDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
    end
    object qryDeptsPrcDataOccupationsSORT_FIELD: TAbmesWideStringField
      FieldName = 'SORT_FIELD'
      Size = 50
    end
    object qryDeptsPrcDataOccupationsTREE_DISPLAY_NAME: TAbmesWideStringField
      FieldName = 'TREE_DISPLAY_NAME'
      Size = 50
    end
    object qryDeptsPrcDataOccupationsEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 54
    end
    object qryDeptsPrcDataOccupationsASSIGNMENT_DAYS_LEFT: TAbmesFloatField
      FieldName = 'ASSIGNMENT_DAYS_LEFT'
    end
    object qryDeptsPrcDataOccupationsOWD_PRIORITY_STATE_CODE: TAbmesFloatField
      FieldName = 'OWD_PRIORITY_STATE_CODE'
    end
    object qryDeptsPrcDataOccupationsIS_CAPACITY_GENERATOR: TAbmesFloatField
      FieldName = 'IS_CAPACITY_GENERATOR'
    end
    object qryDeptsPrcDataOccupationsIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
    end
    object qryDeptsPrcDataOccupationsIS_OCCUPIED: TAbmesFloatField
      FieldName = 'IS_OCCUPIED'
    end
    object qryDeptsPrcDataOccupationsIS_MAIN: TAbmesFloatField
      FieldName = 'IS_MAIN'
    end
    object qryDeptsPrcDataOccupationsOCCUPATION_PHASE: TAbmesWideStringField
      FieldName = 'OCCUPATION_PHASE'
      Size = 93
    end
    object qryDeptsPrcDataOccupationsOCCUPATION_LEVEL: TAbmesFloatField
      FieldName = 'OCCUPATION_LEVEL'
    end
    object qryDeptsPrcDataOccupationsOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryDeptsPrcDataOccupationsOCCUPATION_DAYS_LEFT: TAbmesFloatField
      FieldName = 'OCCUPATION_DAYS_LEFT'
    end
    object qryDeptsPrcDataOccupationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDeptsPrcDataOccupationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDeptsPrcDataOccupationsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object qryDeptsPrcDataOccupationsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryDeptsPrcDataOccupationsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryDeptsPrcDataOccupationsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object qryDeptsPrcDataOccupationsEMPLOYEE_OCCUPATION_PROF_COUNT: TAbmesFloatField
      FieldName = 'EMPLOYEE_OCCUPATION_PROF_COUNT'
    end
    object qryDeptsPrcDataOccupationsOCCUPATION_PROFESSION_COUNT: TAbmesFloatField
      FieldName = 'OCCUPATION_PROFESSION_COUNT'
    end
    object qryDeptsPrcDataOccupationsOE_MASTERED_PRC_ACTIONS_COUNT: TAbmesFloatField
      FieldName = 'OE_MASTERED_PRC_ACTIONS_COUNT'
    end
    object qryDeptsPrcDataOccupationsOCC_PRC_ACTIONS_COUNT: TAbmesFloatField
      FieldName = 'OCC_PRC_ACTIONS_COUNT'
    end
    object qryDeptsPrcDataOccupationsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
    end
    object qryDeptsPrcDataOccupationsOWDP_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OWDP_DOC_BRANCH_CODE'
    end
    object qryDeptsPrcDataOccupationsOWDP_DOC_CODE: TAbmesFloatField
      FieldName = 'OWDP_DOC_CODE'
    end
    object qryDeptsPrcDataOccupationsOWDP_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'OWDP_HAS_DOC_ITEMS'
    end
    object qryDeptsPrcDataOccupationsIS_FILTER_ACCEPTED: TAbmesFloatField
      FieldName = 'IS_FILTER_ACCEPTED'
    end
    object qryDeptsPrcDataOccupationsTREE_CODE: TAbmesWideStringField
      FieldName = 'TREE_CODE'
      Size = 19
    end
    object qryDeptsPrcDataOccupationsPARENT_TREE_CODE: TAbmesWideStringField
      FieldName = 'PARENT_TREE_CODE'
      Size = 9
    end
    object qryDeptsPrcDataOccupationsDEPT_OWDP_COVERING_DEPT: TAbmesWideStringField
      FieldName = 'DEPT_OWDP_COVERING_DEPT'
      Size = 46
    end
    object qryDeptsPrcDataOccupationsSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object qryDeptsPrcDataOccupationsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
  end
  object prvDeptsPrcDataOccupations: TDataSetProvider
    DataSet = qryDeptsPrcDataOccupations
    Options = [poReadOnly, poUseQuoteChar]
    Left = 200
    Top = 760
  end
  object prvDeptOWDPCoveredDepts: TDataSetProvider
    DataSet = qryDeptOWDPCoveredDepts
    Options = [poReadOnly, poUseQuoteChar]
    Left = 472
    Top = 776
  end
  object qryDeptOWDPCoveredDepts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_OWDP_COVER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE,'
      '  d.PARENT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  Cast(%DEPT_IDENTIFIER[d.DEPT_CODE] as Varchar2(100 char)) as D' +
        'EPT_IDENTIFIER,'
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      FIN_STORES fs'
      '    where'
      '      (fs.STORE_CODE = d.DEPT_CODE)'
      '  ) as IS_FIN_STORE,'
      
        '  Decode(d.DEPT_CODE, %TREE_ROOT_CODE, 0, Decode(d.IS_GROUP, 1, ' +
        '1, 2)) as DEPT_IMAGE_INDEX,'
      
        '  (To_Char(d.IS_GROUP) || '#39';'#39' || %DEPT_IDENTIFIER[d.DEPT_CODE]) ' +
        'as SORT_FIELD,'
      ''
      
        '  Decode(%DEPT_OWDP_COVERING_DEPT[dr.DESCENDANT_DEPT_CODE~:OCC_W' +
        'ORK_DEPT_PRIORITY_CODE], :DEPT_CODE, 1, 0) as IS_COVERED,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DUAL'
      '    where'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            DEPT_RELATIONS dr2'
      '          where'
      '            (dr2.ANCESTOR_DEPT_CODE = d.DEPT_CODE) and'
      
        '            (%DEPT_OWDP_COVERING_DEPT[dr2.DESCENDANT_DEPT_CODE~:' +
        'OCC_WORK_DEPT_PRIORITY_CODE] = :DEPT_CODE)'
      '        )'
      '      )'
      '  ) as HAS_COVERED_DESCENDANTS,'
      ''
      
        '  Decode(%DEPT_OWDP_DELEGATING_DEPT[dr.DESCENDANT_DEPT_CODE~:OCC' +
        '_WORK_DEPT_PRIORITY_CODE], :DEPT_CODE, 1, 0) as IS_DELEGATED,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DUAL'
      '    where'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            DEPT_RELATIONS dr2'
      '          where'
      '            (dr2.ANCESTOR_DEPT_CODE = d.DEPT_CODE) and'
      
        '            (%DEPT_OWDP_DELEGATING_DEPT[dr2.DESCENDANT_DEPT_CODE' +
        '~:OCC_WORK_DEPT_PRIORITY_CODE] = :DEPT_CODE)'
      '        )'
      '      )'
      '  ) as HAS_DELEGATED_DESCENDANTS,'
      ''
      '  ( select'
      '      dowdp.DEPT_OWDP_COVER_TYPE_CODE'
      '    from'
      '      DEPT_OWD_PRIORITIES dowdp'
      '    where'
      '      (dowdp.DEPT_CODE = d.DEPT_CODE) and'
      
        '      (dowdp.OCC_WORK_DEPT_PRIORITY_CODE = :OCC_WORK_DEPT_PRIORI' +
        'TY_CODE)'
      '  ) as DEPT_OWDP_COVER_TYPE_CODE'
      ''
      'from'
      '  DEPT_RELATIONS dr,'
      '  DEPTS d'
      ''
      'where'
      
        '  (:DEPT_OWDP_COVER_TYPE_CODE = %dowdpct_LOCAL_AND_DESCENDANTS) ' +
        'and'
      '  (dr.ANCESTOR_DEPT_CODE = :DEPT_CODE) and'
      '  (dr.DESCENDANT_DEPT_CODE = d.DEPT_CODE)'
      ''
      'order by'
      '  SORT_FIELD')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'DEPT_IDENTIFIER[d.DEPT_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'TREE_ROOT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'DEPT_OWDP_COVERING_DEPT[dr.DESCENDANT_DEPT_CODE~:OCC_WORK_DEPT_P' +
          'RIORITY_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'DEPT_OWDP_COVERING_DEPT[dr2.DESCENDANT_DEPT_CODE~:OCC_WORK_DEPT_' +
          'PRIORITY_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'DEPT_OWDP_DELEGATING_DEPT[dr.DESCENDANT_DEPT_CODE~:OCC_WORK_DEPT' +
          '_PRIORITY_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'DEPT_OWDP_DELEGATING_DEPT[dr2.DESCENDANT_DEPT_CODE~:OCC_WORK_DEP' +
          'T_PRIORITY_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'dowdpct_LOCAL_AND_DESCENDANTS'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 472
    Top = 824
    object qryDeptOWDPCoveredDeptsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      Required = True
    end
    object qryDeptOWDPCoveredDeptsPARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
    end
    object qryDeptOWDPCoveredDeptsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 100
    end
    object qryDeptOWDPCoveredDeptsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 100
    end
    object qryDeptOWDPCoveredDeptsIS_COVERED: TAbmesFloatField
      FieldName = 'IS_COVERED'
    end
    object qryDeptOWDPCoveredDeptsIS_FIN_STORE: TAbmesFloatField
      FieldName = 'IS_FIN_STORE'
    end
    object qryDeptOWDPCoveredDeptsDEPT_IMAGE_INDEX: TAbmesFloatField
      FieldName = 'DEPT_IMAGE_INDEX'
    end
    object qryDeptOWDPCoveredDeptsHAS_COVERED_DESCENDANTS: TAbmesFloatField
      FieldName = 'HAS_COVERED_DESCENDANTS'
    end
    object qryDeptOWDPCoveredDeptsSORT_FIELD: TAbmesWideStringField
      FieldName = 'SORT_FIELD'
      Size = 42
    end
    object qryDeptOWDPCoveredDeptsIS_DELEGATED: TAbmesFloatField
      FieldName = 'IS_DELEGATED'
    end
    object qryDeptOWDPCoveredDeptsHAS_DELEGATED_DESCENDANTS: TAbmesFloatField
      FieldName = 'HAS_DELEGATED_DESCENDANTS'
    end
    object qryDeptOWDPCoveredDeptsDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
    end
  end
end
