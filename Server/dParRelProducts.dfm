inherited dmParRelProducts: TdmParRelProducts
  Height = 689
  Width = 828
  object prvSaleQuantities: TDataSetProvider
    DataSet = qrySaleQuantitiesProductGroups
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = prvSaleQuantitiesBeforeGetRecords
    Left = 80
    Top = 16
  end
  object qrySaleQuantitiesProductGroups: TAbmesSQLQuery
    BeforeOpen = qrySaleQuantitiesProductGroupsBeforeOpen
    AfterClose = qrySaleQuantitiesProductGroupsAfterClose
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
        Name = 'SALES_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALES_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALES_LEVEL'
        ParamType = ptInput
      end
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
      end>
    SQL.Strings = (
      'select'
      '  %CLIENT_COMPANY_CODE_IN_SELECT'
      '  %CLIENT_COMPANY_NAME_IN_SELECT'
      '  p.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.MEASURE_CODE,'
      '  m.MEASURE_ABBREV,'
      ''
      '  Sum('
      '    case'
      '      when'
      '        (si.WANTED_QUANTITY is not null) and'
      '        (si.WANTED_SINGLE_PRICE is not null) and'
      '        (si.WANTED_DATE is not null) and'
      '        (si.WANTED_CURRENCY_CODE is not null) and'
      '        (si.WANTED_DATE between :BEGIN_DATE and :END_DATE)'
      '      then'
      '        si.WANTED_QUANTITY'
      '    else'
      '      null'
      '    end'
      '  ) as TOTAL_WANTED_QUANTITY,'
      ''
      '  Sum('
      '    case'
      '      when'
      '        (si.WANTED_QUANTITY is not null) and'
      '        (si.WANTED_SINGLE_PRICE is not null) and'
      '        (si.WANTED_DATE is not null) and'
      '        (si.WANTED_CURRENCY_CODE is not null) and'
      '        (si.WANTED_DATE between :BEGIN_DATE and :END_DATE)'
      '      then'
      '        (si.WANTED_QUANTITY * si.WANTED_SINGLE_PRICE *'
      
        '         Decode(Least(si.WANTED_DATE, ContextDate), si.WANTED_DATE' +
        ', si.WANTED_CURR_SEC_RATE, si.WANTED_CURR_TODAY_SEC_RATE))'
      '    else'
      '      null'
      '    end'
      '  ) as TOTAL_WANTED_SECONDARY_PRICE,'
      ''
      '  Min('
      '    Cast('
      '      case'
      '        when'
      '          (si.WANTED_QUANTITY is not null) and'
      '          (si.WANTED_SINGLE_PRICE is not null) and'
      '          (si.WANTED_DATE is not null) and'
      '          (si.WANTED_CURRENCY_CODE is not null) and'
      '          (si.WANTED_DATE between :BEGIN_DATE and :END_DATE)'
      '        then'
      
        '          Decode(Least(si.WANTED_DATE, ContextDate), si.WANTED_DAT' +
        'E,'
      
        '                 Nvl2(si.WANTED_CURR_SEC_RATE, null, si.WANTED_D' +
        'ATE),'
      
        '                 Nvl2(si.WANTED_CURR_TODAY_SEC_RATE, null, Context' +
        'Date))'
      '      else'
      '        null'
      '      end'
      '    as Date)'
      '  ) as MIN_WANTED_NO_RATE_DATE,'
      ''
      ''
      '  Sum('
      '    case'
      '      when'
      '        (si.CONTRACTED_QUANTITY is not null) and'
      '        (si.CONTRACTED_SINGLE_PRICE is not null) and'
      '        (si.CONTRACTED_DATE is not null) and'
      '        (si.CONTRACTED_CURRENCY_CODE is not null) and'
      '        (si.CONTRACTED_DATE between :BEGIN_DATE and :END_DATE)'
      '      then'
      '        si.CONTRACTED_QUANTITY'
      '    else'
      '      null'
      '    end'
      '  ) as TOTAL_CONTRACTED_QUANTITY,'
      ''
      '  Sum('
      '    case'
      '      when'
      '        (si.CONTRACTED_QUANTITY is not null) and'
      '        (si.CONTRACTED_SINGLE_PRICE is not null) and'
      '        (si.CONTRACTED_DATE is not null) and'
      '        (si.CONTRACTED_CURRENCY_CODE is not null) and'
      '        (si.CONTRACTED_DATE between :BEGIN_DATE and :END_DATE)'
      '      then'
      '        (si.CONTRACTED_QUANTITY * si.CONTRACTED_SINGLE_PRICE *'
      
        '         Decode(Least(si.CONTRACTED_DATE, ContextDate), si.CONTRAC' +
        'TED_DATE, si.CONTRACTED_CURR_SEC_RATE, si.CONTRACTED_CURR_TODAY_' +
        'SEC_RATE))'
      '    else'
      '      null'
      '    end'
      '  ) as TOTAL_CONTRACTED_SEC_PRICE,'
      ''
      '  Min('
      '    Cast('
      '      case'
      '        when'
      '          (si.CONTRACTED_QUANTITY is not null) and'
      '          (si.CONTRACTED_SINGLE_PRICE is not null) and'
      '          (si.CONTRACTED_DATE is not null) and'
      '          (si.CONTRACTED_CURRENCY_CODE is not null) and'
      '          (si.CONTRACTED_DATE between :BEGIN_DATE and :END_DATE)'
      '        then'
      
        '          Decode(Least(si.CONTRACTED_DATE, ContextDate), si.CONTRA' +
        'CTED_DATE,'
      
        '                 Nvl2(si.CONTRACTED_CURR_SEC_RATE, null, si.CONT' +
        'RACTED_DATE),'
      
        '                 Nvl2(si.CONTRACTED_CURR_TODAY_SEC_RATE, null, C' +
        'ontextDate))'
      '      else'
      '        null'
      '      end'
      '    as Date)'
      '  ) as MIN_CONTRACTED_NO_RATE_DATE,'
      ''
      ''
      '  Sum(si.TOTAL_SHIPPED_QUANTITY) as TOTAL_SHIPPED_QUANTITY,'
      
        '  Sum(si.TOTAL_SHIPPED_SECONDARY_PRICE) as TOTAL_SHIPPED_SECONDA' +
        'RY_PRICE,'
      
        '  Min(Cast(si.MIN_NO_RATE_SHIPMENT_DATE as Date)) as MIN_SHIPMEN' +
        'T_NO_RATE_DATE,'
      ''
      '  Sum(si.TOTAL_INVOICE_QUANTITY) as TOTAL_INVOICE_QUANTITY,'
      
        '  Sum(si.TOTAL_INVOICE_SECONDARY_PRICE) as TOTAL_INVOICE_SECONDA' +
        'RY_PRICE,'
      
        '  Min(Cast(si.MIN_NO_RATE_INVOICE_DATE as Date)) as MIN_INVOICE_' +
        'NO_RATE_DATE'
      ''
      'from'
      '  ('
      '    select'
      '      s.CLIENT_COMPANY_CODE,'
      '      s.PRODUCT_CODE,'
      ''
      '      s.SALE_OBJECT_BRANCH_CODE,'
      '      s.SALE_OBJECT_CODE,'
      ''
      
        '      Coalesce(s.CL_OFFER_QUANTITY, s.QUANTITY) as WANTED_QUANTI' +
        'TY,'
      ''
      '      Coalesce(s.CL_OFFER_SINGLE_PRICE,'
      '          Coalesce(s.SINGLE_PRICE, s.OUR_OFFER_SINGLE_PRICE))'
      '      as WANTED_SINGLE_PRICE,'
      ''
      '      Coalesce(s.CL_OFFER_RECEIVE_DATE,'
      '          Coalesce(s.RECEIVE_DATE,'
      '              Coalesce(s.DECISION_DATE, ContextDate)))'
      '      as WANTED_DATE,'
      ''
      '      s.CURRENCY_CODE as WANTED_CURRENCY_CODE,'
      '      wscr1.FIXING as WANTED_CURR_SEC_RATE,'
      '      tscr2.FIXING as WANTED_CURR_TODAY_SEC_RATE,'
      ''
      '      s.QUANTITY as CONTRACTED_QUANTITY,'
      '      s.SINGLE_PRICE as CONTRACTED_SINGLE_PRICE,'
      '      s.RECEIVE_DATE as CONTRACTED_DATE,'
      '      s.CURRENCY_CODE as CONTRACTED_CURRENCY_CODE,'
      '      scr2.FIXING as CONTRACTED_CURR_SEC_RATE,'
      '      tscr2.FIXING as CONTRACTED_CURR_TODAY_SEC_RATE,'
      ''
      ''
      '      Sum('
      '        case'
      '          when'
      '            ('
      '              (ss.QUANTITY is not null) and'
      '              (ss.INVOICE_SINGLE_PRICE is not null) and'
      '              (ss.INVOICE_DATE is not null) and'
      '              (ss.INVOICE_CURRENCY_CODE is not null) and'
      
        '              (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE' +
        ')'
      '            ) or'
      '            ('
      '              (ss.QUANTITY is not null) and'
      '              (s.SINGLE_PRICE is not null) and'
      '              (s.RECEIVE_DATE is not null) and'
      '              (s.CURRENCY_CODE is not null) and'
      '              (s.RECEIVE_DATE between :BEGIN_DATE and :END_DATE)'
      '            )'
      '          then'
      '            ss.QUANTITY'
      '        else'
      '          null'
      '        end'
      '      ) as TOTAL_SHIPPED_QUANTITY,'
      ''
      '      Sum('
      '        case'
      '          when'
      '            (ss.QUANTITY is not null) and'
      '            (ss.INVOICE_SINGLE_PRICE is not null) and'
      '            (ss.INVOICE_DATE is not null) and'
      '            (ss.INVOICE_CURRENCY_CODE is not null) and'
      '            (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE)'
      '          then'
      '            (ss.QUANTITY * ss.INVOICE_SINGLE_PRICE *'
      
        '             Decode(Least(ss.INVOICE_DATE, ContextDate), ss.INVOIC' +
        'E_DATE, scr1.FIXING, tscr1.FIXING))'
      ''
      '          when'
      '            (ss.QUANTITY is not null) and'
      '            (s.SINGLE_PRICE is not null) and'
      '            (s.RECEIVE_DATE is not null) and'
      '            (s.CURRENCY_CODE is not null) and'
      '            (s.RECEIVE_DATE between :BEGIN_DATE and :END_DATE)'
      '          then'
      '            (ss.QUANTITY * s.SINGLE_PRICE *'
      
        '             Decode(Least(s.RECEIVE_DATE, ContextDate), s.RECEIVE_' +
        'DATE, scr2.FIXING, tscr2.FIXING))'
      ''
      '        else'
      '          null'
      '        end'
      '      ) as TOTAL_SHIPPED_SECONDARY_PRICE,'
      ''
      '      Min('
      '        case'
      '          when'
      '            (ss.QUANTITY is not null) and'
      '            (ss.INVOICE_SINGLE_PRICE is not null) and'
      '            (ss.INVOICE_DATE is not null) and'
      '            (ss.INVOICE_CURRENCY_CODE is not null) and'
      '            (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE)'
      '          then'
      
        '            Decode(Least(ss.INVOICE_DATE, ContextDate), ss.INVOICE' +
        '_DATE,'
      '                   Nvl2(scr1.FIXING, null, ss.INVOICE_DATE),'
      '                   Nvl2(tscr1.FIXING, null, ContextDate))'
      ''
      '          when'
      '            (ss.QUANTITY is not null) and'
      '            (s.SINGLE_PRICE is not null) and'
      '            (s.RECEIVE_DATE is not null) and'
      '            (s.CURRENCY_CODE is not null) and'
      '            (s.RECEIVE_DATE between :BEGIN_DATE and :END_DATE)'
      '          then'
      
        '            Decode(Least(s.RECEIVE_DATE, ContextDate), s.RECEIVE_D' +
        'ATE,'
      '                   Nvl2(scr2.FIXING, null, s.RECEIVE_DATE),'
      '                   Nvl2(tscr2.FIXING, null, ContextDate))'
      ''
      '        else'
      '          null'
      '        end'
      '      ) as MIN_NO_RATE_SHIPMENT_DATE,'
      ''
      ''
      '      Sum('
      '        case'
      '          when'
      '            (ss.QUANTITY is not null) and'
      '            (ss.INVOICE_SINGLE_PRICE is not null) and'
      '            (ss.INVOICE_DATE is not null) and'
      '            (ss.INVOICE_CURRENCY_CODE is not null) and'
      '            (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE)'
      '          then'
      '            ss.QUANTITY'
      ''
      '        else'
      '          null'
      '        end'
      '      ) as TOTAL_INVOICE_QUANTITY,'
      ''
      '      Sum('
      '        case'
      '          when'
      '            (ss.QUANTITY is not null) and'
      '            (ss.INVOICE_SINGLE_PRICE is not null) and'
      '            (ss.INVOICE_DATE is not null) and'
      '            (ss.INVOICE_CURRENCY_CODE is not null) and'
      '            (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE)'
      '          then'
      '            (ss.QUANTITY * ss.INVOICE_SINGLE_PRICE *'
      
        '             Decode(Least(ss.INVOICE_DATE, ContextDate), ss.INVOIC' +
        'E_DATE, scr1.FIXING, tscr1.FIXING))'
      ''
      '        else'
      '          null'
      '        end'
      '      ) as TOTAL_INVOICE_SECONDARY_PRICE,'
      ''
      '      Min('
      '        case'
      '          when'
      '            (ss.QUANTITY is not null) and'
      '            (ss.INVOICE_SINGLE_PRICE is not null) and'
      '            (ss.INVOICE_DATE is not null) and'
      '            (ss.INVOICE_CURRENCY_CODE is not null) and'
      '            (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE)'
      '          then'
      
        '            Decode(Least(ss.INVOICE_DATE, ContextDate), ss.INVOICE' +
        '_DATE,'
      '                   Nvl2(scr1.FIXING, null, ss.INVOICE_DATE),'
      '                   Nvl2(tscr1.FIXING, null, ContextDate))'
      ''
      '        else'
      '          null'
      '        end'
      '      ) as MIN_NO_RATE_INVOICE_DATE,'
      ''
      ''
      '      Min('
      '        case'
      '          when'
      '            ('
      '              (ss.QUANTITY is not null) and'
      '              (ss.INVOICE_SINGLE_PRICE is not null) and'
      '              (ss.INVOICE_DATE is not null) and'
      '              (ss.INVOICE_CURRENCY_CODE is not null) and'
      
        '              (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE' +
        ')'
      '            ) or'
      '            ('
      '              (ss.QUANTITY is not null) and'
      '              (s.SINGLE_PRICE is not null) and'
      '              (s.RECEIVE_DATE is not null) and'
      '              (s.CURRENCY_CODE is not null) and'
      '              (s.RECEIVE_DATE between :BEGIN_DATE and :END_DATE)'
      '            )'
      '          then'
      '            ss.SHIPMENT_DATE'
      '        else'
      '          null'
      '        end'
      '      ) as MIN_SHIPMENT_DATE,'
      ''
      '      Max('
      '        case'
      '          when'
      '            ('
      '              (ss.QUANTITY is not null) and'
      '              (ss.INVOICE_SINGLE_PRICE is not null) and'
      '              (ss.INVOICE_DATE is not null) and'
      '              (ss.INVOICE_CURRENCY_CODE is not null) and'
      
        '              (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE' +
        ')'
      '            ) or'
      '            ('
      '              (ss.QUANTITY is not null) and'
      '              (s.SINGLE_PRICE is not null) and'
      '              (s.RECEIVE_DATE is not null) and'
      '              (s.CURRENCY_CODE is not null) and'
      '              (s.RECEIVE_DATE between :BEGIN_DATE and :END_DATE)'
      '            )'
      '          then'
      '            ss.SHIPMENT_DATE'
      '        else'
      '          null'
      '        end'
      '      ) as MAX_SHIPMENT_DATE'
      ''
      '    from'
      '      SALES s,'
      '      SALE_SHIPMENTS ss,'
      '      SECONDARY_CURRENCY_RATES scr1,'
      '      TODAY_SECONDARY_CURRENCY_RATES tscr1,'
      '      SECONDARY_CURRENCY_RATES scr2,'
      '      TODAY_SECONDARY_CURRENCY_RATES tscr2,'
      '      SECONDARY_CURRENCY_RATES wscr1'
      ''
      '    where'
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
      '      ) and'
      ''
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_CODE(+)' +
        ') and'
      '      (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE(+)) and'
      ''
      '      (ss.INVOICE_CURRENCY_CODE = scr1.CURRENCY_CODE(+)) and'
      '      (ss.INVOICE_DATE = scr1.RATE_DATE(+)) and'
      ''
      '      (ss.INVOICE_CURRENCY_CODE = tscr1.CURRENCY_CODE(+)) and'
      ''
      '      (s.CURRENCY_CODE = scr2.CURRENCY_CODE(+)) and'
      '      (s.RECEIVE_DATE = scr2.RATE_DATE(+)) and'
      ''
      '      (s.CURRENCY_CODE = tscr2.CURRENCY_CODE(+)) and'
      ''
      '      (s.CURRENCY_CODE = wscr1.CURRENCY_CODE(+)) and'
      '      ( Coalesce(s.CL_OFFER_RECEIVE_DATE,'
      '          Coalesce(s.RECEIVE_DATE,'
      
        '              Coalesce(s.DECISION_DATE, ContextDate))) = wscr1.RAT' +
        'E_DATE(+)) and'
      ''
      '      (s.ANNUL_EMPLOYEE_CODE is null) and'
      '      (s.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      ''
      '      ('
      '        (:SALES_LEVEL = 1) or'
      '        ('
      '          (:SALES_LEVEL = 2) and'
      '          (s.SALE_NO is not null)'
      '        ) or'
      '        ('
      '          (:SALES_LEVEL = 3) and'
      '          (s.SALE_NO is not null) and'
      '          (s.FINISH_EMPLOYEE_CODE is not null)'
      '        )'
      '      )'
      ''
      '    group by'
      '      s.CLIENT_COMPANY_CODE,'
      '      s.PRODUCT_CODE,'
      '      s.SALE_OBJECT_BRANCH_CODE,'
      '      s.SALE_OBJECT_CODE,'
      '      s.CL_OFFER_QUANTITY,'
      '      s.QUANTITY,'
      '      s.CL_OFFER_SINGLE_PRICE,'
      '      s.SINGLE_PRICE,'
      '      s.OUR_OFFER_SINGLE_PRICE,'
      '      s.CL_OFFER_RECEIVE_DATE,'
      '      s.RECEIVE_DATE,'
      '      s.DECISION_DATE,'
      '      s.CURRENCY_CODE,'
      '      wscr1.FIXING,'
      '      tscr2.FIXING,'
      '      scr2.FIXING,'
      '      tscr2.FIXING'
      ''
      '    having'
      '      (Min(ss.SHIPMENT_DATE) is null) or'
      '      (Min(ss.SHIPMENT_DATE) >= :BEGIN_DATE)'
      ''
      '    order by'
      '      s.CLIENT_COMPANY_CODE,'
      '      s.PRODUCT_CODE'
      '  ) si,'
      '  COMPANIES c,'
      '  PRODUCTS p,'
      '  MEASURES m,'
      '  PRODUCT_RELATIONS pr,'
      '  TEMP_CHOSEN_PRODUCTS tcp'
      ''
      'where'
      '  (si.CLIENT_COMPANY_CODE = c.COMPANY_CODE) and'
      ''
      '  (si.PRODUCT_CODE = pr.DESCENDANT_PRODUCT_CODE) and'
      '  (pr.ANCESTOR_PRODUCT_CODE = tcp.PRODUCT_CODE) and'
      ''
      '  (tcp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (p.MEASURE_CODE = m.MEASURE_CODE(+)) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '  ('
      '    (si.WANTED_DATE between :BEGIN_DATE and :END_DATE) or'
      '    (si.CONTRACTED_DATE between :BEGIN_DATE and :END_DATE) or'
      '    ('
      '      (si.MIN_SHIPMENT_DATE >= :BEGIN_DATE) and'
      '      (si.MAX_SHIPMENT_DATE <= :END_DATE)'
      '    )'
      '  )'
      ''
      'group by'
      '  %CLIENT_COMPANY_NAME_IN_GROUP_BY'
      '  %CLIENT_COMPANY_CODE_IN_GROUP_BY'
      '  p.NAME,'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.MEASURE_CODE,'
      '  m.MEASURE_ABBREV'
      ''
      'order by'
      '  %CLIENT_COMPANY_NAME_IN_GROUP_BY'
      '  %CLIENT_COMPANY_CODE_IN_GROUP_BY'
      '  p.NAME,'
      '  p.PRODUCT_CODE'
      ''
      ''
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'CLIENT_COMPANY_CODE_IN_SELECT'
        ParamType = ptInput
        Value = 'si.CLIENT_COMPANY_CODE,'
      end
      item
        DataType = ftWideString
        Name = 'CLIENT_COMPANY_NAME_IN_SELECT'
        ParamType = ptInput
        Value = 'c.SHORT_NAME as CLIENT_COMPANY_NAME,'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CLIENT_COMPANY_NAME_IN_GROUP_BY'
        ParamType = ptInput
        Value = 'c.SHORT_NAME,'
      end
      item
        DataType = ftWideString
        Name = 'CLIENT_COMPANY_CODE_IN_GROUP_BY'
        ParamType = ptInput
        Value = 'si.CLIENT_COMPANY_CODE,'
      end>
    DefaultOrder.Fields = 'CLIENT_COMPANY_NAME;PRODUCT_NAME'
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'GROUP_BY_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INSTANCES'
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
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 80
    Top = 64
    object qrySaleQuantitiesProductGroupsCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object qrySaleQuantitiesProductGroupsCLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPANY_NAME'
    end
    object qrySaleQuantitiesProductGroupsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qrySaleQuantitiesProductGroupsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qrySaleQuantitiesProductGroupsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qrySaleQuantitiesProductGroupsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qrySaleQuantitiesProductGroupsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qrySaleQuantitiesProductGroupsTOTAL_WANTED_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_WANTED_QUANTITY'
    end
    object qrySaleQuantitiesProductGroupsTOTAL_WANTED_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_WANTED_SECONDARY_PRICE'
    end
    object qrySaleQuantitiesProductGroupsMIN_WANTED_NO_RATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_WANTED_NO_RATE_DATE'
    end
    object qrySaleQuantitiesProductGroupsTOTAL_CONTRACTED_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_CONTRACTED_QUANTITY'
    end
    object qrySaleQuantitiesProductGroupsTOTAL_CONTRACTED_SEC_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_CONTRACTED_SEC_PRICE'
    end
    object qrySaleQuantitiesProductGroupsMIN_CONTRACTED_NO_RATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_CONTRACTED_NO_RATE_DATE'
    end
    object qrySaleQuantitiesProductGroupsTOTAL_SHIPPED_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_SHIPPED_QUANTITY'
    end
    object qrySaleQuantitiesProductGroupsTOTAL_SHIPPED_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_SHIPPED_SECONDARY_PRICE'
    end
    object qrySaleQuantitiesProductGroupsMIN_SHIPMENT_NO_RATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_SHIPMENT_NO_RATE_DATE'
    end
    object qrySaleQuantitiesProductGroupsTOTAL_INVOICE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_INVOICE_QUANTITY'
    end
    object qrySaleQuantitiesProductGroupsTOTAL_INVOICE_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_INVOICE_SECONDARY_PRICE'
    end
    object qrySaleQuantitiesProductGroupsMIN_INVOICE_NO_RATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_INVOICE_NO_RATE_DATE'
    end
  end
  object qrySaleQuantitiesProductInstances: TAbmesSQLQuery
    BeforeOpen = qrySaleQuantitiesProductInstancesBeforeOpen
    AfterClose = qrySaleQuantitiesProductInstancesAfterClose
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
        Name = 'SALES_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALES_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALES_LEVEL'
        ParamType = ptInput
      end
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
      end>
    SQL.Strings = (
      'select'
      '  %CLIENT_COMPANY_CODE_IN_SELECT'
      '  %CLIENT_COMPANY_NAME_IN_SELECT'
      '  p.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.MEASURE_CODE,'
      '  m.MEASURE_ABBREV,'
      ''
      '  Sum('
      '    case'
      '      when'
      '        (si.WANTED_QUANTITY is not null) and'
      '        (si.WANTED_SINGLE_PRICE is not null) and'
      '        (si.WANTED_DATE is not null) and'
      '        (si.WANTED_CURRENCY_CODE is not null) and'
      '        (si.WANTED_DATE between :BEGIN_DATE and :END_DATE)'
      '      then'
      '        si.WANTED_QUANTITY'
      '    else'
      '      null'
      '    end'
      '  ) as TOTAL_WANTED_QUANTITY,'
      ''
      '  Sum('
      '    case'
      '      when'
      '        (si.WANTED_QUANTITY is not null) and'
      '        (si.WANTED_SINGLE_PRICE is not null) and'
      '        (si.WANTED_DATE is not null) and'
      '        (si.WANTED_CURRENCY_CODE is not null) and'
      '        (si.WANTED_DATE between :BEGIN_DATE and :END_DATE)'
      '      then'
      '        (si.WANTED_QUANTITY * si.WANTED_SINGLE_PRICE *'
      
        '         Decode(Least(si.WANTED_DATE, ContextDate), si.WANTED_DATE' +
        ', si.WANTED_CURR_SEC_RATE, si.WANTED_CURR_TODAY_SEC_RATE))'
      '    else'
      '      null'
      '    end'
      '  ) as TOTAL_WANTED_SECONDARY_PRICE,'
      ''
      '  Min('
      '    Cast('
      '      case'
      '        when'
      '          (si.WANTED_QUANTITY is not null) and'
      '          (si.WANTED_SINGLE_PRICE is not null) and'
      '          (si.WANTED_DATE is not null) and'
      '          (si.WANTED_CURRENCY_CODE is not null) and'
      '          (si.WANTED_DATE between :BEGIN_DATE and :END_DATE)'
      '        then'
      
        '          Decode(Least(si.WANTED_DATE, ContextDate), si.WANTED_DAT' +
        'E,'
      
        '                 Nvl2(si.WANTED_CURR_SEC_RATE, null, si.WANTED_D' +
        'ATE),'
      
        '                 Nvl2(si.WANTED_CURR_TODAY_SEC_RATE, null, Context' +
        'Date))'
      '      else'
      '        null'
      '      end'
      '    as Date)'
      '  ) as MIN_WANTED_NO_RATE_DATE,'
      ''
      ''
      '  Sum('
      '    case'
      '      when'
      '        (si.CONTRACTED_QUANTITY is not null) and'
      '        (si.CONTRACTED_SINGLE_PRICE is not null) and'
      '        (si.CONTRACTED_DATE is not null) and'
      '        (si.CONTRACTED_CURRENCY_CODE is not null) and'
      '        (si.CONTRACTED_DATE between :BEGIN_DATE and :END_DATE)'
      '      then'
      '        si.CONTRACTED_QUANTITY'
      '    else'
      '      null'
      '    end'
      '  ) as TOTAL_CONTRACTED_QUANTITY,'
      ''
      '  Sum('
      '    case'
      '      when'
      '        (si.CONTRACTED_QUANTITY is not null) and'
      '        (si.CONTRACTED_SINGLE_PRICE is not null) and'
      '        (si.CONTRACTED_DATE is not null) and'
      '        (si.CONTRACTED_CURRENCY_CODE is not null) and'
      '        (si.CONTRACTED_DATE between :BEGIN_DATE and :END_DATE)'
      '      then'
      '        (si.CONTRACTED_QUANTITY * si.CONTRACTED_SINGLE_PRICE *'
      
        '         Decode(Least(si.CONTRACTED_DATE, ContextDate), si.CONTRAC' +
        'TED_DATE, si.CONTRACTED_CURR_SEC_RATE, si.CONTRACTED_CURR_TODAY_' +
        'SEC_RATE))'
      '    else'
      '      null'
      '    end'
      '  ) as TOTAL_CONTRACTED_SEC_PRICE,'
      ''
      '  Min('
      '    Cast('
      '      case'
      '        when'
      '          (si.CONTRACTED_QUANTITY is not null) and'
      '          (si.CONTRACTED_SINGLE_PRICE is not null) and'
      '          (si.CONTRACTED_DATE is not null) and'
      '          (si.CONTRACTED_CURRENCY_CODE is not null) and'
      '          (si.CONTRACTED_DATE between :BEGIN_DATE and :END_DATE)'
      '        then'
      
        '          Decode(Least(si.CONTRACTED_DATE, ContextDate), si.CONTRA' +
        'CTED_DATE,'
      
        '                 Nvl2(si.CONTRACTED_CURR_SEC_RATE, null, si.CONT' +
        'RACTED_DATE),'
      
        '                 Nvl2(si.CONTRACTED_CURR_TODAY_SEC_RATE, null, C' +
        'ontextDate))'
      '      else'
      '        null'
      '      end'
      '    as Date)'
      '  ) as MIN_CONTRACTED_NO_RATE_DATE,'
      ''
      ''
      '  Sum(si.TOTAL_SHIPPED_QUANTITY) as TOTAL_SHIPPED_QUANTITY,'
      
        '  Sum(si.TOTAL_SHIPPED_SECONDARY_PRICE) as TOTAL_SHIPPED_SECONDA' +
        'RY_PRICE,'
      
        '  Min(Cast(si.MIN_NO_RATE_SHIPMENT_DATE as Date)) as MIN_SHIPMEN' +
        'T_NO_RATE_DATE,'
      ''
      '  Sum(si.TOTAL_INVOICE_QUANTITY) as TOTAL_INVOICE_QUANTITY,'
      
        '  Sum(si.TOTAL_INVOICE_SECONDARY_PRICE) as TOTAL_INVOICE_SECONDA' +
        'RY_PRICE,'
      
        '  Min(Cast(si.MIN_NO_RATE_INVOICE_DATE as Date)) as MIN_INVOICE_' +
        'NO_RATE_DATE'
      ''
      'from'
      '  ('
      '    select'
      '      s.CLIENT_COMPANY_CODE,'
      '      s.PRODUCT_CODE,'
      ''
      '      s.SALE_OBJECT_BRANCH_CODE,'
      '      s.SALE_OBJECT_CODE,'
      ''
      
        '      Coalesce(s.CL_OFFER_QUANTITY, s.QUANTITY) as WANTED_QUANTI' +
        'TY,'
      ''
      '      Coalesce(s.CL_OFFER_SINGLE_PRICE,'
      '          Coalesce(s.SINGLE_PRICE, s.OUR_OFFER_SINGLE_PRICE))'
      '      as WANTED_SINGLE_PRICE,'
      ''
      '      Coalesce(s.CL_OFFER_RECEIVE_DATE,'
      '          Coalesce(s.RECEIVE_DATE,'
      '              Coalesce(s.DECISION_DATE, ContextDate)))'
      '      as WANTED_DATE,'
      ''
      '      s.CURRENCY_CODE as WANTED_CURRENCY_CODE,'
      '      wscr1.FIXING as WANTED_CURR_SEC_RATE,'
      '      tscr2.FIXING as WANTED_CURR_TODAY_SEC_RATE,'
      ''
      '      s.QUANTITY as CONTRACTED_QUANTITY,'
      '      s.SINGLE_PRICE as CONTRACTED_SINGLE_PRICE,'
      '      s.RECEIVE_DATE as CONTRACTED_DATE,'
      '      s.CURRENCY_CODE as CONTRACTED_CURRENCY_CODE,'
      '      scr2.FIXING as CONTRACTED_CURR_SEC_RATE,'
      '      tscr2.FIXING as CONTRACTED_CURR_TODAY_SEC_RATE,'
      ''
      ''
      '      Sum('
      '        case'
      '          when'
      '            ('
      '              (ss.QUANTITY is not null) and'
      '              (ss.INVOICE_SINGLE_PRICE is not null) and'
      '              (ss.INVOICE_DATE is not null) and'
      '              (ss.INVOICE_CURRENCY_CODE is not null) and'
      
        '              (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE' +
        ')'
      '            ) or'
      '            ('
      '              (ss.QUANTITY is not null) and'
      '              (s.SINGLE_PRICE is not null) and'
      '              (s.RECEIVE_DATE is not null) and'
      '              (s.CURRENCY_CODE is not null) and'
      '              (s.RECEIVE_DATE between :BEGIN_DATE and :END_DATE)'
      '            )'
      '          then'
      '            ss.QUANTITY'
      '        else'
      '          null'
      '        end'
      '      ) as TOTAL_SHIPPED_QUANTITY,'
      ''
      '      Sum('
      '        case'
      '          when'
      '            (ss.QUANTITY is not null) and'
      '            (ss.INVOICE_SINGLE_PRICE is not null) and'
      '            (ss.INVOICE_DATE is not null) and'
      '            (ss.INVOICE_CURRENCY_CODE is not null) and'
      '            (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE)'
      '          then'
      '            (ss.QUANTITY * ss.INVOICE_SINGLE_PRICE *'
      
        '             Decode(Least(ss.INVOICE_DATE, ContextDate), ss.INVOIC' +
        'E_DATE, scr1.FIXING, tscr1.FIXING))'
      ''
      '          when'
      '            (ss.QUANTITY is not null) and'
      '            (s.SINGLE_PRICE is not null) and'
      '            (s.RECEIVE_DATE is not null) and'
      '            (s.CURRENCY_CODE is not null) and'
      '            (s.RECEIVE_DATE between :BEGIN_DATE and :END_DATE)'
      '          then'
      '            (ss.QUANTITY * s.SINGLE_PRICE *'
      
        '             Decode(Least(s.RECEIVE_DATE, ContextDate), s.RECEIVE_' +
        'DATE, scr2.FIXING, tscr2.FIXING))'
      ''
      '        else'
      '          null'
      '        end'
      '      ) as TOTAL_SHIPPED_SECONDARY_PRICE,'
      ''
      '      Min('
      '        case'
      '          when'
      '            (ss.QUANTITY is not null) and'
      '            (ss.INVOICE_SINGLE_PRICE is not null) and'
      '            (ss.INVOICE_DATE is not null) and'
      '            (ss.INVOICE_CURRENCY_CODE is not null) and'
      '            (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE)'
      '          then'
      
        '            Decode(Least(ss.INVOICE_DATE, ContextDate), ss.INVOICE' +
        '_DATE,'
      '                   Nvl2(scr1.FIXING, null, ss.INVOICE_DATE),'
      '                   Nvl2(tscr1.FIXING, null, ContextDate))'
      ''
      '          when'
      '            (ss.QUANTITY is not null) and'
      '            (s.SINGLE_PRICE is not null) and'
      '            (s.RECEIVE_DATE is not null) and'
      '            (s.CURRENCY_CODE is not null) and'
      '            (s.RECEIVE_DATE between :BEGIN_DATE and :END_DATE)'
      '          then'
      
        '            Decode(Least(s.RECEIVE_DATE, ContextDate), s.RECEIVE_D' +
        'ATE,'
      '                   Nvl2(scr2.FIXING, null, s.RECEIVE_DATE),'
      '                   Nvl2(tscr2.FIXING, null, ContextDate))'
      ''
      '        else'
      '          null'
      '        end'
      '      ) as MIN_NO_RATE_SHIPMENT_DATE,'
      ''
      ''
      '      Sum('
      '        case'
      '          when'
      '            (ss.QUANTITY is not null) and'
      '            (ss.INVOICE_SINGLE_PRICE is not null) and'
      '            (ss.INVOICE_DATE is not null) and'
      '            (ss.INVOICE_CURRENCY_CODE is not null) and'
      '            (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE)'
      '          then'
      '            ss.QUANTITY'
      ''
      '        else'
      '          null'
      '        end'
      '      ) as TOTAL_INVOICE_QUANTITY,'
      ''
      '      Sum('
      '        case'
      '          when'
      '            (ss.QUANTITY is not null) and'
      '            (ss.INVOICE_SINGLE_PRICE is not null) and'
      '            (ss.INVOICE_DATE is not null) and'
      '            (ss.INVOICE_CURRENCY_CODE is not null) and'
      '            (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE)'
      '          then'
      '            (ss.QUANTITY * ss.INVOICE_SINGLE_PRICE *'
      
        '             Decode(Least(ss.INVOICE_DATE, ContextDate), ss.INVOIC' +
        'E_DATE, scr1.FIXING, tscr1.FIXING))'
      ''
      '        else'
      '          null'
      '        end'
      '      ) as TOTAL_INVOICE_SECONDARY_PRICE,'
      ''
      '      Min('
      '        case'
      '          when'
      '            (ss.QUANTITY is not null) and'
      '            (ss.INVOICE_SINGLE_PRICE is not null) and'
      '            (ss.INVOICE_DATE is not null) and'
      '            (ss.INVOICE_CURRENCY_CODE is not null) and'
      '            (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE)'
      '          then'
      
        '            Decode(Least(ss.INVOICE_DATE, ContextDate), ss.INVOICE' +
        '_DATE,'
      '                   Nvl2(scr1.FIXING, null, ss.INVOICE_DATE),'
      '                   Nvl2(tscr1.FIXING, null, ContextDate))'
      ''
      '        else'
      '          null'
      '        end'
      '      ) as MIN_NO_RATE_INVOICE_DATE,'
      ''
      ''
      '      Min('
      '        case'
      '          when'
      '            ('
      '              (ss.QUANTITY is not null) and'
      '              (ss.INVOICE_SINGLE_PRICE is not null) and'
      '              (ss.INVOICE_DATE is not null) and'
      '              (ss.INVOICE_CURRENCY_CODE is not null) and'
      
        '              (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE' +
        ')'
      '            ) or'
      '            ('
      '              (ss.QUANTITY is not null) and'
      '              (s.SINGLE_PRICE is not null) and'
      '              (s.RECEIVE_DATE is not null) and'
      '              (s.CURRENCY_CODE is not null) and'
      '              (s.RECEIVE_DATE between :BEGIN_DATE and :END_DATE)'
      '            )'
      '          then'
      '            ss.SHIPMENT_DATE'
      '        else'
      '          null'
      '        end'
      '      ) as MIN_SHIPMENT_DATE,'
      ''
      '      Max('
      '        case'
      '          when'
      '            ('
      '              (ss.QUANTITY is not null) and'
      '              (ss.INVOICE_SINGLE_PRICE is not null) and'
      '              (ss.INVOICE_DATE is not null) and'
      '              (ss.INVOICE_CURRENCY_CODE is not null) and'
      
        '              (ss.INVOICE_DATE between :BEGIN_DATE and :END_DATE' +
        ')'
      '            ) or'
      '            ('
      '              (ss.QUANTITY is not null) and'
      '              (s.SINGLE_PRICE is not null) and'
      '              (s.RECEIVE_DATE is not null) and'
      '              (s.CURRENCY_CODE is not null) and'
      '              (s.RECEIVE_DATE between :BEGIN_DATE and :END_DATE)'
      '            )'
      '          then'
      '            ss.SHIPMENT_DATE'
      '        else'
      '          null'
      '        end'
      '      ) as MAX_SHIPMENT_DATE'
      ''
      '    from'
      '      SALES s,'
      '      SALE_SHIPMENTS ss,'
      '      SECONDARY_CURRENCY_RATES scr1,'
      '      TODAY_SECONDARY_CURRENCY_RATES tscr1,'
      '      SECONDARY_CURRENCY_RATES scr2,'
      '      TODAY_SECONDARY_CURRENCY_RATES tscr2,'
      '      SECONDARY_CURRENCY_RATES wscr1'
      ''
      '    where'
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
      '      ) and'
      ''
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_CODE(+)' +
        ') and'
      '      (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE(+)) and'
      ''
      '      (ss.INVOICE_CURRENCY_CODE = scr1.CURRENCY_CODE(+)) and'
      '      (ss.INVOICE_DATE = scr1.RATE_DATE(+)) and'
      ''
      '      (ss.INVOICE_CURRENCY_CODE = tscr1.CURRENCY_CODE(+)) and'
      ''
      '      (s.CURRENCY_CODE = scr2.CURRENCY_CODE(+)) and'
      '      (s.RECEIVE_DATE = scr2.RATE_DATE(+)) and'
      ''
      '      (s.CURRENCY_CODE = tscr2.CURRENCY_CODE(+)) and'
      ''
      '      (s.CURRENCY_CODE = wscr1.CURRENCY_CODE(+)) and'
      '      ( Coalesce(s.CL_OFFER_RECEIVE_DATE,'
      '          Coalesce(s.RECEIVE_DATE,'
      
        '              Coalesce(s.DECISION_DATE, ContextDate))) = wscr1.RAT' +
        'E_DATE(+)) and'
      ''
      '      (s.ANNUL_EMPLOYEE_CODE is null) and'
      '      (s.SALE_ORDER_TYPE_CODE in (1, 2, 5)) and'
      ''
      '      ('
      '        (:SALES_LEVEL = 1) or'
      '        ('
      '          (:SALES_LEVEL = 2) and'
      '          (s.SALE_NO is not null)'
      '        ) or'
      '        ('
      '          (:SALES_LEVEL = 3) and'
      '          (s.SALE_NO is not null) and'
      '          (s.FINISH_EMPLOYEE_CODE is not null)'
      '        )'
      '      )'
      ''
      '    group by'
      '      s.CLIENT_COMPANY_CODE,'
      '      s.PRODUCT_CODE,'
      '      s.SALE_OBJECT_BRANCH_CODE,'
      '      s.SALE_OBJECT_CODE,'
      '      s.CL_OFFER_QUANTITY,'
      '      s.QUANTITY,'
      '      s.CL_OFFER_SINGLE_PRICE,'
      '      s.SINGLE_PRICE,'
      '      s.OUR_OFFER_SINGLE_PRICE,'
      '      s.CL_OFFER_RECEIVE_DATE,'
      '      s.RECEIVE_DATE,'
      '      s.DECISION_DATE,'
      '      s.CURRENCY_CODE,'
      '      wscr1.FIXING,'
      '      tscr2.FIXING,'
      '      scr2.FIXING,'
      '      tscr2.FIXING'
      ''
      '    having'
      '      (Min(ss.SHIPMENT_DATE) is null) or'
      '      (Min(ss.SHIPMENT_DATE) >= :BEGIN_DATE)'
      ''
      '    order by'
      '      s.CLIENT_COMPANY_CODE,'
      '      s.PRODUCT_CODE'
      '  ) si,'
      '  COMPANIES c,'
      '  PRODUCTS p,'
      '  MEASURES m'
      ''
      'where'
      '  (si.CLIENT_COMPANY_CODE = c.COMPANY_CODE) and'
      ''
      '  (si.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (p.MEASURE_CODE = m.MEASURE_CODE(+)) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      '  ('
      '    (si.WANTED_DATE between :BEGIN_DATE and :END_DATE) or'
      '    (si.CONTRACTED_DATE between :BEGIN_DATE and :END_DATE) or'
      '    ('
      '      (si.MIN_SHIPMENT_DATE >= :BEGIN_DATE) and'
      '      (si.MAX_SHIPMENT_DATE <= :END_DATE)'
      '    )'
      '  )'
      ''
      'group by'
      '  %CLIENT_COMPANY_NAME_IN_GROUP_BY'
      '  %CLIENT_COMPANY_CODE_IN_GROUP_BY'
      '  p.NAME,'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.MEASURE_CODE,'
      '  m.MEASURE_ABBREV'
      ''
      'order by'
      '  %CLIENT_COMPANY_NAME_IN_GROUP_BY'
      '  %CLIENT_COMPANY_CODE_IN_GROUP_BY'
      '  p.NAME,'
      '  p.PRODUCT_CODE'
      ''
      ' ')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'CLIENT_COMPANY_CODE_IN_SELECT'
        ParamType = ptInput
        Value = 'si.CLIENT_COMPANY_CODE,'
      end
      item
        DataType = ftWideString
        Name = 'CLIENT_COMPANY_NAME_IN_SELECT'
        ParamType = ptInput
        Value = 'c.SHORT_NAME as CLIENT_COMPANY_NAME,'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CLIENT_COMPANY_NAME_IN_GROUP_BY'
        ParamType = ptInput
        Value = 'c.SHORT_NAME,'
      end
      item
        DataType = ftWideString
        Name = 'CLIENT_COMPANY_CODE_IN_GROUP_BY'
        ParamType = ptInput
        Value = 'si.CLIENT_COMPANY_CODE,'
      end>
    DefaultOrder.Fields = 'CLIENT_COMPANY_NAME;PRODUCT_NAME'
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'GROUP_BY_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INSTANCES'
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
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 80
    Top = 112
    object qrySaleQuantitiesProductInstancesCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object qrySaleQuantitiesProductInstancesCLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPANY_NAME'
    end
    object qrySaleQuantitiesProductInstancesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qrySaleQuantitiesProductInstancesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qrySaleQuantitiesProductInstancesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qrySaleQuantitiesProductInstancesMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qrySaleQuantitiesProductInstancesMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qrySaleQuantitiesProductInstancesTOTAL_WANTED_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_WANTED_QUANTITY'
    end
    object qrySaleQuantitiesProductInstancesTOTAL_WANTED_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_WANTED_SECONDARY_PRICE'
    end
    object qrySaleQuantitiesProductInstancesMIN_WANTED_NO_RATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_WANTED_NO_RATE_DATE'
    end
    object qrySaleQuantitiesProductInstancesTOTAL_CONTRACTED_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_CONTRACTED_QUANTITY'
    end
    object qrySaleQuantitiesProductInstancesTOTAL_CONTRACTED_SEC_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_CONTRACTED_SEC_PRICE'
    end
    object qrySaleQuantitiesProductInstancesMIN_CONTRACTED_NO_RATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_CONTRACTED_NO_RATE_DATE'
    end
    object qrySaleQuantitiesProductInstancesTOTAL_SHIPPED_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_SHIPPED_QUANTITY'
    end
    object qrySaleQuantitiesProductInstancesTOTAL_SHIPPED_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_SHIPPED_SECONDARY_PRICE'
    end
    object qrySaleQuantitiesProductInstancesMIN_SHIPMENT_NO_RATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_SHIPMENT_NO_RATE_DATE'
    end
    object qrySaleQuantitiesProductInstancesTOTAL_INVOICE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_INVOICE_QUANTITY'
    end
    object qrySaleQuantitiesProductInstancesTOTAL_INVOICE_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_INVOICE_SECONDARY_PRICE'
    end
    object qrySaleQuantitiesProductInstancesMIN_INVOICE_NO_RATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_INVOICE_NO_RATE_DATE'
    end
  end
  object qryParRelProducts: TAbmesSQLQuery
    BeforeOpen = qryParRelProductsBeforeOpen
    AfterClose = qryParRelProductsAfterClose
    OnCalcFields = qryParRelProductsCalcFields
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CALC_ESTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
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
        Name = 'CALC_ESTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ESTS'
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
        Name = 'CALC_ESTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
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
        Name = 'INVESTMENT_LEVEL_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'CALC_REALS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
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
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
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
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
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
        Name = 'CALC_REALS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
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
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
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
        Name = 'CALC_REALS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
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
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
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
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
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
        Name = 'CALC_REALS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
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
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
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
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
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
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
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
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
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
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
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
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
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
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
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
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
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
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
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
        Name = 'IS_APPROVED_BY_PARTNER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_APPROVED_BY_PARTNER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_REGULAR'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_REGULAR'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
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
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_COMPANY_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_COMPANY_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_COMPANY_STATUS_CODE'
        ParamType = ptInput
        Value = '6'
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
        Name = 'MIN_PRP_EXIST_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_EXIST_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_EXIST_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_EXIST_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_REACH_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_REACH_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_REACH_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_REACH_MONTHS'
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
        Name = 'PRODUCT_CLASS_CODE'
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
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  /*+INDEX(prp) INDEX(pr)*/'
      '  prp.PARTNER_CODE,'
      '  prp.BORDER_REL_TYPE_CODE,'
      '  prp.PRODUCT_CODE,'
      ''
      '  prppo.OBTAINMENT_TYPE_CODE,'
      '  prppe.PROD_ORDER_BASE_TYPE_CODE,'
      ''
      '  prp.DOC_BRANCH_CODE, '
      '  prp.DOC_CODE, '
      '  %HAS_DOC_ITEMS[prp] as HAS_DOC,'
      ''
      '  prp.IS_REGULAR,'
      ''
      
        '  %PAR_REL_PRODUCT_STATUS_CODE[prp] as PAR_REL_PRODUCT_STATUS_CO' +
        'DE,'
      ''
      '  ( select'
      '      prps.PAR_REL_PRODUCT_STATUS_NAME'
      '    from'
      '      PAR_REL_PRODUCT_STATUS_CHANGES prpsc,'
      '      PAR_REL_PRODUCT_STATUSES prps'
      '    where'
      
        '      (prpsc.PAR_REL_PRODUCT_STATUS_CODE = prps.PAR_REL_PRODUCT_' +
        'STATUS_CODE) and'
      ''
      '      (prpsc.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '      (prpsc.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) an' +
        'd'
      '      (prpsc.PRODUCT_CODE = prp.PRODUCT_CODE) and'
      ''
      '      (prpsc.STATUS_DATE = '
      '        ( select'
      '            Max(prpsc2.STATUS_DATE)'
      '          from'
      '            PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '          where'
      '            (prpsc2.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '            (prpsc2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_C' +
        'ODE) and'
      '            (prpsc2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '        )'
      '      )'
      '  ) as PAR_REL_PRODUCT_STATUS_NAME,'
      ''
      '  ( select'
      '      Round(Months_between(ContextDate, Min(prpsc.STATUS_DATE)))'
      '    from'
      '      PAR_REL_PRODUCT_STATUS_CHANGES prpsc'
      '    where'
      '      (prpsc.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '      (prpsc.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) an' +
        'd'
      '      (prpsc.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '  ) as PAR_REL_PRODUCT_EXIST_MONTHS,'
      ''
      '  Round('
      '    Months_between('
      '      ( select'
      '          Max(prpsc2.STATUS_DATE)'
      '        from'
      '          PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '        where'
      '          (prpsc2.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '          (prpsc2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_COD' +
        'E) and'
      '          (prpsc2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '      ),'
      '      Coalesce('
      '        ( select'
      '            Max(prpsc2.STATUS_DATE)'
      '          from'
      '            PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '          where'
      '            (prpsc2.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '            (prpsc2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_C' +
        'ODE) and'
      '            (prpsc2.PRODUCT_CODE = prp.PRODUCT_CODE) and'
      '            (prpsc2.PAR_REL_PRODUCT_STATUS_CODE = 5)'
      '        ),'
      '        ( select'
      '            Min(prpsc2.STATUS_DATE)'
      '          from'
      '            PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '          where'
      '            (prpsc2.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '            (prpsc2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_C' +
        'ODE) and'
      '            (prpsc2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '        )'
      '      )'
      '    )'
      '  ) as PRP_STATUS_REACH_MONTHS,'
      ''
      '  c.COMPANY_NO as PARTNER_NO,'
      '  c.SHORT_NAME as PARTNER_NAME,'
      '  c.DOC_BRANCH_CODE as PARTNER_DOC_BRANCH_CODE,'
      '  c.DOC_CODE as PARTNER_DOC_CODE,'
      '  %HAS_DOC_ITEMS[c] as PARTNER_HAS_DOC,'
      '  pr.PRIORITY_CODE as PARTNER_PRIORITY_CODE,'
      '  ppar.PRIORITY_NO as PARTNER_PRIORITY_NO,'
      '  ppar.PRIORITY_COLOR as PAR_PRIORITY_COLOR,'
      
        '  ppar.PRIORITY_BACKGROUND_COLOR as PAR_PRIORITY_BACKGROUND_COLO' +
        'R,'
      '  c.COMPANY_CLASS_CODE as PARTNER_COMPANY_CLASS_CODE,'
      '  cc.COMPANY_CLASS_ABBREV as PARTNER_COMPANY_CLASS_ABBREV,'
      '  '
      '  ( select'
      '      csc.COMPANY_STATUS_CODE'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc'
      '    where'
      '      (csc.COMPANY_CODE = c.COMPANY_CODE) and'
      ''
      '      (csc.STATUS_DATE ='
      '        ( select'
      '            Max(csc2.STATUS_DATE)'
      '          from'
      '            COMPANY_STATUSES_CHANGES csc2'
      '          where'
      '            (csc2.COMPANY_CODE = c.COMPANY_CODE)'
      '        )'
      '      )'
      '  ) as PARTNER_STATUS_CODE,'
      ''
      '  ( select'
      '      cs.COMPANY_STATUS_NAME'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc,'
      '      COMPANY_STATUSES cs'
      '    where'
      '      (csc.COMPANY_STATUS_CODE = cs.COMPANY_STATUS_CODE) and'
      ''
      '      (csc.COMPANY_CODE = c.COMPANY_CODE) and'
      ''
      '      (csc.STATUS_DATE = '
      '        ( select'
      '            Max(csc2.STATUS_DATE)'
      '          from'
      '            COMPANY_STATUSES_CHANGES csc2'
      '          where'
      '            (csc2.COMPANY_CODE = c.COMPANY_CODE)'
      '        )'
      '      )'
      '  ) as PARTNER_STATUS_NAME,'
      ''
      
        '  %COMPANY_BASE_ROLE_CODE[c.COMPANY_CODE] as PARTNER_BASE_ROLE_C' +
        'ODE,'
      '  '
      '  ( select'
      '      Round(Months_between(ContextDate, Max(csc.STATUS_DATE)))'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc'
      '    where'
      '      (csc.COMPANY_CODE = c.COMPANY_CODE)'
      '  ) as PARTNER_EXISTENCE_MONTHS,'
      ''
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC,'
      '  pbr.PRIORITY_CODE as PRODUCT_PRIORITY_CODE,'
      '  pprod.PRIORITY_NO as PRODUCT_PRIORITY_NO,'
      '  pprod.PRIORITY_COLOR as PROD_PRIORITY_COLOR,'
      
        '  pprod.PRIORITY_BACKGROUND_COLOR as PROD_PRIORITY_BACKGROUND_CO' +
        'LOR,'
      '  p.MEASURE_CODE as PRODUCT_MEASURE_CODE,'
      '  wm.MEASURE_ABBREV as PRODUCT_MEASURE_ABBREV,'
      '  p.MEASURE_CODE as PRODUCT_ACCOUNT_MEASURE_CODE,'
      '  am.MEASURE_ABBREV as PRODUCT_ACCOUNT_MEASURE_ABBREV,'
      '  p.ACCOUNT_MEASURE_COEF as PRODUCT_ACCOUNT_MEASURE_COEF,'
      ''
      '  Decode('
      '    p.IS_COMMON,'
      '    1,'
      '    2,'
      '    Nvl2(dp.COMMON_PRODUCT_CODE, 3, 1)'
      '  ) as PRODUCT_COMMON_STATUS_CODE,'
      ''
      '  ( select'
      '      cp.NAME'
      '    from'
      '      COMPANY_PRODUCTS cp'
      '    where'
      '      (cp.COMPANY_CODE = prp.PARTNER_CODE) and'
      '      (cp.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '  ) as PARTNER_PRODUCT_NAME,'
      ''
      '  p.PARTNER_PRODUCT_NAMES,'
      ''
      '  Decode('
      '    :CALC_ESTS,'
      '    1,'
      '    Sum('
      '      Decode('
      '        :OBTAINMENT_TYPE_CODE, '
      '        %ot_LEASE,'
      '        (prppe.EST_QUANTITY * prppe.EST_LEASE_DURATION),'
      '        prppe.EST_QUANTITY'
      '      ) *'
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
      '    )'
      '  ) as EST_QUANTITY,'
      ''
      '  Decode('
      '    :CALC_ESTS,'
      '    1,'
      '    Decode('
      '      :OBTAINMENT_TYPE_CODE,'
      '      %ot_LEASE,'
      '      Decode('
      '        Min(prppo.LEASE_DATE_UNIT_CODE),'
      '        Max(prppo.LEASE_DATE_UNIT_CODE),'
      '        Min('
      '          ( select'
      '              du.THE_DATE_UNIT_NAME'
      '            from'
      '              THE_DATE_UNITS du'
      '            where'
      
        '              (du.THE_DATE_UNIT_CODE = prppo.LEASE_DATE_UNIT_COD' +
        'E)'
      '          )'
      '        )'
      '      )'
      '    )'
      '  ) as EST_LEASE_DATE_UNIT_NAME,'
      ''
      '  Decode('
      '    :CALC_ESTS,'
      '    1,'
      '    Sum('
      
        '      prppe.EST_QUANTITY * Coalesce(prppe.EST_LEASE_DURATION, 1)' +
        ' *'
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
      '      ) *'
      '      prppo.SINGLE_PRICE *'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = prppo.CURRENCY_CODE) and'
      '          (cr.RATE_DATE = Least(prpp.BEGIN_DATE, ContextDate))'
      '      )'
      '    )'
      '  ) as EST_TOTAL_PRICE,'
      ''
      '  Decode('
      '    :CALC_ESTS,'
      '    1,'
      '    Decode('
      '      :BORDER_REL_TYPE_CODE,'
      '      %brt_CLIENT,  -- prodajba'
      '      Decode('
      '        :OBTAINMENT_TYPE_CODE,'
      '        %ot_ACQUIRE,'
      '        Sum('
      '          prppe.EST_QUANTITY *'
      '          Coalesce('
      
        '            ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DA' +
        'TE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      
        '              NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~ prpp.END_D' +
        'ATE], 0)'
      '            ),'
      
        '            ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN' +
        '_DATE, prpp.END_DATE, :BEGIN_DATE, :END_DATE) /'
      '              (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '            )'
      '          ) *'
      '          ( select'
      '              ppi.AGGR_INVESTMENT_VALUE'
      '            from'
      '              PRODUCT_PERIOD_INVESTMENTS ppi'
      '            where'
      '              (ppi.PRODUCT_CODE = pp.PRODUCT_CODE) and'
      
        '              (ppi.PRODUCT_PERIOD_CODE = pp.PRODUCT_PERIOD_CODE)' +
        ' and'
      
        '              (ppi.INVESTMENT_LEVEL_CODE = :INVESTMENT_LEVEL_COD' +
        'E)'
      '          )'
      '        )'
      '      )'
      '    )'
      '  ) as EST_TOTAL_INVESTMENT_VALUE,'
      ''
      '  Decode('
      '    :CALC_REALS,'
      '    1,'
      '    Decode('
      '      :BORDER_REL_TYPE_CODE,'
      '      %brt_CLIENT,  -- prodajba'
      '      ( select'
      
        '          /*+ ORDERED INDEX(dp2) INDEX(pr2) INDEX(s) INDEX(ss) N' +
        'O_USE_HASH(dp2 pr2 s ss) NO_USE_MERGE(dp2 pr2 s ss) USE_NL(dp2 p' +
        'r2 s ss)*/'
      '          Decode('
      '            :OBTAINMENT_TYPE_CODE,'
      '            %ot_LEASE,'
      
        '            Sum(Coalesce(ss.QUANTITY, ss.PLAN_QUANTITY) * ss.LEA' +
        'SE_PLAN_DATE_UNIT_QTY),'
      '            Sum(Coalesce(ss.QUANTITY, ss.PLAN_QUANTITY))'
      '          )'
      '        from'
      '          DEFINITE_PRODUCTS dp2,'
      '          SALES s,'
      '          SALE_SHIPMENTS ss,'
      '          PAR_RELS pr2'
      '        where'
      
        '          (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_COD' +
        'E) and'
      '          (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE) and'
      ''
      '          (s.CLIENT_COMPANY_CODE = pr2.PARTNER_CODE) and'
      ''
      '          ( ( (c.COMPANY_CLASS_CODE <> %cc_COMMON) and'
      '              (pr2.PARTNER_CODE = prp.PARTNER_CODE)'
      '            ) or'
      '            ( (c.COMPANY_CLASS_CODE = %cc_COMMON) and'
      '              (pr2.COMMON_PARTNER_CODE = prp.PARTNER_CODE)'
      '            )'
      '          ) and'
      
        '          (pr2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) ' +
        'and'
      ''
      '          (s.PRODUCT_CODE = dp2.PRODUCT_CODE) and'
      ''
      '          ( ( (p.IS_COMMON = 0) and'
      '              (dp2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '            ) or'
      '            ( (p.IS_COMMON = 1) and'
      '              (dp2.COMMON_PRODUCT_CODE = prp.PRODUCT_CODE)'
      '            )'
      '          ) and'
      ''
      
        '          (Coalesce(ss.INVOICE_DATE, ss.SHIPMENT_DATE, ss.SHIPME' +
        'NT_PLAN_DATE) between :BEGIN_DATE and :END_DATE) and'
      ''
      '          (s.ASPECT_TYPE_CODE = %at_REALIZATION) and'
      ''
      '          (s.SALE_DEAL_TYPE_CODE ='
      '            ( select'
      '                bdt.BORDER_DEAL_TYPE_CODE'
      '              from'
      '                BORDER_DEAL_TYPES bdt'
      '              where'
      
        '                (bdt.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_COD' +
        'E) and'
      
        '                (bdt.OBTAINMENT_TYPE_CODE = :OBTAINMENT_TYPE_COD' +
        'E) and'
      
        '                (bdt.PROD_ORDER_BASE_TYPE_CODE = :PROD_ORDER_BAS' +
        'E_TYPE_CODE)'
      '            )'
      '          ) and'
      ''
      '          ( (ss.QUANTITY is not null) or'
      '            (s.FINISH_EMPLOYEE_CODE is null)'
      '          ) and'
      ''
      '          (s.ANNUL_EMPLOYEE_CODE is null)'
      '      ),'
      '      %brt_VENDOR, -- dostavka'
      '      Decode('
      '        :PRODUCT_CLASS_CODE,'
      '        %pc_BUDGET,'
      '        Decode('
      '          :OBTAINMENT_TYPE_CODE,'
      '          %ot_ACQUIRE,'
      '          ( select'
      
        '              /*+ ORDERED INDEX(dp2) INDEX(pr2) INDEX(boi) INDEX' +
        '(boio) NO_USE_HASH(dp2 pr2 boi boio) NO_USE_MERGE(dp2 pr2 boi bo' +
        'io) USE_NL(dp2 pr2 boi boio)*/'
      '              NullIf(Count(*), 0)'
      '            from'
      '              PAR_RELS pr2,'
      '              BOI_ORDERS boio,'
      '              BUDGET_ORDER_ITEMS boi,'
      '              DEFINITE_PRODUCTS dp2'
      '            where'
      
        '              (boi.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_ORDER_' +
        'BRANCH_CODE) and'
      
        '              (boi.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_CODE) a' +
        'nd'
      
        '              (boi.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDER_IT' +
        'EM_CODE) and'
      ''
      '              (boi.ANNUL_EMPLOYEE_CODE is null) and'
      '              (boio.ANNUL_EMPLOYEE_CODE is null) and'
      '              (boio.IS_CANCELED = 0) and'
      ''
      '              (boi.BUDGET_PRODUCT_CODE = dp2.PRODUCT_CODE) and'
      ''
      '              ( ( (p.IS_COMMON = 0) and'
      '                  (dp2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '                ) or'
      '                ( (p.IS_COMMON = 1) and'
      '                  (dp2.COMMON_PRODUCT_CODE = prp.PRODUCT_CODE)'
      '                )'
      '              ) and'
      ''
      '              (boio.COMPANY_CODE = pr2.PARTNER_CODE) and'
      ''
      '              ( ( (c.COMPANY_CLASS_CODE <> %cc_COMMON) and'
      '                  (pr2.PARTNER_CODE = prp.PARTNER_CODE)'
      '                ) or'
      '                ( (c.COMPANY_CLASS_CODE = %cc_COMMON) and'
      '                  (pr2.COMMON_PARTNER_CODE = prp.PARTNER_CODE)'
      '                )'
      '              ) and'
      
        '              (pr2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CO' +
        'DE) and'
      ''
      '              (boio.PLAN_DATE between :BEGIN_DATE and :END_DATE)'
      '          )'
      '        ),'
      '        ( select'
      
        '            /*+ ORDERED INDEX(dp2) INDEX(pr2) INDEX(dcd) INDEX(d' +
        'p) INDEX(dc) NO_USE_HASH(dp2 pr2 dcd dp dc) NO_USE_MERGE(dp2 pr2' +
        ' dcd dp dc) USE_NL(dp2 pr2 dcd dp dc)*/'
      '            Decode('
      '              :OBTAINMENT_TYPE_CODE,'
      '              %ot_LEASE,'
      '              Sum(dp.WORK_QUANTITY * dp.LEASE_DATE_UNIT_QTY),'
      '              Sum(dp.WORK_QUANTITY)'
      '            )'
      '          from'
      '            DEFINITE_PRODUCTS dp2,'
      '            DEFICIT_COVER_DECISIONS dcd,'
      '            DELIVERY_PROJECTS dp,'
      '            PAR_RELS pr2,'
      '            DELIVERY_CONTRACTS dc'
      '          where'
      
        '            (dcd.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_C' +
        'ODE) and'
      '            (dcd.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      ''
      
        '            (dp.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CO' +
        'DE) and'
      '            (dp.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      
        '            (dp.DELIVERY_PROJECT_CODE = dc.DELIVERY_PROJECT_CODE' +
        ') and'
      ''
      '            (dp.PRODUCT_CODE = dp2.PRODUCT_CODE) and'
      ''
      '            ( ( (p.IS_COMMON = 0) and'
      '                (dp2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '              ) or'
      '              ( (p.IS_COMMON = 1) and'
      '                (dp2.COMMON_PRODUCT_CODE = prp.PRODUCT_CODE)'
      '              )'
      '            ) and'
      ''
      '            (dp.VENDOR_COMPANY_CODE = pr2.PARTNER_CODE) and'
      ''
      '            ( ( (c.COMPANY_CLASS_CODE <> %cc_COMMON) and'
      '                (pr2.PARTNER_CODE = prp.PARTNER_CODE)'
      '              ) or'
      '              ( (c.COMPANY_CLASS_CODE = %cc_COMMON) and'
      '                (pr2.COMMON_PARTNER_CODE = prp.PARTNER_CODE)'
      '              )'
      '            ) and'
      
        '            (pr2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE' +
        ') and'
      ''
      '            (dcd.ASPECT_TYPE_CODE = %at_REALIZATION) and'
      ''
      '            (dcd.DELIVERY_DEAL_TYPE_CODE ='
      '              ( select'
      '                  bdt.BORDER_DEAL_TYPE_CODE'
      '                from'
      '                  BORDER_DEAL_TYPES bdt'
      '                where'
      
        '                  (bdt.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_C' +
        'ODE) and'
      
        '                  (bdt.OBTAINMENT_TYPE_CODE = :OBTAINMENT_TYPE_C' +
        'ODE) and'
      
        '                  (bdt.PROD_ORDER_BASE_TYPE_CODE = :PROD_ORDER_B' +
        'ASE_TYPE_CODE)'
      '              )'
      '            ) and'
      ''
      '            (dp.FINISH_EMPLOYEE_CODE is not null) and'
      '            (dp.ANNUL_EMPLOYEE_CODE is null) and'
      '            (dp.DELIVERY_DATE between :BEGIN_DATE and :END_DATE)'
      '        )'
      '      )'
      '    )'
      '  ) as REAL_QUANTITY,'
      ''
      '  Decode('
      '    :CALC_REALS,'
      '    1,'
      '    Decode('
      '      :OBTAINMENT_TYPE_CODE,'
      '      %ot_LEASE,'
      '      Decode('
      '        :BORDER_REL_TYPE_CODE,'
      '        %brt_CLIENT,  -- prodajba'
      '        ( select'
      
        '            /*+ ORDERED INDEX(dp2) INDEX(pr2) INDEX(s) INDEX(ss)' +
        ' NO_USE_HASH(dp2 pr2 s ss) NO_USE_MERGE(dp2 pr2 s ss) USE_NL(dp2' +
        ' pr2 s ss)*/'
      '            Decode('
      '              Min(s.LEASE_DATE_UNIT_CODE),'
      '              Max(s.LEASE_DATE_UNIT_CODE),'
      '              Min('
      '                ( select'
      '                    du.THE_DATE_UNIT_NAME'
      '                  from'
      '                    THE_DATE_UNITS du'
      '                  where'
      
        '                    (du.THE_DATE_UNIT_CODE = s.LEASE_DATE_UNIT_C' +
        'ODE)'
      '                )'
      '              )'
      '            )'
      '          from'
      '            DEFINITE_PRODUCTS dp2,'
      '            SALES s,'
      '            SALE_SHIPMENTS ss,'
      '            PAR_RELS pr2'
      '          where'
      
        '            (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_C' +
        'ODE) and'
      '            (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE) and'
      ''
      '            (s.CLIENT_COMPANY_CODE = pr2.PARTNER_CODE) and'
      ''
      '            ( ( (c.COMPANY_CLASS_CODE <> %cc_COMMON) and'
      '                (pr2.PARTNER_CODE = prp.PARTNER_CODE)'
      '              ) or'
      '              ( (c.COMPANY_CLASS_CODE = %cc_COMMON) and'
      '                (pr2.COMMON_PARTNER_CODE = prp.PARTNER_CODE)'
      '              )'
      '            ) and'
      
        '            (pr2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE' +
        ') and'
      ''
      '            (s.PRODUCT_CODE = dp2.PRODUCT_CODE) and'
      ''
      '            ( ( (p.IS_COMMON = 0) and'
      '                (dp2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '              ) or'
      '              ( (p.IS_COMMON = 1) and'
      '                (dp2.COMMON_PRODUCT_CODE = prp.PRODUCT_CODE)'
      '              )'
      '            ) and'
      ''
      
        '            (Coalesce(ss.INVOICE_DATE, ss.SHIPMENT_DATE, ss.SHIP' +
        'MENT_PLAN_DATE) between :BEGIN_DATE and :END_DATE) and'
      ''
      '            (s.ASPECT_TYPE_CODE = %at_REALIZATION) and'
      ''
      '            (s.SALE_DEAL_TYPE_CODE ='
      '              ( select'
      '                  bdt.BORDER_DEAL_TYPE_CODE'
      '                from'
      '                  BORDER_DEAL_TYPES bdt'
      '                where'
      
        '                  (bdt.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_C' +
        'ODE) and'
      
        '                  (bdt.OBTAINMENT_TYPE_CODE = :OBTAINMENT_TYPE_C' +
        'ODE) and'
      
        '                  (bdt.PROD_ORDER_BASE_TYPE_CODE = :PROD_ORDER_B' +
        'ASE_TYPE_CODE)'
      '              )'
      '            ) and'
      ''
      '            ( (ss.QUANTITY is not null) or'
      '              (s.FINISH_EMPLOYEE_CODE is null)'
      '            ) and'
      ''
      '            (s.ANNUL_EMPLOYEE_CODE is null)'
      '        ),'
      '        %brt_VENDOR, -- dostavka'
      '        Decode('
      '          :PRODUCT_CLASS_CODE,'
      '          %pc_BUDGET,'
      '          null,'
      '          ( select'
      
        '              /*+ ORDERED INDEX(dp2) INDEX(pr2) INDEX(dcd) INDEX' +
        '(dp) INDEX(dc) NO_USE_HASH(dp2 pr2 dcd dp dc) NO_USE_MERGE(dp2 p' +
        'r2 dcd dp dc) USE_NL(dp2 pr2 dcd dp dc)*/'
      '              Decode('
      '                Min(dp.LEASE_DATE_UNIT_CODE),'
      '                Max(dp.LEASE_DATE_UNIT_CODE),'
      '                Min('
      '                  ( select'
      '                      du.THE_DATE_UNIT_NAME'
      '                    from'
      '                      THE_DATE_UNITS du'
      '                    where'
      
        '                      (du.THE_DATE_UNIT_CODE = dp.LEASE_DATE_UNI' +
        'T_CODE)'
      '                  )'
      '                )'
      '              )'
      '            from'
      '              DEFINITE_PRODUCTS dp2,'
      '              DEFICIT_COVER_DECISIONS dcd,'
      '              DELIVERY_PROJECTS dp,'
      '              PAR_RELS pr2,'
      '              DELIVERY_CONTRACTS dc'
      '            where'
      
        '              (dcd.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH' +
        '_CODE) and'
      '              (dcd.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      ''
      
        '              (dp.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_' +
        'CODE) and'
      '              (dp.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      
        '              (dp.DELIVERY_PROJECT_CODE = dc.DELIVERY_PROJECT_CO' +
        'DE) and'
      ''
      '              (dp.PRODUCT_CODE = dp2.PRODUCT_CODE) and'
      ''
      '              ( ( (p.IS_COMMON = 0) and'
      '                  (dp2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '                ) or'
      '                ( (p.IS_COMMON = 1) and'
      '                  (dp2.COMMON_PRODUCT_CODE = prp.PRODUCT_CODE)'
      '                )'
      '              ) and'
      ''
      '              (dp.VENDOR_COMPANY_CODE = pr2.PARTNER_CODE) and'
      ''
      '              ( ( (c.COMPANY_CLASS_CODE <> %cc_COMMON) and'
      '                  (pr2.PARTNER_CODE = prp.PARTNER_CODE)'
      '                ) or'
      '                ( (c.COMPANY_CLASS_CODE = %cc_COMMON) and'
      '                  (pr2.COMMON_PARTNER_CODE = prp.PARTNER_CODE)'
      '                )'
      '              ) and'
      
        '              (pr2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CO' +
        'DE) and'
      ''
      '              (dcd.ASPECT_TYPE_CODE = %at_REALIZATION) and'
      ''
      '              (dcd.DELIVERY_DEAL_TYPE_CODE ='
      '                ( select'
      '                    bdt.BORDER_DEAL_TYPE_CODE'
      '                  from'
      '                    BORDER_DEAL_TYPES bdt'
      '                  where'
      
        '                    (bdt.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE' +
        '_CODE) and'
      
        '                    (bdt.OBTAINMENT_TYPE_CODE = :OBTAINMENT_TYPE' +
        '_CODE) and'
      
        '                    (bdt.PROD_ORDER_BASE_TYPE_CODE = :PROD_ORDER' +
        '_BASE_TYPE_CODE)'
      '                )'
      '              ) and'
      ''
      '              (dp.FINISH_EMPLOYEE_CODE is not null) and'
      '              (dp.ANNUL_EMPLOYEE_CODE is null) and'
      
        '              (dp.DELIVERY_DATE between :BEGIN_DATE and :END_DAT' +
        'E)'
      '          )'
      '        )'
      '      )'
      '    )'
      '  ) as REAL_LEASE_DATE_UNIT_NAME,'
      ''
      '  Decode('
      '    :CALC_REALS,'
      '    1,'
      '    Decode('
      '      :BORDER_REL_TYPE_CODE,'
      '      %brt_CLIENT,  -- prodajba'
      '      ( select'
      
        '          /*+ ORDERED INDEX(dp2) INDEX(pr2) INDEX(s) INDEX(ss) N' +
        'O_USE_HASH(dp2 pr2 s ss) NO_USE_MERGE(dp2 pr2 s ss) USE_NL(dp2 p' +
        'r2 s ss)*/'
      '          Decode('
      '            :OBTAINMENT_TYPE_CODE,'
      '            %ot_LEASE,'
      '            Sum('
      '              Coalesce(ss.QUANTITY, ss.PLAN_QUANTITY) *'
      '              ss.LEASE_PLAN_DATE_UNIT_QTY *'
      '              Coalesce('
      '                ( ss.INVOICE_SINGLE_PRICE *'
      '                  ( select'
      '                      cr.FIXING'
      '                    from'
      '                      CURRENCY_RATES cr'
      '                    where'
      
        '                      (cr.CURRENCY_CODE = ss.INVOICE_CURRENCY_CO' +
        'DE) and'
      
        '                      (cr.RATE_DATE = Least(Coalesce(ss.INVOICE_' +
        'DATE, ss.SHIPMENT_DATE, ss.SHIPMENT_PLAN_DATE), ContextDate))'
      '                  )'
      '                ),'
      '                ( s.SINGLE_PRICE *'
      '                  ( select'
      '                      cr.FIXING'
      '                    from'
      '                      CURRENCY_RATES cr'
      '                    where'
      '                      (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      
        '                      (cr.RATE_DATE = Least(Coalesce(ss.INVOICE_' +
        'DATE, ss.SHIPMENT_DATE, ss.SHIPMENT_PLAN_DATE), ContextDate))'
      '                  )'
      '                )'
      '              )'
      '            ),'
      '            Sum('
      '              Coalesce(ss.QUANTITY, ss.PLAN_QUANTITY) *'
      '              Coalesce('
      '                ( ss.INVOICE_SINGLE_PRICE *'
      '                  ( select'
      '                      cr.FIXING'
      '                    from'
      '                      CURRENCY_RATES cr'
      '                    where'
      
        '                      (cr.CURRENCY_CODE = ss.INVOICE_CURRENCY_CO' +
        'DE) and'
      
        '                      (cr.RATE_DATE = Least(Coalesce(ss.INVOICE_' +
        'DATE, ss.SHIPMENT_DATE, ss.SHIPMENT_PLAN_DATE), ContextDate))'
      '                  )'
      '                ),'
      '                ( s.SINGLE_PRICE *'
      '                  ( select'
      '                      cr.FIXING'
      '                    from'
      '                      CURRENCY_RATES cr'
      '                    where'
      '                      (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      
        '                      (cr.RATE_DATE = Least(Coalesce(ss.INVOICE_' +
        'DATE, ss.SHIPMENT_DATE, ss.SHIPMENT_PLAN_DATE), ContextDate))'
      '                  )'
      '                )'
      '              )'
      '            )'
      '          )'
      '        from'
      '          DEFINITE_PRODUCTS dp2,'
      '          SALES s,'
      '          SALE_SHIPMENTS ss,'
      '          PAR_RELS pr2'
      '        where'
      
        '          (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_COD' +
        'E) and'
      '          (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE) and'
      ''
      '          (s.CLIENT_COMPANY_CODE = pr2.PARTNER_CODE) and'
      ''
      '          ( ( (c.COMPANY_CLASS_CODE <> %cc_COMMON) and'
      '              (pr2.PARTNER_CODE = prp.PARTNER_CODE)'
      '            ) or'
      '            ( (c.COMPANY_CLASS_CODE = %cc_COMMON) and'
      '              (pr2.COMMON_PARTNER_CODE = prp.PARTNER_CODE)'
      '            )'
      '          ) and'
      
        '          (pr2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) ' +
        'and'
      ''
      '          (s.PRODUCT_CODE = dp2.PRODUCT_CODE) and'
      ''
      '          ( ( (p.IS_COMMON = 0) and'
      '              (dp2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '            ) or'
      '            ( (p.IS_COMMON = 1) and'
      '              (dp2.COMMON_PRODUCT_CODE = prp.PRODUCT_CODE)'
      '            )'
      '          ) and'
      ''
      
        '          (Coalesce(ss.INVOICE_DATE, ss.SHIPMENT_DATE, ss.SHIPME' +
        'NT_PLAN_DATE) between :BEGIN_DATE and :END_DATE) and'
      ''
      '          (s.ASPECT_TYPE_CODE = %at_REALIZATION) and'
      ''
      '          (s.SALE_DEAL_TYPE_CODE ='
      '            ( select'
      '                bdt.BORDER_DEAL_TYPE_CODE'
      '              from'
      '                BORDER_DEAL_TYPES bdt'
      '              where'
      
        '                (bdt.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_COD' +
        'E) and'
      
        '                (bdt.OBTAINMENT_TYPE_CODE = :OBTAINMENT_TYPE_COD' +
        'E) and'
      
        '                (bdt.PROD_ORDER_BASE_TYPE_CODE = :PROD_ORDER_BAS' +
        'E_TYPE_CODE)'
      '            )'
      '          ) and'
      ''
      '          ( (ss.QUANTITY is not null) or'
      '            (s.FINISH_EMPLOYEE_CODE is null)'
      '          ) and'
      ''
      '          (s.ANNUL_EMPLOYEE_CODE is null)'
      '      ),'
      '      %brt_VENDOR, -- dostavka'
      '      Decode('
      '        :PRODUCT_CLASS_CODE,'
      '        %pc_BUDGET,'
      '        Decode('
      '          :OBTAINMENT_TYPE_CODE,'
      '          %ot_ACQUIRE,'
      '          ( select'
      
        '              /*+ ORDERED INDEX(dp2) INDEX(pr2) INDEX(boi) INDEX' +
        '(boio) NO_USE_HASH(dp2 pr2 boi boio) NO_USE_MERGE(dp2 pr2 boi bo' +
        'io) USE_NL(dp2 pr2 boi boio)*/'
      '              Sum('
      '                boio.PLAN_TOTAL_PRICE *'
      '                ( select'
      '                    cr.FIXING'
      '                  from'
      '                    CURRENCY_RATES cr'
      '                  where'
      '                    (cr.CURRENCY_CODE = boio.CURRENCY_CODE) and'
      
        '                    (cr.RATE_DATE = Least(boio.PLAN_DATE, ContextD' +
        'ate))'
      '                )'
      '              )'
      '            from'
      '              PAR_RELS pr2,'
      '              BOI_ORDERS boio,'
      '              BUDGET_ORDER_ITEMS boi,'
      '              DEFINITE_PRODUCTS dp2'
      '            where'
      
        '              (boi.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_ORDER_' +
        'BRANCH_CODE) and'
      
        '              (boi.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_CODE) a' +
        'nd'
      
        '              (boi.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDER_IT' +
        'EM_CODE) and'
      ''
      '              (boi.ANNUL_EMPLOYEE_CODE is null) and'
      '              (boio.ANNUL_EMPLOYEE_CODE is null) and'
      '              (boio.IS_CANCELED = 0) and'
      ''
      '              (boi.BUDGET_PRODUCT_CODE = dp2.PRODUCT_CODE) and'
      ''
      '              ( ( (p.IS_COMMON = 0) and'
      '                  (dp2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '                ) or'
      '                ( (p.IS_COMMON = 1) and'
      '                  (dp2.COMMON_PRODUCT_CODE = prp.PRODUCT_CODE)'
      '                )'
      '              ) and'
      ''
      '              (boio.COMPANY_CODE = pr2.PARTNER_CODE) and'
      ''
      '              ( ( (c.COMPANY_CLASS_CODE <> %cc_COMMON) and'
      '                  (pr2.PARTNER_CODE = prp.PARTNER_CODE)'
      '                ) or'
      '                ( (c.COMPANY_CLASS_CODE = %cc_COMMON) and'
      '                  (pr2.COMMON_PARTNER_CODE = prp.PARTNER_CODE)'
      '                )'
      '              ) and'
      
        '              (pr2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CO' +
        'DE) and'
      ''
      '              (boio.PLAN_DATE between :BEGIN_DATE and :END_DATE)'
      '          )'
      '        ),'
      '        ( select'
      
        '            /*+ ORDERED INDEX(dp2) INDEX(pr2) INDEX(dcd) INDEX(d' +
        'p) INDEX(dc) NO_USE_HASH(dp2 pr2 dcd dp dc) NO_USE_MERGE(dp2 pr2' +
        ' dcd dp dc) USE_NL(dp2 pr2 dcd dp dc)*/'
      '            Sum('
      '              dp.TOTAL_PRICE *'
      '              ( select'
      '                  cr.FIXING'
      '                from'
      '                  CURRENCY_RATES cr'
      '                where'
      '                  (cr.CURRENCY_CODE = dp.CURRENCY_CODE) and'
      
        '                  (cr.RATE_DATE = Least(dp.DELIVERY_DATE, ContextD' +
        'ate))'
      '              )'
      '            )'
      '          from'
      '            DEFINITE_PRODUCTS dp2,'
      '            DEFICIT_COVER_DECISIONS dcd,'
      '            DELIVERY_PROJECTS dp,'
      '            PAR_RELS pr2,'
      '            DELIVERY_CONTRACTS dc'
      '          where'
      
        '            (dcd.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_C' +
        'ODE) and'
      '            (dcd.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      ''
      
        '            (dp.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CO' +
        'DE) and'
      '            (dp.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      
        '            (dp.DELIVERY_PROJECT_CODE = dc.DELIVERY_PROJECT_CODE' +
        ') and'
      ''
      '            (dp.PRODUCT_CODE = dp2.PRODUCT_CODE) and'
      ''
      '            ( ( (p.IS_COMMON = 0) and'
      '                (dp2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '              ) or'
      '              ( (p.IS_COMMON = 1) and'
      '                (dp2.COMMON_PRODUCT_CODE = prp.PRODUCT_CODE)'
      '              )'
      '            ) and'
      ''
      '            (dp.VENDOR_COMPANY_CODE = pr2.PARTNER_CODE) and'
      ''
      '            ( ( (c.COMPANY_CLASS_CODE <> %cc_COMMON) and'
      '                (pr2.PARTNER_CODE = prp.PARTNER_CODE)'
      '              ) or'
      '              ( (c.COMPANY_CLASS_CODE = %cc_COMMON) and'
      '                (pr2.COMMON_PARTNER_CODE = prp.PARTNER_CODE)'
      '              )'
      '            ) and'
      
        '            (pr2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE' +
        ') and'
      ''
      '            (dcd.ASPECT_TYPE_CODE = %at_REALIZATION) and'
      ''
      '            (dcd.DELIVERY_DEAL_TYPE_CODE ='
      '              ( select'
      '                  bdt.BORDER_DEAL_TYPE_CODE'
      '                from'
      '                  BORDER_DEAL_TYPES bdt'
      '                where'
      
        '                  (bdt.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_C' +
        'ODE) and'
      
        '                  (bdt.OBTAINMENT_TYPE_CODE = :OBTAINMENT_TYPE_C' +
        'ODE) and'
      
        '                  (bdt.PROD_ORDER_BASE_TYPE_CODE = :PROD_ORDER_B' +
        'ASE_TYPE_CODE)'
      '              )'
      '            ) and'
      ''
      '            (dp.FINISH_EMPLOYEE_CODE is not null) and'
      '            (dp.ANNUL_EMPLOYEE_CODE is null) and'
      '            (dp.DELIVERY_DATE between :BEGIN_DATE and :END_DATE)'
      '        )'
      '      )'
      '    )'
      '  ) as REAL_TOTAL_PRICE,'
      ''
      '  Decode('
      '    :CALC_REALS,'
      '    1,'
      '    Decode('
      '      :BORDER_REL_TYPE_CODE,'
      '      %brt_CLIENT,  -- prodajba'
      '      Decode('
      '        :OBTAINMENT_TYPE_CODE,'
      '        %ot_ACQUIRE,'
      '        ( select'
      
        '            /*+ ORDERED INDEX(dp2) INDEX(pr2) INDEX(s) INDEX(ss)' +
        ' NO_USE_HASH(dp2 pr2 s ss) NO_USE_MERGE(dp2 pr2 s ss) USE_NL(dp2' +
        ' pr2 s ss)*/'
      '            Sum('
      '              Nvl2('
      '                ss.QUANTITY,'
      '                ( select'
      '                    Sum('
      '                      sd.TOTAL_PRICE *'
      '                      ( select'
      '                          cr.FIXING'
      '                        from'
      '                          CURRENCY_RATES cr'
      '                        where'
      
        '                          (cr.CURRENCY_CODE = sd.CURRENCY_CODE) ' +
        'and'
      '                          (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '                      )'
      '                    )'
      '                  from'
      '                    STORE_DEALS sd'
      '                  where'
      
        '                    (sd.BND_PROCESS_OBJECT_BRANCH_CODE = ss.SHIP' +
        'MENT_OBJECT_BRANCH_CODE) and'
      
        '                    (sd.BND_PROCESS_OBJECT_CODE = ss.SHIPMENT_OB' +
        'JECT_CODE) and'
      ''
      '                    (sd.BND_PROCESS_CODE = 160) and'
      '                    (sd.STORNO_EMPLOYEE_CODE is null)'
      '                ),'
      '                ( ss.PLAN_QUANTITY *'
      
        '                  %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[s.PRODUCT_C' +
        'ODE ~ Coalesce(ss.INVOICE_DATE, ss.SHIPMENT_DATE, ss.SHIPMENT_PL' +
        'AN_DATE)]'
      '                )'
      '              )'
      '            )'
      '          from'
      '            DEFINITE_PRODUCTS dp2,'
      '            SALES s,'
      '            SALE_SHIPMENTS ss,'
      '            PAR_RELS pr2'
      '          where'
      
        '            (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_C' +
        'ODE) and'
      '            (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE) and'
      ''
      '            (s.CLIENT_COMPANY_CODE = pr2.PARTNER_CODE) and'
      ''
      '            ( ( (c.COMPANY_CLASS_CODE <> %cc_COMMON) and'
      '                (pr2.PARTNER_CODE = prp.PARTNER_CODE)'
      '              ) or'
      '              ( (c.COMPANY_CLASS_CODE = %cc_COMMON) and'
      '                (pr2.COMMON_PARTNER_CODE = prp.PARTNER_CODE)'
      '              )'
      '            ) and'
      
        '            (pr2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE' +
        ') and'
      ''
      '            (s.PRODUCT_CODE = dp2.PRODUCT_CODE) and'
      ''
      '            ( ( (p.IS_COMMON = 0) and'
      '                (dp2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '              ) or'
      '              ( (p.IS_COMMON = 1) and'
      '                (dp2.COMMON_PRODUCT_CODE = prp.PRODUCT_CODE)'
      '              )'
      '            ) and'
      ''
      
        '            (Coalesce(ss.INVOICE_DATE, ss.SHIPMENT_DATE, ss.SHIP' +
        'MENT_PLAN_DATE) between :BEGIN_DATE and :END_DATE) and'
      ''
      '            (s.ASPECT_TYPE_CODE = %at_REALIZATION) and'
      ''
      '            (s.SALE_DEAL_TYPE_CODE ='
      '              ( select'
      '                  bdt.BORDER_DEAL_TYPE_CODE'
      '                from'
      '                  BORDER_DEAL_TYPES bdt'
      '                where'
      
        '                  (bdt.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_C' +
        'ODE) and'
      
        '                  (bdt.OBTAINMENT_TYPE_CODE = :OBTAINMENT_TYPE_C' +
        'ODE) and'
      
        '                  (bdt.PROD_ORDER_BASE_TYPE_CODE = :PROD_ORDER_B' +
        'ASE_TYPE_CODE)'
      '              )'
      '            ) and'
      ''
      '            ( (ss.QUANTITY is not null) or'
      '              (s.FINISH_EMPLOYEE_CODE is null)'
      '            ) and'
      ''
      '            (s.ANNUL_EMPLOYEE_CODE is null)'
      '        )'
      '      )'
      '    )'
      '  ) as REAL_TOTAL_INVESTMENT_VALUE,'
      ''
      '  ( select'
      '      Min('
      '        ( select'
      '            pl.PRECISION_LEVEL_NO'
      '          from'
      '            PRECISION_LEVELS pl'
      '          where'
      '            (pl.PRECISION_LEVEL_CODE = pp5.PRECISION_LEVEL_CODE)'
      '        )'
      '      )'
      '    from'
      '      PRODUCT_PERIODS pp5'
      '    where'
      '      (pp5.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (pp5.BEGIN_DATE <= :END_DATE) and'
      '      (pp5.END_DATE >= :BEGIN_DATE)'
      '  ) as PROD_MIN_PREC_LEVEL_NO,'
      ''
      '  ( select'
      '      pl2.COLOR'
      '    from'
      '      PRECISION_LEVELS pl2'
      '    where'
      '      (pl2.PRECISION_LEVEL_NO ='
      '        ( select'
      '            Min('
      '              ( select'
      '                  pl.PRECISION_LEVEL_NO'
      '                from'
      '                  PRECISION_LEVELS pl'
      '                where'
      
        '                  (pl.PRECISION_LEVEL_CODE = pp5.PRECISION_LEVEL' +
        '_CODE)'
      '              )'
      '            )'
      '          from'
      '            PRODUCT_PERIODS pp5'
      '          where'
      '            (pp5.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '            (pp5.BEGIN_DATE <= :END_DATE) and'
      '            (pp5.END_DATE >= :BEGIN_DATE)'
      '        )'
      '      )'
      '  ) as PROD_MIN_PREC_LEVEL_COLOR,'
      '  '
      '  ( select'
      '      pl2.BACKGROUND_COLOR'
      '    from'
      '      PRECISION_LEVELS pl2'
      '    where'
      '      (pl2.PRECISION_LEVEL_NO ='
      '        ( select'
      '            Min('
      '              ( select'
      '                  pl.PRECISION_LEVEL_NO'
      '                from'
      '                  PRECISION_LEVELS pl'
      '                where'
      
        '                  (pl.PRECISION_LEVEL_CODE = pp5.PRECISION_LEVEL' +
        '_CODE)'
      '              )            '
      '            )'
      '          from'
      '            PRODUCT_PERIODS pp5'
      '          where'
      '            (pp5.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '            (pp5.BEGIN_DATE <= :END_DATE) and'
      '            (pp5.END_DATE >= :BEGIN_DATE)'
      '        )'
      '      )'
      '  ) as PROD_MIN_PREC_LEVEL_BACK_COLOR,'
      '  '
      '  ( select'
      '      Max('
      '        ( select'
      '            pl.PRECISION_LEVEL_NO'
      '          from'
      '            PRECISION_LEVELS pl'
      '          where'
      '            (pl.PRECISION_LEVEL_CODE = pp5.PRECISION_LEVEL_CODE)'
      '        )            '
      '      )'
      '    from'
      '      PRODUCT_PERIODS pp5'
      '    where'
      '      (pp5.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (pp5.BEGIN_DATE <= :END_DATE) and'
      '      (pp5.END_DATE >= :BEGIN_DATE)    '
      '  ) as PROD_MAX_PREC_LEVEL_NO,'
      '  '
      '  ( select'
      '      pl2.COLOR'
      '    from'
      '      PRECISION_LEVELS pl2'
      '    where'
      '      (pl2.PRECISION_LEVEL_NO ='
      '        ( select'
      '            Max('
      '              ( select'
      '                  pl.PRECISION_LEVEL_NO'
      '                from'
      '                  PRECISION_LEVELS pl'
      '                where'
      
        '                  (pl.PRECISION_LEVEL_CODE = pp5.PRECISION_LEVEL' +
        '_CODE)'
      '              )'
      '            )'
      '          from'
      '            PRODUCT_PERIODS pp5'
      '          where'
      '            (pp5.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '            (pp5.BEGIN_DATE <= :END_DATE) and'
      '            (pp5.END_DATE >= :BEGIN_DATE)'
      '        )'
      '      )'
      '  ) as PROD_MAX_PREC_LEVEL_COLOR,'
      '  '
      '  ( select'
      '      pl2.BACKGROUND_COLOR'
      '    from'
      '      PRECISION_LEVELS pl2'
      '    where'
      '      (pl2.PRECISION_LEVEL_NO ='
      '        ( select'
      '            Max('
      '              ( select'
      '                  pl.PRECISION_LEVEL_NO'
      '                from'
      '                  PRECISION_LEVELS pl'
      '                where'
      
        '                  (pl.PRECISION_LEVEL_CODE = pp5.PRECISION_LEVEL' +
        '_CODE)'
      '              )'
      '            )'
      '          from'
      '            PRODUCT_PERIODS pp5'
      '          where'
      '            (pp5.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '            (pp5.BEGIN_DATE <= :END_DATE) and'
      '            (pp5.END_DATE >= :BEGIN_DATE)'
      '        )'
      '      )'
      '  ) as PROD_MAX_PREC_LEVEL_BACK_COLOR,'
      '  '
      '  Decode('
      '    :CALC_ENGINEERING,'
      '    1,'
      '    ( select'
      '        eo.ENGINEERING_ORDER_CODE'
      '      from'
      '        ENGINEERING_ORDERS eo'
      '      where'
      '        (eo.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (eo.CLOSE_EMPLOYEE_CODE is null) and'
      '        (eo.ANNUL_EMPLOYEE_CODE is null) and'
      '        (eo.PARENT_ENGINEERING_ORDER_CODE is null)'
      '    )'
      '  ) as ENGINEERING_ORDER_CODE,'
      ''
      '  Decode('
      '    :CALC_ENGINEERING,'
      '    1,'
      '    ( select'
      '        eo.ENGINEERING_PLAN_END_DATE'
      '      from'
      '        ENGINEERING_ORDERS eo'
      '      where'
      '        (eo.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (eo.CLOSE_EMPLOYEE_CODE is null) and'
      '        (eo.ANNUL_EMPLOYEE_CODE is null) and'
      '        (eo.PARENT_ENGINEERING_ORDER_CODE is null)'
      '    )'
      '  ) as EO_ENGINEERING_PLAN_END_DATE,'
      ''
      '  Decode('
      '    :CALC_ENGINEERING,'
      '    1,'
      '    ( select'
      '        eo.ENGINEERING_PLAN_WORKDAYS'
      '      from'
      '        ENGINEERING_ORDERS eo'
      '      where'
      '        (eo.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (eo.CLOSE_EMPLOYEE_CODE is null) and'
      '        (eo.ANNUL_EMPLOYEE_CODE is null) and'
      '        (eo.PARENT_ENGINEERING_ORDER_CODE is null)'
      '    )'
      '  ) as EO_ENGINEERING_PLAN_WORKDAYS,'
      ''
      '  Decode('
      '    :CALC_ENGINEERING,'
      '    1,'
      '    ( select'
      '        %COUNT_WORKDAYS['
      '          eo.ACTIVATE_DATE~'
      '          Coalesce(eo.CLOSE_DATE, ContextDate)'
      '        ]'
      '      from'
      '        ENGINEERING_ORDERS eo'
      '      where'
      '        (eo.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (eo.CLOSE_EMPLOYEE_CODE is null) and'
      '        (eo.ANNUL_EMPLOYEE_CODE is null) and'
      '        (eo.PARENT_ENGINEERING_ORDER_CODE is null)'
      '    )'
      '  ) as EO_ENGINEERING_REAL_WORKDAYS,'
      ''
      '  Decode('
      '    :CALC_ENGINEERING,'
      '    1,'
      '    ( select'
      '        ( select'
      
        '            (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LE' +
        'TTER)'
      '          from'
      '            DEPTS d,'
      '            DEPT_TYPES dt'
      '          where'
      '            (d.DEPT_CODE = eo.ENGINEERING_DEPT_CODE) and'
      '            (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '        )'
      '      from'
      '        ENGINEERING_ORDERS eo'
      '      where'
      '        (eo.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (eo.CLOSE_EMPLOYEE_CODE is null) and'
      '        (eo.ANNUL_EMPLOYEE_CODE is null) and'
      '        (eo.PARENT_ENGINEERING_ORDER_CODE is null)'
      '    )'
      '  ) as EO_ENGINEERING_DEPT_IDENTIFIER,'
      ''
      '  Decode('
      '    :CALC_ENGINEERING,'
      '    1,'
      '    %SPEC_STATE[prp.PRODUCT_CODE~null~null~null~null]'
      '  ) as PRODUCT_SPEC_STATE_CODE,'
      ''
      '  Decode('
      '    :CALC_ENGINEERING,'
      '    1,'
      '    ( select'
      '        NullIf(Count(*), 0)'
      '      from'
      '        DEFINITE_PRODUCTS dp2,'
      '        CONCRETE_PRODUCTS cp2'
      '      where'
      '        (dp2.COMMON_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (dp2.PRODUCT_CODE = cp2.PRODUCT_CODE)'
      '    )'
      '  ) as JOINED_PRODUCT_COUNT,'
      ''
      '  Decode('
      '    :CALC_ENGINEERING,'
      '    1,'
      '    ( select'
      '        NullIf(Count(*), 0)'
      '      from'
      '        DEFINITE_PRODUCTS dp2,'
      '        CONCRETE_PRODUCTS cp2'
      '      where'
      '        (dp2.COMMON_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (dp2.PRODUCT_CODE = cp2.PRODUCT_CODE) and'
      '        (%SPEC_STATE[cp2.PRODUCT_CODE~null~null~null~null] = 1)'
      '    )'
      '  ) as JOINED_SPEC_STATE_1_COUNT,'
      ''
      '  Decode('
      '    :CALC_ENGINEERING,'
      '    1,'
      '    ( select'
      '        NullIf(Count(*), 0)'
      '      from'
      '        DEFINITE_PRODUCTS dp2,'
      '        CONCRETE_PRODUCTS cp2'
      '      where'
      '        (dp2.COMMON_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (dp2.PRODUCT_CODE = cp2.PRODUCT_CODE) and'
      '        (%SPEC_STATE[cp2.PRODUCT_CODE~null~null~null~null] = 2)'
      '    )'
      '  ) as JOINED_SPEC_STATE_2_COUNT,'
      ''
      '  Decode('
      '    :CALC_ENGINEERING,'
      '    1,'
      '    ( select'
      '        NullIf(Count(*), 0)'
      '      from'
      '        DEFINITE_PRODUCTS dp2,'
      '        CONCRETE_PRODUCTS cp2'
      '      where'
      '        (dp2.COMMON_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (dp2.PRODUCT_CODE = cp2.PRODUCT_CODE) and'
      '        (%SPEC_STATE[cp2.PRODUCT_CODE~null~null~null~null] = 3)'
      '    )'
      '  ) as JOINED_SPEC_STATE_3_COUNT,'
      ''
      '  Decode('
      '    :CALC_ENGINEERING,'
      '    1,'
      '    ( select'
      '        NullIf(Count(*), 0)'
      '      from'
      '        DEFINITE_PRODUCTS dp2,'
      '        CONCRETE_PRODUCTS cp2'
      '      where'
      '        (dp2.COMMON_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (dp2.PRODUCT_CODE = cp2.PRODUCT_CODE) and'
      '        (%SPEC_STATE[cp2.PRODUCT_CODE~null~null~null~null] = 4)'
      '    )'
      '  ) as JOINED_SPEC_STATE_4_COUNT,'
      ''
      '  Decode('
      '    :CALC_ENGINEERING,'
      '    1,'
      '    ( select'
      '        NullIf(Count(*), 0)'
      '      from'
      '        DEFINITE_PRODUCTS dp2,'
      '        CONCRETE_PRODUCTS cp2'
      '      where'
      '        (dp2.COMMON_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (dp2.PRODUCT_CODE = cp2.PRODUCT_CODE) and'
      '        (%SPEC_STATE[cp2.PRODUCT_CODE~null~null~null~null] = 5)'
      '    )'
      '  ) as JOINED_SPEC_STATE_5_COUNT,'
      ''
      '  Decode('
      '    :CALC_ENGINEERING,'
      '    1,'
      '    ( select'
      '        NullIf(Count(*), 0)'
      '      from'
      '        DEFINITE_PRODUCTS dp2,'
      '        CONCRETE_PRODUCTS cp2'
      '      where'
      '        (dp2.COMMON_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (dp2.PRODUCT_CODE = cp2.PRODUCT_CODE) and'
      '        (%SPEC_STATE[cp2.PRODUCT_CODE~null~null~null~null] = 6)'
      '    )'
      '  ) as JOINED_SPEC_STATE_6_COUNT,'
      ''
      '  Decode('
      '    :DETAIL_CODE,'
      '    null,'
      '    To_Number(null),'
      '    Sum('
      '      ('
      '        ( select'
      '            Sum(sl.TOTAL_DETAIL_TECH_QUANTITY)'
      '          from'
      '            SPEC_LINES sl'
      '          where'
      '            (sl.SPEC_PRODUCT_CODE = prp.PRODUCT_CODE) and'
      '            (sl.DETAIL_CODE = :DETAIL_CODE) and'
      ''
      '            ( (:STAGE_DEPT_CODE is null) or'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '                    SPEC_MODEL_VARIANT_LINES smvl,'
      '                    SPEC_MODEL_VARIANT_STAGES smvs'
      '                  where'
      
        '                    (pp.PRODUCT_CODE = ppsmv.EST_VAR_PRODUCT_COD' +
        'E) and'
      
        '                    (pp.PRODUCT_PERIOD_CODE = ppsmv.EST_VAR_PROD' +
        'UCT_PERIOD_CODE) and'
      ''
      
        '                    (ppsmv.PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE' +
        ') and'
      
        '                    (ppsmv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MOD' +
        'EL_VARIANT_NO) and'
      ''
      
        '                    (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CO' +
        'DE) and'
      
        '                    (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) an' +
        'd'
      ''
      
        '                    (smvl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_' +
        'CODE) and'
      
        '                    (smvl.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODE' +
        'L_VARIANT_NO) and'
      
        '                    (smvl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) ' +
        'and'
      ''
      '                    (smvs.SPEC_LINE_STAGE_NO > 0) and'
      '                    (smvs.OUTGOING_WORKDAYS > 0) and'
      ''
      '                    (smvs.DEPT_CODE = :STAGE_DEPT_CODE)'
      '                )'
      '              )'
      '            ) and'
      ''
      '            ( (:OP_DEPT_CODE is null) or'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '                    SPEC_MODEL_VARIANT_LINES smvl,'
      '                    SMVS_OPERATIONS smvso'
      '                  where'
      
        '                    (pp.PRODUCT_CODE = ppsmv.EST_VAR_PRODUCT_COD' +
        'E) and'
      
        '                    (pp.PRODUCT_PERIOD_CODE = ppsmv.EST_VAR_PROD' +
        'UCT_PERIOD_CODE) and'
      ''
      
        '                    (ppsmv.PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE' +
        ') and'
      
        '                    (ppsmv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MOD' +
        'EL_VARIANT_NO) and'
      ''
      
        '                    (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CO' +
        'DE) and'
      
        '                    (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) an' +
        'd'
      ''
      
        '                    (smvl.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT' +
        '_CODE) and'
      
        '                    (smvl.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MOD' +
        'EL_VARIANT_NO) and'
      
        '                    (smvl.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE)' +
        ' and'
      ''
      '                    (smvso.OPERATION_TYPE_CODE = 2) and'
      '                    (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '                    (smvso.DEPT_CODE = :OP_DEPT_CODE)'
      '                )'
      '              )'
      '            )'
      '        ) /'
      '        ( select'
      '            p9.TECH_MEASURE_COEF'
      '          from'
      '            PRODUCTS p9'
      '          where'
      '            (p9.PRODUCT_CODE = :DETAIL_CODE)'
      '        )'
      '      ) *'
      '      prppe.EST_QUANTITY *'
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
      '    )'
      '  ) as DETAIL_QUANTITY,'
      ''
      '  Decode('
      '    :DETAIL_CODE,'
      '    null,'
      '    null,'
      '    ( select'
      '        m9.MEASURE_ABBREV'
      '      from'
      '        PRODUCTS p9,'
      '        MEASURES m9'
      '      where'
      '        (p9.MEASURE_CODE = m9.MEASURE_CODE) and'
      '        (p9.PRODUCT_CODE = :DETAIL_CODE)'
      '    )'
      '  ) as DETAIL_MEASURE_ABBR,'
      ''
      '  Decode('
      '    :DETAIL_CODE,'
      '    null,'
      '    null,'
      '    ( select'
      '        m9.MEASURE_ABBREV'
      '      from'
      '        PRODUCTS p9,'
      '        MEASURES m9'
      '      where'
      '        (p9.ACCOUNT_MEASURE_CODE = m9.MEASURE_CODE) and'
      '        (p9.PRODUCT_CODE = :DETAIL_CODE)'
      '    )'
      '  ) as DETAIL_ACCOUNT_MEASURE_ABBR,'
      ''
      '  Decode('
      '    :DETAIL_CODE,'
      '    null,'
      '    To_Number(null),'
      '    ( select'
      '        p9.ACCOUNT_MEASURE_COEF'
      '      from'
      '        PRODUCTS p9'
      '      where'
      '        (p9.PRODUCT_CODE = :DETAIL_CODE)'
      '    )'
      '  ) as DETAIL_ACCOUNT_MEASURE_COEF,'
      ''
      '  Decode('
      '    :MATERIAL_CODE,'
      '    null,'
      '    To_Number(null),'
      '    Sum('
      '      ('
      '        ( select'
      
        '            Sum(sl.TOTAL_DETAIL_TECH_QUANTITY * sl.PRODUCT_TECH_' +
        'QUANTITY)'
      '          from'
      '            SPEC_LINES sl'
      '          where'
      '            (sl.SPEC_PRODUCT_CODE = prp.PRODUCT_CODE) and'
      '            (sl.PRODUCT_CODE = :MATERIAL_CODE) and'
      ''
      '            ( (:STAGE_DEPT_CODE is null) or'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '                    SPEC_MODEL_VARIANT_LINES smvl,'
      '                    SPEC_MODEL_VARIANT_STAGES smvs'
      '                  where'
      
        '                    (pp.PRODUCT_CODE = ppsmv.EST_VAR_PRODUCT_COD' +
        'E) and'
      
        '                    (pp.PRODUCT_PERIOD_CODE = ppsmv.EST_VAR_PROD' +
        'UCT_PERIOD_CODE) and'
      ''
      
        '                    (ppsmv.PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE' +
        ') and'
      
        '                    (ppsmv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MOD' +
        'EL_VARIANT_NO) and'
      ''
      
        '                    (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CO' +
        'DE) and'
      
        '                    (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) an' +
        'd'
      ''
      
        '                    (smvl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_' +
        'CODE) and'
      
        '                    (smvl.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODE' +
        'L_VARIANT_NO) and'
      
        '                    (smvl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) ' +
        'and'
      ''
      '                    (smvs.SPEC_LINE_STAGE_NO > 0) and'
      '                    (smvs.OUTGOING_WORKDAYS > 0) and'
      ''
      '                    (smvs.DEPT_CODE = :STAGE_DEPT_CODE)'
      '                )'
      '              )'
      '            ) and'
      ''
      '            ( (:OP_DEPT_CODE is null) or'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '                    SPEC_MODEL_VARIANT_LINES smvl,'
      '                    SMVS_OPERATIONS smvso'
      '                  where'
      
        '                    (pp.PRODUCT_CODE = ppsmv.EST_VAR_PRODUCT_COD' +
        'E) and'
      
        '                    (pp.PRODUCT_PERIOD_CODE = ppsmv.EST_VAR_PROD' +
        'UCT_PERIOD_CODE) and'
      ''
      
        '                    (ppsmv.PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE' +
        ') and'
      
        '                    (ppsmv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MOD' +
        'EL_VARIANT_NO) and'
      ''
      
        '                    (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CO' +
        'DE) and'
      
        '                    (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) an' +
        'd'
      ''
      
        '                    (smvl.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT' +
        '_CODE) and'
      
        '                    (smvl.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MOD' +
        'EL_VARIANT_NO) and'
      
        '                    (smvl.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE)' +
        ' and'
      ''
      '                    (smvso.OPERATION_TYPE_CODE = 2) and'
      '                    (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '                    (smvso.DEPT_CODE = :OP_DEPT_CODE)'
      '                )'
      '              )'
      '            )'
      '        ) /'
      '        ( select'
      '            p9.TECH_MEASURE_COEF'
      '          from'
      '            PRODUCTS p9'
      '          where'
      '            (p9.PRODUCT_CODE = :MATERIAL_CODE)'
      '        )'
      '      ) *'
      '      prppe.EST_QUANTITY *'
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
      '    )'
      '  ) as MATERIAL_QUANTITY,'
      ''
      '  Decode('
      '    :MATERIAL_CODE,'
      '    null,'
      '    null,'
      '    ( select'
      '        m9.MEASURE_ABBREV'
      '      from'
      '        PRODUCTS p9,'
      '        MEASURES m9'
      '      where'
      '        (p9.MEASURE_CODE = m9.MEASURE_CODE) and'
      '        (p9.PRODUCT_CODE = :MATERIAL_CODE)'
      '    )'
      '  ) as MATERIAL_MEASURE_ABBR,'
      ''
      '  Decode('
      '    :MATERIAL_CODE,'
      '    null,'
      '    null,'
      '    ( select'
      '        m9.MEASURE_ABBREV'
      '      from'
      '        PRODUCTS p9,'
      '        MEASURES m9'
      '      where'
      '        (p9.ACCOUNT_MEASURE_CODE = m9.MEASURE_CODE) and'
      '        (p9.PRODUCT_CODE = :MATERIAL_CODE)'
      '    )'
      '  ) as MATERIAL_ACCOUNT_MEASURE_ABBR,'
      ''
      '  Decode('
      '    :MATERIAL_CODE,'
      '    null,'
      '    To_Number(null),'
      '    ( select'
      '        p9.ACCOUNT_MEASURE_COEF'
      '      from'
      '        PRODUCTS p9'
      '      where'
      '        (p9.PRODUCT_CODE = :MATERIAL_CODE)'
      '    )'
      '  ) as MATERIAL_ACCOUNT_MEASURE_COEF,'
      ''
      '  Decode('
      '    :OP_DEPT_CODE,'
      '    null,'
      '    To_Number(null),'
      '    ( Coalesce('
      '        Sum('
      '          ( prppe.EST_QUANTITY *'
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
      '            ) /'
      '            Coalesce('
      '              ( select'
      '                  dp.PARALLEL_PROCESS_COUNT'
      '                from'
      '                  DEPT_PERIODS dp'
      '                where'
      '                  (dp.DEPT_CODE = :OP_DEPT_CODE) and'
      
        '                  (prpp.BEGIN_DATE between dp.BEGIN_DATE and dp.' +
        'END_DATE)'
      '              ),'
      '              1'
      '            )'
      '          ) *'
      '          p.TECH_MEASURE_COEF *'
      '          ( select'
      
        '              Sum(sl.TOTAL_DETAIL_TECH_QUANTITY / smvso.HOUR_TEC' +
        'H_QUANTITY)'
      ''
      '            from'
      '              PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '              SPEC_MODEL_VARIANT_LINES smvl,'
      '              SPEC_LINES sl,'
      '              SMVS_OPERATIONS smvso'
      ''
      '            where'
      '              (pp.PRODUCT_CODE = ppsmv.EST_VAR_PRODUCT_CODE) and'
      
        '              (pp.PRODUCT_PERIOD_CODE = ppsmv.EST_VAR_PRODUCT_PE' +
        'RIOD_CODE) and'
      ''
      '              (ppsmv.PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) and'
      
        '              (ppsmv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VAR' +
        'IANT_NO) and'
      ''
      
        '              (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) an' +
        'd'
      '              (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '              (smvl.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_CODE)' +
        ' and'
      
        '              (smvl.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL_VAR' +
        'IANT_NO) and'
      '              (smvl.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) and'
      ''
      '              (smvso.OPERATION_TYPE_CODE = 2) and'
      '              (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '              (smvso.DEPT_CODE = :OP_DEPT_CODE) and'
      ''
      '              ( (:DETAIL_CODE is null) or'
      '                (sl.DETAIL_CODE = :DETAIL_CODE)'
      '              ) and'
      ''
      '              ( (:MATERIAL_CODE is null) or'
      '                (sl.PRODUCT_CODE = :MATERIAL_CODE)'
      '              )'
      '          )'
      '        ),'
      '        0'
      '      ) +'
      '      Coalesce('
      '        Sum('
      '          ('
      '            Ceil('
      '              ( prppe.EST_QUANTITY *'
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
      '              ) /'
      '              pp.BALANCE_QUANTITY'
      '            ) /'
      '            Coalesce('
      '              ( select'
      '                  dp.PARALLEL_PROCESS_COUNT'
      '                from'
      '                  DEPT_PERIODS dp'
      '                where'
      '                  (dp.DEPT_CODE = :OP_DEPT_CODE) and'
      
        '                  (prpp.BEGIN_DATE between dp.BEGIN_DATE and dp.' +
        'END_DATE)'
      '              ),'
      '              1'
      '            )'
      '          ) *'
      '          ( select'
      
        '              Sum(smvso.SETUP_COUNT / smvso.SETUP_HOUR_TECH_QUAN' +
        'TITY)'
      ''
      '            from'
      '              PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '              SPEC_MODEL_VARIANT_LINES smvl,'
      '              SPEC_LINES sl,'
      '              SMVS_OPERATIONS smvso'
      ''
      '            where'
      '              (pp.PRODUCT_CODE = ppsmv.EST_VAR_PRODUCT_CODE) and'
      
        '              (pp.PRODUCT_PERIOD_CODE = ppsmv.EST_VAR_PRODUCT_PE' +
        'RIOD_CODE) and'
      ''
      '              (ppsmv.PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) and'
      
        '              (ppsmv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VAR' +
        'IANT_NO) and'
      ''
      
        '              (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) an' +
        'd'
      '              (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '              (smvl.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_CODE)' +
        ' and'
      
        '              (smvl.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL_VAR' +
        'IANT_NO) and'
      '              (smvl.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) and'
      ''
      '              (smvso.OPERATION_TYPE_CODE = 2) and'
      '              (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '              (smvso.SETUP_PROFESSION_CODE is not null) and'
      ''
      '              (smvso.DEPT_CODE = :OP_DEPT_CODE) and'
      ''
      '              ( (:DETAIL_CODE is null) or'
      '                (sl.DETAIL_CODE = :DETAIL_CODE)'
      '              ) and'
      ''
      '              ( (:MATERIAL_CODE is null) or'
      '                (sl.PRODUCT_CODE = :MATERIAL_CODE)'
      '              )'
      '          )'
      '        ),'
      '        0'
      '      )'
      '    )'
      '  ) as CAPACITY_BUSY_HOURS'
      ''
      'from'
      '  PAR_REL_PRODUCTS prp,'
      '  PAR_REL_PRODUCT_PERIODS prpp,'
      '  PAR_REL_PRODUCT_PERIOD_OBTS prppo,'
      '  PAR_REL_PRODUCT_PERIOD_ESTS prppe,'
      '  PRODUCT_PERIODS pp,'
      '  COMPANIES c,'
      '  COMPANY_CLASSES cc,'
      '  PAR_RELS pr,'
      '  PRODUCTS p,'
      '  DEFINITE_PRODUCTS dp,'
      '  PRODUCT_BORDER_RELS pbr,'
      '  PRIORITIES ppar,'
      '  PRIORITIES pprod,'
      '  MEASURES wm,'
      '  MEASURES am,'
      '  THE_DATE_UNITS du'
      ''
      'where'
      '  (prp.PARTNER_CODE = prpp.PARTNER_CODE) and'
      '  (prp.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and'
      '  (prp.PRODUCT_CODE = prpp.PRODUCT_CODE) and'
      ''
      '  (prpp.PRODUCT_CODE = pp.PRODUCT_CODE) and'
      '  (prpp.BEGIN_DATE between pp.BEGIN_DATE and pp.END_DATE) and'
      ''
      '  (prpp.PARTNER_CODE = prppo.PARTNER_CODE) and'
      '  (prpp.BORDER_REL_TYPE_CODE = prppo.BORDER_REL_TYPE_CODE) and'
      '  (prpp.PRODUCT_CODE = prppo.PRODUCT_CODE) and'
      
        '  (prpp.PAR_REL_PRODUCT_PERIOD_CODE = prppo.PAR_REL_PRODUCT_PERI' +
        'OD_CODE) and'
      ''
      '  (prppo.PARTNER_CODE = prppe.PARTNER_CODE) and'
      '  (prppo.BORDER_REL_TYPE_CODE = prppe.BORDER_REL_TYPE_CODE) and'
      '  (prppo.PRODUCT_CODE = prppe.PRODUCT_CODE) and'
      
        '  (prppo.PAR_REL_PRODUCT_PERIOD_CODE = prppe.PAR_REL_PRODUCT_PER' +
        'IOD_CODE) and'
      '  (prppo.OBTAINMENT_TYPE_CODE = prppe.OBTAINMENT_TYPE_CODE) and'
      ''
      '  (prp.PARTNER_CODE = c.COMPANY_CODE) and'
      ''
      '  (c.COMPANY_CLASS_CODE = cc.COMPANY_CLASS_CODE) and'
      ''
      '  (prp.PARTNER_CODE = pr.PARTNER_CODE) and'
      '  (prp.BORDER_REL_TYPE_CODE = pr.BORDER_REL_TYPE_CODE) and'
      ''
      '  (pr.PRIORITY_CODE = ppar.PRIORITY_CODE) and'
      ''
      '  (prp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (p.PRODUCT_CODE = dp.PRODUCT_CODE) and'
      ''
      '  (prp.PRODUCT_CODE = pbr.PRODUCT_CODE) and'
      '  (prp.BORDER_REL_TYPE_CODE = pbr.BORDER_REL_TYPE_CODE) and'
      ''
      '  (pbr.PRIORITY_CODE = pprod.PRIORITY_CODE) and'
      ''
      '  (p.MEASURE_CODE = wm.MEASURE_CODE(+)) and'
      '  (p.ACCOUNT_MEASURE_CODE = am.MEASURE_CODE(+)) and'
      ''
      '  (prppo.LEASE_DATE_UNIT_CODE = du.THE_DATE_UNIT_CODE(+)) and'
      ''
      '  (prpp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '  (prppo.OBTAINMENT_TYPE_CODE = :OBTAINMENT_TYPE_CODE) and'
      
        '  (prppe.PROD_ORDER_BASE_TYPE_CODE = :PROD_ORDER_BASE_TYPE_CODE)' +
        ' and'
      ''
      '  (prpp.BEGIN_DATE <= :END_DATE) and'
      '  (prpp.END_DATE >= :BEGIN_DATE) and'
      ''
      '  ( (:IS_APPROVED_BY_PARTNER is null) or'
      '    (prpp.IS_APPROVED_BY_PARTNER = :IS_APPROVED_BY_PARTNER)'
      '  ) and'
      ''
      '  ( (:IS_REGULAR is null) or'
      '    (prp.IS_REGULAR = :IS_REGULAR)'
      '  ) and'
      ''
      '  ( ( (Coalesce(To_Number(:COMMON_PRODUCT_CODE), 0) = 0) and'
      '      (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '      %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_CO' +
        'MMON_LEVEL ~ p]'
      '    ) or'
      '    ( (p.IS_COMMON = 0) and'
      '      (dp.COMMON_PRODUCT_CODE = :COMMON_PRODUCT_CODE)'
      '    )'
      '  ) and'
      ''
      '  (:PARTNER_COMMON_LEVEL * null is null) and'
      
        '  %PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prp.PARTN' +
        'ER_CODE ~ prp.BORDER_REL_TYPE_CODE] and'
      ''
      '  ( (:COMPANY_CLASS_CODE is null) or'
      '    (c.COMPANY_CLASS_CODE = :COMPANY_CLASS_CODE)'
      '  ) and'
      ''
      '  (ppar.PRIORITY_NO between'
      '    ( select'
      '        pr8.PRIORITY_NO'
      '      from'
      '        PRIORITIES pr8'
      '      where'
      '        (pr8.PRIORITY_CODE = :BEGIN_PRIORITY_CODE)'
      '    )'
      '    and'
      '    ( select'
      '        pr8.PRIORITY_NO'
      '      from'
      '        PRIORITIES pr8'
      '      where'
      '        (pr8.PRIORITY_CODE = :END_PRIORITY_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( Coalesce('
      '      ( select'
      '          csc.COMPANY_STATUS_CODE'
      '        from'
      '          COMPANY_STATUSES_CHANGES csc'
      '        where'
      '          (csc.COMPANY_CODE = c.COMPANY_CODE) and'
      '    '
      '          (csc.STATUS_DATE ='
      '            ( select'
      '                Max(csc2.STATUS_DATE)'
      '              from'
      '                COMPANY_STATUSES_CHANGES csc2'
      '              where'
      '                (csc2.COMPANY_CODE = c.COMPANY_CODE)'
      '            )'
      '          )'
      '      ),'
      '      To_Number(:MIN_COMPANY_STATUS_CODE)'
      '    )'
      '    between'
      '    :MIN_COMPANY_STATUS_CODE'
      '    and'
      '    :MAX_COMPANY_STATUS_CODE'
      '  ) and'
      ''
      
        '  ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prp], To_Number(:MIN_P' +
        'RP_STATUS_CODE))'
      '    between'
      '      :MIN_PRP_STATUS_CODE'
      '    and'
      '      :MAX_PRP_STATUS_CODE'
      '  ) and'
      ''
      '  ( (:MIN_PRP_EXIST_MONTHS is null) or'
      '    ( ( select'
      
        '          Round(Months_between(ContextDate, Min(prpsc.STATUS_DATE)' +
        '))'
      '        from'
      '          PAR_REL_PRODUCT_STATUS_CHANGES prpsc'
      '        where'
      '          (prpsc.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '          (prpsc.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE' +
        ') and'
      '          (prpsc.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '      )'
      '      >='
      '      :MIN_PRP_EXIST_MONTHS'
      '    )'
      '  ) and'
      ''
      '  ( (:MAX_PRP_EXIST_MONTHS is null) or'
      '    ( ( select'
      
        '          Round(Months_between(ContextDate, Min(prpsc.STATUS_DATE)' +
        '))'
      '        from'
      '          PAR_REL_PRODUCT_STATUS_CHANGES prpsc'
      '        where'
      '          (prpsc.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '          (prpsc.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE' +
        ') and'
      '          (prpsc.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '      )'
      '      <='
      '      :MAX_PRP_EXIST_MONTHS'
      '    )'
      '  ) and'
      '  '
      '  ( (:MIN_PRP_STATUS_REACH_MONTHS is null) or'
      '    ( Round('
      '        Months_between('
      '          ( select'
      '              Max(prpsc2.STATUS_DATE)'
      '            from'
      '              PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '            where'
      '              (prpsc2.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '              (prpsc2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE' +
        '_CODE) and'
      '              (prpsc2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '          ),'
      '          Coalesce('
      '            ( select'
      '                Max(prpsc2.STATUS_DATE)'
      '              from'
      '                PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '              where'
      '                (prpsc2.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '                (prpsc2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TY' +
        'PE_CODE) and'
      '                (prpsc2.PRODUCT_CODE = prp.PRODUCT_CODE) and'
      '                (prpsc2.PAR_REL_PRODUCT_STATUS_CODE = 5)'
      '            ),'
      '            ( select'
      '                Min(prpsc2.STATUS_DATE)'
      '              from'
      '                PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '              where'
      '                (prpsc2.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '                (prpsc2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TY' +
        'PE_CODE) and'
      '                (prpsc2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '            )'
      '          )'
      '        )'
      '      )'
      '      >='
      '      :MIN_PRP_STATUS_REACH_MONTHS'
      '    )'
      '  ) and'
      ''
      '  ( (:MAX_PRP_STATUS_REACH_MONTHS is null) or'
      '    ( Round('
      '        Months_between('
      '          ( select'
      '              Max(prpsc2.STATUS_DATE)'
      '            from'
      '              PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '            where'
      '              (prpsc2.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '              (prpsc2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE' +
        '_CODE) and'
      '              (prpsc2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '          ),'
      '          Coalesce('
      '            ( select'
      '                Max(prpsc2.STATUS_DATE)'
      '              from'
      '                PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '              where'
      '                (prpsc2.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '                (prpsc2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TY' +
        'PE_CODE) and'
      '                (prpsc2.PRODUCT_CODE = prp.PRODUCT_CODE) and'
      '                (prpsc2.PAR_REL_PRODUCT_STATUS_CODE = 5)'
      '            ),'
      '            ( select'
      '                Min(prpsc2.STATUS_DATE)'
      '              from'
      '                PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '              where'
      '                (prpsc2.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '                (prpsc2.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TY' +
        'PE_CODE) and'
      '                (prpsc2.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '            )'
      '          )'
      '        )'
      '      )'
      '      <='
      '      :MAX_PRP_STATUS_REACH_MONTHS'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_COMPANIES = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_COMPANIES tfc'
      '        where'
      '          (tfc.COMPANY_CODE = prp.PARTNER_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = prp.PRODUCT_CODE)'
      '      )'
      '  ) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '  ( (:DETAIL_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          SPEC_LINES sl'
      '        where'
      '          (sl.SPEC_PRODUCT_CODE = prp.PRODUCT_CODE) and'
      '          (sl.DETAIL_CODE = :DETAIL_CODE) and'
      ''
      '          ( (:STAGE_DEPT_CODE is null) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '                  SPEC_MODEL_VARIANT_LINES smvl,'
      '                  SPEC_MODEL_VARIANT_STAGES smvs'
      '                where'
      
        '                  (pp.PRODUCT_CODE = ppsmv.EST_VAR_PRODUCT_CODE)' +
        ' and'
      
        '                  (pp.PRODUCT_PERIOD_CODE = ppsmv.EST_VAR_PRODUC' +
        'T_PERIOD_CODE) and'
      ''
      
        '                  (ppsmv.PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) ' +
        'and'
      
        '                  (ppsmv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL' +
        '_VARIANT_NO) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE' +
        ') and'
      '                  (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CO' +
        'DE) and'
      
        '                  (smvl.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_' +
        'VARIANT_NO) and'
      
        '                  (smvl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) an' +
        'd'
      ''
      '                  (smvs.SPEC_LINE_STAGE_NO > 0) and'
      '                  (smvs.OUTGOING_WORKDAYS > 0) and'
      ''
      '                  (smvs.DEPT_CODE = :STAGE_DEPT_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:OP_DEPT_CODE is null) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '                  SPEC_MODEL_VARIANT_LINES smvl,'
      '                  SMVS_OPERATIONS smvso'
      '                where'
      
        '                  (pp.PRODUCT_CODE = ppsmv.EST_VAR_PRODUCT_CODE)' +
        ' and'
      
        '                  (pp.PRODUCT_PERIOD_CODE = ppsmv.EST_VAR_PRODUC' +
        'T_PERIOD_CODE) and'
      ''
      
        '                  (ppsmv.PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) ' +
        'and'
      
        '                  (ppsmv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL' +
        '_VARIANT_NO) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE' +
        ') and'
      '                  (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_C' +
        'ODE) and'
      
        '                  (smvl.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL' +
        '_VARIANT_NO) and'
      
        '                  (smvl.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) a' +
        'nd'
      ''
      '                  (smvso.OPERATION_TYPE_CODE = 2) and'
      '                  (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '                  (smvso.DEPT_CODE = :OP_DEPT_CODE)'
      '              )'
      '            )'
      '          )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:MATERIAL_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          SPEC_LINES sl'
      '        where'
      '          (sl.SPEC_PRODUCT_CODE = prp.PRODUCT_CODE) and'
      '          (sl.PRODUCT_CODE = :MATERIAL_CODE) and'
      ''
      '          ( (:STAGE_DEPT_CODE is null) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '                  SPEC_MODEL_VARIANT_LINES smvl,'
      '                  SPEC_MODEL_VARIANT_STAGES smvs'
      '                where'
      
        '                  (pp.PRODUCT_CODE = ppsmv.EST_VAR_PRODUCT_CODE)' +
        ' and'
      
        '                  (pp.PRODUCT_PERIOD_CODE = ppsmv.EST_VAR_PRODUC' +
        'T_PERIOD_CODE) and'
      ''
      
        '                  (ppsmv.PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) ' +
        'and'
      
        '                  (ppsmv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL' +
        '_VARIANT_NO) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE' +
        ') and'
      '                  (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CO' +
        'DE) and'
      
        '                  (smvl.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_' +
        'VARIANT_NO) and'
      
        '                  (smvl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) an' +
        'd'
      ''
      '                  (smvs.SPEC_LINE_STAGE_NO > 0) and'
      '                  (smvs.OUTGOING_WORKDAYS > 0) and'
      ''
      '                  (smvs.DEPT_CODE = :STAGE_DEPT_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:OP_DEPT_CODE is null) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '                  SPEC_MODEL_VARIANT_LINES smvl,'
      '                  SMVS_OPERATIONS smvso'
      '                where'
      
        '                  (pp.PRODUCT_CODE = ppsmv.EST_VAR_PRODUCT_CODE)' +
        ' and'
      
        '                  (pp.PRODUCT_PERIOD_CODE = ppsmv.EST_VAR_PRODUC' +
        'T_PERIOD_CODE) and'
      ''
      
        '                  (ppsmv.PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) ' +
        'and'
      
        '                  (ppsmv.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL' +
        '_VARIANT_NO) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE' +
        ') and'
      '                  (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and'
      ''
      
        '                  (smvl.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_C' +
        'ODE) and'
      
        '                  (smvl.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL' +
        '_VARIANT_NO) and'
      
        '                  (smvl.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) a' +
        'nd'
      ''
      '                  (smvso.OPERATION_TYPE_CODE = 2) and'
      '                  (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '                  (smvso.DEPT_CODE = :OP_DEPT_CODE)'
      '              )'
      '            )'
      '          )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:STAGE_DEPT_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '          SPEC_MODEL_VARIANT_STAGES smvs'
      '        where'
      '          (pp.PRODUCT_CODE = ppsmv.EST_VAR_PRODUCT_CODE) and'
      
        '          (pp.PRODUCT_PERIOD_CODE = ppsmv.EST_VAR_PRODUCT_PERIOD' +
        '_CODE) and'
      ''
      '          (ppsmv.PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and'
      
        '          (ppsmv.SPEC_MODEL_VARIANT_NO = smvs.SPEC_MODEL_VARIANT' +
        '_NO) and'
      ''
      '          (smvs.SPEC_LINE_STAGE_NO > 0) and'
      '          (smvs.OUTGOING_WORKDAYS > 0) and'
      ''
      '          (smvs.DEPT_CODE = :STAGE_DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:OP_DEPT_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          PROD_PER_SPEC_MODEL_VARIANTS ppsmv,'
      '          SMVS_OPERATIONS smvso'
      '        where'
      '          (pp.PRODUCT_CODE = ppsmv.EST_VAR_PRODUCT_CODE) and'
      
        '          (pp.PRODUCT_PERIOD_CODE = ppsmv.EST_VAR_PRODUCT_PERIOD' +
        '_CODE) and'
      ''
      '          (ppsmv.PRODUCT_CODE = smvso.SPEC_PRODUCT_CODE) and'
      
        '          (ppsmv.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL_VARIAN' +
        'T_NO) and'
      ''
      '          (smvso.OPERATION_TYPE_CODE = 2) and'
      '          (smvso.SMVS_OPERATION_VARIANT_NO = 0) and'
      ''
      '          (smvso.DEPT_CODE = :OP_DEPT_CODE)'
      '      )'
      '    )'
      '  )'
      ''
      'group by'
      '  prp.PARTNER_CODE,'
      '  prp.BORDER_REL_TYPE_CODE,'
      '  prp.PRODUCT_CODE,'
      '  prp.DOC_BRANCH_CODE, '
      '  prp.DOC_CODE, '
      '  prp.IS_REGULAR,'
      '  prppo.OBTAINMENT_TYPE_CODE,'
      '  prppe.PROD_ORDER_BASE_TYPE_CODE,'
      '  c.COMPANY_CODE,'
      '  c.COMPANY_NO,'
      '  c.SHORT_NAME,'
      '  c.DOC_BRANCH_CODE,'
      '  c.DOC_CODE,'
      '  pr.PRIORITY_CODE,'
      '  ppar.PRIORITY_NO,'
      '  ppar.PRIORITY_COLOR,'
      '  ppar.PRIORITY_BACKGROUND_COLOR,'
      '  c.COMPANY_CLASS_CODE,'
      '  cc.COMPANY_CLASS_ABBREV,'
      '  p.PRODUCT_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  pbr.PRIORITY_CODE,'
      '  pprod.PRIORITY_NO,'
      '  pprod.PRIORITY_COLOR,'
      '  pprod.PRIORITY_BACKGROUND_COLOR,'
      '  p.MEASURE_CODE,'
      '  wm.MEASURE_ABBREV,'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  am.MEASURE_ABBREV,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  p.TECH_MEASURE_COEF,'
      '  p.IS_COMMON,'
      '  dp.COMMON_PRODUCT_CODE,'
      '  p.PARTNER_PRODUCT_NAMES'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[prp]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'PAR_REL_PRODUCT_STATUS_CODE[prp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[c]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_BASE_ROLE_CODE[c.COMPANY_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'ot_LEASE'
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
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'ot_ACQUIRE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp.BEGIN_DATE~ prpp.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'cc_COMMON'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'at_REALIZATION'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'brt_VENDOR'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'pc_BUDGET'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[s.PRODUCT_CODE ~ Coalesce(ss.I' +
          'NVOICE_DATE, ss.SHIPMENT_DATE, ss.SHIPMENT_PLAN_DATE)]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'          eo.ACTIVATE_DATE~'#13#10'          Coalesce' +
          '(eo.CLOSE_DATE, ContextDate)'#13#10'        ]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'SPEC_STATE[prp.PRODUCT_CODE~null~null~null~null]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'SPEC_STATE[cp2.PRODUCT_CODE~null~null~null~null]'
        ParamType = ptInput
        Value = '0'
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
          'PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prp.PARTNER_' +
          'CODE ~ prp.BORDER_REL_TYPE_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end>
    TableName = 'PAR_REL_PRODUCTS_FOR_EDIT'
    Left = 224
    Top = 64
    object qryParRelProductsPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductsBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductsOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object qryParRelProductsPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object qryParRelProductsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryParRelProductsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryParRelProductsHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryParRelProductsIS_REGULAR: TAbmesFloatField
      FieldName = 'IS_REGULAR'
    end
    object qryParRelProductsPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_STATUS_CODE'
    end
    object qryParRelProductsPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
    end
    object qryParRelProductsPAR_REL_PRODUCT_EXIST_MONTHS: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_EXIST_MONTHS'
    end
    object qryParRelProductsPRP_STATUS_REACH_MONTHS: TAbmesFloatField
      FieldName = 'PRP_STATUS_REACH_MONTHS'
    end
    object qryParRelProductsPARTNER_NO: TAbmesFloatField
      FieldName = 'PARTNER_NO'
    end
    object qryParRelProductsPARTNER_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_NAME'
    end
    object qryParRelProductsPARTNER_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PARTNER_DOC_BRANCH_CODE'
    end
    object qryParRelProductsPARTNER_DOC_CODE: TAbmesFloatField
      FieldName = 'PARTNER_DOC_CODE'
    end
    object qryParRelProductsPARTNER_HAS_DOC: TAbmesFloatField
      FieldName = 'PARTNER_HAS_DOC'
    end
    object qryParRelProductsPARTNER_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'PARTNER_PRIORITY_CODE'
    end
    object qryParRelProductsPARTNER_PRIORITY_NO: TAbmesFloatField
      FieldName = 'PARTNER_PRIORITY_NO'
    end
    object qryParRelProductsPAR_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PAR_PRIORITY_COLOR'
    end
    object qryParRelProductsPAR_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PAR_PRIORITY_BACKGROUND_COLOR'
    end
    object qryParRelProductsPARTNER_COMPANY_CLASS_CODE: TAbmesFloatField
      FieldName = 'PARTNER_COMPANY_CLASS_CODE'
    end
    object qryParRelProductsPARTNER_COMPANY_CLASS_ABBREV: TAbmesWideStringField
      FieldName = 'PARTNER_COMPANY_CLASS_ABBREV'
      Size = 100
    end
    object qryParRelProductsPARTNER_STATUS_CODE: TAbmesFloatField
      FieldName = 'PARTNER_STATUS_CODE'
    end
    object qryParRelProductsPARTNER_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_STATUS_NAME'
      Size = 100
    end
    object qryParRelProductsPARTNER_EXISTENCE_MONTHS: TAbmesFloatField
      FieldName = 'PARTNER_EXISTENCE_MONTHS'
    end
    object qryParRelProductsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryParRelProductsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryParRelProductsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryParRelProductsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryParRelProductsPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
    end
    object qryParRelProductsPRODUCT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_CODE'
    end
    object qryParRelProductsPRODUCT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_NO'
    end
    object qryParRelProductsPROD_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PROD_PRIORITY_COLOR'
    end
    object qryParRelProductsPROD_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PROD_PRIORITY_BACKGROUND_COLOR'
    end
    object qryParRelProductsPRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_MEASURE_CODE'
    end
    object qryParRelProductsPRODUCT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_MEASURE_ABBREV'
      Size = 5
    end
    object qryParRelProductsPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_CODE'
    end
    object qryParRelProductsPRODUCT_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryParRelProductsPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
    end
    object qryParRelProductsPRODUCT_COMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_COMMON_STATUS_CODE'
    end
    object qryParRelProductsPARTNER_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_PRODUCT_NAME'
      Size = 50
    end
    object qryParRelProductsPARTNER_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PARTNER_PRODUCT_NAMES'
      Size = 250
    end
    object qryParRelProductsEST_QUANTITY: TAbmesFloatField
      FieldName = 'EST_QUANTITY'
    end
    object qryParRelProductsEST_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'EST_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qryParRelProductsEST_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'EST_TOTAL_PRICE'
    end
    object qryParRelProductsEST_TOTAL_INVESTMENT_VALUE: TAbmesFloatField
      FieldName = 'EST_TOTAL_INVESTMENT_VALUE'
    end
    object qryParRelProductsREAL_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_QUANTITY'
    end
    object qryParRelProductsREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qryParRelProductsREAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE'
    end
    object qryParRelProductsREAL_TOTAL_INVESTMENT_VALUE: TAbmesFloatField
      FieldName = 'REAL_TOTAL_INVESTMENT_VALUE'
    end
    object qryParRelProductsPROD_MIN_PREC_LEVEL_NO: TAbmesFloatField
      FieldName = 'PROD_MIN_PREC_LEVEL_NO'
    end
    object qryParRelProductsPROD_MIN_PREC_LEVEL_COLOR: TAbmesFloatField
      FieldName = 'PROD_MIN_PREC_LEVEL_COLOR'
    end
    object qryParRelProductsPROD_MIN_PREC_LEVEL_BACK_COLOR: TAbmesFloatField
      FieldName = 'PROD_MIN_PREC_LEVEL_BACK_COLOR'
    end
    object qryParRelProductsPROD_MAX_PREC_LEVEL_NO: TAbmesFloatField
      FieldName = 'PROD_MAX_PREC_LEVEL_NO'
    end
    object qryParRelProductsPROD_MAX_PREC_LEVEL_COLOR: TAbmesFloatField
      FieldName = 'PROD_MAX_PREC_LEVEL_COLOR'
    end
    object qryParRelProductsPROD_MAX_PREC_LEVEL_BACK_COLOR: TAbmesFloatField
      FieldName = 'PROD_MAX_PREC_LEVEL_BACK_COLOR'
    end
    object qryParRelProductsENGINEERING_ORDER_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_CODE'
    end
    object qryParRelProductsEO_ENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'EO_ENGINEERING_PLAN_END_DATE'
    end
    object qryParRelProductsEO_ENGINEERING_PLAN_WORKDAYS: TAbmesFloatField
      FieldName = 'EO_ENGINEERING_PLAN_WORKDAYS'
    end
    object qryParRelProductsEO_ENGINEERING_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'EO_ENGINEERING_REAL_WORKDAYS'
    end
    object qryParRelProductsEO_ENGINEERING_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'EO_ENGINEERING_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryParRelProductsPRODUCT_SPEC_STATE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_SPEC_STATE_CODE'
    end
    object qryParRelProductsJOINED_PRODUCT_COUNT: TAbmesFloatField
      FieldName = 'JOINED_PRODUCT_COUNT'
    end
    object qryParRelProductsJOINED_SPEC_STATE_1_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_1_COUNT'
    end
    object qryParRelProductsJOINED_SPEC_STATE_2_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_2_COUNT'
    end
    object qryParRelProductsJOINED_SPEC_STATE_3_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_3_COUNT'
    end
    object qryParRelProductsJOINED_SPEC_STATE_4_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_4_COUNT'
    end
    object qryParRelProductsJOINED_SPEC_STATE_5_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_5_COUNT'
    end
    object qryParRelProductsJOINED_SPEC_STATE_6_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_6_COUNT'
    end
    object qryParRelProductsDETAIL_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_QUANTITY'
    end
    object qryParRelProductsDETAIL_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_MEASURE_ABBR'
      Size = 5
    end
    object qryParRelProductsDETAIL_ACCOUNT_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_ACCOUNT_MEASURE_ABBR'
      Size = 5
    end
    object qryParRelProductsDETAIL_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'DETAIL_ACCOUNT_MEASURE_COEF'
    end
    object qryParRelProductsMATERIAL_QUANTITY: TAbmesFloatField
      FieldName = 'MATERIAL_QUANTITY'
    end
    object qryParRelProductsMATERIAL_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'MATERIAL_MEASURE_ABBR'
      Size = 5
    end
    object qryParRelProductsMATERIAL_ACCOUNT_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'MATERIAL_ACCOUNT_MEASURE_ABBR'
      Size = 5
    end
    object qryParRelProductsMATERIAL_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'MATERIAL_ACCOUNT_MEASURE_COEF'
    end
    object qryParRelProductsCAPACITY_BUSY_HOURS: TAbmesFloatField
      FieldName = 'CAPACITY_BUSY_HOURS'
    end
    object qryParRelProductsDETAIL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'DETAIL_ACCOUNT_QUANTITY'
      Calculated = True
    end
    object qryParRelProductsMATERIAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'MATERIAL_ACCOUNT_QUANTITY'
      Calculated = True
    end
    object qryParRelProductsJOINED_SPEC_STATE_1_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'JOINED_SPEC_STATE_1_PERCENT'
      Calculated = True
    end
    object qryParRelProductsJOINED_SPEC_STATE_2_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'JOINED_SPEC_STATE_2_PERCENT'
      Calculated = True
    end
    object qryParRelProductsJOINED_SPEC_STATE_3_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'JOINED_SPEC_STATE_3_PERCENT'
      Calculated = True
    end
    object qryParRelProductsJOINED_SPEC_STATE_4_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'JOINED_SPEC_STATE_4_PERCENT'
      Calculated = True
    end
    object qryParRelProductsJOINED_SPEC_STATE_5_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'JOINED_SPEC_STATE_5_PERCENT'
      Calculated = True
    end
    object qryParRelProductsJOINED_SPEC_STATE_6_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'JOINED_SPEC_STATE_6_PERCENT'
      Calculated = True
    end
    object qryParRelProductsIS_PRODUCT_SPEC_STATE_1: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'IS_PRODUCT_SPEC_STATE_1'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object qryParRelProductsIS_PRODUCT_SPEC_STATE_2: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'IS_PRODUCT_SPEC_STATE_2'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object qryParRelProductsIS_PRODUCT_SPEC_STATE_3: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'IS_PRODUCT_SPEC_STATE_3'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object qryParRelProductsIS_PRODUCT_SPEC_STATE_4: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'IS_PRODUCT_SPEC_STATE_4'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object qryParRelProductsIS_PRODUCT_SPEC_STATE_5: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'IS_PRODUCT_SPEC_STATE_5'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object qryParRelProductsIS_PRODUCT_SPEC_STATE_6: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'IS_PRODUCT_SPEC_STATE_6'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object qryParRelProductsEST_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'EST_ACCOUNT_QUANTITY'
      Calculated = True
    end
    object qryParRelProductsEST_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'EST_ACCOUNT_SINGLE_PRICE'
      Calculated = True
    end
    object qryParRelProductsEST_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'EST_SINGLE_PRICE'
      Calculated = True
    end
    object qryParRelProductsEST_BUSINESS_RESULT_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'EST_BUSINESS_RESULT_VALUE'
      Calculated = True
    end
    object qryParRelProductsEST_BUSINESS_RESULT_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'EST_BUSINESS_RESULT_PERCENT'
      Calculated = True
    end
    object qryParRelProductsEST_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'EST_TOTAL_INVESTMENT_PERCENT'
      Calculated = True
    end
    object qryParRelProductsREAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_ACCOUNT_QUANTITY'
      Calculated = True
    end
    object qryParRelProductsREAL_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_ACCOUNT_SINGLE_PRICE'
      Calculated = True
    end
    object qryParRelProductsREAL_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_SINGLE_PRICE'
      Calculated = True
    end
    object qryParRelProductsREAL_BUSINESS_RESULT_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_BUSINESS_RESULT_VALUE'
      Calculated = True
    end
    object qryParRelProductsREAL_BUSINESS_RESULT_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_BUSINESS_RESULT_PERCENT'
      Calculated = True
    end
    object qryParRelProductsREAL_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_TOTAL_INVESTMENT_PERCENT'
      Calculated = True
    end
    object qryParRelProductsEO_ENGINEERING_WORKDAYS_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'EO_ENGINEERING_WORKDAYS_DIFF'
      Calculated = True
    end
    object qryParRelProductsEO_ENGINEERING_WORKDAYS_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'EO_ENGINEERING_WORKDAYS_DIFF_PERCENT'
      Calculated = True
    end
    object qryParRelProductsREAL_QUANTITY_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_QUANTITY_DIFF'
      Calculated = True
    end
    object qryParRelProductsREAL_ACCOUNT_QUANTITY_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_ACCOUNT_QUANTITY_DIFF'
      Calculated = True
    end
    object qryParRelProductsREAL_SINGLE_PRICE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_SINGLE_PRICE_DIFF'
      Calculated = True
    end
    object qryParRelProductsREAL_ACCOUNT_SINGLE_PRICE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_ACCOUNT_SINGLE_PRICE_DIFF'
      Calculated = True
    end
    object qryParRelProductsREAL_TOTAL_PRICE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_TOTAL_PRICE_DIFF'
      Calculated = True
    end
    object qryParRelProductsREAL_BUSINESS_RESULT_VALUE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_BUSINESS_RESULT_VALUE_DIFF'
      Calculated = True
    end
    object qryParRelProductsREAL_BUSINESS_RESULT_PERCENT_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_BUSINESS_RESULT_PERCENT_DIFF'
      Calculated = True
    end
    object qryParRelProductsREAL_TOTAL_INVESTMENT_VALUE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_TOTAL_INVESTMENT_VALUE_DIFF'
      Calculated = True
    end
    object qryParRelProductsREAL_TOTAL_INVESTMENT_PERCENT_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_TOTAL_INVESTMENT_PERCENT_DIFF'
      Calculated = True
    end
    object qryParRelProductsREAL_QUANTITY_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_QUANTITY_DIFF_PERCENT'
      Calculated = True
    end
    object qryParRelProductsREAL_ACCOUNT_QUANTITY_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_ACCOUNT_QUANTITY_DIFF_PERCENT'
      Calculated = True
    end
    object qryParRelProductsREAL_SINGLE_PRICE_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_SINGLE_PRICE_DIFF_PERCENT'
      Calculated = True
    end
    object qryParRelProductsREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT'
      Calculated = True
    end
    object qryParRelProductsREAL_TOTAL_PRICE_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_TOTAL_PRICE_DIFF_PERCENT'
      Calculated = True
    end
    object qryParRelProductsREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT'
      Calculated = True
    end
    object qryParRelProductsREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT'
      Calculated = True
    end
    object qryParRelProductsREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT'
      Calculated = True
    end
    object qryParRelProductsREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT'
      Calculated = True
    end
    object qryParRelProductsLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = 'LEASE_DATE_UNIT_NAME'
      Size = 50
      Calculated = True
    end
    object qryParRelProductsPARTNER_BASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'PARTNER_BASE_ROLE_CODE'
    end
  end
  object prvParRelProducts: TDataSetProvider
    DataSet = qryParRelProducts
    UpdateMode = upWhereKeyOnly
    Left = 224
    Top = 16
  end
  object qryBorderRelTypeObtainmentTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ot.OBTAINMENT_TYPE_CODE,'
      '  ot.OBTAINMENT_TYPE_NAME'
      'from'
      '  BORDER_REL_TYPE_OBTS brto,'
      '  OBTAINMENT_TYPES ot'
      'where'
      '  (brto.OBTAINMENT_TYPE_CODE = ot.OBTAINMENT_TYPE_CODE) and'
      '  (brto.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE)'
      'order by'
      '  ot.OBTAINMENT_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 600
    Top = 64
    object qryBorderRelTypeObtainmentTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBorderRelTypeObtainmentTypesOBTAINMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'OBTAINMENT_TYPE_NAME'
      Size = 100
    end
  end
  object prvBorderRelTypeObtainmentTypes: TDataSetProvider
    DataSet = qryBorderRelTypeObtainmentTypes
    UpdateMode = upWhereKeyOnly
    Left = 600
    Top = 16
  end
  object qryInvestmentLevels: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  il.INVESTMENT_LEVEL_CODE,'
      '  il.INVESTMENT_LEVEL_NAME'
      'from'
      '  INVESTMENT_LEVELS il'
      'order by'
      '  il.INVESTMENT_LEVEL_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 752
    Top = 64
    object qryInvestmentLevelsINVESTMENT_LEVEL_CODE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInvestmentLevelsINVESTMENT_LEVEL_NAME: TAbmesWideStringField
      FieldName = 'INVESTMENT_LEVEL_NAME'
      Size = 100
    end
  end
  object prvInvestmentLevels: TDataSetProvider
    DataSet = qryInvestmentLevels
    UpdateMode = upWhereKeyOnly
    Left = 752
    Top = 16
  end
  object prvParRelProduct: TDataSetProvider
    DataSet = qryParRelProduct
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvParRelProductBeforeUpdateRecord
    BeforeApplyUpdates = prvParRelProductBeforeApplyUpdates
    AfterApplyUpdates = prvParRelProductAfterApplyUpdates
    Left = 264
    Top = 136
  end
  object qryParRelProduct: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  prp.PARTNER_CODE,'
      '  prp.BORDER_REL_TYPE_CODE,'
      '  prp.PRODUCT_CODE,'
      '  prp.DOC_BRANCH_CODE,'
      '  prp.DOC_CODE,'
      '  %HAS_DOC_ITEMS[prp] as HAS_DOC_ITEMS,'
      '  prp.IS_REGULAR,'
      '  p.MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  p.PRODUCT_CLASS_CODE,'
      ''
      '  0 as STATUS_CHANGED'
      ''
      'from'
      '  PAR_REL_PRODUCTS prp,'
      '  PRODUCTS p'
      ''
      'where'
      '  (prp.PARTNER_CODE = :PARTNER_CODE) and'
      '  (prp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '  (prp.PRODUCT_CODE = :PRODUCT_CODE) and'
      ''
      '  (prp.PRODUCT_CODE = p.PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[prp]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PAR_REL_PRODUCTS_FOR_EDIT'
    AfterProviderStartTransaction = qryParRelProductAfterProviderStartTransaction
    BeforeProviderEndTransaction = qryParRelProductBeforeProviderEndTransaction
    Left = 264
    Top = 184
    object qryParRelProductPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryParRelProductDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryParRelProductHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryParRelProductIS_REGULAR: TAbmesFloatField
      FieldName = 'IS_REGULAR'
    end
    object qryParRelProductMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      ProviderFlags = []
    end
    object qryParRelProductACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryParRelProductACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryParRelProductPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
      ProviderFlags = []
    end
    object qryParRelProductSTATUS_CHANGED: TAbmesFloatField
      FieldName = 'STATUS_CHANGED'
      ProviderFlags = []
    end
  end
  object dsParRelProduct: TDataSource
    DataSet = qryParRelProduct
    Left = 264
    Top = 232
  end
  object qryParRelProductPeriods: TAbmesSQLQuery
    DataSource = dsParRelProduct
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  prpp.PARTNER_CODE, '
      '  prpp.BORDER_REL_TYPE_CODE, '
      '  prpp.PRODUCT_CODE, '
      '  prpp.PAR_REL_PRODUCT_PERIOD_CODE,'
      '  prpp.BEGIN_DATE,'
      '  prpp.END_DATE,'
      '  prpp.DOC_BRANCH_CODE,'
      '  prpp.DOC_CODE,'
      '  %HAS_DOC_ITEMS[prpp] as HAS_DOC_ITEMS,'
      '  prpp.IS_APPROVED_BY_PARTNER,'
      '  prpp.EST_SALE_COVER_ACQUIRE_QTY,'
      '  prpp.EST_SALE_COVER_LEASE_QTY,'
      '  prpp.EST_SALE_COVER_LEASE_DURATION,'
      '  prpp.EST_SALE_COVER_CONSIGN_QTY,'
      '  prpp.EST_ENV_COVER_ACQUIRE_QTY,'
      '  prpp.EST_ENV_COVER_LEASE_QTY,'
      '  prpp.EST_ENV_COVER_LEASE_DURATION,'
      '  prpp.ACQUIRE_SINGLE_PRICE,'
      '  prpp.ACQUIRE_CURRENCY_CODE,'
      '  ( select'
      '      cr.FIXING'
      '    from'
      '      CURRENCY_RATES cr'
      '    where'
      '      (cr.CURRENCY_CODE = prpp.ACQUIRE_CURRENCY_CODE) and'
      '      (cr.RATE_DATE = Least(prpp.END_DATE, ContextDate))'
      '  ) as ACQUIRE_CURRENCY_FIXING,'
      '  prpp.OVERRIDE_ACQUIRE_PRICE,'
      '  prpp.LEASE_SINGLE_PRICE,'
      '  prpp.LEASE_CURRENCY_CODE,'
      '  ( select'
      '      cr.FIXING'
      '    from'
      '      CURRENCY_RATES cr'
      '    where'
      '      (cr.CURRENCY_CODE = prpp.LEASE_CURRENCY_CODE) and'
      '      (cr.RATE_DATE = Least(prpp.END_DATE, ContextDate))'
      '  ) as LEASE_CURRENCY_FIXING,'
      '  prpp.LEASE_DATE_UNIT_CODE,'
      '  prpp.OVERRIDE_LEASE_PRICE,'
      '  prpp.STORE_CODE,'
      '  ( select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = prpp.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as STORE_IDENTIFIER,'
      '  prpp.OVERRIDE_STORE,'
      '  prpp.PARTNER_OFFICE_CODE,'
      '  prpp.OVERRIDE_PARTNER_OFFICE,'
      '  prpp.TRANSPORT_DURATION_DAYS,'
      '  prpp.OVERRIDE_TRANSPORT_DURATION,'
      '  prpp.MEDIATOR_COMPANY_CODE,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = prpp.MEDIATOR_COMPANY_CODE)'
      '  ) as MEDIATOR_COMP_SHORT_NAME,'
      '  prpp.OVERRIDE_MEDIATOR_COMPANY,'
      '  prpp.SHIPMENT_TYPE_CODE,'
      '  prpp.OVERRIDE_SHIPMENT_TYPE,'
      '  prpp.IS_PARTNER_TRANSPORT,'
      '  prpp.OVERRIDE_IS_PARTNER_TRANSPORT,'
      '  prpp.CUSTOMHOUSE_CODE,'
      '  prpp.OVERRIDE_CUSTOMHOUSE,'
      '  prpp.RESOLVE_DURATION_DAYS,'
      '  prpp.OVERRIDE_RESOLVE_DURATION_DAYS,'
      ''
      '  prpp.EST_SPEC_FIN_MODEL_CODE,'
      '  ( select'
      '      sfm.SPEC_FIN_MODEL_NAME'
      '    from'
      '      SPEC_FIN_MODELS sfm'
      '    where'
      '      (sfm.SPEC_FIN_MODEL_CODE = prpp.EST_SPEC_FIN_MODEL_CODE)'
      '  ) as EST_SPEC_FIN_MODEL_NAME,'
      ''
      '  prpp.OVERRIDE_EST_SPEC_FIN_MODEL,'
      ''
      '  ( Decode(prpp.BORDER_REL_TYPE_CODE,'
      '           %brt_CLIENT, pp.SALE_ACQUIRE_SINGLE_PRICE,'
      '           %brt_VENDOR, pp.DELIVERY_ACQUIRE_SINGLE_PRICE'
      '    ) *'
      '    Coalesce('
      '      ( select'
      '          Min(prppm.ACQUIRE_PRICE_MODIFIER)'
      '        from'
      '          PRPER_PRICE_MODIFIERS prppm'
      '        where'
      '          (prppm.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '          (prppm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE' +
        ') and'
      
        '          (prppm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) ' +
        'and'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              PRODUCT_SETS ps,'
      '              PRODUCT_SET_PRODUCTS psp'
      '            where'
      '              (ps.PRODUCT_SET_CODE = prppm.PRODUCT_SET_CODE) and'
      '              (ps.BEGIN_DATE <= prpp.BEGIN_DATE) and'
      '              (prpp.END_DATE <= ps.END_DATE) and'
      ''
      '              (psp.PRODUCT_SET_CODE = ps.PRODUCT_SET_CODE) and'
      '              (psp.PRODUCT_CODE = prpp.PRODUCT_CODE)'
      '          )'
      '      ),'
      '      ( select'
      '          Min(cprppm.ACQUIRE_PRICE_MODIFIER)'
      '        from'
      '          PAR_RELS pr,'
      '          PAR_REL_PERIODS cprp,'
      '          PRPER_PRICE_MODIFIERS cprppm'
      '        where'
      '          (pr.PARTNER_CODE = prpp.PARTNER_CODE) and'
      
        '          (pr.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) ' +
        'and'
      ''
      '          (cprp.PARTNER_CODE = pr.COMMON_PARTNER_CODE) and'
      
        '          (cprp.BORDER_REL_TYPE_CODE = pr.BORDER_REL_TYPE_CODE) ' +
        'and'
      '          ( (cprp.BEGIN_DATE <= prpp.BEGIN_DATE) and'
      '            (prpp.END_DATE <= cprp.END_DATE ) ) and'
      ''
      '          (cprppm.PARTNER_CODE = cprp.PARTNER_CODE) and'
      
        '          (cprppm.BORDER_REL_TYPE_CODE = cprp.BORDER_REL_TYPE_CO' +
        'DE) and'
      
        '          (cprppm.PAR_REL_PERIOD_CODE = cprp.PAR_REL_PERIOD_CODE' +
        ') and'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              PRODUCT_SETS cps,'
      '              PRODUCT_SET_PRODUCTS cpsp'
      '            where'
      
        '              (cps.PRODUCT_SET_CODE = cprppm.PRODUCT_SET_CODE) a' +
        'nd'
      '              (cps.BEGIN_DATE <= prpp.BEGIN_DATE) and'
      '              (prpp.END_DATE <= cps.END_DATE) and'
      ''
      '              (cpsp.PRODUCT_SET_CODE = cps.PRODUCT_SET_CODE) and'
      '              (cpsp.PRODUCT_CODE = prpp.PRODUCT_CODE)'
      '          )'
      '      ),'
      '      1'
      '    )'
      '  ) as INHRT_ACQUIRE_SINGLE_PRICE,'
      ''
      '  Decode(prpp.BORDER_REL_TYPE_CODE,'
      '         %brt_CLIENT, pp.SALE_ACQUIRE_CURRENCY_CODE,'
      '         %brt_VENDOR, pp.DELIVERY_ACQUIRE_CURRENCY_CODE'
      '  ) as INHRT_ACQUIRE_CURRENCY_CODE,'
      ''
      '  ( Decode(prpp.BORDER_REL_TYPE_CODE,'
      '           %brt_CLIENT, pp.SALE_LEASE_SINGLE_PRICE,'
      '           %brt_VENDOR, pp.DELIVERY_LEASE_SINGLE_PRICE'
      '    ) *'
      '    Coalesce('
      '      ( select'
      '          Min(prppm.LEASE_PRICE_MODIFIER)'
      '        from'
      '          PRPER_PRICE_MODIFIERS prppm'
      '        where'
      '          (prppm.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '          (prppm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE' +
        ') and'
      
        '          (prppm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) ' +
        'and'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              PRODUCT_SETS ps,'
      '              PRODUCT_SET_PRODUCTS psp'
      '            where'
      '              (ps.PRODUCT_SET_CODE = prppm.PRODUCT_SET_CODE) and'
      '              (ps.BEGIN_DATE <= prpp.BEGIN_DATE) and'
      '              (prpp.END_DATE <= ps.END_DATE) and'
      ''
      '              (psp.PRODUCT_SET_CODE = ps.PRODUCT_SET_CODE) and'
      '              (psp.PRODUCT_CODE = prpp.PRODUCT_CODE)'
      '          )'
      '      ),'
      '      ( select'
      '          Min(cprppm.LEASE_PRICE_MODIFIER)'
      '        from'
      '          PAR_RELS pr,'
      '          PAR_REL_PERIODS cprp,'
      '          PRPER_PRICE_MODIFIERS cprppm'
      '        where'
      '          (pr.PARTNER_CODE = prpp.PARTNER_CODE) and'
      
        '          (pr.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) ' +
        'and'
      ''
      '          (cprp.PARTNER_CODE = pr.COMMON_PARTNER_CODE) and'
      
        '          (cprp.BORDER_REL_TYPE_CODE = pr.BORDER_REL_TYPE_CODE) ' +
        'and'
      '          ( (cprp.BEGIN_DATE <= prpp.BEGIN_DATE) and'
      '            (prpp.END_DATE <= cprp.END_DATE ) ) and'
      ''
      '          (cprppm.PARTNER_CODE = cprp.PARTNER_CODE) and'
      
        '          (cprppm.BORDER_REL_TYPE_CODE = cprp.BORDER_REL_TYPE_CO' +
        'DE) and'
      
        '          (cprppm.PAR_REL_PERIOD_CODE = cprp.PAR_REL_PERIOD_CODE' +
        ') and'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              PRODUCT_SETS cps,'
      '              PRODUCT_SET_PRODUCTS cpsp'
      '            where'
      
        '              (cps.PRODUCT_SET_CODE = cprppm.PRODUCT_SET_CODE) a' +
        'nd'
      '              (cps.BEGIN_DATE <= prpp.BEGIN_DATE) and'
      '              (prpp.END_DATE <= cps.END_DATE) and'
      ''
      '              (cpsp.PRODUCT_SET_CODE = cps.PRODUCT_SET_CODE) and'
      '              (cpsp.PRODUCT_CODE = prpp.PRODUCT_CODE)'
      '          )'
      '      ),'
      '      1'
      '    )'
      '  ) as INHRT_LEASE_SINGLE_PRICE,'
      ''
      '  Decode(prpp.BORDER_REL_TYPE_CODE,'
      '         %brt_CLIENT, pp.SALE_LEASE_CURRENCY_CODE,'
      '         %brt_VENDOR, pp.DELIVERY_LEASE_CURRENCY_CODE'
      '  ) as INHRT_LEASE_CURRENCY_CODE,'
      ''
      '  Decode(prpp.BORDER_REL_TYPE_CODE,'
      '         %brt_CLIENT, pp.SALE_LEASE_DATE_UNIT_CODE,'
      '         %brt_VENDOR, pp.DELIVERY_LEASE_DATE_UNIT_CODE'
      '  ) as INHRT_LEASE_DATE_UNIT_CODE,'
      ''
      '  Decode(prpp.BORDER_REL_TYPE_CODE,'
      '         %brt_CLIENT, pp.SALE_RESOLVE_DURATION_DAYS,'
      '         %brt_VENDOR, pp.DELIVERY_RESOLVE_DURATION_DAYS'
      '  ) as INHRT_RESOLVE_DURATION_DAYS,'
      ''
      '  prp.STORE_CODE as INHRT_STORE_CODE,'
      '  ( select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = prp.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as INHRT_STORE_IDENTIFIER,'
      '  prp.PARTNER_OFFICE_CODE as INHRT_PARTNER_OFFICE_CODE,'
      '  prp.TRANSPORT_DURATION_DAYS as INHRT_TRANSPORT_DURATION_DAYS,'
      '  prp.MEDIATOR_COMPANY_CODE as INHRT_MEDIATOR_COMPANY_CODE,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = prp.MEDIATOR_COMPANY_CODE)'
      '  ) as INHRT_MEDIATOR_COMP_SHORT_NAME,'
      '  prp.SHIPMENT_TYPE_CODE as INHRT_SHIPMENT_TYPE_CODE,'
      '  prp.IS_PARTNER_TRANSPORT as INHRT_IS_PARTNER_TRANSPORT,'
      '  prp.CUSTOMHOUSE_CODE as INHRT_CUSTOMHOUSE_CODE,'
      ''
      '  ( select'
      '      sfm.SPEC_FIN_MODEL_CODE'
      '    from'
      '      SPEC_FIN_MODELS sfm'
      '    where'
      '      (sfm.PARTNER_CODE = prp.PARTNER_CODE) and'
      '      (sfm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) and'
      '      (sfm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) and'
      '      (sfm.IS_EST_MODEL = 1)'
      '  ) as INHRT_EST_SPEC_FIN_MODEL_CODE,'
      ''
      '  ( select'
      '      sfm.SPEC_FIN_MODEL_NAME'
      '    from'
      '      SPEC_FIN_MODELS sfm'
      '    where'
      '      (sfm.PARTNER_CODE = prp.PARTNER_CODE) and'
      '      (sfm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) and'
      '      (sfm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) and'
      '      (sfm.IS_EST_MODEL = 1)'
      '  ) as INHRT_EST_SPEC_FIN_MODEL_NAME,'
      ''
      '  pp.INVESTMENT_LEVEL_1_VALUE,'
      '  pp.INVESTMENT_LEVEL_2_VALUE,'
      '  pp.INVESTMENT_LEVEL_3_VALUE,'
      '  pp.INVESTMENT_LEVEL_4_VALUE,'
      '  pp.INVESTMENT_LEVEL_5_VALUE,'
      '  pp.INVESTMENT_LEVEL_6_VALUE,'
      ''
      '  ( select'
      '      cpp.INVESTMENT_LEVEL_1_VALUE'
      '    from'
      '      DEFINITE_PRODUCTS dp,'
      '      PRODUCT_PERIODS cpp'
      '    where'
      '      (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (dp.COMMON_PRODUCT_CODE = cpp.PRODUCT_CODE) and'
      '      (pp.BEGIN_DATE between cpp.BEGIN_DATE and cpp.END_DATE)'
      '  ) as CMMN_INVESTMENT_LEVEL_1_VALUE,'
      ''
      '  ( select'
      '      cpp.INVESTMENT_LEVEL_2_VALUE'
      '    from'
      '      DEFINITE_PRODUCTS dp,'
      '      PRODUCT_PERIODS cpp'
      '    where'
      '      (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (dp.COMMON_PRODUCT_CODE = cpp.PRODUCT_CODE) and'
      '      (pp.BEGIN_DATE between cpp.BEGIN_DATE and cpp.END_DATE)'
      '  ) as CMMN_INVESTMENT_LEVEL_2_VALUE,'
      ''
      '  ( select'
      '      cpp.INVESTMENT_LEVEL_3_VALUE'
      '    from'
      '      DEFINITE_PRODUCTS dp,'
      '      PRODUCT_PERIODS cpp'
      '    where'
      '      (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (dp.COMMON_PRODUCT_CODE = cpp.PRODUCT_CODE) and'
      '      (pp.BEGIN_DATE between cpp.BEGIN_DATE and cpp.END_DATE)'
      '  ) as CMMN_INVESTMENT_LEVEL_3_VALUE,'
      ''
      '  ( select'
      '      cpp.INVESTMENT_LEVEL_4_VALUE'
      '    from'
      '      DEFINITE_PRODUCTS dp,'
      '      PRODUCT_PERIODS cpp'
      '    where'
      '      (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (dp.COMMON_PRODUCT_CODE = cpp.PRODUCT_CODE) and'
      '      (pp.BEGIN_DATE between cpp.BEGIN_DATE and cpp.END_DATE)'
      '  ) as CMMN_INVESTMENT_LEVEL_4_VALUE,'
      ''
      '  ( select'
      '      cpp.INVESTMENT_LEVEL_5_VALUE'
      '    from'
      '      DEFINITE_PRODUCTS dp,'
      '      PRODUCT_PERIODS cpp'
      '    where'
      '      (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (dp.COMMON_PRODUCT_CODE = cpp.PRODUCT_CODE) and'
      '      (pp.BEGIN_DATE between cpp.BEGIN_DATE and cpp.END_DATE)'
      '  ) as CMMN_INVESTMENT_LEVEL_5_VALUE,'
      ''
      '  ( select'
      '      cpp.INVESTMENT_LEVEL_6_VALUE'
      '    from'
      '      DEFINITE_PRODUCTS dp,'
      '      PRODUCT_PERIODS cpp'
      '    where'
      '      (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (dp.COMMON_PRODUCT_CODE = cpp.PRODUCT_CODE) and'
      '      (pp.BEGIN_DATE between cpp.BEGIN_DATE and cpp.END_DATE)'
      '  ) as CMMN_INVESTMENT_LEVEL_6_VALUE,'
      ''
      '  pp.PRECISION_LEVEL_CODE,'
      '  pp.BALANCE_QUANTITY,'
      ''
      
        '  (prpp.EST_SALE_COVER_ACQUIRE_QTY * p.ACCOUNT_MEASURE_COEF) as ' +
        'ACC_EST_SALE_COVER_ACQUIRE_QTY,'
      
        '  (prpp.EST_SALE_COVER_LEASE_QTY * p.ACCOUNT_MEASURE_COEF) as AC' +
        'C_EST_SALE_COVER_LEASE_QTY,'
      
        '  (prpp.EST_SALE_COVER_CONSIGN_QTY * p.ACCOUNT_MEASURE_COEF) as ' +
        'ACC_EST_SALE_COVER_CONSIGN_QTY,'
      
        '  (prpp.EST_ENV_COVER_ACQUIRE_QTY * p.ACCOUNT_MEASURE_COEF) as A' +
        'CC_EST_ENV_COVER_ACQUIRE_QTY,'
      
        '  (prpp.EST_ENV_COVER_LEASE_QTY * p.ACCOUNT_MEASURE_COEF) as ACC' +
        '_EST_ENV_COVER_LEASE_QTY,'
      ''
      
        '  (prpp.ACQUIRE_SINGLE_PRICE / p.ACCOUNT_MEASURE_COEF) as ACC_AC' +
        'QUIRE_SINGLE_PRICE,'
      
        '  (prpp.LEASE_SINGLE_PRICE / p.ACCOUNT_MEASURE_COEF) as ACC_LEAS' +
        'E_SINGLE_PRICE,'
      ''
      '  To_Number(null) as PREV_TOTAL_VG_LEVEL_1_PART,'
      '  To_Number(null) as PREV_TOTAL_VG_LEVEL_2_PART,'
      '  To_Number(null) as PREV_TOTAL_VG_LEVEL_3_PART,'
      '  To_Number(null) as PREV_TOTAL_VG_LEVEL_4_PART,'
      '  To_Number(null) as PREV_TOTAL_VG_LEVEL_5_PART,'
      '  To_Number(null) as PREV_TOTAL_VG_LEVEL_6_PART,'
      ''
      '  prpp.CREATE_EMPLOYEE_CODE,'
      '  prpp.CREATE_DATE,'
      '  prpp.CREATE_TIME,'
      '  prpp.CHANGE_EMPLOYEE_CODE,'
      '  prpp.CHANGE_DATE,'
      '  prpp.CHANGE_TIME,'
      ''
      '  case'
      '    when (prpp.END_DATE < ContextDate) then 1'
      '    else 0'
      '  end as IS_PAST,'
      ''
      '  case'
      
        '    when (ContextDate between prpp.BEGIN_DATE and prpp.END_DATE) t' +
        'hen 1'
      '    else 0'
      '  end as IS_PRESENT,'
      ''
      '  case'
      '    when (ContextDate < prpp.BEGIN_DATE) then 1'
      '    else 0'
      '  end as IS_FUTURE'
      ''
      'from'
      '  PAR_REL_PRODUCT_PERIODS prpp,'
      '  PRODUCTS p,'
      '  PRODUCT_PERIODS pp,'
      '  PAR_REL_PERIODS prp'
      ''
      'where'
      '  (prpp.PARTNER_CODE = :PARTNER_CODE) and'
      '  (prpp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '  (prpp.PRODUCT_CODE = :PRODUCT_CODE) and'
      ''
      '  (prpp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (prpp.PRODUCT_CODE = pp.PRODUCT_CODE(+)) and'
      '  (prpp.BEGIN_DATE >= pp.BEGIN_DATE(+)) and'
      '  (prpp.END_DATE <= pp.END_DATE(+)) and'
      ''
      '  (prpp.PARTNER_CODE = prp.PARTNER_CODE(+)) and'
      '  (prpp.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE(+)) and'
      '  (prpp.BEGIN_DATE >= prp.BEGIN_DATE(+)) and'
      '  (prpp.END_DATE <= prp.END_DATE(+))'
      ''
      'order by'
      '  prpp.BEGIN_DATE,'
      '  prpp.PAR_REL_PRODUCT_PERIOD_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[prpp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'brt_VENDOR'
        ParamType = ptInput
        Value = '2'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PAR_REL_PRODUCT_PERS_FOR_EDIT'
    Left = 264
    Top = 280
    object qryParRelProductPeriodsPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductPeriodsBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductPeriodsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductPeriodsPAR_REL_PRODUCT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_PERIOD_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductPeriodsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryParRelProductPeriodsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryParRelProductPeriodsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryParRelProductPeriodsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryParRelProductPeriodsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsIS_APPROVED_BY_PARTNER: TAbmesFloatField
      FieldName = 'IS_APPROVED_BY_PARTNER'
    end
    object qryParRelProductPeriodsEST_SALE_COVER_ACQUIRE_QTY: TAbmesFloatField
      FieldName = 'EST_SALE_COVER_ACQUIRE_QTY'
    end
    object qryParRelProductPeriodsEST_SALE_COVER_LEASE_QTY: TAbmesFloatField
      FieldName = 'EST_SALE_COVER_LEASE_QTY'
    end
    object qryParRelProductPeriodsEST_SALE_COVER_LEASE_DURATION: TAbmesFloatField
      FieldName = 'EST_SALE_COVER_LEASE_DURATION'
    end
    object qryParRelProductPeriodsEST_SALE_COVER_CONSIGN_QTY: TAbmesFloatField
      FieldName = 'EST_SALE_COVER_CONSIGN_QTY'
    end
    object qryParRelProductPeriodsEST_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField
      FieldName = 'EST_ENV_COVER_ACQUIRE_QTY'
    end
    object qryParRelProductPeriodsEST_ENV_COVER_LEASE_QTY: TAbmesFloatField
      FieldName = 'EST_ENV_COVER_LEASE_QTY'
    end
    object qryParRelProductPeriodsEST_ENV_COVER_LEASE_DURATION: TAbmesFloatField
      FieldName = 'EST_ENV_COVER_LEASE_DURATION'
    end
    object qryParRelProductPeriodsACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACQUIRE_SINGLE_PRICE'
    end
    object qryParRelProductPeriodsACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'ACQUIRE_CURRENCY_CODE'
    end
    object qryParRelProductPeriodsACQUIRE_CURRENCY_FIXING: TAbmesFloatField
      FieldName = 'ACQUIRE_CURRENCY_FIXING'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsOVERRIDE_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'OVERRIDE_ACQUIRE_PRICE'
    end
    object qryParRelProductPeriodsLEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'LEASE_SINGLE_PRICE'
    end
    object qryParRelProductPeriodsLEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'LEASE_CURRENCY_CODE'
    end
    object qryParRelProductPeriodsLEASE_CURRENCY_FIXING: TAbmesFloatField
      FieldName = 'LEASE_CURRENCY_FIXING'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object qryParRelProductPeriodsOVERRIDE_LEASE_PRICE: TAbmesFloatField
      FieldName = 'OVERRIDE_LEASE_PRICE'
    end
    object qryParRelProductPeriodsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryParRelProductPeriodsSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryParRelProductPeriodsOVERRIDE_STORE: TAbmesFloatField
      FieldName = 'OVERRIDE_STORE'
    end
    object qryParRelProductPeriodsPARTNER_OFFICE_CODE: TAbmesFloatField
      FieldName = 'PARTNER_OFFICE_CODE'
    end
    object qryParRelProductPeriodsOVERRIDE_PARTNER_OFFICE: TAbmesFloatField
      FieldName = 'OVERRIDE_PARTNER_OFFICE'
    end
    object qryParRelProductPeriodsTRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'TRANSPORT_DURATION_DAYS'
    end
    object qryParRelProductPeriodsOVERRIDE_TRANSPORT_DURATION: TAbmesFloatField
      FieldName = 'OVERRIDE_TRANSPORT_DURATION'
    end
    object qryParRelProductPeriodsMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object qryParRelProductPeriodsMEDIATOR_COMP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'MEDIATOR_COMP_SHORT_NAME'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsOVERRIDE_MEDIATOR_COMPANY: TAbmesFloatField
      FieldName = 'OVERRIDE_MEDIATOR_COMPANY'
    end
    object qryParRelProductPeriodsSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object qryParRelProductPeriodsOVERRIDE_SHIPMENT_TYPE: TAbmesFloatField
      FieldName = 'OVERRIDE_SHIPMENT_TYPE'
    end
    object qryParRelProductPeriodsIS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_PARTNER_TRANSPORT'
    end
    object qryParRelProductPeriodsOVERRIDE_IS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'OVERRIDE_IS_PARTNER_TRANSPORT'
    end
    object qryParRelProductPeriodsCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object qryParRelProductPeriodsOVERRIDE_CUSTOMHOUSE: TAbmesFloatField
      FieldName = 'OVERRIDE_CUSTOMHOUSE'
    end
    object qryParRelProductPeriodsRESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'RESOLVE_DURATION_DAYS'
    end
    object qryParRelProductPeriodsOVERRIDE_RESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'OVERRIDE_RESOLVE_DURATION_DAYS'
    end
    object qryParRelProductPeriodsEST_SPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'EST_SPEC_FIN_MODEL_CODE'
    end
    object qryParRelProductPeriodsEST_SPEC_FIN_MODEL_NAME: TAbmesWideStringField
      FieldName = 'EST_SPEC_FIN_MODEL_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryParRelProductPeriodsOVERRIDE_EST_SPEC_FIN_MODEL: TAbmesFloatField
      FieldName = 'OVERRIDE_EST_SPEC_FIN_MODEL'
    end
    object qryParRelProductPeriodsINHRT_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_ACQUIRE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINHRT_ACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_ACQUIRE_CURRENCY_CODE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINHRT_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_LEASE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINHRT_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_LEASE_CURRENCY_CODE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINHRT_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'INHRT_LEASE_DATE_UNIT_CODE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINHRT_RESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'INHRT_RESOLVE_DURATION_DAYS'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINHRT_STORE_CODE: TAbmesFloatField
      FieldName = 'INHRT_STORE_CODE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINHRT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'INHRT_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryParRelProductPeriodsINHRT_PARTNER_OFFICE_CODE: TAbmesFloatField
      FieldName = 'INHRT_PARTNER_OFFICE_CODE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINHRT_TRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'INHRT_TRANSPORT_DURATION_DAYS'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINHRT_MEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'INHRT_MEDIATOR_COMPANY_CODE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINHRT_MEDIATOR_COMP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'INHRT_MEDIATOR_COMP_SHORT_NAME'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINHRT_SHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'INHRT_SHIPMENT_TYPE_CODE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINHRT_IS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'INHRT_IS_PARTNER_TRANSPORT'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINHRT_CUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'INHRT_CUSTOMHOUSE_CODE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINHRT_EST_SPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'INHRT_EST_SPEC_FIN_MODEL_CODE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINHRT_EST_SPEC_FIN_MODEL_NAME: TAbmesWideStringField
      FieldName = 'INHRT_EST_SPEC_FIN_MODEL_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryParRelProductPeriodsINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_1_VALUE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_2_VALUE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_3_VALUE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_4_VALUE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_5_VALUE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsINVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_6_VALUE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsCMMN_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_1_VALUE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsCMMN_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_2_VALUE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsCMMN_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_3_VALUE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsCMMN_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_4_VALUE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsCMMN_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_5_VALUE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsCMMN_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_6_VALUE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsPRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_CODE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsBALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'BALANCE_QUANTITY'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsACC_EST_SALE_COVER_ACQUIRE_QTY: TAbmesFloatField
      FieldName = 'ACC_EST_SALE_COVER_ACQUIRE_QTY'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsACC_EST_SALE_COVER_LEASE_QTY: TAbmesFloatField
      FieldName = 'ACC_EST_SALE_COVER_LEASE_QTY'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsACC_EST_SALE_COVER_CONSIGN_QTY: TAbmesFloatField
      FieldName = 'ACC_EST_SALE_COVER_CONSIGN_QTY'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsACC_EST_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField
      FieldName = 'ACC_EST_ENV_COVER_ACQUIRE_QTY'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsACC_EST_ENV_COVER_LEASE_QTY: TAbmesFloatField
      FieldName = 'ACC_EST_ENV_COVER_LEASE_QTY'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsACC_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_ACQUIRE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsACC_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_LEASE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsPREV_TOTAL_VG_LEVEL_1_PART: TAbmesFloatField
      FieldName = 'PREV_TOTAL_VG_LEVEL_1_PART'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsPREV_TOTAL_VG_LEVEL_2_PART: TAbmesFloatField
      FieldName = 'PREV_TOTAL_VG_LEVEL_2_PART'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsPREV_TOTAL_VG_LEVEL_3_PART: TAbmesFloatField
      FieldName = 'PREV_TOTAL_VG_LEVEL_3_PART'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsPREV_TOTAL_VG_LEVEL_4_PART: TAbmesFloatField
      FieldName = 'PREV_TOTAL_VG_LEVEL_4_PART'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsPREV_TOTAL_VG_LEVEL_5_PART: TAbmesFloatField
      FieldName = 'PREV_TOTAL_VG_LEVEL_5_PART'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsPREV_TOTAL_VG_LEVEL_6_PART: TAbmesFloatField
      FieldName = 'PREV_TOTAL_VG_LEVEL_6_PART'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryParRelProductPeriodsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryParRelProductPeriodsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryParRelProductPeriodsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryParRelProductPeriodsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryParRelProductPeriodsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryParRelProductPeriodsIS_PAST: TAbmesFloatField
      FieldName = 'IS_PAST'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsIS_PRESENT: TAbmesFloatField
      FieldName = 'IS_PRESENT'
      ProviderFlags = []
    end
    object qryParRelProductPeriodsIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      ProviderFlags = []
    end
  end
  object qryGetNewParRelProductPeriodCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  seq_PAR_REL_PRODUCT_PERIODS.NextVal as NEW_PAR_REL_PROD_PERIOD' +
        '_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 264
    Top = 328
    object qryGetNewParRelProductPeriodCodeNEW_PAR_REL_PROD_PERIOD_CODE: TAbmesFloatField
      FieldName = 'NEW_PAR_REL_PROD_PERIOD_CODE'
    end
  end
  object prvParRelProductStatuses: TDataSetProvider
    DataSet = qryParRelProductStatuses
    Left = 568
    Top = 136
  end
  object qryParRelProductStatuses: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  prps.PAR_REL_PRODUCT_STATUS_CODE,'
      '  prps.PAR_REL_PRODUCT_STATUS_NAME'
      '  '
      'from'
      '  PAR_REL_PRODUCT_STATUSES prps'
      '  '
      'order by'
      '  prps.PAR_REL_PRODUCT_STATUS_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 568
    Top = 185
    object qryParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_STATUS_CODE'
    end
    object qryParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
    end
  end
  object prvParRelProductStatus: TDataSetProvider
    DataSet = qryParRelProductStatus
    UpdateMode = upWhereKeyOnly
    OnUpdateError = prvParRelProductStatusUpdateError
    BeforeUpdateRecord = prvParRelProductStatusBeforeUpdateRecord
    BeforeApplyUpdates = prvParRelProductStatusBeforeApplyUpdates
    Left = 432
    Top = 136
  end
  object qryParRelProductStatus: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  prpsc.PARTNER_CODE,'
      '  prpsc.BORDER_REL_TYPE_CODE,'
      '  prpsc.PRODUCT_CODE,'
      ''
      '  ( select'
      '      prps.PAR_REL_PRODUCT_STATUS_NAME'
      '    from'
      '      PAR_REL_PRODUCT_STATUSES prps'
      '    where'
      
        '      (prps.PAR_REL_PRODUCT_STATUS_CODE = prpsc.PAR_REL_PRODUCT_' +
        'STATUS_CODE)'
      '  ) as PAR_REL_PRODUCT_STATUS_NAME,'
      ''
      '  ( select'
      '      Round(Months_between(ContextDate, Min(prpsc2.STATUS_DATE)))'
      '    from'
      '      PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '    where'
      '      (prpsc2.PARTNER_CODE = prpsc.PARTNER_CODE) and'
      
        '      (prpsc2.BORDER_REL_TYPE_CODE = prpsc.BORDER_REL_TYPE_CODE)' +
        ' and'
      '      (prpsc2.PRODUCT_CODE = prpsc.PRODUCT_CODE)'
      '  ) as EXISTANCE_MONTHS,'
      ''
      '  Round('
      '    Months_between('
      '      prpsc.STATUS_DATE,'
      '      Coalesce('
      '        ( select'
      '            Max(prpsc2.STATUS_DATE)'
      '          from'
      '            PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '          where'
      '            (prpsc2.PARTNER_CODE = prpsc.PARTNER_CODE) and'
      
        '            (prpsc2.BORDER_REL_TYPE_CODE = prpsc.BORDER_REL_TYPE' +
        '_CODE) and'
      '            (prpsc2.PRODUCT_CODE = prpsc.PRODUCT_CODE) and'
      '            (prpsc2.PAR_REL_PRODUCT_STATUS_CODE in (5, 6))'
      '        ),'
      '        ( select'
      '            Min(prpsc2.STATUS_DATE)'
      '          from'
      '            PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '          where'
      '            (prpsc2.PARTNER_CODE = prpsc.PARTNER_CODE) and'
      
        '            (prpsc2.BORDER_REL_TYPE_CODE = prpsc.BORDER_REL_TYPE' +
        '_CODE) and'
      '            (prpsc2.PRODUCT_CODE = prpsc.PRODUCT_CODE)'
      '        )'
      '      )'
      '    )'
      '  ) as CURRENT_STATUS_REACH_MONTHS'
      ''
      'from'
      '  PAR_REL_PRODUCT_STATUS_CHANGES prpsc'
      ''
      'where'
      '  (prpsc.PARTNER_CODE = :PARTNER_CODE) and'
      '  (prpsc.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '  (prpsc.PRODUCT_CODE = :PRODUCT_CODE) and'
      ''
      '  (prpsc.STATUS_DATE ='
      '    ( select'
      '        Max(prpsc2.STATUS_DATE)'
      '      from'
      '        PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '      where'
      '        (prpsc2.PARTNER_CODE = prpsc.PARTNER_CODE) and'
      
        '        (prpsc2.BORDER_REL_TYPE_CODE = prpsc.BORDER_REL_TYPE_COD' +
        'E) and'
      '        (prpsc2.PRODUCT_CODE = prpsc.PRODUCT_CODE)'
      '    )'
      '  )'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 432
    Top = 184
    object qryParRelProductStatusPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductStatusBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductStatusPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductStatusPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
    end
    object qryParRelProductStatusEXISTANCE_MONTHS: TAbmesFloatField
      FieldName = 'EXISTANCE_MONTHS'
    end
    object qryParRelProductStatusCURRENT_STATUS_REACH_MONTHS: TAbmesFloatField
      FieldName = 'CURRENT_STATUS_REACH_MONTHS'
    end
  end
  object dsParRelProductStatus: TDataSource
    DataSet = qryParRelProductStatus
    Left = 432
    Top = 232
  end
  object qryParRelProductStatusChanges: TAbmesSQLQuery
    DataSource = dsParRelProductStatus
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  prpsc.PARTNER_CODE,'
      '  prpsc.BORDER_REL_TYPE_CODE,'
      '  prpsc.PRODUCT_CODE,'
      '  prpsc.PAR_REL_PRODUCT_STATUS_CODE,'
      '  prpsc.STATUS_DATE,'
      
        '  Coalesce(Lead(prpsc.STATUS_DATE, 1) over (order by prpsc.STATU' +
        'S_DATE), ContextDate) as NEXT_STATUS_DATE'
      ''
      'from'
      '  PAR_REL_PRODUCT_STATUS_CHANGES prpsc'
      ''
      'where'
      '  (prpsc.PARTNER_CODE = :PARTNER_CODE) and'
      '  (prpsc.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '  (prpsc.PRODUCT_CODE = :PRODUCT_CODE)'
      ''
      'order by'
      '  prpsc.STATUS_DATE')
    SQLConnection = SQLConn
    Macros = <>
    DefaultOrder.Fields = 'STATUS_DATE'
    MacroParams = <>
    CustomParams = <>
    TableName = 'PAR_REL_PRODUCT_STATUS_CHANGES'
    Left = 432
    Top = 280
    object qryParRelProductStatusChangesPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductStatusChangesBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductStatusChangesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductStatusChangesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_STATUS_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelProductStatusChangesSTATUS_DATE: TAbmesSQLTimeStampField
      FieldName = 'STATUS_DATE'
    end
    object qryParRelProductStatusChangesNEXT_STATUS_DATE: TAbmesSQLTimeStampField
      FieldName = 'NEXT_STATUS_DATE'
      ProviderFlags = []
    end
  end
  object qryPRPPInheritedData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
        Size = 8
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
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
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
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
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
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
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
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
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
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
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
      '  ( Decode(:BORDER_REL_TYPE_CODE,'
      '           %brt_CLIENT, pp.SALE_ACQUIRE_SINGLE_PRICE,'
      '           %brt_VENDOR, pp.DELIVERY_ACQUIRE_SINGLE_PRICE'
      '    ) *'
      '    Coalesce('
      '      ( select'
      '          Min(prppm.ACQUIRE_PRICE_MODIFIER)'
      '        from'
      '          PRPER_PRICE_MODIFIERS prppm'
      '        where'
      '          (prppm.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '          (prppm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE' +
        ') and'
      
        '          (prppm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) ' +
        'and'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              PRODUCT_SETS ps,'
      '              PRODUCT_SET_PRODUCTS psp'
      '            where'
      '              (ps.PRODUCT_SET_CODE = prppm.PRODUCT_SET_CODE) and'
      '              (ps.BEGIN_DATE <= :BEGIN_DATE) and'
      '              (:END_DATE <= ps.END_DATE) and'
      ''
      '              (psp.PRODUCT_SET_CODE = ps.PRODUCT_SET_CODE) and'
      '              (psp.PRODUCT_CODE = :PRODUCT_CODE)'
      '          )'
      '      ),'
      '      ( select'
      '          Min(cprppm.ACQUIRE_PRICE_MODIFIER)'
      '        from'
      '          PAR_RELS pr,'
      '          PAR_REL_PERIODS cprp,'
      '          PRPER_PRICE_MODIFIERS cprppm'
      '        where'
      '          (pr.PARTNER_CODE = :PARTNER_CODE) and'
      '          (pr.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      ''
      '          (cprp.PARTNER_CODE = pr.COMMON_PARTNER_CODE) and'
      
        '          (cprp.BORDER_REL_TYPE_CODE = pr.BORDER_REL_TYPE_CODE) ' +
        'and'
      '          ( (cprp.BEGIN_DATE <= :BEGIN_DATE) and'
      '            (:END_DATE <= cprp.END_DATE ) ) and'
      ''
      '          (cprppm.PARTNER_CODE = cprp.PARTNER_CODE) and'
      
        '          (cprppm.BORDER_REL_TYPE_CODE = cprp.BORDER_REL_TYPE_CO' +
        'DE) and'
      
        '          (cprppm.PAR_REL_PERIOD_CODE = cprp.PAR_REL_PERIOD_CODE' +
        ') and'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              PRODUCT_SETS cps,'
      '              PRODUCT_SET_PRODUCTS cpsp'
      '            where'
      
        '              (cps.PRODUCT_SET_CODE = cprppm.PRODUCT_SET_CODE) a' +
        'nd'
      '              (cps.BEGIN_DATE <= :BEGIN_DATE) and'
      '              (:END_DATE <= cps.END_DATE) and'
      ''
      '              (cpsp.PRODUCT_SET_CODE = cps.PRODUCT_SET_CODE) and'
      '              (cpsp.PRODUCT_CODE = :PRODUCT_CODE)'
      '          )'
      '      ),'
      '      1'
      '    )'
      '  ) as INHRT_ACQUIRE_SINGLE_PRICE,'
      ''
      '  Decode(:BORDER_REL_TYPE_CODE,'
      '         %brt_CLIENT, pp.SALE_ACQUIRE_CURRENCY_CODE,'
      '         %brt_VENDOR, pp.DELIVERY_ACQUIRE_CURRENCY_CODE'
      '  ) as INHRT_ACQUIRE_CURRENCY_CODE,'
      ''
      '  ( Decode(:BORDER_REL_TYPE_CODE,'
      '           %brt_CLIENT, pp.SALE_LEASE_SINGLE_PRICE,'
      '           %brt_VENDOR, pp.DELIVERY_LEASE_SINGLE_PRICE'
      '    ) *'
      '    Coalesce('
      '      ( select'
      '          Min(prppm.LEASE_PRICE_MODIFIER)'
      '        from'
      '          PRPER_PRICE_MODIFIERS prppm'
      '        where'
      '          (prppm.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '          (prppm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE' +
        ') and'
      
        '          (prppm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) ' +
        'and'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              PRODUCT_SETS ps,'
      '              PRODUCT_SET_PRODUCTS psp'
      '            where'
      '              (ps.PRODUCT_SET_CODE = prppm.PRODUCT_SET_CODE) and'
      '              (ps.BEGIN_DATE <= :BEGIN_DATE) and'
      '              (:END_DATE <= ps.END_DATE) and'
      ''
      '              (psp.PRODUCT_SET_CODE = ps.PRODUCT_SET_CODE) and'
      '              (psp.PRODUCT_CODE = :PRODUCT_CODE)'
      '          )'
      '      ),'
      '      ( select'
      '          Min(cprppm.LEASE_PRICE_MODIFIER)'
      '        from'
      '          PAR_RELS pr,'
      '          PAR_REL_PERIODS cprp,'
      '          PRPER_PRICE_MODIFIERS cprppm'
      '        where'
      '          (pr.PARTNER_CODE = :PARTNER_CODE) and'
      '          (pr.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      ''
      '          (cprp.PARTNER_CODE = pr.COMMON_PARTNER_CODE) and'
      
        '          (cprp.BORDER_REL_TYPE_CODE = pr.BORDER_REL_TYPE_CODE) ' +
        'and'
      '          ( (cprp.BEGIN_DATE <= :BEGIN_DATE) and'
      '            (:END_DATE <= cprp.END_DATE ) ) and'
      ''
      '          (cprppm.PARTNER_CODE = cprp.PARTNER_CODE) and'
      
        '          (cprppm.BORDER_REL_TYPE_CODE = cprp.BORDER_REL_TYPE_CO' +
        'DE) and'
      
        '          (cprppm.PAR_REL_PERIOD_CODE = cprp.PAR_REL_PERIOD_CODE' +
        ') and'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              PRODUCT_SETS cps,'
      '              PRODUCT_SET_PRODUCTS cpsp'
      '            where'
      
        '              (cps.PRODUCT_SET_CODE = cprppm.PRODUCT_SET_CODE) a' +
        'nd'
      '              (cps.BEGIN_DATE <= :BEGIN_DATE) and'
      '              (:END_DATE <= cps.END_DATE) and'
      ''
      '              (cpsp.PRODUCT_SET_CODE = cps.PRODUCT_SET_CODE) and'
      '              (cpsp.PRODUCT_CODE = :PRODUCT_CODE)'
      '          )'
      '      ),'
      '      1'
      '    )'
      '  ) as INHRT_LEASE_SINGLE_PRICE,'
      ''
      '  Decode(:BORDER_REL_TYPE_CODE,'
      '         %brt_CLIENT, pp.SALE_LEASE_CURRENCY_CODE,'
      '         %brt_VENDOR, pp.DELIVERY_LEASE_CURRENCY_CODE'
      '  ) as INHRT_LEASE_CURRENCY_CODE,'
      ''
      '  Decode(:BORDER_REL_TYPE_CODE,'
      '         %brt_CLIENT, pp.SALE_LEASE_DATE_UNIT_CODE,'
      '         %brt_VENDOR, pp.DELIVERY_LEASE_DATE_UNIT_CODE'
      '  ) as INHRT_LEASE_DATE_UNIT_CODE,'
      ''
      '  prp.STORE_CODE as INHRT_STORE_CODE,'
      '  ( select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = prp.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as INHRT_STORE_IDENTIFIER,'
      '  prp.PARTNER_OFFICE_CODE as INHRT_PARTNER_OFFICE_CODE,'
      '  prp.TRANSPORT_DURATION_DAYS as INHRT_TRANSPORT_DURATION_DAYS,'
      '  prp.MEDIATOR_COMPANY_CODE as INHRT_MEDIATOR_COMPANY_CODE,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = prp.MEDIATOR_COMPANY_CODE)'
      '  ) as INHRT_MEDIATOR_COMP_SHORT_NAME,'
      '  prp.SHIPMENT_TYPE_CODE as INHRT_SHIPMENT_TYPE_CODE,'
      '  prp.IS_PARTNER_TRANSPORT as INHRT_IS_PARTNER_TRANSPORT,'
      '  prp.CUSTOMHOUSE_CODE as INHRT_CUSTOMHOUSE_CODE,'
      ''
      '  ( select'
      '      sfm.SPEC_FIN_MODEL_CODE'
      '    from'
      '      SPEC_FIN_MODELS sfm'
      '    where'
      '      (sfm.PARTNER_CODE = prp.PARTNER_CODE) and'
      '      (sfm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) and'
      '      (sfm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) and'
      '      (sfm.IS_EST_MODEL = 1)'
      '  ) as INHRT_EST_SPEC_FIN_MODEL_CODE,'
      ''
      '  ( select'
      '      sfm.SPEC_FIN_MODEL_NAME'
      '    from'
      '      SPEC_FIN_MODELS sfm'
      '    where'
      '      (sfm.PARTNER_CODE = prp.PARTNER_CODE) and'
      '      (sfm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) and'
      '      (sfm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) and'
      '      (sfm.IS_EST_MODEL = 1)'
      '  ) as INHRT_EST_SPEC_FIN_MODEL_NAME,'
      ''
      '  pp.INVESTMENT_LEVEL_1_VALUE,'
      '  pp.INVESTMENT_LEVEL_2_VALUE,'
      '  pp.INVESTMENT_LEVEL_3_VALUE,'
      '  pp.INVESTMENT_LEVEL_4_VALUE,'
      '  pp.INVESTMENT_LEVEL_5_VALUE,'
      '  pp.INVESTMENT_LEVEL_6_VALUE,'
      ''
      '  ( select'
      '      cpp.INVESTMENT_LEVEL_1_VALUE'
      '    from'
      '      DEFINITE_PRODUCTS dp,'
      '      PRODUCT_PERIODS cpp'
      '    where'
      '      (dp.PRODUCT_CODE = pp.PRODUCT_CODE) and'
      '      (dp.COMMON_PRODUCT_CODE = cpp.PRODUCT_CODE) and'
      '      (pp.BEGIN_DATE between cpp.BEGIN_DATE and cpp.END_DATE)'
      '  ) as CMMN_INVESTMENT_LEVEL_1_VALUE,'
      ''
      '  ( select'
      '      cpp.INVESTMENT_LEVEL_2_VALUE'
      '    from'
      '      DEFINITE_PRODUCTS dp,'
      '      PRODUCT_PERIODS cpp'
      '    where'
      '      (dp.PRODUCT_CODE = pp.PRODUCT_CODE) and'
      '      (dp.COMMON_PRODUCT_CODE = cpp.PRODUCT_CODE) and'
      '      (pp.BEGIN_DATE between cpp.BEGIN_DATE and cpp.END_DATE)'
      '  ) as CMMN_INVESTMENT_LEVEL_2_VALUE,'
      ''
      '  ( select'
      '      cpp.INVESTMENT_LEVEL_3_VALUE'
      '    from'
      '      DEFINITE_PRODUCTS dp,'
      '      PRODUCT_PERIODS cpp'
      '    where'
      '      (dp.PRODUCT_CODE = pp.PRODUCT_CODE) and'
      '      (dp.COMMON_PRODUCT_CODE = cpp.PRODUCT_CODE) and'
      '      (pp.BEGIN_DATE between cpp.BEGIN_DATE and cpp.END_DATE)'
      '  ) as CMMN_INVESTMENT_LEVEL_3_VALUE,'
      ''
      '  ( select'
      '      cpp.INVESTMENT_LEVEL_4_VALUE'
      '    from'
      '      DEFINITE_PRODUCTS dp,'
      '      PRODUCT_PERIODS cpp'
      '    where'
      '      (dp.PRODUCT_CODE = pp.PRODUCT_CODE) and'
      '      (dp.COMMON_PRODUCT_CODE = cpp.PRODUCT_CODE) and'
      '      (pp.BEGIN_DATE between cpp.BEGIN_DATE and cpp.END_DATE)'
      '  ) as CMMN_INVESTMENT_LEVEL_4_VALUE,'
      ''
      '  ( select'
      '      cpp.INVESTMENT_LEVEL_5_VALUE'
      '    from'
      '      DEFINITE_PRODUCTS dp,'
      '      PRODUCT_PERIODS cpp'
      '    where'
      '      (dp.PRODUCT_CODE = pp.PRODUCT_CODE) and'
      '      (dp.COMMON_PRODUCT_CODE = cpp.PRODUCT_CODE) and'
      '      (pp.BEGIN_DATE between cpp.BEGIN_DATE and cpp.END_DATE)'
      '  ) as CMMN_INVESTMENT_LEVEL_5_VALUE,'
      ''
      '  ( select'
      '      cpp.INVESTMENT_LEVEL_6_VALUE'
      '    from'
      '      DEFINITE_PRODUCTS dp,'
      '      PRODUCT_PERIODS cpp'
      '    where'
      '      (dp.PRODUCT_CODE = pp.PRODUCT_CODE) and'
      '      (dp.COMMON_PRODUCT_CODE = cpp.PRODUCT_CODE) and'
      '      (pp.BEGIN_DATE between cpp.BEGIN_DATE and cpp.END_DATE)'
      '  ) as CMMN_INVESTMENT_LEVEL_6_VALUE,'
      ''
      '  pp.PRECISION_LEVEL_CODE,'
      '  pp.BALANCE_QUANTITY'
      ''
      'from'
      '  INTERNAL_VALUES iv,'
      '  PRODUCT_PERIODS pp,'
      '  PAR_REL_PERIODS prp'
      ''
      'where'
      '  ((iv.CODE * 0) + :PRODUCT_CODE = pp.PRODUCT_CODE(+)) and'
      '  (:BEGIN_DATE >= pp.BEGIN_DATE(+)) and'
      '  (:END_DATE <= pp.END_DATE(+)) and'
      ''
      '  ((iv.CODE * 0) + :PARTNER_CODE = prp.PARTNER_CODE(+)) and'
      '  (:BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE(+)) and'
      '  (:BEGIN_DATE >= prp.BEGIN_DATE(+)) and'
      '  (:END_DATE <= prp.END_DATE(+))'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'brt_VENDOR'
        ParamType = ptInput
        Value = '2'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 104
    Top = 264
    object qryPRPPInheritedDataINHRT_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_ACQUIRE_SINGLE_PRICE'
    end
    object qryPRPPInheritedDataINHRT_ACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_ACQUIRE_CURRENCY_CODE'
    end
    object qryPRPPInheritedDataINHRT_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_LEASE_SINGLE_PRICE'
    end
    object qryPRPPInheritedDataINHRT_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_LEASE_CURRENCY_CODE'
    end
    object qryPRPPInheritedDataINHRT_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'INHRT_LEASE_DATE_UNIT_CODE'
    end
    object qryPRPPInheritedDataINHRT_STORE_CODE: TAbmesFloatField
      FieldName = 'INHRT_STORE_CODE'
    end
    object qryPRPPInheritedDataINHRT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'INHRT_STORE_IDENTIFIER'
      Size = 46
    end
    object qryPRPPInheritedDataINHRT_PARTNER_OFFICE_CODE: TAbmesFloatField
      FieldName = 'INHRT_PARTNER_OFFICE_CODE'
    end
    object qryPRPPInheritedDataINHRT_TRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'INHRT_TRANSPORT_DURATION_DAYS'
    end
    object qryPRPPInheritedDataINHRT_MEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'INHRT_MEDIATOR_COMPANY_CODE'
    end
    object qryPRPPInheritedDataINHRT_MEDIATOR_COMP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'INHRT_MEDIATOR_COMP_SHORT_NAME'
    end
    object qryPRPPInheritedDataINHRT_SHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'INHRT_SHIPMENT_TYPE_CODE'
    end
    object qryPRPPInheritedDataINHRT_IS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'INHRT_IS_PARTNER_TRANSPORT'
    end
    object qryPRPPInheritedDataINHRT_CUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'INHRT_CUSTOMHOUSE_CODE'
    end
    object qryPRPPInheritedDataINHRT_EST_SPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'INHRT_EST_SPEC_FIN_MODEL_CODE'
    end
    object qryPRPPInheritedDataINHRT_EST_SPEC_FIN_MODEL_NAME: TAbmesWideStringField
      FieldName = 'INHRT_EST_SPEC_FIN_MODEL_NAME'
      Size = 100
    end
    object qryPRPPInheritedDataINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_1_VALUE'
    end
    object qryPRPPInheritedDataINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_2_VALUE'
    end
    object qryPRPPInheritedDataINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_3_VALUE'
    end
    object qryPRPPInheritedDataINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_4_VALUE'
    end
    object qryPRPPInheritedDataINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_5_VALUE'
    end
    object qryPRPPInheritedDataINVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_6_VALUE'
    end
    object qryPRPPInheritedDataCMMN_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_1_VALUE'
    end
    object qryPRPPInheritedDataCMMN_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_2_VALUE'
    end
    object qryPRPPInheritedDataCMMN_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_3_VALUE'
    end
    object qryPRPPInheritedDataCMMN_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_4_VALUE'
    end
    object qryPRPPInheritedDataCMMN_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_5_VALUE'
    end
    object qryPRPPInheritedDataCMMN_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_6_VALUE'
    end
    object qryPRPPInheritedDataPRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_CODE'
    end
    object qryPRPPInheritedDataBALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'BALANCE_QUANTITY'
    end
  end
  object prvPRPPInheritedData: TDataSetProvider
    DataSet = qryPRPPInheritedData
    Options = [poReadOnly, poUseQuoteChar]
    Left = 104
    Top = 216
  end
  object qryParRelProductExists: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Sign(Count(*)) as PAR_REL_PRODUCT_EXISTS'
      ''
      'from'
      '  PAR_REL_PRODUCTS prp'
      ''
      'where'
      '  (prp.PARTNER_CODE = :PARTNER_CODE) and'
      '  (prp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '  (prp.PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 728
    Top = 248
    object qryParRelProductExistsPAR_REL_PRODUCT_EXISTS: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_EXISTS'
      FieldValueType = fvtBoolean
    end
  end
  object prvPriceList: TDataSetProvider
    DataSet = cdsPriceList
    OnGetData = prvPriceListGetData
    BeforeGetRecords = prvPriceListBeforeGetRecords
    AfterGetRecords = prvPriceListAfterGetRecords
    Left = 568
    Top = 248
  end
  object qryPriceList: TAbmesSQLQuery
    BeforeOpen = qryPriceListBeforeOpen
    AfterClose = qryPriceListAfterClose
    OnCalcFields = qryPriceListCalcFields
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
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
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRE_PRPP'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
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
        Name = 'PAR_REL_PRODUCT_ORIENTATION'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'select'
      '  x.PARTNER_CODE,'
      '  x.BORDER_REL_TYPE_CODE,'
      '  x.PRODUCT_CODE,'
      '  x.THE_FIRST_DATE as DATE_UNIT_FIRST_DATE,'
      
        '  (DateTimeUtils.TimeUnitsBetween(:BEGIN_DATE, x.THE_FIRST_DATE,' +
        ' :DATE_UNIT_CODE) + 1) as DATE_UNIT_NO,'
      ''
      '  ( select'
      '      vp.VAT_PERCENT'
      '    from'
      '      VAT_PERIODS vp'
      '    where'
      '      (x.THE_FIRST_DATE between vp.BEGIN_DATE and vp.END_DATE)'
      '  ) as VAT_PERCENT,'
      ''
      '  -- price fields'
      '  MiscUtils.GetNamedValue(x.PRICE, '#39'PRICE'#39') as SINGLE_PRICE,'
      
        '  MiscUtils.GetNamedValue(x.PRICE, '#39'CURRENCY_CODE'#39') as CURRENCY_' +
        'CODE,'
      ''
      '  ( select'
      '      crn.CURRENCY_ABBREV'
      '    from'
      '      CURRENCIES crn'
      '    where'
      
        '      (crn.CURRENCY_CODE = MiscUtils.GetNamedValue(x.PRICE, '#39'CUR' +
        'RENCY_CODE'#39'))'
      '  ) as CURRENCY_ABBREV,'
      ''
      '  ( MiscUtils.GetNamedValue(x.PRICE, '#39'PRICE'#39') *'
      '    ( select'
      '        cr.FIXING'
      '      from'
      '        CURRENCY_RATES cr'
      '      where'
      
        '        (cr.CURRENCY_CODE = MiscUtils.GetNamedValue(x.PRICE, '#39'CU' +
        'RRENCY_CODE'#39')) and'
      '        (cr.RATE_DATE = Least(x.THE_FIRST_DATE, ContextDate))'
      '    )'
      '  ) as BASE_SINGLE_PRICE,'
      ''
      '  ( select'
      '      tdu.THE_DATE_UNIT_NAME'
      '    from'
      '      THE_DATE_UNITS tdu'
      '    where'
      
        '      (tdu.THE_DATE_UNIT_CODE = MiscUtils.GetNamedValue(x.PRICE,' +
        ' '#39'DATE_UNIT_CODE'#39'))'
      '  ) as LEASE_DATE_UNIT_NAME,'
      '  -- end of price fields'
      ''
      '  ( select'
      '      prpsc.PAR_REL_PRODUCT_STATUS_CODE'
      '    from'
      '      PAR_REL_PRODUCT_STATUS_CHANGES prpsc'
      '    where'
      '      (prpsc.PARTNER_CODE = x.PARTNER_CODE) and'
      '      (prpsc.BORDER_REL_TYPE_CODE = x.BORDER_REL_TYPE_CODE) and'
      '      (prpsc.PRODUCT_CODE = x.PRODUCT_CODE) and'
      ''
      '      (prpsc.STATUS_DATE ='
      '        ( select'
      '            Max(prpsc2.STATUS_DATE)'
      '          from'
      '            PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '          where'
      '            (prpsc2.PARTNER_CODE = x.PARTNER_CODE) and'
      
        '            (prpsc2.BORDER_REL_TYPE_CODE = x.BORDER_REL_TYPE_COD' +
        'E) and'
      '            (prpsc2.PRODUCT_CODE = x.PRODUCT_CODE)'
      '        )'
      '      )'
      '  ) as PAR_REL_PRODUCT_STATUS_CODE,'
      ''
      '  ( select'
      '      prps.PAR_REL_PRODUCT_STATUS_NAME'
      '    from'
      '      PAR_REL_PRODUCT_STATUS_CHANGES prpsc,'
      '      PAR_REL_PRODUCT_STATUSES prps'
      '    where'
      
        '      (prpsc.PAR_REL_PRODUCT_STATUS_CODE = prps.PAR_REL_PRODUCT_' +
        'STATUS_CODE) and'
      ''
      '      (prpsc.PARTNER_CODE = x.PARTNER_CODE) and'
      '      (prpsc.BORDER_REL_TYPE_CODE = x.BORDER_REL_TYPE_CODE) and'
      '      (prpsc.PRODUCT_CODE = x.PRODUCT_CODE) and'
      ''
      '      (prpsc.STATUS_DATE ='
      '        ( select'
      '            Max(prpsc2.STATUS_DATE)'
      '          from'
      '            PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '          where'
      '            (prpsc2.PARTNER_CODE = x.PARTNER_CODE) and'
      
        '            (prpsc2.BORDER_REL_TYPE_CODE = x.BORDER_REL_TYPE_COD' +
        'E) and'
      '            (prpsc2.PRODUCT_CODE = x.PRODUCT_CODE)'
      '        )'
      '      )'
      '  ) as PAR_REL_PRODUCT_STATUS_NAME,'
      ''
      '  ( select'
      '      Round(Months_between(ContextDate, Min(prpsc.STATUS_DATE)))'
      '    from'
      '      PAR_REL_PRODUCT_STATUS_CHANGES prpsc'
      '    where'
      '      (prpsc.PARTNER_CODE = x.PARTNER_CODE) and'
      '      (prpsc.BORDER_REL_TYPE_CODE = x.BORDER_REL_TYPE_CODE) and'
      '      (prpsc.PRODUCT_CODE = x.PRODUCT_CODE)'
      '  ) as PAR_REL_PRODUCT_EXIST_MONTHS,'
      ''
      '  Decode(x.PARTNER_CODE, 0, To_Number(null),'
      '    Round('
      '      Months_between('
      '        ( select'
      '            Max(prpsc2.STATUS_DATE)'
      '          from'
      '            PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '          where'
      '            (prpsc2.PARTNER_CODE = x.PARTNER_CODE) and'
      
        '            (prpsc2.BORDER_REL_TYPE_CODE = x.BORDER_REL_TYPE_COD' +
        'E) and'
      '            (prpsc2.PRODUCT_CODE = x.PRODUCT_CODE)'
      '        ),'
      '        Coalesce('
      '          ( select'
      '              Max(prpsc2.STATUS_DATE)'
      '            from'
      '              PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '            where'
      '              (prpsc2.PARTNER_CODE = x.PARTNER_CODE) and'
      
        '              (prpsc2.BORDER_REL_TYPE_CODE = x.BORDER_REL_TYPE_C' +
        'ODE) and'
      '              (prpsc2.PRODUCT_CODE = x.PRODUCT_CODE) and'
      '              (prpsc2.PAR_REL_PRODUCT_STATUS_CODE in (5, 6))'
      '          ),'
      '          ( select'
      '              Min(prpsc2.STATUS_DATE)'
      '            from'
      '              PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '            where'
      '              (prpsc2.PARTNER_CODE = x.PARTNER_CODE) and'
      
        '              (prpsc2.BORDER_REL_TYPE_CODE = x.BORDER_REL_TYPE_C' +
        'ODE) and'
      '              (prpsc2.PRODUCT_CODE = x.PRODUCT_CODE)'
      '          )'
      '        )'
      '      )'
      '    )'
      '  ) as PRP_STATUS_REACH_MONTHS,'
      ''
      '-- partner fields'
      '  ( select'
      '      csc.COMPANY_STATUS_CODE'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc'
      '    where'
      '      (csc.COMPANY_CODE = x.PARTNER_CODE) and'
      ''
      '      (csc.STATUS_DATE ='
      '        ( select'
      '            Max(csc2.STATUS_DATE)'
      '          from'
      '            COMPANY_STATUSES_CHANGES csc2'
      '          where'
      '            (csc2.COMPANY_CODE = x.PARTNER_CODE)'
      '        )'
      '      )'
      '  ) as PARTNER_STATUS_CODE,'
      ''
      '  ( select'
      '      cs.COMPANY_STATUS_NAME'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc,'
      '      COMPANY_STATUSES cs'
      '    where'
      '      (csc.COMPANY_STATUS_CODE = cs.COMPANY_STATUS_CODE) and'
      ''
      '      (csc.COMPANY_CODE = x.PARTNER_CODE) and'
      ''
      '      (csc.STATUS_DATE ='
      '        ( select'
      '            Max(csc2.STATUS_DATE)'
      '          from'
      '            COMPANY_STATUSES_CHANGES csc2'
      '          where'
      '            (csc2.COMPANY_CODE = x.PARTNER_CODE)'
      '        )'
      '      )'
      '  ) as PARTNER_STATUS_NAME,'
      ''
      '  ( select'
      '      Round(Months_between(ContextDate, Min(csc.STATUS_DATE)))'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc'
      '    where'
      '      (csc.COMPANY_CODE = x.PARTNER_CODE)'
      '  ) as PARTNER_EXISTENCE_MONTHS,'
      ''
      '  ( select'
      '      cc.COMPANY_CLASS_ABBREV'
      '    from'
      '      COMPANY_CLASSES cc'
      '    where'
      '      (cc.COMPANY_CLASS_CODE = x.COMPANY_CLASS_CODE)'
      '  ) as PARTNER_CLASS_ABBREV,'
      ''
      '  ( select'
      '      pr.PRIORITY_NO'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = x.PARTNER_PRIORITY_CODE)'
      '  ) as PARTNER_PRIORITY_NO,'
      '  ( select'
      '      pr.PRIORITY_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = x.PARTNER_PRIORITY_CODE)'
      '  ) as PAR_PRIORITY_COLOR,'
      '  ( select'
      '      pr.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = x.PARTNER_PRIORITY_CODE)'
      '  ) as PAR_PRIORITY_BACKGROUND_COLOR,'
      '  x.PARTNER_NAME,'
      '  x.PARTNER_DOC_BRANCH_CODE,'
      '  x.PARTNER_DOC_CODE,'
      '  x.PARTNER_HAS_DOC_ITEMS,'
      ''
      '-- product fields'
      '  x.PRODUCT_COMMON_STATUS_CODE,'
      ''
      '  ( select'
      '      pr.PRIORITY_NO'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = x.PRODUCT_PRIORITY_CODE)'
      '  ) as PRODUCT_PRIORITY_NO,'
      '  ( select'
      '      pr.PRIORITY_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = x.PRODUCT_PRIORITY_CODE)'
      '  ) as PRODUCT_PRIORITY_COLOR,'
      '  ( select'
      '      pr.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = x.PRODUCT_PRIORITY_CODE)'
      '  ) as PRODUCT_PRIORITY_BACKGR_COLOR,'
      '  x.PRODUCT_NAME,'
      '  x.PRODUCT_NO,'
      ''
      '  x.PRODUCT_DOC_BRANCH_CODE,'
      '  x.PRODUCT_DOC_CODE,'
      '  x.PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = x.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = x.ACCOUNT_MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      '  x.ACCOUNT_MEASURE_COEF'
      ''
      'from'
      '  ( select'
      
        '      /*+ ORDERED NO_USE_HASH(tfc tfp pr txd c p) NO_USE_MERGE(t' +
        'fc tfp pr txd c p) USE_NL(tfc tfp pr txd c p) INDEX(tfc) INDEX(t' +
        'fp) INDEX(pr) INDEX(txd) INDEX(c) INDEX(p) */'
      '      c.COMPANY_CODE as PARTNER_CODE,'
      '      :BORDER_REL_TYPE_CODE as BORDER_REL_TYPE_CODE,'
      '      p.PRODUCT_CODE,'
      '      txd.THE_FIRST_DATE,'
      ''
      '      c.COMPANY_CLASS_CODE,'
      ''
      
        '      Decode(pr.PARTNER_CODE, 0, null, pr.PRIORITY_CODE) as PART' +
        'NER_PRIORITY_CODE,'
      ''
      '      Decode(c.COMPANY_CLASS_CODE,'
      '        2,'
      '        ( select'
      
        '            (p.FIRST_NAME || '#39' '#39' || SubStr(p.MIDDLE_NAME, 1, 1) ' +
        '|| '#39'. '#39'  || p.LAST_NAME)'
      '          from'
      '            PERSONS p'
      '          where'
      '            (p.COMPANY_CODE = c.COMPANY_CODE)'
      '        ),'
      '        c.SHORT_NAME'
      '      ) as PARTNER_NAME,'
      ''
      '      c.DOC_BRANCH_CODE as PARTNER_DOC_BRANCH_CODE,'
      '      c.DOC_CODE as PARTNER_DOC_CODE,'
      '      %HAS_DOC_ITEMS[c] as PARTNER_HAS_DOC_ITEMS,'
      ''
      '      -- product fields'
      '      Decode('
      '        p.IS_COMMON,'
      '        1,'
      '        2,'
      '        Nvl2('
      '          ( select'
      '              dp.COMMON_PRODUCT_CODE'
      '            from'
      '              DEFINITE_PRODUCTS dp'
      '            where'
      '              (dp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '          ),'
      '          3,'
      '          1'
      '        )'
      '      ) as PRODUCT_COMMON_STATUS_CODE,'
      ''
      '      ( select'
      '          pbr.PRIORITY_CODE'
      '        from'
      '          PRODUCT_BORDER_RELS pbr'
      '        where'
      '          (pbr.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (pbr.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE)'
      '      ) as PRODUCT_PRIORITY_CODE,'
      ''
      '      p.NAME as PRODUCT_NAME,'
      '      p.CUSTOM_CODE as PRODUCT_NO,'
      ''
      '      p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '      p.DOC_CODE as PRODUCT_DOC_CODE,'
      '      %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      ''
      '      p.MEASURE_CODE,'
      '      p.ACCOUNT_MEASURE_CODE,'
      '      p.ACCOUNT_MEASURE_COEF,'
      ''
      
        '      ProductUtils.ProductPartnerPrice2(p.PRODUCT_CODE, c.COMPAN' +
        'Y_CODE, :BORDER_REL_TYPE_CODE, :OBTAINMENT_TYPE_CODE, txd.THE_FI' +
        'RST_DATE) as PRICE'
      ''
      '    from'
      '      TEMP_FILTERED_COMPANIES tfc,'
      '      TEMP_FILTERED_PRODUCTS tfp,'
      '      PAR_RELS pr,'
      '      %THE_X_DATES txd,'
      '      COMPANIES c,'
      '      PRODUCTS p'
      ''
      '    where'
      '      (txd.THE_FIRST_DATE between :BEGIN_DATE and :END_DATE) and'
      ''
      '      (pr.PARTNER_CODE = tfc.COMPANY_CODE) and'
      '      (pr.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      ''
      '      (c.COMPANY_CODE = tfc.COMPANY_CODE) and'
      ''
      '      (p.PRODUCT_CODE = tfp.PRODUCT_CODE) and'
      ''
      '      (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      '      (p.IS_GROUP = 0) and'
      '      (p.IS_INACTIVE = 0) and'
      ''
      '      ( (:REQUIRE_PRPP = 0) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            PAR_REL_PRODUCT_PERIODS prpp'
      '          where'
      '            (prpp.PARTNER_CODE = c.COMPANY_CODE) and'
      
        '            (prpp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) ' +
        'and'
      '            (prpp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      
        '            (txd.THE_FIRST_DATE between prpp.BEGIN_DATE and prpp' +
        '.END_DATE)'
      '        )'
      '      )'
      '  ) x'
      ''
      ''
      ''
      '------------------------------------'
      'union all'
      '------------------------------------'
      ''
      ''
      ''
      'select'
      '  To_Number(null) as PARTNER_CODE,'
      '  :BORDER_REL_TYPE_CODE as BORDER_REL_TYPE_CODE,'
      '  x.PRODUCT_CODE,'
      '  x.THE_FIRST_DATE as DATE_UNIT_FIRST_DATE,'
      
        '  (DateTimeUtils.TimeUnitsBetween(:BEGIN_DATE, x.THE_FIRST_DATE,' +
        ' :DATE_UNIT_CODE) + 1) as DATE_UNIT_NO,'
      ''
      '  ( select'
      '      vp.VAT_PERCENT'
      '    from'
      '      VAT_PERIODS vp'
      '    where'
      '      (x.THE_FIRST_DATE between vp.BEGIN_DATE and vp.END_DATE)'
      '  ) as VAT_PERCENT,'
      ''
      '  -- price fields'
      '  MiscUtils.GetNamedValue(x.PRICE, '#39'PRICE'#39') as SINGLE_PRICE,'
      
        '  MiscUtils.GetNamedValue(x.PRICE, '#39'CURRENCY_CODE'#39') as CURRENCY_' +
        'CODE,'
      ''
      '  ( select'
      '      crn.CURRENCY_ABBREV'
      '    from'
      '      CURRENCIES crn'
      '    where'
      
        '      (crn.CURRENCY_CODE = MiscUtils.GetNamedValue(x.PRICE, '#39'CUR' +
        'RENCY_CODE'#39'))'
      '  ) as CURRENCY_ABBREV,'
      ''
      '  ( MiscUtils.GetNamedValue(x.PRICE, '#39'CURRENCY_CODE'#39') *'
      '    ( select'
      '        cr.FIXING'
      '      from'
      '        CURRENCY_RATES cr'
      '      where'
      
        '        (cr.CURRENCY_CODE = MiscUtils.GetNamedValue(x.PRICE, '#39'CU' +
        'RRENCY_CODE'#39')) and'
      '        (cr.RATE_DATE = Least(x.THE_FIRST_DATE, ContextDate))'
      '    )'
      '  ) as BASE_SINGLE_PRICE,'
      ''
      '  ( select'
      '      tdu.THE_DATE_UNIT_NAME'
      '    from'
      '      THE_DATE_UNITS tdu'
      '    where'
      
        '      (tdu.THE_DATE_UNIT_CODE = MiscUtils.GetNamedValue(x.PRICE,' +
        ' '#39'DATE_UNIT_CODE'#39'))'
      '  ) as LEASE_DATE_UNIT_NAME,'
      '  -- end of price fields'
      ''
      '  To_Number(null) as PAR_REL_PRODUCT_STATUS_CODE,'
      ''
      
        '  Cast(null as Varchar2(250 char)) as PAR_REL_PRODUCT_STATUS_NAM' +
        'E,'
      ''
      '  To_Number(null) as PAR_REL_PRODUCT_EXIST_MONTHS,'
      ''
      '  To_Number(null) as PRP_STATUS_REACH_MONTHS,'
      ''
      '-- partner fields'
      '  To_Number(null) as PARTNER_STATUS_CODE,'
      ''
      '  Cast(null as Varchar2(250 char)) as PARTNER_STATUS_NAME,'
      ''
      '  To_Number(null) as PARTNER_EXISTENCE_MONTHS,'
      ''
      '  Cast(null as Varchar2(250 char)) as PARTNER_CLASS_ABBREV,'
      ''
      '  To_Number(null) as PARTNER_PRIORITY_NO,'
      '  To_Number(null) as PAR_PRIORITY_COLOR,'
      '  To_Number(null) as PAR_PRIORITY_BACKGROUND_COLOR,'
      '  Cast(null as Varchar2(250 char)) as PARTNER_NAME,'
      '  To_Number(null) as PARTNER_DOC_BRANCH_CODE,'
      '  To_Number(null) as PARTNER_DOC_CODE,'
      '  To_Number(null) as PARTNER_HAS_DOC_ITEMS,'
      ''
      '-- product fields'
      '  x.PRODUCT_COMMON_STATUS_CODE,'
      ''
      '  ( select'
      '      pr.PRIORITY_NO'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = x.PRODUCT_PRIORITY_CODE)'
      '  ) as PRODUCT_PRIORITY_NO,'
      '  ( select'
      '      pr.PRIORITY_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = x.PRODUCT_PRIORITY_CODE)'
      '  ) as PRODUCT_PRIORITY_COLOR,'
      '  ( select'
      '      pr.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = x.PRODUCT_PRIORITY_CODE)'
      '  ) as PRODUCT_PRIORITY_BACKGR_COLOR,'
      '  x.PRODUCT_NAME,'
      '  x.PRODUCT_NO,'
      ''
      '  x.PRODUCT_DOC_BRANCH_CODE,'
      '  x.PRODUCT_DOC_CODE,'
      '  x.PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = x.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = x.ACCOUNT_MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      '  x.ACCOUNT_MEASURE_COEF'
      ''
      'from'
      '  ( select'
      
        '      /*+ ORDERED NO_USE_HASH(tfp p txd) NO_USE_MERGE(tfp p txd)' +
        ' USE_NL(tfp p txd) INDEX(tfp) INDEX(p) INDEX(txd) */'
      '      p.PRODUCT_CODE,'
      '      txd.THE_FIRST_DATE,'
      ''
      '      -- product fields'
      '      Decode('
      '        p.IS_COMMON,'
      '        1,'
      '        2,'
      '        Nvl2('
      '          ( select'
      '              dp.COMMON_PRODUCT_CODE'
      '            from'
      '              DEFINITE_PRODUCTS dp'
      '            where'
      '              (dp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '          ),'
      '          3,'
      '          1'
      '        )'
      '      ) as PRODUCT_COMMON_STATUS_CODE,'
      ''
      '      ( select'
      '          pbr.PRIORITY_CODE'
      '        from'
      '          PRODUCT_BORDER_RELS pbr'
      '        where'
      '          (pbr.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (pbr.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE)'
      '      ) as PRODUCT_PRIORITY_CODE,'
      ''
      '      p.NAME as PRODUCT_NAME,'
      '      p.CUSTOM_CODE as PRODUCT_NO,'
      ''
      '      p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '      p.DOC_CODE as PRODUCT_DOC_CODE,'
      '      %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      ''
      '      p.MEASURE_CODE,'
      '      p.ACCOUNT_MEASURE_CODE,'
      '      p.ACCOUNT_MEASURE_COEF,'
      ''
      
        '      ProductUtils.ProductPartnerPrice2(p.PRODUCT_CODE, null, :B' +
        'ORDER_REL_TYPE_CODE, :OBTAINMENT_TYPE_CODE, txd.THE_FIRST_DATE) ' +
        'as PRICE'
      ''
      '    from'
      '      TEMP_FILTERED_PRODUCTS tfp,'
      '      PRODUCTS p,'
      '      %THE_X_DATES txd'
      ''
      '    where'
      '      (p.PRODUCT_CODE = tfp.PRODUCT_CODE) and'
      '      (txd.THE_FIRST_DATE between :BEGIN_DATE and :END_DATE) and'
      '      (:PAR_REL_PRODUCT_ORIENTATION = 1)'
      '  ) x'
      ''
      ''
      ''
      'order by'
      '  PARTNER_CODE,'
      '  BORDER_REL_TYPE_CODE,'
      '  PRODUCT_CODE,'
      '  DATE_UNIT_FIRST_DATE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[c]'
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
        DataType = ftString
        Name = 'THE_X_DATES'
        ParamType = ptInput
        Value = 'THE_DATES'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 568
    Top = 344
    object qryPriceListHAS_PARTNER: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'HAS_PARTNER'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object qryPriceListPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object qryPriceListBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object qryPriceListPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryPriceListDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField
      FieldName = 'DATE_UNIT_FIRST_DATE'
    end
    object qryPriceListDATE_UNIT_NO: TAbmesFloatField
      FieldName = 'DATE_UNIT_NO'
    end
    object qryPriceListVAT_PERCENT: TAbmesFloatField
      FieldName = 'VAT_PERCENT'
    end
    object qryPriceListSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object qryPriceListCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryPriceListCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object qryPriceListBASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'BASE_SINGLE_PRICE'
    end
    object qryPriceListLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qryPriceListPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_STATUS_CODE'
    end
    object qryPriceListPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
    end
    object qryPriceListPAR_REL_PRODUCT_EXIST_MONTHS: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_EXIST_MONTHS'
    end
    object qryPriceListPRP_STATUS_REACH_MONTHS: TAbmesFloatField
      FieldName = 'PRP_STATUS_REACH_MONTHS'
    end
    object qryPriceListPARTNER_STATUS_CODE: TAbmesFloatField
      FieldName = 'PARTNER_STATUS_CODE'
    end
    object qryPriceListPARTNER_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_STATUS_NAME'
      Size = 100
    end
    object qryPriceListPARTNER_EXISTENCE_MONTHS: TAbmesFloatField
      FieldName = 'PARTNER_EXISTENCE_MONTHS'
    end
    object qryPriceListPARTNER_CLASS_ABBREV: TAbmesWideStringField
      FieldName = 'PARTNER_CLASS_ABBREV'
      Size = 100
    end
    object qryPriceListPARTNER_PRIORITY_NO: TAbmesFloatField
      FieldName = 'PARTNER_PRIORITY_NO'
    end
    object qryPriceListPAR_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PAR_PRIORITY_COLOR'
    end
    object qryPriceListPAR_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PAR_PRIORITY_BACKGROUND_COLOR'
    end
    object qryPriceListPARTNER_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_NAME'
    end
    object qryPriceListPARTNER_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PARTNER_DOC_BRANCH_CODE'
    end
    object qryPriceListPARTNER_DOC_CODE: TAbmesFloatField
      FieldName = 'PARTNER_DOC_CODE'
    end
    object qryPriceListPARTNER_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PARTNER_HAS_DOC_ITEMS'
    end
    object qryPriceListPRODUCT_COMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_COMMON_STATUS_CODE'
    end
    object qryPriceListPRODUCT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_NO'
    end
    object qryPriceListPRODUCT_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_COLOR'
    end
    object qryPriceListPRODUCT_PRIORITY_BACKGR_COLOR: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_BACKGR_COLOR'
    end
    object qryPriceListPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryPriceListPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryPriceListPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryPriceListPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryPriceListPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object qryPriceListMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryPriceListACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryPriceListACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
  end
  object cdsPriceList: TAbmesClientDataSet
    Aggregates = <>
    IndexFieldNames = 'HAS_PARTNER;PARTNER_NAME; PRODUCT_NAME'
    Params = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PAR_REL_PRODUCT_ORIENTATION'
        ParamType = ptInput
        Value = '0'
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
        Name = 'DATE_UNIT_CODE'
        ParamType = ptInput
        Value = '3'
      end
      item
        DataType = ftFloat
        Name = 'DATE_UNIT_COUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRE_PRPP'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_EMPTY_LINES'
        ParamType = ptUnknown
        Value = '0'
      end>
    Left = 568
    Top = 296
  end
  object qryGetPeriodFieldNames: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'THE_DATE_UNIT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  TABLE_NAME,'
      '  YEAR_UNIT_NO_NAME'
      'from'
      '  THE_DATE_UNITS'
      'where'
      '  THE_DATE_UNIT_CODE = :THE_DATE_UNIT_CODE'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 712
    Top = 432
    object qryGetPeriodFieldNamesTABLE_NAME: TAbmesWideStringField
      FieldName = 'TABLE_NAME'
      Size = 50
    end
    object qryGetPeriodFieldNamesYEAR_UNIT_NO_NAME: TAbmesWideStringField
      FieldName = 'YEAR_UNIT_NO_NAME'
      Size = 50
    end
  end
  object prvEstQuantitiesTable: TDataSetProvider
    DataSet = cdsEstQuantitiesTable
    OnGetData = prvEstQuantitiesTableGetData
    BeforeGetRecords = prvEstQuantitiesTableBeforeGetRecords
    AfterGetRecords = prvEstQuantitiesTableAfterGetRecords
    Left = 80
    Top = 400
  end
  object qryEstQuantitiesTable: TAbmesSQLQuery
    BeforeOpen = qryEstQuantitiesTableBeforeOpen
    AfterClose = qryEstQuantitiesTableAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_PROJECT_QUANTITIES'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftTimeStamp
        Name = 'BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BASE_DATE'
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
        Name = 'BASE_DATE'
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
        Name = 'BASE_DATE'
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
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '-- tova query razchita na joini s TEMP_FILTERED_PRODUCTS'
      
        '-- i ne izpolzva ALL_FILTERED_PRODUCTS, nito filtar po PRODUCT_C' +
        'LASS'
      
        '-- ako mu se slaga ALL_FILTERED_PRODUCTS, triabva i filtar po PR' +
        'ODUCT_CLASS da mu se sloji'
      'select'
      '  s.PRODUCT_CODE,'
      '  s.PRODUCT_NAME,'
      '  s.PRODUCT_NO,'
      '  s.PARTNER_PRODUCT_NAMES,'
      '  s.PRODUCT_DOC_BRANCH_CODE,'
      '  s.PRODUCT_DOC_CODE,'
      '  s.PRODUCT_HAS_DOC_ITEMS,'
      '  s.MEASURE_ABBREV,'
      '  s.ACCOUNT_MEASURE_ABBREV,'
      ''
      '  s.DATE_UNIT_FIRST_DATE,'
      '  s.DATE_UNIT_NO,'
      ''
      '  s.IN_SALE_COVER_QUANTITY,'
      '  s.ACC_IN_SALE_COVER_QUANTITY,'
      '  s.IN_SALE_COVER_PRICE,'
      ''
      '  s.IN_CONSIGN_QUANTITY,'
      '  s.ACC_IN_CONSIGN_QUANTITY,'
      '  s.IN_CONSIGN_PRICE,'
      ''
      '  s.IN_ENV_COVER_QUANTITY,'
      '  s.ACC_IN_ENV_COVER_QUANTITY,'
      '  s.IN_ENV_COVER_PRICE,'
      ''
      '  s.IN_MODEL_QUANTITY,'
      '  s.ACC_IN_MODEL_QUANTITY,'
      '  s.IN_MODEL_PRICE,'
      ''
      '  s.IN_PAY_SALE_ACQUIRE_QTY,'
      '  s.ACC_IN_PAY_SALE_ACQUIRE_QTY,'
      '  s.IN_PAY_SALE_ACQUIRE_PRICE,'
      ''
      '  s.IN_PAY_SALE_LEASE_QTY,'
      '  s.ACC_IN_PAY_SALE_LEASE_QTY,'
      '  s.IN_PAY_SALE_LEASE_PRICE,'
      ''
      '  s.IN_PAY_FIN_SALE_QTY,'
      '  s.ACC_IN_PAY_FIN_SALE_QTY,'
      '  s.IN_PAY_FIN_SALE_PRICE,'
      ''
      
        '-- ne izpolzvame smetnatite veche IN_TOTAL, za da ne vkluchvame ' +
        'IN_PAY_XXX'
      '--  s.IN_TOTAL_QUANTITY,'
      '--  s.ACC_IN_TOTAL_QUANTITY,'
      '--  s.IN_TOTAL_PRICE,'
      ''
      '  NullIf('
      '    ('
      '      Coalesce(s.IN_SALE_COVER_QUANTITY, 0) +'
      '      Coalesce(s.IN_CONSIGN_QUANTITY, 0) +'
      '      Coalesce(s.IN_ENV_COVER_QUANTITY, 0) +'
      '      Coalesce(s.IN_MODEL_QUANTITY, 0)'
      '--      Coalesce(s.IN_PAY_SALE_ACQUIRE_QTY, 0) +'
      '--      Coalesce(s.IN_PAY_SALE_LEASE_QTY, 0) +'
      '--      Coalesce(s.IN_PAY_FIN_SALE_QTY, 0)'
      '    ),'
      '    0'
      '  ) as IN_TOTAL_QUANTITY,'
      ''
      '  NullIf('
      '    ('
      '      Coalesce(s.ACC_IN_SALE_COVER_QUANTITY, 0) +'
      '      Coalesce(s.ACC_IN_CONSIGN_QUANTITY, 0) +'
      '      Coalesce(s.ACC_IN_ENV_COVER_QUANTITY, 0) +'
      '      Coalesce(s.ACC_IN_MODEL_QUANTITY, 0)'
      '--      Coalesce(s.ACC_IN_PAY_SALE_ACQUIRE_QTY, 0) +'
      '--      Coalesce(s.ACC_IN_PAY_SALE_LEASE_QTY, 0) +'
      '--      Coalesce(s.ACC_IN_PAY_FIN_SALE_QTY, 0)'
      '    ),'
      '    0'
      '  ) as ACC_IN_TOTAL_QUANTITY,'
      ''
      '  NullIf('
      '    ('
      '      Coalesce(s.IN_SALE_COVER_PRICE, 0) +'
      '      Coalesce(s.IN_CONSIGN_PRICE, 0) +'
      '      Coalesce(s.IN_ENV_COVER_PRICE, 0) +'
      '      Coalesce(s.IN_MODEL_PRICE, 0)'
      '--      Coalesce(s.IN_PAY_SALE_ACQUIRE_PRICE, 0) +'
      '--      Coalesce(s.IN_PAY_SALE_LEASE_PRICE, 0) +'
      '--      Coalesce(s.IN_PAY_FIN_SALE_PRICE, 0)'
      '    ),'
      '    0'
      '  ) as IN_TOTAL_PRICE,'
      ''
      '  s.OUT_SALE_ACQUIRE_QUANTITY,'
      '  s.ACC_OUT_SALE_ACQUIRE_QUANTITY,'
      '  s.OUT_SALE_ACQUIRE_PRICE,'
      ''
      '  s.OUT_SALE_CONSIGN_QUANTITY,'
      '  s.ACC_OUT_SALE_CONSIGN_QUANTITY,'
      '  s.OUT_SALE_CONSIGN_PRICE,'
      ''
      '  s.OUT_SPEC_ACQUIRE_QUANTITY,'
      '  s.ACC_OUT_SPEC_ACQUIRE_QUANTITY,'
      '  s.OUT_SPEC_ACQUIRE_PRICE,'
      ''
      '  s.OUT_SPEC_CONSIGN_QUANTITY,'
      '  s.ACC_OUT_SPEC_CONSIGN_QUANTITY,'
      '  s.OUT_SPEC_CONSIGN_PRICE,'
      ''
      '  s.OUT_PAY_SALE_COVER_ACQ_QTY,'
      '  s.ACC_OUT_PAY_SALE_COVER_ACQ_QTY,'
      '  s.OUT_PAY_SALE_COVER_ACQ_PRICE,'
      ''
      '  s.OUT_PAY_SALE_COVER_LEASE_QTY,'
      '  s.ACC_OUT_PAY_SALE_COVER_LSE_QTY,'
      '  s.OUT_PAY_SALE_COVER_LSE_PRICE,'
      ''
      '  s.OUT_PAY_ENV_COVER_ACQUIRE_QTY,'
      '  s.ACC_OUT_PAY_ENV_COVER_ACQ_QTY,'
      '  s.OUT_PAY_ENV_COVER_ACQ_PRICE,'
      ''
      '  s.OUT_PAY_ENV_COVER_LEASE_QTY,'
      '  s.ACC_OUT_PAY_ENV_COVER_LSE_QTY,'
      '  s.OUT_PAY_ENV_COVER_LSE_PRICE,'
      ''
      '  s.OUT_PAY_FIN_DELIVERY_QTY,'
      '  s.ACC_OUT_PAY_FIN_DELIVERY_QTY,'
      '  s.OUT_PAY_FIN_DELIVERY_PRICE,'
      ''
      '  s.OUT_PAY_BUDGET_DELIVERY_QTY,'
      '  s.ACC_OUT_PAY_BUDGET_DELIV_QTY,'
      '  s.OUT_PAY_BUDGET_DELIV_PRICE,'
      ''
      
        '-- ne izpolzvame smetnatite veche OUT_TOTAL, za da ne vkluchvame' +
        ' OUT_PAY_XXX'
      '--  s.OUT_TOTAL_QUANTITY,'
      '--  s.ACC_OUT_TOTAL_QUANTITY,'
      '--  s.OUT_TOTAL_PRICE,'
      ''
      '  NullIf('
      '    ('
      '      Coalesce(s.OUT_SALE_ACQUIRE_QUANTITY, 0) +'
      '      Coalesce(s.OUT_SALE_CONSIGN_QUANTITY, 0) +'
      '      Coalesce(s.OUT_SPEC_ACQUIRE_QUANTITY, 0) +'
      '      Coalesce(s.OUT_SPEC_CONSIGN_QUANTITY, 0)'
      '--      Coalesce(s.OUT_PAY_SALE_COVER_ACQ_QTY, 0) +'
      '--      Coalesce(s.OUT_PAY_SALE_COVER_LEASE_QTY, 0) +'
      '--      Coalesce(s.OUT_PAY_ENV_COVER_ACQUIRE_QTY, 0) +'
      '--      Coalesce(s.OUT_PAY_ENV_COVER_LEASE_QTY, 0) +'
      '--      Coalesce(s.OUT_PAY_FIN_DELIVERY_QTY, 0) +'
      '--      Coalesce(s.OUT_PAY_BUDGET_DELIVERY_QTY, 0)'
      '    ),'
      '    0'
      '  ) as OUT_TOTAL_QUANTITY,'
      ''
      '  NullIf('
      '    ('
      '      Coalesce(s.ACC_OUT_SALE_ACQUIRE_QUANTITY, 0) +'
      '      Coalesce(s.ACC_OUT_SALE_CONSIGN_QUANTITY, 0) +'
      '      Coalesce(s.ACC_OUT_SPEC_ACQUIRE_QUANTITY, 0) +'
      '      Coalesce(s.ACC_OUT_SPEC_CONSIGN_QUANTITY, 0)'
      '--      Coalesce(s.ACC_OUT_PAY_SALE_COVER_ACQ_QTY, 0) +'
      '--      Coalesce(s.ACC_OUT_PAY_SALE_COVER_LEASE_QTY, 0) +'
      '--      Coalesce(s.ACC_OUT_PAY_ENV_COVER_ACQUIRE_QTY, 0) +'
      '--      Coalesce(s.ACC_OUT_PAY_ENV_COVER_LEASE_QTY, 0) +'
      '--      Coalesce(s.ACC_OUT_PAY_FIN_DELIVERY_QTY, 0) +'
      '--      Coalesce(s.ACC_OUT_PAY_BUDGET_DELIVERY_QTY, 0)'
      '    ),'
      '    0'
      '  ) as ACC_OUT_TOTAL_QUANTITY,'
      ''
      '  NullIf('
      '    ('
      '      Coalesce(s.OUT_SALE_ACQUIRE_PRICE, 0) +'
      '      Coalesce(s.OUT_SALE_CONSIGN_PRICE, 0) +'
      '      Coalesce(s.OUT_SPEC_ACQUIRE_PRICE, 0) +'
      '      Coalesce(s.OUT_SPEC_CONSIGN_PRICE, 0)'
      '--      Coalesce(s.OUT_PAY_SALE_COVER_ACQ_PRICE, 0) +'
      '--      Coalesce(s.OUT_PAY_SALE_COVER_LEASE_PRICE, 0) +'
      '--      Coalesce(s.OUT_PAY_ENV_COVER_ACQUIRE_PRICE, 0) +'
      '--      Coalesce(s.OUT_PAY_ENV_COVER_LEASE_PRICE, 0) +'
      '--      Coalesce(s.OUT_PAY_FIN_DELIVERY_PRICE, 0) +'
      '--      Coalesce(s.OUT_PAY_BUDGET_DELIVERY_PRICE, 0)'
      '    ),'
      '    0'
      '  ) as OUT_TOTAL_PRICE,'
      ''
      '  s.TOTAL_QUANTITY,'
      '  s.ACC_TOTAL_QUANTITY,'
      '  s.TOTAL_PRICE,'
      ''
      '  s.DEFICIT_QUANTITY,'
      '  s.ACC_DEFICIT_QUANTITY,'
      '  s.DEFICIT_PRICE,'
      ''
      '  s.PASSIVE_QUANTITY,'
      '  s.ACC_PASSIVE_QUANTITY,'
      '  s.PASSIVE_PRICE'
      ''
      'from'
      '  ( select'
      '      p.PRODUCT_CODE,'
      '      p.NAME as PRODUCT_NAME,'
      '      p.CUSTOM_CODE as PRODUCT_NO,'
      '      p.PARTNER_PRODUCT_NAMES,'
      '      p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '      p.DOC_CODE as PRODUCT_DOC_CODE,'
      '      %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      ''
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.MEASURE_CODE)'
      '      ) as MEASURE_ABBREV,'
      ''
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '      ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      '      t.THE_FIRST_DATE as DATE_UNIT_FIRST_DATE,'
      
        '      (DateTimeUtils.TimeUnitsBetween(:BEGIN_DATE, t.THE_FIRST_D' +
        'ATE, :DATE_UNIT_CODE) + 1) as DATE_UNIT_NO,'
      ''
      '      t.IN_SALE_COVER_QUANTITY,'
      
        '      (t.IN_SALE_COVER_QUANTITY * t.ACCOUNT_MEASURE_COEF) as ACC' +
        '_IN_SALE_COVER_QUANTITY,'
      
        '      (t.IN_SALE_COVER_QUANTITY * t.SINGLE_PRICE) as IN_SALE_COV' +
        'ER_PRICE,'
      ''
      '      t.IN_CONSIGN_QUANTITY,'
      
        '      (t.IN_CONSIGN_QUANTITY * t.ACCOUNT_MEASURE_COEF) as ACC_IN' +
        '_CONSIGN_QUANTITY,'
      
        '      (t.IN_CONSIGN_QUANTITY * t.SINGLE_PRICE) as IN_CONSIGN_PRI' +
        'CE,'
      ''
      '      t.IN_ENV_COVER_QUANTITY,'
      
        '      (t.IN_ENV_COVER_QUANTITY * t.ACCOUNT_MEASURE_COEF) as ACC_' +
        'IN_ENV_COVER_QUANTITY,'
      
        '      (t.IN_ENV_COVER_QUANTITY * t.SINGLE_PRICE) as IN_ENV_COVER' +
        '_PRICE,'
      ''
      '      t.IN_MODEL_QUANTITY,'
      
        '      (t.IN_MODEL_QUANTITY * t.ACCOUNT_MEASURE_COEF) as ACC_IN_M' +
        'ODEL_QUANTITY,'
      '      (t.IN_MODEL_QUANTITY * t.SINGLE_PRICE) as IN_MODEL_PRICE,'
      ''
      '      t.IN_PAY_SALE_ACQUIRE_QTY,'
      
        '      (t.IN_PAY_SALE_ACQUIRE_QTY * t.ACCOUNT_MEASURE_COEF) as AC' +
        'C_IN_PAY_SALE_ACQUIRE_QTY,'
      
        '      (t.IN_PAY_SALE_ACQUIRE_QTY * t.SINGLE_PRICE) as IN_PAY_SAL' +
        'E_ACQUIRE_PRICE,'
      ''
      '      t.IN_PAY_SALE_LEASE_QTY,'
      
        '      (t.IN_PAY_SALE_LEASE_QTY * t.ACCOUNT_MEASURE_COEF) as ACC_' +
        'IN_PAY_SALE_LEASE_QTY,'
      
        '      (t.IN_PAY_SALE_LEASE_QTY * t.SINGLE_PRICE) as IN_PAY_SALE_' +
        'LEASE_PRICE,'
      ''
      '      t.IN_PAY_FIN_SALE_QTY,'
      
        '      (t.IN_PAY_FIN_SALE_QTY * t.ACCOUNT_MEASURE_COEF) as ACC_IN' +
        '_PAY_FIN_SALE_QTY,'
      
        '      (t.IN_PAY_FIN_SALE_QTY * t.SINGLE_PRICE) as IN_PAY_FIN_SAL' +
        'E_PRICE,'
      ''
      '      t.IN_TOTAL_QUANTITY,'
      
        '      (t.IN_TOTAL_QUANTITY * t.ACCOUNT_MEASURE_COEF) as ACC_IN_T' +
        'OTAL_QUANTITY,'
      '      (t.IN_TOTAL_QUANTITY * t.SINGLE_PRICE) as IN_TOTAL_PRICE,'
      ''
      '      t.OUT_SALE_ACQUIRE_QUANTITY,'
      
        '      (t.OUT_SALE_ACQUIRE_QUANTITY * t.ACCOUNT_MEASURE_COEF) as ' +
        'ACC_OUT_SALE_ACQUIRE_QUANTITY,'
      
        '      (t.OUT_SALE_ACQUIRE_QUANTITY * t.SINGLE_PRICE) as OUT_SALE' +
        '_ACQUIRE_PRICE,'
      ''
      '      t.OUT_SALE_CONSIGN_QUANTITY,'
      
        '      (t.OUT_SALE_CONSIGN_QUANTITY * t.ACCOUNT_MEASURE_COEF) as ' +
        'ACC_OUT_SALE_CONSIGN_QUANTITY,'
      
        '      (t.OUT_SALE_CONSIGN_QUANTITY * t.SINGLE_PRICE) as OUT_SALE' +
        '_CONSIGN_PRICE,'
      ''
      '      t.OUT_SPEC_ACQUIRE_QUANTITY,'
      
        '      (t.OUT_SPEC_ACQUIRE_QUANTITY * t.ACCOUNT_MEASURE_COEF) as ' +
        'ACC_OUT_SPEC_ACQUIRE_QUANTITY,'
      
        '      (t.OUT_SPEC_ACQUIRE_QUANTITY * t.SINGLE_PRICE) as OUT_SPEC' +
        '_ACQUIRE_PRICE,'
      ''
      '      t.OUT_SPEC_CONSIGN_QUANTITY,'
      
        '      (t.OUT_SPEC_CONSIGN_QUANTITY * t.ACCOUNT_MEASURE_COEF) as ' +
        'ACC_OUT_SPEC_CONSIGN_QUANTITY,'
      
        '      (t.OUT_SPEC_CONSIGN_QUANTITY * t.SINGLE_PRICE) as OUT_SPEC' +
        '_CONSIGN_PRICE,'
      ''
      
        '      t.OUT_PAY_SALE_COVER_ACQUIRE_QTY as OUT_PAY_SALE_COVER_ACQ' +
        '_QTY,'
      
        '      (t.OUT_PAY_SALE_COVER_ACQUIRE_QTY * t.ACCOUNT_MEASURE_COEF' +
        ') as ACC_OUT_PAY_SALE_COVER_ACQ_QTY,'
      
        '      (t.OUT_PAY_SALE_COVER_ACQUIRE_QTY * t.SINGLE_PRICE) as OUT' +
        '_PAY_SALE_COVER_ACQ_PRICE,'
      ''
      '      t.OUT_PAY_SALE_COVER_LEASE_QTY,'
      
        '      (t.OUT_PAY_SALE_COVER_LEASE_QTY * t.ACCOUNT_MEASURE_COEF) ' +
        'as ACC_OUT_PAY_SALE_COVER_LSE_QTY,'
      
        '      (t.OUT_PAY_SALE_COVER_LEASE_QTY * t.SINGLE_PRICE) as OUT_P' +
        'AY_SALE_COVER_LSE_PRICE,'
      ''
      '      t.OUT_PAY_ENV_COVER_ACQUIRE_QTY,'
      
        '      (t.OUT_PAY_ENV_COVER_ACQUIRE_QTY * t.ACCOUNT_MEASURE_COEF)' +
        ' as ACC_OUT_PAY_ENV_COVER_ACQ_QTY,'
      
        '      (t.OUT_PAY_ENV_COVER_ACQUIRE_QTY * t.SINGLE_PRICE) as OUT_' +
        'PAY_ENV_COVER_ACQ_PRICE,'
      ''
      '      t.OUT_PAY_ENV_COVER_LEASE_QTY,'
      
        '      (t.OUT_PAY_ENV_COVER_LEASE_QTY * t.ACCOUNT_MEASURE_COEF) a' +
        's ACC_OUT_PAY_ENV_COVER_LSE_QTY,'
      
        '      (t.OUT_PAY_ENV_COVER_LEASE_QTY * t.SINGLE_PRICE) as OUT_PA' +
        'Y_ENV_COVER_LSE_PRICE,'
      ''
      '      t.OUT_PAY_FIN_DELIVERY_QTY,'
      
        '      (t.OUT_PAY_FIN_DELIVERY_QTY * t.ACCOUNT_MEASURE_COEF) as A' +
        'CC_OUT_PAY_FIN_DELIVERY_QTY,'
      
        '      (t.OUT_PAY_FIN_DELIVERY_QTY * t.SINGLE_PRICE) as OUT_PAY_F' +
        'IN_DELIVERY_PRICE,'
      ''
      '      t.OUT_PAY_BUDGET_DELIVERY_QTY,'
      
        '      (t.OUT_PAY_BUDGET_DELIVERY_QTY * t.ACCOUNT_MEASURE_COEF) a' +
        's ACC_OUT_PAY_BUDGET_DELIV_QTY,'
      
        '      (t.OUT_PAY_BUDGET_DELIVERY_QTY * t.SINGLE_PRICE) as OUT_PA' +
        'Y_BUDGET_DELIV_PRICE,'
      ''
      '      t.OUT_TOTAL_QUANTITY,'
      
        '      (t.OUT_TOTAL_QUANTITY * t.ACCOUNT_MEASURE_COEF) as ACC_OUT' +
        '_TOTAL_QUANTITY,'
      
        '      (t.OUT_TOTAL_QUANTITY * t.SINGLE_PRICE) as OUT_TOTAL_PRICE' +
        ','
      ''
      '      t.TOTAL_QUANTITY,'
      
        '      (t.TOTAL_QUANTITY * t.ACCOUNT_MEASURE_COEF) as ACC_TOTAL_Q' +
        'UANTITY,'
      '      (t.TOTAL_QUANTITY * t.SINGLE_PRICE) as TOTAL_PRICE,'
      ''
      '      t.DEFICIT_QUANTITY,'
      
        '      (t.DEFICIT_QUANTITY * t.ACCOUNT_MEASURE_COEF) as ACC_DEFIC' +
        'IT_QUANTITY,'
      '      (t.DEFICIT_QUANTITY * t.SINGLE_PRICE) as DEFICIT_PRICE,'
      ''
      '      t.PASSIVE_QUANTITY,'
      
        '      (t.PASSIVE_QUANTITY * t.ACCOUNT_MEASURE_COEF) as ACC_PASSI' +
        'VE_QUANTITY,'
      '      (t.PASSIVE_QUANTITY * t.SINGLE_PRICE) as PASSIVE_PRICE'
      ''
      '    from'
      '      ( select'
      '          z.PRODUCT_CODE,'
      '          z.THE_FIRST_DATE,'
      '          z.THE_LAST_DATE,'
      ''
      '          z.IN_SALE_COVER_QUANTITY,'
      '          z.IN_ENV_COVER_QUANTITY,'
      '          z.IN_CONSIGN_QUANTITY,'
      '          z.IN_MODEL_QUANTITY,'
      '          z.IN_PAY_SALE_ACQUIRE_QTY,'
      '          z.IN_PAY_SALE_LEASE_QTY,'
      '          z.IN_PAY_FIN_SALE_QTY,'
      '          z.IN_TOTAL_QUANTITY,'
      ''
      '          z.OUT_SALE_ACQUIRE_QUANTITY,'
      '          z.OUT_SALE_CONSIGN_QUANTITY,'
      '          z.OUT_SPEC_ACQUIRE_QUANTITY,'
      '          z.OUT_SPEC_CONSIGN_QUANTITY,'
      '          z.OUT_PAY_SALE_COVER_ACQUIRE_QTY,'
      '          z.OUT_PAY_SALE_COVER_LEASE_QTY,'
      '          z.OUT_PAY_ENV_COVER_ACQUIRE_QTY,'
      '          z.OUT_PAY_ENV_COVER_LEASE_QTY,'
      '          z.OUT_PAY_FIN_DELIVERY_QTY,'
      '          z.OUT_PAY_BUDGET_DELIVERY_QTY,'
      '          z.OUT_TOTAL_QUANTITY,'
      ''
      '          z.TOTAL_QUANTITY,'
      '          z.DEFICIT_QUANTITY,'
      '          z.PASSIVE_QUANTITY,'
      ''
      '          Max('
      '            Coalesce(z.IN_TOTAL_QUANTITY, 0) +'
      '            Coalesce(z.OUT_TOTAL_QUANTITY, 0) +'
      '            Coalesce(Abs(z.TOTAL_QUANTITY), 0) +'
      '            Coalesce(Abs(z.DEFICIT_QUANTITY), 0) +'
      '            Coalesce(z.PASSIVE_QUANTITY, 0)'
      
        '          ) over (partition by z.PRODUCT_CODE) as MAX_ALL_QUANTI' +
        'TY,'
      ''
      
        '          %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[z.PRODUCT_CODE ~ z.' +
        'THE_FIRST_DATE] as SINGLE_PRICE,'
      ''
      '          ( select'
      '              p.MEASURE_CODE'
      '            from'
      '              PRODUCTS p'
      '            where'
      '              (p.PRODUCT_CODE = z.PRODUCT_CODE)'
      '          ) as MEASURE_CODE,'
      ''
      '          ( select'
      '              p.ACCOUNT_MEASURE_COEF'
      '            from'
      '              PRODUCTS p'
      '            where'
      '              (p.PRODUCT_CODE = z.PRODUCT_CODE)'
      '          ) as ACCOUNT_MEASURE_COEF'
      ''
      '        from'
      '          ( select'
      '              y.PRODUCT_CODE,'
      '              y.THE_FIRST_DATE,'
      '              y.THE_LAST_DATE,'
      ''
      '              y.IN_SALE_COVER_QUANTITY,'
      '              y.IN_ENV_COVER_QUANTITY,'
      '              y.IN_CONSIGN_QUANTITY,'
      '              y.IN_MODEL_QUANTITY,'
      '              y.IN_PAY_SALE_ACQUIRE_QTY,'
      '              y.IN_PAY_SALE_LEASE_QTY,'
      '              y.IN_PAY_FIN_SALE_QTY,'
      '              y.IN_TOTAL_QUANTITY,'
      ''
      '              y.OUT_SALE_ACQUIRE_QUANTITY,'
      '              y.OUT_SALE_CONSIGN_QUANTITY,'
      '              y.OUT_SPEC_ACQUIRE_QUANTITY,'
      '              y.OUT_SPEC_CONSIGN_QUANTITY,'
      '              y.OUT_PAY_SALE_COVER_ACQUIRE_QTY,'
      '              y.OUT_PAY_SALE_COVER_LEASE_QTY,'
      '              y.OUT_PAY_ENV_COVER_ACQUIRE_QTY,'
      '              y.OUT_PAY_ENV_COVER_LEASE_QTY,'
      '              y.OUT_PAY_FIN_DELIVERY_QTY,'
      '              y.OUT_PAY_BUDGET_DELIVERY_QTY,'
      '              y.OUT_TOTAL_QUANTITY,'
      ''
      '              Decode(Sign(ContextDate - y.THE_LAST_DATE),'
      '                1, To_Number(null),'
      '                ( Coalesce(y.PRIOR_AGGR_QUANTITY, 0) +'
      '                  Coalesce(y.BASE_QUANTITY, 0) +'
      '                  Coalesce(y.IN_TOTAL_QUANTITY, 0) -'
      '                  Coalesce(y.OUT_TOTAL_QUANTITY, 0)'
      '                )'
      '              ) as TOTAL_QUANTITY,'
      ''
      '              Decode(Sign(ContextDate - y.THE_LAST_DATE),'
      '                1, To_Number(null),'
      '                Least('
      
        '                  ( Greatest(Coalesce(y.PRIOR_AGGR_QUANTITY, 0),' +
        ' 0) +'
      '                    Coalesce(y.BASE_QUANTITY, 0) +'
      '                    Coalesce(y.IN_TOTAL_QUANTITY, 0) -'
      '                    Coalesce(y.OUT_TOTAL_QUANTITY, 0)'
      '                  ),'
      '                  0'
      '                )'
      '              ) as DEFICIT_QUANTITY,'
      ''
      '              Decode(Sign(ContextDate - y.THE_LAST_DATE),'
      '                1, To_Number(null),'
      '                Greatest('
      '                  0,'
      '                  Min('
      '                    Coalesce(y.PRIOR_AGGR_QUANTITY, 0) +'
      '                    Coalesce(y.BASE_QUANTITY, 0) +'
      '                    Coalesce(y.IN_TOTAL_QUANTITY, 0) -'
      '                    Coalesce(y.OUT_TOTAL_QUANTITY, 0)'
      
        '                  ) over (partition by y.PRODUCT_CODE order by y' +
        '.THE_FIRST_DATE range between current row and unbounded followin' +
        'g)'
      '                )'
      '              ) as PASSIVE_QUANTITY'
      ''
      '            from'
      '              ( select'
      '                  x.PRODUCT_CODE,'
      '                  x.THE_FIRST_DATE,'
      '                  x.THE_LAST_DATE,'
      ''
      '                  x.IN_SALE_COVER_QUANTITY,'
      '                  x.IN_ENV_COVER_QUANTITY,'
      '                  x.IN_CONSIGN_QUANTITY,'
      '                  x.IN_MODEL_QUANTITY,'
      '                  x.IN_PAY_SALE_ACQUIRE_QTY,'
      '                  x.IN_PAY_SALE_LEASE_QTY,'
      '                  x.IN_PAY_FIN_SALE_QTY,'
      '                  x.IN_TOTAL_QUANTITY,'
      ''
      '                  x.OUT_SALE_ACQUIRE_QUANTITY,'
      '                  x.OUT_SALE_CONSIGN_QUANTITY,'
      '                  x.OUT_SPEC_ACQUIRE_QUANTITY,'
      '                  x.OUT_SPEC_CONSIGN_QUANTITY,'
      '                  x.OUT_PAY_SALE_COVER_ACQUIRE_QTY,'
      '                  x.OUT_PAY_SALE_COVER_LEASE_QTY,'
      '                  x.OUT_PAY_ENV_COVER_ACQUIRE_QTY,'
      '                  x.OUT_PAY_ENV_COVER_LEASE_QTY,'
      '                  x.OUT_PAY_FIN_DELIVERY_QTY,'
      '                  x.OUT_PAY_BUDGET_DELIVERY_QTY,'
      '                  x.OUT_TOTAL_QUANTITY,'
      ''
      '                  Sum('
      '                    Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '                      1, null,'
      
        '                      Coalesce(x.IN_TOTAL_QUANTITY, 0) - Coalesc' +
        'e(x.OUT_TOTAL_QUANTITY, 0)'
      '                    )'
      
        '                  ) over (partition by x.PRODUCT_CODE order by x' +
        '.THE_FIRST_DATE range between unbounded preceding and 1 precedin' +
        'g)'
      '                  as PRIOR_AGGR_QUANTITY,'
      ''
      '                  ( select'
      '                      Sum('
      '                        Coalesce(asd.REAL_QUANTITY, 0) +'
      '                        Coalesce(asd.PLANNED_QUANTITY, 0) +'
      
        '                        Decode(:INCLUDE_PROJECT_QUANTITIES, 1, C' +
        'oalesce(asd.PROJECTED_QUANTITY, 0), 0)'
      
        '                      ) keep (dense_rank last order by asd.STORE' +
        '_DEAL_DATE)'
      '                    from'
      '                      AGGR_STORE_DEALS asd'
      '                    where'
      '                      (asd.PRODUCT_CODE = x.PRODUCT_CODE) and'
      '                      (asd.STORE_DEAL_DATE <= :BASE_DATE)'
      '                  ) as BASE_QUANTITY'
      ''
      '                from'
      '                  ( select'
      '                      w.PRODUCT_CODE,'
      '                      w.THE_FIRST_DATE,'
      '                      w.THE_LAST_DATE,'
      '                      w.WORKDAYS,'
      '                  '
      
        '                      Sum(w.IN_SALE_COVER_QUANTITY) as IN_SALE_C' +
        'OVER_QUANTITY,'
      
        '                      Sum(w.IN_ENV_COVER_QUANTITY) as IN_ENV_COV' +
        'ER_QUANTITY,'
      
        '                      Sum(w.IN_CONSIGN_QUANTITY) as IN_CONSIGN_Q' +
        'UANTITY,'
      
        '                      Sum(w.IN_MODEL_QUANTITY) as IN_MODEL_QUANT' +
        'ITY,'
      
        '                      Sum(w.IN_PAY_SALE_ACQUIRE_QTY) as IN_PAY_S' +
        'ALE_ACQUIRE_QTY,'
      
        '                      Sum(w.IN_PAY_SALE_LEASE_QTY) as IN_PAY_SAL' +
        'E_LEASE_QTY,'
      
        '                      Sum(w.IN_PAY_FIN_SALE_QTY) as IN_PAY_FIN_S' +
        'ALE_QTY,'
      ''
      
        '                      ( Coalesce(Sum(w.IN_SALE_COVER_QUANTITY), ' +
        '0) +'
      
        '                        Coalesce(Sum(w.IN_ENV_COVER_QUANTITY), 0' +
        ') +'
      
        '                        Coalesce(Sum(w.IN_CONSIGN_QUANTITY), 0) ' +
        '+'
      '                        Coalesce(Sum(w.IN_MODEL_QUANTITY), 0) +'
      
        '                        Coalesce(Sum(w.IN_PAY_SALE_ACQUIRE_QTY),' +
        ' 0) +'
      
        '                        Coalesce(Sum(w.IN_PAY_SALE_LEASE_QTY), 0' +
        ') +'
      '                        Coalesce(Sum(w.IN_PAY_FIN_SALE_QTY), 0)'
      '                      ) as IN_TOTAL_QUANTITY,'
      ''
      
        '                      Sum(w.OUT_SALE_ACQUIRE_QUANTITY) as OUT_SA' +
        'LE_ACQUIRE_QUANTITY,'
      
        '                      Sum(w.OUT_SALE_CONSIGN_QUANTITY) as OUT_SA' +
        'LE_CONSIGN_QUANTITY,'
      
        '                      Sum(w.OUT_SPEC_ACQUIRE_QUANTITY) as OUT_SP' +
        'EC_ACQUIRE_QUANTITY,'
      
        '                      Sum(w.OUT_SPEC_CONSIGN_QUANTITY) as OUT_SP' +
        'EC_CONSIGN_QUANTITY,'
      
        '                      Sum(w.OUT_PAY_SALE_COVER_ACQUIRE_QTY) as O' +
        'UT_PAY_SALE_COVER_ACQUIRE_QTY,'
      
        '                      Sum(w.OUT_PAY_SALE_COVER_LEASE_QTY) as OUT' +
        '_PAY_SALE_COVER_LEASE_QTY,'
      
        '                      Sum(w.OUT_PAY_ENV_COVER_ACQUIRE_QTY) as OU' +
        'T_PAY_ENV_COVER_ACQUIRE_QTY,'
      
        '                      Sum(w.OUT_PAY_ENV_COVER_LEASE_QTY) as OUT_' +
        'PAY_ENV_COVER_LEASE_QTY,'
      
        '                      Sum(w.OUT_PAY_FIN_DELIVERY_QTY) as OUT_PAY' +
        '_FIN_DELIVERY_QTY,'
      
        '                      Sum(w.OUT_PAY_BUDGET_DELIVERY_QTY) as OUT_' +
        'PAY_BUDGET_DELIVERY_QTY,'
      ''
      
        '                      ( Coalesce(Sum(w.OUT_SALE_ACQUIRE_QUANTITY' +
        '), 0) +'
      
        '                        Coalesce(Sum(w.OUT_SALE_CONSIGN_QUANTITY' +
        '), 0) +'
      
        '                        Coalesce(Sum(w.OUT_SPEC_ACQUIRE_QUANTITY' +
        '), 0) +'
      
        '                        Coalesce(Sum(w.OUT_SPEC_CONSIGN_QUANTITY' +
        '), 0) +'
      
        '                        Coalesce(Sum(w.OUT_PAY_SALE_COVER_ACQUIR' +
        'E_QTY), 0) +'
      
        '                        Coalesce(Sum(w.OUT_PAY_SALE_COVER_LEASE_' +
        'QTY), 0) +'
      
        '                        Coalesce(Sum(w.OUT_PAY_ENV_COVER_ACQUIRE' +
        '_QTY), 0) +'
      
        '                        Coalesce(Sum(w.OUT_PAY_ENV_COVER_LEASE_Q' +
        'TY), 0) +'
      
        '                        Coalesce(Sum(w.OUT_PAY_FIN_DELIVERY_QTY)' +
        ', 0) +'
      
        '                        Coalesce(Sum(w.OUT_PAY_BUDGET_DELIVERY_Q' +
        'TY), 0)'
      '                      ) as OUT_TOTAL_QUANTITY'
      ''
      '                    from'
      '                      ( select'
      '                          v.PRODUCT_CODE,'
      '                          v.THE_FIRST_DATE,'
      '                          v.THE_LAST_DATE,'
      '                          v.WORKDAYS,'
      ''
      '                          Sum('
      
        '                            Decode(v.BORDER_REL_TYPE_CODE, %brt_' +
        'VENDOR,'
      '                              v.EST_SALE_COVER_ACQUIRE_QTY *'
      '                              v.INTERSECT_COEF'
      '                            )'
      '                          ) as IN_SALE_COVER_QUANTITY,'
      ''
      '                          Sum('
      
        '                            Decode(v.BORDER_REL_TYPE_CODE, %brt_' +
        'VENDOR,'
      '                              v.EST_ENV_COVER_ACQUIRE_QTY *'
      '                              v.INTERSECT_COEF'
      '                            )'
      '                          ) as IN_ENV_COVER_QUANTITY,'
      ''
      '                          Sum('
      
        '                            Decode(v.BORDER_REL_TYPE_CODE, %brt_' +
        'VENDOR,'
      '                              v.EST_SALE_COVER_CONSIGN_QTY *'
      '                              v.INTERSECT_COEF'
      '                            )'
      '                          ) as IN_CONSIGN_QUANTITY,'
      ''
      '                          Sum('
      '                            Decode(v.HAS_SPEC, 1,'
      
        '                              Decode(v.BORDER_REL_TYPE_CODE, %br' +
        't_CLIENT,'
      
        '                                ( Coalesce(v.EST_SALE_COVER_ACQU' +
        'IRE_QTY, 0) +'
      
        '                                  Coalesce(v.EST_ENV_COVER_ACQUI' +
        'RE_QTY, 0) +'
      
        '                                  Coalesce(v.EST_SALE_COVER_CONS' +
        'IGN_QTY, 0)'
      '                                ) *'
      '                                v.INTERSECT_COEF'
      '                              )'
      '                            )'
      '                          ) as IN_MODEL_QUANTITY,'
      ''
      '                          Sum('
      
        '                            Decode(v.BORDER_REL_TYPE_CODE, %brt_' +
        'CLIENT,'
      
        '                              ( Coalesce(v.EST_SALE_COVER_ACQUIR' +
        'E_QTY, 0) +'
      
        '                                Coalesce(v.EST_ENV_COVER_ACQUIRE' +
        '_QTY, 0)'
      '                              ) *'
      '                              v.INTERSECT_COEF'
      '                            )'
      '                          ) as OUT_SALE_ACQUIRE_QUANTITY,'
      ''
      '                          Sum('
      
        '                            Decode(v.BORDER_REL_TYPE_CODE, %brt_' +
        'CLIENT,'
      
        '                              Coalesce(v.EST_SALE_COVER_CONSIGN_' +
        'QTY, 0) *'
      '                              v.INTERSECT_COEF'
      '                            )'
      '                          ) as OUT_SALE_CONSIGN_QUANTITY,'
      ''
      '                          null as OUT_SPEC_ACQUIRE_QUANTITY,'
      '                          null as OUT_SPEC_CONSIGN_QUANTITY,'
      ''
      '                          null as IN_PAY_SALE_ACQUIRE_QTY,'
      '                          null as IN_PAY_SALE_LEASE_QTY,'
      '                          null as IN_PAY_FIN_SALE_QTY,'
      
        '                          null as OUT_PAY_SALE_COVER_ACQUIRE_QTY' +
        ','
      '                          null as OUT_PAY_SALE_COVER_LEASE_QTY,'
      '                          null as OUT_PAY_ENV_COVER_ACQUIRE_QTY,'
      '                          null as OUT_PAY_ENV_COVER_LEASE_QTY,'
      '                          null as OUT_PAY_FIN_DELIVERY_QTY,'
      '                          null as OUT_PAY_BUDGET_DELIVERY_QTY'
      ''
      '                        from'
      '                          ( select'
      '                              /*+ INDEX(prpp) INDEX(txd) */'
      '                              prpp.BORDER_REL_TYPE_CODE,'
      '                              prpp.PRODUCT_CODE,'
      '                              prpp.EST_SALE_COVER_ACQUIRE_QTY,'
      '                              prpp.EST_ENV_COVER_ACQUIRE_QTY,'
      '                              prpp.EST_SALE_COVER_CONSIGN_QTY,'
      '                              txd.THE_FIRST_DATE,'
      '                              txd.THE_LAST_DATE,'
      '                              txd.WORKDAYS,'
      ''
      '                              Coalesce('
      
        '                                ( DateTimeUtils.CountIntersectWo' +
        'rkdays(prpp.BEGIN_DATE, prpp.END_DATE, txd.THE_FIRST_DATE, txd.T' +
        'HE_LAST_DATE) /'
      
        '                                  NullIf(%COUNT_WORKDAYS[prpp.BE' +
        'GIN_DATE~prpp.END_DATE], 0)'
      '                                ),'
      
        '                                ( DateTimeUtils.DatePeriodInters' +
        'ectLength(prpp.BEGIN_DATE, prpp.END_DATE, txd.THE_FIRST_DATE, tx' +
        'd.THE_LAST_DATE) /'
      
        '                                  (prpp.END_DATE - prpp.BEGIN_DA' +
        'TE + 1)'
      '                                )'
      '                              ) as INTERSECT_COEF,'
      ''
      '                              ( select'
      '                                  Sign(Count(*))'
      '                                from'
      '                                  SPECS sp'
      '                                where'
      
        '                                  (sp.SPEC_PRODUCT_CODE = prpp.P' +
        'RODUCT_CODE)'
      '                              ) as HAS_SPEC'
      ''
      '                            from'
      '                              %THE_X_DATES txd,'
      '                              PAR_REL_PRODUCT_PERIODS prpp'
      ''
      '                            where'
      
        '                              (txd.THE_LAST_DATE >= Least(:BASE_' +
        'DATE + 1, ContextDate)) and'
      ''
      
        '                              (txd.THE_FIRST_DATE <= prpp.END_DA' +
        'TE) and'
      
        '                              (txd.THE_LAST_DATE >= prpp.BEGIN_D' +
        'ATE) and'
      ''
      '                              exists('
      '                                select'
      '                                  /*+ INDEX(tfp) */'
      '                                  1'
      '                                from'
      '                                  TEMP_FILTERED_PRODUCTS tfp'
      '                                where'
      
        '                                  (tfp.PRODUCT_CODE = prpp.PRODU' +
        'CT_CODE)'
      '                              ) and'
      ''
      
        '                              (:PRODUCT_COMMON_LEVEL * null is n' +
        'ull) and'
      
        '                              %PRODUCT_COMMON_LEVEL_FILTER_BY_PR' +
        'ODUCT_CODE[:PRODUCT_COMMON_LEVEL ~ prpp.PRODUCT_CODE] and'
      ''
      
        '                              (:PARTNER_COMMON_LEVEL * null is n' +
        'ull) and'
      
        '                              %PARTNER_COMMON_LEVEL_FILTER[:PART' +
        'NER_COMMON_LEVEL ~ prpp.PARTNER_CODE ~ prpp.BORDER_REL_TYPE_CODE' +
        '] and'
      ''
      
        '                              ( Coalesce(%PAR_REL_PRODUCT_STATUS' +
        '_CODE[prpp], To_Number(:MIN_PRP_STATUS_CODE))'
      '                                between'
      '                                  :MIN_PRP_STATUS_CODE'
      '                                and'
      '                                  :MAX_PRP_STATUS_CODE'
      '                              )'
      '                          ) v'
      ''
      '                        group by'
      '                          v.PRODUCT_CODE,'
      '                          v.THE_FIRST_DATE,'
      '                          v.THE_LAST_DATE,'
      '                          v.WORKDAYS'
      ''
      ''
      
        '                        union all  -- dobaviame teglenia chrez s' +
        'pecifikacii'
      ''
      ''
      '                        select'
      '                          g.PRODUCT_CODE,'
      '                          g.THE_FIRST_DATE,'
      '                          g.THE_LAST_DATE,'
      '                          g.WORKDAYS,'
      ''
      '                          null as IN_SALE_COVER_QUANTITY,'
      '                          null as IN_ENV_COVER_QUANTITY,'
      '                          null as IN_CONSIGN_QUANTITY,'
      '                          null as IN_MODEL_QUANTITY,'
      '                          null as OUT_SALE_ACQUIRE_QUANTITY,'
      '                          null as OUT_SALE_CONSIGN_QUANTITY,'
      ''
      '                          Sum('
      
        '                            ( Coalesce(g.EST_SALE_COVER_ACQUIRE_' +
        'QTY, 0) +'
      
        '                              Coalesce(g.EST_ENV_COVER_ACQUIRE_Q' +
        'TY, 0)'
      '                            ) *'
      '                            g.QUANTITY_AND_MEASURE_COEF *'
      '                            g.INTERSECT_COEF'
      '                          ) as OUT_SPEC_ACQUIRE_QUANTITY,'
      ''
      '                          Sum('
      '                            g.EST_SALE_COVER_CONSIGN_QTY *'
      '                            g.QUANTITY_AND_MEASURE_COEF *'
      '                            g.INTERSECT_COEF'
      '                          ) as OUT_SPEC_CONSIGN_QUANTITY,'
      ''
      '                          null as IN_PAY_SALE_ACQUIRE_QTY,'
      '                          null as IN_PAY_SALE_LEASE_QTY,'
      '                          null as IN_PAY_FIN_SALE_QTY,'
      
        '                          null as OUT_PAY_SALE_COVER_ACQUIRE_QTY' +
        ','
      '                          null as OUT_PAY_SALE_COVER_LEASE_QTY,'
      '                          null as OUT_PAY_ENV_COVER_ACQUIRE_QTY,'
      '                          null as OUT_PAY_ENV_COVER_LEASE_QTY,'
      '                          null as OUT_PAY_FIN_DELIVERY_QTY,'
      '                          null as OUT_PAY_BUDGET_DELIVERY_QTY'
      ''
      '                        from'
      '                          ( select'
      '                              spl.PRODUCT_CODE,'
      '                              txd.THE_FIRST_DATE,'
      '                              txd.THE_LAST_DATE,'
      '                              txd.WORKDAYS,'
      ''
      '                              prpp.EST_SALE_COVER_ACQUIRE_QTY,'
      '                              prpp.EST_ENV_COVER_ACQUIRE_QTY,'
      '                              prpp.EST_SALE_COVER_CONSIGN_QTY,'
      ''
      '                              ( ( select'
      '                                    p.TECH_MEASURE_COEF'
      '                                  from'
      '                                    PRODUCTS p'
      '                                  where'
      
        '                                    (p.PRODUCT_CODE = prpp.PRODU' +
        'CT_CODE)'
      '                                ) *'
      '                                spl.TOTAL_DETAIL_TECH_QUANTITY *'
      '                                spl.PRODUCT_TECH_QUANTITY /'
      '                                ( select'
      '                                    p.TECH_MEASURE_COEF'
      '                                  from'
      '                                    PRODUCTS p'
      '                                  where'
      
        '                                    (p.PRODUCT_CODE = spl.PRODUC' +
        'T_CODE)'
      '                                )'
      '                              ) as QUANTITY_AND_MEASURE_COEF,'
      ''
      '                              Coalesce('
      
        '                                ( DateTimeUtils.CountIntersectWo' +
        'rkdays(prpp.BEGIN_DATE, prpp.END_DATE, txd.THE_FIRST_DATE, txd.T' +
        'HE_LAST_DATE) /'
      
        '                                  NullIf(%COUNT_WORKDAYS[prpp.BE' +
        'GIN_DATE~prpp.END_DATE], 0)'
      '                                ),'
      
        '                                ( DateTimeUtils.DatePeriodInters' +
        'ectLength(prpp.BEGIN_DATE, prpp.END_DATE, txd.THE_FIRST_DATE, tx' +
        'd.THE_LAST_DATE) /'
      
        '                                  (prpp.END_DATE - prpp.BEGIN_DA' +
        'TE + 1)'
      '                                )'
      '                              ) as INTERSECT_COEF'
      ''
      '                            from'
      '                              %THE_X_DATES txd,'
      '                              PAR_REL_PRODUCT_PERIODS prpp,'
      '                              SPEC_LINES spl'
      ''
      '                            where'
      
        '                              (txd.THE_LAST_DATE >= Least(:BASE_' +
        'DATE + 1, ContextDate)) and'
      ''
      
        '                              (txd.THE_FIRST_DATE <= prpp.END_DA' +
        'TE) and'
      
        '                              (txd.THE_LAST_DATE >= prpp.BEGIN_D' +
        'ATE) and'
      ''
      
        '                              (prpp.PRODUCT_CODE = spl.SPEC_PROD' +
        'UCT_CODE) and'
      ''
      
        '                              (prpp.BORDER_REL_TYPE_CODE = %brt_' +
        'CLIENT) and'
      
        '                              (prpp.EST_SALE_COVER_ACQUIRE_QTY i' +
        's not null) and'
      ''
      '                              exists('
      '                                select'
      '                                  1'
      '                                from'
      '                                  TEMP_FILTERED_PRODUCTS tfp'
      '                                where'
      
        '                                  (tfp.PRODUCT_CODE = spl.PRODUC' +
        'T_CODE)'
      '                              ) and'
      ''
      
        '                              (:PRODUCT_COMMON_LEVEL * null is n' +
        'ull) and'
      
        '                              %PRODUCT_COMMON_LEVEL_FILTER_BY_PR' +
        'ODUCT_CODE[:PRODUCT_COMMON_LEVEL ~ prpp.PRODUCT_CODE] and'
      ''
      
        '                              (:PARTNER_COMMON_LEVEL * null is n' +
        'ull) and'
      
        '                              %PARTNER_COMMON_LEVEL_FILTER[:PART' +
        'NER_COMMON_LEVEL ~ prpp.PARTNER_CODE ~ prpp.BORDER_REL_TYPE_CODE' +
        '] and'
      ''
      
        '                              ( Coalesce(%PAR_REL_PRODUCT_STATUS' +
        '_CODE[prpp], To_Number(:MIN_PRP_STATUS_CODE))'
      '                                between'
      '                                  :MIN_PRP_STATUS_CODE'
      '                                and'
      '                                  :MAX_PRP_STATUS_CODE'
      '                              )'
      '                          ) g'
      ''
      '                        group by'
      '                          g.PRODUCT_CODE,'
      '                          g.THE_FIRST_DATE,'
      '                          g.THE_LAST_DATE,'
      '                          g.WORKDAYS'
      ''
      ''
      '                        union all  -- plashania po ibr-i i id-ta'
      ''
      ''
      '                        select'
      '                          g.PRODUCT_CODE,'
      '                          g.THE_FIRST_DATE,'
      '                          g.THE_LAST_DATE,'
      '                          g.WORKDAYS,'
      ''
      '                          null as IN_SALE_COVER_QUANTITY,'
      '                          null as IN_ENV_COVER_QUANTITY,'
      '                          null as IN_CONSIGN_QUANTITY,'
      '                          null as IN_MODEL_QUANTITY,'
      '                          null as OUT_SALE_ACQUIRE_QUANTITY,'
      '                          null as OUT_SALE_CONSIGN_QUANTITY,'
      '                          null as OUT_SPEC_ACQUIRE_QUANTITY,'
      '                          null as OUT_SPEC_CONSIGN_QUANTITY,'
      ''
      '                          Sum('
      '                            Decode('
      '                              g.BORDER_REL_TYPE_CODE,'
      '                              %brt_CLIENT,'
      '                              Decode('
      '                                g.BASE_PRODUCT_CLASS_CODE,'
      '                                %pc_NORMAL,'
      
        '                                (g.SALE_COVER_ACQUIRE_TOTAL_PRIC' +
        'E * g.INTERSECT_COEF)'
      '                              )'
      '                            )'
      '                          ) as IN_PAY_SALE_ACQUIRE_QTY,'
      ''
      '                          Sum('
      '                            Decode('
      '                              g.BORDER_REL_TYPE_CODE,'
      '                              %brt_CLIENT,'
      '                              Decode('
      '                                g.BASE_PRODUCT_CLASS_CODE,'
      '                                %pc_NORMAL,'
      
        '                                (g.SALE_COVER_LEASE_TOTAL_PRICE ' +
        '* g.INTERSECT_COEF)'
      '                              )'
      '                            )'
      '                          ) as IN_PAY_SALE_LEASE_QTY,'
      ''
      '                          Sum('
      '                            Decode('
      '                              g.BORDER_REL_TYPE_CODE,'
      '                              %brt_CLIENT,'
      '                              Decode('
      '                                g.BASE_PRODUCT_CLASS_CODE,'
      '                                %pc_FINANCIAL,'
      
        '                                (g.SALE_COVER_ACQUIRE_TOTAL_PRIC' +
        'E * g.INTERSECT_COEF)'
      '                              )'
      '                            )'
      '                          ) as IN_PAY_FIN_SALE_QTY,'
      ''
      '                          Sum('
      '                            Decode('
      '                              g.BORDER_REL_TYPE_CODE,'
      '                              %brt_VENDOR,'
      '                              Decode('
      '                                g.BASE_PRODUCT_CLASS_CODE,'
      '                                %pc_NORMAL,'
      
        '                                (g.SALE_COVER_ACQUIRE_TOTAL_PRIC' +
        'E * g.INTERSECT_COEF)'
      '                              )'
      '                            )'
      '                          ) as OUT_PAY_SALE_COVER_ACQUIRE_QTY,'
      ''
      '                          Sum('
      '                            Decode('
      '                              g.BORDER_REL_TYPE_CODE,'
      '                              %brt_VENDOR,'
      '                              Decode('
      '                                g.BASE_PRODUCT_CLASS_CODE,'
      '                                %pc_NORMAL,'
      
        '                                (g.SALE_COVER_LEASE_TOTAL_PRICE ' +
        '* g.INTERSECT_COEF)'
      '                              )'
      '                            )'
      '                          ) as OUT_PAY_SALE_COVER_LEASE_QTY,'
      ''
      '                          Sum('
      '                            Decode('
      '                              g.BORDER_REL_TYPE_CODE,'
      '                              %brt_VENDOR,'
      '                              Decode('
      '                                g.BASE_PRODUCT_CLASS_CODE,'
      '                                %pc_NORMAL,'
      
        '                                (g.ENV_COVER_ACQUIRE_TOTAL_PRICE' +
        ' * g.INTERSECT_COEF)'
      '                              )'
      '                            )'
      '                          ) as OUT_PAY_ENV_COVER_ACQUIRE_QTY,'
      ''
      '                          Sum('
      '                            Decode('
      '                              g.BORDER_REL_TYPE_CODE,'
      '                              %brt_VENDOR,'
      '                              Decode('
      '                                g.BASE_PRODUCT_CLASS_CODE,'
      '                                %pc_NORMAL,'
      
        '                                (g.ENV_COVER_LEASE_TOTAL_PRICE *' +
        ' g.INTERSECT_COEF)'
      '                              )'
      '                            )'
      '                          ) as OUT_PAY_ENV_COVER_LEASE_QTY,'
      ''
      '                          Sum('
      '                            Decode('
      '                              g.BORDER_REL_TYPE_CODE,'
      '                              %brt_VENDOR,'
      '                              Decode('
      '                                g.BASE_PRODUCT_CLASS_CODE,'
      '                                %pc_FINANCIAL,'
      
        '                                (g.SALE_COVER_ACQUIRE_TOTAL_PRIC' +
        'E * g.INTERSECT_COEF)'
      '                              )'
      '                            )'
      '                          ) as OUT_PAY_FIN_DELIVERY_QTY,'
      ''
      '                          Sum('
      '                            Decode('
      '                              g.BORDER_REL_TYPE_CODE,'
      '                              %brt_VENDOR,'
      '                              Decode('
      '                                g.BASE_PRODUCT_CLASS_CODE,'
      '                                %pc_BUDGET,'
      
        '                                (g.ENV_COVER_ACQUIRE_TOTAL_PRICE' +
        ' * g.INTERSECT_COEF)'
      '                              )'
      '                            )'
      '                          ) as OUT_PAY_BUDGET_DELIVERY_QTY'
      ''
      '                        from'
      '                          ( select'
      
        '                              sfm.FINANCIAL_PRODUCT_CODE as PROD' +
        'UCT_CODE,'
      '                              txd.THE_FIRST_DATE,'
      '                              txd.THE_LAST_DATE,'
      '                              txd.WORKDAYS,'
      ''
      '                              prpp.BORDER_REL_TYPE_CODE,'
      
        '                              p.PRODUCT_CLASS_CODE as BASE_PRODU' +
        'CT_CLASS_CODE,'
      ''
      
        '                              ( prpp.EST_SALE_COVER_ACQUIRE_QTY ' +
        '*'
      '                                prpp.ACQUIRE_SINGLE_PRICE *'
      '                                sfml.LINE_QUANTITY_PERCENT *'
      '                                ( ( select'
      '                                      tcr.FIXING'
      '                                    from'
      '                                      TODAY_CURRENCY_RATES tcr'
      '                                    where'
      
        '                                      (tcr.CURRENCY_CODE = prpp.' +
        'ACQUIRE_CURRENCY_CODE)'
      '                                  ) /'
      '                                  ( select'
      '                                      tcr.FIXING'
      '                                    from'
      '                                      TODAY_CURRENCY_RATES tcr'
      '                                    where'
      
        '                                      (tcr.CURRENCY_CODE = c.CUR' +
        'RENCY_CODE)'
      '                                  )'
      '                                )'
      
        '                              ) as SALE_COVER_ACQUIRE_TOTAL_PRIC' +
        'E,'
      ''
      '                              ( prpp.EST_SALE_COVER_LEASE_QTY *'
      
        '                                prpp.EST_SALE_COVER_LEASE_DURATI' +
        'ON *'
      '                                prpp.LEASE_SINGLE_PRICE *'
      '                                sfml.LINE_QUANTITY_PERCENT *'
      '                                ( ( select'
      '                                      tcr.FIXING'
      '                                    from'
      '                                      TODAY_CURRENCY_RATES tcr'
      '                                    where'
      
        '                                      (tcr.CURRENCY_CODE = prpp.' +
        'LEASE_CURRENCY_CODE)'
      '                                  ) /'
      '                                  ( select'
      '                                      tcr.FIXING'
      '                                    from'
      '                                      TODAY_CURRENCY_RATES tcr'
      '                                    where'
      
        '                                      (tcr.CURRENCY_CODE = c.CUR' +
        'RENCY_CODE)'
      '                                  )'
      '                                )'
      '                              ) as SALE_COVER_LEASE_TOTAL_PRICE,'
      ''
      '                              ( prpp.EST_ENV_COVER_ACQUIRE_QTY *'
      '                                prpp.ACQUIRE_SINGLE_PRICE *'
      '                                sfml.LINE_QUANTITY_PERCENT *'
      '                                ( ( select'
      '                                      tcr.FIXING'
      '                                    from'
      '                                      TODAY_CURRENCY_RATES tcr'
      '                                    where'
      
        '                                      (tcr.CURRENCY_CODE = prpp.' +
        'ACQUIRE_CURRENCY_CODE)'
      '                                  ) /'
      '                                  ( select'
      '                                      tcr.FIXING'
      '                                    from'
      '                                      TODAY_CURRENCY_RATES tcr'
      '                                    where'
      
        '                                      (tcr.CURRENCY_CODE = c.CUR' +
        'RENCY_CODE)'
      '                                  )'
      '                                )'
      
        '                              ) as ENV_COVER_ACQUIRE_TOTAL_PRICE' +
        ','
      ''
      '                              ( prpp.EST_ENV_COVER_LEASE_QTY *'
      
        '                                prpp.EST_ENV_COVER_LEASE_DURATIO' +
        'N *'
      '                                prpp.LEASE_SINGLE_PRICE *'
      '                                sfml.LINE_QUANTITY_PERCENT *'
      '                                ( ( select'
      '                                      tcr.FIXING'
      '                                    from'
      '                                      TODAY_CURRENCY_RATES tcr'
      '                                    where'
      
        '                                      (tcr.CURRENCY_CODE = prpp.' +
        'LEASE_CURRENCY_CODE)'
      '                                  ) /'
      '                                  ( select'
      '                                      tcr.FIXING'
      '                                    from'
      '                                      TODAY_CURRENCY_RATES tcr'
      '                                    where'
      
        '                                      (tcr.CURRENCY_CODE = c.CUR' +
        'RENCY_CODE)'
      '                                  )'
      '                                )'
      '                              ) as ENV_COVER_LEASE_TOTAL_PRICE,'
      ''
      '                              Coalesce('
      
        '                                ( DateTimeUtils.CountIntersectWo' +
        'rkdays(prpp.BEGIN_DATE, prpp.END_DATE, txd.THE_FIRST_DATE, txd.T' +
        'HE_LAST_DATE) /'
      
        '                                  NullIf(%COUNT_WORKDAYS[prpp.BE' +
        'GIN_DATE~prpp.END_DATE], 0)'
      '                                ),'
      
        '                                ( DateTimeUtils.DatePeriodInters' +
        'ectLength(prpp.BEGIN_DATE, prpp.END_DATE, txd.THE_FIRST_DATE, tx' +
        'd.THE_LAST_DATE) /'
      
        '                                  (prpp.END_DATE - prpp.BEGIN_DA' +
        'TE + 1)'
      '                                )'
      '                              ) as INTERSECT_COEF'
      ''
      '                            from'
      '                              %THE_X_DATES txd,'
      '                              PAR_REL_PRODUCT_PERIODS prpp,'
      '                              PRODUCTS p,'
      '                              CURRENCIES c,'
      '                              PAR_REL_PERIODS prper,'
      '                              SPEC_FIN_MODELS sfm,'
      '                              SPEC_FIN_MODEL_LINES sfml'
      ''
      '                            where'
      
        '                              (txd.THE_LAST_DATE >= Least(:BASE_' +
        'DATE + 1, ContextDate)) and'
      ''
      
        '                              (txd.THE_FIRST_DATE <= prpp.END_DA' +
        'TE) and'
      
        '                              (txd.THE_LAST_DATE >= prpp.BEGIN_D' +
        'ATE) and'
      ''
      
        '                              (prpp.PRODUCT_CODE = p.PRODUCT_COD' +
        'E) and'
      ''
      
        '                              (prpp.PARTNER_CODE = prper.PARTNER' +
        '_CODE) and'
      
        '                              (prpp.BEGIN_DATE between prper.BEG' +
        'IN_DATE and prper.END_DATE) and'
      ''
      
        '                              (prpp.PARTNER_CODE = sfm.EST_MODEL' +
        '_PARTNER_CODE) and'
      
        '                              (prpp.BORDER_REL_TYPE_CODE = sfm.E' +
        'ST_MODEL_BORDER_REL_TYPE_CODE) and'
      
        '                              (prper.PAR_REL_PERIOD_CODE = sfm.E' +
        'ST_MODEL_PAR_REL_PERIOD_CODE) and'
      ''
      
        '                              (sfm.FINANCIAL_PRODUCT_CODE = c.PR' +
        'ODUCT_CODE) and'
      ''
      
        '                              (sfm.SPEC_FIN_MODEL_CODE = sfml.SP' +
        'EC_FIN_MODEL_CODE) and'
      ''
      
        '                              (sfml.FIN_MODEL_LINE_TYPE_CODE = %' +
        'fmlt_PRIMARY) and'
      ''
      '                              exists('
      '                                select'
      '                                  1'
      '                                from'
      '                                  TEMP_FILTERED_PRODUCTS tfp'
      '                                where'
      
        '                                  (tfp.PRODUCT_CODE = sfm.FINANC' +
        'IAL_PRODUCT_CODE)'
      '                              ) and'
      ''
      
        '                              (:PRODUCT_COMMON_LEVEL * null is n' +
        'ull) and'
      
        '                              %PRODUCT_COMMON_LEVEL_FILTER_BY_PR' +
        'ODUCT_CODE[:PRODUCT_COMMON_LEVEL ~ prpp.PRODUCT_CODE] and'
      ''
      
        '                              (:PARTNER_COMMON_LEVEL * null is n' +
        'ull) and'
      
        '                              %PARTNER_COMMON_LEVEL_FILTER[:PART' +
        'NER_COMMON_LEVEL ~ prpp.PARTNER_CODE ~ prpp.BORDER_REL_TYPE_CODE' +
        '] and'
      ''
      
        '                              ( Coalesce(%PAR_REL_PRODUCT_STATUS' +
        '_CODE[prpp], To_Number(:MIN_PRP_STATUS_CODE))'
      '                                between'
      '                                  :MIN_PRP_STATUS_CODE'
      '                                and'
      '                                  :MAX_PRP_STATUS_CODE'
      '                              )'
      '                          ) g'
      ''
      '                        group by'
      '                          g.PRODUCT_CODE,'
      '                          g.THE_FIRST_DATE,'
      '                          g.THE_LAST_DATE,'
      '                          g.WORKDAYS'
      ''
      ''
      
        '                        union all  -- osiguriavame vsichki perio' +
        'di, makar i prazni'
      ''
      ''
      '                        select'
      '                          /*+ INDEX(tfp) */'
      '                          tfp.PRODUCT_CODE,'
      '                          txd.THE_FIRST_DATE,'
      '                          txd.THE_LAST_DATE,'
      '                          txd.WORKDAYS,'
      ''
      '                          null as IN_SALE_COVER_QUANTITY,'
      '                          null as IN_ENV_COVER_QUANTITY,'
      '                          null as IN_CONSIGN_QUANTITY,'
      '                          null as IN_MODEL_QUANTITY,'
      '                          null as OUT_SALE_ACQUIRE_QUANTITY,'
      '                          null as OUT_SALE_CONSIGN_QUANTITY,'
      '                          null as OUT_SPEC_ACQUIRE_QUANTITY,'
      '                          null as OUT_SPEC_CONSIGN_QUANTITY,'
      '                          null as IN_PAY_SALE_ACQUIRE_QTY,'
      '                          null as IN_PAY_SALE_LEASE_QTY,'
      '                          null as IN_PAY_FIN_SALE_QTY,'
      
        '                          null as OUT_PAY_SALE_COVER_ACQUIRE_QTY' +
        ','
      '                          null as OUT_PAY_SALE_COVER_LEASE_QTY,'
      '                          null as OUT_PAY_ENV_COVER_ACQUIRE_QTY,'
      '                          null as OUT_PAY_ENV_COVER_LEASE_QTY,'
      '                          null as OUT_PAY_FIN_DELIVERY_QTY,'
      '                          null as OUT_PAY_BUDGET_DELIVERY_QTY'
      ''
      '                        from'
      '                          %THE_X_DATES txd,'
      '                          TEMP_FILTERED_PRODUCTS tfp'
      ''
      '                        where'
      
        '                          (txd.THE_FIRST_DATE between :BEGIN_DAT' +
        'E and :END_DATE) and'
      ''
      
        '                          (:PRODUCT_COMMON_LEVEL * null is null)' +
        ' and'
      
        '                          %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUC' +
        'T_CODE[:PRODUCT_COMMON_LEVEL ~ tfp.PRODUCT_CODE]'
      '                      ) w'
      ''
      '                    group by'
      '                      w.PRODUCT_CODE,'
      '                      w.THE_FIRST_DATE,'
      '                      w.THE_LAST_DATE,'
      '                      w.WORKDAYS'
      '                  ) x'
      '              ) y'
      '          ) z'
      '        where'
      '          (z.THE_FIRST_DATE between :BEGIN_DATE and :END_DATE)'
      '      ) t,'
      '      PRODUCTS p'
      ''
      '    where'
      '      (t.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      '      (t.MAX_ALL_QUANTITY > 0)'
      '  ) s'
      ''
      'order by'
      '  PRODUCT_NO,'
      '  DATE_UNIT_FIRST_DATE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = 'MiscUtils.HasDocItems(p.DOC_BRANCH_CODE, p.DOC_CODE)'
      end
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[z.PRODUCT_CODE ~ z.THE_FIRST_D' +
          'ATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'brt_VENDOR'
        ParamType = ptInput
        Value = 'CommonConsts.brtVendor'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = 'CommonConsts.brtClient'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE]'
        ParamType = ptInput
        Value = 'CountWorkdays(prpp.BEGIN_DATE, prpp.END_DATE)'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATES'
        ParamType = ptInput
        Value = 'THE_MONTH_DATES'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCT_CODE[:PRODUCT_COMMON_LEVE' +
          'L ~ prpp.PRODUCT_CODE]'
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
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '999'
      end
      item
        DataType = ftWideString
        Name = 'pc_FINANCIAL'
        ParamType = ptInput
        Value = '999'
      end
      item
        DataType = ftWideString
        Name = 'pc_BUDGET'
        ParamType = ptInput
        Value = '999'
      end
      item
        DataType = ftWideString
        Name = 'fmlt_PRIMARY'
        ParamType = ptInput
        Value = '999'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCT_CODE[:PRODUCT_COMMON_LEVE' +
          'L ~ tfp.PRODUCT_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 80
    Top = 495
    object qryEstQuantitiesTablePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryEstQuantitiesTablePRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryEstQuantitiesTablePRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryEstQuantitiesTablePARTNER_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PARTNER_PRODUCT_NAMES'
      Size = 250
    end
    object qryEstQuantitiesTablePRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryEstQuantitiesTablePRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryEstQuantitiesTablePRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object qryEstQuantitiesTableMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryEstQuantitiesTableACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryEstQuantitiesTableDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField
      FieldName = 'DATE_UNIT_FIRST_DATE'
    end
    object qryEstQuantitiesTableDATE_UNIT_NO: TAbmesFloatField
      FieldName = 'DATE_UNIT_NO'
    end
    object qryEstQuantitiesTableIN_SALE_COVER_QUANTITY: TAbmesFloatField
      FieldName = 'IN_SALE_COVER_QUANTITY'
    end
    object qryEstQuantitiesTableACC_IN_SALE_COVER_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_IN_SALE_COVER_QUANTITY'
    end
    object qryEstQuantitiesTableIN_SALE_COVER_PRICE: TAbmesFloatField
      FieldName = 'IN_SALE_COVER_PRICE'
    end
    object qryEstQuantitiesTableIN_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'IN_CONSIGN_QUANTITY'
    end
    object qryEstQuantitiesTableACC_IN_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_IN_CONSIGN_QUANTITY'
    end
    object qryEstQuantitiesTableIN_CONSIGN_PRICE: TAbmesFloatField
      FieldName = 'IN_CONSIGN_PRICE'
    end
    object qryEstQuantitiesTableIN_ENV_COVER_QUANTITY: TAbmesFloatField
      FieldName = 'IN_ENV_COVER_QUANTITY'
    end
    object qryEstQuantitiesTableACC_IN_ENV_COVER_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_IN_ENV_COVER_QUANTITY'
    end
    object qryEstQuantitiesTableIN_ENV_COVER_PRICE: TAbmesFloatField
      FieldName = 'IN_ENV_COVER_PRICE'
    end
    object qryEstQuantitiesTableIN_MODEL_QUANTITY: TAbmesFloatField
      FieldName = 'IN_MODEL_QUANTITY'
    end
    object qryEstQuantitiesTableACC_IN_MODEL_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_IN_MODEL_QUANTITY'
    end
    object qryEstQuantitiesTableIN_MODEL_PRICE: TAbmesFloatField
      FieldName = 'IN_MODEL_PRICE'
    end
    object qryEstQuantitiesTableIN_PAY_SALE_ACQUIRE_QTY: TAbmesFloatField
      FieldName = 'IN_PAY_SALE_ACQUIRE_QTY'
    end
    object qryEstQuantitiesTableACC_IN_PAY_SALE_ACQUIRE_QTY: TAbmesFloatField
      FieldName = 'ACC_IN_PAY_SALE_ACQUIRE_QTY'
    end
    object qryEstQuantitiesTableIN_PAY_SALE_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'IN_PAY_SALE_ACQUIRE_PRICE'
    end
    object qryEstQuantitiesTableIN_PAY_SALE_LEASE_QTY: TAbmesFloatField
      FieldName = 'IN_PAY_SALE_LEASE_QTY'
    end
    object qryEstQuantitiesTableACC_IN_PAY_SALE_LEASE_QTY: TAbmesFloatField
      FieldName = 'ACC_IN_PAY_SALE_LEASE_QTY'
    end
    object qryEstQuantitiesTableIN_PAY_SALE_LEASE_PRICE: TAbmesFloatField
      FieldName = 'IN_PAY_SALE_LEASE_PRICE'
    end
    object qryEstQuantitiesTableIN_PAY_FIN_SALE_QTY: TAbmesFloatField
      FieldName = 'IN_PAY_FIN_SALE_QTY'
    end
    object qryEstQuantitiesTableACC_IN_PAY_FIN_SALE_QTY: TAbmesFloatField
      FieldName = 'ACC_IN_PAY_FIN_SALE_QTY'
    end
    object qryEstQuantitiesTableIN_PAY_FIN_SALE_PRICE: TAbmesFloatField
      FieldName = 'IN_PAY_FIN_SALE_PRICE'
    end
    object qryEstQuantitiesTableIN_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'IN_TOTAL_QUANTITY'
    end
    object qryEstQuantitiesTableACC_IN_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_IN_TOTAL_QUANTITY'
    end
    object qryEstQuantitiesTableIN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'IN_TOTAL_PRICE'
    end
    object qryEstQuantitiesTableOUT_SALE_ACQUIRE_QUANTITY: TAbmesFloatField
      FieldName = 'OUT_SALE_ACQUIRE_QUANTITY'
    end
    object qryEstQuantitiesTableACC_OUT_SALE_ACQUIRE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_OUT_SALE_ACQUIRE_QUANTITY'
    end
    object qryEstQuantitiesTableOUT_SALE_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'OUT_SALE_ACQUIRE_PRICE'
    end
    object qryEstQuantitiesTableOUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'OUT_SALE_CONSIGN_QUANTITY'
    end
    object qryEstQuantitiesTableACC_OUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_OUT_SALE_CONSIGN_QUANTITY'
    end
    object qryEstQuantitiesTableOUT_SALE_CONSIGN_PRICE: TAbmesFloatField
      FieldName = 'OUT_SALE_CONSIGN_PRICE'
    end
    object qryEstQuantitiesTableOUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField
      FieldName = 'OUT_SPEC_ACQUIRE_QUANTITY'
    end
    object qryEstQuantitiesTableACC_OUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_OUT_SPEC_ACQUIRE_QUANTITY'
    end
    object qryEstQuantitiesTableOUT_SPEC_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'OUT_SPEC_ACQUIRE_PRICE'
    end
    object qryEstQuantitiesTableOUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'OUT_SPEC_CONSIGN_QUANTITY'
    end
    object qryEstQuantitiesTableACC_OUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_OUT_SPEC_CONSIGN_QUANTITY'
    end
    object qryEstQuantitiesTableOUT_SPEC_CONSIGN_PRICE: TAbmesFloatField
      FieldName = 'OUT_SPEC_CONSIGN_PRICE'
    end
    object qryEstQuantitiesTableOUT_PAY_SALE_COVER_ACQ_QTY: TAbmesFloatField
      FieldName = 'OUT_PAY_SALE_COVER_ACQ_QTY'
    end
    object qryEstQuantitiesTableACC_OUT_PAY_SALE_COVER_ACQ_QTY: TAbmesFloatField
      FieldName = 'ACC_OUT_PAY_SALE_COVER_ACQ_QTY'
    end
    object qryEstQuantitiesTableOUT_PAY_SALE_COVER_ACQ_PRICE: TAbmesFloatField
      FieldName = 'OUT_PAY_SALE_COVER_ACQ_PRICE'
    end
    object qryEstQuantitiesTableOUT_PAY_SALE_COVER_LEASE_QTY: TAbmesFloatField
      FieldName = 'OUT_PAY_SALE_COVER_LEASE_QTY'
    end
    object qryEstQuantitiesTableACC_OUT_PAY_SALE_COVER_LSE_QTY: TAbmesFloatField
      FieldName = 'ACC_OUT_PAY_SALE_COVER_LSE_QTY'
    end
    object qryEstQuantitiesTableOUT_PAY_SALE_COVER_LSE_PRICE: TAbmesFloatField
      FieldName = 'OUT_PAY_SALE_COVER_LSE_PRICE'
    end
    object qryEstQuantitiesTableOUT_PAY_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField
      FieldName = 'OUT_PAY_ENV_COVER_ACQUIRE_QTY'
    end
    object qryEstQuantitiesTableACC_OUT_PAY_ENV_COVER_ACQ_QTY: TAbmesFloatField
      FieldName = 'ACC_OUT_PAY_ENV_COVER_ACQ_QTY'
    end
    object qryEstQuantitiesTableOUT_PAY_ENV_COVER_ACQ_PRICE: TAbmesFloatField
      FieldName = 'OUT_PAY_ENV_COVER_ACQ_PRICE'
    end
    object qryEstQuantitiesTableOUT_PAY_ENV_COVER_LEASE_QTY: TAbmesFloatField
      FieldName = 'OUT_PAY_ENV_COVER_LEASE_QTY'
    end
    object qryEstQuantitiesTableACC_OUT_PAY_ENV_COVER_LSE_QTY: TAbmesFloatField
      FieldName = 'ACC_OUT_PAY_ENV_COVER_LSE_QTY'
    end
    object qryEstQuantitiesTableOUT_PAY_ENV_COVER_LSE_PRICE: TAbmesFloatField
      FieldName = 'OUT_PAY_ENV_COVER_LSE_PRICE'
    end
    object qryEstQuantitiesTableOUT_PAY_FIN_DELIVERY_QTY: TAbmesFloatField
      FieldName = 'OUT_PAY_FIN_DELIVERY_QTY'
    end
    object qryEstQuantitiesTableACC_OUT_PAY_FIN_DELIVERY_QTY: TAbmesFloatField
      FieldName = 'ACC_OUT_PAY_FIN_DELIVERY_QTY'
    end
    object qryEstQuantitiesTableOUT_PAY_FIN_DELIVERY_PRICE: TAbmesFloatField
      FieldName = 'OUT_PAY_FIN_DELIVERY_PRICE'
    end
    object qryEstQuantitiesTableOUT_PAY_BUDGET_DELIVERY_QTY: TAbmesFloatField
      FieldName = 'OUT_PAY_BUDGET_DELIVERY_QTY'
    end
    object qryEstQuantitiesTableACC_OUT_PAY_BUDGET_DELIV_QTY: TAbmesFloatField
      FieldName = 'ACC_OUT_PAY_BUDGET_DELIV_QTY'
    end
    object qryEstQuantitiesTableOUT_PAY_BUDGET_DELIV_PRICE: TAbmesFloatField
      FieldName = 'OUT_PAY_BUDGET_DELIV_PRICE'
    end
    object qryEstQuantitiesTableOUT_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'OUT_TOTAL_QUANTITY'
    end
    object qryEstQuantitiesTableACC_OUT_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_OUT_TOTAL_QUANTITY'
    end
    object qryEstQuantitiesTableOUT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'OUT_TOTAL_PRICE'
    end
    object qryEstQuantitiesTableTOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_QUANTITY'
    end
    object qryEstQuantitiesTableACC_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_TOTAL_QUANTITY'
    end
    object qryEstQuantitiesTableTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryEstQuantitiesTableDEFICIT_QUANTITY: TAbmesFloatField
      FieldName = 'DEFICIT_QUANTITY'
    end
    object qryEstQuantitiesTableACC_DEFICIT_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_DEFICIT_QUANTITY'
    end
    object qryEstQuantitiesTableDEFICIT_PRICE: TAbmesFloatField
      FieldName = 'DEFICIT_PRICE'
    end
    object qryEstQuantitiesTablePASSIVE_QUANTITY: TAbmesFloatField
      FieldName = 'PASSIVE_QUANTITY'
    end
    object qryEstQuantitiesTableACC_PASSIVE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_PASSIVE_QUANTITY'
    end
    object qryEstQuantitiesTablePASSIVE_PRICE: TAbmesFloatField
      FieldName = 'PASSIVE_PRICE'
    end
  end
  object cdsEstQuantitiesTable: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
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
        Name = 'DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DATE_UNIT_COUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_QUANTITIES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'OUT_QUANTITIES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DEFICIT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptUnknown
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_PROJECT_QUANTITIES'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftTimeStamp
        Name = 'BASE_DATE'
        ParamType = ptUnknown
      end>
    Left = 80
    Top = 448
  end
  object prvEstQuantitiesGraph: TDataSetProvider
    DataSet = qryEstQuantitiesGraph
    OnGetData = prvEstQuantitiesGraphGetData
    AfterGetRecords = prvEstQuantitiesGraphAfterGetRecords
    Left = 240
    Top = 400
  end
  object qryEstQuantitiesGraph: TAbmesSQLQuery
    BeforeOpen = qryEstQuantitiesGraphBeforeOpen
    AfterClose = qryEstQuantitiesGraphAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_PROJECT_QUANTITIES'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftTimeStamp
        Name = 'BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '2'
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
        Name = 'BASE_DATE'
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
        Name = 'BASE_DATE'
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
      '-- tova query razchita na joini s TEMP_FILTERED_PRODUCTS'
      
        '-- i ne izpolzva ALL_FILTERED_PRODUCTS, nito filtar po PRODUCT_C' +
        'LASS'
      
        '-- ako mu se slaga ALL_FILTERED_PRODUCTS, triabva i filtar po PR' +
        'ODUCT_CLASS da mu se sloji'
      'select'
      '  z.THE_FIRST_DATE as DATE_UNIT_FIRST_DATE,'
      '  z.THE_LAST_DATE as DATE_UNIT_LAST_DATE,'
      
        '  (DateTimeUtils.TimeUnitsBetween(:BEGIN_DATE, z.THE_FIRST_DATE,' +
        ' :DATE_UNIT_CODE) + 1) as DATE_UNIT_NO,'
      '  z.WORKDAYS,'
      ''
      
        '  NullIf(Sum(z.IN_SALE_COVER_QUANTITY), 0) as IN_SALE_COVER_QUAN' +
        'TITY,'
      
        '  NullIf(Sum(z.IN_ENV_COVER_QUANTITY), 0) as IN_ENV_COVER_QUANTI' +
        'TY,'
      '  NullIf(Sum(z.IN_CONSIGN_QUANTITY), 0) as IN_CONSIGN_QUANTITY,'
      '  NullIf(Sum(z.IN_MODEL_QUANTITY), 0) as IN_MODEL_QUANTITY,'
      
        '  NullIf(Sum(z.IN_PAY_SALE_ACQUIRE_QTY), 0) as IN_PAY_SALE_ACQUI' +
        'RE_QTY,'
      
        '  NullIf(Sum(z.IN_PAY_SALE_LEASE_QTY), 0) as IN_PAY_SALE_LEASE_Q' +
        'TY,'
      '  NullIf(Sum(z.IN_PAY_FIN_SALE_QTY), 0) as IN_PAY_FIN_SALE_QTY,'
      
        '  NullIf(Sum(z.OUT_SALE_ACQUIRE_QUANTITY), 0) as OUT_SALE_ACQUIR' +
        'E_QUANTITY,'
      
        '  NullIf(Sum(z.OUT_SALE_CONSIGN_QUANTITY), 0) as OUT_SALE_CONSIG' +
        'N_QUANTITY,'
      
        '  NullIf(Sum(z.OUT_SPEC_ACQUIRE_QUANTITY), 0) as OUT_SPEC_ACQUIR' +
        'E_QUANTITY,'
      
        '  NullIf(Sum(z.OUT_SPEC_CONSIGN_QUANTITY), 0) as OUT_SPEC_CONSIG' +
        'N_QUANTITY,'
      
        '  NullIf(Sum(z.OUT_PAY_SALE_COVER_ACQUIRE_QTY), 0) as OUT_PAY_SA' +
        'LE_COVER_ACQUIRE_QTY,'
      
        '  NullIf(Sum(z.OUT_PAY_SALE_COVER_LEASE_QTY), 0) as OUT_PAY_SALE' +
        '_COVER_LEASE_QTY,'
      
        '  NullIf(Sum(z.OUT_PAY_ENV_COVER_ACQUIRE_QTY), 0) as OUT_PAY_ENV' +
        '_COVER_ACQUIRE_QTY,'
      
        '  NullIf(Sum(z.OUT_PAY_ENV_COVER_LEASE_QTY), 0) as OUT_PAY_ENV_C' +
        'OVER_LEASE_QTY,'
      
        '  NullIf(Sum(z.OUT_PAY_FIN_DELIVERY_QTY), 0) as OUT_PAY_FIN_DELI' +
        'VERY_QTY,'
      
        '  NullIf(Sum(z.OUT_PAY_BUDGET_DELIVERY_QTY), 0) as OUT_PAY_BUDGE' +
        'T_DELIVERY_QTY,'
      '  NullIf(Sum(z.TOTAL_QUANTITY), 0) as TOTAL_QUANTITY,'
      
        '  NullIf(Sum(Decode(Sign(z.TOTAL_QUANTITY), -1, z.TOTAL_QUANTITY' +
        ')), 0) as NEGATIVE_QUANTITY,'
      
        '  NullIf(Sum(Decode(Sign(z.TOTAL_QUANTITY), 1, z.TOTAL_QUANTITY)' +
        '), 0) as POSITIVE_QUANTITY,'
      '  NullIf(Sum(z.DEFICIT_QUANTITY), 0) as DEFICIT_QUANTITY,'
      '  NullIf(Sum(z.PASSIVE_QUANTITY), 0) as PASSIVE_QUANTITY,'
      ''
      
        '  NullIf(Sum(z.IN_SALE_COVER_QUANTITY * z.ACCOUNT_MEASURE_COEF),' +
        ' 0) as ACC_IN_SALE_COVER_QUANTITY,'
      
        '  NullIf(Sum(z.IN_ENV_COVER_QUANTITY * z.ACCOUNT_MEASURE_COEF), ' +
        '0) as ACC_IN_ENV_COVER_QUANTITY,'
      
        '  NullIf(Sum(z.IN_CONSIGN_QUANTITY * z.ACCOUNT_MEASURE_COEF), 0)' +
        ' as ACC_IN_CONSIGN_QUANTITY,'
      
        '  NullIf(Sum(z.IN_MODEL_QUANTITY * z.ACCOUNT_MEASURE_COEF), 0) a' +
        's ACC_IN_MODEL_QUANTITY,'
      
        '  NullIf(Sum(z.IN_PAY_SALE_ACQUIRE_QTY * z.ACCOUNT_MEASURE_COEF)' +
        ', 0) as ACC_IN_PAY_SALE_ACQUIRE_QTY,'
      
        '  NullIf(Sum(z.IN_PAY_SALE_LEASE_QTY * z.ACCOUNT_MEASURE_COEF), ' +
        '0) as ACC_IN_PAY_SALE_LEASE_QTY,'
      
        '  NullIf(Sum(z.IN_PAY_FIN_SALE_QTY * z.ACCOUNT_MEASURE_COEF), 0)' +
        ' as ACC_IN_PAY_FIN_SALE_QTY,'
      
        '  NullIf(Sum(z.OUT_SALE_ACQUIRE_QUANTITY * z.ACCOUNT_MEASURE_COE' +
        'F), 0) as ACC_OUT_SALE_ACQUIRE_QUANTITY,'
      
        '  NullIf(Sum(z.OUT_SALE_CONSIGN_QUANTITY * z.ACCOUNT_MEASURE_COE' +
        'F), 0) as ACC_OUT_SALE_CONSIGN_QUANTITY,'
      
        '  NullIf(Sum(z.OUT_SPEC_ACQUIRE_QUANTITY * z.ACCOUNT_MEASURE_COE' +
        'F), 0) as ACC_OUT_SPEC_ACQUIRE_QUANTITY,'
      
        '  NullIf(Sum(z.OUT_SPEC_CONSIGN_QUANTITY * z.ACCOUNT_MEASURE_COE' +
        'F), 0) as ACC_OUT_SPEC_CONSIGN_QUANTITY,'
      
        '  NullIf(Sum(z.OUT_PAY_SALE_COVER_ACQUIRE_QTY * z.ACCOUNT_MEASUR' +
        'E_COEF), 0) as ACC_OUT_PAY_SALE_COVER_ACQ_QTY,'
      
        '  NullIf(Sum(z.OUT_PAY_SALE_COVER_LEASE_QTY * z.ACCOUNT_MEASURE_' +
        'COEF), 0) as ACC_OUT_PAY_SALE_COVER_LSE_QTY,'
      
        '  NullIf(Sum(z.OUT_PAY_ENV_COVER_ACQUIRE_QTY * z.ACCOUNT_MEASURE' +
        '_COEF), 0) as ACC_OUT_PAY_ENV_COVER_ACQ_QTY,'
      
        '  NullIf(Sum(z.OUT_PAY_ENV_COVER_LEASE_QTY * z.ACCOUNT_MEASURE_C' +
        'OEF), 0) as ACC_OUT_PAY_ENV_COVER_LSE_QTY,'
      
        '  NullIf(Sum(z.OUT_PAY_FIN_DELIVERY_QTY * z.ACCOUNT_MEASURE_COEF' +
        '), 0) as ACC_OUT_PAY_FIN_DELIV_QTY,'
      
        '  NullIf(Sum(z.OUT_PAY_BUDGET_DELIVERY_QTY * z.ACCOUNT_MEASURE_C' +
        'OEF), 0) as ACC_OUT_PAY_BUDGET_DELIV_QTY,'
      
        '  NullIf(Sum(z.TOTAL_QUANTITY * z.ACCOUNT_MEASURE_COEF), 0) as A' +
        'CC_TOTAL_QUANTITY,'
      
        '  NullIf(Sum(Decode(Sign(z.TOTAL_QUANTITY), -1, z.TOTAL_QUANTITY' +
        ') * z.ACCOUNT_MEASURE_COEF), 0) as ACC_NEGATIVE_QUANTITY,'
      
        '  NullIf(Sum(Decode(Sign(z.TOTAL_QUANTITY), 1, z.TOTAL_QUANTITY)' +
        ' * z.ACCOUNT_MEASURE_COEF), 0) as ACC_POSITIVE_QUANTITY,'
      
        '  NullIf(Sum(z.DEFICIT_QUANTITY * z.ACCOUNT_MEASURE_COEF), 0) as' +
        ' ACC_DEFICIT_QUANTITY,'
      
        '  NullIf(Sum(z.PASSIVE_QUANTITY * z.ACCOUNT_MEASURE_COEF), 0) as' +
        ' ACC_PASSIVE_QUANTITY,'
      ''
      
        '  NullIf(Sum(z.IN_SALE_COVER_QUANTITY * z.SINGLE_PRICE), 0) as I' +
        'N_SALE_COVER_PRICE,'
      
        '  NullIf(Sum(z.IN_ENV_COVER_QUANTITY * z.SINGLE_PRICE), 0) as IN' +
        '_ENV_COVER_PRICE,'
      
        '  NullIf(Sum(z.IN_CONSIGN_QUANTITY * z.SINGLE_PRICE), 0) as IN_C' +
        'ONSIGN_PRICE,'
      
        '  NullIf(Sum(z.IN_MODEL_QUANTITY * z.SINGLE_PRICE), 0) as IN_MOD' +
        'EL_PRICE,'
      
        '  NullIf(Sum(z.IN_PAY_SALE_ACQUIRE_QTY * z.SINGLE_PRICE), 0) as ' +
        'IN_PAY_SALE_ACQUIRE_PRICE,'
      
        '  NullIf(Sum(z.IN_PAY_SALE_LEASE_QTY * z.SINGLE_PRICE), 0) as IN' +
        '_PAY_SALE_LEASE_PRICE,'
      
        '  NullIf(Sum(z.IN_PAY_FIN_SALE_QTY * z.SINGLE_PRICE), 0) as IN_P' +
        'AY_FIN_SALE_PRICE,'
      
        '  NullIf(Sum(z.OUT_SALE_ACQUIRE_QUANTITY * z.SINGLE_PRICE), 0) a' +
        's OUT_SALE_ACQUIRE_PRICE,'
      
        '  NullIf(Sum(z.OUT_SALE_CONSIGN_QUANTITY * z.SINGLE_PRICE), 0) a' +
        's OUT_SALE_CONSIGN_PRICE,'
      
        '  NullIf(Sum(z.OUT_SPEC_ACQUIRE_QUANTITY * z.SINGLE_PRICE), 0) a' +
        's OUT_SPEC_ACQUIRE_PRICE,'
      
        '  NullIf(Sum(z.OUT_SPEC_CONSIGN_QUANTITY * z.SINGLE_PRICE), 0) a' +
        's OUT_SPEC_CONSIGN_PRICE,'
      
        '  NullIf(Sum(z.OUT_PAY_SALE_COVER_ACQUIRE_QTY * z.SINGLE_PRICE),' +
        ' 0) as OUT_PAY_SALE_COVER_ACQUIRE_PRC,'
      
        '  NullIf(Sum(z.OUT_PAY_SALE_COVER_LEASE_QTY * z.SINGLE_PRICE), 0' +
        ') as OUT_PAY_SALE_COVER_LEASE_PRC,'
      
        '  NullIf(Sum(z.OUT_PAY_ENV_COVER_ACQUIRE_QTY * z.SINGLE_PRICE), ' +
        '0) as OUT_PAY_ENV_COVER_ACQUIRE_PRC,'
      
        '  NullIf(Sum(z.OUT_PAY_ENV_COVER_LEASE_QTY * z.SINGLE_PRICE), 0)' +
        ' as OUT_PAY_ENV_COVER_LEASE_PRC,'
      
        '  NullIf(Sum(z.OUT_PAY_FIN_DELIVERY_QTY * z.SINGLE_PRICE), 0) as' +
        ' OUT_PAY_FIN_DELIVERY_PRC,'
      
        '  NullIf(Sum(z.OUT_PAY_BUDGET_DELIVERY_QTY * z.SINGLE_PRICE), 0)' +
        ' as OUT_PAY_BUDGET_DELIVERY_PRC,'
      
        '  NullIf(Sum(z.TOTAL_QUANTITY * z.SINGLE_PRICE), 0) as TOTAL_PRI' +
        'CE,'
      
        '  NullIf(Sum(Decode(Sign(z.TOTAL_QUANTITY), -1, z.TOTAL_QUANTITY' +
        ') * z.SINGLE_PRICE), 0) as NEGATIVE_PRICE,'
      
        '  NullIf(Sum(Decode(Sign(z.TOTAL_QUANTITY), 1, z.TOTAL_QUANTITY)' +
        ' * z.SINGLE_PRICE), 0) as POSITIVE_PRICE,'
      
        '  NullIf(Sum(z.DEFICIT_QUANTITY * z.SINGLE_PRICE), 0) as DEFICIT' +
        '_PRICE,'
      
        '  NullIf(Sum(z.PASSIVE_QUANTITY * z.SINGLE_PRICE), 0) as PASSIVE' +
        '_PRICE,'
      ''
      
        '  Decode(Max(z.MEASURE_CODE) - Min(z.MEASURE_CODE), null, 0, 0, ' +
        '1, 0) as SAME_MEASURE,'
      '  Min(z.MEASURE_ABBREV) as MEASURE_ABBREV,'
      '  Min(z.ACCOUNT_MEASURE_ABBREV) as ACCOUNT_MEASURE_ABBREV,'
      ''
      '  Decode('
      '    Count(distinct z.PRODUCT_CODE),'
      '    1,'
      '    1,'
      '    0'
      '  ) as SINGLE_PRODUCT'
      ''
      'from'
      '  ( select'
      '      y.PRODUCT_CODE,'
      '      y.THE_FIRST_DATE,'
      '      y.THE_LAST_DATE,'
      '      y.WORKDAYS,'
      ''
      '      y.IN_SALE_COVER_QUANTITY,'
      '      y.IN_ENV_COVER_QUANTITY,'
      '      y.IN_CONSIGN_QUANTITY,'
      '      y.IN_MODEL_QUANTITY,'
      '      y.IN_PAY_SALE_ACQUIRE_QTY,'
      '      y.IN_PAY_SALE_LEASE_QTY,'
      '      y.IN_PAY_FIN_SALE_QTY,'
      ''
      '      y.OUT_SALE_ACQUIRE_QUANTITY,'
      '      y.OUT_SALE_CONSIGN_QUANTITY,'
      '      y.OUT_SPEC_ACQUIRE_QUANTITY,'
      '      y.OUT_SPEC_CONSIGN_QUANTITY,'
      '      y.OUT_PAY_SALE_COVER_ACQUIRE_QTY,'
      '      y.OUT_PAY_SALE_COVER_LEASE_QTY,'
      '      y.OUT_PAY_ENV_COVER_ACQUIRE_QTY,'
      '      y.OUT_PAY_ENV_COVER_LEASE_QTY,'
      '      y.OUT_PAY_FIN_DELIVERY_QTY,'
      '      y.OUT_PAY_BUDGET_DELIVERY_QTY,'
      ''
      '      Decode(Sign(ContextDate - y.THE_LAST_DATE),'
      '        1, To_Number(null),'
      '        ( Coalesce(y.PRIOR_AGGR_QUANTITY, 0) +'
      '          Coalesce(y.BASE_QUANTITY, 0) +'
      '          Coalesce(y.IN_TOTAL_QUANTITY, 0) -'
      '          Coalesce(y.OUT_TOTAL_QUANTITY, 0)'
      '        )'
      '      ) as TOTAL_QUANTITY,'
      ''
      '      Decode(Sign(ContextDate - y.THE_LAST_DATE),'
      '        1, To_Number(null),'
      '        Least('
      '          ( Greatest(Coalesce(y.PRIOR_AGGR_QUANTITY, 0), 0) +'
      '            Coalesce(y.BASE_QUANTITY, 0) +'
      '            Coalesce(y.IN_TOTAL_QUANTITY, 0) -'
      '            Coalesce(y.OUT_TOTAL_QUANTITY, 0)'
      '          ),'
      '          0'
      '        )'
      '      ) as DEFICIT_QUANTITY,'
      ''
      '      Decode(Sign(ContextDate - y.THE_LAST_DATE),'
      '        1, To_Number(null),'
      '        Greatest('
      '          0,'
      '          Min('
      '            Coalesce(y.PRIOR_AGGR_QUANTITY, 0) +'
      '            Coalesce(y.BASE_QUANTITY, 0) +'
      '            Coalesce(y.IN_TOTAL_QUANTITY, 0) -'
      '            Coalesce(y.OUT_TOTAL_QUANTITY, 0)'
      
        '          ) over (partition by y.PRODUCT_CODE order by y.THE_FIR' +
        'ST_DATE range between current row and unbounded following)'
      '        )'
      '      ) as PASSIVE_QUANTITY,'
      ''
      
        '      %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[y.PRODUCT_CODE ~ y.THE_' +
        'FIRST_DATE] as SINGLE_PRICE,'
      ''
      '      ( select'
      '          p.MEASURE_CODE'
      '        from'
      '          PRODUCTS p'
      '        where'
      '          (p.PRODUCT_CODE = y.PRODUCT_CODE)'
      '      ) as MEASURE_CODE,'
      ''
      '      ( select'
      '          p.ACCOUNT_MEASURE_COEF'
      '        from'
      '          PRODUCTS p'
      '        where'
      '          (p.PRODUCT_CODE = y.PRODUCT_CODE)'
      '      ) as ACCOUNT_MEASURE_COEF,'
      ''
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          PRODUCTS p,'
      '          MEASURES m'
      '        where'
      '          (p.PRODUCT_CODE = y.PRODUCT_CODE) and'
      '          (m.MEASURE_CODE = p.MEASURE_CODE)'
      '      ) as MEASURE_ABBREV,'
      ''
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          PRODUCTS p,'
      '          MEASURES m'
      '        where'
      '          (p.PRODUCT_CODE = y.PRODUCT_CODE) and'
      '          (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '      ) as ACCOUNT_MEASURE_ABBREV'
      ''
      '    from'
      '      ( select'
      '          x.PRODUCT_CODE,'
      '          x.THE_FIRST_DATE,'
      '          x.THE_LAST_DATE,'
      '          x.WORKDAYS,'
      ''
      '          x.IN_SALE_COVER_QUANTITY,'
      '          x.IN_ENV_COVER_QUANTITY,'
      '          x.IN_CONSIGN_QUANTITY,'
      '          x.IN_MODEL_QUANTITY,'
      '          x.IN_PAY_SALE_ACQUIRE_QTY,'
      '          x.IN_PAY_SALE_LEASE_QTY,'
      '          x.IN_PAY_FIN_SALE_QTY,'
      '          x.IN_TOTAL_QUANTITY,'
      ''
      '          x.OUT_SALE_ACQUIRE_QUANTITY,'
      '          x.OUT_SALE_CONSIGN_QUANTITY,'
      '          x.OUT_SPEC_ACQUIRE_QUANTITY,'
      '          x.OUT_SPEC_CONSIGN_QUANTITY,'
      '          x.OUT_PAY_SALE_COVER_ACQUIRE_QTY,'
      '          x.OUT_PAY_SALE_COVER_LEASE_QTY,'
      '          x.OUT_PAY_ENV_COVER_ACQUIRE_QTY,'
      '          x.OUT_PAY_ENV_COVER_LEASE_QTY,'
      '          x.OUT_PAY_FIN_DELIVERY_QTY,'
      '          x.OUT_PAY_BUDGET_DELIVERY_QTY,'
      '          x.OUT_TOTAL_QUANTITY,'
      ''
      '          Sum('
      '            Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '              1, null,'
      
        '              Coalesce(x.IN_TOTAL_QUANTITY, 0) - Coalesce(x.OUT_' +
        'TOTAL_QUANTITY, 0)'
      '            )'
      
        '          ) over (partition by x.PRODUCT_CODE order by x.THE_FIR' +
        'ST_DATE range between unbounded preceding and 1 preceding)'
      '          as PRIOR_AGGR_QUANTITY,'
      ''
      '          ( select'
      '              Sum('
      '                Coalesce(asd.REAL_QUANTITY, 0) +'
      '                Coalesce(asd.PLANNED_QUANTITY, 0) +'
      
        '                Decode(:INCLUDE_PROJECT_QUANTITIES, 1, Coalesce(' +
        'asd.PROJECTED_QUANTITY, 0), 0)'
      
        '              ) keep (dense_rank last order by asd.STORE_DEAL_DA' +
        'TE)'
      '            from'
      '              AGGR_STORE_DEALS asd'
      '            where'
      '              (asd.PRODUCT_CODE = x.PRODUCT_CODE) and'
      '              (asd.STORE_DEAL_DATE <= :BASE_DATE)'
      '          ) as BASE_QUANTITY'
      ''
      '        from'
      '          ( select'
      '              w.PRODUCT_CODE,'
      '              w.THE_FIRST_DATE,'
      '              w.THE_LAST_DATE,'
      '              w.WORKDAYS,'
      ''
      
        '              Sum(w.IN_SALE_COVER_QUANTITY) as IN_SALE_COVER_QUA' +
        'NTITY,'
      
        '              Sum(w.IN_ENV_COVER_QUANTITY) as IN_ENV_COVER_QUANT' +
        'ITY,'
      '              Sum(w.IN_CONSIGN_QUANTITY) as IN_CONSIGN_QUANTITY,'
      '              Sum(w.IN_MODEL_QUANTITY) as IN_MODEL_QUANTITY,'
      
        '              Sum(w.IN_PAY_SALE_ACQUIRE_QTY) as IN_PAY_SALE_ACQU' +
        'IRE_QTY,'
      
        '              Sum(w.IN_PAY_SALE_LEASE_QTY) as IN_PAY_SALE_LEASE_' +
        'QTY,'
      '              Sum(w.IN_PAY_FIN_SALE_QTY) as IN_PAY_FIN_SALE_QTY,'
      ''
      '              ( Coalesce(Sum(w.IN_SALE_COVER_QUANTITY), 0) +'
      '                Coalesce(Sum(w.IN_ENV_COVER_QUANTITY), 0) +'
      '                Coalesce(Sum(w.IN_CONSIGN_QUANTITY), 0) +'
      '                Coalesce(Sum(w.IN_MODEL_QUANTITY), 0) +'
      '                Coalesce(Sum(w.IN_PAY_SALE_ACQUIRE_QTY), 0) +'
      '                Coalesce(Sum(w.IN_PAY_SALE_LEASE_QTY), 0) +'
      '                Coalesce(Sum(w.IN_PAY_FIN_SALE_QTY), 0)'
      '              ) as IN_TOTAL_QUANTITY,'
      ''
      
        '              Sum(w.OUT_SALE_ACQUIRE_QUANTITY) as OUT_SALE_ACQUI' +
        'RE_QUANTITY,'
      
        '              Sum(w.OUT_SALE_CONSIGN_QUANTITY) as OUT_SALE_CONSI' +
        'GN_QUANTITY,'
      
        '              Sum(w.OUT_SPEC_ACQUIRE_QUANTITY) as OUT_SPEC_ACQUI' +
        'RE_QUANTITY,'
      
        '              Sum(w.OUT_SPEC_CONSIGN_QUANTITY) as OUT_SPEC_CONSI' +
        'GN_QUANTITY,'
      
        '              Sum(w.OUT_PAY_SALE_COVER_ACQUIRE_QTY) as OUT_PAY_S' +
        'ALE_COVER_ACQUIRE_QTY,'
      
        '              Sum(w.OUT_PAY_SALE_COVER_LEASE_QTY) as OUT_PAY_SAL' +
        'E_COVER_LEASE_QTY,'
      
        '              Sum(w.OUT_PAY_ENV_COVER_ACQUIRE_QTY) as OUT_PAY_EN' +
        'V_COVER_ACQUIRE_QTY,'
      
        '              Sum(w.OUT_PAY_ENV_COVER_LEASE_QTY) as OUT_PAY_ENV_' +
        'COVER_LEASE_QTY,'
      
        '              Sum(w.OUT_PAY_FIN_DELIVERY_QTY) as OUT_PAY_FIN_DEL' +
        'IVERY_QTY,'
      
        '              Sum(w.OUT_PAY_BUDGET_DELIVERY_QTY) as OUT_PAY_BUDG' +
        'ET_DELIVERY_QTY,'
      ''
      '              ( Coalesce(Sum(w.OUT_SALE_ACQUIRE_QUANTITY), 0) +'
      '                Coalesce(Sum(w.OUT_SALE_CONSIGN_QUANTITY), 0) +'
      '                Coalesce(Sum(w.OUT_SPEC_ACQUIRE_QUANTITY), 0) +'
      '                Coalesce(Sum(w.OUT_SPEC_CONSIGN_QUANTITY), 0) +'
      
        '                Coalesce(Sum(w.OUT_PAY_SALE_COVER_ACQUIRE_QTY), ' +
        '0) +'
      
        '                Coalesce(Sum(w.OUT_PAY_SALE_COVER_LEASE_QTY), 0)' +
        ' +'
      
        '                Coalesce(Sum(w.OUT_PAY_ENV_COVER_ACQUIRE_QTY), 0' +
        ') +'
      
        '                Coalesce(Sum(w.OUT_PAY_ENV_COVER_LEASE_QTY), 0) ' +
        '+'
      '                Coalesce(Sum(w.OUT_PAY_FIN_DELIVERY_QTY), 0) +'
      '                Coalesce(Sum(w.OUT_PAY_BUDGET_DELIVERY_QTY), 0)'
      '              ) as OUT_TOTAL_QUANTITY'
      ''
      '            from'
      '              ( select'
      '                  v.PRODUCT_CODE,'
      '                  v.THE_FIRST_DATE,'
      '                  v.THE_LAST_DATE,'
      '                  v.WORKDAYS,'
      ''
      '                  Sum('
      '                    Decode(v.BORDER_REL_TYPE_CODE, %brt_VENDOR,'
      '                      v.EST_SALE_COVER_ACQUIRE_QTY *'
      '                      v.INTERSECT_COEF'
      '                    )'
      '                  ) as IN_SALE_COVER_QUANTITY,'
      ''
      '                  Sum('
      '                    Decode(v.BORDER_REL_TYPE_CODE, %brt_VENDOR,'
      '                      v.EST_ENV_COVER_ACQUIRE_QTY *'
      '                      v.INTERSECT_COEF'
      '                    )'
      '                  ) as IN_ENV_COVER_QUANTITY,'
      ''
      '                  Sum('
      '                    Decode(v.BORDER_REL_TYPE_CODE, %brt_VENDOR,'
      '                      v.EST_SALE_COVER_CONSIGN_QTY *'
      '                      v.INTERSECT_COEF'
      '                    )'
      '                  ) as IN_CONSIGN_QUANTITY,'
      ''
      '                  Sum('
      '                    Decode(v.HAS_SPEC, 1,'
      
        '                      Decode(v.BORDER_REL_TYPE_CODE, %brt_CLIENT' +
        ','
      
        '                        ( Coalesce(v.EST_SALE_COVER_ACQUIRE_QTY,' +
        ' 0) +'
      
        '                          Coalesce(v.EST_ENV_COVER_ACQUIRE_QTY, ' +
        '0) +'
      
        '                          Coalesce(v.EST_SALE_COVER_CONSIGN_QTY,' +
        ' 0)'
      '                        ) *'
      '                        v.INTERSECT_COEF'
      '                      )'
      '                    )'
      '                  ) as IN_MODEL_QUANTITY,'
      ''
      '                  Sum('
      '                    Decode(v.BORDER_REL_TYPE_CODE, %brt_CLIENT,'
      
        '                      ( Coalesce(v.EST_SALE_COVER_ACQUIRE_QTY, 0' +
        ') +'
      '                        Coalesce(v.EST_ENV_COVER_ACQUIRE_QTY, 0)'
      '                      ) *'
      '                      v.INTERSECT_COEF'
      '                    )'
      '                  ) as OUT_SALE_ACQUIRE_QUANTITY,'
      ''
      '                  Sum('
      '                    Decode(v.BORDER_REL_TYPE_CODE, %brt_CLIENT,'
      
        '                      Coalesce(v.EST_SALE_COVER_CONSIGN_QTY, 0) ' +
        '*'
      '                      v.INTERSECT_COEF'
      '                    )'
      '                  ) as OUT_SALE_CONSIGN_QUANTITY,'
      ''
      '                  null as OUT_SPEC_ACQUIRE_QUANTITY,'
      '                  null as OUT_SPEC_CONSIGN_QUANTITY,'
      ''
      '                  null as IN_PAY_SALE_ACQUIRE_QTY,'
      '                  null as IN_PAY_SALE_LEASE_QTY,'
      '                  null as IN_PAY_FIN_SALE_QTY,'
      '                  null as OUT_PAY_SALE_COVER_ACQUIRE_QTY,'
      '                  null as OUT_PAY_SALE_COVER_LEASE_QTY,'
      '                  null as OUT_PAY_ENV_COVER_ACQUIRE_QTY,'
      '                  null as OUT_PAY_ENV_COVER_LEASE_QTY,'
      '                  null as OUT_PAY_FIN_DELIVERY_QTY,'
      '                  null as OUT_PAY_BUDGET_DELIVERY_QTY'
      ''
      '                from'
      '                  ( select'
      '                      /*+ INDEX(prpp) INDEX(txd) */'
      '                      prpp.BORDER_REL_TYPE_CODE,'
      '                      prpp.PRODUCT_CODE,'
      '                      prpp.EST_SALE_COVER_ACQUIRE_QTY,'
      '                      prpp.EST_ENV_COVER_ACQUIRE_QTY,'
      '                      prpp.EST_SALE_COVER_CONSIGN_QTY,'
      '                      txd.THE_FIRST_DATE,'
      '                      txd.THE_LAST_DATE,'
      '                      txd.WORKDAYS,'
      ''
      '                      Coalesce('
      
        '                        ( DateTimeUtils.CountIntersectWorkdays(p' +
        'rpp.BEGIN_DATE, prpp.END_DATE, txd.THE_FIRST_DATE, txd.THE_LAST_' +
        'DATE) /'
      
        '                          NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE' +
        '~prpp.END_DATE], 0)'
      '                        ),'
      
        '                        ( DateTimeUtils.DatePeriodIntersectLengt' +
        'h(prpp.BEGIN_DATE, prpp.END_DATE, txd.THE_FIRST_DATE, txd.THE_LA' +
        'ST_DATE) /'
      '                          (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '                        )'
      '                      ) as INTERSECT_COEF,'
      ''
      '                      ( select'
      '                          Sign(Count(*))'
      '                        from'
      '                          SPECS sp'
      '                        where'
      
        '                          (sp.SPEC_PRODUCT_CODE = prpp.PRODUCT_C' +
        'ODE)'
      '                      ) as HAS_SPEC'
      ''
      '                    from'
      '                      %THE_X_DATES txd,'
      '                      PAR_REL_PRODUCT_PERIODS prpp'
      ''
      '                    where'
      
        '                      (txd.THE_LAST_DATE >= Least(:BASE_DATE + 1' +
        ', ContextDate)) and'
      ''
      '                      (txd.THE_FIRST_DATE <= prpp.END_DATE) and'
      '                      (txd.THE_LAST_DATE >= prpp.BEGIN_DATE) and'
      ''
      '                      exists('
      '                        select'
      '                          /*+ INDEX(tfp) */'
      '                          1'
      '                        from'
      '                          TEMP_FILTERED_PRODUCTS tfp'
      '                        where'
      '                          (tfp.PRODUCT_CODE = prpp.PRODUCT_CODE)'
      '                      ) and'
      ''
      '                      (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '                      %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCT_CO' +
        'DE[:PRODUCT_COMMON_LEVEL ~ prpp.PRODUCT_CODE] and'
      ''
      '                      (:PARTNER_COMMON_LEVEL * null is null) and'
      
        '                      %PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMM' +
        'ON_LEVEL ~ prpp.PARTNER_CODE ~ prpp.BORDER_REL_TYPE_CODE] and'
      ''
      
        '                      ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[pr' +
        'pp], To_Number(:MIN_PRP_STATUS_CODE))'
      '                        between'
      '                          :MIN_PRP_STATUS_CODE'
      '                        and'
      '                          :MAX_PRP_STATUS_CODE'
      '                      )'
      '                  ) v'
      ''
      '                group by'
      '                  v.PRODUCT_CODE,'
      '                  v.THE_FIRST_DATE,'
      '                  v.THE_LAST_DATE,'
      '                  v.WORKDAYS'
      ''
      ''
      
        '                union all  -- dobaviame teglenia chrez specifika' +
        'cii'
      ''
      ''
      '                select'
      '                  g.PRODUCT_CODE,'
      '                  g.THE_FIRST_DATE,'
      '                  g.THE_LAST_DATE,'
      '                  g.WORKDAYS,'
      ''
      '                  null as IN_SALE_COVER_QUANTITY,'
      '                  null as IN_ENV_COVER_QUANTITY,'
      '                  null as IN_CONSIGN_QUANTITY,'
      '                  null as IN_MODEL_QUANTITY,'
      '                  null as OUT_SALE_ACQUIRE_QUANTITY,'
      '                  null as OUT_SALE_CONSIGN_QUANTITY,'
      ''
      '                  Sum('
      
        '                    ( Coalesce(g.EST_SALE_COVER_ACQUIRE_QTY, 0) ' +
        '+'
      '                      Coalesce(g.EST_ENV_COVER_ACQUIRE_QTY, 0)'
      '                    ) *'
      '                    g.QUANTITY_AND_MEASURE_COEF *'
      '                    g.INTERSECT_COEF'
      '                  ) as OUT_SPEC_ACQUIRE_QUANTITY,'
      ''
      '                  Sum('
      '                    g.EST_SALE_COVER_CONSIGN_QTY *'
      '                    g.QUANTITY_AND_MEASURE_COEF *'
      '                    g.INTERSECT_COEF'
      '                  ) as OUT_SPEC_CONSIGN_QUANTITY,'
      ''
      '                  null as IN_PAY_SALE_ACQUIRE_QTY,'
      '                  null as IN_PAY_SALE_LEASE_QTY,'
      '                  null as IN_PAY_FIN_SALE_QTY,'
      '                  null as OUT_PAY_SALE_COVER_ACQUIRE_QTY,'
      '                  null as OUT_PAY_SALE_COVER_LEASE_QTY,'
      '                  null as OUT_PAY_ENV_COVER_ACQUIRE_QTY,'
      '                  null as OUT_PAY_ENV_COVER_LEASE_QTY,'
      '                  null as OUT_PAY_FIN_DELIVERY_QTY,'
      '                  null as OUT_PAY_BUDGET_DELIVERY_QTY'
      ''
      '                from'
      '                  ( select'
      '                      spl.PRODUCT_CODE,'
      '                      txd.THE_FIRST_DATE,'
      '                      txd.THE_LAST_DATE,'
      '                      txd.WORKDAYS,'
      ''
      '                      prpp.EST_SALE_COVER_ACQUIRE_QTY,'
      '                      prpp.EST_ENV_COVER_ACQUIRE_QTY,'
      '                      prpp.EST_SALE_COVER_CONSIGN_QTY,'
      ''
      '                      ( ( select'
      '                            p.TECH_MEASURE_COEF'
      '                          from'
      '                            PRODUCTS p'
      '                          where'
      '                            (p.PRODUCT_CODE = prpp.PRODUCT_CODE)'
      '                        ) *'
      '                        spl.TOTAL_DETAIL_TECH_QUANTITY *'
      '                        spl.PRODUCT_TECH_QUANTITY /'
      '                        ( select'
      '                            p.TECH_MEASURE_COEF'
      '                          from'
      '                            PRODUCTS p'
      '                          where'
      '                            (p.PRODUCT_CODE = spl.PRODUCT_CODE)'
      '                        )'
      '                      ) as QUANTITY_AND_MEASURE_COEF,'
      ''
      '                      Coalesce('
      
        '                        ( DateTimeUtils.CountIntersectWorkdays(p' +
        'rpp.BEGIN_DATE, prpp.END_DATE, txd.THE_FIRST_DATE, txd.THE_LAST_' +
        'DATE) /'
      
        '                          NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE' +
        '~prpp.END_DATE], 0)'
      '                        ),'
      
        '                        ( DateTimeUtils.DatePeriodIntersectLengt' +
        'h(prpp.BEGIN_DATE, prpp.END_DATE, txd.THE_FIRST_DATE, txd.THE_LA' +
        'ST_DATE) /'
      '                          (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '                        )'
      '                      ) as INTERSECT_COEF'
      ''
      '                    from'
      '                      %THE_X_DATES txd,'
      '                      PAR_REL_PRODUCT_PERIODS prpp,'
      '                      SPEC_LINES spl'
      ''
      '                    where'
      
        '                      (txd.THE_LAST_DATE >= Least(:BASE_DATE + 1' +
        ', ContextDate)) and'
      ''
      '                      (txd.THE_FIRST_DATE <= prpp.END_DATE) and'
      '                      (txd.THE_LAST_DATE >= prpp.BEGIN_DATE) and'
      ''
      
        '                      (prpp.PRODUCT_CODE = spl.SPEC_PRODUCT_CODE' +
        ') and'
      ''
      
        '                      (prpp.BORDER_REL_TYPE_CODE = %brt_CLIENT) ' +
        'and'
      
        '                      (prpp.EST_SALE_COVER_ACQUIRE_QTY is not nu' +
        'll) and'
      ''
      '                      exists('
      '                        select'
      '                          1'
      '                        from'
      '                          TEMP_FILTERED_PRODUCTS tfp'
      '                        where'
      '                          (tfp.PRODUCT_CODE = spl.PRODUCT_CODE)'
      '                      ) and'
      ''
      '                      (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '                      %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCT_CO' +
        'DE[:PRODUCT_COMMON_LEVEL ~ prpp.PRODUCT_CODE] and'
      ''
      '                      (:PARTNER_COMMON_LEVEL * null is null) and'
      
        '                      %PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMM' +
        'ON_LEVEL ~ prpp.PARTNER_CODE ~ prpp.BORDER_REL_TYPE_CODE] and'
      ''
      
        '                      ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[pr' +
        'pp], To_Number(:MIN_PRP_STATUS_CODE))'
      '                        between'
      '                          :MIN_PRP_STATUS_CODE'
      '                        and'
      '                          :MAX_PRP_STATUS_CODE'
      '                      )'
      '                  ) g'
      ''
      '                group by'
      '                  g.PRODUCT_CODE,'
      '                  g.THE_FIRST_DATE,'
      '                  g.THE_LAST_DATE,'
      '                  g.WORKDAYS'
      ''
      ''
      '                union all  -- plashania po ibr-i i id-ta'
      ''
      ''
      '                select'
      '                  g.PRODUCT_CODE,'
      '                  g.THE_FIRST_DATE,'
      '                  g.THE_LAST_DATE,'
      '                  g.WORKDAYS,'
      ''
      '                  null as IN_SALE_COVER_QUANTITY,'
      '                  null as IN_ENV_COVER_QUANTITY,'
      '                  null as IN_CONSIGN_QUANTITY,'
      '                  null as IN_MODEL_QUANTITY,'
      '                  null as OUT_SALE_ACQUIRE_QUANTITY,'
      '                  null as OUT_SALE_CONSIGN_QUANTITY,'
      '                  null as OUT_SPEC_ACQUIRE_QUANTITY,'
      '                  null as OUT_SPEC_CONSIGN_QUANTITY,'
      ''
      '                  Sum('
      '                    Decode('
      '                      g.BORDER_REL_TYPE_CODE,'
      '                      %brt_CLIENT,'
      '                      Decode('
      '                        g.BASE_PRODUCT_CLASS_CODE,'
      '                        %pc_NORMAL,'
      
        '                        (g.SALE_COVER_ACQUIRE_TOTAL_PRICE * g.IN' +
        'TERSECT_COEF)'
      '                      )'
      '                    )'
      '                  ) as IN_PAY_SALE_ACQUIRE_QTY,'
      ''
      '                  Sum('
      '                    Decode('
      '                      g.BORDER_REL_TYPE_CODE,'
      '                      %brt_CLIENT,'
      '                      Decode('
      '                        g.BASE_PRODUCT_CLASS_CODE,'
      '                        %pc_NORMAL,'
      
        '                        (g.SALE_COVER_LEASE_TOTAL_PRICE * g.INTE' +
        'RSECT_COEF)'
      '                      )'
      '                    )'
      '                  ) as IN_PAY_SALE_LEASE_QTY,'
      ''
      '                  Sum('
      '                    Decode('
      '                      g.BORDER_REL_TYPE_CODE,'
      '                      %brt_CLIENT,'
      '                      Decode('
      '                        g.BASE_PRODUCT_CLASS_CODE,'
      '                        %pc_FINANCIAL,'
      
        '                        (g.SALE_COVER_ACQUIRE_TOTAL_PRICE * g.IN' +
        'TERSECT_COEF)'
      '                      )'
      '                    )'
      '                  ) as IN_PAY_FIN_SALE_QTY,'
      ''
      '                  Sum('
      '                    Decode('
      '                      g.BORDER_REL_TYPE_CODE,'
      '                      %brt_VENDOR,'
      '                      Decode('
      '                        g.BASE_PRODUCT_CLASS_CODE,'
      '                        %pc_NORMAL,'
      
        '                        (g.SALE_COVER_ACQUIRE_TOTAL_PRICE * g.IN' +
        'TERSECT_COEF)'
      '                      )'
      '                    )'
      '                  ) as OUT_PAY_SALE_COVER_ACQUIRE_QTY,'
      ''
      '                  Sum('
      '                    Decode('
      '                      g.BORDER_REL_TYPE_CODE,'
      '                      %brt_VENDOR,'
      '                      Decode('
      '                        g.BASE_PRODUCT_CLASS_CODE,'
      '                        %pc_NORMAL,'
      
        '                        (g.SALE_COVER_LEASE_TOTAL_PRICE * g.INTE' +
        'RSECT_COEF)'
      '                      )'
      '                    )'
      '                  ) as OUT_PAY_SALE_COVER_LEASE_QTY,'
      ''
      '                  Sum('
      '                    Decode('
      '                      g.BORDER_REL_TYPE_CODE,'
      '                      %brt_VENDOR,'
      '                      Decode('
      '                        g.BASE_PRODUCT_CLASS_CODE,'
      '                        %pc_NORMAL,'
      
        '                        (g.ENV_COVER_ACQUIRE_TOTAL_PRICE * g.INT' +
        'ERSECT_COEF)'
      '                      )'
      '                    )'
      '                  ) as OUT_PAY_ENV_COVER_ACQUIRE_QTY,'
      ''
      '                  Sum('
      '                    Decode('
      '                      g.BORDER_REL_TYPE_CODE,'
      '                      %brt_VENDOR,'
      '                      Decode('
      '                        g.BASE_PRODUCT_CLASS_CODE,'
      '                        %pc_NORMAL,'
      
        '                        (g.ENV_COVER_LEASE_TOTAL_PRICE * g.INTER' +
        'SECT_COEF)'
      '                      )'
      '                    )'
      '                  ) as OUT_PAY_ENV_COVER_LEASE_QTY,'
      ''
      '                  Sum('
      '                    Decode('
      '                      g.BORDER_REL_TYPE_CODE,'
      '                      %brt_VENDOR,'
      '                      Decode('
      '                        g.BASE_PRODUCT_CLASS_CODE,'
      '                        %pc_FINANCIAL,'
      
        '                        (g.SALE_COVER_ACQUIRE_TOTAL_PRICE * g.IN' +
        'TERSECT_COEF)'
      '                      )'
      '                    )'
      '                  ) as OUT_PAY_FIN_DELIVERY_QTY,'
      ''
      '                  Sum('
      '                    Decode('
      '                      g.BORDER_REL_TYPE_CODE,'
      '                      %brt_VENDOR,'
      '                      Decode('
      '                        g.BASE_PRODUCT_CLASS_CODE,'
      '                        %pc_BUDGET,'
      
        '                        (g.ENV_COVER_ACQUIRE_TOTAL_PRICE * g.INT' +
        'ERSECT_COEF)'
      '                      )'
      '                    )'
      '                  ) as OUT_PAY_BUDGET_DELIVERY_QTY'
      ''
      '                from'
      '                  ( select'
      
        '                      sfm.FINANCIAL_PRODUCT_CODE as PRODUCT_CODE' +
        ','
      '                      txd.THE_FIRST_DATE,'
      '                      txd.THE_LAST_DATE,'
      '                      txd.WORKDAYS,'
      ''
      '                      prpp.BORDER_REL_TYPE_CODE,'
      
        '                      p.PRODUCT_CLASS_CODE as BASE_PRODUCT_CLASS' +
        '_CODE,'
      ''
      '                      ( prpp.EST_SALE_COVER_ACQUIRE_QTY *'
      '                        prpp.ACQUIRE_SINGLE_PRICE *'
      '                        sfml.LINE_QUANTITY_PERCENT *'
      '                        ( ( select'
      '                              tcr.FIXING'
      '                            from'
      '                              TODAY_CURRENCY_RATES tcr'
      '                            where'
      
        '                              (tcr.CURRENCY_CODE = prpp.ACQUIRE_' +
        'CURRENCY_CODE)'
      '                          ) /'
      '                          ( select'
      '                              tcr.FIXING'
      '                            from'
      '                              TODAY_CURRENCY_RATES tcr'
      '                            where'
      
        '                              (tcr.CURRENCY_CODE = c.CURRENCY_CO' +
        'DE)'
      '                          )'
      '                        )'
      '                      ) as SALE_COVER_ACQUIRE_TOTAL_PRICE,'
      ''
      '                      ( prpp.EST_SALE_COVER_LEASE_QTY *'
      '                        prpp.EST_SALE_COVER_LEASE_DURATION *'
      '                        prpp.LEASE_SINGLE_PRICE *'
      '                        sfml.LINE_QUANTITY_PERCENT *'
      '                        ( ( select'
      '                              tcr.FIXING'
      '                            from'
      '                              TODAY_CURRENCY_RATES tcr'
      '                            where'
      
        '                              (tcr.CURRENCY_CODE = prpp.LEASE_CU' +
        'RRENCY_CODE)'
      '                          ) /'
      '                          ( select'
      '                              tcr.FIXING'
      '                            from'
      '                              TODAY_CURRENCY_RATES tcr'
      '                            where'
      
        '                              (tcr.CURRENCY_CODE = c.CURRENCY_CO' +
        'DE)'
      '                          )'
      '                        )'
      '                      ) as SALE_COVER_LEASE_TOTAL_PRICE,'
      ''
      '                      ( prpp.EST_ENV_COVER_ACQUIRE_QTY *'
      '                        prpp.ACQUIRE_SINGLE_PRICE *'
      '                        sfml.LINE_QUANTITY_PERCENT *'
      '                        ( ( select'
      '                              tcr.FIXING'
      '                            from'
      '                              TODAY_CURRENCY_RATES tcr'
      '                            where'
      
        '                              (tcr.CURRENCY_CODE = prpp.ACQUIRE_' +
        'CURRENCY_CODE)'
      '                          ) /'
      '                          ( select'
      '                              tcr.FIXING'
      '                            from'
      '                              TODAY_CURRENCY_RATES tcr'
      '                            where'
      
        '                              (tcr.CURRENCY_CODE = c.CURRENCY_CO' +
        'DE)'
      '                          )'
      '                        )'
      '                      ) as ENV_COVER_ACQUIRE_TOTAL_PRICE,'
      ''
      '                      ( prpp.EST_ENV_COVER_LEASE_QTY *'
      '                        prpp.EST_ENV_COVER_LEASE_DURATION *'
      '                        prpp.LEASE_SINGLE_PRICE *'
      '                        sfml.LINE_QUANTITY_PERCENT *'
      '                        ( ( select'
      '                              tcr.FIXING'
      '                            from'
      '                              TODAY_CURRENCY_RATES tcr'
      '                            where'
      
        '                              (tcr.CURRENCY_CODE = prpp.LEASE_CU' +
        'RRENCY_CODE)'
      '                          ) /'
      '                          ( select'
      '                              tcr.FIXING'
      '                            from'
      '                              TODAY_CURRENCY_RATES tcr'
      '                            where'
      
        '                              (tcr.CURRENCY_CODE = c.CURRENCY_CO' +
        'DE)'
      '                          )'
      '                        )'
      '                      ) as ENV_COVER_LEASE_TOTAL_PRICE,'
      ''
      '                      Coalesce('
      
        '                        ( DateTimeUtils.CountIntersectWorkdays(p' +
        'rpp.BEGIN_DATE, prpp.END_DATE, txd.THE_FIRST_DATE, txd.THE_LAST_' +
        'DATE) /'
      
        '                          NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE' +
        '~prpp.END_DATE], 0)'
      '                        ),'
      
        '                        ( DateTimeUtils.DatePeriodIntersectLengt' +
        'h(prpp.BEGIN_DATE, prpp.END_DATE, txd.THE_FIRST_DATE, txd.THE_LA' +
        'ST_DATE) /'
      '                          (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '                        )'
      '                      ) as INTERSECT_COEF'
      ''
      '                    from'
      '                      %THE_X_DATES txd,'
      '                      PAR_REL_PRODUCT_PERIODS prpp,'
      '                      PRODUCTS p,'
      '                      CURRENCIES c,'
      '                      PAR_REL_PERIODS prper,'
      '                      SPEC_FIN_MODELS sfm,'
      '                      SPEC_FIN_MODEL_LINES sfml'
      ''
      '                    where'
      
        '                      (txd.THE_LAST_DATE >= Least(:BASE_DATE + 1' +
        ', ContextDate)) and'
      ''
      '                      (txd.THE_FIRST_DATE <= prpp.END_DATE) and'
      '                      (txd.THE_LAST_DATE >= prpp.BEGIN_DATE) and'
      ''
      '                      (prpp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      
        '                      (prpp.PARTNER_CODE = prper.PARTNER_CODE) a' +
        'nd'
      
        '                      (prpp.BEGIN_DATE between prper.BEGIN_DATE ' +
        'and prper.END_DATE) and'
      ''
      
        '                      (prpp.PARTNER_CODE = sfm.EST_MODEL_PARTNER' +
        '_CODE) and'
      
        '                      (prpp.BORDER_REL_TYPE_CODE = sfm.EST_MODEL' +
        '_BORDER_REL_TYPE_CODE) and'
      
        '                      (prper.PAR_REL_PERIOD_CODE = sfm.EST_MODEL' +
        '_PAR_REL_PERIOD_CODE) and'
      ''
      
        '                      (sfm.FINANCIAL_PRODUCT_CODE = c.PRODUCT_CO' +
        'DE) and'
      ''
      
        '                      (sfm.SPEC_FIN_MODEL_CODE = sfml.SPEC_FIN_M' +
        'ODEL_CODE) and'
      ''
      
        '                      (sfml.FIN_MODEL_LINE_TYPE_CODE = %fmlt_PRI' +
        'MARY) and'
      ''
      '                      exists('
      '                        select'
      '                          1'
      '                        from'
      '                          TEMP_FILTERED_PRODUCTS tfp'
      '                        where'
      
        '                          (tfp.PRODUCT_CODE = sfm.FINANCIAL_PROD' +
        'UCT_CODE)'
      '                      ) and'
      ''
      '                      (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '                      %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCT_CO' +
        'DE[:PRODUCT_COMMON_LEVEL ~ prpp.PRODUCT_CODE] and'
      ''
      '                      (:PARTNER_COMMON_LEVEL * null is null) and'
      
        '                      %PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMM' +
        'ON_LEVEL ~ prpp.PARTNER_CODE ~ prpp.BORDER_REL_TYPE_CODE] and'
      ''
      
        '                      ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[pr' +
        'pp], To_Number(:MIN_PRP_STATUS_CODE))'
      '                        between'
      '                          :MIN_PRP_STATUS_CODE'
      '                        and'
      '                          :MAX_PRP_STATUS_CODE'
      '                      )'
      '                  ) g'
      ''
      '                group by'
      '                  g.PRODUCT_CODE,'
      '                  g.THE_FIRST_DATE,'
      '                  g.THE_LAST_DATE,'
      '                  g.WORKDAYS'
      ''
      ''
      
        '                union all  -- osiguriavame vsichki periodi, maka' +
        'r i prazni'
      ''
      ''
      '                select'
      '                  /*+ INDEX(tfp) */'
      '                  tfp.PRODUCT_CODE,'
      '                  txd.THE_FIRST_DATE,'
      '                  txd.THE_LAST_DATE,'
      '                  txd.WORKDAYS,'
      '                  '
      '                  null as IN_SALE_COVER_QUANTITY,'
      '                  null as IN_ENV_COVER_QUANTITY,'
      '                  null as IN_CONSIGN_QUANTITY,'
      '                  null as IN_MODEL_QUANTITY,'
      '                  null as OUT_SALE_ACQUIRE_QUANTITY,'
      '                  null as OUT_SALE_CONSIGN_QUANTITY,'
      '                  null as OUT_SPEC_ACQUIRE_QUANTITY,'
      '                  null as OUT_SPEC_CONSIGN_QUANTITY,'
      '                  null as IN_PAY_SALE_ACQUIRE_QTY,'
      '                  null as IN_PAY_SALE_LEASE_QTY,'
      '                  null as IN_PAY_FIN_SALE_QTY,'
      '                  null as OUT_PAY_SALE_COVER_ACQUIRE_QTY,'
      '                  null as OUT_PAY_SALE_COVER_LEASE_QTY,'
      '                  null as OUT_PAY_ENV_COVER_ACQUIRE_QTY,'
      '                  null as OUT_PAY_ENV_COVER_LEASE_QTY,'
      '                  null as OUT_PAY_FIN_DELIVERY_QTY,'
      '                  null as OUT_PAY_BUDGET_DELIVERY_QTY'
      ''
      '                from'
      '                  %THE_X_DATES txd,'
      '                  TEMP_FILTERED_PRODUCTS tfp'
      ''
      '                where'
      
        '                  (txd.THE_FIRST_DATE between :BEGIN_DATE and :E' +
        'ND_DATE) and'
      ''
      '                  (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '                  %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCT_CODE[:' +
        'PRODUCT_COMMON_LEVEL ~ tfp.PRODUCT_CODE]'
      '              ) w'
      ''
      '            group by'
      '              w.PRODUCT_CODE,'
      '              w.THE_FIRST_DATE,'
      '              w.THE_LAST_DATE,'
      '              w.WORKDAYS'
      '          ) x'
      '      ) y'
      '  ) z'
      ''
      'where'
      '  (z.THE_FIRST_DATE between :BEGIN_DATE and :END_DATE)'
      ''
      'group by'
      '  z.THE_FIRST_DATE,'
      '  z.THE_LAST_DATE,'
      '  z.WORKDAYS'
      ''
      'order by'
      '  DATE_UNIT_FIRST_DATE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[y.PRODUCT_CODE ~ y.THE_FIRST_D' +
          'ATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'brt_VENDOR'
        ParamType = ptInput
        Value = 'CommonConsts.brtVendor'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = 'CommonConsts.brtClient'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE]'
        ParamType = ptInput
        Value = 'CountWorkdays(prpp.BEGIN_DATE, prpp.END_DATE)'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATES'
        ParamType = ptInput
        Value = 'THE_MONTH_DATES'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCT_CODE[:PRODUCT_COMMON_LEVE' +
          'L ~ prpp.PRODUCT_CODE]'
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
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '999'
      end
      item
        DataType = ftWideString
        Name = 'pc_FINANCIAL'
        ParamType = ptInput
        Value = '999'
      end
      item
        DataType = ftWideString
        Name = 'pc_BUDGET'
        ParamType = ptInput
        Value = '999'
      end
      item
        DataType = ftWideString
        Name = 'fmlt_PRIMARY'
        ParamType = ptInput
        Value = '999'
      end
      item
        DataType = ftString
        Name = 
          'PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCT_CODE[:PRODUCT_COMMON_LEVE' +
          'L ~ tfp.PRODUCT_CODE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    DefaultOrder.Fields = 'DATE_UNIT_FIRST_DATE'
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 240
    Top = 448
    object qryEstQuantitiesGraphDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField
      FieldName = 'DATE_UNIT_FIRST_DATE'
    end
    object qryEstQuantitiesGraphDATE_UNIT_LAST_DATE: TAbmesSQLTimeStampField
      FieldName = 'DATE_UNIT_LAST_DATE'
    end
    object qryEstQuantitiesGraphDATE_UNIT_NO: TAbmesFloatField
      FieldName = 'DATE_UNIT_NO'
    end
    object qryEstQuantitiesGraphWORKDAYS: TAbmesFloatField
      FieldName = 'WORKDAYS'
    end
    object qryEstQuantitiesGraphIN_SALE_COVER_QUANTITY: TAbmesFloatField
      FieldName = 'IN_SALE_COVER_QUANTITY'
    end
    object qryEstQuantitiesGraphIN_ENV_COVER_QUANTITY: TAbmesFloatField
      FieldName = 'IN_ENV_COVER_QUANTITY'
    end
    object qryEstQuantitiesGraphIN_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'IN_CONSIGN_QUANTITY'
    end
    object qryEstQuantitiesGraphIN_MODEL_QUANTITY: TAbmesFloatField
      FieldName = 'IN_MODEL_QUANTITY'
    end
    object qryEstQuantitiesGraphIN_PAY_SALE_ACQUIRE_QTY: TAbmesFloatField
      FieldName = 'IN_PAY_SALE_ACQUIRE_QTY'
    end
    object qryEstQuantitiesGraphIN_PAY_SALE_LEASE_QTY: TAbmesFloatField
      FieldName = 'IN_PAY_SALE_LEASE_QTY'
    end
    object qryEstQuantitiesGraphIN_PAY_FIN_SALE_QTY: TAbmesFloatField
      FieldName = 'IN_PAY_FIN_SALE_QTY'
    end
    object qryEstQuantitiesGraphOUT_SALE_ACQUIRE_QUANTITY: TAbmesFloatField
      FieldName = 'OUT_SALE_ACQUIRE_QUANTITY'
    end
    object qryEstQuantitiesGraphOUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'OUT_SALE_CONSIGN_QUANTITY'
    end
    object qryEstQuantitiesGraphOUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField
      FieldName = 'OUT_SPEC_ACQUIRE_QUANTITY'
    end
    object qryEstQuantitiesGraphOUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'OUT_SPEC_CONSIGN_QUANTITY'
    end
    object qryEstQuantitiesGraphOUT_PAY_SALE_COVER_ACQUIRE_QTY: TAbmesFloatField
      FieldName = 'OUT_PAY_SALE_COVER_ACQUIRE_QTY'
    end
    object qryEstQuantitiesGraphOUT_PAY_SALE_COVER_LEASE_QTY: TAbmesFloatField
      FieldName = 'OUT_PAY_SALE_COVER_LEASE_QTY'
    end
    object qryEstQuantitiesGraphOUT_PAY_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField
      FieldName = 'OUT_PAY_ENV_COVER_ACQUIRE_QTY'
    end
    object qryEstQuantitiesGraphOUT_PAY_ENV_COVER_LEASE_QTY: TAbmesFloatField
      FieldName = 'OUT_PAY_ENV_COVER_LEASE_QTY'
    end
    object qryEstQuantitiesGraphOUT_PAY_FIN_DELIVERY_QTY: TAbmesFloatField
      FieldName = 'OUT_PAY_FIN_DELIVERY_QTY'
    end
    object qryEstQuantitiesGraphOUT_PAY_BUDGET_DELIVERY_QTY: TAbmesFloatField
      FieldName = 'OUT_PAY_BUDGET_DELIVERY_QTY'
    end
    object qryEstQuantitiesGraphTOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_QUANTITY'
    end
    object qryEstQuantitiesGraphNEGATIVE_QUANTITY: TAbmesFloatField
      FieldName = 'NEGATIVE_QUANTITY'
    end
    object qryEstQuantitiesGraphPOSITIVE_QUANTITY: TAbmesFloatField
      FieldName = 'POSITIVE_QUANTITY'
    end
    object qryEstQuantitiesGraphDEFICIT_QUANTITY: TAbmesFloatField
      FieldName = 'DEFICIT_QUANTITY'
    end
    object qryEstQuantitiesGraphPASSIVE_QUANTITY: TAbmesFloatField
      FieldName = 'PASSIVE_QUANTITY'
    end
    object qryEstQuantitiesGraphACC_IN_SALE_COVER_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_IN_SALE_COVER_QUANTITY'
    end
    object qryEstQuantitiesGraphACC_IN_ENV_COVER_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_IN_ENV_COVER_QUANTITY'
    end
    object qryEstQuantitiesGraphACC_IN_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_IN_CONSIGN_QUANTITY'
    end
    object qryEstQuantitiesGraphACC_IN_MODEL_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_IN_MODEL_QUANTITY'
    end
    object qryEstQuantitiesGraphACC_IN_PAY_SALE_ACQUIRE_QTY: TAbmesFloatField
      FieldName = 'ACC_IN_PAY_SALE_ACQUIRE_QTY'
    end
    object qryEstQuantitiesGraphACC_IN_PAY_SALE_LEASE_QTY: TAbmesFloatField
      FieldName = 'ACC_IN_PAY_SALE_LEASE_QTY'
    end
    object qryEstQuantitiesGraphACC_IN_PAY_FIN_SALE_QTY: TAbmesFloatField
      FieldName = 'ACC_IN_PAY_FIN_SALE_QTY'
    end
    object qryEstQuantitiesGraphACC_OUT_SALE_ACQUIRE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_OUT_SALE_ACQUIRE_QUANTITY'
    end
    object qryEstQuantitiesGraphACC_OUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_OUT_SALE_CONSIGN_QUANTITY'
    end
    object qryEstQuantitiesGraphACC_OUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_OUT_SPEC_ACQUIRE_QUANTITY'
    end
    object qryEstQuantitiesGraphACC_OUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_OUT_SPEC_CONSIGN_QUANTITY'
    end
    object qryEstQuantitiesGraphACC_OUT_PAY_SALE_COVER_ACQ_QTY: TAbmesFloatField
      FieldName = 'ACC_OUT_PAY_SALE_COVER_ACQ_QTY'
    end
    object qryEstQuantitiesGraphACC_OUT_PAY_SALE_COVER_LSE_QTY: TAbmesFloatField
      FieldName = 'ACC_OUT_PAY_SALE_COVER_LSE_QTY'
    end
    object qryEstQuantitiesGraphACC_OUT_PAY_ENV_COVER_ACQ_QTY: TAbmesFloatField
      FieldName = 'ACC_OUT_PAY_ENV_COVER_ACQ_QTY'
    end
    object qryEstQuantitiesGraphACC_OUT_PAY_ENV_COVER_LSE_QTY: TAbmesFloatField
      FieldName = 'ACC_OUT_PAY_ENV_COVER_LSE_QTY'
    end
    object qryEstQuantitiesGraphACC_OUT_PAY_FIN_DELIV_QTY: TAbmesFloatField
      FieldName = 'ACC_OUT_PAY_FIN_DELIV_QTY'
    end
    object qryEstQuantitiesGraphACC_OUT_PAY_BUDGET_DELIV_QTY: TAbmesFloatField
      FieldName = 'ACC_OUT_PAY_BUDGET_DELIV_QTY'
    end
    object qryEstQuantitiesGraphACC_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_TOTAL_QUANTITY'
    end
    object qryEstQuantitiesGraphACC_NEGATIVE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_NEGATIVE_QUANTITY'
    end
    object qryEstQuantitiesGraphACC_POSITIVE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_POSITIVE_QUANTITY'
    end
    object qryEstQuantitiesGraphACC_DEFICIT_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_DEFICIT_QUANTITY'
    end
    object qryEstQuantitiesGraphACC_PASSIVE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_PASSIVE_QUANTITY'
    end
    object qryEstQuantitiesGraphIN_SALE_COVER_PRICE: TAbmesFloatField
      FieldName = 'IN_SALE_COVER_PRICE'
    end
    object qryEstQuantitiesGraphIN_ENV_COVER_PRICE: TAbmesFloatField
      FieldName = 'IN_ENV_COVER_PRICE'
    end
    object qryEstQuantitiesGraphIN_CONSIGN_PRICE: TAbmesFloatField
      FieldName = 'IN_CONSIGN_PRICE'
    end
    object qryEstQuantitiesGraphIN_MODEL_PRICE: TAbmesFloatField
      FieldName = 'IN_MODEL_PRICE'
    end
    object qryEstQuantitiesGraphIN_PAY_SALE_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'IN_PAY_SALE_ACQUIRE_PRICE'
    end
    object qryEstQuantitiesGraphIN_PAY_SALE_LEASE_PRICE: TAbmesFloatField
      FieldName = 'IN_PAY_SALE_LEASE_PRICE'
    end
    object qryEstQuantitiesGraphIN_PAY_FIN_SALE_PRICE: TAbmesFloatField
      FieldName = 'IN_PAY_FIN_SALE_PRICE'
    end
    object qryEstQuantitiesGraphOUT_SALE_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'OUT_SALE_ACQUIRE_PRICE'
    end
    object qryEstQuantitiesGraphOUT_SALE_CONSIGN_PRICE: TAbmesFloatField
      FieldName = 'OUT_SALE_CONSIGN_PRICE'
    end
    object qryEstQuantitiesGraphOUT_SPEC_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'OUT_SPEC_ACQUIRE_PRICE'
    end
    object qryEstQuantitiesGraphOUT_SPEC_CONSIGN_PRICE: TAbmesFloatField
      FieldName = 'OUT_SPEC_CONSIGN_PRICE'
    end
    object qryEstQuantitiesGraphOUT_PAY_SALE_COVER_ACQUIRE_PRC: TAbmesFloatField
      FieldName = 'OUT_PAY_SALE_COVER_ACQUIRE_PRC'
    end
    object qryEstQuantitiesGraphOUT_PAY_SALE_COVER_LEASE_PRC: TAbmesFloatField
      FieldName = 'OUT_PAY_SALE_COVER_LEASE_PRC'
    end
    object qryEstQuantitiesGraphOUT_PAY_ENV_COVER_ACQUIRE_PRC: TAbmesFloatField
      FieldName = 'OUT_PAY_ENV_COVER_ACQUIRE_PRC'
    end
    object qryEstQuantitiesGraphOUT_PAY_ENV_COVER_LEASE_PRC: TAbmesFloatField
      FieldName = 'OUT_PAY_ENV_COVER_LEASE_PRC'
    end
    object qryEstQuantitiesGraphOUT_PAY_FIN_DELIVERY_PRC: TAbmesFloatField
      FieldName = 'OUT_PAY_FIN_DELIVERY_PRC'
    end
    object qryEstQuantitiesGraphOUT_PAY_BUDGET_DELIVERY_PRC: TAbmesFloatField
      FieldName = 'OUT_PAY_BUDGET_DELIVERY_PRC'
    end
    object qryEstQuantitiesGraphTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryEstQuantitiesGraphNEGATIVE_PRICE: TAbmesFloatField
      FieldName = 'NEGATIVE_PRICE'
    end
    object qryEstQuantitiesGraphPOSITIVE_PRICE: TAbmesFloatField
      FieldName = 'POSITIVE_PRICE'
    end
    object qryEstQuantitiesGraphDEFICIT_PRICE: TAbmesFloatField
      FieldName = 'DEFICIT_PRICE'
    end
    object qryEstQuantitiesGraphPASSIVE_PRICE: TAbmesFloatField
      FieldName = 'PASSIVE_PRICE'
    end
    object qryEstQuantitiesGraphSAME_MEASURE: TAbmesFloatField
      FieldName = 'SAME_MEASURE'
    end
    object qryEstQuantitiesGraphMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryEstQuantitiesGraphACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryEstQuantitiesGraphSINGLE_PRODUCT: TAbmesFloatField
      FieldName = 'SINGLE_PRODUCT'
    end
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
      '  r.ROUNDER'
      'from'
      '  ROUNDERS r'
      'where'
      '  :VALUE between r.MIN_LIMIT and r.MAX_LIMIT')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 240
    Top = 496
    object qryGetRounderROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
    end
  end
  object prvEstPricesCompareGraph: TDataSetProvider
    DataSet = qryEstPricesCompareGraph
    OnGetData = prvEstPricesCompareGraphGetData
    AfterGetRecords = prvEstPricesCompareGraphAfterGetRecords
    Left = 400
    Top = 400
  end
  object qryEstPricesCompareGraph: TAbmesSQLQuery
    BeforeOpen = qryEstPricesCompareGraphBeforeOpen
    AfterClose = qryEstPricesCompareGraphAfterClose
    OnCalcFields = qryEstPricesCompareGraphCalcFields
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DATE_UNIT_CODE'
        ParamType = ptInput
        Value = '3'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INVESTED_VALUES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INVESTED_VALUES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INVESTED_VALUES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INVESTED_VALUES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INVESTED_VALUES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INVESTED_VALUES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUES_ORIGIN'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftTimeStamp
        Name = 'YEAR_FIRST_DATE_UNIT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
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
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUES_ORIGIN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'YEAR_FIRST_DATE_UNIT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
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
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUES_ORIGIN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'YEAR_FIRST_DATE_UNIT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
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
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUES_ORIGIN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'YEAR_FIRST_DATE_UNIT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
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
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUES_ORIGIN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'YEAR_FIRST_DATE_UNIT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
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
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUES_ORIGIN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'YEAR_FIRST_DATE_UNIT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'YEAR_FIRST_DATE_UNIT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.THE_FIRST_DATE as DATE_UNIT_FIRST_DATE,'
      '  x.THE_LAST_DATE as DATE_UNIT_LAST_DATE,'
      '  x.%YEAR_X_NO as YEAR_DATE_UNIT_NO,'
      
        '  (DateTimeUtils.TimeUnitsBetween(:BEGIN_DATE, x.THE_FIRST_DATE,' +
        ' :DATE_UNIT_CODE) + 1) as DATE_UNIT_NO,'
      '  x.WORKDAYS as DATE_UNIT_WORKDAYS,'
      ''
      '  -- EST'
      '  NullIf('
      '    Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '      1, '
      '      Sum(x.EST_ACQUIRE_VG * x.INTERSECT_COEF)'
      '    ),'
      '    0'
      '  ) as PAST_EST_ACQUIRE_VG,'
      ''
      '  NullIf('
      '    Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '      1, '
      '      Sum(x.EST_LEASE_VG * x.INTERSECT_COEF)'
      '    ),'
      '    0'
      '  ) as PAST_EST_LEASE_VG,'
      ''
      '  Decode(:SHOW_INVESTED_VALUES, 1,'
      '    NullIf('
      '      Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '        1,'
      '        Sum(x.EST_ACQUIRE_IV * x.INTERSECT_COEF)'
      '      ),'
      '      0'
      '    ),'
      '    0'
      '  ) as PAST_EST_ACQUIRE_IV,'
      ''
      '  NullIf('
      '    Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '      1, To_Number(null),'
      '      Sum(x.EST_ACQUIRE_VG * x.INTERSECT_COEF)'
      '    ),'
      '    0'
      '  ) as FUTURE_EST_ACQUIRE_VG,'
      ''
      '  NullIf('
      '    Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '      1, To_Number(null),'
      '      Sum(x.EST_LEASE_VG * x.INTERSECT_COEF)'
      '    ),'
      '    0'
      '  ) as FUTURE_EST_LEASE_VG,'
      ''
      '  Decode(:SHOW_INVESTED_VALUES, 1,'
      '    NullIf('
      '      Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '        1, To_Number(null),'
      '        Sum(x.EST_ACQUIRE_IV * x.INTERSECT_COEF)'
      '      ),'
      '      0'
      '    ),'
      '    0'
      '  ) as FUTURE_EST_ACQUIRE_IV,'
      ''
      '  -- PLAN'
      '  NullIf('
      '    Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '      1,'
      '      Sum(x.PLAN_ACQUIRE_VG * x.INTERSECT_COEF)'
      '    ),'
      '    0'
      '  ) as PAST_PLAN_REM_ACQUIRE_VG,'
      ''
      '  NullIf('
      '    Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '      1,'
      '      Sum(x.PLAN_LEASE_VG * x.INTERSECT_COEF)'
      '    ),'
      '    0'
      '  ) as PAST_PLAN_REM_LEASE_VG,'
      ''
      '  Decode(:SHOW_INVESTED_VALUES, 1,'
      '    NullIf('
      '      Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '        1,'
      '        Sum(x.PLAN_ACQUIRE_IV * x.INTERSECT_COEF)'
      '      ),'
      '      0'
      '    ),'
      '    0'
      '  ) as PAST_PLAN_REM_ACQUIRE_IV,'
      ''
      '  NullIf('
      '    Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '      1, To_Number(null),'
      '      Sum(x.PLAN_ACQUIRE_VG * x.INTERSECT_COEF)'
      '    ),'
      '    0'
      '  ) as FUTURE_PLAN_REM_ACQUIRE_VG,'
      ''
      '  NullIf('
      '    Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '      1, To_Number(null),'
      '      Sum(x.PLAN_LEASE_VG * x.INTERSECT_COEF)'
      '    ),'
      '    0'
      '  ) as FUTURE_PLAN_REM_LEASE_VG,'
      ''
      '  Decode(:SHOW_INVESTED_VALUES, 1,'
      '    NullIf('
      '      Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '        1, To_Number(null),'
      '        Sum(x.PLAN_ACQUIRE_IV * x.INTERSECT_COEF)'
      '      ),'
      '      0'
      '    ),'
      '    0'
      '  ) as FUTURE_PLAN_REM_ACQUIRE_IV,'
      ''
      '  -- REAL'
      '  NullIf('
      '    Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '      1,'
      '      Sum(x.REAL_ACQUIRE_VG * x.INTERSECT_COEF)'
      '    ),'
      '    0'
      '  ) as PAST_REAL_ACQUIRE_VG,'
      ''
      '  NullIf('
      '    Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '      1,'
      '      Sum(x.REAL_LEASE_VG * x.INTERSECT_COEF)'
      '    ),'
      '    0'
      '  ) as PAST_REAL_LEASE_VG,'
      ''
      '  Decode(:SHOW_INVESTED_VALUES, 1,'
      '    NullIf('
      '      Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '        1,'
      '        Sum(x.REAL_ACQUIRE_IV * x.INTERSECT_COEF)'
      '      ),'
      '      0'
      '    ),'
      '    0'
      '  ) as PAST_REAL_ACQUIRE_IV,'
      ''
      '  NullIf('
      '    Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '      1, To_Number(null),'
      '      Sum(x.REAL_ACQUIRE_VG * x.INTERSECT_COEF)'
      '    ),'
      '    0'
      '  ) as FUTURE_REAL_ACQUIRE_VG,'
      ''
      '  NullIf('
      '    Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '      1, To_Number(null),'
      '      Sum(x.REAL_LEASE_VG * x.INTERSECT_COEF)'
      '    ),'
      '    0'
      '  ) as FUTURE_REAL_LEASE_VG,'
      ''
      '  Decode(:SHOW_INVESTED_VALUES, 1,'
      '    NullIf('
      '      Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '        1, To_Number(null),'
      '        Sum(x.REAL_ACQUIRE_IV * x.INTERSECT_COEF)'
      '      ),'
      '      0'
      '    ),'
      '    0'
      '  ) as FUTURE_REAL_ACQUIRE_IV,'
      ''
      '  NullIf('
      '    Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '      1, To_Number(null),'
      '      Sum(x.PLAN_BUDGET_PRICE * x.INTERSECT_COEF)'
      '    ),'
      '    0'
      '  ) as PLAN_BUDGET_PRICE,'
      ''
      '  NullIf('
      '    Decode(Sign(ContextDate - x.THE_LAST_DATE),'
      '      1, To_Number(null),'
      '      Sum(x.REAL_BUDGET_PRICE * x.INTERSECT_COEF)'
      '    ),'
      '    0'
      '  ) as REAL_BUDGET_PRICE,'
      ''
      '  To_Number(null) as DENSITY_WITH_LATE_PLAN,'
      '  To_Number(null) as DENSITY_WITHOUT_LATE_PLAN,'
      '  To_Number(null) as VALUE_ADDED_DENSITY'
      ''
      'from'
      
        '  ( select /*+ NO_USE_MERGE(txd prpp pp p) NO_USE_HASH(txd prpp ' +
        'pp p) USE_NL(txd prpp pp p)*/'
      '      txd.THE_FIRST_DATE,'
      '      txd.THE_LAST_DATE,'
      '      txd.%YEAR_X_NO,'
      '      txd.WORKDAYS,'
      ''
      
        '      Decode(Coalesce(To_Number(:OBTAINMENT_TYPE_CODE), %ot_ACQU' +
        'IRE), %ot_ACQUIRE,'
      
        '        ( ( Coalesce(Decode(:BORDER_PROD_ORDER_BASE_TYPE, 1, prp' +
        'p.EST_SALE_COVER_ACQUIRE_QTY), 0) +'
      
        '            Coalesce(Decode(:BORDER_PROD_ORDER_BASE_TYPE, 2, prp' +
        'p.EST_ENV_COVER_ACQUIRE_QTY), 0)'
      '          ) *'
      '          prpp.ACQUIRE_SINGLE_PRICE *'
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      
        '              (cr.CURRENCY_CODE = prpp.ACQUIRE_CURRENCY_CODE) an' +
        'd'
      '              (cr.RATE_DATE = Least(prpp.BEGIN_DATE, ContextDate))'
      '          )'
      '        )'
      '      ) as EST_ACQUIRE_VG,'
      ''
      
        '      Decode(Coalesce(To_Number(:OBTAINMENT_TYPE_CODE), %ot_LEAS' +
        'E), %ot_LEASE,'
      
        '        ( ( Coalesce(Decode(:BORDER_PROD_ORDER_BASE_TYPE, 1, prp' +
        'p.EST_SALE_COVER_ACQUIRE_QTY * prpp.EST_SALE_COVER_LEASE_DURATIO' +
        'N), 0) +'
      
        '            Coalesce(Decode(:BORDER_PROD_ORDER_BASE_TYPE, 2, prp' +
        'p.EST_ENV_COVER_ACQUIRE_QTY * prpp.EST_ENV_COVER_LEASE_DURATION)' +
        ', 0)'
      '          ) *'
      '          prpp.LEASE_SINGLE_PRICE *'
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = prpp.LEASE_CURRENCY_CODE) and'
      '              (cr.RATE_DATE = Least(prpp.BEGIN_DATE, ContextDate))'
      '          )'
      '        )'
      '      ) as EST_LEASE_VG,'
      ''
      '      Decode(:BORDER_REL_TYPE_CODE, %brt_CLIENT,'
      
        '        Decode(Coalesce(To_Number(:OBTAINMENT_TYPE_CODE), %ot_AC' +
        'QUIRE), %ot_ACQUIRE,'
      
        '          ( ( Coalesce(Decode(:BORDER_PROD_ORDER_BASE_TYPE, 1, p' +
        'rpp.EST_SALE_COVER_ACQUIRE_QTY), 0) +'
      
        '              Coalesce(Decode(:BORDER_PROD_ORDER_BASE_TYPE, 2, p' +
        'rpp.EST_ENV_COVER_ACQUIRE_QTY), 0)'
      '            ) *'
      
        '            ProductUtils.PsdSinglePriceInBaseCurrencyEx(pp.PRODU' +
        'CT_CODE, prpp.BEGIN_DATE)'
      '          )'
      '        )'
      '      ) as EST_ACQUIRE_IV,'
      ''
      '      To_Number(null) as PLAN_ACQUIRE_VG,'
      '      To_Number(null) as PLAN_LEASE_VG,'
      '      To_Number(null) as PLAN_ACQUIRE_IV,'
      ''
      '      To_Number(null) as REAL_ACQUIRE_VG,'
      '      To_Number(null) as REAL_LEASE_VG,'
      '      To_Number(null) as REAL_ACQUIRE_IV,'
      ''
      '      To_Number(null) as PLAN_BUDGET_PRICE,'
      '      To_Number(null) as REAL_BUDGET_PRICE,'
      ''
      '      Coalesce('
      
        '        ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, ' +
        'prpp.END_DATE, txd.THE_FIRST_DATE, txd.THE_LAST_DATE) /'
      
        '          NullIf(%COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE],' +
        ' 0)'
      '        ),'
      
        '        ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DAT' +
        'E, prpp.END_DATE, txd.THE_FIRST_DATE, txd.THE_LAST_DATE) /'
      '          (prpp.END_DATE - prpp.BEGIN_DATE + 1)'
      '        )'
      '      ) as INTERSECT_COEF'
      ''
      '    from'
      '      %THE_X_DATES txd,'
      '      PAR_REL_PRODUCT_PERIODS prpp,'
      '      PRODUCT_PERIODS pp,'
      '      PRODUCTS p'
      ''
      '    where'
      '      (Coalesce(To_Number(:VALUES_ORIGIN), 1) = 1) and'
      ''
      
        '      (txd.THE_FIRST_DATE between :YEAR_FIRST_DATE_UNIT_DATE and' +
        ' :END_DATE) and'
      ''
      '      (txd.THE_FIRST_DATE <= prpp.END_DATE) and'
      '      (txd.THE_LAST_DATE >= prpp.BEGIN_DATE) and'
      '      (prpp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      ''
      '      (pp.PRODUCT_CODE = prpp.PRODUCT_CODE) and'
      
        '      (prpp.BEGIN_DATE between pp.BEGIN_DATE and pp.END_DATE) an' +
        'd'
      ''
      '      (prpp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '      (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '      ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '        exists('
      '          select'
      '            /*+ INDEX(tfp) */'
      '            1'
      '          from'
      '            TEMP_FILTERED_PRODUCTS tfp'
      '          where'
      '            (tfp.PRODUCT_CODE = prpp.PRODUCT_CODE)'
      '        )'
      '      ) and'
      ''
      '      (:PRODUCT_COMMON_LEVEL * null is null) and'
      
        '      %PRODUCT_COMMON_LEVEL_FILTER_BY_PRODUCTS_TABLE[:PRODUCT_CO' +
        'MMON_LEVEL ~ p] and'
      ''
      '      (:PARTNER_COMMON_LEVEL * null is null) and'
      
        '      %PARTNER_COMMON_LEVEL_FILTER[:PARTNER_COMMON_LEVEL ~ prpp.' +
        'PARTNER_CODE ~ prpp.BORDER_REL_TYPE_CODE] and'
      ''
      '      ( (:ALL_FILTERED_COMPANIES = 1) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            TEMP_FILTERED_COMPANIES tfc'
      '          where'
      '            (tfc.COMPANY_CODE = prpp.PARTNER_CODE)'
      '        )'
      '      ) and'
      ''
      
        '      ( Coalesce(%PAR_REL_PRODUCT_STATUS_CODE[prpp], To_Number(:' +
        'MIN_PRP_STATUS_CODE))'
      '        between'
      '          :MIN_PRP_STATUS_CODE'
      '        and'
      '          :MAX_PRP_STATUS_CODE'
      '      )'
      '      '
      ''
      '    union all  -- dobaviame planovite prodajbi'
      ''
      ''
      
        '    select /*+ NO_USE_HASH(txd ssh s p bdt) INDEX(txd) INDEX(ssh' +
        ') INDEX(s) INDEX(p) INDEX(bdt) */'
      '      txd.THE_FIRST_DATE,'
      '      txd.THE_LAST_DATE,'
      '      txd.%YEAR_X_NO,'
      '      txd.WORKDAYS,'
      ''
      '      To_Number(null) as EST_ACQUIRE_VG,'
      '      To_Number(null) as EST_LEASE_VG,'
      '      To_Number(null) as EST_ACQUIRE_IV,'
      ''
      '      Decode(s.SALE_DEAL_TYPE_CODE, %sdt_SALE,'
      '        ( select'
      '            ssh.PLAN_QUANTITY * s.SINGLE_PRICE * tcr.FIXING'
      '          from'
      '            TODAY_CURRENCY_RATES tcr'
      '          where'
      '            (tcr.CURRENCY_CODE = s.CURRENCY_CODE)'
      '        )'
      '      ) as PLAN_ACQUIRE_VG,'
      ''
      '      Decode(s.SALE_DEAL_TYPE_CODE, %sdt_LEASE,'
      '        ( select'
      
        '            ssh.LEASE_PLAN_DATE_UNIT_QTY * ssh.PLAN_QUANTITY * s' +
        '.SINGLE_PRICE * tcr.FIXING'
      '          from'
      '            TODAY_CURRENCY_RATES tcr'
      '          where'
      '            (tcr.CURRENCY_CODE = s.CURRENCY_CODE)'
      '        )'
      '      ) as PLAN_LEASE_VG,'
      ''
      '      Decode(s.SALE_DEAL_TYPE_CODE, %sdt_SALE,'
      '        ( select'
      
        '            Sum(psd.QUANTITY * %PSD_SINGLE_PRICE_IN_BASE_CURRENC' +
        'Y[psd.PRODUCT_CODE ~ psd.STORE_DEAL_BEGIN_DATE])'
      '          from'
      '            PLANNED_STORE_DEALS psd'
      '          where'
      
        '            (ssh.SHIPMENT_OBJECT_BRANCH_CODE = psd.BND_PROCESS_O' +
        'BJECT_BRANCH_CODE) and'
      
        '            (ssh.SHIPMENT_OBJECT_CODE = psd.BND_PROCESS_OBJECT_C' +
        'ODE) and'
      ''
      '            (psd.BND_PROCESS_CODE = 160) and'
      '            (psd.ANNUL_EMPLOYEE_CODE is null)'
      '        )'
      '      ) as PLAN_ACQUIRE_IV,'
      ''
      '      To_Number(null) as REAL_ACQUIRE_VG,'
      '      To_Number(null) as REAL_LEASE_VG,'
      '      To_Number(null) as REAL_ACQUIRE_IV,'
      ''
      '      To_Number(null) as PLAN_BUDGET_PRICE,'
      '      To_Number(null) as REAL_BUDGET_PRICE,'
      ''
      '      1 as INTERSECT_COEF'
      ''
      '    from'
      '      %THE_X_DATES txd,'
      '      SALE_SHIPMENTS ssh,'
      '      SALES s,'
      '      PRODUCTS p,'
      '      BORDER_DEAL_TYPES bdt'
      ''
      '    where'
      '      ( (:BRANCH_CODE is null) or'
      '        (s.SALE_BRANCH_CODE = :BRANCH_CODE) ) and'
      ''
      '      (Coalesce(To_Number(:VALUES_ORIGIN), 2) = 2) and'
      ''
      '      (:BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      
        '      (txd.THE_FIRST_DATE between :YEAR_FIRST_DATE_UNIT_DATE and' +
        ' :END_DATE) and'
      ''
      
        '      (ssh.RESULT_DATE between txd.THE_FIRST_DATE and txd.THE_LA' +
        'ST_DATE) and'
      ''
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJECT_BRANCH_CODE) ' +
        'and'
      '      (s.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE) and'
      ''
      '      (bdt.BORDER_DEAL_TYPE_CODE = s.SALE_DEAL_TYPE_CODE) and'
      ''
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '      (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '      ( (:OBTAINMENT_TYPE_CODE is null) or'
      '        (bdt.OBTAINMENT_TYPE_CODE = :OBTAINMENT_TYPE_CODE) ) and'
      ''
      '      ( (ssh.INVOICE_DATE is null) or'
      '        (ssh.SHIPMENT_DATE is null)'
      '      ) and'
      ''
      '      (s.FINISH_EMPLOYEE_CODE is null) and'
      '      (s.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '      ( (:ALL_FILTERED_COMPANIES = 1) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            TEMP_FILTERED_COMPANIES tfc'
      '          where'
      '            (tfc.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            TEMP_FILTERED_PRODUCTS tfp'
      '          where'
      '            (tfp.PRODUCT_CODE = s.PRODUCT_CODE)'
      '        )'
      '      )'
      ''
      ''
      '    union all  -- dobaviame otchetnite prodajbi'
      ''
      ''
      
        '    select /*+ NO_USE_HASH(txd ssh s p bdt) INDEX(txd) INDEX(ssh' +
        ') INDEX(s) INDEX(p) INDEX(bdt) */'
      '      txd.THE_FIRST_DATE,'
      '      txd.THE_LAST_DATE,'
      '      txd.%YEAR_X_NO,'
      '      txd.WORKDAYS,'
      ''
      '      To_Number(null) as EST_ACQUIRE_VG,'
      '      To_Number(null) as EST_LEASE_VG,'
      '      To_Number(null) as EST_ACQUIRE_IV,'
      ''
      '      To_Number(null) as PLAN_ACQUIRE_VG,'
      '      To_Number(null) as PLAN_LEASE_VG,'
      '      To_Number(null) as PLAN_ACQUIRE_IV,'
      ''
      '      Decode(s.SALE_DEAL_TYPE_CODE, %sdt_SALE,'
      '        ( select'
      '            ssh.QUANTITY * ssh.INVOICE_SINGLE_PRICE * cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.RATE_DATE = ssh.INVOICE_DATE) and'
      '            (cr.CURRENCY_CODE = ssh.INVOICE_CURRENCY_CODE)'
      '        )'
      '      ) as REAL_ACQUIRE_VG,'
      ''
      '      Decode(s.SALE_DEAL_TYPE_CODE, %sdt_LEASE,'
      '        ( select'
      
        '            ssh.LEASE_DATE_UNIT_QTY * ssh.QUANTITY * ssh.INVOICE' +
        '_SINGLE_PRICE * cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.RATE_DATE = ssh.INVOICE_DATE) and'
      '            (cr.CURRENCY_CODE = ssh.INVOICE_CURRENCY_CODE)'
      '        )'
      '      ) as REAL_LEASE_VG,'
      ''
      '      Decode(s.SALE_DEAL_TYPE_CODE, %sdt_SALE,'
      '        ( select'
      '           Sum(sd.TOTAL_PRICE * cr.FIXING)'
      '          from'
      '            STORE_DEALS sd,'
      '            CURRENCY_RATES cr'
      '          where'
      
        '            (ssh.SHIPMENT_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OB' +
        'JECT_BRANCH_CODE) and'
      
        '            (ssh.SHIPMENT_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CO' +
        'DE) and'
      ''
      '            (sd.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '            (sd.STORE_DEAL_DATE = cr.RATE_DATE) and'
      ''
      '            (sd.BND_PROCESS_CODE = 160) and'
      '            (sd.IN_OUT = -1) and'
      '            (sd.STORNO_EMPLOYEE_CODE is null)'
      '        )'
      '      ) as REAL_ACQUIRE_IV,'
      ''
      '      To_Number(null) as PLAN_BUDGET_PRICE,'
      '      To_Number(null) as REAL_BUDGET_PRICE,'
      ''
      '      1 as INTERSECT_COEF'
      ''
      '    from'
      '      %THE_X_DATES txd,'
      '      SALE_SHIPMENTS ssh,'
      '      SALES s,'
      '      PRODUCTS p,'
      '      BORDER_DEAL_TYPES bdt'
      ''
      '    where'
      '      ( (:BRANCH_CODE is null) or'
      '        (s.SALE_BRANCH_CODE = :BRANCH_CODE) ) and'
      ''
      '      (Coalesce(To_Number(:VALUES_ORIGIN), 2) = 2) and'
      ''
      '      (:BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      ''
      
        '      (txd.THE_FIRST_DATE between :YEAR_FIRST_DATE_UNIT_DATE and' +
        ' :END_DATE) and'
      ''
      
        '      (ssh.RESULT_DATE between txd.THE_FIRST_DATE and txd.THE_LA' +
        'ST_DATE) and'
      ''
      '      ( (s.FINISH_EMPLOYEE_CODE is not null) or'
      '        ( (ssh.INVOICE_DATE is not null) and'
      '          (ssh.SHIPMENT_DATE is not null)'
      '        )'
      '      ) and'
      ''
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJECT_BRANCH_CODE) ' +
        'and'
      '      (s.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE) and'
      ''
      '      (bdt.BORDER_DEAL_TYPE_CODE = s.SALE_DEAL_TYPE_CODE) and'
      ''
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '      (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '      ( (:OBTAINMENT_TYPE_CODE is null) or'
      '        (bdt.OBTAINMENT_TYPE_CODE = :OBTAINMENT_TYPE_CODE) ) and'
      ''
      '      (s.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '      ( (:ALL_FILTERED_COMPANIES = 1) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            TEMP_FILTERED_COMPANIES tfc'
      '          where'
      '            (tfc.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            TEMP_FILTERED_PRODUCTS tfp'
      '          where'
      '            (tfp.PRODUCT_CODE = s.PRODUCT_CODE)'
      '        )'
      '      )'
      ''
      ''
      '    union all  -- dobaviame planovite dostavki'
      ''
      ''
      '    select'
      
        '      /*+ NO_USE_HASH(txd dpr dcd bdt dc) NO_USE_MERGE(txd dpr d' +
        'cd bdt dc) USE_NL(txd dpr dcd bdt dc) INDEX(dcd) INDEX(dpr) INDE' +
        'X(bdt) INDEX(txd) INDEX(dc) */'
      '      txd.THE_FIRST_DATE,'
      '      txd.THE_LAST_DATE,'
      '      txd.%YEAR_X_NO,'
      '      txd.WORKDAYS,'
      ''
      '      To_Number(null) as EST_ACQUIRE_VG,'
      '      To_Number(null) as EST_LEASE_VG,'
      '      To_Number(null) as EST_ACQUIRE_IV,'
      ''
      '      Decode(bdt.OBTAINMENT_TYPE_CODE, %ot_ACQUIRE,'
      '        dpr.TOTAL_PRICE *'
      '        ( select'
      '            tcr.FIXING'
      '          from'
      '            TODAY_CURRENCY_RATES tcr'
      '          where'
      '            (tcr.CURRENCY_CODE = dpr.CURRENCY_CODE)'
      '        )'
      '      ) as PLAN_ACQUIRE_VG,'
      ''
      '      Decode(bdt.OBTAINMENT_TYPE_CODE, %ot_LEASE,'
      '        dpr.TOTAL_PRICE *'
      '        ( select'
      '            tcr.FIXING'
      '          from'
      '            TODAY_CURRENCY_RATES tcr'
      '          where'
      '            (tcr.CURRENCY_CODE = dpr.CURRENCY_CODE)'
      '        )'
      '      ) as PLAN_LEASE_VG,'
      ''
      '      To_Number(null) as PLAN_ACQUIRE_IV,'
      ''
      '      To_Number(null) as REAL_ACQUIRE_VG,'
      '      To_Number(null) as REAL_LEASE_VG,'
      '      To_Number(null) as REAL_ACQUIRE_IV,'
      ''
      '      To_Number(null) as PLAN_BUDGET_PRICE,'
      '      To_Number(null) as REAL_BUDGET_PRICE,'
      ''
      '      1 as INTERSECT_COEF'
      ''
      '    from'
      '      %THE_X_DATES txd,'
      '      DEFICIT_COVER_DECISIONS dcd,'
      '      PRODUCTS p,'
      '      BORDER_DEAL_TYPES bdt,'
      '      DELIVERY_PROJECTS dpr,'
      '      DELIVERY_CONTRACTS dc'
      ''
      '    where'
      '      ( (:BRANCH_CODE is null) or'
      '        (dcd.DCD_BRANCH_CODE = :BRANCH_CODE) ) and'
      ''
      '      (Coalesce(To_Number(:VALUES_ORIGIN), 2) = 2) and'
      ''
      '      (:BORDER_REL_TYPE_CODE = %brt_VENDOR) and'
      ''
      
        '      (txd.THE_FIRST_DATE between :YEAR_FIRST_DATE_UNIT_DATE and' +
        ' :END_DATE) and'
      ''
      
        '      (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE) ' +
        'and'
      ''
      '      ( (:OBTAINMENT_TYPE_CODE is null) or'
      '        (bdt.OBTAINMENT_TYPE_CODE = :OBTAINMENT_TYPE_CODE) ) and'
      ''
      '      ( (:BORDER_PROD_ORDER_BASE_TYPE is null) or'
      
        '        (bdt.PROD_ORDER_BASE_TYPE_CODE = :BORDER_PROD_ORDER_BASE' +
        '_TYPE) ) and'
      ''
      
        '      (dpr.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) ' +
        'and'
      '      (dpr.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      '      (dpr.FINISH_EMPLOYEE_CODE is null) and'
      '      (dpr.ANNUL_EMPLOYEE_CODE is null) and'
      
        '      (dpr.DELIVERY_DATE between txd.THE_FIRST_DATE and txd.THE_' +
        'LAST_DATE) and'
      ''
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dpr.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dc.DCD_OBJECT_CODE = dpr.DCD_OBJECT_CODE) and'
      '      (dc.DELIVERY_PROJECT_CODE = dpr.DELIVERY_PROJECT_CODE) and'
      ''
      '      (dpr.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '      (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '      ( MiscUtils.LargeZero('
      '          dpr.WORK_QUANTITY -'
      '          ( select'
      '              Coalesce(Sum(sd.QUANTITY), 0)'
      '            from'
      '              STORE_DEALS sd'
      '            where'
      
        '              (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_O' +
        'BJECT_BRANCH_CODE) and'
      
        '              (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_C' +
        'ODE) and'
      '              (sd.IN_OUT = 1) and'
      '              (sd.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '        ) > 0'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_COMPANIES = 1) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            TEMP_FILTERED_COMPANIES tfc'
      '          where'
      '            (tfc.COMPANY_CODE = dpr.VENDOR_COMPANY_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            TEMP_FILTERED_PRODUCTS tfp'
      '          where'
      '            (tfp.PRODUCT_CODE = dpr.PRODUCT_CODE)'
      '        )'
      '      )'
      ''
      ''
      '    union all  -- dobaviame otchetnite dostavki'
      ''
      ''
      '    select'
      
        '      /*+ NO_USE_HASH(txd dpr dcd bdt sd dc) NO_USE_MERGE(txd dp' +
        'r dcd bdt sd dc) USE_NL(txd dpr dcd bdt sd dc) INDEX(dcd) INDEX(' +
        'dpr) INDEX(bdt) INDEX(sd) INDEX(dc) */'
      '      txd.THE_FIRST_DATE,'
      '      txd.THE_LAST_DATE,'
      '      txd.%YEAR_X_NO,'
      '      txd.WORKDAYS,'
      ''
      '      To_Number(null) as EST_ACQUIRE_VG,'
      '      To_Number(null) as EST_LEASE_VG,'
      '      To_Number(null) as EST_ACQUIRE_IV,'
      ''
      '      To_Number(null) as PLAN_ACQUIRE_VG,'
      '      To_Number(null) as PLAN_LEASE_VG,'
      '      To_Number(null) as PLAN_ACQUIRE_IV,'
      ''
      '      Decode(bdt.OBTAINMENT_TYPE_CODE, %ot_ACQUIRE,'
      '        ( select'
      '            Sum('
      '              sd.TOTAL_PRICE *'
      '              ( select'
      '                  cr.FIXING'
      '                from'
      '                  CURRENCY_RATES cr'
      '                where'
      '                  (cr.CURRENCY_CODE = sd.CURRENCY_CODE) and'
      '                  (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '              )'
      '            )'
      '          from'
      '            STORE_DEALS sd'
      '          where'
      
        '            (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '            (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_COD' +
        'E) and'
      '            (sd.IN_OUT = 1) and'
      '            (sd.STORNO_EMPLOYEE_CODE is null)'
      '        )'
      '      ) as REAL_ACQUIRE_VG,'
      ''
      '      Decode(bdt.OBTAINMENT_TYPE_CODE, %ot_LEASE,'
      '        ( select'
      '            Sum('
      '              sd.TOTAL_PRICE *'
      '              ( select'
      '                  cr.FIXING'
      '                from'
      '                  CURRENCY_RATES cr'
      '                where'
      '                  (cr.CURRENCY_CODE = sd.CURRENCY_CODE) and'
      '                  (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '              )'
      '            )'
      '          from'
      '            STORE_DEALS sd'
      '          where'
      
        '            (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '            (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_COD' +
        'E) and'
      '            (sd.IN_OUT = 1) and'
      '            (sd.STORNO_EMPLOYEE_CODE is null)'
      '        )'
      '      ) as REAL_LEASE_VG,'
      ''
      '      To_Number(null) as REAL_ACQUIRE_IV,'
      ''
      '      To_Number(null) as PLAN_BUDGET_PRICE,'
      '      To_Number(null) as REAL_BUDGET_PRICE,'
      ''
      '      1 as INTERSECT_COEF'
      ''
      '    from'
      '      %THE_X_DATES txd,'
      '      DEFICIT_COVER_DECISIONS dcd,'
      '      PRODUCTS p,'
      '      BORDER_DEAL_TYPES bdt,'
      '      DELIVERY_PROJECTS dpr,'
      '      DELIVERY_CONTRACTS dc'
      ''
      '    where'
      '      ( (:BRANCH_CODE is null) or'
      '        (dcd.DCD_BRANCH_CODE = :BRANCH_CODE) ) and'
      ''
      '      (Coalesce(To_Number(:VALUES_ORIGIN), 2) = 2) and'
      ''
      '      (:BORDER_REL_TYPE_CODE = %brt_VENDOR) and'
      ''
      
        '      (txd.THE_FIRST_DATE between :YEAR_FIRST_DATE_UNIT_DATE and' +
        ' :END_DATE) and'
      ''
      
        '      (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE) ' +
        'and'
      ''
      '      ( (:OBTAINMENT_TYPE_CODE is null) or'
      '        (bdt.OBTAINMENT_TYPE_CODE = :OBTAINMENT_TYPE_CODE) ) and'
      ''
      '      ( (:BORDER_PROD_ORDER_BASE_TYPE is null) or'
      
        '        (bdt.PROD_ORDER_BASE_TYPE_CODE = :BORDER_PROD_ORDER_BASE' +
        '_TYPE) ) and'
      ''
      
        '      (dpr.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) ' +
        'and'
      '      (dpr.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      '      (dpr.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dpr.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dc.DCD_OBJECT_CODE = dpr.DCD_OBJECT_CODE) and'
      '      (dc.DELIVERY_PROJECT_CODE = dpr.DELIVERY_PROJECT_CODE) and'
      ''
      '      (dpr.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '      (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '      ( ( select'
      '            Max(sd.STORE_DEAL_DATE)'
      '          from'
      '            STORE_DEALS sd'
      '          where'
      
        '            (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '            (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_COD' +
        'E) and'
      '            (sd.IN_OUT = 1) and'
      '            (sd.STORNO_EMPLOYEE_CODE is null)'
      '        )'
      '        between txd.THE_FIRST_DATE and txd.THE_LAST_DATE'
      '      ) and'
      ''
      '      ( (dpr.FINISH_EMPLOYEE_CODE is not null) or'
      '        ( MiscUtils.LargeZero('
      '            dpr.WORK_QUANTITY -'
      '            ( select'
      '                Coalesce(Sum(sd.QUANTITY), 0)'
      '              from'
      '                STORE_DEALS sd'
      '              where'
      
        '                (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY' +
        '_OBJECT_BRANCH_CODE) and'
      
        '                (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT' +
        '_CODE) and'
      '                (sd.IN_OUT = 1) and'
      '                (sd.STORNO_EMPLOYEE_CODE is null)'
      '            )'
      '          ) <= 0'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_COMPANIES = 1) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            TEMP_FILTERED_COMPANIES tfc'
      '          where'
      '            (tfc.COMPANY_CODE = dpr.VENDOR_COMPANY_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            TEMP_FILTERED_PRODUCTS tfp'
      '          where'
      '            (tfp.PRODUCT_CODE = dpr.PRODUCT_CODE)'
      '        )'
      '      )'
      ''
      ''
      '    union all  -- budget'
      ''
      ''
      
        '    select /*+ NO_USE_MERGE(txd bo boi boio) NO_USE_HASH(txd bo ' +
        'boi boio) USE_NL(txd bo boi boio)  INDEX(txd) INDEX(bo) INDEX(bo' +
        'i) INDEX(boio) */'
      '      txd.THE_FIRST_DATE,'
      '      txd.THE_LAST_DATE,'
      '      txd.%YEAR_X_NO,'
      '      txd.WORKDAYS,'
      ''
      '      To_Number(null) as EST_ACQUIRE_VG,'
      '      To_Number(null) as EST_LEASE_VG,'
      '      To_Number(null) as EST_ACQUIRE_IV,'
      ''
      '      To_Number(null) as PLAN_ACQUIRE_VG,'
      '      To_Number(null) as PLAN_LEASE_VG,'
      '      To_Number(null) as PLAN_ACQUIRE_IV,'
      ''
      '      To_Number(null) as REAL_ACQUIRE_VG,'
      '      To_Number(null) as REAL_LEASE_VG,'
      '      To_Number(null) as REAL_ACQUIRE_IV,'
      ''
      '      ( boi.TOTAL_PRICE *'
      '        ( select'
      '            scr.FIXING'
      '          from'
      '            SECONDARY_CURRENCY_RATES scr'
      '          where'
      
        '            (scr.CURRENCY_CODE = (select iv.BASE_CURRENCY_CODE f' +
        'rom INTERNAL_VALUES iv where (CODE = 1))) and'
      '            (scr.RATE_DATE = boi.BEGIN_DATE)'
      '        )'
      '      ) as PLAN_BUDGET_PRICE,'
      ''
      '      ( select'
      '          Sum('
      '            sd.TOTAL_PRICE *'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCY_RATES cr'
      '              where'
      '                (sd.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '                (sd.STORE_DEAL_DATE = cr.RATE_DATE)'
      '            )'
      '          )'
      '        from'
      '          BOI_ORDERS boio,'
      '          STORE_DEALS sd'
      '        where'
      '          ( (:BRANCH_CODE is null) or'
      '            (boio.BUDGET_ORDER_BRANCH_CODE = :BRANCH_CODE) ) and'
      ''
      
        '          (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRAN' +
        'CH_CODE) and'
      '          (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '          (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM_C' +
        'ODE) and'
      
        '          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OB' +
        'JECT_BRANCH_CODE) and'
      
        '          (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CO' +
        'DE) and'
      '          (sd.IN_OUT = -1) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null)'
      '      ) as REAL_BUDGET_PRICE,'
      ''
      '      Coalesce('
      
        '        ( DateTimeUtils.CountIntersectWorkdays(boi.BEGIN_DATE, b' +
        'oi.END_DATE, txd.THE_FIRST_DATE, txd.THE_LAST_DATE) /'
      
        '          NullIf(%COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE], 0' +
        ')'
      '        ),'
      
        '        ( DateTimeUtils.DatePeriodIntersectLength(boi.BEGIN_DATE' +
        ', boi.END_DATE, txd.THE_FIRST_DATE, txd.THE_LAST_DATE) /'
      '          (boi.END_DATE - boi.BEGIN_DATE + 1)'
      '        )'
      '      ) as INTERSECT_COEF'
      ''
      '    from'
      '      %THE_X_DATES txd,'
      '      BUDGET_ORDER_ITEMS boi'
      ''
      '    where'
      
        '      (1 = 0) and  -- slojeno vremenno za da ne vrushta nishto d' +
        'okato ne se izmisli kak triabva da smiata tazi chast. vmomenta s' +
        'miata ochevidno greshno'
      ''
      '      ( (:BRANCH_CODE is null) or'
      '        (boi.BUDGET_ORDER_BRANCH_CODE = :BRANCH_CODE) ) and'
      ''
      '      (Coalesce(To_Number(:VALUES_ORIGIN), 2) = 2) and'
      '      (:ALL_FILTERED_PRODUCTS = 1) and'
      '      (:ALL_FILTERED_COMPANIES = 1) and'
      '      (:PRODUCT_CLASS_CODE = %pc_NORMAL) and'
      ''
      
        '      (txd.THE_FIRST_DATE between :YEAR_FIRST_DATE_UNIT_DATE and' +
        ' :END_DATE) and'
      ''
      '      (boi.BEGIN_DATE <= txd.THE_LAST_DATE) and'
      '      (boi.END_DATE >= txd.THE_FIRST_DATE) and'
      ''
      '      (boi.ANNUL_EMPLOYEE_CODE is null) and'
      '      (boi.CLOSE_EMPLOYEE_CODE is null) and'
      ''
      '      exists('
      '        select'
      '          1'
      '        from'
      '          BUDGET_ORDERS bo'
      '        where'
      
        '          (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH' +
        '_CODE) and'
      '          (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      ''
      '          (bo.ANNUL_EMPLOYEE_CODE is null) and'
      '          (bo.CLOSE_EMPLOYEE_CODE is null)'
      '      )'
      ''
      ''
      '    union all  -- osiguriavame vsichki periodi, makar i prazni'
      ''
      ''
      '    select'
      '      txd.THE_FIRST_DATE,'
      '      txd.THE_LAST_DATE,'
      '      txd.%YEAR_X_NO,'
      '      txd.WORKDAYS,'
      '      To_Number(null) as EST_ACQUIRE_VG,'
      '      To_Number(null) as EST_LEASE_VG,'
      '      To_Number(null) as EST_ACQUIRE_IV,'
      '      To_Number(null) as PLAN_ACQUIRE_VG,'
      '      To_Number(null) as PLAN_LEASE_VG,'
      '      To_Number(null) as PLAN_ACQUIRE_IV,'
      '      To_Number(null) as REAL_ACQUIRE_VG,'
      '      To_Number(null) as REAL_LEASE_VG,'
      '      To_Number(null) as REAL_ACQUIRE_IV,'
      '      To_Number(null) as PLAN_BUDGET_PRICE,'
      '      To_Number(null) as REAL_BUDGET_PRICE,'
      '      To_Number(null) as INTERSECT_COEF'
      ''
      '    from'
      '      %THE_X_DATES txd'
      ''
      '    where'
      
        '      (txd.THE_FIRST_DATE between :YEAR_FIRST_DATE_UNIT_DATE and' +
        ' :END_DATE)'
      '  ) x'
      ''
      'group by'
      '  x.THE_FIRST_DATE,'
      '  x.THE_LAST_DATE,'
      '  x.%YEAR_X_NO,'
      '  x.WORKDAYS'
      ''
      'order by'
      '  THE_FIRST_DATE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'YEAR_X_NO'
        ParamType = ptInput
        Value = 'YEAR_MONTH_NO'
      end
      item
        DataType = ftWideString
        Name = 'ot_ACQUIRE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'ot_LEASE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[prpp.BEGIN_DATE~prpp.END_DATE]'
        ParamType = ptInput
        Value = 'CountWorkdays(prpp.BEGIN_DATE, prpp.END_DATE)'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATES'
        ParamType = ptInput
        Value = 'THE_MONTH_DATES'
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
        Name = 'sdt_SALE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'sdt_LEASE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[psd.PRODUCT_CODE ~ psd.STORE_D' +
          'EAL_BEGIN_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'brt_VENDOR'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE]'
        ParamType = ptInput
        Value = 'CountWorkdays(boi.BEGIN_DATE, boi.END_DATE)'
      end
      item
        DataType = ftWideString
        Name = 'pc_NORMAL'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 400
    Top = 448
    object qryEstPricesCompareGraphPAST_EST_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'PAST_EST_ACQUIRE_VA'
      Calculated = True
    end
    object qryEstPricesCompareGraphFUTURE_EST_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'FUTURE_EST_ACQUIRE_VA'
      Calculated = True
    end
    object qryEstPricesCompareGraphPAST_PLAN_REM_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'PAST_PLAN_REM_ACQUIRE_VA'
      Calculated = True
    end
    object qryEstPricesCompareGraphFUTURE_PLAN_REM_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'FUTURE_PLAN_REM_ACQUIRE_VA'
      Calculated = True
    end
    object qryEstPricesCompareGraphPAST_REAL_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'PAST_REAL_ACQUIRE_VA'
      Calculated = True
    end
    object qryEstPricesCompareGraphFUTURE_REAL_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'FUTURE_REAL_ACQUIRE_VA'
      Calculated = True
    end
    object qryEstPricesCompareGraphPLAN_REM_BUDGET_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'PLAN_REM_BUDGET_PRICE'
      Calculated = True
    end
    object qryEstPricesCompareGraphTOTAL_EST_ACQUIRE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_EST_ACQUIRE_VG'
      Calculated = True
    end
    object qryEstPricesCompareGraphTOTAL_EST_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_EST_LEASE_VG'
      Calculated = True
    end
    object qryEstPricesCompareGraphTOTAL_EST_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_EST_ACQUIRE_IV'
      Calculated = True
    end
    object qryEstPricesCompareGraphTOTAL_EST_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_EST_ACQUIRE_VA'
      Calculated = True
    end
    object qryEstPricesCompareGraphTOTAL_PLAN_REM_ACQUIRE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_PLAN_REM_ACQUIRE_VG'
      Calculated = True
    end
    object qryEstPricesCompareGraphTOTAL_PLAN_REM_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_PLAN_REM_LEASE_VG'
      Calculated = True
    end
    object qryEstPricesCompareGraphTOTAL_PLAN_REM_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_PLAN_REM_ACQUIRE_IV'
      Calculated = True
    end
    object qryEstPricesCompareGraphTOTAL_PLAN_REM_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_PLAN_REM_ACQUIRE_VA'
      Calculated = True
    end
    object qryEstPricesCompareGraphTOTAL_REAL_ACQUIRE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_REAL_ACQUIRE_VG'
      Calculated = True
    end
    object qryEstPricesCompareGraphTOTAL_REAL_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_REAL_LEASE_VG'
      Calculated = True
    end
    object qryEstPricesCompareGraphTOTAL_REAL_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_REAL_ACQUIRE_IV'
      Calculated = True
    end
    object qryEstPricesCompareGraphTOTAL_REAL_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_REAL_ACQUIRE_VA'
      Calculated = True
    end
    object qryEstPricesCompareGraphDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField
      FieldName = 'DATE_UNIT_FIRST_DATE'
    end
    object qryEstPricesCompareGraphDATE_UNIT_LAST_DATE: TAbmesSQLTimeStampField
      FieldName = 'DATE_UNIT_LAST_DATE'
    end
    object qryEstPricesCompareGraphDATE_UNIT_NO: TAbmesFloatField
      FieldName = 'DATE_UNIT_NO'
    end
    object qryEstPricesCompareGraphYEAR_DATE_UNIT_NO: TAbmesFloatField
      FieldName = 'YEAR_DATE_UNIT_NO'
    end
    object qryEstPricesCompareGraphDATE_UNIT_WORKDAYS: TAbmesFloatField
      FieldName = 'DATE_UNIT_WORKDAYS'
    end
    object qryEstPricesCompareGraphPAST_EST_ACQUIRE_VG: TAbmesFloatField
      FieldName = 'PAST_EST_ACQUIRE_VG'
    end
    object qryEstPricesCompareGraphPAST_EST_LEASE_VG: TAbmesFloatField
      FieldName = 'PAST_EST_LEASE_VG'
    end
    object qryEstPricesCompareGraphPAST_EST_ACQUIRE_IV: TAbmesFloatField
      FieldName = 'PAST_EST_ACQUIRE_IV'
    end
    object qryEstPricesCompareGraphFUTURE_EST_ACQUIRE_VG: TAbmesFloatField
      FieldName = 'FUTURE_EST_ACQUIRE_VG'
    end
    object qryEstPricesCompareGraphFUTURE_EST_LEASE_VG: TAbmesFloatField
      FieldName = 'FUTURE_EST_LEASE_VG'
    end
    object qryEstPricesCompareGraphFUTURE_EST_ACQUIRE_IV: TAbmesFloatField
      FieldName = 'FUTURE_EST_ACQUIRE_IV'
    end
    object qryEstPricesCompareGraphPAST_PLAN_REM_ACQUIRE_VG: TAbmesFloatField
      FieldName = 'PAST_PLAN_REM_ACQUIRE_VG'
    end
    object qryEstPricesCompareGraphPAST_PLAN_REM_LEASE_VG: TAbmesFloatField
      FieldName = 'PAST_PLAN_REM_LEASE_VG'
    end
    object qryEstPricesCompareGraphPAST_PLAN_REM_ACQUIRE_IV: TAbmesFloatField
      FieldName = 'PAST_PLAN_REM_ACQUIRE_IV'
    end
    object qryEstPricesCompareGraphFUTURE_PLAN_REM_ACQUIRE_VG: TAbmesFloatField
      FieldName = 'FUTURE_PLAN_REM_ACQUIRE_VG'
    end
    object qryEstPricesCompareGraphFUTURE_PLAN_REM_LEASE_VG: TAbmesFloatField
      FieldName = 'FUTURE_PLAN_REM_LEASE_VG'
    end
    object qryEstPricesCompareGraphFUTURE_PLAN_REM_ACQUIRE_IV: TAbmesFloatField
      FieldName = 'FUTURE_PLAN_REM_ACQUIRE_IV'
    end
    object qryEstPricesCompareGraphPAST_REAL_ACQUIRE_VG: TAbmesFloatField
      FieldName = 'PAST_REAL_ACQUIRE_VG'
    end
    object qryEstPricesCompareGraphPAST_REAL_LEASE_VG: TAbmesFloatField
      FieldName = 'PAST_REAL_LEASE_VG'
    end
    object qryEstPricesCompareGraphPAST_REAL_ACQUIRE_IV: TAbmesFloatField
      FieldName = 'PAST_REAL_ACQUIRE_IV'
    end
    object qryEstPricesCompareGraphFUTURE_REAL_ACQUIRE_VG: TAbmesFloatField
      FieldName = 'FUTURE_REAL_ACQUIRE_VG'
    end
    object qryEstPricesCompareGraphFUTURE_REAL_LEASE_VG: TAbmesFloatField
      FieldName = 'FUTURE_REAL_LEASE_VG'
    end
    object qryEstPricesCompareGraphFUTURE_REAL_ACQUIRE_IV: TAbmesFloatField
      FieldName = 'FUTURE_REAL_ACQUIRE_IV'
    end
    object qryEstPricesCompareGraphPLAN_BUDGET_PRICE: TAbmesFloatField
      FieldName = 'PLAN_BUDGET_PRICE'
    end
    object qryEstPricesCompareGraphREAL_BUDGET_PRICE: TAbmesFloatField
      FieldName = 'REAL_BUDGET_PRICE'
    end
    object qryEstPricesCompareGraphDENSITY_WITH_LATE_PLAN: TAbmesFloatField
      FieldName = 'DENSITY_WITH_LATE_PLAN'
    end
    object qryEstPricesCompareGraphDENSITY_WITHOUT_LATE_PLAN: TAbmesFloatField
      FieldName = 'DENSITY_WITHOUT_LATE_PLAN'
    end
    object qryEstPricesCompareGraphVALUE_ADDED_DENSITY: TAbmesFloatField
      FieldName = 'VALUE_ADDED_DENSITY'
    end
  end
  object qryBorderDealTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  bdt.BORDER_DEAL_TYPE_CODE,'
      '  bdt.BORDER_DEAL_TYPE_NAME,'
      '  bdt.BORDER_DEAL_TYPE_ABBREV,'
      '  bdt.BORDER_REL_TYPE_CODE,'
      '  bdt.OBTAINMENT_TYPE_CODE,'
      '  bdt.PROD_ORDER_BASE_TYPE_CODE'
      ''
      'from'
      '  BORDER_DEAL_TYPES bdt'
      '  '
      'where'
      '  ( (:BORDER_REL_TYPE_CODE is null) or'
      '    (bdt.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) ) and'
      '    '
      '  ( (:OBTAINMENT_TYPE_CODE is null) or'
      '    (bdt.OBTAINMENT_TYPE_CODE = :OBTAINMENT_TYPE_CODE) ) and'
      '    '
      '  ( (:PROD_ORDER_BASE_TYPE_CODE is null) or'
      
        '    (bdt.PROD_ORDER_BASE_TYPE_CODE = :PROD_ORDER_BASE_TYPE_CODE)' +
        ' )'
      '    '
      'order by'
      '  bdt.BORDER_DEAL_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 568
    Top = 448
    object qryBorderDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_DEAL_TYPE_CODE'
    end
    object qryBorderDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_NAME'
      Size = 100
    end
    object qryBorderDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object qryBorderDealTypesBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object qryBorderDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object qryBorderDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
  end
  object prvBorderDealTypes: TDataSetProvider
    DataSet = qryBorderDealTypes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 568
    Top = 400
  end
  object qryObtainmentTypesForBorderRelTypeAndProdOrderBaseType: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ot.OBTAINMENT_TYPE_CODE,'
      '  ot.OBTAINMENT_TYPE_NAME,'
      '  bdt.BORDER_DEAL_TYPE_CODE,'
      '  bdt.BORDER_DEAL_TYPE_ABBREV'
      'from'
      '  BORDER_DEAL_TYPES bdt,'
      '  OBTAINMENT_TYPES ot'
      'where'
      '  (bdt.OBTAINMENT_TYPE_CODE = ot.OBTAINMENT_TYPE_CODE) and'
      '  (bdt.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '  (bdt.PROD_ORDER_BASE_TYPE_CODE = :PROD_ORDER_BASE_TYPE_CODE)'
      'order by'
      '  ot.OBTAINMENT_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 408
    Top = 80
    object qryObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeOBTAINMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'OBTAINMENT_TYPE_NAME'
      Size = 100
    end
    object qryObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeBORDER_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_DEAL_TYPE_CODE'
    end
    object qryObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_ABBREV'
      Size = 100
    end
  end
  object prvObtainmentTypesForBorderRelTypeAndProdOrderBaseType: TDataSetProvider
    DataSet = qryObtainmentTypesForBorderRelTypeAndProdOrderBaseType
    Left = 408
    Top = 32
  end
  object prvSpecFinModels: TDataSetProvider
    DataSet = qrySpecFinModels
    Options = [poReadOnly, poUseQuoteChar]
    Left = 736
    Top = 312
  end
  object qrySpecFinModels: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sfm.SPEC_FIN_MODEL_CODE,'
      '  sfm.SPEC_FIN_MODEL_NAME'
      ''
      'from'
      '  SPEC_FIN_MODELS sfm,'
      '  PAR_REL_PERIODS prp'
      ''
      'where'
      '  (sfm.PARTNER_CODE = prp.PARTNER_CODE) and'
      '  (sfm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) and'
      '  (sfm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) and'
      ''
      '  (sfm.PARTNER_CODE = :PARTNER_CODE) and'
      '  (sfm.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '  (:TO_DATE between prp.BEGIN_DATE and prp.END_DATE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 736
    Top = 360
    object qrySpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
    end
    object qrySpecFinModelsSPEC_FIN_MODEL_NAME: TAbmesWideStringField
      FieldName = 'SPEC_FIN_MODEL_NAME'
      Size = 100
    end
  end
  object qryGetYearFirstDateUnit: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'DATE_UNIT_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  txd2.THE_FIRST_DATE as YEAR_FIRST_DATE_UNIT_DATE'
      ''
      'from'
      '  %THE_X_DATES txd1,'
      '  %THE_X_DATES txd2'
      ''
      'where'
      '  (txd1.THE_FIRST_DATE = :DATE_UNIT_DATE) and'
      ''
      '  (txd2.THE_YEAR_DATE = txd1.THE_YEAR_DATE) and'
      '  (txd2.%YEAR_X_NO = 1)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'THE_X_DATES'
        ParamType = ptInput
        Value = 'THE_MONTH_DATES'
      end
      item
        DataType = ftWideString
        Name = 'YEAR_X_NO'
        ParamType = ptInput
        Value = 'YEAR_MONTH_NO'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 712
    Top = 480
    object qryGetYearFirstDateUnitYEAR_FIRST_DATE_UNIT_DATE: TAbmesSQLTimeStampField
      FieldName = 'YEAR_FIRST_DATE_UNIT_DATE'
      Required = True
    end
  end
  object prvParRelProductDoc: TDataSetProvider
    DataSet = qryParRelProductDoc
    Options = [poReadOnly, poUseQuoteChar]
    Left = 728
    Top = 144
  end
  object qryParRelProductDoc: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  prp.DOC_BRANCH_CODE,'
      '  prp.DOC_CODE,'
      '  %HAS_DOC_ITEMS[prp] as HAS_DOC_ITEMS'
      ''
      'from'
      '  PAR_REL_PRODUCTS prp'
      ''
      'where'
      '  (prp.PARTNER_CODE = :PARTNER_CODE) and'
      '  (prp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '  (prp.PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[prp]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 728
    Top = 192
    object qryParRelProductDocDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryParRelProductDocDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryParRelProductDocHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
  end
  object prvProductPartnerPrice: TDataSetProvider
    DataSet = qryProductPartnerPrice
    Options = [poReadOnly, poUseQuoteChar]
    Left = 80
    Top = 576
  end
  object qryProductPartnerPrice: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  y.THE_DATE,'
      '  y.PARTNER_CODE,'
      '  y.PRODUCT_CODE,'
      ''
      '  ( select'
      '      p.PRODUCT_CLASS_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = y.PRODUCT_CODE)'
      '  ) as PRODUCT_CLASS_CODE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = y.PRODUCT_CODE) and'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  y.COMMON_PARTNER_CODE,'
      '  y.COMMON_PRODUCT_CODE,'
      '  y.PARTNER_PRODUCT_NAME,'
      
        '  MiscUtils.GetNamedValue(y.PAR_REL_PRODUCT_PRICEROW, '#39'PRICE'#39') a' +
        's PAR_REL_PRODUCT_PRICE,'
      
        '  MiscUtils.GetNamedValue(y.PAR_REL_PRODUCT_PRICEROW, '#39'CURRENCY_' +
        'CODE'#39') as PAR_REL_PRODUCT_CURRENCY_CODE,'
      
        '  MiscUtils.GetNamedValue(y.PAR_REL_PRODUCT_PRICEROW, '#39'DATE_UNIT' +
        '_CODE'#39') as PAR_REL_PRODUCT_DATE_UNIT_CODE,'
      '  Y.PRP_PRICE_OVERRIDDEN,'
      
        '  MiscUtils.GetNamedValue(y.COMMON_PRODUCT_PRP_PRICEROW, '#39'PRICE'#39 +
        ') as CPRODUCT_PRP_PRICE,'
      
        '  MiscUtils.GetNamedValue(y.COMMON_PRODUCT_PRP_PRICEROW, '#39'CURREN' +
        'CY_CODE'#39') as CPRODUCT_PRP_CURRENCY_CODE,'
      
        '  MiscUtils.GetNamedValue(y.COMMON_PRODUCT_PRP_PRICEROW, '#39'DATE_U' +
        'NIT_CODE'#39') as CPRODUCT_PRP_DATE_UNIT_CODE,'
      
        '  MiscUtils.GetNamedValue(y.COMMON_PARTNER_PRP_PRICEROW, '#39'PRICE'#39 +
        ') as CPARTNER_PRP_PRICE,'
      
        '  MiscUtils.GetNamedValue(y.COMMON_PARTNER_PRP_PRICEROW, '#39'CURREN' +
        'CY_CODE'#39') as CPARTNER_PRP_CURRENCY_CODE,'
      
        '  MiscUtils.GetNamedValue(y.COMMON_PARTNER_PRP_PRICEROW, '#39'DATE_U' +
        'NIT_CODE'#39') as CPARTNER_PRP_DATE_UNIT_CODE,'
      
        '  MiscUtils.GetNamedValue(y.CPRODUCT_CPARTNER_PRP_PRICEROW, '#39'PRI' +
        'CE'#39') as CPROD_CPAR_PRP_PRICE,'
      
        '  MiscUtils.GetNamedValue(y.CPRODUCT_CPARTNER_PRP_PRICEROW, '#39'CUR' +
        'RENCY_CODE'#39') as CPROD_CPAR_PRP_CURRENCY_CODE,'
      
        '  MiscUtils.GetNamedValue(y.CPRODUCT_CPARTNER_PRP_PRICEROW, '#39'DAT' +
        'E_UNIT_CODE'#39') as CPROD_CPAR_PRP_DATE_UNIT_CODE,'
      '  y.PRODUCT_PERIOD_PRICE,'
      '  y.PRODUCT_PERIOD_CURRENCY_CODE,'
      '  y.PRODUCT_PERIOD_DATE_UNIT_CODE,'
      '  y.PROD_PER_PRICE_OVERRIDDEN,'
      '  y.PARTNER_PRICE_MODIFIER_VALUE,'
      '  y.PARTNER_PRICE_MODIFIER_NAME,'
      '  y.CPARTNER_PRICE_MODIFIER_VALUE,'
      '  y.CPARTNER_PRICE_MODIFIER_NAME,'
      '  y.VAT_PERCENT'
      ''
      'from'
      '  ( select'
      '      :THE_DATE as THE_DATE,'
      '      To_Number(:PARTNER_CODE) as PARTNER_CODE,'
      '      :PRODUCT_CODE as PRODUCT_CODE,'
      ''
      '      x.COMMON_PARTNER_CODE,'
      '      x.COMMON_PRODUCT_CODE,'
      ''
      '      ( select'
      '          cp.NAME'
      '        from'
      '          COMPANY_PRODUCTS cp'
      '        where'
      '          (cp.COMPANY_CODE = :PARTNER_CODE) and'
      '          (cp.PRODUCT_CODE = :PRODUCT_CODE)'
      '      ) as PARTNER_PRODUCT_NAME,'
      ''
      
        '      ProductUtils.ParRelProductPrice2(:PRODUCT_CODE, :PARTNER_C' +
        'ODE, :BORDER_REL_TYPE_CODE, :OBTAINMENT_TYPE_CODE, :THE_DATE, 0)' +
        ' as PAR_REL_PRODUCT_PRICEROW,'
      ''
      '      ( select'
      '          Decode(:OBTAINMENT_TYPE_CODE,'
      '            %ot_ACQUIRE, OVERRIDE_ACQUIRE_PRICE,'
      '            %ot_LEASE, OVERRIDE_LEASE_PRICE'
      '          )'
      '        from'
      '          PAR_REL_PRODUCT_PERIODS prpp'
      '        where'
      '          (prpp.PARTNER_CODE = :PARTNER_CODE) and'
      
        '          (prpp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) an' +
        'd'
      '          (prpp.PRODUCT_CODE = :PRODUCT_CODE) and'
      '          (:THE_DATE between prpp.BEGIN_DATE and prpp.END_DATE)'
      '      ) as PRP_PRICE_OVERRIDDEN,'
      ''
      
        '      ProductUtils.ParRelProductPrice2(x.COMMON_PRODUCT_CODE, :P' +
        'ARTNER_CODE, :BORDER_REL_TYPE_CODE, :OBTAINMENT_TYPE_CODE, :THE_' +
        'DATE, 1) as COMMON_PRODUCT_PRP_PRICEROW,'
      
        '      ProductUtils.ParRelProductPrice2(:PRODUCT_CODE, x.COMMON_P' +
        'ARTNER_CODE, :BORDER_REL_TYPE_CODE, :OBTAINMENT_TYPE_CODE, :THE_' +
        'DATE, 1) as COMMON_PARTNER_PRP_PRICEROW,'
      
        '      ProductUtils.ParRelProductPrice2(x.COMMON_PRODUCT_CODE, x.' +
        'COMMON_PARTNER_CODE, :BORDER_REL_TYPE_CODE, :OBTAINMENT_TYPE_COD' +
        'E, :THE_DATE, 1) as CPRODUCT_CPARTNER_PRP_PRICEROW,'
      ''
      '      ( select'
      '          Decode(:OBTAINMENT_TYPE_CODE,'
      '            %ot_ACQUIRE,'
      '            Decode(:BORDER_REL_TYPE_CODE,'
      
        '              CommonConsts.brtClient, pp.SALE_ACQUIRE_SINGLE_PRI' +
        'CE,'
      
        '              CommonConsts.brtVendor, pp.DELIVERY_ACQUIRE_SINGLE' +
        '_PRICE'
      '            ),'
      '            %ot_LEASE,'
      '            Decode(:BORDER_REL_TYPE_CODE,'
      
        '              CommonConsts.brtClient, pp.SALE_LEASE_SINGLE_PRICE' +
        ','
      
        '              CommonConsts.brtVendor, pp.DELIVERY_LEASE_SINGLE_P' +
        'RICE'
      '            )'
      '          )'
      '        from'
      '          PRODUCT_PERIODS pp'
      '        where'
      
        '          (pp.PRODUCT_CODE = Decode(x.PRODUCT_PERIOD_EXISTS, 1, ' +
        ':PRODUCT_CODE, x.COMMON_PRODUCT_CODE)) and'
      
        '          (Coalesce(:THE_DATE, ContextDate) between pp.BEGIN_DATE ' +
        'and pp.END_DATE)'
      '      ) as PRODUCT_PERIOD_PRICE,'
      ''
      '      ( select'
      '          Decode(:OBTAINMENT_TYPE_CODE,'
      '            %ot_ACQUIRE,'
      '            Decode(:BORDER_REL_TYPE_CODE,'
      
        '              CommonConsts.brtClient, pp.SALE_ACQUIRE_CURRENCY_C' +
        'ODE,'
      
        '              CommonConsts.brtVendor, pp.DELIVERY_ACQUIRE_CURREN' +
        'CY_CODE'
      '            ),'
      '            %ot_LEASE,'
      '            Decode(:BORDER_REL_TYPE_CODE,'
      
        '              CommonConsts.brtClient, pp.SALE_LEASE_CURRENCY_COD' +
        'E,'
      
        '              CommonConsts.brtVendor, pp.DELIVERY_LEASE_CURRENCY' +
        '_CODE'
      '            )'
      '          )'
      '        from'
      '          PRODUCT_PERIODS pp'
      '        where'
      
        '          (pp.PRODUCT_CODE = Decode(x.PRODUCT_PERIOD_EXISTS, 1, ' +
        ':PRODUCT_CODE, x.COMMON_PRODUCT_CODE)) and'
      
        '          (Coalesce(:THE_DATE, ContextDate) between pp.BEGIN_DATE ' +
        'and pp.END_DATE)'
      '      ) as PRODUCT_PERIOD_CURRENCY_CODE,'
      ''
      '      ( select'
      '          Decode(:OBTAINMENT_TYPE_CODE,'
      '            %ot_LEASE,'
      '            Decode(:BORDER_REL_TYPE_CODE,'
      
        '              CommonConsts.brtClient, pp.SALE_LEASE_DATE_UNIT_CO' +
        'DE,'
      
        '              CommonConsts.brtVendor, pp.DELIVERY_LEASE_DATE_UNI' +
        'T_CODE'
      '            )'
      '          )'
      '        from'
      '          PRODUCT_PERIODS pp'
      '        where'
      
        '          (pp.PRODUCT_CODE = Decode(x.PRODUCT_PERIOD_EXISTS, 1, ' +
        ':PRODUCT_CODE, x.COMMON_PRODUCT_CODE)) and'
      
        '          (Coalesce(:THE_DATE, ContextDate) between pp.BEGIN_DATE ' +
        'and pp.END_DATE)'
      '      ) as PRODUCT_PERIOD_DATE_UNIT_CODE,'
      ''
      '      Decode(x.PRODUCT_PERIOD_EXISTS,'
      '        0, 0,'
      '        ( select'
      '            Max('
      '              Decode('
      '                :BORDER_REL_TYPE_CODE,'
      
        '                CommonConsts.brtClient, pp.OVERRIDE_S_ACQUIRE_PR' +
        'ICE,'
      
        '                CommonConsts.brtVendor, pp.OVERRIDE_D_ACQUIRE_PR' +
        'ICE'
      '              )'
      '            )'
      '          from'
      '            PRODUCT_PERIODS pp'
      '          where'
      '            (pp.PRODUCT_CODE = :PRODUCT_CODE) and'
      
        '            (Coalesce(:THE_DATE, ContextDate) between pp.BEGIN_DAT' +
        'E and pp.END_DATE)'
      '        )'
      '      ) as PROD_PER_PRICE_OVERRIDDEN,'
      ''
      '      ( select'
      '          Min('
      '            Decode(:OBTAINMENT_TYPE_CODE,'
      '              %ot_ACQUIRE, prppm.ACQUIRE_PRICE_MODIFIER,'
      '              %ot_LEASE, prppm.LEASE_PRICE_MODIFIER'
      '            )'
      '          )'
      '        from'
      '          PAR_REL_PERIODS prp,'
      '          PRPER_PRICE_MODIFIERS prppm'
      '        where'
      '          (prp.PARTNER_CODE = :PARTNER_CODE) and'
      '          (prp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      
        '          (Coalesce(:THE_DATE, ContextDate) between prp.BEGIN_DATE' +
        ' and prp.END_DATE) and'
      ''
      '          (prppm.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '          (prppm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE' +
        ') and'
      
        '          (prppm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) ' +
        'and'
      ''
      '          exists('
      '            select'
      '              1'
      '            from'
      '              PRODUCT_SETS ps,'
      '              PRODUCT_SET_PRODUCTS psp'
      '            where'
      '              (ps.PRODUCT_SET_CODE = prppm.PRODUCT_SET_CODE) and'
      
        '              (Coalesce(:THE_DATE, ContextDate) between ps.BEGIN_D' +
        'ATE and ps.END_DATE) and'
      ''
      '              (psp.PRODUCT_SET_CODE = ps.PRODUCT_SET_CODE) and'
      '              (psp.PRODUCT_CODE = :PRODUCT_CODE)'
      '          )'
      '      ) as PARTNER_PRICE_MODIFIER_VALUE,'
      ''
      '      ( select'
      '          Cast('
      '            Min(prppm.PRPER_PRICE_MODIFIER_NAME) keep'
      '              (dense_rank first order by'
      '                Decode(:OBTAINMENT_TYPE_CODE,'
      '                  %ot_ACQUIRE, prppm.ACQUIRE_PRICE_MODIFIER,'
      '                  %ot_LEASE, prppm.LEASE_PRICE_MODIFIER'
      '                )'
      '              )'
      '            as Varchar2(50 char)'
      '          )'
      '        from'
      '          PAR_REL_PERIODS prp,'
      '          PRPER_PRICE_MODIFIERS prppm'
      '        where'
      '          (prp.PARTNER_CODE = :PARTNER_CODE) and'
      '          (prp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      
        '          (Coalesce(:THE_DATE, ContextDate) between prp.BEGIN_DATE' +
        ' and prp.END_DATE) and'
      ''
      '          (prppm.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '          (prppm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE' +
        ') and'
      
        '          (prppm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) ' +
        'and'
      ''
      '          exists('
      '            select'
      '              1'
      '            from'
      '              PRODUCT_SETS ps,'
      '              PRODUCT_SET_PRODUCTS psp'
      '            where'
      '              (ps.PRODUCT_SET_CODE = prppm.PRODUCT_SET_CODE) and'
      
        '              (Coalesce(:THE_DATE, ContextDate) between ps.BEGIN_D' +
        'ATE and ps.END_DATE) and'
      ''
      '              (psp.PRODUCT_SET_CODE = ps.PRODUCT_SET_CODE) and'
      '              (psp.PRODUCT_CODE = :PRODUCT_CODE)'
      '          )'
      '      ) as PARTNER_PRICE_MODIFIER_NAME,'
      ''
      '      ( select'
      '          Min('
      '            Decode(:OBTAINMENT_TYPE_CODE,'
      '              %ot_ACQUIRE, prppm.ACQUIRE_PRICE_MODIFIER,'
      '              %ot_LEASE, prppm.LEASE_PRICE_MODIFIER'
      '            )'
      '          )'
      '        from'
      '          PAR_REL_PERIODS prp,'
      '          PRPER_PRICE_MODIFIERS prppm'
      '        where'
      '          (prp.PARTNER_CODE = x.COMMON_PARTNER_CODE) and'
      '          (prp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      
        '          (Coalesce(:THE_DATE, ContextDate) between prp.BEGIN_DATE' +
        ' and prp.END_DATE) and'
      ''
      '          (prppm.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '          (prppm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE' +
        ') and'
      
        '          (prppm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) ' +
        'and'
      ''
      '          exists('
      '            select'
      '              1'
      '            from'
      '              PRODUCT_SETS ps,'
      '              PRODUCT_SET_PRODUCTS psp'
      '            where'
      '              (ps.PRODUCT_SET_CODE = prppm.PRODUCT_SET_CODE) and'
      
        '              (Coalesce(:THE_DATE, ContextDate) between ps.BEGIN_D' +
        'ATE and ps.END_DATE) and'
      ''
      '              (psp.PRODUCT_SET_CODE = ps.PRODUCT_SET_CODE) and'
      '              (psp.PRODUCT_CODE = :PRODUCT_CODE)'
      '          )'
      '      ) as CPARTNER_PRICE_MODIFIER_VALUE,'
      ''
      '      ( select'
      '          Cast('
      '            Min(prppm.PRPER_PRICE_MODIFIER_NAME) keep'
      '              (dense_rank first order by'
      '                Decode(:OBTAINMENT_TYPE_CODE,'
      '                  %ot_ACQUIRE, prppm.ACQUIRE_PRICE_MODIFIER,'
      '                  %ot_LEASE, prppm.LEASE_PRICE_MODIFIER'
      '                )'
      '              )'
      '            as Varchar2(50 char)'
      '          )'
      '        from'
      '          PAR_REL_PERIODS prp,'
      '          PRPER_PRICE_MODIFIERS prppm'
      '        where'
      '          (prp.PARTNER_CODE = x.COMMON_PARTNER_CODE) and'
      '          (prp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      
        '          (Coalesce(:THE_DATE, ContextDate) between prp.BEGIN_DATE' +
        ' and prp.END_DATE) and'
      ''
      '          (prppm.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '          (prppm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE' +
        ') and'
      
        '          (prppm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) ' +
        'and'
      ''
      '          exists('
      '            select'
      '              1'
      '            from'
      '              PRODUCT_SETS ps,'
      '              PRODUCT_SET_PRODUCTS psp'
      '            where'
      '              (ps.PRODUCT_SET_CODE = prppm.PRODUCT_SET_CODE) and'
      
        '              (Coalesce(:THE_DATE, ContextDate) between ps.BEGIN_D' +
        'ATE and ps.END_DATE) and'
      ''
      '              (psp.PRODUCT_SET_CODE = ps.PRODUCT_SET_CODE) and'
      '              (psp.PRODUCT_CODE = :PRODUCT_CODE)'
      '          )'
      '      ) as CPARTNER_PRICE_MODIFIER_NAME,'
      ''
      '      ( select'
      '          vp.VAT_PERCENT'
      '        from'
      '          VAT_PERIODS vp'
      '        where'
      '          (:THE_DATE between vp.BEGIN_DATE and vp.END_DATE)'
      '      ) as VAT_PERCENT'
      ''
      '    from'
      '      ( select'
      '          ( select'
      '              pr.COMMON_PARTNER_CODE'
      '            from'
      '              PAR_RELS pr'
      '            where'
      '              (pr.PARTNER_CODE = :PARTNER_CODE) and'
      '              (pr.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE)'
      '          ) as COMMON_PARTNER_CODE,'
      ''
      '          ( select'
      '              dp.COMMON_PRODUCT_CODE'
      '            from'
      '              DEFINITE_PRODUCTS dp'
      '            where'
      '              (dp.PRODUCT_CODE = :PRODUCT_CODE)'
      '          ) as COMMON_PRODUCT_CODE,'
      ''
      '          ( select'
      '              Sign(Count(*))'
      '            from'
      '              PRODUCT_PERIODS pp'
      '            where'
      '              (pp.PRODUCT_CODE = :PRODUCT_CODE) and'
      
        '              (Coalesce(:THE_DATE, ContextDate) between pp.BEGIN_D' +
        'ATE and pp.END_DATE)'
      '          ) as PRODUCT_PERIOD_EXISTS'
      ''
      '        from'
      '          DUAL'
      '      ) x'
      '  ) y')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 'ot_ACQUIRE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'ot_LEASE'
        ParamType = ptInput
        Value = '2'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 80
    Top = 624
    object qryProductPartnerPriceTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object qryProductPartnerPricePARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object qryProductPartnerPricePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryProductPartnerPricePRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object qryProductPartnerPriceMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryProductPartnerPriceCOMMON_PARTNER_CODE: TAbmesFloatField
      FieldName = 'COMMON_PARTNER_CODE'
    end
    object qryProductPartnerPriceCOMMON_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_CODE'
    end
    object qryProductPartnerPricePARTNER_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_PRODUCT_NAME'
      Size = 50
    end
    object qryProductPartnerPricePAR_REL_PRODUCT_PRICE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_PRICE'
    end
    object qryProductPartnerPricePAR_REL_PRODUCT_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_CURRENCY_CODE'
    end
    object qryProductPartnerPricePAR_REL_PRODUCT_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_DATE_UNIT_CODE'
    end
    object qryProductPartnerPricePRP_PRICE_OVERRIDDEN: TAbmesFloatField
      FieldName = 'PRP_PRICE_OVERRIDDEN'
    end
    object qryProductPartnerPriceCPRODUCT_PRP_PRICE: TAbmesFloatField
      FieldName = 'CPRODUCT_PRP_PRICE'
    end
    object qryProductPartnerPriceCPRODUCT_PRP_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'CPRODUCT_PRP_CURRENCY_CODE'
    end
    object qryProductPartnerPriceCPRODUCT_PRP_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'CPRODUCT_PRP_DATE_UNIT_CODE'
    end
    object qryProductPartnerPriceCPARTNER_PRP_PRICE: TAbmesFloatField
      FieldName = 'CPARTNER_PRP_PRICE'
    end
    object qryProductPartnerPriceCPARTNER_PRP_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'CPARTNER_PRP_CURRENCY_CODE'
    end
    object qryProductPartnerPriceCPARTNER_PRP_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'CPARTNER_PRP_DATE_UNIT_CODE'
    end
    object qryProductPartnerPriceCPROD_CPAR_PRP_PRICE: TAbmesFloatField
      FieldName = 'CPROD_CPAR_PRP_PRICE'
    end
    object qryProductPartnerPriceCPROD_CPAR_PRP_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'CPROD_CPAR_PRP_CURRENCY_CODE'
    end
    object qryProductPartnerPriceCPROD_CPAR_PRP_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'CPROD_CPAR_PRP_DATE_UNIT_CODE'
    end
    object qryProductPartnerPricePRODUCT_PERIOD_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_PRICE'
    end
    object qryProductPartnerPricePRODUCT_PERIOD_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_CURRENCY_CODE'
    end
    object qryProductPartnerPricePRODUCT_PERIOD_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_DATE_UNIT_CODE'
    end
    object qryProductPartnerPricePROD_PER_PRICE_OVERRIDDEN: TAbmesFloatField
      FieldName = 'PROD_PER_PRICE_OVERRIDDEN'
    end
    object qryProductPartnerPricePARTNER_PRICE_MODIFIER_VALUE: TAbmesFloatField
      FieldName = 'PARTNER_PRICE_MODIFIER_VALUE'
    end
    object qryProductPartnerPricePARTNER_PRICE_MODIFIER_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_PRICE_MODIFIER_NAME'
      Size = 100
    end
    object qryProductPartnerPriceCPARTNER_PRICE_MODIFIER_VALUE: TAbmesFloatField
      FieldName = 'CPARTNER_PRICE_MODIFIER_VALUE'
    end
    object qryProductPartnerPriceCPARTNER_PRICE_MODIFIER_NAME: TAbmesWideStringField
      FieldName = 'CPARTNER_PRICE_MODIFIER_NAME'
      Size = 100
    end
    object qryProductPartnerPriceVAT_PERCENT: TAbmesFloatField
      FieldName = 'VAT_PERCENT'
    end
  end
end
