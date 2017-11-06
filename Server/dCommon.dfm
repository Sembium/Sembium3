inherited dmCommon: TdmCommon
  Height = 828
  Width = 925
  object prvCountries: TDataSetProvider
    DataSet = qryCountries
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 8
  end
  object qryCountries: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  c.COUNTRY_CODE,'
      '  c.COUNTRY_ABBREV,'
      '  c.I_COUNTRY_ABBREV,'
      '  c.COUNTRY_NAME,'
      '  c.I_COUNTRY_NAME'
      ''
      'from'
      '  COUNTRIES c'
      ''
      'order by'
      '  COUNTRY_NAME')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 24
    Top = 56
    object qryCountriesCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCountriesCOUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'COUNTRY_ABBREV'
      Required = True
      Size = 5
    end
    object qryCountriesCOUNTRY_NAME: TAbmesWideStringField
      FieldName = 'COUNTRY_NAME'
      Required = True
      Size = 50
    end
    object qryCountriesI_COUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'I_COUNTRY_ABBREV'
      Required = True
      Size = 5
    end
    object qryCountriesI_COUNTRY_NAME: TAbmesWideStringField
      FieldName = 'I_COUNTRY_NAME'
      Required = True
      Size = 50
    end
  end
  object prvCurrencies: TDataSetProvider
    DataSet = qryCurrencies
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 8
  end
  object qryCurrencies: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  c.*,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME'
      ''
      'from'
      '  CURRENCIES c,'
      '  PRODUCTS p'
      ''
      'where'
      '  (c.PRODUCT_CODE = p.PRODUCT_CODE(+))'
      ''
      'order by'
      '  ORDER_NO,'
      '  CURRENCY_ABBREV'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 96
    Top = 56
    object qryCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Required = True
      Size = 5
    end
    object qryCurrenciesCURRENCY_NAME: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME'
      Required = True
      Size = 50
    end
    object qryCurrenciesSCALE: TAbmesFloatField
      FieldName = 'SCALE'
      Required = True
    end
    object qryCurrenciesROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
      Required = True
    end
    object qryCurrenciesORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
      Required = True
    end
    object qryCurrenciesCURRENCY_NAME_SINGULAR: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME_SINGULAR'
    end
    object qryCurrenciesCURRENCY_NAME_PLURAL: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME_PLURAL'
    end
    object qryCurrenciesCURRENCY_NAME_GENDER_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_NAME_GENDER_CODE'
    end
    object qryCurrenciesCURRENCY_CENT_NAME_SINGULAR: TAbmesWideStringField
      FieldName = 'CURRENCY_CENT_NAME_SINGULAR'
    end
    object qryCurrenciesCURRENCY_CENT_NAME_PLURAL: TAbmesWideStringField
      FieldName = 'CURRENCY_CENT_NAME_PLURAL'
    end
    object qryCurrenciesCURRENCY_CENT_NAME_GENDER_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CENT_NAME_GENDER_CODE'
    end
    object qryCurrenciesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryCurrenciesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryCurrenciesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryCurrenciesCURRENCY_I_NAME_SINGULAR: TAbmesWideStringField
      FieldName = 'CURRENCY_I_NAME_SINGULAR'
      Required = True
    end
    object qryCurrenciesCURRENCY_I_NAME_PLURAL: TAbmesWideStringField
      FieldName = 'CURRENCY_I_NAME_PLURAL'
      Required = True
    end
    object qryCurrenciesCURRENCY_CENT_I_NAME_SINGULAR: TAbmesWideStringField
      FieldName = 'CURRENCY_CENT_I_NAME_SINGULAR'
      Required = True
    end
    object qryCurrenciesCURRENCY_CENT_I_NAME_PLURAL: TAbmesWideStringField
      FieldName = 'CURRENCY_CENT_I_NAME_PLURAL'
      Required = True
    end
  end
  object prvCustomhouses: TDataSetProvider
    DataSet = qryCustomhouses
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 8
  end
  object qryCustomhouses: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  ch.CUSTOMHOUSE_CODE,'
      '  ch.CUSTOMHOUSE_NAME'
      'from'
      '  CUSTOMHOUSES ch'
      'order by'
      '  ch.CUSTOMHOUSE_NAME')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 184
    Top = 56
    object qryCustomhousesCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCustomhousesCUSTOMHOUSE_NAME: TAbmesWideStringField
      FieldName = 'CUSTOMHOUSE_NAME'
      Required = True
      Size = 50
    end
  end
  object prvMeasures: TDataSetProvider
    DataSet = qryMeasures
    Options = [poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvMeasuresBeforeUpdateRecord
    Left = 840
    Top = 160
  end
  object qryMeasures: TAbmesSQLQuery
    BeforeOpen = qryMeasuresBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  MEASURE_CODE,'
      '  MEASURE_ABBREV,'
      '  I_MEASURE_ABBREV,'
      '  MEASURE_NAME,'
      '  I_MEASURE_NAME,'
      '  ROUNDER,'
      '  EXPORT_NO,'
      '  PRODUCT_CLASS_CODE'
      ''
      'from'
      '  MEASURES'
      ''
      'where'
      '  (PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE)'
      ''
      'order by'
      '  MEASURE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 840
    Top = 208
    object qryMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Required = True
      Size = 5
    end
    object qryMeasuresMEASURE_NAME: TAbmesWideStringField
      FieldName = 'MEASURE_NAME'
      Required = True
      Size = 50
    end
    object qryMeasuresROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
    end
    object qryMeasuresEXPORT_NO: TAbmesFloatField
      FieldName = 'EXPORT_NO'
      ProviderFlags = [pfInUpdate]
    end
    object qryMeasuresPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object qryMeasuresI_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'I_MEASURE_ABBREV'
      Required = True
      Size = 5
    end
    object qryMeasuresI_MEASURE_NAME: TAbmesWideStringField
      FieldName = 'I_MEASURE_NAME'
      Required = True
      Size = 50
    end
  end
  object prvNoms: TDataSetProvider
    DataSet = qryNoms
    UpdateMode = upWhereKeyOnly
    Left = 16
    Top = 120
  end
  object qryNoms: TAbmesSQLQuery
    BeforeOpen = qryNomsBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  n.NOM_CODE,'
      '  n.NOM_NAME,'
      '  n.NOM_NO,'
      '  n.DOC_BRANCH_CODE,'
      '  n.DOC_CODE,'
      '  %HAS_DOC_ITEMS[n] as HAS_DOC_ITEMS'
      ''
      'from'
      '  NOMS n'
      ''
      'where'
      '  (n.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE)'
      ''
      'order by'
      '  n.NOM_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[n]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'NOMS_FOR_EDIT'
    Left = 16
    Top = 168
    object qryNomsNOM_CODE: TAbmesFloatField
      FieldName = 'NOM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryNomsNOM_NAME: TAbmesWideStringField
      FieldName = 'NOM_NAME'
      Required = True
      Size = 50
    end
    object qryNomsNOM_NO: TAbmesFloatField
      FieldName = 'NOM_NO'
    end
    object qryNomsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryNomsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryNomsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
  end
  object prvNomItems: TDataSetProvider
    DataSet = qryNomItems
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 120
  end
  object qryNomItems: TAbmesSQLQuery
    BeforeOpen = qryNomItemsBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ni.NOM_CODE,'
      '  ni.NOM_ITEM_CODE,'
      '  ni.NOM_ITEM_NAME,'
      '  ni.NOM_ITEM_DESCRIPTION,'
      '  ni.DOC_BRANCH_CODE,'
      '  ni.DOC_CODE,'
      '  %HAS_DOC_ITEMS[ni] as HAS_DOC_ITEMS,'
      '  ni.IS_NOT_PART_OF_NAME'
      ''
      'from'
      '  NOM_ITEMS ni'
      ''
      'where'
      '  (ni.NOM_CODE = :NOM_CODE) and'
      '  (ni.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE)'
      ''
      'order by'
      '  ni.NOM_ITEM_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[ni]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 72
    Top = 168
    object qryNomItemsNOM_CODE: TAbmesFloatField
      FieldName = 'NOM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryNomItemsNOM_ITEM_CODE: TAbmesFloatField
      FieldName = 'NOM_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryNomItemsNOM_ITEM_NAME: TAbmesWideStringField
      FieldName = 'NOM_ITEM_NAME'
      Required = True
      Size = 50
    end
    object qryNomItemsNOM_ITEM_DESCRIPTION: TAbmesWideStringField
      FieldName = 'NOM_ITEM_DESCRIPTION'
      Size = 100
    end
    object qryNomItemsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryNomItemsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryNomItemsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object qryNomItemsIS_NOT_PART_OF_NAME: TAbmesFloatField
      FieldName = 'IS_NOT_PART_OF_NAME'
      Required = True
    end
  end
  object prvPaymentTypes: TDataSetProvider
    DataSet = qryPaymentTypes
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 288
    Top = 232
  end
  object qryPaymentTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  pt.PAYMENT_TYPE_CODE,'
      '  pt.PAYMENT_TYPE_ABBREV,'
      '  pt.PAYMENT_TYPE_NAME'
      'from'
      '  PAYMENT_TYPES pt'
      'order by'
      '  pt.PAYMENT_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 288
    Top = 280
    object qryPaymentTypesPAYMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'PAYMENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPaymentTypesPAYMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PAYMENT_TYPE_NAME'
      Size = 100
    end
  end
  object qrySecondaryCurrencyRates: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'RATE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  *'
      ''
      'from'
      '  SECONDARY_CURRENCY_RATES'
      ''
      'where'
      '  (RATE_DATE = :RATE_DATE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 248
    Top = 384
    object qrySecondaryCurrencyRatesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySecondaryCurrencyRatesRATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RATE_DATE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySecondaryCurrencyRatesFIXING: TAbmesFloatField
      FieldName = 'FIXING'
    end
  end
  object qryCurrencyRates: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'RATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RATE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  c.CURRENCY_CODE,'
      '  Cast(:RATE_DATE as Date) as RATE_DATE,'
      '  c.CURRENCY_ABBREV,'
      '  c.CURRENCY_NAME,'
      '  c.SCALE,'
      ''
      '  cr.FIXING'
      ''
      'from'
      '  CURRENCIES c,'
      '  CURRENCY_RATES cr'
      ''
      'where'
      '  (c.CURRENCY_CODE = cr.CURRENCY_CODE(+)) and'
      '  (:RATE_DATE = cr.RATE_DATE(+))'
      ''
      'order by'
      '  c.ORDER_NO'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'CURRENCY_RATES_FOR_EDIT'
    Left = 368
    Top = 384
    object qryCurrencyRatesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCurrencyRatesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryCurrencyRatesCURRENCY_NAME: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryCurrencyRatesSCALE: TAbmesFloatField
      FieldName = 'SCALE'
      ProviderFlags = []
    end
    object qryCurrencyRatesFIXING: TAbmesFloatField
      FieldName = 'FIXING'
    end
    object qryCurrencyRatesRATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RATE_DATE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object prvCurrencyRates: TDataSetProvider
    DataSet = qryCurrencyRates
    Options = [poDisableInserts, poDisableDeletes]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvCurrencyRatesBeforeUpdateRecord
    Left = 368
    Top = 336
  end
  object qryInsertCurrencyRate: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIXING'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into CURRENCY_RATES_FOR_EDIT'
      '(CURRENCY_CODE, RATE_DATE, FIXING)'
      'values'
      '(:CURRENCY_CODE, :RATE_DATE, :FIXING)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 472
    Top = 336
  end
  object qryDeleteCurrencyRate: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RATE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  CURRENCY_RATES_FOR_EDIT'
      '  '
      'where'
      ' (CURRENCY_CODE = :CURRENCY_CODE) and'
      ' (RATE_DATE = :RATE_DATE)'
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 472
    Top = 384
  end
  object prvShipmentTypes: TDataSetProvider
    DataSet = qryShipmentTypes
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 8
  end
  object qryShipmentTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      ''
      'from'
      '  SHIPMENT_TYPES')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 280
    Top = 56
    object qryShipmentTypesSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryShipmentTypesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_ABBREV'
      Required = True
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
  object qryLanguages: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  LANGUAGE_CODE,'
      '  LANGUAGE_NAME'
      ''
      'from'
      '  LANGUAGES'
      ''
      'order by'
      '  LANGUAGE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 56
    object qryLanguagesLANGUAGE_CODE: TAbmesFloatField
      FieldName = 'LANGUAGE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLanguagesLANGUAGE_NAME: TAbmesWideStringField
      FieldName = 'LANGUAGE_NAME'
      Required = True
      Size = 50
    end
  end
  object prvLanguages: TDataSetProvider
    DataSet = qryLanguages
    UpdateMode = upWhereKeyOnly
    Left = 368
    Top = 8
  end
  object dsNomsEdit: TDataSource
    DataSet = qryNomsEdit
    Left = 232
    Top = 120
  end
  object prvNomsEdit: TDataSetProvider
    DataSet = qryNomsEdit
    Options = [poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = prvNomsEditAfterUpdateRecord
    BeforeUpdateRecord = prvNomsEditBeforeUpdateRecord
    BeforeApplyUpdates = prvNomsEditBeforeApplyUpdates
    AfterApplyUpdates = prvNomsEditAfterApplyUpdates
    Left = 152
    Top = 120
  end
  object qryNomsEdit: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  n.NOM_CODE,'
      '  n.NOM_NAME,'
      '  n.NOM_NO,'
      '  n.PRODUCT_CLASS_CODE,'
      '  n.DOC_BRANCH_CODE,'
      '  n.DOC_CODE,'
      '  %HAS_DOC_ITEMS[n] as HAS_DOC_ITEMS'
      ''
      'from'
      '  NOMS n'
      ''
      'where'
      '  (n.NOM_CODE = :NOM_CODE)'
      ''
      'order by'
      '  n.NOM_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[n]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'NOMS_FOR_EDIT'
    AfterProviderStartTransaction = qryNomsEditAfterProviderStartTransaction
    Left = 152
    Top = 168
    object qryNomsEditNOM_CODE: TAbmesFloatField
      FieldName = 'NOM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryNomsEditNOM_NAME: TAbmesWideStringField
      FieldName = 'NOM_NAME'
      Required = True
      Size = 50
    end
    object qryNomsEditNOM_NO: TAbmesFloatField
      FieldName = 'NOM_NO'
    end
    object qryNomsEditPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object qryNomsEditDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryNomsEditDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryNomsEditHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
  end
  object qryNomItemsEdit: TAbmesSQLQuery
    DataSource = dsNomsEdit
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  ni.NOM_CODE,'
      '  ni.NOM_ITEM_CODE,'
      '  ni.NOM_ITEM_NAME,'
      '  ni.NOM_ITEM_DESCRIPTION,'
      '  ni.CREATE_EMPLOYEE_CODE,'
      '  ni.CREATE_DATE,'
      '  ni.CREATE_TIME,'
      '  ni.CHANGE_EMPLOYEE_CODE,'
      '  ( select'
      '      '#39'     '#39' || e.ABBREV || '#39'          '#39' ||'
      '      e.FIRST_NAME ||'
      '      Nvl2(e.MIDDLE_NAME,'
      '        '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '        '#39' '#39') ||'
      '      e.LAST_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = ni.CHANGE_EMPLOYEE_CODE)'
      '  ) as CHANGE_EMPLOYEE_ABBREV_NAME,'
      '  ni.CHANGE_DATE,'
      '  ni.CHANGE_TIME,'
      '  ni.PRODUCT_CLASS_CODE,'
      '  ni.NOM_ITEM_NO,'
      '  ni.DOC_BRANCH_CODE,'
      '  ni.DOC_CODE,'
      '  %HAS_DOC_ITEMS[ni] as HAS_DOC_ITEMS,'
      '  ni.IS_NOT_PART_OF_NAME'
      ''
      'from'
      '  NOM_ITEMS ni'
      ''
      'where'
      '  (ni.NOM_CODE = :NOM_CODE)'
      ''
      'order by'
      '  ni.NOM_ITEM_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[ni]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'NOM_ITEMS_FOR_EDIT'
    Left = 232
    Top = 168
    object qryNomItemsEditNOM_CODE: TAbmesFloatField
      FieldName = 'NOM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryNomItemsEditNOM_ITEM_CODE: TAbmesFloatField
      FieldName = 'NOM_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryNomItemsEditNOM_ITEM_NAME: TAbmesWideStringField
      FieldName = 'NOM_ITEM_NAME'
      Required = True
      Size = 50
    end
    object qryNomItemsEditNOM_ITEM_DESCRIPTION: TAbmesWideStringField
      FieldName = 'NOM_ITEM_DESCRIPTION'
      Size = 100
    end
    object qryNomItemsEditCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryNomItemsEditCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryNomItemsEditCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryNomItemsEditCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryNomItemsEditCHANGE_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField
      FieldName = 'CHANGE_EMPLOYEE_ABBREV_NAME'
      ProviderFlags = []
      Size = 64
    end
    object qryNomItemsEditCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryNomItemsEditCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryNomItemsEditPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object qryNomItemsEditNOM_ITEM_NO: TAbmesFloatField
      FieldName = 'NOM_ITEM_NO'
      Required = True
    end
    object qryNomItemsEditDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryNomItemsEditDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryNomItemsEditHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryNomItemsEditIS_NOT_PART_OF_NAME: TAbmesFloatField
      FieldName = 'IS_NOT_PART_OF_NAME'
      Required = True
    end
  end
  object qryContactTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  cp.CONTACT_TYPE_CODE,'
      '  cp.CONTACT_TYPE_NAME'
      'from'
      '  CONTACT_TYPES cp'
      'order by'
      '  cp.CONTACT_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 448
    Top = 56
    object qryContactTypesCONTACT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CONTACT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContactTypesCONTACT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'CONTACT_TYPE_NAME'
      Required = True
    end
  end
  object prvContactTypes: TDataSetProvider
    DataSet = qryContactTypes
    UpdateMode = upWhereKeyOnly
    Left = 448
    Top = 8
  end
  object prvPriorities: TDataSetProvider
    DataSet = qryPriorities
    Options = [poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvPrioritiesBeforeUpdateRecord
    Left = 544
    Top = 232
  end
  object qryPriorities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      ''
      'from'
      '  PRIORITIES'
      ''
      'order by'
      '  PRIORITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 544
    Top = 280
    object qryPrioritiesPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPrioritiesPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryPrioritiesPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Size = 50
    end
    object qryPrioritiesPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
  end
  object qryCurrenciesWithRates: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  c.CURRENCY_CODE,'
      '  c.CURRENCY_ABBREV,'
      '  c.CURRENCY_NAME,'
      '  c.SCALE,'
      '  c.ROUNDER,'
      '  c.ORDER_NO,'
      '  tcr.FIXING as TODAY_FIXING,'
      '  tscr.FIXING as TODAY_SECONDARY_FIXING'
      ''
      'from'
      '  CURRENCIES c,'
      '  TODAY_CURRENCY_RATES tcr,'
      '  TODAY_SECONDARY_CURRENCY_RATES tscr'
      ''
      'where'
      '  (c.CURRENCY_CODE = tcr.CURRENCY_CODE(+)) and'
      '  (c.CURRENCY_CODE = tscr.CURRENCY_CODE(+))'
      ''
      'order by'
      '  c.ORDER_NO,'
      '  c.CURRENCY_ABBREV'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'CURRENCIES'
    Left = 168
    Top = 504
    object qryCurrenciesWithRatesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCurrenciesWithRatesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object qryCurrenciesWithRatesCURRENCY_NAME: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 50
    end
    object qryCurrenciesWithRatesSCALE: TAbmesFloatField
      FieldName = 'SCALE'
    end
    object qryCurrenciesWithRatesROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
    end
    object qryCurrenciesWithRatesORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
    end
    object qryCurrenciesWithRatesTODAY_FIXING: TAbmesFloatField
      FieldName = 'TODAY_FIXING'
      ProviderFlags = []
    end
    object qryCurrenciesWithRatesTODAY_SECONDARY_FIXING: TAbmesFloatField
      FieldName = 'TODAY_SECONDARY_FIXING'
      ProviderFlags = []
    end
  end
  object prvCurrenciesWithRates: TDataSetProvider
    DataSet = qryCurrenciesWithRates
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 456
  end
  object qryUpdateNomItemNames: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NOM_ITEM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  ProductUtils.UpdateNomItemNames(:NOM_CODE, :NOM_ITEM_CODE);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 376
    Top = 106
  end
  object prvSecondaryCurrencyRates: TDataSetProvider
    DataSet = qrySecondaryCurrencyRates
    Left = 248
    Top = 336
  end
  object prvTodaySecondaryCurrencyRates: TDataSetProvider
    DataSet = qryTodaySecondaryCurrencyRates
    Options = [poReadOnly]
    Left = 504
    Top = 440
  end
  object qryTodaySecondaryCurrencyRates: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      '  '
      'from'
      '  TODAY_SECONDARY_CURRENCY_RATES'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 504
    Top = 488
    object qryTodaySecondaryCurrencyRatesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryTodaySecondaryCurrencyRatesFIXING: TAbmesFloatField
      FieldName = 'FIXING'
    end
  end
  object qryNewProcessObjectCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_PROCESS_OBJECTS.NextVal as NEW_PROCESS_OBJECT_CODE'
      ''
      'from'
      '  DUAL'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 72
    object qryNewProcessObjectCodeNEW_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'NEW_PROCESS_OBJECT_CODE'
    end
  end
  object qryInsertProcessObject: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_OBJECT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'PROCESS_OBJECT_IDENTIFIER'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into PROCESS_OBJECTS'
      ' (PROCESS_OBJECT_BRANCH_CODE,'
      '  PROCESS_OBJECT_CODE,'
      '  PROCESS_OBJECT_CLASS_CODE,'
      '  PROCESS_OBJECT_IDENTIFIER)'
      ''
      'values'
      ' (:PROCESS_OBJECT_BRANCH_CODE,'
      '  :PROCESS_OBJECT_CODE,'
      '  :PROCESS_OBJECT_CLASS_CODE,'
      '  :PROCESS_OBJECT_IDENTIFIER)'
      ' '
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 120
  end
  object qryUpdateProcessObjectIdentifier: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'PROCESS_OBJECT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  PROCESS_OBJECTS'
      ''
      'set'
      '  PROCESS_OBJECT_IDENTIFIER = :PROCESS_OBJECT_IDENTIFIER'
      ''
      'where'
      '  (PROCESS_OBJECT_BRANCH_CODE = :PROCESS_OBJECT_BRANCH_CODE) and'
      '  (PROCESS_OBJECT_CODE = :PROCESS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 168
  end
  object qryRounders: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      ''
      'from'
      '  ROUNDERS')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 624
    Top = 304
    object qryRoundersROUNDER_CODE: TAbmesFloatField
      FieldName = 'ROUNDER_CODE'
    end
    object qryRoundersROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
    end
    object qryRoundersROUNDER_NAME: TAbmesWideStringField
      FieldName = 'ROUNDER_NAME'
      Size = 100
    end
    object qryRoundersROUNDER_ABBREV: TAbmesWideStringField
      FieldName = 'ROUNDER_ABBREV'
      Size = 100
    end
    object qryRoundersMIN_LIMIT: TAbmesFloatField
      FieldName = 'MIN_LIMIT'
    end
    object qryRoundersMAX_LIMIT: TAbmesFloatField
      FieldName = 'MAX_LIMIT'
    end
  end
  object prvRounders: TDataSetProvider
    DataSet = qryRounders
    UpdateMode = upWhereKeyOnly
    Left = 624
    Top = 264
  end
  object qryDaysOff: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'THE_YEAR_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_MONTH_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  THE_DATE,'
      '  WORKDAYS,'
      '  DAYS_OFF,'
      '  OFFICIAL_WORKDAYS,'
      '  OFFICIAL_DAYS_OFF'
      'from'
      '  THE_DATES'
      'where'
      '  (:THE_YEAR_DATE = THE_YEAR_DATE) and'
      '  (:THE_MONTH_DATE = THE_MONTH_DATE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'THE_DATES_FOR_EDIT'
    Left = 152
    Top = 400
    object qryDaysOffTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
      ProviderFlags = [pfInKey]
    end
    object qryDaysOffWORKDAYS: TAbmesFloatField
      FieldName = 'WORKDAYS'
    end
    object qryDaysOffDAYS_OFF: TAbmesFloatField
      FieldName = 'DAYS_OFF'
    end
    object qryDaysOffOFFICIAL_WORKDAYS: TAbmesFloatField
      FieldName = 'OFFICIAL_WORKDAYS'
    end
    object qryDaysOffOFFICIAL_DAYS_OFF: TAbmesFloatField
      FieldName = 'OFFICIAL_DAYS_OFF'
    end
  end
  object prvDaysOff: TDataSetProvider
    DataSet = qryDaysOff
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvDaysOffBeforeUpdateRecord
    Left = 152
    Top = 360
  end
  object qrySecondaryCurrencyRate: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'RATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  scr.FIXING'
      'from'
      '  SECONDARY_CURRENCY_RATES scr'
      'where'
      '  (scr.RATE_DATE = :RATE_DATE) and'
      '  (scr.CURRENCY_CODE = :CURRENCY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 608
    Top = 504
    object qrySecondaryCurrencyRateFIXING: TAbmesFloatField
      FieldName = 'FIXING'
    end
  end
  object qryDateUnits: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  THE_DATE_UNIT_CODE,'
      '  THE_DATE_UNIT_NAME'
      'from'
      '  THE_DATE_UNITS')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 568
    Top = 408
    object qryDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object qryDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
  object prvDateUnits: TDataSetProvider
    DataSet = qryDateUnits
    Left = 568
    Top = 360
  end
  object qryDeleteProcessObject: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  PROCESS_OBJECTS'
      'where'
      '  (PROCESS_OBJECT_BRANCH_CODE = :PROCESS_OBJECT_BRANCH_CODE) and'
      '  (PROCESS_OBJECT_CODE = :PROCESS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 16
  end
  object qryAreAllTodayCurrencyRatesEntered: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  (1 - Sign(Count(*))) as ALL_ENTERED'
      'from'
      '  CURRENCIES c'
      'where'
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        TODAY_CURRENCY_RATES tcr'
      '      where'
      '        (c.CURRENCY_CODE = tcr.CURRENCY_CODE)'
      '    )'
      '  )'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 616
    Top = 216
    object qryAreAllTodayCurrencyRatesEnteredALL_ENTERED: TAbmesFloatField
      FieldName = 'ALL_ENTERED'
      FieldValueType = fvtBoolean
    end
  end
  object qryUpdateDaysOff: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DAYS_OFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAYS_OFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OFFICIAL_DAYS_OFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OFFICIAL_DAYS_OFF'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update THE_DATES_FOR_EDIT'
      'set'
      '  DAYS_OFF = :DAYS_OFF,'
      '  WORKDAYS = 1 - :DAYS_OFF,'
      '  OFFICIAL_DAYS_OFF = :OFFICIAL_DAYS_OFF,'
      '  OFFICIAL_WORKDAYS = 1 - :OFFICIAL_DAYS_OFF'
      'where'
      '  THE_DATE = :THE_DATE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 152
    Top = 328
  end
  object qryDeptTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  dt.DEPT_TYPE_CODE,'
      '  dt.DEPT_TYPE_ABBREV,'
      '  dt.DEPT_TYPE_NAME'
      'from'
      '  DEPT_TYPES dt'
      'order by'
      '  dt.DEPT_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 24
    Top = 544
    object qryDeptTypesDEPT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDeptTypesDEPT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DEPT_TYPE_ABBREV'
      Required = True
      Size = 5
    end
    object qryDeptTypesDEPT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DEPT_TYPE_NAME'
      Required = True
      Size = 50
    end
  end
  object prvDeptTypes: TDataSetProvider
    DataSet = qryDeptTypes
    Left = 24
    Top = 496
  end
  object qryTheDates: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  d.THE_DATE,'
      '  d.ACCUMULATED_WORKDAYS,'
      '  Decode(d.ZERO_WHEN_WORKDAY, 0, 1, 0) as IS_WORKDAY  '
      'from'
      '  THE_DATES d'
      'order by'
      '  d.THE_DATE'
      '  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 24
    Top = 432
    object qryTheDatesTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTheDatesACCUMULATED_WORKDAYS: TAbmesFloatField
      FieldName = 'ACCUMULATED_WORKDAYS'
    end
    object qryTheDatesIS_WORKDAY: TAbmesFloatField
      FieldName = 'IS_WORKDAY'
    end
  end
  object prvTheDates: TDataSetProvider
    DataSet = qryTheDates
    Options = [poReadOnly]
    Left = 24
    Top = 384
  end
  object prvSelfExistentStatuses: TDataSetProvider
    DataSet = qrySelfExistentStatuses
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 672
    Top = 8
  end
  object qrySelfExistentStatuses: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  ses.SELF_EXISTENT_STATUS_CODE,'
      '  ses.SELF_EXISTENT_STATUS_NAME'
      'from'
      '  SELF_EXISTENT_STATUSES ses'
      'order by'
      '  ses.SELF_EXISTENT_STATUS_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 672
    Top = 56
    object qrySelfExistentStatusesSELF_EXISTENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'SELF_EXISTENT_STATUS_CODE'
    end
    object qrySelfExistentStatusesSELF_EXISTENT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'SELF_EXISTENT_STATUS_NAME'
      Size = 100
    end
  end
  object prvTransientStatuses: TDataSetProvider
    DataSet = qryTransientStatuses
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 696
    Top = 120
  end
  object qryTransientStatuses: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  ts.TRANSIENT_STATUS_CODE,'
      '  ts.TRANSIENT_STATUS_NAME'
      'from'
      '  TRANSIENT_STATUSES ts'
      'order by'
      '  ts.TRANSIENT_STATUS_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 696
    Top = 168
    object qryTransientStatusesTRANSIENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'TRANSIENT_STATUS_CODE'
    end
    object qryTransientStatusesTRANSIENT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'TRANSIENT_STATUS_NAME'
      Size = 100
    end
  end
  object qryTruncateTable: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'truncate table %TABLE_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'TABLE_NAME'
        ParamType = ptInput
        Value = 'TEMP_FILTERED_PRODUCTS'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 32
    Top = 264
  end
  object prvEducations: TDataSetProvider
    DataSet = qryEducations
    Left = 712
    Top = 264
  end
  object qryEducations: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  e.EDUCATION_CODE,'
      '  e.EDUCATION_SHORT_NAME,'
      '  e.EDUCATION_NAME'
      'from'
      '  EDUCATIONS e'
      'order by'
      '  e.EDUCATION_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 712
    Top = 312
    object qryEducationsEDUCATION_CODE: TAbmesFloatField
      FieldName = 'EDUCATION_CODE'
    end
    object qryEducationsEDUCATION_SHORT_NAME: TAbmesWideStringField
      FieldName = 'EDUCATION_SHORT_NAME'
    end
    object qryEducationsEDUCATION_NAME: TAbmesWideStringField
      FieldName = 'EDUCATION_NAME'
      Size = 50
    end
  end
  object qryTimeUnits: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  THE_DATE_UNITS tdu'
      'order by'
      '  tdu.THE_DATE_UNIT_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 480
    object qryTimeUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object qryTimeUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
    object qryTimeUnitsTABLE_NAME: TAbmesWideStringField
      FieldName = 'TABLE_NAME'
      Size = 50
    end
    object qryTimeUnitsKEY_FIELD_NAME: TAbmesWideStringField
      FieldName = 'KEY_FIELD_NAME'
      Size = 50
    end
    object qryTimeUnitsYEAR_UNIT_NO_NAME: TAbmesWideStringField
      FieldName = 'YEAR_UNIT_NO_NAME'
      Size = 50
    end
    object qryTimeUnitsDEFAULT_UNIT_COUNT: TAbmesFloatField
      FieldName = 'DEFAULT_UNIT_COUNT'
    end
    object qryTimeUnitsMIN_UNIT_COUNT: TAbmesFloatField
      FieldName = 'MIN_UNIT_COUNT'
    end
    object qryTimeUnitsMAX_UNIT_COUNT: TAbmesFloatField
      FieldName = 'MAX_UNIT_COUNT'
    end
    object qryTimeUnitsTHE_DATE_UNIT_NAME_PLURAL: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME_PLURAL'
      Size = 50
    end
    object qryTimeUnitsAVERAGE_WORKDAYS: TAbmesFloatField
      FieldName = 'AVERAGE_WORKDAYS'
    end
    object qryTimeUnitsTHE_DATE_UNIT_ABBREV: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_ABBREV'
      Size = 50
    end
  end
  object prvTimeUnits: TDataSetProvider
    DataSet = qryTimeUnits
    Left = 384
    Top = 440
  end
  object qryGrammaticalGenders: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  GRAMMATICAL_GENDERS'
      'order by'
      '  GENDER_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 680
    Top = 368
    object qryGrammaticalGendersGENDER_CODE: TAbmesFloatField
      FieldName = 'GENDER_CODE'
    end
    object qryGrammaticalGendersGENDER_NAME: TAbmesWideStringField
      FieldName = 'GENDER_NAME'
    end
  end
  object prvGrammaticalGenders: TDataSetProvider
    DataSet = qryGrammaticalGenders
    Left = 680
    Top = 416
  end
  object qryDateIntervalFormats: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  DATE_INTERVAL_FORMATS'
      'order by'
      '  DATE_INTERVAL_FORMAT_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 392
    Top = 576
    object qryDateIntervalFormatsDATE_INTERVAL_FORMAT_CODE: TAbmesFloatField
      FieldName = 'DATE_INTERVAL_FORMAT_CODE'
    end
    object qryDateIntervalFormatsDATE_INTERVAL_FORMAT_NAME: TAbmesWideStringField
      FieldName = 'DATE_INTERVAL_FORMAT_NAME'
      Size = 100
    end
  end
  object prvDateIntervalFormats: TDataSetProvider
    DataSet = qryDateIntervalFormats
    Left = 392
    Top = 528
  end
  object prvWorkPriorities: TDataSetProvider
    DataSet = qryWorkPriorities
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvWorkPrioritiesBeforeUpdateRecord
    Left = 256
    Top = 544
  end
  object qryWorkPriorities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  wp.WORK_PRIORITY_CODE,'
      '  wp.WORK_PRIORITY_NO,'
      '  wp.WORK_PRIORITY_NAME'
      ''
      'from'
      '  WORK_PRIORITIES wp'
      ''
      'order by'
      '  wp.WORK_PRIORITY_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 256
    Top = 592
    object qryWorkPrioritiesWORK_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryWorkPrioritiesWORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_NO'
    end
    object qryWorkPrioritiesWORK_PRIORITY_NAME: TAbmesWideStringField
      FieldName = 'WORK_PRIORITY_NAME'
      Size = 50
    end
  end
  object qryNewWorkPriorityCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(wp.WORK_PRIORITY_CODE), 0) + 1) as NEW_WORK_PRIO' +
        'RITY_CODE'
      'from'
      '  WORK_PRIORITIES wp')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 352
    Top = 624
    object qryNewWorkPriorityCodeNEW_WORK_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'NEW_WORK_PRIORITY_CODE'
    end
  end
  object qryNewPriorityCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  (Coalesce(Max(p.PRIORITY_CODE), 0) + 1) as NEW_PRIORITY_CODE'
      'from'
      '  PRIORITIES p')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 472
    Top = 248
    object qryNewPriorityCodeNEW_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'NEW_PRIORITY_CODE'
    end
  end
  object qryBaseCurrencyRate: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'RATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  cr.FIXING'
      'from'
      '  CURRENCY_RATES cr'
      'where'
      '  (cr.RATE_DATE = :RATE_DATE) and'
      '  (cr.CURRENCY_CODE = :CURRENCY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 576
    object qryBaseCurrencyRateFIXING: TAbmesFloatField
      FieldName = 'FIXING'
    end
  end
  object qryMinAndMaxPriorityNoCodes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  Min(Decode(pr.PRIORITY_NO, pr.MIN_PRIORITY_NO, pr.PRIORITY_COD' +
        'E)) as MIN_PRIORITY_NO_CODE,'
      
        '  Max(Decode(pr.PRIORITY_NO, pr.MAX_PRIORITY_NO, pr.PRIORITY_COD' +
        'E)) as MAX_PRIORITY_NO_CODE'
      'from'
      '  ( select'
      '      p.PRIORITY_CODE,'
      '      p.PRIORITY_NO,'
      '      (Min(p.PRIORITY_NO) over ()) as MIN_PRIORITY_NO,'
      '      Max(p.PRIORITY_NO) over () as MAX_PRIORITY_NO'
      '    from'
      '      PRIORITIES p'
      '  ) pr  '
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 392
    Top = 160
    object qryMinAndMaxPriorityNoCodesMIN_PRIORITY_NO_CODE: TAbmesFloatField
      FieldName = 'MIN_PRIORITY_NO_CODE'
    end
    object qryMinAndMaxPriorityNoCodesMAX_PRIORITY_NO_CODE: TAbmesFloatField
      FieldName = 'MAX_PRIORITY_NO_CODE'
    end
  end
  object qryPrecisionLevels: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  PRECISION_LEVELS'
      'order by'
      '  PRECISION_LEVEL_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 728
    Top = 536
    object qryPrecisionLevelsPRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPrecisionLevelsPRECISION_LEVEL_NO: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_NO'
    end
    object qryPrecisionLevelsPRECISION_LEVEL_NAME: TAbmesWideStringField
      FieldName = 'PRECISION_LEVEL_NAME'
      Size = 50
    end
    object qryPrecisionLevelsCOLOR: TAbmesFloatField
      FieldName = 'COLOR'
    end
    object qryPrecisionLevelsBACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'BACKGROUND_COLOR'
    end
  end
  object prvPrecisionLevels: TDataSetProvider
    DataSet = qryPrecisionLevels
    Options = [poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvPrecisionLevelsBeforeUpdateRecord
    Left = 728
    Top = 488
  end
  object qryNewPrecisionLevelCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(p.PRECISION_LEVEL_CODE), 0) + 1) as NEW_PRECISIO' +
        'N_LEVEL_CODE'
      'from'
      '  PRECISION_LEVELS p')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 712
    Top = 592
    object qryNewPrecisionLevelCodeNEW_PRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'NEW_PRECISION_LEVEL_CODE'
    end
  end
  object prvStreamTypes: TDataSetProvider
    DataSet = qryStreamTypes
    Left = 152
    Top = 224
  end
  object qryStreamTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  STREAM_TYPES')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 152
    Top = 272
    object qryStreamTypesSTREAM_TYPE_CODE: TAbmesFloatField
      FieldName = 'STREAM_TYPE_CODE'
    end
    object qryStreamTypesSTREAM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STREAM_TYPE_ABBREV'
      Size = 100
    end
    object qryStreamTypesSTREAM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'STREAM_TYPE_NAME'
      Size = 100
    end
  end
  object qryAspectTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  aty.ASPECT_TYPE_CODE,'
      '  aty.ASPECT_TYPE_ABBREV,'
      '  aty.ASPECT_TYPE_NAME'
      'from'
      '  ASPECT_TYPES aty')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 376
    Top = 280
    object qryAspectTypesASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object qryAspectTypesASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      Size = 100
    end
    object qryAspectTypesASPECT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_NAME'
      Size = 100
    end
  end
  object prvAspectTypes: TDataSetProvider
    DataSet = qryAspectTypes
    Left = 376
    Top = 232
  end
  object mshLocalMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <>
    Left = 704
    Top = 648
  end
  object qryNewMeasureCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  Coalesce(Max(m.MEASURE_CODE), 0) + 1 as NEW_MEASURE_CODE'
      'from'
      '  MEASURES m')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 840
    Top = 256
    object qryNewMeasureCodeNEW_MEASURE_CODE: TAbmesFloatField
      FieldName = 'NEW_MEASURE_CODE'
    end
  end
  object qryNewNomCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  (Coalesce(Max(n.NOM_CODE), 0) + 1) as NEW_NOM_CODE'
      'from'
      '  NOMS n')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 296
    Top = 144
    object qryNewNomCodeNEW_NOM_CODE: TAbmesFloatField
      FieldName = 'NEW_NOM_CODE'
    end
  end
  object prvYearParts: TDataSetProvider
    DataSet = qryYearParts
    Options = [poReadOnly, poUseQuoteChar]
    Left = 832
    Top = 352
  end
  object qryYearParts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  yp.YEAR_PART_CODE,'
      '  yp.YEAR_PART_NAME'
      ''
      'from'
      '  YEAR_PARTS yp'
      ''
      'order by'
      '  yp.YEAR_PART_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 832
    Top = 400
    object qryYearPartsYEAR_PART_CODE: TAbmesFloatField
      FieldName = 'YEAR_PART_CODE'
    end
    object qryYearPartsYEAR_PART_NAME: TAbmesWideStringField
      FieldName = 'YEAR_PART_NAME'
      Size = 100
    end
  end
  object qryGetActivityNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ACTIVITY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  a.ACTIVITY_NO'
      'from'
      '  ACTIVITIES a'
      'where'
      '  (a.ACTIVITY_CODE = :ACTIVITY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 848
    Top = 552
    object qryGetActivityNoACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
    end
  end
  object prvFinOrderRequirements: TDataSetProvider
    DataSet = qryFinOrderRequirements
    Options = [poReadOnly, poUseQuoteChar]
    Left = 776
    Top = 696
  end
  object qryFinOrderRequirements: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  f.FIN_ORDER_REQUIREMENT_CODE,'
      '  f.FIN_ORDER_REQUIREMENT_NAME'
      ''
      'from'
      '  FIN_ORDER_REQUIREMENTS f'
      ''
      'order by'
      '  f.FIN_ORDER_REQUIREMENT_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 776
    Top = 744
    object qryFinOrderRequirementsFIN_ORDER_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_REQUIREMENT_CODE'
    end
    object qryFinOrderRequirementsFIN_ORDER_REQUIREMENT_NAME: TAbmesWideStringField
      FieldName = 'FIN_ORDER_REQUIREMENT_NAME'
      Size = 100
    end
  end
  object prvLastMissingCurrencyRateDate: TDataSetProvider
    DataSet = qryLastMissingCurrencyRateDate
    Options = [poReadOnly, poUseQuoteChar]
    Left = 112
    Top = 568
  end
  object qryLastMissingCurrencyRateDate: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(cr.RATE_DATE - 1) LAST_MISSING_CR_DATE'
      ''
      'from'
      '  CURRENCY_RATES cr'
      ''
      'where'
      '  (cr.RATE_DATE < :TO_DATE) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      CURRENCY_RATES cr2'
      '    where'
      '      (cr2.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '      (cr2.RATE_DATE < cr.RATE_DATE)'
      '  ) and'
      ''
      '  not exists('
      '    select'
      '      1'
      '    from'
      '      CURRENCY_RATES cr2'
      '    where'
      '      (cr2.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '      (cr2.RATE_DATE = cr.RATE_DATE - 1)'
      '  )'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 112
    Top = 616
  end
  object qryActivities: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  a.ACTIVITY_CODE,'
      '  a.ACTIVITY_NO,'
      '  a.ACTIVITY_NAME'
      'from'
      '  ACTIVITIES a'
      'where'
      '  (a.IS_ACTIVE = 1)'
      'order by'
      '  a.ACTIVITY_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 848
    Top = 496
    object qryActivitiesACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
      Required = True
    end
    object qryActivitiesACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
      Required = True
    end
    object qryActivitiesACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      Required = True
      Size = 150
    end
  end
  object prvActivities: TDataSetProvider
    DataSet = qryActivities
    UpdateMode = upWhereKeyOnly
    Left = 848
    Top = 448
  end
  object qryNomItemData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NOM_ITEM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ni.NOM_ITEM_NAME,'
      '  ni.NOM_ITEM_DESCRIPTION,'
      '  ni.DOC_BRANCH_CODE,'
      '  ni.DOC_CODE,'
      '  %HAS_DOC_ITEMS[ni] as HAS_DOC_ITEMS'
      ''
      'from'
      '  NOM_ITEMS ni'
      ''
      'where'
      '  (NOM_CODE = :NOM_CODE) and'
      '  (NOM_ITEM_CODE = :NOM_ITEM_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[ni]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 552
    object qryNomItemDataNOM_ITEM_NAME: TAbmesWideStringField
      FieldName = 'NOM_ITEM_NAME'
      Required = True
      Size = 50
    end
    object qryNomItemDataNOM_ITEM_DESCRIPTION: TAbmesWideStringField
      FieldName = 'NOM_ITEM_DESCRIPTION'
      Size = 100
    end
    object qryNomItemDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryNomItemDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryNomItemDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
  end
  object qryNewNomItemCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  (Coalesce(Max(ni.NOM_ITEM_CODE), 0) + 1) as NEW_NOM_ITEM_CODE'
      'from'
      '  NOM_ITEMS ni'
      'where'
      '  (ni.NOM_CODE = :NOM_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 296
    Top = 192
    object qryNewNomItemCodeNEW_NOM_ITEM_CODE: TAbmesFloatField
      FieldName = 'NEW_NOM_ITEM_CODE'
    end
  end
end
