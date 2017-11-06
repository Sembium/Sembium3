inherited dmSaleReports: TdmSaleReports
  Height = 313
  Width = 643
  object qryExpGroupsMaster: TAbmesSQLQuery
    BeforeOpen = qryExpGroupsMasterBeforeOpen
    AfterClose = qryExpGroupsMasterAfterClose
    MaxBlobSize = -1
    Params = <
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
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_SALE_SHIPMENT_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_SALE_SHIPMENT_STATE_CODE'
        ParamType = ptInput
        Value = '8'
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
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  Decode(%LEASE_GROUP_TYPE, 1, ss.RESULT_DATE, 2, ss.IMPORT_PLAN' +
        '_DATE) as SHIPMENT_DATE,'
      
        '  Decode(%LEASE_GROUP_TYPE, 1, Nvl2(ss.INVOICE_DATE, 0, 1), 2, 0' +
        ') as IS_INVOICE_DATE_NULL,'
      '  Min('
      '    case'
      '      when'
      '        ( (ss.FINISH_EMPLOYEE_CODE is not null) or'
      '          ( (ss.SHIPMENT_DATE is not null) and'
      '            (ss.INVOICE_DATE is not null)'
      '          )'
      '        ) then'
      '        1'
      '      else'
      '        0'
      '    end'
      '  ) as IS_OTCH,'
      ''
      
        '  -- 1 - zelen status (vsichki eskpedicii sa prikl. ili och. pla' +
        'shtane), 2 - jylt (vsichki sa planovi), 3 - jylto-zelen (i ot 2t' +
        'a vida ima)'
      '  Decode('
      '    Count(*) -'
      '    Sum('
      '      case'
      '        when'
      '          ( (ss.FINISH_EMPLOYEE_CODE is not null) or'
      '            ( (ss.SHIPMENT_DATE is not null) and'
      '              (ss.INVOICE_DATE is not null)'
      '            )'
      '          ) then'
      '          1'
      '        else'
      '          0'
      '      end'
      '    ),'
      '    0, 1,              -- zeleno'
      '    Count(*), 2,       -- jylto'
      '    3                  -- jylto-zeleno'
      '  ) as GROUP_DATE_STATUS_CODE,'
      ''
      '  c.COMPANY_CODE as CLIENT_COMPANY_CODE,'
      '  c.SHORT_NAME as CLENT_COMPANY_NAME,'
      '  c.COMPANY_NO as CLIENT_COMPANY_NO,'
      '  ss.RECEIVE_PLACE_OFFICE_CODE,'
      '  co.OFFICE_NAME,'
      '  ( select'
      '      cs.COMPANY_STATUS_NAME'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc,'
      '      COMPANY_STATUSES cs'
      '    where'
      '      (csc.COMPANY_CODE = c.COMPANY_CODE) and'
      ''
      '      (csc.STATUS_DATE = ('
      '        select'
      '          Max(STATUS_DATE)'
      '        from'
      '          COMPANY_STATUSES_CHANGES csc2'
      '        where'
      '          (csc2.COMPANY_CODE = csc.COMPANY_CODE)'
      '        )'
      '      ) and'
      ''
      '      (cs.COMPANY_STATUS_CODE = csc.COMPANY_STATUS_CODE)'
      '  ) as CLIENT_STATUS_NAME,'
      ''
      '  Sum('
      '    ss.SINGLE_PRICE *'
      '    Decode(ss.SALE_DEAL_TYPE_CODE,'
      '           1, 1,'
      '           2, ss.PLAN_LEASE_DATE_UNIT_QTY'
      '    ) *'
      '    ( select'
      '        scr.FIXING'
      '      from'
      '        SECONDARY_CURRENCY_RATES scr'
      '      where'
      '        (scr.CURRENCY_CODE = ss.CURRENCY_CODE) and'
      
        '        (scr.RATE_DATE = Least(ss.SHIPMENT_PLAN_DATE, ContextDate)' +
        ')'
      '    ) *'
      '    ss.PLAN_QUANTITY'
      '  ) as PLAN_VALUE_GAINED,'
      ''
      
        '  Sum(Decode(ss.SALE_DEAL_TYPE_CODE, 1, ss.PSD_TOTAL_PRICE)) as ' +
        'PLAN_VALUE_INVESTED,'
      ''
      '  Sum('
      '    ss.INVOICE_SINGLE_PRICE *'
      '    Decode(ss.SALE_DEAL_TYPE_CODE,'
      '           1, 1,'
      '           2, ss.LEASE_DATE_UNIT_QTY'
      '    ) *'
      '    ( select'
      '        scr.FIXING'
      '      from'
      '        SECONDARY_CURRENCY_RATES scr'
      '      where'
      '        (scr.CURRENCY_CODE = ss.INVOICE_CURRENCY_CODE) and'
      '        (scr.RATE_DATE = ss.INVOICE_DATE)'
      '    ) *'
      '    ss.QUANTITY'
      '  ) as OTCH_VALUE_GAINED,'
      ''
      '  Sum('
      '    Decode(ss.SALE_DEAL_TYPE_CODE, 1,'
      '      ( select'
      '          Sum(sd.TOTAL_PRICE * scr.FIXING) as TOTAL_PRICE'
      '        from'
      '          STORE_DEALS sd,'
      '          SECONDARY_CURRENCY_RATES scr'
      '        where'
      '          (sd.STORE_DEAL_DATE = scr.RATE_DATE) and'
      '          (sd.CURRENCY_CODE = scr.CURRENCY_CODE) and'
      '          (sd.BND_PROCESS_CODE(+) = 160) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      
        '          (ss.SHIPMENT_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJEC' +
        'T_BRANCH_CODE) and'
      '          (ss.SHIPMENT_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE)'
      '      )'
      '    )'
      '  ) as OTCH_VALUE_INVESTED,'
      ''
      '  Avg(ss.INVOICE_DATE - ss.SHIPMENT_PLAN_DATE)'
      '    as AVG_TIME_DEV,'
      
        '  Min(ss.SHIPMENT_PLAN_DATE - Coalesce(ss.INVOICE_DATE, ss.SHIPM' +
        'ENT_DATE, ContextDate))'
      '    as MIN_TIME_DEV,'
      '  Count(tupsd.BND_PROCESS_OBJECT_CODE) as UNCOVERED_LINES,'
      '  Min(p.TRANSPORT_MEASURE_CODE) as MIN_TRANSPORT_MEASURE_CODE,'
      '  Max(p.TRANSPORT_MEASURE_CODE) as MAX_TRANSPORT_MEASURE_CODE,'
      '  Max(m.MEASURE_ABBREV) as TRANSPORT_MEASURE_ABBREV,'
      
        '  Sum(p.TRANSPORT_MEASURE_COEF * ss.PLAN_QUANTITY) as PLAN_TRANS' +
        'PORT_QUANTITY,'
      
        '  Sum(p.TRANSPORT_MEASURE_COEF * ss.QUANTITY) as OTCH_TRANSPORT_' +
        'QUANTITY,'
      ''
      '  Min(ss.SALE_SHIPMENT_STATE_CODE) as EXP_GROUP_STATE_CODE,'
      ''
      '  Max(ss.DAMAGES_STATE_CODE) as EXP_GROUP_DAMAGES_STATE_CODE,'
      ''
      '  ss.IS_VENDOR_TRANSPORT'
      ''
      'from'
      '  (select'
      '    s.SALE_OBJECT_BRANCH_CODE,'
      '    s.SALE_OBJECT_CODE,'
      '    s.SALE_DEAL_TYPE_CODE,'
      '    ssh.SHIPMENT_OBJECT_BRANCH_CODE,'
      '    ssh.SHIPMENT_OBJECT_CODE,'
      '    ssh.SHIPMENT_DATE,'
      '    ssh.SHIPMENT_PLAN_DATE,'
      '    ssh.IMPORT_DATE,'
      '    ssh.IMPORT_PLAN_DATE,'
      '    ssh.RECEIVE_DATE,'
      '    ssh.RECEIVE_PLAN_DATE,'
      '    ssh.INVOICE_DATE,'
      '    s.CLIENT_COMPANY_CODE,'
      '    s.RECEIVE_PLACE_OFFICE_CODE,'
      '    s.SALE_NO,'
      '    ssh.SALE_SHIPMENT_NO,'
      '    s.SALE_ORDER_TYPE_CODE,'
      '    s.SALE_GROUP_OBJECT_BRANCH_CODE,'
      '    s.SALE_GROUP_OBJECT_CODE,'
      '    s.REQUEST_BRANCH_CODE,'
      '    s.REQUEST_NO,'
      '    s.REQUEST_LINE_NO,'
      '    ssh.PLAN_QUANTITY,'
      '    s.SINGLE_PRICE,'
      '    ssh.QUANTITY,'
      '    ssh.INVOICE_SINGLE_PRICE,'
      '    s.ANNUL_EMPLOYEE_CODE,'
      '    s.SALE_BRANCH_CODE,'
      '    s.PRODUCT_CODE,'
      '    ssh.INVOICE_CURRENCY_CODE,'
      '    s.CURRENCY_CODE,'
      '    s.SALE_TYPE_CODE,'
      
        '    (psd.QUANTITY * %PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[psd.' +
        'PRODUCT_CODE ~ psd.STORE_DEAL_BEGIN_DATE]) as PSD_TOTAL_PRICE,'
      '    psd.STORE_DEAL_BEGIN_DATE as PSD_STORE_DEAL_BEGIN_DATE,'
      '    s.FINISH_EMPLOYEE_CODE,'
      '    s.LEASE_DATE_UNIT_QTY as PLAN_LEASE_DATE_UNIT_QTY,'
      '    ssh.LEASE_DATE_UNIT_QTY,'
      ''
      '    case'
      '      when (s.ANNUL_EMPLOYEE_CODE is not null) then'
      '        10'
      ''
      '      when (s.FINISH_EMPLOYEE_CODE is not null) then'
      '        9'
      ''
      '      when ( ( (s.SALE_DEAL_TYPE_CODE <> %sdt_LEASE) and'
      '               (ssh.RECEIVE_DATE is not null) ) or'
      '             ( (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '               exists('
      '                 select'
      '                   1'
      '                 from'
      '                   SALE_SHIPMENTS ss2'
      '                 where'
      
        '                   (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '                   (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE)' +
        ' and'
      '                   (ss2.SALE_SHIPMENT_NO ='
      '                     ( select'
      '                         Min(ss3.SALE_SHIPMENT_NO)'
      '                       from'
      '                         SALE_SHIPMENTS ss3'
      '                       where'
      
        '                         (ss3.SALE_OBJECT_BRANCH_CODE = ssh.SALE' +
        '_OBJECT_BRANCH_CODE) and'
      
        '                         (ss3.SALE_OBJECT_CODE = ssh.SALE_OBJECT' +
        '_CODE)'
      '                     )'
      '                   ) and'
      '                   (ss2.RECEIVE_DATE is not null)'
      '               ) and'
      '               ( ( (ssh.RETURN_PLAN_DATE < ContextDate) and'
      '                   exists('
      '                     select'
      '                       1'
      '                     from'
      '                       SALE_SHIPMENTS ss2'
      '                     where'
      
        '                       (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                       (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_C' +
        'ODE) and'
      
        '                       (ss2.SALE_SHIPMENT_NO > ssh.SALE_SHIPMENT' +
        '_NO)'
      '                   )'
      '                 ) or'
      '                 exists('
      '                   select'
      '                     1'
      '                   from'
      '                     SALE_SHIPMENTS ss2'
      '                   where'
      
        '                     (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                     (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_COD' +
        'E) and'
      '                     (ss2.SALE_SHIPMENT_NO ='
      '                       ( select'
      '                           Max(ss3.SALE_SHIPMENT_NO)'
      '                         from'
      '                           SALE_SHIPMENTS ss3'
      '                         where'
      
        '                           (ss3.SALE_OBJECT_BRANCH_CODE = ssh.SA' +
        'LE_OBJECT_BRANCH_CODE) and'
      
        '                           (ss3.SALE_OBJECT_CODE = ssh.SALE_OBJE' +
        'CT_CODE)'
      '                       )'
      '                     ) and'
      '                     (ss2.IMPORT_DATE is not null)'
      '                 )'
      '               )'
      '             )'
      '           ) then'
      '        8'
      ''
      '      when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '           (s.IMPORT_DATE < ContextDate) and'
      '           (ssh.IMPORT_DATE is null) then'
      '        7'
      ''
      '      when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '           (ssh.RETURN_PLAN_DATE < ContextDate) then'
      '        6'
      ''
      '      when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      
        '           (ContextDate between ssh.RECEIVE_PLAN_DATE and ssh.RETU' +
        'RN_PLAN_DATE) and'
      '           exists('
      '             select'
      '               1'
      '             from'
      '               SALE_SHIPMENTS ss2'
      '             where'
      
        '               (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJECT_BR' +
        'ANCH_CODE) and'
      '               (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE) and'
      '               (ss2.SALE_SHIPMENT_NO ='
      '                 ( select'
      '                     Min(ss3.SALE_SHIPMENT_NO)'
      '                   from'
      '                     SALE_SHIPMENTS ss3'
      '                   where'
      
        '                     (ss3.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                     (ss3.SALE_OBJECT_CODE = ssh.SALE_OBJECT_COD' +
        'E)'
      '                 )'
      '               ) and'
      '               (ss2.RECEIVE_DATE is not null)'
      '           ) then'
      '        5'
      ''
      '      when (ssh.SHIPMENT_DATE is not null) and'
      '           (ssh.RECEIVE_DATE is null) and'
      '           (ssh.RECEIVE_PLAN_DATE < ContextDate) then'
      '        4'
      ''
      '      when (ssh.SHIPMENT_DATE is not null) and'
      '           (ssh.RECEIVE_DATE is null) then'
      '        3'
      ''
      '      when (ssh.SHIPMENT_PLAN_DATE < ContextDate) and'
      '           (ssh.SHIPMENT_DATE is null) then'
      '        2'
      ''
      '      when (ContextDate <= ssh.SHIPMENT_PLAN_DATE) then'
      '        1'
      '    end as SALE_SHIPMENT_STATE_CODE,'
      ''
      '    ( select'
      '        Max(%EXCEPT_EVENT_DAMAGE_STATE[eed])'
      '      from'
      '        EXCEPT_EVENT_DAMAGES eed'
      '      where'
      
        '        (eed.SHIPMENT_OBJECT_BRANCH_CODE = ssh.SHIPMENT_OBJECT_B' +
        'RANCH_CODE) and'
      '        (eed.SHIPMENT_OBJECT_CODE = ssh.SHIPMENT_OBJECT_CODE)'
      '    ) as DAMAGES_STATE_CODE,'
      ''
      '    s.IS_VENDOR_TRANSPORT,'
      ''
      '    ssh.RESULT_DATE'
      ''
      '  from'
      '    SALES s,'
      '    SALE_SHIPMENTS ssh,'
      '    COMMON_OPTIONS co,'
      '    PLANNED_STORE_DEALS psd'
      '  where'
      '    (co.CODE = 1) and'
      ''
      
        '    (ssh.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) an' +
        'd'
      '    (ssh.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '    ( (:BRANCH_CODE is null) or'
      '      (s.SALE_BRANCH_CODE = :BRANCH_CODE) ) and'
      ''
      '    ( (:SALE_DEAL_TYPE_CODE is null) or'
      '      ( (:SALE_DEAL_TYPE_CODE = -1) and'
      '        (s.SALE_DEAL_TYPE_CODE in (%sdt_SALE, %sdt_EXPORT))'
      '      ) or'
      '      (s.SALE_DEAL_TYPE_CODE = :SALE_DEAL_TYPE_CODE)'
      '    ) and'
      ''
      '    ( (:LEASE_DATE_UNIT_CODE is null) or'
      '      (s.LEASE_DATE_UNIT_CODE = :LEASE_DATE_UNIT_CODE) ) and'
      ''
      '    ( (:RECEIVE_PLACE_OFFICE_CODE is null) or'
      
        '      (s.RECEIVE_PLACE_OFFICE_CODE = :RECEIVE_PLACE_OFFICE_CODE)' +
        ' ) and'
      ''
      
        '    (ssh.SHIPMENT_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE(+)) and'
      
        '    (ssh.SHIPMENT_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE(+)) ' +
        'and'
      ''
      '    (psd.BND_PROCESS_CODE(+) = 160) and'
      ''
      '    ( case'
      '        when (s.ANNUL_EMPLOYEE_CODE is not null) then'
      '          10'
      ''
      '        when (s.FINISH_EMPLOYEE_CODE is not null) then'
      '          9'
      ''
      '        when ( ( (s.SALE_DEAL_TYPE_CODE <> %sdt_LEASE) and'
      '                 (ssh.RECEIVE_DATE is not null) ) or'
      '               ( (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '                 exists('
      '                   select'
      '                     1'
      '                   from'
      '                     SALE_SHIPMENTS ss2'
      '                   where'
      
        '                     (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                     (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_COD' +
        'E) and'
      '                     (ss2.SALE_SHIPMENT_NO ='
      '                       ( select'
      '                           Min(ss3.SALE_SHIPMENT_NO)'
      '                         from'
      '                           SALE_SHIPMENTS ss3'
      '                         where'
      
        '                           (ss3.SALE_OBJECT_BRANCH_CODE = ssh.SA' +
        'LE_OBJECT_BRANCH_CODE) and'
      
        '                           (ss3.SALE_OBJECT_CODE = ssh.SALE_OBJE' +
        'CT_CODE)'
      '                       )'
      '                     ) and'
      '                     (ss2.RECEIVE_DATE is not null)'
      '                 ) and'
      '                 ( ( (ssh.RETURN_PLAN_DATE < ContextDate) and'
      '                     exists('
      '                       select'
      '                         1'
      '                       from'
      '                         SALE_SHIPMENTS ss2'
      '                       where'
      
        '                         (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE' +
        '_OBJECT_BRANCH_CODE) and'
      
        '                         (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT' +
        '_CODE) and'
      
        '                         (ss2.SALE_SHIPMENT_NO > ssh.SALE_SHIPME' +
        'NT_NO)'
      '                     )'
      '                   ) or'
      '                   exists('
      '                     select'
      '                       1'
      '                     from'
      '                       SALE_SHIPMENTS ss2'
      '                     where'
      
        '                       (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                       (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_C' +
        'ODE) and'
      '                       (ss2.SALE_SHIPMENT_NO ='
      '                         ( select'
      '                             Max(ss3.SALE_SHIPMENT_NO)'
      '                           from'
      '                             SALE_SHIPMENTS ss3'
      '                           where'
      
        '                             (ss3.SALE_OBJECT_BRANCH_CODE = ssh.' +
        'SALE_OBJECT_BRANCH_CODE) and'
      
        '                             (ss3.SALE_OBJECT_CODE = ssh.SALE_OB' +
        'JECT_CODE)'
      '                         )'
      '                       ) and'
      '                       (ss2.IMPORT_DATE is not null)'
      '                   )'
      '                 )'
      '               )'
      '             ) then'
      '          8'
      ''
      '        when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '             (s.IMPORT_DATE < ContextDate) and'
      '             (ssh.IMPORT_DATE is null) then'
      '          7'
      ''
      '        when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '             (ssh.RETURN_PLAN_DATE < ContextDate) then'
      '          6'
      ''
      '        when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      
        '             (ContextDate between ssh.RECEIVE_PLAN_DATE and ssh.RE' +
        'TURN_PLAN_DATE) and'
      '             exists('
      '               select'
      '                 1'
      '               from'
      '                 SALE_SHIPMENTS ss2'
      '               where'
      
        '                 (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJECT_' +
        'BRANCH_CODE) and'
      
        '                 (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE) a' +
        'nd'
      '                 (ss2.SALE_SHIPMENT_NO ='
      '                   ( select'
      '                       Min(ss3.SALE_SHIPMENT_NO)'
      '                     from'
      '                       SALE_SHIPMENTS ss3'
      '                     where'
      
        '                       (ss3.SALE_OBJECT_BRANCH_CODE = ssh.SALE_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                       (ss3.SALE_OBJECT_CODE = ssh.SALE_OBJECT_C' +
        'ODE)'
      '                   )'
      '                 ) and'
      '                 (ss2.RECEIVE_DATE is not null)'
      '             ) then'
      '          5'
      ''
      '        when (ssh.SHIPMENT_DATE is not null) and'
      '             (ssh.RECEIVE_DATE is null) and'
      '             (ssh.RECEIVE_PLAN_DATE < ContextDate) then'
      '          4'
      ''
      '        when (ssh.SHIPMENT_DATE is not null) and'
      '             (ssh.RECEIVE_DATE is null) then'
      '          3'
      ''
      '        when (ssh.SHIPMENT_PLAN_DATE < ContextDate) and'
      '             (ssh.SHIPMENT_DATE is null) then'
      '          2'
      ''
      '        when (ContextDate <= ssh.SHIPMENT_PLAN_DATE) then'
      '          1'
      
        '      end between :MIN_SALE_SHIPMENT_STATE_CODE and :MAX_SALE_SH' +
        'IPMENT_STATE_CODE'
      '    ) and'
      ''
      '    %IF_IS_ACTIVE'
      '  ) ss,'
      '  COMPANIES c,'
      '  COMPANY_OFFICES co,'
      '  TEMP_UNCOVERED_PSD tupsd,'
      '  PRODUCTS p,'
      '  MEASURES m'
      ''
      'where'
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '  (ss.CLIENT_COMPANY_CODE = c.COMPANY_CODE) and'
      ''
      '  (ss.CLIENT_COMPANY_CODE = co.COMPANY_CODE(+)) and'
      '  (ss.RECEIVE_PLACE_OFFICE_CODE = co.OFFICE_CODE(+)) and'
      ''
      
        '  (ss.SHIPMENT_OBJECT_BRANCH_CODE = tupsd.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE(+)) and'
      
        '  (ss.SHIPMENT_OBJECT_CODE = tupsd.BND_PROCESS_OBJECT_CODE(+)) a' +
        'nd'
      ''
      '  (ss.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (p.TRANSPORT_MEASURE_CODE = m.MEASURE_CODE(+)) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = ss.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:COMMON_PRODUCT_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          DEFINITE_PRODUCTS dp2'
      '        where'
      '          (dp2.PRODUCT_CODE = ss.PRODUCT_CODE) and'
      '          (dp2.COMMON_PRODUCT_CODE = :COMMON_PRODUCT_CODE)'
      '      )'
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
      '          (tfc.COMPANY_CODE = ss.CLIENT_COMPANY_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:BEGIN_SHIPMENT_DATE is null) or'
      
        '    (Decode(%LEASE_GROUP_TYPE, 1, ss.RESULT_DATE, 2, ss.IMPORT_P' +
        'LAN_DATE) >= :BEGIN_SHIPMENT_DATE) ) and'
      ''
      '  ( (:END_SHIPMENT_DATE is null) or'
      
        '    (Decode(%LEASE_GROUP_TYPE, 1, ss.RESULT_DATE, 2, ss.IMPORT_P' +
        'LAN_DATE) <= :END_SHIPMENT_DATE) ) and'
      ''
      '  ( (:BEGIN_RECEIVE_DATE is null) or'
      '    (ss.RECEIVE_DATE >= :BEGIN_RECEIVE_DATE) ) and'
      ''
      '  ( (:END_RECEIVE_DATE is null) or'
      '    (ss.RECEIVE_DATE <= :END_RECEIVE_DATE) ) and'
      ''
      '  ( (:BEGIN_IMPORT_DATE is null) or'
      '    (ss.IMPORT_DATE >= :BEGIN_IMPORT_DATE) ) and'
      ''
      '  ( (:END_IMPORT_DATE is null) or'
      '    (ss.IMPORT_DATE <= :END_IMPORT_DATE) ) and'
      ''
      '  ( (:RECEIVE_DATE_BEGIN_RSV is null) or'
      
        '    (ss.RECEIVE_PLAN_DATE - Coalesce(ss.RECEIVE_DATE, ContextDate)' +
        ' >= :RECEIVE_DATE_BEGIN_RSV) ) and'
      ''
      '  ( (:RECEIVE_DATE_END_RSV is null) or'
      
        '    (ss.RECEIVE_PLAN_DATE - Coalesce(ss.RECEIVE_DATE, ContextDate)' +
        ' <= :RECEIVE_DATE_END_RSV) ) and'
      ''
      '  ( (:IMPORT_DATE_BEGIN_RSV is null) or'
      
        '    (ss.IMPORT_PLAN_DATE - Coalesce(ss.IMPORT_DATE, ContextDate) >' +
        '= :IMPORT_DATE_BEGIN_RSV) ) and'
      ''
      '  ( (:IMPORT_DATE_END_RSV is null) or'
      
        '    (ss.IMPORT_PLAN_DATE - Coalesce(ss.IMPORT_DATE, ContextDate) <' +
        '= :IMPORT_DATE_END_RSV) ) and'
      ''
      '  ( (:COUNTRY_CODE is null) or'
      '    ( (:COUNTRY_CODE = -1) and'
      '      c.COUNTRY_CODE <>'
      '      ( select'
      '          com.COUNTRY_CODE'
      '        from'
      '          COMPANIES com'
      '        where'
      '          (com.COMPANY_CODE = 0)'
      '      )'
      '    ) or'
      '    (:COUNTRY_CODE = c.COUNTRY_CODE)'
      '  )'
      ''
      ''
      'group by'
      '  ss.SALE_BRANCH_CODE,'
      
        '  Decode(%LEASE_GROUP_TYPE, 1, ss.RESULT_DATE, 2, ss.IMPORT_PLAN' +
        '_DATE),'
      
        '  Decode(%LEASE_GROUP_TYPE, 1, Nvl2(ss.INVOICE_DATE, 0, 1), 2, 0' +
        '),'
      '  c.COMPANY_CODE,'
      '  c.SHORT_NAME,'
      '  c.COMPANY_NO,'
      '  ss.RECEIVE_PLACE_OFFICE_CODE,'
      '  ss.IS_VENDOR_TRANSPORT,'
      '  co.OFFICE_NAME'
      ''
      'having'
      '  ( (:DAMAGES_STATE_CODE is null) or'
      '    ( (:DAMAGES_STATE_CODE = -1) and'
      '      (Max(ss.DAMAGES_STATE_CODE) is null)'
      '    ) or'
      '    (Max(ss.DAMAGES_STATE_CODE) = :DAMAGES_STATE_CODE)'
      '  )'
      ''
      'order by'
      '  IS_OTCH desc,'
      '  SHIPMENT_DATE,'
      '  CLENT_COMPANY_NAME,'
      '  RECEIVE_PLACE_OFFICE_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftFloat
        Name = 'LEASE_GROUP_TYPE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[psd.PRODUCT_CODE ~ psd.ST' +
          'ORE_DEAL_BEGIN_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'sdt_LEASE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENT_DAMAGE_STATE[eed]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'sdt_SALE'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'sdt_EXPORT'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'IF_IS_ACTIVE'
        ParamType = ptInput
        Value = '(0=0)'
      end>
    MacroParams = <
      item
        DataType = ftFloat
        Name = 'LEASE_GROUP_TYPE'
        ParamType = ptInput
        Value = '1'
      end>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 176
    Top = 72
    object qryExpGroupsMasterSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
    end
    object qryExpGroupsMasterIS_OTCH: TAbmesFloatField
      FieldName = 'IS_OTCH'
    end
    object qryExpGroupsMasterCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object qryExpGroupsMasterCLENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLENT_COMPANY_NAME'
    end
    object qryExpGroupsMasterRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      FieldName = 'RECEIVE_PLACE_OFFICE_CODE'
    end
    object qryExpGroupsMasterOFFICE_NAME: TAbmesWideStringField
      FieldName = 'OFFICE_NAME'
      Size = 50
    end
    object qryExpGroupsMasterPLAN_VALUE_GAINED: TAbmesFloatField
      FieldName = 'PLAN_VALUE_GAINED'
    end
    object qryExpGroupsMasterPLAN_VALUE_INVESTED: TAbmesFloatField
      FieldName = 'PLAN_VALUE_INVESTED'
    end
    object qryExpGroupsMasterOTCH_VALUE_GAINED: TAbmesFloatField
      FieldName = 'OTCH_VALUE_GAINED'
    end
    object qryExpGroupsMasterOTCH_VALUE_INVESTED: TAbmesFloatField
      FieldName = 'OTCH_VALUE_INVESTED'
    end
    object qryExpGroupsMasterAVG_TIME_DEV: TAbmesFloatField
      FieldName = 'AVG_TIME_DEV'
    end
    object qryExpGroupsMasterMIN_TIME_DEV: TAbmesFloatField
      FieldName = 'MIN_TIME_DEV'
    end
    object qryExpGroupsMasterUNCOVERED_LINES: TAbmesFloatField
      FieldName = 'UNCOVERED_LINES'
    end
    object qryExpGroupsMasterMIN_TRANSPORT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'MIN_TRANSPORT_MEASURE_CODE'
    end
    object qryExpGroupsMasterMAX_TRANSPORT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'MAX_TRANSPORT_MEASURE_CODE'
    end
    object qryExpGroupsMasterTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TRANSPORT_MEASURE_ABBREV'
      Size = 5
    end
    object qryExpGroupsMasterPLAN_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_TRANSPORT_QUANTITY'
    end
    object qryExpGroupsMasterOTCH_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'OTCH_TRANSPORT_QUANTITY'
    end
    object qryExpGroupsMasterGROUP_DATE_STATUS_CODE: TAbmesFloatField
      FieldName = 'GROUP_DATE_STATUS_CODE'
    end
    object qryExpGroupsMasterIS_INVOICE_DATE_NULL: TAbmesFloatField
      FieldName = 'IS_INVOICE_DATE_NULL'
    end
    object qryExpGroupsMasterEXP_GROUP_STATE_CODE: TAbmesFloatField
      FieldName = 'EXP_GROUP_STATE_CODE'
    end
    object qryExpGroupsMasterEXP_GROUP_DAMAGES_STATE_CODE: TAbmesFloatField
      FieldName = 'EXP_GROUP_DAMAGES_STATE_CODE'
    end
    object qryExpGroupsMasterCLIENT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_STATUS_NAME'
      Size = 100
    end
    object qryExpGroupsMasterIS_VENDOR_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_VENDOR_TRANSPORT'
    end
    object qryExpGroupsMasterCLIENT_COMPANY_NO: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_NO'
      Required = True
    end
  end
  object prvExpGroupMaster: TDataSetProvider
    DataSet = qryExpGroupsMaster
    BeforeGetRecords = prvExpGroupMasterBeforeGetRecords
    Left = 176
    Top = 16
  end
  object prvExpGroupsDetail: TDataSetProvider
    DataSet = qryExpGroupsDetail
    BeforeGetRecords = prvExpGroupsDetailBeforeGetRecords
    Left = 288
    Top = 16
  end
  object qrySingleExps: TAbmesSQLQuery
    BeforeOpen = qrySingleExpsBeforeOpen
    AfterClose = qrySingleExpsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_SALE_SHIPMENT_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_SALE_SHIPMENT_STATE_CODE'
        ParamType = ptInput
        Value = '8'
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
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
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
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'START_INVOICE_PERIOD_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'START_INVOICE_PERIOD_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_INVOICE_PERIOD_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_INVOICE_PERIOD_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DELIVERY'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_DELIVERY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DELIVERY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DELIVERY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MEDIATOR_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MEDIATOR_COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (d.CUSTOM_CODE || '#39'/'#39' || ss.SALE_NO || '#39'/'#39' || ss.SALE_SHIPMENT' +
        '_NO || '#39'/'#39' || st.SALE_TYPE_ABBREV) as SALE_ID,'
      '  sot.SALE_ORDER_TYPE_ABBREV,'
      '  ss.SALE_ORDER_TYPE_CODE,'
      '  ss.SALE_GROUP_OBJECT_BRANCH_CODE,'
      '  ss.SALE_GROUP_OBJECT_CODE,'
      '  ss.SALE_OBJECT_BRANCH_CODE,'
      '  ss.SALE_OBJECT_CODE,'
      '  ss.SALE_SHIPMENT_NO,'
      '  ss.REQUEST_BRANCH_CODE,'
      '  ss.REQUEST_NO,'
      '  ss.REQUEST_LINE_NO,'
      '  ss.CLIENT_REQUEST_NO,'
      ''
      '  ss.PRIORITY_CODE,'
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (p.PRIORITY_CODE = ss.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      '  ( select'
      '      p.PRIORITY_NO || '#39'    '#39' || p.PRIORITY_NAME'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (p.PRIORITY_CODE = ss.PRIORITY_CODE)'
      '  ) as PRIORITY_FULL_NAME,'
      ''
      '  ss.RESULT_DATE as SHIPMENT_DATE,'
      ''
      '  ss.RECEIVE_PLAN_DATE,'
      '  ss.RECEIVE_DATE,'
      
        '  (ss.RECEIVE_PLAN_DATE - Coalesce(ss.RECEIVE_DATE, ContextDate)) ' +
        'as RECEIVE_DATE_RSV,'
      '  ss.CL_OFFER_RECEIVE_DATE,'
      '  ss.IMPORT_PLAN_DATE,'
      '  ss.IMPORT_DATE,'
      
        '  (ss.IMPORT_PLAN_DATE - Coalesce(ss.IMPORT_DATE, ContextDate)) as' +
        ' IMPORT_DATE_RSV,'
      ''
      
        '  ss.SHIPMENT_PLAN_DATE - Coalesce(ss.INVOICE_DATE, ss.SHIPMENT_' +
        'DATE, ContextDate) as DEV_TIME,'
      ''
      '  ss.INVOICE_NO,'
      '  ss.INVOICE_DATE,'
      ''
      '  c.SHORT_NAME as CLIENT_NAME,'
      '  c.COMPANY_NO as CLIENT_COMPANY_NO,'
      ''
      '  ss.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  cp.NAME as CLIENT_PRODUCT_NAME,'
      '  m.MEASURE_CODE,'
      '  m.MEASURE_ABBREV,'
      ''
      
        '  dpt.DEPT_TYPE_ABBREV || dp.CUSTOM_CODE || dp.SUFFIX_LETTER as ' +
        'PRODUCTION_DEPT_IDENTIFIER,'
      ''
      '  ss.PLAN_QUANTITY,'
      ''
      '  ( ss.SINGLE_PRICE *'
      '    Decode(ss.SALE_DEAL_TYPE_CODE,'
      '           1, 1,'
      '           2, ss.LEASE_PLAN_DATE_UNIT_QTY'
      '    ) *'
      '    ( select'
      '        scr.FIXING'
      '      from'
      '        SECONDARY_CURRENCY_RATES scr'
      '      where'
      '        (scr.CURRENCY_CODE = ss.CURRENCY_CODE) and'
      
        '        (scr.RATE_DATE = Least(ss.SHIPMENT_PLAN_DATE, ContextDate)' +
        ')'
      '    ) *'
      '    ss.PLAN_QUANTITY'
      '  ) as PLAN_VALUE_GAINED,'
      ''
      '  ss.PLAN_VALUE_INVESTED,'
      ''
      '  ( select'
      '     Sum(sd.QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      '      (sd.BND_PROCESS_CODE(+) = 160) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      
        '      (ss.SHIPMENT_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (ss.SHIPMENT_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE)'
      '  ) as OTCH_QUANTITY,'
      ''
      '  ( ss.INVOICE_SINGLE_PRICE *'
      '    Decode(ss.SALE_DEAL_TYPE_CODE,'
      '           1, 1,'
      '           2, ss.LEASE_DATE_UNIT_QTY'
      '    ) *'
      '    ( select'
      '        scr.FIXING'
      '      from'
      '        SECONDARY_CURRENCY_RATES scr'
      '      where'
      '        (scr.CURRENCY_CODE = ss.INVOICE_CURRENCY_CODE) and'
      '        (scr.RATE_DATE = ss.INVOICE_DATE)'
      '    ) *'
      '    ss.QUANTITY'
      '  ) as OTCH_VALUE_GAINED,'
      ''
      '  Decode(ss.SALE_DEAL_TYPE_CODE, 1,'
      '    ( select'
      '       Sum(sd.TOTAL_PRICE * scr.FIXING)'
      '      from'
      '        STORE_DEALS sd,'
      '        SECONDARY_CURRENCY_RATES scr'
      '      where'
      '        (sd.STORE_DEAL_DATE = scr.RATE_DATE) and'
      '        (sd.CURRENCY_CODE = scr.CURRENCY_CODE) and'
      '        (sd.BND_PROCESS_CODE(+) = 160) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null) and'
      
        '        (ss.SHIPMENT_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      '        (ss.SHIPMENT_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE)'
      '    )'
      '  ) as OTCH_VALUE_INVESTED,'
      ''
      '  Nvl2(ss.ANNUL_EMPLOYEE_CODE, 1, 0) as IS_ANNULED,'
      ''
      '  ( case'
      '      when'
      '        ( (ss.FINISH_EMPLOYEE_CODE is not null) or'
      '          ( (ss.SHIPMENT_DATE is not null) and'
      '            (ss.INVOICE_DATE is not null)'
      '          )'
      '        ) then'
      '        1'
      '      else'
      '        0'
      '    end'
      '  ) as IS_OTCH,'
      ''
      
        '  Nvl2(tupsd.PLANNED_STORE_DEAL_BRANCH_CODE, 1, 0) as UNCOVERED_' +
        'LINES,'
      ''
      '  mt.MEASURE_ABBREV as TRANSPORT_MEASURE_ABBREV,'
      
        '  ss.PLAN_QUANTITY * p.TRANSPORT_MEASURE_COEF as PLAN_TRANSPORT_' +
        'QUANTITY,'
      
        '  ss.QUANTITY * p.TRANSPORT_MEASURE_COEF as OTCH_TRANSPORT_QUANT' +
        'ITY,'
      ''
      '  ss.LEASE_DATE_UNIT_NAME,'
      '  ss.LEASE_PLAN_DATE_UNIT_QTY,'
      '  ss.LEASE_DATE_UNIT_QTY,'
      ''
      '  p.ACCOUNT_MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      
        '  (ss.PLAN_QUANTITY * p.ACCOUNT_MEASURE_COEF) as PLAN_ACCOUNT_QU' +
        'ANTITY,'
      ''
      '  ( select'
      '      Sum(sd.ACCOUNT_QUANTITY) as ACCOUNT_QUANTITY'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      '      (sd.BND_PROCESS_CODE(+) = 160) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      ''
      
        '      (ss.SHIPMENT_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (ss.SHIPMENT_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE)'
      '  ) as OTCH_ACCOUNT_QUANTITY,'
      ''
      
        '  (Coalesce(ss.QUANTITY, ss.PLAN_QUANTITY) * p.ACCOUNT_MEASURE_C' +
        'OEF) as INVOICE_DATA_ACCOUNT_QUANTITY,'
      
        '  (Coalesce(ss.INVOICE_SINGLE_PRICE, ss.SINGLE_PRICE) / p.ACCOUN' +
        'T_MEASURE_COEF) as INVOICE_DATA_SINGLE_PRICE,'
      
        '  (Coalesce(ss.MARKET_SINGLE_PRICE, ss.INVOICE_SINGLE_PRICE, ss.' +
        'SINGLE_PRICE) / p.ACCOUNT_MEASURE_COEF) as INVOICE_DATA_MARKET_S' +
        'NGL_PRICE,'
      
        '  Coalesce(ss.DISCOUNT_PERCENT, 0) as INVOICE_DATA_DISCOUNT_PERC' +
        'ENT,'
      
        '  (Coalesce(ss.INVOICE_CURRENCY_CODE, ss.CURRENCY_CODE)) as INVO' +
        'ICE_DATA_CURRENCY_CODE,'
      ''
      '  ( select'
      '      po.PROCESS_OBJECT_IDENTIFIER'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (po.PROCESS_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_BRANCH' +
        '_CODE) and'
      '      (po.PROCESS_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE)'
      '  ) as INVOICE_DATA_SSH_IDENTIFIER,'
      ''
      '  ss.SALE_SHIPMENT_STATE_CODE,'
      '  ss.INVOICE_STATE_CODE,'
      ''
      '  ss.DAMAGES_STATE_CODE,'
      '  ss.SHIPMENT_OBJECT_BRANCH_CODE,'
      '  ss.SHIPMENT_OBJECT_CODE,'
      ''
      '  Coalesce('
      '    ( select'
      '        1'
      '      from'
      '        FIN_ORDERS fo'
      '      where'
      
        '        (fo.BND_PROCESS_OBJECT_BRANCH_CODE = ss.SALE_GROUP_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '        (fo.BND_PROCESS_OBJECT_CODE = ss.SALE_GROUP_OBJECT_CODE)' +
        ' and'
      '        (fo.ANNUL_EMPLOYEE_CODE is null)'
      '    ),'
      '    ( select'
      '        1'
      '      from'
      '        FIN_ORDERS fo'
      '      where'
      
        '        (fo.BND_PROCESS_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (fo.BND_PROCESS_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE) a' +
        'nd'
      '        (fo.ANNUL_EMPLOYEE_CODE is null)'
      '    ),'
      '    0'
      '  ) as HAS_FIN_ORDER,'
      ''
      '  ss.SALE_DEAL_TYPE_CODE,'
      ''
      '  ( select'
      '      co.OFFICE_NAME'
      '    from'
      '      COMPANY_OFFICES co'
      '    where'
      '      (co.COMPANY_CODE = ss.CLIENT_COMPANY_CODE) and'
      '      (co.OFFICE_CODE = ss.RECEIVE_PLACE_OFFICE_CODE)'
      '  ) as RECEIVE_PLACE_OFFICE_NAME'
      ''
      'from'
      '  SALE_TYPES st,'
      '  SALE_ORDER_TYPES sot,'
      '  DEPTS d,'
      '  PRODUCTS p,'
      '  MEASURES m,'
      '  MEASURES mt,'
      '  COMPANIES c,'
      '  TEMP_UNCOVERED_PSD tupsd,'
      '  COMPANY_PRODUCTS cp,'
      '  DEPTS dp,'
      '  DEPT_TYPES dpt,'
      '  (select'
      '    s.SALE_OBJECT_BRANCH_CODE,'
      '    s.SALE_OBJECT_CODE,'
      '    ssh.SHIPMENT_OBJECT_BRANCH_CODE,'
      '    ssh.SHIPMENT_OBJECT_CODE,'
      '    sg.PRIORITY_CODE,'
      '    ssh.INVOICE_DATE,'
      '    ssh.INVOICE_NO,'
      '    ssh.SHIPMENT_PLAN_DATE,'
      '    s.CLIENT_COMPANY_CODE,'
      '    s.RECEIVE_PLACE_OFFICE_CODE,'
      '    s.SALE_NO,'
      '    ssh.SALE_SHIPMENT_NO,'
      '    s.SALE_ORDER_TYPE_CODE,'
      '    s.SALE_GROUP_OBJECT_BRANCH_CODE,'
      '    s.SALE_GROUP_OBJECT_CODE,'
      '    s.REQUEST_BRANCH_CODE,'
      '    s.REQUEST_NO,'
      '    s.REQUEST_LINE_NO,'
      '    s.CLIENT_REQUEST_NO,'
      '    ssh.PLAN_QUANTITY,'
      '    s.SINGLE_PRICE,'
      '    ssh.QUANTITY,'
      '    ssh.INVOICE_SINGLE_PRICE,'
      '    s.DISCOUNT_PERCENT,'
      '    s.MARKET_SINGLE_PRICE,'
      '    s.ANNUL_EMPLOYEE_CODE,'
      '    s.FINISH_EMPLOYEE_CODE,'
      '    s.SALE_BRANCH_CODE,'
      '    s.PRODUCT_CODE,'
      '    ssh.INVOICE_CURRENCY_CODE,'
      '    s.CURRENCY_CODE,'
      '    s.SALE_TYPE_CODE,'
      '    ssh.SHIPMENT_DATE,'
      '    ssh.IMPORT_DATE,'
      '    ssh.RECEIVE_DATE,'
      
        '    Decode(s.SALE_DEAL_TYPE_CODE, 1, s.RECEIVE_DATE, ssh.RECEIVE' +
        '_PLAN_DATE) as RECEIVE_PLAN_DATE,'
      '    s.CL_OFFER_RECEIVE_DATE,'
      '    s.PRODUCTION_DEPT_CODE,'
      ''
      '    Decode(s.SALE_DEAL_TYPE_CODE, 1,'
      '      ( select'
      
        '          psd.QUANTITY * %PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY' +
        '[psd.PRODUCT_CODE ~ psd.STORE_DEAL_BEGIN_DATE]'
      '        from'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = ssh.SHIPMENT_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = ssh.SHIPMENT_OBJECT_COD' +
        'E) and'
      ''
      '          (psd.IN_OUT = -1) and'
      ''
      '          (psd.BND_PROCESS_CODE = 160)'
      '      )'
      '    ) as PLAN_VALUE_INVESTED,'
      ''
      '    ssh.IMPORT_PLAN_DATE as IMPORT_PLAN_DATE,'
      '    ( select'
      '        tdu.THE_DATE_UNIT_NAME'
      '      from'
      '        THE_DATE_UNITS tdu'
      '      where'
      '        (tdu.THE_DATE_UNIT_CODE = s.LEASE_DATE_UNIT_CODE)'
      '    ) as LEASE_DATE_UNIT_NAME,'
      '    ssh.LEASE_PLAN_DATE_UNIT_QTY,'
      '    ssh.LEASE_DATE_UNIT_QTY,'
      '    s.SALE_DEAL_TYPE_CODE,'
      ''
      '    case'
      '      when (s.ANNUL_EMPLOYEE_CODE is not null) then'
      '        10'
      ''
      '      when (s.FINISH_EMPLOYEE_CODE is not null) then'
      '        9'
      ''
      '      when ( ( (s.SALE_DEAL_TYPE_CODE <> %sdt_LEASE) and'
      '               (ssh.RECEIVE_DATE is not null) ) or'
      '             ( (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '               exists('
      '                 select'
      '                   1'
      '                 from'
      '                   SALE_SHIPMENTS ss2'
      '                 where'
      
        '                   (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '                   (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE)' +
        ' and'
      '                   (ss2.SALE_SHIPMENT_NO ='
      '                     ( select'
      '                         Min(ss3.SALE_SHIPMENT_NO)'
      '                       from'
      '                         SALE_SHIPMENTS ss3'
      '                       where'
      
        '                         (ss3.SALE_OBJECT_BRANCH_CODE = ssh.SALE' +
        '_OBJECT_BRANCH_CODE) and'
      
        '                         (ss3.SALE_OBJECT_CODE = ssh.SALE_OBJECT' +
        '_CODE)'
      '                     )'
      '                   ) and'
      '                   (ss2.RECEIVE_DATE is not null)'
      '               ) and'
      '               ( ( (ssh.RETURN_PLAN_DATE < ContextDate) and'
      '                   exists('
      '                     select'
      '                       1'
      '                     from'
      '                       SALE_SHIPMENTS ss2'
      '                     where'
      
        '                       (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                       (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_C' +
        'ODE) and'
      
        '                       (ss2.SALE_SHIPMENT_NO > ssh.SALE_SHIPMENT' +
        '_NO)'
      '                   )'
      '                 ) or'
      '                 exists('
      '                   select'
      '                     1'
      '                   from'
      '                     SALE_SHIPMENTS ss2'
      '                   where'
      
        '                     (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                     (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_COD' +
        'E) and'
      '                     (ss2.SALE_SHIPMENT_NO ='
      '                       ( select'
      '                           Max(ss3.SALE_SHIPMENT_NO)'
      '                         from'
      '                           SALE_SHIPMENTS ss3'
      '                         where'
      
        '                           (ss3.SALE_OBJECT_BRANCH_CODE = ssh.SA' +
        'LE_OBJECT_BRANCH_CODE) and'
      
        '                           (ss3.SALE_OBJECT_CODE = ssh.SALE_OBJE' +
        'CT_CODE)'
      '                       )'
      '                     ) and'
      '                     (ss2.IMPORT_DATE is not null)'
      '                 )'
      '               )'
      '             )'
      '           ) then'
      '        8'
      ''
      '      when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '           (s.IMPORT_DATE < ContextDate) and'
      '           (ssh.IMPORT_DATE is null) then'
      '        7'
      ''
      '      when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '           (ssh.RETURN_PLAN_DATE < ContextDate) then'
      '        6'
      ''
      '      when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      
        '           (ContextDate between ssh.RECEIVE_PLAN_DATE and ssh.RETU' +
        'RN_PLAN_DATE) and'
      '           exists('
      '             select'
      '               1'
      '             from'
      '               SALE_SHIPMENTS ss2'
      '             where'
      
        '               (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJECT_BR' +
        'ANCH_CODE) and'
      '               (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE) and'
      '               (ss2.SALE_SHIPMENT_NO ='
      '                 ( select'
      '                     Min(ss3.SALE_SHIPMENT_NO)'
      '                   from'
      '                     SALE_SHIPMENTS ss3'
      '                   where'
      
        '                     (ss3.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                     (ss3.SALE_OBJECT_CODE = ssh.SALE_OBJECT_COD' +
        'E)'
      '                 )'
      '               ) and'
      '               (ss2.RECEIVE_DATE is not null)'
      '           ) then'
      '        5'
      ''
      '      when (ssh.SHIPMENT_DATE is not null) and'
      '           (ssh.RECEIVE_DATE is null) and'
      '           (ssh.RECEIVE_PLAN_DATE < ContextDate) then'
      '        4'
      ''
      '      when (ssh.SHIPMENT_DATE is not null) and'
      '           (ssh.RECEIVE_DATE is null) then'
      '        3'
      ''
      '      when (ssh.SHIPMENT_PLAN_DATE < ContextDate) and'
      '           (ssh.SHIPMENT_DATE is null) then'
      '        2'
      ''
      '      when (ContextDate <= ssh.SHIPMENT_PLAN_DATE) then'
      '        1'
      '    end as SALE_SHIPMENT_STATE_CODE,'
      ''
      
        '    Nvl2(ssh.INVOICE_NO, (2 - ssh.IS_PROFORM_INVOICE), 0) as INV' +
        'OICE_STATE_CODE,'
      ''
      '    s.DELIVERY_OBJECT_BRANCH_CODE,'
      '    s.DELIVERY_OBJECT_CODE,'
      ''
      '    ( select'
      '        Max(%EXCEPT_EVENT_DAMAGE_STATE[eed])'
      '      from'
      '        EXCEPT_EVENT_DAMAGES eed'
      '      where'
      
        '        (eed.SHIPMENT_OBJECT_BRANCH_CODE = ssh.SHIPMENT_OBJECT_B' +
        'RANCH_CODE) and'
      '        (eed.SHIPMENT_OBJECT_CODE = ssh.SHIPMENT_OBJECT_CODE)'
      '    ) as DAMAGES_STATE_CODE,'
      ''
      '    ssh.RESULT_DATE'
      ''
      '  from'
      '    SALES s,'
      '    SALE_SHIPMENTS ssh,'
      '    SALE_GROUPS sg,'
      '    COMMON_OPTIONS co'
      ''
      '  where'
      '    (co.CODE = 1) and'
      ''
      
        '    (ssh.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) an' +
        'd'
      '    (ssh.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '    ( ( (:SALE_DEAL_TYPE_CODE = -1) and'
      '        (s.SALE_DEAL_TYPE_CODE in (%sdt_SALE, %sdt_EXPORT))'
      '      ) or'
      '      (s.SALE_DEAL_TYPE_CODE = :SALE_DEAL_TYPE_CODE)'
      '    ) and'
      ''
      '    ( (:LEASE_DATE_UNIT_CODE is null) or'
      '      (s.LEASE_DATE_UNIT_CODE = :LEASE_DATE_UNIT_CODE) ) and'
      ''
      '    ( (:RECEIVE_PLACE_OFFICE_CODE is null) or'
      
        '      (s.RECEIVE_PLACE_OFFICE_CODE = :RECEIVE_PLACE_OFFICE_CODE)' +
        ' ) and'
      ''
      
        '    (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRAN' +
        'CH_CODE) and'
      '    (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE) and'
      ''
      '    ( case'
      '        when (s.ANNUL_EMPLOYEE_CODE is not null) then'
      '          10'
      ''
      '        when (s.FINISH_EMPLOYEE_CODE is not null) then'
      '          9'
      ''
      '        when ( ( (s.SALE_DEAL_TYPE_CODE <> %sdt_LEASE) and'
      '                 (ssh.RECEIVE_DATE is not null) ) or'
      '               ( (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '                 exists('
      '                   select'
      '                     1'
      '                   from'
      '                     SALE_SHIPMENTS ss2'
      '                   where'
      
        '                     (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                     (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_COD' +
        'E) and'
      '                     (ss2.SALE_SHIPMENT_NO ='
      '                       ( select'
      '                           Min(ss3.SALE_SHIPMENT_NO)'
      '                         from'
      '                           SALE_SHIPMENTS ss3'
      '                         where'
      
        '                           (ss3.SALE_OBJECT_BRANCH_CODE = ssh.SA' +
        'LE_OBJECT_BRANCH_CODE) and'
      
        '                           (ss3.SALE_OBJECT_CODE = ssh.SALE_OBJE' +
        'CT_CODE)'
      '                       )'
      '                     ) and'
      '                     (ss2.RECEIVE_DATE is not null)'
      '                 ) and'
      '                 ( ( (ssh.RETURN_PLAN_DATE < ContextDate) and'
      '                     exists('
      '                       select'
      '                         1'
      '                       from'
      '                         SALE_SHIPMENTS ss2'
      '                       where'
      
        '                         (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE' +
        '_OBJECT_BRANCH_CODE) and'
      
        '                         (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT' +
        '_CODE) and'
      
        '                         (ss2.SALE_SHIPMENT_NO > ssh.SALE_SHIPME' +
        'NT_NO)'
      '                     )'
      '                   ) or'
      '                   exists('
      '                     select'
      '                       1'
      '                     from'
      '                       SALE_SHIPMENTS ss2'
      '                     where'
      
        '                       (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                       (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_C' +
        'ODE) and'
      '                       (ss2.SALE_SHIPMENT_NO ='
      '                         ( select'
      '                             Max(ss3.SALE_SHIPMENT_NO)'
      '                           from'
      '                             SALE_SHIPMENTS ss3'
      '                           where'
      
        '                             (ss3.SALE_OBJECT_BRANCH_CODE = ssh.' +
        'SALE_OBJECT_BRANCH_CODE) and'
      
        '                             (ss3.SALE_OBJECT_CODE = ssh.SALE_OB' +
        'JECT_CODE)'
      '                         )'
      '                       ) and'
      '                       (ss2.IMPORT_DATE is not null)'
      '                   )'
      '                 )'
      '               )'
      '             ) then'
      '          8'
      ''
      '        when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '             (s.IMPORT_DATE < ContextDate) and'
      '             (ssh.IMPORT_DATE is null) then'
      '          7'
      ''
      '        when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '             (ssh.RETURN_PLAN_DATE < ContextDate) then'
      '          6'
      ''
      '        when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      
        '             (ContextDate between ssh.RECEIVE_PLAN_DATE and ssh.RE' +
        'TURN_PLAN_DATE) and'
      '             exists('
      '               select'
      '                 1'
      '               from'
      '                 SALE_SHIPMENTS ss2'
      '               where'
      
        '                 (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJECT_' +
        'BRANCH_CODE) and'
      
        '                 (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE) a' +
        'nd'
      '                 (ss2.SALE_SHIPMENT_NO ='
      '                   ( select'
      '                       Min(ss3.SALE_SHIPMENT_NO)'
      '                     from'
      '                       SALE_SHIPMENTS ss3'
      '                     where'
      
        '                       (ss3.SALE_OBJECT_BRANCH_CODE = ssh.SALE_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                       (ss3.SALE_OBJECT_CODE = ssh.SALE_OBJECT_C' +
        'ODE)'
      '                   )'
      '                 ) and'
      '                 (ss2.RECEIVE_DATE is not null)'
      '             ) then'
      '          5'
      ''
      '        when (ssh.SHIPMENT_DATE is not null) and'
      '             (ssh.RECEIVE_DATE is null) and'
      '             (ssh.RECEIVE_PLAN_DATE < ContextDate) then'
      '          4'
      ''
      '        when (ssh.SHIPMENT_DATE is not null) and'
      '             (ssh.RECEIVE_DATE is null) then'
      '          3'
      ''
      '        when (ssh.SHIPMENT_PLAN_DATE < ContextDate) and'
      '             (ssh.SHIPMENT_DATE is null) then'
      '          2'
      ''
      '        when (ContextDate <= ssh.SHIPMENT_PLAN_DATE) then'
      '          1'
      
        '      end between :MIN_SALE_SHIPMENT_STATE_CODE and :MAX_SALE_SH' +
        'IPMENT_STATE_CODE'
      '    ) and'
      ''
      '    %IF_IS_ACTIVE'
      '  ) ss'
      ''
      'where'
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '  (ss.SALE_BRANCH_CODE = d.DEPT_CODE) and'
      ''
      '  (ss.CLIENT_COMPANY_CODE = c.COMPANY_CODE(+)) and'
      ''
      '  (ss.SALE_TYPE_CODE = st.SALE_TYPE_CODE) and'
      ''
      '  (ss.SALE_ORDER_TYPE_CODE = sot.SALE_ORDER_TYPE_CODE) and'
      ''
      '  (ss.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (ss.CLIENT_COMPANY_CODE = cp.COMPANY_CODE(+)) and'
      '  (ss.PRODUCT_CODE = cp.PRODUCT_CODE(+)) and'
      ''
      '  (ss.PRODUCTION_DEPT_CODE = dp.DEPT_CODE(+)) and'
      '  (dp.DEPT_TYPE_CODE = dpt.DEPT_TYPE_CODE(+)) and'
      ''
      
        '  (ss.SHIPMENT_OBJECT_BRANCH_CODE = tupsd.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE(+)) and'
      
        '  (ss.SHIPMENT_OBJECT_CODE = tupsd.BND_PROCESS_OBJECT_CODE(+)) a' +
        'nd'
      ''
      '  (p.MEASURE_CODE = m.MEASURE_CODE(+)) and'
      '  (p.TRANSPORT_MEASURE_CODE = mt.MEASURE_CODE(+)) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = ss.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:COMMON_PRODUCT_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          DEFINITE_PRODUCTS dp2'
      '        where'
      '          (dp2.PRODUCT_CODE = ss.PRODUCT_CODE) and'
      '          (dp2.COMMON_PRODUCT_CODE = :COMMON_PRODUCT_CODE)'
      '      )'
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
      '          (tfc.COMPANY_CODE = ss.CLIENT_COMPANY_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ((:BRANCH_CODE is null) or'
      '   (ss.SALE_BRANCH_CODE = :BRANCH_CODE)) and'
      ''
      '  ((:SALE_NO is null) or'
      '   (ss.SALE_NO = :SALE_NO)) and'
      ''
      '  ((:SALE_SHIPMENT_NO is null) or'
      '   (ss.SALE_SHIPMENT_NO = :SALE_SHIPMENT_NO)) and'
      ''
      '  ((:SALE_TYPE_CODE is null) or'
      '   (ss.SALE_TYPE_CODE = :SALE_TYPE_CODE)) and'
      ''
      '  ( (:SALE_ORDER_TYPE_CODE is null) or'
      '    (:SALE_ORDER_TYPE_CODE = 0) or'
      '    (ss.SALE_ORDER_TYPE_CODE = :SALE_ORDER_TYPE_CODE)'
      '  ) and'
      ''
      '  ( (:BEGIN_SHIPMENT_DATE is null) or'
      '    (ss.RESULT_DATE >= :BEGIN_SHIPMENT_DATE) ) and'
      ''
      '  ( (:END_SHIPMENT_DATE is null) or'
      '    (ss.RESULT_DATE <= :END_SHIPMENT_DATE) ) and'
      ''
      '  ( (:BEGIN_RECEIVE_DATE is null) or'
      '    (ss.RECEIVE_PLAN_DATE >= :BEGIN_RECEIVE_DATE) ) and'
      ''
      '  ( (:END_RECEIVE_DATE is null) or'
      '    (ss.RECEIVE_PLAN_DATE <= :END_RECEIVE_DATE) ) and'
      ''
      '  ( (:BEGIN_IMPORT_DATE is null) or'
      '    (ss.IMPORT_PLAN_DATE >= :BEGIN_IMPORT_DATE) ) and'
      ''
      '  ( (:END_IMPORT_DATE is null) or'
      '    (ss.IMPORT_PLAN_DATE <= :END_IMPORT_DATE) ) and'
      ''
      '  ( (:RECEIVE_DATE_BEGIN_RSV is null) or'
      
        '    (ss.RECEIVE_PLAN_DATE - Coalesce(ss.RECEIVE_DATE, ContextDate)' +
        ' >= :RECEIVE_DATE_BEGIN_RSV) ) and'
      ''
      '  ( (:RECEIVE_DATE_END_RSV is null) or'
      
        '    (ss.RECEIVE_PLAN_DATE - Coalesce(ss.RECEIVE_DATE, ContextDate)' +
        ' <= :RECEIVE_DATE_END_RSV) ) and'
      ''
      '  ( (:IMPORT_DATE_BEGIN_RSV is null) or'
      
        '    (ss.IMPORT_PLAN_DATE - Coalesce(ss.IMPORT_DATE, ContextDate) >' +
        '= :IMPORT_DATE_BEGIN_RSV) ) and'
      ''
      '  ( (:IMPORT_DATE_END_RSV is null) or'
      
        '    (ss.IMPORT_PLAN_DATE - Coalesce(ss.IMPORT_DATE, ContextDate) <' +
        '= :IMPORT_DATE_END_RSV) ) and'
      ''
      '  ( (:COUNTRY_CODE is null) or'
      '    ( (:COUNTRY_CODE = -1) and'
      '      c.COUNTRY_CODE <>'
      '      ( select'
      '          com.COUNTRY_CODE'
      '        from'
      '          COMPANIES com'
      '        where'
      '          (com.COMPANY_CODE = 0)'
      '      )'
      '    ) or'
      '    (:COUNTRY_CODE = c.COUNTRY_CODE)'
      '  ) and'
      ''
      '  ( (:PRODUCTION_DEPT_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          DEPT_RELATIONS dr'
      '        where'
      '          (dr.ANCESTOR_DEPT_CODE = :PRODUCTION_DEPT_CODE) and'
      '          (dr.DESCENDANT_DEPT_CODE = ss.PRODUCTION_DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ((:FROM_INVOICE_NO is null) or'
      '   (ss.INVOICE_NO >= :FROM_INVOICE_NO)) and'
      ''
      '  ((:TO_INVOICE_NO is null) or'
      '   (ss.INVOICE_NO <= :TO_INVOICE_NO)) and'
      ''
      '  ((:START_INVOICE_PERIOD_DATE is null) or'
      '   (ss.INVOICE_DATE >= :START_INVOICE_PERIOD_DATE)) and'
      ''
      '  ((:END_INVOICE_PERIOD_DATE is null) or'
      '   (ss.INVOICE_DATE <= :END_INVOICE_PERIOD_DATE)) and'
      ''
      '  ( (:HAS_DELIVERY is null) or'
      '    (:HAS_DELIVERY = 0) or'
      '    ( (:HAS_DELIVERY = 1) and'
      '      (ss.DELIVERY_OBJECT_BRANCH_CODE is not null) and'
      '      (exists('
      '        select'
      '          1'
      '        from'
      '          DELIVERY_CONTRACTS dc,'
      '          DEFICIT_COVER_DECISIONS dcd'
      '        where'
      
        '          (dc.DELIVERY_OBJECT_BRANCH_CODE = ss.DELIVERY_OBJECT_B' +
        'RANCH_CODE) and'
      
        '          (dc.DELIVERY_OBJECT_CODE = ss.DELIVERY_OBJECT_CODE) an' +
        'd'
      
        '          (dcd.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_COD' +
        'E) and'
      '          (dcd.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      '          ( (:DCD_BRANCH_CODE is null) or'
      '            (dcd.DCD_BRANCH_CODE = :DCD_BRANCH_CODE) ) and'
      '          ( (:DCD_CODE is null) or'
      '            (dcd.DCD_CODE = :DCD_CODE) ) and'
      '          ( (:DELIVERY_PROJECT_CODE is null) or'
      
        '            (dc.DELIVERY_PROJECT_CODE = :DELIVERY_PROJECT_CODE) ' +
        ') '
      '        )'
      '      )'
      '    ) or'
      '    ( (:HAS_DELIVERY = 2) and'
      '      (ss.DELIVERY_OBJECT_BRANCH_CODE is null)'
      '    )'
      '  ) and'
      ''
      '  ( (:DAMAGES_STATE_CODE is null) or'
      '    ( (:DAMAGES_STATE_CODE = -1) and'
      '      (ss.DAMAGES_STATE_CODE is null)'
      '    ) or'
      '    (ss.DAMAGES_STATE_CODE = :DAMAGES_STATE_CODE)'
      '  ) and'
      ''
      '  ( (:MEDIATOR_COMPANY_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          SALE_REQUEST_GROUPS srg'
      '        where'
      '          (srg.REQUEST_BRANCH_CODE = ss.REQUEST_BRANCH_CODE) and'
      '          (srg.REQUEST_NO = ss.REQUEST_NO) and'
      '          (srg.MEDIATOR_COMPANY_CODE = :MEDIATOR_COMPANY_CODE)'
      '      )'
      '    )'
      '  )'
      ''
      'order by'
      '  IS_OTCH desc,'
      '  SHIPMENT_DATE,'
      '  SALE_ID')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[psd.PRODUCT_CODE ~ psd.ST' +
          'ORE_DEAL_BEGIN_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'sdt_LEASE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENT_DAMAGE_STATE[eed]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'sdt_SALE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'sdt_EXPORT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'IF_IS_ACTIVE'
        ParamType = ptInput
        Value = '(1=1)'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 400
    Top = 72
    object qrySingleExpsSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object qrySingleExpsSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object qrySingleExpsSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
    end
    object qrySingleExpsSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
    end
    object qrySingleExpsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object qrySingleExpsSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object qrySingleExpsSALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_NO'
    end
    object qrySingleExpsREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object qrySingleExpsREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object qrySingleExpsREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object qrySingleExpsCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 50
    end
    object qrySingleExpsSALE_ID: TAbmesWideStringField
      FieldName = 'SALE_ID'
      Size = 122
    end
    object qrySingleExpsPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object qrySingleExpsPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qrySingleExpsPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 94
    end
    object qrySingleExpsINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object qrySingleExpsINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object qrySingleExpsSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
    end
    object qrySingleExpsCLIENT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_NAME'
    end
    object qrySingleExpsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qrySingleExpsCLIENT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 50
    end
    object qrySingleExpsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qrySingleExpsPRODUCTION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PRODUCTION_DEPT_IDENTIFIER'
      Size = 46
    end
    object qrySingleExpsPLAN_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_QUANTITY'
    end
    object qrySingleExpsPLAN_VALUE_GAINED: TAbmesFloatField
      FieldName = 'PLAN_VALUE_GAINED'
    end
    object qrySingleExpsPLAN_VALUE_INVESTED: TAbmesFloatField
      FieldName = 'PLAN_VALUE_INVESTED'
    end
    object qrySingleExpsOTCH_QUANTITY: TAbmesFloatField
      FieldName = 'OTCH_QUANTITY'
    end
    object qrySingleExpsOTCH_VALUE_GAINED: TAbmesFloatField
      FieldName = 'OTCH_VALUE_GAINED'
    end
    object qrySingleExpsOTCH_VALUE_INVESTED: TAbmesFloatField
      FieldName = 'OTCH_VALUE_INVESTED'
    end
    object qrySingleExpsIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
    end
    object qrySingleExpsIS_OTCH: TAbmesFloatField
      FieldName = 'IS_OTCH'
    end
    object qrySingleExpsDEV_TIME: TAbmesFloatField
      FieldName = 'DEV_TIME'
    end
    object qrySingleExpsUNCOVERED_LINES: TAbmesFloatField
      FieldName = 'UNCOVERED_LINES'
    end
    object qrySingleExpsTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TRANSPORT_MEASURE_ABBREV'
      Size = 5
    end
    object qrySingleExpsPLAN_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_TRANSPORT_QUANTITY'
    end
    object qrySingleExpsOTCH_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'OTCH_TRANSPORT_QUANTITY'
    end
    object qrySingleExpsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qrySingleExpsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qrySingleExpsLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qrySingleExpsLEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_PLAN_DATE_UNIT_QTY'
    end
    object qrySingleExpsLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
    end
    object qrySingleExpsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qrySingleExpsPLAN_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_ACCOUNT_QUANTITY'
    end
    object qrySingleExpsOTCH_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'OTCH_ACCOUNT_QUANTITY'
    end
    object qrySingleExpsSALE_SHIPMENT_STATE_CODE: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_STATE_CODE'
    end
    object qrySingleExpsINVOICE_STATE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_STATE_CODE'
    end
    object qrySingleExpsRECEIVE_DATE_RSV: TAbmesFloatField
      FieldName = 'RECEIVE_DATE_RSV'
    end
    object qrySingleExpsIMPORT_DATE_RSV: TAbmesFloatField
      FieldName = 'IMPORT_DATE_RSV'
    end
    object qrySingleExpsRECEIVE_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_PLAN_DATE'
    end
    object qrySingleExpsIMPORT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_PLAN_DATE'
    end
    object qrySingleExpsRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object qrySingleExpsIMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_DATE'
    end
    object qrySingleExpsDAMAGES_STATE_CODE: TAbmesFloatField
      FieldName = 'DAMAGES_STATE_CODE'
    end
    object qrySingleExpsSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_BRANCH_CODE'
    end
    object qrySingleExpsSHIPMENT_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_CODE'
    end
    object qrySingleExpsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qrySingleExpsACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qrySingleExpsHAS_FIN_ORDER: TAbmesFloatField
      FieldName = 'HAS_FIN_ORDER'
    end
    object qrySingleExpsINVOICE_DATA_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'INVOICE_DATA_ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object qrySingleExpsINVOICE_DATA_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INVOICE_DATA_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qrySingleExpsINVOICE_DATA_MARKET_SNGL_PRICE: TAbmesFloatField
      FieldName = 'INVOICE_DATA_MARKET_SNGL_PRICE'
      ProviderFlags = []
    end
    object qrySingleExpsINVOICE_DATA_DISCOUNT_PERCENT: TAbmesFloatField
      FieldName = 'INVOICE_DATA_DISCOUNT_PERCENT'
      ProviderFlags = []
    end
    object qrySingleExpsINVOICE_DATA_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INVOICE_DATA_CURRENCY_CODE'
      ProviderFlags = []
    end
    object qrySingleExpsINVOICE_DATA_SSH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'INVOICE_DATA_SSH_IDENTIFIER'
      ProviderFlags = []
      Size = 100
    end
    object qrySingleExpsCLIENT_COMPANY_NO: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_NO'
    end
    object qrySingleExpsSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object qrySingleExpsRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField
      FieldName = 'RECEIVE_PLACE_OFFICE_NAME'
      Size = 50
    end
    object qrySingleExpsCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE'
    end
  end
  object prvSingleExps: TDataSetProvider
    DataSet = qrySingleExps
    BeforeGetRecords = prvSingleExpsBeforeGetRecords
    Left = 400
    Top = 16
  end
  object qryShipmentNeededMaterials: TAbmesSQLQuery
    BeforeOpen = qryShipmentNeededMaterialsBeforeOpen
    AfterClose = qryShipmentNeededMaterialsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  MATERIAL_CODE,'
      '  MATERIAL_NAME,'
      '  MATERIAL_NO,'
      '  MATERIAL_MEASURE_CODE,'
      '  MATERIAL_MEASURE_ABBREV,'
      '  MATERIAL_ACCOUNT_MEASURE_CODE,'
      '  MATERIAL_ACC_MEASURE_ABBREV,'
      '  DETAIL_CODE,'
      '  DETAIL_NAME,'
      '  DETAIL_NO,'
      '  DETAIL_MEASURE_CODE,'
      '  DETAIL_MEASURE_ABBREV,'
      '  DETAIL_ACCOUNT_MEASURE_CODE,'
      '  DETAIL_ACCOUNT_MEASURE_ABBREV,'
      '  Sum(QUANTITY) as QUANTITY,'
      '  Sum(ACCOUNT_QUANTITY) as ACCOUNT_QUANTITY '
      '  '
      'from'
      '  ( select'
      '      Coalesce(m.PRODUCT_CODE, s.PRODUCT_CODE) as MATERIAL_CODE,'
      '      p.NAME as MATERIAL_NAME,'
      '      p.CUSTOM_CODE as MATERIAL_NO,'
      '      p.MEASURE_CODE as MATERIAL_MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.MEASURE_CODE)'
      '      ) as MATERIAL_MEASURE_ABBREV,'
      '      p.ACCOUNT_MEASURE_CODE as MATERIAL_ACCOUNT_MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '      ) as MATERIAL_ACC_MEASURE_ABBREV,'
      '    '
      '      Coalesce(m.DETAIL_CODE, s.PRODUCT_CODE) as DETAIL_CODE,'
      '      dp.NAME as DETAIL_NAME,'
      '      dp.CUSTOM_CODE as DETAIL_NO,'
      '      dp.MEASURE_CODE as DETAIL_MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = dp.MEASURE_CODE)'
      '      ) as DETAIL_MEASURE_ABBREV,'
      '      dp.ACCOUNT_MEASURE_CODE as DETAIL_ACCOUNT_MEASURE_CODE,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = dp.ACCOUNT_MEASURE_CODE)'
      '      ) as DETAIL_ACCOUNT_MEASURE_ABBREV,'
      '    '
      
        '      Coalesce(m.QUANTITY, Coalesce(ss.QUANTITY, ss.PLAN_QUANTIT' +
        'Y)) as QUANTITY,'
      
        '      Coalesce(m.ACCOUNT_QUANTITY, Coalesce(ss.QUANTITY, ss.PLAN' +
        '_QUANTITY) * p.ACCOUNT_MEASURE_COEF) as ACCOUNT_QUANTITY'
      ''
      ''
      '    from'
      '      SALE_SHIPMENTS ss,'
      '      SALES s,'
      '      PRODUCTS p,'
      '      PRODUCTS dp,'
      '      TEMP_SHIPMENT_MATERIAL_LIST m'
      '    '
      '    where'
      
        '      (ss.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (ss.SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      '      (ss.SALE_SHIPMENT_NO = :SALE_SHIPMENT_NO) and'
      
        '      (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      
        '      (ss.SHIPMENT_OBJECT_BRANCH_CODE = m.SHIPMENT_OBJECT_BRANCH' +
        '_CODE(+)) and'
      '      (ss.SHIPMENT_OBJECT_CODE = m.SHIPMENT_OBJECT_CODE(+)) and'
      
        '      (p.PRODUCT_CODE = Coalesce(m.PRODUCT_CODE, s.PRODUCT_CODE)' +
        ') and'
      
        '      (dp.PRODUCT_CODE = Coalesce(m.DETAIL_CODE, s.PRODUCT_CODE)' +
        ')'
      '  )'
      ''
      'group by'
      '  MATERIAL_CODE,'
      '  MATERIAL_NAME,'
      '  MATERIAL_NO,'
      '  MATERIAL_MEASURE_CODE,'
      '  MATERIAL_MEASURE_ABBREV,'
      '  MATERIAL_ACCOUNT_MEASURE_CODE,'
      '  MATERIAL_ACC_MEASURE_ABBREV,'
      '  DETAIL_CODE,'
      '  DETAIL_NAME,'
      '  DETAIL_NO,'
      '  DETAIL_MEASURE_CODE,'
      '  DETAIL_MEASURE_ABBREV,'
      '  DETAIL_ACCOUNT_MEASURE_CODE,'
      '  DETAIL_ACCOUNT_MEASURE_ABBREV'
      '  '
      'order by'
      '  DETAIL_NO,'
      '  MATERIAL_NO'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 152
    Top = 208
    object qryShipmentNeededMaterialsMATERIAL_CODE: TAbmesFloatField
      FieldName = 'MATERIAL_CODE'
    end
    object qryShipmentNeededMaterialsMATERIAL_NAME: TAbmesWideStringField
      FieldName = 'MATERIAL_NAME'
      Size = 100
    end
    object qryShipmentNeededMaterialsMATERIAL_NO: TAbmesFloatField
      FieldName = 'MATERIAL_NO'
    end
    object qryShipmentNeededMaterialsMATERIAL_MEASURE_CODE: TAbmesFloatField
      FieldName = 'MATERIAL_MEASURE_CODE'
    end
    object qryShipmentNeededMaterialsMATERIAL_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MATERIAL_MEASURE_ABBREV'
      Size = 5
    end
    object qryShipmentNeededMaterialsMATERIAL_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'MATERIAL_ACCOUNT_MEASURE_CODE'
    end
    object qryShipmentNeededMaterialsMATERIAL_ACC_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MATERIAL_ACC_MEASURE_ABBREV'
      Size = 5
    end
    object qryShipmentNeededMaterialsDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryShipmentNeededMaterialsDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryShipmentNeededMaterialsDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qryShipmentNeededMaterialsDETAIL_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_MEASURE_CODE'
    end
    object qryShipmentNeededMaterialsDETAIL_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_MEASURE_ABBREV'
      Size = 5
    end
    object qryShipmentNeededMaterialsDETAIL_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_ACCOUNT_MEASURE_CODE'
    end
    object qryShipmentNeededMaterialsDETAIL_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryShipmentNeededMaterialsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryShipmentNeededMaterialsACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
  end
  object prvShipmentNeededMaterials: TDataSetProvider
    DataSet = qryShipmentNeededMaterials
    Left = 152
    Top = 160
  end
  object shActiveSaleCondition: TJvStrHolder
    Capacity = 4
    Macros = <>
    Left = 232
    Top = 120
    InternalVer = 2
    StrData = (
      ''
      
        '2020202028732e414e4e554c5f454d504c4f5945455f434f4445206973206e75' +
        '6c6c2920616e64'
      
        '2020202028732e46494e4953485f454d504c4f5945455f434f4445206973206e' +
        '756c6c29')
  end
  object qryExpGroupsDetail: TAbmesSQLQuery
    BeforeOpen = qryExpGroupsDetailBeforeOpen
    AfterClose = qryExpGroupsDetailAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'LEASE_GROUP_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_GROUP_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_SALE_SHIPMENT_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_SALE_SHIPMENT_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
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
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_GROUP_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_GROUP_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ( case'
      '      when'
      '        ( (ss.FINISH_EMPLOYEE_CODE is not null) or'
      '          ( (ss.SHIPMENT_DATE is not null) and'
      '            (ss.INVOICE_DATE is not null)'
      '          )'
      '        ) then'
      '        1'
      '      else'
      '        0'
      '    end'
      '  ) as IS_OTCH,'
      
        '  Decode(:LEASE_GROUP_TYPE, 1, ss.RESULT_DATE, 2, ss.IMPORT_PLAN' +
        '_DATE) as SHIPMENT_DATE,'
      
        '  Decode(:LEASE_GROUP_TYPE, 1, Nvl2(ss.INVOICE_DATE, 0, 1), 2, 0' +
        ') as IS_INVOICE_DATE_NULL,'
      '  ss.CLIENT_COMPANY_CODE,'
      '  ss.RECEIVE_PLACE_OFFICE_CODE,'
      
        '  (d.CUSTOM_CODE || '#39'/'#39' || ss.SALE_NO || '#39'/'#39' || ss.SALE_SHIPMENT' +
        '_NO || '#39'/'#39' || st.SALE_TYPE_ABBREV) as SALE_ID,'
      '  sot.SALE_ORDER_TYPE_ABBREV,'
      '  ss.SALE_ORDER_TYPE_CODE,'
      '  ss.SALE_GROUP_OBJECT_BRANCH_CODE,'
      '  ss.SALE_GROUP_OBJECT_CODE,'
      '  ss.SALE_OBJECT_BRANCH_CODE,'
      '  ss.SALE_OBJECT_CODE,'
      '  ss.SALE_SHIPMENT_NO,'
      '  ss.REQUEST_BRANCH_CODE,'
      '  ss.REQUEST_NO,'
      '  ss.REQUEST_LINE_NO,'
      '  ss.CLIENT_REQUEST_NO,'
      ''
      '  ss.PRIORITY_CODE,'
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (p.PRIORITY_CODE = ss.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      '  ( select'
      '      p.PRIORITY_NO || '#39'    '#39' || p.PRIORITY_NAME'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (p.PRIORITY_CODE = ss.PRIORITY_CODE)'
      '  ) as PRIORITY_FULL_NAME,'
      ''
      '  ss.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  cp.NAME as CLIENT_PRODUCT_NAME,'
      '  m.MEASURE_CODE,'
      '  m.MEASURE_ABBREV,'
      ''
      '  ss.PLAN_QUANTITY,'
      ''
      '  ( ss.SINGLE_PRICE *'
      '    Decode(ss.SALE_DEAL_TYPE_CODE,'
      '           1, 1,'
      '           2, ss.LEASE_PLAN_DATE_UNIT_QTY'
      '    ) *'
      '    ( select'
      '        scr.FIXING'
      '      from'
      '        SECONDARY_CURRENCY_RATES scr'
      '      where'
      '        (scr.CURRENCY_CODE = ss.CURRENCY_CODE) and'
      
        '        (scr.RATE_DATE = Least(ss.SHIPMENT_PLAN_DATE, ContextDate)' +
        ')'
      '    ) *'
      '    ss.PLAN_QUANTITY'
      '  ) as PLAN_VALUE_GAINED,'
      ''
      '  ss.PLAN_VALUE_INVESTED,'
      ''
      '  ( ss.INVOICE_SINGLE_PRICE *'
      '    Decode(ss.SALE_DEAL_TYPE_CODE,'
      '           1, 1,'
      '           2, ss.LEASE_DATE_UNIT_QTY'
      '    ) *'
      '    ( select'
      '        scr.FIXING'
      '      from'
      '        SECONDARY_CURRENCY_RATES scr'
      '      where'
      '        (scr.CURRENCY_CODE = ss.INVOICE_CURRENCY_CODE) and'
      '        (scr.RATE_DATE = ss.SHIPMENT_DATE)'
      '    ) *'
      '    ss.QUANTITY'
      '  ) as OTCH_VALUE_GAINED,'
      ''
      '  ( select'
      '      Sum(sd.QUANTITY) as QUANTITY'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      '      (sd.BND_PROCESS_CODE(+) = 160) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      ''
      
        '      (ss.SHIPMENT_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (ss.SHIPMENT_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE)'
      '  ) as OTCH_QUANTITY,'
      ''
      '  Decode(ss.SALE_DEAL_TYPE_CODE, 1,'
      '    ( select'
      '        Sum(sd.TOTAL_PRICE * scr.FIXING) as TOTAL_PRICE'
      '      from'
      '        STORE_DEALS sd,'
      '        SECONDARY_CURRENCY_RATES scr'
      '      where'
      '        (sd.STORE_DEAL_DATE = scr.RATE_DATE(+)) and'
      '        (sd.CURRENCY_CODE = scr.CURRENCY_CODE(+)) and'
      ''
      '        (sd.BND_PROCESS_CODE(+) = 160) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null) and'
      ''
      
        '        (ss.SHIPMENT_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      '        (ss.SHIPMENT_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE)'
      '    )'
      '  ) as OTCH_VALUE_INVESTED,'
      ''
      '  Nvl2(ss.ANNUL_EMPLOYEE_CODE, 1, 0) as IS_ANNULED,'
      ''
      
        '  Nvl2(tupsd.PLANNED_STORE_DEAL_BRANCH_CODE, 1, 0) as UNCOVERED_' +
        'LINES,'
      ''
      '  mt.MEASURE_CODE as TRANSPORT_MEASURE_CODE,'
      '  mt.MEASURE_ABBREV as TRANSPORT_MEASURE_ABBREV,'
      
        '  ss.PLAN_QUANTITY * p.TRANSPORT_MEASURE_COEF as PLAN_TRANSPORT_' +
        'QUANTITY,'
      
        '  ss.QUANTITY * p.TRANSPORT_MEASURE_COEF as OTCH_TRANSPORT_QUANT' +
        'ITY,'
      ''
      '  ss.LEASE_DATE_UNIT_NAME,'
      '  ss.LEASE_PLAN_DATE_UNIT_QTY,'
      '  ss.LEASE_DATE_UNIT_QTY,'
      ''
      '  p.ACCOUNT_MEASURE_CODE as ACCOUNT_MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      
        '  (ss.PLAN_QUANTITY * p.ACCOUNT_MEASURE_COEF) as PLAN_ACCOUNT_QU' +
        'ANTITY,'
      ''
      '  ( select'
      '      Sum(sd.ACCOUNT_QUANTITY) as ACCOUNT_QUANTITY'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      '      (sd.BND_PROCESS_CODE(+) = 160) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      ''
      
        '      (ss.SHIPMENT_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (ss.SHIPMENT_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE)'
      '  ) as OTCH_ACCOUNT_QUANTITY,'
      ''
      '  ss.SALE_SHIPMENT_STATE_CODE,'
      '  ss.INVOICE_STATE_CODE,'
      ''
      '  ss.RECEIVE_PLAN_DATE,'
      '  ss.RECEIVE_DATE,'
      
        '  (ss.RECEIVE_PLAN_DATE - Coalesce(ss.RECEIVE_DATE, ContextDate)) ' +
        'as RECEIVE_DATE_RSV,'
      '  ss.CL_OFFER_RECEIVE_DATE,'
      '  ss.IMPORT_PLAN_DATE,'
      '  ss.IMPORT_DATE,'
      
        '  (ss.IMPORT_PLAN_DATE - Coalesce(ss.IMPORT_DATE, ContextDate)) as' +
        ' IMPORT_DATE_RSV,'
      ''
      '  ss.DAMAGES_STATE_CODE,'
      '  ss.SHIPMENT_OBJECT_BRANCH_CODE,'
      '  ss.SHIPMENT_OBJECT_CODE,'
      ''
      '  ss.IS_VENDOR_TRANSPORT,'
      '  ss.SALE_DEAL_TYPE_CODE'
      ''
      'from'
      '  SALE_TYPES st,'
      '  SALE_ORDER_TYPES sot,'
      '  DEPTS d,'
      '  PRODUCTS p,'
      '  MEASURES m,'
      '  MEASURES mt,'
      '  COMPANIES c,'
      '  TEMP_UNCOVERED_PSD tupsd,'
      '  COMPANY_PRODUCTS cp,'
      '  (select'
      '    s.SALE_OBJECT_BRANCH_CODE,'
      '    s.SALE_OBJECT_CODE,'
      '    ssh.SHIPMENT_OBJECT_BRANCH_CODE,'
      '    ssh.SHIPMENT_OBJECT_CODE,'
      '    sg.PRIORITY_CODE,'
      '    ssh.INVOICE_DATE,'
      '    ssh.SHIPMENT_PLAN_DATE,'
      '    ssh.SHIPMENT_DATE,'
      '    ssh.IMPORT_PLAN_DATE,'
      '    ssh.IMPORT_DATE,'
      
        '    Decode(s.SALE_DEAL_TYPE_CODE, 1, s.RECEIVE_DATE, ssh.RECEIVE' +
        '_PLAN_DATE) as RECEIVE_PLAN_DATE,'
      '    s.CL_OFFER_RECEIVE_DATE,'
      '    ssh.RECEIVE_DATE,'
      '    s.CLIENT_COMPANY_CODE,'
      '    s.RECEIVE_PLACE_OFFICE_CODE,'
      '    s.SALE_NO,'
      '    ssh.SALE_SHIPMENT_NO,'
      '    s.SALE_ORDER_TYPE_CODE,'
      '    s.SALE_GROUP_OBJECT_BRANCH_CODE,'
      '    s.SALE_GROUP_OBJECT_CODE,'
      '    s.REQUEST_BRANCH_CODE,'
      '    s.REQUEST_NO,'
      '    s.REQUEST_LINE_NO,'
      '    ssh.PLAN_QUANTITY,'
      '    s.SINGLE_PRICE,'
      '    ssh.QUANTITY,'
      '    ssh.INVOICE_SINGLE_PRICE,'
      '    s.FINISH_EMPLOYEE_CODE,'
      '    s.ANNUL_EMPLOYEE_CODE,'
      '    s.SALE_BRANCH_CODE,'
      '    s.PRODUCT_CODE,'
      '    ssh.INVOICE_CURRENCY_CODE,'
      '    s.CURRENCY_CODE,'
      '    s.SALE_TYPE_CODE,'
      '    s.CLIENT_REQUEST_NO,'
      ''
      '    Decode(s.SALE_DEAL_TYPE_CODE, 1,'
      '      ( select'
      
        '          psd.QUANTITY * %PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY' +
        '[psd.PRODUCT_CODE ~ psd.STORE_DEAL_BEGIN_DATE]'
      '        from'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = ssh.SHIPMENT_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = ssh.SHIPMENT_OBJECT_COD' +
        'E) and'
      ''
      '          (psd.IN_OUT = -1) and'
      ''
      '          (psd.BND_PROCESS_CODE = 160)'
      '      )'
      '    ) as PLAN_VALUE_INVESTED,'
      ''
      '    ( select'
      '        tdu.THE_DATE_UNIT_NAME'
      '      from'
      '        THE_DATE_UNITS tdu'
      '      where'
      '        (tdu.THE_DATE_UNIT_CODE = s.LEASE_DATE_UNIT_CODE)'
      '    ) as LEASE_DATE_UNIT_NAME,'
      '    ssh.LEASE_PLAN_DATE_UNIT_QTY,'
      '    ssh.LEASE_DATE_UNIT_QTY,'
      '    s.SALE_DEAL_TYPE_CODE,'
      ''
      '    case'
      '      when (s.ANNUL_EMPLOYEE_CODE is not null) then'
      '        10'
      ''
      '      when (s.FINISH_EMPLOYEE_CODE is not null) then'
      '        9'
      ''
      '      when ( ( (s.SALE_DEAL_TYPE_CODE <> %sdt_LEASE) and'
      '               (ssh.RECEIVE_DATE is not null) ) or'
      '             ( (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '               exists('
      '                 select'
      '                   1'
      '                 from'
      '                   SALE_SHIPMENTS ss2'
      '                 where'
      
        '                   (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '                   (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE)' +
        ' and'
      '                   (ss2.SALE_SHIPMENT_NO ='
      '                     ( select'
      '                         Min(ss3.SALE_SHIPMENT_NO)'
      '                       from'
      '                         SALE_SHIPMENTS ss3'
      '                       where'
      
        '                         (ss3.SALE_OBJECT_BRANCH_CODE = ssh.SALE' +
        '_OBJECT_BRANCH_CODE) and'
      
        '                         (ss3.SALE_OBJECT_CODE = ssh.SALE_OBJECT' +
        '_CODE)'
      '                     )'
      '                   ) and'
      '                   (ss2.RECEIVE_DATE is not null)'
      '               ) and'
      '               ( ( (ssh.RETURN_PLAN_DATE < ContextDate) and'
      '                   exists('
      '                     select'
      '                       1'
      '                     from'
      '                       SALE_SHIPMENTS ss2'
      '                     where'
      
        '                       (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                       (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_C' +
        'ODE) and'
      
        '                       (ss2.SALE_SHIPMENT_NO > ssh.SALE_SHIPMENT' +
        '_NO)'
      '                   )'
      '                 ) or'
      '                 exists('
      '                   select'
      '                     1'
      '                   from'
      '                     SALE_SHIPMENTS ss2'
      '                   where'
      
        '                     (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                     (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_COD' +
        'E) and'
      '                     (ss2.SALE_SHIPMENT_NO ='
      '                       ( select'
      '                           Max(ss3.SALE_SHIPMENT_NO)'
      '                         from'
      '                           SALE_SHIPMENTS ss3'
      '                         where'
      
        '                           (ss3.SALE_OBJECT_BRANCH_CODE = ssh.SA' +
        'LE_OBJECT_BRANCH_CODE) and'
      
        '                           (ss3.SALE_OBJECT_CODE = ssh.SALE_OBJE' +
        'CT_CODE)'
      '                       )'
      '                     ) and'
      '                     (ss2.IMPORT_DATE is not null)'
      '                 )'
      '               )'
      '             )'
      '           ) then'
      '        8'
      ''
      '      when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '           (s.IMPORT_DATE < ContextDate) and'
      '           (ssh.IMPORT_DATE is null) then'
      '        7'
      ''
      '      when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '           (ssh.RETURN_PLAN_DATE < ContextDate) then'
      '        6'
      ''
      '      when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      
        '           (ContextDate between ssh.RECEIVE_PLAN_DATE and ssh.RETU' +
        'RN_PLAN_DATE) and'
      '           exists('
      '             select'
      '               1'
      '             from'
      '               SALE_SHIPMENTS ss2'
      '             where'
      
        '               (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJECT_BR' +
        'ANCH_CODE) and'
      '               (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE) and'
      '               (ss2.SALE_SHIPMENT_NO ='
      '                 ( select'
      '                     Min(ss3.SALE_SHIPMENT_NO)'
      '                   from'
      '                     SALE_SHIPMENTS ss3'
      '                   where'
      
        '                     (ss3.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                     (ss3.SALE_OBJECT_CODE = ssh.SALE_OBJECT_COD' +
        'E)'
      '                 )'
      '               ) and'
      '               (ss2.RECEIVE_DATE is not null)'
      '           ) then'
      '        5'
      ''
      '      when (ssh.SHIPMENT_DATE is not null) and'
      '           (ssh.RECEIVE_DATE is null) and'
      '           (ssh.RECEIVE_PLAN_DATE < ContextDate) then'
      '        4'
      ''
      '      when (ssh.SHIPMENT_DATE is not null) and'
      '           (ssh.RECEIVE_DATE is null) then'
      '        3'
      ''
      '      when (ssh.SHIPMENT_PLAN_DATE < ContextDate) and'
      '           (ssh.SHIPMENT_DATE is null) then'
      '        2'
      ''
      '      when (ContextDate <= ssh.SHIPMENT_PLAN_DATE) then'
      '        1'
      '    end as SALE_SHIPMENT_STATE_CODE,'
      ''
      
        '    Nvl2(ssh.INVOICE_NO, (2 - ssh.IS_PROFORM_INVOICE), 0) as INV' +
        'OICE_STATE_CODE,'
      ''
      '    ( select'
      '        Max(%EXCEPT_EVENT_DAMAGE_STATE[eed])'
      '      from'
      '        EXCEPT_EVENT_DAMAGES eed'
      '      where'
      
        '        (eed.SHIPMENT_OBJECT_BRANCH_CODE = ssh.SHIPMENT_OBJECT_B' +
        'RANCH_CODE) and'
      '        (eed.SHIPMENT_OBJECT_CODE = ssh.SHIPMENT_OBJECT_CODE)'
      '    ) as DAMAGES_STATE_CODE,'
      ''
      '    s.IS_VENDOR_TRANSPORT,'
      ''
      '    ssh.RESULT_DATE'
      ''
      '  from'
      '    SALES s,'
      '    SALE_SHIPMENTS ssh,'
      '    SALE_GROUPS sg,'
      '    COMMON_OPTIONS co'
      ''
      '  where'
      '    (co.CODE = 1) and'
      ''
      
        '    (ssh.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) an' +
        'd'
      '    (ssh.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '    (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRAN' +
        'CH_CODE) and'
      '    (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE) and'
      ''
      '    ( (:SALE_DEAL_TYPE_CODE is null) or'
      '      ( (:SALE_DEAL_TYPE_CODE = -1) and'
      '        (s.SALE_DEAL_TYPE_CODE in (%sdt_SALE, %sdt_EXPORT))'
      '      ) or'
      '      (s.SALE_DEAL_TYPE_CODE = :SALE_DEAL_TYPE_CODE)'
      '    ) and'
      ''
      '    ( (:LEASE_DATE_UNIT_CODE is null) or'
      '      (s.LEASE_DATE_UNIT_CODE = :LEASE_DATE_UNIT_CODE) ) and'
      ''
      '    ( (:RECEIVE_PLACE_OFFICE_CODE is null) or'
      
        '      (s.RECEIVE_PLACE_OFFICE_CODE = :RECEIVE_PLACE_OFFICE_CODE)' +
        ' ) and'
      ''
      '    ( case'
      '        when (s.ANNUL_EMPLOYEE_CODE is not null) then'
      '          10'
      ''
      '        when (s.FINISH_EMPLOYEE_CODE is not null) then'
      '          9'
      ''
      '        when ( ( (s.SALE_DEAL_TYPE_CODE <> %sdt_LEASE) and'
      '                 (ssh.RECEIVE_DATE is not null) ) or'
      '               ( (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '                 exists('
      '                   select'
      '                     1'
      '                   from'
      '                     SALE_SHIPMENTS ss2'
      '                   where'
      
        '                     (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                     (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_COD' +
        'E) and'
      '                     (ss2.SALE_SHIPMENT_NO ='
      '                       ( select'
      '                           Min(ss3.SALE_SHIPMENT_NO)'
      '                         from'
      '                           SALE_SHIPMENTS ss3'
      '                         where'
      
        '                           (ss3.SALE_OBJECT_BRANCH_CODE = ssh.SA' +
        'LE_OBJECT_BRANCH_CODE) and'
      
        '                           (ss3.SALE_OBJECT_CODE = ssh.SALE_OBJE' +
        'CT_CODE)'
      '                       )'
      '                     ) and'
      '                     (ss2.RECEIVE_DATE is not null)'
      '                 ) and'
      '                 ( ( (ssh.RETURN_PLAN_DATE < ContextDate) and'
      '                     exists('
      '                       select'
      '                         1'
      '                       from'
      '                         SALE_SHIPMENTS ss2'
      '                       where'
      
        '                         (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE' +
        '_OBJECT_BRANCH_CODE) and'
      
        '                         (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT' +
        '_CODE) and'
      
        '                         (ss2.SALE_SHIPMENT_NO > ssh.SALE_SHIPME' +
        'NT_NO)'
      '                     )'
      '                   ) or'
      '                   exists('
      '                     select'
      '                       1'
      '                     from'
      '                       SALE_SHIPMENTS ss2'
      '                     where'
      
        '                       (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                       (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_C' +
        'ODE) and'
      '                       (ss2.SALE_SHIPMENT_NO ='
      '                         ( select'
      '                             Max(ss3.SALE_SHIPMENT_NO)'
      '                           from'
      '                             SALE_SHIPMENTS ss3'
      '                           where'
      
        '                             (ss3.SALE_OBJECT_BRANCH_CODE = ssh.' +
        'SALE_OBJECT_BRANCH_CODE) and'
      
        '                             (ss3.SALE_OBJECT_CODE = ssh.SALE_OB' +
        'JECT_CODE)'
      '                         )'
      '                       ) and'
      '                       (ss2.IMPORT_DATE is not null)'
      '                   )'
      '                 )'
      '               )'
      '             ) then'
      '          8'
      ''
      '        when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '             (s.IMPORT_DATE < ContextDate) and'
      '             (ssh.IMPORT_DATE is null) then'
      '          7'
      ''
      '        when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '             (ssh.RETURN_PLAN_DATE < ContextDate) then'
      '          6'
      ''
      '        when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      
        '             (ContextDate between ssh.RECEIVE_PLAN_DATE and ssh.RE' +
        'TURN_PLAN_DATE) and'
      '             exists('
      '               select'
      '                 1'
      '               from'
      '                 SALE_SHIPMENTS ss2'
      '               where'
      
        '                 (ss2.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJECT_' +
        'BRANCH_CODE) and'
      
        '                 (ss2.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE) a' +
        'nd'
      '                 (ss2.SALE_SHIPMENT_NO ='
      '                   ( select'
      '                       Min(ss3.SALE_SHIPMENT_NO)'
      '                     from'
      '                       SALE_SHIPMENTS ss3'
      '                     where'
      
        '                       (ss3.SALE_OBJECT_BRANCH_CODE = ssh.SALE_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                       (ss3.SALE_OBJECT_CODE = ssh.SALE_OBJECT_C' +
        'ODE)'
      '                   )'
      '                 ) and'
      '                 (ss2.RECEIVE_DATE is not null)'
      '             ) then'
      '          5'
      ''
      '        when (ssh.SHIPMENT_DATE is not null) and'
      '             (ssh.RECEIVE_DATE is null) and'
      '             (ssh.RECEIVE_PLAN_DATE < ContextDate) then'
      '          4'
      ''
      '        when (ssh.SHIPMENT_DATE is not null) and'
      '             (ssh.RECEIVE_DATE is null) then'
      '          3'
      ''
      '        when (ssh.SHIPMENT_PLAN_DATE < ContextDate) and'
      '             (ssh.SHIPMENT_DATE is null) then'
      '          2'
      ''
      '        when (ContextDate <= ssh.SHIPMENT_PLAN_DATE) then'
      '          1'
      
        '      end between :MIN_SALE_SHIPMENT_STATE_CODE and :MAX_SALE_SH' +
        'IPMENT_STATE_CODE'
      '    ) and'
      ''
      '    %IF_IS_ACTIVE'
      '  ) ss'
      ''
      'where'
      '  (ss.SALE_BRANCH_CODE = d.DEPT_CODE) and'
      ''
      '  (ss.SALE_TYPE_CODE = st.SALE_TYPE_CODE) and'
      ''
      '  (ss.SALE_ORDER_TYPE_CODE = sot.SALE_ORDER_TYPE_CODE) and'
      ''
      '  (ss.CLIENT_COMPANY_CODE = c.COMPANY_CODE) and'
      ''
      '  (ss.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (p.MEASURE_CODE = m.MEASURE_CODE(+)) and'
      ''
      '  (p.TRANSPORT_MEASURE_CODE = mt.MEASURE_CODE(+)) and'
      ''
      
        '  (ss.SHIPMENT_OBJECT_BRANCH_CODE = tupsd.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE(+)) and'
      
        '  (ss.SHIPMENT_OBJECT_CODE = tupsd.BND_PROCESS_OBJECT_CODE(+)) a' +
        'nd'
      ''
      '  (ss.PRODUCT_CODE = cp.PRODUCT_CODE(+)) and'
      '  (ss.CLIENT_COMPANY_CODE = cp.COMPANY_CODE(+)) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = ss.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:COMMON_PRODUCT_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          DEFINITE_PRODUCTS dp2'
      '        where'
      '          (dp2.PRODUCT_CODE = ss.PRODUCT_CODE) and'
      '          (dp2.COMMON_PRODUCT_CODE = :COMMON_PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '  ( (:ALL_FILTERED_COMPANIES = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_COMPANIES tfc'
      '        where'
      '          (tfc.COMPANY_CODE = ss.CLIENT_COMPANY_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ((:BRANCH_CODE is null) or'
      '   (ss.SALE_BRANCH_CODE = :BRANCH_CODE)) and'
      ''
      '  ( (:BEGIN_SHIPMENT_DATE is null) or'
      
        '    (Decode(:LEASE_GROUP_TYPE, 1, ss.RESULT_DATE, 2, ss.IMPORT_P' +
        'LAN_DATE) >= :BEGIN_SHIPMENT_DATE) ) and'
      ''
      '  ( (:END_SHIPMENT_DATE is null) or'
      
        '    (Decode(:LEASE_GROUP_TYPE, 1, ss.RESULT_DATE) <= :END_SHIPME' +
        'NT_DATE) ) and'
      ''
      '  ( (:BEGIN_RECEIVE_DATE is null) or'
      '    (ss.RECEIVE_PLAN_DATE >= :BEGIN_RECEIVE_DATE) ) and'
      ''
      '  ( (:END_RECEIVE_DATE is null) or'
      '    (ss.RECEIVE_PLAN_DATE <= :END_RECEIVE_DATE) ) and'
      ''
      '  ( (:BEGIN_IMPORT_DATE is null) or'
      '    (ss.IMPORT_PLAN_DATE >= :BEGIN_IMPORT_DATE) ) and'
      ''
      '  ( (:END_IMPORT_DATE is null) or'
      '    (ss.IMPORT_PLAN_DATE <= :END_IMPORT_DATE) ) and'
      ''
      '  ( (:RECEIVE_DATE_BEGIN_RSV is null) or'
      
        '    (ss.RECEIVE_PLAN_DATE - Coalesce(ss.RECEIVE_DATE, ContextDate)' +
        ' >= :RECEIVE_DATE_BEGIN_RSV) ) and'
      ''
      '  ( (:RECEIVE_DATE_END_RSV is null) or'
      
        '    (ss.RECEIVE_PLAN_DATE - Coalesce(ss.RECEIVE_DATE, ContextDate)' +
        ' <= :RECEIVE_DATE_END_RSV) ) and'
      ''
      '  ( (:IMPORT_DATE_BEGIN_RSV is null) or'
      
        '    (ss.IMPORT_PLAN_DATE - Coalesce(ss.IMPORT_DATE, ContextDate) >' +
        '= :IMPORT_DATE_BEGIN_RSV) ) and'
      ''
      '  ( (:IMPORT_DATE_END_RSV is null) or'
      
        '    (ss.IMPORT_PLAN_DATE - Coalesce(ss.IMPORT_DATE, ContextDate) <' +
        '= :IMPORT_DATE_END_RSV) ) and'
      ''
      '  ( (:COUNTRY_CODE is null) or'
      '    ( (:COUNTRY_CODE = -1) and'
      '      c.COUNTRY_CODE <>'
      '      ( select'
      '          com.COUNTRY_CODE'
      '        from'
      '          COMPANIES com'
      '        where'
      '          (com.COMPANY_CODE = 0)'
      '      )'
      '    ) or'
      '    (:COUNTRY_CODE = c.COUNTRY_CODE)'
      '  )'
      ''
      'order by'
      '  d.CUSTOM_CODE,'
      '  ss.SALE_NO,'
      '  ss.SALE_SHIPMENT_NO'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[psd.PRODUCT_CODE ~ psd.ST' +
          'ORE_DEAL_BEGIN_DATE]'
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
        DataType = ftWideString
        Name = 'EXCEPT_EVENT_DAMAGE_STATE[eed]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'sdt_SALE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'sdt_EXPORT'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftWideString
        Name = 'IF_IS_ACTIVE'
        ParamType = ptInput
        Value = '(0=0)'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 288
    Top = 72
    object qryExpGroupsDetailIS_OTCH: TAbmesFloatField
      FieldName = 'IS_OTCH'
    end
    object qryExpGroupsDetailSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
    end
    object qryExpGroupsDetailIS_INVOICE_DATE_NULL: TAbmesFloatField
      FieldName = 'IS_INVOICE_DATE_NULL'
    end
    object qryExpGroupsDetailCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object qryExpGroupsDetailRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      FieldName = 'RECEIVE_PLACE_OFFICE_CODE'
    end
    object qryExpGroupsDetailSALE_ID: TAbmesWideStringField
      FieldName = 'SALE_ID'
      Size = 128
    end
    object qryExpGroupsDetailSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object qryExpGroupsDetailSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object qryExpGroupsDetailSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
    end
    object qryExpGroupsDetailSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
    end
    object qryExpGroupsDetailSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object qryExpGroupsDetailSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object qryExpGroupsDetailSALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_NO'
    end
    object qryExpGroupsDetailREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object qryExpGroupsDetailREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object qryExpGroupsDetailREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object qryExpGroupsDetailCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 50
    end
    object qryExpGroupsDetailPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object qryExpGroupsDetailPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryExpGroupsDetailPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 94
    end
    object qryExpGroupsDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryExpGroupsDetailPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryExpGroupsDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryExpGroupsDetailCLIENT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 50
    end
    object qryExpGroupsDetailMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryExpGroupsDetailPLAN_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_QUANTITY'
    end
    object qryExpGroupsDetailPLAN_VALUE_GAINED: TAbmesFloatField
      FieldName = 'PLAN_VALUE_GAINED'
    end
    object qryExpGroupsDetailPLAN_VALUE_INVESTED: TAbmesFloatField
      FieldName = 'PLAN_VALUE_INVESTED'
    end
    object qryExpGroupsDetailOTCH_VALUE_GAINED: TAbmesFloatField
      FieldName = 'OTCH_VALUE_GAINED'
    end
    object qryExpGroupsDetailOTCH_QUANTITY: TAbmesFloatField
      FieldName = 'OTCH_QUANTITY'
    end
    object qryExpGroupsDetailOTCH_VALUE_INVESTED: TAbmesFloatField
      FieldName = 'OTCH_VALUE_INVESTED'
    end
    object qryExpGroupsDetailIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
    end
    object qryExpGroupsDetailUNCOVERED_LINES: TAbmesFloatField
      FieldName = 'UNCOVERED_LINES'
    end
    object qryExpGroupsDetailTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TRANSPORT_MEASURE_ABBREV'
      Size = 5
    end
    object qryExpGroupsDetailPLAN_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_TRANSPORT_QUANTITY'
    end
    object qryExpGroupsDetailOTCH_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'OTCH_TRANSPORT_QUANTITY'
    end
    object qryExpGroupsDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qryExpGroupsDetailLEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_PLAN_DATE_UNIT_QTY'
    end
    object qryExpGroupsDetailLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
    end
    object qryExpGroupsDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryExpGroupsDetailPLAN_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_ACCOUNT_QUANTITY'
    end
    object qryExpGroupsDetailOTCH_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'OTCH_ACCOUNT_QUANTITY'
    end
    object qryExpGroupsDetailSALE_SHIPMENT_STATE_CODE: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_STATE_CODE'
    end
    object qryExpGroupsDetailINVOICE_STATE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_STATE_CODE'
    end
    object qryExpGroupsDetailRECEIVE_DATE_RSV: TAbmesFloatField
      FieldName = 'RECEIVE_DATE_RSV'
    end
    object qryExpGroupsDetailIMPORT_DATE_RSV: TAbmesFloatField
      FieldName = 'IMPORT_DATE_RSV'
    end
    object qryExpGroupsDetailRECEIVE_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_PLAN_DATE'
    end
    object qryExpGroupsDetailIMPORT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_PLAN_DATE'
    end
    object qryExpGroupsDetailRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object qryExpGroupsDetailIMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_DATE'
    end
    object qryExpGroupsDetailDAMAGES_STATE_CODE: TAbmesFloatField
      FieldName = 'DAMAGES_STATE_CODE'
    end
    object qryExpGroupsDetailSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_BRANCH_CODE'
    end
    object qryExpGroupsDetailSHIPMENT_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_CODE'
    end
    object qryExpGroupsDetailIS_VENDOR_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_VENDOR_TRANSPORT'
    end
    object qryExpGroupsDetailMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryExpGroupsDetailTRANSPORT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TRANSPORT_MEASURE_CODE'
    end
    object qryExpGroupsDetailACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryExpGroupsDetailSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object qryExpGroupsDetailCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE'
    end
  end
  object qryPrepareUncoveredPSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MAX_PSD_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'START_PERIOD_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PERIOD_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_TOWARDS_RESERVE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      
        '  StoreUtils.PrepareUncoveredPSD(:MAX_PSD_TYPE_CODE, :START_PERI' +
        'OD_DATE, :END_PERIOD_DATE, :DATE_UNIT_CODE, :IS_TOWARDS_RESERVE)' +
        ';'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 400
    Top = 144
  end
  object qryUnprepareUncoveredPSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'begin'
      '  StoreUtils.UnprepareUncoveredPSD;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 400
    Top = 192
  end
  object qryUnprepareMaterialList: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'begin'
      '  SaleUtils.UnprepareMaterialList;'
      'end;'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 536
    Top = 200
  end
  object qryPrepareMaterialList: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  SaleUtils.UnprepareMaterialList;'
      ''
      '  SaleUtils.PrepareMaterialList('
      '    :SALE_OBJECT_BRANCH_CODE,'
      '    :SALE_OBJECT_CODE,'
      '    :SALE_SHIPMENT_NO'
      '  );'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 536
    Top = 152
  end
end
