inherited dmModelChanges: TdmModelChanges
  Height = 263
  Width = 432
  object qryMaterialListLineChange: TAbmesSQLQuery
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
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_LIST_LINE_CHANGE_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mllc.MLL_OBJECT_BRANCH_CODE,'
      '  mllc.MLL_OBJECT_CODE,'
      '  mllc.MATERIAL_LIST_LINE_CHANGE_NO,'
      ''
      '  mllc.N_DETAIL_CODE,'
      '  mllc.N_PRODUCT_CODE,'
      '  mllc.N_DETAIL_TECH_QUANTITY,'
      '  mllc.N_PRODUCT_TECH_QUANTITY,'
      '  mllc.N_TOTAL_DETAIL_TECH_QUANTITY,'
      '  mllc.N_LINE_DETAIL_TECH_QUANTITY,'
      '  mllc.N_STORE_CODE,'
      '  mllc.N_PRODUCT_NEED_BEGIN_DATE,'
      '  mllc.N_PRODUCT_NEED_END_DATE,'
      ''
      '  mllc.O_DETAIL_CODE,'
      '  mllc.O_PRODUCT_CODE,'
      '  mllc.O_DETAIL_TECH_QUANTITY,'
      '  mllc.O_PRODUCT_TECH_QUANTITY,'
      '  mllc.O_TOTAL_DETAIL_TECH_QUANTITY,'
      '  mllc.O_LINE_DETAIL_TECH_QUANTITY,'
      '  mllc.O_STORE_CODE,'
      '  mllc.O_PRODUCT_NEED_BEGIN_DATE,'
      '  mllc.O_PRODUCT_NEED_END_DATE,'
      ''
      '  mllc.REQUEST_EMPLOYEE_CODE,'
      '  mllc.REQUEST_DATE,'
      '  mllc.REQUEST_TIME,'
      '  mllc.MLL_CHANGE_REPLY_TYPE_CODE,'
      '  mllc.REPLY_EMPLOYEE_CODE,'
      '  mllc.REPLY_DATE,'
      '  mllc.REPLY_TIME,'
      '  mllc.REPLY_ACCEPT_EMPLOYEE_CODE,'
      '  mllc.REPLY_ACCEPT_DATE,'
      '  mllc.REPLY_ACCEPT_TIME,'
      ''
      '  np.NAME as N_PRODUCT_NAME,'
      '  np.CUSTOM_CODE as N_PRODUCT_NO,'
      '  np.TECH_MEASURE_CODE as N_PRODUCT_TECH_MEASURE_CODE,'
      ''
      '  op.NAME as O_PRODUCT_NAME,'
      '  op.CUSTOM_CODE as O_PRODUCT_NO,'
      '  op.TECH_MEASURE_CODE as O_PRODUCT_TECH_MEASURE_CODE,'
      ''
      
        '  Nvl2(mllf.MLL_OBJECT_BRANCH_CODE, mllf.DETAIL_CODE, mll.DETAIL' +
        '_CODE) as DETAIL_CODE,'
      
        '  Nvl2(mllf.MLL_OBJECT_BRANCH_CODE, pdf.NAME, pd.NAME) as DETAIL' +
        '_NAME,'
      
        '  Nvl2(mllf.MLL_OBJECT_BRANCH_CODE, pdf.CUSTOM_CODE, pd.CUSTOM_C' +
        'ODE) as DETAIL_NO,'
      
        '  Nvl2(mllf.MLL_OBJECT_BRANCH_CODE, pdf.TECH_MEASURE_CODE, pd.TE' +
        'CH_MEASURE_CODE) as DETAIL_TECH_MEASURE_CODE,'
      ''
      '  po.PROCESS_OBJECT_IDENTIFIER as MLL_OBJECT_IDENTIFIER,'
      ''
      '  ml.OWNER_EMPLOYEE_CODE,'
      ''
      '  0 as REPLY,'
      '  0 as REPLY_ACCEPT'
      ''
      'from'
      '  MATERIAL_LIST_LINE_CHANGES mllc,'
      '  MATERIAL_LIST_LINES mll,'
      '  PROCESS_OBJECTS po,'
      '  MATERIAL_LISTS ml,'
      '  MATERIAL_LIST_LINES mllf,'
      '  PRODUCTS np,'
      '  PRODUCTS op,'
      '  PRODUCTS pd,'
      '  PRODUCTS pdf'
      ''
      'where'
      '  (mllc.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mllc.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '  (mll.MLL_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BRANCH_CODE) a' +
        'nd'
      '  (mll.MLL_OBJECT_CODE = po.PROCESS_OBJECT_CODE) and'
      ''
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '  (mll.FORK_0_MLL_OBJECT_BRANCH_CODE = mllf.MLL_OBJECT_BRANCH_CO' +
        'DE(+)) and'
      '  (mll.FORK_0_MLL_OBJECT_CODE = mllf.MLL_OBJECT_CODE(+)) and'
      ''
      '  (mll.DETAIL_CODE = pd.PRODUCT_CODE(+)) and'
      ''
      '  (mllf.DETAIL_CODE = pdf.PRODUCT_CODE(+)) and'
      ''
      '  (mllc.N_PRODUCT_CODE = np.PRODUCT_CODE(+)) and'
      ''
      '  (mllc.O_PRODUCT_CODE = op.PRODUCT_CODE(+)) and'
      ''
      '  (mllc.MLL_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE) and'
      '  (mllc.MLL_OBJECT_CODE = :MLL_OBJECT_CODE) and'
      
        '  (mllc.MATERIAL_LIST_LINE_CHANGE_NO = :MATERIAL_LIST_LINE_CHANG' +
        'E_NO)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 56
    object qryMaterialListLineChangeMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMaterialListLineChangeMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMaterialListLineChangeMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField
      FieldName = 'MATERIAL_LIST_LINE_CHANGE_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMaterialListLineChangeN_DETAIL_CODE: TAbmesFloatField
      FieldName = 'N_DETAIL_CODE'
    end
    object qryMaterialListLineChangeN_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'N_PRODUCT_CODE'
    end
    object qryMaterialListLineChangeN_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'N_DETAIL_TECH_QUANTITY'
    end
    object qryMaterialListLineChangeN_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'N_PRODUCT_TECH_QUANTITY'
    end
    object qryMaterialListLineChangeN_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'N_TOTAL_DETAIL_TECH_QUANTITY'
    end
    object qryMaterialListLineChangeN_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'N_LINE_DETAIL_TECH_QUANTITY'
    end
    object qryMaterialListLineChangeN_STORE_CODE: TAbmesFloatField
      FieldName = 'N_STORE_CODE'
    end
    object qryMaterialListLineChangeN_PRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'N_PRODUCT_NEED_BEGIN_DATE'
    end
    object qryMaterialListLineChangeN_PRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'N_PRODUCT_NEED_END_DATE'
    end
    object qryMaterialListLineChangeO_DETAIL_CODE: TAbmesFloatField
      FieldName = 'O_DETAIL_CODE'
    end
    object qryMaterialListLineChangeO_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'O_PRODUCT_CODE'
    end
    object qryMaterialListLineChangeO_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'O_DETAIL_TECH_QUANTITY'
    end
    object qryMaterialListLineChangeO_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'O_PRODUCT_TECH_QUANTITY'
    end
    object qryMaterialListLineChangeO_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'O_TOTAL_DETAIL_TECH_QUANTITY'
    end
    object qryMaterialListLineChangeO_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'O_LINE_DETAIL_TECH_QUANTITY'
    end
    object qryMaterialListLineChangeO_STORE_CODE: TAbmesFloatField
      FieldName = 'O_STORE_CODE'
    end
    object qryMaterialListLineChangeO_PRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'O_PRODUCT_NEED_BEGIN_DATE'
    end
    object qryMaterialListLineChangeO_PRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'O_PRODUCT_NEED_END_DATE'
    end
    object qryMaterialListLineChangeREQUEST_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'REQUEST_EMPLOYEE_CODE'
    end
    object qryMaterialListLineChangeREQUEST_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_DATE'
    end
    object qryMaterialListLineChangeREQUEST_TIME: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_TIME'
    end
    object qryMaterialListLineChangeMLL_CHANGE_REPLY_TYPE_CODE: TAbmesFloatField
      FieldName = 'MLL_CHANGE_REPLY_TYPE_CODE'
    end
    object qryMaterialListLineChangeREPLY_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'REPLY_EMPLOYEE_CODE'
    end
    object qryMaterialListLineChangeREPLY_DATE: TAbmesSQLTimeStampField
      FieldName = 'REPLY_DATE'
    end
    object qryMaterialListLineChangeREPLY_TIME: TAbmesSQLTimeStampField
      FieldName = 'REPLY_TIME'
    end
    object qryMaterialListLineChangeREPLY_ACCEPT_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'REPLY_ACCEPT_EMPLOYEE_CODE'
    end
    object qryMaterialListLineChangeREPLY_ACCEPT_DATE: TAbmesSQLTimeStampField
      FieldName = 'REPLY_ACCEPT_DATE'
    end
    object qryMaterialListLineChangeREPLY_ACCEPT_TIME: TAbmesSQLTimeStampField
      FieldName = 'REPLY_ACCEPT_TIME'
    end
    object qryMaterialListLineChangeN_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'N_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryMaterialListLineChangeN_PRODUCT_NO: TAbmesFloatField
      FieldName = 'N_PRODUCT_NO'
      ProviderFlags = []
    end
    object qryMaterialListLineChangeN_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'N_PRODUCT_TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryMaterialListLineChangeO_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'O_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryMaterialListLineChangeO_PRODUCT_NO: TAbmesFloatField
      FieldName = 'O_PRODUCT_NO'
      ProviderFlags = []
    end
    object qryMaterialListLineChangeO_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'O_PRODUCT_TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryMaterialListLineChangeDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
      ProviderFlags = []
    end
    object qryMaterialListLineChangeDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryMaterialListLineChangeDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
      ProviderFlags = []
    end
    object qryMaterialListLineChangeDETAIL_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryMaterialListLineChangeMLL_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MLL_OBJECT_IDENTIFIER'
      ProviderFlags = []
      Size = 50
    end
    object qryMaterialListLineChangeOWNER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OWNER_EMPLOYEE_CODE'
      ProviderFlags = []
    end
    object qryMaterialListLineChangeREPLY: TAbmesFloatField
      FieldName = 'REPLY'
      ProviderFlags = []
    end
    object qryMaterialListLineChangeREPLY_ACCEPT: TAbmesFloatField
      FieldName = 'REPLY_ACCEPT'
      ProviderFlags = []
    end
  end
  object prvMaterialListLineChange: TDataSetProvider
    DataSet = qryMaterialListLineChange
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvMaterialListLineChangeBeforeUpdateRecord
    Left = 56
    Top = 8
  end
  object qryGetMaxMllChangeNo: TAbmesSQLQuery
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
      '  Max(mllc.MATERIAL_LIST_LINE_CHANGE_NO) as MAX_MLL_CHANGE_NO'
      'from'
      '  MATERIAL_LIST_LINE_CHANGES mllc'
      'where'
      '  (mllc.MLL_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE) and'
      '  (mllc.MLL_OBJECT_CODE = :MLL_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 320
    Top = 176
    object qryGetMaxMllChangeNoMAX_MLL_CHANGE_NO: TAbmesFloatField
      FieldName = 'MAX_MLL_CHANGE_NO'
    end
  end
  object qryMaterialListLine: TAbmesSQLQuery
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
      '  mll.MLL_OBJECT_BRANCH_CODE,'
      '  mll.MLL_OBJECT_CODE,'
      '  mll.ML_OBJECT_BRANCH_CODE,'
      '  mll.ML_OBJECT_CODE,'
      '  mll.DETAIL_CODE,'
      '  mll.DETAIL_TECH_QUANTITY,'
      '  mll.LINE_DETAIL_TECH_QUANTITY,'
      '  mll.TOTAL_DETAIL_TECH_QUANTITY,'
      '  mll.PRODUCT_CODE,'
      '  mll.PRODUCT_TECH_QUANTITY,'
      '  mll.STORE_CODE,'
      '  mll.PRODUCT_NEED_BEGIN_DATE,'
      '  mll.PRODUCT_NEED_END_DATE,'
      
        '  Nvl2(mllf.MLL_OBJECT_BRANCH_CODE, mllf.DETAIL_CODE, mll.DETAIL' +
        '_CODE) as FORK_0_DETAIL_CODE,'
      '  po.PROCESS_OBJECT_IDENTIFIER as MLL_OBJECT_IDENTIFIER,'
      '  ml.OWNER_EMPLOYEE_CODE'
      ''
      'from'
      '  MATERIAL_LIST_LINES mll,'
      '  PROCESS_OBJECTS po,'
      '  MATERIAL_LISTS ml,'
      '  MATERIAL_LIST_LINES mllf'
      ''
      'where'
      
        '  (mll.MLL_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BRANCH_CODE) a' +
        'nd'
      '  (mll.MLL_OBJECT_CODE = po.PROCESS_OBJECT_CODE) and'
      ''
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '  (mll.FORK_0_MLL_OBJECT_BRANCH_CODE = mllf.MLL_OBJECT_BRANCH_CO' +
        'DE(+)) and'
      '  (mll.FORK_0_MLL_OBJECT_CODE = mllf.MLL_OBJECT_CODE(+)) and'
      ''
      '  (mll.MLL_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = :MLL_OBJECT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'MATERIAL_LIST_LINES_FOR_EDIT'
    Left = 56
    Top = 176
    object qryMaterialListLineMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMaterialListLineMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMaterialListLineML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object qryMaterialListLineML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object qryMaterialListLineDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryMaterialListLineDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object qryMaterialListLineLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'LINE_DETAIL_TECH_QUANTITY'
    end
    object qryMaterialListLineTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_DETAIL_TECH_QUANTITY'
    end
    object qryMaterialListLinePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryMaterialListLinePRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object qryMaterialListLineSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryMaterialListLinePRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCT_NEED_BEGIN_DATE'
    end
    object qryMaterialListLinePRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCT_NEED_END_DATE'
    end
    object qryMaterialListLineFORK_0_DETAIL_CODE: TAbmesFloatField
      FieldName = 'FORK_0_DETAIL_CODE'
    end
    object qryMaterialListLineMLL_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MLL_OBJECT_IDENTIFIER'
      Size = 50
    end
    object qryMaterialListLineOWNER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OWNER_EMPLOYEE_CODE'
    end
  end
  object prvMaterialListLine: TDataSetProvider
    DataSet = qryMaterialListLine
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 128
  end
  object qryInsMllChanges: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'insert into MATERIAL_LIST_LINE_CHANGES ('
      '  MLL_OBJECT_BRANCH_CODE,'
      '  MLL_OBJECT_CODE,'
      '  MATERIAL_LIST_LINE_CHANGE_NO,'
      '  O_DETAIL_CODE,'
      '  N_DETAIL_CODE,'
      '  O_PRODUCT_CODE,'
      '  N_PRODUCT_CODE,'
      '  O_DETAIL_TECH_QUANTITY,'
      '  N_DETAIL_TECH_QUANTITY,'
      '  O_PRODUCT_TECH_QUANTITY,'
      '  N_PRODUCT_TECH_QUANTITY,'
      '  O_TOTAL_DETAIL_TECH_QUANTITY,'
      '  N_TOTAL_DETAIL_TECH_QUANTITY,'
      '  O_LINE_DETAIL_TECH_QUANTITY,'
      '  N_LINE_DETAIL_TECH_QUANTITY,'
      '  O_PRODUCT_NEED_BEGIN_DATE,'
      '  N_PRODUCT_NEED_BEGIN_DATE,'
      '  O_PRODUCT_NEED_END_DATE,'
      '  N_PRODUCT_NEED_END_DATE,'
      '  O_STORE_CODE,'
      '  N_STORE_CODE,'
      '  REQUEST_EMPLOYEE_CODE,'
      '  REQUEST_DATE,'
      '  REQUEST_TIME'
      ')'
      ''
      'select'
      '  MLL_OBJECT_BRANCH_CODE,'
      '  MLL_OBJECT_CODE,'
      '  ( select'
      '      Coalesce(Max(mllc.MATERIAL_LIST_LINE_CHANGE_NO), 0) + 1'
      '    from'
      '      MATERIAL_LIST_LINE_CHANGES mllc'
      '    where'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = mllc.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mll.MLL_OBJECT_CODE = mllc.MLL_OBJECT_CODE)'
      '  ) as MATERIAL_LIST_LINE_CHANGE_NO,'
      '  mll.DETAIL_CODE as O_DETAIL_CODE,'
      '  mll.DETAIL_CODE as N_DETAIL_CODE,'
      '  mll.PRODUCT_CODE as O_PRODUCT_CODE,'
      '  %NEW_PRODUCT_CODE as N_PRODUCT_CODE,'
      '  mll.DETAIL_TECH_QUANTITY as O_DETAIL_TECH_QUANTITY,'
      '  mll.DETAIL_TECH_QUANTITY as N_DETAIL_TECH_QUANTITY,'
      '  mll.PRODUCT_TECH_QUANTITY as O_PRODUCT_TECH_QUANTITY,'
      '  mll.PRODUCT_TECH_QUANTITY as N_PRODUCT_TECH_QUANTITY,'
      
        '  mll.TOTAL_DETAIL_TECH_QUANTITY as O_TOTAL_DETAIL_TECH_QUANTITY' +
        ','
      
        '  mll.TOTAL_DETAIL_TECH_QUANTITY as N_TOTAL_DETAIL_TECH_QUANTITY' +
        ','
      '  mll.LINE_DETAIL_TECH_QUANTITY as O_LINE_DETAIL_TECH_QUANTITY,'
      '  mll.LINE_DETAIL_TECH_QUANTITY as N_LINE_DETAIL_TECH_QUANTITY,'
      '  mll.PRODUCT_NEED_BEGIN_DATE as O_PRODUCT_NEED_BEGIN_DATE,'
      '  mll.PRODUCT_NEED_BEGIN_DATE as N_PRODUCT_NEED_BEGIN_DATE,'
      '  mll.PRODUCT_NEED_END_DATE as O_PRODUCT_NEED_END_DATE,'
      '  mll.PRODUCT_NEED_END_DATE as N_PRODUCT_NEED_END_DATE,'
      '  mll.STORE_CODE as O_STORE_CODE,'
      '  %NEW_STORE_CODE as N_STORE_CODE,'
      '  LoginContext.UserCode as REQUEST_EMPLOYEE_CODE,'
      '  ContextDate as REQUEST_DATE,'
      '  ContextTime as REQUEST_TIME'
      'from'
      '  MATERIAL_LIST_LINES mll'
      'where'
      
        '  (mll.MLL_OBJECT_BRANCH_CODE, mll.MLL_OBJECT_CODE) in ( %MLL_SE' +
        'T ) and'
      '  (mll.STORE_CODE = %OLD_STORE_CODE) and'
      '  (mll.PRODUCT_CODE = %OLD_PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'NEW_PRODUCT_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'NEW_STORE_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'MLL_SET'
        ParamType = ptInput
        Value = '(0, 0)'
      end
      item
        DataType = ftWideString
        Name = 'OLD_STORE_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'OLD_PRODUCT_CODE'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 192
    Top = 8
  end
  object qryPendingChangeCounts: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  pot.PROD_ORDER_BASE_TYPE_CODE,'
      ''
      '  Count('
      '    Nvl2('
      '      mllc.REPLY_EMPLOYEE_CODE,'
      '      null,'
      '      1'
      '    )'
      '  ) as REQUESTED_CHANGE_COUNT,'
      ''
      '  Count('
      '    Nvl2('
      '      mllc.REPLY_ACCEPT_EMPLOYEE_CODE,'
      '      null,'
      '      Decode('
      '        mllc.MLL_CHANGE_REPLY_TYPE_CODE,'
      '        2,'
      '        1,'
      '        null'
      '      )'
      '    )'
      '  ) as REJECTED_CHANGE_COUNT,'
      ''
      '  Count('
      '    Nvl2('
      '      mllc.REPLY_EMPLOYEE_CODE,'
      '      null,'
      '      Decode('
      '        mllc.REQUEST_EMPLOYEE_CODE,'
      '        :USER_CODE,'
      '        1,'
      '        null'
      '      )'
      '    )'
      '  ) as REQUESTED_MY_CHANGE_COUNT,'
      ''
      '  Count('
      '    Nvl2('
      '      mllc.REPLY_ACCEPT_EMPLOYEE_CODE,'
      '      null,'
      '      Decode('
      '        mllc.MLL_CHANGE_REPLY_TYPE_CODE,'
      '        2,'
      '        Decode('
      '          mllc.REQUEST_EMPLOYEE_CODE,'
      '          :USER_CODE,'
      '          1,'
      '          null'
      '        ),'
      '        null'
      '      )'
      '    )'
      '  ) as REJECTED_MY_CHANGE_COUNT,'
      ''
      '  Count('
      '    Nvl2('
      '      mllc.REPLY_EMPLOYEE_CODE,'
      '      null,'
      '      Decode('
      '        ml.OWNER_EMPLOYEE_CODE,'
      '        :USER_CODE,'
      '        1,'
      '        null'
      '      )'
      '    )'
      '  ) as MY_ML_REQUESTED_CHANGE_COUNT,'
      ''
      '  Count('
      '    Nvl2('
      '      mllc.REPLY_ACCEPT_EMPLOYEE_CODE,'
      '      null,'
      '      Decode('
      '        mllc.MLL_CHANGE_REPLY_TYPE_CODE,'
      '        2,'
      '        Decode('
      '          ml.OWNER_EMPLOYEE_CODE,'
      '          :USER_CODE,'
      '          1,'
      '          null'
      '        ),'
      '        null'
      '      )'
      '    )'
      '  ) as MY_ML_REJECTED_CHANGE_COUNT'
      ''
      'from'
      '  SALES s,'
      '  PRODUCTION_ORDER_TYPES pot,'
      '  MATERIAL_LISTS ml,'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LIST_LINE_CHANGES mllc'
      ''
      'where'
      
        '  (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYPE_CODE' +
        ') and'
      '  '
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE' +
        ') and'
      '  (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and'
      ''
      '  (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and'
      '  (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      ''
      '  (mll.MLL_OBJECT_BRANCH_CODE = mllc.MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = mllc.MLL_OBJECT_CODE) and'
      ''
      '  (s.FINISH_EMPLOYEE_CODE is null) and'
      '  (s.ANNUL_EMPLOYEE_CODE is null) and'
      '  (s.PRODUCTION_ORDER_TYPE_CODE is not null) and'
      '  (ml.CLOSE_EMPLOYEE_CODE is null) and'
      '  (ml.ANNUL_EMPLOYEE_CODE is null) and'
      '  (mll.ANNUL_EMPLOYEE_CODE is null) and'
      '  (mllc.REPLY_ACCEPT_EMPLOYEE_CODE is null)  '
      ''
      'group by  '
      '  pot.PROD_ORDER_BASE_TYPE_CODE'
      ''
      'order by'
      '  pot.PROD_ORDER_BASE_TYPE_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 320
    Top = 56
    object qryPendingChangeCountsPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPendingChangeCountsREQUESTED_CHANGE_COUNT: TAbmesFloatField
      FieldName = 'REQUESTED_CHANGE_COUNT'
    end
    object qryPendingChangeCountsREJECTED_CHANGE_COUNT: TAbmesFloatField
      FieldName = 'REJECTED_CHANGE_COUNT'
    end
    object qryPendingChangeCountsREQUESTED_MY_CHANGE_COUNT: TAbmesFloatField
      FieldName = 'REQUESTED_MY_CHANGE_COUNT'
    end
    object qryPendingChangeCountsREJECTED_MY_CHANGE_COUNT: TAbmesFloatField
      FieldName = 'REJECTED_MY_CHANGE_COUNT'
    end
    object qryPendingChangeCountsMY_ML_REQUESTED_CHANGE_COUNT: TAbmesFloatField
      FieldName = 'MY_ML_REQUESTED_CHANGE_COUNT'
    end
    object qryPendingChangeCountsMY_ML_REJECTED_CHANGE_COUNT: TAbmesFloatField
      FieldName = 'MY_ML_REJECTED_CHANGE_COUNT'
    end
  end
  object prvModelChanges: TDataSetProvider
    DataSet = qryModelChanges
    Options = [poReadOnly]
    Left = 192
    Top = 128
  end
  object qryModelChanges: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end
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
      '  mllc.MLL_OBJECT_BRANCH_CODE,'
      '  mllc.MLL_OBJECT_CODE,'
      '  mllc.MATERIAL_LIST_LINE_CHANGE_NO,'
      '  mll.NO_1,'
      '  mll.NO_2,'
      '  mll.NO_3,'
      '  mll.NO_4,'
      '  mll.NO_5,'
      '  mll.NO_6,'
      '  mll.NO_7,'
      '  mll.NO_8,'
      '  mll.NO_9,'
      '  mll.NO_10,'
      '  mll.NO_11,'
      '  mll.NO_12,'
      '  mll.NO_13,'
      '  mll.NO_14,'
      '  mll.NO_15,'
      '  mll.NO_16,'
      '  mll.NO_17,'
      '  mll.NO_18,'
      '  mll.NO_19,'
      '  mll.NO_20,'
      '  mll.NO_21,'
      '  mll.NO_22,'
      '  mll.NO_23,'
      '  mll.NO_24,'
      '  mll.NO_25,'
      '  mll.NO_AS_TEXT,'
      '  mll.NO_AS_FORMATED_TEXT,'
      '  mll.FORK_NO,'
      
        '  RPad(mll.NO_AS_FORMATED_TEXT, 100, Decode(mll.FORK_NO, 0, '#39' '#39',' +
        ' '#39'x'#39')) as NO_AS_FORMATED_TEXT_EX,'
      ''
      '  mllc.MLL_CHANGE_REPLY_TYPE_CODE,'
      ''
      '  mllc.O_DETAIL_CODE as DETAIL_CODE,'
      '  d.NAME as DETAIL_NAME,'
      '  d.CUSTOM_CODE as DETAIL_NO,'
      '  '
      '  mllc.O_PRODUCT_CODE,'
      '  op.NAME as O_PRODUCT_NAME,'
      '  op.CUSTOM_CODE as O_PRODUCT_NO,'
      '  om.MEASURE_ABBREV as O_PRODUCT_TECH_MEASURE_ABBREV,'
      ''
      '  mllc.N_PRODUCT_CODE,'
      '  np.NAME as N_PRODUCT_NAME,'
      '  np.CUSTOM_CODE as N_PRODUCT_NO,'
      '  nm.MEASURE_ABBREV as N_PRODUCT_TECH_MEASURE_ABBREV,'
      ''
      '  mllc.O_STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = mllc.O_STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as O_STORE_IDENTIFIER,'
      ''
      '  mllc.N_STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = mllc.N_STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as N_STORE_IDENTIFIER,'
      ''
      '  mllc.O_PRODUCT_TECH_QUANTITY,'
      '  mllc.N_PRODUCT_TECH_QUANTITY,'
      ''
      '  mllc.REQUEST_EMPLOYEE_CODE,'
      
        '  Nvl2(mllc.REQUEST_EMPLOYEE_CODE, req_e.ABBREV || '#39'      - '#39' ||' +
        ' req_e.FIRST_NAME || '#39' '#39' || req_e.LAST_NAME, null) as REQUEST_EM' +
        'PLOYEE_NAME,'
      '  mllc.REQUEST_DATE,'
      '  mllc.REQUEST_TIME,'
      ''
      '  mllc.REPLY_EMPLOYEE_CODE,'
      
        '  Nvl2(mllc.REPLY_EMPLOYEE_CODE, rep_e.ABBREV || '#39'      - '#39' || r' +
        'ep_e.FIRST_NAME || '#39' '#39' || rep_e.LAST_NAME, null) as REPLY_EMPLOY' +
        'EE_NAME,'
      '  mllc.REPLY_DATE,'
      '  mllc.REPLY_TIME,'
      ''
      '  mllc.REPLY_ACCEPT_EMPLOYEE_CODE,'
      
        '  Nvl2(mllc.REPLY_ACCEPT_EMPLOYEE_CODE, ra_e.ABBREV || '#39'      - ' +
        #39' || ra_e.FIRST_NAME || '#39' '#39' || ra_e.LAST_NAME, null) as REPLY_AC' +
        'CEPT_EMPLOYEE_NAME,'
      '  mllc.REPLY_ACCEPT_DATE,'
      '  mllc.REPLY_ACCEPT_TIME,'
      ''
      
        '  Decode(mllc.MLL_CHANGE_REPLY_TYPE_CODE, 3, 1, 0) as IS_DIRECT_' +
        'CHANGE'
      ''
      'from'
      '  MATERIAL_LIST_LINE_CHANGES mllc,'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      ''
      '  PRODUCTS d,'
      '  PRODUCTS op,'
      '  MEASURES om,'
      '  PRODUCTS np,'
      '  MEASURES nm,'
      '  EMPLOYEES req_e,'
      '  EMPLOYEES rep_e,'
      '  EMPLOYEES ra_e'
      ''
      'where'
      '  (mllc.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and'
      '  (mllc.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      '  (mllc.O_DETAIL_CODE = d.PRODUCT_CODE) and'
      ''
      '  (mllc.O_PRODUCT_CODE = op.PRODUCT_CODE) and'
      ''
      '  (op.TECH_MEASURE_CODE = om.MEASURE_CODE) and'
      ''
      '  (mllc.N_PRODUCT_CODE = np.PRODUCT_CODE) and'
      ''
      '  (np.TECH_MEASURE_CODE = nm.MEASURE_CODE) and'
      ''
      '  (mllc.REQUEST_EMPLOYEE_CODE = req_e.EMPLOYEE_CODE) and'
      ''
      '  (mllc.REPLY_EMPLOYEE_CODE = rep_e.EMPLOYEE_CODE(+)) and'
      ''
      '  (mllc.REPLY_ACCEPT_EMPLOYEE_CODE = ra_e.EMPLOYEE_CODE(+)) and'
      ''
      '  ( (mllc.MLL_CHANGE_REPLY_TYPE_CODE is null) or'
      '    (mllc.MLL_CHANGE_REPLY_TYPE_CODE <> 3) or'
      '    (mllc.O_PRODUCT_CODE <> mllc.N_PRODUCT_CODE) or'
      
        '    (mllc.O_PRODUCT_TECH_QUANTITY <> mllc.N_PRODUCT_TECH_QUANTIT' +
        'Y) or'
      '    (mllc.O_STORE_CODE <> mllc.N_STORE_CODE) ) and'
      ''
      '  (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      ''
      '  ( ( (:MLL_OBJECT_BRANCH_CODE is null) and'
      '      (:MLL_OBJECT_CODE is null) ) or'
      '    ( (mll.MLL_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE) and'
      '      (mll.MLL_OBJECT_CODE = :MLL_OBJECT_CODE) ) )'
      ''
      'order by'
      '  IS_DIRECT_CHANGE,'
      '  NO_AS_FORMATED_TEXT_EX,'
      '  mll.FORK_NO,'
      '  mllc.REQUEST_DATE,'
      '  mllc.REQUEST_TIME'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 192
    Top = 176
    object qryModelChangesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryModelChangesMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryModelChangesMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField
      FieldName = 'MATERIAL_LIST_LINE_CHANGE_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryModelChangesNO_1: TAbmesFloatField
      FieldName = 'NO_1'
    end
    object qryModelChangesNO_2: TAbmesFloatField
      FieldName = 'NO_2'
    end
    object qryModelChangesNO_3: TAbmesFloatField
      FieldName = 'NO_3'
    end
    object qryModelChangesNO_4: TAbmesFloatField
      FieldName = 'NO_4'
    end
    object qryModelChangesNO_5: TAbmesFloatField
      FieldName = 'NO_5'
    end
    object qryModelChangesNO_6: TAbmesFloatField
      FieldName = 'NO_6'
    end
    object qryModelChangesNO_7: TAbmesFloatField
      FieldName = 'NO_7'
    end
    object qryModelChangesNO_8: TAbmesFloatField
      FieldName = 'NO_8'
    end
    object qryModelChangesNO_9: TAbmesFloatField
      FieldName = 'NO_9'
    end
    object qryModelChangesNO_10: TAbmesFloatField
      FieldName = 'NO_10'
    end
    object qryModelChangesNO_11: TAbmesFloatField
      FieldName = 'NO_11'
    end
    object qryModelChangesNO_12: TAbmesFloatField
      FieldName = 'NO_12'
    end
    object qryModelChangesNO_13: TAbmesFloatField
      FieldName = 'NO_13'
    end
    object qryModelChangesNO_14: TAbmesFloatField
      FieldName = 'NO_14'
    end
    object qryModelChangesNO_15: TAbmesFloatField
      FieldName = 'NO_15'
    end
    object qryModelChangesNO_16: TAbmesFloatField
      FieldName = 'NO_16'
    end
    object qryModelChangesNO_17: TAbmesFloatField
      FieldName = 'NO_17'
    end
    object qryModelChangesNO_18: TAbmesFloatField
      FieldName = 'NO_18'
    end
    object qryModelChangesNO_19: TAbmesFloatField
      FieldName = 'NO_19'
    end
    object qryModelChangesNO_20: TAbmesFloatField
      FieldName = 'NO_20'
    end
    object qryModelChangesNO_21: TAbmesFloatField
      FieldName = 'NO_21'
    end
    object qryModelChangesNO_22: TAbmesFloatField
      FieldName = 'NO_22'
    end
    object qryModelChangesNO_23: TAbmesFloatField
      FieldName = 'NO_23'
    end
    object qryModelChangesNO_24: TAbmesFloatField
      FieldName = 'NO_24'
    end
    object qryModelChangesNO_25: TAbmesFloatField
      FieldName = 'NO_25'
    end
    object qryModelChangesNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qryModelChangesNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object qryModelChangesFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object qryModelChangesNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT_EX'
      Size = 100
    end
    object qryModelChangesMLL_CHANGE_REPLY_TYPE_CODE: TAbmesFloatField
      FieldName = 'MLL_CHANGE_REPLY_TYPE_CODE'
    end
    object qryModelChangesDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryModelChangesDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryModelChangesDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qryModelChangesO_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'O_PRODUCT_CODE'
    end
    object qryModelChangesO_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'O_PRODUCT_NAME'
      Size = 100
    end
    object qryModelChangesO_PRODUCT_NO: TAbmesFloatField
      FieldName = 'O_PRODUCT_NO'
    end
    object qryModelChangesO_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'O_PRODUCT_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryModelChangesN_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'N_PRODUCT_CODE'
    end
    object qryModelChangesN_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'N_PRODUCT_NAME'
      Size = 100
    end
    object qryModelChangesN_PRODUCT_NO: TAbmesFloatField
      FieldName = 'N_PRODUCT_NO'
    end
    object qryModelChangesN_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'N_PRODUCT_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryModelChangesO_STORE_CODE: TAbmesFloatField
      FieldName = 'O_STORE_CODE'
    end
    object qryModelChangesO_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'O_STORE_IDENTIFIER'
      Size = 45
    end
    object qryModelChangesN_STORE_CODE: TAbmesFloatField
      FieldName = 'N_STORE_CODE'
    end
    object qryModelChangesN_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'N_STORE_IDENTIFIER'
      Size = 45
    end
    object qryModelChangesO_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'O_PRODUCT_TECH_QUANTITY'
    end
    object qryModelChangesN_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'N_PRODUCT_TECH_QUANTITY'
    end
    object qryModelChangesREQUEST_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'REQUEST_EMPLOYEE_CODE'
    end
    object qryModelChangesREQUEST_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'REQUEST_EMPLOYEE_NAME'
      Size = 54
    end
    object qryModelChangesREQUEST_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_DATE'
    end
    object qryModelChangesREQUEST_TIME: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_TIME'
    end
    object qryModelChangesREPLY_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'REPLY_EMPLOYEE_CODE'
    end
    object qryModelChangesREPLY_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'REPLY_EMPLOYEE_NAME'
      Size = 54
    end
    object qryModelChangesREPLY_DATE: TAbmesSQLTimeStampField
      FieldName = 'REPLY_DATE'
    end
    object qryModelChangesREPLY_TIME: TAbmesSQLTimeStampField
      FieldName = 'REPLY_TIME'
    end
    object qryModelChangesREPLY_ACCEPT_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'REPLY_ACCEPT_EMPLOYEE_CODE'
    end
    object qryModelChangesREPLY_ACCEPT_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'REPLY_ACCEPT_EMPLOYEE_NAME'
      Size = 54
    end
    object qryModelChangesREPLY_ACCEPT_DATE: TAbmesSQLTimeStampField
      FieldName = 'REPLY_ACCEPT_DATE'
    end
    object qryModelChangesREPLY_ACCEPT_TIME: TAbmesSQLTimeStampField
      FieldName = 'REPLY_ACCEPT_TIME'
    end
    object qryModelChangesIS_DIRECT_CHANGE: TAbmesFloatField
      FieldName = 'IS_DIRECT_CHANGE'
      ProviderFlags = []
    end
  end
  object qryGetLatestMllcTimestamp: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  iv.LATEST_MLLC_TIMESTAMP'
      'from'
      '  INTERNAL_VALUES iv'
      'where'
      '  (iv.CODE = 1)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 320
    Top = 128
    object qryGetLatestMllcTimestampLATEST_MLLC_TIMESTAMP: TAbmesSQLTimeStampField
      FieldName = 'LATEST_MLLC_TIMESTAMP'
    end
  end
  object prvPendingChangeCounts: TDataSetProvider
    DataSet = qryPendingChangeCounts
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = prvPendingChangeCountsBeforeGetRecords
    Left = 320
    Top = 8
  end
  object qryUpdMllStores: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'update'
      '  MATERIAL_LIST_LINES_FOR_EDIT mll'
      'set'
      '  mll.STORE_CODE = %NEW_STORE_CODE'
      'where'
      
        '  (mll.MLL_OBJECT_BRANCH_CODE, mll.MLL_OBJECT_CODE) in ( %MLL_SE' +
        'T ) and'
      '  (mll.STORE_CODE = %OLD_STORE_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'NEW_STORE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'MLL_SET'
        ParamType = ptInput
        Value = '(1, 1)'
      end
      item
        DataType = ftWideString
        Name = 'OLD_STORE_CODE'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 192
    Top = 56
  end
end
