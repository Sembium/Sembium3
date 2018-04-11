inherited dmNonDbUtils: TdmNonDbUtils
  OldCreateOrder = True
  Height = 277
  Width = 430
  object prvPoolManagers: TDataSetProvider
    DataSet = cdsPoolManagers
    OnGetData = prvPoolManagersGetData
    BeforeGetRecords = prvPoolManagersBeforeGetRecords
    AfterGetRecords = prvPoolManagersAfterGetRecords
    Left = 32
    Top = 8
  end
  object cdsPoolManagers: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 56
    object cdsPoolManagersOBJ_CLASS: TAbmesWideStringField
      FieldName = 'OBJ_CLASS_NAME'
      Size = 50
    end
    object cdsPoolManagersOBJ_NAME: TAbmesWideStringField
      FieldName = 'OBJ_NAME'
      Size = 50
    end
    object cdsPoolManagersMODULE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODULE_IDENTIFIER'
      Size = 100
    end
    object cdsPoolManagersINSTANCES_COUNT: TAbmesFloatField
      FieldName = 'INSTANCES_COUNT'
    end
    object cdsPoolManagersIN_USE_INSTANCES_COUNT: TAbmesFloatField
      FieldName = 'IN_USE_INSTANCES_COUNT'
    end
    object cdsPoolManagersMIN_INSTANCES: TAbmesFloatField
      FieldName = 'MIN_INSTANCES'
    end
    object cdsPoolManagersMAX_INSTANCES: TAbmesFloatField
      FieldName = 'MAX_INSTANCES'
    end
    object cdsPoolManagersTIMEOUT: TAbmesFloatField
      FieldName = 'TIMEOUT'
    end
  end
  object cdsMemoryManager: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 56
    object cdsMemoryManagerINTERNAL_BLOCK_SIZE: TAbmesFloatField
      FieldName = 'INTERNAL_BLOCK_SIZE'
    end
    object cdsMemoryManagerUSABLE_BLOCK_SIZE: TAbmesFloatField
      FieldName = 'USABLE_BLOCK_SIZE'
    end
    object cdsMemoryManagerBLOCK_COUNT: TAbmesFloatField
      FieldName = 'BLOCK_COUNT'
    end
    object cdsMemoryManagerINTERNAL_ALLOCATED_SIZE: TAbmesFloatField
      FieldName = 'INTERNAL_ALLOCATED_SIZE'
    end
    object cdsMemoryManagerUSABLE_ALLOCATED_SIZE: TAbmesFloatField
      FieldName = 'USABLE_ALLOCATED_SIZE'
    end
    object cdsMemoryManagerRESERVED_ADDRESS_SPACE: TAbmesFloatField
      FieldName = 'RESERVED_ADDRESS_SPACE'
    end
  end
  object prvMemoryManager: TDataSetProvider
    DataSet = cdsMemoryManager
    OnGetData = prvMemoryManagerGetData
    BeforeGetRecords = prvMemoryManagerBeforeGetRecords
    AfterGetRecords = prvMemoryManagerAfterGetRecords
    Left = 144
    Top = 8
  end
  object cdsActiveConnections: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 
          'DB_NAME;CLIENT_COMPUTER_NAME;CLIENT_WINDOWS_USER_NAME;CLIENT_WIN' +
          'DOWS_SESSION_ID;CLIENT_SYS_VOLUME_SERIAL_NUMBER;CONNECTION_ID'
      end>
    IndexName = 'idxDefault'
    Params = <>
    StoreDefs = True
    Left = 264
    Top = 56
    object cdsActiveConnectionsCONNECTION_ID: TAbmesFloatField
      FieldName = 'CONNECTION_ID'
    end
    object cdsActiveConnectionsCONNECTION_TYPE: TAbmesWideStringField
      FieldName = 'CONNECTION_TYPE'
      Size = 50
    end
    object cdsActiveConnectionsCLIENT_COMPUTER_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPUTER_NAME'
      Size = 250
    end
    object cdsActiveConnectionsCLIENT_WINDOWS_USER_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_WINDOWS_USER_NAME'
      Size = 250
    end
    object cdsActiveConnectionsCLIENT_WINDOWS_SESSION_ID: TAbmesFloatField
      FieldName = 'CLIENT_WINDOWS_SESSION_ID'
    end
    object cdsActiveConnectionsCLIENT_WINDOWS_VERSION: TAbmesWideStringField
      FieldName = 'CLIENT_WINDOWS_VERSION'
      Size = 100
    end
    object cdsActiveConnectionsLOGIN_NAME: TAbmesWideStringField
      FieldName = 'LOGIN_NAME'
    end
    object cdsActiveConnectionsEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object cdsActiveConnectionsUSER_FULL_NAME: TAbmesWideStringField
      FieldName = 'USER_FULL_NAME'
      Size = 44
    end
    object cdsActiveConnectionsLAST_LOGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'LAST_LOGIN_DATE'
    end
    object cdsActiveConnectionsLAST_LOGIN_TIME: TAbmesSQLTimeStampField
      FieldName = 'LAST_LOGIN_TIME'
    end
    object cdsActiveConnectionsLAST_TIME_CHECK_DATE: TAbmesSQLTimeStampField
      FieldName = 'LAST_TIME_CHECK_DATE'
    end
    object cdsActiveConnectionsLAST_TIME_CHECK_TIME: TAbmesSQLTimeStampField
      FieldName = 'LAST_TIME_CHECK_TIME'
    end
    object cdsActiveConnectionsCLOSE_CONNECTION_REQUESTED: TAbmesFloatField
      FieldName = 'CLOSE_CONNECTION_REQUESTED'
    end
    object cdsActiveConnectionsDB_NAME: TAbmesWideStringField
      FieldName = 'DB_NAME'
      Size = 50
    end
    object cdsActiveConnectionsIS_IN_USE: TAbmesFloatField
      FieldName = 'IS_IN_USE'
    end
    object cdsActiveConnectionsLICENSE_POOL_TYPE: TAbmesFloatField
      FieldName = 'LICENSE_POOL_TYPE'
    end
    object cdsActiveConnectionsCLIENT_SYS_VOLUME_SERIAL_NUMBER: TAbmesWideStringField
      FieldName = 'CLIENT_SYS_VOLUME_SERIAL_NUMBER'
      Size = 8
    end
    object cdsActiveConnectionsCLIENT_HARDWARE_INFO: TWideStringField
      FieldName = 'CLIENT_HARDWARE_INFO'
      Size = 250
    end
    object cdsActiveConnectionsLAST_ACTIVITY_DATE: TAbmesSQLTimeStampField
      FieldName = 'LAST_ACTIVITY_DATE'
    end
    object cdsActiveConnectionsLAST_ACTIVITY_TIME: TAbmesSQLTimeStampField
      FieldName = 'LAST_ACTIVITY_TIME'
    end
    object cdsActiveConnectionsCURRENT_ACTIVITY_SECONDS: TAbmesFloatField
      FieldName = 'CURRENT_ACTIVITY_SECONDS'
    end
    object cdsActiveConnectionsIP_ADDRESS: TAbmesWideStringField
      FieldName = 'IP_ADDRESS'
      Size = 50
    end
    object cdsActiveConnectionsSESSION_COUNT: TAbmesFloatField
      FieldName = 'SESSION_COUNT'
    end
    object cdsActiveConnectionsPREV_PING_MILLISECONDS: TAbmesFloatField
      FieldName = 'PREV_PING_MILLISECONDS'
    end
  end
  object prvActiveConnections: TDataSetProvider
    DataSet = cdsActiveConnections
    OnGetData = prvActiveConnectionsGetData
    BeforeGetRecords = prvActiveConnectionsBeforeGetRecords
    AfterGetRecords = prvActiveConnectionsAfterGetRecords
    Left = 264
    Top = 8
  end
  object cdsTimeZones: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 368
    Top = 56
    object cdsTimeZonesTIME_ZONE_ID: TAbmesWideStringField
      FieldName = 'TIME_ZONE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 250
    end
    object cdsTimeZonesTIME_ZONE_NAME: TAbmesWideStringField
      FieldName = 'TIME_ZONE_NAME'
      Size = 250
    end
    object cdsTimeZonesBIAS: TAbmesFloatField
      FieldName = 'BIAS'
    end
    object cdsTimeZonesTIME_ZONE_OFFSET: TAbmesFloatField
      FieldName = 'TIME_ZONE_OFFSET'
    end
  end
  object prvTimeZones: TDataSetProvider
    DataSet = cdsTimeZones
    OnGetData = prvTimeZonesGetData
    BeforeGetRecords = prvTimeZonesBeforeGetRecords
    AfterGetRecords = prvTimeZonesAfterGetRecords
    Left = 368
    Top = 8
  end
end
