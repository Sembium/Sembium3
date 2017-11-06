inherited dmDocClient: TdmDocClient
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 264
  Width = 825
  object cdsDocs: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDoc
    Filtered = True
    FieldDefs = <
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_EMPTINESS_REQUIREMENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'RECORD_STATUS'
        DataType = ftFloat
      end
      item
        Name = 'MAX_DOC_ITEM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'qryDocItems'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'DOC_BRANCH_CODE; DOC_CODE'
      end>
    IndexName = 'idxDefault'
    Params = <>
    ProviderName = 'prvDocs'
    StoreDefs = True
    BeforeInsert = cdsDocsBeforeInsert
    AfterInsert = cdsDocsAfterInsert
    BeforeEdit = cdsDocsBeforeEdit
    AfterEdit = cdsDocsAfterEdit
    BeforePost = cdsDocsBeforePost
    AfterPost = cdsDocsAfterPost
    AfterCancel = cdsDocsAfterCancel
    BeforeDelete = cdsDocsBeforeDelete
    OnFilterRecord = cdsDocsFilterRecord
    OnNewRecord = cdsDocsNewRecord
    OnReconcileError = cdsDocsReconcileError
    Left = 48
    Top = 8
    object cdsDocsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDocsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      OnChange = cdsDocsDOC_EMPTINESS_REQUIREMENT_CODEChange
    end
    object cdsDocsIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
      OnChange = cdsDocsIS_COMPLETEChange
      FieldValueType = fvtBoolean
    end
    object cdsDocsRECORD_STATUS: TAbmesFloatField
      FieldName = 'RECORD_STATUS'
      ProviderFlags = []
    end
    object cdsDocsqryDocItems: TDataSetField
      FieldName = 'qryDocItems'
    end
    object cdsDocs_DOC_EMPTINESS_REQUIREMENT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DOC_EMPTINESS_REQUIREMENT_NAME'
      LookupDataSet = cdsDocEmptinessRequirements
      LookupKeyFields = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      LookupResultField = 'DOC_EMPTINESS_REQUIREMENT_NAME'
      KeyFields = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      Size = 100
      Lookup = True
    end
    object cdsDocsMAX_DOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'MAX_DOC_ITEM_CODE'
    end
  end
  object cdsDocItems: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsDocsqryDocItems
    Filtered = True
    FieldDefs = <
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_NO'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DOC_ITEM_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_INACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'CREATE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CREATE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CHANGE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'DEVELOP_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEVELOP_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DEVELOP_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'AUTHORIZE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'AUTHORIZE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'AUTHORIZE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'APPROVE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'APPROVE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'APPROVE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'DOC_ITEM_STORAGE_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'RELATIVE_PATH'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'FILE_NAME'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'DOC_ITEM_PATTERN_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORED_FILE_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORED_FILE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FILE_EXTENSION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORED_FILE_DATA'
        DataType = ftBlob
        Size = 1
      end
      item
        Name = 'IS_STORED_FILE_CHANGED'
        DataType = ftFloat
      end
      item
        Name = 'RECORD_STATUS'
        DataType = ftFloat
      end
      item
        Name = 'IS_NOT_DELETED'
        DataType = ftFloat
      end
      item
        Name = 'MAX_DOC_ITEM_SYS_ROLE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_ACCESS_LEVEL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_MIRRORED'
        DataType = ftFloat
      end
      item
        Name = 'MIRRORED_FILE_NAME'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'MIRRORED_RELATIVE_PATH'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'FILE_CHANGE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FILE_CHANGE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'FILE_CHANGE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'qryDocItemSysRoles'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'DOC_BRANCH_CODE;DOC_CODE;DOC_ITEM_CODE'
      end
      item
        Name = 'idxName'
        Fields = 'DOC_BRANCH_CODE;DOC_CODE;DOC_ITEM_NAME'
      end
      item
        Name = 'idxNo'
        Fields = 'DOC_BRANCH_CODE;DOC_CODE;DOC_ITEM_NO'
      end>
    Params = <>
    StoreDefs = True
    AfterInsert = cdsDocItemsAfterInsert
    AfterEdit = cdsDocItemsAfterEdit
    BeforePost = cdsDocItemsBeforePost
    BeforeDelete = cdsDocItemsBeforeDelete
    OnFilterRecord = cdsDocItemsFilterRecord
    OnNewRecord = cdsDocItemsNewRecord
    Left = 48
    Top = 64
    object cdsDocItemsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDocItemsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDocItemsDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDocItemsDOC_ITEM_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'DOC_ITEM_NO'
      FieldValueType = fvtInteger
    end
    object cdsDocItemsDOC_ITEM_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DOC_ITEM_NAME'
      Size = 100
    end
    object cdsDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076' '#1048#1048#1054
      FieldName = 'DOC_ITEM_TYPE_CODE'
      OnValidate = cdsDocItemsDOC_ITEM_TYPE_CODEValidate
    end
    object cdsDocItemsIS_INACTIVE: TAbmesFloatField
      DisplayLabel = #1055#1072#1089#1080#1074#1077#1085
      FieldName = 'IS_INACTIVE'
      Required = True
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsDocItemsNOTES: TAbmesWideStringField
      DisplayLabel = #1041#1077#1083#1077#1078#1082#1080
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsDocItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsDocItemsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsDocItemsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsDocItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsDocItemsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsDocItemsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsDocItemsDEVELOP_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DEVELOP_EMPLOYEE_CODE'
    end
    object cdsDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_DATE'
    end
    object cdsDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_TIME'
      DisplayFormat = 'hh:nn:ss'
    end
    object cdsDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object cdsDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_DATE'
    end
    object cdsDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_TIME'
      DisplayFormat = 'hh:nn:ss'
    end
    object cdsDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'APPROVE_EMPLOYEE_CODE'
    end
    object cdsDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_DATE'
    end
    object cdsDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_TIME'
      DisplayFormat = 'hh:nn:ss'
    end
    object cdsDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STORAGE_TYPE_CODE'
      Required = True
      OnChange = cdsDocItemsDOC_ITEM_STORAGE_TYPE_CODEChange
    end
    object cdsDocItemsRELATIVE_PATH: TAbmesWideStringField
      DisplayLabel = #1056#1077#1083#1072#1090#1080#1074#1077#1085' '#1087#1098#1090
      FieldName = 'RELATIVE_PATH'
      Size = 250
    end
    object cdsDocItemsFILE_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1084#1077' '#1085#1072' '#1092#1072#1081#1083
      FieldName = 'FILE_NAME'
      OnGetText = cdsDocItemsFILE_NAMEGetText
      Size = 250
    end
    object cdsDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField
      DisplayLabel = #1064#1072#1073#1083#1086#1085
      FieldName = 'DOC_ITEM_PATTERN_CODE'
    end
    object cdsDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_BRANCH_CODE'
    end
    object cdsDocItemsSTORED_FILE_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_CODE'
    end
    object cdsDocItemsFILE_EXTENSION_CODE: TAbmesFloatField
      DisplayLabel = #1060#1072#1081#1083#1086#1074#1086' '#1088#1072#1079#1096#1080#1088#1077#1085#1080#1077
      FieldName = 'FILE_EXTENSION_CODE'
      ProviderFlags = []
    end
    object cdsDocItemsSTORED_FILE_DATA: TBlobField
      FieldName = 'STORED_FILE_DATA'
      ProviderFlags = []
      Size = 1
    end
    object cdsDocItemsIS_STORED_FILE_CHANGED: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'IS_STORED_FILE_CHANGED'
      ProviderFlags = []
      DisplayBoolValues = #1055#1088#1086#1084#1077#1085#1077#1085
      FieldValueType = fvtBoolean
    end
    object cdsDocItemsRECORD_STATUS: TAbmesFloatField
      FieldName = 'RECORD_STATUS'
      ProviderFlags = []
      OnChange = cdsDocItemsRECORD_STATUSChange
    end
    object cdsDocItemsIS_NOT_DELETED: TAbmesFloatField
      FieldName = 'IS_NOT_DELETED'
      FieldValueType = fvtBoolean
    end
    object cdsDocItems_DOC_ITEM_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1080#1076
      FieldKind = fkLookup
      FieldName = '_DOC_ITEM_TYPE_NAME'
      LookupDataSet = cdsDocItemTypes
      LookupKeyFields = 'DOC_ITEM_TYPE_CODE'
      LookupResultField = 'DOC_ITEM_TYPE_NAME'
      KeyFields = 'DOC_ITEM_TYPE_CODE'
      Size = 250
      Lookup = True
    end
    object cdsDocItems_DOC_ITEM_TYPE_EXTENDED_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1080#1076
      FieldKind = fkLookup
      FieldName = '_DOC_ITEM_TYPE_EXTENDED_NAME'
      LookupDataSet = cdsDocItemTypes
      LookupKeyFields = 'DOC_ITEM_TYPE_CODE'
      LookupResultField = '_DOC_ITEM_TYPE_EXTENDED_NAME'
      KeyFields = 'DOC_ITEM_TYPE_CODE'
      Size = 250
      Lookup = True
    end
    object cdsDocItems_DOC_ITEM_BASE_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1052#1048#1048#1054' '#1054#1089#1085#1086#1074#1085#1072' '#1043#1088#1091#1087#1072
      FieldKind = fkLookup
      FieldName = '_DOC_ITEM_BASE_TYPE_NAME'
      LookupDataSet = cdsDocItemTypes
      LookupKeyFields = 'DOC_ITEM_TYPE_CODE'
      LookupResultField = 'DOC_ITEM_BASE_TYPE_NAME'
      KeyFields = 'DOC_ITEM_TYPE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsDocItems_DOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_DOC_ITEM_VIEW_GENERATOR_CODE'
      LookupDataSet = cdsFileExtensions
      LookupKeyFields = 'FILE_EXTENSION_CODE'
      LookupResultField = 'DOC_ITEM_VIEW_GENERATOR_CODE'
      KeyFields = 'FILE_EXTENSION_CODE'
      Lookup = True
    end
    object cdsDocItems_DEVELOP_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DEVELOP_EMPLOYEE_ABBREV'
      LookupDataSet = cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_ABBREV'
      KeyFields = 'DEVELOP_EMPLOYEE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsDocItems_AUTHORIZE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_AUTHORIZE_EMPLOYEE_ABBREV'
      LookupDataSet = cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_ABBREV'
      KeyFields = 'AUTHORIZE_EMPLOYEE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsDocItems_APPROVE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_APPROVE_EMPLOYEE_ABBREV'
      LookupDataSet = cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_ABBREV'
      KeyFields = 'APPROVE_EMPLOYEE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsDocItems_FILE_EXTENSION_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_FILE_EXTENSION_ABBREV'
      LookupDataSet = cdsFileExtensions
      LookupKeyFields = 'FILE_EXTENSION_CODE'
      LookupResultField = 'FILE_EXTENSION_ABBREV'
      KeyFields = 'FILE_EXTENSION_CODE'
      Size = 10
      Lookup = True
    end
    object cdsDocItems_FILE_EXTENSION_EXTENDED_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_FILE_EXTENSION_EXTENDED_NAME'
      LookupDataSet = cdsFileExtensions
      LookupKeyFields = 'FILE_EXTENSION_CODE'
      LookupResultField = '_FILE_EXTENSION_EXTENDED_NAME'
      KeyFields = 'FILE_EXTENSION_CODE'
      Size = 250
      Lookup = True
    end
    object cdsDocItemsMAX_DOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'MAX_DOC_ITEM_SYS_ROLE_CODE'
    end
    object cdsDocItemsDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_ACCESS_LEVEL_CODE'
    end
    object cdsDocItemsqryDocItemSysRoles: TDataSetField
      FieldName = 'qryDocItemSysRoles'
    end
    object cdsDocItemsIS_MIRRORED: TAbmesFloatField
      FieldName = 'IS_MIRRORED'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDocItemsMIRRORED_FILE_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1084#1077' '#1085#1072' '#1086#1075#1083#1077#1076#1072#1083#1077#1085' '#1092#1072#1081#1083
      FieldName = 'MIRRORED_FILE_NAME'
      Size = 250
    end
    object cdsDocItemsMIRRORED_RELATIVE_PATH: TAbmesWideStringField
      DisplayLabel = #1054#1075#1083#1077#1076#1072#1083#1077#1085' '#1088#1077#1083#1072#1090#1080#1074#1077#1085' '#1087#1098#1090
      FieldName = 'MIRRORED_RELATIVE_PATH'
      Size = 250
    end
    object cdsDocItemsFILE_CHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FILE_CHANGE_EMPLOYEE_CODE'
    end
    object cdsDocItemsFILE_CHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'FILE_CHANGE_DATE'
    end
    object cdsDocItemsFILE_CHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'FILE_CHANGE_TIME'
    end
    object cdsDocItems_IS_DNC_DOC_ITEM: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_IS_DNC_DOC_ITEM'
      LookupDataSet = cdsDocItemTypes
      LookupKeyFields = 'DOC_ITEM_TYPE_CODE'
      LookupResultField = 'IS_DNC_DOC'
      KeyFields = 'DOC_ITEM_TYPE_CODE'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsDocItems_DOC_ITEM_STORAGE_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DOC_ITEM_STORAGE_TYPE_NAME'
      LookupDataSet = cdsDocItemStorageTypes
      LookupKeyFields = 'DOC_ITEM_STORAGE_TYPE_CODE'
      LookupResultField = 'DOC_ITEM_STORAGE_TYPE_NAME'
      KeyFields = 'DOC_ITEM_STORAGE_TYPE_CODE'
      Size = 250
      Lookup = True
    end
    object cdsDocItems_DOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DOC_ITEM_TYPE_FILE_EXTENSIONS'
      LookupDataSet = cdsDocItemTypes
      LookupKeyFields = 'DOC_ITEM_TYPE_CODE'
      LookupResultField = 'DOC_ITEM_TYPE_FILE_EXTENSIONS'
      KeyFields = 'DOC_ITEM_TYPE_CODE'
      Size = 250
      Lookup = True
    end
    object cdsDocItems_DI_STORAGE_TYPE_SELECT_COMMAND: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DI_STORAGE_TYPE_SELECT_COMMAND'
      LookupDataSet = cdsDocItemStorageTypes
      LookupKeyFields = 'DOC_ITEM_STORAGE_TYPE_CODE'
      LookupResultField = 'SELECT_COMMAND'
      KeyFields = 'DOC_ITEM_STORAGE_TYPE_CODE'
      Size = 250
      Lookup = True
    end
    object cdsDocItems_DI_STORAGE_TYPE_VIEW_COMMAND: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DI_STORAGE_TYPE_VIEW_COMMAND'
      LookupDataSet = cdsDocItemStorageTypes
      LookupKeyFields = 'DOC_ITEM_STORAGE_TYPE_CODE'
      LookupResultField = 'VIEW_COMMAND'
      KeyFields = 'DOC_ITEM_STORAGE_TYPE_CODE'
      Size = 250
      Lookup = True
    end
    object cdsDocItems_DI_STORAGE_TYPE_EDIT_COMMAND: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DI_STORAGE_TYPE_EDIT_COMMAND'
      LookupDataSet = cdsDocItemStorageTypes
      LookupKeyFields = 'DOC_ITEM_STORAGE_TYPE_CODE'
      LookupResultField = 'EDIT_COMMAND'
      KeyFields = 'DOC_ITEM_STORAGE_TYPE_CODE'
      Size = 250
      Lookup = True
    end
    object cdsDocItems_DI_STORAGE_BASE_TYPE_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_DI_STORAGE_BASE_TYPE_CODE'
      LookupDataSet = cdsDocItemStorageTypes
      LookupKeyFields = 'DOC_ITEM_STORAGE_TYPE_CODE'
      LookupResultField = 'DI_STORAGE_BASE_TYPE_CODE'
      KeyFields = 'DOC_ITEM_STORAGE_TYPE_CODE'
      Lookup = True
    end
    object cdsDocItems_MAX_DOC_ITEM_NO: TAggregateField
      FieldName = '_MAX_DOC_ITEM_NO'
      Active = True
      DisplayName = ''
      Expression = 'Max(DOC_ITEM_NO)'
    end
    object cdsDocItems_INACTIVE_DOC_ITEM_COUNT: TAggregateField
      FieldName = '_INACTIVE_DOC_ITEM_COUNT'
      Active = True
      DisplayName = ''
      Expression = 'Sum(IS_INACTIVE*IS_NOT_DELETED)'
    end
    object cdsDocItems_ACTIVE_DOC_ITEM_COUNT: TAggregateField
      FieldName = '_ACTIVE_DOC_ITEM_COUNT'
      Active = True
      DisplayName = ''
      Expression = 'Sum((IS_INACTIVE*(-1)+1)*IS_NOT_DELETED)'
    end
    object cdsDocItems_AUTHORIZED_DOC_ITEM_COUNT: TAggregateField
      FieldName = '_AUTHORIZED_DOC_ITEM_COUNT'
      Active = True
      DisplayName = ''
      Expression = 
        'Sum((AUTHORIZE_EMPLOYEE_CODE/AUTHORIZE_EMPLOYEE_CODE)*IS_NOT_DEL' +
        'ETED)'
    end
    object cdsDocItems_AUTHORIZED_ACTIVE_DI_COUNT: TAggregateField
      FieldName = '_AUTHORIZED_ACTIVE_DI_COUNT'
      Active = True
      DisplayName = ''
      Expression = 
        'Sum((AUTHORIZE_EMPLOYEE_CODE/AUTHORIZE_EMPLOYEE_CODE)*(IS_INACTI' +
        'VE*(-1)+1)*IS_NOT_DELETED)'
    end
    object cdsDocItems_APPROVED_DOC_ITEM_COUNT: TAggregateField
      FieldName = '_APPROVED_DOC_ITEM_COUNT'
      Active = True
      DisplayName = ''
      Expression = 
        'Sum((APPROVE_EMPLOYEE_CODE/APPROVE_EMPLOYEE_CODE)*IS_NOT_DELETED' +
        ')'
    end
    object cdsDocItems_APPROVED_ACTIVE_DOC_ITEM_COUNT: TAggregateField
      FieldName = '_APPROVED_ACTIVE_DOC_ITEM_COUNT'
      Active = True
      DisplayName = ''
      Expression = 
        'Sum((APPROVE_EMPLOYEE_CODE/APPROVE_EMPLOYEE_CODE)*(IS_INACTIVE*(' +
        '-1)+1)*IS_NOT_DELETED)'
    end
  end
  object cdsLoadDoc: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDoc
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
      end>
    ProviderName = 'prvLoadDoc'
    BeforeGetRecords = cdsLoadDocBeforeGetRecords
    Left = 184
    Top = 8
    object cdsLoadDocDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsLoadDocDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsLoadDocDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsLoadDocIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
    end
    object cdsLoadDocqryLoadDocItems: TDataSetField
      FieldName = 'qryLoadDocItems'
    end
  end
  object cdsLoadDocItems: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsLoadDocqryLoadDocItems
    Params = <>
    Left = 184
    Top = 64
    object cdsLoadDocItemsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsLoadDocItemsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsLoadDocItemsDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsLoadDocItemsDOC_ITEM_NO: TAbmesFloatField
      FieldName = 'DOC_ITEM_NO'
    end
    object cdsLoadDocItemsDOC_ITEM_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_NAME'
      Size = 100
    end
    object cdsLoadDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object cdsLoadDocItemsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsLoadDocItemsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsLoadDocItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsLoadDocItemsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsLoadDocItemsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsLoadDocItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsLoadDocItemsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsLoadDocItemsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsLoadDocItemsDEVELOP_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DEVELOP_EMPLOYEE_CODE'
    end
    object cdsLoadDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_DATE'
    end
    object cdsLoadDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_TIME'
    end
    object cdsLoadDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object cdsLoadDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_DATE'
    end
    object cdsLoadDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_TIME'
    end
    object cdsLoadDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'APPROVE_EMPLOYEE_CODE'
    end
    object cdsLoadDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_DATE'
    end
    object cdsLoadDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_TIME'
    end
    object cdsLoadDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STORAGE_TYPE_CODE'
      Required = True
    end
    object cdsLoadDocItemsRELATIVE_PATH: TAbmesWideStringField
      FieldName = 'RELATIVE_PATH'
      Size = 250
    end
    object cdsLoadDocItemsFILE_NAME: TAbmesWideStringField
      FieldName = 'FILE_NAME'
      Size = 250
    end
    object cdsLoadDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_PATTERN_CODE'
    end
    object cdsLoadDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_BRANCH_CODE'
    end
    object cdsLoadDocItemsSTORED_FILE_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_CODE'
    end
    object cdsLoadDocItemsFILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'FILE_EXTENSION_CODE'
    end
    object cdsLoadDocItemsIS_MIRRORED: TAbmesFloatField
      FieldName = 'IS_MIRRORED'
      FieldValueType = fvtBoolean
    end
    object cdsLoadDocItemsMIRRORED_RELATIVE_PATH: TAbmesWideStringField
      FieldName = 'MIRRORED_RELATIVE_PATH'
      Size = 250
    end
    object cdsLoadDocItemsMIRRORED_FILE_NAME: TAbmesWideStringField
      FieldName = 'MIRRORED_FILE_NAME'
      Size = 250
    end
    object cdsLoadDocItemsFILE_CHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FILE_CHANGE_EMPLOYEE_CODE'
    end
    object cdsLoadDocItemsFILE_CHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'FILE_CHANGE_DATE'
    end
    object cdsLoadDocItemsFILE_CHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'FILE_CHANGE_TIME'
    end
    object cdsLoadDocItemsqryLoadDocItemSysRoles: TDataSetField
      FieldName = 'qryLoadDocItemSysRoles'
    end
  end
  object pmDoc: TPopupMenu
    Images = dmMain.ilActions
    Left = 680
    Top = 8
  end
  object cdsDocItemTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDoc
    Params = <>
    ProviderName = 'prvDocItemTypes'
    OnCalcFields = cdsDocItemTypesCalcFields
    Left = 680
    Top = 192
    object cdsDocItemTypesDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDocItemTypesDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Size = 50
    end
    object cdsDocItemTypesDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_BASE_TYPE_CODE'
    end
    object cdsDocItemTypesDOC_ITEM_BASE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_BASE_TYPE_NAME'
      Size = 50
    end
    object cdsDocItemTypesDOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_FILE_EXTENSIONS'
      Size = 250
    end
    object cdsDocItemTypes_DOC_ITEM_TYPE_EXTENDED_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DOC_ITEM_TYPE_EXTENDED_NAME'
      Size = 250
      Calculated = True
    end
    object cdsDocItemTypesIS_DNC_DOC: TAbmesFloatField
      FieldName = 'IS_DNC_DOC'
      FieldValueType = fvtBoolean
    end
  end
  object cdsCopyDocItems: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 64
    object cdsCopyDocItemsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsCopyDocItemsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsCopyDocItemsDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
    end
    object cdsCopyDocItemsDOC_ITEM_NO: TAbmesFloatField
      FieldName = 'DOC_ITEM_NO'
    end
    object cdsCopyDocItemsDOC_ITEM_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DOC_ITEM_NAME'
      Size = 100
    end
    object cdsCopyDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object cdsCopyDocItemsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsCopyDocItemsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsCopyDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STORAGE_TYPE_CODE'
    end
    object cdsCopyDocItemsFILE_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1084#1077' '#1085#1072' '#1092#1072#1081#1083
      FieldName = 'FILE_NAME'
      Size = 250
    end
    object cdsCopyDocItemsRELATIVE_PATH: TAbmesWideStringField
      FieldName = 'RELATIVE_PATH'
      Size = 250
    end
    object cdsCopyDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_PATTERN_CODE'
    end
    object cdsCopyDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_BRANCH_CODE'
    end
    object cdsCopyDocItemsSTORED_FILE_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_CODE'
    end
    object cdsCopyDocItemsFILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'FILE_EXTENSION_CODE'
    end
    object cdsCopyDocItemsSTORED_FILE_DATA: TBlobField
      FieldName = 'STORED_FILE_DATA'
      Size = 1
    end
    object cdsCopyDocItemsIS_STORED_FILE_CHANGED: TAbmesFloatField
      FieldName = 'IS_STORED_FILE_CHANGED'
      FieldValueType = fvtBoolean
    end
    object cdsCopyDocItemsDEVELOP_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DEVELOP_EMPLOYEE_CODE'
    end
    object cdsCopyDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_DATE'
    end
    object cdsCopyDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_TIME'
    end
    object cdsCopyDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object cdsCopyDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_DATE'
    end
    object cdsCopyDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_TIME'
    end
    object cdsCopyDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'APPROVE_EMPLOYEE_CODE'
    end
    object cdsCopyDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_DATE'
    end
    object cdsCopyDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_TIME'
    end
    object cdsCopyDocItemsMAX_DOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'MAX_DOC_ITEM_SYS_ROLE_CODE'
    end
    object cdsCopyDocItemsDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_ACCESS_LEVEL_CODE'
    end
    object cdsCopyDocItemsIS_MIRRORED: TAbmesFloatField
      FieldName = 'IS_MIRRORED'
      FieldValueType = fvtBoolean
    end
    object cdsCopyDocItemsMIRRORED_RELATIVE_PATH: TAbmesWideStringField
      FieldName = 'MIRRORED_RELATIVE_PATH'
      Size = 250
    end
    object cdsCopyDocItemsMIRRORED_FILE_NAME: TAbmesWideStringField
      FieldName = 'MIRRORED_FILE_NAME'
      Size = 250
    end
    object cdsCopyDocItemsFILE_CHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FILE_CHANGE_EMPLOYEE_CODE'
    end
    object cdsCopyDocItemsFILE_CHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'FILE_CHANGE_DATE'
    end
    object cdsCopyDocItemsFILE_CHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'FILE_CHANGE_TIME'
    end
  end
  object OpenDialog: TOpenDialog
    Left = 584
    Top = 64
  end
  object SaveDialog: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 680
    Top = 64
  end
  object cdsEmployees: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvEmployees'
    Left = 464
    Top = 8
    object cdsEmployeesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmployeesEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object cdsEmployeesEMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'EMPLOYEE_ABBREV'
      Size = 5
    end
  end
  object cdsFileExtensions: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDoc
    Params = <>
    ProviderName = 'prvFileExtensions'
    OnCalcFields = cdsFileExtensionsCalcFields
    Left = 464
    Top = 64
    object cdsFileExtensionsFILE_EXTENSION_CODE: TAbmesFloatField
      FieldName = 'FILE_EXTENSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsFileExtensionsFILE_EXTENSION_NAME: TAbmesWideStringField
      FieldName = 'FILE_EXTENSION_NAME'
      Size = 50
    end
    object cdsFileExtensionsFILE_EXTENSION_ABBREV: TAbmesWideStringField
      FieldName = 'FILE_EXTENSION_ABBREV'
      Size = 10
    end
    object cdsFileExtensionsDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_VIEW_GENERATOR_CODE'
    end
    object cdsFileExtensions_FILE_EXTENSION_EXTENDED_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_FILE_EXTENSION_EXTENDED_NAME'
      Size = 250
      Calculated = True
    end
  end
  object cdsDocEmptinessRequirements: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDoc
    Params = <>
    ProviderName = 'prvDocEmptinessRequirements'
    Left = 584
    Top = 8
    object cdsDocEmptinessRequirementsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDocEmptinessRequirementsDOC_EMPTINESS_REQUIREMENT_NAME: TAbmesWideStringField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_NAME'
      Size = 100
    end
  end
  object cdsReservedDocCodes: TAbmesClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DOC_CODE'
    Params = <>
    Left = 48
    Top = 192
    object cdsReservedDocCodesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
  end
  object cdsReserveDocCodes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDoc
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_CODE_COUNT'
        ParamType = ptInput
      end>
    ProviderName = 'prvReserveDocCodes'
    Left = 168
    Top = 192
    object cdsReserveDocCodesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
  end
  object cdsDocItemSysRoles: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsDocItemsqryDocItemSysRoles
    Filtered = True
    FieldDefs = <
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_SYS_ROLE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_ACCESS_LEVEL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'RECORD_STATUS'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxSysRole'
        Fields = 'DOC_BRANCH_CODE;DOC_CODE;DOC_ITEM_CODE;SYS_ROLE_CODE'
      end
      item
        Name = 'idxDefault'
        Fields = 
          'DOC_BRANCH_CODE; DOC_CODE; DOC_ITEM_CODE; DOC_ITEM_ACCESS_LEVEL_' +
          'CODE; SYS_ROLE_CODE'
      end>
    IndexName = 'idxDefault'
    Params = <>
    StoreDefs = True
    AfterInsert = cdsDocItemSysRolesAfterInsert
    AfterEdit = cdsDocItemSysRolesAfterEdit
    BeforePost = cdsDocItemSysRolesBeforePost
    BeforeDelete = cdsDocItemSysRolesBeforeDelete
    OnFilterRecord = cdsDocItemSysRolesFilterRecord
    OnNewRecord = cdsDocItemSysRolesNewRecord
    Left = 48
    Top = 120
    object cdsDocItemSysRolesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDocItemSysRolesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDocItemSysRolesDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDocItemSysRolesSYS_ROLE_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1073#1086#1088' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
      FieldName = 'SYS_ROLE_CODE'
      Required = True
    end
    object cdsDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1085#1072' '#1076#1086#1089#1090#1098#1087
      FieldName = 'DOC_ITEM_ACCESS_LEVEL_CODE'
      Required = True
    end
    object cdsDocItemSysRolesRECORD_STATUS: TAbmesFloatField
      FieldName = 'RECORD_STATUS'
    end
    object cdsDocItemSysRoles_DOC_ITEM_ACCESS_LEVEL_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1080#1074#1086' '#1085#1072' '#1076#1086#1089#1090#1098#1087
      FieldKind = fkLookup
      FieldName = '_DOC_ITEM_ACCESS_LEVEL_NAME'
      LookupDataSet = cdsDocItemAccessLevels
      LookupKeyFields = 'DOC_ITEM_ACCESS_LEVEL_CODE'
      LookupResultField = 'DOC_ITEM_ACCESS_LEVEL_NAME'
      KeyFields = 'DOC_ITEM_ACCESS_LEVEL_CODE'
      Required = True
      Size = 100
      Lookup = True
    end
    object cdsDocItemSysRoles_SYS_ROLE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_SYS_ROLE_NO'
      LookupDataSet = cdsSysRoles
      LookupKeyFields = 'SYS_ROLE_CODE'
      LookupResultField = 'SYS_ROLE_NO'
      KeyFields = 'SYS_ROLE_CODE'
      Required = True
      Lookup = True
    end
    object cdsDocItemSysRoles_SYS_ROLE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1073#1086#1088' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
      FieldKind = fkLookup
      FieldName = '_SYS_ROLE_NAME'
      LookupDataSet = cdsSysRoles
      LookupKeyFields = 'SYS_ROLE_CODE'
      LookupResultField = 'SYS_ROLE_NAME'
      KeyFields = 'SYS_ROLE_CODE'
      Required = True
      Size = 150
      Lookup = True
    end
  end
  object cdsLoadDocItemSysRoles: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsLoadDocItemsqryLoadDocItemSysRoles
    Params = <>
    Left = 184
    Top = 120
    object cdsLoadDocItemSysRolesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsLoadDocItemSysRolesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsLoadDocItemSysRolesDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsLoadDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsLoadDocItemSysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
    end
    object cdsLoadDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_ACCESS_LEVEL_CODE'
    end
  end
  object cdsCopyDocItemSysRoles: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 120
    object cdsCopyDocItemSysRolesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsCopyDocItemSysRolesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsCopyDocItemSysRolesDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
    end
    object cdsCopyDocItemSysRolesDOC_ITEM_SYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_SYS_ROLE_CODE'
    end
    object cdsCopyDocItemSysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
    end
    object cdsCopyDocItemSysRolesDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_ACCESS_LEVEL_CODE'
    end
  end
  object cdsDocItemAccessLevels: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDoc
    Params = <>
    ProviderName = 'prvDocItemAccessLevels'
    Left = 384
    Top = 192
    object cdsDocItemAccessLevelsDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_ACCESS_LEVEL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDocItemAccessLevelsDOC_ITEM_ACCESS_LEVEL_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_ACCESS_LEVEL_NAME'
      Size = 100
    end
  end
  object cdsSysRoles: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
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
        Name = 'SELECT_SRT_ACTIVITY_SYS_ROLES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SELECT_SRT_FILTER_VARIANT_SYS_ROLES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SELECT_SRT_DOC_ITEM_SYS_ROLES'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'prvSysRoles'
    ReadOnly = True
    Left = 280
    Top = 192
    object cdsSysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSysRolesSYS_ROLE_NO: TAbmesFloatField
      FieldName = 'SYS_ROLE_NO'
    end
    object cdsSysRolesSYS_ROLE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_NAME'
      Size = 150
    end
  end
  object pmVerbs: TPopupMenu
    OwnerDraw = True
    Left = 680
    Top = 121
  end
  object cdsDocItemStorageTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDoc
    Params = <>
    ProviderName = 'prvDocItemStorageTypes'
    Left = 336
    Top = 8
    object cdsDocItemStorageTypesDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STORAGE_TYPE_CODE'
      Required = True
    end
    object cdsDocItemStorageTypesDOC_ITEM_STORAGE_TYPE_NO: TAbmesFloatField
      FieldName = 'DOC_ITEM_STORAGE_TYPE_NO'
      Required = True
    end
    object cdsDocItemStorageTypesDOC_ITEM_STORAGE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_STORAGE_TYPE_NAME'
      Required = True
      Size = 250
    end
    object cdsDocItemStorageTypesIS_FIXED: TAbmesFloatField
      FieldName = 'IS_FIXED'
      Required = True
    end
    object cdsDocItemStorageTypesSELECT_COMMAND: TAbmesWideStringField
      FieldName = 'SELECT_COMMAND'
      Size = 250
    end
    object cdsDocItemStorageTypesVIEW_COMMAND: TAbmesWideStringField
      FieldName = 'VIEW_COMMAND'
      Size = 250
    end
    object cdsDocItemStorageTypesEDIT_COMMAND: TAbmesWideStringField
      FieldName = 'EDIT_COMMAND'
      Size = 250
    end
    object cdsDocItemStorageTypesDI_STORAGE_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DI_STORAGE_BASE_TYPE_CODE'
      Required = True
    end
    object cdsDocItemStorageTypesCONTENT_STORAGE_ADDRESS: TAbmesWideStringField
      FieldName = 'CONTENT_STORAGE_ADDRESS'
      Size = 250
    end
    object cdsDocItemStorageTypesDI_STORAGE_BASE_TYPE_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DI_STORAGE_BASE_TYPE_IS_ACTIVE'
    end
  end
  object cdsDocItemTemplates: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDoc
    FieldDefs = <
      item
        Name = 'DOC_ITEM_TEMPLATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_TEMPLATE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_TEMPLATE_TYPE_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_PATTERN'
        DataType = ftFloat
      end
      item
        Name = 'IS_INACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_TYPE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'qryDefaultDocItemsNom'
        DataType = ftDataSet
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvDocItemTemplatesNom'
    StoreDefs = True
    Left = 544
    Top = 152
    object cdsDocItemTemplatesDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDocItemTemplatesDOC_ITEM_TEMPLATE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TEMPLATE_NAME'
      Size = 50
    end
    object cdsDocItemTemplatesDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
    end
    object cdsDocItemTemplatesDOC_ITEM_TEMPLATE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_NAME'
      Size = 100
    end
    object cdsDocItemTemplatesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDocItemTemplatesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDocItemTemplatesDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
    end
    object cdsDocItemTemplatesIS_PATTERN: TAbmesFloatField
      FieldName = 'IS_PATTERN'
    end
    object cdsDocItemTemplatesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsDocItemTemplatesDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object cdsDocItemTemplatesDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Size = 50
    end
    object cdsDocItemTemplatesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsDocItemTemplatesqryDefaultDocItemsNom: TDataSetField
      FieldName = 'qryDefaultDocItemsNom'
    end
  end
  object cdsDefaultDocItems: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsDocItemTemplatesqryDefaultDocItemsNom
    Params = <>
    Left = 544
    Top = 200
    object cdsDefaultDocItemsDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_CODE'
      Required = True
    end
    object cdsDefaultDocItemsDEFAULT_DOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_DOC_ITEM_CODE'
      Required = True
    end
    object cdsDefaultDocItemsDOC_ITEM_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_NAME'
      Required = True
      Size = 100
    end
    object cdsDefaultDocItemsDOC_ITEM_STATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STATE_CODE'
      Required = True
    end
  end
end
