inherited dmBaseGroups: TdmBaseGroups
  Height = 396
  Width = 968
  object prvBaseGroups: TDataSetProvider
    DataSet = qryBaseGroups
    UpdateMode = upWhereKeyOnly
    OnGetData = prvBaseGroupsGetData
    BeforeUpdateRecord = prvBaseGroupsBeforeUpdateRecord
    BeforeApplyUpdates = prvBaseGroupsBeforeApplyUpdates
    AfterApplyUpdates = prvBaseGroupsAfterApplyUpdates
    AfterGetRecords = prvBaseGroupsAfterGetRecords
    Left = 48
    Top = 8
  end
  object qryBaseGroups: TAbmesSQLQuery
    BeforeOpen = qryBaseGroupsBeforeOpen
    AfterOpen = qryBaseGroupsAfterOpen
    AfterClose = qryBaseGroupsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  bg.BASE_GROUP_CODE,'
      '  '
      '  bg.GROUP_DEPT_CODE,'
      '  gd.NAME as GROUP_DEPT_NAME,'
      
        '  (gdt.DEPT_TYPE_ABBREV || gd.CUSTOM_CODE || gd.SUFFIX_LETTER) a' +
        's GROUP_DEPT_IDENTIFIER,'
      ''
      '  bg.BASE_GROUP_NO,'
      '  bg.BASE_GROUP_NAME,'
      ''
      '  bg.DOC_BRANCH_CODE,'
      '  bg.DOC_CODE,'
      ''
      '  %HAS_DOC_ITEMS[bg] as HAS_DOC_ITEMS,'
      ''
      '  0 as DOC_CHANGED,'
      ''
      '  bgpp.PRODUCT_CODE as BASE_PRODUCT_CODE,'
      '  bgpp.NAME as BASE_PRODUCT_NAME,'
      '  bgpp.CUSTOM_CODE as BASE_PRODUCT_NO,'
      ''
      '  %HAS_DOC_ITEMS[bgpp] as BASE_PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      BASE_GROUP_PRODUCTS bgp2'
      '    where'
      '      (bgp2.BASE_GROUP_CODE = bg.BASE_GROUP_CODE)'
      '  ) as BASE_GROUP_PRODUCTS_COUNT'
      ''
      'from'
      '  BASE_GROUPS bg,'
      '  DEPTS gd,'
      '  DEPT_TYPES gdt,'
      '  BASE_GROUP_PRODUCTS bgp,'
      '  PRODUCTS bgpp'
      ''
      'where'
      '  (bg.GROUP_DEPT_CODE = gd.DEPT_CODE) and'
      '  '
      '  (gd.DEPT_TYPE_CODE = gdt.DEPT_TYPE_CODE(+)) and'
      ''
      '  (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE(+)) and'
      '  (bgp.IS_BASE_PRODUCT(+) = 1) and'
      '  '
      '  (bgp.PRODUCT_CODE = bgpp.PRODUCT_CODE(+)) and'
      '  '
      '  (bg.GROUP_DEPT_CODE = :GROUP_DEPT_CODE) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          BASE_GROUP_PRODUCTS bgp,'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (bgp.BASE_GROUP_CODE = bg.BASE_GROUP_CODE) and'
      '          (tfp.PRODUCT_CODE = bgp.PRODUCT_CODE)'
      '      )'
      '    )'
      '  )'
      ''
      'order by'
      '  bg.BASE_GROUP_NO,'
      '  bg.BASE_GROUP_NAME,'
      '  bg.BASE_GROUP_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[bg]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[bgpp]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptUnknown
        Size = 4000
      end>
    TableName = 'BASE_GROUPS_FOR_EDIT'
    AfterProviderStartTransaction = qryBaseGroupsAfterProviderStartTransaction
    Left = 48
    Top = 56
    object qryBaseGroupsBASE_GROUP_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBaseGroupsGROUP_DEPT_CODE: TAbmesFloatField
      FieldName = 'GROUP_DEPT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryBaseGroupsGROUP_DEPT_NAME: TAbmesWideStringField
      FieldName = 'GROUP_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryBaseGroupsGROUP_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'GROUP_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryBaseGroupsBASE_GROUP_NO: TAbmesFloatField
      FieldName = 'BASE_GROUP_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryBaseGroupsBASE_GROUP_NAME: TAbmesWideStringField
      FieldName = 'BASE_GROUP_NAME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryBaseGroupsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryBaseGroupsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryBaseGroupsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryBaseGroupsDOC_CHANGED: TAbmesFloatField
      FieldName = 'DOC_CHANGED'
      ProviderFlags = []
    end
    object qryBaseGroupsBASE_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BASE_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryBaseGroupsBASE_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BASE_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryBaseGroupsBASE_PRODUCT_NO: TAbmesFloatField
      FieldName = 'BASE_PRODUCT_NO'
      ProviderFlags = []
    end
    object qryBaseGroupsBASE_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'BASE_PRODUCT_HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryBaseGroupsBASE_GROUP_PRODUCTS_COUNT: TAbmesFloatField
      FieldName = 'BASE_GROUP_PRODUCTS_COUNT'
      ProviderFlags = []
    end
  end
  object qryBaseGroupProducts: TAbmesSQLQuery
    BeforeScroll = qryBaseGroupProductsBeforeScroll
    DataSource = dsBaseGroups
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BASE_GROUP_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  bgp.BASE_GROUP_CODE,'
      ''
      '  bgp.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      '  p.IS_INACTIVE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as HAS_SPEC,'
      ''
      
        '  %JOINED_IN_BASE_GROUPS_COUNT[bgp.PRODUCT_CODE~ :GROUP_DEPT_COD' +
        'E] as JOINED_IN_BASE_GROUPS_COUNT,'
      
        '  %GROUP_DEPT_FLOW_COUNT[p.PRODUCT_CODE~ :GROUP_DEPT_CODE] as GR' +
        'OUP_DEPT_FLOW_COUNT,'
      
        '  %MODEL_VARIANTS_COUNT[p.PRODUCT_CODE~ :GROUP_DEPT_CODE] as MOD' +
        'EL_VARIANTS_COUNT,'
      ''
      '  bgp.IS_BASE_PRODUCT,'
      ''
      '  p.DOC_BRANCH_CODE, '
      '  p.DOC_CODE,'
      ''
      
        '  To_Number(:GROUP_DEPT_CODE) as GROUP_DEPT_CODE  -- triabva da ' +
        'se spomenava parametura, za da mu dadem tip, inache idva runtime' +
        ' ot macrotata bez tip'
      ''
      'from'
      '  BASE_GROUP_PRODUCTS bgp,'
      '  PRODUCTS p'
      ''
      'where'
      '  (0 = 1) and  -- da ne vrushta zapisi zaradi otpimizaciata'
      ''
      '  (bgp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (bgp.BASE_GROUP_CODE = :BASE_GROUP_CODE)'
      '  '
      'order by'
      '  p.NAME'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'JOINED_IN_BASE_GROUPS_COUNT[bgp.PRODUCT_CODE~ :GROUP_DEPT_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'GROUP_DEPT_FLOW_COUNT[p.PRODUCT_CODE~ :GROUP_DEPT_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'MODEL_VARIANTS_COUNT[p.PRODUCT_CODE~ :GROUP_DEPT_CODE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'BASE_GROUP_PRODUCTS'
    Left = 48
    Top = 152
    object qryBaseGroupProductsBASE_GROUP_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBaseGroupProductsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBaseGroupProductsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryBaseGroupProductsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryBaseGroupProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryBaseGroupProductsIS_BASE_PRODUCT: TAbmesFloatField
      FieldName = 'IS_BASE_PRODUCT'
      ProviderFlags = [pfInUpdate]
    end
    object qryBaseGroupProductsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryBaseGroupProductsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object qryBaseGroupProductsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      ProviderFlags = []
    end
    object qryBaseGroupProductsHAS_SPEC: TAbmesFloatField
      FieldName = 'HAS_SPEC'
      ProviderFlags = []
    end
    object qryBaseGroupProductsJOINED_IN_BASE_GROUPS_COUNT: TAbmesFloatField
      FieldName = 'JOINED_IN_BASE_GROUPS_COUNT'
      ProviderFlags = []
    end
    object qryBaseGroupProductsGROUP_DEPT_FLOW_COUNT: TAbmesFloatField
      FieldName = 'GROUP_DEPT_FLOW_COUNT'
      ProviderFlags = []
    end
    object qryBaseGroupProductsMODEL_VARIANTS_COUNT: TAbmesFloatField
      FieldName = 'MODEL_VARIANTS_COUNT'
      ProviderFlags = []
    end
  end
  object prvBaseGroupCandidateProducts: TDataSetProvider
    DataSet = qryBaseGroupCandidateProducts
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 8
  end
  object qryBaseGroupCandidateProducts: TAbmesSQLQuery
    BeforeOpen = qryBaseGroupCandidateProductsBeforeOpen
    AfterClose = qryBaseGroupCandidateProductsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FLOWS_THROUGH_DEPT'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'FLOWS_THROUGH_DEPT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FLOWS_THROUGH_DEPT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'with SELECTED_PRODUCTS as'
      '  ( select'
      '      /*+ INDEX(p2) */'
      '      p2.PRODUCT_CODE'
      '    from'
      '      PRODUCTS p2'
      '    where'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            DEFINITE_PRODUCTS dp'
      '          where'
      '            (p2.PRODUCT_CODE = p2.PRODUCT_CODE)'
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
      '              (tfp.PRODUCT_CODE = p2.PRODUCT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:FLOWS_THROUGH_DEPT = 1) or -- wsichki'
      ''
      '        ( (:FLOWS_THROUGH_DEPT = 2) and -- minawa'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                SPEC_LINES sl'
      '              where'
      '                (sl.SPEC_PRODUCT_CODE = p2.PRODUCT_CODE) and'
      ''
      '                (sl.PARENT_SPEC_LINE_CODE is null) and'
      ''
      '                ( (exists'
      '                    ( select'
      '                        1'
      '                      from'
      '                        SPEC_MODEL_VARIANT_STAGES smvs'
      '                      where'
      
        '                        (smvs.SPEC_PRODUCT_CODE = sl.SPEC_PRODUC' +
        'T_CODE) and'
      
        '                        (smvs.SPEC_LINE_CODE = sl.SPEC_LINE_CODE' +
        ') and'
      
        '                        (smvs.SPEC_PRODUCT_CODE = p2.PRODUCT_COD' +
        'E) and -- optimizaciq'
      '                        (smvs.DEPT_CODE = :GROUP_DEPT_CODE)'
      '                    )'
      '                  ) or'
      ''
      '                  (exists'
      '                    ( select'
      '                        1'
      '                      from'
      '                        SMVS_OPERATIONS smvso'
      '                      where'
      
        '                        (smvso.SPEC_PRODUCT_CODE = sl.SPEC_PRODU' +
        'CT_CODE) and'
      
        '                        (smvso.SPEC_LINE_CODE = sl.SPEC_LINE_COD' +
        'E) and'
      
        '                        (smvso.SPEC_PRODUCT_CODE = p2.PRODUCT_CO' +
        'DE) and -- optimizaciq'
      
        '                        (smvso.SMVS_OPERATION_VARIANT_NO >= 0) a' +
        'nd'
      '                        (smvso.DEPT_CODE = :GROUP_DEPT_CODE)'
      '                    )'
      '                  )'
      '                )'
      '            )'
      '          )'
      '        ) or'
      ''
      '        ( (:FLOWS_THROUGH_DEPT = 3) and -- ne minawa'
      '          (not exists'
      '            ( select'
      '                1'
      '              from'
      '                SPEC_LINES sl'
      '              where'
      '                (sl.SPEC_PRODUCT_CODE = p2.PRODUCT_CODE) and'
      ''
      '                (sl.PARENT_SPEC_LINE_CODE is null) and'
      ''
      '                ( (exists'
      '                    ( select'
      '                        1'
      '                      from'
      '                        SPEC_MODEL_VARIANT_STAGES smvs'
      '                      where'
      
        '                        (smvs.SPEC_PRODUCT_CODE = sl.SPEC_PRODUC' +
        'T_CODE) and'
      
        '                        (smvs.SPEC_LINE_CODE = sl.SPEC_LINE_CODE' +
        ') and'
      
        '                        (smvs.SPEC_PRODUCT_CODE = p2.PRODUCT_COD' +
        'E) and -- optimizaciq'
      '                        (smvs.DEPT_CODE = :GROUP_DEPT_CODE)'
      '                    )'
      '                  ) or'
      ''
      '                  (exists'
      '                    ( select'
      '                        1'
      '                      from'
      '                        SMVS_OPERATIONS smvso'
      '                      where'
      
        '                        (smvso.SPEC_PRODUCT_CODE = sl.SPEC_PRODU' +
        'CT_CODE) and'
      
        '                        (smvso.SPEC_LINE_CODE = sl.SPEC_LINE_COD' +
        'E) and'
      
        '                        (smvso.SPEC_PRODUCT_CODE = p2.PRODUCT_CO' +
        'DE) and -- optimizaciq'
      
        '                        (smvso.SMVS_OPERATION_VARIANT_NO >= 0) a' +
        'nd'
      '                        (smvso.DEPT_CODE = :GROUP_DEPT_CODE)'
      '                    )'
      '                  )'
      '                )'
      '            )'
      '          )'
      '        )'
      '      )'
      '  )'
      ''
      'select'
      '  /*+ INDEX(p) */'
      '  p.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      '  p.IS_INACTIVE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as HAS_SPEC,'
      ''
      
        '  %JOINED_IN_BASE_GROUPS_COUNT[p.PRODUCT_CODE~ :GROUP_DEPT_CODE]' +
        ' as JOINED_IN_BASE_GROUPS_COUNT,'
      
        '  %GROUP_DEPT_FLOW_COUNT[p.PRODUCT_CODE~ :GROUP_DEPT_CODE] as GR' +
        'OUP_DEPT_FLOW_COUNT,'
      
        '  %MODEL_VARIANTS_COUNT[p.PRODUCT_CODE~ :GROUP_DEPT_CODE] as MOD' +
        'EL_VARIANTS_COUNT,'
      ''
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE'
      ''
      'from'
      '  PRODUCTS p,'
      '  SELECTED_PRODUCTS sp'
      ''
      'where'
      '  (p.PRODUCT_CODE = sp.PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'JOINED_IN_BASE_GROUPS_COUNT[p.PRODUCT_CODE~ :GROUP_DEPT_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'GROUP_DEPT_FLOW_COUNT[p.PRODUCT_CODE~ :GROUP_DEPT_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'MODEL_VARIANTS_COUNT[p.PRODUCT_CODE~ :GROUP_DEPT_CODE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CANDIDATE_CHOSEN_PRODUCTS'
        ParamType = ptUnknown
        Size = 4000
      end>
    Left = 184
    Top = 56
    object qryBaseGroupCandidateProductsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBaseGroupCandidateProductsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryBaseGroupCandidateProductsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryBaseGroupCandidateProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object qryBaseGroupCandidateProductsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryBaseGroupCandidateProductsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryBaseGroupCandidateProductsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object qryBaseGroupCandidateProductsHAS_SPEC: TAbmesFloatField
      FieldName = 'HAS_SPEC'
    end
    object qryBaseGroupCandidateProductsJOINED_IN_BASE_GROUPS_COUNT: TAbmesFloatField
      FieldName = 'JOINED_IN_BASE_GROUPS_COUNT'
    end
    object qryBaseGroupCandidateProductsGROUP_DEPT_FLOW_COUNT: TAbmesFloatField
      FieldName = 'GROUP_DEPT_FLOW_COUNT'
    end
    object qryBaseGroupCandidateProductsMODEL_VARIANTS_COUNT: TAbmesFloatField
      FieldName = 'MODEL_VARIANTS_COUNT'
    end
  end
  object dsBaseGroups: TDataSource
    DataSet = qryBaseGroups
    Left = 48
    Top = 104
  end
  object qryNewBaseGroupCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_BASE_GROUPS.NextVal as NEW_BASE_GROUP_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 80
    Top = 216
    object qryNewBaseGroupCodeNEW_BASE_GROUP_CODE: TAbmesFloatField
      FieldName = 'NEW_BASE_GROUP_CODE'
    end
  end
  object prvBaseGroup: TDataSetProvider
    DataSet = qryBaseGroup
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 306
    Top = 8
  end
  object qryBaseGroup: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  bg.BASE_GROUP_CODE,'
      '  bg.BASE_GROUP_NO,'
      '  bg.BASE_GROUP_NAME,'
      '  bg.DOC_BRANCH_CODE,'
      '  bg.DOC_CODE,'
      '  %HAS_DOC_ITEMS[bg] as HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      bgp.PRODUCT_CODE'
      '    from'
      '      BASE_GROUP_PRODUCTS bgp'
      '    where'
      '      (bgp.BASE_GROUP_CODE = bg.BASE_GROUP_CODE) and'
      '      (bgp.IS_BASE_PRODUCT = 1)'
      '  ) as BASE_PRODUCT_CODE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      BASE_GROUP_PRODUCTS bgp,'
      '      SPECS s'
      '    where'
      '      (bgp.BASE_GROUP_CODE = bg.BASE_GROUP_CODE) and'
      '      (bgp.PRODUCT_CODE = s.SPEC_PRODUCT_CODE) and'
      '      (bgp.IS_BASE_PRODUCT = 1)'
      '  ) as BASE_PRODUCT_HAS_SPECIFICATION'
      ''
      'from'
      '  BASE_GROUPS bg'
      '  '
      'where'
      '  (bg.GROUP_DEPT_CODE = :DEPT_CODE) and'
      '  exists('
      '    select'
      '      1'
      '    from'
      '      BASE_GROUP_PRODUCTS bgp'
      '    where'
      '      (bgp.BASE_GROUP_CODE = bg.BASE_GROUP_CODE) and'
      '      (bgp.PRODUCT_CODE = :PRODUCT_CODE)'
      '  )')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[bg]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 306
    Top = 56
    object qryBaseGroupBASE_GROUP_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBaseGroupBASE_GROUP_NO: TAbmesFloatField
      FieldName = 'BASE_GROUP_NO'
    end
    object qryBaseGroupBASE_GROUP_NAME: TAbmesWideStringField
      FieldName = 'BASE_GROUP_NAME'
      Size = 100
    end
    object qryBaseGroupDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryBaseGroupDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryBaseGroupBASE_PRODUCT_HAS_SPECIFICATION: TAbmesFloatField
      FieldName = 'BASE_PRODUCT_HAS_SPECIFICATION'
    end
    object qryBaseGroupBASE_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BASE_PRODUCT_CODE'
    end
    object qryBaseGroupHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
  end
  object prvCommonProducts: TDataSetProvider
    DataSet = qryCommonProducts
    UpdateMode = upWhereKeyOnly
    OnGetData = prvCommonProductsGetData
    BeforeUpdateRecord = prvCommonProductsBeforeUpdateRecord
    AfterGetRecords = prvCommonProductsAfterGetRecords
    Left = 456
    Top = 8
  end
  object qryCommonProducts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE as COMMON_PRODUCT_CODE,'
      '  p.NAME as COMMON_PRODUCT_NAME,'
      '  p.CUSTOM_CODE as COMMON_PRODUCT_NO,'
      '  p.IS_INACTIVE,'
      ''
      '  ( select'
      '      dp.COMMON_PRODUCT_CODE'
      '    from'
      '      DEFINITE_PRODUCTS dp'
      '    where'
      '      (dp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as JOINED_TO_PRODUCT_CODE,'
      ''
      
        '  %SPEC_STATE[p.PRODUCT_CODE~null~null~null~null] as SPEC_STATUS' +
        '_CODE,'
      ''
      '  p.NOTES,'
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  p.IS_STRATEGIC'
      ''
      'from'
      '  PRODUCTS p'
      ''
      'where'
      '  ( (:PRODUCT_PARENT_CODE is null) or'
      '    (p.PARENT_CODE = :PRODUCT_PARENT_CODE) ) and'
      ''
      '  (p.IS_INACTIVE = 0) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      COMMON_PRODUCTS cp'
      '    where'
      '      (p.PRODUCT_CODE = cp.PRODUCT_CODE)'
      '  ) and'
      ''
      '  ( (:IS_USED_BY = 0) or'
      '    ( (:IS_USED_BY = 1) and (p.IS_USED_BY_SALES = 1) ) or'
      
        '    ( (:IS_USED_BY = 2) and (p.IS_USED_BY_SALE_PRODUCTION = 1) )' +
        ' or'
      '    ( (:IS_USED_BY = 3) and (p.IS_USED_BY_ENV_PRODUCTION = 1) )'
      '  ) and'
      ''
      '  ( (:IS_PROVIDED_BY = 0) or'
      
        '    ( (:IS_PROVIDED_BY = 1) and (p.IS_PROVIDED_BY_DELIVERIES = 1' +
        ') ) or'
      
        '    ( (:IS_PROVIDED_BY = 2) and (p.IS_PROVIDED_BY_SALE_PRODUCTIO' +
        'N = 1) ) or'
      
        '    ( (:IS_PROVIDED_BY = 3) and (p.IS_PROVIDED_BY_ENV_PRODUCTION' +
        ' = 1) )'
      '  ) '
      ''
      'order by'
      '  p.NAME'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'SPEC_STATE[p.PRODUCT_CODE~null~null~null~null]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_ORDERS_BEGIN_DATE'
        ParamType = ptInput
      end>
    TableName = 'COMMON_GROUPS'
    Left = 456
    Top = 56
    object qryCommonProductsCOMMON_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCommonProductsCOMMON_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'COMMON_PRODUCT_NAME'
      Size = 100
    end
    object qryCommonProductsCOMMON_PRODUCT_NO: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_NO'
    end
    object qryCommonProductsJOINED_TO_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'JOINED_TO_PRODUCT_CODE'
    end
    object qryCommonProductsSPEC_STATUS_CODE: TAbmesFloatField
      FieldName = 'SPEC_STATUS_CODE'
    end
    object qryCommonProductsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryCommonProductsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryCommonProductsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryCommonProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object qryCommonProductsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object qryCommonProductsIS_STRATEGIC: TAbmesFloatField
      FieldName = 'IS_STRATEGIC'
    end
  end
  object dsCommonProducts: TDataSource
    DataSet = qryCommonProducts
    Left = 456
    Top = 104
  end
  object qryCommonProductJoinedProducts: TAbmesSQLQuery
    BeforeOpen = qryCommonProductJoinedProductsBeforeOpen
    BeforeScroll = qryCommonProductJoinedProductsBeforeScroll
    DataSource = dsCommonProducts
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_ORDERS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_ORDERS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.PRODUCT_CODE,'
      '  dp.COMMON_PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      
        '  %PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[p.PRODUCT_CODE~nu' +
        'll~p] as COMPANY_PRODUCT_NAMES,'
      '  p.IS_INACTIVE,'
      ''
      
        '  %SPEC_STATE[p.PRODUCT_CODE~null~null~null~null] as SPEC_STATUS' +
        '_CODE,'
      ''
      '  ( select'
      '      /*+NO_USE_HASH(ml mll) NO_USE_MERGE(ml mll) */'
      '      Count(Count(*))'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE) and'
      '      ( (mll.PRODUCT_CODE is null) or'
      '        (mll.PRODUCT_CODE <> mll.DETAIL_CODE) ) and'
      '      (mll.ANNUL_EMPLOYEE_CODE is null) and'
      '      (ml.ANNUL_EMPLOYEE_CODE is null) and'
      '      (ml.CREATE_DATE >= :PRODUCTION_ORDERS_BEGIN_DATE)'
      '    group by'
      '      ml.ML_OBJECT_BRANCH_CODE,'
      '      ml.ML_OBJECT_CODE'
      '  ) as PRODUCTION_ORDER_COUNT,'
      ''
      '  ( select'
      '      /*+NO_USE_HASH(ml mll) NO_USE_MERGE(ml mll) */'
      '      Sum(mll.LINE_DETAIL_TECH_QUANTITY / p.TECH_MEASURE_COEF)'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE) and'
      '      ( (mll.PRODUCT_CODE is null) or'
      '        (mll.PRODUCT_CODE <> mll.DETAIL_CODE) ) and'
      '      (mll.ANNUL_EMPLOYEE_CODE is null) and'
      '      (ml.ANNUL_EMPLOYEE_CODE is null) and'
      '      (ml.CREATE_DATE >= :PRODUCTION_ORDERS_BEGIN_DATE)'
      '  ) as PRODUCTION_ORDERS_QUANTITY,'
      ''
      '  p.MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  p.IS_THOROUGHLY_ENGINEERED'
      ''
      'from'
      '  DEFINITE_PRODUCTS dp,'
      '  PRODUCTS p'
      ''
      'where'
      '  (0 = 1) and  -- da ne vrushta zapisi zaradi otpimizaciata'
      ''
      '  (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (dp.COMMON_PRODUCT_CODE = :COMMON_PRODUCT_CODE) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      CONCRETE_PRODUCTS cp'
      '    where'
      '      (cp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) and'
      ''
      '  ( (:IS_USED_BY = 0) or'
      '    ( (:IS_USED_BY = 1) and (p.IS_USED_BY_SALES = 1) ) or'
      
        '    ( (:IS_USED_BY = 2) and (p.IS_USED_BY_SALE_PRODUCTION = 1) )' +
        ' or'
      '    ( (:IS_USED_BY = 3) and (p.IS_USED_BY_ENV_PRODUCTION = 1) )'
      '  ) and'
      ''
      '  ( (:IS_PROVIDED_BY = 0) or'
      
        '    ( (:IS_PROVIDED_BY = 1) and (p.IS_PROVIDED_BY_DELIVERIES = 1' +
        ') ) or'
      
        '    ( (:IS_PROVIDED_BY = 2) and (p.IS_PROVIDED_BY_SALE_PRODUCTIO' +
        'N = 1) ) or'
      
        '    ( (:IS_PROVIDED_BY = 3) and (p.IS_PROVIDED_BY_ENV_PRODUCTION' +
        ' = 1) )'
      '  )'
      ''
      'order by'
      '  p.NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[p.PRODUCT_CODE~null~' +
          'p]'
        ParamType = ptInput
        Value = #39'abc'#39
      end
      item
        DataType = ftWideString
        Name = 'SPEC_STATE[p.PRODUCT_CODE~null~null~null~null]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'COMMON_GROUP_PRODUCTS'
    Left = 456
    Top = 152
    object qryCommonProductJoinedProductsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCommonProductJoinedProductsCOMMON_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCommonProductJoinedProductsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryCommonProductJoinedProductsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryCommonProductJoinedProductsSPEC_STATUS_CODE: TAbmesFloatField
      FieldName = 'SPEC_STATUS_CODE'
    end
    object qryCommonProductJoinedProductsPRODUCTION_ORDER_COUNT: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_COUNT'
    end
    object qryCommonProductJoinedProductsPRODUCTION_ORDERS_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDERS_QUANTITY'
    end
    object qryCommonProductJoinedProductsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryCommonProductJoinedProductsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryCommonProductJoinedProductsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryCommonProductJoinedProductsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryCommonProductJoinedProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object qryCommonProductJoinedProductsIS_THOROUGHLY_ENGINEERED: TAbmesFloatField
      FieldName = 'IS_THOROUGHLY_ENGINEERED'
    end
    object qryCommonProductJoinedProductsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object qryCommonProductJoinedProductsCOMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAMES'
      FixedChar = True
      Size = 255
    end
  end
  object prvCommonProductsCandidateJoinedProducts: TDataSetProvider
    DataSet = qryCommonProductsCandidateJoinedProducts
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 8
  end
  object qryCommonProductsCandidateJoinedProducts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_ORDERS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_ORDERS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      
        '  %PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[p.PRODUCT_CODE~nu' +
        'll~p] as COMPANY_PRODUCT_NAMES,'
      '  p.IS_INACTIVE,'
      ''
      
        '  %SPEC_STATE[p.PRODUCT_CODE~null~null~null~null] as SPEC_STATUS' +
        '_CODE,'
      ''
      '  ( select'
      '      /*+NO_USE_HASH(ml mll) NO_USE_MERGE(ml mll) */'
      '      Count(Count(*))'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE) and'
      '      ( (mll.PRODUCT_CODE is null) or'
      '        (mll.PRODUCT_CODE <> mll.DETAIL_CODE) ) and'
      '      (mll.ANNUL_EMPLOYEE_CODE is null) and'
      '      (ml.ANNUL_EMPLOYEE_CODE is null) and'
      '      (ml.CREATE_DATE >= :PRODUCTION_ORDERS_BEGIN_DATE)'
      '    group by'
      '      ml.ML_OBJECT_BRANCH_CODE,'
      '      ml.ML_OBJECT_CODE'
      '  ) as PRODUCTION_ORDER_COUNT,'
      ''
      '  ( select'
      '      /*+NO_USE_HASH(ml mll) NO_USE_MERGE(ml mll) */'
      '      Sum(mll.LINE_DETAIL_TECH_QUANTITY / p.TECH_MEASURE_COEF)'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE) and'
      '      ( (mll.PRODUCT_CODE is null) or'
      '        (mll.PRODUCT_CODE <> mll.DETAIL_CODE) ) and'
      '      (mll.ANNUL_EMPLOYEE_CODE is null) and'
      '      (ml.ANNUL_EMPLOYEE_CODE is null) and'
      '      (ml.CREATE_DATE >= :PRODUCTION_ORDERS_BEGIN_DATE)'
      '  ) as PRODUCTION_ORDERS_QUANTITY,'
      ''
      '  p.MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  p.IS_THOROUGHLY_ENGINEERED'
      ''
      'from'
      '  PRODUCTS p,'
      '  DEFINITE_PRODUCTS dp'
      ''
      'where'
      '  (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  '
      '  (p.PARENT_CODE = :PRODUCT_PARENT_CODE) and'
      '  '
      '  (dp.COMMON_PRODUCT_CODE is null) and'
      '  '
      '  exists('
      '    select'
      '      1'
      '    from'
      '      CONCRETE_PRODUCTS cp'
      '    where'
      '      (cp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) and'
      ''
      '  ( (:IS_USED_BY = 0) or'
      '    ( (:IS_USED_BY = 1) and (p.IS_USED_BY_SALES = 1) ) or'
      
        '    ( (:IS_USED_BY = 2) and (p.IS_USED_BY_SALE_PRODUCTION = 1) )' +
        ' or'
      '    ( (:IS_USED_BY = 3) and (p.IS_USED_BY_ENV_PRODUCTION = 1) )'
      '  ) and'
      ''
      '  ( (:IS_PROVIDED_BY = 0) or'
      
        '    ( (:IS_PROVIDED_BY = 1) and (p.IS_PROVIDED_BY_DELIVERIES = 1' +
        ') ) or'
      
        '    ( (:IS_PROVIDED_BY = 2) and (p.IS_PROVIDED_BY_SALE_PRODUCTIO' +
        'N = 1) ) or'
      
        '    ( (:IS_PROVIDED_BY = 3) and (p.IS_PROVIDED_BY_ENV_PRODUCTION' +
        ' = 1) )'
      '  )'
      ''
      'order by'
      '  p.NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[p.PRODUCT_CODE~null~' +
          'p]'
        ParamType = ptInput
        Value = #39'abc'#39
      end
      item
        DataType = ftWideString
        Name = 'SPEC_STATE[p.PRODUCT_CODE~null~null~null~null]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 56
    object qryCommonProductsCandidateJoinedProductsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryCommonProductsCandidateJoinedProductsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryCommonProductsCandidateJoinedProductsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryCommonProductsCandidateJoinedProductsSPEC_STATUS_CODE: TAbmesFloatField
      FieldName = 'SPEC_STATUS_CODE'
    end
    object qryCommonProductsCandidateJoinedProductsPRODUCTION_ORDER_COUNT: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_COUNT'
    end
    object qryCommonProductsCandidateJoinedProductsPRODUCTION_ORDERS_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDERS_QUANTITY'
    end
    object qryCommonProductsCandidateJoinedProductsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryCommonProductsCandidateJoinedProductsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryCommonProductsCandidateJoinedProductsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryCommonProductsCandidateJoinedProductsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryCommonProductsCandidateJoinedProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object qryCommonProductsCandidateJoinedProductsIS_THOROUGHLY_ENGINEERED: TAbmesFloatField
      FieldName = 'IS_THOROUGHLY_ENGINEERED'
    end
    object qryCommonProductsCandidateJoinedProductsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object qryCommonProductsCandidateJoinedProductsCOMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAMES'
      FixedChar = True
      Size = 255
    end
  end
  object qryUpdDefiniteProduct: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  DEFINITE_PRODUCTS_FOR_EDIT dp'
      ''
      'set'
      '  dp.COMMON_PRODUCT_CODE = :COMMON_PRODUCT_CODE'
      ''
      'where'
      '  (dp.PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 456
    Top = 200
  end
  object prvCommonProductsHeader: TDataSetProvider
    DataSet = qryCommonProductsHeader
    Options = [poReadOnly]
    Left = 640
    Top = 128
  end
  object qryCommonProductsHeader: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE,'
      '  '
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      '  '
      '  ( select'
      '      Count(*)'
      '    from'
      '      PRODUCTS p2'
      '    where'
      '      (p2.PARENT_CODE = p.PRODUCT_CODE) and'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            CONCRETE_PRODUCTS cp'
      '          where'
      '            (cp.PRODUCT_CODE = p2.PRODUCT_CODE)'
      '        )'
      '      )'
      '  ) as TOTAL_CONCRETE_PRODUCT_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      PRODUCTS p2'
      '    where'
      '      (p2.PARENT_CODE = p.PRODUCT_CODE) and'
      '      (p2.IS_INACTIVE = 0) and'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            CONCRETE_PRODUCTS cp'
      '          where'
      '            (cp.PRODUCT_CODE = p2.PRODUCT_CODE)'
      '        )'
      '      )'
      '  ) as ACTIVE_CONCRETE_PRODUCT_COUNT'
      ''
      'from'
      '  PRODUCTS p'
      '  '
      'where'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 640
    Top = 176
    object qryCommonProductsHeaderPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryCommonProductsHeaderMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryCommonProductsHeaderTOTAL_CONCRETE_PRODUCT_COUNT: TAbmesFloatField
      FieldName = 'TOTAL_CONCRETE_PRODUCT_COUNT'
    end
    object qryCommonProductsHeaderACTIVE_CONCRETE_PRODUCT_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_CONCRETE_PRODUCT_COUNT'
    end
  end
  object qryHasSMVSOperationsForDept: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  1 as HAS_SMVS_OPERATIONS_FOR_DEPT'
      'from'
      '  DUAL'
      'where'
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        SPEC_LINES sl,'
      '        SMVS_OPERATIONS smvso'
      '      where'
      '        (sl.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_CODE) and'
      '        (sl.SPEC_LINE_CODE =  smvso.SPEC_LINE_CODE) and'
      '            '
      '        (sl.PARENT_SPEC_LINE_CODE is null) and'
      '        (smvso.SMVS_OPERATION_VARIANT_NO >= 0) and'
      '        (smvso.DEPT_CODE = :DEPT_CODE)'
      '    )'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 80
    Top = 272
    object qryHasSMVSOperationsForDeptHAS_SMVS_OPERATIONS_FOR_DEPT: TAbmesFloatField
      FieldName = 'HAS_SMVS_OPERATIONS_FOR_DEPT'
      FieldValueType = fvtBoolean
    end
  end
  object mshLocalMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'MODEL_VARIANTS_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    SPEC_MODEL_VARIANTS library_smv'
          '  where'
          '    (library_smv.SPEC_PRODUCT_CODE = %1) and'
          ''
          '    ( (exists'
          '        ( select'
          '            1'
          '          from'
          '            SPEC_MODEL_VARIANT_STAGES library_smvs,'
          '            SPEC_LINES library_sl'
          '          where'
          
            '            (library_smvs.SPEC_PRODUCT_CODE = library_sl.SPEC_PR' +
            'ODUCT_CODE) and'
          
            '            (library_smvs.SPEC_LINE_CODE = library_sl.SPEC_LINE_' +
            'CODE) and'
          
            '            (library_smvs.SPEC_MODEL_VARIANT_NO = library_smv.SP' +
            'EC_MODEL_VARIANT_NO) and'
          '            '
          
            '            (library_sl.SPEC_PRODUCT_CODE = library_smv.SPEC_PRO' +
            'DUCT_CODE) and'
          ''
          '            (library_sl.SPEC_PRODUCT_CODE = %1) and'
          '            (library_sl.PARENT_SPEC_LINE_CODE is null) and'
          ''
          '            (library_smvs.SPEC_PRODUCT_CODE = %1) and'
          '            (library_smvs.DEPT_CODE = %2)'
          '        )'
          '      ) or'
          ''
          '      (exists'
          '        ( select'
          '            1'
          '          from'
          '            SMVS_OPERATIONS library_smvso,'
          '            SPEC_LINES library_sl'
          '          where'
          
            '            (library_smvso.SPEC_PRODUCT_CODE = library_sl.SPEC_P' +
            'RODUCT_CODE) and'
          
            '            (library_smvso.SPEC_LINE_CODE = library_sl.SPEC_LINE' +
            '_CODE) and'
          
            '            (library_smvso.SPEC_MODEL_VARIANT_NO = library_smv.S' +
            'PEC_MODEL_VARIANT_NO) and'
          '            '
          
            '            (library_sl.SPEC_PRODUCT_CODE = library_smv.SPEC_PRO' +
            'DUCT_CODE) and'
          ''
          '            (library_sl.SPEC_PRODUCT_CODE = %1) and'
          '            (library_sl.PARENT_SPEC_LINE_CODE is null) and'
          '            '
          '            (library_smvso.SPEC_PRODUCT_CODE = %1) and'
          '            (library_smvso.DEPT_CODE = %2)'
          '        )'
          '      )'
          '    )'
          ')')
      end
      item
        Name = 'JOINED_IN_BASE_GROUPS_COUNT'
        Strings.Strings = (
          '( select'
          '    Count(*)'
          '  from'
          '    BASE_GROUP_PRODUCTS library_bgp,'
          '    BASE_GROUPS library_bg'
          '  where'
          
            '    (library_bgp.BASE_GROUP_CODE = library_bg.BASE_GROUP_CODE) a' +
            'nd'
          ''
          '    (library_bgp.PRODUCT_CODE = %1) and'
          '    (library_bg.GROUP_DEPT_CODE = %2)'
          ')')
      end
      item
        Name = 'GROUP_DEPT_FLOW_COUNT'
        Strings.Strings = (
          '( select'
          '    ( select'
          '        Count(*)'
          '      from'
          '        SPEC_LINES library_sl,'
          '        SPEC_MODEL_VARIANT_STAGES library_smvs'
          '      where'
          
            '        (library_sl.SPEC_PRODUCT_CODE = library_smvs.SPEC_PRODUC' +
            'T_CODE) and'
          
            '        (library_sl.SPEC_LINE_CODE = library_smvs.SPEC_LINE_CODE' +
            ') and'
          ''
          '        (library_sl.SPEC_PRODUCT_CODE = %1) and'
          '        (library_sl.PARENT_SPEC_LINE_CODE is null) and'
          ''
          '        (library_smvs.SPEC_PRODUCT_CODE = %1) and'
          '        (library_smvs.DEPT_CODE = %2)'
          '    ) +'
          '    ( select'
          '        Count(*)'
          '      from'
          '        SPEC_LINES library_sl,'
          '        SMVS_OPERATIONS library_smvso'
          '      where'
          
            '        (library_sl.SPEC_PRODUCT_CODE = library_smvso.SPEC_PRODU' +
            'CT_CODE) and'
          
            '        (library_sl.SPEC_LINE_CODE = library_smvso.SPEC_LINE_COD' +
            'E) and'
          ''
          '        (library_sl.SPEC_PRODUCT_CODE = %1) and'
          '        (library_sl.PARENT_SPEC_LINE_CODE is null) and'
          ''
          '        (library_smvso.SPEC_PRODUCT_CODE = %1) and'
          '        (library_smvso.DEPT_CODE = %2)'
          '    )'
          '  from'
          '    DUAL'
          ')')
      end>
    Left = 856
    Top = 88
  end
  object qryClearBaseGroupBaseProduct: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BASE_GROUP_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  BASE_GROUP_PRODUCTS bgp'
      'set'
      '  bgp.IS_BASE_PRODUCT = 0'
      'where'
      '  (bgp.BASE_GROUP_CODE = :BASE_GROUP_CODE) and'
      '  (bgp.IS_BASE_PRODUCT = 1)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 80
    Top = 328
  end
  object qryAllCommonProductJoinedProducts: TAbmesSQLQuery
    BeforeOpen = qryCommonProductJoinedProductsBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_ORDERS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_ORDERS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.PRODUCT_CODE,'
      '  dp.COMMON_PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      
        '  %PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[p.PRODUCT_CODE~nu' +
        'll~p] as COMPANY_PRODUCT_NAMES,'
      '  p.IS_INACTIVE,'
      ''
      
        '  %SPEC_STATE[p.PRODUCT_CODE~null~null~null~null] as SPEC_STATUS' +
        '_CODE,'
      ''
      '  ( select'
      '      /*+NO_USE_HASH(ml mll) NO_USE_MERGE(ml mll) */'
      '      Count(Count(*))'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE) and'
      '      ( (mll.PRODUCT_CODE is null) or'
      '        (mll.PRODUCT_CODE <> mll.DETAIL_CODE) ) and'
      '      (mll.ANNUL_EMPLOYEE_CODE is null) and'
      '      (ml.ANNUL_EMPLOYEE_CODE is null) and'
      '      (ml.CREATE_DATE >= :PRODUCTION_ORDERS_BEGIN_DATE)'
      '    group by'
      '      ml.ML_OBJECT_BRANCH_CODE,'
      '      ml.ML_OBJECT_CODE'
      '  ) as PRODUCTION_ORDER_COUNT,'
      ''
      '  ( select'
      '      /*+NO_USE_HASH(ml mll) NO_USE_MERGE(ml mll) */'
      '      Sum(mll.LINE_DETAIL_TECH_QUANTITY / p.TECH_MEASURE_COEF)'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE) and'
      '      ( (mll.PRODUCT_CODE is null) or'
      '        (mll.PRODUCT_CODE <> mll.DETAIL_CODE) ) and'
      '      (mll.ANNUL_EMPLOYEE_CODE is null) and'
      '      (ml.ANNUL_EMPLOYEE_CODE is null) and'
      '      (ml.CREATE_DATE >= :PRODUCTION_ORDERS_BEGIN_DATE)'
      '  ) as PRODUCTION_ORDERS_QUANTITY,'
      ''
      '  p.MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  p.IS_THOROUGHLY_ENGINEERED'
      ''
      'from'
      '  DEFINITE_PRODUCTS dp,'
      '  PRODUCTS p'
      ''
      'where'
      '  (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (exists'
      '    ( select'
      '        1'
      ''
      '      from'
      '        PRODUCTS p2'
      ''
      '      where'
      '        (p2.PRODUCT_CODE = dp.COMMON_PRODUCT_CODE) and'
      ''
      '        ( (:PRODUCT_PARENT_CODE is null) or'
      '          (p2.PARENT_CODE = :PRODUCT_PARENT_CODE) ) and'
      ''
      '        (p2.IS_INACTIVE = 0) and'
      ''
      '        exists('
      '          select'
      '            1'
      '          from'
      '            COMMON_PRODUCTS cp'
      '          where'
      '            (p2.PRODUCT_CODE = cp.PRODUCT_CODE)'
      '        ) and'
      ''
      '        ( (:IS_USED_BY = 0) or'
      '          ( (:IS_USED_BY = 1) and (p2.IS_USED_BY_SALES = 1) ) or'
      
        '          ( (:IS_USED_BY = 2) and (p2.IS_USED_BY_SALE_PRODUCTION' +
        ' = 1) ) or'
      
        '          ( (:IS_USED_BY = 3) and (p2.IS_USED_BY_ENV_PRODUCTION ' +
        '= 1) )'
      '        ) and'
      ''
      '        ( (:IS_PROVIDED_BY = 0) or'
      
        '          ( (:IS_PROVIDED_BY = 1) and (p2.IS_PROVIDED_BY_DELIVER' +
        'IES = 1) ) or'
      
        '          ( (:IS_PROVIDED_BY = 2) and (p2.IS_PROVIDED_BY_SALE_PR' +
        'ODUCTION = 1) ) or'
      
        '          ( (:IS_PROVIDED_BY = 3) and (p2.IS_PROVIDED_BY_ENV_PRO' +
        'DUCTION = 1) )'
      '        )'
      '    )'
      '  ) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      CONCRETE_PRODUCTS cp'
      '    where'
      '      (cp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) and'
      ''
      '  ( (:IS_USED_BY = 0) or'
      '    ( (:IS_USED_BY = 1) and (p.IS_USED_BY_SALES = 1) ) or'
      
        '    ( (:IS_USED_BY = 2) and (p.IS_USED_BY_SALE_PRODUCTION = 1) )' +
        ' or'
      '    ( (:IS_USED_BY = 3) and (p.IS_USED_BY_ENV_PRODUCTION = 1) )'
      '  ) and'
      ''
      '  ( (:IS_PROVIDED_BY = 0) or'
      
        '    ( (:IS_PROVIDED_BY = 1) and (p.IS_PROVIDED_BY_DELIVERIES = 1' +
        ') ) or'
      
        '    ( (:IS_PROVIDED_BY = 2) and (p.IS_PROVIDED_BY_SALE_PRODUCTIO' +
        'N = 1) ) or'
      
        '    ( (:IS_PROVIDED_BY = 3) and (p.IS_PROVIDED_BY_ENV_PRODUCTION' +
        ' = 1) )'
      '  )'
      ''
      'order by'
      '  dp.COMMON_PRODUCT_CODE,'
      '  p.NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[p.PRODUCT_CODE~null~' +
          'p]'
        ParamType = ptInput
        Value = #39'abc'#39
      end
      item
        DataType = ftWideString
        Name = 'SPEC_STATE[p.PRODUCT_CODE~null~null~null~null]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 840
    Top = 216
    object qryAllCommonProductJoinedProductsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryAllCommonProductJoinedProductsCOMMON_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryAllCommonProductJoinedProductsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryAllCommonProductJoinedProductsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryAllCommonProductJoinedProductsSPEC_STATUS_CODE: TAbmesFloatField
      FieldName = 'SPEC_STATUS_CODE'
    end
    object qryAllCommonProductJoinedProductsPRODUCTION_ORDER_COUNT: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_COUNT'
    end
    object qryAllCommonProductJoinedProductsPRODUCTION_ORDERS_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDERS_QUANTITY'
    end
    object qryAllCommonProductJoinedProductsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryAllCommonProductJoinedProductsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryAllCommonProductJoinedProductsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryAllCommonProductJoinedProductsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryAllCommonProductJoinedProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object qryAllCommonProductJoinedProductsIS_THOROUGHLY_ENGINEERED: TAbmesFloatField
      FieldName = 'IS_THOROUGHLY_ENGINEERED'
    end
    object qryAllCommonProductJoinedProductsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object qryAllCommonProductJoinedProductsCOMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAMES'
      FixedChar = True
      Size = 3
    end
  end
  object prvAllCommonProductJoinedProducts: TDataSetProvider
    DataSet = qryAllCommonProductJoinedProducts
    Left = 840
    Top = 168
  end
  object cdsAllCommonProductJoinedProducts: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_ORDERS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_ORDERS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end>
    ProviderName = 'prvAllCommonProductJoinedProducts'
    Left = 840
    Top = 264
    object cdsAllCommonProductJoinedProductsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsAllCommonProductJoinedProductsCOMMON_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_CODE'
    end
    object cdsAllCommonProductJoinedProductsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsAllCommonProductJoinedProductsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsAllCommonProductJoinedProductsSPEC_STATUS_CODE: TAbmesFloatField
      FieldName = 'SPEC_STATUS_CODE'
    end
    object cdsAllCommonProductJoinedProductsPRODUCTION_ORDER_COUNT: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_COUNT'
    end
    object cdsAllCommonProductJoinedProductsPRODUCTION_ORDERS_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDERS_QUANTITY'
    end
    object cdsAllCommonProductJoinedProductsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsAllCommonProductJoinedProductsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsAllCommonProductJoinedProductsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsAllCommonProductJoinedProductsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsAllCommonProductJoinedProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object cdsAllCommonProductJoinedProductsIS_THOROUGHLY_ENGINEERED: TAbmesFloatField
      FieldName = 'IS_THOROUGHLY_ENGINEERED'
    end
    object cdsAllCommonProductJoinedProductsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object cdsAllCommonProductJoinedProductsCOMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAMES'
      FixedChar = True
      Size = 3
    end
  end
  object qryUpdIsThoroughlyEngineered: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_THOROUGHLY_ENGINEERED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  PRODUCTS_FOR_EDIT p'
      ''
      'set'
      '  p.IS_THOROUGHLY_ENGINEERED = :IS_THOROUGHLY_ENGINEERED'
      ''
      'where'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 456
    Top = 248
  end
  object qryAllBaseGroupProducts: TAbmesSQLQuery
    BeforeOpen = qryCommonProductJoinedProductsBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  bgp.BASE_GROUP_CODE,'
      ''
      '  bgp.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      '  p.IS_INACTIVE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as HAS_SPEC,'
      ''
      
        '  %JOINED_IN_BASE_GROUPS_COUNT[bgp.PRODUCT_CODE~ :GROUP_DEPT_COD' +
        'E] as JOINED_IN_BASE_GROUPS_COUNT,'
      
        '  %GROUP_DEPT_FLOW_COUNT[p.PRODUCT_CODE~ :GROUP_DEPT_CODE] as GR' +
        'OUP_DEPT_FLOW_COUNT,'
      
        '  %MODEL_VARIANTS_COUNT[p.PRODUCT_CODE~ :GROUP_DEPT_CODE] as MOD' +
        'EL_VARIANTS_COUNT,'
      ''
      '  bgp.IS_BASE_PRODUCT,'
      ''
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      ''
      
        '  To_Number(:GROUP_DEPT_CODE) as GROUP_DEPT_CODE  -- triabva da ' +
        'se spomenava parametura, za da mu dadem tip, inache idva runtime' +
        ' ot macrotata bez tip'
      ''
      'from'
      '  BASE_GROUP_PRODUCTS bgp,'
      '  PRODUCTS p'
      ''
      'where'
      '  (bgp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      BASE_GROUPS bg'
      '    where'
      '      (bg.GROUP_DEPT_CODE = :GROUP_DEPT_CODE) and'
      '      ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              BASE_GROUP_PRODUCTS bgp2,'
      '              TEMP_FILTERED_PRODUCTS tfp'
      '            where'
      '              (bgp2.BASE_GROUP_CODE = bg.BASE_GROUP_CODE) and'
      '              (tfp.PRODUCT_CODE = bgp2.PRODUCT_CODE)'
      '          )'
      '        )'
      '      ) and'
      '      (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE)'
      '  )'
      ''
      'order by'
      '  p.NAME'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'JOINED_IN_BASE_GROUPS_COUNT[bgp.PRODUCT_CODE~ :GROUP_DEPT_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'GROUP_DEPT_FLOW_COUNT[p.PRODUCT_CODE~ :GROUP_DEPT_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'MODEL_VARIANTS_COUNT[p.PRODUCT_CODE~ :GROUP_DEPT_CODE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 248
    Top = 216
    object qryAllBaseGroupProductsBASE_GROUP_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_CODE'
      Required = True
    end
    object qryAllBaseGroupProductsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      Required = True
    end
    object qryAllBaseGroupProductsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Required = True
      Size = 100
    end
    object qryAllBaseGroupProductsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryAllBaseGroupProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object qryAllBaseGroupProductsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      Required = True
    end
    object qryAllBaseGroupProductsHAS_SPEC: TAbmesFloatField
      FieldName = 'HAS_SPEC'
    end
    object qryAllBaseGroupProductsJOINED_IN_BASE_GROUPS_COUNT: TAbmesFloatField
      FieldName = 'JOINED_IN_BASE_GROUPS_COUNT'
    end
    object qryAllBaseGroupProductsGROUP_DEPT_FLOW_COUNT: TAbmesFloatField
      FieldName = 'GROUP_DEPT_FLOW_COUNT'
    end
    object qryAllBaseGroupProductsMODEL_VARIANTS_COUNT: TAbmesFloatField
      FieldName = 'MODEL_VARIANTS_COUNT'
    end
    object qryAllBaseGroupProductsIS_BASE_PRODUCT: TAbmesFloatField
      FieldName = 'IS_BASE_PRODUCT'
      Required = True
    end
    object qryAllBaseGroupProductsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryAllBaseGroupProductsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryAllBaseGroupProductsGROUP_DEPT_CODE: TAbmesFloatField
      FieldName = 'GROUP_DEPT_CODE'
    end
  end
  object prvAllBaseGroupProducts: TDataSetProvider
    DataSet = qryAllBaseGroupProducts
    Left = 248
    Top = 168
  end
  object cdsAllBaseGroupProducts: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvAllBaseGroupProducts'
    Left = 248
    Top = 264
    object cdsAllBaseGroupProductsBASE_GROUP_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_CODE'
      Required = True
    end
    object cdsAllBaseGroupProductsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      Required = True
    end
    object cdsAllBaseGroupProductsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Required = True
      Size = 100
    end
    object cdsAllBaseGroupProductsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsAllBaseGroupProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object cdsAllBaseGroupProductsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      Required = True
    end
    object cdsAllBaseGroupProductsHAS_SPEC: TAbmesFloatField
      FieldName = 'HAS_SPEC'
    end
    object cdsAllBaseGroupProductsJOINED_IN_BASE_GROUPS_COUNT: TAbmesFloatField
      FieldName = 'JOINED_IN_BASE_GROUPS_COUNT'
    end
    object cdsAllBaseGroupProductsGROUP_DEPT_FLOW_COUNT: TAbmesFloatField
      FieldName = 'GROUP_DEPT_FLOW_COUNT'
    end
    object cdsAllBaseGroupProductsMODEL_VARIANTS_COUNT: TAbmesFloatField
      FieldName = 'MODEL_VARIANTS_COUNT'
    end
    object cdsAllBaseGroupProductsIS_BASE_PRODUCT: TAbmesFloatField
      FieldName = 'IS_BASE_PRODUCT'
      Required = True
    end
    object cdsAllBaseGroupProductsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsAllBaseGroupProductsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsAllBaseGroupProductsGROUP_DEPT_CODE: TAbmesFloatField
      FieldName = 'GROUP_DEPT_CODE'
    end
  end
end
