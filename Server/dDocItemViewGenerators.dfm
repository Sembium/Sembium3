inherited dmDocItemViewGenerators: TdmDocItemViewGenerators
  Height = 516
  Width = 619
  object qryGetDocItemViewGenerator: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_VIEW_GENERATOR_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  divg.DOC_ITEM_VIEW_GENERATOR_CODE,'
      '  divg.DOC_ITEM_VIEW_GENERATOR_NAME,'
      '  divg.GENERATOR_PATH,'
      '  divg.GENERATOR_PARAMS,'
      '  divg.GENERATOR_TIMEOUT_SEC,'
      '  divg.RESULT_FILE_EXTENSION_CODE,'
      '  fe.FILE_EXTENSION_NAME as RESULT_FILE_EXTENSION_NAME,'
      '  fe.FILE_EXTENSION_ABBREV as RESULT_FILE_EXTENSION_ABBREV'
      'from'
      '  DOC_ITEM_VIEW_GENERATORS divg,'
      '  FILE_EXTENSIONS fe'
      'where'
      '  (divg.RESULT_FILE_EXTENSION_CODE = fe.FILE_EXTENSION_CODE) and'
      
        '  (divg.DOC_ITEM_VIEW_GENERATOR_CODE = :DOC_ITEM_VIEW_GENERATOR_' +
        'CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 280
    Top = 224
    object qryGetDocItemViewGeneratorDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryGetDocItemViewGeneratorDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_NAME'
      Size = 50
    end
    object qryGetDocItemViewGeneratorGENERATOR_PATH: TAbmesWideStringField
      FieldName = 'GENERATOR_PATH'
      Size = 100
    end
    object qryGetDocItemViewGeneratorGENERATOR_PARAMS: TAbmesWideStringField
      FieldName = 'GENERATOR_PARAMS'
      Size = 100
    end
    object qryGetDocItemViewGeneratorGENERATOR_TIMEOUT_SEC: TAbmesFloatField
      FieldName = 'GENERATOR_TIMEOUT_SEC'
    end
    object qryGetDocItemViewGeneratorRESULT_FILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'RESULT_FILE_EXTENSION_CODE'
    end
    object qryGetDocItemViewGeneratorRESULT_FILE_EXTENSION_NAME: TAbmesWideStringField
      FieldName = 'RESULT_FILE_EXTENSION_NAME'
      Size = 50
    end
    object qryGetDocItemViewGeneratorRESULT_FILE_EXTENSION_ABBREV: TAbmesWideStringField
      FieldName = 'RESULT_FILE_EXTENSION_ABBREV'
      Size = 10
    end
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
      '  di.STORED_FILE_BRANCH_CODE,'
      '  di.STORED_FILE_CODE,'
      '  di.DOC_ITEM_PATTERN_CODE,'
      '  fe.DOC_ITEM_VIEW_GENERATOR_CODE,'
      '  di.IS_MIRRORED,'
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
      '  DOC_ITEMS di,'
      '  STORED_FILES sf,'
      '  FILE_EXTENSIONS fe'
      'where'
      
        '  (di.STORED_FILE_BRANCH_CODE = sf.STORED_FILE_BRANCH_CODE(+)) a' +
        'nd'
      '  (di.STORED_FILE_CODE = sf.STORED_FILE_CODE(+)) and'
      '  (sf.FILE_EXTENSION_CODE = fe.FILE_EXTENSION_CODE(+)) and'
      '  (di.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (di.DOC_CODE = :DOC_CODE) and'
      '  (di.DOC_ITEM_CODE = :DOC_ITEM_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 279
    Top = 279
    object qryGetDocItemDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryGetDocItemDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryGetDocItemDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryGetDocItemSTORED_FILE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_BRANCH_CODE'
    end
    object qryGetDocItemSTORED_FILE_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_CODE'
    end
    object qryGetDocItemDOC_ITEM_PATTERN_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_PATTERN_CODE'
    end
    object qryGetDocItemDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
    end
    object qryGetDocItemIS_MIRRORED: TAbmesFloatField
      FieldName = 'IS_MIRRORED'
      FieldValueType = fvtBoolean
    end
    object qryGetDocItemFILE_NAME: TAbmesWideStringField
      FieldName = 'FILE_NAME'
      Size = 250
    end
    object qryGetDocItemCONTENT_STORAGE_ADDRESS: TAbmesWideStringField
      FieldName = 'CONTENT_STORAGE_ADDRESS'
      Size = 250
    end
  end
  object qryGetStoredFileChangeDate: TAbmesSQLQuery
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
      '  sf.CHANGE_DATE as STORED_FILE_CHANGE_DATE,'
      '  sf.CHANGE_TIME as STORED_FILE_CHANGE_TIME'
      'from'
      '  STORED_FILES sf'
      'where'
      '  (sf.STORED_FILE_BRANCH_CODE = :STORED_FILE_BRANCH_CODE) and'
      '  (sf.STORED_FILE_CODE = :STORED_FILE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 280
    Top = 336
    object qryGetStoredFileChangeDateSTORED_FILE_CHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORED_FILE_CHANGE_DATE'
    end
    object qryGetStoredFileChangeDateSTORED_FILE_CHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORED_FILE_CHANGE_TIME'
    end
  end
  object qryGetDocItemPatternChangeDate: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_PATTERN_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  di.CHANGE_DATE as DOC_ITEM_PATTERN_CHANGE_DATE,'
      '  di.CHANGE_TIME as DOC_ITEM_PATTERN_CHANGE_TIME'
      'from'
      '  DOC_ITEM_TEMPLATES dit,'
      '  DOC_ITEMS di'
      'where'
      '  (dit.DOC_BRANCH_CODE = di.DOC_BRANCH_CODE) and'
      '  (dit.DOC_CODE = di.DOC_CODE) and'
      '  (dit.DOC_ITEM_CODE = di.DOC_ITEM_CODE) and'
      '  (dit.DOC_ITEM_TEMPLATE_CODE = :DOC_ITEM_PATTERN_CODE)  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 280
    Top = 392
    object qryGetDocItemPatternChangeDateDOC_ITEM_PATTERN_CHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'DOC_ITEM_PATTERN_CHANGE_DATE'
    end
    object qryGetDocItemPatternChangeDateDOC_ITEM_PATTERN_CHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'DOC_ITEM_PATTERN_CHANGE_TIME'
    end
  end
  object conDatasnapExecuteServer: TSQLConnection
    DriverName = 'Datasnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=17.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'ConnectTimeout=5000'
      'CommunicationTimeout=60000')
    Left = 72
    Top = 144
  end
  object qryGetDocItemViewGeneratorCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'FILE_EXTENSION_ABBREV'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  fe.DOC_ITEM_VIEW_GENERATOR_CODE'
      'from'
      '  FILE_EXTENSIONS fe'
      'where'
      
        '  (Lower(fe.FILE_EXTENSION_ABBREV) = Lower(:FILE_EXTENSION_ABBRE' +
        'V))')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 472
    Top = 224
    object qryGetDocItemViewGeneratorCodeDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
    end
  end
end
