inherited dmDeliveries: TdmDeliveries
  Height = 724
  Width = 822
  object qryDeliveries: TAbmesSQLQuery
    BeforeOpen = qryDeliveriesBeforeOpen
    AfterClose = qryDeliveriesAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATUS_CODE'
        ParamType = ptInput
        Value = '5'
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
        Name = 'ALL_CHOSEN_COMPANIES'
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
        Name = 'SHIPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_VENDOR_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_VENDOR_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_TRANSPORT_FROM_VENDOR_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_TRANSPORT_FROM_VENDOR_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_TRANSPORT_FROM_VENDOR_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_TRANSPORT_FROM_VENDOR_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DELIVERY_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DELIVERY_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DELIVERY_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DELIVERY_DAYS_RSV'
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
        Name = 'HAS_SALE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_SALE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_SALE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
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
        Name = 'HAS_SALE'
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
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.DCD_OBJECT_BRANCH_CODE,'
      '  dp.DCD_OBJECT_CODE,'
      '  dp.DELIVERY_PROJECT_CODE,'
      ''
      '  ( select'
      
        '      d.CUSTOM_CODE || '#39'/'#39' || dcd.DCD_CODE || '#39'/'#39' || dp.DELIVERY' +
        '_PROJECT_CODE || '#39'/'#39' || dt.DELIVERY_TYPE_ABBREV'
      '    from'
      '      DEPTS d,'
      '      DELIVERY_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = dcd.DCD_BRANCH_CODE) and'
      '      (dt.DELIVERY_TYPE_CODE = dc.DELIVERY_TYPE_CODE)'
      '  ) as DELIVERY_IDENTIFICATION,'
      ''
      '  Nvl2(dp.ANNUL_EMPLOYEE_CODE,'
      '    7,'
      '    Nvl2(dp.FINISH_EMPLOYEE_CODE,'
      '      6,'
      '      Decode('
      '        Sign('
      '          MiscUtils.LargeZero('
      '            dp.WORK_QUANTITY -'
      '            Coalesce('
      '              ( select'
      '                  Sum(sd.QUANTITY)'
      '                from'
      '                  STORE_DEALS sd'
      '                where'
      
        '                  (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVE' +
        'RY_OBJECT_BRANCH_CODE) and'
      
        '                  (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJE' +
        'CT_CODE) and'
      '                  (sd.IN_OUT = 1) and'
      '                  (sd.STORNO_EMPLOYEE_CODE is null)'
      '              ),'
      '              0'
      '            )'
      '          )'
      '        ), 1,'
      
        '        Decode(Sign(ContextDate - Coalesce(dp.DELIVERY_DATE, dp.' +
        'RECEIVE_DATE)), 1, 2, 1),'
      '        5'
      '      )'
      '    )'
      '  ) as STATUS_CODE,'
      ''
      '  dp.VENDOR_COMPANY_CODE,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE)'
      '  ) as VENDOR_SHORT_NAME,'
      '  dp.DELIVERY_DATE,'
      '  dp.RECEIVE_DATE,'
      '  dp.RETURN_DATE,'
      ''
      '  Nvl2('
      '    dp.ANNUL_EMPLOYEE_CODE,'
      '    null,'
      '    ( Coalesce(dp.DELIVERY_DATE, dp.RECEIVE_DATE) -'
      '      Coalesce('
      '        ( select'
      '            Max(sd.STORE_DEAL_DATE)'
      '          from'
      '            STORE_DEALS sd'
      '          where'
      
        '            (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '            (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_COD' +
        'E) and'
      '            (sd.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '            ( ( select'
      '                  MiscUtils.LargeZero(psd.REMAINING_QUANTITY)'
      '                from'
      '                  PLANNED_STORE_DEALS psd'
      '                where'
      
        '                  (psd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIV' +
        'ERY_OBJECT_BRANCH_CODE) and'
      
        '                  (psd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJ' +
        'ECT_CODE) and'
      '                  (psd.BND_PROCESS_CODE = 40) and  -- final opd'
      '                  (psd.IN_OUT = 1) and'
      '                  (psd.ANNUL_EMPLOYEE_CODE is null)'
      '              ) <= 0'
      '            )'
      '        ),'
      '        dp.FINISH_DATE,'
      '        ContextDate'
      '      )'
      '    )'
      '  ) as DAYS_LEFT,'
      ''
      '  dp.WORK_QUANTITY,'
      '  ( select'
      '      Sum(sd.QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_WORK_QUANTITY,'
      ''
      '  dp.ACCOUNT_QUANTITY,'
      '  ( select'
      '      Sum(sd.ACCOUNT_QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_ACCOUNT_QUANTITY,'
      ''
      '  dp.PRODUCT_CODE,'
      '  ( select'
      '      pr.PRIORITY_NO'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = dc.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      '  ( select'
      '      pr.PRIORITY_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = dc.PRIORITY_CODE)'
      '  ) as PRIORITY_COLOR,'
      '  ( select'
      '      pr.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = dc.PRIORITY_CODE)'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
      ''
      '  p.NAME as PRODUCT_NAME,'
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC,'
      
        '  %PRODUCT_COMPANY_PRODUCT_NAMES[dp.PRODUCT_CODE~dp.VENDOR_COMPA' +
        'NY_CODE] as VENDOR_PRODUCT_NAME,'
      ''
      '  ( select'
      
        '      po.PRODUCT_ORIGIN_ABBREV || '#39'     '#39' || po.PRODUCT_ORIGIN_N' +
        'AME '
      '    from'
      '      PRODUCT_ORIGINS po'
      '    where'
      '      (po.PRODUCT_ORIGIN_CODE = p.PRODUCT_ORIGIN_CODE)'
      '  ) as PRODUCT_ORIGIN_ABBREV_AND_NAME,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as WORK_MEASURE_ABBREV,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      '  dp.PSD_STORE_CODE as DCD_PSD_STORE_CODE,'
      ''
      '  dp.TOTAL_PRICE,'
      
        '  (dp.TOTAL_PRICE * %CURRENCY_FIXING[dp.CURRENCY_CODE~dp.DELIVER' +
        'Y_DATE]) as TOTAL_PRICE_BC,'
      
        '  (dp.TOTAL_PRICE / (dp.WORK_QUANTITY * %LEASE_DATE_UNIT_QTY[dcd' +
        '~dp])) as SINGLE_PRICE,'
      
        '  (dp.TOTAL_PRICE / (dp.ACCOUNT_QUANTITY * %LEASE_DATE_UNIT_QTY[' +
        'dcd~dp])) as ACCOUNT_SINGLE_PRICE,'
      ''
      '  ( select'
      
        '      Sum(sd.TOTAL_PRICE * %CURRENCY_FIXING[sd.CURRENCY_CODE~sd.' +
        'STORE_DEAL_DATE] / %CURRENCY_FIXING[dp.CURRENCY_CODE~sd.STORE_DE' +
        'AL_DATE]) / Sum(sd.QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_SINGLE_PRICE,'
      ''
      '  ( select'
      
        '      Sum(sd.TOTAL_PRICE * %CURRENCY_FIXING[sd.CURRENCY_CODE~sd.' +
        'STORE_DEAL_DATE] / %CURRENCY_FIXING[dp.CURRENCY_CODE~sd.STORE_DE' +
        'AL_DATE]) / Sum(sd.ACCOUNT_QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_ACCOUNT_SINGLE_PRICE,'
      ''
      '  ( select'
      
        '      Sum(sd.TOTAL_PRICE * %CURRENCY_FIXING[sd.CURRENCY_CODE~sd.' +
        'STORE_DEAL_DATE] / %CURRENCY_FIXING[dp.CURRENCY_CODE~sd.STORE_DE' +
        'AL_DATE])'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_TOTAL_PRICE,'
      ''
      '  ( select'
      
        '      Sum(sd.TOTAL_PRICE * %CURRENCY_FIXING[sd.CURRENCY_CODE~sd.' +
        'STORE_DEAL_DATE])'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_TOTAL_PRICE_BC,'
      ''
      '  Decode(dp.TOTAL_PRICE, 0, To_number(null),'
      '    ( ( Coalesce('
      '          ( select'
      
        '              Sum(sd.TOTAL_PRICE * %CURRENCY_FIXING[sd.CURRENCY_' +
        'CODE~sd.STORE_DEAL_DATE]) / Sum(sd.QUANTITY)'
      '            from'
      '              STORE_DEALS sd'
      '            where'
      
        '              (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_O' +
        'BJECT_BRANCH_CODE) and'
      
        '              (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_C' +
        'ODE) and'
      '              (sd.STORNO_EMPLOYEE_CODE is null)'
      '          ),'
      '          0'
      '        ) -'
      
        '        (dp.TOTAL_PRICE * %CURRENCY_FIXING[dp.CURRENCY_CODE~dp.D' +
        'ELIVERY_DATE] / (dp.WORK_QUANTITY * %LEASE_DATE_UNIT_QTY[dcd~dp]' +
        '))'
      '      ) /'
      
        '      (dp.TOTAL_PRICE * %CURRENCY_FIXING[dp.CURRENCY_CODE~dp.DEL' +
        'IVERY_DATE] / (dp.WORK_QUANTITY * %LEASE_DATE_UNIT_QTY[dcd~dp]))'
      '    )'
      '  ) as SINGLE_PRICE_DEV_PERCENT,'
      ''
      '  Decode(dp.TOTAL_PRICE, 0, To_number(null),'
      '    ( ( Coalesce('
      '          ( select'
      
        '              Sum(sd.TOTAL_PRICE * %CURRENCY_FIXING[sd.CURRENCY_' +
        'CODE~sd.STORE_DEAL_DATE]) / Sum(sd.ACCOUNT_QUANTITY)'
      '            from'
      '              STORE_DEALS sd'
      '            where'
      
        '              (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_O' +
        'BJECT_BRANCH_CODE) and'
      
        '              (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_C' +
        'ODE) and'
      '              (sd.STORNO_EMPLOYEE_CODE is null)'
      '          ),'
      '          0'
      '        ) -'
      
        '        (dp.TOTAL_PRICE * %CURRENCY_FIXING[dp.CURRENCY_CODE~dp.D' +
        'ELIVERY_DATE] / (dp.ACCOUNT_QUANTITY * %LEASE_DATE_UNIT_QTY[dcd~' +
        'dp]))'
      '      ) /'
      
        '      (dp.TOTAL_PRICE * %CURRENCY_FIXING[dp.CURRENCY_CODE~dp.DEL' +
        'IVERY_DATE] / (dp.ACCOUNT_QUANTITY * %LEASE_DATE_UNIT_QTY[dcd~dp' +
        ']))'
      '    )'
      '  ) as ACC_SINGLE_PRICE_DEV_PERCENT,'
      ''
      '  dp.CURRENCY_CODE,'
      '  ( select'
      '      c.CURRENCY_ABBREV'
      '    from'
      '      CURRENCIES c'
      '    where'
      '      (c.CURRENCY_CODE = dp.CURRENCY_CODE)'
      '  ) as CURRENCY_ABBREV,'
      ''
      '  ( select'
      '      Max(sd.STORE_DEAL_DATE)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as MAX_STORE_DEAL_DATE,'
      ''
      '  ( select'
      '      Sum(sd.IN_OUT * sd.QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as SD_QUANTITY,'
      ''
      '  ( select'
      '      Sum(sd.IN_OUT * sd.ACCOUNT_QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as SD_ACCOUNT_QUANTITY,'
      ''
      '  dp.DOC_BRANCH_CODE,'
      '  dp.DOC_CODE,'
      '  %HAS_DOC_ITEMS[dp] as HAS_DOC,'
      ''
      
        '  Coalesce(dcd.P_LEASE_DATE_UNIT_QUANTITY, dp.LEASE_DATE_UNIT_QT' +
        'Y) as PLAN_LEASE_DATEY_UNIT_QTY,'
      '  dp.LEASE_DATE_UNIT_QTY as REAL_LEASE_DATE_UNIT_QTY,'
      ''
      '  ( select'
      '      tdu.THE_DATE_UNIT_NAME'
      '    from'
      '      THE_DATE_UNITS tdu'
      '    where'
      
        '      (tdu.THE_DATE_UNIT_CODE = Coalesce(dcd.P_LEASE_DATE_UNIT_C' +
        'ODE, dp.LEASE_DATE_UNIT_CODE))'
      '  ) as PLAN_LEASE_DATE_UNIT_NAME,'
      ''
      '  ( select'
      '      tdu.THE_DATE_UNIT_NAME'
      '    from'
      '      THE_DATE_UNITS tdu'
      '    where'
      '      (tdu.THE_DATE_UNIT_CODE = dp.LEASE_DATE_UNIT_CODE)'
      '  ) as REAL_LEASE_DATE_UNIT_NAME,'
      ''
      '  ( select'
      '      Max(%EXCEPT_EVENT_DAMAGE_STATE[eed])'
      '    from'
      '      EXCEPT_EVENT_DAMAGES eed'
      '    where'
      
        '      (eed.DELIVERY_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (eed.DELIVERY_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE)'
      '  ) as DAMAGES_STATE_CODE,'
      ''
      '  dc.DELIVERY_OBJECT_BRANCH_CODE,'
      '  dc.DELIVERY_OBJECT_CODE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      FIN_ORDERS fo'
      '    where'
      
        '      (fo.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (fo.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (fo.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as HAS_FIN_ORDER,'
      ''
      '  (dp.RECEIVE_DATE -'
      '    Coalesce('
      '     ( select'
      '         Max(sd.STORE_DEAL_DATE)'
      '       from'
      '         STORE_DEALS sd'
      '       where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) a' +
        'nd'
      '        (sd.IN_OUT = 1) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null) and'
      '        ( ( select'
      '              Sum(MiscUtils.LargeZero(psd.REMAINING_QUANTITY))'
      '            from'
      '              PLANNED_STORE_DEALS psd'
      '            where'
      
        '              (psd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_' +
        'OBJECT_BRANCH_CODE) and'
      
        '              (psd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_' +
        'CODE) and'
      '              (psd.IN_OUT = 1)'
      '          ) <= 0'
      '        )'
      '     ),'
      '     ContextDate'
      '    )'
      '  ) as RECEIVE_DATE_RSV,'
      ''
      '  (dp.RETURN_DATE -'
      '    Coalesce('
      '     ( select'
      '         Max(sd.STORE_DEAL_DATE)'
      '       from'
      '         STORE_DEALS sd'
      '       where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) a' +
        'nd'
      '        (sd.IN_OUT = -1) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null) and'
      '        ( ( select'
      '              Sum(MiscUtils.LargeZero(psd.REMAINING_QUANTITY))'
      '            from'
      '              PLANNED_STORE_DEALS psd'
      '            where'
      
        '              (psd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_' +
        'OBJECT_BRANCH_CODE) and'
      
        '              (psd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_' +
        'CODE) and'
      '              (psd.IN_OUT = -1)'
      '          ) <= 0'
      '        )'
      '     ),'
      '     ContextDate'
      '    )'
      '  ) as RETURN_DATE_RSV,'
      ''
      '  dc.INVOICE_NO,'
      '  dc.INVOICE_DATE'
      ''
      'from'
      '  DELIVERY_PROJECTS dp,'
      '  DEFICIT_COVER_DECISIONS dcd,'
      '  DELIVERY_CONTRACTS dc,'
      '  PRODUCTS p'
      ''
      'where'
      '  (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      '  (dp.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      '  (dp.DELIVERY_PROJECT_CODE = dc.DELIVERY_PROJECT_CODE) and'
      '  (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '  (dp.DELIVERY_DECISION_CODE is not null) and'
      ''
      '  (:PROD_ORDER_BASE_TYPE_CODE ='
      '    ( select'
      '        bdt.PROD_ORDER_BASE_TYPE_CODE'
      '      from'
      '        BORDER_DEAL_TYPES bdt'
      '      where'
      
        '        (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE' +
        ')'
      '    )'
      '  ) and'
      ''
      '  (:DELIVERY_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE) and'
      ''
      '  ( Nvl2(dp.ANNUL_EMPLOYEE_CODE,'
      '      7,'
      '      Nvl2(dp.FINISH_EMPLOYEE_CODE,'
      '        6,'
      '        Decode('
      '          Sign('
      '            MiscUtils.LargeZero('
      '              dp.WORK_QUANTITY -'
      '              Coalesce('
      '                ( select'
      '                    Sum(sd.QUANTITY)'
      '                  from'
      '                    STORE_DEALS sd'
      '                  where'
      
        '                    (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELI' +
        'VERY_OBJECT_BRANCH_CODE) and'
      
        '                    (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OB' +
        'JECT_CODE) and'
      '                    (sd.IN_OUT = 1) and'
      '                    (sd.STORNO_EMPLOYEE_CODE is null)'
      '                ),'
      '                0'
      '              )'
      '            )'
      '          ), 1,'
      
        '          Decode(Sign(ContextDate - Coalesce(dp.DELIVERY_DATE, d' +
        'p.RECEIVE_DATE)), 1, 2, 1),'
      '          5'
      '        )'
      '      )'
      '    )'
      '    between'
      '    :MIN_STATUS_CODE and :MAX_STATUS_CODE'
      '  ) and'
      ''
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        TEMP_FILTERED_PRODUCTS tfp'
      '      where'
      '        (tfp.PRODUCT_CODE = dp.PRODUCT_CODE)'
      '      )'
      '  ) and'
      ''
      '  ( (:COMMON_PRODUCT_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          DEFINITE_PRODUCTS dp2'
      '        where'
      '          (dp2.PRODUCT_CODE = dp.PRODUCT_CODE) and'
      '          (dp2.COMMON_PRODUCT_CODE = :COMMON_PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:DCD_BRANCH_CODE is null) or'
      '    (dcd.DCD_BRANCH_CODE = :DCD_BRANCH_CODE)'
      '  ) and'
      ''
      '  ( (:DCD_CODE is null) or'
      '    (dcd.DCD_CODE = :DCD_CODE)'
      '  ) and'
      ''
      '  ( (:DELIVERY_PROJECT_CODE is null) or'
      '    (dp.DELIVERY_PROJECT_CODE = :DELIVERY_PROJECT_CODE) ) and'
      ''
      '  ( (:ALL_CHOSEN_COMPANIES = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_COMPANIES tfc'
      '        where'
      '          (tfc.COMPANY_CODE = dp.VENDOR_COMPANY_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:COUNTRY_CODE is null) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        COMPANIES c'
      '      where'
      '        (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
      '        (c.COUNTRY_CODE = :COUNTRY_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:SHIPMENT_TYPE_CODE is null) or'
      '    (dp.SHIPMENT_TYPE_CODE = :SHIPMENT_TYPE_CODE) ) and'
      ''
      '  ( (:DELIVERY_TYPE_CODE is null) or'
      '    (dc.DELIVERY_TYPE_CODE = :DELIVERY_TYPE_CODE) ) and'
      ''
      '  ( (:DELIVERY_VENDOR_OFFICE_CODE is null) or'
      
        '    (dp.DELIVERY_VENDOR_OFFICE_CODE = :DELIVERY_VENDOR_OFFICE_CO' +
        'DE)'
      '  ) and'
      ''
      '  ( (:IS_TRANSPORT_FROM_VENDOR_CODE is null) or'
      '    (:IS_TRANSPORT_FROM_VENDOR_CODE = 0) or'
      '    ( (:IS_TRANSPORT_FROM_VENDOR_CODE = 1) and'
      '      (dp.IS_TRANSPORT_FROM_VENDOR = 0) ) or'
      '    ( (:IS_TRANSPORT_FROM_VENDOR_CODE = 2) and'
      '      (dp.IS_TRANSPORT_FROM_VENDOR = 1) )'
      '  ) and'
      ''
      '  ( (:BEGIN_DELIVERY_DATE is null) or'
      
        '    (Coalesce(dp.DELIVERY_DATE, dp.RETURN_DATE) >= :BEGIN_DELIVE' +
        'RY_DATE)'
      '  ) and'
      ''
      '  ( (:END_DELIVERY_DATE is null) or'
      
        '    (Coalesce(dp.DELIVERY_DATE, dp.RECEIVE_DATE) <= :END_DELIVER' +
        'Y_DATE)'
      '  ) and'
      ''
      '  ( (:BEGIN_DELIVERY_DAYS_RSV is null) or'
      
        '    ( (Coalesce(dp.DELIVERY_DATE, dp.RETURN_DATE) - ContextDate)' +
        ' >= :BEGIN_DELIVERY_DAYS_RSV) ) and'
      ''
      '  ( (:END_DELIVERY_DAYS_RSV is null) or'
      
        '    ( (Coalesce(dp.DELIVERY_DATE, dp.RECEIVE_DATE) - ContextDate' +
        ') <= :END_DELIVERY_DAYS_RSV) ) and'
      ''
      '  ( (:LEASE_DATE_UNIT_CODE is null) or'
      
        '    (Coalesce(dcd.P_LEASE_DATE_UNIT_CODE, dp.LEASE_DATE_UNIT_COD' +
        'E) = :LEASE_DATE_UNIT_CODE)'
      '  ) and'
      ''
      '  ( (:HAS_SALE is null) or'
      '    (:HAS_SALE = 0) or'
      '    ( (:HAS_SALE = 1) and'
      '      (dp.SALE_OBJECT_BRANCH_CODE is not null) and'
      '      (exists('
      '        select'
      '          1'
      '        from'
      '          SALES s'
      '        where'
      
        '          (s.SALE_OBJECT_BRANCH_CODE = dp.SALE_OBJECT_BRANCH_COD' +
        'E) and'
      '          (s.SALE_OBJECT_CODE = dp.SALE_OBJECT_CODE) and'
      '          ( (:SALE_BRANCH_CODE is null) or'
      '            (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) ) and'
      '          ( (:SALE_NO is null) or'
      '            (s.SALE_NO = :SALE_NO) )'
      '        )'
      '      )'
      '    ) or'
      '    ( (:HAS_SALE = 2) and'
      '      (dp.SALE_OBJECT_BRANCH_CODE is null)'
      '    )'
      '  ) and'
      ''
      '  ( (:DAMAGES_STATE_CODE is null) or'
      '    ( (:DAMAGES_STATE_CODE = -1) and'
      '      ( ( select'
      '            Max(%EXCEPT_EVENT_DAMAGE_STATE[eed])'
      '          from'
      '            EXCEPT_EVENT_DAMAGES eed'
      '          where'
      
        '            (eed.DELIVERY_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJEC' +
        'T_BRANCH_CODE) and'
      '            (eed.DELIVERY_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE)'
      '        ) is null'
      '      )'
      '    ) or'
      '    ( ( select'
      '          Max(%EXCEPT_EVENT_DAMAGE_STATE[eed])'
      '        from'
      '          EXCEPT_EVENT_DAMAGES eed'
      '        where'
      
        '          (eed.DELIVERY_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_' +
        'BRANCH_CODE) and'
      '          (eed.DELIVERY_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE)'
      '      ) = :DAMAGES_STATE_CODE'
      '    )'
      '  ) and'
      ''
      '  ( ( (:BUDGET_ORDER_BRANCH_CODE is null) and'
      '      (:BUDGET_ORDER_CODE is null) and'
      '      (:BUDGET_ORDER_ITEM_CODE is null) and'
      '      (:BOI_ORDER_CODE is null)'
      '    ) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          BOI_ORDERS boio'
      '        where'
      
        '          (boio.DELIVERY_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (boio.DELIVERY_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) ' +
        'and'
      ''
      '          ( (:BUDGET_ORDER_BRANCH_CODE is null) or'
      
        '            (boio.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANC' +
        'H_CODE)'
      '          ) and'
      ''
      '          ( (:BUDGET_ORDER_CODE is null) or'
      '            (boio.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE)'
      '          ) and'
      ''
      '          ( (:BUDGET_ORDER_ITEM_CODE is null) or'
      
        '            (boio.BUDGET_ORDER_ITEM_CODE = :BUDGET_ORDER_ITEM_CO' +
        'DE)'
      '          ) and'
      ''
      '          ( (:BOI_ORDER_CODE is null) or'
      '            (boio.BOI_ORDER_CODE = :BOI_ORDER_CODE)'
      '          )'
      '      )'
      '    )'
      '  )'
      ''
      ''
      'order by'
      '  dcd.DCD_CODE,'
      '  dp.DELIVERY_PROJECT_CODE')
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
        Name = 
          'PRODUCT_COMPANY_PRODUCT_NAMES[dp.PRODUCT_CODE~dp.VENDOR_COMPANY_' +
          'CODE]'
        ParamType = ptInput
        Value = #39' '#39
      end
      item
        DataType = ftWideString
        Name = 'CURRENCY_FIXING[dp.CURRENCY_CODE~dp.DELIVERY_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'LEASE_DATE_UNIT_QTY[dcd~dp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CURRENCY_FIXING[sd.CURRENCY_CODE~sd.STORE_DEAL_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CURRENCY_FIXING[dp.CURRENCY_CODE~sd.STORE_DEAL_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[dp]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENT_DAMAGE_STATE[eed]'
        ParamType = ptInput
        Value = '1'
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
    TableName = 'DELIVERY_PROJECTS_FOR_EDIT'
    Left = 648
    Top = 56
    object qryDeliveriesDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object qryDeliveriesDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object qryDeliveriesDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object qryDeliveriesDELIVERY_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'DELIVERY_IDENTIFICATION'
      Size = 122
    end
    object qryDeliveriesSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
    end
    object qryDeliveriesVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object qryDeliveriesVENDOR_SHORT_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_SHORT_NAME'
    end
    object qryDeliveriesDELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'DELIVERY_DATE'
    end
    object qryDeliveriesDAYS_LEFT: TAbmesFloatField
      FieldName = 'DAYS_LEFT'
    end
    object qryDeliveriesWORK_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_QUANTITY'
    end
    object qryDeliveriesACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qryDeliveriesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryDeliveriesPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryDeliveriesPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryDeliveriesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qryDeliveriesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryDeliveriesPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryDeliveriesPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryDeliveriesPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
    end
    object qryDeliveriesPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_ABBREV_AND_NAME'
      Size = 205
    end
    object qryDeliveriesWORK_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'WORK_MEASURE_ABBREV'
      Size = 5
    end
    object qryDeliveriesACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryDeliveriesDCD_PSD_STORE_CODE: TAbmesFloatField
      FieldName = 'DCD_PSD_STORE_CODE'
    end
    object qryDeliveriesTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryDeliveriesSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object qryDeliveriesACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
    end
    object qryDeliveriesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryDeliveriesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object qryDeliveriesMAX_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAX_STORE_DEAL_DATE'
    end
    object qryDeliveriesSD_QUANTITY: TAbmesFloatField
      FieldName = 'SD_QUANTITY'
    end
    object qryDeliveriesSD_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'SD_ACCOUNT_QUANTITY'
    end
    object qryDeliveriesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDeliveriesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDeliveriesHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryDeliveriesSINGLE_PRICE_DEV_PERCENT: TAbmesFloatField
      FieldName = 'SINGLE_PRICE_DEV_PERCENT'
    end
    object qryDeliveriesACC_SINGLE_PRICE_DEV_PERCENT: TAbmesFloatField
      FieldName = 'ACC_SINGLE_PRICE_DEV_PERCENT'
    end
    object qryDeliveriesVENDOR_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_PRODUCT_NAME'
      Size = 50
    end
    object qryDeliveriesREAL_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_WORK_QUANTITY'
    end
    object qryDeliveriesREAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_QUANTITY'
    end
    object qryDeliveriesPLAN_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'PLAN_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qryDeliveriesREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qryDeliveriesDAMAGES_STATE_CODE: TAbmesFloatField
      FieldName = 'DAMAGES_STATE_CODE'
    end
    object qryDeliveriesDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
    end
    object qryDeliveriesDELIVERY_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
    object qryDeliveriesTOTAL_PRICE_BC: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_BC'
    end
    object qryDeliveriesHAS_FIN_ORDER: TAbmesFloatField
      FieldName = 'HAS_FIN_ORDER'
    end
    object qryDeliveriesRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object qryDeliveriesRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
    end
    object qryDeliveriesRECEIVE_DATE_RSV: TAbmesFloatField
      FieldName = 'RECEIVE_DATE_RSV'
    end
    object qryDeliveriesRETURN_DATE_RSV: TAbmesFloatField
      FieldName = 'RETURN_DATE_RSV'
    end
    object qryDeliveriesPLAN_LEASE_DATEY_UNIT_QTY: TAbmesFloatField
      FieldName = 'PLAN_LEASE_DATEY_UNIT_QTY'
    end
    object qryDeliveriesREAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'REAL_LEASE_DATE_UNIT_QTY'
    end
    object qryDeliveriesREAL_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'REAL_SINGLE_PRICE'
    end
    object qryDeliveriesREAL_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_SINGLE_PRICE'
    end
    object qryDeliveriesREAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE'
    end
    object qryDeliveriesINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object qryDeliveriesINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object qryDeliveriesREAL_TOTAL_PRICE_BC: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE_BC'
    end
  end
  object qryDeficitCoverDecision: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dcd.DCD_OBJECT_BRANCH_CODE,'
      '  dcd.DCD_OBJECT_CODE,'
      '  dcd.DCD_BRANCH_CODE,'
      '  dcd.DCD_CODE,'
      '  dcd.DELIVERY_DEAL_TYPE_CODE,'
      '  ( select'
      '      bdt.BORDER_REL_TYPE_CODE'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE)'
      '  ) as BORDER_REL_TYPE_CODE,'
      '  ( select'
      '      bdt.PROD_ORDER_BASE_TYPE_CODE'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE)'
      '  ) as PROD_ORDER_BASE_TYPE_CODE,'
      '  dcd.ASPECT_TYPE_CODE,'
      '  dcd.STREAM_TYPE_CODE,'
      '  ( select'
      '      st.STREAM_TYPE_ABBREV'
      '    from'
      '      STREAM_TYPES st'
      '    where'
      '      (dcd.STREAM_TYPE_CODE = st.STREAM_TYPE_CODE)'
      '  ) as STREAM_TYPE_ABBREV,'
      '  dcd.IS_DONE,'
      '  dcd.IS_CANCELED,'
      '  dcd.VPD_EMPLOYEE_CODE,'
      '  dcd.CREATE_EMPLOYEE_CODE,'
      '  dcd.CREATE_DATE,'
      '  dcd.CREATE_TIME,'
      '  dcd.CHANGE_EMPLOYEE_CODE,'
      '  dcd.CHANGE_DATE,'
      '  dcd.CHANGE_TIME,'
      '  d.CUSTOM_CODE as DEPT_NO,'
      '  d.NAME as DEPT_NAME,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.ACCOUNT_MEASURE_COEF as PRODUCT_ACCOUNT_MEASURE_COEF,'
      '  p.MEASURE_CODE as WORK_MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      '  p.CUSTOM_CODE as PRODUCT_CUSTOM_CODE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DELIVERY_PROJECTS dp'
      '    where'
      
        '      (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE)'
      '  ) as DELIVERY_COUNT,'
      ''
      '  dcd.DOC_BRANCH_CODE,'
      '  dcd.DOC_CODE,'
      '  %HAS_DOC_ITEMS[dcd] as HAS_DOC,'
      ''
      '  ( select'
      '      bdt.BORDER_DEAL_TYPE_ABBREV'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE)'
      '  ) as DELIVERY_DEAL_TYPE_ABBREV,'
      ''
      '  ( select'
      '      bdt.OBTAINMENT_TYPE_CODE'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE)'
      '  ) as OBTAINMENT_TYPE_CODE,'
      ''
      '  ( select'
      '      dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = dcd.DCD_BRANCH_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DCD_BRANCH_ID,'
      ''
      '  ( select'
      '      aty.ASPECT_TYPE_ABBREV'
      '    from'
      '      ASPECT_TYPES aty'
      '    where'
      '      (aty.ASPECT_TYPE_CODE = dcd.ASPECT_TYPE_CODE)'
      '  ) as ASPECT_TYPE_ABBREV,'
      ''
      '  ( select'
      '      Sum(psd.QUANTITY)'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      
        '      (dcd.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dcd.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_B' +
        'RANCH_CODE) and'
      
        '      (dc.DELIVERY_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) an' +
        'd'
      '      (psd.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as TOTAL_WORK_QUANTITY,'
      ''
      '  ( select'
      '      Sum(psd.ACCOUNT_QUANTITY)'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      
        '      (dcd.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dcd.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_B' +
        'RANCH_CODE) and'
      
        '      (dc.DELIVERY_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) an' +
        'd'
      '      (psd.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as TOTAL_ACCOUNT_QUANTITY,'
      ''
      '  ( select'
      '      Sum(dp.WORK_QUANTITY)'
      '    from'
      '      DELIVERY_PROJECTS dp'
      '    where'
      
        '      (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      '      (dp.DELIVERY_DECISION_CODE is not null)'
      '  ) as DP_DECISION_QUANTITY,'
      ''
      '  ( select'
      '      Sum(dp.WORK_QUANTITY)'
      '    from'
      '      DELIVERY_PROJECTS dp,'
      '      DELIVERY_CONTRACTS dc'
      '    where'
      
        '      (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE)'
      '  ) as DC_QUANTITY,'
      ''
      '  ( select'
      '      Sum(sd.QUANTITY)'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      STORE_DEALS sd'
      '    where'
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dc.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as DELIVERY_SD_QUANTITY,'
      ''
      '  dcd.DCD_MODE_CODE,'
      '  dcd.PLAN_DECISION_DATE,'
      ''
      '  dcd.P_PRODUCT_CODE,'
      '  dcd.P_DEFICIT_COVER_DATE,'
      '  dcd.P_WORK_QUANTITY,'
      '  dcd.P_ACCOUNT_QUANTITY,'
      '  dcd.P_PSD_STORE_CODE,'
      '  dcd.P_LEASE_DATE_UNIT_QUANTITY,'
      '  dcd.P_LEASE_DATE_UNIT_CODE,'
      '  dcd.P_RECEIVE_DATE,'
      '  dcd.P_RETURN_DATE,'
      ''
      '  dcd.V_VENDOR_COMPANY_CODE,'
      '  dcd.V_MEDIATOR_COMPANY_CODE,'
      '  dcd.V_START_DATE,'
      '  dcd.V_REGISTER_DATE,'
      '  dcd.V_PLAN_POSITION_DATE,'
      '  dcd.V_REAL_POSITION_DATE,'
      '  dcd.V_PLAN_VENDOR_POSITION_DATE,'
      '  dcd.V_REAL_VENDOR_POSITION_DATE,'
      ''
      '  dcd.PRODUCT_CLASS_CODE,'
      ''
      '  %DCD_STATUS_CODE[dcd] as DCD_STATUS_CODE'
      ''
      'from'
      '  DEFICIT_COVER_DECISIONS dcd,'
      '  DEPTS d,'
      '  PRODUCTS p'
      ''
      'where'
      '  (dcd.DCD_BRANCH_CODE = d.DEPT_CODE) and'
      '  (dcd.P_PRODUCT_CODE = p.PRODUCT_CODE(+)) and'
      '  (dcd.DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE) and'
      '  (dcd.DCD_OBJECT_CODE = :DCD_OBJECT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[dcd]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'DCD_STATUS_CODE[dcd]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DCD_FOR_EDIT'
    AfterProviderStartTransaction = qryDeficitCoverDecisionAfterProviderStartTransaction
    Left = 48
    Top = 168
    object qryDeficitCoverDecisionDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDeficitCoverDecisionDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDeficitCoverDecisionIS_DONE: TAbmesFloatField
      FieldName = 'IS_DONE'
    end
    object qryDeficitCoverDecisionIS_CANCELED: TAbmesFloatField
      FieldName = 'IS_CANCELED'
    end
    object qryDeficitCoverDecisionVPD_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'VPD_EMPLOYEE_CODE'
    end
    object qryDeficitCoverDecisionCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryDeficitCoverDecisionCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryDeficitCoverDecisionCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryDeficitCoverDecisionCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryDeficitCoverDecisionCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryDeficitCoverDecisionCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryDeficitCoverDecisionDEPT_NO: TAbmesFloatField
      FieldName = 'DEPT_NO'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryDeficitCoverDecisionPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryDeficitCoverDecisionPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionWORK_MEASURE_CODE: TAbmesFloatField
      FieldName = 'WORK_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionPRODUCT_CUSTOM_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CUSTOM_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
    end
    object qryDeficitCoverDecisionDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
    object qryDeficitCoverDecisionDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDeficitCoverDecisionDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDeficitCoverDecisionASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object qryDeficitCoverDecisionDELIVERY_COUNT: TAbmesFloatField
      FieldName = 'DELIVERY_COUNT'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
    end
    object qryDeficitCoverDecisionHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DEAL_TYPE_ABBREV'
      ProviderFlags = []
      Size = 100
    end
    object qryDeficitCoverDecisionOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionDCD_BRANCH_ID: TAbmesWideStringField
      FieldName = 'DCD_BRANCH_ID'
      ProviderFlags = []
      Size = 45
    end
    object qryDeficitCoverDecisionASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      ProviderFlags = []
      Size = 100
    end
    object qryDeficitCoverDecisionTOTAL_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_WORK_QUANTITY'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionDP_DECISION_QUANTITY: TAbmesFloatField
      FieldName = 'DP_DECISION_QUANTITY'
    end
    object qryDeficitCoverDecisionDC_QUANTITY: TAbmesFloatField
      FieldName = 'DC_QUANTITY'
    end
    object qryDeficitCoverDecisionDELIVERY_SD_QUANTITY: TAbmesFloatField
      FieldName = 'DELIVERY_SD_QUANTITY'
    end
    object qryDeficitCoverDecisionMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryDeficitCoverDecisionACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryDeficitCoverDecisionSTREAM_TYPE_CODE: TAbmesFloatField
      FieldName = 'STREAM_TYPE_CODE'
    end
    object qryDeficitCoverDecisionSTREAM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STREAM_TYPE_ABBREV'
      ProviderFlags = []
      Size = 100
    end
    object qryDeficitCoverDecisionBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionDCD_MODE_CODE: TAbmesFloatField
      FieldName = 'DCD_MODE_CODE'
      Required = True
    end
    object qryDeficitCoverDecisionP_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'P_PRODUCT_CODE'
    end
    object qryDeficitCoverDecisionP_DEFICIT_COVER_DATE: TAbmesSQLTimeStampField
      FieldName = 'P_DEFICIT_COVER_DATE'
    end
    object qryDeficitCoverDecisionP_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'P_WORK_QUANTITY'
    end
    object qryDeficitCoverDecisionP_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'P_ACCOUNT_QUANTITY'
    end
    object qryDeficitCoverDecisionP_PSD_STORE_CODE: TAbmesFloatField
      FieldName = 'P_PSD_STORE_CODE'
    end
    object qryDeficitCoverDecisionP_LEASE_DATE_UNIT_QUANTITY: TAbmesFloatField
      FieldName = 'P_LEASE_DATE_UNIT_QUANTITY'
    end
    object qryDeficitCoverDecisionP_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'P_LEASE_DATE_UNIT_CODE'
    end
    object qryDeficitCoverDecisionP_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'P_RECEIVE_DATE'
    end
    object qryDeficitCoverDecisionP_RETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'P_RETURN_DATE'
    end
    object qryDeficitCoverDecisionV_VENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'V_VENDOR_COMPANY_CODE'
    end
    object qryDeficitCoverDecisionV_MEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'V_MEDIATOR_COMPANY_CODE'
    end
    object qryDeficitCoverDecisionV_START_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_START_DATE'
    end
    object qryDeficitCoverDecisionV_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_REGISTER_DATE'
    end
    object qryDeficitCoverDecisionV_PLAN_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_PLAN_POSITION_DATE'
    end
    object qryDeficitCoverDecisionV_REAL_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_REAL_POSITION_DATE'
    end
    object qryDeficitCoverDecisionV_PLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_PLAN_VENDOR_POSITION_DATE'
    end
    object qryDeficitCoverDecisionV_REAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_REAL_VENDOR_POSITION_DATE'
    end
    object qryDeficitCoverDecisionPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
      Required = True
    end
    object qryDeficitCoverDecisionPLAN_DECISION_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_DECISION_DATE'
      Required = True
    end
    object qryDeficitCoverDecisionDCD_STATUS_CODE: TAbmesFloatField
      FieldName = 'DCD_STATUS_CODE'
      ProviderFlags = []
    end
  end
  object qryDeliveryTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  DELIVERY_TYPE_CODE,'
      '  DELIVERY_TYPE_ABBREV,'
      '  DESCRIPTION'
      'from'
      '  DELIVERY_TYPES'
      'order by'
      '  DELIVERY_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 736
    Top = 56
    object qryDeliveryTypesDELIVERY_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDeliveryTypesDELIVERY_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_TYPE_ABBREV'
      Size = 5
    end
    object qryDeliveryTypesDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
  end
  object qryDelivery: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.DCD_OBJECT_BRANCH_CODE,'
      '  dp.DCD_OBJECT_CODE,'
      '  dp.DELIVERY_PROJECT_CODE,'
      ''
      '  dcd.DCD_BRANCH_CODE,'
      '  dcd.DCD_CODE,'
      '  dcd.DELIVERY_DEAL_TYPE_CODE,'
      '  dcd.ASPECT_TYPE_CODE,'
      ''
      '  dc.DELIVERY_OBJECT_BRANCH_CODE,'
      '  dc.DELIVERY_OBJECT_CODE,'
      ''
      '  dp.IS_ACTIVATED_BY_VENDOR,'
      '  dp.VENDOR_COMPANY_CODE,'
      '  dp.MEDIATOR_COMPANY_CODE,'
      '  dp.START_DATE,'
      '  dp.REGISTER_DATE,'
      '  dp.PLAN_POSITION_DATE,'
      '  dp.REAL_POSITION_DATE,'
      '  dp.PLAN_VENDOR_POSITION_DATE,'
      '  dp.REAL_VENDOR_POSITION_DATE,'
      '  dp.REAL_DECISION_DATE,'
      '  dp.MAX_BASE_SINGLE_PRICE,'
      
        '  (dp.MAX_BASE_SINGLE_PRICE / NullIf(p.ACCOUNT_MEASURE_COEF, 0))' +
        ' as ACCOUNT_MAX_BASE_SINGLE_PRICE,'
      '  dp.DELIVERY_DECISION_CODE,'
      '  dp.DELIVERY_DATE,'
      '  dp.WORK_QUANTITY,'
      '  dp.ACCOUNT_QUANTITY,'
      '  dp.CURRENCY_CODE,'
      '  dp.TOTAL_PRICE,'
      
        '  (dp.TOTAL_PRICE / (dp.WORK_QUANTITY * %LEASE_DATE_UNIT_QTY[dcd' +
        '~dp])) as SINGLE_PRICE,'
      
        '  (dp.TOTAL_PRICE / (dp.ACCOUNT_QUANTITY * %LEASE_DATE_UNIT_QTY[' +
        'dcd~dp])) as ACCOUNT_SINGLE_PRICE,'
      '  dp.DECISION_EMPLOYEE_CODE,'
      '  dp.DIALOG_EMPLOYEE_CODE,'
      '  dp.IS_TRANSPORT_FROM_VENDOR,'
      '  dp.DELIVERY_VENDOR_COMPANY_CODE,'
      '  dp.DELIVERY_VENDOR_OFFICE_CODE,'
      '  dp.SHIPMENT_DAYS,'
      '  dp.CUSTOMHOUSE_CODE,'
      '  dp.SHIPMENT_TYPE_CODE,'
      '  dc.DELIVERY_TYPE_CODE,'
      '  dc.PRIORITY_CODE,'
      '  dp.CREATE_EMPLOYEE_CODE,'
      '  dp.CREATE_DATE,'
      '  dp.CREATE_TIME,'
      '  dp.CHANGE_EMPLOYEE_CODE,'
      '  dp.CHANGE_DATE,'
      '  dp.CHANGE_TIME,'
      '  dp.DOC_BRANCH_CODE,'
      '  dp.DOC_CODE,'
      
        '  MiscUtils.HasDocItems(dp.DOC_BRANCH_CODE, dp.DOC_CODE) as HAS_' +
        'DOC,'
      '  p.PRODUCT_CLASS_CODE,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  dp.FINISH_EMPLOYEE_CODE,'
      '  dp.FINISH_DATE,'
      '  dp.FINISH_TIME,'
      '  dp.ANNUL_EMPLOYEE_CODE,'
      '  dp.ANNUL_DATE,'
      '  dp.ANNUL_TIME,'
      ''
      '  ( select'
      '      Sum(sd.QUANTITY)'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      STORE_DEALS sd'
      '    where'
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE) and'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as SD_QUANTITY,'
      ''
      '  dp.OUR_OFFER_QUANTITY,'
      '  dp.OUR_OFFER_ACCOUNT_QUANTITY,'
      '  dp.OUR_OFFER_SINGLE_PRICE,'
      
        '  (dp.OUR_OFFER_SINGLE_PRICE / NullIf(p.ACCOUNT_MEASURE_COEF, 0)' +
        ') as ACC_OUR_OFFER_SINGLE_PRICE, '
      '  dp.OUR_OFFER_CURRENCY_CODE,'
      '  dp.VENDOR_OFFER_QUANTITY,'
      '  dp.VENDOR_OFFER_ACCOUNT_QUANTITY,'
      '  dp.VENDOR_OFFER_SINGLE_PRICE,'
      
        '  (dp.VENDOR_OFFER_SINGLE_PRICE / NullIf(p.ACCOUNT_MEASURE_COEF,' +
        ' 0)) as ACC_VENDOR_OFFER_SINGLE_PRICE,'
      '  dp.VENDOR_OFFER_CURRENCY_CODE,'
      '  dp.PROGNOSIS_BEGIN_DATE,'
      '  dp.PROGNOSIS_END_DATE,'
      '  dp.OUR_OFFER_LEASE_DATE_UNIT_QTY,'
      '  dp.V_OFFER_LEASE_DATE_UNIT_QTY,'
      '  dp.LEASE_DATE_UNIT_QTY,'
      '  dp.OUR_OFFER_LEASE_DATE_UNIT_CODE,'
      '  dp.V_OFFER_LEASE_DATE_UNIT_CODE,'
      '  dp.LEASE_DATE_UNIT_CODE,'
      '  dp.RECEIVE_DATE,'
      '  dp.RETURN_DATE,'
      '  dp.PRODUCT_CODE,'
      '  dp.PSD_STORE_CODE,'
      '  dp.DEFICIT_COVER_DATE,'
      ''
      '  dp.SALE_OBJECT_BRANCH_CODE,'
      '  dp.SALE_OBJECT_CODE,'
      '  ( select'
      '      s.SALE_BRANCH_CODE'
      '    from'
      '      SALES s'
      '    where'
      
        '      (s.SALE_OBJECT_BRANCH_CODE = dp.SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (s.SALE_OBJECT_CODE = dp.SALE_OBJECT_CODE)'
      '  ) as SALE_BRANCH_CODE,'
      '  ( select'
      '      s.SALE_NO'
      '    from'
      '      SALES s'
      '    where'
      
        '      (s.SALE_OBJECT_BRANCH_CODE = dp.SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (s.SALE_OBJECT_CODE = dp.SALE_OBJECT_CODE)'
      '  ) as SALE_NO,'
      '  ( select'
      '      s.SALE_ORDER_TYPE_CODE'
      '    from'
      '      SALES s'
      '    where'
      
        '      (s.SALE_OBJECT_BRANCH_CODE = dp.SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (s.SALE_OBJECT_CODE = dp.SALE_OBJECT_CODE)'
      '  ) as SALE_ORDER_TYPE_CODE,'
      '  ( select'
      '      s.REQUEST_BRANCH_CODE'
      '    from'
      '      SALES s'
      '    where'
      
        '      (s.SALE_OBJECT_BRANCH_CODE = dp.SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (s.SALE_OBJECT_CODE = dp.SALE_OBJECT_CODE)'
      '  ) as REQUEST_BRANCH_CODE,'
      '  ( select'
      '      s.REQUEST_NO'
      '    from'
      '      SALES s'
      '    where'
      
        '      (s.SALE_OBJECT_BRANCH_CODE = dp.SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (s.SALE_OBJECT_CODE = dp.SALE_OBJECT_CODE)'
      '  ) as REQUEST_NO,'
      ''
      '  dc.INVOICE_NO,'
      '  dc.INVOICE_ABBREV,'
      '  dc.IS_PROFORM_INVOICE,'
      '  dc.INVOICE_DATE,'
      ''
      '  fo.FIN_ORDER_CODE,'
      '  fo.FIN_ORDER_BRANCH_CODE as FO_BRANCH_CODE,'
      '  fo.EXEC_DEPT_CODE as FO_EXEC_DEPT_CODE,'
      '  fo.PRIORITY_CODE as FO_PRIORITY_CODE,'
      
        '  fo.WORK_FINANCIAL_PRODUCT_CODE as FO_WORK_FINANCIAL_PRODUCT_CO' +
        'DE,'
      '  fo.PARTNER_CODE as FO_PARTNER_CODE,'
      '  %FIN_ORDER_STATUS[fo] as FO_STATUS_CODE,'
      '  To_Number(null) as SPEC_FIN_MODEL_CODE,'
      '  To_Number(null) as FO_CLOSE_REQUESTED,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DELIVERY_PROJECTS dp2'
      '    where'
      
        '      (dp2.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) ' +
        'and'
      '      (dp2.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      '      (dp2.ANNUL_EMPLOYEE_CODE is null) and'
      '      (dp2.FINISH_EMPLOYEE_CODE is null)'
      '  ) as UNFINISHED_DCD_DP_COUNT,'
      ''
      
        '  -- sledvashtite poleta sa da zamestiat calc fields, ot koito s' +
        'trada performance-a'
      '  dp.VENDOR_COMPANY_CODE as PARTNER_CODE,'
      '  ( select'
      '      bdt.BORDER_REL_TYPE_CODE'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE)'
      '  ) as BORDER_REL_TYPE_CODE,'
      ''
      '  ( select'
      '      bdt.PROD_ORDER_BASE_TYPE_CODE'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE)'
      '  ) as PROD_ORDER_BASE_TYPE_CODE,'
      ''
      '  ( select'
      '      prprodper.RESOLVE_DURATION_DAYS'
      '    from'
      '      PAR_REL_PRODUCT_PERIODS prprodper'
      '    where'
      '      (prprodper.PARTNER_CODE = dp.VENDOR_COMPANY_CODE) and'
      '      (prprodper.BORDER_REL_TYPE_CODE = %brt_VENDOR) and'
      '      (prprodper.PRODUCT_CODE = dp.PRODUCT_CODE) and'
      '      ( Decode('
      '          ( select'
      '              bdt.OBTAINMENT_TYPE_CODE'
      '            from'
      '              BORDER_DEAL_TYPES bdt'
      '            where'
      
        '              (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYP' +
        'E_CODE)'
      '          ),'
      '          %ot_LEASE, dp.RECEIVE_DATE,'
      '          dp.DELIVERY_DATE'
      '        ) between prprodper.BEGIN_DATE and prprodper.END_DATE'
      '      )'
      '  ) as RESOLVE_DURATION_DAYS,'
      ''
      '  p.MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE,'
      ''
      '  boio.BUDGET_ORDER_BRANCH_CODE,'
      '  boio.BUDGET_ORDER_CODE,'
      '  boio.BUDGET_ORDER_ITEM_CODE,'
      '  boio.BOI_ORDER_CODE,'
      ''
      '  ( select'
      '      po.PROCESS_OBJECT_IDENTIFIER'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (po.PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (po.PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CODE)'
      '  ) as BOI_ORDER_IDENTIFIER'
      ''
      'from'
      '  DELIVERY_PROJECTS dp,'
      '  DEFICIT_COVER_DECISIONS dcd,'
      '  PRODUCTS p,'
      '  DELIVERY_CONTRACTS dc,'
      '  FIN_ORDERS fo,'
      '  BOI_ORDERS boio'
      ''
      'where'
      '  (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      ''
      '  (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (dc.DCD_OBJECT_BRANCH_CODE(+) = dp.DCD_OBJECT_BRANCH_CODE) and'
      '  (dc.DCD_OBJECT_CODE(+) = dp.DCD_OBJECT_CODE) and'
      '  (dc.DELIVERY_PROJECT_CODE(+) = dp.DELIVERY_PROJECT_CODE) and'
      ''
      
        '  (dc.DELIVERY_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJECT_BRANCH' +
        '_CODE(+)) and'
      '  (dc.DELIVERY_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE(+)) and'
      '  (fo.ANNUL_EMPLOYEE_CODE(+) is null) and'
      ''
      
        '  (dc.DELIVERY_OBJECT_BRANCH_CODE = boio.DELIVERY_OBJECT_BRANCH_' +
        'CODE(+)) and'
      '  (dc.DELIVERY_OBJECT_CODE = boio.DELIVERY_OBJECT_CODE(+)) and'
      '  (boio.ANNUL_EMPLOYEE_CODE(+) is null) and'
      '  (boio.IS_CANCELED(+) = 0) and'
      ''
      '  (dp.DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = :DCD_OBJECT_CODE) and'
      '  (dp.DELIVERY_PROJECT_CODE = :DELIVERY_PROJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'LEASE_DATE_UNIT_QTY[dcd~dp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'FIN_ORDER_STATUS[fo]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'brt_VENDOR'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'ot_LEASE'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DELIVERY_PROJECTS_FOR_EDIT'
    AfterProviderStartTransaction = qryDeliveryAfterProviderStartTransaction
    Left = 152
    Top = 168
    object qryDeliveryVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object qryDeliveryMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object qryDeliverySTART_DATE: TAbmesSQLTimeStampField
      FieldName = 'START_DATE'
    end
    object qryDeliveryREGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REGISTER_DATE'
    end
    object qryDeliveryPLAN_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_POSITION_DATE'
    end
    object qryDeliveryREAL_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'REAL_POSITION_DATE'
    end
    object qryDeliveryPLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_VENDOR_POSITION_DATE'
    end
    object qryDeliveryREAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'REAL_VENDOR_POSITION_DATE'
    end
    object qryDeliveryREAL_DECISION_DATE: TAbmesSQLTimeStampField
      FieldName = 'REAL_DECISION_DATE'
    end
    object qryDeliveryMAX_BASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'MAX_BASE_SINGLE_PRICE'
    end
    object qryDeliveryDELIVERY_DECISION_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DECISION_CODE'
    end
    object qryDeliveryDELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'DELIVERY_DATE'
    end
    object qryDeliveryWORK_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_QUANTITY'
    end
    object qryDeliveryACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qryDeliveryCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryDeliveryTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryDeliverySINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryDeliveryDECISION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DECISION_EMPLOYEE_CODE'
    end
    object qryDeliveryDIALOG_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DIALOG_EMPLOYEE_CODE'
    end
    object qryDeliveryDELIVERY_VENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_VENDOR_COMPANY_CODE'
    end
    object qryDeliveryDELIVERY_VENDOR_OFFICE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_VENDOR_OFFICE_CODE'
    end
    object qryDeliverySHIPMENT_DAYS: TAbmesFloatField
      FieldName = 'SHIPMENT_DAYS'
    end
    object qryDeliveryCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object qryDeliverySHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object qryDeliveryPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
      ProviderFlags = []
    end
    object qryDeliveryIS_TRANSPORT_FROM_VENDOR: TAbmesFloatField
      FieldName = 'IS_TRANSPORT_FROM_VENDOR'
    end
    object qryDeliveryDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDeliveryDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDeliveryDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDeliveryCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryDeliveryCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryDeliveryCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryDeliveryCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryDeliveryCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryDeliveryCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryDeliveryACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryDeliveryDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryDeliveryDELIVERY_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_CODE'
      ProviderFlags = []
    end
    object qryDeliveryDELIVERY_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_TYPE_CODE'
      ProviderFlags = []
    end
    object qryDeliveryDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDeliveryDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDeliveryHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
      ProviderFlags = []
    end
    object qryDeliveryIS_ACTIVATED_BY_VENDOR: TAbmesFloatField
      FieldName = 'IS_ACTIVATED_BY_VENDOR'
    end
    object qryDeliveryFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object qryDeliveryFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object qryDeliveryFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object qryDeliveryANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryDeliveryANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryDeliveryANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryDeliveryDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryDeliveryDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
      ProviderFlags = []
    end
    object qryDeliverySD_QUANTITY: TAbmesFloatField
      FieldName = 'SD_QUANTITY'
      ProviderFlags = []
    end
    object qryDeliveryOUR_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'OUR_OFFER_QUANTITY'
    end
    object qryDeliveryOUR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'OUR_OFFER_ACCOUNT_QUANTITY'
    end
    object qryDeliveryOUR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'OUR_OFFER_SINGLE_PRICE'
    end
    object qryDeliveryOUR_OFFER_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'OUR_OFFER_CURRENCY_CODE'
    end
    object qryDeliveryVENDOR_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'VENDOR_OFFER_QUANTITY'
    end
    object qryDeliveryVENDOR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'VENDOR_OFFER_ACCOUNT_QUANTITY'
    end
    object qryDeliveryVENDOR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'VENDOR_OFFER_SINGLE_PRICE'
    end
    object qryDeliveryVENDOR_OFFER_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_OFFER_CURRENCY_CODE'
    end
    object qryDeliveryPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_BEGIN_DATE'
    end
    object qryDeliveryPROGNOSIS_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_END_DATE'
    end
    object qryDeliveryOUR_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'OUR_OFFER_LEASE_DATE_UNIT_QTY'
    end
    object qryDeliveryV_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'V_OFFER_LEASE_DATE_UNIT_QTY'
    end
    object qryDeliveryLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
    end
    object qryDeliveryOUR_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'OUR_OFFER_LEASE_DATE_UNIT_CODE'
    end
    object qryDeliveryV_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'V_OFFER_LEASE_DATE_UNIT_CODE'
    end
    object qryDeliveryLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object qryDeliveryRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object qryDeliveryRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
    end
    object qryDeliverySALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object qryDeliverySALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object qryDeliverySALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryDeliverySALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
      ProviderFlags = []
    end
    object qryDeliveryDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
      ProviderFlags = []
    end
    object qryDeliveryASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
      ProviderFlags = []
    end
    object qryDeliveryACCOUNT_MAX_BASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_MAX_BASE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryDeliveryACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryDeliveryACC_OUR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_OUR_OFFER_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryDeliveryACC_VENDOR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_VENDOR_OFFER_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryDeliveryINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
      ProviderFlags = []
    end
    object qryDeliveryINVOICE_ABBREV: TAbmesWideStringField
      FieldName = 'INVOICE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryDeliveryIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
      ProviderFlags = []
    end
    object qryDeliveryINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
      ProviderFlags = []
    end
    object qryDeliveryFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
      ProviderFlags = []
    end
    object qryDeliveryFO_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FO_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryDeliveryFO_EXEC_DEPT_CODE: TAbmesFloatField
      FieldName = 'FO_EXEC_DEPT_CODE'
      ProviderFlags = []
    end
    object qryDeliveryFO_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'FO_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qryDeliveryFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FO_WORK_FINANCIAL_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryDeliveryFO_PARTNER_CODE: TAbmesFloatField
      FieldName = 'FO_PARTNER_CODE'
      ProviderFlags = []
    end
    object qryDeliveryFO_STATUS_CODE: TAbmesFloatField
      FieldName = 'FO_STATUS_CODE'
      ProviderFlags = []
    end
    object qryDeliverySPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
      ProviderFlags = []
    end
    object qryDeliveryFO_CLOSE_REQUESTED: TAbmesFloatField
      FieldName = 'FO_CLOSE_REQUESTED'
      ProviderFlags = []
    end
    object qryDeliveryPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
      ProviderFlags = []
    end
    object qryDeliveryUNFINISHED_DCD_DP_COUNT: TAbmesFloatField
      FieldName = 'UNFINISHED_DCD_DP_COUNT'
      ProviderFlags = []
    end
    object qryDeliveryPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      ProviderFlags = []
    end
    object qryDeliveryBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = []
    end
    object qryDeliveryPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
      ProviderFlags = []
    end
    object qryDeliveryRESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'RESOLVE_DURATION_DAYS'
      ProviderFlags = []
    end
    object qryDeliverySALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      ProviderFlags = []
    end
    object qryDeliveryREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryDeliveryREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
      ProviderFlags = []
    end
    object qryDeliveryPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      Required = True
    end
    object qryDeliveryPSD_STORE_CODE: TAbmesFloatField
      FieldName = 'PSD_STORE_CODE'
      Required = True
    end
    object qryDeliveryDEFICIT_COVER_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEFICIT_COVER_DATE'
      Required = True
    end
    object qryDeliveryMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      ProviderFlags = []
    end
    object qryDeliveryACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryDeliveryBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryDeliveryBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
      ProviderFlags = []
    end
    object qryDeliveryBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
      ProviderFlags = []
    end
    object qryDeliveryBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
      ProviderFlags = []
    end
    object qryDeliveryBOI_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BOI_ORDER_IDENTIFIER'
      ProviderFlags = []
      Size = 100
    end
  end
  object qryDeficitCoverDecisionsMaster: TAbmesSQLQuery
    BeforeOpen = qryDeficitCoverDecisionsMasterBeforeOpen
    AfterClose = qryDeficitCoverDecisionsMasterAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATUS_CODE'
        ParamType = ptInput
        Value = '6'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PLAN_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PLAN_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PLAN_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PLAN_DECISION_DATE'
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
        Name = 'VPD_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VPD_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE_CODE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STREAM_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STREAM_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
        Value = '3'
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_MODE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DCD_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DEFICIT_COVER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DEFICIT_COVER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DEFICIT_COVER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DEFICIT_COVER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dcd.DCD_OBJECT_BRANCH_CODE,'
      '  dcd.DCD_OBJECT_CODE,'
      ''
      '  ( select'
      
        '     (d.CUSTOM_CODE || '#39'/'#39' || dcd.DCD_CODE || '#39'/'#39' || st.STREAM_T' +
        'YPE_ABBREV)'
      '    from'
      '      DEPTS d,'
      '      STREAM_TYPES st'
      '    where'
      '      (dcd.DCD_BRANCH_CODE = d.DEPT_CODE) and'
      '      (dcd.STREAM_TYPE_CODE = st.STREAM_TYPE_CODE)'
      '  ) as DCD_IDENTIFICATION,'
      ''
      '  %DCD_STATUS_CODE[dcd] as STATUS_CODE,'
      ''
      '  dcd.DCD_BRANCH_CODE,'
      '  dcd.DCD_CODE,'
      '  dcd.P_PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      
        '  Cast(%PRODUCT_COMPANY_PRODUCT_NAMES[dcd.P_PRODUCT_CODE~0] as V' +
        'arChar2(250 char)) as PRODUCT_COMPANY_NAMES,'
      '  p.ACCOUNT_MEASURE_COEF as PRODUCT_ACCOUNT_MEASURE_COEF,'
      ''
      '  ( select'
      
        '      po.PRODUCT_ORIGIN_ABBREV || '#39'     '#39' || po.PRODUCT_ORIGIN_N' +
        'AME'
      '    from'
      '      PRODUCT_ORIGINS po'
      '    where'
      '      (po.PRODUCT_ORIGIN_CODE = p.PRODUCT_ORIGIN_CODE)'
      '  ) as PRODUCT_ORIGIN_ABBREV_AND_NAME,'
      ''
      '  dcd.ASPECT_TYPE_CODE,'
      '  ( select'
      '      aty.ASPECT_TYPE_ABBREV'
      '    from'
      '      ASPECT_TYPES aty'
      '    where'
      '      (aty.ASPECT_TYPE_CODE = dcd.ASPECT_TYPE_CODE)'
      '  ) as ASPECT_TYPE_ABBREV,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOCUMENTATION,'
      '  dcd.P_DEFICIT_COVER_DATE,'
      '  dcd.P_WORK_QUANTITY,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as WORK_MEASURE_ABBREV,'
      '  dcd.P_ACCOUNT_QUANTITY,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      '  dcd.PLAN_DECISION_DATE,'
      '  dcd.IS_DONE,'
      '  dcd.IS_CANCELED,'
      '  dcd.VPD_EMPLOYEE_CODE,'
      '  ( select'
      
        '      (e.ABBREV || '#39'      '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST_NAM' +
        'E)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = dcd.VPD_EMPLOYEE_CODE)'
      '  ) as VPD_EMPLOYEE_NAME,'
      '  dcd.CREATE_EMPLOYEE_CODE,'
      '  dcd.CREATE_DATE,'
      '  dcd.CREATE_TIME,'
      '  dcd.CHANGE_EMPLOYEE_CODE,'
      '  dcd.CHANGE_DATE,'
      '  dcd.CHANGE_TIME,'
      ''
      
        '  Cast(%DEPT_IDENTIFIER[dcd.P_PSD_STORE_CODE] as Varchar2(46 cha' +
        'r)) as STORE_IDENTIFIER,'
      ''
      '  ( select'
      '      Sum(psd.QUANTITY)'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      
        '      (dcd.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dcd.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_B' +
        'RANCH_CODE) and'
      
        '      (dc.DELIVERY_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) an' +
        'd'
      '      (psd.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as TOTAL_WORK_QUANTITY,'
      ''
      '  ( dcd.P_WORK_QUANTITY -'
      '    Coalesce('
      '      ( select'
      '          Sum(dp.WORK_QUANTITY)'
      '        from'
      '          DELIVERY_PROJECTS dp,'
      '          DELIVERY_CONTRACTS dc'
      '        where'
      
        '          (dcd.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_COD' +
        'E) and'
      '          (dcd.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      
        '          (dp.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE' +
        ') and'
      '          (dp.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      
        '          (dp.DELIVERY_PROJECT_CODE = dc.DELIVERY_PROJECT_CODE) ' +
        'and'
      '          (dp.ANNUL_EMPLOYEE_CODE is null)'
      '      ),'
      '      0'
      '    )'
      '  ) as REMAINING_WORK_QUANTITY,'
      ''
      '  ( dcd.P_WORK_QUANTITY -'
      '    Coalesce('
      '      ( select'
      '          Sum(dp.WORK_QUANTITY)'
      '        from'
      '          DELIVERY_PROJECTS dp'
      '        where'
      
        '          (dcd.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_COD' +
        'E) and'
      '          (dcd.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '          (dp.ANNUL_EMPLOYEE_CODE is null)'
      '      ),'
      '      0'
      '    )'
      '  ) as REMAINING_REQUESTED_WORK_QTY,'
      ''
      '  ('
      '    select'
      '      Sum(psd.ACCOUNT_QUANTITY) '
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      
        '      (dcd.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dcd.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_B' +
        'RANCH_CODE) and'
      
        '      (dc.DELIVERY_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) an' +
        'd'
      '      (psd.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as TOTAL_ACCOUNT_QUANTITY,'
      '    '
      '  ( dcd.P_ACCOUNT_QUANTITY -'
      '    Coalesce('
      '      ( select'
      '          Sum(dp.ACCOUNT_QUANTITY)'
      '        from'
      '          DELIVERY_PROJECTS dp,'
      '          DELIVERY_CONTRACTS dc'
      '        where'
      
        '          (dcd.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_COD' +
        'E) and'
      '          (dcd.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      
        '          (dp.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE' +
        ') and'
      '          (dp.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      
        '          (dp.DELIVERY_PROJECT_CODE = dc.DELIVERY_PROJECT_CODE) ' +
        'and'
      '          (dp.ANNUL_EMPLOYEE_CODE is null)'
      '      ),'
      '      0'
      '    )'
      '  ) as REMAINING_ACCOUNT_QUANTITY,'
      ''
      '  ( dcd.P_ACCOUNT_QUANTITY -'
      '    Coalesce('
      '      ( select'
      '          Sum(dp.ACCOUNT_QUANTITY)'
      '        from'
      '          DELIVERY_PROJECTS dp'
      '        where'
      
        '          (dcd.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_COD' +
        'E) and'
      '          (dcd.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '          (dp.ANNUL_EMPLOYEE_CODE is null)'
      '      ),'
      '      0'
      '    )'
      '  ) as REMAINING_REQUESTED_ACC_QTY,'
      ''
      '  Coalesce('
      '    ('
      '      select'
      '        Decode('
      
        '          Sign(Sum(psd.ACCOUNT_QUANTITY) - (dcd.P_ACCOUNT_QUANTI' +
        'TY * (1 + comopt.MAX_DCD_OVERHEAD_PERCENT))),'
      '          -1, 0,'
      '          0, 0,'
      '          1, 1'
      '        )'
      '      from'
      '        DELIVERY_CONTRACTS dc,'
      '        PLANNED_STORE_DEALS psd,'
      '        COMMON_OPTIONS comopt'
      '      where'
      '        (comopt.CODE = 1) and'
      
        '        (dcd.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE)' +
        ' and'
      '        (dcd.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      
        '        (dc.DELIVERY_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '        (dc.DELIVERY_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '        (psd.ANNUL_EMPLOYEE_CODE is null)'
      '      group by'
      '        dcd.P_ACCOUNT_QUANTITY,'
      '        comopt.MAX_DCD_OVERHEAD_PERCENT'
      '    ), 0) as IS_DCD_OVERHEADED,'
      '  dcd.P_PSD_STORE_CODE,'
      ''
      '  dcd.DOC_BRANCH_CODE,'
      '  dcd.DOC_CODE,'
      '  %HAS_DOC_ITEMS[dcd] as DCD_HAS_DOCUMENTATION,'
      ''
      '  dcd.V_VENDOR_COMPANY_CODE,'
      ''
      '  ( select'
      '      csc.COMPANY_STATUS_CODE'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc'
      '    where'
      '      (csc.COMPANY_CODE = dcd.V_VENDOR_COMPANY_CODE) and'
      ''
      '      (csc.STATUS_DATE ='
      '        ( select'
      '            Max(STATUS_DATE)'
      '          from'
      '            COMPANY_STATUSES_CHANGES csc2'
      '          where'
      '            (csc2.COMPANY_CODE = csc.COMPANY_CODE)'
      '        )'
      '      )'
      '  ) as COMPANY_STATUS_CODE,'
      ''
      '  ( select'
      '      cs.COMPANY_STATUS_NAME'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc,'
      '      COMPANY_STATUSES cs'
      '    where'
      '      (csc.COMPANY_CODE = dcd.V_VENDOR_COMPANY_CODE) and'
      ''
      '      (csc.STATUS_DATE ='
      '        ( select'
      '            Max(STATUS_DATE)'
      '          from'
      '            COMPANY_STATUSES_CHANGES csc2'
      '          where'
      '            (csc2.COMPANY_CODE = csc.COMPANY_CODE)'
      '        )'
      '      ) and'
      ''
      '      (cs.COMPANY_STATUS_CODE = csc.COMPANY_STATUS_CODE)'
      '  ) as COMPANY_STATUS_NAME,'
      ''
      
        '  %COMPANY_BASE_ROLE_CODE[dcd.V_VENDOR_COMPANY_CODE] as COMPANY_' +
        'BASE_ROLE_CODE,'
      ''
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dcd.V_VENDOR_COMPANY_CODE)'
      '  ) as COMPANY_SHORT_NAME,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dcd.V_VENDOR_COMPANY_CODE)'
      '  ) as COMPANY_NO,'
      ''
      '  ( select'
      '      c.DOC_BRANCH_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dcd.V_VENDOR_COMPANY_CODE)'
      '  ) as COMPANY_DOC_BRANCH_CODE,'
      ''
      '  ( select'
      '      c.DOC_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dcd.V_VENDOR_COMPANY_CODE)'
      '  ) as COMPANY_DOC_CODE,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[c]'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dcd.V_VENDOR_COMPANY_CODE)'
      '  ) as COMPANY_HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DELIVERY_PROJECTS dp'
      '    where'
      
        '      (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE)'
      '  ) as DELIVERY_PROJECTS_COUNT,'
      ''
      '  dcd.V_START_DATE,'
      ''
      '  ( select'
      '      Sum(dp.TOTAL_PRICE)'
      '    from'
      '      DELIVERY_PROJECTS dp'
      '    where'
      
        '      (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      '      (dp.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as TOTAL_DELIVERY_PROJECTS_PRICE,'
      ''
      '  ( select'
      '      Sum(dp.TOTAL_PRICE)'
      '    from'
      '      DELIVERY_PROJECTS dp'
      '    where'
      
        '      (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      '      (dp.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '      (exists'
      '        ( select'
      '            1'
      '          from'
      '            DELIVERY_CONTRACTS dc'
      '          where'
      
        '            (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CO' +
        'DE) and'
      '            (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      
        '            (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE' +
        ')'
      '        )'
      '      )'
      '  ) as TOTAL_DELIVERY_CONTRACTS_PRICE'
      ''
      'from'
      '  DEFICIT_COVER_DECISIONS dcd,'
      '  PRODUCTS p'
      ''
      'where'
      '  (dcd.P_PRODUCT_CODE = p.PRODUCT_CODE(+)) and'
      ''
      '  (dcd.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      
        '  (%DCD_STATUS_CODE[dcd] between :MIN_STATUS_CODE and :MAX_STATU' +
        'S_CODE) and'
      ''
      '  (:PROD_ORDER_BASE_TYPE_CODE ='
      '    ( select'
      '        bdt.PROD_ORDER_BASE_TYPE_CODE'
      '      from'
      '        BORDER_DEAL_TYPES bdt'
      '      where'
      
        '        (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE' +
        ')'
      '    )'
      '  ) and'
      ''
      '  ( (:BEGIN_PLAN_DECISION_DATE is null) or'
      '    (:BEGIN_PLAN_DECISION_DATE <= dcd.PLAN_DECISION_DATE)'
      '  ) and'
      ''
      '  ( (:END_PLAN_DECISION_DATE is null) or'
      '    (:END_PLAN_DECISION_DATE >= dcd.PLAN_DECISION_DATE)'
      '  ) and'
      ''
      '  ( (:DCD_BRANCH_CODE is null) or'
      '    (:DCD_BRANCH_CODE = dcd.DCD_BRANCH_CODE)'
      '  ) and'
      ''
      '  ( (:DCD_CODE is null) or'
      '    (:DCD_CODE = dcd.DCD_CODE)'
      '  ) and'
      ''
      '  ( (:VPD_EMPLOYEE_CODE is null) or'
      '    (:VPD_EMPLOYEE_CODE = dcd.VPD_EMPLOYEE_CODE)'
      '  ) and'
      ''
      '  ( (:ASPECT_TYPE_CODE is null) or'
      '    (:ASPECT_TYPE_CODE = dcd.ASPECT_TYPE_CODE)'
      '  ) and'
      ''
      '  ( (:STREAM_TYPE_CODE is null) or'
      '    (:STREAM_TYPE_CODE = dcd.STREAM_TYPE_CODE)'
      '  ) and'
      ''
      '  ( (:DELIVERY_DEAL_TYPE_CODE is null) or'
      '    (:DELIVERY_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE)'
      '  ) and'
      ''
      '  (dcd.DCD_MODE_CODE = :DCD_MODE_CODE) and'
      ''
      '  ( ( (:DCD_MODE_CODE = %dcdm_OBJECTIVE) and'
      ''
      '      ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_PRODUCTS tfp'
      '            where'
      '              (tfp.PRODUCT_CODE = dcd.P_PRODUCT_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:BEGIN_DEFICIT_COVER_DATE is null) or'
      '        (:BEGIN_DEFICIT_COVER_DATE <= dcd.P_DEFICIT_COVER_DATE)'
      '      ) and'
      ''
      '      ( (:END_DEFICIT_COVER_DATE is null) or'
      '        (:END_DEFICIT_COVER_DATE >= dcd.P_DEFICIT_COVER_DATE)'
      '      )'
      '    ) or'
      ''
      '    ( (:DCD_MODE_CODE = %dcdm_SUBJECTIVE) and'
      '      ( (:ALL_FILTERED_COMPANIES = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_COMPANIES tfc'
      '            where'
      '              (tfc.COMPANY_CODE = dcd.V_VENDOR_COMPANY_CODE)'
      '          )'
      '        )'
      '      )'
      '    )'
      '  )'
      ''
      'order by'
      '  P_DEFICIT_COVER_DATE,'
      '  DCD_IDENTIFICATION'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'DCD_STATUS_CODE[dcd]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRODUCT_COMPANY_PRODUCT_NAMES[dcd.P_PRODUCT_CODE~0]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'DEPT_IDENTIFIER[dcd.P_PSD_STORE_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[dcd]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_BASE_ROLE_CODE[dcd.V_VENDOR_COMPANY_CODE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[c]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'dcdm_OBJECTIVE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'dcdm_SUBJECTIVE'
        ParamType = ptInput
        Value = '1'
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
    TableName = 'DCD_FOR_EDIT'
    Left = 64
    Top = 56
    object qryDeficitCoverDecisionsMasterDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDeficitCoverDecisionsMasterDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDeficitCoverDecisionsMasterDCD_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'DCD_IDENTIFICATION'
      Size = 92
    end
    object qryDeficitCoverDecisionsMasterSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
    end
    object qryDeficitCoverDecisionsMasterDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
      Required = True
    end
    object qryDeficitCoverDecisionsMasterDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
      Required = True
    end
    object qryDeficitCoverDecisionsMasterP_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'P_PRODUCT_CODE'
    end
    object qryDeficitCoverDecisionsMasterPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryDeficitCoverDecisionsMasterPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryDeficitCoverDecisionsMasterPRODUCT_COMPANY_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_NAMES'
      Size = 250
    end
    object qryDeficitCoverDecisionsMasterPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
    end
    object qryDeficitCoverDecisionsMasterPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_ABBREV_AND_NAME'
      Size = 205
    end
    object qryDeficitCoverDecisionsMasterASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
      Required = True
    end
    object qryDeficitCoverDecisionsMasterASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      Size = 100
    end
    object qryDeficitCoverDecisionsMasterPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
    end
    object qryDeficitCoverDecisionsMasterP_DEFICIT_COVER_DATE: TAbmesSQLTimeStampField
      FieldName = 'P_DEFICIT_COVER_DATE'
    end
    object qryDeficitCoverDecisionsMasterP_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'P_WORK_QUANTITY'
    end
    object qryDeficitCoverDecisionsMasterWORK_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'WORK_MEASURE_ABBREV'
      Size = 5
    end
    object qryDeficitCoverDecisionsMasterP_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'P_ACCOUNT_QUANTITY'
    end
    object qryDeficitCoverDecisionsMasterACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryDeficitCoverDecisionsMasterPLAN_DECISION_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_DECISION_DATE'
      Required = True
    end
    object qryDeficitCoverDecisionsMasterIS_DONE: TAbmesFloatField
      FieldName = 'IS_DONE'
      Required = True
    end
    object qryDeficitCoverDecisionsMasterIS_CANCELED: TAbmesFloatField
      FieldName = 'IS_CANCELED'
      Required = True
    end
    object qryDeficitCoverDecisionsMasterVPD_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'VPD_EMPLOYEE_CODE'
      Required = True
    end
    object qryDeficitCoverDecisionsMasterVPD_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'VPD_EMPLOYEE_NAME'
      Size = 52
    end
    object qryDeficitCoverDecisionsMasterCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      Required = True
    end
    object qryDeficitCoverDecisionsMasterCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      Required = True
    end
    object qryDeficitCoverDecisionsMasterCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      Required = True
    end
    object qryDeficitCoverDecisionsMasterCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
      Required = True
    end
    object qryDeficitCoverDecisionsMasterCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
      Required = True
    end
    object qryDeficitCoverDecisionsMasterCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
      Required = True
    end
    object qryDeficitCoverDecisionsMasterSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 46
    end
    object qryDeficitCoverDecisionsMasterTOTAL_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_WORK_QUANTITY'
    end
    object qryDeficitCoverDecisionsMasterREMAINING_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'REMAINING_WORK_QUANTITY'
    end
    object qryDeficitCoverDecisionsMasterREMAINING_REQUESTED_WORK_QTY: TAbmesFloatField
      FieldName = 'REMAINING_REQUESTED_WORK_QTY'
    end
    object qryDeficitCoverDecisionsMasterTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_QUANTITY'
    end
    object qryDeficitCoverDecisionsMasterREMAINING_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'REMAINING_ACCOUNT_QUANTITY'
    end
    object qryDeficitCoverDecisionsMasterREMAINING_REQUESTED_ACC_QTY: TAbmesFloatField
      FieldName = 'REMAINING_REQUESTED_ACC_QTY'
    end
    object qryDeficitCoverDecisionsMasterIS_DCD_OVERHEADED: TAbmesFloatField
      FieldName = 'IS_DCD_OVERHEADED'
    end
    object qryDeficitCoverDecisionsMasterP_PSD_STORE_CODE: TAbmesFloatField
      FieldName = 'P_PSD_STORE_CODE'
    end
    object qryDeficitCoverDecisionsMasterDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDeficitCoverDecisionsMasterDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDeficitCoverDecisionsMasterDCD_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'DCD_HAS_DOCUMENTATION'
    end
    object qryDeficitCoverDecisionsMasterCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
    object qryDeficitCoverDecisionsMasterCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object qryDeficitCoverDecisionsMasterCOMPANY_SHORT_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_SHORT_NAME'
    end
    object qryDeficitCoverDecisionsMasterDELIVERY_PROJECTS_COUNT: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECTS_COUNT'
    end
    object qryDeficitCoverDecisionsMasterV_START_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_START_DATE'
    end
    object qryDeficitCoverDecisionsMasterTOTAL_DELIVERY_PROJECTS_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_DELIVERY_PROJECTS_PRICE'
    end
    object qryDeficitCoverDecisionsMasterTOTAL_DELIVERY_CONTRACTS_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_DELIVERY_CONTRACTS_PRICE'
    end
    object qryDeficitCoverDecisionsMasterCOMPANY_BASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'COMPANY_BASE_ROLE_CODE'
    end
    object qryDeficitCoverDecisionsMasterCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
    end
    object qryDeficitCoverDecisionsMasterCOMPANY_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'COMPANY_DOC_BRANCH_CODE'
    end
    object qryDeficitCoverDecisionsMasterCOMPANY_DOC_CODE: TAbmesFloatField
      FieldName = 'COMPANY_DOC_CODE'
    end
    object qryDeficitCoverDecisionsMasterCOMPANY_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'COMPANY_HAS_DOC_ITEMS'
    end
    object qryDeficitCoverDecisionsMasterV_VENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'V_VENDOR_COMPANY_CODE'
    end
  end
  object qryDeficitCoverDecisionsDetail: TAbmesSQLQuery
    OnCalcFields = qryDeficitCoverDecisionsDetailCalcFields
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.DCD_OBJECT_BRANCH_CODE,'
      '  dp.DCD_OBJECT_CODE,'
      '  dp.DELIVERY_PROJECT_CODE,'
      ''
      '  Nvl2(dp.ANNUL_EMPLOYEE_CODE,'
      '    11,'
      '    Nvl2(dp.FINISH_EMPLOYEE_CODE,'
      '      10,'
      '      Nvl2(dc.DELIVERY_OBJECT_BRANCH_CODE,'
      '        9,'
      '        Nvl2(dp.REAL_DECISION_DATE,'
      '          8,'
      '          Nvl2(dp.REAL_VENDOR_POSITION_DATE,'
      
        '            Decode(Sign(Coalesce(dcd.PLAN_DECISION_DATE, Context' +
        'Date) - ContextDate), -1,'
      '              7,'
      '              6'
      '            ),'
      '            Nvl2(dp.REAL_POSITION_DATE,'
      
        '              Decode(Sign(Coalesce(dp.PLAN_VENDOR_POSITION_DATE,' +
        ' ContextDate) - ContextDate), -1,'
      '                5,'
      '                4'
      '              ),'
      '              Nvl2(dp.PLAN_POSITION_DATE,'
      
        '                Decode(Sign(dp.PLAN_POSITION_DATE - ContextDate)' +
        ', -1,'
      '                  3,'
      '                  2'
      '                ),'
      '                1'
      '              )'
      '            )'
      '          )'
      '        )'
      '      )'
      '    )'
      '  ) as STATUS_CODE,'
      ''
      '  dcd.ASPECT_TYPE_CODE,'
      '  ( select'
      '      aty.ASPECT_TYPE_ABBREV'
      '    from'
      '      ASPECT_TYPES aty'
      '    where'
      '      (aty.ASPECT_TYPE_CODE = dcd.ASPECT_TYPE_CODE)'
      '  ) as ASPECT_TYPE_ABBREV,'
      ''
      '  ( select'
      
        '     (d.CUSTOM_CODE || '#39'/'#39' || dcd.DCD_CODE || '#39'/'#39' || dp.DELIVERY' +
        '_PROJECT_CODE || '#39'/'#39' || st.STREAM_TYPE_ABBREV)'
      '    from'
      '      DEPTS d,'
      '      STREAM_TYPES st'
      '    where'
      '      (dcd.DCD_BRANCH_CODE = d.DEPT_CODE) and'
      '      (dcd.STREAM_TYPE_CODE = st.STREAM_TYPE_CODE)'
      '  ) as DELIVERY_ID,'
      ''
      '  dp.DOC_BRANCH_CODE,'
      '  dp.DOC_CODE,'
      '  %HAS_DOC_ITEMS[dp] as HAS_DOCUMENTATION,'
      ''
      '  dp.IS_ACTIVATED_BY_VENDOR,'
      ''
      '  ( select'
      
        '      e.ABBREV || '#39'        '#39' || e.FIRST_NAME || '#39' '#39' || e.MIDDLE_' +
        'NAME || '#39' '#39' || e.LAST_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = dp.DIALOG_EMPLOYEE_CODE)'
      '  ) as DIALOG_EMPLOYEE_NAME,'
      ''
      
        '  %COMPANY_BASE_ROLE_CODE[dp.VENDOR_COMPANY_CODE] as BASE_ROLE_C' +
        'ODE,'
      ''
      '  ( select'
      '      csc.COMPANY_STATUS_CODE'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc'
      '    where'
      '      (csc.COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
      ''
      '      (csc.STATUS_DATE = ('
      '        select'
      '          Max(STATUS_DATE)'
      '        from'
      '          COMPANY_STATUSES_CHANGES csc2'
      '        where'
      '          (csc2.COMPANY_CODE = csc.COMPANY_CODE)'
      '        )'
      '      )'
      '  ) as COMPANY_STATUS_CODE,'
      ''
      '  ( select'
      '      cs.COMPANY_STATUS_NAME'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc,'
      '      COMPANY_STATUSES cs'
      '    where'
      '      (csc.COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
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
      '  ) as COMPANY_STATUS_NAME,'
      ''
      '  dp.VENDOR_COMPANY_CODE,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE) '
      '  ) as VENDOR_COMPANY_NAME,'
      ''
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      VENDOR_COMPANIES c,'
      '      PRIORITIES p'
      '    where'
      '      (c.VENDOR_COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
      '      (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as VENDOR_PRIORITY_NO,'
      ''
      '  ( select'
      '      p.PRIORITY_COLOR'
      '    from'
      '      VENDOR_COMPANIES c,'
      '      PRIORITIES p'
      '    where'
      '      (c.VENDOR_COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
      '      (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as VENDOR_PRIORITY_COLOR,'
      ''
      '  ( select'
      '      p.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      VENDOR_COMPANIES c,'
      '      PRIORITIES p'
      '    where'
      '      (c.VENDOR_COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
      '      (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as VENDOR_PRIORITY_BK_COLOR,'
      ''
      '  ( select'
      '      c.DOC_BRANCH_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE)'
      '  ) as VENDOR_DOC_BRANCH_CODE,'
      '  ( select'
      '      c.DOC_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE)'
      '  ) as VENDOR_DOC_CODE,'
      '  ( select'
      '      %HAS_DOC_ITEMS[c]'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE)'
      '  ) as VENDOR_HAS_DOCUMENTATION,'
      ''
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (dc.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      ''
      '  ( select'
      '      p.PRIORITY_COLOR'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (dc.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_COLOR,'
      ''
      '  ( select'
      '      p.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (dc.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
      ''
      '  Nvl2(dp.MEDIATOR_COMPANY_CODE, 1, 0) as HAS_MEDIATOR,'
      ''
      '  dp.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      ''
      '  ( select'
      '      cp.NAME'
      '    from'
      '      COMPANY_PRODUCTS cp'
      '    where'
      '      (dp.VENDOR_COMPANY_CODE = cp.COMPANY_CODE) and'
      '      (dp.PRODUCT_CODE = cp.PRODUCT_CODE)'
      '  ) as VENDOR_PRODUCT_NAME,'
      ''
      '  ( select'
      
        '      po.PRODUCT_ORIGIN_ABBREV || '#39'     '#39' || po.PRODUCT_ORIGIN_N' +
        'AME '
      '    from'
      '      PRODUCT_ORIGINS po'
      '    where'
      '      (po.PRODUCT_ORIGIN_CODE = p.PRODUCT_ORIGIN_CODE)'
      '  ) as PRODUCT_ORIGIN_ABBREV_AND_NAME,'
      ''
      '  ( select'
      '      ( select'
      '          prps.PAR_REL_PRODUCT_STATUS_NAME'
      '        from'
      '          PAR_REL_PRODUCT_STATUSES prps'
      '        where'
      
        '          (prps.PAR_REL_PRODUCT_STATUS_CODE = prpsc.PAR_REL_PROD' +
        'UCT_STATUS_CODE)'
      '      )'
      '    from'
      '      PAR_REL_PRODUCT_STATUS_CHANGES prpsc'
      '    where'
      '      (prpsc.PARTNER_CODE = dp.VENDOR_COMPANY_CODE) and'
      '      (prpsc.BORDER_REL_TYPE_CODE = %brt_VENDOR) and'
      '      (prpsc.PRODUCT_CODE = dp.PRODUCT_CODE) and'
      '      (prpsc.STATUS_DATE <= ContextDate) and'
      '      not exists('
      '        select'
      '          1'
      '        from'
      '          PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '        where'
      '          (prpsc2.PARTNER_CODE = prpsc.PARTNER_CODE) and'
      
        '          (prpsc2.BORDER_REL_TYPE_CODE = prpsc.BORDER_REL_TYPE_C' +
        'ODE) and'
      '          (prpsc2.PRODUCT_CODE = prpsc.PRODUCT_CODE) and'
      '          (prpsc.STATUS_DATE < prpsc2.STATUS_DATE) and'
      '          (prpsc2.STATUS_DATE <= ContextDate)'
      '      )'
      '  ) as PAR_REL_PRODUCT_STATUS_NAME,'
      ''
      '  p.MEASURE_CODE,'
      ''
      '  Decode(dcd.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        m.MEASURE_ABBREV'
      '      from'
      '        MEASURES m'
      '      where'
      '        (m.MEASURE_CODE = p.MEASURE_CODE)'
      '    )'
      '  ) as MEASURE_ABBREV,'
      ''
      '  p.ACCOUNT_MEASURE_CODE,'
      ''
      '  Decode(dcd.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        m.MEASURE_ABBREV'
      '      from'
      '        MEASURES m'
      '      where'
      '        (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '    )'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOCUMENTATION,'
      ''
      '  dp.REGISTER_DATE,'
      
        '  (dcd.PLAN_DECISION_DATE - dp.REGISTER_DATE) as PLAN_PERIOD_DAY' +
        'S,'
      
        '  (dp.REAL_DECISION_DATE - dp.REGISTER_DATE) as REAL_PERIOD_DAYS' +
        ','
      ''
      '  Decode((dp.REAL_DECISION_DATE - dp.REGISTER_DATE), 0,'
      '    To_number(null),'
      
        '    (dcd.PLAN_DECISION_DATE - dp.REAL_DECISION_DATE) / (dp.REAL_' +
        'DECISION_DATE - dp.REGISTER_DATE)'
      '  ) as REAL_PERIOD_DEVIATION_PERCENT,'
      ''
      
        '  (dp.PLAN_POSITION_DATE - Coalesce(dp.REAL_POSITION_DATE, Conte' +
        'xtDate)) as POSITION_DAYS_RSV,'
      
        '  (dp.PLAN_VENDOR_POSITION_DATE - Coalesce(dp.REAL_VENDOR_POSITI' +
        'ON_DATE, ContextDate)) as VENDOR_POSITION_DAYS_RSV,'
      
        '  (dcd.PLAN_DECISION_DATE - Coalesce(dp.REAL_DECISION_DATE, Cont' +
        'extDate)) as DECISION_DAYS_RSV,'
      ''
      '  dp.DELIVERY_DECISION_CODE,'
      '  ( select'
      '      dd.DELIVERY_DECISION_ABBREV'
      '    from'
      '      DELIVERY_DECISIONS dd'
      '    where'
      '      (dd.DELIVERY_DECISION_CODE = dp.DELIVERY_DECISION_CODE)'
      '  ) as DELIVERY_DECISION_ABBREV,'
      ''
      '  dp.PROGNOSIS_BEGIN_DATE,'
      '  dp.PROGNOSIS_END_DATE,'
      ''
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 1, Coalesce(dp.WORK_QUANTITY, Coa' +
        'lesce(dp.VENDOR_OFFER_QUANTITY, dp.OUR_OFFER_QUANTITY)), To_numb' +
        'er(null)) as PROGNOSIS_QUANTITY,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 1, p.MEASURE_CODE, To_number(null' +
        ')) as PROGNOSIS_MEASURE_CODE,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    ( select'
      '        m.MEASURE_ABBREV'
      '      from'
      '        MEASURES m'
      '      where'
      '        (m.MEASURE_CODE = p.MEASURE_CODE)'
      '    ),'
      '    null'
      '  ) as PROGNOSIS_MEASURE_ABBREV,'
      ''
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      
        '    Coalesce(dp.LEASE_DATE_UNIT_QTY, Coalesce(dp.V_OFFER_LEASE_D' +
        'ATE_UNIT_QTY, dp.OUR_OFFER_LEASE_DATE_UNIT_QTY)),'
      '    To_number(null)'
      '  ) as PROGNOSIS_LEASE_DATE_UNIT_QTY,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      
        '    Coalesce(dp.LEASE_DATE_UNIT_CODE, Coalesce(dp.V_OFFER_LEASE_' +
        'DATE_UNIT_CODE, dp.OUR_OFFER_LEASE_DATE_UNIT_CODE)),'
      '    To_number(null)'
      '  ) as PROGNOSIS_LEASE_DATE_UNIT_CODE,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    ( select'
      '        tdu.THE_DATE_UNIT_NAME'
      '      from'
      '        THE_DATE_UNITS tdu'
      '      where'
      
        '        (tdu.THE_DATE_UNIT_CODE = Coalesce(dp.LEASE_DATE_UNIT_CO' +
        'DE, Coalesce(dp.V_OFFER_LEASE_DATE_UNIT_CODE, dp.OUR_OFFER_LEASE' +
        '_DATE_UNIT_CODE)))'
      '    ),'
      '    To_number(null)'
      '  ) as PROGNOSIS_LEASE_DATE_UNIT_NAME,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    Coalesce('
      '      dp.WORK_QUANTITY * dp.LEASE_DATE_UNIT_QTY,'
      '      Coalesce('
      
        '        dp.V_OFFER_LEASE_DATE_UNIT_QTY * dp.V_OFFER_LEASE_DATE_U' +
        'NIT_QTY,'
      
        '        dp.OUR_OFFER_LEASE_DATE_UNIT_QTY * dp.OUR_OFFER_LEASE_DA' +
        'TE_UNIT_QTY'
      '      )'
      '    ),'
      '    To_number(null)'
      '  ) as PROGNOSIS_TOTAL_LEASE_QUANTITY,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    Coalesce('
      '      dp.WORK_QUANTITY * dp.LEASE_DATE_UNIT_QTY,'
      '      Coalesce('
      
        '        dp.V_OFFER_LEASE_DATE_UNIT_QTY * dp.V_OFFER_LEASE_DATE_U' +
        'NIT_QTY,'
      
        '        dp.OUR_OFFER_LEASE_DATE_UNIT_QTY * dp.OUR_OFFER_LEASE_DA' +
        'TE_UNIT_QTY'
      '      )'
      '    ),'
      '    To_number(null)'
      '  ) * p.ACCOUNT_MEASURE_COEF as PROGNOSIS_ACC_TOTAL_LEASE_QTY,'
      ''
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      
        '    Nvl2(dp.WORK_QUANTITY + dp.LEASE_DATE_UNIT_QTY + dp.LEASE_DA' +
        'TE_UNIT_CODE, 1, 0),'
      '    To_number(null)'
      '  ) as IS_LEASE_QUANTITY_AGREED,'
      ''
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 1, Coalesce(dp.ACCOUNT_QUANTITY, ' +
        'Coalesce(dp.VENDOR_OFFER_ACCOUNT_QUANTITY, dp.OUR_OFFER_ACCOUNT_' +
        'QUANTITY)), To_number(null)) as PROGNOSIS_ACCOUNT_QUANTITY,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 1, p.ACCOUNT_MEASURE_CODE, To_num' +
        'ber(null)) as PROGNOSIS_ACCOUNT_MEASURE_CODE,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    ( select'
      '        m.MEASURE_ABBREV'
      '      from'
      '        MEASURES m'
      '      where'
      '        (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '    ),'
      '    null'
      '  ) as PROGNOSIS_ACC_MEASURE_ABBREV,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    Nvl2(dp.WORK_QUANTITY, 1, 0),'
      '    To_number(null)'
      '  ) as IS_QUANTITY_AGREED,'
      ''
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 1, Coalesce((dp.TOTAL_PRICE / (Nu' +
        'llIf(dp.WORK_QUANTITY, 0) * %LEASE_DATE_UNIT_QTY[dcd~dp])), Coal' +
        'esce(dp.VENDOR_OFFER_SINGLE_PRICE, dp.OUR_OFFER_SINGLE_PRICE)), ' +
        'To_number(null)) as PROGNOSIS_SINGLE_PRICE,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 1, Coalesce((dp.TOTAL_PRICE / (Nu' +
        'llIf(dp.ACCOUNT_QUANTITY, 0) * %LEASE_DATE_UNIT_QTY[dcd~dp])), C' +
        'oalesce(dp.VENDOR_OFFER_SINGLE_PRICE, dp.OUR_OFFER_SINGLE_PRICE)' +
        ' / p.ACCOUNT_MEASURE_COEF), To_number(null)) as PROGNOSIS_ACCOUN' +
        'T_SINGLE_PRICE,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 1, Coalesce(dp.CURRENCY_CODE, Coa' +
        'lesce(dp.VENDOR_OFFER_CURRENCY_CODE, dp.OUR_OFFER_CURRENCY_CODE)' +
        '), To_number(null)) as PROGNOSIS_CURRENCY_CODE,'
      '  ( select'
      '      tcr.FIXING'
      '    from'
      '      TODAY_CURRENCY_RATES tcr'
      '    where'
      
        '      (tcr.CURRENCY_CODE = Decode(dcd.ASPECT_TYPE_CODE, 1, Coale' +
        'sce(dp.CURRENCY_CODE, Coalesce(dp.VENDOR_OFFER_CURRENCY_CODE, dp' +
        '.OUR_OFFER_CURRENCY_CODE))))'
      '  ) as PROGNOSIS_CURRENCY_FIXING,'
      '  '
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    Coalesce('
      '      ( select'
      '          c.CURRENCY_ABBREV'
      '        from'
      '          CURRENCIES c'
      '        where'
      '          (c.CURRENCY_CODE = dp.CURRENCY_CODE)'
      '      ),'
      '      Coalesce('
      '        ( select'
      '            c.CURRENCY_ABBREV'
      '          from'
      '            CURRENCIES c'
      '          where'
      '            (c.CURRENCY_CODE = dp.VENDOR_OFFER_CURRENCY_CODE)'
      '        ),'
      '        ( select'
      '            c.CURRENCY_ABBREV'
      '          from'
      '            CURRENCIES c'
      '          where'
      '            (c.CURRENCY_CODE = dp.OUR_OFFER_CURRENCY_CODE)'
      '        )'
      '      )'
      '    ),'
      '    '#39#39
      '  ) as PROGNOSIS_CURRENCY_ABBREV,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    Nvl2(dp.TOTAL_PRICE, 1, 0),'
      '    To_number(null)'
      '  ) as IS_PRICE_AGREED,'
      ''
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, dp.DELIVERY_DATE) as DELIVERY_' +
        'DATE,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, dp.WORK_QUANTITY) as WORK_QUAN' +
        'TITY,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, dp.ACCOUNT_QUANTITY) as ACCOUN' +
        'T_QUANTITY,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, (dp.TOTAL_PRICE / (NullIf(dp.W' +
        'ORK_QUANTITY, 0) * %LEASE_DATE_UNIT_QTY[dcd~dp]))) as SINGLE_PRI' +
        'CE,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, (dp.TOTAL_PRICE / (NullIf(dp.A' +
        'CCOUNT_QUANTITY, 0) * %LEASE_DATE_UNIT_QTY[dcd~dp]))) as ACCOUNT' +
        '_SINGLE_PRICE,'
      ''
      '  Decode(dcd.ASPECT_TYPE_CODE, 2,'
      '    ( dp.TOTAL_PRICE *'
      '      ( select'
      '          tcr.FIXING'
      '        from'
      '          TODAY_CURRENCY_RATES tcr'
      '        where'
      '          (tcr.CURRENCY_CODE = dp.CURRENCY_CODE)'
      '      )'
      '    )'
      '  ) as TOTAL_PRICE,'
      ''
      '  dp.CURRENCY_CODE,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        c.CURRENCY_ABBREV'
      '      from'
      '        CURRENCIES c'
      '      where'
      '        (c.CURRENCY_CODE = dp.CURRENCY_CODE)'
      '    )'
      '  ) as CURRENCY_ABBREV,'
      ''
      '  dp.LEASE_DATE_UNIT_CODE,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        tdu.THE_DATE_UNIT_NAME'
      '      from'
      '        THE_DATE_UNITS tdu'
      '      where'
      '        (tdu.THE_DATE_UNIT_CODE = dp.LEASE_DATE_UNIT_CODE)'
      '    )'
      '  ) as LEASE_DATE_UNIT_NAME,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, dp.LEASE_DATE_UNIT_QTY) as LEA' +
        'SE_DATE_UNIT_QTY,'
      ''
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, (dp.WORK_QUANTITY * dp.LEASE_D' +
        'ATE_UNIT_QTY)) as TOTAL_LEASE_QUANTITY,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, (dp.ACCOUNT_QUANTITY * dp.LEAS' +
        'E_DATE_UNIT_QTY)) as TOTAL_ACCOUNT_LEASE_QUANTITY,'
      ''
      '  dp.RECEIVE_DATE,'
      '  dp.RETURN_DATE,'
      ''
      '  dcd.DELIVERY_DEAL_TYPE_CODE,'
      ''
      '  ( select'
      '      %FIN_ORDER_STATUS[fo]'
      '    from'
      '      FIN_ORDERS fo'
      '    where'
      
        '      (fo.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (fo.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (fo.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as FO_STATUS_CODE,'
      ''
      '  ( select'
      '      fo.FIN_ORDER_CODE'
      '    from'
      '      FIN_ORDERS fo'
      '    where'
      
        '      (fo.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (fo.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (fo.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as FIN_ORDER_CODE,'
      ''
      '  0 as FO_CLOSE_REQUESTED,'
      '  dp.FINISH_EMPLOYEE_CODE,'
      '  dp.FINISH_DATE,'
      '  dp.FINISH_TIME,'
      ''
      '  dc.INVOICE_NO,'
      '  dc.INVOICE_ABBREV,'
      '  dc.IS_PROFORM_INVOICE,'
      '  dc.INVOICE_DATE'
      ''
      'from'
      '  DELIVERY_PROJECTS dp,'
      '  DEFICIT_COVER_DECISIONS dcd,'
      '  DELIVERY_CONTRACTS dc,'
      '  PRODUCTS p'
      ''
      'where'
      '  (dcd.DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE) and'
      '  (dcd.DCD_OBJECT_CODE = :DCD_OBJECT_CODE) and'
      ''
      '  (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      ''
      '  (dc.DCD_OBJECT_BRANCH_CODE(+) = dp.DCD_OBJECT_BRANCH_CODE) and'
      '  (dc.DCD_OBJECT_CODE(+) = dp.DCD_OBJECT_CODE) and'
      '  (dc.DELIVERY_PROJECT_CODE(+) = dp.DELIVERY_PROJECT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[dp]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_BASE_ROLE_CODE[dp.VENDOR_COMPANY_CODE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[c]'
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
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'LEASE_DATE_UNIT_QTY[dcd~dp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'FIN_ORDER_STATUS[fo]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'DELIVERY_PROJECTS_FOR_EDIT'
    Left = 224
    Top = 56
    object qryDeficitCoverDecisionsDetailDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDeficitCoverDecisionsDetailDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDeficitCoverDecisionsDetailDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDeficitCoverDecisionsDetailSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      ProviderFlags = []
      Size = 100
    end
    object qryDeficitCoverDecisionsDetailDELIVERY_ID: TAbmesWideStringField
      FieldName = 'DELIVERY_ID'
      ProviderFlags = []
      Size = 212
    end
    object qryDeficitCoverDecisionsDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailIS_ACTIVATED_BY_VENDOR: TAbmesFloatField
      FieldName = 'IS_ACTIVATED_BY_VENDOR'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailDIALOG_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'DIALOG_EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 75
    end
    object qryDeficitCoverDecisionsDetailCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryDeficitCoverDecisionsDetailVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailVENDOR_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_COMPANY_NAME'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailVENDOR_PRIORITY_NO: TAbmesFloatField
      FieldName = 'VENDOR_PRIORITY_NO'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailVENDOR_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'VENDOR_PRIORITY_COLOR'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailVENDOR_PRIORITY_BK_COLOR: TAbmesFloatField
      FieldName = 'VENDOR_PRIORITY_BK_COLOR'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailVENDOR_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'VENDOR_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailVENDOR_DOC_CODE: TAbmesFloatField
      FieldName = 'VENDOR_DOC_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailVENDOR_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'VENDOR_HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailHAS_MEDIATOR: TAbmesFloatField
      FieldName = 'HAS_MEDIATOR'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryDeficitCoverDecisionsDetailVENDOR_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_PRODUCT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryDeficitCoverDecisionsDetailPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_ABBREV_AND_NAME'
      ProviderFlags = []
      Size = 205
    end
    object qryDeficitCoverDecisionsDetailMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryDeficitCoverDecisionsDetailACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryDeficitCoverDecisionsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailREGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REGISTER_DATE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPLAN_PERIOD_DAYS: TAbmesFloatField
      FieldName = 'PLAN_PERIOD_DAYS'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailREAL_PERIOD_DAYS: TAbmesFloatField
      FieldName = 'REAL_PERIOD_DAYS'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailREAL_PERIOD_DEVIATION_PERCENT: TAbmesFloatField
      FieldName = 'REAL_PERIOD_DEVIATION_PERCENT'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPOSITION_DAYS_RSV: TAbmesFloatField
      FieldName = 'POSITION_DAYS_RSV'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailVENDOR_POSITION_DAYS_RSV: TAbmesFloatField
      FieldName = 'VENDOR_POSITION_DAYS_RSV'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailDECISION_DAYS_RSV: TAbmesFloatField
      FieldName = 'DECISION_DAYS_RSV'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailDELIVERY_DECISION_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DECISION_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailDELIVERY_DECISION_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DECISION_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_BEGIN_DATE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_END_DATE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_QUANTITY'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailIS_QUANTITY_AGREED: TAbmesFloatField
      FieldName = 'IS_QUANTITY_AGREED'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_CURRENCY_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_CURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_CURRENCY_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryDeficitCoverDecisionsDetailIS_PRICE_AGREED: TAbmesFloatField
      FieldName = 'IS_PRICE_AGREED'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'PROGNOSIS_TOTAL_PRICE'
      ProviderFlags = []
      Calculated = True
    end
    object qryDeficitCoverDecisionsDetailDELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'DELIVERY_DATE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailWORK_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_QUANTITY'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_QTY'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_TOTAL_LEASE_QUANTITY'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_ACC_TOTAL_LEASE_QTY: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACC_TOTAL_LEASE_QTY'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailIS_LEASE_QUANTITY_AGREED: TAbmesFloatField
      FieldName = 'IS_LEASE_QUANTITY_AGREED'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_ACC_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryDeficitCoverDecisionsDetailTOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_LEASE_QUANTITY'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailTOTAL_ACCOUNT_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_LEASE_QUANTITY'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailBASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'BASE_ROLE_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryDeficitCoverDecisionsDetailPROGNOSIS_CURRENCY_FIXING: TAbmesFloatField
      FieldName = 'PROGNOSIS_CURRENCY_FIXING'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = []
      Required = True
    end
    object qryDeficitCoverDecisionsDetailFO_STATUS_CODE: TAbmesFloatField
      FieldName = 'FO_STATUS_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailFO_CLOSE_REQUESTED: TAbmesFloatField
      FieldName = 'FO_CLOSE_REQUESTED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object qryDeficitCoverDecisionsDetailFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object qryDeficitCoverDecisionsDetailFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object qryDeficitCoverDecisionsDetailFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object qryDeficitCoverDecisionsDetailINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailINVOICE_ABBREV: TAbmesWideStringField
      FieldName = 'INVOICE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryDeficitCoverDecisionsDetailIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
      ProviderFlags = []
    end
    object qryDeficitCoverDecisionsDetailINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
      ProviderFlags = []
    end
  end
  object qryGetNewDeliveryProjectCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  (Coalesce(Max(DELIVERY_PROJECT_CODE), 0) + 1) as NEW_CODE'
      'from'
      '  DELIVERY_PROJECTS'
      'where'
      '  (DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE) and'
      '  (DCD_OBJECT_CODE = :DCD_OBJECT_CODE)'
      ' '
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 224
    object qryGetNewDeliveryProjectCodeNEW_CODE: TAbmesFloatField
      FieldName = 'NEW_CODE'
    end
  end
  object qryInsertDeliveryContracts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'INVOICE_ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROFORM_INVOICE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'INVOICE_DATE'
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
      end>
    SQL.Strings = (
      'insert into DELIVERY_CONTRACTS'
      '('
      '  DELIVERY_OBJECT_BRANCH_CODE,'
      '  DELIVERY_OBJECT_CODE,'
      '  DCD_OBJECT_BRANCH_CODE,'
      '  DCD_OBJECT_CODE,'
      '  DELIVERY_PROJECT_CODE,'
      '  DELIVERY_TYPE_CODE,'
      '  PRIORITY_CODE,'
      '  INVOICE_NO,'
      '  INVOICE_ABBREV,'
      '  IS_PROFORM_INVOICE,'
      '  INVOICE_DATE,'
      '  CREATE_EMPLOYEE_CODE,'
      '  CREATE_DATE,'
      '  CREATE_TIME,'
      '  CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE,'
      '  CHANGE_TIME'
      ')'
      'values'
      '('
      '  :DELIVERY_OBJECT_BRANCH_CODE,'
      '  :DELIVERY_OBJECT_CODE,'
      '  :DCD_OBJECT_BRANCH_CODE,'
      '  :DCD_OBJECT_CODE,'
      '  :DELIVERY_PROJECT_CODE,'
      '  :DELIVERY_TYPE_CODE,'
      '  :PRIORITY_CODE,'
      '  :INVOICE_NO,'
      '  :INVOICE_ABBREV,'
      '  :IS_PROFORM_INVOICE,'
      '  :INVOICE_DATE,'
      '  :CREATE_EMPLOYEE_CODE,'
      '  :CREATE_DATE,'
      '  :CREATE_TIME,'
      '  :CHANGE_EMPLOYEE_CODE,'
      '  :CHANGE_DATE,'
      '  :CHANGE_TIME'
      ')'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 184
    Top = 224
  end
  object qryModifyDeliveryContracts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OLD_DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DCD_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'INVOICE_ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROFORM_INVOICE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'INVOICE_DATE'
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
        Name = 'OLD_DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update DELIVERY_CONTRACTS'
      'set'
      '  DCD_OBJECT_BRANCH_CODE = :OLD_DCD_OBJECT_BRANCH_CODE,'
      '  DCD_OBJECT_CODE = :OLD_DCD_OBJECT_CODE,'
      '  DELIVERY_PROJECT_CODE = :OLD_DELIVERY_PROJECT_CODE,'
      '  DELIVERY_TYPE_CODE = :DELIVERY_TYPE_CODE,'
      '  PRIORITY_CODE = :PRIORITY_CODE,'
      '  INVOICE_NO = :INVOICE_NO,'
      '  INVOICE_ABBREV = :INVOICE_ABBREV,'
      '  IS_PROFORM_INVOICE = :IS_PROFORM_INVOICE,'
      '  INVOICE_DATE = :INVOICE_DATE,'
      '  CHANGE_EMPLOYEE_CODE = :CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE = :CHANGE_DATE,'
      '  CHANGE_TIME = :CHANGE_TIME'
      'where'
      
        '  (DELIVERY_OBJECT_BRANCH_CODE = :OLD_DELIVERY_OBJECT_BRANCH_COD' +
        'E) and'
      '  (DELIVERY_OBJECT_CODE = :OLD_DELIVERY_OBJECT_CODE)'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 184
    Top = 272
  end
  object prvDeliveryTypes: TDataSetProvider
    DataSet = qryDeliveryTypes
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 736
    Top = 8
  end
  object prvDeficitCoverDecisionsDetail: TDataSetProvider
    DataSet = qryDeficitCoverDecisionsDetail
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = prvDeficitCoverDecisionsDetailAfterUpdateRecord
    BeforeUpdateRecord = prvDeficitCoverDecisionsDetailBeforeUpdateRecord
    Left = 224
    Top = 8
  end
  object prvDeficitCoverDecisionsMaster: TDataSetProvider
    DataSet = qryDeficitCoverDecisionsMaster
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 8
  end
  object prvDeliveries: TDataSetProvider
    DataSet = qryDeliveries
    Options = [poReadOnly, poDisableInserts, poDisableEdits, poDisableDeletes]
    UpdateMode = upWhereKeyOnly
    Left = 648
    Top = 8
  end
  object prvDeficitCoverDecision: TDataSetProvider
    DataSet = qryDeficitCoverDecision
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = prvDeficitCoverDecisionAfterUpdateRecord
    BeforeUpdateRecord = prvDeficitCoverDecisionBeforeUpdateRecord
    BeforeApplyUpdates = prvDeficitCoverDecisionBeforeApplyUpdates
    AfterApplyUpdates = prvDeficitCoverDecisionAfterApplyUpdates
    Left = 48
    Top = 120
  end
  object prvDelivery: TDataSetProvider
    DataSet = qryDelivery
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = prvDeliveryAfterUpdateRecord
    BeforeUpdateRecord = prvDeliveryBeforeUpdateRecord
    BeforeApplyUpdates = prvDeliveryBeforeApplyUpdates
    AfterApplyUpdates = prvDeliveryAfterApplyUpdates
    Left = 152
    Top = 120
  end
  object qryInsertPlannedStoreDeal: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PLANNED_MANUALLY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_QUANTITY'
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
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FINISH_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_TIME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into PLANNED_STORE_DEALS_FOR_EDIT'
      '(PLANNED_STORE_DEAL_BRANCH_CODE, PLANNED_STORE_DEAL_CODE,'
      
        ' PLANNED_STORE_DEAL_TYPE_CODE, PRIORITY_CODE, IS_PLANNED_MANUALL' +
        'Y,'
      
        ' BND_PROCESS_OBJECT_BRANCH_CODE, BND_PROCESS_OBJECT_CODE, BND_PR' +
        'OCESS_CODE,'
      
        ' STORE_CODE, STORE_DEAL_BEGIN_DATE, STORE_DEAL_END_DATE, STORE_D' +
        'EAL_TYPE_CODE,'
      ' PRODUCT_CODE, QUANTITY, ACCOUNT_QUANTITY,'
      ' CREATE_EMPLOYEE_CODE, CREATE_DATE, CREATE_TIME,'
      ' CHANGE_EMPLOYEE_CODE, CHANGE_DATE, CHANGE_TIME,'
      ' ANNUL_EMPLOYEE_CODE, ANNUL_DATE, ANNUL_TIME,'
      ' CLOSE_EMPLOYEE_CODE, CLOSE_DATE, CLOSE_TIME'
      ')'
      'values'
      '(:PLANNED_STORE_DEAL_BRANCH_CODE, :PLANNED_STORE_DEAL_CODE,'
      
        ' :PLANNED_STORE_DEAL_TYPE_CODE, :PRIORITY_CODE, :IS_PLANNED_MANU' +
        'ALLY,'
      
        ' :BND_PROCESS_OBJECT_BRANCH_CODE, :BND_PROCESS_OBJECT_CODE, :BND' +
        '_PROCESS_CODE,'
      
        ' :STORE_CODE, :STORE_DEAL_BEGIN_DATE, :STORE_DEAL_END_DATE, :STO' +
        'RE_DEAL_TYPE_CODE,'
      ' :PRODUCT_CODE, :WORK_QUANTITY, :ACCOUNT_QUANTITY,'
      ' :CREATE_EMPLOYEE_CODE, :CREATE_DATE, :CREATE_TIME,'
      ' :CHANGE_EMPLOYEE_CODE, :CHANGE_DATE, :CHANGE_TIME,'
      ' :ANNUL_EMPLOYEE_CODE, :ANNUL_DATE, :ANNUL_TIME,'
      ' :FINISH_EMPLOYEE_CODE, :FINISH_DATE, :FINISH_TIME'
      ')'
      ' '
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 624
    Top = 120
  end
  object qryModifyPlannedStoreDeal: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RETURN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RETURN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_QUANTITY'
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
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FINISH_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FINISH_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update PLANNED_STORE_DEALS_FOR_EDIT'
      'set'
      ' PRIORITY_CODE = :PRIORITY_CODE,'
      ' STORE_CODE = :STORE_CODE,'
      
        ' STORE_DEAL_BEGIN_DATE = Coalesce(:STORE_DEAL_BEGIN_DATE, Decode' +
        '(IN_OUT, 1, :RECEIVE_DATE, :RETURN_DATE)),'
      
        ' STORE_DEAL_END_DATE = Coalesce(:STORE_DEAL_END_DATE, Decode(IN_' +
        'OUT, 1, :RECEIVE_DATE, :RETURN_DATE)),'
      ' PRODUCT_CODE = :PRODUCT_CODE,'
      ' QUANTITY = :WORK_QUANTITY,'
      ' ACCOUNT_QUANTITY = :ACCOUNT_QUANTITY,'
      ' CHANGE_EMPLOYEE_CODE = :CHANGE_EMPLOYEE_CODE,'
      ' CHANGE_DATE = :CHANGE_DATE,'
      ' CHANGE_TIME = :CHANGE_TIME,'
      ' ANNUL_EMPLOYEE_CODE = :ANNUL_EMPLOYEE_CODE,'
      ' ANNUL_DATE = :ANNUL_DATE,'
      ' ANNUL_TIME = :ANNUL_TIME,'
      ' CLOSE_EMPLOYEE_CODE = :FINISH_EMPLOYEE_CODE,'
      ' CLOSE_DATE = :FINISH_DATE,'
      ' CLOSE_TIME = :FINISH_TIME'
      'where'
      
        ' (BND_PROCESS_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_CO' +
        'DE) and'
      ' (BND_PROCESS_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 624
    Top = 168
  end
  object qryAnnulPlannedStoreDeal: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update PLANNED_STORE_DEALS_FOR_EDIT'
      'set'
      ' ANNUL_EMPLOYEE_CODE = :ANNUL_EMPLOYEE_CODE,'
      ' ANNUL_DATE = :ANNUL_DATE,'
      ' ANNUL_TIME = :ANNUL_TIME'
      'where'
      
        ' (BND_PROCESS_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_CO' +
        'DE) and'
      ' (BND_PROCESS_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE) and'
      ' (ANNUL_EMPLOYEE_CODE is null)'
      ' '
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 624
    Top = 216
  end
  object qryCanAnnulRPD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  (1 - Sign(Count(*))) as CAN_ANNUL_RPD'
      'from'
      '  DELIVERY_PROJECTS dp'
      'where'
      '  (dp.DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = :DCD_OBJECT_CODE) and'
      '  (dp.ANNUL_EMPLOYEE_CODE is null)'
      ''
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 296
    Top = 336
    object qryCanAnnulRPDCAN_ANNUL_RPD: TAbmesFloatField
      FieldName = 'CAN_ANNUL_RPD'
      FieldValueType = fvtBoolean
    end
  end
  object qryCanCloseRPD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  (1 - Sign(Count(*))) as CAN_CLOSE_RPD'
      'from'
      '  DELIVERY_PROJECTS dp'
      'where'
      '  (dp.DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = :DCD_OBJECT_CODE) and'
      '  (dp.ANNUL_EMPLOYEE_CODE is null) and'
      '  (dp.FINISH_EMPLOYEE_CODE is null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 296
    Top = 384
    object qryCanCloseRPDCAN_CLOSE_RPD: TAbmesFloatField
      FieldName = 'CAN_CLOSE_RPD'
      FieldValueType = fvtBoolean
    end
  end
  object qryCanAnnulDelivery: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (1 - Sign(Count(sd.STORE_DEAL_OBJECT_BRANCH_CODE))) as CAN_ANN' +
        'UL_DELIVERY'
      'from'
      '  PLANNED_STORE_DEALS psd,'
      '  STORE_DEALS sd'
      'where'
      
        '  (:DELIVERY_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANCH_' +
        'CODE) and'
      '  (:DELIVERY_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      '  (psd.ANNUL_EMPLOYEE_CODE is null) and'
      
        '  (psd.PLANNED_STORE_DEAL_BRANCH_CODE = sd.PLANNED_STORE_DEAL_BR' +
        'ANCH_CODE) and'
      '  (psd.PLANNED_STORE_DEAL_CODE = sd.PLANNED_STORE_DEAL_CODE) and'
      '  (sd.STORNO_EMPLOYEE_CODE is null)'
      ' '
      ' '
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 184
    Top = 320
    object qryCanAnnulDeliveryCAN_ANNUL_DELIVERY: TAbmesFloatField
      FieldName = 'CAN_ANNUL_DELIVERY'
      FieldValueType = fvtBoolean
    end
  end
  object qryClosePlannedStoreDeal: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CLOSE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CLOSE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CLOSE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update PLANNED_STORE_DEALS_FOR_EDIT'
      'set'
      ' CLOSE_EMPLOYEE_CODE = :CLOSE_EMPLOYEE_CODE,'
      ' CLOSE_DATE = :CLOSE_DATE,'
      ' CLOSE_TIME = :CLOSE_TIME'
      'where'
      
        ' (BND_PROCESS_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_CO' +
        'DE) and'
      ' (BND_PROCESS_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE) and'
      ' (ANNUL_EMPLOYEE_CODE is null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 624
    Top = 264
  end
  object qryDCDPlannedRealQuantity: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Sum(psd.QUANTITY) as TOTAL_QUANTITY,'
      '  Sum(psd.ACCOUNT_QUANTITY) as TOTAL_ACCOUNT_QUANTITY,'
      '  dcd.P_WORK_QUANTITY as DCD_QUANTITY,'
      '  dcd.P_ACCOUNT_QUANTITY as DCD_ACCOUNT_QUANTITY'
      'from'
      '  DEFICIT_COVER_DECISIONS dcd,'
      '  DELIVERY_CONTRACTS dc,'
      '  PLANNED_STORE_DEALS psd'
      'where'
      '  (dcd.DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE) and'
      '  (dcd.DCD_OBJECT_CODE = :DCD_OBJECT_CODE) and'
      
        '  (dcd.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE(+)) an' +
        'd'
      '  (dcd.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE(+)) and'
      
        '  (dc.DELIVERY_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANC' +
        'H_CODE(+)) and'
      '  (dc.DELIVERY_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE(+)) and'
      '  (psd.ANNUL_EMPLOYEE_CODE(+) is null) and'
      '  (psd.IN_OUT(+) = 1)'
      'group by'
      '  dc.DCD_OBJECT_BRANCH_CODE,'
      '  dc.DCD_OBJECT_CODE,'
      '  dcd.P_WORK_QUANTITY,'
      '  dcd.P_ACCOUNT_QUANTITY'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 704
    Top = 440
    object qryDCDPlannedRealQuantityTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_QUANTITY'
    end
    object qryDCDPlannedRealQuantityDCD_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'DCD_ACCOUNT_QUANTITY'
    end
    object qryDCDPlannedRealQuantityTOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_QUANTITY'
    end
    object qryDCDPlannedRealQuantityDCD_QUANTITY: TAbmesFloatField
      FieldName = 'DCD_QUANTITY'
    end
  end
  object qryUpdatePSDQuantity: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ACCOUNT_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT_MEASURE_COEF'
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
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update PLANNED_STORE_DEALS_FOR_EDIT'
      'set'
      ' ACCOUNT_QUANTITY = :ACCOUNT_QUANTITY,'
      ' QUANTITY ='
      '   case'
      
        '     when (:ACCOUNT_QUANTITY > 0) and (:ACCOUNT_MEASURE_COEF > 0' +
        ') then'
      '       :ACCOUNT_QUANTITY / :ACCOUNT_MEASURE_COEF'
      '     else'
      '       0'
      '   end'
      ' ,'
      ' CHANGE_EMPLOYEE_CODE = :CHANGE_EMPLOYEE_CODE,'
      ' CHANGE_DATE = :CHANGE_DATE,'
      ' CHANGE_TIME = :CHANGE_TIME'
      'where'
      
        ' (BND_PROCESS_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_CO' +
        'DE) and'
      ' (BND_PROCESS_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 704
    Top = 392
  end
  object qryGetNewDCDCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  (Coalesce(Max(dcd.DCD_CODE), 0) + 1) as NEW_DCD_CODE'
      'from'
      '  DEFICIT_COVER_DECISIONS dcd'
      'where'
      '  (dcd.DCD_BRANCH_CODE = :DCD_BRANCH_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 296
    Top = 432
    object qryGetNewDCDCodeNEW_DCD_CODE: TAbmesFloatField
      FieldName = 'NEW_DCD_CODE'
    end
  end
  object qryDeletePSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete PLANNED_STORE_DEALS_FOR_EDIT'
      'where'
      
        ' (BND_PROCESS_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_CO' +
        'DE) and'
      ' (BND_PROCESS_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE) and'
      ' (ANNUL_EMPLOYEE_CODE is null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 760
    Top = 128
  end
  object qryExistsPSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Sign(Count(PLANNED_STORE_DEAL_CODE)) as EXISTS_PSD'
      'from '
      '  PLANNED_STORE_DEALS'
      'where'
      
        '  (BND_PROCESS_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANCH_C' +
        'ODE) and'
      '  (BND_PROCESS_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 760
    Top = 176
    object qryExistsPSDEXISTS_PSD: TAbmesFloatField
      FieldName = 'EXISTS_PSD'
      FieldValueType = fvtBoolean
    end
  end
  object qryDeliveryStoreDeals: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sd.STORE_DEAL_OBJECT_BRANCH_CODE,'
      '  sd.STORE_DEAL_OBJECT_CODE,'
      '  sd.STORE_DEAL_DATE,'
      '  sd.STORE_DEAL_NO,'
      '  sd.QUANTITY,'
      '  sd.ACCOUNT_QUANTITY,'
      '  sd.STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = sd.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as STORE_NAME'
      'from'
      '  STORE_DEALS sd'
      'where'
      '  (sd.STORNO_EMPLOYEE_CODE is null) and'
      
        '  (sd.BND_PROCESS_OBJECT_BRANCH_CODE = :DELIVERY_OBJECT_BRANCH_C' +
        'ODE) and'
      '  (sd.BND_PROCESS_OBJECT_CODE = :DELIVERY_OBJECT_CODE)'
      'order by'
      '  sd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  sd.BND_PROCESS_OBJECT_CODE'
      '  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 480
    Top = 168
    object qryDeliveryStoreDealsSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_DATE'
    end
    object qryDeliveryStoreDealsSTORE_DEAL_NO: TAbmesFloatField
      FieldName = 'STORE_DEAL_NO'
    end
    object qryDeliveryStoreDealsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryDeliveryStoreDealsACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qryDeliveryStoreDealsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryDeliveryStoreDealsSTORE_NAME: TAbmesWideStringField
      FieldName = 'STORE_NAME'
      Size = 45
    end
    object qryDeliveryStoreDealsSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
    end
    object qryDeliveryStoreDealsSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
    end
  end
  object prvDeliveryStoreDeals: TDataSetProvider
    DataSet = qryDeliveryStoreDeals
    Left = 480
    Top = 120
  end
  object prvStoreDeal: TDataSetProvider
    DataSet = qryStoreDeal
    Left = 360
    Top = 120
  end
  object qryStoreDeal: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  STORE_DEAL_OBJECT_BRANCH_CODE,'
      '  STORE_DEAL_OBJECT_CODE,'
      '  INVOICE_NO,'
      '  INVOICE_ABBREV,'
      '  INVOICE_DATE,'
      '  IS_PROFORM_INVOICE'
      'from'
      '  STORE_DEALS'
      'where'
      
        '  (STORE_DEAL_OBJECT_BRANCH_CODE = :STORE_DEAL_OBJECT_BRANCH_COD' +
        'E) and'
      '  (STORE_DEAL_OBJECT_CODE = :STORE_DEAL_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'STORE_DEALS_FOR_EDIT'
    Left = 360
    Top = 168
    object qryStoreDealSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryStoreDealSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryStoreDealINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object qryStoreDealINVOICE_ABBREV: TAbmesWideStringField
      FieldName = 'INVOICE_ABBREV'
      Size = 5
    end
    object qryStoreDealINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object qryStoreDealIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
    end
  end
  object prvDeliveryDealTypes: TDataSetProvider
    DataSet = qryDeliveryDealTypes
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 224
  end
  object qryDeliveryDealTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  bdt.BORDER_DEAL_TYPE_CODE,'
      '  bdt.BORDER_DEAL_TYPE_ABBREV,'
      '  bdt.BORDER_DEAL_TYPE_NAME,'
      '  bdt.PROD_ORDER_BASE_TYPE_CODE,'
      '  bdt.OBTAINMENT_TYPE_CODE'
      'from'
      '  DELIVERY_DEAL_TYPES ddt,'
      '  BORDER_DEAL_TYPES bdt'
      'where'
      '  (ddt.DELIVERY_DEAL_TYPE_CODE = bdt.BORDER_DEAL_TYPE_CODE)'
      'order by'
      '  BORDER_DEAL_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 272
    object qryDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_DEAL_TYPE_CODE'
    end
    object qryDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object qryDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_NAME'
      Size = 100
    end
    object qryDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object qryDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
  end
  object qryDeliveryDecisions: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  dd.DELIVERY_DECISION_CODE,'
      '  dd.DELIVERY_DECISION_ABBREV,'
      '  dd.DELIVERY_DECISION_NAME,'
      '  dd.DELIVERY_DECISION_NO,'
      '  dd.ALLOWS_DELIVERY_CONTRACT,'
      '  dd.IS_ESTIMATION_BOUND,'
      '  dd.IS_REALIZATION_BOUND,'
      '  dd.REQUIRES_FINISHING'
      ''
      'from'
      '  DELIVERY_DECISIONS dd'
      ''
      'order by'
      '  DELIVERY_DECISION_NO'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 568
    Top = 504
    object qryDeliveryDecisionsDELIVERY_DECISION_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DECISION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDeliveryDecisionsDELIVERY_DECISION_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DECISION_ABBREV'
      Size = 5
    end
    object qryDeliveryDecisionsDELIVERY_DECISION_NAME: TAbmesWideStringField
      FieldName = 'DELIVERY_DECISION_NAME'
      Size = 50
    end
    object qryDeliveryDecisionsDELIVERY_DECISION_NO: TAbmesFloatField
      FieldName = 'DELIVERY_DECISION_NO'
    end
    object qryDeliveryDecisionsALLOWS_DELIVERY_CONTRACT: TAbmesFloatField
      FieldName = 'ALLOWS_DELIVERY_CONTRACT'
    end
    object qryDeliveryDecisionsIS_ESTIMATION_BOUND: TAbmesFloatField
      FieldName = 'IS_ESTIMATION_BOUND'
      FieldValueType = fvtBoolean
    end
    object qryDeliveryDecisionsIS_REALIZATION_BOUND: TAbmesFloatField
      FieldName = 'IS_REALIZATION_BOUND'
      FieldValueType = fvtBoolean
    end
    object qryDeliveryDecisionsREQUIRES_FINISHING: TAbmesFloatField
      FieldName = 'REQUIRES_FINISHING'
    end
  end
  object prvDeliveryDecisions: TDataSetProvider
    DataSet = qryDeliveryDecisions
    UpdateMode = upWhereKeyOnly
    Left = 568
    Top = 456
  end
  object qryDeliveryProductInfo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDOR_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select  '
      '  x.MARKET_PRICE,'
      '  (x.MARKET_PRICE / x.ACCOUNT_MEASURE_COEF) as ACC_MARKET_PRICE,'
      '  x.MARKET_PRICE_CURRENCY_CODE,'
      ''
      '  x.DELIVERY_LEASE_PRICE,'
      
        '  (x.MARKET_PRICE_CURRENCY_CODE / x.ACCOUNT_MEASURE_COEF) as ACC' +
        '_DELIVERY_LEASE_PRICE,'
      '  x.DELIVERY_LEASE_CURRENCY_CODE,'
      '  DELIVERY_LEASE_DATE_UNIT_CODE,'
      ''
      '  x.SPEC_STATE_CODE,'
      ''
      '  x.PRODUCT_PRIORITY_NO,'
      '  x.PRODUCT_PRIORITY_COLOR,'
      '  x.PRODUCT_PRIORITY_BK_COLOR,'
      '  '
      '  x.PRP_DOC_BRANCH_CODE,'
      '  x.PRP_DOC_CODE,'
      '  x.PRP_HAS_DOC'
      ''
      'from'
      '  ( select'
      
        '      ( Coalesce(prpp.ACQUIRE_SINGLE_PRICE, pper.DELIVERY_ACQUIR' +
        'E_SINGLE_PRICE) * '
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      
        '            (cr.CURRENCY_CODE = Coalesce(prpp.ACQUIRE_CURRENCY_C' +
        'ODE, pper.DELIVERY_ACQUIRE_CURRENCY_CODE)) and'
      
        '            (cr.RATE_DATE = Least(Coalesce(Cast(:TO_DATE as Date' +
        '), ContextDate), ContextDate))'
      '        ) / '
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      
        '            (cr.CURRENCY_CODE = Coalesce(To_Number(:CURRENCY_COD' +
        'E), prpp.ACQUIRE_CURRENCY_CODE, pper.DELIVERY_ACQUIRE_CURRENCY_C' +
        'ODE)) and'
      
        '            (cr.RATE_DATE = Least(Coalesce(Cast(:TO_DATE as Date' +
        '), ContextDate), ContextDate))'
      '        ) '
      '      ) as MARKET_PRICE,'
      '      '
      
        '      Coalesce(To_Number(:CURRENCY_CODE), prpp.ACQUIRE_CURRENCY_' +
        'CODE, pper.DELIVERY_ACQUIRE_CURRENCY_CODE) as MARKET_PRICE_CURRE' +
        'NCY_CODE,'
      ''
      
        '      ( Coalesce(prpp.LEASE_SINGLE_PRICE, pper.DELIVERY_LEASE_SI' +
        'NGLE_PRICE) * '
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      
        '            (cr.CURRENCY_CODE = Coalesce(prpp.LEASE_CURRENCY_COD' +
        'E, pper.DELIVERY_LEASE_CURRENCY_CODE)) and'
      
        '            (cr.RATE_DATE = Least(Coalesce(Cast(:TO_DATE as Date' +
        '), ContextDate), ContextDate))'
      '        ) / '
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      
        '            (cr.CURRENCY_CODE = Coalesce(To_Number(:CURRENCY_COD' +
        'E), prpp.LEASE_CURRENCY_CODE, pper.DELIVERY_LEASE_CURRENCY_CODE)' +
        ') and'
      
        '            (cr.RATE_DATE = Least(Coalesce(Cast(:TO_DATE as Date' +
        '), ContextDate), ContextDate))'
      '        ) '
      '      ) as DELIVERY_LEASE_PRICE,'
      ''
      
        '      Coalesce(To_Number(:CURRENCY_CODE), prpp.LEASE_CURRENCY_CO' +
        'DE, pper.DELIVERY_LEASE_CURRENCY_CODE) as DELIVERY_LEASE_CURRENC' +
        'Y_CODE,'
      ''
      '      pper.DELIVERY_LEASE_DATE_UNIT_CODE,'
      ''
      '      p.ACCOUNT_MEASURE_COEF,'
      ''
      '      1 as SPEC_STATE_CODE,'
      ''
      '      p.PRIORITY_NO as PRODUCT_PRIORITY_NO,'
      '      ( select'
      '          pr.PRIORITY_COLOR'
      '        from'
      '          PRIORITIES pr'
      '        where'
      '          (pr.PRIORITY_NO = p.PRIORITY_NO)'
      '      ) as PRODUCT_PRIORITY_COLOR,'
      '      ( select'
      '          pr.PRIORITY_BACKGROUND_COLOR'
      '        from'
      '          PRIORITIES pr'
      '        where'
      '          (pr.PRIORITY_NO = p.PRIORITY_NO)'
      '      ) as PRODUCT_PRIORITY_BK_COLOR,'
      ''
      '      prp.DOC_BRANCH_CODE as PRP_DOC_BRANCH_CODE,'
      '      prp.DOC_CODE as PRP_DOC_CODE,'
      '      1 as PRP_HAS_DOC'
      ''
      '    from'
      '      ( select'
      '          p.PRODUCT_CODE,'
      '          p.ACCOUNT_MEASURE_COEF,'
      '          NullIf('
      '            Greatest('
      '              Coalesce('
      '                ( select'
      '                    pr.PRIORITY_NO'
      '                  from'
      '                    PRIORITIES pr'
      '                  where'
      '                    (pr.PRIORITY_CODE = p.USED_BY_SALES_PR_CODE)'
      '                ),'
      '                0'
      '              ),'
      '              Coalesce('
      '                ( select'
      '                    pr.PRIORITY_NO'
      '                  from'
      '                    PRIORITIES pr'
      '                  where'
      
        '                    (pr.PRIORITY_CODE = p.PROV_BY_DELIVERIES_PR_' +
        'CODE)'
      '                ),'
      '                0'
      '              )'
      '            ),'
      '            0'
      '          ) as PRIORITY_NO'
      '        from'
      '          PRODUCTS p'
      '        where'
      '          (p.PRODUCT_CODE = :PRODUCT_CODE)'
      '      ) p,'
      '      PRODUCT_PERIODS pper,'
      '      PAR_REL_PRODUCT_PERIODS prpp,'
      '      PAR_REL_PRODUCTS prp'
      ''
      '    where'
      '      (p.PRODUCT_CODE = pper.PRODUCT_CODE(+)) and'
      
        '      (Coalesce(Cast(:TO_DATE as Date), ContextDate) between ppe' +
        'r.BEGIN_DATE(+) and pper.END_DATE(+)) and'
      ''
      '      (:VENDOR_COMPANY_CODE = prpp.PARTNER_CODE(+)) and'
      '      (%brt_VENDOR = prpp.BORDER_REL_TYPE_CODE(+)) and'
      '      (p.PRODUCT_CODE = prpp.PRODUCT_CODE(+)) and'
      
        '      (Coalesce(Cast(:TO_DATE as Date), ContextDate) between prp' +
        'p.BEGIN_DATE(+) and prpp.END_DATE(+)) and'
      ''
      '      (prpp.PARTNER_CODE = prp.PARTNER_CODE(+)) and'
      
        '      (prpp.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE(+)) ' +
        'and'
      '      (prpp.PRODUCT_CODE = prp.PRODUCT_CODE(+))'
      '  ) x'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'brt_VENDOR'
        ParamType = ptInput
        Value = '2'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 408
    Top = 376
    object qryDeliveryProductInfoMARKET_PRICE: TAbmesFloatField
      FieldName = 'MARKET_PRICE'
    end
    object qryDeliveryProductInfoACC_MARKET_PRICE: TAbmesFloatField
      FieldName = 'ACC_MARKET_PRICE'
    end
    object qryDeliveryProductInfoMARKET_PRICE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'MARKET_PRICE_CURRENCY_CODE'
    end
    object qryDeliveryProductInfoDELIVERY_LEASE_PRICE: TAbmesFloatField
      FieldName = 'DELIVERY_LEASE_PRICE'
    end
    object qryDeliveryProductInfoACC_DELIVERY_LEASE_PRICE: TAbmesFloatField
      FieldName = 'ACC_DELIVERY_LEASE_PRICE'
    end
    object qryDeliveryProductInfoDELIVERY_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_LEASE_CURRENCY_CODE'
    end
    object qryDeliveryProductInfoDELIVERY_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_LEASE_DATE_UNIT_CODE'
    end
    object qryDeliveryProductInfoSPEC_STATE_CODE: TAbmesFloatField
      FieldName = 'SPEC_STATE_CODE'
    end
    object qryDeliveryProductInfoPRODUCT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_NO'
    end
    object qryDeliveryProductInfoPRODUCT_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_COLOR'
    end
    object qryDeliveryProductInfoPRODUCT_PRIORITY_BK_COLOR: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_BK_COLOR'
    end
    object qryDeliveryProductInfoPRP_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRP_DOC_BRANCH_CODE'
    end
    object qryDeliveryProductInfoPRP_DOC_CODE: TAbmesFloatField
      FieldName = 'PRP_DOC_CODE'
    end
    object qryDeliveryProductInfoPRP_HAS_DOC: TAbmesFloatField
      FieldName = 'PRP_HAS_DOC'
    end
  end
  object prvDeliveryProductInfo: TDataSetProvider
    DataSet = qryDeliveryProductInfo
    Left = 408
    Top = 328
  end
  object qryDeliveriyDialogs: TAbmesSQLQuery
    BeforeOpen = qryDeliveriyDialogsBeforeOpen
    AfterClose = qryDeliveriyDialogsAfterClose
    OnCalcFields = qryDeliveriyDialogsCalcFields
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATUS_CODE'
        ParamType = ptInput
        Value = '8'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
        Value = '3'
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
        Name = 'ASPECT_TYPE_CODE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVATED_BY_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVATED_BY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVATED_BY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVATED_BY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_CONTRACT_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_CONTRACT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_CONTRACT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_CONTRACT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DIALOG_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DIALOG_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDOR_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDOR_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDOR_COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDOR_COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_VENDOR_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_VENDOR_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_MEDIATOR_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_MEDIATOR_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_MEDIATOR_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_MEDIATOR_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_SALE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_SALE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_SALE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
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
        Name = 'HAS_SALE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_AGREED_QUANTITY'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_AGREED_QUANTITY'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_AGREED_SINGLE_PRICE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_AGREED_SINGLE_PRICE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'STREAM_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STREAM_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_TYPE_CODE'
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
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DECISION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DECISION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DECISION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DECISION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PROGNOSIS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PROGNOSIS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PROGNOSIS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PROGNOSIS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PLAN_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PLAN_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PLAN_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PLAN_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REAL_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REAL_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REAL_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REAL_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PLAN_VENDOR_POS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PLAN_VENDOR_POS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PLAN_VENDOR_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PLAN_VENDOR_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REAL_VENDOR_POS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REAL_VENDOR_POS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REAL_VENDOR_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REAL_VENDOR_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PLAN_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PLAN_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PLAN_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PLAN_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REAL_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REAL_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REAL_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REAL_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PROGNOSIS_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PROGNOSIS_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PROGNOSIS_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PROGNOSIS_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_POSITION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_POSITION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_POSITION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_POSITION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_VENDOR_POSITION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_VENDOR_POSITION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_VENDOR_POSITION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_VENDOR_POSITION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DECISION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DECISION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DECISION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DECISION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PAR_REL_PRODUCT'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'PAR_REL_PRODUCT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PAR_REL_PRODUCT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PAR_REL_PRODUCT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PAR_REL_PRODUCT'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.DCD_OBJECT_BRANCH_CODE,'
      '  dp.DCD_OBJECT_CODE,'
      '  dp.DELIVERY_PROJECT_CODE,'
      ''
      '  Nvl2(dp.ANNUL_EMPLOYEE_CODE,'
      '    11,'
      '    Nvl2(dp.FINISH_EMPLOYEE_CODE,'
      '      10,'
      '      Nvl2(dc.DELIVERY_OBJECT_BRANCH_CODE,'
      '        9,'
      '        Nvl2(dp.REAL_DECISION_DATE,'
      '          8,'
      '          Nvl2(dp.REAL_VENDOR_POSITION_DATE,'
      
        '            Decode(Sign(Coalesce(dcd.PLAN_DECISION_DATE, Context' +
        'Date) - ContextDate), -1,'
      '              7,'
      '              6'
      '            ),'
      '            Nvl2(dp.REAL_POSITION_DATE,'
      
        '              Decode(Sign(Coalesce(dp.PLAN_VENDOR_POSITION_DATE,' +
        ' ContextDate) - ContextDate), -1,'
      '                5,'
      '                4'
      '              ),'
      '              Nvl2(dp.PLAN_POSITION_DATE,'
      
        '                Decode(Sign(dp.PLAN_POSITION_DATE - ContextDate)' +
        ', -1,'
      '                  3,'
      '                  2'
      '                ),'
      '                1'
      '              )'
      '            )'
      '          )'
      '        )'
      '      )'
      '    )'
      '  ) as STATUS_CODE,'
      ''
      '  ( select'
      '      aty.ASPECT_TYPE_ABBREV'
      '    from'
      '      ASPECT_TYPES aty'
      '    where'
      '      (aty.ASPECT_TYPE_CODE = dcd.ASPECT_TYPE_CODE)'
      '  ) as ASPECT_TYPE_ABBREV,'
      ''
      '  ( select'
      
        '     (d.CUSTOM_CODE || '#39'/'#39' || dcd.DCD_CODE || '#39'/'#39' || dp.DELIVERY' +
        '_PROJECT_CODE || '#39'/'#39' || st.STREAM_TYPE_ABBREV)'
      '    from'
      '      DEPTS d,'
      '      STREAM_TYPES st'
      '    where'
      '      (dcd.DCD_BRANCH_CODE = d.DEPT_CODE) and'
      '      (dcd.STREAM_TYPE_CODE = st.STREAM_TYPE_CODE)'
      '  ) as DELIVERY_ID,'
      ''
      '  dp.DOC_BRANCH_CODE,'
      '  dp.DOC_CODE,'
      
        '  MiscUtils.HasDocItems(dp.DOC_BRANCH_CODE, dp.DOC_CODE) as HAS_' +
        'DOCUMENTATION,'
      ''
      '  dp.IS_ACTIVATED_BY_VENDOR,'
      ''
      '  ( select'
      
        '      e.ABBREV || '#39'        '#39' || e.FIRST_NAME || '#39' '#39' || e.MIDDLE_' +
        'NAME || '#39' '#39' || e.LAST_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = dp.DIALOG_EMPLOYEE_CODE)'
      '  ) as DIALOG_EMPLOYEE_NAME,'
      ''
      
        '  %COMPANY_BASE_ROLE_CODE[dp.VENDOR_COMPANY_CODE] as BASE_ROLE_C' +
        'ODE,'
      ''
      '  ( select'
      '      csc.COMPANY_STATUS_CODE'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc'
      '    where'
      '      (csc.COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
      ''
      '      (csc.STATUS_DATE = ('
      '        select'
      '          Max(STATUS_DATE)'
      '        from'
      '          COMPANY_STATUSES_CHANGES csc2'
      '        where'
      '          (csc2.COMPANY_CODE = csc.COMPANY_CODE)'
      '        )'
      '      )'
      '  ) as COMPANY_STATUS_CODE,'
      ''
      '  ( select'
      '      cs.COMPANY_STATUS_NAME'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc,'
      '      COMPANY_STATUSES cs'
      '    where'
      '      (csc.COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
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
      '  ) as COMPANY_STATUS_NAME,'
      ''
      '  dp.VENDOR_COMPANY_CODE,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE) '
      '  ) as VENDOR_COMPANY_NAME,'
      ''
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      VENDOR_COMPANIES c,'
      '      PRIORITIES p'
      '    where'
      '      (c.VENDOR_COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
      '      (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as VENDOR_PRIORITY_NO,'
      ''
      '  ( select'
      '      p.PRIORITY_COLOR'
      '    from'
      '      VENDOR_COMPANIES c,'
      '      PRIORITIES p'
      '    where'
      '      (c.VENDOR_COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
      '      (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as VENDOR_PRIORITY_COLOR,'
      ''
      '  ( select'
      '      p.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      VENDOR_COMPANIES c,'
      '      PRIORITIES p'
      '    where'
      '      (c.VENDOR_COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
      '      (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as VENDOR_PRIORITY_BK_COLOR,'
      ''
      '  ( select'
      '      c.DOC_BRANCH_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE)'
      '  ) as VENDOR_DOC_BRANCH_CODE,'
      '  ( select'
      '      c.DOC_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE)'
      '  ) as VENDOR_DOC_CODE,'
      '  ( select'
      '      %HAS_DOC_ITEMS[c]'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE)'
      '  ) as VENDOR_HAS_DOCUMENTATION,'
      ''
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (dc.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      ''
      '  ( select'
      '      p.PRIORITY_COLOR'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (dc.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_COLOR,'
      ''
      '  ( select'
      '      p.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      PRIORITIES p'
      '    where'
      '      (dc.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
      ''
      '  Nvl2(dp.MEDIATOR_COMPANY_CODE, 1, 0) as HAS_MEDIATOR,'
      ''
      '  dp.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      ''
      '  ( select'
      '      cp.NAME'
      '    from'
      '      COMPANY_PRODUCTS cp'
      '    where'
      '      (dp.VENDOR_COMPANY_CODE = cp.COMPANY_CODE) and'
      '      (dp.PRODUCT_CODE = cp.PRODUCT_CODE)'
      '  ) as VENDOR_PRODUCT_NAME,'
      ''
      '  ( select'
      
        '      po.PRODUCT_ORIGIN_ABBREV || '#39'     '#39' || po.PRODUCT_ORIGIN_N' +
        'AME '
      '    from'
      '      PRODUCT_ORIGINS po'
      '    where'
      '      (po.PRODUCT_ORIGIN_CODE = p.PRODUCT_ORIGIN_CODE)'
      '  ) as PRODUCT_ORIGIN_ABBREV_AND_NAME,'
      ''
      '  p.MEASURE_CODE,'
      ''
      '  Decode(dcd.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        m.MEASURE_ABBREV'
      '      from'
      '        MEASURES m'
      '      where'
      '        (m.MEASURE_CODE = p.MEASURE_CODE)'
      '    )'
      '  ) as MEASURE_ABBREV,'
      ''
      '  p.ACCOUNT_MEASURE_CODE,'
      ''
      '  Decode(dcd.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        m.MEASURE_ABBREV'
      '      from'
      '        MEASURES m'
      '      where'
      '        (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '    )'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      
        '  MiscUtils.HasDocItems(p.DOC_BRANCH_CODE, p.DOC_CODE) as PRODUC' +
        'T_HAS_DOCUMENTATION,'
      ''
      '  dp.REGISTER_DATE,'
      
        '  (dcd.PLAN_DECISION_DATE - dp.REGISTER_DATE) as PLAN_PERIOD_DAY' +
        'S,'
      
        '  (dp.REAL_DECISION_DATE - dp.REGISTER_DATE) as REAL_PERIOD_DAYS' +
        ','
      ''
      '  Decode((dp.REAL_DECISION_DATE - dp.REGISTER_DATE), 0,'
      '    To_number(null),'
      
        '    (dcd.PLAN_DECISION_DATE - dp.REAL_DECISION_DATE) / (dp.REAL_' +
        'DECISION_DATE - dp.REGISTER_DATE)'
      '  ) as REAL_PERIOD_DEVIATION_PERCENT,'
      ''
      
        '  (dp.PLAN_POSITION_DATE - Coalesce(dp.REAL_POSITION_DATE, Conte' +
        'xtDate)) as POSITION_DAYS_RSV,'
      
        '  (dp.PLAN_VENDOR_POSITION_DATE - Coalesce(dp.REAL_VENDOR_POSITI' +
        'ON_DATE, ContextDate)) as VENDOR_POSITION_DAYS_RSV,'
      
        '  (dcd.PLAN_DECISION_DATE - Coalesce(dp.REAL_DECISION_DATE, Cont' +
        'extDate)) as DECISION_DAYS_RSV,'
      ''
      '  dp.DELIVERY_DECISION_CODE,'
      '  ( select'
      '      dd.DELIVERY_DECISION_ABBREV'
      '    from'
      '      DELIVERY_DECISIONS dd'
      '    where'
      '      (dd.DELIVERY_DECISION_CODE = dp.DELIVERY_DECISION_CODE)'
      '  ) as DELIVERY_DECISION_ABBREV,'
      ''
      '  dp.PROGNOSIS_BEGIN_DATE,'
      '  dp.PROGNOSIS_END_DATE,'
      ''
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 1, Coalesce(dp.WORK_QUANTITY, Coa' +
        'lesce(dp.VENDOR_OFFER_QUANTITY, dp.OUR_OFFER_QUANTITY)), To_numb' +
        'er(null)) as PROGNOSIS_QUANTITY,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 1, p.MEASURE_CODE, To_number(null' +
        ')) as PROGNOSIS_MEASURE_CODE,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    ( select'
      '        m.MEASURE_ABBREV'
      '      from'
      '        MEASURES m'
      '      where'
      '        (m.MEASURE_CODE = p.MEASURE_CODE)'
      '    ),'
      '    null'
      '  ) as PROGNOSIS_MEASURE_ABBREV,'
      ''
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      
        '    Coalesce(dp.LEASE_DATE_UNIT_QTY, Coalesce(dp.V_OFFER_LEASE_D' +
        'ATE_UNIT_QTY, dp.OUR_OFFER_LEASE_DATE_UNIT_QTY)),'
      '    To_number(null)'
      '  ) as PROGNOSIS_LEASE_DATE_UNIT_QTY,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      
        '    Coalesce(dp.LEASE_DATE_UNIT_CODE, Coalesce(dp.V_OFFER_LEASE_' +
        'DATE_UNIT_CODE, dp.OUR_OFFER_LEASE_DATE_UNIT_CODE)),'
      '    To_number(null)'
      '  ) as PROGNOSIS_LEASE_DATE_UNIT_CODE,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    ( select'
      '        tdu.THE_DATE_UNIT_NAME'
      '      from'
      '        THE_DATE_UNITS tdu'
      '      where'
      
        '        (tdu.THE_DATE_UNIT_CODE = Coalesce(dp.LEASE_DATE_UNIT_CO' +
        'DE, Coalesce(dp.V_OFFER_LEASE_DATE_UNIT_CODE, dp.OUR_OFFER_LEASE' +
        '_DATE_UNIT_CODE)))'
      '    ),'
      '    To_number(null)'
      '  ) as PROGNOSIS_LEASE_DATE_UNIT_NAME,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    Coalesce('
      '      dp.WORK_QUANTITY * dp.LEASE_DATE_UNIT_QTY,'
      '      Coalesce('
      
        '        dp.V_OFFER_LEASE_DATE_UNIT_QTY * dp.V_OFFER_LEASE_DATE_U' +
        'NIT_QTY,'
      
        '        dp.OUR_OFFER_LEASE_DATE_UNIT_QTY * dp.OUR_OFFER_LEASE_DA' +
        'TE_UNIT_QTY'
      '      )'
      '    ),'
      '    To_number(null)'
      '  ) as PROGNOSIS_TOTAL_LEASE_QUANTITY,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    Coalesce('
      '      dp.WORK_QUANTITY * dp.LEASE_DATE_UNIT_QTY,'
      '      Coalesce('
      
        '        dp.V_OFFER_LEASE_DATE_UNIT_QTY * dp.V_OFFER_LEASE_DATE_U' +
        'NIT_QTY,'
      
        '        dp.OUR_OFFER_LEASE_DATE_UNIT_QTY * dp.OUR_OFFER_LEASE_DA' +
        'TE_UNIT_QTY'
      '      )'
      '    ),'
      '    To_number(null)'
      '  ) * p.ACCOUNT_MEASURE_COEF as PROGNOSIS_ACC_TOTAL_LEASE_QTY,'
      ''
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      
        '    Nvl2(dp.WORK_QUANTITY + dp.LEASE_DATE_UNIT_QTY + dp.LEASE_DA' +
        'TE_UNIT_CODE, 1, 0),'
      '    To_number(null)'
      '  ) as IS_LEASE_QUANTITY_AGREED,'
      ''
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 1, Coalesce(dp.ACCOUNT_QUANTITY, ' +
        'Coalesce(dp.VENDOR_OFFER_ACCOUNT_QUANTITY, dp.OUR_OFFER_ACCOUNT_' +
        'QUANTITY)), To_number(null)) as PROGNOSIS_ACCOUNT_QUANTITY,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 1, p.ACCOUNT_MEASURE_CODE, To_num' +
        'ber(null)) as PROGNOSIS_ACCOUNT_MEASURE_CODE,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    ( select'
      '        m.MEASURE_ABBREV'
      '      from'
      '        MEASURES m'
      '      where'
      '        (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '    ),'
      '    null'
      '  ) as PROGNOSIS_ACC_MEASURE_ABBREV,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    Nvl2(dp.WORK_QUANTITY, 1, 0),'
      '    To_number(null)'
      '  ) as IS_QUANTITY_AGREED,'
      ''
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 1, Coalesce((dp.TOTAL_PRICE / (Nu' +
        'llIf(dp.WORK_QUANTITY, 0) * %LEASE_DATE_UNIT_QTY[dcd~dp])), Coal' +
        'esce(dp.VENDOR_OFFER_SINGLE_PRICE, dp.OUR_OFFER_SINGLE_PRICE)), ' +
        'To_number(null)) as PROGNOSIS_SINGLE_PRICE,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 1, Coalesce((dp.TOTAL_PRICE / (Nu' +
        'llIf(dp.ACCOUNT_QUANTITY, 0) * %LEASE_DATE_UNIT_QTY[dcd~dp])), C' +
        'oalesce(dp.VENDOR_OFFER_SINGLE_PRICE, dp.OUR_OFFER_SINGLE_PRICE)' +
        ' / p.ACCOUNT_MEASURE_COEF), To_number(null)) as PROGNOSIS_ACCOUN' +
        'T_SINGLE_PRICE,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 1, Coalesce(dp.CURRENCY_CODE, Coa' +
        'lesce(dp.VENDOR_OFFER_CURRENCY_CODE, dp.OUR_OFFER_CURRENCY_CODE)' +
        ')) as PROGNOSIS_CURRENCY_CODE,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    Coalesce('
      '      ( select'
      '          c.CURRENCY_ABBREV'
      '        from'
      '          CURRENCIES c'
      '        where'
      '          (c.CURRENCY_CODE = dp.CURRENCY_CODE)'
      '      ),'
      '      Coalesce('
      '        ( select'
      '            c.CURRENCY_ABBREV'
      '          from'
      '            CURRENCIES c'
      '          where'
      '            (c.CURRENCY_CODE = dp.VENDOR_OFFER_CURRENCY_CODE)'
      '        ),'
      '        ( select'
      '            c.CURRENCY_ABBREV'
      '          from'
      '            CURRENCIES c'
      '          where'
      '            (c.CURRENCY_CODE = dp.OUR_OFFER_CURRENCY_CODE)'
      '        )'
      '      )'
      '    )'
      '  ) as PROGNOSIS_CURRENCY_ABBREV,'
      '  ( select'
      '      tcr.FIXING'
      '    from'
      '      TODAY_CURRENCY_RATES tcr'
      '    where'
      
        '      (tcr.CURRENCY_CODE = Decode(dcd.ASPECT_TYPE_CODE, 1, Coale' +
        'sce(dp.CURRENCY_CODE, Coalesce(dp.VENDOR_OFFER_CURRENCY_CODE, dp' +
        '.OUR_OFFER_CURRENCY_CODE))))'
      '  ) as PROGNOSIS_CURRENCY_FIXING,'
      ''
      '  Decode(dcd.ASPECT_TYPE_CODE, 1,'
      '    Nvl2(dp.TOTAL_PRICE, 1, 0),'
      '    To_number(null)'
      '  ) as IS_PRICE_AGREED,'
      ''
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, dp.DELIVERY_DATE) as DELIVERY_' +
        'DATE,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, dp.WORK_QUANTITY) as WORK_QUAN' +
        'TITY,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, dp.ACCOUNT_QUANTITY) as ACCOUN' +
        'T_QUANTITY,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, (dp.TOTAL_PRICE / (NullIf(dp.W' +
        'ORK_QUANTITY, 0) * %LEASE_DATE_UNIT_QTY[dcd~dp]))) as SINGLE_PRI' +
        'CE,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, (dp.TOTAL_PRICE / (NullIf(dp.A' +
        'CCOUNT_QUANTITY, 0) * %LEASE_DATE_UNIT_QTY[dcd~dp]))) as ACCOUNT' +
        '_SINGLE_PRICE,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 2,'
      '    ( dp.TOTAL_PRICE *'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          TODAY_CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = dp.CURRENCY_CODE)'
      '      )'
      '    )'
      '  ) as TOTAL_PRICE,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, dp.CURRENCY_CODE) as CURRENCY_' +
        'CODE,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        c.CURRENCY_ABBREV'
      '      from'
      '        CURRENCIES c'
      '      where'
      '        (c.CURRENCY_CODE = dp.CURRENCY_CODE)'
      '    )'
      '  ) as CURRENCY_ABBREV,'
      ''
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, dp.LEASE_DATE_UNIT_CODE) as LE' +
        'ASE_DATE_UNIT_CODE,'
      '  Decode(dcd.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        tdu.THE_DATE_UNIT_NAME'
      '      from'
      '        THE_DATE_UNITS tdu'
      '      where'
      '        (tdu.THE_DATE_UNIT_CODE = dp.LEASE_DATE_UNIT_CODE)'
      '    )'
      '  ) as LEASE_DATE_UNIT_NAME,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, dp.LEASE_DATE_UNIT_QTY) as LEA' +
        'SE_DATE_UNIT_QTY,'
      ''
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, (dp.WORK_QUANTITY * dp.LEASE_D' +
        'ATE_UNIT_QTY)) as TOTAL_LEASE_QUANTITY,'
      
        '  Decode(dcd.ASPECT_TYPE_CODE, 2, (dp.ACCOUNT_QUANTITY * dp.LEAS' +
        'E_DATE_UNIT_QTY)) as TOTAL_ACCOUNT_LEASE_QUANTITY,'
      ''
      '  dp.RECEIVE_DATE,'
      '  dp.RETURN_DATE,'
      ''
      '  ( select'
      '      ( select'
      '          prps.PAR_REL_PRODUCT_STATUS_NAME'
      '        from'
      '          PAR_REL_PRODUCT_STATUSES prps'
      '        where'
      
        '          (prps.PAR_REL_PRODUCT_STATUS_CODE = prpsc.PAR_REL_PROD' +
        'UCT_STATUS_CODE)'
      '      )'
      '    from'
      '      PAR_REL_PRODUCT_STATUS_CHANGES prpsc'
      '    where'
      '      (prpsc.PARTNER_CODE = dp.VENDOR_COMPANY_CODE) and'
      '      (prpsc.BORDER_REL_TYPE_CODE = %brt_VENDOR) and'
      '      (prpsc.PRODUCT_CODE = dp.PRODUCT_CODE) and'
      '      (prpsc.STATUS_DATE <= ContextDate) and'
      '      not exists('
      '        select'
      '          1'
      '        from'
      '          PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '        where'
      '          (prpsc2.PARTNER_CODE = prpsc.PARTNER_CODE) and'
      
        '          (prpsc2.BORDER_REL_TYPE_CODE = prpsc.BORDER_REL_TYPE_C' +
        'ODE) and'
      '          (prpsc2.PRODUCT_CODE = prpsc.PRODUCT_CODE) and'
      '          (prpsc.STATUS_DATE < prpsc2.STATUS_DATE) and'
      '          (prpsc2.STATUS_DATE <= ContextDate)'
      '      )'
      '  ) as PAR_REL_PRODUCT_STATUS_NAME,'
      ''
      '  dcd.DELIVERY_DEAL_TYPE_CODE'
      ''
      'from'
      '  DELIVERY_PROJECTS dp,'
      '  DEFICIT_COVER_DECISIONS dcd,'
      '  DELIVERY_CONTRACTS dc,'
      '  PRODUCTS p'
      ''
      'where'
      '  (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      ''
      '  (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (dc.DCD_OBJECT_BRANCH_CODE(+) = dp.DCD_OBJECT_BRANCH_CODE) and'
      '  (dc.DCD_OBJECT_CODE(+) = dp.DCD_OBJECT_CODE) and'
      '  (dc.DELIVERY_PROJECT_CODE(+) = dp.DELIVERY_PROJECT_CODE) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '  ( Nvl2(dp.ANNUL_EMPLOYEE_CODE,'
      '      11,'
      '      Nvl2(dp.FINISH_EMPLOYEE_CODE,'
      '        10,'
      '        Nvl2(dc.DELIVERY_OBJECT_BRANCH_CODE,'
      '          9,'
      '          Nvl2(dp.REAL_DECISION_DATE,'
      '            8,'
      '            Nvl2(dp.REAL_VENDOR_POSITION_DATE,'
      
        '              Decode(Sign(Coalesce(dcd.PLAN_DECISION_DATE, Conte' +
        'xtDate) - ContextDate), -1,'
      '                7,'
      '                6'
      '              ),'
      '              Nvl2(dp.REAL_POSITION_DATE,'
      
        '                Decode(Sign(Coalesce(dp.PLAN_VENDOR_POSITION_DAT' +
        'E, ContextDate) - ContextDate), -1,'
      '                  5,'
      '                  4'
      '                ),'
      '                Nvl2(dp.PLAN_POSITION_DATE,'
      
        '                  Decode(Sign(dp.PLAN_POSITION_DATE - ContextDat' +
        'e), -1,'
      '                    3,'
      '                    2'
      '                  ),'
      '                  1'
      '                )'
      '              )'
      '            )'
      '          )'
      '        )'
      '      )'
      '    ) between'
      '    :MIN_STATUS_CODE and :MAX_STATUS_CODE'
      '  ) and'
      ''
      '  (:PROD_ORDER_BASE_TYPE_CODE ='
      '    ( select'
      '        bdt.PROD_ORDER_BASE_TYPE_CODE'
      '      from'
      '        BORDER_DEAL_TYPES bdt'
      '      where'
      
        '        (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE' +
        ')'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        TEMP_FILTERED_PRODUCTS tfp'
      '      where'
      '        (tfp.PRODUCT_CODE = dp.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (dcd.DELIVERY_DEAL_TYPE_CODE = :DELIVERY_DEAL_TYPE_CODE) and'
      ''
      '  ( (:DCD_BRANCH_CODE is null) or'
      '    (dcd.DCD_BRANCH_CODE = :DCD_BRANCH_CODE) ) and'
      ''
      '  ( (:DCD_CODE is null) or'
      '    (dcd.DCD_CODE = :DCD_CODE) ) and'
      ''
      '  ( (:DELIVERY_PROJECT_CODE is null) or'
      '    (dp.DELIVERY_PROJECT_CODE = :DELIVERY_PROJECT_CODE) ) and'
      ''
      '  ( (:ASPECT_TYPE_CODE is null) or'
      '    (dcd.ASPECT_TYPE_CODE = :ASPECT_TYPE_CODE) ) and'
      ''
      '  ( (:IS_ACTIVATED_BY_CODE is null) or'
      '    (:IS_ACTIVATED_BY_CODE = 0) or'
      '    ( (:IS_ACTIVATED_BY_CODE = 1) and'
      '      (dp.IS_ACTIVATED_BY_VENDOR = 0) ) or'
      '    ( (:IS_ACTIVATED_BY_CODE = 2) and'
      '      (dp.IS_ACTIVATED_BY_VENDOR = 1) )'
      '  ) and'
      ''
      '  ( (:HAS_CONTRACT_CODE is null) or'
      '    (:HAS_CONTRACT_CODE = 0) or'
      '    ( (:HAS_CONTRACT_CODE = 1) and'
      '      ( ( select'
      '            p.PRIORITY_NO'
      '          from'
      '            PRIORITIES p'
      '          where'
      '            (p.PRIORITY_CODE = dc.PRIORITY_CODE)'
      '        )between'
      '        ( select'
      '            p.PRIORITY_NO'
      '          from'
      '            PRIORITIES p'
      '          where'
      '            (p.PRIORITY_CODE = :MIN_PRIORITY_CODE)'
      '        ) and'
      '        ( select'
      '            p.PRIORITY_NO'
      '          from'
      '            PRIORITIES p'
      '          where'
      '            (p.PRIORITY_CODE = :MAX_PRIORITY_CODE)'
      '        )'
      '      )'
      '    ) or'
      '    ( (:HAS_CONTRACT_CODE = 2) and'
      '      (dc.DELIVERY_OBJECT_BRANCH_CODE is null) )'
      '  ) and'
      ''
      '  ( (:DIALOG_EMPLOYEE_CODE is null) or'
      '    (dp.DIALOG_EMPLOYEE_CODE = :DIALOG_EMPLOYEE_CODE) ) and'
      ''
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      COMPANIES c,'
      '      VENDOR_COMPANIES vc,'
      '      PRIORITIES p'
      '    where'
      '      (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
      '      (vc.VENDOR_COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
      '      (p.PRIORITY_CODE = vc.PRIORITY_CODE) and'
      ''
      '      ( (:VENDOR_COMPANY_CODE is null) or'
      '        (dp.VENDOR_COMPANY_CODE = :VENDOR_COMPANY_CODE) ) and'
      '      ( (:VENDOR_COUNTRY_CODE is null) or'
      '        (c.COUNTRY_CODE = :VENDOR_COUNTRY_CODE) ) and'
      '      (p.PRIORITY_NO between'
      '        ( select'
      '            p1.PRIORITY_NO'
      '          from'
      '            PRIORITIES p1'
      '          where'
      '            (p1.PRIORITY_CODE = :BEGIN_VENDOR_PRIORITY_CODE) '
      '        ) and'
      '        ( select'
      '            p2.PRIORITY_NO'
      '          from'
      '            PRIORITIES p2'
      '          where'
      '            (p2.PRIORITY_CODE = :END_VENDOR_PRIORITY_CODE)'
      '        )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:HAS_MEDIATOR_CODE is null) or'
      '    (:HAS_MEDIATOR_CODE = 0) or'
      '    ( (:HAS_MEDIATOR_CODE = 1) and'
      '      (dp.MEDIATOR_COMPANY_CODE is not null) ) or'
      '    ( (:HAS_MEDIATOR_CODE = 2) and'
      '      (dp.MEDIATOR_COMPANY_CODE is null) )'
      '  ) and'
      ''
      '  ( (:HAS_SALE is null) or'
      '    (:HAS_SALE = 0) or'
      '    ( (:HAS_SALE = 1) and'
      '      (dp.SALE_OBJECT_BRANCH_CODE is not null) and'
      '      (exists('
      '        select'
      '          1'
      '        from'
      '          SALES s'
      '        where'
      
        '          (s.SALE_OBJECT_BRANCH_CODE = dp.SALE_OBJECT_BRANCH_COD' +
        'E) and'
      '          (s.SALE_OBJECT_CODE = dp.SALE_OBJECT_CODE) and'
      '          ( (:SALE_BRANCH_CODE is null) or'
      '            (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) ) and'
      '          ( (:SALE_NO is null) or'
      '            (s.SALE_NO = :SALE_NO) )'
      '        )'
      '      )'
      '    ) or'
      '    ( (:HAS_SALE = 2) and'
      '      (dp.SALE_OBJECT_BRANCH_CODE is null)'
      '    )'
      '  ) and'
      ''
      '  ( ( (:HAS_AGREED_QUANTITY = 1) and'
      '      (dp.WORK_QUANTITY is not null) ) or'
      '    ( (:HAS_NOT_AGREED_QUANTITY = 1) and'
      '      (dp.WORK_QUANTITY is null) )'
      '  ) and'
      ''
      '  ( ( (:HAS_AGREED_SINGLE_PRICE = 1) and'
      '      (dp.TOTAL_PRICE is not null) ) or'
      '    ( (:HAS_NOT_AGREED_SINGLE_PRICE = 1) and'
      '      (dp.TOTAL_PRICE is null) )'
      '  ) and'
      ''
      '  ( (:STREAM_TYPE_CODE is null) or'
      '    (dcd.STREAM_TYPE_CODE = :STREAM_TYPE_CODE) ) and'
      ''
      '  ( (:DELIVERY_TYPE_CODE is null) or'
      '    (dc.DELIVERY_TYPE_CODE = :DELIVERY_TYPE_CODE) ) and'
      ''
      '  ( (:MEDIATOR_COMPANY_CODE is null) or'
      '    (dp.MEDIATOR_COMPANY_CODE = :MEDIATOR_COMPANY_CODE) ) and'
      ''
      '  ( (:DELIVERY_DECISION_CODE is null) or'
      '    (dp.DELIVERY_DECISION_CODE = :DELIVERY_DECISION_CODE) ) and'
      ''
      '  ( (:DECISION_EMPLOYEE_CODE is null) or'
      '    (dp.DECISION_EMPLOYEE_CODE = :DECISION_EMPLOYEE_CODE) ) and'
      ''
      '  ( (:BEGIN_REGISTER_DATE is null) or'
      '    (dp.REGISTER_DATE >= :BEGIN_REGISTER_DATE) ) and'
      ''
      '  ( (:END_REGISTER_DATE is null) or'
      '    (dp.REGISTER_DATE <= :END_REGISTER_DATE) ) and'
      ''
      '  ( (:BEGIN_PROGNOSIS_BEGIN_DATE is null) or'
      
        '    (dp.PROGNOSIS_BEGIN_DATE >= :BEGIN_PROGNOSIS_BEGIN_DATE) ) a' +
        'nd'
      ''
      '  ( (:END_PROGNOSIS_BEGIN_DATE is null) or'
      '    (dp.PROGNOSIS_BEGIN_DATE <= :END_PROGNOSIS_BEGIN_DATE) ) and'
      ''
      '  ( (:BEGIN_PLAN_POSITION_DATE is null) or'
      '    (dp.PLAN_POSITION_DATE >= :BEGIN_PLAN_POSITION_DATE) ) and'
      ''
      '  ( (:END_PLAN_POSITION_DATE is null) or'
      '    (dp.PLAN_POSITION_DATE <= :END_PLAN_POSITION_DATE) ) and'
      ''
      '  ( (:BEGIN_REAL_POSITION_DATE is null) or'
      '    (dp.REAL_POSITION_DATE >= :BEGIN_REAL_POSITION_DATE) ) and'
      ''
      '  ( (:END_REAL_POSITION_DATE is null) or'
      '    (dp.REAL_POSITION_DATE <= :END_REAL_POSITION_DATE) ) and'
      ''
      '  ( (:BEGIN_PLAN_VENDOR_POS_DATE is null) or'
      
        '    (dp.PLAN_VENDOR_POSITION_DATE >= :BEGIN_PLAN_VENDOR_POS_DATE' +
        ') ) and'
      ''
      '  ( (:END_PLAN_VENDOR_POSITION_DATE is null) or'
      
        '    (dp.PLAN_VENDOR_POSITION_DATE <= :END_PLAN_VENDOR_POSITION_D' +
        'ATE) ) and'
      ''
      '  ( (:BEGIN_REAL_VENDOR_POS_DATE is null) or'
      
        '    (dp.REAL_VENDOR_POSITION_DATE >= :BEGIN_REAL_VENDOR_POS_DATE' +
        ') ) and'
      ''
      '  ( (:END_REAL_VENDOR_POSITION_DATE is null) or'
      
        '    (dp.REAL_VENDOR_POSITION_DATE <= :END_REAL_VENDOR_POSITION_D' +
        'ATE) ) and'
      ''
      '  ( (:BEGIN_PLAN_DECISION_DATE is null) or'
      '    (dcd.PLAN_DECISION_DATE >= :BEGIN_PLAN_DECISION_DATE) ) and'
      ''
      '  ( (:END_PLAN_DECISION_DATE is null) or'
      '    (dcd.PLAN_DECISION_DATE <= :END_PLAN_DECISION_DATE) ) and'
      ''
      '  ( (:BEGIN_REAL_DECISION_DATE is null) or'
      '    (dp.REAL_DECISION_DATE >= :BEGIN_REAL_DECISION_DATE) ) and'
      ''
      '  ( (:END_REAL_DECISION_DATE is null) or'
      '    (dp.REAL_DECISION_DATE <= :END_REAL_DECISION_DATE) ) and'
      ''
      '  ( (:BEGIN_PROGNOSIS_DAYS_RSV is null) or'
      
        '    ( (ContextDate - dp.PROGNOSIS_BEGIN_DATE) >= :BEGIN_PROGNOSI' +
        'S_DAYS_RSV) ) and'
      ''
      '  ( (:END_PROGNOSIS_DAYS_RSV is null) or'
      
        '    ( (ContextDate - dp.PROGNOSIS_BEGIN_DATE) <= :END_PROGNOSIS_' +
        'DAYS_RSV) ) and'
      ''
      '  ( (:BEGIN_POSITION_DAYS_RSV is null) or'
      
        '    ( (dp.PLAN_POSITION_DATE - Coalesce(dp.REAL_POSITION_DATE, C' +
        'ontextDate)) >= :BEGIN_POSITION_DAYS_RSV) ) and'
      ''
      '  ( (:END_POSITION_DAYS_RSV is null) or'
      
        '    ( (dp.PLAN_POSITION_DATE - Coalesce(dp.REAL_POSITION_DATE, C' +
        'ontextDate)) <= :END_POSITION_DAYS_RSV) ) and'
      ''
      '  ( (:BEGIN_VENDOR_POSITION_DAYS_RSV is null) or'
      
        '    ( (dp.PLAN_VENDOR_POSITION_DATE - Coalesce(dp.REAL_VENDOR_PO' +
        'SITION_DATE, ContextDate)) >= :BEGIN_VENDOR_POSITION_DAYS_RSV) )' +
        ' and'
      ''
      '  ( (:END_VENDOR_POSITION_DAYS_RSV is null) or'
      
        '    ( (dp.PLAN_VENDOR_POSITION_DATE - Coalesce(dp.REAL_VENDOR_PO' +
        'SITION_DATE, ContextDate)) <= :END_VENDOR_POSITION_DAYS_RSV) ) a' +
        'nd'
      ''
      '  ( (:BEGIN_DECISION_DAYS_RSV is null) or'
      
        '    ( (dcd.PLAN_DECISION_DATE - Coalesce(dp.REAL_DECISION_DATE, ' +
        'ContextDate)) >= :BEGIN_DECISION_DAYS_RSV) ) and'
      ''
      '  ( (:END_DECISION_DAYS_RSV is null) or'
      
        '    ( (dcd.PLAN_DECISION_DATE - Coalesce(dp.REAL_DECISION_DATE, ' +
        'ContextDate)) <= :END_DECISION_DAYS_RSV) ) and'
      ''
      '  ( (:PAR_REL_PRODUCT = 0) or'
      '    ( (:PAR_REL_PRODUCT = 1) and'
      '      exists('
      '        select'
      '          1'
      '        from'
      '          PAR_REL_PRODUCTS prp'
      '        where'
      '          (prp.PARTNER_CODE = dp.VENDOR_COMPANY_CODE) and'
      '          (prp.BORDER_REL_TYPE_CODE = %brt_VENDOR) and'
      '          (prp.PRODUCT_CODE = dp.PRODUCT_CODE) and'
      ''
      '          ( (:PAR_REL_PRODUCT_STATUS_CODE is null) or'
      '            exists('
      '              select'
      '                1'
      '              from'
      '                PAR_REL_PRODUCT_STATUS_CHANGES prpsc'
      '              where'
      '                (prpsc.PARTNER_CODE = prp.PARTNER_CODE) and'
      
        '                (prpsc.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYP' +
        'E_CODE) and'
      '                (prpsc.PRODUCT_CODE = prp.PRODUCT_CODE) and'
      '                (prpsc.STATUS_DATE <= ContextDate) and'
      '                not exists('
      '                  select'
      '                    1'
      '                  from'
      '                    PAR_REL_PRODUCT_STATUS_CHANGES prpsc2'
      '                  where'
      
        '                    (prpsc2.PARTNER_CODE = prpsc.PARTNER_CODE) a' +
        'nd'
      
        '                    (prpsc2.BORDER_REL_TYPE_CODE = prpsc.BORDER_' +
        'REL_TYPE_CODE) and'
      
        '                    (prpsc2.PRODUCT_CODE = prpsc.PRODUCT_CODE) a' +
        'nd'
      '                    (prpsc.STATUS_DATE < prpsc2.STATUS_DATE) and'
      '                    (prpsc2.STATUS_DATE <= ContextDate)'
      '                ) and'
      
        '                (prpsc.PAR_REL_PRODUCT_STATUS_CODE = :PAR_REL_PR' +
        'ODUCT_STATUS_CODE)'
      '            )'
      '          )'
      '      )'
      '    ) or'
      '    ( (:PAR_REL_PRODUCT = 2) and'
      '      not exists('
      '        select'
      '          1'
      '        from'
      '          PAR_REL_PRODUCTS prp'
      '        where'
      '          (prp.BORDER_REL_TYPE_CODE = %brt_VENDOR) and'
      '          (prp.PARTNER_CODE = dp.VENDOR_COMPANY_CODE) and'
      '          (prp.PRODUCT_CODE = dp.PRODUCT_CODE)'
      '      )'
      '    )'
      '  )'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COMPANY_BASE_ROLE_CODE[dp.VENDOR_COMPANY_CODE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[c]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'LEASE_DATE_UNIT_QTY[dcd~dp]'
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
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    Left = 240
    Top = 168
    object qryDeliveriyDialogsSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
    end
    object qryDeliveriyDialogsASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      Size = 100
    end
    object qryDeliveriyDialogsDELIVERY_ID: TAbmesWideStringField
      FieldName = 'DELIVERY_ID'
      Size = 212
    end
    object qryDeliveriyDialogsIS_ACTIVATED_BY_VENDOR: TAbmesFloatField
      FieldName = 'IS_ACTIVATED_BY_VENDOR'
    end
    object qryDeliveriyDialogsDIALOG_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'DIALOG_EMPLOYEE_NAME'
      Size = 75
    end
    object qryDeliveriyDialogsCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
    end
    object qryDeliveriyDialogsCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
    object qryDeliveriyDialogsVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object qryDeliveriyDialogsVENDOR_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_COMPANY_NAME'
    end
    object qryDeliveriyDialogsPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryDeliveriyDialogsPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryDeliveriyDialogsPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qryDeliveriyDialogsHAS_MEDIATOR: TAbmesFloatField
      FieldName = 'HAS_MEDIATOR'
    end
    object qryDeliveriyDialogsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryDeliveriyDialogsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryDeliveriyDialogsPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_ABBREV_AND_NAME'
      Size = 205
    end
    object qryDeliveriyDialogsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryDeliveriyDialogsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryDeliveriyDialogsACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryDeliveriyDialogsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryDeliveriyDialogsREGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REGISTER_DATE'
    end
    object qryDeliveriyDialogsPLAN_PERIOD_DAYS: TAbmesFloatField
      FieldName = 'PLAN_PERIOD_DAYS'
    end
    object qryDeliveriyDialogsREAL_PERIOD_DAYS: TAbmesFloatField
      FieldName = 'REAL_PERIOD_DAYS'
    end
    object qryDeliveriyDialogsREAL_PERIOD_DEVIATION_PERCENT: TAbmesFloatField
      FieldName = 'REAL_PERIOD_DEVIATION_PERCENT'
    end
    object qryDeliveriyDialogsPOSITION_DAYS_RSV: TAbmesFloatField
      FieldName = 'POSITION_DAYS_RSV'
    end
    object qryDeliveriyDialogsVENDOR_POSITION_DAYS_RSV: TAbmesFloatField
      FieldName = 'VENDOR_POSITION_DAYS_RSV'
    end
    object qryDeliveriyDialogsDECISION_DAYS_RSV: TAbmesFloatField
      FieldName = 'DECISION_DAYS_RSV'
    end
    object qryDeliveriyDialogsDELIVERY_DECISION_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DECISION_CODE'
    end
    object qryDeliveriyDialogsDELIVERY_DECISION_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DECISION_ABBREV'
      Size = 5
    end
    object qryDeliveriyDialogsPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_BEGIN_DATE'
    end
    object qryDeliveriyDialogsPROGNOSIS_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_END_DATE'
    end
    object qryDeliveriyDialogsPROGNOSIS_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_QUANTITY'
    end
    object qryDeliveriyDialogsPROGNOSIS_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_QUANTITY'
    end
    object qryDeliveriyDialogsIS_QUANTITY_AGREED: TAbmesFloatField
      FieldName = 'IS_QUANTITY_AGREED'
    end
    object qryDeliveriyDialogsPROGNOSIS_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_SINGLE_PRICE'
    end
    object qryDeliveriyDialogsPROGNOSIS_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'PROGNOSIS_TOTAL_PRICE'
      Calculated = True
    end
    object qryDeliveriyDialogsPROGNOSIS_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_CURRENCY_CODE'
    end
    object qryDeliveriyDialogsPROGNOSIS_CURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_CURRENCY_ABBREV'
      Size = 5
    end
    object qryDeliveriyDialogsIS_PRICE_AGREED: TAbmesFloatField
      FieldName = 'IS_PRICE_AGREED'
    end
    object qryDeliveriyDialogsDELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'DELIVERY_DATE'
    end
    object qryDeliveriyDialogsWORK_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_QUANTITY'
    end
    object qryDeliveriyDialogsACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qryDeliveriyDialogsSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object qryDeliveriyDialogsTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryDeliveriyDialogsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryDeliveriyDialogsCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object qryDeliveriyDialogsVENDOR_PRIORITY_NO: TAbmesFloatField
      FieldName = 'VENDOR_PRIORITY_NO'
    end
    object qryDeliveriyDialogsVENDOR_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'VENDOR_PRIORITY_COLOR'
    end
    object qryDeliveriyDialogsVENDOR_PRIORITY_BK_COLOR: TAbmesFloatField
      FieldName = 'VENDOR_PRIORITY_BK_COLOR'
    end
    object qryDeliveriyDialogsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryDeliveriyDialogsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryDeliveriyDialogsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryDeliveriyDialogsVENDOR_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'VENDOR_DOC_BRANCH_CODE'
    end
    object qryDeliveriyDialogsVENDOR_DOC_CODE: TAbmesFloatField
      FieldName = 'VENDOR_DOC_CODE'
    end
    object qryDeliveriyDialogsVENDOR_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'VENDOR_HAS_DOCUMENTATION'
    end
    object qryDeliveriyDialogsVENDOR_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_PRODUCT_NAME'
      Size = 50
    end
    object qryDeliveriyDialogsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryDeliveriyDialogsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryDeliveriyDialogsPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
    end
    object qryDeliveriyDialogsDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDeliveriyDialogsDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDeliveriyDialogsDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDeliveriyDialogsPROGNOSIS_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_MEASURE_CODE'
    end
    object qryDeliveriyDialogsPROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_MEASURE_ABBREV'
      Size = 5
    end
    object qryDeliveriyDialogsPROGNOSIS_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_QTY'
    end
    object qryDeliveriyDialogsPROGNOSIS_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_CODE'
    end
    object qryDeliveriyDialogsPROGNOSIS_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qryDeliveriyDialogsPROGNOSIS_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_TOTAL_LEASE_QUANTITY'
    end
    object qryDeliveriyDialogsPROGNOSIS_ACC_TOTAL_LEASE_QTY: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACC_TOTAL_LEASE_QTY'
    end
    object qryDeliveriyDialogsIS_LEASE_QUANTITY_AGREED: TAbmesFloatField
      FieldName = 'IS_LEASE_QUANTITY_AGREED'
    end
    object qryDeliveriyDialogsPROGNOSIS_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_MEASURE_CODE'
    end
    object qryDeliveriyDialogsPROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_ACC_MEASURE_ABBREV'
      Size = 5
    end
    object qryDeliveriyDialogsPROGNOSIS_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_SINGLE_PRICE'
    end
    object qryDeliveriyDialogsACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
    end
    object qryDeliveriyDialogsLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object qryDeliveriyDialogsLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qryDeliveriyDialogsLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
    end
    object qryDeliveriyDialogsTOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_LEASE_QUANTITY'
    end
    object qryDeliveriyDialogsTOTAL_ACCOUNT_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_LEASE_QUANTITY'
    end
    object qryDeliveriyDialogsRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object qryDeliveriyDialogsRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
    end
    object qryDeliveriyDialogsPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
    end
    object qryDeliveriyDialogsBASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'BASE_ROLE_CODE'
    end
    object qryDeliveriyDialogsPROGNOSIS_CURRENCY_FIXING: TAbmesFloatField
      FieldName = 'PROGNOSIS_CURRENCY_FIXING'
    end
    object qryDeliveriyDialogsDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
    end
  end
  object prvDeliveriyDialogs: TDataSetProvider
    DataSet = qryDeliveriyDialogs
    Options = [poReadOnly, poUseQuoteChar]
    Left = 240
    Top = 120
  end
  object qryGroupDeliveriesMaster: TAbmesSQLQuery
    BeforeOpen = qryGroupDeliveriesMasterBeforeOpen
    AfterClose = qryGroupDeliveriesMasterAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'GROUP_BY_RECEIVE_DATE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'GROUP_BY_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_BY_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_BY_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_BY_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
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
        Name = 'PSD_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSD_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_CHOSEN_COMPANIES'
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
        Name = 'DELIVERY_VENDOR_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_VENDOR_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CUSTOMHOUSE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CUSTOMHOUSE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_TYPE_CODE'
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
        Name = 'MIN_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATUS_CODE'
        ParamType = ptInput
        Value = '5'
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
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_number(:GROUP_BY_RECEIVE_DATE) as GROUP_BY_RECEIVE_DATE,'
      '  dcd.PRODUCT_CLASS_CODE,'
      '  '
      '  Min('
      '    Nvl2(dp.ANNUL_EMPLOYEE_CODE,'
      '      7,'
      '      Nvl2(dp.FINISH_EMPLOYEE_CODE,'
      '        6,'
      '        Decode('
      '          Sign('
      '            MiscUtils.LargeZero('
      '              dp.WORK_QUANTITY -'
      '              Coalesce('
      '                ( select'
      '                    Sum(sd.QUANTITY)'
      '                  from'
      '                    STORE_DEALS sd'
      '                  where'
      
        '                    (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELI' +
        'VERY_OBJECT_BRANCH_CODE) and'
      
        '                    (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OB' +
        'JECT_CODE) and'
      '                    (sd.STORNO_EMPLOYEE_CODE is null)'
      '                ),'
      '                0'
      '              )'
      '            )'
      '          ), 1,'
      '          Decode(Sign(ContextDate - dp.DELIVERY_DATE), 1, 2, 1),'
      '          5'
      '        )'
      '      )'
      '    )'
      '  ) as STATUS_CODE,'
      ''
      '  dp.DELIVERY_DATE,'
      ''
      '  dp.VENDOR_COMPANY_CODE,'
      '  ( select'
      '      cs.COMPANY_STATUS_NAME'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc,'
      '      COMPANY_STATUSES cs'
      '    where'
      '      (csc.COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
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
      '  ) as VENDOR_STATUS_NAME,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE)'
      '  ) as VENDOR_COMPANY_NAME,'
      ''
      '  ( select'
      '      c.DOC_BRANCH_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE)'
      '  ) as VENDOR_DOC_BRANCH_CODE,'
      '  ( select'
      '      c.DOC_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE)'
      '  ) as VENDOR_DOC_CODE,'
      '  ( select'
      '      %HAS_DOC_ITEMS[c]'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE)'
      '  ) as VENDOR_HAS_DOCUMENTATION,'
      ''
      '  dp.DELIVERY_VENDOR_OFFICE_CODE,'
      '  ( select'
      '      co.OFFICE_NAME'
      '    from'
      '      COMPANY_OFFICES co'
      '    where'
      '      (co.COMPANY_CODE = VENDOR_COMPANY_CODE) and'
      '      (co.OFFICE_CODE = DELIVERY_VENDOR_OFFICE_CODE)'
      '  ) as VENDOR_OFFICE_NAME,'
      ''
      '  dp.IS_TRANSPORT_FROM_VENDOR,'
      '  dp.CUSTOMHOUSE_CODE,'
      '  dp.SHIPMENT_TYPE_CODE,'
      '  '
      
        '  Sum(dp.TOTAL_PRICE * %CURRENCY_FIXING[dp.CURRENCY_CODE~dp.DELI' +
        'VERY_DATE]) as TOTAL_PRICE,'
      ''
      '  Sum('
      '    ( select'
      
        '        Sum(sd.TOTAL_PRICE * %CURRENCY_FIXING[sd.CURRENCY_CODE~s' +
        'd.STORE_DEAL_DATE])'
      '      from'
      '        STORE_DEALS sd'
      '      where'
      
        '        (dc.DELIVERY_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (dc.DELIVERY_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      ''
      '        (sd.STORNO_EMPLOYEE_CODE is null)'
      '    )'
      '  ) as SD_TOTAL_PRICE,'
      ''
      '  Max('
      '    ( select'
      '        Max(%EXCEPT_EVENT_DAMAGE_STATE[eed])'
      '      from'
      '        EXCEPT_EVENT_DAMAGES eed'
      '      where'
      
        '        (eed.DELIVERY_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '        (eed.DELIVERY_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE)'
      '    )'
      '  ) as DAMAGES_STATE_CODE,'
      ''
      '  Min(p.TRANSPORT_MEASURE_CODE) as MIN_TRANSPORT_MEASURE_CODE,'
      '  Max(p.TRANSPORT_MEASURE_CODE) as MAX_TRANSPORT_MEASURE_CODE,'
      ''
      '  Max('
      '    ( select'
      '        m.MEASURE_ABBREV'
      '      from'
      '        MEASURES m'
      '      where'
      '        (m.MEASURE_CODE = p.TRANSPORT_MEASURE_CODE)'
      '    )'
      '  ) as TRANSPORT_MEASURE_ABBREV,'
      ''
      
        '  Sum(p.TRANSPORT_MEASURE_COEF * dp.WORK_QUANTITY) as PLAN_TRANS' +
        'PORT_QUANTITY,'
      ''
      '  Sum('
      '    ( select'
      '        Sum(p.TRANSPORT_MEASURE_COEF * sd.QUANTITY)'
      '      from'
      '        STORE_DEALS sd'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) a' +
        'nd'
      '        (sd.STORNO_EMPLOYEE_CODE is null)'
      '    )'
      '  ) as OTCH_TRANSPORT_QUANTITY,'
      ''
      '  Min('
      '    Nvl2('
      '      dp.ANNUL_EMPLOYEE_CODE,'
      '      null,'
      '      ( Coalesce('
      '          dp.DELIVERY_DATE,'
      
        '          Decode(:GROUP_BY_RECEIVE_DATE, 1, dp.RECEIVE_DATE, dp.' +
        'RETURN_DATE)'
      '        ) -'
      '        Coalesce('
      '          ( select'
      '              Max(sd.STORE_DEAL_DATE)'
      '            from'
      '              STORE_DEALS sd'
      '            where'
      
        '              (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_O' +
        'BJECT_BRANCH_CODE) and'
      
        '              (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_C' +
        'ODE) and'
      '              (sd.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '              ( ( select'
      
        '                    Sum(MiscUtils.LargeZero(psd.REMAINING_QUANTI' +
        'TY))'
      '                  from'
      '                    PLANNED_STORE_DEALS psd'
      '                  where'
      
        '                    (psd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DEL' +
        'IVERY_OBJECT_BRANCH_CODE) and'
      
        '                    (psd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_O' +
        'BJECT_CODE) and'
      '                    (psd.IN_OUT = 1)'
      '                ) <= 0'
      '              )'
      '          ),'
      '          dp.FINISH_DATE,'
      '          ContextDate'
      '        )'
      '      )'
      '    )'
      '  ) as MIN_DAYS_LEFT'
      ''
      'from'
      '  ( select'
      '      dp.DCD_OBJECT_BRANCH_CODE,'
      '      dp.DCD_OBJECT_CODE,'
      '      dp.DELIVERY_PROJECT_CODE,'
      '      dp.ANNUL_EMPLOYEE_CODE,'
      '      dp.FINISH_EMPLOYEE_CODE,'
      '      dp.VENDOR_COMPANY_CODE,'
      '      dp.DELIVERY_VENDOR_OFFICE_CODE,'
      '      dp.WORK_QUANTITY,'
      '      dp.ACCOUNT_QUANTITY,'
      '      dp.IS_TRANSPORT_FROM_VENDOR,'
      '      dp.CUSTOMHOUSE_CODE,'
      '      dp.SHIPMENT_TYPE_CODE,'
      '      dp.TOTAL_PRICE,'
      '      dp.CURRENCY_CODE,'
      '      dp.DELIVERY_DECISION_CODE,'
      '      dp.LEASE_DATE_UNIT_CODE,'
      '      dp.PRODUCT_CODE,'
      '      dp.PSD_STORE_CODE,'
      '      dp.FINISH_DATE,'
      '      dp.RECEIVE_DATE,'
      '      dp.RETURN_DATE,'
      ''
      '      Decode('
      '        ( select'
      '            dcd1.DELIVERY_DEAL_TYPE_CODE'
      '          from'
      '            DEFICIT_COVER_DECISIONS dcd1'
      '          where'
      
        '            (dcd1.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_' +
        'CODE) and'
      '            (dcd1.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE)'
      '        ),'
      '        3, dp.DELIVERY_DATE,'
      
        '        4, Decode(:GROUP_BY_RECEIVE_DATE, 1, dp.RECEIVE_DATE, dp' +
        '.RETURN_DATE),'
      '        5, dp.DELIVERY_DATE,'
      '        6, dp.DELIVERY_DATE,'
      
        '        7, Decode(:GROUP_BY_RECEIVE_DATE, 1, dp.RECEIVE_DATE, dp' +
        '.RETURN_DATE),'
      
        '        9, Decode(:GROUP_BY_RECEIVE_DATE, 1, dp.RECEIVE_DATE, dp' +
        '.RETURN_DATE),'
      '        null'
      '      ) as DELIVERY_DATE'
      ''
      '    from'
      '      DELIVERY_PROJECTS dp'
      '  ) dp,'
      '  DEFICIT_COVER_DECISIONS dcd,'
      '  DELIVERY_CONTRACTS dc,'
      '  PRODUCTS p'
      ''
      'where'
      '  (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      ''
      '  (dp.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      '  (dp.DELIVERY_PROJECT_CODE = dc.DELIVERY_PROJECT_CODE) and'
      ''
      '  (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '  (dp.DELIVERY_DECISION_CODE is not null) and'
      ''
      '  (:PROD_ORDER_BASE_TYPE_CODE ='
      '    ( select'
      '        bdt.PROD_ORDER_BASE_TYPE_CODE'
      '      from'
      '        BORDER_DEAL_TYPES bdt'
      '      where'
      
        '        (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE' +
        ')'
      '    )'
      '  ) and'
      ''
      '  ( (:BEGIN_DELIVERY_DATE is null) or'
      '    (dp.DELIVERY_DATE >= :BEGIN_DELIVERY_DATE) ) and'
      ''
      '  ( (:END_DELIVERY_DATE is null) or'
      '    (dp.DELIVERY_DATE <= :END_DELIVERY_DATE) ) and'
      ''
      '  ( (:BEGIN_DAYS_LEFT is null) or'
      '    ((dp.DELIVERY_DATE - ContextDate) >= :BEGIN_DAYS_LEFT) ) and'
      ''
      '  ( (:END_DAYS_LEFT is null) or'
      '    ((dp.DELIVERY_DATE - ContextDate) <= :END_DAYS_LEFT) ) and'
      ''
      '  ( (:DELIVERY_DEAL_TYPE_CODE is null) or'
      
        '    (:DELIVERY_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE) ) a' +
        'nd'
      ''
      '  ( (:LEASE_DATE_UNIT_CODE is null) or'
      '    (dcd.DELIVERY_DEAL_TYPE_CODE not in (4, 7)) or'
      '    (:LEASE_DATE_UNIT_CODE = dp.LEASE_DATE_UNIT_CODE)'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        TEMP_FILTERED_PRODUCTS tfp'
      '      where'
      '        (tfp.PRODUCT_CODE = dp.PRODUCT_CODE)'
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
      '          (dp2.PRODUCT_CODE = dp.PRODUCT_CODE) and'
      '          (dp2.COMMON_PRODUCT_CODE = :COMMON_PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:PSD_STORE_CODE is null) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        DEPT_RELATIONS dr'
      '      where'
      '        (dr.ANCESTOR_DEPT_CODE = :PSD_STORE_CODE) and'
      '        (dr.DESCENDANT_DEPT_CODE = dp.PSD_STORE_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_CHOSEN_COMPANIES = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_COMPANIES tfc'
      '        where'
      '          (tfc.COMPANY_CODE = dp.VENDOR_COMPANY_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:COUNTRY_CODE is null) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        COMPANIES c'
      '      where'
      '        (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
      '        (c.COUNTRY_CODE = :COUNTRY_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:DELIVERY_VENDOR_OFFICE_CODE is null) or'
      
        '    (dp.DELIVERY_VENDOR_OFFICE_CODE = :DELIVERY_VENDOR_OFFICE_CO' +
        'DE)'
      '  ) and'
      ''
      '  ( (:CUSTOMHOUSE_CODE is null) or'
      '    (dp.CUSTOMHOUSE_CODE = :CUSTOMHOUSE_CODE) ) and'
      ''
      '  ( (:SHIPMENT_TYPE_CODE is null) or'
      '    (dp.SHIPMENT_TYPE_CODE = :SHIPMENT_TYPE_CODE) ) and'
      ''
      '  ( (:DCD_BRANCH_CODE is null) or'
      '    (dcd.DCD_BRANCH_CODE = :DCD_BRANCH_CODE)'
      '  )'
      ''
      'group by'
      '  DELIVERY_DATE,'
      '  dcd.PRODUCT_CLASS_CODE,'
      '  VENDOR_COMPANY_CODE,'
      '  DELIVERY_VENDOR_OFFICE_CODE,'
      '  IS_TRANSPORT_FROM_VENDOR,'
      '  CUSTOMHOUSE_CODE,'
      '  SHIPMENT_TYPE_CODE'
      ''
      'having'
      '  ( Min('
      '      Nvl2(dp.ANNUL_EMPLOYEE_CODE,'
      '        7,'
      '        Nvl2(dp.FINISH_EMPLOYEE_CODE,'
      '          6,'
      '          Decode('
      '            Sign('
      '              MiscUtils.LargeZero('
      '                dp.WORK_QUANTITY -'
      '                Coalesce('
      '                  ( select'
      '                      Sum(sd.QUANTITY)'
      '                    from'
      '                      STORE_DEALS sd'
      '                    where'
      
        '                      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DE' +
        'LIVERY_OBJECT_BRANCH_CODE) and'
      
        '                      (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_' +
        'OBJECT_CODE) and'
      '                      (sd.STORNO_EMPLOYEE_CODE is null)'
      '                  ),'
      '                  0'
      '                )'
      '              )'
      '            ), 1,'
      
        '            Decode(Sign(ContextDate - dp.DELIVERY_DATE), 1, 2, 1' +
        '),'
      '            5'
      '          )'
      '        )'
      '      )'
      '    )'
      '    between :MIN_STATUS_CODE and :MAX_STATUS_CODE'
      '  ) and'
      ''
      '  ( (:DAMAGES_STATE_CODE is null) or'
      '    ( (:DAMAGES_STATE_CODE = -1) and'
      '      ( Max('
      '          ( select'
      '              Max(%EXCEPT_EVENT_DAMAGE_STATE[eed])'
      '            from'
      '              EXCEPT_EVENT_DAMAGES eed'
      '            where'
      
        '              (eed.DELIVERY_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '              (eed.DELIVERY_OBJECT_CODE = dc.DELIVERY_OBJECT_COD' +
        'E)'
      '          )'
      '        ) is null'
      '      )'
      '    ) or'
      '    ( Max('
      '        ( select'
      '            Max(%EXCEPT_EVENT_DAMAGE_STATE[eed])'
      '          from'
      '            EXCEPT_EVENT_DAMAGES eed'
      '          where'
      
        '            (eed.DELIVERY_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJEC' +
        'T_BRANCH_CODE) and'
      '            (eed.DELIVERY_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE)'
      '        )'
      '      ) = :DAMAGES_STATE_CODE'
      '    )'
      '  ) and'
      ''
      '  ( ( (:BUDGET_ORDER_BRANCH_CODE is null) and'
      '      (:BUDGET_ORDER_CODE is null) and'
      '      (:BUDGET_ORDER_ITEM_CODE is null) and'
      '      (:BOI_ORDER_CODE is null)'
      '    ) or'
      '    ( Max('
      '        ( select'
      '            Count(*)'
      '          from'
      '            BOI_ORDERS boio'
      '          where'
      
        '            (boio.DELIVERY_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (boio.DELIVERY_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE' +
        ') and'
      ''
      '            ( (:BUDGET_ORDER_BRANCH_CODE is null) or'
      
        '              (boio.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRA' +
        'NCH_CODE)'
      '            ) and'
      ''
      '            ( (:BUDGET_ORDER_CODE is null) or'
      '              (boio.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE)'
      '            ) and'
      ''
      '            ( (:BUDGET_ORDER_ITEM_CODE is null) or'
      
        '              (boio.BUDGET_ORDER_ITEM_CODE = :BUDGET_ORDER_ITEM_' +
        'CODE)'
      '            ) and'
      ''
      '            ( (:BOI_ORDER_CODE is null) or'
      '              (boio.BOI_ORDER_CODE = :BOI_ORDER_CODE)'
      '            )'
      '        )'
      '      ) > 0'
      '    )'
      '  )'
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
        Name = 'CURRENCY_FIXING[dp.CURRENCY_CODE~dp.DELIVERY_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CURRENCY_FIXING[sd.CURRENCY_CODE~sd.STORE_DEAL_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENT_DAMAGE_STATE[eed]'
        ParamType = ptInput
        Value = '1'
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
    Left = 376
    Top = 56
    object qryGroupDeliveriesMasterSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
    end
    object qryGroupDeliveriesMasterDELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'DELIVERY_DATE'
    end
    object qryGroupDeliveriesMasterVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object qryGroupDeliveriesMasterVENDOR_STATUS_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_STATUS_NAME'
      Size = 100
    end
    object qryGroupDeliveriesMasterVENDOR_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_COMPANY_NAME'
    end
    object qryGroupDeliveriesMasterDELIVERY_VENDOR_OFFICE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_VENDOR_OFFICE_CODE'
    end
    object qryGroupDeliveriesMasterVENDOR_OFFICE_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_OFFICE_NAME'
      Size = 50
    end
    object qryGroupDeliveriesMasterIS_TRANSPORT_FROM_VENDOR: TAbmesFloatField
      FieldName = 'IS_TRANSPORT_FROM_VENDOR'
    end
    object qryGroupDeliveriesMasterCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object qryGroupDeliveriesMasterSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object qryGroupDeliveriesMasterTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryGroupDeliveriesMasterSD_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'SD_TOTAL_PRICE'
    end
    object qryGroupDeliveriesMasterVENDOR_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'VENDOR_DOC_BRANCH_CODE'
    end
    object qryGroupDeliveriesMasterVENDOR_DOC_CODE: TAbmesFloatField
      FieldName = 'VENDOR_DOC_CODE'
    end
    object qryGroupDeliveriesMasterVENDOR_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'VENDOR_HAS_DOCUMENTATION'
    end
    object qryGroupDeliveriesMasterGROUP_BY_RECEIVE_DATE: TAbmesFloatField
      FieldName = 'GROUP_BY_RECEIVE_DATE'
    end
    object qryGroupDeliveriesMasterDAMAGES_STATE_CODE: TAbmesFloatField
      FieldName = 'DAMAGES_STATE_CODE'
    end
    object qryGroupDeliveriesMasterPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object qryGroupDeliveriesMasterMIN_TRANSPORT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'MIN_TRANSPORT_MEASURE_CODE'
    end
    object qryGroupDeliveriesMasterMAX_TRANSPORT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'MAX_TRANSPORT_MEASURE_CODE'
    end
    object qryGroupDeliveriesMasterTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TRANSPORT_MEASURE_ABBREV'
      Size = 5
    end
    object qryGroupDeliveriesMasterPLAN_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_TRANSPORT_QUANTITY'
    end
    object qryGroupDeliveriesMasterOTCH_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'OTCH_TRANSPORT_QUANTITY'
    end
    object qryGroupDeliveriesMasterMIN_DAYS_LEFT: TAbmesFloatField
      FieldName = 'MIN_DAYS_LEFT'
    end
  end
  object prvGroupDeliveriesMaster: TDataSetProvider
    DataSet = qryGroupDeliveriesMaster
    Left = 376
    Top = 8
  end
  object qryGroupDeliveriesDetail: TAbmesSQLQuery
    BeforeOpen = qryGroupDeliveriesDetailBeforeOpen
    AfterClose = qryGroupDeliveriesDetailAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'GROUP_BY_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_BY_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDOR_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_VENDOR_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_VENDOR_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_TRANSPORT_FROM_VENDOR'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CUSTOMHOUSE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CUSTOMHOUSE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BEGIN_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BEGIN_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'END_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'END_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
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
        Name = 'PSD_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSD_STORE_CODE'
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
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
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
      end>
    SQL.Strings = (
      'select'
      '  dp.DCD_OBJECT_BRANCH_CODE,'
      '  dp.DCD_OBJECT_CODE,'
      '  dp.DELIVERY_PROJECT_CODE,'
      ''
      '  Nvl2(dp.ANNUL_EMPLOYEE_CODE,'
      '    7,'
      '    Nvl2(dp.FINISH_EMPLOYEE_CODE,'
      '      6,'
      '      Decode('
      '        Sign('
      '          MiscUtils.LargeZero('
      '            dp.WORK_QUANTITY -'
      '            Coalesce('
      '              ( select'
      '                  Sum(sd.QUANTITY)'
      '                from'
      '                  STORE_DEALS sd'
      '                where'
      
        '                  (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVE' +
        'RY_OBJECT_BRANCH_CODE) and'
      
        '                  (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJE' +
        'CT_CODE) and'
      '                  (sd.STORNO_EMPLOYEE_CODE is null) and'
      '                  (sd.IN_OUT = 1)'
      '              ),'
      '              0'
      '            )'
      '          )'
      '        ), 1,'
      
        '        Decode(Sign(ContextDate - Coalesce(dp.DELIVERY_DATE, dp.' +
        'RECEIVE_DATE)), 1, 2, 1),'
      '        5'
      '      )'
      '    )'
      '  ) as STATUS_CODE,'
      ''
      '  ( select'
      
        '      d.CUSTOM_CODE || '#39'/'#39' || dcd.DCD_CODE || '#39'/'#39' || dp.DELIVERY' +
        '_PROJECT_CODE || '#39'/'#39' || dt.DELIVERY_TYPE_ABBREV'
      '    from'
      '      DEPTS d,'
      '      DELIVERY_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = dcd.DCD_BRANCH_CODE) and'
      '      (dt.DELIVERY_TYPE_CODE = dc.DELIVERY_TYPE_CODE)'
      '  ) as DELIVERY_ID,'
      ''
      '  ( select'
      '      pr.PRIORITY_NO'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = dc.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      '  ( select'
      '      pr.PRIORITY_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = dc.PRIORITY_CODE)'
      '  ) as PRIORITY_COLOR,'
      '  ( select'
      '      pr.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = dc.PRIORITY_CODE)'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
      ''
      '  Nvl2('
      '    dp.ANNUL_EMPLOYEE_CODE,'
      '    null,'
      '    ( Coalesce('
      '        dp.DELIVERY_DATE,'
      
        '        Decode(:GROUP_BY_RECEIVE_DATE, 1, dp.RECEIVE_DATE, dp.RE' +
        'TURN_DATE)'
      '      ) -'
      '      Coalesce('
      '        ( select'
      '            Max(sd.STORE_DEAL_DATE)'
      '          from'
      '            STORE_DEALS sd'
      '          where'
      
        '            (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '            (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_COD' +
        'E) and'
      '            (sd.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '            ( ( select'
      '                  MiscUtils.LargeZero(psd.REMAINING_QUANTITY)'
      '                from'
      '                  PLANNED_STORE_DEALS psd'
      '                where'
      
        '                  (psd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIV' +
        'ERY_OBJECT_BRANCH_CODE) and'
      
        '                  (psd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJ' +
        'ECT_CODE) and'
      '                  (psd.IN_OUT = 1)'
      '              ) <= 0'
      '            )'
      '        ),'
      '        dp.FINISH_DATE,'
      '        ContextDate'
      '      )'
      '    )'
      '  ) as DAYS_LEFT,'
      ''
      '  dcd.DELIVERY_DEAL_TYPE_CODE,'
      '  ( select'
      '      bdt.BORDER_DEAL_TYPE_ABBREV'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE)'
      '  ) as DELIVERY_DEAL_TYPE_ABBREV,'
      ''
      '  dp.DOC_BRANCH_CODE,'
      '  dp.DOC_CODE,'
      '  %HAS_DOC_ITEMS[dp] as HAS_DOC,'
      ''
      '  p.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC,'
      
        '  %PRODUCT_COMPANY_PRODUCT_NAMES[dp.PRODUCT_CODE~dp.VENDOR_COMPA' +
        'NY_CODE] as VENDOR_PRODUCT_NAME,'
      ''
      '  ( select'
      
        '      po.PRODUCT_ORIGIN_ABBREV || '#39'     '#39' || po.PRODUCT_ORIGIN_N' +
        'AME '
      '    from'
      '      PRODUCT_ORIGINS po'
      '    where'
      '      (po.PRODUCT_ORIGIN_CODE = p.PRODUCT_ORIGIN_CODE)'
      '  ) as PRODUCT_ORIGIN_ABBREV_AND_NAME,'
      ''
      '  dp.WORK_QUANTITY,'
      '  ( select'
      '      Sum(sd.QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_WORK_QUANTITY,'
      ''
      '  p.MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (p.MEASURE_CODE = m.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      '  dp.ACCOUNT_QUANTITY,'
      '  ( select'
      '      Sum(sd.ACCOUNT_QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_ACCOUNT_QUANTITY,'
      ''
      ''
      '  p.ACCOUNT_MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (p.ACCOUNT_MEASURE_CODE = m.MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      '  dp.TOTAL_PRICE,'
      '  '
      '  ( select'
      
        '      Sum(sd.TOTAL_PRICE * %CURRENCY_FIXING[sd.CURRENCY_CODE~sd.' +
        'STORE_DEAL_DATE] / %CURRENCY_FIXING[dp.CURRENCY_CODE~sd.STORE_DE' +
        'AL_DATE])'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_TOTAL_PRICE,'
      '  '
      '  ( select'
      '      c.CURRENCY_ABBREV'
      '    from'
      '      CURRENCIES c'
      '    where'
      '      (c.CURRENCY_CODE = dp.CURRENCY_CODE)'
      '  ) as CURRENCY_ABBREV,'
      ''
      
        '  Coalesce(dcd.P_LEASE_DATE_UNIT_QUANTITY, dp.LEASE_DATE_UNIT_QT' +
        'Y) as PLAN_LEASE_DATE_UNIT_QTY,'
      '  dp.LEASE_DATE_UNIT_QTY as REAL_LEASE_DATE_UNIT_QTY,'
      ''
      '  ( select'
      '      tdu.THE_DATE_UNIT_NAME'
      '    from'
      '      THE_DATE_UNITS tdu'
      '    where'
      
        '      (tdu.THE_DATE_UNIT_CODE = Coalesce(dcd.P_LEASE_DATE_UNIT_C' +
        'ODE, dp.LEASE_DATE_UNIT_CODE))'
      '  ) as PLAN_LEASE_DATE_UNIT_NAME,'
      ''
      '  ( select'
      '      tdu.THE_DATE_UNIT_NAME'
      '    from'
      '      THE_DATE_UNITS tdu'
      '    where'
      '      (tdu.THE_DATE_UNIT_CODE = dp.LEASE_DATE_UNIT_CODE)'
      '  ) as REAL_LEASE_DATE_UNIT_NAME,'
      ''
      '  ( select'
      '      Max(%EXCEPT_EVENT_DAMAGE_STATE[eed])'
      '    from'
      '      EXCEPT_EVENT_DAMAGES eed'
      '    where'
      
        '      (eed.DELIVERY_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (eed.DELIVERY_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE)'
      '  ) as DAMAGES_STATE_CODE,'
      ''
      '  dc.DELIVERY_OBJECT_BRANCH_CODE,'
      '  dc.DELIVERY_OBJECT_CODE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.TRANSPORT_MEASURE_CODE)'
      '  ) as TRANSPORT_MEASURE_ABBREV,'
      ''
      '  p.TRANSPORT_MEASURE_COEF,'
      ''
      '  dp.RECEIVE_DATE,'
      '  (dp.RECEIVE_DATE -'
      '    Coalesce('
      '     ( select'
      '         Max(sd.STORE_DEAL_DATE)'
      '       from'
      '         STORE_DEALS sd'
      '       where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) a' +
        'nd'
      '        (sd.IN_OUT = 1) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null) and'
      '        ( ( select'
      '              Sum(MiscUtils.LargeZero(psd.REMAINING_QUANTITY))'
      '            from'
      '              PLANNED_STORE_DEALS psd'
      '            where'
      
        '              (psd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_' +
        'OBJECT_BRANCH_CODE) and'
      
        '              (psd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_' +
        'CODE) and'
      '              (psd.IN_OUT = 1)'
      '          ) <= 0'
      '        )'
      '     ),'
      '     ContextDate'
      '    )'
      '  ) as RECEIVE_DATE_RSV,'
      ''
      '  dp.RETURN_DATE,'
      '  (dp.RETURN_DATE -'
      '    Coalesce('
      '     ( select'
      '         Max(sd.STORE_DEAL_DATE)'
      '       from'
      '         STORE_DEALS sd'
      '       where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) a' +
        'nd'
      '        (sd.IN_OUT = -1) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null) and'
      '        ( ( select'
      '              Sum(MiscUtils.LargeZero(psd.REMAINING_QUANTITY))'
      '            from'
      '              PLANNED_STORE_DEALS psd'
      '            where'
      
        '              (psd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_' +
        'OBJECT_BRANCH_CODE) and'
      
        '              (psd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_' +
        'CODE) and'
      '              (psd.IN_OUT = -1)'
      '          ) <= 0'
      '        )'
      '     ),'
      '     ContextDate'
      '    )'
      '  ) as RETURN_DATE_RSV,'
      ''
      '  dc.IS_PROFORM_INVOICE'
      ''
      'from'
      '  DELIVERY_PROJECTS dp,'
      '  DEFICIT_COVER_DECISIONS dcd,'
      '  DELIVERY_CONTRACTS dc,'
      '  PRODUCTS p'
      ''
      'where'
      '  (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      '  (dp.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE) and'
      '  (dp.DELIVERY_PROJECT_CODE = dc.DELIVERY_PROJECT_CODE) and'
      '  (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (p.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '  ( Coalesce('
      '      dp.DELIVERY_DATE,'
      
        '      Decode(:GROUP_BY_RECEIVE_DATE, 1, dp.RECEIVE_DATE, dp.RETU' +
        'RN_DATE)'
      '    ) = :DELIVERY_DATE'
      '  ) and'
      ''
      '  (dp.VENDOR_COMPANY_CODE = :VENDOR_COMPANY_CODE) and'
      ''
      '  ( (:DELIVERY_VENDOR_OFFICE_CODE is null) or'
      
        '    (dp.DELIVERY_VENDOR_OFFICE_CODE = :DELIVERY_VENDOR_OFFICE_CO' +
        'DE)'
      '  ) and'
      ''
      '  (dp.IS_TRANSPORT_FROM_VENDOR = :IS_TRANSPORT_FROM_VENDOR) and'
      ''
      
        '  ( (dp.CUSTOMHOUSE_CODE is null and :CUSTOMHOUSE_CODE is null) ' +
        'or'
      '    (dp.CUSTOMHOUSE_CODE = :CUSTOMHOUSE_CODE) ) and'
      ''
      
        '  ( (dp.SHIPMENT_TYPE_CODE is null and :SHIPMENT_TYPE_CODE is nu' +
        'll) or'
      '    (dp.SHIPMENT_TYPE_CODE = :SHIPMENT_TYPE_CODE)'
      '  ) and'
      ''
      '  (dp.DELIVERY_DECISION_CODE is not null) and'
      ''
      '  (:PROD_ORDER_BASE_TYPE_CODE ='
      '    ( select'
      '        bdt.PROD_ORDER_BASE_TYPE_CODE'
      '      from'
      '        BORDER_DEAL_TYPES bdt'
      '      where'
      
        '        (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE' +
        ')'
      '    )'
      '  ) and'
      ''
      '  ( (:BEGIN_DELIVERY_DATE is null) or'
      '    (dp.DELIVERY_DATE >= :BEGIN_DELIVERY_DATE) ) and'
      ''
      '  ( (:END_DELIVERY_DATE is null) or'
      '    (dp.DELIVERY_DATE <= :END_DELIVERY_DATE) ) and'
      ''
      '  ( (:BEGIN_DAYS_LEFT is null) or'
      '    ((dp.DELIVERY_DATE - ContextDate) >= :BEGIN_DAYS_LEFT) ) and'
      ''
      '  ( (:END_DAYS_LEFT is null) or'
      '    ((dp.DELIVERY_DATE - ContextDate) <= :END_DAYS_LEFT) ) and'
      ''
      '  ( (:DELIVERY_DEAL_TYPE_CODE is null) or'
      
        '    (:DELIVERY_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE) ) a' +
        'nd'
      ''
      '  ( (:LEASE_DATE_UNIT_CODE is null) or'
      '    (dcd.DELIVERY_DEAL_TYPE_CODE not in (4, 7)) or'
      '    (:LEASE_DATE_UNIT_CODE = dp.LEASE_DATE_UNIT_CODE)'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        TEMP_FILTERED_PRODUCTS tfp'
      '      where'
      '        (tfp.PRODUCT_CODE = dp.PRODUCT_CODE)'
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
      '          (dp2.PRODUCT_CODE = dp.PRODUCT_CODE) and'
      '          (dp2.COMMON_PRODUCT_CODE = :COMMON_PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:PSD_STORE_CODE is null) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        DEPT_RELATIONS dr'
      '      where'
      '        (dr.ANCESTOR_DEPT_CODE = :PSD_STORE_CODE) and'
      '        (dr.DESCENDANT_DEPT_CODE = dp.PSD_STORE_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:COUNTRY_CODE is null) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        COMPANIES c'
      '      where'
      '        (c.COMPANY_CODE = dp.VENDOR_COMPANY_CODE) and'
      '        (c.COUNTRY_CODE = :COUNTRY_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( ( (:BUDGET_ORDER_BRANCH_CODE is null) and'
      '      (:BUDGET_ORDER_CODE is null) and'
      '      (:BUDGET_ORDER_ITEM_CODE is null) and'
      '      (:BOI_ORDER_CODE is null)'
      '    ) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          BOI_ORDERS boio'
      '        where'
      
        '          (boio.DELIVERY_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (boio.DELIVERY_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) ' +
        'and'
      ''
      '          ( (:BUDGET_ORDER_BRANCH_CODE is null) or'
      
        '            (boio.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANC' +
        'H_CODE)'
      '          ) and'
      ''
      '          ( (:BUDGET_ORDER_CODE is null) or'
      '            (boio.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE)'
      '          ) and'
      ''
      '          ( (:BUDGET_ORDER_ITEM_CODE is null) or'
      
        '            (boio.BUDGET_ORDER_ITEM_CODE = :BUDGET_ORDER_ITEM_CO' +
        'DE)'
      '          ) and'
      ''
      '          ( (:BOI_ORDER_CODE is null) or'
      '            (boio.BOI_ORDER_CODE = :BOI_ORDER_CODE)'
      '          )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:DCD_BRANCH_CODE is null) or'
      '    (dcd.DCD_BRANCH_CODE = :DCD_BRANCH_CODE)'
      '  )'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[dp]'
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
          'PRODUCT_COMPANY_PRODUCT_NAMES[dp.PRODUCT_CODE~dp.VENDOR_COMPANY_' +
          'CODE]'
        ParamType = ptInput
        Value = #39' '#39
      end
      item
        DataType = ftWideString
        Name = 'CURRENCY_FIXING[sd.CURRENCY_CODE~sd.STORE_DEAL_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CURRENCY_FIXING[dp.CURRENCY_CODE~sd.STORE_DEAL_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'EXCEPT_EVENT_DAMAGE_STATE[eed]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptUnknown
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 520
    Top = 56
    object qryGroupDeliveriesDetailSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
    end
    object qryGroupDeliveriesDetailDELIVERY_ID: TAbmesWideStringField
      FieldName = 'DELIVERY_ID'
      Size = 122
    end
    object qryGroupDeliveriesDetailPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryGroupDeliveriesDetailDAYS_LEFT: TAbmesFloatField
      FieldName = 'DAYS_LEFT'
    end
    object qryGroupDeliveriesDetailDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
    end
    object qryGroupDeliveriesDetailDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object qryGroupDeliveriesDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryGroupDeliveriesDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryGroupDeliveriesDetailHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object qryGroupDeliveriesDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryGroupDeliveriesDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryGroupDeliveriesDetailPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryGroupDeliveriesDetailPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
    end
    object qryGroupDeliveriesDetailPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_ABBREV_AND_NAME'
      Size = 205
    end
    object qryGroupDeliveriesDetailWORK_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_QUANTITY'
    end
    object qryGroupDeliveriesDetailMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryGroupDeliveriesDetailMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryGroupDeliveriesDetailACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qryGroupDeliveriesDetailACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryGroupDeliveriesDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryGroupDeliveriesDetailTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryGroupDeliveriesDetailCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object qryGroupDeliveriesDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryGroupDeliveriesDetailDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object qryGroupDeliveriesDetailDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object qryGroupDeliveriesDetailDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object qryGroupDeliveriesDetailPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryGroupDeliveriesDetailPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qryGroupDeliveriesDetailVENDOR_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_PRODUCT_NAME'
      Size = 50
    end
    object qryGroupDeliveriesDetailREAL_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_WORK_QUANTITY'
    end
    object qryGroupDeliveriesDetailREAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE'
    end
    object qryGroupDeliveriesDetailREAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_QUANTITY'
    end
    object qryGroupDeliveriesDetailPLAN_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'PLAN_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qryGroupDeliveriesDetailREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qryGroupDeliveriesDetailDAMAGES_STATE_CODE: TAbmesFloatField
      FieldName = 'DAMAGES_STATE_CODE'
    end
    object qryGroupDeliveriesDetailDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
    end
    object qryGroupDeliveriesDetailDELIVERY_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
    object qryGroupDeliveriesDetailTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TRANSPORT_MEASURE_ABBREV'
      Size = 5
    end
    object qryGroupDeliveriesDetailTRANSPORT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'TRANSPORT_MEASURE_COEF'
    end
    object qryGroupDeliveriesDetailRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object qryGroupDeliveriesDetailRECEIVE_DATE_RSV: TAbmesFloatField
      FieldName = 'RECEIVE_DATE_RSV'
    end
    object qryGroupDeliveriesDetailRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
    end
    object qryGroupDeliveriesDetailRETURN_DATE_RSV: TAbmesFloatField
      FieldName = 'RETURN_DATE_RSV'
    end
    object qryGroupDeliveriesDetailIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
    end
    object qryGroupDeliveriesDetailPLAN_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'PLAN_LEASE_DATE_UNIT_QTY'
    end
    object qryGroupDeliveriesDetailREAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'REAL_LEASE_DATE_UNIT_QTY'
    end
  end
  object prvGroupDeliveriesDetail: TDataSetProvider
    DataSet = qryGroupDeliveriesDetail
    Left = 520
    Top = 8
  end
  object qryUpdateDCPSDStore: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'P_PSD_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  PLANNED_STORE_DEALS_FOR_EDIT psdfe'
      'set'
      '  STORE_CODE = :P_PSD_STORE_CODE'
      'where'
      
        '  (psdfe.PLANNED_STORE_DEAL_BRANCH_CODE, psdfe.PLANNED_STORE_DEA' +
        'L_CODE) in'
      '  ( select'
      '      psd.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '      psd.PLANNED_STORE_DEAL_CODE'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      '      (dc.DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE) and'
      '      (dc.DCD_OBJECT_CODE = :DCD_OBJECT_CODE) and'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_B' +
        'RANCH_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE)'
      '  )'
      ' '
      ' '
      ' '
      ' '
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 624
    Top = 312
  end
  object mshLocalMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'DELIVERY_DATE'
        Strings.Strings = (
          'Decode(%1,'
          '    3, %3.DELIVERY_DATE,'
          '    4, Decode(%2, 1, %3.RECEIVE_DATE, %3.RETURN_DATE),'
          '    5, %3.DELIVERY_DATE,'
          '    6, %3.DELIVERY_DATE,'
          '    7, Decode(%2, 1, %3.RECEIVE_DATE, %3.RETURN_DATE),'
          '    null'
          ')')
      end
      item
        Name = 'LEASE_DATE_UNIT_QTY'
        Strings.Strings = (
          '-- sashtoto macro go ima i v dmDocXML'
          'Decode('
          '  ( select'
          '      library_bdt.OBTAINMENT_TYPE_CODE'
          '    from'
          '      BORDER_DEAL_TYPES library_bdt'
          '    where'
          
            '      (library_bdt.BORDER_DEAL_TYPE_CODE = %1.DELIVERY_DEAL_TYPE' +
            '_CODE)'
          '  ),'
          '  CommonConsts.otLease, %2.LEASE_DATE_UNIT_QTY,'
          '  1'
          ')')
      end
      item
        Name = 'dcdm_OBJECTIVE'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'dcdm_SUBJECTIVE'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'DCD_STATUS_CODE'
        Strings.Strings = (
          '( case'
          '    when (%1.IS_CANCELED = 1) then'
          '      8'
          ''
          '    when (%1.IS_DONE = 1) then'
          '      7'
          ''
          '    when (%1.DCD_MODE_CODE = 1) then'
          '      ( case'
          '          when'
          '            ( %1.P_WORK_QUANTITY <='
          '              ( select'
          '                  Sum(lib_sd.QUANTITY)'
          '                from'
          '                  DELIVERY_CONTRACTS lib_dc,'
          '                  DELIVERY_PROJECTS lib_dp,'
          '                  STORE_DEALS lib_sd'
          '                where'
          
            '                  (lib_dc.DCD_OBJECT_BRANCH_CODE = %1.DCD_OBJECT' +
            '_BRANCH_CODE) and'
          
            '                  (lib_dc.DCD_OBJECT_CODE = %1.DCD_OBJECT_CODE) ' +
            'and'
          ''
          
            '                  (lib_sd.BND_PROCESS_OBJECT_BRANCH_CODE = lib_d' +
            'c.DELIVERY_OBJECT_BRANCH_CODE) and'
          
            '                  (lib_sd.BND_PROCESS_OBJECT_CODE = lib_dc.DELIV' +
            'ERY_OBJECT_CODE) and'
          '                  (lib_sd.STORNO_EMPLOYEE_CODE is null) and'
          ''
          
            '                  (lib_dp.DCD_OBJECT_BRANCH_CODE = lib_dc.DCD_OB' +
            'JECT_BRANCH_CODE) and'
          
            '                  (lib_dp.DCD_OBJECT_CODE = lib_dc.DCD_OBJECT_CO' +
            'DE) and'
          
            '                  (lib_dp.DELIVERY_PROJECT_CODE = lib_dc.DELIVER' +
            'Y_PROJECT_CODE) and'
          '                  (lib_dp.ANNUL_EMPLOYEE_CODE is null)'
          '              ) '
          '            ) then'
          '            6'
          ''
          '          when'
          '            (ContextDate > %1.P_DEFICIT_COVER_DATE) then'
          '            5'
          ''
          '          when'
          '            ( %1.P_WORK_QUANTITY <='
          '              ( select'
          '                  Sum(lib_dp.WORK_QUANTITY)'
          '                from'
          '                  DELIVERY_PROJECTS lib_dp,'
          '                  DELIVERY_CONTRACTS lib_dc'
          '                where'
          
            '                  (lib_dp.DCD_OBJECT_BRANCH_CODE = %1.DCD_OBJECT' +
            '_BRANCH_CODE) and'
          
            '                  (lib_dp.DCD_OBJECT_CODE = %1.DCD_OBJECT_CODE) ' +
            'and'
          
            '                  (lib_dc.DCD_OBJECT_BRANCH_CODE = lib_dp.DCD_OB' +
            'JECT_BRANCH_CODE) and'
          
            '                  (lib_dc.DCD_OBJECT_CODE = lib_dp.DCD_OBJECT_CO' +
            'DE) and'
          
            '                  (lib_dc.DELIVERY_PROJECT_CODE = lib_dp.DELIVER' +
            'Y_PROJECT_CODE) and'
          '                  (lib_dp.ANNUL_EMPLOYEE_CODE is null)'
          '              )'
          '            ) then'
          '            4'
          ''
          '          when'
          '            ( %1.P_WORK_QUANTITY <='
          '              ( select'
          '                  Sum(lib_dp.WORK_QUANTITY)'
          '                from'
          '                  DELIVERY_PROJECTS lib_dp'
          '                where'
          
            '                  (lib_dp.DCD_OBJECT_BRANCH_CODE = %1.DCD_OBJECT' +
            '_BRANCH_CODE) and'
          
            '                  (lib_dp.DCD_OBJECT_CODE = %1.DCD_OBJECT_CODE) ' +
            'and'
          
            '                  (lib_dp.DELIVERY_DECISION_CODE is not null) an' +
            'd'
          '                  (lib_dp.ANNUL_EMPLOYEE_CODE is null)'
          '              )'
          '            ) then'
          '            3'
          ''
          '          when'
          '        (ContextDate > %1.PLAN_DECISION_DATE) then'
          '            2'
          ''
          '          else'
          '            1'
          '        end'
          '      )'
          ''
          '    when (%1.DCD_MODE_CODE = 2) then'
          '      ( case'
          '          when'
          '            (exists'
          '              ( select'
          '                  1'
          '                from'
          '                  DELIVERY_CONTRACTS lib_dc,'
          '                  DELIVERY_PROJECTS lib_dp'
          '                where'
          
            '                  (lib_dc.DCD_OBJECT_BRANCH_CODE = %1.DCD_OBJECT' +
            '_BRANCH_CODE) and'
          
            '                  (lib_dc.DCD_OBJECT_CODE = %1.DCD_OBJECT_CODE) ' +
            'and'
          ''
          
            '                  (lib_dp.DCD_OBJECT_BRANCH_CODE = lib_dc.DCD_OB' +
            'JECT_BRANCH_CODE) and'
          
            '                  (lib_dp.DCD_OBJECT_CODE = lib_dc.DCD_OBJECT_CO' +
            'DE) and'
          
            '                  (lib_dp.DELIVERY_PROJECT_CODE = lib_dc.DELIVER' +
            'Y_PROJECT_CODE) and'
          '                  (lib_dp.ANNUL_EMPLOYEE_CODE is null)'
          '              )'
          '            ) and'
          '            (not exists'
          '              ( select'
          '                  1'
          '                from'
          '                  DELIVERY_CONTRACTS lib_dc,'
          '                  DELIVERY_PROJECTS lib_dp'
          '                where'
          
            '                  (lib_dc.DCD_OBJECT_BRANCH_CODE = %1.DCD_OBJECT' +
            '_BRANCH_CODE) and'
          
            '                  (lib_dc.DCD_OBJECT_CODE = %1.DCD_OBJECT_CODE) ' +
            'and'
          ''
          
            '                  (lib_dc.DCD_OBJECT_BRANCH_CODE = lib_dp.DCD_OB' +
            'JECT_BRANCH_CODE) and'
          
            '                  (lib_dc.DCD_OBJECT_CODE = lib_dp.DCD_OBJECT_CO' +
            'DE) and'
          
            '                  (lib_dc.DELIVERY_PROJECT_CODE = lib_dp.DELIVER' +
            'Y_PROJECT_CODE) and'
          '                  (lib_dp.ANNUL_EMPLOYEE_CODE is null) and'
          ''
          '                  (lib_dp.WORK_QUANTITY >'
          '                    ( select'
          '                        Coalesce(Sum(lib_sd.QUANTITY), 0)'
          '                      from'
          '                        STORE_DEALS lib_sd'
          '                      where'
          
            '                        (lib_sd.BND_PROCESS_OBJECT_BRANCH_CODE =' +
            ' lib_dc.DELIVERY_OBJECT_BRANCH_CODE) and'
          
            '                        (lib_sd.BND_PROCESS_OBJECT_CODE = lib_dc' +
            '.DELIVERY_OBJECT_CODE) and'
          '                        (lib_sd.STORNO_EMPLOYEE_CODE is null)'
          '                    )'
          '                  )'
          '              )'
          '            ) then'
          '            6'
          ''
          '          when'
          '            (exists'
          '              ( select'
          '                  1'
          '                from'
          '                  DELIVERY_CONTRACTS lib_dc,'
          '                  DELIVERY_PROJECTS lib_dp'
          '                where'
          
            '                  (lib_dc.DCD_OBJECT_BRANCH_CODE = %1.DCD_OBJECT' +
            '_BRANCH_CODE) and'
          
            '                  (lib_dc.DCD_OBJECT_CODE = %1.DCD_OBJECT_CODE) ' +
            'and'
          ''
          
            '                  (lib_dc.DCD_OBJECT_BRANCH_CODE = lib_dp.DCD_OB' +
            'JECT_BRANCH_CODE) and'
          
            '                  (lib_dc.DCD_OBJECT_CODE = lib_dp.DCD_OBJECT_CO' +
            'DE) and'
          
            '                  (lib_dc.DELIVERY_PROJECT_CODE = lib_dp.DELIVER' +
            'Y_PROJECT_CODE) and'
          '                  (lib_dp.ANNUL_EMPLOYEE_CODE is null) and'
          '                  '
          '                  (ContextDate > lib_dp.DEFICIT_COVER_DATE)'
          '              )'
          '            ) then'
          '            5'
          ''
          '          when'
          '            (exists'
          '              ( select'
          '                  1'
          '                from'
          '                  DELIVERY_PROJECTS lib_dp,'
          '                  DELIVERY_DECISIONS lib_dd'
          '                where'
          
            '                  (lib_dp.DCD_OBJECT_BRANCH_CODE = %1.DCD_OBJECT' +
            '_BRANCH_CODE) and'
          
            '                  (lib_dp.DCD_OBJECT_CODE = %1.DCD_OBJECT_CODE) ' +
            'and'
          '                  '
          '                  (lib_dp.ANNUL_EMPLOYEE_CODE is null) and'
          
            '                  (lib_dp.DELIVERY_DECISION_CODE = lib_dd.DELIVE' +
            'RY_DECISION_CODE) and'
          ''
          '                  (lib_dd.ALLOWS_DELIVERY_CONTRACT = 1)'
          '              )'
          '            ) and'
          '            (not exists'
          '              ( select'
          '                  1'
          '                from'
          '                  DELIVERY_PROJECTS lib_dp,'
          '                  DELIVERY_DECISIONS lib_dd'
          '                where'
          
            '                  (lib_dp.DCD_OBJECT_BRANCH_CODE = %1.DCD_OBJECT' +
            '_BRANCH_CODE) and'
          
            '                  (lib_dp.DCD_OBJECT_CODE = %1.DCD_OBJECT_CODE) ' +
            'and'
          ''
          
            '                  (lib_dp.ANNUL_EMPLOYEE_CODE is null) and      ' +
            '            '
          
            '                  (lib_dp.DELIVERY_DECISION_CODE = lib_dd.DELIVE' +
            'RY_DECISION_CODE) and'
          ''
          '                  (lib_dd.ALLOWS_DELIVERY_CONTRACT = 1) and'
          '                  (not exists'
          '                    ( select'
          '                        1'
          '                      from'
          '                        DELIVERY_CONTRACTS lib_dc'
          '                      where'
          
            '                        (lib_dc.DCD_OBJECT_BRANCH_CODE = lib_dp.' +
            'DCD_OBJECT_BRANCH_CODE) and'
          
            '                        (lib_dc.DCD_OBJECT_CODE = lib_dp.DCD_OBJ' +
            'ECT_CODE) and'
          
            '                        (lib_dc.DELIVERY_PROJECT_CODE = lib_dp.D' +
            'ELIVERY_PROJECT_CODE)'
          '                    )'
          '                  )'
          '              )'
          '            ) then'
          '            4'
          ''
          '          when'
          '            (exists'
          '              ( select'
          '                  1'
          '                from'
          '                  DELIVERY_PROJECTS lib_dp'
          '                where'
          
            '                  (lib_dp.DCD_OBJECT_BRANCH_CODE = %1.DCD_OBJECT' +
            '_BRANCH_CODE) and'
          
            '                  (lib_dp.DCD_OBJECT_CODE = %1.DCD_OBJECT_CODE) ' +
            'and'
          '                  (lib_dp.ANNUL_EMPLOYEE_CODE is null)'
          '              )'
          '            ) and'
          '            (not exists'
          '              ( select'
          '                  1'
          '                from'
          '                  DELIVERY_PROJECTS lib_dp'
          '                where'
          
            '                  (lib_dp.DCD_OBJECT_BRANCH_CODE = %1.DCD_OBJECT' +
            '_BRANCH_CODE) and'
          
            '                  (lib_dp.DCD_OBJECT_CODE = %1.DCD_OBJECT_CODE) ' +
            'and'
          '                  (lib_dp.ANNUL_EMPLOYEE_CODE is null) and'
          '                  (lib_dp.DELIVERY_DECISION_CODE is null)'
          '              )'
          '            ) then'
          '            3'
          ''
          '          when (ContextDate > %1.PLAN_DECISION_DATE) then'
          '            2'
          '        else'
          '          1'
          '        end'
          '      )'
          '  else'
          '    0'
          '  end'
          ')')
      end>
    Left = 48
    Top = 344
  end
  object qryDeliveryDefaults: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_Number(:PARTNER_CODE) as PARTNER_CODE,'
      
        '  %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :B' +
        'ORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ PARTNER_OFFICE' +
        '_CODE ~ OVERRIDE_PARTNER_OFFICE] as PARTNER_OFFICE_CODE,'
      ''
      
        '  %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :B' +
        'ORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ MEDIATOR_COMPA' +
        'NY_CODE ~ OVERRIDE_MEDIATOR_COMPANY] as MEDIATOR_COMPANY_CODE,'
      ''
      
        '  %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :B' +
        'ORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ TRANSPORT_DURA' +
        'TION_DAYS ~ OVERRIDE_TRANSPORT_DURATION] as TRANSPORT_DURATION_D' +
        'AYS,'
      
        '  %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :B' +
        'ORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ SHIPMENT_TYPE_' +
        'CODE ~ OVERRIDE_SHIPMENT_TYPE] as SHIPMENT_TYPE_CODE,'
      
        '  %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :B' +
        'ORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ IS_PARTNER_TRA' +
        'NSPORT ~ OVERRIDE_IS_PARTNER_TRANSPORT] as IS_PARTNER_TRANSPORT,'
      
        '  %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :B' +
        'ORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ CUSTOMHOUSE_CO' +
        'DE ~ OVERRIDE_CUSTOMHOUSE] as CUSTOMHOUSE_CODE,'
      ''
      '  Coalesce('
      
        '    %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PRODUCT[:PARTNER_CODE ~ ' +
        ':BORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ STORE_CODE ~' +
        ' OVERRIDE_STORE],'
      
        '    %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ ' +
        ':BORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ STORE_CODE ~' +
        ' OVERRIDE_STORE]'
      '  ) as STORE_CODE,'
      ''
      
        '  %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PRODUCT[:PARTNER_CODE ~ :B' +
        'ORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ RESOLVE_DURATI' +
        'ON_DAYS ~ OVERRIDE_RESOLVE_DURATION_DAYS] as RESOLVE_DURATION_DA' +
        'YS,'
      ''
      '  MiscUtils.GetNamedValue(x.PRICE_ROW, '#39'PRICE'#39') as PRICE,'
      
        '  MiscUtils.GetNamedValue(x.PRICE_ROW, '#39'CURRENCY_CODE'#39') as CURRE' +
        'NCY_CODE,'
      
        '  MiscUtils.GetNamedValue(x.PRICE_ROW, '#39'DATE_UNIT_CODE'#39') as LEAS' +
        'E_DATE_UNIT_CODE'
      ''
      'from'
      '  ( select'
      
        '      ProductUtils.ProductPartnerPrice2(:PRODUCT_CODE, :PARTNER_' +
        'CODE, :BORDER_REL_TYPE_CODE, :OBTAINMENT_TYPE_CODE, :THE_DATE, 1' +
        ') as PRICE_ROW'
      '    from'
      '      DUAL'
      '  ) x'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ PARTNER_OFFICE_CO' +
          'DE ~ OVERRIDE_PARTNER_OFFICE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ MEDIATOR_COMPANY_' +
          'CODE ~ OVERRIDE_MEDIATOR_COMPANY]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ TRANSPORT_DURATIO' +
          'N_DAYS ~ OVERRIDE_TRANSPORT_DURATION]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ SHIPMENT_TYPE_COD' +
          'E ~ OVERRIDE_SHIPMENT_TYPE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ IS_PARTNER_TRANSP' +
          'ORT ~ OVERRIDE_IS_PARTNER_TRANSPORT]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ CUSTOMHOUSE_CODE ' +
          '~ OVERRIDE_CUSTOMHOUSE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PRODUCT[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ STORE_CODE ~ OVER' +
          'RIDE_STORE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ STORE_CODE ~ OVER' +
          'RIDE_STORE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PRODUCT[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :THE_DATE ~ RESOLVE_DURATION_' +
          'DAYS ~ OVERRIDE_RESOLVE_DURATION_DAYS]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 496
    Top = 280
    object qryDeliveryDefaultsPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object qryDeliveryDefaultsPARTNER_OFFICE_CODE: TAbmesFloatField
      FieldName = 'PARTNER_OFFICE_CODE'
    end
    object qryDeliveryDefaultsMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object qryDeliveryDefaultsTRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'TRANSPORT_DURATION_DAYS'
    end
    object qryDeliveryDefaultsSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object qryDeliveryDefaultsIS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_PARTNER_TRANSPORT'
    end
    object qryDeliveryDefaultsCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object qryDeliveryDefaultsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryDeliveryDefaultsRESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'RESOLVE_DURATION_DAYS'
    end
    object qryDeliveryDefaultsPRICE: TAbmesFloatField
      FieldName = 'PRICE'
    end
    object qryDeliveryDefaultsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryDeliveryDefaultsLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
  end
  object prvDeliveryDefaults: TDataSetProvider
    DataSet = qryDeliveryDefaults
    UpdateMode = upWhereKeyOnly
    Left = 496
    Top = 232
  end
  object qryGetNewDeliveryDecisionCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_DELIVERY_DECISIONS.NextVal as NEW_DELIVERY_DECISION_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 408
    Top = 504
    object qryGetNewDeliveryDecisionCodeNEW_DELIVERY_DECISION_CODE: TAbmesFloatField
      FieldName = 'NEW_DELIVERY_DECISION_CODE'
    end
  end
  object qrySaleID: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE as PROCESS_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE as PROCESS_OBJECT_CODE,'
      '  s.SALE_ORDER_TYPE_CODE,'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO'
      'from'
      '  SALES s'
      'where'
      '  (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) and'
      '  (s.SALE_NO = :SALE_NO) and'
      '  (s.SALE_ORDER_TYPE_CODE in (1, 6, 7))'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 127
    Top = 416
    object qrySaleIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object qrySaleIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
    object qrySaleIDSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      Required = True
    end
    object qrySaleIDREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object qrySaleIDREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
  end
  object prvSaleID: TDataSetProvider
    DataSet = qrySaleID
    Left = 126
    Top = 400
  end
  object qryDCDModes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  dcdm.DCD_MODE_CODE,'
      '  dcdm.DCD_MODE_NO,'
      '  dcdm.DCD_MODE_NAME,'
      '  dcdm.DCD_MODE_ABBREV'
      'from'
      '  DCD_MODES dcdm'
      'order by'
      '  dcdm.DCD_MODE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 192
    Top = 504
    object qryDCDModesDCD_MODE_CODE: TAbmesFloatField
      FieldName = 'DCD_MODE_CODE'
      Required = True
    end
    object qryDCDModesDCD_MODE_NO: TAbmesFloatField
      FieldName = 'DCD_MODE_NO'
      Required = True
    end
    object qryDCDModesDCD_MODE_NAME: TAbmesWideStringField
      FieldName = 'DCD_MODE_NAME'
      Required = True
      Size = 100
    end
    object qryDCDModesDCD_MODE_ABBREV: TAbmesWideStringField
      FieldName = 'DCD_MODE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object prvDCDModes: TDataSetProvider
    DataSet = qryDCDModes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 192
    Top = 456
  end
  object qryUpdateDeliveryContractInvoiceData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'INVOICE_ABBREV'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftFloat
        Name = 'IS_PROFORM_INVOICE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'INVOICE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  DELIVERY_CONTRACTS dc'
      'set'
      '  dc.INVOICE_NO = :INVOICE_NO,'
      '  dc.INVOICE_ABBREV = :INVOICE_ABBREV,'
      '  dc.IS_PROFORM_INVOICE = :IS_PROFORM_INVOICE,'
      '  dc.INVOICE_DATE = :INVOICE_DATE'
      'where'
      '  (dc.DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE) and'
      '  (dc.DCD_OBJECT_CODE = :DCD_OBJECT_CODE) and'
      '  (dc.DELIVERY_PROJECT_CODE = :DELIVERY_PROJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 96
    Top = 552
  end
  object qryMultiDecisionData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dcd.DCD_OBJECT_BRANCH_CODE,'
      '  dcd.DCD_OBJECT_CODE,'
      '  dcd.DCD_BRANCH_CODE as FO_DCD_BRANCH_CODE,'
      '  Cast(null as Date) as REAL_DECISION_DATE,'
      '  Cast(null as Number(10)) as DELIVERY_DECISION_CODE,'
      '  Cast(null as Number(10)) as DECISION_EMPLOYEE_CODE,'
      '  Cast(null as Number(10)) as DELIVERY_OBJECT_BRANCH_CODE,'
      '  Cast(null as Number(10)) as DELIVERY_OBJECT_CODE,'
      '  Cast(null as Number(10)) as DELIVERY_TYPE_CODE,'
      '  Cast(null as Number(10)) as PRIORITY_CODE,'
      '  Cast(null as Number(10)) as FO_BRANCH_CODE,'
      '  Cast(null as Number(10)) as FO_EXEC_DEPT_CODE,'
      '  Cast(null as Number(10)) as FO_PRIORITY_CODE,'
      '  Cast(null as Number(10)) as FO_WORK_FINANCIAL_PRODUCT_CODE,'
      '  Cast(null as Number(10)) as FO_PARTNER_CODE,'
      '  Cast(null as Number(10)) as SPEC_FIN_MODEL_CODE'
      ''
      'from'
      '  DEFICIT_COVER_DECISIONS dcd'
      ''
      'where'
      '  (dcd.DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE) and'
      '  (dcd.DCD_OBJECT_CODE = :DCD_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 96
    Top = 664
    object qryMultiDecisionDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object qryMultiDecisionDataDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object qryMultiDecisionDataREAL_DECISION_DATE: TAbmesSQLTimeStampField
      FieldName = 'REAL_DECISION_DATE'
    end
    object qryMultiDecisionDataDELIVERY_DECISION_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DECISION_CODE'
    end
    object qryMultiDecisionDataDECISION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DECISION_EMPLOYEE_CODE'
    end
    object qryMultiDecisionDataDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
    end
    object qryMultiDecisionDataDELIVERY_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
    object qryMultiDecisionDataDELIVERY_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_TYPE_CODE'
    end
    object qryMultiDecisionDataPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object qryMultiDecisionDataFO_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FO_BRANCH_CODE'
    end
    object qryMultiDecisionDataFO_EXEC_DEPT_CODE: TAbmesFloatField
      FieldName = 'FO_EXEC_DEPT_CODE'
    end
    object qryMultiDecisionDataFO_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'FO_PRIORITY_CODE'
    end
    object qryMultiDecisionDataFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FO_WORK_FINANCIAL_PRODUCT_CODE'
    end
    object qryMultiDecisionDataFO_PARTNER_CODE: TAbmesFloatField
      FieldName = 'FO_PARTNER_CODE'
    end
    object qryMultiDecisionDataSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
    end
    object qryMultiDecisionDataFO_DCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FO_DCD_BRANCH_CODE'
      Required = True
    end
  end
  object prvMultiDecisionData: TDataSetProvider
    DataSet = qryMultiDecisionData
    BeforeUpdateRecord = prvMultiDecisionDataBeforeUpdateRecord
    Left = 96
    Top = 616
  end
  object cdsDeliveryMultiDecision: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDelivery'
    OnReconcileError = cdsDeliveryMultiDecisionReconcileError
    Left = 376
    Top = 664
    object cdsDeliveryMultiDecisionVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object cdsDeliveryMultiDecisionMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object cdsDeliveryMultiDecisionSTART_DATE: TAbmesSQLTimeStampField
      FieldName = 'START_DATE'
    end
    object cdsDeliveryMultiDecisionREGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REGISTER_DATE'
    end
    object cdsDeliveryMultiDecisionPLAN_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_POSITION_DATE'
    end
    object cdsDeliveryMultiDecisionREAL_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'REAL_POSITION_DATE'
    end
    object cdsDeliveryMultiDecisionPLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_VENDOR_POSITION_DATE'
    end
    object cdsDeliveryMultiDecisionREAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'REAL_VENDOR_POSITION_DATE'
    end
    object cdsDeliveryMultiDecisionREAL_DECISION_DATE: TAbmesSQLTimeStampField
      FieldName = 'REAL_DECISION_DATE'
    end
    object cdsDeliveryMultiDecisionMAX_BASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'MAX_BASE_SINGLE_PRICE'
    end
    object cdsDeliveryMultiDecisionDELIVERY_DECISION_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DECISION_CODE'
    end
    object cdsDeliveryMultiDecisionDELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'DELIVERY_DATE'
    end
    object cdsDeliveryMultiDecisionWORK_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_QUANTITY'
    end
    object cdsDeliveryMultiDecisionACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object cdsDeliveryMultiDecisionCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsDeliveryMultiDecisionTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object cdsDeliveryMultiDecisionSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object cdsDeliveryMultiDecisionDECISION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DECISION_EMPLOYEE_CODE'
    end
    object cdsDeliveryMultiDecisionDIALOG_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DIALOG_EMPLOYEE_CODE'
    end
    object cdsDeliveryMultiDecisionDELIVERY_VENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_VENDOR_COMPANY_CODE'
    end
    object cdsDeliveryMultiDecisionDELIVERY_VENDOR_OFFICE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_VENDOR_OFFICE_CODE'
    end
    object cdsDeliveryMultiDecisionSHIPMENT_DAYS: TAbmesFloatField
      FieldName = 'SHIPMENT_DAYS'
    end
    object cdsDeliveryMultiDecisionCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object cdsDeliveryMultiDecisionSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object cdsDeliveryMultiDecisionPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsDeliveryMultiDecisionIS_TRANSPORT_FROM_VENDOR: TAbmesFloatField
      FieldName = 'IS_TRANSPORT_FROM_VENDOR'
    end
    object cdsDeliveryMultiDecisionDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object cdsDeliveryMultiDecisionDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object cdsDeliveryMultiDecisionDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDeliveryMultiDecisionCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsDeliveryMultiDecisionCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsDeliveryMultiDecisionCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsDeliveryMultiDecisionCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsDeliveryMultiDecisionCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsDeliveryMultiDecisionCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsDeliveryMultiDecisionACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object cdsDeliveryMultiDecisionDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
    end
    object cdsDeliveryMultiDecisionDELIVERY_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
    object cdsDeliveryMultiDecisionDELIVERY_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_TYPE_CODE'
    end
    object cdsDeliveryMultiDecisionDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object cdsDeliveryMultiDecisionDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDeliveryMultiDecisionHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object cdsDeliveryMultiDecisionIS_ACTIVATED_BY_VENDOR: TAbmesFloatField
      FieldName = 'IS_ACTIVATED_BY_VENDOR'
    end
    object cdsDeliveryMultiDecisionFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object cdsDeliveryMultiDecisionFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object cdsDeliveryMultiDecisionFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object cdsDeliveryMultiDecisionANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsDeliveryMultiDecisionANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object cdsDeliveryMultiDecisionANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object cdsDeliveryMultiDecisionDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
    end
    object cdsDeliveryMultiDecisionDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
    object cdsDeliveryMultiDecisionSD_QUANTITY: TAbmesFloatField
      FieldName = 'SD_QUANTITY'
    end
    object cdsDeliveryMultiDecisionOUR_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'OUR_OFFER_QUANTITY'
    end
    object cdsDeliveryMultiDecisionOUR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'OUR_OFFER_ACCOUNT_QUANTITY'
    end
    object cdsDeliveryMultiDecisionOUR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'OUR_OFFER_SINGLE_PRICE'
    end
    object cdsDeliveryMultiDecisionOUR_OFFER_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'OUR_OFFER_CURRENCY_CODE'
    end
    object cdsDeliveryMultiDecisionVENDOR_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'VENDOR_OFFER_QUANTITY'
    end
    object cdsDeliveryMultiDecisionVENDOR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'VENDOR_OFFER_ACCOUNT_QUANTITY'
    end
    object cdsDeliveryMultiDecisionVENDOR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'VENDOR_OFFER_SINGLE_PRICE'
    end
    object cdsDeliveryMultiDecisionVENDOR_OFFER_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_OFFER_CURRENCY_CODE'
    end
    object cdsDeliveryMultiDecisionPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_BEGIN_DATE'
    end
    object cdsDeliveryMultiDecisionPROGNOSIS_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_END_DATE'
    end
    object cdsDeliveryMultiDecisionOUR_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'OUR_OFFER_LEASE_DATE_UNIT_QTY'
    end
    object cdsDeliveryMultiDecisionV_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'V_OFFER_LEASE_DATE_UNIT_QTY'
    end
    object cdsDeliveryMultiDecisionLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
    end
    object cdsDeliveryMultiDecisionOUR_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'OUR_OFFER_LEASE_DATE_UNIT_CODE'
    end
    object cdsDeliveryMultiDecisionV_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'V_OFFER_LEASE_DATE_UNIT_CODE'
    end
    object cdsDeliveryMultiDecisionLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object cdsDeliveryMultiDecisionRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object cdsDeliveryMultiDecisionRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
    end
    object cdsDeliveryMultiDecisionSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsDeliveryMultiDecisionSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsDeliveryMultiDecisionSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object cdsDeliveryMultiDecisionSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object cdsDeliveryMultiDecisionDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
    end
    object cdsDeliveryMultiDecisionASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object cdsDeliveryMultiDecisionACCOUNT_MAX_BASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_MAX_BASE_SINGLE_PRICE'
    end
    object cdsDeliveryMultiDecisionACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
    end
    object cdsDeliveryMultiDecisionACC_OUR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_OUR_OFFER_SINGLE_PRICE'
    end
    object cdsDeliveryMultiDecisionACC_VENDOR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_VENDOR_OFFER_SINGLE_PRICE'
    end
    object cdsDeliveryMultiDecisionINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object cdsDeliveryMultiDecisionINVOICE_ABBREV: TAbmesWideStringField
      FieldName = 'INVOICE_ABBREV'
      Size = 5
    end
    object cdsDeliveryMultiDecisionIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
    end
    object cdsDeliveryMultiDecisionINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object cdsDeliveryMultiDecisionFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object cdsDeliveryMultiDecisionFO_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FO_BRANCH_CODE'
    end
    object cdsDeliveryMultiDecisionFO_EXEC_DEPT_CODE: TAbmesFloatField
      FieldName = 'FO_EXEC_DEPT_CODE'
    end
    object cdsDeliveryMultiDecisionFO_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'FO_PRIORITY_CODE'
    end
    object cdsDeliveryMultiDecisionFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FO_WORK_FINANCIAL_PRODUCT_CODE'
    end
    object cdsDeliveryMultiDecisionFO_PARTNER_CODE: TAbmesFloatField
      FieldName = 'FO_PARTNER_CODE'
    end
    object cdsDeliveryMultiDecisionFO_STATUS_CODE: TAbmesFloatField
      FieldName = 'FO_STATUS_CODE'
    end
    object cdsDeliveryMultiDecisionSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
    end
    object cdsDeliveryMultiDecisionFO_CLOSE_REQUESTED: TAbmesFloatField
      FieldName = 'FO_CLOSE_REQUESTED'
    end
    object cdsDeliveryMultiDecisionPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object cdsDeliveryMultiDecisionUNFINISHED_DCD_DP_COUNT: TAbmesFloatField
      FieldName = 'UNFINISHED_DCD_DP_COUNT'
    end
    object cdsDeliveryMultiDecisionPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsDeliveryMultiDecisionBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object cdsDeliveryMultiDecisionPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsDeliveryMultiDecisionRESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'RESOLVE_DURATION_DAYS'
    end
    object cdsDeliveryMultiDecisionSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object cdsDeliveryMultiDecisionREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object cdsDeliveryMultiDecisionREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object cdsDeliveryMultiDecisionPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      Required = True
    end
    object cdsDeliveryMultiDecisionPSD_STORE_CODE: TAbmesFloatField
      FieldName = 'PSD_STORE_CODE'
      Required = True
    end
    object cdsDeliveryMultiDecisionDEFICIT_COVER_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEFICIT_COVER_DATE'
      Required = True
    end
    object cdsDeliveryMultiDecisionMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsDeliveryMultiDecisionACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
  end
  object qryDCDActiveDeliveryProjects: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.DCD_OBJECT_BRANCH_CODE,'
      '  dp.DCD_OBJECT_CODE,'
      '  dp.DELIVERY_PROJECT_CODE,'
      '  dp.DELIVERY_DATE,'
      '  dp.REAL_DECISION_DATE,'
      '  dp.DELIVERY_DECISION_CODE,'
      '  dp.DECISION_EMPLOYEE_CODE,'
      ''
      '  ( select'
      
        '     (d.CUSTOM_CODE || '#39'/'#39' || dcd.DCD_CODE || '#39'/'#39' || dp.DELIVERY' +
        '_PROJECT_CODE || '#39'/'#39' || st.STREAM_TYPE_ABBREV)'
      '    from'
      '      DEFICIT_COVER_DECISIONS dcd,'
      '      DEPTS d,'
      '      STREAM_TYPES st'
      '    where'
      
        '      (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      ''
      '      (dcd.DCD_BRANCH_CODE = d.DEPT_CODE) and'
      '      (dcd.STREAM_TYPE_CODE = st.STREAM_TYPE_CODE)'
      '  ) as DELIVERY_ID'
      ''
      'from'
      '  DELIVERY_PROJECTS dp'
      ''
      'where'
      '  (dp.DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = :DCD_OBJECT_CODE) and'
      ''
      '  (dp.FINISH_EMPLOYEE_CODE is null) and'
      '  (dp.ANNUL_EMPLOYEE_CODE is null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 232
    Top = 664
    object qryDCDActiveDeliveryProjectsDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      Required = True
    end
    object qryDCDActiveDeliveryProjectsDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      Required = True
    end
    object qryDCDActiveDeliveryProjectsDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      Required = True
    end
    object qryDCDActiveDeliveryProjectsDELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'DELIVERY_DATE'
    end
    object qryDCDActiveDeliveryProjectsREAL_DECISION_DATE: TAbmesSQLTimeStampField
      FieldName = 'REAL_DECISION_DATE'
    end
    object qryDCDActiveDeliveryProjectsDELIVERY_DECISION_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DECISION_CODE'
    end
    object qryDCDActiveDeliveryProjectsDECISION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DECISION_EMPLOYEE_CODE'
    end
    object qryDCDActiveDeliveryProjectsDELIVERY_ID: TAbmesWideStringField
      FieldName = 'DELIVERY_ID'
      Size = 223
    end
  end
  object prvDCDActiveDeliveryProjects: TDataSetProvider
    DataSet = qryDCDActiveDeliveryProjects
    Options = [poReadOnly, poUseQuoteChar]
    Left = 232
    Top = 616
  end
  object qryDCDForMultiDeliveryProjects: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dcd.DCD_OBJECT_BRANCH_CODE,'
      '  dcd.DCD_OBJECT_CODE,'
      ''
      '  ( select'
      '      bdt.BORDER_DEAL_TYPE_ABBREV'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE)'
      '  ) as DELIVERY_DEAL_TYPE_ABBREV,'
      ''
      '  dcd.V_VENDOR_COMPANY_CODE,'
      ''
      '  ( select'
      '      cnt.COUNTRY_NAME'
      '    from'
      '      COMPANIES c,'
      '      COUNTRIES cnt'
      '    where'
      '      (c.COMPANY_CODE = dcd.V_VENDOR_COMPANY_CODE) and'
      '      (c.COUNTRY_CODE = cnt.COUNTRY_CODE)'
      '  ) as VEDOR_COMPANY_COUNTRY,'
      ''
      '  ( select'
      '      bdt.BORDER_REL_TYPE_CODE'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE)'
      '  ) as BORDER_REL_TYPE_CODE,'
      ''
      '  ( select'
      '      bdt.OBTAINMENT_TYPE_CODE'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = dcd.DELIVERY_DEAL_TYPE_CODE)'
      '  ) as OBTAINMENT_TYPE_CODE'
      ''
      'from'
      '  DEFICIT_COVER_DECISIONS dcd'
      ''
      'where'
      '  (dcd.DCD_BRANCH_CODE = :DCD_BRANCH_CODE) and'
      '  (dcd.DCD_CODE = :DCD_CODE) and'
      ''
      '  (dcd.DCD_MODE_CODE = %dcdm_SUBJECTIVE) and'
      '  (dcd.IS_DONE = 0) and'
      '  (dcd.IS_CANCELED = 0)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'dcdm_SUBJECTIVE'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 672
    Top = 592
    object qryDCDForMultiDeliveryProjectsDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDCDForMultiDeliveryProjectsDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDCDForMultiDeliveryProjectsDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object qryDCDForMultiDeliveryProjectsV_VENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'V_VENDOR_COMPANY_CODE'
    end
    object qryDCDForMultiDeliveryProjectsVEDOR_COMPANY_COUNTRY: TAbmesWideStringField
      FieldName = 'VEDOR_COMPANY_COUNTRY'
      Size = 50
    end
    object qryDCDForMultiDeliveryProjectsBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object qryDCDForMultiDeliveryProjectsOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
  end
  object prvDCDForMultiDeliveryProjects: TDataSetProvider
    DataSet = qryDCDForMultiDeliveryProjects
    UpdateMode = upWhereKeyOnly
    Left = 672
    Top = 544
  end
end
