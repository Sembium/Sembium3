inherited dmEngineering: TdmEngineering
  OldCreateOrder = False
  Height = 303
  Width = 508
  object prvEngineeringOrder: TDataSetProvider
    DataSet = qryEngineeringOrder
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvEngineeringOrderBeforeUpdateRecord
    BeforeApplyUpdates = prvEngineeringOrderBeforeApplyUpdates
    AfterApplyUpdates = prvEngineeringOrderAfterApplyUpdates
    Left = 64
    Top = 8
  end
  object qryEngineeringOrder: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ENGINEERING_ORDER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eo.ENGINEERING_ORDER_CODE,'
      '  eo.ENGINEERING_ORDER_BRANCH_CODE,'
      '  eo.ENGINEERING_ORDER_NO,'
      '  eo.ENGINEERING_ORDER_TYPE_CODE,'
      '  eo.DOC_BRANCH_CODE, '
      '  eo.DOC_CODE,'
      '  %HAS_DOC_ITEMS[eo] as HAS_DOC_ITEMS,'
      '  eo.PRIORITY_CODE, '
      '  eo.ORDER_DEPT_CODE, '
      '  eo.PRODUCT_CODE,'
      ''
      '  ( select'
      '      p.PARENT_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = eo.PRODUCT_CODE)'
      '  ) as PRODUCT_PARENT_CODE,'
      ''
      '  eo.THOROUGHLY_ENG_PRODUCT_CODE, '
      '  eo.ENGINEERING_PLAN_END_DATE, '
      '  eo.ENGINEERING_DEPT_CODE, '
      '  eo.ENGINEERING_EMPLOYEE_CODE, '
      '  eo.ENGINEERING_PLAN_WORKDAYS, '
      '  eo.ACTIVATE_EMPLOYEE_CODE, '
      '  eo.ACTIVATE_DATE, '
      '  eo.ACTIVATE_TIME, '
      '  eo.CLOSE_EMPLOYEE_CODE, '
      '  eo.CLOSE_DATE, '
      '  eo.CLOSE_TIME, '
      '  eo.ANNUL_EMPLOYEE_CODE, '
      '  eo.ANNUL_DATE, '
      '  eo.ANNUL_TIME, '
      '  eo.CREATE_EMPLOYEE_CODE, '
      '  eo.CREATE_DATE, '
      '  eo.CREATE_TIME, '
      '  eo.CHANGE_EMPLOYEE_CODE, '
      '  eo.CHANGE_DATE, '
      '  eo.CHANGE_TIME, '
      '  eo.CHANGE_COUNT,'
      ''
      '  eo.PARENT_ENGINEERING_ORDER_CODE,'
      
        '  peo.ENGINEERING_ORDER_BRANCH_CODE as PARENT_ENG_ORDER_BRANCH_C' +
        'ODE,'
      '  peo.ENGINEERING_ORDER_NO as PARENT_ENG_ORDER_NO,'
      
        '  Nvl2(eo.PARENT_ENGINEERING_ORDER_CODE, 1, 0) as HAS_PARENT_ENG' +
        'INEERING_ORDER,'
      ''
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      ENGINEERING_ORDERS ceo'
      '    where'
      
        '      (ceo.PARENT_ENGINEERING_ORDER_CODE = eo.ENGINEERING_ORDER_' +
        'CODE)'
      '  ) as HAS_CHILD_ENGINEERING_ORDERS,'
      ''
      '  eo.NOTES'
      ''
      'from'
      '  ENGINEERING_ORDERS eo,'
      '  ENGINEERING_ORDERS peo'
      ''
      'where'
      
        '  (eo.PARENT_ENGINEERING_ORDER_CODE = peo.ENGINEERING_ORDER_CODE' +
        '(+)) and'
      ''
      '  (eo.ENGINEERING_ORDER_CODE = :ENGINEERING_ORDER_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[eo]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'ENGINEERING_ORDERS_FOR_EDIT'
    AfterProviderStartTransaction = qryEngineeringOrderAfterProviderStartTransaction
    Left = 64
    Top = 56
    object qryEngineeringOrderENGINEERING_ORDER_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEngineeringOrderENGINEERING_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_BRANCH_CODE'
    end
    object qryEngineeringOrderENGINEERING_ORDER_NO: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_NO'
    end
    object qryEngineeringOrderENGINEERING_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_TYPE_CODE'
    end
    object qryEngineeringOrderDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryEngineeringOrderDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryEngineeringOrderHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryEngineeringOrderPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object qryEngineeringOrderORDER_DEPT_CODE: TAbmesFloatField
      FieldName = 'ORDER_DEPT_CODE'
    end
    object qryEngineeringOrderPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryEngineeringOrderPRODUCT_PARENT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PARENT_CODE'
      ProviderFlags = []
    end
    object qryEngineeringOrderTHOROUGHLY_ENG_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'THOROUGHLY_ENG_PRODUCT_CODE'
    end
    object qryEngineeringOrderENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_PLAN_END_DATE'
    end
    object qryEngineeringOrderENGINEERING_DEPT_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_DEPT_CODE'
    end
    object qryEngineeringOrderENGINEERING_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_EMPLOYEE_CODE'
    end
    object qryEngineeringOrderENGINEERING_PLAN_WORKDAYS: TAbmesFloatField
      FieldName = 'ENGINEERING_PLAN_WORKDAYS'
    end
    object qryEngineeringOrderACTIVATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ACTIVATE_EMPLOYEE_CODE'
    end
    object qryEngineeringOrderACTIVATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'ACTIVATE_DATE'
    end
    object qryEngineeringOrderACTIVATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'ACTIVATE_TIME'
    end
    object qryEngineeringOrderCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryEngineeringOrderCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryEngineeringOrderCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryEngineeringOrderANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryEngineeringOrderANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryEngineeringOrderANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryEngineeringOrderCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryEngineeringOrderCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryEngineeringOrderCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryEngineeringOrderCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryEngineeringOrderCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryEngineeringOrderCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryEngineeringOrderCHANGE_COUNT: TAbmesFloatField
      FieldName = 'CHANGE_COUNT'
    end
    object qryEngineeringOrderPARENT_ENGINEERING_ORDER_CODE: TAbmesFloatField
      FieldName = 'PARENT_ENGINEERING_ORDER_CODE'
    end
    object qryEngineeringOrderPARENT_ENG_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PARENT_ENG_ORDER_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryEngineeringOrderPARENT_ENG_ORDER_NO: TAbmesFloatField
      FieldName = 'PARENT_ENG_ORDER_NO'
      ProviderFlags = []
    end
    object qryEngineeringOrderHAS_PARENT_ENGINEERING_ORDER: TAbmesFloatField
      FieldName = 'HAS_PARENT_ENGINEERING_ORDER'
      ProviderFlags = []
    end
    object qryEngineeringOrderHAS_CHILD_ENGINEERING_ORDERS: TAbmesFloatField
      FieldName = 'HAS_CHILD_ENGINEERING_ORDERS'
      ProviderFlags = []
    end
    object qryEngineeringOrderNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object prvProductEngineering: TDataSetProvider
    DataSet = qryProductEngineering
    Options = [poReadOnly]
    Left = 208
    Top = 8
  end
  object qryProductEngineering: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Decode('
      '    p.IS_COMMON,'
      '    1, 2,'
      '    ( select'
      
        '       Decode(Sign(Count(*)), 0, 1, 3 + p.IS_THOROUGHLY_ENGINEER' +
        'ED)'
      '      from'
      '       CONCRETE_PRODUCTS cp,'
      '       DEFINITE_PRODUCTS dp'
      '      where'
      '       (cp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '       (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '       (dp.COMMON_PRODUCT_CODE is not null)'
      '    )'
      '  ) as COMMON_STATUS_CODE,'
      ''
      '  ( select'
      '      NullIf(Count(*), 0)'
      '    from'
      '      DEFINITE_PRODUCTS dp2'
      '    start with'
      
        '      (dp2.PRODUCT_CODE = Nvl2(cp.PRODUCT_CODE, dp.COMMON_PRODUC' +
        'T_CODE, p.PRODUCT_CODE))'
      '    connect by'
      '      (dp2.PRODUCT_CODE = prior dp2.COMMON_PRODUCT_CODE)'
      '  ) as COMMON_PRODUCTS_LEVEL_NO,'
      ''
      '  ( select'
      '      Max(level) - 1'
      '    from'
      '      DEFINITE_PRODUCTS dp2'
      '    start with'
      
        '      (dp2.PRODUCT_CODE = Nvl2(cp.PRODUCT_CODE, dp.COMMON_PRODUC' +
        'T_CODE, p.PRODUCT_CODE))'
      '    connect by'
      '      (dp2.COMMON_PRODUCT_CODE = prior dp2.PRODUCT_CODE)'
      '  ) as COMMON_PRODUCTS_SUB_LEVELS,'
      '  '
      
        '  %SPEC_STATE[p.PRODUCT_CODE~null~null~null~null] as SPEC_STATE_' +
        'CODE,'
      '  '
      '  ( select'
      '      sp.CREATE_DATE'
      '    from'
      '      SPECS sp                  '
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SPEC_CREATE_DATE,'
      '  '
      '  ( select'
      '      sp.CHANGE_DATE'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as SPEC_CHANGE_DATE'
      ''
      'from'
      '  PRODUCTS p,'
      '  DEFINITE_PRODUCTS dp,'
      '  CONCRETE_PRODUCTS cp'
      ''
      'where'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (p.PRODUCT_CODE = dp.PRODUCT_CODE(+)) and'
      '  (p.PRODUCT_CODE = cp.PRODUCT_CODE(+))')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'SPEC_STATE[p.PRODUCT_CODE~null~null~null~null]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 208
    Top = 56
    object qryProductEngineeringCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
    end
    object qryProductEngineeringCOMMON_PRODUCTS_LEVEL_NO: TAbmesFloatField
      FieldName = 'COMMON_PRODUCTS_LEVEL_NO'
    end
    object qryProductEngineeringCOMMON_PRODUCTS_SUB_LEVELS: TAbmesFloatField
      FieldName = 'COMMON_PRODUCTS_SUB_LEVELS'
    end
    object qryProductEngineeringSPEC_STATE_CODE: TAbmesFloatField
      FieldName = 'SPEC_STATE_CODE'
    end
    object qryProductEngineeringSPEC_CREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'SPEC_CREATE_DATE'
    end
    object qryProductEngineeringSPEC_CHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'SPEC_CHANGE_DATE'
    end
  end
  object qryNewEngineeringOrderNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(eo.ENGINEERING_ORDER_NO), 0) + 1) as NEW_ENGINEE' +
        'RING_ORDER_NO'
      'from'
      '  ENGINEERING_ORDERS eo'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 176
    object qryNewEngineeringOrderNoNEW_ENGINEERING_ORDER_NO: TAbmesFloatField
      FieldName = 'NEW_ENGINEERING_ORDER_NO'
    end
  end
  object qryNewEngineeringOrderCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_ENGINEERING_ORDERS.NextVal as NEW_ENGINEERING_ORDER_CODE'
      'from'
      '  DUAL'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 128
    object qryNewEngineeringOrderCodeNEW_ENGINEERING_ORDER_CODE: TAbmesFloatField
      FieldName = 'NEW_ENGINEERING_ORDER_CODE'
    end
  end
  object prvEngineeringOrderTypes: TDataSetProvider
    DataSet = qryEngineeringOrderTypes
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvEngineeringOrderTypesBeforeUpdateRecord
    Left = 360
    Top = 8
  end
  object qryEngineeringOrderTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  eot.ENGINEERING_ORDER_TYPE_CODE,'
      '  eot.ENGINEERING_ORDER_TYPE_NAME,'
      '  eot.ENGINEERING_ORDER_TYPE_ABBREV'
      'from'
      '  ENGINEERING_ORDER_TYPES eot'
      'order by'
      '  eot.ENGINEERING_ORDER_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 56
    object qryEngineeringOrderTypesENGINEERING_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEngineeringOrderTypesENGINEERING_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ENGINEERING_ORDER_TYPE_NAME'
      Size = 50
    end
    object qryEngineeringOrderTypesENGINEERING_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ENGINEERING_ORDER_TYPE_ABBREV'
      Size = 5
    end
  end
  object qryNewEngineeringOrderTypeCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(eot.ENGINEERING_ORDER_TYPE_CODE), 0) + 1) as NEW' +
        '_ENG_ORDER_TYPE_CODE '
      'from'
      '  ENGINEERING_ORDER_TYPES eot'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 112
    object qryNewEngineeringOrderTypeCodeNEW_ENG_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'NEW_ENG_ORDER_TYPE_CODE'
    end
  end
  object qryThorughlyEngineeredProduct: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE'
      ''
      'from'
      '  DEFINITE_PRODUCTS dp,'
      '  PRODUCTS p'
      ''
      'where'
      '  (dp.COMMON_PRODUCT_CODE = '
      '    ( select'
      '        Coalesce(dp2.COMMON_PRODUCT_CODE, dp2.PRODUCT_CODE)'
      '      from'
      '        DEFINITE_PRODUCTS dp2'
      '      where'
      '        (dp2.PRODUCT_CODE = :PRODUCT_CODE)'
      '    )'
      '  ) and'
      ''
      '  (p.PRODUCT_CODE = dp.PRODUCT_CODE) and'
      '  (p.IS_THOROUGHLY_ENGINEERED = 1)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 224
    object qryThorughlyEngineeredProductPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
  end
  object prvEngineeringOrders: TDataSetProvider
    DataSet = qryEngineeringOrders
    OnGetData = prvEngineeringOrdersGetData
    Left = 376
    Top = 176
  end
  object qryEngineeringOrders: TAbmesSQLQuery
    BeforeOpen = qryEngineeringOrdersBeforeOpen
    AfterClose = qryEngineeringOrdersAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TREE_ENGINEERING_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_EO_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_EO_STATE_CODE'
        ParamType = ptInput
        Value = '6'
      end
      item
        DataType = ftFloat
        Name = 'ENGINEERING_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ENGINEERING_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ENGINEERING_ORDER_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ENGINEERING_ORDER_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ENGINEERING_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ENGINEERING_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENG_PLAN_BEGIN_DATE_BEGIN'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENG_PLAN_BEGIN_DATE_BEGIN'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENG_PLAN_BEGIN_DATE_END'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENG_PLAN_BEGIN_DATE_END'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_ENG_START_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_ENG_START_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_ENG_START_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_ENG_START_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ENGINEERING_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ENGINEERING_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_ENG_REAL_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_ENG_REAL_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_ENG_REAL_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_ENG_REAL_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_SPEC_STATE_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'MAX_SPEC_STATE_CODE'
        ParamType = ptInput
        Value = '6'
      end
      item
        DataType = ftFloat
        Name = 'MIN_SPEC_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_SPEC_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENG_PLAN_END_DATE_BEGIN'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENG_PLAN_END_DATE_BEGIN'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENG_PLAN_END_DATE_END'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENG_PLAN_END_DATE_END'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CLOSE_DATE_BEGIN'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CLOSE_DATE_BEGIN'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CLOSE_DATE_END'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CLOSE_DATE_END'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ACTIVATE_DATE_BEGIN'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ACTIVATE_DATE_BEGIN'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ACTIVATE_DATE_END'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ACTIVATE_DATE_END'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'THOROUGHLY_ENG_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'THOROUGHLY_ENG_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_PARENT_ENGINEERING_ORDER'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_PARENT_ENGINEERING_ORDER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_PARENT_ENGINEERING_ORDER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARENT_ENG_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARENT_ENG_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARENT_ENG_ORDER_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARENT_ENG_ORDER_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'with eo_tree as'
      '  ( select'
      '      *'
      '    from'
      '      ( select'
      '          *'
      '        from'
      '          ENGINEERING_ORDERS eo2'
      '        start with'
      '          (%GET_ENGINEERING_ORDERS_TREE = 1) and'
      '          ( eo2.ENGINEERING_ORDER_CODE ='
      '            ( select'
      '                eo4.ENGINEERING_ORDER_CODE'
      '              from'
      '                ( select'
      '                    eo3.ENGINEERING_ORDER_CODE,'
      '                    eo3.PARENT_ENGINEERING_ORDER_CODE'
      '                  from'
      '                    ENGINEERING_ORDERS eo3'
      '                  start with'
      '                    (%GET_ENGINEERING_ORDERS_TREE = 1) and'
      
        '                    (eo3.ENGINEERING_ORDER_CODE = :TREE_ENGINEER' +
        'ING_ORDER_CODE)'
      '                  connect by'
      
        '                    (eo3.ENGINEERING_ORDER_CODE = prior eo3.PARE' +
        'NT_ENGINEERING_ORDER_CODE)'
      '                ) eo4'
      '              where'
      '                (%GET_ENGINEERING_ORDERS_TREE = 1) and'
      '                (eo4.PARENT_ENGINEERING_ORDER_CODE is null)'
      '            )'
      '          )'
      '        connect by'
      
        '          (eo2.PARENT_ENGINEERING_ORDER_CODE = prior eo2.ENGINEE' +
        'RING_ORDER_CODE)'
      '      ) eo5'
      '    where'
      '      (%GET_ENGINEERING_ORDERS_TREE = 1) and'
      '      (eo5.ANNUL_EMPLOYEE_CODE is null)'
      '  )'
      'select'
      '  eo.ENGINEERING_ORDER_CODE,'
      ''
      '  eo.DOC_BRANCH_CODE,'
      '  eo.DOC_CODE,'
      '  %HAS_DOC_ITEMS[eo] as HAS_DOC_ITEMS,'
      ''
      
        '  %SPEC_STATE[eo.PRODUCT_CODE~null~null~null~null] as SPEC_STATE' +
        '_CODE,'
      ''
      '  case'
      '    when (eo.ANNUL_EMPLOYEE_CODE is not null) then'
      '      8'
      '    when (eo.CLOSE_EMPLOYEE_CODE is not null) then'
      '      7'
      '    when (eo.ACTIVATE_EMPLOYEE_CODE is not null) then'
      
        '      Decode(%SPEC_STATE[eo.PRODUCT_CODE~null~null~null~null], 6' +
        ', 6, 5)'
      '    when eo.ENGINEERING_DEPT_CODE is null then'
      '      1'
      '    when eo.ENGINEERING_EMPLOYEE_CODE is null then'
      '      2'
      '  else'
      
        '    3 + Decode(Sign(eo.ENGINEERING_PLAN_END_DATE - ContextDate),' +
        ' 1, 0, 1)'
      '  end as EO_STATE_CODE,'
      ''
      '  ( ( select'
      '        d.CUSTOM_CODE'
      '      from'
      '        DEPTS d'
      '      where'
      '        (d.DEPT_CODE = eo.ENGINEERING_ORDER_BRANCH_CODE)'
      '    ) ||'
      '    '#39'/'#39' || eo.ENGINEERING_ORDER_NO || '#39'/'#39' ||'
      '    ( select'
      '        eot.ENGINEERING_ORDER_TYPE_ABBREV'
      '      from'
      '        ENGINEERING_ORDER_TYPES eot'
      '      where'
      
        '        (eot.ENGINEERING_ORDER_TYPE_CODE = eo.ENGINEERING_ORDER_' +
        'TYPE_CODE)'
      '    )'
      '  ) as ENGINEERING_ORDER_IDENTIFIER,'
      ''
      '  ( select'
      '      pr.PRIORITY_NO'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = eo.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      '  ( select'
      '      (pr.PRIORITY_NO || '#39'   '#39' || pr.PRIORITY_NAME)'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = eo.PRIORITY_CODE)'
      '  ) as PRIORITY_FULL_NAME,'
      '  ( select'
      '      pr.PRIORITY_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = eo.PRIORITY_CODE)'
      '  ) as PRIORITY_COLOR,'
      '  ( select'
      '      pr.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = eo.PRIORITY_CODE)'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
      ''
      '  ( select'
      '      d.NAME'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = eo.ORDER_DEPT_CODE)'
      '  ) as ORDER_DEPT_NAME,'
      ''
      '  p.PRODUCT_CODE,'
      '  p.PARENT_CODE as PRODUCT_PARENT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      ''
      
        '  Nvl2(eo.THOROUGHLY_ENG_PRODUCT_CODE, 1, 0) as HAS_THOROUGHLY_E' +
        'NG_PRODUCT,'
      ''
      '  Decode('
      '    p.IS_COMMON,'
      '    1, 2,'
      
        '    Nvl2(cp.PRODUCT_CODE + dp.COMMON_PRODUCT_CODE, 3 + p.IS_THOR' +
        'OUGHLY_ENGINEERED, 1)'
      '  ) as COMMON_STATUS_CODE,'
      ''
      '  ( ( select'
      '        Decode(Count(*), 0, To_Char(null), (Count(*) || '#39';'#39'))'
      '      from'
      '        DEFINITE_PRODUCTS dp2'
      '      start with'
      
        '        (dp2.PRODUCT_CODE = Nvl2(cp.PRODUCT_CODE, dp.COMMON_PROD' +
        'UCT_CODE, p.PRODUCT_CODE))'
      '      connect by'
      '        (dp2.PRODUCT_CODE = prior dp2.COMMON_PRODUCT_CODE)'
      '    ) ||'
      '    ( select'
      '        Max(level) - 1'
      '      from'
      '        DEFINITE_PRODUCTS dp2'
      '      start with'
      
        '        (dp2.PRODUCT_CODE = Nvl2(cp.PRODUCT_CODE, dp.COMMON_PROD' +
        'UCT_CODE, p.PRODUCT_CODE))'
      '      connect by'
      '        (dp2.COMMON_PRODUCT_CODE = prior dp2.PRODUCT_CODE)'
      '    )'
      '  ) as COMMON_PRODUCT_LEVELS,'
      ''
      '  ( ( select'
      '        Count(*)'
      '      from'
      '        DEFINITE_PRODUCTS dp2'
      '      where'
      
        '        (dp2.COMMON_PRODUCT_CODE = Coalesce(dp.COMMON_PRODUCT_CO' +
        'DE, p.PRODUCT_CODE))'
      '    ) || '#39'/'#39' ||'
      '    ( select'
      '        Count(*)'
      '      from'
      '        PRODUCTS p2'
      '      where'
      '        (p2.PARENT_CODE = p.PARENT_CODE) and'
      ''
      '        exists('
      '          select'
      '            1'
      '          from'
      '            DEFINITE_PRODUCTS dp2'
      '          where'
      '            (dp2.PRODUCT_CODE = p2.PRODUCT_CODE) and'
      '            (dp2.COMMON_PRODUCT_CODE is not null)'
      '        )'
      '    )'
      '  ) as JOINED_SIBLINGS,'
      ''
      '  eo.ENGINEERING_PLAN_END_DATE,'
      
        '  (eo.ENGINEERING_PLAN_END_DATE - Coalesce(eo.CLOSE_DATE, Contex' +
        'tDate)) as ENGINEERING_FINAL_DATE_DIFF,'
      ''
      
        '  %INC_DATE_BY_WORKDAYS[(eo.ENGINEERING_PLAN_END_DATE + 1)~(-eo.' +
        'ENGINEERING_PLAN_WORKDAYS)] as ENGINEERING_PLAN_BEGIN_DATE,'
      
        '  (%INC_DATE_BY_WORKDAYS[(eo.ENGINEERING_PLAN_END_DATE + 1)~(-eo' +
        '.ENGINEERING_PLAN_WORKDAYS)] - Coalesce(eo.ACTIVATE_DATE, Contex' +
        'tDate)) as ENGINEERING_START_DATE_DIFF,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = eo.ENGINEERING_DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as ENGINEERING_DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      e.ABBREV'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = eo.ENGINEERING_EMPLOYEE_CODE)'
      '  ) as ENGINEERING_EMPLOYEE_ABBREV,'
      '  '
      '  eo.ENGINEERING_PLAN_WORKDAYS,'
      ''
      '  %COUNT_WORKDAYS['
      '    eo.ACTIVATE_DATE~'
      '    Coalesce(eo.CLOSE_DATE, ContextDate)'
      '  ] as ENGINEERING_REAL_WORKDAYS,'
      ''
      
        '  To_Number(null) as ENGINEERING_WORKDAYS_DIFF,   -- smiata se v' +
        ' servera'
      
        '  To_Number(null) as ENGINEERING_WORKDAYS_DIFF_PCT,   -- smiata ' +
        'se v servera'
      ''
      '  eo.CREATE_DATE,'
      '  eo.CREATE_TIME,'
      '  ( select'
      '      e.ABBREV'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = eo.CREATE_EMPLOYEE_CODE)'
      '  ) as CREATE_EMPLOYEE_ABBREV,'
      ''
      '  eo.CHANGE_DATE,'
      '  eo.CHANGE_TIME,'
      '  ( select'
      '      e.ABBREV'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = eo.CHANGE_EMPLOYEE_CODE)'
      '  ) as CHANGE_EMPLOYEE_ABBREV,'
      ''
      '  eo.ACTIVATE_DATE,'
      '  eo.ACTIVATE_TIME,'
      '  ( select'
      '      e.ABBREV'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = eo.ACTIVATE_EMPLOYEE_CODE)'
      '  ) as ACTIVATE_EMPLOYEE_ABBREV,'
      ''
      '  eo.CLOSE_DATE,'
      '  eo.CLOSE_TIME,'
      '  ( select'
      '      e.ABBREV'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = eo.CLOSE_EMPLOYEE_CODE)'
      '  ) as CLOSE_EMPLOYEE_ABBREV,'
      ''
      '  eo.ANNUL_DATE,'
      '  eo.ANNUL_TIME,'
      '  ( select'
      '      e.ABBREV'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = eo.ANNUL_EMPLOYEE_CODE)'
      '  ) as ANNUL_EMPLOYEE_ABBREV,'
      ''
      
        '  Nvl2(eo.PARENT_ENGINEERING_ORDER_CODE, 1, 0) as HAS_PARENT_ENG' +
        'INEERING_ORDER,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      ENGINEERING_ORDERS eo2'
      '    where'
      
        '      (eo2.PARENT_ENGINEERING_ORDER_CODE = eo.ENGINEERING_ORDER_' +
        'CODE)'
      '  ) as HAS_CHILDREN,'
      ''
      '  p.PARTNER_PRODUCT_NAMES,'
      ''
      '  eo.PARENT_ENGINEERING_ORDER_CODE,'
      '  eo.NOTES'
      ''
      'from'
      '  %EO_TABLE_OR_TREE eo,'
      '  PRODUCTS p,'
      '  DEFINITE_PRODUCTS dp,'
      '  CONCRETE_PRODUCTS cp'
      ''
      'where'
      
        '  -- za da byde spomenato eo_tree. inache kogato e ENGINEERING_O' +
        'RDERS wmesto eo_tree rewe'
      '  ( (1 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          eo_tree'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (eo.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (p.PRODUCT_CODE = dp.PRODUCT_CODE(+)) and'
      '  (p.PRODUCT_CODE = cp.PRODUCT_CODE(+)) and'
      ''
      '  ( (%GET_ENGINEERING_ORDERS_TREE = 1) or'
      ''
      '    ( ( case'
      '          when (eo.ANNUL_EMPLOYEE_CODE is not null) then'
      '            8'
      '          when (eo.CLOSE_EMPLOYEE_CODE is not null) then'
      '            7'
      '          when (eo.ACTIVATE_EMPLOYEE_CODE is not null) then'
      
        '            Decode(%SPEC_STATE[eo.PRODUCT_CODE~null~null~null~nu' +
        'll], 5, 6, 5)'
      '          when eo.ENGINEERING_DEPT_CODE is null then'
      '            1'
      '          when eo.ENGINEERING_EMPLOYEE_CODE is null then'
      '            2'
      '        else'
      '          3 + Decode('
      '                Sign('
      '                  ( %INC_DATE_BY_WORKDAYS['
      '                      (eo.ENGINEERING_PLAN_END_DATE + 1)~'
      
        '                      (-(eo.ENGINEERING_PLAN_WORKDAYS + (select ' +
        'co.EO_ACTIVATING_WORKDAYS from COMMON_OPTIONS co where (co.CODE ' +
        '= 1))))'
      '                    ] - ContextDate'
      '                  )'
      '                ),'
      '                1, 0,'
      '                1'
      '              )'
      '        end between :MIN_EO_STATE_CODE and :MAX_EO_STATE_CODE'
      '      ) and'
      ''
      '      ( (:ENGINEERING_ORDER_BRANCH_CODE is null ) or'
      
        '        (:ENGINEERING_ORDER_BRANCH_CODE = eo.ENGINEERING_ORDER_B' +
        'RANCH_CODE)'
      '      ) and'
      ''
      '      ( (:ENGINEERING_ORDER_NO is null) or'
      '        (:ENGINEERING_ORDER_NO = eo.ENGINEERING_ORDER_NO)'
      '      ) and'
      ''
      '      ( (:ENGINEERING_ORDER_TYPE_CODE is null) or'
      
        '        (:ENGINEERING_ORDER_TYPE_CODE = eo.ENGINEERING_ORDER_TYP' +
        'E_CODE)'
      '      ) and'
      ''
      '      ( (:BEGIN_PRIORITY_CODE is null) or'
      '        ( ( select'
      '              pr.PRIORITY_NO'
      '            from'
      '              PRIORITIES pr'
      '            where'
      '              (pr.PRIORITY_CODE = eo.PRIORITY_CODE)'
      '          ) >='
      '          ( select'
      '              pr.PRIORITY_NO'
      '            from'
      '              PRIORITIES pr'
      '            where'
      '              (pr.PRIORITY_CODE = :BEGIN_PRIORITY_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:BEGIN_PRIORITY_CODE is null) or'
      '        ( ( select'
      '              pr.PRIORITY_NO'
      '            from'
      '              PRIORITIES pr'
      '            where'
      '              (pr.PRIORITY_CODE = eo.PRIORITY_CODE)'
      '          ) <='
      '          ( select'
      '              pr.PRIORITY_NO'
      '            from'
      '              PRIORITIES pr'
      '            where'
      '              (pr.PRIORITY_CODE = :END_PRIORITY_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:ENG_PLAN_BEGIN_DATE_BEGIN is null) or'
      
        '        (%INC_DATE_BY_WORKDAYS[(eo.ENGINEERING_PLAN_END_DATE + 1' +
        ')~(-eo.ENGINEERING_PLAN_WORKDAYS)] >= :ENG_PLAN_BEGIN_DATE_BEGIN' +
        ') ) and'
      ''
      '      ( (:ENG_PLAN_BEGIN_DATE_END is null) or'
      
        '        (%INC_DATE_BY_WORKDAYS[(eo.ENGINEERING_PLAN_END_DATE + 1' +
        ')~(-eo.ENGINEERING_PLAN_WORKDAYS)] <= :ENG_PLAN_BEGIN_DATE_END) ' +
        ') and'
      ''
      '      ( (:BEGIN_ENG_START_DATE_DIFF is null) or'
      
        '        ( (%INC_DATE_BY_WORKDAYS[(eo.ENGINEERING_PLAN_END_DATE +' +
        ' 1)~(-eo.ENGINEERING_PLAN_WORKDAYS)] - Coalesce(eo.ACTIVATE_DATE' +
        ', ContextDate) ) >= :BEGIN_ENG_START_DATE_DIFF )'
      '      ) and'
      ''
      '      ( (:END_ENG_START_DATE_DIFF is null) or'
      
        '        ( (%INC_DATE_BY_WORKDAYS[(eo.ENGINEERING_PLAN_END_DATE +' +
        ' 1)~(-eo.ENGINEERING_PLAN_WORKDAYS)] - Coalesce(eo.ACTIVATE_DATE' +
        ', ContextDate)) <= :END_ENG_START_DATE_DIFF )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_DEPTS = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_DEPTS tfd'
      '            where'
      '              (tfd.DEPT_CODE = eo.ORDER_DEPT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_DEPTS_2 = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_DEPTS_2 tfd2'
      '            where'
      '              (tfd2.DEPT_CODE = eo.ENGINEERING_DEPT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:ENGINEERING_EMPLOYEE_CODE is null) or'
      
        '        (eo.ENGINEERING_EMPLOYEE_CODE = :ENGINEERING_EMPLOYEE_CO' +
        'DE) ) and'
      ''
      '      ( (:BEGIN_ENG_REAL_WORKDAYS is null) or'
      '        ( %COUNT_WORKDAYS['
      '            eo.ACTIVATE_DATE~'
      '            Coalesce(eo.CLOSE_DATE, ContextDate)'
      '          ] >= :BEGIN_ENG_REAL_WORKDAYS'
      '        )'
      '      ) and'
      ''
      '      ( (:END_ENG_REAL_WORKDAYS is null) or'
      '        ( %COUNT_WORKDAYS['
      '            eo.ACTIVATE_DATE~'
      '            Coalesce(eo.CLOSE_DATE, ContextDate)'
      '          ] <= :END_ENG_REAL_WORKDAYS'
      '        )'
      '      ) and'
      ''
      '      -- filtera po otklonenie se pravi v servera'
      ''
      '      ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_PRODUCTS tfp'
      '            where'
      '              (tfp.PRODUCT_CODE = eo.PRODUCT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( ( (:MIN_SPEC_STATE_CODE = 1) and'
      '          (:MAX_SPEC_STATE_CODE = 5)'
      '        ) or'
      
        '        (%SPEC_STATE[eo.PRODUCT_CODE~null~null~null~null] betwee' +
        'n :MIN_SPEC_STATE_CODE and :MAX_SPEC_STATE_CODE)'
      '      ) and'
      ''
      '      ( (:ENG_PLAN_END_DATE_BEGIN is null) or'
      
        '        (eo.ENGINEERING_PLAN_END_DATE >= :ENG_PLAN_END_DATE_BEGI' +
        'N) ) and'
      ''
      '      ( (:ENG_PLAN_END_DATE_END is null) or'
      
        '        (eo.ENGINEERING_PLAN_END_DATE <= :ENG_PLAN_END_DATE_END)' +
        ' ) and'
      ''
      '      ( (:CLOSE_DATE_BEGIN is null) or'
      '        (eo.CLOSE_DATE >= :CLOSE_DATE_BEGIN) ) and'
      ''
      '      ( (:CLOSE_DATE_END is null) or'
      '        (eo.CLOSE_DATE <= :CLOSE_DATE_END) ) and'
      ''
      '      ( (:ACTIVATE_DATE_BEGIN is null) or'
      '        (eo.ACTIVATE_DATE >= :ACTIVATE_DATE_BEGIN) ) and'
      ''
      '      ( (:ACTIVATE_DATE_END is null) or'
      '        (eo.ACTIVATE_DATE <= :ACTIVATE_DATE_END) ) and'
      ''
      '      ( (:THOROUGHLY_ENG_PRODUCT_CODE is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              PRODUCT_RELATIONS pr'
      '            where'
      
        '              (pr.ANCESTOR_PRODUCT_CODE = :THOROUGHLY_ENG_PRODUC' +
        'T_CODE) and'
      
        '              (pr.DESCENDANT_PRODUCT_CODE = eo.THOROUGHLY_ENG_PR' +
        'ODUCT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:COMMON_PRODUCT_CODE is null) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              DEFINITE_PRODUCTS dp2'
      '            where'
      '              (dp2.PRODUCT_CODE = eo.PRODUCT_CODE)'
      '            start with'
      '              (dp2.PRODUCT_CODE = :COMMON_PRODUCT_CODE)'
      '            connect by'
      '              (dp2.COMMON_PRODUCT_CODE = prior dp2.PRODUCT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:HAS_PARENT_ENGINEERING_ORDER = 1) or'
      ''
      '        ( (:HAS_PARENT_ENGINEERING_ORDER = 2) and'
      '          (eo.PARENT_ENGINEERING_ORDER_CODE is null)'
      '        ) or'
      ''
      '        ( (:HAS_PARENT_ENGINEERING_ORDER = 3) and'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              ENGINEERING_ORDERS peo'
      '            where'
      
        '              (peo.ENGINEERING_ORDER_CODE = eo.PARENT_ENGINEERIN' +
        'G_ORDER_CODE) and'
      ''
      '              ( (:PARENT_ENG_ORDER_BRANCH_CODE is null) or'
      
        '                (peo.ENGINEERING_ORDER_BRANCH_CODE = :PARENT_ENG' +
        '_ORDER_BRANCH_CODE) ) and'
      ''
      '              ( (:PARENT_ENG_ORDER_NO is null) or'
      
        '                (peo.ENGINEERING_ORDER_NO = :PARENT_ENG_ORDER_NO' +
        ') )'
      '          )'
      '        )'
      '      )'
      '    )'
      '  )'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'GET_ENGINEERING_ORDERS_TREE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[eo]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'SPEC_STATE[eo.PRODUCT_CODE~null~null~null~null]'
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
        Name = 
          'INC_DATE_BY_WORKDAYS[(eo.ENGINEERING_PLAN_END_DATE + 1)~(-eo.ENG' +
          'INEERING_PLAN_WORKDAYS)]'
        ParamType = ptInput
        Value = 'ContextDate'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'    eo.ACTIVATE_DATE~'#13#10'    Coalesce(eo.CLOSE_DA' +
          'TE, ContextDate)'#13#10'  ]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'EO_TABLE_OR_TREE'
        ParamType = ptInput
        Value = 'ENGINEERING_ORDERS'
      end
      item
        DataType = ftWideString
        Name = 
          'INC_DATE_BY_WORKDAYS['#13#10'                      (eo.ENGINEERING_PLA' +
          'N_END_DATE + 1)~'#13#10'                      (-(eo.ENGINEERING_PLAN_W' +
          'ORKDAYS + (select co.EO_ACTIVATING_WORKDAYS from COMMON_OPTIONS ' +
          'co where (co.CODE = 1))))'#13#10'                    ]'
        ParamType = ptInput
        Value = 'ContextDate'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'            eo.ACTIVATE_DATE~'#13#10'            Coal' +
          'esce(eo.CLOSE_DATE, ContextDate)'#13#10'          ]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'BEGIN_ENG_WORKDAYS_DIFF_PCT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_ENG_WORKDAYS_DIFF_PCT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_ORDER_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_ENGINEERING_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_ENG_FINAL_DATE_DIFF'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'END_ENG_FINAL_DATE_DIFF'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'GET_ENGINEERING_ORDERS_TREE'
        ParamType = ptUnknown
        Value = '0'
      end>
    Left = 376
    Top = 224
    object qryEngineeringOrdersENGINEERING_ORDER_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_CODE'
    end
    object qryEngineeringOrdersDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryEngineeringOrdersDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryEngineeringOrdersHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object qryEngineeringOrdersSPEC_STATE_CODE: TAbmesFloatField
      FieldName = 'SPEC_STATE_CODE'
    end
    object qryEngineeringOrdersEO_STATE_CODE: TAbmesFloatField
      FieldName = 'EO_STATE_CODE'
    end
    object qryEngineeringOrdersENGINEERING_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'ENGINEERING_ORDER_IDENTIFIER'
      Size = 93
    end
    object qryEngineeringOrdersPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryEngineeringOrdersPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 93
    end
    object qryEngineeringOrdersPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryEngineeringOrdersPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qryEngineeringOrdersORDER_DEPT_NAME: TAbmesWideStringField
      FieldName = 'ORDER_DEPT_NAME'
      Size = 100
    end
    object qryEngineeringOrdersPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryEngineeringOrdersPRODUCT_PARENT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PARENT_CODE'
    end
    object qryEngineeringOrdersPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryEngineeringOrdersPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object qryEngineeringOrdersHAS_THOROUGHLY_ENG_PRODUCT: TAbmesFloatField
      FieldName = 'HAS_THOROUGHLY_ENG_PRODUCT'
    end
    object qryEngineeringOrdersCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
    end
    object qryEngineeringOrdersCOMMON_PRODUCT_LEVELS: TAbmesWideStringField
      FieldName = 'COMMON_PRODUCT_LEVELS'
      Size = 81
    end
    object qryEngineeringOrdersJOINED_SIBLINGS: TAbmesWideStringField
      FieldName = 'JOINED_SIBLINGS'
      Size = 81
    end
    object qryEngineeringOrdersENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_PLAN_END_DATE'
    end
    object qryEngineeringOrdersENGINEERING_FINAL_DATE_DIFF: TAbmesFloatField
      FieldName = 'ENGINEERING_FINAL_DATE_DIFF'
    end
    object qryEngineeringOrdersENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_PLAN_BEGIN_DATE'
    end
    object qryEngineeringOrdersENGINEERING_START_DATE_DIFF: TAbmesFloatField
      FieldName = 'ENGINEERING_START_DATE_DIFF'
    end
    object qryEngineeringOrdersENGINEERING_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'ENGINEERING_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryEngineeringOrdersENGINEERING_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'ENGINEERING_EMPLOYEE_ABBREV'
      Size = 5
    end
    object qryEngineeringOrdersENGINEERING_PLAN_WORKDAYS: TAbmesFloatField
      FieldName = 'ENGINEERING_PLAN_WORKDAYS'
    end
    object qryEngineeringOrdersENGINEERING_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'ENGINEERING_REAL_WORKDAYS'
    end
    object qryEngineeringOrdersENGINEERING_WORKDAYS_DIFF: TAbmesFloatField
      FieldName = 'ENGINEERING_WORKDAYS_DIFF'
    end
    object qryEngineeringOrdersENGINEERING_WORKDAYS_DIFF_PCT: TAbmesFloatField
      FieldName = 'ENGINEERING_WORKDAYS_DIFF_PCT'
    end
    object qryEngineeringOrdersCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryEngineeringOrdersCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryEngineeringOrdersCREATE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_ABBREV'
      Size = 5
    end
    object qryEngineeringOrdersCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryEngineeringOrdersCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryEngineeringOrdersCHANGE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'CHANGE_EMPLOYEE_ABBREV'
      Size = 5
    end
    object qryEngineeringOrdersACTIVATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'ACTIVATE_DATE'
    end
    object qryEngineeringOrdersACTIVATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'ACTIVATE_TIME'
    end
    object qryEngineeringOrdersACTIVATE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'ACTIVATE_EMPLOYEE_ABBREV'
      Size = 5
    end
    object qryEngineeringOrdersCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryEngineeringOrdersCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryEngineeringOrdersCLOSE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'CLOSE_EMPLOYEE_ABBREV'
      Size = 5
    end
    object qryEngineeringOrdersANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryEngineeringOrdersANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryEngineeringOrdersANNUL_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'ANNUL_EMPLOYEE_ABBREV'
      Size = 5
    end
    object qryEngineeringOrdersHAS_PARENT_ENGINEERING_ORDER: TAbmesFloatField
      FieldName = 'HAS_PARENT_ENGINEERING_ORDER'
    end
    object qryEngineeringOrdersHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
      ProviderFlags = []
    end
    object qryEngineeringOrdersPARTNER_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PARTNER_PRODUCT_NAMES'
      Size = 250
    end
    object qryEngineeringOrdersPARENT_ENGINEERING_ORDER_CODE: TAbmesFloatField
      FieldName = 'PARENT_ENGINEERING_ORDER_CODE'
    end
    object qryEngineeringOrdersNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object qryGetEngineeringOrderCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ENGINEERING_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ENGINEERING_ORDER_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eo.ENGINEERING_ORDER_CODE'
      ''
      'from'
      '  ENGINEERING_ORDERS eo'
      ''
      'where'
      
        '  (eo.ENGINEERING_ORDER_BRANCH_CODE = :ENGINEERING_ORDER_BRANCH_' +
        'CODE) and'
      '  (eo.ENGINEERING_ORDER_NO = :ENGINEERING_ORDER_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 216
    Top = 176
    object qryGetEngineeringOrderCodeENGINEERING_ORDER_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_CODE'
    end
  end
end
