inherited dmVIM: TdmVIM
  Height = 330
  Width = 425
  object qryGetPeriodFieldNames: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  TABLE_NAME,'
      '  KEY_FIELD_NAME,'
      '  YEAR_UNIT_NO_NAME'
      'from'
      '  THE_DATE_UNITS'
      'where'
      '  THE_DATE_UNIT_CODE = :TIME_UNIT_CODE'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 72
    object qryGetPeriodFieldNamesTABLE_NAME: TAbmesWideStringField
      FieldName = 'TABLE_NAME'
      Size = 50
    end
    object qryGetPeriodFieldNamesKEY_FIELD_NAME: TAbmesWideStringField
      FieldName = 'KEY_FIELD_NAME'
      Size = 50
    end
    object qryGetPeriodFieldNamesYEAR_UNIT_NO_NAME: TAbmesWideStringField
      FieldName = 'YEAR_UNIT_NO_NAME'
      Size = 50
    end
  end
  object prvVIM: TDataSetProvider
    DataSet = qryVIM
    Options = [poIncFieldProps]
    OnGetData = prvVIMGetData
    AfterGetRecords = prvVIMAfterGetRecords
    Left = 72
    Top = 8
  end
  object qryGetRounder: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'VALUE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  r.ROUNDER,'
      '  r.ROUNDER_NAME,'
      '  r.ROUNDER_ABBREV'
      'from'
      '  ROUNDERS r'
      'where'
      '  :VALUE between r.MIN_LIMIT and r.MAX_LIMIT')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 8
    object qryGetRounderROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
    end
    object qryGetRounderROUNDER_NAME: TAbmesWideStringField
      FieldName = 'ROUNDER_NAME'
      Size = 100
    end
    object qryGetRounderROUNDER_ABBREV: TAbmesWideStringField
      FieldName = 'ROUNDER_ABBREV'
      Size = 100
    end
  end
  object qryCheckProductDescendants: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE '
      'from'
      '  PRODUCTS p'
      'where'
      '  p.PARENT_CODE = :PRODUCT_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 176
    Top = 128
    object qryCheckProductDescendantsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
  end
  object qryVIM: TAbmesSQLQuery
    BeforeOpen = qryVIMBeforeOpen
    AfterClose = qryVIMAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_COUNT'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  t.THE_DATE,'
      '  td.THE_YEAR_DATE,'
      '  td.%YEAR_UNIT_NO as THE_NO,'
      '  td.WORKDAYS,'
      '  rownum as ORDER_NO,'
      '  t.IS_TODAY_SECOND_RECORD,'
      ''
      '  t.REAL_QUANTITY  as QUANTITY_OTCH,'
      '  t.REAL_QUANTITY_IN as QUANTITY_IN_OTCH,'
      '  t.REAL_QUANTITY_OUT as QUANTITY_OUT_OTCH,'
      '  t.REAL_QUANTITY_RSV as QUANTITY_OTCH_RESERVE,'
      '  t.NEGATIVE_REAL_QUANTITY_RSV as NEGATIVE_QTY_OTCH_RESERVE,'
      ''
      '  t.ACC_REAL_QUANTITY  as ACC_QUANTITY_OTCH,'
      '  t.ACC_REAL_QUANTITY_IN as ACC_QUANTITY_IN_OTCH,'
      '  t.ACC_REAL_QUANTITY_OUT as ACC_QUANTITY_OUT_OTCH,'
      '  t.ACC_REAL_QUANTITY_RSV as ACC_QUANTITY_OTCH_RESERVE,'
      
        '  t.ACC_NEGATIVE_REAL_QUANTITY_RSV as ACC_NEGATIVE_QTY_OTCH_RESE' +
        'RVE,'
      ''
      '  t.REAL_PRICE as QUANTITY_OTCH_PRICE,'
      '  t.REAL_PRICE_IN as QUANTITY_IN_OTCH_PRICE,'
      '  t.REAL_PRICE_OUT as QUANTITY_OUT_OTCH_PRICE,'
      '  t.REAL_PRICE_RSV as QUANTITY_OTCH_PRICE_RESERVE,'
      '  t.NEGATIVE_REAL_PRICE_RSV as NEGATIVE_OTCH_PRICE_RESERVE,'
      ''
      '  t.PLAN_QUANTITY as QUANTITY_PLAN,'
      '  t.NEGATIVE_PLAN_QUANTITY as NEGATIVE_QUANTITY,'
      '  t.PLAN_QUANTITY_IN as QUANTITY_IN_PLAN,'
      '  t.PLAN_QUANTITY_OUT as QUANTITY_OUT_PLAN,'
      '  t.PLAN_QUANTITY_RSV as QUANTITY_PLAN_RESERVE,'
      '  t.NEGATIVE_PLAN_QUANTITY_RSV as NEGATIVE_QUANTITY_RESERVE,'
      ''
      '  t.ACC_PLAN_QUANTITY as ACC_QUANTITY_PLAN,'
      '  t.ACC_NEGATIVE_PLAN_QUANTITY as ACC_NEGATIVE_QUANTITY,'
      '  t.ACC_PLAN_QUANTITY_IN as ACC_QUANTITY_IN_PLAN,'
      '  t.ACC_PLAN_QUANTITY_OUT as ACC_QUANTITY_OUT_PLAN,'
      '  t.ACC_PLAN_QUANTITY_RSV as ACC_QUANTITY_PLAN_RESERVE,'
      
        '  t.ACC_NEGATIVE_PLAN_QUANTITY_RSV as ACC_NEGATIVE_QUANTITY_RESE' +
        'RVE,'
      ''
      '  t.PLAN_PRICE as QUANTITY_PLAN_PRICE,'
      '  t.NEGATIVE_PLAN_PRICE as NEGATIVE_PRICE,'
      '  t.PLAN_PRICE_IN as QUANTITY_IN_PLAN_PRICE,'
      '  t.PLAN_PRICE_OUT as QUANTITY_OUT_PLAN_PRICE,'
      '  t.PLAN_PRICE_RSV as QUANTITY_PLAN_PRICE_RESERVE,'
      '  t.NEGATIVE_PLAN_PRICE_RSV as NEGATIVE_PRICE_RESERVE,'
      ''
      '  t.PASSIVE_QUANTITY,'
      '  t.ACC_PASSIVE_QUANTITY,'
      '  t.PASSIVE_PRICE as PASSIVE_QUANTITY_PRICE,'
      ''
      '  t.DEFICIT_QUANTITY as QUANTITY_DEFICIT,'
      '  t.ACC_DEFICIT_QUANTITY as ACC_QUANTITY_DEFICIT,'
      '  t.DEFICIT_PRICE as QUANTITY_DEFICIT_PRICE,'
      '  t.DEFICIT_QUANTITY_RSV as QUANTITY_DEFICIT_RESERVE,'
      '  t.ACC_DEFICIT_QUANTITY_RSV as ACC_QUANTITY_DEFICIT_RESERVE,'
      '  t.DEFICIT_PRICE_RSV as QUANTITY_DEFICIT_PRICE_RESERVE,'
      ''
      '  t.MIN_QUANTITY as MIN_QUANTITY,'
      '  t.ACC_MIN_QUANTITY as ACC_MIN_QUANTITY,'
      '  t.MIN_PRICE as MIN_PRICE,'
      ''
      '  t.PLAN_QUANTITY as CLEAR_QUANTITY,'
      '  t.ACC_PLAN_QUANTITY as ACC_CLEAR_QUANTITY,'
      '  t.PLAN_PRICE as CLEAR_PRICE'
      ''
      'from'
      '  %THE_X_DATES td,'
      '  TEMP_PRODUCT_HISTORY t'
      ''
      'where'
      '  (td.%THE_X_DATE = t.THE_DATE) and'
      '  (td.%THE_X_DATE between'
      
        '    DateTimeUtils.IncDateByTimeUnits(:BEGIN_DATE, :TIME_UNIT_COD' +
        'E, -1) and'
      
        '    DateTimeUtils.IncDateByTimeUnits(:BEGIN_DATE, :TIME_UNIT_COD' +
        'E, :TIME_UNIT_COUNT)'
      '  )'
      ''
      'order by'
      '  THE_DATE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'YEAR_UNIT_NO'
        ParamType = ptInput
        Value = 'YEAR_WEEK_NO'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATES'
        ParamType = ptInput
        Value = 'THE_WEEK_DATES'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATE'
        ParamType = ptInput
        Value = 'THE_WEEK_DATE'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'INCLUDE_PLANNED_SECOND_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_TOWARDS_RESERVE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 72
    Top = 64
    object qryVIMORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
    end
    object qryVIMTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object qryVIMWORKDAYS: TAbmesFloatField
      FieldName = 'WORKDAYS'
    end
    object qryVIMTHE_YEAR_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_YEAR_DATE'
    end
    object qryVIMTHE_NO: TAbmesFloatField
      FieldName = 'THE_NO'
    end
    object qryVIMIS_TODAY_SECOND_RECORD: TAbmesFloatField
      FieldName = 'IS_TODAY_SECOND_RECORD'
    end
    object qryVIMQUANTITY_OTCH: TAbmesFloatField
      FieldName = 'QUANTITY_OTCH'
    end
    object qryVIMQUANTITY_OTCH_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_OTCH_PRICE'
    end
    object qryVIMQUANTITY_IN_OTCH: TAbmesFloatField
      FieldName = 'QUANTITY_IN_OTCH'
    end
    object qryVIMQUANTITY_IN_OTCH_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_IN_OTCH_PRICE'
    end
    object qryVIMQUANTITY_OUT_OTCH: TAbmesFloatField
      FieldName = 'QUANTITY_OUT_OTCH'
    end
    object qryVIMQUANTITY_OUT_OTCH_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_OUT_OTCH_PRICE'
    end
    object qryVIMQUANTITY_PLAN: TAbmesFloatField
      FieldName = 'QUANTITY_PLAN'
    end
    object qryVIMQUANTITY_PLAN_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_PLAN_PRICE'
    end
    object qryVIMQUANTITY_IN_PLAN: TAbmesFloatField
      FieldName = 'QUANTITY_IN_PLAN'
    end
    object qryVIMQUANTITY_IN_PLAN_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_IN_PLAN_PRICE'
    end
    object qryVIMQUANTITY_OUT_PLAN: TAbmesFloatField
      FieldName = 'QUANTITY_OUT_PLAN'
    end
    object qryVIMQUANTITY_OUT_PLAN_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_OUT_PLAN_PRICE'
    end
    object qryVIMQUANTITY_DEFICIT: TAbmesFloatField
      FieldName = 'QUANTITY_DEFICIT'
    end
    object qryVIMQUANTITY_DEFICIT_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_DEFICIT_PRICE'
    end
    object qryVIMNEGATIVE_QUANTITY: TAbmesFloatField
      FieldName = 'NEGATIVE_QUANTITY'
    end
    object qryVIMCLEAR_QUANTITY: TAbmesFloatField
      FieldName = 'CLEAR_QUANTITY'
    end
    object qryVIMNEGATIVE_PRICE: TAbmesFloatField
      FieldName = 'NEGATIVE_PRICE'
    end
    object qryVIMCLEAR_PRICE: TAbmesFloatField
      FieldName = 'CLEAR_PRICE'
    end
    object qryVIMQUANTITY_OTCH_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_OTCH_RESERVE'
    end
    object qryVIMQUANTITY_OTCH_PRICE_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_OTCH_PRICE_RESERVE'
    end
    object qryVIMQUANTITY_PLAN_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_PLAN_RESERVE'
    end
    object qryVIMQUANTITY_PLAN_PRICE_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_PLAN_PRICE_RESERVE'
    end
    object qryVIMNEGATIVE_QUANTITY_RESERVE: TAbmesFloatField
      FieldName = 'NEGATIVE_QUANTITY_RESERVE'
    end
    object qryVIMNEGATIVE_PRICE_RESERVE: TAbmesFloatField
      FieldName = 'NEGATIVE_PRICE_RESERVE'
    end
    object qryVIMQUANTITY_DEFICIT_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_DEFICIT_RESERVE'
    end
    object qryVIMQUANTITY_DEFICIT_PRICE_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_DEFICIT_PRICE_RESERVE'
    end
    object qryVIMNEGATIVE_QTY_OTCH_RESERVE: TAbmesFloatField
      FieldName = 'NEGATIVE_QTY_OTCH_RESERVE'
    end
    object qryVIMNEGATIVE_OTCH_PRICE_RESERVE: TAbmesFloatField
      FieldName = 'NEGATIVE_OTCH_PRICE_RESERVE'
    end
    object qryVIMMIN_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_QUANTITY'
    end
    object qryVIMMIN_PRICE: TAbmesFloatField
      FieldName = 'MIN_PRICE'
    end
    object qryVIMPASSIVE_QUANTITY: TAbmesFloatField
      FieldName = 'PASSIVE_QUANTITY'
    end
    object qryVIMPASSIVE_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'PASSIVE_QUANTITY_PRICE'
    end
    object qryVIMACC_QUANTITY_OTCH: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_OTCH'
    end
    object qryVIMACC_QUANTITY_IN_OTCH: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_IN_OTCH'
    end
    object qryVIMACC_QUANTITY_OUT_OTCH: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_OUT_OTCH'
    end
    object qryVIMACC_QUANTITY_OTCH_RESERVE: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_OTCH_RESERVE'
    end
    object qryVIMACC_NEGATIVE_QTY_OTCH_RESERVE: TAbmesFloatField
      FieldName = 'ACC_NEGATIVE_QTY_OTCH_RESERVE'
    end
    object qryVIMACC_QUANTITY_PLAN: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_PLAN'
    end
    object qryVIMACC_NEGATIVE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_NEGATIVE_QUANTITY'
    end
    object qryVIMACC_QUANTITY_IN_PLAN: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_IN_PLAN'
    end
    object qryVIMACC_QUANTITY_OUT_PLAN: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_OUT_PLAN'
    end
    object qryVIMACC_QUANTITY_PLAN_RESERVE: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_PLAN_RESERVE'
    end
    object qryVIMACC_NEGATIVE_QUANTITY_RESERVE: TAbmesFloatField
      FieldName = 'ACC_NEGATIVE_QUANTITY_RESERVE'
    end
    object qryVIMACC_PASSIVE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_PASSIVE_QUANTITY'
    end
    object qryVIMACC_QUANTITY_DEFICIT: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_DEFICIT'
    end
    object qryVIMACC_QUANTITY_DEFICIT_RESERVE: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_DEFICIT_RESERVE'
    end
    object qryVIMACC_MIN_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_MIN_QUANTITY'
    end
    object qryVIMACC_CLEAR_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_CLEAR_QUANTITY'
    end
  end
  object qryGetFilteredProductsMeasureStuff: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  ( case'
      '      when (x.NO_MEASURE_COUNT = 0) and'
      '           (x.MIN_MEASURE_CODE = x.MAX_MEASURE_CODE)'
      '      then'
      '        1'
      '      else'
      '        0'
      '    end'
      '  ) as PRODUCTS_HAVE_SAME_MEASURE,'
      '  '
      '  ( case'
      '      when (x.NO_ACCOUNT_MEASURE_COUNT = 0) and'
      
        '           (x.MIN_ACCOUNT_MEASURE_CODE = x.MAX_ACCOUNT_MEASURE_C' +
        'ODE)'
      '      then'
      '        1'
      '      else'
      '        0'
      '    end'
      '  ) as PRODUCTS_HAVE_SAME_ACC_MEASURE,'
      '  '
      '  ( case'
      '      when (x.NO_MEASURE_COUNT = 0) and'
      '           (x.MIN_MEASURE_CODE = x.MAX_MEASURE_CODE)'
      '      then'
      '        ( select'
      '            m.MEASURE_ABBREV'
      '          from'
      '            MEASURES m'
      '          where'
      '            (m.MEASURE_CODE = x.MAX_MEASURE_CODE)'
      '        )'
      '      else'
      '        null'
      '    end'
      '  )  as MEASURE_ABBREV,'
      '  '
      '  ( case'
      '      when (x.NO_ACCOUNT_MEASURE_COUNT = 0) and'
      
        '           (x.MIN_ACCOUNT_MEASURE_CODE = x.MAX_ACCOUNT_MEASURE_C' +
        'ODE)'
      '      then'
      '        ( select'
      '            m.MEASURE_ABBREV'
      '          from'
      '            MEASURES m'
      '          where'
      '            (m.MEASURE_CODE = x.MAX_ACCOUNT_MEASURE_CODE)'
      '        )'
      '      else'
      '        null'
      '    end'
      '  )  as ACCOUNT_MEASURE_ABBREV'
      '  '
      'from'
      '  ( select'
      '      /*+ ORDERED INDEX(p) USE_NL(tfp p) */'
      '      Min(p.MEASURE_CODE) as MIN_MEASURE_CODE,'
      '      Max(p.MEASURE_CODE) as MAX_MEASURE_CODE,'
      '      Count(Nvl2(p.MEASURE_CODE, null, 1)) as NO_MEASURE_COUNT,'
      '      '
      '      Min(p.ACCOUNT_MEASURE_CODE) as MIN_ACCOUNT_MEASURE_CODE,'
      '      Max(p.ACCOUNT_MEASURE_CODE) as MAX_ACCOUNT_MEASURE_CODE,'
      
        '      Count(Nvl2(p.ACCOUNT_MEASURE_CODE, null, 1)) as NO_ACCOUNT' +
        '_MEASURE_COUNT'
      '    '
      '    from'
      '      TEMP_FILTERED_PRODUCTS tfp,'
      '      PRODUCTS p'
      '    where'
      '      (tfp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (p.IS_GROUP = 0)'
      '  ) x')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 112
    Top = 216
    object qryGetFilteredProductsMeasureStuffPRODUCTS_HAVE_SAME_MEASURE: TAbmesFloatField
      FieldName = 'PRODUCTS_HAVE_SAME_MEASURE'
      FieldValueType = fvtBoolean
    end
    object qryGetFilteredProductsMeasureStuffPRODUCTS_HAVE_SAME_ACC_MEASURE: TAbmesFloatField
      FieldName = 'PRODUCTS_HAVE_SAME_ACC_MEASURE'
      FieldValueType = fvtBoolean
    end
    object qryGetFilteredProductsMeasureStuffMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryGetFilteredProductsMeasureStuffACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
  end
  object qryPrepareProductHistory: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_COUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PLANNED_STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  StoreUtils.UnprepareProductHistory;'
      ''
      '  StoreUtils.PrepareProductHistory('
      '    :BEGIN_DATE,'
      
        '    DateTimeUtils.IncDateByTimeUnits(:BEGIN_DATE, :TIME_UNIT_COD' +
        'E, :TIME_UNIT_COUNT - 1),'
      '    :TIME_UNIT_CODE,'
      '    :MAX_PLANNED_STORE_DEAL_TYPE_CODE,'
      '    0,'
      '    1);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 320
    Top = 184
  end
  object qryUnprepareProductHistory: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'begin'
      '  StoreUtils.UnprepareProductHistory;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 320
    Top = 240
  end
end
