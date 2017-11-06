inherited dmExceptEvents: TdmExceptEvents
  OldCreateOrder = False
  Height = 837
  Width = 969
  object qryExceptEventTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  eet.EXCEPT_EVENT_TYPE_CODE,'
      '  eet.PARENT_EXCEPT_EVENT_TYPE_CODE,'
      '  eet.EXCEPT_EVENT_TYPE_LOCAL_NO,'
      '  eet.EXCEPT_EVENT_TYPE_NAME,'
      '  eet.EXCEPT_EVENT_TYPE_SHORT_NAME,'
      '  eet.IS_GROUP,'
      
        '  Cast(%EE_TYPE_FULL_NO[eet.EXCEPT_EVENT_TYPE_CODE] as VarChar2(' +
        '100 char)) as EE_TYPE_FULL_NO,'
      
        '  Cast(%EE_TYPE_FORMATTED_FULL_NO[eet.EXCEPT_EVENT_TYPE_CODE] as' +
        ' VarChar2(100 char)) as EE_TYPE_FORMATTED_FULL_NO,'
      '  eet.DOC_BRANCH_CODE,'
      '  eet.DOC_CODE,'
      '  %HAS_DOC_ITEMS[eet] as HAS_DOC_ITEMS'
      ''
      'from'
      '  EXCEPT_EVENT_TYPES eet'
      ''
      'order by'
      '  EE_TYPE_FORMATTED_FULL_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EE_TYPE_FULL_NO[eet.EXCEPT_EVENT_TYPE_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'EE_TYPE_FORMATTED_FULL_NO[eet.EXCEPT_EVENT_TYPE_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[eet]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EXCEPT_EVENT_TYPES_FOR_EDIT'
    Left = 64
    Top = 776
    object qryExceptEventTypesEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryExceptEventTypesPARENT_EXCEPT_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'PARENT_EXCEPT_EVENT_TYPE_CODE'
    end
    object qryExceptEventTypesEXCEPT_EVENT_TYPE_LOCAL_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TYPE_LOCAL_NO'
      Required = True
    end
    object qryExceptEventTypesEXCEPT_EVENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_TYPE_NAME'
      Required = True
      Size = 100
    end
    object qryExceptEventTypesEXCEPT_EVENT_TYPE_SHORT_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_TYPE_SHORT_NAME'
      Required = True
      Size = 100
    end
    object qryExceptEventTypesIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
    end
    object qryExceptEventTypesEE_TYPE_FULL_NO: TAbmesWideStringField
      FieldName = 'EE_TYPE_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryExceptEventTypesEE_TYPE_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'EE_TYPE_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryExceptEventTypesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryExceptEventTypesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryExceptEventTypesHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
  end
  object prvExceptEventTypes: TDataSetProvider
    DataSet = qryExceptEventTypes
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 728
  end
  object qryGetNewExceptEventTypeCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_EXCEPT_EVENT_TYPES.NextVal as NEW_EXCEPT_EVENT_TYPE_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 352
    Top = 728
    object qryGetNewExceptEventTypeCodeNEW_EXCEPT_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'NEW_EXCEPT_EVENT_TYPE_CODE'
    end
  end
  object qryGetNextExceptEventTypeNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARENT_EXCEPT_EVENT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(eet.EXCEPT_EVENT_TYPE_LOCAL_NO), 0) + 1) as NEXT' +
        '_EXCEPT_EVENT_TYPE_NO'
      'from'
      '  EXCEPT_EVENT_TYPES eet'
      'where'
      
        '  (eet.PARENT_EXCEPT_EVENT_TYPE_CODE = :PARENT_EXCEPT_EVENT_TYPE' +
        '_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 352
    Top = 776
    object qryGetNextExceptEventTypeNoNEXT_EXCEPT_EVENT_TYPE_NO: TAbmesFloatField
      FieldName = 'NEXT_EXCEPT_EVENT_TYPE_NO'
    end
  end
  object qryExceptEvents: TAbmesSQLQuery
    BeforeOpen = qryExceptEventsBeforeOpen
    AfterClose = qryExceptEventsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_GEN_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_GEN_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_GENERATOR'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_GENERATOR'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_GENERATOR'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_GEN_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_OM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_OM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_END_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_GEN_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'S_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'S_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'S_REQUEST_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'S_REQUEST_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'S_REQUEST_LINE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'S_REQUEST_LINE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_GEN_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'D_DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'D_DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'D_DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'D_DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'D_DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'D_DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OTP_CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OTP_CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OTP_CREATE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OTP_CREATE_END_DATE'
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
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_IS_CAUSE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_IS_CAUSE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CAUSED_EXCEPT_EVENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CAUSED_EXCEPT_EVENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_IS_CAUSE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_IS_CAUSED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_IS_CAUSED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CAUSE_EXCEPT_EVENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CAUSE_EXCEPT_EVENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_IS_CAUSED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_EXCEPT_EVENT_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_EXCEPT_EVENT_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_EXCEPT_EVENT_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_EXCEPT_EVENT_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_NO'
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
        Name = 'EXCEPT_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
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
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETECT_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETECT_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETECT_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETECT_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CTRL_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CTRL_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CTRL_MAIN_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CTRL_MAIN_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_NORMALIZED_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_NORMALIZED_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_CONFIRM_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_CONFIRM_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_CONFIRM_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_NORMALIZED_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_DMG_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_DMG_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_DMG_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_DMG_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CTRL_DEPTS_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FILTERED_BY_DAMAGES'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DMG_PROCESS_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DMG_PROCESS_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DMG_PROCESS_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASKS_RESOLVED_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'TASKS_RESOLVED_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASKS_CONFIRM_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'TASKS_CONFIRM_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASKS_CONFIRM_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASKS_RESOLVED_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FILTERED_BY_TASKS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'MIN_TASK_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_TASK_STATE_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TASK_HAS_PROBLEMS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TASK_HAS_PROBLEMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TASK_HAS_PROBLEMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_DEPTS_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SINGLE_RESOLVABLE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SINGLE_RESOLVABLE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SINGLE_RESOLVABLE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ee.EXCEPT_EVENT_CODE,'
      '  %EXCEPT_EVENT_STATE[ee] as STATE_CODE,'
      '  ee.EXCEPT_EVENT_NO,'
      '  ee.CREATE_DATE,'
      '  ee.CREATE_TIME,'
      ''
      '  ee.EXCEPT_EVENT_LEVEL_CODE,'
      '  '
      '  ( select'
      '      eel.EXCEPT_EVENT_LEVEL_ABBREV'
      '    from'
      '      EXCEPT_EVENT_LEVELS eel'
      '    where'
      '      (eel.EXCEPT_EVENT_LEVEL_CODE = ee.EXCEPT_EVENT_LEVEL_CODE)'
      '  ) as EXCEPT_EVENT_LEVEL_ABBREV,'
      ''
      '  ( select'
      '      eet.EXCEPT_EVENT_TYPE_SHORT_NAME'
      '    from'
      '      EXCEPT_EVENT_TYPES eet'
      '    where'
      '      (eet.EXCEPT_EVENT_TYPE_CODE = ee.EXCEPT_EVENT_TYPE_CODE)'
      '  ) as EXCEPT_EVENT_TYPE_SHORT_NAME,'
      ''
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  %DEPT_IDENTIFIER[ee.DEPT_CODE] as DEPT_IDENTIFIER,'
      ''
      '  ee.DESCRIPTION,'
      '  ee.DOC_BRANCH_CODE,'
      '  ee.DOC_CODE,'
      '  %HAS_DOC_ITEMS[ee] as HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      pco.PRC_CONCRETE_OP_SHORT_NAME'
      '    from'
      '      PRC_CONCRETE_OPS pco'
      '    where'
      '      (pco.PRC_CONCRETE_OP_CODE = ee.PRC_CONCRETE_OP_CODE)'
      '  ) as PRC_CONCRETE_OP_SHORT_NAME,'
      ''
      
        '  %DEPT_IDENTIFIER[ee.DETECT_DEPT_CODE] as DETECT_DEPT_IDENTIFIE' +
        'R,'
      ''
      '  %DEPT_IDENTIFIER[ee.CTRL_DEPT_CODE] as CTRL_DEPT_IDENTIFIER,'
      
        '  %EMPLOYEE_ABBREV_NAME[ee.CTRL_MAIN_EMPLOYEE_CODE] as CTRL_MAIN' +
        '_EMPLOYEE,'
      ''
      '  ee.DMG_RESOLVE_PLAN_END_DATE,'
      '  ee.DMG_RESOLVE_DATE,'
      ''
      '  Nvl2(ee.DMG_RESOLVE_PLAN_BEGIN_DATE,'
      
        '    %COUNT_WORKDAYS[ee.DMG_RESOLVE_PLAN_BEGIN_DATE~ Coalesce(ee.' +
        'DMG_RESOLVE_DATE, ContextDate)],'
      '    null'
      '  ) as DMG_RESOLVE_REAL_WORKDAYS,'
      ''
      '  Nvl2(ee.DMG_RESOLVE_PLAN_END_DATE,'
      
        '    %COUNT_WORKDAYS[Coalesce(ee.DMG_RESOLVE_DATE, ContextDate)~ ee' +
        '.DMG_RESOLVE_PLAN_END_DATE],'
      '    null'
      '  ) as DMG_RESOLVE_WORKDAYS_LEFT,'
      ''
      '  ( select'
      '      Sum(eed.PRODUCT_QUANTITY * s.SINGLE_PRICE * cr.FIXING)'
      '    from'
      '      EXCEPT_EVENT_DAMAGES eed,'
      '      SALE_SHIPMENTS ss,'
      '      SALES s,'
      '      CURRENCY_RATES cr'
      '    where'
      
        '      (eed.SHIPMENT_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (eed.SHIPMENT_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE) and'
      ''
      
        '      (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '      (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      '      (cr.RATE_DATE ='
      '        Least('
      '          ContextDate,'
      '          Decode('
      
        '            %GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[s.SALE_DEAL_TY' +
        'PE_CODE],'
      '            %ot_LEASE, ss.RECEIVE_PLAN_DATE,'
      '            ss.SHIPMENT_PLAN_DATE'
      '          )'
      '        )'
      '      ) and'
      ''
      '      (eed.EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE)'
      '  ) as EXCEPT_EVENT_TOTAL_PRICE,'
      ''
      '  ee.RESOLVE_PLAN_END_DATE,'
      '  ee.RESOLVE_DATE,'
      ''
      '  Nvl2(ee.RESOLVE_PLAN_BEGIN_DATE,'
      
        '    %COUNT_WORKDAYS[ee.RESOLVE_PLAN_BEGIN_DATE~ Coalesce(ee.RESO' +
        'LVE_DATE, ContextDate)],'
      '    null'
      '  ) as RESOLVE_REAL_WORKDAYS,'
      ''
      '  Nvl2(ee.RESOLVE_PLAN_END_DATE,'
      
        '    %COUNT_WORKDAYS[Coalesce(ee.RESOLVE_DATE, ContextDate)~ ee.RES' +
        'OLVE_PLAN_END_DATE],'
      '    null'
      '  ) as RESOLVE_WORKDAYS_LEFT,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      EXCEPT_EVENT_CAUSES eec'
      '    where'
      '      (eec.EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE)'
      '  ) as HAS_CAUSES,'
      ''
      '  ( select'
      
        '      ListAgg(To_Char(ee2.EXCEPT_EVENT_NO) || '#39';'#39') within group ' +
        '(order by ee2.EXCEPT_EVENT_NO)'
      '    from'
      '      EXCEPT_EVENT_CAUSES eec,'
      '      EXCEPT_EVENTS ee2'
      '    where'
      '      (eec.EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE) and'
      '      (eec.CAUSE_EXCEPT_EVENT_CODE = ee2.EXCEPT_EVENT_CODE)'
      '  ) as EXCEPT_EVENT_CAUSES,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      EXCEPT_EVENT_CAUSES eec'
      '    where'
      '      (eec.CAUSE_EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE)'
      '  ) as HAS_CONSEQUENCES,'
      ''
      '  ( select'
      
        '      ListAgg(To_Char(ee2.EXCEPT_EVENT_NO) || '#39';'#39') within group ' +
        '(order by ee2.EXCEPT_EVENT_NO)'
      '    from'
      '      EXCEPT_EVENT_CAUSES eec,'
      '      EXCEPT_EVENTS ee2'
      '    where'
      '      (eec.CAUSE_EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE) and'
      '      (eec.EXCEPT_EVENT_CODE = ee2.EXCEPT_EVENT_CODE)'
      '  ) as EXCEPT_EVENT_CONSEQUENCES,'
      ''
      '  ( select'
      '      eegt.EXCEPT_EVENT_GEN_TYPE_ABBREV'
      '    from'
      '      EXCEPT_EVENT_GEN_TYPES eegt'
      '    where'
      
        '      (eegt.EXCEPT_EVENT_GEN_TYPE_CODE = ee.EXCEPT_EVENT_GEN_TYP' +
        'E_CODE)'
      '  ) as EXCEPT_EVENT_GEN_TYPE_ABBREV,'
      ''
      '  ee.ORG_TASK_PROPOSAL_CODE,'
      '  ee.OTP_BIND_EMPLOYEE_CODE,'
      '  ee.OTP_BIND_DATE,'
      '  ee.OTP_BIND_TIME,'
      '  otp.ORG_TASK_PROPOSAL_NO,'
      '  otp.DOC_BRANCH_CODE as OTP_DOC_BRANCH_CODE,'
      '  otp.DOC_CODE as OTP_DOC_CODE,'
      '  %HAS_DOC_ITEMS[otp] as OTP_HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      d.DOC_BRANCH_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = ee.DEPT_CODE)'
      '  ) as DEPT_DOC_BRANCH_CODE,'
      ''
      '  ( select'
      '      d.DOC_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = ee.DEPT_CODE)'
      '  ) as DEPT_DOC_CODE,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[d]'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = ee.DEPT_CODE)'
      '  ) as DEPT_HAS_DOC_ITEMS,'
      ''
      
        '  Cast(%DEPT_NAME[ee.DEPT_CODE] as Varchar2(100 char)) as DEPT_N' +
        'AME,'
      
        '  Cast(%DEPT_NAME[ee.DETECT_DEPT_CODE] as Varchar2(100 char)) as' +
        ' DETECT_DEPT_NAME,'
      
        '  Cast(%DEPT_NAME[ee.CTRL_DEPT_CODE] as Varchar2(100 char)) as C' +
        'TRL_DEPT_NAME,'
      ''
      '  Cast('
      '    Coalesce('
      '      ( select'
      
        '         (d.CUSTOM_CODE || '#39'/'#39' || dcd.DCD_CODE || '#39'/'#39' || dp.DELI' +
        'VERY_PROJECT_CODE || '#39'/'#39' || st.STREAM_TYPE_ABBREV)'
      '        from'
      '          DELIVERY_PROJECTS dp,'
      '          DEFICIT_COVER_DECISIONS dcd,'
      '          DEPTS d,'
      '          STREAM_TYPES st'
      '        where'
      
        '          (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_COD' +
        'E) and'
      '          (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      ''
      '          (d.DEPT_CODE = dcd.DCD_BRANCH_CODE) and'
      '          (st.STREAM_TYPE_CODE = dcd.STREAM_TYPE_CODE) and'
      ''
      
        '          (dp.DCD_OBJECT_BRANCH_CODE = ee.DCD_OBJECT_BRANCH_CODE' +
        ') and'
      '          (dp.DCD_OBJECT_CODE = ee.DCD_OBJECT_CODE) and'
      '          (dp.DELIVERY_PROJECT_CODE = ee.DELIVERY_PROJECT_CODE)'
      '      ),'
      '      ( select'
      
        '          d.CUSTOM_CODE || '#39'/'#39' || s.REQUEST_NO || '#39'/'#39' || s.REQUE' +
        'ST_LINE_NO'
      '        from'
      '          SALES s,'
      '          DEPTS d'
      '        where'
      '          (d.DEPT_CODE = s.REQUEST_BRANCH_CODE) and'
      
        '          (s.SALE_OBJECT_BRANCH_CODE = ee.SALE_OBJECT_BRANCH_COD' +
        'E) and'
      '          (s.SALE_OBJECT_CODE = ee.SALE_OBJECT_CODE)'
      '      ),'
      '      ( select'
      '          ( select'
      '              pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '            from'
      '              PRODUCTION_ORDER_TYPES pot'
      '            where'
      
        '              (pot.PRODUCTION_ORDER_TYPE_CODE = oms.PRODUCTION_O' +
        'RDER_TYPE_CODE)'
      '          ) ||'
      '          '#39'/'#39' ||'
      '          ( select'
      '              d2.CUSTOM_CODE'
      '            from'
      '              DEPTS d2'
      '            where'
      '              (d2.DEPT_CODE = oms.SALE_BRANCH_CODE)'
      '          ) ||'
      '          '#39'/'#39' ||'
      '          oms.SALE_NO ||'
      '          '#39'/'#39' ||'
      '          ( select'
      '              st.SALE_TYPE_ABBREV'
      '            from'
      '              SALE_TYPES st'
      '            where'
      '              (st.SALE_TYPE_CODE = oms.SALE_TYPE_CODE)'
      '          ) ||'
      '          '#39'/'#39' ||'
      '          mll.NO_AS_TEXT ||'
      '          '#39'/'#39' ||'
      '          mll.FORK_NO ||'
      '          '#39' ('#39' ||'
      '          ( select'
      '              (d2.CUSTOM_CODE || '#39'/'#39' || om.OM_NO)'
      '            from'
      '              DEPTS d2'
      '            where'
      '              (d2.DEPT_CODE = om.OM_BRANCH_CODE)'
      '          ) ||'
      '          '#39')'#39
      '        from'
      '          OPERATION_MOVEMENTS om,'
      '          MLMS_OPERATIONS mlmso,'
      '          ML_MODEL_STAGES mlms,'
      '          MATERIAL_LIST_LINES mll,'
      '          MATERIAL_LISTS ml,'
      '          SALES oms'
      '        where'
      
        '          (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) ' +
        'and'
      ''
      
        '          (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRAN' +
        'CH_CODE) and'
      '          (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      
        '          (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_C' +
        'ODE) and'
      '          (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '          (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE)' +
        ' and'
      '          (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '          (ml.BND_PROCESS_OBJECT_BRANCH_CODE = oms.SALE_OBJECT_B' +
        'RANCH_CODE) and'
      
        '          (ml.BND_PROCESS_OBJECT_CODE = oms.SALE_OBJECT_CODE) an' +
        'd'
      ''
      '          (om.OM_BRANCH_CODE = ee.OM_BRANCH_CODE) and'
      '          (om.OM_CODE = ee.OM_CODE)'
      '      )'
      '    ) as Varchar2(250 char)'
      '  ) as PROCESS_OBJECT_IDENTIFIER,'
      ''
      '  ee.PRODUCT_QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as PRODUCT_MEASURE_ABBREV,'
      ''
      
        '  %EMPLOYEE_ABBREV_NAME[ee.CREATE_EMPLOYEE_CODE] as CREATE_EMPLO' +
        'YEE_ABBREV_NAME,'
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      EMPLOYEES e,'
      '      COMPANIES c'
      '    where'
      '      (e.EMPLOYEE_CODE = ee.CREATE_EMPLOYEE_CODE) and'
      '      (e.COMPANY_CODE = c.COMPANY_CODE)'
      '  ) as CREATE_EMPLOYEE_NO,'
      ''
      
        '  %EMPLOYEE_ABBREV_NAME[ee.DETECT_EMPLOYEE_CODE] as DETECT_EMPLO' +
        'YEE_ABBREV_NAME,'
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      EMPLOYEES e,'
      '      COMPANIES c'
      '    where'
      '      (e.EMPLOYEE_CODE = ee.DETECT_EMPLOYEE_CODE) and'
      '      (e.COMPANY_CODE = c.COMPANY_CODE)'
      '  ) as DETECT_EMPLOYEE_NO,'
      ''
      
        '  %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[ee.PRODUCT_CODE ~ ee.CREATE' +
        '_DATE] as PRODUCT_PSD_SINGLE_PRICE_IN_BC,'
      
        '  (ee.PRODUCT_QUANTITY * %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[ee.P' +
        'RODUCT_CODE ~ ee.CREATE_DATE]) as PRODUCT_PSD_TOTAL_PRICE_IN_BC,'
      
        '  %EE_TYPE_FULL_NO[ee.EXCEPT_EVENT_TYPE_CODE] as EE_TYPE_FULL_NO' +
        ','
      ''
      '  ee.IS_SINGLE_RESOLVABLE,'
      ''
      
        '  Decode(ee.CTRL_ACTIVATE_EMPLOYEE_CODE, null, 0, 1) as IS_ACTIV' +
        'ATED,'
      '  Decode(ee.CLOSE_EMPLOYEE_CODE, null, 0, 1) as IS_CLOSED'
      ''
      'from'
      '  EXCEPT_EVENTS ee,'
      '  PRODUCTS p,'
      '  ORG_TASK_PROPOSALS otp'
      ''
      'where'
      '  (ee.PRODUCT_CODE = p.PRODUCT_CODE(+)) and'
      ''
      
        '  (ee.ORG_TASK_PROPOSAL_CODE = otp.ORG_TASK_PROPOSAL_CODE(+)) an' +
        'd'
      ''
      '  -- filter'
      ''
      '  ( (:EXCEPT_EVENT_GEN_TYPE_CODE is null) or'
      
        '    (ee.EXCEPT_EVENT_GEN_TYPE_CODE = :EXCEPT_EVENT_GEN_TYPE_CODE' +
        ')'
      '  ) and'
      ''
      '  ( (:OM_BRANCH_CODE is null) or'
      '    (ee.OM_BRANCH_CODE = :OM_BRANCH_CODE)'
      '  ) and'
      ''
      '  ( (:OM_CODE is null) or'
      '    (ee.OM_CODE = :OM_CODE)'
      '  ) and'
      ''
      '  ( (:SALE_OBJECT_BRANCH_CODE is null) or'
      '    (ee.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE)'
      '  ) and'
      ''
      '  ( (:SALE_OBJECT_CODE is null) or'
      '    (ee.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '  ) and'
      ''
      '  ( (:DCD_OBJECT_BRANCH_CODE is null) or'
      '    (ee.DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE)'
      '  ) and'
      ''
      '  ( (:DCD_OBJECT_CODE is null) or'
      '    (ee.DCD_OBJECT_CODE = :DCD_OBJECT_CODE)'
      '  ) and'
      ''
      '  ( (:DELIVERY_PROJECT_CODE is null) or'
      '    (ee.DELIVERY_PROJECT_CODE = :DELIVERY_PROJECT_CODE)'
      '  ) and'
      ''
      '  ( (:HAS_GENERATOR = 1) or  -- wsichki'
      ''
      '    ( (:HAS_GENERATOR = 2) and  -- bez obwyrzanost'
      '      (ee.OM_BRANCH_CODE is null) and'
      '      (ee.SALE_OBJECT_BRANCH_CODE is null) and'
      '      (ee.DCD_OBJECT_BRANCH_CODE is null)'
      '    ) or'
      ''
      '    ( (:HAS_GENERATOR = 3) and  -- s obwyrzanost'
      
        '      ( ( (:EXCEPT_EVENT_GEN_TYPE_CODE in (CommonConsts.eegtEnvi' +
        'ronment, CommonConsts.eegtProduction)) and'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                OPERATION_MOVEMENTS om,'
      '                MLMS_OPERATIONS mlmso,'
      '                ML_MODEL_STAGES mlms,'
      '                MATERIAL_LIST_LINES mll,'
      '                MATERIAL_LISTS ml,'
      '                SALES s,'
      '                SALE_GROUPS sg,'
      '                PRIORITIES pr'
      '              where'
      '                (om.OM_BRANCH_CODE = ee.OM_BRANCH_CODE) and'
      '                (om.OM_CODE = ee.OM_CODE) and'
      ''
      
        '                (mlmso.MLMSO_OBJECT_BRANCH_CODE = om.FROM_MLMSO_' +
        'OBJECT_BRANCH_CODE) and'
      
        '                (mlmso.MLMSO_OBJECT_CODE = om.FROM_MLMSO_OBJECT_' +
        'CODE) and'
      ''
      
        '                (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '                (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE)' +
        ' and'
      ''
      
        '                (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BR' +
        'ANCH_CODE) and'
      '                (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      ''
      
        '                (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH' +
        '_CODE) and'
      '                (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      ''
      
        '                (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '                (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE' +
        ') and'
      ''
      
        '                (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP' +
        '_OBJECT_BRANCH_CODE) and'
      
        '                (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT' +
        '_CODE) and'
      ''
      '                (pr.PRIORITY_CODE = sg.PRIORITY_CODE) and'
      ''
      '                ( (:OMG_OM_BRANCH_CODE is null) or'
      '                  (om.OM_BRANCH_CODE = :OMG_OM_BRANCH_CODE)'
      '                ) and'
      ''
      '                ( (:OMG_OM_NO is null) or'
      '                  (om.OM_NO = :OMG_OM_NO)'
      '                ) and'
      ''
      '                ( (:OMG_PRODUCTION_ORDER_TYPE_CODE is null) or'
      
        '                  (s.PRODUCTION_ORDER_TYPE_CODE = :OMG_PRODUCTIO' +
        'N_ORDER_TYPE_CODE)'
      '                ) and'
      ''
      '                ( (:OMG_SALE_BRANCH_CODE is null) or'
      '                  (s.SALE_BRANCH_CODE = :OMG_SALE_BRANCH_CODE)'
      '                ) and'
      ''
      '                ( (:OMG_SALE_NO is null) or'
      '                  (s.SALE_NO = :OMG_SALE_NO)'
      '                ) and'
      ''
      '                ( (:OMG_SALE_TYPE_CODE is null) or'
      '                  (s.SALE_TYPE_CODE = :OMG_SALE_TYPE_CODE)'
      '                ) and'
      ''
      '                ( pr.PRIORITY_NO'
      '                  between'
      '                    Coalesce('
      '                      ( select'
      '                          Max(p.PRIORITY_NO)'
      '                        from'
      '                          PRIORITIES p'
      '                        where'
      
        '                          (p.PRIORITY_CODE = :OMG_BEGIN_PRIORITY' +
        '_CODE)'
      '                      ), 0)'
      '                  and'
      '                    Coalesce('
      '                      ( select'
      '                          Max(p.PRIORITY_NO)'
      '                        from'
      '                          PRIORITIES p'
      '                        where'
      
        '                          (p.PRIORITY_CODE = :OMG_END_PRIORITY_C' +
        'ODE)'
      '                      ), 1000000)'
      '                )'
      '            )'
      '          )'
      '        ) or'
      
        '        ( (:EXCEPT_EVENT_GEN_TYPE_CODE = CommonConsts.eegtSales)' +
        ' and'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                SALES s'
      '              where'
      
        '                (s.SALE_OBJECT_BRANCH_CODE = ee.SALE_OBJECT_BRAN' +
        'CH_CODE) and'
      '                (s.SALE_OBJECT_CODE = ee.SALE_OBJECT_CODE) and'
      ''
      '                ( (:S_REQUEST_BRANCH_CODE is null) or'
      
        '                  (s.REQUEST_BRANCH_CODE = :S_REQUEST_BRANCH_COD' +
        'E)'
      '                ) and'
      ''
      '                ( (:S_REQUEST_NO is null) or'
      '                  (s.REQUEST_NO = :S_REQUEST_NO)'
      '                ) and'
      ''
      '                ( (:S_REQUEST_LINE_NO is null) or'
      '                  (s.REQUEST_LINE_NO = :S_REQUEST_LINE_NO)'
      '                )'
      '            )'
      '          )'
      '        ) or'
      
        '        ( (:EXCEPT_EVENT_GEN_TYPE_CODE = CommonConsts.eegtDelive' +
        'ries) and'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                DELIVERY_PROJECTS dp,'
      '                DEFICIT_COVER_DECISIONS dcd'
      '              where'
      
        '                (dp.DCD_OBJECT_BRANCH_CODE = ee.DCD_OBJECT_BRANC' +
        'H_CODE) and'
      '                (dp.DCD_OBJECT_CODE = ee.DCD_OBJECT_CODE) and'
      
        '                (dp.DELIVERY_PROJECT_CODE = ee.DELIVERY_PROJECT_' +
        'CODE) and'
      ''
      
        '                (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRAN' +
        'CH_CODE) and'
      '                (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      ''
      '                ( (:D_DCD_BRANCH_CODE is null) or'
      '                  (dcd.DCD_BRANCH_CODE = :D_DCD_BRANCH_CODE)'
      '                ) and'
      ''
      '                ( (:D_DCD_CODE is null) or'
      '                  (dcd.DCD_CODE = :D_DCD_CODE)'
      '                ) and'
      ''
      '                ( (:D_DELIVERY_PROJECT_CODE is null) or'
      
        '                  (dp.DELIVERY_PROJECT_CODE = :D_DELIVERY_PROJEC' +
        'T_CODE)'
      '                )'
      '            )'
      '          )'
      '        )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ORG_TASK_PROPOSAL_NO is null) or'
      '    (otp.ORG_TASK_PROPOSAL_NO = :ORG_TASK_PROPOSAL_NO)'
      '  ) and'
      ''
      '  ( (:OTP_CREATE_BEGIN_DATE is null) or'
      '    ( (otp.CREATE_DATE is not null) and'
      '      (otp.CREATE_DATE >= :OTP_CREATE_BEGIN_DATE)'
      '    )'
      '  ) and'
      ''
      '  ( (:OTP_CREATE_END_DATE is null) or'
      '    ( (otp.CREATE_DATE is not null) and'
      '      (otp.CREATE_DATE <= :OTP_CREATE_END_DATE)'
      '    )'
      '  ) and'
      ''
      '  ( (:CREATE_EMPLOYEE_CODE is null) or'
      '    (ee.CREATE_EMPLOYEE_CODE = :CREATE_EMPLOYEE_CODE)'
      '  ) and'
      ''
      '  ( (:EXCEPT_EVENT_IS_CAUSE = 1) or  -- wsichki'
      '    ( (:EXCEPT_EVENT_IS_CAUSE = 2) and  -- e prichina'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            EXCEPT_EVENT_CAUSES eec'
      '          where'
      
        '            (eec.CAUSE_EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE)' +
        ' and'
      '            ( (:CAUSED_EXCEPT_EVENT_NO is null) or'
      '              (eec.EXCEPT_EVENT_CODE ='
      '                ( select'
      '                    ee2.EXCEPT_EVENT_CODE'
      '                  from'
      '                    EXCEPT_EVENTS ee2'
      '                  where'
      
        '                    (ee2.EXCEPT_EVENT_NO = :CAUSED_EXCEPT_EVENT_' +
        'NO)'
      '                )'
      '              )'
      '            )'
      '        )'
      '      )'
      '    ) or'
      '    ( (:EXCEPT_EVENT_IS_CAUSE = 3) and  -- ne e prichina'
      '      (not exists'
      '        ( select'
      '            1'
      '          from'
      '            EXCEPT_EVENT_CAUSES eec'
      '          where'
      '            (eec.CAUSE_EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE)'
      '        )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:EXCEPT_EVENT_IS_CAUSED = 1) or  -- wsichki'
      '    ( (:EXCEPT_EVENT_IS_CAUSED = 2) and  -- e sledstwie'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            EXCEPT_EVENT_CAUSES eec'
      '          where'
      '            (eec.EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE) and'
      '            ( (:CAUSE_EXCEPT_EVENT_NO is null) or'
      '              (eec.CAUSE_EXCEPT_EVENT_CODE ='
      '                ( select'
      '                    ee2.EXCEPT_EVENT_CODE'
      '                  from'
      '                    EXCEPT_EVENTS ee2'
      '                  where'
      
        '                    (ee2.EXCEPT_EVENT_NO = :CAUSE_EXCEPT_EVENT_N' +
        'O)'
      '                )'
      '              )'
      '            )'
      '        )'
      '      )'
      '    ) or'
      '    ( (:EXCEPT_EVENT_IS_CAUSED = 3) and  -- ne e sledswie'
      '      (not exists'
      '        ( select'
      '            1'
      '          from'
      '            EXCEPT_EVENT_CAUSES eec'
      '          where'
      '            (eec.EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE)'
      '        )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:MIN_EXCEPT_EVENT_LEVEL_CODE is null) or'
      '    (ee.EXCEPT_EVENT_LEVEL_CODE >= :MIN_EXCEPT_EVENT_LEVEL_CODE)'
      '  ) and'
      ''
      '  ( (:MAX_EXCEPT_EVENT_LEVEL_CODE is null) or'
      '    (ee.EXCEPT_EVENT_LEVEL_CODE <= :MAX_EXCEPT_EVENT_LEVEL_CODE)'
      '  ) and'
      ''
      
        '  (%EXCEPT_EVENT_STATE[ee] between :MIN_STATE_CODE and :MAX_STAT' +
        'E_CODE) and'
      ''
      '  ( (:EXCEPT_EVENT_NO is null) or'
      '    (ee.EXCEPT_EVENT_NO = :EXCEPT_EVENT_NO)'
      '  ) and'
      ''
      '  ( (:CREATE_BEGIN_DATE is null) or'
      '    (ee.CREATE_DATE >= :CREATE_BEGIN_DATE)'
      '  ) and'
      ''
      '  ( (:CREATE_END_DATE is null) or'
      '    (ee.CREATE_DATE <= :CREATE_END_DATE)'
      '  ) and'
      ''
      '  ( (:EXCEPT_EVENT_TYPE_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          EXCEPT_EVENT_TYPE_RELATIONS eetr'
      '        where'
      
        '          (eetr.DESC_EXCEPT_EVENT_TYPE_CODE = ee.EXCEPT_EVENT_TY' +
        'PE_CODE) and'
      
        '          (eetr.ANC_EXCEPT_EVENT_TYPE_CODE = :EXCEPT_EVENT_TYPE_' +
        'CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:EXCEPT_EVENT_LEVEL_CODE is null) or'
      '    (ee.EXCEPT_EVENT_LEVEL_CODE = :EXCEPT_EVENT_LEVEL_CODE)'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = ee.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:DEPT_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          DEPT_RELATIONS dr'
      '        where'
      '          (dr.DESCENDANT_DEPT_CODE = ee.DEPT_CODE) and'
      '          (dr.ANCESTOR_DEPT_CODE = :DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:PRC_CONCRETE_OP_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          PRC_CONCRETE_OP_RELATIONS pcor'
      '        where'
      
        '          (pcor.DESC_PRC_CONCRETE_OP_CODE = ee.PRC_CONCRETE_OP_C' +
        'ODE) and'
      
        '          (pcor.ANC_PRC_CONCRETE_OP_CODE = :PRC_CONCRETE_OP_CODE' +
        ')'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:DETECT_DEPT_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          DEPT_RELATIONS dr'
      '        where'
      '          (dr.DESCENDANT_DEPT_CODE = ee.DETECT_DEPT_CODE) and'
      '          (dr.ANCESTOR_DEPT_CODE = :DETECT_DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:DETECT_EMPLOYEE_CODE is null) or'
      '    (ee.DETECT_EMPLOYEE_CODE = :DETECT_EMPLOYEE_CODE)'
      '  ) and'
      ''
      '  ( (:CTRL_DEPT_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          DEPT_RELATIONS dr'
      '        where'
      '          (dr.DESCENDANT_DEPT_CODE = ee.CTRL_DEPT_CODE) and'
      '          (dr.ANCESTOR_DEPT_CODE = :CTRL_DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:CTRL_MAIN_EMPLOYEE_CODE is null) or'
      '    (ee.CTRL_MAIN_EMPLOYEE_CODE = :CTRL_MAIN_EMPLOYEE_CODE)'
      '  ) and'
      ''
      '  ( (:DAMAGES_NORMALIZED_STATE = 1) or'
      ''
      '    ( (:DAMAGES_NORMALIZED_STATE = 2) and'
      '      (not exists %EXISTS_UNNORMALIZED_ATTACK[ee]) and'
      ''
      '      ( (:DAMAGES_CONFIRM_STATE = 1) or'
      ''
      '        ( (:DAMAGES_CONFIRM_STATE = 2) and'
      '          (ee.DMG_RESOLVE_EMPLOYEE_CODE is not null)'
      '        ) or'
      ''
      '        ( (:DAMAGES_CONFIRM_STATE = 3) and'
      '          (ee.DMG_RESOLVE_EMPLOYEE_CODE is null)'
      '        )'
      '      )'
      '    ) or'
      ''
      '    ( (:DAMAGES_NORMALIZED_STATE = 3) and'
      '      (exists %EXISTS_UNNORMALIZED_ATTACK[ee])'
      '    )'
      '  ) and'
      ''
      '  ( ( (:DMG_RESOLVE_PLAN_BEGIN_DATE is null) and'
      '      (:DMG_RESOLVE_PLAN_END_DATE is null)'
      '    ) or'
      '    ( (ee.DMG_RESOLVE_PLAN_BEGIN_DATE is not null) and'
      '      (ee.DMG_RESOLVE_PLAN_END_DATE is not null) and'
      ''
      
        '      (ee.DMG_RESOLVE_PLAN_BEGIN_DATE <= :DMG_RESOLVE_PLAN_END_D' +
        'ATE) and'
      
        '      (ee.DMG_RESOLVE_PLAN_END_DATE >= :DMG_RESOLVE_PLAN_BEGIN_D' +
        'ATE)'
      '    )'
      '  ) and'
      ''
      '  ( (:MIN_DMG_RESOLVE_WORKDAYS_LEFT is null) or'
      '    ( (ee.DMG_RESOLVE_PLAN_END_DATE is not null) and'
      
        '      (%COUNT_WORKDAYS[Coalesce(ee.DMG_RESOLVE_DATE, ContextDate)~' +
        ' ee.DMG_RESOLVE_PLAN_END_DATE] >= :MIN_DMG_RESOLVE_WORKDAYS_LEFT' +
        ')'
      '    )'
      '  ) and'
      ''
      '  ( (:MAX_DMG_RESOLVE_WORKDAYS_LEFT is null) or'
      '    ( (ee.DMG_RESOLVE_PLAN_END_DATE is not null) and'
      
        '      (%COUNT_WORKDAYS[Coalesce(ee.DMG_RESOLVE_DATE, ContextDate)~' +
        ' ee.DMG_RESOLVE_PLAN_END_DATE] <= :MAX_DMG_RESOLVE_WORKDAYS_LEFT' +
        ')'
      '    )'
      '  ) and'
      ''
      '  ( (:DMG_RESOLVE_BEGIN_DATE is null) or'
      '    (ee.DMG_RESOLVE_DATE >= :DMG_RESOLVE_BEGIN_DATE)'
      '  ) and'
      ''
      '  ( (:DMG_RESOLVE_END_DATE is null) or'
      '    (ee.DMG_RESOLVE_DATE <= :DMG_RESOLVE_END_DATE)'
      '  ) and'
      ''
      '  ( (:CTRL_DEPTS_EMPLOYEE_CODE is null) or'
      
        '    (%HAS_WORK_DEPT[:CTRL_DEPTS_EMPLOYEE_CODE~ ee.CTRL_DEPT_CODE' +
        '] = 1)'
      '  ) and'
      ''
      '  ( (:IS_FILTERED_BY_DAMAGES = 0) or'
      ''
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          EXCEPT_EVENT_DAMAGES eed'
      '        where'
      '          (eed.EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE) and'
      ''
      '          ( (:EE_DAMAGE_PROCESS_TYPE_CODE is null) or'
      ''
      
        '            ( (eed.EE_DAMAGE_PROCESS_TYPE_CODE = :EE_DAMAGE_PROC' +
        'ESS_TYPE_CODE) and'
      '              ('
      
        '                ( (:EE_DAMAGE_PROCESS_TYPE_CODE = %eedpt_MATERIA' +
        'L_LIST_LINE) and'
      '                  (exists'
      '                    ( select'
      '                        1'
      '                      from'
      '                        MATERIAL_LIST_LINES mll,'
      '                        MATERIAL_LISTS ml,'
      '                        SALES s'
      '                      where'
      
        '                        (mll.MLL_OBJECT_BRANCH_CODE = eed.MLL_OB' +
        'JECT_BRANCH_CODE) and'
      
        '                        (mll.MLL_OBJECT_CODE = eed.MLL_OBJECT_CO' +
        'DE) and'
      ''
      
        '                        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '                        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)' +
        ' and'
      ''
      
        '                        (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.S' +
        'ALE_OBJECT_BRANCH_CODE) and'
      
        '                        (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJ' +
        'ECT_CODE) and'
      ''
      '                        ( (:ML_OBJECT_BRANCH_CODE is null) or'
      
        '                          (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJEC' +
        'T_BRANCH_CODE)'
      '                        ) and'
      ''
      '                        ( (:ML_OBJECT_CODE is null) or'
      '                          (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      '                        ) and'
      ''
      
        '                        ( (:MLL_PRODUCTION_ORDER_TYPE_CODE is nu' +
        'll) or'
      
        '                          (s.PRODUCTION_ORDER_TYPE_CODE = :MLL_P' +
        'RODUCTION_ORDER_TYPE_CODE)'
      '                        ) and'
      ''
      '                        ( (:MLL_SALE_BRANCH_CODE is null) or'
      
        '                          (s.SALE_BRANCH_CODE = :MLL_SALE_BRANCH' +
        '_CODE)'
      '                        ) and'
      ''
      '                        ( (:MLL_SALE_NO is null) or'
      '                          (s.SALE_NO = :MLL_SALE_NO)'
      '                        ) and'
      ''
      '                        ( (:MLL_SALE_TYPE_CODE is null) or'
      
        '                          (s.SALE_TYPE_CODE = :MLL_SALE_TYPE_COD' +
        'E)'
      '                        ) and'
      ''
      
        '                        ( (:EE_DMG_PROCESS_PRODUCT_CODE is null)' +
        ' or'
      
        '                          (exists %EXISTS_PRODUCT_RELATION[ml.RE' +
        'SULT_PRODUCT_CODE~ :EE_DMG_PROCESS_PRODUCT_CODE])'
      '                        )'
      '                    )'
      '                  )'
      '                ) or'
      ''
      
        '                ( (:EE_DAMAGE_PROCESS_TYPE_CODE = %eedpt_DELIVER' +
        'Y) and'
      '                  (exists'
      '                    ( select'
      '                        1'
      '                      from'
      '                        DELIVERY_CONTRACTS dc,'
      '                        DEFICIT_COVER_DECISIONS dcd,'
      '                        DELIVERY_PROJECTS dp'
      '                      where'
      
        '                        (dc.DELIVERY_OBJECT_BRANCH_CODE = eed.DE' +
        'LIVERY_OBJECT_BRANCH_CODE) and'
      
        '                        (dc.DELIVERY_OBJECT_CODE = eed.DELIVERY_' +
        'OBJECT_CODE) and'
      ''
      
        '                        (dc.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                        (dc.DCD_OBJECT_CODE = dcd.DCD_OBJECT_COD' +
        'E) and'
      ''
      
        '                        (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '                        (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE' +
        ') and'
      
        '                        (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_' +
        'PROJECT_CODE) and'
      ''
      
        '                        ( (:DELIVERY_OBJECT_BRANCH_CODE is null)' +
        ' or'
      
        '                          (dc.DELIVERY_OBJECT_BRANCH_CODE = :DEL' +
        'IVERY_OBJECT_BRANCH_CODE)'
      '                        ) and'
      ''
      '                        ( (:DELIVERY_OBJECT_CODE is null) or'
      
        '                          (dc.DELIVERY_OBJECT_CODE = :DELIVERY_O' +
        'BJECT_CODE)'
      '                        ) and'
      ''
      
        '                        ( (:DEL_DELIVERY_DEAL_TYPE_CODE is null)' +
        ' or'
      
        '                          (dcd.DELIVERY_DEAL_TYPE_CODE = :DEL_DE' +
        'LIVERY_DEAL_TYPE_CODE)'
      '                        ) and'
      ''
      '                        ( (:DEL_DCD_BRANCH_CODE is null) or'
      
        '                          (dcd.DCD_BRANCH_CODE = :DEL_DCD_BRANCH' +
        '_CODE)'
      '                        ) and'
      ''
      '                        ( (:DEL_DCD_CODE is null) or'
      '                          (dcd.DCD_CODE = :DEL_DCD_CODE)'
      '                        ) and'
      ''
      
        '                        ( (:DEL_DELIVERY_PROJECT_CODE is null) o' +
        'r'
      
        '                          (dc.DELIVERY_PROJECT_CODE = :DEL_DELIV' +
        'ERY_PROJECT_CODE)'
      '                        ) and'
      ''
      
        '                        ( (:EE_DMG_PROCESS_PRODUCT_CODE is null)' +
        ' or'
      
        '                          (exists %EXISTS_PRODUCT_RELATION[dp.PR' +
        'ODUCT_CODE~ :EE_DMG_PROCESS_PRODUCT_CODE])'
      '                        ) and'
      ''
      '                        ( (:COMPANY_CODE is null) or'
      
        '                          (dp.VENDOR_COMPANY_CODE = :COMPANY_COD' +
        'E)'
      '                        )'
      '                    )'
      '                  )'
      '                ) or'
      ''
      
        '                ( (:EE_DAMAGE_PROCESS_TYPE_CODE = %eedpt_SALE_SH' +
        'IPMENT) and'
      '                  (exists'
      '                    ( select'
      '                        1'
      '                      from'
      '                        SALE_SHIPMENTS ss,'
      '                        SALES s'
      '                      where'
      
        '                        (ss.SHIPMENT_OBJECT_BRANCH_CODE = eed.SH' +
        'IPMENT_OBJECT_BRANCH_CODE) and'
      
        '                        (ss.SHIPMENT_OBJECT_CODE = eed.SHIPMENT_' +
        'OBJECT_CODE) and'
      ''
      
        '                        (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                        (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_COD' +
        'E) and'
      ''
      
        '                        ( (:SHIPMENT_OBJECT_BRANCH_CODE is null)' +
        ' or'
      
        '                          (ss.SHIPMENT_OBJECT_BRANCH_CODE = :SHI' +
        'PMENT_OBJECT_BRANCH_CODE)'
      '                        ) and'
      ''
      '                        ( (:SHIPMENT_OBJECT_CODE is null) or'
      
        '                          (ss.SHIPMENT_OBJECT_CODE = :SHIPMENT_O' +
        'BJECT_CODE)'
      '                        ) and'
      ''
      '                        ( (:SHP_SALE_DEAL_TYPE_CODE is null) or'
      
        '                          (s.SALE_DEAL_TYPE_CODE = :SHP_SALE_DEA' +
        'L_TYPE_CODE)'
      '                        ) and'
      ''
      '                        ( (:SHP_SALE_BRANCH_CODE is null) or'
      
        '                          (s.SALE_BRANCH_CODE = :SHP_SALE_BRANCH' +
        '_CODE)'
      '                        ) and'
      ''
      '                        ( (:SHP_SALE_NO is null) or'
      '                          (s.SALE_NO = :SHP_SALE_NO)'
      '                        ) and'
      ''
      '                        ( (:SHP_SALE_TYPE_CODE is null) or'
      
        '                          (s.SALE_TYPE_CODE = :SHP_SALE_TYPE_COD' +
        'E)'
      '                        ) and'
      ''
      '                        ( (:SHP_SALE_SHIPMENT_NO is null) or'
      
        '                          (ss.SALE_SHIPMENT_NO = :SHP_SALE_SHIPM' +
        'ENT_NO)'
      '                        ) and'
      ''
      
        '                        ( (:EE_DMG_PROCESS_PRODUCT_CODE is null)' +
        ' or'
      
        '                          (exists %EXISTS_PRODUCT_RELATION[s.PRO' +
        'DUCT_CODE~ :EE_DMG_PROCESS_PRODUCT_CODE])'
      '                        ) and'
      ''
      '                        ( (:COMPANY_CODE is null) or'
      
        '                          (s.CLIENT_COMPANY_CODE = :COMPANY_CODE' +
        ')'
      '                        )'
      '                    )'
      '                  )'
      '                )'
      '              )'
      '            )'
      '          )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:TASKS_RESOLVED_STATE = 1) or'
      ''
      '    ( (:TASKS_RESOLVED_STATE = 2) and'
      '      (not exists'
      '        ( select'
      '            1'
      '          from'
      '            EXCEPT_EVENT_TASKS eet'
      '          where'
      '            (eet.EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE) and'
      '            (%EXCEPT_EVENT_TASK_STATE[eet] < 5)'
      '        )'
      '      ) and'
      ''
      '      ( (:TASKS_CONFIRM_STATE = 1) or'
      ''
      '        ( (:TASKS_CONFIRM_STATE = 2) and'
      '          (ee.RESOLVE_EMPLOYEE_CODE is not null)'
      '        ) or'
      ''
      '        ( (:TASKS_CONFIRM_STATE = 3) and'
      '          (ee.RESOLVE_EMPLOYEE_CODE is null)'
      '        )'
      '      )'
      '    ) or'
      ''
      '    ( (:TASKS_RESOLVED_STATE = 3) and'
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            EXCEPT_EVENT_TASKS eet'
      '          where'
      '            (eet.EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE) and'
      '            (%EXCEPT_EVENT_TASK_STATE[eet] < 5)'
      '        )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( ( (:RESOLVE_PLAN_BEGIN_DATE is null) and'
      '      (:RESOLVE_PLAN_END_DATE is null)'
      '    ) or'
      '    ( (ee.RESOLVE_PLAN_BEGIN_DATE is not null) and'
      '      (ee.RESOLVE_PLAN_END_DATE is not null) and'
      ''
      '      (ee.RESOLVE_PLAN_BEGIN_DATE <= :RESOLVE_PLAN_END_DATE) and'
      '      (ee.RESOLVE_PLAN_END_DATE >= :RESOLVE_PLAN_BEGIN_DATE)'
      '    )'
      '  ) and'
      ''
      '  ( (:MIN_RESOLVE_WORKDAYS_LEFT is null) or'
      '    ( (ee.RESOLVE_PLAN_END_DATE is not null) and'
      
        '      (%COUNT_WORKDAYS[Coalesce(ee.RESOLVE_DATE, ContextDate)~ ee.' +
        'RESOLVE_PLAN_END_DATE] >= :MIN_RESOLVE_WORKDAYS_LEFT)'
      '    )'
      '  ) and'
      ''
      '  ( (:MAX_RESOLVE_WORKDAYS_LEFT is null) or'
      '    ( (ee.RESOLVE_PLAN_END_DATE is not null) and'
      
        '      (%COUNT_WORKDAYS[Coalesce(ee.RESOLVE_DATE, ContextDate)~ ee.' +
        'RESOLVE_PLAN_END_DATE] <= :MAX_RESOLVE_WORKDAYS_LEFT)'
      '    )'
      '  ) and'
      ''
      '  ( (:RESOLVE_BEGIN_DATE is null) or'
      '    (ee.RESOLVE_DATE >= :RESOLVE_BEGIN_DATE)'
      '  ) and'
      ''
      '  ( (:RESOLVE_END_DATE is null) or'
      '    (ee.RESOLVE_DATE <= :RESOLVE_END_DATE)'
      '  ) and'
      ''
      '  ( (:IS_FILTERED_BY_TASKS = 0) or'
      ''
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          EXCEPT_EVENT_TASKS eet'
      '        where'
      '          (eet.EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE) and'
      ''
      
        '          (%EXCEPT_EVENT_TASK_STATE[eet] between :MIN_TASK_STATE' +
        '_CODE and :MAX_TASK_STATE_CODE) and'
      ''
      '          ( (:TASK_PLAN_BEGIN_DATE is null) or'
      '            (eet.PLAN_DATE >= :TASK_PLAN_BEGIN_DATE)'
      '          ) and'
      ''
      '          ( (:TASK_PLAN_END_DATE is null) or'
      '            (eet.PLAN_DATE <= :TASK_PLAN_END_DATE)'
      '          ) and'
      ''
      '          ( (:MIN_TASK_WORKDAYS_LEFT is null) or'
      '            ( (eet.PLAN_DATE is not null) and'
      
        '              (%COUNT_WORKDAYS[Coalesce(eet.CLOSE_DATE, ContextDat' +
        'e)~ eet.PLAN_DATE] >= :MIN_TASK_WORKDAYS_LEFT)'
      '            )'
      '          ) and'
      ''
      '          ( (:MAX_TASK_WORKDAYS_LEFT is null) or'
      '            ( (eet.PLAN_DATE is not null) and'
      
        '              (%COUNT_WORKDAYS[Coalesce(eet.CLOSE_DATE, ContextDat' +
        'e)~ eet.PLAN_DATE] <= :MAX_TASK_WORKDAYS_LEFT)'
      '            )'
      '          ) and'
      ''
      '          ( (:TASK_DEPT_CODE is null) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  DEPT_RELATIONS dr'
      '                where'
      '                  (dr.DESCENDANT_DEPT_CODE = eet.DEPT_CODE) and'
      '                  (dr.ANCESTOR_DEPT_CODE = :TASK_DEPT_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:TASK_EMPLOYEE_CODE is null) or'
      '            (eet.EMPLOYEE_CODE = :TASK_EMPLOYEE_CODE)'
      '          ) and'
      ''
      '          ( (:EXCEPT_EVENT_TASK_HAS_PROBLEMS = 1) or'
      ''
      '            ( (:EXCEPT_EVENT_TASK_HAS_PROBLEMS = 2) and'
      '              (eet.PROBLEM_ENCOUNTER_EMP_CODE is not null) and'
      '              (eet.PROBLEM_RESOLVE_EMPLOYEE_CODE is null)'
      '            ) or'
      ''
      '            ( (:EXCEPT_EVENT_TASK_HAS_PROBLEMS = 3) and'
      '              ( (eet.PROBLEM_ENCOUNTER_EMP_CODE is null) or'
      '                (eet.PROBLEM_RESOLVE_EMPLOYEE_CODE is not null)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:TASK_DEPTS_EMPLOYEE_CODE is null) or'
      
        '            (%HAS_WORK_DEPT[:TASK_DEPTS_EMPLOYEE_CODE~ eet.DEPT_' +
        'CODE] = 1)'
      '          )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:SINGLE_RESOLVABLE = 1) or  -- vsichki'
      
        '    ( (:SINGLE_RESOLVABLE = 2) and  -- s edinichno predotvratqva' +
        'ne'
      '      (ee.IS_SINGLE_RESOLVABLE = 1)'
      '    ) or'
      
        '    ( (:SINGLE_RESOLVABLE = 3) and  -- bez edinichno predotvratq' +
        'vane'
      '      (ee.IS_SINGLE_RESOLVABLE = 0)'
      '    )'
      '  )'
      ''
      'order by'
      '  ee.EXCEPT_EVENT_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENT_STATE[ee]'
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
        Name = 'DEPT_IDENTIFIER[ee.DEPT_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[ee]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'DEPT_IDENTIFIER[ee.DETECT_DEPT_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'DEPT_IDENTIFIER[ee.CTRL_DEPT_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_ABBREV_NAME[ee.CTRL_MAIN_EMPLOYEE_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS[ee.DMG_RESOLVE_PLAN_BEGIN_DATE~ Coalesce(ee.DMG_R' +
          'ESOLVE_DATE, ContextDate)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS[Coalesce(ee.DMG_RESOLVE_DATE, ContextDate)~ ee.DMG_' +
          'RESOLVE_PLAN_END_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[s.SALE_DEAL_TYPE_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'ot_LEASE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS[ee.RESOLVE_PLAN_BEGIN_DATE~ Coalesce(ee.RESOLVE_D' +
          'ATE, ContextDate)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS[Coalesce(ee.RESOLVE_DATE, ContextDate)~ ee.RESOLVE_' +
          'PLAN_END_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[otp]'
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
        Name = 'DEPT_NAME[ee.DEPT_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'DEPT_NAME[ee.DETECT_DEPT_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'DEPT_NAME[ee.CTRL_DEPT_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_ABBREV_NAME[ee.CREATE_EMPLOYEE_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_ABBREV_NAME[ee.DETECT_EMPLOYEE_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 
          'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[ee.PRODUCT_CODE ~ ee.CREATE_DA' +
          'TE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'EE_TYPE_FULL_NO[ee.EXCEPT_EVENT_TYPE_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'EXISTS_UNNORMALIZED_ATTACK[ee]'
        ParamType = ptInput
        Value = '(select 1 from DUAL)'
      end
      item
        DataType = ftWideString
        Name = 'HAS_WORK_DEPT[:CTRL_DEPTS_EMPLOYEE_CODE~ ee.CTRL_DEPT_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'eedpt_MATERIAL_LIST_LINE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'EXISTS_PRODUCT_RELATION[ml.RESULT_PRODUCT_CODE~ :EE_DMG_PROCESS_' +
          'PRODUCT_CODE]'
        ParamType = ptInput
        Value = '(select 1 from DUAL)'
      end
      item
        DataType = ftWideString
        Name = 'eedpt_DELIVERY'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'EXISTS_PRODUCT_RELATION[dp.PRODUCT_CODE~ :EE_DMG_PROCESS_PRODUCT' +
          '_CODE]'
        ParamType = ptInput
        Value = '(select 1 from DUAL)'
      end
      item
        DataType = ftWideString
        Name = 'eedpt_SALE_SHIPMENT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'EXISTS_PRODUCT_RELATION[s.PRODUCT_CODE~ :EE_DMG_PROCESS_PRODUCT_' +
          'CODE]'
        ParamType = ptInput
        Value = '(select 1 from DUAL)'
      end
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENT_TASK_STATE[eet]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS[Coalesce(eet.CLOSE_DATE, ContextDate)~ eet.PLAN_DAT' +
          'E]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_WORK_DEPT[:TASK_DEPTS_EMPLOYEE_CODE~ eet.DEPT_CODE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end>
    TableName = 'EXCEPT_EVENTS_FOR_EDIT'
    Left = 136
    Top = 64
    object qryExceptEventsEXCEPT_EVENT_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryExceptEventsSTATE_CODE: TAbmesFloatField
      FieldName = 'STATE_CODE'
    end
    object qryExceptEventsEXCEPT_EVENT_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_NO'
    end
    object qryExceptEventsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryExceptEventsEXCEPT_EVENT_TYPE_SHORT_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_TYPE_SHORT_NAME'
      Size = 100
    end
    object qryExceptEventsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryExceptEventsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryExceptEventsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryExceptEventsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryExceptEventsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object qryExceptEventsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryExceptEventsDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object qryExceptEventsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryExceptEventsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryExceptEventsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object qryExceptEventsDETECT_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DETECT_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryExceptEventsCTRL_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CTRL_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryExceptEventsCTRL_MAIN_EMPLOYEE: TAbmesWideStringField
      FieldName = 'CTRL_MAIN_EMPLOYEE'
      Size = 54
    end
    object qryExceptEventsDMG_RESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DMG_RESOLVE_PLAN_END_DATE'
    end
    object qryExceptEventsDMG_RESOLVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'DMG_RESOLVE_DATE'
    end
    object qryExceptEventsDMG_RESOLVE_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'DMG_RESOLVE_REAL_WORKDAYS'
    end
    object qryExceptEventsDMG_RESOLVE_WORKDAYS_LEFT: TAbmesFloatField
      FieldName = 'DMG_RESOLVE_WORKDAYS_LEFT'
    end
    object qryExceptEventsEXCEPT_EVENT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TOTAL_PRICE'
    end
    object qryExceptEventsRESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'RESOLVE_PLAN_END_DATE'
    end
    object qryExceptEventsRESOLVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RESOLVE_DATE'
    end
    object qryExceptEventsRESOLVE_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'RESOLVE_REAL_WORKDAYS'
    end
    object qryExceptEventsRESOLVE_WORKDAYS_LEFT: TAbmesFloatField
      FieldName = 'RESOLVE_WORKDAYS_LEFT'
    end
    object qryExceptEventsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryExceptEventsEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_LEVEL_CODE'
    end
    object qryExceptEventsEXCEPT_EVENT_LEVEL_ABBREV: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_LEVEL_ABBREV'
      Size = 100
    end
    object qryExceptEventsHAS_CAUSES: TAbmesFloatField
      FieldName = 'HAS_CAUSES'
    end
    object qryExceptEventsHAS_CONSEQUENCES: TAbmesFloatField
      FieldName = 'HAS_CONSEQUENCES'
    end
    object qryExceptEventsEXCEPT_EVENT_GEN_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_ABBREV'
      Size = 100
    end
    object qryExceptEventsORG_TASK_PROPOSAL_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_CODE'
    end
    object qryExceptEventsORG_TASK_PROPOSAL_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_NO'
    end
    object qryExceptEventsOTP_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OTP_DOC_BRANCH_CODE'
    end
    object qryExceptEventsOTP_DOC_CODE: TAbmesFloatField
      FieldName = 'OTP_DOC_CODE'
    end
    object qryExceptEventsOTP_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'OTP_HAS_DOC_ITEMS'
    end
    object qryExceptEventsOTP_BIND_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OTP_BIND_EMPLOYEE_CODE'
    end
    object qryExceptEventsOTP_BIND_DATE: TAbmesSQLTimeStampField
      FieldName = 'OTP_BIND_DATE'
    end
    object qryExceptEventsOTP_BIND_TIME: TAbmesSQLTimeStampField
      FieldName = 'OTP_BIND_TIME'
    end
    object qryExceptEventsDEPT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DEPT_DOC_BRANCH_CODE'
    end
    object qryExceptEventsDEPT_DOC_CODE: TAbmesFloatField
      FieldName = 'DEPT_DOC_CODE'
    end
    object qryExceptEventsDEPT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DEPT_HAS_DOC_ITEMS'
    end
    object qryExceptEventsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryExceptEventsDETECT_DEPT_NAME: TAbmesWideStringField
      FieldName = 'DETECT_DEPT_NAME'
      Size = 100
    end
    object qryExceptEventsCTRL_DEPT_NAME: TAbmesWideStringField
      FieldName = 'CTRL_DEPT_NAME'
      Size = 100
    end
    object qryExceptEventsPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 250
    end
    object qryExceptEventsPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_SHORT_NAME'
      Size = 100
    end
    object qryExceptEventsPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
    object qryExceptEventsPRODUCT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_MEASURE_ABBREV'
      Size = 5
    end
    object qryExceptEventsCREATE_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_ABBREV_NAME'
      Size = 54
    end
    object qryExceptEventsDETECT_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField
      FieldName = 'DETECT_EMPLOYEE_ABBREV_NAME'
      Size = 54
    end
    object qryExceptEventsPRODUCT_PSD_SINGLE_PRICE_IN_BC: TAbmesFloatField
      FieldName = 'PRODUCT_PSD_SINGLE_PRICE_IN_BC'
    end
    object qryExceptEventsEE_TYPE_FULL_NO: TAbmesWideStringField
      FieldName = 'EE_TYPE_FULL_NO'
      Size = 100
    end
    object qryExceptEventsCREATE_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_NO'
    end
    object qryExceptEventsDETECT_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'DETECT_EMPLOYEE_NO'
    end
    object qryExceptEventsEXCEPT_EVENT_CAUSES: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_CAUSES'
      Size = 4000
    end
    object qryExceptEventsEXCEPT_EVENT_CONSEQUENCES: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_CONSEQUENCES'
      Size = 4000
    end
    object qryExceptEventsPRODUCT_PSD_TOTAL_PRICE_IN_BC: TAbmesFloatField
      FieldName = 'PRODUCT_PSD_TOTAL_PRICE_IN_BC'
    end
    object qryExceptEventsIS_SINGLE_RESOLVABLE: TAbmesFloatField
      FieldName = 'IS_SINGLE_RESOLVABLE'
      Required = True
    end
    object qryExceptEventsIS_ACTIVATED: TAbmesFloatField
      FieldName = 'IS_ACTIVATED'
    end
    object qryExceptEventsIS_CLOSED: TAbmesFloatField
      FieldName = 'IS_CLOSED'
    end
  end
  object mshLocalMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'EXCEPT_EVENT_TASK_STATE'
        Strings.Strings = (
          '( case'
          '      when %1.ANNUL_EMPLOYEE_CODE is not null then'
          '        6'
          '      when %1.CLOSE_EMPLOYEE_CODE is not null then'
          '        5'
          '      when (%1.ACTIVATE_EMPLOYEE_CODE is not null) and'
          
            '           (ContextDate > Coalesce(%1.PLAN_DATE, CommonConsts.MaxD' +
            'ate)) then'
          '        4'
          '      when (%1.ACTIVATE_EMPLOYEE_CODE is not null) and'
          '           ( (%1.PROBLEM_ENCOUNTER_EMP_CODE is null) or'
          '             (%1.PROBLEM_RESOLVE_EMPLOYEE_CODE is not null)'
          '           ) then'
          '        3'
          '      when (%1.ACTIVATE_EMPLOYEE_CODE is not null) then'
          '        2'
          '    else'
          '      1'
          '    end'
          '  )')
      end
      item
        Name = 'EXCEPT_EVENT_STATE'
        Strings.Strings = (
          '( case'
          '    when %1.ANNUL_EMPLOYEE_CODE is not null then'
          '      8'
          '    when %1.CLOSE_EMPLOYEE_CODE is not null then'
          '      7'
          '    when'
          '      ( (%1.CTRL_ACTIVATE_EMPLOYEE_CODE is not null) or'
          '        (%1.EXCEPT_EVENT_LEVEL_CODE = %eel_INFORMATIVE)'
          '      ) and'
          '      (exists'
          '        ( select'
          '            1'
          '          from'
          '            EXCEPT_EVENT_TASKS library_eet'
          '          where'
          
            '            (library_eet.EXCEPT_EVENT_CODE = %1.EXCEPT_EVENT_COD' +
            'E) and'
          '            (library_eet.ANNUL_EMPLOYEE_CODE is null)'
          '        )'
          '      ) and'
          '      (not exists'
          '        ( select'
          '            1'
          '          from'
          '            EXCEPT_EVENT_TASKS library_eet'
          '          where'
          
            '            (library_eet.EXCEPT_EVENT_CODE = %1.EXCEPT_EVENT_COD' +
            'E) and'
          '            (library_eet.ANNUL_EMPLOYEE_CODE is null) and'
          '            (library_eet.CLOSE_EMPLOYEE_CODE is null)'
          '        )'
          '      ) then'
          '      6'
          
            '    when (ContextDate > Greatest(Coalesce(%1.DMG_RESOLVE_PLAN_END_' +
            'DATE, CommonConsts.MaxDate), Coalesce(%1.RESOLVE_PLAN_END_DATE, ' +
            'CommonConsts.MaxDate))) then'
          '      5'
          '    when %1.CTRL_ACTIVATE_EMPLOYEE_CODE is not null then'
          '      4'
          '    when %1.CTRL_MAIN_EMPLOYEE_CODE is not null then'
          '      3'
          '    when %1.CTRL_ACCEPT_EMPLOYEE_CODE is not null then'
          '      2'
          '  else'
          '    1'
          '  end'
          ')')
      end
      item
        Name = 'EXISTS_UNNORMALIZED_ATTACK'
        Strings.Strings = (
          '( select'
          '    1'
          '  from'
          '    EXCEPT_EVENT_DAMAGES library_eed,'
          '    EXCEPT_EVENT_DMG_ATTACKS library_eeda'
          '  where'
          '    (library_eed.EXCEPT_EVENT_CODE = %1.EXCEPT_EVENT_CODE) and'
          
            '    (library_eed.EXCEPT_EVENT_DAMAGE_CODE = library_eeda.EXCEPT_' +
            'EVENT_DAMAGE_CODE) and'
          '    (library_eeda.NORMALIZE_EMPLOYEE_CODE is null)'
          ')')
      end
      item
        Name = 'EXISTS_PRODUCT_RELATION'
        Strings.Strings = (
          '( select'
          '    1'
          '  from'
          '    PRODUCT_RELATIONS library_pr'
          '  where'
          '    (library_pr.DESCENDANT_PRODUCT_CODE = %1) and'
          '    (library_pr.ANCESTOR_PRODUCT_CODE = %2)'
          ')')
      end
      item
        Name = 'GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE'
        Strings.Strings = (
          '( select'
          '    library_bdt.OBTAINMENT_TYPE_CODE'
          '  from'
          '    BORDER_DEAL_TYPES library_bdt'
          '  where'
          '    (library_bdt.BORDER_DEAL_TYPE_CODE = %1)'
          ')')
      end
      item
        Name = 'eedpt_MATERIAL_LIST_LINE'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'eedpt_DELIVERY'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'eedpt_SALE_SHIPMENT'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'eel_INFORMATIVE'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'eel_MINIMAL'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'eel_NORMAL'
        Strings.Strings = (
          '3')
      end>
    Left = 688
    Top = 496
  end
  object prvExceptEvents: TDataSetProvider
    DataSet = qryExceptEvents
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 16
  end
  object qryExceptEventTasks: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_FILTERED_BY_TASKS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_TASK_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_TASK_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TASK_HAS_PROBLEMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TASK_HAS_PROBLEMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TASK_HAS_PROBLEMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_DEPTS_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  eet.EXCEPT_EVENT_TASK_CODE,'
      '  %EXCEPT_EVENT_TASK_STATE[eet] as STATE_CODE,'
      '  eet.EXCEPT_EVENT_TASK_NO,'
      '  eet.CREATE_DATE,'
      
        '  %COUNT_WORKDAYS[eet.CREATE_DATE~ Coalesce(eet.CLOSE_DATE, Cont' +
        'extDate)] as TASK_REAL_WORKDAYS,'
      ''
      '  ( ( select'
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
      '  d.DOC_BRANCH_CODE as DEPT_DOC_BRANCH_CODE,'
      '  d.DOC_CODE as DEPT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[d] as DEPT_HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_NO,'
      ''
      '  Nvl2(e.EMPLOYEE_CODE,'
      
        '    e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39' |' +
        '| e.LAST_NAME,'
      '    null'
      '  ) as EMPLOYEE_NAME,'
      ''
      '  e.DOC_BRANCH_CODE as EMPLOYEE_DOC_BRANCH_CODE,'
      '  e.DOC_CODE as EMPLOYEE_DOC_CODE,'
      '  %HAS_DOC_ITEMS[e] as EMPLOYEE_HAS_DOC_ITEMS,'
      ''
      '  eet.DESCRIPTION,'
      '  eet.DOC_BRANCH_CODE,'
      '  eet.DOC_CODE,'
      '  %HAS_DOC_ITEMS[eet] as HAS_DOC_ITEMS,'
      '  eet.PLAN_DATE,'
      ''
      '  Nvl2(eet.PROBLEM_ENCOUNTER_EMP_CODE,'
      '    Nvl2(eet.PROBLEM_RESOLVE_EMPLOYEE_CODE, 0, 1),'
      '    0'
      '  ) as HAS_PROBLEMS_ENCOUNTERED,'
      ''
      '  Nvl2(eet.PLAN_DATE,'
      
        '    %COUNT_WORKDAYS[Coalesce(eet.CLOSE_DATE, ContextDate)~ eet.PLA' +
        'N_DATE],'
      '    null'
      '  ) as TASK_WORKDAYS_LEFT,'
      ''
      '  eet.CLOSE_DATE,'
      '  Nvl2(eet.ANNUL_EMPLOYEE_CODE, 1, 0) as IS_ANNULED,'
      ''
      '  ( select'
      
        '      eetrt.EE_TASK_RESOLVE_TYPE_ABBREV || '#39'        '#39' || eetrt.E' +
        'E_TASK_RESOLVE_TYPE_NAME'
      '    from'
      '      EE_TASK_RESOLVE_TYPES eetrt'
      '    where'
      
        '      (eetrt.EE_TASK_RESOLVE_TYPE_CODE = eet.EE_TASK_RESOLVE_TYP' +
        'E_CODE)'
      '  ) as EE_TASK_RESOLVE_TYPE_SHOW_NAME,'
      ''
      '  -- filter'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DUAL'
      '    where'
      '      ( (:IS_FILTERED_BY_TASKS = 0) or'
      ''
      
        '        ( (%EXCEPT_EVENT_TASK_STATE[eet] between :MIN_TASK_STATE' +
        '_CODE and :MAX_TASK_STATE_CODE) and'
      ''
      '          ( (:TASK_PLAN_BEGIN_DATE is null) or'
      '            (eet.PLAN_DATE >= :TASK_PLAN_BEGIN_DATE)'
      '          ) and'
      ''
      '          ( (:TASK_PLAN_END_DATE is null) or'
      '            (eet.PLAN_DATE <= :TASK_PLAN_END_DATE)'
      '          ) and'
      ''
      '          ( (:MIN_TASK_WORKDAYS_LEFT is null) or'
      '            ( (eet.PLAN_DATE is not null) and'
      
        '              (%COUNT_WORKDAYS[Coalesce(eet.CLOSE_DATE, ContextDat' +
        'e)~ eet.PLAN_DATE] >= :MIN_TASK_WORKDAYS_LEFT)'
      '            )'
      '          ) and'
      ''
      '          ( (:MAX_TASK_WORKDAYS_LEFT is null) or'
      '            ( (eet.PLAN_DATE is not null) and'
      
        '              (%COUNT_WORKDAYS[Coalesce(eet.CLOSE_DATE, ContextDat' +
        'e)~ eet.PLAN_DATE] <= :MAX_TASK_WORKDAYS_LEFT)'
      '            )'
      '          ) and'
      ''
      '          ( (:TASK_DEPT_CODE is null) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  DEPT_RELATIONS dr'
      '                where'
      '                  (dr.DESCENDANT_DEPT_CODE = eet.DEPT_CODE) and'
      '                  (dr.ANCESTOR_DEPT_CODE = :TASK_DEPT_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:TASK_EMPLOYEE_CODE is null) or'
      '            (eet.EMPLOYEE_CODE = :TASK_EMPLOYEE_CODE)'
      '          ) and'
      ''
      '          ( (:EXCEPT_EVENT_TASK_HAS_PROBLEMS = 1) or'
      ''
      '            ( (:EXCEPT_EVENT_TASK_HAS_PROBLEMS = 2) and'
      '              (eet.PROBLEM_ENCOUNTER_EMP_CODE is not null) and'
      '              (eet.PROBLEM_RESOLVE_EMPLOYEE_CODE is null)'
      '            ) or'
      ''
      '            ( (:EXCEPT_EVENT_TASK_HAS_PROBLEMS = 3) and'
      '              ( (eet.PROBLEM_ENCOUNTER_EMP_CODE is null) or'
      '                (eet.PROBLEM_RESOLVE_EMPLOYEE_CODE is not null)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:TASK_DEPTS_EMPLOYEE_CODE is null) or'
      
        '            (%HAS_WORK_DEPT[:TASK_DEPTS_EMPLOYEE_CODE~ eet.DEPT_' +
        'CODE] = 1)'
      '          )'
      '        )'
      '      )'
      '  ) as SATISFIES_FILTER'
      ''
      'from'
      '  EXCEPT_EVENT_TASKS eet,'
      '  DEPTS d,'
      '  EMPLOYEES e'
      ''
      'where'
      '  (eet.DEPT_CODE = d.DEPT_CODE) and'
      '  (eet.EMPLOYEE_CODE = e.EMPLOYEE_CODE(+)) and'
      ''
      '  (eet.EXCEPT_EVENT_CODE = :EXCEPT_EVENT_CODE)'
      ''
      'order by'
      '  eet.EXCEPT_EVENT_TASK_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENT_TASK_STATE[eet]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS[eet.CREATE_DATE~ Coalesce(eet.CLOSE_DATE, ContextDa' +
          'te)]'
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
        Name = 'HAS_DOC_ITEMS[e]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[eet]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS[Coalesce(eet.CLOSE_DATE, ContextDate)~ eet.PLAN_DAT' +
          'E]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_WORK_DEPT[:TASK_DEPTS_EMPLOYEE_CODE~ eet.DEPT_CODE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EXCEPT_EVENT_TASKS_FOR_EDIT'
    Left = 200
    Top = 160
    object qryExceptEventTasksEXCEPT_EVENT_TASK_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TASK_CODE'
    end
    object qryExceptEventTasksSTATE_CODE: TAbmesFloatField
      FieldName = 'STATE_CODE'
    end
    object qryExceptEventTasksEXCEPT_EVENT_TASK_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TASK_NO'
    end
    object qryExceptEventTasksCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryExceptEventTasksTASK_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'TASK_REAL_WORKDAYS'
    end
    object qryExceptEventTasksDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryExceptEventTasksDEPT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DEPT_DOC_BRANCH_CODE'
    end
    object qryExceptEventTasksDEPT_DOC_CODE: TAbmesFloatField
      FieldName = 'DEPT_DOC_CODE'
    end
    object qryExceptEventTasksDEPT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DEPT_HAS_DOC_ITEMS'
    end
    object qryExceptEventTasksEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object qryExceptEventTasksEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object qryExceptEventTasksEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_BRANCH_CODE'
    end
    object qryExceptEventTasksEMPLOYEE_DOC_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_CODE'
    end
    object qryExceptEventTasksEMPLOYEE_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'EMPLOYEE_HAS_DOC_ITEMS'
    end
    object qryExceptEventTasksDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 2000
    end
    object qryExceptEventTasksDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryExceptEventTasksDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryExceptEventTasksHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object qryExceptEventTasksPLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_DATE'
    end
    object qryExceptEventTasksHAS_PROBLEMS_ENCOUNTERED: TAbmesFloatField
      FieldName = 'HAS_PROBLEMS_ENCOUNTERED'
    end
    object qryExceptEventTasksCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryExceptEventTasksIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
    end
    object qryExceptEventTasksTASK_WORKDAYS_LEFT: TAbmesFloatField
      FieldName = 'TASK_WORKDAYS_LEFT'
    end
    object qryExceptEventTasksSATISFIES_FILTER: TAbmesFloatField
      FieldName = 'SATISFIES_FILTER'
    end
    object qryExceptEventTasksEE_TASK_RESOLVE_TYPE_SHOW_NAME: TAbmesWideStringField
      FieldName = 'EE_TASK_RESOLVE_TYPE_SHOW_NAME'
      Size = 208
    end
  end
  object qryExceptEventDamages: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_FILTERED_BY_DAMAGES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DMG_PROCESS_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DMG_PROCESS_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DMG_PROCESS_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eed.EXCEPT_EVENT_DAMAGE_CODE,'
      ''
      
        '  Cast(MiscUtils.GetExceptEventDamageFullNo(eed.EXCEPT_EVENT_DAM' +
        'AGE_CODE) as Varchar2(250 char)) as FULL_NO,'
      
        '  Cast(MiscUtils.GetExceptEventDamageFullNo(eed.EXCEPT_EVENT_DAM' +
        'AGE_CODE, 1) as Varchar2(250 char)) as FORMATED_FULL_NO,'
      ''
      '  eed.EXCEPT_EVENT_CODE,'
      '  eed.PARENT_CODE,'
      '  eed.LOCAL_NO,'
      '  %EXCEPT_EVENT_DAMAGE_STATE[eed] as STATE_CODE,'
      '  eed.CREATE_DATE,'
      ''
      '  %COUNT_WORKDAYS['
      '    eed.CREATE_DATE~'
      '    Decode('
      '      ( select'
      '          Sign(Count(*))'
      '        from'
      '          EXCEPT_EVENT_DMG_ATTACKS eeda'
      '        where'
      
        '          (eeda.EXCEPT_EVENT_DAMAGE_CODE = eed.EXCEPT_EVENT_DAMA' +
        'GE_CODE) and'
      '          (eeda.NORMALIZE_EMPLOYEE_CODE is null)'
      '      ),'
      '      1, ContextDate,'
      '      ( select'
      '          Max(eeda.NORMALIZE_DATE)'
      '        from'
      '          EXCEPT_EVENT_DMG_ATTACKS eeda'
      '        where'
      
        '          (eeda.EXCEPT_EVENT_DAMAGE_CODE = eed.EXCEPT_EVENT_DAMA' +
        'GE_CODE)'
      '      )'
      '    )'
      '  ] as DAMAGE_WORKDAYS,'
      ''
      '  ( select'
      '      eedpt.EE_DAMAGE_PROCESS_TYPE_NAME'
      '    from'
      '      EE_DAMAGE_PROCESS_TYPES eedpt'
      '    where'
      
        '      (eedpt.EE_DAMAGE_PROCESS_TYPE_CODE = eed.EE_DAMAGE_PROCESS' +
        '_TYPE_CODE)'
      '  ) as EE_DAMAGE_PROCESS_TYPE_NAME,'
      ''
      '  Decode(eed.EE_DAMAGE_PROCESS_TYPE_CODE,'
      
        '    %eedpt_MATERIAL_LIST_LINE, %PROCESS_OBJECT_IDENTIFIER[eed.ML' +
        'L_OBJECT_BRANCH_CODE~ eed.MLL_OBJECT_CODE],'
      
        '    %eedpt_DELIVERY, %PROCESS_OBJECT_IDENTIFIER[eed.DELIVERY_OBJ' +
        'ECT_BRANCH_CODE~ eed.DELIVERY_OBJECT_CODE],'
      
        '    %eedpt_SALE_SHIPMENT, %PROCESS_OBJECT_IDENTIFIER[eed.SHIPMEN' +
        'T_OBJECT_BRANCH_CODE~ eed.SHIPMENT_OBJECT_CODE]'
      '  ) as PROCESS_IDENTIFIER,'
      ''
      '  Decode(eed.EE_DAMAGE_PROCESS_TYPE_CODE,'
      '    %eedpt_MATERIAL_LIST_LINE, mll_p.CUSTOM_CODE,'
      '    %eedpt_DELIVERY, d_p.CUSTOM_CODE,'
      '    %eedpt_SALE_SHIPMENT, s_p.CUSTOM_CODE'
      '  ) as PROCESS_PRODUCT_NO,'
      ''
      '  Decode(eed.EE_DAMAGE_PROCESS_TYPE_CODE,'
      '    %eedpt_MATERIAL_LIST_LINE, mll_p.NAME,'
      '    %eedpt_DELIVERY, d_p.NAME,'
      '    %eedpt_SALE_SHIPMENT, s_p.NAME'
      '  ) as PROCESS_PRODUCT_NAME,'
      ''
      '  Decode(eed.EE_DAMAGE_PROCESS_TYPE_CODE,'
      '    %eedpt_MATERIAL_LIST_LINE, mll_p.DOC_BRANCH_CODE,'
      '    %eedpt_DELIVERY, d_p.DOC_BRANCH_CODE,'
      '    %eedpt_SALE_SHIPMENT, s_p.DOC_BRANCH_CODE'
      '  ) as PRODUCT_DOC_BRANCH_CODE,'
      ''
      '  Decode(eed.EE_DAMAGE_PROCESS_TYPE_CODE,'
      '    %eedpt_MATERIAL_LIST_LINE, mll_p.DOC_CODE,'
      '    %eedpt_DELIVERY, d_p.DOC_CODE,'
      '    %eedpt_SALE_SHIPMENT, s_p.DOC_CODE'
      '  ) as PRODUCT_DOC_CODE,'
      ''
      '  Decode(eed.EE_DAMAGE_PROCESS_TYPE_CODE,'
      '    %eedpt_MATERIAL_LIST_LINE, %HAS_DOC_ITEMS[mll_p],'
      '    %eedpt_DELIVERY, %HAS_DOC_ITEMS[d_p],'
      '    %eedpt_SALE_SHIPMENT, %HAS_DOC_ITEMS[s_p]'
      '  ) as PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  Decode(eed.EE_DAMAGE_PROCESS_TYPE_CODE,'
      ''
      '    %eedpt_MATERIAL_LIST_LINE,'
      '    ml.ENTER_RESULT_STORE_BEGIN_DATE,'
      ''
      '    %eedpt_DELIVERY,'
      '    Decode('
      
        '      %GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[dcd.DELIVERY_DEAL_TY' +
        'PE_CODE],'
      '      %ot_LEASE, dp.RECEIVE_DATE,'
      '      dp.DELIVERY_DATE'
      '    ),'
      ''
      '    %eedpt_SALE_SHIPMENT,'
      '    Decode('
      
        '      %GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[s.SALE_DEAL_TYPE_COD' +
        'E],'
      '      %ot_LEASE, ss.RECEIVE_PLAN_DATE,'
      '      ss.SHIPMENT_PLAN_DATE'
      '    )'
      '  ) as PLAN_BEGIN_DATE,'
      ''
      '  Decode(eed.EE_DAMAGE_PROCESS_TYPE_CODE,'
      ''
      '    %eedpt_MATERIAL_LIST_LINE,'
      '    ml.ENTER_RESULT_STORE_END_DATE,'
      ''
      '    %eedpt_DELIVERY,'
      '    Decode('
      
        '      %GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[dcd.DELIVERY_DEAL_TY' +
        'PE_CODE],'
      '      %ot_LEASE, dp.RETURN_DATE,'
      '      dp.DELIVERY_DATE'
      '    ),'
      ''
      '    %eedpt_SALE_SHIPMENT,'
      '    Decode('
      
        '      %GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[s.SALE_DEAL_TYPE_COD' +
        'E],'
      '      %ot_LEASE, ss.RETURN_PLAN_DATE,'
      '      ss.SHIPMENT_PLAN_DATE'
      '    )'
      '  ) as PLAN_END_DATE,'
      ''
      '  Decode(eed.EE_DAMAGE_PROCESS_TYPE_CODE,'
      
        '    %eedpt_MATERIAL_LIST_LINE, (ml.TECH_QUANTITY / mll_p.TECH_ME' +
        'ASURE_COEF),'
      '    %eedpt_DELIVERY, dp.WORK_QUANTITY,'
      '    %eedpt_SALE_SHIPMENT, ss.PLAN_QUANTITY'
      '  ) as PROCESS_PRODUCT_QUANTITY,'
      ''
      '  %MEASURE_ABBREV['
      '    Decode(eed.EE_DAMAGE_PROCESS_TYPE_CODE,'
      '      CommonConsts.eedptMaterialListLine, mll_p.MEASURE_CODE,'
      '      CommonConsts.eedptDelivery, d_p.MEASURE_CODE,'
      '      CommonConsts.eedptSaleShipment, s_p.MEASURE_CODE'
      '    )'
      '  ] as PROCESS_PRODUCT_MEASURE,'
      ''
      '  eed.PRODUCT_QUANTITY,'
      ''
      '  Decode(eed.EE_DAMAGE_PROCESS_TYPE_CODE,'
      '    %eedpt_SALE_SHIPMENT,'
      '    ( select'
      '        eed.PRODUCT_QUANTITY * s.SINGLE_PRICE * cr.FIXING'
      '      from'
      '        CURRENCY_RATES cr'
      '      where'
      '        (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      '        (cr.RATE_DATE ='
      '          Least('
      '            ContextDate,'
      '            Decode('
      
        '              %GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[s.SALE_DEAL_' +
        'TYPE_CODE],'
      '              %ot_LEASE, ss.RECEIVE_PLAN_DATE,'
      '              ss.SHIPMENT_PLAN_DATE'
      '            )'
      '          )'
      '        )'
      '    )'
      '  ) as DAMAGED_PRICE,'
      ''
      '  -- filter'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DUAL'
      '    where'
      '      ( (:IS_FILTERED_BY_DAMAGES = 0) or'
      ''
      '        ( (:EE_DAMAGE_PROCESS_TYPE_CODE is null) or'
      ''
      
        '          ( (eed.EE_DAMAGE_PROCESS_TYPE_CODE = :EE_DAMAGE_PROCES' +
        'S_TYPE_CODE) and'
      '            ('
      
        '              ( (:EE_DAMAGE_PROCESS_TYPE_CODE = %eedpt_MATERIAL_' +
        'LIST_LINE) and'
      '                (exists'
      '                  ( select'
      '                      1'
      '                    from'
      '                      MATERIAL_LIST_LINES mll,'
      '                      MATERIAL_LISTS ml,'
      '                      SALES s'
      '                    where'
      
        '                      (mll.MLL_OBJECT_BRANCH_CODE = eed.MLL_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '                      (mll.MLL_OBJECT_CODE = eed.MLL_OBJECT_CODE' +
        ') and'
      ''
      
        '                      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_' +
        'BRANCH_CODE) and'
      
        '                      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) a' +
        'nd'
      ''
      
        '                      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SAL' +
        'E_OBJECT_BRANCH_CODE) and'
      
        '                      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJEC' +
        'T_CODE) and'
      ''
      '                      ( (:ML_OBJECT_BRANCH_CODE is null) or'
      
        '                        (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_' +
        'BRANCH_CODE)'
      '                      ) and'
      ''
      '                      ( (:ML_OBJECT_CODE is null) or'
      '                        (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      '                      ) and'
      ''
      
        '                      ( (:MLL_PRODUCTION_ORDER_TYPE_CODE is null' +
        ') or'
      
        '                        (s.PRODUCTION_ORDER_TYPE_CODE = :MLL_PRO' +
        'DUCTION_ORDER_TYPE_CODE)'
      '                      ) and'
      ''
      '                      ( (:MLL_SALE_BRANCH_CODE is null) or'
      
        '                        (s.SALE_BRANCH_CODE = :MLL_SALE_BRANCH_C' +
        'ODE)'
      '                      ) and'
      ''
      '                      ( (:MLL_SALE_NO is null) or'
      '                        (s.SALE_NO = :MLL_SALE_NO)'
      '                      ) and'
      ''
      '                      ( (:MLL_SALE_TYPE_CODE is null) or'
      '                        (s.SALE_TYPE_CODE = :MLL_SALE_TYPE_CODE)'
      '                      ) and'
      ''
      
        '                      ( (:EE_DMG_PROCESS_PRODUCT_CODE is null) o' +
        'r'
      
        '                        (exists %EXISTS_PRODUCT_RELATION[ml.RESU' +
        'LT_PRODUCT_CODE~ :EE_DMG_PROCESS_PRODUCT_CODE])'
      '                      )'
      '                  )'
      '                )'
      '              ) or'
      ''
      
        '              ( (:EE_DAMAGE_PROCESS_TYPE_CODE = %eedpt_DELIVERY)' +
        ' and'
      '                (exists'
      '                  ( select'
      '                      1'
      '                    from'
      '                      DELIVERY_CONTRACTS dc,'
      '                      DEFICIT_COVER_DECISIONS dcd,'
      '                      DELIVERY_PROJECTS dp'
      '                    where'
      
        '                      (dc.DELIVERY_OBJECT_BRANCH_CODE = eed.DELI' +
        'VERY_OBJECT_BRANCH_CODE) and'
      
        '                      (dc.DELIVERY_OBJECT_CODE = eed.DELIVERY_OB' +
        'JECT_CODE) and'
      ''
      
        '                      (dc.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '                      (dc.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE)' +
        ' and'
      ''
      
        '                      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT' +
        '_BRANCH_CODE) and'
      
        '                      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) ' +
        'and'
      
        '                      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PR' +
        'OJECT_CODE) and'
      ''
      
        '                      ( (:DELIVERY_OBJECT_BRANCH_CODE is null) o' +
        'r'
      
        '                        (dc.DELIVERY_OBJECT_BRANCH_CODE = :DELIV' +
        'ERY_OBJECT_BRANCH_CODE)'
      '                      ) and'
      ''
      '                      ( (:DELIVERY_OBJECT_CODE is null) or'
      
        '                        (dc.DELIVERY_OBJECT_CODE = :DELIVERY_OBJ' +
        'ECT_CODE)'
      '                      ) and'
      ''
      
        '                      ( (:DEL_DELIVERY_DEAL_TYPE_CODE is null) o' +
        'r'
      
        '                        (dcd.DELIVERY_DEAL_TYPE_CODE = :DEL_DELI' +
        'VERY_DEAL_TYPE_CODE)'
      '                      ) and'
      ''
      '                      ( (:DEL_DCD_BRANCH_CODE is null) or'
      
        '                        (dcd.DCD_BRANCH_CODE = :DEL_DCD_BRANCH_C' +
        'ODE)'
      '                      ) and'
      ''
      '                      ( (:DEL_DCD_CODE is null) or'
      '                        (dcd.DCD_CODE = :DEL_DCD_CODE)'
      '                      ) and'
      ''
      '                      ( (:DEL_DELIVERY_PROJECT_CODE is null) or'
      
        '                        (dc.DELIVERY_PROJECT_CODE = :DEL_DELIVER' +
        'Y_PROJECT_CODE)'
      '                      ) and'
      ''
      
        '                      ( (:EE_DMG_PROCESS_PRODUCT_CODE is null) o' +
        'r'
      
        '                        (exists %EXISTS_PRODUCT_RELATION[dp.PROD' +
        'UCT_CODE~ :EE_DMG_PROCESS_PRODUCT_CODE])'
      '                      ) and'
      ''
      '                      ( (:COMPANY_CODE is null) or'
      '                        (dp.VENDOR_COMPANY_CODE = :COMPANY_CODE)'
      '                      )'
      '                  )'
      '                )'
      '              ) or'
      ''
      
        '              ( (:EE_DAMAGE_PROCESS_TYPE_CODE = %eedpt_SALE_SHIP' +
        'MENT) and'
      '                (exists'
      '                  ( select'
      '                      1'
      '                    from'
      '                      SALE_SHIPMENTS ss,'
      '                      SALES s'
      '                    where'
      
        '                      (ss.SHIPMENT_OBJECT_BRANCH_CODE = eed.SHIP' +
        'MENT_OBJECT_BRANCH_CODE) and'
      
        '                      (ss.SHIPMENT_OBJECT_CODE = eed.SHIPMENT_OB' +
        'JECT_CODE) and'
      ''
      
        '                      (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '                      (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE)' +
        ' and'
      ''
      
        '                      ( (:SHIPMENT_OBJECT_BRANCH_CODE is null) o' +
        'r'
      
        '                        (ss.SHIPMENT_OBJECT_BRANCH_CODE = :SHIPM' +
        'ENT_OBJECT_BRANCH_CODE)'
      '                      ) and'
      ''
      '                      ( (:SHIPMENT_OBJECT_CODE is null) or'
      
        '                        (ss.SHIPMENT_OBJECT_CODE = :SHIPMENT_OBJ' +
        'ECT_CODE)'
      '                      ) and'
      ''
      '                      ( (:SHP_SALE_DEAL_TYPE_CODE is null) or'
      
        '                        (s.SALE_DEAL_TYPE_CODE = :SHP_SALE_DEAL_' +
        'TYPE_CODE)'
      '                      ) and'
      ''
      '                      ( (:SHP_SALE_BRANCH_CODE is null) or'
      
        '                        (s.SALE_BRANCH_CODE = :SHP_SALE_BRANCH_C' +
        'ODE)'
      '                      ) and'
      ''
      '                      ( (:SHP_SALE_NO is null) or'
      '                        (s.SALE_NO = :SHP_SALE_NO)'
      '                      ) and'
      ''
      '                      ( (:SHP_SALE_TYPE_CODE is null) or'
      '                        (s.SALE_TYPE_CODE = :SHP_SALE_TYPE_CODE)'
      '                      ) and'
      ''
      '                      ( (:SHP_SALE_SHIPMENT_NO is null) or'
      
        '                        (ss.SALE_SHIPMENT_NO = :SHP_SALE_SHIPMEN' +
        'T_NO)'
      '                      ) and'
      ''
      
        '                      ( (:EE_DMG_PROCESS_PRODUCT_CODE is null) o' +
        'r'
      
        '                        (exists %EXISTS_PRODUCT_RELATION[s.PRODU' +
        'CT_CODE~ :EE_DMG_PROCESS_PRODUCT_CODE])'
      '                      ) and'
      ''
      '                      ( (:COMPANY_CODE is null) or'
      '                        (s.CLIENT_COMPANY_CODE = :COMPANY_CODE)'
      '                      )'
      '                  )'
      '                )'
      '              )'
      '            )'
      '          )'
      '        )'
      '      )'
      '  ) as SATISFIES_FILTER'
      ''
      'from'
      '  EXCEPT_EVENT_DAMAGES eed,'
      ''
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      '  PRODUCTS mll_p,'
      ''
      '  DELIVERY_CONTRACTS dc,'
      '  DELIVERY_PROJECTS dp,'
      '  DEFICIT_COVER_DECISIONS dcd,'
      '  PRODUCTS d_p,'
      ''
      '  SALE_SHIPMENTS ss,'
      '  SALES s,'
      '  PRODUCTS s_p'
      ''
      'where'
      
        '  (eed.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE(+)) a' +
        'nd'
      '  (eed.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE(+)) and'
      ''
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE(+)) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE(+)) and'
      ''
      '  (ml.RESULT_PRODUCT_CODE = mll_p.PRODUCT_CODE(+)) and'
      ''
      ''
      
        '  (eed.DELIVERY_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BRANCH_C' +
        'ODE(+)) and'
      '  (eed.DELIVERY_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE(+)) and'
      ''
      '  (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE(+)) and'
      '  (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE(+)) and'
      '  (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE(+)) and'
      ''
      
        '  (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE(+)) an' +
        'd'
      '  (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE(+)) and'
      ''
      '  (dp.PRODUCT_CODE = d_p.PRODUCT_CODE(+)) and'
      ''
      ''
      
        '  (eed.SHIPMENT_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_BRANCH_C' +
        'ODE(+)) and'
      '  (eed.SHIPMENT_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE(+)) and'
      ''
      
        '  (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE(+)) an' +
        'd'
      '  (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE(+)) and'
      ''
      '  (s.PRODUCT_CODE = s_p.PRODUCT_CODE(+)) and'
      ''
      '  '
      '  (eed.EXCEPT_EVENT_CODE = :EXCEPT_EVENT_CODE)'
      ''
      'order by'
      '  FORMATED_FULL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENT_DAMAGE_STATE[eed]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'    eed.CREATE_DATE~'#13#10'    Decode('#13#10'      ( sele' +
          'ct'#13#10'          Sign(Count(*))'#13#10'        from'#13#10'          EXCEPT_EVE' +
          'NT_DMG_ATTACKS eeda'#13#10'        where'#13#10'          (eeda.EXCEPT_EVENT' +
          '_DAMAGE_CODE = eed.EXCEPT_EVENT_DAMAGE_CODE) and'#13#10'          (eed' +
          'a.NORMALIZE_EMPLOYEE_CODE is null)'#13#10'      ),'#13#10'      1, ContextDate' +
          ','#13#10'      ( select'#13#10'          Max(eeda.NORMALIZE_DATE)'#13#10'        f' +
          'rom'#13#10'          EXCEPT_EVENT_DMG_ATTACKS eeda'#13#10'        where'#13#10'   ' +
          '       (eeda.EXCEPT_EVENT_DAMAGE_CODE = eed.EXCEPT_EVENT_DAMAGE_' +
          'CODE)'#13#10'      )'#13#10'    )'#13#10'  ]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'eedpt_MATERIAL_LIST_LINE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'PROCESS_OBJECT_IDENTIFIER[eed.MLL_OBJECT_BRANCH_CODE~ eed.MLL_OB' +
          'JECT_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'eedpt_DELIVERY'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'PROCESS_OBJECT_IDENTIFIER[eed.DELIVERY_OBJECT_BRANCH_CODE~ eed.D' +
          'ELIVERY_OBJECT_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'eedpt_SALE_SHIPMENT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'PROCESS_OBJECT_IDENTIFIER[eed.SHIPMENT_OBJECT_BRANCH_CODE~ eed.S' +
          'HIPMENT_OBJECT_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[mll_p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d_p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[s_p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[dcd.DELIVERY_DEAL_TYPE_CODE' +
          ']'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'ot_LEASE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[s.SALE_DEAL_TYPE_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'MEASURE_ABBREV['#13#10'    Decode(eed.EE_DAMAGE_PROCESS_TYPE_CODE,'#13#10'  ' +
          '    CommonConsts.eedptMaterialListLine, mll_p.MEASURE_CODE,'#13#10'   ' +
          '   CommonConsts.eedptDelivery, d_p.MEASURE_CODE,'#13#10'      CommonCo' +
          'nsts.eedptSaleShipment, s_p.MEASURE_CODE'#13#10'    )'#13#10'  ]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 
          'EXISTS_PRODUCT_RELATION[ml.RESULT_PRODUCT_CODE~ :EE_DMG_PROCESS_' +
          'PRODUCT_CODE]'
        ParamType = ptInput
        Value = '(select 1 from DUAL)'
      end
      item
        DataType = ftWideString
        Name = 
          'EXISTS_PRODUCT_RELATION[dp.PRODUCT_CODE~ :EE_DMG_PROCESS_PRODUCT' +
          '_CODE]'
        ParamType = ptInput
        Value = '(select 1 from DUAL)'
      end
      item
        DataType = ftWideString
        Name = 
          'EXISTS_PRODUCT_RELATION[s.PRODUCT_CODE~ :EE_DMG_PROCESS_PRODUCT_' +
          'CODE]'
        ParamType = ptInput
        Value = '(select 1 from DUAL)'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EXCEPT_EVENT_DAMAGES_FOR_EDIT'
    Left = 72
    Top = 160
    object qryExceptEventDamagesEXCEPT_EVENT_DAMAGE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_DAMAGE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryExceptEventDamagesFULL_NO: TAbmesWideStringField
      FieldName = 'FULL_NO'
      Size = 250
    end
    object qryExceptEventDamagesFORMATED_FULL_NO: TAbmesWideStringField
      FieldName = 'FORMATED_FULL_NO'
      Size = 250
    end
    object qryExceptEventDamagesEXCEPT_EVENT_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_CODE'
    end
    object qryExceptEventDamagesPARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
    end
    object qryExceptEventDamagesLOCAL_NO: TAbmesFloatField
      FieldName = 'LOCAL_NO'
    end
    object qryExceptEventDamagesSTATE_CODE: TAbmesFloatField
      FieldName = 'STATE_CODE'
    end
    object qryExceptEventDamagesCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryExceptEventDamagesEE_DAMAGE_PROCESS_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_NAME'
      Size = 100
    end
    object qryExceptEventDamagesPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
    object qryExceptEventDamagesDAMAGE_WORKDAYS: TAbmesFloatField
      FieldName = 'DAMAGE_WORKDAYS'
    end
    object qryExceptEventDamagesPROCESS_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_IDENTIFIER'
      Size = 100
    end
    object qryExceptEventDamagesPROCESS_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROCESS_PRODUCT_NO'
    end
    object qryExceptEventDamagesPROCESS_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROCESS_PRODUCT_NAME'
      Size = 100
    end
    object qryExceptEventDamagesPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryExceptEventDamagesPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryExceptEventDamagesPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object qryExceptEventDamagesPLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_BEGIN_DATE'
    end
    object qryExceptEventDamagesPLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_END_DATE'
    end
    object qryExceptEventDamagesPROCESS_PRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PROCESS_PRODUCT_QUANTITY'
    end
    object qryExceptEventDamagesPROCESS_PRODUCT_MEASURE: TAbmesWideStringField
      FieldName = 'PROCESS_PRODUCT_MEASURE'
      Size = 5
    end
    object qryExceptEventDamagesDAMAGED_PRICE: TAbmesFloatField
      FieldName = 'DAMAGED_PRICE'
    end
    object qryExceptEventDamagesSATISFIES_FILTER: TAbmesFloatField
      FieldName = 'SATISFIES_FILTER'
    end
  end
  object dsExceptEventDamage: TDataSource
    DataSet = qryExceptEventDamage
    Left = 72
    Top = 448
  end
  object qryExceptEventDamageAttacks: TAbmesSQLQuery
    DataSource = dsExceptEventDamage
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_DAMAGE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  eeda.EXCEPT_EVENT_DMG_ATTACK_CODE,'
      '  eeda.EXCEPT_EVENT_DAMAGE_CODE,'
      '  eeda.EXCEPT_EVENT_DAMAGE_ATTACK_NO,'
      '  eeda.PRODUCT_QUANTITY,'
      '  eeda.PROPOSED_PLAN_SHIFT_WORKDAYS,'
      '  eeda.NOTES,'
      '  eeda.NORMALIZE_EMPLOYEE_CODE,'
      '  eeda.NORMALIZE_DATE,'
      '  eeda.NORMALIZE_TIME'
      ''
      'from'
      '  EXCEPT_EVENT_DMG_ATTACKS eeda'
      ''
      'where'
      '  (eeda.EXCEPT_EVENT_DAMAGE_CODE = :EXCEPT_EVENT_DAMAGE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 72
    Top = 496
    object qryExceptEventDamageAttacksEXCEPT_EVENT_DMG_ATTACK_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_DMG_ATTACK_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryExceptEventDamageAttacksEXCEPT_EVENT_DAMAGE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_DAMAGE_CODE'
    end
    object qryExceptEventDamageAttacksEXCEPT_EVENT_DAMAGE_ATTACK_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_DAMAGE_ATTACK_NO'
    end
    object qryExceptEventDamageAttacksPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
    object qryExceptEventDamageAttacksPROPOSED_PLAN_SHIFT_WORKDAYS: TAbmesFloatField
      FieldName = 'PROPOSED_PLAN_SHIFT_WORKDAYS'
    end
    object qryExceptEventDamageAttacksNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryExceptEventDamageAttacksNORMALIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'NORMALIZE_EMPLOYEE_CODE'
    end
    object qryExceptEventDamageAttacksNORMALIZE_DATE: TAbmesSQLTimeStampField
      FieldName = 'NORMALIZE_DATE'
    end
    object qryExceptEventDamageAttacksNORMALIZE_TIME: TAbmesSQLTimeStampField
      FieldName = 'NORMALIZE_TIME'
    end
  end
  object prvExceptEventTasks: TDataSetProvider
    DataSet = qryExceptEventTasks
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 112
  end
  object prvExceptEventDamages: TDataSetProvider
    DataSet = qryExceptEventDamages
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 112
  end
  object qryExceptEventDamage: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_DAMAGE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eed.EXCEPT_EVENT_DAMAGE_CODE,'
      '  eed.EXCEPT_EVENT_CODE,'
      '  eed.PARENT_CODE,'
      '  %EXCEPT_EVENT_DAMAGE_STATE[eed] as STATE_CODE,'
      '  %COUNT_WORKDAYS['
      '    eed.CREATE_DATE~'
      '    Decode('
      '      ( select'
      '          Sign(Count(*))'
      '        from'
      '          EXCEPT_EVENT_DMG_ATTACKS eeda'
      '        where'
      
        '          (eeda.EXCEPT_EVENT_DAMAGE_CODE = eed.EXCEPT_EVENT_DAMA' +
        'GE_CODE) and'
      '          (eeda.NORMALIZE_EMPLOYEE_CODE is null)'
      '      ),'
      '      1, ContextDate,'
      '      ( select'
      '          Max(eeda.NORMALIZE_DATE)'
      '        from'
      '          EXCEPT_EVENT_DMG_ATTACKS eeda'
      '        where'
      
        '          (eeda.EXCEPT_EVENT_DAMAGE_CODE = eed.EXCEPT_EVENT_DAMA' +
        'GE_CODE)'
      '      )'
      '    )'
      '  ] as DAMAGE_WORKDAYS,'
      ''
      
        '  Cast(MiscUtils.GetExceptEventDamageFullNo(eed.PARENT_CODE) as ' +
        'Varchar2(100 char)) as PARENT_FULL_NO,'
      ''
      '  eed.LOCAL_NO,'
      '  eed.EE_DAMAGE_PROCESS_TYPE_CODE,'
      '  eed.PRODUCT_QUANTITY,'
      '  eed.CREATE_EMPLOYEE_CODE,'
      '  eed.CREATE_DATE,'
      '  eed.CREATE_TIME,'
      '  eed.CHANGE_EMPLOYEE_CODE,'
      '  eed.CHANGE_DATE,'
      '  eed.CHANGE_TIME,'
      '  eed.MLL_OBJECT_BRANCH_CODE,'
      '  eed.MLL_OBJECT_CODE,'
      '  eed.DELIVERY_OBJECT_BRANCH_CODE,'
      '  eed.DELIVERY_OBJECT_CODE,'
      '  eed.SHIPMENT_OBJECT_BRANCH_CODE,'
      '  eed.SHIPMENT_OBJECT_CODE,'
      ''
      '  Decode(eed.EE_DAMAGE_PROCESS_TYPE_CODE,'
      '    %eedpt_MATERIAL_LIST_LINE, eed.MLL_OBJECT_BRANCH_CODE,'
      '    %eedpt_DELIVERY, eed.DELIVERY_OBJECT_BRANCH_CODE,'
      '    %eedpt_SALE_SHIPMENT, eed.SHIPMENT_OBJECT_BRANCH_CODE'
      '  ) as BND_PROCESS_OBJECT_BRANCH_CODE,'
      ''
      '  Decode(eed.EE_DAMAGE_PROCESS_TYPE_CODE,'
      '    %eedpt_MATERIAL_LIST_LINE, eed.MLL_OBJECT_CODE,'
      '    %eedpt_DELIVERY, eed.DELIVERY_OBJECT_CODE,'
      '    %eedpt_SALE_SHIPMENT, eed.SHIPMENT_OBJECT_CODE'
      '  ) as BND_PROCESS_OBJECT_CODE'
      ''
      'from'
      '  EXCEPT_EVENT_DAMAGES eed'
      ''
      'where'
      '  (eed.EXCEPT_EVENT_DAMAGE_CODE = :EXCEPT_EVENT_DAMAGE_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENT_DAMAGE_STATE[eed]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'    eed.CREATE_DATE~'#13#10'    Decode('#13#10'      ( sele' +
          'ct'#13#10'          Sign(Count(*))'#13#10'        from'#13#10'          EXCEPT_EVE' +
          'NT_DMG_ATTACKS eeda'#13#10'        where'#13#10'          (eeda.EXCEPT_EVENT' +
          '_DAMAGE_CODE = eed.EXCEPT_EVENT_DAMAGE_CODE) and'#13#10'          (eed' +
          'a.NORMALIZE_EMPLOYEE_CODE is null)'#13#10'      ),'#13#10'      1, ContextDate' +
          ','#13#10'      ( select'#13#10'          Max(eeda.NORMALIZE_DATE)'#13#10'        f' +
          'rom'#13#10'          EXCEPT_EVENT_DMG_ATTACKS eeda'#13#10'        where'#13#10'   ' +
          '       (eeda.EXCEPT_EVENT_DAMAGE_CODE = eed.EXCEPT_EVENT_DAMAGE_' +
          'CODE)'#13#10'      )'#13#10'    )'#13#10'  ]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'eedpt_MATERIAL_LIST_LINE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'eedpt_DELIVERY'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'eedpt_SALE_SHIPMENT'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EXCEPT_EVENT_DAMAGES_FOR_EDIT'
    Left = 72
    Top = 400
    object qryExceptEventDamageEXCEPT_EVENT_DAMAGE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_DAMAGE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryExceptEventDamageEXCEPT_EVENT_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_CODE'
    end
    object qryExceptEventDamagePARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
    end
    object qryExceptEventDamageSTATE_CODE: TAbmesFloatField
      FieldName = 'STATE_CODE'
      ProviderFlags = []
    end
    object qryExceptEventDamageDAMAGE_WORKDAYS: TAbmesFloatField
      FieldName = 'DAMAGE_WORKDAYS'
      ProviderFlags = []
    end
    object qryExceptEventDamagePARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryExceptEventDamageLOCAL_NO: TAbmesFloatField
      FieldName = 'LOCAL_NO'
    end
    object qryExceptEventDamageEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_CODE'
    end
    object qryExceptEventDamagePRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
    object qryExceptEventDamageCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryExceptEventDamageCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryExceptEventDamageCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryExceptEventDamageCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryExceptEventDamageCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryExceptEventDamageCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryExceptEventDamageMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryExceptEventDamageMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryExceptEventDamageDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
    end
    object qryExceptEventDamageDELIVERY_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
    object qryExceptEventDamageSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_BRANCH_CODE'
    end
    object qryExceptEventDamageSHIPMENT_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_CODE'
    end
    object qryExceptEventDamageBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryExceptEventDamageBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
      ProviderFlags = []
    end
  end
  object qryExceptEventTask: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TASK_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eet.EXCEPT_EVENT_TASK_CODE,'
      '  %EXCEPT_EVENT_TASK_STATE[eet] as STATE_CODE,'
      '  eet.EXCEPT_EVENT_CODE,'
      '  eet.EXCEPT_EVENT_TASK_NO,'
      
        '  %COUNT_WORKDAYS[eet.CREATE_DATE~ Coalesce(eet.CLOSE_DATE, Cont' +
        'extDate)] as TASK_REAL_WORKDAYS,'
      '  eet.DEPT_CODE,'
      '  eet.EMPLOYEE_CODE,'
      '  eet.DESCRIPTION,'
      '  eet.DOC_BRANCH_CODE,'
      '  eet.DOC_CODE,'
      '  %HAS_DOC_ITEMS[eet] as HAS_DOC_ITEMS,'
      '  eet.NOTES,'
      '  eet.ACTIVATE_EMPLOYEE_CODE,'
      '  eet.ACTIVATE_DATE,'
      '  eet.ACTIVATE_TIME,'
      '  eet.PLAN_DATE,'
      '  eet.PROBLEM_ENCOUNTER_EMP_CODE,'
      '  eet.PROBLEM_ENCOUNTER_DATE,'
      '  eet.PROBLEM_ENCOUNTER_TIME,'
      '  eet.PROBLEM_RESOLVE_EMPLOYEE_CODE,'
      '  eet.PROBLEM_RESOLVE_DATE,'
      '  eet.PROBLEM_RESOLVE_TIME,'
      '  eet.CREATE_EMPLOYEE_CODE,'
      '  eet.CREATE_DATE,'
      '  eet.CREATE_TIME,'
      '  eet.CHANGE_EMPLOYEE_CODE,'
      '  eet.CHANGE_DATE,'
      '  eet.CHANGE_TIME,'
      '  eet.CLOSE_EMPLOYEE_CODE,'
      '  eet.CLOSE_DATE,'
      '  eet.CLOSE_TIME,'
      '  eet.ANNUL_EMPLOYEE_CODE,'
      '  eet.ANNUL_DATE,'
      '  eet.ANNUL_TIME,'
      '  eet.EE_TASK_RESOLVE_TYPE_CODE'
      ''
      'from'
      '  EXCEPT_EVENT_TASKS eet'
      ''
      'where'
      '  (eet.EXCEPT_EVENT_TASK_CODE = :EXCEPT_EVENT_TASK_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENT_TASK_STATE[eet]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS[eet.CREATE_DATE~ Coalesce(eet.CLOSE_DATE, ContextDa' +
          'te)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[eet]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EXCEPT_EVENT_TASKS_FOR_EDIT'
    AfterProviderStartTransaction = qryExceptEventTaskAfterProviderStartTransaction
    Left = 200
    Top = 400
    object qryExceptEventTaskEXCEPT_EVENT_TASK_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TASK_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryExceptEventTaskSTATE_CODE: TAbmesFloatField
      FieldName = 'STATE_CODE'
      ProviderFlags = []
    end
    object qryExceptEventTaskEXCEPT_EVENT_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_CODE'
    end
    object qryExceptEventTaskEXCEPT_EVENT_TASK_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TASK_NO'
    end
    object qryExceptEventTaskTASK_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'TASK_REAL_WORKDAYS'
      ProviderFlags = []
    end
    object qryExceptEventTaskDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryExceptEventTaskEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryExceptEventTaskDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 2000
    end
    object qryExceptEventTaskDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryExceptEventTaskDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryExceptEventTaskHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryExceptEventTaskNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 2000
    end
    object qryExceptEventTaskACTIVATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ACTIVATE_EMPLOYEE_CODE'
    end
    object qryExceptEventTaskACTIVATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'ACTIVATE_DATE'
    end
    object qryExceptEventTaskACTIVATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'ACTIVATE_TIME'
    end
    object qryExceptEventTaskPLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_DATE'
    end
    object qryExceptEventTaskPROBLEM_ENCOUNTER_EMP_CODE: TAbmesFloatField
      FieldName = 'PROBLEM_ENCOUNTER_EMP_CODE'
    end
    object qryExceptEventTaskPROBLEM_ENCOUNTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROBLEM_ENCOUNTER_DATE'
    end
    object qryExceptEventTaskPROBLEM_ENCOUNTER_TIME: TAbmesSQLTimeStampField
      FieldName = 'PROBLEM_ENCOUNTER_TIME'
    end
    object qryExceptEventTaskPROBLEM_RESOLVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'PROBLEM_RESOLVE_EMPLOYEE_CODE'
    end
    object qryExceptEventTaskPROBLEM_RESOLVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROBLEM_RESOLVE_DATE'
    end
    object qryExceptEventTaskPROBLEM_RESOLVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'PROBLEM_RESOLVE_TIME'
    end
    object qryExceptEventTaskCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryExceptEventTaskCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryExceptEventTaskCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryExceptEventTaskCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryExceptEventTaskCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryExceptEventTaskCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryExceptEventTaskCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryExceptEventTaskCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryExceptEventTaskCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryExceptEventTaskANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryExceptEventTaskANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryExceptEventTaskANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryExceptEventTaskEE_TASK_RESOLVE_TYPE_CODE: TAbmesFloatField
      FieldName = 'EE_TASK_RESOLVE_TYPE_CODE'
      Required = True
    end
  end
  object prvExceptEventDamage: TDataSetProvider
    DataSet = qryExceptEventDamage
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvExceptEventDamageBeforeUpdateRecord
    Left = 72
    Top = 352
  end
  object prvExceptEventTask: TDataSetProvider
    DataSet = qryExceptEventTask
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvExceptEventTaskBeforeUpdateRecord
    BeforeApplyUpdates = prvExceptEventTaskBeforeApplyUpdates
    AfterApplyUpdates = prvExceptEventTaskAfterApplyUpdates
    Left = 200
    Top = 352
  end
  object qryExceptEvent: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ee.EXCEPT_EVENT_CODE,'
      ''
      '  %EXCEPT_EVENT_STATE[ee] as STATE_CODE,'
      ''
      '  ee.EXCEPT_EVENT_NO,'
      '  ee.EXCEPT_EVENT_TYPE_CODE,'
      '  ee.EXCEPT_EVENT_LEVEL_CODE,'
      '  ee.EXCEPT_EVENT_GEN_TYPE_CODE,'
      '  ee.PRODUCT_CODE,'
      '  ee.DEPT_CODE,'
      '  ee.DESCRIPTION,'
      '  ee.DOC_BRANCH_CODE,'
      '  ee.DOC_CODE,'
      '  %HAS_DOC_ITEMS[ee] as HAS_DOC_ITEMS,'
      '  ee.DETECT_DEPT_CODE,'
      '  ee.DETECT_EMPLOYEE_CODE,'
      '  ee.DETECT_DATE,'
      '  ee.DETECT_TIME,'
      '  ee.CTRL_DEPT_CODE,'
      '  ee.CTRL_ACCEPT_EMPLOYEE_CODE,'
      '  ee.CTRL_ACCEPT_DATE,'
      '  ee.CTRL_ACCEPT_TIME,'
      '  ee.CTRL_MAIN_EMPLOYEE_CODE,'
      '  ee.CTRL_ACTIVATE_EMPLOYEE_CODE,'
      '  ee.CTRL_ACTIVATE_DATE,'
      '  ee.CTRL_ACTIVATE_TIME,'
      '  ee.DMG_RESOLVE_EMPLOYEE_CODE,'
      '  ee.DMG_RESOLVE_PLAN_BEGIN_DATE,'
      '  ee.DMG_RESOLVE_PLAN_END_DATE,'
      '  ee.DMG_RESOLVE_DATE,'
      '  ee.DMG_RESOLVE_TIME,'
      ''
      '  Nvl2(ee.DMG_RESOLVE_PLAN_BEGIN_DATE,'
      
        '    %COUNT_WORKDAYS[ee.DMG_RESOLVE_PLAN_BEGIN_DATE~ Coalesce(ee.' +
        'DMG_RESOLVE_DATE, ContextDate)],'
      '    null'
      '  ) as DMG_RESOLVE_REAL_WORKDAYS,'
      ''
      '  ee.RESOLVE_PLAN_BEGIN_DATE,'
      '  ee.RESOLVE_PLAN_END_DATE,'
      '  ee.RESOLVE_EMPLOYEE_CODE,'
      '  ee.RESOLVE_DATE,'
      '  ee.RESOLVE_TIME,'
      ''
      '  Nvl2(ee.RESOLVE_PLAN_BEGIN_DATE,'
      
        '    %COUNT_WORKDAYS[ee.RESOLVE_PLAN_BEGIN_DATE~ Coalesce(ee.RESO' +
        'LVE_DATE, ContextDate)],'
      '    null'
      '  ) as RESOLVE_REAL_WORKDAYS,'
      ''
      '  ee.CREATE_EMPLOYEE_CODE,'
      '  ee.CREATE_DATE,'
      '  ee.CREATE_TIME,'
      '  ee.CHANGE_EMPLOYEE_CODE,'
      '  ee.CHANGE_DATE,'
      '  ee.CHANGE_TIME,'
      '  ee.CLOSE_EMPLOYEE_CODE,'
      '  ee.CLOSE_DATE,'
      '  ee.CLOSE_TIME,'
      '  ee.ANNUL_EMPLOYEE_CODE,'
      '  ee.ANNUL_DATE,'
      '  ee.ANNUL_TIME,'
      '  ee.OM_BRANCH_CODE,'
      '  ee.OM_CODE,'
      '  ee.SALE_OBJECT_BRANCH_CODE,'
      '  ee.SALE_OBJECT_CODE,'
      '  ee.DCD_OBJECT_BRANCH_CODE,'
      '  ee.DCD_OBJECT_CODE,'
      '  ee.DELIVERY_PROJECT_CODE,'
      '  ee.PRODUCT_QUANTITY,'
      ''
      '  ( select'
      '      p.MEASURE_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = ee.PRODUCT_CODE)'
      '  ) as PRODUCT_MEASURE_CODE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      EXCEPT_EVENT_CAUSES eec'
      '    where'
      '      (eec.EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE)'
      '  ) as HAS_CAUSES,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      EXCEPT_EVENT_CAUSES eec'
      '    where'
      '      (eec.CAUSE_EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE)'
      '  ) as HAS_CONSEQUENCES,'
      ''
      '  ee.ORG_TASK_PROPOSAL_CODE,'
      '  ee.OTP_BIND_EMPLOYEE_CODE,'
      '  ee.OTP_BIND_DATE,'
      '  ee.OTP_BIND_TIME,'
      '  ee.PRC_CONCRETE_OP_CODE,'
      '  ee.IS_SINGLE_RESOLVABLE'
      ''
      'from'
      '  EXCEPT_EVENTS ee'
      ''
      'where'
      '  (ee.EXCEPT_EVENT_CODE = :EXCEPT_EVENT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENT_STATE[ee]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[ee]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS[ee.DMG_RESOLVE_PLAN_BEGIN_DATE~ Coalesce(ee.DMG_R' +
          'ESOLVE_DATE, ContextDate)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS[ee.RESOLVE_PLAN_BEGIN_DATE~ Coalesce(ee.RESOLVE_D' +
          'ATE, ContextDate)]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EXCEPT_EVENTS_FOR_EDIT'
    AfterProviderStartTransaction = qryExceptEventAfterProviderStartTransaction
    Left = 136
    Top = 304
    object qryExceptEventEXCEPT_EVENT_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryExceptEventSTATE_CODE: TAbmesFloatField
      FieldName = 'STATE_CODE'
      ProviderFlags = []
    end
    object qryExceptEventEXCEPT_EVENT_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_NO'
    end
    object qryExceptEventEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TYPE_CODE'
    end
    object qryExceptEventEXCEPT_EVENT_GEN_TYPE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_CODE'
    end
    object qryExceptEventPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryExceptEventDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryExceptEventDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object qryExceptEventDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryExceptEventDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryExceptEventHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryExceptEventDETECT_DEPT_CODE: TAbmesFloatField
      FieldName = 'DETECT_DEPT_CODE'
    end
    object qryExceptEventDETECT_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DETECT_EMPLOYEE_CODE'
    end
    object qryExceptEventDETECT_DATE: TAbmesSQLTimeStampField
      FieldName = 'DETECT_DATE'
    end
    object qryExceptEventDETECT_TIME: TAbmesSQLTimeStampField
      FieldName = 'DETECT_TIME'
    end
    object qryExceptEventCTRL_DEPT_CODE: TAbmesFloatField
      FieldName = 'CTRL_DEPT_CODE'
    end
    object qryExceptEventCTRL_ACCEPT_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CTRL_ACCEPT_EMPLOYEE_CODE'
    end
    object qryExceptEventCTRL_ACCEPT_DATE: TAbmesSQLTimeStampField
      FieldName = 'CTRL_ACCEPT_DATE'
    end
    object qryExceptEventCTRL_ACCEPT_TIME: TAbmesSQLTimeStampField
      FieldName = 'CTRL_ACCEPT_TIME'
    end
    object qryExceptEventCTRL_MAIN_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CTRL_MAIN_EMPLOYEE_CODE'
    end
    object qryExceptEventCTRL_ACTIVATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CTRL_ACTIVATE_EMPLOYEE_CODE'
    end
    object qryExceptEventCTRL_ACTIVATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CTRL_ACTIVATE_DATE'
    end
    object qryExceptEventCTRL_ACTIVATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CTRL_ACTIVATE_TIME'
    end
    object qryExceptEventDMG_RESOLVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DMG_RESOLVE_EMPLOYEE_CODE'
    end
    object qryExceptEventDMG_RESOLVE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DMG_RESOLVE_PLAN_BEGIN_DATE'
    end
    object qryExceptEventDMG_RESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DMG_RESOLVE_PLAN_END_DATE'
    end
    object qryExceptEventDMG_RESOLVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'DMG_RESOLVE_DATE'
    end
    object qryExceptEventDMG_RESOLVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'DMG_RESOLVE_TIME'
    end
    object qryExceptEventDMG_RESOLVE_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'DMG_RESOLVE_REAL_WORKDAYS'
      ProviderFlags = []
    end
    object qryExceptEventRESOLVE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RESOLVE_PLAN_BEGIN_DATE'
    end
    object qryExceptEventRESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'RESOLVE_PLAN_END_DATE'
    end
    object qryExceptEventRESOLVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'RESOLVE_EMPLOYEE_CODE'
    end
    object qryExceptEventRESOLVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RESOLVE_DATE'
    end
    object qryExceptEventRESOLVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'RESOLVE_TIME'
    end
    object qryExceptEventRESOLVE_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'RESOLVE_REAL_WORKDAYS'
      ProviderFlags = []
    end
    object qryExceptEventCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryExceptEventCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryExceptEventCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryExceptEventCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryExceptEventCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryExceptEventCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryExceptEventCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryExceptEventCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryExceptEventCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryExceptEventANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryExceptEventANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryExceptEventANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryExceptEventOM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OM_BRANCH_CODE'
    end
    object qryExceptEventOM_CODE: TAbmesFloatField
      FieldName = 'OM_CODE'
    end
    object qryExceptEventSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object qryExceptEventSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object qryExceptEventDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object qryExceptEventDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object qryExceptEventDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object qryExceptEventPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
    object qryExceptEventEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_LEVEL_CODE'
    end
    object qryExceptEventHAS_CAUSES: TAbmesFloatField
      FieldName = 'HAS_CAUSES'
      ProviderFlags = []
    end
    object qryExceptEventHAS_CONSEQUENCES: TAbmesFloatField
      FieldName = 'HAS_CONSEQUENCES'
      ProviderFlags = []
    end
    object qryExceptEventPRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryExceptEventORG_TASK_PROPOSAL_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_CODE'
    end
    object qryExceptEventOTP_BIND_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OTP_BIND_EMPLOYEE_CODE'
    end
    object qryExceptEventOTP_BIND_DATE: TAbmesSQLTimeStampField
      FieldName = 'OTP_BIND_DATE'
    end
    object qryExceptEventOTP_BIND_TIME: TAbmesSQLTimeStampField
      FieldName = 'OTP_BIND_TIME'
    end
    object qryExceptEventPRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_CODE'
    end
    object qryExceptEventIS_SINGLE_RESOLVABLE: TAbmesFloatField
      FieldName = 'IS_SINGLE_RESOLVABLE'
      Required = True
    end
  end
  object prvExceptEvent: TDataSetProvider
    DataSet = qryExceptEvent
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvExceptEventBeforeUpdateRecord
    BeforeApplyUpdates = prvExceptEventBeforeApplyUpdates
    AfterApplyUpdates = prvExceptEventAfterApplyUpdates
    Left = 136
    Top = 256
  end
  object qryGetNewExceptEventTaskCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_EXCEPT_EVENT_TASKS.NextVal as NEW_EXCEPT_EVENT_TASK_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 648
    Top = 128
    object qryGetNewExceptEventTaskCodeNEW_EXCEPT_EVENT_TASK_CODE: TAbmesFloatField
      FieldName = 'NEW_EXCEPT_EVENT_TASK_CODE'
    end
  end
  object qryGetNextExceptEventTaskNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(eet.EXCEPT_EVENT_TASK_NO), 0) + 1) as NEXT_EXCEP' +
        'T_EVENT_TASK_NO'
      'from'
      '  EXCEPT_EVENT_TASKS eet'
      'where'
      '  (eet.EXCEPT_EVENT_CODE = :EXCEPT_EVENT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 648
    Top = 176
    object qryGetNextExceptEventTaskNoNEXT_EXCEPT_EVENT_TASK_NO: TAbmesFloatField
      FieldName = 'NEXT_EXCEPT_EVENT_TASK_NO'
    end
  end
  object qryGetNewExceptEventDamageAttackCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_EXCEPT_EVENT_DMG_ATTACKS.NextVal as NEW_EE_DMG_ATTACK_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 240
    object qryGetNewExceptEventDamageAttackCodeNEW_EE_DMG_ATTACK_CODE: TAbmesFloatField
      FieldName = 'NEW_EE_DMG_ATTACK_CODE'
    end
  end
  object qryExcepteEventDamageProcessTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  eedpt.EE_DAMAGE_PROCESS_TYPE_CODE,'
      '  eedpt.EE_DAMAGE_PROCESS_TYPE_NO,'
      '  eedpt.EE_DAMAGE_PROCESS_TYPE_NAME,'
      '  eedpt.EE_DAMAGE_PROCESS_TYPE_ABBREV'
      'from'
      '  EE_DAMAGE_PROCESS_TYPES eedpt'
      'order by'
      '  eedpt.EE_DAMAGE_PROCESS_TYPE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 464
    Top = 176
    object qryExcepteEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryExcepteEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_NO: TAbmesFloatField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_NO'
    end
    object qryExcepteEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_NAME'
      Size = 100
    end
    object qryExcepteEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_ABBREV'
      Size = 100
    end
  end
  object prvExceptEventDamgeProcessTypes: TDataSetProvider
    DataSet = qryExcepteEventDamageProcessTypes
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 128
  end
  object qryMaterialListLineData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ml.RESULT_PRODUCT_CODE as PRODUCT_CODE,'
      '  (ml.TECH_QUANTITY / p.TECH_MEASURE_COEF) as PRODUCT_QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  ml.ENTER_RESULT_STORE_BEGIN_DATE as PLAN_BEGIN_DATE,'
      '  ml.ENTER_RESULT_STORE_END_DATE as PLAN_END_DATE'
      ''
      'from'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      '  PRODUCTS p'
      ''
      'where'
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      '  (ml.RESULT_PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (mll.MLL_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = :MLL_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 312
    Top = 504
    object qryMaterialListLineDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryMaterialListLineDataPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
    object qryMaterialListLineDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryMaterialListLineDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_BEGIN_DATE'
    end
    object qryMaterialListLineDataPLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_END_DATE'
    end
  end
  object prvMaterialListLineData: TDataSetProvider
    DataSet = qryMaterialListLineData
    UpdateMode = upWhereKeyOnly
    Left = 312
    Top = 456
  end
  object prvDeliveryData: TDataSetProvider
    DataSet = qryDeliveryData
    UpdateMode = upWhereKeyOnly
    Left = 424
    Top = 456
  end
  object qryDeliveryData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.PRODUCT_CODE,'
      '  dp.WORK_QUANTITY as PRODUCT_QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = dp.PRODUCT_CODE) and'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  Decode('
      
        '    %GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[dcd.DELIVERY_DEAL_TYPE' +
        '_CODE],'
      '    %ot_LEASE, dp.RECEIVE_DATE,'
      '    dp.DELIVERY_DATE'
      '  ) as PLAN_BEGIN_DATE,'
      ''
      '  Decode('
      
        '    %GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[dcd.DELIVERY_DEAL_TYPE' +
        '_CODE],'
      '    %ot_LEASE, dp.RETURN_DATE,'
      '    dp.DELIVERY_DATE'
      '  ) as PLAN_END_DATE'
      ''
      'from'
      '  DELIVERY_CONTRACTS dc,'
      '  DELIVERY_PROJECTS dp,'
      '  DEFICIT_COVER_DECISIONS dcd'
      ''
      'where'
      '  (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) and'
      '  (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '  (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE) and'
      ''
      '  (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      ''
      
        '  (dc.DELIVERY_OBJECT_BRANCH_CODE = :DELIVERY_OBJECT_BRANCH_CODE' +
        ') and'
      '  (dc.DELIVERY_OBJECT_CODE = :DELIVERY_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[dcd.DELIVERY_DEAL_TYPE_CODE' +
          ']'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'ot_LEASE'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 424
    Top = 504
    object qryDeliveryDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryDeliveryDataPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
    object qryDeliveryDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryDeliveryDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_BEGIN_DATE'
    end
    object qryDeliveryDataPLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_END_DATE'
    end
  end
  object qrySaleShipmentData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.PRODUCT_CODE,'
      '  ss.PLAN_QUANTITY as PRODUCT_QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = s.PRODUCT_CODE) and'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  Decode('
      
        '    %GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[s.SALE_DEAL_TYPE_CODE]' +
        ','
      '    %ot_LEASE, ss.RECEIVE_PLAN_DATE,'
      '    ss.SHIPMENT_PLAN_DATE'
      '  ) as PLAN_BEGIN_DATE,'
      ''
      '  Decode('
      
        '    %GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[s.SALE_DEAL_TYPE_CODE]' +
        ','
      '    %ot_LEASE, ss.RETURN_PLAN_DATE,'
      '    ss.SHIPMENT_PLAN_DATE'
      '  ) as PLAN_END_DATE,'
      ''
      '  ( select'
      '      s.SINGLE_PRICE * cr.FIXING'
      '    from'
      '      CURRENCY_RATES cr'
      '    where'
      '      (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      '      (cr.RATE_DATE ='
      '        Least('
      '          ContextDate,'
      '          Decode('
      
        '            %GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[s.SALE_DEAL_TY' +
        'PE_CODE],'
      '            %ot_LEASE, ss.RECEIVE_PLAN_DATE,'
      '            ss.SHIPMENT_PLAN_DATE'
      '          )'
      '        )'
      '      )'
      '  ) as SINGLE_PRICE,'
      ''
      '  ( select'
      '      c.CURRENCY_ABBREV'
      '    from'
      '      INTERNAL_VALUES iv,'
      '      CURRENCIES c'
      '    where'
      '      (iv.CODE = 1) and'
      '      (c.CURRENCY_CODE = iv.BASE_CURRENCY_CODE)'
      '  ) as CURRENCY_ABBREV'
      ''
      'from'
      '  SALE_SHIPMENTS ss,'
      '  SALES s'
      ''
      'where'
      '  (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and'
      '  (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '  (ss.SHIPMENT_OBJECT_BRANCH_CODE = :SHIPMENT_OBJECT_BRANCH_CODE' +
        ') and'
      '  (ss.SHIPMENT_OBJECT_CODE = :SHIPMENT_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'GET_BORDER_DEAL_TYPE_OBTAINMENT_TYPE[s.SALE_DEAL_TYPE_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'ot_LEASE'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 528
    Top = 504
    object qrySaleShipmentDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qrySaleShipmentDataPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
    object qrySaleShipmentDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qrySaleShipmentDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_BEGIN_DATE'
    end
    object qrySaleShipmentDataPLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_END_DATE'
    end
    object qrySaleShipmentDataSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object qrySaleShipmentDataCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
  end
  object prvSaleShipmentData: TDataSetProvider
    DataSet = qrySaleShipmentData
    UpdateMode = upWhereKeyOnly
    Left = 528
    Top = 456
  end
  object qryGetNewExceptEventDamageCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  seq_EXCEPT_EVENT_DAMAGES.NextVal as NEW_EXCEPT_EVENT_DAMAGE_CO' +
        'DE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 352
    object qryGetNewExceptEventDamageCodeNEW_EXCEPT_EVENT_DAMAGE_CODE: TAbmesFloatField
      FieldName = 'NEW_EXCEPT_EVENT_DAMAGE_CODE'
    end
  end
  object qryGetNextExceptEventDamageLocalNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(eed.LOCAL_NO), 0) + 1) as NEXT_EE_DAMAGE_LOCAL_N' +
        'O'
      'from'
      '  EXCEPT_EVENT_DAMAGES eed'
      'where'
      '  (Coalesce(eed.PARENT_CODE, 0) = :PARENT_CODE) and'
      '  (eed.EXCEPT_EVENT_CODE = :EXCEPT_EVENT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 400
    object qryGetNextExceptEventDamageLocalNoNEXT_EE_DAMAGE_LOCAL_NO: TAbmesFloatField
      FieldName = 'NEXT_EE_DAMAGE_LOCAL_NO'
    end
  end
  object qryGetNewExceptEventCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_EXCEPT_EVENTS.NextVal as NEW_EXCEPT_EVENT_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 448
    Top = 240
    object qryGetNewExceptEventCodeNEW_EXCEPT_EVENT_CODE: TAbmesFloatField
      FieldName = 'NEW_EXCEPT_EVENT_CODE'
    end
  end
  object qryGetNewExceptEventNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_EXCEPT_EVENT_NO.NextVal as NEW_EXCEPT_EVENT_NO'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 448
    Top = 288
    object qryGetNewExceptEventNoNEW_EXCEPT_EVENT_NO: TAbmesFloatField
      FieldName = 'NEW_EXCEPT_EVENT_NO'
    end
  end
  object qryGetOMGeneratorData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mll.DETAIL_CODE as PRODUCT_CODE,'
      
        '  (om.TOTAL_DETAIL_TECH_QUANTITY / p.TECH_MEASURE_COEF) as PRODU' +
        'CT_QUANTITY,'
      '  mlmso.DEPT_CODE'
      ''
      'from'
      '  OPERATION_MOVEMENTS om,'
      '  MLMS_OPERATIONS mlmso,'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll,'
      '  PRODUCTS p'
      ''
      'where'
      
        '  (mlmso.MLMSO_OBJECT_BRANCH_CODE = om.FROM_MLMSO_OBJECT_BRANCH_' +
        'CODE) and'
      '  (mlmso.MLMSO_OBJECT_CODE = om.FROM_MLMSO_OBJECT_CODE) and'
      ''
      
        '  (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and'
      ''
      '  (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      ''
      '  (p.PRODUCT_CODE = mll.DETAIL_CODE) and'
      ''
      '  (om.OM_BRANCH_CODE = :OM_BRANCH_CODE) and'
      '  (om.OM_CODE = :OM_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 848
    Top = 232
    object qryGetOMGeneratorDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryGetOMGeneratorDataPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
    object qryGetOMGeneratorDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
  end
  object qryIsDamageDescendantOf: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ANCESTOR_EE_DAMAGE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DESCENDANT_EE_DAMAGE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Sign(Count(*)) as IS_DESCENDANT'
      'from'
      '  EXCEPT_EVENT_DAMAGE_RELATIONS eedr'
      'where'
      '  (eedr.ANCESTOR_EE_DAMAGE_CODE = :ANCESTOR_EE_DAMAGE_CODE) and'
      '  (eedr.DESCENDANT_EE_DAMAGE_CODE = :DESCENDANT_EE_DAMAGE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 328
    object qryIsDamageDescendantOfIS_DESCENDANT: TAbmesFloatField
      FieldName = 'IS_DESCENDANT'
      FieldValueType = fvtBoolean
    end
  end
  object qryMoveDamage: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LOCAL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_DAMAGE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  EXCEPT_EVENT_DAMAGES_FOR_EDIT eedfe'
      'set'
      '  eedfe.EXCEPT_EVENT_CODE = :EXCEPT_EVENT_CODE,'
      '  eedfe.PARENT_CODE = :PARENT_CODE,'
      '  eedfe.LOCAL_NO = :LOCAL_NO'
      'where'
      '  (eedfe.EXCEPT_EVENT_DAMAGE_CODE = :EXCEPT_EVENT_DAMAGE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 272
  end
  object qryGetExceptEventDamageFullNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_DAMAGE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  Cast(MiscUtils.GetExceptEventDamageFullNo(:EXCEPT_EVENT_DAMAGE' +
        '_CODE) as Varchar2(250 char)) as EXCEPT_EVENT_DAMAGE_FULL_NO'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 384
    object qryGetExceptEventDamageFullNoEXCEPT_EVENT_DAMAGE_FULL_NO: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_DAMAGE_FULL_NO'
      Size = 250
    end
  end
  object qryMLLSale: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      '  s.SALE_ORDER_TYPE_CODE'
      ''
      'from'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      '  SALES s'
      ''
      'where'
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '  (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '  (mll.MLL_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = :MLL_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 288
    Top = 264
    object qryMLLSaleSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object qryMLLSaleSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object qryMLLSaleSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
  end
  object prvMllSale: TDataSetProvider
    DataSet = qryMLLSale
    Left = 288
    Top = 216
  end
  object qryExceptEventIndicatorCounts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  Count(Nvl2(ee.CTRL_ACCEPT_EMPLOYEE_CODE, null, 1)) as EE_NOT_A' +
        'CCEPTED,'
      
        '  Count(Nvl2(ee.CTRL_ACTIVATE_EMPLOYEE_CODE, null, 1)) as EE_NOT' +
        '_ACTIVATED,'
      
        '  Count(Nvl2(ee.CTRL_ACTIVATE_EMPLOYEE_CODE, 1, null)) as EE_ACT' +
        'IVATED,'
      ''
      
        '  Count(Decode(ee.CTRL_MAIN_EMPLOYEE_CODE, :USER_CODE, Nvl2(ee.C' +
        'TRL_ACCEPT_EMPLOYEE_CODE, null, 1))) as EE_CTRL_EMP_NOT_ACCEPTED' +
        ','
      
        '  Count(Decode(ee.CTRL_MAIN_EMPLOYEE_CODE, :USER_CODE, Nvl2(ee.C' +
        'TRL_ACTIVATE_EMPLOYEE_CODE, null, 1))) as EE_CTRL_EMP_NOT_ACTIVA' +
        'TED,'
      
        '  Count(Decode(ee.CTRL_MAIN_EMPLOYEE_CODE, :USER_CODE, Nvl2(ee.C' +
        'TRL_ACTIVATE_EMPLOYEE_CODE, 1, null))) as EE_CTRL_EMP_ACTIVATED,'
      ''
      
        '  Count(Decode(%HAS_WORK_DEPT[:USER_CODE~ ee.CTRL_DEPT_CODE], 1,' +
        ' Nvl2(ee.CTRL_ACCEPT_EMPLOYEE_CODE, null, 1))) as EE_CTRL_DEPT_N' +
        'OT_ACCEPTED,'
      
        '  Count(Decode(%HAS_WORK_DEPT[:USER_CODE~ ee.CTRL_DEPT_CODE], 1,' +
        ' Nvl2(ee.CTRL_ACTIVATE_EMPLOYEE_CODE, null, 1))) as EE_CTRL_DEPT' +
        '_NOT_ACTIVATED,'
      
        '  Count(Decode(%HAS_WORK_DEPT[:USER_CODE~ ee.CTRL_DEPT_CODE], 1,' +
        ' Nvl2(ee.CTRL_ACTIVATE_EMPLOYEE_CODE, 1, null))) as EE_CTRL_DEPT' +
        '_ACTIVATED'
      ''
      'from'
      '  EXCEPT_EVENTS ee'
      ''
      'where'
      '  (ee.CLOSE_EMPLOYEE_CODE is null) and'
      '  (ee.ANNUL_EMPLOYEE_CODE is null) and'
      '  (ee.EXCEPT_EVENT_LEVEL_CODE >= CommonConsts.eelMinimal)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_WORK_DEPT[:USER_CODE~ ee.CTRL_DEPT_CODE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 848
    Top = 64
    object qryExceptEventIndicatorCountsEE_NOT_ACCEPTED: TAbmesFloatField
      FieldName = 'EE_NOT_ACCEPTED'
    end
    object qryExceptEventIndicatorCountsEE_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EE_NOT_ACTIVATED'
    end
    object qryExceptEventIndicatorCountsEE_ACTIVATED: TAbmesFloatField
      FieldName = 'EE_ACTIVATED'
    end
    object qryExceptEventIndicatorCountsEE_CTRL_EMP_NOT_ACCEPTED: TAbmesFloatField
      FieldName = 'EE_CTRL_EMP_NOT_ACCEPTED'
    end
    object qryExceptEventIndicatorCountsEE_CTRL_EMP_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EE_CTRL_EMP_NOT_ACTIVATED'
    end
    object qryExceptEventIndicatorCountsEE_CTRL_EMP_ACTIVATED: TAbmesFloatField
      FieldName = 'EE_CTRL_EMP_ACTIVATED'
    end
    object qryExceptEventIndicatorCountsEE_CTRL_DEPT_NOT_ACCEPTED: TAbmesFloatField
      FieldName = 'EE_CTRL_DEPT_NOT_ACCEPTED'
    end
    object qryExceptEventIndicatorCountsEE_CTRL_DEPT_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EE_CTRL_DEPT_NOT_ACTIVATED'
    end
    object qryExceptEventIndicatorCountsEE_CTRL_DEPT_ACTIVATED: TAbmesFloatField
      FieldName = 'EE_CTRL_DEPT_ACTIVATED'
    end
  end
  object prvExceptEventIndicatorCounts: TDataSetProvider
    DataSet = qryExceptEventIndicatorCounts
    Options = [poReadOnly, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = prvExceptEventIndicatorCountsBeforeGetRecords
    Left = 848
    Top = 16
  end
  object qryExceptEventTaskIndicatorCounts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  Count(Decode(eet.EMPLOYEE_CODE, :USER_CODE, Nvl2(eet.ACTIVATE_' +
        'EMPLOYEE_CODE, null, 1))) as EET_REAL_EMP_NOT_ACTIVATED,'
      
        '  Count(Decode(eet.EMPLOYEE_CODE, :USER_CODE, Nvl2(eet.ACTIVATE_' +
        'EMPLOYEE_CODE, 1, null))) as EET_REAL_EMP_ACTIVATED,'
      
        '  Count(Decode(eet.EMPLOYEE_CODE, :USER_CODE, Nvl2(eet.ACTIVATE_' +
        'EMPLOYEE_CODE, Nvl2(eet.PROBLEM_ENCOUNTER_EMP_CODE, Nvl2(eet.PRO' +
        'BLEM_RESOLVE_EMPLOYEE_CODE, null, 1), null), null))) as EET_REAL' +
        '_EMP_PROBLEMS,'
      ''
      
        '  Count(Decode(%HAS_WORK_DEPT[:USER_CODE~ eet.DEPT_CODE], 1, Nvl' +
        '2(eet.ACTIVATE_EMPLOYEE_CODE, null, 1))) as EET_REAL_DEPT_NOT_AC' +
        'TIVATED,'
      
        '  Count(Decode(%HAS_WORK_DEPT[:USER_CODE~ eet.DEPT_CODE], 1, Nvl' +
        '2(eet.ACTIVATE_EMPLOYEE_CODE, 1, null))) as EET_REAL_DEPT_ACTIVA' +
        'TED,'
      
        '  Count(Decode(%HAS_WORK_DEPT[:USER_CODE~ eet.DEPT_CODE], 1, Nvl' +
        '2(eet.ACTIVATE_EMPLOYEE_CODE, Nvl2(eet.PROBLEM_ENCOUNTER_EMP_COD' +
        'E, Nvl2(eet.PROBLEM_RESOLVE_EMPLOYEE_CODE, null, 1), null), null' +
        '))) as EET_REAL_DEPT_PROBLEMS,'
      ''
      ''
      
        '  Count(Nvl2(eet.ACTIVATE_EMPLOYEE_CODE, null, 1)) as EET_CTRL_N' +
        'OT_ACTIVATED,'
      
        '  Count(Nvl2(eet.ACTIVATE_EMPLOYEE_CODE, 1, null)) as EET_CTRL_A' +
        'CTIVATED,'
      
        '  Count(Nvl2(eet.ACTIVATE_EMPLOYEE_CODE, Nvl2(eet.PROBLEM_ENCOUN' +
        'TER_EMP_CODE, Nvl2(eet.PROBLEM_RESOLVE_EMPLOYEE_CODE, null, 1), ' +
        'null), null)) as EET_CTRL_PROBLEMS,'
      ''
      
        '  Count(Decode(ee.CTRL_MAIN_EMPLOYEE_CODE, :USER_CODE, Nvl2(eet.' +
        'ACTIVATE_EMPLOYEE_CODE, null, 1))) as EET_CTRL_EMP_NOT_ACTIVATED' +
        ','
      
        '  Count(Decode(ee.CTRL_MAIN_EMPLOYEE_CODE, :USER_CODE, Nvl2(eet.' +
        'ACTIVATE_EMPLOYEE_CODE, 1, null))) as EET_CTRL_EMP_ACTIVATED,'
      
        '  Count(Decode(ee.CTRL_MAIN_EMPLOYEE_CODE, :USER_CODE, Nvl2(eet.' +
        'ACTIVATE_EMPLOYEE_CODE, Nvl2(eet.PROBLEM_ENCOUNTER_EMP_CODE, Nvl' +
        '2(eet.PROBLEM_RESOLVE_EMPLOYEE_CODE, null, 1), null), null))) as' +
        ' EET_CTRL_EMP_PROBLEMS,'
      ''
      
        '  Count(Decode(%HAS_WORK_DEPT[:USER_CODE~ ee.CTRL_DEPT_CODE], 1,' +
        ' Nvl2(eet.ACTIVATE_EMPLOYEE_CODE, null, 1))) as EET_CTRL_DEPT_NO' +
        'T_ACTIVATED,'
      
        '  Count(Decode(%HAS_WORK_DEPT[:USER_CODE~ ee.CTRL_DEPT_CODE], 1,' +
        ' Nvl2(eet.ACTIVATE_EMPLOYEE_CODE, 1, null))) as EET_CTRL_DEPT_AC' +
        'TIVATED,'
      
        '  Count(Decode(%HAS_WORK_DEPT[:USER_CODE~ ee.CTRL_DEPT_CODE], 1,' +
        ' Nvl2(eet.ACTIVATE_EMPLOYEE_CODE, Nvl2(eet.PROBLEM_ENCOUNTER_EMP' +
        '_CODE, Nvl2(eet.PROBLEM_RESOLVE_EMPLOYEE_CODE, null, 1), null), ' +
        'null))) as EET_CTRL_DEPT_PROBLEMS'
      ''
      'from'
      '  EXCEPT_EVENT_TASKS eet,'
      '  EXCEPT_EVENTS ee'
      ''
      'where'
      '  (eet.EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE) and'
      ''
      '  (ee.CLOSE_EMPLOYEE_CODE is null) and'
      '  (ee.ANNUL_EMPLOYEE_CODE is null) and'
      '  (ee.EXCEPT_EVENT_LEVEL_CODE >= CommonConsts.eelMinimal) and'
      ''
      '  (eet.CLOSE_EMPLOYEE_CODE is null) and'
      '  (eet.ANNUL_EMPLOYEE_CODE is null)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_WORK_DEPT[:USER_CODE~ eet.DEPT_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_WORK_DEPT[:USER_CODE~ ee.CTRL_DEPT_CODE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 848
    Top = 168
    object qryExceptEventTaskIndicatorCountsEET_REAL_EMP_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_REAL_EMP_NOT_ACTIVATED'
    end
    object qryExceptEventTaskIndicatorCountsEET_REAL_EMP_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_REAL_EMP_ACTIVATED'
    end
    object qryExceptEventTaskIndicatorCountsEET_REAL_EMP_PROBLEMS: TAbmesFloatField
      FieldName = 'EET_REAL_EMP_PROBLEMS'
    end
    object qryExceptEventTaskIndicatorCountsEET_REAL_DEPT_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_REAL_DEPT_NOT_ACTIVATED'
    end
    object qryExceptEventTaskIndicatorCountsEET_REAL_DEPT_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_REAL_DEPT_ACTIVATED'
    end
    object qryExceptEventTaskIndicatorCountsEET_REAL_DEPT_PROBLEMS: TAbmesFloatField
      FieldName = 'EET_REAL_DEPT_PROBLEMS'
    end
    object qryExceptEventTaskIndicatorCountsEET_CTRL_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_CTRL_NOT_ACTIVATED'
    end
    object qryExceptEventTaskIndicatorCountsEET_CTRL_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_CTRL_ACTIVATED'
    end
    object qryExceptEventTaskIndicatorCountsEET_CTRL_PROBLEMS: TAbmesFloatField
      FieldName = 'EET_CTRL_PROBLEMS'
    end
    object qryExceptEventTaskIndicatorCountsEET_CTRL_EMP_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_CTRL_EMP_NOT_ACTIVATED'
    end
    object qryExceptEventTaskIndicatorCountsEET_CTRL_EMP_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_CTRL_EMP_ACTIVATED'
    end
    object qryExceptEventTaskIndicatorCountsEET_CTRL_EMP_PROBLEMS: TAbmesFloatField
      FieldName = 'EET_CTRL_EMP_PROBLEMS'
    end
    object qryExceptEventTaskIndicatorCountsEET_CTRL_DEPT_NOT_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_CTRL_DEPT_NOT_ACTIVATED'
    end
    object qryExceptEventTaskIndicatorCountsEET_CTRL_DEPT_ACTIVATED: TAbmesFloatField
      FieldName = 'EET_CTRL_DEPT_ACTIVATED'
    end
    object qryExceptEventTaskIndicatorCountsEET_CTRL_DEPT_PROBLEMS: TAbmesFloatField
      FieldName = 'EET_CTRL_DEPT_PROBLEMS'
    end
  end
  object prvExceptEventTaskIndicatorCounts: TDataSetProvider
    DataSet = qryExceptEventTaskIndicatorCounts
    Options = [poReadOnly, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = prvExceptEventTaskIndicatorCountsBeforeGetRecords
    Left = 848
    Top = 120
  end
  object qryGetSaleGeneratorData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.PRODUCT_CODE,'
      '  s.QUANTITY as PRODUCT_QUANTITY'
      ''
      'from'
      '  SALES s'
      ''
      'where'
      '  (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '  (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 848
    Top = 280
    object qryGetSaleGeneratorDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryGetSaleGeneratorDataPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
  end
  object qryGetDeliveryGeneratorData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.PRODUCT_CODE,'
      '  dp.WORK_QUANTITY as PRODUCT_QUANTITY'
      ''
      'from'
      '  DELIVERY_PROJECTS dp'
      ''
      'where'
      '  (dp.DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = :DCD_OBJECT_CODE) and'
      '  (dp.DELIVERY_PROJECT_CODE = :DELIVERY_PROJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 848
    Top = 328
    object qryGetDeliveryGeneratorDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryGetDeliveryGeneratorDataPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
  end
  object qryExceptEventLevels: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  eel.EXCEPT_EVENT_LEVEL_CODE,'
      '  eel.EXCEPT_EVENT_LEVEL_NO,'
      '  eel.EXCEPT_EVENT_LEVEL_NAME,'
      '  eel.EXCEPT_EVENT_LEVEL_ABBREV'
      ''
      'from'
      '  EXCEPT_EVENT_LEVELS eel'
      ''
      'order by'
      '  eel.EXCEPT_EVENT_LEVEL_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 328
    Top = 160
    object qryExceptEventLevelsEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_LEVEL_CODE'
    end
    object qryExceptEventLevelsEXCEPT_EVENT_LEVEL_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_LEVEL_NO'
    end
    object qryExceptEventLevelsEXCEPT_EVENT_LEVEL_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_LEVEL_NAME'
      Size = 100
    end
    object qryExceptEventLevelsEXCEPT_EVENT_LEVEL_ABBREV: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_LEVEL_ABBREV'
      Size = 100
    end
  end
  object prvExceptEventLevels: TDataSetProvider
    DataSet = qryExceptEventLevels
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 112
  end
  object qryExceptEventGenTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  eegt.EXCEPT_EVENT_GEN_TYPE_CODE,'
      '  eegt.EXCEPT_EVENT_GEN_TYPE_NO,'
      '  eegt.EXCEPT_EVENT_GEN_TYPE_NAME,'
      '  eegt.EXCEPT_EVENT_GEN_TYPE_ABBREV'
      ''
      'from'
      '  EXCEPT_EVENT_GEN_TYPES eegt'
      ''
      'order by'
      '  eegt.EXCEPT_EVENT_GEN_TYPE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 848
    Top = 496
    object qryExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_CODE'
    end
    object qryExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_NO'
    end
    object qryExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_NAME'
      Size = 100
    end
    object qryExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_ABBREV'
      Size = 100
    end
  end
  object prvExceptEventGenTypes: TDataSetProvider
    DataSet = qryExceptEventGenTypes
    UpdateMode = upWhereKeyOnly
    Left = 848
    Top = 448
  end
  object qryGeneratorData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_Number(:OM_BRANCH_CODE) as OM_BRANCH_CODE,'
      '  To_Number(:OM_CODE) as OM_CODE,'
      ''
      '  ( select'
      '      oms.SALE_OBJECT_BRANCH_CODE'
      '    from'
      '      OPERATION_MOVEMENTS om,'
      '      MLMS_OPERATIONS mlmso,'
      '      ML_MODEL_STAGES mlms,'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES oms'
      '    where'
      
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
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = oms.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = oms.SALE_OBJECT_CODE) and'
      ''
      '      (om.OM_BRANCH_CODE = :OM_BRANCH_CODE) and'
      '      (om.OM_CODE = :OM_CODE)'
      '  ) as OM_SALE_OBJECT_BRANCH_CODE,'
      ''
      '  ( select'
      '      oms.SALE_OBJECT_CODE'
      '    from'
      '      OPERATION_MOVEMENTS om,'
      '      MLMS_OPERATIONS mlmso,'
      '      ML_MODEL_STAGES mlms,'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES oms'
      '    where'
      
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
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = oms.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = oms.SALE_OBJECT_CODE) and'
      ''
      '      (om.OM_BRANCH_CODE = :OM_BRANCH_CODE) and'
      '      (om.OM_CODE = :OM_CODE)'
      '  ) as OM_SALE_OBJECT_CODE,'
      ''
      '  ( select'
      '      oms.SALE_ORDER_TYPE_CODE'
      '    from'
      '      OPERATION_MOVEMENTS om,'
      '      MLMS_OPERATIONS mlmso,'
      '      ML_MODEL_STAGES mlms,'
      '      MATERIAL_LIST_LINES mll,'
      '      MATERIAL_LISTS ml,'
      '      SALES oms'
      '    where'
      
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
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = oms.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = oms.SALE_OBJECT_CODE) and'
      ''
      '      (om.OM_BRANCH_CODE = :OM_BRANCH_CODE) and'
      '      (om.OM_CODE = :OM_CODE)'
      '  ) as OM_SALE_ORDER_TYPE_CODE,'
      ''
      
        '  To_Number(:SALE_OBJECT_BRANCH_CODE) as SALE_OBJECT_BRANCH_CODE' +
        ','
      '  To_Number(:SALE_OBJECT_CODE) as SALE_OBJECT_CODE,'
      ''
      '  ( select'
      '      s.REQUEST_BRANCH_CODE'
      '    from'
      '      SALES s'
      '    where'
      '      (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '      (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '  ) as REQUEST_BRANCH_CODE,'
      ''
      '  ( select'
      '      s.REQUEST_NO'
      '    from'
      '      SALES s'
      '    where'
      '      (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '      (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '  ) as REQUEST_NO,'
      ''
      '  To_Number(:DCD_OBJECT_BRANCH_CODE) as DCD_OBJECT_BRANCH_CODE,'
      '  To_Number(:DCD_OBJECT_CODE) as DCD_OBJECT_CODE,'
      '  To_Number(:DELIVERY_PROJECT_CODE) as DELIVERY_PROJECT_CODE,'
      ''
      '  Cast('
      '    Coalesce('
      '      ( select'
      
        '         (d.CUSTOM_CODE || '#39'/'#39' || dcd.DCD_CODE || '#39'/'#39' || dp.DELI' +
        'VERY_PROJECT_CODE || '#39'/'#39' || st.STREAM_TYPE_ABBREV)'
      '        from'
      '          DELIVERY_PROJECTS dp,'
      '          DEFICIT_COVER_DECISIONS dcd,'
      '          DEPTS d,'
      '          STREAM_TYPES st'
      '        where'
      
        '          (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_COD' +
        'E) and'
      '          (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      ''
      '          (d.DEPT_CODE = dcd.DCD_BRANCH_CODE) and'
      '          (st.STREAM_TYPE_CODE = dcd.STREAM_TYPE_CODE) and'
      ''
      
        '          (dp.DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE) ' +
        'and'
      '          (dp.DCD_OBJECT_CODE = :DCD_OBJECT_CODE) and'
      '          (dp.DELIVERY_PROJECT_CODE = :DELIVERY_PROJECT_CODE)'
      '      ),'
      '      ( select'
      
        '          d.CUSTOM_CODE || '#39'/'#39' || s.REQUEST_NO || '#39'/'#39' || s.REQUE' +
        'ST_LINE_NO'
      '        from'
      '          SALES s,'
      '          DEPTS d'
      '        where'
      '          (d.DEPT_CODE = s.REQUEST_BRANCH_CODE) and'
      
        '          (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE)' +
        ' and'
      '          (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '      ),'
      '      ( select'
      '          ( select'
      '              pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '            from'
      '              PRODUCTION_ORDER_TYPES pot'
      '            where'
      
        '              (pot.PRODUCTION_ORDER_TYPE_CODE = oms.PRODUCTION_O' +
        'RDER_TYPE_CODE)'
      '          ) ||'
      '          '#39'/'#39' ||'
      '          ( select'
      '              d2.CUSTOM_CODE'
      '            from'
      '              DEPTS d2'
      '            where'
      '              (d2.DEPT_CODE = oms.SALE_BRANCH_CODE)'
      '          ) ||'
      '          '#39'/'#39' ||'
      '          oms.SALE_NO ||'
      '          '#39'/'#39' ||'
      '          ( select'
      '              st.SALE_TYPE_ABBREV'
      '            from'
      '              SALE_TYPES st'
      '            where'
      '              (st.SALE_TYPE_CODE = oms.SALE_TYPE_CODE)'
      '          ) ||'
      '          '#39'/'#39' ||'
      '          mll.NO_AS_TEXT ||'
      '          '#39'/'#39' ||'
      '          mll.FORK_NO'
      '        from'
      '          OPERATION_MOVEMENTS om,'
      '          MLMS_OPERATIONS mlmso,'
      '          ML_MODEL_STAGES mlms,'
      '          MATERIAL_LIST_LINES mll,'
      '          MATERIAL_LISTS ml,'
      '          SALES oms'
      '        where'
      
        '          (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) ' +
        'and'
      ''
      
        '          (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRAN' +
        'CH_CODE) and'
      '          (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      
        '          (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_C' +
        'ODE) and'
      '          (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '          (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE)' +
        ' and'
      '          (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '          (ml.BND_PROCESS_OBJECT_BRANCH_CODE = oms.SALE_OBJECT_B' +
        'RANCH_CODE) and'
      
        '          (ml.BND_PROCESS_OBJECT_CODE = oms.SALE_OBJECT_CODE) an' +
        'd'
      ''
      '          (om.OM_BRANCH_CODE = :OM_BRANCH_CODE) and'
      '          (om.OM_CODE = :OM_CODE)'
      '      )'
      '    ) as Varchar2(250 char)'
      '  ) as PROCESS_OBJECT_IDENTIFIER,'
      ''
      '  ( select'
      '      (d.CUSTOM_CODE || '#39'/'#39' || om.OM_NO)'
      '    from'
      '      OPERATION_MOVEMENTS om,'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = om.OM_BRANCH_CODE) and'
      ''
      '      (om.OM_BRANCH_CODE = :OM_BRANCH_CODE) and'
      '      (om.OM_CODE = :OM_CODE)'
      '  ) as OM_IDENTIFIER,'
      ''
      '  Coalesce('
      '    ( select'
      '        om.TOTAL_DETAIL_TECH_QUANTITY / p.TECH_MEASURE_COEF'
      '      from'
      '        OPERATION_MOVEMENTS om,'
      '        MLMS_OPERATIONS mlmso,'
      '        ML_MODEL_STAGES mlms,'
      '        MATERIAL_LIST_LINES mll,'
      '        PRODUCTS p'
      '      where'
      
        '        (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_B' +
        'RANCH_CODE) and'
      
        '        (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) an' +
        'd'
      ''
      
        '        (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '        (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      ''
      
        '        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '        (p.PRODUCT_CODE = mll.DETAIL_CODE) and'
      ''
      '        (om.OM_BRANCH_CODE = :OM_BRANCH_CODE) and'
      '        (om.OM_CODE = :OM_CODE)'
      '    ),'
      '    ( select'
      '        s.QUANTITY'
      '      from'
      '        SALES s'
      '      where'
      
        '        (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '    ),'
      '    ( select'
      '        dp.WORK_QUANTITY'
      '      from'
      '        DELIVERY_PROJECTS dp'
      '      where'
      
        '        (dp.DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE) an' +
        'd'
      '        (dp.DCD_OBJECT_CODE = :DCD_OBJECT_CODE) and'
      '        (dp.DELIVERY_PROJECT_CODE = :DELIVERY_PROJECT_CODE)'
      '    )'
      '  ) as GENERATOR_PRODUCT_QUANTITY'
      ''
      'from'
      '  DUAL'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 72
    Top = 648
    object qryGeneratorDataOM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OM_BRANCH_CODE'
    end
    object qryGeneratorDataOM_CODE: TAbmesFloatField
      FieldName = 'OM_CODE'
    end
    object qryGeneratorDataOM_SALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OM_SALE_OBJECT_BRANCH_CODE'
    end
    object qryGeneratorDataOM_SALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'OM_SALE_OBJECT_CODE'
    end
    object qryGeneratorDataOM_SALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'OM_SALE_ORDER_TYPE_CODE'
    end
    object qryGeneratorDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object qryGeneratorDataSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object qryGeneratorDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object qryGeneratorDataDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object qryGeneratorDataDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object qryGeneratorDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 250
    end
    object qryGeneratorDataOM_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OM_IDENTIFIER'
      Size = 81
    end
    object qryGeneratorDataREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object qryGeneratorDataREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object qryGeneratorDataGENERATOR_PRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'GENERATOR_PRODUCT_QUANTITY'
    end
  end
  object prvGeneratorData: TDataSetProvider
    DataSet = qryGeneratorData
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 600
  end
  object qryGetExceptEventCodeByNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ee.EXCEPT_EVENT_CODE'
      'from'
      '  EXCEPT_EVENTS ee'
      'where'
      '  (ee.EXCEPT_EVENT_NO = :EXCEPT_EVENT_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 216
    Top = 648
    object qryGetExceptEventCodeByNoEXCEPT_EVENT_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_CODE'
    end
  end
  object qryInsExceptEventCauses: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into EXCEPT_EVENT_CAUSES'
      '('
      '  EXCEPT_EVENT_CODE,'
      '  CAUSE_EXCEPT_EVENT_CODE'
      ')'
      'select'
      '  To_Number(:EXCEPT_EVENT_CODE),'
      '  ee.EXCEPT_EVENT_CODE'
      'from'
      '  EXCEPT_EVENTS ee'
      'where'
      '  (ee.EXCEPT_EVENT_CODE in (%EXCEPT_EVENTS_SET)) and'
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        EXCEPT_EVENT_CAUSES eec'
      '      where'
      '        (eec.EXCEPT_EVENT_CODE = :EXCEPT_EVENT_CODE) and'
      '        (eec.CAUSE_EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE)'
      '    )'
      '  )')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENTS_SET'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 464
    Top = 600
  end
  object qryInsExceptEventConsequences: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into EXCEPT_EVENT_CAUSES'
      '('
      '  EXCEPT_EVENT_CODE,'
      '  CAUSE_EXCEPT_EVENT_CODE'
      ')'
      'select'
      '  ee.EXCEPT_EVENT_CODE,'
      '  To_Number(:EXCEPT_EVENT_CODE)'
      'from'
      '  EXCEPT_EVENTS ee'
      'where'
      '  (ee.EXCEPT_EVENT_CODE in (%EXCEPT_EVENTS_SET)) and'
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        EXCEPT_EVENT_CAUSES eec'
      '      where'
      '        (eec.EXCEPT_EVENT_CODE = ee.EXCEPT_EVENT_CODE) and'
      '        (eec.CAUSE_EXCEPT_EVENT_CODE = :EXCEPT_EVENT_CODE)'
      '    )'
      '  )')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENTS_SET'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 464
    Top = 648
  end
  object qryDelExceptEventCauses: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  EXCEPT_EVENT_CAUSES eec'
      'where'
      '  (eec.EXCEPT_EVENT_CODE = :EXCEPT_EVENT_CODE) and'
      '  (eec.CAUSE_EXCEPT_EVENT_CODE in (%EXCEPT_EVENTS_SET))')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENTS_SET'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 672
    Top = 600
  end
  object qryDelExceptEventConsequences: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  EXCEPT_EVENT_CAUSES eec'
      'where'
      '  (eec.EXCEPT_EVENT_CODE in (%EXCEPT_EVENTS_SET)) and'
      '  (eec.CAUSE_EXCEPT_EVENT_CODE = :EXCEPT_EVENT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENTS_SET'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 672
    Top = 648
  end
  object qryExceptEventTypesPrintTree: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eet.EXCEPT_EVENT_TYPE_CODE as NODE_ID,'
      '  eet.PARENT_EXCEPT_EVENT_TYPE_CODE as PARENT_NODE_ID,'
      ''
      
        '  (Cast(%EE_TYPE_FULL_NO[eet.EXCEPT_EVENT_TYPE_CODE] as VarChar2' +
        '(50 char)) || '#39' '#39' || eet.EXCEPT_EVENT_TYPE_NAME || '#39' - '#39' || eet.' +
        'EXCEPT_EVENT_TYPE_SHORT_NAME) as NODE_NAME,'
      
        '  Cast(%EE_TYPE_FORMATTED_FULL_NO[eet.EXCEPT_EVENT_TYPE_CODE] as' +
        ' VarChar2(50 char)) as FORMATED_NODE_NO,'
      ''
      '  (level - 1) as NODE_LEVEL,'
      ''
      '  ( select'
      '      Count(eet3.EXCEPT_EVENT_TYPE_CODE) as NODE_CHILD_COUNT'
      '    from'
      '      EXCEPT_EVENT_TYPES eet3'
      '    where'
      
        '      (eet3.PARENT_EXCEPT_EVENT_TYPE_CODE = eet.EXCEPT_EVENT_TYP' +
        'E_CODE)'
      '  ) as NODE_CHILD_COUNT,'
      ''
      '  Decode('
      '    ( select'
      '        Count(eet2.EXCEPT_EVENT_TYPE_CODE) as NODE_CHILD_COUNT'
      '      from'
      '        EXCEPT_EVENT_TYPES eet2'
      '      where'
      
        '        (eet2.PARENT_EXCEPT_EVENT_TYPE_CODE = eet.EXCEPT_EVENT_T' +
        'YPE_CODE)'
      '    ),'
      '    0,'
      '    2,'
      '    1'
      '  ) as NODE_TYPE,'
      ''
      '  Decode('
      '    eet.EXCEPT_EVENT_TYPE_CODE,'
      '    :EXCEPT_EVENT_TYPE_CODE,'
      '    0,'
      '    Decode('
      '      ( select'
      '          Max(eet4.EXCEPT_EVENT_TYPE_LOCAL_NO)'
      '        from'
      '          EXCEPT_EVENT_TYPES eet4'
      '        where'
      
        '          (eet4.PARENT_EXCEPT_EVENT_TYPE_CODE = eet.PARENT_EXCEP' +
        'T_EVENT_TYPE_CODE)'
      '      ),'
      '      eet.EXCEPT_EVENT_TYPE_LOCAL_NO,'
      '      1,'
      '      0'
      '    )'
      '  ) as IS_LAST_CHILD,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      EXCEPT_EVENT_TYPES eet1'
      '    where'
      
        '      (eet1.PARENT_EXCEPT_EVENT_TYPE_CODE = eet.EXCEPT_EVENT_TYP' +
        'E_CODE)'
      '  ) as HAS_CHILDREN'
      ''
      'from'
      '  EXCEPT_EVENT_TYPES eet'
      ''
      'start with'
      '  (eet.EXCEPT_EVENT_TYPE_CODE = :EXCEPT_EVENT_TYPE_CODE)'
      ''
      'connect by'
      
        '  (eet.PARENT_EXCEPT_EVENT_TYPE_CODE = prior eet.EXCEPT_EVENT_TY' +
        'PE_CODE)'
      ''
      'order by'
      '  FORMATED_NODE_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EE_TYPE_FULL_NO[eet.EXCEPT_EVENT_TYPE_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'EE_TYPE_FORMATTED_FULL_NO[eet.EXCEPT_EVENT_TYPE_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 528
    Top = 776
    object qryExceptEventTypesPrintTreeNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
      Required = True
    end
    object qryExceptEventTypesPrintTreePARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object qryExceptEventTypesPrintTreeNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 184
    end
    object qryExceptEventTypesPrintTreeFORMATED_NODE_NO: TAbmesWideStringField
      FieldName = 'FORMATED_NODE_NO'
      Size = 50
    end
    object qryExceptEventTypesPrintTreeNODE_LEVEL: TAbmesFloatField
      FieldName = 'NODE_LEVEL'
    end
    object qryExceptEventTypesPrintTreeNODE_CHILD_COUNT: TAbmesFloatField
      FieldName = 'NODE_CHILD_COUNT'
    end
    object qryExceptEventTypesPrintTreeNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
    object qryExceptEventTypesPrintTreeIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object qryExceptEventTypesPrintTreeHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
  end
  object prvExceptEventTypesPrintTree: TDataSetProvider
    DataSet = qryExceptEventTypesPrintTree
    UpdateMode = upWhereKeyOnly
    Left = 528
    Top = 728
  end
  object qryExceptEventType: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eet.EXCEPT_EVENT_TYPE_CODE,'
      '  eet.PARENT_EXCEPT_EVENT_TYPE_CODE,'
      '  eet.EXCEPT_EVENT_TYPE_LOCAL_NO,'
      '  eet.EXCEPT_EVENT_TYPE_NAME,'
      '  eet.EXCEPT_EVENT_TYPE_SHORT_NAME,'
      '  eet.IS_GROUP,'
      ''
      '  Decode('
      '    eet.PARENT_EXCEPT_EVENT_TYPE_CODE,'
      '    1,'
      '    null,'
      
        '    Cast(%EE_TYPE_FULL_NO[eet.PARENT_EXCEPT_EVENT_TYPE_CODE] as ' +
        'VarChar2(100 char))'
      '  ) as PARENT_FULL_NO,'
      ''
      '  eet.DOC_BRANCH_CODE,'
      '  eet.DOC_CODE,'
      '  %HAS_DOC_ITEMS[eet] as HAS_DOC_ITEMS'
      ''
      'from'
      '  EXCEPT_EVENT_TYPES eet'
      ''
      'where'
      '  (eet.EXCEPT_EVENT_TYPE_CODE = :EXCEPT_EVENT_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EE_TYPE_FULL_NO[eet.PARENT_EXCEPT_EVENT_TYPE_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[eet]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EXCEPT_EVENT_TYPES_FOR_EDIT'
    AfterProviderStartTransaction = qryExceptEventTypeAfterProviderStartTransaction
    Left = 192
    Top = 776
    object qryExceptEventTypeEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryExceptEventTypePARENT_EXCEPT_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'PARENT_EXCEPT_EVENT_TYPE_CODE'
    end
    object qryExceptEventTypeEXCEPT_EVENT_TYPE_LOCAL_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TYPE_LOCAL_NO'
      Required = True
    end
    object qryExceptEventTypeEXCEPT_EVENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_TYPE_NAME'
      Required = True
      Size = 100
    end
    object qryExceptEventTypeEXCEPT_EVENT_TYPE_SHORT_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_TYPE_SHORT_NAME'
      Required = True
      Size = 100
    end
    object qryExceptEventTypeIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
    end
    object qryExceptEventTypePARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryExceptEventTypeDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryExceptEventTypeDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryExceptEventTypeHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
  end
  object prvExceptEventType: TDataSetProvider
    DataSet = qryExceptEventType
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = prvExceptEventTypeBeforeApplyUpdates
    AfterApplyUpdates = prvExceptEventTypeAfterApplyUpdates
    Left = 192
    Top = 728
  end
  object qryGetExceptEventTypeIsInstance: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  (1 - eet.IS_GROUP) as IS_INSTANCE'
      'from'
      '  EXCEPT_EVENT_TYPES eet'
      'where'
      '  (eet.EXCEPT_EVENT_TYPE_CODE = :EXCEPT_EVENT_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 706
    Top = 727
    object qryGetExceptEventTypeIsInstanceIS_INSTANCE: TAbmesFloatField
      FieldName = 'IS_INSTANCE'
      FieldValueType = fvtBoolean
    end
  end
  object qryGetExceptEventTypeCodeByFullNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'EE_TYPE_FULL_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eet.EXCEPT_EVENT_TYPE_CODE'
      'from'
      '  EXCEPT_EVENT_TYPES eet'
      'where'
      
        '  (%EE_TYPE_FULL_NO[eet.EXCEPT_EVENT_TYPE_CODE] = :EE_TYPE_FULL_' +
        'NO)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EE_TYPE_FULL_NO[eet.EXCEPT_EVENT_TYPE_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 706
    Top = 776
    object qryGetExceptEventTypeCodeByFullNoEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TYPE_CODE'
      Required = True
    end
  end
  object qryDeliveryById: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dcd.DCD_OBJECT_BRANCH_CODE,'
      '  dcd.DCD_OBJECT_CODE,'
      '  dp.DELIVERY_PROJECT_CODE'
      ''
      'from'
      '  DELIVERY_PROJECTS dp,'
      '  DEFICIT_COVER_DECISIONS dcd'
      ''
      'where'
      '  (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      ''
      '  (dcd.DCD_BRANCH_CODE = :DCD_BRANCH_CODE) and'
      '  (dcd.DCD_CODE = :DCD_CODE) and'
      '  (dp.DELIVERY_PROJECT_CODE = :DELIVERY_PROJECT_CODE) and'
      ''
      '  (dcd.STREAM_TYPE_CODE = %st_REVERSE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'st_REVERSE'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 888
    Top = 640
    object qryDeliveryByIdDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      Required = True
    end
    object qryDeliveryByIdDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      Required = True
    end
    object qryDeliveryByIdDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      Required = True
    end
  end
  object prvDeliveryById: TDataSetProvider
    DataSet = qryDeliveryById
    Left = 888
    Top = 592
  end
  object qryEETaskResolveTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  eetrt.EE_TASK_RESOLVE_TYPE_CODE,'
      '  eetrt.EE_TASK_RESOLVE_TYPE_NO,'
      '  eetrt.EE_TASK_RESOLVE_TYPE_NAME,'
      '  eetrt.EE_TASK_RESOLVE_TYPE_ABBREV'
      'from'
      '  EE_TASK_RESOLVE_TYPES eetrt'
      'order by'
      '  eetrt.EE_TASK_RESOLVE_TYPE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 648
    Top = 56
    object qryEETaskResolveTypesEE_TASK_RESOLVE_TYPE_CODE: TAbmesFloatField
      FieldName = 'EE_TASK_RESOLVE_TYPE_CODE'
      Required = True
    end
    object qryEETaskResolveTypesEE_TASK_RESOLVE_TYPE_NO: TAbmesFloatField
      FieldName = 'EE_TASK_RESOLVE_TYPE_NO'
      Required = True
    end
    object qryEETaskResolveTypesEE_TASK_RESOLVE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EE_TASK_RESOLVE_TYPE_NAME'
      Required = True
      Size = 100
    end
    object qryEETaskResolveTypesEE_TASK_RESOLVE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'EE_TASK_RESOLVE_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object prvEETaskResolveTypes: TDataSetProvider
    DataSet = qryEETaskResolveTypes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 648
    Top = 8
  end
end
