inherited dmDoc: TdmDoc
  Height = 770
  Width = 1173
  object qryDocs: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  d.DOC_BRANCH_CODE,'
      '  d.DOC_CODE,'
      '  d.DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  d.IS_COMPLETE,'
      '  0 as RECORD_STATUS,'
      '  0 as MAX_DOC_ITEM_CODE'
      'from'
      '  DOCS d'
      'where'
      '  (d.DOC_BRANCH_CODE is null)'
      'order by'
      '  d.DOC_BRANCH_CODE,'
      '  d.DOC_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DOCS_FOR_EDIT'
    BeforeProviderEndTransaction = qryDocsBeforeProviderEndTransaction
    Left = 40
    Top = 56
    object qryDocsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object qryDocsIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
    end
    object qryDocsRECORD_STATUS: TAbmesFloatField
      FieldName = 'RECORD_STATUS'
      ProviderFlags = []
    end
    object qryDocsMAX_DOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'MAX_DOC_ITEM_CODE'
    end
  end
  object prvDocs: TDataSetProvider
    DataSet = qryDocs
    Options = [poCascadeDeletes, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = prvDocsUpdateError
    BeforeUpdateRecord = prvDocsBeforeUpdateRecord
    BeforeApplyUpdates = prvDocsBeforeApplyUpdates
    AfterApplyUpdates = prvDocsAfterApplyUpdates
    Left = 40
    Top = 8
  end
  object dsDocs: TDataSource
    DataSet = qryDocs
    Left = 40
    Top = 104
  end
  object qryDocItems: TAbmesSQLQuery
    DataSource = dsDocs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  di.DOC_BRANCH_CODE,'
      '  di.DOC_CODE,'
      '  di.DOC_ITEM_CODE,'
      '  di.DOC_ITEM_NO,'
      '  di.DOC_ITEM_NAME,'
      '  di.DOC_ITEM_TYPE_CODE,'
      '  di.IS_INACTIVE,'
      '  di.NOTES,'
      '  di.CREATE_EMPLOYEE_CODE,'
      '  di.CREATE_DATE,'
      '  di.CREATE_TIME,'
      '  di.CHANGE_EMPLOYEE_CODE,'
      '  di.CHANGE_DATE,'
      '  di.CHANGE_TIME,'
      '  di.DEVELOP_EMPLOYEE_CODE,'
      '  di.DEVELOP_DATE,'
      '  di.DEVELOP_TIME,'
      '  di.AUTHORIZE_EMPLOYEE_CODE,'
      '  di.AUTHORIZE_DATE,'
      '  di.AUTHORIZE_TIME,'
      '  di.APPROVE_EMPLOYEE_CODE,'
      '  di.APPROVE_DATE,'
      '  di.APPROVE_TIME,'
      '  di.DOC_ITEM_STORAGE_TYPE_CODE,'
      '  di.FILE_NAME,'
      '  di.RELATIVE_PATH,'
      '  di.DOC_ITEM_PATTERN_CODE,'
      '  di.STORED_FILE_BRANCH_CODE,'
      '  di.STORED_FILE_CODE,'
      ''
      '  To_Number(null) as FILE_EXTENSION_CODE,'
      ''
      '  dlr.DUMMY_LONG_RAW_DATA as STORED_FILE_DATA,'
      ''
      '  0 as IS_STORED_FILE_CHANGED,'
      '  0 as RECORD_STATUS,'
      '  1 as IS_NOT_DELETED,'
      '  0 as MAX_DOC_ITEM_SYS_ROLE_CODE,'
      '  0 as DOC_ITEM_ACCESS_LEVEL_CODE,'
      '  di.IS_MIRRORED,'
      '  di.MIRRORED_FILE_NAME,'
      '  di.MIRRORED_RELATIVE_PATH,'
      '  di.FILE_CHANGE_EMPLOYEE_CODE,'
      '  di.FILE_CHANGE_DATE,'
      '  di.FILE_CHANGE_TIME'
      ''
      'from'
      '  DOC_ITEMS di,'
      '  DUMMY_LONG_RAW dlr'
      ''
      'where'
      '  (di.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (di.DOC_CODE = :DOC_CODE) and'
      '  (di.DOC_ITEM_CODE is null) and'
      '  (dlr.CODE = 0)'
      ''
      'order by'
      '  di.DOC_BRANCH_CODE,'
      '  di.DOC_CODE,'
      '  di.DOC_ITEM_NO'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 40
    Top = 152
    object qryDocItemsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemsDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemsDOC_ITEM_NO: TAbmesFloatField
      FieldName = 'DOC_ITEM_NO'
    end
    object qryDocItemsDOC_ITEM_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_NAME'
      Size = 100
    end
    object qryDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object qryDocItemsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object qryDocItemsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryDocItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryDocItemsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryDocItemsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryDocItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryDocItemsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryDocItemsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object z: TAbmesFloatField
      FieldName = 'DEVELOP_EMPLOYEE_CODE'
    end
    object qryDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_DATE'
    end
    object qryDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_TIME'
    end
    object qryDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object qryDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_DATE'
    end
    object qryDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_TIME'
    end
    object qryDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'APPROVE_EMPLOYEE_CODE'
    end
    object qryDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_DATE'
    end
    object qryDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_TIME'
    end
    object qryDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STORAGE_TYPE_CODE'
    end
    object qryDocItemsRELATIVE_PATH: TAbmesWideStringField
      FieldName = 'RELATIVE_PATH'
      Size = 250
    end
    object qryDocItemsFILE_NAME: TAbmesWideStringField
      FieldName = 'FILE_NAME'
      Size = 250
    end
    object qryDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_PATTERN_CODE'
    end
    object qryDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_BRANCH_CODE'
    end
    object qryDocItemsSTORED_FILE_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_CODE'
    end
    object qryDocItemsFILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'FILE_EXTENSION_CODE'
      ProviderFlags = []
    end
    object qryDocItemsSTORED_FILE_DATA: TBlobField
      FieldName = 'STORED_FILE_DATA'
      ProviderFlags = []
      Size = 1
    end
    object qryDocItemsIS_STORED_FILE_CHANGED: TAbmesFloatField
      FieldName = 'IS_STORED_FILE_CHANGED'
      ProviderFlags = []
    end
    object qryDocItemsRECORD_STATUS: TAbmesFloatField
      FieldName = 'RECORD_STATUS'
      ProviderFlags = []
    end
    object qryDocItemsIS_NOT_DELETED: TAbmesFloatField
      FieldName = 'IS_NOT_DELETED'
    end
    object qryDocItemsMAX_DOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'MAX_DOC_ITEM_SYS_ROLE_CODE'
    end
    object qryDocItemsDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_ACCESS_LEVEL_CODE'
    end
    object qryDocItemsIS_MIRRORED: TAbmesFloatField
      FieldName = 'IS_MIRRORED'
    end
    object qryDocItemsMIRRORED_FILE_NAME: TAbmesWideStringField
      FieldName = 'MIRRORED_FILE_NAME'
      Size = 250
    end
    object qryDocItemsMIRRORED_RELATIVE_PATH: TAbmesWideStringField
      FieldName = 'MIRRORED_RELATIVE_PATH'
      Size = 250
    end
    object qryDocItemsFILE_CHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FILE_CHANGE_EMPLOYEE_CODE'
    end
    object qryDocItemsFILE_CHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'FILE_CHANGE_DATE'
    end
    object qryDocItemsFILE_CHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'FILE_CHANGE_TIME'
    end
  end
  object qryGetNewDocCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_DOCS.NextVal as NEW_DOC_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 40
    Top = 424
    object qryGetNewDocCodeNEW_DOC_CODE: TAbmesFloatField
      FieldName = 'NEW_DOC_CODE'
    end
  end
  object qryDocItemTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  dit.DOC_ITEM_TYPE_CODE,'
      '  dit.DOC_ITEM_TYPE_NAME,'
      '  dit.DOC_ITEM_BASE_TYPE_CODE,'
      '  dit.IS_DNC_DOC,'
      '  dibt.DOC_ITEM_BASE_TYPE_NAME,'
      
        '  Cast(MiscUtils.DocItemTypeFileExtensions(dit.DOC_ITEM_TYPE_COD' +
        'E) as Varchar2(250 char)) as DOC_ITEM_TYPE_FILE_EXTENSIONS'
      'from'
      '  DOC_ITEM_TYPES dit,'
      '  DOC_ITEM_BASE_TYPES dibt'
      'where'
      '  (dit.DOC_ITEM_BASE_TYPE_CODE = dibt.DOC_ITEM_BASE_TYPE_CODE)'
      'order by'
      '  dit.DOC_ITEM_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 504
    Top = 64
    object qryDocItemTypesDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemTypesDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Size = 50
    end
    object qryDocItemTypesDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_BASE_TYPE_CODE'
    end
    object qryDocItemTypesDOC_ITEM_BASE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_BASE_TYPE_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryDocItemTypesDOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_FILE_EXTENSIONS'
      ProviderFlags = []
      Size = 250
    end
    object qryDocItemTypesIS_DNC_DOC: TAbmesFloatField
      FieldName = 'IS_DNC_DOC'
    end
  end
  object prvDocItemTypes: TDataSetProvider
    DataSet = qryDocItemTypes
    UpdateMode = upWhereKeyOnly
    Left = 504
    Top = 8
  end
  object qryLoadDoc: TAbmesSQLQuery
    BeforeScroll = qryLoadDocBeforeScroll
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  d.DOC_BRANCH_CODE,'
      '  d.DOC_CODE,'
      '  d.DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  d.IS_COMPLETE'
      ''
      'from'
      '  DOCS d'
      ''
      'where'
      '  ( (d.DOC_BRANCH_CODE, d.DOC_CODE) in'
      '    ('
      '      %SELECT_SPECIFIC_DOCS'
      '    )'
      '  )'
      ''
      'order by'
      '  d.DOC_BRANCH_CODE,'
      '  d.DOC_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'SELECT_SPECIFIC_DOCS'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 136
    Top = 56
    object qryLoadDocDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryLoadDocDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryLoadDocDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object qryLoadDocIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
    end
  end
  object prvLoadDoc: TDataSetProvider
    DataSet = qryLoadDoc
    UpdateMode = upWhereKeyOnly
    OnGetData = prvLoadDocGetData
    BeforeGetRecords = prvLoadDocBeforeGetRecords
    AfterGetRecords = prvLoadDocAfterGetRecords
    Left = 136
    Top = 8
  end
  object dsLoadDoc: TDataSource
    DataSet = qryLoadDoc
    Left = 136
    Top = 104
  end
  object qryLoadDocItems: TAbmesSQLQuery
    BeforeScroll = qryLoadDocItemsBeforeScroll
    DataSource = dsLoadDoc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  di.DOC_BRANCH_CODE,'
      '  di.DOC_CODE,'
      '  di.DOC_ITEM_CODE,'
      '  di.DOC_ITEM_NO,'
      '  di.DOC_ITEM_NAME,'
      '  di.DOC_ITEM_TYPE_CODE,'
      '  di.IS_INACTIVE,'
      '  di.NOTES,'
      '  di.CREATE_EMPLOYEE_CODE,'
      '  di.CREATE_DATE,'
      '  di.CREATE_TIME,'
      '  di.CHANGE_EMPLOYEE_CODE,'
      '  di.CHANGE_DATE,'
      '  di.CHANGE_TIME,'
      '  di.DEVELOP_EMPLOYEE_CODE,'
      '  di.DEVELOP_DATE,'
      '  di.DEVELOP_TIME,'
      '  di.AUTHORIZE_EMPLOYEE_CODE,'
      '  di.AUTHORIZE_DATE,'
      '  di.AUTHORIZE_TIME,'
      '  di.APPROVE_EMPLOYEE_CODE,'
      '  di.APPROVE_DATE,'
      '  di.APPROVE_TIME,'
      '  di.DOC_ITEM_STORAGE_TYPE_CODE,'
      '  di.FILE_NAME,'
      '  di.RELATIVE_PATH,'
      '  di.DOC_ITEM_PATTERN_CODE,'
      '  di.STORED_FILE_BRANCH_CODE,'
      '  di.STORED_FILE_CODE,'
      '  To_Number(null) as FILE_EXTENSION_CODE,'
      '  di.IS_MIRRORED,'
      '  di.MIRRORED_FILE_NAME,'
      '  di.MIRRORED_RELATIVE_PATH,'
      '  di.FILE_CHANGE_EMPLOYEE_CODE,'
      '  di.FILE_CHANGE_DATE,'
      '  di.FILE_CHANGE_TIME'
      ''
      'from'
      '  DOC_ITEMS di'
      ''
      'where'
      '  (di.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (di.DOC_CODE = :DOC_CODE) and'
      ''
      
        '  (1 = 2)   -- da ne vrushta nishto, za da raboti mehanizma za e' +
        'dnokratno iztochvane'
      ''
      'order by'
      '  di.DOC_BRANCH_CODE,'
      '  di.DOC_CODE,'
      '  di.DOC_ITEM_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 136
    Top = 152
    object qryLoadDocItemsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryLoadDocItemsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryLoadDocItemsDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryLoadDocItemsDOC_ITEM_NO: TAbmesFloatField
      FieldName = 'DOC_ITEM_NO'
    end
    object qryLoadDocItemsDOC_ITEM_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_NAME'
      Size = 100
    end
    object qryLoadDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object qryLoadDocItemsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object qryLoadDocItemsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryLoadDocItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryLoadDocItemsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryLoadDocItemsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryLoadDocItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryLoadDocItemsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryLoadDocItemsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryLoadDocItemsDEVELOP_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DEVELOP_EMPLOYEE_CODE'
    end
    object qryLoadDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_DATE'
    end
    object qryLoadDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_TIME'
    end
    object qryLoadDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object qryLoadDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_DATE'
    end
    object qryLoadDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_TIME'
    end
    object qryLoadDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'APPROVE_EMPLOYEE_CODE'
    end
    object qryLoadDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_DATE'
    end
    object qryLoadDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_TIME'
    end
    object qryLoadDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STORAGE_TYPE_CODE'
    end
    object qryLoadDocItemsRELATIVE_PATH: TAbmesWideStringField
      FieldName = 'RELATIVE_PATH'
      Size = 250
    end
    object qryLoadDocItemsFILE_NAME: TAbmesWideStringField
      FieldName = 'FILE_NAME'
      Size = 250
    end
    object qryLoadDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_PATTERN_CODE'
    end
    object qryLoadDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_BRANCH_CODE'
    end
    object qryLoadDocItemsSTORED_FILE_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_CODE'
    end
    object qryLoadDocItemsFILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'FILE_EXTENSION_CODE'
    end
    object qryLoadDocItemsIS_MIRRORED: TAbmesFloatField
      FieldName = 'IS_MIRRORED'
    end
    object qryLoadDocItemsMIRRORED_FILE_NAME: TAbmesWideStringField
      FieldName = 'MIRRORED_FILE_NAME'
      Size = 250
    end
    object qryLoadDocItemsMIRRORED_RELATIVE_PATH: TAbmesWideStringField
      FieldName = 'MIRRORED_RELATIVE_PATH'
      Size = 250
    end
    object qryLoadDocItemsFILE_CHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FILE_CHANGE_EMPLOYEE_CODE'
    end
    object qryLoadDocItemsFILE_CHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'FILE_CHANGE_DATE'
    end
    object qryLoadDocItemsFILE_CHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'FILE_CHANGE_TIME'
    end
  end
  object qryInsDoc: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
        Name = 'DOC_EMPTINESS_REQUIREMENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_COMPLETE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into DOCS_FOR_EDIT'
      '('
      '  DOC_BRANCH_CODE,'
      '  DOC_CODE,'
      '  DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  IS_COMPLETE'
      ')'
      'values'
      '('
      '  :DOC_BRANCH_CODE,'
      '  :DOC_CODE,'
      '  :DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  :IS_COMPLETE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 232
    Top = 8
  end
  object qryInsDocItem: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
        Name = 'DOC_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOC_ITEM_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'NOTES'
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
        Name = 'CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEVELOP_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DEVELOP_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DEVELOP_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'AUTHORIZE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'AUTHORIZE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'APPROVE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'APPROVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'APPROVE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_STORAGE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'FILE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'RELATIVE_PATH'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_PATTERN_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORED_FILE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORED_FILE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_MIRRORED'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MIRRORED_FILE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MIRRORED_RELATIVE_PATH'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILE_CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FILE_CHANGE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FILE_CHANGE_TIME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into DOC_ITEMS_FOR_EDIT'
      '('
      '  DOC_BRANCH_CODE,'
      '  DOC_CODE,'
      '  DOC_ITEM_CODE,'
      '  DOC_ITEM_NO,'
      '  DOC_ITEM_NAME,'
      '  DOC_ITEM_TYPE_CODE,'
      '  IS_INACTIVE,'
      '  NOTES,'
      '  CREATE_EMPLOYEE_CODE,'
      '  CREATE_DATE,'
      '  CREATE_TIME,'
      '  CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE,'
      '  CHANGE_TIME,'
      '  DEVELOP_EMPLOYEE_CODE,'
      '  DEVELOP_DATE,'
      '  DEVELOP_TIME,'
      '  AUTHORIZE_EMPLOYEE_CODE,'
      '  AUTHORIZE_DATE,'
      '  AUTHORIZE_TIME,'
      '  APPROVE_EMPLOYEE_CODE,'
      '  APPROVE_DATE,'
      '  APPROVE_TIME,'
      '  DOC_ITEM_STORAGE_TYPE_CODE,'
      '  FILE_NAME,'
      '  RELATIVE_PATH,'
      '  DOC_ITEM_PATTERN_CODE,'
      '  STORED_FILE_BRANCH_CODE,'
      '  STORED_FILE_CODE,'
      '  IS_MIRRORED,'
      '  MIRRORED_FILE_NAME,'
      '  MIRRORED_RELATIVE_PATH,'
      '  FILE_CHANGE_EMPLOYEE_CODE,'
      '  FILE_CHANGE_DATE,'
      '  FILE_CHANGE_TIME'
      ')'
      'values'
      '('
      '  :DOC_BRANCH_CODE,'
      '  :DOC_CODE,'
      '  :DOC_ITEM_CODE,'
      '  (-1) * :DOC_ITEM_NO,'
      '  :DOC_ITEM_NAME,'
      '  :DOC_ITEM_TYPE_CODE,'
      '  :IS_INACTIVE,'
      '  :NOTES,'
      '  :CREATE_EMPLOYEE_CODE,'
      '  :CREATE_DATE,'
      '  :CREATE_TIME,'
      '  :CHANGE_EMPLOYEE_CODE,'
      '  :CHANGE_DATE,'
      '  :CHANGE_TIME,'
      '  :DEVELOP_EMPLOYEE_CODE,'
      '  :DEVELOP_DATE,'
      '  :DEVELOP_TIME,'
      '  :AUTHORIZE_EMPLOYEE_CODE,'
      '  :AUTHORIZE_DATE,'
      '  :AUTHORIZE_TIME,'
      '  :APPROVE_EMPLOYEE_CODE,'
      '  :APPROVE_DATE,'
      '  :APPROVE_TIME,'
      '  :DOC_ITEM_STORAGE_TYPE_CODE,'
      '  :FILE_NAME,'
      '  :RELATIVE_PATH,'
      '  :DOC_ITEM_PATTERN_CODE,'
      '  :STORED_FILE_BRANCH_CODE,'
      '  :STORED_FILE_CODE,'
      '  :IS_MIRRORED,'
      '  :MIRRORED_FILE_NAME,'
      '  :MIRRORED_RELATIVE_PATH,'
      '  :FILE_CHANGE_EMPLOYEE_CODE,'
      '  :FILE_CHANGE_DATE,'
      '  :FILE_CHANGE_TIME'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 232
    Top = 176
  end
  object qryUpdDocItem: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOC_ITEM_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'NOTES'
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
        Name = 'CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEVELOP_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DEVELOP_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DEVELOP_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'AUTHORIZE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'AUTHORIZE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'APPROVE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'APPROVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'APPROVE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_STORAGE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'FILE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'RELATIVE_PATH'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_PATTERN_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORED_FILE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORED_FILE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_MIRRORED'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MIRRORED_FILE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MIRRORED_RELATIVE_PATH'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILE_CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FILE_CHANGE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FILE_CHANGE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  DOC_ITEMS_FOR_EDIT dife'
      'set'
      
        '  dife.DOC_ITEM_NO = Decode(:DOC_ITEM_NO, dife.DOC_ITEM_NO, dife' +
        '.DOC_ITEM_NO, (-1) * :DOC_ITEM_NO),'
      '  dife.DOC_ITEM_NAME = :DOC_ITEM_NAME,'
      '  dife.DOC_ITEM_TYPE_CODE = :DOC_ITEM_TYPE_CODE,'
      '  dife.IS_INACTIVE = :IS_INACTIVE,'
      '  dife.NOTES = :NOTES,'
      '  dife.CREATE_EMPLOYEE_CODE = :CREATE_EMPLOYEE_CODE,'
      '  dife.CREATE_DATE = :CREATE_DATE,'
      '  dife.CREATE_TIME = :CREATE_TIME,'
      '  dife.CHANGE_EMPLOYEE_CODE = :CHANGE_EMPLOYEE_CODE,'
      '  dife.CHANGE_DATE = :CHANGE_DATE,'
      '  dife.CHANGE_TIME = :CHANGE_TIME,'
      '  dife.DEVELOP_EMPLOYEE_CODE = :DEVELOP_EMPLOYEE_CODE,'
      '  dife.DEVELOP_DATE = :DEVELOP_DATE,'
      '  dife.DEVELOP_TIME = :DEVELOP_TIME,'
      '  dife.AUTHORIZE_EMPLOYEE_CODE = :AUTHORIZE_EMPLOYEE_CODE,'
      '  dife.AUTHORIZE_DATE = :AUTHORIZE_DATE,'
      '  dife.AUTHORIZE_TIME = :AUTHORIZE_TIME,'
      '  dife.APPROVE_EMPLOYEE_CODE = :APPROVE_EMPLOYEE_CODE,'
      '  dife.APPROVE_DATE = :APPROVE_DATE,'
      '  dife.APPROVE_TIME = :APPROVE_TIME,'
      '  dife.DOC_ITEM_STORAGE_TYPE_CODE = :DOC_ITEM_STORAGE_TYPE_CODE,'
      '  dife.FILE_NAME = :FILE_NAME,'
      '  dife.RELATIVE_PATH = :RELATIVE_PATH,'
      '  dife.DOC_ITEM_PATTERN_CODE = :DOC_ITEM_PATTERN_CODE,'
      '  dife.STORED_FILE_BRANCH_CODE = :STORED_FILE_BRANCH_CODE,'
      '  dife.STORED_FILE_CODE = :STORED_FILE_CODE,'
      '  dife.IS_MIRRORED = :IS_MIRRORED,'
      '  dife.MIRRORED_FILE_NAME = :MIRRORED_FILE_NAME,'
      '  dife.MIRRORED_RELATIVE_PATH = :MIRRORED_RELATIVE_PATH,'
      '  dife.FILE_CHANGE_EMPLOYEE_CODE = :FILE_CHANGE_EMPLOYEE_CODE,'
      '  dife.FILE_CHANGE_DATE = :FILE_CHANGE_DATE,'
      '  dife.FILE_CHANGE_TIME = :FILE_CHANGE_TIME'
      'where'
      '  (dife.DOC_BRANCH_CODE = :OLD_DOC_BRANCH_CODE) and'
      '  (dife.DOC_CODE = :OLD_DOC_CODE) and'
      '  (dife.DOC_ITEM_CODE = :DOC_ITEM_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 232
    Top = 232
  end
  object qryDelDocItem: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OLD_DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  DOC_ITEMS_FOR_EDIT dife'
      'where'
      '  (dife.DOC_BRANCH_CODE = :OLD_DOC_BRANCH_CODE) and'
      '  (dife.DOC_CODE = :OLD_DOC_CODE) and'
      '  (dife.DOC_ITEM_CODE = :DOC_ITEM_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 232
    Top = 288
  end
  object qryGetDocItem: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
        Name = 'DOC_ITEM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  di.DOC_BRANCH_CODE,'
      '  di.DOC_CODE,'
      '  di.DOC_ITEM_CODE,'
      '  di.FILE_NAME,'
      '  di.RELATIVE_PATH'
      'from'
      '  DOC_ITEMS di,'
      '  DOC_ITEM_TYPES dit'
      'where'
      '  (di.DOC_ITEM_TYPE_CODE = dit.DOC_ITEM_TYPE_CODE) and'
      '  (di.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (di.DOC_CODE = :DOC_CODE) and'
      '  (di.DOC_ITEM_CODE = :DOC_ITEM_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 40
    Top = 320
    object qryGetDocItemDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryGetDocItemDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryGetDocItemDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
    end
    object qryGetDocItemFILE_NAME: TAbmesWideStringField
      FieldName = 'FILE_NAME'
      Size = 250
    end
    object qryGetDocItemRELATIVE_PATH: TAbmesWideStringField
      FieldName = 'RELATIVE_PATH'
      Size = 250
    end
  end
  object qryGetStoredFileData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORED_FILE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORED_FILE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sfdh.STORED_FILE_DATA'
      'from'
      '  STORED_FILE_DATA_HOLDERS sfdh'
      'where'
      '  (sfdh.STORED_FILE_BRANCH_CODE = :STORED_FILE_BRANCH_CODE) and'
      '  (sfdh.STORED_FILE_CODE = :STORED_FILE_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 400
    object qryGetStoredFileDataSTORED_FILE_DATA: TBlobField
      FieldName = 'STORED_FILE_DATA'
      Size = 1
    end
  end
  object qryInsStoredFileData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORED_FILE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORED_FILE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftBlob
        Name = 'STORED_FILE_DATA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into STORED_FILE_DATA_HOLDERS ('
      '  STORED_FILE_BRANCH_CODE,'
      '  STORED_FILE_CODE,'
      '  STORED_FILE_DATA'
      ')'
      'values ('
      '  :STORED_FILE_BRANCH_CODE,'
      '  :STORED_FILE_CODE,'
      '  :STORED_FILE_DATA'
      ')'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 120
  end
  object qryInsStoredFile: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORED_FILE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORED_FILE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILE_EXTENSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORED_FILE_SIZE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SHA1_HASH_VALUE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into STORED_FILES ('
      '  STORED_FILE_BRANCH_CODE,'
      '  STORED_FILE_CODE,'
      '  FILE_EXTENSION_CODE,'
      '  STORED_FILE_SIZE,'
      '  SHA1_HASH_VALUE,'
      '  CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE,'
      '  CHANGE_TIME,'
      '  STORED_FILE_GUID'
      ')'
      'values ('
      '  :STORED_FILE_BRANCH_CODE,'
      '  :STORED_FILE_CODE,'
      '  :FILE_EXTENSION_CODE,'
      '  :STORED_FILE_SIZE,'
      '  :SHA1_HASH_VALUE,'
      '  LoginContext.UserCode,'
      '  ContextDate,'
      '  ContextTime,'
      '  Sys_Guid()'
      ')'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 8
  end
  object qryGetNewStoredFileCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_STORED_FILES.NextVal as NEW_STORED_FILE_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 64
    object qryGetNewStoredFileCodeNEW_STORED_FILE_CODE: TAbmesFloatField
      FieldName = 'NEW_STORED_FILE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object qryDocItemTemplatesNom: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  dit.DOC_ITEM_TEMPLATE_CODE,'
      '  dit.DOC_ITEM_TEMPLATE_NAME,'
      ''
      '  dit.DOC_ITEM_TEMPLATE_TYPE_CODE,'
      ''
      '  ( select'
      '      ditt.DOC_ITEM_TEMPLATE_TYPE_NAME'
      '    from'
      '      DOC_ITEM_TEMPLATE_TYPES ditt'
      '    where'
      
        '      (ditt.DOC_ITEM_TEMPLATE_TYPE_CODE = dit.DOC_ITEM_TEMPLATE_' +
        'TYPE_CODE)'
      '  ) as DOC_ITEM_TEMPLATE_TYPE_NAME,'
      ''
      '  dit.DOC_BRANCH_CODE,'
      '  dit.DOC_CODE,'
      '  dit.DOC_ITEM_CODE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DOC_ITEM_PATTERNS dip'
      '    where'
      '      (dip.DOC_ITEM_PATTERN_CODE = dit.DOC_ITEM_TEMPLATE_CODE)'
      '  ) as IS_PATTERN,'
      ''
      '  di.IS_INACTIVE,'
      ''
      '  di.DOC_ITEM_TYPE_CODE,'
      '  '
      '  ( select'
      '      ditypes.DOC_ITEM_TYPE_NAME'
      '    from'
      '      DOC_ITEM_TYPES ditypes'
      '    where'
      '      (ditypes.DOC_ITEM_TYPE_CODE = di.DOC_ITEM_TYPE_CODE)'
      '  ) as DOC_ITEM_TYPE_NAME,'
      ''
      '  di.NOTES'
      ''
      'from'
      '  DOC_ITEM_TEMPLATES dit,'
      '  DOC_ITEMS di'
      ''
      'where'
      '  (dit.DOC_BRANCH_CODE = di.DOC_BRANCH_CODE) and'
      '  (dit.DOC_CODE = di.DOC_CODE) and'
      '  (dit.DOC_ITEM_CODE = di.DOC_ITEM_CODE)'
      ''
      'order by'
      '  dit.DOC_ITEM_TEMPLATE_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DOC_ITEM_TEMPLATES_FOR_EDIT'
    Left = 1048
    Top = 96
    object qryDocItemTemplatesNomDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemTemplatesNomDOC_ITEM_TEMPLATE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TEMPLATE_NAME'
      Size = 50
    end
    object qryDocItemTemplatesNomDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
    end
    object qryDocItemTemplatesNomDOC_ITEM_TEMPLATE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_NAME'
      Size = 100
    end
    object qryDocItemTemplatesNomDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDocItemTemplatesNomDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDocItemTemplatesNomDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
    end
    object qryDocItemTemplatesNomIS_PATTERN: TAbmesFloatField
      FieldName = 'IS_PATTERN'
    end
    object qryDocItemTemplatesNomIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object qryDocItemTemplatesNomDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object qryDocItemTemplatesNomDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Size = 50
    end
    object qryDocItemTemplatesNomNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object prvDocItemTemplatesNom: TDataSetProvider
    DataSet = qryDocItemTemplatesNom
    UpdateMode = upWhereKeyOnly
    OnGetData = prvDocItemTemplatesNomGetData
    AfterGetRecords = prvDocItemTemplatesNomAfterGetRecords
    Left = 1048
    Top = 40
  end
  object qryDocItemTemplate: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TEMPLATE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dit.DOC_ITEM_TEMPLATE_CODE,'
      '  dit.DOC_ITEM_TEMPLATE_NAME,'
      '  dit.DOC_ITEM_TEMPLATE_TYPE_CODE,'
      '  dit.DOC_BRANCH_CODE,'
      '  dit.DOC_CODE,'
      '  dit.DOC_ITEM_CODE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DOC_ITEM_PATTERNS dip'
      '    where'
      '      (dip.DOC_ITEM_PATTERN_CODE = dit.DOC_ITEM_TEMPLATE_CODE)'
      '  ) as IS_PATTERN,'
      ''
      '  0 as IS_CHANGED'
      ''
      'from'
      '  DOC_ITEM_TEMPLATES dit'
      ''
      'where'
      '  (dit.DOC_ITEM_TEMPLATE_CODE = :DOC_ITEM_TEMPLATE_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DOC_ITEM_TEMPLATES_FOR_EDIT'
    AfterProviderStartTransaction = qryDocItemTemplateAfterProviderStartTransaction
    Left = 632
    Top = 192
    object qryDocItemTemplateDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemTemplateDOC_ITEM_TEMPLATE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TEMPLATE_NAME'
      Size = 50
    end
    object qryDocItemTemplateDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
    end
    object qryDocItemTemplateDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDocItemTemplateDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDocItemTemplateDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
    end
    object qryDocItemTemplateIS_PATTERN: TAbmesFloatField
      FieldName = 'IS_PATTERN'
      ProviderFlags = []
    end
    object qryDocItemTemplateIS_CHANGED: TAbmesFloatField
      FieldName = 'IS_CHANGED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
  end
  object prvDocItemTemplate: TDataSetProvider
    DataSet = qryDocItemTemplate
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = prvDocItemTemplateAfterUpdateRecord
    BeforeUpdateRecord = prvDocItemTemplateBeforeUpdateRecord
    BeforeApplyUpdates = prvDocItemTemplateBeforeApplyUpdates
    AfterApplyUpdates = prvDocItemTemplateAfterApplyUpdates
    Left = 632
    Top = 136
  end
  object qryDocItemTemplateTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  ditt.DOC_ITEM_TEMPLATE_TYPE_CODE,'
      '  ditt.DOC_ITEM_TEMPLATE_TYPE_NO,'
      '  ditt.DOC_ITEM_TEMPLATE_TYPE_NAME'
      'from'
      '  DOC_ITEM_TEMPLATE_TYPES ditt'
      'order by'
      '  ditt.DOC_ITEM_TEMPLATE_TYPE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 624
    Top = 64
    object qryDocItemTemplateTypesDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemTemplateTypesDOC_ITEM_TEMPLATE_TYPE_NO: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_NO'
      Required = True
    end
    object qryDocItemTemplateTypesDOC_ITEM_TEMPLATE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_NAME'
      Size = 100
    end
  end
  object prvDocItemTemplateTypes: TDataSetProvider
    DataSet = qryDocItemTemplateTypes
    UpdateMode = upWhereKeyOnly
    Left = 624
    Top = 8
  end
  object qryInsPattern: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_PATTERN_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into DOC_ITEM_PATTERNS (DOC_ITEM_PATTERN_CODE)'
      'values (:DOC_ITEM_PATTERN_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 136
    Top = 464
  end
  object qryDelPattern: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_PATTERN_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  DOC_ITEM_PATTERNS dip'
      'where'
      '  (dip.DOC_ITEM_PATTERN_CODE = :DOC_ITEM_PATTERN_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 136
    Top = 520
  end
  object qryDocItemPatterns: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dit.DOC_ITEM_TEMPLATE_CODE as DOC_ITEM_PATTERN_CODE,'
      '  dit.DOC_ITEM_TEMPLATE_NAME as DOC_ITEM_PATTERN_NAME'
      'from'
      '  DOC_ITEM_TEMPLATES dit,'
      '  DOC_ITEM_PATTERNS dip'
      'where'
      '  (dit.DOC_ITEM_TEMPLATE_CODE = dip.DOC_ITEM_PATTERN_CODE) and'
      
        '  (dit.DOC_ITEM_TEMPLATE_TYPE_CODE = :DOC_ITEM_TEMPLATE_TYPE_COD' +
        'E)'
      'order by'
      '  DOC_ITEM_PATTERN_NAME'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 136
    Top = 408
    object qryDocItemPatternsDOC_ITEM_PATTERN_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_PATTERN_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemPatternsDOC_ITEM_PATTERN_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_PATTERN_NAME'
      Size = 50
    end
  end
  object prvDocItemPatterns: TDataSetProvider
    DataSet = qryDocItemPatterns
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 352
  end
  object qryGetDocItemTemplate: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TEMPLATE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  di.STORED_FILE_BRANCH_CODE,'
      '  di.STORED_FILE_CODE,'
      '  di.FILE_NAME,'
      ''
      '  ( select'
      '      dist.CONTENT_STORAGE_ADDRESS'
      '    from'
      '      DOC_ITEM_STORAGE_TYPES dist'
      '    where'
      
        '      (dist.DOC_ITEM_STORAGE_TYPE_CODE = di.DOC_ITEM_STORAGE_TYP' +
        'E_CODE)'
      '  ) as CONTENT_STORAGE_ADDRESS'
      ''
      'from'
      '  DOC_ITEM_TEMPLATES dit,'
      '  DOC_ITEMS di'
      'where'
      '  (dit.DOC_BRANCH_CODE = di.DOC_BRANCH_CODE) and'
      '  (dit.DOC_CODE = di.DOC_CODE) and'
      '  (dit.DOC_ITEM_CODE = di.DOC_ITEM_CODE) and'
      '  (dit.DOC_ITEM_TEMPLATE_CODE = :DOC_ITEM_TEMPLATE_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 568
    object qryGetDocItemTemplateSTORED_FILE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryGetDocItemTemplateSTORED_FILE_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryGetDocItemTemplateFILE_NAME: TAbmesWideStringField
      FieldName = 'FILE_NAME'
      Size = 250
    end
    object qryGetDocItemTemplateCONTENT_STORAGE_ADDRESS: TAbmesWideStringField
      FieldName = 'CONTENT_STORAGE_ADDRESS'
      Size = 250
    end
  end
  object qryGetStoredFileExtension: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORED_FILE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORED_FILE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  fe.FILE_EXTENSION_CODE as STORED_FILE_EXTENSION_CODE,'
      '  fe.FILE_EXTENSION_ABBREV as STORED_FILE_EXTENSION'
      'from'
      '  STORED_FILES sf,'
      '  FILE_EXTENSIONS fe'
      'where'
      '  (sf.FILE_EXTENSION_CODE = fe.FILE_EXTENSION_CODE) and'
      '  (sf.STORED_FILE_BRANCH_CODE = :STORED_FILE_BRANCH_CODE) and'
      '  (sf.STORED_FILE_CODE = :STORED_FILE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 512
    object qryGetStoredFileExtensionSTORED_FILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_EXTENSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryGetStoredFileExtensionSTORED_FILE_EXTENSION: TAbmesWideStringField
      FieldName = 'STORED_FILE_EXTENSION'
      Size = 10
    end
  end
  object qryDocItemTemplates: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dit.DOC_ITEM_TEMPLATE_CODE,'
      '  dit.DOC_ITEM_TEMPLATE_NAME'
      'from'
      '  DOC_ITEM_TEMPLATES dit,'
      '  DOC_ITEMS di'
      'where'
      '  (dit.DOC_BRANCH_CODE = di.DOC_BRANCH_CODE) and'
      '  (dit.DOC_CODE = di.DOC_CODE) and'
      '  (dit.DOC_ITEM_CODE = di.DOC_ITEM_CODE) and'
      '  (di.IS_INACTIVE = 0) and'
      
        '  (dit.DOC_ITEM_TEMPLATE_TYPE_CODE = :DOC_ITEM_TEMPLATE_TYPE_COD' +
        'E) and'
      '  (di.DOC_ITEM_TYPE_CODE = :DOC_ITEM_TYPE_CODE) and'
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        DOC_ITEM_PATTERNS dip'
      '      where'
      '        (dip.DOC_ITEM_PATTERN_CODE = dit.DOC_ITEM_TEMPLATE_CODE)'
      '    )'
      '  )'
      'order by'
      '  dit.DOC_ITEM_TEMPLATE_NAME'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DOC_ITEM_TEMPLATES_FOR_EDIT'
    Left = 360
    Top = 288
    object qryDocItemTemplatesDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemTemplatesDOC_ITEM_TEMPLATE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TEMPLATE_NAME'
      Size = 50
    end
  end
  object prvDocItemTemplates: TDataSetProvider
    DataSet = qryDocItemTemplates
    UpdateMode = upWhereKeyOnly
    Left = 360
    Top = 240
  end
  object qryFileExtensions: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  fe.FILE_EXTENSION_CODE,'
      '  fe.FILE_EXTENSION_NAME,'
      '  fe.FILE_EXTENSION_ABBREV,'
      '  fe.DOC_ITEM_VIEW_GENERATOR_CODE'
      'from'
      '  FILE_EXTENSIONS fe'
      'order by'
      '  fe.FILE_EXTENSION_CODE  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 504
    Top = 288
    object qryFileExtensionsFILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'FILE_EXTENSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFileExtensionsFILE_EXTENSION_NAME: TAbmesWideStringField
      FieldName = 'FILE_EXTENSION_NAME'
      Size = 50
    end
    object qryFileExtensionsFILE_EXTENSION_ABBREV: TAbmesWideStringField
      FieldName = 'FILE_EXTENSION_ABBREV'
      Size = 10
    end
    object qryFileExtensionsDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
    end
  end
  object prvFileExtensions: TDataSetProvider
    DataSet = qryFileExtensions
    UpdateMode = upWhereKeyOnly
    Left = 504
    Top = 232
  end
  object qryDocItemTypesNom: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  dit.DOC_ITEM_TYPE_CODE,'
      '  dit.DOC_ITEM_TYPE_NAME,'
      '  dit.IS_DNC_DOC,'
      '  dit.DOC_ITEM_BASE_TYPE_CODE,'
      ''
      
        '  Cast(MiscUtils.DocItemTypeFileExtensions(dit.DOC_ITEM_TYPE_COD' +
        'E) as Varchar2(250 char)) as DOC_ITEM_TYPE_FILE_EXTENSIONS'
      ''
      'from'
      '  DOC_ITEM_TYPES dit'
      'order by'
      '  dit.DOC_ITEM_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 760
    Top = 64
    object qryDocItemTypesNomDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemTypesNomDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Size = 50
    end
    object qryDocItemTypesNomIS_DNC_DOC: TAbmesFloatField
      FieldName = 'IS_DNC_DOC'
      FieldValueType = fvtBoolean
    end
    object qryDocItemTypesNomDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_BASE_TYPE_CODE'
    end
    object qryDocItemTypesNomDOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_FILE_EXTENSIONS'
      Size = 250
    end
  end
  object prvDocItemTypesNom: TDataSetProvider
    DataSet = qryDocItemTypesNom
    UpdateMode = upWhereKeyOnly
    Left = 760
    Top = 8
  end
  object qryDocItemBaseTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  dibt.DOC_ITEM_BASE_TYPE_CODE,'
      '  dibt.DOC_ITEM_BASE_TYPE_NAME'
      'from'
      '  DOC_ITEM_BASE_TYPES dibt'
      'order by'
      '  dibt.DOC_ITEM_BASE_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 504
    Top = 176
    object qryDocItemBaseTypesDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_BASE_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDocItemBaseTypesDOC_ITEM_BASE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_BASE_TYPE_NAME'
      Required = True
      Size = 50
    end
  end
  object prvDocItemBaseTypes: TDataSetProvider
    DataSet = qryDocItemBaseTypes
    UpdateMode = upWhereKeyOnly
    Left = 504
    Top = 120
  end
  object qryDocItemTypeNom: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dit.DOC_ITEM_TYPE_CODE,'
      '  dit.DOC_ITEM_TYPE_NAME,'
      '  dit.IS_DNC_DOC,'
      '  dit.DOC_ITEM_BASE_TYPE_CODE'
      'from'
      '  DOC_ITEM_TYPES dit'
      'where'
      '  (dit.DOC_ITEM_TYPE_CODE = :DOC_ITEM_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 760
    Top = 176
    object qryDocItemTypeNomDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemTypeNomDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Size = 50
    end
    object qryDocItemTypeNomIS_DNC_DOC: TAbmesFloatField
      FieldName = 'IS_DNC_DOC'
      FieldValueType = fvtBoolean
    end
    object qryDocItemTypeNomDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_BASE_TYPE_CODE'
    end
  end
  object prvDocItemTypeNom: TDataSetProvider
    DataSet = qryDocItemTypeNom
    UpdateMode = upWhereKeyOnly
    Left = 760
    Top = 120
  end
  object dsDocItemTypeNom: TDataSource
    DataSet = qryDocItemTypeNom
    Left = 760
    Top = 232
  end
  object qryDocItemTypeFileExtensions: TAbmesSQLQuery
    DataSource = dsDocItemTypeNom
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TYPE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  ditfe.DOC_ITEM_TYPE_CODE,'
      '  ditfe.FILE_EXTENSION_CODE,'
      '  fe.FILE_EXTENSION_NAME,'
      '  fe.FILE_EXTENSION_ABBREV'
      'from'
      '  DOC_ITEM_TYPE_FILE_EXTENSIONS ditfe,'
      '  FILE_EXTENSIONS fe'
      'where'
      '  (ditfe.FILE_EXTENSION_CODE = fe.FILE_EXTENSION_CODE) and'
      '  (ditfe.DOC_ITEM_TYPE_CODE = :DOC_ITEM_TYPE_CODE)'
      'order by'
      '  (fe.FILE_EXTENSION_ABBREV)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 760
    Top = 288
    object qryDocItemTypeFileExtensionsDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemTypeFileExtensionsFILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'FILE_EXTENSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemTypeFileExtensionsFILE_EXTENSION_NAME: TAbmesWideStringField
      FieldName = 'FILE_EXTENSION_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryDocItemTypeFileExtensionsFILE_EXTENSION_ABBREV: TAbmesWideStringField
      FieldName = 'FILE_EXTENSION_ABBREV'
      ProviderFlags = []
      Size = 10
    end
  end
  object qryDocItemTypeNotFileExtensions: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_number(:DOC_ITEM_TYPE_CODE) as DOC_ITEM_TYPE_CODE,'
      '  fe.FILE_EXTENSION_CODE,'
      '  fe.FILE_EXTENSION_NAME,'
      '  fe.FILE_EXTENSION_ABBREV'
      'from'
      '  FILE_EXTENSIONS fe'
      'where'
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        DOC_ITEM_TYPE_FILE_EXTENSIONS ditfe'
      '      where'
      '        (ditfe.FILE_EXTENSION_CODE = fe.FILE_EXTENSION_CODE) and'
      '        (ditfe.DOC_ITEM_TYPE_CODE = :DOC_ITEM_TYPE_CODE)'
      '    )'
      '  )'
      'order by'
      '  (fe.FILE_EXTENSION_ABBREV)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 760
    Top = 400
    object qryDocItemTypeNotFileExtensionsDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemTypeNotFileExtensionsFILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'FILE_EXTENSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemTypeNotFileExtensionsFILE_EXTENSION_NAME: TAbmesWideStringField
      FieldName = 'FILE_EXTENSION_NAME'
      Size = 50
    end
    object qryDocItemTypeNotFileExtensionsFILE_EXTENSION_ABBREV: TAbmesWideStringField
      FieldName = 'FILE_EXTENSION_ABBREV'
      Size = 10
    end
  end
  object prvDocItemTypeNotFileExtensions: TDataSetProvider
    DataSet = qryDocItemTypeNotFileExtensions
    UpdateMode = upWhereKeyOnly
    Left = 760
    Top = 344
  end
  object qryFileExtension: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FILE_EXTENSION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  fe.FILE_EXTENSION_CODE,'
      '  fe.FILE_EXTENSION_NAME,'
      '  fe.FILE_EXTENSION_ABBREV'
      'from'
      '  FILE_EXTENSIONS fe'
      'where'
      '  (fe.FILE_EXTENSION_CODE = :FILE_EXTENSION_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 456
    object qryFileExtensionFILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'FILE_EXTENSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFileExtensionFILE_EXTENSION_NAME: TAbmesWideStringField
      FieldName = 'FILE_EXTENSION_NAME'
      Size = 50
    end
    object qryFileExtensionFILE_EXTENSION_ABBREV: TAbmesWideStringField
      FieldName = 'FILE_EXTENSION_ABBREV'
      Size = 10
    end
  end
  object qryGetDocItemTypeName: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dit.DOC_ITEM_TYPE_NAME'
      'from'
      '  DOC_ITEM_TYPES dit'
      'where'
      '  (dit.DOC_ITEM_TYPE_CODE = :DOC_ITEM_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 480
    object qryGetDocItemTypeNameDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Size = 50
    end
  end
  object qryIsFileExtAllowedForDocItemType: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILE_EXTENSION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  1 as IS_FILE_EXTENSION_ALLOWED'
      'from'
      '  DOC_ITEM_TYPE_FILE_EXTENSIONS ditfe'
      'where'
      '  (ditfe.DOC_ITEM_TYPE_CODE = :DOC_ITEM_TYPE_CODE) and'
      '  (ditfe.FILE_EXTENSION_CODE = :FILE_EXTENSION_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 88
    Top = 592
    object qryIsFileExtAllowedForDocItemTypeIS_FILE_EXTENSION_ALLOWED: TAbmesFloatField
      FieldName = 'IS_FILE_EXTENSION_ALLOWED'
      FieldValueType = fvtBoolean
    end
  end
  object qryUpdNegativeDocItemNos: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'begin'
      '  for di_row in'
      '    ( select'
      '        /*+ INDEX(di idxDI__NO_ONLY) */'
      '        di.DOC_BRANCH_CODE,'
      '        di.DOC_CODE,'
      '        di.DOC_ITEM_CODE'
      '      from'
      '        DOC_ITEMS di'
      '      where'
      '        (di.DOC_ITEM_NO < 0)'
      '    )'
      '  loop'
      '    update'
      '      DOC_ITEMS_FOR_EDIT di'
      '    set'
      '      di.DOC_ITEM_NO = di.DOC_ITEM_NO * (-1)'
      '    where'
      '      (di.DOC_BRANCH_CODE = di_row.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = di_row.DOC_CODE) and'
      '      (di.DOC_ITEM_CODE = di_row.DOC_ITEM_CODE) and'
      '      (di.DOC_ITEM_NO < 0);'
      '  end loop;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 232
    Top = 336
  end
  object qryDocEmptinessRequirements: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  det.DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  det.DOC_EMPTINESS_REQUIREMENT_NAME'
      'from'
      '  DOC_EMPTINESS_REQUIREMENTS det'
      'order by'
      '  det.DOC_EMPTINESS_REQUIREMENT_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 760
    Top = 504
    object qryDocEmptinessRequirementsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocEmptinessRequirementsDOC_EMPTINESS_REQUIREMENT_NAME: TAbmesWideStringField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_NAME'
      Size = 100
    end
  end
  object prvDocEmptinessRequirements: TDataSetProvider
    DataSet = qryDocEmptinessRequirements
    UpdateMode = upWhereKeyOnly
    Left = 760
    Top = 456
  end
  object qryUpdDoc: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_EMPTINESS_REQUIREMENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_COMPLETE'
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
      end>
    SQL.Strings = (
      'update'
      '  DOCS_FOR_EDIT d'
      'set'
      
        '  d.DOC_EMPTINESS_REQUIREMENT_CODE = :DOC_EMPTINESS_REQUIREMENT_' +
        'CODE,'
      '  d.IS_COMPLETE = :IS_COMPLETE'
      'where'
      '  (d.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (d.DOC_CODE = :DOC_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 232
    Top = 120
  end
  object qryGetDocItemStoredFile: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
        Name = 'DOC_ITEM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  di.STORED_FILE_BRANCH_CODE,'
      '  di.STORED_FILE_CODE'
      'from'
      '  DOC_ITEMS di'
      'where'
      '  (di.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (di.DOC_CODE = :DOC_CODE) and'
      '  (di.DOC_ITEM_CODE = :DOC_ITEM_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 536
    object qryGetDocItemStoredFileSTORED_FILE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_BRANCH_CODE'
    end
    object qryGetDocItemStoredFileSTORED_FILE_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_CODE'
    end
  end
  object prvCustomMenuItems: TDataSetProvider
    DataSet = qryCustomMenuItems
    UpdateMode = upWhereKeyOnly
    OnUpdateError = prvCustomMenuItemsUpdateError
    BeforeUpdateRecord = prvCustomMenuItemsBeforeUpdateRecord
    BeforeApplyUpdates = prvCustomMenuItemsBeforeApplyUpdates
    AfterApplyUpdates = prvCustomMenuItemsAfterApplyUpdates
    Left = 504
    Top = 344
  end
  object qryCustomMenuItems: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  cmi.CUSTOM_MENU_ITEM_CODE,'
      '  cmi.CUSTOM_MENU_ITEM_NAME,'
      '  cmi.DOC_BRANCH_CODE,'
      '  cmi.DOC_CODE,'
      '  cmi.RELATIVE_MENU_ITEM_NAME,'
      '  cmi.IS_BEFORE_MENU_ITEM,'
      '  cmi.HAS_MENU_LINE_BEFORE,'
      '  cmi.HAS_MENU_LINE_AFTER,'
      '  cmi.IS_IN_CAPTION_MENU,'
      '  cmi.IS_SUBMENU,'
      '  0 as IS_CHANGED'
      ''
      'from'
      '  CUSTOM_MENU_ITEMS cmi'
      ''
      'order by'
      '  cmi.CUSTOM_MENU_ITEM_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'CUSTOM_MENU_ITEMS_FOR_EDIT'
    AfterProviderStartTransaction = qryCustomMenuItemsAfterProviderStartTransaction
    Left = 504
    Top = 400
    object qryCustomMenuItemsCUSTOM_MENU_ITEM_CODE: TAbmesFloatField
      FieldName = 'CUSTOM_MENU_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCustomMenuItemsCUSTOM_MENU_ITEM_NAME: TAbmesWideStringField
      FieldName = 'CUSTOM_MENU_ITEM_NAME'
      Size = 100
    end
    object qryCustomMenuItemsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryCustomMenuItemsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryCustomMenuItemsRELATIVE_MENU_ITEM_NAME: TAbmesWideStringField
      FieldName = 'RELATIVE_MENU_ITEM_NAME'
      Size = 100
    end
    object qryCustomMenuItemsIS_BEFORE_MENU_ITEM: TAbmesFloatField
      FieldName = 'IS_BEFORE_MENU_ITEM'
    end
    object qryCustomMenuItemsHAS_MENU_LINE_BEFORE: TAbmesFloatField
      FieldName = 'HAS_MENU_LINE_BEFORE'
    end
    object qryCustomMenuItemsHAS_MENU_LINE_AFTER: TAbmesFloatField
      FieldName = 'HAS_MENU_LINE_AFTER'
    end
    object qryCustomMenuItemsIS_IN_CAPTION_MENU: TAbmesFloatField
      FieldName = 'IS_IN_CAPTION_MENU'
    end
    object qryCustomMenuItemsIS_SUBMENU: TAbmesFloatField
      FieldName = 'IS_SUBMENU'
    end
    object qryCustomMenuItemsIS_CHANGED: TAbmesFloatField
      FieldName = 'IS_CHANGED'
      ProviderFlags = []
    end
  end
  object shLoadSingleDoc: TJvStrHolder
    Capacity = 8
    Macros = <>
    Left = 48
    Top = 640
    InternalVer = 2
    StrData = (
      ''
      '73656c656374'
      '20203a444f435f4252414e43485f434f44452c'
      '20203a444f435f434f4445'
      '66726f6d'
      '20204455414c')
  end
  object shLoadSpecDocs: TJvStrHolder
    Capacity = 147
    Macros = <>
    Left = 136
    Top = 640
    InternalVer = 2
    StrData = (
      ''
      '73656c656374'
      '2020736d76732e444f435f4252414e43485f434f44452c'
      '2020736d76732e444f435f434f4445'
      '66726f6d'
      '2020535045435f4d4f44454c5f56415249414e545f53544147455320736d7673'
      '7768657265'
      
        '202028736d76732e535045435f50524f445543545f434f4445203d203a535045' +
        '435f50524f445543545f434f44452920616e64'
      ''
      
        '20202820283a535045435f4d4f44454c5f56415249414e545f4e4f206973206e' +
        '756c6c29206f72'
      
        '2020202028736d76732e535045435f4d4f44454c5f56415249414e545f4e4f20' +
        '3d203a535045435f4d4f44454c5f56415249414e545f4e4f29202920616e64'
      ''
      
        '20202820283a4355545f50524f44554354494f4e5f50524f4455435453203d20' +
        '3029206f72'
      '2020202028657869737473'
      '202020202020282073656c656374'
      '2020202020202020202031'
      '202020202020202066726f6d'
      '20202020202020202020535045435f4c494e45532073706c2c'
      '2020202020202020202050524f44554354532070'
      '20202020202020207768657265'
      
        '202020202020202020202873706c2e535045435f50524f445543545f434f4445' +
        '203d20736d76732e535045435f50524f445543545f434f44452920616e64'
      
        '202020202020202020202873706c2e535045435f4c494e455f434f4445203d20' +
        '736d76732e535045435f4c494e455f434f44452920616e64'
      ''
      
        '202020202020202020202873706c2e44455441494c5f434f4445203d20702e50' +
        '524f445543545f434f44452920616e64'
      ''
      '20202020202020202020282028202873706c2e4e4f5f31203d20302920616e64'
      
        '202020202020202020202020202028736d76732e534d56535f545950455f434f' +
        '4445203c3e2033292029206f72'
      '20202020202020202020202028202873706c2e4e4f5f31203e20302920616e64'
      
        '20202020202020202020202020202820282028702e49535f50524f4455435449' +
        '4f4e5f50524f44554354203d20312920616e64'
      
        '202020202020202020202020202020202020282028736d76732e534d56535f54' +
        '5950455f434f4445203d203329206f72'
      
        '202020202020202020202020202020202020202028736d76732e54524541544d' +
        '454e545f574f524b44415953203d20302920292029206f72'
      
        '20202020202020202020202020202020282028702e49535f50524f4455435449' +
        '4f4e5f50524f44554354203d20302920616e64'
      
        '20202020202020202020202020202020202028736d76732e534d56535f545950' +
        '455f434f4445203d2031292029'
      '202020202020202020202020202029'
      '20202020202020202020202029'
      '202020202020202020202920616e64'
      ''
      '20202020202020202020286e6f7420657869737473'
      '202020202020202020202020282073656c656374'
      '2020202020202020202020202020202031'
      '202020202020202020202020202066726f6d'
      '20202020202020202020202020202020535045435f4c494e45532073706c322c'
      '2020202020202020202020202020202050524f445543545320647032'
      '20202020202020202020202020207768657265'
      
        '202020202020202020202020202020202873706c322e535045435f50524f4455' +
        '43545f434f4445203d2073706c2e535045435f50524f445543545f434f444529' +
        '20616e64'
      ''
      
        '202020202020202020202020202020202873706c322e44455441494c5f434f44' +
        '45203d206470322e50524f445543545f434f44452920616e64'
      ''
      
        '202020202020202020202020202020202873706c2e4e4f5f41535f464f524d41' +
        '5445445f54455854206c696b65202873706c322e4e4f5f41535f464f524d4154' +
        '45445f54455854207c7c20272527292920616e64'
      
        '202020202020202020202020202020202873706c322e4e4f5f41535f464f524d' +
        '415445445f54455854203c3e2073706c2e4e4f5f41535f464f524d415445445f' +
        '544558542920616e64'
      
        '20202020202020202020202020202020286470322e49535f50524f4455435449' +
        '4f4e5f50524f44554354203d203129'
      '20202020202020202020202029'
      '2020202020202020202029'
      '20202020202029'
      '2020202029'
      '202029'
      ''
      ''
      '756e696f6e'
      ''
      ''
      '73656c656374'
      '2020736d76736f2e444f435f4252414e43485f434f44452c'
      '2020736d76736f2e444f435f434f4445'
      '66726f6d'
      '2020534d56535f4f5045524154494f4e5320736d76736f'
      '7768657265'
      
        '202028736d76736f2e535045435f50524f445543545f434f4445203d203a5350' +
        '45435f50524f445543545f434f44452920616e64'
      ''
      
        '20202820283a535045435f4d4f44454c5f56415249414e545f4e4f206973206e' +
        '756c6c29206f72'
      
        '2020202028736d76736f2e535045435f4d4f44454c5f56415249414e545f4e4f' +
        '203d203a535045435f4d4f44454c5f56415249414e545f4e4f29202920616e64'
      ''
      '2020283a4c4f41445f4f5045524154494f4e5f444f4353203d20312920616e64'
      ''
      
        '20202820283a4355545f50524f44554354494f4e5f50524f4455435453203d20' +
        '3029206f72'
      '2020202028657869737473'
      '202020202020282073656c656374'
      '2020202020202020202031'
      '202020202020202066726f6d'
      
        '20202020202020202020535045435f4d4f44454c5f56415249414e545f535441' +
        '47455320736d76732c'
      '20202020202020202020535045435f4c494e45532073706c2c'
      '2020202020202020202050524f44554354532070'
      '20202020202020207768657265'
      
        '2020202020202020202028736d76732e535045435f50524f445543545f434f44' +
        '45203d20736d76736f2e535045435f50524f445543545f434f44452920616e64'
      
        '2020202020202020202028736d76732e535045435f4d4f44454c5f5641524941' +
        '4e545f4e4f203d20736d76736f2e535045435f4d4f44454c5f56415249414e54' +
        '5f4e4f2920616e64'
      
        '2020202020202020202028736d76732e535045435f4c494e455f434f4445203d' +
        '20736d76736f2e535045435f4c494e455f434f44452920616e64'
      
        '2020202020202020202028736d76732e535045435f4c494e455f53544147455f' +
        '434f4445203d20736d76736f2e535045435f4c494e455f53544147455f434f44' +
        '452920616e64'
      ''
      
        '202020202020202020202873706c2e535045435f50524f445543545f434f4445' +
        '203d20736d76732e535045435f50524f445543545f434f44452920616e64'
      
        '202020202020202020202873706c2e535045435f4c494e455f434f4445203d20' +
        '736d76732e535045435f4c494e455f434f44452920616e64'
      ''
      
        '202020202020202020202873706c2e44455441494c5f434f4445203d20702e50' +
        '524f445543545f434f44452920616e64'
      ''
      '20202020202020202020282028202873706c2e4e4f5f31203d20302920616e64'
      
        '202020202020202020202020202028736d76732e534d56535f545950455f434f' +
        '4445203c3e2033292029206f72'
      '20202020202020202020202028202873706c2e4e4f5f31203e20302920616e64'
      
        '20202020202020202020202020202820282028702e49535f50524f4455435449' +
        '4f4e5f50524f44554354203d20312920616e64'
      
        '202020202020202020202020202020202020282028736d76732e534d56535f54' +
        '5950455f434f4445203d203329206f72'
      
        '202020202020202020202020202020202020202028736d76732e54524541544d' +
        '454e545f574f524b44415953203d20302920292029206f72'
      
        '20202020202020202020202020202020282028702e49535f50524f4455435449' +
        '4f4e5f50524f44554354203d20302920616e64'
      
        '20202020202020202020202020202020202028736d76732e534d56535f545950' +
        '455f434f4445203d2031292029'
      '202020202020202020202020202029'
      '20202020202020202020202029'
      '202020202020202020202920616e64'
      ''
      '20202020202020202020286e6f7420657869737473'
      '202020202020202020202020282073656c656374'
      '2020202020202020202020202020202031'
      '202020202020202020202020202066726f6d'
      '20202020202020202020202020202020535045435f4c494e45532073706c322c'
      '2020202020202020202020202020202050524f445543545320647032'
      '20202020202020202020202020207768657265'
      
        '202020202020202020202020202020202873706c322e535045435f50524f4455' +
        '43545f434f4445203d2073706c2e535045435f50524f445543545f434f444529' +
        '20616e64'
      ''
      
        '202020202020202020202020202020202873706c322e44455441494c5f434f44' +
        '45203d206470322e50524f445543545f434f44452920616e64'
      ''
      
        '202020202020202020202020202020202873706c2e4e4f5f41535f464f524d41' +
        '5445445f54455854206c696b65202873706c322e4e4f5f41535f464f524d4154' +
        '45445f54455854207c7c20272527292920616e64'
      
        '202020202020202020202020202020202873706c322e4e4f5f41535f464f524d' +
        '415445445f54455854203c3e2073706c2e4e4f5f41535f464f524d415445445f' +
        '544558542920616e64'
      
        '20202020202020202020202020202020286470322e49535f50524f4455435449' +
        '4f4e5f50524f44554354203d203129'
      '20202020202020202020202029'
      '2020202020202020202029'
      '20202020202029'
      '2020202029'
      '202029'
      '')
  end
  object prvAllLoadDocItems: TDataSetProvider
    DataSet = qryAllLoadDocItems
    Exported = False
    Options = [poReadOnly]
    Left = 504
    Top = 456
  end
  object qryAllLoadDocItems: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  di.DOC_BRANCH_CODE,'
      '  di.DOC_CODE,'
      '  di.DOC_ITEM_CODE,'
      '  di.DOC_ITEM_NO,'
      '  di.DOC_ITEM_NAME,'
      '  di.DOC_ITEM_TYPE_CODE,'
      '  di.IS_INACTIVE,'
      '  di.NOTES,'
      '  di.CREATE_EMPLOYEE_CODE,'
      '  di.CREATE_DATE,'
      '  di.CREATE_TIME,'
      '  di.CHANGE_EMPLOYEE_CODE,'
      '  di.CHANGE_DATE,'
      '  di.CHANGE_TIME,'
      '  di.DEVELOP_EMPLOYEE_CODE,'
      '  di.DEVELOP_DATE,'
      '  di.DEVELOP_TIME,'
      '  di.AUTHORIZE_EMPLOYEE_CODE,'
      '  di.AUTHORIZE_DATE,'
      '  di.AUTHORIZE_TIME,'
      '  di.APPROVE_EMPLOYEE_CODE,'
      '  di.APPROVE_DATE,'
      '  di.APPROVE_TIME,'
      '  di.DOC_ITEM_STORAGE_TYPE_CODE,'
      '  di.FILE_NAME,'
      '  di.RELATIVE_PATH,'
      '  di.DOC_ITEM_PATTERN_CODE,'
      '  di.STORED_FILE_BRANCH_CODE,'
      '  di.STORED_FILE_CODE,'
      '  To_Number(null) as FILE_EXTENSION_CODE,'
      '  di.IS_MIRRORED,'
      '  di.MIRRORED_FILE_NAME,'
      '  di.MIRRORED_RELATIVE_PATH,'
      '  di.FILE_CHANGE_EMPLOYEE_CODE,'
      '  di.FILE_CHANGE_DATE,'
      '  di.FILE_CHANGE_TIME'
      ''
      'from'
      '  DOC_ITEMS di'
      ''
      'where'
      '  ( (di.DOC_BRANCH_CODE, di.DOC_CODE) in'
      '    ('
      '      %SELECT_SPECIFIC_DOCS'
      '    )'
      '  )'
      ''
      'order by'
      '  di.DOC_BRANCH_CODE,'
      '  di.DOC_CODE,'
      '  di.DOC_ITEM_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'SELECT_SPECIFIC_DOCS'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 504
    Top = 504
    object qryAllLoadDocItemsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryAllLoadDocItemsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryAllLoadDocItemsDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
    end
    object qryAllLoadDocItemsDOC_ITEM_NO: TAbmesFloatField
      FieldName = 'DOC_ITEM_NO'
    end
    object qryAllLoadDocItemsDOC_ITEM_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_NAME'
      Size = 100
    end
    object qryAllLoadDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object qryAllLoadDocItemsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object qryAllLoadDocItemsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryAllLoadDocItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryAllLoadDocItemsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryAllLoadDocItemsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryAllLoadDocItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryAllLoadDocItemsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryAllLoadDocItemsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryAllLoadDocItemsDEVELOP_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DEVELOP_EMPLOYEE_CODE'
    end
    object qryAllLoadDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_DATE'
    end
    object qryAllLoadDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_TIME'
    end
    object qryAllLoadDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object qryAllLoadDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_DATE'
    end
    object qryAllLoadDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_TIME'
    end
    object qryAllLoadDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'APPROVE_EMPLOYEE_CODE'
    end
    object qryAllLoadDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_DATE'
    end
    object qryAllLoadDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_TIME'
    end
    object qryAllLoadDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STORAGE_TYPE_CODE'
    end
    object qryAllLoadDocItemsFILE_NAME: TAbmesWideStringField
      FieldName = 'FILE_NAME'
      Size = 250
    end
    object qryAllLoadDocItemsRELATIVE_PATH: TAbmesWideStringField
      FieldName = 'RELATIVE_PATH'
      Size = 250
    end
    object qryAllLoadDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_PATTERN_CODE'
    end
    object qryAllLoadDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_BRANCH_CODE'
    end
    object qryAllLoadDocItemsSTORED_FILE_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_CODE'
    end
    object qryAllLoadDocItemsFILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'FILE_EXTENSION_CODE'
    end
    object qryAllLoadDocItemsIS_MIRRORED: TAbmesFloatField
      FieldName = 'IS_MIRRORED'
    end
    object qryAllLoadDocItemsMIRRORED_FILE_NAME: TAbmesWideStringField
      FieldName = 'MIRRORED_FILE_NAME'
      Size = 250
    end
    object qryAllLoadDocItemsMIRRORED_RELATIVE_PATH: TAbmesWideStringField
      FieldName = 'MIRRORED_RELATIVE_PATH'
      Size = 250
    end
    object qryAllLoadDocItemsFILE_CHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FILE_CHANGE_EMPLOYEE_CODE'
    end
    object qryAllLoadDocItemsFILE_CHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'FILE_CHANGE_DATE'
    end
    object qryAllLoadDocItemsFILE_CHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'FILE_CHANGE_TIME'
    end
  end
  object cdsAllLoadDocItems: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAllLoadDocItems'
    Left = 504
    Top = 552
    object cdsAllLoadDocItemsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsAllLoadDocItemsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsAllLoadDocItemsDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
    end
    object cdsAllLoadDocItemsDOC_ITEM_NO: TAbmesFloatField
      FieldName = 'DOC_ITEM_NO'
    end
    object cdsAllLoadDocItemsDOC_ITEM_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_NAME'
      Size = 100
    end
    object cdsAllLoadDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object cdsAllLoadDocItemsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object cdsAllLoadDocItemsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsAllLoadDocItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsAllLoadDocItemsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsAllLoadDocItemsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsAllLoadDocItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsAllLoadDocItemsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsAllLoadDocItemsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsAllLoadDocItemsDEVELOP_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DEVELOP_EMPLOYEE_CODE'
    end
    object cdsAllLoadDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_DATE'
    end
    object cdsAllLoadDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_TIME'
    end
    object cdsAllLoadDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object cdsAllLoadDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_DATE'
    end
    object cdsAllLoadDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_TIME'
    end
    object cdsAllLoadDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'APPROVE_EMPLOYEE_CODE'
    end
    object cdsAllLoadDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_DATE'
    end
    object cdsAllLoadDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_TIME'
    end
    object cdsAllLoadDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STORAGE_TYPE_CODE'
    end
    object cdsAllLoadDocItemsFILE_NAME: TAbmesWideStringField
      FieldName = 'FILE_NAME'
      Size = 250
    end
    object cdsAllLoadDocItemsRELATIVE_PATH: TAbmesWideStringField
      FieldName = 'RELATIVE_PATH'
      Size = 250
    end
    object cdsAllLoadDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_PATTERN_CODE'
    end
    object cdsAllLoadDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_BRANCH_CODE'
    end
    object cdsAllLoadDocItemsSTORED_FILE_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_CODE'
    end
    object cdsAllLoadDocItemsFILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'FILE_EXTENSION_CODE'
    end
    object cdsAllLoadDocItemsIS_MIRRORED: TAbmesFloatField
      FieldName = 'IS_MIRRORED'
    end
    object cdsAllLoadDocItemsMIRRORED_FILE_NAME: TAbmesWideStringField
      FieldName = 'MIRRORED_FILE_NAME'
      Size = 250
    end
    object cdsAllLoadDocItemsMIRRORED_RELATIVE_PATH: TAbmesWideStringField
      FieldName = 'MIRRORED_RELATIVE_PATH'
      Size = 250
    end
    object cdsAllLoadDocItemsFILE_CHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FILE_CHANGE_EMPLOYEE_CODE'
    end
    object cdsAllLoadDocItemsFILE_CHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'FILE_CHANGE_DATE'
    end
    object cdsAllLoadDocItemsFILE_CHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'FILE_CHANGE_TIME'
    end
  end
  object prvReserveDocCodes: TDataSetProvider
    DataSet = qryReserveDocCodes
    Left = 624
    Top = 456
  end
  object qryReserveDocCodes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_CODE_COUNT'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  seq_DOCS.NextVal as DOC_CODE'
      'from'
      '  THE_DATES d'
      'where'
      
        '  (d.THE_DATE between %MIN_DATE and (%MIN_DATE + :DOC_CODE_COUNT' +
        ' - 1))')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'MIN_DATE'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 624
    Top = 504
    object qryReserveDocCodesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
  end
  object qryStoredFilesSameHash: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'SHA1_HASH_VALUE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILE_EXTENSION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sf.STORED_FILE_BRANCH_CODE,'
      '  sf.STORED_FILE_CODE'
      'from'
      '  STORED_FILES sf'
      'where'
      '  (sf.SHA1_HASH_VALUE = :SHA1_HASH_VALUE) and'
      '  (sf.FILE_EXTENSION_CODE = :FILE_EXTENSION_CODE)'
      'order by'
      '  sf.STORED_FILE_BRANCH_CODE,'
      '  sf.STORED_FILE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 176
    object qryStoredFilesSameHashSTORED_FILE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryStoredFilesSameHashSTORED_FILE_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object qryDocItemSysRoles: TAbmesSQLQuery
    DataSource = dsDocItems
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  disr.DOC_BRANCH_CODE,'
      '  disr.DOC_CODE,'
      '  disr.DOC_ITEM_CODE,'
      '  disr.DOC_ITEM_SYS_ROLE_CODE,'
      '  disr.SYS_ROLE_CODE,'
      '  disr.DOC_ITEM_ACCESS_LEVEL_CODE,'
      '  0 as RECORD_STATUS'
      ''
      'from'
      '  DOC_ITEM_SYS_ROLES disr'
      ''
      'where'
      '  (disr.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (disr.DOC_CODE = :DOC_CODE) and'
      '  (disr.DOC_ITEM_CODE = :DOC_ITEM_CODE)'
      ''
      'order by'
      '  disr.DOC_BRANCH_CODE,'
      '  disr.DOC_CODE,'
      '  disr.DOC_ITEM_CODE,'
      '  disr.SYS_ROLE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 40
    Top = 248
    object qryDocItemSysRolesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemSysRolesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemSysRolesDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemSysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
    end
    object qryDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_ACCESS_LEVEL_CODE'
    end
    object qryDocItemSysRolesRECORD_STATUS: TAbmesFloatField
      FieldName = 'RECORD_STATUS'
    end
  end
  object qryDocItemAccessLevels: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  dial.DOC_ITEM_ACCESS_LEVEL_CODE,'
      '  dial.DOC_ITEM_ACCESS_LEVEL_NAME'
      'from'
      '  DOC_ITEM_ACCESS_LEVELS dial'
      'order by'
      '  dial.DOC_ITEM_ACCESS_LEVEL_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 616
    object qryDocItemAccessLevelsDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_ACCESS_LEVEL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemAccessLevelsDOC_ITEM_ACCESS_LEVEL_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_ACCESS_LEVEL_NAME'
      Size = 100
    end
  end
  object prvDocItemAccessLevels: TDataSetProvider
    DataSet = qryDocItemAccessLevels
    Options = [poReadOnly, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 568
  end
  object qryInsDocItemSysRole: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
        Name = 'DOC_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_SYS_ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_ACCESS_LEVEL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into DOC_ITEM_SYS_ROLES'
      '('
      '  DOC_BRANCH_CODE,'
      '  DOC_CODE,'
      '  DOC_ITEM_CODE,'
      '  DOC_ITEM_SYS_ROLE_CODE,'
      '  SYS_ROLE_CODE,'
      '  DOC_ITEM_ACCESS_LEVEL_CODE'
      ')'
      'values'
      '('
      '  :DOC_BRANCH_CODE,'
      '  :DOC_CODE,'
      '  :DOC_ITEM_CODE,'
      '  :DOC_ITEM_SYS_ROLE_CODE,'
      '  :SYS_ROLE_CODE,'
      '  :DOC_ITEM_ACCESS_LEVEL_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 232
    Top = 384
  end
  object qryUpdDocItemSysRole: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_ACCESS_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DOC_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DOC_ITEM_SYS_ROLE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  DOC_ITEM_SYS_ROLES disr'
      'set'
      '  disr.SYS_ROLE_CODE = :SYS_ROLE_CODE,'
      '  disr.DOC_ITEM_ACCESS_LEVEL_CODE = :DOC_ITEM_ACCESS_LEVEL_CODE'
      'where'
      '  (disr.DOC_BRANCH_CODE = :OLD_DOC_BRANCH_CODE) and'
      '  (disr.DOC_CODE = :OLD_DOC_CODE) and'
      '  (disr.DOC_ITEM_CODE = :OLD_DOC_ITEM_CODE) and'
      '  (disr.DOC_ITEM_SYS_ROLE_CODE = :OLD_DOC_ITEM_SYS_ROLE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 232
    Top = 432
  end
  object qryDelDocItemSysRole: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OLD_DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DOC_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DOC_ITEM_SYS_ROLE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  DOC_ITEM_SYS_ROLES disr'
      'where'
      '  (disr.DOC_BRANCH_CODE = :OLD_DOC_BRANCH_CODE) and'
      '  (disr.DOC_CODE = :OLD_DOC_CODE) and'
      '  (disr.DOC_ITEM_CODE = :OLD_DOC_ITEM_CODE) and'
      '  (disr.DOC_ITEM_SYS_ROLE_CODE = :OLD_DOC_ITEM_SYS_ROLE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 232
    Top = 480
  end
  object dsDocItems: TDataSource
    DataSet = qryDocItems
    Left = 40
    Top = 200
  end
  object qryAllLoadDocItemSysRoles: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  disr.DOC_BRANCH_CODE,'
      '  disr.DOC_CODE,'
      '  disr.DOC_ITEM_CODE,'
      '  disr.DOC_ITEM_SYS_ROLE_CODE,'
      '  disr.SYS_ROLE_CODE,'
      '  disr.DOC_ITEM_ACCESS_LEVEL_CODE'
      ''
      'from'
      '  DOC_ITEM_SYS_ROLES disr'
      ''
      'where'
      '  ( (disr.DOC_BRANCH_CODE, disr.DOC_CODE) in'
      '    ('
      '      %SELECT_SPECIFIC_DOCS'
      '    )'
      '  )'
      ''
      'order by'
      '  disr.DOC_BRANCH_CODE,'
      '  disr.DOC_CODE,'
      '  disr.DOC_ITEM_CODE,'
      '  disr.SYS_ROLE_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'SELECT_SPECIFIC_DOCS'
        ParamType = ptInput
        Value = '(1, 1)'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 768
    Top = 592
    object qryAllLoadDocItemSysRolesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryAllLoadDocItemSysRolesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryAllLoadDocItemSysRolesDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryAllLoadDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryAllLoadDocItemSysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
    end
    object qryAllLoadDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_ACCESS_LEVEL_CODE'
    end
  end
  object prvAllLoadDocItemSysRoles: TDataSetProvider
    DataSet = qryAllLoadDocItemSysRoles
    Exported = False
    Options = [poReadOnly]
    Left = 768
    Top = 552
  end
  object cdsAllLoadDocItemSysRoles: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAllLoadDocItemSysRoles'
    Left = 768
    Top = 640
    object cdsAllLoadDocItemSysRolesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsAllLoadDocItemSysRolesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsAllLoadDocItemSysRolesDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
    end
    object cdsAllLoadDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_SYS_ROLE_CODE'
    end
    object cdsAllLoadDocItemSysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
    end
    object cdsAllLoadDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_ACCESS_LEVEL_CODE'
    end
  end
  object qryLoadDocItemSysRoles: TAbmesSQLQuery
    DataSource = dsLoadDocItems
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  disr.DOC_BRANCH_CODE,'
      '  disr.DOC_CODE,'
      '  disr.DOC_ITEM_CODE,'
      '  disr.DOC_ITEM_SYS_ROLE_CODE,'
      '  disr.SYS_ROLE_CODE,'
      '  disr.DOC_ITEM_ACCESS_LEVEL_CODE'
      ''
      'from'
      '  DOC_ITEM_SYS_ROLES disr'
      ''
      'where'
      '  (disr.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (disr.DOC_CODE = :DOC_CODE) and'
      '  (disr.DOC_ITEM_CODE = :DOC_ITEM_CODE) and'
      ''
      
        '  (1 = 2)   -- da ne vrushta nishto, za da raboti mehanizma za e' +
        'dnokratno iztochvane'
      ''
      'order by'
      '  disr.DOC_BRANCH_CODE,'
      '  disr.DOC_CODE,'
      '  disr.DOC_ITEM_CODE,'
      '  disr.SYS_ROLE_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 136
    Top = 248
    object qryLoadDocItemSysRolesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryLoadDocItemSysRolesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryLoadDocItemSysRolesDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryLoadDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryLoadDocItemSysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
    end
    object qryLoadDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_ACCESS_LEVEL_CODE'
    end
  end
  object dsLoadDocItems: TDataSource
    DataSet = qryLoadDocItems
    Left = 136
    Top = 200
  end
  object qryGetStoredFileSize: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORED_FILE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORED_FILE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sf.STORED_FILE_SIZE'
      'from'
      '  STORED_FILES sf'
      'where'
      '  (sf.STORED_FILE_BRANCH_CODE = :STORED_FILE_BRANCH_CODE) and'
      '  (sf.STORED_FILE_CODE = :STORED_FILE_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 352
    object qryGetStoredFileSizeSTORED_FILE_SIZE: TAbmesFloatField
      FieldName = 'STORED_FILE_SIZE'
    end
  end
  object qryGetNewDocItemTypeCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(dit.DOC_ITEM_TYPE_CODE), 0) + 1) as NEW_DOC_ITEM' +
        '_TYPE_CODE'
      'from'
      '  DOC_ITEM_TYPES dit')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 704
    Top = 56
    object qryGetNewDocItemTypeCodeNEW_DOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'NEW_DOC_ITEM_TYPE_CODE'
    end
  end
  object qryDocItemViewGenerators: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  divg.DOC_ITEM_VIEW_GENERATOR_CODE,'
      '  divg.DOC_ITEM_VIEW_GENERATOR_NAME,'
      '  divg.GENERATOR_PATH,'
      '  divg.GENERATOR_PARAMS,'
      '  divg.GENERATOR_TIMEOUT_SEC,'
      '  divg.RESULT_FILE_EXTENSION_CODE'
      'from'
      '  DOC_ITEM_VIEW_GENERATORS divg'
      'order by'
      '  divg.DOC_ITEM_VIEW_GENERATOR_CODE  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 912
    Top = 48
    object qryDocItemViewGeneratorsDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocItemViewGeneratorsDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_NAME'
      Size = 50
    end
    object qryDocItemViewGeneratorsGENERATOR_PATH: TAbmesWideStringField
      FieldName = 'GENERATOR_PATH'
      Size = 250
    end
    object qryDocItemViewGeneratorsGENERATOR_PARAMS: TAbmesWideStringField
      FieldName = 'GENERATOR_PARAMS'
      Size = 250
    end
    object qryDocItemViewGeneratorsGENERATOR_TIMEOUT_SEC: TAbmesFloatField
      FieldName = 'GENERATOR_TIMEOUT_SEC'
    end
    object qryDocItemViewGeneratorsRESULT_FILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'RESULT_FILE_EXTENSION_CODE'
    end
  end
  object prvDocItemViewGenerators: TDataSetProvider
    DataSet = qryDocItemViewGenerators
    UpdateMode = upWhereKeyOnly
    AfterApplyUpdates = prvDocItemViewGeneratorsAfterApplyUpdates
    Left = 912
  end
  object qryExecuteServer: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXECUTE_SERVER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  es.EXECUTE_SERVER_CODE,'
      '  es.EXECUTE_SERVER_NAME'
      'from'
      '  EXECUTE_SERVERS es'
      'where'
      '  (es.EXECUTE_SERVER_CODE = :EXECUTE_SERVER_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 912
    Top = 264
    object qryExecuteServerEXECUTE_SERVER_CODE: TAbmesFloatField
      FieldName = 'EXECUTE_SERVER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryExecuteServerEXECUTE_SERVER_NAME: TAbmesWideStringField
      FieldName = 'EXECUTE_SERVER_NAME'
      Size = 50
    end
  end
  object prvExecuteServer: TDataSetProvider
    DataSet = qryExecuteServer
    UpdateMode = upWhereKeyOnly
    AfterApplyUpdates = prvExecuteServerAfterApplyUpdates
    Left = 912
    Top = 216
  end
  object dsExecuteServer: TDataSource
    DataSet = qryExecuteServer
    Left = 912
    Top = 312
  end
  object qryExecuteServerViewGenerators: TAbmesSQLQuery
    DataSource = dsExecuteServer
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXECUTE_SERVER_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  esvg.EXECUTE_SERVER_CODE,'
      '  esvg.DOC_ITEM_VIEW_GENERATOR_CODE,'
      '  divg.DOC_ITEM_VIEW_GENERATOR_NAME'
      'from'
      '  EXECUTE_SERVER_VIEW_GENERATORS esvg,'
      '  DOC_ITEM_VIEW_GENERATORS divg'
      'where'
      
        '  (esvg.DOC_ITEM_VIEW_GENERATOR_CODE = divg.DOC_ITEM_VIEW_GENERA' +
        'TOR_CODE) and'
      '  (esvg.EXECUTE_SERVER_CODE = :EXECUTE_SERVER_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 912
    Top = 360
    object qryExecuteServerViewGeneratorsEXECUTE_SERVER_CODE: TAbmesFloatField
      FieldName = 'EXECUTE_SERVER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryExecuteServerViewGeneratorsDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryExecuteServerViewGeneratorsDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_NAME'
      ProviderFlags = []
      Size = 50
    end
  end
  object qryExecuteServerNotViewGenerators: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXECUTE_SERVER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXECUTE_SERVER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_number(:EXECUTE_SERVER_CODE) as EXECUTE_SERVER_CODE,'
      '  divg.DOC_ITEM_VIEW_GENERATOR_CODE,'
      '  divg.DOC_ITEM_VIEW_GENERATOR_NAME'
      'from'
      '  DOC_ITEM_VIEW_GENERATORS divg'
      'where'
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        EXECUTE_SERVER_VIEW_GENERATORS esvg'
      '      where'
      
        '        (esvg.DOC_ITEM_VIEW_GENERATOR_CODE = divg.DOC_ITEM_VIEW_' +
        'GENERATOR_CODE) and'
      '        (esvg.EXECUTE_SERVER_CODE = :EXECUTE_SERVER_CODE)'
      ''
      '    )'
      '  )      ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 912
    Top = 472
    object qryExecuteServerNotViewGeneratorsEXECUTE_SERVER_CODE: TAbmesFloatField
      FieldName = 'EXECUTE_SERVER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryExecuteServerNotViewGeneratorsDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryExecuteServerNotViewGeneratorsDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_NAME'
      Size = 50
    end
  end
  object prvExecuteServerNotViewGenerators: TDataSetProvider
    DataSet = qryExecuteServerNotViewGenerators
    UpdateMode = upWhereKeyOnly
    Left = 912
    Top = 424
  end
  object qryExecuteServers: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  es.EXECUTE_SERVER_CODE,'
      '  es.EXECUTE_SERVER_NAME,'
      ''
      '  0 as IS_UNAVAILABLE,'
      '  Cast(null as VarChar2(1000 char)) as UNAVAILABLE_MESSAGE'
      ''
      'from'
      '  EXECUTE_SERVERS es'
      'order by'
      '  es.EXECUTE_SERVER_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 912
    Top = 152
    object qryExecuteServersEXECUTE_SERVER_CODE: TAbmesFloatField
      FieldName = 'EXECUTE_SERVER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryExecuteServersEXECUTE_SERVER_NAME: TAbmesWideStringField
      FieldName = 'EXECUTE_SERVER_NAME'
      Size = 50
    end
    object qryExecuteServersIS_UNAVAILABLE: TAbmesFloatField
      FieldName = 'IS_UNAVAILABLE'
      ProviderFlags = []
    end
    object qryExecuteServersUNAVAILABLE_MESSAGE: TAbmesWideStringField
      FieldName = 'UNAVAILABLE_MESSAGE'
      ProviderFlags = []
      Size = 1000
    end
  end
  object prvExecuteServers: TDataSetProvider
    DataSet = qryExecuteServers
    UpdateMode = upWhereKeyOnly
    OnGetData = prvExecuteServersGetData
    AfterApplyUpdates = prvExecuteServersAfterApplyUpdates
    Left = 912
    Top = 104
  end
  object qryExecuteServerGeneratorList: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXECUTE_SERVER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  esvg.DOC_ITEM_VIEW_GENERATOR_CODE,'
      '  divg.DOC_ITEM_VIEW_GENERATOR_NAME'
      'from'
      '  EXECUTE_SERVER_VIEW_GENERATORS esvg,'
      '  DOC_ITEM_VIEW_GENERATORS divg'
      'where'
      
        '  (esvg.DOC_ITEM_VIEW_GENERATOR_CODE = divg.DOC_ITEM_VIEW_GENERA' +
        'TOR_CODE) and'
      '  (esvg.EXECUTE_SERVER_CODE = :EXECUTE_SERVER_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 912
    Top = 528
    object qryExecuteServerGeneratorListDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
    end
    object qryExecuteServerGeneratorListDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_NAME'
      Size = 50
    end
  end
  object prvDocItemStorageTypes: TDataSetProvider
    DataSet = qryDocItemStorageTypes
    BeforeUpdateRecord = prvDocItemStorageTypesBeforeUpdateRecord
    Left = 920
    Top = 592
  end
  object qryDocItemStorageTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  dist.DOC_ITEM_STORAGE_TYPE_CODE,'
      '  dist.DOC_ITEM_STORAGE_TYPE_NO,'
      '  dist.DOC_ITEM_STORAGE_TYPE_NAME,'
      '  dist.IS_FIXED,'
      '  dist.SELECT_COMMAND,'
      '  dist.VIEW_COMMAND,'
      '  dist.EDIT_COMMAND,'
      '  dist.DI_STORAGE_BASE_TYPE_CODE,'
      '  dist.CONTENT_STORAGE_ADDRESS,'
      ''
      '  ( select'
      '      disbt.IS_ACTIVE'
      '    from'
      '      DI_STORAGE_BASE_TYPES disbt'
      '    where'
      
        '      (disbt.DI_STORAGE_BASE_TYPE_CODE = dist.DI_STORAGE_BASE_TY' +
        'PE_CODE)'
      '  ) as DI_STORAGE_BASE_TYPE_IS_ACTIVE'
      ''
      'from'
      '  DOC_ITEM_STORAGE_TYPES dist'
      ''
      'order by'
      '  dist.DOC_ITEM_STORAGE_TYPE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DOC_ITEM_STORAGE_TYPES'
    Left = 920
    Top = 640
    object qryDocItemStorageTypesDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STORAGE_TYPE_CODE'
      Required = True
    end
    object qryDocItemStorageTypesDOC_ITEM_STORAGE_TYPE_NO: TAbmesFloatField
      FieldName = 'DOC_ITEM_STORAGE_TYPE_NO'
      Required = True
    end
    object qryDocItemStorageTypesDOC_ITEM_STORAGE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_STORAGE_TYPE_NAME'
      Required = True
      Size = 250
    end
    object qryDocItemStorageTypesIS_FIXED: TAbmesFloatField
      FieldName = 'IS_FIXED'
      Required = True
    end
    object qryDocItemStorageTypesSELECT_COMMAND: TAbmesWideStringField
      FieldName = 'SELECT_COMMAND'
      Size = 250
    end
    object qryDocItemStorageTypesVIEW_COMMAND: TAbmesWideStringField
      FieldName = 'VIEW_COMMAND'
      Size = 250
    end
    object qryDocItemStorageTypesEDIT_COMMAND: TAbmesWideStringField
      FieldName = 'EDIT_COMMAND'
      Size = 250
    end
    object qryDocItemStorageTypesDI_STORAGE_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DI_STORAGE_BASE_TYPE_CODE'
      Required = True
    end
    object qryDocItemStorageTypesCONTENT_STORAGE_ADDRESS: TAbmesWideStringField
      FieldName = 'CONTENT_STORAGE_ADDRESS'
      Size = 250
    end
    object qryDocItemStorageTypesDI_STORAGE_BASE_TYPE_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DI_STORAGE_BASE_TYPE_IS_ACTIVE'
      ProviderFlags = []
    end
  end
  object dsDocItemTemplate: TDataSource
    DataSet = qryDocItemTemplate
    Left = 632
    Top = 248
  end
  object qryDefaultDocItems: TAbmesSQLQuery
    DataSource = dsDocItemTemplate
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TEMPLATE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ddi.DOC_ITEM_TEMPLATE_CODE,'
      '  ddi.DEFAULT_DOC_ITEM_CODE,'
      '  ddi.DOC_ITEM_NAME,'
      '  ddi.DOC_ITEM_STATE_CODE'
      ''
      'from'
      '  DEFAULT_DOC_ITEMS ddi'
      ''
      'where'
      '  (ddi.DOC_ITEM_TEMPLATE_CODE = :DOC_ITEM_TEMPLATE_CODE)'
      ''
      'order by'
      '  ddi.DEFAULT_DOC_ITEM_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 304
    object qryDefaultDocItemsDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDefaultDocItemsDEFAULT_DOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_DOC_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDefaultDocItemsDOC_ITEM_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_NAME'
      Required = True
      Size = 100
    end
    object qryDefaultDocItemsDOC_ITEM_STATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STATE_CODE'
      Required = True
    end
  end
  object prvDocItemStates: TDataSetProvider
    DataSet = qryDocItemStates
    Options = [poReadOnly, poUseQuoteChar]
    Left = 512
    Top = 600
  end
  object qryDocItemStates: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  dis.DOC_ITEM_STATE_CODE,'
      '  dis.DOC_ITEM_STATE_NAME'
      ''
      'from'
      '  DOC_ITEM_STATES dis'
      ''
      'order by'
      '  dis.DOC_ITEM_STATE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 512
    Top = 648
    object qryDocItemStatesDOC_ITEM_STATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STATE_CODE'
      Required = True
    end
    object qryDocItemStatesDOC_ITEM_STATE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_STATE_NAME'
      Required = True
    end
  end
  object qryAllDefaultDocItems: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  ddi.DOC_ITEM_TEMPLATE_CODE,'
      '  ddi.DEFAULT_DOC_ITEM_CODE,'
      '  ddi.DOC_ITEM_NAME,'
      '  ddi.DOC_ITEM_STATE_CODE'
      ''
      'from'
      '  DEFAULT_DOC_ITEMS ddi'
      ''
      'order by'
      '  ddi.DEFAULT_DOC_ITEM_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 1048
    Top = 336
    object qryAllDefaultDocItemsDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_CODE'
      Required = True
    end
    object qryAllDefaultDocItemsDEFAULT_DOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_DOC_ITEM_CODE'
      Required = True
    end
    object qryAllDefaultDocItemsDOC_ITEM_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_NAME'
      Required = True
      Size = 100
    end
    object qryAllDefaultDocItemsDOC_ITEM_STATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STATE_CODE'
      Required = True
    end
  end
  object prvAllDefaultDocItems: TDataSetProvider
    DataSet = qryAllDefaultDocItems
    Left = 1048
    Top = 288
  end
  object cdsAllDefaultDocItems: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAllDefaultDocItems'
    Left = 1048
    Top = 384
    object cdsAllDefaultDocItemsDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_CODE'
      Required = True
    end
    object cdsAllDefaultDocItemsDEFAULT_DOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_DOC_ITEM_CODE'
      Required = True
    end
    object cdsAllDefaultDocItemsDOC_ITEM_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_NAME'
      Required = True
      Size = 100
    end
    object cdsAllDefaultDocItemsDOC_ITEM_STATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STATE_CODE'
      Required = True
    end
  end
  object dsDocItemTemplatesNom: TDataSource
    DataSet = qryDocItemTemplatesNom
    Left = 1048
    Top = 152
  end
  object qryDefaultDocItemsNom: TAbmesSQLQuery
    BeforeScroll = qryDefaultDocItemsNomBeforeScroll
    DataSource = dsDocItemTemplatesNom
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TEMPLATE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ddi.DOC_ITEM_TEMPLATE_CODE,'
      '  ddi.DEFAULT_DOC_ITEM_CODE,'
      '  ddi.DOC_ITEM_NAME,'
      '  ddi.DOC_ITEM_STATE_CODE'
      ''
      'from'
      '  DEFAULT_DOC_ITEMS ddi'
      ''
      'where'
      
        '  (0 = 1) and    -- da ne vrushta nishto zaradi mass load mehani' +
        'zma'
      '  (ddi.DOC_ITEM_TEMPLATE_CODE = :DOC_ITEM_TEMPLATE_CODE)'
      ''
      'order by'
      '  ddi.DEFAULT_DOC_ITEM_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 1048
    Top = 208
    object qryDefaultDocItemsNomDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDefaultDocItemsNomDEFAULT_DOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_DOC_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDefaultDocItemsNomDOC_ITEM_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_NAME'
      Required = True
      Size = 100
    end
    object qryDefaultDocItemsNomDOC_ITEM_STATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STATE_CODE'
      Required = True
    end
  end
  object qryDocProfiles: TAbmesSQLQuery
    DataSource = dsDocItemTemplateTypes
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.DOC_PROFILE_CODE,'
      '  dp.DOC_ITEM_TEMPLATE_TYPE_CODE,'
      '  dp.DOC_PROFILE_NO,'
      '  dp.DOC_PROFILE_NAME,'
      '  dp.DOC_BRANCH_CODE,'
      '  dp.DOC_CODE,'
      '  %HAS_DOC_ITEMS[dp] as HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = dp.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = dp.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQ_CODE,'
      ''
      '  ( select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = dp.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = dp.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = dp.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = dp.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = dp.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = dp.DOC_CODE) and'
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
      '      (di.DOC_BRANCH_CODE = dp.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = dp.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  e.ABBREV as AUTHORIZE_EMPLOYEE_ABBREV,'
      ''
      '  ( e.FIRST_NAME ||'
      '    Nvl2(e.MIDDLE_NAME,'
      '      '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '      '#39' '#39') ||'
      '    e.LAST_NAME'
      '  ) as AUTHORIZE_EMPLOYEE_NAME'
      ''
      'from'
      '  DOC_PROFILES dp,'
      '  EMPLOYEES e'
      ''
      'where'
      
        '  (dp.DOC_ITEM_TEMPLATE_TYPE_CODE = :DOC_ITEM_TEMPLATE_TYPE_CODE' +
        ') and'
      '  (dp.AUTHORIZE_EMPLOYEE_CODE = e.EMPLOYEE_CODE(+))'
      ''
      'order by'
      '  dp.DOC_PROFILE_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[dp]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DOC_PROFILES_FOR_EDIT'
    Left = 1056
    Top = 560
    object qryDocProfilesDOC_PROFILE_CODE: TAbmesFloatField
      FieldName = 'DOC_PROFILE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDocProfilesDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
      Required = True
    end
    object qryDocProfilesDOC_PROFILE_NO: TAbmesFloatField
      FieldName = 'DOC_PROFILE_NO'
      Required = True
    end
    object qryDocProfilesDOC_PROFILE_NAME: TAbmesWideStringField
      FieldName = 'DOC_PROFILE_NAME'
      Required = True
      Size = 250
    end
    object qryDocProfilesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDocProfilesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDocProfilesHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryDocProfilesDOC_EMPTINESS_REQ_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQ_CODE'
      ProviderFlags = []
    end
    object qryDocProfilesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      ProviderFlags = []
    end
    object qryDocProfilesACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryDocProfilesUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryDocProfilesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryDocProfilesAUTHORIZE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'AUTHORIZE_EMPLOYEE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryDocProfilesAUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'AUTHORIZE_EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 104
    end
  end
  object qryNewDocProfileCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_DOC_PROFILES.NextVal as NEW_DOC_PROFILE_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 1056
    Top = 712
    object qryNewDocProfileCodeNEW_DOC_PROFILE_CODE: TAbmesFloatField
      FieldName = 'NEW_DOC_PROFILE_CODE'
    end
  end
  object dsDocItemTemplateTypes: TDataSource
    DataSet = qryDocItemTemplateTypes
    Left = 1056
    Top = 512
  end
  object prvDocProfilesMaster: TDataSetProvider
    DataSet = qryDocItemTemplateTypes
    UpdateMode = upWhereKeyOnly
    Left = 1056
    Top = 464
  end
  object qryDocProfile: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_PROFILE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.DOC_PROFILE_CODE,'
      '  dp.DOC_ITEM_TEMPLATE_TYPE_CODE,'
      '  dp.DOC_PROFILE_NO,'
      '  dp.DOC_PROFILE_NAME,'
      '  dp.DOC_BRANCH_CODE,'
      '  dp.DOC_CODE,'
      '  dp.AUTHORIZE_EMPLOYEE_CODE,'
      '  dp.AUTHORIZE_DATE,'
      '  dp.AUTHORIZE_TIME'
      ''
      'from'
      '  DOC_PROFILES dp'
      ''
      'where'
      '  (dp.DOC_PROFILE_CODE = :DOC_PROFILE_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DOC_PROFILES_FOR_EDIT'
    AfterProviderStartTransaction = qryDocProfileAfterProviderStartTransaction
    Left = 1056
    Top = 664
    object qryDocProfileDOC_PROFILE_CODE: TAbmesFloatField
      FieldName = 'DOC_PROFILE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDocProfileDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
      Required = True
    end
    object qryDocProfileDOC_PROFILE_NO: TAbmesFloatField
      FieldName = 'DOC_PROFILE_NO'
      Required = True
    end
    object qryDocProfileDOC_PROFILE_NAME: TAbmesWideStringField
      FieldName = 'DOC_PROFILE_NAME'
      Required = True
      Size = 250
    end
    object qryDocProfileDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDocProfileDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDocProfileAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object qryDocProfileAUTHORIZE_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_DATE'
    end
    object qryDocProfileAUTHORIZE_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_TIME'
    end
  end
  object prvDocProfile: TDataSetProvider
    DataSet = qryDocProfile
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvDocProfileBeforeUpdateRecord
    BeforeApplyUpdates = prvDocProfileBeforeApplyUpdates
    AfterApplyUpdates = prvDocProfileAfterApplyUpdates
    Left = 1056
    Top = 616
  end
  object prvDocProfiles: TDataSetProvider
    DataSet = qryDocProfiles
    Options = [poReadOnly, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 1104
    Top = 576
  end
  object shLoadDocs: TJvStrHolder
    Capacity = 8
    Macros = <>
    Left = 48
    Top = 696
    InternalVer = 2
    StrData = (
      ''
      '73656c656374'
      '202074642e444f435f4252414e43485f434f44452c'
      '202074642e444f435f434f4445'
      '66726f6d'
      '202054454d505f444f4353207464')
  end
  object qryInsertTempDocs: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBlob
        Name = 'DOCS_BYTES'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  DocUtils.InsertTempDocs(DocUtils.BlobToDocTable(:DOCS_BYTES));'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 232
    Top = 64
  end
  object qryNewDocItemStorageTypeCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(dist.DOC_ITEM_STORAGE_TYPE_CODE), 0) + 1) as NEW' +
        '_DOC_ITEM_STORAGE_TYPE_CODE'
      'from'
      '  DOC_ITEM_STORAGE_TYPES dist')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 920
    Top = 688
    object qryNewDocItemStorageTypeCodeNEW_DOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField
      FieldName = 'NEW_DOC_ITEM_STORAGE_TYPE_CODE'
    end
  end
end
