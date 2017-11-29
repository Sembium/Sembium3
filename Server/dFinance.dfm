inherited dmFinance: TdmFinance
  Height = 530
  Width = 1009
  object prvFinOrder: TDataSetProvider
    DataSet = qryFinOrder
    Options = [poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = prvFinOrderAfterUpdateRecord
    BeforeUpdateRecord = prvFinOrderBeforeUpdateRecord
    BeforeApplyUpdates = prvFinOrderBeforeApplyUpdates
    AfterApplyUpdates = prvFinOrderAfterApplyUpdates
    Left = 64
    Top = 16
  end
  object qryFinOrder: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.FIN_ORDER_CODE,'
      '  x.STATUS_CODE,'
      '  x.FIN_ORDER_BRANCH_CODE,'
      '  x.FIN_ORDER_BRANCH_NO,'
      '  x.FIN_ORDER_NO,'
      '      '
      '  x.EXEC_DEPT_CODE,'
      '  x.EXEC_DEPT_NAME,'
      '  x.EXEC_DEPT_IDENTIFIER,'
      '      '
      '  x.PRIORITY_CODE, '
      '  x.FIN_PROCESS_CODE, '
      '  x.BND_PROCESS_OBJECT_BRANCH_CODE, '
      '  x.BND_PROCESS_OBJECT_CODE, '
      '  x.PARTNER_CODE, '
      '  x.IN_OUT, '
      '  x.BASE_DATE, '
      '      '
      '  x.BASE_FINANCIAL_PRODUCT_CODE, '
      '  x.BASE_FINANCIAL_PRODUCT_NAME,'
      '  x.BASE_FINANCIAL_PRODUCT_NO,'
      '  x.BASE_MEASURE_ABBREV,'
      '      '
      '  x.BASE_QUANTITY, '
      ''
      '  x.WORK_FINANCIAL_PRODUCT_CODE, '
      '  x.WORK_FINANCIAL_PRODUCT_NAME,'
      '  x.WORK_FINANCIAL_PRODUCT_NO,'
      '  x.WORK_MEASURE_ABBREV,'
      ''
      '  x.FIN_CLASS_CODE, '
      '  x.DOCUMENT_IDENTIFIER, '
      '  x.DOCUMENT_DATE, '
      '  x.NOTES, '
      '  x.DOC_BRANCH_CODE, '
      '  x.DOC_CODE, '
      '  x.HAS_DOC_ITEMS,'
      '  x.CREATE_EMPLOYEE_CODE,'
      '  x.CREATE_DATE,'
      '  x.CREATE_TIME,'
      '  x.CHANGE_EMPLOYEE_CODE,'
      '  x.CHANGE_DATE,'
      '  x.CHANGE_TIME,'
      '  x.CLOSE_EMPLOYEE_CODE,'
      '  x.CLOSE_DATE,'
      '  x.CLOSE_TIME,'
      '  x.ANNUL_EMPLOYEE_CODE,'
      '  x.ANNUL_DATE,'
      '  x.ANNUL_TIME,'
      '  x.ACTIVATE_EMPLOYEE_CODE,'
      '  x.ACTIVATE_DATE,'
      '  x.ACTIVATE_TIME,'
      ''
      '  x.PLAN_BEGIN_DATE,'
      
        '  (x.PLAN_BEGIN_DATE - Coalesce(x.REAL_BEGIN_DATE, ContextDate))' +
        ' as BEGIN_DATE_DIFF,'
      ''
      '  x.SPEC_MODEL_DURATION_DAYS,'
      
        '  (x.PLAN_END_DATE - x.PLAN_BEGIN_DATE + 1) as REAL_MODEL_DURATI' +
        'ON_DAYS,'
      '  '
      '  x.MAX_POSITIVE_DIFF,'
      '  x.MAX_NEGATIVE_DIFF,'
      ''
      '  x.PLAN_IN_WORK_QUANTITY,'
      
        '  (x.PLAN_IN_WORK_QUANTITY - Coalesce(x.REAL_IN_WORK_QUANTITY, 0' +
        ')) as IN_WORK_QUANTITY_DIFF,'
      ''
      '  x.PLAN_OUT_WORK_QUANTITY,'
      
        '  (x.PLAN_OUT_WORK_QUANTITY - Coalesce(x.REAL_OUT_WORK_QUANTITY,' +
        ' 0)) as OUT_WORK_QUANTITY_DIFF,'
      ''
      '  x.PLAN_END_DATE,  '
      '  '
      '  ( x.PLAN_END_DATE - '
      
        '    Decode(Sign(x.PLAN_IN_WORK_QUANTITY - Coalesce(x.REAL_IN_WOR' +
        'K_QUANTITY, 0)), 1, ContextDate, x.REAL_IN_END_DATE)'
      '  ) as IN_END_DATE_DIFF,'
      ''
      '  ( x.PLAN_END_DATE -'
      
        '    Decode(Sign(x.PLAN_OUT_WORK_QUANTITY - Coalesce(x.REAL_OUT_W' +
        'ORK_QUANTITY, 0)), 1, ContextDate, x.REAL_OUT_END_DATE)'
      '  ) as OUT_END_DATE_DIFF,'
      ''
      '  x.SALE_OBJECT_BRANCH_CODE,'
      '  x.SALE_OBJECT_CODE,'
      '  x.SALE_SHIPMENT_NO,'
      '  x.DCD_OBJECT_BRANCH_CODE,'
      '  x.DCD_OBJECT_CODE,'
      '  x.DELIVERY_PROJECT_CODE,'
      '  x.REQUEST_BRANCH_CODE,'
      '  x.REQUEST_NO,'
      '  x.BUDGET_ORDER_BRANCH_CODE,'
      '  x.BUDGET_ORDER_CODE,'
      '  x.BUDGET_ORDER_ITEM_CODE,'
      '  x.BOI_ORDER_CODE,'
      '  x.BUDGET_PRODUCT_CODE,'
      '  x.BOIO_DESCRIPTION,'
      ''
      '  x.BND_PROCESS_OBJECT_IDENTIFIER,'
      ''
      '  x.BND_PO_PRODUCT_CODE,'
      '  x.BND_PO_WORK_QUANTITY,'
      
        '  (x.BND_PO_WORK_QUANTITY * p.ACCOUNT_MEASURE_COEF) as BND_PO_AC' +
        'COUNT_QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as BND_PO_WORK_MEASURE_ABBREV,'
      '      '
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '  ) as BND_PO_ACCOUNT_MEASURE_ABBREV,'
      ''
      '  x.SS_STATE_CODE,'
      '  x.DC_STATUS_CODE,'
      '  x.SG_STATUS_CODE,'
      '  x.BOIO_STATUS_CODE,'
      ''
      '  x.BND_OBJECT_IS_ANNULED,'
      ''
      '  x.BASE_DATA_CHANGED,'
      '  x.BDC_CONFIRM_EMPLOYEE_CODE,'
      '  x.BDC_CONFIRM_DATE,'
      '  x.BDC_CONFIRM_TIME,'
      ''
      '  x.FM_MOVEMENT_OFFSET_TYPE_CODE,'
      ''
      '  To_Date(null) as COMPLETE_MODEL_DATE'
      ''
      'from'
      '  ( select'
      '      fo.FIN_ORDER_CODE,'
      ''
      '      %FIN_ORDER_STATUS[fo] as STATUS_CODE,'
      ''
      '      fo.FIN_ORDER_BRANCH_CODE,'
      '      ( select'
      '          d.CUSTOM_CODE'
      '        from'
      '          DEPTS d'
      '        where'
      '          (d.DEPT_CODE = fo.FIN_ORDER_BRANCH_CODE)'
      '      ) as FIN_ORDER_BRANCH_NO,'
      ''
      '      fo.FIN_ORDER_NO,'
      ''
      '      fo.EXEC_DEPT_CODE,'
      '      ( select'
      '          d.NAME'
      '        from'
      '          DEPTS d'
      '        where'
      '          (d.DEPT_CODE = fo.EXEC_DEPT_CODE)'
      '      ) as EXEC_DEPT_NAME,'
      '      ( select'
      
        '          (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETT' +
        'ER)'
      '        from'
      '          DEPTS d,'
      '          DEPT_TYPES dt'
      '        where'
      '          (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '          (d.DEPT_CODE = fo.EXEC_DEPT_CODE)'
      '      ) as EXEC_DEPT_IDENTIFIER,'
      '      '
      '      fo.PRIORITY_CODE, '
      '      fo.FIN_PROCESS_CODE, '
      '      fo.BND_PROCESS_OBJECT_BRANCH_CODE, '
      '      fo.BND_PROCESS_OBJECT_CODE,'
      '      fo.PARTNER_CODE,'
      '      fo.IN_OUT, '
      '      fo.BASE_DATE, '
      '      '
      '      fo.BASE_FINANCIAL_PRODUCT_CODE, '
      '      bp.NAME as BASE_FINANCIAL_PRODUCT_NAME,'
      '      bp.CUSTOM_CODE as BASE_FINANCIAL_PRODUCT_NO,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = bp.MEASURE_CODE)'
      '      ) as BASE_MEASURE_ABBREV,'
      ''
      '      fo.BASE_QUANTITY, '
      ''
      '      fo.WORK_FINANCIAL_PRODUCT_CODE, '
      '      wp.NAME as WORK_FINANCIAL_PRODUCT_NAME,'
      '      wp.CUSTOM_CODE as WORK_FINANCIAL_PRODUCT_NO,'
      '      ( select'
      '          m.MEASURE_ABBREV'
      '        from'
      '          MEASURES m'
      '        where'
      '          (m.MEASURE_CODE = wp.MEASURE_CODE)'
      '      ) as WORK_MEASURE_ABBREV,'
      ''
      '      fo.FIN_CLASS_CODE,'
      '      fo.DOCUMENT_IDENTIFIER, '
      '      fo.DOCUMENT_DATE, '
      '      fo.NOTES, '
      '      fo.DOC_BRANCH_CODE,'
      '      fo.DOC_CODE, '
      '      %HAS_DOC_ITEMS[fo] as HAS_DOC_ITEMS,'
      '      fo.CREATE_EMPLOYEE_CODE, '
      '      fo.CREATE_DATE, '
      '      fo.CREATE_TIME, '
      '      fo.CHANGE_EMPLOYEE_CODE, '
      '      fo.CHANGE_DATE, '
      '      fo.CHANGE_TIME,'
      '      fo.CLOSE_EMPLOYEE_CODE,'
      '      fo.CLOSE_DATE,'
      '      fo.CLOSE_TIME,'
      '      fo.ANNUL_EMPLOYEE_CODE,'
      '      fo.ANNUL_DATE,'
      '      fo.ANNUL_TIME,'
      '      fo.ACTIVATE_EMPLOYEE_CODE,'
      '      fo.ACTIVATE_DATE,'
      '      fo.ACTIVATE_TIME,'
      ''
      '      ( select'
      '          Min(psd.STORE_DEAL_BEGIN_DATE)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      ''
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      ''
      '          (rfml.ANNUL_EMPLOYEE_CODE is null)'
      '      ) as PLAN_BEGIN_DATE,'
      ''
      '      ( select'
      '          Max(psd.STORE_DEAL_BEGIN_DATE)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      ''
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      ''
      '          (rfml.ANNUL_EMPLOYEE_CODE is null)'
      '      ) as PLAN_END_DATE,'
      ''
      '      ( select'
      '          Min(sd.STORE_DEAL_DATE)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          STORE_DEALS sd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      ''
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      ''
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null)'
      '      ) as REAL_BEGIN_DATE,'
      ''
      '      ( select'
      '          Max(sd.STORE_DEAL_DATE)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          STORE_DEALS sd'
      '        where'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      ''
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      ''
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (rfml.IN_OUT = 1) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null)'
      '      ) as REAL_IN_END_DATE,'
      '      '
      '      ( select'
      '          Max(sd.STORE_DEAL_DATE)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          STORE_DEALS sd'
      '        where'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      '        '
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      ''
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (rfml.IN_OUT = -1) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null)'
      '      ) as REAL_OUT_END_DATE,'
      '      '
      '      ( select'
      '          Max('
      '            sfml.MOVEMENT_OFFSET_DAYS +'
      '            Decode(sfm.FM_MOVEMENT_OFFSET_TYPE_CODE,'
      
        '              CommonConsts.fmmotBeginning, Decode(fo.IN_OUT, 1, ' +
        'sfml.MOVEMENT_DURATION_DAYS, 0),'
      
        '              CommonConsts.fmmotEnd, Decode(fo.IN_OUT, -1, -sfml' +
        '.MOVEMENT_DURATION_DAYS, 0)'
      '            )'
      '          ) -'
      '          Min('
      '            sfml.MOVEMENT_OFFSET_DAYS -'
      '            Decode(sfm.FM_MOVEMENT_OFFSET_TYPE_CODE,'
      
        '              CommonConsts.fmmotBeginning, Decode(fo.IN_OUT, 1, ' +
        'sfml.MOVEMENT_DURATION_DAYS, 0),'
      
        '              CommonConsts.fmmotEnd, Decode(fo.IN_OUT, -1, -sfml' +
        '.MOVEMENT_DURATION_DAYS, 0)'
      '            )'
      '          ) +'
      '          1'
      '        from'
      '          SPEC_FIN_MODELS sfm,'
      '          SPEC_FIN_MODEL_LINES sfml'
      '        where'
      
        '          (sfm.SPEC_FIN_MODEL_CODE = sfml.SPEC_FIN_MODEL_CODE) a' +
        'nd'
      ''
      '          (sfm.PARTNER_CODE = fo.PARTNER_CODE) and'
      
        '          (sfm.BORDER_REL_TYPE_CODE = Decode(fo.IN_OUT, -1, %brt' +
        '_VENDOR, 1, %brt_CLIENT)) and'
      
        '          (sfm.FINANCIAL_PRODUCT_CODE = fo.WORK_FINANCIAL_PRODUC' +
        'T_CODE)'
      '      ) as SPEC_MODEL_DURATION_DAYS,'
      ''
      '      ( select'
      '          Max(psd.STORE_DEAL_BEGIN_DATE - sd.STORE_DEAL_DATE)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      ''
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      ''
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      ''
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '          (sd.STORE_DEAL_DATE < psd.STORE_DEAL_BEGIN_DATE)'
      '      ) as MAX_POSITIVE_DIFF,'
      ''
      '      ( select'
      '          Max(sd.STORE_DEAL_DATE - psd.STORE_DEAL_BEGIN_DATE)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      ''
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      ''
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      ''
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '          (sd.STORE_DEAL_DATE > psd.STORE_DEAL_BEGIN_DATE)'
      '      ) as MAX_NEGATIVE_DIFF,'
      ''
      '      Coalesce('
      '        ( select'
      '            Sum(psd.QUANTITY)'
      '          from'
      '            REAL_FIN_MODEL_LINES rfml,'
      '            PLANNED_STORE_DEALS psd'
      '          where'
      
        '            (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE' +
        ') and'
      ''
      '            (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      ''
      '            (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '            (rfml.IN_OUT = 1)'
      '        ),'
      '        Decode(fo.IN_OUT, 1,'
      '          fo.BASE_QUANTITY *'
      '          Decode(fo.BASE_FINANCIAL_PRODUCT_CODE,'
      '            fo.WORK_FINANCIAL_PRODUCT_CODE, 1,'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCIES c,'
      '                CURRENCY_RATES cr'
      '              where'
      
        '                (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUCT_CODE' +
        ') and'
      '                (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '                (cr.RATE_DATE = ContextDate)'
      '            ) /'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCIES c,'
      '                CURRENCY_RATES cr'
      '              where'
      
        '                (c.PRODUCT_CODE = fo.WORK_FINANCIAL_PRODUCT_CODE' +
        ') and'
      '                (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '                (cr.RATE_DATE = ContextDate)'
      '            )'
      '          )'
      '        )'
      '      ) as PLAN_IN_WORK_QUANTITY,'
      ''
      '      ( select'
      '          Sum(sd.QUANTITY)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          STORE_DEALS sd'
      '        where'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      ''
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      ''
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (rfml.IN_OUT = 1) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null)'
      '      ) as REAL_IN_WORK_QUANTITY,'
      ''
      '      Coalesce('
      '        ( select'
      '            Sum(psd.QUANTITY)'
      '          from'
      '            REAL_FIN_MODEL_LINES rfml,'
      '            PLANNED_STORE_DEALS psd'
      '          where'
      
        '            (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE' +
        ') and'
      ''
      '            (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      ''
      '            (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '            (rfml.IN_OUT = -1)'
      '        ),'
      '        Decode(fo.IN_OUT, -1,'
      '          fo.BASE_QUANTITY *'
      '          Decode(fo.BASE_FINANCIAL_PRODUCT_CODE,'
      '            fo.WORK_FINANCIAL_PRODUCT_CODE, 1,'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCIES c,'
      '                CURRENCY_RATES cr'
      '              where'
      
        '                (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUCT_CODE' +
        ') and'
      '                (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '                (cr.RATE_DATE = ContextDate)'
      '            ) /'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCIES c,'
      '                CURRENCY_RATES cr'
      '              where'
      
        '                (c.PRODUCT_CODE = fo.WORK_FINANCIAL_PRODUCT_CODE' +
        ') and'
      '                (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '                (cr.RATE_DATE = ContextDate)'
      '            )'
      '          )'
      '        )'
      '      ) as PLAN_OUT_WORK_QUANTITY,'
      ''
      '      ( select'
      '          Sum(sd.QUANTITY)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          STORE_DEALS sd'
      '        where'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      '        '
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      ''
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (rfml.IN_OUT = -1) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null)'
      '      ) as REAL_OUT_WORK_QUANTITY,'
      '      '
      '      s.SALE_OBJECT_BRANCH_CODE as SALE_OBJECT_BRANCH_CODE,'
      '      s.SALE_OBJECT_CODE as SALE_OBJECT_CODE,'
      '      ss.SALE_SHIPMENT_NO as SALE_SHIPMENT_NO,'
      ''
      '      dc.DCD_OBJECT_BRANCH_CODE as DCD_OBJECT_BRANCH_CODE,'
      '      dc.DCD_OBJECT_CODE as DCD_OBJECT_CODE,'
      '      dc.DELIVERY_PROJECT_CODE as DELIVERY_PROJECT_CODE,'
      ''
      '      srg.REQUEST_BRANCH_CODE as REQUEST_BRANCH_CODE,'
      '      srg.REQUEST_NO as REQUEST_NO,'
      ''
      '      boio.BUDGET_ORDER_BRANCH_CODE,'
      '      boio.BUDGET_ORDER_CODE,'
      '      boio.BUDGET_ORDER_ITEM_CODE,'
      '      boio.BOI_ORDER_CODE,'
      '      ( select'
      '          boi.BUDGET_PRODUCT_CODE'
      '        from'
      '          BUDGET_ORDER_ITEMS boi'
      '        where'
      
        '          (boi.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_ORDER_BRAN' +
        'CH_CODE) and'
      '          (boi.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_CODE) and'
      
        '          (boi.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDER_ITEM_C' +
        'ODE)'
      '      ) as BUDGET_PRODUCT_CODE,'
      '      boio.DESCRIPTION as BOIO_DESCRIPTION,'
      ''
      '      ( select'
      '          po.PROCESS_OBJECT_IDENTIFIER'
      '        from'
      '          PROCESS_OBJECTS po'
      '        where'
      
        '          (po.PROCESS_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      '          (po.PROCESS_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE)'
      '      ) as BND_PROCESS_OBJECT_IDENTIFIER,'
      ''
      
        '      Coalesce(s.PRODUCT_CODE, dp.PRODUCT_CODE, boio.PRODUCT_COD' +
        'E) as BND_PO_PRODUCT_CODE,'
      
        '      Coalesce(ss.PLAN_QUANTITY, dp.WORK_QUANTITY, boio.QUANTITY' +
        ') as BND_PO_WORK_QUANTITY,'
      '      '
      '      case'
      '        when (s.ANNUL_EMPLOYEE_CODE is not null) then'
      '          10'
      ''
      '        when (s.FINISH_EMPLOYEE_CODE is not null) then'
      '          9'
      ''
      '        when ( ( (s.SALE_DEAL_TYPE_CODE <> %sdt_LEASE) and'
      '                 (ss.RECEIVE_DATE is not null) ) or'
      '               ( (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '                 exists('
      '                   select'
      '                     1'
      '                   from'
      '                     SALE_SHIPMENTS ss2'
      '                   where'
      
        '                     (ss2.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '                     (ss2.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE' +
        ') and'
      '                     (ss2.SALE_SHIPMENT_NO ='
      '                       ( select'
      '                           Min(ss3.SALE_SHIPMENT_NO)'
      '                         from'
      '                           SALE_SHIPMENTS ss3'
      '                         where'
      
        '                           (ss3.SALE_OBJECT_BRANCH_CODE = ss.SAL' +
        'E_OBJECT_BRANCH_CODE) and'
      
        '                           (ss3.SALE_OBJECT_CODE = ss.SALE_OBJEC' +
        'T_CODE)'
      '                       )'
      '                     ) and'
      '                     (ss2.RECEIVE_DATE is not null)'
      '                 ) and'
      '                 ( ( (ss.RETURN_PLAN_DATE < ContextDate) and'
      '                     exists('
      '                       select'
      '                         1'
      '                       from'
      '                         SALE_SHIPMENTS ss2'
      '                       where'
      
        '                         (ss2.SALE_OBJECT_BRANCH_CODE = ss.SALE_' +
        'OBJECT_BRANCH_CODE) and'
      
        '                         (ss2.SALE_OBJECT_CODE = ss.SALE_OBJECT_' +
        'CODE) and'
      
        '                         (ss2.SALE_SHIPMENT_NO > ss.SALE_SHIPMEN' +
        'T_NO)'
      '                     )'
      '                   ) or'
      '                   exists('
      '                     select'
      '                       1'
      '                     from'
      '                       SALE_SHIPMENTS ss2'
      '                     where'
      
        '                       (ss2.SALE_OBJECT_BRANCH_CODE = ss.SALE_OB' +
        'JECT_BRANCH_CODE) and'
      
        '                       (ss2.SALE_OBJECT_CODE = ss.SALE_OBJECT_CO' +
        'DE) and'
      '                       (ss2.SALE_SHIPMENT_NO ='
      '                         ( select'
      '                             Max(ss3.SALE_SHIPMENT_NO)'
      '                           from'
      '                             SALE_SHIPMENTS ss3'
      '                           where'
      
        '                             (ss3.SALE_OBJECT_BRANCH_CODE = ss.S' +
        'ALE_OBJECT_BRANCH_CODE) and'
      
        '                             (ss3.SALE_OBJECT_CODE = ss.SALE_OBJ' +
        'ECT_CODE)'
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
      '             (ss.IMPORT_DATE is null) then'
      '          7'
      ''
      '        when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      '             (ss.RETURN_PLAN_DATE < ContextDate) then'
      '          6'
      ''
      '        when (s.SALE_DEAL_TYPE_CODE = %sdt_LEASE) and'
      
        '             (ContextDate between ss.RECEIVE_PLAN_DATE and ss.RE' +
        'TURN_PLAN_DATE) and'
      '             exists('
      '               select'
      '                 1'
      '               from'
      '                 SALE_SHIPMENTS ss2'
      '               where'
      
        '                 (ss2.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_B' +
        'RANCH_CODE) and'
      
        '                 (ss2.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE) an' +
        'd'
      '                 (ss2.SALE_SHIPMENT_NO ='
      '                   ( select'
      '                       Min(ss3.SALE_SHIPMENT_NO)'
      '                     from'
      '                       SALE_SHIPMENTS ss3'
      '                     where'
      
        '                       (ss3.SALE_OBJECT_BRANCH_CODE = ss.SALE_OB' +
        'JECT_BRANCH_CODE) and'
      
        '                       (ss3.SALE_OBJECT_CODE = ss.SALE_OBJECT_CO' +
        'DE)'
      '                   )'
      '                 ) and'
      '                 (ss2.RECEIVE_DATE is not null)'
      '             ) then'
      '          5'
      ''
      '        when (ss.SHIPMENT_DATE is not null) and'
      '             (ss.RECEIVE_DATE is null) and'
      '             (ss.RECEIVE_PLAN_DATE < ContextDate) then'
      '          4'
      ''
      '        when (ss.SHIPMENT_DATE is not null) and'
      '             (ss.RECEIVE_DATE is null) then'
      '          3'
      ''
      '        when (ss.SHIPMENT_PLAN_DATE < ContextDate) and'
      '             (ss.SHIPMENT_DATE is null) then'
      '          2'
      ''
      '        when (ContextDate <= ss.SHIPMENT_PLAN_DATE) then'
      '          1'
      '      end as SS_STATE_CODE,'
      ''
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
      
        '            Decode(Sign(ContextDate - Coalesce(dp.DELIVERY_DATE,' +
        ' dp.RECEIVE_DATE)), 1, 2, 1),'
      '            5'
      '          )'
      '        )'
      '      ) as DC_STATUS_CODE,'
      '      '
      '      ( select'
      '          Nvl2(srg.ANNUL_EMPLOYEE_CODE,'
      '            11,'
      '            Nvl2(srg.FINISH_EMPLOYEE_CODE,'
      '              10,'
      '              case'
      '                -- niama neanulirani i neprikliucheni'
      
        '                when (Count(Nvl2(srgs.FINISH_EMPLOYEE_CODE, null' +
        ', Nvl2(srgs.ANNUL_EMPLOYEE_CODE, null, 1))) = 0) then'
      '                  1'
      '                -- vsichki sa prikliucheni, srg - ne'
      '                when ( srg.FINISH_EMPLOYEE_CODE is null ) and'
      
        '                     ( Count(Nvl2(srgs.ANNUL_EMPLOYEE_CODE, null' +
        ', 1)) = Count(Nvl2(srgs.ANNUL_EMPLOYEE_CODE, null, srgs.FINISH_E' +
        'MPLOYEE_CODE)) ) then'
      '                  Min('
      '                    Nvl2('
      '                      srgs.FINISH_EMPLOYEE_CODE, null, '
      '                      Nvl2('
      '                        srgs.ANNUL_EMPLOYEE_CODE, '
      '                        null, '
      '                        Nvl2(srgs.ANNUL_EMPLOYEE_CODE,'
      '                          11,'
      '                          Nvl2(srgs.FINISH_EMPLOYEE_CODE,'
      '                            10,'
      '                            Nvl2(srgs.SALE_BRANCH_CODE,'
      '                              9,'
      '                              1'
      '                            )'
      '                          )'
      '                        )'
      '                      )'
      '                    )'
      '                  )'
      '                else'
      '                  Min('
      '                    Nvl2(srgs.ANNUL_EMPLOYEE_CODE,'
      '                      11,'
      '                      Nvl2(srgs.FINISH_EMPLOYEE_CODE,'
      '                        10,'
      '                        Nvl2(srgs.SALE_BRANCH_CODE,'
      '                          9,'
      '                          1'
      '                        )'
      '                      )'
      '                    )'
      '                  )'
      '              end'
      '            )'
      '          )'
      '      '
      '        from'
      '          SALES srgs'
      '        where'
      
        '          (srgs.SALE_GROUP_OBJECT_BRANCH_CODE = srg.SALE_GROUP_O' +
        'BJECT_BRANCH_CODE) and'
      
        '          (srgs.SALE_GROUP_OBJECT_CODE = srg.SALE_GROUP_OBJECT_C' +
        'ODE)'
      '      ) as SG_STATUS_CODE,'
      ''
      '      Nvl2('
      '        boio.ANNUL_EMPLOYEE_CODE,'
      '        7,'
      '        Nvl2('
      '          boio.CLOSE_EMPLOYEE_CODE,'
      '          6,'
      '          case'
      '            when'
      '              (ContextDate < boio.PLAN_DATE) and'
      '              (boio.IS_CONFIRMED = 0) and'
      '              (boio.IS_CANCELED = 0) then'
      '              1'
      '            when'
      '              (ContextDate >= boio.PLAN_DATE) and'
      '              (boio.IS_CONFIRMED = 0) and'
      '              (boio.IS_CANCELED = 0) then'
      '              2'
      '            when'
      '              (boio.IS_CANCELED = 1) then'
      '              3'
      '            when'
      '              (ContextDate < boio.PLAN_DATE) and'
      '              (boio.IS_CONFIRMED = 1) then'
      '              4'
      '            else'
      '              5'
      '          end'
      '        )'
      '      ) as BOIO_STATUS_CODE,'
      ''
      '      Nvl2('
      '        Coalesce('
      '          s.ANNUL_EMPLOYEE_CODE,'
      '          dp.ANNUL_EMPLOYEE_CODE,'
      '          srg.ANNUL_EMPLOYEE_CODE,'
      '          boio.ANNUL_EMPLOYEE_CODE'
      '        ),'
      '        1,'
      '        0'
      '      ) as BND_OBJECT_IS_ANNULED,'
      ''
      '      fo.BASE_DATA_CHANGED,'
      '      fo.BDC_CONFIRM_EMPLOYEE_CODE,'
      '      fo.BDC_CONFIRM_DATE,'
      '      fo.BDC_CONFIRM_TIME,'
      ''
      '      fo.FM_MOVEMENT_OFFSET_TYPE_CODE'
      ''
      '    from'
      '      FIN_ORDERS fo,'
      '      PRODUCTS bp,'
      '      PRODUCTS wp,'
      '      SALE_SHIPMENTS ss,'
      '      SALES s,'
      '      DELIVERY_CONTRACTS dc,'
      '      DEFICIT_COVER_DECISIONS dcd,'
      '      DELIVERY_PROJECTS dp,'
      '      SALE_REQUEST_GROUPS srg,'
      '      BOI_ORDERS boio'
      ''
      '    where'
      '      (fo.BASE_FINANCIAL_PRODUCT_CODE = bp.PRODUCT_CODE) and'
      ''
      '      (fo.WORK_FINANCIAL_PRODUCT_CODE = wp.PRODUCT_CODE) and'
      ''
      
        '      (fo.BND_PROCESS_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_BR' +
        'ANCH_CODE(+)) and'
      
        '      (fo.BND_PROCESS_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE(+)) ' +
        'and'
      ''
      
        '      (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE(+)' +
        ') and'
      '      (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE(+)) and'
      ''
      
        '      (fo.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE(+)) and'
      
        '      (fo.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE(+)) ' +
        'and'
      ''
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE(+)' +
        ') and'
      '      (dc.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE(+)) and'
      ''
      
        '      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE(+))' +
        ' and'
      '      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE(+)) and'
      
        '      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE(+)) a' +
        'nd'
      ''
      
        '      (fo.BND_PROCESS_OBJECT_BRANCH_CODE = srg.SALE_GROUP_OBJECT' +
        '_BRANCH_CODE(+)) and'
      
        '      (fo.BND_PROCESS_OBJECT_CODE = srg.SALE_GROUP_OBJECT_CODE(+' +
        ')) and'
      ''
      
        '      (fo.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OBJECT' +
        '_BRANCH_CODE(+)) and'
      
        '      (fo.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CODE(+' +
        ')) and'
      ''
      '      (fo.FIN_ORDER_CODE = :FIN_ORDER_CODE)'
      '  ) x,'
      '  PRODUCTS p'
      ''
      'where'
      '  (x.BND_PO_PRODUCT_CODE = p.PRODUCT_CODE(+))'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'FIN_ORDER_STATUS[fo]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[fo]'
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
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'sdt_LEASE'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'FIN_ORDERS_FOR_EDIT'
    AfterProviderStartTransaction = qryFinOrderAfterProviderStartTransaction
    BeforeProviderEndTransaction = qryFinOrderBeforeProviderEndTransaction
    Left = 64
    Top = 64
    object qryFinOrderFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFinOrderSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
      ProviderFlags = []
    end
    object qryFinOrderFIN_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_BRANCH_CODE'
    end
    object qryFinOrderFIN_ORDER_BRANCH_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_BRANCH_NO'
      ProviderFlags = []
    end
    object qryFinOrderFIN_ORDER_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_NO'
    end
    object qryFinOrderEXEC_DEPT_CODE: TAbmesFloatField
      FieldName = 'EXEC_DEPT_CODE'
    end
    object qryFinOrderEXEC_DEPT_NAME: TAbmesWideStringField
      FieldName = 'EXEC_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryFinOrderEXEC_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'EXEC_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryFinOrderPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object qryFinOrderFIN_PROCESS_CODE: TAbmesFloatField
      FieldName = 'FIN_PROCESS_CODE'
    end
    object qryFinOrderBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryFinOrderBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object qryFinOrderPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object qryFinOrderIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object qryFinOrderBASE_DATE: TAbmesSQLTimeStampField
      FieldName = 'BASE_DATE'
    end
    object qryFinOrderBASE_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BASE_FINANCIAL_PRODUCT_CODE'
    end
    object qryFinOrderBASE_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BASE_FINANCIAL_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryFinOrderBASE_FINANCIAL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'BASE_FINANCIAL_PRODUCT_NO'
      ProviderFlags = []
    end
    object qryFinOrderBASE_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'BASE_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryFinOrderBASE_QUANTITY: TAbmesFloatField
      FieldName = 'BASE_QUANTITY'
    end
    object qryFinOrderWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'WORK_FINANCIAL_PRODUCT_CODE'
    end
    object qryFinOrderWORK_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'WORK_FINANCIAL_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryFinOrderWORK_FINANCIAL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'WORK_FINANCIAL_PRODUCT_NO'
      ProviderFlags = []
    end
    object qryFinOrderWORK_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'WORK_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryFinOrderFIN_CLASS_CODE: TAbmesFloatField
      FieldName = 'FIN_CLASS_CODE'
    end
    object qryFinOrderDOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DOCUMENT_IDENTIFIER'
      Size = 50
    end
    object qryFinOrderDOCUMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'DOCUMENT_DATE'
    end
    object qryFinOrderNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryFinOrderDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryFinOrderDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryFinOrderHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryFinOrderCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryFinOrderCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryFinOrderCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryFinOrderCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryFinOrderCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryFinOrderCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryFinOrderCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryFinOrderCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryFinOrderCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryFinOrderANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryFinOrderANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryFinOrderANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryFinOrderACTIVATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ACTIVATE_EMPLOYEE_CODE'
    end
    object qryFinOrderACTIVATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'ACTIVATE_DATE'
    end
    object qryFinOrderACTIVATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'ACTIVATE_TIME'
    end
    object qryFinOrderPLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_BEGIN_DATE'
      ProviderFlags = []
    end
    object qryFinOrderBEGIN_DATE_DIFF: TAbmesFloatField
      FieldName = 'BEGIN_DATE_DIFF'
      ProviderFlags = []
    end
    object qryFinOrderSPEC_MODEL_DURATION_DAYS: TAbmesFloatField
      FieldName = 'SPEC_MODEL_DURATION_DAYS'
      ProviderFlags = []
    end
    object qryFinOrderREAL_MODEL_DURATION_DAYS: TAbmesFloatField
      FieldName = 'REAL_MODEL_DURATION_DAYS'
      ProviderFlags = []
    end
    object qryFinOrderMAX_POSITIVE_DIFF: TAbmesFloatField
      FieldName = 'MAX_POSITIVE_DIFF'
      ProviderFlags = []
    end
    object qryFinOrderMAX_NEGATIVE_DIFF: TAbmesFloatField
      FieldName = 'MAX_NEGATIVE_DIFF'
      ProviderFlags = []
    end
    object qryFinOrderPLAN_IN_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_IN_WORK_QUANTITY'
      ProviderFlags = []
    end
    object qryFinOrderIN_WORK_QUANTITY_DIFF: TAbmesFloatField
      FieldName = 'IN_WORK_QUANTITY_DIFF'
      ProviderFlags = []
    end
    object qryFinOrderPLAN_OUT_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_OUT_WORK_QUANTITY'
      ProviderFlags = []
    end
    object qryFinOrderOUT_WORK_QUANTITY_DIFF: TAbmesFloatField
      FieldName = 'OUT_WORK_QUANTITY_DIFF'
      ProviderFlags = []
    end
    object qryFinOrderPLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_END_DATE'
      ProviderFlags = []
    end
    object qryFinOrderIN_END_DATE_DIFF: TAbmesFloatField
      FieldName = 'IN_END_DATE_DIFF'
      ProviderFlags = []
    end
    object qryFinOrderOUT_END_DATE_DIFF: TAbmesFloatField
      FieldName = 'OUT_END_DATE_DIFF'
      ProviderFlags = []
    end
    object qryFinOrderSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryFinOrderSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = []
    end
    object qryFinOrderSALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_NO'
      ProviderFlags = []
    end
    object qryFinOrderDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryFinOrderDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      ProviderFlags = []
    end
    object qryFinOrderDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      ProviderFlags = []
    end
    object qryFinOrderREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryFinOrderREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
      ProviderFlags = []
    end
    object qryFinOrderBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryFinOrderBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
      ProviderFlags = []
    end
    object qryFinOrderBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
      ProviderFlags = []
    end
    object qryFinOrderBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
      ProviderFlags = []
    end
    object qryFinOrderBUDGET_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryFinOrderBOIO_DESCRIPTION: TAbmesWideStringField
      FieldName = 'BOIO_DESCRIPTION'
      ProviderFlags = []
      Size = 100
    end
    object qryFinOrderBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
      ProviderFlags = []
      Size = 100
    end
    object qryFinOrderBND_PO_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BND_PO_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryFinOrderBND_PO_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'BND_PO_WORK_QUANTITY'
      ProviderFlags = []
    end
    object qryFinOrderBND_PO_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'BND_PO_ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object qryFinOrderBND_PO_WORK_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PO_WORK_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryFinOrderBND_PO_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PO_ACCOUNT_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryFinOrderSS_STATE_CODE: TAbmesFloatField
      FieldName = 'SS_STATE_CODE'
      ProviderFlags = []
    end
    object qryFinOrderDC_STATUS_CODE: TAbmesFloatField
      FieldName = 'DC_STATUS_CODE'
      ProviderFlags = []
    end
    object qryFinOrderSG_STATUS_CODE: TAbmesFloatField
      FieldName = 'SG_STATUS_CODE'
      ProviderFlags = []
    end
    object qryFinOrderBOIO_STATUS_CODE: TAbmesFloatField
      FieldName = 'BOIO_STATUS_CODE'
      ProviderFlags = []
    end
    object qryFinOrderBND_OBJECT_IS_ANNULED: TAbmesFloatField
      FieldName = 'BND_OBJECT_IS_ANNULED'
      ProviderFlags = []
    end
    object qryFinOrderBASE_DATA_CHANGED: TAbmesFloatField
      FieldName = 'BASE_DATA_CHANGED'
      Required = True
    end
    object qryFinOrderBDC_CONFIRM_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'BDC_CONFIRM_EMPLOYEE_CODE'
    end
    object qryFinOrderBDC_CONFIRM_DATE: TAbmesSQLTimeStampField
      FieldName = 'BDC_CONFIRM_DATE'
    end
    object qryFinOrderBDC_CONFIRM_TIME: TAbmesSQLTimeStampField
      FieldName = 'BDC_CONFIRM_TIME'
    end
    object qryFinOrderFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField
      FieldName = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
    end
    object qryFinOrderCOMPLETE_MODEL_DATE: TAbmesSQLTimeStampField
      FieldName = 'COMPLETE_MODEL_DATE'
      ProviderFlags = []
    end
  end
  object dsFinOrder: TDataSource
    DataSet = qryFinOrder
    Left = 65
    Top = 112
  end
  object qryRealFinModelLines: TAbmesSQLQuery
    DataSource = dsFinOrder
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BASE_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'WORK_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'WORK_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BASE_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BASE_QUANTITY'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BASE_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BASE_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BASE_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BASE_DATE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  rfml.RFML_OBJECT_BRANCH_CODE, '
      '  rfml.RFML_OBJECT_CODE,'
      '  rfml.FIN_ORDER_CODE,'
      '  rfml.PARTNER_CODE,'
      ''
      '  rfml.FIN_MODEL_LINE_TYPE_CODE,'
      '  ( select'
      '      fmlt.FIN_MODEL_LINE_TYPE_ABBREV'
      '    from'
      '      FIN_MODEL_LINE_TYPES fmlt'
      '    where'
      
        '      (fmlt.FIN_MODEL_LINE_TYPE_CODE = rfml.FIN_MODEL_LINE_TYPE_' +
        'CODE)'
      '  ) as FIN_MODEL_LINE_TYPE_ABBREV,'
      ''
      '  rfml.FIN_MODEL_LINE_NO,'
      '  rfml.LINE_QUANTITY_PERCENT,'
      ''
      '  rfml.OVERRIDE_DOCUMENT,'
      '  rfml.DOCUMENT_IDENTIFIER,'
      '  rfml.DOCUMENT_DATE,'
      ''
      '  ( select'
      '      Coalesce('
      '        Sum('
      '          sd.QUANTITY *'
      '          Decode(:BASE_FINANCIAL_PRODUCT_CODE,'
      '            :WORK_FINANCIAL_PRODUCT_CODE, 1,'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCIES c,'
      '                CURRENCY_RATES cr'
      '              where'
      
        '                (c.PRODUCT_CODE = :WORK_FINANCIAL_PRODUCT_CODE) ' +
        'and'
      '                (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '                (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '            ) /'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCIES c,'
      '                CURRENCY_RATES cr'
      '              where'
      
        '                (c.PRODUCT_CODE = :BASE_FINANCIAL_PRODUCT_CODE) ' +
        'and'
      '                (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '                (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '            )'
      '          )'
      '        ),'
      '        0'
      '      ) /'
      '      :BASE_QUANTITY'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_LINE_QUANTITY_PERCENT,'
      ''
      '  rfml.MOVEMENT_OFFSET_DAYS,'
      '  Abs(rfml.MOVEMENT_OFFSET_DAYS) as ABS_MOVEMENT_OFFSET_DAYS,'
      '  Sign(rfml.MOVEMENT_OFFSET_DAYS) as MOVEMENT_OFFSET_DAYS_SIGN,'
      ''
      '  rfml.MOVEMENT_DURATION_DAYS,'
      '  rfml.IN_OUT,'
      ''
      '  rfml.FIN_STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = rfml.FIN_STORE_CODE)'
      '  ) as FIN_STORE_IDENTIFIER,'
      '  '
      '  rfml.PARTNER_ACCOUNT_CODE, '
      '  rfml.FIN_MODEL_LINE_REASON_CODE, '
      '  rfml.ANNUL_EMPLOYEE_CODE,'
      '  rfml.ANNUL_DATE,'
      '  rfml.ANNUL_TIME,'
      '  Nvl2(rfml.ANNUL_EMPLOYEE_CODE, 1, 0) as IS_ANNULED,'
      ''
      
        '  Decode(rfml.FIN_MODEL_LINE_TYPE_CODE, FinanceUtils.fmltPrimary' +
        ', rfml.LINE_QUANTITY_PERCENT) as PRIMARY_LINE_QTY_PERCENT,'
      ''
      '  ( select'
      '      Sum('
      '        sd.QUANTITY *'
      '        Decode(:BASE_FINANCIAL_PRODUCT_CODE,'
      '          :WORK_FINANCIAL_PRODUCT_CODE, 1,'
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCIES c,'
      '              CURRENCY_RATES cr'
      '            where'
      
        '              (c.PRODUCT_CODE = :WORK_FINANCIAL_PRODUCT_CODE) an' +
        'd'
      '              (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '              (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '          ) /'
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCIES c,'
      '              CURRENCY_RATES cr'
      '            where'
      
        '              (c.PRODUCT_CODE = :BASE_FINANCIAL_PRODUCT_CODE) an' +
        'd'
      '              (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '              (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '          )'
      '        )'
      '      )'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_BASE_QUANTITY,'
      ''
      '  ( select'
      '      Sum(sd.QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_QUANTITY,'
      ''
      '  ( select'
      '      Sum(sd.QUANTITY)'
      '    from'
      '      STORE_DEALS sd,'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) and'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '      (sd.STORE_DEAL_DATE > psd.STORE_DEAL_BEGIN_DATE)'
      '  ) as LATE_REAL_QUANTITY,'
      ''
      '  ( select'
      '      Max(sd.STORE_DEAL_DATE - psd.STORE_DEAL_BEGIN_DATE)'
      '    from'
      '      STORE_DEALS sd,'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) and'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '      (sd.STORE_DEAL_DATE > psd.STORE_DEAL_BEGIN_DATE)'
      '  ) as LATE_REAL_DAYS,'
      ''
      '  ( select'
      '      Sum('
      '        sd.QUANTITY *'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCIES c,'
      '            CURRENCY_RATES cr'
      '          where'
      '            (c.PRODUCT_CODE = sd.PRODUCT_CODE) and'
      '            (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      '            (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '        )'
      '      )'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as REAL_QUANTITY_BASE_CRNCY,'
      ''
      '  ( select'
      '      Sum('
      '        sd.QUANTITY *'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCIES c,'
      '            CURRENCY_RATES cr'
      '          where'
      '            (c.PRODUCT_CODE = sd.PRODUCT_CODE) and'
      '            (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      '            (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '        )'
      '      )'
      '    from'
      '      STORE_DEALS sd,'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) and'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '      (sd.STORE_DEAL_DATE > psd.STORE_DEAL_BEGIN_DATE)'
      '  ) as LATE_REAL_QUANTITY_BASE_CRNCY,'
      ''
      '  ( select'
      '      cr.FIXING'
      '    from'
      '      CURRENCIES c,'
      '      CURRENCY_RATES cr'
      '    where'
      '      (c.PRODUCT_CODE = :BASE_FINANCIAL_PRODUCT_CODE) and'
      '      (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      '      (cr.RATE_DATE = ContextDate)'
      '  ) as BASE_FINANCIAL_PRODUCT_FIXING,'
      ''
      '  ( select'
      '      cr.FIXING'
      '    from'
      '      CURRENCIES c,'
      '      CURRENCY_RATES cr'
      '    where'
      '      (c.PRODUCT_CODE = :WORK_FINANCIAL_PRODUCT_CODE) and'
      '      (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      '      (cr.RATE_DATE = ContextDate)'
      '  ) as WORK_FINANCIAL_PRODUCT_FIXING,'
      ''
      '  ( Cast(:BASE_DATE as Date) + rfml.MOVEMENT_OFFSET_DAYS -'
      '    Decode(:FM_MOVEMENT_OFFSET_TYPE_CODE,'
      '      CommonConsts.fmmotEnd, rfml.MOVEMENT_DURATION_DAYS,'
      '      0'
      '    )'
      '  ) as MOVEMENT_PLAN_BEGIN_DATE,'
      ''
      '  ( Cast(:BASE_DATE as Date) + rfml.MOVEMENT_OFFSET_DAYS +'
      '    Decode(:FM_MOVEMENT_OFFSET_TYPE_CODE,'
      '      CommonConsts.fmmotBeginning, rfml.MOVEMENT_DURATION_DAYS,'
      '      0'
      '    )'
      '  ) as MOVEMENT_PLAN_END_DATE,'
      ''
      '  ( Cast(:BASE_DATE as Date) + rfml.MOVEMENT_OFFSET_DAYS +'
      '    Decode(:FM_MOVEMENT_OFFSET_TYPE_CODE,'
      
        '      CommonConsts.fmmotBeginning, Decode(rfml.IN_OUT, 1, rfml.M' +
        'OVEMENT_DURATION_DAYS, 0),'
      
        '      CommonConsts.fmmotEnd, Decode(rfml.IN_OUT, -1, -rfml.MOVEM' +
        'ENT_DURATION_DAYS, 0)'
      '    )'
      '  ) as ORIGINAL_MOVEMENT_PLAN_DATE'
      ''
      'from'
      '  REAL_FIN_MODEL_LINES rfml'
      ''
      'where'
      '  (rfml.FIN_ORDER_CODE = :FIN_ORDER_CODE)'
      ''
      'order by'
      '  rfml.FIN_MODEL_LINE_TYPE_CODE,'
      '  rfml.FIN_MODEL_LINE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'RFML_FOR_EDIT'
    Left = 64
    Top = 160
    object qryRealFinModelLinesRFML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryRealFinModelLinesRFML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryRealFinModelLinesFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object qryRealFinModelLinesPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object qryRealFinModelLinesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object qryRealFinModelLinesFIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_TYPE_ABBREV'
      ProviderFlags = []
      Size = 100
    end
    object qryRealFinModelLinesFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
    end
    object qryRealFinModelLinesLINE_QUANTITY_PERCENT: TAbmesFloatField
      FieldName = 'LINE_QUANTITY_PERCENT'
    end
    object qryRealFinModelLinesOVERRIDE_DOCUMENT: TAbmesFloatField
      FieldName = 'OVERRIDE_DOCUMENT'
      Required = True
    end
    object qryRealFinModelLinesDOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DOCUMENT_IDENTIFIER'
      Size = 50
    end
    object qryRealFinModelLinesDOCUMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'DOCUMENT_DATE'
    end
    object qryRealFinModelLinesREAL_LINE_QUANTITY_PERCENT: TAbmesFloatField
      FieldName = 'REAL_LINE_QUANTITY_PERCENT'
      ProviderFlags = []
    end
    object qryRealFinModelLinesMOVEMENT_OFFSET_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_OFFSET_DAYS'
    end
    object qryRealFinModelLinesABS_MOVEMENT_OFFSET_DAYS: TAbmesFloatField
      FieldName = 'ABS_MOVEMENT_OFFSET_DAYS'
      ProviderFlags = []
    end
    object qryRealFinModelLinesMOVEMENT_OFFSET_DAYS_SIGN: TAbmesFloatField
      FieldName = 'MOVEMENT_OFFSET_DAYS_SIGN'
      ProviderFlags = []
    end
    object qryRealFinModelLinesMOVEMENT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_DURATION_DAYS'
    end
    object qryRealFinModelLinesIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object qryRealFinModelLinesFIN_STORE_CODE: TAbmesFloatField
      FieldName = 'FIN_STORE_CODE'
    end
    object qryRealFinModelLinesFIN_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FIN_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryRealFinModelLinesPARTNER_ACCOUNT_CODE: TAbmesFloatField
      FieldName = 'PARTNER_ACCOUNT_CODE'
    end
    object qryRealFinModelLinesFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_REASON_CODE'
    end
    object qryRealFinModelLinesANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryRealFinModelLinesANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryRealFinModelLinesANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryRealFinModelLinesIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
      ProviderFlags = []
    end
    object qryRealFinModelLinesPRIMARY_LINE_QTY_PERCENT: TAbmesFloatField
      FieldName = 'PRIMARY_LINE_QTY_PERCENT'
      ProviderFlags = []
    end
    object qryRealFinModelLinesREAL_BASE_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_BASE_QUANTITY'
      ProviderFlags = []
    end
    object qryRealFinModelLinesREAL_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_QUANTITY'
      ProviderFlags = []
    end
    object qryRealFinModelLinesLATE_REAL_QUANTITY: TAbmesFloatField
      FieldName = 'LATE_REAL_QUANTITY'
      ProviderFlags = []
    end
    object qryRealFinModelLinesLATE_REAL_DAYS: TAbmesFloatField
      FieldName = 'LATE_REAL_DAYS'
      ProviderFlags = []
    end
    object qryRealFinModelLinesBASE_FINANCIAL_PRODUCT_FIXING: TAbmesFloatField
      FieldName = 'BASE_FINANCIAL_PRODUCT_FIXING'
      ProviderFlags = []
    end
    object qryRealFinModelLinesWORK_FINANCIAL_PRODUCT_FIXING: TAbmesFloatField
      FieldName = 'WORK_FINANCIAL_PRODUCT_FIXING'
      ProviderFlags = []
    end
    object qryRealFinModelLinesREAL_QUANTITY_BASE_CRNCY: TAbmesFloatField
      FieldName = 'REAL_QUANTITY_BASE_CRNCY'
      ProviderFlags = []
    end
    object qryRealFinModelLinesLATE_REAL_QUANTITY_BASE_CRNCY: TAbmesFloatField
      FieldName = 'LATE_REAL_QUANTITY_BASE_CRNCY'
      ProviderFlags = []
    end
    object qryRealFinModelLinesMOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'MOVEMENT_PLAN_BEGIN_DATE'
      ProviderFlags = []
    end
    object qryRealFinModelLinesMOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'MOVEMENT_PLAN_END_DATE'
      ProviderFlags = []
    end
    object qryRealFinModelLinesORIGINAL_MOVEMENT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ORIGINAL_MOVEMENT_PLAN_DATE'
      ProviderFlags = []
    end
  end
  object qryNewFinOrderCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_FIN_ORDERS.NextVal as NEW_FIN_ORDER_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 216
    object qryNewFinOrderCodeNEW_FIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'NEW_FIN_ORDER_CODE'
    end
  end
  object qryFixRealFinModelLineNos: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  update'
      '    RFML_FOR_EDIT rfml'
      '  set'
      '    rfml.FIN_MODEL_LINE_NO = -rfml.FIN_MODEL_LINE_NO'
      '  where'
      '    (rfml.FIN_ORDER_CODE = :FIN_ORDER_CODE) and'
      '    (rfml.FIN_MODEL_LINE_NO < 0)'
      '  ;'
      ''
      '  update'
      '    PROCESS_OBJECTS po'
      '  set'
      
        '    po.PROCESS_OBJECT_IDENTIFIER = Replace(po.PROCESS_OBJECT_IDE' +
        'NTIFIER, '#39'-'#39')'
      '  where'
      '    ( (po.PROCESS_OBJECT_BRANCH_CODE, po.PROCESS_OBJECT_CODE) in'
      '      ( select'
      '          rfml.RFML_OBJECT_BRANCH_CODE,'
      '          rfml.RFML_OBJECT_CODE'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml'
      '        where'
      '          (rfml.FIN_ORDER_CODE = :FIN_ORDER_CODE)'
      '      )'
      '    );'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 264
  end
  object qryFinClasses: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  fc.FIN_CLASS_CODE,'
      '  fc.PARENT_FIN_CLASS_CODE,'
      '  fc.FIN_CLASS_LOCAL_NO,'
      
        '  Cast(FinanceUtils.GetFinClassFullNo(fc.FIN_CLASS_CODE) as Varc' +
        'har2(100 char)) as FIN_CLASS_FULL_NO,'
      
        '  Cast(FinanceUtils.GetFinClassFullNo(fc.FIN_CLASS_CODE, 1) as V' +
        'archar2(100 char)) as FIN_CLASS_FMT_FULL_NO,'
      '  fc.NAME,'
      '  fc.SHORT_NAME,'
      '  fc.IS_GROUP,'
      '  fc.DOC_BRANCH_CODE,'
      '  fc.DOC_CODE,'
      '  %HAS_DOC_ITEMS[fc] as HAS_DOC_ITEMS'
      ''
      'from'
      '  FIN_CLASSES fc'
      ''
      'order by'
      '  FIN_CLASS_FMT_FULL_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[fc]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'FIN_CLASSES_FOR_EDIT'
    Left = 488
    Top = 64
    object qryFinClassesFIN_CLASS_CODE: TAbmesFloatField
      FieldName = 'FIN_CLASS_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFinClassesPARENT_FIN_CLASS_CODE: TAbmesFloatField
      FieldName = 'PARENT_FIN_CLASS_CODE'
    end
    object qryFinClassesFIN_CLASS_LOCAL_NO: TAbmesFloatField
      FieldName = 'FIN_CLASS_LOCAL_NO'
    end
    object qryFinClassesFIN_CLASS_FULL_NO: TAbmesWideStringField
      FieldName = 'FIN_CLASS_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryFinClassesFIN_CLASS_FMT_FULL_NO: TAbmesWideStringField
      FieldName = 'FIN_CLASS_FMT_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object qryFinClassesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 100
    end
    object qryFinClassesSHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
      Size = 100
    end
    object qryFinClassesIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
    end
    object qryFinClassesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryFinClassesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryFinClassesHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
  end
  object prvFinClasses: TDataSetProvider
    DataSet = qryFinClasses
    UpdateMode = upWhereKeyOnly
    Left = 488
    Top = 16
  end
  object qryFinClassesPrintTree: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  fc.FIN_CLASS_CODE as NODE_ID,'
      '  fc.PARENT_FIN_CLASS_CODE as PARENT_NODE_ID,'
      ''
      
        '  (Cast(FinanceUtils.GetFinClassFullNo(fc.FIN_CLASS_CODE) as Var' +
        'char2(50 char)) || '#39' '#39' || fc.NAME) as NODE_NAME,'
      
        '  Cast(FinanceUtils.GetFinClassFullNo(fc.FIN_CLASS_CODE, 1) as V' +
        'archar2(50 char)) as FORMATED_NODE_NO,'
      ''
      '  (level - 1) as NODE_LEVEL,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      FIN_CLASSES fc3'
      '    where'
      '      (fc3.PARENT_FIN_CLASS_CODE = fc.FIN_CLASS_CODE)'
      '  ) as NODE_CHILD_COUNT,'
      ''
      '  Decode('
      '    ( select'
      '        Count(*)'
      '      from'
      '        FIN_CLASSES fc2'
      '      where'
      '        (fc2.PARENT_FIN_CLASS_CODE = fc.FIN_CLASS_CODE)'
      '    ),'
      '    0,'
      '    2,'
      '    1'
      '  ) as NODE_TYPE,'
      ''
      '  Decode('
      '    fc.FIN_CLASS_CODE,'
      '    :FIN_CLASS_CODE,'
      '    0,'
      '    Decode('
      '      ( select'
      '          Max(fc4.FIN_CLASS_LOCAL_NO)'
      '        from'
      '          FIN_CLASSES fc4'
      '        where'
      '          (fc4.PARENT_FIN_CLASS_CODE = fc.PARENT_FIN_CLASS_CODE)'
      '      ),'
      '      fc.FIN_CLASS_LOCAL_NO,'
      '      1,'
      '      0'
      '    )'
      '  ) as IS_LAST_CHILD,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      FIN_CLASSES fc1'
      '    where'
      '      (fc1.PARENT_FIN_CLASS_CODE = fc.FIN_CLASS_CODE)'
      '  ) as HAS_CHILDREN'
      ''
      'from'
      '  FIN_CLASSES fc'
      ''
      'start with'
      '  (fc.FIN_CLASS_CODE = :FIN_CLASS_CODE)'
      ''
      'connect by'
      '  (fc.PARENT_FIN_CLASS_CODE = prior fc.FIN_CLASS_CODE)'
      ''
      'order by'
      '  FORMATED_NODE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 664
    Top = 64
    object qryFinClassesPrintTreeNODE_ID: TAbmesFloatField
      FieldName = 'NODE_ID'
    end
    object qryFinClassesPrintTreePARENT_NODE_ID: TAbmesFloatField
      FieldName = 'PARENT_NODE_ID'
    end
    object qryFinClassesPrintTreeNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 151
    end
    object qryFinClassesPrintTreeFORMATED_NODE_NO: TAbmesWideStringField
      FieldName = 'FORMATED_NODE_NO'
      Size = 50
    end
    object qryFinClassesPrintTreeNODE_LEVEL: TAbmesFloatField
      FieldName = 'NODE_LEVEL'
    end
    object qryFinClassesPrintTreeNODE_CHILD_COUNT: TAbmesFloatField
      FieldName = 'NODE_CHILD_COUNT'
    end
    object qryFinClassesPrintTreeNODE_TYPE: TAbmesFloatField
      FieldName = 'NODE_TYPE'
    end
    object qryFinClassesPrintTreeIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object qryFinClassesPrintTreeHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
  end
  object prvFinClassesPrintTree: TDataSetProvider
    DataSet = qryFinClassesPrintTree
    UpdateMode = upWhereKeyOnly
    Left = 664
    Top = 16
  end
  object qryFinClass: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  fc.FIN_CLASS_CODE,'
      '  fc.PARENT_FIN_CLASS_CODE,'
      '  fc.FIN_CLASS_LOCAL_NO,'
      '  fc.NAME,'
      '  fc.SHORT_NAME,'
      '  fc.IS_GROUP,'
      '  fc.DOC_BRANCH_CODE,'
      '  fc.DOC_CODE,'
      '  %HAS_DOC_ITEMS[fc] as HAS_DOC_ITEMS,'
      ''
      '  Decode('
      '    fc.PARENT_FIN_CLASS_CODE,'
      '    1,'
      '    null,'
      
        '    Cast(FinanceUtils.GetFinClassFullNo(fc.PARENT_FIN_CLASS_CODE' +
        ') as Varchar2(100 char))'
      '  ) as PARENT_FULL_NO'
      ''
      'from'
      '  FIN_CLASSES fc'
      ''
      'where'
      '  (fc.FIN_CLASS_CODE = :FIN_CLASS_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[fc]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'FIN_CLASSES_FOR_EDIT'
    AfterProviderStartTransaction = qryFinClassAfterProviderStartTransaction
    Left = 568
    Top = 64
    object qryFinClassFIN_CLASS_CODE: TAbmesFloatField
      FieldName = 'FIN_CLASS_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFinClassPARENT_FIN_CLASS_CODE: TAbmesFloatField
      FieldName = 'PARENT_FIN_CLASS_CODE'
    end
    object qryFinClassFIN_CLASS_LOCAL_NO: TAbmesFloatField
      FieldName = 'FIN_CLASS_LOCAL_NO'
    end
    object qryFinClassNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 100
    end
    object qryFinClassSHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
      Size = 100
    end
    object qryFinClassIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
    end
    object qryFinClassDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryFinClassDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryFinClassHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryFinClassPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
  end
  object prvFinClass: TDataSetProvider
    DataSet = qryFinClass
    UpdateMode = upWhereKeyOnly
    BeforeApplyUpdates = prvFinClassBeforeApplyUpdates
    AfterApplyUpdates = prvFinClassAfterApplyUpdates
    Left = 568
    Top = 16
  end
  object qryGetNewFinClassLocalNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARENT_FIN_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(fc.FIN_CLASS_LOCAL_NO), 0) + 1) as NEW_FIN_CLASS' +
        '_LOCAL_NO'
      'from'
      '  FIN_CLASSES fc'
      'where'
      '  (fc.PARENT_FIN_CLASS_CODE = :PARENT_FIN_CLASS_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 504
    Top = 136
    object qryGetNewFinClassLocalNoNEW_FIN_CLASS_LOCAL_NO: TAbmesFloatField
      FieldName = 'NEW_FIN_CLASS_LOCAL_NO'
    end
  end
  object qryGetNewFinClassCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_FIN_CLASSES.NextVal as NEW_FIN_CLASS_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 656
    Top = 136
    object qryGetNewFinClassCodeNEW_FIN_CLASS_CODE: TAbmesFloatField
      FieldName = 'NEW_FIN_CLASS_CODE'
    end
  end
  object qryGetFinClassCodeByFullNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'FIN_CLASS_FULL_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  fc.FIN_CLASS_CODE'
      'from'
      '  FIN_CLASSES fc'
      'where'
      
        '  (FinanceUtils.GetFinClassFullNo(fc.FIN_CLASS_CODE) = :FIN_CLAS' +
        'S_FULL_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 504
    Top = 200
    object qryGetFinClassCodeByFullNoFIN_CLASS_CODE: TAbmesFloatField
      FieldName = 'FIN_CLASS_CODE'
    end
  end
  object qryGetFinClassIsInstance: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  (1 - fc.IS_GROUP) as IS_INSTANCE'
      'from'
      '  FIN_CLASSES fc'
      'where'
      '  (fc.FIN_CLASS_CODE = :FIN_CLASS_CODE)'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 656
    Top = 200
    object qryGetFinClassIsInstanceIS_INSTANCE: TAbmesFloatField
      FieldName = 'IS_INSTANCE'
      FieldValueType = fvtBoolean
    end
  end
  object qryFinModelLineReasons: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  fmlr.FIN_MODEL_LINE_REASON_CODE,'
      '  fmlr.FIN_MODEL_LINE_REASON_NO,'
      '  fmlr.FIN_MODEL_LINE_REASON_NAME,'
      '  fmlr.FIN_MODEL_LINE_REASON_ABBREV'
      '  '
      'from'
      '  FIN_MODEL_LINE_REASONS fmlr'
      '  '
      'order by'
      '  fmlr.FIN_MODEL_LINE_REASON_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 64
    object qryFinModelLineReasonsFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_REASON_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFinModelLineReasonsFIN_MODEL_LINE_REASON_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_REASON_NO'
    end
    object qryFinModelLineReasonsFIN_MODEL_LINE_REASON_NAME: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_REASON_NAME'
      Size = 50
    end
    object qryFinModelLineReasonsFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_REASON_ABBREV'
      Size = 5
    end
  end
  object prvFinModelLineReasons: TDataSetProvider
    DataSet = qryFinModelLineReasons
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvFinModelLineReasonsBeforeUpdateRecord
    Left = 360
    Top = 16
  end
  object qryGetNewFinModelLineReasonCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  seq_FIN_MODEL_LINE_REASONS.NextVal as NEW_FIN_MODEL_LINE_REASO' +
        'N_CODE'
      ''
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 112
    object qryGetNewFinModelLineReasonCodeNEW_FIN_MODEL_LINE_REASON_CODE: TAbmesFloatField
      FieldName = 'NEW_FIN_MODEL_LINE_REASON_CODE'
    end
  end
  object prvFinModelLineTypes: TDataSetProvider
    DataSet = qryFinModelLineTypes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 208
    Top = 16
  end
  object qryFinModelLineTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  fmlt.FIN_MODEL_LINE_TYPE_CODE,'
      '  fmlt.FIN_MODEL_LINE_TYPE_NO,'
      '  fmlt.FIN_MODEL_LINE_TYPE_NAME,'
      '  fmlt.FIN_MODEL_LINE_TYPE_ABBREV'
      ''
      'from'
      '  FIN_MODEL_LINE_TYPES fmlt'
      '  '
      'order by'
      '  fmlt.FIN_MODEL_LINE_TYPE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 208
    Top = 64
    object qryFinModelLineTypesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object qryFinModelLineTypesFIN_MODEL_LINE_TYPE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_NO'
    end
    object qryFinModelLineTypesFIN_MODEL_LINE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_TYPE_NAME'
      Size = 100
    end
    object qryFinModelLineTypesFIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_TYPE_ABBREV'
      Size = 100
    end
  end
  object prvFinProcesses: TDataSetProvider
    DataSet = qryFinProcesses
    Options = [poReadOnly, poUseQuoteChar]
    Left = 328
    Top = 416
  end
  object qryFinProcesses: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  p.PROCESS_CODE,'
      '  p.PROCESS_ABBREV,'
      '  p.PROCESS_NAME,'
      '  p.PROCESS_NO,'
      '  fp.IS_MANUALLY_USABLE'
      ''
      'from'
      '  FIN_PROCESSES fp,'
      '  PROCESSES p'
      '  '
      'where'
      '  (fp.PROCESS_CODE = p.PROCESS_CODE)'
      '  '
      'order by'
      '  p.PROCESS_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 328
    Top = 464
    object qryFinProcessesPROCESS_CODE: TAbmesFloatField
      FieldName = 'PROCESS_CODE'
    end
    object qryFinProcessesPROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'PROCESS_ABBREV'
      Size = 100
    end
    object qryFinProcessesPROCESS_NAME: TAbmesWideStringField
      FieldName = 'PROCESS_NAME'
      Size = 100
    end
    object qryFinProcessesPROCESS_NO: TAbmesFloatField
      FieldName = 'PROCESS_NO'
    end
    object qryFinProcessesIS_MANUALLY_USABLE: TAbmesFloatField
      FieldName = 'IS_MANUALLY_USABLE'
    end
  end
  object qryMaxFinOrderNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(fo.FIN_ORDER_NO) as MAX_FIN_ORDER_NO '
      ''
      'from'
      '  FIN_ORDERS fo'
      ''
      'where'
      '  (fo.FIN_ORDER_BRANCH_CODE = :FIN_ORDER_BRANCH_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 312
    object qryMaxFinOrderNoMAX_FIN_ORDER_NO: TAbmesFloatField
      FieldName = 'MAX_FIN_ORDER_NO'
    end
  end
  object prvFinOrdersMaster: TDataSetProvider
    DataSet = qryFinOrdersMaster
    OnGetData = prvFinOrdersMasterGetData
    Left = 208
    Top = 312
  end
  object qryFinOrdersMaster: TAbmesSQLQuery
    BeforeOpen = qryFinOrdersMasterBeforeOpen
    AfterClose = qryFinOrdersMasterAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_NO'
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
        Name = 'MAX_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_MOVEMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_MOVEMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_MOVEMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_MOVEMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXEC_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXEC_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_PROCESS_CODE'
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
        Name = 'BND_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
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
        Name = 'BND_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PRODUCT_CODE'
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
        Name = 'BND_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_BUDGET_PRODUCT_CODE'
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
      end>
    SQL.Strings = (
      'select'
      '  x.FIN_ORDER_CODE,'
      '  x.STATUS_CODE,'
      '  x.FIN_PROCESS_ABBREV,'
      '  x.FIN_ORDER_BRANCH_NO,'
      '  x.FIN_ORDER_NO,'
      
        '  (x.FIN_ORDER_BRANCH_NO || '#39'/'#39' || x.FIN_ORDER_NO) as FIN_ORDER_' +
        'IDENTIFIER,'
      ''
      '  x.BASE_DATE,'
      '  x.PLAN_BEGIN_DATE,'
      
        '  (x.PLAN_BEGIN_DATE - Coalesce(x.REAL_BEGIN_DATE, ContextDate))' +
        ' as BEGIN_DATE_DIFF,'
      '  x.MODEL_DURATION_DAYS,'
      '  '
      '  x.EXEC_DEPT_IDENTIFIER,'
      '  x.WORK_FINANCIAL_PRODUCT_CODE,'
      '  x.WORK_FINANCIAL_PRODUCT_NAME,'
      '  '
      '  x.PLAN_IN_QUANTITY as PLAN_IN_QTY,'
      '  x.PLAN_IN_QUANTITY_BC as PLAN_IN_QTY_BC,'
      '  x.REMAINING_IN_QUANTITY as REMAINING_IN_QTY,'
      '  x.REMAINING_IN_QUANTITY_BC as REMAINING_IN_QTY_BC,'
      ''
      '  x.LATE_PLAN_IN_QUANTITY as LATE_PLAN_IN_QTY,'
      '  x.LATE_PLAN_IN_QUANTITY_BC as LATE_PLAN_IN_QTY_BC,'
      
        '  (x.LATE_PLAN_IN_QUANTITY / x.PLAN_IN_QUANTITY) as LATE_PLAN_IN' +
        '_QTY_PERCENT,'
      
        '  (x.LATE_PLAN_IN_QUANTITY_BC / x.PLAN_IN_QUANTITY_BC) as LATE_P' +
        'LAN_IN_QTY_BC_PERCENT,'
      '  x.LATE_PLAN_IN_DAYS,'
      ''
      '  x.LATE_REAL_IN_QUANTITY as LATE_REAL_IN_QTY,'
      '  x.LATE_REAL_IN_QUANTITY_BC as LATE_REAL_IN_QTY_BC,'
      
        '  (x.LATE_REAL_IN_QUANTITY / x.PLAN_IN_QUANTITY) as LATE_REAL_IN' +
        '_QTY_PERCENT,'
      
        '  (x.LATE_REAL_IN_QUANTITY_BC / x.PLAN_IN_QUANTITY_BC) as LATE_R' +
        'EAL_IN_QTY_BC_PERCENT,'
      '  x.LATE_REAL_IN_DAYS,'
      ''
      '  x.PLAN_OUT_QUANTITY as PLAN_OUT_QTY,'
      '  x.PLAN_OUT_QUANTITY_BC as PLAN_OUT_QTY_BC,'
      '  x.REMAINING_OUT_QUANTITY as REMAINING_OUT_QTY,'
      '  x.REMAINING_OUT_QUANTITY_BC as REMAINING_OUT_QTY_BC,'
      ''
      '  x.LATE_PLAN_OUT_QUANTITY as LATE_PLAN_OUT_QTY,'
      '  x.LATE_PLAN_OUT_QUANTITY_BC as LATE_PLAN_OUT_QTY_BC,'
      
        '  (x.LATE_PLAN_OUT_QUANTITY / x.PLAN_OUT_QUANTITY) as LATE_PLAN_' +
        'OUT_QTY_PERCENT,'
      
        '  (x.LATE_PLAN_OUT_QUANTITY_BC / x.PLAN_OUT_QUANTITY_BC) as LATE' +
        '_PLAN_OUT_QTY_BC_PERCENT,'
      '  x.LATE_PLAN_OUT_DAYS,'
      ''
      '  x.LATE_REAL_OUT_QUANTITY as LATE_REAL_OUT_QTY,'
      '  x.LATE_REAL_OUT_QUANTITY_BC as LATE_REAL_OUT_QTY_BC,'
      
        '  (x.LATE_REAL_OUT_QUANTITY / x.PLAN_OUT_QUANTITY) as LATE_REAL_' +
        'OUT_QTY_PERCENT,'
      
        '  (x.LATE_REAL_OUT_QUANTITY_BC / x.PLAN_OUT_QUANTITY_BC) as LATE' +
        '_REAL_OUT_QTY_BC_PERCENT,'
      '  x.LATE_REAL_OUT_DAYS,'
      ''
      
        '  (Coalesce(x.PLAN_IN_QUANTITY, 0) - Coalesce(x.PLAN_OUT_QUANTIT' +
        'Y, 0)) as PLAN_QTY,'
      
        '  (Coalesce(x.PLAN_IN_QUANTITY_BC, 0) - Coalesce(x.PLAN_OUT_QUAN' +
        'TITY_BC, 0)) as PLAN_QTY_BC,'
      
        '  (Coalesce(x.REMAINING_IN_QUANTITY, 0) - Coalesce(x.REMAINING_O' +
        'UT_QUANTITY, 0)) as REMAINING_QTY,'
      
        '  (Coalesce(x.REMAINING_IN_QUANTITY_BC, 0) - Coalesce(x.REMAININ' +
        'G_OUT_QUANTITY_BC, 0)) as REMAINING_QTY_BC,'
      ''
      
        '  (Coalesce(x.LATE_PLAN_IN_QUANTITY, 0) - Coalesce(x.LATE_PLAN_O' +
        'UT_QUANTITY, 0)) as LATE_PLAN_QTY,'
      
        '  (Coalesce(x.LATE_PLAN_IN_QUANTITY_BC, 0) - Coalesce(x.LATE_PLA' +
        'N_OUT_QUANTITY_BC, 0)) as LATE_PLAN_QTY_BC,'
      
        '  ( (Coalesce(x.LATE_PLAN_IN_QUANTITY, 0) - Coalesce(x.LATE_PLAN' +
        '_OUT_QUANTITY, 0)) /'
      
        '    NullIf((Coalesce(x.PLAN_IN_QUANTITY, 0) - Coalesce(x.PLAN_OU' +
        'T_QUANTITY, 0)), 0) ) as LATE_PLAN_QTY_PERCENT,'
      
        '  ( (Coalesce(x.LATE_PLAN_IN_QUANTITY_BC, 0) - Coalesce(x.LATE_P' +
        'LAN_OUT_QUANTITY_BC, 0)) /'
      
        '    NullIf((Coalesce(x.PLAN_IN_QUANTITY_BC, 0) - Coalesce(x.PLAN' +
        '_OUT_QUANTITY_BC, 0)), 0) ) as LATE_PLAN_QTY_BC_PERCENT,'
      
        '  Greatest(Coalesce(x.LATE_PLAN_IN_DAYS, 0), Coalesce(x.LATE_PLA' +
        'N_OUT_DAYS, 0)) as LATE_PLAN_DAYS,'
      ''
      
        '  (Coalesce(x.LATE_REAL_IN_QUANTITY, 0) - Coalesce(x.LATE_REAL_O' +
        'UT_QUANTITY, 0)) as LATE_REAL_QTY,'
      
        '  (Coalesce(x.LATE_REAL_IN_QUANTITY_BC, 0) - Coalesce(x.LATE_REA' +
        'L_OUT_QUANTITY_BC, 0)) as LATE_REAL_QTY_BC,'
      
        '  ( (Coalesce(x.LATE_REAL_IN_QUANTITY, 0) - Coalesce(x.LATE_REAL' +
        '_OUT_QUANTITY, 0)) /'
      
        '    NullIf((Coalesce(x.PLAN_IN_QUANTITY, 0) - Coalesce(x.PLAN_OU' +
        'T_QUANTITY, 0)), 0) ) as LATE_REAL_QTY_PERCENT,'
      
        '  ( (Coalesce(x.LATE_REAL_IN_QUANTITY_BC, 0) - Coalesce(x.LATE_R' +
        'EAL_OUT_QUANTITY_BC, 0)) /'
      
        '    NullIf((Coalesce(x.PLAN_IN_QUANTITY_BC, 0) - Coalesce(x.PLAN' +
        '_OUT_QUANTITY_BC, 0)), 0) ) as LATE_REAL_QTY_BC_PERCENT,'
      
        '  Greatest(Coalesce(x.LATE_REAL_IN_DAYS, 0), Coalesce(x.LATE_REA' +
        'L_OUT_DAYS, 0)) as LATE_REAL_DAYS,'
      ''
      '  x.PARTNER_SHORT_NAME,'
      '  x.PARTNER_FULL_NAME,'
      '  x.PARTNER_BULSTAT_NO,'
      '  x.PARTNER_COUNTRY_NAME,'
      '  x.PARTNER_CITY,'
      ''
      '  x.BND_PROCESS_OBJECT_IDENTIFIER,'
      ''
      '  x.FIN_CLASS_NAME,'
      ''
      '  x.PRIORITY_FULL_NAME,'
      '  x.PRIORITY_COLOR,'
      '  x.PRIORITY_BACKGROUND_COLOR,'
      ''
      '  x.DOCUMENT_IDENTIFIER,'
      '  x.DOCUMENT_DATE,'
      ''
      '  x.BASE_DATA_CHANGED,'
      '  x.BND_PROCESS_OBJECT_INFO,'
      ''
      '  Cast(null as Varchar2(250 char)) as PARTNER_NAME,'
      ''
      '  x.NOTES'
      ''
      'from'
      '  ( select /*+ INDEX(fo) INDEX(p) INDEX(c) */'
      '      fo.FIN_ORDER_CODE,'
      '      '
      '      %FIN_ORDER_STATUS[fo] as STATUS_CODE,'
      '      '
      '      ( select'
      '          p.PROCESS_ABBREV'
      '        from'
      '          PROCESSES p'
      '        where'
      '          (p.PROCESS_CODE = fo.FIN_PROCESS_CODE)'
      '      ) as FIN_PROCESS_ABBREV,'
      '      '
      '      ( select'
      '          d.CUSTOM_CODE'
      '        from'
      '          DEPTS d'
      '        where'
      '          (d.DEPT_CODE = fo.FIN_ORDER_BRANCH_CODE)'
      '      ) as FIN_ORDER_BRANCH_NO,'
      '      fo.FIN_ORDER_NO,'
      ''
      '      fo.BASE_DATE,'
      ''
      '      ( select'
      '          Min(psd.STORE_DEAL_BEGIN_DATE)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      ''
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      ''
      '          (rfml.ANNUL_EMPLOYEE_CODE is null)'
      '      ) as PLAN_BEGIN_DATE,'
      ''
      '      ( select'
      '          Min(sd.STORE_DEAL_DATE)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          STORE_DEALS sd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      ''
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      ''
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null)'
      '      ) as REAL_BEGIN_DATE,'
      ''
      '      ( select'
      
        '          Max(psd.STORE_DEAL_BEGIN_DATE) - Min(psd.STORE_DEAL_BE' +
        'GIN_DATE) + 1'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      ''
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      ''
      '          (rfml.ANNUL_EMPLOYEE_CODE is null)'
      '      ) as MODEL_DURATION_DAYS,'
      ''
      '      ( select'
      
        '          (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETT' +
        'ER)'
      '        from'
      '          DEPTS d,'
      '          DEPT_TYPES dt'
      '        where'
      '          (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '          (d.DEPT_CODE = fo.EXEC_DEPT_CODE)'
      '      ) as EXEC_DEPT_IDENTIFIER,'
      ''
      '      fo.WORK_FINANCIAL_PRODUCT_CODE,'
      '      ( select'
      '          p.NAME'
      '        from'
      '          PRODUCTS p'
      '        where'
      '          (p.PRODUCT_CODE = fo.WORK_FINANCIAL_PRODUCT_CODE)'
      '      ) as WORK_FINANCIAL_PRODUCT_NAME,'
      ''
      '      Coalesce('
      '        ( select'
      '            Sum(psd.QUANTITY)'
      '          from'
      '            REAL_FIN_MODEL_LINES rfml,'
      '            PLANNED_STORE_DEALS psd'
      '          where'
      '            (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '            (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE' +
        ') and'
      '            (rfml.IN_OUT = 1) and'
      '            (rfml.ANNUL_EMPLOYEE_CODE is null)'
      '        ),'
      '        Decode(fo.IN_OUT, 1,'
      '          fo.BASE_QUANTITY *'
      '          Decode(fo.BASE_FINANCIAL_PRODUCT_CODE,'
      '            fo.WORK_FINANCIAL_PRODUCT_CODE, 1,'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCIES c,'
      '                CURRENCY_RATES cr'
      '              where'
      
        '                (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUCT_CODE' +
        ') and'
      '                (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '                (cr.RATE_DATE = ContextDate)'
      '            ) /'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCIES c,'
      '                CURRENCY_RATES cr'
      '              where'
      
        '                (c.PRODUCT_CODE = fo.WORK_FINANCIAL_PRODUCT_CODE' +
        ') and'
      '                (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '                (cr.RATE_DATE = ContextDate)'
      '            )'
      '          )'
      '        )'
      '      ) as PLAN_IN_QUANTITY,'
      ''
      '      Coalesce('
      '        ( select'
      
        '            /*+ ORDERED NO_USE_HASH(rfml psd c cr) NO_USE_MERGE(' +
        'rfml psd c cr) USE_NL(rfml psd c cr) INDEX(rfml) INDEX(psd) INDE' +
        'X(c) INDEX(cr)*/'
      '            Sum(psd.QUANTITY * cr.FIXING)'
      '          from'
      '            REAL_FIN_MODEL_LINES rfml,'
      '            PLANNED_STORE_DEALS psd,'
      '            CURRENCIES c,'
      '            CURRENCY_RATES cr'
      '          where'
      '            (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '            (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE' +
        ') and'
      '            (rfml.IN_OUT = 1) and'
      '            (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '            (c.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '            (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      
        '            (cr.RATE_DATE = Least(psd.STORE_DEAL_BEGIN_DATE, Con' +
        'textDate))'
      '        ),'
      '        ( select'
      '            Decode(fo.IN_OUT, 1, fo.BASE_QUANTITY) * cr.FIXING'
      '          from'
      '            CURRENCIES c,'
      '            CURRENCY_RATES cr'
      '          where'
      
        '            (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUCT_CODE) an' +
        'd'
      '            (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      '            (cr.RATE_DATE = ContextDate)'
      '        )'
      '      ) as PLAN_IN_QUANTITY_BC,'
      ''
      '      ( select'
      '          Sum(psd.QUANTITY - psd.COMPLETED_QUANTITY)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.IN_OUT = 1) and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null)'
      '      ) as REMAINING_IN_QUANTITY,'
      ''
      '      ( select'
      
        '          /*+ ORDERED NO_USE_HASH(rfml psd c tcr) NO_USE_MERGE(r' +
        'fml psd c tcr) USE_NL(rfml psd c tcr) INDEX(rfml) INDEX(psd) IND' +
        'EX(c) INDEX(tcr)*/'
      
        '          Sum((psd.QUANTITY - psd.COMPLETED_QUANTITY) * tcr.FIXI' +
        'NG)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          PLANNED_STORE_DEALS psd,'
      '          CURRENCIES c,'
      '          TODAY_CURRENCY_RATES tcr'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.IN_OUT = 1) and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (c.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '          (tcr.CURRENCY_CODE = c.CURRENCY_CODE)'
      '      ) as REMAINING_IN_QUANTITY_BC,'
      ''
      '      ( select'
      '          Sum(psd.REMAINING_QUANTITY)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.IN_OUT = 1) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < ContextDate) and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (psd.REMAINING_QUANTITY > 0)'
      '      ) as LATE_PLAN_IN_QUANTITY,'
      ''
      '      ( select'
      
        '          /*+ ORDERED NO_USE_HASH(rfml psd c tcr) NO_USE_MERGE(r' +
        'fml psd c tcr) USE_NL(rfml psd c tcr) INDEX(rfml) INDEX(psd) IND' +
        'EX(c) INDEX(tcr)*/'
      '          Sum(psd.REMAINING_QUANTITY * tcr.FIXING)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          PLANNED_STORE_DEALS psd,'
      '          CURRENCIES c,'
      '          TODAY_CURRENCY_RATES tcr'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.IN_OUT = 1) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < ContextDate) and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (psd.REMAINING_QUANTITY > 0) and'
      '          (c.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '          (tcr.CURRENCY_CODE = c.CURRENCY_CODE)'
      '      ) as LATE_PLAN_IN_QUANTITY_BC,'
      ''
      '      ( select'
      
        '          Max(Coalesce(fo.ANNUL_DATE, fo.CLOSE_DATE, ContextDate' +
        ') - psd.STORE_DEAL_BEGIN_DATE)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.IN_OUT = 1) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < ContextDate) and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (psd.REMAINING_QUANTITY > 0)'
      '      ) as LATE_PLAN_IN_DAYS,'
      ''
      '      ( select'
      '          Sum(sd.QUANTITY)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '          (rfml.IN_OUT = 1) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < sd.STORE_DEAL_DATE)'
      '      ) as LATE_REAL_IN_QUANTITY,'
      ''
      '      ( select'
      '          Sum(sd.QUANTITY * cr.FIXING)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd,'
      '          CURRENCIES c,'
      '          CURRENCY_RATES cr'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '          (rfml.IN_OUT = 1) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < sd.STORE_DEAL_DATE) and'
      ''
      '          (c.PRODUCT_CODE = sd.PRODUCT_CODE) and'
      '          (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      '          (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '      ) as LATE_REAL_IN_QUANTITY_BC,'
      ''
      '      ( select'
      '          Max(sd.STORE_DEAL_DATE - psd.STORE_DEAL_BEGIN_DATE)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '          (rfml.IN_OUT = 1) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < sd.STORE_DEAL_DATE)'
      '      ) as LATE_REAL_IN_DAYS,'
      ''
      '      Coalesce('
      '        ( select'
      '            Sum(psd.QUANTITY)'
      '          from'
      '            REAL_FIN_MODEL_LINES rfml,'
      '            PLANNED_STORE_DEALS psd'
      '          where'
      '            (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '            (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE' +
        ') and'
      '            (rfml.IN_OUT = -1) and'
      '            (rfml.ANNUL_EMPLOYEE_CODE is null)'
      '        ),'
      '        Decode(fo.IN_OUT, -1,'
      '          fo.BASE_QUANTITY *'
      '          Decode(fo.BASE_FINANCIAL_PRODUCT_CODE,'
      '            fo.WORK_FINANCIAL_PRODUCT_CODE, 1,'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCIES c,'
      '                CURRENCY_RATES cr'
      '              where'
      
        '                (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUCT_CODE' +
        ') and'
      '                (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '                (cr.RATE_DATE = ContextDate)'
      '            ) /'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCIES c,'
      '                CURRENCY_RATES cr'
      '              where'
      
        '                (c.PRODUCT_CODE = fo.WORK_FINANCIAL_PRODUCT_CODE' +
        ') and'
      '                (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '                (cr.RATE_DATE = ContextDate)'
      '            )'
      '          )'
      '        )'
      '      ) as PLAN_OUT_QUANTITY,'
      ''
      '      Coalesce('
      '        ( select'
      
        '            /*+ ORDERED NO_USE_HASH(rfml psd c cr) NO_USE_MERGE(' +
        'rfml psd c cr) USE_NL(rfml psd c cr) INDEX(rfml) INDEX(psd) INDE' +
        'X(c) INDEX(cr)*/'
      '            Sum(psd.QUANTITY * cr.FIXING)'
      '          from'
      '            REAL_FIN_MODEL_LINES rfml,'
      '            PLANNED_STORE_DEALS psd,'
      '            CURRENCIES c,'
      '            CURRENCY_RATES cr'
      '          where'
      '            (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '            (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE' +
        ') and'
      '            (rfml.IN_OUT = -1) and'
      '            (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '            (c.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '            (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      
        '            (cr.RATE_DATE = Least(psd.STORE_DEAL_BEGIN_DATE, Con' +
        'textDate))'
      '        ),'
      '        ( select'
      '            Decode(fo.IN_OUT, -1, fo.BASE_QUANTITY) * cr.FIXING'
      '          from'
      '            CURRENCIES c,'
      '            CURRENCY_RATES cr'
      '          where'
      
        '            (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUCT_CODE) an' +
        'd'
      '            (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      '            (cr.RATE_DATE = ContextDate)'
      '        )'
      '      ) as PLAN_OUT_QUANTITY_BC,'
      ''
      '      ( select'
      '          Sum(psd.QUANTITY - psd.COMPLETED_QUANTITY)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.IN_OUT = -1) and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null)'
      '      ) as REMAINING_OUT_QUANTITY,'
      ''
      '      ( select'
      
        '          /*+ ORDERED NO_USE_HASH(rfml psd c tcr) NO_USE_MERGE(r' +
        'fml psd c tcr) USE_NL(rfml psd c tcr) INDEX(rfml) INDEX(psd) IND' +
        'EX(c) INDEX(tcr)*/'
      
        '          Sum((psd.QUANTITY - psd.COMPLETED_QUANTITY) * tcr.FIXI' +
        'NG)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          PLANNED_STORE_DEALS psd,'
      '          CURRENCIES c,'
      '          TODAY_CURRENCY_RATES tcr'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.IN_OUT = -1) and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (c.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '          (tcr.CURRENCY_CODE = c.CURRENCY_CODE)'
      '      ) as REMAINING_OUT_QUANTITY_BC,'
      ''
      '      ( select'
      '          Sum(psd.REMAINING_QUANTITY)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.IN_OUT = -1) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < ContextDate) and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (psd.REMAINING_QUANTITY > 0)'
      '      ) as LATE_PLAN_OUT_QUANTITY,'
      ''
      '      ( select'
      
        '          /*+ ORDERED NO_USE_HASH(rfml psd c tcr) NO_USE_MERGE(r' +
        'fml psd c tcr) USE_NL(rfml psd c tcr) INDEX(rfml) INDEX(psd) IND' +
        'EX(c) INDEX(tcr)*/'
      '          Sum(psd.REMAINING_QUANTITY * tcr.FIXING)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          PLANNED_STORE_DEALS psd,'
      '          CURRENCIES c,'
      '          TODAY_CURRENCY_RATES tcr'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.IN_OUT = -1) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < ContextDate) and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (psd.REMAINING_QUANTITY > 0) and'
      '          (c.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '          (tcr.CURRENCY_CODE = c.CURRENCY_CODE)'
      '      ) as LATE_PLAN_OUT_QUANTITY_BC,'
      ''
      '      ( select'
      
        '          Max(Coalesce(fo.ANNUL_DATE, fo.CLOSE_DATE, ContextDate' +
        ') - psd.STORE_DEAL_BEGIN_DATE)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.IN_OUT = -1) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < ContextDate) and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (psd.REMAINING_QUANTITY > 0)'
      '      ) as LATE_PLAN_OUT_DAYS,'
      ''
      '      ( select'
      '          Sum(sd.QUANTITY)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '          (rfml.IN_OUT = -1) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < sd.STORE_DEAL_DATE)'
      '      ) as LATE_REAL_OUT_QUANTITY,'
      ''
      '      ( select'
      '          Sum(sd.QUANTITY * cr.FIXING)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd,'
      '          CURRENCIES c,'
      '          CURRENCY_RATES cr'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '          (rfml.IN_OUT = -1) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < sd.STORE_DEAL_DATE) and'
      ''
      '          (c.PRODUCT_CODE = sd.PRODUCT_CODE) and'
      '          (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      '          (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '      ) as LATE_REAL_OUT_QUANTITY_BC,'
      ''
      '      ( select'
      '          Max(sd.STORE_DEAL_DATE - psd.STORE_DEAL_BEGIN_DATE)'
      '        from'
      '          REAL_FIN_MODEL_LINES rfml,'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      '          (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      
        '          (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) ' +
        'and'
      '          (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '          (rfml.IN_OUT = -1) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < sd.STORE_DEAL_DATE)'
      '      ) as LATE_REAL_OUT_DAYS,'
      ''
      '      c.SHORT_NAME as PARTNER_SHORT_NAME,'
      ''
      '      Decode(c.COMPANY_CLASS_CODE, 2,'
      '        ( select'
      '            ( p.FIRST_NAME ||'
      
        '              Nvl2(p.MIDDLE_NAME, ('#39' '#39' || SubStr(p.MIDDLE_NAME, ' +
        '1, 1) || '#39'. '#39'), '#39' '#39') ||'
      '              p.LAST_NAME'
      '            )'
      '          from'
      '            PERSONS p'
      '          where'
      '            (p.COMPANY_CODE = c.COMPANY_CODE)'
      '        ),'
      '        Nvl2('
      '          c.COMPANY_TYPE_CODE,'
      '          ( select'
      '              Decode(ct.ABBREV_BEFORE, 1,'
      
        '                (ct.COMPANY_TYPE_ABBREV || '#39' "'#39' || c.COMPANY_NAM' +
        'E ||'#39'"'#39'),'
      
        '                ('#39'"'#39' || c.COMPANY_NAME ||'#39'" '#39' || ct.COMPANY_TYPE' +
        '_ABBREV)'
      '              )'
      '            from'
      '              COMPANY_TYPES ct'
      '            where'
      '              (ct.COMPANY_TYPE_CODE = c.COMPANY_TYPE_CODE)'
      '          ),'
      '          c.COMPANY_NAME'
      '        )'
      '      ) as PARTNER_FULL_NAME,'
      ''
      '      c.BULSTAT_NO as PARTNER_BULSTAT_NO,'
      ''
      '      ( select'
      '          cou.COUNTRY_NAME'
      '        from'
      '          COUNTRIES cou'
      '        where'
      '          (cou.COUNTRY_CODE = c.COUNTRY_CODE)'
      '      ) as PARTNER_COUNTRY_NAME,'
      ''
      '      c.CITY as PARTNER_CITY,'
      ''
      '      ( select'
      '          po.PROCESS_OBJECT_IDENTIFIER'
      '        from'
      '          PROCESS_OBJECTS po'
      '        where'
      
        '          (po.PROCESS_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      '          (po.PROCESS_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE)'
      '      ) as BND_PROCESS_OBJECT_IDENTIFIER,'
      ''
      '      ( select'
      '          fc.NAME'
      '        from'
      '          FIN_CLASSES fc'
      '        where'
      '          (fc.FIN_CLASS_CODE = fo.FIN_CLASS_CODE)'
      '      ) as FIN_CLASS_NAME,'
      ''
      
        '      (p.PRIORITY_NO || '#39'      '#39' || p.PRIORITY_NAME) as PRIORITY' +
        '_FULL_NAME,'
      '      p.PRIORITY_COLOR,'
      '      p.PRIORITY_BACKGROUND_COLOR,'
      ''
      '      fo.DOCUMENT_IDENTIFIER,'
      '      fo.DOCUMENT_DATE,'
      ''
      '      fo.BASE_DATA_CHANGED,'
      ''
      '      Cast('
      '        Coalesce('
      '          ( select'
      '              p.NAME'
      '            from'
      '              PRODUCTS p'
      '            where'
      '              (p.PRODUCT_CODE ='
      '                Coalesce('
      '                  ( select'
      '                      s.PRODUCT_CODE'
      '                    from'
      '                      SALE_SHIPMENTS ss,'
      '                      SALES s'
      '                    where'
      
        '                      (ss.SHIPMENT_OBJECT_BRANCH_CODE = fo.BND_P' +
        'ROCESS_OBJECT_BRANCH_CODE) and'
      
        '                      (ss.SHIPMENT_OBJECT_CODE = fo.BND_PROCESS_' +
        'OBJECT_CODE) and'
      ''
      
        '                      (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJEC' +
        'T_BRANCH_CODE) and'
      '                      (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE)'
      '                  ),'
      '                  ( select'
      '                      dp.PRODUCT_CODE'
      '                    from'
      '                      DELIVERY_CONTRACTS dc,'
      '                      DELIVERY_PROJECTS dp'
      '                    where'
      
        '                      (dc.DELIVERY_OBJECT_BRANCH_CODE = fo.BND_P' +
        'ROCESS_OBJECT_BRANCH_CODE) and'
      
        '                      (dc.DELIVERY_OBJECT_CODE = fo.BND_PROCESS_' +
        'OBJECT_CODE) and'
      ''
      
        '                      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT' +
        '_BRANCH_CODE) and'
      
        '                      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) ' +
        'and'
      
        '                      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PR' +
        'OJECT_CODE)'
      '                  )'
      '                )'
      '              )'
      '          ),'
      '          ( select'
      '              ( select'
      '                  p.NAME'
      '                from'
      '                  BUDGET_ORDER_ITEMS boi,'
      '                  PRODUCTS p'
      '                where'
      
        '                  (boi.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_OR' +
        'DER_BRANCH_CODE) and'
      
        '                  (boi.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_COD' +
        'E) and'
      
        '                  (boi.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDE' +
        'R_ITEM_CODE) and'
      '                  (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '              ) || '#39' / '#39' || boio.DESCRIPTION'
      '            from'
      '              BOI_ORDERS boio'
      '            where'
      
        '              (boio.BOI_ORDER_OBJECT_BRANCH_CODE = fo.BND_PROCES' +
        'S_OBJECT_BRANCH_CODE) and'
      
        '              (boio.BOI_ORDER_OBJECT_CODE = fo.BND_PROCESS_OBJEC' +
        'T_CODE)'
      '          ),'
      '          ( select'
      '              fc.SHORT_NAME'
      '            from'
      '              FIN_CLASSES fc'
      '            where'
      '              (fc.FIN_CLASS_CODE = fo.FIN_CLASS_CODE) and'
      '              (fo.FIN_PROCESS_CODE = 207)'
      '          )'
      '        ) as Varchar2(250 char)'
      '      ) as BND_PROCESS_OBJECT_INFO,'
      ''
      '      fo.NOTES'
      ''
      '    from'
      '      FIN_ORDERS fo,'
      '      PRIORITIES p,'
      '      COMPANIES c'
      ''
      '    where'
      '      (fo.PRIORITY_CODE = p.PRIORITY_CODE) and'
      ''
      '      (c.COMPANY_CODE = fo.PARTNER_CODE) and'
      ''
      '      ( (:FIN_ORDER_BRANCH_CODE is null) or'
      
        '        (fo.FIN_ORDER_BRANCH_CODE = :FIN_ORDER_BRANCH_CODE) ) an' +
        'd'
      ''
      '      ( (:FIN_ORDER_NO is null) or'
      '        (fo.FIN_ORDER_NO = :FIN_ORDER_NO) ) and'
      ''
      
        '      ( ( (5 <= :MIN_STATUS_CODE) and (:MAX_STATUS_CODE <= 6) an' +
        'd (fo.IS_COMPLETE = 1) ) or'
      '        (:MAX_STATUS_CODE > 4) or'
      '        (fo.IS_COMPLETE = 0)'
      '      ) and'
      ''
      '      ( (:WORK_FINANCIAL_PRODUCT_CODE is null) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            PRODUCT_RELATIONS pr'
      '          where'
      
        '            (pr.ANCESTOR_PRODUCT_CODE = :WORK_FINANCIAL_PRODUCT_' +
        'CODE) and'
      
        '            (pr.DESCENDANT_PRODUCT_CODE = fo.WORK_FINANCIAL_PROD' +
        'UCT_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (:BEGIN_MOVEMENT_DATE is null) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            REAL_FIN_MODEL_LINES rfml'
      '          where'
      '            (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      '            ( ( fo.BASE_DATE + rfml.MOVEMENT_OFFSET_DAYS +'
      '                Decode(fo.FM_MOVEMENT_OFFSET_TYPE_CODE,'
      
        '                  CommonConsts.fmmotBeginning, rfml.MOVEMENT_DUR' +
        'ATION_DAYS,'
      '                  0'
      '                )  -- MOVEMENT_PLAN_END_DATE'
      '              ) >= :BEGIN_MOVEMENT_DATE'
      '            )'
      '        )'
      '      ) and'
      ''
      '      ( (:END_MOVEMENT_DATE is null) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            REAL_FIN_MODEL_LINES rfml'
      '          where'
      '            (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      '            ( ( fo.BASE_DATE + rfml.MOVEMENT_OFFSET_DAYS -'
      '                Decode(fo.FM_MOVEMENT_OFFSET_TYPE_CODE,'
      
        '                  CommonConsts.fmmotEnd, rfml.MOVEMENT_DURATION_' +
        'DAYS,'
      '                  0'
      '                )  -- MOVEMENT_PLAN_BEGIN_DATE'
      '              ) <= :END_MOVEMENT_DATE'
      '            )'
      '        )'
      '      ) and'
      ''
      '      ( (:EXEC_DEPT_CODE is null) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            DEPT_RELATIONS dr'
      '          where'
      '            (dr.ANCESTOR_DEPT_CODE = :EXEC_DEPT_CODE) and'
      '            (dr.DESCENDANT_DEPT_CODE = fo.EXEC_DEPT_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_COMPANIES = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_COMPANIES tfc'
      '            where'
      '              (tfc.COMPANY_CODE = fo.PARTNER_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:BEGIN_BASE_DATE is null) or'
      '        (fo.BASE_DATE >= :BEGIN_BASE_DATE) ) and'
      '      '
      '      ( (:END_BASE_DATE is null) or'
      '        (fo.BASE_DATE <= :END_BASE_DATE) ) and'
      '      '
      '      ( (:HAS_DOCUMENT_IDENTIFIER is null) or'
      '        ( (:HAS_DOCUMENT_IDENTIFIER = 0) and'
      '          (fo.DOCUMENT_IDENTIFIER is null) and'
      '          not exists('
      '            select'
      '              1'
      '            from'
      '              REAL_FIN_MODEL_LINES rfml'
      '            where'
      '              (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      '              (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '              (rfml.DOCUMENT_IDENTIFIER is not null)'
      '          )'
      '        ) or'
      '        ( (:HAS_DOCUMENT_IDENTIFIER = 1) and'
      '          ( ( (fo.DOCUMENT_IDENTIFIER is not null) and'
      '              ( (:DOCUMENT_IDENTIFIER is null) or'
      
        '                (fo.DOCUMENT_IDENTIFIER = :DOCUMENT_IDENTIFIER) ' +
        ') and'
      '              ( (:DOCUMENT_BEGIN_DATE is null) or'
      '                (fo.DOCUMENT_DATE >= :DOCUMENT_BEGIN_DATE) ) and'
      '              ( (:DOCUMENT_END_DATE is null) or'
      '                (fo.DOCUMENT_DATE <= :DOCUMENT_END_DATE) )'
      '            ) or'
      '            exists('
      '              select'
      '                1'
      '              from'
      '                REAL_FIN_MODEL_LINES rfml'
      '              where'
      '                (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      '                (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '                ( (rfml.DOCUMENT_IDENTIFIER is not null) and'
      '                  ( (:DOCUMENT_IDENTIFIER is null) or'
      
        '                    (rfml.DOCUMENT_IDENTIFIER = :DOCUMENT_IDENTI' +
        'FIER) ) and'
      '                  ( (:DOCUMENT_BEGIN_DATE is null) or'
      
        '                    (rfml.DOCUMENT_DATE >= :DOCUMENT_BEGIN_DATE)' +
        ' ) and'
      '                  ( (:DOCUMENT_END_DATE is null) or'
      '                    (rfml.DOCUMENT_DATE <= :DOCUMENT_END_DATE) )'
      '                )'
      '            )'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:IN_OUT is null) or'
      '        (fo.IN_OUT is null) or'
      '        (fo.IN_OUT = :IN_OUT) ) and'
      ''
      '      ( (:FIN_CLASS_CODE is null) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            FIN_CLASS_RELATIONS fcr'
      '          where'
      '            (fcr.ANCESTOR_FIN_CLASS_CODE = :FIN_CLASS_CODE) and'
      '            (fcr.DESCENDANT_FIN_CLASS_CODE = fo.FIN_CLASS_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (:FIN_PROCESS_CODE is null) or'
      '        ( (fo.FIN_PROCESS_CODE = :FIN_PROCESS_CODE) and'
      ''
      
        '          ( (fo.FIN_PROCESS_CODE not in (201, 202, 203, 204, 205' +
        ', 206)) or'
      ''
      
        '            ( (fo.FIN_PROCESS_CODE in (201, 204)) and  -- prodaj' +
        'ba'
      '              exists( '
      '                select'
      '                  1'
      '                from'
      '                  SALE_SHIPMENTS ss,'
      '                  SALES s'
      '                where'
      
        '                  (ss.SHIPMENT_OBJECT_BRANCH_CODE = fo.BND_PROCE' +
        'SS_OBJECT_BRANCH_CODE) and'
      
        '                  (ss.SHIPMENT_OBJECT_CODE = fo.BND_PROCESS_OBJE' +
        'CT_CODE) and'
      '                  '
      
        '                  (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BR' +
        'ANCH_CODE) and'
      '                  (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '                '
      '                  ( (:SALE_BRANCH_CODE is null) or'
      '                    (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) '
      '                  ) and'
      ''
      '                  ( (:SALE_NO is null) or'
      '                    (s.SALE_NO = :SALE_NO) '
      '                  ) and'
      ''
      '                  ( (:SALE_SHIPMENT_NO is null) or'
      '                    (ss.SALE_SHIPMENT_NO = :SALE_SHIPMENT_NO)'
      '                  ) and'
      ''
      '                  ( (:BND_PRODUCT_CODE is null) or'
      '                    exists('
      '                      select'
      '                        1'
      '                      from'
      '                        PRODUCT_RELATIONS pr'
      '                      where'
      
        '                        (pr.ANCESTOR_PRODUCT_CODE = :BND_PRODUCT' +
        '_CODE) and'
      
        '                        (pr.DESCENDANT_PRODUCT_CODE = s.PRODUCT_' +
        'CODE)'
      '                    )'
      '                  )'
      '              )'
      '            ) or'
      ''
      '            ( (fo.FIN_PROCESS_CODE = 202) and  -- grupa pp'
      '              exists('
      '                select'
      '                  1'
      '                from'
      '                  SALE_REQUEST_GROUPS srg'
      '                where'
      
        '                  (srg.SALE_GROUP_OBJECT_BRANCH_CODE = fo.BND_PR' +
        'OCESS_OBJECT_BRANCH_CODE) and'
      
        '                  (srg.SALE_GROUP_OBJECT_CODE = fo.BND_PROCESS_O' +
        'BJECT_CODE) and'
      ''
      '                  ( (:REQUEST_BRANCH_CODE is null) or'
      
        '                    (srg.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_C' +
        'ODE)'
      '                  ) and'
      ''
      '                  ( (:REQUEST_NO is null) or'
      '                    (srg.REQUEST_NO = :REQUEST_NO)'
      '                  )'
      '              )'
      '            ) or'
      ''
      
        '            ( (fo.FIN_PROCESS_CODE in (203, 205)) and  -- dostav' +
        'ka na UOb/FOb'
      '              exists('
      '                select'
      '                  1'
      '                from'
      '                  DELIVERY_CONTRACTS dc,'
      '                  DELIVERY_PROJECTS dp,'
      '                  DEFICIT_COVER_DECISIONS dcd'
      '                where'
      
        '                  (dc.DELIVERY_OBJECT_BRANCH_CODE = fo.BND_PROCE' +
        'SS_OBJECT_BRANCH_CODE) and'
      
        '                  (dc.DELIVERY_OBJECT_CODE = fo.BND_PROCESS_OBJE' +
        'CT_CODE) and'
      ''
      
        '                  (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRA' +
        'NCH_CODE) and'
      '                  (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      
        '                  (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJEC' +
        'T_CODE) and'
      ''
      
        '                  (dc.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BR' +
        'ANCH_CODE) and'
      '                  (dc.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      ''
      '                  ( (:DCD_BRANCH_CODE is null) or'
      '                    (dcd.DCD_BRANCH_CODE = :DCD_BRANCH_CODE)'
      '                  ) and'
      ''
      '                  ( (:DCD_CODE is null) or'
      '                    (dcd.DCD_CODE = :DCD_CODE)'
      '                  ) and'
      ''
      '                  ( (:DELIVERY_PROJECT_CODE is null) or'
      
        '                    (dc.DELIVERY_PROJECT_CODE = :DELIVERY_PROJEC' +
        'T_CODE)'
      '                  ) and'
      ''
      '                  ( (:BND_PRODUCT_CODE is null) or'
      '                    exists('
      '                      select'
      '                        1'
      '                      from'
      '                        PRODUCT_RELATIONS pr'
      '                      where'
      
        '                        (pr.ANCESTOR_PRODUCT_CODE = :BND_PRODUCT' +
        '_CODE) and'
      
        '                        (pr.DESCENDANT_PRODUCT_CODE = dp.PRODUCT' +
        '_CODE)'
      '                    )'
      '                  )'
      '              )'
      '            ) or'
      ''
      
        '            ( (fo.FIN_PROCESS_CODE = 206) and  -- dostavka na pr' +
        'oces'
      '              exists('
      '                select'
      '                  1'
      '                from'
      '                  BOI_ORDERS boio,'
      '                  BUDGET_ORDER_ITEMS boi,'
      '                  BUDGET_ORDERS bo'
      '                where'
      
        '                  (boio.BOI_ORDER_OBJECT_BRANCH_CODE = fo.BND_PR' +
        'OCESS_OBJECT_BRANCH_CODE) and'
      
        '                  (boio.BOI_ORDER_OBJECT_CODE = fo.BND_PROCESS_O' +
        'BJECT_CODE) and'
      ''
      
        '                  (boi.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_OR' +
        'DER_BRANCH_CODE) and'
      
        '                  (boi.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_COD' +
        'E) and'
      
        '                  (boi.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDE' +
        'R_ITEM_CODE) and'
      ''
      
        '                  (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDE' +
        'R_BRANCH_CODE) and'
      
        '                  (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE)' +
        ' and'
      ''
      '                  ( (:BUDGET_ORDER_BRANCH_CODE is null) or'
      
        '                    (boio.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORD' +
        'ER_BRANCH_CODE)'
      '                  ) and'
      ''
      '                  ( (:BUDGET_ORDER_CODE is null) or'
      
        '                    (boio.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE' +
        ')'
      '                  ) and'
      ''
      '                  ( (:BUDGET_ORDER_ITEM_CODE is null) or'
      
        '                    (boio.BUDGET_ORDER_ITEM_CODE = :BUDGET_ORDER' +
        '_ITEM_CODE)'
      '                  ) and'
      ''
      '                  ( (:BOI_ORDER_CODE is null) or'
      '                    (boio.BOI_ORDER_CODE = :BOI_ORDER_CODE)'
      '                  ) and'
      ''
      '                  ( (:BND_PRODUCT_CODE is null) or'
      '                    exists('
      '                      select'
      '                        1'
      '                      from'
      '                        PRODUCT_RELATIONS pr'
      '                      where'
      
        '                        (pr.ANCESTOR_PRODUCT_CODE = :BND_PRODUCT' +
        '_CODE) and'
      
        '                        (pr.DESCENDANT_PRODUCT_CODE = bo.PRODUCT' +
        '_CODE)'
      '                    )'
      '                  ) and'
      ''
      '                  ( (:BND_BUDGET_PRODUCT_CODE is null) or'
      '                    exists('
      '                      select'
      '                        1'
      '                      from'
      '                        PRODUCT_RELATIONS pr'
      '                      where'
      
        '                        (pr.ANCESTOR_PRODUCT_CODE = :BND_BUDGET_' +
        'PRODUCT_CODE) and'
      
        '                        (pr.DESCENDANT_PRODUCT_CODE = boi.BUDGET' +
        '_PRODUCT_CODE)'
      '                    )'
      '                  )'
      '              )'
      '            )'
      '          )'
      '        )'
      '      )'
      '  ) x'
      ''
      'where'
      '  (x.STATUS_CODE between :MIN_STATUS_CODE and :MAX_STATUS_CODE)'
      ''
      'order by'
      '  PLAN_BEGIN_DATE,'
      '  FIN_ORDER_BRANCH_NO,'
      '  FIN_ORDER_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'FIN_ORDER_STATUS[fo]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 208
    Top = 360
    object qryFinOrdersMasterFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object qryFinOrdersMasterSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
    end
    object qryFinOrdersMasterFIN_PROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_PROCESS_ABBREV'
      Size = 100
    end
    object qryFinOrdersMasterFIN_ORDER_BRANCH_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_BRANCH_NO'
    end
    object qryFinOrdersMasterFIN_ORDER_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_NO'
    end
    object qryFinOrdersMasterFIN_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FIN_ORDER_IDENTIFIER'
      Size = 81
    end
    object qryFinOrdersMasterBASE_DATE: TAbmesSQLTimeStampField
      FieldName = 'BASE_DATE'
      Required = True
    end
    object qryFinOrdersMasterPLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_BEGIN_DATE'
    end
    object qryFinOrdersMasterBEGIN_DATE_DIFF: TAbmesFloatField
      FieldName = 'BEGIN_DATE_DIFF'
    end
    object qryFinOrdersMasterMODEL_DURATION_DAYS: TAbmesFloatField
      FieldName = 'MODEL_DURATION_DAYS'
    end
    object qryFinOrdersMasterEXEC_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'EXEC_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryFinOrdersMasterWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'WORK_FINANCIAL_PRODUCT_CODE'
    end
    object qryFinOrdersMasterWORK_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'WORK_FINANCIAL_PRODUCT_NAME'
      Size = 100
    end
    object qryFinOrdersMasterPLAN_IN_QTY: TAbmesFloatField
      FieldName = 'PLAN_IN_QTY'
    end
    object qryFinOrdersMasterPLAN_IN_QTY_BC: TAbmesFloatField
      FieldName = 'PLAN_IN_QTY_BC'
    end
    object qryFinOrdersMasterREMAINING_IN_QTY: TAbmesFloatField
      FieldName = 'REMAINING_IN_QTY'
    end
    object qryFinOrdersMasterREMAINING_IN_QTY_BC: TAbmesFloatField
      FieldName = 'REMAINING_IN_QTY_BC'
    end
    object qryFinOrdersMasterLATE_PLAN_IN_QTY: TAbmesFloatField
      FieldName = 'LATE_PLAN_IN_QTY'
    end
    object qryFinOrdersMasterLATE_PLAN_IN_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_PLAN_IN_QTY_BC'
    end
    object qryFinOrdersMasterLATE_PLAN_IN_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_IN_QTY_PERCENT'
    end
    object qryFinOrdersMasterLATE_PLAN_IN_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_IN_QTY_BC_PERCENT'
    end
    object qryFinOrdersMasterLATE_PLAN_IN_DAYS: TAbmesFloatField
      FieldName = 'LATE_PLAN_IN_DAYS'
    end
    object qryFinOrdersMasterLATE_REAL_IN_QTY: TAbmesFloatField
      FieldName = 'LATE_REAL_IN_QTY'
    end
    object qryFinOrdersMasterLATE_REAL_IN_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_REAL_IN_QTY_BC'
    end
    object qryFinOrdersMasterLATE_REAL_IN_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_IN_QTY_PERCENT'
    end
    object qryFinOrdersMasterLATE_REAL_IN_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_IN_QTY_BC_PERCENT'
    end
    object qryFinOrdersMasterLATE_REAL_IN_DAYS: TAbmesFloatField
      FieldName = 'LATE_REAL_IN_DAYS'
    end
    object qryFinOrdersMasterPLAN_OUT_QTY: TAbmesFloatField
      FieldName = 'PLAN_OUT_QTY'
    end
    object qryFinOrdersMasterPLAN_OUT_QTY_BC: TAbmesFloatField
      FieldName = 'PLAN_OUT_QTY_BC'
    end
    object qryFinOrdersMasterREMAINING_OUT_QTY: TAbmesFloatField
      FieldName = 'REMAINING_OUT_QTY'
    end
    object qryFinOrdersMasterREMAINING_OUT_QTY_BC: TAbmesFloatField
      FieldName = 'REMAINING_OUT_QTY_BC'
    end
    object qryFinOrdersMasterLATE_PLAN_OUT_QTY: TAbmesFloatField
      FieldName = 'LATE_PLAN_OUT_QTY'
    end
    object qryFinOrdersMasterLATE_PLAN_OUT_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_PLAN_OUT_QTY_BC'
    end
    object qryFinOrdersMasterLATE_PLAN_OUT_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_OUT_QTY_PERCENT'
    end
    object qryFinOrdersMasterLATE_PLAN_OUT_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_OUT_QTY_BC_PERCENT'
    end
    object qryFinOrdersMasterLATE_PLAN_OUT_DAYS: TAbmesFloatField
      FieldName = 'LATE_PLAN_OUT_DAYS'
    end
    object qryFinOrdersMasterLATE_REAL_OUT_QTY: TAbmesFloatField
      FieldName = 'LATE_REAL_OUT_QTY'
    end
    object qryFinOrdersMasterLATE_REAL_OUT_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_REAL_OUT_QTY_BC'
    end
    object qryFinOrdersMasterLATE_REAL_OUT_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_OUT_QTY_PERCENT'
    end
    object qryFinOrdersMasterLATE_REAL_OUT_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_OUT_QTY_BC_PERCENT'
    end
    object qryFinOrdersMasterLATE_REAL_OUT_DAYS: TAbmesFloatField
      FieldName = 'LATE_REAL_OUT_DAYS'
    end
    object qryFinOrdersMasterPLAN_QTY: TAbmesFloatField
      FieldName = 'PLAN_QTY'
    end
    object qryFinOrdersMasterPLAN_QTY_BC: TAbmesFloatField
      FieldName = 'PLAN_QTY_BC'
    end
    object qryFinOrdersMasterREMAINING_QTY: TAbmesFloatField
      FieldName = 'REMAINING_QTY'
    end
    object qryFinOrdersMasterREMAINING_QTY_BC: TAbmesFloatField
      FieldName = 'REMAINING_QTY_BC'
    end
    object qryFinOrdersMasterLATE_PLAN_QTY: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY'
    end
    object qryFinOrdersMasterLATE_PLAN_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY_BC'
    end
    object qryFinOrdersMasterLATE_PLAN_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY_PERCENT'
    end
    object qryFinOrdersMasterLATE_PLAN_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY_BC_PERCENT'
    end
    object qryFinOrdersMasterLATE_PLAN_DAYS: TAbmesFloatField
      FieldName = 'LATE_PLAN_DAYS'
    end
    object qryFinOrdersMasterLATE_REAL_QTY: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY'
    end
    object qryFinOrdersMasterLATE_REAL_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY_BC'
    end
    object qryFinOrdersMasterLATE_REAL_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY_PERCENT'
    end
    object qryFinOrdersMasterLATE_REAL_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY_BC_PERCENT'
    end
    object qryFinOrdersMasterLATE_REAL_DAYS: TAbmesFloatField
      FieldName = 'LATE_REAL_DAYS'
    end
    object qryFinOrdersMasterPARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_SHORT_NAME'
    end
    object qryFinOrdersMasterPARTNER_FULL_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_FULL_NAME'
      Size = 153
    end
    object qryFinOrdersMasterPARTNER_BULSTAT_NO: TAbmesFloatField
      FieldName = 'PARTNER_BULSTAT_NO'
    end
    object qryFinOrdersMasterPARTNER_COUNTRY_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_COUNTRY_NAME'
      Size = 50
    end
    object qryFinOrdersMasterPARTNER_CITY: TAbmesWideStringField
      FieldName = 'PARTNER_CITY'
      Size = 50
    end
    object qryFinOrdersMasterBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
      Size = 100
    end
    object qryFinOrdersMasterFIN_CLASS_NAME: TAbmesWideStringField
      FieldName = 'FIN_CLASS_NAME'
      Size = 100
    end
    object qryFinOrdersMasterPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 93
    end
    object qryFinOrdersMasterPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryFinOrdersMasterPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qryFinOrdersMasterDOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DOCUMENT_IDENTIFIER'
      Size = 50
    end
    object qryFinOrdersMasterDOCUMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'DOCUMENT_DATE'
    end
    object qryFinOrdersMasterBASE_DATA_CHANGED: TAbmesFloatField
      FieldName = 'BASE_DATA_CHANGED'
      Required = True
    end
    object qryFinOrdersMasterBND_PROCESS_OBJECT_INFO: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_INFO'
      Size = 250
    end
    object qryFinOrdersMasterPARTNER_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_NAME'
      Size = 250
    end
    object qryFinOrdersMasterNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object prvFinOrdersDetail: TDataSetProvider
    DataSet = qryFinOrdersDetail
    Options = [poReadOnly, poUseQuoteChar]
    Left = 208
    Top = 416
  end
  object qryFinOrdersDetail: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.RFML_OBJECT_BRANCH_CODE,'
      '  x.RFML_OBJECT_CODE,'
      '  x.FIN_ORDER_CODE,'
      '  x.FIN_MODEL_LINE_TYPE_CODE,'
      '  x.FIN_MODEL_LINE_NO,'
      '  x.SHOW_NO,'
      '  x.LINE_QUANTITY_PERCENT,'
      '  x.PLAN_QUANTITY as PLAN_QTY,'
      '  x.PLAN_QUANTITY_BC as PLAN_QTY_BC,'
      '  x.REMAINING_QUANTITY as REMAINING_QTY,'
      '  x.REMAINING_QUANTITY_BC as REMAINING_QTY_BC,'
      '  x.LATE_PLAN_QUANTITY as LATE_PLAN_QTY,'
      '  x.LATE_PLAN_QUANTITY_BC as LATE_PLAN_QTY_BC,'
      
        '  (x.LATE_PLAN_QUANTITY / x.PLAN_QUANTITY) as LATE_PLAN_QTY_PERC' +
        'ENT,'
      
        '  (x.LATE_PLAN_QUANTITY_BC / x.PLAN_QUANTITY_BC) as LATE_PLAN_QT' +
        'Y_BC_PERCENT,'
      '  x.LATE_PLAN_DAYS,'
      '  x.LATE_REAL_QUANTITY as LATE_REAL_QTY,'
      '  x.LATE_REAL_QUANTITY_BC as LATE_REAL_QTY_BC,'
      
        '  (x.LATE_REAL_QUANTITY / x.PLAN_QUANTITY) as LATE_REAL_QTY_PERC' +
        'ENT,'
      
        '  (x.LATE_REAL_QUANTITY_BC / x.PLAN_QUANTITY_BC) as LATE_REAL_QT' +
        'Y_BC_PERCENT,'
      '  x.LATE_REAL_DAYS,'
      '  x.FIN_STORE_IDENTIFIER,'
      '  x.IN_OUT,'
      '  x.PARTNER_ACCOUNT_FULL_NAME,'
      '  x.MOVEMENT_PLAN_BEGIN_DATE,'
      '  x.MOVEMENT_PLAN_END_DATE,'
      '  x.MOVEMENT_DURATION_DAYS,'
      '  x.FIN_MODEL_LINE_REASON_ABBREV'
      ''
      'from'
      '  ( select'
      '      rfml.RFML_OBJECT_BRANCH_CODE,'
      '      rfml.RFML_OBJECT_CODE,'
      '      rfml.FIN_ORDER_CODE,'
      ''
      '      rfml.FIN_MODEL_LINE_TYPE_CODE,'
      '      rfml.FIN_MODEL_LINE_NO,'
      '      ( ( select'
      '            fmlt.FIN_MODEL_LINE_TYPE_ABBREV'
      '          from'
      '            FIN_MODEL_LINE_TYPES fmlt'
      '          where'
      
        '            (fmlt.FIN_MODEL_LINE_TYPE_CODE = rfml.FIN_MODEL_LINE' +
        '_TYPE_CODE)'
      '        ) || '#39'.'#39' ||'
      '        rfml.FIN_MODEL_LINE_NO'
      '      ) as SHOW_NO,'
      ''
      '      rfml.LINE_QUANTITY_PERCENT,'
      ''
      '      ( select'
      '          psd.QUANTITY'
      '        from'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE)'
      '      ) as PLAN_QUANTITY,'
      ''
      '      ( select'
      '          psd.QUANTITY * cr.FIXING'
      '        from'
      '          PLANNED_STORE_DEALS psd,'
      '          CURRENCIES c,'
      '          CURRENCY_RATES cr'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (c.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '          (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      
        '          (cr.RATE_DATE = Least(psd.STORE_DEAL_BEGIN_DATE, Conte' +
        'xtDate))'
      '      ) as PLAN_QUANTITY_BC,'
      ''
      '      ( select'
      '          (psd.QUANTITY - psd.COMPLETED_QUANTITY)'
      '        from'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE)'
      '      ) as REMAINING_QUANTITY,'
      ''
      '      ( select'
      '          (psd.QUANTITY - psd.COMPLETED_QUANTITY) * tcr.FIXING'
      '        from'
      '          PLANNED_STORE_DEALS psd,'
      '          CURRENCIES c,'
      '          TODAY_CURRENCY_RATES tcr'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (c.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '          (tcr.CURRENCY_CODE = c.CURRENCY_CODE)'
      '      ) as REMAINING_QUANTITY_BC,'
      ''
      '      ( select'
      '          (psd.QUANTITY - psd.COMPLETED_QUANTITY)'
      '        from'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (psd.STORE_DEAL_BEGIN_DATE < ContextDate) and'
      '          (psd.REMAINING_QUANTITY > 0)'
      '      ) as LATE_PLAN_QUANTITY,'
      ''
      '      ( select'
      '          psd.REMAINING_QUANTITY * tcr.FIXING'
      '        from'
      '          PLANNED_STORE_DEALS psd,'
      '          CURRENCIES c,'
      '          TODAY_CURRENCY_RATES tcr'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (psd.STORE_DEAL_BEGIN_DATE < ContextDate) and'
      '          (psd.REMAINING_QUANTITY > 0) and'
      '          (c.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '          (tcr.CURRENCY_CODE = c.CURRENCY_CODE)'
      '      ) as LATE_PLAN_QUANTITY_BC,'
      ''
      '      ( select'
      
        '          Coalesce(fo.ANNUL_DATE, fo.CLOSE_DATE, ContextDate) - ' +
        'psd.STORE_DEAL_BEGIN_DATE'
      '        from'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (psd.STORE_DEAL_BEGIN_DATE < ContextDate) and'
      '          (psd.REMAINING_QUANTITY > 0)'
      '      ) as LATE_PLAN_DAYS,'
      ''
      '      ( select'
      '          Sum(sd.QUANTITY)'
      '        from'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) a' +
        'nd'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < sd.STORE_DEAL_DATE)'
      '      ) as LATE_REAL_QUANTITY,'
      ''
      '      ( select'
      '          Sum(sd.QUANTITY * cr.FIXING)'
      '        from'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd,'
      '          CURRENCIES c,'
      '          CURRENCY_RATES cr'
      '        where'
      
        '          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) a' +
        'nd'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < sd.STORE_DEAL_DATE) and'
      ''
      '          (c.PRODUCT_CODE = sd.PRODUCT_CODE) and'
      '          (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      '          (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '      ) as LATE_REAL_QUANTITY_BC,'
      ''
      '      ( select'
      '          Max(sd.STORE_DEAL_DATE - psd.STORE_DEAL_BEGIN_DATE)'
      '        from'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) a' +
        'nd'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < sd.STORE_DEAL_DATE)'
      '      ) as LATE_REAL_DAYS,'
      ''
      '      ( select'
      
        '          (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETT' +
        'ER)'
      '        from'
      '          DEPTS d,'
      '          DEPT_TYPES dt'
      '        where'
      '          (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '          (d.DEPT_CODE = rfml.FIN_STORE_CODE)'
      '      ) as FIN_STORE_IDENTIFIER,'
      ''
      '      rfml.IN_OUT,'
      ''
      '      Cast('
      '        ( select'
      '            Decode(cba.BANK_ACCOUNT_TYPE_CODE, 3,'
      '              ( %GET_PARTNER_NAME[cba.BANK_COMPANY_CODE] ||'
      '                '#39' / '#39' ||'
      
        '                (select Coalesce(c.BIC, To_Char(c.BANK_NO)) from' +
        ' COMPANIES c where (cba.BANK_COMPANY_CODE = c.COMPANY_CODE)) ||'
      '                '#39' / '#39' ||'
      
        '                Nvl2(cba.IBAN, MiscUtils.FormatIBAN(cba.IBAN), c' +
        'ba.ACCOUNT)'
      '              ),'
      '              cba.SHORT_NAME'
      '            )'
      '          from'
      '            COMPANY_BANK_ACCOUNTS cba'
      '          where'
      '            (cba.COMPANY_CODE = rfml.PARTNER_CODE) and'
      '            (cba.ACCOUNT_CODE = rfml.PARTNER_ACCOUNT_CODE)'
      '        ) as Varchar2(250 char)'
      '      ) as PARTNER_ACCOUNT_FULL_NAME,'
      ''
      '      ( fo.BASE_DATE + rfml.MOVEMENT_OFFSET_DAYS -'
      '        Decode(fo.FM_MOVEMENT_OFFSET_TYPE_CODE,'
      '          CommonConsts.fmmotEnd, rfml.MOVEMENT_DURATION_DAYS,'
      '          0'
      '        )'
      '      ) as MOVEMENT_PLAN_BEGIN_DATE,'
      ''
      '      ( fo.BASE_DATE + rfml.MOVEMENT_OFFSET_DAYS +'
      '        Decode(fo.FM_MOVEMENT_OFFSET_TYPE_CODE,'
      
        '          CommonConsts.fmmotBeginning, rfml.MOVEMENT_DURATION_DA' +
        'YS,'
      '          0'
      '        )'
      '      ) as MOVEMENT_PLAN_END_DATE,'
      ''
      '      rfml.MOVEMENT_DURATION_DAYS,'
      ''
      '      ( select'
      '          fmlr.FIN_MODEL_LINE_REASON_ABBREV'
      '        from'
      '          FIN_MODEL_LINE_REASONS fmlr'
      '        where'
      
        '          (fmlr.FIN_MODEL_LINE_REASON_CODE = rfml.FIN_MODEL_LINE' +
        '_REASON_CODE)'
      '      ) as FIN_MODEL_LINE_REASON_ABBREV'
      ''
      '    from'
      '      FIN_ORDERS fo,'
      '      REAL_FIN_MODEL_LINES rfml'
      ''
      '    where'
      '      (fo.FIN_ORDER_CODE = :FIN_ORDER_CODE) and'
      '      (fo.FIN_ORDER_CODE = rfml.FIN_ORDER_CODE) and'
      '      (rfml.ANNUL_EMPLOYEE_CODE is null)'
      ''
      '    order by'
      '      rfml.FIN_MODEL_LINE_TYPE_CODE,'
      '      rfml.FIN_MODEL_LINE_NO'
      '  ) x')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'GET_PARTNER_NAME[cba.BANK_COMPANY_CODE]'
        ParamType = ptInput
        Value = #39'abc'#39
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 208
    Top = 464
    object qryFinOrdersDetailRFML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_BRANCH_CODE'
    end
    object qryFinOrdersDetailRFML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_CODE'
    end
    object qryFinOrdersDetailFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object qryFinOrdersDetailFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object qryFinOrdersDetailFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
    end
    object qryFinOrdersDetailSHOW_NO: TAbmesWideStringField
      FieldName = 'SHOW_NO'
      Size = 141
    end
    object qryFinOrdersDetailLINE_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LINE_QUANTITY_PERCENT'
    end
    object qryFinOrdersDetailPLAN_QTY: TAbmesFloatField
      FieldName = 'PLAN_QTY'
    end
    object qryFinOrdersDetailPLAN_QTY_BC: TAbmesFloatField
      FieldName = 'PLAN_QTY_BC'
    end
    object qryFinOrdersDetailREMAINING_QTY: TAbmesFloatField
      FieldName = 'REMAINING_QTY'
    end
    object qryFinOrdersDetailREMAINING_QTY_BC: TAbmesFloatField
      FieldName = 'REMAINING_QTY_BC'
    end
    object qryFinOrdersDetailLATE_PLAN_QTY: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY'
    end
    object qryFinOrdersDetailLATE_PLAN_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY_BC'
    end
    object qryFinOrdersDetailLATE_PLAN_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY_PERCENT'
    end
    object qryFinOrdersDetailLATE_PLAN_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY_BC_PERCENT'
    end
    object qryFinOrdersDetailLATE_PLAN_DAYS: TAbmesFloatField
      FieldName = 'LATE_PLAN_DAYS'
    end
    object qryFinOrdersDetailLATE_REAL_QTY: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY'
    end
    object qryFinOrdersDetailLATE_REAL_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY_BC'
    end
    object qryFinOrdersDetailLATE_REAL_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY_PERCENT'
    end
    object qryFinOrdersDetailLATE_REAL_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY_BC_PERCENT'
    end
    object qryFinOrdersDetailLATE_REAL_DAYS: TAbmesFloatField
      FieldName = 'LATE_REAL_DAYS'
    end
    object qryFinOrdersDetailFIN_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FIN_STORE_IDENTIFIER'
      Size = 46
    end
    object qryFinOrdersDetailIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object qryFinOrdersDetailPARTNER_ACCOUNT_FULL_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_ACCOUNT_FULL_NAME'
      Size = 250
    end
    object qryFinOrdersDetailMOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'MOVEMENT_PLAN_BEGIN_DATE'
    end
    object qryFinOrdersDetailMOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'MOVEMENT_PLAN_END_DATE'
    end
    object qryFinOrdersDetailMOVEMENT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_DURATION_DAYS'
    end
    object qryFinOrdersDetailFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_REASON_ABBREV'
      Size = 5
    end
  end
  object prvFinOrderBndObject: TDataSetProvider
    DataSet = qryFinOrderBndObject
    Options = [poReadOnly, poUseQuoteChar]
    BeforeUpdateRecord = prvFinOrderBeforeUpdateRecord
    BeforeApplyUpdates = prvFinOrderBeforeApplyUpdates
    AfterApplyUpdates = prvFinOrderAfterApplyUpdates
    Left = 328
    Top = 312
  end
  object qryFinOrderBndObject: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  fo.FIN_ORDER_CODE,'
      ''
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      '  ss.SALE_SHIPMENT_NO,'
      ''
      '  dc.DCD_OBJECT_BRANCH_CODE,'
      '  dc.DCD_OBJECT_CODE,'
      '  dc.DELIVERY_PROJECT_CODE,'
      ''
      '  srg.REQUEST_BRANCH_CODE,'
      '  srg.REQUEST_NO,'
      ''
      '  boio.BUDGET_ORDER_BRANCH_CODE,'
      '  boio.BUDGET_ORDER_CODE,'
      '  boio.BUDGET_ORDER_ITEM_CODE,'
      '  boio.BOI_ORDER_CODE'
      ''
      'from'
      '  FIN_ORDERS fo,'
      '  SALE_SHIPMENTS ss,'
      '  SALES s,'
      '  DELIVERY_CONTRACTS dc,'
      '  DELIVERY_PROJECTS dp,'
      '  SALE_REQUEST_GROUPS srg,'
      '  BOI_ORDERS boio'
      ''
      'where'
      
        '  (fo.BND_PROCESS_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_BRANCH' +
        '_CODE(+)) and'
      '  (fo.BND_PROCESS_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE(+)) and'
      ''
      
        '  (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE(+)) an' +
        'd'
      '  (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE(+)) and'
      ''
      
        '  (fo.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BRANCH' +
        '_CODE(+)) and'
      '  (fo.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE(+)) and'
      ''
      '  (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE(+)) and'
      '  (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE(+)) and'
      '  (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE(+)) and'
      ''
      
        '  (fo.BND_PROCESS_OBJECT_BRANCH_CODE = srg.SALE_GROUP_OBJECT_BRA' +
        'NCH_CODE(+)) and'
      
        '  (fo.BND_PROCESS_OBJECT_CODE = srg.SALE_GROUP_OBJECT_CODE(+)) a' +
        'nd'
      ''
      
        '  (fo.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OBJECT_BRA' +
        'NCH_CODE(+)) and'
      
        '  (fo.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CODE(+)) a' +
        'nd'
      ''
      '  (fo.FIN_ORDER_CODE = :FIN_ORDER_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    AfterProviderStartTransaction = qryFinOrderAfterProviderStartTransaction
    BeforeProviderEndTransaction = qryFinOrderBeforeProviderEndTransaction
    Left = 328
    Top = 360
    object qryFinOrderBndObjectFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object qryFinOrderBndObjectSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object qryFinOrderBndObjectSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object qryFinOrderBndObjectSALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_NO'
    end
    object qryFinOrderBndObjectDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object qryFinOrderBndObjectDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object qryFinOrderBndObjectDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object qryFinOrderBndObjectREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object qryFinOrderBndObjectREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object qryFinOrderBndObjectBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object qryFinOrderBndObjectBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object qryFinOrderBndObjectBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object qryFinOrderBndObjectBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
    end
  end
  object mshLocalMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'fmlt_PRIMARY'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'fmlt_SECONDARY'
        Strings.Strings = (
          '2')
      end>
    Left = 536
    Top = 264
  end
  object prvRealFinModelLinesRegister: TDataSetProvider
    DataSet = qryRealFinModelLinesRegister
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 312
  end
  object qryRealFinModelLinesRegister: TAbmesSQLQuery
    BeforeOpen = qryRealFinModelLinesRegisterBeforeOpen
    AfterClose = qryRealFinModelLinesRegisterAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_FIN_ORDER_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_FIN_ORDER_STATUS_CODE'
        ParamType = ptInput
        Value = '5'
      end
      item
        DataType = ftFloat
        Name = 'MAX_FIN_ORDER_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_MOVEMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_MOVEMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_MOVEMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_MOVEMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXEC_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXEC_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_MODEL_LINE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_MODEL_LINE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_PROCESS_CODE'
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
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
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
        Name = 'BND_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PRODUCT_CODE'
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
        Name = 'BND_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_FIN_ORDER_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_FIN_ORDER_STATUS_CODE'
        ParamType = ptInput
        Value = '5'
      end>
    SQL.Strings = (
      'select'
      '  x.RFML_OBJECT_BRANCH_CODE,'
      '  x.RFML_OBJECT_CODE,'
      ''
      '  x.FIN_ORDER_CODE,'
      '  x.FIN_ORDER_STATUS_CODE,'
      '  x.FIN_PROCESS_ABBREV,'
      '  x.FIN_ORDER_BRANCH_NO,'
      '  x.FIN_ORDER_NO,'
      
        '  (x.FIN_ORDER_BRANCH_NO || '#39'/'#39' || x.FIN_ORDER_NO) as FIN_ORDER_' +
        'IDENTIFIER,'
      '  x.WORK_FINANCIAL_PRODUCT_CODE,'
      '  x.WORK_FINANCIAL_PRODUCT_NAME,'
      '  x.PARTNER_CODE,'
      '  x.PARTNER_SHORT_NAME,'
      '  x.BND_PROCESS_OBJECT_IDENTIFIER,'
      ''
      '  x.FIN_MODEL_LINE_TYPE_CODE,'
      '  x.FIN_MODEL_LINE_NO,'
      '  x.SHOW_NO,'
      '  x.LINE_QUANTITY_PERCENT,'
      '  x.PLAN_QUANTITY as PLAN_QTY,'
      '  x.PLAN_QUANTITY_BC as PLAN_QTY_BC,'
      '  x.REMAINING_QUANTITY as REMAINING_QTY,'
      '  x.REMAINING_QUANTITY_BC as REMAINING_QTY_BC,'
      '  x.LATE_PLAN_QUANTITY as LATE_PLAN_QTY,'
      '  x.LATE_PLAN_QUANTITY_BC as LATE_PLAN_QTY_BC,'
      
        '  (x.LATE_PLAN_QUANTITY / x.PLAN_QUANTITY) as LATE_PLAN_QTY_PERC' +
        'ENT,'
      
        '  (x.LATE_PLAN_QUANTITY_BC / x.PLAN_QUANTITY_BC) as LATE_PLAN_QT' +
        'Y_BC_PERCENT,'
      '  x.LATE_PLAN_DAYS,'
      '  x.LATE_REAL_QUANTITY as LATE_REAL_QTY,'
      '  x.LATE_REAL_QUANTITY_BC as LATE_REAL_QTY_BC,'
      
        '  (x.LATE_REAL_QUANTITY / x.PLAN_QUANTITY) as LATE_REAL_QTY_PERC' +
        'ENT,'
      
        '  (x.LATE_REAL_QUANTITY_BC / x.PLAN_QUANTITY_BC) as LATE_REAL_QT' +
        'Y_BC_PERCENT,'
      '  x.LATE_REAL_DAYS,'
      '  x.REAL_QUANTITY as REAL_QTY,'
      '  x.REAL_QUANTITY_BC as REAL_QTY_BC,'
      '  (x.REAL_QUANTITY / x.PLAN_QUANTITY) as REAL_QTY_PERCENT,'
      
        '  (x.REAL_QUANTITY_BC / x.PLAN_QUANTITY_BC) as REAL_QTY_BC_PERCE' +
        'NT,'
      '  x.MAX_REAL_DATE,'
      '  x.FIN_STORE_CODE,'
      '  x.FIN_STORE_IDENTIFIER,'
      '  x.IN_OUT,'
      '  x.PARTNER_ACCOUNT_CODE,'
      '  x.PARTNER_ACCOUNT_FULL_NAME,'
      '  x.MOVEMENT_PLAN_BEGIN_DATE,'
      '  x.MOVEMENT_PLAN_END_DATE,'
      '  x.MOVEMENT_DURATION_DAYS,'
      '  x.FIN_MODEL_LINE_REASON_ABBREV,'
      '  x.PRIORITY_FULL_NAME,'
      '  x.PRIORITY_COLOR,'
      '  x.PRIORITY_BACKGROUND_COLOR,'
      '  x.DOCUMENT_IDENTIFIER,'
      '  x.DOCUMENT_DATE,'
      '  x.BASE_DATA_CHANGED,'
      '  x.BND_PROCESS_OBJECT_INFO,'
      ''
      '  x.MOVEMENT_OFFSET_DAYS,'
      '  x.FM_MOVEMENT_OFFSET_TYPE_CODE,'
      '  x.BASE_DATE,'
      '  x.NOTES,'
      ''
      '  0 as IS_MODIFIED'
      ''
      'from'
      
        '  ( select /*+ NO_USE_MERGE(fo rfml p) NO_USE_HASH(fo rfml p) US' +
        'E_NL(fo rfml p) INDEX(fo) INDEX(rfml) INDEX(p) */'
      '      rfml.RFML_OBJECT_BRANCH_CODE,'
      '      rfml.RFML_OBJECT_CODE,'
      '      rfml.FIN_ORDER_CODE,'
      ''
      '      %FIN_ORDER_STATUS[fo] as FIN_ORDER_STATUS_CODE,'
      ''
      '      ( select'
      '          p.PROCESS_ABBREV'
      '        from'
      '          PROCESSES p'
      '        where'
      '          (p.PROCESS_CODE = fo.FIN_PROCESS_CODE)'
      '      ) as FIN_PROCESS_ABBREV,'
      ''
      '      ( select'
      '          d.CUSTOM_CODE'
      '        from'
      '          DEPTS d'
      '        where'
      '          (d.DEPT_CODE = fo.FIN_ORDER_BRANCH_CODE)'
      '      ) as FIN_ORDER_BRANCH_NO,'
      '      fo.FIN_ORDER_NO,'
      ''
      '      fo.WORK_FINANCIAL_PRODUCT_CODE,'
      '      ( select'
      '          p.NAME'
      '        from'
      '          PRODUCTS p'
      '        where'
      '          (p.PRODUCT_CODE = fo.WORK_FINANCIAL_PRODUCT_CODE)'
      '      ) as WORK_FINANCIAL_PRODUCT_NAME,'
      ''
      '      fo.PARTNER_CODE,'
      '      ( select'
      '          c.SHORT_NAME'
      '        from'
      '          COMPANIES c'
      '        where'
      '          (c.COMPANY_CODE = fo.PARTNER_CODE)'
      '      ) as PARTNER_SHORT_NAME,'
      ''
      '      ( select'
      '          po.PROCESS_OBJECT_IDENTIFIER'
      '        from'
      '          PROCESS_OBJECTS po'
      '        where'
      
        '          (po.PROCESS_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      '          (po.PROCESS_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE)'
      '      ) as BND_PROCESS_OBJECT_IDENTIFIER,'
      ''
      '      rfml.FIN_MODEL_LINE_TYPE_CODE,'
      '      rfml.FIN_MODEL_LINE_NO,'
      '      ( ( select'
      '            fmlt.FIN_MODEL_LINE_TYPE_ABBREV'
      '          from'
      '            FIN_MODEL_LINE_TYPES fmlt'
      '          where'
      
        '            (fmlt.FIN_MODEL_LINE_TYPE_CODE = rfml.FIN_MODEL_LINE' +
        '_TYPE_CODE)'
      '        ) || '#39'.'#39' ||'
      '        rfml.FIN_MODEL_LINE_NO'
      '      ) as SHOW_NO,'
      ''
      '      rfml.LINE_QUANTITY_PERCENT,'
      ''
      
        '      ( select /*+ NO_USE_MERGE(psd) NO_USE_HASH(psd) USE_NL(psd' +
        ') INDEX(psd) */'
      '          psd.QUANTITY'
      '        from'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE)'
      '      ) as PLAN_QUANTITY,'
      ''
      
        '      ( select /*+ NO_USE_MERGE(psd c) NO_USE_HASH(psd c) USE_NL' +
        '(psd c) INDEX(psd) INDEX(c) */'
      '          psd.QUANTITY * cr.FIXING'
      '        from'
      '          PLANNED_STORE_DEALS psd,'
      '          CURRENCIES c,'
      '          CURRENCY_RATES cr'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (c.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '          (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      
        '          (cr.RATE_DATE = Least(psd.STORE_DEAL_BEGIN_DATE, Conte' +
        'xtDate))'
      '      ) as PLAN_QUANTITY_BC,'
      ''
      
        '      ( select /*+ NO_USE_MERGE(psd) NO_USE_HASH(psd) USE_NL(psd' +
        ') INDEX(psd) */'
      '          (psd.QUANTITY - psd.COMPLETED_QUANTITY)'
      '        from'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE)'
      '      ) as REMAINING_QUANTITY,'
      ''
      
        '      ( select /*+ NO_USE_MERGE(psd c) NO_USE_HASH(psd c) USE_NL' +
        '(psd c) INDEX(psd) INDEX(c) */'
      '          (psd.QUANTITY - psd.COMPLETED_QUANTITY) * tcr.FIXING'
      '        from'
      '          PLANNED_STORE_DEALS psd,'
      '          CURRENCIES c,'
      '          TODAY_CURRENCY_RATES tcr'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (c.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '          (tcr.CURRENCY_CODE = c.CURRENCY_CODE)'
      '      ) as REMAINING_QUANTITY_BC,'
      ''
      
        '      ( select/*+ NO_USE_MERGE(psd) NO_USE_HASH(psd) USE_NL(psd)' +
        ' INDEX(psd) */'
      '          (psd.QUANTITY - psd.COMPLETED_QUANTITY)'
      '        from'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (psd.STORE_DEAL_BEGIN_DATE < ContextDate)'
      '      ) as LATE_PLAN_QUANTITY,'
      ''
      
        '      ( select /*+ NO_USE_MERGE(psd c) NO_USE_HASH(psd c) USE_NL' +
        '(psd c) INDEX(psd) INDEX(c) */'
      '          (psd.QUANTITY - psd.COMPLETED_QUANTITY) * tcr.FIXING'
      '        from'
      '          PLANNED_STORE_DEALS psd,'
      '          CURRENCIES c,'
      '          TODAY_CURRENCY_RATES tcr'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (psd.STORE_DEAL_BEGIN_DATE < ContextDate) and'
      '          (c.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '          (tcr.CURRENCY_CODE = c.CURRENCY_CODE)'
      '      ) as LATE_PLAN_QUANTITY_BC,'
      ''
      
        '      ( select /*+ NO_USE_MERGE(psd) NO_USE_HASH(psd) USE_NL(psd' +
        ') INDEX(psd) */'
      
        '          Coalesce(fo.ANNUL_DATE, fo.CLOSE_DATE, ContextDate) - ' +
        'psd.STORE_DEAL_BEGIN_DATE'
      '        from'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (psd.STORE_DEAL_BEGIN_DATE < ContextDate) and'
      '          (psd.REMAINING_QUANTITY > 0)'
      '      ) as LATE_PLAN_DAYS,'
      ''
      
        '      ( select /*+ NO_USE_MERGE(sd psd) NO_USE_HASH(sd psd) USE_' +
        'NL(sd psd) INDEX(sd) INDEX(psd) */'
      '          Sum(sd.QUANTITY)'
      '        from'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) a' +
        'nd'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < sd.STORE_DEAL_DATE)'
      '      ) as LATE_REAL_QUANTITY,'
      ''
      
        '      ( select /*+ NO_USE_MERGE(sd psd c cr) NO_USE_HASH(sd psd ' +
        'c cr) USE_NL(sd psd c cr) INDEX(sd) INDEX(psd) INDEX(c) INDEX(cr' +
        ') */'
      '          Sum(sd.QUANTITY * cr.FIXING)'
      '        from'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd,'
      '          CURRENCIES c,'
      '          CURRENCY_RATES cr'
      '        where'
      
        '          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) a' +
        'nd'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < sd.STORE_DEAL_DATE) and'
      ''
      '          (c.PRODUCT_CODE = sd.PRODUCT_CODE) and'
      '          (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      '          (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '      ) as LATE_REAL_QUANTITY_BC,'
      ''
      
        '      ( select /*+ NO_USE_MERGE(sd psd) NO_USE_HASH(sd psd) USE_' +
        'NL(sd psd) INDEX(sd) INDEX(psd) */'
      '          Max(sd.STORE_DEAL_DATE - psd.STORE_DEAL_BEGIN_DATE)'
      '        from'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) a' +
        'nd'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null) and'
      '          (psd.STORE_DEAL_BEGIN_DATE < sd.STORE_DEAL_DATE)'
      '      ) as LATE_REAL_DAYS,'
      ''
      
        '      ( select /*+ NO_USE_MERGE(sd psd) NO_USE_HASH(sd psd) USE_' +
        'NL(sd psd) INDEX(sd) INDEX(psd) */'
      '          Sum(sd.QUANTITY)'
      '        from'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) a' +
        'nd'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null)'
      '      ) as REAL_QUANTITY,'
      ''
      
        '      ( select /*+ NO_USE_MERGE(sd psd c cr) NO_USE_HASH(sd psd ' +
        'c cr) USE_NL(sd psd c cr) INDEX(sd) INDEX(psd) INDEX(c) INDEX(cr' +
        ') */'
      '          Sum(sd.QUANTITY * cr.FIXING)'
      '        from'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd,'
      '          CURRENCIES c,'
      '          CURRENCY_RATES cr'
      '        where'
      
        '          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) a' +
        'nd'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '          (c.PRODUCT_CODE = sd.PRODUCT_CODE) and'
      '          (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      '          (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '      ) as REAL_QUANTITY_BC,'
      ''
      
        '      ( select /*+ NO_USE_MERGE(sd psd) NO_USE_HASH(sd psd) USE_' +
        'NL(sd psd) INDEX(sd) INDEX(psd) */'
      '          Max(sd.STORE_DEAL_DATE)'
      '        from'
      '          STORE_DEALS sd,'
      '          PLANNED_STORE_DEALS psd'
      '        where'
      
        '          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_' +
        'BRANCH_CODE) and'
      
        '          (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) a' +
        'nd'
      
        '          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT' +
        '_BRANCH_CODE) and'
      
        '          (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) ' +
        'and'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (psd.ANNUL_EMPLOYEE_CODE is null)'
      '      ) as MAX_REAL_DATE,'
      ''
      '      rfml.FIN_STORE_CODE,'
      '      ( select'
      
        '          (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETT' +
        'ER)'
      '        from'
      '          DEPTS d,'
      '          DEPT_TYPES dt'
      '        where'
      '          (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '          (d.DEPT_CODE = rfml.FIN_STORE_CODE)'
      '      ) as FIN_STORE_IDENTIFIER,'
      ''
      '      rfml.IN_OUT,'
      ''
      '      rfml.PARTNER_ACCOUNT_CODE,'
      '      Cast('
      '        ( select'
      '            Decode(cba.BANK_ACCOUNT_TYPE_CODE, 3,'
      '              ( %GET_PARTNER_NAME[cba.BANK_COMPANY_CODE] ||'
      '                '#39' / '#39' ||'
      
        '                (select Coalesce(c.BIC, To_Char(c.BANK_NO)) from' +
        ' COMPANIES c where (cba.BANK_COMPANY_CODE = c.COMPANY_CODE)) ||'
      '                '#39' / '#39' ||'
      
        '                Nvl2(cba.IBAN, MiscUtils.FormatIBAN(cba.IBAN), c' +
        'ba.ACCOUNT)'
      '              ),'
      '              cba.SHORT_NAME'
      '            )'
      '          from'
      '            COMPANY_BANK_ACCOUNTS cba'
      '          where'
      '            (cba.COMPANY_CODE = rfml.PARTNER_CODE) and'
      '            (cba.ACCOUNT_CODE = rfml.PARTNER_ACCOUNT_CODE)'
      '        ) as Varchar2(250 char)'
      '      ) as PARTNER_ACCOUNT_FULL_NAME,'
      ''
      '      ( fo.BASE_DATE + rfml.MOVEMENT_OFFSET_DAYS -'
      '        Decode(fo.FM_MOVEMENT_OFFSET_TYPE_CODE,'
      '          CommonConsts.fmmotEnd, rfml.MOVEMENT_DURATION_DAYS,'
      '          0'
      '        )'
      '      ) as MOVEMENT_PLAN_BEGIN_DATE,'
      ''
      '      ( fo.BASE_DATE + rfml.MOVEMENT_OFFSET_DAYS +'
      '        Decode(fo.FM_MOVEMENT_OFFSET_TYPE_CODE,'
      
        '          CommonConsts.fmmotBeginning, rfml.MOVEMENT_DURATION_DA' +
        'YS,'
      '          0'
      '        )'
      '      ) as MOVEMENT_PLAN_END_DATE,'
      ''
      '      rfml.MOVEMENT_DURATION_DAYS,'
      ''
      '      ( select'
      '          fmlr.FIN_MODEL_LINE_REASON_ABBREV'
      '        from'
      '          FIN_MODEL_LINE_REASONS fmlr'
      '        where'
      
        '          (fmlr.FIN_MODEL_LINE_REASON_CODE = rfml.FIN_MODEL_LINE' +
        '_REASON_CODE)'
      '      ) as FIN_MODEL_LINE_REASON_ABBREV,'
      ''
      
        '      (p.PRIORITY_NO || '#39'      '#39' || p.PRIORITY_NAME) as PRIORITY' +
        '_FULL_NAME,'
      '      p.PRIORITY_COLOR,'
      '      p.PRIORITY_BACKGROUND_COLOR,'
      ''
      '      rfml.DOCUMENT_IDENTIFIER,'
      '      rfml.DOCUMENT_DATE,'
      ''
      '      fo.BASE_DATA_CHANGED,'
      ''
      '      Cast('
      '        Coalesce('
      '          ( select'
      '              p.NAME'
      '            from'
      '              PRODUCTS p'
      '            where'
      '              (p.PRODUCT_CODE ='
      '                Coalesce('
      '                  ( select'
      '                      s.PRODUCT_CODE'
      '                    from'
      '                      SALE_SHIPMENTS ss,'
      '                      SALES s'
      '                    where'
      
        '                      (ss.SHIPMENT_OBJECT_BRANCH_CODE = fo.BND_P' +
        'ROCESS_OBJECT_BRANCH_CODE) and'
      
        '                      (ss.SHIPMENT_OBJECT_CODE = fo.BND_PROCESS_' +
        'OBJECT_CODE) and'
      ''
      
        '                      (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJEC' +
        'T_BRANCH_CODE) and'
      '                      (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE)'
      '                  ),'
      '                  ( select'
      '                      dp.PRODUCT_CODE'
      '                    from'
      '                      DELIVERY_CONTRACTS dc,'
      '                      DELIVERY_PROJECTS dp'
      '                    where'
      
        '                      (dc.DELIVERY_OBJECT_BRANCH_CODE = fo.BND_P' +
        'ROCESS_OBJECT_BRANCH_CODE) and'
      
        '                      (dc.DELIVERY_OBJECT_CODE = fo.BND_PROCESS_' +
        'OBJECT_CODE) and'
      ''
      
        '                      (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT' +
        '_BRANCH_CODE) and'
      
        '                      (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) ' +
        'and'
      
        '                      (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PR' +
        'OJECT_CODE)'
      '                  )'
      '                )'
      '              )'
      '          ),'
      '          ( select'
      '              ( select'
      '                  p.NAME'
      '                from'
      '                  BUDGET_ORDER_ITEMS boi,'
      '                  PRODUCTS p'
      '                where'
      
        '                  (boi.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_OR' +
        'DER_BRANCH_CODE) and'
      
        '                  (boi.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_COD' +
        'E) and'
      
        '                  (boi.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDE' +
        'R_ITEM_CODE) and'
      '                  (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '              ) || '#39' / '#39' || boio.DESCRIPTION'
      '            from'
      '              BOI_ORDERS boio'
      '            where'
      
        '              (boio.BOI_ORDER_OBJECT_BRANCH_CODE = fo.BND_PROCES' +
        'S_OBJECT_BRANCH_CODE) and'
      
        '              (boio.BOI_ORDER_OBJECT_CODE = fo.BND_PROCESS_OBJEC' +
        'T_CODE)'
      '          ),'
      '          ( select'
      '              fc.SHORT_NAME'
      '            from'
      '              FIN_CLASSES fc'
      '            where'
      '              (fc.FIN_CLASS_CODE = fo.FIN_CLASS_CODE) and'
      '              (fo.FIN_PROCESS_CODE = 207)'
      '          )'
      '        ) as Varchar2(250 char)'
      '      ) as BND_PROCESS_OBJECT_INFO,'
      ''
      '      rfml.MOVEMENT_OFFSET_DAYS,'
      '      fo.FM_MOVEMENT_OFFSET_TYPE_CODE,'
      '      fo.BASE_DATE,'
      ''
      '      fo.NOTES'
      ''
      '    from'
      '      FIN_ORDERS fo,'
      '      REAL_FIN_MODEL_LINES rfml,'
      '      PRIORITIES p'
      ''
      '    where'
      '      (fo.FIN_ORDER_CODE = rfml.FIN_ORDER_CODE) and'
      '      (fo.PRIORITY_CODE = p.PRIORITY_CODE) and'
      ''
      '      (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '      ( (:FIN_ORDER_BRANCH_CODE is null) or'
      
        '        (fo.FIN_ORDER_BRANCH_CODE = :FIN_ORDER_BRANCH_CODE) ) an' +
        'd'
      ''
      '      ( (:FIN_ORDER_NO is null) or'
      '        (fo.FIN_ORDER_NO = :FIN_ORDER_NO) ) and'
      ''
      
        '      ( ( (5 <= :MIN_FIN_ORDER_STATUS_CODE) and (:MAX_FIN_ORDER_' +
        'STATUS_CODE <= 6) and (fo.IS_COMPLETE = 1) ) or'
      '        (:MAX_FIN_ORDER_STATUS_CODE > 4) or'
      '        (fo.IS_COMPLETE = 0)'
      '      ) and'
      ''
      '      ( (:WORK_FINANCIAL_PRODUCT_CODE is null) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            PRODUCT_RELATIONS pr'
      '          where'
      
        '            (pr.ANCESTOR_PRODUCT_CODE = :WORK_FINANCIAL_PRODUCT_' +
        'CODE) and'
      
        '            (pr.DESCENDANT_PRODUCT_CODE = fo.WORK_FINANCIAL_PROD' +
        'UCT_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (:BEGIN_MOVEMENT_DATE is null) or'
      '        ( ( fo.BASE_DATE + rfml.MOVEMENT_OFFSET_DAYS +'
      '            Decode(fo.FM_MOVEMENT_OFFSET_TYPE_CODE,'
      
        '              CommonConsts.fmmotBeginning, rfml.MOVEMENT_DURATIO' +
        'N_DAYS,'
      '              0'
      '            )  -- MOVEMENT_PLAN_END_DATE'
      '          ) >= :BEGIN_MOVEMENT_DATE'
      '        )'
      '      ) and'
      ''
      '      ( (:END_MOVEMENT_DATE is null) or'
      '        ( ( fo.BASE_DATE + rfml.MOVEMENT_OFFSET_DAYS -'
      '            Decode(fo.FM_MOVEMENT_OFFSET_TYPE_CODE,'
      
        '              CommonConsts.fmmotEnd, rfml.MOVEMENT_DURATION_DAYS' +
        ','
      '              0'
      '            )  -- MOVEMENT_PLAN_BEGIN_DATE'
      '          ) <= :END_MOVEMENT_DATE'
      '        )'
      '      ) and'
      ''
      '      ( (:EXEC_DEPT_CODE is null) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            DEPT_RELATIONS dr'
      '          where'
      '            (dr.ANCESTOR_DEPT_CODE = :EXEC_DEPT_CODE) and'
      '            (dr.DESCENDANT_DEPT_CODE = fo.EXEC_DEPT_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_COMPANIES = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_COMPANIES tfc'
      '            where'
      '              (tfc.COMPANY_CODE = fo.PARTNER_CODE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:BEGIN_BASE_DATE is null) or'
      '        (fo.BASE_DATE >= :BEGIN_BASE_DATE) ) and'
      ''
      '      ( (:END_BASE_DATE is null) or'
      '        (fo.BASE_DATE <= :END_BASE_DATE) ) and'
      ''
      '      ( (:HAS_DOCUMENT_IDENTIFIER is null) or'
      '        ( (:HAS_DOCUMENT_IDENTIFIER = 0) and'
      '          (fo.DOCUMENT_IDENTIFIER is null) and'
      '          (rfml.DOCUMENT_IDENTIFIER is null)'
      '        ) or'
      '        ( (:HAS_DOCUMENT_IDENTIFIER = 1) and'
      '          ( ( (fo.DOCUMENT_IDENTIFIER is not null) and'
      '              ( (:DOCUMENT_IDENTIFIER is null) or'
      
        '                (fo.DOCUMENT_IDENTIFIER = :DOCUMENT_IDENTIFIER) ' +
        ') and'
      '              ( (:DOCUMENT_BEGIN_DATE is null) or'
      '                (fo.DOCUMENT_DATE >= :DOCUMENT_BEGIN_DATE) ) and'
      '              ( (:DOCUMENT_END_DATE is null) or'
      '                (fo.DOCUMENT_DATE <= :DOCUMENT_END_DATE) )'
      '            ) or'
      '            ( (rfml.DOCUMENT_IDENTIFIER is not null) and'
      '              ( (:DOCUMENT_IDENTIFIER is null) or'
      
        '                (rfml.DOCUMENT_IDENTIFIER = :DOCUMENT_IDENTIFIER' +
        ') ) and'
      '              ( (:DOCUMENT_BEGIN_DATE is null) or'
      
        '                (rfml.DOCUMENT_DATE >= :DOCUMENT_BEGIN_DATE) ) a' +
        'nd'
      '              ( (:DOCUMENT_END_DATE is null) or'
      '                (rfml.DOCUMENT_DATE <= :DOCUMENT_END_DATE) )'
      '            )'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:IN_OUT is null) or'
      '        (rfml.IN_OUT = :IN_OUT) ) and'
      ''
      '      ( (:FIN_MODEL_LINE_TYPE_CODE is null) or'
      
        '        (rfml.FIN_MODEL_LINE_TYPE_CODE = :FIN_MODEL_LINE_TYPE_CO' +
        'DE) ) and'
      ''
      '      ( (:FIN_STORE_CODE is null) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            DEPT_RELATIONS dr'
      '          where'
      '            (dr.ANCESTOR_DEPT_CODE = :FIN_STORE_CODE) and'
      '            (dr.DESCENDANT_DEPT_CODE = rfml.FIN_STORE_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (:FIN_CLASS_CODE is null) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            FIN_CLASS_RELATIONS fcr'
      '          where'
      '            (fcr.ANCESTOR_FIN_CLASS_CODE = :FIN_CLASS_CODE) and'
      '            (fcr.DESCENDANT_FIN_CLASS_CODE = fo.FIN_CLASS_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (:FIN_PROCESS_CODE is null) or'
      '        ( (fo.FIN_PROCESS_CODE = :FIN_PROCESS_CODE) and'
      ''
      
        '          ( (fo.FIN_PROCESS_CODE not in (201, 202, 203, 204, 205' +
        ', 206)) or'
      ''
      
        '            ( (fo.FIN_PROCESS_CODE in (201, 204)) and  -- prodaj' +
        'ba'
      '              exists('
      '                select'
      '                  1'
      '                from'
      '                  SALE_SHIPMENTS ss,'
      '                  SALES s'
      '                where'
      
        '                  (ss.SHIPMENT_OBJECT_BRANCH_CODE = fo.BND_PROCE' +
        'SS_OBJECT_BRANCH_CODE) and'
      
        '                  (ss.SHIPMENT_OBJECT_CODE = fo.BND_PROCESS_OBJE' +
        'CT_CODE) and'
      ''
      
        '                  (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BR' +
        'ANCH_CODE) and'
      '                  (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '                  ( (:SALE_BRANCH_CODE is null) or'
      '                    (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE)'
      '                  ) and'
      ''
      '                  ( (:SALE_NO is null) or'
      '                    (s.SALE_NO = :SALE_NO)'
      '                  ) and'
      ''
      '                  ( (:SALE_SHIPMENT_NO is null) or'
      '                    (ss.SALE_SHIPMENT_NO = :SALE_SHIPMENT_NO)'
      '                  )'
      '              )'
      '            ) or'
      ''
      '            ( (fo.FIN_PROCESS_CODE = 202) and  -- grupa pp'
      '              exists('
      '                select'
      '                  1'
      '                from'
      '                  SALE_REQUEST_GROUPS srg'
      '                where'
      
        '                  (srg.SALE_GROUP_OBJECT_BRANCH_CODE = fo.BND_PR' +
        'OCESS_OBJECT_BRANCH_CODE) and'
      
        '                  (srg.SALE_GROUP_OBJECT_CODE = fo.BND_PROCESS_O' +
        'BJECT_CODE) and'
      ''
      '                  ( (:REQUEST_BRANCH_CODE is null) or'
      
        '                    (srg.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_C' +
        'ODE)'
      '                  ) and'
      ''
      '                  ( (:REQUEST_NO is null) or'
      '                    (srg.REQUEST_NO = :REQUEST_NO)'
      '                  )'
      '              )'
      '            ) or'
      ''
      
        '            ( (fo.FIN_PROCESS_CODE in (203, 205)) and  -- dostav' +
        'ka na UOb/FOb'
      '              exists('
      '                select'
      '                  1'
      '                from'
      '                  DELIVERY_CONTRACTS dc,'
      '                  DELIVERY_PROJECTS dp,'
      '                  DEFICIT_COVER_DECISIONS dcd'
      '                where'
      
        '                  (dc.DELIVERY_OBJECT_BRANCH_CODE = fo.BND_PROCE' +
        'SS_OBJECT_BRANCH_CODE) and'
      
        '                  (dc.DELIVERY_OBJECT_CODE = fo.BND_PROCESS_OBJE' +
        'CT_CODE) and'
      ''
      
        '                  (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRA' +
        'NCH_CODE) and'
      '                  (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      
        '                  (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJEC' +
        'T_CODE) and'
      ''
      
        '                  (dc.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BR' +
        'ANCH_CODE) and'
      '                  (dc.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      ''
      '                  ( (:DCD_BRANCH_CODE is null) or'
      '                    (dcd.DCD_BRANCH_CODE = :DCD_BRANCH_CODE)'
      '                  ) and'
      ''
      '                  ( (:DCD_CODE is null) or'
      '                    (dcd.DCD_CODE = :DCD_CODE)'
      '                  ) and'
      ''
      '                  ( (:DELIVERY_PROJECT_CODE is null) or'
      
        '                    (dc.DELIVERY_PROJECT_CODE = :DELIVERY_PROJEC' +
        'T_CODE)'
      '                  ) and'
      ''
      '                  ( (:BND_PRODUCT_CODE is null) or'
      '                    exists('
      '                      select'
      '                        1'
      '                      from'
      '                        PRODUCT_RELATIONS pr'
      '                      where'
      
        '                        (pr.ANCESTOR_PRODUCT_CODE = :BND_PRODUCT' +
        '_CODE) and'
      
        '                        (pr.DESCENDANT_PRODUCT_CODE = dp.PRODUCT' +
        '_CODE)'
      '                    )'
      '                  )'
      '              )'
      '            ) or'
      ''
      
        '            ( (fo.FIN_PROCESS_CODE = 206) and  -- dostavka na pr' +
        'oces'
      '              exists('
      '                select'
      '                  1'
      '                from'
      '                  BOI_ORDERS boio,'
      '                  BUDGET_ORDER_ITEMS boi,'
      '                  BUDGET_ORDERS bo'
      '                where'
      
        '                  (boio.BOI_ORDER_OBJECT_BRANCH_CODE = fo.BND_PR' +
        'OCESS_OBJECT_BRANCH_CODE) and'
      
        '                  (boio.BOI_ORDER_OBJECT_CODE = fo.BND_PROCESS_O' +
        'BJECT_CODE) and'
      ''
      
        '                  (boi.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_OR' +
        'DER_BRANCH_CODE) and'
      
        '                  (boi.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_COD' +
        'E) and'
      
        '                  (boi.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDE' +
        'R_ITEM_CODE) and'
      ''
      
        '                  (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDE' +
        'R_BRANCH_CODE) and'
      
        '                  (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE)' +
        ' and'
      ''
      '                  ( (:BUDGET_ORDER_BRANCH_CODE is null) or'
      
        '                    (boio.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORD' +
        'ER_BRANCH_CODE)'
      '                  ) and'
      ''
      '                  ( (:BUDGET_ORDER_CODE is null) or'
      
        '                    (boio.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE' +
        ')'
      '                  ) and'
      ''
      '                  ( (:BUDGET_ORDER_ITEM_CODE is null) or'
      
        '                    (boio.BUDGET_ORDER_ITEM_CODE = :BUDGET_ORDER' +
        '_ITEM_CODE)'
      '                  ) and'
      ''
      '                  ( (:BOI_ORDER_CODE is null) or'
      '                    (boio.BOI_ORDER_CODE = :BOI_ORDER_CODE)'
      '                  ) and'
      ''
      '                  ( (:BND_PRODUCT_CODE is null) or'
      '                    exists('
      '                      select'
      '                        1'
      '                      from'
      '                        PRODUCT_RELATIONS pr'
      '                      where'
      
        '                        (pr.ANCESTOR_PRODUCT_CODE = :BND_PRODUCT' +
        '_CODE) and'
      
        '                        (pr.DESCENDANT_PRODUCT_CODE = bo.PRODUCT' +
        '_CODE)'
      '                    )'
      '                  ) and'
      ''
      '                  ( (:BND_BUDGET_PRODUCT_CODE is null) or'
      '                    exists('
      '                      select'
      '                        1'
      '                      from'
      '                        PRODUCT_RELATIONS pr'
      '                      where'
      
        '                        (pr.ANCESTOR_PRODUCT_CODE = :BND_BUDGET_' +
        'PRODUCT_CODE) and'
      
        '                        (pr.DESCENDANT_PRODUCT_CODE = boi.BUDGET' +
        '_PRODUCT_CODE)'
      '                    )'
      '                  )'
      '              )'
      '            )'
      '          )'
      '        )'
      '      )'
      '  ) x'
      ''
      'where'
      
        '  (x.FIN_ORDER_STATUS_CODE between :MIN_FIN_ORDER_STATUS_CODE an' +
        'd :MAX_FIN_ORDER_STATUS_CODE)'
      ''
      'order by'
      '  x.MOVEMENT_PLAN_BEGIN_DATE,'
      '  x.MOVEMENT_PLAN_END_DATE,'
      '  x.FIN_ORDER_BRANCH_NO,'
      '  x.FIN_ORDER_NO,'
      '  x.FIN_MODEL_LINE_TYPE_CODE,'
      '  x.FIN_MODEL_LINE_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'FIN_ORDER_STATUS[fo]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'GET_PARTNER_NAME[cba.BANK_COMPANY_CODE]'
        ParamType = ptInput
        Value = #39'abc'#39
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end>
    TableName = 'RFML_FOR_EDIT'
    Left = 464
    Top = 360
    object qryRealFinModelLinesRegisterRFML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInKey]
    end
    object qryRealFinModelLinesRegisterRFML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_CODE'
      ProviderFlags = [pfInKey]
    end
    object qryRealFinModelLinesRegisterFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterFIN_ORDER_STATUS_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_STATUS_CODE'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterFIN_PROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_PROCESS_ABBREV'
      ProviderFlags = []
      Size = 100
    end
    object qryRealFinModelLinesRegisterFIN_ORDER_BRANCH_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_BRANCH_NO'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterFIN_ORDER_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_NO'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterFIN_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FIN_ORDER_IDENTIFIER'
      ProviderFlags = []
      Size = 81
    end
    object qryRealFinModelLinesRegisterWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'WORK_FINANCIAL_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterWORK_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'WORK_FINANCIAL_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryRealFinModelLinesRegisterPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterPARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_SHORT_NAME'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
      ProviderFlags = []
      Size = 100
    end
    object qryRealFinModelLinesRegisterFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterSHOW_NO: TAbmesWideStringField
      FieldName = 'SHOW_NO'
      ProviderFlags = []
      Size = 141
    end
    object qryRealFinModelLinesRegisterLINE_QUANTITY_PERCENT: TAbmesFloatField
      FieldName = 'LINE_QUANTITY_PERCENT'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterPLAN_QTY: TAbmesFloatField
      FieldName = 'PLAN_QTY'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterPLAN_QTY_BC: TAbmesFloatField
      FieldName = 'PLAN_QTY_BC'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterREMAINING_QTY: TAbmesFloatField
      FieldName = 'REMAINING_QTY'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterREMAINING_QTY_BC: TAbmesFloatField
      FieldName = 'REMAINING_QTY_BC'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterLATE_PLAN_QTY: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterLATE_PLAN_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY_BC'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterLATE_PLAN_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY_PERCENT'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterLATE_PLAN_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY_BC_PERCENT'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterLATE_PLAN_DAYS: TAbmesFloatField
      FieldName = 'LATE_PLAN_DAYS'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterLATE_REAL_QTY: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterLATE_REAL_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY_BC'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterLATE_REAL_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY_PERCENT'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterLATE_REAL_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY_BC_PERCENT'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterLATE_REAL_DAYS: TAbmesFloatField
      FieldName = 'LATE_REAL_DAYS'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterREAL_QTY: TAbmesFloatField
      FieldName = 'REAL_QTY'
    end
    object qryRealFinModelLinesRegisterREAL_QTY_BC: TAbmesFloatField
      FieldName = 'REAL_QTY_BC'
    end
    object qryRealFinModelLinesRegisterREAL_QTY_PERCENT: TAbmesFloatField
      FieldName = 'REAL_QTY_PERCENT'
    end
    object qryRealFinModelLinesRegisterREAL_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'REAL_QTY_BC_PERCENT'
    end
    object qryRealFinModelLinesRegisterMAX_REAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAX_REAL_DATE'
    end
    object qryRealFinModelLinesRegisterFIN_STORE_CODE: TAbmesFloatField
      FieldName = 'FIN_STORE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryRealFinModelLinesRegisterFIN_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FIN_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryRealFinModelLinesRegisterIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterPARTNER_ACCOUNT_CODE: TAbmesFloatField
      FieldName = 'PARTNER_ACCOUNT_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qryRealFinModelLinesRegisterPARTNER_ACCOUNT_FULL_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_ACCOUNT_FULL_NAME'
      ProviderFlags = []
      Size = 250
    end
    object qryRealFinModelLinesRegisterMOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'MOVEMENT_PLAN_BEGIN_DATE'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterMOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'MOVEMENT_PLAN_END_DATE'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterMOVEMENT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_DURATION_DAYS'
      ProviderFlags = [pfInUpdate]
    end
    object qryRealFinModelLinesRegisterFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_REASON_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryRealFinModelLinesRegisterPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      ProviderFlags = []
      Size = 96
    end
    object qryRealFinModelLinesRegisterPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterDOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DOCUMENT_IDENTIFIER'
      ProviderFlags = []
      Size = 50
    end
    object qryRealFinModelLinesRegisterDOCUMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'DOCUMENT_DATE'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterBASE_DATA_CHANGED: TAbmesFloatField
      FieldName = 'BASE_DATA_CHANGED'
      ProviderFlags = []
      Required = True
    end
    object qryRealFinModelLinesRegisterBND_PROCESS_OBJECT_INFO: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_INFO'
      ProviderFlags = []
      Size = 250
    end
    object qryRealFinModelLinesRegisterMOVEMENT_OFFSET_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_OFFSET_DAYS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryRealFinModelLinesRegisterFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField
      FieldName = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
      ProviderFlags = []
    end
    object qryRealFinModelLinesRegisterBASE_DATE: TAbmesSQLTimeStampField
      FieldName = 'BASE_DATE'
      ProviderFlags = []
      Required = True
    end
    object qryRealFinModelLinesRegisterNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryRealFinModelLinesRegisterIS_MODIFIED: TAbmesFloatField
      FieldName = 'IS_MODIFIED'
      ProviderFlags = []
    end
  end
  object prvSpecFinModels: TDataSetProvider
    DataSet = qrySpecFinModels
    Options = [poReadOnly, poUseQuoteChar]
    Left = 208
    Top = 184
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
        DataType = ftDateTime
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXEC_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXEC_DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sfm.SPEC_FIN_MODEL_CODE,'
      '  sfm.FINANCIAL_PRODUCT_CODE,'
      '  sfm.SPEC_FIN_MODEL_NAME,'
      '  sfm.FM_MOVEMENT_OFFSET_TYPE_CODE'
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
      '  (:BEGIN_DATE between prp.BEGIN_DATE and prp.END_DATE) and'
      '  (:END_DATE between prp.BEGIN_DATE and prp.END_DATE) and'
      '  (sfm.AUTHORIZE_EMPLOYEE_CODE is not null) and'
      ''
      '  ( (:EXEC_DEPT_CODE is null) or'
      '    (sfm.EXEC_DEPT_CODE is null) or'
      '    (sfm.EXEC_DEPT_CODE = :EXEC_DEPT_CODE)'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 208
    Top = 232
    object qrySpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
    end
    object qrySpecFinModelsFINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FINANCIAL_PRODUCT_CODE'
    end
    object qrySpecFinModelsSPEC_FIN_MODEL_NAME: TAbmesWideStringField
      FieldName = 'SPEC_FIN_MODEL_NAME'
      Size = 100
    end
    object qrySpecFinModelsFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField
      FieldName = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
      Required = True
    end
  end
  object qrySpecFinModelLines: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_FIN_MODEL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sfml.SPEC_FIN_MODEL_LINE_CODE,'
      '  sfml.SPEC_FIN_MODEL_CODE,'
      ''
      '  sfml.FIN_MODEL_LINE_TYPE_CODE,'
      '  sfml.FIN_MODEL_LINE_NO,'
      '  sfml.LINE_QUANTITY_PERCENT,'
      '  sfml.MOVEMENT_OFFSET_DAYS,'
      '  sfml.MOVEMENT_DURATION_DAYS,'
      '  sfml.FIN_STORE_CODE,'
      '  sfml.PARTNER_ACCOUNT_CODE,'
      '  sfml.FIN_MODEL_LINE_REASON_CODE'
      ''
      'from'
      '  SPEC_FIN_MODEL_LINES sfml'
      ''
      'where'
      '  (sfml.SPEC_FIN_MODEL_CODE = :SPEC_FIN_MODEL_CODE)'
      ''
      'order by'
      '  sfml.FIN_MODEL_LINE_TYPE_CODE,'
      '  sfml.FIN_MODEL_LINE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 328
    Top = 232
    object qrySpecFinModelLinesSPEC_FIN_MODEL_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_LINE_CODE'
    end
    object qrySpecFinModelLinesSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
    end
    object qrySpecFinModelLinesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object qrySpecFinModelLinesFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
    end
    object qrySpecFinModelLinesLINE_QUANTITY_PERCENT: TAbmesFloatField
      FieldName = 'LINE_QUANTITY_PERCENT'
    end
    object qrySpecFinModelLinesMOVEMENT_OFFSET_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_OFFSET_DAYS'
    end
    object qrySpecFinModelLinesMOVEMENT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_DURATION_DAYS'
    end
    object qrySpecFinModelLinesFIN_STORE_CODE: TAbmesFloatField
      FieldName = 'FIN_STORE_CODE'
    end
    object qrySpecFinModelLinesPARTNER_ACCOUNT_CODE: TAbmesFloatField
      FieldName = 'PARTNER_ACCOUNT_CODE'
    end
    object qrySpecFinModelLinesFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_REASON_CODE'
    end
  end
  object prvSpecFinModelLines: TDataSetProvider
    DataSet = qrySpecFinModelLines
    Options = [poReadOnly, poUseQuoteChar]
    Left = 328
    Top = 184
  end
  object prvFinancialRelationsGraph: TDataSetProvider
    DataSet = qryFinancialRelationsGraph
    Options = [poReadOnly, poUseQuoteChar]
    OnGetData = prvFinancialRelationsGraphGetData
    AfterGetRecords = prvFinancialRelationsGraphAfterGetRecords
    Left = 632
    Top = 312
  end
  object qryFinancialRelationsGraph: TAbmesSQLQuery
    BeforeOpen = qryFinancialRelationsGraphBeforeOpen
    AfterClose = qryFinancialRelationsAfterClose
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
        Name = 'FIN_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
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
      end>
    SQL.Strings = (
      'select'
      '  x.DATE_UNIT_FIRST_DATE,'
      '  x.DATE_UNIT_LAST_DATE,'
      '  x.YEAR_DATE_UNIT_NO,'
      '  x.DATE_UNIT_WORKDAYS,'
      
        '  (DateTimeUtils.TimeUnitsBetween(:BEGIN_DATE, x.DATE_UNIT_FIRST' +
        '_DATE, :DATE_UNIT_CODE) + 1) as DATE_UNIT_NO,'
      ''
      '  case'
      '    when (ContextDate > x.DATE_UNIT_LAST_DATE) then'
      '      -1'
      '    when (ContextDate < x.DATE_UNIT_FIRST_DATE) then'
      '      1'
      '    else'
      '      0'
      '  end as DATE_UNIT_STATUS,'
      ''
      '  Sum(x.OTCH_TENSION) as OTCH_TENSION,'
      '  Sum(x.PLAN_TENSION) as PLAN_TENSION,'
      ''
      
        '  Sum(Decode(Sign(x.OTCH_TENSION), 1, x.OTCH_TENSION)) as PARTNE' +
        'R_OTCH_TENSION,'
      
        '  Sum(Decode(Sign(x.OTCH_TENSION), -1, x.OTCH_TENSION)) as OUR_O' +
        'TCH_TENSION,'
      ''
      
        '  Sum(Nvl2(x.DOCUMENT_DATE, Decode(Sign(x.PLAN_TENSION), 1, x.PL' +
        'AN_TENSION), null)) as PARTNER_PLAN_REAL_TENSION,'
      
        '  Sum(Nvl2(x.DOCUMENT_DATE, Decode(Sign(x.PLAN_TENSION), -1, x.P' +
        'LAN_TENSION), null)) as OUR_PLAN_REAL_TENSION,'
      ''
      
        '  Sum(Nvl2(x.DOCUMENT_DATE, null, Decode(Sign(x.PLAN_TENSION), 1' +
        ', x.PLAN_TENSION))) as PARTNER_PLAN_POTENTIAL_TENSION,'
      
        '  Sum(Nvl2(x.DOCUMENT_DATE, null, Decode(Sign(x.PLAN_TENSION), -' +
        '1, x.PLAN_TENSION))) as OUR_PLAN_POTENTIAL_TENSION'
      ''
      'from'
      '  ( select'
      '      txd.THE_FIRST_DATE as DATE_UNIT_FIRST_DATE,'
      '      txd.THE_LAST_DATE as DATE_UNIT_LAST_DATE,'
      '      txd.%YEAR_X_NO as YEAR_DATE_UNIT_NO,'
      '      txd.WORKDAYS as DATE_UNIT_WORKDAYS,'
      ''
      '      fo.DOCUMENT_DATE,'
      ''
      '      -- otchet'
      '      ( fo.IN_OUT * (-1) *'
      '        Decode(Sign(txd.THE_FIRST_DATE - ContextDate),'
      '          1, null,'
      '          ( Decode(Sign(fo.BASE_DATE - txd.THE_LAST_DATE),'
      '              1, 0,'
      '              ( fo.BASE_QUANTITY *'
      '                ( select'
      '                    cr.FIXING'
      '                  from'
      '                    CURRENCIES c,'
      '                    CURRENCY_RATES cr'
      '                  where'
      
        '                    (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUCT_' +
        'CODE) and'
      '                    (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      
        '                    (cr.RATE_DATE = Least(txd.THE_LAST_DATE, Con' +
        'textDate))'
      '                )'
      '              )'
      '            ) -'
      ''
      '            Least('
      '              Coalesce('
      '                ( select'
      '                    Sum('
      '                      sd.QUANTITY *'
      '                      ( select'
      '                          cr.FIXING'
      '                        from'
      '                          CURRENCIES c,'
      '                          CURRENCY_RATES cr'
      '                        where'
      '                          (c.PRODUCT_CODE = sd.PRODUCT_CODE) and'
      
        '                          (c.CURRENCY_CODE = cr.CURRENCY_CODE) a' +
        'nd'
      '                          (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '                      )'
      '                    )'
      '                  from'
      '                    REAL_FIN_MODEL_LINES rfml,'
      '                    STORE_DEALS sd'
      '                  where'
      
        '                    (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) an' +
        'd'
      '                    (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      
        '                    (rfml.FIN_MODEL_LINE_TYPE_CODE = %fmlt_PRIMA' +
        'RY) and'
      
        '                    (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RF' +
        'ML_OBJECT_BRANCH_CODE) and'
      
        '                    (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJE' +
        'CT_CODE) and'
      '                    (sd.STORNO_EMPLOYEE_CODE is null) and'
      '                    (sd.STORE_DEAL_DATE <= txd.THE_LAST_DATE)'
      '                ),'
      '                0'
      '              ),'
      '              Coalesce('
      '                ( fo.BASE_QUANTITY *'
      '                  ( select'
      '                      cr.FIXING'
      '                    from'
      '                      CURRENCIES c,'
      '                      CURRENCY_RATES cr'
      '                    where'
      
        '                      (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUC' +
        'T_CODE) and'
      '                      (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      
        '                      (cr.RATE_DATE = Least(txd.THE_LAST_DATE, C' +
        'ontextDate))'
      '                  )'
      '                ),'
      '                0'
      '              )'
      '            )'
      '          )'
      '        )'
      '      ) as OTCH_TENSION,'
      ''
      '      -- plan'
      '      ( fo.IN_OUT * (-1) *'
      '        Decode(Sign(ContextDate - txd.THE_LAST_DATE),'
      '          1, null,'
      '          ( Decode(Sign(fo.BASE_DATE - txd.THE_LAST_DATE),'
      '              1, 0,'
      '              ( fo.BASE_QUANTITY *'
      '                ( select'
      '                    cr.FIXING'
      '                  from'
      '                    CURRENCIES c,'
      '                    CURRENCY_RATES cr'
      '                  where'
      
        '                    (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUCT_' +
        'CODE) and'
      '                    (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      
        '                    (cr.RATE_DATE = Least(txd.THE_LAST_DATE, Con' +
        'textDate))'
      '                )'
      '              )'
      '            ) -'
      ''
      '            Least('
      '              ( Coalesce('
      '                  ( select'
      '                      Sum('
      '                        psd.REMAINING_QUANTITY *'
      '                        ( select'
      '                            cr.FIXING'
      '                          from'
      '                            CURRENCIES c,'
      '                            CURRENCY_RATES cr'
      '                          where'
      
        '                            (c.PRODUCT_CODE = psd.PRODUCT_CODE) ' +
        'and'
      
        '                            (c.CURRENCY_CODE = cr.CURRENCY_CODE)' +
        ' and'
      
        '                            (cr.RATE_DATE = Least(txd.THE_LAST_D' +
        'ATE, ContextDate))'
      '                        )'
      '                      )'
      '                    from'
      '                      REAL_FIN_MODEL_LINES rfml,'
      '                      PLANNED_STORE_DEALS psd'
      '                    where'
      
        '                      (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) ' +
        'and'
      '                      (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      
        '                      (rfml.FIN_MODEL_LINE_TYPE_CODE = %fmlt_PRI' +
        'MARY) and'
      
        '                      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml' +
        '.RFML_OBJECT_BRANCH_CODE) and'
      
        '                      (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_O' +
        'BJECT_CODE) and'
      
        '                      (Greatest(psd.STORE_DEAL_BEGIN_DATE, Conte' +
        'xtDate) <= txd.THE_LAST_DATE)'
      '                  ),'
      '                  0'
      '                ) +            '
      '                Coalesce('
      '                  ( select'
      '                      Sum('
      '                        sd.QUANTITY *'
      '                        ( select'
      '                            cr.FIXING'
      '                          from'
      '                            CURRENCIES c,'
      '                            CURRENCY_RATES cr'
      '                          where'
      
        '                            (c.PRODUCT_CODE = sd.PRODUCT_CODE) a' +
        'nd'
      
        '                            (c.CURRENCY_CODE = cr.CURRENCY_CODE)' +
        ' and'
      '                            (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '                        )'
      '                      )'
      '                    from'
      '                      REAL_FIN_MODEL_LINES rfml,              '
      '                      STORE_DEALS sd'
      '                    where          '
      
        '                      (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) ' +
        'and'
      '                      (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      
        '                      (rfml.FIN_MODEL_LINE_TYPE_CODE = %fmlt_PRI' +
        'MARY) and'
      
        '                      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.' +
        'RFML_OBJECT_BRANCH_CODE) and'
      
        '                      (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OB' +
        'JECT_CODE) and'
      '                      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '                      (sd.STORE_DEAL_DATE <= txd.THE_LAST_DATE)'
      '                  ),'
      '                  0'
      '                )'
      '              ),'
      '              Coalesce('
      '                ( fo.BASE_QUANTITY *'
      '                  ( select'
      '                      cr.FIXING'
      '                    from'
      '                      CURRENCIES c,'
      '                      CURRENCY_RATES cr'
      '                    where'
      
        '                      (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUC' +
        'T_CODE) and'
      '                      (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      
        '                      (cr.RATE_DATE = Least(txd.THE_LAST_DATE, C' +
        'ontextDate))'
      '                  )'
      '                ),'
      '                0'
      '              )'
      '            )'
      '          )'
      '        )'
      '      ) as PLAN_TENSION'
      ''
      '    from'
      '      %THE_X_DATES txd,'
      '      FIN_ORDERS fo'
      ''
      '    where'
      '      (txd.THE_FIRST_DATE between :BEGIN_DATE and :END_DATE) and'
      ''
      '      ( (fo.CLOSE_DATE is null) or'
      '        (fo.CLOSE_DATE > txd.THE_LAST_DATE)'
      '      ) and'
      ''
      '      (fo.ANNUL_EMPLOYEE_CODE is null) and'
      '      (fo.PARTNER_CODE <> 0) and'
      ''
      
        '      (%FIN_ORDER_STATUS[fo] between :MIN_STATUS_CODE and :MAX_S' +
        'TATUS_CODE) and'
      ''
      '      ( (:FIN_PROCESS_CODE is null) or'
      '        (fo.FIN_PROCESS_CODE = :FIN_PROCESS_CODE) )  and'
      ''
      '      ( (:HAS_DOCUMENT_IDENTIFIER is null) or'
      '        ( (:HAS_DOCUMENT_IDENTIFIER = 0) and'
      '          (fo.DOCUMENT_IDENTIFIER is null) and'
      '          not exists('
      '            select'
      '              1'
      '            from'
      '              REAL_FIN_MODEL_LINES rfml'
      '            where'
      '              (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      '              (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '              (rfml.DOCUMENT_IDENTIFIER is not null)'
      '          )'
      '        ) or'
      '        ( (:HAS_DOCUMENT_IDENTIFIER = 1) and'
      '          ( (fo.DOCUMENT_IDENTIFIER is not null) or'
      '            exists('
      '              select'
      '                1'
      '              from'
      '                REAL_FIN_MODEL_LINES rfml'
      '              where'
      '                (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      '                (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '                (rfml.DOCUMENT_IDENTIFIER is not null)'
      '            )'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_COMPANIES = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_COMPANIES tfc'
      '            where'
      '              (tfc.COMPANY_CODE = fo.PARTNER_CODE)'
      '          )'
      '        )'
      '      )'
      ''
      ''
      '    union all'
      ''
      ''
      '    select'
      '      txd.THE_FIRST_DATE as DATE_UNIT_FIRST_DATE,'
      '      txd.THE_LAST_DATE as DATE_UNIT_LAST_DATE,'
      '      txd.%YEAR_X_NO as YEAR_DATE_UNIT_NO,'
      '      txd.WORKDAYS as DATE_UNIT_WORKDAYS,'
      ''
      '      To_Date(null) as DOCUMENT_DATE,'
      '      To_Number(null) as OTCH_TENSION,'
      '      To_Number(null) as PLAN_TENSION'
      ''
      '    from'
      '      %THE_X_DATES txd'
      ''
      '    where'
      '      (txd.THE_FIRST_DATE between :BEGIN_DATE and :END_DATE) '
      '  ) x'
      ''
      'group by'
      '  x.DATE_UNIT_FIRST_DATE,'
      '  x.DATE_UNIT_LAST_DATE,'
      '  x.YEAR_DATE_UNIT_NO,'
      '  x.DATE_UNIT_WORKDAYS'
      ''
      'order by'
      '  x.DATE_UNIT_FIRST_DATE')
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
        Name = 'fmlt_PRIMARY'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATES'
        ParamType = ptInput
        Value = 'THE_MONTH_DATES'
      end
      item
        DataType = ftWideString
        Name = 'FIN_ORDER_STATUS[fo]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 632
    Top = 360
    object qryFinancialRelationsGraphDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField
      FieldName = 'DATE_UNIT_FIRST_DATE'
    end
    object qryFinancialRelationsGraphDATE_UNIT_LAST_DATE: TAbmesSQLTimeStampField
      FieldName = 'DATE_UNIT_LAST_DATE'
    end
    object qryFinancialRelationsGraphYEAR_DATE_UNIT_NO: TAbmesFloatField
      FieldName = 'YEAR_DATE_UNIT_NO'
    end
    object qryFinancialRelationsGraphDATE_UNIT_WORKDAYS: TAbmesFloatField
      FieldName = 'DATE_UNIT_WORKDAYS'
    end
    object qryFinancialRelationsGraphDATE_UNIT_NO: TAbmesFloatField
      FieldName = 'DATE_UNIT_NO'
    end
    object qryFinancialRelationsGraphDATE_UNIT_STATUS: TAbmesFloatField
      FieldName = 'DATE_UNIT_STATUS'
    end
    object qryFinancialRelationsGraphOTCH_TENSION: TAbmesFloatField
      FieldName = 'OTCH_TENSION'
    end
    object qryFinancialRelationsGraphPLAN_TENSION: TAbmesFloatField
      FieldName = 'PLAN_TENSION'
    end
    object qryFinancialRelationsGraphPARTNER_OTCH_TENSION: TAbmesFloatField
      FieldName = 'PARTNER_OTCH_TENSION'
    end
    object qryFinancialRelationsGraphOUR_OTCH_TENSION: TAbmesFloatField
      FieldName = 'OUR_OTCH_TENSION'
    end
    object qryFinancialRelationsGraphPARTNER_PLAN_REAL_TENSION: TAbmesFloatField
      FieldName = 'PARTNER_PLAN_REAL_TENSION'
    end
    object qryFinancialRelationsGraphOUR_PLAN_REAL_TENSION: TAbmesFloatField
      FieldName = 'OUR_PLAN_REAL_TENSION'
    end
    object qryFinancialRelationsGraphPARTNER_PLAN_POTENTIAL_TENSION: TAbmesFloatField
      FieldName = 'PARTNER_PLAN_POTENTIAL_TENSION'
    end
    object qryFinancialRelationsGraphOUR_PLAN_POTENTIAL_TENSION: TAbmesFloatField
      FieldName = 'OUR_PLAN_POTENTIAL_TENSION'
    end
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
    Left = 464
    Top = 416
    object qryGetPeriodFieldNamesTABLE_NAME: TAbmesWideStringField
      FieldName = 'TABLE_NAME'
      Size = 50
    end
    object qryGetPeriodFieldNamesYEAR_UNIT_NO_NAME: TAbmesWideStringField
      FieldName = 'YEAR_UNIT_NO_NAME'
      Size = 50
    end
  end
  object qryFinancialRelationsTable: TAbmesSQLQuery
    BeforeOpen = qryFinancialRelationsTableBeforeOpen
    AfterClose = qryFinancialRelationsAfterClose
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
        Name = 'FIN_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
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
      end>
    SQL.Strings = (
      'select'
      '  x.DATE_UNIT_FIRST_DATE,'
      
        '  (DateTimeUtils.TimeUnitsBetween(:BEGIN_DATE, x.DATE_UNIT_FIRST' +
        '_DATE, :DATE_UNIT_CODE) + 1) as DATE_UNIT_NO,'
      ''
      '  x.PARTNER_CODE,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = x.PARTNER_CODE)'
      '  ) as PARTNER_SHORT_NAME,'
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = x.PARTNER_CODE)'
      '  ) as PARTNER_NO,'
      ''
      
        '  Sum(Decode(Sign(x.OTCH_TENSION), 1, x.OTCH_TENSION)) as PARTNE' +
        'R_OTCH_TENSION,'
      
        '  Sum(Decode(Sign(x.OTCH_TENSION), -1, x.OTCH_TENSION)) as OUR_O' +
        'TCH_TENSION,'
      ''
      '  Sum(x.OTCH_TENSION) as OTCH_TENSION,'
      ''
      
        '  Sum(Nvl2(x.DOCUMENT_DATE, Decode(Sign(x.PLAN_TENSION), 1, x.PL' +
        'AN_TENSION), null)) as PARTNER_PLAN_REAL_TENSION,'
      
        '  Sum(Nvl2(x.DOCUMENT_DATE, null, Decode(Sign(x.PLAN_TENSION), 1' +
        ', x.PLAN_TENSION))) as PARTNER_PLAN_POTENTIAL_TENSION,'
      ''
      
        '  Sum(Nvl2(x.DOCUMENT_DATE, Decode(Sign(x.PLAN_TENSION), -1, x.P' +
        'LAN_TENSION), null)) as OUR_PLAN_REAL_TENSION,'
      
        '  Sum(Nvl2(x.DOCUMENT_DATE, null, Decode(Sign(x.PLAN_TENSION), -' +
        '1, x.PLAN_TENSION))) as OUR_PLAN_POTENTIAL_TENSION,'
      ''
      
        '  Sum(Decode(Sign(x.PLAN_TENSION), 1, x.PLAN_TENSION)) as PARTNE' +
        'R_PLAN_TENSION,'
      
        '  Sum(Decode(Sign(x.PLAN_TENSION), -1, x.PLAN_TENSION)) as OUR_P' +
        'LAN_TENSION,'
      ''
      '  Sum(x.PLAN_TENSION) as PLAN_TENSION'
      ''
      'from'
      '  ( select'
      '      txd.THE_FIRST_DATE as DATE_UNIT_FIRST_DATE,'
      ''
      '      fo.PARTNER_CODE,'
      '      fo.DOCUMENT_DATE,'
      ''
      '      -- otchet'
      '      ( fo.IN_OUT * (-1) *'
      '        Decode(Sign(txd.THE_FIRST_DATE - ContextDate),'
      '          1, null,'
      '          ( Decode(Sign(fo.BASE_DATE - txd.THE_LAST_DATE),'
      '              1, 0,'
      '              ( fo.BASE_QUANTITY *'
      '                ( select'
      '                    cr.FIXING'
      '                  from'
      '                    CURRENCIES c,'
      '                    CURRENCY_RATES cr'
      '                  where'
      
        '                    (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUCT_' +
        'CODE) and'
      '                    (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      
        '                    (cr.RATE_DATE = Least(txd.THE_LAST_DATE, Con' +
        'textDate))'
      '                )'
      '              )'
      '            ) -'
      ''
      '            Least('
      '              Coalesce('
      '                ( select'
      '                    Sum('
      '                      sd.QUANTITY *'
      '                      ( select'
      '                          cr.FIXING'
      '                        from'
      '                          CURRENCIES c,'
      '                          CURRENCY_RATES cr'
      '                        where'
      '                          (c.PRODUCT_CODE = sd.PRODUCT_CODE) and'
      
        '                          (c.CURRENCY_CODE = cr.CURRENCY_CODE) a' +
        'nd'
      '                          (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '                      )'
      '                    )'
      '                  from'
      '                    REAL_FIN_MODEL_LINES rfml,'
      '                    STORE_DEALS sd'
      '                  where'
      
        '                    (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) an' +
        'd'
      '                    (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      
        '                    (rfml.FIN_MODEL_LINE_TYPE_CODE = %fmlt_PRIMA' +
        'RY) and'
      
        '                    (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RF' +
        'ML_OBJECT_BRANCH_CODE) and'
      
        '                    (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJE' +
        'CT_CODE) and'
      '                    (sd.STORNO_EMPLOYEE_CODE is null) and'
      '                    (sd.STORE_DEAL_DATE <= txd.THE_LAST_DATE)'
      '                ),'
      '                0'
      '              ),'
      '              Coalesce('
      '                ( fo.BASE_QUANTITY *'
      '                  ( select'
      '                      cr.FIXING'
      '                    from'
      '                      CURRENCIES c,'
      '                      CURRENCY_RATES cr'
      '                    where'
      
        '                      (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUC' +
        'T_CODE) and'
      '                      (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      
        '                      (cr.RATE_DATE = Least(txd.THE_LAST_DATE, C' +
        'ontextDate))'
      '                  )'
      '                ),'
      '                0'
      '              )'
      '            )'
      '          )'
      '        )'
      '      ) as OTCH_TENSION,'
      ''
      '      -- plan'
      '      ( fo.IN_OUT * (-1) *'
      '        Decode(Sign(ContextDate - txd.THE_LAST_DATE),'
      '          1, null,'
      '          ( Decode(Sign(fo.BASE_DATE - txd.THE_LAST_DATE),'
      '              1, 0,'
      '              ( fo.BASE_QUANTITY *'
      '                ( select'
      '                    cr.FIXING'
      '                  from'
      '                    CURRENCIES c,'
      '                    CURRENCY_RATES cr'
      '                  where'
      
        '                    (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUCT_' +
        'CODE) and'
      '                    (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      
        '                    (cr.RATE_DATE = Least(txd.THE_LAST_DATE, Con' +
        'textDate))'
      '                )'
      '              )'
      '            ) -'
      ''
      '            Least('
      '              ( Coalesce('
      '                  ( select'
      '                      Sum('
      '                        psd.REMAINING_QUANTITY *'
      '                        ( select'
      '                            cr.FIXING'
      '                          from'
      '                            CURRENCIES c,'
      '                            CURRENCY_RATES cr'
      '                          where'
      
        '                            (c.PRODUCT_CODE = psd.PRODUCT_CODE) ' +
        'and'
      
        '                            (c.CURRENCY_CODE = cr.CURRENCY_CODE)' +
        ' and'
      
        '                            (cr.RATE_DATE = Least(txd.THE_LAST_D' +
        'ATE, ContextDate))'
      '                        )'
      '                      )'
      '                    from'
      '                      REAL_FIN_MODEL_LINES rfml,'
      '                      PLANNED_STORE_DEALS psd'
      '                    where'
      
        '                      (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) ' +
        'and'
      '                      (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      
        '                      (rfml.FIN_MODEL_LINE_TYPE_CODE = %fmlt_PRI' +
        'MARY) and'
      
        '                      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml' +
        '.RFML_OBJECT_BRANCH_CODE) and'
      
        '                      (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_O' +
        'BJECT_CODE) and'
      
        '                      (Greatest(psd.STORE_DEAL_BEGIN_DATE, Conte' +
        'xtDate) <= txd.THE_LAST_DATE)'
      '                  ),'
      '                  0'
      '                ) +            '
      '                Coalesce('
      '                  ( select'
      '                      Sum('
      '                        sd.QUANTITY *'
      '                        ( select'
      '                            cr.FIXING'
      '                          from'
      '                            CURRENCIES c,'
      '                            CURRENCY_RATES cr'
      '                          where'
      
        '                            (c.PRODUCT_CODE = sd.PRODUCT_CODE) a' +
        'nd'
      
        '                            (c.CURRENCY_CODE = cr.CURRENCY_CODE)' +
        ' and'
      '                            (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '                        )'
      '                      )'
      '                    from'
      '                      REAL_FIN_MODEL_LINES rfml,              '
      '                      STORE_DEALS sd'
      '                    where          '
      
        '                      (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) ' +
        'and'
      '                      (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      
        '                      (rfml.FIN_MODEL_LINE_TYPE_CODE = %fmlt_PRI' +
        'MARY) and'
      
        '                      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.' +
        'RFML_OBJECT_BRANCH_CODE) and'
      
        '                      (sd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OB' +
        'JECT_CODE) and'
      '                      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '                      (sd.STORE_DEAL_DATE <= txd.THE_LAST_DATE)'
      '                  ),'
      '                  0'
      '                )'
      '              ),'
      '              Coalesce('
      '                ( fo.BASE_QUANTITY *'
      '                  ( select'
      '                      cr.FIXING'
      '                    from'
      '                      CURRENCIES c,'
      '                      CURRENCY_RATES cr'
      '                    where'
      
        '                      (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUC' +
        'T_CODE) and'
      '                      (c.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      
        '                      (cr.RATE_DATE = Least(txd.THE_LAST_DATE, C' +
        'ontextDate))'
      '                  )'
      '                ),'
      '                0'
      '              )'
      '            )'
      '          )'
      '        )'
      '      ) as PLAN_TENSION'
      ''
      '    from'
      '      %THE_X_DATES txd,'
      '      FIN_ORDERS fo'
      ''
      '    where'
      '      (txd.THE_FIRST_DATE between :BEGIN_DATE and :END_DATE) and'
      ''
      '      ( (fo.CLOSE_DATE is null) or'
      '        (fo.CLOSE_DATE > txd.THE_LAST_DATE)'
      '      ) and'
      ''
      '      (fo.ANNUL_EMPLOYEE_CODE is null) and'
      '      (fo.PARTNER_CODE <> 0) and'
      ''
      
        '      (%FIN_ORDER_STATUS[fo] between :MIN_STATUS_CODE and :MAX_S' +
        'TATUS_CODE) and'
      ''
      '      ( (:FIN_PROCESS_CODE is null) or'
      '        (fo.FIN_PROCESS_CODE = :FIN_PROCESS_CODE) )  and'
      ''
      '      ( (:HAS_DOCUMENT_IDENTIFIER is null) or'
      '        ( (:HAS_DOCUMENT_IDENTIFIER = 0) and'
      '          (fo.DOCUMENT_IDENTIFIER is null) and'
      '          not exists('
      '            select'
      '              1'
      '            from'
      '              REAL_FIN_MODEL_LINES rfml'
      '            where'
      '              (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      '              (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '              (rfml.DOCUMENT_IDENTIFIER is not null)'
      '          )'
      '        ) or'
      '        ( (:HAS_DOCUMENT_IDENTIFIER = 1) and'
      '          ( (fo.DOCUMENT_IDENTIFIER is not null) or'
      '            exists('
      '              select'
      '                1'
      '              from'
      '                REAL_FIN_MODEL_LINES rfml'
      '              where'
      '                (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      '                (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '                (rfml.DOCUMENT_IDENTIFIER is not null)'
      '            )'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_COMPANIES = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_COMPANIES tfc'
      '            where'
      '              (tfc.COMPANY_CODE = fo.PARTNER_CODE)'
      '          )'
      '        )'
      '      )'
      ''
      ''
      '    union all'
      ''
      ''
      '    select'
      '      txd.THE_FIRST_DATE as DATE_UNIT_FIRST_DATE,'
      ''
      '      To_Number(null) as PARTNER_CODE,'
      '      To_Date(null) as DOCUMENT_DATE,'
      '      To_Number(null) as OTCH_TENSION,'
      '      To_Number(null) as PLAN_TENSION'
      ''
      '    from'
      '      %THE_X_DATES txd'
      ''
      '    where'
      '      (txd.THE_FIRST_DATE between :BEGIN_DATE and :END_DATE)'
      '  ) x'
      ''
      'group by'
      '  x.DATE_UNIT_FIRST_DATE,'
      '  x.PARTNER_CODE'
      ''
      'order by'
      '  x.PARTNER_CODE,'
      '  x.DATE_UNIT_FIRST_DATE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'fmlt_PRIMARY'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATES'
        ParamType = ptInput
        Value = 'THE_MONTH_DATES'
      end
      item
        DataType = ftWideString
        Name = 'FIN_ORDER_STATUS[fo]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 776
    Top = 408
    object qryFinancialRelationsTableDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField
      FieldName = 'DATE_UNIT_FIRST_DATE'
    end
    object qryFinancialRelationsTableDATE_UNIT_NO: TAbmesFloatField
      FieldName = 'DATE_UNIT_NO'
    end
    object qryFinancialRelationsTablePARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object qryFinancialRelationsTablePARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_SHORT_NAME'
    end
    object qryFinancialRelationsTablePARTNER_NO: TAbmesFloatField
      FieldName = 'PARTNER_NO'
    end
    object qryFinancialRelationsTablePARTNER_OTCH_TENSION: TAbmesFloatField
      FieldName = 'PARTNER_OTCH_TENSION'
    end
    object qryFinancialRelationsTableOUR_OTCH_TENSION: TAbmesFloatField
      FieldName = 'OUR_OTCH_TENSION'
    end
    object qryFinancialRelationsTableOTCH_TENSION: TAbmesFloatField
      FieldName = 'OTCH_TENSION'
    end
    object qryFinancialRelationsTablePARTNER_PLAN_REAL_TENSION: TAbmesFloatField
      FieldName = 'PARTNER_PLAN_REAL_TENSION'
    end
    object qryFinancialRelationsTablePARTNER_PLAN_POTENTIAL_TENSION: TAbmesFloatField
      FieldName = 'PARTNER_PLAN_POTENTIAL_TENSION'
    end
    object qryFinancialRelationsTableOUR_PLAN_REAL_TENSION: TAbmesFloatField
      FieldName = 'OUR_PLAN_REAL_TENSION'
    end
    object qryFinancialRelationsTableOUR_PLAN_POTENTIAL_TENSION: TAbmesFloatField
      FieldName = 'OUR_PLAN_POTENTIAL_TENSION'
    end
    object qryFinancialRelationsTablePARTNER_PLAN_TENSION: TAbmesFloatField
      FieldName = 'PARTNER_PLAN_TENSION'
    end
    object qryFinancialRelationsTableOUR_PLAN_TENSION: TAbmesFloatField
      FieldName = 'OUR_PLAN_TENSION'
    end
    object qryFinancialRelationsTablePLAN_TENSION: TAbmesFloatField
      FieldName = 'PLAN_TENSION'
    end
  end
  object prvFinancialRelationsTable: TDataSetProvider
    DataSet = cdsFinancialRelationsTable
    OnGetData = prvFinancialRelationsTableGetData
    BeforeGetRecords = prvFinancialRelationsTableBeforeGetRecords
    AfterGetRecords = prvFinancialRelationsTableAfterGetRecords
    Left = 776
    Top = 312
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
    Left = 464
    Top = 464
    object qryGetRounderROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
    end
  end
  object cdsFinancialRelationsTable: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
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
        Name = 'FIN_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end>
    Left = 776
    Top = 360
  end
  object qryVatPeriods: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  vp.VAT_PERIOD_CODE,'
      '  vp.BEGIN_DATE,'
      '  vp.END_DATE,'
      '  vp.VAT_PERCENT'
      ''
      'from'
      '  VAT_PERIODS vp'
      ''
      'order by'
      '  vp.BEGIN_DATE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'VAT_PERIODS_FOR_EDIT'
    Left = 632
    Top = 464
    object qryVatPeriodsVAT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'VAT_PERIOD_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVatPeriodsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object qryVatPeriodsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryVatPeriodsVAT_PERCENT: TAbmesFloatField
      FieldName = 'VAT_PERCENT'
      Required = True
    end
  end
  object prvVatPeriods: TDataSetProvider
    DataSet = qryVatPeriods
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 416
  end
  object qryGetVatPercent: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  vp.VAT_PERCENT'
      ''
      'from'
      '  VAT_PERIODS vp'
      ''
      'where'
      '  (:TO_DATE between vp.BEGIN_DATE and vp.END_DATE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 704
    Top = 264
    object qryGetVatPercentVAT_PERCENT: TAbmesFloatField
      FieldName = 'VAT_PERCENT'
      Required = True
    end
  end
  object qryCloseFinOrder: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  FIN_ORDERS_FOR_EDIT fo'
      'set'
      '  fo.CLOSE_EMPLOYEE_CODE = LoginContext.UserCode,'
      '  fo.CLOSE_DATE = ContextDate,'
      '  fo.CLOSE_TIME = ContextTime'
      'where'
      '  (fo.FIN_ORDER_CODE = :FIN_ORDER_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 424
  end
  object qryUpdFinOrderFMMovementOffsetType: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  FIN_ORDERS_FOR_EDIT fo'
      'set'
      
        '  fo.FM_MOVEMENT_OFFSET_TYPE_CODE = :FM_MOVEMENT_OFFSET_TYPE_COD' +
        'E'
      'where'
      '  (fo.FIN_ORDER_CODE = :FIN_ORDER_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 472
  end
  object qryRFMLStoreDealsParams: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'RFML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RFML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RFML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RFML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RFML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RFML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  fo.FIN_PROCESS_CODE as BND_PROCESS_CODE,'
      '  To_Number(0) as IS_STORNO,'
      ''
      '  ( select'
      
        '      Coalesce(Min(sd.STORE_DEAL_DATE), Cast(ContextDate as Date' +
        '))'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = :RFML_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = :RFML_OBJECT_CODE)'
      '  ) as START_DATE,'
      ''
      '  ( select'
      
        '      Coalesce(Max(sd.STORE_DEAL_DATE), Cast(ContextDate as Date' +
        '))'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = :RFML_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = :RFML_OBJECT_CODE)'
      '  ) as END_DATE,'
      ''
      '  fo.FIN_ORDER_BRANCH_CODE,'
      '  fo.FIN_ORDER_NO,'
      '  rfml.FIN_MODEL_LINE_TYPE_CODE,'
      '  rfml.FIN_MODEL_LINE_NO'
      ''
      'from'
      '  REAL_FIN_MODEL_LINES rfml,'
      '  FIN_ORDERS fo'
      ''
      'where'
      '  (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      ''
      '  (rfml.RFML_OBJECT_BRANCH_CODE = :RFML_OBJECT_BRANCH_CODE) and'
      '  (rfml.RFML_OBJECT_CODE = :RFML_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 904
    Top = 64
    object qryRFMLStoreDealsParamsBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
      Required = True
    end
    object qryRFMLStoreDealsParamsIS_STORNO: TAbmesFloatField
      FieldName = 'IS_STORNO'
    end
    object qryRFMLStoreDealsParamsSTART_DATE: TAbmesSQLTimeStampField
      FieldName = 'START_DATE'
      Required = True
    end
    object qryRFMLStoreDealsParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryRFMLStoreDealsParamsFIN_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_BRANCH_CODE'
      Required = True
    end
    object qryRFMLStoreDealsParamsFIN_ORDER_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_NO'
      Required = True
    end
    object qryRFMLStoreDealsParamsFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
      Required = True
    end
    object qryRFMLStoreDealsParamsFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
      Required = True
    end
  end
  object prvRFMLStoreDealsParams: TDataSetProvider
    DataSet = qryRFMLStoreDealsParams
    Left = 904
    Top = 16
  end
  object qryVatReasons: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  vr.VAT_REASON_CODE,'
      '  vr.VAT_REASON_NO,'
      '  vr.VAT_REASON_NAME,'
      '  vr.VAT_REASON_I_NAME,'
      '  vr.VAT_REASON_ABBREV,'
      '  vr.VAT_REASON_I_ABBREV'
      'from'
      '  VAT_REASONS vr'
      'order by'
      '  vr.VAT_REASON_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 776
    Top = 72
    object qryVatReasonsVAT_REASON_CODE: TAbmesFloatField
      FieldName = 'VAT_REASON_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVatReasonsVAT_REASON_NO: TAbmesFloatField
      FieldName = 'VAT_REASON_NO'
      Required = True
    end
    object qryVatReasonsVAT_REASON_NAME: TAbmesWideStringField
      FieldName = 'VAT_REASON_NAME'
      Required = True
      Size = 50
    end
    object qryVatReasonsVAT_REASON_ABBREV: TAbmesWideStringField
      FieldName = 'VAT_REASON_ABBREV'
      Required = True
      Size = 5
    end
    object qryVatReasonsVAT_REASON_I_NAME: TAbmesWideStringField
      FieldName = 'VAT_REASON_I_NAME'
      Required = True
      Size = 50
    end
    object qryVatReasonsVAT_REASON_I_ABBREV: TAbmesWideStringField
      FieldName = 'VAT_REASON_I_ABBREV'
      Required = True
      Size = 5
    end
  end
  object prvVatReasons: TDataSetProvider
    DataSet = qryVatReasons
    UpdateMode = upWhereKeyOnly
    Left = 776
    Top = 16
  end
  object qryCompleteFinOrder: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'IN_DEAL_TYPE_ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'OUT_DEAL_TYPE_ABBREV'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  for p in'
      '    ( select'
      '        x.*,'
      '        seq_PROCESS_OBJECTS.NextVal as STORE_DEAL_OBJECT_CODE'
      '      from'
      '        ( select'
      
        '            psd.PLANNED_STORE_DEAL_BRANCH_CODE as STORE_DEAL_OBJ' +
        'ECT_BRANCH_CODE,'
      '            psd.STORE_CODE,'
      '            psd.STORE_DEAL_TYPE_CODE,'
      '            psd.PRODUCT_CODE,'
      '            psd.REMAINING_QUANTITY as WANTED_QUANTITY,'
      '            psd.REMAINING_QUANTITY as QUANTITY,'
      '            psd.REMAINING_ACCOUNT_QUANTITY as ACCOUNT_QUANTITY,'
      '            Decode(psd.IN_OUT, 1,'
      '              ( select'
      '                  c.CURRENCY_CODE'
      '                from'
      '                  CURRENCIES c'
      '                where'
      '                  (c.PRODUCT_CODE = psd.PRODUCT_CODE)'
      '              ),'
      '              ( select'
      '                  iv.BASE_CURRENCY_CODE'
      '                from'
      '                  INTERNAL_VALUES iv'
      '                where'
      '                  (iv.CODE = 1)'
      '              )'
      '            ) as CURRENCY_CODE,'
      '            ( psd.REMAINING_QUANTITY *'
      '              Decode(psd.IN_OUT, 1, 1,'
      '                ( select'
      '                    cr.FIXING'
      '                  from'
      '                    CURRENCIES c,'
      '                    CURRENCY_RATES cr'
      '                  where'
      '                    (c.PRODUCT_CODE = psd.PRODUCT_CODE) and'
      '                    (cr.CURRENCY_CODE = c.CURRENCY_CODE) and'
      '                    (cr.RATE_DATE = :STORE_DEAL_DATE)'
      '                )'
      '              )'
      '            ) as TOTAL_PRICE,'
      '            psd.DEPT_CODE,'
      '            psd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '            psd.BND_PROCESS_OBJECT_CODE,'
      '            psd.BND_PROCESS_CODE,'
      '            psd.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '            psd.PLANNED_STORE_DEAL_CODE,'
      '            psd.IN_OUT,'
      
        '            (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LE' +
        'TTER) as STORE_IDENTIFIER'
      ''
      '          from'
      '            REAL_FIN_MODEL_LINES rfml,'
      '            PLANNED_STORE_DEALS psd,'
      '            DEPTS d,'
      '            DEPT_TYPES dt'
      ''
      '          where'
      '            (rfml.FIN_ORDER_CODE = :FIN_ORDER_CODE) and'
      '            (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      
        '            (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE' +
        ') and'
      
        '            (psd.REMAINING_QUANTITY > 0) and  -- ne polzvame IS_' +
        'ACTIVE, za da moje da se otchita i prikluchen model, sutovetno s' +
        ' pruklucheni psd-ta, koito togava ne sa IS_ACTIVE'
      '            (psd.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '            (psd.STORE_CODE = d.DEPT_CODE) and'
      '            (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      ''
      '          order by'
      '            rfml.FIN_MODEL_LINE_TYPE_CODE,'
      '            rfml.FIN_MODEL_LINE_NO'
      '        ) x'
      '    )'
      '  loop'
      '    insert into PROCESS_OBJECTS'
      '    ('
      '      PROCESS_OBJECT_BRANCH_CODE,'
      '      PROCESS_OBJECT_CODE,'
      '      PROCESS_OBJECT_CLASS_CODE,'
      '      PROCESS_OBJECT_IDENTIFIER'
      '    )'
      '    values'
      '    ('
      '      p.STORE_DEAL_OBJECT_BRANCH_CODE,'
      '      p.STORE_DEAL_OBJECT_CODE,'
      '      10,'
      
        '      '#39'temp '#39' || p.STORE_DEAL_OBJECT_BRANCH_CODE || '#39'/'#39' || p.STO' +
        'RE_DEAL_OBJECT_CODE'
      '    );'
      ''
      '    for n in'
      '      ('
      '        select'
      
        '          (Coalesce(Max(sd.STORE_DEAL_NO), 0) + 1) as STORE_DEAL' +
        '_NO'
      '        from'
      '          STORE_DEALS sd'
      '        where'
      '          (sd.STORE_DEAL_DATE = :STORE_DEAL_DATE) and'
      '          (sd.STORE_CODE = p.STORE_CODE) and'
      '          (sd.IN_OUT = p.IN_OUT)'
      '      )'
      '    loop'
      '      insert into STORE_DEALS_FOR_EDIT'
      '      ('
      '        STORE_DEAL_OBJECT_BRANCH_CODE,'
      '        STORE_DEAL_OBJECT_CODE,'
      '        STORE_CODE,'
      '        STORE_DEAL_TYPE_CODE,'
      '        STORE_DEAL_DATE,'
      '        STORE_DEAL_NO,'
      '        PRODUCT_CODE,'
      '        WANTED_QUANTITY,'
      '        QUANTITY,'
      '        ACCOUNT_QUANTITY,'
      '        CURRENCY_CODE,'
      '        TOTAL_PRICE,'
      '        STORE_EMPLOYEE_CODE,'
      '        OTHER_EMPLOYEE_CODE,'
      '        REQUEST_EMPLOYEE_CODE,'
      '        IS_WASTE_BOUND,'
      '        DEPT_CODE,'
      '        BND_PROCESS_OBJECT_BRANCH_CODE,'
      '        BND_PROCESS_OBJECT_CODE,'
      '        BND_PROCESS_CODE,'
      '        PLANNED_STORE_DEAL_BRANCH_CODE,'
      '        PLANNED_STORE_DEAL_CODE,'
      '        CREATE_DATE,'
      '        CREATE_TIME,'
      '        CREATE_EMPLOYEE_CODE,'
      '        IN_OUT'
      '      )'
      '      values'
      '      ('
      '        p.STORE_DEAL_OBJECT_BRANCH_CODE,'
      '        p.STORE_DEAL_OBJECT_CODE,'
      '        p.STORE_CODE,'
      '        p.STORE_DEAL_TYPE_CODE,'
      '        :STORE_DEAL_DATE,'
      '        n.STORE_DEAL_NO,'
      '        p.PRODUCT_CODE,'
      '        p.WANTED_QUANTITY,'
      '        p.QUANTITY,'
      '        p.ACCOUNT_QUANTITY,'
      '        p.CURRENCY_CODE,'
      '        p.TOTAL_PRICE,'
      '        LoginContext.UserCode,'
      '        LoginContext.UserCode,'
      '        LoginContext.UserCode,'
      '        0,'
      '        p.DEPT_CODE,'
      '        p.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '        p.BND_PROCESS_OBJECT_CODE,'
      '        p.BND_PROCESS_CODE,'
      '        p.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '        p.PLANNED_STORE_DEAL_CODE,'
      '        ContextDate,'
      '        ContextTime,'
      '        LoginContext.UserCode,'
      '        p.IN_OUT'
      '      );'
      ''
      '      update'
      '        PROCESS_OBJECTS po'
      '      set'
      '        po.PROCESS_OBJECT_IDENTIFIER ='
      '          ( p.STORE_IDENTIFIER || '#39'/'#39' ||'
      '            To_Char(:STORE_DEAL_DATE, '#39'dd-mm-yyyy'#39') || '#39'/'#39' ||'
      
        '            Decode(p.IN_OUT, 1, :IN_DEAL_TYPE_ABBREV, -1, :OUT_D' +
        'EAL_TYPE_ABBREV) || '#39'/'#39' ||'
      '            n.STORE_DEAL_NO'
      '          )'
      '      where'
      
        '        (po.PROCESS_OBJECT_BRANCH_CODE = p.STORE_DEAL_OBJECT_BRA' +
        'NCH_CODE) and'
      '        (po.PROCESS_OBJECT_CODE = p.STORE_DEAL_OBJECT_CODE)'
      '      ;'
      ''
      '    end loop;'
      '  end loop;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 864
    Top = 168
  end
  object qryNewFinOrder: TAbmesSQLQuery
    MaxBlobSize = -1
    ParamCheck = False
    Params = <
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXEC_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_PROCESS_CODE'
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
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BASE_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BASE_CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BASE_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DOCUMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_FIN_MODEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptOutput
      end>
    SQL.Strings = (
      'begin'
      '  FinanceUtils.NewFinOrder('
      '    :BRANCH_CODE,'
      '    :EXEC_DEPT_CODE,'
      '    :PRIORITY_CODE,'
      '    :FIN_PROCESS_CODE,'
      '    :BND_PROCESS_OBJECT_BRANCH_CODE,'
      '    :BND_PROCESS_OBJECT_CODE,'
      '    :PARTNER_CODE,'
      '    :IN_OUT,'
      '    :BASE_DATE,'
      '    :BASE_FINANCIAL_PRODUCT_CODE,'
      '    :BASE_CURRENCY_CODE,'
      '    :BASE_QUANTITY,'
      '    :WORK_FINANCIAL_PRODUCT_CODE,'
      '    :DOCUMENT_IDENTIFIER,'
      '    :DOCUMENT_DATE,'
      '    :SPEC_FIN_MODEL_CODE,'
      '    :RESULT'
      '  );'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 376
  end
end
