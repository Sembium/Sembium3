inherited dmSalesCommon: TdmSalesCommon
  Height = 250
  Width = 428
  object prvSaleTypes: TDataSetProvider
    DataSet = qrySaleTypes
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvSaleTypesBeforeUpdateRecord
    Left = 40
    Top = 16
  end
  object qrySaleTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  st.SALE_TYPE_CODE,'
      '  st.SALE_TYPE_ABBREV,'
      '  st.SALE_TYPE_NAME,'
      '  st.EXPORT_NO,'
      '  st.EXPORT_NO_2'
      'from'
      '  SALE_TYPES st'
      'order by'
      '  st.SALE_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 40
    Top = 64
    object qrySaleTypesSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 3
    end
    object qrySaleTypesSALE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_TYPE_NAME'
      Size = 50
    end
    object qrySaleTypesEXPORT_NO: TAbmesFloatField
      FieldName = 'EXPORT_NO'
    end
    object qrySaleTypesEXPORT_NO_2: TAbmesFloatField
      FieldName = 'EXPORT_NO_2'
    end
  end
  object prvShipmentTypes: TDataSetProvider
    DataSet = qryShipmentTypes
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 16
  end
  object qryShipmentTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  st.SHIPMENT_TYPE_CODE,'
      '  st.SHIPMENT_TYPE_ABBREV,'
      '  st.SHIPMENT_TYPE_NAME,'
      '  st.NOTES'
      'from'
      '  SHIPMENT_TYPES st'
      'order by'
      '  st.SHIPMENT_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 136
    Top = 64
    object qryShipmentTypesSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryShipmentTypesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_ABBREV'
      Size = 5
    end
    object qryShipmentTypesSHIPMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_NAME'
      Size = 50
    end
    object qryShipmentTypesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object prvSaleOrderTypes: TDataSetProvider
    DataSet = qrySaleOrderTypes
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 144
  end
  object qrySaleOrderTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  sot.SALE_ORDER_TYPE_CODE,'
      '  sot.SALE_ORDER_TYPE_ABBREV,'
      '  sot.SALE_ORDER_TYPE_NAME'
      'from'
      '  SALE_ORDER_TYPES sot'
      'order by'
      '  sot.SALE_ORDER_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 40
    Top = 192
    object qrySaleOrderTypesSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySaleOrderTypesSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object qrySaleOrderTypesSALE_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_ORDER_TYPE_NAME'
      Size = 100
    end
  end
  object qryMaxSaleTypeCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  Max(st.SALE_TYPE_CODE) as MAX_SALE_TYPE_CODE'
      'from'
      '  SALE_TYPES st')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 344
    Top = 88
    object qryMaxSaleTypeCodeMAX_SALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'MAX_SALE_TYPE_CODE'
    end
  end
  object qryProductionOrderTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  pot.PRODUCTION_ORDER_TYPE_CODE,'
      '  pot.PRODUCTION_ORDER_TYPE_ABBREV,'
      '  pot.PRODUCTION_ORDER_TYPE_NAME,'
      
        '  (pot.PRODUCTION_ORDER_TYPE_ABBREV || '#39' - '#39' || pot.PRODUCTION_O' +
        'RDER_TYPE_NAME) as PRODUCTION_ORDER_TYPE_TEXT,'
      '  pot.PROD_ORDER_BASE_TYPE_CODE,'
      '  pobt.PROD_ORDER_BASE_TYPE_NO,'
      '  pot.PROD_ORDER_BASE_ROLE_CODE,'
      '  pobr.PROD_ORDER_BASE_ROLE_NO,'
      '  pobr.IS_REVERSIBLE'
      'from'
      '  PRODUCTION_ORDER_TYPES pot,'
      '  PROD_ORDER_BASE_TYPES pobt,'
      '  PROD_ORDER_BASE_ROLES pobr'
      'where'
      
        '  (pot.PROD_ORDER_BASE_TYPE_CODE = pobt.PROD_ORDER_BASE_TYPE_COD' +
        'E) and'
      
        '  (pot.PROD_ORDER_BASE_ROLE_CODE = pobr.PROD_ORDER_BASE_ROLE_COD' +
        'E)'
      'order by'
      '  pobt.PROD_ORDER_BASE_TYPE_NO,'
      '  pobr.PROD_ORDER_BASE_ROLE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 248
    Top = 64
    object qryProductionOrderTypesPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProductionOrderTypesPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object qryProductionOrderTypesPRODUCTION_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_NAME'
      Size = 100
    end
    object qryProductionOrderTypesPRODUCTION_ORDER_TYPE_TEXT: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_TEXT'
      Size = 200
    end
    object qryProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object qryProductionOrderTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_NO'
    end
    object qryProductionOrderTypesPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_ROLE_CODE'
    end
    object qryProductionOrderTypesPROD_ORDER_BASE_ROLE_NO: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_ROLE_NO'
    end
    object qryProductionOrderTypesIS_REVERSIBLE: TAbmesFloatField
      FieldName = 'IS_REVERSIBLE'
    end
  end
  object prvProductionOrderTypes: TDataSetProvider
    DataSet = qryProductionOrderTypes
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 16
  end
  object prvSaleDealTypes: TDataSetProvider
    DataSet = qrySaleDealTypes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 136
    Top = 144
  end
  object qrySaleDealTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  slt.SALE_DEAL_TYPE_CODE,'
      '  bdt.BORDER_DEAL_TYPE_NAME as SALE_DEAL_TYPE_NAME,'
      '  bdt.BORDER_DEAL_TYPE_ABBREV as SALE_DEAL_TYPE_ABBREV,'
      '  bdt.OBTAINMENT_TYPE_CODE'
      ''
      'from'
      '  SALE_DEAL_TYPES slt,'
      '  BORDER_DEAL_TYPES bdt'
      '  '
      'where'
      '  (slt.SALE_DEAL_TYPE_CODE = bdt.BORDER_DEAL_TYPE_CODE)'
      ''
      'order by'
      '  slt.SALE_DEAL_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 136
    Top = 192
    object qrySaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object qrySaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_NAME'
      Size = 100
    end
    object qrySaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object qrySaleDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
      Required = True
    end
  end
end
