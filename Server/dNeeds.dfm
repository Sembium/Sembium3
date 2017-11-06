inherited dmNeeds: TdmNeeds
  Height = 709
  Width = 845
  object qryDetailRealNeeds: TAbmesSQLQuery
    BeforeOpen = qryDetailRealNeedsBeforeOpen
    AfterClose = qryDetailRealNeedsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PRODUCTION_PRODUCT'
        ParamType = ptInput
        Value = '9'
      end
      item
        DataType = ftFloat
        Name = 'IS_PRODUCTION_PRODUCT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SELF_EXISTENT_STATUS_CODE'
        ParamType = ptInput
        Value = '9'
      end
      item
        DataType = ftFloat
        Name = 'SELF_EXISTENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_USED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.*,'
      ''
      '  NullIf('
      '    ( Coalesce(x.QUANTITY, 0) +'
      '      Coalesce(x.DIRECT_SALE_QUANTITY, 0)'
      '    ),'
      '    0'
      '  ) as FULL_QUANTITY,'
      ''
      '  NullIf('
      '    ( Coalesce(x.QUANTITY_PRICE, 0) +'
      '      Coalesce(x.DIRECT_SALE_QUANTITY_PRICE, 0)'
      '    ),'
      '    0'
      '  ) as FULL_QUANTITY_PRICE,'
      ''
      '  NullIf('
      '    Least('
      '      Coalesce(x.QUANTITY_NOPRICE_DATE, CommonConsts.MaxDate),'
      
        '      Coalesce(x.DIRECT_SALE_QTY_NOPRICE_DATE, CommonConsts.MaxD' +
        'ate)'
      '    ),'
      '    CommonConsts.MaxDate'
      '  ) as FULL_QUANTITY_NOPRICE_DATE'
      ''
      'from'
      '  ( select'
      '      p.PRODUCT_CODE,'
      '      p.CUSTOM_CODE as PRODUCT_NO,'
      '      p.NAME as PRODUCT_NAME,'
      '      p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '      p.DOC_BRANCH_CODE,'
      '      p.DOC_CODE,'
      '      %HAS_DOC_ITEMS[p] as HAS_DOC,'
      ''
      '      p.IS_PRODUCTION_PRODUCT,'
      ''
      '      p.MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.MEASURE_CODE)'
      '      ) as MEASURE_ABBREV,'
      '  '
      '      p.ACCOUNT_MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '      ) as ACCOUNT_MEASURE_ABBREV,'
      '  '
      '      p.ACCOUNT_MEASURE_COEF,'
      ''
      '      (q.TECH_QUANTITY / p.TECH_MEASURE_COEF) as QUANTITY,'
      ''
      
        '      (q.TECH_QUANTITY_PRICE / p.TECH_MEASURE_COEF) as QUANTITY_' +
        'PRICE,'
      ''
      
        '      Nvl2(p.TECH_MEASURE_COEF, q.TECH_QUANTITY_NOPRICE_DATE, nu' +
        'll) as QUANTITY_NOPRICE_DATE,'
      ''
      '      ( select'
      '          Sum(s2.QUANTITY)'
      '        from'
      '          SALES s2'
      '        where'
      '          (s2.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (s2.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '          (s2.SALE_BRANCH_CODE is not null) and'
      '          (s2.ANNUL_EMPLOYEE_CODE is null) and'
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = s2.CLIENT_COMPANY_CODE)'
      '              )'
      '            )'
      '          ) and'
      '          (s2.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE)'
      '      ) as DIRECT_SALE_QUANTITY,'
      ''
      '      ( select'
      '          Sum('
      '            s2.QUANTITY *'
      
        '            %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~s2.SHI' +
        'PMENT_DATE]'
      '          )'
      '        from'
      '          SALES s2'
      '        where'
      '          (s2.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (s2.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '          (s2.SALE_BRANCH_CODE is not null) and'
      '          (s2.ANNUL_EMPLOYEE_CODE is null) and'
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = s2.CLIENT_COMPANY_CODE)'
      '              )'
      '            )'
      '          ) and'
      '          (s2.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE)'
      '      ) as DIRECT_SALE_QUANTITY_PRICE,'
      ''
      '      ( select'
      '          Min('
      '            Nvl2('
      '              s2.QUANTITY,'
      '              Nvl2('
      
        '                %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~s2' +
        '.SHIPMENT_DATE],'
      '                null,'
      '                s2.SHIPMENT_DATE'
      '              ),'
      '              null'
      '            )'
      '          )'
      '        from'
      '          SALES s2'
      '        where'
      '          (s2.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (s2.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '          (s2.SALE_BRANCH_CODE is not null) and'
      '          (s2.ANNUL_EMPLOYEE_CODE is null) and'
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = s2.CLIENT_COMPANY_CODE)'
      '              )'
      '            )'
      '          ) and'
      '          (s2.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE)'
      '      ) as DIRECT_SALE_QTY_NOPRICE_DATE,'
      ''
      '      q.SALE_COUNT,'
      '      q.SPEC_PRODUCT_COUNT,'
      '      q.UPPER_LEVEL_STRUCT_PART_COUNT'
      ''
      '    from'
      '      PRODUCTS p,'
      '      ( select'
      '          spl.DETAIL_CODE,'
      ''
      '          Sum('
      
        '            (spl.TOTAL_DETAIL_TECH_QUANTITY * s.QUANTITY * p8.TE' +
        'CH_MEASURE_COEF)'
      '          ) as TECH_QUANTITY,'
      ''
      '          Sum('
      
        '            (spl.TOTAL_DETAIL_TECH_QUANTITY * s.QUANTITY * p8.TE' +
        'CH_MEASURE_COEF) *'
      
        '            %PRODUCT_BASE_PSD_SINGLE_PRICE[spl.DETAIL_CODE~s.SHI' +
        'PMENT_DATE]'
      
        '          ) as TECH_QUANTITY_PRICE,  --// ne e istinska cena - t' +
        'riabva da se korigira s koef posle'
      ''
      '          Min('
      '            Nvl2('
      
        '              (spl.TOTAL_DETAIL_TECH_QUANTITY * s.QUANTITY * p8.' +
        'TECH_MEASURE_COEF),'
      '              Nvl2('
      
        '                %PRODUCT_BASE_PSD_SINGLE_PRICE[spl.DETAIL_CODE~s' +
        '.SHIPMENT_DATE],'
      '                null,'
      '                s.SHIPMENT_DATE'
      '              ),'
      '              null'
      '            )'
      '          ) as TECH_QUANTITY_NOPRICE_DATE,'
      ''
      
        '          Count(distinct (s.SALE_OBJECT_BRANCH_CODE * 100000000)' +
        ' + s.SALE_OBJECT_CODE) as SALE_COUNT,'
      
        '          Count(distinct spl.SPEC_PRODUCT_CODE) as SPEC_PRODUCT_' +
        'COUNT,'
      
        '          Count(distinct splp.DETAIL_CODE) as UPPER_LEVEL_STRUCT' +
        '_PART_COUNT'
      ''
      '        from'
      '          SALES s,'
      '          PRODUCTS p8,'
      '          SPEC_LINES spl,'
      '          SPEC_LINES splp'
      ''
      '        where'
      '          (s.PRODUCT_CODE = p8.PRODUCT_CODE) and'
      '          (s.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '          (spl.SPEC_PRODUCT_CODE = splp.SPEC_PRODUCT_CODE) and'
      '          (spl.PARENT_SPEC_LINE_CODE = splp.SPEC_LINE_CODE) and'
      ''
      '          ( (spl.PRODUCT_CODE is null) or'
      '            (spl.DETAIL_CODE <> spl.PRODUCT_CODE)'
      '          ) and'
      ''
      '          (s.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '          (s.SALE_BRANCH_CODE is not null) and'
      '          (s.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '          (s.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) an' +
        'd'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_PRODUCTS tfp'
      '                where'
      '                  (tfp.PRODUCT_CODE = s.PRODUCT_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:ALL_FILTERED_PRODUCTS_2 = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_PRODUCTS_2 tfp2'
      '                where'
      '                  (tfp2.PRODUCT_CODE = spl.DETAIL_CODE)'
      '              )'
      '            )'
      '          )'
      ''
      '        group by'
      '          spl.DETAIL_CODE'
      '      ) q'
      ''
      '    where'
      '      (p.PRODUCT_CODE = q.DETAIL_CODE(+)) and'
      ''
      '      (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '      (p.IS_GROUP = 0) and'
      ''
      '      ( (:ALL_FILTERED_PRODUCTS_2 = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_PRODUCTS_2 tfp2'
      '            where'
      '              (tfp2.PRODUCT_CODE = p.PRODUCT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:IS_PRODUCTION_PRODUCT = 9) or'
      '        (p.IS_PRODUCTION_PRODUCT = :IS_PRODUCTION_PRODUCT)'
      '      ) and'
      ''
      '      ( (:SELF_EXISTENT_STATUS_CODE = 9) or'
      
        '        (p.SELF_EXISTENT_STATUS_CODE = :SELF_EXISTENT_STATUS_COD' +
        'E)'
      '      ) and'
      ''
      '      ( (:IS_USED = 9) or'
      '        ( (:IS_USED = 1) and'
      '          (q.DETAIL_CODE is not null)'
      '        ) or'
      '        ( (:IS_USED = 0) and'
      '          (q.DETAIL_CODE is null)'
      '        )'
      '      )'
      '  ) x'
      '  '
      'order by'
      '  UPPER_LEVEL_STRUCT_PART_COUNT desc,'
      '  SPEC_PRODUCT_COUNT desc,'
      '  SALE_COUNT desc,'
      '  PRODUCT_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~s2.SHIPMENT_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_BASE_PSD_SINGLE_PRICE[spl.DETAIL_CODE~s.SHIPMENT_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_STRUCT_PART_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 56
    Top = 296
    object qryDetailRealNeedsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDetailRealNeedsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryDetailRealNeedsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryDetailRealNeedsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDetailRealNeedsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDetailRealNeedsHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryDetailRealNeedsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryDetailRealNeedsQUANTITY_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_PRICE'
    end
    object qryDetailRealNeedsQUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'QUANTITY_NOPRICE_DATE'
    end
    object qryDetailRealNeedsDIRECT_SALE_QUANTITY: TAbmesFloatField
      FieldName = 'DIRECT_SALE_QUANTITY'
    end
    object qryDetailRealNeedsDIRECT_SALE_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'DIRECT_SALE_QUANTITY_PRICE'
    end
    object qryDetailRealNeedsDIRECT_SALE_QTY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'DIRECT_SALE_QTY_NOPRICE_DATE'
    end
    object qryDetailRealNeedsFULL_QUANTITY: TAbmesFloatField
      FieldName = 'FULL_QUANTITY'
    end
    object qryDetailRealNeedsFULL_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'FULL_QUANTITY_PRICE'
    end
    object qryDetailRealNeedsFULL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'FULL_QUANTITY_NOPRICE_DATE'
    end
    object qryDetailRealNeedsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryDetailRealNeedsSALE_COUNT: TAbmesFloatField
      FieldName = 'SALE_COUNT'
    end
    object qryDetailRealNeedsSPEC_PRODUCT_COUNT: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_COUNT'
    end
    object qryDetailRealNeedsUPPER_LEVEL_STRUCT_PART_COUNT: TAbmesFloatField
      FieldName = 'UPPER_LEVEL_STRUCT_PART_COUNT'
    end
    object qryDetailRealNeedsIS_PRODUCTION_PRODUCT: TAbmesFloatField
      FieldName = 'IS_PRODUCTION_PRODUCT'
    end
    object qryDetailRealNeedsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryDetailRealNeedsACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryDetailRealNeedsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryDetailRealNeedsACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object qryDetailRealNeedsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
  end
  object prvDetailRealNeeds: TDataSetProvider
    DataSet = qryDetailRealNeeds
    Left = 56
    Top = 248
  end
  object qryDetailRealNeedsByResultProduct: TAbmesSQLQuery
    BeforeOpen = qryDetailRealNeedsByResultProductBeforeOpen
    AfterClose = qryDetailRealNeedsByResultProductAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOC,'
      
        '  Count(distinct (s.SALE_OBJECT_BRANCH_CODE * 100000000) + s.SAL' +
        'E_OBJECT_CODE) as SALE_COUNT,'
      '  Sum(s.QUANTITY) as QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      
        '  ( Sum((spl.TOTAL_DETAIL_TECH_QUANTITY / p2.TECH_MEASURE_COEF) ' +
        '* s.QUANTITY * p.TECH_MEASURE_COEF) /'
      '    Sum(s.QUANTITY * p.TECH_MEASURE_COEF)'
      '  ) as STRUCT_PART_SINGLE_QUANTITY,'
      ''
      
        '  Sum((spl.TOTAL_DETAIL_TECH_QUANTITY / p2.TECH_MEASURE_COEF) * ' +
        's.QUANTITY * p.TECH_MEASURE_COEF) as STRUCT_PART_TOTAL_QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p2.MEASURE_CODE)'
      '  ) as STRUCT_PART_MEASURE_ABBREV'
      '  '
      'from'
      '  SALES s,'
      '  SPEC_LINES spl,'
      '  PRODUCTS p,'
      '  PRODUCTS p2'
      ''
      'where'
      '  (s.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (spl.DETAIL_CODE = p2.PRODUCT_CODE) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '  (s.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '  (s.SALE_BRANCH_CODE is not null) and'
      '  (s.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '  (spl.PARENT_SPEC_LINE_CODE is not null) and'
      ''
      '  ( (spl.PRODUCT_CODE is null) or'
      '    (spl.DETAIL_CODE <> spl.PRODUCT_CODE)'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_COMPANIES = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_COMPANIES tfc'
      '        where'
      '          (tfc.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = s.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (s.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) and'
      ''
      '  (spl.DETAIL_CODE = :PRODUCT_CODE)'
      ''
      'group by'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.PARTNER_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  p.MEASURE_CODE,'
      '  p2.MEASURE_CODE'
      ''
      'order by'
      '  STRUCT_PART_TOTAL_QUANTITY desc,'
      '  PRODUCT_NAME'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 384
    Top = 296
    object qryDetailRealNeedsByResultProductPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDetailRealNeedsByResultProductPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryDetailRealNeedsByResultProductPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryDetailRealNeedsByResultProductPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryDetailRealNeedsByResultProductDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDetailRealNeedsByResultProductDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDetailRealNeedsByResultProductHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryDetailRealNeedsByResultProductSALE_COUNT: TAbmesFloatField
      FieldName = 'SALE_COUNT'
    end
    object qryDetailRealNeedsByResultProductQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryDetailRealNeedsByResultProductMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryDetailRealNeedsByResultProductSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_SINGLE_QUANTITY'
    end
    object qryDetailRealNeedsByResultProductSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_TOTAL_QUANTITY'
    end
    object qryDetailRealNeedsByResultProductSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'STRUCT_PART_MEASURE_ABBREV'
      Size = 5
    end
  end
  object prvDetailRealNeedsByResultProduct: TDataSetProvider
    DataSet = qryDetailRealNeedsByResultProduct
    Left = 384
    Top = 248
  end
  object qryDetailRealNeedsByParentDetail: TAbmesSQLQuery
    BeforeOpen = qryDetailRealNeedsByParentDetailBeforeOpen
    AfterClose = qryDetailRealNeedsByParentDetailAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOC,'
      
        '  Sum((splp.TOTAL_DETAIL_TECH_QUANTITY / p.TECH_MEASURE_COEF) * ' +
        's.QUANTITY) as QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      
        '  ( Sum((spl.TOTAL_DETAIL_TECH_QUANTITY / p2.TECH_MEASURE_COEF) ' +
        '* s.QUANTITY * p8.TECH_MEASURE_COEF) /'
      
        '    Sum((splp.TOTAL_DETAIL_TECH_QUANTITY / p.TECH_MEASURE_COEF) ' +
        '* s.QUANTITY * p8.TECH_MEASURE_COEF)'
      '  ) as STRUCT_PART_SINGLE_QUANTITY,'
      ''
      
        '  Sum((spl.TOTAL_DETAIL_TECH_QUANTITY / p2.TECH_MEASURE_COEF) * ' +
        's.QUANTITY * p8.TECH_MEASURE_COEF) as STRUCT_PART_TOTAL_QUANTITY' +
        ','
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p2.MEASURE_CODE)'
      '  ) as STRUCT_PART_MEASURE_ABBREV'
      ''
      'from'
      '  SALES s,'
      '  PRODUCTS p8,'
      '  SPEC_LINES spl,'
      '  SPEC_LINES splp,'
      '  PRODUCTS p,'
      '  PRODUCTS p2'
      ''
      'where'
      '  (s.PRODUCT_CODE = p8.PRODUCT_CODE) and'
      '  (s.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '  (spl.SPEC_PRODUCT_CODE = splp.SPEC_PRODUCT_CODE) and'
      '  (spl.PARENT_SPEC_LINE_CODE = splp.SPEC_LINE_CODE) and'
      '  (splp.DETAIL_CODE = p.PRODUCT_CODE) and'
      '  (spl.DETAIL_CODE = p2.PRODUCT_CODE) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '  (s.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '  (s.SALE_BRANCH_CODE is not null) and'
      '  (s.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '  ( (spl.PRODUCT_CODE is null) or'
      '    (spl.DETAIL_CODE <> spl.PRODUCT_CODE)'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_COMPANIES = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_COMPANIES tfc'
      '        where'
      '          (tfc.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = s.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (s.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) and'
      ''
      '  (spl.DETAIL_CODE = :PRODUCT_CODE)'
      ''
      'group by'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.PARTNER_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  p.MEASURE_CODE,'
      '  p2.MEASURE_CODE'
      ''
      'order by'
      '  STRUCT_PART_TOTAL_QUANTITY desc,'
      '  PRODUCT_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 568
    Top = 296
    object qryDetailRealNeedsByParentDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDetailRealNeedsByParentDetailPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryDetailRealNeedsByParentDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryDetailRealNeedsByParentDetailPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryDetailRealNeedsByParentDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDetailRealNeedsByParentDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDetailRealNeedsByParentDetailHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryDetailRealNeedsByParentDetailQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryDetailRealNeedsByParentDetailMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryDetailRealNeedsByParentDetailSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_SINGLE_QUANTITY'
    end
    object qryDetailRealNeedsByParentDetailSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_TOTAL_QUANTITY'
    end
    object qryDetailRealNeedsByParentDetailSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'STRUCT_PART_MEASURE_ABBREV'
      Size = 5
    end
  end
  object prvDetailRealNeedsByParentDetail: TDataSetProvider
    DataSet = qryDetailRealNeedsByParentDetail
    Left = 568
    Top = 248
  end
  object qryDetailRealNeedsBySale: TAbmesSQLQuery
    BeforeOpen = qryDetailRealNeedsBySaleBeforeOpen
    AfterClose = qryDetailRealNeedsBySaleAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      '  s.SALE_ORDER_TYPE_CODE,'
      ''
      '  ( select'
      '      po.PROCESS_OBJECT_IDENTIFIER'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (po.PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '      (po.PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '  ) as SALE_IDENTIFIER,'
      ''
      '  s.CLIENT_COMPANY_CODE,'
      ''
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '  ) as CLIENT_SHORT_NAME,'
      ''
      '  s.SHIPMENT_DATE,'
      '  s.QUANTITY,'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      
        '  %PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[p.PRODUCT_CODE~s.' +
        'CLIENT_COMPANY_CODE~p] as CLIENT_PRODUCT_NAME,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOC,'
      ''
      '  m.MEASURE_ABBREV,'
      
        '  Sum(spl.TOTAL_DETAIL_TECH_QUANTITY / p2.TECH_MEASURE_COEF) as ' +
        'STRUCT_PART_SINGLE_QUANTITY,'
      
        '  (Sum(spl.TOTAL_DETAIL_TECH_QUANTITY / p2.TECH_MEASURE_COEF) * ' +
        's.QUANTITY * p.TECH_MEASURE_COEF) as STRUCT_PART_TOTAL_QUANTITY,'
      '  m2.MEASURE_ABBREV as STRUCT_PART_MEASURE_ABBREV,'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO'
      ''
      'from'
      '  SALES s,'
      '  SPEC_LINES spl,'
      '  SPEC_LINES splp,'
      '  PRODUCTS p,'
      '  MEASURES m,'
      '  PRODUCTS p2,'
      '  MEASURES m2'
      ''
      'where'
      '  (s.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '  (spl.SPEC_PRODUCT_CODE = splp.SPEC_PRODUCT_CODE) and'
      '  (spl.PARENT_SPEC_LINE_CODE = splp.SPEC_LINE_CODE) and'
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (p.MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '  (spl.DETAIL_CODE = p2.PRODUCT_CODE) and'
      '  (p2.MEASURE_CODE = m2.MEASURE_CODE(+)) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '  (s.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '  (s.SALE_BRANCH_CODE is not null) and'
      '  (s.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '  ( (spl.PRODUCT_CODE is null) or'
      '    (spl.DETAIL_CODE <> spl.PRODUCT_CODE)'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_COMPANIES = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_COMPANIES tfc'
      '        where'
      '          (tfc.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = s.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (s.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) and'
      ''
      '  (spl.DETAIL_CODE = :PRODUCT_CODE)'
      ''
      'group by'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      '  s.SALE_ORDER_TYPE_CODE,'
      '  s.CLIENT_COMPANY_CODE,'
      '  s.SHIPMENT_DATE,'
      '  s.QUANTITY,'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  p.TECH_MEASURE_COEF,'
      '  p.PARTNER_PRODUCT_NAMES,'
      '  m.MEASURE_ABBREV,'
      '  m2.MEASURE_ABBREV,'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO'
      ''
      'order by'
      '  STRUCT_PART_TOTAL_QUANTITY desc,'
      '  SALE_IDENTIFIER'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[p.PRODUCT_CODE~s.CLI' +
          'ENT_COMPANY_CODE~p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 216
    Top = 296
    object qryDetailRealNeedsBySaleSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDetailRealNeedsBySaleSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDetailRealNeedsBySaleSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object qryDetailRealNeedsBySaleSALE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_IDENTIFIER'
      Size = 100
    end
    object qryDetailRealNeedsBySaleCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object qryDetailRealNeedsBySaleCLIENT_SHORT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_SHORT_NAME'
    end
    object qryDetailRealNeedsBySaleSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
    end
    object qryDetailRealNeedsBySaleQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryDetailRealNeedsBySalePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryDetailRealNeedsBySalePRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryDetailRealNeedsBySalePRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryDetailRealNeedsBySaleCLIENT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 250
    end
    object qryDetailRealNeedsBySaleDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDetailRealNeedsBySaleDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDetailRealNeedsBySaleHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryDetailRealNeedsBySaleMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryDetailRealNeedsBySaleSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_SINGLE_QUANTITY'
    end
    object qryDetailRealNeedsBySaleSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_TOTAL_QUANTITY'
    end
    object qryDetailRealNeedsBySaleSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'STRUCT_PART_MEASURE_ABBREV'
      Size = 5
    end
    object qryDetailRealNeedsBySaleREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object qryDetailRealNeedsBySaleREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
  end
  object prvDetailRealNeedsBySale: TDataSetProvider
    DataSet = qryDetailRealNeedsBySale
    Left = 216
    Top = 248
  end
  object qryMaterialRealNeeds: TAbmesSQLQuery
    BeforeOpen = qryMaterialRealNeedsBeforeOpen
    AfterClose = qryMaterialRealNeedsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PRODUCTION_PRODUCT'
        ParamType = ptInput
        Value = '9'
      end
      item
        DataType = ftFloat
        Name = 'IS_PRODUCTION_PRODUCT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SELF_EXISTENT_STATUS_CODE'
        ParamType = ptInput
        Value = '9'
      end
      item
        DataType = ftFloat
        Name = 'SELF_EXISTENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_USED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.*,'
      ''
      '  NullIf('
      '    ( Coalesce(x.QUANTITY, 0) +'
      '      Coalesce(x.DIRECT_SALE_QUANTITY, 0)'
      '    ),'
      '    0'
      '  ) as FULL_QUANTITY,'
      ''
      '  NullIf('
      '    ( Coalesce(x.QUANTITY_PRICE, 0) +'
      '      Coalesce(x.DIRECT_SALE_QUANTITY_PRICE, 0)'
      '    ),'
      '    0'
      '  ) as FULL_QUANTITY_PRICE,'
      ''
      '  NullIf('
      '    Least('
      '      Coalesce(x.QUANTITY_NOPRICE_DATE, CommonConsts.MaxDate),'
      
        '      Coalesce(x.DIRECT_SALE_QTY_NOPRICE_DATE, CommonConsts.MaxD' +
        'ate)'
      '    ),'
      '    CommonConsts.MaxDate'
      '  ) as FULL_QUANTITY_NOPRICE_DATE'
      ''
      'from'
      '  ( select'
      '      p.PRODUCT_CODE,'
      '      p.CUSTOM_CODE as PRODUCT_NO,'
      '      p.NAME as PRODUCT_NAME,'
      '      p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '      p.DOC_BRANCH_CODE,'
      '      p.DOC_CODE,'
      '      %HAS_DOC_ITEMS[p] as HAS_DOC,'
      ''
      '      p.IS_PRODUCTION_PRODUCT,'
      ''
      '      p.MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.MEASURE_CODE)'
      '      ) as MEASURE_ABBREV,'
      '  '
      '      p.ACCOUNT_MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '      ) as ACCOUNT_MEASURE_ABBREV,'
      '  '
      '      p.ACCOUNT_MEASURE_COEF,'
      ''
      '      (q.TECH_QUANTITY / p.TECH_MEASURE_COEF) as QUANTITY,'
      ''
      
        '      (q.TECH_QUANTITY_PRICE / p.TECH_MEASURE_COEF) as QUANTITY_' +
        'PRICE,'
      ''
      
        '      Nvl2(p.TECH_MEASURE_COEF, q.TECH_QUANTITY_NOPRICE_DATE, nu' +
        'll) as QUANTITY_NOPRICE_DATE,'
      ''
      '      ( select'
      '          Sum(s2.QUANTITY)'
      '        from'
      '          SALES s2'
      '        where'
      '          (s2.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (s2.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '          (s2.SALE_BRANCH_CODE is not null) and'
      '          (s2.ANNUL_EMPLOYEE_CODE is null) and'
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = s2.CLIENT_COMPANY_CODE)'
      '              )'
      '            )'
      '          ) and'
      '          (s2.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE)'
      '      ) as DIRECT_SALE_QUANTITY,'
      ''
      '      ( select'
      '          Sum('
      '            s2.QUANTITY *'
      
        '            %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~s2.SHI' +
        'PMENT_DATE]'
      '          )'
      '        from'
      '          SALES s2'
      '        where'
      '          (s2.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (s2.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '          (s2.SALE_BRANCH_CODE is not null) and'
      '          (s2.ANNUL_EMPLOYEE_CODE is null) and'
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = s2.CLIENT_COMPANY_CODE)'
      '              )'
      '            )'
      '          ) and'
      '          (s2.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE)'
      '      ) as DIRECT_SALE_QUANTITY_PRICE,'
      ''
      '      ( select'
      '          Min('
      '            Nvl2('
      '              s2.QUANTITY,'
      '              Nvl2('
      
        '                %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~s2' +
        '.SHIPMENT_DATE],'
      '                null,'
      '                s2.SHIPMENT_DATE'
      '              ),'
      '              null'
      '            )'
      '          )'
      '        from'
      '          SALES s2'
      '        where'
      '          (s2.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (s2.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '          (s2.SALE_BRANCH_CODE is not null) and'
      '          (s2.ANNUL_EMPLOYEE_CODE is null) and'
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = s2.CLIENT_COMPANY_CODE)'
      '              )'
      '            )'
      '          ) and'
      '          (s2.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE)'
      '      ) as DIRECT_SALE_QTY_NOPRICE_DATE,'
      ''
      '      q.SALE_COUNT,'
      '      q.SPEC_PRODUCT_COUNT,'
      '      q.UPPER_LEVEL_STRUCT_PART_COUNT'
      ''
      '    from'
      '      PRODUCTS p,'
      '      ( select'
      '          spl.PRODUCT_CODE,'
      ''
      '          Sum('
      
        '            (spl.TOTAL_DETAIL_TECH_QUANTITY * spl.PRODUCT_TECH_Q' +
        'UANTITY * s.QUANTITY * p8.TECH_MEASURE_COEF)'
      '          ) as TECH_QUANTITY,'
      ''
      '          Sum('
      
        '            (spl.TOTAL_DETAIL_TECH_QUANTITY * spl.PRODUCT_TECH_Q' +
        'UANTITY * s.QUANTITY * p8.TECH_MEASURE_COEF) *'
      
        '            %PRODUCT_BASE_PSD_SINGLE_PRICE[spl.PRODUCT_CODE~s.SH' +
        'IPMENT_DATE]'
      
        '          ) as TECH_QUANTITY_PRICE,  --// ne e istinska cena - t' +
        'riabva da se korigira s koef posle'
      ''
      '          Min('
      '            Nvl2('
      
        '              (spl.TOTAL_DETAIL_TECH_QUANTITY * spl.PRODUCT_TECH' +
        '_QUANTITY * s.QUANTITY * p8.TECH_MEASURE_COEF),'
      '              Nvl2('
      
        '                %PRODUCT_BASE_PSD_SINGLE_PRICE[spl.PRODUCT_CODE~' +
        's.SHIPMENT_DATE],'
      '                null,'
      '                s.SHIPMENT_DATE'
      '              ),'
      '              null'
      '            )'
      '          ) as TECH_QUANTITY_NOPRICE_DATE,'
      ''
      
        '          Count(distinct (s.SALE_OBJECT_BRANCH_CODE * 100000000)' +
        ' + s.SALE_OBJECT_CODE) as SALE_COUNT,'
      
        '          Count(distinct spl.SPEC_PRODUCT_CODE) as SPEC_PRODUCT_' +
        'COUNT,'
      
        '          Count(distinct spl.DETAIL_CODE) as UPPER_LEVEL_STRUCT_' +
        'PART_COUNT'
      ''
      '        from'
      '          SALES s,'
      '          PRODUCTS p8,'
      '          SPEC_LINES spl'
      ''
      '        where'
      '          (s.PRODUCT_CODE = p8.PRODUCT_CODE) and'
      '          (s.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      ''
      '          (spl.PRODUCT_CODE is not null) and'
      ''
      '          (s.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '          (s.SALE_BRANCH_CODE is not null) and'
      '          (s.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '          (s.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) an' +
        'd'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_PRODUCTS tfp'
      '                where'
      '                  (tfp.PRODUCT_CODE = s.PRODUCT_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:ALL_FILTERED_PRODUCTS_2 = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_PRODUCTS_2 tfp2'
      '                where'
      '                  (tfp2.PRODUCT_CODE = spl.PRODUCT_CODE)'
      '              )'
      '            )'
      '          )'
      ''
      '        group by'
      '          spl.PRODUCT_CODE'
      '      ) q'
      ''
      '    where'
      '      (p.PRODUCT_CODE = q.PRODUCT_CODE(+)) and'
      ''
      '      (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '      (p.IS_GROUP = 0) and'
      ''
      '      ( (:ALL_FILTERED_PRODUCTS_2 = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_PRODUCTS_2 tfp2'
      '            where'
      '              (tfp2.PRODUCT_CODE = p.PRODUCT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:IS_PRODUCTION_PRODUCT = 9) or'
      '        (p.IS_PRODUCTION_PRODUCT = :IS_PRODUCTION_PRODUCT)'
      '      ) and'
      ''
      '      ( (:SELF_EXISTENT_STATUS_CODE = 9) or'
      
        '        (p.SELF_EXISTENT_STATUS_CODE = :SELF_EXISTENT_STATUS_COD' +
        'E)'
      '      ) and'
      ''
      '      ( (:IS_USED = 9) or'
      '        ( (:IS_USED = 1) and'
      '          (q.PRODUCT_CODE is not null)'
      '        ) or'
      '        ( (:IS_USED = 0) and'
      '          (q.PRODUCT_CODE is null)'
      '        )'
      '      )'
      '  ) x'
      ''
      'order by'
      '  UPPER_LEVEL_STRUCT_PART_COUNT desc,'
      '  SPEC_PRODUCT_COUNT desc,'
      '  SALE_COUNT desc,'
      '  PRODUCT_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~s2.SHIPMENT_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_BASE_PSD_SINGLE_PRICE[spl.PRODUCT_CODE~s.SHIPMENT_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_STRUCT_PART_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 56
    Top = 536
    object qryMaterialRealNeedsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMaterialRealNeedsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryMaterialRealNeedsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryMaterialRealNeedsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryMaterialRealNeedsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryMaterialRealNeedsHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryMaterialRealNeedsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryMaterialRealNeedsQUANTITY_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_PRICE'
    end
    object qryMaterialRealNeedsQUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'QUANTITY_NOPRICE_DATE'
    end
    object qryMaterialRealNeedsDIRECT_SALE_QUANTITY: TAbmesFloatField
      FieldName = 'DIRECT_SALE_QUANTITY'
    end
    object qryMaterialRealNeedsDIRECT_SALE_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'DIRECT_SALE_QUANTITY_PRICE'
    end
    object qryMaterialRealNeedsDIRECT_SALE_QTY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'DIRECT_SALE_QTY_NOPRICE_DATE'
    end
    object qryMaterialRealNeedsFULL_QUANTITY: TAbmesFloatField
      FieldName = 'FULL_QUANTITY'
    end
    object qryMaterialRealNeedsFULL_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'FULL_QUANTITY_PRICE'
    end
    object qryMaterialRealNeedsFULL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'FULL_QUANTITY_NOPRICE_DATE'
    end
    object qryMaterialRealNeedsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryMaterialRealNeedsSALE_COUNT: TAbmesFloatField
      FieldName = 'SALE_COUNT'
    end
    object qryMaterialRealNeedsSPEC_PRODUCT_COUNT: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_COUNT'
    end
    object qryMaterialRealNeedsUPPER_LEVEL_STRUCT_PART_COUNT: TAbmesFloatField
      FieldName = 'UPPER_LEVEL_STRUCT_PART_COUNT'
    end
    object qryMaterialRealNeedsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryMaterialRealNeedsACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryMaterialRealNeedsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryMaterialRealNeedsACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object qryMaterialRealNeedsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryMaterialRealNeedsIS_PRODUCTION_PRODUCT: TAbmesFloatField
      FieldName = 'IS_PRODUCTION_PRODUCT'
    end
  end
  object prvMaterialRealNeeds: TDataSetProvider
    DataSet = qryMaterialRealNeeds
    Left = 56
    Top = 488
  end
  object qryMaterialRealNeedsBySale: TAbmesSQLQuery
    BeforeOpen = qryMaterialRealNeedsBySaleBeforeOpen
    AfterClose = qryMaterialRealNeedsBySaleAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      '  s.SALE_ORDER_TYPE_CODE,'
      ''
      '  ( select'
      '      po.PROCESS_OBJECT_IDENTIFIER'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (po.PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '      (po.PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '  ) as SALE_IDENTIFIER,'
      ''
      '  s.CLIENT_COMPANY_CODE,'
      ''
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '  ) as CLIENT_SHORT_NAME,'
      ''
      '  s.SHIPMENT_DATE,'
      '  s.QUANTITY,'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      
        '  %PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[p.PRODUCT_CODE~s.' +
        'CLIENT_COMPANY_CODE~p] as CLIENT_PRODUCT_NAME,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOC,'
      ''
      '  m.MEASURE_ABBREV,'
      
        '  Sum((spl.TOTAL_DETAIL_TECH_QUANTITY * spl.PRODUCT_TECH_QUANTIT' +
        'Y) / p2.TECH_MEASURE_COEF) as STRUCT_PART_SINGLE_QUANTITY,'
      
        '  (Sum((spl.TOTAL_DETAIL_TECH_QUANTITY * spl.PRODUCT_TECH_QUANTI' +
        'TY) / p2.TECH_MEASURE_COEF) * s.QUANTITY * p.TECH_MEASURE_COEF) ' +
        'as STRUCT_PART_TOTAL_QUANTITY,'
      '  m2.MEASURE_ABBREV as STRUCT_PART_MEASURE_ABBREV,'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO'
      ''
      'from'
      '  SALES s,'
      '  SPEC_LINES spl,'
      '  PRODUCTS p,'
      '  MEASURES m,'
      '  PRODUCTS p2,'
      '  MEASURES m2'
      ''
      'where'
      '  (s.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (p.MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '  (spl.PRODUCT_CODE = p2.PRODUCT_CODE) and'
      '  (p2.MEASURE_CODE = m2.MEASURE_CODE(+)) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '  (s.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '  (s.SALE_BRANCH_CODE is not null) and'
      '  (s.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '  ( (:ALL_FILTERED_COMPANIES = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_COMPANIES tfc'
      '        where'
      '          (tfc.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = s.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (s.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) and'
      ''
      '  (spl.PRODUCT_CODE = :PRODUCT_CODE)'
      ''
      'group by'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      '  s.SALE_ORDER_TYPE_CODE,'
      '  s.CLIENT_COMPANY_CODE,'
      '  s.SHIPMENT_DATE,'
      '  s.QUANTITY,'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  p.TECH_MEASURE_COEF,'
      '  p.PARTNER_PRODUCT_NAMES,'
      '  m.MEASURE_ABBREV,'
      '  m2.MEASURE_ABBREV,'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO'
      ''
      'order by'
      '  STRUCT_PART_TOTAL_QUANTITY desc,'
      '  SALE_IDENTIFIER'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[p.PRODUCT_CODE~s.CLI' +
          'ENT_COMPANY_CODE~p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 216
    Top = 536
    object qryMaterialRealNeedsBySaleSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMaterialRealNeedsBySaleSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMaterialRealNeedsBySaleSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object qryMaterialRealNeedsBySaleSALE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_IDENTIFIER'
      Size = 100
    end
    object qryMaterialRealNeedsBySaleCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object qryMaterialRealNeedsBySaleCLIENT_SHORT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_SHORT_NAME'
    end
    object qryMaterialRealNeedsBySaleSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
    end
    object qryMaterialRealNeedsBySaleQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryMaterialRealNeedsBySalePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryMaterialRealNeedsBySalePRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryMaterialRealNeedsBySalePRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryMaterialRealNeedsBySaleCLIENT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 250
    end
    object qryMaterialRealNeedsBySaleDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryMaterialRealNeedsBySaleDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryMaterialRealNeedsBySaleHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryMaterialRealNeedsBySaleMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryMaterialRealNeedsBySaleSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_SINGLE_QUANTITY'
    end
    object qryMaterialRealNeedsBySaleSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_TOTAL_QUANTITY'
    end
    object qryMaterialRealNeedsBySaleSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'STRUCT_PART_MEASURE_ABBREV'
      Size = 5
    end
    object qryMaterialRealNeedsBySaleREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object qryMaterialRealNeedsBySaleREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
  end
  object prvMaterialRealNeedsBySale: TDataSetProvider
    DataSet = qryMaterialRealNeedsBySale
    Left = 216
    Top = 488
  end
  object qryMaterialRealNeedsByResultProduct: TAbmesSQLQuery
    BeforeOpen = qryMaterialRealNeedsByResultProductBeforeOpen
    AfterClose = qryMaterialRealNeedsByResultProductAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOC,'
      
        '  Count(distinct (s.SALE_OBJECT_BRANCH_CODE * 100000000) + s.SAL' +
        'E_OBJECT_CODE) as SALE_COUNT,'
      '  Sum(s.QUANTITY) as QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      
        '  ( Sum(((spl.TOTAL_DETAIL_TECH_QUANTITY * spl.PRODUCT_TECH_QUAN' +
        'TITY) / p2.TECH_MEASURE_COEF) * s.QUANTITY * p.TECH_MEASURE_COEF' +
        ') /'
      '    Sum(s.QUANTITY * p.TECH_MEASURE_COEF)'
      '  ) as STRUCT_PART_SINGLE_QUANTITY,'
      ''
      
        '  Sum(((spl.TOTAL_DETAIL_TECH_QUANTITY * spl.PRODUCT_TECH_QUANTI' +
        'TY) / p2.TECH_MEASURE_COEF) * s.QUANTITY * p.TECH_MEASURE_COEF) ' +
        'as STRUCT_PART_TOTAL_QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p2.MEASURE_CODE)'
      '  ) as STRUCT_PART_MEASURE_ABBREV'
      ''
      'from'
      '  SALES s,'
      '  SPEC_LINES spl,'
      '  PRODUCTS p,'
      '  PRODUCTS p2'
      ''
      'where'
      '  (s.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (spl.PRODUCT_CODE = p2.PRODUCT_CODE) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '  (s.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '  (s.SALE_BRANCH_CODE is not null) and'
      '  (s.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '  ( (:ALL_FILTERED_COMPANIES = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_COMPANIES tfc'
      '        where'
      '          (tfc.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = s.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (s.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) and'
      ''
      '  (spl.PRODUCT_CODE = :PRODUCT_CODE)'
      ''
      'group by'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.PARTNER_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  p.TECH_MEASURE_COEF,'
      '  p.MEASURE_CODE,'
      '  p2.MEASURE_CODE'
      ''
      'order by'
      '  STRUCT_PART_TOTAL_QUANTITY desc,'
      '  PRODUCT_NAME'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 384
    Top = 536
    object qryMaterialRealNeedsByResultProductPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMaterialRealNeedsByResultProductPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryMaterialRealNeedsByResultProductPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryMaterialRealNeedsByResultProductPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryMaterialRealNeedsByResultProductDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryMaterialRealNeedsByResultProductDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryMaterialRealNeedsByResultProductHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryMaterialRealNeedsByResultProductSALE_COUNT: TAbmesFloatField
      FieldName = 'SALE_COUNT'
    end
    object qryMaterialRealNeedsByResultProductQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryMaterialRealNeedsByResultProductMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryMaterialRealNeedsByResultProductSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_SINGLE_QUANTITY'
    end
    object qryMaterialRealNeedsByResultProductSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_TOTAL_QUANTITY'
    end
    object qryMaterialRealNeedsByResultProductSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'STRUCT_PART_MEASURE_ABBREV'
      Size = 5
    end
  end
  object prvMaterialRealNeedsByResultProduct: TDataSetProvider
    DataSet = qryMaterialRealNeedsByResultProduct
    Left = 384
    Top = 488
  end
  object qryMaterialRealNeedsByDetail: TAbmesSQLQuery
    BeforeOpen = qryMaterialRealNeedsByDetailBeforeOpen
    AfterClose = qryMaterialRealNeedsByDetailAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOC,'
      
        '  Sum((spl.TOTAL_DETAIL_TECH_QUANTITY / p.TECH_MEASURE_COEF) * s' +
        '.QUANTITY) as QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      '  '
      
        '  ( Sum(((spl.TOTAL_DETAIL_TECH_QUANTITY * spl.PRODUCT_TECH_QUAN' +
        'TITY) / p2.TECH_MEASURE_COEF) * s.QUANTITY * p8.TECH_MEASURE_COE' +
        'F) /'
      
        '    Sum((spl.TOTAL_DETAIL_TECH_QUANTITY / p.TECH_MEASURE_COEF) *' +
        ' s.QUANTITY * p8.TECH_MEASURE_COEF)'
      '  ) as STRUCT_PART_SINGLE_QUANTITY,'
      ''
      
        '  Sum(((spl.TOTAL_DETAIL_TECH_QUANTITY * spl.PRODUCT_TECH_QUANTI' +
        'TY) / p2.TECH_MEASURE_COEF) * s.QUANTITY * p8.TECH_MEASURE_COEF)' +
        ' as STRUCT_PART_TOTAL_QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p2.MEASURE_CODE)'
      '  ) as STRUCT_PART_MEASURE_ABBREV'
      ''
      'from'
      '  SALES s,'
      '  PRODUCTS p8,'
      '  SPEC_LINES spl,'
      '  PRODUCTS p,'
      '  PRODUCTS p2'
      ''
      'where'
      '  (s.PRODUCT_CODE = p8.PRODUCT_CODE) and'
      '  (s.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '  (spl.DETAIL_CODE = p.PRODUCT_CODE) and'
      '  (spl.PRODUCT_CODE = p2.PRODUCT_CODE) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '  (s.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '  (s.SALE_BRANCH_CODE is not null) and'
      '  (s.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '  ( (:ALL_FILTERED_COMPANIES = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_COMPANIES tfc'
      '        where'
      '          (tfc.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = s.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (s.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) and'
      ''
      '  (spl.PRODUCT_CODE = :PRODUCT_CODE)'
      ''
      'group by'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.PARTNER_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  p.MEASURE_CODE,'
      '  p2.MEASURE_CODE'
      ''
      'order by'
      '  STRUCT_PART_TOTAL_QUANTITY desc,'
      '  PRODUCT_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 568
    Top = 536
    object qryMaterialRealNeedsByDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMaterialRealNeedsByDetailPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryMaterialRealNeedsByDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryMaterialRealNeedsByDetailPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryMaterialRealNeedsByDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryMaterialRealNeedsByDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryMaterialRealNeedsByDetailHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryMaterialRealNeedsByDetailQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryMaterialRealNeedsByDetailMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryMaterialRealNeedsByDetailSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_SINGLE_QUANTITY'
    end
    object qryMaterialRealNeedsByDetailSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_TOTAL_QUANTITY'
    end
    object qryMaterialRealNeedsByDetailSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'STRUCT_PART_MEASURE_ABBREV'
      Size = 5
    end
  end
  object prvMaterialRealNeedsByDetail: TDataSetProvider
    DataSet = qryMaterialRealNeedsByDetail
    Left = 568
    Top = 488
  end
  object qryResultProductRealNeeds: TAbmesSQLQuery
    BeforeOpen = qryResultProductRealNeedsBeforeOpen
    AfterClose = qryResultProductRealNeedsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.*,'
      ''
      '  NullIf('
      '    ( Coalesce(x.DETAIL_QUANTITY, 0) +'
      '      Coalesce(x.MATERIAL_QUANTITY, 0)'
      '    ),'
      '    0'
      '  ) as STRUCT_PART_QUANTITY,'
      ''
      '  NullIf('
      '    ( Coalesce(x.DETAIL_QUANTITY_PRICE, 0) +'
      '      Coalesce(x.MATERIAL_QUANTITY_PRICE, 0)'
      '    ),'
      '    0'
      '  ) as STRUCT_PART_QUANTITY_PRICE,'
      ''
      '  NullIf('
      '    Least('
      
        '      Coalesce(x.DETAIL_QUANTITY_NOPRICE_DATE, CommonConsts.MaxD' +
        'ate),'
      
        '      Coalesce(x.MATERIAL_QUANTITY_NOPRICE_DATE, CommonConsts.Ma' +
        'xDate)'
      '    ),'
      '    CommonConsts.MaxDate'
      '  ) as STRUCT_PART_QTY_NOPRICE_DATE'
      ''
      'from'
      '  ( select'
      '      p.PRODUCT_CODE,'
      '      p.CUSTOM_CODE as PRODUCT_NO,'
      '      p.NAME as PRODUCT_NAME,'
      '      p.ACCOUNT_MEASURE_COEF,'
      '      p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '      p.DOC_BRANCH_CODE,'
      '      p.DOC_CODE,'
      '      %HAS_DOC_ITEMS[p] as HAS_DOC,'
      ''
      '      p.MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.MEASURE_CODE)'
      '      ) as MEASURE_ABBREV,'
      '  '
      '      p.ACCOUNT_MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '      ) as ACCOUNT_MEASURE_ABBREV,'
      '  '
      
        '      Count(distinct (s.SALE_OBJECT_BRANCH_CODE * 100000000) + s' +
        '.SALE_OBJECT_CODE) as SALE_COUNT,'
      ''
      '      Sum(s.QUANTITY) as QUANTITY,'
      ''
      '      Sum('
      '        s.QUANTITY *'
      
        '        %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~s.SHIPMENT' +
        '_DATE]'
      '      ) as QUANTITY_PRICE,'
      ''
      '      Min('
      '        Nvl2('
      '          s.QUANTITY,'
      '          Nvl2('
      
        '            %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~s.SHIP' +
        'MENT_DATE],'
      '            null,'
      '            s.SHIPMENT_DATE'
      '          ),'
      '          null'
      '        )'
      '      ) as QUANTITY_NOPRICE_DATE,'
      ''
      '      ( select'
      
        '          /*+ INDEX(s2 idxSALES__PRODUCT) INDEX(spl2 idxSL__DETA' +
        'IL) NO_USE_HASH(s2 spl2) NO_USE_MERGE(s2 spl2) USE_NL(s2 spl2) *' +
        '/'
      '          Sum('
      
        '            (spl2.TOTAL_DETAIL_TECH_QUANTITY * s2.QUANTITY * p2.' +
        'TECH_MEASURE_COEF / p.TECH_MEASURE_COEF)'
      '          )'
      '        from'
      '          SALES s2,'
      '          PRODUCTS p2,'
      '          SPEC_LINES spl2'
      '        where'
      '          (s2.PRODUCT_CODE = p2.PRODUCT_CODE) and'
      '          (s2.PRODUCT_CODE = spl2.SPEC_PRODUCT_CODE) and'
      ''
      '          (spl2.DETAIL_CODE = p.PRODUCT_CODE) and'
      ''
      '          (spl2.PARENT_SPEC_LINE_CODE is not null) and'
      '          ( (spl2.PRODUCT_CODE is null) or'
      '            (spl2.DETAIL_CODE <> spl2.PRODUCT_CODE)'
      '          ) and'
      ''
      '          (s2.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '          (s2.SALE_BRANCH_CODE is not null) and'
      '          (s2.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '          (s2.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) a' +
        'nd'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = s2.CLIENT_COMPANY_CODE)'
      '              )'
      '            )'
      '          )'
      '      )  as DETAIL_QUANTITY,'
      ''
      '      ( select'
      
        '          /*+ INDEX(s2 idxSALES__PRODUCT) INDEX(spl2 idxSL__DETA' +
        'IL) NO_USE_HASH(s2 spl2) NO_USE_MERGE(s2 spl2) USE_NL(s2 spl2) *' +
        '/'
      '          Sum('
      
        '            (spl2.TOTAL_DETAIL_TECH_QUANTITY * s2.QUANTITY * p2.' +
        'TECH_MEASURE_COEF / p.TECH_MEASURE_COEF) *'
      
        '            %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~s2.SHI' +
        'PMENT_DATE]'
      '          )'
      '        from'
      '          SALES s2,'
      '          PRODUCTS p2,'
      '          SPEC_LINES spl2'
      '        where'
      '          (s2.PRODUCT_CODE = p2.PRODUCT_CODE) and'
      '          (s2.PRODUCT_CODE = spl2.SPEC_PRODUCT_CODE) and'
      ''
      '          (spl2.DETAIL_CODE = p.PRODUCT_CODE) and'
      ''
      '          (spl2.PARENT_SPEC_LINE_CODE is not null) and'
      '          ( (spl2.PRODUCT_CODE is null) or'
      '            (spl2.DETAIL_CODE <> spl2.PRODUCT_CODE)'
      '          ) and'
      ''
      '          (s2.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '          (s2.SALE_BRANCH_CODE is not null) and'
      '          (s2.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '          (s2.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) a' +
        'nd'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = s2.CLIENT_COMPANY_CODE)'
      '              )'
      '            )'
      '          )'
      '      )  as DETAIL_QUANTITY_PRICE,'
      ''
      '      ( select'
      
        '          /*+ INDEX(s2 idxSALES__PRODUCT) INDEX(spl2 idxSL__DETA' +
        'IL) NO_USE_HASH(s2 spl2) NO_USE_MERGE(s2 spl2) USE_NL(s2 spl2) *' +
        '/'
      '          Min('
      '            Nvl2('
      
        '              (spl2.TOTAL_DETAIL_TECH_QUANTITY * s2.QUANTITY * p' +
        '2.TECH_MEASURE_COEF / p.TECH_MEASURE_COEF),'
      '              Nvl2('
      
        '                %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~s2' +
        '.SHIPMENT_DATE],'
      '                null,'
      '                s2.SHIPMENT_DATE'
      '              ),'
      '              null'
      '            )'
      '          )'
      '        from'
      '          SALES s2,'
      '          PRODUCTS p2,'
      '          SPEC_LINES spl2'
      '        where'
      '          (s2.PRODUCT_CODE = p2.PRODUCT_CODE) and'
      '          (s2.PRODUCT_CODE = spl2.SPEC_PRODUCT_CODE) and'
      ''
      '          (spl2.DETAIL_CODE = p.PRODUCT_CODE) and'
      ''
      '          (spl2.PARENT_SPEC_LINE_CODE is not null) and'
      '          ( (spl2.PRODUCT_CODE is null) or'
      '            (spl2.DETAIL_CODE <> spl2.PRODUCT_CODE)'
      '          ) and'
      ''
      '          (s2.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '          (s2.SALE_BRANCH_CODE is not null) and'
      '          (s2.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '          (s2.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) a' +
        'nd'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = s2.CLIENT_COMPANY_CODE)'
      '              )'
      '            )'
      '          )'
      '      )  as DETAIL_QUANTITY_NOPRICE_DATE,'
      ''
      '      ( select'
      
        '          /*+ INDEX(s3 idxSALES__PRODUCT) INDEX(spl3 idxSL__PROD' +
        'UCT) NO_USE_HASH(s3 spl3) NO_USE_MERGE(s3 spl3) USE_NL(s3 spl3) ' +
        '*/'
      '          Sum('
      
        '            (spl3.TOTAL_DETAIL_TECH_QUANTITY * spl3.PRODUCT_TECH' +
        '_QUANTITY * s3.QUANTITY * p3.TECH_MEASURE_COEF / p.TECH_MEASURE_' +
        'COEF)'
      '          )'
      '        from'
      '          SALES s3,'
      '          PRODUCTS p3,'
      '          SPEC_LINES spl3'
      '        where'
      '          (s3.PRODUCT_CODE = p3.PRODUCT_CODE) and'
      '          (s3.PRODUCT_CODE = spl3.SPEC_PRODUCT_CODE) and'
      ''
      '          (spl3.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '          (s3.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '          (s3.SALE_BRANCH_CODE is not null) and'
      '          (s3.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '          (s3.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) a' +
        'nd'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = s3.CLIENT_COMPANY_CODE)'
      ''
      '              )'
      '            )'
      '          )'
      '      ) as MATERIAL_QUANTITY,'
      ''
      '      ( select'
      
        '          /*+ INDEX(s3 idxSALES__PRODUCT) INDEX(spl3 idxSL__PROD' +
        'UCT) NO_USE_HASH(s3 spl3) NO_USE_MERGE(s3 spl3) USE_NL(s3 spl3) ' +
        '*/'
      '          Sum('
      
        '            (spl3.TOTAL_DETAIL_TECH_QUANTITY * spl3.PRODUCT_TECH' +
        '_QUANTITY * s3.QUANTITY * p3.TECH_MEASURE_COEF / p.TECH_MEASURE_' +
        'COEF) *'
      
        '            %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~s3.SHI' +
        'PMENT_DATE]'
      '          )'
      '        from'
      '          SALES s3,'
      '          PRODUCTS p3,'
      '          SPEC_LINES spl3'
      '        where'
      '          (s3.PRODUCT_CODE = p3.PRODUCT_CODE) and'
      '          (s3.PRODUCT_CODE = spl3.SPEC_PRODUCT_CODE) and'
      ''
      '          (spl3.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '          (s3.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '          (s3.SALE_BRANCH_CODE is not null) and'
      '          (s3.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '          (s3.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) a' +
        'nd'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = s3.CLIENT_COMPANY_CODE)'
      ''
      '              )'
      '            )'
      '          )'
      '      ) as MATERIAL_QUANTITY_PRICE,'
      ''
      '      ( select'
      
        '          /*+ INDEX(s3 idxSALES__PRODUCT) INDEX(spl3 idxSL__PROD' +
        'UCT) NO_USE_HASH(s3 spl3) NO_USE_MERGE(s3 spl3) USE_NL(s3 spl3) ' +
        '*/'
      '          Min('
      '            Nvl2('
      
        '              (spl3.TOTAL_DETAIL_TECH_QUANTITY * spl3.PRODUCT_TE' +
        'CH_QUANTITY * s3.QUANTITY * p3.TECH_MEASURE_COEF / p.TECH_MEASUR' +
        'E_COEF),'
      '              Nvl2('
      
        '                %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~s3' +
        '.SHIPMENT_DATE],'
      '                null,'
      '                s3.SHIPMENT_DATE'
      '              ),'
      '              null'
      '            )'
      '          )'
      '        from'
      '          SALES s3,'
      '          PRODUCTS p3,'
      '          SPEC_LINES spl3'
      '        where'
      '          (s3.PRODUCT_CODE = p3.PRODUCT_CODE) and'
      '          (s3.PRODUCT_CODE = spl3.SPEC_PRODUCT_CODE) and'
      ''
      '          (spl3.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '          (s3.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '          (s3.SALE_BRANCH_CODE is not null) and'
      '          (s3.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '          (s3.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) a' +
        'nd'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = s3.CLIENT_COMPANY_CODE)'
      ''
      '              )'
      '            )'
      '          )'
      '      ) as MATERIAL_QUANTITY_NOPRICE_DATE'
      ''
      '    from'
      '      SALES s,'
      '      PRODUCTS p'
      ''
      '    where'
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '      (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '      (s.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '      (s.SALE_BRANCH_CODE is not null) and'
      '      (s.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '      (s.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) and'
      ''
      '      ( (:ALL_FILTERED_COMPANIES = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_COMPANIES tfc'
      '            where'
      '              (tfc.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_PRODUCTS tfp'
      '            where'
      '              (tfp.PRODUCT_CODE = s.PRODUCT_CODE)'
      '          )'
      '        )'
      '      )'
      ''
      '    group by'
      '      p.PRODUCT_CODE,'
      '      p.CUSTOM_CODE,'
      '      p.NAME,'
      '      p.DOC_BRANCH_CODE,'
      '      p.DOC_CODE,'
      '      p.MEASURE_CODE,'
      '      p.ACCOUNT_MEASURE_CODE,'
      '      p.ACCOUNT_MEASURE_COEF,'
      '      p.PARTNER_PRODUCT_NAMES,'
      '      p.TECH_MEASURE_COEF'
      '  ) x'
      ''
      'order by'
      '  SALE_COUNT desc,'
      '  PRODUCT_NAME'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~s.SHIPMENT_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~s2.SHIPMENT_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~s3.SHIPMENT_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 56
    Top = 56
    object qryResultProductRealNeedsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryResultProductRealNeedsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryResultProductRealNeedsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryResultProductRealNeedsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryResultProductRealNeedsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryResultProductRealNeedsHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryResultProductRealNeedsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryResultProductRealNeedsSALE_COUNT: TAbmesFloatField
      FieldName = 'SALE_COUNT'
    end
    object qryResultProductRealNeedsACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object qryResultProductRealNeedsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryResultProductRealNeedsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryResultProductRealNeedsACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryResultProductRealNeedsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryResultProductRealNeedsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryResultProductRealNeedsQUANTITY_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_PRICE'
    end
    object qryResultProductRealNeedsQUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'QUANTITY_NOPRICE_DATE'
    end
    object qryResultProductRealNeedsDETAIL_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_QUANTITY'
    end
    object qryResultProductRealNeedsDETAIL_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'DETAIL_QUANTITY_PRICE'
    end
    object qryResultProductRealNeedsDETAIL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'DETAIL_QUANTITY_NOPRICE_DATE'
    end
    object qryResultProductRealNeedsMATERIAL_QUANTITY: TAbmesFloatField
      FieldName = 'MATERIAL_QUANTITY'
    end
    object qryResultProductRealNeedsMATERIAL_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'MATERIAL_QUANTITY_PRICE'
    end
    object qryResultProductRealNeedsMATERIAL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MATERIAL_QUANTITY_NOPRICE_DATE'
    end
    object qryResultProductRealNeedsSTRUCT_PART_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_QUANTITY'
    end
    object qryResultProductRealNeedsSTRUCT_PART_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'STRUCT_PART_QUANTITY_PRICE'
    end
    object qryResultProductRealNeedsSTRUCT_PART_QTY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'STRUCT_PART_QTY_NOPRICE_DATE'
    end
  end
  object prvResultProductRealNeeds: TDataSetProvider
    DataSet = qryResultProductRealNeeds
    Left = 56
    Top = 8
  end
  object qryResultProductRealNeedsBySale: TAbmesSQLQuery
    BeforeOpen = qryResultProductRealNeedsBySaleBeforeOpen
    AfterClose = qryResultProductRealNeedsBySaleAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      '  s.SALE_ORDER_TYPE_CODE,'
      ''
      '  ( select'
      '      po.PROCESS_OBJECT_IDENTIFIER'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (po.PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '      (po.PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '  ) as SALE_IDENTIFIER,'
      ''
      '  s.CLIENT_COMPANY_CODE,'
      ''
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '  ) as CLIENT_SHORT_NAME,'
      ''
      '  s.SHIPMENT_DATE,'
      '  s.QUANTITY,'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.ACCOUNT_MEASURE_COEF,'
      ''
      
        '  %PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[p.PRODUCT_CODE~s.' +
        'CLIENT_COMPANY_CODE~p] as CLIENT_PRODUCT_NAME,'
      ''
      '  m.MEASURE_ABBREV,'
      '  ma.MEASURE_ABBREV as ACCOUNT_MEASURE_ABBREV,'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO'
      ''
      'from'
      '  SALES s,'
      '  PRODUCTS p,'
      '  MEASURES m,'
      '  MEASURES ma'
      ''
      'where'
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (p.MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '  (p.ACCOUNT_MEASURE_CODE = ma.MEASURE_CODE(+)) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '  (s.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      '  (s.SALE_BRANCH_CODE is not null) and'
      '  (s.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '  ( (:ALL_FILTERED_COMPANIES = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_COMPANIES tfc'
      '        where'
      '          (tfc.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (s.SHIPMENT_DATE between :BEGIN_DATE and :END_DATE) and'
      ''
      '  (s.PRODUCT_CODE = :PRODUCT_CODE)'
      ''
      'order by'
      '  s.QUANTITY desc,'
      '  SALE_IDENTIFIER'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[p.PRODUCT_CODE~s.CLI' +
          'ENT_COMPANY_CODE~p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 216
    Top = 56
    object qryResultProductRealNeedsBySaleSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryResultProductRealNeedsBySaleSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryResultProductRealNeedsBySaleSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object qryResultProductRealNeedsBySaleSALE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_IDENTIFIER'
      Size = 100
    end
    object qryResultProductRealNeedsBySaleCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object qryResultProductRealNeedsBySaleCLIENT_SHORT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_SHORT_NAME'
    end
    object qryResultProductRealNeedsBySaleSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
    end
    object qryResultProductRealNeedsBySaleQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryResultProductRealNeedsBySalePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryResultProductRealNeedsBySalePRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryResultProductRealNeedsBySalePRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryResultProductRealNeedsBySaleMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryResultProductRealNeedsBySaleACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object qryResultProductRealNeedsBySaleACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryResultProductRealNeedsBySaleREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object qryResultProductRealNeedsBySaleREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object qryResultProductRealNeedsBySaleCLIENT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 250
    end
  end
  object prvResultProductRealNeedsBySale: TDataSetProvider
    DataSet = qryResultProductRealNeedsBySale
    Left = 216
    Top = 8
  end
  object qryModelOpDeptDetailFlow: TAbmesSQLQuery
    BeforeOpen = qryModelOpDeptDetailFlowBeforeOpen
    AfterClose = qryModelOpDeptDetailFlowAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
        Name = 'ALL_FILTERED_PRODUCTS_3'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  /*+ USE_NL(mlmso mlms mll ml) */'
      '  mlmso.DEPT_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = mlmso.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.NAME'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = mlmso.DEPT_CODE)'
      '  ) as DEPT_NAME,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[d]'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = mlmso.DEPT_CODE)'
      '  ) as DEPT_HAS_DOC,'
      ''
      '  ( select'
      '      ( case'
      '          when (ContextDate between d.BEGIN_DATE and d.END_DATE)'
      '          then 1'
      '          else 0'
      '        end'
      '      ) as IS_ACTIVE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = mlmso.DEPT_CODE)'
      '  ) as DEPT_IS_ACTIVE,'
      ''
      '  ( select'
      '      p.PARENT_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_GROUP_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = mll.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = mll.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NAME,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = mll.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = mll.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_TECH_MEASURE_ABBR,'
      ''
      '  mll.DETAIL_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_NAME,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_HAS_DOC,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE) and'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+))'
      '  ) as DETAIL_TECH_MEASURE_ABBR,'
      ''
      '  ( select'
      '      NullIf(Count(*), 0)'
      '    from'
      '      BASE_GROUPS bg,'
      '      BASE_GROUP_PRODUCTS bgp'
      '    where'
      '      (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '      (bgp.PRODUCT_CODE = mll.DETAIL_CODE) and'
      '      (bg.GROUP_DEPT_CODE = mlmso.DEPT_CODE)'
      '  ) as BASE_GROUP_COUNT,'
      ''
      '  Sum(mlmso.VARIANT_DETAIL_TECH_QUANTITY) as TECH_QUANTITY,'
      ''
      '  ( Coalesce('
      '      Sum('
      '        ( ( mlmso.VARIANT_DETAIL_TECH_QUANTITY *'
      '            Coalesce('
      
        '              ( DateTimeUtils.CountIntersectWorkdays(mlmso.TREAT' +
        'MENT_BEGIN_DATE, mlmso.TREATMENT_END_DATE, :BEGIN_DATE, :END_DAT' +
        'E) /'
      
        '                NullIf(%COUNT_WORKDAYS[mlmso.TREATMENT_BEGIN_DAT' +
        'E~mlmso.TREATMENT_END_DATE], 0)'
      '              ),'
      
        '              ( DateTimeUtils.DatePeriodIntersectLength(mlmso.TR' +
        'EATMENT_BEGIN_DATE, mlmso.TREATMENT_END_DATE, :BEGIN_DATE, :END_' +
        'DATE) /'
      
        '                (mlmso.TREATMENT_END_DATE - mlmso.TREATMENT_BEGI' +
        'N_DATE + 1)'
      '              )'
      '            )'
      '          ) /'
      '          mlmso.HOUR_TECH_QUANTITY'
      '        ) /'
      '        Coalesce('
      '          ( select'
      '              dp.PARALLEL_PROCESS_COUNT'
      '            from'
      '              DEPT_PERIODS dp'
      '            where'
      '              (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '              (mlmso.TREATMENT_BEGIN_DATE between dp.BEGIN_DATE ' +
        'and dp.END_DATE)'
      '          ),'
      '          1'
      '        )'
      '      ),'
      '      0'
      '    ) +'
      '    Coalesce('
      '      Sum('
      '        ( case'
      '            when (mlmso.SETUP_PROFESSION_CODE is not null) and'
      
        '                 (mlmso.TREATMENT_BEGIN_DATE between :BEGIN_DATE' +
        ' and :END_DATE)'
      '            then'
      '              mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY'
      '          end'
      '        ) /'
      '        Coalesce('
      '          ( select'
      '              dp.PARALLEL_PROCESS_COUNT'
      '            from'
      '              DEPT_PERIODS dp'
      '            where'
      '              (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '              (mlmso.TREATMENT_BEGIN_DATE between dp.BEGIN_DATE ' +
        'and dp.END_DATE)'
      '          ),'
      '          1'
      '        )'
      '      ),'
      '      0'
      '    )'
      '  ) as CAPACITY_BUSY_HOURS,'
      ''
      '  Count(*) as OPERATION_COUNT,'
      
        '  Count(distinct ((mll.ML_OBJECT_BRANCH_CODE * %MAX_NUMBER) + ml' +
        'l.ML_OBJECT_CODE)) as MODEL_COUNT,'
      ''
      '  ( select'
      '      sp.SPEC_PRODUCT_CODE'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as SPEC_PRODUCT_CODE'
      ''
      'from'
      '  MLMS_OPERATIONS mlmso,'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml'
      ''
      'where'
      '  (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      ''
      
        '  (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and'
      ''
      '  (mll.ANNUL_EMPLOYEE_CODE is null) and'
      '  (mll.IS_WASTE_FORK = 0) and'
      ''
      '  (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and'
      '  (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      '  (ml.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '  (mlmso.OPERATION_TYPE_CODE = 2) and'
      '  (mlmso.MLMS_OPERATION_VARIANT_NO >= 0) and'
      '  (mlmso.IS_ACTIVE = 1) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '        where'
      '          (tfd.DEPT_CODE = mlmso.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS_2 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS_2 tfd'
      '        where'
      '          (tfd.DEPT_CODE = mlmso.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS_3 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS_3 tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = mll.DETAIL_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (mlmso.TREATMENT_END_DATE >= :BEGIN_DATE) and'
      '  (mlmso.TREATMENT_BEGIN_DATE <= :END_DATE) and'
      ''
      '  ( (:TOOL_DETAIL_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          PRODUCT_RELATIONS pr'
      '        where'
      '          (pr.ANCESTOR_PRODUCT_CODE = :TOOL_DETAIL_CODE) and'
      '          (pr.DESCENDANT_PRODUCT_CODE in'
      '            ( mlmso.PROGRAM_TOOL_PRODUCT_CODE,'
      '              mlmso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '              mlmso.TYPICAL_TOOL_PRODUCT_CODE'
      '            )'
      '          )'
      '      )'
      '    ) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          SPEC_LINES tool_sl'
      '        where'
      '          (tool_sl.SPEC_PRODUCT_CODE in'
      '            ( mlmso.PROGRAM_TOOL_PRODUCT_CODE,'
      '              mlmso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '              mlmso.TYPICAL_TOOL_PRODUCT_CODE'
      '            )'
      '          ) and'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                PRODUCT_RELATIONS pr'
      '              where'
      
        '                (pr.ANCESTOR_PRODUCT_CODE = :TOOL_DETAIL_CODE) a' +
        'nd'
      
        '                (pr.DESCENDANT_PRODUCT_CODE in (tool_sl.DETAIL_C' +
        'ODE, tool_sl.PRODUCT_CODE))'
      '            )'
      '          )'
      '      )'
      '    )'
      '  )'
      ''
      'group by'
      '  mlmso.DEPT_CODE,'
      '  mll.DETAIL_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS[mlmso.TREATMENT_BEGIN_DATE~mlmso.TREATMENT_END_DA' +
          'TE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'MAX_NUMBER'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'FLOW_LEVEL'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'FLOW_TYPE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPT_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DETAIL_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 568
    Top = 104
    object qryModelOpDeptDetailFlowDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryModelOpDeptDetailFlowDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryModelOpDeptDetailFlowDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryModelOpDeptDetailFlowDEPT_HAS_DOC: TAbmesFloatField
      FieldName = 'DEPT_HAS_DOC'
    end
    object qryModelOpDeptDetailFlowDEPT_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DEPT_IS_ACTIVE'
    end
    object qryModelOpDeptDetailFlowDETAIL_GROUP_CODE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryModelOpDeptDetailFlowDETAIL_GROUP_NO: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_NO'
    end
    object qryModelOpDeptDetailFlowDETAIL_GROUP_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_GROUP_NAME'
      Size = 100
    end
    object qryModelOpDeptDetailFlowDETAIL_GROUP_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_IS_ACTIVE'
    end
    object qryModelOpDeptDetailFlowDETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_GROUP_TECH_MEASURE_ABBR'
      Size = 5
    end
    object qryModelOpDeptDetailFlowDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryModelOpDeptDetailFlowDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qryModelOpDeptDetailFlowDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryModelOpDeptDetailFlowDETAIL_HAS_DOC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOC'
    end
    object qryModelOpDeptDetailFlowDETAIL_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_IS_ACTIVE'
    end
    object qryModelOpDeptDetailFlowDETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_TECH_MEASURE_ABBR'
      Size = 5
    end
    object qryModelOpDeptDetailFlowBASE_GROUP_COUNT: TAbmesFloatField
      FieldName = 'BASE_GROUP_COUNT'
    end
    object qryModelOpDeptDetailFlowTECH_QUANTITY: TAbmesFloatField
      FieldName = 'TECH_QUANTITY'
    end
    object qryModelOpDeptDetailFlowCAPACITY_BUSY_HOURS: TAbmesFloatField
      FieldName = 'CAPACITY_BUSY_HOURS'
    end
    object qryModelOpDeptDetailFlowOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object qryModelOpDeptDetailFlowMODEL_COUNT: TAbmesFloatField
      FieldName = 'MODEL_COUNT'
    end
    object qryModelOpDeptDetailFlowSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
  end
  object qrySpecOpDeptDetailFlow: TAbmesSQLQuery
    BeforeOpen = qrySpecOpDeptDetailFlowBeforeOpen
    AfterClose = qrySpecOpDeptDetailFlowAfterClose
    MaxBlobSize = -1
    Params = <
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
        Name = 'ALL_FILTERED_PRODUCTS_3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smvso.DEPT_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.NAME'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_NAME,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[d]'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_HAS_DOC,'
      ''
      '  ( select'
      '      ( case'
      '          when (ContextDate between d.BEGIN_DATE and d.END_DATE)'
      '          then 1'
      '          else 0'
      '        end'
      '      ) as IS_ACTIVE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_IS_ACTIVE,'
      ''
      '  ( select'
      '      p.PARENT_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_GROUP_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NAME,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_TECH_MEASURE_ABBR,'
      ''
      '  sl.DETAIL_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_NAME,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_HAS_DOC,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE) and'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+))'
      '  ) as DETAIL_TECH_MEASURE_ABBR,'
      ''
      '  ( select'
      '      NullIf(Count(*), 0)'
      '    from'
      '      BASE_GROUPS bg,'
      '      BASE_GROUP_PRODUCTS bgp'
      '    where'
      '      (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '      (bgp.PRODUCT_CODE = sl.DETAIL_CODE) and'
      '      (bg.GROUP_DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as BASE_GROUP_COUNT,'
      ''
      '  To_Number(null) as TECH_QUANTITY,'
      ''
      '  To_Number(null) as CAPACITY_BUSY_HOURS,'
      ''
      '  Count(*) as OPERATION_COUNT,'
      '  Count(distinct smvso.SPEC_MODEL_VARIANT_NO) as MODEL_COUNT,'
      ''
      '  ( select'
      '      sp.SPEC_PRODUCT_CODE'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as SPEC_PRODUCT_CODE'
      ''
      'from'
      '  SPEC_LINES sl,'
      '  SMVS_OPERATIONS smvso'
      ''
      'where'
      '  (sl.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_CODE) and'
      '  (sl.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) and'
      '  '
      '  (sl.PARENT_SPEC_LINE_CODE is null) and'
      '  (smvso.OPERATION_TYPE_CODE = 2) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '        where'
      '          (tfd.DEPT_CODE = smvso.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS_2 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS_2 tfd'
      '        where'
      '          (tfd.DEPT_CODE = smvso.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS_3 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS_3 tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = sl.DETAIL_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:TOOL_DETAIL_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          PRODUCT_RELATIONS pr'
      '        where'
      '          (pr.ANCESTOR_PRODUCT_CODE = :TOOL_DETAIL_CODE) and'
      '          (pr.DESCENDANT_PRODUCT_CODE in'
      '            ( smvso.PROGRAM_TOOL_PRODUCT_CODE,'
      '              smvso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '              smvso.TYPICAL_TOOL_PRODUCT_CODE'
      '            )'
      '          )'
      '      )'
      '    ) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          SPEC_LINES tool_sl'
      '        where'
      '          (tool_sl.SPEC_PRODUCT_CODE in'
      '            ( smvso.PROGRAM_TOOL_PRODUCT_CODE,'
      '              smvso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '              smvso.TYPICAL_TOOL_PRODUCT_CODE'
      '            )'
      '          ) and'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                PRODUCT_RELATIONS pr'
      '              where'
      
        '                (pr.ANCESTOR_PRODUCT_CODE = :TOOL_DETAIL_CODE) a' +
        'nd'
      
        '                (pr.DESCENDANT_PRODUCT_CODE in (tool_sl.DETAIL_C' +
        'ODE, tool_sl.PRODUCT_CODE))'
      '            )'
      '          )'
      '      )'
      '    )'
      '  )'
      ''
      'group by'
      '  smvso.DEPT_CODE,'
      '  sl.DETAIL_CODE'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FLOW_LEVEL'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'FLOW_TYPE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPT_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DETAIL_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 568
    Top = 56
    object qrySpecOpDeptDetailFlowDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecOpDeptDetailFlowDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qrySpecOpDeptDetailFlowDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qrySpecOpDeptDetailFlowDEPT_HAS_DOC: TAbmesFloatField
      FieldName = 'DEPT_HAS_DOC'
    end
    object qrySpecOpDeptDetailFlowDEPT_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DEPT_IS_ACTIVE'
    end
    object qrySpecOpDeptDetailFlowDETAIL_GROUP_CODE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecOpDeptDetailFlowDETAIL_GROUP_NO: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_NO'
    end
    object qrySpecOpDeptDetailFlowDETAIL_GROUP_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_GROUP_NAME'
      Size = 100
    end
    object qrySpecOpDeptDetailFlowDETAIL_GROUP_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_IS_ACTIVE'
    end
    object qrySpecOpDeptDetailFlowDETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_GROUP_TECH_MEASURE_ABBR'
      Size = 5
    end
    object qrySpecOpDeptDetailFlowDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecOpDeptDetailFlowDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qrySpecOpDeptDetailFlowDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qrySpecOpDeptDetailFlowDETAIL_HAS_DOC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOC'
    end
    object qrySpecOpDeptDetailFlowDETAIL_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_IS_ACTIVE'
    end
    object qrySpecOpDeptDetailFlowDETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_TECH_MEASURE_ABBR'
      Size = 5
    end
    object qrySpecOpDeptDetailFlowBASE_GROUP_COUNT: TAbmesFloatField
      FieldName = 'BASE_GROUP_COUNT'
    end
    object qrySpecOpDeptDetailFlowTECH_QUANTITY: TAbmesFloatField
      FieldName = 'TECH_QUANTITY'
    end
    object qrySpecOpDeptDetailFlowCAPACITY_BUSY_HOURS: TAbmesFloatField
      FieldName = 'CAPACITY_BUSY_HOURS'
    end
    object qrySpecOpDeptDetailFlowOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object qrySpecOpDeptDetailFlowMODEL_COUNT: TAbmesFloatField
      FieldName = 'MODEL_COUNT'
    end
    object qrySpecOpDeptDetailFlowSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
  end
  object prvDeptDetailFlow: TDataSetProvider
    DataSet = qryEstOpDeptDetailFlow
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = prvDeptDetailFlowBeforeGetRecords
    Left = 496
    Top = 8
  end
  object qrySpecStageDeptDetailFlow: TAbmesSQLQuery
    BeforeOpen = qrySpecStageDeptDetailFlowBeforeOpen
    AfterClose = qrySpecStageDeptDetailFlowAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_3'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smvs.DEPT_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.NAME'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE)'
      '  ) as DEPT_NAME,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[d]'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE)'
      '  ) as DEPT_HAS_DOC,'
      ''
      '  ( select'
      '      ( case'
      '          when (ContextDate between d.BEGIN_DATE and d.END_DATE)'
      '          then 1'
      '          else 0'
      '        end'
      '      ) as IS_ACTIVE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE)'
      '  ) as DEPT_IS_ACTIVE,'
      ''
      '  ( select'
      '      p.PARENT_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_GROUP_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NAME,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_TECH_MEASURE_ABBR,'
      ''
      '  sl.DETAIL_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_NAME,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_HAS_DOC,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE) and'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+))'
      '  ) as DETAIL_TECH_MEASURE_ABBR,'
      ''
      '  ( select'
      '      NullIf(Count(*), 0)'
      '    from'
      '      BASE_GROUPS bg,'
      '      BASE_GROUP_PRODUCTS bgp'
      '    where'
      '      (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '      (bgp.PRODUCT_CODE = sl.DETAIL_CODE) and'
      '      (bg.GROUP_DEPT_CODE = smvs.DEPT_CODE)'
      '  ) as BASE_GROUP_COUNT,'
      ''
      '  To_Number(null) as TECH_QUANTITY,'
      ''
      '  To_Number(null) as CAPACITY_BUSY_HOURS,'
      ''
      '  Count(*) as OPERATION_COUNT,'
      '  Count(distinct smvs.SPEC_MODEL_VARIANT_NO) as MODEL_COUNT,'
      ''
      '  ( select'
      '      sp.SPEC_PRODUCT_CODE'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as SPEC_PRODUCT_CODE'
      ''
      'from'
      '  SPEC_LINES sl,'
      '  SPEC_MODEL_VARIANT_STAGES smvs'
      ''
      'where'
      '  (sl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      '  (sl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      ''
      '  (sl.PARENT_SPEC_LINE_CODE is null) and'
      ''
      '  (smvs.SPEC_LINE_STAGE_NO > 0) and'
      '  (smvs.OUTGOING_WORKDAYS > 0) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '        where'
      '          (tfd.DEPT_CODE = smvs.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS_3 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS_3 tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = sl.DETAIL_CODE)'
      '      )'
      '    )'
      '  )'
      ''
      'group by'
      '  smvs.DEPT_CODE,'
      '  sl.DETAIL_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FLOW_LEVEL'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'FLOW_TYPE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPT_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DETAIL_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 424
    Top = 56
    object qrySpecStageDeptDetailFlowDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecStageDeptDetailFlowDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qrySpecStageDeptDetailFlowDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qrySpecStageDeptDetailFlowDEPT_HAS_DOC: TAbmesFloatField
      FieldName = 'DEPT_HAS_DOC'
    end
    object qrySpecStageDeptDetailFlowDEPT_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DEPT_IS_ACTIVE'
    end
    object qrySpecStageDeptDetailFlowDETAIL_GROUP_CODE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecStageDeptDetailFlowDETAIL_GROUP_NO: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_NO'
    end
    object qrySpecStageDeptDetailFlowDETAIL_GROUP_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_GROUP_NAME'
      Size = 100
    end
    object qrySpecStageDeptDetailFlowDETAIL_GROUP_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_IS_ACTIVE'
    end
    object qrySpecStageDeptDetailFlowDETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_GROUP_TECH_MEASURE_ABBR'
      Size = 5
    end
    object qrySpecStageDeptDetailFlowDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecStageDeptDetailFlowDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qrySpecStageDeptDetailFlowDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qrySpecStageDeptDetailFlowDETAIL_HAS_DOC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOC'
    end
    object qrySpecStageDeptDetailFlowDETAIL_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_IS_ACTIVE'
    end
    object qrySpecStageDeptDetailFlowDETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_TECH_MEASURE_ABBR'
      Size = 5
    end
    object qrySpecStageDeptDetailFlowBASE_GROUP_COUNT: TAbmesFloatField
      FieldName = 'BASE_GROUP_COUNT'
    end
    object qrySpecStageDeptDetailFlowTECH_QUANTITY: TAbmesFloatField
      FieldName = 'TECH_QUANTITY'
    end
    object qrySpecStageDeptDetailFlowCAPACITY_BUSY_HOURS: TAbmesFloatField
      FieldName = 'CAPACITY_BUSY_HOURS'
    end
    object qrySpecStageDeptDetailFlowOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object qrySpecStageDeptDetailFlowMODEL_COUNT: TAbmesFloatField
      FieldName = 'MODEL_COUNT'
    end
    object qrySpecStageDeptDetailFlowSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
  end
  object qryModelStageDeptDetailFlow: TAbmesSQLQuery
    BeforeOpen = qryModelStageDeptDetailFlowBeforeOpen
    AfterClose = qryModelStageDeptDetailFlowAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_3'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  /*+ USE_NL(mlms mll ml) */'
      '  mlms.DEPT_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = mlms.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.NAME'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = mlms.DEPT_CODE)'
      '  ) as DEPT_NAME,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[d]'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = mlms.DEPT_CODE)'
      '  ) as DEPT_HAS_DOC,'
      ''
      '  ( select'
      '      ( case'
      '          when (ContextDate between d.BEGIN_DATE and d.END_DATE)'
      '          then 1'
      '          else 0'
      '        end'
      '      ) as IS_ACTIVE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = mlms.DEPT_CODE)'
      '  ) as DEPT_IS_ACTIVE,'
      ''
      '  ( select'
      '      p.PARENT_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_GROUP_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = mll.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE = '
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = mll.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NAME,'
      '  '
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = mll.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '      ( p.PRODUCT_CODE = '
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = mll.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_TECH_MEASURE_ABBR,'
      '  '
      '  mll.DETAIL_CODE,'
      '  '
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_NO,'
      '  '
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_NAME,'
      '  '
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_HAS_DOC,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE) and'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+))'
      '  ) as DETAIL_TECH_MEASURE_ABBR,'
      ''
      '  ( select'
      '      NullIf(Count(*), 0)'
      '    from'
      '      BASE_GROUPS bg,'
      '      BASE_GROUP_PRODUCTS bgp'
      '    where'
      '      (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '      (bgp.PRODUCT_CODE = mll.DETAIL_CODE) and'
      '      (bg.GROUP_DEPT_CODE = mlms.DEPT_CODE)'
      '  ) as BASE_GROUP_COUNT,'
      ''
      '  Sum(mll.LINE_DETAIL_TECH_QUANTITY) as TECH_QUANTITY,'
      ''
      '  To_Number(null) as CAPACITY_BUSY_HOURS,'
      ''
      '  Count(*) as OPERATION_COUNT,'
      
        '  Count(distinct ((mll.ML_OBJECT_BRANCH_CODE * %MAX_NUMBER) + ml' +
        'l.ML_OBJECT_CODE)) as MODEL_COUNT,'
      ''
      '  ( select'
      '      sp.SPEC_PRODUCT_CODE'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as SPEC_PRODUCT_CODE'
      ''
      'from'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml'
      ''
      'where'
      '  (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      '  (mll.ANNUL_EMPLOYEE_CODE is null) and'
      '  (mll.IS_WASTE_FORK = 0) and'
      ''
      '  (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and'
      '  (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      '  (ml.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '  (mlms.ML_MODEL_STAGE_NO > 0) and'
      '  (mlms.OUTGOING_WORKDAYS > 0) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '        where'
      '          (tfd.DEPT_CODE = mlms.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS_3 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS_3 tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = mll.DETAIL_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (mlms.TREATMENT_END_DATE >= :BEGIN_DATE) and'
      '  (mlms.TREATMENT_BEGIN_DATE <= :END_DATE)'
      '  '
      'group by'
      '  mlms.DEPT_CODE,'
      '  mll.DETAIL_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'MAX_NUMBER'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'FLOW_LEVEL'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'FLOW_TYPE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPT_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DETAIL_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 424
    Top = 104
    object qryModelStageDeptDetailFlowDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryModelStageDeptDetailFlowDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryModelStageDeptDetailFlowDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryModelStageDeptDetailFlowDEPT_HAS_DOC: TAbmesFloatField
      FieldName = 'DEPT_HAS_DOC'
    end
    object qryModelStageDeptDetailFlowDEPT_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DEPT_IS_ACTIVE'
    end
    object qryModelStageDeptDetailFlowDETAIL_GROUP_CODE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryModelStageDeptDetailFlowDETAIL_GROUP_NO: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_NO'
    end
    object qryModelStageDeptDetailFlowDETAIL_GROUP_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_GROUP_NAME'
      Size = 100
    end
    object qryModelStageDeptDetailFlowDETAIL_GROUP_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_IS_ACTIVE'
    end
    object qryModelStageDeptDetailFlowDETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_GROUP_TECH_MEASURE_ABBR'
      Size = 5
    end
    object qryModelStageDeptDetailFlowDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryModelStageDeptDetailFlowDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qryModelStageDeptDetailFlowDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryModelStageDeptDetailFlowDETAIL_HAS_DOC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOC'
    end
    object qryModelStageDeptDetailFlowDETAIL_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_IS_ACTIVE'
    end
    object qryModelStageDeptDetailFlowDETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_TECH_MEASURE_ABBR'
      Size = 5
    end
    object qryModelStageDeptDetailFlowBASE_GROUP_COUNT: TAbmesFloatField
      FieldName = 'BASE_GROUP_COUNT'
    end
    object qryModelStageDeptDetailFlowTECH_QUANTITY: TAbmesFloatField
      FieldName = 'TECH_QUANTITY'
    end
    object qryModelStageDeptDetailFlowCAPACITY_BUSY_HOURS: TAbmesFloatField
      FieldName = 'CAPACITY_BUSY_HOURS'
    end
    object qryModelStageDeptDetailFlowOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object qryModelStageDeptDetailFlowMODEL_COUNT: TAbmesFloatField
      FieldName = 'MODEL_COUNT'
    end
    object qryModelStageDeptDetailFlowSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
  end
  object qryResultProductEstNeeds: TAbmesSQLQuery
    BeforeOpen = qryResultProductEstNeedsBeforeOpen
    AfterClose = qryResultProductEstNeedsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.*,'
      ''
      '  NullIf('
      '    ( Coalesce(x.DETAIL_QUANTITY, 0) +'
      '      Coalesce(x.MATERIAL_QUANTITY, 0)'
      '    ),'
      '    0'
      '  ) as STRUCT_PART_QUANTITY,'
      ''
      '  NullIf('
      '    ( Coalesce(x.DETAIL_QUANTITY_PRICE, 0) +'
      '      Coalesce(x.MATERIAL_QUANTITY_PRICE, 0)'
      '    ),'
      '    0'
      '  ) as STRUCT_PART_QUANTITY_PRICE,'
      ''
      '  NullIf('
      '    Least('
      
        '      Coalesce(x.DETAIL_QUANTITY_NOPRICE_DATE, CommonConsts.MaxD' +
        'ate),'
      
        '      Coalesce(x.MATERIAL_QUANTITY_NOPRICE_DATE, CommonConsts.Ma' +
        'xDate)'
      '    ),'
      '    CommonConsts.MaxDate'
      '  ) as STRUCT_PART_QTY_NOPRICE_DATE'
      ''
      'from'
      '  ( select'
      '      p.PRODUCT_CODE,'
      '      p.CUSTOM_CODE as PRODUCT_NO,'
      '      p.NAME as PRODUCT_NAME,'
      '      p.ACCOUNT_MEASURE_COEF,'
      '      p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '      p.DOC_BRANCH_CODE,'
      '      p.DOC_CODE,'
      '      %HAS_DOC_ITEMS[p] as HAS_DOC,'
      ''
      '      p.MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.MEASURE_CODE)'
      '      ) as MEASURE_ABBREV,'
      '  '
      '      p.ACCOUNT_MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '      ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      
        '      Count(distinct (prpp.PRODUCT_CODE * 10000000000) + prpp.PA' +
        'RTNER_CODE) as SALE_COUNT,'
      ''
      '      Sum('
      '        prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '        Coalesce('
      
        '          ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE' +
        ', prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '            NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE' +
        '], 0)'
      '          ),'
      
        '          ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_D' +
        'ATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '            (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '          )'
      '        )'
      '      ) as QUANTITY,'
      ''
      '      Sum('
      '        prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '        Coalesce('
      
        '          ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE' +
        ', prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '            NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE' +
        '], 0)'
      '          ),'
      
        '          ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_D' +
        'ATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '            (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '          )'
      '        ) *'
      
        '        %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~prpp.BEGIN' +
        '_DATE]'
      '      ) as QUANTITY_PRICE,'
      ''
      '      Min('
      '        Nvl2('
      '          prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '          Coalesce('
      
        '            ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DA' +
        'TE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '              NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DA' +
        'TE], 0)'
      '            ),'
      
        '            ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN' +
        '_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '              (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '            )'
      '          ),'
      '          Nvl2('
      
        '            %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~prpp.B' +
        'EGIN_DATE],'
      '            null,'
      '            prpp.BEGIN_DATE'
      '          ),'
      '          null'
      '        )'
      '      ) as QUANTITY_NOPRICE_DATE,'
      ''
      '      ( select'
      
        '          /*+ INDEX(spl2 idxSL__DETAIL) NO_USE_HASH(prpp2 spl2) ' +
        'NO_USE_MERGE(prpp2 spl2) USE_NL(prpp2 spl2) */'
      '          Sum('
      '            ( spl2.TOTAL_DETAIL_TECH_QUANTITY *'
      '              prpp2.EST_SALE_COVER_ACQUIRE_QTY *'
      '              p2.TECH_MEASURE_COEF *'
      '              Coalesce('
      
        '                ( DateTimeUtils.CountIntersectWorkdays(prpp2.BEG' +
        'IN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                  NullIf(%COUNT_WORKDAYS[prpp2.BEGIN_DATE~ prpp2' +
        '.END_DATE], 0)'
      '                ),'
      
        '                ( DateTimeUtils.DatePeriodIntersectLength(prpp2.' +
        'BEGIN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                  (prpp2.END_DATE - prpp2.BEGIN_DATE + 1)'
      '                )'
      '              ) /'
      '              p.TECH_MEASURE_COEF'
      '            )'
      '          )'
      '        from'
      '          PAR_REL_PRODUCT_PERIODS prpp2,'
      '          PRODUCTS p2,'
      '          SPEC_LINES spl2'
      '        where'
      '          (prpp2.PRODUCT_CODE = p2.PRODUCT_CODE) and'
      ''
      '          (prpp2.PRODUCT_CODE = spl2.SPEC_PRODUCT_CODE) and'
      ''
      '          (spl2.DETAIL_CODE = p.PRODUCT_CODE) and'
      ''
      '          (spl2.PARENT_SPEC_LINE_CODE is not null) and'
      ''
      '          ( (spl2.PRODUCT_CODE is null) or'
      '            (spl2.DETAIL_CODE <> spl2.PRODUCT_CODE)'
      '          ) and'
      ''
      '          (prpp2.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '          (prpp2.BEGIN_DATE <= :END_DATE) and'
      '          (prpp2.END_DATE >= :BEGIN_DATE) and'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = prpp2.PARTNER_CODE)'
      '              )'
      '            )'
      '          )'
      '      ) as DETAIL_QUANTITY,'
      ''
      '      ( select'
      
        '          /*+ INDEX(spl2 idxSL__DETAIL) NO_USE_HASH(prpp2 spl2) ' +
        'NO_USE_MERGE(prpp2 spl2) USE_NL(prpp2 spl2) */'
      '          Sum('
      '            ( spl2.TOTAL_DETAIL_TECH_QUANTITY *'
      '              prpp2.EST_SALE_COVER_ACQUIRE_QTY *'
      '              p2.TECH_MEASURE_COEF *'
      '              Coalesce('
      
        '                ( DateTimeUtils.CountIntersectWorkdays(prpp2.BEG' +
        'IN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                  NullIf(%COUNT_WORKDAYS[prpp2.BEGIN_DATE~ prpp2' +
        '.END_DATE], 0)'
      '                ),'
      
        '                ( DateTimeUtils.DatePeriodIntersectLength(prpp2.' +
        'BEGIN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                  (prpp2.END_DATE - prpp2.BEGIN_DATE + 1)'
      '                )'
      '              ) /'
      '              p.TECH_MEASURE_COEF'
      '            ) *'
      
        '            %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~prpp2.' +
        'BEGIN_DATE]'
      '          )'
      '        from'
      '          PAR_REL_PRODUCT_PERIODS prpp2,'
      '          PRODUCTS p2,'
      '          SPEC_LINES spl2'
      '        where'
      '          (prpp2.PRODUCT_CODE = p2.PRODUCT_CODE) and'
      ''
      '          (prpp2.PRODUCT_CODE = spl2.SPEC_PRODUCT_CODE) and'
      ''
      '          (spl2.DETAIL_CODE = p.PRODUCT_CODE) and'
      ''
      '          (spl2.PARENT_SPEC_LINE_CODE is not null) and'
      ''
      '          ( (spl2.PRODUCT_CODE is null) or'
      '            (spl2.DETAIL_CODE <> spl2.PRODUCT_CODE)'
      '          ) and'
      ''
      '          (prpp2.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '          (prpp2.BEGIN_DATE <= :END_DATE) and'
      '          (prpp2.END_DATE >= :BEGIN_DATE) and'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = prpp2.PARTNER_CODE)'
      '              )'
      '            )'
      '          )'
      '      ) as DETAIL_QUANTITY_PRICE,'
      ''
      '      ( select'
      
        '          /*+ INDEX(spl2 idxSL__DETAIL) NO_USE_HASH(prpp2 spl2) ' +
        'NO_USE_MERGE(prpp2 spl2) USE_NL(prpp2 spl2) */'
      '          Min('
      '            Nvl2('
      '              ( spl2.TOTAL_DETAIL_TECH_QUANTITY *'
      '                prpp2.EST_SALE_COVER_ACQUIRE_QTY *'
      '                p2.TECH_MEASURE_COEF *'
      '                Coalesce('
      
        '                  ( DateTimeUtils.CountIntersectWorkdays(prpp2.B' +
        'EGIN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                    NullIf(%COUNT_WORKDAYS[prpp2.BEGIN_DATE~ prp' +
        'p2.END_DATE], 0)'
      '                  ),'
      
        '                  ( DateTimeUtils.DatePeriodIntersectLength(prpp' +
        '2.BEGIN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                    (prpp2.END_DATE - prpp2.BEGIN_DATE + 1)'
      '                  )'
      '                ) /'
      '                p.TECH_MEASURE_COEF'
      '              ),'
      '              Nvl2('
      
        '                %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~pr' +
        'pp2.BEGIN_DATE],'
      '                null,'
      '                prpp2.BEGIN_DATE'
      '              ),'
      '              null'
      '            )'
      '          )'
      '        from'
      '          PAR_REL_PRODUCT_PERIODS prpp2,'
      '          PRODUCTS p2,'
      '          SPEC_LINES spl2'
      '        where'
      '          (prpp2.PRODUCT_CODE = p2.PRODUCT_CODE) and'
      ''
      '          (prpp2.PRODUCT_CODE = spl2.SPEC_PRODUCT_CODE) and'
      ''
      '          (spl2.DETAIL_CODE = p.PRODUCT_CODE) and'
      ''
      '          (spl2.PARENT_SPEC_LINE_CODE is not null) and'
      ''
      '          ( (spl2.PRODUCT_CODE is null) or'
      '            (spl2.DETAIL_CODE <> spl2.PRODUCT_CODE)'
      '          ) and'
      ''
      '          (prpp2.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '          (prpp2.BEGIN_DATE <= :END_DATE) and'
      '          (prpp2.END_DATE >= :BEGIN_DATE) and'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = prpp2.PARTNER_CODE)'
      '              )'
      '            )'
      '          )'
      '      ) as DETAIL_QUANTITY_NOPRICE_DATE,'
      ''
      '      ( select'
      
        '          /*+ INDEX(spl3 idxSL__PRODUCT) NO_USE_HASH(prpp3 spl3)' +
        ' NO_USE_MERGE(prpp3 spl3) USE_NL(prpp3 spl3) */'
      '          Sum('
      '            ( spl3.TOTAL_DETAIL_TECH_QUANTITY *'
      '              spl3.PRODUCT_TECH_QUANTITY *'
      '              prpp3.EST_SALE_COVER_ACQUIRE_QTY *'
      '              p3.TECH_MEASURE_COEF *'
      '              Coalesce('
      
        '                ( DateTimeUtils.CountIntersectWorkdays(prpp3.BEG' +
        'IN_DATE, prpp3.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                  NullIf(%COUNT_WORKDAYS[prpp3.BEGIN_DATE~ prpp3' +
        '.END_DATE], 0)'
      '                ),'
      
        '                ( DateTimeUtils.DatePeriodIntersectLength(prpp3.' +
        'BEGIN_DATE, prpp3.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                  (prpp3.END_DATE - prpp3.BEGIN_DATE + 1)'
      '                )'
      '              ) /'
      '              p.TECH_MEASURE_COEF'
      '            )'
      '          )'
      '        from'
      '          PAR_REL_PRODUCT_PERIODS prpp3,'
      '          PRODUCTS p3,'
      '          SPEC_LINES spl3'
      '        where'
      '          (prpp3.PRODUCT_CODE = p3.PRODUCT_CODE) and'
      ''
      '          (prpp3.PRODUCT_CODE = spl3.SPEC_PRODUCT_CODE) and'
      ''
      '          (spl3.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '          (prpp3.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '          (prpp3.BEGIN_DATE <= :END_DATE) and'
      '          (prpp3.END_DATE >= :BEGIN_DATE) and'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = prpp3.PARTNER_CODE)'
      ''
      '              )'
      '            )'
      '          )'
      '      ) as MATERIAL_QUANTITY,'
      ''
      '      ( select'
      
        '          /*+ INDEX(spl3 idxSL__PRODUCT) NO_USE_HASH(prpp3 spl3)' +
        ' NO_USE_MERGE(prpp3 spl3) USE_NL(prpp3 spl3) */'
      '          Sum('
      '            ( spl3.TOTAL_DETAIL_TECH_QUANTITY *'
      '              spl3.PRODUCT_TECH_QUANTITY *'
      '              prpp3.EST_SALE_COVER_ACQUIRE_QTY *'
      '              p3.TECH_MEASURE_COEF *'
      '              Coalesce('
      
        '                ( DateTimeUtils.CountIntersectWorkdays(prpp3.BEG' +
        'IN_DATE, prpp3.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                  NullIf(%COUNT_WORKDAYS[prpp3.BEGIN_DATE~ prpp3' +
        '.END_DATE], 0)'
      '                ),'
      
        '                ( DateTimeUtils.DatePeriodIntersectLength(prpp3.' +
        'BEGIN_DATE, prpp3.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                  (prpp3.END_DATE - prpp3.BEGIN_DATE + 1)'
      '                )'
      '              ) /'
      '              p.TECH_MEASURE_COEF'
      '            ) *'
      
        '            %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~prpp3.' +
        'BEGIN_DATE]'
      '          )'
      '        from'
      '          PAR_REL_PRODUCT_PERIODS prpp3,'
      '          PRODUCTS p3,'
      '          SPEC_LINES spl3'
      '        where'
      '          (prpp3.PRODUCT_CODE = p3.PRODUCT_CODE) and'
      ''
      '          (prpp3.PRODUCT_CODE = spl3.SPEC_PRODUCT_CODE) and'
      ''
      '          (spl3.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '          (prpp3.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '          (prpp3.BEGIN_DATE <= :END_DATE) and'
      '          (prpp3.END_DATE >= :BEGIN_DATE) and'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = prpp3.PARTNER_CODE)'
      ''
      '              )'
      '            )'
      '          )'
      '      ) as MATERIAL_QUANTITY_PRICE,'
      ''
      '      ( select'
      
        '          /*+ INDEX(spl3 idxSL__PRODUCT) NO_USE_HASH(prpp3 spl3)' +
        ' NO_USE_MERGE(prpp3 spl3) USE_NL(prpp3 spl3) */'
      '          Min('
      '            Nvl2('
      '              ( spl3.TOTAL_DETAIL_TECH_QUANTITY *'
      '                spl3.PRODUCT_TECH_QUANTITY *'
      '                prpp3.EST_SALE_COVER_ACQUIRE_QTY *'
      '                p3.TECH_MEASURE_COEF *'
      '                Coalesce('
      
        '                  ( DateTimeUtils.CountIntersectWorkdays(prpp3.B' +
        'EGIN_DATE, prpp3.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                    NullIf(%COUNT_WORKDAYS[prpp3.BEGIN_DATE~ prp' +
        'p3.END_DATE], 0)'
      '                  ),'
      
        '                  ( DateTimeUtils.DatePeriodIntersectLength(prpp' +
        '3.BEGIN_DATE, prpp3.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                    (prpp3.END_DATE - prpp3.BEGIN_DATE + 1)'
      '                  )'
      '                ) /'
      '                p.TECH_MEASURE_COEF'
      '              ),'
      '              Nvl2('
      
        '                %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~pr' +
        'pp3.BEGIN_DATE],'
      '                null,'
      '                prpp3.BEGIN_DATE'
      '              ),'
      '              null'
      '            )'
      '          )'
      '        from'
      '          PAR_REL_PRODUCT_PERIODS prpp3,'
      '          PRODUCTS p3,'
      '          SPEC_LINES spl3'
      '        where'
      '          (prpp3.PRODUCT_CODE = p3.PRODUCT_CODE) and'
      ''
      '          (prpp3.PRODUCT_CODE = spl3.SPEC_PRODUCT_CODE) and'
      ''
      '          (spl3.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '          (prpp3.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '          (prpp3.BEGIN_DATE <= :END_DATE) and'
      '          (prpp3.END_DATE >= :BEGIN_DATE) and'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = prpp3.PARTNER_CODE)'
      ''
      '              )'
      '            )'
      '          )'
      '      ) as MATERIAL_QUANTITY_NOPRICE_DATE'
      ''
      '    from'
      '      PAR_REL_PRODUCT_PERIODS prpp,'
      '      PRODUCTS p'
      ''
      '    where'
      '      (prpp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '      (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '      (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '      %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_CO' +
        'MMON_LEVEL ~ p] and'
      ''
      '      (:PARTNER_COMMON_LEVEL * null is null) and'
      
        '      %PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.' +
        'PARTNER_CODE ~ prpp.BORDER_REL_TYPE_CODE] and'
      ''
      
        '      ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp], To_Number(:' +
        'MIN_PRP_STATUS_CODE))'
      '        between'
      '          :MIN_PRP_STATUS_CODE'
      '        and'
      '          :MAX_PRP_STATUS_CODE'
      '      ) and'
      ''
      '      (prpp.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '      (prpp.BEGIN_DATE <= :END_DATE) and'
      '      (prpp.END_DATE >= :BEGIN_DATE) and'
      ''
      '      ( (:ALL_FILTERED_COMPANIES = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_COMPANIES tfc'
      '            where'
      '              (tfc.COMPANY_CODE = prpp.PARTNER_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_PRODUCTS tfp'
      '            where'
      '              (tfp.PRODUCT_CODE = prpp.PRODUCT_CODE)'
      '          )'
      '        )'
      '      )'
      ''
      '    group by'
      '      p.PRODUCT_CODE,'
      '      p.CUSTOM_CODE,'
      '      p.NAME,'
      '      p.DOC_BRANCH_CODE,'
      '      p.DOC_CODE,'
      '      p.MEASURE_CODE,'
      '      p.ACCOUNT_MEASURE_CODE,'
      '      p.ACCOUNT_MEASURE_COEF,'
      '      p.PARTNER_PRODUCT_NAMES,'
      '      p.TECH_MEASURE_COEF'
      '  ) x'
      ''
      'order by'
      '  SALE_COUNT desc,'
      '  PRODUCT_NAME'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~prpp.BEGIN_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp2.BEGIN_DATE~ prpp2.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~prpp2.BEGIN_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp3.BEGIN_DATE~ prpp3.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~prpp3.BEGIN_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON_LE' +
          'VEL ~ p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PARTNER' +
          '_CODE ~ prpp.BORDER_REL_TYPE_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PAR_REL_PRODUCT_STATUS_CODE[prpp]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 56
    Top = 176
    object qryResultProductEstNeedsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryResultProductEstNeedsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryResultProductEstNeedsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryResultProductEstNeedsACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object qryResultProductEstNeedsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryResultProductEstNeedsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryResultProductEstNeedsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryResultProductEstNeedsHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryResultProductEstNeedsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryResultProductEstNeedsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryResultProductEstNeedsACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryResultProductEstNeedsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryResultProductEstNeedsSALE_COUNT: TAbmesFloatField
      FieldName = 'SALE_COUNT'
    end
    object qryResultProductEstNeedsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryResultProductEstNeedsQUANTITY_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_PRICE'
    end
    object qryResultProductEstNeedsQUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'QUANTITY_NOPRICE_DATE'
    end
    object qryResultProductEstNeedsDETAIL_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_QUANTITY'
    end
    object qryResultProductEstNeedsDETAIL_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'DETAIL_QUANTITY_PRICE'
    end
    object qryResultProductEstNeedsDETAIL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'DETAIL_QUANTITY_NOPRICE_DATE'
    end
    object qryResultProductEstNeedsMATERIAL_QUANTITY: TAbmesFloatField
      FieldName = 'MATERIAL_QUANTITY'
    end
    object qryResultProductEstNeedsMATERIAL_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'MATERIAL_QUANTITY_PRICE'
    end
    object qryResultProductEstNeedsMATERIAL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MATERIAL_QUANTITY_NOPRICE_DATE'
    end
    object qryResultProductEstNeedsSTRUCT_PART_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_QUANTITY'
    end
    object qryResultProductEstNeedsSTRUCT_PART_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'STRUCT_PART_QUANTITY_PRICE'
    end
    object qryResultProductEstNeedsSTRUCT_PART_QTY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'STRUCT_PART_QTY_NOPRICE_DATE'
    end
  end
  object prvResultProductEstNeeds: TDataSetProvider
    DataSet = qryResultProductEstNeeds
    Left = 56
    Top = 128
  end
  object qryDetailEstNeeds: TAbmesSQLQuery
    BeforeOpen = qryDetailEstNeedsBeforeOpen
    AfterClose = qryDetailEstNeedsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PRODUCTION_PRODUCT'
        ParamType = ptInput
        Value = '9'
      end
      item
        DataType = ftFloat
        Name = 'IS_PRODUCTION_PRODUCT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SELF_EXISTENT_STATUS_CODE'
        ParamType = ptInput
        Value = '9'
      end
      item
        DataType = ftFloat
        Name = 'SELF_EXISTENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_USED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.*,'
      ''
      '  NullIf('
      '    ( Coalesce(x.QUANTITY, 0) +'
      '      Coalesce(x.DIRECT_SALE_QUANTITY, 0)'
      '    ),'
      '    0'
      '  ) as FULL_QUANTITY,'
      ''
      '  NullIf('
      '    ( Coalesce(x.QUANTITY_PRICE, 0) +'
      '      Coalesce(x.DIRECT_SALE_QUANTITY_PRICE, 0)'
      '    ),'
      '    0'
      '  ) as FULL_QUANTITY_PRICE,'
      ''
      '  NullIf('
      '    Least('
      '      Coalesce(x.QUANTITY_NOPRICE_DATE, CommonConsts.MaxDate),'
      
        '      Coalesce(x.DIRECT_SALE_QTY_NOPRICE_DATE, CommonConsts.MaxD' +
        'ate)'
      '    ),'
      '    CommonConsts.MaxDate'
      '  ) as FULL_QUANTITY_NOPRICE_DATE'
      ''
      'from'
      '  ( select'
      '      p.PRODUCT_CODE,'
      '      p.CUSTOM_CODE as PRODUCT_NO,'
      '      p.NAME as PRODUCT_NAME,'
      '      p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '      p.DOC_BRANCH_CODE,'
      '      p.DOC_CODE,'
      '      %HAS_DOC_ITEMS[p] as HAS_DOC,'
      ''
      '      p.IS_PRODUCTION_PRODUCT,'
      ''
      '      p.MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.MEASURE_CODE)'
      '      ) as MEASURE_ABBREV,'
      ''
      '      p.ACCOUNT_MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '      ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      '      p.ACCOUNT_MEASURE_COEF,'
      ''
      '      (q.TECH_QUANTITY / p.TECH_MEASURE_COEF) as QUANTITY,'
      ''
      
        '      (q.TECH_QUANTITY_PRICE / p.TECH_MEASURE_COEF) as QUANTITY_' +
        'PRICE,'
      ''
      
        '      Nvl2(p.TECH_MEASURE_COEF, q.TECH_QUANTITY_NOPRICE_DATE, nu' +
        'll) as QUANTITY_NOPRICE_DATE,'
      ''
      '      ( select'
      '          Sum('
      '            ( prpp2.EST_SALE_COVER_ACQUIRE_QTY *'
      '              Coalesce('
      
        '                ( DateTimeUtils.CountIntersectWorkdays(prpp2.BEG' +
        'IN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                  NullIf(%COUNT_WORKDAYS[prpp2.BEGIN_DATE~prpp2.' +
        'END_DATE], 0)'
      '                ),'
      
        '                ( DateTimeUtils.DatePeriodIntersectLength(prpp2.' +
        'BEGIN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                  (prpp2.END_DATE - prpp2.BEGIN_DATE + 1)'
      '                )'
      '              )'
      '            )'
      '          )'
      '        from'
      '          PAR_REL_PRODUCT_PERIODS prpp2'
      ''
      '        where'
      '          (prpp2.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      
        '          ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp2], To_Num' +
        'ber(:MIN_PRP_STATUS_CODE))'
      '            between'
      '              :MIN_PRP_STATUS_CODE'
      '            and'
      '              :MAX_PRP_STATUS_CODE'
      '          ) and'
      ''
      '          (prpp2.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '          (prpp2.BEGIN_DATE <= :END_DATE) and'
      '          (prpp2.END_DATE >= :BEGIN_DATE) and'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = prpp2.PARTNER_CODE)'
      '              )'
      '            )'
      '          )'
      '      ) as DIRECT_SALE_QUANTITY,'
      ''
      '      ( select'
      '          Sum('
      '            ( prpp2.EST_SALE_COVER_ACQUIRE_QTY *'
      '              Coalesce('
      
        '                ( DateTimeUtils.CountIntersectWorkdays(prpp2.BEG' +
        'IN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                  NullIf(%COUNT_WORKDAYS[prpp2.BEGIN_DATE~prpp2.' +
        'END_DATE], 0)'
      '                ),'
      
        '                ( DateTimeUtils.DatePeriodIntersectLength(prpp2.' +
        'BEGIN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                  (prpp2.END_DATE - prpp2.BEGIN_DATE + 1)'
      '                )'
      '              )'
      '            ) *'
      
        '            %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~prpp2.' +
        'BEGIN_DATE]'
      '          )'
      '        from'
      '          PAR_REL_PRODUCT_PERIODS prpp2'
      ''
      '        where'
      '          (prpp2.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      
        '          ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp2], To_Num' +
        'ber(:MIN_PRP_STATUS_CODE))'
      '            between'
      '              :MIN_PRP_STATUS_CODE'
      '            and'
      '              :MAX_PRP_STATUS_CODE'
      '          ) and'
      ''
      '          (prpp2.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '          (prpp2.BEGIN_DATE <= :END_DATE) and'
      '          (prpp2.END_DATE >= :BEGIN_DATE) and'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = prpp2.PARTNER_CODE)'
      '              )'
      '            )'
      '          )'
      '      ) as DIRECT_SALE_QUANTITY_PRICE,'
      ''
      '      ( select'
      '          Min('
      '            Nvl2('
      '              ( prpp2.EST_SALE_COVER_ACQUIRE_QTY *'
      '                Coalesce('
      
        '                  ( DateTimeUtils.CountIntersectWorkdays(prpp2.B' +
        'EGIN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                    NullIf(%COUNT_WORKDAYS[prpp2.BEGIN_DATE~prpp' +
        '2.END_DATE], 0)'
      '                  ),'
      
        '                  ( DateTimeUtils.DatePeriodIntersectLength(prpp' +
        '2.BEGIN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                    (prpp2.END_DATE - prpp2.BEGIN_DATE + 1)'
      '                  )'
      '                )'
      '              ),'
      '              Nvl2('
      
        '                %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~pr' +
        'pp2.BEGIN_DATE],'
      '                null,'
      '                prpp2.BEGIN_DATE'
      '              ),'
      '              null'
      '            )'
      '          )'
      '        from'
      '          PAR_REL_PRODUCT_PERIODS prpp2'
      ''
      '        where'
      '          (prpp2.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      
        '          ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp2], To_Num' +
        'ber(:MIN_PRP_STATUS_CODE))'
      '            between'
      '              :MIN_PRP_STATUS_CODE'
      '            and'
      '              :MAX_PRP_STATUS_CODE'
      '          ) and'
      ''
      '          (prpp2.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '          (prpp2.BEGIN_DATE <= :END_DATE) and'
      '          (prpp2.END_DATE >= :BEGIN_DATE) and'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = prpp2.PARTNER_CODE)'
      '              )'
      '            )'
      '          )'
      '      ) as DIRECT_SALE_QTY_NOPRICE_DATE,'
      ''
      '      q.SALE_COUNT,'
      '      q.SPEC_PRODUCT_COUNT,'
      '      q.UPPER_LEVEL_STRUCT_PART_COUNT'
      ''
      '    from'
      '      PRODUCTS p,'
      '      ( select'
      '          spl.DETAIL_CODE,'
      ''
      '          Sum('
      '            spl.TOTAL_DETAIL_TECH_QUANTITY *'
      '            prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '            p9.TECH_MEASURE_COEF *'
      '            Coalesce('
      
        '              ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_' +
        'DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_' +
        'DATE], 0)'
      '              ),'
      
        '              ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEG' +
        'IN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '              )'
      '            )'
      '          ) as TECH_QUANTITY,'
      ''
      '          Sum('
      '            spl.TOTAL_DETAIL_TECH_QUANTITY *'
      '            prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '            p9.TECH_MEASURE_COEF *'
      '            Coalesce('
      
        '              ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_' +
        'DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_' +
        'DATE], 0)'
      '              ),'
      
        '              ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEG' +
        'IN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '              )'
      '            ) *'
      
        '            %PRODUCT_BASE_PSD_SINGLE_PRICE[spl.DETAIL_CODE~prpp.' +
        'BEGIN_DATE]'
      
        '          ) as TECH_QUANTITY_PRICE,  --// ne e istinska cena - t' +
        'riabva da se korigira s koef posle'
      ''
      '          Min('
      '            Nvl2('
      '              ( spl.TOTAL_DETAIL_TECH_QUANTITY *'
      '                prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '                p9.TECH_MEASURE_COEF *'
      '                Coalesce('
      
        '                  ( DateTimeUtils.CountIntersectWorkdays(prpp.BE' +
        'GIN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                    NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.' +
        'END_DATE], 0)'
      '                  ),'
      
        '                  ( DateTimeUtils.DatePeriodIntersectLength(prpp' +
        '.BEGIN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                    (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '                  )'
      '                )'
      '              ),'
      '              Nvl2('
      
        '                %PRODUCT_BASE_PSD_SINGLE_PRICE[spl.DETAIL_CODE~p' +
        'rpp.BEGIN_DATE],'
      '                null,'
      '                prpp.BEGIN_DATE'
      '              ),'
      '              null'
      '            )'
      '          ) as TECH_QUANTITY_NOPRICE_DATE,'
      ''
      
        '          Count(distinct (prpp.PRODUCT_CODE * 10000000000) + prp' +
        'p.PARTNER_CODE) as SALE_COUNT,'
      
        '          Count(distinct spl.SPEC_PRODUCT_CODE) as SPEC_PRODUCT_' +
        'COUNT,'
      
        '          Count(distinct splp.DETAIL_CODE) as UPPER_LEVEL_STRUCT' +
        '_PART_COUNT'
      ''
      '        from'
      '          PAR_REL_PRODUCT_PERIODS prpp,'
      '          PRODUCTS p9,'
      '          SPEC_LINES spl,'
      '          SPEC_LINES splp'
      ''
      '        where'
      '          (prpp.PRODUCT_CODE = p9.PRODUCT_CODE) and'
      '          (prpp.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '          (spl.SPEC_PRODUCT_CODE = splp.SPEC_PRODUCT_CODE) and'
      '          (spl.PARENT_SPEC_LINE_CODE = splp.SPEC_LINE_CODE) and'
      ''
      '          ( (spl.PRODUCT_CODE is null) or'
      '            (spl.DETAIL_CODE <> spl.PRODUCT_CODE)'
      '          ) and'
      ''
      '          (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '          %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUC' +
        'T_COMMON_LEVEL ~ p9] and'
      ''
      '          (:PARTNER_COMMON_LEVEL * null is null) and'
      
        '          %PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ p' +
        'rpp.PARTNER_CODE ~ prpp.BORDER_REL_TYPE_CODE] and'
      ''
      
        '          ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp], To_Numb' +
        'er(:MIN_PRP_STATUS_CODE))'
      '            between'
      '              :MIN_PRP_STATUS_CODE'
      '            and'
      '              :MAX_PRP_STATUS_CODE'
      '          ) and'
      ''
      '          (prpp.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '          (prpp.BEGIN_DATE <= :END_DATE) and'
      '          (prpp.END_DATE >= :BEGIN_DATE) and'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = prpp.PARTNER_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_PRODUCTS tfp'
      '                where'
      '                  (tfp.PRODUCT_CODE = prpp.PRODUCT_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:ALL_FILTERED_PRODUCTS_2 = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_PRODUCTS_2 tfp2'
      '                where'
      '                  (tfp2.PRODUCT_CODE = spl.DETAIL_CODE)'
      '              )'
      '            )'
      '          )'
      ''
      '        group by'
      '          spl.DETAIL_CODE'
      '      ) q'
      ''
      '    where'
      '      (p.PRODUCT_CODE = q.DETAIL_CODE(+)) and'
      ''
      '      (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '      (p.IS_GROUP = 0) and'
      ''
      '      ( (:ALL_FILTERED_PRODUCTS_2 = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_PRODUCTS_2 tfp2'
      '            where'
      '              (tfp2.PRODUCT_CODE = p.PRODUCT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:IS_PRODUCTION_PRODUCT = 9) or'
      '        (p.IS_PRODUCTION_PRODUCT = :IS_PRODUCTION_PRODUCT)'
      '      ) and'
      ''
      '      ( (:SELF_EXISTENT_STATUS_CODE = 9) or'
      
        '        (p.SELF_EXISTENT_STATUS_CODE = :SELF_EXISTENT_STATUS_COD' +
        'E)'
      '      ) and'
      ''
      '      ( (:IS_USED = 9) or'
      '        ( (:IS_USED = 1) and'
      '          (q.DETAIL_CODE is not null)'
      '        ) or'
      '        ( (:IS_USED = 0) and'
      '          (q.DETAIL_CODE is null)'
      '        )'
      '      )'
      '  ) x'
      ''
      'order by'
      '  UPPER_LEVEL_STRUCT_PART_COUNT desc,'
      '  SPEC_PRODUCT_COUNT desc,'
      '  SALE_COUNT desc,'
      '  PRODUCT_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp2.BEGIN_DATE~prpp2.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PAR_REL_PRODUCT_STATUS_CODE[prpp2]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~prpp2.BEGIN_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_BASE_PSD_SINGLE_PRICE[spl.DETAIL_CODE~prpp.BEGIN_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON_LE' +
          'VEL ~ p9]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PARTNER' +
          '_CODE ~ prpp.BORDER_REL_TYPE_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PAR_REL_PRODUCT_STATUS_CODE[prpp]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_STRUCT_PART_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 56
    Top = 416
    object qryDetailEstNeedsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDetailEstNeedsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryDetailEstNeedsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryDetailEstNeedsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryDetailEstNeedsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDetailEstNeedsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDetailEstNeedsHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryDetailEstNeedsIS_PRODUCTION_PRODUCT: TAbmesFloatField
      FieldName = 'IS_PRODUCTION_PRODUCT'
    end
    object qryDetailEstNeedsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryDetailEstNeedsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryDetailEstNeedsACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryDetailEstNeedsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryDetailEstNeedsACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object qryDetailEstNeedsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryDetailEstNeedsQUANTITY_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_PRICE'
    end
    object qryDetailEstNeedsQUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'QUANTITY_NOPRICE_DATE'
    end
    object qryDetailEstNeedsDIRECT_SALE_QUANTITY: TAbmesFloatField
      FieldName = 'DIRECT_SALE_QUANTITY'
    end
    object qryDetailEstNeedsDIRECT_SALE_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'DIRECT_SALE_QUANTITY_PRICE'
    end
    object qryDetailEstNeedsDIRECT_SALE_QTY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'DIRECT_SALE_QTY_NOPRICE_DATE'
    end
    object qryDetailEstNeedsFULL_QUANTITY: TAbmesFloatField
      FieldName = 'FULL_QUANTITY'
    end
    object qryDetailEstNeedsFULL_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'FULL_QUANTITY_PRICE'
    end
    object qryDetailEstNeedsFULL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'FULL_QUANTITY_NOPRICE_DATE'
    end
    object qryDetailEstNeedsSALE_COUNT: TAbmesFloatField
      FieldName = 'SALE_COUNT'
    end
    object qryDetailEstNeedsSPEC_PRODUCT_COUNT: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_COUNT'
    end
    object qryDetailEstNeedsUPPER_LEVEL_STRUCT_PART_COUNT: TAbmesFloatField
      FieldName = 'UPPER_LEVEL_STRUCT_PART_COUNT'
    end
  end
  object prvDetailEstNeeds: TDataSetProvider
    DataSet = qryDetailEstNeeds
    Left = 56
    Top = 368
  end
  object prvMaterialEstNeeds: TDataSetProvider
    DataSet = qryMaterialEstNeeds
    Left = 56
    Top = 608
  end
  object qryMaterialEstNeeds: TAbmesSQLQuery
    BeforeOpen = qryMaterialEstNeedsBeforeOpen
    AfterClose = qryMaterialEstNeedsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PRODUCTION_PRODUCT'
        ParamType = ptInput
        Value = '9'
      end
      item
        DataType = ftFloat
        Name = 'IS_PRODUCTION_PRODUCT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SELF_EXISTENT_STATUS_CODE'
        ParamType = ptInput
        Value = '9'
      end
      item
        DataType = ftFloat
        Name = 'SELF_EXISTENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_USED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.*,'
      ''
      '  NullIf('
      '    ( Coalesce(x.QUANTITY, 0) +'
      '      Coalesce(x.DIRECT_SALE_QUANTITY, 0)'
      '    ),'
      '    0'
      '  ) as FULL_QUANTITY,'
      ''
      '  NullIf('
      '    ( Coalesce(x.QUANTITY_PRICE, 0) +'
      '      Coalesce(x.DIRECT_SALE_QUANTITY_PRICE, 0)'
      '    ),'
      '    0'
      '  ) as FULL_QUANTITY_PRICE,'
      ''
      '  NullIf('
      '    Least('
      '      Coalesce(x.QUANTITY_NOPRICE_DATE, CommonConsts.MaxDate),'
      
        '      Coalesce(x.DIRECT_SALE_QTY_NOPRICE_DATE, CommonConsts.MaxD' +
        'ate)'
      '    ),'
      '    CommonConsts.MaxDate'
      '  ) as FULL_QUANTITY_NOPRICE_DATE'
      ''
      'from'
      '  ( select'
      '      p.PRODUCT_CODE,'
      '      p.CUSTOM_CODE as PRODUCT_NO,'
      '      p.NAME as PRODUCT_NAME,'
      '      p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '      p.DOC_BRANCH_CODE,'
      '      p.DOC_CODE,'
      '      %HAS_DOC_ITEMS[p] as HAS_DOC,'
      ''
      '      p.IS_PRODUCTION_PRODUCT,'
      ''
      '      p.MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.MEASURE_CODE)'
      '      ) as MEASURE_ABBREV,'
      '  '
      '      p.ACCOUNT_MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '      ) as ACCOUNT_MEASURE_ABBREV,'
      '  '
      '      p.ACCOUNT_MEASURE_COEF,'
      ''
      '      (q.TECH_QUANTITY / p.TECH_MEASURE_COEF) as QUANTITY,'
      ''
      
        '      (q.TECH_QUANTITY_PRICE / p.TECH_MEASURE_COEF) as QUANTITY_' +
        'PRICE,'
      ''
      
        '      Nvl2(p.TECH_MEASURE_COEF, q.TECH_QUANTITY_NOPRICE_DATE, nu' +
        'll) as QUANTITY_NOPRICE_DATE,'
      ''
      '      ( select'
      '          Sum('
      '            ( prpp2.EST_SALE_COVER_ACQUIRE_QTY *'
      '              Coalesce('
      
        '                ( DateTimeUtils.CountIntersectWorkdays(prpp2.BEG' +
        'IN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                  NullIf(%COUNT_WORKDAYS[prpp2.BEGIN_DATE~prpp2.' +
        'END_DATE], 0)'
      '                ),'
      
        '                ( DateTimeUtils.DatePeriodIntersectLength(prpp2.' +
        'BEGIN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                  (prpp2.END_DATE - prpp2.BEGIN_DATE + 1)'
      '                )'
      '              )'
      '            )'
      '          )'
      '        from'
      '          PAR_REL_PRODUCT_PERIODS prpp2'
      ''
      '        where'
      '          (prpp2.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      
        '          ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp2], To_Num' +
        'ber(:MIN_PRP_STATUS_CODE))'
      '            between'
      '              :MIN_PRP_STATUS_CODE'
      '            and'
      '              :MAX_PRP_STATUS_CODE'
      '          ) and'
      ''
      '          (prpp2.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '          (prpp2.BEGIN_DATE <= :END_DATE) and'
      '          (prpp2.END_DATE >= :BEGIN_DATE) and'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = prpp2.PARTNER_CODE)'
      '              )'
      '            )'
      '          )'
      '      ) as DIRECT_SALE_QUANTITY,'
      ''
      '      ( select'
      '          Sum('
      '            ( prpp2.EST_SALE_COVER_ACQUIRE_QTY *'
      '              Coalesce('
      
        '                ( DateTimeUtils.CountIntersectWorkdays(prpp2.BEG' +
        'IN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                  NullIf(%COUNT_WORKDAYS[prpp2.BEGIN_DATE~prpp2.' +
        'END_DATE], 0)'
      '                ),'
      
        '                ( DateTimeUtils.DatePeriodIntersectLength(prpp2.' +
        'BEGIN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                  (prpp2.END_DATE - prpp2.BEGIN_DATE + 1)'
      '                )'
      '              )'
      '            ) *'
      
        '            %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~prpp2.' +
        'BEGIN_DATE]'
      '          )'
      '        from'
      '          PAR_REL_PRODUCT_PERIODS prpp2'
      ''
      '        where'
      '          (prpp2.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      
        '          ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp2], To_Num' +
        'ber(:MIN_PRP_STATUS_CODE))'
      '            between'
      '              :MIN_PRP_STATUS_CODE'
      '            and'
      '              :MAX_PRP_STATUS_CODE'
      '          ) and'
      ''
      '          (prpp2.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '          (prpp2.BEGIN_DATE <= :END_DATE) and'
      '          (prpp2.END_DATE >= :BEGIN_DATE) and'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = prpp2.PARTNER_CODE)'
      '              )'
      '            )'
      '          )'
      '      ) as DIRECT_SALE_QUANTITY_PRICE,'
      ''
      '      ( select'
      '          Min('
      '            Nvl2('
      '              ( prpp2.EST_SALE_COVER_ACQUIRE_QTY *'
      '                Coalesce('
      
        '                  ( DateTimeUtils.CountIntersectWorkdays(prpp2.B' +
        'EGIN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                    NullIf(%COUNT_WORKDAYS[prpp2.BEGIN_DATE~prpp' +
        '2.END_DATE], 0)'
      '                  ),'
      
        '                  ( DateTimeUtils.DatePeriodIntersectLength(prpp' +
        '2.BEGIN_DATE, prpp2.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                    (prpp2.END_DATE - prpp2.BEGIN_DATE + 1)'
      '                  )'
      '                )'
      '              ),'
      '              Nvl2('
      
        '                %PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~pr' +
        'pp2.BEGIN_DATE],'
      '                null,'
      '                prpp2.BEGIN_DATE'
      '              ),'
      '              null'
      '            )'
      '          )'
      '        from'
      '          PAR_REL_PRODUCT_PERIODS prpp2'
      ''
      '        where'
      '          (prpp2.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      
        '          ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp2], To_Num' +
        'ber(:MIN_PRP_STATUS_CODE))'
      '            between'
      '              :MIN_PRP_STATUS_CODE'
      '            and'
      '              :MAX_PRP_STATUS_CODE'
      '          ) and'
      ''
      '          (prpp2.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '          (prpp2.BEGIN_DATE <= :END_DATE) and'
      '          (prpp2.END_DATE >= :BEGIN_DATE) and'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = prpp2.PARTNER_CODE)'
      '              )'
      '            )'
      '          )'
      '      ) as DIRECT_SALE_QTY_NOPRICE_DATE,'
      ''
      '      q.SALE_COUNT,'
      '      q.SPEC_PRODUCT_COUNT,'
      '      q.UPPER_LEVEL_STRUCT_PART_COUNT'
      ''
      '    from'
      '      PRODUCTS p,'
      '      ( select'
      '          spl.PRODUCT_CODE,'
      ''
      '          Sum('
      '            spl.TOTAL_DETAIL_TECH_QUANTITY *'
      '            spl.PRODUCT_TECH_QUANTITY *'
      '            prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '            p9.TECH_MEASURE_COEF *'
      '            Coalesce('
      
        '              ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_' +
        'DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_' +
        'DATE], 0)'
      '              ),'
      
        '              ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEG' +
        'IN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '              )'
      '            )'
      '          ) as TECH_QUANTITY,'
      ''
      '          Sum('
      '            spl.TOTAL_DETAIL_TECH_QUANTITY *'
      '            spl.PRODUCT_TECH_QUANTITY *'
      '            prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '            p9.TECH_MEASURE_COEF *'
      '            Coalesce('
      
        '              ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_' +
        'DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_' +
        'DATE], 0)'
      '              ),'
      
        '              ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEG' +
        'IN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '              )'
      '            ) *'
      
        '            %PRODUCT_BASE_PSD_SINGLE_PRICE[spl.PRODUCT_CODE~prpp' +
        '.BEGIN_DATE]'
      
        '          ) as TECH_QUANTITY_PRICE,  --// ne e istinska cena - t' +
        'riabva da se korigira s koef posle'
      ''
      '          Min('
      '            Nvl2('
      '              ( spl.TOTAL_DETAIL_TECH_QUANTITY *'
      '                spl.PRODUCT_TECH_QUANTITY *'
      '                prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '                p9.TECH_MEASURE_COEF *'
      '                Coalesce('
      
        '                  ( DateTimeUtils.CountIntersectWorkdays(prpp.BE' +
        'GIN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                    NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.' +
        'END_DATE], 0)'
      '                  ),'
      
        '                  ( DateTimeUtils.DatePeriodIntersectLength(prpp' +
        '.BEGIN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                    (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '                  )'
      '                )'
      '              ),'
      '              Nvl2('
      
        '                %PRODUCT_BASE_PSD_SINGLE_PRICE[spl.PRODUCT_CODE~' +
        'prpp.BEGIN_DATE],'
      '                null,'
      '                prpp.BEGIN_DATE'
      '              ),'
      '              null'
      '            )'
      '          ) as TECH_QUANTITY_NOPRICE_DATE,'
      ''
      
        '          Count(distinct (prpp.PRODUCT_CODE * 10000000000) + prp' +
        'p.PARTNER_CODE) as SALE_COUNT,'
      
        '          Count(distinct spl.SPEC_PRODUCT_CODE) as SPEC_PRODUCT_' +
        'COUNT,'
      
        '          Count(distinct spl.DETAIL_CODE) as UPPER_LEVEL_STRUCT_' +
        'PART_COUNT'
      ''
      '        from'
      '          PAR_REL_PRODUCT_PERIODS prpp,'
      '          PRODUCTS p9,'
      '          SPEC_LINES spl'
      ''
      '        where'
      '          (prpp.PRODUCT_CODE = p9.PRODUCT_CODE) and'
      '          (prpp.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      ''
      '          (spl.PRODUCT_CODE is not null) and'
      ''
      '          (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '          %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUC' +
        'T_COMMON_LEVEL ~ p9] and'
      ''
      '          (:PARTNER_COMMON_LEVEL * null is null) and'
      
        '          %PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ p' +
        'rpp.PARTNER_CODE ~ prpp.BORDER_REL_TYPE_CODE] and'
      ''
      
        '          ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp], To_Numb' +
        'er(:MIN_PRP_STATUS_CODE))'
      '            between'
      '              :MIN_PRP_STATUS_CODE'
      '            and'
      '              :MAX_PRP_STATUS_CODE'
      '          ) and'
      ''
      '          (prpp.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '          (prpp.BEGIN_DATE <= :END_DATE) and'
      '          (prpp.END_DATE >= :BEGIN_DATE) and'
      ''
      '          ( (:ALL_FILTERED_COMPANIES = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_COMPANIES tfc'
      '                where'
      '                  (tfc.COMPANY_CODE = prpp.PARTNER_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_PRODUCTS tfp'
      '                where'
      '                  (tfp.PRODUCT_CODE = prpp.PRODUCT_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:ALL_FILTERED_PRODUCTS_2 = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_PRODUCTS_2 tfp2'
      '                where'
      '                  (tfp2.PRODUCT_CODE = spl.PRODUCT_CODE)'
      '              )'
      '            )'
      '          )'
      ''
      '        group by'
      '          spl.PRODUCT_CODE'
      '      ) q'
      ''
      '    where'
      '      (p.PRODUCT_CODE = q.PRODUCT_CODE(+)) and'
      ''
      '      (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '      (p.IS_GROUP = 0) and'
      ''
      '      ( (:ALL_FILTERED_PRODUCTS_2 = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_PRODUCTS_2 tfp2'
      '            where'
      '              (tfp2.PRODUCT_CODE = p.PRODUCT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:IS_PRODUCTION_PRODUCT = 9) or'
      '        (p.IS_PRODUCTION_PRODUCT = :IS_PRODUCTION_PRODUCT)'
      '      ) and'
      ''
      '      ( (:SELF_EXISTENT_STATUS_CODE = 9) or'
      
        '        (p.SELF_EXISTENT_STATUS_CODE = :SELF_EXISTENT_STATUS_COD' +
        'E)'
      '      ) and'
      ''
      '      ( (:IS_USED = 9) or'
      '        ( (:IS_USED = 1) and'
      '          (q.PRODUCT_CODE is not null)'
      '        ) or'
      '        ( (:IS_USED = 0) and'
      '          (q.PRODUCT_CODE is null)'
      '        )'
      '      )'
      '  ) x'
      ''
      'order by'
      '  UPPER_LEVEL_STRUCT_PART_COUNT desc,'
      '  SPEC_PRODUCT_COUNT desc,'
      '  SALE_COUNT desc,'
      '  PRODUCT_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp2.BEGIN_DATE~prpp2.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PAR_REL_PRODUCT_STATUS_CODE[prpp2]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_BASE_PSD_SINGLE_PRICE[p.PRODUCT_CODE~prpp2.BEGIN_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_BASE_PSD_SINGLE_PRICE[spl.PRODUCT_CODE~prpp.BEGIN_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON_LE' +
          'VEL ~ p9]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PARTNER' +
          '_CODE ~ prpp.BORDER_REL_TYPE_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PAR_REL_PRODUCT_STATUS_CODE[prpp]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_STRUCT_PART_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 56
    Top = 656
    object qryMaterialEstNeedsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMaterialEstNeedsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryMaterialEstNeedsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryMaterialEstNeedsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryMaterialEstNeedsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryMaterialEstNeedsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryMaterialEstNeedsHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryMaterialEstNeedsIS_PRODUCTION_PRODUCT: TAbmesFloatField
      FieldName = 'IS_PRODUCTION_PRODUCT'
    end
    object qryMaterialEstNeedsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryMaterialEstNeedsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryMaterialEstNeedsACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryMaterialEstNeedsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryMaterialEstNeedsACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object qryMaterialEstNeedsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryMaterialEstNeedsQUANTITY_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_PRICE'
    end
    object qryMaterialEstNeedsQUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'QUANTITY_NOPRICE_DATE'
    end
    object qryMaterialEstNeedsDIRECT_SALE_QUANTITY: TAbmesFloatField
      FieldName = 'DIRECT_SALE_QUANTITY'
    end
    object qryMaterialEstNeedsDIRECT_SALE_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'DIRECT_SALE_QUANTITY_PRICE'
    end
    object qryMaterialEstNeedsDIRECT_SALE_QTY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'DIRECT_SALE_QTY_NOPRICE_DATE'
    end
    object qryMaterialEstNeedsFULL_QUANTITY: TAbmesFloatField
      FieldName = 'FULL_QUANTITY'
    end
    object qryMaterialEstNeedsFULL_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'FULL_QUANTITY_PRICE'
    end
    object qryMaterialEstNeedsFULL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'FULL_QUANTITY_NOPRICE_DATE'
    end
    object qryMaterialEstNeedsSALE_COUNT: TAbmesFloatField
      FieldName = 'SALE_COUNT'
    end
    object qryMaterialEstNeedsSPEC_PRODUCT_COUNT: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_COUNT'
    end
    object qryMaterialEstNeedsUPPER_LEVEL_STRUCT_PART_COUNT: TAbmesFloatField
      FieldName = 'UPPER_LEVEL_STRUCT_PART_COUNT'
    end
  end
  object qryDetailEstNeedsByResultProduct: TAbmesSQLQuery
    BeforeOpen = qryDetailEstNeedsByResultProductBeforeOpen
    AfterClose = qryDetailEstNeedsByResultProductAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOC,'
      
        '  Count(distinct (prpp.PRODUCT_CODE * 10000000000) + prpp.PARTNE' +
        'R_CODE) as SALE_COUNT,'
      ''
      '  Sum('
      '    prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '    Coalesce('
      
        '      ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, pr' +
        'pp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '        NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE], 0' +
        ')'
      '      ),'
      
        '      ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DATE,' +
        ' prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '        (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '      )'
      '    )'
      '  ) as QUANTITY,'
      '  '
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  ( Sum('
      '      (spl.TOTAL_DETAIL_TECH_QUANTITY / p2.TECH_MEASURE_COEF) *'
      '      prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '      p8.TECH_MEASURE_COEF *'
      '      Coalesce('
      
        '        ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, ' +
        'prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '          NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE],' +
        ' 0)'
      '        ),'
      
        '        ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DAT' +
        'E, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '          (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '        )'
      '      )'
      '    ) /'
      '    NullIf('
      '      Sum('
      '        prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '        p8.TECH_MEASURE_COEF *'
      '        Coalesce('
      
        '          ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE' +
        ', prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '            NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE' +
        '], 0)'
      '          ),'
      
        '          ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_D' +
        'ATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '            (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '          )'
      '        )'
      '      ),'
      '      0'
      '    )'
      '  ) as STRUCT_PART_SINGLE_QUANTITY,'
      ''
      '  Sum('
      '    (spl.TOTAL_DETAIL_TECH_QUANTITY / p2.TECH_MEASURE_COEF) *'
      '    prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '    p8.TECH_MEASURE_COEF *'
      '    Coalesce('
      
        '      ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, pr' +
        'pp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '        NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE], 0' +
        ')'
      '      ),'
      
        '      ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DATE,' +
        ' prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '        (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '      )'
      '    )'
      '  ) as STRUCT_PART_TOTAL_QUANTITY,'
      '  '
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p2.MEASURE_CODE)'
      '  ) as STRUCT_PART_MEASURE_ABBREV'
      ''
      'from'
      '  PAR_REL_PRODUCT_PERIODS prpp,'
      '  PRODUCTS p8,'
      '  SPEC_LINES spl,'
      '  PRODUCTS p,'
      '  PRODUCTS p2'
      ''
      'where'
      '  (prpp.PRODUCT_CODE = p8.PRODUCT_CODE) and'
      '  (prpp.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '  (prpp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (spl.DETAIL_CODE = p2.PRODUCT_CODE) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '  (spl.PARENT_SPEC_LINE_CODE is not null) and'
      ''
      '  ( (spl.PRODUCT_CODE is null) or'
      '    (spl.DETAIL_CODE <> spl.PRODUCT_CODE)'
      '  ) and'
      ''
      '  (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '  %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON' +
        '_LEVEL ~ p] and'
      ''
      '  (:PARTNER_COMMON_LEVEL * null is null) and'
      
        '  %PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PART' +
        'NER_CODE ~ prpp.BORDER_REL_TYPE_CODE] and'
      ''
      
        '  ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp], To_Number(:MIN_' +
        'PRP_STATUS_CODE))'
      '    between'
      '      :MIN_PRP_STATUS_CODE'
      '    and'
      '      :MAX_PRP_STATUS_CODE'
      '  ) and'
      ''
      '  (prpp.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '  (prpp.BEGIN_DATE <= :END_DATE) and'
      '  (prpp.END_DATE >= :BEGIN_DATE) and'
      ''
      '  ( (:ALL_FILTERED_COMPANIES = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_COMPANIES tfc'
      '        where'
      '          (tfc.COMPANY_CODE = prpp.PARTNER_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = prpp.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (spl.DETAIL_CODE = :PRODUCT_CODE)'
      ''
      'group by'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.PARTNER_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  p.MEASURE_CODE,'
      '  p2.MEASURE_CODE'
      ''
      'order by'
      '  STRUCT_PART_TOTAL_QUANTITY desc,'
      '  PRODUCT_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON_LE' +
          'VEL ~ p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PARTNER' +
          '_CODE ~ prpp.BORDER_REL_TYPE_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PAR_REL_PRODUCT_STATUS_CODE[prpp]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 384
    Top = 416
    object qryDetailEstNeedsByResultProductPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDetailEstNeedsByResultProductPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryDetailEstNeedsByResultProductPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryDetailEstNeedsByResultProductPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryDetailEstNeedsByResultProductDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDetailEstNeedsByResultProductDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDetailEstNeedsByResultProductHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryDetailEstNeedsByResultProductSALE_COUNT: TAbmesFloatField
      FieldName = 'SALE_COUNT'
    end
    object qryDetailEstNeedsByResultProductQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryDetailEstNeedsByResultProductMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryDetailEstNeedsByResultProductSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_SINGLE_QUANTITY'
    end
    object qryDetailEstNeedsByResultProductSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_TOTAL_QUANTITY'
    end
    object qryDetailEstNeedsByResultProductSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'STRUCT_PART_MEASURE_ABBREV'
      Size = 5
    end
  end
  object prvDetailEstNeedsByResultProduct: TDataSetProvider
    DataSet = qryDetailEstNeedsByResultProduct
    Left = 384
    Top = 368
  end
  object qryMaterialEstNeedsByResultProduct: TAbmesSQLQuery
    BeforeOpen = qryMaterialEstNeedsByResultProductBeforeOpen
    AfterClose = qryMaterialEstNeedsByResultProductAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOC,'
      
        '  Count(distinct (prpp.PRODUCT_CODE * 10000000000) + prpp.PARTNE' +
        'R_CODE) as SALE_COUNT,'
      ''
      '  Sum('
      '    prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '    Coalesce('
      
        '      ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, pr' +
        'pp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '        NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE], 0' +
        ')'
      '      ),'
      
        '      ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DATE,' +
        ' prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '        (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '      )'
      '    )'
      '  ) as QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  ( Sum('
      
        '      ((spl.TOTAL_DETAIL_TECH_QUANTITY * spl.PRODUCT_TECH_QUANTI' +
        'TY) / p2.TECH_MEASURE_COEF) *'
      '      prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '      p.TECH_MEASURE_COEF *'
      '      Coalesce('
      
        '        ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, ' +
        'prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '          NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE],' +
        ' 0)'
      '        ),'
      
        '        ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DAT' +
        'E, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '          (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '        )'
      '      )'
      '    ) /'
      '    NullIf('
      '      Sum('
      '        prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '        p.TECH_MEASURE_COEF *'
      '        Coalesce('
      
        '          ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE' +
        ', prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '            NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE' +
        '], 0)'
      '          ),'
      
        '          ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_D' +
        'ATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '            (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '          )'
      '        )'
      '      ),'
      '      0'
      '    )'
      '  ) as STRUCT_PART_SINGLE_QUANTITY,'
      ''
      '  Sum('
      
        '    ((spl.TOTAL_DETAIL_TECH_QUANTITY * spl.PRODUCT_TECH_QUANTITY' +
        ') / p2.TECH_MEASURE_COEF) *'
      '    prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '    p.TECH_MEASURE_COEF *'
      '    Coalesce('
      
        '      ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, pr' +
        'pp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '        NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE], 0' +
        ')'
      '      ),'
      
        '      ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DATE,' +
        ' prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '        (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '      )'
      '    )'
      '  ) as STRUCT_PART_TOTAL_QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p2.MEASURE_CODE)'
      '  ) as STRUCT_PART_MEASURE_ABBREV'
      ''
      'from'
      '  PAR_REL_PRODUCT_PERIODS prpp,'
      '  SPEC_LINES spl,'
      '  PRODUCTS p,'
      '  PRODUCTS p2'
      ''
      'where'
      '  (prpp.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '  (prpp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (spl.PRODUCT_CODE = p2.PRODUCT_CODE) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '  (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '  %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON' +
        '_LEVEL ~ p] and'
      ''
      '  (:PARTNER_COMMON_LEVEL * null is null) and'
      
        '  %PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PART' +
        'NER_CODE ~ prpp.BORDER_REL_TYPE_CODE] and'
      ''
      
        '  ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp], To_Number(:MIN_' +
        'PRP_STATUS_CODE))'
      '    between'
      '      :MIN_PRP_STATUS_CODE'
      '    and'
      '      :MAX_PRP_STATUS_CODE'
      '  ) and'
      ''
      '  (prpp.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '  (prpp.BEGIN_DATE <= :END_DATE) and'
      '  (prpp.END_DATE >= :BEGIN_DATE) and'
      ''
      '  ( (:ALL_FILTERED_COMPANIES = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_COMPANIES tfc'
      '        where'
      '          (tfc.COMPANY_CODE = prpp.PARTNER_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = prpp.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (spl.PRODUCT_CODE = :PRODUCT_CODE)'
      ''
      'group by'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.PARTNER_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  p.MEASURE_CODE,'
      '  p2.MEASURE_CODE'
      ''
      'order by'
      '  STRUCT_PART_TOTAL_QUANTITY desc,'
      '  PRODUCT_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON_LE' +
          'VEL ~ p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PARTNER' +
          '_CODE ~ prpp.BORDER_REL_TYPE_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PAR_REL_PRODUCT_STATUS_CODE[prpp]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 384
    Top = 656
    object qryMaterialEstNeedsByResultProductPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMaterialEstNeedsByResultProductPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryMaterialEstNeedsByResultProductPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryMaterialEstNeedsByResultProductPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryMaterialEstNeedsByResultProductDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryMaterialEstNeedsByResultProductDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryMaterialEstNeedsByResultProductHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryMaterialEstNeedsByResultProductSALE_COUNT: TAbmesFloatField
      FieldName = 'SALE_COUNT'
    end
    object qryMaterialEstNeedsByResultProductQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryMaterialEstNeedsByResultProductMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryMaterialEstNeedsByResultProductSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_SINGLE_QUANTITY'
    end
    object qryMaterialEstNeedsByResultProductSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_TOTAL_QUANTITY'
    end
    object qryMaterialEstNeedsByResultProductSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'STRUCT_PART_MEASURE_ABBREV'
      Size = 5
    end
  end
  object prvMaterialEstNeedsByResultProduct: TDataSetProvider
    DataSet = qryMaterialEstNeedsByResultProduct
    Left = 384
    Top = 608
  end
  object prvDetailEstNeedsByParentDetail: TDataSetProvider
    DataSet = qryDetailEstNeedsByParentDetail
    Left = 568
    Top = 368
  end
  object qryDetailEstNeedsByParentDetail: TAbmesSQLQuery
    BeforeOpen = qryDetailEstNeedsByParentDetailBeforeOpen
    AfterClose = qryDetailEstNeedsByParentDetailAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOC,'
      ''
      '  Sum('
      '    (splp.TOTAL_DETAIL_TECH_QUANTITY / p.TECH_MEASURE_COEF) *'
      '    prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '    p9.TECH_MEASURE_COEF *'
      '    Coalesce('
      
        '      ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, pr' +
        'pp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '        NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE], 0' +
        ')'
      '      ),'
      
        '      ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DATE,' +
        ' prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '        (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '      )'
      '    )'
      '  ) as QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  ( Sum('
      '      (spl.TOTAL_DETAIL_TECH_QUANTITY / p2.TECH_MEASURE_COEF) *'
      '      prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '      p9.TECH_MEASURE_COEF *'
      '      Coalesce('
      
        '        ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, ' +
        'prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '          NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE],' +
        ' 0)'
      '        ),'
      
        '        ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DAT' +
        'E, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '          (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '        )'
      '      )'
      '    ) /'
      '    NullIf('
      '      Sum('
      
        '        (splp.TOTAL_DETAIL_TECH_QUANTITY / p.TECH_MEASURE_COEF) ' +
        '*'
      '        prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '        p9.TECH_MEASURE_COEF *'
      '        Coalesce('
      
        '          ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE' +
        ', prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '            NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE' +
        '], 0)'
      '          ),'
      
        '          ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_D' +
        'ATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '            (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '          )'
      '        )'
      '      ),'
      '      0'
      '    )'
      '  ) as STRUCT_PART_SINGLE_QUANTITY,'
      ''
      '  Sum('
      '    (spl.TOTAL_DETAIL_TECH_QUANTITY / p2.TECH_MEASURE_COEF) *'
      '    prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '    p9.TECH_MEASURE_COEF *'
      '    Coalesce('
      
        '      ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, pr' +
        'pp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '        NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE], 0' +
        ')'
      '      ),'
      
        '      ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DATE,' +
        ' prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '        (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '      )'
      '    )'
      '  ) as STRUCT_PART_TOTAL_QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p2.MEASURE_CODE)'
      '  ) as STRUCT_PART_MEASURE_ABBREV'
      ''
      'from'
      '  PAR_REL_PRODUCT_PERIODS prpp,'
      '  SPEC_LINES spl,'
      '  SPEC_LINES splp,'
      '  PRODUCTS p9,'
      '  PRODUCTS p,'
      '  PRODUCTS p2'
      ''
      'where'
      '  (prpp.PRODUCT_CODE = p9.PRODUCT_CODE) and'
      '  (prpp.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '  (spl.SPEC_PRODUCT_CODE = splp.SPEC_PRODUCT_CODE) and'
      '  (spl.PARENT_SPEC_LINE_CODE = splp.SPEC_LINE_CODE) and'
      '  (splp.DETAIL_CODE = p.PRODUCT_CODE) and'
      '  (spl.DETAIL_CODE = p2.PRODUCT_CODE) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '  ( (spl.PRODUCT_CODE is null) or'
      '    (spl.DETAIL_CODE <> spl.PRODUCT_CODE)'
      '  ) and'
      ''
      '  (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '  %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON' +
        '_LEVEL ~ p9] and'
      ''
      '  (:PARTNER_COMMON_LEVEL * null is null) and'
      
        '  %PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PART' +
        'NER_CODE ~ prpp.BORDER_REL_TYPE_CODE] and'
      ''
      
        '  ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp], To_Number(:MIN_' +
        'PRP_STATUS_CODE))'
      '    between'
      '      :MIN_PRP_STATUS_CODE'
      '    and'
      '      :MAX_PRP_STATUS_CODE'
      '  ) and'
      ''
      '  (prpp.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '  (prpp.BEGIN_DATE <= :END_DATE) and'
      '  (prpp.END_DATE >= :BEGIN_DATE) and'
      ''
      '  ( (:ALL_FILTERED_COMPANIES = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_COMPANIES tfc'
      '        where'
      '          (tfc.COMPANY_CODE = prpp.PARTNER_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = prpp.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (spl.DETAIL_CODE = :PRODUCT_CODE)'
      ''
      'group by'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.PARTNER_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  p.MEASURE_CODE,'
      '  p2.MEASURE_CODE'
      ''
      'order by'
      '  STRUCT_PART_TOTAL_QUANTITY desc,'
      '  PRODUCT_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON_LE' +
          'VEL ~ p9]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PARTNER' +
          '_CODE ~ prpp.BORDER_REL_TYPE_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PAR_REL_PRODUCT_STATUS_CODE[prpp]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 568
    Top = 416
    object qryDetailEstNeedsByParentDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDetailEstNeedsByParentDetailPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryDetailEstNeedsByParentDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryDetailEstNeedsByParentDetailPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryDetailEstNeedsByParentDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDetailEstNeedsByParentDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDetailEstNeedsByParentDetailHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryDetailEstNeedsByParentDetailQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryDetailEstNeedsByParentDetailMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryDetailEstNeedsByParentDetailSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_SINGLE_QUANTITY'
    end
    object qryDetailEstNeedsByParentDetailSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_TOTAL_QUANTITY'
    end
    object qryDetailEstNeedsByParentDetailSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'STRUCT_PART_MEASURE_ABBREV'
      Size = 5
    end
  end
  object qryMaterialEstNeedsByDetail: TAbmesSQLQuery
    BeforeOpen = qryMaterialEstNeedsByDetailBeforeOpen
    AfterClose = qryMaterialEstNeedsByDetailAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.PARTNER_PRODUCT_NAMES as PRODUCT_COMPANY_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOC,'
      ''
      '  Sum('
      '    (spl.TOTAL_DETAIL_TECH_QUANTITY / p.TECH_MEASURE_COEF) *'
      '    prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '    p9.TECH_MEASURE_COEF *'
      '    Coalesce('
      
        '      ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, pr' +
        'pp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '        NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE], 0' +
        ')'
      '      ),'
      
        '      ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DATE,' +
        ' prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '        (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '      )'
      '    )'
      '  ) as QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  ( Sum('
      
        '      ((spl.TOTAL_DETAIL_TECH_QUANTITY * spl.PRODUCT_TECH_QUANTI' +
        'TY) / p2.TECH_MEASURE_COEF) *'
      '      prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '      p9.TECH_MEASURE_COEF *'
      '      Coalesce('
      
        '        ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, ' +
        'prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '          NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE],' +
        ' 0)'
      '        ),'
      
        '        ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DAT' +
        'E, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '          (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '        )'
      '      )'
      '    ) /'
      '    NullIf('
      '      Sum('
      '        (spl.TOTAL_DETAIL_TECH_QUANTITY / p.TECH_MEASURE_COEF) *'
      '        prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '        p9.TECH_MEASURE_COEF *'
      '        Coalesce('
      
        '          ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE' +
        ', prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '            NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE' +
        '], 0)'
      '          ),'
      
        '          ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_D' +
        'ATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '            (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '          )'
      '        )'
      '      ),'
      '      0'
      '    )'
      '  ) as STRUCT_PART_SINGLE_QUANTITY,'
      '  '
      '  Sum('
      
        '    ((spl.TOTAL_DETAIL_TECH_QUANTITY * spl.PRODUCT_TECH_QUANTITY' +
        ') / p2.TECH_MEASURE_COEF) *'
      '    prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '    p9.TECH_MEASURE_COEF *'
      '    Coalesce('
      
        '      ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, pr' +
        'pp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '        NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE], 0' +
        ')'
      '      ),'
      
        '      ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DATE,' +
        ' prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '        (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '      )'
      '    )'
      '  ) as STRUCT_PART_TOTAL_QUANTITY,'
      '  '
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p2.MEASURE_CODE)'
      '  ) as STRUCT_PART_MEASURE_ABBREV'
      ''
      'from'
      '  PAR_REL_PRODUCT_PERIODS prpp,'
      '  SPEC_LINES spl,'
      '  PRODUCTS p9,'
      '  PRODUCTS p,'
      '  PRODUCTS p2'
      ''
      'where'
      '  (prpp.PRODUCT_CODE = p9.PRODUCT_CODE) and'
      '  (prpp.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE) and'
      '  (spl.DETAIL_CODE = p.PRODUCT_CODE) and'
      '  (spl.PRODUCT_CODE = p2.PRODUCT_CODE) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '  (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '  %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON' +
        '_LEVEL ~ p9] and'
      ''
      '  (:PARTNER_COMMON_LEVEL * null is null) and'
      
        '  %PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PART' +
        'NER_CODE ~ prpp.BORDER_REL_TYPE_CODE] and'
      ''
      
        '  ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp], To_Number(:MIN_' +
        'PRP_STATUS_CODE))'
      '    between'
      '      :MIN_PRP_STATUS_CODE'
      '    and'
      '      :MAX_PRP_STATUS_CODE'
      '  ) and'
      ''
      '  (prpp.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '  (prpp.BEGIN_DATE <= :END_DATE) and'
      '  (prpp.END_DATE >= :BEGIN_DATE) and'
      ''
      '  ( (:ALL_FILTERED_COMPANIES = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_COMPANIES tfc'
      '        where'
      '          (tfc.COMPANY_CODE = prpp.PARTNER_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = prpp.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (spl.PRODUCT_CODE = :PRODUCT_CODE)'
      ''
      'group by'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.PARTNER_PRODUCT_NAMES,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  p.MEASURE_CODE,'
      '  p2.MEASURE_CODE'
      ''
      'order by'
      '  STRUCT_PART_TOTAL_QUANTITY desc,'
      '  PRODUCT_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON_LE' +
          'VEL ~ p9]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PARTNER' +
          '_CODE ~ prpp.BORDER_REL_TYPE_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PAR_REL_PRODUCT_STATUS_CODE[prpp]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    Left = 568
    Top = 656
    object qryMaterialEstNeedsByDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMaterialEstNeedsByDetailPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryMaterialEstNeedsByDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryMaterialEstNeedsByDetailPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryMaterialEstNeedsByDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryMaterialEstNeedsByDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryMaterialEstNeedsByDetailHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryMaterialEstNeedsByDetailQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryMaterialEstNeedsByDetailMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryMaterialEstNeedsByDetailSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_SINGLE_QUANTITY'
    end
    object qryMaterialEstNeedsByDetailSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_TOTAL_QUANTITY'
    end
    object qryMaterialEstNeedsByDetailSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'STRUCT_PART_MEASURE_ABBREV'
      Size = 5
    end
  end
  object prvMaterialEstNeedsByDetail: TDataSetProvider
    DataSet = qryMaterialEstNeedsByDetail
    Left = 568
    Top = 608
  end
  object qryEstStageDeptDetailFlow: TAbmesSQLQuery
    BeforeOpen = qryEstStageDeptDetailFlowBeforeOpen
    AfterClose = qryEstStageDeptDetailFlowAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end>
    SQL.Strings = (
      'select'
      '  /*+ NO_USE_HASH(smvl) NO_USE_MERGE(smvl) */'
      '  smvs.DEPT_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.NAME'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE)'
      '  ) as DEPT_NAME,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[d]'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE)'
      '  ) as DEPT_HAS_DOC,'
      ''
      '  ( select'
      '      ( case'
      '          when (ContextDate between d.BEGIN_DATE and d.END_DATE)'
      '          then 1'
      '          else 0'
      '        end'
      '      ) as IS_ACTIVE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvs.DEPT_CODE)'
      '  ) as DEPT_IS_ACTIVE,'
      ''
      '  ( select'
      '      p.PARENT_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_GROUP_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NAME,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_TECH_MEASURE_ABBR,'
      ''
      '  sl.DETAIL_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_NAME,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_HAS_DOC,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE) and'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+))'
      '  ) as DETAIL_TECH_MEASURE_ABBR,'
      ''
      '  ( select'
      '      NullIf(Count(*), 0)'
      '    from'
      '      BASE_GROUPS bg,'
      '      BASE_GROUP_PRODUCTS bgp'
      '    where'
      '      (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '      (bgp.PRODUCT_CODE = sl.DETAIL_CODE) and'
      '      (bg.GROUP_DEPT_CODE = smvs.DEPT_CODE)'
      '  ) as BASE_GROUP_COUNT,'
      ''
      '  Sum('
      '    sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '    prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '    p9.TECH_MEASURE_COEF *'
      '    Coalesce('
      
        '      ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, pr' +
        'pp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '        NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE], 0' +
        ')'
      '      ),'
      
        '      ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DATE,' +
        ' prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '        (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '      )'
      '    )'
      '  ) as TECH_QUANTITY,'
      ''
      '  To_Number(null) as CAPACITY_BUSY_HOURS,'
      ''
      '  Sum('
      '    ( select'
      '        Ceil('
      '          ( prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '            Coalesce('
      
        '              ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_' +
        'DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_' +
        'DATE], 0)'
      '              ),'
      
        '              ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEG' +
        'IN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '              )'
      '            )'
      '          ) /'
      '          pp.BALANCE_QUANTITY'
      '        )'
      '      from'
      '        PRODUCT_PERIODS pp'
      '      where'
      '        (pp.PRODUCT_CODE = prpp.PRODUCT_CODE) and'
      '        (prpp.BEGIN_DATE between pp.BEGIN_DATE and pp.END_DATE)'
      '    )'
      '  ) as OPERATION_COUNT,'
      ''
      
        '  Count(distinct (prpp.PRODUCT_CODE * 10000000000) + prpp.PARTNE' +
        'R_CODE) as MODEL_COUNT,'
      ''
      '  ( select'
      '      sp.SPEC_PRODUCT_CODE'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as SPEC_PRODUCT_CODE'
      ''
      'from'
      '  PAR_REL_PRODUCT_PERIODS prpp,'
      '  PRODUCT_PERIODS pp9,'
      '  PRODUCTS p9,'
      '  PROD_PER_SPEC_MODEL_VARIANTS ppsmv9,'
      '  SPEC_MODEL_VARIANT_LINES smvl,'
      '  SPEC_LINES sl,'
      '  SPEC_MODEL_VARIANT_STAGES smvs'
      ''
      'where'
      '  (prpp.PRODUCT_CODE = p9.PRODUCT_CODE) and'
      ''
      '  (prpp.PRODUCT_CODE = pp9.PRODUCT_CODE) and'
      '  (prpp.BEGIN_DATE between pp9.BEGIN_DATE and pp9.END_DATE) and'
      ''
      '  (pp9.PRODUCT_CODE = ppsmv9.EST_VAR_PRODUCT_CODE) and'
      
        '  (pp9.PRODUCT_PERIOD_CODE = ppsmv9.EST_VAR_PRODUCT_PERIOD_CODE)' +
        ' and'
      ''
      '  (ppsmv9.PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) and'
      
        '  (ppsmv9.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIANT_NO) an' +
        'd'
      ''
      '  (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) and'
      '  (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      '  (smvl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      '  (smvl.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARIANT_NO) and'
      '  (smvl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and'
      ''
      '  (smvs.SPEC_LINE_STAGE_NO > 0) and'
      '  (smvs.OUTGOING_WORKDAYS > 0) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '        where'
      '          (tfd.DEPT_CODE = smvs.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS_3 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS_3 tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = sl.DETAIL_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '  %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON' +
        '_LEVEL ~ p9] and'
      ''
      '  (:PARTNER_COMMON_LEVEL * null is null) and'
      
        '  %PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PART' +
        'NER_CODE ~ prpp.BORDER_REL_TYPE_CODE] and'
      ''
      '  (prpp.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '  (prpp.BEGIN_DATE <= :END_DATE) and'
      '  (prpp.END_DATE >= :BEGIN_DATE) and'
      ''
      
        '  ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp], To_Number(:MIN_' +
        'PRP_STATUS_CODE))'
      '    between'
      '      :MIN_PRP_STATUS_CODE'
      '    and'
      '      :MAX_PRP_STATUS_CODE'
      '  )'
      ''
      'group by'
      '  smvs.DEPT_CODE,'
      '  sl.DETAIL_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON_LE' +
          'VEL ~ p9]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PARTNER' +
          '_CODE ~ prpp.BORDER_REL_TYPE_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PAR_REL_PRODUCT_STATUS_CODE[prpp]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'FLOW_LEVEL'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'FLOW_TYPE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPT_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DETAIL_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 424
    Top = 152
    object qryEstStageDeptDetailFlowDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEstStageDeptDetailFlowDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryEstStageDeptDetailFlowDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryEstStageDeptDetailFlowDEPT_HAS_DOC: TAbmesFloatField
      FieldName = 'DEPT_HAS_DOC'
    end
    object qryEstStageDeptDetailFlowDEPT_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DEPT_IS_ACTIVE'
    end
    object qryEstStageDeptDetailFlowDETAIL_GROUP_CODE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEstStageDeptDetailFlowDETAIL_GROUP_NO: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_NO'
    end
    object qryEstStageDeptDetailFlowDETAIL_GROUP_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_GROUP_NAME'
      Size = 100
    end
    object qryEstStageDeptDetailFlowDETAIL_GROUP_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_IS_ACTIVE'
    end
    object qryEstStageDeptDetailFlowDETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_GROUP_TECH_MEASURE_ABBR'
      Size = 5
    end
    object qryEstStageDeptDetailFlowDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEstStageDeptDetailFlowDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qryEstStageDeptDetailFlowDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryEstStageDeptDetailFlowDETAIL_HAS_DOC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOC'
    end
    object qryEstStageDeptDetailFlowDETAIL_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_IS_ACTIVE'
    end
    object qryEstStageDeptDetailFlowDETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_TECH_MEASURE_ABBR'
      Size = 5
    end
    object qryEstStageDeptDetailFlowBASE_GROUP_COUNT: TAbmesFloatField
      FieldName = 'BASE_GROUP_COUNT'
    end
    object qryEstStageDeptDetailFlowTECH_QUANTITY: TAbmesFloatField
      FieldName = 'TECH_QUANTITY'
    end
    object qryEstStageDeptDetailFlowCAPACITY_BUSY_HOURS: TAbmesFloatField
      FieldName = 'CAPACITY_BUSY_HOURS'
    end
    object qryEstStageDeptDetailFlowOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object qryEstStageDeptDetailFlowMODEL_COUNT: TAbmesFloatField
      FieldName = 'MODEL_COUNT'
    end
    object qryEstStageDeptDetailFlowSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
  end
  object qryEstOpDeptDetailFlow: TAbmesSQLQuery
    BeforeOpen = qryEstOpDeptDetailFlowBeforeOpen
    AfterClose = qryEstOpDeptDetailFlowAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
        Name = 'ALL_FILTERED_PRODUCTS_3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smvso.DEPT_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.NAME'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_NAME,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[d]'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_HAS_DOC,'
      ''
      '  ( select'
      '      ( case'
      '          when (ContextDate between d.BEGIN_DATE and d.END_DATE)'
      '          then 1'
      '          else 0'
      '        end'
      '      ) as IS_ACTIVE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_IS_ACTIVE,'
      ''
      '  ( select'
      '      p.PARENT_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_GROUP_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NAME,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_TECH_MEASURE_ABBR,'
      ''
      '  sl.DETAIL_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_NAME,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_HAS_DOC,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE) and'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+))'
      '  ) as DETAIL_TECH_MEASURE_ABBR,'
      ''
      '  ( select'
      '      NullIf(Count(*), 0)'
      '    from'
      '      BASE_GROUPS bg,'
      '      BASE_GROUP_PRODUCTS bgp'
      '    where'
      '      (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '      (bgp.PRODUCT_CODE = sl.DETAIL_CODE) and'
      '      (bg.GROUP_DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as BASE_GROUP_COUNT,'
      ''
      '  Sum('
      '    sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '    prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '    p9.TECH_MEASURE_COEF *'
      '    Coalesce('
      
        '      ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, pr' +
        'pp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '        NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE], 0' +
        ')'
      '      ),'
      
        '      ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DATE,' +
        ' prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '        (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '      )'
      '    )'
      '  ) as TECH_QUANTITY,'
      ''
      '  ( Coalesce('
      '      Sum('
      '        ( ( ( prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '              p9.TECH_MEASURE_COEF *'
      '              Coalesce('
      
        '                ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGI' +
        'N_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                  NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.EN' +
        'D_DATE], 0)'
      '                ),'
      
        '                ( DateTimeUtils.DatePeriodIntersectLength(prpp.B' +
        'EGIN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                  (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '                )'
      '              )'
      '            ) *'
      '            sl.TOTAL_DETAIL_TECH_QUANTITY'
      '          ) /'
      '          smvso.HOUR_TECH_QUANTITY'
      '        ) /'
      '        Coalesce('
      '          ( select'
      '              dp.PARALLEL_PROCESS_COUNT'
      '            from'
      '              DEPT_PERIODS dp'
      '            where'
      '              (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      
        '              (prpp.BEGIN_DATE between dp.BEGIN_DATE and dp.END_' +
        'DATE)'
      '          ),'
      '          1'
      '        )'
      '      ),'
      '      0'
      '    ) +'
      '    Coalesce('
      '      Sum('
      '        Nvl2('
      '          smvso.SETUP_PROFESSION_CODE,'
      '          ( ( ( select'
      '                  Ceil('
      '                    ( prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '                      Coalesce('
      
        '                        ( DateTimeUtils.CountIntersectWorkdays(p' +
        'rpp.BEGIN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                          NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE' +
        '~prpp.END_DATE], 0)'
      '                        ),'
      
        '                        ( DateTimeUtils.DatePeriodIntersectLengt' +
        'h(prpp.BEGIN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                          (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '                        )'
      '                      )'
      '                    ) /'
      '                    pp.BALANCE_QUANTITY'
      '                  )'
      '                from'
      '                  PRODUCT_PERIODS pp'
      '                where'
      '                  (pp.PRODUCT_CODE = prpp.PRODUCT_CODE) and'
      
        '                  (prpp.BEGIN_DATE between pp.BEGIN_DATE and pp.' +
        'END_DATE)'
      '              ) *'
      '              smvso.SETUP_COUNT /'
      '              smvso.SETUP_HOUR_TECH_QUANTITY'
      '            ) /'
      '            Coalesce('
      '              ( select'
      '                  dp.PARALLEL_PROCESS_COUNT'
      '                from'
      '                  DEPT_PERIODS dp'
      '                where'
      '                  (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      
        '                  (prpp.BEGIN_DATE between dp.BEGIN_DATE and dp.' +
        'END_DATE)'
      '              ),'
      '              1'
      '            )'
      '          ),'
      '          null'
      '        )'
      '      ),'
      '      0'
      '    )'
      '  ) as CAPACITY_BUSY_HOURS,'
      ''
      '  Sum('
      '    ( select'
      '        Ceil('
      '          ( prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '            Coalesce('
      
        '              ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_' +
        'DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_' +
        'DATE], 0)'
      '              ),'
      
        '              ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEG' +
        'IN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '              )'
      '            )'
      '          ) /'
      '          pp.BALANCE_QUANTITY'
      '        )'
      '      from'
      '        PRODUCT_PERIODS pp'
      '      where'
      '        (pp.PRODUCT_CODE = prpp.PRODUCT_CODE) and'
      '        (prpp.BEGIN_DATE between pp.BEGIN_DATE and pp.END_DATE)'
      '    )'
      '  ) as OPERATION_COUNT,'
      ''
      
        '  Count(distinct (prpp.PRODUCT_CODE * 10000000000) + prpp.PARTNE' +
        'R_CODE) as MODEL_COUNT,'
      ''
      '  ( select'
      '      sp.SPEC_PRODUCT_CODE'
      '    from'
      '      SPECS sp'
      '    where'
      '      (sp.SPEC_PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as SPEC_PRODUCT_CODE'
      ''
      'from'
      '  PAR_REL_PRODUCT_PERIODS prpp,'
      '  PRODUCT_PERIODS pp9,'
      '  PRODUCTS p9,'
      '  PROD_PER_SPEC_MODEL_VARIANTS ppsmv9,'
      '  SPEC_MODEL_VARIANT_LINES smvl,'
      '  SPEC_LINES sl,'
      '  SMVS_OPERATIONS smvso'
      ''
      'where'
      '  (prpp.PRODUCT_CODE = p9.PRODUCT_CODE) and'
      ''
      '  (prpp.PRODUCT_CODE = pp9.PRODUCT_CODE) and'
      '  (prpp.BEGIN_DATE between pp9.BEGIN_DATE and pp9.END_DATE) and'
      ''
      '  (pp9.PRODUCT_CODE = ppsmv9.EST_VAR_PRODUCT_CODE) and'
      
        '  (pp9.PRODUCT_PERIOD_CODE = ppsmv9.EST_VAR_PRODUCT_PERIOD_CODE)' +
        ' and'
      ''
      '  (ppsmv9.PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) and'
      
        '  (ppsmv9.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIANT_NO) an' +
        'd'
      ''
      '  (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) and'
      '  (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      '  (smvl.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_CODE) and'
      '  (smvl.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL_VARIANT_NO) and'
      '  (smvl.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) and'
      ''
      '  (smvso.OPERATION_TYPE_CODE = 2) and'
      '  (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '        where'
      '          (tfd.DEPT_CODE = smvso.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS_2 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS_2 tfd'
      '        where'
      '          (tfd.DEPT_CODE = smvso.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS_3 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS_3 tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = sl.DETAIL_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '  %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON' +
        '_LEVEL ~ p9] and'
      ''
      '  (:PARTNER_COMMON_LEVEL * null is null) and'
      
        '  %PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PART' +
        'NER_CODE ~ prpp.BORDER_REL_TYPE_CODE] and'
      ''
      '  (prpp.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '  (prpp.BEGIN_DATE <= :END_DATE) and'
      '  (prpp.END_DATE >= :BEGIN_DATE) and'
      ''
      
        '  ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp], To_Number(:MIN_' +
        'PRP_STATUS_CODE))'
      '    between'
      '      :MIN_PRP_STATUS_CODE'
      '    and'
      '      :MAX_PRP_STATUS_CODE'
      '  ) and'
      ''
      '  ( (:TOOL_DETAIL_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          PRODUCT_RELATIONS pr'
      '        where'
      '          (pr.ANCESTOR_PRODUCT_CODE = :TOOL_DETAIL_CODE) and'
      '          (pr.DESCENDANT_PRODUCT_CODE in'
      '            ( smvso.PROGRAM_TOOL_PRODUCT_CODE,'
      '              smvso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '              smvso.TYPICAL_TOOL_PRODUCT_CODE'
      '            )'
      '          )'
      '      )'
      '    ) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          SPEC_LINES tool_sl'
      '        where'
      '          (tool_sl.SPEC_PRODUCT_CODE in'
      '            ( smvso.PROGRAM_TOOL_PRODUCT_CODE,'
      '              smvso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '              smvso.TYPICAL_TOOL_PRODUCT_CODE'
      '            )'
      '          ) and'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                PRODUCT_RELATIONS pr'
      '              where'
      
        '                (pr.ANCESTOR_PRODUCT_CODE = :TOOL_DETAIL_CODE) a' +
        'nd'
      
        '                (pr.DESCENDANT_PRODUCT_CODE in (tool_sl.DETAIL_C' +
        'ODE, tool_sl.PRODUCT_CODE))'
      '            )'
      '          )'
      '      )'
      '    )'
      '  )'
      ''
      'group by'
      '  smvso.DEPT_CODE,'
      '  sl.DETAIL_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON_LE' +
          'VEL ~ p9]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PARTNER' +
          '_CODE ~ prpp.BORDER_REL_TYPE_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PAR_REL_PRODUCT_STATUS_CODE[prpp]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'FLOW_LEVEL'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'FLOW_TYPE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPT_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DETAIL_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 568
    Top = 152
    object qryEstOpDeptDetailFlowDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEstOpDeptDetailFlowDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryEstOpDeptDetailFlowDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryEstOpDeptDetailFlowDEPT_HAS_DOC: TAbmesFloatField
      FieldName = 'DEPT_HAS_DOC'
    end
    object qryEstOpDeptDetailFlowDEPT_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DEPT_IS_ACTIVE'
    end
    object qryEstOpDeptDetailFlowDETAIL_GROUP_CODE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEstOpDeptDetailFlowDETAIL_GROUP_NO: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_NO'
    end
    object qryEstOpDeptDetailFlowDETAIL_GROUP_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_GROUP_NAME'
      Size = 100
    end
    object qryEstOpDeptDetailFlowDETAIL_GROUP_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_IS_ACTIVE'
    end
    object qryEstOpDeptDetailFlowDETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_GROUP_TECH_MEASURE_ABBR'
      Size = 5
    end
    object qryEstOpDeptDetailFlowDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEstOpDeptDetailFlowDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qryEstOpDeptDetailFlowDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryEstOpDeptDetailFlowDETAIL_HAS_DOC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOC'
    end
    object qryEstOpDeptDetailFlowDETAIL_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_IS_ACTIVE'
    end
    object qryEstOpDeptDetailFlowDETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_TECH_MEASURE_ABBR'
      Size = 5
    end
    object qryEstOpDeptDetailFlowBASE_GROUP_COUNT: TAbmesFloatField
      FieldName = 'BASE_GROUP_COUNT'
    end
    object qryEstOpDeptDetailFlowTECH_QUANTITY: TAbmesFloatField
      FieldName = 'TECH_QUANTITY'
    end
    object qryEstOpDeptDetailFlowCAPACITY_BUSY_HOURS: TAbmesFloatField
      FieldName = 'CAPACITY_BUSY_HOURS'
    end
    object qryEstOpDeptDetailFlowOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object qryEstOpDeptDetailFlowMODEL_COUNT: TAbmesFloatField
      FieldName = 'MODEL_COUNT'
    end
    object qryEstOpDeptDetailFlowSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
  end
  object qrySpecOpDeptDetailFlowToolNeeds: TAbmesSQLQuery
    BeforeOpen = qrySpecOpDeptDetailFlowToolNeedsBeforeOpen
    AfterClose = qrySpecOpDeptDetailFlowToolNeedsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_3'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  -- novo'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC,'
      ''
      '  /* mahame zakomentiranoto tuk tui kato e nenujno'
      ''
      '  smvso.DEPT_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.NAME'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_NAME,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[d]'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_HAS_DOC,'
      ''
      '  ( select'
      '      ( case'
      '          when (ContextDate between d.BEGIN_DATE and d.END_DATE)'
      '          then 1'
      '          else 0'
      '        end'
      '      ) as IS_ACTIVE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_IS_ACTIVE,'
      ''
      '  ( select'
      '      p.PARENT_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_GROUP_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NAME,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_TECH_MEASURE_ABBR,'
      ''
      '  sl.DETAIL_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_NAME,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_HAS_DOC,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE) and'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+))'
      '  ) as DETAIL_TECH_MEASURE_ABBR,'
      ''
      '  ( select'
      '      NullIf(Count(*), 0)'
      '    from'
      '      BASE_GROUPS bg,'
      '      BASE_GROUP_PRODUCTS bgp'
      '    where'
      '      (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '      (bgp.PRODUCT_CODE = sl.DETAIL_CODE) and'
      '      (bg.GROUP_DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as BASE_GROUP_COUNT,'
      ''
      '  To_Number(null) as TECH_QUANTITY,'
      '  */'
      '  -- /novo'
      ''
      '  To_Number(null) as CAPACITY_BUSY_HOURS,'
      ''
      '  Count(*) as OPERATION_COUNT,'
      '  Count(distinct smvso.SPEC_MODEL_VARIANT_NO) as MODEL_COUNT,'
      ''
      '  -- novo'
      '  Count(distinct pd.PRODUCT_CODE) as DETAIL_COUNT'
      '  -- /novo'
      ''
      'from'
      '  SPEC_LINES sl,'
      '  SMVS_OPERATIONS smvso,'
      ''
      '  -- novo'
      '  PRODUCTS pd,'
      '  %SPEC_LINES_TABLE_NAME sl9, -- ne pishi nishto sled macroto '
      '  PRODUCTS p'
      '  -- /novo'
      ''
      'where'
      '  (sl.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_CODE) and'
      '  (sl.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) and'
      ''
      '  -- novo'
      '  (sl.DETAIL_CODE = pd.PRODUCT_CODE) and'
      ''
      
        '  (smvso.%TOOL_PRODUCT_CODE_FIELD_NAME = %SPEC_LINES_KEY_NAME) a' +
        'nd'
      ''
      '  (%STRUCT_PART_FIELD_NAME = p.PRODUCT_CODE) and'
      ''
      
        '  (p.PRODUCT_CODE <> Coalesce(%MATERIAL_CODE_FIELD_NAME_WHEN_BY_' +
        'DETAIL, 0)) and'
      ''
      '  (smvso.DEPT_CODE = :DEPT_CODE) and'
      ''
      '  ( (:DETAIL_CODE is null) or'
      '    (pd.PRODUCT_CODE = :DETAIL_CODE)'
      '  ) and'
      ''
      '  ( (:DETAIL_GROUP_CODE is null) or'
      '    (pd.PARENT_CODE = :DETAIL_GROUP_CODE)'
      '  ) and'
      ''
      '  ( (:TOOL_DETAIL_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          SPEC_LINES sl8'
      '        where'
      '          (sl8.SPEC_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (sl8.DETAIL_CODE = :TOOL_DETAIL_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:TOOL_MATERIAL_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          SPEC_LINES sl8'
      '        where'
      '          (sl8.SPEC_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (sl8.PRODUCT_CODE = :TOOL_MATERIAL_CODE)'
      '      )'
      '    )'
      '  ) and'
      '  -- /novo'
      ''
      '  (sl.PARENT_SPEC_LINE_CODE is null) and'
      '  (smvso.OPERATION_TYPE_CODE = 2) and'
      '  (smvso.SMVS_OPERATION_VARIANT_NO >= 0) and'
      ''
      '  -- novo'
      '  /* mahame zakomentiranoto tuk tui kato e nenujno'
      '  ( (..ALL_FILTERED_DEPTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '        where'
      '          (tfd.DEPT_CODE = smvso.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (..ALL_FILTERED_DEPTS_2 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS_2 tfd'
      '        where'
      '          (tfd.DEPT_CODE = smvso.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      '  */'
      '  -- /novo'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS_3 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS_3 tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = sl.DETAIL_CODE)'
      '      )'
      '    )'
      '  )'
      ''
      'group by'
      '  -- novo'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE'
      '  -- /novo'
      ''
      '-- novo'
      'order by'
      '  PRODUCT_NAME'
      '-- /novo')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'SPEC_LINES_TABLE_NAME'
        ParamType = ptInput
        Value = 'SPEC_LINES'
      end
      item
        DataType = ftWideString
        Name = 'TOOL_PRODUCT_CODE_FIELD_NAME'
        ParamType = ptInput
        Value = 'PROGRAM_TOOL_PRODUCT_CODE'
      end
      item
        DataType = ftWideString
        Name = 'SPEC_LINES_KEY_NAME'
        ParamType = ptInput
        Value = 'sl9.SPEC_PRODUCT_CODE'
      end
      item
        DataType = ftWideString
        Name = 'STRUCT_PART_FIELD_NAME'
        ParamType = ptInput
        Value = 'sl9.DETAIL_CODE'
      end
      item
        DataType = ftWideString
        Name = 'MATERIAL_CODE_FIELD_NAME_WHEN_BY_DETAIL'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'FLOW_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DETAIL_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftFloat
        Name = 'TOOL_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_STRUCT_PART_TYPE'
        ParamType = ptInput
      end>
    Left = 728
    Top = 56
    object qrySpecOpDeptDetailFlowToolNeedsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecOpDeptDetailFlowToolNeedsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qrySpecOpDeptDetailFlowToolNeedsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qrySpecOpDeptDetailFlowToolNeedsPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
    end
    object qrySpecOpDeptDetailFlowToolNeedsCAPACITY_BUSY_HOURS: TAbmesFloatField
      FieldName = 'CAPACITY_BUSY_HOURS'
    end
    object qrySpecOpDeptDetailFlowToolNeedsOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object qrySpecOpDeptDetailFlowToolNeedsMODEL_COUNT: TAbmesFloatField
      FieldName = 'MODEL_COUNT'
    end
    object qrySpecOpDeptDetailFlowToolNeedsDETAIL_COUNT: TAbmesFloatField
      FieldName = 'DETAIL_COUNT'
    end
  end
  object qryModelOpDeptDetailFlowToolNeeds: TAbmesSQLQuery
    BeforeOpen = qryModelOpDeptDetailFlowToolNeedsBeforeOpen
    AfterClose = qryModelOpDeptDetailFlowToolNeedsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_3'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  /*+ USE_NL(mlmso mlms mll ml) */'
      '  '
      '  -- novo'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC,'
      ''
      '  /* mahame zakomentiranoto tuk tui kato e nenujno'
      '  '
      '  mlmso.DEPT_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = mlmso.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.NAME'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = mlmso.DEPT_CODE)'
      '  ) as DEPT_NAME,'
      ''
      '  ( select'
      '      1 -- %HAS_DOC_ITEMS[d]'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = mlmso.DEPT_CODE)'
      '  ) as DEPT_HAS_DOC,'
      ''
      '  ( select'
      '      ( case'
      '          when (ContextDate between d.BEGIN_DATE and d.END_DATE)'
      '          then 1'
      '          else 0'
      '        end'
      '      ) as IS_ACTIVE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = mlmso.DEPT_CODE)'
      '  ) as DEPT_IS_ACTIVE,'
      ''
      '  ( select'
      '      p.PARENT_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_GROUP_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = mll.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = mll.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NAME,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = mll.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = mll.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_TECH_MEASURE_ABBR,'
      ''
      '  mll.DETAIL_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_NAME,'
      ''
      '  ( select'
      '      1 -- %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_HAS_DOC,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE)'
      '  ) as DETAIL_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = mll.DETAIL_CODE) and'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+))'
      '  ) as DETAIL_TECH_MEASURE_ABBR,'
      ''
      '  ( select'
      '      NullIf(Count(*), 0)'
      '    from'
      '      BASE_GROUPS bg,'
      '      BASE_GROUP_PRODUCTS bgp'
      '    where'
      '      (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '      (bgp.PRODUCT_CODE = mll.DETAIL_CODE) and'
      '      (bg.GROUP_DEPT_CODE = mlmso.DEPT_CODE)'
      '  ) as BASE_GROUP_COUNT,'
      ''
      '  Sum(mlmso.VARIANT_DETAIL_TECH_QUANTITY) as TECH_QUANTITY,'
      '  */'
      '  -- /novo'
      '  '
      '  ( Coalesce('
      '      Sum('
      '        ( ( mlmso.VARIANT_DETAIL_TECH_QUANTITY *'
      '            Coalesce('
      
        '              ( DateTimeUtils.CountIntersectWorkdays(mlmso.TREAT' +
        'MENT_BEGIN_DATE, mlmso.TREATMENT_END_DATE, :BEGIN_DATE, :END_DAT' +
        'E) /'
      
        '                NullIf(%COUNT_WORKDAYS[mlmso.TREATMENT_BEGIN_DAT' +
        'E~mlmso.TREATMENT_END_DATE], 0)'
      '              ),'
      
        '              ( DateTimeUtils.DatePeriodIntersectLength(mlmso.TR' +
        'EATMENT_BEGIN_DATE, mlmso.TREATMENT_END_DATE, :BEGIN_DATE, :END_' +
        'DATE) /'
      
        '                (mlmso.TREATMENT_END_DATE - mlmso.TREATMENT_BEGI' +
        'N_DATE + 1)'
      '              )'
      '            )'
      '          ) /'
      '          mlmso.HOUR_TECH_QUANTITY'
      '        ) /'
      '        Coalesce('
      '          ( select'
      '              dp.PARALLEL_PROCESS_COUNT'
      '            from'
      '              DEPT_PERIODS dp'
      '            where'
      '              (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '              (mlmso.TREATMENT_BEGIN_DATE between dp.BEGIN_DATE ' +
        'and dp.END_DATE)'
      '          ),'
      '          1'
      '        )'
      '      ),'
      '      0'
      '    ) +'
      '    Coalesce('
      '      Sum('
      '        ( case'
      '            when (mlmso.SETUP_PROFESSION_CODE is not null) and'
      
        '                 (mlmso.TREATMENT_BEGIN_DATE between :BEGIN_DATE' +
        ' and :END_DATE)'
      '            then'
      '              mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY'
      '          end'
      '        ) /'
      '        Coalesce('
      '          ( select'
      '              dp.PARALLEL_PROCESS_COUNT'
      '            from'
      '              DEPT_PERIODS dp'
      '            where'
      '              (dp.DEPT_CODE = mlmso.DEPT_CODE) and'
      
        '              (mlmso.TREATMENT_BEGIN_DATE between dp.BEGIN_DATE ' +
        'and dp.END_DATE)'
      '          ),'
      '          1'
      '        )'
      '      ),'
      '      0'
      '    )'
      '  ) as CAPACITY_BUSY_HOURS,'
      ''
      '  Count(*) as OPERATION_COUNT,'
      
        '  Count(distinct ((mll.ML_OBJECT_BRANCH_CODE * %MAX_NUMBER) + ml' +
        'l.ML_OBJECT_CODE)) as MODEL_COUNT,'
      ''
      '  -- novo'
      '  Count(distinct pd.PRODUCT_CODE) as DETAIL_COUNT'
      '  -- /novo'
      ''
      'from'
      '  MLMS_OPERATIONS mlmso,'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll,'
      '  MATERIAL_LISTS ml,'
      ''
      '  -- novo'
      '  PRODUCTS pd,'
      '  %SPEC_LINES_TABLE_NAME sl9, -- ne pishi nishto sled macroto '
      '  PRODUCTS p'
      '  -- /novo'
      ''
      'where'
      '  (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      ''
      
        '  (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and'
      ''
      '  -- novo'
      '  (mll.DETAIL_CODE = pd.PRODUCT_CODE) and'
      ''
      
        '  (mlmso.%TOOL_PRODUCT_CODE_FIELD_NAME = %SPEC_LINES_KEY_NAME) a' +
        'nd'
      ''
      '  (%STRUCT_PART_FIELD_NAME = p.PRODUCT_CODE) and'
      ''
      
        '  (p.PRODUCT_CODE <> Coalesce(%MATERIAL_CODE_FIELD_NAME_WHEN_BY_' +
        'DETAIL, 0)) and'
      ''
      '  (mlmso.DEPT_CODE = :DEPT_CODE) and'
      ''
      '  ( (:DETAIL_CODE is null) or'
      '    (pd.PRODUCT_CODE = :DETAIL_CODE)'
      '  ) and'
      ''
      '  ( (:DETAIL_GROUP_CODE is null) or'
      '    (pd.PARENT_CODE = :DETAIL_GROUP_CODE)'
      '  ) and'
      ''
      '  ( (:TOOL_DETAIL_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          SPEC_LINES sl8'
      '        where'
      '          (sl8.SPEC_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (sl8.DETAIL_CODE = :TOOL_DETAIL_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:TOOL_MATERIAL_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          SPEC_LINES sl8'
      '        where'
      '          (sl8.SPEC_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (sl8.PRODUCT_CODE = :TOOL_MATERIAL_CODE)'
      '      )'
      '    )'
      '  ) and'
      '  -- /novo'
      ''
      '  (mll.ANNUL_EMPLOYEE_CODE is null) and'
      '  (mll.IS_WASTE_FORK = 0) and'
      ''
      '  (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and'
      '  (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      '  (ml.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '  (mlmso.OPERATION_TYPE_CODE = 2) and'
      '  (mlmso.MLMS_OPERATION_VARIANT_NO >= 0) and'
      '  (mlmso.IS_ACTIVE = 1) and'
      ''
      '  -- novo'
      '  /* mahame zakomentiranoto tuk tui kato e nenujno'
      '  ( (..ALL_FILTERED_DEPTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '        where'
      '          (tfd.DEPT_CODE = mlmso.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (..ALL_FILTERED_DEPTS_2 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS_2 tfd'
      '        where'
      '          (tfd.DEPT_CODE = mlmso.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      '  */'
      '  -- /novo'
      '  '
      '  ( (:ALL_FILTERED_PRODUCTS_3 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS_3 tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = mll.DETAIL_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (mlmso.TREATMENT_END_DATE >= :BEGIN_DATE) and'
      '  (mlmso.TREATMENT_BEGIN_DATE <= :END_DATE)'
      ''
      'group by'
      '  -- novo'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE'
      '  -- /novo'
      ''
      '-- novo'
      'order by'
      '  PRODUCT_NAME'
      '-- /novo')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS[mlmso.TREATMENT_BEGIN_DATE~mlmso.TREATMENT_END_DA' +
          'TE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'MAX_NUMBER'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'SPEC_LINES_TABLE_NAME'
        ParamType = ptInput
        Value = 'SPEC_LINES'
      end
      item
        DataType = ftWideString
        Name = 'TOOL_PRODUCT_CODE_FIELD_NAME'
        ParamType = ptInput
        Value = 'PROGRAM_TOOL_PRODUCT_CODE'
      end
      item
        DataType = ftWideString
        Name = 'SPEC_LINES_KEY_NAME'
        ParamType = ptInput
        Value = 'sl9.SPEC_PRODUCT_CODE'
      end
      item
        DataType = ftWideString
        Name = 'STRUCT_PART_FIELD_NAME'
        ParamType = ptInput
        Value = 'sl9.DETAIL_CODE'
      end
      item
        DataType = ftWideString
        Name = 'MATERIAL_CODE_FIELD_NAME_WHEN_BY_DETAIL'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'FLOW_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DETAIL_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftFloat
        Name = 'TOOL_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_STRUCT_PART_TYPE'
        ParamType = ptInput
      end>
    Left = 728
    Top = 104
    object qryModelOpDeptDetailFlowToolNeedsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryModelOpDeptDetailFlowToolNeedsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryModelOpDeptDetailFlowToolNeedsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryModelOpDeptDetailFlowToolNeedsPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
    end
    object qryModelOpDeptDetailFlowToolNeedsCAPACITY_BUSY_HOURS: TAbmesFloatField
      FieldName = 'CAPACITY_BUSY_HOURS'
    end
    object qryModelOpDeptDetailFlowToolNeedsOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object qryModelOpDeptDetailFlowToolNeedsMODEL_COUNT: TAbmesFloatField
      FieldName = 'MODEL_COUNT'
    end
    object qryModelOpDeptDetailFlowToolNeedsDETAIL_COUNT: TAbmesFloatField
      FieldName = 'DETAIL_COUNT'
    end
  end
  object qryEstOpDeptDetailFlowToolNeeds: TAbmesSQLQuery
    BeforeOpen = qryEstOpDeptDetailFlowToolNeedsBeforeOpen
    AfterClose = qryEstOpDeptDetailFlowToolNeedsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  -- novo'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC,'
      ''
      '  /* mahame zakomentiranoto tuk tui kato e nenujno'
      ''
      '  smvso.DEPT_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      d.NAME'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_NAME,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[d]'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_HAS_DOC,'
      ''
      '  ( select'
      '      ( case'
      '          when (ContextDate between d.BEGIN_DATE and d.END_DATE)'
      '          then 1'
      '          else 0'
      '        end'
      '      ) as IS_ACTIVE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as DEPT_IS_ACTIVE,'
      ''
      '  ( select'
      '      p.PARENT_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_GROUP_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_NAME,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '      ( p.PRODUCT_CODE ='
      '        ( select'
      '            p2.PARENT_CODE'
      '          from'
      '            PRODUCTS p2'
      '          where'
      '            (p2.PRODUCT_CODE = sl.DETAIL_CODE)'
      '        )'
      '      )'
      '  ) as DETAIL_GROUP_TECH_MEASURE_ABBR,'
      ''
      '  sl.DETAIL_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_NAME,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_HAS_DOC,'
      ''
      '  ( select'
      '      1 - p.IS_INACTIVE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE)'
      '  ) as DETAIL_IS_ACTIVE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = sl.DETAIL_CODE) and'
      '      (p.TECH_MEASURE_CODE = m.MEASURE_CODE(+))'
      '  ) as DETAIL_TECH_MEASURE_ABBR,'
      ''
      '  ( select'
      '      NullIf(Count(*), 0)'
      '    from'
      '      BASE_GROUPS bg,'
      '      BASE_GROUP_PRODUCTS bgp'
      '    where'
      '      (bg.BASE_GROUP_CODE = bgp.BASE_GROUP_CODE) and'
      '      (bgp.PRODUCT_CODE = sl.DETAIL_CODE) and'
      '      (bg.GROUP_DEPT_CODE = smvso.DEPT_CODE)'
      '  ) as BASE_GROUP_COUNT,'
      ''
      '  Sum('
      '    sl.TOTAL_DETAIL_TECH_QUANTITY *'
      '    prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '    p9.TECH_MEASURE_COEF *'
      '    Coalesce('
      
        '      ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, pr' +
        'pp.END_DATE, ..BEGIN_DATE, ..END_DATE) /'
      
        '        NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE], 0' +
        ')'
      '      ),'
      
        '      ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DATE,' +
        ' prpp.END_DATE, ..BEGIN_DATE, ..END_DATE) /'
      '        (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '      )'
      '    )'
      '  ) as TECH_QUANTITY,'
      '  */'
      '  -- /novo'
      ''
      '  ( Coalesce('
      '      Sum('
      '        ( ( ( prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '              p9.TECH_MEASURE_COEF *'
      '              Coalesce('
      
        '                ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGI' +
        'N_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                  NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.EN' +
        'D_DATE], 0)'
      '                ),'
      
        '                ( DateTimeUtils.DatePeriodIntersectLength(prpp.B' +
        'EGIN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                  (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '                )'
      '              )'
      '            ) *'
      '            sl.TOTAL_DETAIL_TECH_QUANTITY'
      '          ) /'
      '          smvso.HOUR_TECH_QUANTITY'
      '        ) /'
      '        Coalesce('
      '          ( select'
      '              dp.PARALLEL_PROCESS_COUNT'
      '            from'
      '              DEPT_PERIODS dp'
      '            where'
      '              (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      
        '              (prpp.BEGIN_DATE between dp.BEGIN_DATE and dp.END_' +
        'DATE)'
      '          ),'
      '          1'
      '        )'
      '      ),'
      '      0'
      '    ) +'
      '    Coalesce('
      '      Sum('
      '        Nvl2('
      '          smvso.SETUP_PROFESSION_CODE,'
      '          ( ( ( select'
      '                  Ceil('
      '                    ( prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '                      Coalesce('
      
        '                        ( DateTimeUtils.CountIntersectWorkdays(p' +
        'rpp.BEGIN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                          NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE' +
        '~prpp.END_DATE], 0)'
      '                        ),'
      
        '                        ( DateTimeUtils.DatePeriodIntersectLengt' +
        'h(prpp.BEGIN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                          (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '                        )'
      '                      )'
      '                    ) /'
      '                    pp.BALANCE_QUANTITY'
      '                  )'
      '                from'
      '                  PRODUCT_PERIODS pp'
      '                where'
      '                  (pp.PRODUCT_CODE = prpp.PRODUCT_CODE) and'
      
        '                  (prpp.BEGIN_DATE between pp.BEGIN_DATE and pp.' +
        'END_DATE)'
      '              ) *'
      '              smvso.SETUP_COUNT /'
      '              smvso.SETUP_HOUR_TECH_QUANTITY'
      '            ) /'
      '            Coalesce('
      '              ( select'
      '                  dp.PARALLEL_PROCESS_COUNT'
      '                from'
      '                  DEPT_PERIODS dp'
      '                where'
      '                  (dp.DEPT_CODE = smvso.DEPT_CODE) and'
      
        '                  (prpp.BEGIN_DATE between dp.BEGIN_DATE and dp.' +
        'END_DATE)'
      '              ),'
      '              1'
      '            )'
      '          ),'
      '          null'
      '        )'
      '      ),'
      '      0'
      '    )'
      '  ) as CAPACITY_BUSY_HOURS,'
      ''
      '  Sum('
      '    ( select'
      '        Ceil('
      '          ( prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '            Coalesce('
      
        '              ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_' +
        'DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '                NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_' +
        'DATE], 0)'
      '              ),'
      
        '              ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEG' +
        'IN_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '                (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '              )'
      '            )'
      '          ) /'
      '          pp.BALANCE_QUANTITY'
      '        )'
      '      from'
      '        PRODUCT_PERIODS pp'
      '      where'
      '        (pp.PRODUCT_CODE = prpp.PRODUCT_CODE) and'
      '        (prpp.BEGIN_DATE between pp.BEGIN_DATE and pp.END_DATE)'
      '    )'
      '  ) as OPERATION_COUNT,'
      ''
      
        '  Count(distinct (prpp.PRODUCT_CODE * 10000000000) + prpp.PARTNE' +
        'R_CODE) as MODEL_COUNT,'
      ''
      '  -- novo'
      '  Count(distinct pd.PRODUCT_CODE) as DETAIL_COUNT'
      '  -- /novo'
      ''
      'from'
      '  PAR_REL_PRODUCT_PERIODS prpp,'
      '  PRODUCT_PERIODS pp9,'
      '  PRODUCTS p9,'
      '  PROD_PER_SPEC_MODEL_VARIANTS ppsmv9,'
      '  SPEC_MODEL_VARIANT_LINES smvl,'
      '  SPEC_LINES sl,'
      '  SMVS_OPERATIONS smvso,'
      ''
      '  -- novo'
      '  PRODUCTS pd,'
      '  %SPEC_LINES_TABLE_NAME sl9, -- ne pishi nishto sled macroto '
      '  PRODUCTS p'
      '  -- /novo'
      ''
      'where'
      '  (prpp.PRODUCT_CODE = p9.PRODUCT_CODE) and'
      ''
      '  (prpp.PRODUCT_CODE = pp9.PRODUCT_CODE) and'
      '  (prpp.BEGIN_DATE between pp9.BEGIN_DATE and pp9.END_DATE) and'
      ''
      '  (pp9.PRODUCT_CODE = ppsmv9.EST_VAR_PRODUCT_CODE) and'
      
        '  (pp9.PRODUCT_PERIOD_CODE = ppsmv9.EST_VAR_PRODUCT_PERIOD_CODE)' +
        ' and'
      ''
      '  (ppsmv9.PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) and'
      
        '  (ppsmv9.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIANT_NO) an' +
        'd'
      ''
      '  (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) and'
      '  (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      '  (smvl.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_CODE) and'
      '  (smvl.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL_VARIANT_NO) and'
      '  (smvl.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) and'
      ''
      '  -- novo'
      '  (sl.DETAIL_CODE = pd.PRODUCT_CODE) and'
      ''
      
        '  (smvso.%TOOL_PRODUCT_CODE_FIELD_NAME = %SPEC_LINES_KEY_NAME) a' +
        'nd'
      ''
      '  (%STRUCT_PART_FIELD_NAME = p.PRODUCT_CODE) and'
      ''
      
        '  (p.PRODUCT_CODE <> Coalesce(%MATERIAL_CODE_FIELD_NAME_WHEN_BY_' +
        'DETAIL, 0)) and'
      ''
      '  (smvso.DEPT_CODE = :DEPT_CODE) and'
      ''
      '  ( (:DETAIL_CODE is null) or'
      '    (pd.PRODUCT_CODE = :DETAIL_CODE)'
      '  ) and'
      ''
      '  ( (:DETAIL_GROUP_CODE is null) or'
      '    (pd.PARENT_CODE = :DETAIL_GROUP_CODE)'
      '  ) and'
      ''
      '  ( (:TOOL_DETAIL_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          SPEC_LINES sl8'
      '        where'
      '          (sl8.SPEC_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (sl8.DETAIL_CODE = :TOOL_DETAIL_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:TOOL_MATERIAL_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          SPEC_LINES sl8'
      '        where'
      '          (sl8.SPEC_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (sl8.PRODUCT_CODE = :TOOL_MATERIAL_CODE)'
      '      )'
      '    )'
      '  ) and'
      '  -- /novo'
      ''
      '  (smvso.OPERATION_TYPE_CODE = 2) and'
      '  (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '  -- novo'
      '  /* mahame zakomentiranoto tuk tui kato e nenujno'
      '  ( (..ALL_FILTERED_DEPTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '        where'
      '          (tfd.DEPT_CODE = smvso.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (..ALL_FILTERED_DEPTS_2 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_DEPTS_2 tfd'
      '        where'
      '          (tfd.DEPT_CODE = smvso.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      '  */'
      '  -- /novo'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS_3 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS_3 tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = sl.DETAIL_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '  %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON' +
        '_LEVEL ~ p9] and'
      ''
      '  (:PARTNER_COMMON_LEVEL * null is null) and'
      
        '  %PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PART' +
        'NER_CODE ~ prpp.BORDER_REL_TYPE_CODE] and'
      ''
      '  (prpp.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      '  (prpp.BEGIN_DATE <= :END_DATE) and'
      '  (prpp.END_DATE >= :BEGIN_DATE) and'
      ''
      
        '  ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp], To_Number(:MIN_' +
        'PRP_STATUS_CODE))'
      '    between'
      '      :MIN_PRP_STATUS_CODE'
      '    and'
      '      :MAX_PRP_STATUS_CODE'
      '  )'
      ''
      'group by'
      '  -- novo'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE'
      '  -- /novo'
      ''
      '-- novo'
      'order by'
      '  PRODUCT_NAME'
      '-- /novo')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[d]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'SPEC_LINES_TABLE_NAME'
        ParamType = ptInput
        Value = 'SPEC_LINES'
      end
      item
        DataType = ftWideString
        Name = 'TOOL_PRODUCT_CODE_FIELD_NAME'
        ParamType = ptInput
        Value = 'PROGRAM_TOOL_PRODUCT_CODE'
      end
      item
        DataType = ftWideString
        Name = 'SPEC_LINES_KEY_NAME'
        ParamType = ptInput
        Value = 'sl9.SPEC_PRODUCT_CODE'
      end
      item
        DataType = ftWideString
        Name = 'STRUCT_PART_FIELD_NAME'
        ParamType = ptInput
        Value = 'sl9.DETAIL_CODE'
      end
      item
        DataType = ftWideString
        Name = 'MATERIAL_CODE_FIELD_NAME_WHEN_BY_DETAIL'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_COMMON_LE' +
          'VEL ~ p9]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.PARTNER' +
          '_CODE ~ prpp.BORDER_REL_TYPE_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PAR_REL_PRODUCT_STATUS_CODE[prpp]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'FLOW_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DETAIL_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftFloat
        Name = 'TOOL_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_STRUCT_PART_TYPE'
        ParamType = ptInput
      end>
    Left = 728
    Top = 152
    object qryEstOpDeptDetailFlowToolNeedsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEstOpDeptDetailFlowToolNeedsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryEstOpDeptDetailFlowToolNeedsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryEstOpDeptDetailFlowToolNeedsPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
    end
    object qryEstOpDeptDetailFlowToolNeedsCAPACITY_BUSY_HOURS: TAbmesFloatField
      FieldName = 'CAPACITY_BUSY_HOURS'
    end
    object qryEstOpDeptDetailFlowToolNeedsOPERATION_COUNT: TAbmesFloatField
      FieldName = 'OPERATION_COUNT'
    end
    object qryEstOpDeptDetailFlowToolNeedsMODEL_COUNT: TAbmesFloatField
      FieldName = 'MODEL_COUNT'
    end
    object qryEstOpDeptDetailFlowToolNeedsDETAIL_COUNT: TAbmesFloatField
      FieldName = 'DETAIL_COUNT'
    end
  end
  object prvDeptDetailFlowToolNeeds: TDataSetProvider
    DataSet = qryEstOpDeptDetailFlowToolNeeds
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = prvDeptDetailFlowToolNeedsBeforeGetRecords
    Left = 728
    Top = 8
  end
end
